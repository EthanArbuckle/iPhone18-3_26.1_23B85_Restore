uint64_t Apple_Parsec_Siri_Legacy_PunchOut.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v12 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
      {
        v13 = v2[6];
        v14 = v2[7];
        OUTLINED_FUNCTION_1();
        if (!v15 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
        {
          v16 = v2[8];
          v17 = v2[9];
          OUTLINED_FUNCTION_1();
          if (!v18 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
          {
            v19 = v2[10];
            v20 = v2[11];
            OUTLINED_FUNCTION_1();
            if (!v21 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
            {
              v22 = v2[12];
              v23 = v2[13];
              OUTLINED_FUNCTION_1();
              if (!v24 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
              {
                v25 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0) + 44);
                return OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_Legacy_PunchOut.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v4 = v1[1];
  OUTLINED_FUNCTION_428();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v10 = v7 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v13 = v7 && v11 == v12;
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v14 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v15 = v1[8] == v0[8] && v1[9] == v0[9];
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v16 = v1[10] == v0[10] && v1[11] == v0[11];
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v17 = v1[12] == v0[12] && v1[13] == v0[13];
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut(0) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_60();
  sub_1B8CD2888(v19, v20);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B912A1A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56A8, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912A228(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5448, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B912A298()
{
  sub_1B8CD2888(&qword_1EBAC5448, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut);

  return sub_1B964C5D0();
}

uint64_t sub_1B912A330()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5310);
  __swift_project_value_buffer(v0, qword_1EBAC5310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B964D040;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "bundle_id";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "app_store_uri";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "app_installed";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "punch_out_uri";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "app_display_name";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "punch_out_name";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "app_icon";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "app_icon_map";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "provider_id";
  *(v23 + 1) = 11;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "app_available_storefront";
  *(v25 + 1) = 24;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "subtitle";
  *(v27 + 1) = 8;
  v27[16] = 2;
  v28 = *MEMORY[0x1E69AADC8];
  v8();
  v29 = (v4 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "launch_over_siri";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B912A7B4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_57_0(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B912A804()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIcon;
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap;
  *(v0 + v3) = sub_1B964C7B0();
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront) = 0;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri) = 0;
  return v0;
}

uint64_t sub_1B912A8D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = &v47 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  v48 = (v1 + 72);
  *(v1 + 80) = 0xE000000000000000;
  *(v1 + 88) = 0;
  v49 = (v1 + 88);
  *(v1 + 96) = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIcon;
  v50 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIcon;
  v7 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap;
  v51 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap;
  *(v1 + v8) = sub_1B964C7B0();
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID);
  v53 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v54 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront) = 0;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle);
  v55 = (v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v56 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri) = 0;
  swift_beginAccess();
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_beginAccess();
  v13 = *(v1 + 24);
  *(v1 + 16) = v12;
  *(v1 + 24) = v11;

  swift_beginAccess();
  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  swift_beginAccess();
  v16 = *(v1 + 40);
  *(v1 + 32) = v15;
  *(v1 + 40) = v14;

  swift_beginAccess();
  LOBYTE(v14) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v14;
  swift_beginAccess();
  v18 = *(a1 + 56);
  v17 = *(a1 + 64);
  swift_beginAccess();
  v19 = *(v1 + 64);
  *(v1 + 56) = v18;
  *(v1 + 64) = v17;

  swift_beginAccess();
  v21 = *(a1 + 72);
  v20 = *(a1 + 80);
  v22 = v48;
  swift_beginAccess();
  v23 = *(v1 + 80);
  *v22 = v21;
  *(v1 + 80) = v20;

  swift_beginAccess();
  v25 = *(a1 + 88);
  v24 = *(a1 + 96);
  v26 = v49;
  swift_beginAccess();
  v27 = *(v1 + 96);
  *v26 = v25;
  *(v1 + 96) = v24;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap;
  swift_beginAccess();
  v29 = *(a1 + v28);
  v30 = v51;
  swift_beginAccess();
  v31 = *(v1 + v30);
  *(v1 + v30) = v29;

  v32 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID);
  swift_beginAccess();
  v34 = *v32;
  v33 = v32[1];
  v35 = v53;
  swift_beginAccess();
  v36 = v35[1];
  *v35 = v34;
  v35[1] = v33;

  v37 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront;
  swift_beginAccess();
  LOBYTE(v37) = *(a1 + v37);
  v38 = v54;
  swift_beginAccess();
  *(v1 + v38) = v37;
  v39 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle);
  swift_beginAccess();
  v41 = *v39;
  v40 = v39[1];
  v42 = v55;
  swift_beginAccess();
  v43 = v42[1];
  *v42 = v41;
  v42[1] = v40;

  v44 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri;
  swift_beginAccess();
  LOBYTE(v44) = *(a1 + v44);

  v45 = v56;
  swift_beginAccess();
  *(v1 + v45) = v44;
  return v1;
}

void *sub_1B912ADF8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIcon, &qword_1EBAB9070, &qword_1B964D860);
  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap);

  v7 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle + 8);

  return v0;
}

uint64_t sub_1B912AEA8(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1B912AF58()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v15 = v3;
  v5 = v4;
  v6 = v0;
  v8 = *(v7(0) + 20);
  v9 = *(v0 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = v5(0);
    OUTLINED_FUNCTION_57_0(v12);
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_40_0();
    *(v6 + v8) = v15(v13);
  }

  v14 = OUTLINED_FUNCTION_176_1();
  v2(v14);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B912B008()
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
        sub_1B8E4C21C();
        break;
      case 2:
        sub_1B90E3DFC();
        break;
      case 3:
        sub_1B8E4317C();
        break;
      case 4:
        sub_1B8DE24EC();
        break;
      case 5:
        sub_1B8E6D974();
        break;
      case 6:
        sub_1B8E6D9F8();
        break;
      case 7:
        sub_1B9125AD8();
        break;
      case 8:
        sub_1B912B20C();
        break;
      case 9:
      case 11:
        sub_1B8E4C770();
        break;
      case 10:
      case 12:
        sub_1B90AB150();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B912B20C()
{
  swift_beginAccess();
  sub_1B964C280();
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource);
  sub_1B8CD2888(&qword_1EBAC54A0, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource);
  sub_1B964C3A0();
  return swift_endAccess();
}

