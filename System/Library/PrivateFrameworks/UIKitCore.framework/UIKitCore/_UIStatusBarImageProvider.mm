@interface _UIStatusBarImageProvider
+ (id)sharedProvider;
- (UIEdgeInsets)_alignmentInsetsForImageNamed:(id)named styleAttributes:(id)attributes;
- (id)imageNamed:(id)named styleAttributes:(id)attributes;
@end

@implementation _UIStatusBarImageProvider

+ (id)sharedProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___UIStatusBarImageProvider_sharedProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_1287 != -1)
  {
    dispatch_once(&_MergedGlobals_1287, block);
  }

  v2 = qword_1ED4A0A40;

  return v2;
}

- (id)imageNamed:(id)named styleAttributes:(id)attributes
{
  v35 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  attributesCopy = attributes;
  v7 = namedCopy;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  imageNamePrefixes = [attributesCopy imageNamePrefixes];
  v9 = [imageNamePrefixes countByEnumeratingWithState:&v28 objects:v34 count:16];
  v10 = v7;
  if (v9)
  {
    v11 = v9;
    v12 = *v29;
    v10 = v7;
    while (2)
    {
      v13 = 0;
      v14 = v10;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(imageNamePrefixes);
        }

        v10 = [*(*(&v28 + 1) + 8 * v13) stringByAppendingString:v7];

        traitCollection = [attributesCopy traitCollection];
        v16 = [_UIStatusBarImage _kitImageNamed:v10 withTrait:traitCollection];

        if (v16)
        {

          goto LABEL_12;
        }

        ++v13;
        v14 = v10;
      }

      while (v11 != v13);
      v11 = [imageNamePrefixes countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = v7;
  traitCollection2 = [attributesCopy traitCollection];
  v16 = [_UIStatusBarImage _kitImageNamed:v17 withTrait:traitCollection2];

  v10 = v17;
  if (v16)
  {
LABEL_12:
    [(_UIStatusBarImageProvider *)self _alignmentInsetsForImageNamed:v10 styleAttributes:attributesCopy];
    if (v22 == 0.0 && v19 == 0.0 && v21 == 0.0 && v20 == 0.0 || ([v16 imageWithAlignmentRectInsets:?], v23 = objc_claimAutoreleasedReturnValue(), v16, (v16 = v23) != 0))
    {
      if (![(_UIStatusBarImageProvider *)self _suppressHairlineThickeningForImageName:v10 styleAttributes:attributesCopy])
      {
        goto LABEL_22;
      }

      _imageThatSuppressesAccessibilityHairlineThickening = [v16 _imageThatSuppressesAccessibilityHairlineThickening];

      v16 = _imageThatSuppressesAccessibilityHairlineThickening;
      if (_imageThatSuppressesAccessibilityHairlineThickening)
      {
        goto LABEL_22;
      }
    }
  }

  v25 = *(__UILogGetCategoryCachedImpl("StatusBar", &imageNamed_styleAttributes____s_category) + 8);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v33 = v7;
    _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "No image for name %@", buf, 0xCu);
  }

  v16 = 0;
LABEL_22:

  return v16;
}

- (UIEdgeInsets)_alignmentInsetsForImageNamed:(id)named styleAttributes:(id)attributes
{
  namedCopy = named;
  attributesCopy = attributes;
  if ([namedCopy isEqualToString:@"Large_Bolt"])
  {
    effectiveLayoutDirection = [attributesCopy effectiveLayoutDirection];
    if (effectiveLayoutDirection == 1)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = -1.33333333;
    }

    if (effectiveLayoutDirection == 1)
    {
      v9 = -1.33333333;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = 1.66666667;
  }

  else
  {
    v9 = 0.0;
    if ([namedCopy isEqualToString:@"Split_SOS"])
    {
      v10 = -0.666666667;
    }

    else
    {
      v10 = 0.0;
    }

    v8 = 0.0;
  }

  traitCollection = [attributesCopy traitCollection];
  [traitCollection displayScale];
  v13 = v12;

  if (v13 == 3.0)
  {
    v15 = 0.0;
  }

  else
  {
    UIRoundToScale(0.0, v13);
    v15 = v14;
    UIRoundToScale(v8, v13);
    v8 = v16;
    UIRoundToScale(v10, v13);
    v10 = v17;
    UIRoundToScale(v9, v13);
    v9 = v18;
  }

  v19 = v15;
  v20 = v8;
  v21 = v10;
  v22 = v9;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

@end