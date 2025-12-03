@interface PKAddressFieldPickerViewHosting
+ (id)loadViewControllerWithAllowedValues:(id)values selectedValue:(id)value isValid:(BOOL)valid onCommit:(id)commit;
- (_TtC9PassKitUI31PKAddressFieldPickerViewHosting)init;
@end

@implementation PKAddressFieldPickerViewHosting

+ (id)loadViewControllerWithAllowedValues:(id)values selectedValue:(id)value isValid:(BOOL)valid onCommit:(id)commit
{
  v7 = _Block_copy(commit);
  sub_1BD7F276C();
  sub_1BE052744();
  *(swift_allocObject() + 16) = v7;
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54680));
  valueCopy = value;
  v10 = sub_1BE04F894();

  return v10;
}

- (_TtC9PassKitUI31PKAddressFieldPickerViewHosting)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PKAddressFieldPickerViewHosting();
  return [(PKAddressFieldPickerViewHosting *)&v3 init];
}

@end