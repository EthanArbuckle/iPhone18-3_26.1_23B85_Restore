@interface STUIStatusBarImageProvider
+ (id)sharedProvider;
- (UIEdgeInsets)_alignmentInsetsForImageNamed:(id)a3 styleAttributes:(id)a4;
- (id)imageNamed:(id)a3 styleAttributes:(id)a4;
@end

@implementation STUIStatusBarImageProvider

+ (id)sharedProvider
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__STUIStatusBarImageProvider_sharedProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)imageNamed:(id)a3 styleAttributes:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [v6 imageNamePrefixes];
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
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
          objc_enumerationMutation(v8);
        }

        v10 = [*(*(&v30 + 1) + 8 * v13) stringByAppendingString:v7];

        v15 = [v6 traitCollection];
        v16 = [STUIStatusBarImage _kitImageNamed:v10 withTrait:v15];

        if (v16)
        {

          goto LABEL_12;
        }

        ++v13;
        v14 = v10;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = v7;
  v18 = [v6 traitCollection];
  v16 = [STUIStatusBarImage _kitImageNamed:v17 withTrait:v18];

  v10 = v17;
  if (v16)
  {
LABEL_12:
    [(STUIStatusBarImageProvider *)self _alignmentInsetsForImageNamed:v10 styleAttributes:v6];
    v20.f64[0] = v19;
    v20.f64[1] = v21;
    v23.f64[0] = v22;
    v23.f64[1] = v24;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v20, *MEMORY[0x277D768C8]), vceqq_f64(v23, *(MEMORY[0x277D768C8] + 16))))) & 1) != 0 || ([v16 imageWithAlignmentRectInsets:?], v25 = objc_claimAutoreleasedReturnValue(), v16, (v16 = v25) != 0))
    {
      if (![(STUIStatusBarImageProvider *)self _suppressHairlineThickeningForImageName:v10 styleAttributes:v6])
      {
        goto LABEL_19;
      }

      v26 = [v16 _imageThatSuppressesAccessibilityHairlineThickening];

      v16 = v26;
      if (v26)
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

- (UIEdgeInsets)_alignmentInsetsForImageNamed:(id)a3 styleAttributes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v8 = *MEMORY[0x277D768C8];
  v7 = *(MEMORY[0x277D768C8] + 8);
  v10 = *(MEMORY[0x277D768C8] + 16);
  v9 = *(MEMORY[0x277D768C8] + 24);
  if ([v5 isEqualToString:@"Large_Bolt"])
  {
    UIEdgeInsetsAdd();
    [v6 effectiveLayoutDirection];
  }

  else if (![v5 isEqualToString:@"Split_SOS"])
  {
    goto LABEL_5;
  }

  UIEdgeInsetsAdd();
  v8 = v11;
  v7 = v12;
  v10 = v13;
  v9 = v14;
LABEL_5:
  v15 = [v6 traitCollection];
  [v15 displayScale];
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