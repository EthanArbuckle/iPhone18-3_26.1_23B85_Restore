@interface STUIStatusBarImageProvider
+ (id)sharedProvider;
- (UIEdgeInsets)_alignmentInsetsForImageNamed:(id)named styleAttributes:(id)attributes;
- (id)imageNamed:(id)named styleAttributes:(id)attributes;
@end

@implementation STUIStatusBarImageProvider

+ (id)sharedProvider
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__STUIStatusBarImageProvider_sharedProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_53 != -1)
  {
    dispatch_once(&_MergedGlobals_53, block);
  }

  v2 = qword_280C1E858;

  return v2;
}

uint64_t __44__STUIStatusBarImageProvider_sharedProvider__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_280C1E858;
  qword_280C1E858 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (id)imageNamed:(id)named styleAttributes:(id)attributes
{
  v37 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  attributesCopy = attributes;
  v7 = namedCopy;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  imageNamePrefixes = [attributesCopy imageNamePrefixes];
  v9 = [imageNamePrefixes countByEnumeratingWithState:&v30 objects:v36 count:16];
  v10 = v7;
  if (v9)
  {
    v11 = v9;
    v12 = *v31;
    v10 = v7;
    while (2)
    {
      v13 = 0;
      v14 = v10;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(imageNamePrefixes);
        }

        v10 = [*(*(&v30 + 1) + 8 * v13) stringByAppendingString:v7];

        traitCollection = [attributesCopy traitCollection];
        v16 = [STUIStatusBarImage _kitImageNamed:v10 withTrait:traitCollection];

        if (v16)
        {

          goto LABEL_12;
        }

        ++v13;
        v14 = v10;
      }

      while (v11 != v13);
      v11 = [imageNamePrefixes countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = v7;
  traitCollection2 = [attributesCopy traitCollection];
  v16 = [STUIStatusBarImage _kitImageNamed:v17 withTrait:traitCollection2];

  v10 = v17;
  if (v16)
  {
LABEL_12:
    [(STUIStatusBarImageProvider *)self _alignmentInsetsForImageNamed:v10 styleAttributes:attributesCopy];
    v20.f64[0] = v19;
    v20.f64[1] = v21;
    v23.f64[0] = v22;
    v23.f64[1] = v24;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v20, *MEMORY[0x277D768C8]), vceqq_f64(v23, *(MEMORY[0x277D768C8] + 16))))) & 1) != 0 || ([v16 imageWithAlignmentRectInsets:?], v25 = objc_claimAutoreleasedReturnValue(), v16, (v16 = v25) != 0))
    {
      if (![(STUIStatusBarImageProvider *)self _suppressHairlineThickeningForImageName:v10 styleAttributes:attributesCopy])
      {
        goto LABEL_19;
      }

      _imageThatSuppressesAccessibilityHairlineThickening = [v16 _imageThatSuppressesAccessibilityHairlineThickening];

      v16 = _imageThatSuppressesAccessibilityHairlineThickening;
      if (_imageThatSuppressesAccessibilityHairlineThickening)
      {
        goto LABEL_19;
      }
    }
  }

  v27 = _STUIStatusBar_Log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v35 = v7;
    _os_log_impl(&dword_26C4DD000, v27, OS_LOG_TYPE_ERROR, "No image for name %@", buf, 0xCu);
  }

  v16 = 0;
LABEL_19:

  return v16;
}

- (UIEdgeInsets)_alignmentInsetsForImageNamed:(id)named styleAttributes:(id)attributes
{
  namedCopy = named;
  attributesCopy = attributes;
  v8 = *MEMORY[0x277D768C8];
  v7 = *(MEMORY[0x277D768C8] + 8);
  v10 = *(MEMORY[0x277D768C8] + 16);
  v9 = *(MEMORY[0x277D768C8] + 24);
  if ([namedCopy isEqualToString:@"Large_Bolt"])
  {
    UIEdgeInsetsAdd();
    [attributesCopy effectiveLayoutDirection];
  }

  else if (![namedCopy isEqualToString:@"Split_SOS"])
  {
    goto LABEL_5;
  }

  UIEdgeInsetsAdd();
  v8 = v11;
  v7 = v12;
  v10 = v13;
  v9 = v14;
LABEL_5:
  traitCollection = [attributesCopy traitCollection];
  [traitCollection displayScale];
  v17 = v16;

  if (v17 != 3.0)
  {
    UIRoundToScale();
    v8 = v18;
    UIRoundToScale();
    v7 = v19;
    UIRoundToScale();
    v10 = v20;
    UIRoundToScale();
    v9 = v21;
  }

  v22 = v8;
  v23 = v7;
  v24 = v10;
  v25 = v9;
  result.right = v25;
  result.bottom = v24;
  result.left = v23;
  result.top = v22;
  return result;
}

@end