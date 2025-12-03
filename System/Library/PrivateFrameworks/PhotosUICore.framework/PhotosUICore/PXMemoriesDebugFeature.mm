@interface PXMemoriesDebugFeature
+ (id)_tintColorForFeatureType:(unint64_t)type;
- (NSString)localizedTypeStringValue;
- (PXMemoriesDebugFeature)initWithLocalizedTitle:(id)title type:(unint64_t)type;
- (UIColor)featureTintColor;
@end

@implementation PXMemoriesDebugFeature

- (NSString)localizedTypeStringValue
{
  type = self->_type;
  if (type > 5)
  {
    return &stru_1F1741150;
  }

  else
  {
    return &off_1E7746FA0[type]->isa;
  }
}

- (UIColor)featureTintColor
{
  featureTintColor = self->_featureTintColor;
  if (!featureTintColor)
  {
    v4 = [objc_opt_class() _tintColorForFeatureType:self->_type];
    v5 = self->_featureTintColor;
    self->_featureTintColor = v4;

    featureTintColor = self->_featureTintColor;
  }

  return featureTintColor;
}

- (PXMemoriesDebugFeature)initWithLocalizedTitle:(id)title type:(unint64_t)type
{
  titleCopy = title;
  v18.receiver = self;
  v18.super_class = PXMemoriesDebugFeature;
  v8 = [(PXMemoriesDebugFeature *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_localizedTitle, title);
    v10 = [titleCopy length];
    v11 = MEMORY[0x1E696AEC0];
    localizedTypeStringValue = [(PXMemoriesDebugFeature *)v9 localizedTypeStringValue];
    v13 = localizedTypeStringValue;
    if (v10)
    {
      [v11 stringWithFormat:@"%@:%@", localizedTypeStringValue, titleCopy];
    }

    else
    {
      [v11 stringWithFormat:@"%@", localizedTypeStringValue, v17];
    }
    v14 = ;

    featureLocalizedTitle = v9->_featureLocalizedTitle;
    v9->_featureLocalizedTitle = v14;
  }

  return v9;
}

+ (id)_tintColorForFeatureType:(unint64_t)type
{
  if (type > 2)
  {
    if (type - 3 < 2)
    {
      v3 = MEMORY[0x1E69DC888];
      v4 = 0.685;
      v5 = 0.481;
      v6 = 1.0;
      goto LABEL_13;
    }

    if (type == 5)
    {
      v3 = MEMORY[0x1E69DC888];
      v4 = 0.725;
      v5 = 0.737;
      v6 = 0.238;
      goto LABEL_13;
    }

LABEL_11:
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    goto LABEL_14;
  }

  if (!type)
  {
    v3 = MEMORY[0x1E69DC888];
    v5 = 0.591;
    v6 = 0.409;
    v4 = 1.0;
    goto LABEL_13;
  }

  if (type == 1)
  {
    v3 = MEMORY[0x1E69DC888];
    v4 = 0.44;
    v5 = 0.683;
    v6 = 0.519;
    goto LABEL_13;
  }

  if (type != 2)
  {
    goto LABEL_11;
  }

  v3 = MEMORY[0x1E69DC888];
  v4 = 0.56;
  v5 = 0.699;
  v6 = 0.771;
LABEL_13:
  blackColor = [v3 colorWithRed:v4 green:v5 blue:v6 alpha:1.0];
LABEL_14:

  return blackColor;
}

@end