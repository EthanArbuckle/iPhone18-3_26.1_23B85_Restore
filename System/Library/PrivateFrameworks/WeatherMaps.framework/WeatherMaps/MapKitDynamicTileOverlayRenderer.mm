@interface MapKitDynamicTileOverlayRenderer
- (BOOL)canDrawKey:(id *)key withTile:(id)tile;
- (int64_t)estimatedCostForTile:(id)tile;
- (void)didExitTile:(id *)tile;
- (void)drawTileAtPath:(id *)path withTile:(id)tile inIOSurface:(__IOSurface *)surface withTimestamp:(double)timestamp;
- (void)drawTileAtPath:(id *)path withTile:(id)tile inIOSurface:(__IOSurface *)surface withTimestamp:(double)timestamp withTileScale:(float)scale;
- (void)drawTileAtPath:(id *)path withTile:(id)tile inTexture:(id)texture withTimestamp:(double)timestamp withTileScale:(float)scale;
- (void)onVisibleTiles:(id *)tiles count:(int64_t)count;
@end

@implementation MapKitDynamicTileOverlayRenderer

- (void)drawTileAtPath:(id *)path withTile:(id)tile inIOSurface:(__IOSurface *)surface withTimestamp:(double)timestamp withTileScale:(float)scale
{
  var0 = path->var0;
  var1 = path->var1;
  var2 = path->var2;
  tileCopy = tile;
  surfaceCopy = surface;
  selfCopy = self;
  sub_220EB3A28(var0, var1, var2, tileCopy, surfaceCopy);
}

- (void)drawTileAtPath:(id *)path withTile:(id)tile inIOSurface:(__IOSurface *)surface withTimestamp:(double)timestamp
{
  var0 = path->var0;
  var1 = path->var1;
  var2 = path->var2;
  var3 = path->var3;
  tileCopy = tile;
  surfaceCopy = surface;
  selfCopy = self;
  sub_220EB40EC(var0, var1, var2, var3, timestamp);
}

- (void)drawTileAtPath:(id *)path withTile:(id)tile inTexture:(id)texture withTimestamp:(double)timestamp withTileScale:(float)scale
{
  var0 = path->var0;
  var1 = path->var1;
  var2 = path->var2;
  var3 = path->var3;
  tileCopy = tile;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_220EB41E8(var0, var1, var2, tileCopy, texture, var3, v15, scale);

  swift_unknownObjectRelease();
}

- (BOOL)canDrawKey:(id *)key withTile:(id)tile
{
  var0 = key->var0;
  var1 = key->var1;
  var2 = key->var2;
  var3 = key->var3;
  tileCopy = tile;
  selfCopy = self;
  LOBYTE(var0) = sub_220EB4848(var0, var1, var2, tileCopy, var3);

  return var0 & 1;
}

- (void)onVisibleTiles:(id *)tiles count:(int64_t)count
{
  selfCopy = self;
  sub_220EB502C(tiles, count);
}

- (void)didExitTile:(id *)tile
{
  var0 = tile->var0;
  var1 = tile->var1;
  var2 = tile->var2;
  var3 = tile->var3;
  selfCopy = self;
  sub_220EB53C8(var0, var1, var2, var3);
}

- (int64_t)estimatedCostForTile:(id)tile
{
  tileCopy = tile;
  selfCopy = self;
  v6 = sub_220EB54C8(tileCopy);

  return v6;
}

@end