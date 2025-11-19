uint64_t sub_21D38B45C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TTRPrivacyChecker.checkAndPromptAccessForRemindersWithDueDate(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a2 - 8);
  v4[6] = v5;
  v4[7] = *(v5 + 64);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  v4[9] = swift_task_alloc();
  sub_21DBFA84C();
  v4[10] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v4[11] = v7;
  v4[12] = v6;

  return MEMORY[0x2822009F8](sub_21D38B5F8, v7, v6);
}

uint64_t sub_21D38B5F8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v15 = *(v0 + 24);
  sub_21DBFA86C();
  v7 = sub_21DBFA89C();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  (*(v3 + 16))(v1, v5, v15);
  v8 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v15;
  (*(v3 + 32))(v9 + v8, v1, v15);
  *(v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v10 = v6;
  v11 = sub_21D392FF0(0, 0, v2, &unk_21DC12390, v9);
  *(v0 + 104) = v11;
  sub_21D0CF7E0(v2, &unk_27CE5F150);
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_21D38B7EC;
  v13 = MEMORY[0x277D839B0];

  return MEMORY[0x282200460](v0 + 128, v11, v13);
}

uint64_t sub_21D38B7EC()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21D38B90C, v3, v2);
}

uint64_t sub_21D38B90C()
{
  if (*(v0 + 128) == 1)
  {
    if (qword_280D0F318 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_280D0F320);
    v2 = sub_21DBF84AC();
    v3 = sub_21DBFAEDC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Notification] Detected existing reminders with due date - prompt for system notification permission", v4, 2u);
      MEMORY[0x223D46520](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v5[1] = sub_21D38BB78;
    v6 = *(v0 + 32);
    v7 = *(v0 + 24);

    return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v7, v6);
  }

  else
  {

    if (qword_280D0F318 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_280D0F320);
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAEDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21D0C9000, v10, v11, "PrivacyChecker: [Notification] Did not detect any existing reminders with due date - do not prompt for system notification permission", v12, 2u);
      MEMORY[0x223D46520](v12, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_21D38BB78()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21D38BC98, v3, v2);
}

uint64_t sub_21D38BC98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D38BD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return TTRPrivacyChecker.checkAndPromptAccessForRemindersWithLocation(with:)(a1, a2, a3);
}

uint64_t sub_21D38BDC0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  v2[4] = swift_task_alloc();
  v2[5] = sub_21DBFA84C();
  v2[6] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21D38BE94, v4, v3);
}

uint64_t sub_21D38BE94()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_21DBFA86C();
  v4 = sub_21DBFA89C();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = v3;

  v6 = v3;
  v7 = sub_21D392FF0(0, 0, v2, &unk_21DC129C0, v5);
  v0[9] = v7;
  sub_21D0CF7E0(v2, &unk_27CE5F150);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_21D38C004;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x282200460](v0 + 15, v7, v9);
}

uint64_t sub_21D38C004()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21D38C124, v3, v2);
}

uint64_t sub_21D38C124()
{
  if (*(v0 + 120) == 1)
  {
    if (qword_280D0F318 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    *(v0 + 88) = __swift_project_value_buffer(v1, qword_280D0F320);
    v2 = sub_21DBF84AC();
    v3 = sub_21DBFAEDC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Location] Detected existing location alarms - check and prompt for system notification access", v4, 2u);
      MEMORY[0x223D46520](v4, -1, -1);
    }

    *(v0 + 96) = sub_21DBFA83C();
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_21D38C3B4;

    return (sub_21D591AA8)(2, 1);
  }

  else
  {

    if (qword_280D0F318 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_280D0F320);
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEDC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21D0C9000, v8, v9, "PrivacyChecker: [Location] Did not detect any existing location alarms - do not prompt for system location permission", v10, 2u);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_21D38C3B4()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D38C4F0, v1, v0);
}

uint64_t sub_21D38C4F0()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_21D38C554, v1, v2);
}

uint64_t sub_21D38C554()
{
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAEDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21D0C9000, v1, v2, "PrivacyChecker: [Location] Detected existing location alarms - prompt for system location access", v3, 2u);
    MEMORY[0x223D46520](v3, -1, -1);
  }

  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_21D38C670;

  return sub_21D591090();
}

uint64_t sub_21D38C670()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21D399958, v3, v2);
}

uint64_t TTRPrivacyChecker.checkAndPromptAccessForRemindersWithLocation(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a2 - 8);
  v4[6] = v5;
  v4[7] = *(v5 + 64);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  v4[9] = swift_task_alloc();
  sub_21DBFA84C();
  v4[10] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v4[11] = v7;
  v4[12] = v6;

  return MEMORY[0x2822009F8](sub_21D38C8B8, v7, v6);
}

uint64_t sub_21D38C8B8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v15 = *(v0 + 24);
  sub_21DBFA86C();
  v7 = sub_21DBFA89C();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  (*(v3 + 16))(v1, v5, v15);
  v8 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v15;
  (*(v3 + 32))(v9 + v8, v1, v15);
  *(v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v10 = v6;
  v11 = sub_21D392FF0(0, 0, v2, &unk_21DC123A8, v9);
  *(v0 + 104) = v11;
  sub_21D0CF7E0(v2, &unk_27CE5F150);
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_21D38CAAC;
  v13 = MEMORY[0x277D839B0];

  return MEMORY[0x282200460](v0 + 144, v11, v13);
}

uint64_t sub_21D38CAAC()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21D38CBCC, v3, v2);
}

uint64_t sub_21D38CBCC()
{
  if (*(v0 + 144) == 1)
  {
    if (qword_280D0F318 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    *(v0 + 120) = __swift_project_value_buffer(v1, qword_280D0F320);
    v2 = sub_21DBF84AC();
    v3 = sub_21DBFAEDC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Location] Detected existing location alarms - check and prompt for system notification access", v4, 2u);
      MEMORY[0x223D46520](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = sub_21D38CE3C;
    v6 = *(v0 + 32);
    v7 = *(v0 + 24);

    return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v7, v6);
  }

  else
  {

    if (qword_280D0F318 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_280D0F320);
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAEDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21D0C9000, v10, v11, "PrivacyChecker: [Location] Did not detect any existing location alarms - do not prompt for system location permission", v12, 2u);
      MEMORY[0x223D46520](v12, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_21D38CE3C()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21D38CF5C, v3, v2);
}

uint64_t sub_21D38CF5C()
{
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAEDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21D0C9000, v1, v2, "PrivacyChecker: [Location] Detected existing location alarms - prompt for system location access", v3, 2u);
    MEMORY[0x223D46520](v3, -1, -1);
  }

  v9 = v0[4];

  v8 = (*(v9 + 96) + **(v9 + 96));
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_21D38D0E8;
  v5 = v0[4];
  v6 = v0[3];

  return v8(v6, v5);
}

uint64_t sub_21D38D0E8()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21D399948, v3, v2);
}

uint64_t sub_21D38D208(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D1B795C;

  return TTRPrivacyChecker.checkLocationAccessForRemindersInCalendar()(a1);
}

uint64_t sub_21D38D2A0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_21DBF9D8C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21DBFA84C();
  v1[6] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21D38D394, v4, v3);
}

uint64_t sub_21D38D394()
{
  if (qword_280D15608 != -1)
  {
    swift_once();
  }

  if (byte_280D15610 == 1)
  {
    if (qword_280D0F318 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    *(v0 + 72) = __swift_project_value_buffer(v1, qword_280D0F320);
    v2 = sub_21DBF84AC();
    v3 = sub_21DBFAEDC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Location] checking Location Access for Reminders In Calendar", v4, 2u);
      MEMORY[0x223D46520](v4, -1, -1);
    }

    if (qword_27CE56DC8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 24);
    v9 = qword_27CE62FD8;
    v8 = unk_27CE62FE0;
    sub_21D0CE468();
    *v5 = sub_21DBFB12C();
    (*(v6 + 104))(v5, *MEMORY[0x277D85200], v7);
    v10 = sub_21DBF9DAC();
    (*(v6 + 8))(v5, v7);
    if (v10)
    {
      v11 = objc_allocWithZone(type metadata accessor for TTRGeoLocationService());
      sub_21DBF8E0C();
      *(v0 + 80) = sub_21D0D7EE0(v11, v9, v8);

      v12 = swift_task_alloc();
      *(v0 + 88) = v12;
      *v12 = v0;
      v12[1] = sub_21D38D720;

      return TTRGeoLocationService.locationAuthorizationStatus.getter(v0 + 96);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_280D0F318 != -1)
  {
LABEL_21:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F320);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAECC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21D0C9000, v15, v16, "PrivacyChecker: [Location] skipping checkLocationAccessForRemindersInCalendar because isNonRemindersBundle == false", v17, 2u);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  **(v0 + 16) = 2;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_21D38D720()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21D38D840, v3, v2);
}

uint64_t sub_21D38D840()
{
  v16 = v0;

  v1 = *(v0 + 96);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 80);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v15 = v1;
    v8 = TTRGeoLocationAuthorizationStatus.description.getter();
    v10 = sub_21D0CDFB4(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Location] current location authorization status for Reminders: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D46520](v7, -1, -1);
    MEMORY[0x223D46520](v6, -1, -1);
  }

  if (v1 == 2)
  {
    v11 = 0;
  }

  else if (v1 == 3 || (v1 & 1) == 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  **(v0 + 16) = v11;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t TTRPrivacyChecker.checkLocationAccessForRemindersInCalendar()(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_21DBF9D8C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_21DBFA84C();
  v1[6] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_21D38DAC4, v4, v3);
}

uint64_t sub_21D38DAC4()
{
  if (qword_280D15608 != -1)
  {
    swift_once();
  }

  if (byte_280D15610 == 1)
  {
    if (qword_280D0F318 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    *(v0 + 72) = __swift_project_value_buffer(v1, qword_280D0F320);
    v2 = sub_21DBF84AC();
    v3 = sub_21DBFAEDC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Location] checking Location Access for Reminders In Calendar", v4, 2u);
      MEMORY[0x223D46520](v4, -1, -1);
    }

    if (qword_27CE56DC8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 24);
    v9 = qword_27CE62FD8;
    v8 = unk_27CE62FE0;
    sub_21D0CE468();
    *v5 = sub_21DBFB12C();
    (*(v6 + 104))(v5, *MEMORY[0x277D85200], v7);
    v10 = sub_21DBF9DAC();
    (*(v6 + 8))(v5, v7);
    if (v10)
    {
      v11 = objc_allocWithZone(type metadata accessor for TTRGeoLocationService());
      sub_21DBF8E0C();
      *(v0 + 80) = sub_21D0D7EE0(v11, v9, v8);

      v12 = swift_task_alloc();
      *(v0 + 88) = v12;
      *v12 = v0;
      v12[1] = sub_21D38DE50;

      return TTRGeoLocationService.locationAuthorizationStatus.getter(v0 + 96);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_280D0F318 != -1)
  {
LABEL_21:
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F320);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAECC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21D0C9000, v15, v16, "PrivacyChecker: [Location] skipping checkLocationAccessForRemindersInCalendar because isNonRemindersBundle == false", v17, 2u);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  **(v0 + 16) = 2;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_21D38DE50()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21D399930, v3, v2);
}

uint64_t sub_21D38DF70(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return TTRPrivacyChecker.performActionForLocationAccessForRemindersInCalendar(_:)(a1, a2, a3);
}

uint64_t sub_21D38E01C(char a1)
{
  v3 = sub_21DBF66FC();
  *(v1 + 16) = v3;
  *(v1 + 24) = *(v3 - 8);
  *(v1 + 32) = swift_task_alloc();
  v4 = sub_21DBF54CC();
  *(v1 + 40) = v4;
  *(v1 + 48) = *(v4 - 8);
  *(v1 + 56) = swift_task_alloc();
  if (a1)
  {
    *(v1 + 81) = 1;
    v5 = swift_task_alloc();
    *(v1 + 72) = v5;
    *v5 = v1;
    v5[1] = sub_21D38E528;

    return TTRIPrivacyChecker.showPrivacyAlert(type:)(v1 + 80, (v1 + 81));
  }

  else
  {
    v7 = swift_task_alloc();
    *(v1 + 64) = v7;
    *v7 = v1;
    v7[1] = sub_21D38E1F4;

    return TTRIPrivacyChecker.showLocationPrivacyAlertForRemindersInCalendar()(v1 + 82);
  }
}

uint64_t sub_21D38E1F4()
{

  return MEMORY[0x2822009F8](sub_21D38E2F0, 0, 0);
}

uint64_t sub_21D38E2F0()
{
  v1 = *(v0 + 82);
  if (v1 != 2)
  {
    if (v1)
    {
      v2 = sub_21DBFC64C();

      if ((v2 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    if (qword_280D0F318 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_280D0F320);
    v4 = sub_21DBF84AC();
    v5 = sub_21DBFAE9C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21D0C9000, v4, v5, "PrivacyChecker: [Location] requesting Location Access for Reminders In Calendar via url", v6, 2u);
      MEMORY[0x223D46520](v6, -1, -1);
    }

    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = *(v0 + 16);

    (*(v8 + 104))(v7, *MEMORY[0x277D451F0], v9);
    sub_21DBF66EC();
    (*(v8 + 8))(v7, v9);
    v10 = [objc_opt_self() defaultWorkspace];
    if (v10)
    {
      v11 = v10;
      LSApplicationWorkspace.open(universalLink:)(*(v0 + 56));
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  }

LABEL_13:

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21D38E528()
{

  return MEMORY[0x2822009F8](sub_21D38E624, 0, 0);
}

uint64_t sub_21D38E624()
{
  v6 = v0;
  v1 = *(v0 + 80);
  if (v1 != 2)
  {
    if (v1)
    {
      v2 = sub_21DBFC64C();

      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v5 = 1;
    _s15RemindersUICore18TTRIPrivacyCheckerC15openSettingsApp3foryAA14TTRPrivacyTypeO_tF_0(&v5);
  }

LABEL_7:

  v3 = *(v0 + 8);

  return v3();
}

uint64_t TTRPrivacyChecker.performActionForLocationAccessForRemindersInCalendar(_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  v8 = sub_21DBF66FC();
  *(v4 + 40) = v8;
  *(v4 + 48) = *(v8 - 8);
  *(v4 + 56) = swift_task_alloc();
  v9 = sub_21DBF54CC();
  *(v4 + 64) = v9;
  *(v4 + 72) = *(v9 - 8);
  *(v4 + 80) = swift_task_alloc();
  if (*a1)
  {
    *(v4 + 105) = 1;
    v13 = (*(a3 + 72) + **(a3 + 72));
    v10 = swift_task_alloc();
    *(v4 + 96) = v10;
    *v10 = v4;
    v10[1] = sub_21D38ED2C;

    return v13(v4 + 104, v4 + 105, a2, a3);
  }

  else
  {
    v14 = (*(a3 + 80) + **(a3 + 80));
    v12 = swift_task_alloc();
    *(v4 + 88) = v12;
    *v12 = v4;
    v12[1] = sub_21D38E9F8;

    return v14(v4 + 106, a2, a3);
  }
}

uint64_t sub_21D38E9F8()
{

  return MEMORY[0x2822009F8](sub_21D38EAF4, 0, 0);
}

uint64_t sub_21D38EAF4()
{
  v1 = *(v0 + 106);
  if (v1 != 2)
  {
    if (v1)
    {
      v2 = sub_21DBFC64C();

      if ((v2 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    if (qword_280D0F318 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_280D0F320);
    v4 = sub_21DBF84AC();
    v5 = sub_21DBFAE9C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21D0C9000, v4, v5, "PrivacyChecker: [Location] requesting Location Access for Reminders In Calendar via url", v6, 2u);
      MEMORY[0x223D46520](v6, -1, -1);
    }

    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);

    (*(v8 + 104))(v7, *MEMORY[0x277D451F0], v9);
    sub_21DBF66EC();
    (*(v8 + 8))(v7, v9);
    v10 = [objc_opt_self() defaultWorkspace];
    if (v10)
    {
      v11 = v10;
      LSApplicationWorkspace.open(universalLink:)(*(v0 + 80));
    }

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  }

LABEL_13:

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21D38ED2C()
{

  return MEMORY[0x2822009F8](sub_21D38EE28, 0, 0);
}

uint64_t sub_21D38EE28()
{
  v8 = v0;
  v1 = *(v0 + 104);
  if (v1 != 2)
  {
    if (v1)
    {
      v2 = sub_21DBFC64C();

      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v3 = *(v0 + 24);
    v4 = *(v0 + 16);
    v7 = 1;
    (*(v3 + 48))(&v7, v4);
  }

LABEL_7:

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21D38EF20(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return TTRPrivacyChecker.checkAndPromptNotificationAndLocationAccessForRemindersInCalendar()(a1, a2);
}

uint64_t sub_21D38EFC4()
{
  v1[10] = v0;
  v1[11] = sub_21DBFA84C();
  v1[12] = sub_21DBFA83C();
  v3 = sub_21DBFA7CC();
  v1[13] = v3;
  v1[14] = v2;

  return MEMORY[0x2822009F8](sub_21D38F060, v3, v2);
}

uint64_t sub_21D38F060()
{
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  v0[15] = __swift_project_value_buffer(v1, qword_280D0F320);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Location] checking Notification Access and request if necessary for Reminders In Calendar", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v0[16] = sub_21DBFA83C();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_21D38F1DC;

  return sub_21D591AA8(2, 1);
}

uint64_t sub_21D38F1DC()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D38F318, v1, v0);
}

uint64_t sub_21D38F318()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21D38F37C, v1, v2);
}

uint64_t sub_21D38F37C()
{
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAEDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21D0C9000, v1, v2, "PrivacyChecker: [Location] checking Location Access and request if necessary for Reminders In Calendar", v3, 2u);
    MEMORY[0x223D46520](v3, -1, -1);
  }

  v4 = v0[10];

  swift_beginAccess();
  sub_21D0D32E4(v4 + 32, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v9 = (*(v6 + 80) + **(v6 + 80));
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_21D38F53C;

  return v9(v0 + 20, v5, v6);
}

uint64_t sub_21D38F53C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21D38F65C, v3, v2);
}

uint64_t sub_21D38F65C()
{
  v1 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if (v1 == 2)
  {
    v2 = swift_task_alloc();
    *(v0 + 152) = v2;
    *v2 = v0;
    v2[1] = sub_21D38F74C;

    return sub_21D591090();
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_21D38F74C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21D38F86C, v3, v2);
}

uint64_t sub_21D38F86C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TTRPrivacyChecker.checkAndPromptNotificationAndLocationAccessForRemindersInCalendar()(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_21DBFA84C();
  v3[10] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x2822009F8](sub_21D38F968, v5, v4);
}

uint64_t sub_21D38F968()
{
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  v0[13] = __swift_project_value_buffer(v1, qword_280D0F320);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Location] checking Notification Access and request if necessary for Reminders In Calendar", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_21D38FAC0;
  v6 = v0[8];
  v7 = v0[7];

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v7, v6);
}

uint64_t sub_21D38FAC0()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21D38FBE0, v3, v2);
}

uint64_t sub_21D38FBE0()
{
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAEDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21D0C9000, v1, v2, "PrivacyChecker: [Location] checking Location Access and request if necessary for Reminders In Calendar", v3, 2u);
    MEMORY[0x223D46520](v3, -1, -1);
  }

  v4 = v0[8];
  v5 = v0[7];

  (*(v4 + 8))(v5, v4);
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v10 = (*(v7 + 80) + **(v7 + 80));
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_21D38FDAC;

  return v10(v0 + 17, v6, v7);
}

uint64_t sub_21D38FDAC()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21D38FECC, v3, v2);
}

uint64_t sub_21D38FECC()
{
  v1 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if (v1 == 2)
  {
    v7 = (*(*(v0 + 64) + 96) + **(*(v0 + 64) + 96));
    v2 = swift_task_alloc();
    *(v0 + 128) = v2;
    *v2 = v0;
    v2[1] = sub_21D390024;
    v3 = *(v0 + 64);
    v4 = *(v0 + 56);

    return v7(v4, v3);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_21D390024()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21D390144, v3, v2);
}

uint64_t sub_21D390144()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D3901A4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D1237C4;

  return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(a1, a2, a3);
}

