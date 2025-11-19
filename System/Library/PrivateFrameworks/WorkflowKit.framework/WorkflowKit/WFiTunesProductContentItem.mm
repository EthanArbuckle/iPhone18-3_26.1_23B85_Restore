@interface WFiTunesProductContentItem
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
- (BOOL)getListAltText:(id)a3;
- (BOOL)getListSubtitle:(id)a3;
- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4;
- (id)mediaTrackObject;
@end

@implementation WFiTunesProductContentItem

+ (id)outputTypes
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___WFiTunesProductContentItem;
  v2 = objc_msgSendSuper2(&v6, sel_outputTypes);
  v3 = [MEMORY[0x1E6996ED0] typeWithClassName:@"MPMediaItem" frameworkName:@"MediaPlayer" location:2];
  v4 = [v2 orderedSetByAddingObject:v3];

  return v4;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)stringConversionBehavior
{
  v2 = MEMORY[0x1E6996D70];
  v3 = WFLocalizedString(@"Name and Store URL");
  v4 = [v2 coercingToStringWithDescription:v3];

  return v4;
}

+ (id)propertyBuilders
{
  v43[10] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6996D90];
  v42 = WFLocalizedContentPropertyNameMarker(@"Artist");
  v41 = [v2 block:&__block_literal_global_5420 name:v42 class:objc_opt_class()];
  v43[0] = v41;
  v3 = MEMORY[0x1E6996D90];
  v40 = WFLocalizedContentPropertyNameMarker(@"Price");
  v39 = [v3 keyPath:@"object.price" name:v40 class:objc_opt_class()];
  v43[1] = v39;
  v4 = MEMORY[0x1E6996D90];
  v38 = WFLocalizedContentPropertyNameMarker(@"Currency Code");
  v37 = [v4 keyPath:@"object.currencyCode" name:v38 class:objc_opt_class()];
  v43[2] = v37;
  v5 = MEMORY[0x1E6996D90];
  v36 = WFLocalizedContentPropertyNameMarker(@"Formatted Price");
  v35 = [v5 keyPath:@"object.formattedPrice" name:v36 class:objc_opt_class()];
  v43[3] = v35;
  v6 = MEMORY[0x1E6996D90];
  v34 = WFLocalizedContentPropertyNameMarker(@"Release Date");
  v33 = [v6 keyPath:@"object.releaseDate" name:v34 class:objc_opt_class()];
  v43[4] = v33;
  v7 = MEMORY[0x1E6996D90];
  v32 = WFLocalizedContentPropertyNameMarker(@"Genre");
  v31 = [v7 keyPath:@"mediaTrackObject.genre" name:v32 class:objc_opt_class()];
  v43[5] = v31;
  v8 = MEMORY[0x1E6996D90];
  v30 = WFLocalizedContentPropertyNameMarker(@"Duration");
  v29 = [v8 keyPath:@"mediaTrackObject.duration" name:v30 class:objc_opt_class()];
  v43[6] = v29;
  v9 = MEMORY[0x1E6996D90];
  v27 = WFLocalizedContentPropertyNameMarker(@"Streamable");
  v28 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v26 = [v9 keyPath:@"mediaTrackObject.streamable" name:v27 class:objc_opt_class()];
  v25 = WFLocalizedContentPropertyNameMarker(@"Is Streamable");
  v10 = [v26 displayName:v25];
  v11 = WFLocalizedContentPropertyNameMarker(@"Is Not Streamable");
  v12 = [v10 negativeName:v11];
  v43[7] = v12;
  v13 = MEMORY[0x1E6996D90];
  v14 = WFLocalizedContentPropertyNameMarker(@"Is Explicit");
  v15 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v16 = [v13 keyPath:@"mediaTrackObject.explicit" name:v14 class:objc_opt_class()];
  v17 = WFLocalizedContentPropertyNameMarker(@"Is Not Explicit");
  v18 = [v16 negativeName:v17];
  v43[8] = v18;
  v19 = MEMORY[0x1E6996D90];
  v20 = WFLocalizedContentPropertyNameMarker(@"Description");
  v21 = [v19 keyPath:@"object.descriptionText" name:v20 class:objc_opt_class()];
  v43[9] = v21;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:10];

  v22 = *MEMORY[0x1E69E9840];

  return v24;
}

void __46__WFiTunesProductContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a2 object];
  v7 = objc_opt_new();
  v8 = [v6 artistID];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__WFiTunesProductContentItem_propertyBuilders__block_invoke_2;
  v12[3] = &unk_1E837F588;
  v13 = v5;
  v10 = v5;
  [v7 lookupMediaWithIdentifiers:v9 countryCode:0 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __46__WFiTunesProductContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__WFiTunesProductContentItem_getListThumbnail_forSize___block_invoke;
    v10[3] = &unk_1E837D710;
    v11 = v7;
    [(WFiTunesObjectContentItem *)self getArtworkForSize:v10 completionHandler:width, height];
  }

  return 1;
}

void __55__WFiTunesProductContentItem_getListThumbnail_forSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__WFiTunesProductContentItem_getListThumbnail_forSize___block_invoke_2;
  v6[3] = &unk_1E837E1F8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (BOOL)getListAltText:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(WFiTunesProductContentItem *)self storeObject];
    v7 = [v6 formattedPrice];
    (*(a3 + 2))(v5, v7);
  }

  return 1;
}

- (BOOL)getListSubtitle:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(WFiTunesProductContentItem *)self storeObject];
    v7 = [v6 artistName];
    (*(a3 + 2))(v5, v7);
  }

  return 1;
}

- (id)mediaTrackObject
{
  v2 = [(WFiTunesObjectContentItem *)self object];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end