@interface PXMockDisplayAsset
+ (id)propertiesForImageWithSize:(CGSize)a3;
+ (id)propertiesForLivePhotoWithSize:(CGSize)a3;
+ (id)propertiesForVideoWithSize:(CGSize)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)livePhotoVideoDuration;
- (BOOL)_BOOLValueForKey:(id)a3;
- (CGRect)acceptableCropRect;
- (CGRect)faceAreaRect;
- (CGRect)preferredCropRect;
- (Class)defaultImageProviderClass;
- (PXMockDisplayAsset)init;
- (PXMockDisplayAsset)initWithProperties:(id)a3;
- (double)_doubleValueForKey:(id)a3;
- (float)_floatValueForKey:(id)a3;
- (id)_dateValueForKey:(id)a3;
- (id)_stringValueForKey:(id)a3;
- (int64_t)_integerValueForKey:(id)a3;
- (int64_t)isContentEqualTo:(id)a3;
- (unint64_t)_unsignedIntegerValueForKey:(id)a3;
@end

@implementation PXMockDisplayAsset

- (Class)defaultImageProviderClass
{
  v2 = [(PXMockDisplayAsset *)self _stringValueForKey:@"PXMockDisplayAssetDefaultImageProviderClassKey"];
  v3 = NSClassFromString(v2);

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)livePhotoVideoDuration
{
  [(PXMockDisplayAsset *)self _doubleValueForKey:@"PXMockDisplayAssetLivePhotoDurationKey"];

  return CMTimeMakeWithSeconds(retstr, v4, 600);
}

- (CGRect)faceAreaRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)acceptableCropRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)preferredCropRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (int64_t)isContentEqualTo:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 2;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXMockDisplayAsset *)self backingDictionary];
      v7 = [(PXMockDisplayAsset *)v5 backingDictionary];
      if (v6 == v7)
      {
        v8 = 2;
      }

      else if ([v6 isEqual:v7])
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)_stringValueForKey:(id)a3
{
  v5 = a3;
  v6 = [(PXMockDisplayAsset *)self backingDictionary];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [v7 px_descriptionForAssertionMessage];
    [v9 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAsset.m" lineNumber:122 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.backingDictionary[key]", v11, v13}];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAsset.m" lineNumber:122 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.backingDictionary[key]", v11}];
  }

LABEL_3:

  return v7;
}

- (id)_dateValueForKey:(id)a3
{
  v5 = a3;
  v6 = [(PXMockDisplayAsset *)self backingDictionary];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [v7 px_descriptionForAssertionMessage];
    [v9 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAsset.m" lineNumber:117 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.backingDictionary[key]", v11, v13}];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAsset.m" lineNumber:117 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.backingDictionary[key]", v11}];
  }

LABEL_3:

  return v7;
}

- (float)_floatValueForKey:(id)a3
{
  v5 = a3;
  v6 = [(PXMockDisplayAsset *)self backingDictionary];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAsset.m" lineNumber:112 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.backingDictionary[key]", v13}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v7 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAsset.m" lineNumber:112 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.backingDictionary[key]", v13, v15}];

    goto LABEL_6;
  }

LABEL_3:
  [v7 floatValue];
  v9 = v8;

  return v9;
}

- (double)_doubleValueForKey:(id)a3
{
  v5 = a3;
  v6 = [(PXMockDisplayAsset *)self backingDictionary];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAsset.m" lineNumber:107 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.backingDictionary[key]", v13}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v7 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAsset.m" lineNumber:107 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.backingDictionary[key]", v13, v15}];

    goto LABEL_6;
  }

LABEL_3:
  [v7 doubleValue];
  v9 = v8;

  return v9;
}

- (BOOL)_BOOLValueForKey:(id)a3
{
  v5 = a3;
  v6 = [(PXMockDisplayAsset *)self backingDictionary];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAsset.m" lineNumber:102 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.backingDictionary[key]", v12}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v7 px_descriptionForAssertionMessage];
    [v10 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAsset.m" lineNumber:102 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.backingDictionary[key]", v12, v14}];

    goto LABEL_6;
  }

LABEL_3:
  v8 = [v7 BOOLValue];

  return v8;
}

- (unint64_t)_unsignedIntegerValueForKey:(id)a3
{
  v5 = a3;
  v6 = [(PXMockDisplayAsset *)self backingDictionary];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAsset.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.backingDictionary[key]", v12}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v7 px_descriptionForAssertionMessage];
    [v10 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAsset.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.backingDictionary[key]", v12, v14}];

    goto LABEL_6;
  }

LABEL_3:
  v8 = [v7 unsignedIntegerValue];

  return v8;
}

- (int64_t)_integerValueForKey:(id)a3
{
  v5 = a3;
  v6 = [(PXMockDisplayAsset *)self backingDictionary];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAsset.m" lineNumber:92 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.backingDictionary[key]", v12}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v7 px_descriptionForAssertionMessage];
    [v10 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAsset.m" lineNumber:92 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.backingDictionary[key]", v12, v14}];

    goto LABEL_6;
  }

LABEL_3:
  v8 = [v7 integerValue];

  return v8;
}

- (PXMockDisplayAsset)initWithProperties:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXMockDisplayAsset.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"properties"}];
  }

  v11.receiver = self;
  v11.super_class = PXMockDisplayAsset;
  v6 = [(PXMockDisplayAsset *)&v11 init];
  if (v6)
  {
    v7 = [v5 copy];
    backingDictionary = v6->_backingDictionary;
    v6->_backingDictionary = v7;
  }

  return v6;
}

- (PXMockDisplayAsset)init
{
  v3 = [MEMORY[0x1E695DF20] dictionary];
  v4 = [(PXMockDisplayAsset *)self initWithProperties:v3];

  return v4;
}

+ (id)propertiesForVideoWithSize:(CGSize)a3
{
  height = a3.height;
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"PXMockDisplayAssetMediaTypeKey";
  v8[1] = @"PXMockDisplayAssetPlaybackStyleKey";
  v9[0] = &unk_1F1909E98;
  v9[1] = &unk_1F1909EB0;
  v8[2] = @"PXMockDisplayAssetPixelWidthKey";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3.width];
  v9[2] = v4;
  v8[3] = @"PXMockDisplayAssetPixelHeightKey";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:height];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

+ (id)propertiesForLivePhotoWithSize:(CGSize)a3
{
  height = a3.height;
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"PXMockDisplayAssetMediaTypeKey";
  v8[1] = @"PXMockDisplayAssetMediaSubtypesKey";
  v9[0] = &unk_1F1909E50;
  v9[1] = &unk_1F1909E68;
  v9[2] = &unk_1F1909E80;
  v8[2] = @"PXMockDisplayAssetPlaybackStyleKey";
  v8[3] = @"PXMockDisplayAssetPixelWidthKey";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3.width];
  v9[3] = v4;
  v8[4] = @"PXMockDisplayAssetPixelHeightKey";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:height];
  v9[4] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];

  return v6;
}

+ (id)propertiesForImageWithSize:(CGSize)a3
{
  height = a3.height;
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"PXMockDisplayAssetMediaTypeKey";
  v8[1] = @"PXMockDisplayAssetPlaybackStyleKey";
  v9[0] = &unk_1F1909E50;
  v9[1] = &unk_1F1909E50;
  v8[2] = @"PXMockDisplayAssetPixelWidthKey";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3.width];
  v9[2] = v4;
  v8[3] = @"PXMockDisplayAssetPixelHeightKey";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:height];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

@end