uint64_t TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 98) = *a1;
  sub_21DBFA84C();
  *(v4 + 40) = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  *(v4 + 48) = v6;
  *(v4 + 56) = v5;

  return MEMORY[0x2822009F8](sub_21D3902F4, v6, v5);
}

uint64_t sub_21D3902F4()
{
  v37 = v0;
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_280D0F320);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 98);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v36 = v6;
    *v5 = 136315138;
    v7 = 0xE900000000000067;
    v8 = 0x6E6967617373656DLL;
    if (v4 != 1)
    {
      v8 = 0x68535641446C6163;
      v7 = 0xED0000676E697261;
    }

    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x6E6F697461636F6CLL;
    }

    if (v4)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    v11 = sub_21D0CDFB4(v9, v10, &v36);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Contacts] checking Contacts Access with alertFeature: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  v12 = [objc_opt_self() authorizationStatusForEntityType_];
  *(v0 + 64) = v12;
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAEDC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = v16;
    *v15 = 136315138;
    if (v12 == 3)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v12 == 3)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    v19 = sub_21D0CDFB4(v17, v18, &v36);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_21D0C9000, v13, v14, "PrivacyChecker: [Contacts] hasContactsAccess: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  if (v12 == 3 || ((v20 = *(v0 + 98), v21 = *(v0 + 16), v22 = *(v0 + 24), v23 = *(v22 + 24), *(v0 + 72) = v23, *(v0 + 80) = (v22 + 24) & 0xFFFFFFFFFFFFLL | 0xC9A7000000000000, v23(v21), v25 = v24, ObjectType = swift_getObjectType(), !v20) ? (v27 = v25[1](ObjectType, v25)) : v20 != 1 ? (v27 = v25[7](ObjectType, v25)) : (v27 = v25[4](ObjectType, v25)), v28 = v27, swift_unknownObjectRelease(), (v28 & 1) != 0))
  {

    v29 = *(v0 + 8);
    v30 = *(v0 + 64) == 3;

    return v29(v30);
  }

  else
  {
    *(v0 + 97) = 2;
    v35 = (*(*(v0 + 24) + 72) + **(*(v0 + 24) + 72));
    v32 = swift_task_alloc();
    *(v0 + 88) = v32;
    *v32 = v0;
    v32[1] = sub_21D39079C;
    v33 = *(v0 + 24);
    v34 = *(v0 + 16);

    return v35(v0 + 96, v0 + 97, v34, v33);
  }
}

uint64_t sub_21D39079C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21D3908BC, v3, v2);
}

uint64_t sub_21D3908BC()
{
  v16 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 98);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = *(v0 + 96);
  v1(v4, v3);
  v7 = v6;
  ObjectType = swift_getObjectType();
  if (v2)
  {
    if (v2 == 1)
    {
      v7[5](1, ObjectType, v7);
    }

    else
    {
      v7[8](1, ObjectType, v7);
    }
  }

  else
  {
    v7[2](1, ObjectType, v7);
  }

  swift_unknownObjectRelease();
  if (v5 != 2)
  {
    if (v5)
    {
      v9 = sub_21DBFC64C();

      if ((v9 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v10 = *(v0 + 24);
    v11 = *(v0 + 16);
    v15 = 2;
    (*(v10 + 48))(&v15, v11);
  }

LABEL_12:
  v12 = *(v0 + 8);
  v13 = *(v0 + 64) == 3;

  return v12(v13);
}

uint64_t sub_21D390A5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D399954;

  return TTRPrivacyChecker.checkAndPromptUrgentAlarmAccess()(a1, a2);
}

uint64_t TTRPrivacyChecker.checkAndPromptUrgentAlarmAccess()(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B1A8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_21DBFA84C();
  v3[20] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[21] = v5;
  v3[22] = v4;

  return MEMORY[0x2822009F8](sub_21D390C04, v5, v4);
}

uint64_t sub_21D390C04()
{
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  v0[23] = __swift_project_value_buffer(v1, qword_280D0F320);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [UrgentAlarm] Checking AlarmKit access and request if necessary", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v5 = v0[13];
  v6 = v0[12];

  v7 = *(v5 + 32);
  v0[24] = v7;
  v0[25] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x8658000000000000;
  v7(v6, v5);
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v12 = (*(v9 + 16) + **(v9 + 16));
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_21D390E1C;

  return v12(v8, v9);
}

uint64_t sub_21D390E1C()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_21D390F3C, v3, v2);
}

uint64_t sub_21D390F3C()
{
  v36 = v0;
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[12];

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v1(v5, v4);
  v6 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
  (*(v7 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + 7));
  sub_21D0D3954(v2, v3, &qword_27CE5B1A8);
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAEDC();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  if (v10)
  {
    v12 = v0[17];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35 = v14;
    *v13 = 136315138;
    sub_21D0D3954(v11, v12, &qword_27CE5B1A8);
    v15 = sub_21DBF5E6C();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 48))(v12, 1, v15);
    v18 = v0[17];
    if (v17 == 1)
    {
      sub_21D0CF7E0(v0[17], &qword_27CE5B1A8);
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v20 = sub_21DBF5E5C();
      v19 = v21;
      (*(v16 + 8))(v18, v15);
    }

    sub_21D0CF7E0(v0[18], &qword_27CE5B1A8);
    v22 = sub_21D0CDFB4(v20, v19, &v35);

    *(v13 + 4) = v22;
    _os_log_impl(&dword_21D0C9000, v8, v9, "PrivacyChecker: [UrgentAlarm] Current AlarmKit authorization status: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223D46520](v14, -1, -1);
    MEMORY[0x223D46520](v13, -1, -1);
  }

  else
  {

    sub_21D0CF7E0(v11, &qword_27CE5B1A8);
  }

  v23 = v0[16];
  sub_21D0D3954(v0[19], v23, &qword_27CE5B1A8);
  v24 = sub_21DBF5E6C();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
LABEL_8:
    v26 = 0;
    goto LABEL_11;
  }

  v27 = v0[15];
  sub_21D0D3954(v0[16], v27, &qword_27CE5B1A8);
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 == *MEMORY[0x277D44CD8])
  {
    v26 = 1;
  }

  else
  {
    v26 = 0;
    if (v28 != *MEMORY[0x277D44CE0] && v28 != *MEMORY[0x277D44CE8])
    {
      (*(v25 + 8))(v0[15], v24);
      v32 = sub_21DBF84AC();
      v33 = sub_21DBFAEBC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_21D0C9000, v32, v33, "PrivacyChecker: [UrgentAlarm] Unknown notification authorization status", v34, 2u);
        MEMORY[0x223D46520](v34, -1, -1);
      }

      goto LABEL_8;
    }
  }

LABEL_11:
  v29 = v0[16];
  sub_21D0CF7E0(v0[19], &qword_27CE5B1A8);
  sub_21D0CF7E0(v29, &qword_27CE5B1A8);

  v30 = v0[1];

  return v30(v26);
}

uint64_t sub_21D391404(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D0F00D0;

  return TTRPrivacyChecker.inlineRequestPresentationState(for:)(a1, a2, a3, a4);
}

uint64_t sub_21D3914C4(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  sub_21DBFA84C();
  *(v3 + 80) = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  *(v3 + 88) = v5;
  *(v3 + 96) = v4;

  return MEMORY[0x2822009F8](sub_21D3915B0, v5, v4);
}

uint64_t sub_21D3915B0()
{
  if (*(v0 + 128))
  {

    **(v0 + 40) = 0;

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 48);
    swift_beginAccess();
    *(v0 + 104) = *(v3 + 72);
    v4 = *(v3 + 80);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);
    swift_unknownObjectRetain();
    v8 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_21D391770;

    return v8(ObjectType, v4);
  }
}

uint64_t sub_21D391770(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  swift_unknownObjectRelease();
  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_21D3918BC, v4, v3);
}

uint64_t sub_21D3918BC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 48);

  v3 = *(v2 + 80);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 56);
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();
  if ((v1 - 2) < 3)
  {
LABEL_5:
    sub_21D0CF7E0(*(v0 + 72), &qword_27CE58D68);
    v14 = 0;
    goto LABEL_6;
  }

  if (v1 != 1)
  {
    if (!v1)
    {
      v7 = *(v0 + 64);
      v6 = *(v0 + 72);
      v8 = *(*(v0 + 48) + 80);
      v9 = swift_getObjectType();
      v10 = *(v8 + 32);
      swift_unknownObjectRetain();
      v10(v9, v8);
      swift_unknownObjectRelease();
      v11 = sub_21DBF563C();
      v12 = (*(*(v11 - 8) + 48))(v7, 1, v11) != 1;
      sub_21D0CF7E0(v7, &qword_27CE58D68);
      v13 = sub_21D393AC8(v12, v6, 168, 0);
      sub_21D0CF7E0(v6, &qword_27CE58D68);
      v14 = v13 & 1;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v17 = *(v0 + 72);
  v18 = *(v0 + 56);
  v19 = *(*(v0 + 48) + 80);
  v20 = swift_getObjectType();
  v21 = *(v19 + 32);
  swift_unknownObjectRetain();
  v21(v20, v19);
  swift_unknownObjectRelease();
  v22 = sub_21DBF563C();
  v23 = (*(*(v22 - 8) + 48))(v18, 1, v22) != 1;
  sub_21D0CF7E0(v18, &qword_27CE58D68);
  v24 = sub_21D393AC8(v23, v17, 4320, 0);
  sub_21D0CF7E0(v17, &qword_27CE58D68);
  if (v24)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

LABEL_6:
  **(v0 + 40) = v14;

  v15 = *(v0 + 8);

  return v15();
}

Swift::Void __swiftcall TTRPrivacyChecker.dismissInlineRequest(for:)(RemindersUICore::TTRPrivacyType a1)
{
  v3 = v2;
  v4 = v1;
  v5 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  if (!*v5)
  {
    (*(v3 + 16))(v4, v3, v7);
    v11 = v10;
    ObjectType = swift_getObjectType();
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v13 = sub_21DBF563C();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
    (*(v11 + 64))(v9, ObjectType, v11);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21D391CCC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    result = sub_21DBFC01C();
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D44740](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 capabilities];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v2 != v5);
    v3 = v9;
  }

  sub_21D391F88(v3);
}

Swift::Void __swiftcall TTRPrivacyChecker.showReminderDeletePrivacyWarningIfNeeded(for:)(Swift::OpaquePointer a1)
{
  if (a1._rawValue >> 62)
  {
    v11 = v2;
    v12 = v1;
    v13 = sub_21DBFBD7C();
    v1 = v12;
    v2 = v11;
    v4 = v13;
  }

  else
  {
    v4 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v14 = v1;
    v15 = MEMORY[0x277D84F90];
    v6 = v2;
    sub_21DBFC01C();
    if (v4 < 0)
    {
      __break(1u);
      return;
    }

    v7 = 0;
    do
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](v7, a1._rawValue);
      }

      else
      {
        v8 = *(a1._rawValue + v7 + 4);
      }

      v9 = v8;
      ++v7;
      v10 = [v8 capabilities];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v4 != v7);
    v5 = v15;
    v2 = v6;
  }

  (*(v2 + 184))(v5);
}

{
  v3 = v2;
  v12 = v1;
  v5 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
  if (a1._rawValue >> 62)
  {
LABEL_18:
    v6 = sub_21DBFBD7C();
  }

  else
  {
    v6 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v6 != i; ++i)
  {
    if ((a1._rawValue & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D44740](i, a1._rawValue);
    }

    else
    {
      if (i >= *(v5 + 16))
      {
        goto LABEL_17;
      }

      v8 = *(a1._rawValue + i + 4);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v10 = [v8 supportsDeletionByTTL];

    if (v10)
    {
      v11 = *(v3 + 192);

      v11(v12, v3);
      return;
    }
  }
}

void sub_21D391F88(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_18:
    v3 = sub_21DBFBD7C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223D44740](i, a1);
    }

    else
    {
      if (i >= *(v2 + 16))
      {
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v7 = [v5 supportsDeletionByTTL];

    if (v7)
    {

      sub_21D3921C0();
      return;
    }
  }
}

uint64_t sub_21D3921C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  swift_beginAccess();
  v5 = *(v0 + 96);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 80);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v7(ObjectType, v5);
  result = swift_unknownObjectRelease();
  if ((v5 & 1) == 0)
  {
    if (qword_280D0F318 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_280D0F320);
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAE9C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21D0C9000, v10, v11, "Did show reminder delete privacy warning", v12, 2u);
      MEMORY[0x223D46520](v12, -1, -1);
    }

    v13 = *(v1 + 96);
    v14 = swift_getObjectType();
    v15 = *(v13 + 88);
    swift_unknownObjectRetain();
    v15(1, v14, v13);
    swift_unknownObjectRelease();
    v16 = sub_21DBFA89C();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    sub_21DBFA84C();

    v17 = sub_21DBFA83C();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v1;
    sub_21D1B5178(0, 0, v4, &unk_21DC12950, v18);
  }

  return result;
}

Swift::Void __swiftcall TTRPrivacyChecker.showReminderDeletePrivacyWarningIfNeeded()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = *(v0 - 8);
  v7 = *(v6 + 64);
  (MEMORY[0x28223BE20])();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v32 = &v31 - v11;
  v12 = *(v4 + 24);
  v12(v5, v4, v10);
  v14 = v13;
  ObjectType = swift_getObjectType();
  LOBYTE(v14) = (*(v14 + 80))(ObjectType, v14);
  swift_unknownObjectRelease();
  if ((v14 & 1) == 0)
  {
    if (qword_280D0F318 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_280D0F320);
    v17 = sub_21DBF84AC();
    v18 = sub_21DBFAE9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = v19;
      *v19 = 0;
      _os_log_impl(&dword_21D0C9000, v17, v18, "Did show reminder delete privacy warning", v19, 2u);
      v21 = v20;
      v8 = v31;
      MEMORY[0x223D46520](v21, -1, -1);
    }

    (v12)(v5, v4);
    v23 = v22;
    v24 = swift_getObjectType();
    (*(v23 + 88))(1, v24, v23);
    swift_unknownObjectRelease();
    v25 = sub_21DBFA89C();
    v26 = v32;
    (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
    (*(v6 + 16))(v8, v3, v5);
    sub_21DBFA84C();
    v27 = sub_21DBFA83C();
    v28 = (*(v6 + 80) + 48) & ~*(v6 + 80);
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    *(v29 + 2) = v27;
    *(v29 + 3) = v30;
    *(v29 + 4) = v5;
    *(v29 + 5) = v4;
    (*(v6 + 32))(&v29[v28], v8, v5);
    sub_21D1B5178(0, 0, v26, &unk_21DC123F8, v29);
  }
}

uint64_t sub_21D3927A0(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 81) = a2;
  *(v5 + 80) = a1;
  return MEMORY[0x2822009F8](sub_21D3927CC, 0, 0);
}

uint64_t sub_21D3927CC()
{
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  v0[5] = __swift_project_value_buffer(v1, qword_280D0F320);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Notification] checking Notification Access", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v5 = v0[3];
  v6 = v0[2];

  v7 = (*(v5 + 16))(v6, v5);
  v9 = v8;
  v0[6] = v7;
  ObjectType = swift_getObjectType();
  v13 = (*(v9 + 24) + **(v9 + 24));
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_21D3929D4;

  return v13(ObjectType, v9);
}

uint64_t sub_21D3929D4(uint64_t a1)
{
  *(*v1 + 64) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_21D392AF4, 0, 0);
}

uint64_t sub_21D392AF4()
{
  v22 = v0;
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAEDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 64);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315138;
    if (v3 <= 1)
    {
      if (!v3)
      {
        v6 = 0xEE0064656E696D72;
        v7 = 0x6574654420746F4ELL;
        goto LABEL_14;
      }

      if (v3 == 1)
      {
        v6 = 0xE600000000000000;
        v7 = 0x6465696E6544;
        goto LABEL_14;
      }
    }

    else
    {
      switch(v3)
      {
        case 2:
          v6 = 0xEA00000000006465;
          v7 = 0x7A69726F68747541;
          goto LABEL_14;
        case 3:
          v6 = 0xEB000000006C616ELL;
          v7 = 0x6F697369766F7250;
          goto LABEL_14;
        case 4:
          v6 = 0xE90000000000006CLL;
          v7 = 0x6172656D65687045;
LABEL_14:
          v8 = sub_21D0CDFB4(v7, v6, &v21);

          *(v4 + 4) = v8;
          _os_log_impl(&dword_21D0C9000, v1, v2, "PrivacyChecker: [Notification] current system authorization: %s", v4, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v5);
          MEMORY[0x223D46520](v5, -1, -1);
          MEMORY[0x223D46520](v4, -1, -1);
          goto LABEL_15;
      }
    }

    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E55;
    goto LABEL_14;
  }

LABEL_15:

  v9 = *(v0 + 64);
  if ((v9 - 2) < 3)
  {
    v10 = 0;
    goto LABEL_28;
  }

  if (v9 == 1)
  {
    v10 = 1;
    goto LABEL_28;
  }

  if (v9)
  {
    v17 = sub_21DBF84AC();
    v18 = sub_21DBFAECC();
    if (os_log_type_enabled(v17, v18))
    {
      v10 = 2;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21D0C9000, v17, v18, "PrivacyChecker: [Notification] unknown notification authorization status", v19, 2u);
      MEMORY[0x223D46520](v19, -1, -1);
    }

    else
    {

      v10 = 2;
    }

LABEL_28:
    v20 = *(v0 + 8);

    return v20(v10);
  }

  v11 = *(v0 + 80);
  if (v11 == 2)
  {
    LOBYTE(v11) = sub_21D39408C(*(v0 + 16), *(v0 + 24));
  }

  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_21D392E48;
  v13 = *(v0 + 24);
  v14 = *(v0 + 16);
  v15 = *(v0 + 81);

  return sub_21D3943B4(v11 & 1, v15, v14, v13);
}

uint64_t sub_21D392E48(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_21D392F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_21D392F68, 0, 0);
}

uint64_t sub_21D392F68()
{
  v1 = *(v0 + 16);
  *v1 = sub_21D3996E8(*(v0 + 24), *(v0 + 32), *(v0 + 40), MEMORY[0x277D45748]) & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21D392FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21D0D3954(a3, v25 - v10, &unk_27CE5F150);
  v12 = sub_21DBFA89C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21D0CF7E0(v11, &unk_27CE5F150);
  }

  else
  {
    sub_21DBFA88C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21DBFA7CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21DBFA1EC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21D3932A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21D0D3954(a3, v25 - v10, &unk_27CE5F150);
  v12 = sub_21DBFA89C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21D0CF7E0(v11, &unk_27CE5F150);
  }

  else
  {
    sub_21DBFA88C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21DBFA7CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21DBFA1EC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21D393568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21D0D3954(a3, v25 - v10, &unk_27CE5F150);
  v12 = sub_21DBFA89C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21D0CF7E0(v11, &unk_27CE5F150);
  }

  else
  {
    sub_21DBFA88C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21DBFA7CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21DBFA1EC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21D39383C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_21D393860, 0, 0);
}

