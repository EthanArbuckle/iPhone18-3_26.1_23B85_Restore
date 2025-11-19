@interface SBSApplicationShortcutItem
@end

@implementation SBSApplicationShortcutItem

id __108__SBSApplicationShortcutItem_SBHAdditions__sb_buildIconImageWithApplicationBundleURL_image_systemImageName___block_invoke(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) contactIdentifier];
  if (v4)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v5 = getCNContactStoreClass_softClass;
    v30 = getCNContactStoreClass_softClass;
    if (!getCNContactStoreClass_softClass)
    {
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __getCNContactStoreClass_block_invoke;
      v25 = &unk_1E8089848;
      v26 = &v27;
      __getCNContactStoreClass_block_invoke(&v22);
      v5 = v28[3];
    }

    v6 = v5;
    _Block_object_dispose(&v27, 8);
    v7 = objc_alloc_init(v5);
    v8 = [getCNMonogrammerClass() descriptorForRequiredKeysIncludingImage:1];
    v31[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    v10 = [v7 unifiedContactWithIdentifier:v4 keysToFetch:v9 error:0];

    if (v10)
    {
      v11 = [v3 monogramForContact:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v13 = *(a1 + 32);
    v12 = (a1 + 32);
    v10 = [v13 firstName];
    v14 = [*v12 lastName];
    v15 = [*v12 imageData];
    if (v15)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2050000000;
      v16 = getCNMutableContactClass_softClass;
      v30 = getCNMutableContactClass_softClass;
      if (!getCNMutableContactClass_softClass)
      {
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __getCNMutableContactClass_block_invoke;
        v25 = &unk_1E8089848;
        v26 = &v27;
        __getCNMutableContactClass_block_invoke(&v22);
        v16 = v28[3];
      }

      v17 = v16;
      _Block_object_dispose(&v27, 8);
      v18 = objc_alloc_init(v16);
      v19 = v18;
      if (v10)
      {
        [v18 setGivenName:v10];
      }

      if (v14)
      {
        [v19 setFamilyName:v14];
      }

      [v19 setImageData:v15];
      v11 = [v3 monogramForContact:v19];
    }

    else
    {
      v11 = [v3 monogramForPersonWithFirstName:v10 lastName:v14];
    }
  }

  if (!v11)
  {
    v11 = [v3 silhouetteMonogram];
  }

  v20 = [v11 imageWithRenderingMode:1];

  return v20;
}

@end