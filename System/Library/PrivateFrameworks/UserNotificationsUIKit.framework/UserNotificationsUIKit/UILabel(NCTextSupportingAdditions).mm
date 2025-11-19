@interface UILabel(NCTextSupportingAdditions)
- (double)unui_drawingHeightWithNumberOfLines:()NCTextSupportingAdditions;
- (double)unui_measuringHeightWithNumberOfLines:()NCTextSupportingAdditions;
- (uint64_t)unui_numberOfLinesInFrame:()NCTextSupportingAdditions maximum:drawingContext:;
@end

@implementation UILabel(NCTextSupportingAdditions)

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
  [v5 unui_drawingHeightForText:v6 withNumberOfLines:a3 additionalPadding:2.0];
  v8 = v7;

  return v8;
}

@end