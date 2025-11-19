uint64_t sub_1B941F020()
{
  v0 = *(type metadata accessor for Searchfoundation_CommandButtonItem(0) + 36);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  return sub_1B964C580();
}

uint64_t sub_1B941F0D4()
{
  v0 = *(type metadata accessor for Searchfoundation_CommandButtonItem(0) + 40);
  type metadata accessor for Searchfoundation_Command(0);
  sub_1B8CD3068(&qword_1ED9D3040, type metadata accessor for Searchfoundation_Command);
  return sub_1B964C580();
}

void sub_1B941F188()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_128();
  sub_1B8CD3068(v2, v3);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

void Searchfoundation_CommandButtonItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1206(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_22_3();
  v37 = type metadata accessor for Searchfoundation_Command(v11);
  v12 = OUTLINED_FUNCTION_59_1(v37);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_487(v15);
  v16 = OUTLINED_FUNCTION_190_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_183(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_204_3();
  v23 = type metadata accessor for Searchfoundation_Image(v22);
  v24 = OUTLINED_FUNCTION_171_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_106_8();
  v38 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  OUTLINED_FUNCTION_1240(v38[9]);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v3);
  if (v27)
  {
    sub_1B8D9207C(v3, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_220();
    sub_1B944B02C();
    OUTLINED_FUNCTION_98_9();
    sub_1B8CD3068(v28, v29);
    OUTLINED_FUNCTION_771_0();
    OUTLINED_FUNCTION_1174();
    sub_1B964C740();
    OUTLINED_FUNCTION_24_24();
    sub_1B944B0D4();
    if (v0)
    {
      goto LABEL_18;
    }
  }

  v30 = *v2;
  v31 = v2[1];
  OUTLINED_FUNCTION_1();
  if (!v32 || (OUTLINED_FUNCTION_764_0(), sub_1B964C700(), !v0))
  {
    v33 = v38[10];
    sub_1B8D92024();
    OUTLINED_FUNCTION_81(v1, 1);
    if (v27)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8E98, &qword_1B964D698);
    }

    else
    {
      OUTLINED_FUNCTION_17_24();
      OUTLINED_FUNCTION_1322();
      sub_1B8CD3068(&qword_1ED9D3040, type metadata accessor for Searchfoundation_Command);
      OUTLINED_FUNCTION_709_0();
      OUTLINED_FUNCTION_17_15();
      sub_1B964C740();
      OUTLINED_FUNCTION_190_4();
      sub_1B944B0D4();
      if (v0)
      {
        goto LABEL_18;
      }
    }

    if (!*(v2[2] + 16) || (type metadata accessor for Searchfoundation_ButtonItem(0), OUTLINED_FUNCTION_30_26(), sub_1B8CD3068(v34, v35), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_17_15(), sub_1B964C730(), !v0))
    {
      if (*(v2 + 24) != 1 || (OUTLINED_FUNCTION_119_4(), sub_1B964C670(), !v0))
      {
        if (!v2[4] || (OUTLINED_FUNCTION_119_4(), sub_1B964C720(), !v0))
        {
          v36 = v2 + v38[8];
          OUTLINED_FUNCTION_198();
          sub_1B964C290();
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B941F604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBA8, type metadata accessor for Searchfoundation_CommandButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B941F684(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B941F6F4()
{
  sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B941F780()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBF00);
  __swift_project_value_buffer(v0, qword_1EBACBF00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "contactIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "person";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "actionTypesToShow";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "uniqueId";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ContactButtonItem.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 100:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B941FA80();
        break;
      case 3:
        OUTLINED_FUNCTION_507_0();
        sub_1B964C440();
        break;
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B941FA80()
{
  v0 = *(type metadata accessor for Searchfoundation_ContactButtonItem(0) + 32);
  type metadata accessor for Searchfoundation_Person();
  sub_1B8CD3068(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person);
  return sub_1B964C580();
}

void Searchfoundation_ContactButtonItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_192_4();
  v7 = type metadata accessor for Searchfoundation_Person();
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_165_5();
  OUTLINED_FUNCTION_15_2();
  if (!v11 || (OUTLINED_FUNCTION_107_5(), sub_1B964C700(), !v0))
  {
    v17 = type metadata accessor for Searchfoundation_ContactButtonItem(0);
    v12 = *(v17 + 32);
    OUTLINED_FUNCTION_1316();
    OUTLINED_FUNCTION_118(v2);
    if (v13)
    {
      sub_1B8D9207C(v2, &qword_1EBACC5A8, &unk_1B96CD450);
    }

    else
    {
      OUTLINED_FUNCTION_10_33();
      OUTLINED_FUNCTION_190_0();
      sub_1B944B02C();
      OUTLINED_FUNCTION_135_6();
      sub_1B8CD3068(v14, v15);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_680_0();
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_45_15();
      sub_1B944B0D4();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    if (!*(*(v1 + 16) + 16) || (OUTLINED_FUNCTION_29(), sub_1B964C620(), !v0))
    {
      if (!*(v1 + 24) || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v0))
      {
        v16 = *(v17 + 28);
        OUTLINED_FUNCTION_163_6();
        sub_1B964C290();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B941FD8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDBA0, type metadata accessor for Searchfoundation_ContactButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B941FE0C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD868, type metadata accessor for Searchfoundation_ContactButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B941FE7C()
{
  sub_1B8CD3068(&qword_1EBACD868, type metadata accessor for Searchfoundation_ContactButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B941FF08()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBF18);
  __swift_project_value_buffer(v0, qword_1EBACBF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "watchListItem";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toggleButtonConfiguration";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 100;
  *v12 = "uniqueId";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9420168()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchListItem;
  v2 = type metadata accessor for Searchfoundation_WatchListItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggleButtonConfiguration;
  v4 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID) = 0;
  return v0;
}

uint64_t sub_1B94201DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5D8, &qword_1B96B9948);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchListItem;
  v8 = type metadata accessor for Searchfoundation_WatchListItem(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggleButtonConfiguration;
  v10 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID) = 0;
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
  v12 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  swift_beginAccess();
  v13 = *(a1 + v12);

  swift_beginAccess();
  *(v1 + v11) = v13;
  return v1;
}

uint64_t sub_1B9420428()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__watchListItem, &qword_1EBACC5D8, &qword_1B96B9948);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggleButtonConfiguration, &qword_1EBACC6F0, &qword_1B96B9A68);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B9420514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      case 100:
        sub_1B94257F4(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID, MEMORY[0x1E69AAD00]);
        break;
      case 2:
        sub_1B94206C8();
        break;
      case 1:
        sub_1B94205EC();
        break;
    }
  }

  return result;
}

uint64_t sub_1B94205EC()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_WatchListItem(0);
  sub_1B8CD3068(&qword_1EBACC968, type metadata accessor for Searchfoundation_WatchListItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94206C8()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94207D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v21 - v7;
  v22 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  v9 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v21[1] = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5D8, &qword_1B96B9948);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v21 - v13;
  v15 = type metadata accessor for Searchfoundation_WatchListItem(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1B8D9207C(v14, &qword_1EBACC5D8, &qword_1B96B9948);
    v17 = v23;
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACC968, type metadata accessor for Searchfoundation_WatchListItem);
    v18 = v23;
    sub_1B964C740();
    v17 = v18;
    result = sub_1B944B0D4();
    if (v18)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v8, 1, v22) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBACC6F0, &qword_1B96B9A68);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v17)
    {
      return result;
    }
  }

  v20 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  swift_beginAccess();
  result = *(a1 + v20);
  if (result)
  {
    return sub_1B964C720();
  }

  return result;
}

