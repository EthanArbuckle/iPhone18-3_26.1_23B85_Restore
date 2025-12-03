@interface UILabel(NCTextSupportingAdditions)
- (double)unui_drawingHeightWithNumberOfLines:()NCTextSupportingAdditions;
- (double)unui_measuringHeightWithNumberOfLines:()NCTextSupportingAdditions;
- (uint64_t)unui_numberOfLinesInFrame:()NCTextSupportingAdditions maximum:drawingContext:;
@end

@implementation UILabel(NCTextSupportingAdditions)

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
  [font unui_drawingHeightForText:text withNumberOfLines:a3 additionalPadding:2.0];
  v8 = v7;

  return v8;
}

@end