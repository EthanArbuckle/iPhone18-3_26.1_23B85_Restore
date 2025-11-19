@interface SBDExtendedDisplayProfile
+ (id)createProfile;
- (SBDExtendedDisplayProfile)init;
@end

@implementation SBDExtendedDisplayProfile

+ (id)createProfile
{
  v2 = sub_26B9DFE84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = sub_26B9DFA70();
  v11 = *MEMORY[0x277D54FB0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434058, &qword_26B9E0AA0);
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434060, &qword_26B9E0AA8) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26B9E0A90;
  v16 = v15 + v14;
  v17 = v12[14];
  sub_26B9DFD84();
  *(v16 + v17) = v10;
  sub_26B9DF89C(v15);
  swift_setDeallocating();
  sub_26B9DEFA8(v16);
  swift_deallocClassInstance();
  sub_26B9DFE64();
  sub_26B9DFFC4();
  (*(v3 + 16))(v7, v9, v2);
  v18 = sub_26B9DFFB4();
  (*(v3 + 8))(v9, v2);

  return v18;
}

- (SBDExtendedDisplayProfile)init
{
  v3.receiver = self;
  v3.super_class = SBDExtendedDisplayProfile;
  return [(SBDExtendedDisplayProfile *)&v3 init];
}

@end