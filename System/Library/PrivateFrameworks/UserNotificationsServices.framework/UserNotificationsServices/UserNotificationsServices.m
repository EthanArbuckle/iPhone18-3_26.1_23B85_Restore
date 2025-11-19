uint64_t get_enum_tag_for_layout_string_25UserNotificationsServices7UNSListV7SectionV5GroupV14GroupingMethodOyx___G(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_25UserNotificationsServices7UNSListV7SectionV0E4TypeOyx__G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_270B09BA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_270B09C24(char a1)
{
  v2 = v1;
  v4 = *v1;
  v3 = v1[1];
  if (a1)
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = sub_270B313AC();
    v8 = [v7 un_logDigest];

    if (v8)
    {
      v4 = sub_270B313BC();
      v3 = v9;
    }

    else
    {
      v3 = 0xE400000000000000;
      v4 = 1061109567;
    }
  }

  else
  {
    v10 = v1[1];
  }

  sub_270B316CC();

  MEMORY[0x2743B0AB0](v4, v3);

  MEMORY[0x2743B0AB0](0x3D656D6974202CLL, 0xE700000000000000);
  v11 = sub_270B09EE4();
  v12 = type metadata accessor for UserNotification.Identifier(0);
  v13 = v2 + *(v12 + 20);
  v14 = sub_270B311BC();
  v15 = [v11 stringFromDate_];

  v16 = sub_270B313BC();
  v18 = v17;

  MEMORY[0x2743B0AB0](v16, v18);

  MEMORY[0x2743B0AB0](0x656C646E7562202CLL, 0xE90000000000003DLL);
  MEMORY[0x2743B0AB0](*(v2 + *(v12 + 24)), *(v2 + *(v12 + 24) + 8));
  MEMORY[0x2743B0AB0](93, 0xE100000000000000);
  return 1029990747;
}

void UserNotification.id.getter(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 request];
  v5 = [v4 identifier];

  v6 = sub_270B313BC();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
  v9 = [v3 date];
  v10 = type metadata accessor for UserNotification.Identifier(0);
  v11 = a1 + *(v10 + 20);
  sub_270B311DC();

  v12 = [v3 sourceIdentifier];
  v13 = sub_270B313BC();
  v15 = v14;

  v16 = (a1 + *(v10 + 24));
  *v16 = v13;
  v16[1] = v15;
}

uint64_t sub_270B09EE4()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844AA0, &unk_270B35EC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v18 - v1;
  v3 = sub_270B3126C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_270B3123C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v14 = sub_270B313AC();
  [v13 setDateFormat_];

  sub_270B311FC();
  v15 = sub_270B3121C();
  (*(v9 + 8))(v12, v8);
  [v13 setLocale_];

  sub_270B3124C();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v7, v2, v3);
    v17 = sub_270B3125C();
    (*(v4 + 8))(v7, v3);
    [v13 setTimeZone_];

    return v13;
  }

  return result;
}

uint64_t sub_270B0A1A8(char a1)
{
  v3 = (type metadata accessor for UserNotification.Identifier(0) - 8);
  v4 = *(*v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  v8 = [*v1 request];
  v9 = [v8 identifier];

  v10 = sub_270B313BC();
  v12 = v11;

  *v6 = v10;
  v6[1] = v12;
  v13 = [v7 date];
  v14 = v6 + v3[7];
  sub_270B311DC();

  v15 = [v7 sourceIdentifier];
  v16 = sub_270B313BC();
  v18 = v17;

  v19 = (v6 + v3[8]);
  *v19 = v16;
  v19[1] = v18;
  v20 = sub_270B09C24(a1);
  sub_270B09BA4(v6, type metadata accessor for UserNotification.Identifier);
  return v20;
}

uint64_t sub_270B0A348(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_270B0A3A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_270B0A450(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_270B0A4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844838, &qword_270B34348);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844840, &qword_270B34350);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_270B0A610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_270B0A6D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t UserNotification.spotlightIdentifier.getter()
{
  v2 = UserNotification.bundleIdentifier.getter();
  MEMORY[0x2743B0AB0](58, 0xE100000000000000);
  v0 = UserNotification.requestIdentifier.getter();
  MEMORY[0x2743B0AB0](v0);

  return v2;
}

uint64_t UserNotification.bundleIdentifier.getter()
{
  v1 = (type metadata accessor for UserNotification.Identifier(0) - 8);
  v2 = *(*v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  v6 = [*v0 request];
  v7 = [v6 identifier];

  v8 = sub_270B313BC();
  v10 = v9;

  *v4 = v8;
  v4[1] = v10;
  v11 = [v5 date];
  v12 = v4 + v1[7];
  sub_270B311DC();

  v13 = [v5 sourceIdentifier];
  v14 = sub_270B313BC();
  v16 = v15;

  v17 = (v4 + v1[8]);
  *v17 = v14;
  v17[1] = v16;

  sub_270B09BA4(v4, type metadata accessor for UserNotification.Identifier);
  return v14;
}

uint64_t UserNotification.requestIdentifier.getter()
{
  v1 = (type metadata accessor for UserNotification.Identifier(0) - 8);
  v2 = *(*v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  v6 = [*v0 request];
  v7 = [v6 identifier];

  v8 = sub_270B313BC();
  v10 = v9;

  *v4 = v8;
  v4[1] = v10;

  v11 = [v5 date];
  v12 = v4 + v1[7];
  sub_270B311DC();

  v13 = [v5 sourceIdentifier];
  v14 = sub_270B313BC();
  v16 = v15;

  v17 = (v4 + v1[8]);
  *v17 = v14;
  v17[1] = v16;
  sub_270B09BA4(v4, type metadata accessor for UserNotification.Identifier);
  return v8;
}

id UNSLogCommunicationNotifications()
{
  if (UNSLogCommunicationNotifications_onceToken != -1)
  {
    UNSLogCommunicationNotifications_cold_1();
  }

  v1 = UNSLogCommunicationNotifications___logger;

  return v1;
}

uint64_t sub_270B0AE44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_270B0AE7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_270B0AFBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

void *sub_270B0B078(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_270B0B128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v11[0] = *(a3 + 16);
  v11[1] = v6;
  v7 = type metadata accessor for UNSList.Section.Group(0, v11);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    return (*(v8 + 48))(a1, a2, v7);
  }

  v10 = *(a1 + *(a3 + 52) + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_270B0B1E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 32);
  v11[0] = *(a4 + 16);
  v11[1] = v8;
  result = type metadata accessor for UNSList.Section.Group(0, v11);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    return (*(v10 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 52) + 8) = (a2 - 1);
  return result;
}

uint64_t sub_270B0B388(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446C8, &qword_270B342E0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446D0, &qword_270B342E8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446D8, &qword_270B342F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[15]];

  return v15(v16, a2, v14);
}

char *sub_270B0B518(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446C8, &qword_270B342E0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446D0, &qword_270B342E8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446D8, &qword_270B342F0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[15]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_270B0B6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_270B311EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_270B0B754(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_270B311EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_270B0B800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844838, &qword_270B34348);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844840, &qword_270B34350);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

id UNSLogImageProvider()
{
  if (UNSLogImageProvider_onceToken != -1)
  {
    UNSLogImageProvider_cold_1();
  }

  v1 = UNSLogImageProvider___logger;

  return v1;
}

uint64_t __UNSLogImageProvider_block_invoke()
{
  UNSLogImageProvider___logger = os_log_create(UserNotificationsServicesLogSubsystem, "ImageProvider");

  return MEMORY[0x2821F96F8]();
}

uint64_t __UNSLogCommunicationNotifications_block_invoke()
{
  UNSLogCommunicationNotifications___logger = os_log_create(UserNotificationsServicesLogSubsystem, "CommunicationNotifications");

  return MEMORY[0x2821F96F8]();
}

void sub_270B0F850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getCNAvatarImageRendererClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNAvatarImageRendererClass_softClass;
  v7 = getCNAvatarImageRendererClass_softClass;
  if (!getCNAvatarImageRendererClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCNAvatarImageRendererClass_block_invoke;
    v3[3] = &unk_279E143C0;
    v3[4] = &v4;
    __getCNAvatarImageRendererClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_270B0FB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270B0FCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270B101B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNAvatarImageRendererClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNAvatarImageRenderer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNAvatarImageRendererClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCNAvatarImageRendererClass_block_invoke_cold_1();
    ContactsUILibrary();
  }
}

void ContactsUILibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __ContactsUILibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_279E143E0;
    v4 = 0;
    ContactsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __ContactsUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCNAvatarImageRendererSettingsClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNAvatarImageRendererSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNAvatarImageRendererSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCNAvatarImageRendererSettingsClass_block_invoke_cold_1();
    return __getCNAvatarImageRenderingScopeClass_block_invoke(v3);
  }

  return result;
}

Class __getCNAvatarImageRenderingScopeClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNAvatarImageRenderingScope");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNAvatarImageRenderingScopeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCNAvatarImageRenderingScopeClass_block_invoke_cold_1();
    return [(UNSImageProvider *)v3 imageDataForContentURL:v4, v5];
  }

  return result;
}

uint64_t static SummarizationEligibility.eligibleForSummarization(category:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (_s25UserNotificationsServices24SummarizationEligibilityV21topicSummariesEnabledSbyFZ_0())
  {
    v2 = 1;
  }

  else if (v1 <= 1 && v1)
  {

    v2 = 0;
  }

  else
  {
    v3 = sub_270B3184C();

    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t static SummarizationEligibility.eligibleForSummarization(bundleId:)(uint64_t a1, uint64_t a2)
{
  _s25UserNotificationsServices30SummarizationSourceCategorizerV8category2ofAC0E8CategoryOSS_tFZ_0(a1, a2, &v6);
  v2 = v6;
  if (_s25UserNotificationsServices24SummarizationEligibilityV21topicSummariesEnabledSbyFZ_0())
  {
    v3 = 1;
  }

  else if (v2 <= 1 && v2)
  {

    v3 = 0;
  }

  else
  {
    v4 = sub_270B3184C();

    v3 = v4 ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_270B1181C()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t sub_270B11828()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return result;
}

uint64_t sub_270B11834(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C61636974697263;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0x7661686542646E64;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000270B36810;
    }

    else
    {
      v5 = 0xEB00000000726F69;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x736E6553656D6974;
    }

    else
    {
      v4 = 0x6C61636974697263;
    }

    if (v3)
    {
      v5 = 0xED00006576697469;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xD000000000000012;
  v8 = 0x8000000270B36810;
  if (a2 != 2)
  {
    v7 = 0x7661686542646E64;
    v8 = 0xEB00000000726F69;
  }

  if (a2)
  {
    v2 = 0x736E6553656D6974;
    v6 = 0xED00006576697469;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_270B3184C();
  }

  return v11 & 1;
}

uint64_t sub_270B119A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00656C74695464;
  v3 = 0x657A696C61636F6CLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x657A696C61636F6CLL;
    }

    else
    {
      v5 = 0x7972616D6D7573;
    }

    if (v4 == 2)
    {
      v6 = 0xED000079646F4264;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x657A696C61636F6CLL;
    }

    if (v4)
    {
      v6 = 0x8000000270B36840;
    }

    else
    {
      v6 = 0xEE00656C74695464;
    }
  }

  v7 = 0xED000079646F4264;
  v8 = 0x7972616D6D7573;
  if (a2 == 2)
  {
    v8 = 0x657A696C61636F6CLL;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000270B36840;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_270B3184C();
  }

  return v11 & 1;
}

uint64_t sub_270B11AE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x726568746FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x726568746FLL;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3)
    {
      v5 = 0x8000000270B36690;
    }

    else
    {
      v5 = 0x8000000270B36670;
    }
  }

  v6 = 0xE500000000000000;
  if (a2 != 2)
  {
    v2 = 1701736302;
    v6 = 0xE400000000000000;
  }

  v7 = 0xD000000000000016;
  v8 = 0x8000000270B36690;
  if (a2)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v8 = 0x8000000270B36670;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_270B3184C();
  }

  return v11 & 1;
}

BOOL sub_270B11C38(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_270B11CBC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_270B11D68()
{
  if (qword_280843D08 != -1)
  {
    swift_once();
  }

  v0 = sub_270B312BC();
  __swift_project_value_buffer(v0, qword_28084B4F0);
  v1 = sub_270B3129C();
  v2 = sub_270B315BC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67240960;
    *(v3 + 8) = 1026;
    *(v3 + 10) = 0;
    *(v3 + 14) = 1026;
    *(v3 + 16) = 0;
    *(v3 + 20) = 1026;
    *(v3 + 22) = 0;
    _os_log_impl(&dword_270B08000, v1, v2, "China region:%{BOOL,public}d = chinaSupport:%{BOOL,public}d && hasAdditionalPolicy:%{BOOL,public}d && additionalPolicyContainsChina:%{BOOL,public}d", v3, 0x1Au);
    MEMORY[0x2743B1600](v3, -1, -1);
  }

  return 0;
}

uint64_t _s25UserNotificationsServices24SummarizationEligibilityV21topicSummariesEnabledSbyFZ_0()
{
  v0 = sub_270B3123C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_270B3122C();
  v5 = sub_270B3120C();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v8 = UNIsInternalInstall();
  v27[0] = v5;
  v27[1] = v7;
  v26 = v27;
  v9 = sub_270B11CBC(sub_270B12278, v25, &unk_28809C840);
  v27[3] = &type metadata for NotificationsUIFeatureFlags;
  v27[4] = sub_270B122D0();
  v10 = swift_allocObject();
  v27[0] = v10;
  *(v10 + 16) = "NotificationsUI";
  *(v10 + 24) = 15;
  *(v10 + 32) = 2;
  *(v10 + 40) = "TopicSummaries";
  *(v10 + 48) = 14;
  *(v10 + 56) = 2;
  v11 = sub_270B3127C();
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v12 = sub_270B11D68();
  v13 = v12;
  if (v11)
  {
    v14 = (v12 ^ 1) & (v9 | v8);
  }

  else
  {
    v14 = 0;
  }

  if (qword_280843D08 != -1)
  {
    swift_once();
  }

  v15 = sub_270B312BC();
  __swift_project_value_buffer(v15, qword_28084B4F0);

  v16 = sub_270B3129C();
  v17 = sub_270B315BC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v24 = v8;
    v19 = v18;
    v20 = swift_slowAlloc();
    v27[0] = v20;
    *v19 = 67241474;
    *(v19 + 4) = v14 & 1;
    *(v19 + 8) = 1026;
    *(v19 + 10) = v11 & 1;
    *(v19 + 14) = 1026;
    *(v19 + 16) = v13 & 1;
    *(v19 + 20) = 1024;
    *(v19 + 22) = v9 & 1;
    *(v19 + 26) = 2082;
    v21 = sub_270B147CC(v5, v7, v27);

    *(v19 + 28) = v21;
    *(v19 + 36) = 1026;
    *(v19 + 38) = v24;
    _os_log_impl(&dword_270B08000, v16, v17, "Topic summaries enabled:%{BOOL,public}d = featureEnabled:%{BOOL,public}d && !(chinaRegion:%{BOOL,public}d) && (isAllowedLocale=%{BOOL}d(code=%{public}s) || internalInstall=%{BOOL,public}d)", v19, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x2743B1600](v20, -1, -1);
    MEMORY[0x2743B1600](v19, -1, -1);
  }

  else
  {
  }

  return v14 & 1;
}

