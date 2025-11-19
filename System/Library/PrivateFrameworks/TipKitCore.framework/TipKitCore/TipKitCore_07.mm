void sub_1975EC338()
{
  v1 = type metadata accessor for DeviceProfile.ProfileContent();
  v2 = OUTLINED_FUNCTION_5_2(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  sub_19758C664(v0 + v8, v7);
  v9 = sub_1975ECB70();
  v11 = v10;
  OUTLINED_FUNCTION_0_32();
  sub_19758CA58(v7, v12);
  if (v11 >> 60 == 15)
  {
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_3_2();
      swift_once();
    }

    v13 = type metadata accessor for logger();
    __swift_project_value_buffer(v13, qword_1ED816CA0);
    OUTLINED_FUNCTION_13_12();
    sub_197558864();
  }

  else
  {
    v14 = *(v0 + OBJC_IVAR____TtC10TipKitCore13DeviceProfile_fileHandler);
    sub_1975ED2F4(v9, v11);
    sub_197576558(v9, v11);
  }
}

void sub_1975EC474()
{
  v1 = v0 + OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  v2 = type metadata accessor for DeviceProfile.ProfileContent();
  if (*(*(v1 + *(v2 + 48)) + 16))
  {
    v3 = v2;
    v4 = *(v1 + *(v2 + 48));

    sub_19755C610();
    v6 = v5;

    if (v6)
    {
      OUTLINED_FUNCTION_43_0();
      v7 = v1 + *(v3 + 48);
      sub_1975ED21C();
      swift_endAccess();
      sub_1975EC338();
    }
  }
}

void sub_1975EC548(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  OUTLINED_FUNCTION_5_2(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  v58 = _s12DisplayEventVMa();
  v13 = OUTLINED_FUNCTION_13(v58);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_0();
  v18 = (v17 - v16);
  v19 = type metadata accessor for DeviceProfile.ProfileContent();
  v20 = OUTLINED_FUNCTION_13(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_0();
  v25 = (v24 - v23);
  v59 = v3;
  v26 = (v3 + OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content);
  swift_beginAccess();
  sub_19758C664(v26, v25);
  v27 = static DeviceProfile.ProfileContent.== infix(_:_:)(v25, a1);
  OUTLINED_FUNCTION_0_32();
  sub_19758CA58(v25, v28);
  if ((v27 & 1) == 0)
  {
    v29 = a2 == 0x6C7070612E6D6F63 && a3 == 0xEF64737069742E65;
    if (v29 || (OUTLINED_FUNCTION_14_8(), (sub_197616EF0() & 1) != 0))
    {
      v26[1] = a1[1];
      v26[v19[10]] = a1[v19[10]];
      if (qword_1ED817298 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      if (byte_1ED8172A4)
      {
        v30 = 1;
      }

      else
      {
        v30 = *a1;
      }

      OUTLINED_FUNCTION_43_0();
      *v26 = v30;
      v31 = v19[11];
      v32 = *&v26[v31];
      *&v26[v31] = *&a1[v31];
      v33 = v19[12];
      v34 = *&v26[v33];
      *&v26[v33] = *&a1[v33];
      v35 = v19[6];

      sub_1975ED14C(&a1[v35], &v26[v35]);
      v36 = v19[7];
      v38 = *&a1[v36];
      v37 = *&a1[v36 + 8];
      v39 = &v26[v36];
      v40 = *(v39 + 1);
      *v39 = v38;
      *(v39 + 1) = v37;
      v41 = v19[8];

      sub_1975ED14C(&a1[v41], &v26[v41]);
      swift_endAccess();
    }

    v42 = v19[12];
    v43 = *&v26[v42];
    v44 = *&a1[v42];

    sub_1975F0A54(v45, v44);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      v48 = v19[12];
      v49 = *&v26[v48];
      *&v26[v48] = v44;
    }

    sub_19755F9FC(&a1[v19[9]], v12, &qword_1EAF35260, &qword_1976202C8);
    v50 = v58;
    if (__swift_getEnumTagSinglePayload(v12, 1, v58) == 1)
    {
      sub_19755C7C8(v12, &qword_1EAF35260, &qword_1976202C8);
    }

    else
    {
      sub_1975ED1BC(v12, v18, _s12DisplayEventVMa);
      sub_1975EBF74(*v18, v18[1], v18 + *(v50 + 20));
      sub_19758CA58(v18, _s12DisplayEventVMa);
    }

    if (qword_1ED817510 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    OUTLINED_FUNCTION_35();
    swift_beginAccess();
    if (qword_1ED817578)
    {
      v51 = qword_1ED817570;
      v52 = qword_1ED817578;
    }

    else
    {
      if (qword_1ED8174D8 != -1)
      {
        swift_once();
      }

      if (qword_1ED81D218)
      {
        v51 = qword_1ED81D210;
        v52 = qword_1ED81D218;
      }

      else
      {
        type metadata accessor for CFBundle(0);
        v53 = sub_1975A5740();
        if (v54)
        {
          v51 = v53;
          v52 = v54;
        }

        else
        {
          v51 = 0;
          v52 = 0xE000000000000000;
        }
      }
    }

    OUTLINED_FUNCTION_14_8();
    if (v51 == v55 && v52 == 0xEF64737069742E65)
    {
    }

    else
    {
      v57 = sub_197616EF0();

      if ((v57 & 1) == 0)
      {
        return;
      }
    }

    sub_1975EC338();
  }
}

void sub_1975EC9F0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  OUTLINED_FUNCTION_5_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_9();
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  if (byte_1ED817580 == 1)
  {
    if (qword_1ED817298 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    if ((byte_1ED8172A5 & 1) == 0)
    {
      v6 = _s12DisplayEventVMa();
      __swift_storeEnumTagSinglePayload(v0, 1, 1, v6);
      v7 = v1 + OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
      OUTLINED_FUNCTION_43_0();
      v8 = type metadata accessor for DeviceProfile.ProfileContent();
      sub_1975ED0DC(v0, v7 + *(v8 + 36));
      swift_endAccess();
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_3_2();
        swift_once();
      }

      v9 = type metadata accessor for logger();
      __swift_project_value_buffer(v9, qword_1ED816CA0);
      OUTLINED_FUNCTION_13_12();
      sub_197558864();
    }
  }
}

uint64_t sub_1975ECB70()
{
  v0 = sub_1976156A0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_197615690();
  type metadata accessor for DeviceProfile.ProfileContent();
  sub_197584F28(&qword_1ED815E68, type metadata accessor for DeviceProfile.ProfileContent);
  v3 = sub_197615680();

  return v3;
}

uint64_t DeviceProfile.deinit()
{
  v1 = OBJC_IVAR____TtC10TipKitCore13DeviceProfile_url;
  v2 = sub_197615970();
  OUTLINED_FUNCTION_13(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC10TipKitCore13DeviceProfile_fileHandler);

  OUTLINED_FUNCTION_0_32();
  sub_19758CA58(v0 + v5, v6);
  return v0;
}

uint64_t DeviceProfile.__deallocating_deinit()
{
  DeviceProfile.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t static DeviceProfile.updateTipsdData(_:)()
{
  v0 = type metadata accessor for DeviceProfile.ProfileContent();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - v7;
  if (qword_1ED816850 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED81D1D0;
  if (qword_1ED81D1D0)
  {

    sub_1975F103C(v10, v8);
    v11 = OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
    OUTLINED_FUNCTION_35();
    swift_beginAccess();
    sub_19758C664(v9 + v11, v6);
    LOBYTE(v11) = static DeviceProfile.ProfileContent.== infix(_:_:)(v6, v8);
    OUTLINED_FUNCTION_0_32();
    sub_19758CA58(v6, v12);
    if (v11)
    {
      OUTLINED_FUNCTION_0_32();
      sub_19758CA58(v8, v13);
    }

    else
    {
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_3_2();
        swift_once();
      }

      v16 = type metadata accessor for logger();
      __swift_project_value_buffer(v16, qword_1ED816CA0);
      v19[1] = 0;
      v19[2] = 0xE000000000000000;
      sub_197616A20();
      MEMORY[0x19A8E2A50](0xD000000000000035, 0x8000000197625850);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
      v17 = sub_1976160A0();
      v19[0] = v17;
      sub_197616BC0();

      sub_197558864();

      sub_1975EC548(v8, 0x6C7070612E6D6F63, 0xEF64737069742E65);
      OUTLINED_FUNCTION_13_12();
      sub_197558864();

      OUTLINED_FUNCTION_0_32();
      return sub_19758CA58(v8, v18);
    }
  }

  else
  {
    sub_19759228C();
    swift_allocError();
    *v15 = 0xD00000000000003CLL;
    v15[1] = 0x8000000197625810;
    return swift_willThrow();
  }
}

uint64_t sub_1975ED0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975ED14C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975ED1BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1975ED21C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_19755C610();
  if ((v4 & 1) == 0)
  {
    return 26;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v7 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35398, &qword_1976214B0);
  sub_197616BF0();
  v8 = *(*(v11 + 48) + 16 * v5 + 8);

  v9 = *(*(v11 + 56) + v5);
  sub_197616C10();
  *v1 = v11;
  return v9;
}

uint64_t sub_1975ED2F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_197615970();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  v11 = OUTLINED_FUNCTION_5_2(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  sub_1976165B0();
  OUTLINED_FUNCTION_36();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(v7 + 16);
  v22 = OUTLINED_FUNCTION_19_7();
  v23(v22);
  v24 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v20;
  *(v25 + 5) = a1;
  *(v25 + 6) = a2;
  (*(v7 + 32))(&v25[v24], &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_1975766B8(a1, a2);
  sub_1975FB620(0, 0, v15, &unk_197621510, v25);

  return sub_19755C404(v15, &qword_1EAF35140, &qword_197621F80);
}

uint64_t sub_1975ED4EC()
{
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  OUTLINED_FUNCTION_10();
  if (qword_1ED817578)
  {
    v0 = qword_1ED817570;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3();
    }

    if (qword_1ED81D218)
    {
      v0 = qword_1ED81D210;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v1 = sub_1975A5740();
      if (v2)
      {
        v0 = v1;
      }

      else
      {
        v0 = 0;
      }
    }
  }

  return v0;
}

uint64_t sub_1975ED5D8()
{
  sub_19755404C(0, &qword_1ED816710, 0x1E696ABB0);
  v0 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_1ED816718 != -1)
  {
    swift_once();
  }

  sub_197616830();

  v1 = sub_1975ED4EC();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  sub_197616820();
  OUTLINED_FUNCTION_4_34();
  sub_1975EFCF0(v5, 255, v6);
  return sub_197616CF0();
}

uint64_t sub_1975ED718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1975ED73C, 0, 0);
}

uint64_t sub_1975ED73C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[9];
  v2 = sub_197615580();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v0[7] = 0x7265646E6573;
  v0[8] = 0xE600000000000000;
  sub_1976169C0();
  v4 = sub_1975ED864((v0 + 2), v3);
  v6 = v5;

  sub_19755C404((v0 + 2), &qword_1EAF34BE8, &qword_19761BB78);
  if (v6)
  {
    if (v4 == v0[10] && v6 == v0[11])
    {

      v9 = 0;
    }

    else
    {
      v8 = sub_197616EF0();

      v9 = v8 ^ 1;
    }
  }

  else
  {
LABEL_8:
    v9 = 1;
  }

  v10 = v0[1];

  return v10(v9 & 1);
}

uint64_t sub_1975ED864(uint64_t a1, uint64_t a2)
{
  sub_1975EDB5C(a1, &v5);
  if (*(&v6 + 1))
  {
    v8[0] = v5;
    v8[1] = v6;
    v9 = v7;
    sub_197586610(v8, a2, &v5);
    sub_197587DC0(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_19755C404(&v5, &qword_1EAF34BE8, &qword_19761BB78);
  }

  return 0;
}

uint64_t sub_1975ED924()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);

    sub_197616660();

    v2 = *(v0 + 112);
  }

  *(v0 + 112) = 0;

  v3 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1975ED9A0()
{
  sub_1975ED924();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1975ED9CC()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1975EDA70;

  return sub_1975ED718(v3, v5, v4);
}

uint64_t sub_1975EDA70()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_1975EDB5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BE8, &qword_19761BB78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975EDBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1975EDBF0, 0, 0);
}

uint64_t sub_1975EDBF0()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_10();
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1975EDC98, Strong, 0);
  }

  else
  {
    OUTLINED_FUNCTION_3();

    return v3();
  }
}

uint64_t sub_1975EDC98()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[13];
  sub_1975EDF60(v0[10], v0[11], v0[12]);
  v0[14] = 0;
  v2 = v0[13];

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_1975EDD4C()
{
  v1 = v0[13];

  if (qword_1ED816C98 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v2 = v0[14];
  v3 = type metadata accessor for logger();
  __swift_project_value_buffer(v3, qword_1ED816CA0);
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD00000000000001ELL, 0x8000000197625AF0);
  swift_getErrorValue();
  v4 = v0[5];
  v5 = v0[6];
  sub_197616EB0();
  sub_197558864();

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_1975EDE6C()
{
  v2 = sub_197615970();
  OUTLINED_FUNCTION_5_2(v2);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  *(v1 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_19755CDC8;
  v12 = OUTLINED_FUNCTION_17_12();

  return sub_1975EDBCC(v12, v13, v14, v15, v8, v9, v16);
}

void sub_1975EDF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19755404C(0, &qword_1ED815E20, 0x1E696ABF8);
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = 1;
  sub_197608064(a3, 0, sub_1975EFA94, v16);
  if (!v3)
  {
    sub_19755404C(0, &qword_1ED816710, 0x1E696ABB0);
    v7 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_1ED816718 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED81D1C8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353A0, &qword_197621518);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_197618C10;
    v17 = 0x7265646E6573;
    v18 = 0xE600000000000000;
    v10 = MEMORY[0x1E69E6158];
    sub_1976169C0();
    v11 = sub_1975ED4EC();
    *(inited + 96) = v10;
    *(inited + 72) = v11;
    *(inited + 80) = v12;
    v13 = sub_1976160B0();
    sub_1975EFAB4(v8, 0, v13, v7);

    if (qword_1ED816C98 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for logger();
    __swift_project_value_buffer(v14, qword_1ED816CA0);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_197616A20();

    v17 = 0xD000000000000018;
    v18 = 0x8000000197625B10;
    v15 = sub_197615920();
    MEMORY[0x19A8E2A50](v15);

    sub_197558864();
  }
}

uint64_t sub_1975EE1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1975EE1EC, 0, 0);
}

uint64_t sub_1975EE1EC()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[5];
  OUTLINED_FUNCTION_10();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1975EE2CC;
    v4 = v0[6];

    return sub_1975EE3C8(v4);
  }

  else
  {
    OUTLINED_FUNCTION_3();

    return v6();
  }
}

uint64_t sub_1975EE2CC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_1975EE3C8(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v4 = sub_197615970();
  v2[24] = v4;
  v5 = *(v4 - 8);
  v2[25] = v5;
  v6 = *(v5 + 64) + 15;
  v2[26] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35390, &qword_1976214A8) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v8 = type metadata accessor for DeviceProfile.ProfileContent();
  v2[29] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v10 = sub_197615590();
  v2[34] = v10;
  v11 = *(v10 - 8);
  v2[35] = v11;
  v12 = *(v11 + 64) + 15;
  v2[36] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353A8, &qword_197621538) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v14 = *(*(sub_197616810() - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353B0, &qword_197621540);
  v2[39] = v15;
  v16 = *(v15 - 8);
  v2[40] = v16;
  v17 = *(v16 + 64) + 15;
  v2[41] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353B8, &qword_197621548);
  v2[42] = v18;
  v19 = *(v18 - 8);
  v2[43] = v19;
  v20 = *(v19 + 64) + 15;
  v2[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1975EE6E8, v1, 0);
}

uint64_t sub_1975EE6E8()
{
  v1 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  sub_1975ED5D8();
  MEMORY[0x19A8E3450](v4);
  sub_197616820();
  OUTLINED_FUNCTION_4_34();
  sub_1975EFCF0(v6, 255, v7);
  OUTLINED_FUNCTION_19_7();
  sub_197616690();
  sub_197616CA0();
  (*(v3 + 8))(v2, v4);
  sub_197616CE0();
  v0[45] = sub_1975EFCF0(&qword_1ED816530, v8, _s11FileHandlerCMa);
  v9 = v0[22];
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[46] = v10;
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_1_38(v10);

  return sub_1975EF268(v12, v13, v14);
}

uint64_t sub_1975EE880()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = *(v5 + 368);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (!v0)
  {
    v10 = *(v3 + 176);

    return MEMORY[0x1EEE6DFA0](sub_1975EE97C, v10, 0);
  }

  return result;
}

