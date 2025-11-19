@interface SXUnitConverterFactory
- (id)createUnitConverterWithComponentWidth:(double)a3 parentWidth:(double)a4 layoutOptions:(id)a5;
@end

@implementation SXUnitConverterFactory

- (id)createUnitConverterWithComponentWidth:(double)a3 parentWidth:(double)a4 layoutOptions:(id)a5
{
  v7 = a5;
  v8 = [SXUnitConverter alloc];
  v9 = [v7 columnLayout];
  v10 = [v9 gutter];
  v11 = [v7 columnLayout];
  [v11 leftMargin];
  v13 = v12;
  v14 = [v7 columnLayout];
  [v14 viewportSize];
  v16 = v15;
  v18 = v17;
  [v7 contentScaleFactor];
  v20 = v19;

  v21 = [(SXUnitConverter *)v8 initWithComponentWidth:a3 parentWidth:a4 documentGutter:v10 documentMargin:v13 viewportSize:v16 contentScaleFactor:v18, v20];

  return v21;
}

@end