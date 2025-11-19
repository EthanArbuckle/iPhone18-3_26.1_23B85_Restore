@interface TIContinuousPathWithLayoutName
- (TIContinuousPathWithLayoutName)initWithLayout:(id)a3;
@end

@implementation TIContinuousPathWithLayoutName

- (TIContinuousPathWithLayoutName)initWithLayout:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TIContinuousPathWithLayoutName;
  v5 = [(TIContinuousPath *)&v8 init];
  layout = v5->_layout;
  v5->_layout = v4;

  return v5;
}

@end