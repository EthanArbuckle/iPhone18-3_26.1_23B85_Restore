@interface ParameterValuePickerModel
- (void)_reload;
- (void)parameterAttributesDidChange:(id)change;
@end

@implementation ParameterValuePickerModel

- (void)_reload
{
  selfCopy = self;
  sub_274469440();
}

- (void)parameterAttributesDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_27446CC28(changeCopy);
}

@end