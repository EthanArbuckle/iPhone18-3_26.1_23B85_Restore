@interface PXPhotoLibraryProcessingProgressReport
+ (id)_highlightEnrichmentProgressDescription:(id *)description;
+ (id)_processingProgressDescription:(id *)description;
+ (id)_syndicationProgressDescription:(id *)description;
+ (id)highlightEnrichmentProgressImageWithProgressReport:(id *)report;
+ (id)syndicationProgressImageWithProgressReport:(id *)report;
+ (void)requestBriefDescriptionForLibrary:(id)library resultBlock:(id)block;
+ (void)requestFullDescriptionForLibrary:(id)library resultBlock:(id)block;
@end

@implementation PXPhotoLibraryProcessingProgressReport

+ (id)syndicationProgressImageWithProgressReport:(id *)report
{
  v4 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{150.0, 40.0}];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__PXPhotoLibraryProcessingProgressReport_syndicationProgressImageWithProgressReport___block_invoke;
  v17[3] = &__block_descriptor_192_e40_v16__0__UIGraphicsImageRendererContext_8l;
  v5 = *&report->var4;
  v6 = *&report->var6;
  v7 = *&report->var0;
  v20 = *&report->var2;
  v21 = v5;
  v8 = *&report->var8;
  v22 = v6;
  v23 = v8;
  v18 = xmmword_1A5313D30;
  v19 = v7;
  __asm { FMOV            V1.2D, #4.0 }

  v24 = xmmword_1A5313D40;
  v25 = _Q1;
  __asm { FMOV            V1.2D, #2.0 }

  v26 = xmmword_1A5313D50;
  v27 = _Q1;
  v15 = [v4 imageWithActions:v17];

  return v15;
}

void __85__PXPhotoLibraryProcessingProgressReport_syndicationProgressImageWithProgressReport___block_invoke(uint64_t a1, void *a2)
{
  v39 = a2;
  v3 = [v39 CGContext];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40) * *(a1 + 56) / *(a1 + 48);
  v6 = [MEMORY[0x1E69DC888] systemGrayColor];
  CGContextSetFillColorWithColor(v3, [v6 CGColor]);

  [v39 fillRect:{v4, *(a1 + 128), v5, *(a1 + 136)}];
  v7 = v4 + v5;
  v8 = *(a1 + 40) * *(a1 + 64) / *(a1 + 48);
  v9 = [MEMORY[0x1E69DC888] systemGray2Color];
  CGContextSetFillColorWithColor(v3, [v9 CGColor]);

  [v39 fillRect:{v7, *(a1 + 128), v8, *(a1 + 136)}];
  v10 = v7 + v8;
  v11 = *(a1 + 40) * *(a1 + 72) / *(a1 + 48);
  v12 = [MEMORY[0x1E69DC888] systemGray2Color];
  CGContextSetFillColorWithColor(v3, [v12 CGColor]);

  [v39 fillRect:{v10, *(a1 + 128), v11, *(a1 + 136)}];
  v13 = v10 + v11;
  v14 = *(a1 + 40) * *(a1 + 80) / *(a1 + 48);
  v15 = [MEMORY[0x1E69DC888] systemGray2Color];
  CGContextSetFillColorWithColor(v3, [v15 CGColor]);

  [v39 fillRect:{v13, *(a1 + 128), v14, *(a1 + 136)}];
  v16 = v13 + v14;
  v17 = *(a1 + 40) * *(a1 + 88) / *(a1 + 48);
  v18 = [MEMORY[0x1E69DC888] systemGray3Color];
  CGContextSetFillColorWithColor(v3, [v18 CGColor]);

  [v39 fillRect:{v16, *(a1 + 128), v17, *(a1 + 136)}];
  v19 = v16 + v17;
  v20 = *(a1 + 40) * *(a1 + 96) / *(a1 + 48);
  v21 = [MEMORY[0x1E69DC888] systemGray4Color];
  CGContextSetFillColorWithColor(v3, [v21 CGColor]);

  [v39 fillRect:{v19, *(a1 + 128), v20, *(a1 + 136)}];
  v22 = v19 + v20;
  v23 = *(a1 + 40) * *(a1 + 104) / *(a1 + 48);
  v24 = [MEMORY[0x1E69DC888] systemRedColor];
  CGContextSetFillColorWithColor(v3, [v24 CGColor]);

  [v39 fillRect:{v22, *(a1 + 128), v23, *(a1 + 136)}];
  v25 = v22 + v23;
  v26 = *(a1 + 40) * *(a1 + 112) / *(a1 + 48);
  v27 = [MEMORY[0x1E69DC888] systemTealColor];
  CGContextSetFillColorWithColor(v3, [v27 CGColor]);

  [v39 fillRect:{v25, *(a1 + 128), v26, *(a1 + 136)}];
  v28 = v25 + v26;
  v29 = *(a1 + 40) * *(a1 + 120) / *(a1 + 48);
  v30 = [MEMORY[0x1E69DC888] systemGreenColor];
  CGContextSetFillColorWithColor(v3, [v30 CGColor]);

  [v39 fillRect:{v28, *(a1 + 128), v29, *(a1 + 136)}];
  v31 = [MEMORY[0x1E69DC888] grayColor];
  CGContextSetStrokeColorWithColor(v3, [v31 CGColor]);

  Mutable = CGPathCreateMutable();
  x = *(a1 + 144);
  y = *(a1 + 152);
  width = *(a1 + 160) + x * -2.0;
  height = *(a1 + 168) + y * -2.0;
  v37 = 1;
  do
  {
    v38 = v37;
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    CGPathAddRoundedRect(Mutable, 0, v41, *(a1 + 176) + 1.0, *(a1 + 184) + 1.0);
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    v43 = CGRectInset(v42, 0.5, 0.5);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    v37 = 0;
  }

  while ((v38 & 1) != 0);
  CGContextBeginPath(v3);
  CGContextAddPath(v3, Mutable);
  CGContextClosePath(v3);
  CGContextStrokePath(v3);
  CGPathRelease(Mutable);
}

