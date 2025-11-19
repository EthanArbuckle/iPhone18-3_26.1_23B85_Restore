@interface AccountProvider
- (void)onAccountChanged;
@end

@implementation AccountProvider

- (void)onAccountChanged
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = sub_265B77230();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;

  sub_265B566AC(0, 0, v6, &unk_265B79BC0, v8);
}

@end