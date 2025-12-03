@interface SXUnitConverterFactory
- (id)createUnitConverterWithComponentWidth:(double)width parentWidth:(double)parentWidth layoutOptions:(id)options;
@end

@implementation SXUnitConverterFactory

- (id)createUnitConverterWithComponentWidth:(double)width parentWidth:(double)parentWidth layoutOptions:(id)options
{
  optionsCopy = options;
  v8 = [SXUnitConverter alloc];
  columnLayout = [optionsCopy columnLayout];
  gutter = [columnLayout gutter];
  columnLayout2 = [optionsCopy columnLayout];
  [columnLayout2 leftMargin];
  v13 = v12;
  columnLayout3 = [optionsCopy columnLayout];
  [columnLayout3 viewportSize];
  v16 = v15;
  v18 = v17;
  [optionsCopy contentScaleFactor];
  v20 = v19;

  v21 = [(SXUnitConverter *)v8 initWithComponentWidth:width parentWidth:parentWidth documentGutter:gutter documentMargin:v13 viewportSize:v16 contentScaleFactor:v18, v20];

  return v21;
}

@end