BOOL sub_1B9420BB8(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v47 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  v3 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v44[1] = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F8, &qword_1B96B9A70);
  v5 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v44[2] = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = v44 - v11;
  v12 = type metadata accessor for Searchfoundation_WatchListItem(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v44[3] = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E0, &qword_1B96B9950);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5D8, &qword_1B96B9948);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v44 - v23;
  swift_beginAccess();
  v25 = v49;
  sub_1B8D92024();
  swift_beginAccess();
  v26 = *(v16 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v12) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(&v19[v26], 1, v12) != 1)
    {
      sub_1B944B02C();

      v31 = static Searchfoundation_WatchListItem.== infix(_:_:)();
      sub_1B944B0D4();
      sub_1B8D9207C(v24, &qword_1EBACC5D8, &qword_1B96B9948);
      sub_1B944B0D4();
      v27 = a1;
      sub_1B8D9207C(v19, &qword_1EBACC5D8, &qword_1B96B9948);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1B8D9207C(v24, &qword_1EBACC5D8, &qword_1B96B9948);
    sub_1B944B0D4();
LABEL_6:
    v28 = &qword_1EBACC5E0;
    v29 = &qword_1B96B9950;
    v30 = v19;
LABEL_14:
    sub_1B8D9207C(v30, v28, v29);
    goto LABEL_15;
  }

  sub_1B8D9207C(v24, &qword_1EBACC5D8, &qword_1B96B9948);
  v27 = a1;
  if (__swift_getEnumTagSinglePayload(&v19[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_1B8D9207C(v19, &qword_1EBACC5D8, &qword_1B96B9948);
LABEL_8:
  swift_beginAccess();
  v32 = v46;
  sub_1B8D92024();
  swift_beginAccess();
  v33 = *(v45 + 48);
  v34 = v48;
  sub_1B8D92024();
  sub_1B8D92024();
  v35 = v47;
  if (__swift_getEnumTagSinglePayload(v34, 1, v47) == 1)
  {
    sub_1B8D9207C(v32, &qword_1EBACC6F0, &qword_1B96B9A68);
    if (__swift_getEnumTagSinglePayload(v34 + v33, 1, v35) == 1)
    {
      sub_1B8D9207C(v34, &qword_1EBACC6F0, &qword_1B96B9A68);
LABEL_18:
      v39 = v25;
      v40 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
      swift_beginAccess();
      v41 = *(v27 + v40);

      v42 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_WatchListButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
      swift_beginAccess();
      v43 = *(v39 + v42);

      return v41 == v43;
    }

    goto LABEL_13;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v34 + v33, 1, v35) == 1)
  {
    sub_1B8D9207C(v32, &qword_1EBACC6F0, &qword_1B96B9A68);
    sub_1B944B0D4();
LABEL_13:
    v28 = &qword_1EBACC6F8;
    v29 = &qword_1B96B9A70;
    v30 = v34;
    goto LABEL_14;
  }

  sub_1B944B02C();
  static Searchfoundation_ToggleButtonConfiguration.== infix(_:_:)();
  v38 = v37;
  sub_1B944B0D4();
  sub_1B8D9207C(v32, &qword_1EBACC6F0, &qword_1B96B9A68);
  sub_1B944B0D4();
  sub_1B8D9207C(v34, &qword_1EBACC6F0, &qword_1B96B9A68);
  if (v38)
  {
    goto LABEL_18;
  }

LABEL_15:

  return 0;
}

uint64_t sub_1B94213B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB98, type metadata accessor for Searchfoundation_WatchListButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9421434(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD880, type metadata accessor for Searchfoundation_WatchListButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94214A4()
{
  sub_1B8CD3068(&qword_1EBACD880, type metadata accessor for Searchfoundation_WatchListButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B942153C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBF38);
  __swift_project_value_buffer(v0, qword_1EBACBF38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "actionItemTypes";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "applicationBundleIdentifier";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "coreSpotlightIdentifier";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "uniqueId";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_CoreSpotlightButtonItem.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 100:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C4D0();
        break;
    }
  }

  return result;
}

uint64_t Searchfoundation_CoreSpotlightButtonItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
  {
    v4 = v2[1];
    v5 = v2[2];
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
    {
      v7 = v2[3];
      v8 = v2[4];
      OUTLINED_FUNCTION_1();
      if (!v9 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
      {
        if (!v2[5] || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
        {
          v10 = *(type metadata accessor for Searchfoundation_CoreSpotlightButtonItem(0) + 32);
          OUTLINED_FUNCTION_163_6();
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B94219A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB90, type metadata accessor for Searchfoundation_CoreSpotlightButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9421A28(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD898, type metadata accessor for Searchfoundation_CoreSpotlightButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9421A98()
{
  sub_1B8CD3068(&qword_1EBACD898, type metadata accessor for Searchfoundation_CoreSpotlightButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9421B24()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBF50);
  __swift_project_value_buffer(v0, qword_1EBACBF50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "appAutoShortcutsItem";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 100;
  *v10 = "uniqueId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_AppAutoShortcutsButtonItem.decodeMessage<A>(decoder:)()
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

    if (result == 100)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C560();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9421D78();
    }
  }

  return result;
}

uint64_t sub_1B9421D78()
{
  v0 = *(type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem(0) + 24);
  type metadata accessor for Searchfoundation_AppAutoShortcutsItem(0);
  sub_1B8CD3068(&qword_1EBACCB90, type metadata accessor for Searchfoundation_AppAutoShortcutsItem);
  return sub_1B964C580();
}

void Searchfoundation_AppAutoShortcutsButtonItem.traverse<A>(visitor:)()
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
  v13 = type metadata accessor for Searchfoundation_AppAutoShortcutsItem(v12);
  v14 = OUTLINED_FUNCTION_205_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_165_5();
  v17 = type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem(0);
  OUTLINED_FUNCTION_687_0(v17);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_178(v18, v19, v20);
  if (v21)
  {
    sub_1B8D9207C(v2, &qword_1EBACC6E0, &qword_1B96B9A58);
    OUTLINED_FUNCTION_1343();
  }

  else
  {
    OUTLINED_FUNCTION_100_8();
    OUTLINED_FUNCTION_1278();
    sub_1B8CD3068(&qword_1EBACCB90, type metadata accessor for Searchfoundation_AppAutoShortcutsItem);
    OUTLINED_FUNCTION_460_0();
    OUTLINED_FUNCTION_629_0();
    sub_1B944B0D4();
    if (v0)
    {
      goto LABEL_8;
    }
  }

  if (!*v23 || (OUTLINED_FUNCTION_80_6(), OUTLINED_FUNCTION_713_0(), sub_1B964C720(), !v0))
  {
    v22 = *(v1 + 20);
    OUTLINED_FUNCTION_681_1();
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9422034(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB88, type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94220B4(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD8B0, type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9422124()
{
  sub_1B8CD3068(&qword_1EBACD8B0, type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B94221F4()
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

    if (result == 1)
    {
      v4 = OUTLINED_FUNCTION_1_0();
      v0(v4);
    }
  }

  return result;
}

uint64_t sub_1B9422294(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = a3(0);
  OUTLINED_FUNCTION_156_4(v7);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B94223AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB80, type metadata accessor for Searchfoundation_AppAutoShortcutsItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B942242C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCB90, type metadata accessor for Searchfoundation_AppAutoShortcutsItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B942249C()
{
  sub_1B8CD3068(&qword_1EBACCB90, type metadata accessor for Searchfoundation_AppAutoShortcutsItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9422528()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBF80);
  __swift_project_value_buffer(v0, qword_1EBACBF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "untoggledTitle";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toggledTitle";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "untoggledImage";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "toggledImage";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ToggleButtonConfiguration.decodeMessage<A>(decoder:)()
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
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9422828();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B94228DC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9422828()
{
  v0 = *(type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0) + 28);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  return sub_1B964C580();
}

uint64_t sub_1B94228DC()
{
  v0 = *(type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0) + 32);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  return sub_1B964C580();
}

void Searchfoundation_ToggleButtonConfiguration.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v6 = OUTLINED_FUNCTION_183(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_265();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_447_0();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  v11 = OUTLINED_FUNCTION_46(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_441();
  v15 = *v3;
  v16 = v3[1];
  OUTLINED_FUNCTION_1();
  if (!v17 || (v1 = v0, sub_1B964C700(), !v0))
  {
    v18 = v3[2];
    v19 = v3[3];
    OUTLINED_FUNCTION_1();
    if (!v20 || (v1 = v0, sub_1B964C700(), !v0))
    {
      v28 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
      v21 = v28[7];
      sub_1B8D92024();
      OUTLINED_FUNCTION_32(v2);
      if (v22)
      {
        sub_1B8D9207C(v2, &qword_1EBAB8EA8, &unk_1B96B77D0);
      }

      else
      {
        OUTLINED_FUNCTION_4_47();
        OUTLINED_FUNCTION_186();
        sub_1B944B02C();
        OUTLINED_FUNCTION_98_9();
        sub_1B8CD3068(v23, v24);
        OUTLINED_FUNCTION_709_0();
        OUTLINED_FUNCTION_1174();
        sub_1B964C740();
        OUTLINED_FUNCTION_24_24();
        sub_1B944B0D4();
        if (v1)
        {
          goto LABEL_14;
        }
      }

      OUTLINED_FUNCTION_285_1(v28[8]);
      sub_1B8D92024();
      OUTLINED_FUNCTION_243_1();
      if (v22)
      {
        sub_1B8D9207C(v4, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_13:
        v27 = v3 + v28[6];
        OUTLINED_FUNCTION_686();
        sub_1B964C290();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_4_47();
      sub_1B944B02C();
      OUTLINED_FUNCTION_98_9();
      sub_1B8CD3068(v25, v26);
      OUTLINED_FUNCTION_272_2();
      OUTLINED_FUNCTION_1174();
      sub_1B964C740();
      OUTLINED_FUNCTION_24_24();
      sub_1B944B0D4();
      if (!v1)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_ToggleButtonConfiguration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_112();
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  v9 = OUTLINED_FUNCTION_205_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_1246();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1247();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_442();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_441();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  v19 = OUTLINED_FUNCTION_59_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_219_0();
  v23 = *v0;
  v24 = v0[1];
  OUTLINED_FUNCTION_428();
  v27 = v27 && v25 == v26;
  if (!v27 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_1235();
  v30 = v27 && v28 == v29;
  if (!v30 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_35;
  }

  v57 = v6;
  v58 = v3;
  v60 = v2;
  v59 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  v31 = v59[7];
  v32 = *(v18 + 48);
  OUTLINED_FUNCTION_89_10();
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v5);
  if (v27)
  {
    OUTLINED_FUNCTION_99_0(v5 + v32);
    v33 = v60;
    if (v27)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_502();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v5 + v32);
  if (v34)
  {
    OUTLINED_FUNCTION_24_24();
    sub_1B944B0D4();
LABEL_19:
    v35 = &qword_1EBAB8EB0;
    v36 = &qword_1B964D6B0;
LABEL_20:
    v37 = v5;
LABEL_34:
    sub_1B8D9207C(v37, v35, v36);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_4_47();
  sub_1B944B02C();
  v38 = *(v4 + 20);
  if (*(v1 + v38) != *(v57 + v38))
  {
    v39 = *(v1 + v38);

    sub_1B94C6890();
    v41 = v40;

    if ((v41 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_7();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_182();
      sub_1B944B0D4();
      v35 = &qword_1EBAB8EA8;
      v36 = &unk_1B96B77D0;
      goto LABEL_20;
    }
  }

  v42 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v43, v44);
  OUTLINED_FUNCTION_177_1();
  sub_1B964C850();
  OUTLINED_FUNCTION_137_5();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_1_0();
  sub_1B944B0D4();
  sub_1B8D9207C(v5, &qword_1EBAB8EA8, &unk_1B96B77D0);
  v33 = v60;
  if ((v42 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_24:
  v45 = v59[8];
  v46 = *(v18 + 48);
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_99_0(v33);
  if (v27)
  {
    OUTLINED_FUNCTION_99_0(v33 + v46);
    if (v27)
    {
      sub_1B8D9207C(v33, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_40:
      v54 = v59[6];
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v55, v56);
      v48 = OUTLINED_FUNCTION_199_0();
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v33 + v46);
  if (v47)
  {
    OUTLINED_FUNCTION_24_24();
    sub_1B944B0D4();
LABEL_32:
    v35 = &qword_1EBAB8EB0;
    v36 = &qword_1B964D6B0;
LABEL_33:
    v37 = v33;
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_1336();
  sub_1B944B02C();
  if (*(v58 + *(v4 + 20)) != *(v46 + *(v4 + 20)))
  {

    OUTLINED_FUNCTION_113_0();
    sub_1B94C6890();
    v50 = v49;

    if ((v50 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_7();
      sub_1B944B0D4();
      sub_1B944B0D4();
      v35 = &qword_1EBAB8EA8;
      v36 = &unk_1B96B77D0;
      goto LABEL_33;
    }
  }

  v51 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v52, v53);
  OUTLINED_FUNCTION_257();
  sub_1B964C850();
  OUTLINED_FUNCTION_137_5();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_541_0();
  sub_1B944B0D4();
  sub_1B8D9207C(v33, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if (v51)
  {
    goto LABEL_40;
  }

LABEL_35:
  v48 = 0;
LABEL_36:
  OUTLINED_FUNCTION_264(v48);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B942321C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB78, type metadata accessor for Searchfoundation_ToggleButtonConfiguration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B942329C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B942330C()
{
  sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration);

  return sub_1B964C5D0();
}

uint64_t sub_1B9423398()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBF98);
  __swift_project_value_buffer(v0, qword_1EBACBF98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sportsItem";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toggleButtonConfiguration";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "fallbackTitle";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "uniqueId";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_SportsFollowButtonItem.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 100:
        OUTLINED_FUNCTION_507_0();
        sub_1B964C560();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9423748();
        break;
      case 3:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C530();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B9423694();
        break;
    }
  }

  return result;
}

uint64_t sub_1B9423694()
{
  v0 = *(type metadata accessor for Searchfoundation_SportsFollowButtonItem(0) + 28);
  type metadata accessor for Searchfoundation_SportsItem(0);
  sub_1B8CD3068(&qword_1EBACCB28, type metadata accessor for Searchfoundation_SportsItem);
  return sub_1B964C580();
}

uint64_t sub_1B9423748()
{
  v0 = *(type metadata accessor for Searchfoundation_SportsFollowButtonItem(0) + 32);
  type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration);
  return sub_1B964C580();
}

void Searchfoundation_SportsFollowButtonItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1206(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_22_3();
  v35 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(v11);
  v12 = OUTLINED_FUNCTION_59_1(v35);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_487(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC658, &qword_1B96B99D0);
  OUTLINED_FUNCTION_183(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_204_3();
  v21 = type metadata accessor for Searchfoundation_SportsItem(v20);
  v22 = OUTLINED_FUNCTION_171_4(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_106_8();
  v25 = type metadata accessor for Searchfoundation_SportsFollowButtonItem(0);
  v26 = v25[7];
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v3);
  if (v27)
  {
    sub_1B8D9207C(v3, &qword_1EBACC658, &qword_1B96B99D0);
  }

  else
  {
    OUTLINED_FUNCTION_40_13();
    OUTLINED_FUNCTION_220();
    sub_1B944B02C();
    OUTLINED_FUNCTION_978();
    sub_1B8CD3068(v28, v29);
    OUTLINED_FUNCTION_771_0();
    OUTLINED_FUNCTION_119_4();
    sub_1B964C740();
    OUTLINED_FUNCTION_184_6();
    sub_1B944B0D4();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  v30 = v25[8];
  sub_1B8D92024();
  OUTLINED_FUNCTION_81(v2, 1);
  if (v27)
  {
    sub_1B8D9207C(v2, &qword_1EBACC6F0, &qword_1B96B9A68);
  }

  else
  {
    OUTLINED_FUNCTION_50_13();
    OUTLINED_FUNCTION_1322();
    sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration);
    OUTLINED_FUNCTION_709_0();
    OUTLINED_FUNCTION_119_4();
    sub_1B964C740();
    OUTLINED_FUNCTION_628_0();
    sub_1B944B0D4();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  v31 = *v0;
  v32 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v33 || (OUTLINED_FUNCTION_119_4(), sub_1B964C700(), !v1))
  {
    if (!v0[2] || (OUTLINED_FUNCTION_119_4(), sub_1B964C720(), !v1))
    {
      v34 = v0 + v25[6];
      OUTLINED_FUNCTION_318_1();
      sub_1B964C290();
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9423BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB70, type metadata accessor for Searchfoundation_SportsFollowButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9423C30(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD8E8, type metadata accessor for Searchfoundation_SportsFollowButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9423CA0()
{
  sub_1B8CD3068(&qword_1EBACD8E8, type metadata accessor for Searchfoundation_SportsFollowButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9423D38()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBFB0);
  __swift_project_value_buffer(v0, qword_1EBACBFB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_SportsItem.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_507_0();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9423F88();
    }
  }

  return result;
}

void Searchfoundation_SportsItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v3 = *(v2 + 8), OUTLINED_FUNCTION_94_4(), sub_1B944C918(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
    {
      v7 = *(type metadata accessor for Searchfoundation_SportsItem(0) + 24);
      OUTLINED_FUNCTION_163_6();
      sub_1B964C290();
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Searchfoundation_SportsItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *v0;
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v1 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v1 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v1 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v1)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v1 == v3)
  {
LABEL_6:
    OUTLINED_FUNCTION_84_1();
    v6 = v6 && v4 == v5;
    if (v6 || (sub_1B964C9F0() & 1) != 0)
    {
      v7 = type metadata accessor for Searchfoundation_SportsItem(0);
      OUTLINED_FUNCTION_188_1(v7);
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v8, v9);
      return OUTLINED_FUNCTION_634() & 1;
    }
  }

  return 0;
}

uint64_t sub_1B9424224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB68, type metadata accessor for Searchfoundation_SportsItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94242A4(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACCB28, type metadata accessor for Searchfoundation_SportsItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9424314()
{
  sub_1B8CD3068(&qword_1EBACCB28, type metadata accessor for Searchfoundation_SportsItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B94243A0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBFC8);
  __swift_project_value_buffer(v0, qword_1EBACBFC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "watchListItem";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "uniqueId";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_PlayWatchListItemButtonItem.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 100:
        OUTLINED_FUNCTION_507_0();
        sub_1B964C560();
        break;
      case 2:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B942474C();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B9424698();
        break;
    }
  }

  return result;
}

uint64_t sub_1B9424698()
{
  v0 = *(type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem(0) + 28);
  type metadata accessor for Searchfoundation_WatchListItem(0);
  sub_1B8CD3068(&qword_1EBACC968, type metadata accessor for Searchfoundation_WatchListItem);
  return sub_1B964C580();
}

uint64_t sub_1B942474C()
{
  v0 = *(type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem(0) + 32);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  return sub_1B964C580();
}

void Searchfoundation_PlayWatchListItemButtonItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1206(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_22_3();
  v37 = type metadata accessor for Searchfoundation_Image(v11);
  v12 = OUTLINED_FUNCTION_59_1(v37);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_487(v15);
  v16 = OUTLINED_FUNCTION_190_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_183(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_204_3();
  v23 = type metadata accessor for Searchfoundation_WatchListItem(v22);
  v24 = OUTLINED_FUNCTION_171_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_106_8();
  v38 = type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem(0);
  OUTLINED_FUNCTION_1240(v38[7]);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v3);
  if (v27)
  {
    sub_1B8D9207C(v3, &qword_1EBACC5D8, &qword_1B96B9948);
  }

  else
  {
    OUTLINED_FUNCTION_22_22();
    OUTLINED_FUNCTION_220();
    sub_1B944B02C();
    OUTLINED_FUNCTION_987();
    sub_1B8CD3068(v28, v29);
    OUTLINED_FUNCTION_771_0();
    OUTLINED_FUNCTION_119_4();
    sub_1B964C740();
    OUTLINED_FUNCTION_185_7();
    sub_1B944B0D4();
    if (v0)
    {
      goto LABEL_14;
    }
  }

  v30 = *v2;
  v31 = v2[1];
  OUTLINED_FUNCTION_1();
  if (!v32 || (OUTLINED_FUNCTION_119_4(), sub_1B964C700(), !v0))
  {
    v33 = v38[8];
    sub_1B8D92024();
    OUTLINED_FUNCTION_81(v1, 1);
    if (v27)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }

    else
    {
      OUTLINED_FUNCTION_4_47();
      OUTLINED_FUNCTION_1322();
      OUTLINED_FUNCTION_98_9();
      sub_1B8CD3068(v34, v35);
      OUTLINED_FUNCTION_709_0();
      OUTLINED_FUNCTION_119_4();
      sub_1B964C740();
      OUTLINED_FUNCTION_24_24();
      sub_1B944B0D4();
      if (v0)
      {
        goto LABEL_14;
      }
    }

    if (!v2[2] || (OUTLINED_FUNCTION_119_4(), sub_1B964C720(), !v0))
    {
      v36 = v2 + v38[6];
      OUTLINED_FUNCTION_198();
      sub_1B964C290();
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9424B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB60, type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9424C10(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD910, type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9424C80()
{
  sub_1B8CD3068(&qword_1EBACD910, type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9424D0C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACBFE0);
  __swift_project_value_buffer(v0, qword_1EBACBFE0);
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
  *v10 = "toggleButtonConfiguration";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "audioData";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "uniqueId";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9424FA8()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaMetadata;
  v2 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggleButtonConfiguration;
  v4 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__audioData;
  v6 = type metadata accessor for Searchfoundation_AudioData();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID) = 0;
  return v0;
}

uint64_t sub_1B9425040(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC698, &qword_1B96B9A08);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v20 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaMetadata;
  v11 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggleButtonConfiguration;
  v13 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__audioData;
  v15 = type metadata accessor for Searchfoundation_AudioData();
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID) = 0;
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
  v17 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  swift_beginAccess();
  v18 = *(a1 + v17);

  swift_beginAccess();
  *(v1 + v16) = v18;
  return v1;
}

uint64_t sub_1B942537C()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__mediaMetadata, &qword_1EBACC5E8, &qword_1B96B9958);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggleButtonConfiguration, &qword_1EBACC6F0, &qword_1B96B9A68);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__audioData, &qword_1EBACC698, &qword_1B96B9A08);
  return v0;
}

uint64_t sub_1B9425464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      case 100:
        sub_1B94257F4(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID, MEMORY[0x1E69AAD00]);
        break;
      case 2:
        sub_1B942563C();
        break;
      case 3:
        sub_1B9425718();
        break;
      case 1:
        sub_1B9425560();
        break;
    }
  }

  return result;
}

uint64_t sub_1B9425560()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MediaMetadata(0);
  sub_1B8CD3068(&qword_1EBACCA60, type metadata accessor for Searchfoundation_MediaMetadata);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942563C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9425718()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_AudioData();
  sub_1B8CD3068(&qword_1EBACB260, type metadata accessor for Searchfoundation_AudioData);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94257F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  OUTLINED_FUNCTION_134_2();
  v8 = *v7;
  OUTLINED_FUNCTION_438_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_318_1();
  a6();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B94258A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC698, &qword_1B96B9A08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v28 = v27 - v7;
  v29 = type metadata accessor for Searchfoundation_AudioData();
  v8 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v27[1] = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v27 - v12;
  v30 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  v14 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v27[2] = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v27 - v18;
  v20 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1B8D9207C(v19, &qword_1EBACC5E8, &qword_1B96B9958);
    v22 = v31;
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACCA60, type metadata accessor for Searchfoundation_MediaMetadata);
    v23 = v31;
    sub_1B964C740();
    v22 = v23;
    result = sub_1B944B0D4();
    if (v23)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v13, 1, v30) == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBACC6F0, &qword_1B96B9A68);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACCBB0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v22)
    {
      return result;
    }
  }

  swift_beginAccess();
  v25 = v28;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v25, 1, v29) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACC698, &qword_1B96B9A08);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBACB260, type metadata accessor for Searchfoundation_AudioData);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v22)
    {
      return result;
    }
  }

  v26 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
  swift_beginAccess();
  result = *(a1 + v26);
  if (result)
  {
    return sub_1B964C720();
  }

  return result;
}

BOOL sub_1B9425E3C(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v69 = type metadata accessor for Searchfoundation_AudioData();
  v3 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE7C0, &qword_1B96CA748);
  v5 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC698, &qword_1B96B9A08);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v64 - v11;
  v75 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  v12 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v67 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F8, &qword_1B96B9A70);
  v14 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v71 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v64 - v20;
  v21 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v72 = (&v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5F0, &unk_1B96B9960);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v64 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = (&v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v64 - v34;
  swift_beginAccess();
  v36 = a1;
  sub_1B8D92024();
  v37 = v78;
  swift_beginAccess();
  v38 = *(v25 + 56);
  sub_1B8D92024();
  v39 = v37;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v28, 1, v21) == 1)
  {

    sub_1B8D9207C(v35, &qword_1EBACC5E8, &qword_1B96B9958);
    if (__swift_getEnumTagSinglePayload(&v28[v38], 1, v21) == 1)
    {
      sub_1B8D9207C(v28, &qword_1EBACC5E8, &qword_1B96B9958);
      goto LABEL_8;
    }

LABEL_6:
    v40 = &qword_1EBACC5F0;
    v41 = &unk_1B96B9960;
    v42 = v28;
LABEL_22:
    sub_1B8D9207C(v42, v40, v41);
    goto LABEL_23;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(&v28[v38], 1, v21) == 1)
  {

    sub_1B8D9207C(v35, &qword_1EBACC5E8, &qword_1B96B9958);
    sub_1B944B0D4();
    goto LABEL_6;
  }

  v43 = v72;
  sub_1B944B02C();

  v44 = static Searchfoundation_MediaMetadata.== infix(_:_:)(v33, v43);
  sub_1B944B0D4();
  sub_1B8D9207C(v35, &qword_1EBACC5E8, &qword_1B96B9958);
  sub_1B944B0D4();
  sub_1B8D9207C(v28, &qword_1EBACC5E8, &qword_1B96B9958);
  if ((v44 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  swift_beginAccess();
  v45 = v74;
  sub_1B8D92024();
  swift_beginAccess();
  v46 = *(v73 + 48);
  v47 = v76;
  sub_1B8D92024();
  sub_1B8D92024();
  v48 = v75;
  if (__swift_getEnumTagSinglePayload(v47, 1, v75) != 1)
  {
    sub_1B8D92024();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47 + v46, 1, v48);
    v50 = v77;
    if (EnumTagSinglePayload != 1)
    {
      sub_1B944B02C();
      static Searchfoundation_ToggleButtonConfiguration.== infix(_:_:)();
      v53 = v52;
      sub_1B944B0D4();
      sub_1B8D9207C(v45, &qword_1EBACC6F0, &qword_1B96B9A68);
      sub_1B944B0D4();
      sub_1B8D9207C(v47, &qword_1EBACC6F0, &qword_1B96B9A68);
      if ((v53 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    sub_1B8D9207C(v45, &qword_1EBACC6F0, &qword_1B96B9A68);
    sub_1B944B0D4();
LABEL_13:
    v40 = &qword_1EBACC6F8;
    v41 = &qword_1B96B9A70;
LABEL_21:
    v42 = v47;
    goto LABEL_22;
  }

  sub_1B8D9207C(v45, &qword_1EBACC6F0, &qword_1B96B9A68);
  v49 = __swift_getEnumTagSinglePayload(v47 + v46, 1, v48);
  v50 = v77;
  if (v49 != 1)
  {
    goto LABEL_13;
  }

  sub_1B8D9207C(v47, &qword_1EBACC6F0, &qword_1B96B9A68);
LABEL_15:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v54 = *(v68 + 48);
  v47 = v70;
  sub_1B8D92024();
  sub_1B8D92024();
  v55 = v69;
  if (__swift_getEnumTagSinglePayload(v47, 1, v69) == 1)
  {
    sub_1B8D9207C(v50, &qword_1EBACC698, &qword_1B96B9A08);
    if (__swift_getEnumTagSinglePayload(v47 + v54, 1, v55) == 1)
    {
      sub_1B8D9207C(v47, &qword_1EBACC698, &qword_1B96B9A08);
LABEL_26:
      v60 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
      swift_beginAccess();
      v61 = *(v36 + v60);

      v62 = OBJC_IVAR____TtCV10PegasusAPI36Searchfoundation_PlayAudioButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
      swift_beginAccess();
      v63 = *(v39 + v62);

      return v61 == v63;
    }

    goto LABEL_20;
  }

  v56 = v66;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v47 + v54, 1, v55) == 1)
  {
    sub_1B8D9207C(v50, &qword_1EBACC698, &qword_1B96B9A08);
    sub_1B944B0D4();
LABEL_20:
    v40 = &qword_1EBACE7C0;
    v41 = &qword_1B96CA748;
    goto LABEL_21;
  }

  v58 = v65;
  sub_1B944B02C();
  v59 = static Searchfoundation_AudioData.== infix(_:_:)(v56, v58);
  sub_1B944B0D4();
  sub_1B8D9207C(v50, &qword_1EBACC698, &qword_1B96B9A08);
  sub_1B944B0D4();
  sub_1B8D9207C(v47, &qword_1EBACC698, &qword_1B96B9A08);
  if (v59)
  {
    goto LABEL_26;
  }

LABEL_23:

  return 0;
}

uint64_t sub_1B94269A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB58, type metadata accessor for Searchfoundation_PlayAudioButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9426A24(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD928, type metadata accessor for Searchfoundation_PlayAudioButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9426A94()
{
  sub_1B8CD3068(&qword_1EBACD928, type metadata accessor for Searchfoundation_PlayAudioButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9426B20()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC000);
  __swift_project_value_buffer(v0, qword_1EBACC000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shouldOpenAppAfterInstallCompletes";
  *(v10 + 8) = 34;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "identifierType";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "uniqueId";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_StoreButtonItem.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 100:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
        OUTLINED_FUNCTION_507_0();
        sub_1B964C400();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9426E20();
        break;
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

void Searchfoundation_StoreButtonItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_107_5(), sub_1B964C700(), !v0))
  {
    if (*(v1 + 16) != 1 || (OUTLINED_FUNCTION_1068(), OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
    {
      if (!*(v1 + 24) || (v3 = *(v1 + 32), OUTLINED_FUNCTION_94_4(), sub_1B944C96C(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
      {
        if (!*(v1 + 40) || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v0))
        {
          v4 = *(type metadata accessor for Searchfoundation_StoreButtonItem(0) + 32);
          OUTLINED_FUNCTION_163_6();
          sub_1B964C290();
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B9427004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB50, type metadata accessor for Searchfoundation_StoreButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9427084(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD940, type metadata accessor for Searchfoundation_StoreButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94270F4()
{
  sub_1B8CD3068(&qword_1EBACD940, type metadata accessor for Searchfoundation_StoreButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9427174()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC018);
  __swift_project_value_buffer(v0, qword_1EBACC018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "StoreButtonItemIdentifierTypeAdamID";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "StoreButtonItemIdentifierTypeBundleID";
  *(v10 + 1) = 37;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9427370()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC030);
  __swift_project_value_buffer(v0, qword_1EBACC030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "subtitle";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 101;
  *v28 = "team1";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 102;
  *v30 = "team2";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 103;
  *v32 = "accessibilityDescription";
  *(v32 + 1) = 24;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 104;
  *v34 = "eventStatus";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B94278B4()
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
  v1 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team1;
  v6 = type metadata accessor for Searchfoundation_SportsTeam(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team2, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B94279B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC700, &qword_1B96B9A78);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v51 - v8;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  v51 = (v1 + 58);
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  v52 = (v1 + 64);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v53 = (v1 + 80);
  *(v1 + 88) = 1;
  v9 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v54 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v10 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  v55 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  v57 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team1;
  v58 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team1;
  v14 = type metadata accessor for Searchfoundation_SportsTeam(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v59 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team2;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team2, 1, 1, v14);
  v15 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription);
  v60 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus);
  v62 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  swift_beginAccess();
  v17 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v17;
  swift_beginAccess();
  v18 = *(a1 + 24);
  v19 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v18;
  *(v1 + 32) = v19;

  swift_beginAccess();
  v21 = *(a1 + 40);
  v20 = *(a1 + 48);
  swift_beginAccess();
  v22 = *(v1 + 48);
  *(v1 + 40) = v21;
  *(v1 + 48) = v20;

  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 58);
  v23 = v51;
  swift_beginAccess();
  *v23 = v20;
  swift_beginAccess();
  v25 = *(a1 + 64);
  v24 = *(a1 + 72);
  v26 = v52;
  swift_beginAccess();
  v27 = *(v1 + 72);
  *v26 = v25;
  *(v1 + 72) = v24;

  swift_beginAccess();
  v28 = *(a1 + 80);
  LOBYTE(v27) = *(a1 + 88);
  v29 = v53;
  swift_beginAccess();
  *v29 = v28;
  *(v1 + 88) = v27;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v30 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];
  v33 = v55;
  swift_beginAccess();
  v34 = v33[1];
  *v33 = v32;
  v33[1] = v31;

  v35 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  swift_beginAccess();
  v37 = *v35;
  v36 = v35[1];
  v38 = v57;
  swift_beginAccess();
  v39 = v38[1];
  *v38 = v37;
  v38[1] = v36;

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
  v40 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription);
  swift_beginAccess();
  v42 = *v40;
  v41 = v40[1];
  v43 = v60;
  swift_beginAccess();
  v44 = v43[1];
  *v43 = v42;
  v43[1] = v41;

  v45 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus);
  swift_beginAccess();
  v47 = *v45;
  v46 = v45[1];

  v48 = v62;
  swift_beginAccess();
  v49 = v48[1];
  *v48 = v47;
  v48[1] = v46;

  return v1;
}

void *sub_1B9428054()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title + 8);

  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team1, &qword_1EBACC700, &qword_1B96B9A78);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__team2, &qword_1EBACC700, &qword_1B96B9A78);
  v7 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus + 8);

  return v0;
}

void sub_1B94281BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B9428484();
        break;
      default:
        switch(v9)
        {
          case 'e':
            sub_1B9428560();
            continue;
          case 'f':
            sub_1B942863C();
            continue;
          case 'g':
            v11 = MEMORY[0x1E69AACE0];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription;
            goto LABEL_18;
          case 'h':
            v11 = MEMORY[0x1E69AACE0];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus;
            goto LABEL_18;
          default:
            if (v9 == 51)
            {
              v11 = MEMORY[0x1E69AACE0];
              v12 = a2;
              v13 = a1;
              v14 = a3;
              v15 = a4;
              v16 = &OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
            }

            else
            {
              if (v9 != 52)
              {
                continue;
              }

              v11 = MEMORY[0x1E69AACE0];
              v12 = a2;
              v13 = a1;
              v14 = a3;
              v15 = a4;
              v16 = &OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle;
            }

LABEL_18:
            sub_1B94420D8(v12, v13, v14, v15, v16, v11);
            break;
        }

        break;
    }
  }
}

