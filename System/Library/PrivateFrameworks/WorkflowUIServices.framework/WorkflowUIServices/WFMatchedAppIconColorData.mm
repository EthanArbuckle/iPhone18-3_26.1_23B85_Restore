@interface WFMatchedAppIconColorData
- (WFMatchedAppIconColorData)initWithColors:(id)colors;
@end

@implementation WFMatchedAppIconColorData

- (WFMatchedAppIconColorData)initWithColors:(id)colors
{
  colorsCopy = colors;
  v10.receiver = self;
  v10.super_class = WFMatchedAppIconColorData;
  v6 = [(WFMatchedAppIconColorData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_colors, colors);
    v8 = v7;
  }

  return v7;
}

@end