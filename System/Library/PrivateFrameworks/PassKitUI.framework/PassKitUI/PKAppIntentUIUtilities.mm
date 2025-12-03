@interface PKAppIntentUIUtilities
+ (void)annotateView:(id)view withEntityForPass:(id)pass;
+ (void)annotateView:(id)view withEntityForTransaction:(id)transaction;
- (PKAppIntentUIUtilities)init;
@end

@implementation PKAppIntentUIUtilities

+ (void)annotateView:(id)view withEntityForPass:(id)pass
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD37128);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-v8];
  if (pass)
  {
    passCopy = pass;
    viewCopy = view;
    sub_1BD02F840(passCopy, 0, 0xF000000000000000, v18);
    v14 = v18[0];
    v15 = v18[1];
    v16 = v18[2];
    v17 = v18[3];
    sub_1BD0303B8(v18, v13);
    sub_1BD0304AC();
    sub_1BE048904();
    v12 = sub_1BE048914();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
    sub_1BE052F74();

    sub_1BD030458(v18);
  }
}

+ (void)annotateView:(id)view withEntityForTransaction:(id)transaction
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD37128);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v14[-v8 - 8];
  transactionCopy = transaction;
  viewCopy = view;
  sub_1BD51B424(transactionCopy, v20);
  v17 = v20[2];
  v18 = v20[3];
  v19 = v21;
  v15 = v20[0];
  v16 = v20[1];
  sub_1BD0D7104(v20, v14);
  sub_1BD0D7160();
  sub_1BE048904();
  v12 = sub_1BE048914();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  sub_1BE052F74();

  sub_1BD0D71B4(v20);
}

- (PKAppIntentUIUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppIntentUIUtilities();
  return [(PKAppIntentUIUtilities *)&v3 init];
}

@end