uint64_t sub_1B912B364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = *(v5 + *(a4(0) + 20));
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B912B3DC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36 - v6;
  v37 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v8 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = *(a1 + 24);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v12 = *(a1 + 40);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = *(a1 + 40);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 48) != 1 || (result = sub_1B964C670(), !v1))
  {
    swift_beginAccess();
    v16 = *(a1 + 64);
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
    }

    if (!v17 || (v18 = *(a1 + 64), , sub_1B964C700(), result = , !v1))
    {
      swift_beginAccess();
      v19 = *(a1 + 80);
      v20 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v20 = *(a1 + 72) & 0xFFFFFFFFFFFFLL;
      }

      if (!v20 || (v21 = *(a1 + 80), , sub_1B964C700(), result = , !v1))
      {
        swift_beginAccess();
        v22 = *(a1 + 96);
        v23 = HIBYTE(v22) & 0xF;
        if ((v22 & 0x2000000000000000) == 0)
        {
          v23 = *(a1 + 88) & 0xFFFFFFFFFFFFLL;
        }

        if (!v23 || (v24 = *(a1 + 96), , sub_1B964C700(), result = , !v1))
        {
          swift_beginAccess();
          sub_1B8F1B8B8();
          if (__swift_getEnumTagSinglePayload(v7, 1, v37) == 1)
          {
            sub_1B8D9207C(v7, &qword_1EBAB9070, &qword_1B964D860);
          }

          else
          {
            sub_1B9114610();
            sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource);
            sub_1B964C740();
            result = sub_1B9114334();
            if (v1)
            {
              return result;
            }
          }

          v25 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap;
          swift_beginAccess();
          if (!*(*(a1 + v25) + 16) || (v36 = sub_1B964C280(), sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource), sub_1B8CD2888(&qword_1EBAC54A0, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource), , sub_1B964C5E0(), result = , !v1))
          {
            v26 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID);
            swift_beginAccess();
            v27 = *v26;
            v28 = v26[1];
            v29 = HIBYTE(v28) & 0xF;
            if ((v28 & 0x2000000000000000) == 0)
            {
              v29 = v27 & 0xFFFFFFFFFFFFLL;
            }

            if (!v29 || (, sub_1B964C700(), result = , !v2))
            {
              v30 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront;
              swift_beginAccess();
              if (*(a1 + v30) != 1 || (result = sub_1B964C670(), !v2))
              {
                v31 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle);
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
                  v35 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri;
                  result = swift_beginAccess();
                  if (*(a1 + v35) == 1)
                  {
                    return sub_1B964C670();
                  }
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

uint64_t sub_1B912BA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_280();
  v9 = *(v8(v7) + 20);
  if (*(v5 + v9) != *(v4 + v9))
  {
    v10 = *(v5 + v9);

    v11 = OUTLINED_FUNCTION_177_1();
    v12 = a4(v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_60();
  sub_1B8CD2888(v13, v14);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B912BB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v59[0] = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9078, &qword_1B964D868);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = (v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = v59 - v16;
  swift_beginAccess();
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  swift_beginAccess();
  v20 = v19 == *(a2 + 16) && v18 == *(a2 + 24);
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  swift_beginAccess();
  v23 = v21 == *(a2 + 32) && v22 == *(a2 + 40);
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v24 = *(a1 + 48);
  swift_beginAccess();
  if (v24 != *(a2 + 48))
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v25 = *(a1 + 56);
  v26 = *(a1 + 64);
  swift_beginAccess();
  v27 = v25 == *(a2 + 56) && v26 == *(a2 + 64);
  if (!v27 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v28 = *(a1 + 72);
  v29 = *(a1 + 80);
  swift_beginAccess();
  v30 = v28 == *(a2 + 72) && v29 == *(a2 + 80);
  if (!v30 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v31 = *(a1 + 88);
  v32 = *(a1 + 96);
  swift_beginAccess();
  v33 = v31 == *(a2 + 88) && v32 == *(a2 + 96);
  if (!v33 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v34 = *(v7 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {

    sub_1B8D9207C(v17, &qword_1EBAB9070, &qword_1B964D860);
    if (__swift_getEnumTagSinglePayload(&v10[v34], 1, v4) == 1)
    {
      sub_1B8D9207C(v10, &qword_1EBAB9070, &qword_1B964D860);
LABEL_34:
      v37 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap;
      swift_beginAccess();
      v38 = *(a1 + v37);
      v39 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appIconMap;
      swift_beginAccess();
      v40 = *(a2 + v39);

      sub_1B8DB5F50();
      v42 = v41;

      if (v42)
      {
        v43 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID);
        swift_beginAccess();
        v44 = *v43;
        v45 = v43[1];
        v46 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__providerID);
        swift_beginAccess();
        v47 = v44 == *v46 && v45 == v46[1];
        if (v47 || (sub_1B964C9F0() & 1) != 0)
        {
          v48 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront;
          swift_beginAccess();
          LODWORD(v48) = *(a1 + v48);
          v49 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__appAvailableStorefront;
          swift_beginAccess();
          if (v48 == *(a2 + v49))
          {
            v52 = (a1 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle);
            swift_beginAccess();
            v53 = *v52;
            v54 = v52[1];
            v55 = (a2 + OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__subtitle);
            swift_beginAccess();
            v56 = v53 == *v55 && v54 == v55[1];
            if (v56 || (sub_1B964C9F0() & 1) != 0)
            {
              v57 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri;
              swift_beginAccess();
              LOBYTE(v57) = *(a1 + v57);

              v58 = OBJC_IVAR____TtCV10PegasusAPI36Apple_Parsec_Siri_Legacy_AppPunchOutP33_774564788697D56F55FD71A639F35A5013_StorageClass__launchOverSiri;
              swift_beginAccess();
              LOBYTE(v58) = *(a2 + v58);

              v50 = v57 ^ v58 ^ 1;
              return v50 & 1;
            }
          }
        }
      }

      goto LABEL_41;
    }

    goto LABEL_32;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(&v10[v34], 1, v4) == 1)
  {

    sub_1B8D9207C(v17, &qword_1EBAB9070, &qword_1B964D860);
    sub_1B9114334();
LABEL_32:
    sub_1B8D9207C(v10, &qword_1EBAB9078, &qword_1B964D868);
    goto LABEL_41;
  }

  v35 = v59[0];
  sub_1B9114610();

  v36 = static Apple_Parsec_Siri_Legacy_ImageResource.== infix(_:_:)(v15, v35);
  sub_1B9114334();
  sub_1B8D9207C(v17, &qword_1EBAB9070, &qword_1B964D860);
  sub_1B9114334();
  sub_1B8D9207C(v10, &qword_1EBAB9070, &qword_1B964D860);
  if (v36)
  {
    goto LABEL_34;
  }

LABEL_41:

LABEL_42:
  v50 = 0;
  return v50 & 1;
}

uint64_t sub_1B912C340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC56A0, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912C3C0(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC53F0, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B912C430()
{
  sub_1B8CD2888(&qword_1EBAC53F0, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut);

  return sub_1B964C5D0();
}

uint64_t sub_1B912C4BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5330);
  __swift_project_value_buffer(v0, qword_1EBAC5330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "snippet_objects";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "app_punch_out";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Legacy_AnswerSnippet.decodeMessage<A>(decoder:)()
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
      sub_1B912C7B0();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B912C75C();
    }
  }
}

void sub_1B912C75C()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_128();
  sub_1B8CD2888(v2, v3);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B912C7B0()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(0) + 24);
  type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  sub_1B8CD2888(&qword_1EBAC53F0, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Legacy_AnswerSnippet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC53B0, &qword_1B96923D0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_186_1();
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(v7);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject(0), sub_1B8CD2888(&qword_1EBAC54B8, type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_153_1(), sub_1B964C730(), !v1))
  {
    v12 = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(0);
    v13 = *(v12 + 24);
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_32(v2);
    if (v14)
    {
      sub_1B8D9207C(v2, &qword_1EBAC53B0, &qword_1B96923D0);
LABEL_7:
      v17 = v0 + *(v12 + 20);
      OUTLINED_FUNCTION_491();
      sub_1B964C290();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_424();
    sub_1B9114610();
    OUTLINED_FUNCTION_64_4();
    sub_1B8CD2888(v15, v16);
    OUTLINED_FUNCTION_597_0();
    OUTLINED_FUNCTION_153_1();
    sub_1B964C740();
    OUTLINED_FUNCTION_5_27();
    sub_1B9114334();
    if (!v1)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B912CB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC5698, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912CB88(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC5640, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B912CBF8()
{
  sub_1B8CD2888(&qword_1EBAC5640, type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B912CC9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_182();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B964D050;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = a3;
  *v14 = a4;
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v16 = sub_1B964C750();
  OUTLINED_FUNCTION_21_7(v16);
  (*(v17 + 104))(v14, v15);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_SnippetObject.decodeMessage<A>(decoder:)()
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
      sub_1B912CE68(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B912CE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9088, &unk_1B9692400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5718, &qword_1B96946C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8F1B8B8();
  v28 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9088, &unk_1B9692400);
  }

  else
  {
    sub_1B9114610();
    sub_1B9114610();
    sub_1B8D9207C(v22, &qword_1EBAC5718, &qword_1B96946C0);
    sub_1B9114610();
    sub_1B9114610();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_1B8CD2888(&qword_1EBAC54C8, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer);
  v24 = v31;
  sub_1B964C580();
  if (v24)
  {
    v25 = v22;
    return sub_1B8D9207C(v25, &qword_1EBAC5718, &qword_1B96946C0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC5718, &qword_1B96946C0);
    v25 = v20;
    return sub_1B8D9207C(v25, &qword_1EBAC5718, &qword_1B96946C0);
  }

  sub_1B9114610();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v22, &qword_1EBAC5718, &qword_1B96946C0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9088, &unk_1B9692400);
  sub_1B9114610();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
}

void Apple_Parsec_Siri_Legacy_SnippetObject.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9088, &unk_1B9692400);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  v16 = v0;
  sub_1B8F1B8B8();
  v12 = type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object(0);
  OUTLINED_FUNCTION_178(v7, 1, v12);
  if (v13)
  {
    sub_1B8D9207C(v7, &qword_1EBAB9088, &unk_1B9692400);
LABEL_5:
    v14 = v16 + *(type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject(0) + 20);
    OUTLINED_FUNCTION_491();
    sub_1B964C290();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_13_20();
  sub_1B9114610();
  sub_1B8CD2888(&qword_1EBAC54C8, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer);
  OUTLINED_FUNCTION_597_0();
  OUTLINED_FUNCTION_153_1();
  sub_1B964C740();
  sub_1B9114334();
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Legacy_SnippetObject.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object(v1);
  v3 = OUTLINED_FUNCTION_59_1(v2);
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
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9090, &unk_1B964D880);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_179_1();
  OUTLINED_FUNCTION_50(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_50(v0 + v17);
    if (v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9088, &unk_1B9692400);
LABEL_12:
      v21 = type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject(0);
      OUTLINED_FUNCTION_871(v21);
      OUTLINED_FUNCTION_0_60();
      sub_1B8CD2888(v22, v23);
      v19 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v0 + v17);
  if (v18)
  {
    sub_1B9114334();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB9090, &unk_1B964D880);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_225_3();
  OUTLINED_FUNCTION_246();
  v20 = static Apple_Parsec_Siri_Legacy_SnippetObject.OneOf_Object.== infix(_:_:)();
  sub_1B9114334();
  OUTLINED_FUNCTION_254_2();
  sub_1B8D9207C(v0, &qword_1EBAB9088, &unk_1B9692400);
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

uint64_t sub_1B912D7A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC5690, type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912D820(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC54B8, type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B912D890()
{
  sub_1B8CD2888(&qword_1EBAC54B8, type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject);

  return sub_1B964C5D0();
}

uint64_t sub_1B912D928()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5360);
  __swift_project_value_buffer(v0, qword_1EBAC5360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
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
  *v10 = "lines";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B912DB70()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_128();
  sub_1B8CD2888(v2, v3);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

void Apple_Parsec_Siri_Legacy_Answer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(0), sub_1B8CD2888(&qword_1EBAC54D8, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
    {
      v6 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0) + 24);
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B912DD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC5688, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912DDB8(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC54C8, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B912DE28()
{
  sub_1B8CD2888(&qword_1EBAC54C8, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer);

  return sub_1B964C5D0();
}

uint64_t sub_1B912DEA8()
{
  result = MEMORY[0x1BFADC850](0x656E694C2ELL, 0xE500000000000000);
  qword_1EBAC5378 = 0xD00000000000001FLL;
  unk_1EBAC5380 = 0x80000001B97084F0;
  return result;
}

uint64_t static Apple_Parsec_Siri_Legacy_Answer.Line.protoMessageName.getter()
{
  if (qword_1EBAB7468 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B912DF74()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5388);
  __swift_project_value_buffer(v0, qword_1EBAC5388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_resource";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "is_image_inverted";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Legacy_Answer.Line.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B912E230();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B912E230()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(0) + 28);
  type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(0);
  sub_1B8CD2888(&qword_1EBAC5418, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Legacy_Answer.Line.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v8);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v13 = *v0;
  v14 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v15 || (sub_1B964C700(), !v1))
  {
    v16 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(0);
    v17 = *(v16 + 28);
    sub_1B8F1B8B8();
    v18 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v18, v19, v9);
    if (v20)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9070, &qword_1B964D860);
    }

    else
    {
      OUTLINED_FUNCTION_2_34();
      sub_1B9114610();
      OUTLINED_FUNCTION_33_11();
      sub_1B8CD2888(v21, v22);
      sub_1B964C740();
      OUTLINED_FUNCTION_6_21();
      sub_1B9114334();
      if (v1)
      {
        goto LABEL_10;
      }
    }

    if (*(v3 + 16) != 1 || (sub_1B964C670(), !v1))
    {
      v23 = v3 + *(v16 + 24);
      sub_1B964C290();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Legacy_Answer.Line.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource(v3);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9070, &qword_1B964D860);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9078, &qword_1B964D868);
  OUTLINED_FUNCTION_59_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v16 = *v1;
  v17 = v1[1];
  OUTLINED_FUNCTION_428();
  v20 = v20 && v18 == v19;
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_17;
  }

  v30 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line(0);
  v21 = *(v30 + 28);
  v22 = *(v12 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_461_0();
  OUTLINED_FUNCTION_50(v2);
  if (!v20)
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_50(v2 + v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_2_34();
      sub_1B9114610();
      v24 = OUTLINED_FUNCTION_246();
      static Apple_Parsec_Siri_Legacy_ImageResource.== infix(_:_:)(v24, v25);
      OUTLINED_FUNCTION_141_8();
      sub_1B9114334();
      sub_1B9114334();
      sub_1B8D9207C(v2, &qword_1EBAB9070, &qword_1B964D860);
      if ((v4 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_6_21();
    sub_1B9114334();
LABEL_14:
    sub_1B8D9207C(v2, &qword_1EBAB9078, &qword_1B964D868);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_50(v2 + v22);
  if (!v20)
  {
    goto LABEL_14;
  }

  sub_1B8D9207C(v2, &qword_1EBAB9070, &qword_1B964D860);
LABEL_16:
  if (*(v1 + 16) == *(v0 + 16))
  {
    v27 = *(v30 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_60();
    sub_1B8CD2888(v28, v29);
    v26 = OUTLINED_FUNCTION_634();
    goto LABEL_18;
  }

LABEL_17:
  v26 = 0;
LABEL_18:
  OUTLINED_FUNCTION_264(v26);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B912E790()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD2888(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B912E84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2888(&qword_1EBAC5680, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B912E8CC(uint64_t a1)
{
  v2 = sub_1B8CD2888(&qword_1EBAC54D8, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B912E93C()
{
  sub_1B8CD2888(&qword_1EBAC54D8, type metadata accessor for Apple_Parsec_Siri_Legacy_Answer.Line);

  return sub_1B964C5D0();
}

unint64_t sub_1B912EC1C()
{
  result = qword_1EBAC5490;
  if (!qword_1EBAC5490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5490);
  }

  return result;
}

unint64_t sub_1B912EC74()
{
  result = qword_1EBAC54F0;
  if (!qword_1EBAC54F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC54F0);
  }

  return result;
}

unint64_t sub_1B912ECCC()
{
  result = qword_1EBAC54F8;
  if (!qword_1EBAC54F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC54F8);
  }

  return result;
}

unint64_t sub_1B912ED24()
{
  result = qword_1EBAC5500;
  if (!qword_1EBAC5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5500);
  }

  return result;
}

unint64_t sub_1B912ED7C()
{
  result = qword_1EBAC5508;
  if (!qword_1EBAC5508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC5510, &qword_1B9692520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5508);
  }

  return result;
}

uint64_t sub_1B91303AC()
{
  result = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_Legacy_AnswerSnippet(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9130448()
{
  sub_1B9130564(319, &qword_1ED9CF698, type metadata accessor for Apple_Parsec_Siri_Legacy_PodView, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9130564(319, &qword_1ED9D27D8, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9130564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1B9130624()
{
  result = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Siri_Legacy_PropertyPod(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Parsec_Siri_Legacy_WebLinkPod(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1B9130744()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9130564(319, &qword_1ED9EC990, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B91308DC()
{
  sub_1B9130564(319, &qword_1ED9CF660, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9130564(319, &qword_1ED9ED7D0, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9130A64()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9130564(319, &qword_1ED9D1D48, type metadata accessor for Apple_Parsec_Siri_Legacy_DecoratedText, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B9130564(319, &qword_1ED9D27D8, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B9130BEC()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B9130CA0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_index_205Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_231();

    return __swift_storeEnumTagSinglePayload(v11, v4, v4, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1B9130E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_0();
      return 0;
    }
  }

  return result;
}

void sub_1B9130EDC()
{
  sub_1B9130564(319, &qword_1ED9CF658, type metadata accessor for Apple_Parsec_Siri_Legacy_SnippetObject, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9130564(319, &qword_1ED9D27D8, type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == v3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v11 = sub_1B964C2B0();
    v12 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v12, v3, v11);
}

uint64_t __swift_store_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_128_1(v10);
  if (*(v11 + 84) == a3)
  {
    v12 = OUTLINED_FUNCTION_231();
  }

  else
  {
    v13 = sub_1B964C2B0();
    v12 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v13);
}

void sub_1B9131168(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1B9130564(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_0();
    }
  }
}

uint64_t sub_1B91311D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_102Tm_5_0);
}

uint64_t sub_1B9131230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_103Tm_4_0);
}

uint64_t sub_1B9131298(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_Answer(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

void sub_1B9131388(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B9130564(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9131460()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9130564(319, &qword_1ED9EC990, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9131534()
{
  sub_1B9130564(319, &qword_1ED9ED7D0, type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B9130564(319, &qword_1ED9EC990, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9131694()
{
  sub_1B9130564(319, &qword_1ED9EC990, type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_22_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_71_7()
{
  result = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_73_7()
{
  result = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer(0);
  v1 = *(result + 20);
  return result;
}

void OUTLINED_FUNCTION_83_4()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  v0[3] = 0;
  v0[4] = 0xE000000000000000;
  v0[5] = 0;
  v0[6] = 0;
  v0[7] = 0;
}

uint64_t OUTLINED_FUNCTION_118_4@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v2[4] = a2;
  v2[5].n128_u64[1] = 0;
  v2[6].n128_u64[0] = 0;
  v2[5].n128_u64[0] = a1;
  v5 = v2 + *(v3 + 52);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void OUTLINED_FUNCTION_164_2(uint64_t a1@<X8>)
{
  v1[6] = 0;
  v1[7] = a1;
  v1[8] = 0;
  v1[9] = a1;
  v1[10] = 0;
  v1[11] = a1;
}

uint64_t OUTLINED_FUNCTION_170_3()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  v3 = v0 + *(v1 + 44);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_179_1()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_193_3()
{

  return sub_1B964C9F0();
}

uint64_t OUTLINED_FUNCTION_211_1()
{

  return sub_1B9114610();
}

uint64_t OUTLINED_FUNCTION_224_3@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v4 = v1 + *(v2 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_225_3()
{

  return sub_1B9114610();
}

uint64_t OUTLINED_FUNCTION_234_3(uint64_t a1, uint64_t a2)
{
  __swift_getEnumTagSinglePayload(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_246_2@<X0>(uint64_t a1@<X8>)
{
  v2[5] = v1;
  v2[6] = 0;
  v2[7] = a1;
  v3 = v2 + *(type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet(0) + 36);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_253_2()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_254_2()
{

  return sub_1B9114334();
}

uint64_t OUTLINED_FUNCTION_255_2()
{

  return sub_1B9114610();
}

uint64_t OUTLINED_FUNCTION_256_2()
{

  return sub_1B9114610();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet.templateItems.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet.snippetObjects.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = a1 + *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_Platform_Watchos_TemplateItem.type.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TemplateItem.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TemplateItem.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem(v7);
  OUTLINED_FUNCTION_115(*(v8 + 24));
  OUTLINED_FUNCTION_166_1();
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(v9 + 20);
    if (qword_1EBAB7498 != -1)
    {
      OUTLINED_FUNCTION_207_4();
    }

    *(a1 + v11) = qword_1EBAC57E8;
    v12 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v9);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9060, &qword_1B964D850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_21();
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TemplateItem.value.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB9060, &qword_1B964D850);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_TemplateItem.value.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v9 + 20);
    if (qword_1EBAB7498 != -1)
    {
      OUTLINED_FUNCTION_207_4();
    }

    *(v11 + v18) = qword_1EBAC57E8;
    v19 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, v20, v9);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9060, &qword_1B964D850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_21();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TemplateItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B91325C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91569C8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TemplateItem.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem(0);
  OUTLINED_FUNCTION_200_3(v2);
  v3 = *(v1 + 24);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(0);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t static Apple_Parsec_Siri_Platform_Watchos_TemplateItem.TypeEnum.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B91326F0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_Platform_Watchos_TemplateItem.TypeEnum.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.headerItem.getter()
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_73_8(v6);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(0);
  OUTLINED_FUNCTION_19_17();
  if (v8)
  {
    OUTLINED_FUNCTION_295_1();
    OUTLINED_FUNCTION_283_3();
    v9 = *(v7 + 24);
    OUTLINED_FUNCTION_113_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v1);
    v13 = *(v7 + 28);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v1);
    result = OUTLINED_FUNCTION_19_17();
    if (!v8)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC5AD8, &qword_1B96946F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_58_8();
    OUTLINED_FUNCTION_472();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t sub_1B9132818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B913FC40();
  return a7(v7);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.headerItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AD8, &qword_1B96946F8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_58_8();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_HeaderItem.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v3 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(0);
  OUTLINED_FUNCTION_200_3(v3);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_174_4();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v2);
  v8 = *(v1 + 28);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v2);
}

void Apple_Parsec_Siri_Platform_Watchos_Value.headerItem.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_17_18(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_282_2();
    v17 = *(v1 + 24);
    OUTLINED_FUNCTION_113_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v0);
    v21 = *(v1 + 28);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v0);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v2, &qword_1EBAC5AD8, &qword_1B96946F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_58_8();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.subheaderItem.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_73_8(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v6 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem(0);
  OUTLINED_FUNCTION_19_17();
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v8 = *(v6 + 20);
    v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
    result = OUTLINED_FUNCTION_11_31(v9);
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC5AE0, &qword_1B9694700);
    }
  }

  else
  {
    OUTLINED_FUNCTION_56_5();
    OUTLINED_FUNCTION_472();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.subheaderItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AE0, &qword_1B9694700);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_56_5();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_Platform_Watchos_Value.subheaderItem.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_17_18(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    v17 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
    OUTLINED_FUNCTION_6_19(v17);
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5AE0, &qword_1B9694700);
    }
  }

  else
  {
    OUTLINED_FUNCTION_56_5();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B9132ED4()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_186();
    sub_1B913FC40();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B913FC94();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t sub_1B9132FA4(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_73_8(0);
  v13 = *a3;
  OUTLINED_FUNCTION_119_0();
  sub_1B8D92024();
  a4(0);
  v14 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v14, v15, v16);
  v17 = OUTLINED_FUNCTION_196();
  sub_1B8D9207C(v17, v18, v4);
  return OUTLINED_FUNCTION_466_0();
}

void sub_1B9133090()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_16();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    *(v5 + v12) = sub_1B913ED14();
  }

  v4(0);
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = *v2;
  OUTLINED_FUNCTION_55_4();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.heroImageItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_73_8(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(0);
  OUTLINED_FUNCTION_19_17();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    OUTLINED_FUNCTION_283_3();
    v10 = *(v8 + 24);
    type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_245_2();
    v16 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(v15);
    result = OUTLINED_FUNCTION_11_31(v16);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5AE8, &qword_1B9694708);
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_472();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.heroImageItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AE8, &qword_1B9694708);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_54_8();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(0);
  OUTLINED_FUNCTION_200_3(v2);
  v3 = *(v1 + 24);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_244_3();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(v8);
  v9 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void Apple_Parsec_Siri_Platform_Watchos_Value.heroImageItem.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_17_18(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v12 = 0;
    *(v12 + 8) = 1;
    OUTLINED_FUNCTION_282_2();
    v17 = *(v0 + 24);
    type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_233_0();
    v23 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(v22);
    OUTLINED_FUNCTION_6_19(v23);
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5AE8, &qword_1B9694708);
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.bodyTextItem.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_73_8(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v6 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(0);
  OUTLINED_FUNCTION_19_17();
  if (v7)
  {
    OUTLINED_FUNCTION_295_1();
    OUTLINED_FUNCTION_283_3();
    v8 = *(v6 + 24);
    v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(0);
    result = OUTLINED_FUNCTION_11_31(v9);
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC5AF0, &qword_1B9694710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_472();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.bodyTextItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AF0, &qword_1B9694710);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_53_10();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_BodyTextItem.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(0);
  OUTLINED_FUNCTION_200_3(v2);
  v3 = *(v1 + 24);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(0);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Siri_Platform_Watchos_Value.bodyTextItem.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_17_18(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_282_2();
    v16 = *(v0 + 24);
    v17 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(0);
    OUTLINED_FUNCTION_6_19(v17);
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5AF0, &qword_1B9694710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.mapViewItem.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_73_8(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v10 = a1 + *(v8 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5AF8, &qword_1B9694718);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_9();
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.mapViewItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AF8, &qword_1B9694718);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_52_9();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_MapViewItem.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem(v1);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  v3 = v0 + *(v2 + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_Platform_Watchos_Value.mapViewItem.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_17_18(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0;
    v17 = v12 + *(v0 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5AF8, &qword_1B9694718);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_9();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.propertyListItem.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_73_8(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem(0);
  OUTLINED_FUNCTION_19_17();
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_283_3();
    v10 = *(v8 + 24);
    v11 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
    result = OUTLINED_FUNCTION_11_31(v11);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5B00, &qword_1B9694720);
    }
  }

  else
  {
    OUTLINED_FUNCTION_51_11();
    OUTLINED_FUNCTION_472();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.propertyListItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B00, &qword_1B9694720);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_51_11();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_PropertyListItem.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem(0);
  OUTLINED_FUNCTION_200_3(v2);
  v3 = *(v1 + 24);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Siri_Platform_Watchos_Value.propertyListItem.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_17_18(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v12 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_282_2();
    v17 = *(v0 + 24);
    v18 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
    OUTLINED_FUNCTION_6_19(v18);
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5B00, &qword_1B9694720);
    }
  }

  else
  {
    OUTLINED_FUNCTION_51_11();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.keylineItem.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_73_8(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_KeylineItem(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC5B08, &qword_1B9694728);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_10();
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.keylineItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B08, &qword_1B9694728);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_50_10();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_KeylineItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_Platform_Watchos_Value.keylineItem.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_690();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_3(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_KeylineItem(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_17_18(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v0);
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_99_0(v0);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B08, &qword_1B9694728);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_10();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.lineDetailItem.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_73_8(v5);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v6 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem(0);
  OUTLINED_FUNCTION_19_17();
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v8 = *(v6 + 20);
    v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
    result = OUTLINED_FUNCTION_11_31(v9);
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC5B10, &qword_1B9694730);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_11();
    OUTLINED_FUNCTION_472();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.lineDetailItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B10, &qword_1B9694730);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_49_11();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B91345CC(uint64_t (*a1)(void))
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  LODWORD(a1) = *(a1(0) + 20);
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Apple_Parsec_Siri_Platform_Watchos_Value.lineDetailItem.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_17_18(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    v17 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
    OUTLINED_FUNCTION_6_19(v17);
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5B10, &qword_1B9694730);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_11();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.buttonItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_73_8(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(0);
  OUTLINED_FUNCTION_19_17();
  if (v8)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0xE000000000000000;
    OUTLINED_FUNCTION_307_0();
    v9 = OUTLINED_FUNCTION_245_2();
    v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(v9);
    result = OUTLINED_FUNCTION_11_31(v10);
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5B18, &qword_1B9694738);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_7();
    OUTLINED_FUNCTION_472();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.buttonItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B18, &qword_1B9694738);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ButtonItem.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  v1 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(0);
  OUTLINED_FUNCTION_191_2(v1);
  v2 = OUTLINED_FUNCTION_244_3();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(v2);
  v3 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_Value.buttonItem.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_17_18(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0xE000000000000000;
    OUTLINED_FUNCTION_280_0();
    v16 = OUTLINED_FUNCTION_233_0();
    v17 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(v16);
    OUTLINED_FUNCTION_6_19(v17);
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B18, &qword_1B9694738);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_7();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.columnDataListItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_73_8(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(0);
  OUTLINED_FUNCTION_19_17();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_307_0();
    v10 = *(v8 + 28);
    OUTLINED_FUNCTION_75_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    v15 = *(v8 + 32);
    v16 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
    result = OUTLINED_FUNCTION_11_31(v16);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5B20, &qword_1B9694740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_8();
    OUTLINED_FUNCTION_472();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.columnDataListItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B20, &qword_1B9694740);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v3 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(0);
  OUTLINED_FUNCTION_191_2(v3);
  v4 = *(v2 + 28);
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = *(v2 + 32);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  v10 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void Apple_Parsec_Siri_Platform_Watchos_Value.columnDataListItem.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_17_18(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v12 = 0;
    *(v12 + 8) = 1;
    *(v12 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_280_0();
    v17 = *(v0 + 28);
    OUTLINED_FUNCTION_75_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = *(v0 + 32);
    v23 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
    OUTLINED_FUNCTION_6_19(v23);
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5B20, &qword_1B9694740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_8();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.tableHeaderItem.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_73_8(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v10 = a1 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5B28, &qword_1B9694748);
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_7();
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.tableHeaderItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B28, &qword_1B9694748);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_45_7();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_Platform_Watchos_Value.tableHeaderItem.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_3(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_17_18(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    *v11 = MEMORY[0x1E69E7CC0];
    v16 = v11 + *(v9 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B28, &qword_1B9694748);
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_7();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.tableRowItem.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_73_8(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(0);
  OUTLINED_FUNCTION_19_17();
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_283_3();
    v10 = *(v8 + 24);
    OUTLINED_FUNCTION_75_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_245_2();
    v16 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v15);
    result = OUTLINED_FUNCTION_11_31(v16);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5B30, &qword_1B9694750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_472();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.tableRowItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B30, &qword_1B9694750);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TableRowItem.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(0);
  OUTLINED_FUNCTION_200_3(v2);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_244_3();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v8);
  v9 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void Apple_Parsec_Siri_Platform_Watchos_Value.tableRowItem.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_17_18(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v12 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_282_2();
    v17 = *(v0 + 24);
    OUTLINED_FUNCTION_75_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_233_0();
    v23 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v22);
    OUTLINED_FUNCTION_6_19(v23);
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5B30, &qword_1B9694750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.comparisonItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_73_8(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = *(v8 + 20);
    if (qword_1EBAB7568 != -1)
    {
      OUTLINED_FUNCTION_194_2();
    }

    *(a1 + v10) = qword_1EBAC5A48;
    v11 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5B38, &qword_1B9694758);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_9();
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.comparisonItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B38, &qword_1B9694758);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_43_9();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B913596C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

void Apple_Parsec_Siri_Platform_Watchos_Value.comparisonItem.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_17_18(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(v0 + 20);
    if (qword_1EBAB7568 != -1)
    {
      OUTLINED_FUNCTION_194_2();
    }

    *(v12 + v17) = qword_1EBAC5A48;
    v18 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, v0);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5B38, &qword_1B9694758);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_9();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.attributionItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_73_8(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem(0);
  OUTLINED_FUNCTION_19_17();
  if (v8)
  {
    OUTLINED_FUNCTION_295_1();
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    OUTLINED_FUNCTION_307_0();
    v9 = OUTLINED_FUNCTION_245_2();
    v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v9);
    result = OUTLINED_FUNCTION_11_31(v10);
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5B40, &qword_1B9694760);
    }
  }

  else
  {
    OUTLINED_FUNCTION_42_7();
    OUTLINED_FUNCTION_472();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.attributionItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B40, &qword_1B9694760);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_AttributionItem.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem(0);
  OUTLINED_FUNCTION_191_2(v2);
  v3 = OUTLINED_FUNCTION_244_3();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v3);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Siri_Platform_Watchos_Value.attributionItem.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_17_18(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_110_4();
    *(v11 + 16) = 0;
    *(v11 + 24) = 1;
    OUTLINED_FUNCTION_280_0();
    v16 = OUTLINED_FUNCTION_233_0();
    v17 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v16);
    OUTLINED_FUNCTION_6_19(v17);
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B40, &qword_1B9694760);
    }
  }

  else
  {
    OUTLINED_FUNCTION_42_7();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.specificAnswerItem.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_73_8(v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_204_2();
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(0);
  OUTLINED_FUNCTION_19_17();
  if (v10)
  {
    OUTLINED_FUNCTION_295_1();
    *(a1 + 16) = 0;
    *(a1 + 24) = v11;
    OUTLINED_FUNCTION_307_0();
    v12 = *(v9 + 28);
    OUTLINED_FUNCTION_113_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v2);
    v16 = *(v9 + 32);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v2);
    result = OUTLINED_FUNCTION_19_17();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5B48, &qword_1B9694768);
    }
  }

  else
  {
    OUTLINED_FUNCTION_41_13();
    OUTLINED_FUNCTION_472();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.specificAnswerItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B48, &qword_1B9694768);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_41_13();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v4;
  v5 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(0);
  OUTLINED_FUNCTION_191_2(v5);
  v6 = *(v2 + 28);
  OUTLINED_FUNCTION_174_4();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
  v10 = *(v2 + 32);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v3);
}

void Apple_Parsec_Siri_Platform_Watchos_Value.specificAnswerItem.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = *(v12 + 64);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_187(v14);
  v16 = __swift_coroFrameAllocStub(v15);
  OUTLINED_FUNCTION_17_18(v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    OUTLINED_FUNCTION_110_4();
    *(v13 + 16) = 0;
    *(v13 + 24) = v18;
    OUTLINED_FUNCTION_280_0();
    v19 = *(v1 + 28);
    OUTLINED_FUNCTION_113_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v0);
    v23 = *(v1 + 32);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v0);
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v2, &qword_1EBAC5B48, &qword_1B9694768);
    }
  }

  else
  {
    OUTLINED_FUNCTION_41_13();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.imageCollectionItem.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_73_8(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v10 = a1 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5B50, &qword_1B9694770);
    }
  }

  else
  {
    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Value.imageCollectionItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B50, &qword_1B9694770);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_162_2(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_40_0();
    v9 = sub_1B913ED14();
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_60_8();
  OUTLINED_FUNCTION_237_2();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B9136590@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_Platform_Watchos_Value.imageCollectionItem.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_3(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_17_18(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    *v11 = MEMORY[0x1E69E7CC0];
    v16 = v11 + *(v9 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B50, &qword_1B9694770);
    }
  }

  else
  {
    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_HeaderItem.header.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC5B58, &qword_1B9694778);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_HeaderItem.header.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_10_27(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_147_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B913699C()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  v8 = *(v1(0) + 24);
  OUTLINED_FUNCTION_24_3();
  sub_1B8D92024();
  v0(0);
  v9 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v12, v13, v14);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9136A84()
{
  OUTLINED_FUNCTION_111_0();
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = *(v2(v1) + 24);
  OUTLINED_FUNCTION_114_4();
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_HeaderItem.subtitle.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC5B58, &qword_1B9694778);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_HeaderItem.subtitle.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_10_27(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_147_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9136D2C()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B9136DB4()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_HeaderItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void Apple_Parsec_Siri_Platform_Watchos_SubheaderItem.leftText.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_10_27(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 20));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_147_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.watchImageResource.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(v7);
  OUTLINED_FUNCTION_115(*(v8 + 24));
  OUTLINED_FUNCTION_166_1();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9038, &qword_1B9694780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_35();
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.watchImageResource.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 48) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  *(v1 + 72) = 1;
  *(v1 + 80) = xmmword_1B9652FE0;
  v2 = v1 + *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0) + 52);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.watchImageResource.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(v14);
  OUTLINED_FUNCTION_116_0(*(v15 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_24_18();
    OUTLINED_FUNCTION_212_3(xmmword_1B9652FE0);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9038, &qword_1B9694780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_35();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.caption.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(v5);
  OUTLINED_FUNCTION_115(*(v6 + 28));
  OUTLINED_FUNCTION_166_1();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_132_2();
    OUTLINED_FUNCTION_188_2(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC5B60, &qword_1B9694788);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_28();
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.caption.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC5B60, &qword_1B9694788);
  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B913748C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v3 = v1 + *(v2(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.caption.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 8) = v7;
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(0);
  OUTLINED_FUNCTION_7_17(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(v13);
  OUTLINED_FUNCTION_64_0(*(v14 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_147_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v7, &qword_1EBAC5B60, &qword_1B9694788);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_28();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9137624()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  v8 = *(v1(0) + 28);
  OUTLINED_FUNCTION_24_3();
  sub_1B8D92024();
  v0(0);
  v9 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v12, v13, v14);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B913770C()
{
  OUTLINED_FUNCTION_111_0();
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = *(v2(v1) + 28);
  OUTLINED_FUNCTION_114_4();
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9137810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9156A1C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.ContentPosition.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B91378F4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.ContentPosition.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_BodyTextItem.decoratedBodyText.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(v5);
  OUTLINED_FUNCTION_115(*(v6 + 24));
  OUTLINED_FUNCTION_166_1();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_132_2();
    OUTLINED_FUNCTION_188_2(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC5B60, &qword_1B9694788);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_28();
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_BodyTextItem.decoratedBodyText.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC5B60, &qword_1B9694788);
  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_BodyTextItem.decoratedBodyText.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 8) = v7;
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(0);
  OUTLINED_FUNCTION_7_17(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(v13);
  OUTLINED_FUNCTION_64_0(*(v14 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_147_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v7, &qword_1EBAC5B60, &qword_1B9694788);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_28();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_BodyTextItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_MapViewItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_PropertyListItem.title.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC5B58, &qword_1B9694778);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_PropertyListItem.title.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_10_27(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_147_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_PropertyListItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_AttributionItem.imageResource.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_AttributionItem.imageResource.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem(v14);
  OUTLINED_FUNCTION_116_0(*(v15 + 28));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_24_18();
    OUTLINED_FUNCTION_212_3(xmmword_1B9652FE0);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9038, &qword_1B9694780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_35();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Apple_Parsec_Siri_Platform_Watchos_AttributionItem.attributionPosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_AttributionItem.attributionPosition.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_1B91382E0()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B9138368()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_AttributionItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9138440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9156A70();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_Platform_Watchos_AttributionItem.AttributionPosition.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B9138524@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_Platform_Watchos_AttributionItem.AttributionPosition.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.localImageResourceCode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.localImageResourceCode.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

void Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.imageDownloadType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.imageDownloadType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.imageBytes.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.imageBytes.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v0) + 52);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v0) + 52);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v0) + 52);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9138880(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9156AC4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9138900(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9156B18();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.LocalImageResourceCode.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B91389E4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.LocalImageResourceCode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.ImageDownloadType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B9138A98@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.ImageDownloadType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_DecoratedText.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_DecoratedString.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

void Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.regionProperty.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.regionProperty.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1B9138CC0()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B9138D48()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9138E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9156B6C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.RegionProperty.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B9138F44@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.RegionProperty.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Siri_Platform_Watchos_LineDetailItem.title.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_10_27(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 20));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_147_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B91390B8(uint64_t (*a1)(void))
{
  v2 = OUTLINED_FUNCTION_303();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_79();
  v8 = *(a1(0) + 20);
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v9 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  v12 = OUTLINED_FUNCTION_246();
  sub_1B8D9207C(v12, v13, &qword_1B9694778);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B913918C()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 20), &qword_1EBAC5B58, &qword_1B9694778);
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ButtonItem.label.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC5B58, &qword_1B9694778);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_ButtonItem.label.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_10_27(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_147_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ButtonItem.referentialCommandID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ButtonItem.referentialCommandID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ButtonItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.title.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC5B58, &qword_1B9694778);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.title.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_10_27(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_147_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.imageResource.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(v7);
  OUTLINED_FUNCTION_115(*(v8 + 32));
  OUTLINED_FUNCTION_166_1();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9038, &qword_1B9694780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_35();
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.imageResource.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.imageResource.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(v14);
  OUTLINED_FUNCTION_116_0(*(v15 + 32));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_24_18();
    OUTLINED_FUNCTION_212_3(xmmword_1B9652FE0);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9038, &qword_1B9694780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_35();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9139B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9156BC0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.RowLayout.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B9139BE4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.RowLayout.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TableRowItem.title.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC5B58, &qword_1B9694778);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_TableRowItem.title.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_10_27(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_147_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TableRowItem.imageResource.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_TableRowItem.imageResource.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(v14);
  OUTLINED_FUNCTION_116_0(*(v15 + 28));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_24_18();
    OUTLINED_FUNCTION_212_3(xmmword_1B9652FE0);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9038, &qword_1B9694780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_35();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TableRowItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B913A15C()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = *(v0(v8) + 20);
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  OUTLINED_FUNCTION_174_4();
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_132_2();
    OUTLINED_FUNCTION_188_2(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t sub_1B913A260()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 20), &qword_1EBAC5B58, &qword_1B9694778);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.decoratedTitle.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_10_27(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 20));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_147_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B913A420()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = *(v0(v8) + 24);
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  OUTLINED_FUNCTION_174_4();
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_132_2();
    OUTLINED_FUNCTION_188_2(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.decoratedValue.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC5B58, &qword_1B9694778);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.decoratedValue.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_10_27(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_147_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.imageResource.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.imageResource.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(v14);
  OUTLINED_FUNCTION_116_0(*(v15 + 28));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_24_18();
    OUTLINED_FUNCTION_212_3(xmmword_1B9652FE0);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9038, &qword_1B9694780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_35();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v1 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  v2 = *(v1 + 20);
  OUTLINED_FUNCTION_174_4();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v0);
  v6 = *(v1 + 24);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v0);
  v10 = OUTLINED_FUNCTION_244_3();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v10);
  v11 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ComparisonItem.firstItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B68, &unk_1B9694790);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  v6 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v5) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9151D24();
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_237_2();
  v12 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  OUTLINED_FUNCTION_65_1(v12);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_Platform_Watchos_ComparisonItem.firstItem.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_224_2(v15);
  v17 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v16);
  OUTLINED_FUNCTION_77_0(v17);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v1 + 20);
    OUTLINED_FUNCTION_113_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v0);
    v23 = *(v1 + 24);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v0);
    v27 = OUTLINED_FUNCTION_233_0();
    v28 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v27);
    OUTLINED_FUNCTION_6_19(v28);
    if (!v18)
    {
      sub_1B8D9207C(v2, &qword_1EBAC5B68, &unk_1B9694790);
    }
  }

  else
  {
    OUTLINED_FUNCTION_57_9();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ComparisonItem.hasFirstItem.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_238_2();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &unk_1B9694790);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Platform_Watchos_ComparisonItem.clearFirstItem()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B68, &unk_1B9694790);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v6) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    *(v1 + v7) = sub_1B9151D24();
  }

  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t sub_1B913ADD4(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_690();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_31_2();
  v11 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v10);
  OUTLINED_FUNCTION_77_0(v11);
  v12 = *a1;
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_209();
  sub_1B8D92024();
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  OUTLINED_FUNCTION_19_17();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v13 + 20);
    OUTLINED_FUNCTION_113_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v2);
    v19 = *(v13 + 24);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v2);
    v23 = OUTLINED_FUNCTION_245_2();
    v24 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v23);
    result = OUTLINED_FUNCTION_11_31(v24);
    if (!v14)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5B68, &unk_1B9694790);
    }
  }

  else
  {
    OUTLINED_FUNCTION_472();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ComparisonItem.secondItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B68, &unk_1B9694790);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  v6 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v5) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9151D24();
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_237_2();
  v12 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  OUTLINED_FUNCTION_65_1(v12);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_Platform_Watchos_ComparisonItem.secondItem.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_224_2(v15);
  v17 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v16);
  OUTLINED_FUNCTION_77_0(v17);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v1 + 20);
    OUTLINED_FUNCTION_113_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v0);
    v23 = *(v1 + 24);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v0);
    v27 = OUTLINED_FUNCTION_233_0();
    v28 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v27);
    OUTLINED_FUNCTION_6_19(v28);
    if (!v18)
    {
      sub_1B8D9207C(v2, &qword_1EBAC5B68, &unk_1B9694790);
    }
  }

  else
  {
    OUTLINED_FUNCTION_57_9();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ComparisonItem.hasSecondItem.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_238_2();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &unk_1B9694790);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Platform_Watchos_ComparisonItem.clearSecondItem()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B68, &unk_1B9694790);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v6) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    *(v1 + v7) = sub_1B9151D24();
  }

  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ComparisonItem.footNote.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v5);
  OUTLINED_FUNCTION_77_0(v6);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_174_4();
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_132_2();
    OUTLINED_FUNCTION_188_2(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ComparisonItem.footNote.setter()
{
  OUTLINED_FUNCTION_183_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  v6 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v5) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9151D24();
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_237_2();
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_Platform_Watchos_ComparisonItem.footNote.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  v16 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v15);
  OUTLINED_FUNCTION_77_0(v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    OUTLINED_FUNCTION_110_4();
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ComparisonItem.hasFootNote.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_238_2();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &qword_1B9694778);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Siri_Platform_Watchos_ComparisonItem.clearFootNote()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v6) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    *(v1 + v7) = sub_1B9151D24();
  }

  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SnippetObject.answer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_74_7();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject.OneOf_Object(0);
  v9 = OUTLINED_FUNCTION_208_3();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  if (v12)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9050, &qword_1B964D840);
    OUTLINED_FUNCTION_132_2();
    *(a1 + 16) = MEMORY[0x1E69E7CC0];
    v13 = a1 + *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(0) + 24);
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_29_20();
    OUTLINED_FUNCTION_288();
    return sub_1B913EA40();
  }
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SnippetObject.answer.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9050, &qword_1B964D840);
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_432();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject.OneOf_Object(0);
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Siri_Platform_Watchos_SnippetObject.answer.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v1[1] = v7;
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(0);
  OUTLINED_FUNCTION_135_0(v8);
  v10 = *(v9 + 64);
  v1[2] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v1[3] = v11;
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  v12 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject.OneOf_Object(0);
  v1[4] = v12;
  OUTLINED_FUNCTION_178(v7, 1, v12);
  if (v13)
  {
    sub_1B8D9207C(v7, &qword_1EBAB9050, &qword_1B964D840);
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = MEMORY[0x1E69E7CC0];
    v14 = v11 + *(v0 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_29_20();
    OUTLINED_FUNCTION_74_7();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_242();
}

void sub_1B913BB18()
{
  OUTLINED_FUNCTION_243();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    v7 = (*v0)[3];
    sub_1B913FC40();
    sub_1B8D9207C(v5, &qword_1EBAB9050, &qword_1B964D840);
    sub_1B913EA40();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
    OUTLINED_FUNCTION_182_3();
    sub_1B913FC94();
  }

  else
  {
    sub_1B8D9207C(**v0, &qword_1EBAB9050, &qword_1B964D840);
    OUTLINED_FUNCTION_29_20();
    OUTLINED_FUNCTION_1_0();
    sub_1B913EA40();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SnippetObject.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t static Apple_Parsec_Siri_Platform_Watchos_SnippetObject.OneOf_Object.== infix(_:_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9048, &unk_1B96947A0);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (&v20 - v5);
  v7 = &v20 + *(v4 + 56) - v5;
  sub_1B913FC40();
  sub_1B913FC40();
  v8 = *v6;
  v9 = v6[1];
  OUTLINED_FUNCTION_292_1();
  v12 = v12 && v10 == v11;
  if (v12 || (sub_1B964C9F0() & 1) != 0)
  {
    v13 = v6[2];
    v14 = *(v7 + 2);
    sub_1B8D6B84C();
    if (v15)
    {
      v16 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(0) + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_52();
      sub_1B8CD28D0(v17, v18);
      sub_1B964C850();
    }
  }

  sub_1B913FC94();
  OUTLINED_FUNCTION_472();
  sub_1B913FC94();
  return OUTLINED_FUNCTION_466_0();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SnippetObject.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject.OneOf_Object(v1);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = v0 + *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Answer.lines.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Answer.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Answer.Line.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Answer.Line.text.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_1B913BFEC()
{
  OUTLINED_FUNCTION_79_4();
  v3 = OUTLINED_FUNCTION_690();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(v1(v9) + 28);
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.init()(v0);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v2, &qword_1EBAB9038, &qword_1B9694780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Answer.Line.watchImageResource.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_Answer.Line.watchImageResource.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line(v14);
  OUTLINED_FUNCTION_116_0(*(v15 + 28));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_24_18();
    OUTLINED_FUNCTION_212_3(xmmword_1B9652FE0);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9038, &qword_1B9694780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_35();
    OUTLINED_FUNCTION_246();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Answer.Line.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Answer.Line.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line(0);
  OUTLINED_FUNCTION_191_2(v2);
  v3 = OUTLINED_FUNCTION_244_3();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v3);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1B913C42C()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = *(v0(v8) + 28);
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  OUTLINED_FUNCTION_174_4();
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_132_2();
    OUTLINED_FUNCTION_188_2(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.decoratedValue.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC5B58, &qword_1B9694778);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.decoratedValue.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_10_27(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_147_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.footer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.footer.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.decoratedFooter.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(v5);
  OUTLINED_FUNCTION_115(*(v6 + 32));
  OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_174_4();
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_132_2();
    OUTLINED_FUNCTION_188_2(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_182();
    return sub_1B913EA40();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.decoratedFooter.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAC5B58, &qword_1B9694778);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_122_0();
  sub_1B913EA40();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.decoratedFooter.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_10_27(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_147_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_461();
    sub_1B913EA40();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B913C9BC(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    OUTLINED_FUNCTION_128();
    sub_1B913FC40();
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B913EA40();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
    sub_1B913FC94();
  }

  else
  {
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B913EA40();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t sub_1B913CB0C()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  v8 = *(v1(0) + 32);
  OUTLINED_FUNCTION_24_3();
  sub_1B8D92024();
  v0(0);
  v9 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v12, v13, v14);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B913CBF4()
{
  OUTLINED_FUNCTION_111_0();
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = *(v2(v1) + 32);
  OUTLINED_FUNCTION_114_4();
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B913CD6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5788);
  __swift_project_value_buffer(v0, qword_1EBAC5788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "template_items";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "snippet_objects";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet.decodeMessage<A>(decoder:)()
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
      sub_1B913D00C();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9156564();
    }
  }
}

uint64_t sub_1B913D00C()
{
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject(0);
  sub_1B8CD28D0(&qword_1EBAC5B78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem(0), sub_1B8CD28D0(&qword_1EBAC5B70, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_749(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject(0), sub_1B8CD28D0(&qword_1EBAC5B78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      v4 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B913D300(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6100, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B913D380(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5DF8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B913D3F0()
{
  sub_1B8CD28D0(&qword_1EBAC5DF8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B913D47C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC57A0);
  __swift_project_value_buffer(v0, qword_1EBAC57A0);
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
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TemplateItem.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_9();
      sub_1B913D734();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B913D6CC();
    }
  }

  return result;
}

uint64_t sub_1B913D734()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem(0) + 24);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(0);
  sub_1B8CD28D0(&qword_1EBAC5B90, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_TemplateItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_26_14();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9060, &qword_1B964D850);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_151();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(v7);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  if (!*v1 || (v12 = *(v1 + 8), OUTLINED_FUNCTION_540_0(*v1), sub_1B91569C8(), OUTLINED_FUNCTION_17_15(), sub_1B964C680(), !v0))
  {
    v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem(0);
    OUTLINED_FUNCTION_285_1(*(v13 + 24));
    sub_1B8D92024();
    v14 = OUTLINED_FUNCTION_443();
    OUTLINED_FUNCTION_178(v14, v15, v8);
    if (v16)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9060, &qword_1B964D850);
LABEL_7:
      v17 = v1 + *(v13 + 20);
      OUTLINED_FUNCTION_248_1();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_30_21();
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5B90, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value);
    OUTLINED_FUNCTION_597_0();
    OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_17_15();
    sub_1B964C740();
    OUTLINED_FUNCTION_178_4();
    sub_1B913FC94();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_TemplateItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v5 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9060, &qword_1B964D850);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9068, &qword_1B964D858);
  OUTLINED_FUNCTION_59_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_88();
  v17 = *(v0 + 8);
  if (!sub_1B8D92198(*v1, *(v1 + 8), *v0))
  {
    goto LABEL_12;
  }

  v34 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem(0);
  v18 = *(v34 + 24);
  v19 = *(v13 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v20)
  {
    OUTLINED_FUNCTION_37_0(v2 + v19);
    if (v20)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9060, &qword_1B964D850);
LABEL_17:
      v31 = *(v34 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_52();
      sub_1B8CD28D0(v32, v33);
      v23 = OUTLINED_FUNCTION_199_0();
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v19);
  if (v20)
  {
    OUTLINED_FUNCTION_178_4();
    sub_1B913FC94();
LABEL_10:
    v21 = &qword_1EBAB9068;
    v22 = &qword_1B964D858;
LABEL_11:
    sub_1B8D9207C(v2, v21, v22);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_30_21();
  sub_1B913EA40();
  v24 = *(v5 + 20);
  if (*(v4 + v24) != *(v3 + v24))
  {
    v25 = *(v4 + v24);

    OUTLINED_FUNCTION_616();
    sub_1B9142E4C();
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      sub_1B913FC94();
      sub_1B913FC94();
      v21 = &qword_1EBAB9060;
      v22 = &qword_1B964D850;
      goto LABEL_11;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v28, v29);
  v30 = sub_1B964C850();
  sub_1B913FC94();
  sub_1B913FC94();
  sub_1B8D9207C(v2, &qword_1EBAB9060, &qword_1B964D850);
  if (v30)
  {
    goto LABEL_17;
  }

LABEL_12:
  v23 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v23);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B913DD70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC60F8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B913DDF0(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5B70, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B913DE60()
{
  sub_1B8CD28D0(&qword_1EBAC5B70, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B913DEE0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC57B8);
  __swift_project_value_buffer(v0, qword_1EBAC57B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1B96566C0;
  v4 = v40 + v3 + v1[14];
  *(v40 + v3) = 0;
  *v4 = "TYPE_UNKNOWN";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v40 + v3 + v2 + v1[14];
  *(v40 + v3 + v2) = 1;
  *v8 = "TYPE_HEADER_ITEM";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v40 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "TYPE_SUB_HEADER_ITEM";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v7();
  v11 = (v40 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "TYPE_HERO_IMAGE_ITEM";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v40 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "TYPE_BODY_TEXT_ITEM";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v40 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "TYPE_MAP_VIEW_ITEM";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v40 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "TYPE_PROPERTY_LIST_ITEM";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v7();
  v19 = (v40 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "TYPE_KEYLINE_ITEM";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v40 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "TYPE_LINE_DETAIL_ITEM";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v7();
  v23 = (v40 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TYPE_BUTTON_ITEM";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v40 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "TYPE_COLUMN_DATA_LIST_ITEM";
  *(v26 + 1) = 26;
  v26[16] = 2;
  v7();
  v27 = (v40 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "TYPE_TABLE_HEADER_ITEM";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v7();
  v29 = (v40 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "TYPE_TABLE_ROW_ITEM";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v7();
  v31 = (v40 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "TYPE_COMPARISON_ITEM";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v7();
  v33 = (v40 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "TYPE_ATTRIBUTION_ITEM";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v7();
  v35 = (v40 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "TYPE_SPECIFIC_ANSWER_ITEM";
  *(v36 + 1) = 25;
  v36[16] = 2;
  v7();
  v37 = (v40 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "TYPE_IMAGE_COLLECTION_ITEM";
  *(v38 + 1) = 26;
  v38[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B913E47C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC57D0);
  __swift_project_value_buffer(v0, qword_1EBAC57D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B96594C0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "header_item";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "subheader_item";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "hero_image_item";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "body_text_item";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "map_view_item";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "property_list_item";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "keyline_item";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "line_detail_item";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "button_item";
  *(v23 + 1) = 11;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "column_data_list_item";
  *(v25 + 1) = 21;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "table_header_item";
  *(v27 + 1) = 17;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "table_row_item";
  *(v29 + 1) = 14;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "comparison_item";
  *(v31 + 1) = 15;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "attribution_item";
  *(v33 + 1) = 16;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "specific_answer_item";
  *(v35 + 1) = 20;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "image_collection_item";
  *(v37 + 1) = 21;
  v37[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B913EA40()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B913EAB4()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__headerItem;
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__subheaderItem;
  v4 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__heroImageItem;
  v6 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__bodyTextItem;
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__mapViewItem;
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__propertyListItem;
  v12 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__keylineItem;
  v14 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_KeylineItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__lineDetailItem;
  v16 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__buttonItem;
  v18 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__columnDataListItem;
  v20 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__tableHeaderItem;
  v22 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__tableRowItem;
  v24 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__comparisonItem;
  v26 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__attributionItem;
  v28 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__specificAnswerItem;
  v30 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__imageCollectionItem;
  v32 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v31, 1, 1, v32);
  return v0;
}

uint64_t sub_1B913ED14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B50, &qword_1B9694770);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v80[27] = v80 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B48, &qword_1B9694768);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v80[26] = v80 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B40, &qword_1B9694760);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v80[25] = v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B38, &qword_1B9694758);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v80[24] = v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B30, &qword_1B9694750);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v80[23] = v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B28, &qword_1B9694748);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v80[22] = v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B20, &qword_1B9694740);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v80[21] = v80 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B18, &qword_1B9694738);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v80[20] = v80 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B10, &qword_1B9694730);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v80[19] = v80 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B08, &qword_1B9694728);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v80[18] = v80 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B00, &qword_1B9694720);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v80[15] = v80 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AF8, &qword_1B9694718);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v80[11] = v80 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AF0, &qword_1B9694710);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v80[7] = v80 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AE8, &qword_1B9694708);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v80[4] = v80 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AE0, &qword_1B9694700);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AD8, &qword_1B96946F8);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__headerItem;
  v48 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v47, 1, 1, v48);
  v49 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__subheaderItem;
  v50 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v49, 1, 1, v50);
  v51 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__heroImageItem;
  v52 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v51, 1, 1, v52);
  v53 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__bodyTextItem;
  v80[1] = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__bodyTextItem;
  v54 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v53, 1, 1, v54);
  v55 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__mapViewItem;
  v80[2] = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__mapViewItem;
  v56 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v55, 1, 1, v56);
  v57 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__propertyListItem;
  v80[3] = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__propertyListItem;
  v58 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v57, 1, 1, v58);
  v59 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__keylineItem;
  v80[5] = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__keylineItem;
  v60 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_KeylineItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v59, 1, 1, v60);
  v61 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__lineDetailItem;
  v80[6] = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__lineDetailItem;
  v62 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v61, 1, 1, v62);
  v63 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__buttonItem;
  v80[8] = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__buttonItem;
  v64 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v63, 1, 1, v64);
  v65 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__columnDataListItem;
  v80[9] = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__columnDataListItem;
  v66 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v65, 1, 1, v66);
  v67 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__tableHeaderItem;
  v80[10] = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__tableHeaderItem;
  v68 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v67, 1, 1, v68);
  v69 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__tableRowItem;
  v80[12] = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__tableRowItem;
  v70 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v69, 1, 1, v70);
  v71 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__comparisonItem;
  v80[13] = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__comparisonItem;
  v72 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v71, 1, 1, v72);
  v73 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__attributionItem;
  v80[14] = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__attributionItem;
  v74 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v73, 1, 1, v74);
  v75 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__specificAnswerItem;
  v80[16] = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__specificAnswerItem;
  v76 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v75, 1, 1, v76);
  v77 = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__imageCollectionItem;
  v80[17] = OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__imageCollectionItem;
  v78 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v77, 1, 1, v78);
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
  return v0;
}

