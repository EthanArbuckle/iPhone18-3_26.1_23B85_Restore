@interface VFXPrefabUpdateOperation
- (void)dealloc;
@end

@implementation VFXPrefabUpdateOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXPrefabUpdateOperation;
  [(VFXPrefabUpdateOperation *)&v3 dealloc];
}

@end