@interface ParameterValuePickerModel
- (void)_reload;
- (void)parameterAttributesDidChange:(id)a3;
@end

@implementation ParameterValuePickerModel

- (void)_reload
{
  v2 = self;
  sub_274469440();
}

- (void)parameterAttributesDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27446CC28(v4);
}

@end