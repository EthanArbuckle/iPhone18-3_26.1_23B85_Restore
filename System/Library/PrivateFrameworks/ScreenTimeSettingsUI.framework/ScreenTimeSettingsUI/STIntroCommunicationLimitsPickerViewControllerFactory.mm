@interface STIntroCommunicationLimitsPickerViewControllerFactory
+ (id)makeViewControllerWithViewModel:(id)a3;
- (_TtC20ScreenTimeSettingsUI53STIntroCommunicationLimitsPickerViewControllerFactory)init;
@end

@implementation STIntroCommunicationLimitsPickerViewControllerFactory

+ (id)makeViewControllerWithViewModel:(id)a3
{
  sub_264CC3E8C();
  MEMORY[0x28223BE20]();
  type metadata accessor for STIntroCommunicationLimitsPickerView(0);
  MEMORY[0x28223BE20]();
  type metadata accessor for STIntroCommunicationLimitsPickerViewModel(0);
  sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel);
  v4 = a3;
  sub_264CC442C();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9038));
  v6 = sub_264CC3D5C();
  sub_264CC3E7C();
  sub_264CC3D4C();

  return v6;
}

- (_TtC20ScreenTimeSettingsUI53STIntroCommunicationLimitsPickerViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for STIntroCommunicationLimitsPickerViewControllerFactory();
  return [(STIntroCommunicationLimitsPickerViewControllerFactory *)&v3 init];
}

@end