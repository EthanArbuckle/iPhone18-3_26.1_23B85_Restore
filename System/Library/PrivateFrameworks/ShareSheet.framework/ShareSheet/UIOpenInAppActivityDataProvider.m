@interface UIOpenInAppActivityDataProvider
@end

@implementation UIOpenInAppActivityDataProvider

void __116___UIOpenInAppActivityDataProvider_preparedActivityExtensionItemDataForActivityItemValues_extensionItemDataRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __116___UIOpenInAppActivityDataProvider_preparedActivityExtensionItemDataForActivityItemValues_extensionItemDataRequest___block_invoke_2;
      v6[3] = &unk_1E71FA320;
      v7 = v5;
      [v4 registerItemForTypeIdentifier:@"com.apple.ShareUI.openURL.supplementalSecurityContext" loadHandler:v6];
    }
  }
}

void __116___UIOpenInAppActivityDataProvider_preparedActivityExtensionItemDataForActivityItemValues_extensionItemDataRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [(UISUISecurityScopedResource *)UISUIOpenInByCopySecurityScopedResource scopedResourceWithFileURL:v3 allowedAccess:2];
  if (v5 || ([(UISUISecurityScopedResource *)UISUIOpenInByCopySecurityScopedResource scopedResourceWithFileURL:v3 allowedAccess:1], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v3 ui_bookmarkForExportWithError:0];
    [v6 setBookmarkExportDataEncodedAsString:v7];

    v8 = [UISUISecurityContext alloc];
    v11[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v10 = [(UISUISecurityContext *)v8 initWithSecurityScopedResources:v9];
  }

  else
  {
    v10 = 0;
  }

  v4[2](v4, v10, 0);
}

@end