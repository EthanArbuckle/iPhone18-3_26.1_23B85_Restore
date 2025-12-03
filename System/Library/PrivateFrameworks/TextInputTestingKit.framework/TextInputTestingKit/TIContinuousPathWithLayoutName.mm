@interface TIContinuousPathWithLayoutName
- (TIContinuousPathWithLayoutName)initWithLayout:(id)layout;
@end

@implementation TIContinuousPathWithLayoutName

- (TIContinuousPathWithLayoutName)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v8.receiver = self;
  v8.super_class = TIContinuousPathWithLayoutName;
  v5 = [(TIContinuousPath *)&v8 init];
  layout = v5->_layout;
  v5->_layout = layoutCopy;

  return v5;
}

@end