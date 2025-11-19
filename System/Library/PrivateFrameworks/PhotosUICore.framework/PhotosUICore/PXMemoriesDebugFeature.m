@interface PXMemoriesDebugFeature
+ (id)_tintColorForFeatureType:(unint64_t)a3;
- (NSString)localizedTypeStringValue;
- (PXMemoriesDebugFeature)initWithLocalizedTitle:(id)a3 type:(unint64_t)a4;
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

- (PXMemoriesDebugFeature)initWithLocalizedTitle:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v18.receiver = self;
  v18.super_class = PXMemoriesDebugFeature;
  v8 = [(PXMemoriesDebugFeature *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a4;
    objc_storeStrong(&v8->_localizedTitle, a3);
    v10 = [v7 length];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [(PXMemoriesDebugFeature *)v9 localizedTypeStringValue];
    v13 = v12;
    if (v10)
    {
      [v11 stringWithFormat:@"%@:%@", v12, v7];
    }

    else
    {
      [v11 stringWithFormat:@"%@", v12, v17];
    }
    v14 = ;

    featureLocalizedTitle = v9->_featureLocalizedTitle;
    v9->_featureLocalizedTitle = v14;
  }

  return v9;
}

+ (id)_tintColorForFeatureType:(unint64_t)a3
{
  if (a3 > 2)
  {
    if (a3 - 3 < 2)
    {
      v3 = MEMORY[0x1E69DC888];
      v4 = 0.685;
      v5 = 0.481;
      v6 = 1.0;
      goto LABEL_13;
    }

    if (a3 == 5)
    {
      v3 = MEMORY[0x1E69DC888];
      v4 = 0.725;
      v5 = 0.737;
      v6 = 0.238;
      goto LABEL_13;
    }

LABEL_11:
    v7 = [MEMORY[0x1E69DC888] blackColor];
    goto LABEL_14;
  }

  if (!a3)
  {
    v3 = MEMORY[0x1E69DC888];
    v5 = 0.591;
    v6 = 0.409;
    v4 = 1.0;
    goto LABEL_13;
  }

  if (a3 == 1)
  {
    v3 = MEMORY[0x1E69DC888];
    v4 = 0.44;
    v5 = 0.683;
    v6 = 0.519;
    goto LABEL_13;
  }

  if (a3 != 2)
  {
    goto LABEL_11;
  }

  v3 = MEMORY[0x1E69DC888];
  v4 = 0.56;
  v5 = 0.699;
  v6 = 0.771;
LABEL_13:
  v7 = [v3 colorWithRed:v4 green:v5 blue:v6 alpha:1.0];
LABEL_14:

  return v7;
}

@end