uint64_t getEnumTagSinglePayload for SummarizationEligibility(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SummarizationEligibility(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_270B12278(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_270B3184C() & 1;
  }
}

unint64_t sub_270B122D0()
{
  result = qword_28125CBA0;
  if (!qword_28125CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125CBA0);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_270B123BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270B123DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

UserNotificationsServices::SummarizationSourceCategorizer::SourceCategory_optional __swiftcall SummarizationSourceCategorizer.SourceCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_270B3173C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SummarizationSourceCategorizer.SourceCategory.rawValue.getter()
{
  v1 = 0x726568746FLL;
  if (*v0 != 2)
  {
    v1 = 1701736302;
  }

  v2 = 0xD000000000000016;
  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_270B1250C()
{
  v1 = *v0;
  sub_270B318BC();
  sub_270B3142C();

  return sub_270B318EC();
}

uint64_t sub_270B125D0()
{
  *v0;
  *v0;
  *v0;
  sub_270B3142C();
}

uint64_t sub_270B12680()
{
  v1 = *v0;
  sub_270B318BC();
  sub_270B3142C();

  return sub_270B318EC();
}

void sub_270B1274C(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x726568746FLL;
  if (*v1 != 2)
  {
    v3 = 1701736302;
    v2 = 0xE400000000000000;
  }

  v4 = 0x8000000270B36670;
  v5 = 0xD000000000000016;
  if (*v1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x8000000270B36690;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void _s25UserNotificationsServices30SummarizationSourceCategorizerV8category2ofAC0E8CategoryOSS_tFZ_0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_270B3130C();
  v7 = *(v6 - 8);
  v51 = v6;
  v52 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_270B312DC();
  v11 = *(v50 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  sub_270B133B4(a1, a2, &aBlock);
  v15 = aBlock;
  if (aBlock == 4)
  {
    if (qword_28125CB80 != -1)
    {
      swift_once();
    }

    v16 = qword_28125CB88;
    MEMORY[0x28223BE20]();
    v17 = v45;
    *(&v41 - 2) = a1;
    *(&v41 - 1) = v17;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D28, &qword_270B328A0);
    v44 = a1;
    sub_270B3160C();
    v15 = aBlock;
    if (aBlock == 4)
    {
      v41 = 0;
      v42 = a3;
      sub_270B312CC();
      v57 = sub_270B15410;
      v58 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v55 = sub_270B141C8;
      v56 = &block_descriptor;
      v18 = _Block_copy(&aBlock);
      sub_270B312EC();
      v49 = v16;
      MEMORY[0x2743B0C40](0, v10, v14, v18);
      _Block_release(v18);
      v19 = *(v52 + 8);
      v52 += 8;
      v47 = v19;
      v19(v10, v51);
      v20 = *(v11 + 8);
      v48 = v11 + 8;
      v46 = v20;
      v20(v14, v50);

      v21 = [objc_opt_self() enumeratorWithOptions_];
      v22 = [v21 nextObject];
      if (v22)
      {
        v23 = v22;
        do
        {
          v24 = [v23 bundleIdentifier];
          if (v24)
          {
            v25 = v24;
            v26 = sub_270B313BC();
            v28 = v27;

            sub_270B312CC();
            v29 = swift_allocObject();
            v29[2] = v26;
            v29[3] = v28;
            v29[4] = v23;
            v57 = sub_270B154D0;
            v58 = v29;
            aBlock = MEMORY[0x277D85DD0];
            v54 = 1107296256;
            v55 = sub_270B141C8;
            v56 = &block_descriptor_20;
            v30 = _Block_copy(&aBlock);
            v31 = v23;
            sub_270B312EC();
            MEMORY[0x2743B0C40](0, v10, v14, v30);
            _Block_release(v30);

            v47(v10, v51);
            v46(v14, v50);
          }

          else
          {
          }

          v23 = [v21 nextObject];
        }

        while (v23);
      }

      MEMORY[0x28223BE20]();
      v32 = v45;
      *(&v41 - 2) = v44;
      *(&v41 - 1) = v32;
      sub_270B3160C();
      v15 = aBlock;
      if (aBlock == 4)
      {
        a3 = v42;
        if (qword_28125CA68 != -1)
        {
          swift_once();
        }

        v33 = sub_270B312BC();
        __swift_project_value_buffer(v33, qword_28125D730);

        v34 = sub_270B3129C();
        v35 = sub_270B315CC();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          aBlock = v37;
          *v36 = 136446210;
          v38 = v44;
          *(v36 + 4) = sub_270B147CC(v44, v32, &aBlock);
          _os_log_impl(&dword_270B08000, v34, v35, "Failed to look up iTunes Category for bundleId: %{public}s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v37);
          MEMORY[0x2743B1600](v37, -1, -1);
          MEMORY[0x2743B1600](v36, -1, -1);
        }

        else
        {

          v38 = v44;
        }

        sub_270B312CC();
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        *(v39 + 24) = v32;
        v57 = sub_270B154C8;
        v58 = v39;
        aBlock = MEMORY[0x277D85DD0];
        v54 = 1107296256;
        v55 = sub_270B141C8;
        v56 = &block_descriptor_14;
        v40 = _Block_copy(&aBlock);

        sub_270B312EC();
        MEMORY[0x2743B0C40](0, v10, v14, v40);

        _Block_release(v40);
        v47(v10, v51);
        v46(v14, v50);

        v15 = 3;
      }

      else
      {

        a3 = v42;
      }
    }
  }

  *a3 = v15;
}

unint64_t sub_270B12F08()
{
  result = qword_280843D10;
  if (!qword_280843D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280843D10);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationSourceCategorizer.SourceCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SummarizationSourceCategorizer.SourceCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_270B13158()
{
  result = sub_270B154DC(MEMORY[0x277D84F90]);
  off_28125CB78 = result;
  return result;
}

uint64_t sub_270B13180()
{
  v8 = sub_270B315FC();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_270B315EC() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = *(*(sub_270B3130C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7[1] = sub_270B15638();
  sub_270B312FC();
  v9 = MEMORY[0x277D84F90];
  sub_270B15684();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D48, &unk_270B328C0);
  sub_270B156DC(&qword_28125CA40, &qword_280843D48, &unk_270B328C0);
  sub_270B316AC();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v8);
  result = sub_270B3162C();
  qword_28125CB88 = result;
  return result;
}

uint64_t sub_270B133B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result;
  if (result == 0xD000000000000010 && 0x8000000270B368C0 == a2)
  {
    goto LABEL_7;
  }

  result = sub_270B3184C();
  if ((result & 1) != 0 || v4 == 0xD000000000000011 && 0x8000000270B368E0 == a2)
  {
    goto LABEL_7;
  }

  result = sub_270B3184C();
  if (result)
  {
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000012 && 0x8000000270B36900 == a2 || (result = sub_270B3184C(), (result & 1) != 0) || v4 == 0xD000000000000013 && 0x8000000270B36920 == a2 || (result = sub_270B3184C(), (result & 1) != 0) || v4 == 0xD000000000000015 && 0x8000000270B36940 == a2 || (result = sub_270B3184C(), (result & 1) != 0))
  {
LABEL_18:
    v6 = 0;
    goto LABEL_8;
  }

  if (v4 == 0xD000000000000013 && 0x8000000270B36960 == a2)
  {
    goto LABEL_7;
  }

  result = sub_270B3184C();
  if ((result & 1) != 0 || v4 == 0x6C7070612E6D6F63 && a2 == 0xEE00737069742E65)
  {
    goto LABEL_7;
  }

  result = sub_270B3184C();
  if (result)
  {
    goto LABEL_7;
  }

  if (v4 == 0xD000000000000010 && 0x8000000270B36980 == a2)
  {
    goto LABEL_27;
  }

  result = sub_270B3184C();
  v8 = v4 == 0x6C7070612E6D6F63 && a2 == 0xEF636973754D2E65;
  v6 = 1;
  if ((result & 1) == 0 && !v8)
  {
    result = sub_270B3184C();
    if (result)
    {
      goto LABEL_27;
    }

    if (v4 != 0xD000000000000015 || 0x8000000270B369A0 != a2)
    {
      result = sub_270B3184C();
      if ((result & 1) == 0 && (v4 != 0xD000000000000012 || 0x8000000270B369C0 != a2))
      {
        result = sub_270B3184C();
        if ((result & 1) == 0 && (v4 != 0xD000000000000016 || 0x8000000270B369E0 != a2))
        {
          result = sub_270B3184C();
          if ((result & 1) == 0 && (v4 != 0xD000000000000016 || 0x8000000270B36A00 != a2))
          {
            result = sub_270B3184C();
            if ((result & 1) == 0 && (v4 != 0xD000000000000013 || 0x8000000270B36A20 != a2))
            {
              result = sub_270B3184C();
              if ((result & 1) == 0 && (v4 != 0xD000000000000014 || 0x8000000270B36A40 != a2))
              {
                result = sub_270B3184C();
                if ((result & 1) == 0 && (v4 != 0xD000000000000011 || 0x8000000270B36A60 != a2))
                {
                  result = sub_270B3184C();
                  if ((result & 1) == 0 && (v4 != 0xD000000000000011 || 0x8000000270B36A80 != a2))
                  {
                    result = sub_270B3184C();
                    if ((result & 1) == 0 && (v4 != 0xD000000000000014 || 0x8000000270B36AA0 != a2))
                    {
                      result = sub_270B3184C();
                      if ((result & 1) == 0 && (v4 != 0xD000000000000015 || 0x8000000270B36AC0 != a2))
                      {
                        result = sub_270B3184C();
                        if ((result & 1) == 0 && (v4 != 0xD000000000000015 || 0x8000000270B36AE0 != a2))
                        {
                          result = sub_270B3184C();
                          if ((result & 1) == 0 && (v4 != 0xD000000000000012 || 0x8000000270B36B00 != a2))
                          {
                            result = sub_270B3184C();
                            v10 = v4 == 0x6C7070612E6D6F63 && a2 == 0xEE00656D6F482E65;
                            v6 = 2;
                            if ((result & 1) != 0 || v10)
                            {
                              goto LABEL_8;
                            }

                            result = sub_270B3184C();
                            if ((result & 1) == 0 && (v4 != 0xD000000000000010 || 0x8000000270B36B20 != a2))
                            {
                              result = sub_270B3184C();
                              if ((result & 1) == 0 && (v4 != 0xD000000000000010 || 0x8000000270B36B40 != a2))
                              {
                                result = sub_270B3184C();
                                if ((result & 1) == 0 && (v4 != 0xD000000000000013 || 0x8000000270B36B60 != a2))
                                {
                                  result = sub_270B3184C();
                                  if ((result & 1) == 0 && (v4 != 0xD000000000000010 || 0x8000000270B36B80 != a2))
                                  {
                                    result = sub_270B3184C();
                                    if ((result & 1) == 0 && (v4 != 0xD000000000000010 || 0x8000000270B36BA0 != a2))
                                    {
                                      result = sub_270B3184C();
                                      v12 = v4 == 0x6C7070612E6D6F63 && a2 == 0xEE007370614D2E65;
                                      v6 = 2;
                                      if ((result & 1) != 0 || v12)
                                      {
                                        goto LABEL_8;
                                      }

                                      result = sub_270B3184C();
                                      if ((result & 1) == 0)
                                      {
                                        result = 0xD00000000000001BLL;
                                        if (v4 == 0xD00000000000001BLL && 0x8000000270B36BC0 == a2)
                                        {
                                          goto LABEL_18;
                                        }

                                        result = sub_270B3184C();
                                        if (result)
                                        {
                                          goto LABEL_18;
                                        }

                                        if (v4 != 0xD000000000000013 || 0x8000000270B36BE0 != a2)
                                        {
                                          result = sub_270B3184C();
                                          if ((result & 1) == 0)
                                          {
                                            if (v4 == 0xD000000000000014 && 0x8000000270B36C00 == a2)
                                            {
                                              goto LABEL_18;
                                            }

                                            result = sub_270B3184C();
                                            if (result)
                                            {
                                              goto LABEL_18;
                                            }

                                            if (v4 != 0xD000000000000015 || 0x8000000270B36C20 != a2)
                                            {
                                              result = sub_270B3184C();
                                              if ((result & 1) == 0 && (v4 != 0xD000000000000019 || 0x8000000270B36C40 != a2))
                                              {
                                                result = sub_270B3184C();
                                                if ((result & 1) == 0)
                                                {
                                                  if (v4 == 0x6C7070612E6D6F63 && a2 == 0xEE007377656E2E65)
                                                  {
                                                    goto LABEL_27;
                                                  }

                                                  result = sub_270B3184C();
                                                  if ((result & 1) != 0 || v4 == 0xD000000000000012 && 0x8000000270B36C60 == a2)
                                                  {
                                                    goto LABEL_27;
                                                  }

                                                  result = sub_270B3184C();
                                                  if (result)
                                                  {
                                                    goto LABEL_27;
                                                  }

                                                  if (v4 != 0xD000000000000013 || 0x8000000270B36C80 != a2)
                                                  {
                                                    result = sub_270B3184C();
                                                    if ((result & 1) == 0)
                                                    {
                                                      if (v4 == 0x6C7070612E6D6F63 && a2 == 0xEC00000076742E65)
                                                      {
                                                        goto LABEL_27;
                                                      }

                                                      result = sub_270B3184C();
                                                      if (result)
                                                      {
                                                        goto LABEL_27;
                                                      }

                                                      if (v4 != 0xD000000000000011 || 0x8000000270B36CA0 != a2)
                                                      {
                                                        result = sub_270B3184C();
                                                        if ((result & 1) == 0)
                                                        {
                                                          if (v4 == 0xD000000000000010 && 0x8000000270B36CC0 == a2)
                                                          {
                                                            goto LABEL_18;
                                                          }

                                                          result = sub_270B3184C();
                                                          if (result)
                                                          {
                                                            goto LABEL_18;
                                                          }

                                                          result = 0xD00000000000001CLL;
                                                          if (v4 == 0xD00000000000001CLL && 0x8000000270B36CE0 == a2)
                                                          {
                                                            goto LABEL_18;
                                                          }

                                                          result = sub_270B3184C();
                                                          if ((result & 1) != 0 || v4 == 0xD000000000000012 && 0x8000000270B36D00 == a2)
                                                          {
                                                            goto LABEL_18;
                                                          }

                                                          result = sub_270B3184C();
                                                          if ((result & 1) != 0 || v4 == 0xD000000000000016 && 0x8000000270B36D20 == a2)
                                                          {
                                                            goto LABEL_18;
                                                          }

                                                          result = sub_270B3184C();
                                                          if ((result & 1) != 0 || v4 == 0xD000000000000019 && 0x8000000270B36D40 == a2)
                                                          {
                                                            goto LABEL_18;
                                                          }

                                                          result = sub_270B3184C();
                                                          if ((result & 1) != 0 || v4 == 0xD000000000000018 && 0x8000000270B36D60 == a2)
                                                          {
                                                            goto LABEL_18;
                                                          }

                                                          result = sub_270B3184C();
                                                          if ((result & 1) != 0 || v4 == 0xD000000000000013 && 0x8000000270B36D80 == a2)
                                                          {
                                                            goto LABEL_18;
                                                          }

                                                          result = sub_270B3184C();
                                                          if (result)
                                                          {
                                                            goto LABEL_18;
                                                          }

                                                          if (v4 != 0xD000000000000011 || 0x8000000270B36DA0 != a2)
                                                          {
                                                            result = sub_270B3184C();
                                                            if ((result & 1) == 0)
                                                            {
                                                              result = 0xD000000000000017;
                                                              if (v4 == 0xD000000000000017 && 0x8000000270B36DC0 == a2)
                                                              {
                                                                goto LABEL_18;
                                                              }

                                                              result = sub_270B3184C();
                                                              if ((result & 1) != 0 || v4 == 0xD000000000000013 && 0x8000000270B36DE0 == a2)
                                                              {
                                                                goto LABEL_18;
                                                              }

                                                              result = sub_270B3184C();
                                                              if (result)
                                                              {
                                                                goto LABEL_18;
                                                              }

                                                              if (v4 != 0xD000000000000016 || 0x8000000270B36E00 != a2)
                                                              {
                                                                result = sub_270B3184C();
                                                                if ((result & 1) == 0)
                                                                {
                                                                  if (v4 == 0xD000000000000014 && 0x8000000270B36E20 == a2)
                                                                  {
                                                                    goto LABEL_18;
                                                                  }

                                                                  result = sub_270B3184C();
                                                                  if ((result & 1) != 0 || v4 == 0xD000000000000018 && 0x8000000270B36E40 == a2)
                                                                  {
                                                                    goto LABEL_18;
                                                                  }

                                                                  result = sub_270B3184C();
                                                                  if ((result & 1) != 0 || v4 == 0xD000000000000015 && 0x8000000270B36E60 == a2)
                                                                  {
                                                                    goto LABEL_18;
                                                                  }

                                                                  result = sub_270B3184C();
                                                                  if (result)
                                                                  {
                                                                    goto LABEL_18;
                                                                  }

                                                                  result = 0x6E2E64622E6D6F63;
                                                                  if (v4 == 0x6E2E64622E6D6F63 && a2 == 0xEF7463656A6F7270)
                                                                  {
                                                                    goto LABEL_18;
                                                                  }

                                                                  result = sub_270B3184C();
                                                                  if ((result & 1) != 0 || v4 == 0xD000000000000013 && 0x8000000270B36E80 == a2)
                                                                  {
                                                                    goto LABEL_18;
                                                                  }

                                                                  result = sub_270B3184C();
                                                                  if ((result & 1) != 0 || v4 == 0xD000000000000019 && 0x8000000270B36EA0 == a2)
                                                                  {
                                                                    goto LABEL_18;
                                                                  }

                                                                  result = sub_270B3184C();
                                                                  if ((result & 1) != 0 || v4 == 0xD000000000000016 && 0x8000000270B36EC0 == a2)
                                                                  {
                                                                    goto LABEL_18;
                                                                  }

                                                                  result = sub_270B3184C();
                                                                  if (result)
                                                                  {
                                                                    goto LABEL_18;
                                                                  }

                                                                  result = 0x6F6461622E6D6F63;
                                                                  if (v4 == 0x6F6461622E6D6F63 && a2 == 0xEF6F6F6461422E6FLL)
                                                                  {
                                                                    goto LABEL_18;
                                                                  }

                                                                  result = sub_270B3184C();
                                                                  if (result)
                                                                  {
                                                                    goto LABEL_18;
                                                                  }

                                                                  result = 0x6F746365762E6D69;
                                                                  if (v4 == 0x6F746365762E6D69 && a2 == 0xED00007070612E72)
                                                                  {
                                                                    goto LABEL_18;
                                                                  }

                                                                  result = sub_270B3184C();
                                                                  if (result)
                                                                  {
                                                                    v6 = 0;
                                                                  }

                                                                  else
                                                                  {
                                                                    v6 = 4;
                                                                  }

                                                                  goto LABEL_8;
                                                                }
                                                              }
                                                            }
                                                          }

LABEL_27:
                                                          v6 = 1;
                                                          goto LABEL_8;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_7:
    v6 = 2;
  }

LABEL_8:
  *a3 = v6;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_270B141C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_270B1420C(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_28125CB70 != -1)
  {
    swift_once();
  }

  sub_270B133B4(a1, a2, v12);
  v6 = v12[0];
  if (v12[0] == 4)
  {
    v7 = [a3 iTunesMetadata];
    v8 = [v7 genreIdentifier];

    sub_270B14340(v8, 0, a1, a2, &v13);
    v6 = v13;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = off_28125CB78;
  off_28125CB78 = 0x8000000000000000;
  sub_270B15144(v6, a1, a2, isUniquelyReferenced_nonNull_native);
  off_28125CB78 = v11;
  return swift_endAccess();
}

void sub_270B14340(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v5 = 2;
  if ((a2 & 1) == 0)
  {
    switch(a1)
    {
      case 6000:
      case 6001:
      case 6002:
      case 6003:
      case 6006:
      case 6007:
      case 6008:
      case 6010:
      case 6012:
      case 6013:
      case 6014:
      case 6015:
      case 6017:
      case 6018:
      case 6020:
      case 6023:
      case 6024:
      case 6025:
      case 6026:
      case 6027:
        break;
      case 6004:
      case 6009:
      case 6011:
      case 6016:
      case 6021:
      case 6022:
        v5 = 1;
        break;
      case 6005:
        v5 = 0;
        break;
      case 6019:
        goto LABEL_6;
      default:
        if (a1)
        {
LABEL_6:
          v8 = a5;
          if (qword_28125CA68 != -1)
          {
            swift_once();
          }

          v9 = sub_270B312BC();
          __swift_project_value_buffer(v9, qword_28125D730);

          v10 = sub_270B3129C();
          v11 = sub_270B315CC();

          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v17 = v13;
            *v12 = 136446466;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D38, &qword_270B328B0);
            v14 = sub_270B3140C();
            v16 = sub_270B147CC(v14, v15, &v17);

            *(v12 + 4) = v16;
            *(v12 + 12) = 2082;
            *(v12 + 14) = sub_270B147CC(a3, a4, &v17);
            _os_log_impl(&dword_270B08000, v10, v11, "Unknown iTunesCategory: %{public}s for bundleId: %{public}s", v12, 0x16u);
            v5 = 2;
            swift_arrayDestroy();
            MEMORY[0x2743B1600](v13, -1, -1);
            MEMORY[0x2743B1600](v12, -1, -1);
          }

          else
          {

            v5 = 2;
          }

          a5 = v8;
        }

        break;
    }
  }

  *a5 = v5;
}

uint64_t sub_270B14560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (qword_28125CB70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_28125CB78;
  if (*(off_28125CB78 + 2) && (v7 = sub_270B14D74(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + v7);
  }

  else
  {
    v9 = 4;
  }

  *a3 = v9;
  return swift_endAccess();
}

uint64_t sub_270B1462C(uint64_t a1, uint64_t a2)
{
  if (qword_28125CB70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = off_28125CB78;
  off_28125CB78 = 0x8000000000000000;
  sub_270B15144(3, a1, a2, isUniquelyReferenced_nonNull_native);
  off_28125CB78 = v6;
  return swift_endAccess();
}

uint64_t sub_270B146EC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_270B14738(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_270B14770(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_270B147CC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_270B147CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_270B14898(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_270B155D8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_270B14898(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_270B149A4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_270B316FC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_270B149A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_270B149F0(a1, a2);
  sub_270B14B20(&unk_28809C970);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_270B149F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_270B14C0C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_270B316FC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_270B3149C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_270B14C0C(v10, 0);
        result = sub_270B316BC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_270B14B20(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_270B14C80(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_270B14C0C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D40, &qword_270B328B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_270B14C80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D40, &qword_270B328B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_270B14D74(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_270B318BC();
  sub_270B3142C();
  v6 = sub_270B318EC();

  return sub_270B14DEC(a1, a2, v6);
}

unint64_t sub_270B14DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_270B3184C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_270B14EA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D30, &qword_270B328A8);
  v38 = a2;
  result = sub_270B3171C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_270B318BC();
      sub_270B3142C();
      result = sub_270B318EC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_270B15144(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_270B14D74(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_270B14EA4(v16, a4 & 1);
      v20 = *v5;
      result = sub_270B14D74(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_270B3186C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_270B152A8();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

void *sub_270B152A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D30, &qword_270B328A8);
  v2 = *v0;
  v3 = sub_270B3170C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_270B15410()
{
  if (qword_28125CB70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_28125CB78 = MEMORY[0x277D84F98];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_270B154DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D30, &qword_270B328A8);
    v3 = sub_270B3172C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_270B14D74(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_270B155D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_270B15638()
{
  result = qword_28125CA20;
  if (!qword_28125CA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28125CA20);
  }

  return result;
}

unint64_t sub_270B15684()
{
  result = qword_28125CA28;
  if (!qword_28125CA28)
  {
    sub_270B315EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125CA28);
  }

  return result;
}

uint64_t sub_270B156DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t UNSList.sections.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t UNSList.Section.groups.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t UNSList.Section.type.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_270B15808(v2, v3);
}

uint64_t sub_270B15808(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t UNSList.Section.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_270B15850(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t sub_270B15850(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

unint64_t UNSList.Section.id.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v3;
  v5[2] = v2;
  type metadata accessor for UNSList.Section.SectionType(0, v5);
  return UNSList.Section.SectionType.id.getter();
}

unint64_t UNSList.Section.SectionType.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 <= 5)
  {
    if (v2 <= 2)
    {
      switch(v2)
      {
        case 0:
          v3 = 0x79726F74736968;
          goto LABEL_27;
        case 1:
          v3 = 0x6948646165726E75;
          goto LABEL_27;
        case 2:
          v3 = 0xD000000000000011;
          goto LABEL_27;
      }

LABEL_26:
      v3 = *v0;
      goto LABEL_27;
    }

    if (v2 == 3)
    {
      v3 = 0x676E696D6F636E69;
      goto LABEL_27;
    }

    if (v2 != 4)
    {
      v3 = 0x44746E6572727563;
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (v2 > 8)
  {
    switch(v2)
    {
      case 9:
        v3 = 0xD000000000000010;
        goto LABEL_27;
      case 10:
        v3 = 0xD000000000000014;
        goto LABEL_27;
      case 11:
        v3 = 0x6867696C68676968;
        goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v2 == 6)
  {
LABEL_24:
    v3 = 0x676E696D6F637075;
    goto LABEL_27;
  }

  if (v2 == 7)
  {
    v3 = 0x6567694464616572;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

LABEL_27:
  sub_270B15808(v1, v2);
  return v3;
}

uint64_t UNSList.Section.isEmpty.getter(uint64_t a1)
{
  v5 = *v1;
  v2 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v2;
  type metadata accessor for UNSList.Section.Group(255, v4);
  sub_270B3156C();
  swift_getWitnessTable();
  return sub_270B315AC() & 1;
}

uint64_t UNSList.Section.SectionType.init(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x79726F74736968 && a2 == 0xE700000000000000;
  if (v6 || (sub_270B3184C() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0x6948646165726E75 && v3 == 0xED000079726F7473 || (sub_270B3184C() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 0xD000000000000011 && 0x8000000270B36F40 == v3 || (sub_270B3184C() & 1) != 0)
  {

    v4 = 0;
    v3 = 2;
  }

  else if (v4 == 0x676E696D6F636E69 && v3 == 0xE800000000000000 || (sub_270B3184C() & 1) != 0)
  {

    v4 = 0;
    v3 = 3;
  }

  else if (v4 == 0x676E696D6F637075 && v3 == 0xEE0064657373694DLL || (sub_270B3184C() & 1) != 0)
  {

    v4 = 0;
    v3 = 4;
  }

  else if (v4 == 0x44746E6572727563 && v3 == 0xED00007473656769 || (sub_270B3184C() & 1) != 0)
  {

    v4 = 0;
    v3 = 5;
  }

  else if (v4 == 0x676E696D6F637075 && v3 == 0xEE00747365676944 || (sub_270B3184C() & 1) != 0)
  {

    v4 = 0;
    v3 = 6;
  }

  else if (v4 == 0x6567694464616572 && v3 == 0xEA00000000007473 || (sub_270B3184C() & 1) != 0)
  {

    v4 = 0;
    v3 = 7;
  }

  else if (v4 == 0xD000000000000011 && 0x8000000270B36F20 == v3 || (sub_270B3184C() & 1) != 0)
  {

    v4 = 0;
    v3 = 8;
  }

  else if (v4 == 0xD000000000000010 && 0x8000000270B36F00 == v3 || (sub_270B3184C() & 1) != 0)
  {

    v4 = 0;
    v3 = 9;
  }

  else if (v4 == 0xD000000000000014 && 0x8000000270B36EE0 == v3 || (sub_270B3184C() & 1) != 0)
  {

    v4 = 0;
    v3 = 10;
  }

  else if (v4 == 0x6867696C68676968 && v3 == 0xEB00000000646574 || (result = sub_270B3184C(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 11;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t static UNSList.Section.SectionType.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 5)
  {
    if (v3 <= 8)
    {
      if (v3 == 6)
      {
        if (v5 == 6)
        {
          sub_270B15850(*a1, 6uLL);
          v6 = v4;
          v7 = 6;
          goto LABEL_43;
        }
      }

      else if (v3 == 7)
      {
        if (v5 == 7)
        {
          sub_270B15850(*a1, 7uLL);
          v6 = v4;
          v7 = 7;
          goto LABEL_43;
        }
      }

      else if (v5 == 8)
      {
        sub_270B15850(*a1, 8uLL);
        v6 = v4;
        v7 = 8;
        goto LABEL_43;
      }

      goto LABEL_39;
    }

    switch(v3)
    {
      case 9:
        if (v5 == 9)
        {
          sub_270B15850(*a1, 9uLL);
          v6 = v4;
          v7 = 9;
          goto LABEL_43;
        }

        goto LABEL_39;
      case 10:
        if (v5 == 10)
        {
          sub_270B15850(*a1, 0xAuLL);
          v6 = v4;
          v7 = 10;
          goto LABEL_43;
        }

        goto LABEL_39;
      case 11:
        if (v5 == 11)
        {
          sub_270B15850(*a1, 0xBuLL);
          v6 = v4;
          v7 = 11;
          goto LABEL_43;
        }

        goto LABEL_39;
    }
  }

  else
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        if (v5 == 3)
        {
          sub_270B15850(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_43;
        }
      }

      else if (v3 == 4)
      {
        if (v5 == 4)
        {
          sub_270B15850(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
          goto LABEL_43;
        }
      }

      else if (v5 == 5)
      {
        sub_270B15850(*a1, 5uLL);
        v6 = v4;
        v7 = 5;
        goto LABEL_43;
      }

      goto LABEL_39;
    }

    switch(v3)
    {
      case 0:
        if (!v5)
        {
          sub_270B15850(*a1, 0);
          v6 = v4;
          v7 = 0;
          goto LABEL_43;
        }

        goto LABEL_39;
      case 1:
        if (v5 == 1)
        {
          v8 = 1;
          sub_270B15850(*a1, 1uLL);
          sub_270B15850(v4, 1uLL);
          return v8;
        }

LABEL_39:
        sub_270B15808(*a2, *(a2 + 8));
        sub_270B15808(v2, v3);
        sub_270B15850(v2, v3);
        sub_270B15850(v4, v5);
        return 0;
      case 2:
        if (v5 == 2)
        {
          sub_270B15850(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
LABEL_43:
          sub_270B15850(v6, v7);
          return 1;
        }

        goto LABEL_39;
    }
  }

  if (v5 < 0xC)
  {
    goto LABEL_39;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_270B15808(*a1, v3);
    sub_270B15808(v2, v3);
    sub_270B15850(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_43;
  }

  v10 = *a1;
  v11 = sub_270B3184C();
  sub_270B15808(v4, v5);
  sub_270B15808(v2, v3);
  sub_270B15850(v2, v3);
  sub_270B15850(v4, v5);
  return v11 & 1;
}

uint64_t sub_270B162DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B16330(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_270B16384(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F74736968 && a2 == 0xE700000000000000;
  if (v4 || (sub_270B3184C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6948646165726E75 && a2 == 0xED000079726F7473 || (sub_270B3184C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000270B36F40 == a2 || (sub_270B3184C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696D6F636E69 && a2 == 0xE800000000000000 || (sub_270B3184C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696D6F637075 && a2 == 0xEE0064657373694DLL || (sub_270B3184C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44746E6572727563 && a2 == 0xED00007473656769 || (sub_270B3184C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E696D6F637075 && a2 == 0xEE00747365676944 || (sub_270B3184C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6567694464616572 && a2 == 0xEA00000000007473 || (sub_270B3184C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000270B36F20 == a2 || (sub_270B3184C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000270B36F00 == a2 || (sub_270B3184C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000270B36EE0 == a2 || (sub_270B3184C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6867696C68676968 && a2 == 0xEB00000000646574 || (sub_270B3184C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569)
  {

    return 12;
  }

  else
  {
    v6 = sub_270B3184C();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t sub_270B167B4(char a1)
{
  result = 0x79726F74736968;
  switch(a1)
  {
    case 1:
      result = 0x6948646165726E75;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x676E696D6F636E69;
      break;
    case 4:
    case 6:
      result = 0x676E696D6F637075;
      break;
    case 5:
      result = 0x44746E6572727563;
      break;
    case 7:
      result = 0x6567694464616572;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x6867696C68676968;
      break;
    case 12:
      result = 0x6669636570736E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270B169A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_270B3184C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_270B16A58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B16AAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_270B16B00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B16B54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_270B16BA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B16BFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_270B16C50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B16CA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_270B16CF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B16D4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_270B16DA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B16DF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_270B16E48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B16E9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_270B16EF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B16F44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_270B16F98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B16FEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_270B17040(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B17094(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_270B17114(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B17168(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_270B171BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B17210(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_270B17264@<X0>(void *a1@<X2>, uint64_t (*a2)(void, void, void, void)@<X4>, _BYTE *a3@<X8>)
{
  v4 = a2(a1[2], a1[3], a1[4], a1[5]);

  *a3 = v4 & 1;
  return result;
}

uint64_t sub_270B172B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B1730C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t UNSList.Section.SectionType.encode(to:)(void *a1, void *a2)
{
  v3 = v2;
  v150 = a1;
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v153 = a2[2];
  v4 = v153;
  v154 = v5;
  v155 = v6;
  v156 = v7;
  v148 = type metadata accessor for UNSList.Section.SectionType.UnspecifiedCodingKeys(255, &v153);
  WitnessTable = swift_getWitnessTable();
  v149 = sub_270B3183C();
  v87 = *(v149 - 8);
  v8 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v147 = &v86 - v9;
  v153 = v4;
  v154 = v5;
  v155 = v6;
  v156 = v7;
  v10 = type metadata accessor for UNSList.Section.SectionType.HighlightedCodingKeys(255, &v153);
  v11 = swift_getWitnessTable();
  v145 = v10;
  v143 = v11;
  v144 = sub_270B3183C();
  v142 = *(v144 - 8);
  v12 = (*(v142 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v141 = &v86 - v13;
  v153 = v4;
  v154 = v5;
  v155 = v6;
  v156 = v7;
  v14 = type metadata accessor for UNSList.Section.SectionType.InlineFeaturedDigestCodingKeys(255, &v153);
  v15 = swift_getWitnessTable();
  v140 = v14;
  v138 = v15;
  v139 = sub_270B3183C();
  v137 = *(v139 - 8);
  v16 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v136 = &v86 - v17;
  v153 = v4;
  v154 = v5;
  v155 = v6;
  v156 = v7;
  v18 = type metadata accessor for UNSList.Section.SectionType.OnboardingDigestCodingKeys(255, &v153);
  v19 = swift_getWitnessTable();
  v135 = v18;
  v133 = v19;
  v134 = sub_270B3183C();
  v132 = *(v134 - 8);
  v20 = (*(v132 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v131 = &v86 - v21;
  v153 = v4;
  v154 = v5;
  v155 = v6;
  v156 = v7;
  v22 = type metadata accessor for UNSList.Section.SectionType.ApplicationDigestCodingKeys(255, &v153);
  v23 = swift_getWitnessTable();
  v130 = v22;
  v128 = v23;
  v129 = sub_270B3183C();
  v127 = *(v129 - 8);
  v24 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v126 = &v86 - v25;
  v153 = v4;
  v154 = v5;
  v155 = v6;
  v156 = v7;
  DigestCodingKeys = type metadata accessor for UNSList.Section.SectionType.ReadDigestCodingKeys(255, &v153);
  v27 = swift_getWitnessTable();
  v125 = DigestCodingKeys;
  v123 = v27;
  v124 = sub_270B3183C();
  v122 = *(v124 - 8);
  v28 = (*(v122 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v121 = &v86 - v29;
  v153 = v4;
  v154 = v5;
  v155 = v6;
  v156 = v7;
  v30 = type metadata accessor for UNSList.Section.SectionType.UpcomingDigestCodingKeys(255, &v153);
  v31 = swift_getWitnessTable();
  v120 = v30;
  v118 = v31;
  v119 = sub_270B3183C();
  v117 = *(v119 - 8);
  v32 = (*(v117 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v116 = &v86 - v33;
  v153 = v4;
  v154 = v5;
  v155 = v6;
  v156 = v7;
  v34 = type metadata accessor for UNSList.Section.SectionType.CurrentDigestCodingKeys(255, &v153);
  v35 = swift_getWitnessTable();
  v115 = v34;
  v113 = v35;
  v114 = sub_270B3183C();
  v112 = *(v114 - 8);
  v36 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v111 = &v86 - v37;
  v153 = v4;
  v154 = v5;
  v155 = v6;
  v156 = v7;
  v38 = type metadata accessor for UNSList.Section.SectionType.UpcomingMissedCodingKeys(255, &v153);
  v39 = swift_getWitnessTable();
  v110 = v38;
  v108 = v39;
  v109 = sub_270B3183C();
  v107 = *(v109 - 8);
  v40 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v106 = &v86 - v41;
  v153 = v4;
  v154 = v5;
  v155 = v6;
  v156 = v7;
  v42 = type metadata accessor for UNSList.Section.SectionType.IncomingCodingKeys(255, &v153);
  v43 = swift_getWitnessTable();
  v105 = v42;
  v103 = v43;
  v104 = sub_270B3183C();
  v102 = *(v104 - 8);
  v44 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v101 = &v86 - v45;
  v153 = v4;
  v154 = v5;
  v155 = v6;
  v156 = v7;
  v46 = type metadata accessor for UNSList.Section.SectionType.ProminentIncomingCodingKeys(255, &v153);
  v47 = swift_getWitnessTable();
  v100 = v46;
  v98 = v47;
  v99 = sub_270B3183C();
  v97 = *(v99 - 8);
  v48 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v96 = &v86 - v49;
  v153 = v4;
  v154 = v5;
  v155 = v6;
  v156 = v7;
  type metadata accessor for UNSList.Section.SectionType.UnreadHistoryCodingKeys(255, &v153);
  v94 = swift_getWitnessTable();
  v95 = sub_270B3183C();
  v93 = *(v95 - 8);
  v50 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v92 = &v86 - v51;
  v153 = v4;
  v154 = v5;
  v155 = v6;
  v156 = v7;
  type metadata accessor for UNSList.Section.SectionType.HistoryCodingKeys(255, &v153);
  v90 = swift_getWitnessTable();
  v91 = sub_270B3183C();
  v89 = *(v91 - 8);
  v52 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v54 = &v86 - v53;
  v153 = v4;
  v154 = v5;
  v155 = v6;
  v156 = v7;
  type metadata accessor for UNSList.Section.SectionType.CodingKeys(255, &v153);
  swift_getWitnessTable();
  v55 = sub_270B3183C();
  v56 = *(v55 - 8);
  v151 = v55;
  v152 = v56;
  v57 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v59 = (&v86 - v58);
  v60 = *v3;
  v61 = v3[1];
  v88 = v60;
  v62 = v150[4];
  __swift_project_boxed_opaque_existential_1(v150, v150[3]);
  v150 = v59;
  sub_270B3190C();
  if (v61 > 5)
  {
    if (v61 > 8)
    {
      v63 = v151;
      if (v61 != 9)
      {
        v64 = v150;
        if (v61 == 10)
        {
          LOBYTE(v153) = 10;
          v83 = v136;
          sub_270B317DC();
          (*(v137 + 8))(v83, v139);
          goto LABEL_26;
        }

        if (v61 == 11)
        {
          LOBYTE(v153) = 11;
          v68 = v141;
          sub_270B317DC();
          (*(v142 + 8))(v68, v144);
          goto LABEL_26;
        }

        goto LABEL_31;
      }

      LOBYTE(v153) = 9;
      v77 = v131;
      v73 = v150;
      sub_270B317DC();
      (*(v132 + 8))(v77, v134);
    }

    else
    {
      v63 = v151;
      if (v61 != 6)
      {
        v64 = v150;
        if (v61 == 7)
        {
          LOBYTE(v153) = 7;
          v79 = v121;
          sub_270B317DC();
          (*(v122 + 8))(v79, v124);
        }

        else
        {
          LOBYTE(v153) = 8;
          v66 = v126;
          sub_270B317DC();
          (*(v127 + 8))(v66, v129);
        }

        goto LABEL_26;
      }

      LOBYTE(v153) = 6;
      v72 = v116;
      v73 = v150;
      sub_270B317DC();
      (*(v117 + 8))(v72, v119);
    }

    goto LABEL_28;
  }

  if (v61 > 2)
  {
    if (v61 == 3)
    {
      LOBYTE(v153) = 3;
      v74 = v101;
      v76 = v150;
      v75 = v151;
      sub_270B317DC();
      (*(v102 + 8))(v74, v104);
      return (*(v152 + 8))(v76, v75);
    }

    v63 = v151;
    if (v61 != 4)
    {
      v64 = v150;
      LOBYTE(v153) = 5;
      v67 = v111;
      sub_270B317DC();
      (*(v112 + 8))(v67, v114);
      goto LABEL_26;
    }

    LOBYTE(v153) = 4;
    v82 = v106;
    v73 = v150;
    sub_270B317DC();
    (*(v107 + 8))(v82, v109);
LABEL_28:
    v80 = *(v152 + 8);
    v81 = v73;
    return v80(v81, v63);
  }

  if (!v61)
  {
    LOBYTE(v153) = 0;
    v69 = v150;
    v70 = v151;
    sub_270B317DC();
    (*(v89 + 8))(v54, v91);
    return (*(v152 + 8))(v69, v70);
  }

  if (v61 == 1)
  {
    LOBYTE(v153) = 1;
    v78 = v92;
    v76 = v150;
    v75 = v151;
    sub_270B317DC();
    (*(v93 + 8))(v78, v95);
    return (*(v152 + 8))(v76, v75);
  }

  v64 = v150;
  v63 = v151;
  if (v61 == 2)
  {
    LOBYTE(v153) = 2;
    v65 = v96;
    sub_270B317DC();
    (*(v97 + 8))(v65, v99);
LABEL_26:
    v80 = *(v152 + 8);
    v81 = v64;
    return v80(v81, v63);
  }

LABEL_31:
  LOBYTE(v153) = 12;
  v84 = v147;
  sub_270B317DC();
  v85 = v149;
  sub_270B3180C();
  (*(v87 + 8))(v84, v85);
  return (*(v152 + 8))(v64, v63);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t UNSList.Section.SectionType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v165 = a6;
  *&v195 = a2;
  *(&v195 + 1) = a3;
  *&v196 = a4;
  *(&v196 + 1) = a5;
  v11 = type metadata accessor for UNSList.Section.SectionType.UnspecifiedCodingKeys(255, &v195);
  WitnessTable = swift_getWitnessTable();
  v185 = v11;
  v12 = sub_270B317CC();
  v186 = *(v12 - 8);
  v187 = v12;
  v13 = (*(v186 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v164 = &v120 - v14;
  *&v195 = a2;
  *(&v195 + 1) = a3;
  *&v196 = a4;
  *(&v196 + 1) = a5;
  v15 = type metadata accessor for UNSList.Section.SectionType.HighlightedCodingKeys(255, &v195);
  v16 = swift_getWitnessTable();
  v183 = v15;
  v181 = v16;
  v182 = sub_270B317CC();
  v146 = *(v182 - 8);
  v17 = (*(v146 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v163 = &v120 - v18;
  *&v195 = a2;
  *(&v195 + 1) = a3;
  *&v196 = a4;
  *(&v196 + 1) = a5;
  v19 = type metadata accessor for UNSList.Section.SectionType.InlineFeaturedDigestCodingKeys(255, &v195);
  v20 = swift_getWitnessTable();
  v180 = v19;
  v179 = v20;
  v145 = sub_270B317CC();
  v144 = *(v145 - 8);
  v21 = (*(v144 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v162 = &v120 - v22;
  *&v195 = a2;
  *(&v195 + 1) = a3;
  *&v196 = a4;
  *(&v196 + 1) = a5;
  v23 = type metadata accessor for UNSList.Section.SectionType.OnboardingDigestCodingKeys(255, &v195);
  v24 = swift_getWitnessTable();
  v178 = v23;
  v177 = v24;
  v143 = sub_270B317CC();
  v142 = *(v143 - 8);
  v25 = (*(v142 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v161 = &v120 - v26;
  *&v195 = a2;
  *(&v195 + 1) = a3;
  *&v196 = a4;
  *(&v196 + 1) = a5;
  v27 = type metadata accessor for UNSList.Section.SectionType.ApplicationDigestCodingKeys(255, &v195);
  v28 = swift_getWitnessTable();
  v176 = v27;
  v175 = v28;
  v141 = sub_270B317CC();
  v140 = *(v141 - 8);
  v29 = (*(v140 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v160 = &v120 - v30;
  *&v195 = a2;
  *(&v195 + 1) = a3;
  *&v196 = a4;
  *(&v196 + 1) = a5;
  DigestCodingKeys = type metadata accessor for UNSList.Section.SectionType.ReadDigestCodingKeys(255, &v195);
  v32 = swift_getWitnessTable();
  v174 = DigestCodingKeys;
  v173 = v32;
  v139 = sub_270B317CC();
  v138 = *(v139 - 8);
  v33 = (*(v138 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v159 = &v120 - v34;
  *&v195 = a2;
  *(&v195 + 1) = a3;
  *&v196 = a4;
  *(&v196 + 1) = a5;
  v35 = type metadata accessor for UNSList.Section.SectionType.UpcomingDigestCodingKeys(255, &v195);
  v36 = swift_getWitnessTable();
  v172 = v35;
  v171 = v36;
  v137 = sub_270B317CC();
  v136 = *(v137 - 8);
  v37 = (*(v136 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v158 = &v120 - v38;
  *&v195 = a2;
  *(&v195 + 1) = a3;
  *&v196 = a4;
  *(&v196 + 1) = a5;
  v39 = type metadata accessor for UNSList.Section.SectionType.CurrentDigestCodingKeys(255, &v195);
  v40 = swift_getWitnessTable();
  v170 = v39;
  v169 = v40;
  v135 = sub_270B317CC();
  v134 = *(v135 - 8);
  v41 = (*(v134 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v157 = &v120 - v42;
  *&v195 = a2;
  *(&v195 + 1) = a3;
  *&v196 = a4;
  *(&v196 + 1) = a5;
  v43 = type metadata accessor for UNSList.Section.SectionType.UpcomingMissedCodingKeys(255, &v195);
  v44 = swift_getWitnessTable();
  v168 = v43;
  v167 = v44;
  v133 = sub_270B317CC();
  v132 = *(v133 - 8);
  v45 = (*(v132 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v156 = &v120 - v46;
  *&v195 = a2;
  *(&v195 + 1) = a3;
  *&v196 = a4;
  *(&v196 + 1) = a5;
  v47 = type metadata accessor for UNSList.Section.SectionType.IncomingCodingKeys(255, &v195);
  v48 = swift_getWitnessTable();
  v166 = v47;
  v155 = v48;
  v131 = sub_270B317CC();
  v130 = *(v131 - 8);
  v49 = (*(v130 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v154 = &v120 - v50;
  *&v195 = a2;
  *(&v195 + 1) = a3;
  *&v196 = a4;
  *(&v196 + 1) = a5;
  v51 = type metadata accessor for UNSList.Section.SectionType.ProminentIncomingCodingKeys(255, &v195);
  v52 = swift_getWitnessTable();
  v153 = v51;
  v152 = v52;
  v129 = sub_270B317CC();
  v128 = *(v129 - 8);
  v53 = (*(v128 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v151 = &v120 - v54;
  *&v195 = a2;
  *(&v195 + 1) = a3;
  *&v196 = a4;
  *(&v196 + 1) = a5;
  v55 = type metadata accessor for UNSList.Section.SectionType.UnreadHistoryCodingKeys(255, &v195);
  v56 = swift_getWitnessTable();
  v150 = v55;
  v149 = v56;
  v127 = sub_270B317CC();
  v126 = *(v127 - 8);
  v57 = (*(v126 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v148 = &v120 - v58;
  *&v195 = a2;
  *(&v195 + 1) = a3;
  *&v196 = a4;
  *(&v196 + 1) = a5;
  v59 = type metadata accessor for UNSList.Section.SectionType.HistoryCodingKeys(255, &v195);
  v147 = swift_getWitnessTable();
  v125 = sub_270B317CC();
  v124 = *(v125 - 8);
  v60 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v62 = &v120 - v61;
  *&v195 = a2;
  *(&v195 + 1) = a3;
  v190 = a3;
  v191 = a4;
  *&v196 = a4;
  *(&v196 + 1) = a5;
  v188 = a5;
  type metadata accessor for UNSList.Section.SectionType.CodingKeys(255, &v195);
  swift_getWitnessTable();
  v189 = sub_270B317CC();
  v63 = *(v189 - 8);
  v64 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v66 = &v120 - v65;
  v67 = a1;
  v69 = a1[3];
  v68 = a1[4];
  v197 = v67;
  __swift_project_boxed_opaque_existential_1(v67, v69);
  v70 = v192;
  sub_270B318FC();
  if (v70)
  {
    goto LABEL_7;
  }

  v121 = v62;
  v122 = v59;
  v71 = v190;
  v72 = v191;
  v123 = v63;
  v73 = v189;
  v192 = v66;
  *&v193 = sub_270B317BC();
  sub_270B3156C();
  swift_getWitnessTable();
  *&v195 = sub_270B3168C();
  *(&v195 + 1) = v74;
  *&v196 = v75;
  *(&v196 + 1) = v76;
  sub_270B3167C();
  swift_getWitnessTable();
  sub_270B3159C();
  if (v193 == 13 || (v120 = v195, v193 = v195, v194 = v196, (sub_270B315AC() & 1) == 0))
  {
    v82 = sub_270B316EC();
    swift_allocError();
    v84 = v83;
    v85 = v73;
    v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D50, &qword_270B328E0) + 48);
    *&v193 = a2;
    *(&v193 + 1) = v71;
    *&v194 = v72;
    *(&v194 + 1) = v188;
    *v84 = type metadata accessor for UNSList.Section.SectionType(0, &v193);
    v87 = v192;
    sub_270B3175C();
    sub_270B316DC();
    (*(*(v82 - 8) + 104))(v84, *MEMORY[0x277D84160], v82);
    swift_willThrow();
    (*(v123 + 8))(v87, v85);
    swift_unknownObjectRelease();
LABEL_7:
    v118 = v197;
    return __swift_destroy_boxed_opaque_existential_1Tm(v118);
  }

  v78 = v186;
  v77 = v187;
  v79 = v192;
  v80 = v182;
  switch(v170)
  {
    case 1:
      LOBYTE(v193) = 1;
      v106 = v148;
      sub_270B3174C();
      v107 = v197;
      v91 = v165;
      (*(v126 + 8))(v106, v127);
      (*(v123 + 8))(v79, v73);
      swift_unknownObjectRelease();
      v116 = 0;
      v117 = 1;
      v118 = v107;
      break;
    case 2:
      LOBYTE(v193) = 2;
      v100 = v151;
      sub_270B3174C();
      v101 = v197;
      v91 = v165;
      (*(v128 + 8))(v100, v129);
      (*(v123 + 8))(v79, v73);
      swift_unknownObjectRelease();
      v116 = 0;
      v117 = 2;
      v118 = v101;
      break;
    case 3:
      LOBYTE(v193) = 3;
      v102 = v154;
      sub_270B3174C();
      v103 = v197;
      v91 = v165;
      (*(v130 + 8))(v102, v131);
      (*(v123 + 8))(v79, v73);
      swift_unknownObjectRelease();
      v116 = 0;
      v117 = 3;
      v118 = v103;
      break;
    case 4:
      LOBYTE(v193) = 4;
      v92 = v156;
      sub_270B3174C();
      v93 = v197;
      v91 = v165;
      (*(v132 + 8))(v92, v133);
      (*(v123 + 8))(v79, v73);
      swift_unknownObjectRelease();
      v116 = 0;
      v117 = 4;
      v118 = v93;
      break;
    case 5:
      LOBYTE(v193) = 5;
      v108 = v157;
      sub_270B3174C();
      v109 = v197;
      v91 = v165;
      (*(v134 + 8))(v108, v135);
      (*(v123 + 8))(v79, v73);
      swift_unknownObjectRelease();
      v116 = 0;
      v117 = 5;
      v118 = v109;
      break;
    case 6:
      LOBYTE(v193) = 6;
      v110 = v158;
      sub_270B3174C();
      v111 = v197;
      v91 = v165;
      (*(v136 + 8))(v110, v137);
      (*(v123 + 8))(v79, v73);
      swift_unknownObjectRelease();
      v116 = 0;
      v117 = 6;
      v118 = v111;
      break;
    case 7:
      LOBYTE(v193) = 7;
      v104 = v159;
      sub_270B3174C();
      v105 = v197;
      v91 = v165;
      (*(v138 + 8))(v104, v139);
      (*(v123 + 8))(v79, v73);
      swift_unknownObjectRelease();
      v116 = 0;
      v117 = 7;
      v118 = v105;
      break;
    case 8:
      LOBYTE(v193) = 8;
      v114 = v160;
      sub_270B3174C();
      v115 = v197;
      v91 = v165;
      (*(v140 + 8))(v114, v141);
      (*(v123 + 8))(v79, v73);
      swift_unknownObjectRelease();
      v116 = 0;
      v117 = 8;
      v118 = v115;
      break;
    case 9:
      LOBYTE(v193) = 9;
      v98 = v161;
      sub_270B3174C();
      v99 = v197;
      v91 = v165;
      (*(v142 + 8))(v98, v143);
      (*(v123 + 8))(v79, v73);
      swift_unknownObjectRelease();
      v116 = 0;
      v117 = 9;
      v118 = v99;
      break;
    case 10:
      LOBYTE(v193) = 10;
      v112 = v162;
      sub_270B3174C();
      v113 = v197;
      v91 = v165;
      (*(v144 + 8))(v112, v145);
      (*(v123 + 8))(v79, v73);
      swift_unknownObjectRelease();
      v116 = 0;
      v117 = 10;
      v118 = v113;
      break;
    case 11:
      LOBYTE(v193) = 11;
      v89 = v163;
      sub_270B3174C();
      v90 = v197;
      v91 = v165;
      (*(v146 + 8))(v89, v80);
      (*(v123 + 8))(v79, v73);
      swift_unknownObjectRelease();
      v116 = 0;
      v117 = 11;
      v118 = v90;
      break;
    case 12:
      LOBYTE(v193) = 12;
      v94 = v164;
      sub_270B3174C();
      v95 = v197;
      v116 = sub_270B3178C();
      v96 = v94;
      v97 = v123;
      v117 = v119;
      (*(v78 + 8))(v96, v77);
      (*(v97 + 8))(v79, v73);
      swift_unknownObjectRelease();
      v118 = v95;
      goto LABEL_21;
    default:
      LOBYTE(v193) = 0;
      v81 = v121;
      sub_270B3174C();
      (*(v124 + 8))(v81, v125);
      (*(v123 + 8))(v79, v73);
      swift_unknownObjectRelease();
      v116 = 0;
      v117 = 0;
      v118 = v197;
LABEL_21:
      v91 = v165;
      break;
  }

  *v91 = v116;
  v91[1] = v117;
  return __swift_destroy_boxed_opaque_existential_1Tm(v118);
}

unint64_t sub_270B19D94@<X0>(unint64_t *a1@<X8>)
{
  result = UNSList.Section.SectionType.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 UNSList.Section.init(groups:type:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  *(a3 + 8) = *a2;
  return result;
}

uint64_t UNSList.Section.Group.GroupingMethod.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v27 = a6;
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  type metadata accessor for UNSList.Section.Group.GroupingMethod.CodingKeys(255, v26);
  swift_getWitnessTable();
  v8 = sub_270B317CC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = v26 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B318FC();
  if (!v6)
  {
    LOBYTE(v26[0]) = 0;
    v14 = sub_270B3178C();
    v16 = v15;
    LOBYTE(v26[0]) = 1;
    v17 = sub_270B3178C();
    v19 = v18;
    (*(v9 + 8))(v12, v8);
    if (v16)
    {
      v20 = v14;
    }

    else
    {
      v20 = v17;
    }

    if (v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = v19;
    }

    if (v16)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0;
    }

    if (v16)
    {
      v23 = v19;
    }

    else
    {
      v23 = 0;
    }

    v24 = v27;
    *v27 = v20;
    v24[1] = v21;
    v24[2] = v22;
    v24[3] = v23;
    *(v24 + 32) = v16 == 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t UNSList.Section.Group.GroupingMethod.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v19[0] = *(a2 + 16);
  v19[1] = v4;
  type metadata accessor for UNSList.Section.Group.GroupingMethod.CodingKeys(255, v19);
  swift_getWitnessTable();
  v5 = sub_270B3183C();
  v17 = *(v5 - 8);
  v18 = v5;
  v6 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v16 - v7;
  v9 = *v2;
  v16[2] = v2[1];
  v16[3] = v9;
  v10 = v2[3];
  v16[1] = v2[2];
  v11 = *(v2 + 32);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B3190C();
  if (v11)
  {
    if (v11 != 1)
    {
      return (*(v17 + 8))(v8, v18);
    }

    LOBYTE(v19[0]) = 1;
    v13 = v18;
  }

  else
  {
    LOBYTE(v19[0]) = 0;
    v13 = v18;
    v14 = v20;
    sub_270B3180C();
    if (v14)
    {
      return (*(v17 + 8))(v8, v13);
    }

    LOBYTE(v19[0]) = 1;
  }

  sub_270B3180C();
  return (*(v17 + 8))(v8, v13);
}

uint64_t UNSList.Section.Group.GroupingMethod.init(fromUniqueIdentifier:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    MEMORY[0x2743B0AB0](0xD000000000000010, 0x8000000270B366B0);

    MEMORY[0x2743B0AB0](61, 0xE100000000000000);
    sub_270B1A4E0();
    v5 = sub_270B3166C();

    v6 = v5[2];
    if (v6 == 1)
    {
      v12 = 0;
      v11 = 0;
    }

    else
    {
      if (v6 != 2 || (v7 = v5[6], v8 = v5[7], , v9 = sub_270B3143C(), result = , v9 <= 0))
      {
LABEL_19:

        *a3 = 0u;
        *(a3 + 16) = 0u;
        v13 = -1;
        goto LABEL_20;
      }

      if (v5[2] < 2uLL)
      {
LABEL_24:
        __break(1u);
        return result;
      }

      v12 = v5[6];
      v11 = v5[7];
    }

    result = MEMORY[0x2743B0AB0](61, 0xE100000000000000);
    if (v5[2])
    {
      v14 = v5[4];
      v15 = v5[5];

      LOBYTE(v14) = sub_270B314AC();

      if (v14)
      {
        v16 = v5[4];
        v17 = v5[5];

        v18 = sub_270B3143C();

        v19 = sub_270B1E468(v18, v16, v17);
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v26 = MEMORY[0x2743B0A40](v19, v21, v23, v25);
        v28 = v27;

        result = sub_270B3143C();
        if (result >= 1)
        {
          if (v11)
          {
            *a3 = v12;
            *(a3 + 8) = v11;
            *(a3 + 16) = v26;
            *(a3 + 24) = v28;
            *(a3 + 32) = 0;
            return result;
          }

          *a3 = v26;
          *(a3 + 8) = v28;
          *(a3 + 16) = 0;
          *(a3 + 24) = 0;
          v13 = 1;
          goto LABEL_20;
        }
      }

      else
      {
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_24;
  }

  *a3 = 0u;
  *(a3 + 16) = 0u;
  v13 = 2;
LABEL_20:
  *(a3 + 32) = v13;
  return result;
}

unint64_t sub_270B1A4E0()
{
  result = qword_280843D58;
  if (!qword_280843D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280843D58);
  }

  return result;
}

unint64_t UNSList.Section.Group.GroupingMethod.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 32))
  {
    v4 = v0[2];
    v3 = v0[3];
    MEMORY[0x2743B0AB0](61, 0xE100000000000000);
    MEMORY[0x2743B0AB0](v4, v3);
    MEMORY[0x2743B0AB0](44, 0xE100000000000000);
    MEMORY[0x2743B0AB0](0xD000000000000010, 0x8000000270B366B0);

LABEL_5:
    MEMORY[0x2743B0AB0](61, 0xE100000000000000);
    MEMORY[0x2743B0AB0](v1, v2);
    return 0xD000000000000010;
  }

  if (*(v0 + 32) == 1)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t UNSList.Section.Group.GroupingMethod.bundleIdentifier.getter()
{
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 1)
    {
      return 0;
    }

    v1 = v0 + 1;
  }

  else
  {
    v1 = v0 + 3;
    v0 += 2;
  }

  v2 = *v1;
  v3 = *v0;

  return v3;
}

uint64_t UNSList.Section.Group.GroupingMethod.CodingError.hashValue.getter()
{
  sub_270B318BC();
  MEMORY[0x2743B0EF0](0);
  return sub_270B318EC();
}

uint64_t sub_270B1A728()
{
  v0 = sub_270B3173C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270B1A77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_270B1A7F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_270B1A85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_270B1A8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_270B1A93C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  result = sub_270B1A728();
  *a3 = result;
  return result;
}

unint64_t sub_270B1A978@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  result = sub_270B0AF90();
  *a2 = result;
  a2[1] = v10;
  return result;
}

uint64_t sub_270B1A9C8@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_270B1A728();
  *a2 = result;
  return result;
}

uint64_t sub_270B1AA14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B1AA68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t static UNSList.Section.Group.GroupingMethod.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v20 = v3 == v8 && v2 == v7;
      if (v20 || (v21 = *a1, (sub_270B3184C() & 1) != 0))
      {
        if (v5 != v10 || v4 != v9)
        {
          v14 = sub_270B3184C();
          sub_270B1E518(v8, v7, v10, v9, 0);
          sub_270B1E518(v3, v2, v5, v4, 0);
          sub_270B1E57C(v3, v2, v5, v4, 0);
          v15 = v8;
          v16 = v7;
          v17 = v10;
          v18 = v9;
          v19 = 0;
          goto LABEL_20;
        }

        sub_270B1E518(v8, v7, v5, v4, 0);
        sub_270B1E518(v3, v2, v5, v4, 0);
        sub_270B1E57C(v3, v2, v5, v4, 0);
        v30 = v8;
        v31 = v7;
        v32 = v5;
        v33 = v4;
        v34 = 0;
        goto LABEL_30;
      }

      sub_270B1E518(v8, v7, v10, v9, 0);
      sub_270B1E518(v3, v2, v5, v4, 0);
      sub_270B1E57C(v3, v2, v5, v4, 0);
      v25 = v8;
      v26 = v7;
      v27 = v10;
      v28 = v9;
      v29 = 0;
LABEL_26:
      sub_270B1E57C(v25, v26, v27, v28, v29);
      return 0;
    }

    goto LABEL_25;
  }

  if (v6 == 1)
  {
    if (v11 == 1)
    {
      v12 = *a1;
      if (v3 != v8 || v2 != v7)
      {
        v14 = sub_270B3184C();
        sub_270B1E518(v8, v7, v10, v9, 1);
        sub_270B1E518(v3, v2, v5, v4, 1);
        sub_270B1E57C(v3, v2, v5, v4, 1);
        v15 = v8;
        v16 = v7;
        v17 = v10;
        v18 = v9;
        v19 = 1;
LABEL_20:
        sub_270B1E57C(v15, v16, v17, v18, v19);
        return v14 & 1;
      }

      sub_270B1E518(v12, v2, v10, v9, 1);
      sub_270B1E518(v3, v2, v5, v4, 1);
      sub_270B1E57C(v3, v2, v5, v4, 1);
      v30 = v3;
      v31 = v2;
      v32 = v10;
      v33 = v9;
      v34 = 1;
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (v11 != 2 || (v7 | v8 | v10 | v9) != 0)
  {
LABEL_25:
    sub_270B1E518(*a2, *(a2 + 8), v10, v9, v11);
    sub_270B1E518(v3, v2, v5, v4, v6);
    sub_270B1E57C(v3, v2, v5, v4, v6);
    v25 = v8;
    v26 = v7;
    v27 = v10;
    v28 = v9;
    v29 = v11;
    goto LABEL_26;
  }

  sub_270B1E57C(*a1, v2, v5, v4, 2);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 2;
LABEL_30:
  sub_270B1E57C(v30, v31, v32, v33, v34);
  return 1;
}

unint64_t sub_270B1AE74@<X0>(unint64_t *a1@<X8>)
{
  result = UNSList.Section.Group.GroupingMethod.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t UNSList.Section.Group.id.getter(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 24);
  v6[2] = *(v1 + 8);
  v6[3] = v3;
  v7 = v2;
  v4 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v4;
  type metadata accessor for UNSList.Section.Group.GroupingMethod(0, v6);
  return UNSList.Section.Group.GroupingMethod.id.getter();
}

uint64_t UNSList.Section.Group.notifications.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t UNSList.Section.Group.groupingMethod.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 40);
  *(a1 + 32) = v6;
  return sub_270B1E518(v2, v3, v4, v5, v6);
}

uint64_t (*UNSList.Section.Group.summary.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t UNSList.Section.Group.spotlightIdentifier.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t UNSList.Section.Group.spotlightIdentifier.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 60));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*UNSList.Section.Group.spotlightIdentifier.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t UNSList.Section.Group.isEmpty.getter(uint64_t a1)
{
  v4 = *v1;
  v2 = *(a1 + 16);
  sub_270B3156C();
  swift_getWitnessTable();
  return sub_270B315AC() & 1;
}

uint64_t UNSList.Section.Group.bundleIdentifier.getter()
{
  if (*(v0 + 40))
  {
    if (*(v0 + 40) != 1)
    {
      return 0;
    }

    v1 = 8;
    v2 = 16;
  }

  else
  {
    v1 = 24;
    v2 = 32;
  }

  v3 = *(v0 + v1);
  v4 = *(v0 + v2);

  return v3;
}

__n128 UNSList.Section.Group.init(notifications:groupingMethod:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *(a2 + 32);
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v11 = type metadata accessor for UNSList.Section.Group(0, v18);
  v12 = *(v11 + 56);
  v13 = sub_270B3116C();
  v16 = *(a2 + 16);
  v17 = *a2;
  (*(*(v13 - 8) + 56))(a7 + v12, 1, 1, v13);
  v14 = (a7 + *(v11 + 60));
  *v14 = 0;
  v14[1] = 0;
  *a7 = a1;
  result = v17;
  *(a7 + 24) = v16;
  *(a7 + 8) = v17;
  *(a7 + 40) = v10;
  return result;
}

uint64_t static UNSList.Section.Group.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a5;
  v11 = sub_270B3116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v53 - v17;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D68, &qword_270B328F0);
  v19 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v21 = &v53 - v20;
  v22 = *a1;
  v23 = *a2;
  v64 = a3;
  if ((sub_270B3157C() & 1) == 0)
  {
    return 0;
  }

  v57 = a4;
  v58 = a6;
  v54 = v18;
  v59 = v21;
  v53 = v15;
  v60 = v12;
  v61 = v11;
  v25 = a1[1];
  v24 = a1[2];
  v27 = a1[3];
  v26 = a1[4];
  v28 = *(a1 + 40);
  v68 = v25;
  v69 = v24;
  v70 = v27;
  v71 = v26;
  v72 = v28;
  v30 = a2[1];
  v29 = a2[2];
  v55 = a2;
  v56 = a1;
  v31 = a2[3];
  v32 = a2[4];
  v33 = *(a2 + 40);
  v66[0] = v30;
  v66[1] = v29;
  v66[2] = v31;
  v66[3] = v32;
  v67 = v33;
  sub_270B1E518(v25, v24, v27, v26, v28);
  sub_270B1E518(v30, v29, v31, v32, v33);
  v62 = static UNSList.Section.Group.GroupingMethod.== infix(_:_:)(&v68, v66);
  sub_270B1E57C(v30, v29, v31, v32, v33);
  sub_270B1E57C(v25, v24, v27, v26, v28);
  if ((v62 & 1) == 0)
  {
    return 0;
  }

  v68 = v64;
  v69 = v57;
  v70 = v65;
  v71 = v58;
  v34 = type metadata accessor for UNSList.Section.Group(0, &v68);
  v35 = *(v34 + 56);
  v36 = *(v63 + 48);
  v37 = v56;
  v38 = v59;
  sub_270B1E5F8(v56 + v35, v59);
  v39 = v55;
  sub_270B1E5F8(v55 + v35, v38 + v36);
  v41 = v60;
  v40 = v61;
  v42 = *(v60 + 48);
  if (v42(v38, 1, v61) != 1)
  {
    v43 = v54;
    sub_270B1E5F8(v38, v54);
    if (v42(v38 + v36, 1, v40) != 1)
    {
      v45 = v53;
      (*(v41 + 32))(v53, v38 + v36, v40);
      sub_270B1FB84(&qword_280843D70, MEMORY[0x277CC8C40]);
      v46 = sub_270B3139C();
      v47 = *(v41 + 8);
      v47(v45, v40);
      v47(v43, v40);
      sub_270B1E6D8(v38, &qword_280843D60, &qword_270B328E8);
      if ((v46 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    (*(v41 + 8))(v43, v40);
LABEL_8:
    sub_270B1E6D8(v38, &qword_280843D68, &qword_270B328F0);
    return 0;
  }

  if (v42(v38 + v36, 1, v40) != 1)
  {
    goto LABEL_8;
  }

  sub_270B1E6D8(v38, &qword_280843D60, &qword_270B328E8);
LABEL_12:
  v48 = *(v34 + 60);
  v49 = (v37 + v48);
  v50 = *(v37 + v48 + 8);
  v51 = (v39 + v48);
  v52 = v51[1];
  if (v50)
  {
    if (v52 && (*v49 == *v51 && v50 == v52 || (sub_270B3184C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v52)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_270B1B664(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696669746F6ELL && a2 == 0xED0000736E6F6974;
  if (v4 || (sub_270B3184C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6970756F7267 && a2 == 0xEE00646F6874654DLL || (sub_270B3184C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_270B3184C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000270B36F90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_270B3184C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_270B1B7E0(unsigned __int8 a1)
{
  sub_270B318BC();
  MEMORY[0x2743B0EF0](a1);
  return sub_270B318EC();
}

unint64_t sub_270B1B828(unsigned __int8 a1)
{
  v1 = 0x6163696669746F6ELL;
  v2 = 0x7972616D6D7573;
  if (a1 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (a1)
  {
    v1 = 0x676E6970756F7267;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_270B1B8E0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_270B1B7E0(*v1);
}

uint64_t sub_270B1B91C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void))
{
  sub_270B318BC();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return sub_270B318EC();
}

uint64_t sub_270B1B9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_270B1BA14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B1BA68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t UNSList.Section.Group.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v27 = *(a2 + 24);
  v28 = v4;
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  v34 = v4;
  v35 = v27;
  v36 = v6;
  v37 = v5;
  v26 = v5;
  type metadata accessor for UNSList.Section.Group.CodingKeys(255, &v34);
  swift_getWitnessTable();
  v7 = sub_270B3183C();
  v30 = *(v7 - 8);
  v8 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v28;
  v12 = v29;
  v14 = v7;
  sub_270B3190C();
  v34 = *v12;
  LOBYTE(v32[0]) = 0;
  sub_270B3156C();
  v39 = v6;
  swift_getWitnessTable();
  v15 = v31;
  sub_270B3182C();
  if (v15)
  {
    return (*(v30 + 8))(v10, v7);
  }

  v17 = v30;
  v18 = *(v12 + 16);
  v19 = *(v12 + 24);
  v20 = *(v12 + 32);
  v21 = *(v12 + 40);
  v34 = *(v12 + 8);
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v33 = 1;
  sub_270B1E518(v34, v18, v19, v20, v21);
  v32[0] = v13;
  v32[1] = v27;
  v32[2] = v6;
  v32[3] = v26;
  type metadata accessor for UNSList.Section.Group.GroupingMethod(0, v32);
  swift_getWitnessTable();
  sub_270B3182C();
  sub_270B1E57C(v34, v35, v36, v37, v38);
  v22 = *(a2 + 56);
  LOBYTE(v34) = 2;
  sub_270B3116C();
  sub_270B1FB84(&qword_280843D78, MEMORY[0x277CC8C40]);
  sub_270B317FC();
  v23 = (v12 + *(a2 + 60));
  v24 = *v23;
  v25 = v23[1];
  LOBYTE(v34) = 3;
  sub_270B317EC();
  return (*(v17 + 8))(v10, v14);
}

uint64_t UNSList.Section.Group.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a6;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v46 = &v43 - v12;
  *&v58 = a2;
  *(&v58 + 1) = a3;
  *&v59 = a4;
  *(&v59 + 1) = a5;
  type metadata accessor for UNSList.Section.Group.CodingKeys(255, &v58);
  swift_getWitnessTable();
  v52 = sub_270B317CC();
  v47 = *(v52 - 8);
  v13 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v43 - v14;
  v51 = a2;
  *&v58 = a2;
  *(&v58 + 1) = a3;
  v48 = a5;
  v49 = a3;
  *&v59 = a4;
  *(&v59 + 1) = a5;
  v16 = type metadata accessor for UNSList.Section.Group(0, &v58);
  v44 = *(v16 - 8);
  v17 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x28223BE20]();
  v20 = &v43 - v19;
  v21 = *(v18 + 56);
  v22 = sub_270B3116C();
  v23 = *(*(v22 - 8) + 56);
  v54 = v20;
  v55 = v21;
  v23(&v20[v21], 1, 1, v22);
  v24 = a1[3];
  v25 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v50 = v15;
  v26 = v53;
  sub_270B318FC();
  if (v26)
  {
    v31 = v54;
    v30 = v55;
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    return sub_270B1E6D8(v31 + v30, &qword_280843D60, &qword_270B328E8);
  }

  else
  {
    v27 = v47;
    v28 = v48;
    v53 = v16;
    sub_270B3156C();
    LOBYTE(v57[0]) = 0;
    v29 = v49;
    v61 = v49;
    swift_getWitnessTable();
    sub_270B317AC();
    v32 = v54;
    v43 = v58;
    *v54 = v58;
    v57[0] = v51;
    v57[1] = v29;
    v57[2] = a4;
    v57[3] = v28;
    type metadata accessor for UNSList.Section.Group.GroupingMethod(0, v57);
    LOBYTE(v57[0]) = 1;
    swift_getWitnessTable();
    sub_270B317AC();
    v33 = v60;
    v34 = v59;
    *(v32 + 1) = v58;
    *(v32 + 3) = v34;
    *(v32 + 40) = v33;
    LOBYTE(v58) = 2;
    sub_270B1FB84(qword_280843D80, MEMORY[0x277CC8C40]);
    v35 = v46;
    sub_270B3177C();
    sub_270B1E668(v35, v32 + v55);
    LOBYTE(v58) = 3;
    v36 = sub_270B3176C();
    v38 = v37;
    v39 = v53;
    v40 = (v32 + *(v53 + 60));
    (*(v27 + 8))(v50, v52);
    *v40 = v36;
    v40[1] = v38;
    v41 = v44;
    (*(v44 + 16))(v45, v32, v39);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    return (*(v41 + 8))(v32, v39);
  }
}

unint64_t sub_270B1C390@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = UNSList.Section.Group.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t static UNSList.Section.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  type metadata accessor for UNSList.Section.Group(0, &v15);
  swift_getWitnessTable();
  if (sub_270B3157C())
  {
    v15 = v6;
    v16 = v8;
    v14[0] = v9;
    v14[1] = v11;
    sub_270B15808(v6, v8);
    sub_270B15808(v9, v11);
    v12 = static UNSList.Section.SectionType.== infix(_:_:)(&v15, v14);
    sub_270B15850(v9, v11);
    sub_270B15850(v6, v8);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_270B1C4A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7370756F7267 && a2 == 0xE600000000000000;
  if (v4 || (sub_270B3184C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_270B3184C();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_270B1C5A4(char a1)
{
  sub_270B318BC();
  MEMORY[0x2743B0EF0](a1 & 1);
  return sub_270B318EC();
}

uint64_t sub_270B1C5EC(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x7370756F7267;
  }
}

BOOL sub_270B1C618(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_270B1C56C(*a1, *a2);
}

uint64_t sub_270B1C630(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_270B1C5A4(*v1);
}

uint64_t sub_270B1C644(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_270B1C57C(a1, *v2);
}

uint64_t sub_270B1C658(uint64_t a1, void *a2)
{
  sub_270B318BC();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_270B1C57C(v9, *v2);
  return sub_270B318EC();
}

uint64_t sub_270B1C6F0@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_270B1C72C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B1C780(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t UNSList.Section.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v24 = a2[5];
  v25 = v4;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v35 = v24;
  type metadata accessor for UNSList.Section.CodingKeys(255, &v32);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_270B3183C();
  v26 = *(v7 - 8);
  v8 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v20 - v9;
  v12 = *v2;
  v11 = v2[1];
  v21 = v2[2];
  v22 = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v14 = v24;
  v15 = v7;
  v16 = v25;
  sub_270B3190C();
  v29 = v12;
  v36 = 0;
  v32 = v16;
  v33 = v5;
  v34 = v28;
  v35 = v14;
  type metadata accessor for UNSList.Section.Group(255, &v32);
  sub_270B3156C();
  v31 = swift_getWitnessTable();
  swift_getWitnessTable();
  v17 = v27;
  sub_270B3182C();
  if (v17)
  {

    return (*(v26 + 8))(v10, v15);
  }

  else
  {
    v19 = v26;

    v29 = v22;
    v30 = v21;
    v36 = 1;
    sub_270B15808(v22, v21);
    v32 = v16;
    v33 = v5;
    v34 = v28;
    v35 = v14;
    type metadata accessor for UNSList.Section.SectionType(0, &v32);
    swift_getWitnessTable();
    sub_270B3182C();
    sub_270B15850(v29, v30);
    return (*(v19 + 8))(v10, v15);
  }
}

uint64_t UNSList.Section.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v22 = a6;
  v29 = a2;
  v30 = a3;
  v24 = a3;
  v25 = a4;
  v31 = a4;
  v32 = a5;
  v26 = a5;
  type metadata accessor for UNSList.Section.CodingKeys(255, &v29);
  swift_getWitnessTable();
  v23 = sub_270B317CC();
  v9 = *(v23 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B318FC();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v14 = v9;
  v15 = v22;
  v29 = a2;
  v30 = v24;
  v31 = v25;
  v32 = v26;
  type metadata accessor for UNSList.Section.Group(255, &v29);
  sub_270B3156C();
  LOBYTE(v29) = 0;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = v23;
  sub_270B317AC();
  v29 = a2;
  v30 = v24;
  v17 = v27;
  v31 = v25;
  v32 = v26;
  type metadata accessor for UNSList.Section.SectionType(0, &v29);
  LOBYTE(v29) = 1;
  swift_getWitnessTable();
  sub_270B317AC();
  (*(v14 + 8))(v12, v16);
  v18 = v27;
  v19 = v28;
  *v15 = v17;
  v15[1] = v18;
  v15[2] = v19;

  sub_270B15808(v18, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_270B15850(v18, v19);
}

unint64_t sub_270B1CDF0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = UNSList.Section.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t UNSList.FlattenedGroup.group.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v4;
  v5 = type metadata accessor for UNSList.Section.Group(0, v7);
  return (*(*(v5 - 8) + 16))(a2, v2, v5);
}

uint64_t UNSList.FlattenedGroup.sectionID.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t static UNSList.FlattenedGroup.decode(uniqueIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v50[0] = 44;
  *(&v50[0] + 1) = 0xE100000000000000;
  MEMORY[0x2743B0AB0](0x70756F7267, 0xE500000000000000);

  MEMORY[0x2743B0AB0](23357, 0xE200000000000000);
  v6 = v50[0];
  *&v50[0] = a1;
  *(&v50[0] + 1) = a2;
  v52 = v6;
  sub_270B1A4E0();
  v7 = sub_270B3166C();

  if (v7[2] != 2)
  {
    goto LABEL_17;
  }

  *&v50[0] = 0x496E6F6974636573;
  *(&v50[0] + 1) = 0xE900000000000044;
  result = MEMORY[0x2743B0AB0](61, 0xE100000000000000);
  if (v7[2])
  {
    v9 = v7[4];
    v10 = v7[5];

    LOBYTE(v9) = sub_270B314AC();

    if ((v9 & 1) == 0)
    {
      goto LABEL_16;
    }

    v11 = v7[4];
    v12 = v7[5];

    v13 = sub_270B3143C();

    v14 = sub_270B1E468(v13, v11, v12);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = MEMORY[0x2743B0A40](v14, v16, v18, v20);
    v23 = v22;

    result = sub_270B3143C();
    if (result < 1)
    {
      goto LABEL_16;
    }

    if (v7[2] >= 2uLL)
    {
      v24 = v7[6];
      v25 = v7[7];

      v26 = sub_270B1D240(v24, v25);
      v28 = v27;

      if (v28)
      {
        if (v26 == 93 && v28 == 0xE100000000000000)
        {

          goto LABEL_11;
        }

        v29 = sub_270B3184C();

        if (v29)
        {
LABEL_11:
          v30 = v7[6];
          v31 = v7[7];

          v32 = sub_270B3143C();

          if (v32 >= 2)
          {
            if ((v7[7] & 0x2000000000000000) == 0)
            {
              v33 = v7[6];
            }

            v7[6];
            v34 = v7[7];

            sub_270B3147C();

            v35 = v7[6];
            v36 = v7[7];

            v37 = sub_270B314CC();
            v39 = v38;
            v41 = v40;
            v43 = v42;

            v44 = MEMORY[0x2743B0A40](v37, v39, v41, v43);
            v46 = v45;

            result = UNSList.Section.Group.GroupingMethod.init(fromUniqueIdentifier:)(v44, v46, v50);
            v47 = v51;
            if (v51 != 255)
            {
              v48 = v50[0];
              v49 = v50[1];
              *a3 = v21;
              *(a3 + 8) = v23;
              *(a3 + 16) = v48;
              *(a3 + 32) = v49;
              *(a3 + 48) = v47;
              return result;
            }

            goto LABEL_17;
          }
        }
      }

LABEL_16:

LABEL_17:

      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_270B1D240(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_270B3145C();
  return sub_270B314BC();
}

uint64_t sub_270B1D2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v16 = type metadata accessor for UNSList.Section.Group(0, &v19);
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  result = type metadata accessor for UNSList.FlattenedGroup(0, &v19);
  v18 = (a8 + *(result + 52));
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t UNSList.flattenedGroups.getter(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];

  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  type metadata accessor for UNSList.FlattenedGroup(0, &v8);
  v12 = sub_270B3136C();
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  type metadata accessor for UNSList.Section(255, &v8);
  sub_270B3156C();
  swift_getWitnessTable();
  sub_270B314FC();

  return v12;
}

uint64_t sub_270B1D474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[5] = *a1;
  v11 = *(a1 + 8);

  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  type metadata accessor for UNSList.Section.Group(255, v12);
  sub_270B3156C();
  swift_getWitnessTable();
  sub_270B314FC();
}

uint64_t sub_270B1D560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a4;
  v37 = a5;
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v44 = a9;
  v31 = a8;
  v32 = type metadata accessor for UNSList.Section.Group(0, &v41);
  v12 = *(v32 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v15 = &v29 - v14;
  v30 = &v29 - v14;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v44 = a9;
  v16 = type metadata accessor for UNSList.FlattenedGroup(0, &v41);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = (MEMORY[0x28223BE20])();
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v29 - v22;
  (*(v12 + 16))(v15, v33, v32);
  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = a6;
  v24 = v31;
  v42 = a7;
  v43 = v31;
  v44 = a9;
  v25 = type metadata accessor for UNSList.Section(0, &v41);
  v26 = UNSList.Section.id.getter(v25);
  sub_270B1D2C0(v30, v26, v27, a6, a7, v24, a9, v23);
  (*(v17 + 16))(v21, v23, v16);
  sub_270B3156C();
  sub_270B3155C();
  return (*(v17 + 8))(v23, v16);
}

uint64_t static UNSList.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  type metadata accessor for UNSList.Section(0, v9);
  swift_getWitnessTable();
  return sub_270B3157C() & 1;
}

uint64_t sub_270B1D83C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_270B3184C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_270B1D8B4()
{
  sub_270B318BC();
  MEMORY[0x2743B0EF0](0);
  return sub_270B318EC();
}

uint64_t sub_270B1D8F8()
{
  sub_270B318BC();
  MEMORY[0x2743B0EF0](0);
  return sub_270B318EC();
}

uint64_t sub_270B1D968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result & 1;
  return result;
}

uint64_t sub_270B1D9A8@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_270B1D9E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_270B1DA3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t UNSList.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v16 = a2[3];
  v17 = v4;
  v5 = a2[4];
  v14 = a2[5];
  v15 = v5;
  v20 = v4;
  v21 = v16;
  v22 = v5;
  v23 = v14;
  type metadata accessor for UNSList.CodingKeys(255, &v20);
  swift_getWitnessTable();
  v6 = sub_270B3183C();
  v18 = *(v6 - 8);
  v7 = *(v18 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  v10 = *v2;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_270B3190C();
  v24 = v10;
  v20 = v17;
  v21 = v16;
  v22 = v15;
  v23 = v14;
  type metadata accessor for UNSList.Section(255, &v20);
  sub_270B3156C();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_270B3182C();

  return (*(v18 + 8))(v9, v6);
}

uint64_t UNSList.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v17 = a6;
  v18 = a4;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v19 = a5;
  type metadata accessor for UNSList.CodingKeys(255, &v23);
  swift_getWitnessTable();
  v20 = sub_270B317CC();
  v9 = *(v20 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v20);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v21;
  sub_270B318FC();
  if (!v14)
  {
    v23 = a2;
    v24 = a3;
    v25 = v18;
    v26 = v19;
    type metadata accessor for UNSList.Section(255, &v23);
    sub_270B3156C();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    v15 = v20;
    sub_270B317AC();
    (*(v9 + 8))(v12, v15);
    *v17 = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_270B1DF24@<X0>(uint64_t *a1@<X8>)
{
  result = _s25UserNotificationsServices7UNSListV14FlattenedGroupVAASSRszrlE2id4fromSSSaySSG_tFZ_0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_270B1DF50(uint64_t a1)
{
  v2 = sub_270B3132C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_270B1FB84(&qword_28125CA60, MEMORY[0x277CC5290]);
  v7 = sub_270B314EC();
  v35 = MEMORY[0x277D84F90];
  sub_270B1E334(0, v7 & ~(v7 >> 63), 0);
  v8 = v35;
  (*(v3 + 16))(v6, a1, v2);
  result = sub_270B314DC();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v34;
    if (v7)
    {
      v11 = v33;
      *&v32 = *(v33 + 16);
      v31 = xmmword_270B328D0;
      v12 = v34;
      while (v32 != v12)
      {
        if (v10 < 0)
        {
          goto LABEL_21;
        }

        if (v12 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 32 + v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844690, &qword_270B34088);
        v14 = swift_allocObject();
        *(v14 + 16) = v31;
        *(v14 + 56) = MEMORY[0x277D83B88];
        *(v14 + 64) = MEMORY[0x277D83C10];
        *(v14 + 32) = 2;
        *(v14 + 96) = MEMORY[0x277D84B78];
        *(v14 + 104) = MEMORY[0x277D84BC0];
        *(v14 + 72) = v13;
        result = sub_270B313DC();
        v35 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          v30 = result;
          v19 = v15;
          sub_270B1E334((v16 > 1), v17 + 1, 1);
          v15 = v19;
          result = v30;
          v8 = v35;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = result;
        *(v18 + 40) = v15;
        ++v12;
        if (!--v7)
        {
          v34 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v12 = v34;
LABEL_12:
      v20 = v33;
      v21 = *(v33 + 16);
      if (v12 == v21)
      {
LABEL_13:

        return v8;
      }

      v32 = xmmword_270B328D0;
      while (v12 < v21)
      {
        v22 = v12 + 1;
        v23 = *(v20 + 32 + v12);
        v34 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844690, &qword_270B34088);
        v24 = swift_allocObject();
        *(v24 + 16) = v32;
        *(v24 + 56) = MEMORY[0x277D83B88];
        *(v24 + 64) = MEMORY[0x277D83C10];
        *(v24 + 32) = 2;
        *(v24 + 96) = MEMORY[0x277D84B78];
        *(v24 + 104) = MEMORY[0x277D84BC0];
        *(v24 + 72) = v23;
        result = sub_270B313DC();
        v35 = v8;
        v27 = *(v8 + 16);
        v26 = *(v8 + 24);
        if (v27 >= v26 >> 1)
        {
          *&v31 = result;
          v29 = v25;
          sub_270B1E334((v26 > 1), v27 + 1, 1);
          v25 = v29;
          result = v31;
          v8 = v35;
        }

        *(v8 + 16) = v27 + 1;
        v28 = v8 + 16 * v27;
        *(v28 + 32) = result;
        *(v28 + 40) = v25;
        v21 = *(v20 + 16);
        v12 = v34;
        if (v34 == v21)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_270B1E334(char *a1, int64_t a2, char a3)
{
  result = sub_270B1E354(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_270B1E354(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844698, &qword_270B34090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_270B1E468(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_270B3146C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_270B314CC();
}

uint64_t sub_270B1E518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else
  {
    if (a5)
    {
      return result;
    }
  }
}

uint64_t sub_270B1E57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else
  {
    if (a5)
    {
      return result;
    }
  }
}

uint64_t sub_270B1E5F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270B1E668(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_270B1E6D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s25UserNotificationsServices7UNSListV14FlattenedGroupVAASSRszrlE2id4fromSSSaySSG_tFZ_0(uint64_t a1)
{
  v36[3] = *MEMORY[0x277D85DE8];
  v2 = sub_270B3132C();
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_270B313FC();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_270B3135C();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_270B3134C();
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (v5 + 8);
    v15 = (a1 + 40);
    v33 = v12;
    v34 = v9;
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;

      sub_270B313EC();
      v18 = sub_270B313CC();
      v20 = v19;

      (*v14)(v8, v35);
      if (v20 >> 60 == 15)
      {
        goto LABEL_5;
      }

      v21 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        if (v21 == 2)
        {
          v23 = *(v18 + 16);
          v22 = *(v18 + 24);

          if (sub_270B3112C() && __OFSUB__(v23, sub_270B3114C()))
          {
            goto LABEL_22;
          }

          if (__OFSUB__(v22, v23))
          {
            goto LABEL_21;
          }

LABEL_18:
          sub_270B3113C();
          sub_270B1FB84(&qword_28125CA58, MEMORY[0x277CC5540]);
          v12 = v33;
          v9 = v34;
          goto LABEL_4;
        }

        sub_270B1FB84(&qword_28125CA58, MEMORY[0x277CC5540]);
        memset(v36, 0, 14);
      }

      else
      {
        if (v21)
        {
          if (v18 >> 32 < v18)
          {
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
          }

          if (sub_270B3112C() && __OFSUB__(v18, sub_270B3114C()))
          {
            goto LABEL_23;
          }

          goto LABEL_18;
        }

        v36[0] = v18;
        LOWORD(v36[1]) = v20;
        BYTE2(v36[1]) = BYTE2(v20);
        BYTE3(v36[1]) = BYTE3(v20);
        BYTE4(v36[1]) = BYTE4(v20);
        BYTE5(v36[1]) = BYTE5(v20);
        sub_270B1FB84(&qword_28125CA58, MEMORY[0x277CC5540]);
      }

LABEL_4:
      sub_270B3131C();
      sub_270B1FB1C(v18, v20);
      sub_270B1FB1C(v18, v20);
LABEL_5:
      v15 += 2;
      --v13;
    }

    while (v13);
  }

  v24 = v30;
  sub_270B3133C();
  v36[0] = sub_270B1DF50(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844688, &qword_270B34080);
  sub_270B1FAB8();
  v25 = sub_270B3138C();

  (*(v31 + 8))(v24, v32);
  (*(v29 + 8))(v12, v9);
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t sub_270B1ED50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_270B1EDA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_270B1EDEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_270B1EE40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_270B1EE90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_270B1EED8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_270B1EF18()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_270B1EF60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 >= 0xD)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270B1EFB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

void *sub_270B1F008(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_270B1F030(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_270B3156C();
  if (v4 <= 0x3F)
  {
    v15 = 0;
    v19 = v3;
    v5 = *(a1 + 40);
    v12 = v2;
    v13 = *(a1 + 24);
    v14 = v5;
    v6 = type metadata accessor for UNSList.Section.Group.GroupingMethod(319, &v12);
    if (v7 <= 0x3F)
    {
      v16 = 0;
      v20 = v6;
      sub_270B1F12C();
      if (v9 <= 0x3F)
      {
        v17 = 0;
        v21 = v8;
        sub_270B1F184();
        if (v11 <= 0x3F)
        {
          v18 = 0;
          v22 = v10;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_270B1F12C()
{
  if (!qword_28125D100)
  {
    sub_270B3116C();
    v0 = sub_270B3165C();
    if (!v1)
    {
      atomic_store(v0, &qword_28125D100);
    }
  }
}

void sub_270B1F184()
{
  if (!qword_28125CA50)
  {
    v0 = sub_270B3165C();
    if (!v1)
    {
      atomic_store(v0, &qword_28125CA50);
    }
  }
}

uint64_t sub_270B1F1D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_270B1F224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_270B1F26C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_270B1F2B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_270B1F2F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for UNSList.Section.Group(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = 0;
    *&v4[0] = result;
    *(&v4[0] + 1) = MEMORY[0x277D837D0];
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserNotification.LegacyAction.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserNotification.LegacyAction.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserNotification.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserNotification.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_270B1FAB8()
{
  result = qword_28125CA48;
  if (!qword_28125CA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280844688, &qword_270B34080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125CA48);
  }

  return result;
}

uint64_t sub_270B1FB1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_270B1FB30(a1, a2);
  }

  return a1;
}

uint64_t sub_270B1FB30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_270B1FB84(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_270B1FD04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *sub_270B1FDA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_270B1FDD0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_270B1FE80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t UserNotificationDestinations.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_270B20700(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_270B20700((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x73656369746F6ELL;
  *(v5 + 5) = 0xE700000000000000;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_270B20700(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_270B20700((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x72656E6E6162;
    *(v8 + 5) = 0xE600000000000000;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_270B20700(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_270B20700((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x656C416C61646F6DLL;
    *(v11 + 5) = 0xEA00000000007472;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_270B20700(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_270B20700((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x657263536B636F6CLL;
  *(v14 + 5) = 0xEA00000000006E65;
  if ((v1 & 0x10) == 0)
  {
LABEL_15:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

LABEL_27:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_270B20700(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_270B20700((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 0x646E756F73;
  *(v17 + 5) = 0xE500000000000000;
  if ((v1 & 0x20) != 0)
  {
LABEL_32:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_270B20700(0, *(v2 + 2) + 1, 1, v2);
    }

    v19 = *(v2 + 2);
    v18 = *(v2 + 3);
    if (v19 >= v18 >> 1)
    {
      v2 = sub_270B20700((v18 > 1), v19 + 1, 1, v2);
    }

    *(v2 + 2) = v19 + 1;
    v20 = &v2[16 * v19];
    strcpy(v20 + 32, "lockedBanner");
    v20[45] = 0;
    *(v20 + 23) = -5120;
  }

LABEL_37:
  if ((v1 & 0x40) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_270B20700(0, *(v2 + 2) + 1, 1, v2);
    }

    v22 = *(v2 + 2);
    v21 = *(v2 + 3);
    if (v22 >= v21 >> 1)
    {
      v2 = sub_270B20700((v21 > 1), v22 + 1, 1, v2);
    }

    *(v2 + 2) = v22 + 1;
    v23 = &v2[16 * v22];
    *(v23 + 4) = 0xD000000000000010;
    *(v23 + 5) = 0x8000000270B36FD0;
    if ((v1 & 0x80) == 0)
    {
LABEL_39:
      if ((v1 & 0x100) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_57;
    }
  }

  else if ((v1 & 0x80) == 0)
  {
    goto LABEL_39;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_270B20700(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_270B20700((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 7496035;
  *(v26 + 5) = 0xE300000000000000;
  if ((v1 & 0x100) == 0)
  {
LABEL_40:
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_62;
  }

LABEL_57:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_270B20700(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_270B20700((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0x6E656B6F7073;
  *(v29 + 5) = 0xE600000000000000;
  if ((v1 & 0x200) == 0)
  {
LABEL_41:
    if ((v1 & 0x400) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_67;
  }

LABEL_62:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_270B20700(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_270B20700((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0x73676E6974746573;
  *(v32 + 5) = 0xE800000000000000;
  if ((v1 & 0x400) == 0)
  {
LABEL_42:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_72;
  }

LABEL_67:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_270B20700(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_270B20700((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0x6964726177726F66;
  *(v35 + 5) = 0xEA0000000000676ELL;
  if ((v1 & 0x800) == 0)
  {
LABEL_43:
    if ((v1 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_77;
  }

LABEL_72:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_270B20700(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_270B20700((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  *(v38 + 4) = 0x79616C70736964;
  *(v38 + 5) = 0xE700000000000000;
  if ((v1 & 0x1000) == 0)
  {
LABEL_44:
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_82;
  }

LABEL_77:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_270B20700(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_270B20700((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 0x61436E656B6F7073;
  *(v41 + 5) = 0xE900000000000072;
  if ((v1 & 0x2000) == 0)
  {
LABEL_45:
    if ((v1 & 0x4000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_87;
  }

LABEL_82:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_270B20700(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_270B20700((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0x747365676964;
  *(v44 + 5) = 0xE600000000000000;
  if ((v1 & 0x4000) != 0)
  {
LABEL_87:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_270B20700(0, *(v2 + 2) + 1, 1, v2);
    }

    v46 = *(v2 + 2);
    v45 = *(v2 + 3);
    if (v46 >= v45 >> 1)
    {
      v2 = sub_270B20700((v45 > 1), v46 + 1, 1, v2);
    }

    *(v2 + 2) = v46 + 1;
    v47 = &v2[16 * v46];
    *(v47 + 4) = 0xD000000000000013;
    *(v47 + 5) = 0x8000000270B36FB0;
  }

LABEL_92:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844688, &qword_270B34080);
  sub_270B1FAB8();
  v48 = sub_270B3138C();
  v50 = v49;

  MEMORY[0x2743B0AB0](v48, v50);

  MEMORY[0x2743B0AB0](93, 0xE100000000000000);
  return 91;
}

char *sub_270B20700(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844698, &qword_270B34090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_270B20810()
{
  result = qword_2808446A0;
  if (!qword_2808446A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808446A0);
  }

  return result;
}

unint64_t sub_270B20868()
{
  result = qword_2808446A8;
  if (!qword_2808446A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808446A8);
  }

  return result;
}

unint64_t sub_270B208C0()
{
  result = qword_2808446B0;
  if (!qword_2808446B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808446B0);
  }

  return result;
}

unint64_t sub_270B20918()
{
  result = qword_2808446B8;
  if (!qword_2808446B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808446B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserNotificationDestinations(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UserNotificationDestinations(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

char *sub_270B209C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446C0, "nP");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_270B20AD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    if (a1 != a2)
    {
      v4 = 0;
      v23 = a1;
      while (1)
      {
        v6 = *(a1 + v4 + 48);
        v7 = *(a1 + v4 + 49);
        v8 = *(a1 + v4 + 56);
        v9 = *(a1 + v4 + 64);
        v10 = *(a1 + v4 + 80);
        v28 = *(a1 + v4 + 88);
        v11 = *(v3 + v4 + 48);
        v12 = *(v3 + v4 + 49);
        v14 = *(v3 + v4 + 56);
        v13 = *(v3 + v4 + 64);
        v15 = *(v3 + v4 + 80);
        v25 = *(v3 + v4 + 72);
        v26 = *(a1 + v4 + 72);
        v27 = *(v3 + v4 + 88);
        if (*(a1 + v4 + 32) != *(v3 + v4 + 32))
        {
          goto LABEL_13;
        }

        if (*(a1 + v4 + 40) == *(v3 + v4 + 40))
        {
          result = 0;
          if (v6 != v11 || v7 != v12)
          {
            return result;
          }
        }

        else
        {
LABEL_13:
          v21 = *(v3 + v4 + 64);
          v22 = v4;
          v16 = *(v3 + v4 + 80);
          v17 = v10;
          v18 = v8;
          v19 = sub_270B3184C();
          result = 0;
          if ((v19 & 1) == 0)
          {
            return result;
          }

          if (v6 != v11)
          {
            return result;
          }

          v8 = v18;
          v10 = v17;
          v15 = v16;
          v13 = v21;
          v4 = v22;
          if (v7 != v12)
          {
            return result;
          }
        }

        if (v9)
        {
          if (!v13 || (v8 != v14 || v9 != v13) && (sub_270B3184C() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v13)
        {
          return 0;
        }

        if (!v10)
        {
          break;
        }

        if (!v15)
        {
          return 0;
        }

        if (v26 != v25 || v10 != v15)
        {
          v20 = sub_270B3184C();
          result = 0;
          if ((v20 & 1) == 0)
          {
            return result;
          }

          goto LABEL_6;
        }

        if (v28 != v27)
        {
          return 0;
        }

LABEL_7:
        v4 += 64;
        --v2;
        a1 = v23;
        v3 = a2;
        if (!v2)
        {
          return 1;
        }
      }

      result = 0;
      if (v15)
      {
        return result;
      }

LABEL_6:
      if ((v28 ^ v27))
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  return 1;
}

void *UserNotification.originalCategory.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id UserNotification.contentType.getter()
{
  v1 = [*v0 request];
  v2 = [v1 content];

  v3 = [v2 contentType];
  return v3;
}

uint64_t UserNotification.threadIdentifier.getter()
{
  v1 = [*v0 request];
  v2 = [v1 content];

  v3 = [v2 threadIdentifier];
  v4 = sub_270B313BC();

  return v4;
}

uint64_t UserNotification.derivedBehavior.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UserNotification(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_270B2107C(v4, v5);
}

uint64_t sub_270B2107C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return MEMORY[0x2821F9840]();
  }

  return result;
}

uint64_t UserNotification.derivedBehavior.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for UserNotification(0) + 36));
  result = sub_270B210D0(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_270B210D0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return MEMORY[0x2821F96F8]();
  }

  return result;
}

uint64_t UserNotification.allowsPrivateProperties.setter(char a1)
{
  result = type metadata accessor for UserNotification(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t UserNotification.incomingPriority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UserNotification(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t UserNotification.incomingPriority.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for UserNotification(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t UserNotification.incomingPersistence.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UserNotification(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t UserNotification.incomingPersistence.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for UserNotification(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t UserNotification.destinations.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for UserNotification(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t UserNotification.destinations.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for UserNotification(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

void *UserNotification.settings.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserNotification(0) + 56));
  v2 = v1;
  return v1;
}

void UserNotification.settings.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UserNotification(0) + 56);

  *(v1 + v3) = a1;
}

void *UserNotification.derivedCommunicationContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserNotification(0) + 64));
  v2 = v1;
  return v1;
}

void UserNotification.derivedCommunicationContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UserNotification(0) + 64);

  *(v1 + v3) = a1;
}

uint64_t UserNotification.secureAttachments.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UserNotification(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t UserNotification.secureAttachments.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for UserNotification(0);
  *(v1 + *(result + 68)) = v2;
  return result;
}

uint64_t UserNotification.priorityStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UserNotification(0);
  *a1 = *(v1 + *(result + 72));
  return result;
}

uint64_t UserNotification.priorityStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for UserNotification(0);
  *(v1 + *(result + 72)) = v2;
  return result;
}

uint64_t UserNotification.summaryStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UserNotification(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t UserNotification.summaryStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for UserNotification(0);
  *(v1 + *(result + 76)) = v2;
  return result;
}

uint64_t UserNotification.title.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446D0, &qword_270B342E8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v13 - v3);
  v5 = type metadata accessor for UserNotification(0);
  sub_270B2D194(v0 + *(v5 + 32), v4, &qword_2808446D0, &qword_270B342E8);
  v6 = type metadata accessor for UserNotification.LocalizedContent(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_270B1E6D8(v4, &qword_2808446D0, &qword_270B342E8);
LABEL_4:
    v9 = [*v0 request];
    v10 = [v9 content];

    v11 = [v10 title];
    v7 = sub_270B313BC();

    return v7;
  }

  v7 = *v4;
  v8 = v4[1];

  sub_270B09BA4(v4, type metadata accessor for UserNotification.LocalizedContent);
  if (!v8)
  {
    goto LABEL_4;
  }

  return v7;
}

uint64_t UserNotification.subtitle.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446D0, &qword_270B342E8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for UserNotification(0);
  sub_270B2D194(v0 + *(v5 + 32), v4, &qword_2808446D0, &qword_270B342E8);
  v6 = type metadata accessor for UserNotification.LocalizedContent(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_270B1E6D8(v4, &qword_2808446D0, &qword_270B342E8);
LABEL_4:
    v9 = [*v0 request];
    v10 = [v9 content];

    v11 = [v10 subtitle];
    v7 = sub_270B313BC();

    return v7;
  }

  v7 = *(v4 + 2);
  v8 = *(v4 + 3);

  sub_270B09BA4(v4, type metadata accessor for UserNotification.LocalizedContent);
  if (!v8)
  {
    goto LABEL_4;
  }

  return v7;
}

uint64_t UserNotification.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446D0, &qword_270B342E8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for UserNotification(0);
  sub_270B2D194(v0 + *(v5 + 32), v4, &qword_2808446D0, &qword_270B342E8);
  v6 = type metadata accessor for UserNotification.LocalizedContent(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_270B1E6D8(v4, &qword_2808446D0, &qword_270B342E8);
LABEL_4:
    v9 = [*v0 request];
    v10 = [v9 content];

    v11 = [v10 body];
    v7 = sub_270B313BC();

    return v7;
  }

  v7 = *(v4 + 4);
  v8 = *(v4 + 5);

  sub_270B09BA4(v4, type metadata accessor for UserNotification.LocalizedContent);
  if (!v8)
  {
    goto LABEL_4;
  }

  return v7;
}

BOOL UserNotification.hasAlertContent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446D0, &qword_270B342E8);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v42 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  v12 = UserNotification.body.getter() & 0xFFFFFFFFFFFFLL;
  if (!v11)
  {
    v12 = 0;
  }

  v47 = v12;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v45 = v13;
  v15 = UserNotification.subtitle.getter() & 0xFFFFFFFFFFFFLL;
  if (!v14)
  {
    v15 = 0;
  }

  v44 = v15;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v46 = v16;
  v18 = UserNotification.title.getter() & 0xFFFFFFFFFFFFLL;
  if (!v17)
  {
    v18 = 0;
  }

  v43 = v18;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v48 = v19;
  v20 = *(type metadata accessor for UserNotification(0) + 32);
  sub_270B2D194(v0 + v20, v10, &qword_2808446D0, &qword_270B342E8);
  v21 = type metadata accessor for UserNotification.LocalizedContent(0);
  v22 = *(*(v21 - 8) + 48);
  if (v22(v10, 1, v21) == 1)
  {
    sub_270B1E6D8(v10, &qword_2808446D0, &qword_270B342E8);
  }

  else
  {
    v24 = *(v10 + 4);
    v23 = *(v10 + 5);

    sub_270B09BA4(v10, type metadata accessor for UserNotification.LocalizedContent);
    v49 = v23;
    if (v23)
    {
      v42 = v24 & 0xFFFFFFFFFFFFLL;
      goto LABEL_21;
    }
  }

  v42 = 0;
  v49 = 0xE000000000000000;
LABEL_21:
  sub_270B2D194(v0 + v20, v8, &qword_2808446D0, &qword_270B342E8);
  if (v22(v8, 1, v21) == 1)
  {
    sub_270B1E6D8(v8, &qword_2808446D0, &qword_270B342E8);
  }

  else
  {
    v25 = *(v8 + 2);
    v26 = *(v8 + 3);

    sub_270B09BA4(v8, type metadata accessor for UserNotification.LocalizedContent);
    if (v26)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
      goto LABEL_26;
    }
  }

  v27 = 0;
  v26 = 0xE000000000000000;
LABEL_26:
  sub_270B2D194(v0 + v20, v5, &qword_2808446D0, &qword_270B342E8);
  if (v22(v5, 1, v21) == 1)
  {
    sub_270B1E6D8(v5, &qword_2808446D0, &qword_270B342E8);
    v28 = v46;
LABEL_30:

    v31 = 0;
    v30 = 0xE000000000000000;
    goto LABEL_31;
  }

  v29 = *v5;
  v30 = v5[1];

  sub_270B09BA4(v5, type metadata accessor for UserNotification.LocalizedContent);
  v28 = v46;
  if (!v30)
  {
    goto LABEL_30;
  }

  v31 = v29 & 0xFFFFFFFFFFFFLL;
LABEL_31:
  v32 = v45;

  if ((v32 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(v32) & 0xF;
  }

  else
  {
    v33 = v47;
  }

  if (v33)
  {
    goto LABEL_38;
  }

  v34 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v34 = v44;
  }

  if (v34)
  {
LABEL_38:

LABEL_39:

    return 1;
  }

  v36 = v48;

  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v43;
  }

  if (v37)
  {

    goto LABEL_39;
  }

  v38 = v49;

  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v42;
  }

  if (v39)
  {

    goto LABEL_39;
  }

  if ((v26 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v26) & 0xF;
  }

  else
  {
    v40 = v27;
  }

  if (v40)
  {
    return 1;
  }

  v41 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v41 = v31;
  }

  return v41 != 0;
}

uint64_t UserNotification.init(notification:category:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  v6 = type metadata accessor for UserNotification(0);
  v7 = v6[7];
  v8 = type metadata accessor for UserNotification.LegacyContent(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = v6[8];
  v10 = type metadata accessor for UserNotification.LocalizedContent(0);
  (*(*(v10 - 8) + 56))(a3 + v9, 1, 1, v10);
  *(a3 + v6[9]) = xmmword_270B342D0;
  *(a3 + v6[10]) = 0;
  *(a3 + v6[11]) = 0;
  *(a3 + v6[12]) = 0;
  *(a3 + v6[13]) = 0;
  *(a3 + v6[14]) = 0;
  v11 = v6[15];
  v12 = sub_270B3128C();
  result = (*(*(v12 - 8) + 56))(a3 + v11, 1, 1, v12);
  *(a3 + v6[16]) = 0;
  *(a3 + v6[17]) = 1;
  *(a3 + v6[18]) = 6;
  *(a3 + v6[19]) = 5;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t UserNotification.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_270B3128C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446D8, &qword_270B342F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = *v1;
  sub_270B3164C();
  v14 = v2[1];
  sub_270B318DC();
  if (v14)
  {
    v15 = v14;
    sub_270B3164C();
  }

  MEMORY[0x2743B0EF0](*(v2 + 16));
  v16 = type metadata accessor for UserNotification(0);
  v17 = v2 + v16[7];
  sub_270B2B93C(a1);
  v18 = v2 + v16[8];
  sub_270B2B508();
  v19 = (v2 + v16[9]);
  v20 = v19[1];
  if (v20 == 1 || (v21 = *v19, sub_270B318DC(), sub_270B318DC(), sub_270B318DC(), sub_270B318DC(), !v20))
  {
    sub_270B318DC();
  }

  else
  {
    sub_270B318DC();
    v22 = v20;
    sub_270B3164C();
    sub_270B210D0(v21, v20);
  }

  v23 = *(v2 + v16[10]);
  sub_270B318DC();
  MEMORY[0x2743B0EF0](qword_270B35ED8[*(v2 + v16[11])]);
  MEMORY[0x2743B0EF0](*(v2 + v16[12]));
  sub_270B2D194(v2 + v16[15], v12, &qword_2808446D8, &qword_270B342F0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_270B318DC();
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_270B318DC();
  sub_270B2C608(&qword_2808446E0, MEMORY[0x277D85578]);
  sub_270B3137C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t UserNotification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446D0, &qword_270B342E8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446D8, &qword_270B342F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v93 = v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446C8, &qword_270B342E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v98 = v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446E8, &qword_270B342F8);
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  MEMORY[0x28223BE20](v12);
  v108 = v75 - v14;
  v15 = type metadata accessor for UserNotification(0);
  v16 = *(*(v15 - 1) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = *(v17 + 28);
  v21 = type metadata accessor for UserNotification.LegacyContent(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v107 = v20;
  v91 = v23;
  v92 = v21;
  v90 = v22 + 56;
  (v23)(&v19[v20], 1, 1);
  v24 = v15[8];
  v25 = type metadata accessor for UserNotification.LocalizedContent(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v105 = v24;
  v94 = v25;
  v95 = v26 + 56;
  v96 = v27;
  (v27)(&v19[v24], 1, 1);
  v104 = &v19[v15[9]];
  *v104 = xmmword_270B342D0;
  v89 = v15[11];
  v19[v89] = 0;
  v88 = v15[12];
  v19[v88] = 0;
  *&v19[v15[13]] = 0;
  v86 = v15[14];
  *&v19[v86] = 0;
  v28 = v15[15];
  v29 = sub_270B3128C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v32 = v30 + 56;
  v106 = v28;
  v31(&v19[v28], 1, 1, v29);
  *&v19[v15[16]] = 0;
  v19[v15[17]] = 1;
  v33 = v15[18];
  v19[v33] = 6;
  v34 = v15[19];
  v102 = v19;
  v103 = a1;
  v19[v34] = 5;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2C4B8();
  v36 = v101;
  sub_270B318FC();
  if (v36)
  {
    v37 = v102;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    v48 = v104;
    v47 = v105;
    sub_270B1E6D8(v37 + v107, &qword_2808446C8, &qword_270B342E0);
    sub_270B1E6D8(v37 + v47, &qword_2808446D0, &qword_270B342E8);
    sub_270B210D0(*v48, v48[1]);

    return sub_270B1E6D8(v37 + v106, &qword_2808446D8, &qword_270B342F0);
  }

  v83 = v32;
  v84 = v31;
  v85 = v29;
  v38 = v98;
  v101 = v15;
  v82 = v33;
  v81 = v34;
  v111 = 0;
  v39 = sub_270B2C50C();
  v40 = v100;
  v41 = v108;
  sub_270B317AC();
  v42 = v40;
  v44 = v109;
  v43 = v110;
  v45 = sub_270B30764(0, &qword_280844700, 0x277CCAAC8);
  sub_270B30764(0, &qword_28125CA30, 0x277CE1F78);
  v46 = sub_270B315DC();
  v37 = v102;
  v77 = v45;
  v80 = v44;
  if (!v46)
  {
    sub_270B2C560();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();
    sub_270B1FB30(v80, v43);
    (*(v99 + 8))(v41, v42);
    goto LABEL_4;
  }

  v79 = v46;
  *v102 = v46;
  v111 = 1;
  v75[1] = v39;
  sub_270B317AC();
  v76 = v43;
  v51 = v109;
  v52 = v110;
  sub_270B30764(0, &qword_28125CA18, 0x277CE1F98);
  v53 = sub_270B315DC();
  sub_270B1FB30(v51, v52);
  if (v53)
  {
    v78 = v53;
    *(v37 + 8) = v53;
  }

  else
  {
    v78 = 0;
  }

  v54 = v76;
  v111 = 2;
  sub_270B2C5B4();
  sub_270B317AC();
  v76 = v54;
  *(v37 + 16) = v109;
  LOBYTE(v109) = 3;
  sub_270B2C608(&qword_280844718, type metadata accessor for UserNotification.LegacyContent);
  v55 = v92;
  sub_270B317AC();
  v91(v38, 0, 1, v55);
  sub_270B2D1FC(v38, v37 + v107, &qword_2808446C8, &qword_270B342E0);
  v56 = v84;
  LOBYTE(v109) = 10;
  sub_270B2C608(&qword_280844720, MEMORY[0x277D85578]);
  v57 = v93;
  v58 = v85;
  sub_270B317AC();
  v59 = v105;
  v56(v57, 0, 1, v58);
  sub_270B2D1FC(v57, v37 + v106, &qword_2808446D8, &qword_270B342F0);
  v60 = v94;
  LOBYTE(v109) = 4;
  sub_270B2C608(&qword_280844728, type metadata accessor for UserNotification.LocalizedContent);
  v61 = v97;
  sub_270B317AC();
  v96(v61, 0, 1, v60);
  sub_270B2D1FC(v61, v37 + v59, &qword_2808446D0, &qword_270B342E8);
  v111 = 5;
  sub_270B2C650();
  sub_270B317AC();
  v62 = v110;
  v63 = 256;
  if (!BYTE1(v109))
  {
    v63 = 0;
  }

  v64 = v63 | v109;
  v65 = 0x10000;
  if (!BYTE2(v109))
  {
    v65 = 0;
  }

  v66 = v64 | v65;
  v67 = v104;
  v68 = v101;
  sub_270B210D0(*v104, v104[1]);
  *v67 = v66;
  v67[1] = v62;
  LOBYTE(v109) = 6;
  *(v37 + v68[10]) = sub_270B3179C() & 1;
  v111 = 7;
  sub_270B2C6A4();
  sub_270B317AC();
  *(v37 + v89) = v109;
  v111 = 8;
  sub_270B2C6F8();
  sub_270B317AC();
  v69 = v99;
  *(v37 + v88) = v109;
  v111 = 9;
  sub_270B317AC();
  v70 = v109;
  v71 = v110;
  sub_270B30764(0, &qword_28125CA08, 0x277CE1FD0);
  v72 = sub_270B315DC();
  sub_270B1FB30(v70, v71);
  if (v72)
  {
    *(v37 + v86) = v72;
  }

  v111 = 11;
  sub_270B2C74C();
  v73 = v100;
  v74 = v108;
  sub_270B3177C();
  *(v37 + v82) = v109;
  v111 = 12;
  sub_270B2C7A0();
  sub_270B3177C();
  (*(v69 + 8))(v74, v73);
  sub_270B1FB30(v80, v76);
  *(v37 + v81) = v109;
  sub_270B2CB48(v37, v87, type metadata accessor for UserNotification);
  __swift_destroy_boxed_opaque_existential_1Tm(v103);
  return sub_270B09BA4(v37, type metadata accessor for UserNotification);
}