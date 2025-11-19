@interface UNNotificationOnboardingDefaults
+ (void)applyToSettingsIfNecessary;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)save;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationOnboardingDefaults

- (id)save
{
  v2 = self;
  v3 = UNNotificationOnboardingDefaults.save()();

  if (v3)
  {
    v4 = sub_270A88680();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = self;
  sub_270A78D10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FCE0);
  v5 = sub_270A88F50();

  v6 = sub_270A88FB0();

  [v4 encodeObject:v5 forKey:v6];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_270A89270();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = UNNotificationOnboardingDefaults.isEqual(_:)(v8);

  sub_270A4E644(v8, &qword_28083FCB0);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  UNNotificationOnboardingDefaults.description.getter();

  v3 = sub_270A88FB0();

  return v3;
}

+ (void)applyToSettingsIfNecessary
{
  v0 = sub_270A88EF0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v42 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_270A88F20();
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_270A88F00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_270A88760();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v39);
  v12 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v43 = (&v35 - v13);
  v14 = [objc_allocWithZone(UNNotificationOnboardingDefaults) init];
  if (*(v14 + OBJC_IVAR___UNNotificationOnboardingDefaults_needsSelectionAppliedToSettings) == 1)
  {
    v37 = v1;
    v38 = v0;
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v36 = v3;
    v15 = sub_270A88890();
    __swift_project_value_buffer(v15, qword_28122C340);
    v16 = sub_270A88870();
    v17 = sub_270A891C0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_270A33000, v16, v17, "Onboarding settings need to be applied.", v18, 2u);
      MEMORY[0x2743AF520](v18, -1, -1);
    }

    sub_270A88750();
    v19 = sub_270A7DC1C();
    if (v19)
    {
      v20 = v19;

      v21 = sub_270A88FB0();

      [v20 removeObjectForKey_];
    }

    sub_270A4DC8C(0, &unk_28083FD80);
    (*(v6 + 104))(v8, *MEMORY[0x277D851A8], v5);
    v35 = sub_270A891F0();
    (*(v6 + 8))(v8, v5);
    v22 = v39;
    (*(v9 + 16))(v12, v43, v39);
    v23 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v14;
    (*(v9 + 32))(v24 + v23, v12, v22);
    aBlock[4] = sub_270A7EBB0;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_270A53DF8;
    aBlock[3] = &block_descriptor_1;
    v25 = _Block_copy(aBlock);
    v26 = v14;
    v27 = v40;
    sub_270A88F10();
    v44 = MEMORY[0x277D84F90];
    sub_270A7EC2C(&qword_28083F128, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FD90);
    sub_270A4E7E4(&qword_28083F130, &unk_28083FD90);
    v28 = v42;
    v29 = v38;
    sub_270A89280();
    v30 = v35;
    MEMORY[0x2743AE690](0, v27, v28, v25);
    _Block_release(v25);

    (*(v37 + 8))(v28, v29);
    (*(v41 + 8))(v27, v36);
    (*(v9 + 8))(v43, v22);
  }

  else
  {
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v31 = sub_270A88890();
    __swift_project_value_buffer(v31, qword_28122C340);
    v43 = sub_270A88870();
    v32 = sub_270A891C0();
    if (os_log_type_enabled(v43, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_270A33000, v43, v32, "Onboarding settings don't need to be applied", v33, 2u);
      MEMORY[0x2743AF520](v33, -1, -1);
    }

    v34 = v43;
  }
}

@end