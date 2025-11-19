@interface WFMatchedAppIconColorData
- (WFMatchedAppIconColorData)initWithColors:(id)a3;
@end

@implementation WFMatchedAppIconColorData

- (WFMatchedAppIconColorData)initWithColors:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFMatchedAppIconColorData;
  v6 = [(WFMatchedAppIconColorData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_colors, a3);
    v8 = v7;
  }

  return v7;
}

@end