+ (id)highlightEnrichmentProgressImageWithProgressReport:(id *)report
{
  v5 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{150.0, 40.0}];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v6 = *&report->var0;
  v7 = *&report->var2;
  v19 = xmmword_1A5313D30;
  v20 = v6;
  v8 = *&report->var4;
  v9 = *&report->var6;
  v21 = v7;
  v22 = v8;
  v18[2] = __93__PXPhotoLibraryProcessingProgressReport_highlightEnrichmentProgressImageWithProgressReport___block_invoke;
  v18[3] = &__block_descriptor_184_e40_v16__0__UIGraphicsImageRendererContext_8l;
  v18[4] = self;
  v23 = v9;
  v24 = xmmword_1A5313D40;
  __asm { FMOV            V0.2D, #4.0 }

  v25 = _Q0;
  v26 = xmmword_1A5313D50;
  __asm { FMOV            V0.2D, #2.0 }

  v27 = _Q0;
  v16 = [v5 imageWithActions:v18];

  return v16;
}

void __93__PXPhotoLibraryProcessingProgressReport_highlightEnrichmentProgressImageWithProgressReport___block_invoke(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = [v27 CGContext];
  v4 = [*(a1 + 32) colorForNotEnriched];
  CGContextSetFillColorWithColor(v3, [v4 CGColor]);

  v5 = *(a1 + 40);
  v6 = *(a1 + 48) * *(a1 + 96) / *(a1 + 56);
  [v27 fillRect:{v5, *(a1 + 120), v6, *(a1 + 128)}];
  v7 = v5 + v6;
  v8 = *(a1 + 48) * *(a1 + 88) / *(a1 + 56);
  v9 = [*(a1 + 32) colorForDefault];
  CGContextSetFillColorWithColor(v3, [v9 CGColor]);

  [v27 fillRect:{v7, *(a1 + 120), v8, *(a1 + 128)}];
  v10 = v7 + v8;
  v11 = *(a1 + 48) * *(a1 + 80) / *(a1 + 56);
  v12 = [*(a1 + 32) colorForPartial];
  CGContextSetFillColorWithColor(v3, [v12 CGColor]);

  [v27 fillRect:{v10, *(a1 + 120), v11, *(a1 + 128)}];
  v13 = v10 + v11;
  v14 = *(a1 + 48) * *(a1 + 72) / *(a1 + 56);
  v15 = [*(a1 + 32) colorForSceneComplete];
  CGContextSetFillColorWithColor(v3, [v15 CGColor]);

  [v27 fillRect:{v13, *(a1 + 120), v14, *(a1 + 128)}];
  v16 = v13 + v14;
  v17 = *(a1 + 48) * *(a1 + 64) / *(a1 + 56);
  v18 = [*(a1 + 32) colorForComplete];
  CGContextSetFillColorWithColor(v3, [v18 CGColor]);

  [v27 fillRect:{v16, *(a1 + 120), v17, *(a1 + 128)}];
  v19 = [MEMORY[0x1E69DC888] grayColor];
  CGContextSetStrokeColorWithColor(v3, [v19 CGColor]);

  Mutable = CGPathCreateMutable();
  x = *(a1 + 136);
  y = *(a1 + 144);
  width = *(a1 + 152) + x * -2.0;
  height = *(a1 + 160) + y * -2.0;
  v25 = 1;
  do
  {
    v26 = v25;
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    CGPathAddRoundedRect(Mutable, 0, v29, *(a1 + 168) + 1.0, *(a1 + 176) + 1.0);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v31 = CGRectInset(v30, 0.5, 0.5);
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
    v25 = 0;
  }

  while ((v26 & 1) != 0);
  CGContextBeginPath(v3);
  CGContextAddPath(v3, Mutable);
  CGContextClosePath(v3);
  CGContextStrokePath(v3);
  CGPathRelease(Mutable);
}

+ (id)_highlightEnrichmentProgressDescription:(id *)description
{
  v52[1] = *MEMORY[0x1E69E9840];
  v5 = 0x1E696A000uLL;
  if (description->var0 - description->var1 < 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\t%2.1f%%\n", @"Highlights:", *&description->var6, v39, v40];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\t%2.1f%% (%lu/%lu pending)\n", @"Highlights:", *&description->var6, description->var0 - description->var1, description->var0];
  }
  v42 = ;
  v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v42];
  v41 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  [v6 appendAttributedString:?];
  v7 = MEMORY[0x1E69DB650];
  if (description->var5 >= 1)
  {
    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\tNot Enriched: %lu\n", description->var5];
    v51 = *v7;
    colorForNotEnriched = [self colorForNotEnriched];
    v52[0] = colorForNotEnriched;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v12 = [v8 initWithString:v9 attributes:v11];

    v5 = 0x1E696A000uLL;
    [v6 appendAttributedString:v12];
  }

  if (description->var4 >= 1)
  {
    v13 = objc_alloc(MEMORY[0x1E696AAB0]);
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\tMetadata Only: %lu\n", description->var4];
    v49 = *v7;
    colorForDefault = [self colorForDefault];
    v50 = colorForDefault;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v17 = [v13 initWithString:v14 attributes:v16];

    v5 = 0x1E696A000uLL;
    [v6 appendAttributedString:v17];
  }

  if (description->var3 >= 1)
  {
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\tMetadata and Score: %lu\n", description->var3];
    v47 = *v7;
    colorForPartial = [self colorForPartial];
    v48 = colorForPartial;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v22 = [v18 initWithString:v19 attributes:v21];

    v5 = 0x1E696A000uLL;
    [v6 appendAttributedString:v22];
  }

  if (description->var2 <= 0)
  {
    v25 = *v7;
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x1E696AAB0]);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\tMetadata and Scenes: %lu\n", description->var2];
    v25 = *v7;
    v45 = v25;
    colorForSceneComplete = [self colorForSceneComplete];
    v46 = colorForSceneComplete;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v28 = [v23 initWithString:v24 attributes:v27];

    v5 = 0x1E696A000;
    [v6 appendAttributedString:v28];
  }

  v29 = objc_alloc(MEMORY[0x1E696AAB0]);
  [*(v5 + 3776) stringWithFormat:@"\tComplete: %lu\n", description->var1];
  v31 = v30 = v5;
  v43 = v25;
  colorForComplete = [self colorForComplete];
  v44 = colorForComplete;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v34 = [v29 initWithString:v31 attributes:v33];

  [v6 appendAttributedString:v34];
  v35 = objc_alloc(MEMORY[0x1E696AAB0]);
  v36 = [*(v30 + 3776) stringWithFormat:@"\tTotal: %lu\n", description->var0];
  v37 = [v35 initWithString:v36];

  [v6 appendAttributedString:v37];

  return v6;
}

