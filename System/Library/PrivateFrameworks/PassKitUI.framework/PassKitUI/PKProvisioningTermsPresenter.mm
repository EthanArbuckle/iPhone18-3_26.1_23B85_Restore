@interface PKProvisioningTermsPresenter
- (PKProvisioningTermsPresenter)init;
- (PKProvisioningTermsPresenter)initWithAllowNonSecureHTTP:(BOOL)p paymentSetupContext:(int64_t)context;
- (void)presentWithTermsUrl:(id)url forViewController:(id)controller completion:(id)completion;
@end

@implementation PKProvisioningTermsPresenter

- (PKProvisioningTermsPresenter)initWithAllowNonSecureHTTP:(BOOL)p paymentSetupContext:(int64_t)context
{
  v5 = sub_1BE04BAC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BAD4();
  v10 = type metadata accessor for ProvisioningTermsPresenter();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController] = 0;
  v11[OBJC_IVAR___PKProvisioningTermsPresenter_allowNonSecureHTTP] = p;
  (*(v6 + 16))(&v11[OBJC_IVAR___PKProvisioningTermsPresenter_flowType], v9, v5);
  v14.receiver = v11;
  v14.super_class = v10;
  v12 = [(PKProvisioningTermsPresenter *)&v14 init];
  (*(v6 + 8))(v9, v5);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

- (void)presentWithTermsUrl:(id)url forViewController:(id)controller completion:(id)completion
{
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  sub_1BE04A9F4();
  _Block_copy(v13);
  controllerCopy = controller;
  selfCopy = self;
  sub_1BD4FB2A4(v12, controllerCopy, selfCopy, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (PKProvisioningTermsPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end