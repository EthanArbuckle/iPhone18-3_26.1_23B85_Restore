@interface PXAssetVariationOption
+ (id)_localizedNameForVariationType:(int64_t)a3;
+ (id)variationOptionWithType:(int64_t)a3 recommended:(BOOL)a4 current:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToVariationOption:(id)a3;
- (unint64_t)hash;
@end

@implementation PXAssetVariationOption

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PXAssetVariationOption;
  v3 = [(PXAssetVariationOption *)&v7 hash];
  v4 = [(PXAssetVariationOption *)self variationType];
  v5 = v4 ^ [(PXAssetVariationOption *)self isRecommended];
  return v5 ^ [(PXAssetVariationOption *)self isCurrent]^ v3;
}

- (BOOL)isEqualToVariationOption:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetVariationOption *)self variationType];
  if (v5 == [v4 variationType] && (v6 = -[PXAssetVariationOption isRecommended](self, "isRecommended"), v6 == objc_msgSend(v4, "isRecommended")))
  {
    v8 = [(PXAssetVariationOption *)self isCurrent];
    v7 = v8 ^ [v4 isCurrent] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isEqualToVariationOption:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_localizedNameForVariationType:(int64_t)a3
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v5 = @"PXAssetVariationTypeMirror";
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      v5 = @"PXAssetVariationTypeLongExposure";
    }

    goto LABEL_10;
  }

  switch(a3)
  {
    case 0:
      v5 = @"PXAssetVariationTypeNone";
      goto LABEL_10;
    case 1:
      v5 = @"PXAssetVariationTypeAutoloop";
LABEL_10:
      v4 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
      break;
    case -1:
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:a1 file:@"PXAssetVariationOption.m" lineNumber:76 description:@"Code which should be unreachable has been reached"];

      abort();
  }

LABEL_11:

  return v4;
}

+ (id)variationOptionWithType:(int64_t)a3 recommended:(BOOL)a4 current:(BOOL)a5
{
  v9 = objc_alloc_init(a1);
  v9[2] = a3;
  v10 = [a1 _localizedNameForVariationType:a3];
  v11 = v9[3];
  v9[3] = v10;

  *(v9 + 8) = a4;
  *(v9 + 9) = a5;

  return v9;
}

@end