+ (id)_syndicationProgressDescription:(id *)description
{
  v4 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:@"Syndication Summary:\n"];
  aBlock = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __74__PXPhotoLibraryProcessingProgressReport__syndicationProgressDescription___block_invoke;
  v33 = &unk_1E773F130;
  v5 = v4;
  v34 = v5;
  v6 = _Block_copy(&aBlock);
  var1 = description->var1;
  systemDarkGrayColor = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  v6[2](v6, -6, var1, systemDarkGrayColor);

  var2 = description->var2;
  systemDarkGrayColor2 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  v6[2](v6, -5, var2, systemDarkGrayColor2);

  var3 = description->var3;
  systemDarkGrayColor3 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  v6[2](v6, -4, var3, systemDarkGrayColor3);

  var4 = description->var4;
  systemDarkGrayColor4 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  v6[2](v6, -3, var4, systemDarkGrayColor4);

  var5 = description->var5;
  systemDarkGrayColor5 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  v6[2](v6, -2, var5, systemDarkGrayColor5);

  var6 = description->var6;
  systemDarkGrayColor6 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  v6[2](v6, -1, var6, systemDarkGrayColor6);

  var7 = description->var7;
  systemDarkRedColor = [MEMORY[0x1E69DC888] systemDarkRedColor];
  v6[2](v6, 0, var7, systemDarkRedColor);

  var8 = description->var8;
  systemDarkTealColor = [MEMORY[0x1E69DC888] systemDarkTealColor];
  v6[2](v6, 1, var8, systemDarkTealColor);

  var9 = description->var9;
  systemDarkGreenColor = [MEMORY[0x1E69DC888] systemDarkGreenColor];
  v6[2](v6, 2, var9, systemDarkGreenColor);

  v25 = objc_alloc(MEMORY[0x1E696AAB0]);
  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\tTotal: %lu\n", description->var0, aBlock, v31, v32, v33];
  v27 = [v25 initWithString:v26];

  [v5 appendAttributedString:v27];
  v28 = v5;

  return v5;
}

