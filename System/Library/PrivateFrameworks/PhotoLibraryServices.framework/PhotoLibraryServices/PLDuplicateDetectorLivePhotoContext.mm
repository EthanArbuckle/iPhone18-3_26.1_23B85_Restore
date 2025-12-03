@interface PLDuplicateDetectorLivePhotoContext
- (BOOL)hasStableHash:(id)hash contextData:(id)data;
- (PLDuplicateDetectorLivePhotoContext)init;
- (id)description;
- (void)addStableHash:(id)hash contextData:(id)data;
@end

@implementation PLDuplicateDetectorLivePhotoContext

- (id)description
{
  v6.receiver = self;
  v6.super_class = PLDuplicateDetectorLivePhotoContext;
  v3 = [(PLDuplicateDetectorLivePhotoContext *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" %@", self->_container];

  return v4;
}

- (BOOL)hasStableHash:(id)hash contextData:(id)data
{
  dataCopy = data;
  v7 = [(NSMutableDictionary *)self->_container objectForKeyedSubscript:hash];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 containsObject:dataCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)addStableHash:(id)hash contextData:(id)data
{
  hashCopy = hash;
  dataCopy = data;
  if (hashCopy)
  {
    v7 = [(NSMutableDictionary *)self->_container objectForKeyedSubscript:?];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [(NSMutableDictionary *)self->_container setObject:v7 forKeyedSubscript:hashCopy];
    }

    [v7 addObject:dataCopy];
  }
}

- (PLDuplicateDetectorLivePhotoContext)init
{
  v6.receiver = self;
  v6.super_class = PLDuplicateDetectorLivePhotoContext;
  v2 = [(PLDuplicateDetectorLivePhotoContext *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    container = v2->_container;
    v2->_container = v3;
  }

  return v2;
}

@end