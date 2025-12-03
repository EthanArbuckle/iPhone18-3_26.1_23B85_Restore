@interface SHStorefront
- (SHStorefront)init;
- (void)storefrontCountryCode:(id)code;
@end

@implementation SHStorefront

- (void)storefrontCountryCode:(id)code
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3B4D8, &qword_231034540);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(code);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_231032D3C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_231034550;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_231034560;
  v13[5] = v12;
  selfCopy = self;
  sub_23103208C(0, 0, v8, &unk_231034570, v13);
}

- (SHStorefront)init
{
  v3.receiver = self;
  v3.super_class = SHStorefront;
  return [(SHStorefront *)&v3 init];
}

@end