void __74__PXPhotoLibraryProcessingProgressReport__syndicationProgressDescription___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AAB0];
  v7 = a4;
  v8 = [v6 alloc];
  v9 = MEMORY[0x1E696AEC0];
  v10 = PHAssetSyndicationEligibilityShortDescription();
  v11 = [v9 stringWithFormat:@"\t%@: %lu\n", v10, a3];
  v14 = *MEMORY[0x1E69DB650];
  v15[0] = v7;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v13 = [v8 initWithString:v11 attributes:v12];

  [*(a1 + 32) appendAttributedString:v13];
}

+ (id)_processingProgressDescription:(id *)description
{
  if (description->var0 - description->var2 < 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\t%2.1f%%\n", @"Scenes 🏞:", *&description->var6, v16, v20];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\t%2.1f%% (%lu/%lu pending)\n", @"Scenes 🏞:", *&description->var6, description->var0 - description->var2, description->var0];
  }
  v4 = ;
  if (description->var0 - description->var3 < 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\t%2.1f%%\n", @"Faces 🧑:", *&description->var7, v17, v21];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\t%2.1f%% (%lu/%lu pending)\n", @"Faces 🧑:", *&description->var7, description->var0 - description->var3, description->var0];
  }
  v5 = ;
  if (description->var0 - description->var4 < 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\t%2.1f%%\n", @"MediaAnalysis (image):", *&description->var8, v18, v22];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\t%2.1f%% (%lu/%lu pending)\n", @"MediaAnalysis (image):", *&description->var8, description->var0 - description->var4, description->var0];
  }
  v6 = ;
  var1 = description->var1;
  if (var1 - description->var5 < 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\t%2.1f%%\n", @"MediaAnalysis (video):", *&description->var9, v19, v23];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\t%2.1f%% (%lu/%lu pending)\n", @"MediaAnalysis (video):", *&description->var9, var1 - description->var5, var1];
  }
  v8 = ;
  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v10 = [v9 mutableCopy];
  v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];
  [v10 appendAttributedString:v11];

  [v10 appendAttributedString:v9];
  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
  [v10 appendAttributedString:v12];

  [v10 appendAttributedString:v9];
  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6];
  [v10 appendAttributedString:v13];

  [v10 appendAttributedString:v9];
  v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];
  [v10 appendAttributedString:v14];

  [v10 appendAttributedString:v9];

  return v10;
}

