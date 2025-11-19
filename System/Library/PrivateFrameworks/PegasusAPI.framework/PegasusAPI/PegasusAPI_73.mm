uint64_t sub_1B940035C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD4D8, type metadata accessor for Searchfoundation_AddToPhotosLibraryCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94003CC()
{
  sub_1B8CD3068(&qword_1EBACD4D8, type metadata accessor for Searchfoundation_AddToPhotosLibraryCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9400554(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDCE8, type metadata accessor for Searchfoundation_ExpandInlineCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94005D4(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD4F0, type metadata accessor for Searchfoundation_ExpandInlineCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9400644()
{
  sub_1B8CD3068(&qword_1EBACD4F0, type metadata accessor for Searchfoundation_ExpandInlineCommand);

  return sub_1B964C5D0();
}

void sub_1B9400758()
{
  OUTLINED_FUNCTION_822();
  v2 = v1;
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1351();
  if (!v3 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
  {
    v4 = *(v2(0) + 20);
    OUTLINED_FUNCTION_163_6();
    sub_1B964C290();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B940085C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDCE0, type metadata accessor for Searchfoundation_ViewEmailCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94008DC(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD508, type metadata accessor for Searchfoundation_ViewEmailCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B940094C()
{
  sub_1B8CD3068(&qword_1EBACD508, type metadata accessor for Searchfoundation_ViewEmailCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9400AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDCD8, type metadata accessor for Searchfoundation_FlightCheckinCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9400B54(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD520, type metadata accessor for Searchfoundation_FlightCheckinCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9400BC4()
{
  sub_1B8CD3068(&qword_1EBACD520, type metadata accessor for Searchfoundation_FlightCheckinCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9400C94()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C400();
    }
  }

  return result;
}

uint64_t sub_1B9400D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDCD0, type metadata accessor for Searchfoundation_ManageReservationCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9400E18(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD538, type metadata accessor for Searchfoundation_ManageReservationCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9400E88()
{
  sub_1B8CD3068(&qword_1EBACD538, type metadata accessor for Searchfoundation_ManageReservationCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9400F14()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBB70);
  __swift_project_value_buffer(v0, qword_1EBACBB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rejectedPeople";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "photosLibraryImage";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RejectPeopleInPhotoCommand.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B94011B4();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B944A84C();
    }
  }
}

uint64_t sub_1B94011B4()
{
  v0 = *(type metadata accessor for Searchfoundation_RejectPeopleInPhotoCommand(0) + 24);
  type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  sub_1B8CD3068(&qword_1EBACC9B8, type metadata accessor for Searchfoundation_PhotosLibraryImage);
  return sub_1B964C580();
}

void Searchfoundation_RejectPeopleInPhotoCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_588_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC618, &unk_1B96B9990);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_151();
  v9 = type metadata accessor for Searchfoundation_PhotosLibraryImage(v8);
  v10 = OUTLINED_FUNCTION_46(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_835();
  if (!v13 || (v2 = type metadata accessor for Searchfoundation_Person(), OUTLINED_FUNCTION_135_6(), sub_1B8CD3068(v14, v15), OUTLINED_FUNCTION_423_1(), OUTLINED_FUNCTION_17_15(), sub_1B964C730(), !v1))
  {
    v16 = type metadata accessor for Searchfoundation_RejectPeopleInPhotoCommand(0);
    OUTLINED_FUNCTION_1366(v16);
    OUTLINED_FUNCTION_1314(v17);
    OUTLINED_FUNCTION_243_1();
    if (v18)
    {
      sub_1B8D9207C(v3, &qword_1EBACC618, &unk_1B96B9990);
LABEL_7:
      v19 = v0 + *(v2 + 20);
      OUTLINED_FUNCTION_213_3();
      sub_1B964C290();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_61_9();
    OUTLINED_FUNCTION_1277();
    sub_1B8CD3068(&qword_1EBACC9B8, type metadata accessor for Searchfoundation_PhotosLibraryImage);
    OUTLINED_FUNCTION_597_0();
    OUTLINED_FUNCTION_17_15();
    sub_1B964C740();
    OUTLINED_FUNCTION_493_1();
    sub_1B944B0D4();
    if (!v1)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B94014C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDCC8, type metadata accessor for Searchfoundation_RejectPeopleInPhotoCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9401544(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD550, type metadata accessor for Searchfoundation_RejectPeopleInPhotoCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94015B4()
{
  sub_1B8CD3068(&qword_1EBACD550, type metadata accessor for Searchfoundation_RejectPeopleInPhotoCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9401640()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBB88);
  __swift_project_value_buffer(v0, qword_1EBACBB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "person";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "addToExistingContact";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9401858()
{
  v0 = *(type metadata accessor for Searchfoundation_CreateContactCommand(0) + 24);
  type metadata accessor for Searchfoundation_Person();
  sub_1B8CD3068(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person);
  return sub_1B964C580();
}

void Searchfoundation_CreateContactCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_835_0(v3, v4, v5);
  v6 = OUTLINED_FUNCTION_177_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_151();
  v12 = type metadata accessor for Searchfoundation_Person();
  v13 = OUTLINED_FUNCTION_205_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_165_5();
  ContactCommand = type metadata accessor for Searchfoundation_CreateContactCommand(0);
  OUTLINED_FUNCTION_687_0(ContactCommand);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_178(v17, v18, v19);
  if (v20)
  {
    sub_1B8D9207C(v2, &qword_1EBACC5A8, &unk_1B96CD450);
    OUTLINED_FUNCTION_1343();
  }

  else
  {
    OUTLINED_FUNCTION_10_33();
    OUTLINED_FUNCTION_1278();
    OUTLINED_FUNCTION_135_6();
    sub_1B8CD3068(v21, v22);
    OUTLINED_FUNCTION_460_0();
    OUTLINED_FUNCTION_45_15();
    sub_1B944B0D4();
    if (v0)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_1236();
  if (!v20 || (OUTLINED_FUNCTION_1068(), OUTLINED_FUNCTION_80_6(), OUTLINED_FUNCTION_713_0(), sub_1B964C670(), !v0))
  {
    v23 = *(v1 + 20);
    OUTLINED_FUNCTION_681_1();
  }

LABEL_9:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9401B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDCC0, type metadata accessor for Searchfoundation_CreateContactCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9401B80(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD568, type metadata accessor for Searchfoundation_CreateContactCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9401BF0()
{
  sub_1B8CD3068(&qword_1EBACD568, type metadata accessor for Searchfoundation_CreateContactCommand);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_FillToolParameterCommand.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = v2;
      v5 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
LABEL_6:
      if (v4 != v5)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      OUTLINED_FUNCTION_107_5();
      result = sub_1B964C6A0();
      if (!v1)
      {
LABEL_8:
        v7 = *(type metadata accessor for Searchfoundation_FillToolParameterCommand(0) + 20);
        OUTLINED_FUNCTION_163_6();
        return sub_1B964C290();
      }

      return result;
  }
}

uint64_t sub_1B9401E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDCB8, type metadata accessor for Searchfoundation_FillToolParameterCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9401ECC(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD580, type metadata accessor for Searchfoundation_FillToolParameterCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9401F3C()
{
  sub_1B8CD3068(&qword_1EBACD580, type metadata accessor for Searchfoundation_FillToolParameterCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9401FC8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBBB8);
  __swift_project_value_buffer(v0, qword_1EBACBBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encodedTypedValue";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 51;
  *v10 = "bundleIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 52;
  *v12 = "applicationPath";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_FillToolAppParameterCommand.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 52 || result == 51)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C470();
    }
  }

  return result;
}

void Searchfoundation_FillToolAppParameterCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v2[1];
  v5 = OUTLINED_FUNCTION_616();
  if (sub_1B8D99EA8(v5, v6) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_107_5(), sub_1B964C6A0(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v12 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
      {
        v13 = *(type metadata accessor for Searchfoundation_FillToolAppParameterCommand(0) + 28);
        OUTLINED_FUNCTION_163_6();
        sub_1B964C290();
      }
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B94023CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDCB0, type metadata accessor for Searchfoundation_FillToolAppParameterCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B940244C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD598, type metadata accessor for Searchfoundation_FillToolAppParameterCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94024BC()
{
  sub_1B8CD3068(&qword_1EBACD598, type metadata accessor for Searchfoundation_FillToolAppParameterCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9402548()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBBD0);
  __swift_project_value_buffer(v0, qword_1EBACBBD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encodedTypedValue";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 51;
  *v10 = "filePath";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_FillToolFileParameterCommand.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 51)
    {
      OUTLINED_FUNCTION_507_0();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C470();
    }
  }

  return result;
}

void sub_1B94027CC()
{
  OUTLINED_FUNCTION_273_0();
  v4 = v3;
  OUTLINED_FUNCTION_614();
  v5 = *v0;
  v6 = v2[1];
  v7 = OUTLINED_FUNCTION_1375();
  if (sub_1B8D99EA8(v7, v8) || (OUTLINED_FUNCTION_1375(), OUTLINED_FUNCTION_107_5(), sub_1B964C6A0(), !v1))
  {
    v9 = v2[2];
    v10 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v11 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
    {
      v12 = *(v4(0) + 24);
      OUTLINED_FUNCTION_163_6();
      sub_1B964C290();
    }
  }

  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9402914(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDCA8, type metadata accessor for Searchfoundation_FillToolFileParameterCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9402994(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD5B0, type metadata accessor for Searchfoundation_FillToolFileParameterCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9402A04()
{
  sub_1B8CD3068(&qword_1EBACD5B0, type metadata accessor for Searchfoundation_FillToolFileParameterCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9402A9C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBBE8);
  __swift_project_value_buffer(v0, qword_1EBACBBE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encodedTypedValue";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 51;
  *v10 = "entity";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9402CB8()
{
  v0 = *(type metadata accessor for Searchfoundation_FillToolAppEntityParameterCommand(0) + 24);
  type metadata accessor for Searchfoundation_AppEntityAnnotation();
  sub_1B8CD3068(&qword_1EBACB0B0, type metadata accessor for Searchfoundation_AppEntityAnnotation);
  return sub_1B964C580();
}

void Searchfoundation_FillToolAppEntityParameterCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_588_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC1D8, &qword_1B96B94F0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_151();
  v7 = type metadata accessor for Searchfoundation_AppEntityAnnotation();
  v8 = OUTLINED_FUNCTION_46(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v12 = *v0;
  v11 = v0[1];
  v13 = OUTLINED_FUNCTION_502();
  if (sub_1B8D99EA8(v13, v14) || (OUTLINED_FUNCTION_502(), OUTLINED_FUNCTION_764_0(), sub_1B964C6A0(), !v1))
  {
    v15 = type metadata accessor for Searchfoundation_FillToolAppEntityParameterCommand(0);
    OUTLINED_FUNCTION_1366(v15);
    OUTLINED_FUNCTION_1314(v16);
    OUTLINED_FUNCTION_243_1();
    if (v17)
    {
      sub_1B8D9207C(v2, &unk_1EBACC1D8, &qword_1B96B94F0);
LABEL_7:
      v18 = v0 + *(v11 + 20);
      OUTLINED_FUNCTION_213_3();
      sub_1B964C290();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_47_13();
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACB0B0, type metadata accessor for Searchfoundation_AppEntityAnnotation);
    OUTLINED_FUNCTION_597_0();
    OUTLINED_FUNCTION_17_15();
    sub_1B964C740();
    OUTLINED_FUNCTION_271_2();
    sub_1B944B0D4();
    if (!v1)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9402FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDCA0, type metadata accessor for Searchfoundation_FillToolAppEntityParameterCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B940303C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD5C8, type metadata accessor for Searchfoundation_FillToolAppEntityParameterCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94030AC()
{
  sub_1B8CD3068(&qword_1EBACD5C8, type metadata accessor for Searchfoundation_FillToolAppEntityParameterCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9403138()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBC00);
  __swift_project_value_buffer(v0, qword_1EBACBC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encodedTypedValue";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 51;
  *v10 = "person";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9403354()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 51)
    {
      v4 = OUTLINED_FUNCTION_691_1();
      v0(v4);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_1_0();
      sub_1B964C470();
    }
  }

  return result;
}

uint64_t sub_1B94033C8()
{
  v0 = *(type metadata accessor for Searchfoundation_FillToolPersonParameterCommand(0) + 24);
  type metadata accessor for Searchfoundation_Person();
  sub_1B8CD3068(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person);
  return sub_1B964C580();
}

void Searchfoundation_FillToolPersonParameterCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_588_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_151();
  v7 = type metadata accessor for Searchfoundation_Person();
  v8 = OUTLINED_FUNCTION_46(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v12 = *v0;
  v11 = v0[1];
  v13 = OUTLINED_FUNCTION_502();
  if (sub_1B8D99EA8(v13, v14) || (OUTLINED_FUNCTION_502(), OUTLINED_FUNCTION_764_0(), sub_1B964C6A0(), !v1))
  {
    v15 = type metadata accessor for Searchfoundation_FillToolPersonParameterCommand(0);
    OUTLINED_FUNCTION_1366(v15);
    OUTLINED_FUNCTION_1314(v16);
    OUTLINED_FUNCTION_243_1();
    if (v17)
    {
      sub_1B8D9207C(v2, &qword_1EBACC5A8, &unk_1B96CD450);
LABEL_7:
      v20 = v0 + *(v11 + 20);
      OUTLINED_FUNCTION_213_3();
      sub_1B964C290();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_10_33();
    sub_1B944B02C();
    OUTLINED_FUNCTION_135_6();
    sub_1B8CD3068(v18, v19);
    OUTLINED_FUNCTION_597_0();
    OUTLINED_FUNCTION_17_15();
    sub_1B964C740();
    OUTLINED_FUNCTION_45_15();
    sub_1B944B0D4();
    if (!v1)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B94036BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC98, type metadata accessor for Searchfoundation_FillToolPersonParameterCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B940373C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD5E0, type metadata accessor for Searchfoundation_FillToolPersonParameterCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94037AC()
{
  sub_1B8CD3068(&qword_1EBACD5E0, type metadata accessor for Searchfoundation_FillToolPersonParameterCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9403838()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBC18);
  __swift_project_value_buffer(v0, qword_1EBACBC18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B9656CE0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v4 = "title";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 2;
  *v8 = "startDate";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "endDate";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "isAllDay";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "location";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "notes";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "startTimeZone";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "endTimeZone";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "endLocation";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "url";
  *(v24 + 1) = 3;
  v24[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Searchfoundation_CalendarEvent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9403D0C();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9403DC0();
        break;
      case 4:
        OUTLINED_FUNCTION_507_0();
        sub_1B964C400();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B9403E74();
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B9403F28();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B9403FDC();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B9404090();
        break;
      case 10:
        OUTLINED_FUNCTION_9();
        sub_1B9404144();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9403D0C()
{
  v0 = *(type metadata accessor for Searchfoundation_CalendarEvent(0) + 32);
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B8CD3068(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  return sub_1B964C580();
}

uint64_t sub_1B9403DC0()
{
  v0 = *(type metadata accessor for Searchfoundation_CalendarEvent(0) + 36);
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B8CD3068(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  return sub_1B964C580();
}

uint64_t sub_1B9403E74()
{
  v0 = *(type metadata accessor for Searchfoundation_CalendarEvent(0) + 40);
  type metadata accessor for Searchfoundation_StructuredLocation(0);
  sub_1B8CD3068(&qword_1EBACC9F8, type metadata accessor for Searchfoundation_StructuredLocation);
  return sub_1B964C580();
}

uint64_t sub_1B9403F28()
{
  v0 = *(type metadata accessor for Searchfoundation_CalendarEvent(0) + 44);
  type metadata accessor for Searchfoundation_TimeZone(0);
  sub_1B8CD3068(&qword_1EBACCA00, type metadata accessor for Searchfoundation_TimeZone);
  return sub_1B964C580();
}

uint64_t sub_1B9403FDC()
{
  v0 = *(type metadata accessor for Searchfoundation_CalendarEvent(0) + 48);
  type metadata accessor for Searchfoundation_TimeZone(0);
  sub_1B8CD3068(&qword_1EBACCA00, type metadata accessor for Searchfoundation_TimeZone);
  return sub_1B964C580();
}

uint64_t sub_1B9404090()
{
  v0 = *(type metadata accessor for Searchfoundation_CalendarEvent(0) + 52);
  type metadata accessor for Searchfoundation_StructuredLocation(0);
  sub_1B8CD3068(&qword_1EBACC9F8, type metadata accessor for Searchfoundation_StructuredLocation);
  return sub_1B964C580();
}

uint64_t sub_1B9404144()
{
  v0 = *(type metadata accessor for Searchfoundation_CalendarEvent(0) + 56);
  type metadata accessor for Searchfoundation_URL();
  sub_1B8CD3068(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
  return sub_1B964C580();
}

void Searchfoundation_CalendarEvent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_185();
  v87 = v8;
  OUTLINED_FUNCTION_201();
  v82 = type metadata accessor for Searchfoundation_URL();
  v9 = OUTLINED_FUNCTION_59_1(v82);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC690, &qword_1B96B9A00);
  v13 = OUTLINED_FUNCTION_183(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44_0();
  v83 = v16;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_266_0();
  v85 = v18;
  v19 = OUTLINED_FUNCTION_201();
  v84 = type metadata accessor for Searchfoundation_TimeZone(v19);
  v20 = OUTLINED_FUNCTION_59_1(v84);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_266_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC688, &qword_1B96B99F8);
  v25 = OUTLINED_FUNCTION_183(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44_0();
  v88 = v28;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_266_0();
  v89 = v30;
  v31 = OUTLINED_FUNCTION_201();
  v86 = type metadata accessor for Searchfoundation_StructuredLocation(v31);
  v32 = OUTLINED_FUNCTION_59_1(v86);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_266_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  v37 = OUTLINED_FUNCTION_183(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_720_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_211();
  v41 = type metadata accessor for Searchfoundation_Date(0);
  v42 = OUTLINED_FUNCTION_59_1(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_441();
  v46 = *v0;
  v47 = v0[1];
  OUTLINED_FUNCTION_1();
  if (v48)
  {
    sub_1B964C700();
    if (v1)
    {
      goto LABEL_43;
    }

    v91 = 0;
  }

  else
  {
    v91 = v1;
  }

  v90 = type metadata accessor for Searchfoundation_CalendarEvent(0);
  v49 = v90[8];
  sub_1B8D92024();
  OUTLINED_FUNCTION_118(v2);
  if (v50)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    OUTLINED_FUNCTION_25_18();
    OUTLINED_FUNCTION_541_0();
    sub_1B944B02C();
    OUTLINED_FUNCTION_503_1();
    sub_1B8CD3068(v51, v52);
    OUTLINED_FUNCTION_709_0();
    OUTLINED_FUNCTION_680_0();
    v1 = v91;
    sub_1B964C740();
    if (v91)
    {
      goto LABEL_14;
    }

    v91 = 0;
    OUTLINED_FUNCTION_73_9();
    sub_1B944B0D4();
  }

  v53 = v90[9];
  sub_1B8D92024();
  OUTLINED_FUNCTION_118(v3);
  if (v50)
  {
    sub_1B8D9207C(v3, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    OUTLINED_FUNCTION_25_18();
    sub_1B944B02C();
    OUTLINED_FUNCTION_503_1();
    sub_1B8CD3068(v54, v55);
    OUTLINED_FUNCTION_272_2();
    OUTLINED_FUNCTION_1065();
    if (v1)
    {
LABEL_14:
      OUTLINED_FUNCTION_73_9();
      sub_1B944B0D4();
      goto LABEL_43;
    }

    v91 = 0;
    OUTLINED_FUNCTION_73_9();
    sub_1B944B0D4();
  }

  v57 = v88;
  v56 = v89;
  v58 = v87;
  if (*(v0 + 16) == 1)
  {
    OUTLINED_FUNCTION_1069();
    v1 = v91;
    sub_1B964C670();
    if (v91)
    {
      goto LABEL_43;
    }

    v91 = 0;
    v56 = v89;
  }

  v59 = v90[10];
  sub_1B8D92024();
  OUTLINED_FUNCTION_118(v56);
  if (v50)
  {
    sub_1B8D9207C(v56, &qword_1EBACC688, &qword_1B96B99F8);
  }

  else
  {
    OUTLINED_FUNCTION_43_14();
    sub_1B944B02C();
    OUTLINED_FUNCTION_984();
    sub_1B8CD3068(v60, v61);
    OUTLINED_FUNCTION_597_0();
    OUTLINED_FUNCTION_1065();
    OUTLINED_FUNCTION_361_2();
    sub_1B944B0D4();
    if (v1)
    {
      goto LABEL_43;
    }

    v91 = 0;
    v58 = v87;
    v57 = v88;
  }

  v62 = v0[3];
  v63 = v0[4];
  OUTLINED_FUNCTION_1();
  if (!v64 || (v1 = v91, sub_1B964C700(), !v91))
  {
    v65 = v90[11];
    sub_1B8D92024();
    v66 = OUTLINED_FUNCTION_538();
    OUTLINED_FUNCTION_178(v66, v67, v84);
    if (v50)
    {
      sub_1B8D9207C(v85, &qword_1EBACC690, &qword_1B96B9A00);
    }

    else
    {
      OUTLINED_FUNCTION_42_13();
      sub_1B944B02C();
      OUTLINED_FUNCTION_983();
      sub_1B8CD3068(v68, v69);
      OUTLINED_FUNCTION_272_2();
      OUTLINED_FUNCTION_1065();
      OUTLINED_FUNCTION_362_1();
      sub_1B944B0D4();
      if (v1)
      {
        goto LABEL_43;
      }
    }

    v70 = v90[12];
    sub_1B8D92024();
    v71 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_81(v71, v72);
    if (v50)
    {
      sub_1B8D9207C(v83, &qword_1EBACC690, &qword_1B96B9A00);
    }

    else
    {
      OUTLINED_FUNCTION_42_13();
      sub_1B944B02C();
      OUTLINED_FUNCTION_983();
      sub_1B8CD3068(v73, v74);
      OUTLINED_FUNCTION_272_2();
      OUTLINED_FUNCTION_1065();
      OUTLINED_FUNCTION_362_1();
      sub_1B944B0D4();
      if (v1)
      {
        goto LABEL_43;
      }
    }

    v75 = v90[13];
    sub_1B8D92024();
    OUTLINED_FUNCTION_118(v57);
    if (v50)
    {
      sub_1B8D9207C(v57, &qword_1EBACC688, &qword_1B96B99F8);
    }

    else
    {
      OUTLINED_FUNCTION_43_14();
      sub_1B944B02C();
      OUTLINED_FUNCTION_984();
      sub_1B8CD3068(v76, v77);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_1065();
      OUTLINED_FUNCTION_361_2();
      sub_1B944B0D4();
      if (v1)
      {
        goto LABEL_43;
      }
    }

    v78 = v90[14];
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v58);
    if (v50)
    {
      sub_1B8D9207C(v58, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_42:
      v81 = v0 + v90[7];
      sub_1B964C290();
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_9_30();
    sub_1B944B02C();
    OUTLINED_FUNCTION_136_2();
    sub_1B8CD3068(v79, v80);
    OUTLINED_FUNCTION_597_0();
    OUTLINED_FUNCTION_1065();
    OUTLINED_FUNCTION_46_13();
    sub_1B944B0D4();
    if (!v1)
    {
      goto LABEL_42;
    }
  }

LABEL_43:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_CalendarEvent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v8 = v7;
  OUTLINED_FUNCTION_1177();
  v166 = type metadata accessor for Searchfoundation_URL();
  v9 = OUTLINED_FUNCTION_59_1(v166);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_126_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_95_4();
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E28, &unk_1B96B7BB0);
  OUTLINED_FUNCTION_59_1(v165);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_22_3();
  v177 = type metadata accessor for Searchfoundation_TimeZone(v19);
  v20 = OUTLINED_FUNCTION_59_1(v177);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44_0();
  v168 = v23;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_266_0();
  v171 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC690, &qword_1B96B9A00);
  v27 = OUTLINED_FUNCTION_183(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44_0();
  v170 = v30;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_266_0();
  v173 = v32;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCA08, &qword_1B96B9AA8);
  v33 = OUTLINED_FUNCTION_59_1(v176);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44_0();
  v172 = v36;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_266_0();
  v175 = v38;
  v39 = OUTLINED_FUNCTION_201();
  v180 = type metadata accessor for Searchfoundation_StructuredLocation(v39);
  v40 = OUTLINED_FUNCTION_59_1(v180);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_21();
  v174 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC688, &qword_1B96B99F8);
  v45 = OUTLINED_FUNCTION_183(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_44_0();
  v167 = v48;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_266_0();
  v178 = v50;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCA10, &unk_1B96B9AB0);
  v51 = OUTLINED_FUNCTION_59_1(v181);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44_0();
  v169 = v54;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_266_0();
  v179 = v56;
  v57 = OUTLINED_FUNCTION_201();
  v58 = type metadata accessor for Searchfoundation_Date(v57);
  v59 = OUTLINED_FUNCTION_46(v58);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_44_0();
  v182 = v62;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_219_0();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  v65 = OUTLINED_FUNCTION_183(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_44_0();
  v183 = v68;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_447_0();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E38, &qword_1B96CD870);
  v71 = OUTLINED_FUNCTION_59_1(v70);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_44_0();
  v184 = v74;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v160 - v76;
  v78 = *v2 == *v8 && v2[1] == v8[1];
  if (!v78 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  v163 = v6;
  v160 = v3;
  v161 = v0;
  v162 = type metadata accessor for Searchfoundation_CalendarEvent(0);
  v79 = *(v162 + 32);
  v80 = *(v70 + 48);
  v164 = v2;
  sub_1B8D92024();
  v81 = v8;
  sub_1B8D92024();
  OUTLINED_FUNCTION_32(v77);
  if (v78)
  {
    OUTLINED_FUNCTION_32(&v77[v80]);
    if (v78)
    {
      sub_1B8D9207C(v77, &qword_1EBAB8E30, &qword_1B964D630);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_236();
  sub_1B8D92024();
  OUTLINED_FUNCTION_32(&v77[v80]);
  if (v82)
  {
    OUTLINED_FUNCTION_73_9();
    sub_1B944B0D4();
LABEL_14:
    v83 = &qword_1EBAB8E38;
    v84 = &qword_1B96CD870;
LABEL_15:
    v85 = v77;
LABEL_28:
    sub_1B8D9207C(v85, v83, v84);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_25_18();
  sub_1B944B02C();
  if (*v1 != *v4)
  {
    OUTLINED_FUNCTION_636_0();
    sub_1B944B0D4();
    OUTLINED_FUNCTION_202();
    sub_1B944B0D4();
    v83 = &qword_1EBAB8E30;
    v84 = &qword_1B964D630;
    goto LABEL_15;
  }

  v86 = *(v5 + 20);
  v87 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v88, v89);
  sub_1B964C850();
  OUTLINED_FUNCTION_991();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_690();
  sub_1B944B0D4();
  sub_1B8D9207C(v77, &qword_1EBAB8E30, &qword_1B964D630);
  if ((v87 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  v90 = v162;
  v91 = *(v162 + 36);
  v92 = *(v70 + 48);
  v93 = v164;
  v94 = v184;
  OUTLINED_FUNCTION_493_0();
  OUTLINED_FUNCTION_791_0();
  OUTLINED_FUNCTION_32(v94);
  if (v78)
  {
    OUTLINED_FUNCTION_32(v91 + v92);
    v95 = v163;
    if (v78)
    {
      sub_1B8D9207C(v91, &qword_1EBAB8E30, &qword_1B964D630);
      goto LABEL_34;
    }

    goto LABEL_26;
  }

  v96 = v183;
  sub_1B8D92024();
  OUTLINED_FUNCTION_32(v91 + v92);
  v95 = v163;
  if (v97)
  {
    OUTLINED_FUNCTION_73_9();
    sub_1B944B0D4();
LABEL_26:
    v83 = &qword_1EBAB8E38;
    v84 = &qword_1B96CD870;
LABEL_27:
    v85 = v91;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_25_18();
  v99 = v182;
  sub_1B944B02C();
  if (*v96 != *v99)
  {
    OUTLINED_FUNCTION_636_0();
    sub_1B944B0D4();
    OUTLINED_FUNCTION_1165();
    v83 = &qword_1EBAB8E30;
    v84 = &qword_1B964D630;
    goto LABEL_27;
  }

  v100 = *(v5 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v101, v102);
  LOBYTE(v100) = OUTLINED_FUNCTION_845_0();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_200();
  sub_1B944B0D4();
  sub_1B8D9207C(v91, &qword_1EBAB8E30, &qword_1B964D630);
  if ((v100 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_34:
  if (*(v93 + 16) != *(v81 + 16))
  {
    goto LABEL_29;
  }

  v91 = v90[10];
  v103 = *(v181 + 48);
  OUTLINED_FUNCTION_493_0();
  OUTLINED_FUNCTION_791_0();
  v104 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v104, v105, v180);
  if (v78)
  {
    OUTLINED_FUNCTION_32(v91 + v103);
    if (!v78)
    {
      goto LABEL_44;
    }

    sub_1B8D9207C(v91, &qword_1EBACC688, &qword_1B96B99F8);
  }

  else
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_32(v91 + v103);
    if (v106)
    {
LABEL_43:
      OUTLINED_FUNCTION_361_2();
      sub_1B944B0D4();
LABEL_44:
      v83 = &qword_1EBACCA10;
      v84 = &unk_1B96B9AB0;
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_43_14();
    OUTLINED_FUNCTION_1320();
    v107 = OUTLINED_FUNCTION_196();
    static Searchfoundation_StructuredLocation.== infix(_:_:)(v107, v108);
    OUTLINED_FUNCTION_949();
    sub_1B944B0D4();
    OUTLINED_FUNCTION_200();
    sub_1B944B0D4();
    sub_1B8D9207C(v91, &qword_1EBACC688, &qword_1B96B99F8);
    if ((&qword_1EBACC688 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v109 = v93[3] == v81[3] && v93[4] == v81[4];
  if (!v109 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  v91 = v90[11];
  v110 = *(v176 + 48);
  OUTLINED_FUNCTION_493_0();
  OUTLINED_FUNCTION_791_0();
  v111 = OUTLINED_FUNCTION_602();
  v112 = v177;
  OUTLINED_FUNCTION_44(v111, v113);
  if (v78)
  {
    OUTLINED_FUNCTION_48(v91 + v110);
    if (!v78)
    {
      goto LABEL_71;
    }

    sub_1B8D9207C(v91, &qword_1EBACC690, &qword_1B96B9A00);
  }

  else
  {
    v114 = v173;
    sub_1B8D92024();
    OUTLINED_FUNCTION_48(v91 + v110);
    if (v115)
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_42_13();
    sub_1B944B02C();
    v116 = *v114;
    v117 = v114[1];
    OUTLINED_FUNCTION_292_1();
    v120 = v78 && v118 == v119;
    if (!v120 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_1400();
    OUTLINED_FUNCTION_0_84();
    sub_1B8CD3068(v121, v122);
    OUTLINED_FUNCTION_845_0();
    OUTLINED_FUNCTION_951();
    sub_1B944B0D4();
    OUTLINED_FUNCTION_200();
    sub_1B944B0D4();
    sub_1B8D9207C(v91, &qword_1EBACC690, &qword_1B96B9A00);
    if ((v112 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v91 = v90[12];
  v123 = *(v176 + 48);
  OUTLINED_FUNCTION_493_0();
  OUTLINED_FUNCTION_791_0();
  v124 = OUTLINED_FUNCTION_602();
  v125 = v177;
  OUTLINED_FUNCTION_44(v124, v126);
  if (v78)
  {
    OUTLINED_FUNCTION_48(v91 + v123);
    if (v78)
    {
      sub_1B8D9207C(v91, &qword_1EBACC690, &qword_1B96B9A00);
      goto LABEL_78;
    }

LABEL_71:
    v83 = &qword_1EBACCA08;
    v84 = &qword_1B96B9AA8;
    goto LABEL_27;
  }

  v127 = v170;
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v91 + v123);
  if (v128)
  {
LABEL_70:
    OUTLINED_FUNCTION_362_1();
    sub_1B944B0D4();
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_42_13();
  sub_1B944B02C();
  v129 = *v127;
  v130 = v127[1];
  OUTLINED_FUNCTION_292_1();
  if (v131)
  {
    v134 = v132 == v133;
  }

  else
  {
    v134 = 0;
  }

  if (!v134 && (sub_1B964C9F0() & 1) == 0)
  {
LABEL_83:
    sub_1B944B0D4();
    OUTLINED_FUNCTION_1165();
    v83 = &qword_1EBACC690;
    v84 = &qword_1B96B9A00;
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_1400();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v135, v136);
  OUTLINED_FUNCTION_845_0();
  OUTLINED_FUNCTION_951();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_200();
  sub_1B944B0D4();
  sub_1B8D9207C(v91, &qword_1EBACC690, &qword_1B96B9A00);
  if ((v125 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_78:
  v91 = v90[13];
  v137 = *(v181 + 48);
  v138 = v169;
  OUTLINED_FUNCTION_493_0();
  OUTLINED_FUNCTION_791_0();
  OUTLINED_FUNCTION_32(v138);
  if (v78)
  {
    OUTLINED_FUNCTION_32(v91 + v137);
    if (v78)
    {
      sub_1B8D9207C(v91, &qword_1EBACC688, &qword_1B96B99F8);
      goto LABEL_86;
    }

    goto LABEL_44;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_32(v91 + v137);
  if (v139)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_43_14();
  OUTLINED_FUNCTION_1320();
  v140 = OUTLINED_FUNCTION_196();
  static Searchfoundation_StructuredLocation.== infix(_:_:)(v140, v141);
  OUTLINED_FUNCTION_949();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_200();
  sub_1B944B0D4();
  sub_1B8D9207C(v91, &qword_1EBACC688, &qword_1B96B99F8);
  if ((&qword_1EBACC688 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_86:
  v142 = v90[14];
  v143 = *(v165 + 48);
  v144 = v161;
  OUTLINED_FUNCTION_493_0();
  OUTLINED_FUNCTION_865();
  v145 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_81(v145, v146);
  if (v78)
  {
    OUTLINED_FUNCTION_37_0(v144 + v143);
    if (v78)
    {
      sub_1B8D9207C(v144, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_102:
      v157 = v90[7];
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v158, v159);
      v98 = sub_1B964C850();
      goto LABEL_30;
    }

    goto LABEL_94;
  }

  OUTLINED_FUNCTION_531_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v144 + v143);
  if (v147)
  {
    OUTLINED_FUNCTION_46_13();
    sub_1B944B0D4();
LABEL_94:
    v83 = &qword_1EBAB8E28;
    v84 = &unk_1B96B7BB0;
LABEL_95:
    v85 = v144;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_9_30();
  sub_1B944B02C();
  v148 = *v95;
  v149 = v95[1];
  OUTLINED_FUNCTION_428();
  if (v150)
  {
    v153 = v151 == v152;
  }

  else
  {
    v153 = 0;
  }

  if (!v153 && (sub_1B964C9F0() & 1) == 0)
  {
    OUTLINED_FUNCTION_500_1();
    sub_1B944B0D4();
    OUTLINED_FUNCTION_218();
    sub_1B944B0D4();
    v83 = &qword_1EBAB8E20;
    v84 = &unk_1B964D620;
    goto LABEL_95;
  }

  OUTLINED_FUNCTION_711();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v154, v155);
  v156 = OUTLINED_FUNCTION_518();
  OUTLINED_FUNCTION_501_1();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_1337();
  sub_1B944B0D4();
  sub_1B8D9207C(v144, &qword_1EBAB8E20, &unk_1B964D620);
  if (v156)
  {
    goto LABEL_102;
  }

LABEL_29:
  v98 = 0;
LABEL_30:
  OUTLINED_FUNCTION_264(v98);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9405940(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC90, type metadata accessor for Searchfoundation_CalendarEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94059C0(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCA28, type metadata accessor for Searchfoundation_CalendarEvent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9405A30()
{
  sub_1B8CD3068(&qword_1EBACCA28, type metadata accessor for Searchfoundation_CalendarEvent);

  return sub_1B964C5D0();
}

uint64_t sub_1B9405AC8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBC30);
  __swift_project_value_buffer(v0, qword_1EBACBC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dueDate";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "notes";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_Reminder.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9405D6C();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }
}

uint64_t sub_1B9405D6C()
{
  v0 = *(type metadata accessor for Searchfoundation_Reminder(0) + 28);
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B8CD3068(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  return sub_1B964C580();
}

void Searchfoundation_Reminder.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_192_4();
  v7 = type metadata accessor for Searchfoundation_Date(0);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_165_5();
  OUTLINED_FUNCTION_15_2();
  if (!v11 || (OUTLINED_FUNCTION_107_5(), sub_1B964C700(), !v0))
  {
    v12 = type metadata accessor for Searchfoundation_Reminder(0);
    v13 = *(v12 + 28);
    OUTLINED_FUNCTION_1316();
    OUTLINED_FUNCTION_118(v2);
    if (v14)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8E30, &qword_1B964D630);
    }

    else
    {
      OUTLINED_FUNCTION_25_18();
      OUTLINED_FUNCTION_190_0();
      sub_1B944B02C();
      OUTLINED_FUNCTION_503_1();
      sub_1B8CD3068(v15, v16);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_680_0();
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_73_9();
      sub_1B944B0D4();
      if (v0)
      {
        goto LABEL_10;
      }
    }

    v17 = *(v1 + 16);
    v18 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v19 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      v20 = *(v12 + 24);
      OUTLINED_FUNCTION_163_6();
      sub_1B964C290();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_Reminder.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_112();
  v7 = type metadata accessor for Searchfoundation_Date(v6);
  v8 = OUTLINED_FUNCTION_171_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_106_8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_137();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E38, &qword_1B96CD870);
  OUTLINED_FUNCTION_163_4(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_88();
  v19 = *v1;
  v20 = v1[1];
  OUTLINED_FUNCTION_428();
  v23 = v23 && v21 == v22;
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_16;
  }

  v40 = type metadata accessor for Searchfoundation_Reminder(0);
  v24 = *(v40 + 28);
  v25 = *(v5 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_75_9();
  if (!v23)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v25);
    if (!v26)
    {
      OUTLINED_FUNCTION_25_18();
      OUTLINED_FUNCTION_1275();
      if (*v4 == *v3)
      {
        v30 = *(v0 + 20);
        v31 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v32, v33);
        OUTLINED_FUNCTION_198_0();
        OUTLINED_FUNCTION_991();
        sub_1B944B0D4();
        OUTLINED_FUNCTION_531_0();
        sub_1B944B0D4();
        sub_1B8D9207C(v2, &qword_1EBAB8E30, &qword_1B964D630);
        if ((v31 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_20;
      }

      OUTLINED_FUNCTION_636_0();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_1165();
      v27 = &qword_1EBAB8E30;
      v28 = &qword_1B964D630;
LABEL_15:
      sub_1B8D9207C(v2, v27, v28);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_73_9();
    sub_1B944B0D4();
LABEL_14:
    v27 = &qword_1EBAB8E38;
    v28 = &qword_1B96CD870;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_37_0(v2 + v25);
  if (!v23)
  {
    goto LABEL_14;
  }

  sub_1B8D9207C(v2, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_20:
  OUTLINED_FUNCTION_1235();
  v36 = v23 && v34 == v35;
  if (v36 || (sub_1B964C9F0() & 1) != 0)
  {
    v37 = *(v40 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_84();
    sub_1B8CD3068(v38, v39);
    v29 = OUTLINED_FUNCTION_199_0();
    goto LABEL_17;
  }

LABEL_16:
  v29 = 0;
LABEL_17:
  OUTLINED_FUNCTION_264(v29);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B940631C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC88, type metadata accessor for Searchfoundation_Reminder);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B940639C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCA38, type metadata accessor for Searchfoundation_Reminder);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B940640C()
{
  sub_1B8CD3068(&qword_1EBACCA38, type metadata accessor for Searchfoundation_Reminder);

  return sub_1B964C5D0();
}

uint64_t sub_1B9406508()
{
  v0 = *(type metadata accessor for Searchfoundation_CreateCalendarEventCommand(0) + 20);
  type metadata accessor for Searchfoundation_CalendarEvent(0);
  sub_1B8CD3068(&qword_1EBACCA28, type metadata accessor for Searchfoundation_CalendarEvent);
  return sub_1B964C580();
}

void Searchfoundation_CreateCalendarEventCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_211_4(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_227();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_156();
  v12 = type metadata accessor for Searchfoundation_CalendarEvent(v11);
  v13 = OUTLINED_FUNCTION_163_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = OUTLINED_FUNCTION_87_6();
  CalendarEventCommand = type metadata accessor for Searchfoundation_CreateCalendarEventCommand(v16);
  OUTLINED_FUNCTION_517_1(CalendarEventCommand);
  OUTLINED_FUNCTION_179_5();
  if (v18)
  {
    sub_1B8D9207C(v1, &qword_1EBACC638, &qword_1B96B99B0);
LABEL_5:
    OUTLINED_FUNCTION_649_1();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_867_0();
  sub_1B944B02C();
  sub_1B8CD3068(&qword_1EBACCA28, type metadata accessor for Searchfoundation_CalendarEvent);
  OUTLINED_FUNCTION_128_8();
  OUTLINED_FUNCTION_491_1();
  sub_1B944B0D4();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9406790(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC80, type metadata accessor for Searchfoundation_CreateCalendarEventCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9406810(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD618, type metadata accessor for Searchfoundation_CreateCalendarEventCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9406880()
{
  sub_1B8CD3068(&qword_1EBACD618, type metadata accessor for Searchfoundation_CreateCalendarEventCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B940697C()
{
  v0 = *(type metadata accessor for Searchfoundation_CreateReminderCommand(0) + 20);
  type metadata accessor for Searchfoundation_Reminder(0);
  sub_1B8CD3068(&qword_1EBACCA38, type metadata accessor for Searchfoundation_Reminder);
  return sub_1B964C580();
}

void Searchfoundation_CreateReminderCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_211_4(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_227();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_156();
  v12 = type metadata accessor for Searchfoundation_Reminder(v11);
  v13 = OUTLINED_FUNCTION_163_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = OUTLINED_FUNCTION_87_6();
  ReminderCommand = type metadata accessor for Searchfoundation_CreateReminderCommand(v16);
  OUTLINED_FUNCTION_517_1(ReminderCommand);
  OUTLINED_FUNCTION_179_5();
  if (v18)
  {
    sub_1B8D9207C(v1, &qword_1EBACC648, &qword_1B96B99C0);
LABEL_5:
    OUTLINED_FUNCTION_649_1();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_90_6();
  OUTLINED_FUNCTION_867_0();
  sub_1B944B02C();
  sub_1B8CD3068(&qword_1EBACCA38, type metadata accessor for Searchfoundation_Reminder);
  OUTLINED_FUNCTION_128_8();
  OUTLINED_FUNCTION_490_2();
  sub_1B944B0D4();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9406C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC78, type metadata accessor for Searchfoundation_CreateReminderCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9406C84(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD630, type metadata accessor for Searchfoundation_CreateReminderCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9406CF4()
{
  sub_1B8CD3068(&qword_1EBACD630, type metadata accessor for Searchfoundation_CreateReminderCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9406D80()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBC78);
  __swift_project_value_buffer(v0, qword_1EBACBC78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B96511B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "mediaName";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mediaType";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "artistName";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "albumName";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "mediaPunchouts";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "bundleIdentifiersToExclude";
  *(v17 + 1) = 26;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "disambiguationTitle";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "mediaIdentifier";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Searchfoundation_MediaMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
      case 7:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B94071A8();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B9407210();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9407210()
{
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t Searchfoundation_MediaMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_107_5(), result = sub_1B964C700(), !v0))
  {
    if (!*(v1 + 16) || (v4 = *(v1 + 24), OUTLINED_FUNCTION_94_4(), v5 = sub_1B944C774(), OUTLINED_FUNCTION_703_0(v5, v6, &type metadata for Searchfoundation_MediaItemType, v5, v7, v8, v9, v10, v26), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
    {
      v11 = *(v1 + 32);
      v12 = *(v1 + 40);
      OUTLINED_FUNCTION_1();
      if (!v13 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        v14 = *(v1 + 48);
        v15 = *(v1 + 56);
        OUTLINED_FUNCTION_1();
        if (!v16 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
        {
          if (!*(*(v1 + 64) + 16) || (type metadata accessor for Searchfoundation_Punchout(), OUTLINED_FUNCTION_71_9(), sub_1B8CD3068(v17, v18), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
          {
            if (!*(*(v1 + 72) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
            {
              v19 = *(v1 + 80);
              v20 = *(v1 + 88);
              OUTLINED_FUNCTION_1();
              if (!v21 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
              {
                v22 = *(v1 + 96);
                v23 = *(v1 + 104);
                OUTLINED_FUNCTION_1();
                if (!v24 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
                {
                  v25 = *(type metadata accessor for Searchfoundation_MediaMetadata(0) + 48);
                  OUTLINED_FUNCTION_163_6();
                  return sub_1B964C290();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_MediaMetadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (!sub_1B8D58264(*(v3 + 16), *(v3 + 24), *(v2 + 16), *(v2 + 24)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  OUTLINED_FUNCTION_850();
  v14 = v6 && v12 == v13;
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v3 + 64);
  v16 = *(v2 + 64);
  sub_1B8D67B1C();
  if ((v17 & 1) == 0 || (sub_1B8D6123C(*(v3 + 72), *(v2 + 72)) & 1) == 0)
  {
    return 0;
  }

  v18 = *(v3 + 80) == *(v2 + 80) && *(v3 + 88) == *(v2 + 88);
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v19 = *(v3 + 96) == *(v2 + 96) && *(v3 + 104) == *(v2 + 104);
  if (!v19 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v20 = *(type metadata accessor for Searchfoundation_MediaMetadata(0) + 48);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v21, v22);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9407628(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC70, type metadata accessor for Searchfoundation_MediaMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94076A8(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCA60, type metadata accessor for Searchfoundation_MediaMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9407718()
{
  sub_1B8CD3068(&qword_1EBACCA60, type metadata accessor for Searchfoundation_MediaMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B94077A4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBC90);
  __swift_project_value_buffer(v0, qword_1EBACBC90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mediaMetadata";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "playbackLocation";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "shouldPause";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "audioData";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9407A40()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaMetadata;
  v2 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__playbackLocation;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldPause) = 0;
  v4 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__audioData;
  v5 = type metadata accessor for Searchfoundation_AudioData();
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  return v0;
}

uint64_t sub_1B9407AD4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC698, &qword_1B96B9A08);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaMetadata;
  v8 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = v1 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__playbackLocation;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldPause;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldPause) = 0;
  v11 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__audioData;
  v12 = type metadata accessor for Searchfoundation_AudioData();
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v13 = (a1 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__playbackLocation);
  swift_beginAccess();
  v14 = *v13;
  LOBYTE(v13) = *(v13 + 8);
  swift_beginAccess();
  *v9 = v14;
  *(v9 + 8) = v13;
  v15 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldPause;
  swift_beginAccess();
  LOBYTE(v15) = *(a1 + v15);
  swift_beginAccess();
  *(v1 + v10) = v15;
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B9407D80()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaMetadata, &qword_1EBACC5E8, &qword_1B96B9958);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__audioData, &qword_1EBACC698, &qword_1B96B9A08);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B9407E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B9407F94();
        break;
      case 2:
        sub_1B9441F68(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__playbackLocation, sub_1B94632B4);
        break;
      case 3:
        sub_1B9442234();
        break;
      case 4:
        sub_1B9408070();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9407F94()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MediaMetadata(0);
  sub_1B8CD3068(&qword_1EBACCA60, type metadata accessor for Searchfoundation_MediaMetadata);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9408070()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_AudioData();
  sub_1B8CD3068(&qword_1EBACB260, type metadata accessor for Searchfoundation_AudioData);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B940817C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC698, &qword_1B96B9A08);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v23 = &v22 - v8;
  v24 = type metadata accessor for Searchfoundation_AudioData();
  v9 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v22 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1B8D9207C(v14, &qword_1EBACC5E8, &qword_1B96B9958);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACCA60, type metadata accessor for Searchfoundation_MediaMetadata);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v4)
    {
      return result;
    }
  }

  v18 = (a1 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__playbackLocation);
  swift_beginAccess();
  if (!*v18 || (v19 = *(v18 + 8), v26 = *v18, v27 = v19, sub_1B94632B4(), result = sub_1B964C680(), !v4))
  {
    v20 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldPause;
    swift_beginAccess();
    if (*(a1 + v20) != 1 || (result = sub_1B964C670(), !v4))
    {
      swift_beginAccess();
      v21 = v23;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v21, 1, v24) == 1)
      {
        return sub_1B8D9207C(v21, &qword_1EBACC698, &qword_1B96B9A08);
      }

      else
      {
        sub_1B944B02C();
        sub_1B8CD3068(&qword_1EBACB260, type metadata accessor for Searchfoundation_AudioData);
        sub_1B964C740();
        return sub_1B944B0D4();
      }
    }
  }

  return result;
}

BOOL sub_1B94085DC(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v51 = type metadata accessor for Searchfoundation_AudioData();
  v3 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE7C0, &qword_1B96CA748);
  v5 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC698, &qword_1B96B9A08);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v46 - v11;
  v12 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v53 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5F0, &unk_1B96B9960);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = (&v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v46 - v25;
  swift_beginAccess();
  v27 = v54;
  sub_1B8D92024();
  swift_beginAccess();
  v28 = *(v16 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v12) == 1)
  {

    sub_1B8D9207C(v26, &qword_1EBACC5E8, &qword_1B96B9958);
    if (__swift_getEnumTagSinglePayload(&v19[v28], 1, v12) == 1)
    {
      sub_1B8D9207C(v19, &qword_1EBACC5E8, &qword_1B96B9958);
LABEL_8:
      v31 = a1 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__playbackLocation;
      swift_beginAccess();
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = v27 + OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__playbackLocation;
      swift_beginAccess();
      v35 = *(v34 + 8);
      if (!sub_1B8D92198(v32, v33, *v34))
      {
        goto LABEL_10;
      }

      v36 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldPause;
      swift_beginAccess();
      LODWORD(v36) = *(a1 + v36);
      v37 = OBJC_IVAR____TtCV10PegasusAPI33Searchfoundation_PlayMediaCommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__shouldPause;
      swift_beginAccess();
      if (v36 != *(v27 + v37))
      {
        goto LABEL_10;
      }

      swift_beginAccess();
      v39 = v50;
      sub_1B8D92024();
      swift_beginAccess();
      v40 = *(v49 + 48);
      v41 = v52;
      sub_1B8D92024();
      sub_1B8D92024();
      v42 = v51;
      if (__swift_getEnumTagSinglePayload(v41, 1, v51) == 1)
      {

        sub_1B8D9207C(v39, &qword_1EBACC698, &qword_1B96B9A08);
        if (__swift_getEnumTagSinglePayload(v41 + v40, 1, v42) == 1)
        {
          sub_1B8D9207C(v41, &qword_1EBACC698, &qword_1B96B9A08);
          return 1;
        }
      }

      else
      {
        v43 = v48;
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v41 + v40, 1, v42) != 1)
        {
          v44 = v47;
          sub_1B944B02C();
          v45 = static Searchfoundation_AudioData.== infix(_:_:)(v43, v44);

          sub_1B944B0D4();
          sub_1B8D9207C(v39, &qword_1EBACC698, &qword_1B96B9A08);
          sub_1B944B0D4();
          sub_1B8D9207C(v41, &qword_1EBACC698, &qword_1B96B9A08);
          return (v45 & 1) != 0;
        }

        sub_1B8D9207C(v39, &qword_1EBACC698, &qword_1B96B9A08);
        sub_1B944B0D4();
      }

      sub_1B8D9207C(v41, &qword_1EBACE7C0, &qword_1B96CA748);
      return 0;
    }

    goto LABEL_6;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(&v19[v28], 1, v12) == 1)
  {

    sub_1B8D9207C(v26, &qword_1EBACC5E8, &qword_1B96B9958);
    sub_1B944B0D4();
LABEL_6:
    sub_1B8D9207C(v19, &qword_1EBACC5F0, &unk_1B96B9960);
    goto LABEL_10;
  }

  v29 = v53;
  sub_1B944B02C();

  v30 = static Searchfoundation_MediaMetadata.== infix(_:_:)(v24, v29);
  sub_1B944B0D4();
  sub_1B8D9207C(v26, &qword_1EBACC5E8, &qword_1B96B9958);
  sub_1B944B0D4();
  sub_1B8D9207C(v19, &qword_1EBACC5E8, &qword_1B96B9958);
  if (v30)
  {
    goto LABEL_8;
  }

LABEL_10:

  return 0;
}

uint64_t sub_1B9408E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC68, type metadata accessor for Searchfoundation_PlayMediaCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9408EE0(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD658, type metadata accessor for Searchfoundation_PlayMediaCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9408F50()
{
  sub_1B8CD3068(&qword_1EBACD658, type metadata accessor for Searchfoundation_PlayMediaCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9408FDC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBCB0);
  __swift_project_value_buffer(v0, qword_1EBACBCB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "mediaMetadata";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientSelectedBundleIdentifier";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B94091F4()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_1_0();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      v4 = OUTLINED_FUNCTION_691_1();
      v0(v4);
    }
  }

  return result;
}

uint64_t sub_1B9409268()
{
  v0 = *(type metadata accessor for Searchfoundation_OpenMediaCommand(0) + 24);
  type metadata accessor for Searchfoundation_MediaMetadata(0);
  sub_1B8CD3068(&qword_1EBACCA60, type metadata accessor for Searchfoundation_MediaMetadata);
  return sub_1B964C580();
}

void Searchfoundation_OpenMediaCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_151();
  v10 = type metadata accessor for Searchfoundation_MediaMetadata(v9);
  v11 = OUTLINED_FUNCTION_171_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_165_5();
  v14 = type metadata accessor for Searchfoundation_OpenMediaCommand(0);
  OUTLINED_FUNCTION_285_1(*(v14 + 24));
  OUTLINED_FUNCTION_319_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v15)
  {
    sub_1B8D9207C(v2, &qword_1EBACC5E8, &qword_1B96B9958);
  }

  else
  {
    OUTLINED_FUNCTION_26_21();
    OUTLINED_FUNCTION_1278();
    sub_1B8CD3068(&qword_1EBACCA60, type metadata accessor for Searchfoundation_MediaMetadata);
    OUTLINED_FUNCTION_97_2();
    OUTLINED_FUNCTION_80_6();
    sub_1B964C740();
    OUTLINED_FUNCTION_496_0();
    sub_1B944B0D4();
    if (v0)
    {
      goto LABEL_8;
    }
  }

  v16 = *v1;
  v17 = v1[1];
  OUTLINED_FUNCTION_1();
  if (!v18 || (OUTLINED_FUNCTION_80_6(), sub_1B964C700(), !v0))
  {
    v19 = v1 + *(v14 + 20);
    OUTLINED_FUNCTION_186();
    sub_1B964C290();
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9409570(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC60, type metadata accessor for Searchfoundation_OpenMediaCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94095F0(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD670, type metadata accessor for Searchfoundation_OpenMediaCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9409660()
{
  sub_1B8CD3068(&qword_1EBACD670, type metadata accessor for Searchfoundation_OpenMediaCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B94096EC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBCC8);
  __swift_project_value_buffer(v0, qword_1EBACBCC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "mediaMetadata";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "fallbackCardSection";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9409B3C()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ListenToCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ListenToCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaMetadata;
  v4 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ListenToCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__fallbackCardSection;
  v6 = type metadata accessor for Searchfoundation_CardSection(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  return v0;
}

uint64_t sub_1B9409BF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6B0, &unk_1B96B9A10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = &v31 - v11;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v32 = (v1 + 64);
  v33 = (v1 + 80);
  *(v1 + 88) = 1;
  v12 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ListenToCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v34 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ListenToCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v13 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ListenToCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaMetadata;
  v35 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ListenToCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaMetadata;
  v15 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ListenToCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__fallbackCardSection;
  v37 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ListenToCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__fallbackCardSection;
  v17 = type metadata accessor for Searchfoundation_CardSection(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  swift_beginAccess();
  v18 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v18;
  swift_beginAccess();
  v20 = *(a1 + 24);
  v19 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v20;
  *(v1 + 32) = v19;

  swift_beginAccess();
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  swift_beginAccess();
  v23 = *(v1 + 48);
  *(v1 + 40) = v22;
  *(v1 + 48) = v21;

  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v21;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v21;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v21;
  swift_beginAccess();
  v25 = *(a1 + 64);
  v24 = *(a1 + 72);
  v26 = v32;
  swift_beginAccess();
  v27 = *(v1 + 72);
  *v26 = v25;
  *(v1 + 72) = v24;

  swift_beginAccess();
  v28 = *(a1 + 80);
  LOBYTE(v27) = *(a1 + 88);
  v29 = v33;
  swift_beginAccess();
  *v29 = v28;
  *(v1 + 88) = v27;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B940A150()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ListenToCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ListenToCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaMetadata, &qword_1EBACC5E8, &qword_1B96B9958);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ListenToCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__fallbackCardSection, &qword_1EBACC6B0, &unk_1B96B9A10);
  return v0;
}

void sub_1B940A258()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1B944724C();
        break;
      case 2:
        sub_1B94472E0();
        break;
      case 3:
        sub_1B9447330();
        break;
      case 4:
        sub_1B9447380();
        break;
      case 5:
        sub_1B94473D0();
        break;
      case 6:
        sub_1B9447420();
        break;
      case 7:
        sub_1B9447470();
        break;
      case 8:
        sub_1B94474C0();
        break;
      case 9:
        sub_1B940A40C();
        break;
      default:
        if (v1 == 51)
        {
          sub_1B940A4E8();
        }

        else if (v1 == 52)
        {
          sub_1B940A5C4();
        }

        break;
    }
  }
}

uint64_t sub_1B940A40C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B940A4E8()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MediaMetadata(0);
  sub_1B8CD3068(&qword_1EBACCA60, type metadata accessor for Searchfoundation_MediaMetadata);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B940A5C4()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CardSection(0);
  sub_1B8CD3068(&qword_1ED9D2F68, type metadata accessor for Searchfoundation_CardSection);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B940A6D0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6B0, &unk_1B96B9A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for Searchfoundation_CardSection(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v43 = &v39 - v14;
  v44 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  v15 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v45 = &v39 - v19;
  v46 = type metadata accessor for Searchfoundation_Color(0);
  v20 = *(*(v46 - 1) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v42 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v49 = a1;
  if (*(*(a1 + 16) + 16))
  {
    v40 = v7;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v1)
    {
    }

    v7 = v40;
  }

  v22 = v49;
  swift_beginAccess();
  v23 = *(v22 + 24);
  v24 = *(v22 + 32);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v27 = v49;
  swift_beginAccess();
  v28 = *(v27 + 40);
  v29 = *(v27 + 48);
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30 || (, sub_1B964C700(), result = , !v2))
  {
    v31 = v49;
    swift_beginAccess();
    if (*(v31 + 56) != 1 || (result = sub_1B964C670(), !v2))
    {
      swift_beginAccess();
      if (*(v31 + 57) != 1 || (result = sub_1B964C670(), !v2))
      {
        swift_beginAccess();
        if (*(v31 + 58) != 1 || (result = sub_1B964C670(), !v2))
        {
          swift_beginAccess();
          v32 = *(v31 + 64);
          v33 = *(v31 + 72);
          v34 = HIBYTE(v33) & 0xF;
          if ((v33 & 0x2000000000000000) == 0)
          {
            v34 = v32 & 0xFFFFFFFFFFFFLL;
          }

          if (!v34 || (, sub_1B964C700(), result = , !v2))
          {
            v35 = v49;
            swift_beginAccess();
            if (!*(v35 + 80) || (v36 = *(v35 + 88), v47 = *(v35 + 80), v48 = v36, sub_1B92C8A2C(), result = sub_1B964C680(), !v2))
            {
              v40 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_ListenToCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
              swift_beginAccess();
              v37 = v45;
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v37, 1, v46) == 1)
              {
                v46 = v11;
                sub_1B8D9207C(v37, &qword_1EBACB050, &unk_1B96B7BD0);
              }

              else
              {
                sub_1B944B02C();
                sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
                sub_1B964C740();
                result = sub_1B944B0D4();
                if (v2)
                {
                  return result;
                }

                v46 = v11;
              }

              swift_beginAccess();
              v38 = v43;
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v38, 1, v44) == 1)
              {
                sub_1B8D9207C(v38, &qword_1EBACC5E8, &qword_1B96B9958);
              }

              else
              {
                sub_1B944B02C();
                sub_1B8CD3068(&qword_1EBACCA60, type metadata accessor for Searchfoundation_MediaMetadata);
                sub_1B964C740();
                result = sub_1B944B0D4();
                if (v2)
                {
                  return result;
                }
              }

              swift_beginAccess();
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
              {
                return sub_1B8D9207C(v7, &qword_1EBACC6B0, &unk_1B96B9A10);
              }

              else
              {
                sub_1B944B02C();
                sub_1B8CD3068(&qword_1ED9D2F68, type metadata accessor for Searchfoundation_CardSection);
                sub_1B964C740();
                return sub_1B944B0D4();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B940AF90(uint64_t a1, uint64_t a2)
{
  v96 = type metadata accessor for Searchfoundation_CardSection(0);
  v4 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v92 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDFC0, &qword_1B96CA180);
  v6 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v91 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6B0, &unk_1B96B9A10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v91 - v12;
  v101 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  v13 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v94 = (&v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5F0, &unk_1B96B9960);
  v15 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v91 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v98 = (&v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v91 - v21;
  v22 = type metadata accessor for Searchfoundation_Color(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v99 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v105 = &v91 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v91 - v33;
  swift_beginAccess();
  v35 = *(a1 + 16);
  swift_beginAccess();
  v36 = *(a2 + 16);

  sub_1B8D67B1C();
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v40 = *(a1 + 24);
  v39 = *(a1 + 32);
  swift_beginAccess();
  v41 = v40 == *(a2 + 24) && v39 == *(a2 + 32);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v42 = *(a1 + 40);
  v43 = *(a1 + 48);
  swift_beginAccess();
  v44 = v42 == *(a2 + 40) && v43 == *(a2 + 48);
  if (!v44 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v45 = *(a1 + 56);
  swift_beginAccess();
  if (v45 != *(a2 + 56))
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v46 = *(a1 + 57);
  swift_beginAccess();
  if (v46 != *(a2 + 57))
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v47 = *(a1 + 58);
  swift_beginAccess();
  if (v47 != *(a2 + 58))
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v48 = *(a1 + 64);
  v49 = *(a1 + 72);
  swift_beginAccess();
  v50 = v48 == *(a2 + 64) && v49 == *(a2 + 72);
  if (!v50 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v51 = *(a1 + 80);
  v52 = *(a1 + 88);
  swift_beginAccess();
  v53 = *(a2 + 88);
  if (!sub_1B8D92198(v51, v52, *(a2 + 80)))
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v54 = *(v25 + 48);
  v55 = v105;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v55, 1, v22) == 1)
  {
    sub_1B8D9207C(v34, &qword_1EBACB050, &unk_1B96B7BD0);
    if (__swift_getEnumTagSinglePayload(v55 + v54, 1, v22) == 1)
    {
      sub_1B8D9207C(v55, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_30;
    }

LABEL_26:
    v56 = &qword_1EBACB058;
    v57 = &unk_1B96CA9D0;
    v58 = v55;
LABEL_41:
    sub_1B8D9207C(v58, v56, v57);
    goto LABEL_42;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v55 + v54, 1, v22) == 1)
  {
    sub_1B8D9207C(v34, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B944B0D4();
    goto LABEL_26;
  }

  v59 = v99;
  sub_1B944B02C();
  v60 = *(v22 + 20);
  if (*&v32[v60] != *&v59[v60])
  {
    v61 = *&v32[v60];

    sub_1B947FDE4();
    v63 = v62;

    if ((v63 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v34, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B944B0D4();
      v58 = v55;
      v56 = &qword_1EBACB050;
      v57 = &unk_1B96B7BD0;
      goto LABEL_41;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v64 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v34, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B944B0D4();
  sub_1B8D9207C(v55, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v64 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_30:
  swift_beginAccess();
  v65 = v104;
  sub_1B8D92024();
  swift_beginAccess();
  v66 = *(v100 + 48);
  v67 = v102;
  sub_1B8D92024();
  sub_1B8D92024();
  v68 = v101;
  if (__swift_getEnumTagSinglePayload(v67, 1, v101) != 1)
  {
    v71 = v98;
    sub_1B8D92024();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67 + v66, 1, v68);
    v70 = v103;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v104, &qword_1EBACC5E8, &qword_1B96B9958);
      sub_1B944B0D4();
      goto LABEL_35;
    }

    v73 = v94;
    sub_1B944B02C();
    v74 = static Searchfoundation_MediaMetadata.== infix(_:_:)(v71, v73);
    sub_1B944B0D4();
    sub_1B8D9207C(v104, &qword_1EBACC5E8, &qword_1B96B9958);
    sub_1B944B0D4();
    sub_1B8D9207C(v67, &qword_1EBACC5E8, &qword_1B96B9958);
    if (v74)
    {
      goto LABEL_37;
    }

LABEL_42:

    return 0;
  }

  sub_1B8D9207C(v65, &qword_1EBACC5E8, &qword_1B96B9958);
  v69 = __swift_getEnumTagSinglePayload(v67 + v66, 1, v68);
  v70 = v103;
  if (v69 != 1)
  {
LABEL_35:
    v56 = &qword_1EBACC5F0;
    v57 = &unk_1B96B9960;
    v58 = v67;
    goto LABEL_41;
  }

  sub_1B8D9207C(v67, &qword_1EBACC5E8, &qword_1B96B9958);
LABEL_37:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v75 = *(v95 + 48);
  v76 = v97;
  sub_1B8D92024();
  v77 = v76;
  sub_1B8D92024();
  v78 = v96;
  if (__swift_getEnumTagSinglePayload(v76, 1, v96) == 1)
  {

    sub_1B8D9207C(v70, &qword_1EBACC6B0, &unk_1B96B9A10);
    if (__swift_getEnumTagSinglePayload(v76 + v75, 1, v78) == 1)
    {
      sub_1B8D9207C(v76, &qword_1EBACC6B0, &unk_1B96B9A10);
      return 1;
    }

    goto LABEL_47;
  }

  v80 = v93;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v77 + v75, 1, v78) == 1)
  {

    sub_1B8D9207C(v70, &qword_1EBACC6B0, &unk_1B96B9A10);
    sub_1B944B0D4();
LABEL_47:
    v81 = &qword_1EBACDFC0;
    v82 = &qword_1B96CA180;
    v83 = v77;
LABEL_48:
    sub_1B8D9207C(v83, v81, v82);
    return 0;
  }

  v84 = v92;
  sub_1B944B02C();
  v85 = *(v78 + 20);
  v86 = *&v80[v85];
  v87 = *&v84[v85];
  if (v86 != v87)
  {
    v88 = *&v80[v85];

    v89 = sub_1B9376F2C(v86, v87);

    if ((v89 & 1) == 0)
    {

      sub_1B944B0D4();
      sub_1B8D9207C(v70, &qword_1EBACC6B0, &unk_1B96B9A10);
      sub_1B944B0D4();
      v83 = v77;
      v81 = &qword_1EBACC6B0;
      v82 = &unk_1B96B9A10;
      goto LABEL_48;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v90 = sub_1B964C850();

  sub_1B944B0D4();
  sub_1B8D9207C(v70, &qword_1EBACC6B0, &unk_1B96B9A10);
  sub_1B944B0D4();
  sub_1B8D9207C(v77, &qword_1EBACC6B0, &unk_1B96B9A10);
  return (v90 & 1) != 0;
}

uint64_t sub_1B940BE94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC58, type metadata accessor for Searchfoundation_ListenToCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B940BF14(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD688, type metadata accessor for Searchfoundation_ListenToCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B940BF84()
{
  sub_1B8CD3068(&qword_1EBACD688, type metadata accessor for Searchfoundation_ListenToCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B940C010()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBCE8);
  __swift_project_value_buffer(v0, qword_1EBACBCE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "sectionTitle";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "watchListItem";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B940C460()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__sectionTitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchListItem;
  v5 = type metadata accessor for Searchfoundation_WatchListItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  return v0;
}

uint64_t sub_1B940C510(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5D8, &qword_1B96B9948);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v32 - v8;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  v33 = (v1 + 64);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v34 = (v1 + 80);
  *(v1 + 88) = 1;
  v9 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v35 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v10 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__sectionTitle);
  v36 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__sectionTitle);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchListItem;
  v38 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchListItem;
  v13 = type metadata accessor for Searchfoundation_WatchListItem(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  swift_beginAccess();
  v14 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v14;
  swift_beginAccess();
  v16 = *(a1 + 24);
  v15 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v16;
  *(v1 + 32) = v15;

  swift_beginAccess();
  v18 = *(a1 + 40);
  v17 = *(a1 + 48);
  swift_beginAccess();
  v19 = *(v1 + 48);
  *(v1 + 40) = v18;
  *(v1 + 48) = v17;

  swift_beginAccess();
  LOBYTE(v17) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v17;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v17;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v17;
  swift_beginAccess();
  v21 = *(a1 + 64);
  v20 = *(a1 + 72);
  v22 = v33;
  swift_beginAccess();
  v23 = *(v1 + 72);
  *v22 = v21;
  *(v1 + 72) = v20;

  swift_beginAccess();
  v24 = *(a1 + 80);
  LOBYTE(v23) = *(a1 + 88);
  v25 = v34;
  swift_beginAccess();
  *v25 = v24;
  *(v1 + 88) = v23;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v26 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__sectionTitle);
  swift_beginAccess();
  v28 = *v26;
  v27 = v26[1];
  v29 = v36;
  swift_beginAccess();
  v30 = v29[1];
  *v29 = v28;
  v29[1] = v27;

  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B940C9E4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__sectionTitle + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchListItem, &qword_1EBACC5D8, &qword_1B96B9948);
  return v0;
}

void sub_1B940CAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B944724C();
        break;
      case 2:
        sub_1B94472E0();
        break;
      case 3:
        sub_1B9447330();
        break;
      case 4:
        sub_1B9447380();
        break;
      case 5:
        sub_1B94473D0();
        break;
      case 6:
        sub_1B9447420();
        break;
      case 7:
        sub_1B9447470();
        break;
      case 8:
        sub_1B94474C0();
        break;
      case 9:
        sub_1B940CCBC();
        break;
      default:
        if (v9 == 51)
        {
          sub_1B94420D8(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__sectionTitle, MEMORY[0x1E69AACE0]);
        }

        else if (v9 == 52)
        {
          sub_1B940CD98();
        }

        break;
    }
  }
}

uint64_t sub_1B940CCBC()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B940CD98()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_WatchListItem(0);
  sub_1B8CD3068(&qword_1EBACC968, type metadata accessor for Searchfoundation_WatchListItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B940CEA4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5D8, &qword_1B96B9948);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v35 - v6;
  v8 = type metadata accessor for Searchfoundation_WatchListItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v36 = v35 - v12;
  v37 = type metadata accessor for Searchfoundation_Color(0);
  v13 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v35[1] = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v40 = a1;
  if (*(*(a1 + 16) + 16))
  {
    v35[0] = v7;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v1)
    {
    }

    v7 = v35[0];
  }

  v15 = v40;
  swift_beginAccess();
  v16 = *(v15 + 24);
  v17 = *(v15 + 32);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v20 = v40;
  swift_beginAccess();
  v21 = *(v20 + 40);
  v22 = *(v20 + 48);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23 || (, sub_1B964C700(), result = , !v2))
  {
    v24 = v40;
    swift_beginAccess();
    if (*(v24 + 56) != 1 || (result = sub_1B964C670(), !v2))
    {
      swift_beginAccess();
      if (*(v24 + 57) != 1 || (result = sub_1B964C670(), !v2))
      {
        swift_beginAccess();
        if (*(v24 + 58) != 1 || (result = sub_1B964C670(), !v2))
        {
          swift_beginAccess();
          v25 = *(v24 + 64);
          v26 = *(v24 + 72);
          v27 = HIBYTE(v26) & 0xF;
          if ((v26 & 0x2000000000000000) == 0)
          {
            v27 = v25 & 0xFFFFFFFFFFFFLL;
          }

          if (!v27 || (, sub_1B964C700(), result = , !v2))
          {
            v28 = v40;
            swift_beginAccess();
            if (!*(v28 + 80) || (v29 = *(v28 + 88), v38 = *(v28 + 80), v39 = v29, sub_1B92C8A2C(), result = sub_1B964C680(), !v2))
            {
              v35[0] = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
              swift_beginAccess();
              v30 = v36;
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v30, 1, v37) == 1)
              {
                sub_1B8D9207C(v30, &qword_1EBACB050, &unk_1B96B7BD0);
              }

              else
              {
                sub_1B944B02C();
                sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
                sub_1B964C740();
                result = sub_1B944B0D4();
                if (v2)
                {
                  return result;
                }
              }

              v31 = (v40 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__sectionTitle);
              swift_beginAccess();
              v32 = *v31;
              v33 = v31[1];
              v34 = HIBYTE(v33) & 0xF;
              if ((v33 & 0x2000000000000000) == 0)
              {
                v34 = v32 & 0xFFFFFFFFFFFFLL;
              }

              if (!v34 || (, sub_1B964C700(), result = , !v2))
              {
                v37 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchListItem;
                swift_beginAccess();
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
                {
                  return sub_1B8D9207C(v7, &qword_1EBACC5D8, &qword_1B96B9948);
                }

                else
                {
                  sub_1B944B02C();
                  sub_1B8CD3068(&qword_1EBACC968, type metadata accessor for Searchfoundation_WatchListItem);
                  sub_1B964C740();
                  return sub_1B944B0D4();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B940D614(uint64_t a1, uint64_t a2)
{
  v71 = type metadata accessor for Searchfoundation_WatchListItem(0);
  v4 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v67[1] = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E0, &qword_1B96B9950);
  v6 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v72 = v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5D8, &qword_1B96B9948);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v67[2] = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = v67 - v12;
  v13 = type metadata accessor for Searchfoundation_Color(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v68 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v73 = v67 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v67 - v24;
  swift_beginAccess();
  v26 = *(a1 + 16);
  swift_beginAccess();
  v27 = *(a2 + 16);

  sub_1B8D67B1C();
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v31 = *(a1 + 24);
  v30 = *(a1 + 32);
  swift_beginAccess();
  v32 = v31 == *(a2 + 24) && v30 == *(a2 + 32);
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v33 = *(a1 + 40);
  v34 = *(a1 + 48);
  swift_beginAccess();
  v35 = v33 == *(a2 + 40) && v34 == *(a2 + 48);
  if (!v35 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v36 = *(a1 + 56);
  swift_beginAccess();
  if (v36 != *(a2 + 56))
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v37 = *(a1 + 57);
  swift_beginAccess();
  if (v37 != *(a2 + 57))
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v38 = *(a1 + 58);
  swift_beginAccess();
  if (v38 != *(a2 + 58))
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v39 = *(a1 + 64);
  v40 = *(a1 + 72);
  swift_beginAccess();
  v41 = v39 == *(a2 + 64) && v40 == *(a2 + 72);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v42 = *(a1 + 80);
  v43 = *(a1 + 88);
  swift_beginAccess();
  v44 = *(a2 + 88);
  if (!sub_1B8D92198(v42, v43, *(a2 + 80)))
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v45 = *(v16 + 48);
  v46 = v73;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v46, 1, v13) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
    if (__swift_getEnumTagSinglePayload(v46 + v45, 1, v13) == 1)
    {
      sub_1B8D9207C(v46, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_34;
    }

    goto LABEL_26;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v46 + v45, 1, v13) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B944B0D4();
LABEL_26:
    v47 = &qword_1EBACB058;
    v48 = &unk_1B96CA9D0;
    v49 = v46;
LABEL_27:
    sub_1B8D9207C(v49, v47, v48);
LABEL_28:

    return 0;
  }

  v51 = v68;
  sub_1B944B02C();
  v52 = *(v13 + 20);
  if (*&v23[v52] != *&v51[v52])
  {
    v53 = *&v23[v52];

    sub_1B947FDE4();
    v55 = v54;

    if ((v55 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B944B0D4();
      v49 = v46;
      v47 = &qword_1EBACB050;
      v48 = &unk_1B96B7BD0;
      goto LABEL_27;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v56 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B944B0D4();
  sub_1B8D9207C(v46, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_34:
  v57 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__sectionTitle);
  swift_beginAccess();
  v58 = *v57;
  v59 = v57[1];
  v60 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchNowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__sectionTitle);
  swift_beginAccess();
  v61 = v58 == *v60 && v59 == v60[1];
  if (!v61 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v62 = v70;
  sub_1B8D92024();
  swift_beginAccess();
  v63 = *(v69 + 48);
  v64 = v72;
  sub_1B8D92024();
  sub_1B8D92024();
  v65 = v71;
  if (__swift_getEnumTagSinglePayload(v64, 1, v71) == 1)
  {

    sub_1B8D9207C(v62, &qword_1EBACC5D8, &qword_1B96B9948);
    if (__swift_getEnumTagSinglePayload(v64 + v63, 1, v65) == 1)
    {
      sub_1B8D9207C(v64, &qword_1EBACC5D8, &qword_1B96B9948);
      return 1;
    }

    goto LABEL_44;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v64 + v63, 1, v65) == 1)
  {

    sub_1B8D9207C(v62, &qword_1EBACC5D8, &qword_1B96B9948);
    sub_1B944B0D4();
LABEL_44:
    sub_1B8D9207C(v64, &qword_1EBACC5E0, &qword_1B96B9950);
    return 0;
  }

  sub_1B944B02C();
  v66 = static Searchfoundation_WatchListItem.== infix(_:_:)();

  sub_1B944B0D4();
  sub_1B8D9207C(v62, &qword_1EBACC5D8, &qword_1B96B9948);
  sub_1B944B0D4();
  sub_1B8D9207C(v64, &qword_1EBACC5D8, &qword_1B96B9948);
  return (v66 & 1) != 0;
}

uint64_t sub_1B940E144(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC50, type metadata accessor for Searchfoundation_WatchNowCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B940E1C4(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD6A0, type metadata accessor for Searchfoundation_WatchNowCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B940E234()
{
  sub_1B8CD3068(&qword_1EBACD6A0, type metadata accessor for Searchfoundation_WatchNowCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B940E2CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBD08);
  __swift_project_value_buffer(v0, qword_1EBACBD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "textCopyItem";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "spotlightCopyItem";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "imageCopyItem";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "contactCopyItem";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "urlCopyItem";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_CopyItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B940E624(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_17_3();
        sub_1B940EB1C(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B940F014(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_17_3();
        sub_1B940F50C(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B940FA04(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B940E624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_TextCopyItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8ED8, &qword_1B964D6D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF98, &qword_1B96CA158);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8ED8, &qword_1B964D6D8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B944B0D4();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBACDF98, &qword_1B96CA158);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD3068(&qword_1EBACD6C8, type metadata accessor for Searchfoundation_TextCopyItem);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACDF98, &qword_1B96CA158);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACDF98, &qword_1B96CA158);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACDF98, &qword_1B96CA158);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACDF98, &qword_1B96CA158);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8ED8, &qword_1B964D6D8);
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B940EB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_CoreSpotlightCopyItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8ED8, &qword_1B964D6D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDFA0, &qword_1B96CA160);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8ED8, &qword_1B964D6D8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBACDFA0, &qword_1B96CA160);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD6E0, type metadata accessor for Searchfoundation_CoreSpotlightCopyItem);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACDFA0, &qword_1B96CA160);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACDFA0, &qword_1B96CA160);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACDFA0, &qword_1B96CA160);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACDFA0, &qword_1B96CA160);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8ED8, &qword_1B964D6D8);
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B940F014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_ImageCopyItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8ED8, &qword_1B964D6D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDFA8, &qword_1B96CA168);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8ED8, &qword_1B964D6D8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v22, &qword_1EBACDFA8, &qword_1B96CA168);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD6F8, type metadata accessor for Searchfoundation_ImageCopyItem);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACDFA8, &qword_1B96CA168);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACDFA8, &qword_1B96CA168);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACDFA8, &qword_1B96CA168);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACDFA8, &qword_1B96CA168);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8ED8, &qword_1B964D6D8);
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B940F50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_ContactCopyItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8ED8, &qword_1B964D6D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDFB0, &qword_1B96CA170);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8ED8, &qword_1B964D6D8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v22, &qword_1EBACDFB0, &qword_1B96CA170);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD710, type metadata accessor for Searchfoundation_ContactCopyItem);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACDFB0, &qword_1B96CA170);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACDFB0, &qword_1B96CA170);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACDFB0, &qword_1B96CA170);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACDFB0, &qword_1B96CA170);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8ED8, &qword_1B964D6D8);
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B940FA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_URLCopyItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8ED8, &qword_1B964D6D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDFB8, &qword_1B96CA178);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8ED8, &qword_1B964D6D8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v22, &qword_1EBACDFB8, &qword_1B96CA178);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD728, type metadata accessor for Searchfoundation_URLCopyItem);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACDFB8, &qword_1B96CA178);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACDFB8, &qword_1B96CA178);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACDFB8, &qword_1B96CA178);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACDFB8, &qword_1B96CA178);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8ED8, &qword_1B964D6D8);
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void Searchfoundation_CopyItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_605_1();
  OUTLINED_FUNCTION_243_3();
  v3 = OUTLINED_FUNCTION_190_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_176_1();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_90(v2);
  if (v9)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_686();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v26 = OUTLINED_FUNCTION_7_6();
      sub_1B9410240(v26, v27, v28, v29);
      break;
    case 2u:
      v18 = OUTLINED_FUNCTION_7_6();
      sub_1B9410454(v18, v19, v20, v21);
      break;
    case 3u:
      v22 = OUTLINED_FUNCTION_7_6();
      sub_1B9410668(v22, v23, v24, v25);
      break;
    case 4u:
      v14 = OUTLINED_FUNCTION_7_6();
      sub_1B941087C(v14, v15, v16, v17);
      break;
    default:
      v10 = OUTLINED_FUNCTION_7_6();
      sub_1B9410030(v10, v11, v12, v13);
      break;
  }

  OUTLINED_FUNCTION_192_7();
  sub_1B944B0D4();
  if (!v1)
  {
LABEL_9:
    v30 = v0 + *(type metadata accessor for Searchfoundation_CopyItem(0) + 20);
    OUTLINED_FUNCTION_12();
    sub_1B964C290();
  }

  OUTLINED_FUNCTION_492_1();
  OUTLINED_FUNCTION_606_1();
}

uint64_t sub_1B9410030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8ED8, &qword_1B964D6D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_TextCopyItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8ED8, &qword_1B964D6D8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD6C8, type metadata accessor for Searchfoundation_TextCopyItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9410240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8ED8, &qword_1B964D6D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_CoreSpotlightCopyItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8ED8, &qword_1B964D6D8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD6E0, type metadata accessor for Searchfoundation_CoreSpotlightCopyItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9410454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8ED8, &qword_1B964D6D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_ImageCopyItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8ED8, &qword_1B964D6D8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD6F8, type metadata accessor for Searchfoundation_ImageCopyItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9410668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8ED8, &qword_1B964D6D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_ContactCopyItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8ED8, &qword_1B964D6D8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD710, type metadata accessor for Searchfoundation_ContactCopyItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941087C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8ED8, &qword_1B964D6D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_URLCopyItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8ED8, &qword_1B964D6D8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD728, type metadata accessor for Searchfoundation_URLCopyItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

void static Searchfoundation_CopyItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(v1);
  v3 = OUTLINED_FUNCTION_201_5(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v6 = OUTLINED_FUNCTION_686();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EE0, &unk_1B964D6E0);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_50(v0 + v17);
    if (v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
LABEL_12:
      v22 = type metadata accessor for Searchfoundation_CopyItem(0);
      OUTLINED_FUNCTION_156_4(v22);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v23, v24);
      v19 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_192_7();
    sub_1B944B0D4();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB8EE0, &unk_1B964D6E0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_882();
  sub_1B944B02C();
  OUTLINED_FUNCTION_246();
  static Searchfoundation_CopyItem.OneOf_Value.== infix(_:_:)();
  v21 = v20;
  sub_1B944B0D4();
  OUTLINED_FUNCTION_467();
  sub_1B944B0D4();
  sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v19);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9410D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC48, type metadata accessor for Searchfoundation_CopyItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9410DDC(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACC978, type metadata accessor for Searchfoundation_CopyItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9410E4C()
{
  sub_1B8CD3068(&qword_1EBACC978, type metadata accessor for Searchfoundation_CopyItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9410FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC40, type metadata accessor for Searchfoundation_TextCopyItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9411054(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD6C8, type metadata accessor for Searchfoundation_TextCopyItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94110C4()
{
  sub_1B8CD3068(&qword_1EBACD6C8, type metadata accessor for Searchfoundation_TextCopyItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9411150()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBD38);
  __swift_project_value_buffer(v0, qword_1EBACBD38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dataProviderTypeIdentifiers";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fileProviderTypeIdentifiers";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "applicationBundleIdentifier";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "coreSpotlightIdentifier";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_CoreSpotlightCopyItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_CoreSpotlightCopyItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
  {
    if (!*(v2[1] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
    {
      v4 = v2[2];
      v5 = v2[3];
      OUTLINED_FUNCTION_1();
      if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
      {
        v7 = v2[4];
        v8 = v2[5];
        OUTLINED_FUNCTION_1();
        if (!v9 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
        {
          v10 = *(type metadata accessor for Searchfoundation_CoreSpotlightCopyItem(0) + 32);
          OUTLINED_FUNCTION_163_6();
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B94115C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC38, type metadata accessor for Searchfoundation_CoreSpotlightCopyItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9411640(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD6E0, type metadata accessor for Searchfoundation_CoreSpotlightCopyItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94116B0()
{
  sub_1B8CD3068(&qword_1EBACD6E0, type metadata accessor for Searchfoundation_CoreSpotlightCopyItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B94117AC()
{
  v0 = *(type metadata accessor for Searchfoundation_ImageCopyItem(0) + 20);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  return sub_1B964C580();
}

void Searchfoundation_ImageCopyItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_211_4(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_227();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_156();
  v12 = type metadata accessor for Searchfoundation_Image(v11);
  v13 = OUTLINED_FUNCTION_163_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = OUTLINED_FUNCTION_87_6();
  v17 = type metadata accessor for Searchfoundation_ImageCopyItem(v16);
  OUTLINED_FUNCTION_517_1(v17);
  OUTLINED_FUNCTION_179_5();
  if (v18)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_5:
    OUTLINED_FUNCTION_649_1();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_867_0();
  sub_1B944B02C();
  OUTLINED_FUNCTION_98_9();
  sub_1B8CD3068(v19, v20);
  OUTLINED_FUNCTION_128_8();
  OUTLINED_FUNCTION_24_24();
  sub_1B944B0D4();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9411A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC30, type metadata accessor for Searchfoundation_ImageCopyItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9411AA4(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD6F8, type metadata accessor for Searchfoundation_ImageCopyItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9411B14()
{
  sub_1B8CD3068(&qword_1EBACD6F8, type metadata accessor for Searchfoundation_ImageCopyItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9411BA0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBD68);
  __swift_project_value_buffer(v0, qword_1EBACBD68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "person";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "contactFileLocation";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9411DCC()
{
  OUTLINED_FUNCTION_697_0();
  while (1)
  {
    OUTLINED_FUNCTION_259();
    result = sub_1B964C3C0();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v6 = OUTLINED_FUNCTION_44_5();
      v0(v6);
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_44_5();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_1B9411E40()
{
  v0 = *(type metadata accessor for Searchfoundation_ContactCopyItem(0) + 20);
  type metadata accessor for Searchfoundation_Person();
  sub_1B8CD3068(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person);
  return sub_1B964C580();
}

uint64_t sub_1B9411EF4()
{
  v0 = *(type metadata accessor for Searchfoundation_ContactCopyItem(0) + 24);
  type metadata accessor for Searchfoundation_URL();
  sub_1B8CD3068(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
  return sub_1B964C580();
}

void Searchfoundation_ContactCopyItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1206(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_156();
  v37 = type metadata accessor for Searchfoundation_URL();
  v11 = OUTLINED_FUNCTION_59_1(v37);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_487(v14);
  v15 = OUTLINED_FUNCTION_1183();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_183(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_211_2();
  v21 = type metadata accessor for Searchfoundation_Person();
  v22 = OUTLINED_FUNCTION_201_5(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_106_8();
  v25 = type metadata accessor for Searchfoundation_ContactCopyItem(0);
  OUTLINED_FUNCTION_1217(v25);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_178(v26, v27, v28);
  if (v29)
  {
    sub_1B8D9207C(v0, &qword_1EBACC5A8, &unk_1B96CD450);
  }

  else
  {
    OUTLINED_FUNCTION_10_33();
    OUTLINED_FUNCTION_696();
    sub_1B944B02C();
    OUTLINED_FUNCTION_135_6();
    sub_1B8CD3068(v30, v31);
    OUTLINED_FUNCTION_771_0();
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_1396();
    OUTLINED_FUNCTION_45_15();
    sub_1B944B0D4();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  v32 = *(v3 + 24);
  OUTLINED_FUNCTION_1315();
  v33 = OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_178(v33, v34, v37);
  if (v29)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_9:
    OUTLINED_FUNCTION_650_1();
    OUTLINED_FUNCTION_270_2();
    sub_1B964C290();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_30();
  sub_1B944B02C();
  OUTLINED_FUNCTION_136_2();
  sub_1B8CD3068(v35, v36);
  OUTLINED_FUNCTION_272_2();
  OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_151_3();
  sub_1B964C740();
  OUTLINED_FUNCTION_46_13();
  sub_1B944B0D4();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B94122B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC28, type metadata accessor for Searchfoundation_ContactCopyItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9412338(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD710, type metadata accessor for Searchfoundation_ContactCopyItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94123A8()
{
  sub_1B8CD3068(&qword_1EBACD710, type metadata accessor for Searchfoundation_ContactCopyItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B94124A4()
{
  v0 = *(type metadata accessor for Searchfoundation_URLCopyItem(0) + 20);
  type metadata accessor for Searchfoundation_URL();
  sub_1B8CD3068(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
  return sub_1B964C580();
}

void Searchfoundation_URLCopyItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_211_4(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_227();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_156();
  v11 = type metadata accessor for Searchfoundation_URL();
  v12 = OUTLINED_FUNCTION_163_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = OUTLINED_FUNCTION_87_6();
  v16 = type metadata accessor for Searchfoundation_URLCopyItem(v15);
  OUTLINED_FUNCTION_517_1(v16);
  OUTLINED_FUNCTION_179_5();
  if (v17)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_5:
    OUTLINED_FUNCTION_649_1();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_867_0();
  sub_1B944B02C();
  OUTLINED_FUNCTION_136_2();
  sub_1B8CD3068(v18, v19);
  OUTLINED_FUNCTION_128_8();
  OUTLINED_FUNCTION_46_13();
  sub_1B944B0D4();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B941271C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC20, type metadata accessor for Searchfoundation_URLCopyItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B941279C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD728, type metadata accessor for Searchfoundation_URLCopyItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B941280C()
{
  sub_1B8CD3068(&qword_1EBACD728, type metadata accessor for Searchfoundation_URLCopyItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9412898()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBD98);
  __swift_project_value_buffer(v0, qword_1EBACBD98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shareItem";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shareItems";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_ShareCommand.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B944A84C();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9412B38();
    }
  }
}

uint64_t sub_1B9412B38()
{
  v0 = *(type metadata accessor for Searchfoundation_ShareCommand(0) + 24);
  type metadata accessor for Searchfoundation_ShareItem(0);
  sub_1B8CD3068(&qword_1EBACCAB0, type metadata accessor for Searchfoundation_ShareItem);
  return sub_1B964C580();
}

void Searchfoundation_ShareCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1265(v3);
  v4 = OUTLINED_FUNCTION_177_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_211_2();
  v10 = type metadata accessor for Searchfoundation_ShareItem(0);
  v11 = OUTLINED_FUNCTION_163_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_95_4();
  v21 = type metadata accessor for Searchfoundation_ShareCommand(0);
  v14 = *(v21 + 24);
  OUTLINED_FUNCTION_319_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_90(v0);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBACC5B8, &qword_1B96B9928);
  }

  else
  {
    OUTLINED_FUNCTION_97_6();
    OUTLINED_FUNCTION_1375();
    sub_1B944B02C();
    OUTLINED_FUNCTION_979();
    sub_1B8CD3068(v16, v17);
    OUTLINED_FUNCTION_749();
    OUTLINED_FUNCTION_678_1();
    sub_1B964C740();
    OUTLINED_FUNCTION_498_0();
    sub_1B944B0D4();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  if (!*(*v2 + 16) || (OUTLINED_FUNCTION_979(), sub_1B8CD3068(v18, v19), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_175_1(), OUTLINED_FUNCTION_678_1(), sub_1B964C730(), !v1))
  {
    v20 = *(v21 + 20);
    OUTLINED_FUNCTION_681_1();
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9412E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC18, type metadata accessor for Searchfoundation_ShareCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9412EC8(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD740, type metadata accessor for Searchfoundation_ShareCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9412F38()
{
  sub_1B8CD3068(&qword_1EBACD740, type metadata accessor for Searchfoundation_ShareCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9412FD0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBDB0);
  __swift_project_value_buffer(v0, qword_1EBACBDB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "urlShareItem";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "spotlightShareItem";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ShareItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_17_3();
      sub_1B9413718(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_17_3();
      sub_1B9413220(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B9413220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_URLShareItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EF0, &qword_1B964D6F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_ShareItem.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF88, &qword_1B96CA148);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8EF0, &qword_1B964D6F0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B944B0D4();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBACDF88, &qword_1B96CA148);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD3068(&qword_1EBACD768, type metadata accessor for Searchfoundation_URLShareItem);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACDF88, &qword_1B96CA148);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACDF88, &qword_1B96CA148);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACDF88, &qword_1B96CA148);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACDF88, &qword_1B96CA148);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8EF0, &qword_1B964D6F0);
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9413718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_CoreSpotlightShareItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EF0, &qword_1B964D6F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_ShareItem.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF90, &qword_1B96CA150);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8EF0, &qword_1B964D6F0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBACDF90, &qword_1B96CA150);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD780, type metadata accessor for Searchfoundation_CoreSpotlightShareItem);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACDF90, &qword_1B96CA150);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACDF90, &qword_1B96CA150);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACDF90, &qword_1B96CA150);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACDF90, &qword_1B96CA150);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8EF0, &qword_1B964D6F0);
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void Searchfoundation_ShareItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_605_1();
  OUTLINED_FUNCTION_243_3();
  v3 = OUTLINED_FUNCTION_190_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_176_1();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_ShareItem.OneOf_Value(0);
  OUTLINED_FUNCTION_90(v2);
  if (v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_7_6();
    sub_1B9413F18(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_7_6();
    sub_1B9413D04(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_633_1();
  sub_1B944B0D4();
  if (!v1)
  {
LABEL_6:
    v18 = v0 + *(type metadata accessor for Searchfoundation_ShareItem(0) + 20);
    OUTLINED_FUNCTION_12();
    sub_1B964C290();
  }

  OUTLINED_FUNCTION_492_1();
  OUTLINED_FUNCTION_606_1();
}

uint64_t sub_1B9413D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EF0, &qword_1B964D6F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_URLShareItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_ShareItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8EF0, &qword_1B964D6F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD768, type metadata accessor for Searchfoundation_URLShareItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9413F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EF0, &qword_1B964D6F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_CoreSpotlightShareItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_ShareItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8EF0, &qword_1B964D6F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD780, type metadata accessor for Searchfoundation_CoreSpotlightShareItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

void static Searchfoundation_ShareItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Searchfoundation_ShareItem.OneOf_Value(v1);
  v3 = OUTLINED_FUNCTION_201_5(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v6 = OUTLINED_FUNCTION_686();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EF8, &qword_1B964D6F8);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_50(v0 + v17);
    if (v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EF0, &qword_1B964D6F0);
LABEL_12:
      v22 = type metadata accessor for Searchfoundation_ShareItem(0);
      OUTLINED_FUNCTION_156_4(v22);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v23, v24);
      v19 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_633_1();
    sub_1B944B0D4();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB8EF8, &qword_1B964D6F8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_882();
  sub_1B944B02C();
  OUTLINED_FUNCTION_246();
  static Searchfoundation_ShareItem.OneOf_Value.== infix(_:_:)();
  v21 = v20;
  sub_1B944B0D4();
  OUTLINED_FUNCTION_467();
  sub_1B944B0D4();
  sub_1B8D9207C(v0, &qword_1EBAB8EF0, &qword_1B964D6F0);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v19);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94143F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC10, type metadata accessor for Searchfoundation_ShareItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9414478(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCAB0, type metadata accessor for Searchfoundation_ShareItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94144E8()
{
  sub_1B8CD3068(&qword_1EBACCAB0, type metadata accessor for Searchfoundation_ShareItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B94145E4()
{
  v0 = *(type metadata accessor for Searchfoundation_URLShareItem(0) + 20);
  type metadata accessor for Searchfoundation_URL();
  sub_1B8CD3068(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
  return sub_1B964C580();
}

void Searchfoundation_URLShareItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_211_4(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_227();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_156();
  v11 = type metadata accessor for Searchfoundation_URL();
  v12 = OUTLINED_FUNCTION_163_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = OUTLINED_FUNCTION_87_6();
  v16 = type metadata accessor for Searchfoundation_URLShareItem(v15);
  OUTLINED_FUNCTION_517_1(v16);
  OUTLINED_FUNCTION_179_5();
  if (v17)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_5:
    OUTLINED_FUNCTION_649_1();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_867_0();
  sub_1B944B02C();
  OUTLINED_FUNCTION_136_2();
  sub_1B8CD3068(v18, v19);
  OUTLINED_FUNCTION_128_8();
  OUTLINED_FUNCTION_46_13();
  sub_1B944B0D4();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B941485C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC08, type metadata accessor for Searchfoundation_URLShareItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94148DC(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD768, type metadata accessor for Searchfoundation_URLShareItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B941494C()
{
  sub_1B8CD3068(&qword_1EBACD768, type metadata accessor for Searchfoundation_URLShareItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B94149D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBDE0);
  __swift_project_value_buffer(v0, qword_1EBACBDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shareProviderTypeIdentifier";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "applicationBundleIdentifier";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "coreSpotlightIdentifier";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B9414C48()
{
  OUTLINED_FUNCTION_822();
  v3 = v2;
  OUTLINED_FUNCTION_1_15();
  if (!v4 || (OUTLINED_FUNCTION_107_5(), sub_1B964C700(), !v0))
  {
    v5 = v1[2];
    v6 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v7 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      v8 = v1[4];
      v9 = v1[5];
      OUTLINED_FUNCTION_1();
      if (!v10 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
      {
        v11 = *(v3(0) + 28);
        OUTLINED_FUNCTION_163_6();
        sub_1B964C290();
      }
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9414D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDC00, type metadata accessor for Searchfoundation_CoreSpotlightShareItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9414E00(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD780, type metadata accessor for Searchfoundation_CoreSpotlightShareItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9414E70()
{
  sub_1B8CD3068(&qword_1EBACD780, type metadata accessor for Searchfoundation_CoreSpotlightShareItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9414EFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBDF8);
  __swift_project_value_buffer(v0, qword_1EBACBDF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contactActionType";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "didDisplayHandleOptions";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "didSelectFromOptionsMenu";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_PerformContactActionCommand.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C400();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B94151A0();
    }
  }

  return result;
}

void Searchfoundation_PerformContactActionCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v3 = v2[8], OUTLINED_FUNCTION_94_4(), sub_1B944C7C8(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
  {
    if (v2[9] != 1 || (OUTLINED_FUNCTION_1068(), OUTLINED_FUNCTION_29(), sub_1B964C670(), !v1))
    {
      if (v2[10] != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v1))
      {
        v4 = *(type metadata accessor for Searchfoundation_PerformContactActionCommand(0) + 28);
        OUTLINED_FUNCTION_163_6();
        sub_1B964C290();
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B9415378(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBF8, type metadata accessor for Searchfoundation_PerformContactActionCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94153F8(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD798, type metadata accessor for Searchfoundation_PerformContactActionCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9415468()
{
  sub_1B8CD3068(&qword_1EBACD798, type metadata accessor for Searchfoundation_PerformContactActionCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B94154F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBE10);
  __swift_project_value_buffer(v0, qword_1EBACBE10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "channelIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pushTopic";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subscribedEntityIdentifier";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9415764(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = a3(0);
  OUTLINED_FUNCTION_736(v13);
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v14, v15);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B94158A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBF0, type metadata accessor for Searchfoundation_CloudChannelsRequestItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9415928(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCB18, type metadata accessor for Searchfoundation_CloudChannelsRequestItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9415998()
{
  sub_1B8CD3068(&qword_1EBACCB18, type metadata accessor for Searchfoundation_CloudChannelsRequestItem);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_DomainSubscriptionRequestItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_17_3();
      sub_1B9415AB4(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B9415AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6C8, &qword_1B96B9A38);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF80, &qword_1B96CA140);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  v28 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBACC6C8, &qword_1B96B9A38);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    sub_1B8D9207C(v22, &qword_1EBACDF80, &qword_1B96CA140);
    sub_1B944B02C();
    sub_1B944B02C();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_1B8CD3068(&qword_1EBACCAF0, type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem);
  v24 = v31;
  sub_1B964C580();
  if (v24)
  {
    v25 = v22;
    return sub_1B8D9207C(v25, &qword_1EBACDF80, &qword_1B96CA140);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACDF80, &qword_1B96CA140);
    v25 = v20;
    return sub_1B8D9207C(v25, &qword_1EBACDF80, &qword_1B96CA140);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v22, &qword_1EBACDF80, &qword_1B96CA140);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBACC6C8, &qword_1B96B9A38);
  sub_1B944B02C();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
}

void Searchfoundation_DomainSubscriptionRequestItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6C8, &qword_1B96B9A38);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_156();
  v8 = type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem(v7);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_542();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem.OneOf_Value(0);
  v12 = OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_178(v12, v13, v14);
  if (v15)
  {
    sub_1B8D9207C(v2, &qword_1EBACC6C8, &qword_1B96B9A38);
LABEL_5:
    v16 = v0 + *(type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem(0) + 20);
    OUTLINED_FUNCTION_213_3();
    sub_1B964C290();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_150_7();
  sub_1B944B02C();
  sub_1B8CD3068(&qword_1EBACCAF0, type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem);
  OUTLINED_FUNCTION_597_0();
  sub_1B964C740();
  sub_1B944B0D4();
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_DomainSubscriptionRequestItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem.OneOf_Value(v1);
  v3 = OUTLINED_FUNCTION_201_5(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v6 = OUTLINED_FUNCTION_686();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCAF8, &qword_1B96B9AC0);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_50(v0 + v17);
    if (v18)
    {
      sub_1B8D9207C(v0, &qword_1EBACC6C8, &qword_1B96B9A38);
LABEL_12:
      v21 = type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem(0);
      OUTLINED_FUNCTION_156_4(v21);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v22, v23);
      v19 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_171_2();
    sub_1B944B0D4();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBACCAF8, &qword_1B96B9AC0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_882();
  sub_1B944B02C();
  OUTLINED_FUNCTION_246();
  v20 = static Searchfoundation_DomainSubscriptionRequestItem.OneOf_Value.== infix(_:_:)();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_467();
  sub_1B944B0D4();
  sub_1B8D9207C(v0, &qword_1EBACC6C8, &qword_1B96B9A38);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v19);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94163E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBE8, type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9416464(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCB10, type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94164D4()
{
  sub_1B8CD3068(&qword_1EBACCB10, type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9416560()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBE40);
  __swift_project_value_buffer(v0, qword_1EBACBE40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "canonicalIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sportIdentifier";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "leagueIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9416844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBE0, type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94168C4(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCAF0, type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9416934()
{
  sub_1B8CD3068(&qword_1EBACCAF0, type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B94169C0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBE58);
  __swift_project_value_buffer(v0, qword_1EBACBE58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cloudChannelsRequestItem";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domainSubscriptionRequestItem";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9416BEC()
{
  v0 = *(type metadata accessor for Searchfoundation_SubscribeForUpdatesCommand(0) + 20);
  type metadata accessor for Searchfoundation_CloudChannelsRequestItem(0);
  sub_1B8CD3068(&qword_1EBACCB18, type metadata accessor for Searchfoundation_CloudChannelsRequestItem);
  return sub_1B964C580();
}

uint64_t sub_1B9416CA0()
{
  v0 = *(type metadata accessor for Searchfoundation_SubscribeForUpdatesCommand(0) + 24);
  type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem(0);
  sub_1B8CD3068(&qword_1EBACCB10, type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem);
  return sub_1B964C580();
}

void Searchfoundation_SubscribeForUpdatesCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1206(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5F8, &qword_1B96B9970);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_156();
  v34 = type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem(v11);
  v12 = OUTLINED_FUNCTION_59_1(v34);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_487(v15);
  v16 = OUTLINED_FUNCTION_1183();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_183(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_211_2();
  v22 = type metadata accessor for Searchfoundation_CloudChannelsRequestItem(0);
  v23 = OUTLINED_FUNCTION_201_5(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_106_8();
  v26 = type metadata accessor for Searchfoundation_SubscribeForUpdatesCommand(0);
  OUTLINED_FUNCTION_1217(v26);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_178(v27, v28, v29);
  if (v30)
  {
    sub_1B8D9207C(v0, &qword_1EBACC608, &qword_1B96B9980);
  }

  else
  {
    OUTLINED_FUNCTION_94_11();
    OUTLINED_FUNCTION_696();
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACCB18, type metadata accessor for Searchfoundation_CloudChannelsRequestItem);
    OUTLINED_FUNCTION_771_0();
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_1396();
    OUTLINED_FUNCTION_495_0();
    sub_1B944B0D4();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  v31 = *(v3 + 24);
  OUTLINED_FUNCTION_1315();
  v32 = OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_178(v32, v33, v34);
  if (v30)
  {
    sub_1B8D9207C(v2, &qword_1EBACC5F8, &qword_1B96B9970);
LABEL_9:
    OUTLINED_FUNCTION_650_1();
    OUTLINED_FUNCTION_270_2();
    sub_1B964C290();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_93_8();
  sub_1B944B02C();
  sub_1B8CD3068(&qword_1EBACCB10, type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem);
  OUTLINED_FUNCTION_272_2();
  OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_151_3();
  sub_1B964C740();
  OUTLINED_FUNCTION_494_1();
  sub_1B944B0D4();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9417084(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBD8, type metadata accessor for Searchfoundation_SubscribeForUpdatesCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9417104(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD7E0, type metadata accessor for Searchfoundation_SubscribeForUpdatesCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9417174()
{
  sub_1B8CD3068(&qword_1EBACD7E0, type metadata accessor for Searchfoundation_SubscribeForUpdatesCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B941720C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBE70);
  __swift_project_value_buffer(v0, qword_1EBACBE70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sportsItem";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "follow";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9417424()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_1_0();
      sub_1B964C400();
    }

    else if (result == 1)
    {
      v4 = OUTLINED_FUNCTION_691_1();
      v0(v4);
    }
  }

  return result;
}

uint64_t sub_1B9417498()
{
  v0 = *(type metadata accessor for Searchfoundation_UpdateSportsFollowingStatusCommand(0) + 24);
  type metadata accessor for Searchfoundation_SportsItem(0);
  sub_1B8CD3068(&qword_1EBACCB28, type metadata accessor for Searchfoundation_SportsItem);
  return sub_1B964C580();
}

void Searchfoundation_UpdateSportsFollowingStatusCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_835_0(v3, v4, v5);
  v6 = OUTLINED_FUNCTION_177_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_151();
  v13 = type metadata accessor for Searchfoundation_SportsItem(v12);
  v14 = OUTLINED_FUNCTION_205_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_165_5();
  updated = type metadata accessor for Searchfoundation_UpdateSportsFollowingStatusCommand(0);
  OUTLINED_FUNCTION_687_0(updated);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_178(v18, v19, v20);
  if (v21)
  {
    sub_1B8D9207C(v2, &qword_1EBACC658, &qword_1B96B99D0);
    OUTLINED_FUNCTION_1343();
  }

  else
  {
    OUTLINED_FUNCTION_40_13();
    OUTLINED_FUNCTION_1278();
    OUTLINED_FUNCTION_978();
    sub_1B8CD3068(v22, v23);
    OUTLINED_FUNCTION_460_0();
    OUTLINED_FUNCTION_184_6();
    sub_1B944B0D4();
    if (v0)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_1236();
  if (!v21 || (OUTLINED_FUNCTION_1068(), OUTLINED_FUNCTION_80_6(), OUTLINED_FUNCTION_713_0(), sub_1B964C670(), !v0))
  {
    v24 = *(v1 + 20);
    OUTLINED_FUNCTION_681_1();
  }

LABEL_9:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9417740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBD0, type metadata accessor for Searchfoundation_UpdateSportsFollowingStatusCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94177C0(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD7F8, type metadata accessor for Searchfoundation_UpdateSportsFollowingStatusCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9417830()
{
  sub_1B8CD3068(&qword_1EBACD7F8, type metadata accessor for Searchfoundation_UpdateSportsFollowingStatusCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B94178BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBE88);
  __swift_project_value_buffer(v0, qword_1EBACBE88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolIdentifier";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toolInvocationData";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_ExecuteToolCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_107_5(), sub_1B964C700(), !v0))
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    v5 = OUTLINED_FUNCTION_616();
    if (sub_1B8D99EA8(v5, v6) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v0))
    {
      v7 = *(type metadata accessor for Searchfoundation_ExecuteToolCommand(0) + 24);
      OUTLINED_FUNCTION_163_6();
      sub_1B964C290();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9417C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBC8, type metadata accessor for Searchfoundation_ExecuteToolCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9417C88(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD810, type metadata accessor for Searchfoundation_ExecuteToolCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9417CF8()
{
  sub_1B8CD3068(&qword_1EBACD810, type metadata accessor for Searchfoundation_ExecuteToolCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9417D84()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBEA0);
  __swift_project_value_buffer(v0, qword_1EBACBEA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "applicationBundleIdentifier";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "menuItemIdentifier";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9417FA0()
{
  OUTLINED_FUNCTION_697_0();
  while (1)
  {
    OUTLINED_FUNCTION_259();
    result = sub_1B964C3C0();
    if (v1 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v0(v3 + 16, v5, v4);
    }

    else if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_467();
      v2(v8);
    }
  }

  return result;
}

uint64_t sub_1B94180D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBC0, type metadata accessor for Searchfoundation_ExecuteMenuItemCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9418158(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD828, type metadata accessor for Searchfoundation_ExecuteMenuItemCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94181C8()
{
  sub_1B8CD3068(&qword_1EBACD828, type metadata accessor for Searchfoundation_ExecuteMenuItemCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B9418260()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBEB8);
  __swift_project_value_buffer(v0, qword_1EBACBEB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "commandButtonItem";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "contactButtonItem";
  *(v8 + 8) = 17;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "coreSpotlightButtonItem";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "watchListButtonItem";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "appActionsButtonItem";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "sportsFollowButtonItem";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "playWatchListItemButtonItem";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "playAudioButtonItem";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "storeButtonItem";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "buttonAppearance";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 100;
  *v26 = "uniqueId";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B94186A8()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  v2 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonAppearance;
  v4 = type metadata accessor for Searchfoundation_ButtonItemAppearance(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID) = 0;
  return v0;
}

uint64_t sub_1B941871C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E80, &qword_1B964D680);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  v8 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonAppearance;
  v10 = type metadata accessor for Searchfoundation_ButtonItemAppearance(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID) = 0;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v12 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  swift_beginAccess();
  v13 = *(a1 + v12);

  swift_beginAccess();
  *(v1 + v11) = v13;
  return v1;
}

uint64_t sub_1B9418968()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value, &qword_1EBAB8E90, &qword_1B964D690);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonAppearance, &qword_1EBAB8E80, &qword_1B964D680);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B9418A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1B9418C28(a1, a2, a3, a4);
        break;
      case 2:
        sub_1B941917C(a1, a2, a3, a4);
        break;
      case 3:
        sub_1B94196EC(a1, a2, a3, a4);
        break;
      case 4:
        sub_1B9419C5C(a1, a2, a3, a4);
        break;
      case 5:
        sub_1B941A1CC(a1, a2, a3, a4);
        break;
      case 6:
        sub_1B941A73C(a1, a2, a3, a4);
        break;
      case 7:
        sub_1B941ACAC(a1, a2, a3, a4);
        break;
      case 8:
        sub_1B941B21C(a1, a2, a3, a4);
        break;
      case 9:
        sub_1B941B78C(a1, a2, a3, a4);
        break;
      case 10:
        sub_1B941BCFC();
        break;
      default:
        if (result == 100)
        {
          sub_1B94257F4(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID, MEMORY[0x1E69AAD00]);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B9418C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC3D48, &qword_1B9689670);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v32 - v24;
  __swift_storeEnumTagSinglePayload(&v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v34 = a1;
  v32 = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B944B0D4();
    }

    else
    {
      sub_1B8D9207C(v25, &unk_1EBAC3D48, &qword_1B9689670);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }
  }

  sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem);
  v28 = v37;
  sub_1B964C580();
  if (v28)
  {
    v29 = v25;
    return sub_1B8D9207C(v29, &unk_1EBAC3D48, &qword_1B9689670);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &unk_1EBAC3D48, &qword_1B9689670);
    v29 = v23;
    return sub_1B8D9207C(v29, &unk_1EBAC3D48, &qword_1B9689670);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v25, &unk_1EBAC3D48, &qword_1B9689670);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v16);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B941917C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_ContactButtonItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF40, &qword_1B96CA100);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v25, &qword_1EBACDF40, &qword_1B96CA100);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD868, type metadata accessor for Searchfoundation_ContactButtonItem);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACDF40, &qword_1B96CA100);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACDF40, &qword_1B96CA100);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACDF40, &qword_1B96CA100);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACDF40, &qword_1B96CA100);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B94196EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_CoreSpotlightButtonItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF48, &qword_1B96CA108);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v25, &qword_1EBACDF48, &qword_1B96CA108);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD898, type metadata accessor for Searchfoundation_CoreSpotlightButtonItem);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACDF48, &qword_1B96CA108);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACDF48, &qword_1B96CA108);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACDF48, &qword_1B96CA108);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACDF48, &qword_1B96CA108);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B9419C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_WatchListButtonItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF50, &qword_1B96CA110);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v25, &qword_1EBACDF50, &qword_1B96CA110);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD880, type metadata accessor for Searchfoundation_WatchListButtonItem);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACDF50, &qword_1B96CA110);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACDF50, &qword_1B96CA110);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACDF50, &qword_1B96CA110);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACDF50, &qword_1B96CA110);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B941A1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF58, &qword_1B96CA118);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v25, &qword_1EBACDF58, &qword_1B96CA118);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD8B0, type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACDF58, &qword_1B96CA118);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACDF58, &qword_1B96CA118);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACDF58, &qword_1B96CA118);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACDF58, &qword_1B96CA118);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B941A73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_SportsFollowButtonItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF60, &qword_1B96CA120);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v25, &qword_1EBACDF60, &qword_1B96CA120);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD8E8, type metadata accessor for Searchfoundation_SportsFollowButtonItem);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACDF60, &qword_1B96CA120);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACDF60, &qword_1B96CA120);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACDF60, &qword_1B96CA120);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACDF60, &qword_1B96CA120);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B941ACAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF68, &qword_1B96CA128);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8D9207C(v25, &qword_1EBACDF68, &qword_1B96CA128);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD910, type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACDF68, &qword_1B96CA128);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACDF68, &qword_1B96CA128);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACDF68, &qword_1B96CA128);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACDF68, &qword_1B96CA128);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B941B21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF70, &qword_1B96CA130);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B8D9207C(v25, &qword_1EBACDF70, &qword_1B96CA130);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD928, type metadata accessor for Searchfoundation_PlayAudioButtonItem);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACDF70, &qword_1B96CA130);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACDF70, &qword_1B96CA130);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACDF70, &qword_1B96CA130);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACDF70, &qword_1B96CA130);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B941B78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_StoreButtonItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF78, &qword_1B96CA138);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B8D9207C(v25, &qword_1EBACDF78, &qword_1B96CA138);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD940, type metadata accessor for Searchfoundation_StoreButtonItem);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACDF78, &qword_1B96CA138);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACDF78, &qword_1B96CA138);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACDF78, &qword_1B96CA138);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACDF78, &qword_1B96CA138);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B941BCFC()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItemAppearance(0);
  sub_1B8CD3068(&qword_1EBACD848, type metadata accessor for Searchfoundation_ButtonItemAppearance);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B941BE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E80, &qword_1B964D680);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v25 - v10;
  v26 = type metadata accessor for Searchfoundation_ButtonItemAppearance(0);
  v12 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v25[1] = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v25 - v16;
  swift_beginAccess();
  sub_1B8D92024();
  v18 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    v19 = v27;
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v20 = v27;
        sub_1B941C510(a1, a2, a3, a4);
        goto LABEL_12;
      case 2u:
        v20 = v27;
        sub_1B941C744(a1, a2, a3, a4);
        goto LABEL_12;
      case 3u:
        v20 = v27;
        sub_1B941C978(a1, a2, a3, a4);
        goto LABEL_12;
      case 4u:
        v20 = v27;
        sub_1B941CBAC(a1, a2, a3, a4);
        goto LABEL_12;
      case 5u:
        v20 = v27;
        sub_1B941CDE0(a1, a2, a3, a4);
        goto LABEL_12;
      case 6u:
        v20 = v27;
        sub_1B941D014(a1, a2, a3, a4);
        goto LABEL_12;
      case 7u:
        v21 = v27;
        sub_1B941D248(a1, a2, a3, a4);
        goto LABEL_15;
      case 8u:
        v21 = v27;
        sub_1B941D47C(a1, a2, a3, a4);
LABEL_15:
        v19 = v21;
        if (v21)
        {
          return sub_1B944B0D4();
        }

        sub_1B944B0D4();
        break;
      default:
        v20 = v27;
        sub_1B941C2E0(a1, a2, a3, a4);
LABEL_12:
        v19 = v20;
        result = sub_1B944B0D4();
        if (!v20)
        {
          break;
        }

        return result;
    }
  }

  v23 = v26;
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v11, 1, v23) == 1)
  {
    sub_1B8D9207C(v11, &qword_1EBAB8E80, &qword_1B964D680);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACD848, type metadata accessor for Searchfoundation_ButtonItemAppearance);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v19)
    {
      return result;
    }
  }

  v24 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  swift_beginAccess();
  result = *(a1 + v24);
  if (result)
  {
    return sub_1B964C720();
  }

  return result;
}

uint64_t sub_1B941C2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941C510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_ContactButtonItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD868, type metadata accessor for Searchfoundation_ContactButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941C744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_CoreSpotlightButtonItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD898, type metadata accessor for Searchfoundation_CoreSpotlightButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941C978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_WatchListButtonItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD880, type metadata accessor for Searchfoundation_WatchListButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941CBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD8B0, type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941CDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_SportsFollowButtonItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD8E8, type metadata accessor for Searchfoundation_SportsFollowButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941D014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD910, type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941D248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD928, type metadata accessor for Searchfoundation_PlayAudioButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B941D47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_StoreButtonItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8E90, &qword_1B964D690);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD940, type metadata accessor for Searchfoundation_StoreButtonItem);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

void sub_1B941D6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v21;
  a20 = v22;
  v92 = v23;
  v25 = v24;
  v90 = type metadata accessor for Searchfoundation_ButtonItemAppearance(0);
  v26 = OUTLINED_FUNCTION_59_1(v90);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_247_0(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E78, &unk_1B96CA0F0);
  OUTLINED_FUNCTION_166_4(v30, &a17);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_185();
  v91 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E80, &qword_1B964D680);
  v36 = OUTLINED_FUNCTION_183(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_266_0();
  v41 = OUTLINED_FUNCTION_207_3(v40);
  v42 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(v41);
  v43 = OUTLINED_FUNCTION_135_0(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_247_0(v46);
  v47 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E88, &qword_1B964D688) - 8);
  v48 = *(*v47 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v89 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v53 = OUTLINED_FUNCTION_183(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_442();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_447_0();
  OUTLINED_FUNCTION_521();
  v57 = v92;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v58 = v47[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_117(v51);
  if (v60)
  {

    sub_1B8D9207C(v20, &qword_1EBAB8E90, &qword_1B964D690);
    OUTLINED_FUNCTION_117(&v51[v58]);
    v59 = v25;
    if (v60)
    {
      sub_1B8D9207C(v51, &qword_1EBAB8E90, &qword_1B964D690);
      goto LABEL_11;
    }

LABEL_9:
    v61 = &qword_1EBAB8E88;
    v62 = &qword_1B964D688;
    v63 = v51;
LABEL_20:
    sub_1B8D9207C(v63, v61, v62);
    goto LABEL_21;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_117(&v51[v58]);
  if (v60)
  {

    sub_1B8D9207C(v20, &qword_1EBAB8E90, &qword_1B964D690);
    OUTLINED_FUNCTION_18_24();
    sub_1B944B0D4();
    goto LABEL_9;
  }

  sub_1B944B02C();

  OUTLINED_FUNCTION_491();
  static Searchfoundation_ButtonItem.OneOf_Value.== infix(_:_:)();
  v65 = v64;
  sub_1B944B0D4();
  v66 = OUTLINED_FUNCTION_467();
  sub_1B8D9207C(v66, v67, &qword_1B964D690);
  OUTLINED_FUNCTION_541_0();
  sub_1B944B0D4();
  v68 = OUTLINED_FUNCTION_867_0();
  v59 = v25;
  sub_1B8D9207C(v68, v69, &qword_1B964D690);
  if ((v65 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_521();
  v70 = v89[5];
  OUTLINED_FUNCTION_1399();
  OUTLINED_FUNCTION_521();
  v71 = *(v89[4] + 48);
  v72 = v91;
  OUTLINED_FUNCTION_1399();
  OUTLINED_FUNCTION_1399();
  v73 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_44(v73, v74);
  if (v60)
  {
    sub_1B8D9207C(v70, &qword_1EBAB8E80, &qword_1B964D680);
    OUTLINED_FUNCTION_48(v72 + v71);
    if (v60)
    {
      sub_1B8D9207C(v72, &qword_1EBAB8E80, &qword_1B964D680);
LABEL_24:
      v84 = v57;
      v85 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
      OUTLINED_FUNCTION_521();
      v86 = *(v59 + v85);

      v87 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
      OUTLINED_FUNCTION_521();
      v88 = *(v84 + v87);

      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v72 + v71);
  if (v75)
  {
    sub_1B8D9207C(v70, &qword_1EBAB8E80, &qword_1B964D680);
    sub_1B944B0D4();
LABEL_19:
    v61 = &qword_1EBAB8E78;
    v62 = &unk_1B96CA0F0;
    v63 = v72;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_344_2();
  sub_1B944B02C();
  OUTLINED_FUNCTION_427();
  static Searchfoundation_ButtonItemAppearance.== infix(_:_:)();
  v77 = v76;
  sub_1B944B0D4();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v78, v79, v80);
  sub_1B944B0D4();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v81, v82, v83);
  if (v77)
  {
    goto LABEL_24;
  }

LABEL_21:

LABEL_22:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B941DD70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBB8, type metadata accessor for Searchfoundation_ButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B941DDF0(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B941DE60()
{
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B941DEEC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBED0);
  __swift_project_value_buffer(v0, qword_1EBACBED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "style";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "role";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "tintColor";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "renderingMode";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "preferNoFallbackImage";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ButtonItemAppearance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B941E244();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B941E2AC();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B941E314();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B941E3C8();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B941E314()
{
  v0 = *(type metadata accessor for Searchfoundation_ButtonItemAppearance(0) + 36);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  return sub_1B964C580();
}

void Searchfoundation_ButtonItemAppearance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_192_4();
  v8 = type metadata accessor for Searchfoundation_Color(0);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_165_5();
  if (!*v0 || (v12 = *(v2 + 8), OUTLINED_FUNCTION_540_0(*v0), sub_1B944C81C(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
  {
    v13 = *(v2 + 16);
    if (!v13 || (v14 = *(v2 + 24), OUTLINED_FUNCTION_540_0(v13), sub_1B944C870(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
    {
      v22 = type metadata accessor for Searchfoundation_ButtonItemAppearance(0);
      v15 = *(v22 + 36);
      OUTLINED_FUNCTION_1316();
      OUTLINED_FUNCTION_118(v3);
      if (v16)
      {
        sub_1B8D9207C(v3, &qword_1EBACB050, &unk_1B96B7BD0);
      }

      else
      {
        OUTLINED_FUNCTION_5_36();
        OUTLINED_FUNCTION_190_0();
        sub_1B944B02C();
        OUTLINED_FUNCTION_70_10();
        sub_1B8CD3068(v17, v18);
        OUTLINED_FUNCTION_683_0();
        OUTLINED_FUNCTION_687();
        sub_1B964C740();
        OUTLINED_FUNCTION_32_19();
        sub_1B944B0D4();
        if (v1)
        {
          goto LABEL_15;
        }
      }

      v19 = *(v2 + 32);
      if (!v19 || (v20 = *(v2 + 40), OUTLINED_FUNCTION_540_0(v19), sub_1B944C8C4(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
      {
        OUTLINED_FUNCTION_1209();
        if (!v16 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v1))
        {
          v21 = *(v22 + 32);
          OUTLINED_FUNCTION_163_6();
          sub_1B964C290();
        }
      }
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_ButtonItemAppearance.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_112();
  v5 = type metadata accessor for Searchfoundation_Color(v4);
  v6 = OUTLINED_FUNCTION_171_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_106_8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_163_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_88();
  v17 = *v1;
  v18 = *v0;
  if (*(v0 + 8) == 1)
  {
    switch(v18)
    {
      case 1:
        if (v17 != 1)
        {
          goto LABEL_45;
        }

        goto LABEL_6;
      case 2:
        if (v17 != 2)
        {
          goto LABEL_45;
        }

        goto LABEL_6;
      case 3:
        if (v17 != 3)
        {
          goto LABEL_45;
        }

        goto LABEL_6;
      case 4:
        if (v17 != 4)
        {
          goto LABEL_45;
        }

        goto LABEL_6;
      case 5:
        if (v17 != 5)
        {
          goto LABEL_45;
        }

        goto LABEL_6;
      default:
        if (!v17)
        {
          goto LABEL_6;
        }

        goto LABEL_45;
    }
  }

  if (v17 != v18)
  {
    goto LABEL_45;
  }

LABEL_6:
  v19 = v1[2];
  v20 = v0[2];
  if (*(v0 + 24) == 1)
  {
    switch(v20)
    {
      case 1:
        if (v19 != 1)
        {
          goto LABEL_45;
        }

        goto LABEL_11;
      case 2:
        if (v19 != 2)
        {
          goto LABEL_45;
        }

        goto LABEL_11;
      case 3:
        if (v19 != 3)
        {
          goto LABEL_45;
        }

        goto LABEL_11;
      case 4:
        if (v19 != 4)
        {
          goto LABEL_45;
        }

        goto LABEL_11;
      default:
        if (!v19)
        {
          goto LABEL_11;
        }

        goto LABEL_45;
    }
  }

  if (v19 != v20)
  {
    goto LABEL_45;
  }

LABEL_11:
  v21 = *(type metadata accessor for Searchfoundation_ButtonItemAppearance(0) + 36);
  v22 = *(v3 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_75_9();
  if (!v23)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_5_36();
      OUTLINED_FUNCTION_1275();
      OUTLINED_FUNCTION_494_0();
      if (v26 || (, , OUTLINED_FUNCTION_616(), sub_1B947FDE4(), OUTLINED_FUNCTION_813(), , (&unk_1B96B7BD0 & 1) != 0))
      {
        v27 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v28, v29);
        OUTLINED_FUNCTION_654_0();
        OUTLINED_FUNCTION_78_7();
        sub_1B944B0D4();
        OUTLINED_FUNCTION_531_0();
        sub_1B944B0D4();
        sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
        if (v27)
        {
          goto LABEL_34;
        }

LABEL_45:
        v33 = 0;
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_336_0();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_1165();
      v24 = &qword_1EBACB050;
      v25 = &unk_1B96B7BD0;
LABEL_20:
      sub_1B8D9207C(v2, v24, v25);
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_32_19();
    sub_1B944B0D4();
LABEL_19:
    v24 = &qword_1EBACB058;
    v25 = &unk_1B96CA9D0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_37_0(v2 + v22);
  if (!v23)
  {
    goto LABEL_19;
  }

  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_34:
  v30 = *(v0 + 40);
  if (!sub_1B8D92198(v1[4], *(v1 + 40), v0[4]))
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_824_0();
  if (!v23)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_1309();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v31, v32);
  v33 = OUTLINED_FUNCTION_199_0();
LABEL_46:
  OUTLINED_FUNCTION_264(v33);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B941EAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBB0, type metadata accessor for Searchfoundation_ButtonItemAppearance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B941EB28(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD848, type metadata accessor for Searchfoundation_ButtonItemAppearance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B941EB98()
{
  sub_1B8CD3068(&qword_1EBACD848, type metadata accessor for Searchfoundation_ButtonItemAppearance);

  return sub_1B964C5D0();
}

uint64_t sub_1B941EC24()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBEE8);
  __swift_project_value_buffer(v0, qword_1EBACBEE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B964E4A0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "image";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "command";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "previewButtonItems";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "isDestructive";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 100;
  *v16 = "uniqueId";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_CommandButtonItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B941F020();
        break;
      case 2:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B941F0D4();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B941F188();
        break;
      case 5:
      case 6:
        continue;
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        if (v1 == 100)
        {
          OUTLINED_FUNCTION_12();
          sub_1B964C560();
        }

        break;
    }
  }
}