uint64_t sub_1975EE97C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
LABEL_4:
    v4 = *(v0 + 328);
    v5 = *(v0 + 304);
    v6 = *(v0 + 288);
    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);
    v94 = *(v0 + 224);
    v96 = *(v0 + 216);
    v11 = *(v0 + 208);
    v98 = *(v0 + 184);
    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));

    OUTLINED_FUNCTION_3();

    return v12();
  }

  (*(*(v0 + 280) + 32))(*(v0 + 288), v1, v2);
  if (sub_197616680())
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    v3 = *(v0 + 296);
    goto LABEL_4;
  }

  v14 = *(v0 + 288);
  v15 = sub_197615580();
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = v15;
  *(v0 + 104) = 0x7265646E6573;
  *(v0 + 112) = 0xE600000000000000;
  sub_1976169C0();
  v17 = sub_1975ED864(v0 + 16, v16);
  v19 = v18;

  sub_19755C404(v0 + 16, &qword_1EAF34BE8, &qword_19761BB78);
  if (v19)
  {
    if (qword_1ED817510 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    OUTLINED_FUNCTION_10();
    if (qword_1ED817578)
    {
      v20 = qword_1ED817570;
      v21 = qword_1ED817578;
    }

    else
    {
      if (qword_1ED8174D8 != -1)
      {
        OUTLINED_FUNCTION_4_3();
      }

      if (qword_1ED81D218)
      {
        v20 = qword_1ED81D210;
        v21 = qword_1ED81D218;
      }

      else
      {
        type metadata accessor for CFBundle(0);
        v24 = sub_1975A5740();
        if (v25)
        {
          v20 = v24;
        }

        else
        {
          v20 = 0;
        }

        if (v25)
        {
          v21 = v25;
        }

        else
        {
          v21 = 0xE000000000000000;
        }
      }
    }

    if (v17 == v20 && v19 == v21)
    {
    }

    else
    {
      v27 = sub_197616EF0();

      if ((v27 & 1) == 0)
      {
        if (qword_1ED816850 != -1)
        {
          swift_once();
        }

        v28 = qword_1ED81D1D0;
        if (qword_1ED81D1D0)
        {
          v97 = v17;
          v29 = *(v0 + 256);
          v30 = *(v0 + 232);
          v91 = *(*(v0 + 200) + 16);
          v91(*(v0 + 208), *(v0 + 168), *(v0 + 192));
          v31 = v30[6];
          v32 = sub_197615A60();
          v95 = v31;
          OUTLINED_FUNCTION_36();
          __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
          v36 = (v29 + v30[7]);
          *v36 = 0;
          v36[1] = 0;
          v93 = v30[8];
          OUTLINED_FUNCTION_36();
          __swift_storeEnumTagSinglePayload(v37, v38, v39, v32);
          v40 = v30[9];
          _s12DisplayEventVMa();
          OUTLINED_FUNCTION_36();
          __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
          *(v29 + v30[10]) = 3;
          v45 = v30[11];

          OUTLINED_FUNCTION_19_7();
          *(v29 + v45) = sub_1976160B0();
          v46 = v30[12];
          OUTLINED_FUNCTION_19_7();
          *(v29 + v46) = sub_1976160B0();
          v47 = [objc_opt_self() defaultManager];
          v48 = sub_19755F398();

          if (v48)
          {
            v90 = *(v0 + 232);
            v50 = *(v0 + 208);
            v49 = *(v0 + 216);
            v52 = *(v0 + 192);
            v51 = *(v0 + 200);
            v53 = *(v0 + 184);
            v91(v53, v50, v52);
            __swift_storeEnumTagSinglePayload(v53, 0, 1, v52);
            sub_19758B004(v53, 1, 0);
            (*(v51 + 8))(v50, v52);
            sub_19755C404(v53, &qword_1EAF34610, &qword_197621E30);
            if (__swift_getEnumTagSinglePayload(v49, 1, v90) != 1)
            {
              v70 = *(v0 + 248);
              v69 = *(v0 + 256);
              v71 = *(v0 + 224);
              v92 = *(v0 + 232);
              sub_1975EFC30(*(v0 + 216), v70);
              sub_19755C404(v29 + v95, &qword_1EAF34988, &qword_197620CA0);
              sub_19755C404(v29 + v93, &qword_1EAF34988, &qword_197620CA0);
              sub_19755C404(v29 + v40, &qword_1EAF35260, &qword_1976202C8);

              sub_1975EFC30(v70, v69);
              sub_19758C664(v69, v71);
              __swift_storeEnumTagSinglePayload(v71, 0, 1, v92);
              sub_1975EFC94(v69);
              v63 = v97;
LABEL_44:
              v72 = *(v0 + 224);
              if (__swift_getEnumTagSinglePayload(v72, 1, *(v0 + 232)) == 1)
              {
                v73 = OUTLINED_FUNCTION_15_11();
                v74(v73);

                sub_19755C404(v72, &qword_1EAF35390, &qword_1976214A8);
              }

              else
              {
                v75 = *(v0 + 264);
                v76 = *(v0 + 240);
                sub_1975EFC30(v72, v75);
                v77 = OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
                OUTLINED_FUNCTION_10();
                sub_19758C664(v28 + v77, v76);
                LOBYTE(v77) = static DeviceProfile.ProfileContent.== infix(_:_:)(v76, v75);
                sub_1975EFC94(v76);
                if (v77)
                {
                  v79 = *(v0 + 280);
                  v78 = *(v0 + 288);
                  v81 = *(v0 + 264);
                  v80 = *(v0 + 272);

                  sub_1975EFC94(v81);
                  (*(v79 + 8))(v78, v80);
                }

                else
                {
                  sub_1975EC548(*(v0 + 264), v63, v19);
                  if (qword_1ED816C98 != -1)
                  {
                    OUTLINED_FUNCTION_5_0();
                  }

                  v82 = *(v0 + 280);
                  v83 = *(v0 + 288);
                  v85 = *(v0 + 264);
                  v84 = *(v0 + 272);
                  v86 = type metadata accessor for logger();
                  __swift_project_value_buffer(v86, qword_1ED816CA0);
                  *(v0 + 136) = 0;
                  *(v0 + 144) = 0xE000000000000000;
                  sub_197616A20();
                  v87 = *(v0 + 144);

                  *(v0 + 120) = 0xD000000000000022;
                  *(v0 + 128) = 0x8000000197625B30;
                  MEMORY[0x19A8E2A50](v63, v19);

                  v88 = *(v0 + 120);
                  v89 = *(v0 + 128);
                  sub_197558864();

                  sub_1975EFC94(v85);
                  (*(v82 + 8))(v83, v84);
                }
              }

              goto LABEL_38;
            }

            sub_19755C404(*(v0 + 216), &qword_1EAF35390, &qword_1976214A8);
          }

          else
          {
            (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
          }

          v63 = v97;
          v65 = *(v0 + 224);
          v64 = *(v0 + 232);
          sub_19755C404(v29 + v95, &qword_1EAF34988, &qword_197620CA0);
          sub_19755C404(v29 + v93, &qword_1EAF34988, &qword_197620CA0);
          sub_19755C404(v29 + v40, &qword_1EAF35260, &qword_1976202C8);

          OUTLINED_FUNCTION_36();
          __swift_storeEnumTagSinglePayload(v66, v67, v68, v64);
          goto LABEL_44;
        }
      }
    }

    v54 = OUTLINED_FUNCTION_15_11();
    v55(v54);
  }

  else
  {
LABEL_13:
    v22 = OUTLINED_FUNCTION_15_11();
    v23(v22);
  }

LABEL_38:
  v56 = *(v0 + 360);
  v57 = *(v0 + 176);
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  *(v0 + 368) = v58;
  *v58 = v59;
  v60 = OUTLINED_FUNCTION_1_38();

  return sub_1975EF268(v60, v61, v62);
}

uint64_t sub_1975EF268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353A8, &qword_197621538) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v7 = sub_197615590();
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v9 = *(v8 + 64) + 15;
  v4[13] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v10 = sub_197616560();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v4[14] = v10;
  v4[15] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1975EF3A0, v10, v12);
}

uint64_t sub_1975EF3A0()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[9];
  v0[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353B8, &qword_197621548);
  v0[17] = sub_197616CC0();
  sub_197616810();
  OUTLINED_FUNCTION_5_23();
  sub_1975EFCF0(v2, 255, v3);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[18] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_32(v5);

  return MEMORY[0x1EEE6D8D0](v7);
}

uint64_t sub_1975EF480()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 112);
    v10 = *(v3 + 120);
    v11 = sub_1975EF75C;
  }

  else
  {
    (*(v3 + 136))();
    v9 = *(v3 + 112);
    v10 = *(v3 + 120);
    v11 = sub_1975EF594;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1975EF594()
{
  v2 = v0[10];
  v1 = v0[11];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_19755C404(v2, &qword_1EAF353A8, &qword_197621538);
    v3 = v0[13];
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[6];
    OUTLINED_FUNCTION_36();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);

    OUTLINED_FUNCTION_3();

    return v11();
  }

  else
  {
    v13 = v0[16];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[9];
    v17 = *(v15 + 32);
    v0[19] = v17;
    v0[20] = (v15 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v17(v14, v2, v1);
    v18 = sub_197616CA0();
    v0[21] = v19;
    v23 = (v18 + *v18);
    v20 = v18[1];
    v21 = swift_task_alloc();
    v0[22] = v21;
    *v21 = v0;
    v21[1] = sub_1975EF7E0;
    v22 = v0[13];

    return v23(v22);
  }
}

uint64_t sub_1975EF75C()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  (*(v0 + 136))();

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_1975EF7E0()
{
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = v1[22];
  v5 = v1[21];
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v9 + 184) = v8;

  v10 = v1[15];
  v11 = v1[14];

  return MEMORY[0x1EEE6DFA0](sub_1975EF920, v11, v10);
}

uint64_t sub_1975EF920()
{
  OUTLINED_FUNCTION_25();
  if (*(v0 + 184) == 1)
  {
    v1 = *(v0 + 160);
    (*(v0 + 152))(*(v0 + 48), *(v0 + 104), *(v0 + 88));
    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    __swift_storeEnumTagSinglePayload(*(v0 + 48), 0, 1, *(v0 + 88));

    OUTLINED_FUNCTION_3();

    return v4();
  }

  else
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    v6 = *(v0 + 72);
    *(v0 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353B8, &qword_197621548);
    *(v0 + 136) = sub_197616CC0();
    sub_197616810();
    OUTLINED_FUNCTION_5_23();
    sub_1975EFCF0(v7, 255, v8);
    v9 = *(MEMORY[0x1E69E85B0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    *(v0 + 144) = v10;
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_2_32();

    return MEMORY[0x1EEE6D8D0](v12);
  }
}

uint64_t sub_1975EFA94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1975EB6D8();
}

void sub_1975EFAB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1976160A0();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t sub_1975EFB50()
{
  v2 = sub_197615970();
  OUTLINED_FUNCTION_5_2(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_19755CCE8;
  v10 = OUTLINED_FUNCTION_17_12();

  return sub_1975EE1CC(v10, v11, v12, v13, v14);
}

uint64_t sub_1975EFC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceProfile.ProfileContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975EFC94(uint64_t a1)
{
  v2 = type metadata accessor for DeviceProfile.ProfileContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1975EFCF0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s19IneligibilityReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE7)
  {
    if (a2 + 25 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 25) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 26;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v5 = v6 - 26;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s19IneligibilityReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE6)
  {
    v6 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1975EFED4()
{
  OUTLINED_FUNCTION_4_35();
  v0(v1);
  OUTLINED_FUNCTION_0_39();

  return sub_1976171F0();
}

uint64_t sub_1975EFFA8()
{
  OUTLINED_FUNCTION_4_35();
  v0(v3, v1);
  return sub_1976171F0();
}

uint64_t sub_1975F0000(uint64_t a1, char a2)
{
  sub_1975A4D54(a2);
  OUTLINED_FUNCTION_2_33();
}

uint64_t sub_1975F0040(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_3_31();
      break;
    default:
      break;
  }

  sub_197616260();
}

uint64_t sub_1975F0144()
{
  sub_197616260();
}

uint64_t sub_1975F01E8()
{
  CoreTip.ConstellationContent.Color.rawValue.getter();
  OUTLINED_FUNCTION_2_33();
}

uint64_t sub_1975F0234()
{
  sub_197616260();
}

uint64_t sub_1975F0298()
{
  sub_197616260();
}

uint64_t sub_1975F0300(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_3_31();
      break;
    default:
      break;
  }

  sub_197616260();
}

uint64_t sub_1975F0398()
{
  sub_197616260();
}

uint64_t sub_1975F040C()
{
  sub_197616260();
}

uint64_t sub_1975F052C()
{
  sub_197617190();
  sub_197616260();

  return sub_1976171F0();
}

uint64_t sub_1975F05CC()
{
  sub_197617190();
  sub_197616260();

  return sub_1976171F0();
}

uint64_t sub_1975F0648()
{
  sub_197617190();
  sub_197616260();

  return sub_1976171F0();
}

uint64_t sub_1975F06D8()
{
  v1 = OUTLINED_FUNCTION_1_39();
  v0(v1);
  OUTLINED_FUNCTION_0_39();

  return sub_1976171F0();
}

uint64_t sub_1975F0724(uint64_t a1, unsigned __int8 a2)
{
  sub_197617190();
  MEMORY[0x19A8E3940](a2);
  return sub_1976171F0();
}

uint64_t sub_1975F0780()
{
  OUTLINED_FUNCTION_1_39();
  v0(v3, v1);
  return sub_1976171F0();
}

uint64_t sub_1975F07F0()
{
  OUTLINED_FUNCTION_1_39();
  v0(v1);
  OUTLINED_FUNCTION_0_39();

  return sub_1976171F0();
}

unint64_t sub_1975F084C(unint64_t result)
{
  if (result >= 0x1A)
  {
    return 26;
  }

  return result;
}

unint64_t sub_1975F0880@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1975F084C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1975F08B0()
{
  result = qword_1EAF353C0;
  if (!qword_1EAF353C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF353C0);
  }

  return result;
}

unint64_t sub_1975F09B4()
{
  result = qword_1EAF353C8;
  if (!qword_1EAF353C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF353C8);
  }

  return result;
}

void sub_1975F0A54(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = *(a1 + 64);
    v6 = *(a1 + 32);
    OUTLINED_FUNCTION_1_40();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v16 = v12 | (v4 << 6);
      v17 = (*(a1 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(a1 + 56) + v16);

      v21 = sub_19755C610();
      v23 = v22;

      if ((v23 & 1) == 0 || *(*(a2 + 56) + v21) != v20)
      {
        return;
      }
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return;
      }

      ++v13;
      if (*(a1 + 64 + 8 * v4))
      {
        OUTLINED_FUNCTION_9();
        v9 = v15 & v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1975F0BEC(uint64_t a1, uint64_t a2, void (*a3)(int64_t, __int128 *), uint64_t a4, void (*a5)(__int128 *))
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v8 = 0;
    v9 = *(a1 + 64);
    v10 = *(a1 + 32);
    OUTLINED_FUNCTION_1_40();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    v29 = v16;
    while (v13)
    {
      OUTLINED_FUNCTION_12_15();
LABEL_11:
      v21 = v17 | (v8 << 6);
      v22 = (*(a1 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      a3(*(a1 + 56) + 32 * v21, &v34);
      v30 = v34;
      v31 = v35;

      if (!v23)
      {
        return;
      }

      v34 = v30;
      v35 = v31;
      v25 = sub_19755C610();
      v27 = v26;

      if ((v27 & 1) == 0)
      {
        a5(&v34);
        return;
      }

      a3(*(a2 + 56) + 32 * v25, v33);
      v28 = v29(v33, &v34);
      a5(v33);
      a5(&v34);
      if ((v28 & 1) == 0)
      {
        return;
      }
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return;
      }

      ++v18;
      if (*(a1 + 64 + 8 * v8))
      {
        OUTLINED_FUNCTION_9();
        v13 = v20 & v19;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1975F0D7C(uint64_t a1)
{
  sub_1975F3024(a1, v11, &qword_1EAF34340, &unk_19761C8E0);
  if (!v12)
  {
    sub_19755C7C8(a1, &qword_1EAF34340, &unk_19761C8E0);
LABEL_15:
    v2 = 3;
    goto LABEL_16;
  }

  sub_1975F3024(v11, v10, &qword_1EAF34340, &unk_19761C8E0);
  if (!OUTLINED_FUNCTION_27_6())
  {
    if (OUTLINED_FUNCTION_27_6())
    {
      v3 = v8 == 0x737265735577656ELL && v9 == 0xE800000000000000;
      if (v3 || (OUTLINED_FUNCTION_22_9() & 1) != 0)
      {
        sub_19755C7C8(a1, &qword_1EAF34340, &unk_19761C8E0);

        __swift_destroy_boxed_opaque_existential_0Tm(v10);
        v2 = 0;
        goto LABEL_16;
      }

      v5 = v8 == 0x7265646172677075 && v9 == 0xE900000000000073;
      if (v5 || (OUTLINED_FUNCTION_22_9() & 1) != 0)
      {
        sub_19755C7C8(a1, &qword_1EAF34340, &unk_19761C8E0);

        __swift_destroy_boxed_opaque_existential_0Tm(v10);
        v2 = 1;
        goto LABEL_16;
      }

      if (v8 == 0x7265686374697773 && v9 == 0xE900000000000073)
      {

        sub_19755C7C8(a1, &qword_1EAF34340, &unk_19761C8E0);
      }

      else
      {
        v7 = OUTLINED_FUNCTION_22_9();

        sub_19755C7C8(a1, &qword_1EAF34340, &unk_19761C8E0);
        if ((v7 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      v2 = 2;
      goto LABEL_16;
    }

    sub_19755C7C8(a1, &qword_1EAF34340, &unk_19761C8E0);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    goto LABEL_15;
  }

  sub_19755C7C8(a1, &qword_1EAF34340, &unk_19761C8E0);
  v2 = v8;
  if (v8 >= 3)
  {
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v10);
LABEL_16:
  sub_19755C7C8(v11, &qword_1EAF34340, &unk_19761C8E0);
  return v2;
}

uint64_t sub_1975F0FE4()
{
  v1 = (v0 + *(type metadata accessor for DeviceProfile.ProfileContent() + 28));
  v3 = *v1;
  v4 = v1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34400, &qword_1976185C0);
  return sub_197616200();
}

uint64_t sub_1975F103C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v159 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  OUTLINED_FUNCTION_5_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v154 = v147 - v7;
  v8 = _s12DisplayEventVMa();
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v158 = (v13 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v15 = OUTLINED_FUNCTION_5_2(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = v18 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v147 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v147 - v25;
  v27 = type metadata accessor for DeviceProfile.ProfileContent();
  v28 = v27[6];
  v29 = sub_197615A60();
  v156 = v28;
  OUTLINED_FUNCTION_4_36();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  v157 = v27[8];
  OUTLINED_FUNCTION_4_36();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v148 = v27[9];
  v155 = v8;
  __swift_storeEnumTagSinglePayload(&a2[v148], 1, 1, v8);
  v38 = v27[11];
  v39 = sub_1976160B0();
  v150 = v38;
  v149 = v39;
  *&a2[v38] = v39;
  v40 = v27[12];
  v41 = sub_1976160B0();
  v152 = v40;
  v151 = v41;
  *&a2[v40] = v41;
  if (qword_1ED817298 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    if (byte_1ED8172A4)
    {
      v42 = 1;
    }

    else
    {
      swift_getKeyPath();
      v43 = AnyKeyPath.stringValue.getter();
      sub_197579604(v43, v44);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
      OUTLINED_FUNCTION_20_8();
      if (swift_dynamicCast())
      {
        if (v162 == 2)
        {
          v42 = 2;
        }

        else
        {
          v42 = v162 == 1;
        }
      }

      else
      {
        v42 = 0;
      }
    }

    *a2 = v42;
    swift_getKeyPath();
    v45 = AnyKeyPath.stringValue.getter();
    OUTLINED_FUNCTION_21_10(v45, v46);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34698, &qword_197619048);
    OUTLINED_FUNCTION_20_8();
    *&v160 = v47;
    if (swift_dynamicCast())
    {
      v48 = v162;
    }

    else
    {
      v48 = 0;
    }

    a2[1] = v48 & 1;
    swift_getKeyPath();
    v49 = AnyKeyPath.stringValue.getter();
    OUTLINED_FUNCTION_21_10(v49, v50);

    if (v166)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
      v52 = swift_allocObject();
      sub_19756A94C(&v164, (v52 + 16));
    }

    else
    {

      sub_19755C7C8(&v164, &qword_1EAF34698, &qword_197619048);
      v52 = 0;
      v51 = 0;
      *(&v164 + 1) = 0;
      v165 = 0;
    }

    *&v164 = v52;
    v166 = v51;
    v53 = sub_1975F0D7C(&v164);
    if (v53 == 3)
    {
      v54 = 0;
    }

    else
    {
      v54 = v53;
    }

    a2[v27[10]] = v54;
    _s10Foundation4DateV10TipKitCoreE13bySubtracting17calendarComponent5count2toACSgAA8CalendarV0I0O_SiACtFZfA1__0();
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v29);
    sub_19758C390(v26, &v156[a2], &qword_1EAF34988, &qword_197620CA0);
    swift_getKeyPath();
    v58 = AnyKeyPath.stringValue.getter();
    OUTLINED_FUNCTION_21_10(v58, v59);

    OUTLINED_FUNCTION_20_8();
    v60 = swift_dynamicCast();
    v62 = *(&v162 + 1);
    v61 = v162;
    if (!v60)
    {
      v61 = 0;
      v62 = 0;
    }

    v63 = &a2[v27[7]];
    *v63 = v61;
    *(v63 + 1) = v62;
    swift_getKeyPath();
    v64 = AnyKeyPath.stringValue.getter();
    OUTLINED_FUNCTION_21_10(v64, v65);

    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v66, v67, v68, v29);
      OUTLINED_FUNCTION_18(v29);
      (*(v69 + 32))(v24, v20, v29);
      v70 = 0;
    }

    else
    {
      v70 = 1;
      OUTLINED_FUNCTION_4_36();
      __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
      sub_19755C7C8(v20, &qword_1EAF34988, &qword_197620CA0);
    }

    v75 = v157;
    __swift_storeEnumTagSinglePayload(v24, v70, 1, v29);
    sub_19758C390(v24, &v75[a2], &qword_1EAF34988, &qword_197620CA0);
    swift_getKeyPath();
    v76 = AnyKeyPath.stringValue.getter();
    OUTLINED_FUNCTION_21_10(v76, v77);

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
    OUTLINED_FUNCTION_20_8();
    if (!swift_dynamicCast())
    {
      break;
    }

    v78 = v162;
    v27 = v158;
    if (!v162)
    {
      goto LABEL_40;
    }

    v147[1] = v20;
    v157 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35410, &qword_197621B30);
    v79 = sub_197616C70();
    v24 = 0;
    v26 = (v78 + 64);
    v80 = *(v78 + 64);
    v81 = *(v78 + 32);
    OUTLINED_FUNCTION_1_40();
    a2 = (v83 & v82);
    v85 = (v84 + 63) >> 6;
    v156 = (v86 + 64);
    v153 = v78;
    if ((v83 & v82) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_12_15();
LABEL_32:
        v20 = v87 | (v24 << 6);
        v91 = (*(v78 + 48) + 16 * v20);
        v29 = *v91;
        v27 = v91[1];
        sub_1975F2FCC(*(v78 + 56) + 32 * v20, &v164);
        v92 = v166;
        __swift_project_boxed_opaque_existential_1Tm(&v164, v166);
        *(&v163 + 1) = v92;
        __swift_allocate_boxed_opaque_existential_0(&v162);
        OUTLINED_FUNCTION_18(v92);
        (*(v93 + 16))();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
        if (!swift_dynamicCast() || (v94 = sub_1975F084C(v161), v94 == 26))
        {
          v94 = 1;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v164);
        OUTLINED_FUNCTION_16_12();
        v95 = (v79[6] + 16 * v20);
        *v95 = v29;
        v95[1] = v27;
        *(v79[7] + v20) = v94;
        v96 = v79[2];
        v97 = __OFADD__(v96, 1);
        v98 = v96 + 1;
        if (v97)
        {
          goto LABEL_64;
        }

        v79[2] = v98;
        v78 = v153;
      }

      while (a2);
    }

    v88 = v24;
    a2 = v157;
    while (1)
    {
      v24 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      if (v24 >= v85)
      {

        *&a2[v152] = v79;
        v27 = v158;
        goto LABEL_40;
      }

      ++v88;
      if (*&v26[8 * v24])
      {
        OUTLINED_FUNCTION_9();
        a2 = (v90 & v89);
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
  }

  v27 = v158;
LABEL_40:
  swift_getKeyPath();
  v99 = AnyKeyPath.stringValue.getter();
  OUTLINED_FUNCTION_21_10(v99, v100);

  OUTLINED_FUNCTION_20_8();
  if (swift_dynamicCast())
  {
    v101 = v162;
  }

  else
  {
    v101 = 0;
  }

  v102 = v154;
  sub_1975E32A8(v101, v154);
  v103 = v155;
  if (__swift_getEnumTagSinglePayload(v102, 1, v155) == 1)
  {
    sub_19755C7C8(v102, &qword_1EAF35260, &qword_1976202C8);
  }

  else
  {
    sub_1975DEC68(v102, v27);
    v104 = v27 + *(v103 + 20);
    sub_197615A00();
    *&v106 = -v105;
    v160 = v106;
    v107 = Double.seconds.getter(*&v106);
    sub_1975877EC(v107);
    sub_197617290();
    sub_1976172B0();
    if (sub_1976172A0())
    {
      v108 = v148;
      sub_19755C7C8(&a2[v148], &qword_1EAF35260, &qword_1976202C8);
      sub_1975DEC68(v27, &a2[v108]);
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v109, v110, v111, v103);
    }

    else
    {
      OUTLINED_FUNCTION_6_18();
      sub_1975F2E4C(v27, v112);
    }
  }

  swift_getKeyPath();
  v113 = AnyKeyPath.stringValue.getter();
  v20 = v114;
  OUTLINED_FUNCTION_21_10(v113, v114);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34390, &qword_197618390);
  OUTLINED_FUNCTION_20_8();
  result = swift_dynamicCast();
  if (result)
  {
    v116 = v162;
    if (v162)
    {
      v157 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35408, &qword_197621B28);
      v26 = sub_197616C70();
      v29 = 0;
      v118 = v116 + 64;
      v117 = *(v116 + 64);
      v119 = *(v116 + 32);
      OUTLINED_FUNCTION_1_40();
      a2 = (v121 & v120);
      v24 = (v122 + 63) >> 6;
      v156 = (v123 + 16);
      v158 = v123;
      if ((v121 & v120) != 0)
      {
        do
        {
          OUTLINED_FUNCTION_12_15();
LABEL_57:
          v20 = v124 | (v29 << 6);
          v128 = *(v116 + 56);
          v129 = v116;
          v130 = (*(v116 + 48) + 16 * v20);
          v131 = v130[1];
          *&v160 = *v130;
          sub_1975F2FCC(v128 + 32 * v20, &v164);
          v132 = v166;
          v27 = __swift_project_boxed_opaque_existential_1Tm(&v164, v166);
          v133 = sub_197616860();
          v159 = v147;
          OUTLINED_FUNCTION_5_2(v133);
          v135 = *(v134 + 64);
          OUTLINED_FUNCTION_11();
          MEMORY[0x1EEE9AC00](v136);
          v138 = v147 - v137;
          OUTLINED_FUNCTION_18(v132);
          (*(v139 + 16))(v138, v27, v132);
          OUTLINED_FUNCTION_3_10();
          __swift_storeEnumTagSinglePayload(v140, v141, v142, v132);

          sub_19759C95C(v138, v132, &v162);
          __swift_destroy_boxed_opaque_existential_0Tm(&v164);
          OUTLINED_FUNCTION_16_12();
          v26 = v158;
          v143 = (*(v158 + 6) + 16 * v20);
          *v143 = v160;
          v143[1] = v131;
          v144 = (*(v26 + 7) + 32 * v20);
          *v144 = v162;
          v144[1] = v163;
          v145 = *(v26 + 2);
          v97 = __OFADD__(v145, 1);
          v146 = v145 + 1;
          if (v97)
          {
            goto LABEL_65;
          }

          *(v26 + 2) = v146;
          v116 = v129;
        }

        while (a2);
      }

      v125 = v29;
      a2 = v157;
      while (1)
      {
        v29 = v125 + 1;
        if (__OFADD__(v125, 1))
        {
          goto LABEL_63;
        }

        if (v29 >= v24)
        {

          *&a2[v150] = v26;
          return result;
        }

        ++v125;
        if (*(v118 + 8 * v29))
        {
          OUTLINED_FUNCTION_9();
          a2 = (v127 & v126);
          goto LABEL_57;
        }
      }
    }
  }

  return result;
}

