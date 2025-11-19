@interface PXLabelSpec(Memories)
+ (id)_memoriesLabelSpecForContext:()Memories;
+ (id)memoriesLabelSpecForLabelKind:()Memories tileKind:featureSpec:boundedByRect:;
+ (id)memoriesLabelSpecForLabelKind:()Memories tileKind:gadgetSpec:boundedByRect:;
+ (id)memoriesLabelSpecForLabelKind:()Memories tileKind:specSet:variant:boundedBy:shouldScale:;
+ (void)memoriesLabelSpecForLabelKind:()Memories descriptor:featureSpec:;
@end

@implementation PXLabelSpec(Memories)

+ (id)_memoriesLabelSpecForContext:()Memories
{
  v4 = +[PXKitSettings sharedInstance];
  v5 = objc_alloc_init(off_1E7721788);
  v6 = [PXMemoriesFontsSpec textAttributesForFontSet:2 specSet:*(a3 + 2) labelKind:*a3 variant:*(a3 + 3) size:*(a3 + 64) shouldScale:a3[6], a3[7]];
  [v5 setTextAttributes:v6];

  v7 = [PXMemoriesFontsSpec textAttributesForFontSet:1 specSet:*(a3 + 2) labelKind:*a3 variant:*(a3 + 3) size:*(a3 + 64) shouldScale:a3[6], a3[7]];
  [v5 setFallbackTextAttributes:v7];

  v8 = [MEMORY[0x1E69DC888] whiteColor];
  [v5 setTextColor:v8];

  [v5 setTextAlignment:{objc_msgSend(MEMORY[0x1E695DF58], "px_currentLeadingTextAlignment")}];
  [v5 setVerticalAlignment:1];
  [v5 setCapitalization:{+[PXMemoriesFontsSpec capitalizationStyleForLabelKind:](PXMemoriesFontsSpec, "capitalizationStyleForLabelKind:", *a3)}];
  [v5 setNumberOfLines:{+[PXMemoriesFontsSpec numberOfLinesForLabelKind:](PXMemoriesFontsSpec, "numberOfLinesForLabelKind:", *a3)}];
  [v5 setAdjustsFontSizeToFitWidth:{objc_msgSend(v4, "defaultTextAutoscalingEnabled")}];
  [v4 defaultTextMinimumScaleFactor];
  [v5 setMinimumScaleFactor:?];
  [v5 setAllowTruncation:{objc_msgSend(v4, "defaultTextTruncationEnabled")}];
  [v4 defaultTruncatedTextMinimumScaleFactor];
  [v5 setMinimumTruncatedScaleFactor:?];

  return v5;
}

+ (id)memoriesLabelSpecForLabelKind:()Memories tileKind:gadgetSpec:boundedByRect:
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  _LabelContextMakeGadgetSpec(a7, a8, a9, &v13, a1, a2, a3, a4);
  v11[2] = v15;
  v11[3] = v16;
  v12 = v17;
  v11[0] = v13;
  v11[1] = v14;
  v9 = [off_1E7721788 _memoriesLabelSpecForContext:v11];

  return v9;
}

+ (id)memoriesLabelSpecForLabelKind:()Memories tileKind:featureSpec:boundedByRect:
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  _LabelContextMakeFeatureSpec(a7, a8, a9, &v13, a1, a2, a3, a4);
  v11[2] = v15;
  v11[3] = v16;
  v12 = v17;
  v11[0] = v13;
  v11[1] = v14;
  v9 = [off_1E7721788 _memoriesLabelSpecForContext:v11];

  return v9;
}

+ (void)memoriesLabelSpecForLabelKind:()Memories descriptor:featureSpec:
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v5 = a4[1];
  v6 = *a4;
  v7 = v5;
  _LabelContextMakeDescriptor(a3, a5, v8);
}

+ (id)memoriesLabelSpecForLabelKind:()Memories tileKind:specSet:variant:boundedBy:shouldScale:
{
  v13[0] = a7;
  v13[1] = a8;
  v13[2] = a9;
  v13[3] = a10;
  *&v13[4] = a1;
  *&v13[5] = a2;
  *&v13[6] = a3;
  *&v13[7] = a4;
  v13[8] = a11;
  v11 = [off_1E7721788 _memoriesLabelSpecForContext:v13];

  return v11;
}

@end