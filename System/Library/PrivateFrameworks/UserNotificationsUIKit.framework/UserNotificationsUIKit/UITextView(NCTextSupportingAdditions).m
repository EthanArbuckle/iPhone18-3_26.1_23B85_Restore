@interface UITextView(NCTextSupportingAdditions)
- (double)unui_baselineOffsetForFirstGlyph;
- (double)unui_drawingHeightWithNumberOfLines:()NCTextSupportingAdditions;
- (double)unui_measuringHeightWithNumberOfLines:()NCTextSupportingAdditions;
- (uint64_t)nc_numberOfLines;
- (uint64_t)unui_numberOfLinesInFrame:()NCTextSupportingAdditions maximum:drawingContext:;
- (void)nc_setNumberOfLines:()NCTextSupportingAdditions;
@end

@implementation UITextView(NCTextSupportingAdditions)

- (uint64_t)nc_numberOfLines
{
  v1 = [a1 textContainer];
  v2 = [v1 maximumNumberOfLines];

  return v2;
}

- (void)nc_setNumberOfLines:()NCTextSupportingAdditions
{
  v4 = [a1 textContainer];
  [v4 setMaximumNumberOfLines:a3];
}

- (uint64_t)unui_numberOfLinesInFrame:()NCTextSupportingAdditions maximum:drawingContext:
{
  v14 = a8;
  v15 = [a1 font];
  v16 = [a1 text];
  v17 = [v15 unui_numberOfLinesForText:v16 inFrame:a7 maximum:v14 drawingContext:{a2, a3, a4, a5}];

  return v17;
}

- (double)unui_measuringHeightWithNumberOfLines:()NCTextSupportingAdditions
{
  v5 = [a1 font];
  v6 = [a1 text];
  [v5 unui_measuringHeightForText:v6 withNumberOfLines:a3];
  v8 = v7;

  return v8;
}

- (double)unui_drawingHeightWithNumberOfLines:()NCTextSupportingAdditions
{
  v5 = [a1 font];
  v6 = [a1 text];
  [v5 unui_drawingHeightForText:v6 withNumberOfLines:a3 additionalPadding:1.5];
  v8 = v7;

  return v8;
}

- (double)unui_baselineOffsetForFirstGlyph
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = [a1 textLayoutManager];
  v3 = [v2 documentRange];

  if (([v3 isEmpty] & 1) == 0)
  {
    v4 = objc_alloc(MEMORY[0x277D742D0]);
    v5 = [v3 location];
    v6 = [v4 initWithLocation:v5];

    v7 = [a1 textLayoutManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__UITextView_NCTextSupportingAdditions__unui_baselineOffsetForFirstGlyph__block_invoke;
    v10[3] = &unk_278371C80;
    v10[4] = &v11;
    [v7 enumerateTextSegmentsInRange:v6 type:0 options:0 usingBlock:v10];
  }

  v8 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v8;
}

@end