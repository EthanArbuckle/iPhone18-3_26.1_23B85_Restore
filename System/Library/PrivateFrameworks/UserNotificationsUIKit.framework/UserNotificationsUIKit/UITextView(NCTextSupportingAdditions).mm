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
  textContainer = [self textContainer];
  maximumNumberOfLines = [textContainer maximumNumberOfLines];

  return maximumNumberOfLines;
}

- (void)nc_setNumberOfLines:()NCTextSupportingAdditions
{
  textContainer = [self textContainer];
  [textContainer setMaximumNumberOfLines:a3];
}

- (uint64_t)unui_numberOfLinesInFrame:()NCTextSupportingAdditions maximum:drawingContext:
{
  v14 = a8;
  font = [self font];
  text = [self text];
  v17 = [font unui_numberOfLinesForText:text inFrame:a7 maximum:v14 drawingContext:{a2, a3, a4, a5}];

  return v17;
}

- (double)unui_measuringHeightWithNumberOfLines:()NCTextSupportingAdditions
{
  font = [self font];
  text = [self text];
  [font unui_measuringHeightForText:text withNumberOfLines:a3];
  v8 = v7;

  return v8;
}

- (double)unui_drawingHeightWithNumberOfLines:()NCTextSupportingAdditions
{
  font = [self font];
  text = [self text];
  [font unui_drawingHeightForText:text withNumberOfLines:a3 additionalPadding:1.5];
  v8 = v7;

  return v8;
}

- (double)unui_baselineOffsetForFirstGlyph
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  textLayoutManager = [self textLayoutManager];
  documentRange = [textLayoutManager documentRange];

  if (([documentRange isEmpty] & 1) == 0)
  {
    v4 = objc_alloc(MEMORY[0x277D742D0]);
    location = [documentRange location];
    v6 = [v4 initWithLocation:location];

    textLayoutManager2 = [self textLayoutManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__UITextView_NCTextSupportingAdditions__unui_baselineOffsetForFirstGlyph__block_invoke;
    v10[3] = &unk_278371C80;
    v10[4] = &v11;
    [textLayoutManager2 enumerateTextSegmentsInRange:v6 type:0 options:0 usingBlock:v10];
  }

  v8 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v8;
}

@end