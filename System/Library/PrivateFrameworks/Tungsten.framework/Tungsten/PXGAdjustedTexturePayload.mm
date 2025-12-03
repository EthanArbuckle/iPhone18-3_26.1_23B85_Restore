@interface PXGAdjustedTexturePayload
- (BOOL)isEqual:(id)equal;
- (PXGAdjustedTexturePayload)init;
- (PXGAdjustedTexturePayload)initWithTexture:(id)texture adjustment:(id)adjustment mipmaps:(BOOL)mipmaps;
- (unint64_t)hash;
@end

@implementation PXGAdjustedTexturePayload

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    texture = [v6 texture];
    texture2 = [(PXGAdjustedTexturePayload *)self texture];
    v9 = [texture isEqual:texture2];

    mipmaps = [v6 mipmaps];
    mipmaps2 = [(PXGAdjustedTexturePayload *)self mipmaps];
    adjustment = [v6 adjustment];
    if (adjustment || ([(PXGAdjustedTexturePayload *)self adjustment], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      adjustment2 = [v6 adjustment];
      adjustment3 = [(PXGAdjustedTexturePayload *)self adjustment];
      v15 = [adjustment2 isEqual:adjustment3];

      if (adjustment)
      {
LABEL_9:

        v16 = v9 & v15 & (mipmaps ^ mipmaps2 ^ 1);
        goto LABEL_10;
      }
    }

    else
    {
      v15 = 1;
    }

    goto LABEL_9;
  }

  v16 = 0;
LABEL_10:

  return v16;
}

- (unint64_t)hash
{
  texture = [(PXGAdjustedTexturePayload *)self texture];
  v4 = [texture hash];
  adjustment = [(PXGAdjustedTexturePayload *)self adjustment];
  v6 = [adjustment hash];
  v7 = (v6 ^ v4) + [(PXGAdjustedTexturePayload *)self mipmaps];

  return v7;
}

- (PXGAdjustedTexturePayload)initWithTexture:(id)texture adjustment:(id)adjustment mipmaps:(BOOL)mipmaps
{
  textureCopy = texture;
  adjustmentCopy = adjustment;
  v14.receiver = self;
  v14.super_class = PXGAdjustedTexturePayload;
  v11 = [(PXGAdjustedTexturePayload *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_texture, texture);
    objc_storeStrong(&v12->_adjustment, adjustment);
    v12->_mipmaps = mipmaps;
  }

  return v12;
}

- (PXGAdjustedTexturePayload)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGTextureManager.mm" lineNumber:1938 description:{@"%s is not available as initializer", "-[PXGAdjustedTexturePayload init]"}];

  abort();
}

@end