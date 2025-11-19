@interface PXGRemoteEffectOverlayTexture
- (BOOL)containsSpriteIndex:(unsigned int)a3;
- (BOOL)hasPendingTextureRequestID:(int)a3 deliveryOrder:(unsigned int)a4;
- (BOOL)hasSprites;
- (BOOL)isDegraded;
- (CGImage)imageRepresentation;
- (CGSize)pixelSize;
- (NSIndexSet)spriteIndexes;
- (PXGRemoteEffectOverlayTexture)initWithMetalSpriteTexture:(id)a3;
- (int64_t)estimatedByteSize;
- (unsigned)spriteCount;
- (void)enumerateSpriteIndexes:(id)a3;
- (void)getSpriteIndexes:(unsigned int *)a3 maxSpriteCount:(unsigned int)a4;
@end

@implementation PXGRemoteEffectOverlayTexture

- (BOOL)isDegraded
{
  v2 = [(PXGRemoteEffectOverlayTexture *)self texture];
  v3 = [v2 isDegraded];

  return v3;
}

- (BOOL)hasSprites
{
  v2 = [(PXGRemoteEffectOverlayTexture *)self texture];
  v3 = [v2 hasSprites];

  return v3;
}

- (NSIndexSet)spriteIndexes
{
  v2 = [(PXGRemoteEffectOverlayTexture *)self texture];
  v3 = [v2 spriteIndexes];

  return v3;
}

- (CGSize)pixelSize
{
  v2 = [(PXGRemoteEffectOverlayTexture *)self texture];
  [v2 pixelSize];
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
  v2 = [(PXGRemoteEffectOverlayTexture *)self texture];
  v3 = [v2 imageRepresentation];

  return v3;
}

- (int64_t)estimatedByteSize
{
  v2 = [(PXGRemoteEffectOverlayTexture *)self texture];
  v3 = [v2 estimatedByteSize];

  return v3;
}

- (unsigned)spriteCount
{
  v2 = [(PXGRemoteEffectOverlayTexture *)self texture];
  v3 = [v2 spriteCount];

  return v3;
}

- (BOOL)hasPendingTextureRequestID:(int)a3 deliveryOrder:(unsigned int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v6 = [(PXGRemoteEffectOverlayTexture *)self texture];
  LOBYTE(v4) = [v6 hasPendingTextureRequestID:v5 deliveryOrder:v4];

  return v4;
}

- (BOOL)containsSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(PXGRemoteEffectOverlayTexture *)self texture];
  LOBYTE(v3) = [v4 containsSpriteIndex:v3];

  return v3;
}

- (void)enumerateSpriteIndexes:(id)a3
{
  v4 = a3;
  v5 = [(PXGRemoteEffectOverlayTexture *)self texture];
  [v5 enumerateSpriteIndexes:v4];
}

- (void)getSpriteIndexes:(unsigned int *)a3 maxSpriteCount:(unsigned int)a4
{
  v4 = *&a4;
  v6 = [(PXGRemoteEffectOverlayTexture *)self texture];
  [v6 getSpriteIndexes:a3 maxSpriteCount:v4];
}

- (PXGRemoteEffectOverlayTexture)initWithMetalSpriteTexture:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXGRemoteEffectOverlayTexture;
  v6 = [(PXGRemoteEffectOverlayTexture *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalSpriteTexture, a3);
  }

  return v7;
}

@end