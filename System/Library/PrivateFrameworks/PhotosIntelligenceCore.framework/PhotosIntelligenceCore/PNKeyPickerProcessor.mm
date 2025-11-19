@interface PNKeyPickerProcessor
+ (id)keyPickFromAssets:(id)a3 options:(id)a4;
@end

@implementation PNKeyPickerProcessor

+ (id)keyPickFromAssets:(id)a3 options:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8D78, &qword_25E63A3D0);
  v5 = sub_25E6359D0();
  v6 = a4;
  v7 = static PNKeyPickerProcessor.keyPick(from:options:)(v5, v6);

  return v7;
}

@end