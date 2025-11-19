@interface TSUStrongReferenceHolder
+ (id)strongReferenceHolder;
- (TSUStrongReferenceHolder)init;
- (id)uniqueReferenceForObject:(id)a3;
@end

@implementation TSUStrongReferenceHolder

+ (id)strongReferenceHolder
{
  v2 = objc_alloc_init(a1);

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
    v4 = [MEMORY[0x277CBEB18] array];
    strongReferences = v3->_strongReferences;
    v3->_strongReferences = v4;

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

- (id)uniqueReferenceForObject:(id)a3
{
  if (a3)
  {
    v4 = a3;
    pthread_rwlock_rdlock(&self->_rwLock);
    v6 = [(TSUCustomCallBackDictionary *)self->_objectUniquingDictionary objectForKey:v4];

    if (v6 || (pthread_rwlock_unlock(&self->_rwLock), pthread_rwlock_wrlock(&self->_rwLock), [(TSUCustomCallBackDictionary *)self->_objectUniquingDictionary objectForKey:v4], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v4 = v6;
    }

    else
    {
      [(NSMutableArray *)self->_strongReferences addObject:v4];
      [(TSUCustomCallBackDictionary *)self->_objectUniquingDictionary setObject:v4 forUncopiedKey:v4];
    }

    pthread_rwlock_unlock(&self->_rwLock);
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end