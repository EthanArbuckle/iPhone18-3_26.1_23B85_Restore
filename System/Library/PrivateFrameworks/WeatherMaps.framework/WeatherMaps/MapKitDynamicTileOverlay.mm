@interface MapKitDynamicTileOverlay
- (void)cancelLoadingTileAtPath:(id *)path;
- (void)loadTileAtPath:(id *)path result:(id)result;
@end

@implementation MapKitDynamicTileOverlay

- (void)loadTileAtPath:(id *)path result:(id)result
{
  var0 = path->var0;
  var1 = path->var1;
  var2 = path->var2;
  var3 = path->var3;
  v9 = _Block_copy(result);
  _Block_copy(v9);
  selfCopy = self;
  sub_220F60444(var0, var1, var2, selfCopy, v9, var3);
  _Block_release(v9);
}

- (void)cancelLoadingTileAtPath:(id *)path
{
  var0 = path->var0;
  var1 = path->var1;
  selfCopy = self;
  sub_220F60618(var0, var1);
}

@end