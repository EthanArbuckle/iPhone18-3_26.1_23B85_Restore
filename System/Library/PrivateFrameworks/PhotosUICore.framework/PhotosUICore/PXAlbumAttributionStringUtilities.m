@interface PXAlbumAttributionStringUtilities
+ (id)albumStringWithAlbumCount:(unint64_t)a3 albumTitle:(id)a4 userInterfaceIdiom:(int64_t)a5;
+ (id)defaultAttributesWithAlbumCount:(unint64_t)a3 userInterfaceIdiom:(int64_t)a4 textStyle:(int64_t)a5;
+ (id)emphasizedAttributesForUserInterfaceIdiom:(int64_t)a3;
+ (id)localizedAttributedAlbumAttributionStringWithAlbumCount:(unint64_t)a3 albumTitle:(id)a4 userInterfaceIdiom:(int64_t)a5 textStyle:(int64_t)a6;
@end

@implementation PXAlbumAttributionStringUtilities

+ (id)emphasizedAttributesForUserInterfaceIdiom:(int64_t)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (a3 == 5)
  {
    v3 = MEMORY[0x1E69DDD00];
  }

  else
  {
    v3 = MEMORY[0x1E69DDD80];
  }

  v4 = MEMORY[0x1E69DB878];
  v5 = *v3;
  v6 = [v4 preferredFontForTextStyle:v5];
  v7 = [v6 fontDescriptor];
  v21 = *MEMORY[0x1E69DB8F0];
  v19 = *MEMORY[0x1E69DB990];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
  v20 = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];

  v12 = [MEMORY[0x1E69DB878] fontWithDescriptor:v11 size:0.0];
  v13 = *MEMORY[0x1E69DB650];
  v17[0] = *MEMORY[0x1E69DB648];
  v17[1] = v13;
  v18[0] = v12;
  v14 = [MEMORY[0x1E69DC888] labelColor];
  v18[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v15;
}

+ (id)defaultAttributesWithAlbumCount:(unint64_t)a3 userInterfaceIdiom:(int64_t)a4 textStyle:(int64_t)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v23 = a4 != 5 && a5 != 1;
  if (v23)
  {
    v6 = MEMORY[0x1E69DDD80];
  }

  else
  {
    v6 = MEMORY[0x1E69DDD00];
  }

  v7 = *v6;
  if (a4 != 5 && a5 != 1)
  {
    v8 = MEMORY[0x1E69DB978];
  }

  else
  {
    v8 = MEMORY[0x1E69DB970];
  }

  v9 = v7;
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v9];
  v11 = [v10 fontDescriptor];
  v28 = *MEMORY[0x1E69DB8F0];
  v26 = *MEMORY[0x1E69DB990];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:*v8];
  v27 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v29[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v15 = [v11 fontDescriptorByAddingAttributes:v14];

  v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:v15 size:0.0];
  v17 = *MEMORY[0x1E69DB648];
  v25[0] = v16;
  v18 = *MEMORY[0x1E69DB650];
  v24[0] = v17;
  v24[1] = v18;
  if (a3 >= 2 && v23)
  {
    v19 = [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  v20 = v19;
  v25[1] = v19;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];

  return v21;
}

+ (id)albumStringWithAlbumCount:(unint64_t)a3 albumTitle:(id)a4 userInterfaceIdiom:(int64_t)a5
{
  a4;
  if (a5 == 5)
  {
    if (a3 >= 2)
    {
      PXLocalizedStringWithCount(@"PXPhotosDetailsAlbumCountAttributionTitle_VisionOS");
    }

    v7 = @"PXPhotosDetailsSingleAlbumAttributionTitle_VisionOS";
  }

  else
  {
    if (a3 >= 2)
    {
      PXLocalizedStringWithCount(@"PXPhotosDetailsAlbumCountAttributionTitle");
    }

    v7 = @"PXPhotosDetailsSingleAlbumAttributionTitle";
  }

  PXLocalizedStringFromTable(v7, @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringWithValidatedFormat();
}

+ (id)localizedAttributedAlbumAttributionStringWithAlbumCount:(unint64_t)a3 albumTitle:(id)a4 userInterfaceIdiom:(int64_t)a5 textStyle:(int64_t)a6
{
  v9 = a4;
  if (a6 == 1)
  {
    if (a5 == 5)
    {
      v10 = @"PXPhotosDetailsAlbumListCountAttributionTitle_VisionOS";
    }

    else
    {
      v10 = @"PXPhotosDetailsAlbumListCountAttributionTitle";
    }

    PXLocalizedStringWithCount(v10);
  }

  if (a6)
  {
    v14 = 0;
  }

  else
  {
    v11 = [PXAlbumAttributionStringUtilities albumStringWithAlbumCount:a3 albumTitle:v9 userInterfaceIdiom:a5];
    v12 = [PXAlbumAttributionStringUtilities defaultAttributesWithAlbumCount:a3 userInterfaceIdiom:a5 textStyle:0];
    v13 = [PXAlbumAttributionStringUtilities emphasizedAttributesForUserInterfaceIdiom:a5];
    v14 = [MEMORY[0x1E696AAB0] px_attributedStringWithHTMLString:v11 defaultAttributes:v12 emphasizedAttributes:v13];
  }

  return v14;
}

@end