uint64_t sub_1B913FC40()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B913FC94()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B913FEA8()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__headerItem, &qword_1EBAC5AD8, &qword_1B96946F8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__subheaderItem, &qword_1EBAC5AE0, &qword_1B9694700);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__heroImageItem, &qword_1EBAC5AE8, &qword_1B9694708);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__bodyTextItem, &qword_1EBAC5AF0, &qword_1B9694710);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__mapViewItem, &qword_1EBAC5AF8, &qword_1B9694718);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__propertyListItem, &qword_1EBAC5B00, &qword_1B9694720);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__keylineItem, &qword_1EBAC5B08, &qword_1B9694728);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__lineDetailItem, &qword_1EBAC5B10, &qword_1B9694730);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__buttonItem, &qword_1EBAC5B18, &qword_1B9694738);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__columnDataListItem, &qword_1EBAC5B20, &qword_1B9694740);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__tableHeaderItem, &qword_1EBAC5B28, &qword_1B9694748);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__tableRowItem, &qword_1EBAC5B30, &qword_1B9694750);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__comparisonItem, &qword_1EBAC5B38, &qword_1B9694758);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__attributionItem, &qword_1EBAC5B40, &qword_1B9694760);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__specificAnswerItem, &qword_1EBAC5B48, &qword_1B9694768);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI40Apple_Parsec_Siri_Platform_Watchos_ValueP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__imageCollectionItem, &qword_1EBAC5B50, &qword_1B9694770);
  return v0;
}

