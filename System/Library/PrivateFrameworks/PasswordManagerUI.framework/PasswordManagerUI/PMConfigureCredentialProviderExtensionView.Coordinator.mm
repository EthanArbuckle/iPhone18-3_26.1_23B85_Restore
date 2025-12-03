@interface PMConfigureCredentialProviderExtensionView.Coordinator
- (_TtCV17PasswordManagerUI42PMConfigureCredentialProviderExtensionView11Coordinator)init;
- (void)credentialProviderExtensionConfigurationViewControllerDidFinish:(_ASCredentialProviderExtensionConfigurationViewController *)finish completion:(id)completion;
@end

@implementation PMConfigureCredentialProviderExtensionView.Coordinator

- (_TtCV17PasswordManagerUI42PMConfigureCredentialProviderExtensionView11Coordinator)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR____TtCV17PasswordManagerUI42PMConfigureCredentialProviderExtensionView11Coordinator_onDismiss);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(PMConfigureCredentialProviderExtensionView.Coordinator *)&v6 init];
}

- (void)credentialProviderExtensionConfigurationViewControllerDidFinish:(_ASCredentialProviderExtensionConfigurationViewController *)finish completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = finish;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_21CB858E4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21CBB2900;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21CBA0DB8;
  v15[5] = v14;
  finishCopy = finish;
  selfCopy = self;
  sub_21C963EF4(0, 0, v10, &unk_21CBA0DC0, v15);
}

@end