uint64_t sub_1B9428484()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9428560()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_SportsTeam(0);
  sub_1B8CD3068(&qword_1EBACD970, type metadata accessor for Searchfoundation_SportsTeam);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942863C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_SportsTeam(0);
  sub_1B8CD3068(&qword_1EBACD970, type metadata accessor for Searchfoundation_SportsTeam);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9428748(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC700, &qword_1B96B9A78);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v51 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = v50 - v8;
  v9 = type metadata accessor for Searchfoundation_SportsTeam(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50[1] = v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v54 = v50 - v17;
  v57 = type metadata accessor for Searchfoundation_Color(0);
  v18 = *(*(v57 - 1) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v53 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v50[0] = a1;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v1)
    {
    }

    a1 = v50[0];
  }

  swift_beginAccess();
  v20 = *(a1 + 32);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = *(a1 + 32);

    sub_1B964C700();
    if (!v1)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  swift_beginAccess();
  v23 = *(a1 + 48);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = *(a1 + 48);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) != 1 || (result = sub_1B964C670(), !v1))
  {
    swift_beginAccess();
    if (*(a1 + 57) != 1 || (result = sub_1B964C670(), !v1))
    {
      swift_beginAccess();
      if (*(a1 + 58) != 1 || (result = sub_1B964C670(), !v1))
      {
        swift_beginAccess();
        v27 = *(a1 + 72);
        v28 = HIBYTE(v27) & 0xF;
        if ((v27 & 0x2000000000000000) == 0)
        {
          v28 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (v28)
        {
          v29 = *(a1 + 72);

          sub_1B964C700();
          if (v1)
          {
          }
        }

        swift_beginAccess();
        if (!*(a1 + 80) || (v30 = *(a1 + 88), v55 = *(a1 + 80), v56 = v30, sub_1B92C8A2C(), result = sub_1B964C680(), !v1))
        {
          swift_beginAccess();
          v31 = v54;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v31, 1, v57) == 1)
          {
            v57 = v13;
            sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
            sub_1B964C740();
            if (v1)
            {
              return sub_1B944B0D4();
            }

            v57 = v13;
            sub_1B944B0D4();
          }

          v32 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
          swift_beginAccess();
          v33 = *v32;
          v34 = v32[1];
          v35 = HIBYTE(v34) & 0xF;
          if ((v34 & 0x2000000000000000) == 0)
          {
            v35 = v33 & 0xFFFFFFFFFFFFLL;
          }

          if (!v35 || (, sub_1B964C700(), result = , !v2))
          {
            v36 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
            swift_beginAccess();
            v37 = *v36;
            v38 = v36[1];
            v39 = HIBYTE(v38) & 0xF;
            if ((v38 & 0x2000000000000000) == 0)
            {
              v39 = v37 & 0xFFFFFFFFFFFFLL;
            }

            if (!v39 || (, sub_1B964C700(), result = , !v2))
            {
              swift_beginAccess();
              v40 = v52;
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v40, 1, v9) == 1)
              {
                sub_1B8D9207C(v40, &qword_1EBACC700, &qword_1B96B9A78);
              }

              else
              {
                sub_1B944B02C();
                sub_1B8CD3068(&qword_1EBACD970, type metadata accessor for Searchfoundation_SportsTeam);
                sub_1B964C740();
                result = sub_1B944B0D4();
                if (v2)
                {
                  return result;
                }
              }

              swift_beginAccess();
              v41 = v51;
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v41, 1, v9) == 1)
              {
                sub_1B8D9207C(v41, &qword_1EBACC700, &qword_1B96B9A78);
              }

              else
              {
                sub_1B944B02C();
                sub_1B8CD3068(&qword_1EBACD970, type metadata accessor for Searchfoundation_SportsTeam);
                sub_1B964C740();
                result = sub_1B944B0D4();
                if (v2)
                {
                  return result;
                }
              }

              v42 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription);
              swift_beginAccess();
              v43 = *v42;
              v44 = v42[1];
              v45 = HIBYTE(v44) & 0xF;
              if ((v44 & 0x2000000000000000) == 0)
              {
                v45 = v43 & 0xFFFFFFFFFFFFLL;
              }

              if (!v45 || (, sub_1B964C700(), result = , !v2))
              {
                v46 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus);
                result = swift_beginAccess();
                v47 = *v46;
                v48 = v46[1];
                v49 = HIBYTE(v48) & 0xF;
                if ((v48 & 0x2000000000000000) == 0)
                {
                  v49 = v47 & 0xFFFFFFFFFFFFLL;
                }

                if (v49)
                {

                  sub_1B964C700();
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

uint64_t sub_1B9429154(uint64_t a1, uint64_t a2)
{
  v103 = type metadata accessor for Searchfoundation_SportsTeam(0);
  v4 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v98 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDF38, &qword_1B96CA0E8);
  v6 = *(*(v105 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v105);
  v99 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v101 = &v97 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC700, &qword_1B96B9A78);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v97 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v102 = &v97 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v100 = &v97 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v97 - v18;
  v19 = type metadata accessor for Searchfoundation_Color(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v107 = &v97 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v97 - v30;
  swift_beginAccess();
  v32 = *(a1 + 16);
  swift_beginAccess();
  v33 = *(a2 + 16);

  sub_1B8D67B1C();
  v35 = v34;

  if ((v35 & 1) == 0)
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v36 = *(a1 + 24);
  v37 = *(a1 + 32);
  swift_beginAccess();
  v38 = v36 == *(a2 + 24) && v37 == *(a2 + 32);
  if (!v38 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v39 = *(a1 + 40);
  v40 = *(a1 + 48);
  swift_beginAccess();
  v41 = v39 == *(a2 + 40) && v40 == *(a2 + 48);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v42 = *(a1 + 56);
  swift_beginAccess();
  if (v42 != *(a2 + 56))
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v43 = *(a1 + 57);
  swift_beginAccess();
  if (v43 != *(a2 + 57))
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v44 = *(a1 + 58);
  swift_beginAccess();
  if (v44 != *(a2 + 58))
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v45 = *(a1 + 64);
  v46 = *(a1 + 72);
  swift_beginAccess();
  v47 = v45 == *(a2 + 64) && v46 == *(a2 + 72);
  if (!v47 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v48 = *(a1 + 80);
  v49 = *(a1 + 88);
  swift_beginAccess();
  v50 = *(a2 + 88);
  if (!sub_1B8D92198(v48, v49, *(a2 + 80)))
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v51 = *(v22 + 48);
  v52 = v107;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v52, 1, v19) == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
    if (__swift_getEnumTagSinglePayload(v52 + v51, 1, v19) == 1)
    {
      sub_1B8D9207C(v52, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v52 + v51, 1, v19) == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B944B0D4();
LABEL_26:
    v53 = &qword_1EBACB058;
    v54 = &unk_1B96CA9D0;
    v55 = v52;
LABEL_54:
    sub_1B8D9207C(v55, v53, v54);
    goto LABEL_55;
  }

  v56 = v104;
  sub_1B944B02C();
  v57 = *(v19 + 20);
  if (*&v29[v57] != *&v56[v57])
  {
    v58 = *&v29[v57];

    sub_1B947FDE4();
    v60 = v59;

    if ((v60 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B944B0D4();
      v55 = v52;
      v53 = &qword_1EBACB050;
      v54 = &unk_1B96B7BD0;
      goto LABEL_54;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v61 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B944B0D4();
  sub_1B8D9207C(v52, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_30:
  v62 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  swift_beginAccess();
  v63 = *v62;
  v64 = v62[1];
  v65 = (a2 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  swift_beginAccess();
  v66 = v63 == *v65 && v64 == v65[1];
  if (!v66 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  v67 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  v70 = (a2 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  swift_beginAccess();
  v71 = v68 == *v70 && v69 == v70[1];
  if (!v71 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  v72 = v106;
  sub_1B8D92024();
  swift_beginAccess();
  v73 = *(v105 + 48);
  v74 = v101;
  sub_1B8D92024();
  sub_1B8D92024();
  v75 = v103;
  if (__swift_getEnumTagSinglePayload(v74, 1, v103) == 1)
  {
    sub_1B8D9207C(v72, &qword_1EBACC700, &qword_1B96B9A78);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v74 + v73, 1, v75);
    v77 = v102;
    if (EnumTagSinglePayload != 1)
    {
LABEL_53:
      v53 = &qword_1EBACDF38;
      v54 = &qword_1B96CA0E8;
      v55 = v74;
      goto LABEL_54;
    }

    sub_1B8D9207C(v74, &qword_1EBACC700, &qword_1B96B9A78);
    goto LABEL_47;
  }

  v78 = v100;
  sub_1B8D92024();
  v79 = __swift_getEnumTagSinglePayload(v74 + v73, 1, v75);
  v77 = v102;
  if (v79 == 1)
  {
    sub_1B8D9207C(v106, &qword_1EBACC700, &qword_1B96B9A78);
LABEL_52:
    sub_1B944B0D4();
    goto LABEL_53;
  }

  v80 = v98;
  sub_1B944B02C();
  LODWORD(v107) = static Searchfoundation_SportsTeam.== infix(_:_:)(v78, v80);
  sub_1B944B0D4();
  sub_1B8D9207C(v106, &qword_1EBACC700, &qword_1B96B9A78);
  sub_1B944B0D4();
  sub_1B8D9207C(v74, &qword_1EBACC700, &qword_1B96B9A78);
  if ((v107 & 1) == 0)
  {
LABEL_55:

    return 0;
  }

LABEL_47:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v81 = *(v105 + 48);
  v74 = v99;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v74, 1, v75) == 1)
  {
    sub_1B8D9207C(v77, &qword_1EBACC700, &qword_1B96B9A78);
    if (__swift_getEnumTagSinglePayload(v74 + v81, 1, v75) == 1)
    {
      sub_1B8D9207C(v74, &qword_1EBACC700, &qword_1B96B9A78);
      goto LABEL_58;
    }

    goto LABEL_53;
  }

  v82 = v97;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v74 + v81, 1, v75) == 1)
  {
    sub_1B8D9207C(v77, &qword_1EBACC700, &qword_1B96B9A78);
    goto LABEL_52;
  }

  v84 = v98;
  sub_1B944B02C();
  v85 = static Searchfoundation_SportsTeam.== infix(_:_:)(v82, v84);
  sub_1B944B0D4();
  sub_1B8D9207C(v77, &qword_1EBACC700, &qword_1B96B9A78);
  sub_1B944B0D4();
  sub_1B8D9207C(v74, &qword_1EBACC700, &qword_1B96B9A78);
  if ((v85 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_58:
  v86 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription);
  swift_beginAccess();
  v87 = *v86;
  v88 = v86[1];
  v89 = (a2 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__accessibilityDescription);
  swift_beginAccess();
  v90 = v87 == *v89 && v88 == v89[1];
  if (!v90 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  v91 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus);
  swift_beginAccess();
  v92 = *v91;
  v93 = v91[1];
  v94 = (a2 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_ScoreboardCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__eventStatus);
  swift_beginAccess();
  if (v92 == *v94 && v93 == v94[1])
  {

    return 1;
  }

  v96 = sub_1B964C9F0();

  result = 0;
  if (v96)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1B942A018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB48, type metadata accessor for Searchfoundation_ScoreboardCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B942A098(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD958, type metadata accessor for Searchfoundation_ScoreboardCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B942A108()
{
  sub_1B8CD3068(&qword_1EBACD958, type metadata accessor for Searchfoundation_ScoreboardCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B942A1A0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC050);
  __swift_project_value_buffer(v0, qword_1EBACC050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "logo";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "record";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "accessibilityDescription";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "name";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "button";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "isWinner";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_SportsTeam.decodeMessage<A>(decoder:)()
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
        sub_1B942A58C();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B942A640();
        break;
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B942A58C()
{
  v0 = *(type metadata accessor for Searchfoundation_SportsTeam(0) + 40);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  return sub_1B964C580();
}

void sub_1B942A640()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 44);
  type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_30_26();
  sub_1B8CD3068(v2, v3);
  OUTLINED_FUNCTION_49_1();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void Searchfoundation_SportsTeam.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_466_1(v7, v43);
  v44 = type metadata accessor for Searchfoundation_ButtonItem(v8);
  v9 = OUTLINED_FUNCTION_59_1(v44);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_487(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_204_3();
  v18 = type metadata accessor for Searchfoundation_Image(v17);
  v19 = OUTLINED_FUNCTION_171_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_106_8();
  v45 = type metadata accessor for Searchfoundation_SportsTeam(0);
  OUTLINED_FUNCTION_1240(v45[10]);
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v22)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_220();
    sub_1B944B02C();
    OUTLINED_FUNCTION_98_9();
    sub_1B8CD3068(v23, v24);
    OUTLINED_FUNCTION_771_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_24_24();
    sub_1B944B0D4();
    if (v0)
    {
      goto LABEL_20;
    }
  }

  v25 = *v1;
  v26 = v1[1];
  OUTLINED_FUNCTION_1();
  if (!v27 || (OUTLINED_FUNCTION_764_0(), sub_1B964C700(), !v0))
  {
    v28 = v1[2];
    v29 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v30 || (OUTLINED_FUNCTION_764_0(), sub_1B964C700(), !v0))
    {
      v31 = v1[4];
      v32 = v1[5];
      OUTLINED_FUNCTION_1();
      if (!v33 || (OUTLINED_FUNCTION_764_0(), sub_1B964C700(), !v0))
      {
        v34 = v1[6];
        v35 = v1[7];
        OUTLINED_FUNCTION_1();
        if (!v36 || (OUTLINED_FUNCTION_764_0(), sub_1B964C700(), !v0))
        {
          v37 = v45[11];
          OUTLINED_FUNCTION_1316();
          v38 = OUTLINED_FUNCTION_355();
          OUTLINED_FUNCTION_81(v38, v39);
          if (v22)
          {
            sub_1B8D9207C(v46, &qword_1EBACC580, &qword_1B96B98B8);
          }

          else
          {
            OUTLINED_FUNCTION_6_35();
            sub_1B944B02C();
            OUTLINED_FUNCTION_30_26();
            sub_1B8CD3068(v40, v41);
            OUTLINED_FUNCTION_597_0();
            OUTLINED_FUNCTION_17_15();
            sub_1B964C740();
            OUTLINED_FUNCTION_16_27();
            sub_1B944B0D4();
            if (v0)
            {
              goto LABEL_20;
            }
          }

          if (*(v1 + 64) != 1 || (OUTLINED_FUNCTION_270_2(), sub_1B964C670(), !v0))
          {
            v42 = v1 + v45[9];
            OUTLINED_FUNCTION_1183();
            sub_1B964C290();
          }
        }
      }
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B942B098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB40, type metadata accessor for Searchfoundation_SportsTeam);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B942B118(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD970, type metadata accessor for Searchfoundation_SportsTeam);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B942B188()
{
  sub_1B8CD3068(&qword_1EBACD970, type metadata accessor for Searchfoundation_SportsTeam);

  return sub_1B964C5D0();
}

uint64_t sub_1B942B214()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC068);
  __swift_project_value_buffer(v0, qword_1EBACC068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B96511C0;
  v4 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v29 + v3 + v2 + v1[14];
  *(v29 + v3 + v2) = 2;
  *v8 = "button_1";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v29 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "button_2";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v29 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "button_3";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v29 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "text_2";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v29 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "text_3";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v29 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "text_4";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v29 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "text_5";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v7();
  v21 = (v29 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "thumbnail";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v23 = *MEMORY[0x1E69AADC8];
  v7();
  v24 = (v29 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "thumbnail2";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v7();
  v26 = (v29 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "buttonItemsAreBottom";
  *(v27 + 1) = 20;
  v27[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B942B648()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text1;
  v2 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button1;
  v4 = type metadata accessor for Searchfoundation_ButtonItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button2, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text3, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4) = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail;
  v6 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail2, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreBottom) = 0;
  return v0;
}

uint64_t sub_1B942B7B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text1;
  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button1;
  v13 = type metadata accessor for Searchfoundation_ButtonItem(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button2, 1, 1, v13);
  v23[1] = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button3;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button3, 1, 1, v13);
  v23[2] = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text2;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text2, 1, 1, v11);
  v23[3] = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text3;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text3, 1, 1, v11);
  v24 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4) = MEMORY[0x1E69E7CC0];
  v26 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5, 1, 1, v11);
  v14 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail;
  v25 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail;
  v15 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v27 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail2;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail2, 1, 1, v15);
  v28 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreBottom;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreBottom) = 0;
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
  v16 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4;
  swift_beginAccess();
  v17 = *(a1 + v16);
  v18 = v24;
  swift_beginAccess();
  v19 = *(v1 + v18);
  *(v1 + v18) = v17;

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
  v20 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreBottom;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + v20);

  v21 = v28;
  swift_beginAccess();
  *(v1 + v21) = v20;
  return v1;
}

uint64_t sub_1B942BEA0()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button1, &qword_1EBACC580, &qword_1B96B98B8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button2, &qword_1EBACC580, &qword_1B96B98B8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button3, &qword_1EBACC580, &qword_1B96B98B8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail2, &qword_1EBACC708, &unk_1B96D92F0);
  return v0;
}

uint64_t sub_1B942C058()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B942C210();
        break;
      case 2:
        sub_1B942C2EC();
        break;
      case 3:
        sub_1B942C3C8();
        break;
      case 4:
        sub_1B942C4A4();
        break;
      case 5:
        sub_1B942C580();
        break;
      case 6:
        sub_1B942C65C();
        break;
      case 7:
        sub_1B942C738();
        break;
      case 8:
        sub_1B942C814();
        break;
      case 9:
        sub_1B942C8F0();
        break;
      case 10:
        sub_1B942C9CC();
        break;
      case 11:
        sub_1B9442234();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B942C210()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C2EC()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C3C8()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C4A4()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C580()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C65C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C738()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B942C814()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C8F0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD3068(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942C9CC()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD3068(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B942CAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v81 = a3;
  v79 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v67 = v63 - v9;
  v65 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v10 = *(*(v65 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v65);
  v63[1] = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63[2] = v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v76 = v63 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v77 = v63 - v20;
  v78 = type metadata accessor for Searchfoundation_ButtonItem(0);
  v21 = *(*(v78 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v78);
  v71 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v73 = v63 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v75 = v63 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v64 = v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v70 = v63 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v72 = v63 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = v63 - v35;
  v37 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v63[3] = v63 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v66 = v63 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v69 = v63 - v44;
  MEMORY[0x1EEE9AC00](v43);
  swift_beginAccess();
  v45 = a1;
  v46 = v37;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    sub_1B8D9207C(v36, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v47 = v80;
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    v48 = v80;
    sub_1B964C740();
    v47 = v48;
    if (v48)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  v49 = v45;
  swift_beginAccess();
  v50 = v77;
  sub_1B8D92024();
  v51 = v78;
  if (__swift_getEnumTagSinglePayload(v50, 1, v78) == 1)
  {
    sub_1B8D9207C(v50, &qword_1EBACC580, &qword_1B96B98B8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
    sub_1B964C740();
    if (v47)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v52 = v76;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v52, 1, v51) == 1)
  {
    sub_1B8D9207C(v52, &qword_1EBACC580, &qword_1B96B98B8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
    sub_1B964C740();
    if (v47)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v53 = v74;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v53, 1, v51) == 1)
  {
    sub_1B8D9207C(v53, &qword_1EBACC580, &qword_1B96B98B8);
    goto LABEL_19;
  }

  sub_1B944B02C();
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  sub_1B964C740();
  if (v47)
  {
    return sub_1B944B0D4();
  }

  sub_1B944B0D4();
LABEL_19:
  swift_beginAccess();
  v55 = v72;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v55, 1, v46) == 1)
  {
    sub_1B8D9207C(v55, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v47)
    {
      return result;
    }
  }

  swift_beginAccess();
  v56 = v70;
  sub_1B8D92024();
  v57 = v46;
  if (__swift_getEnumTagSinglePayload(v56, 1, v46) == 1)
  {
    v58 = v68;
    sub_1B8D9207C(v56, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v47)
    {
      return result;
    }

    v58 = v68;
  }

  v59 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4;
  swift_beginAccess();
  v60 = v67;
  if (!*(*(v49 + v59) + 16) || (sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty), , sub_1B964C730(), result = , !v47))
  {
    swift_beginAccess();
    v61 = v64;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v61, 1, v57) == 1)
    {
      sub_1B8D9207C(v61, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }

    else
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
      sub_1B964C740();
      result = sub_1B944B0D4();
      if (v47)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v60, 1, v65) == 1)
    {
      sub_1B8D9207C(v60, &qword_1EBACC708, &unk_1B96D92F0);
    }

    else
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
      sub_1B964C740();
      result = sub_1B944B0D4();
      if (v47)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v58, 1, v65) == 1)
    {
      sub_1B8D9207C(v58, &qword_1EBACC708, &unk_1B96D92F0);
    }

    else
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
      sub_1B964C740();
      result = sub_1B944B0D4();
      if (v47)
      {
        return result;
      }
    }

    v62 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreBottom;
    result = swift_beginAccess();
    if (*(v49 + v62) == 1)
    {
      return sub_1B964C670();
    }
  }

  return result;
}

