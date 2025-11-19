@interface PMPasswordManager
- (void)accountStoreDidChange;
@end

@implementation PMPasswordManager

- (void)accountStoreDidChange
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_21CB858E4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_21CB858B4();
  swift_retain_n();
  v8 = sub_21CB858A4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = self;
  sub_21C98B308(0, 0, v6, &unk_21CBC5B50, v9);
}

@end