uint64_t sub_21D393860()
{
  v1 = *(v0 + 16);
  *v1 = sub_21D3996E8(*(v0 + 24), *(v0 + 32), *(v0 + 40), MEMORY[0x277D45740]) & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21D3938E8(void *a1, uint64_t (*a2)(void))
{
  sub_21DBF7A7C();
  v4 = [a1 nonUserInteractiveStore];
  LOBYTE(a1) = a2();

  return a1 & 1;
}

uint64_t sub_21D393AC8(char a1, uint64_t a2, uint64_t a3, int a4)
{
  v37 = a4;
  v7 = sub_21DBF5A2C();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF509C();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_21DBF563C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - v21;
  if (a1)
  {
    sub_21D0D3954(a2, v15, &qword_27CE58D68);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_21D0CF7E0(v15, &qword_27CE58D68);
      v23 = 1;
    }

    else
    {
      (*(v17 + 32))(v22, v15, v16);
      v35 = v9;
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8);
      v24 = sub_21DBF5A0C();
      v25 = *(v24 - 8);
      v36 = a3;
      v26 = v25;
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_21DC08D00;
      (*(v26 + 104))(v28 + v27, *MEMORY[0x277CC9980], v24);
      sub_21D1D0F50(v28);
      swift_setDeallocating();
      (*(v26 + 8))(v28 + v27, v24);
      swift_deallocClassInstance();
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      v29 = v35;
      sub_21DBF58CC();

      v30 = *(v17 + 8);
      v30(v19, v16);
      (*(v40 + 8))(v29, v41);
      v31 = sub_21DBF4F5C();
      LOBYTE(v29) = v32;
      (*(v38 + 8))(v12, v39);
      v30(v22, v16);
      v23 = v29 | (v31 >= v36) & ~v37;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_21D393F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = sub_21DBFA84C();
  *(v6 + 24) = sub_21DBFA83C();
  *(v6 + 41) = 3;
  v11 = (*(a6 + 72) + **(a6 + 72));
  v9 = swift_task_alloc();
  *(v6 + 32) = v9;
  *v9 = v6;
  v9[1] = sub_21D1B4BCC;

  return v11(v6 + 40, v6 + 41, a5, a6);
}

BOOL sub_21D39408C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  (*(a2 + 16))(a1, a2, v8);
  v12 = v11;
  ObjectType = swift_getObjectType();
  (*(v12 + 32))(ObjectType, v12);
  swift_unknownObjectRelease();
  v14 = sub_21DBF563C();
  v15 = (*(*(v14 - 8) + 48))(v10, 1, v14);
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v16 = sub_21DBF84BC();
  __swift_project_value_buffer(v16, qword_280D0F320);
  sub_21D0D3954(v10, v6, &qword_27CE58D68);
  v17 = sub_21DBF84AC();
  v18 = sub_21DBFAE9C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315394;
    v21 = sub_21DBFA7BC();
    v23 = sub_21D0CDFB4(v21, v22, &v30);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = sub_21DBFBA5C();
    v26 = v25;
    sub_21D0CF7E0(v6, &qword_27CE58D68);
    v27 = sub_21D0CDFB4(v24, v26, &v30);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_21D0C9000, v17, v18, "PrivacyChecker: [Notification] shouldRequestPermission: %s, lastViewedNotificationsPermissionWarmingSheetDate: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v20, -1, -1);
    MEMORY[0x223D46520](v19, -1, -1);
  }

  else
  {

    sub_21D0CF7E0(v6, &qword_27CE58D68);
  }

  sub_21D0CF7E0(v10, &qword_27CE58D68);
  return v15 == 1;
}

uint64_t sub_21D3943B4(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 180) = a2;
  *(v5 + 179) = a1;
  v6 = *(a3 - 8);
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 + 64);
  *(v5 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  *(v5 + 64) = swift_task_alloc();
  v7 = sub_21DBF563C();
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = sub_21DBFA84C();
  *(v5 + 104) = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();
  *(v5 + 112) = v9;
  *(v5 + 120) = v8;

  return MEMORY[0x2822009F8](sub_21D394544, v9, v8);
}

uint64_t sub_21D394544()
{
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  *(v0 + 128) = __swift_project_value_buffer(v1, qword_280D0F320);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Notification] Requesting user authorization", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v5 = *(v0 + 179);

  v6 = swift_allocObject();
  *(v0 + 136) = v6;
  *(v6 + 16) = 0;
  if (v5 == 1)
  {
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "PrivacyChecker [Notifications] Presenting warming sheet", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    v32 = *(v0 + 24);

    *(v0 + 177) = 0;
    v31 = (*(v32 + 56) + **(v32 + 56));
    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_21D3949FC;
    v11 = *(v0 + 24);
    v12 = *(v0 + 16);

    return v31(v0 + 176, v0 + 177, 1, v12, v11);
  }

  else if (*(v0 + 180) == 1)
  {
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    *v14 = v0;
    v14[1] = sub_21D3956B0;
    v15 = *(v0 + 136);
    v16 = *(v0 + 24);
    v17 = *(v0 + 32);
    v18 = *(v0 + 16);

    return sub_21D395D0C(v17, v15, v18, v16);
  }

  else
  {
    v20 = *(v0 + 56);
    v19 = *(v0 + 64);
    v21 = *(v0 + 40);
    v22 = *(v0 + 48);
    v23 = *(v0 + 32);
    v33 = *(v0 + 16);
    v24 = v6;

    v25 = sub_21DBFA89C();
    (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
    (*(v21 + 16))(v20, v23, v33);

    v26 = sub_21DBFA83C();
    v27 = (*(v21 + 80) + 48) & ~*(v21 + 80);
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    *(v28 + 16) = v26;
    *(v28 + 24) = v29;
    *(v28 + 32) = v33;
    (*(v21 + 32))(v28 + v27, v20, v33);
    *(v28 + ((v22 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
    sub_21D1B5438(0, 0, v19, &unk_21DC12938, v28);

    v30 = *(v0 + 8);

    return v30(2);
  }
}

uint64_t sub_21D3949FC()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_21D394B1C, v3, v2);
}

uint64_t sub_21D394B1C()
{
  v46 = v0;
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 24);
  v5 = *(v0 + 16);
  v6 = *(v0 + 176);
  *(v0 + 181) = v6;
  v7 = _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  sub_21D395BF4(v7, v5, v4);
  (*(v2 + 8))(v1, v3);
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAEDC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45 = v11;
    *v10 = 136315138;
    *(v0 + 178) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B1D8);
    v12 = sub_21DBFBA5C();
    v14 = sub_21D0CDFB4(v12, v13, &v45);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_21D0C9000, v8, v9, "PrivacyChecker: [Notification] Warming Sheet - user selected: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223D46520](v11, -1, -1);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  if ((*(*(v0 + 24) + 40))())
  {
    *(*(v0 + 136) + 16) = 1;
    v15 = *(v0 + 181);
    if (v15 == 2)
    {
LABEL_5:
      v16 = swift_task_alloc();
      *(v0 + 160) = v16;
      *v16 = v0;
      v16[1] = sub_21D395504;
      v17 = *(v0 + 136);
      v19 = *(v0 + 24);
      v18 = *(v0 + 32);
      v20 = *(v0 + 16);

      return sub_21D395870(v17, v18, v20, v19);
    }

    if (v15)
    {
      v25 = sub_21DBFC64C();

      if ((v25 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    if (*(v0 + 180) == 1)
    {
      v26 = swift_task_alloc();
      *(v0 + 168) = v26;
      *v26 = v0;
      v26[1] = sub_21D3956B0;
      v27 = *(v0 + 136);
      v28 = *(v0 + 24);
      v29 = *(v0 + 32);
      v30 = *(v0 + 16);

      return sub_21D395D0C(v29, v27, v30, v28);
    }

    else
    {
      v31 = *(v0 + 136);
      v33 = *(v0 + 56);
      v32 = *(v0 + 64);
      v34 = *(v0 + 40);
      v35 = *(v0 + 48);
      v36 = *(v0 + 32);
      v44 = *(v0 + 16);

      v37 = sub_21DBFA89C();
      (*(*(v37 - 8) + 56))(v32, 1, 1, v37);
      (*(v34 + 16))(v33, v36, v44);

      v38 = sub_21DBFA83C();
      v39 = (*(v34 + 80) + 48) & ~*(v34 + 80);
      v40 = swift_allocObject();
      v41 = MEMORY[0x277D85700];
      *(v40 + 16) = v38;
      *(v40 + 24) = v41;
      *(v40 + 32) = v44;
      (*(v34 + 32))(v40 + v39, v33, v44);
      *(v40 + ((v35 + v39 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
      sub_21D1B5438(0, 0, v32, &unk_21DC12938, v40);

      v42 = *(v0 + 8);

      return v42(2);
    }
  }

  else
  {
    v43 = (*(*(v0 + 24) + 64) + **(*(v0 + 24) + 64));
    v22 = swift_task_alloc();
    *(v0 + 152) = v22;
    *v22 = v0;
    v22[1] = sub_21D3950A4;
    v23 = *(v0 + 24);
    v24 = *(v0 + 16);

    return v43(1, v24, v23);
  }
}

uint64_t sub_21D3950A4()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_21D3951C4, v3, v2);
}

uint64_t sub_21D3951C4()
{
  v1 = *(v0 + 181);
  if (v1 == 2)
  {
LABEL_2:
    v2 = swift_task_alloc();
    *(v0 + 160) = v2;
    *v2 = v0;
    v2[1] = sub_21D395504;
    v3 = *(v0 + 136);
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = *(v0 + 16);

    return sub_21D395870(v3, v4, v6, v5);
  }

  if (v1)
  {
    v8 = sub_21DBFC64C();

    if ((v8 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  if (*(v0 + 180) == 1)
  {
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_21D3956B0;
    v10 = *(v0 + 136);
    v11 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = *(v0 + 16);

    return sub_21D395D0C(v12, v10, v13, v11);
  }

  else
  {
    v14 = *(v0 + 136);
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    v19 = *(v0 + 32);
    v26 = *(v0 + 16);

    v20 = sub_21DBFA89C();
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
    (*(v17 + 16))(v16, v19, v26);

    v21 = sub_21DBFA83C();
    v22 = (*(v17 + 80) + 48) & ~*(v17 + 80);
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    *(v23 + 16) = v21;
    *(v23 + 24) = v24;
    *(v23 + 32) = v26;
    (*(v17 + 32))(v23 + v22, v16, v26);
    *(v23 + ((v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
    sub_21D1B5438(0, 0, v15, &unk_21DC12938, v23);

    v25 = *(v0 + 8);

    return v25(2);
  }
}

uint64_t sub_21D395504()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_21D395624, v3, v2);
}

uint64_t sub_21D395624()
{

  v1 = *(v0 + 8);

  return v1(2);
}

uint64_t sub_21D3956B0(char a1)
{
  v2 = *v1;
  *(*v1 + 182) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return MEMORY[0x2822009F8](sub_21D3957D8, v4, v3);
}

uint64_t sub_21D3957D8()
{

  v1 = *(v0 + 182);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21D395870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  sub_21DBFA84C();
  v4[9] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](sub_21D39590C, v6, v5);
}

uint64_t sub_21D39590C()
{
  v1 = v0[5];
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v7 = (*(v0[8] + 64) + **(v0[8] + 64));
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_21D395A74;
    v3 = v0[7];
    v4 = v0[8];

    return v7(1, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21D395A74()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21D395B94, v3, v2);
}

uint64_t sub_21D395B94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D395BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  (*(a3 + 16))(a2, a3, v6);
  v10 = v9;
  ObjectType = swift_getObjectType();
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v12 = sub_21DBF563C();
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  (*(v10 + 40))(v8, ObjectType, v10);
  return swift_unknownObjectRelease();
}

uint64_t sub_21D395D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  sub_21DBFA84C();
  v4[10] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[11] = v6;
  v4[12] = v5;

  return MEMORY[0x2822009F8](sub_21D395DA8, v6, v5);
}

uint64_t sub_21D395DA8()
{
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  v0[13] = __swift_project_value_buffer(v1, qword_280D0F320);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker [Notifications] Presenting system TCC", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];

  v7 = *(v5 + 16);
  v0[14] = v7;
  v0[15] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0x6FE1000000000000;
  v8 = v7(v6, v5);
  v10 = v9;
  v0[16] = v8;
  ObjectType = swift_getObjectType();
  v14 = (*(v10 + 88) + **(v10 + 88));
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_21D395FBC;

  return v14(ObjectType, v10);
}

uint64_t sub_21D395FBC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_21D396464;
  }

  else
  {
    swift_unknownObjectRelease();
    v4[19] = a1;
    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_21D3960EC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21D3960EC()
{
  v20 = v0;
  v1 = sub_21D9D9794(*(v0 + 152));
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    if (v1)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v1)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = sub_21D0CDFB4(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Notification] requestAuthorization grantedAccess: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223D46520](v5, -1, -1);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  if (v1)
  {
    v9 = 0;
  }

  else
  {
    (*(v0 + 112))(*(v0 + 64), *(v0 + 72));
    v11 = v10;
    ObjectType = swift_getObjectType();
    (*(v11 + 80))(ObjectType, v11);
    swift_unknownObjectRelease();
    v9 = 1;
  }

  *(v0 + 168) = v9;
  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  *v13 = v0;
  v13[1] = sub_21D3962E0;
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);

  return sub_21D395870(v17, v16, v14, v15);
}

uint64_t sub_21D3962E0()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21D396400, v3, v2);
}

uint64_t sub_21D396400()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 168);

  return v1(v2);
}

uint64_t sub_21D396464()
{
  v19 = v0;
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_21DBFC74C();
    v10 = sub_21D0CDFB4(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21D0C9000, v3, v4, "PrivacyChecker: [Notification] requestAuthorization error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D46520](v7, -1, -1);
    MEMORY[0x223D46520](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 144);
  }

  *(v0 + 168) = 2;
  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  *v12 = v0;
  v12[1] = sub_21D3962E0;
  v13 = *(v0 + 64);
  v14 = *(v0 + 72);
  v15 = *(v0 + 48);
  v16 = *(v0 + 56);

  return sub_21D395870(v16, v15, v13, v14);
}

uint64_t sub_21D396634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = sub_21DBFA84C();
  v7[4] = sub_21DBFA83C();
  v12 = swift_task_alloc();
  v7[5] = v12;
  *v12 = v7;
  v12[1] = sub_21D39670C;

  return sub_21D395D0C(a4, a5, a6, a7);
}

uint64_t sub_21D39670C(char a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D396850, v3, v2);
}

uint64_t sub_21D396850()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

id (*sub_21D3968F4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasViewedContactsAccessAlertForLocation];
  return sub_21D396948;
}

id (*sub_21D396998(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasViewedContactsAccessAlertForMessaging];
  return sub_21D3969EC;
}

id (*sub_21D396A3C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasViewedContactsAccessAlertForCalDAVSharing];
  return sub_21D396A90;
}

id (*sub_21D396AE0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 didShowReminderDeletePrivacyWarning];
  return sub_21D396B34;
}

uint64_t sub_21D396B4C(char a1)
{
  v1[2] = sub_21DBFA84C();
  v1[3] = sub_21DBFA83C();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_21D0EF998;

  return sub_21D591AA8(a1, 1);
}

uint64_t sub_21D396C20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D399954;

  return sub_21D591090();
}

uint64_t sub_21D396CC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D0F00D0;

  return sub_21D38ACCC(a1);
}

uint64_t sub_21D396D74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D0F00D0;

  return sub_21D38BDC0(a1);
}

uint64_t sub_21D396E24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D0F00D0;

  return sub_21D38D2A0(a1);
}

uint64_t sub_21D396ED0(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D0F00D0;

  return sub_21D38E01C(v2);
}

uint64_t sub_21D396F80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D0F00D0;

  return sub_21D38EFC4();
}

uint64_t sub_21D397024(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D399954;

  return (sub_21D5BA740)(v2);
}

uint64_t sub_21D3970D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D399954;

  return sub_21D5BAEF0();
}

uint64_t sub_21D39717C(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return sub_21D3914C4(a1, v4);
}

void sub_21D39723C(_BYTE *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  if (!*a1)
  {
    v6 = *v1;
    swift_beginAccess();
    v7 = *(v6 + 80);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v9 = sub_21DBF563C();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    (*(v7 + 64))(v5, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21D3973CC()
{
  *(v0 + 16) = sub_21DBFA84C();
  *(v0 + 24) = sub_21DBFA83C();
  *(v0 + 41) = 3;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_21D0EF998;

  return TTRIPrivacyChecker.showPrivacyAlert(type:)(v0 + 40, (v0 + 41));
}

uint64_t sub_21D397494(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v4 = a4[4](a3, a4);
    }

    else
    {
      v4 = a4[7](a3, a4);
    }
  }

  else
  {
    v4 = a4[1](a3, a4);
  }

  return v4 & 1;
}

uint64_t sub_21D39752C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_21D397620;

  return v5(v2 + 16);
}

uint64_t sub_21D397620()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_21D397750(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void, void))
{
  if (!*a1)
  {
    return a4[2](1, a3, a4);
  }

  if (*a1 == 1)
  {
    return a4[5](1, a3, a4);
  }

  return a4[8](1, a3, a4);
}

uint64_t sub_21D3977F0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21D0F00D0;

  return sub_21D39383C(a1, v7, v8, v1 + v6, v9, v4, v5);
}

uint64_t sub_21D39791C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21D0F00D0;

  return sub_21D392F44(a1, v7, v8, v1 + v6, v9, v4, v5);
}

uint64_t sub_21D397A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_21D397A68, 0, 0);
}

uint64_t sub_21D397A68()
{
  v1 = *(v0 + 16);
  *v1 = sub_21D3938E8(*(v0 + 24), MEMORY[0x277D45740]) & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21D397AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_21D397B0C, 0, 0);
}

uint64_t sub_21D397B0C()
{
  v1 = *(v0 + 16);
  *v1 = sub_21D3938E8(*(v0 + 24), MEMORY[0x277D45748]) & 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21D397B90(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21D0F00D0;

  return sub_21D393F34(a1, v7, v8, v1 + v6, v4, v5);
}

unint64_t sub_21D397C90()
{
  result = qword_27CE5B1B0;
  if (!qword_27CE5B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B1B0);
  }

  return result;
}

unint64_t sub_21D397CE8()
{
  result = qword_27CE5B1B8;
  if (!qword_27CE5B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B1B8);
  }

  return result;
}

unint64_t sub_21D397D40()
{
  result = qword_27CE5B1C0;
  if (!qword_27CE5B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B1C0);
  }

  return result;
}

unint64_t sub_21D397D98()
{
  result = qword_27CE5B1C8;
  if (!qword_27CE5B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B1C8);
  }

  return result;
}

unint64_t sub_21D397DF0()
{
  result = qword_27CE5B1D0;
  if (!qword_27CE5B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B1D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRPrivacyType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRPrivacyType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of TTRPrivacyChecker.showWarmingSheet(type:animated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 56) + **(a5 + 56));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21D0F00D0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of TTRPrivacyChecker.dismissActiveWarmingSheet(animated:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TTRPrivacyChecker.showPrivacyAlert(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D0F00D0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTRPrivacyChecker.showLocationPrivacyAlertForRemindersInCalendar()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TTRPrivacyChecker.checkAndPromptLocationAccess()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 96) + **(a2 + 96));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D399954;

  return v7(a1, a2);
}

uint64_t dispatch thunk of TTRPrivacyChecker.checkAndPromptAccessForRemindersWithDueDate(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 104) + **(a3 + 104));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TTRPrivacyChecker.checkAndPromptAccessForRemindersWithLocation(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 112) + **(a3 + 112));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TTRPrivacyChecker.checkLocationAccessForRemindersInCalendar()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 120) + **(a3 + 120));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D1B795C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TTRPrivacyChecker.performActionForLocationAccessForRemindersInCalendar(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 128) + **(a3 + 128));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TTRPrivacyChecker.checkAndPromptNotificationAndLocationAccessForRemindersInCalendar()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 136) + **(a2 + 136));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D1237C4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of TTRPrivacyChecker.checkAndPromptUrgentAlarmAccess()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 152) + **(a2 + 152));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D399954;

  return v7(a1, a2);
}

uint64_t dispatch thunk of TTRPrivacyChecker.inlineRequestPresentationState(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 160) + **(a4 + 160));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D0F00D0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTRPrivacyChecker.showReminderDeletePrivacyWarningIfNeeded(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 176))();
}

{
  return (*(a3 + 184))();
}

uint64_t sub_21D3991A8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21D0F00D0;

  return sub_21D396634(a1, v7, v8, v1 + v6, v9, v4, v5);
}

uint64_t sub_21D3992D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D0F00D0;

  return sub_21D3973CC();
}

uint64_t sub_21D399398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D397AEC(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_117Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D3994AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D397A48(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_21D399578(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return sub_21D39752C(a1, v4);
}

uint64_t sub_21D399630(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1B795C;

  return sub_21D39752C(a1, v4);
}

uint64_t sub_21D3996E8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_21DBF7A7C();
  v6 = [a1 nonUserInteractiveStore];
  LOBYTE(a1) = a4();

  return a1 & 1;
}

unint64_t sub_21D3998DC()
{
  result = qword_27CE5B1E0;
  if (!qword_27CE5B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B1E0);
  }

  return result;
}

