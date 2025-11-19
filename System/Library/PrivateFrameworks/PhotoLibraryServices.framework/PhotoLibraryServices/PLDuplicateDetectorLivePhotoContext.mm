@interface PLDuplicateDetectorLivePhotoContext
- (BOOL)hasStableHash:(id)a3 contextData:(id)a4;
- (PLDuplicateDetectorLivePhotoContext)init;
- (id)description;
- (void)addStableHash:(id)a3 contextData:(id)a4;
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

- (BOOL)hasStableHash:(id)a3 contextData:(id)a4
{
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_container objectForKeyedSubscript:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 containsObject:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)addStableHash:(id)a3 contextData:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    v7 = [(NSMutableDictionary *)self->_container objectForKeyedSubscript:?];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [(NSMutableDictionary *)self->_container setObject:v7 forKeyedSubscript:v8];
    }

    [v7 addObject:v6];
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