uint64_t static DeviceProfile.ProfileContent.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = _s12DisplayEventVMa();
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v103 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  OUTLINED_FUNCTION_5_2(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v104 = (&v98 - v14);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353D0, &qword_197621670);
  OUTLINED_FUNCTION_13(v105);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v98 - v18;
  v20 = sub_197615A60();
  v21 = OUTLINED_FUNCTION_0(v20);
  v107 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_0();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v29 = OUTLINED_FUNCTION_5_2(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v106 = v32 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v98 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35138, &qword_19761F2F8);
  v38 = OUTLINED_FUNCTION_13(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v98 - v45;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    goto LABEL_13;
  }

  v98 = v19;
  v99 = v4;
  v101 = type metadata accessor for DeviceProfile.ProfileContent();
  v102 = a2;
  v47 = v101[6];
  v48 = *(v37 + 48);
  v100 = a1;
  OUTLINED_FUNCTION_29_7(&a1[v47], v46);
  v49 = &v102[v47];
  v50 = v102;
  OUTLINED_FUNCTION_29_7(v49, &v46[v48]);
  OUTLINED_FUNCTION_3_32(v46);
  if (v51)
  {
    OUTLINED_FUNCTION_3_32(&v46[v48]);
    if (v51)
    {
      sub_19755C7C8(v46, &qword_1EAF34988, &qword_197620CA0);
      goto LABEL_16;
    }

LABEL_11:
    v52 = &qword_1EAF35138;
    v53 = &qword_19761F2F8;
    v54 = v46;
LABEL_12:
    sub_19755C7C8(v54, v52, v53);
    goto LABEL_13;
  }

  sub_1975F3024(v46, v36, &qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_3_32(&v46[v48]);
  if (v51)
  {
    (*(v107 + 8))(v36, v20);
    goto LABEL_11;
  }

  v57 = v107;
  (*(v107 + 32))(v27, &v46[v48], v20);
  OUTLINED_FUNCTION_0_40();
  sub_1975F2D90(v58, v59);
  v60 = sub_1976161A0();
  v61 = *(v57 + 8);
  v61(v27, v20);
  v61(v36, v20);
  v50 = v102;
  sub_19755C7C8(v46, &qword_1EAF34988, &qword_197620CA0);
  if ((v60 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v63 = v100;
  v62 = v101;
  v64 = v101[7];
  v65 = &v100[v64];
  v66 = *&v100[v64 + 8];
  v67 = &v50[v64];
  v68 = *(v67 + 1);
  if (v66)
  {
    v69 = v99;
    if (!v68)
    {
      goto LABEL_13;
    }

    v70 = *v65 == *v67 && v66 == v68;
    if (!v70 && (sub_197616EF0() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v69 = v99;
    if (v68)
    {
      goto LABEL_13;
    }
  }

  v71 = v62[8];
  v72 = *(v37 + 48);
  OUTLINED_FUNCTION_29_7(&v63[v71], v43);
  v73 = v102;
  OUTLINED_FUNCTION_29_7(&v102[v71], v43 + v72);
  OUTLINED_FUNCTION_3_32(v43);
  if (v51)
  {
    OUTLINED_FUNCTION_3_32(v43 + v72);
    v74 = v98;
    if (v51)
    {
      sub_19755C7C8(v43, &qword_1EAF34988, &qword_197620CA0);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v75 = v106;
  sub_1975F3024(v43, v106, &qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_3_32(v43 + v72);
  v74 = v98;
  if (v76)
  {
    (*(v107 + 8))(v75, v20);
LABEL_33:
    v52 = &qword_1EAF35138;
    v53 = &qword_19761F2F8;
    v54 = v43;
    goto LABEL_12;
  }

  v77 = v107;
  (*(v107 + 32))(v27, v43 + v72, v20);
  OUTLINED_FUNCTION_0_40();
  sub_1975F2D90(v78, v79);
  v80 = v75;
  v81 = sub_1976161A0();
  v82 = *(v77 + 8);
  v82(v27, v20);
  v82(v80, v20);
  v73 = v102;
  sub_19755C7C8(v43, &qword_1EAF34988, &qword_197620CA0);
  if ((v81 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_35:
  v83 = v101[9];
  v84 = *(v105 + 48);
  sub_1975F3024(&v63[v83], v74, &qword_1EAF35260, &qword_1976202C8);
  sub_1975F3024(&v73[v83], v74 + v84, &qword_1EAF35260, &qword_1976202C8);
  OUTLINED_FUNCTION_30_7(v74);
  if (!v51)
  {
    v85 = v104;
    sub_1975F3024(v74, v104, &qword_1EAF35260, &qword_1976202C8);
    OUTLINED_FUNCTION_30_7(v74 + v84);
    if (!v86)
    {
      v88 = v74 + v84;
      v89 = v103;
      sub_1975DEC68(v88, v103);
      v90 = *v85 == *v89 && v85[1] == v89[1];
      if (v90 || (sub_197616EF0() & 1) != 0)
      {
        v91 = *(v69 + 20);
        v92 = sub_197615A30();
        sub_1975F2E4C(v89, _s12DisplayEventVMa);
        sub_1975F2E4C(v85, _s12DisplayEventVMa);
        sub_19755C7C8(v74, &qword_1EAF35260, &qword_1976202C8);
        if ((v92 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_51;
      }

      sub_1975F2E4C(v89, _s12DisplayEventVMa);
      sub_1975F2E4C(v85, _s12DisplayEventVMa);
      v52 = &qword_1EAF35260;
      v53 = &qword_1976202C8;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_6_18();
    sub_1975F2E4C(v85, v87);
LABEL_43:
    v52 = &qword_1EAF353D0;
    v53 = &qword_197621670;
LABEL_44:
    v54 = v74;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_30_7(v74 + v84);
  if (!v51)
  {
    goto LABEL_43;
  }

  sub_19755C7C8(v74, &qword_1EAF35260, &qword_1976202C8);
LABEL_51:
  v93 = v101;
  v94 = v101[10];
  v95 = v63[v94];
  v96 = v73[v94];
  if (v95 == 3)
  {
    if (v96 != 3)
    {
      goto LABEL_13;
    }
  }

  else if (v95 != v96)
  {
    goto LABEL_13;
  }

  sub_1975F0BEC(*&v63[v101[11]], *&v73[v101[11]], sub_19759F898, sub_1975CC8B8, sub_19759425C);
  if (v97)
  {
    sub_1975F0A54(*&v63[v93[12]], *&v73[v93[12]]);
    return v55 & 1;
  }

LABEL_13:
  v55 = 0;
  return v55 & 1;
}

uint64_t sub_1975F23E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D697265707865 && a2 == 0xEE00706D6143746ELL;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 3487349 && a2 == 0xE300000000000000;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x8000000197625B60 == a2;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x8000000197625B80 == a2;
        if (v8 || (sub_197616EF0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001CLL && 0x8000000197625BA0 == a2;
          if (v9 || (sub_197616EF0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x8000000197625BC0 == a2;
            if (v10 || (sub_197616EF0() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6570795472657375 && a2 == 0xE800000000000000;
              if (v11 || (sub_197616EF0() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x8000000197625BE0 == a2;
                if (v12 || (sub_197616EF0() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x626967696C656E69 && a2 == 0xEE0073706954656CLL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_197616EF0();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_1975F26C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975F23E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975F26EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1975F26BC();
  *a1 = result;
  return result;
}

uint64_t sub_1975F2714(uint64_t a1)
{
  v2 = sub_19758BF10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975F2750(uint64_t a1)
{
  v2 = sub_19758BF10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeviceProfile.ProfileContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353D8, &qword_197621678);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19758BF10();
  sub_197617260();
  LOBYTE(v28) = *v3;
  v29 = 0;
  sub_1975F2C20();
  OUTLINED_FUNCTION_3_18();
  sub_197616E60();
  if (!v2)
  {
    v14 = v3[1];
    LOBYTE(v28) = 1;
    OUTLINED_FUNCTION_3_18();
    sub_197616E40();
    v15 = type metadata accessor for DeviceProfile.ProfileContent();
    v16 = v15[6];
    LOBYTE(v28) = 2;
    sub_197615A60();
    OUTLINED_FUNCTION_0_40();
    sub_1975F2D90(v17, v18);
    OUTLINED_FUNCTION_3_18();
    sub_197616E20();
    v19 = &v3[v15[7]];
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v28) = 3;
    OUTLINED_FUNCTION_3_18();
    sub_197616DF0();
    v22 = v15[8];
    LOBYTE(v28) = 4;
    OUTLINED_FUNCTION_3_18();
    sub_197616E20();
    v23 = v15[9];
    LOBYTE(v28) = 5;
    _s12DisplayEventVMa();
    OUTLINED_FUNCTION_7_17();
    sub_1975F2D90(v24, v25);
    OUTLINED_FUNCTION_8_21();
    sub_197616E20();
    LOBYTE(v28) = v3[v15[10]];
    v29 = 6;
    sub_1975F2C74();
    OUTLINED_FUNCTION_3_18();
    sub_197616E20();
    v28 = *&v3[v15[11]];
    v29 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34398, &qword_197618398);
    sub_1975F2DD8(&qword_1ED815E28, sub_19759ECEC);
    OUTLINED_FUNCTION_8_21();
    sub_197616E60();
    v28 = *&v3[v15[12]];
    v29 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF353E0, &qword_197621680);
    sub_1975F2CC8(&qword_1ED815718, sub_1975F2D3C);
    OUTLINED_FUNCTION_8_21();
    sub_197616E60();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1975F2C20()
{
  result = qword_1ED815E60;
  if (!qword_1ED815E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815E60);
  }

  return result;
}

unint64_t sub_1975F2C74()
{
  result = qword_1ED815E58;
  if (!qword_1ED815E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815E58);
  }

  return result;
}

uint64_t sub_1975F2CC8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF353E0, &qword_197621680);
    a2();
    result = OUTLINED_FUNCTION_26_7();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1975F2D3C()
{
  result = qword_1ED815740;
  if (!qword_1ED815740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815740);
  }

  return result;
}

uint64_t sub_1975F2D90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1975F2DD8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34398, &qword_197618398);
    a2();
    result = OUTLINED_FUNCTION_26_7();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1975F2E4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1975F2EC8()
{
  result = qword_1EAF353F0;
  if (!qword_1EAF353F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF353F0);
  }

  return result;
}

unint64_t sub_1975F2F20()
{
  result = qword_1EAF353F8;
  if (!qword_1EAF353F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF353F8);
  }

  return result;
}

unint64_t sub_1975F2F78()
{
  result = qword_1EAF35400;
  if (!qword_1EAF35400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35400);
  }

  return result;
}

uint64_t sub_1975F2FCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  OUTLINED_FUNCTION_18(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_1975F3024(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_28_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

void sub_1975F3078(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v34 = a1;

  v6 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v23 = v1;
LABEL_4:
  v7 = v6;
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
    v6 = v7;
LABEL_9:
    v8 = __clz(__rbit64(v4)) | (v6 << 6);
    v9 = v34;
    sub_19758669C(*(v34 + 48) + 40 * v8, v32);
    sub_19755F9FC(*(v9 + 56) + 32 * v8, v33, &qword_1EAF34340, &unk_19761C8E0);
    sub_1976169A0();
    if (!swift_dynamicCast())
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1976169A0();
      __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
      sub_197616EB0();
      __swift_destroy_boxed_opaque_existential_0Tm(&v24);
    }

    v10 = v27;
    v11 = v28;
    v4 &= v4 - 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
    v13 = swift_allocObject();
    sub_19755F9FC(v33, v13 + 16, &qword_1EAF34340, &unk_19761C8E0);
    *&v29 = v10;
    *(&v29 + 1) = v11;
    *&v30 = v13;
    *(&v31 + 1) = v12;
    sub_19755C7C8(v32, &qword_1EAF35418, &qword_197621B40);
    if (*(&v29 + 1))
    {
      v24 = v29;
      v25 = v30;
      v26 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = *(v22 + 16);
        sub_1975BB2B0();
        v22 = v20;
      }

      v14 = *(v22 + 16);
      v15 = v14 + 1;
      if (v14 >= *(v22 + 24) >> 1)
      {
        sub_1975BB2B0();
        v15 = v14 + 1;
        v22 = v21;
      }

      v1 = v23;
      *(v22 + 16) = v15;
      v16 = (v22 + 48 * v14);
      v17 = v24;
      v18 = v26;
      v16[3] = v25;
      v16[4] = v18;
      v16[2] = v17;
      goto LABEL_4;
    }

    sub_19755C7C8(&v29, &qword_1EAF35420, &qword_197621B48);
    v7 = v6;
    v1 = v23;
  }

  while (v4);
LABEL_6:
  while (1)
  {
    v6 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v6 >= v5)
    {

      sub_1975F33C0(v22, &qword_1EAF35428, &qword_197621B50, sub_1975F5E38);
      return;
    }

    v4 = *(v1 + 8 * v6);
    ++v7;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1975F33C0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_197616C90();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t Dictionary.set(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  OUTLINED_FUNCTION_30_8();
  v8 = sub_197616860();
  OUTLINED_FUNCTION_5_2(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_5();
  v12 = *(a3 + 16);
  OUTLINED_FUNCTION_14();
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  (*(v18 + 16))(v17 - v16, a1);
  OUTLINED_FUNCTION_18(v7);
  (*(v19 + 16))(v3, a2, v7);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v7);
  return sub_197616130();
}

uint64_t Dictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_197616860();
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  result = MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - v13;
  if (!a1)
  {
    goto LABEL_4;
  }

  v17[0] = AnyKeyPath.stringValue.getter();
  v17[1] = v15;
  sub_197616120();

  if (__swift_getEnumTagSinglePayload(v14, 1, a2) == 1)
  {
    result = (*(v8 + 8))(v14, v6);
LABEL_4:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = a2;
  __swift_allocate_boxed_opaque_existential_0(a3);
  OUTLINED_FUNCTION_18(a2);
  return (*(v16 + 32))();
}

uint64_t Dictionary.setInitialValue(key:value:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a2;
  v7 = *(a4 + 16);
  OUTLINED_FUNCTION_14();
  v43 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v42 = v13 - v12;
  v15 = *(v14 + 24);
  OUTLINED_FUNCTION_29_8();
  v16 = sub_197616860();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  v39 = v4;
  v25 = *v4;
  v26 = a1;
  v27 = *(a4 + 32);
  sub_197616120();
  v28 = OUTLINED_FUNCTION_24_9();
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v28, v29, v15);
  result = (*(v19 + 8))(v24, v16);
  if (a1 == 1)
  {
    v32 = v42;
    v31 = v43;
    v33 = (*(v43 + 16))(v42, v26, v7);
    v34 = v44;
    v41(v33);
    if (v34)
    {
      return (*(v31 + 8))(v32, v7);
    }

    else
    {
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v15);
      return sub_197616130();
    }
  }

  return result;
}

void sub_1975F3D90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = *(a2 + a3 - 32);
  v5 = *(v3 - 24);
  v6 = *(v3 - 16);
  v7 = *(v3 - 8);
  v8 = *a1;
  Dictionary.subscript.getter();
}

void sub_1975F3DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = a2;
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  v10 = sub_197616860();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - v13;
  v15 = sub_197616860();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  (*(v18 + 16))(v19 - v17, a3);
  (*(v11 + 16))(v14, a1, v10);
  sub_197616110();
  Dictionary.subscript.setter();
}

void Dictionary.subscript.setter()
{
  OUTLINED_FUNCTION_15_12();
  v2 = v1;
  v4 = v3;
  v51 = v5;
  v6 = *(v1 + 24);
  OUTLINED_FUNCTION_29_8();
  v7 = sub_197616860();
  OUTLINED_FUNCTION_5_2(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v45 - v11;
  v49 = sub_197616860();
  OUTLINED_FUNCTION_0(v49);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v47 = v2;
  v19 = *(v2 + 16);
  v20 = sub_197616860();
  OUTLINED_FUNCTION_0(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_14();
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v45 - v35;
  v37 = *(v22 + 16);
  v50 = v4;
  v48 = v38;
  v37(v0, v4);
  if (__swift_getEnumTagSinglePayload(v0, 1, v19) == 1)
  {
    v39 = *(v22 + 8);
    v40 = v48;
    v39(v50, v48);
    (*(v13 + 8))(v51, v49);
    v39(v0, v40);
  }

  else
  {
    (*(v27 + 32))(v36, v0, v19);
    (*(v27 + 16))(v33, v36, v19);
    v41 = v6;
    v42 = v49;
    (*(v13 + 16))(v18, v51, v49);
    v43 = v46;
    v44 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v43, v44 ^ 1u, 1, v41);
    sub_197616130();
    (*(v22 + 8))(v50, v48);
    (*(v13 + 8))(v51, v42);
    (*(v27 + 8))(v36, v19);
  }

  OUTLINED_FUNCTION_14_9();
}

void (*Dictionary.subscript.modify(void *a1, uint64_t a2, void *a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v8;
  v8[1] = a4;
  v8[2] = v4;
  *v8 = a3;
  v9 = sub_197616860();
  v8[3] = v9;
  v10 = *(v9 - 8);
  v8[4] = v10;
  v11 = *(v10 + 64);
  v8[5] = __swift_coroFrameAllocStub(v11);
  v8[6] = __swift_coroFrameAllocStub(v11);
  v12 = a3[2];
  v13 = sub_197616860();
  v8[7] = v13;
  OUTLINED_FUNCTION_0(v13);
  v15 = v14;
  v8[8] = v14;
  v17 = *(v16 + 64);
  v8[9] = __swift_coroFrameAllocStub(v17);
  v8[10] = __swift_coroFrameAllocStub(v17);
  (*(v15 + 16))();
  v18 = *v4;
  v19 = a3[3];
  v20 = a3[4];
  Dictionary.subscript.getter();
  return sub_1975F4458;
}

void sub_1975F4458(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v4 = (*a1)[10];
  if (a2)
  {
    v5 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v9 = v2[4];
    v10 = v2[1];
    v15 = v2[7];
    v16 = v2[2];
    v11 = *v2;
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v15);
    Dictionary.subscript.setter();
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    v12 = v2[1];
    v13 = v2[2];
    v14 = *v2;
    Dictionary.subscript.setter();
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_1975F457C()
{
  sub_1976160E0();
  OUTLINED_FUNCTION_30_8();
  sub_1976160D0();
  swift_getWitnessTable();
  return sub_197616540();
}

void Dictionary.decode<A>(as:)()
{
  OUTLINED_FUNCTION_15_12();
  v1 = v0;
  v25 = v2;
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = sub_197616860();
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  v9 = objc_opt_self();
  v10 = sub_1976160A0();
  v26[0] = 0;
  v11 = [v9 dataWithJSONObject:v10 options:0 error:v26];

  v12 = v26[0];
  if (v11)
  {
    v13 = sub_1976159A0();
    v15 = v14;

    v16 = 0;
    sub_197567980();
    sub_197567790(v13, v15);
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v1);
    OUTLINED_FUNCTION_18(v1);
    v23 = v25;
    (*(v22 + 32))(v25, v8, v1);
  }

  else
  {
    v17 = v12;
    v18 = sub_197615830();

    swift_willThrow();
    v16 = 1;
    v23 = v25;
  }

  OUTLINED_FUNCTION_22_10(v23, v16);
  v24 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_9();
}

void sub_1975F4840(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = *(a2 + a3 - 16);
  v5 = *(v3 - 1);
  v6 = *a1;
  v7 = *a2;
  Dictionary.subscript.getter();
}

void sub_1975F4858(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = sub_197616860();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - v10;
  v12 = *a3;
  (*(v13 + 16))(v19 - v10, a1);
  v14 = sub_197616110();

  Dictionary.subscript.setter(v11, v12, v14, v7, v15, v16, v17, v18, v19[0], v19[1], v19[2], v19[3]);
}

void Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_15_12();
  v14 = v13;
  v16 = v15;
  v18 = *(v17 + 24);
  v19 = sub_197616860();
  OUTLINED_FUNCTION_5_2(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_31_6();
  v23 = sub_197616860();
  OUTLINED_FUNCTION_0(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v43 - v28;
  if (v14)
  {
    v44 = v27;
    v30 = AnyKeyPath.stringValue.getter();
    v32 = v31;
    (*(v44 + 16))(v29, v16, v23);
    v33 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v12, v33 ^ 1u, 1, v18);
    v45 = v30;
    v46 = v32;
    sub_197616130();

    (*(v44 + 8))(v16, v23);
    OUTLINED_FUNCTION_14_9();
  }

  else
  {
    v34 = *(v27 + 8);
    OUTLINED_FUNCTION_14_9();

    v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
  }
}

uint64_t (*Dictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(int, int, int, int, int, int, int, int, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)
{
  v9 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  OUTLINED_FUNCTION_30_8();
  v10 = sub_197616860();
  v9[4] = v10;
  v11 = *(v10 - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  v9[6] = __swift_coroFrameAllocStub(v12);
  v9[7] = __swift_coroFrameAllocStub(v12);
  v13 = *v4;
  v14 = *(a3 + 24);
  Dictionary.subscript.getter();
  return sub_1975F4C38;
}

uint64_t Dictionary.getOrCreate<A>(key:default:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  OUTLINED_FUNCTION_14();
  v32 = v10;
  v33 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_0();
  v16 = v15 - v14;
  v17 = *v4;
  v20 = *(v18 + 24);
  v19 = *(v18 + 32);
  sub_197616120();
  if (v35)
  {
    OUTLINED_FUNCTION_29_8();
    v21 = sub_197616860();
    OUTLINED_FUNCTION_13(v21);
    v23 = (*(v22 + 8))(v34);
  }

  else
  {
    OUTLINED_FUNCTION_14();
    v25 = v24;
    (*(v26 + 16))(v36, v34, v20);
    OUTLINED_FUNCTION_29_8();
    v27 = sub_197616860();
    OUTLINED_FUNCTION_13(v27);
    (*(v28 + 8))(v34);
    Strong = swift_unknownObjectWeakLoadStrong();
    v23 = (*(v25 + 8))(v36, v20);
    if (Strong)
    {
      return Strong;
    }
  }

  v29 = v33(v23);
  if (!v5)
  {
    Strong = v29;
    (*(v32 + 16))(v16, a1, v8);
    v30 = *(v20 + 16);
    swift_unknownObjectRetain();
    WeakReference.init(_:)();
    v35 = 0;
    sub_197616130();
  }

  return Strong;
}

uint64_t sub_1975F4F5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35428, &qword_197621B50);
  v39 = a2;
  result = sub_197616C80();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v38 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      sub_197614384(0, (v37 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v39)
    {
      v24 = v23[1];
      v40 = *v23;
      v41 = v24;
    }

    else
    {
      sub_19759FA10(v23, &v40);
    }

    v25 = *(v8 + 40);
    sub_197617190();
    sub_197616260();
    result = sub_1976171F0();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = (*(v8 + 56) + 32 * v29);
    v36 = v41;
    *v35 = v40;
    v35[1] = v36;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_1975F5210(uint64_t a1, char a2)
{
  v5 = v2;
  OUTLINED_FUNCTION_8_22(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343B0, &qword_1976183B0);
  OUTLINED_FUNCTION_19_8();
  v7 = sub_197616C80();
  if (!v3[2])
  {

LABEL_33:
    *v5 = v7;
    return;
  }

  v38 = v2;
  v8 = 0;
  OUTLINED_FUNCTION_5_24();
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v14 = v7 + 64;
  if ((v11 & v9) == 0)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v16;
      if (*(v4 + 8 * v8))
      {
        OUTLINED_FUNCTION_9();
        v12 = v18 & v17;
        goto LABEL_12;
      }
    }

    if (a2)
    {
      OUTLINED_FUNCTION_7_18();
      if (v36 != v37)
      {
        OUTLINED_FUNCTION_16_13(v35);
      }

      else
      {
        OUTLINED_FUNCTION_13_17(v35);
      }

      v3[2] = 0;
    }

    v5 = v38;
    goto LABEL_33;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_15();
LABEL_12:
    v19 = v15 | (v8 << 6);
    v20 = v3[6] + 40 * v19;
    if (a2)
    {
      v21 = *v20;
      v22 = *(v20 + 16);
      v42 = *(v20 + 32);
      v40 = v21;
      v41 = v22;
      sub_19756A94C((v3[7] + 32 * v19), v39);
    }

    else
    {
      sub_19758669C(v20, &v40);
      sub_1975586C0(v3[7] + 32 * v19, v39);
    }

    v23 = *(v7 + 40);
    v24 = sub_197616980() & ~(-1 << *(v7 + 32));
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_11_18();
LABEL_24:
    OUTLINED_FUNCTION_28_7();
    *(v14 + v29) |= v30;
    v32 = *(v7 + 48) + 40 * v31;
    v33 = v40;
    v34 = v41;
    *(v32 + 32) = v42;
    *v32 = v33;
    *(v32 + 16) = v34;
    sub_19756A94C(v39, (*(v7 + 56) + 32 * v31));
    OUTLINED_FUNCTION_18_7();
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_10_19();
  while (++v25 != v27 || (v26 & 1) == 0)
  {
    v28 = v25 == v27;
    if (v25 == v27)
    {
      v25 = 0;
    }

    v26 |= v28;
    if (*(v14 + 8 * v25) != -1)
    {
      OUTLINED_FUNCTION_9_19();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_1975F5430(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34388, &qword_197618388);
  v36 = a2;
  result = sub_197616C80();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_197614384(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      sub_19756A94C(v23, v37);
    }

    else
    {
      sub_1975586C0(v23, v37);
    }

    v24 = *(v8 + 40);
    sub_197617190();
    sub_197616260();
    result = sub_1976171F0();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_19756A94C(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1975F56E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35438, &qword_197621B60);
  v39 = a2;
  result = sub_197616C80();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_197614384(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v39 & 1) == 0)
    {
      v24 = v20[1];

      v25 = v23;
    }

    v26 = *(v8 + 40);
    sub_197617190();
    sub_197616260();
    result = sub_1976171F0();
    v27 = -1 << *(v8 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v8 + 48) + 16 * v30);
    *v35 = v21;
    v35[1] = v22;
    *(*(v8 + 56) + 8 * v30) = v23;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_1975F5984(uint64_t a1, char a2)
{
  v5 = v2;
  OUTLINED_FUNCTION_8_22(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35448, &qword_197621B70);
  OUTLINED_FUNCTION_19_8();
  v7 = sub_197616C80();
  if (!v3[2])
  {
LABEL_29:

LABEL_30:
    *v5 = v7;
    return;
  }

  v8 = 0;
  OUTLINED_FUNCTION_5_24();
  OUTLINED_FUNCTION_32_5();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v7 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v16;
      if (*(v4 + 8 * v8))
      {
        OUTLINED_FUNCTION_9();
        v11 = v18 & v17;
        goto LABEL_9;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v2;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_7_18();
    v5 = v2;
    if (v35 != v36)
    {
      OUTLINED_FUNCTION_16_13(v34);
    }

    else
    {
      OUTLINED_FUNCTION_13_17(v34);
    }

    v3[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v19 = v15 | (v8 << 6);
    v20 = *(v3[6] + v19);
    v21 = (v3[7] + 40 * v19);
    if (a2)
    {
      sub_1975558C4(v21, v37);
    }

    else
    {
      sub_19755A560(v21, v37);
    }

    v22 = v7[5];
    sub_197617190();
    sub_1975A4D54(v20);
    sub_197616260();

    v23 = sub_1976171F0();
    OUTLINED_FUNCTION_23_8(v23);
    if (((v26 << v25) & ~v14[v24]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_11_18();
LABEL_21:
    OUTLINED_FUNCTION_28_7();
    *(v14 + v31) |= v32;
    *(v7[6] + v33) = v20;
    sub_1975558C4(v37, v7[7] + 40 * v33);
    OUTLINED_FUNCTION_18_7();
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_10_19();
  while (++v27 != v29 || (v28 & 1) == 0)
  {
    v30 = v27 == v29;
    if (v27 == v29)
    {
      v27 = 0;
    }

    v28 |= v30;
    if (v14[v27] != -1)
    {
      OUTLINED_FUNCTION_9_19();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1975F5B98(uint64_t a1, char a2)
{
  v5 = v2;
  OUTLINED_FUNCTION_8_22(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35450, &qword_197621B78);
  OUTLINED_FUNCTION_19_8();
  v43 = a2;
  v7 = sub_197616C80();
  if (!v3[2])
  {

LABEL_33:
    *v5 = v7;
    return;
  }

  v41 = v2;
  v42 = v3;
  v8 = 0;
  OUTLINED_FUNCTION_5_24();
  OUTLINED_FUNCTION_32_5();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v7 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v17;
      if (*(v4 + 8 * v8))
      {
        OUTLINED_FUNCTION_9();
        v11 = v19 & v18;
        goto LABEL_9;
      }
    }

    if (v43)
    {
      OUTLINED_FUNCTION_7_18();
      if (v39 != v40)
      {
        OUTLINED_FUNCTION_16_13(v38);
      }

      else
      {
        OUTLINED_FUNCTION_13_17(v38);
      }

      v3[2] = 0;
    }

    v5 = v41;
    goto LABEL_33;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_15();
LABEL_9:
    v20 = v15 | (v8 << 6);
    v21 = v3[6] + v20 * v16;
    if (v43)
    {
      v22 = *v21;
      v23 = *(v21 + 16);
      v51 = *(v21 + 32);
      v49 = v22;
      v50 = v23;
      v24 = *(v3[7] + 8 * v20);
    }

    else
    {
      sub_19755F9FC(v21, &v49, &qword_1EAF34BE8, &qword_19761BB78);
      v24 = *(v3[7] + 8 * v20);
    }

    v25 = v7[5];
    sub_197617190();
    sub_19755F9FC(&v49, &v46, &qword_1EAF34BE8, &qword_19761BB78);
    if (*(&v47 + 1))
    {
      v44[0] = v46;
      v44[1] = v47;
      v45 = v48;
      sub_1976171B0();
      sub_1976169B0();
      sub_197587DC0(v44);
    }

    else
    {
      sub_1976171B0();
    }

    v26 = sub_1976171F0();
    OUTLINED_FUNCTION_23_8(v26);
    if (((v29 << v28) & ~v14[v27]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_11_18();
LABEL_24:
    *(v14 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = v7[6] + 40 * v30;
    v36 = v49;
    v37 = v50;
    *(v35 + 32) = v51;
    *v35 = v36;
    *(v35 + 16) = v37;
    *(v7[7] + 8 * v30) = v24;
    OUTLINED_FUNCTION_18_7();
    v3 = v42;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_10_19();
  while (++v31 != v33 || (v32 & 1) == 0)
  {
    v34 = v31 == v33;
    if (v31 == v33)
    {
      v31 = 0;
    }

    v32 |= v34;
    if (v14[v31] != -1)
    {
      OUTLINED_FUNCTION_9_19();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1975F5E38(uint64_t a1, char a2, void *a3)
{
  v28 = *(a1 + 16);
  if (!v28)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1976170F0();
      __break(1u);
      goto LABEL_22;
    }

    sub_19755F9FC(i, &v34, &qword_1EAF34A18, &qword_19761B640);
    v8 = v34;
    v7 = v35;
    v32 = v34;
    v33 = v35;
    v30 = v36;
    v31 = v37;
    v9 = *a3;
    v11 = sub_19755C610();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35430, &qword_197621B58);
      sub_197616C00();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    v21 = (v19[7] + 32 * v11);
    v22 = v31;
    *v21 = v30;
    v21[1] = v22;
    v23 = v19[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    ++v5;
    v19[2] = v25;
    a2 = 1;
    if (v28 == v5)
    {

      return;
    }
  }

  sub_1975F4F5C(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_19755C610();
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v26 = swift_allocError();
  swift_willThrow();
  v38 = v26;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_19759FA6C(&v30);

    return;
  }

LABEL_22:
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD00000000000001BLL, 0x8000000197625C40);
  sub_197616BC0();
  MEMORY[0x19A8E2A50](39, 0xE100000000000000);
  sub_197616C20();
  __break(1u);
}

void sub_1975F614C(uint64_t a1, char a2, void *a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1976170F0();
      __break(1u);
      goto LABEL_22;
    }

    sub_19755F9FC(i, &v31, &qword_1EAF349B0, &qword_19761B200);
    v8 = v31;
    v7 = v32;
    v29 = v31;
    v30 = v32;
    sub_19756A94C(&v33, v28);
    v9 = *a3;
    v11 = sub_19755C610();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35458, &qword_197621B80);
      sub_197616C00();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_19756A94C(v28, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    ++v5;
    v19[2] = v23;
    a2 = 1;
    if (v26 == v5)
    {

      return;
    }
  }

  sub_1975F5430(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_19755C610();
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v34 = v24;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v28);

    return;
  }

LABEL_22:
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD00000000000001BLL, 0x8000000197625C40);
  sub_197616BC0();
  MEMORY[0x19A8E2A50](39, 0xE100000000000000);
  sub_197616C20();
  __break(1u);
}

void sub_1975F6464(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1976170F0();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_19755C610();
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35440, &qword_197621B68);
      sub_197616C00();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    *(v20[7] + 8 * v12) = v10;
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v20[2] = v24;
    ++v4;
    a2 = 1;
  }

  sub_1975F56E4(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_19755C610();
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD00000000000001BLL, 0x8000000197625C40);
  sub_197616BC0();
  MEMORY[0x19A8E2A50](39, 0xE100000000000000);
  sub_197616C20();
  __break(1u);
}

uint64_t sub_1975F6744()
{
  sub_19755F9FC(v0, &v4, &qword_1EAF34BE8, &qword_19761BB78);
  if (!*(&v5 + 1))
  {
    return sub_1976171B0();
  }

  v2[0] = v4;
  v2[1] = v5;
  v3 = v6;
  sub_1976171B0();
  sub_1976169B0();
  return sub_197587DC0(v2);
}

_BYTE *storeEnumTagSinglePayload for DictionaryCoder(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DictionaryDecoder(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t static DictionaryEncoder.encode<A>(_:)()
{
  v13[4] = *MEMORY[0x1E69E9840];
  v0 = sub_19756EF78();
  v2 = v1;
  v3 = objc_opt_self();
  v4 = sub_197615990();
  v13[0] = 0;
  v5 = [v3 JSONObjectWithData:v4 options:0 error:v13];

  if (!v5)
  {
    v8 = v13[0];
    v9 = sub_197615830();

    swift_willThrow();
    goto LABEL_5;
  }

  v6 = v13[0];
  sub_197616910();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    v7 = sub_1976160B0();
    sub_197567790(v0, v2);
    goto LABEL_6;
  }

  sub_197567790(v0, v2);
  v7 = v12;
LABEL_6:
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

_BYTE *storeEnumTagSinglePayload for DictionaryEncoder(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1975F6C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  sub_1975674F0(a1, &v12);
  if (v13)
  {
    v5 = *(v4 + 80);
    result = swift_dynamicCast();
    if (result)
    {
      v7 = *(v4 + 96);
      v8 = static DictionaryCoder.encode<A>(_:)();
      sub_19755404C(0, &qword_1ED816B60, 0x1E696AB10);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
      v12 = v8;
      v9 = sub_197607E60(&v12, 1);
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_0Tm(&v12);
      if (v11 >> 60 != 15)
      {
        *(a2 + 24) = MEMORY[0x1E6969080];
        result = swift_unknownObjectRelease();
        *a2 = v9;
        *(a2 + 8) = v11;
        return result;
      }

      result = swift_unknownObjectRelease();
    }
  }

  else
  {
    result = sub_19755643C(&v12);
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_1975F6EBC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x19A8E4300);
  }

  return result;
}

double Duration.timeInterval.getter()
{
  v0 = _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  return v1 / 1.0e18 + v0;
}

uint64_t Duration.init(timeInterval:)(double a1)
{
  v1 = Double.seconds.getter(a1);
  sub_1975877EC(v1);
  sub_197617290();

  return sub_1976172B0();
}

uint64_t Equatable.isEqual(_:checkReverse:)(uint64_t a1, char a2, uint64_t a3)
{
  sub_197616860();
  OUTLINED_FUNCTION_14();
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27[-v10];
  OUTLINED_FUNCTION_14();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_41();
  sub_1975674F0(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
  if (!OUTLINED_FUNCTION_5_25())
  {
    v22 = OUTLINED_FUNCTION_8_23();
    v23(v22);
    if (a2)
    {
      sub_1975674F0(a1, v27);
      if (v28)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BD8, &qword_19761C8F0);
        if (OUTLINED_FUNCTION_10_20())
        {
          if (v30)
          {
            v24 = OUTLINED_FUNCTION_2_34();
            (*(v13 + 16))(v24, v3, a3);
            v25 = OUTLINED_FUNCTION_4_37();
            LOBYTE(v3) = Equatable.isEqual(_:checkReverse:)(v25);
            sub_19755C404(v29, &qword_1EAF34340, &unk_19761C8E0);
            __swift_destroy_boxed_opaque_existential_0Tm(v32);
            return v3 & 1;
          }
        }

        else
        {
          v31 = 0;
          OUTLINED_FUNCTION_6_19();
        }
      }

      else
      {
        sub_19755C404(v27, &qword_1EAF34340, &unk_19761C8E0);
        OUTLINED_FUNCTION_6_19();
        v31 = 0;
      }

      sub_19755C404(v29, &qword_1EAF34BE0, &qword_19761BB70);
    }

    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  __swift_storeEnumTagSinglePayload(v11, 0, 1, a3);
  v18 = OUTLINED_FUNCTION_3_33();
  v19(v18);
  OUTLINED_FUNCTION_9_20();
  sub_1976161A0();
  v20 = OUTLINED_FUNCTION_7_19();
  v21(v20);
  return v3 & 1;
}

Swift::Bool __swiftcall Equatable.exists(in:)(Swift::OpaquePointer_optional in)
{
  if (in.value._rawValue)
  {
    MEMORY[0x1EEE9AC00](in.value._rawValue);
    v6[2] = v2;
    v6[3] = v3;
    v6[4] = v1;
    LOBYTE(in.value._rawValue) = sub_1975F7378(sub_1975F753C, v6, v4);
  }

  return in.value._rawValue & 1;
}

BOOL sub_1975F7378(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5);
    if (v3)
    {
      break;
    }

    v5 += 32;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

BOOL sub_1975F73D8(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_197615A60() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_1975F74AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1975586C0(a1, v8);
  v6 = default argument 1 of Equatable.isEqual(_:checkReverse:)(a3, a4);
  LOBYTE(a4) = Equatable.isEqual(_:checkReverse:)(v8, v6 & 1, a3);
  sub_19755C404(v8, &qword_1EAF34340, &unk_19761C8E0);
  return a4 & 1;
}

uint64_t sub_1975F75E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, void))
{
  v4 = v3;
  v6 = a3(v3, *(a2 + 16), *(a2 + 24));
  (*(*(a2 - 8) + 8))(v4, a2);
  return v6;
}

uint64_t sub_1975F766C()
{
  v1 = v0;
  v2 = sub_197615D10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = *(v3 + 88);
  v8 = OUTLINED_FUNCTION_21();
  v10 = v9(v8);
  if (v10 == *MEMORY[0x1E697BB98] || v10 == *MEMORY[0x1E697BBA0] || v10 == *MEMORY[0x1E697BB90])
  {
    v11 = *(v3 + 96);
    v12 = OUTLINED_FUNCTION_21();
    v13(v12);
    sub_1975558C4(v6, v19);
    __swift_project_boxed_opaque_existential_1Tm(v19, v19[3]);
    swift_getDynamicType();
    sub_197617320();
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
    v15 = *(v3 + 8);
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  return OUTLINED_FUNCTION_21();
}

uint64_t sub_1975F7818(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a8;
  v56 = a1;
  v57 = a2;
  OUTLINED_FUNCTION_14();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  v58 = v17 - v16;
  v19 = *(v18 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_14();
  v60 = v20;
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v45 - v25;
  v27 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6_0();
  v54 = v29 - v28;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_14();
  v48 = v31;
  v49 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v35 = &v45 - v34;
  v36 = sub_197616740();
  if (!v36)
  {
    return sub_1976164B0();
  }

  v59 = v36;
  v63 = sub_197616B40();
  v50 = sub_197616B50();
  sub_197616AF0();
  result = sub_197616730();
  if ((v59 & 0x8000000000000000) == 0)
  {
    v45 = v12;
    v46 = a5;
    v38 = 0;
    v51 = (v60 + 16);
    v52 = v60 + 8;
    v53 = v8;
    while (!__OFADD__(v38, 1))
    {
      v60 = v38 + 1;
      v39 = sub_197616790();
      (*v51)(v26);
      v39(v62, 0);
      v40 = v61;
      v56(v26, v58);
      if (v40)
      {
        v43 = OUTLINED_FUNCTION_2_35();
        v44(v43);
        (*(v48 + 8))(v35, v49);

        return (*(v45 + 32))(v47, v58, v46);
      }

      v61 = 0;
      v41 = OUTLINED_FUNCTION_2_35();
      v42(v41);
      sub_197616B30();
      result = sub_197616750();
      ++v38;
      if (v60 == v59)
      {
        (*(v48 + 8))(v35, v49);
        return v63;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t FixedWidthInteger.init(bitComponents:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  v12 = *(*(*(v11 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1976170C0();
  sub_197616ED0();
  sub_197616530();
  swift_getWitnessTable();
  sub_1976163A0();
  (*(v4 + 8))(v10, a2);
}

uint64_t FixedWidthInteger.bitComponents.getter(uint64_t a1, uint64_t a2)
{
  result = sub_197616BD0();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    v13 = result;
    MEMORY[0x1EEE9AC00](result);
    v10 = a1;
    v11 = a2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35468, &qword_197621C60);
    v7 = sub_1975F81C4();
    v12 = sub_1975F7818(sub_1975F81A4, v9, v6, a1, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
    MEMORY[0x1EEE9AC00](v12);
    v9[0] = a1;
    v9[1] = a2;
    v10 = v2;
    sub_197616530();
    swift_getWitnessTable();
    return sub_197616AC0();
  }

  return result;
}

uint64_t sub_1975F7FD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[0] = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(*(v9 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = *a1;
  swift_getAssociatedConformanceWitness();
  sub_1976170C0();
  sub_197616ED0();
  v15[3] = v13;
  sub_1975C98C8();
  sub_1976168D0();
  return (*(v5 + 8))(v8, a2);
}

unint64_t sub_1975F81C4()
{
  result = qword_1EAF33EC0;
  if (!qword_1EAF33EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35468, &qword_197621C60);
    sub_1975F8250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33EC0);
  }

  return result;
}

unint64_t sub_1975F8250()
{
  result = qword_1EAF33F28;
  if (!qword_1EAF33F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF33F28);
  }

  return result;
}

BOOL sub_1975F82A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  v6 = *(v5[3] + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27[0] = *(a3 - 8);
  v10 = *(v27[0] + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v27 - v14;
  sub_1976168C0();
  if (sub_197616900())
  {
    v16 = sub_1976168F0() < 64;
LABEL_7:
    if (!v16)
    {
      goto LABEL_11;
    }

    v22 = sub_1976168E0();
    (*(v27[0] + 8))(v15, a3);
    goto LABEL_10;
  }

  v17 = sub_197616900();
  v18 = sub_1976168F0();
  v16 = v18 < 64;
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v18 > 64)
  {
LABEL_11:
    v27[3] = 0;
    sub_1975C98C8();
    sub_1976168B0();
    v24 = *(v5[2] + 8);
    v23 = sub_1976161A0();
    v25 = *(v27[0] + 8);
    v25(v13, a3);
    v25(v15, a3);
    return (v23 & 1) == 0;
  }

  swift_getAssociatedConformanceWitness();
  sub_1976170C0();
  sub_197616ED0();
  v19 = *(v5[4] + 8);
  v20 = sub_197616190();
  v21 = *(v27[0] + 8);
  v21(v13, a3);
  if ((v20 & 1) == 0)
  {
    v21(v15, a3);
    v23 = 0;
    return (v23 & 1) == 0;
  }

  v22 = sub_1976168E0();
  v21(v15, a3);
LABEL_10:
  v23 = v22 == 0;
  return (v23 & 1) == 0;
}

double FixedWidthInteger.cgFloat.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8, v2, a1);
  v12 = *(a2 + 8);
  return sub_1975F86DC(v10, a1);
}

double sub_1975F86DC(char *a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2);
  if (sub_1976168F0() <= 64)
  {
    v10 = sub_197616900();
    v11 = sub_1976168E0();
    v12 = *(v4 + 8);
    v12(a1, a2);
    v12(v7, a2);
    if (v10)
    {
      return v11;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    sub_1975F8894();
    sub_1975F88E8();
    sub_197616090();
    v8 = *(v4 + 8);
    v8(a1, a2);
    v8(v7, a2);
    return *&v13[1];
  }
}

unint64_t sub_1975F8894()
{
  result = qword_1EAF35470;
  if (!qword_1EAF35470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35470);
  }

  return result;
}

unint64_t sub_1975F88E8()
{
  result = qword_1EAF35478;
  if (!qword_1EAF35478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35478);
  }

  return result;
}

uint64_t sub_1975F893C()
{
  v0 = sub_197615530();
  OUTLINED_FUNCTION_1_43(v0);
  sub_197615520();
  sub_197615500();
}

uint64_t KeyPathAccessible.set<A>(_:_:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_34(a1);
  OUTLINED_FUNCTION_1_44(v3 + *MEMORY[0x1E69E6F98]);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_0_42(v7, v12);
  v9(v8);
  swift_setAtReferenceWritableKeyPath();
  OUTLINED_FUNCTION_2_36();
  return (*(v10 + 16))(v2, v1);
}

uint64_t KeyPathAccessible.with<A>(_:_:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_34(a1);
  OUTLINED_FUNCTION_1_44(v3 + *MEMORY[0x1E69E6CE8]);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_0_42(v7, v12);
  v9(v8);
  swift_setAtWritableKeyPath();
  OUTLINED_FUNCTION_2_36();
  return (*(v10 + 32))(v2, v1);
}

uint64_t sub_1975F8BD0()
{
  v0 = sub_197553EE0(0xD000000000000038, 0x8000000197625E10, &qword_1ED816F08, 0x1E695DEC8);
  if (v0 && (v1 = sub_197553BF8(v0), result = , v1))
  {
    qword_1EAF3E320 = v1;
  }

  else
  {
    qword_1EAF3E320 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1975F8C7C()
{
  v0 = sub_197553EE0(0xD000000000000030, 0x8000000197625DD0, &qword_1ED816F08, 0x1E695DEC8);
  if (v0 && (v1 = sub_197553BF8(v0), result = , v1))
  {
    qword_1EAF3E328 = v1;
  }

  else
  {
    qword_1EAF3E328 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1975F8D44()
{
  v0 = sub_1975F8DA4();
  if (v0[2])
  {
    v2 = v0[4];
    v1 = v0[5];
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  qword_1ED81D190 = v2;
  qword_1ED81D198 = v1;
  return result;
}

uint64_t sub_1975F8DA4()
{
  v0 = objc_opt_self();
  sub_1975F8E64();
  v1 = sub_197616450();

  sub_197615A70();
  v2 = sub_197616450();

  v3 = [v0 preferredLocalizationsFromArray:v1 forPreferences:v2];

  v4 = sub_197616460();
  return v4;
}

uint64_t sub_1975F8E64()
{
  v0 = objc_opt_self();
  result = sub_1975F8FC0(v0);
  if (result)
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = result + 32;
      v4 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1975586C0(v3, v15);
        sub_19756A94C(v15, &v12);
        if (swift_dynamicCast())
        {
          v5 = v14;
          if (v14)
          {
            v6 = v13;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = *(v4 + 16);
              sub_1975BB398();
              v4 = v10;
            }

            v7 = *(v4 + 16);
            if (v7 >= *(v4 + 24) >> 1)
            {
              sub_1975BB398();
              v4 = v11;
            }

            *(v4 + 16) = v7 + 1;
            v8 = v4 + 16 * v7;
            *(v8 + 32) = v6;
            *(v8 + 40) = v5;
          }
        }

        v3 += 32;
        --v2;
      }

      while (v2);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1975F8FC0(void *a1)
{
  v1 = [a1 systemLanguages];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_197616460();

  return v3;
}

unint64_t sub_1975F901C(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      if (byte_1ED8172A4 == 1 && byte_1ED8172A2 == 1)
      {
        goto LABEL_30;
      }

      result = 0x1000000000000014;
      break;
    case 2:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      if (byte_1ED8172A4 == 1 && byte_1ED8172A2 == 1)
      {
        result = 0x100000000000001BLL;
      }

      else
      {
        result = 0x1000000000000014;
      }

      break;
    case 3:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      if (byte_1ED8172A4 != 1 || byte_1ED8172A2 != 1)
      {
        goto LABEL_44;
      }

      result = 0x1000000000000017;
      break;
    case 4:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      if (byte_1ED8172A4 == 1 && byte_1ED8172A2 == 1)
      {
        goto LABEL_30;
      }

LABEL_44:
      result = 0x1000000000000012;
      break;
    case 5:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      result = 0xE22074694B706954;
      if (byte_1ED8172A4 == 1)
      {
        v2 = byte_1ED8172A2;
        v3 = 0x1000000000000013;
        goto LABEL_35;
      }

      break;
    case 6:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      if (byte_1ED8172A4 == 1 && byte_1ED8172A2 == 1)
      {
        result = 0x1000000000000018;
      }

      else
      {
        result = 0x1000000000000013;
      }

      break;
    case 7:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      result = 0xE22074694B706954;
      if (byte_1ED8172A4 == 1)
      {
        v2 = byte_1ED8172A2;
        v3 = 0x1000000000000014;
LABEL_35:
        if (v2 == 1)
        {
          result = v3;
        }
      }

      break;
    default:
      if (qword_1ED817298 != -1)
      {
        swift_once();
      }

      if (byte_1ED8172A4 == 1 && byte_1ED8172A2 == 1)
      {
LABEL_30:
        result = 0x1000000000000019;
      }

      else
      {
        result = 0x1000000000000014;
      }

      break;
  }

  return result;
}

uint64_t sub_1975F9430()
{
  v0 = type metadata accessor for logger();
  __swift_allocate_value_buffer(v0, qword_1ED816518);
  *OUTLINED_FUNCTION_13_18() = 0;
  if (qword_1ED817298 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  OUTLINED_FUNCTION_15_13();
  if (v1)
  {
    OUTLINED_FUNCTION_17_14();
  }

  return OUTLINED_FUNCTION_7_20();
}

uint64_t (*static logger.analytics.read())()
{
  if (qword_1ED816510 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger();
  OUTLINED_FUNCTION_37_2(v0, qword_1ED816518);
  return nullsub_1;
}

uint64_t (*static logger.datastore.read())()
{
  if (qword_1ED8172A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger();
  OUTLINED_FUNCTION_37_2(v0, qword_1ED8172B0);
  return nullsub_1;
}

uint64_t sub_1975F95D0()
{
  v0 = type metadata accessor for logger();
  __swift_allocate_value_buffer(v0, qword_1EAF35488);
  *OUTLINED_FUNCTION_13_18() = 2;
  if (qword_1ED817298 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  OUTLINED_FUNCTION_16_14();
  if (v1)
  {
    OUTLINED_FUNCTION_17_14();
  }

  return OUTLINED_FUNCTION_7_20();
}

uint64_t (*static logger.exception.read())()
{
  if (qword_1EAF34288 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger();
  OUTLINED_FUNCTION_37_2(v0, qword_1EAF35488);
  return nullsub_1;
}

uint64_t sub_1975F96F0()
{
  v0 = type metadata accessor for logger();
  __swift_allocate_value_buffer(v0, qword_1EAF354A0);
  v1 = __swift_project_value_buffer(v0, qword_1EAF354A0);
  *v1 = 3;
  if (qword_1ED817298 != -1)
  {
    swift_once();
  }

  v2 = &v1[*(v0 + 20)];
  return sub_197615BA0();
}

uint64_t (*static logger.runtime.read())()
{
  if (qword_1EAF34290 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger();
  OUTLINED_FUNCTION_37_2(v0, qword_1EAF354A0);
  return nullsub_1;
}

uint64_t (*static logger.warning.read())()
{
  if (qword_1ED815ED8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger();
  OUTLINED_FUNCTION_37_2(v0, qword_1ED815EE0);
  return nullsub_1;
}

uint64_t sub_1975F98D0()
{
  v0 = type metadata accessor for logger();
  __swift_allocate_value_buffer(v0, qword_1ED815728);
  v1 = __swift_project_value_buffer(v0, qword_1ED815728);
  *v1 = 6;
  if (qword_1ED817298 != -1)
  {
    swift_once();
  }

  v2 = &v1[*(v0 + 20)];
  return sub_197615BA0();
}

uint64_t (*static logger.tipKitServices.read())()
{
  if (qword_1ED815720 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger();
  OUTLINED_FUNCTION_37_2(v0, qword_1ED815728);
  return nullsub_1;
}

uint64_t (*static logger.tipKitCore.read())()
{
  if (qword_1ED816C98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger();
  OUTLINED_FUNCTION_37_2(v0, qword_1ED816CA0);
  return nullsub_1;
}

uint64_t log(_:_:_:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1976167B0();
  OUTLINED_FUNCTION_36_3();
  if (v4)
  {
    a3();
    OUTLINED_FUNCTION_2_37();
LABEL_10:
    sub_1975FA290();
    goto LABEL_11;
  }

  sub_1976167C0();
  OUTLINED_FUNCTION_36_3();
  if (v4)
  {
    a3();
    OUTLINED_FUNCTION_0_43();
    OUTLINED_FUNCTION_6_20();
    goto LABEL_10;
  }

  sub_1976167D0();
  OUTLINED_FUNCTION_36_3();
  if (v5)
  {
    a3();
    OUTLINED_FUNCTION_3_36();
    goto LABEL_10;
  }

  sub_1976167E0();
  OUTLINED_FUNCTION_36_3();
  if (v7)
  {
    v8 = (a3)();
    sub_1975FA4E4(v8, v9);
  }

  else
  {
    v10 = _s10TipKitCore3logyyAA6loggerV_So03os_D7_type_tanSSyXKs7CVarArg_pdtFfA0__0();
    (a3)(v10);
    sub_197558864();
  }

LABEL_11:
}

uint64_t static logger.info(_:_:)()
{
  OUTLINED_FUNCTION_20_9();
  v0();
  OUTLINED_FUNCTION_2_37();
  sub_1975FA290();
}

uint64_t static logger.debug(_:_:)()
{
  OUTLINED_FUNCTION_20_9();
  v0();
  OUTLINED_FUNCTION_0_43();
  OUTLINED_FUNCTION_6_20();
  sub_1975FA290();
}

uint64_t static logger.error(_:_:)()
{
  OUTLINED_FUNCTION_20_9();
  v0();
  OUTLINED_FUNCTION_3_36();
  OUTLINED_FUNCTION_21_11();
}

uint64_t log(_:_:_:_:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1976167B0();
  OUTLINED_FUNCTION_35_4();
  if (v4)
  {
    a3();
    OUTLINED_FUNCTION_11_19();

    OUTLINED_FUNCTION_10_21();
    sub_1976161F0();
    OUTLINED_FUNCTION_18_8();
    OUTLINED_FUNCTION_2_37();
    OUTLINED_FUNCTION_14_10();
LABEL_11:
    sub_1975FA290();
    goto LABEL_12;
  }

  sub_1976167C0();
  OUTLINED_FUNCTION_35_4();
  if (v4)
  {
    a3();
    OUTLINED_FUNCTION_11_19();

    OUTLINED_FUNCTION_10_21();
    sub_1976161F0();
    OUTLINED_FUNCTION_18_8();
    OUTLINED_FUNCTION_0_43();
    OUTLINED_FUNCTION_6_20();
LABEL_10:
    OUTLINED_FUNCTION_14_10();
    goto LABEL_11;
  }

  sub_1976167D0();
  OUTLINED_FUNCTION_35_4();
  if (v5)
  {
    a3();
    OUTLINED_FUNCTION_11_19();

    OUTLINED_FUNCTION_10_21();
    sub_1976161F0();
    OUTLINED_FUNCTION_18_8();
    OUTLINED_FUNCTION_3_36();
    goto LABEL_10;
  }

  sub_1976167E0();
  OUTLINED_FUNCTION_35_4();
  if (v7)
  {
    a3();
    OUTLINED_FUNCTION_11_19();

    OUTLINED_FUNCTION_10_21();
    sub_1976161F0();
    OUTLINED_FUNCTION_18_8();
    v8 = OUTLINED_FUNCTION_14_10();
    sub_1975FA4E4(v8, v9);
  }

  else
  {
    v10 = _s10TipKitCore3logyyAA6loggerV_So03os_D7_type_tanSSyXKs7CVarArg_pdtFfA0__0();
    (a3)(v10);
    OUTLINED_FUNCTION_11_19();

    OUTLINED_FUNCTION_10_21();
    sub_1976161F0();
    OUTLINED_FUNCTION_18_8();
    OUTLINED_FUNCTION_14_10();
    sub_197558864();
  }

LABEL_12:
}

uint64_t static logger.notice(_:_:)()
{
  OUTLINED_FUNCTION_20_9();
  v0();
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_28_8();
  sub_1975FA290();
}

uint64_t static logger.notice(_:_:_:)()
{
  OUTLINED_FUNCTION_8_24();
  v0();
  OUTLINED_FUNCTION_11_19();

  OUTLINED_FUNCTION_10_21();
  sub_1976161F0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_28_8();
  OUTLINED_FUNCTION_9_21();
  sub_1975FA290();
}

uint64_t static logger.debug(_:_:_:)()
{
  OUTLINED_FUNCTION_8_24();
  v0();
  OUTLINED_FUNCTION_11_19();

  OUTLINED_FUNCTION_10_21();
  sub_1976161F0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_0_43();
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_9_21();
  sub_1975FA290();
}

uint64_t static logger.trace(_:_:)()
{
  OUTLINED_FUNCTION_20_9();
  v0();
  OUTLINED_FUNCTION_0_43();
  OUTLINED_FUNCTION_21_11();
}

uint64_t static logger.trace(_:_:_:)()
{
  OUTLINED_FUNCTION_8_24();
  v0();
  OUTLINED_FUNCTION_11_19();

  OUTLINED_FUNCTION_10_21();
  sub_1976161F0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_0_43();
  OUTLINED_FUNCTION_9_21();
  sub_1975FA290();
}

uint64_t static logger.info(_:_:_:)()
{
  OUTLINED_FUNCTION_8_24();
  v0();
  OUTLINED_FUNCTION_11_19();

  OUTLINED_FUNCTION_10_21();
  sub_1976161F0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_2_37();
  OUTLINED_FUNCTION_9_21();
  sub_1975FA290();
}

uint64_t static logger.warning(_:_:)()
{
  OUTLINED_FUNCTION_20_9();
  v0();
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_26_8();
  sub_1975FAAF0();
}

uint64_t static logger.warning(_:_:_:)()
{
  OUTLINED_FUNCTION_8_24();
  v0();
  OUTLINED_FUNCTION_11_19();

  OUTLINED_FUNCTION_10_21();
  sub_1976161F0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_26_8();
  OUTLINED_FUNCTION_9_21();
  sub_1975FAAF0();
}

void sub_1975FA290()
{
  OUTLINED_FUNCTION_19_9();
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  OUTLINED_FUNCTION_22_11();
  if (byte_1ED817548 == 1)
  {
    if (qword_1ED817298 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    OUTLINED_FUNCTION_15_13();
    if (v4)
    {
      OUTLINED_FUNCTION_17_14();
      if (v5 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E30, &unk_19761E650);
        v6 = swift_allocObject();
        OUTLINED_FUNCTION_33_5(v6, xmmword_197618C10);

        OUTLINED_FUNCTION_30_9();
        v7 = sub_1975F901C(*v1);
        MEMORY[0x19A8E2A50](v7);

        MEMORY[0x19A8E2A50](v3, v2);
        OUTLINED_FUNCTION_32_6();
        v6[3].n128_u64[1] = MEMORY[0x1E69E6158];
        v6[2].n128_u64[0] = v13;
        v6[2].n128_u64[1] = v15;
        OUTLINED_FUNCTION_25_8();
      }
    }
  }

  v8 = *(type metadata accessor for logger() + 20);

  v9 = sub_197615B90();
  v10 = v0();

  if (os_log_type_enabled(v9, v10))
  {
    swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_34_5();
    *(v1 + 4) = OUTLINED_FUNCTION_24_10(4.8149e-34, v14);
    OUTLINED_FUNCTION_23_9(&dword_197552000, v11, v12, "%s");
    OUTLINED_FUNCTION_29_9();
    OUTLINED_FUNCTION_31_7();
  }
}

uint64_t static logger.error(_:_:_:)()
{
  OUTLINED_FUNCTION_8_24();
  v0();
  OUTLINED_FUNCTION_11_19();

  OUTLINED_FUNCTION_10_21();
  sub_1976161F0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_3_36();
  OUTLINED_FUNCTION_9_21();
  sub_1975FA290();
}

void sub_1975FA4E4(uint64_t a1, unint64_t a2)
{
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED817548 == 1)
  {
    if (qword_1ED817298 != -1)
    {
      swift_once();
    }

    if (byte_1ED8172A4 == 1 && byte_1ED8172A2 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E30, &unk_19761E650);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_197618C10;
      sub_197616A20();

      v12[0] = 91;
      v12[1] = 0xE100000000000000;
      v6 = sub_1975F901C(*v2);
      MEMORY[0x19A8E2A50](v6);

      MEMORY[0x19A8E2A50](0x75616620A280E220, 0xAC000000205D746CLL);
      MEMORY[0x19A8E2A50](a1, a2);
      *(v5 + 56) = MEMORY[0x1E69E6158];
      *(v5 + 32) = 91;
      *(v5 + 40) = 0xE100000000000000;
      sub_197617180();
    }
  }

  if (*v2 == 3)
  {
    if (qword_1ED817298 != -1)
    {
      swift_once();
    }

    if (byte_1ED8172A2 == 1)
    {
      sub_1975FA888(a1, a2);
    }
  }

  v7 = *(type metadata accessor for logger() + 20);

  v8 = sub_197615B90();
  v9 = sub_1976167E0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_197558E6C(a1, a2, v12);
    _os_log_impl(&dword_197552000, v8, v9, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x19A8E4300](v11, -1, -1);
    MEMORY[0x19A8E4300](v10, -1, -1);
  }
}

uint64_t sub_1975FA7EC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  a2();

  v6 = sub_1976161F0();
  v8 = v7;

  a5(v6, v8);
}

uint64_t sub_1975FA888(uint64_t result, uint64_t a2)
{
  v3 = result;
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED817298 != -1)
  {
    result = swift_once();
  }

  if (byte_1ED8172A2 == 1)
  {
    memset(&v10, 0, sizeof(v10));
    result = dlopen(0, 2);
    if (result)
    {
      v4 = result;
      if (qword_1EAF34298 != -1)
      {
        swift_once();
      }

      v5 = sub_197616230();
      v6 = dlsym(v4, (v5 + 32));

      if (v6)
      {
        result = dladdr(v6, &v10);
        if (v10.dli_fbase)
        {
          sub_1976167E0();
          sub_1975FB3B8();
          v7 = sub_197616840();
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF354D0, &qword_197621DA8);
          v8 = swift_allocObject();
          *(v8 + 16) = xmmword_197618C10;
          *(v8 + 56) = MEMORY[0x1E69E6158];
          *(v8 + 64) = sub_1975FB3FC();
          *(v8 + 32) = v3;
          *(v8 + 40) = a2;

          sub_197615B80();
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static logger.critical(_:_:)()
{
  OUTLINED_FUNCTION_20_9();
  v0();
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_27_7();
  sub_1975FAAF0();
}

void sub_1975FAAF0()
{
  OUTLINED_FUNCTION_19_9();
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  OUTLINED_FUNCTION_22_11();
  if (byte_1ED817548 == 1)
  {
    if (qword_1ED817298 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    OUTLINED_FUNCTION_15_13();
    if (v4)
    {
      OUTLINED_FUNCTION_17_14();
      if ((v5 & 1) != 0 || *v1 == 4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E30, &unk_19761E650);
        v6 = swift_allocObject();
        OUTLINED_FUNCTION_33_5(v6, xmmword_197618C10);

        OUTLINED_FUNCTION_30_9();
        v7 = sub_1975F901C(*v1);
        MEMORY[0x19A8E2A50](v7);

        MEMORY[0x19A8E2A50](v3, v2);
        OUTLINED_FUNCTION_32_6();
        v6[3].n128_u64[1] = MEMORY[0x1E69E6158];
        v6[2].n128_u64[0] = v13;
        v6[2].n128_u64[1] = v15;
        OUTLINED_FUNCTION_25_8();
      }
    }
  }

  v8 = *(type metadata accessor for logger() + 20);

  v9 = sub_197615B90();
  v10 = v0();

  if (os_log_type_enabled(v9, v10))
  {
    swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_34_5();
    *(v1 + 4) = OUTLINED_FUNCTION_24_10(4.8149e-34, v14);
    OUTLINED_FUNCTION_23_9(&dword_197552000, v11, v12, "%s");
    OUTLINED_FUNCTION_29_9();
    OUTLINED_FUNCTION_31_7();
  }
}

uint64_t static logger.critical(_:_:_:)()
{
  OUTLINED_FUNCTION_8_24();
  v0();
  OUTLINED_FUNCTION_11_19();

  OUTLINED_FUNCTION_10_21();
  sub_1976161F0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_9_21();
  sub_1975FAAF0();
}

uint64_t destroy for logger(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = sub_197615BB0();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

_BYTE *initializeWithTake for logger(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_197615BB0();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *assignWithTake for logger(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_197615BB0();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for logger.Category(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1975FAFB8()
{
  result = qword_1EAF354B8;
  if (!qword_1EAF354B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF354B8);
  }

  return result;
}

uint64_t sub_1975FB00C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1975FB058(a1, a2);
  sub_1975FB170(&unk_1F0BB00E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1975FB058(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1976162D0())
  {
    result = sub_1975FB254(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_197616A10();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_197616AA0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1975FB170(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1975FB2C4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1975FB254(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF354C0, &qword_197621DA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1975FB2C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF354C0, &qword_197621DA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_1975FB3B8()
{
  result = qword_1EAF354C8;
  if (!qword_1EAF354C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF354C8);
  }

  return result;
}

unint64_t sub_1975FB3FC()
{
  result = qword_1ED816160;
  if (!qword_1ED816160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816160);
  }

  return result;
}

uint64_t MemoryAddress.description.getter()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E6530];
  v3 = sub_197616E80();
  MEMORY[0x19A8E2A50](v3);

  MEMORY[0x19A8E2A50](112, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF354D0, &qword_197621DA8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_197618C10;
  v5 = MEMORY[0x1E69E65A8];
  *(v4 + 56) = v2;
  *(v4 + 64) = v5;
  *(v4 + 32) = v1;
  v6 = sub_1976161F0();

  return v6;
}

uint64_t MemoryAddress.init<A>(of:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_unknownObjectRelease();
  *a2 = a1;
  return result;
}

uint64_t sub_1975FB584()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1975FB5C0(uint64_t a1, int a2)
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

uint64_t sub_1975FB5E0(uint64_t result, int a2, int a3)
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

void sub_1975FB620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  v10 = OUTLINED_FUNCTION_5_2(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v26 - v13;
  sub_1975FCC78(a3, v26 - v13, &qword_1EAF35140, &qword_197621F80);
  v15 = sub_1976165B0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_19755C7C8(v14, &qword_1EAF35140, &qword_197621F80);
  }

  else
  {
    sub_1976165A0();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_197616560();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_197616230() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v24 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v26[1] = 7;
      v26[2] = v24;
      v26[3] = v22;
      swift_task_create();

      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_75();
}

uint64_t MiniTipsDatastore.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_21();
}

uint64_t MiniTipsDatastore.bundleID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_21();
}

uint64_t MiniTipsDatastore.author.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_21();
}

unint64_t MiniTipsDatastore.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_197616A20();

  v9 = 0xD000000000000016;
  v10 = 0x8000000197626110;
  MEMORY[0x19A8E2A50](*(v0 + 16), *(v0 + 24));
  MEMORY[0x19A8E2A50](0xD000000000000012, 0x8000000197626130);
  sub_19755BE50(v6);
  OUTLINED_FUNCTION_22();
  v7 = sub_197616200();
  MEMORY[0x19A8E2A50](v7);

  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return v9;
}

uint64_t MiniTipsDatastore.__allocating_init(id:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 48);
  v8 = *(v4 + 52);
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_12_8();
  MiniTipsDatastore.init(id:bundleID:)(v10, v11, a3, a4);
  return v9;
}

uint64_t sub_1975FBB14()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 2312);
  v2 = *(v0 + 2304);

  return MEMORY[0x1EEE6DEB0](v0 + 656);
}

uint64_t sub_1975FBB98()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 2296);
  v2 = *(v0 + 2288);

  return MEMORY[0x1EEE6DEB0](v0 + 16);
}

uint64_t sub_1975FBC1C()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[285];
  v2 = v0[284];
  v3 = v0[283];

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_1975FBC8C()
{
  OUTLINED_FUNCTION_1();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v1 + 16) == 0;
  v6 = *(v3 + 8);

  return v6(v5);
}

uint64_t sub_1975FBD94()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  *v5 = v2 & 1;
  OUTLINED_FUNCTION_3();

  return v8();
}

void *MiniTipsDatastore.deinit()
{
  v1 = OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_datastoreTask;
  if (*(v0 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_datastoreTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_datastoreTask);

    sub_197616660();

    v3 = *(v0 + v1);
  }

  *(v0 + v1) = 0;

  v4 = v0[3];

  v5 = v0[5];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  sub_19755C7C8(v0 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelConfiguration, &qword_1EAF35568, &qword_197621E58);
  v9 = *(v0 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);

  v10 = *(v0 + v1);

  return v0;
}

uint64_t MiniTipsDatastore.__deallocating_deinit()
{
  MiniTipsDatastore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1975FBFCC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = MiniTipsDatastore.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_1975FC01C(char a1)
{
  v3 = *(v1 + 40);
  sub_197617190();
  sub_1975A4D54(a1);
  sub_197616260();

  v4 = sub_1976171F0();

  return sub_1975FC110(a1, v4);
}

unint64_t sub_1975FC0A4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_197617190();
  sub_1975F6744();
  v4 = sub_1976171F0();

  return sub_1975FC7BC(a1, v4);
}

unint64_t sub_1975FC110(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000044;
      v8 = 0x495F656C646E7562;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x697463656C6C6F63;
          v9 = 0x44495F6E6FLL;
          goto LABEL_20;
        case 2:
          v8 = 0xD000000000000012;
          v7 = 0x8000000197623150;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x747865746E6F63;
          break;
        case 4:
          v8 = 0xD000000000000012;
          v7 = 0x8000000197623170;
          break;
        case 5:
          v8 = 0xD000000000000015;
          v7 = 0x8000000197623190;
          break;
        case 6:
          v8 = 0x5F7373696D736964;
          goto LABEL_29;
        case 7:
          v7 = 0xED0000746E756F63;
          v8 = 0x5F79616C70736964;
          break;
        case 8:
          v8 = 0x5F79616C70736964;
LABEL_29:
          v7 = 0xEC00000065707974;
          break;
        case 9:
          v7 = 0xE500000000000000;
          v8 = 0x726F727265;
          break;
        case 0xA:
          v7 = 0xEA0000000000746ELL;
          goto LABEL_27;
        case 0xB:
          v8 = 0xD000000000000012;
          v7 = 0x80000001976231E0;
          break;
        case 0xC:
          v7 = 0xED000044495F746ELL;
LABEL_27:
          v8 = 0x656D697265707865;
          break;
        case 0xD:
          v8 = 0xD000000000000010;
          v7 = 0x8000000197623210;
          break;
        case 0xE:
          v8 = 0xD000000000000015;
          v7 = 0x8000000197623230;
          break;
        case 0xF:
          v7 = 0xE800000000000000;
          v8 = 0x6C72755F6B6E696CLL;
          break;
        case 0x10:
          v8 = 0xD000000000000010;
          v7 = 0x8000000197623250;
          break;
        case 0x11:
          v8 = 0xD000000000000019;
          v7 = 0x8000000197623270;
          break;
        case 0x12:
          v7 = 0xE600000000000000;
          v8 = 0x6E6F73616572;
          break;
        case 0x13:
          v7 = 0xE700000000000000;
          v8 = 0x44495F656C7572;
          break;
        case 0x14:
          v8 = 0x5F65636976726573;
          v9 = 0x726F727265;
          goto LABEL_20;
        case 0x15:
          v8 = 0xD000000000000017;
          v7 = 0x80000001976232B0;
          break;
        case 0x16:
          v8 = 0xD000000000000011;
          v7 = 0x80000001976232D0;
          break;
        case 0x17:
          v7 = 0xE600000000000000;
          v8 = 0x44495F706974;
          break;
        case 0x18:
          v8 = 0x6569765F73706974;
          v10 = 6579575;
          goto LABEL_34;
        case 0x19:
          v7 = 0xE800000000000000;
          v8 = 0x67616C665F353675;
          break;
        case 0x1A:
          v8 = 0x6C665F6567617375;
          v10 = 7563105;
LABEL_34:
          v7 = v10 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0x1B:
          v8 = 0x65765F73656C7572;
          v9 = 0x6E6F697372;
LABEL_20:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        default:
          break;
      }

      v11 = 0x495F656C646E7562;
      v12 = 0xE900000000000044;
      switch(a1)
      {
        case 1:
          v11 = 0x697463656C6C6F63;
          v13 = 0x44495F6E6FLL;
          goto LABEL_52;
        case 2:
          v11 = 0xD000000000000012;
          v12 = 0x8000000197623150;
          break;
        case 3:
          v12 = 0xE700000000000000;
          v11 = 0x747865746E6F63;
          break;
        case 4:
          v11 = 0xD000000000000012;
          v12 = 0x8000000197623170;
          break;
        case 5:
          v11 = 0xD000000000000015;
          v12 = 0x8000000197623190;
          break;
        case 6:
          v11 = 0x5F7373696D736964;
          goto LABEL_61;
        case 7:
          v12 = 0xED0000746E756F63;
          v11 = 0x5F79616C70736964;
          break;
        case 8:
          v11 = 0x5F79616C70736964;
LABEL_61:
          v12 = 0xEC00000065707974;
          break;
        case 9:
          v12 = 0xE500000000000000;
          v11 = 0x726F727265;
          break;
        case 10:
          v12 = 0xEA0000000000746ELL;
          goto LABEL_59;
        case 11:
          v11 = 0xD000000000000012;
          v12 = 0x80000001976231E0;
          break;
        case 12:
          v12 = 0xED000044495F746ELL;
LABEL_59:
          v11 = 0x656D697265707865;
          break;
        case 13:
          v11 = 0xD000000000000010;
          v12 = 0x8000000197623210;
          break;
        case 14:
          v11 = 0xD000000000000015;
          v12 = 0x8000000197623230;
          break;
        case 15:
          v12 = 0xE800000000000000;
          v11 = 0x6C72755F6B6E696CLL;
          break;
        case 16:
          v11 = 0xD000000000000010;
          v12 = 0x8000000197623250;
          break;
        case 17:
          v11 = 0xD000000000000019;
          v12 = 0x8000000197623270;
          break;
        case 18:
          v12 = 0xE600000000000000;
          v11 = 0x6E6F73616572;
          break;
        case 19:
          v12 = 0xE700000000000000;
          v11 = 0x44495F656C7572;
          break;
        case 20:
          v11 = 0x5F65636976726573;
          v13 = 0x726F727265;
          goto LABEL_52;
        case 21:
          v11 = 0xD000000000000017;
          v12 = 0x80000001976232B0;
          break;
        case 22:
          v11 = 0xD000000000000011;
          v12 = 0x80000001976232D0;
          break;
        case 23:
          v12 = 0xE600000000000000;
          v11 = 0x44495F706974;
          break;
        case 24:
          v11 = 0x6569765F73706974;
          v14 = 6579575;
          goto LABEL_66;
        case 25:
          v12 = 0xE800000000000000;
          v11 = 0x67616C665F353675;
          break;
        case 26:
          v11 = 0x6C665F6567617375;
          v14 = 7563105;
LABEL_66:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 27:
          v11 = 0x65765F73656C7572;
          v13 = 0x6E6F697372;
LABEL_52:
          v12 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        default:
          break;
      }

      if (v8 == v11 && v7 == v12)
      {
        break;
      }

      v16 = sub_197616EF0();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1975FC7BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1975FCC78(*(v2 + 48) + 40 * v4, v17, &qword_1EAF34BE8, &qword_19761BB78);
      sub_1975FCC78(v17, v12, &qword_1EAF34BE8, &qword_19761BB78);
      sub_1975FCC78(a1, &v14, &qword_1EAF34BE8, &qword_19761BB78);
      if (v13)
      {
        sub_1975FCC78(v12, v11, &qword_1EAF34BE8, &qword_19761BB78);
        if (*(&v15 + 1))
        {
          v9[0] = v14;
          v9[1] = v15;
          v10 = v16;
          v7 = MEMORY[0x19A8E3130](v11, v9);
          sub_197587DC0(v9);
          sub_19755C7C8(v17, &qword_1EAF34BE8, &qword_19761BB78);
          sub_197587DC0(v11);
          sub_19755C7C8(v12, &qword_1EAF34BE8, &qword_19761BB78);
          if (v7)
          {
            return v4;
          }

          goto LABEL_11;
        }

        sub_19755C7C8(v17, &qword_1EAF34BE8, &qword_19761BB78);
        sub_197587DC0(v11);
      }

      else
      {
        sub_19755C7C8(v17, &qword_1EAF34BE8, &qword_19761BB78);
        if (!*(&v15 + 1))
        {
          sub_19755C7C8(v12, &qword_1EAF34BE8, &qword_19761BB78);
          return v4;
        }
      }

      sub_19755C7C8(v12, &qword_1EAF35578, &qword_197621F70);
LABEL_11:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1975FC998(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1975FC9E0(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1975FCA28()
{
  result = qword_1ED815E18;
  if (!qword_1ED815E18)
  {
    sub_197615970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815E18);
  }

  return result;
}

uint64_t sub_1975FCAB4()
{
  OUTLINED_FUNCTION_9_22();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_30(v3, v4);
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_1976170F0();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35590, &qword_197622018);
  OUTLINED_FUNCTION_8_25();
  if (sub_197616BF0())
  {
    OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_15_14();
    if (!v11)
    {
      goto LABEL_14;
    }

    v8 = v10;
  }

  if (v9)
  {
    v12 = *(*v0 + 56);
    v13 = *(v12 + 8 * v8);
    *(v12 + 8 * v8) = v2;
    OUTLINED_FUNCTION_75();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_16_15();
    sub_1975FC998(v16, v17, v18, v2, v19);
    OUTLINED_FUNCTION_75();
  }
}

void sub_1975FCBA0()
{
  OUTLINED_FUNCTION_9_22();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_30(v3, v4);
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_1976170F0();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35280, &qword_1976204D8);
  OUTLINED_FUNCTION_8_25();
  if (sub_197616BF0())
  {
    OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_15_14();
    if (!v11)
    {
      goto LABEL_12;
    }

    v8 = v10;
  }

  if (v9)
  {
    *(*(*v0 + 56) + v8) = v2;
    OUTLINED_FUNCTION_75();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_16_15();
    sub_1975FC9E0(v12, v13, v14, v2, v15);
    OUTLINED_FUNCTION_75();
  }
}

uint64_t sub_1975FCC78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_28_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_21();
  v9(v8);
  return v4;
}

uint64_t sub_1975FCCC4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_19_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

void sub_1975FCD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77(v16, v17, v18, v19, v20, v21, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  v24 = OUTLINED_FUNCTION_0(v23);
  v74[3] = v25;
  v74[4] = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = (v74 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  v32 = OUTLINED_FUNCTION_5_2(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_29_10();
  if ((v11 & 1) != 0 && (v10 & 1) != 0 && (v15 & 1) == 0 && !*(a10 + 16))
  {
    type metadata accessor for CoreTipRecord();
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
    OUTLINED_FUNCTION_13(v67);
    (*(v68 + 16))(v37, v12, v67);
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v67);
    OUTLINED_FUNCTION_8_26();
    sub_19755FF88(v72, 255, v73);
    OUTLINED_FUNCTION_93();
    sub_19755C7C8(v37, &qword_1EAF346D8, &unk_197619120);
    goto LABEL_16;
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
  OUTLINED_FUNCTION_13(v40);
  v42 = *(v41 + 16);
  v43 = OUTLINED_FUNCTION_43();
  v44(v43);
  v45 = OUTLINED_FUNCTION_34_6();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v40);
  v48 = OUTLINED_FUNCTION_75_0();
  sub_19755F9A0(v48, v49, v50, v51);
  v52 = type metadata accessor for CoreTipRecord();
  OUTLINED_FUNCTION_8_26();
  v55 = sub_19755FF88(v53, 255, v54);
  v74[0] = v14;
  v56 = v55;
  OUTLINED_FUNCTION_132();
  v57 = sub_197615D90();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  v76 = v11 & 1;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_89();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  v75 = v74[2];
  v76 = v10 & 1;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  LOBYTE(v75) = v15 & 1;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  v61 = MEMORY[0x1E69E7CC0];
  v75 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  v75 = v61;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  v75 = a10;

  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_121();
  v64 = OUTLINED_FUNCTION_119();
  v65(v64);
  sub_19755C7C8(v13, &qword_1EAF346D8, &unk_197619120);
  if (v10)
  {
LABEL_16:
    OUTLINED_FUNCTION_135();
    OUTLINED_FUNCTION_19_0();
    return;
  }

  sub_197567E4C(v61);
  OUTLINED_FUNCTION_72();
  while (1)
  {
    if (v74 == v30)
    {

      goto LABEL_16;
    }

    if (v52)
    {
      v66 = OUTLINED_FUNCTION_129();
      MEMORY[0x19A8E31E0](v66);
    }

    else
    {
      if (v30 >= *(v56 + 16))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_127();
    }

    if (__OFADD__(v30, 1))
    {
      break;
    }

    sub_1975FF608(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);

    v30 = (v30 + 1);
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1975FD26C()
{
  OUTLINED_FUNCTION_20();
  v69 = v3;
  v70 = v1;
  v5 = v4;
  v72 = v6;
  v8 = v7;
  v10 = v9;
  v66[0] = v11;
  v66[1] = v12;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  v16 = OUTLINED_FUNCTION_0(v15);
  v67 = v17;
  v68 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v24 = OUTLINED_FUNCTION_5_2(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_52_0();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = v66 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = v66 - v31;
  if ((v14 & 1) != 0 && (v10 & 1) != 0 && (v8 & 1) == 0 && !v72[2])
  {
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
    OUTLINED_FUNCTION_13(v59);
    (*(v60 + 16))(v2, v5, v59);
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v59);
    OUTLINED_FUNCTION_9_23();
    sub_19755FF88(v64, 255, v65);
    sub_197615CB0();
    sub_19755C7C8(v2, &qword_1EAF34B08, &qword_19761B888);
    goto LABEL_16;
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  OUTLINED_FUNCTION_13(v33);
  (*(v34 + 16))(v32, v5, v33);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);
  sub_19755F9A0(v32, v30, &qword_1EAF34B08, &qword_19761B888);
  OUTLINED_FUNCTION_9_23();
  v40 = sub_19755FF88(v38, 255, v39);
  v41 = sub_197615D90();
  v42 = v66;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_1_1();
  *(v43 - 16) = v0;
  *(v43 - 8) = v40;
  swift_getKeyPath();
  v71 = v66[0];
  OUTLINED_FUNCTION_141(v14 & 1);

  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_1_1();
  *(v45 - 16) = v0;
  *(v45 - 8) = v40;
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_141(v10 & 1);

  OUTLINED_FUNCTION_89();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_1_1();
  *(v47 - 16) = v0;
  *(v47 - 8) = v40;
  swift_getKeyPath();
  OUTLINED_FUNCTION_128();
  LOBYTE(v71) = v8 & 1;
  OUTLINED_FUNCTION_66();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_89();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_1_1();
  *(v49 - 16) = v0;
  *(v49 - 8) = v40;
  swift_getKeyPath();
  OUTLINED_FUNCTION_128();
  v50 = MEMORY[0x1E69E7CC0];
  v71 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_66();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_89();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_1_1();
  *(v52 - 16) = v0;
  *(v52 - 8) = v40;
  swift_getKeyPath();
  OUTLINED_FUNCTION_128();
  v71 = v50;
  OUTLINED_FUNCTION_66();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_89();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_1_1();
  *(v54 - 16) = v0;
  *(v54 - 8) = v40;
  swift_getKeyPath();
  OUTLINED_FUNCTION_128();
  v71 = v72;

  OUTLINED_FUNCTION_66();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_75_0();
  v55 = v70;
  v56 = sub_197615C80();
  (*(v67 + 8))(v22, v68);
  sub_19755C7C8(v32, &qword_1EAF34B08, &qword_19761B888);
  if (v55)
  {
LABEL_16:
    OUTLINED_FUNCTION_135();
    OUTLINED_FUNCTION_19_0();
    return;
  }

  sub_197567E4C(v56);
  OUTLINED_FUNCTION_72();
  while (1)
  {
    if (v50 == v42)
    {

      goto LABEL_16;
    }

    if (v32)
    {
      v58 = OUTLINED_FUNCTION_129();
      MEMORY[0x19A8E31E0](v58);
    }

    else
    {
      if (v42 >= *(v8 + 16))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_127();
    }

    if (__OFADD__(v42, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_60_0();
    sub_1975FF608(&qword_1ED8171B0, v57);

    v42 = (v42 + 1);
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1975FD7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77(v16, v17, v18, v19, v20, v21, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  v24 = OUTLINED_FUNCTION_0(v23);
  v75[3] = v25;
  v75[4] = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = (v75 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v32 = OUTLINED_FUNCTION_5_2(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_29_10();
  if ((v11 & 1) != 0 && (v10 & 1) != 0 && (v15 & 1) == 0 && !*(a10 + 16))
  {
    type metadata accessor for CoreDonationRecord();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
    OUTLINED_FUNCTION_13(v68);
    (*(v69 + 16))(v37, v12, v68);
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v68);
    OUTLINED_FUNCTION_9_23();
    sub_19755FF88(v73, 255, v74);
    OUTLINED_FUNCTION_93();
    sub_19755C7C8(v37, &qword_1EAF34B08, &qword_19761B888);
    goto LABEL_16;
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  OUTLINED_FUNCTION_13(v40);
  v42 = *(v41 + 16);
  v43 = OUTLINED_FUNCTION_43();
  v44(v43);
  v45 = OUTLINED_FUNCTION_34_6();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v40);
  v48 = OUTLINED_FUNCTION_75_0();
  sub_19755F9A0(v48, v49, v50, v51);
  v52 = type metadata accessor for CoreDonationRecord();
  OUTLINED_FUNCTION_9_23();
  v55 = sub_19755FF88(v53, 255, v54);
  v75[0] = v14;
  v56 = v55;
  OUTLINED_FUNCTION_132();
  v57 = sub_197615D90();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_101();
  v77 = v11 & 1;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_89();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  v76 = v75[2];
  v77 = v10 & 1;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  LOBYTE(v76) = v15 & 1;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  v61 = MEMORY[0x1E69E7CC0];
  v76 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  v76 = v61;
  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_9_6();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_26();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_7();
  v76 = a10;

  OUTLINED_FUNCTION_57_0();
  swift_setAtWritableKeyPath();

  OUTLINED_FUNCTION_121();
  v64 = OUTLINED_FUNCTION_119();
  v65(v64);
  sub_19755C7C8(v13, &qword_1EAF34B08, &qword_19761B888);
  if (v10)
  {
LABEL_16:
    OUTLINED_FUNCTION_135();
    OUTLINED_FUNCTION_19_0();
    return;
  }

  sub_197567E4C(v61);
  OUTLINED_FUNCTION_72();
  while (1)
  {
    if (v75 == v30)
    {

      goto LABEL_16;
    }

    if (v52)
    {
      v67 = OUTLINED_FUNCTION_129();
      MEMORY[0x19A8E31E0](v67);
    }

    else
    {
      if (v30 >= *(v56 + 16))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_127();
    }

    if (__OFADD__(v30, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_60_0();
    sub_1975FF608(&qword_1ED8171B0, v66);

    v30 = (v30 + 1);
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1975FDCC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  v53 = a7;
  v46 = a2;
  v47 = a4;
  v50 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA8, &qword_19761BAC8);
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA0, &qword_19761BAC0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v45 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v45 - v25;
  if ((a3 & 1) != 0 && (a5 & 1) != 0 && (a6 & 1) == 0 && !*(v53 + 16))
  {
    type metadata accessor for CoreParameterRecord();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
    (*(*(v44 - 8) + 16))(v21, a8, v44);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v44);
    sub_19755FF88(&qword_1ED817148, 255, type metadata accessor for CoreParameterRecord);
    sub_197615CB0();
    return sub_19755C7C8(v21, &qword_1EAF34BA0, &qword_19761BAC0);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
    (*(*(v27 - 8) + 16))(v26, a8, v27);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
    sub_19755F9A0(v26, v24, &qword_1EAF34BA0, &qword_19761BAC0);
    v28 = type metadata accessor for CoreParameterRecord();
    v29 = sub_19755FF88(&qword_1ED817148, 255, type metadata accessor for CoreParameterRecord);
    v45 = v8;
    v30 = v29;
    v31 = sub_197615D90();
    MEMORY[0x1EEE9AC00](v31);
    *(&v45 - 2) = v28;
    *(&v45 - 1) = v30;
    swift_getKeyPath();
    v51 = v46;
    v52 = a3 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v32);
    *(&v45 - 2) = v28;
    *(&v45 - 1) = v30;
    swift_getKeyPath();
    v51 = v47;
    v52 = a5 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v33);
    *(&v45 - 2) = v28;
    *(&v45 - 1) = v30;
    swift_getKeyPath();
    LOBYTE(v51) = a6 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v34);
    *(&v45 - 2) = v28;
    *(&v45 - 1) = v30;
    swift_getKeyPath();
    v35 = MEMORY[0x1E69E7CC0];
    v51 = MEMORY[0x1E69E7CC0];
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v36);
    *(&v45 - 2) = v28;
    *(&v45 - 1) = v30;
    swift_getKeyPath();
    v51 = v35;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v37);
    *(&v45 - 2) = v28;
    *(&v45 - 1) = v30;
    swift_getKeyPath();
    v51 = v53;

    swift_setAtWritableKeyPath();

    v38 = v45;
    v39 = sub_197615C80();
    (*(v48 + 8))(v16, v49);
    result = sub_19755C7C8(v26, &qword_1EAF34BA0, &qword_19761BAC0);
    if (!v38)
    {
      result = sub_197567E4C(v39);
      v41 = result;
      for (i = 0; ; ++i)
      {
        if (v41 == i)
        {
        }

        if ((v39 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x19A8E31E0](i, v39);
        }

        else
        {
          if (i >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v43 = *(v39 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_1975FF608(&qword_1ED817148, type metadata accessor for CoreParameterRecord);
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1975FE368(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  v53 = a7;
  v46 = a2;
  v47 = a4;
  v50 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v45 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v45 - v25;
  if ((a3 & 1) != 0 && (a5 & 1) != 0 && (a6 & 1) == 0 && !*(v53 + 16))
  {
    type metadata accessor for CoreEventRecord();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
    (*(*(v44 - 8) + 16))(v21, a8, v44);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v44);
    sub_19755FF88(&qword_1ED817218, 255, type metadata accessor for CoreEventRecord);
    sub_197615CB0();
    return sub_19755C7C8(v21, &qword_1EAF34AC0, &qword_19761B6F0);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
    (*(*(v27 - 8) + 16))(v26, a8, v27);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
    sub_19755F9A0(v26, v24, &qword_1EAF34AC0, &qword_19761B6F0);
    v28 = type metadata accessor for CoreEventRecord();
    v29 = sub_19755FF88(&qword_1ED817218, 255, type metadata accessor for CoreEventRecord);
    v45 = v8;
    v30 = v29;
    v31 = sub_197615D90();
    MEMORY[0x1EEE9AC00](v31);
    *(&v45 - 2) = v28;
    *(&v45 - 1) = v30;
    swift_getKeyPath();
    v51 = v46;
    v52 = a3 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v32);
    *(&v45 - 2) = v28;
    *(&v45 - 1) = v30;
    swift_getKeyPath();
    v51 = v47;
    v52 = a5 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v33);
    *(&v45 - 2) = v28;
    *(&v45 - 1) = v30;
    swift_getKeyPath();
    LOBYTE(v51) = a6 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v34);
    *(&v45 - 2) = v28;
    *(&v45 - 1) = v30;
    swift_getKeyPath();
    v35 = MEMORY[0x1E69E7CC0];
    v51 = MEMORY[0x1E69E7CC0];
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v36);
    *(&v45 - 2) = v28;
    *(&v45 - 1) = v30;
    swift_getKeyPath();
    v51 = v35;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v37);
    *(&v45 - 2) = v28;
    *(&v45 - 1) = v30;
    swift_getKeyPath();
    v51 = v53;

    swift_setAtWritableKeyPath();

    v38 = v45;
    v39 = sub_197615C80();
    (*(v48 + 8))(v16, v49);
    result = sub_19755C7C8(v26, &qword_1EAF34AC0, &qword_19761B6F0);
    if (!v38)
    {
      result = sub_197567E4C(v39);
      v41 = result;
      for (i = 0; ; ++i)
      {
        if (v41 == i)
        {
        }

        if ((v39 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x19A8E31E0](i, v39);
        }

        else
        {
          if (i >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v43 = *(v39 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_1975FF608(&qword_1ED817218, type metadata accessor for CoreEventRecord);
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }
  }

  return result;
}

void sub_1975FEA0C()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_35_5(v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  OUTLINED_FUNCTION_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_8();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  v14 = OUTLINED_FUNCTION_5_2(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_52_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_68_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_85();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_45_0(v0);
  if (v28)
  {
    sub_19755C7C8(v0, &qword_1EAF34AB8, &qword_197622080);
  }

  else
  {
    v29 = OUTLINED_FUNCTION_53_0();
    v30(v29);
    OUTLINED_FUNCTION_58_0();
    sub_19755FF88(v31, 255, v32);
    if (OUTLINED_FUNCTION_67())
    {
      v41 = *(v25 + 8);
      v42 = OUTLINED_FUNCTION_43();
      v43(v42);
    }

    else
    {
      OUTLINED_FUNCTION_106(0, v34, v35, v36, v37, v38, v39, v40, v67);
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_55();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
      v45 = OUTLINED_FUNCTION_38_3();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
      v49 = OUTLINED_FUNCTION_29_5();
      sub_19755F9A0(v49, v50, v51, v52);
      v53 = OUTLINED_FUNCTION_74_0();
      MEMORY[0x1EEE9AC00](v53);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v54);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_21_12(v68);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v55);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_20_11(v69);
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v56);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();

      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v57);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_125();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      OUTLINED_FUNCTION_9_6();
      MEMORY[0x1EEE9AC00](v58);
      OUTLINED_FUNCTION_2_38();
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_4_7();
      swift_setAtWritableKeyPath();

      v59 = OUTLINED_FUNCTION_73_0();
      if (v1)
      {

        v60 = OUTLINED_FUNCTION_15_15();
        v61(v60);
      }

      else
      {
        v64 = v59;
        v65 = OUTLINED_FUNCTION_15_15();
        v66(v65);
        sub_197595B38(v64);
        OUTLINED_FUNCTION_122();
      }

      sub_19755C7C8(&qword_1EAF34AB8, &qword_1EAF34AC0, &qword_19761B6F0);
      v62 = OUTLINED_FUNCTION_36_4();
      v63(v62);
      OUTLINED_FUNCTION_91();
    }
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_9();
}

uint64_t sub_1975FEEE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v45 = a6;
  v46 = a7;
  v43 = a4;
  v44 = a5;
  v42 = a3;
  v49 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v41 - v21;
  v23 = sub_197615F50();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19755F9A0(a1, v22, &qword_1EAF34AB8, &qword_197622080);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_19755C7C8(v22, &qword_1EAF34AB8, &qword_197622080);
    return 0;
  }

  (*(v24 + 32))(v27, v22, v23);
  v28 = type metadata accessor for CoreDonationRecord();
  v29 = sub_19755FF88(&qword_1ED8171B0, 255, type metadata accessor for CoreDonationRecord);
  v30 = sub_197615C00();
  if (!v30)
  {
    v41 = &v41;
    MEMORY[0x1EEE9AC00](0);
    *(&v41 - 2) = v27;
    v52 = v28;
    sub_197615AE0();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v32);
    sub_19755F9A0(v18, v16, &qword_1EAF34B08, &qword_19761B888);
    v33 = sub_197615D90();
    MEMORY[0x1EEE9AC00](v33);
    *(&v41 - 2) = v28;
    *(&v41 - 1) = v29;
    swift_getKeyPath();
    v50 = 1;
    v51 = 0;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v34);
    *(&v41 - 2) = v28;
    *(&v41 - 1) = v29;
    swift_getKeyPath();
    v50 = v42;
    v51 = v43 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v35);
    *(&v41 - 2) = v28;
    *(&v41 - 1) = v29;
    swift_getKeyPath();
    LOBYTE(v50) = v44 & 1;
    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v36);
    *(&v41 - 2) = v28;
    *(&v41 - 1) = v29;
    swift_getKeyPath();
    v50 = v45;

    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v37);
    *(&v41 - 2) = v28;
    *(&v41 - 1) = v29;
    swift_getKeyPath();
    v50 = v46;

    swift_setAtWritableKeyPath();

    MEMORY[0x1EEE9AC00](v38);
    *(&v41 - 2) = v28;
    *(&v41 - 1) = v29;
    swift_getKeyPath();
    v50 = MEMORY[0x1E69E7CC0];
    swift_setAtWritableKeyPath();

    v40 = sub_197615C80();
    (*(v47 + 8))(v11, v48);
    v31 = sub_1976087D4(v40);

    sub_19755C7C8(v18, &qword_1EAF34B08, &qword_19761B888);
    if (v31)
    {
      (*(v24 + 8))(v27, v23);
      return v31;
    }

    (*(v24 + 8))(v27, v23);
    return 0;
  }

  v31 = v30;
  (*(v24 + 8))(v27, v23);
  return v31;
}

uint64_t sub_1975FF608(unint64_t *a1, void (*a2)(uint64_t))
{
  v3 = *v2;
  sub_19755FF88(a1, 255, a2);
  if (sub_197615DD0())
  {
    if ((sub_197615E90() & 1) == 0)
    {
      sub_197615CC0();
    }
  }

  else
  {
    sub_19759228C();
    swift_allocError();
    *v5 = 0xD00000000000002DLL;
    v5[1] = 0x80000001976263F0;
    return swift_willThrow();
  }
}

uint64_t sub_1975FF700()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_110();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    v9 = *(v3 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1975FF818, v9, 0);
  }

  else
  {
    OUTLINED_FUNCTION_3();

    return v10();
  }
}

uint64_t sub_1975FF818()
{
  if (qword_1ED816C98 != -1)
  {
    OUTLINED_FUNCTION_3_2();
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for logger();
  __swift_project_value_buffer(v2, qword_1ED816CA0);
  sub_197616A20();
  OUTLINED_FUNCTION_13_12();
  MEMORY[0x19A8E2A50](0xD000000000000040);
  swift_getErrorValue();
  v3 = v0[2];
  v4 = v0[3];
  sub_197616EB0();
  sub_197558864();

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_1975FF930()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_110();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[24] = v0;

  if (v0)
  {
    v9 = v3[15];
    v10 = sub_1975FFAD8;
  }

  else
  {
    v11 = v3[22];
    v12 = v3[15];

    v10 = sub_1975FFA40;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1975FFA40()
{
  v1 = *(v0 + 144);
  sub_197615C90();
  v2 = *(v0 + 152);
  OUTLINED_FUNCTION_140();
  v3 = *(MEMORY[0x1E69E85B0] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_104(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_13_20();
  v7 = OUTLINED_FUNCTION_82();

  return MEMORY[0x1EEE6D8D0](v7);
}

uint64_t sub_1975FFAD8()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[22];

  v2 = v0[24];
  v3 = v0[18];
  sub_197615C90();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_1975FFB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v31 = a3;
  v8 = sub_197615D10();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v30 - v18);
  *v19 = a1;
  v19[1] = a2;
  v20 = *(v9 + 16);
  v20(&v30 + *(v13 + 56) - v18, v31, v8);
  v21 = (v19 + *(v13 + 72));
  v31 = a4;
  *v21 = a4;
  v21[1] = v33;
  sub_19755F9A0(v19, v17, &qword_1EAF34A58, &qword_19761B680);
  v22 = *(v17 + 1);

  v23 = *(v13 + 56);
  v24 = *&v17[*(v13 + 72) + 8];

  v25 = v32;
  v20(v32, &v17[v23], v8);
  LODWORD(v13) = (*(v9 + 88))(v25, v8);
  LODWORD(a1) = *MEMORY[0x1E697BB90];
  v26 = *(v9 + 8);
  v26(v25, v8);
  v26(&v17[v23], v8);
  if (v13 == a1)
  {
    if (v31 == 0x6473706974 && v33 == 0xE500000000000000)
    {
      v28 = 0;
    }

    else
    {
      v28 = sub_197616EF0() ^ 1;
    }
  }

  else
  {
    v28 = 1;
  }

  sub_19755C7C8(v19, &qword_1EAF34A58, &qword_19761B680);
  return v28 & 1;
}

uint64_t sub_1975FFE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35608, &qword_1976224D0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1975FFF34, 0, 0);
}

uint64_t sub_1975FFF34()
{
  v72 = v0;
  v1 = v0[6];
  v71[0] = 0;
  v2 = sub_197597500(v1);
  v59 = *(v1 + 16);
  if (v2 != v59 || (v3 & 0x100) == 0)
  {
    v63 = v0[11];
    v64 = v0[14];
    v62 = v0[10];
    v5 = v0[8];
    v66 = v0[9];
    v7 = v0[6];
    v6 = v0[7];
    swift_beginAccess();
    v8 = 0;
    v9 = 0;
    v57 = v7 + 32;
    while (1)
    {
      v60 = v9;
      if (v8)
      {
        v10 = 0;
        v11 = 0;
        v58 = v8 + 32;
        v65 = v8;
        while (1)
        {
          v61 = v11;
          v12 = 0;
          v67 = v10;
          if (v10)
          {
            while (1)
            {
              v13 = *(v10 + 16);
              if (v12 == v13)
              {
                v40 = v0[12];
                __swift_storeEnumTagSinglePayload(v40, 1, 1, v0[8]);
                sub_19755C7C8(v40, &qword_1EAF35608, &qword_1976224D0);
                goto LABEL_20;
              }

              if (v12 >= v13)
              {
                break;
              }

              v14 = v0[13];
              v15 = v0[8];
              sub_19755F9A0(v10 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v12, v0[12], &qword_1EAF34A58, &qword_19761B680);
              OUTLINED_FUNCTION_3_10();
              __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
              v19 = OUTLINED_FUNCTION_21();
              sub_197603CF8(v19, v20);
              if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
              {
                goto LABEL_24;
              }

              v21 = v0[14];
              v22 = v0[8];
              sub_197603CF8(v0[13], v21);
              if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
              {
                goto LABEL_28;
              }

              v70 = v12;
              v23 = v0[14];
              v24 = v0[11];
              v25 = v0[7];
              v26 = *(v64 + 8);
              v27 = *(v5 + 48);
              v28 = *(v5 + 64);
              v29 = v5;
              v31 = *&v23[v28];
              v30 = *&v23[v28 + 8];
              v32 = &v24[v28];
              *v24 = *v23;
              *(v63 + 8) = v26;
              v33 = sub_197615D10();
              v34 = *(v33 - 8);
              v69 = v33;
              (*(v34 + 32))(&v24[v27], &v23[v27]);
              *v32 = v31;
              *(v32 + 1) = v30;
              Strong = swift_weakLoadStrong();
              v36 = v0[11];
              if (Strong)
              {
                v37 = v0[10];
                v68 = v0[5];
                sub_19755F9A0(v36, v37, &qword_1EAF34A58, &qword_19761B680);
                v5 = v29;
                v38 = *(v29 + 48);
                sub_1976004AC(*v37, *(v62 + 8), v37 + v38, *(v37 + *(v29 + 64)), *(v37 + *(v29 + 64) + 8), v68, v71, v39, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
                sub_19755C7C8(v0[11], &qword_1EAF34A58, &qword_19761B680);

                (*(v34 + 8))(v37 + v38, v69);
              }

              else
              {
                sub_19755C7C8(v36, &qword_1EAF34A58, &qword_19761B680);
                v5 = v29;
              }

              v10 = v67;
              v12 = v70 + 1;
              v8 = v65;
              if (!v67)
              {
                goto LABEL_20;
              }
            }

            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_20:
          v41 = *(v8 + 16);
          if (v61 == v41)
          {
            break;
          }

          if (v61 >= v41)
          {
            goto LABEL_37;
          }

          v11 = v61 + 1;
          v42 = *(v58 + 8 * v61);

          v10 = v42;
        }

        __swift_storeEnumTagSinglePayload(v0[13], 1, 1, v0[8]);
LABEL_24:
        sub_19755C7C8(v0[13], &qword_1EAF35608, &qword_1976224D0);
      }

      if (v60 == v59)
      {
        break;
      }

      v9 = v60 + 1;
      v43 = *(v57 + 8 * v60);

      OUTLINED_FUNCTION_132();
      sub_197603CB8(v44);
      v8 = v43;
    }

    __swift_storeEnumTagSinglePayload(v0[14], 1, 1, v0[8]);
LABEL_28:
    OUTLINED_FUNCTION_132();
    sub_197603CB8(v45);
    if (v71[0])
    {
      if (qword_1ED816C98 != -1)
      {
LABEL_38:
        OUTLINED_FUNCTION_3_2();
        swift_once();
      }

      v46 = v0[5];
      v47 = type metadata accessor for logger();
      __swift_project_value_buffer(v47, qword_1ED816CA0);
      OUTLINED_FUNCTION_13_12();
      sub_197558864();
      if (sub_197615C20())
      {
        v48 = v0[5];
        sub_197615C70();
      }
    }
  }

  v50 = v0[13];
  v49 = v0[14];
  v52 = v0[11];
  v51 = v0[12];
  v53 = v0[10];

  OUTLINED_FUNCTION_3();

  return v54();
}

void sub_1976004AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20();
  a19 = v22;
  a20 = v23;
  v141 = v24;
  a10 = v25;
  v144 = v26;
  v146 = v27;
  v29 = v28;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35598, &qword_197622088);
  v30 = OUTLINED_FUNCTION_0(v132);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_10_22();
  v127 = v33;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_68_0();
  v131 = v35;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355B0, &qword_1976222D0);
  v36 = OUTLINED_FUNCTION_0(v123);
  v139 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_10_22();
  v119 = v40;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_68_0();
  v122 = v42;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355C8, &unk_197622380);
  v43 = OUTLINED_FUNCTION_0(v126);
  v121 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_10_22();
  v120 = v47;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_68_0();
  v125 = v49;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355D8, &qword_1976223B0);
  v50 = OUTLINED_FUNCTION_0(v130);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_10_22();
  v124 = v53;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_68_0();
  v129 = v55;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355F0, &qword_197622448);
  v56 = OUTLINED_FUNCTION_0(v136);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_10_22();
  v128 = v59;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_68_0();
  v135 = v61;
  OUTLINED_FUNCTION_117();
  v62 = sub_197615D10();
  v63 = OUTLINED_FUNCTION_0(v62);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_10_22();
  v134 = v68;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_115();
  v137 = v70;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_68_0();
  v140 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  v74 = OUTLINED_FUNCTION_13(v73);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5();
  v79 = v77 - v78;
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_52_0();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_29_10();
  *v20 = v141;
  *(v20 + 1) = v29;
  v138 = *(v82 + 48);
  v83 = v144;
  v145 = v62;
  v142 = *(v65 + 16);
  v142(&v20[v138], v83, v62);
  v84 = &v20[*(v73 + 64)];
  v85 = a10;
  *v84 = v146;
  *(v84 + 1) = v85;
  v143 = v20;
  sub_19755F9A0(v20, v21, &qword_1EAF34A58, &qword_19761B680);
  v87 = *v21;
  v86 = v21[1];
  v88 = *(v73 + 48);
  v89 = *(v21 + *(v73 + 64) + 8);

  if (v86)
  {
    v133 = v65;
    v90 = *(v65 + 8);
    v90(v21 + v88, v145);
    if (qword_1ED8172A8 != -1)
    {
      OUTLINED_FUNCTION_4_39();
    }

    v91 = type metadata accessor for logger();
    __swift_project_value_buffer(v91, qword_1ED8172B0);
    OUTLINED_FUNCTION_54();
    sub_197616A20();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_13_12();
    MEMORY[0x19A8E2A50](0xD00000000000001ALL);
    v92 = v143;
    sub_19755F9A0(v143, v79, &qword_1EAF34A58, &qword_19761B680);
    v93 = *(v79 + 8);

    v94 = *(v73 + 48);
    v95 = *(v79 + *(v73 + 64) + 8);

    v96 = sub_1975F766C();
    v98 = v97;
    v90((v79 + v94), v145);
    MEMORY[0x19A8E2A50](v96, v98);

    MEMORY[0x19A8E2A50](0x3A726F6874756128, 0xE900000000000020);
    MEMORY[0x19A8E2A50](v87, v86);

    MEMORY[0x19A8E2A50](0x7365636F7270202CLL, 0xEB00000000203A73);
    MEMORY[0x19A8E2A50](v146, a10);
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    sub_197558864();

    v99 = v145;
    v100 = v133;
    v101 = v140;
    v102 = v90;
  }

  else
  {
    v102 = *(v65 + 8);
    v99 = v145;
    v102(v21 + v88, v145);
    v100 = v65;
    v101 = v140;
    v92 = v143;
  }

  v142(v101, v92 + v138, v99);
  v103 = *(v100 + 88);
  v104 = OUTLINED_FUNCTION_75_0();
  v106 = v105(v104);
  if (v106 == *MEMORY[0x1E697BB98])
  {
    v107 = v137;
    v142(v137, v101, v99);
    v108 = *(v100 + 96);
    v109 = OUTLINED_FUNCTION_42_3();
    v110(v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35600, &qword_1976224B8);
    v112 = v135;
    v111 = v136;
    OUTLINED_FUNCTION_109();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_102(&a17);
      v113 = v128;
      v114(v128);
      OUTLINED_FUNCTION_63_0();
      sub_197600EFC();
    }

    else
    {
      v112 = v129;
      OUTLINED_FUNCTION_109();
      v111 = v130;
      if (!swift_dynamicCast())
      {
        OUTLINED_FUNCTION_129();
        if (swift_dynamicCast())
        {
          (*(v121 + 32))(v120, v125, v126);
          OUTLINED_FUNCTION_63_0();
          sub_19760203C();
          (*(v121 + 8))(v120, v126);
        }

        else
        {
          OUTLINED_FUNCTION_109();
          if (swift_dynamicCast())
          {
            (*(v139 + 32))(v119, v122, v123);
            OUTLINED_FUNCTION_63_0();
            sub_1976028DC();
            v115 = v143;
            (*(v139 + 8))(v119, v123);
            goto LABEL_18;
          }
        }

LABEL_16:
        v115 = v143;
LABEL_18:
        __swift_destroy_boxed_opaque_existential_0Tm(v107);
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_102(&a9);
      v113 = v124;
      v117(v124);
      OUTLINED_FUNCTION_63_0();
      sub_1976017B0();
    }

    (*(v112 + 8))(v113, v111);
    goto LABEL_16;
  }

  v115 = v92;
  if (v106 == *MEMORY[0x1E697BBA0])
  {
    v142(v134, v101, v99);
    (*(v100 + 96))(v134, v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355F8, &qword_1976224B0);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_102(&a13);
      v116(v127);
      sub_1976031C4();
      (*(v131 + 8))(v127, v132);
    }

    v107 = v134;
    goto LABEL_18;
  }

LABEL_19:
  v118 = OUTLINED_FUNCTION_75_0();
  (v102)(v118);
  sub_19755C7C8(v115, &qword_1EAF34A58, &qword_19761B680);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_19_0();
}