uint64_t sub_1B942D9D4(uint64_t a1, char *a2)
{
  v234 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v4 = *(*(v234 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v234);
  v226 = &v225 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v229 = &v225 - v7;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  v8 = *(*(v232 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v232);
  v231 = &v225 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v235 = &v225 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v227 = (&v225 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v228 = &v225 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v233 = (&v225 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v237 = &v225 - v20;
  v262 = type metadata accessor for Searchfoundation_ButtonItem(0);
  v21 = *(*(v262 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v262);
  v246 = &v225 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v251 = &v225 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v256 = &v225 - v26;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCBF8, &unk_1B96B9AC8);
  v27 = *(*(v263 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v263);
  v252 = &v225 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v255 = &v225 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v261 = &v225 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v249 = &v225 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v254 = &v225 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v253 = &v225 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v257 = &v225 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v258 = &v225 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v260 = &v225 - v45;
  v265 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v46 = *(*(v265 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v265);
  v230 = &v225 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v239 = &v225 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v241 = &v225 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v259 = &v225 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v238 = &v225 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v243 = &v225 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v247 = &v225 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v225 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x1EEE9AC00](v64 - 8);
  v236 = &v225 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v242 = &v225 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v240 = &v225 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v244 = &v225 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v245 = &v225 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v250 = &v225 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v264 = &v225 - v79;
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v225 - v80;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v248 = v54;
  v82 = *(v54 + 48);
  sub_1B8D92024();
  v83 = v265;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v63, 1, v83) == 1)
  {

    sub_1B8D9207C(v81, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(&v63[v82], 1, v83) == 1)
    {
      sub_1B8D9207C(v63, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_4;
    }

LABEL_9:
    sub_1B8D9207C(v63, &qword_1EBAB8E00, &qword_1B964D600);
    goto LABEL_40;
  }

  v89 = v264;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(&v63[v82], 1, v83) == 1)
  {

    sub_1B8D9207C(v81, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    goto LABEL_9;
  }

  v90 = v259;
  sub_1B944B02C();
  v91 = *v89;
  v92 = *v90;

  sub_1B8D5BA08();
  if ((v93 & 1) == 0 || v89[8] != v90[8])
  {
    sub_1B8D9207C(v81, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    sub_1B8D9207C(v63, &qword_1EBAB8DF8, &qword_1B96B9A80);
    goto LABEL_40;
  }

  v115 = *(v265 + 24);
  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v116 = sub_1B964C850();
  sub_1B8D9207C(v81, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v63, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v116 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_4:
  v264 = a2;
  swift_beginAccess();
  v84 = v260;
  sub_1B8D92024();
  swift_beginAccess();
  v85 = v263;
  v86 = *(v263 + 48);
  v87 = v261;
  sub_1B8D92024();
  sub_1B8D92024();
  v88 = v262;
  if (__swift_getEnumTagSinglePayload(v87, 1, v262) == 1)
  {
    sub_1B8D9207C(v84, &qword_1EBACC580, &qword_1B96B98B8);
    if (__swift_getEnumTagSinglePayload(v87 + v86, 1, v88) == 1)
    {
      sub_1B8D9207C(v87, &qword_1EBACC580, &qword_1B96B98B8);
      goto LABEL_20;
    }

LABEL_15:
    v95 = &qword_1EBACCBF8;
    v96 = &unk_1B96B9AC8;
LABEL_16:
    v97 = v87;
LABEL_39:
    sub_1B8D9207C(v97, v95, v96);
    goto LABEL_40;
  }

  v94 = v258;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v87 + v86, 1, v88) == 1)
  {
    sub_1B8D9207C(v84, &qword_1EBACC580, &qword_1B96B98B8);
    sub_1B944B0D4();
    goto LABEL_15;
  }

  v98 = v256;
  sub_1B944B02C();
  v99 = *(v88 + 20);
  v100 = *&v94[v99];
  v101 = *&v98[v99];
  if (v100 != v101)
  {

    sub_1B941D6DC(v100, v101, v102, v103, v104, v105, v106, v107, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236);
    v109 = v108;

    if ((v109 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v84, &qword_1EBACC580, &qword_1B96B98B8);
      sub_1B944B0D4();
      v97 = v87;
      v95 = &qword_1EBACC580;
      v96 = &qword_1B96B98B8;
      goto LABEL_39;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  LODWORD(v259) = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v84, &qword_1EBACC580, &qword_1B96B98B8);
  sub_1B944B0D4();
  sub_1B8D9207C(v87, &qword_1EBACC580, &qword_1B96B98B8);
  v85 = v263;
  if ((v259 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  swift_beginAccess();
  v110 = v257;
  sub_1B8D92024();
  swift_beginAccess();
  v111 = v85;
  v112 = *(v85 + 48);
  v113 = v255;
  sub_1B8D92024();
  v114 = v113;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v113, 1, v88) == 1)
  {
    sub_1B8D9207C(v110, &qword_1EBACC580, &qword_1B96B98B8);
    if (__swift_getEnumTagSinglePayload(v113 + v112, 1, v88) == 1)
    {
      sub_1B8D9207C(v113, &qword_1EBACC580, &qword_1B96B98B8);
      goto LABEL_31;
    }

LABEL_27:
    v95 = &qword_1EBACCBF8;
    v96 = &unk_1B96B9AC8;
    v97 = v114;
    goto LABEL_39;
  }

  v117 = v253;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v114 + v112, 1, v88) == 1)
  {
    sub_1B8D9207C(v257, &qword_1EBACC580, &qword_1B96B98B8);
    sub_1B944B0D4();
    goto LABEL_27;
  }

  v118 = v251;
  sub_1B944B02C();
  v119 = *(v88 + 20);
  v120 = *&v117[v119];
  v121 = *&v118[v119];
  if (v120 != v121)
  {
    v122 = *&v117[v119];

    sub_1B941D6DC(v120, v121, v123, v124, v125, v126, v127, v128, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236);
    v130 = v129;

    if ((v130 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v257, &qword_1EBACC580, &qword_1B96B98B8);
      sub_1B944B0D4();
      v187 = v255;
LABEL_69:
      v193 = &qword_1EBACC580;
      v194 = &qword_1B96B98B8;
LABEL_70:
      sub_1B8D9207C(v187, v193, v194);
      goto LABEL_40;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v131 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v257, &qword_1EBACC580, &qword_1B96B98B8);
  sub_1B944B0D4();
  sub_1B8D9207C(v255, &qword_1EBACC580, &qword_1B96B98B8);
  if ((v131 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_31:
  swift_beginAccess();
  v132 = v254;
  sub_1B8D92024();
  swift_beginAccess();
  v133 = *(v111 + 48);
  v134 = v132;
  v135 = v252;
  sub_1B8D92024();
  v136 = v135;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v135, 1, v88) == 1)
  {
    sub_1B8D9207C(v134, &qword_1EBACC580, &qword_1B96B98B8);
    if (__swift_getEnumTagSinglePayload(v135 + v133, 1, v88) == 1)
    {
      sub_1B8D9207C(v135, &qword_1EBACC580, &qword_1B96B98B8);
      goto LABEL_45;
    }

LABEL_37:
    v95 = &qword_1EBACCBF8;
    v96 = &unk_1B96B9AC8;
LABEL_38:
    v97 = v136;
    goto LABEL_39;
  }

  v137 = v249;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v136 + v133, 1, v88) == 1)
  {
    sub_1B8D9207C(v254, &qword_1EBACC580, &qword_1B96B98B8);
    sub_1B944B0D4();
    goto LABEL_37;
  }

  v140 = v246;
  sub_1B944B02C();
  v141 = *(v88 + 20);
  v142 = *&v137[v141];
  v143 = *&v140[v141];
  if (v142 != v143)
  {
    v144 = *&v137[v141];

    sub_1B941D6DC(v142, v143, v145, v146, v147, v148, v149, v150, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236);
    v152 = v151;

    if ((v152 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v254, &qword_1EBACC580, &qword_1B96B98B8);
      sub_1B944B0D4();
      v187 = v136;
      goto LABEL_69;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v153 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v254, &qword_1EBACC580, &qword_1B96B98B8);
  sub_1B944B0D4();
  sub_1B8D9207C(v136, &qword_1EBACC580, &qword_1B96B98B8);
  if ((v153 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_45:
  swift_beginAccess();
  v154 = v250;
  sub_1B8D92024();
  swift_beginAccess();
  v87 = v247;
  v155 = *(v248 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v156 = v265;
  if (__swift_getEnumTagSinglePayload(v87, 1, v265) == 1)
  {
    sub_1B8D9207C(v154, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(v87 + v155, 1, v156) != 1)
    {
LABEL_75:
      v95 = &qword_1EBAB8E00;
      v96 = &qword_1B964D600;
      goto LABEL_16;
    }

    v157 = v156;
    sub_1B8D9207C(v87, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    v188 = v245;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v87 + v155, 1, v156) == 1)
    {
      sub_1B8D9207C(v250, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_74:
      sub_1B944B0D4();
      goto LABEL_75;
    }

    v189 = v241;
    sub_1B944B02C();
    v190 = *v188;
    v191 = *v189;
    sub_1B8D5BA08();
    if ((v192 & 1) == 0 || v188[8] != v189[8])
    {
      sub_1B8D9207C(v250, &qword_1EBAB8DF8, &qword_1B96B9A80);
      sub_1B944B0D4();
      sub_1B944B0D4();
      v97 = v247;
LABEL_79:
      v95 = &qword_1EBAB8DF8;
      v96 = &qword_1B96B9A80;
      goto LABEL_39;
    }

    v157 = v156;
    v201 = *(v156 + 24);
    sub_1B964C2B0();
    sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
    v202 = sub_1B964C850();
    sub_1B8D9207C(v250, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    sub_1B8D9207C(v247, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v202 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  swift_beginAccess();
  v158 = v244;
  sub_1B8D92024();
  swift_beginAccess();
  v159 = *(v248 + 48);
  v87 = v243;
  sub_1B8D92024();
  v160 = v264;
  sub_1B8D92024();
  v161 = v157;
  if (__swift_getEnumTagSinglePayload(v87, 1, v157) == 1)
  {
    sub_1B8D9207C(v158, &qword_1EBAB8DF8, &qword_1B96B9A80);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v87 + v159, 1, v157);
    v163 = v242;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v87, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_51;
    }

    goto LABEL_75;
  }

  v195 = v240;
  sub_1B8D92024();
  v196 = __swift_getEnumTagSinglePayload(v87 + v159, 1, v157);
  v163 = v242;
  if (v196 == 1)
  {
    sub_1B8D9207C(v244, &qword_1EBAB8DF8, &qword_1B96B9A80);
    goto LABEL_74;
  }

  v197 = v239;
  sub_1B944B02C();
  v198 = *v195;
  v199 = *v197;
  sub_1B8D5BA08();
  if ((v200 & 1) == 0 || v195[8] != v197[8])
  {
    sub_1B8D9207C(v244, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v97 = v243;
    goto LABEL_79;
  }

  v204 = *(v161 + 24);
  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v205 = sub_1B964C850();
  sub_1B8D9207C(v244, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B944B0D4();
  v160 = v264;
  sub_1B944B0D4();
  sub_1B8D9207C(v243, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v205 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_51:
  v164 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4;
  swift_beginAccess();
  v165 = *(a1 + v164);
  v166 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4;
  swift_beginAccess();
  v167 = *&v160[v166];

  sub_1B8D5B224(v165, v167, v168, v169, v170, v171, v172, v173, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236);
  v175 = v174;

  if ((v175 & 1) == 0)
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v176 = *(v248 + 48);
  v177 = v163;
  v136 = v238;
  sub_1B8D92024();
  sub_1B8D92024();
  v178 = v265;
  if (__swift_getEnumTagSinglePayload(v136, 1, v265) == 1)
  {
    sub_1B8D9207C(v177, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(v136 + v176, 1, v178) == 1)
    {
      sub_1B8D9207C(v136, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_55;
    }

    goto LABEL_84;
  }

  v203 = v236;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v136 + v176, 1, v178) == 1)
  {
    sub_1B8D9207C(v242, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
LABEL_84:
    v95 = &qword_1EBAB8E00;
    v96 = &qword_1B964D600;
    goto LABEL_38;
  }

  v206 = v230;
  sub_1B944B02C();
  v207 = *v203;
  v208 = *v206;
  sub_1B8D5BA08();
  if ((v209 & 1) == 0 || *(v203 + 8) != *(v206 + 8))
  {
    sub_1B8D9207C(v242, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v187 = v238;
    v193 = &qword_1EBAB8DF8;
    v194 = &qword_1B96B9A80;
    goto LABEL_70;
  }

  v214 = *(v178 + 24);
  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v215 = sub_1B964C850();
  sub_1B8D9207C(v242, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v238, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v215 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_55:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v179 = *(v232 + 48);
  v180 = v235;
  sub_1B8D92024();
  sub_1B8D92024();
  v181 = v234;
  if (__swift_getEnumTagSinglePayload(v180, 1, v234) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v180 + v179, 1, v181) != 1)
    {
      v210 = v229;
      sub_1B944B02C();
      v211 = *v233;
      v212 = *v210;
      sub_1B8D5D124();
      if ((v213 & 1) == 0 || *(v233 + 8) != *(v229 + 8))
      {
        sub_1B8D9207C(v237, &qword_1EBACC708, &unk_1B96D92F0);
        sub_1B944B0D4();
        sub_1B944B0D4();
        v97 = v235;
LABEL_104:
        v95 = &qword_1EBACC708;
        v96 = &unk_1B96D92F0;
        goto LABEL_39;
      }

      v221 = *(v234 + 24);
      sub_1B964C2B0();
      sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
      v222 = sub_1B964C850();
      sub_1B8D9207C(v237, &qword_1EBACC708, &unk_1B96D92F0);
      sub_1B944B0D4();
      sub_1B944B0D4();
      sub_1B8D9207C(v235, &qword_1EBACC708, &unk_1B96D92F0);
      if ((v222 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_58;
    }

    sub_1B8D9207C(v237, &qword_1EBACC708, &unk_1B96D92F0);
    sub_1B944B0D4();
    v180 = v235;
    goto LABEL_92;
  }

  sub_1B8D9207C(v237, &qword_1EBACC708, &unk_1B96D92F0);
  if (__swift_getEnumTagSinglePayload(v180 + v179, 1, v181) != 1)
  {
LABEL_92:
    v95 = &qword_1EBACCC18;
    v96 = &unk_1B96D8D70;
    v97 = v180;
    goto LABEL_39;
  }

  sub_1B8D9207C(v180, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_58:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v182 = *(v232 + 48);
  v183 = v231;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v183, 1, v234) == 1)
  {
    sub_1B8D9207C(v228, &qword_1EBACC708, &unk_1B96D92F0);
    if (__swift_getEnumTagSinglePayload(v231 + v182, 1, v234) == 1)
    {
      sub_1B8D9207C(v231, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_61:
      v184 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreBottom;
      swift_beginAccess();
      LOBYTE(v184) = *(a1 + v184);

      v185 = OBJC_IVAR____TtCV10PegasusAPI44Searchfoundation_RFFactItemButtonCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItemsAreBottom;
      v186 = v264;
      swift_beginAccess();
      LOBYTE(v185) = v186[v185];

      v138 = v184 ^ v185 ^ 1;
      return v138 & 1;
    }

    goto LABEL_100;
  }

  v216 = v231;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v216 + v182, 1, v234) == 1)
  {
    sub_1B8D9207C(v228, &qword_1EBACC708, &unk_1B96D92F0);
    sub_1B944B0D4();
LABEL_100:
    v95 = &qword_1EBACCC18;
    v96 = &unk_1B96D8D70;
    v97 = v231;
    goto LABEL_39;
  }

  v217 = v226;
  sub_1B944B02C();
  v218 = *v227;
  v219 = *v217;
  sub_1B8D5D124();
  if ((v220 & 1) == 0 || *(v227 + 8) != *(v226 + 8))
  {
    sub_1B8D9207C(v228, &qword_1EBACC708, &unk_1B96D92F0);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v97 = v231;
    goto LABEL_104;
  }

  v223 = *(v234 + 24);
  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v224 = sub_1B964C850();
  sub_1B8D9207C(v228, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v231, &qword_1EBACC708, &unk_1B96D92F0);
  if (v224)
  {
    goto LABEL_61;
  }

LABEL_40:

  v138 = 0;
  return v138 & 1;
}

uint64_t sub_1B942FD28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB38, type metadata accessor for Searchfoundation_RFFactItemButtonCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B942FDA8(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBAB42F0, type metadata accessor for Searchfoundation_RFFactItemButtonCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B942FE18()
{
  sub_1B8CD3068(&qword_1EBAB42F0, type metadata accessor for Searchfoundation_RFFactItemButtonCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B942FEA4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC080);
  __swift_project_value_buffer(v0, qword_1EBACC080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_2";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_3";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "text_4";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "player";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFSimpleItemPlayerCardSection.decodeMessage<A>(decoder:)()
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
        sub_1B943023C();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B94302F0();
        break;
      case 3:
        OUTLINED_FUNCTION_970();
        OUTLINED_FUNCTION_9();
        sub_1B944A84C();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B94303A4();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B9430458();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B943023C()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0) + 24);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B94302F0()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0) + 28);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B94303A4()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0) + 32);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9430458()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0) + 36);
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  return sub_1B964C580();
}

void Searchfoundation_RFSimpleItemPlayerCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_648_0(v8);
  v44 = type metadata accessor for Searchfoundation_ButtonItem(0);
  v9 = OUTLINED_FUNCTION_59_1(v44);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  v12 = OUTLINED_FUNCTION_202();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v15 = OUTLINED_FUNCTION_183(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44_0();
  v45 = v18;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_720_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_725();
  v21 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v22 = OUTLINED_FUNCTION_163_4(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_265();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_441();
  v46 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  v27 = v46[6];
  sub_1B8D92024();
  OUTLINED_FUNCTION_90(v2);
  if (v28)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_275();
    sub_1B944B02C();
    OUTLINED_FUNCTION_31_23();
    sub_1B8CD3068(v29, v30);
    OUTLINED_FUNCTION_709_0();
    OUTLINED_FUNCTION_749();
    sub_1B964C740();
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    if (v1)
    {
      goto LABEL_20;
    }
  }

  v31 = v46[7];
  sub_1B8D92024();
  OUTLINED_FUNCTION_179_5();
  if (v28)
  {
    sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    sub_1B944B02C();
    OUTLINED_FUNCTION_31_23();
    sub_1B8CD3068(v32, v33);
    OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_687();
    sub_1B964C740();
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    if (v1)
    {
      goto LABEL_20;
    }
  }

  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_31_23(), sub_1B8CD3068(v34, v35), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
  {
    v36 = v46[8];
    sub_1B8D92024();
    OUTLINED_FUNCTION_90(v45);
    if (v28)
    {
      sub_1B8D9207C(v45, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }

    else
    {
      OUTLINED_FUNCTION_3_58();
      sub_1B944B02C();
      OUTLINED_FUNCTION_31_23();
      sub_1B8CD3068(v37, v38);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_12_31();
      sub_1B944B0D4();
      if (v1)
      {
        goto LABEL_20;
      }
    }

    v39 = v46[9];
    OUTLINED_FUNCTION_1316();
    OUTLINED_FUNCTION_37_0(v43);
    if (v28)
    {
      sub_1B8D9207C(v43, &qword_1EBACC580, &qword_1B96B98B8);
LABEL_19:
      v42 = v46[5];
      OUTLINED_FUNCTION_163_6();
      sub_1B964C290();
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_6_35();
    sub_1B944B02C();
    OUTLINED_FUNCTION_30_26();
    sub_1B8CD3068(v40, v41);
    OUTLINED_FUNCTION_597_0();
    OUTLINED_FUNCTION_687();
    sub_1B964C740();
    OUTLINED_FUNCTION_16_27();
    sub_1B944B0D4();
    if (!v1)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSimpleItemPlayerCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_139_1();
  v116 = type metadata accessor for Searchfoundation_ButtonItem(v6);
  v7 = OUTLINED_FUNCTION_59_1(v116);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v108 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v110 = v15;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCBF8, &unk_1B96B9AC8);
  OUTLINED_FUNCTION_59_1(v114);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v118 = v19;
  v20 = OUTLINED_FUNCTION_201();
  v21 = type metadata accessor for Searchfoundation_RFTextProperty(v20);
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44_0();
  v112 = v25;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_451_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_219_0();
  v28 = OUTLINED_FUNCTION_696();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  v31 = OUTLINED_FUNCTION_183(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44_0();
  v120 = v34;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_637_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_211();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v38 = OUTLINED_FUNCTION_205_4(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_44_0();
  v122 = v41;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_682();
  v133 = v43;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_87_0();
  v128 = v3;
  v130 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(0);
  v45 = *(v130 + 24);
  v46 = *(v3 + 48);
  v132 = v1;
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_48(v5);
  if (v64)
  {
    OUTLINED_FUNCTION_48(v5 + v46);
    if (v64)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_25:
    v65 = &qword_1EBAB8E00;
    v66 = &qword_1B964D600;
LABEL_29:
    v70 = v5;
LABEL_30:
    sub_1B8D9207C(v70, v65, v66);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_353();
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v5 + v46);
  if (v64)
  {
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_3_58();
  sub_1B944B02C();
  v67 = *v2;
  v68 = *v4;
  sub_1B8D5BA08();
  if ((v69 & 1) == 0 || *(v2 + 8) != *(v4 + 8))
  {
    OUTLINED_FUNCTION_62_7();
    sub_1B944B0D4();
    OUTLINED_FUNCTION_1165();
    v65 = &qword_1EBAB8DF8;
    v66 = &qword_1B96B9A80;
    goto LABEL_29;
  }

  v77 = *(v21 + 24);
  v78 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v79, v80);
  sub_1B964C850();
  OUTLINED_FUNCTION_138_5();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_257();
  sub_1B944B0D4();
  sub_1B8D9207C(v5, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v78 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_6:
  v47 = v128;
  v48 = v130;
  v49 = *(v130 + 28);
  v50 = *(v128 + 48);
  OUTLINED_FUNCTION_1057();
  sub_1B8D92024();
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_48(v133);
  if (v64)
  {
    OUTLINED_FUNCTION_48(v133 + v50);
    if (v64)
    {
      sub_1B8D9207C(v133, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_11;
    }

LABEL_36:
    v65 = &qword_1EBAB8E00;
    v66 = &qword_1B964D600;
    v70 = v133;
    goto LABEL_30;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v133 + v50);
  if (v72)
  {
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_3_58();
  sub_1B944B02C();
  v73 = *v126;
  v74 = *v124;
  sub_1B8D5BA08();
  if ((v75 & 1) == 0 || (v76 = *(v126 + 8), OUTLINED_FUNCTION_1170(), !v64))
  {
    OUTLINED_FUNCTION_62_7();
    sub_1B944B0D4();
    OUTLINED_FUNCTION_197();
    sub_1B944B0D4();
    v65 = &qword_1EBAB8DF8;
    v66 = &qword_1B96B9A80;
    v70 = v133;
    goto LABEL_30;
  }

  v82 = *(v21 + 24);
  v83 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v84, v85);
  sub_1B964C850();
  OUTLINED_FUNCTION_138_5();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_220();
  sub_1B944B0D4();
  sub_1B8D9207C(v133, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v83 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  sub_1B8D5B224(*v132, *v0, v51, v52, v53, v54, v55, v56, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130);
  if (v57)
  {
    v58 = v48[8];
    v59 = *(v47 + 48);
    OUTLINED_FUNCTION_1368();
    OUTLINED_FUNCTION_235_1();
    sub_1B8D92024();
    OUTLINED_FUNCTION_50(v47);
    if (v64)
    {
      OUTLINED_FUNCTION_48(v59 + v47);
      if (v64)
      {
        sub_1B8D9207C(v47, &qword_1EBAB8DF8, &qword_1B96B9A80);
        goto LABEL_17;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1257();
      sub_1B8D92024();
      OUTLINED_FUNCTION_48(v59 + v47);
      if (!v81)
      {
        OUTLINED_FUNCTION_3_58();
        OUTLINED_FUNCTION_1320();
        v86 = *v58;
        v87 = *v59;
        sub_1B8D5BA08();
        if ((v88 & 1) == 0 || (v89 = *(v58 + 8), OUTLINED_FUNCTION_1170(), !v64))
        {
          OUTLINED_FUNCTION_62_7();
          sub_1B944B0D4();
          OUTLINED_FUNCTION_202();
          sub_1B944B0D4();
          v65 = &qword_1EBAB8DF8;
          v66 = &qword_1B96B9A80;
          goto LABEL_55;
        }

        OUTLINED_FUNCTION_1328();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v105, v106);
        v107 = OUTLINED_FUNCTION_645_0();
        OUTLINED_FUNCTION_146_5();
        sub_1B944B0D4();
        OUTLINED_FUNCTION_311();
        sub_1B944B0D4();
        sub_1B8D9207C(v47, &qword_1EBAB8DF8, &qword_1B96B9A80);
        if ((v107 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_17:
        v60 = v48[9];
        v61 = *(v115 + 48);
        OUTLINED_FUNCTION_1122();
        v47 = v119;
        OUTLINED_FUNCTION_235_1();
        v62 = OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_81(v62, v63);
        if (v64)
        {
          OUTLINED_FUNCTION_37_0(v119 + v61);
          if (v64)
          {
            sub_1B8D9207C(v119, &qword_1EBACC580, &qword_1B96B98B8);
            goto LABEL_59;
          }
        }

        else
        {
          sub_1B8D92024();
          OUTLINED_FUNCTION_37_0(v119 + v61);
          if (!v90)
          {
            OUTLINED_FUNCTION_6_35();
            sub_1B944B02C();
            if (*(v111 + *(v117 + 20)) != *(v109 + *(v117 + 20)))
            {

              v91 = OUTLINED_FUNCTION_432();
              sub_1B941D6DC(v91, v92, v93, v94, v95, v96, v97, v98, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131);
              OUTLINED_FUNCTION_87_1();

              if ((v61 & 1) == 0)
              {
                OUTLINED_FUNCTION_72_7();
                sub_1B944B0D4();
                sub_1B944B0D4();
                v65 = &qword_1EBACC580;
                v66 = &qword_1B96B98B8;
                goto LABEL_55;
              }
            }

            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_84();
            sub_1B8CD3068(v99, v100);
            OUTLINED_FUNCTION_236();
            v101 = sub_1B964C850();
            OUTLINED_FUNCTION_80_7();
            sub_1B944B0D4();
            OUTLINED_FUNCTION_74_7();
            sub_1B944B0D4();
            sub_1B8D9207C(v47, &qword_1EBACC580, &qword_1B96B98B8);
            if ((v101 & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_59:
            v102 = v48[5];
            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_84();
            sub_1B8CD3068(v103, v104);
            v71 = sub_1B964C850();
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_16_27();
          sub_1B944B0D4();
        }

        v65 = &qword_1EBACCBF8;
        v66 = &unk_1B96B9AC8;
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_12_31();
      sub_1B944B0D4();
    }

    v65 = &qword_1EBAB8E00;
    v66 = &qword_1B964D600;
LABEL_55:
    v70 = v47;
    goto LABEL_30;
  }

LABEL_31:
  v71 = 0;
LABEL_32:
  OUTLINED_FUNCTION_264(v71);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9431368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB30, type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94313E8(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD990, type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9431458()
{
  sub_1B8CD3068(&qword_1EBACD990, type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B94314E4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC098);
  __swift_project_value_buffer(v0, qword_1EBACC098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_2";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_3";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "text_4";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "thumbnail";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADC8];
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "player";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFSummaryItemPlayerCardSection.decodeMessage<A>(decoder:)()
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
        sub_1B9431890();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9431944();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B94319F8();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B9431AAC();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B9431B60();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B9431C14();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9431890()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0) + 20);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9431944()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0) + 24);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B94319F8()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0) + 28);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9431AAC()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0) + 32);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9431B60()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0) + 36);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD3068(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9431C14()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0) + 40);
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  return sub_1B964C580();
}

void Searchfoundation_RFSummaryItemPlayerCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v78 = v0;
  v79 = v2;
  v80 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_185();
  v72 = v8;
  v9 = OUTLINED_FUNCTION_201();
  v73 = type metadata accessor for Searchfoundation_ButtonItem(v9);
  v10 = OUTLINED_FUNCTION_59_1(v73);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21();
  v70[0] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_648_0(v18);
  v71 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v19 = OUTLINED_FUNCTION_59_1(v71);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_21();
  v70[1] = v22;
  v23 = OUTLINED_FUNCTION_491();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  v26 = OUTLINED_FUNCTION_183(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44_0();
  v76 = v29;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_451_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_512_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v70 - v33;
  v35 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v36 = OUTLINED_FUNCTION_59_1(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44_0();
  v70[2] = v39;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_638_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_720_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_219_0();
  v77 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0);
  v43 = v77[5];
  OUTLINED_FUNCTION_713_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_118(v34);
  if (v44)
  {
    sub_1B8D9207C(v34, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v47 = v78;
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    sub_1B944B02C();
    OUTLINED_FUNCTION_31_23();
    sub_1B8CD3068(v45, v46);
    OUTLINED_FUNCTION_597_0();
    v0 = v78;
    sub_1B964C740();
    v47 = v0;
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    if (v0)
    {
      goto LABEL_26;
    }
  }

  v48 = v77;
  v49 = v77[6];
  sub_1B8D92024();
  OUTLINED_FUNCTION_118(v1);
  if (v44)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_492();
    sub_1B944B02C();
    OUTLINED_FUNCTION_31_23();
    sub_1B8CD3068(v50, v51);
    OUTLINED_FUNCTION_683_0();
    OUTLINED_FUNCTION_680_0();
    v0 = v47;
    sub_1B964C740();
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    if (v47)
    {
      goto LABEL_26;
    }
  }

  v52 = v48[7];
  v53 = v75;
  sub_1B8D92024();
  OUTLINED_FUNCTION_118(v53);
  v54 = v76;
  if (v44)
  {
    sub_1B8D9207C(v53, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_1257();
    sub_1B944B02C();
    OUTLINED_FUNCTION_31_23();
    sub_1B8CD3068(v55, v56);
    OUTLINED_FUNCTION_257_0();
    v0 = v47;
    sub_1B964C740();
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    if (v47)
    {
      goto LABEL_26;
    }
  }

  v57 = v48[8];
  sub_1B8D92024();
  OUTLINED_FUNCTION_118(v54);
  if (v44)
  {
    sub_1B8D9207C(v54, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v58 = v74;
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    sub_1B944B02C();
    OUTLINED_FUNCTION_31_23();
    sub_1B8CD3068(v59, v60);
    OUTLINED_FUNCTION_709_0();
    OUTLINED_FUNCTION_762_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    v58 = v74;
    if (v0)
    {
      goto LABEL_26;
    }
  }

  v61 = v48[9];
  sub_1B8D92024();
  v62 = OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_178(v62, v63, v71);
  v64 = v72;
  if (v44)
  {
    sub_1B8D9207C(v58, &qword_1EBACC708, &unk_1B96D92F0);
  }

  else
  {
    OUTLINED_FUNCTION_13_28();
    sub_1B944B02C();
    OUTLINED_FUNCTION_969();
    sub_1B8CD3068(v65, v66);
    OUTLINED_FUNCTION_683_0();
    OUTLINED_FUNCTION_762_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_189_3();
    sub_1B944B0D4();
    if (v0)
    {
      goto LABEL_26;
    }
  }

  v67 = v77[10];
  sub_1B8D92024();
  OUTLINED_FUNCTION_90(v64);
  if (v44)
  {
    sub_1B8D9207C(v64, &qword_1EBACC580, &qword_1B96B98B8);
LABEL_25:
    OUTLINED_FUNCTION_862_0();
    OUTLINED_FUNCTION_80_6();
    sub_1B964C290();
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_6_35();
  sub_1B944B02C();
  OUTLINED_FUNCTION_30_26();
  sub_1B8CD3068(v68, v69);
  OUTLINED_FUNCTION_709_0();
  OUTLINED_FUNCTION_762_0();
  sub_1B964C740();
  OUTLINED_FUNCTION_16_27();
  sub_1B944B0D4();
  if (!v0)
  {
    goto LABEL_25;
  }

LABEL_26:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSummaryItemPlayerCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_1177();
  v145 = type metadata accessor for Searchfoundation_ButtonItem(v4);
  v5 = OUTLINED_FUNCTION_59_1(v145);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_247_0(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_185();
  v142 = v13;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCBF8, &unk_1B96B9AC8);
  OUTLINED_FUNCTION_59_1(v144);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_185();
  v146 = v17;
  v18 = OUTLINED_FUNCTION_201();
  v150 = type metadata accessor for Searchfoundation_RFVisualProperty(v18);
  v19 = OUTLINED_FUNCTION_59_1(v150);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_21();
  v143 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_185();
  v147 = v27;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1(v149);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_185();
  v151 = v31;
  v32 = OUTLINED_FUNCTION_201();
  v33 = type metadata accessor for Searchfoundation_RFTextProperty(v32);
  v34 = OUTLINED_FUNCTION_126_1(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44_0();
  v148 = v37;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_682();
  v153 = v39;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_638_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_87_0();
  v42 = OUTLINED_FUNCTION_176_1();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
  v45 = OUTLINED_FUNCTION_183(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_44_0();
  v152 = v48;
  OUTLINED_FUNCTION_230();
  v50 = MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_688_0(v50, v51, v52, v53, v54, v55, v56, v57, v139);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_451_1();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_1247();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v61 = OUTLINED_FUNCTION_59_1(v60);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_44_0();
  v154 = v64;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_675_0();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_682();
  v159 = v67;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_441();
  v157 = v60;
  v158 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(0);
  v69 = v158[5];
  v70 = *(v60 + 48);
  OUTLINED_FUNCTION_225_4();
  sub_1B8D92024();
  OUTLINED_FUNCTION_1358();
  sub_1B8D92024();
  OUTLINED_FUNCTION_9_2();
  if (v84)
  {
    OUTLINED_FUNCTION_57(v1 + v70);
    if (v84)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_492();
    sub_1B8D92024();
    OUTLINED_FUNCTION_57(v1 + v70);
    if (!v84)
    {
      OUTLINED_FUNCTION_3_58();
      sub_1B944B02C();
      v87 = *v2;
      v88 = *v3;
      sub_1B8D5BA08();
      if ((v89 & 1) == 0 || *(v2 + 8) != *(v3 + 8))
      {
        OUTLINED_FUNCTION_62_7();
        sub_1B944B0D4();
        OUTLINED_FUNCTION_427();
        sub_1B944B0D4();
        v85 = &qword_1EBAB8DF8;
        v86 = &qword_1B96B9A80;
        goto LABEL_38;
      }

      v95 = *(v0 + 24);
      v96 = sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v97, v98);
      sub_1B964C850();
      OUTLINED_FUNCTION_138_5();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_867_0();
      sub_1B944B0D4();
      sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
      if ((v96 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_6:
      v71 = v158[6];
      v72 = *(v157 + 48);
      OUTLINED_FUNCTION_840_0();
      sub_1B8D92024();
      OUTLINED_FUNCTION_164_1();
      OUTLINED_FUNCTION_57(v159);
      if (v84)
      {
        OUTLINED_FUNCTION_57(v159 + v72);
        if (v84)
        {
          sub_1B8D9207C(v159, &qword_1EBAB8DF8, &qword_1B96B9A80);
          goto LABEL_11;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1256();
        sub_1B8D92024();
        OUTLINED_FUNCTION_57(v159 + v72);
        if (!v92)
        {
          OUTLINED_FUNCTION_3_58();
          OUTLINED_FUNCTION_1257();
          sub_1B944B02C();
          v93 = *v159;
          sub_1B8D5BA08();
          if ((v94 & 1) == 0 || *(v159 + 8))
          {
            OUTLINED_FUNCTION_146_5();
            sub_1B944B0D4();
            OUTLINED_FUNCTION_128();
            sub_1B944B0D4();
            v85 = &qword_1EBAB8DF8;
            v86 = &qword_1B96B9A80;
            v90 = v159;
            goto LABEL_39;
          }

          v103 = *(v0 + 24);
          v104 = sub_1B964C2B0();
          OUTLINED_FUNCTION_0_84();
          sub_1B8CD3068(v105, v106);
          OUTLINED_FUNCTION_296();
          sub_1B964C850();
          OUTLINED_FUNCTION_138_5();
          sub_1B944B0D4();
          OUTLINED_FUNCTION_472();
          sub_1B944B0D4();
          sub_1B8D9207C(v159, &qword_1EBAB8DF8, &qword_1B96B9A80);
          if ((v104 & 1) == 0)
          {
            goto LABEL_40;
          }

LABEL_11:
          v73 = v158[7];
          v74 = *(v157 + 48);
          v75 = v156;
          OUTLINED_FUNCTION_235_1();
          OUTLINED_FUNCTION_235_1();
          OUTLINED_FUNCTION_57(v156);
          if (v84)
          {
            OUTLINED_FUNCTION_57(v156 + v74);
            if (!v84)
            {
              goto LABEL_62;
            }

            sub_1B8D9207C(v156, &qword_1EBAB8DF8, &qword_1B96B9A80);
          }

          else
          {
            sub_1B8D92024();
            OUTLINED_FUNCTION_57(v156 + v74);
            if (v99)
            {
              goto LABEL_61;
            }

            OUTLINED_FUNCTION_3_58();
            sub_1B944B02C();
            v100 = *v155;
            v101 = *v153;
            sub_1B8D5BA08();
            if ((v102 & 1) == 0 || *(v155 + 8) != *(v153 + 8))
            {
              goto LABEL_65;
            }

            v112 = *(v0 + 24);
            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_84();
            sub_1B8CD3068(v113, v114);
            OUTLINED_FUNCTION_1358();
            LOBYTE(v112) = sub_1B964C850();
            OUTLINED_FUNCTION_146_5();
            sub_1B944B0D4();
            OUTLINED_FUNCTION_311();
            sub_1B944B0D4();
            sub_1B8D9207C(v156, &qword_1EBAB8DF8, &qword_1B96B9A80);
            if ((v112 & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v76 = v158[8];
          v77 = *(v157 + 48);
          v75 = v154;
          OUTLINED_FUNCTION_235_1();
          OUTLINED_FUNCTION_235_1();
          OUTLINED_FUNCTION_57(v154);
          if (v84)
          {
            OUTLINED_FUNCTION_57(v154 + v77);
            if (v84)
            {
              sub_1B8D9207C(v154, &qword_1EBAB8DF8, &qword_1B96B9A80);
              goto LABEL_21;
            }

LABEL_62:
            v85 = &qword_1EBAB8E00;
            v86 = &qword_1B964D600;
LABEL_66:
            v90 = v75;
            goto LABEL_39;
          }

          sub_1B8D92024();
          OUTLINED_FUNCTION_57(v154 + v77);
          if (!v107)
          {
            OUTLINED_FUNCTION_3_58();
            sub_1B944B02C();
            v108 = *v152;
            v109 = *v148;
            sub_1B8D5BA08();
            if ((v110 & 1) == 0 || (v111 = *(v152 + 8), OUTLINED_FUNCTION_1170(), !v84))
            {
LABEL_65:
              OUTLINED_FUNCTION_62_7();
              sub_1B944B0D4();
              sub_1B944B0D4();
              v85 = &qword_1EBAB8DF8;
              v86 = &qword_1B96B9A80;
              goto LABEL_66;
            }

            OUTLINED_FUNCTION_1328();
            OUTLINED_FUNCTION_0_84();
            sub_1B8CD3068(v120, v121);
            v122 = OUTLINED_FUNCTION_845_0();
            OUTLINED_FUNCTION_146_5();
            sub_1B944B0D4();
            OUTLINED_FUNCTION_200();
            sub_1B944B0D4();
            sub_1B8D9207C(v154, &qword_1EBAB8DF8, &qword_1B96B9A80);
            if ((v122 & 1) == 0)
            {
              goto LABEL_40;
            }

LABEL_21:
            v1 = v158[9];
            v78 = *(v149 + 48);
            OUTLINED_FUNCTION_493_0();
            OUTLINED_FUNCTION_804_0();
            v79 = OUTLINED_FUNCTION_602();
            OUTLINED_FUNCTION_44(v79, v80);
            if (v84)
            {
              OUTLINED_FUNCTION_48(v1 + v78);
              if (v84)
              {
                sub_1B8D9207C(v1, &qword_1EBACC708, &unk_1B96D92F0);
                goto LABEL_26;
              }
            }

            else
            {
              sub_1B8D92024();
              OUTLINED_FUNCTION_48(v1 + v78);
              if (!v115)
              {
                OUTLINED_FUNCTION_13_28();
                sub_1B944B02C();
                v116 = *v147;
                v117 = *v143;
                sub_1B8D5D124();
                if ((v118 & 1) == 0 || (v119 = *(v147 + 8), OUTLINED_FUNCTION_1170(), !v84))
                {
                  OUTLINED_FUNCTION_1022();
                  sub_1B944B0D4();
                  OUTLINED_FUNCTION_1165();
                  v85 = &qword_1EBACC708;
                  v86 = &unk_1B96D92F0;
                  goto LABEL_38;
                }

                OUTLINED_FUNCTION_1328();
                OUTLINED_FUNCTION_0_84();
                sub_1B8CD3068(v137, v138);
                OUTLINED_FUNCTION_845_0();
                OUTLINED_FUNCTION_950();
                sub_1B944B0D4();
                OUTLINED_FUNCTION_200();
                sub_1B944B0D4();
                sub_1B8D9207C(v1, &qword_1EBACC708, &unk_1B96D92F0);
                if ((v150 & 1) == 0)
                {
                  goto LABEL_40;
                }

LABEL_26:
                v1 = v158[10];
                v81 = *(v144 + 48);
                OUTLINED_FUNCTION_493_0();
                OUTLINED_FUNCTION_804_0();
                v82 = OUTLINED_FUNCTION_602();
                OUTLINED_FUNCTION_81(v82, v83);
                if (v84)
                {
                  OUTLINED_FUNCTION_37_0(v1 + v81);
                  if (v84)
                  {
                    sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
                    goto LABEL_85;
                  }
                }

                else
                {
                  sub_1B8D92024();
                  OUTLINED_FUNCTION_37_0(v1 + v81);
                  if (!v123)
                  {
                    OUTLINED_FUNCTION_6_35();
                    sub_1B944B02C();
                    if (*(v142 + *(v145 + 20)) != *(v141 + *(v145 + 20)))
                    {

                      v124 = OUTLINED_FUNCTION_432();
                      sub_1B941D6DC(v124, v125, v126, v127, v128, v129, v130, v131, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
                      OUTLINED_FUNCTION_87_1();

                      if ((v81 & 1) == 0)
                      {
                        OUTLINED_FUNCTION_72_7();
                        sub_1B944B0D4();
                        sub_1B944B0D4();
                        v85 = &qword_1EBACC580;
                        v86 = &qword_1B96B98B8;
                        goto LABEL_38;
                      }
                    }

                    sub_1B964C2B0();
                    OUTLINED_FUNCTION_0_84();
                    sub_1B8CD3068(v132, v133);
                    OUTLINED_FUNCTION_439_0();
                    v134 = sub_1B964C850();
                    OUTLINED_FUNCTION_80_7();
                    sub_1B944B0D4();
                    OUTLINED_FUNCTION_74_7();
                    sub_1B944B0D4();
                    sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
                    if ((v134 & 1) == 0)
                    {
                      goto LABEL_40;
                    }

LABEL_85:
                    sub_1B964C2B0();
                    OUTLINED_FUNCTION_0_84();
                    sub_1B8CD3068(v135, v136);
                    OUTLINED_FUNCTION_683_0();
                    OUTLINED_FUNCTION_89_10();
                    v91 = sub_1B964C850();
                    goto LABEL_41;
                  }

                  OUTLINED_FUNCTION_16_27();
                  sub_1B944B0D4();
                }

                v85 = &qword_1EBACCBF8;
                v86 = &unk_1B96B9AC8;
                goto LABEL_38;
              }

              OUTLINED_FUNCTION_189_3();
              sub_1B944B0D4();
            }

            v85 = &qword_1EBACCC18;
            v86 = &unk_1B96D8D70;
            goto LABEL_38;
          }

LABEL_61:
          OUTLINED_FUNCTION_12_31();
          sub_1B944B0D4();
          goto LABEL_62;
        }

        OUTLINED_FUNCTION_12_31();
        sub_1B944B0D4();
      }

      v85 = &qword_1EBAB8E00;
      v86 = &qword_1B964D600;
      v90 = v159;
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
  }

  v85 = &qword_1EBAB8E00;
  v86 = &qword_1B964D600;
LABEL_38:
  v90 = v1;
LABEL_39:
  sub_1B8D9207C(v90, v85, v86);
LABEL_40:
  v91 = 0;
LABEL_41:
  OUTLINED_FUNCTION_264(v91);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94330E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB28, type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9433168(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD9A8, type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94331D8()
{
  sub_1B8CD3068(&qword_1EBACD9A8, type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B9433270()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC0B0);
  __swift_project_value_buffer(v0, qword_1EBACC0B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "number";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_1";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "button";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFFactItemHeroButtonCardSection.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9433684();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B94335D0();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B943351C();
        break;
    }
  }

  return result;
}

uint64_t sub_1B943351C()
{
  v0 = *(type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(0) + 20);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B94335D0()
{
  v0 = *(type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(0) + 24);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9433684()
{
  v0 = *(type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(0) + 28);
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  return sub_1B964C580();
}

void Searchfoundation_RFFactItemHeroButtonCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v52 = v1;
  v53 = v3;
  v4 = v0;
  v54 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_136(v10);
  v51 = type metadata accessor for Searchfoundation_ButtonItem(0);
  v11 = OUTLINED_FUNCTION_59_1(v51);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v14);
  v15 = OUTLINED_FUNCTION_492();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  v18 = OUTLINED_FUNCTION_183(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_93_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v50 - v22;
  v24 = OUTLINED_FUNCTION_1141();
  v25 = type metadata accessor for Searchfoundation_RFTextProperty(v24);
  v26 = OUTLINED_FUNCTION_201_5(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_219_0();
  v30 = type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(0);
  v31 = v30[5];
  v55 = v4;
  sub_1B8D92024();
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_178(v32, v33, v34);
  if (v35)
  {
    sub_1B8D9207C(v23, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_616();
    sub_1B944B02C();
    OUTLINED_FUNCTION_31_23();
    sub_1B8CD3068(v36, v37);
    OUTLINED_FUNCTION_597_0();
    v1 = v52;
    sub_1B964C740();
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  v38 = v30[6];
  sub_1B8D92024();
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_178(v39, v40, v41);
  if (v35)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_220();
    sub_1B944B02C();
    OUTLINED_FUNCTION_31_23();
    sub_1B8CD3068(v42, v43);
    OUTLINED_FUNCTION_257_0();
    OUTLINED_FUNCTION_270_2();
    sub_1B964C740();
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  v44 = v30[7];
  v45 = v50[2];
  sub_1B8D92024();
  v46 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v46, v47, v51);
  if (v35)
  {
    sub_1B8D9207C(v45, &qword_1EBACC580, &qword_1B96B98B8);
LABEL_13:
    OUTLINED_FUNCTION_616();
    OUTLINED_FUNCTION_270_2();
    sub_1B964C290();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_1340();
  sub_1B944B02C();
  OUTLINED_FUNCTION_30_26();
  sub_1B8CD3068(v48, v49);
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_1174();
  sub_1B964C740();
  OUTLINED_FUNCTION_16_27();
  sub_1B944B0D4();
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFFactItemHeroButtonCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_1177();
  v89 = type metadata accessor for Searchfoundation_ButtonItem(v6);
  v7 = OUTLINED_FUNCTION_59_1(v89);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v85 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v86 = v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCBF8, &unk_1B96B9AC8);
  OUTLINED_FUNCTION_59_1(v88);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_648_0(v19);
  v20 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  v87 = v24;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_487(v26);
  v27 = OUTLINED_FUNCTION_542();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  v30 = OUTLINED_FUNCTION_183(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44_0();
  v91 = v33;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_219_0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v36 = OUTLINED_FUNCTION_205_4(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44_0();
  v94 = v39;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_441();
  v93 = type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(0);
  v41 = v93[5];
  v42 = *(v2 + 48);
  v95 = v1;
  OUTLINED_FUNCTION_225_4();
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v0);
  if (v50)
  {
    OUTLINED_FUNCTION_48(v0 + v42);
    if (v50)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_48(v0 + v42);
    if (!v50)
    {
      OUTLINED_FUNCTION_3_58();
      OUTLINED_FUNCTION_1336();
      sub_1B944B02C();
      v53 = *v3;
      v54 = *v42;
      sub_1B8D5BA08();
      if ((v55 & 1) == 0 || *(v3 + 8) != *(v42 + 8))
      {
        OUTLINED_FUNCTION_62_7();
        sub_1B944B0D4();
        OUTLINED_FUNCTION_218();
        sub_1B944B0D4();
        v51 = &qword_1EBAB8DF8;
        v52 = &qword_1B96B9A80;
        goto LABEL_23;
      }

      v61 = *(v20 + 24);
      v62 = sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v63, v64);
      sub_1B964C850();
      OUTLINED_FUNCTION_138_5();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_190_0();
      sub_1B944B0D4();
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
      if ((v62 & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_6:
      v43 = v93[6];
      v44 = *(v2 + 48);
      OUTLINED_FUNCTION_89_10();
      sub_1B8D92024();
      OUTLINED_FUNCTION_164_1();
      OUTLINED_FUNCTION_48(v94);
      if (v50)
      {
        OUTLINED_FUNCTION_48(v94 + v44);
        if (v50)
        {
          sub_1B8D9207C(v94, &qword_1EBAB8DF8, &qword_1B96B9A80);
          goto LABEL_11;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1256();
        sub_1B8D92024();
        OUTLINED_FUNCTION_48(v94 + v44);
        if (!v57)
        {
          OUTLINED_FUNCTION_3_58();
          sub_1B944B02C();
          v58 = *v87;
          sub_1B8D5BA08();
          if ((v59 & 1) == 0 || (OUTLINED_FUNCTION_1170(), !v50))
          {
            OUTLINED_FUNCTION_62_7();
            sub_1B944B0D4();
            OUTLINED_FUNCTION_182();
            sub_1B944B0D4();
            v51 = &qword_1EBAB8DF8;
            v52 = &qword_1B96B9A80;
            goto LABEL_31;
          }

          OUTLINED_FUNCTION_1328();
          OUTLINED_FUNCTION_0_84();
          sub_1B8CD3068(v82, v83);
          OUTLINED_FUNCTION_296();
          v84 = OUTLINED_FUNCTION_518();
          OUTLINED_FUNCTION_146_5();
          sub_1B944B0D4();
          OUTLINED_FUNCTION_128();
          sub_1B944B0D4();
          sub_1B8D9207C(v94, &qword_1EBAB8DF8, &qword_1B96B9A80);
          if ((v84 & 1) == 0)
          {
            goto LABEL_33;
          }

LABEL_11:
          v45 = v93[7];
          v46 = *(v88 + 48);
          v47 = v90;
          OUTLINED_FUNCTION_493_0();
          OUTLINED_FUNCTION_865();
          v48 = OUTLINED_FUNCTION_602();
          OUTLINED_FUNCTION_81(v48, v49);
          if (v50)
          {
            OUTLINED_FUNCTION_37_0(v90 + v46);
            if (v50)
            {
              sub_1B8D9207C(v90, &qword_1EBACC580, &qword_1B96B98B8);
              goto LABEL_45;
            }
          }

          else
          {
            sub_1B8D92024();
            OUTLINED_FUNCTION_37_0(v90 + v46);
            if (!v65)
            {
              OUTLINED_FUNCTION_6_35();
              sub_1B944B02C();
              v66 = *(v89 + 20);
              v67 = *(v86 + v66);
              OUTLINED_FUNCTION_1345(v66);
              if (v68 || (, , v69 = OUTLINED_FUNCTION_432(), sub_1B941D6DC(v69, v70, v71, v72, v73, v74, v75, v76, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v5), OUTLINED_FUNCTION_87_1(), , (v46 & 1) != 0))
              {
                sub_1B964C2B0();
                OUTLINED_FUNCTION_0_84();
                sub_1B8CD3068(v77, v78);
                OUTLINED_FUNCTION_303();
                v79 = sub_1B964C850();
                OUTLINED_FUNCTION_80_7();
                sub_1B944B0D4();
                OUTLINED_FUNCTION_74_7();
                sub_1B944B0D4();
                sub_1B8D9207C(v47, &qword_1EBACC580, &qword_1B96B98B8);
                if ((v79 & 1) == 0)
                {
                  goto LABEL_33;
                }

LABEL_45:
                sub_1B964C2B0();
                OUTLINED_FUNCTION_0_84();
                sub_1B8CD3068(v80, v81);
                OUTLINED_FUNCTION_220();
                v60 = sub_1B964C850();
                goto LABEL_34;
              }

              OUTLINED_FUNCTION_72_7();
              sub_1B944B0D4();
              sub_1B944B0D4();
              v51 = &qword_1EBACC580;
              v52 = &qword_1B96B98B8;
LABEL_41:
              v56 = v47;
              goto LABEL_32;
            }

            OUTLINED_FUNCTION_16_27();
            sub_1B944B0D4();
          }

          v51 = &qword_1EBACCBF8;
          v52 = &unk_1B96B9AC8;
          goto LABEL_41;
        }

        OUTLINED_FUNCTION_12_31();
        sub_1B944B0D4();
      }

      v51 = &qword_1EBAB8E00;
      v52 = &qword_1B964D600;
LABEL_31:
      v56 = v94;
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
  }

  v51 = &qword_1EBAB8E00;
  v52 = &qword_1B964D600;
LABEL_23:
  v56 = v0;
LABEL_32:
  sub_1B8D9207C(v56, v51, v52);
LABEL_33:
  v60 = 0;
LABEL_34:
  OUTLINED_FUNCTION_264(v60);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94342A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB20, type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9434324(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD9C0, type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9434394()
{
  sub_1B8CD3068(&qword_1EBACD9C0, type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B9434420()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC0C8);
  __swift_project_value_buffer(v0, qword_1EBACC0C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B964EE80;
  v4 = v25 + v3 + v1[14];
  *(v25 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v25 + v3 + v2 + v1[14];
  *(v25 + v3 + v2) = 2;
  *v8 = "button_1";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v25 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "button_2";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v25 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "button_3";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v25 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "text_2";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v25 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "text_3";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v25 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "text_4";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v25 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "thumbnail";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v21 = *MEMORY[0x1E69AADC8];
  v7();
  v22 = (v25 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "buttonItemsAreTrailing";
  *(v23 + 1) = 22;
  v23[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_RFSummaryItemButtonCardSection.decodeMessage<A>(decoder:)()
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
        sub_1B94348F0();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B94349A4();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9434A58();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B942A640();
        break;
      case 5:
        OUTLINED_FUNCTION_970();
        OUTLINED_FUNCTION_9();
        sub_1B944A84C();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B9434B0C();
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B9434BAC();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B9434C60();
        break;
      case 9:
        OUTLINED_FUNCTION_507_0();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B94348F0()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(0) + 32);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B94349A4()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(0) + 36);
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  return sub_1B964C580();
}

uint64_t sub_1B9434A58()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(0) + 40);
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  return sub_1B964C580();
}

uint64_t sub_1B9434B0C()
{
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C570();
}

uint64_t sub_1B9434BAC()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(0) + 48);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B9434C60()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(0) + 52);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD3068(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

void Searchfoundation_RFSummaryItemButtonCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v105 = v1;
  v106 = v3;
  v4 = v0;
  v107 = v5;
  v104 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v101 = v11;
  v12 = OUTLINED_FUNCTION_201();
  v98 = type metadata accessor for Searchfoundation_RFVisualProperty(v12);
  v13 = OUTLINED_FUNCTION_59_1(v98);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21();
  v96 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  v18 = OUTLINED_FUNCTION_183(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44_0();
  v102 = v21;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_675_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_447_0();
  v103 = type metadata accessor for Searchfoundation_ButtonItem(0);
  v24 = OUTLINED_FUNCTION_59_1(v103);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44_0();
  v99 = v27;
  OUTLINED_FUNCTION_230();
  v29 = MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_688_0(v29, v30, v31, v32, v33, v34, v35, v36, v94);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_219_0();
  v38 = OUTLINED_FUNCTION_353();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
  v41 = OUTLINED_FUNCTION_183(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44_0();
  v100 = v44;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v94 - v46;
  v48 = OUTLINED_FUNCTION_1141();
  v49 = type metadata accessor for Searchfoundation_RFTextProperty(v48);
  v50 = OUTLINED_FUNCTION_59_1(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44_0();
  v97 = v53;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_725();
  v108 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(0);
  v55 = v108[8];
  v56 = v4;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v47, 1, v49);
  if (v57)
  {
    v95 = v49;
    v58 = v104;
    sub_1B8D9207C(v47, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v59 = v105;
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_176_1();
    sub_1B944B02C();
    OUTLINED_FUNCTION_31_23();
    sub_1B8CD3068(v60, v61);
    OUTLINED_FUNCTION_272_2();
    v62 = v104;
    v1 = v105;
    sub_1B964C740();
    v59 = v1;
    if (v1)
    {
      OUTLINED_FUNCTION_12_31();
      sub_1B944B0D4();
      goto LABEL_35;
    }

    v95 = v49;
    v58 = v62;
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
  }

  v63 = v108[9];
  sub_1B8D92024();
  v64 = OUTLINED_FUNCTION_207();
  v65 = v103;
  OUTLINED_FUNCTION_81(v64, v66);
  if (v57)
  {
    sub_1B8D9207C(v2, &qword_1EBACC580, &qword_1B96B98B8);
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_253();
    sub_1B944B02C();
    OUTLINED_FUNCTION_30_26();
    sub_1B8CD3068(v67, v68);
    OUTLINED_FUNCTION_597_0();
    v58 = v65;
    v1 = v59;
    sub_1B964C740();
    OUTLINED_FUNCTION_16_27();
    sub_1B944B0D4();
    if (v59)
    {
      goto LABEL_35;
    }
  }

  v69 = v108[10];
  OUTLINED_FUNCTION_1368();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v58);
  v70 = v102;
  if (v57)
  {
    sub_1B8D9207C(v58, &qword_1EBACC580, &qword_1B96B98B8);
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    sub_1B944B02C();
    OUTLINED_FUNCTION_30_26();
    sub_1B8CD3068(v71, v72);
    OUTLINED_FUNCTION_1382();
    v59 = v1;
    OUTLINED_FUNCTION_16_27();
    sub_1B944B0D4();
    if (v1)
    {
      goto LABEL_35;
    }
  }

  v73 = v108[11];
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v70);
  v74 = v101;
  if (v57)
  {
    sub_1B8D9207C(v70, &qword_1EBACC580, &qword_1B96B98B8);
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    sub_1B944B02C();
    OUTLINED_FUNCTION_30_26();
    sub_1B8CD3068(v75, v76);
    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_1382();
    v59 = v1;
    OUTLINED_FUNCTION_16_27();
    sub_1B944B0D4();
    if (v1)
    {
      goto LABEL_35;
    }
  }

  if (!*(*v56 + 16) || (OUTLINED_FUNCTION_31_23(), sub_1B8CD3068(v77, v78), OUTLINED_FUNCTION_129(), v1 = v59, sub_1B964C730(), !v59))
  {
    v79 = v100;
    if (*(*(v56 + 8) + 16))
    {
      OUTLINED_FUNCTION_31_23();
      sub_1B8CD3068(v80, v81);
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_1237();
      sub_1B964C730();
      v59 = v1;
      if (v1)
      {
        goto LABEL_35;
      }

      v79 = v100;
    }

    v82 = v108[12];
    sub_1B8D92024();
    v83 = OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_81(v83, v84);
    v85 = v98;
    if (v57)
    {
      sub_1B8D9207C(v79, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }

    else
    {
      OUTLINED_FUNCTION_3_58();
      sub_1B944B02C();
      OUTLINED_FUNCTION_31_23();
      sub_1B8CD3068(v86, v87);
      OUTLINED_FUNCTION_597_0();
      OUTLINED_FUNCTION_1237();
      sub_1B964C740();
      v59 = v1;
      OUTLINED_FUNCTION_12_31();
      sub_1B944B0D4();
      if (v1)
      {
        goto LABEL_35;
      }
    }

    v88 = v108[13];
    sub_1B8D92024();
    v89 = OUTLINED_FUNCTION_602();
    OUTLINED_FUNCTION_178(v89, v90, v85);
    if (v57)
    {
      sub_1B8D9207C(v74, &qword_1EBACC708, &unk_1B96D92F0);
    }

    else
    {
      OUTLINED_FUNCTION_13_28();
      sub_1B944B02C();
      OUTLINED_FUNCTION_969();
      sub_1B8CD3068(v91, v92);
      OUTLINED_FUNCTION_709_0();
      OUTLINED_FUNCTION_1237();
      sub_1B964C740();
      v59 = v1;
      OUTLINED_FUNCTION_189_3();
      sub_1B944B0D4();
      if (v1)
      {
        goto LABEL_35;
      }
    }

    if (*(v56 + 16) != 1 || (sub_1B964C670(), !v59))
    {
      v93 = v56 + v108[7];
      sub_1B964C290();
    }
  }

LABEL_35:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSummaryItemButtonCardSection.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v28 = OUTLINED_FUNCTION_1121();
  v235 = type metadata accessor for Searchfoundation_RFVisualProperty(v28);
  v29 = OUTLINED_FUNCTION_59_1(v235);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_247_0(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_185();
  v232 = v37;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1(v234);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_185();
  v236 = v41;
  v42 = OUTLINED_FUNCTION_201();
  v246 = type metadata accessor for Searchfoundation_ButtonItem(v42);
  v43 = OUTLINED_FUNCTION_59_1(v246);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44_0();
  v240 = v46;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_674_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_266_0();
  v243 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  v51 = OUTLINED_FUNCTION_183(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44_0();
  v241 = v54;
  OUTLINED_FUNCTION_230();
  v56 = MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_688_0(v56, v57, v58, v59, v60, v61, v62, v63, v230);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_251(v65);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCBF8, &unk_1B96B9AC8);
  v66 = OUTLINED_FUNCTION_59_1(v250);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_44_0();
  v242 = v69;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_638_0();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_266_0();
  v249 = v72;
  v73 = OUTLINED_FUNCTION_201();
  v74 = type metadata accessor for Searchfoundation_RFTextProperty(v73);
  v75 = OUTLINED_FUNCTION_163_4(v74);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_44_0();
  v233 = v78;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_725();
  v80 = OUTLINED_FUNCTION_542();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(v80, v81);
  v83 = OUTLINED_FUNCTION_183(v82);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_44_0();
  v237 = v86;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_447_0();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v89 = OUTLINED_FUNCTION_59_1(v88);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_44_0();
  v239 = v92;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v230 - v94;
  v247 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(0);
  v248 = v20;
  v96 = *(v247 + 32);
  v238 = v88;
  v97 = *(v88 + 48);
  OUTLINED_FUNCTION_1057();
  sub_1B8D92024();
  v98 = v27;
  sub_1B8D92024();
  OUTLINED_FUNCTION_749();
  OUTLINED_FUNCTION_178(v99, v100, v101);
  if (v116)
  {
    OUTLINED_FUNCTION_749();
    OUTLINED_FUNCTION_178(v102, v103, v104);
    if (v116)
    {
      sub_1B8D9207C(v95, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_14:
    v117 = &qword_1EBAB8E00;
    v118 = &qword_1B964D600;
LABEL_18:
    v122 = v95;
LABEL_19:
    sub_1B8D9207C(v122, v117, v118);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_236();
  sub_1B8D92024();
  OUTLINED_FUNCTION_749();
  OUTLINED_FUNCTION_178(v113, v114, v115);
  if (v116)
  {
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_58();
  sub_1B944B02C();
  v119 = *v21;
  v120 = *v22;
  sub_1B8D5BA08();
  if ((v121 & 1) == 0 || *(v21 + 8) != *(v22 + 8))
  {
    OUTLINED_FUNCTION_62_7();
    sub_1B944B0D4();
    OUTLINED_FUNCTION_202();
    sub_1B944B0D4();
    v117 = &qword_1EBAB8DF8;
    v118 = &qword_1B96B9A80;
    goto LABEL_18;
  }

  v144 = *(v23 + 24);
  v145 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v146, v147);
  sub_1B964C850();
  OUTLINED_FUNCTION_138_5();
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v95, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v145 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  v105 = v23;
  v107 = v247;
  v106 = v248;
  v108 = *(v247 + 36);
  v109 = v249;
  v110 = *(v250 + 48);
  OUTLINED_FUNCTION_84_0();
  v111 = v98;
  OUTLINED_FUNCTION_84_0();
  v112 = v246;
  OUTLINED_FUNCTION_178(v109, 1, v246);
  if (v116)
  {
    OUTLINED_FUNCTION_50(v109 + v110);
    if (!v116)
    {
      goto LABEL_25;
    }

    sub_1B8D9207C(v109, &qword_1EBACC580, &qword_1B96B98B8);
  }

  else
  {
    OUTLINED_FUNCTION_1368();
    sub_1B8D92024();
    OUTLINED_FUNCTION_50(v109 + v110);
    if (v124)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_6_35();
    v125 = v243;
    sub_1B944B02C();
    v126 = *(v112 + 20);
    if (*(v98 + v126) != *(v125 + v126))
    {
      v127 = *(v98 + v126);

      v128 = OUTLINED_FUNCTION_543();
      sub_1B941D6DC(v128, v129, v130, v131, v132, v133, v134, v135, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241);
      v137 = v136;

      if ((v137 & 1) == 0)
      {
        OUTLINED_FUNCTION_80_7();
        sub_1B944B0D4();
        OUTLINED_FUNCTION_128();
        sub_1B944B0D4();
        v117 = &qword_1EBACC580;
        v118 = &qword_1B96B98B8;
        v122 = v249;
        goto LABEL_19;
      }
    }

    v138 = sub_1B964C2B0();
    OUTLINED_FUNCTION_0_84();
    sub_1B8CD3068(v139, v140);
    OUTLINED_FUNCTION_182();
    sub_1B964C850();
    OUTLINED_FUNCTION_186_5();
    sub_1B944B0D4();
    OUTLINED_FUNCTION_461();
    sub_1B944B0D4();
    sub_1B8D9207C(v249, &qword_1EBACC580, &qword_1B96B98B8);
    if ((v138 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v141 = v107[10];
  v142 = *(v250 + 48);
  v143 = v245;
  OUTLINED_FUNCTION_1122();
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_50(v143);
  if (v116)
  {
    OUTLINED_FUNCTION_50(v143 + v142);
    if (v116)
    {
      sub_1B8D9207C(v143, &qword_1EBACC580, &qword_1B96B98B8);
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  v148 = v244;
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v143 + v142);
  if (v149)
  {
    OUTLINED_FUNCTION_16_27();
    sub_1B944B0D4();
LABEL_39:
    v117 = &qword_1EBACCBF8;
    v118 = &unk_1B96B9AC8;
LABEL_40:
    v122 = v143;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_6_35();
  sub_1B944B02C();
  v150 = *(v112 + 20);
  v151 = *(v148 + v150);
  OUTLINED_FUNCTION_1345(v150);
  if (!v152)
  {

    v153 = OUTLINED_FUNCTION_432();
    sub_1B941D6DC(v153, v154, v155, v156, v157, v158, v159, v160, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241);
    OUTLINED_FUNCTION_87_1();

    if ((v142 & 1) == 0)
    {
      OUTLINED_FUNCTION_72_7();
      sub_1B944B0D4();
      sub_1B944B0D4();
      v117 = &qword_1EBACC580;
      v118 = &qword_1B96B98B8;
      goto LABEL_40;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v161, v162);
  OUTLINED_FUNCTION_303();
  v163 = sub_1B964C850();
  OUTLINED_FUNCTION_80_7();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_74_7();
  sub_1B944B0D4();
  sub_1B8D9207C(v143, &qword_1EBACC580, &qword_1B96B98B8);
  if ((v163 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_44:
  v164 = v107[11];
  v165 = *(v250 + 48);
  v166 = v242;
  OUTLINED_FUNCTION_1122();
  v109 = v166;
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v166);
  if (v116)
  {
    OUTLINED_FUNCTION_50(v166 + v165);
    if (v116)
    {
      sub_1B8D9207C(v166, &qword_1EBACC580, &qword_1B96B98B8);
      goto LABEL_56;
    }

LABEL_25:
    v117 = &qword_1EBACCBF8;
    v118 = &unk_1B96B9AC8;
    v122 = v109;
    goto LABEL_19;
  }

  v173 = v241;
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v109 + v165);
  if (v174)
  {
LABEL_24:
    OUTLINED_FUNCTION_16_27();
    sub_1B944B0D4();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_6_35();
  sub_1B944B02C();
  v175 = *(v112 + 20);
  v176 = *(v173 + v175);
  OUTLINED_FUNCTION_1345(v175);
  if (!v177)
  {

    v178 = OUTLINED_FUNCTION_432();
    sub_1B941D6DC(v178, v179, v180, v181, v182, v183, v184, v185, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241);
    OUTLINED_FUNCTION_87_1();

    if ((v165 & 1) == 0)
    {
      OUTLINED_FUNCTION_72_7();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_202();
      sub_1B944B0D4();
      v117 = &qword_1EBACC580;
      v118 = &qword_1B96B98B8;
      v122 = v242;
      goto LABEL_19;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v186, v187);
  OUTLINED_FUNCTION_186();
  v188 = sub_1B964C850();
  OUTLINED_FUNCTION_80_7();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_311();
  sub_1B944B0D4();
  sub_1B8D9207C(v242, &qword_1EBACC580, &qword_1B96B98B8);
  if ((v188 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_56:
  sub_1B8D5B224(*v106, *v111, v167, v168, v169, v170, v171, v172, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241);
  if ((v195 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_1B8D5B224(*(v106 + 8), *(v111 + 8), v189, v190, v191, v192, v193, v194, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241);
  if ((v196 & 1) == 0)
  {
    goto LABEL_20;
  }

  v197 = v107[12];
  v198 = v239;
  v199 = *(v238 + 48);
  OUTLINED_FUNCTION_1122();
  v200 = v198;
  OUTLINED_FUNCTION_235_1();
  v201 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v201, v202, v105);
  if (v116)
  {
    OUTLINED_FUNCTION_48(v198 + v199);
    if (v116)
    {
      sub_1B8D9207C(v198, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_63;
    }

LABEL_75:
    v117 = &qword_1EBAB8E00;
    v118 = &qword_1B964D600;
LABEL_86:
    v122 = v200;
    goto LABEL_19;
  }

  v212 = v237;
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v200 + v199);
  if (v213)
  {
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_3_58();
  v214 = v233;
  sub_1B944B02C();
  v215 = *v212;
  v216 = *v214;
  sub_1B8D5BA08();
  if ((v217 & 1) == 0 || (v218 = *(v212 + 8), OUTLINED_FUNCTION_1170(), !v116))
  {
    OUTLINED_FUNCTION_62_7();
    sub_1B944B0D4();
    OUTLINED_FUNCTION_202();
    sub_1B944B0D4();
    v117 = &qword_1EBAB8DF8;
    v118 = &qword_1B96B9A80;
    goto LABEL_86;
  }

  v225 = *(v105 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v226, v227);
  LOBYTE(v225) = OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_146_5();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_311();
  sub_1B944B0D4();
  sub_1B8D9207C(v200, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v225 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_63:
  v203 = v107[13];
  v204 = *(v234 + 48);
  v205 = v236;
  OUTLINED_FUNCTION_1122();
  v200 = v205;
  OUTLINED_FUNCTION_235_1();
  v206 = OUTLINED_FUNCTION_207();
  v207 = v235;
  OUTLINED_FUNCTION_44(v206, v208);
  if (v116)
  {
    OUTLINED_FUNCTION_48(v204 + v205);
    if (v116)
    {
      sub_1B8D9207C(v205, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_68;
    }

LABEL_82:
    v117 = &qword_1EBACCC18;
    v118 = &unk_1B96D8D70;
    goto LABEL_86;
  }

  v219 = v232;
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v204 + v200);
  if (v220)
  {
    OUTLINED_FUNCTION_189_3();
    sub_1B944B0D4();
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_13_28();
  OUTLINED_FUNCTION_1188(&a18);
  v221 = *v219;
  v222 = *v204;
  sub_1B8D5D124();
  if ((v223 & 1) == 0 || (v224 = *(v219 + 8), OUTLINED_FUNCTION_1170(), !v116))
  {
    OUTLINED_FUNCTION_1022();
    sub_1B944B0D4();
    OUTLINED_FUNCTION_202();
    sub_1B944B0D4();
    v117 = &qword_1EBACC708;
    v118 = &unk_1B96D92F0;
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v228, v229);
  OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_950();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_311();
  sub_1B944B0D4();
  sub_1B8D9207C(v200, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v207 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_68:
  if (*(v106 + 16) == *(v111 + 16))
  {
    v209 = v107[7];
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_84();
    sub_1B8CD3068(v210, v211);
    v123 = sub_1B964C850();
    goto LABEL_21;
  }

LABEL_20:
  v123 = 0;
LABEL_21:
  OUTLINED_FUNCTION_264(v123);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9436364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB18, type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94363E4(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD9D8, type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9436454()
{
  sub_1B8CD3068(&qword_1EBACD9D8, type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B94364EC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC0E0);
  __swift_project_value_buffer(v0, qword_1EBACC0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "number_1";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "number_2";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "text_1";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "text_2";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "text_3";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "text_4";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "text_5";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "thumbnail_1";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "thumbnail_2";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "text_6";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "text_7";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "button_1";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "text_8";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "text_9";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "text_10";
  *(v34 + 1) = 7;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9436A20()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__number1;
  v2 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__number2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text3, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail1;
  v4 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail2, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text6, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text7, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button1;
  v6 = type metadata accessor for Searchfoundation_ButtonItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text8, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text9, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text10, 1, 1, v2);
  return v0;
}

uint64_t sub_1B9436C04(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__number1;
  v12 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__number2, 1, 1, v12);
  v22[1] = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text1;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text1, 1, 1, v12);
  v22[2] = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text2;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text2, 1, 1, v12);
  v22[3] = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text3;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text3, 1, 1, v12);
  v22[4] = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4, 1, 1, v12);
  v23 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5) = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail1;
  v24 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail1;
  v14 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v25 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail2;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail2, 1, 1, v14);
  v26 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text6;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text6, 1, 1, v12);
  v27 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text7;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text7, 1, 1, v12);
  v15 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button1;
  v29 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button1;
  v16 = type metadata accessor for Searchfoundation_ButtonItem(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v30 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text8;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text8, 1, 1, v12);
  v31 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text9;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text9, 1, 1, v12);
  v32 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text10;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text10, 1, 1, v12);
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
  v17 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5;
  swift_beginAccess();
  v18 = *(a1 + v17);
  v19 = v23;
  swift_beginAccess();
  v20 = *(v1 + v19);
  *(v1 + v19) = v18;

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

uint64_t sub_1B9437534()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__number1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__number2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text4, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail1, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnail2, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text6, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text7, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__button1, &qword_1EBACC580, &qword_1B96B98B8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text8, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text9, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text10, &qword_1EBAB8DF8, &qword_1B96B9A80);
  return v0;
}

uint64_t sub_1B943775C()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B9437970();
        break;
      case 2:
        sub_1B9437A4C();
        break;
      case 3:
        sub_1B9437B28();
        break;
      case 4:
        sub_1B9437C04();
        break;
      case 5:
        sub_1B9437CE0();
        break;
      case 6:
        sub_1B9437DBC();
        break;
      case 7:
        sub_1B9437E98();
        break;
      case 8:
        sub_1B9437F74();
        break;
      case 9:
        sub_1B9438050();
        break;
      case 10:
        sub_1B943812C();
        break;
      case 11:
        sub_1B9438208();
        break;
      case 12:
        sub_1B94382E4();
        break;
      case 13:
        sub_1B94383C0();
        break;
      case 14:
        sub_1B943849C();
        break;
      case 15:
        sub_1B9438578();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9437970()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9437A4C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9437B28()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9437C04()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9437CE0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9437DBC()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9437E98()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9437F74()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD3068(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9438050()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD3068(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B943812C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9438208()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94382E4()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94383C0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B943849C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9438578()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9438684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v112 = a3;
  v113 = a4;
  v114 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = &v84 - v7;
  v94 = type metadata accessor for Searchfoundation_ButtonItem(0);
  v8 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v99 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v84 - v14;
  v103 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v15 = *(*(v103 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v103);
  v101 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v84 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v89 = &v84 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v91 = &v84 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v95 = &v84 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v97 = &v84 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v104 = &v84 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v106 = &v84 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v108 = &v84 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v109 = &v84 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v84 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v84 - v43;
  v45 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v86 = &v84 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v87 = &v84 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v88 = &v84 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v92 = &v84 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v96 = &v84 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v102 = &v84 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v110 = &v84 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v105 = &v84 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v107 = &v84 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  MEMORY[0x1EEE9AC00](v65);
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v44, 1, v45) == 1)
  {
    v85 = v23;
    sub_1B8D9207C(v44, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v66 = v111;
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    v67 = v111;
    sub_1B964C740();
    v66 = v67;
    if (v67)
    {
      return sub_1B944B0D4();
    }

    v85 = v23;
    sub_1B944B0D4();
  }

  swift_beginAccess();
  v68 = a1;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v42, 1, v45) == 1)
  {
    v69 = v45;
    sub_1B8D9207C(v42, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    if (v66)
    {
      return sub_1B944B0D4();
    }

    v69 = v45;
    sub_1B944B0D4();
  }

  swift_beginAccess();
  v70 = v109;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v70, 1, v69) == 1)
  {
    sub_1B8D9207C(v70, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    if (v66)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v71 = v108;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v71, 1, v69) == 1)
  {
    sub_1B8D9207C(v71, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    if (v66)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v72 = v106;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v72, 1, v69) == 1)
  {
    sub_1B8D9207C(v72, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    if (v66)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v73 = v104;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v73, 1, v69) == 1)
  {
    sub_1B8D9207C(v73, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    if (v66)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  v74 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5;
  swift_beginAccess();
  if (*(*(v68 + v74) + 16))
  {
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);

    sub_1B964C730();
    if (v66)
    {
    }
  }

  swift_beginAccess();
  v76 = v100;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v76, 1, v103) == 1)
  {
    sub_1B8D9207C(v76, &qword_1EBACC708, &unk_1B96D92F0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
    sub_1B964C740();
    if (v66)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v77 = v99;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v77, 1, v103) == 1)
  {
    sub_1B8D9207C(v77, &qword_1EBACC708, &unk_1B96D92F0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
    sub_1B964C740();
    if (v66)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v78 = v97;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v78, 1, v69) == 1)
  {
    sub_1B8D9207C(v78, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    if (v66)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v79 = v95;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v79, 1, v69) == 1)
  {
    sub_1B8D9207C(v79, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    if (v66)
    {
      return sub_1B944B0D4();
    }

    sub_1B944B0D4();
  }

  swift_beginAccess();
  v80 = v93;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v80, 1, v94) == 1)
  {
    sub_1B8D9207C(v80, &qword_1EBACC580, &qword_1B96B98B8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v66)
    {
      return result;
    }
  }

  swift_beginAccess();
  v81 = v91;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v81, 1, v69) == 1)
  {
    sub_1B8D9207C(v81, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v66)
    {
      return result;
    }
  }

  swift_beginAccess();
  v82 = v89;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v82, 1, v69) == 1)
  {
    sub_1B8D9207C(v82, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B944B02C();
    sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    result = sub_1B944B0D4();
    if (v66)
    {
      return result;
    }
  }

  swift_beginAccess();
  v83 = v85;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v83, 1, v69) == 1)
  {
    return sub_1B8D9207C(v83, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  sub_1B944B02C();
  sub_1B8CD3068(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C740();
  return sub_1B944B0D4();
}

BOOL sub_1B9439C40(uint64_t a1, uint64_t a2)
{
  v364 = a2;
  v323 = type metadata accessor for Searchfoundation_ButtonItem(0);
  v3 = *(*(v323 - 8) + 64);
  MEMORY[0x1EEE9AC00](v323);
  v317 = &v307 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCBF8, &unk_1B96B9AC8);
  v5 = *(*(v319 - 8) + 64);
  MEMORY[0x1EEE9AC00](v319);
  v325 = &v307 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v321 = &v307 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v322 = &v307 - v11;
  v341 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v12 = *(*(v341 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v341);
  v332 = &v307 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v333 = &v307 - v15;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  v16 = *(*(v340 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v340);
  v338 = &v307 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v339 = &v307 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v335 = &v307 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v337 = &v307 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v336 = &v307 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v344 = &v307 - v28;
  v365 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v29 = *(*(v365 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v365);
  v311 = &v307 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v307 = &v307 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v314 = &v307 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v324 = &v307 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v328 = &v307 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v342 = &v307 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v345 = &v307 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v348 = &v307 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v352 = &v307 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v356 = &v307 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v361 = &v307 - v50;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v51 = *(*(v366 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v366);
  v310 = &v307 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v315 = &v307 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v320 = &v307 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v329 = &v307 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v334 = &v307 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v346 = &v307 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v350 = &v307 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v354 = &v307 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v358 = &v307 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v362 = &v307 - v71;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v307 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v75 = *(*(v74 - 8) + 64);
  v76 = MEMORY[0x1EEE9AC00](v74 - 8);
  v309 = (&v307 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = MEMORY[0x1EEE9AC00](v76);
  v308 = &v307 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v312 = (&v307 - v81);
  v82 = MEMORY[0x1EEE9AC00](v80);
  v313 = &v307 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v316 = (&v307 - v85);
  v86 = MEMORY[0x1EEE9AC00](v84);
  v318 = &v307 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v326 = &v307 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v327 = &v307 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v330 = &v307 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v331 = &v307 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v343 = &v307 - v97;
  v98 = MEMORY[0x1EEE9AC00](v96);
  v349 = &v307 - v99;
  v100 = MEMORY[0x1EEE9AC00](v98);
  v347 = &v307 - v101;
  v102 = MEMORY[0x1EEE9AC00](v100);
  v353 = &v307 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v351 = &v307 - v105;
  v106 = MEMORY[0x1EEE9AC00](v104);
  v357 = &v307 - v107;
  v108 = MEMORY[0x1EEE9AC00](v106);
  v355 = &v307 - v109;
  v110 = MEMORY[0x1EEE9AC00](v108);
  v359 = &v307 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v360 = &v307 - v113;
  v114 = MEMORY[0x1EEE9AC00](v112);
  v363 = &v307 - v115;
  v116 = MEMORY[0x1EEE9AC00](v114);
  v118 = &v307 - v117;
  MEMORY[0x1EEE9AC00](v116);
  v120 = &v307 - v119;
  swift_beginAccess();
  sub_1B8D92024();
  v121 = v364;
  swift_beginAccess();
  v122 = *(v366 + 48);
  sub_1B8D92024();
  v123 = v121;
  v124 = v365;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v124);
  v367 = a1;
  if (EnumTagSinglePayload == 1)
  {

    sub_1B8D9207C(v120, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(&v73[v122], 1, v124) == 1)
    {
      sub_1B8D9207C(v73, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_4;
    }

    goto LABEL_37;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(&v73[v122], 1, v124) == 1)
  {

    sub_1B8D9207C(v120, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
LABEL_37:
    v181 = &qword_1EBAB8E00;
    v182 = &qword_1B964D600;
    v183 = v73;
LABEL_79:
    sub_1B8D9207C(v183, v181, v182);
    goto LABEL_80;
  }

  v184 = v124;
  v185 = v361;
  sub_1B944B02C();
  v186 = *v118;
  v187 = *v185;

  sub_1B8D5BA08();
  if ((v188 & 1) == 0 || v118[8] != v185[8])
  {
    sub_1B8D9207C(v120, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v183 = v73;
    v181 = &qword_1EBAB8DF8;
    v182 = &qword_1B96B9A80;
    goto LABEL_79;
  }

  v194 = *(v184 + 24);
  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v195 = sub_1B964C850();
  sub_1B8D9207C(v120, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B944B0D4();
  sub_1B944B0D4();
  v124 = v184;
  sub_1B8D9207C(v73, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v195 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_4:
  swift_beginAccess();
  v126 = &qword_1EBAB8DF8;
  v127 = &qword_1B96B9A80;
  v128 = v123;
  v129 = v363;
  sub_1B8D92024();
  swift_beginAccess();
  v130 = *(v366 + 48);
  v131 = v362;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v131, 1, v124) == 1)
  {
    sub_1B8D9207C(v129, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v132 = v128;
    if (__swift_getEnumTagSinglePayload(v131 + v130, 1, v124) == 1)
    {
      sub_1B8D9207C(v131, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_7;
    }

    goto LABEL_43;
  }

  v189 = v360;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v131 + v130, 1, v124) == 1)
  {
    sub_1B8D9207C(v363, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
LABEL_43:
    v181 = &qword_1EBAB8E00;
    v182 = &qword_1B964D600;
    v183 = v131;
    goto LABEL_79;
  }

  v190 = v356;
  sub_1B944B02C();
  v191 = *v189;
  v192 = *v190;
  sub_1B8D5BA08();
  v132 = v128;
  if ((v193 & 1) == 0 || v189[8] != v190[8])
  {
    sub_1B8D9207C(v363, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v183 = v362;
    goto LABEL_78;
  }

  v203 = *(v124 + 24);
  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v204 = sub_1B964C850();
  sub_1B8D9207C(v363, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v362, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v204 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_7:
  swift_beginAccess();
  v133 = v359;
  sub_1B8D92024();
  swift_beginAccess();
  v134 = *(v366 + 48);
  v135 = v358;
  sub_1B8D92024();
  v136 = v135;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v135, 1, v124) != 1)
  {
    v196 = v355;
    sub_1B8D92024();
    v197 = __swift_getEnumTagSinglePayload(v135 + v134, 1, v124);
    v138 = v357;
    if (v197 == 1)
    {
      v198 = v359;
LABEL_65:
      sub_1B8D9207C(v198, &qword_1EBAB8DF8, &qword_1B96B9A80);
      sub_1B944B0D4();
      goto LABEL_66;
    }

    v199 = v352;
    sub_1B944B02C();
    v200 = *v196;
    v201 = *v199;
    sub_1B8D5BA08();
    if ((v202 & 1) != 0 && v196[8] == v199[8])
    {
      v211 = *(v124 + 24);
      sub_1B964C2B0();
      sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
      v212 = sub_1B964C850();
      sub_1B8D9207C(v359, &qword_1EBAB8DF8, &qword_1B96B9A80);
      sub_1B944B0D4();
      sub_1B944B0D4();
      sub_1B8D9207C(v358, &qword_1EBAB8DF8, &qword_1B96B9A80);
      if ((v212 & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_10;
    }

    v126 = &qword_1EBAB8DF8;
    v127 = &qword_1B96B9A80;
    sub_1B8D9207C(v359, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v183 = v358;
LABEL_78:
    v181 = v126;
    v182 = v127;
    goto LABEL_79;
  }

  sub_1B8D9207C(v133, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v137 = __swift_getEnumTagSinglePayload(v135 + v134, 1, v124);
  v138 = v357;
  if (v137 != 1)
  {
    goto LABEL_66;
  }

  sub_1B8D9207C(v135, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_10:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v139 = v366;
  v140 = *(v366 + 48);
  v141 = v354;
  sub_1B8D92024();
  v136 = v141;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v141, 1, v124) == 1)
  {
    sub_1B8D9207C(v138, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v142 = __swift_getEnumTagSinglePayload(v141 + v140, 1, v124);
    v143 = v353;
    if (v142 == 1)
    {
      sub_1B8D9207C(v136, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_13;
    }

LABEL_66:
    v181 = &qword_1EBAB8E00;
    v182 = &qword_1B964D600;
    v183 = v136;
    goto LABEL_79;
  }

  v205 = v351;
  sub_1B8D92024();
  v206 = __swift_getEnumTagSinglePayload(v141 + v140, 1, v124);
  v143 = v353;
  if (v206 == 1)
  {
    v198 = v357;
    goto LABEL_65;
  }

  v207 = v348;
  sub_1B944B02C();
  v208 = *v205;
  v209 = *v207;
  sub_1B8D5BA08();
  if ((v210 & 1) == 0 || v205[8] != v207[8])
  {
    v126 = &qword_1EBAB8DF8;
    v127 = &qword_1B96B9A80;
    sub_1B8D9207C(v357, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v183 = v354;
    goto LABEL_78;
  }

  v219 = *(v124 + 24);
  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v220 = sub_1B964C850();
  sub_1B8D9207C(v357, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v354, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v220 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_13:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v144 = *(v139 + 48);
  v145 = v143;
  v146 = v350;
  sub_1B8D92024();
  v136 = v146;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v146, 1, v124) == 1)
  {
    sub_1B8D9207C(v145, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v147 = __swift_getEnumTagSinglePayload(v146 + v144, 1, v124);
    v148 = v349;
    if (v147 == 1)
    {
      sub_1B8D9207C(v136, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_16;
    }

    goto LABEL_66;
  }

  v213 = v347;
  sub_1B8D92024();
  v214 = __swift_getEnumTagSinglePayload(v146 + v144, 1, v124);
  v148 = v349;
  if (v214 == 1)
  {
    v198 = v353;
    goto LABEL_65;
  }

  v215 = v345;
  sub_1B944B02C();
  v216 = *v213;
  v217 = *v215;
  sub_1B8D5BA08();
  if ((v218 & 1) == 0 || v213[8] != v215[8])
  {
    v126 = &qword_1EBAB8DF8;
    v127 = &qword_1B96B9A80;
    sub_1B8D9207C(v353, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v183 = v350;
    goto LABEL_78;
  }

  v227 = *(v124 + 24);
  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v228 = sub_1B964C850();
  sub_1B8D9207C(v353, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v350, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v228 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_16:
  swift_beginAccess();
  v127 = &qword_1B96B9A80;
  sub_1B8D92024();
  swift_beginAccess();
  v149 = *(v139 + 48);
  v150 = v346;
  sub_1B8D92024();
  v151 = v150;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v150, 1, v124) == 1)
  {
    sub_1B8D9207C(v148, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v152 = __swift_getEnumTagSinglePayload(v150 + v149, 1, v124);
    v153 = v344;
    if (v152 == 1)
    {
      sub_1B8D9207C(v150, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_19;
    }

    goto LABEL_74;
  }

  v221 = v343;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v150 + v149, 1, v124) == 1)
  {
    sub_1B8D9207C(v148, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
LABEL_74:
    v181 = &qword_1EBAB8E00;
    v182 = &qword_1B964D600;
    v183 = v150;
    goto LABEL_79;
  }

  v222 = v342;
  sub_1B944B02C();
  v223 = *v221;
  v224 = *v222;
  sub_1B8D5BA08();
  if ((v225 & 1) == 0 || v221[8] != v222[8])
  {
    v126 = &qword_1EBAB8DF8;
    sub_1B8D9207C(v148, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v183 = v151;
    goto LABEL_78;
  }

  v230 = *(v124 + 24);
  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v231 = sub_1B964C850();
  sub_1B8D9207C(v148, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v151, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v153 = v344;
  if ((v231 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_19:
  v154 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5;
  v155 = v367;
  swift_beginAccess();
  v156 = *(v155 + v154);
  v157 = OBJC_IVAR____TtCV10PegasusAPI51Searchfoundation_RFSummaryItemPairNumberCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__text5;
  swift_beginAccess();
  v158 = *(v132 + v157);

  sub_1B8D5B224(v156, v158, v159, v160, v161, v162, v163, v164, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318);
  LOBYTE(v155) = v165;

  if ((v155 & 1) == 0)
  {
    goto LABEL_80;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v166 = v339;
  v167 = *(v340 + 48);
  sub_1B8D92024();
  v168 = v166;
  sub_1B8D92024();
  v169 = v341;
  if (__swift_getEnumTagSinglePayload(v166, 1, v341) == 1)
  {
    sub_1B8D9207C(v153, &qword_1EBACC708, &unk_1B96D92F0);
    if (__swift_getEnumTagSinglePayload(v166 + v167, 1, v169) == 1)
    {
      v170 = v124;
      sub_1B8D9207C(v166, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_23;
    }

    goto LABEL_86;
  }

  v229 = v336;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v168 + v167, 1, v169) == 1)
  {
    sub_1B8D9207C(v344, &qword_1EBACC708, &unk_1B96D92F0);
    sub_1B944B0D4();
LABEL_86:
    v181 = &qword_1EBACCC18;
    v182 = &unk_1B96D8D70;
    v183 = v168;
    goto LABEL_79;
  }

  v170 = v124;
  v232 = v333;
  sub_1B944B02C();
  v233 = *v229;
  v234 = *v232;
  sub_1B8D5D124();
  if ((v235 & 1) == 0 || v229[8] != v232[8])
  {
    v126 = &qword_1EBACC708;
    v127 = &unk_1B96D92F0;
    sub_1B8D9207C(v344, &qword_1EBACC708, &unk_1B96D92F0);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v183 = v339;
    goto LABEL_78;
  }

  v244 = *(v341 + 24);
  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v245 = sub_1B964C850();
  sub_1B8D9207C(v344, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v339, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v245 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_23:
  swift_beginAccess();
  v171 = &unk_1B96D92F0;
  sub_1B8D92024();
  swift_beginAccess();
  v172 = *(v340 + 48);
  v173 = v338;
  sub_1B8D92024();
  sub_1B8D92024();
  v174 = v341;
  if (__swift_getEnumTagSinglePayload(v173, 1, v341) == 1)
  {
    sub_1B8D9207C(v337, &qword_1EBACC708, &unk_1B96D92F0);
    if (__swift_getEnumTagSinglePayload(v173 + v172, 1, v174) == 1)
    {
      sub_1B8D9207C(v338, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_26;
    }

LABEL_94:
    v236 = &qword_1EBACCC18;
    v237 = &unk_1B96D8D70;
    v238 = v338;
LABEL_115:
    sub_1B8D9207C(v238, v236, v237);
    goto LABEL_80;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v173 + v172, 1, v174) == 1)
  {
    sub_1B8D9207C(v337, &qword_1EBACC708, &unk_1B96D92F0);
    sub_1B944B0D4();
    goto LABEL_94;
  }

  v239 = v332;
  sub_1B944B02C();
  v240 = *v335;
  v241 = *v239;
  sub_1B8D5D124();
  if ((v242 & 1) == 0 || v335[8] != v332[8])
  {
    v243 = &qword_1EBACC708;
    sub_1B8D9207C(v337, &qword_1EBACC708, &unk_1B96D92F0);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v238 = v338;
LABEL_114:
    v236 = v243;
    v237 = v171;
    goto LABEL_115;
  }

  v251 = *(v341 + 24);
  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v252 = sub_1B964C850();
  sub_1B8D9207C(v337, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v338, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v252 & 1) == 0)
  {
LABEL_80:

    return 0;
  }

LABEL_26:
  swift_beginAccess();
  v171 = &qword_1B96B9A80;
  sub_1B8D92024();
  swift_beginAccess();
  v175 = *(v366 + 48);
  v176 = v334;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v176, 1, v170) == 1)
  {
    sub_1B8D9207C(v331, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(v334 + v175, 1, v170) == 1)
    {
      sub_1B8D9207C(v334, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_29;
    }

    goto LABEL_102;
  }

  v246 = v334;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v246 + v175, 1, v170) == 1)
  {
    sub_1B8D9207C(v331, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
LABEL_102:
    v236 = &qword_1EBAB8E00;
    v237 = &qword_1B964D600;
    v238 = v334;
    goto LABEL_115;
  }

  v247 = v328;
  sub_1B944B02C();
  v248 = *v330;
  v249 = *v247;
  sub_1B8D5BA08();
  if ((v250 & 1) == 0 || v330[8] != v328[8])
  {
    v243 = &qword_1EBAB8DF8;
    sub_1B8D9207C(v331, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v238 = v334;
    goto LABEL_114;
  }

  v258 = *(v170 + 24);
  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v259 = sub_1B964C850();
  sub_1B8D9207C(v331, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v334, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v259 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_29:
  swift_beginAccess();
  v171 = &qword_1B96B9A80;
  sub_1B8D92024();
  swift_beginAccess();
  v177 = *(v366 + 48);
  v178 = v329;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v178, 1, v170) == 1)
  {
    sub_1B8D9207C(v327, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(v329 + v177, 1, v170) == 1)
    {
      sub_1B8D9207C(v329, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_32;
    }

    goto LABEL_110;
  }

  v253 = v329;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v253 + v177, 1, v170) == 1)
  {
    sub_1B8D9207C(v327, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
LABEL_110:
    v236 = &qword_1EBAB8E00;
    v237 = &qword_1B964D600;
    v238 = v329;
    goto LABEL_115;
  }

  v254 = v324;
  sub_1B944B02C();
  v255 = *v326;
  v256 = *v254;
  sub_1B8D5BA08();
  if ((v257 & 1) == 0 || v326[8] != v324[8])
  {
    v243 = &qword_1EBAB8DF8;
    sub_1B8D9207C(v327, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v238 = v329;
    goto LABEL_114;
  }

  v281 = *(v170 + 24);
  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v282 = sub_1B964C850();
  sub_1B8D9207C(v327, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v329, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v282 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_32:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v179 = *(v319 + 48);
  v180 = v325;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v180, 1, v323) == 1)
  {
    sub_1B8D9207C(v322, &qword_1EBACC580, &qword_1B96B98B8);
    if (__swift_getEnumTagSinglePayload(v325 + v179, 1, v323) == 1)
    {
      sub_1B8D9207C(v325, &qword_1EBACC580, &qword_1B96B98B8);
      goto LABEL_125;
    }

LABEL_121:
    v236 = &qword_1EBACCBF8;
    v237 = &unk_1B96B9AC8;
    v238 = v325;
    goto LABEL_115;
  }

  v260 = v325;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v260 + v179, 1, v323) == 1)
  {
    sub_1B8D9207C(v322, &qword_1EBACC580, &qword_1B96B98B8);
    sub_1B944B0D4();
    goto LABEL_121;
  }

  v261 = v317;
  sub_1B944B02C();
  v262 = *(v323 + 20);
  v263 = *&v321[v262];
  v264 = *(v261 + v262);
  if (v263 != v264)
  {
    v265 = *&v321[v262];

    sub_1B941D6DC(v263, v264, v266, v267, v268, v269, v270, v271, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318);
    v273 = v272;

    if ((v273 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v322, &qword_1EBACC580, &qword_1B96B98B8);
      sub_1B944B0D4();
      v238 = v325;
      v236 = &qword_1EBACC580;
      v237 = &qword_1B96B98B8;
      goto LABEL_115;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v274 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v322, &qword_1EBACC580, &qword_1B96B98B8);
  sub_1B944B0D4();
  sub_1B8D9207C(v325, &qword_1EBACC580, &qword_1B96B98B8);
  if ((v274 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_125:
  swift_beginAccess();
  v171 = &qword_1B96B9A80;
  sub_1B8D92024();
  swift_beginAccess();
  v275 = *(v366 + 48);
  v276 = v320;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v276, 1, v170) == 1)
  {
    sub_1B8D9207C(v318, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(v320 + v275, 1, v170) == 1)
    {
      sub_1B8D9207C(v320, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_128;
    }

LABEL_139:
    v236 = &qword_1EBAB8E00;
    v237 = &qword_1B964D600;
    v238 = v320;
    goto LABEL_115;
  }

  v283 = v320;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v283 + v275, 1, v170) == 1)
  {
    sub_1B8D9207C(v318, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    goto LABEL_139;
  }

  v284 = v314;
  sub_1B944B02C();
  v285 = *v316;
  v286 = *v284;
  sub_1B8D5BA08();
  if ((v287 & 1) == 0 || *(v316 + 8) != *(v314 + 8))
  {
    v243 = &qword_1EBAB8DF8;
    sub_1B8D9207C(v318, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v238 = v320;
    goto LABEL_114;
  }

  v293 = *(v170 + 24);
  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v294 = sub_1B964C850();
  sub_1B8D9207C(v318, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v320, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v294 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_128:
  swift_beginAccess();
  v171 = &qword_1B96B9A80;
  sub_1B8D92024();
  swift_beginAccess();
  v277 = *(v366 + 48);
  v278 = v315;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v278, 1, v170) == 1)
  {
    sub_1B8D9207C(v313, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(v315 + v277, 1, v170) == 1)
    {
      sub_1B8D9207C(v315, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_131;
    }

    goto LABEL_146;
  }

  v288 = v315;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v288 + v277, 1, v170) == 1)
  {
    sub_1B8D9207C(v313, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
LABEL_146:
    v236 = &qword_1EBAB8E00;
    v237 = &qword_1B964D600;
    v238 = v315;
    goto LABEL_115;
  }

  v289 = v307;
  sub_1B944B02C();
  v290 = *v312;
  v291 = *v289;
  sub_1B8D5BA08();
  if ((v292 & 1) == 0 || *(v312 + 8) != *(v307 + 8))
  {
    v243 = &qword_1EBAB8DF8;
    sub_1B8D9207C(v313, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    v238 = v315;
    goto LABEL_114;
  }

  v303 = *(v170 + 24);
  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v304 = sub_1B964C850();
  sub_1B8D9207C(v313, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B944B0D4();
  sub_1B944B0D4();
  sub_1B8D9207C(v315, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v304 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_131:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v279 = *(v366 + 48);
  v280 = v310;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v280, 1, v170) != 1)
  {
    v295 = v310;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v295 + v279, 1, v170) == 1)
    {

      sub_1B8D9207C(v308, &qword_1EBAB8DF8, &qword_1B96B9A80);
      sub_1B944B0D4();
      goto LABEL_154;
    }

    v299 = v311;
    sub_1B944B02C();
    v300 = *v309;
    v301 = *v299;
    sub_1B8D5BA08();
    if ((v302 & 1) == 0 || *(v309 + 8) != *(v311 + 8))
    {

      sub_1B8D9207C(v308, &qword_1EBAB8DF8, &qword_1B96B9A80);
      sub_1B944B0D4();
      sub_1B944B0D4();
      v298 = v310;
      v296 = &qword_1EBAB8DF8;
      v297 = &qword_1B96B9A80;
      goto LABEL_158;
    }

    v305 = *(v170 + 24);
    sub_1B964C2B0();
    sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
    v306 = sub_1B964C850();

    sub_1B8D9207C(v308, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B944B0D4();
    sub_1B944B0D4();
    sub_1B8D9207C(v310, &qword_1EBAB8DF8, &qword_1B96B9A80);
    return (v306 & 1) != 0;
  }

  sub_1B8D9207C(v308, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v310 + v279, 1, v170) != 1)
  {
LABEL_154:
    v296 = &qword_1EBAB8E00;
    v297 = &qword_1B964D600;
    v298 = v310;
LABEL_158:
    sub_1B8D9207C(v298, v296, v297);
    return 0;
  }

  sub_1B8D9207C(v310, &qword_1EBAB8DF8, &qword_1B96B9A80);
  return 1;
}