+ (void)requestFullDescriptionForLibrary:(id)library resultBlock:(id)block
{
  libraryCopy = library;
  blockCopy = block;
  v8 = MEMORY[0x1E69C1560];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__PXPhotoLibraryProcessingProgressReport_requestFullDescriptionForLibrary_resultBlock___block_invoke;
  v11[3] = &unk_1E773F108;
  v13 = blockCopy;
  selfCopy = self;
  v12 = libraryCopy;
  v9 = libraryCopy;
  v10 = blockCopy;
  [v8 requestProcessingProgressForLibrary:v9 result:v11];
}

void __87__PXPhotoLibraryProcessingProgressReport_requestFullDescriptionForLibrary_resultBlock___block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 48);
  v4 = a2[3];
  v24[2] = a2[2];
  v24[3] = v4;
  v24[4] = a2[4];
  v5 = a2[1];
  v24[0] = *a2;
  v24[1] = v5;
  v6 = [v3 _processingProgressDescription:v24];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PXPhotoLibraryProcessingProgressReport_requestFullDescriptionForLibrary_resultBlock___block_invoke_2;
  aBlock[3] = &unk_1E773F090;
  v7 = v6;
  v22 = v7;
  v23 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = [*(a1 + 32) wellKnownPhotoLibraryIdentifier];
  v10 = MEMORY[0x1E69C1560];
  v11 = *(a1 + 32);
  if (v9 == 3)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __87__PXPhotoLibraryProcessingProgressReport_requestFullDescriptionForLibrary_resultBlock___block_invoke_4;
    v19[3] = &unk_1E773F0B8;
    v12 = *(a1 + 48);
    v13 = v20;
    v20[0] = v8;
    v20[1] = v12;
    v14 = v8;
    [v10 requestSyndicationProgressForLibrary:v11 result:v19];
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __87__PXPhotoLibraryProcessingProgressReport_requestFullDescriptionForLibrary_resultBlock___block_invoke_5;
    v17[3] = &unk_1E773F0E0;
    v15 = *(a1 + 48);
    v13 = v18;
    v18[0] = v8;
    v18[1] = v15;
    v16 = v8;
    [v10 requestHighlightEnrichmentProgressForLibrary:v11 result:v17];
  }
}

