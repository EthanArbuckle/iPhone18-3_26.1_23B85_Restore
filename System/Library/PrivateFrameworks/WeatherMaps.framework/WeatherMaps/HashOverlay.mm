@interface HashOverlay
- (void)loadTileAtPath:(id *)path result:(id)result;
@end

@implementation HashOverlay

- (void)loadTileAtPath:(id *)path result:(id)result
{
  var0 = path->var0;
  var1 = path->var1;
  var2 = path->var2;
  var3 = path->var3;
  v9 = _Block_copy(result);
  _Block_copy(v9);
  selfCopy = self;
  sub_220E82E40(var0, var1, var2, var3, selfCopy, v9);
  _Block_release(v9);
}

@end