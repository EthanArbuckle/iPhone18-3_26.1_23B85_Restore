@interface AddBeneficiaryModel
- (_TtC9PassKitUI19AddBeneficiaryModel)init;
- (void)nextViewControllerWithCompletion:(id)completion;
@end

@implementation AddBeneficiaryModel

- (void)nextViewControllerWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1BD1CE7C4;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1BDA6F1BC(v5);
  sub_1BD0D4744(v5);
}

- (_TtC9PassKitUI19AddBeneficiaryModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end