void __87__PXPhotoLibraryProcessingProgressReport_requestFullDescriptionForLibrary_resultBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD40];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 appendAttributedString:*(a1 + 32)];
  [v5 appendAttributedString:v4];

  v6 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v7 = [v6 mutableCopy];

  [v7 setAlignment:0];
  [v5 addAttribute:*MEMORY[0x1E69DB688] value:v7 range:{0, objc_msgSend(v5, "length")}];
  v8 = *MEMORY[0x1E69DB648];
  v9 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:14.0];
  [v5 addAttribute:v8 value:v9 range:{0, objc_msgSend(v5, "length")}];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__PXPhotoLibraryProcessingProgressReport_requestFullDescriptionForLibrary_resultBlock___block_invoke_3;
  v12[3] = &unk_1E774C2F0;
  v10 = *(a1 + 40);
  v13 = v5;
  v14 = v10;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __87__PXPhotoLibraryProcessingProgressReport_requestFullDescriptionForLibrary_resultBlock___block_invoke_4(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 40);
  v4 = a2[3];
  v7[2] = a2[2];
  v7[3] = v4;
  v7[4] = a2[4];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v6 = [v3 _syndicationProgressDescription:v7];
  (*(*(a1 + 32) + 16))();
}

void __87__PXPhotoLibraryProcessingProgressReport_requestFullDescriptionForLibrary_resultBlock___block_invoke_5(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 40);
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  v6 = [v3 _highlightEnrichmentProgressDescription:v7];
  (*(*(a1 + 32) + 16))();
}

+ (void)requestBriefDescriptionForLibrary:(id)library resultBlock:(id)block
{
  libraryCopy = library;
  blockCopy = block;
  v8 = MEMORY[0x1E69C1560];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PXPhotoLibraryProcessingProgressReport_requestBriefDescriptionForLibrary_resultBlock___block_invoke;
  v11[3] = &unk_1E773F108;
  v13 = blockCopy;
  selfCopy = self;
  v12 = libraryCopy;
  v9 = blockCopy;
  v10 = libraryCopy;
  [v8 requestProcessingProgressForLibrary:v10 result:v11];
}

void __88__PXPhotoLibraryProcessingProgressReport_requestBriefDescriptionForLibrary_resultBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"🏞: %2.0f%%  🧑: %2.0f%%", *(a2 + 48), *(a2 + 56)];
  v4 = [*(a1 + 32) wellKnownPhotoLibraryIdentifier];
  v5 = MEMORY[0x1E69C1560];
  v6 = *(a1 + 32);
  if (v4 == 3)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __88__PXPhotoLibraryProcessingProgressReport_requestBriefDescriptionForLibrary_resultBlock___block_invoke_2;
    v18[3] = &unk_1E773F040;
    v7 = &v20;
    v13 = *(a1 + 40);
    v8 = v13;
    v20 = v13;
    v9 = &v19;
    v19 = v3;
    v10 = v3;
    [v5 requestSyndicationProgressForLibrary:v6 result:v18];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __88__PXPhotoLibraryProcessingProgressReport_requestBriefDescriptionForLibrary_resultBlock___block_invoke_4;
    v15[3] = &unk_1E773F068;
    v7 = &v17;
    v14 = *(a1 + 40);
    v11 = v14;
    v17 = v14;
    v9 = &v16;
    v16 = v3;
    v12 = v3;
    [v5 requestHighlightEnrichmentProgressForLibrary:v6 result:v15];
  }
}

void __88__PXPhotoLibraryProcessingProgressReport_requestBriefDescriptionForLibrary_resultBlock___block_invoke_2(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 48);
  v4 = a2[3];
  v12[2] = a2[2];
  v12[3] = v4;
  v12[4] = a2[4];
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = [v3 syndicationProgressImageWithProgressReport:v12];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PXPhotoLibraryProcessingProgressReport_requestBriefDescriptionForLibrary_resultBlock___block_invoke_3;
  block[3] = &unk_1E774A0E0;
  v11 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __88__PXPhotoLibraryProcessingProgressReport_requestBriefDescriptionForLibrary_resultBlock___block_invoke_4(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 48);
  v4 = a2[1];
  v12[0] = *a2;
  v12[1] = v4;
  v5 = a2[3];
  v12[2] = a2[2];
  v12[3] = v5;
  v6 = [v3 highlightEnrichmentProgressImageWithProgressReport:v12];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PXPhotoLibraryProcessingProgressReport_requestBriefDescriptionForLibrary_resultBlock___block_invoke_5;
  block[3] = &unk_1E774A0E0;
  v11 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end