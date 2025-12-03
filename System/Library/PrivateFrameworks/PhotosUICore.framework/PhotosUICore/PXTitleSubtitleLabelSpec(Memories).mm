@interface PXTitleSubtitleLabelSpec(Memories)
+ (id)memoriesTitleSubtitleSpecForContext:()Memories;
+ (id)memoriesTitleSubtitleSpecForTileKind:()Memories featureSpec:boundedByRect:;
+ (id)memoriesTitleSubtitleSpecForTileKind:()Memories gadgetSpec:boundedByRect:;
+ (id)memoriesTitleSubtitleSpecForTileKind:()Memories viewMode:boundedByRect:;
@end

@implementation PXTitleSubtitleLabelSpec(Memories)

+ (id)memoriesTitleSubtitleSpecForContext:()Memories
{
  v4 = objc_alloc_init(off_1E7721910);
  v5 = [off_1E7721788 memoriesLabelSpecForLabelKind:0 tileKind:*a3 specSet:*(a3 + 1) variant:*(a3 + 2) boundedBy:*(a3 + 88) shouldScale:{a3[3], a3[4], a3[5], a3[6]}];
  [v4 setTitleLabelSpec:v5];

  v6 = [off_1E7721788 memoriesLabelSpecForLabelKind:1 tileKind:*a3 specSet:*(a3 + 1) variant:*(a3 + 2) boundedBy:*(a3 + 88) shouldScale:{a3[3], a3[4], a3[5], a3[6]}];
  [v4 setSubtitleLabelSpec:v6];

  [PXMemoriesFontsSpec baselineDistanceForFontSet:2 specSet:*(a3 + 1) variant:*(a3 + 2) size:*(a3 + 88) shouldScale:a3[5], a3[6]];
  [v4 setDistanceBetweenTitleBaselineAndSubtitleBaseline:?];
  [PXMemoriesFontsSpec paddingForFontSet:2 specSet:*(a3 + 1) variant:*(a3 + 2) layoutMargins:*(a3 + 88) width:*a3 == 4 shouldScale:a3[7] forHeaderTile:a3[8], a3[9], a3[10], a3[5]];
  [v4 setPadding:?];

  return v4;
}

+ (id)memoriesTitleSubtitleSpecForTileKind:()Memories viewMode:boundedByRect:
{
  v14 = a8;
  specSet = [v14 specSet];
  variant = [v14 variant];
  [v14 layoutMargins];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v27[0] = a7;
  v27[1] = specSet;
  v27[2] = variant;
  *&v27[3] = a2;
  *&v27[4] = a3;
  *&v27[5] = a4;
  *&v27[6] = a5;
  v27[7] = v18;
  v27[8] = v20;
  v27[9] = v22;
  v27[10] = v24;
  v27[11] = 1;
  v25 = [self memoriesTitleSubtitleSpecForContext:v27];

  return v25;
}

+ (id)memoriesTitleSubtitleSpecForTileKind:()Memories gadgetSpec:boundedByRect:
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _TitleSubtitleContextMakeGadgetSpec(a7, a8, &v12, a2, a3, a4, a5);
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  v11[5] = v17;
  v11[0] = v12;
  v11[1] = v13;
  v9 = [self memoriesTitleSubtitleSpecForContext:v11];

  return v9;
}

+ (id)memoriesTitleSubtitleSpecForTileKind:()Memories featureSpec:boundedByRect:
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _TitleSubtitleContextMakeFeatureSpec(a7, a8, &v12, a2, a3, a4, a5);
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  v11[5] = v17;
  v11[0] = v12;
  v11[1] = v13;
  v9 = [self memoriesTitleSubtitleSpecForContext:v11];

  return v9;
}

@end