uint64_t sub_1B9140130()
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
        sub_1B9140360();
        break;
      case 2:
        sub_1B914043C();
        break;
      case 3:
        sub_1B9140518();
        break;
      case 4:
        sub_1B91405F4();
        break;
      case 5:
        sub_1B91406D0();
        break;
      case 6:
        sub_1B91407AC();
        break;
      case 7:
        sub_1B9140888();
        break;
      case 8:
        sub_1B9140964();
        break;
      case 9:
        sub_1B9140A40();
        break;
      case 10:
        sub_1B9140B1C();
        break;
      case 11:
        sub_1B9140BF8();
        break;
      case 12:
        sub_1B9140CD4();
        break;
      case 13:
        sub_1B9140DB0();
        break;
      case 14:
        sub_1B9140E8C();
        break;
      case 15:
        sub_1B9140F68();
        break;
      case 16:
        sub_1B9141044();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9140360()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(0);
  sub_1B8CD28D0(&qword_1EBAC5E30, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B914043C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem(0);
  sub_1B8CD28D0(&qword_1EBAC5E48, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9140518()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(0);
  sub_1B8CD28D0(&qword_1EBAC5E60, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91405F4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(0);
  sub_1B8CD28D0(&qword_1EBAC5E78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91406D0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem(0);
  sub_1B8CD28D0(&qword_1EBAC5E90, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91407AC()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem(0);
  sub_1B8CD28D0(&qword_1EBAC5EA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9140888()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_KeylineItem(0);
  sub_1B8CD28D0(&qword_1EBAC5EC0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_KeylineItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9140964()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem(0);
  sub_1B8CD28D0(&qword_1EBAC5F30, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9140A40()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(0);
  sub_1B8CD28D0(&qword_1EBAC5F48, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9140B1C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(0);
  sub_1B8CD28D0(&qword_1EBAC5F60, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9140BF8()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem(0);
  sub_1B8CD28D0(&qword_1EBAC5F78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9140CD4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(0);
  sub_1B8CD28D0(&qword_1EBAC5F90, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9140DB0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(0);
  sub_1B8CD28D0(&qword_1EBAC5FC0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9140E8C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem(0);
  sub_1B8CD28D0(&qword_1EBAC5ED8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9140F68()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(0);
  sub_1B8CD28D0(&qword_1EBAC6008, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9141044()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem(0);
  sub_1B8CD28D0(&qword_1EBAC6020, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9141150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v157 = a4;
  v155 = a2;
  v156 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B50, &qword_1B9694770);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v114 = v110 - v7;
  v111 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem(0);
  v8 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v110[1] = v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B48, &qword_1B9694768);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v117 = v110 - v12;
  v113 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(0);
  v13 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v110[2] = v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B40, &qword_1B9694760);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v116 = v110 - v17;
  v121 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem(0);
  v18 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121);
  v112 = v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B38, &qword_1B9694758);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v119 = v110 - v22;
  v120 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(0);
  v23 = *(*(v120 - 8) + 64);
  MEMORY[0x1EEE9AC00](v120);
  v115 = v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B30, &qword_1B9694750);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v123 = v110 - v27;
  v124 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(0);
  v28 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v118 = v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B28, &qword_1B9694748);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v126 = v110 - v32;
  v127 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem(0);
  v33 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v122 = v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B20, &qword_1B9694740);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v129 = v110 - v37;
  v130 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(0);
  v38 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v125 = v110 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B18, &qword_1B9694738);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v132 = v110 - v42;
  v133 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(0);
  v43 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v128 = v110 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B10, &qword_1B9694730);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v135 = v110 - v47;
  v136 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem(0);
  v48 = *(*(v136 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136);
  v131 = v110 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B08, &qword_1B9694728);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v142 = v110 - v52;
  v138 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_KeylineItem(0);
  v53 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v134 = v110 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B00, &qword_1B9694720);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v140 = v110 - v57;
  v141 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem(0);
  v58 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141);
  v137 = v110 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AF8, &qword_1B9694718);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60 - 8);
  v147 = v110 - v62;
  v144 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem(0);
  v63 = *(*(v144 - 8) + 64);
  MEMORY[0x1EEE9AC00](v144);
  v139 = v110 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AF0, &qword_1B9694710);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v152 = v110 - v67;
  v146 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(0);
  v68 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v143 = v110 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AE8, &qword_1B9694708);
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70 - 8);
  v149 = v110 - v72;
  v150 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(0);
  v73 = *(*(v150 - 8) + 64);
  MEMORY[0x1EEE9AC00](v150);
  v145 = v110 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AE0, &qword_1B9694700);
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75 - 8);
  v78 = v110 - v77;
  v151 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem(0);
  v79 = *(*(v151 - 8) + 64);
  MEMORY[0x1EEE9AC00](v151);
  v148 = v110 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AD8, &qword_1B96946F8);
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81 - 8);
  v84 = v110 - v83;
  v85 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(0);
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  swift_beginAccess();
  v153 = a1;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v84, 1, v85) == 1)
  {
    sub_1B8D9207C(v84, &qword_1EBAC5AD8, &qword_1B96946F8);
    v87 = v154;
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5E30, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem);
    v88 = v154;
    sub_1B964C740();
    v87 = v88;
    if (v88)
    {
      return sub_1B913FC94();
    }

    sub_1B913FC94();
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v78, 1, v151) == 1)
  {
    v89 = v87;
    sub_1B8D9207C(v78, &qword_1EBAC5AE0, &qword_1B9694700);
    v90 = v152;
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5E48, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem);
    sub_1B964C740();
    v90 = v152;
    if (v87)
    {
      return sub_1B913FC94();
    }

    v89 = 0;
    sub_1B913FC94();
  }

  swift_beginAccess();
  v91 = v149;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v91, 1, v150) == 1)
  {
    sub_1B8D9207C(v91, &qword_1EBAC5AE8, &qword_1B9694708);
    v92 = v89;
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5E60, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem);
    sub_1B964C740();
    v92 = v89;
    if (v89)
    {
      return sub_1B913FC94();
    }

    sub_1B913FC94();
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v90, 1, v146) == 1)
  {
    sub_1B8D9207C(v90, &qword_1EBAC5AF0, &qword_1B9694710);
    v93 = v147;
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5E78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem);
    sub_1B964C740();
    v93 = v147;
    if (v92)
    {
      return sub_1B913FC94();
    }

    sub_1B913FC94();
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v93, 1, v144) == 1)
  {
    sub_1B8D9207C(v93, &qword_1EBAC5AF8, &qword_1B9694718);
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5E90, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem);
    sub_1B964C740();
    if (v92)
    {
      return sub_1B913FC94();
    }

    sub_1B913FC94();
  }

  swift_beginAccess();
  v94 = v140;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v94, 1, v141);
  v96 = v142;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v94, &qword_1EBAC5B00, &qword_1B9694720);
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5EA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem);
    sub_1B964C740();
    if (v92)
    {
      return sub_1B913FC94();
    }

    sub_1B913FC94();
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v96, 1, v138) == 1)
  {
    sub_1B8D9207C(v96, &qword_1EBAC5B08, &qword_1B9694728);
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5EC0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_KeylineItem);
    sub_1B964C740();
    if (v92)
    {
      return sub_1B913FC94();
    }

    sub_1B913FC94();
  }

  swift_beginAccess();
  v97 = v135;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v97, 1, v136) == 1)
  {
    sub_1B8D9207C(v97, &qword_1EBAC5B10, &qword_1B9694730);
    v98 = v132;
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5F30, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem);
    sub_1B964C740();
    if (v92)
    {
      return sub_1B913FC94();
    }

    sub_1B913FC94();
    v98 = v132;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v98, 1, v133) == 1)
  {
    sub_1B8D9207C(v98, &qword_1EBAC5B18, &qword_1B9694738);
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5F48, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem);
    sub_1B964C740();
    if (v92)
    {
      return sub_1B913FC94();
    }

    sub_1B913FC94();
  }

  swift_beginAccess();
  v99 = v129;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v99, 1, v130) == 1)
  {
    sub_1B8D9207C(v99, &qword_1EBAC5B20, &qword_1B9694740);
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5F60, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem);
    sub_1B964C740();
    if (v92)
    {
      return sub_1B913FC94();
    }

    sub_1B913FC94();
  }

  swift_beginAccess();
  v100 = v126;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v100, 1, v127) == 1)
  {
    sub_1B8D9207C(v100, &qword_1EBAC5B28, &qword_1B9694748);
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5F78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem);
    sub_1B964C740();
    if (v92)
    {
      return sub_1B913FC94();
    }

    sub_1B913FC94();
  }

  swift_beginAccess();
  v101 = v123;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v101, 1, v124) == 1)
  {
    sub_1B8D9207C(v101, &qword_1EBAC5B30, &qword_1B9694750);
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5F90, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem);
    sub_1B964C740();
    if (v92)
    {
      return sub_1B913FC94();
    }

    sub_1B913FC94();
  }

  swift_beginAccess();
  v102 = v119;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v102, 1, v120) == 1)
  {
    sub_1B8D9207C(v102, &qword_1EBAC5B38, &qword_1B9694758);
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5FC0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem);
    sub_1B964C740();
    result = sub_1B913FC94();
    if (v92)
    {
      return result;
    }
  }

  swift_beginAccess();
  v104 = v116;
  sub_1B8D92024();
  v105 = __swift_getEnumTagSinglePayload(v104, 1, v121);
  v106 = v117;
  if (v105 == 1)
  {
    sub_1B8D9207C(v104, &qword_1EBAC5B40, &qword_1B9694760);
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5ED8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem);
    sub_1B964C740();
    result = sub_1B913FC94();
    if (v92)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  v107 = __swift_getEnumTagSinglePayload(v106, 1, v113);
  v108 = v114;
  if (v107 == 1)
  {
    sub_1B8D9207C(v106, &qword_1EBAC5B48, &qword_1B9694768);
  }

  else
  {
    v109 = v114;
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC6008, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem);
    sub_1B964C740();
    result = sub_1B913FC94();
    if (v92)
    {
      return result;
    }

    v108 = v109;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v108, 1, v111) == 1)
  {
    return sub_1B8D9207C(v108, &qword_1EBAC5B50, &qword_1B9694770);
  }

  sub_1B913EA40();
  sub_1B8CD28D0(&qword_1EBAC6020, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem);
  sub_1B964C740();
  return sub_1B913FC94();
}

