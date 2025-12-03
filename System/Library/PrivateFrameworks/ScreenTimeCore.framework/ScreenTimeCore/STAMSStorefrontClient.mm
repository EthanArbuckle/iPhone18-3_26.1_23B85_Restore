@interface STAMSStorefrontClient
- (void)activeiTunesAccountWithCompletionHandler:(id)handler;
- (void)bagCountryCodeWithCompletionHandler:(id)handler;
- (void)storefrontForChildWithDSID:(NSNumber *)d parentAccount:(ACAccount *)account withCompletionHandler:(id)handler;
@end

@implementation STAMSStorefrontClient

- (void)bagCountryCodeWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1B83DDE3C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B83E9988;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B83E9990;
  v13[5] = v12;

  sub_1B83CD2A8(0, 0, v8, &unk_1B83E9998, v13);
}

- (void)activeiTunesAccountWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1B83DDE3C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B83E9958;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B83E9960;
  v13[5] = v12;

  sub_1B83CD2A8(0, 0, v8, &unk_1B83E9968, v13);
}

- (void)storefrontForChildWithDSID:(NSNumber *)d parentAccount:(ACAccount *)account withCompletionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = account;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1B83DDE3C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B83E9938;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B83E9940;
  v17[5] = v16;
  dCopy = d;
  accountCopy = account;

  sub_1B83CD2A8(0, 0, v12, &unk_1B83E9948, v17);
}

@end