id TTRICurrentTextInputModeObserver.currentTextInputMode.getter()
{
  v0 = [objc_opt_self() sharedInputModeController];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 currentInputMode];

  return v2;
}

uint64_t TTRICurrentTextInputModeObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  swift_allocObject();
  *(v0 + 24) = sub_21DBF907C();
  return v0;
}

uint64_t TTRICurrentTextInputModeObserver.init()()
{
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  swift_allocObject();
  *(v0 + 24) = sub_21DBF907C();
  return v0;
}

Swift::Void __swiftcall TTRICurrentTextInputModeObserver.startObserving()()
{
  if (!*(v0 + 16))
  {
    v1 = v0;
    v2 = [objc_opt_self() defaultCenter];
    v3 = *MEMORY[0x277D77200];
    memset(v23, 0, sizeof(v23));
    v4 = [objc_opt_self() mainQueue];
    v5 = swift_allocObject();
    swift_weakInit();
    sub_21D0DB414(v23, aBlock);
    v6 = v20;
    if (v20)
    {
      v7 = __swift_project_boxed_opaque_existential_1(aBlock, v20);
      v8 = *(v6 - 1);
      v9 = MEMORY[0x28223BE20](v7);
      v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);

      v12 = sub_21DBFC62C();
      (*(v8 + 8))(v11, v6);
      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }

    else
    {

      v12 = 0;
    }

    v21 = sub_21D399EAC;
    v22 = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0EE46C;
    v20 = &block_descriptor_21;
    v13 = _Block_copy(aBlock);

    v14 = [v2 addObserverForName:v3 object:v12 queue:v4 usingBlock:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    sub_21DBF902C();
    swift_allocObject();

    v18 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D1A8418(v23);

    *(v1 + 16) = v18;
  }
}

uint64_t sub_21D399E04()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
    sub_21D39A120(&qword_280D0C460);
    sub_21DBF912C();
  }

  return result;
}

uint64_t TTRICurrentTextInputModeObserver.deinit()
{

  return v0;
}

uint64_t TTRICurrentTextInputModeObserver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTRICurrentTextInputModeObserver.currentTextInputPrimaryLanguageChangePublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  sub_21D39A120(&qword_280D0C450);
  return sub_21DBF920C();
}

uint64_t sub_21D399FA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  sub_21D39A120(&qword_280D0C450);
  return sub_21DBF920C();
}