void sub_1B9142E4C()
{
  OUTLINED_FUNCTION_284();
  v595 = v0;
  v509 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem(0);
  v1 = OUTLINED_FUNCTION_59_1(v509);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_21();
  v504[0] = v4;
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6118, "Vr\v");
  OUTLINED_FUNCTION_59_1(v506);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_185();
  v512 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B50, &qword_1B9694770);
  v10 = OUTLINED_FUNCTION_183(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44_0();
  v505 = v13;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_266_0();
  v508 = v15;
  v16 = OUTLINED_FUNCTION_201();
  v514 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(v16);
  v17 = OUTLINED_FUNCTION_59_1(v514);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_21();
  v504[1] = v20;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6120, "Zr\v");
  OUTLINED_FUNCTION_59_1(v510);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_185();
  v517 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B48, &qword_1B9694768);
  v26 = OUTLINED_FUNCTION_183(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44_0();
  v511 = v29;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_266_0();
  v513 = v31;
  v32 = OUTLINED_FUNCTION_201();
  v521 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem(v32);
  v33 = OUTLINED_FUNCTION_59_1(v521);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21();
  v507 = v36;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6128, "^r\v");
  OUTLINED_FUNCTION_59_1(v516);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_185();
  v523 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B40, &qword_1B9694760);
  v42 = OUTLINED_FUNCTION_183(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_44_0();
  v515 = v45;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_266_0();
  v520 = v47;
  v48 = OUTLINED_FUNCTION_201();
  v526 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem(v48);
  v49 = OUTLINED_FUNCTION_59_1(v526);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_21();
  v518 = v52;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6130, "br\v");
  OUTLINED_FUNCTION_59_1(v522);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_185();
  v529 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B38, &qword_1B9694758);
  v58 = OUTLINED_FUNCTION_183(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_44_0();
  v524 = v61;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_266_0();
  v525 = v63;
  v64 = OUTLINED_FUNCTION_201();
  v532 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(v64);
  v65 = OUTLINED_FUNCTION_59_1(v532);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_21();
  v519 = v68;
  v527 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6138, "fr\v");
  OUTLINED_FUNCTION_59_1(v527);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_185();
  v534 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B30, &qword_1B9694750);
  v74 = OUTLINED_FUNCTION_183(v73);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_44_0();
  v528 = v77;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_266_0();
  v531 = v79;
  v80 = OUTLINED_FUNCTION_201();
  v539 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem(v80);
  v81 = OUTLINED_FUNCTION_59_1(v539);
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_21();
  v530 = v84;
  v535 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6140, "jr\v");
  OUTLINED_FUNCTION_59_1(v535);
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_185();
  v543 = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B28, &qword_1B9694748);
  v90 = OUTLINED_FUNCTION_183(v89);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_44_0();
  v536 = v93;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_266_0();
  v538 = v95;
  v96 = OUTLINED_FUNCTION_201();
  v542 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(v96);
  v97 = OUTLINED_FUNCTION_59_1(v542);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_21();
  v533 = v100;
  v540 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6148, "nr\v");
  OUTLINED_FUNCTION_59_1(v540);
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_185();
  v545 = v104;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B20, &qword_1B9694740);
  v106 = OUTLINED_FUNCTION_183(v105);
  v108 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_44_0();
  v541 = v109;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_266_0();
  v547 = v111;
  v112 = OUTLINED_FUNCTION_201();
  v549 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(v112);
  v113 = OUTLINED_FUNCTION_59_1(v549);
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_21();
  v537 = v116;
  v548 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6150, "rr\v");
  OUTLINED_FUNCTION_59_1(v548);
  v118 = *(v117 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_185();
  v550 = v120;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B18, &qword_1B9694738);
  v122 = OUTLINED_FUNCTION_183(v121);
  v124 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_44_0();
  v544 = v125;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_266_0();
  v568 = v127;
  v128 = OUTLINED_FUNCTION_201();
  v554 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem(v128);
  v129 = OUTLINED_FUNCTION_59_1(v554);
  v131 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_21();
  v546 = v132;
  v553 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6158, "vr\v");
  OUTLINED_FUNCTION_59_1(v553);
  v134 = *(v133 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_185();
  v555 = v136;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B10, &qword_1B9694730);
  v138 = OUTLINED_FUNCTION_183(v137);
  v140 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_44_0();
  v551 = v141;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_266_0();
  v567 = v143;
  v144 = OUTLINED_FUNCTION_201();
  v559 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_KeylineItem(v144);
  v145 = OUTLINED_FUNCTION_59_1(v559);
  v147 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_21();
  v552 = v148;
  v558 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6160, "zr\v");
  OUTLINED_FUNCTION_59_1(v558);
  v150 = *(v149 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_185();
  v560 = v152;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B08, &qword_1B9694728);
  v154 = OUTLINED_FUNCTION_183(v153);
  v156 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_44_0();
  v556 = v157;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v158);
  OUTLINED_FUNCTION_266_0();
  v562 = v159;
  v160 = OUTLINED_FUNCTION_201();
  v565 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem(v160);
  v161 = OUTLINED_FUNCTION_59_1(v565);
  v163 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v161);
  OUTLINED_FUNCTION_21();
  v557 = v164;
  v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6168, "~r\v");
  OUTLINED_FUNCTION_59_1(v564);
  v166 = *(v165 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v167);
  OUTLINED_FUNCTION_185();
  v566 = v168;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B00, &qword_1B9694720);
  v170 = OUTLINED_FUNCTION_183(v169);
  v172 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v170);
  OUTLINED_FUNCTION_44_0();
  v561 = v173;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v174);
  OUTLINED_FUNCTION_266_0();
  v569 = v175;
  v176 = OUTLINED_FUNCTION_201();
  v573 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem(v176);
  v177 = OUTLINED_FUNCTION_59_1(v573);
  v179 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v177);
  OUTLINED_FUNCTION_21();
  v563 = v180;
  v572 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6170, &qword_1B9698090);
  OUTLINED_FUNCTION_59_1(v572);
  v182 = *(v181 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v183);
  OUTLINED_FUNCTION_185();
  v574 = v184;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AF8, &qword_1B9694718);
  v186 = OUTLINED_FUNCTION_183(v185);
  v188 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v186);
  OUTLINED_FUNCTION_44_0();
  v570 = v189;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v190);
  OUTLINED_FUNCTION_266_0();
  v576 = v191;
  v192 = OUTLINED_FUNCTION_201();
  v579 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(v192);
  v193 = OUTLINED_FUNCTION_59_1(v579);
  v195 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v193);
  OUTLINED_FUNCTION_21();
  v571 = v196;
  v578 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6178, &qword_1B9698098);
  OUTLINED_FUNCTION_59_1(v578);
  v198 = *(v197 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v199);
  OUTLINED_FUNCTION_185();
  v580 = v200;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AF0, &qword_1B9694710);
  v202 = OUTLINED_FUNCTION_183(v201);
  v204 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v202);
  OUTLINED_FUNCTION_44_0();
  v575 = v205;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v206);
  OUTLINED_FUNCTION_266_0();
  v582 = v207;
  v208 = OUTLINED_FUNCTION_201();
  v585 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(v208);
  v209 = OUTLINED_FUNCTION_59_1(v585);
  v211 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v209);
  OUTLINED_FUNCTION_21();
  v577 = v212;
  v584 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6180, &qword_1B96980A0);
  OUTLINED_FUNCTION_59_1(v584);
  v214 = *(v213 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v215);
  OUTLINED_FUNCTION_185();
  v586 = v216;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AE8, &qword_1B9694708);
  v218 = OUTLINED_FUNCTION_183(v217);
  v220 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v218);
  OUTLINED_FUNCTION_44_0();
  v581 = v221;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v222);
  OUTLINED_FUNCTION_266_0();
  v593 = v223;
  v224 = OUTLINED_FUNCTION_201();
  v591 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem(v224);
  v225 = OUTLINED_FUNCTION_59_1(v591);
  v227 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v225);
  OUTLINED_FUNCTION_21();
  v583 = v228;
  v589 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6188, &qword_1B96980A8);
  OUTLINED_FUNCTION_59_1(v589);
  v230 = *(v229 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v231);
  OUTLINED_FUNCTION_185();
  v592 = v232;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AE0, &qword_1B9694700);
  v234 = OUTLINED_FUNCTION_183(v233);
  v236 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v234);
  OUTLINED_FUNCTION_44_0();
  v587 = v237;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v238);
  OUTLINED_FUNCTION_266_0();
  v590 = v239;
  v240 = OUTLINED_FUNCTION_201();
  v241 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(v240);
  v242 = OUTLINED_FUNCTION_59_1(v241);
  v244 = *(v243 + 64);
  MEMORY[0x1EEE9AC00](v242);
  OUTLINED_FUNCTION_21();
  v588 = v245;
  v246 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6190, &unk_1B96980B0) - 8);
  v247 = *(*v246 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v248);
  v250 = v504 - v249;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5AD8, &qword_1B96946F8);
  v252 = OUTLINED_FUNCTION_183(v251);
  v254 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v252);
  OUTLINED_FUNCTION_44_0();
  v594 = v255;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v256);
  v258 = v504 - v257;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v259 = v246[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v250);
  if (v260)
  {

    sub_1B8D9207C(v258, &qword_1EBAC5AD8, &qword_1B96946F8);
    OUTLINED_FUNCTION_37_0(&v250[v259]);
    if (v260)
    {
      sub_1B8D9207C(v250, &qword_1EBAC5AD8, &qword_1B96946F8);
      goto LABEL_11;
    }

LABEL_9:
    v261 = &qword_1EBAC6190;
    v262 = &unk_1B96980B0;
    goto LABEL_30;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v250[v259]);
  if (v260)
  {

    sub_1B8D9207C(v258, &qword_1EBAC5AD8, &qword_1B96946F8);
    sub_1B913FC94();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_58_8();
  sub_1B913EA40();

  OUTLINED_FUNCTION_461();
  static Apple_Parsec_Siri_Platform_Watchos_HeaderItem.== infix(_:_:)();
  v264 = v263;
  sub_1B913FC94();
  v265 = OUTLINED_FUNCTION_196();
  sub_1B8D9207C(v265, v266, &qword_1B96946F8);
  OUTLINED_FUNCTION_177_1();
  sub_1B913FC94();
  v267 = OUTLINED_FUNCTION_269_1();
  sub_1B8D9207C(v267, v268, &qword_1B96946F8);
  if ((v264 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  OUTLINED_FUNCTION_521();
  v269 = v590;
  OUTLINED_FUNCTION_198_2();
  OUTLINED_FUNCTION_521();
  v270 = *(v589 + 48);
  v250 = v592;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  v271 = OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_178(v271, v272, v591);
  if (!v260)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(&v250[v270]);
    v273 = v593;
    if (!v274)
    {
      OUTLINED_FUNCTION_56_5();
      sub_1B913EA40();
      OUTLINED_FUNCTION_303();
      static Apple_Parsec_Siri_Platform_Watchos_SubheaderItem.== infix(_:_:)();
      LODWORD(v594) = v275;
      sub_1B913FC94();
      OUTLINED_FUNCTION_466();
      sub_1B8D9207C(v276, v277, v278);
      sub_1B913FC94();
      OUTLINED_FUNCTION_466();
      sub_1B8D9207C(v279, v280, v281);
      if ((v594 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    sub_1B8D9207C(v269, &qword_1EBAC5AE0, &qword_1B9694700);
    sub_1B913FC94();
LABEL_19:
    v261 = &qword_1EBAC6188;
    v262 = &qword_1B96980A8;
    goto LABEL_30;
  }

  sub_1B8D9207C(v269, &qword_1EBAC5AE0, &qword_1B9694700);
  OUTLINED_FUNCTION_37_0(&v250[v270]);
  v273 = v593;
  if (!v260)
  {
    goto LABEL_19;
  }

  sub_1B8D9207C(v250, &qword_1EBAC5AE0, &qword_1B9694700);
LABEL_21:
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521();
  v282 = *(v584 + 48);
  v250 = v586;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  v283 = OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_98(v283, v284);
  if (v260)
  {
    sub_1B8D9207C(v273, &qword_1EBAC5AE8, &qword_1B9694708);
    OUTLINED_FUNCTION_57(&v250[v282]);
    if (v260)
    {
      sub_1B8D9207C(v250, &qword_1EBAC5AE8, &qword_1B9694708);
      goto LABEL_35;
    }
  }

  else
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_57(&v250[v282]);
    if (!v285)
    {
      OUTLINED_FUNCTION_54_8();
      sub_1B913EA40();
      OUTLINED_FUNCTION_186();
      static Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.== infix(_:_:)();
      v288 = v287;
      sub_1B913FC94();
      sub_1B8D9207C(v273, &qword_1EBAC5AE8, &qword_1B9694708);
      OUTLINED_FUNCTION_246();
      sub_1B913FC94();
      sub_1B8D9207C(v250, &qword_1EBAC5AE8, &qword_1B9694708);
      if ((v288 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_35:
      OUTLINED_FUNCTION_521();
      v289 = v582;
      sub_1B8D92024();
      OUTLINED_FUNCTION_521();
      v290 = *(v578 + 48);
      v291 = v580;
      sub_1B8D92024();
      sub_1B8D92024();
      v292 = OUTLINED_FUNCTION_208_3();
      OUTLINED_FUNCTION_98(v292, v293);
      if (v260)
      {
        sub_1B8D9207C(v289, &qword_1EBAC5AF0, &qword_1B9694710);
        OUTLINED_FUNCTION_57(v291 + v290);
        if (v260)
        {
          sub_1B8D9207C(v291, &qword_1EBAC5AF0, &qword_1B9694710);
          goto LABEL_46;
        }
      }

      else
      {
        sub_1B8D92024();
        OUTLINED_FUNCTION_57(v291 + v290);
        if (!v294)
        {
          OUTLINED_FUNCTION_53_10();
          sub_1B913EA40();
          OUTLINED_FUNCTION_186();
          static Apple_Parsec_Siri_Platform_Watchos_BodyTextItem.== infix(_:_:)();
          v296 = v295;
          sub_1B913FC94();
          OUTLINED_FUNCTION_225_4();
          sub_1B8D9207C(v297, v298, v299);
          OUTLINED_FUNCTION_246();
          sub_1B913FC94();
          OUTLINED_FUNCTION_225_4();
          sub_1B8D9207C(v300, v301, v302);
          if ((v296 & 1) == 0)
          {
            goto LABEL_32;
          }

LABEL_46:
          OUTLINED_FUNCTION_521();
          v303 = v576;
          OUTLINED_FUNCTION_84_0();
          OUTLINED_FUNCTION_521();
          v304 = *(v572 + 48);
          v305 = v574;
          OUTLINED_FUNCTION_84_0();
          OUTLINED_FUNCTION_84_0();
          v306 = OUTLINED_FUNCTION_207();
          v307 = v573;
          OUTLINED_FUNCTION_178(v306, v308, v573);
          if (v260)
          {
            sub_1B8D9207C(v303, &qword_1EBAC5AF8, &qword_1B9694718);
            OUTLINED_FUNCTION_37_0(v305 + v304);
            if (v260)
            {
              sub_1B8D9207C(v305, &qword_1EBAC5AF8, &qword_1B9694718);
LABEL_51:
              OUTLINED_FUNCTION_521();
              v309 = v569;
              sub_1B8D92024();
              OUTLINED_FUNCTION_521();
              v310 = *(v564 + 48);
              v291 = v566;
              sub_1B8D92024();
              sub_1B8D92024();
              v311 = OUTLINED_FUNCTION_208_3();
              OUTLINED_FUNCTION_98(v311, v312);
              if (v260)
              {
                sub_1B8D9207C(v309, &qword_1EBAC5B00, &qword_1B9694720);
                OUTLINED_FUNCTION_57(v291 + v310);
                v313 = v568;
                v314 = v567;
                if (v260)
                {
                  sub_1B8D9207C(v291, &qword_1EBAC5B00, &qword_1B9694720);
                  goto LABEL_71;
                }
              }

              else
              {
                sub_1B8D92024();
                OUTLINED_FUNCTION_57(v291 + v310);
                v313 = v568;
                v314 = v567;
                if (!v330)
                {
                  OUTLINED_FUNCTION_51_11();
                  sub_1B913EA40();
                  OUTLINED_FUNCTION_186();
                  static Apple_Parsec_Siri_Platform_Watchos_PropertyListItem.== infix(_:_:)();
                  v332 = v331;
                  sub_1B913FC94();
                  sub_1B8D9207C(v569, &qword_1EBAC5B00, &qword_1B9694720);
                  OUTLINED_FUNCTION_246();
                  sub_1B913FC94();
                  sub_1B8D9207C(v291, &qword_1EBAC5B00, &qword_1B9694720);
                  if ((v332 & 1) == 0)
                  {
                    goto LABEL_32;
                  }

LABEL_71:
                  OUTLINED_FUNCTION_521();
                  OUTLINED_FUNCTION_198_2();
                  OUTLINED_FUNCTION_521();
                  v333 = *(v558 + 48);
                  v334 = v560;
                  OUTLINED_FUNCTION_198_2();
                  OUTLINED_FUNCTION_84_0();
                  v335 = OUTLINED_FUNCTION_602();
                  OUTLINED_FUNCTION_178(v335, v336, v559);
                  if (v260)
                  {
                    sub_1B8D9207C(v562, &qword_1EBAC5B08, &qword_1B9694728);
                    OUTLINED_FUNCTION_75(v334 + v333);
                    if (v260)
                    {
                      sub_1B8D9207C(v334, &qword_1EBAC5B08, &qword_1B9694728);
LABEL_81:
                      OUTLINED_FUNCTION_521();
                      OUTLINED_FUNCTION_84_0();
                      OUTLINED_FUNCTION_521();
                      v347 = *(v553 + 48);
                      v334 = v555;
                      OUTLINED_FUNCTION_198_2();
                      OUTLINED_FUNCTION_84_0();
                      v348 = OUTLINED_FUNCTION_602();
                      OUTLINED_FUNCTION_98(v348, v349);
                      if (v260)
                      {
                        sub_1B8D9207C(v314, &qword_1EBAC5B10, &qword_1B9694730);
                        OUTLINED_FUNCTION_57(v334 + v347);
                        if (v260)
                        {
                          sub_1B8D9207C(v334, &qword_1EBAC5B10, &qword_1B9694730);
LABEL_91:
                          OUTLINED_FUNCTION_521();
                          OUTLINED_FUNCTION_84_0();
                          OUTLINED_FUNCTION_521();
                          v359 = *(v548 + 48);
                          v334 = v550;
                          OUTLINED_FUNCTION_198_2();
                          OUTLINED_FUNCTION_84_0();
                          v360 = OUTLINED_FUNCTION_602();
                          OUTLINED_FUNCTION_98(v360, v361);
                          if (v260)
                          {
                            sub_1B8D9207C(v313, &qword_1EBAC5B18, &qword_1B9694738);
                            OUTLINED_FUNCTION_57(v334 + v359);
                            if (v260)
                            {
                              sub_1B8D9207C(v334, &qword_1EBAC5B18, &qword_1B9694738);
                              goto LABEL_102;
                            }
                          }

                          else
                          {
                            sub_1B8D92024();
                            OUTLINED_FUNCTION_57(v334 + v359);
                            if (!v362)
                            {
                              OUTLINED_FUNCTION_47_7();
                              sub_1B913EA40();
                              static Apple_Parsec_Siri_Platform_Watchos_ButtonItem.== infix(_:_:)();
                              v364 = v363;
                              sub_1B913FC94();
                              OUTLINED_FUNCTION_466();
                              sub_1B8D9207C(v365, v366, v367);
                              OUTLINED_FUNCTION_284_1();
                              OUTLINED_FUNCTION_466();
                              sub_1B8D9207C(v368, v369, v370);
                              if ((v364 & 1) == 0)
                              {
                                goto LABEL_32;
                              }

LABEL_102:
                              OUTLINED_FUNCTION_521();
                              OUTLINED_FUNCTION_198_2();
                              OUTLINED_FUNCTION_521();
                              v371 = *(v540 + 48);
                              v372 = v545;
                              OUTLINED_FUNCTION_84_0();
                              OUTLINED_FUNCTION_84_0();
                              v373 = OUTLINED_FUNCTION_538();
                              OUTLINED_FUNCTION_178(v373, v374, v542);
                              if (v260)
                              {
                                sub_1B8D9207C(v547, &qword_1EBAC5B20, &qword_1B9694740);
                                OUTLINED_FUNCTION_37_0(v372 + v371);
                                if (v260)
                                {
                                  sub_1B8D9207C(v372, &qword_1EBAC5B20, &qword_1B9694740);
                                  goto LABEL_112;
                                }
                              }

                              else
                              {
                                sub_1B8D92024();
                                OUTLINED_FUNCTION_37_0(v372 + v371);
                                if (!v375)
                                {
                                  OUTLINED_FUNCTION_46_8();
                                  sub_1B913EA40();
                                  OUTLINED_FUNCTION_502();
                                  static Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.== infix(_:_:)();
                                  v380 = v379;
                                  sub_1B913FC94();
                                  OUTLINED_FUNCTION_466();
                                  sub_1B8D9207C(v381, v382, v383);
                                  OUTLINED_FUNCTION_305_1();
                                  OUTLINED_FUNCTION_466();
                                  sub_1B8D9207C(v384, v385, v386);
                                  if ((v380 & 1) == 0)
                                  {
                                    goto LABEL_32;
                                  }

LABEL_112:
                                  OUTLINED_FUNCTION_521();
                                  OUTLINED_FUNCTION_157_7();
                                  OUTLINED_FUNCTION_521();
                                  OUTLINED_FUNCTION_249_2(v535);
                                  OUTLINED_FUNCTION_157_7();
                                  OUTLINED_FUNCTION_143_4();
                                  v387 = OUTLINED_FUNCTION_355();
                                  OUTLINED_FUNCTION_178(v387, v388, v539);
                                  if (v260)
                                  {
                                    sub_1B8D9207C(v538, &qword_1EBAC5B28, &qword_1B9694748);
                                    v389 = OUTLINED_FUNCTION_631_0(v543);
                                    OUTLINED_FUNCTION_178(v389, v390, v539);
                                    if (v260)
                                    {
                                      sub_1B8D9207C(v543, &qword_1EBAC5B28, &qword_1B9694748);
                                      goto LABEL_117;
                                    }
                                  }

                                  else
                                  {
                                    sub_1B8D92024();
                                    v395 = OUTLINED_FUNCTION_539_0();
                                    OUTLINED_FUNCTION_178(v395, v396, v539);
                                    if (!v397)
                                    {
                                      OUTLINED_FUNCTION_45_7();
                                      v398 = v530;
                                      sub_1B913EA40();
                                      v399 = *v536;
                                      v400 = *v398;
                                      sub_1B8D6100C();
                                      if ((v401 & 1) == 0)
                                      {
                                        goto LABEL_133;
                                      }

                                      v402 = *(v539 + 20);
                                      sub_1B964C2B0();
                                      OUTLINED_FUNCTION_1_52();
                                      sub_1B8CD28D0(v403, v404);
                                      v405 = OUTLINED_FUNCTION_731();
                                      sub_1B913FC94();
                                      OUTLINED_FUNCTION_466();
                                      sub_1B8D9207C(v406, v407, v408);
                                      OUTLINED_FUNCTION_284_1();
                                      OUTLINED_FUNCTION_466();
                                      sub_1B8D9207C(v409, v410, v411);
                                      if ((v405 & 1) == 0)
                                      {
                                        goto LABEL_32;
                                      }

LABEL_117:
                                      OUTLINED_FUNCTION_521();
                                      OUTLINED_FUNCTION_157_7();
                                      OUTLINED_FUNCTION_521();
                                      OUTLINED_FUNCTION_249_2(v527);
                                      OUTLINED_FUNCTION_157_7();
                                      OUTLINED_FUNCTION_143_4();
                                      v391 = OUTLINED_FUNCTION_355();
                                      OUTLINED_FUNCTION_178(v391, v392, v532);
                                      if (v260)
                                      {
                                        sub_1B8D9207C(v531, &qword_1EBAC5B30, &qword_1B9694750);
                                        v393 = OUTLINED_FUNCTION_631_0(v534);
                                        OUTLINED_FUNCTION_178(v393, v394, v532);
                                        if (v260)
                                        {
                                          sub_1B8D9207C(v534, &qword_1EBAC5B30, &qword_1B9694750);
                                          goto LABEL_135;
                                        }
                                      }

                                      else
                                      {
                                        sub_1B8D92024();
                                        v412 = OUTLINED_FUNCTION_539_0();
                                        OUTLINED_FUNCTION_178(v412, v413, v532);
                                        if (!v414)
                                        {
                                          OUTLINED_FUNCTION_44_8();
                                          sub_1B913EA40();
                                          OUTLINED_FUNCTION_502();
                                          static Apple_Parsec_Siri_Platform_Watchos_TableRowItem.== infix(_:_:)();
                                          v419 = v418;
                                          sub_1B913FC94();
                                          OUTLINED_FUNCTION_466();
                                          sub_1B8D9207C(v420, v421, v422);
                                          OUTLINED_FUNCTION_305_1();
                                          OUTLINED_FUNCTION_466();
                                          sub_1B8D9207C(v423, v424, v425);
                                          if ((v419 & 1) == 0)
                                          {
                                            goto LABEL_32;
                                          }

LABEL_135:
                                          OUTLINED_FUNCTION_521();
                                          OUTLINED_FUNCTION_157_7();
                                          OUTLINED_FUNCTION_521();
                                          OUTLINED_FUNCTION_249_2(v522);
                                          OUTLINED_FUNCTION_157_7();
                                          OUTLINED_FUNCTION_143_4();
                                          v426 = OUTLINED_FUNCTION_355();
                                          OUTLINED_FUNCTION_178(v426, v427, v526);
                                          if (v260)
                                          {
                                            sub_1B8D9207C(v525, &qword_1EBAC5B38, &qword_1B9694758);
                                            v428 = OUTLINED_FUNCTION_631_0(v529);
                                            OUTLINED_FUNCTION_178(v428, v429, v526);
                                            if (v260)
                                            {
                                              sub_1B8D9207C(v529, &qword_1EBAC5B38, &qword_1B9694758);
                                              goto LABEL_147;
                                            }
                                          }

                                          else
                                          {
                                            sub_1B8D92024();
                                            v430 = OUTLINED_FUNCTION_539_0();
                                            OUTLINED_FUNCTION_178(v430, v431, v526);
                                            if (!v432)
                                            {
                                              OUTLINED_FUNCTION_43_9();
                                              v433 = v518;
                                              sub_1B913EA40();
                                              v434 = *(v526 + 20);
                                              v435 = *(v524 + v434);
                                              v436 = *(v433 + v434);
                                              if (v435 == v436 || (v437 = *(v524 + v434), , , v438 = sub_1B9152BFC(v435, v436), , , v438))
                                              {
                                                sub_1B964C2B0();
                                                OUTLINED_FUNCTION_1_52();
                                                sub_1B8CD28D0(v439, v440);
                                                OUTLINED_FUNCTION_225_4();
                                                v441 = sub_1B964C850();
                                                sub_1B913FC94();
                                                OUTLINED_FUNCTION_466();
                                                sub_1B8D9207C(v442, v443, v444);
                                                OUTLINED_FUNCTION_284_1();
                                                OUTLINED_FUNCTION_466();
                                                sub_1B8D9207C(v445, v446, v447);
                                                if ((v441 & 1) == 0)
                                                {
                                                  goto LABEL_32;
                                                }

LABEL_147:
                                                OUTLINED_FUNCTION_521();
                                                OUTLINED_FUNCTION_157_7();
                                                OUTLINED_FUNCTION_521();
                                                OUTLINED_FUNCTION_249_2(v516);
                                                OUTLINED_FUNCTION_157_7();
                                                OUTLINED_FUNCTION_143_4();
                                                v448 = OUTLINED_FUNCTION_355();
                                                OUTLINED_FUNCTION_178(v448, v449, v521);
                                                if (v260)
                                                {
                                                  sub_1B8D9207C(v520, &qword_1EBAC5B40, &qword_1B9694760);
                                                  v450 = OUTLINED_FUNCTION_631_0(v523);
                                                  OUTLINED_FUNCTION_178(v450, v451, v521);
                                                  if (v260)
                                                  {
                                                    sub_1B8D9207C(v523, &qword_1EBAC5B40, &qword_1B9694760);
LABEL_157:
                                                    OUTLINED_FUNCTION_521();
                                                    OUTLINED_FUNCTION_157_7();
                                                    OUTLINED_FUNCTION_521();
                                                    OUTLINED_FUNCTION_249_2(v510);
                                                    OUTLINED_FUNCTION_157_7();
                                                    OUTLINED_FUNCTION_143_4();
                                                    v463 = OUTLINED_FUNCTION_355();
                                                    OUTLINED_FUNCTION_178(v463, v464, v514);
                                                    if (v260)
                                                    {
                                                      sub_1B8D9207C(v513, &qword_1EBAC5B48, &qword_1B9694768);
                                                      v465 = OUTLINED_FUNCTION_631_0(v517);
                                                      OUTLINED_FUNCTION_178(v465, v466, v514);
                                                      if (v260)
                                                      {
                                                        sub_1B8D9207C(v517, &qword_1EBAC5B48, &qword_1B9694768);
                                                        goto LABEL_170;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      sub_1B8D92024();
                                                      v467 = OUTLINED_FUNCTION_539_0();
                                                      OUTLINED_FUNCTION_178(v467, v468, v514);
                                                      if (!v469)
                                                      {
                                                        OUTLINED_FUNCTION_41_13();
                                                        sub_1B913EA40();
                                                        OUTLINED_FUNCTION_502();
                                                        static Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.== infix(_:_:)();
                                                        v471 = v470;
                                                        sub_1B913FC94();
                                                        OUTLINED_FUNCTION_466();
                                                        sub_1B8D9207C(v472, v473, v474);
                                                        OUTLINED_FUNCTION_305_1();
                                                        OUTLINED_FUNCTION_466();
                                                        sub_1B8D9207C(v475, v476, v477);
                                                        if ((v471 & 1) == 0)
                                                        {
                                                          goto LABEL_32;
                                                        }

LABEL_170:
                                                        OUTLINED_FUNCTION_521();
                                                        OUTLINED_FUNCTION_157_7();
                                                        OUTLINED_FUNCTION_521();
                                                        OUTLINED_FUNCTION_249_2(v506);
                                                        OUTLINED_FUNCTION_157_7();
                                                        OUTLINED_FUNCTION_143_4();
                                                        v478 = OUTLINED_FUNCTION_355();
                                                        OUTLINED_FUNCTION_178(v478, v479, v509);
                                                        if (v260)
                                                        {

                                                          sub_1B8D9207C(v508, &qword_1EBAC5B50, &qword_1B9694770);
                                                          v480 = OUTLINED_FUNCTION_631_0(v512);
                                                          OUTLINED_FUNCTION_178(v480, v481, v509);
                                                          if (v260)
                                                          {
                                                            sub_1B8D9207C(v512, &qword_1EBAC5B50, &qword_1B9694770);
                                                            goto LABEL_33;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          sub_1B8D92024();
                                                          v482 = OUTLINED_FUNCTION_539_0();
                                                          OUTLINED_FUNCTION_178(v482, v483, v509);
                                                          if (!v484)
                                                          {
                                                            OUTLINED_FUNCTION_60_8();
                                                            v488 = v504[0];
                                                            sub_1B913EA40();
                                                            v489 = *v505;
                                                            v490 = *v488;
                                                            sub_1B8D5DBD8();
                                                            if (v491)
                                                            {
                                                              v492 = *(v509 + 20);
                                                              sub_1B964C2B0();
                                                              OUTLINED_FUNCTION_1_52();
                                                              sub_1B8CD28D0(v493, v494);
                                                              OUTLINED_FUNCTION_731();

                                                              sub_1B913FC94();
                                                              OUTLINED_FUNCTION_466();
                                                              sub_1B8D9207C(v495, v496, v497);
                                                              OUTLINED_FUNCTION_284_1();
                                                              OUTLINED_FUNCTION_466();
                                                              sub_1B8D9207C(v498, v499, v500);
                                                              goto LABEL_33;
                                                            }

                                                            sub_1B913FC94();
                                                            OUTLINED_FUNCTION_176_2();
                                                            sub_1B8D9207C(v501, v502, v503);
                                                            sub_1B913FC94();
                                                            OUTLINED_FUNCTION_176_2();
                                                            goto LABEL_179;
                                                          }

                                                          sub_1B8D9207C(v508, &qword_1EBAC5B50, &qword_1B9694770);
                                                          sub_1B913FC94();
                                                        }

                                                        v485 = &qword_1EBAC6118;
                                                        v486 = "Vr\v";
                                                        v487 = v512;
LABEL_179:
                                                        sub_1B8D9207C(v487, v485, v486);
                                                        goto LABEL_33;
                                                      }

                                                      sub_1B8D9207C(v513, &qword_1EBAC5B48, &qword_1B9694768);
                                                      sub_1B913FC94();
                                                    }

                                                    v376 = &qword_1EBAC6120;
                                                    v377 = "Zr\v";
                                                    v378 = v517;
LABEL_167:
                                                    sub_1B8D9207C(v378, v376, v377);
                                                    goto LABEL_32;
                                                  }
                                                }

                                                else
                                                {
                                                  sub_1B8D92024();
                                                  v452 = OUTLINED_FUNCTION_539_0();
                                                  OUTLINED_FUNCTION_178(v452, v453, v521);
                                                  if (!v454)
                                                  {
                                                    OUTLINED_FUNCTION_42_7();
                                                    sub_1B913EA40();
                                                    OUTLINED_FUNCTION_502();
                                                    static Apple_Parsec_Siri_Platform_Watchos_AttributionItem.== infix(_:_:)();
                                                    v456 = v455;
                                                    sub_1B913FC94();
                                                    OUTLINED_FUNCTION_466();
                                                    sub_1B8D9207C(v457, v458, v459);
                                                    OUTLINED_FUNCTION_305_1();
                                                    OUTLINED_FUNCTION_466();
                                                    sub_1B8D9207C(v460, v461, v462);
                                                    if ((v456 & 1) == 0)
                                                    {
                                                      goto LABEL_32;
                                                    }

                                                    goto LABEL_157;
                                                  }

                                                  sub_1B8D9207C(v520, &qword_1EBAC5B40, &qword_1B9694760);
                                                  sub_1B913FC94();
                                                }

                                                v376 = &qword_1EBAC6128;
                                                v377 = "^r\v";
                                                v378 = v523;
                                                goto LABEL_167;
                                              }

LABEL_133:
                                              sub_1B913FC94();
                                              OUTLINED_FUNCTION_176_2();
                                              sub_1B8D9207C(v415, v416, v417);
                                              sub_1B913FC94();
                                              OUTLINED_FUNCTION_176_2();
                                              goto LABEL_167;
                                            }

                                            sub_1B8D9207C(v525, &qword_1EBAC5B38, &qword_1B9694758);
                                            sub_1B913FC94();
                                          }

                                          v376 = &qword_1EBAC6130;
                                          v377 = "br\v";
                                          v378 = v529;
                                          goto LABEL_167;
                                        }

                                        sub_1B8D9207C(v531, &qword_1EBAC5B30, &qword_1B9694750);
                                        sub_1B913FC94();
                                      }

                                      v376 = &qword_1EBAC6138;
                                      v377 = "fr\v";
                                      v378 = v534;
                                      goto LABEL_167;
                                    }

                                    sub_1B8D9207C(v538, &qword_1EBAC5B28, &qword_1B9694748);
                                    sub_1B913FC94();
                                  }

                                  v376 = &qword_1EBAC6140;
                                  v377 = "jr\v";
                                  v378 = v543;
                                  goto LABEL_167;
                                }

                                sub_1B8D9207C(v547, &qword_1EBAC5B20, &qword_1B9694740);
                                sub_1B913FC94();
                                v372 = v545;
                              }

                              v376 = &qword_1EBAC6148;
                              v377 = "nr\v";
                              v378 = v372;
                              goto LABEL_167;
                            }

                            sub_1B8D9207C(v313, &qword_1EBAC5B18, &qword_1B9694738);
                            sub_1B913FC94();
                          }

                          v261 = &qword_1EBAC6150;
                          v262 = "rr\v";
                          goto LABEL_100;
                        }
                      }

                      else
                      {
                        sub_1B8D92024();
                        OUTLINED_FUNCTION_57(v334 + v347);
                        if (!v350)
                        {
                          OUTLINED_FUNCTION_49_11();
                          sub_1B913EA40();
                          OUTLINED_FUNCTION_186();
                          static Apple_Parsec_Siri_Platform_Watchos_LineDetailItem.== infix(_:_:)();
                          v352 = v351;
                          sub_1B913FC94();
                          OUTLINED_FUNCTION_466();
                          sub_1B8D9207C(v353, v354, v355);
                          OUTLINED_FUNCTION_284_1();
                          OUTLINED_FUNCTION_466();
                          sub_1B8D9207C(v356, v357, v358);
                          if ((v352 & 1) == 0)
                          {
                            goto LABEL_32;
                          }

                          goto LABEL_91;
                        }

                        sub_1B8D9207C(v314, &qword_1EBAC5B10, &qword_1B9694730);
                        OUTLINED_FUNCTION_171_2();
                        sub_1B913FC94();
                      }

                      v261 = &qword_1EBAC6158;
                      v262 = "vr\v";
LABEL_100:
                      v286 = v334;
                      goto LABEL_31;
                    }
                  }

                  else
                  {
                    sub_1B8D92024();
                    OUTLINED_FUNCTION_75(v334 + v333);
                    if (!v337)
                    {
                      OUTLINED_FUNCTION_50_10();
                      sub_1B913EA40();
                      sub_1B964C2B0();
                      OUTLINED_FUNCTION_1_52();
                      sub_1B8CD28D0(v338, v339);
                      OUTLINED_FUNCTION_225_4();
                      v340 = sub_1B964C850();
                      sub_1B913FC94();
                      OUTLINED_FUNCTION_466();
                      sub_1B8D9207C(v341, v342, v343);
                      OUTLINED_FUNCTION_196();
                      sub_1B913FC94();
                      OUTLINED_FUNCTION_466();
                      sub_1B8D9207C(v344, v345, v346);
                      if ((v340 & 1) == 0)
                      {
                        goto LABEL_32;
                      }

                      goto LABEL_81;
                    }

                    sub_1B8D9207C(v562, &qword_1EBAC5B08, &qword_1B9694728);
                    sub_1B913FC94();
                  }

                  v261 = &qword_1EBAC6160;
                  v262 = "zr\v";
                  goto LABEL_100;
                }

                sub_1B8D9207C(v569, &qword_1EBAC5B00, &qword_1B9694720);
                OUTLINED_FUNCTION_171_2();
                sub_1B913FC94();
              }

              v261 = &qword_1EBAC6168;
              v262 = "~r\v";
              goto LABEL_44;
            }
          }

          else
          {
            v315 = v570;
            sub_1B8D92024();
            OUTLINED_FUNCTION_37_0(v305 + v304);
            if (!v316)
            {
              OUTLINED_FUNCTION_52_9();
              v317 = v563;
              sub_1B913EA40();
              if (*v315 != *v317 || v315[1] != v317[1] || v315[2] != v317[2])
              {
                sub_1B913FC94();
                OUTLINED_FUNCTION_176_2();
                sub_1B8D9207C(v327, v328, v329);
                sub_1B913FC94();
                v286 = OUTLINED_FUNCTION_246();
                v262 = &qword_1B9694718;
                goto LABEL_31;
              }

              v318 = *(v307 + 28);
              sub_1B964C2B0();
              OUTLINED_FUNCTION_1_52();
              sub_1B8CD28D0(v319, v320);
              v321 = OUTLINED_FUNCTION_731();
              sub_1B913FC94();
              OUTLINED_FUNCTION_225_4();
              sub_1B8D9207C(v322, v323, v324);
              OUTLINED_FUNCTION_269_1();
              sub_1B913FC94();
              v325 = OUTLINED_FUNCTION_186();
              sub_1B8D9207C(v325, v326, &qword_1B9694718);
              if ((v321 & 1) == 0)
              {
                goto LABEL_32;
              }

              goto LABEL_51;
            }

            sub_1B8D9207C(v576, &qword_1EBAC5AF8, &qword_1B9694718);
            sub_1B913FC94();
          }

          v261 = &qword_1EBAC6170;
          v262 = &qword_1B9698090;
          v286 = v305;
          goto LABEL_31;
        }

        sub_1B8D9207C(v582, &qword_1EBAC5AF0, &qword_1B9694710);
        OUTLINED_FUNCTION_171_2();
        sub_1B913FC94();
      }

      v261 = &qword_1EBAC6178;
      v262 = &qword_1B9698098;
LABEL_44:
      v286 = v291;
      goto LABEL_31;
    }

    sub_1B8D9207C(v273, &qword_1EBAC5AE8, &qword_1B9694708);
    OUTLINED_FUNCTION_171_2();
    sub_1B913FC94();
  }

  v261 = &qword_1EBAC6180;
  v262 = &qword_1B96980A0;
LABEL_30:
  v286 = v250;
LABEL_31:
  sub_1B8D9207C(v286, v261, v262);
LABEL_32:

LABEL_33:
  OUTLINED_FUNCTION_283();
}