@interface PXAssetVariationOption
+ (id)_localizedNameForVariationType:(int64_t)type;
+ (id)variationOptionWithType:(int64_t)type recommended:(BOOL)recommended current:(BOOL)current;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToVariationOption:(id)option;
- (unint64_t)hash;
@end

@implementation PXAssetVariationOption

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PXAssetVariationOption;
  v3 = [(PXAssetVariationOption *)&v7 hash];
  variationType = [(PXAssetVariationOption *)self variationType];
  v5 = variationType ^ [(PXAssetVariationOption *)self isRecommended];
  return v5 ^ [(PXAssetVariationOption *)self isCurrent]^ v3;
}

- (BOOL)isEqualToVariationOption:(id)option
{
  optionCopy = option;
  variationType = [(PXAssetVariationOption *)self variationType];
  if (variationType == [optionCopy variationType] && (v6 = -[PXAssetVariationOption isRecommended](self, "isRecommended"), v6 == objc_msgSend(optionCopy, "isRecommended")))
  {
    isCurrent = [(PXAssetVariationOption *)self isCurrent];
    v7 = isCurrent ^ [optionCopy isCurrent] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy isEqualToVariationOption:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_localizedNameForVariationType:(int64_t)type
{
  v4 = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      v5 = @"PXAssetVariationTypeMirror";
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      v5 = @"PXAssetVariationTypeLongExposure";
    }

    goto LABEL_10;
  }

  switch(type)
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetVariationOption.m" lineNumber:76 description:@"Code which should be unreachable has been reached"];

      abort();
  }

LABEL_11:

  return v4;
}

+ (id)variationOptionWithType:(int64_t)type recommended:(BOOL)recommended current:(BOOL)current
{
  v9 = objc_alloc_init(self);
  v9[2] = type;
  v10 = [self _localizedNameForVariationType:type];
  v11 = v9[3];
  v9[3] = v10;

  *(v9 + 8) = recommended;
  *(v9 + 9) = current;

  return v9;
}

@end