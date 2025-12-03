@interface PNKeyPickerProcessor
+ (id)keyPickFromAssets:(id)assets options:(id)options;
@end

@implementation PNKeyPickerProcessor

+ (id)keyPickFromAssets:(id)assets options:(id)options
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8D78, &qword_25E63A3D0);
  v5 = sub_25E6359D0();
  optionsCopy = options;
  v7 = static PNKeyPickerProcessor.keyPick(from:options:)(v5, optionsCopy);

  return v7;
}

@end