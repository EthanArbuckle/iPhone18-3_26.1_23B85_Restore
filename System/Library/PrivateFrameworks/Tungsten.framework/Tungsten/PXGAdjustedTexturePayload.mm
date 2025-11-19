@interface PXGAdjustedTexturePayload
- (BOOL)isEqual:(id)a3;
- (PXGAdjustedTexturePayload)init;
- (PXGAdjustedTexturePayload)initWithTexture:(id)a3 adjustment:(id)a4 mipmaps:(BOOL)a5;
- (unint64_t)hash;
@end

@implementation PXGAdjustedTexturePayload

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 texture];
    v8 = [(PXGAdjustedTexturePayload *)self texture];
    v9 = [v7 isEqual:v8];

    v10 = [v6 mipmaps];
    v11 = [(PXGAdjustedTexturePayload *)self mipmaps];
    v12 = [v6 adjustment];
    if (v12 || ([(PXGAdjustedTexturePayload *)self adjustment], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = [v6 adjustment];
      v14 = [(PXGAdjustedTexturePayload *)self adjustment];
      v15 = [v13 isEqual:v14];

      if (v12)
      {
LABEL_9:

        v16 = v9 & v15 & (v10 ^ v11 ^ 1);
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
  v3 = [(PXGAdjustedTexturePayload *)self texture];
  v4 = [v3 hash];
  v5 = [(PXGAdjustedTexturePayload *)self adjustment];
  v6 = [v5 hash];
  v7 = (v6 ^ v4) + [(PXGAdjustedTexturePayload *)self mipmaps];

  return v7;
}

- (PXGAdjustedTexturePayload)initWithTexture:(id)a3 adjustment:(id)a4 mipmaps:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PXGAdjustedTexturePayload;
  v11 = [(PXGAdjustedTexturePayload *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_texture, a3);
    objc_storeStrong(&v12->_adjustment, a4);
    v12->_mipmaps = a5;
  }

  return v12;
}

- (PXGAdjustedTexturePayload)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGTextureManager.mm" lineNumber:1938 description:{@"%s is not available as initializer", "-[PXGAdjustedTexturePayload init]"}];

  abort();
}

@end