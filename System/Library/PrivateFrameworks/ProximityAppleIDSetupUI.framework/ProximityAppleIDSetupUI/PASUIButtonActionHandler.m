@interface PASUIButtonActionHandler
- (void)buttonTapped;
@end

@implementation PASUIButtonActionHandler

- (void)buttonTapped
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = sub_26115B7D4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;

  sub_261112D1C(0, 0, v6, &unk_26115FBB0, v8);
}

@end