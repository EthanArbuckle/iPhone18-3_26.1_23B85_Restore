@interface HashOverlay
- (void)loadTileAtPath:(id *)a3 result:(id)a4;
@end

@implementation HashOverlay

- (void)loadTileAtPath:(id *)a3 result:(id)a4
{
  var0 = a3->var0;
  var1 = a3->var1;
  var2 = a3->var2;
  var3 = a3->var3;
  v9 = _Block_copy(a4);
  _Block_copy(v9);
  v10 = self;
  sub_220E82E40(var0, var1, var2, var3, v10, v9);
  _Block_release(v9);
}

@end