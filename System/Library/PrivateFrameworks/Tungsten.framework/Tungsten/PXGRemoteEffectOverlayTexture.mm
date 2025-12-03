@interface PXGRemoteEffectOverlayTexture
- (BOOL)containsSpriteIndex:(unsigned int)index;
- (BOOL)hasPendingTextureRequestID:(int)d deliveryOrder:(unsigned int)order;
- (BOOL)hasSprites;
- (BOOL)isDegraded;
- (CGImage)imageRepresentation;
- (CGSize)pixelSize;
- (NSIndexSet)spriteIndexes;
- (PXGRemoteEffectOverlayTexture)initWithMetalSpriteTexture:(id)texture;
- (int64_t)estimatedByteSize;
- (unsigned)spriteCount;
- (void)enumerateSpriteIndexes:(id)indexes;
- (void)getSpriteIndexes:(unsigned int *)indexes maxSpriteCount:(unsigned int)count;
@end

@implementation PXGRemoteEffectOverlayTexture

- (BOOL)isDegraded
{
  texture = [(PXGRemoteEffectOverlayTexture *)self texture];
  isDegraded = [texture isDegraded];

  return isDegraded;
}

- (BOOL)hasSprites
{
  texture = [(PXGRemoteEffectOverlayTexture *)self texture];
  hasSprites = [texture hasSprites];

  return hasSprites;
}

- (NSIndexSet)spriteIndexes
{
  texture = [(PXGRemoteEffectOverlayTexture *)self texture];
  spriteIndexes = [texture spriteIndexes];

  return spriteIndexes;
}

- (CGSize)pixelSize
{
  texture = [(PXGRemoteEffectOverlayTexture *)self texture];
  [texture pixelSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGImage)imageRepresentation
{
  texture = [(PXGRemoteEffectOverlayTexture *)self texture];
  imageRepresentation = [texture imageRepresentation];

  return imageRepresentation;
}

- (int64_t)estimatedByteSize
{
  texture = [(PXGRemoteEffectOverlayTexture *)self texture];
  estimatedByteSize = [texture estimatedByteSize];

  return estimatedByteSize;
}

- (unsigned)spriteCount
{
  texture = [(PXGRemoteEffectOverlayTexture *)self texture];
  spriteCount = [texture spriteCount];

  return spriteCount;
}

- (BOOL)hasPendingTextureRequestID:(int)d deliveryOrder:(unsigned int)order
{
  v4 = *&order;
  v5 = *&d;
  texture = [(PXGRemoteEffectOverlayTexture *)self texture];
  LOBYTE(v4) = [texture hasPendingTextureRequestID:v5 deliveryOrder:v4];

  return v4;
}

- (BOOL)containsSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  texture = [(PXGRemoteEffectOverlayTexture *)self texture];
  LOBYTE(v3) = [texture containsSpriteIndex:v3];

  return v3;
}

- (void)enumerateSpriteIndexes:(id)indexes
{
  indexesCopy = indexes;
  texture = [(PXGRemoteEffectOverlayTexture *)self texture];
  [texture enumerateSpriteIndexes:indexesCopy];
}

- (void)getSpriteIndexes:(unsigned int *)indexes maxSpriteCount:(unsigned int)count
{
  v4 = *&count;
  texture = [(PXGRemoteEffectOverlayTexture *)self texture];
  [texture getSpriteIndexes:indexes maxSpriteCount:v4];
}

- (PXGRemoteEffectOverlayTexture)initWithMetalSpriteTexture:(id)texture
{
  textureCopy = texture;
  v9.receiver = self;
  v9.super_class = PXGRemoteEffectOverlayTexture;
  v6 = [(PXGRemoteEffectOverlayTexture *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalSpriteTexture, texture);
  }

  return v7;
}

@end