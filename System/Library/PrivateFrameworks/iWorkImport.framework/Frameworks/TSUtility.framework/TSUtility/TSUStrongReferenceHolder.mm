@interface TSUStrongReferenceHolder
+ (id)strongReferenceHolder;
- (TSUStrongReferenceHolder)init;
- (id)uniqueReferenceForObject:(id)object;
@end

@implementation TSUStrongReferenceHolder

+ (id)strongReferenceHolder
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSUStrongReferenceHolder)init
{
  v12.receiver = self;
  v12.super_class = TSUStrongReferenceHolder;
  v2 = [(TSUStrongReferenceHolder *)&v12 init];
  v3 = v2;
  if (v2)
  {
    pthread_rwlock_init(&v2->_rwLock, 0);
    array = [MEMORY[0x277CBEB18] array];
    strongReferences = v3->_strongReferences;
    v3->_strongReferences = array;

    v11[0] = xmmword_28862A818;
    v11[1] = unk_28862A828;
    v11[2] = xmmword_28862A838;
    v9[0] = xmmword_28862A848;
    v9[1] = unk_28862A858;
    v10 = off_28862A868;
    v6 = [[TSUCustomCallBackDictionary alloc] initWithCapacity:0 keyCallBacks:v11 valueCallBacks:v9];
    objectUniquingDictionary = v3->_objectUniquingDictionary;
    v3->_objectUniquingDictionary = v6;
  }

  return v3;
}

- (id)uniqueReferenceForObject:(id)object
{
  if (object)
  {
    objectCopy = object;
    pthread_rwlock_rdlock(&self->_rwLock);
    v6 = [(TSUCustomCallBackDictionary *)self->_objectUniquingDictionary objectForKey:objectCopy];

    if (v6 || (pthread_rwlock_unlock(&self->_rwLock), pthread_rwlock_wrlock(&self->_rwLock), [(TSUCustomCallBackDictionary *)self->_objectUniquingDictionary objectForKey:objectCopy], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      objectCopy = v6;
    }

    else
    {
      [(NSMutableArray *)self->_strongReferences addObject:objectCopy];
      [(TSUCustomCallBackDictionary *)self->_objectUniquingDictionary setObject:objectCopy forUncopiedKey:objectCopy];
    }

    pthread_rwlock_unlock(&self->_rwLock);
    v7 = objectCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end