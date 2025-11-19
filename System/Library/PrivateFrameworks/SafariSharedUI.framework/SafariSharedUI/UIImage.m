@interface UIImage
@end

@implementation UIImage

void __68__UIImage_SafariSharedExtras__safari_imageWithSize_flipped_actions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v3 CGContext]);
}

id __69__UIImage_SafariSharedExtras__safari_dynamicImageWithSize_generator___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__8;
    v19 = __Block_byref_object_dispose__8;
    v20 = 0;
    v8 = [v6 traitCollection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__UIImage_SafariSharedExtras__safari_dynamicImageWithSize_generator___block_invoke_13;
    v10[3] = &unk_1E82857B8;
    v13 = &v15;
    v12 = *(a1 + 32);
    v11 = v6;
    v14 = *(a1 + 40);
    [v8 performAsCurrentTraitCollection:v10];

    v7 = v16[5];
    _Block_object_dispose(&v15, 8);
  }

  return v7;
}

void __69__UIImage_SafariSharedExtras__safari_dynamicImageWithSize_generator___block_invoke_13(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [WBSImageUtilities resizedImage:*(a1 + 56) withSize:*(a1 + 64)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

id __69__UIImage_SafariSharedExtras__safari_dynamicImageWithSize_generator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v7 = [WeakRetained imageAsset];
    v8 = [v7 imageWithConfiguration:v3];
    v9 = (*(v6 + 16))(v6, v8, v3);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end