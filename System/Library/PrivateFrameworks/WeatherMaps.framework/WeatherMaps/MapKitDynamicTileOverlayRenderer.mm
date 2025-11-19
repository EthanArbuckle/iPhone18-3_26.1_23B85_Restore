@interface MapKitDynamicTileOverlayRenderer
- (BOOL)canDrawKey:(id *)a3 withTile:(id)a4;
- (int64_t)estimatedCostForTile:(id)a3;
- (void)didExitTile:(id *)a3;
- (void)drawTileAtPath:(id *)a3 withTile:(id)a4 inIOSurface:(__IOSurface *)a5 withTimestamp:(double)a6;
- (void)drawTileAtPath:(id *)a3 withTile:(id)a4 inIOSurface:(__IOSurface *)a5 withTimestamp:(double)a6 withTileScale:(float)a7;
- (void)drawTileAtPath:(id *)a3 withTile:(id)a4 inTexture:(id)a5 withTimestamp:(double)a6 withTileScale:(float)a7;
- (void)onVisibleTiles:(id *)a3 count:(int64_t)a4;
@end

@implementation MapKitDynamicTileOverlayRenderer

- (void)drawTileAtPath:(id *)a3 withTile:(id)a4 inIOSurface:(__IOSurface *)a5 withTimestamp:(double)a6 withTileScale:(float)a7
{
  var0 = a3->var0;
  var1 = a3->var1;
  var2 = a3->var2;
  v12 = a4;
  v13 = a5;
  v14 = self;
  sub_220EB3A28(var0, var1, var2, v12, v13);
}

- (void)drawTileAtPath:(id *)a3 withTile:(id)a4 inIOSurface:(__IOSurface *)a5 withTimestamp:(double)a6
{
  var0 = a3->var0;
  var1 = a3->var1;
  var2 = a3->var2;
  var3 = a3->var3;
  v13 = a4;
  v14 = a5;
  v15 = self;
  sub_220EB40EC(var0, var1, var2, var3, a6);
}

- (void)drawTileAtPath:(id *)a3 withTile:(id)a4 inTexture:(id)a5 withTimestamp:(double)a6 withTileScale:(float)a7
{
  var0 = a3->var0;
  var1 = a3->var1;
  var2 = a3->var2;
  var3 = a3->var3;
  v14 = a4;
  swift_unknownObjectRetain();
  v16 = self;
  sub_220EB41E8(var0, var1, var2, v14, a5, var3, v15, a7);

  swift_unknownObjectRelease();
}

- (BOOL)canDrawKey:(id *)a3 withTile:(id)a4
{
  var0 = a3->var0;
  var1 = a3->var1;
  var2 = a3->var2;
  var3 = a3->var3;
  v9 = a4;
  v10 = self;
  LOBYTE(var0) = sub_220EB4848(var0, var1, var2, v9, var3);

  return var0 & 1;
}

- (void)onVisibleTiles:(id *)a3 count:(int64_t)a4
{
  v6 = self;
  sub_220EB502C(a3, a4);
}

- (void)didExitTile:(id *)a3
{
  var0 = a3->var0;
  var1 = a3->var1;
  var2 = a3->var2;
  var3 = a3->var3;
  v7 = self;
  sub_220EB53C8(var0, var1, var2, var3);
}

- (int64_t)estimatedCostForTile:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_220EB54C8(v4);

  return v6;
}

@end