id _s15RemindersUICore32TTRICurrentTextInputModeObserverC07currentdE15PrimaryLanguageSSSgvg_0()
{
  result = [objc_opt_self() sharedInputModeController];
  if (result)
  {
    v1 = result;
    v2 = [result currentInputMode];

    if (v2 && (v3 = [v2 primaryLanguage], v2, v3))
    {
      v4 = sub_21DBFA16C();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D39A120(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE5C9E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D39A170()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5B1E8);
  v1 = __swift_project_value_buffer(v0, qword_27CE5B1E8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void NSDirectionalEdgeInsets.init(forInsetting:toBecome:layoutDirection:)(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v21.origin.x = a6;
  v21.origin.y = a7;
  v21.size.width = a8;
  v21.size.height = a9;
  CGRectGetMinY(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetMaxY(v23);
  v24.origin.x = a6;
  v24.origin.y = a7;
  v24.size.width = a8;
  v24.size.height = a9;
  CGRectGetMaxY(v24);
  v25.origin.x = a6;
  v25.origin.y = a7;
  v25.size.width = a8;
  v25.size.height = a9;
  CGRectGetMinX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMinX(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMaxX(v27);
  v28.origin.x = a6;
  v28.origin.y = a7;
  v28.size.width = a8;
  v28.size.height = a9;
  CGRectGetMaxX(v28);
  if (a1 > 1)
  {
    if (qword_27CE56650 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE5B1E8);
    v19 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v19);
    sub_21DAEAB00("unknown layout direction", 24, 2);
    __break(1u);
  }
}

void NSDirectionalEdgeInsets.resolved(for:)(unint64_t a1)
{
  if (a1 >= 2)
  {
    if (qword_27CE56650 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_27CE5B1E8);
    v2 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v2);
    sub_21DAEAB00("unknown layout direction", 24, 2);
    __break(1u);
  }
}

Swift::Bool __swiftcall NSDirectionalEdgeInsets.isAlmostEqual(to:)(NSDirectionalEdgeInsets to)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  trailing = to.trailing;
  bottom = to.bottom;
  leading = to.leading;
  to.leading = 0.0000000149011612;
  if ((sub_21D110D14(*&to.top, *&to.leading, v1, *&to.trailing) & 1) == 0)
  {
    return 0;
  }

  v12.n128_u64[0] = 0x3E50000000000000;
  *v11.i64 = leading;
  if ((sub_21D110D14(v11, v12, v7, v13) & 1) == 0)
  {
    return 0;
  }

  v15.n128_u64[0] = 0x3E50000000000000;
  *v14.i64 = bottom;
  if ((sub_21D110D14(v14, v15, v6, v16) & 1) == 0)
  {
    return 0;
  }

  v18.n128_u64[0] = 0x3E50000000000000;
  *v17.i64 = trailing;

  return sub_21D110D14(v17, v18, v5, v19);
}

uint64_t sub_21D39A58C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v186 = a6;
  v163 = a5;
  v154[4] = a4;
  v154[3] = a3;
  v158 = a2;
  v159 = a1;
  v157 = sub_21DBF563C();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589A0);
  v174 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v182 = (v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v183 = v154 - v11;
  v12 = sub_21DBF6D7C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v167 = v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v177 = v154 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v154 - v18;
  MEMORY[0x28223BE20](v20);
  v162 = v154 - v21;
  v169 = a7;
  v22 = sub_21D39F3BC(a7);
  v168 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B218);
  v23 = sub_21DBFC3DC();
  v24 = v23;
  v25 = 0;
  v26 = *(v22 + 64);
  v170 = v22 + 64;
  v27 = 1 << *(v22 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v30 = (v27 + 63) >> 6;
  v173 = v13;
  v31 = (v13 + 32);
  v175 = v23 + 64;
  v32 = MEMORY[0x277D84F90];
  v166 = v23;
  v171 = v30;
  v172 = v22;
  if (v29)
  {
    do
    {
      v33 = __clz(__rbit64(v29));
      v34 = (v29 - 1) & v29;
LABEL_10:
      v37 = v33 | (v25 << 6);
      v180 = v34;
      v181 = v37;
      v38 = *(*(v22 + 48) + 8 * v37);
      v39 = *(*(v22 + 56) + 8 * v37);
      v40 = *(v39 + 16);
      if (v40)
      {
        v178 = *(*(v22 + 48) + 8 * v37);
        v179 = v25;
        v189 = v32;
        v41 = v38;
        sub_21DBF8E0C();
        v42 = v39;
        sub_21D18E718(0, v40, 0);
        v43 = v189;
        v44 = *(v174 + 80);
        v176 = v42;
        v45 = v42 + ((v44 + 32) & ~v44);
        v185 = *(v174 + 72);
        do
        {
          v46 = v183;
          sub_21D0D3954(v45, v183, &qword_27CE589A0);
          v47 = v182;
          sub_21D0D523C(v46, v182, &qword_27CE589A0);

          v48 = *v31;
          (*v31)(v19, v47 + *(v184 + 48), v12);
          v189 = v43;
          v50 = *(v43 + 16);
          v49 = *(v43 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_21D18E718(v49 > 1, v50 + 1, 1);
            v43 = v189;
          }

          *(v43 + 16) = v50 + 1;
          v48((v43 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v50), v19, v12);
          v45 += v185;
          --v40;
        }

        while (v40);

        v24 = v166;
        v32 = MEMORY[0x277D84F90];
        v30 = v171;
        v22 = v172;
        v51 = v178;
        v25 = v179;
      }

      else
      {
        v51 = *(*(v22 + 48) + 8 * v37);
        v52 = v38;
        v43 = v32;
      }

      v53 = v181;
      *(v175 + ((v181 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v181;
      *(v24[6] + 8 * v53) = v51;
      *(v24[7] + 8 * v53) = v43;
      v54 = v24[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_132;
      }

      v24[2] = v56;
      v29 = v180;
    }

    while (v180);
  }

  v35 = v25;
  while (1)
  {
    v25 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_128;
    }

    if (v25 >= v30)
    {
      break;
    }

    v36 = *(v170 + 8 * v25);
    ++v35;
    if (v36)
    {
      v33 = __clz(__rbit64(v36));
      v34 = (v36 - 1) & v36;
      goto LABEL_10;
    }
  }

  v175 = v12;

  v189 = v169;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B220);
  v57 = sub_21DBF634C();
  sub_21D0D0F1C(&qword_27CE5B228, &qword_27CE5B220);
  sub_21D39F794();
  v182 = v57;
  v58 = v168;
  v59 = sub_21DBFA49C();

  v189 = v32;
  v168 = sub_21D1778B8(v32);
  v60 = v163;
  v165 = *(v163 + 16);
  if (!v165)
  {
LABEL_125:

    v145 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v146 = sub_21DBFA12C();

    sub_21D0D8CF0(0, &qword_280D17880);
    v147 = sub_21DBFA5DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858);
    sub_21D183A0C();
    v148 = sub_21DBF9E5C();
    v149 = v155;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v150 = sub_21DBF55BC();
    (*(v156 + 8))(v149, v157);
    v151 = v159;
    v152 = [v145 initWithObjectID:v159 listType:v158 listID:v146 topLevelElementIDs:v147 secondaryLevelElementIDsByTopLevelElementID:v148 uncommitedElementsAccountID:0 modifiedDate:v150];

    return v152;
  }

  v154[1] = v58;
  v61 = 0;
  v161 = (*(v173 + 80) + 32) & ~*(v173 + 80);
  v164 = v163 + v161;
  v62 = v186;
  v176 = v186 & 0xC000000000000001;
  if (v186 < 0)
  {
    v63 = v186;
  }

  else
  {
    v63 = v186 & 0xFFFFFFFFFFFFFF8;
  }

  v184 = v186 + 56;
  v185 = v59;
  v174 = v59 & 0xC000000000000001;
  v64 = v59 & 0xFFFFFFFFFFFFFF8;
  if (v59 < 0)
  {
    v64 = v59;
  }

  v171 = v64;
  v172 = v63;
  v183 = v59 + 56;
  v180 = (v173 + 8);
  v181 = v173 + 16;
  v160 = v32;
  v65 = v177;
  v66 = v162;
  while (1)
  {
    if (v61 >= *(v60 + 16))
    {
      goto LABEL_129;
    }

    v67 = *(v173 + 72);
    v169 = v61;
    v178 = *(v173 + 16);
    v179 = v67;
    v178(v66, v164 + v67 * v61, v175);
    if (sub_21DBF6D1C())
    {
      v68 = sub_21DBF6D5C();
      v69 = v68;
      if (v176)
      {
        v70 = sub_21DBFBDCC();

        if ((v70 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (!*(v62 + 16))
        {

          goto LABEL_54;
        }

        sub_21D0D8CF0(0, &qword_280D17880);
        v80 = sub_21DBFB62C();
        v81 = -1 << *(v62 + 32);
        v82 = v80 & ~v81;
        if (((*(v184 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
        {
LABEL_50:

          v24 = v166;
LABEL_53:
          v32 = MEMORY[0x277D84F90];
          goto LABEL_54;
        }

        v83 = ~v81;
        while (1)
        {
          v84 = *(*(v62 + 48) + 8 * v82);
          v85 = sub_21DBFB63C();

          if (v85)
          {
            break;
          }

          v82 = (v82 + 1) & v83;
          if (((*(v184 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        v24 = v166;
        v32 = MEMORY[0x277D84F90];
      }
    }

    v71 = sub_21DBF6D5C();
    if (v174)
    {
      v72 = sub_21DBFBDCC();

      if (v72)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v73 = v185;
      if (*(v185 + 16))
      {
        v74 = sub_21DBFB62C();
        v75 = -1 << *(v73 + 32);
        v76 = v74 & ~v75;
        if ((*(v183 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76))
        {
          v77 = ~v75;
          while (1)
          {
            v78 = *(*(v185 + 48) + 8 * v76);
            v79 = sub_21DBFB63C();

            if (v79)
            {
              break;
            }

            v76 = (v76 + 1) & v77;
            if (((*(v183 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_53;
        }
      }

LABEL_41:

      v32 = MEMORY[0x277D84F90];
    }

    sub_21DBF6D5C();
    MEMORY[0x223D42D80]();
    if (*((v189 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v189 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v160 = v189;
LABEL_54:
    v188 = v32;
    v86 = sub_21DBF6D6C();
    if (v86)
    {
      break;
    }

LABEL_85:
    v109 = sub_21DBF6D5C();
    v110 = v109;
    if (v24[2] && (v111 = sub_21D17E07C(v109), (v112 & 1) != 0))
    {
      v113 = *(v24[7] + 8 * v111);
      sub_21DBF8E0C();

      v187 = v32;
      v114 = *(v113 + 16);
      if (v114)
      {
        v115 = 0;
        v116 = v113 + v161;
        v170 = v32;
        v117 = v175;
        v118 = v167;
        while (1)
        {
          if (v115 >= *(v113 + 16))
          {
            goto LABEL_127;
          }

          v178(v118, v116 + v115 * v179, v117);
          if ((sub_21DBF6D1C() & 1) == 0)
          {
            goto LABEL_96;
          }

          v119 = sub_21DBF6D5C();
          if (v176)
          {
            v120 = sub_21DBFBDCC();

            if (v120)
            {
              goto LABEL_96;
            }
          }

          else
          {
            if (*(v62 + 16))
            {
              sub_21D0D8CF0(0, &qword_280D17880);
              v122 = sub_21DBFB62C();
              v123 = -1 << *(v62 + 32);
              v124 = v122 & ~v123;
              if ((*(v184 + ((v124 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v124))
              {
                v125 = ~v123;
                while (1)
                {
                  v126 = *(*(v186 + 48) + 8 * v124);
                  v127 = sub_21DBFB63C();

                  if (v127)
                  {
                    break;
                  }

                  v124 = (v124 + 1) & v125;
                  if (((*(v184 + ((v124 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v124) & 1) == 0)
                  {
                    goto LABEL_89;
                  }
                }

                v62 = v186;
                v117 = v175;
                v118 = v167;
LABEL_96:
                sub_21DBF6D5C();
                v121 = (*v180)(v118, v117);
                MEMORY[0x223D42D80](v121);
                if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_21DBFA63C();
                }

                sub_21DBFA6CC();
                v170 = v187;
                goto LABEL_91;
              }
            }

LABEL_89:

            v62 = v186;
            v117 = v175;
            v118 = v167;
          }

          (*v180)(v118, v117);
LABEL_91:
          if (++v115 == v114)
          {

            v60 = v163;
            v65 = v177;
            v66 = v162;
            v32 = MEMORY[0x277D84F90];
            v128 = v170;
            goto LABEL_109;
          }
        }
      }

      v128 = v32;
LABEL_109:
      sub_21D562328(v128);
      v24 = v166;
    }

    else
    {
    }

    v129 = v169;
    v130 = v188;
    if (v188 >> 62)
    {
      if (sub_21DBFBD7C())
      {
LABEL_112:
        v131 = sub_21DBF6D5C();
        sub_21DBF8E0C();
        v132 = v168;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v187 = v132;
        v134 = sub_21D17E07C(v131);
        v136 = *(v132 + 16);
        v137 = (v135 & 1) == 0;
        v55 = __OFADD__(v136, v137);
        v138 = v136 + v137;
        if (v55)
        {
          goto LABEL_130;
        }

        v139 = v135;
        if (*(v132 + 24) >= v138)
        {
          v129 = v169;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v144 = v134;
            sub_21D221214();
            v129 = v169;
            v134 = v144;
            v32 = MEMORY[0x277D84F90];
          }

          v65 = v177;
        }

        else
        {
          sub_21D217430(v138, isUniquelyReferenced_nonNull_native);
          v134 = sub_21D17E07C(v131);
          if ((v139 & 1) != (v140 & 1))
          {
            goto LABEL_133;
          }

          v65 = v177;
          v129 = v169;
        }

        v168 = v187;
        if (v139)
        {
          *(*(v187 + 56) + 8 * v134) = v130;
        }

        else
        {
          v141 = v168;
          *(v187 + 8 * (v134 >> 6) + 64) |= 1 << v134;
          *(v141[6] + 8 * v134) = v131;
          *(v141[7] + 8 * v134) = v130;
          v142 = v141[2];
          v55 = __OFADD__(v142, 1);
          v143 = v142 + 1;
          if (v55)
          {
            goto LABEL_131;
          }

          v141[2] = v143;
        }
      }
    }

    else if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_112;
    }

    v61 = v129 + 1;
    (*v180)(v66, v175);

    if (v61 == v165)
    {
      goto LABEL_125;
    }
  }

  v87 = v86;
  v88 = *(v86 + 16);
  if (!v88)
  {
LABEL_84:

    v60 = v163;
    v66 = v162;
    v24 = v166;
    v32 = MEMORY[0x277D84F90];
    goto LABEL_85;
  }

  v89 = 0;
  v90 = v86 + v161;
  v91 = v175;
  while (v89 < *(v87 + 16))
  {
    v178(v65, v90 + v89 * v179, v91);
    if (sub_21DBF6D1C())
    {
      v92 = sub_21DBF6D5C();
      if (v176)
      {
        v93 = sub_21DBFBDCC();

        v65 = v177;
        if ((v93 & 1) == 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (!*(v62 + 16) || (sub_21D0D8CF0(0, &qword_280D17880), v103 = sub_21DBFB62C(), v104 = -1 << *(v62 + 32), v105 = v103 & ~v104, ((*(v184 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0))
        {
LABEL_57:

          v62 = v186;
LABEL_58:
          v91 = v175;
          v65 = v177;
          goto LABEL_59;
        }

        v106 = ~v104;
        while (1)
        {
          v107 = *(*(v186 + 48) + 8 * v105);
          v108 = sub_21DBFB63C();

          if (v108)
          {
            break;
          }

          v105 = (v105 + 1) & v106;
          if (((*(v184 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        v62 = v186;
        v91 = v175;
        v65 = v177;
      }
    }

    v94 = sub_21DBF6D5C();
    if (!v174)
    {
      v96 = v185;
      if (!*(v185 + 16) || (v97 = sub_21DBFB62C(), v98 = -1 << *(v96 + 32), v99 = v97 & ~v98, ((*(v183 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99) & 1) == 0))
      {
LABEL_72:

        v91 = v175;
        v65 = v177;
LABEL_73:
        sub_21DBF6D5C();
        MEMORY[0x223D42D80]();
        if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        goto LABEL_59;
      }

      v100 = ~v98;
      while (1)
      {
        v101 = *(*(v185 + 48) + 8 * v99);
        v102 = sub_21DBFB63C();

        if (v102)
        {
          break;
        }

        v99 = (v99 + 1) & v100;
        if (((*(v183 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99) & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      goto LABEL_58;
    }

    v95 = sub_21DBFBDCC();

    if ((v95 & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_59:
    ++v89;
    (*v180)(v65, v91);
    if (v89 == v88)
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  sub_21D0D8CF0(0, &qword_280D17880);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D39B7F8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v148 = a6;
  v151 = a5;
  v141[2] = a4;
  v141[1] = a3;
  v145 = a2;
  v146 = a1;
  v144 = sub_21DBF563C();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B208);
  MEMORY[0x28223BE20](v10 - 8);
  v162 = v141 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B210);
  MEMORY[0x28223BE20](v12 - 8);
  v158 = v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v153 = v141 - v15;
  v16 = sub_21DBF6D7C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v147 = v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v163 = v141 - v20;
  MEMORY[0x28223BE20](v21);
  v174 = v141 - v22;
  MEMORY[0x28223BE20](v23);
  v166 = v141 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = v141 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v141 - v29;
  MEMORY[0x28223BE20](v31);
  v152 = v141 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = v141 - v34;
  MEMORY[0x28223BE20](v36);
  v161 = v141 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58990);
  v155 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v168 = v141 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v171 = v141 - v42;
  v43 = MEMORY[0x277D84FA0];
  v184 = MEMORY[0x277D84FA0];
  v44 = *(a7 + 16);
  v154 = a7;
  v175 = v17;
  v159 = v45;
  v160 = v44;
  v164 = v27;
  if (!v44)
  {
    goto LABEL_39;
  }

  v46 = 0;
  v176 = (v17 + 16);
  v167 = v30;
  v172 = v35;
  v173 = (v17 + 8);
  while (1)
  {
    if (v46 >= *(a7 + 16))
    {
      goto LABEL_119;
    }

    v47 = a7 + ((*(v155 + 80) + 32) & ~*(v155 + 80));
    v48 = *(v155 + 72);
    v170 = v46;
    v49 = v171;
    v7 = v41;
    sub_21D0D3954(v47 + v48 * v46, v171, &qword_27CE58990);
    v43 = v168;
    sub_21D0D3954(v49, v168, &qword_27CE58990);

    v50 = sub_21DBF6D5C();
    v51 = *v173;
    (*v173)(v43, v16);
    sub_21D29B0D0(&v183, v50);

    sub_21D0D3954(v49, v43, &qword_27CE58990);
    v52 = *(v43 + *(v7 + 64));
    v181 = v51;
    (v51)(v43, v16);
    v180 = *(v52 + 16);
    if (v180)
    {
      break;
    }

LABEL_3:

    v27 = v164;
    v46 = v170 + 1;
    sub_21D39F354(v171);
    a7 = v154;
    v41 = v159;
    if (v46 == v160)
    {
      v43 = v184;
      v17 = v175;
LABEL_39:
      v79 = v151;
      v150 = *(v151 + 16);
      if (!v150)
      {

        v109 = MEMORY[0x277D84F90];
LABEL_86:
        v7 = 0;
        v176 = (v155 + 48);
        v177 = (v155 + 56);
        v173 = (v17 + 32);
        v180 = (v17 + 8);
        v181 = (v17 + 16);
        v110 = v158;
        v111 = v160;
        while (1)
        {
          if (v7 == v111)
          {
            v113 = 1;
            v114 = v111;
          }

          else
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_121;
            }

            if (v7 >= *(v154 + 16))
            {
              goto LABEL_122;
            }

            sub_21D0D3954(v154 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v7, v110, &qword_27CE58990);
            v110 = v158;
            v113 = 0;
            v114 = v7 + 1;
          }

          v115 = v159;
          (*v177)(v110, v113, 1, v159);
          v116 = v110;
          v117 = v153;
          sub_21D0D523C(v116, v153, &qword_27CE5B210);
          if ((*v176)(v117, 1, v115) == 1)
          {
            break;
          }

          v118 = v117;
          v119 = *(v117 + *(v115 + 48));
          v120 = *(v118 + *(v115 + 64));
          v178 = v114;
          v179 = v120;
          (*v173)(v166);
          v121 = v109[2];
          if (v121)
          {
            v7 = 0;
            while (v7 < v109[2])
            {
              v122 = v175;
              v123 = v109;
              v124 = v109 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v7;
              v125 = v174;
              (*(v175 + 16))(v174, v124, v16);
              sub_21D0D8CF0(0, &qword_280D17680);
              v43 = sub_21DBF6D5C();
              v126 = sub_21DBFB63C();

              (*(v122 + 8))(v125, v16);
              ++v7;
              if (v126)
              {
                v109 = v123;
                goto LABEL_103;
              }

              v109 = v123;
              if (v121 == v7)
              {
                v7 = v123[2];
                goto LABEL_103;
              }
            }

            goto LABEL_113;
          }

          v7 = 0;
LABEL_103:
          v43 = sub_21DBF6D5C();
          sub_21DBF6D1C();
          v127 = v163;
          sub_21DBF6D4C();
          v17 = v175;
          if (v109[2] < v7)
          {
            goto LABEL_116;
          }

          (*v181)(v162, v127, v16);
          v128 = v109[2];
          if (v128 < v7)
          {
            goto LABEL_117;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v184 = v109;
          if (!isUniquelyReferenced_nonNull_native || v128 >= v109[3] >> 1)
          {
            v109 = sub_21D21145C(isUniquelyReferenced_nonNull_native, v128 + 1, 1, v109);
            v184 = v109;
          }

          sub_21D50570C(v7, v7, 1, v162);

          v112 = *v180;
          (*v180)(v163, v16);
          v112(v166, v16);
          v110 = v158;
          v111 = v160;
          v7 = v178;
        }

        v183 = MEMORY[0x277D84F90];
        v182 = sub_21D1778B8(MEMORY[0x277D84F90]);
        v130 = v109[2];
        if (!v130)
        {
LABEL_112:

          v132 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v133 = sub_21DBFA12C();

          sub_21D0D8CF0(0, &qword_280D17880);
          v134 = sub_21DBFA5DC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858);
          sub_21D183A0C();
          v135 = sub_21DBF9E5C();
          v136 = v142;
          _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
          v137 = sub_21DBF55BC();
          (*(v143 + 8))(v136, v144);
          v138 = v146;
          v139 = [v132 initWithObjectID:v146 listType:v145 listID:v133 topLevelElementIDs:v134 secondaryLevelElementIDsByTopLevelElementID:v135 uncommitedElementsAccountID:0 modifiedDate:v137];

          return v139;
        }

        v131 = 0;
        v7 = 0;
        while (v131 < v109[2])
        {
          v43 = v147;
          (*(v17 + 16))(v147, v109 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v131, v16);
          sub_21D39EE74(v43, v148, &v183, &v182);
          ++v131;
          (*v180)(v43, v16);
          if (v130 == v131)
          {
            goto LABEL_112;
          }
        }

        goto LABEL_120;
      }

      v180 = sub_21D0D8CF0(0, &qword_280D17880);
      v7 = 0;
      v177 = (v43 & 0xC000000000000001);
      v170 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v149 = v79 + v170;
      v176 = (v17 + 16);
      v80 = v43 & 0xFFFFFFFFFFFFFF8;
      if (v43 < 0)
      {
        v80 = v43;
      }

      v168 = v80;
      v181 = (v43 + 56);
      v165 = (v17 + 8);
      v178 = v17 + 32;
      v156 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v7 >= *(v79 + 16))
        {
          goto LABEL_118;
        }

        v82 = *(v17 + 72);
        v157 = v7;
        v179 = v82;
        v173 = *(v17 + 16);
        (v173)(v161, v149 + v82 * v7, v16);
        v83 = sub_21DBF6D5C();
        if (v177)
        {
          v84 = sub_21DBFBDCC();

          if ((v84 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (!*(v43 + 16) || (v85 = sub_21DBFB62C(), v86 = -1 << *(v43 + 32), v87 = v85 & ~v86, ((*(v181 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0))
          {
LABEL_55:

            v17 = v175;
LABEL_56:
            v90 = sub_21DBF6D6C();
            if (v90)
            {
              v91 = v90;
              v172 = *(v90 + 16);
              if (v172)
              {
                v92 = 0;
                v171 = v90 + v170;
                v93 = MEMORY[0x277D84F90];
                v169 = v90;
                do
                {
                  if (v92 >= *(v91 + 16))
                  {
                    goto LABEL_114;
                  }

                  (v173)(v30, v171 + v92 * v179, v16);
                  v7 = sub_21DBF6D5C();
                  if (v177)
                  {
                    v94 = sub_21DBFBDCC();

                    if ((v94 & 1) == 0)
                    {
                      goto LABEL_72;
                    }
                  }

                  else
                  {
                    if (!*(v43 + 16) || (v95 = sub_21DBFB62C(), v96 = -1 << *(v43 + 32), v97 = v95 & ~v96, ((*(v181 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0))
                    {
LABEL_71:

                      v27 = v164;
LABEL_72:
                      v101 = *v178;
                      (*v178)(v27, v30, v16);
                      v102 = swift_isUniquelyReferenced_nonNull_native();
                      v184 = v93;
                      if ((v102 & 1) == 0)
                      {
                        sub_21D18E718(0, *(v93 + 16) + 1, 1);
                        v93 = v184;
                      }

                      v104 = *(v93 + 16);
                      v103 = *(v93 + 24);
                      v7 = v104 + 1;
                      if (v104 >= v103 >> 1)
                      {
                        sub_21D18E718(v103 > 1, v104 + 1, 1);
                        v93 = v184;
                      }

                      *(v93 + 16) = v7;
                      v101((v93 + v170 + v104 * v179), v27, v16);
                      v91 = v169;
                      goto LABEL_61;
                    }

                    v98 = ~v96;
                    while (1)
                    {
                      v99 = *(*(v43 + 48) + 8 * v97);
                      v100 = sub_21DBFB63C();

                      if (v100)
                      {
                        break;
                      }

                      v97 = (v97 + 1) & v98;
                      if (((*(v181 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
                      {
                        goto LABEL_71;
                      }
                    }

                    v27 = v164;
                    v91 = v169;
                  }

                  (*v165)(v30, v16);
LABEL_61:
                  ++v92;
                }

                while (v92 != v172);
              }

              v17 = v175;
            }

            v105 = v161;
            sub_21DBF6D5C();
            sub_21DBF6D1C();
            sub_21DBF6D4C();
            (*v165)(v105, v16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v156 = sub_21D21145C(0, *(v156 + 2) + 1, 1, v156);
            }

            v81 = v157;
            v107 = *(v156 + 2);
            v106 = *(v156 + 3);
            if (v107 >= v106 >> 1)
            {
              v156 = sub_21D21145C(v106 > 1, v107 + 1, 1, v156);
            }

            v108 = v156;
            *(v156 + 2) = v107 + 1;
            (*v178)(&v108[v170 + v107 * v179], v152, v16);
            goto LABEL_45;
          }

          v88 = ~v86;
          while (1)
          {
            v7 = *(*(v43 + 48) + 8 * v87);
            v89 = sub_21DBFB63C();

            if (v89)
            {
              break;
            }

            v87 = (v87 + 1) & v88;
            if (((*(v181 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
            {
              goto LABEL_55;
            }
          }

          v17 = v175;
        }

        (*v165)(v161, v16);
        v81 = v157;
LABEL_45:
        v7 = v81 + 1;
        v79 = v151;
        if (v7 == v150)
        {

          v109 = v156;
          goto LABEL_86;
        }
      }
    }
  }

  v53 = 0;
  v54 = (*(v175 + 80) + 32) & ~*(v175 + 80);
  v169 = v52;
  v179 = v52 + v54;
  v55 = *(v175 + 72);
  v177 = *(v175 + 16);
  v178 = v55;
  (v177)(v35, v52 + v54, v16);
  while (1)
  {
    v53 = (v53 + 1);
    v43 = sub_21DBF6D5C();
    (v181)(v35, v16);
    v57 = v184;
    if ((v184 & 0xC000000000000001) == 0)
    {
      sub_21D0D8CF0(0, &qword_280D17880);
      v60 = sub_21DBFB62C();
      v61 = -1 << *(v57 + 32);
      v7 = v60 & ~v61;
      if (((*(v57 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
LABEL_7:
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v183 = v57;
        sub_21D9AC0C0(v43, v7, v56);
        v184 = v183;
        goto LABEL_8;
      }

      v62 = v16;
      v63 = ~v61;
      while (1)
      {
        v64 = *(*(v57 + 48) + 8 * v7);
        v65 = sub_21DBFB63C();

        if (v65)
        {
          break;
        }

        v7 = (v7 + 1) & v63;
        if (((*(v57 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          v57 = v184;
          v16 = v62;
          v30 = v167;
          v35 = v172;
          goto LABEL_7;
        }
      }

      v16 = v62;
      v30 = v167;
      v35 = v172;
      if (v53 != v180)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    }

    if (v184 < 0)
    {
      v58 = v184;
    }

    else
    {
      v58 = v184 & 0xFFFFFFFFFFFFFF8;
    }

    v7 = v43;
    sub_21DBF8E0C();
    v59 = sub_21DBFBD8C();

    if (v59)
    {

      v182 = v59;
      sub_21D0D8CF0(0, &qword_280D17880);
      swift_dynamicCast();

      goto LABEL_8;
    }

    v66 = sub_21DBFBD7C();
    if (__OFADD__(v66, 1))
    {
      goto LABEL_115;
    }

    v43 = sub_21D29F4B8(v58, v66 + 1);
    v183 = v43;
    v67 = *(v43 + 16);
    if (*(v43 + 24) <= v67)
    {
      sub_21D8ACA8C(v67 + 1);
      v43 = v183;
    }

    v68 = v7;
    v69 = sub_21DBFB62C();
    v70 = v43 + 56;
    v71 = -1 << *(v43 + 32);
    v72 = v69 & ~v71;
    v73 = v72 >> 6;
    if (((-1 << v72) & ~*(v43 + 56 + 8 * (v72 >> 6))) != 0)
    {
      v74 = __clz(__rbit64((-1 << v72) & ~*(v43 + 56 + 8 * (v72 >> 6)))) | v72 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_36;
    }

    v75 = 0;
    v76 = (63 - v71) >> 6;
LABEL_32:
    if (++v73 == v76 && (v75 & 1) != 0)
    {
      break;
    }

    v77 = v73 == v76;
    if (v73 == v76)
    {
      v73 = 0;
    }

    v75 |= v77;
    v78 = *(v70 + 8 * v73);
    if (v78 == -1)
    {
      goto LABEL_32;
    }

    v74 = __clz(__rbit64(~v78)) + (v73 << 6);
LABEL_36:
    *(v70 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
    *(*(v43 + 48) + 8 * v74) = v68;
    ++*(v43 + 16);

    v184 = v43;
LABEL_8:
    if (v53 == v180)
    {
      goto LABEL_3;
    }

LABEL_9:
    (v177)(v35, v179 + v178 * v53, v16);
  }

  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);

  result = (*v180)(v43, v16);
  __break(1u);
  return result;
}

uint64_t REMManualOrdering.ChangeReason.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_21DBFC45C();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t REMManualOrdering.ChangeReason.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6874695765766F6DLL;
  v3 = 0x694C6F5465766F6DLL;
  v4 = 0xD00000000000001DLL;
  if (v1 != 3)
  {
    v4 = 0x754F746E65646E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_21D39CD6C()
{
  result = qword_27CE5B200;
  if (!qword_27CE5B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B200);
  }

  return result;
}

uint64_t sub_21D39CDC0()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D39CECC()
{
  sub_21DBFA27C();
}

uint64_t sub_21D39CFC4()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

void sub_21D39D0D8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE007473694C6E69;
  v4 = 0x6874695765766F6DLL;
  v5 = 0xEA00000000007473;
  v6 = 0x694C6F5465766F6DLL;
  v7 = 0x800000021DC437C0;
  v8 = 0xD00000000000001DLL;
  if (v2 != 3)
  {
    v8 = 0x754F746E65646E69;
    v7 = 0xED0000746E656474;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x800000021DC43790;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_21D39D1B0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9)
{
  v197 = a8;
  v213 = a6;
  v204 = a5;
  v191[2] = a4;
  v191[1] = a3;
  v195 = a2;
  v196 = a1;
  v194 = sub_21DBF563C();
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v192 = v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF6D7C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v219 = v191 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v191 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v191 - v21;
  v23 = *(a9 + 8);
  v208 = *a9;
  v209 = v23;
  v206 = *(a9 + 16);
  v24 = a7[2];
  v25 = MEMORY[0x277D84F90];
  v222 = v26;
  v205 = v12;
  v225 = v14;
  v229 = a7;
  v230 = v191 - v21;
  if (v24)
  {
    v238 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v27 = *(v12 + 16);
    v28 = a7 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v29 = *(v12 + 72);
    do
    {
      v27(v19, v28, v11);
      sub_21DBF6D5C();
      (*(v12 + 8))(v19, v11);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      v11 = v222;
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v28 += v29;
      --v24;
    }

    while (v24);
    v30 = v238;
    v14 = v225;
    v25 = MEMORY[0x277D84F90];
    a7 = v229;
    v22 = v230;
    if (!(v238 >> 62))
    {
      goto LABEL_5;
    }

LABEL_28:
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21DBF8E0C();
    v31 = sub_21DBFC33C();

    goto LABEL_6;
  }

  v30 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_28;
  }

LABEL_5:
  sub_21DBF8E0C();
  sub_21DBFC65C();
  sub_21D0D8CF0(0, &qword_280D17880);
  v31 = v30;
LABEL_6:
  v32 = v213;

  v237 = sub_21D19ED08(v31);

  v238 = v25;
  v236 = a7[2];
  if (!v236)
  {

    v223 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v33 = a7;
  v34 = 0;
  v35 = *(v205 + 16);
  v234 = v33 + ((*(v205 + 80) + 32) & ~*(v205 + 80));
  v235 = v35;
  v36 = *(v205 + 72);
  v232 = (v32 & 0xC000000000000001);
  v233 = v36;
  v37 = v32 & 0xFFFFFFFFFFFFFF8;
  if (v32 < 0)
  {
    v37 = v32;
  }

  v231 = v37;
  v38 = v32 + 56;
  v223 = MEMORY[0x277D84F90];
  v39 = (v205 + 8);
  do
  {
    (v235)(v22, v234 + v233 * v34, v11);
    if (sub_21DBF6D1C())
    {
      v40 = sub_21DBF6D5C();
      if (v232)
      {
        v41 = sub_21DBFBDCC();

        v11 = v222;
        if ((v41 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (!*(v32 + 16) || (sub_21D0D8CF0(0, &qword_280D17880), v43 = sub_21DBFB62C(), v44 = -1 << *(v32 + 32), v45 = v43 & ~v44, ((*(v38 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0))
        {
LABEL_10:

          v11 = v222;
          v14 = v225;
          v22 = v230;
LABEL_11:
          (*v39)(v22, v11);
          goto LABEL_12;
        }

        v46 = ~v44;
        while (1)
        {
          v47 = *(*(v32 + 48) + 8 * v45);
          v48 = sub_21DBFB63C();

          if (v48)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
          v32 = v213;
          if (((*(v38 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        v32 = v213;
        v11 = v222;
        v14 = v225;
        v22 = v230;
      }
    }

    sub_21DBF6D5C();
    v42 = (*v39)(v22, v11);
    MEMORY[0x223D42D80](v42);
    if (*((v238 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v238 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
      v22 = v230;
    }

    sub_21DBFA6CC();
    v223 = v238;
LABEL_12:
    ++v34;
  }

  while (v34 != v236);

  v25 = MEMORY[0x277D84F90];
LABEL_30:
  v240 = v25;
  v49 = sub_21D1778B8(v25);
  v50 = v204;
  v207 = v49;
  v51 = 0;
  if ((v209 & 0x8000000000000000) == 0 && v209 == 2 && !v208)
  {
    sub_21D39F308(0, v209, v206);
    v52 = sub_21DBF8E0C();
    sub_21D562328(v52);
    v51 = 1;
  }

  v203 = *(v50 + 16);
  if (!v203)
  {
LABEL_223:

    v180 = v209;
    if ((v209 & 0x8000000000000000) == 0)
    {
      if (v209 == 2 && v208 == 1)
      {
        sub_21D562328(v223);
LABEL_229:
        v181 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v182 = sub_21DBFA12C();

        sub_21D0D8CF0(0, &qword_280D17880);
        v183 = sub_21DBFA5DC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858);
        sub_21D183A0C();
        v184 = sub_21DBF9E5C();
        v185 = v192;
        _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
        v186 = sub_21DBF55BC();
        (*(v193 + 8))(v185, v194);
        v187 = v196;
        v188 = v197;
        v189 = [v181 initWithObjectID:v196 listType:v195 listID:v182 topLevelElementIDs:v183 secondaryLevelElementIDsByTopLevelElementID:v184 uncommitedElementsAccountID:v197 modifiedDate:v186];

        return v189;
      }

      v180 = v209;
    }

    sub_21D39F2BC(v208, v180, v206);

    goto LABEL_229;
  }

  v53 = 0;
  v200 = (*(v205 + 80) + 32) & ~*(v205 + 80);
  v202 = v50 + v200;
  v211 = v205 + 16;
  v201 = v209 & 0x80000000000000FFLL;
  v220 = v32 & 0xC000000000000001;
  v54 = v32 & 0xFFFFFFFFFFFFFF8;
  if (v32 < 0)
  {
    v54 = v32;
  }

  v214 = v54;
  v233 = v32 + 56;
  v224 = v237 & 0xC000000000000001;
  v55 = v237 & 0xFFFFFFFFFFFFFF8;
  if (v237 < 0)
  {
    v55 = v237;
  }

  v215 = v55;
  v235 = (v237 + 56);
  v199 = v209;
  v57 = v209 == 2 && v208 == 0;
  v198 = v57;
  v58 = v223;
  v221 = v223 & 0xFFFFFFFFFFFFFF8;
  if (v223 >= 0)
  {
    v58 = v223 & 0xFFFFFFFFFFFFFF8;
  }

  v212 = v58;
  v231 = (v205 + 8);
  while (1)
  {
    if (v53 >= *(v50 + 16))
    {
      goto LABEL_234;
    }

    v60 = v201 != 0;
    v61 = *(v205 + 72);
    v210 = v53;
    v230 = v61;
    v229 = *(v205 + 16);
    (v229)(v219, v202 + v61 * v53, v11);
    if (((v51 | v60) & 1) == 0)
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      sub_21D157850(v208, 0);
      v62 = sub_21DBF6D5C();
      v51 = sub_21DBFB63C();

      if (v51)
      {
        v63 = sub_21DBF8E0C();
        sub_21D562328(v63);
      }

      sub_21D39F2BC(v208, v209, v206);
    }

    if (sub_21DBF6D1C())
    {
      v64 = sub_21DBF6D5C();
      v65 = v64;
      if (v220)
      {
        v66 = sub_21DBFBDCC();

        if ((v66 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (!*(v32 + 16))
        {

          if (v51)
          {
            goto LABEL_61;
          }

          goto LABEL_72;
        }

        sub_21D0D8CF0(0, &qword_280D17880);
        v85 = sub_21DBFB62C();
        v86 = -1 << *(v32 + 32);
        v87 = v85 & ~v86;
        if (((*(v233 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
        {
          goto LABEL_85;
        }

        v88 = ~v86;
        while (1)
        {
          v89 = *(*(v32 + 48) + 8 * v87);
          v90 = sub_21DBFB63C();

          if (v90)
          {
            break;
          }

          v87 = (v87 + 1) & v88;
          if (((*(v233 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
          {
            goto LABEL_85;
          }
        }

        v50 = v204;
        v14 = v225;
      }
    }

    v65 = sub_21DBF6D5C();
    if (v224)
    {
      v67 = sub_21DBFBDCC();

      if (v67)
      {
LABEL_60:
        if (v51)
        {
          goto LABEL_61;
        }

        goto LABEL_72;
      }
    }

    else
    {
      if (*(v237 + 16))
      {
        sub_21D0D8CF0(0, &qword_280D17880);
        v69 = v237;
        v70 = sub_21DBFB62C();
        v71 = -1 << *(v69 + 32);
        v72 = v70 & ~v71;
        if ((*&v235[(v72 >> 3) & 0xFFFFFFFFFFFFFF8] >> v72))
        {
          v73 = ~v71;
          while (1)
          {
            v74 = *(*(v237 + 48) + 8 * v72);
            v75 = sub_21DBFB63C();

            if (v75)
            {
              break;
            }

            v72 = (v72 + 1) & v73;
            if (((*&v235[(v72 >> 3) & 0xFFFFFFFFFFFFFF8] >> v72) & 1) == 0)
            {
              goto LABEL_68;
            }
          }

LABEL_85:

          v50 = v204;
          v14 = v225;
          if (v51)
          {
            goto LABEL_61;
          }

          goto LABEL_72;
        }
      }

LABEL_68:

      v50 = v204;
      v14 = v225;
    }

    sub_21DBF6D5C();
    MEMORY[0x223D42D80]();
    if (*((v240 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v240 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    if (v51)
    {
LABEL_61:
      v68 = v209;
      if ((v209 & 0x8000000000000000) == 0)
      {
        v51 = 1;
LABEL_90:
        v232 = 0;
        v239 = MEMORY[0x277D84F90];
        v68 = 255;
        LODWORD(v234) = 1;
        goto LABEL_91;
      }

      goto LABEL_76;
    }

LABEL_72:
    v68 = v209;
    if ((v209 & 0x8000000000000000) == 0)
    {
      if (v199 == 1)
      {
        sub_21D0D8CF0(0, &qword_280D17680);
        v76 = v208;
        sub_21D157850(v208, 1u);
        v77 = sub_21DBF6D5C();
        v78 = sub_21DBFB63C();

        if (v78)
        {
          v79 = sub_21DBF8E0C();
          sub_21D562328(v79);
          sub_21D39F2BC(v76, v209, v206);
          v51 = 1;
          goto LABEL_90;
        }

        sub_21D39F2BC(v76, v209, v206);
      }

      v51 = 0;
      goto LABEL_90;
    }

LABEL_76:
    v80 = v208;
    sub_21D157850(v208, v68);
    v81 = v206;
    v82 = sub_21DBF6D5C();
    sub_21D0D8CF0(0, &qword_280D17880);
    v83 = sub_21DBFB63C();

    if ((v83 & 1) == 0)
    {
      sub_21D157478(v80, v68);
      v14 = v225;
      goto LABEL_90;
    }

    v239 = MEMORY[0x277D84F90];
    if (v68 == 0xFF)
    {
      LODWORD(v234) = 1;
      v232 = v208;
      v14 = v225;
      v68 = 255;
    }

    else
    {
      v14 = v225;
      if (v198)
      {
        v84 = sub_21DBF8E0C();
        sub_21D562328(v84);
        LODWORD(v234) = 0;
        v232 = 0;
        v68 = 2;
      }

      else
      {
        LODWORD(v234) = 0;
        v232 = v208;
      }
    }

LABEL_91:
    v91 = sub_21DBF6D6C();
    if (!v91)
    {
      goto LABEL_198;
    }

    v228 = *(v91 + 16);
    if (v228)
    {
      break;
    }

LABEL_197:

    v50 = v204;
LABEL_198:
    if ((v234 & 1) == 0)
    {
LABEL_199:
      if (v68 == 2 && v232 == 1)
      {
        v164 = sub_21DBF8E0C();
        sub_21D562328(v164);
      }
    }

LABEL_203:
    v165 = v239;
    if (v239 >> 62)
    {
      if (sub_21DBFBD7C())
      {
LABEL_205:
        v166 = sub_21DBF6D5C();
        sub_21DBF8E0C();
        v167 = v207;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v238 = v167;
        v170 = sub_21D17E07C(v166);
        v171 = *(v167 + 16);
        v172 = (v169 & 1) == 0;
        v173 = v171 + v172;
        if (__OFADD__(v171, v172))
        {
          goto LABEL_240;
        }

        v174 = v169;
        if (*(v167 + 24) >= v173)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21D221214();
          }
        }

        else
        {
          sub_21D217430(v173, isUniquelyReferenced_nonNull_native);
          v175 = sub_21D17E07C(v166);
          if ((v174 & 1) != (v176 & 1))
          {
            goto LABEL_246;
          }

          v170 = v175;
        }

        v32 = v213;
        v177 = v238;
        v207 = v238;
        if (v174)
        {
          *(*(v238 + 56) + 8 * v170) = v165;
        }

        else
        {
          *(v238 + 8 * (v170 >> 6) + 64) |= 1 << v170;
          *(v177[6] + 8 * v170) = v166;
          *(v177[7] + 8 * v170) = v165;
          v178 = v177[2];
          v118 = __OFADD__(v178, 1);
          v179 = v178 + 1;
          if (v118)
          {
            goto LABEL_241;
          }

          v177[2] = v179;
        }

        sub_21D195308(v232, v68);
        goto LABEL_49;
      }
    }

    else if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_205;
    }

    sub_21D195308(v232, v68);
    v32 = v213;
LABEL_49:
    v11 = v222;
    v59 = v210 + 1;
    (*v231)(v219, v222);

    v53 = v59;
    if (v59 == v203)
    {
      goto LABEL_223;
    }
  }

  v92 = 0;
  v227 = v91 + v200;
  v218 = v68;
  v226 = v91;
  while (2)
  {
    v236 = v92;
    (v229)(v14, v227 + v92 * v230, v11);
    if (((v234 | v51) & 1) == 0 && !v68)
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      v94 = v232;
      sub_21D157850(v232, 0);
      v95 = sub_21DBF6D5C();
      v96 = sub_21DBFB63C();

      if (v96)
      {
        v97 = v223;
        if (v223 >> 62)
        {
          v98 = sub_21DBFBD7C();
        }

        else
        {
          v98 = *(v221 + 16);
        }

        v99 = v239;
        v100 = v239 >> 62;
        if (v239 >> 62)
        {
          v162 = sub_21DBFBD7C();
          v102 = v162 + v98;
          if (__OFADD__(v162, v98))
          {
            goto LABEL_231;
          }
        }

        else
        {
          v101 = *((v239 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v102 = v101 + v98;
          if (__OFADD__(v101, v98))
          {
            goto LABEL_231;
          }
        }

        sub_21DBF8E0C();
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v100)
        {
          isUniquelyReferenced_nonNull_bridgeObject = 0;
        }

        if (isUniquelyReferenced_nonNull_bridgeObject != 1 || (v104 = v99 & 0xFFFFFFFFFFFFFF8, v102 > *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
        {
          if (v100)
          {
            sub_21DBFBD7C();
            LOBYTE(v68) = v218;
          }

          v99 = sub_21DBFBF9C();
          v104 = v99 & 0xFFFFFFFFFFFFFF8;
        }

        v217 = v104;
        v216 = v98;
        v105 = *(v104 + 16);
        v106 = (*(v104 + 24) >> 1) - v105;
        if (v97 >> 62)
        {
          v108 = sub_21DBFBD7C();
          if (!v108)
          {
            goto LABEL_126;
          }

          v109 = v108;
          v110 = sub_21DBFBD7C();
          if (v106 < v110)
          {
            goto LABEL_235;
          }

          if (v109 < 1)
          {
            goto LABEL_237;
          }

          v107 = v110;
          v111 = v217 + 8 * v105 + 32;
          sub_21D0D0F1C(&unk_27CE5DEB0, &qword_27CE58858);
          for (i = 0; i != v109; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858);
            v113 = sub_21D198D24(&v238, i, v97);
            v115 = *v114;
            (v113)(&v238, 0);
            *(v111 + 8 * i) = v115;
          }

          v32 = v213;
          LOBYTE(v68) = v218;
LABEL_122:

          v11 = v222;
          v14 = v225;
          v116 = v232;
          if (v107 < v216)
          {
            goto LABEL_232;
          }

          if (v107 > 0)
          {
            v117 = *(v217 + 16);
            v118 = __OFADD__(v117, v107);
            v119 = v117 + v107;
            if (v118)
            {
              goto LABEL_233;
            }

            *(v217 + 16) = v119;
          }
        }

        else
        {
          v107 = *(v221 + 16);
          if (v107)
          {
            if (v106 < v107)
            {
              goto LABEL_236;
            }

            sub_21D0D8CF0(0, &qword_280D17880);
            swift_arrayInitWithCopy();
            goto LABEL_122;
          }

LABEL_126:

          v11 = v222;
          v14 = v225;
          v116 = v232;
          if (v216 > 0)
          {
            goto LABEL_232;
          }
        }

        sub_21D195308(v116, 0);
        v239 = v99;
        LOBYTE(v51) = 1;
      }

      else
      {
        sub_21D195308(v94, 0);
        LOBYTE(v51) = 0;
      }
    }

    if ((sub_21DBF6D1C() & 1) == 0)
    {
      goto LABEL_131;
    }

    v120 = sub_21DBF6D5C();
    v121 = v120;
    if (!v220)
    {
      if (!*(v32 + 16))
      {

        goto LABEL_150;
      }

      sub_21D0D8CF0(0, &qword_280D17880);
      v131 = sub_21DBFB62C();
      v132 = -1 << *(v32 + 32);
      v133 = v131 & ~v132;
      if (((*(v233 + ((v133 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v133) & 1) == 0)
      {
        goto LABEL_148;
      }

      v134 = ~v132;
      while (1)
      {
        v135 = *(*(v32 + 48) + 8 * v133);
        v136 = sub_21DBFB63C();

        if (v136)
        {
          break;
        }

        v133 = (v133 + 1) & v134;
        if (((*(v233 + ((v133 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v133) & 1) == 0)
        {
          goto LABEL_148;
        }
      }

      v14 = v225;
      LOBYTE(v68) = v218;
LABEL_131:
      v121 = sub_21DBF6D5C();
      if (v224)
      {
        v123 = sub_21DBFBDCC();

        if (v123)
        {
          goto LABEL_150;
        }

        goto LABEL_140;
      }

      if (!*(v237 + 16) || (sub_21D0D8CF0(0, &qword_280D17880), v124 = v237, v125 = sub_21DBFB62C(), v126 = -1 << *(v124 + 32), v127 = v125 & ~v126, ((*&v235[(v127 >> 3) & 0xFFFFFFFFFFFFFF8] >> v127) & 1) == 0))
      {
LABEL_139:

        v14 = v225;
        LOBYTE(v68) = v218;
LABEL_140:
        sub_21DBF6D5C();
        MEMORY[0x223D42D80]();
        if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        goto LABEL_150;
      }

      v128 = ~v126;
      while (1)
      {
        v129 = *(*(v237 + 48) + 8 * v127);
        v130 = sub_21DBFB63C();

        if (v130)
        {
          break;
        }

        v127 = (v127 + 1) & v128;
        if (((*&v235[(v127 >> 3) & 0xFFFFFFFFFFFFFF8] >> v127) & 1) == 0)
        {
          goto LABEL_139;
        }
      }

LABEL_148:

      v14 = v225;
      LOBYTE(v68) = v218;
      goto LABEL_150;
    }

    v122 = sub_21DBFBDCC();

    if (v122)
    {
      goto LABEL_131;
    }

LABEL_150:
    v92 = v236 + 1;
    if ((v51 & 1) == 0)
    {
      if (v234)
      {
        (*v231)(v14, v11);
        if (v92 == v228)
        {
          goto LABEL_202;
        }
      }

      else
      {
        v138 = v223;
        if (v68 == 1)
        {
          ++v236;
          sub_21D0D8CF0(0, &qword_280D17680);
          v139 = v232;
          sub_21D157850(v232, 1u);
          v140 = sub_21DBF6D5C();
          v141 = sub_21DBFB63C();

          if (v141)
          {
            if (v138 >> 62)
            {
              v142 = sub_21DBFBD7C();
            }

            else
            {
              v142 = *(v221 + 16);
            }

            v143 = v239;
            v144 = v239 >> 62;
            if (v239 >> 62)
            {
              v163 = sub_21DBFBD7C();
              v146 = v163 + v142;
              if (__OFADD__(v163, v142))
              {
                goto LABEL_238;
              }
            }

            else
            {
              v145 = *((v239 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v146 = v145 + v142;
              if (__OFADD__(v145, v142))
              {
                goto LABEL_238;
              }
            }

            sub_21DBF8E0C();
            v147 = swift_isUniquelyReferenced_nonNull_bridgeObject();
            if (v144)
            {
              v147 = 0;
            }

            if (v147 != 1 || (v148 = v143 & 0xFFFFFFFFFFFFFF8, v146 > *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
            {
              if (v144)
              {
                sub_21DBFBD7C();
                LOBYTE(v68) = v218;
              }

              v143 = sub_21DBFBF9C();
              v148 = v143 & 0xFFFFFFFFFFFFFF8;
            }

            v217 = v148;
            v216 = v142;
            v149 = *(v148 + 16);
            v150 = (*(v148 + 24) >> 1) - v149;
            if (v138 >> 62)
            {
              v152 = sub_21DBFBD7C();
              if (v152)
              {
                v153 = v152;
                v154 = sub_21DBFBD7C();
                if (v150 < v154)
                {
                  goto LABEL_243;
                }

                if (v153 < 1)
                {
                  goto LABEL_245;
                }

                v151 = v154;
                v155 = v217 + 8 * v149 + 32;
                sub_21D0D0F1C(&unk_27CE5DEB0, &qword_27CE58858);
                for (j = 0; j != v153; ++j)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858);
                  v157 = sub_21D198D24(&v238, j, v138);
                  v159 = *v158;
                  (v157)(&v238, 0);
                  *(v155 + 8 * j) = v159;
                }

                v32 = v213;
                LOBYTE(v68) = v218;
                goto LABEL_183;
              }
            }

            else
            {
              v151 = *(v221 + 16);
              if (v151)
              {
                if (v150 < v151)
                {
                  goto LABEL_244;
                }

                sub_21D0D8CF0(0, &qword_280D17880);
                swift_arrayInitWithCopy();
LABEL_183:

                v11 = v222;
                v14 = v225;
                if (v151 < v216)
                {
                  goto LABEL_239;
                }

                if (v151 > 0)
                {
                  v160 = *(v217 + 16);
                  v118 = __OFADD__(v160, v151);
                  v161 = v160 + v151;
                  if (v118)
                  {
                    goto LABEL_242;
                  }

                  *(v217 + 16) = v161;
                }

LABEL_188:
                v51 = 1;
                sub_21D195308(v232, 1u);
                v239 = v143;
                (*v231)(v14, v11);
                v137 = v228;
                v92 = v236;
                goto LABEL_152;
              }
            }

            v11 = v222;
            v14 = v225;
            if (v216 > 0)
            {
              goto LABEL_239;
            }

            goto LABEL_188;
          }

          (*v231)(v14, v11);
          sub_21D195308(v139, 1u);
          v92 = v236;
          if (v236 == v228)
          {
LABEL_202:

            v51 = 0;
            v50 = v204;
            goto LABEL_203;
          }
        }

        else
        {
          (*v231)(v14, v11);
          if (v92 == v228)
          {

            v51 = 0;
            v50 = v204;
            goto LABEL_199;
          }
        }
      }

      v51 = 0;
      v93 = v226;
      goto LABEL_96;
    }

    (*v231)(v14, v11);
    v51 = 1;
    v137 = v228;
LABEL_152:
    v93 = v226;
    if (v92 == v137)
    {
      goto LABEL_197;
    }

LABEL_96:
    if (v92 < *(v93 + 16))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  sub_21D0D8CF0(0, &qword_280D17880);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D39ED70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589A0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = (v11 - v6);
  sub_21D0D3954(a1, v11 - v6, &qword_27CE589A0);

  v8 = *(v5 + 56);
  *a2 = sub_21DBF6D5C();
  v9 = sub_21DBF6D7C();
  return (*(*(v9 - 8) + 8))(v7 + v8, v9);
}

uint64_t sub_21D39EE74(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v47 = a2;
  v8 = sub_21DBF6D7C();
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21DBF6D1C() & 1) == 0 || (v11 = sub_21DBF6D5C(), v12 = sub_21D1E21BC(v11, v47), v11, (v12))
  {
    sub_21DBF6D5C();
    MEMORY[0x223D42D80]();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
  }

  v13 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
  v14 = sub_21DBF6D6C();
  if (v14)
  {
    v38 = *(v14 + 16);
    if (v38)
    {
      v33 = a1;
      v34 = a4;
      v35 = v4;
      v36 = v14;
      v15 = 0;
      v16 = v38;
      v17 = *(v39 + 16);
      v44 = v14 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v45 = v17;
      v18 = *(v39 + 72);
      v42 = v47 & 0xC000000000000001;
      v43 = v18;
      v19 = v47 & 0xFFFFFFFFFFFFFF8;
      if (v47 < 0)
      {
        v19 = v47;
      }

      v41 = v19;
      v46 = v47 + 56;
      v20 = (v39 + 8);
      v37 = v8;
      v39 += 16;
      while (1)
      {
        v45(v10, v44 + v43 * v15, v8);
        if ((sub_21DBF6D1C() & 1) == 0)
        {
          goto LABEL_17;
        }

        v21 = sub_21DBF6D5C();
        if (v42)
        {
          v22 = sub_21DBFBDCC();

          if (v22)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v40 = v13;
          if (*(v47 + 16))
          {
            sub_21D0D8CF0(0, &qword_280D17880);
            v23 = v47;
            v24 = sub_21DBFB62C();
            v25 = -1 << *(v23 + 32);
            v26 = v24 & ~v25;
            if ((*(v46 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
            {
              v27 = ~v25;
              while (1)
              {
                v28 = *(*(v47 + 48) + 8 * v26);
                v29 = sub_21DBFB63C();

                if (v29)
                {
                  break;
                }

                v26 = (v26 + 1) & v27;
                if (((*(v46 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
                {
                  goto LABEL_11;
                }
              }

              v8 = v37;
              v16 = v38;
LABEL_17:
              sub_21DBF6D5C();
              MEMORY[0x223D42D80]();
              if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_21DBFA63C();
              }

              sub_21DBFA6CC();
              (*v20)(v10, v8);
              v13 = v49;
              goto LABEL_13;
            }
          }

LABEL_11:

          v8 = v37;
          v16 = v38;
          v13 = v40;
        }

        (*v20)(v10, v8);
LABEL_13:
        if (++v15 == v16)
        {

          a4 = v34;
          goto LABEL_28;
        }
      }
    }

    if (v13 >> 62)
    {
LABEL_33:
      if (!sub_21DBFBD7C())
      {
      }

      goto LABEL_30;
    }
  }

  else
  {
LABEL_28:
    if (v13 >> 62)
    {
      goto LABEL_33;
    }
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_30:
    v30 = sub_21DBF6D5C();
    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *a4;
    *a4 = 0x8000000000000000;
    sub_21D4772C4(v13, v30, isUniquelyReferenced_nonNull_native);

    *a4 = v48;
  }
}

void sub_21D39F2BC(void *a1, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    sub_21D157478(a1, a2);
  }

  else
  {

    sub_21D157478(a1, a2);
  }
}

id sub_21D39F308(void *a1, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    sub_21D157850(a1, a2);

    return a3;
  }

  else
  {

    return sub_21D157850(a1, a2);
  }
}

uint64_t sub_21D39F354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D39F3BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589A0);
  MEMORY[0x28223BE20](v2);
  v47 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v41 - v5);
  MEMORY[0x28223BE20](v7);
  v48 = &v41 - v9;
  v10 = MEMORY[0x277D84F98];
  v49 = MEMORY[0x277D84F98];
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v43 = *(v8 + 80);
  v12 = *(v8 + 72);
  v46 = (v43 + 32) & ~v43;
  v13 = a1 + v46;
  v42 = xmmword_21DC08D00;
  v44 = v2;
  v45 = v12;
  while (1)
  {
    v16 = v48;
    sub_21D0D3954(v13, v48, &qword_27CE589A0);
    sub_21D0D3954(v16, v6, &qword_27CE589A0);
    v17 = *v6;
    v18 = v2;
    v19 = *(v2 + 48);
    v20 = sub_21DBF6D7C();
    (*(*(v20 - 8) + 8))(v6 + v19, v20);
    v22 = sub_21D17E07C(v17);
    v23 = v10[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v10[3] < v25)
    {
      sub_21D21741C(v25, 1);
      v10 = v49;
      v27 = sub_21D17E07C(v17);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
    }

    if (v26)
    {
      v29 = v6;

      v30 = v10[7];
      sub_21D0D523C(v48, v47, &qword_27CE589A0);
      v31 = *(v30 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v22) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_21D211304(0, v31[2] + 1, 1, v31);
        *(v30 + 8 * v22) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_21D211304(v33 > 1, v34 + 1, 1, v31);
        *(v30 + 8 * v22) = v31;
      }

      v6 = v29;
      v31[2] = v34 + 1;
      v14 = v31 + v46 + v34 * v45;
      v15 = v45;
      sub_21D0D523C(v47, v14, &qword_27CE589A0);
      v2 = v44;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58998);
      v35 = v46;
      v36 = swift_allocObject();
      *(v36 + 16) = v42;
      sub_21D0D523C(v48, v36 + v35, &qword_27CE589A0);
      v10[(v22 >> 6) + 8] |= 1 << v22;
      *(v10[6] + 8 * v22) = v17;
      *(v10[7] + 8 * v22) = v36;
      v37 = v10[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v10[2] = v39;
      v15 = v45;
      v2 = v18;
    }

    v13 += v15;
    if (!--v11)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_21D0D8CF0(0, &qword_280D17880);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

unint64_t sub_21D39F794()
{
  result = qword_27CE58AA0;
  if (!qword_27CE58AA0)
  {
    sub_21DBF634C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE58AA0);
  }

  return result;
}

uint64_t sub_21D39F7EC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5B230);
  v1 = __swift_project_value_buffer(v0, qword_27CE5B230);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRUserActivityMetadata.PhoneCaller.name.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

void *TTRUserActivityMetadata.PhoneCaller.contact.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t TTRUserActivityMetadata.PhoneCaller.init(name:contact:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t TTRUserActivityMetadata.PhoneCallContext.caller.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_21D157724(v2, v3, v4);
}

__n128 TTRUserActivityMetadata.PhoneCallContext.init(isVideoCall:caller:)@<Q0>(char a1@<W0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u64[0];
  *a3 = a1;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  return result;
}

uint64_t TTRUserActivityMetadata.appName.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRUserActivityMetadata.activityTitle.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRUserActivityMetadata.phoneCallContext.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21D3A1244(v2, v3, v4, v5);
}

__n128 TTRUserActivityMetadata.init(appIcon:appName:activityTitle:isWebBrowsingActivity:phoneCallContext:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  result = *a7;
  v9 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v9;
  return result;
}

uint64_t TTRUserActivityMetadataInterator.__allocating_init(contactsProvider:contactKeys:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TTRUserActivityMetadataInterator.init(contactsProvider:contactKeys:)(a1, a2);
  return v4;
}

void *TTRUserActivityMetadataInterator.init(contactsProvider:contactKeys:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D84F90];
  v3[8] = 0;
  v3[9] = v6;
  sub_21D0D3954(a1, (v3 + 2), &qword_27CE5B248);
  v3[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B250);
  sub_21D0D8CF0(0, &qword_280D1B900);
  sub_21DBFB12C();
  sub_21DBF60DC();
  sub_21DBF60CC();
  swift_allocObject();
  swift_weakInit();
  v7 = sub_21DBF6B6C();
  sub_21D0CF7E0(a1, &qword_27CE5B248);
  v3[8] = v7;

  return v3;
}

uint64_t sub_21D39FB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21D39FC88(v3, &v11, v4);

    v6 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v6;
    *(a2 + 64) = v15;
    *(a2 + 80) = v16;
    v7 = v12;
    *a2 = v11;
    *(a2 + 16) = v7;
  }

  else
  {
    sub_21D3A2248();
    result = swift_allocError();
    *v8 = 0;
    v9 = v11;
    *(a2 + 24) = v12;
    v10 = v14;
    *(a2 + 40) = v13;
    *(a2 + 56) = v10;
    *a2 = result;
    *(a2 + 72) = v15;
    *(a2 + 8) = v9;
    *(a2 + 80) = 1;
  }

  return result;
}

void sub_21D39FC88(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v75[1] = *v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B268);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v75 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5B270);
  MEMORY[0x28223BE20](v12 - 8);
  v83 = (v75 - v13);
  v14 = sub_21DBF7D0C();
  v80 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v79 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DBF4CAC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21DBF6B2C();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *MEMORY[0x277D45370];
  v86 = v26;
  v87 = v25;
  (*(v26 + 104))(v23, v24, v21);
  v27 = sub_21DBFAF9C();
  if (v27)
  {
    v30 = v27;
    v84 = v29;
    v85 = v28;
    v31 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v27 scale:0 orientation:a3];
  }

  else
  {
    sub_21D0D8CF0(0, &qword_27CE5B258);
    v30 = sub_21DBFAF8C();
    v31 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v30 scale:0 orientation:a3];
    v84 = 0;
    v85 = 0;
  }

  v32 = v31;
  v78 = a1;
  v33 = [a1 userActivity];
  v34 = v33;
  if (v33)
  {
    v35 = [v33 title];
    if (v35)
    {
      v77 = v32;
      v75[0] = v14;
      v36 = v11;
      v37 = v35;
      v38 = sub_21DBFA16C();
      v40 = v39;

      v92[0] = v38;
      v92[1] = v40;
      sub_21DBF4C5C();
      sub_21D176F0C();
      v41 = sub_21DBFBB3C();
      v43 = v42;
      (*(v17 + 8))(v19, v16);

      v44 = HIBYTE(v43) & 0xF;
      if ((v43 & 0x2000000000000000) == 0)
      {
        v44 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (v44)
      {
        v81 = v41;
        v82 = v43;
      }

      else
      {

        v81 = 0;
        v82 = 0;
      }

      v11 = v36;
      v14 = v75[0];
      v32 = v77;
    }

    else
    {
      v81 = 0;
      v82 = 0;
    }

    v46 = v83;
    v47 = [v34 activityType];
    v48 = sub_21DBFA16C();
    v50 = v49;

    v51 = sub_21DBFA16C();
    if (v50)
    {
      if (v48 == v51 && v50 == v52)
      {

        LODWORD(v45) = 1;
      }

      else
      {
        LODWORD(v45) = sub_21DBFC64C();
      }
    }

    else
    {
      LODWORD(v45) = 0;
    }
  }

  else
  {
    sub_21DBFA16C();
    v81 = 0;
    v82 = 0;
    LODWORD(v45) = 0;
    v46 = v83;
  }

  sub_21D0D3954(v88 + 16, &v89, &qword_27CE5B248);
  if (!v91)
  {
    (*(v86 + 8))(v23, v87);

    v54 = &qword_27CE5B248;
    v55 = &v89;
    goto LABEL_24;
  }

  sub_21D0D0FD0(&v89, v92);
  sub_21DBFAFAC();
  v53 = v80;
  if ((*(v80 + 48))(v46, 1, v14) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v92);
    (*(v86 + 8))(v23, v87);
    v54 = &unk_27CE5B270;
    v55 = v46;
LABEL_24:
    sub_21D0CF7E0(v55, v54);
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 1;
LABEL_31:
    LOBYTE(v89) = 0;
    v70 = v84;
    v71 = v85;
    *a2 = v32;
    *(a2 + 8) = v71;
    *(a2 + 16) = v70;
    v72 = v82;
    *(a2 + 24) = v81;
    *(a2 + 32) = v72;
    *(a2 + 40) = v45 & 1;
    *(a2 + 48) = v56;
    *(a2 + 56) = v57;
    *(a2 + 64) = v59;
    *(a2 + 72) = v58;
    *(a2 + 80) = 0;
    return;
  }

  LODWORD(v83) = v45;
  v77 = v32;
  (*(v53 + 32))(v79, v46, v14);
  sub_21DBF7CFC();
  v60 = sub_21DBF7CEC();
  v61 = *(v60 - 8);
  v62 = (*(v61 + 48))(v11, 1, v60);
  v57 = 0;
  v63 = v11;
  v59 = 0;
  v58 = 0;
  if (v62 == 1)
  {
LABEL_30:
    sub_21D0CF7E0(v63, &qword_27CE5B268);
    v67 = v79;
    v68 = sub_21DBF7CDC();

    v45 = v77;
    v69 = v67;
    v32 = v45;
    (*(v80 + 8))(v69, v14);
    __swift_destroy_boxed_opaque_existential_0(v92);
    (*(v86 + 8))(v23, v87);
    v56 = v68 & 1;
    LOBYTE(v45) = v83;
    goto LABEL_31;
  }

  v64 = v76;
  sub_21D0D3954(v63, v76, &qword_27CE5B268);
  v65 = (*(v61 + 88))(v64, v60);
  if (v65 == *MEMORY[0x277D457F0])
  {
    (*(v61 + 96))(v64, v60);
    v66 = *v64;
    sub_21D3A0974(*v64, v92, *(v88 + 56), &v89);

    v59 = *(&v89 + 1);
    v57 = v89;
    v58 = v90;
    goto LABEL_30;
  }

  if (v65 == *MEMORY[0x277D457E8])
  {
    (*(v61 + 96))(v64, v60);
    v58 = 0;
    v57 = *v64;
    v59 = *(v64 + 8);
    goto LABEL_30;
  }

  (*(v61 + 8))(v64, v60);
  if (qword_27CE56658 != -1)
  {
    swift_once();
  }

  v73 = sub_21DBF84BC();
  __swift_project_value_buffer(v73, qword_27CE5B230);
  v74 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v74);
  sub_21DAEAB00("unknown phone caller", 20, 2);
  __break(1u);
}

void *TTRUserActivityMetadataInterator.metadata(for:viewScale:)(void *result)
{
  if (*(v1 + 64))
  {
    v2 = result;

    sub_21DBF6B4C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *TTRUserActivityMetadataInterator.syncMetadata(for:viewScale:)(void *result)
{
  if (*(v1 + 64))
  {
    v2 = result;

    sub_21DBF6B3C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void TTRUserActivityMetadataInterator.blankAppIcon(forViewScale:)(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = *(v3 + 16);
  sub_21DBF8E0C();
  if (v4)
  {
    v5 = 0;
    v6 = fabs(a1);
    v7 = (v3 + 40);
    while (v5 < *(v3 + 16))
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        v11.n128_u64[0] = 0x3E50000000000000;
        *v10.i64 = a1;
        if (sub_21D3A0F4C(v10, v11, v8, v12))
        {
          goto LABEL_13;
        }
      }

      else
      {
        v13 = fabs(v8);
        if (v13 <= v6)
        {
          v13 = v6;
        }

        if (v13 <= 2.22507386e-308)
        {
          v13 = 2.22507386e-308;
        }

        if (vabdd_f64(v8, a1) < v13 * 0.0000000149011612)
        {
LABEL_13:

          return;
        }
      }

      ++v5;

      v7 += 2;
      if (v4 == v5)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    sub_21D3A158C(v1, a1);
  }
}

uint64_t sub_21D3A07D0()
{
  v1 = *(v0 + 8);
  sub_21DBFC7DC();
  sub_21DBFB64C();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x223D44FD0](*&v2);
  return sub_21DBFC82C();
}

uint64_t sub_21D3A083C()
{
  v1 = *(v0 + 8);
  sub_21DBFB64C();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x223D44FD0](*&v2);
}

uint64_t sub_21D3A088C()
{
  v1 = *(v0 + 8);
  sub_21DBFC7DC();
  sub_21DBFB64C();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x223D44FD0](*&v2);
  return sub_21DBFC82C();
}

id sub_21D3A08F4@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return v2;
}

uint64_t sub_21D3A0908(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_21D0D8CF0(0, &qword_280D17680);
  return sub_21DBFB63C() & (v2 == v3);
}

void sub_21D3A0974(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_21DBF633C();
  v8 = sub_21DBF630C();
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v31 = v8;
  sub_21DBF8E0C();
  sub_21D562960(v9);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v10 = sub_21DBF6A4C();
  v12 = v11;

  if (v12)
  {
    v31 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    swift_willThrowTypedImpl();
    if (qword_27CE56658 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_27CE5B230);
    v14 = v10;
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAEBC();
    sub_21D3A229C(v10);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_21DBFC75C();
      v21 = sub_21D0CDFB4(v19, v20, &v31);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_21D0C9000, v15, v16, "TTRUserActivityMetadataInterator: failed to fetch contact {error: %s}", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x223D46520](v18, -1, -1);
      MEMORY[0x223D46520](v17, -1, -1);
    }

    sub_21D3A0CFC(a1, a4);
    sub_21D3A229C(v10);
  }

  else
  {
    v22 = [objc_opt_self() stringFromContact:v10 style:0];
    if (v22)
    {
      v23 = v22;
      v24 = sub_21DBFA16C();
      v26 = v25;

      *a4 = v24;
      a4[1] = v26;
      a4[2] = v10;
    }

    else
    {
      if (qword_27CE56658 != -1)
      {
        swift_once();
      }

      v27 = sub_21DBF84BC();
      __swift_project_value_buffer(v27, qword_27CE5B230);
      v28 = sub_21DBF84AC();
      v29 = sub_21DBFAEBC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_21D0C9000, v28, v29, "TTRUserActivityMetadataInterator: failed to get fullName from contact", v30, 2u);
        MEMORY[0x223D46520](v30, -1, -1);
      }

      sub_21D3A0CFC(a1, a4);

      sub_21D3A229C(v10);
    }
  }
}

uint64_t sub_21D3A0CFC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 phones];
  v5 = sub_21DBFA5EC();

  if (v5[2] || (, v6 = [a1 emails], v5 = sub_21DBFA5EC(), v6, v5[2]))
  {
    v8 = v5[4];
    v7 = v5[5];
    sub_21DBF8E0C();

    *a2 = v8;
    a2[1] = v7;
  }

  else
  {

    *a2 = 0;
    a2[1] = 0;
  }

  a2[2] = 0;
  return result;
}

uint64_t TTRUserActivityMetadataInterator.deinit()
{
  sub_21D0CF7E0(v0 + 16, &qword_27CE5B248);

  return v0;
}

uint64_t TTRUserActivityMetadataInterator.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + 16, &qword_27CE5B248);

  return swift_deallocClassInstance();
}

void *sub_21D3A0E70(void *result)
{
  if (*(v1 + 64))
  {
    v2 = result;

    sub_21DBF6B4C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21D3A0EDC(void *result)
{
  if (*(v1 + 64))
  {
    v2 = result;

    sub_21DBF6B3C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D3A0F4C(int8x16_t a1, __n128 a2, double a3, int8x16_t a4)
{
  while (1)
  {
    *a4.i64 = a3;
    v4 = *&a3 & 0x7FF0000000000000;
    v5 = *&a3 & 0xFFFFFFFFFFFFFLL;
    if ((*&a3 & 0x7FF0000000000000) == 0x7FF0000000000000 && v5 != 0)
    {
      return 0;
    }

    a3 = *a1.i64;
    v7 = (a1.i64[0] >> 52) & 0x7FF;
    v8 = a1.i64[0] & 0xFFFFFFFFFFFFFLL;
    if ((a1.i64[0] & 0xFFFFFFFFFFFFFLL) != 0 && v7 == 2047)
    {
      return 0;
    }

    a1.i64[0] = a4.i64[0];
    if (!v5)
    {
      a1.i64[0] = a4.i64[0];
      if (v4 == 0x7FF0000000000000)
      {
        break;
      }
    }
  }

  if (!v8 && v7 == 2047)
  {
    return *a4.i64 == a3;
  }

  a1.i64[0] = 0x7FE0000000000000;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  *&v11 = vbslq_s8(vnegq_f64(v10), a1, a4).u64[0];
  *a1.i64 = a3 * 0.5;
  if (!(v7 | v8))
  {
    *a1.i64 = a3;
  }

  if (v7 == 2047)
  {
    *a1.i64 = a3;
  }

  return sub_21D110D14(a1, a2, v11);
}

uint64_t _s15RemindersUICore23TTRUserActivityMetadataV11PhoneCallerV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_21DBFC64C(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3)
      {
        sub_21D0D8CF0(0, &qword_280D0C1A0);
        v7 = v3;
        v8 = v2;
        v9 = sub_21DBFB63C();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL _s15RemindersUICore23TTRUserActivityMetadataV16PhoneCallContextV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = v2;
  v19 = v3;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  if (v6)
  {
    v16[0] = a1[1];
    v16[1] = v6;
    v17 = v7;
    if (v9)
    {
      v14[0] = v8;
      v14[1] = v9;
      v15 = v10;
      sub_21D157724(v5, v6, v7);
      sub_21D157724(v8, v9, v10);
      sub_21D157724(v5, v6, v7);
      v11 = _s15RemindersUICore23TTRUserActivityMetadataV11PhoneCallerV2eeoiySbAE_AEtFZ_0(v16, v14);
      v12 = v15;

      v13 = v17;

      sub_21D1576C8(v5, v6, v7);
      return (v11 & 1) != 0;
    }

    sub_21D157724(v5, v6, v7);
    sub_21D157724(v8, 0, v10);
    sub_21D157724(v5, v6, v7);

LABEL_10:
    sub_21D1576C8(v5, v6, v7);
    sub_21D1576C8(v8, v9, v10);
    return 0;
  }

  sub_21D157724(a1[1], 0, v7);
  if (v9)
  {
    sub_21D157724(v8, v9, v10);
    goto LABEL_10;
  }

  sub_21D157724(v8, 0, v10);
  sub_21D1576C8(v5, 0, v7);
  return 1;
}

uint64_t sub_21D3A1244(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 != 1)
  {
    return sub_21D157724(a2, a3, a4);
  }

  return result;
}

BOOL _s15RemindersUICore23TTRUserActivityMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v29 = *(a1 + 48);
  v30 = *(a1 + 56);
  v21 = *(a1 + 72);
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v22 = *(a2 + 40);
  v23 = *(a1 + 40);
  v25 = *(a2 + 48);
  v26 = *(a2 + 56);
  v24 = *(a2 + 64);
  v27 = *(a2 + 72);
  v28 = *(a1 + 64);
  sub_21D0D8CF0(0, &qword_280D17680);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8 || (v2 != v6 || v3 != v8) && (sub_21DBFC64C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v7 || v5 != v9) && (sub_21DBFC64C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v23 == 2)
  {
    v11 = v29;
    v10 = v30;
    v13 = v27;
    v12 = v28;
    v15 = v25;
    v14 = v26;
    v16 = v24;
    if (v22 != 2)
    {
      return 0;
    }

    goto LABEL_21;
  }

  v17 = 0;
  v11 = v29;
  v10 = v30;
  v13 = v27;
  v12 = v28;
  v15 = v25;
  v14 = v26;
  v16 = v24;
  if (v22 != 2 && ((v22 ^ v23) & 1) == 0)
  {
LABEL_21:
    if (v12 == 1)
    {
      v18 = v21;
      sub_21D3A1244(v11, v10, 1, v21);
      if (v16 == 1)
      {
        v17 = 1;
        sub_21D3A1244(v15, v14, 1, v13);
        sub_21D3A22A8(v11, v10, 1, v21);
        return v17;
      }

      sub_21D3A1244(v15, v14, v16, v13);
    }

    else
    {
      v35 = v11;
      v36 = v10;
      v18 = v21;
      v37 = v12;
      v38 = v21;
      if (v16 != 1)
      {
        LOBYTE(v31) = v15 & 1;
        v32 = v14;
        v33 = v16;
        v34 = v13;
        sub_21D3A1244(v11, v10, v12, v21);
        sub_21D3A1244(v15, v14, v16, v13);
        sub_21D3A1244(v11, v10, v12, v21);
        v20 = _s15RemindersUICore23TTRUserActivityMetadataV16PhoneCallContextV2eeoiySbAE_AEtFZ_0(&v35, &v31);
        sub_21D1576C8(v32, v33, v34);
        sub_21D1576C8(v36, v37, v38);
        sub_21D3A22A8(v11, v10, v12, v21);
        return v20;
      }

      sub_21D3A1244(v11, v10, v12, v21);
      sub_21D3A1244(v15, v14, 1, v13);
      sub_21D3A1244(v11, v10, v12, v21);
      sub_21D1576C8(v10, v12, v21);
    }

    sub_21D3A22A8(v11, v10, v12, v18);
    sub_21D3A22A8(v15, v14, v16, v13);
    return 0;
  }

  return v17;
}

id sub_21D3A158C(uint64_t a1, double a2)
{
  v4 = sub_21DBF6B2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D8CF0(0, &qword_27CE5B258);
  (*(v5 + 104))(v7, *MEMORY[0x277D45370], v4);
  v8 = sub_21DBFAF8C();
  v9 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v8 scale:0 orientation:a2];

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  v10 = *(a1 + 72);
  v11 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 72) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_21D212CA0(0, *(v10 + 2) + 1, 1, v10);
    *(a1 + 72) = v10;
  }

  v14 = *(v10 + 2);
  v13 = *(v10 + 3);
  if (v14 >= v13 >> 1)
  {
    v10 = sub_21D212CA0((v13 > 1), v14 + 1, 1, v10);
  }

  *(v10 + 2) = v14 + 1;
  v15 = &v10[16 * v14];
  *(v15 + 4) = a2;
  *(v15 + 5) = v11;
  *(a1 + 72) = v10;
  swift_endAccess();
  return v11;
}

void destroy for TTRUserActivityMetadata(uint64_t a1)
{

  if (*(a1 + 64) >= 2uLL)
  {

    v2 = *(a1 + 72);
  }
}

uint64_t initializeWithCopy for TTRUserActivityMetadata(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 64);
  v8 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v7 == 1)
  {
    v9 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v9;
  }

  else
  {
    *(a1 + 48) = *(a2 + 48);
    if (v7)
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = v7;
      v10 = *(a2 + 72);
      *(a1 + 72) = v10;
      sub_21DBF8E0C();
      v11 = v10;
    }

    else
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
    }
  }

  return a1;
}

uint64_t assignWithCopy for TTRUserActivityMetadata(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  *(a1 + 40) = *(a2 + 40);
  v7 = *(a1 + 64);
  v8 = *(a2 + 64);
  if (v7 == 1)
  {
    if (v8 == 1)
    {
      v9 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v9;
      return a1;
    }

    *(a1 + 48) = *(a2 + 48);
    if (*(a2 + 64))
    {
LABEL_7:
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      v11 = *(a2 + 72);
      *(a1 + 72) = v11;
      sub_21DBF8E0C();
      v12 = v11;
      return a1;
    }

LABEL_12:
    v17 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v17;
    return a1;
  }

  if (v8 == 1)
  {
    sub_21D3A1A28(a1 + 48);
    v10 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v10;
    return a1;
  }

  *(a1 + 48) = *(a2 + 48);
  v13 = *(a2 + 64);
  if (!v7)
  {
    if (v13)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (v13)
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    sub_21DBF8E0C();

    v14 = *(a1 + 72);
    v15 = *(a2 + 72);
    *(a1 + 72) = v15;
    v16 = v15;
  }

  else
  {
    sub_21D122250(a1 + 56);
    v18 = *(a2 + 72);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = v18;
  }

  return a1;
}

uint64_t assignWithTake for TTRUserActivityMetadata(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  *(a1 + 40) = *(a2 + 40);
  v7 = *(a1 + 64);
  if (v7 != 1)
  {
    v8 = *(a2 + 64);
    if (v8 != 1)
    {
      *(a1 + 48) = *(a2 + 48);
      if (v7)
      {
        if (v8)
        {
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 64) = v8;

          v11 = *(a1 + 72);
          *(a1 + 72) = *(a2 + 72);

          return a1;
        }

        sub_21D122250(a1 + 56);
      }

      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      return a1;
    }

    sub_21D3A1A28(a1 + 48);
  }

  v9 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v9;
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRUserActivityMetadata(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRUserActivityMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_21D3A1BD8(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[2];
  a1[2] = v4;
  sub_21DBF8E0C();
  v5 = v4;
  return a1;
}

void *assignWithCopy for TTRReminderDetailViewModel.Person(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  v4 = a1[2];
  v5 = a2[2];
  a1[2] = v5;
  v6 = v5;

  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.Person(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderCellTextHighlights(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderCellTextHighlights(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for TTRUserActivityMetadata.PhoneCallContext(uint64_t a1)
{
  if (*(a1 + 16))
  {

    v2 = *(a1 + 24);
  }
}

__n128 initializeWithCopy for TTRUserActivityMetadata.PhoneCallContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  if (v2)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v2;
    v3 = *(a2 + 24);
    *(a1 + 24) = v3;
    sub_21DBF8E0C();
    v4 = v3;
  }

  else
  {
    result = *(a2 + 8);
    *(a1 + 8) = result;
    *(a1 + 24) = *(a2 + 24);
  }

  return result;
}

uint64_t assignWithCopy for TTRUserActivityMetadata.PhoneCallContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      sub_21DBF8E0C();

      v5 = *(a1 + 24);
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      v7 = v6;
    }

    else
    {
      sub_21D122250(a1 + 8);
      v10 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v10;
    }
  }

  else if (v4)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    v8 = *(a2 + 24);
    *(a1 + 24) = v8;
    sub_21DBF8E0C();
    v9 = v8;
  }

  else
  {
    v11 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v11;
  }

  return a1;
}

uint64_t assignWithTake for TTRUserActivityMetadata.PhoneCallContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (!*(a1 + 16))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    sub_21D122250(a1 + 8);
LABEL_5:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRUserActivityMetadata.PhoneCallContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRUserActivityMetadata.PhoneCallContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *assignWithCopy for TTRUserActivityMetadataInterator.BlankAppIconEntry(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  v4 = a1[1];
  a1[1] = v3;
  v5 = v3;

  return a1;
}

void *assignWithTake for TTRUserActivityMetadataInterator.BlankAppIconEntry(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = a2[1];

  return a1;
}

uint64_t assignWithCopy for TTRUserActivityMetadataInterator.OperationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for TTRUserActivityMetadataInterator.OperationParams(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  return a1;
}

unint64_t sub_21D3A21F4()
{
  result = qword_280D18908;
  if (!qword_280D18908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D18908);
  }

  return result;
}

unint64_t sub_21D3A2248()
{
  result = qword_27CE5B260;
  if (!qword_27CE5B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B260);
  }

  return result;
}

void sub_21D3A22A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 != 1)
  {
    sub_21D1576C8(a2, a3, a4);
  }
}

unint64_t sub_21D3A22D4()
{
  result = qword_280D18910[0];
  if (!qword_280D18910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D18910);
  }

  return result;
}

unint64_t sub_21D3A232C()
{
  result = qword_27CE5B288;
  if (!qword_27CE5B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B288);
  }

  return result;
}

uint64_t TTRRemindersListInteractorSectionsCapability.__allocating_init(committer:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D0FD0(a1, v2 + 32);
  return v2;
}

id TTRRemindersListInteractorSectionsCapabilityTarget.objectID.getter()
{
  v1 = [*v0 objectID];

  return v1;
}

uint64_t TTRRemindersListInteractorSectionsCapability.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRRemindersListInteractorSectionsCapability.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRRemindersListInteractorSectionsCapability.init(committer:)(__int128 *a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D0FD0(a1, v1 + 32);
  return v1;
}

id TTRRemindersListInteractorSectionsCapability.addNewSection(displayName:to:sectionID:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a3;
  if (!*(a3 + 8))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v4 + 24);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(&v86, v4, &protocol witness table for TTRRemindersListInteractorSectionsCapability, ObjectType, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v88 = 0;
      v86 = 0u;
      v87 = 0u;
    }

    v30 = a4;
    sub_21DBF8E0C();
    v31 = [v6 store];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_21DC09CF0;
    *(v32 + 32) = v6;
    v33 = objc_allocWithZone(MEMORY[0x277D447D8]);
    v34 = v6;
    v76 = [v33 initWithStore_];
    [v76 setSaveIsNoopIfNoChangedKeys_];
    v35 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      v72 = v31;
      v73 = v30;
      v36 = 0;
      v37 = 0;
      v38 = v35 - 1;
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x223D44740](v36, v32);
        }

        else
        {
          v39 = *(v32 + 8 * v36 + 32);
        }

        v40 = v39;
        sub_21D1826C4(&v86, &aBlock);
        v41 = v76;
        v42 = [v41 updateList_];
        sub_21D1826C4(&aBlock, v80);
        if (qword_280D1AA10 != -1)
        {
          swift_once();
        }

        v43 = qword_280D1AA18;

        sub_21D311700(&aBlock);
        type metadata accessor for TTRListEditor();
        v44 = swift_allocObject();
        v78 = type metadata accessor for TTRUserDefaults();
        v79 = &protocol witness table for TTRUserDefaults;
        *&v77 = v43;
        *(v44 + 64) = 0;
        *(v44 + 16) = v42;
        v45 = v80[1];
        *(v44 + 24) = v80[0];
        *(v44 + 40) = v45;
        *(v44 + 56) = v81;
        swift_beginAccess();
        *(v44 + 64) = 0;
        sub_21D0D0FD0(&v77, v44 + 72);
        v46 = v43;
        v47 = TTRListEditor.addNewSection(with:displayName:)(a4);
        if (v47)
        {
          v48 = v47;
          v29 = [v47 objectID];

          if (v38 == v36)
          {
            goto LABEL_44;
          }
        }

        else
        {

          v29 = 0;
          if (v38 == v36)
          {
            v29 = 0;
LABEL_44:
            v31 = v72;
            v30 = v73;
LABEL_45:
            sub_21D0CE468();
            v66 = sub_21DBFB12C();
            v67 = swift_allocObject();
            v67[3] = 0;
            v67[4] = 0;
            v67[2] = v32;
            v84 = sub_21D1D1AC8;
            v85 = v67;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v83 = sub_21D11E5E4;
            *(&v83 + 1) = &block_descriptor_12;
            v68 = _Block_copy(&aBlock);

            [v76 saveWithQueue:v66 completion:v68];
            _Block_release(v68);

            goto LABEL_49;
          }
        }

        ++v36;
        v37 = v29;
      }
    }

    v29 = 0;
    goto LABEL_45;
  }

  if (*(a3 + 8) == 1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v4 + 24);
      v8 = swift_getObjectType();
      (*(v7 + 8))(&v86, v4, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v8, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      v88 = 0;
      v86 = 0u;
      v87 = 0u;
    }

    v75 = a4;
    sub_21DBF8E0C();
    v13 = [v6 store];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC09CF0;
    *(v14 + 32) = v6;
    v15 = objc_allocWithZone(MEMORY[0x277D447D8]);
    v16 = v6;
    v17 = [v15 initWithStore_];
    [v17 setSaveIsNoopIfNoChangedKeys_];
    v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      v19 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x223D44740](v19, v14);
        }

        else
        {
          v20 = *(v14 + 8 * v19 + 32);
        }

        v21 = v20;
        ++v19;
        sub_21D1826C4(&v86, &aBlock);
        v22 = [v17 updateSmartList_];

        type metadata accessor for TTRSmartListEditor();
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        v24 = v83;
        *(v23 + 24) = aBlock;
        *(v23 + 40) = v24;
        *(v23 + 56) = v84;
        *(v23 + 64) = 0;
        v25 = TTRSmartListEditor.addNewSection(with:displayName:)(a4);
      }

      while (v18 != v19);
    }

    sub_21D0CE468();
    v26 = sub_21DBFB12C();
    v27 = swift_allocObject();
    v27[3] = 0;
    v27[4] = 0;
    v27[2] = v14;
    v84 = sub_21D1D1AC8;
    v85 = v27;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v83 = sub_21D11E5E4;
    *(&v83 + 1) = &block_descriptor_6_0;
    v28 = _Block_copy(&aBlock);

    [v17 saveWithQueue:v26 completion:v28];
    _Block_release(v28);

    sub_21D311700(&v86);
    return 0;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v4 + 24);
    v12 = swift_getObjectType();
    (*(v11 + 8))(&v86, v4, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v12, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
  }

  v49 = a4;
  sub_21DBF8E0C();
  v50 = [v6 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_21DC09CF0;
  *(v51 + 32) = v6;
  v52 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v53 = v6;
  v54 = [v52 initWithStore_];
  [v54 setSaveIsNoopIfNoChangedKeys_];
  v55 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v55)
  {
    v29 = 0;
    goto LABEL_48;
  }

  v74 = v50;
  v56 = 0;
  v57 = 0;
  v58 = v55 - 1;
  while (1)
  {
    v59 = (v51 & 0xC000000000000001) != 0 ? MEMORY[0x223D44740](v56, v51) : *(v51 + 8 * v56 + 32);
    v60 = v59;
    sub_21D1826C4(&v86, &aBlock);
    v61 = [v54 updateTemplate_];

    type metadata accessor for TTRTemplateEditor();
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    v63 = v83;
    *(v62 + 24) = aBlock;
    *(v62 + 40) = v63;
    *(v62 + 56) = v84;
    *(v62 + 64) = 0;
    v64 = TTRTemplateEditor.addNewSection(with:displayName:)(a4);
    if (!v64)
    {
      break;
    }

    v65 = v64;
    v29 = [v64 objectID];

    if (v58 == v56)
    {
      goto LABEL_47;
    }

LABEL_35:
    ++v56;
    v57 = v29;
  }

  v29 = 0;
  if (v58 != v56)
  {
    goto LABEL_35;
  }

  v29 = 0;
LABEL_47:
  v50 = v74;
LABEL_48:
  sub_21D0CE468();
  v66 = sub_21DBFB12C();
  v69 = swift_allocObject();
  v69[3] = 0;
  v69[4] = 0;
  v69[2] = v51;
  v84 = sub_21D1D1AC8;
  v85 = v69;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v83 = sub_21D11E5E4;
  *(&v83 + 1) = &block_descriptor_22;
  v70 = _Block_copy(&aBlock);

  [v54 saveWithQueue:v66 completion:v70];
  _Block_release(v70);

LABEL_49:

  sub_21D311700(&v86);
  return v29;
}

uint64_t TTRRemindersListInteractorSectionsCapability.delete(_:option:)(uint64_t a1, void **a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v45, v2, &protocol witness table for TTRRemindersListInteractorSectionsCapability, ObjectType, v6);
    swift_unknownObjectRelease();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    if (v4)
    {
LABEL_3:
      if (v4 == 1)
      {
        if (v5)
        {
          v8 = [v3 smartList];
          sub_21D1826C4(v45, v44);
          sub_21D1826C4(v44, &v41);
          v9 = [v5 updateSmartList_];

          sub_21D311700(v44);
          type metadata accessor for TTRSmartListEditor();
          v10 = swift_allocObject();
          *(v10 + 16) = v9;
          v11 = v42;
          *(v10 + 24) = v41;
          *(v10 + 40) = v11;
          *(v10 + 56) = v43;
          *(v10 + 64) = 0;
          v12 = [v9 saveRequest];
          v13 = [v12 updateSmartListSection_];

          [v13 removeFromSmartList];
          v14 = [v3 objectID];
          v15 = swift_allocObject();
          *(v15 + 16) = v14;
          v16 = v14;
          sub_21D182C44(sub_21D3A4970, v15);
LABEL_13:

          return sub_21D311700(v45);
        }

        v31 = [v3 smartList];
        MEMORY[0x28223BE20](v31);
        sub_21D9779E8(v32, v45, 0, 0, sub_21D3A4978);
      }

      else
      {
        if (v5)
        {
          v24 = [v3 parentTemplate];
          sub_21D1826C4(v45, v44);
          sub_21D1826C4(v44, &v41);
          v25 = [v5 updateTemplate_];

          sub_21D311700(v44);
          type metadata accessor for TTRTemplateEditor();
          v26 = swift_allocObject();
          *(v26 + 16) = v25;
          v27 = v42;
          *(v26 + 24) = v41;
          *(v26 + 40) = v27;
          *(v26 + 56) = v43;
          *(v26 + 64) = 0;
          v28 = [v25 saveRequest];
          v13 = [v28 updateTemplateSection_];

          [v13 removeFromParentTemplate];
          v29 = [v3 objectID];
          v30 = swift_allocObject();
          *(v30 + 16) = v29;
          v16 = v29;
          sub_21D182D68(sub_21D3A4960, v30);
          goto LABEL_13;
        }

        v31 = [v3 parentTemplate];
        MEMORY[0x28223BE20](v31);
        sub_21D977C68(v34, v45, 0, 0, sub_21D3A4968);
      }

LABEL_17:

      return sub_21D311700(v45);
    }
  }

  if (!v5)
  {
    v31 = [v3 list];
    MEMORY[0x28223BE20](v31);
    sub_21D9776CC(v33, v45, 0, 0, sub_21D3A4980);
    goto LABEL_17;
  }

  v17 = [v3 list];
  sub_21D1826C4(v45, v44);
  sub_21D1826C4(v44, &v41);
  v18 = v5;
  v19 = [v18 updateList_];
  sub_21D1826C4(&v41, v39);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v20 = qword_280D1AA18;
  sub_21D311700(&v41);
  type metadata accessor for TTRListEditor();
  v21 = swift_allocObject();
  v37 = type metadata accessor for TTRUserDefaults();
  v38 = &protocol witness table for TTRUserDefaults;
  *&v36 = v20;
  v22 = v20;
  sub_21D311700(v44);
  *(v21 + 64) = 0;
  *(v21 + 16) = v19;
  v23 = v39[1];
  *(v21 + 24) = v39[0];
  *(v21 + 40) = v23;
  *(v21 + 56) = v40;
  swift_beginAccess();
  *(v21 + 64) = 0;
  sub_21D0D0FD0(&v36, v21 + 72);

  TTRListEditor.deleteSection(_:)(v3);

  return sub_21D311700(v45);
}