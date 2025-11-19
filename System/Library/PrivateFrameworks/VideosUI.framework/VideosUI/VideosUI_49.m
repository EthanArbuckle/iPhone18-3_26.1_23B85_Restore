_BYTE *storeEnumTagSinglePayload for SportsLockupCellLayout.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          result = OUTLINED_FUNCTION_15(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_48_22()
{
  STACK[0x400] = STACK[0x430];

  return sub_1E3C3DE00(v0);
}

id OUTLINED_FUNCTION_53_20()
{
  v3 = *(v1 + 2336);

  return [v0 v3];
}

uint64_t sub_1E3A0A6B8(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*a1 + 1640);

  v8(v9);
  v10 = *(*a1 + 464);

  v12 = v10(v11);

  if (v12)
  {
    v30 = v7;
    v31 = v4;
    v32 = v2;
    v33 = a1;
    result = sub_1E32AE9B0(v12);
    v14 = result;
    for (i = 0; ; ++i)
    {
      if (v14 == i)
      {

        v2 = v32;
        a1 = v33;
        v7 = v30;
        v4 = v31;
        goto LABEL_16;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E6911E60](i, v12);
        v16 = result;
      }

      else
      {
        if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v16 = *(v12 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v38 = *(v16 + 98);
      v37 = 39;
      sub_1E3742F1C();
      sub_1E4206254();
      sub_1E4206254();
      if (v36[0] == v34 && v36[1] == v35)
      {

LABEL_20:
        a1 = v33;

        return a1;
      }

      v18 = sub_1E42079A4();

      if (v18)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_16:
    v19 = sub_1E3E37FFC();
    (*(v4 + 16))(v7, v19, v2);

    v20 = sub_1E41FFC94();
    v21 = sub_1E42067F4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v2;
      v23 = swift_slowAlloc();
      v24 = v4;
      v25 = swift_slowAlloc();
      v36[0] = v25;
      *v23 = 136315138;
      v34 = a1;
      type metadata accessor for LibLockupViewModel();
      sub_1E3A0AD54();
      v26 = sub_1E4207944();
      v28 = sub_1E3270FC8(v26, v27, v36);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1E323F000, v20, v21, "Unable to find image view model for lockup view model: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E69143B0](v25, -1, -1);
      MEMORY[0x1E69143B0](v23, -1, -1);

      (*(v24 + 8))(v7, v22);
    }

    else
    {

      (*(v4 + 8))(v7, v2);
    }

    return a1;
  }

  return result;
}

double sub_1E3A0AAAC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
  }

  else
  {
    sub_1E42037C4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B38);
  sub_1E3A0ADAC();
  sub_1E4201F44();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1E3A0AB70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  sub_1E4200E64();
  if (v10 <= 0.0 || (sub_1E4200E64(), v11 <= 0.0))
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  else
  {
    sub_1E4200E64();
    v13 = v12;
    v15 = v14;
    v16 = j__OUTLINED_FUNCTION_51_1();
    v17 = j__OUTLINED_FUNCTION_18();
    sub_1E3EB9C0C(v13, v15, 0, 0, 0, 1, v16 & 1, 1, v20, 0, 1, 0, 1, 0, 0, v17 & 1, 1);
    v18 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(a1, v20, 0, v18 & 1, 0, 0, v9);
    sub_1E375C31C(v20);
    (*(v6 + 32))(a2, v9, v4);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }
}

unint64_t sub_1E3A0AD54()
{
  result = qword_1ECF30B30;
  if (!qword_1ECF30B30)
  {
    type metadata accessor for LibLockupViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30B30);
  }

  return result;
}

unint64_t sub_1E3A0ADAC()
{
  result = qword_1ECF30B40;
  if (!qword_1ECF30B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30B40);
  }

  return result;
}

unint64_t sub_1E3A0AE44()
{
  result = qword_1ECF30B48;
  if (!qword_1ECF30B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30B50);
    sub_1E3A0ADAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30B48);
  }

  return result;
}

uint64_t sub_1E3A0AF0C(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 24);
  sub_1E3251BE8(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_1E3A0AF64()
{
  OUTLINED_FUNCTION_9_65();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_8_67();
  sub_1E3A0AFCC();
  return v0;
}

uint64_t sub_1E3A0AFCC()
{
  OUTLINED_FUNCTION_9_65();
  *(v0 + 16) = 0;
  v1 = type metadata accessor for SSDPNative();
  v2 = swift_allocObject();

  OUTLINED_FUNCTION_8_67();
  sub_1E3A0B7C4();
  v5 = v1;
  v6 = &off_1F5D68E20;

  *&v4 = v2;

  sub_1E3251BE8(&v4, v0 + 24);
  return v0;
}

uint64_t sub_1E3A0B090()
{
  OUTLINED_FUNCTION_9_65();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_8_67();
  sub_1E3A0B7C4();
  return v0;
}

uint64_t sub_1E3A0B11C()
{
  if ((*(*v0 + 96))() == 2)
  {
    OUTLINED_FUNCTION_111();
    (*(v1 + 120))(v9);
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v2 = OUTLINED_FUNCTION_12_64();
    v3(v2);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  OUTLINED_FUNCTION_111();
  (*(v4 + 120))(v9);
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v5 = OUTLINED_FUNCTION_12_64();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  OUTLINED_FUNCTION_111();
  return (*(v7 + 104))(2);
}

uint64_t sub_1E3A0B254()
{
  if ((*(*v0 + 96))() != 1)
  {
    OUTLINED_FUNCTION_111();
    (*(v1 + 120))(v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v2 = OUTLINED_FUNCTION_12_64();
    v3(v2);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  OUTLINED_FUNCTION_111();
  return (*(v4 + 104))(1);
}

uint64_t sub_1E3A0B334()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1E3A0B36C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  *a1 = result;
  return result;
}

id sub_1E3A0B41C()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 16);

  return v1;
}

void sub_1E3A0B454(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1E3A0B490()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1E3A0B4D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1E3A0B518()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1E3A0B558(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_1E3A0B5E4()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1E3A0B624(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_1E3A0B6DC(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 72) = a1;
}

uint64_t sub_1E3A0B788(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 80) = a1;
}

void sub_1E3A0B7C4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v21 = v2;
  v22 = v3;
  v5 = v4;
  v7 = v6;
  v23 = v8;
  v24 = v9;
  v10 = sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E4203FF4();
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v19 = sub_1E4206974();
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v1[10] = 0;
  v1[9] = 0;
  v1[5] = v7;
  v1[6] = v5;
  v1[7] = v21;
  v1[8] = v22;
  swift_beginAccess();
  v1[9] = 0;
  swift_beginAccess();
  v1[10] = 0;
  sub_1E32ADE38();

  sub_1E4206964();
  sub_1E4203FE4();
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8090], v10);
  v1[2] = sub_1E4206A44();
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0xD000000000000052, 0x80000001E426C7D0);
  MEMORY[0x1E69109E0](v23, v24);

  MEMORY[0x1E69109E0](168626701, 0xE400000000000000);

  v1[3] = 0;
  v1[4] = 0xE000000000000000;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A0BA20()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B58);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v39 = v10 - v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = sub_1E324FBDC();
  v36 = *(v8 + 16);
  v37 = v15;
  v36(v14);
  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1E323F000, v16, v17, "SSDP:: Start", v18, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v38 = *(v8 + 8);
  v38(v14, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B60);
  v19 = sub_1E42008B4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E4297BE0;
  v24 = v23 + v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B68);
  sub_1E4200894();
  sub_1E42008A4();
  (*(v21 + 104))(v24, *MEMORY[0x1E6977B08], v19);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v19);
  sub_1E42008F4();
  swift_allocObject();
  sub_1E42008E4();
  OUTLINED_FUNCTION_111();
  v26 = *(v25 + 232);

  v26(v27);
  sub_1E42008D4();

  sub_1E42008C4();
  sub_1E42009B4();
  swift_allocObject();
  v28 = sub_1E4200934();
  (*(*v1 + 256))(v28);
  OUTLINED_FUNCTION_111();
  v30 = *(v29 + 248);
  v31 = v30();
  if (v31)
  {

    sub_1E4200904();
  }

  v32 = (v30)(v31);
  if (v32)
  {

    sub_1E34AF604(sub_1E3A0D1A8);
    OUTLINED_FUNCTION_13_8();
    sub_1E4200914();
  }

  if ((v30)(v32))
  {
    OUTLINED_FUNCTION_111();
    v34 = (*(v33 + 128))();
    sub_1E4200954();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A0BF7C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v60 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B58);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v15 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = sub_1E4205F64();
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  if (v4 >> 60 != 15)
  {
    v59 = v17;
    *&v61 = v6;
    *(&v61 + 1) = v4;
    v24 = OUTLINED_FUNCTION_13_8();
    sub_1E38DCD14(v24, v25);
    sub_1E4205F54();
    sub_1E3A0D380();
    v26 = sub_1E4205F34();
    if (v27)
    {
      v28 = v26;
      v29 = v27;
      v30 = (*(*v1 + 176))();
      v30(v28, v29);

      v31 = sub_1E324FBDC();
      (*(v59 + 16))(v21, v31, v15);

      v32 = sub_1E41FFC94();
      v33 = sub_1E42067E4();

      if (os_log_type_enabled(v32, v33))
      {
        v57 = v33;
        v58 = v32;
        v34 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v63 = v56;
        *v34 = 136315650;
        sub_1E4200984();
        v35 = sub_1E42008B4();
        if (__swift_getEnumTagSinglePayload(v14, 1, v35) == 1)
        {
          sub_1E325F748(v14, &qword_1ECF30B58);
          v61 = 0u;
          v62 = 0u;
        }

        else
        {
          *(&v62 + 1) = v35;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v61);
          (*(*(v35 - 8) + 32))(boxed_opaque_existential_1, v14, v35);
        }

        v43 = sub_1E3294FA4(&v61);
        v45 = sub_1E3270FC8(v43, v44, &v63);

        *(v34 + 4) = v45;
        *(v34 + 12) = 2080;
        sub_1E4200974();
        if (__swift_getEnumTagSinglePayload(v11, 1, v35) == 1)
        {
          sub_1E325F748(v11, &qword_1ECF30B58);
          v61 = 0u;
          v62 = 0u;
        }

        else
        {
          *(&v62 + 1) = v35;
          v46 = __swift_allocate_boxed_opaque_existential_1(&v61);
          (*(*(v35 - 8) + 32))(v46, v11, v35);
        }

        v47 = sub_1E3294FA4(&v61);
        v49 = sub_1E3270FC8(v47, v48, &v63);

        *(v34 + 14) = v49;
        *(v34 + 22) = 1024;
        *(v34 + 24) = v60 & 1;
        v50 = v58;
        _os_log_impl(&dword_1E323F000, v58, v57, "SSDP:: Received message from: %s to: %s isComplete: %{BOOL}d", v34, 0x1Cu);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
        v51 = OUTLINED_FUNCTION_13_8();
        sub_1E38DCE1C(v51, v52);

        v53 = OUTLINED_FUNCTION_53();
        v54(v53);
      }

      else
      {
        v38 = OUTLINED_FUNCTION_13_8();
        sub_1E38DCE1C(v38, v39);

        v40 = OUTLINED_FUNCTION_53();
        v41(v40);
      }
    }

    else
    {
      v36 = OUTLINED_FUNCTION_13_8();
      sub_1E38DCE1C(v36, v37);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A0C414()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B58);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v76 - v6;
  sub_1E4205F64();
  OUTLINED_FUNCTION_0_10();
  v81 = v8;
  v82 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v80 = v10 - v9;
  v11 = sub_1E4200944();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v89 = (v15 - v16);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v92 = &v76 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v76 - v20;
  v22 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v87 = v26 - v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v76 - v29;
  v31 = sub_1E324FBDC();
  v90 = v24;
  v32 = *(v24 + 16);
  v85 = v31;
  v86 = v24 + 16;
  v84 = v32;
  (v32)(v30);
  v91 = v13;
  v33 = *(v13 + 16);
  v88 = v3;
  v33(v21, v3, v11);
  v34 = sub_1E41FFC94();
  v35 = sub_1E42067E4();
  v36 = "ractor";
  if (os_log_type_enabled(v34, v35))
  {
    v37 = swift_slowAlloc();
    v79 = v1;
    v38 = v37;
    v77 = swift_slowAlloc();
    v94 = v11;
    v95[0] = v77;
    *v38 = 136315138;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v93);
    v33(boxed_opaque_existential_1, v21, v11);
    v36 = v22;
    v40 = sub_1E3294FA4(v93);
    v78 = v33;
    v42 = v41;
    v43 = OUTLINED_FUNCTION_18_49(v91);
    v44(v43);
    v45 = v40;
    v22 = v36;
    v46 = sub_1E3270FC8(v45, v42, v95);
    v33 = v78;

    *(v38 + 4) = v46;
    _os_log_impl(&dword_1E323F000, v34, v35, "SSDP:: Group entered state %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v77);
    OUTLINED_FUNCTION_6_0();
    v1 = v79;
    OUTLINED_FUNCTION_6_0();

    v47 = OUTLINED_FUNCTION_14_74();
    (v36)(v47);
    v48 = v91;
  }

  else
  {

    v48 = v91;
    v49 = OUTLINED_FUNCTION_18_49(v91);
    v50(v49);
    v51 = OUTLINED_FUNCTION_14_74();
    ("ractor")(v51);
  }

  v52 = v92;
  v53 = v88;
  v33(v92, v88, v11);
  v54 = (*(v48 + 88))(v52, v11);
  v55 = v33;
  v56 = v89;
  if (v54 == *MEMORY[0x1E6977CD0])
  {
    if ((*(*v1 + 248))())
    {
      (*(*v1 + 152))();
      v57 = v80;
      sub_1E4205F54();
      v58 = sub_1E4205F24();
      v60 = v59;

      (*(v81 + 8))(v57, v82);
      v61 = sub_1E42008B4();
      v62 = v83;
      __swift_storeEnumTagSinglePayload(v83, 1, 1, v61);
      sub_1E42009A4();

      sub_1E4200994();
      sub_1E4200924();

      sub_1E38DCE1C(v58, v60);

      sub_1E325F748(v62, &qword_1ECF30B58);
    }
  }

  else
  {
    v63 = v87;
    v84(v87, v85, v22);
    v55(v56, v53, v11);
    v64 = sub_1E41FFC94();
    LODWORD(v88) = sub_1E42067E4();
    v65 = os_log_type_enabled(v64, v88);
    v91 = v22;
    if (v65)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v94 = v11;
      v95[0] = v67;
      *v66 = 136315138;
      v68 = __swift_allocate_boxed_opaque_existential_1(v93);
      v55(v68, v56, v11);
      v69 = v36;
      v70 = sub_1E3294FA4(v93);
      v72 = v71;
      v73 = OUTLINED_FUNCTION_15_65();
      v56(v73);
      v74 = sub_1E3270FC8(v70, v72, v95);

      *(v66 + 4) = v74;
      _os_log_impl(&dword_1E323F000, v64, v88, "SSDP:: Group entered state %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (v69)(v87, v91);
    }

    else
    {

      v75 = OUTLINED_FUNCTION_15_65();
      v56(v75);
      (v36)(v63, v91);
    }

    (v56)(v92, v11);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A0CB14()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B78);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = sub_1E42009C4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  sub_1E3A0D310(v3, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1E325F748(v14, &qword_1ECF30B78);
    OUTLINED_FUNCTION_111();
    v26 = (*(v25 + 200))();
    v26();
  }

  else
  {
    (*(v17 + 32))(v24, v14, v15);
    v27 = sub_1E324FBDC();
    v51 = v6;
    (*(v6 + 16))(v10, v27, v4);
    v28 = *(v17 + 16);
    v28(v21, v24, v15);
    v29 = sub_1E41FFC94();
    v50 = sub_1E42067E4();
    if (os_log_type_enabled(v29, v50))
    {
      v30 = swift_slowAlloc();
      v46 = v29;
      v31 = v30;
      v47 = swift_slowAlloc();
      v52[3] = v15;
      v53 = v47;
      *v31 = 136315138;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
      v28(boxed_opaque_existential_1, v21, v15);
      v33 = sub_1E3294FA4(v52);
      v48 = v4;
      v49 = v1;
      v35 = v34;
      v36 = *(v17 + 8);
      v37 = OUTLINED_FUNCTION_21_48();
      v36(v37);
      v38 = sub_1E3270FC8(v33, v35, &v53);

      v39 = v31;
      *(v31 + 4) = v38;
      v40 = v36;
      v41 = v46;
      _os_log_impl(&dword_1E323F000, v46, v50, "SSDP:: Send complete with error %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v51 + 8))(v10, v48);
    }

    else
    {

      v40 = *(v17 + 8);
      v42 = OUTLINED_FUNCTION_21_48();
      v40(v42);
      (*(v51 + 8))(v10, v4);
    }

    OUTLINED_FUNCTION_111();
    (*(v43 + 288))();
    v44 = OUTLINED_FUNCTION_53();
    v40(v44);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A0CEEC()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E324FBDC();
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_1E41FFC94();
  v9 = sub_1E4206814();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v8, v9, "SSDP:: Stop", v10, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_111();
  result = (*(v11 + 248))();
  if (result)
  {
    sub_1E4200964();
  }

  return result;
}

uint64_t sub_1E3A0D064()
{

  return v0;
}

uint64_t sub_1E3A0D0AC()
{
  sub_1E3A0D064();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1E3A0D0E0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 272))();
  *a1 = result;
  return result;
}

unint64_t sub_1E3A0D1B4()
{
  result = qword_1ECF30B70;
  if (!qword_1ECF30B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30B70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SSDP.SSDPState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3A0D310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3A0D380()
{
  result = qword_1EE28A460;
  if (!qword_1EE28A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A460);
  }

  return result;
}

uint64_t sub_1E3A0D3D4()
{
  result = sub_1E32859C4(v0, &selRef_title);
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1E3A0D408()
{
  result = sub_1E32859C4(v0, &selRef_genreName);
  if (!v2)
  {
    return 0;
  }

  return result;
}

void sub_1E3A0D454(SEL *a1)
{
  v2 = [v1 *a1];
  if (v2)
  {
    v3 = v2;
    [v2 doubleValue];
  }
}

uint64_t sub_1E3A0D4E4()
{
  type metadata accessor for MediaShowcasingMetadataPresenter(0);
  OUTLINED_FUNCTION_0_112();
  sub_1E3A15394(v0, v1);
  OUTLINED_FUNCTION_32_0();

  return sub_1E42010C4();
}

void sub_1E3A0D54C()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v3;
  v84 = v5;
  v7 = v6;
  v8 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v88 = v13 - v12;
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v86 = v15;
  v87 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v85 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B80);
  OUTLINED_FUNCTION_17_2(v18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_49_2();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_26_2();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B90);
  OUTLINED_FUNCTION_0_10();
  v77 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v23);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_31_2();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BA0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v70 - v30;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BA8);
  OUTLINED_FUNCTION_0_10();
  v82 = v32;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v36);
  v89 = v4;
  if (sub_1E392583C())
  {
    OUTLINED_FUNCTION_26_0();
    v38 = (*(v37 + 392))();
    if (v38)
    {
      v39 = v38;
      v73 = v10;
      type metadata accessor for MediaShowcasingMetadataLayout();
      OUTLINED_FUNCTION_20_2();
      if (swift_dynamicCastClass())
      {
        v70 = v39;
        v72 = v7;
        OUTLINED_FUNCTION_26_0();
        v41 = (*(v40 + 504))();
        v71 = v8;
        if (v41 == 18 || (sub_1E4125604(v41) & 1) == 0)
        {
          v42 = sub_1E4201B64();
        }

        else
        {
          v42 = sub_1E4201B74();
        }

        v43 = v42;
        OUTLINED_FUNCTION_111();
        (*(v44 + 456))();
        *v2 = v43;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BB8);
        sub_1E3A0DD84();
        v45 = sub_1E4202754();
        v46 = sub_1E4202774();
        sub_1E4202774();
        if (sub_1E4202774() != v45)
        {
          v46 = sub_1E4202774();
        }

        if ((TVAppFeature.isEnabled.getter(20) & 1) == 0 || sub_1E39277A4())
        {
          OUTLINED_FUNCTION_111();
          (*(v52 + 152))();
        }

        sub_1E4200A54();
        OUTLINED_FUNCTION_3();
        sub_1E3741EA0(v2, v0, &qword_1ECF30B80);
        v53 = (v0 + *(v76 + 36));
        *v53 = v46;
        OUTLINED_FUNCTION_11_4(v53);
        v54 = swift_allocObject();
        v55 = v89;
        *(v54 + 16) = v84;
        *(v54 + 24) = v55;
        sub_1E3A0EF68();

        v56 = OUTLINED_FUNCTION_51_1();
        v57 = v75;
        sub_1E40AB6EC(v56 & 1);

        sub_1E325F69C(v0, &qword_1ECF30B88);
        v58 = sub_1E39256E8();
        (*(v77 + 32))(v1, v57, v79);
        *(v1 + *(v74 + 36)) = v58;
        v59 = sub_1E4202744();
        sub_1E3741EA0(v1, v28, &qword_1ECF30B98);
        v60 = v81;
        *(v28 + *(v81 + 36)) = v59;
        sub_1E3741EA0(v28, v31, &qword_1ECF30BA0);
        v61 = v85;
        sub_1E4202474();
        v62 = sub_1E3A0F020();
        v63 = v80;
        sub_1E4203224();
        (*(v86 + 8))(v61, v87);
        sub_1E325F69C(v31, &qword_1ECF30BA0);
        v64 = v88;
        sub_1E4201C64();
        v91 = v60;
        v92 = v62;
        swift_getOpaqueTypeConformance2();
        v65 = v78;
        v66 = v83;
        sub_1E4203294();

        (*(v73 + 8))(v64, v71);
        (*(v82 + 8))(v63, v66);
        sub_1E3741EA0(v65, v72, &qword_1ECF30BB0);
        v67 = OUTLINED_FUNCTION_22_1();
        __swift_storeEnumTagSinglePayload(v67, v68, v69, v90);
        OUTLINED_FUNCTION_10_3();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
}

void sub_1E3A0DD84()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v42 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C88);
  OUTLINED_FUNCTION_0_10();
  v37 = v13;
  v38 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C90);
  OUTLINED_FUNCTION_0_10();
  v40 = v18;
  v41 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v39 = v19 - v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  v36 = v22;
  v23 = (*(*v6 + 504))();
  v35 = v23 == 18 || !sub_1E412561C(v23);
  if (v4 == 7 || (sub_1E3793D00(), (sub_1E4205E84() & 1) == 0))
  {
    v24 = sub_1E4201D54();
  }

  else
  {
    v24 = sub_1E4201D44();
  }

  *v1 = v24;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C98);
  sub_1E3A0E2C0();
  v25 = (*(*v6 + 1920))();
  if (v25 == 13)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  }

  else
  {
    sub_1E3B033CC(v25, v2);
  }

  sub_1E3B03114(v2, v0);
  sub_1E325F69C(v2, &qword_1ECF2A250);
  sub_1E3A1558C(&qword_1EE2884E0, &qword_1ECF30C80);
  sub_1E3A1558C(&qword_1EE23ACD8, &qword_1ECF2A1F8);
  sub_1E4202FA4();
  sub_1E325F69C(v0, &qword_1ECF2A1F8);
  sub_1E325F69C(v1, &qword_1ECF30C80);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E38838AC(v6, 2u, 2, OpaqueTypeConformance2, v36);
  (*(v37 + 8))(v16, v38);
  v31 = *(v40 + 16);
  v31(v39, v36, v41);
  *v42 = 0;
  *(v42 + 8) = 0;
  *(v42 + 9) = v35;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30CA0);
  v31(v42 + *(v32 + 48), v39, v41);
  v33 = v42 + *(v32 + 64);
  *v33 = 0;
  *(v33 + 8) = 0;
  v34 = *(v40 + 8);
  v34(v36, v41);
  v34(v39, v41);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A0E2C0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v70 = v6;
  v7 = v2;
  v61 = type metadata accessor for StageMediaShowcasingMetadataView.StageMediaTagsView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30CA8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v62 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30CB0);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v71 = v18 - v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v69 = v21;
  type metadata accessor for MediaShowcasingMetadataPresenter(0);
  OUTLINED_FUNCTION_0_112();
  sub_1E3A15394(v22, v23);
  swift_retain_n();
  v67 = sub_1E42010C4();
  v68 = v24;
  if (v7 == 7)
  {
  }

  else
  {
    LOBYTE(v84[0]) = v3;
    LOBYTE(v83[0]) = 1;
    sub_1E3793D00();

    if (sub_1E4205E84())
    {
      sub_1E4203DA4();
      goto LABEL_6;
    }
  }

  sub_1E4203DB4();
LABEL_6:
  LOBYTE(v83[0]) = 1;
  v63 = *(*v5 + 776);
  v63(v84, v83, &unk_1F5D5D9A8, &off_1F5D5C958);
  if (v84[3])
  {
    if ((swift_dynamicCast() & 1) != 0 && LOBYTE(v83[0]) == 1)
    {
      OUTLINED_FUNCTION_71_2();
      (*(v25 + 248))();
      OUTLINED_FUNCTION_27_17();
      OUTLINED_FUNCTION_23_3();
      sub_1E42015C4();
      v84[0] = v5;

      goto LABEL_12;
    }
  }

  else
  {
    sub_1E325F69C(v84, &unk_1ECF296E0);
  }

  memset(v84, 0, 120);
LABEL_12:
  if (TVAppFeature.isEnabled.getter(20))
  {
    OUTLINED_FUNCTION_71_2();
    (*(v26 + 248))();
    if ((v27 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_17();
      if (v28)
      {
        sub_1E4206804();
        v29 = sub_1E42026D4();
        OUTLINED_FUNCTION_108();
      }
    }

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_33_6();
    v83[0] = v5;
  }

  else
  {
    memset(v83, 0, 120);
  }

  if ((TVAppFeature.isEnabled.getter(10) & 1) != 0 && (sub_1E3CCE274(*(v1 + 120), 5u) & 1) != 0 && sub_1E39C408C(234) && (OUTLINED_FUNCTION_71_2(), (*(v30 + 2112))(), v31 = sub_1E392B158(), , v32 = sub_1E3D3CD34(v31), , !v32))
  {
    v65 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_157();
    swift_retain_n();
    v65 = v5;
  }

  v33 = sub_1E42010C4();
  v64 = v34;
  v81[0] = 1;
  OUTLINED_FUNCTION_157();
  swift_retain_n();
  v63(v82, v81, &unk_1F5D5D9A8, &off_1F5D5C958);
  if (!v82[3])
  {
    sub_1E325F69C(v82, &unk_1ECF296E0);
LABEL_29:
    v38 = *(v61 + 24);
    *(v11 + v38) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
    swift_storeEnumTagMultiPayload();
    *v11 = v5;
    *(v11 + 8) = 47;
    OUTLINED_FUNCTION_71_2();
    v40 = *(v39 + 248);

    v40(v41);
    if ((v42 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_17();
      if (v28)
      {
        sub_1E4206804();
        v43 = sub_1E42026D4();
        OUTLINED_FUNCTION_108();
      }
    }

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_33_6();
    sub_1E3A15164(v11, v62);
    v37 = v66;
    memcpy((v62 + *(v66 + 36)), v85, 0x70uLL);
    OUTLINED_FUNCTION_48_23();
    sub_1E3741EA0(v44, v45, v46);
    v36 = v69;
    OUTLINED_FUNCTION_48_23();
    sub_1E3741EA0(v47, v48, v49);
    v35 = 0;
    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v81[0] & 1) == 0)
  {
    goto LABEL_29;
  }

  v35 = 1;
  v36 = v69;
  v37 = v66;
LABEL_34:
  v50 = __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
  if ((*(*v5 + 392))(v50))
  {
    OUTLINED_FUNCTION_106();
    type metadata accessor for MediaShowcasingMetadataLayout();
    OUTLINED_FUNCTION_20_2();
    v51 = swift_dynamicCastClass();
    if (!v51)
    {
    }
  }

  else
  {
    v51 = 0;
  }

  v52 = (*(*v5 + 488))();
  if (v52)
  {
    v53 = sub_1E373E010(15, v52);
  }

  else
  {
    v53 = 0;
  }

  if ((TVAppFeature.isEnabled.getter(20) & 1) == 0)
  {
    goto LABEL_48;
  }

  if (!v51)
  {
LABEL_49:

    goto LABEL_50;
  }

  if (!sub_1E3CCE24C(*(v51 + 120)))
  {
    goto LABEL_48;
  }

  if (!v53)
  {
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_71_2();
  v55 = *(v54 + 392);

  v57 = v55(v56);

  if (!v57)
  {
LABEL_48:

    goto LABEL_49;
  }

  OUTLINED_FUNCTION_8();
  v59 = (*(v58 + 936))();

  if ((v59 & 1) == 0)
  {
LABEL_50:
    OUTLINED_FUNCTION_157();
    swift_retain_n();
    v60 = v5;
    goto LABEL_51;
  }

  v60 = 0;
LABEL_51:
  v79[0] = v5;
  v79[1] = v67;
  v79[2] = v68;
  v80[0] = v79;
  memcpy(v78, v84, sizeof(v78));
  v80[1] = v78;
  memcpy(v77, v83, sizeof(v77));
  v80[2] = v77;
  v80[3] = &v76;
  v75[0] = v5;
  v75[1] = v33;
  v75[2] = v64;
  v76 = v65;
  v74 = v5;
  v80[4] = v75;
  v80[5] = &v74;
  sub_1E3743538(v36, v71, &qword_1ECF30CB0);
  v72 = v5;
  v73 = v60;
  v80[6] = v71;
  v80[7] = &v73;
  v80[8] = &v72;

  sub_1E3A0EDA8(v80, v70);
  swift_retain_n();

  sub_1E3743538(v84, v82, &qword_1ECF30CB8);
  sub_1E3743538(v83, v82, &qword_1ECF30CC0);
  OUTLINED_FUNCTION_157();

  sub_1E325F69C(v83, &qword_1ECF30CC0);
  sub_1E325F69C(v84, &qword_1ECF30CB8);

  OUTLINED_FUNCTION_157();

  sub_1E325F69C(v36, &qword_1ECF30CB0);

  sub_1E325F69C(v71, &qword_1ECF30CB0);

  memcpy(v81, v77, sizeof(v81));
  sub_1E325F69C(v81, &qword_1ECF30CC0);
  memcpy(v82, v78, sizeof(v82));
  sub_1E325F69C(v82, &qword_1ECF30CB8);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A0EDA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  *a2 = **a1;
  a2[1] = v5;
  a2[2] = v6;
  memcpy(__dst, v4, sizeof(__dst));
  memmove(a2 + 3, v4, 0x78uLL);
  v7 = a1[2];
  memcpy(v16, v7, sizeof(v16));
  memmove(a2 + 18, v7, 0x78uLL);
  v8 = a1[4];
  a2[33] = *a1[3];
  v9 = v8[1];
  v10 = v8[2];
  a2[34] = *v8;
  a2[35] = v9;
  a2[36] = v10;
  a2[37] = *a1[5];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30CC8);
  sub_1E3743538(a1[6], a2 + v11[32], &qword_1ECF30CB0);
  v12 = a1[8];
  *(a2 + v11[36]) = *a1[7];
  *(a2 + v11[40]) = *v12;

  sub_1E3743538(__dst, v14, &qword_1ECF30CB8);
  sub_1E3743538(v16, v14, &qword_1ECF30CC0);
}

unint64_t sub_1E3A0EF68()
{
  result = qword_1EE2897D8;
  if (!qword_1EE2897D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30B88);
    sub_1E3A1558C(&qword_1EE2885C8, &unk_1ECF30B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897D8);
  }

  return result;
}

unint64_t sub_1E3A0F020()
{
  result = qword_1EE289620;
  if (!qword_1EE289620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30BA0);
    sub_1E3A0F0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289620);
  }

  return result;
}

unint64_t sub_1E3A0F0AC()
{
  result = qword_1EE2899F8;
  if (!qword_1EE2899F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30B98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30B88);
    sub_1E3A0EF68();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899F8);
  }

  return result;
}

void sub_1E3A0F18C()
{
  OUTLINED_FUNCTION_93();
  v78 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_2();
  v6 = sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  v75 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v68 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CC8);
  OUTLINED_FUNCTION_0_10();
  v77 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v76 = v19 - v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v22);
  OUTLINED_FUNCTION_36();
  v24 = (*(v23 + 488))();
  if (v24)
  {
    v25 = sub_1E373E010(40, v24);

    if (v25)
    {
      v73 = v16;
      type metadata accessor for ImageViewModel();
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v27 = v26;
        v72 = v0;
        v74 = v3;
        OUTLINED_FUNCTION_26_0();
        v29 = *(v28 + 392);

        v31 = v29(v30);

        if (v31)
        {
          type metadata accessor for ImageLayout();
          v32 = swift_dynamicCastClass();
          if (v32)
          {
            v33 = v32;
            v34 = sub_1E3925954();
            if (v34)
            {
              v35 = *(*v33 + 2288);
              v78 = v34;
              v35();
              v71 = v78;
              sub_1E381AC64();
              v36 = *MEMORY[0x1E6981630];
              v78 = v33;
              v37 = v75;
              (*(v75 + 104))(v11, v36, v6);
              OUTLINED_FUNCTION_5_8();
              v70 = sub_1E4203824();

              (*(v37 + 8))(v11, v6);
              v87 = v70;

              v38 = MEMORY[0x1E6981748];
              v39 = MEMORY[0x1E6981710];
              v40 = OUTLINED_FUNCTION_51_1();
              v41 = OUTLINED_FUNCTION_18();
              sub_1E3C8F60C(v78, v40 & 1, v41 & 1, v38, v39);

              sub_1E4203DA4();
              OUTLINED_FUNCTION_59();
              v42 = sub_1E4200D94();
              v43 = &v15[*(v12 + 36)];
              v44 = v84;
              *v43 = v83;
              *(v43 + 1) = v44;
              *(v43 + 2) = v85;
              (*(*v27 + 904))(v42);
              sub_1E37AC740();
              v45 = v79;
              sub_1E3E03528();

              sub_1E325F69C(v15, &qword_1ECF29CC0);
              OUTLINED_FUNCTION_8();
              v47 = *(v46 + 152);

              v47(&v86, v48);

              OUTLINED_FUNCTION_68_10();
              OUTLINED_FUNCTION_59();
              OUTLINED_FUNCTION_36_0();
              OUTLINED_FUNCTION_69_10();
              v78 = v87;
              OUTLINED_FUNCTION_28_33();
              v82 = 1;
              v81 = v49;
              v80 = v50;
              v51 = v77;
              v69 = v31;
              v52 = *(v77 + 16);
              v53 = v76;
              v54 = v45;
              v55 = v73;
              v52(v76, v54, v73);
              LOBYTE(v39) = v82;
              LOBYTE(v47) = v81;
              HIDWORD(v68) = v80;
              v56 = v72;
              v52(v72, v53, v55);
              v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C78) + 48);

              v58 = v56 + v57;
              *v58 = 0;
              *(v58 + 8) = v39;
              *(v58 + 16) = v78;
              *(v58 + 24) = v47;
              *(v58 + 32) = v75;
              *(v58 + 40) = BYTE4(v68);
              OUTLINED_FUNCTION_53_21(v56 + v57);
              v59 = *(v51 + 8);
              v59(v79, v55);
              v59(v53, v55);
              sub_1E3741EA0(v56, v74, &qword_1ECF30C70);
              v60 = OUTLINED_FUNCTION_22_1();
              __swift_storeEnumTagSinglePayload(v60, v61, v62, v4);
              OUTLINED_FUNCTION_54_0();
              return;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
}

void sub_1E3A0F890()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v63 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C58);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_1();
  if ((*(*v1 + 392))())
  {
    v62 = v4;
    type metadata accessor for MediaShowcasingMetadataLayout();
    v17 = OUTLINED_FUNCTION_71_14();
    if (v17)
    {
      v18 = v17;
      v61 = v3;
      OUTLINED_FUNCTION_66_3();
      v20 = (*(v19 + 488))();
      if (!v20)
      {
        goto LABEL_17;
      }

      v21 = sub_1E373E010(229, v20);

      if (!v21)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_8();
      if ((*(v22 + 552))())
      {
        v69 = &unk_1F5D7BE68;
        v23 = OUTLINED_FUNCTION_50_18(&off_1F5D7BC48);
        sub_1E3F9F164(v23);

        __swift_destroy_boxed_opaque_existential_1(&v66);
        if (*(&v73 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
          if (swift_dynamicCast())
          {
            v24 = *(v66 + 16);

            if (v24)
            {
              goto LABEL_22;
            }
          }

LABEL_17:
          OUTLINED_FUNCTION_66_3();
          if ((*(v30 + 552))())
          {
            v60 = v18;
            v69 = &unk_1F5D7BE68;
            v31 = OUTLINED_FUNCTION_50_18(&off_1F5D7BC48);
            sub_1E3F9F164(v31);

            __swift_destroy_boxed_opaque_existential_1(&v66);
            if (*(&v73 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
              if (swift_dynamicCast())
              {
                v32 = *(v66 + 16);

                if (v32)
                {

                  v21 = v1;
                  v18 = v60;
LABEL_22:
                  v33 = *(v18 + 104);

                  sub_1E3820C20(v21, v33, 0, 0, 47, v14);
                  v34 = v1[3];
                  v35 = &v14[*(v7 + 52)];
                  *v35 = v1[2];
                  *(v35 + 1) = v34;

                  sub_1E4203DA4();
                  OUTLINED_FUNCTION_59();
                  OUTLINED_FUNCTION_36_0();
                  OUTLINED_FUNCTION_69_10();
                  v59 = v68;
                  v60 = v66;
                  v57 = v71;
                  v58 = v70;
                  LOBYTE(v72) = 1;
                  v65 = v67;
                  v64 = v69;
                  sub_1E3743538(v14, v11, &qword_1ECF30C58);
                  LOBYTE(v33) = v72;
                  v55 = v65;
                  v56 = v64;
                  v36 = v63;
                  sub_1E3743538(v11, v63, &qword_1ECF30C58);
                  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C68) + 48);

                  v38 = v36 + v37;
                  *v38 = 0;
                  *(v38 + 8) = v33;
                  *(v38 + 16) = v60;
                  *(v38 + 24) = v55;
                  *(v38 + 32) = v59;
                  *(v38 + 40) = v56;
                  v39 = v57;
                  *(v38 + 48) = v58;
                  *(v38 + 56) = v39;
                  sub_1E325F69C(v14, &qword_1ECF30C58);
                  sub_1E325F69C(v11, &qword_1ECF30C58);
                  v40 = OUTLINED_FUNCTION_46_2();
                  sub_1E3741EA0(v40, v41, v42);
                  OUTLINED_FUNCTION_114();
                  __swift_storeEnumTagSinglePayload(v43, v44, v45, v62);
LABEL_26:
                  v49 = OUTLINED_FUNCTION_124();
                  sub_1E3741EA0(v49, v50, v51);
                  OUTLINED_FUNCTION_114();
                  __swift_storeEnumTagSinglePayload(v52, v53, v54, v15);
                  OUTLINED_FUNCTION_25_2();
                  return;
                }
              }

LABEL_25:

              OUTLINED_FUNCTION_32_2();
              __swift_storeEnumTagSinglePayload(v46, v47, v48, v62);
              goto LABEL_26;
            }
          }

          else
          {
            v72 = 0u;
            v73 = 0u;
          }

          sub_1E325F69C(&v72, &unk_1ECF296E0);
          goto LABEL_25;
        }
      }

      else
      {

        v72 = 0u;
        v73 = 0u;
      }

      sub_1E325F69C(&v72, &unk_1ECF296E0);
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

void sub_1E3A0FE64()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C58);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_36();
  if ((*(v18 + 392))())
  {
    v51 = v6;
    type metadata accessor for MediaShowcasingMetadataLayout();
    v19 = OUTLINED_FUNCTION_71_14();
    if (v19)
    {
      v20 = v19;
      v49 = v0;
      v50 = v5;
      OUTLINED_FUNCTION_8();
      v22 = (*(v21 + 488))();
      if (v22 && (v23 = sub_1E373E010(225, v22), , v23))
      {
        v24 = *(v20 + 104);
        v48 = v23;

        sub_1E3820C20(v23, v24, 0, 0, 47, v15);
        v25 = *(v3 + 24);
        v26 = &v15[*(v8 + 52)];
        *v26 = *(v3 + 16);
        *(v26 + 1) = v25;

        sub_1E4203DA4();
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_36_0();
        OUTLINED_FUNCTION_69_10();
        v46 = v57;
        v47 = v55;
        v44 = v60;
        v45 = v59;
        v54 = 1;
        v53 = v56;
        v52 = v58;
        sub_1E3743538(v15, v12, &qword_1ECF30C58);
        LOBYTE(v24) = v54;
        v27 = v53;
        HIDWORD(v43) = v52;
        v28 = v49;
        sub_1E3743538(v12, v49, &qword_1ECF30C58);
        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C68) + 48);

        v30 = v28 + v29;
        *v30 = 0;
        *(v30 + 8) = v24;
        v31 = v46;
        *(v30 + 16) = v47;
        *(v30 + 24) = v27;
        *(v30 + 32) = v31;
        *(v30 + 40) = BYTE4(v43);
        v32 = v44;
        *(v30 + 48) = v45;
        *(v30 + 56) = v32;
        sub_1E325F69C(v15, &qword_1ECF30C58);
        sub_1E325F69C(v12, &qword_1ECF30C58);
        sub_1E3741EA0(v28, v1, &qword_1ECF30C50);
        v33 = v1;
        v34 = 0;
      }

      else
      {

        v33 = v1;
        v34 = 1;
      }

      __swift_storeEnumTagSinglePayload(v33, v34, 1, v51);
      sub_1E3741EA0(v1, v50, &qword_1ECF30C60);
      v35 = OUTLINED_FUNCTION_22_1();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v16);
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
}

void sub_1E3A1023C()
{
  OUTLINED_FUNCTION_9_4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for TextBadge();
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v88 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v84 = v10 - v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v85 = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v87 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v82 - v18;
  OUTLINED_FUNCTION_36();
  v21 = *(v20 + 488);
  v89 = v1;
  v22 = v21();
  if (!v22)
  {
LABEL_11:
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    return;
  }

  v23 = v22;
  v82 = v19;
  v83 = v8;
  v90 = v16;
  v91 = v3;
  v24 = v22 + 64;
  OUTLINED_FUNCTION_34_33();
  v27 = v26 & v25;
  v29 = (v28 + 63) >> 6;

  v30 = 0;
  if (!v27)
  {
    goto LABEL_4;
  }

  do
  {
    v31 = v30;
LABEL_7:
    v32 = *(*(v23 + 56) + ((v31 << 9) | (8 * __clz(__rbit64(v27)))));

    if (sub_1E385050C())
    {

      v39 = v89;
      v40 = (v21)(v38);
      v42 = v82;
      v41 = v83;
      v43 = v88;
      if (v40)
      {
        v44 = sub_1E373E010(234, v40);

        if (v44)
        {
          type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
          v45 = swift_dynamicCastClass();
          if (v45)
          {
            v46 = v45;
            OUTLINED_FUNCTION_26_0();
            v48 = *(v47 + 392);

            v50 = v48(v49);

            if (v50)
            {
              if (*v50 == _TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout)
              {
LABEL_21:

                v88 = v44;

                sub_1E385EB44(v46, v50, v32, 0, 0, 4, &v94);
                v51 = sub_1E4202754();
                v52 = sub_1E4202774();
                sub_1E4202774();
                if (sub_1E4202774() != v51)
                {
                  v52 = sub_1E4202774();
                }

                OUTLINED_FUNCTION_66_3();
                v54 = (*(v53 + 392))();
                sub_1E3A10908(v54, v39);

                sub_1E4200A54();
                v92[0] = v94;
                v92[1] = v95[0];
                *(&v92[1] + 9) = *(v95 + 9);
                v93 = 0;
                LOBYTE(v92[3]) = v52;
                *(&v92[3] + 1) = v55;
                *&v92[4] = v56;
                *(&v92[4] + 1) = v57;
                *&v92[5] = v58;
                BYTE8(v92[5]) = 0;
                memcpy(v87, v92, 0x59uLL);
                swift_storeEnumTagMultiPayload();
                v59 = &qword_1ECF30C48;
                OUTLINED_FUNCTION_48_23();
                sub_1E3743538(v60, v61, v62);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C48);
                sub_1E3A14934();
                sub_1E3A14A14();
                sub_1E4201F44();

                v63 = v92;
LABEL_28:
                sub_1E325F69C(v63, v59);
                sub_1E3741EA0(v42, v91, &qword_1ECF30C40);
                OUTLINED_FUNCTION_114();
                __swift_storeEnumTagSinglePayload(v79, v80, v81, v90);
                OUTLINED_FUNCTION_10_3();
                return;
              }
            }

            type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(0);
            v50 = sub_1E392DC1C();
            goto LABEL_21;
          }
        }
      }

      sub_1E3FC96D0(v64, 0, v43);
      v65 = sub_1E4202754();
      v66 = sub_1E4202774();
      sub_1E4202774();
      if (sub_1E4202774() != v65)
      {
        v66 = sub_1E4202774();
      }

      OUTLINED_FUNCTION_66_3();
      v68 = (*(v67 + 392))();
      sub_1E3A10908(v68, v39);

      sub_1E4200A54();
      OUTLINED_FUNCTION_3();
      v69 = v43;
      v70 = v84;
      sub_1E3A15164(v69, v84);
      v71 = (v70 + *(v41 + 36));
      *v71 = v66;
      OUTLINED_FUNCTION_11_4(v71);
      v59 = &qword_1ECF30C30;
      v72 = v85;
      OUTLINED_FUNCTION_48_23();
      sub_1E3741EA0(v73, v74, v75);
      OUTLINED_FUNCTION_48_23();
      sub_1E3743538(v76, v77, v78);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C48);
      sub_1E3A14934();
      sub_1E3A14A14();
      sub_1E4201F44();

      v63 = v72;
      goto LABEL_28;
    }

    v27 &= v27 - 1;

    v30 = v31;
  }

  while (v27);
LABEL_4:
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v29)
    {

      goto LABEL_11;
    }

    v27 = *(v24 + 8 * v31);
    ++v30;
    if (v27)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

double sub_1E3A10908(uint64_t a1, void *a2)
{
  v3 = (*a2 + 488);
  v4 = *v3;
  v5 = (*v3)();
  if (v5 && (v6 = sub_1E373E010(234, v5), , v6) || (v7 = v4()) != 0 && (v8 = sub_1E373E010(229, v7), , v8))
  {
  }

  else
  {
    v11 = v4();
    if (v11)
    {
      v12 = sub_1E373E010(39, v11);

      if (v12)
      {

        v14 = (v4)(v13);
        if (v14)
        {
          v15 = sub_1E373E010(23, v14);

          if (v15)
          {
            OUTLINED_FUNCTION_36();
            v17 = v16;

            if (v17 == _TtC8VideosUI13TextViewModel)
            {
              if (a1)
              {
                OUTLINED_FUNCTION_111();
                (*(v18 + 1592))(23);
                return v19;
              }

              return 0.0;
            }
          }
        }
      }
    }
  }

  if (!a1)
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_111();
  (*(v9 + 152))(v20);
  result = *&v20[2];
  if (v21)
  {
    return 0.0;
  }

  return result;
}

void sub_1E3A10AFC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  v5 = *(v4 + 392);
  v6 = swift_retain_n();
  if (!v5(v6))
  {
    goto LABEL_8;
  }

  type metadata accessor for MediaShowcasingMetadataLayout();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_8:

    sub_1E3A143A4(v191);
    goto LABEL_42;
  }

  v8 = v7;
  OUTLINED_FUNCTION_8();
  v9 += 61;
  v10 = *v9;
  v11 = (*v9)();
  if (!v11)
  {
    OUTLINED_FUNCTION_33_10();

LABEL_10:
    v18 = (v10)(v13);
    if (v18)
    {
      sub_1E373E010(229, v18);
      OUTLINED_FUNCTION_20_17();
      if (*v8 == _TtC8VideosUI34MediaShowcasingScoreboardViewModel)
      {

        v20 = sub_1E3BB3BA4(v19);
        v22 = v21;
        if ((*(*v8 + 392))())
        {
          OUTLINED_FUNCTION_26_0();
          (*(v23 + 248))();
          v25 = v24;
        }

        else
        {
          v25 = 1;
        }

        v106 = sub_1E4203DA4();
        v108 = v107;
        if ((v25 & 1) == 0)
        {
          OUTLINED_FUNCTION_38_17();
          if (v109)
          {
            sub_1E4206804();
            v165 = v22;
            v110 = v3;
            v111 = sub_1E42026D4();
            OUTLINED_FUNCTION_108();

            v3 = v110;
            v22 = v165;
          }
        }

        OUTLINED_FUNCTION_27_17();
        OUTLINED_FUNCTION_23_3();
        OUTLINED_FUNCTION_33_6();
        *__src = v20;
        *&__src[8] = v22;
        memcpy(__dst, __src, 0x80uLL);
        sub_1E3A1486C(__dst);
        memcpy(v191, __dst, 0x81uLL);
        sub_1E3743538(__src, v190, &qword_1ECF30C20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C20);
        sub_1E3A14510();
        sub_1E3A14644();
        sub_1E4201F44();
        memcpy(v185, v190, 0x81uLL);
        sub_1E3A14878(v185);
        memcpy(v191, v185, 0x82uLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C28);
        sub_1E3A14484();
        sub_1E3A14724();
        OUTLINED_FUNCTION_42_32();
        v112 = sub_1E4201F44();
        OUTLINED_FUNCTION_55_19(v112, v113, v114, v115, v116, v117, v118, v119, v132, v136, v140, v144, v106, v108, v156, v161, v165, v170, v174, v178, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v185[0], v185[1], v185[2], v185[3], v185[4], v185[5], v185[6], v185[7], v185[8]);
        v120 = sub_1E3A14864(v186);
        OUTLINED_FUNCTION_39_22(v120, v121, v122, v123, v124, v125, v126, v127, v135, v139, v143, v147, v151, v155, v160, v164, v169, v173, v177, v182, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v185[0], v185[1], v185[2], v185[3], v185[4], v185[5], v185[6], v185[7], v185[8]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C08);
        sub_1E3A143F8();
        sub_1E3A14804();
        OUTLINED_FUNCTION_40_31();
        sub_1E4201F44();

        sub_1E325F69C(__src, &qword_1ECF30C20);
        goto LABEL_40;
      }
    }

    v66 = (v10)(v18);
    if (v66)
    {
      sub_1E373E010(39, v66);
      OUTLINED_FUNCTION_20_17();
      OUTLINED_FUNCTION_33_10();

      type metadata accessor for MediaShowcasingMetadataPresenter(0);
      OUTLINED_FUNCTION_0_112();
      sub_1E3A15394(v67, v68);

      v69 = sub_1E42010C4();
      OUTLINED_FUNCTION_62_12(v69, v70);
      v190[24] = 0;
      goto LABEL_25;
    }

    v72 = (v10)(v71);
    if (v72)
    {
      sub_1E373E010(23, v72);
      OUTLINED_FUNCTION_20_17();
      if (*v8 == _TtC8VideosUI13TextViewModel)
      {

        type metadata accessor for MediaShowcasingMetadataPresenter(0);
        OUTLINED_FUNCTION_0_112();
        sub_1E3A15394(v73, v74);

        v75 = sub_1E42010C4();
        OUTLINED_FUNCTION_62_12(v75, v76);
        v190[24] = 1;
LABEL_25:
        sub_1E3A147B0();
        sub_1E3A14804();
        OUTLINED_FUNCTION_33_10();
        swift_retain_n();
        swift_retain_n();
        OUTLINED_FUNCTION_40_31();
        sub_1E4201F44();
        *v185 = v191[0];
        v185[2] = *&v191[1];
        LOBYTE(v185[3]) = BYTE8(v191[1]);
        sub_1E3A14858(v185);
        memcpy(v191, v185, 0x82uLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C28);
        sub_1E3A14484();
        sub_1E3A14724();
        OUTLINED_FUNCTION_42_32();
        v77 = sub_1E4201F44();
        OUTLINED_FUNCTION_55_19(v77, v78, v79, v80, v81, v82, v83, v84, v132, v136, v140, v144, v148, v152, v156, v161, v165, v170, v174, v178, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v185[0], v185[1], v185[2], v185[3], v185[4], v185[5], v185[6], v185[7], v185[8]);
        v85 = sub_1E3A14864(v186);
        OUTLINED_FUNCTION_39_22(v85, v86, v87, v88, v89, v90, v91, v92, v134, v138, v142, v146, v150, v154, v159, v163, v168, v172, v176, v181, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v185[0], v185[1], v185[2], v185[3], v185[4], v185[5], v185[6], v185[7], v185[8]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C08);
        sub_1E3A143F8();
        OUTLINED_FUNCTION_40_31();
        sub_1E4201F44();
LABEL_26:

        OUTLINED_FUNCTION_33_10();

LABEL_40:
        memcpy(v189, v191, 0x83uLL);
        nullsub_1(v128, v129);
        goto LABEL_41;
      }
    }

    v94 = (v10)(v93);
    if (v94)
    {
      sub_1E373E010(24, v94);
      OUTLINED_FUNCTION_20_17();
      if (*v8 == _TtC8VideosUI13TextViewModel)
      {

        type metadata accessor for MediaShowcasingMetadataPresenter(0);
        OUTLINED_FUNCTION_0_112();
        sub_1E3A15394(v95, v96);

        *v186 = v1;
        v187 = sub_1E42010C4();
        v188 = v97;
        v98 = sub_1E3A143EC(v186);
        OUTLINED_FUNCTION_39_22(v98, v99, v100, v101, v102, v103, v104, v105, v132, v136, v140, v144, v148, v152, v156, v161, v165, v170, v174, v178, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v185[0], v185[1], v185[2], v185[3], v185[4], v185[5], v185[6], v185[7], v185[8]);
        OUTLINED_FUNCTION_33_10();
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C08);
        sub_1E3A143F8();
        sub_1E3A14804();
        OUTLINED_FUNCTION_40_31();
        sub_1E4201F44();
        goto LABEL_26;
      }
    }

    sub_1E3A143C8(v189);
LABEL_41:
    memcpy(v190, v189, 0x83uLL);
    nullsub_1(v130, v131);
    memcpy(v191, v190, 0x83uLL);
    goto LABEL_42;
  }

  v12 = sub_1E373E010(234, v11);

  OUTLINED_FUNCTION_33_10();

  if (!v12)
  {
    goto LABEL_10;
  }

  v14 = TVAppFeature.isEnabled.getter(10);

  if (v14)
  {
    type metadata accessor for MediaShowcasingMetadataPresenter(0);
    OUTLINED_FUNCTION_0_112();
    sub_1E3A15394(v15, v16);

    *v190 = v1;
    *&v190[8] = v8;
    *&v190[16] = sub_1E42010C4();
    *&v190[24] = v17;
    v190[32] = 0;
  }

  else
  {
    *v190 = v1;
    memset(&v190[8], 0, 24);
    v190[32] = 1;
  }

  sub_1E3A1459C();
  sub_1E3A145F0();
  OUTLINED_FUNCTION_40_31();
  sub_1E4201F44();
  *v157 = v191[0];
  *v166 = v191[1];
  *__src = v191[0];
  *&__src[16] = v191[1];
  __src[32] = v191[2];
  sub_1E3A14880(__src);
  memcpy(v191, __src, 0x81uLL);
  v26 = OUTLINED_FUNCTION_7_96();
  sub_1E3A14888(v26, v27, v28, v29, v30);
  v31 = OUTLINED_FUNCTION_7_96();
  sub_1E3A14888(v31, v32, v33, v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C20);
  sub_1E3A14510();
  sub_1E3A14644();
  sub_1E4201F44();
  memcpy(__dst, v190, 0x81uLL);
  sub_1E3A14878(__dst);
  memcpy(v191, __dst, 0x82uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C28);
  sub_1E3A14484();
  sub_1E3A14724();
  OUTLINED_FUNCTION_42_32();
  sub_1E4201F44();
  v36 = memcpy(v185, v189, 0x82uLL);
  OUTLINED_FUNCTION_55_19(v36, v37, v38, v39, v40, v41, v42, v43, v132, v136, v140, v144, v148, v152, v157[0], v157[1], v166[0], v166[1], v174, v3, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v185[0], v185[1], v185[2], v185[3], v185[4], v185[5], v185[6], v185[7], v185[8]);
  v44 = sub_1E3A14864(v186);
  OUTLINED_FUNCTION_39_22(v44, v45, v46, v47, v48, v49, v50, v51, v133, v137, v141, v145, v149, v153, v158, v162, v167, v171, v175, v179, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], *&__src[112], *&__src[120], *&__src[128], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v185[0], v185[1], v185[2], v185[3], v185[4], v185[5], v185[6], v185[7], v185[8]);
  sub_1E3743538(v185, v191, &qword_1ECF30C08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C08);
  sub_1E3A143F8();
  sub_1E3A14804();
  OUTLINED_FUNCTION_40_31();
  sub_1E4201F44();
  v52 = OUTLINED_FUNCTION_7_96();
  sub_1E3A148D0(v52, v53, v54, v55, v56);
  sub_1E325F69C(v185, &qword_1ECF30C08);

  v57 = OUTLINED_FUNCTION_7_96();
  sub_1E3A148D0(v57, v58, v59, v60, v61);
  memcpy(v189, v191, 0x83uLL);
  nullsub_1(v62, v63);
  memcpy(v190, v189, 0x83uLL);
  nullsub_1(v64, v65);
  memcpy(v191, v190, 0x83uLL);
  v3 = v180;
LABEL_42:
  memcpy(v3, v191, 0x83uLL);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A11650()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8);
  OUTLINED_FUNCTION_0_10();
  v68 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v60 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D30);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v71 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D38);
  OUTLINED_FUNCTION_0_10();
  v70 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v69 = v17;
  OUTLINED_FUNCTION_36();
  v19 = (*(v18 + 488))();
  if (v19)
  {
    v20 = sub_1E373E010(234, v19);

    if (v20)
    {
      v67 = v11;
      type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
      v21 = OUTLINED_FUNCTION_71_14();
      if (v21)
      {
        v22 = v21;
        v66 = v2;
        memset(v80, 0, sizeof(v80));
        v23 = 1;
        v81 = 1;
        swift_retain_n();
        v24 = sub_1E382A9B4(v22, v80, 0, v0);
        v25 = *v22;
        v63 = *(*v22 + 392);
        v64 = v25 + 392;
        v26 = v63(v24);
        v65 = v9;
        if (v26)
        {
          OUTLINED_FUNCTION_8();
          v28 = (*(v27 + 248))();
          v23 = v29;
          v26 = v28;
        }

        sub_1E4203DA4();
        if ((v23 & 1) == 0)
        {
          OUTLINED_FUNCTION_38_17();
          if (v31)
          {
            v61 = v30;
            v60[1] = sub_1E4206804();
            v32 = sub_1E42026D4();
            v62 = v26;
            v33 = v32;
            OUTLINED_FUNCTION_108();
          }
        }

        OUTLINED_FUNCTION_27_17();
        OUTLINED_FUNCTION_23_3();
        OUTLINED_FUNCTION_33_6();
        (*(v68 + 32))(v8, v0, v3);
        v34 = memcpy(&v8[*(v72 + 36)], v75, 0x70uLL);
        v35 = v63;
        v36 = v63(v34);

        if (!v36 || (v38 = (*(*v36 + 792))(v37), , v38 == 11))
        {
          v38 = 0;
        }

        memset(v78, 0, sizeof(v78));
        v79 = 1;
        v39 = sub_1E3A151BC();
        sub_1E3A6929C(v38, 0, 0, 1, v78, v72, v39);
        v40 = sub_1E325F69C(v8, &qword_1ECF30D28);
        v41 = v35(v40);

        v43 = v65;
        v42 = v66;
        if (v41)
        {
          OUTLINED_FUNCTION_8();
          (*(v44 + 552))(v76);

          v45 = v67;
          if ((v77 & 1) == 0)
          {
            v51 = OUTLINED_FUNCTION_6();
            sub_1E3952BE8(v51, v52, v53, v54);
          }
        }

        else
        {
          v45 = v67;
        }

        v73 = v72;
        v74 = v39;
        swift_getOpaqueTypeConformance2();
        v55 = v69;
        v56 = v71;
        sub_1E3E361E8();

        (*(v45 + 8))(v56, v43);
        (*(v70 + 32))(v42, v55, v14);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v57, v58, v59, v14);
        OUTLINED_FUNCTION_10_3();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
}

void sub_1E3A11C2C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  OUTLINED_FUNCTION_36();
  v14 = *(v13 + 488);
  v15 = v14();
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = sub_1E373E010(234, v15);

  if (!v16)
  {
    goto LABEL_14;
  }

  v49 = v12;
  type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {

LABEL_14:
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    return;
  }

  v18 = v17;
  v48 = v3;
  v19 = v14();
  if (v19)
  {
    v20 = v19;
    v47 = v8;
    v21 = v19 + 64;
    OUTLINED_FUNCTION_34_33();
    v24 = v23 & v22;
    v26 = (v25 + 63) >> 6;

    v27 = 0;
    v50 = v1;
    if (!v24)
    {
      goto LABEL_7;
    }

    do
    {
      v28 = v27;
LABEL_10:
      v29 = *(*(v20 + 56) + ((v28 << 9) | (8 * __clz(__rbit64(v24)))));

      if (sub_1E385050C())
      {

        v8 = v47;
        goto LABEL_19;
      }

      v24 &= v24 - 1;

      v27 = v28;
    }

    while (v24);
LABEL_7:
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v26)
      {

        v29 = 0;
        v8 = v47;
        goto LABEL_19;
      }

      v24 = *(v21 + 8 * v28);
      ++v27;
      if (v24)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v29 = 0;
LABEL_19:
    OUTLINED_FUNCTION_66_3();
    v36 = *(v35 + 2112);

    v38 = v36(v37);

    sub_1E385D788(v18, v38, v29, 0, v8);
    v39 = *(*v18 + 392);

    v41 = v39(v40);

    if (v41)
    {
      (*(*v41 + 248))(v42);
    }

    sub_1E4203DB4();
    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_23_3();
    sub_1E42015C4();

    v43 = v49;
    sub_1E3A15164(v8, v49);
    memcpy((v43 + *(v9 + 36)), v51, 0x70uLL);
    sub_1E3741EA0(v43, v48, &qword_1ECF30D20);
    v44 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v9);
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3A12088()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_36();
  if ((*(v4 + 392))())
  {
    type metadata accessor for MediaShowcasingMetadataLayout();
    if (swift_dynamicCastClass())
    {
      if (sub_1E3926038())
      {
        OUTLINED_FUNCTION_26_0();
        v6 = (*(v5 + 392))();

        if (v6)
        {
          type metadata accessor for ImageLayout();
          v7 = swift_dynamicCastClass();
          if (v7)
          {
            v8 = v7;
            v9 = sub_1E39258D4();
            if (!v9)
            {
              v9 = *sub_1E418A748();
            }

            v10 = v9;
            (*(*v8 + 2288))();
            *v1 = sub_1E4201D44();
            *(v1 + 8) = 0;
            *(v1 + 16) = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D48);
            sub_1E3A122D0();

            sub_1E3741EA0(v1, v0, &qword_1ECF30D40);
            v11 = OUTLINED_FUNCTION_22_1();
            __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
            OUTLINED_FUNCTION_54_0();
            return;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void sub_1E3A122D0()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v55 = v3;
  v54 = v4;
  v6 = v5;
  v58 = v7;
  v8 = sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_49_2();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CC8);
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v56 = (v20 - v21);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v51 - v23;
  v25 = v6;
  sub_1E381AC64();
  (*(v10 + 104))(v14, *MEMORY[0x1E6981630], v8);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_46_2();
  v26 = sub_1E4203824();

  v27 = OUTLINED_FUNCTION_32_0();
  v28(v27);
  v67 = v26;
  v29 = MEMORY[0x1E6981748];
  v30 = MEMORY[0x1E6981710];
  OUTLINED_FUNCTION_46_2();
  LOBYTE(v8) = OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_46_2();
  v31 = OUTLINED_FUNCTION_18();
  sub_1E3C8F60C(v54, v8 & 1, v31 & 1, v29, v30);

  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_70_11();
  v32 = (v0 + *(v15 + 36));
  v33 = v64;
  *v32 = v63;
  v32[1] = v33;
  v32[2] = v65;
  if (sub_1E3926038())
  {
    OUTLINED_FUNCTION_26_0();
    (*(v34 + 904))();
  }

  sub_1E37AC740();
  v55 = v24;
  sub_1E3E03528();

  sub_1E325F69C(v0, &qword_1ECF29CC0);
  if (sub_1E3CCE24C(*(v2 + 120)) && [objc_opt_self() isMac])
  {
    OUTLINED_FUNCTION_8();
    (*(v35 + 152))(&v66);
    OUTLINED_FUNCTION_68_10();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_69_10();
    v53 = 0;
    v54 = v67;
    OUTLINED_FUNCTION_28_33();
    v61 = 1;
    v60 = v36;
    v59 = v37;
    v38 = 1;
    v39 = v36;
    v40 = v37;
    v62 = 0;
  }

  else
  {
    v54 = 0;
    v52 = 0;
    v51[1] = 0;
    v51[0] = 0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
    v53 = 1;
  }

  v41 = v18;
  v42 = *(v18 + 16);
  v43 = v56;
  v44 = v55;
  v45 = v57;
  v42(v56, v55, v57);
  v46 = v58;
  v47 = OUTLINED_FUNCTION_46_2();
  (v42)(v47);
  v48 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CD0) + 48));
  *v48 = 0;
  v48[1] = v38;
  v48[2] = v54;
  v48[3] = v39;
  v48[4] = v52;
  v48[5] = v40;
  OUTLINED_FUNCTION_53_21(v48);
  *(v49 + 64) = v53;
  v50 = *(v41 + 8);
  v50(v44, v45);
  v50(v43, v45);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3A127CC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_28_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_36();
  v8 = *(v7 + 488);
  v9 = v8();
  if (v9)
  {
    sub_1E373E010(23, v9);
    v9 = OUTLINED_FUNCTION_20_17();
    if (v2)
    {
      if (*v2 == _TtC8VideosUI13TextViewModel)
      {
        goto LABEL_8;
      }
    }
  }

  v10 = (v8)(v9);
  if (v10)
  {
    v11 = sub_1E373E010(24, v10);

    if (v11)
    {
      if (*v11 != _TtC8VideosUI13TextViewModel)
      {
LABEL_12:

        goto LABEL_13;
      }

LABEL_8:
      if (sub_1E3C27528())
      {
        OUTLINED_FUNCTION_106();
        type metadata accessor for TextLayout();
        OUTLINED_FUNCTION_20_2();
        if (swift_dynamicCastClass())
        {

          OUTLINED_FUNCTION_18();
          sub_1E3F23370();
          OUTLINED_FUNCTION_33_10();

          (*(v5 + 32))(v0, v1, v3);
          v12 = OUTLINED_FUNCTION_22_1();
          __swift_storeEnumTagSinglePayload(v12, v13, v14, v3);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void sub_1E3A12A1C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_28_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30C00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  OUTLINED_FUNCTION_36();
  v15 = (*(v14 + 488))();
  if (v15)
  {
    v16 = sub_1E373E010(22, v15);

    if (v16)
    {
      if (*v16 == _TtC8VideosUI13TextViewModel && sub_1E3C27528())
      {
        OUTLINED_FUNCTION_106();
        type metadata accessor for TextLayout();
        OUTLINED_FUNCTION_20_2();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_26_0();
          v18 = *(v17 + 152);
          v39 = v16;
          v18(v43);
          sub_1E4203DA4();
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_36_0();
          OUTLINED_FUNCTION_70_11();
          v37 = v45;
          v38 = v43[5];
          v35 = v48;
          v36 = v47;
          v42 = 1;
          v41 = v44;
          v40 = v46;
          OUTLINED_FUNCTION_18();
          sub_1E3F23370();
          HIDWORD(v32) = v42;
          v33 = v41;
          v34 = v40;
          v19 = *(v6 + 16);
          v19(v10, v13, v4);
          *v1 = 0;
          *(v1 + 8) = BYTE4(v32);
          *(v1 + 16) = v38;
          *(v1 + 24) = v33;
          *(v1 + 32) = v37;
          *(v1 + 40) = v34;
          v20 = v35;
          *(v1 + 48) = v36;
          *(v1 + 56) = v20;
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B2B8);
          v19(v1 + *(v21 + 48), v10, v4);

          v22 = *(v6 + 8);
          v22(v13, v4);
          v23 = OUTLINED_FUNCTION_124();
          (v22)(v23);
          sub_1E3741EA0(v1, v0, &qword_1ECF30C00);
          v24 = OUTLINED_FUNCTION_22_1();
          __swift_storeEnumTagSinglePayload(v24, v25, v26, v2);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
}

void sub_1E3A12DA4()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_2();
  type metadata accessor for MediaTags(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BE8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v59 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v58 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8_4();
  v19 = *v0;
  if ((*(**v0 + 392))())
  {
    v55 = v2;
    type metadata accessor for MediaShowcasingMetadataLayout();
    v20 = OUTLINED_FUNCTION_71_14();
    if (v20)
    {
      v21 = v20;
      v54 = v11;
      v56 = v4;
      v22 = *(*v19 + 552);
      v23 = *(v20 + 104);
      if (v22())
      {
        v67 = &unk_1F5D7BE68;
        v68 = &off_1F5D7BC48;
        LOBYTE(v64) = 6;
        sub_1E3F9F164(&v64);

        __swift_destroy_boxed_opaque_existential_1(&v64);
        if (*(&v63 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
          if (swift_dynamicCast())
          {
            v24 = *(v64 + 16);

            if (v24)
            {
              [v23 margin];
              sub_1E4203DA4();
              OUTLINED_FUNCTION_59();
              OUTLINED_FUNCTION_36_0();
              OUTLINED_FUNCTION_70_11();
              v53 = v64;
              v52 = v66;
              v51 = v68;
              v50 = v69;
              LOBYTE(v62) = 1;
              v61 = v65;
              v60 = v67;
              v25 = v0[4];
              v49 = v23;

              sub_1E3820C20(v26, v49, 0, 0, v25, v10);
              v27 = [v49 textLayout];
              v28 = [v27 blendMode];

              sub_1E3A1339C(v28, *(v21 + 120));
              sub_1E3A15394(&qword_1EE23BD30, type metadata accessor for MediaTags);
              sub_1E37B93F0();
              sub_1E3A14348(v10);
              v57 = v19[3];
              v29 = (v58 + *(v54 + 52));
              *v29 = v19[2];
              v29[1] = v57;
              v30 = v62;
              sub_1E3743538(v58, v59, &qword_1ECF30BE8);
              *v55 = 0;
              *(v55 + 8) = v30;
              *(v55 + 16) = v53;
              *(v55 + 24) = v61;
              *(v55 + 32) = v52;
              *(v55 + 40) = v60;
              *(v55 + 48) = v51;
              *(v55 + 56) = v50;
              v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BF8);
              sub_1E3743538(v59, v55 + *(v31 + 48), &qword_1ECF30BE8);

              v32 = OUTLINED_FUNCTION_46_2();
              sub_1E325F69C(v32, v33);
              sub_1E325F69C(v59, &qword_1ECF30BE8);
              sub_1E3741EA0(v55, v1, &qword_1ECF30BE0);
              OUTLINED_FUNCTION_114();
              __swift_storeEnumTagSinglePayload(v34, v35, v36, v5);
              v37 = v56;
LABEL_19:
              sub_1E3741EA0(v1, v37, &qword_1ECF30BF0);
              v46 = OUTLINED_FUNCTION_22_1();
              __swift_storeEnumTagSinglePayload(v46, v47, v48, v17);
              OUTLINED_FUNCTION_25_2();
              return;
            }
          }

          else
          {
          }

          v37 = v56;
LABEL_18:
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v43, v44, v45, v5);
          goto LABEL_19;
        }
      }

      else
      {

        v62 = 0u;
        v63 = 0u;
      }

      v37 = v56;
      sub_1E325F69C(&v62, &unk_1ECF296E0);
      goto LABEL_18;
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
}

uint64_t sub_1E3A1339C(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  if (sub_1E3CCE24C(a2) && (TVAppFeature.isEnabled.getter(20) & 1) != 0)
  {
    return 0;
  }

  if (a1 == 27)
  {
    type metadata accessor for StageMediaShowcasingMetadataView.StageMediaTagsView();
    sub_1E379EBAC(v13);
    (*(v6 + 104))(v10, *MEMORY[0x1E697DBA8], v4);
    v14 = sub_1E4200B34();
    v15 = *(v6 + 8);
    v15(v10, v4);
    v15(v13, v4);
    if (v14)
    {
      return 27;
    }

    else
    {
      return 26;
    }
  }

  return a1;
}

void sub_1E3A13518()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - v14;
  v16 = (*(*v2 + 488))(v13);
  if (v16)
  {
    v17 = sub_1E373E010(15, v16);

    if (v17)
    {
      if (*v17 == _TtC8VideosUI13TextViewModel && sub_1E3C27528())
      {
        OUTLINED_FUNCTION_106();
        type metadata accessor for TextLayout();
        OUTLINED_FUNCTION_20_2();
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v19 = v18;
          v60 = v17;
          OUTLINED_FUNCTION_26_0();
          (*(v20 + 152))(&v68);
          if (![objc_opt_self() isTV])
          {
            goto LABEL_20;
          }

          if ((*(*v2 + 552))())
          {
            v79 = &unk_1F5D7BE68;
            v80 = &off_1F5D7BC48;
            LOBYTE(v76) = 6;
            sub_1E3F9F164(&v76);

            __swift_destroy_boxed_opaque_existential_1(&v76);
            if (*(&v75 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
              if (swift_dynamicCast())
              {
                v21 = *(v76 + 16);

                if (v21)
                {
LABEL_20:
                  sub_1E4203DA4();
                  OUTLINED_FUNCTION_59();
                  OUTLINED_FUNCTION_36_0();
                  OUTLINED_FUNCTION_70_11();
                  v59 = v68;
                  v58 = v70;
                  v57 = v72;
                  v56 = v73;
                  v67 = 1;
                  v66 = v69;
                  v65 = v71;
                  OUTLINED_FUNCTION_18();
                  sub_1E3F23370();
                  *&v15[*(v7 + 36)] = 256;
                  if ((*(*v2 + 392))())
                  {
                    type metadata accessor for MediaShowcasingMetadataLayout();
                    v27 = swift_dynamicCastClass();
                    if (v27 && (sub_1E3CCE22C(*(v27 + 120)) & 1) != 0)
                    {
                      OUTLINED_FUNCTION_8();
                      (*(v28 + 152))(&v74);
                      sub_1E4203DA4();
                      OUTLINED_FUNCTION_59();
                      OUTLINED_FUNCTION_36_0();
                      sub_1E4200D94();
                      v55 = v76;
                      v29 = v77;
                      v54 = v78;
                      v30 = v79;
                      v53 = v80;
                      v52 = v81;

                      v51 = 0;
                      v63 = 1;
                      v62 = v29;
                      v61 = v30;
                      v48 = 1;
                      v49 = v29;
                      v50 = v30;
                      v64 = 0;
LABEL_26:
                      v31 = v67;
                      v32 = v66;
                      v33 = v65;
                      v34 = OUTLINED_FUNCTION_124();
                      sub_1E3743538(v34, v35, &qword_1ECF29D98);
                      *v0 = 0;
                      *(v0 + 8) = v31;
                      *(v0 + 16) = v59;
                      *(v0 + 24) = v32;
                      *(v0 + 32) = v58;
                      *(v0 + 40) = v33;
                      v36 = v56;
                      *(v0 + 48) = v57;
                      *(v0 + 56) = v36;
                      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BD8);
                      sub_1E3743538(v11, v0 + *(v37 + 48), &qword_1ECF29D98);
                      v38 = *(v37 + 64);

                      v39 = v0 + v38;
                      v40 = v48;
                      *v39 = 0;
                      *(v39 + 8) = v40;
                      v41 = v49;
                      *(v39 + 16) = v55;
                      *(v39 + 24) = v41;
                      v42 = v50;
                      *(v39 + 32) = v54;
                      *(v39 + 40) = v42;
                      v43 = v52;
                      *(v39 + 48) = v53;
                      *(v39 + 56) = v43;
                      *(v39 + 64) = v51;
                      sub_1E325F69C(v15, &qword_1ECF29D98);
                      sub_1E325F69C(v11, &qword_1ECF29D98);
                      sub_1E3741EA0(v0, v4, &qword_1ECF30BD0);
                      v44 = OUTLINED_FUNCTION_22_1();
                      __swift_storeEnumTagSinglePayload(v44, v45, v46, v5);
                      OUTLINED_FUNCTION_54_0();
                      return;
                    }
                  }

                  v55 = 0;
                  v54 = 0;
                  v53 = 0;
                  v52 = 0;
                  v50 = 0;
                  v49 = 0;
                  v48 = 0;
                  v51 = 1;
                  goto LABEL_26;
                }
              }

LABEL_19:
              (*(*v19 + 1592))(23);
              goto LABEL_20;
            }
          }

          else
          {
            v74 = 0u;
            v75 = 0u;
          }

          sub_1E325F69C(&v74, &unk_1ECF296E0);
          goto LABEL_19;
        }
      }
    }
  }

  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

void sub_1E3A13C14()
{
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v40 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30BC8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  OUTLINED_FUNCTION_36();
  v15 = (*(v14 + 488))();
  if (v15)
  {
    v16 = sub_1E373E010(30, v15);

    if (v16)
    {
      if (*v16 == _TtC8VideosUI13TextViewModel && sub_1E3C27528())
      {
        OUTLINED_FUNCTION_106();
        type metadata accessor for TextLayout();
        OUTLINED_FUNCTION_20_2();
        v17 = swift_dynamicCastClass();
        v39 = v16;
        if (v17)
        {
          OUTLINED_FUNCTION_18();
          sub_1E3F23370();
          OUTLINED_FUNCTION_8();
          v19 = *(v18 + 152);
          v37 = v18 + 152;
          v38 = v19;

          v38(&v41, v20);

          if (v42)
          {
            OUTLINED_FUNCTION_5_8();
          }

          else
          {
            v26.n128_f64[0] = OUTLINED_FUNCTION_6();
            j_nullsub_1(v26, v27, v28, v29);
          }

          OUTLINED_FUNCTION_3();
          v30 = sub_1E4202734();

          v31 = OUTLINED_FUNCTION_124();
          v32(v31);
          v33 = (v1 + *(v4 + 36));
          *v33 = v30;
          OUTLINED_FUNCTION_11_4(v33);
          sub_1E3741EA0(v1, v10, &qword_1ECF28CC0);
          *(v10 + *(v6 + 36)) = 256;
          sub_1E3741EA0(v10, v13, &qword_1ECF30BC8);
          sub_1E3741EA0(v13, v0, &qword_1ECF30BC8);
          v34 = OUTLINED_FUNCTION_22_1();
          __swift_storeEnumTagSinglePayload(v34, v35, v36, v6);
          OUTLINED_FUNCTION_10_3();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

unint64_t sub_1E3A13FA0()
{
  result = qword_1EE289900;
  if (!qword_1EE289900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30BB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30BA0);
    sub_1E3A0F020();
    swift_getOpaqueTypeConformance2();
    sub_1E3A15394(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289900);
  }

  return result;
}

uint64_t type metadata accessor for StageMediaShowcasingMetadataView.StageMediaTagsView()
{
  result = qword_1EE291B40;
  if (!qword_1EE291B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3A1412C()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E3A141B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E3A141B8()
{
  if (!qword_1EE289EC0)
  {
    sub_1E4200B44();
    v0 = sub_1E4200B94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289EC0);
    }
  }
}

uint64_t sub_1E3A14348(uint64_t a1)
{
  v2 = type metadata accessor for MediaTags(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1E3A143A4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 130) = -2;
  *(a1 + 128) = 0;
  return result;
}

double sub_1E3A143C8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 130) = -1;
  *(a1 + 128) = 0;
  return result;
}

unint64_t sub_1E3A143F8()
{
  result = qword_1EE288AF8;
  if (!qword_1EE288AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C08);
    sub_1E3A14484();
    sub_1E3A14724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AF8);
  }

  return result;
}

unint64_t sub_1E3A14484()
{
  result = qword_1EE288C08;
  if (!qword_1EE288C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C10);
    sub_1E3A14510();
    sub_1E3A14644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C08);
  }

  return result;
}

unint64_t sub_1E3A14510()
{
  result = qword_1EE288FD0;
  if (!qword_1EE288FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C18);
    sub_1E3A1459C();
    sub_1E3A145F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FD0);
  }

  return result;
}

unint64_t sub_1E3A1459C()
{
  result = qword_1EE291DE0[0];
  if (!qword_1EE291DE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE291DE0);
  }

  return result;
}

unint64_t sub_1E3A145F0()
{
  result = qword_1EE291D58[0];
  if (!qword_1EE291D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE291D58);
  }

  return result;
}

unint64_t sub_1E3A14644()
{
  result = qword_1EE289B70;
  if (!qword_1EE289B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C20);
    sub_1E3A146D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B70);
  }

  return result;
}

unint64_t sub_1E3A146D0()
{
  result = qword_1EE246870;
  if (!qword_1EE246870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE246870);
  }

  return result;
}

unint64_t sub_1E3A14724()
{
  result = qword_1EE288FC8;
  if (!qword_1EE288FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C28);
    sub_1E3A147B0();
    sub_1E3A14804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FC8);
  }

  return result;
}

unint64_t sub_1E3A147B0()
{
  result = qword_1EE291F00[0];
  if (!qword_1EE291F00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE291F00);
  }

  return result;
}

unint64_t sub_1E3A14804()
{
  result = qword_1EE291E78;
  if (!qword_1EE291E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE291E78);
  }

  return result;
}

uint64_t sub_1E3A14888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

uint64_t sub_1E3A148D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1E3A14934()
{
  result = qword_1EE289B88;
  if (!qword_1EE289B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C48);
    sub_1E3A149C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B88);
  }

  return result;
}

unint64_t sub_1E3A149C0()
{
  result = qword_1EE24E8B8;
  if (!qword_1EE24E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24E8B8);
  }

  return result;
}

unint64_t sub_1E3A14A14()
{
  result = qword_1EE289B38;
  if (!qword_1EE289B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C30);
    sub_1E3A15394(qword_1EE23BBE8, type metadata accessor for TextBadge);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B38);
  }

  return result;
}

void *sub_1E3A14AE4(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3A14B3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E3A14B78(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E3A14BC0()
{
  result = qword_1EE289730;
  if (!qword_1EE289730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30BC8);
    sub_1E38C9F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289730);
  }

  return result;
}

unint64_t sub_1E3A14C4C()
{
  result = qword_1EE288340;
  if (!qword_1EE288340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30CD8);
    sub_1E3A1558C(&qword_1EE288348, &qword_1ECF30BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288340);
  }

  return result;
}

unint64_t sub_1E3A14CFC()
{
  result = qword_1EE288350;
  if (!qword_1EE288350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30BF0);
    sub_1E3A1558C(&qword_1EE288360, &unk_1ECF30BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288350);
  }

  return result;
}

unint64_t sub_1E3A14DAC()
{
  result = qword_1EE288368;
  if (!qword_1EE288368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30CE8);
    sub_1E3A1558C(&qword_1EE288370, &qword_1ECF30C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288368);
  }

  return result;
}

unint64_t sub_1E3A14E8C()
{
  result = qword_1EE288A90;
  if (!qword_1EE288A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D00);
    sub_1E3A143F8();
    sub_1E3A14804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A90);
  }

  return result;
}

unint64_t sub_1E3A14F18()
{
  result = qword_1EE288F58;
  if (!qword_1EE288F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C40);
    sub_1E3A14934();
    sub_1E3A14A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F58);
  }

  return result;
}

unint64_t sub_1E3A14FA4()
{
  result = qword_1EE2882F8;
  if (!qword_1EE2882F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30C60);
    sub_1E3A1558C(&qword_1EE288308, &unk_1ECF30C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2882F8);
  }

  return result;
}

unint64_t sub_1E3A15054()
{
  result = qword_1EE288378;
  if (!qword_1EE288378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D18);
    sub_1E3A1558C(&qword_1EE288380, &qword_1ECF30C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288378);
  }

  return result;
}

uint64_t sub_1E3A15164(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

unint64_t sub_1E3A151BC()
{
  result = qword_1EE289C68;
  if (!qword_1EE289C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D28);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C68);
  }

  return result;
}

uint64_t sub_1E3A15260(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3A152D8()
{
  result = qword_1EE289B68;
  if (!qword_1EE289B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D20);
    sub_1E3A15394(qword_1EE23E7D8, type metadata accessor for SportsCanonicalBannerScoreboardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B68);
  }

  return result;
}

uint64_t sub_1E3A15394(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3A153D8()
{
  result = qword_1ECF30D58;
  if (!qword_1ECF30D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D28);
    sub_1E3A151BC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30D58);
  }

  return result;
}

unint64_t sub_1E3A154DC()
{
  result = qword_1EE2884C0;
  if (!qword_1EE2884C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D68);
    sub_1E3A1558C(&qword_1EE2884C8, &qword_1ECF30D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2884C0);
  }

  return result;
}

uint64_t sub_1E3A1558C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_53_21(uint64_t a1@<X8>)
{
  v2 = *(v1 - 352);
  *(a1 + 48) = *(v1 - 344);
  *(a1 + 56) = v2;
}

unint64_t OUTLINED_FUNCTION_62_12(unint64_t result, unint64_t a2)
{
  STACK[0x308] = v2;
  STACK[0x310] = result;
  STACK[0x318] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_68_10()
{

  return sub_1E4203DA4();
}

uint64_t OUTLINED_FUNCTION_69_10()
{

  return sub_1E4200D94();
}

uint64_t OUTLINED_FUNCTION_70_11()
{

  return sub_1E4200D94();
}

uint64_t sub_1E3A15658()
{
  result = sub_1E39DFFC8();
  v1 = 0.0;
  if (result)
  {
    v1 = 15.0;
  }

  qword_1ECF713F0 = *&v1;
  return result;
}

char *sub_1E3A15688()
{
  v1 = OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView_profileView;
  type metadata accessor for RootSideBarProfileView();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = &v0[OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView____lazy_storage___accountSettingsVoiceOverString];
  v3 = type metadata accessor for PadRootSideBarProfileView();
  *v2 = 0;
  *(v2 + 1) = 0;
  v22.receiver = v0;
  v22.super_class = v3;
  v4 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView_profileView;
  v6 = *&v4[OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView_profileView];
  v7 = v4;
  [v7 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E4299720;
  v9 = sub_1E42001D4();
  v10 = MEMORY[0x1E69DC2B0];
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  v11 = sub_1E41FFDE4();
  v12 = MEMORY[0x1E69DC0A0];
  *(v8 + 48) = v11;
  *(v8 + 56) = v12;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0);
  sub_1E4206EC4();
  swift_unknownObjectRelease();

  v13 = *&v4[v5];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = v13;

  v16 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x140);

  v16(sub_1E3A15948, v14);

  type metadata accessor for Accessibility();
  sub_1E40A7DC8();
  sub_1E37FB7F0(v17, v18, v7, &selRef_setVuiAccessibilityIdentifier_);

  sub_1E3A15A68();
  sub_1E37FB7F0(v19, v20, v7, &selRef_vui_setAccessibilityText_);

  return v7;
}

void sub_1E3A15948()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidateIntrinsicContentSize];
  }
}

void sub_1E3A159B4()
{
  v1 = OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView_profileView;
  type metadata accessor for RootSideBarProfileView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView____lazy_storage___accountSettingsVoiceOverString);
  *v2 = 0;
  v2[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3A15A68()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView____lazy_storage___accountSettingsVoiceOverString);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView____lazy_storage___accountSettingsVoiceOverString + 8))
  {
    goto LABEL_5;
  }

  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E3741090(0xD000000000000019, 0x80000001E425ECD0, v2);
    v6 = v5;

    if (v6)
    {
      *v1 = v4;
      v1[1] = v6;

LABEL_5:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1E3A15B34()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PadRootSideBarProfileView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  [v0 bounds];
  Height = CGRectGetHeight(v9);
  if (qword_1ECF52D90 != -1)
  {
    OUTLINED_FUNCTION_0_113();
  }

  v2 = Height - *&qword_1ECF713F0;
  [v0 bounds];
  v3.n128_u64[0] = CGRectGetWidth(v10);
  v4.n128_u64[0] = 0;
  v5.n128_u64[0] = 0;
  v6.n128_f64[0] = v2;
  return [*&v0[OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView_profileView] setFrame_];
}

double sub_1E3A15C40(double a1)
{
  [*(v1 + OBJC_IVAR____TtC8VideosUI25PadRootSideBarProfileView_profileView) vui:a1 sizeThatFits:0.0];
  if (qword_1ECF52D90 != -1)
  {
    OUTLINED_FUNCTION_0_113();
  }

  return a1;
}

id sub_1E3A15DA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PadRootSideBarProfileView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3A15E48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result & 1;
  return result;
}

double sub_1E3A15EFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3A15FE4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3A16078(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A30);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = OUTLINED_FUNCTION_11_6();
  v7(v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_1E3A161A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_1();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3A16208@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3A162B0(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3A1632C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_1E3A1644C()
{
  v1 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel_tooltipUtility;
  OUTLINED_FUNCTION_15_0();
  return *(v0 + v1);
}

uint64_t sub_1E3A16484(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel_tooltipUtility;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3A16504()
{
  OUTLINED_FUNCTION_14_0();
  swift_weakAssign();
}

void (*sub_1E3A16558(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel_viewContainerRef;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_11_3();
  v3[3] = swift_weakLoadStrong();
  return sub_1E376E4FC;
}

uint64_t sub_1E3A165D4()
{
  v0 = swift_allocObject();
  sub_1E3A1662C();
  return v0;
}

void sub_1E3A1662C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v45 = v3;
  v44 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_49_2();
  v17 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel__showTooltip;
  LOBYTE(v48) = 0;
  sub_1E4200634();
  v38 = v17;
  v39 = v15;
  v18 = *(v15 + 32);
  v41 = v13;
  v18(v2 + v17, v1, v13);
  v19 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel__tooltipOpacity;
  v48 = 0;
  sub_1E4200634();
  v42 = v9;
  v43 = v7;
  v20 = *(v9 + 32);
  v40 = v19;
  v20(v2 + v19, v12, v7);
  v21 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel_tooltipUtility;
  *(v2 + OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel_tooltipUtility) = 2;
  swift_weakInit();
  v22 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel_autostartTooltipUtility;
  *(v2 + v22) = sub_1E395AC48(1) & 1;
  v23 = v44;

  v24 = v6;
  v25 = v23;
  sub_1E3AC5824();
  type metadata accessor for SportsLiveActivitiesAutostartController();
  v26 = sub_1E410B4E4();
  sub_1E410B510();
  v27 = OUTLINED_FUNCTION_33_11();
  *(v2 + 16) = sub_1E410B550(v27, v28, v29, v26, v30);

  LOBYTE(v22) = sub_1E410B5AC();

  if (v22)
  {

    v31 = 1;
  }

  else
  {
    sub_1E4205004();
    v32 = sub_1E4204FF4();
    v33 = sub_1E4204F74();

    LOBYTE(v32) = sub_1E3862230(v24, v25, v33);

    if (v32)
    {
      v34 = 2;
      goto LABEL_7;
    }

    v35 = v38;
    OUTLINED_FUNCTION_11_3();
    (*(v39 + 8))(v2 + v35, v41);
    LOBYTE(v47) = 1;
    sub_1E4200634();
    swift_endAccess();
    v36 = v40;
    OUTLINED_FUNCTION_11_3();
    (*(v42 + 8))(v2 + v36, v43);
    v47 = 0x3FF0000000000000;
    sub_1E4200634();
    swift_endAccess();
    v31 = 0;
  }

  v34 = sub_1E395AC48(v31) & 1;
LABEL_7:
  swift_beginAccess();
  *(v2 + v21) = v34;
  if (v34 == 2)
  {
    v37 = 0;
  }

  else
  {
    v37 = sub_1E395A5E4();
  }

  OUTLINED_FUNCTION_11_3();
  v46 = v37 & 1;
  sub_1E4200634();
  swift_endAccess();
  OUTLINED_FUNCTION_25_2();
}

BOOL sub_1E3A16A10()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 280))();
  if (v1 == 2)
  {
    return 0;
  }

  v3 = v1 & 1;

  return sub_1E34AF508(v3, 1);
}

uint64_t sub_1E3A16A7C()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 280))();
  if (result != 2)
  {
    v2 = result & 1;

    return sub_1E395A698(v2);
  }

  return result;
}

uint64_t sub_1E3A16AE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_50_1();
  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  sub_1E4206434();

  v8 = sub_1E4206424();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  sub_1E376FE58(0, 0, v0, &unk_1E42B3818, v9);
}

uint64_t sub_1E3A16BF8()
{
  OUTLINED_FUNCTION_24();
  v0[8] = v1;
  sub_1E4206434();
  v0[9] = sub_1E4206424();
  v3 = sub_1E42063B4();
  v0[10] = v3;
  v0[11] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E3A16C8C, v3, v2);
}

uint64_t sub_1E3A16C8C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v0[13] = *(Strong + 16);

    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_1E3A16D80;

    return sub_1E410BB7C();
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v4();
  }
}

uint64_t sub_1E3A16D80()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  v2 = *v0;
  *(v2 + 120) = v3;
  *(v2 + 128) = v4;

  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1E3A16ECC, v6, v5);
}

uint64_t sub_1E3A16ECC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 128);

  v2 = *(v0 + 120);
  if (v1)
  {
    sub_1E3A203D0(v2, 1);
  }

  else
  {
    v3 = *(v0 + 96);
    if (v2)
    {
      sub_1E3A15EC0();
      v4 = sub_1E3A15FE4();
      v5 = (*(*v3 + 304))(v4);
      if (v5)
      {
        v6 = v5;
        OUTLINED_FUNCTION_5_0();
        v7 = *(v6 + 16);

        v7(v8);
      }
    }
  }

  OUTLINED_FUNCTION_54();

  return v9();
}

uint64_t sub_1E3A16FE4()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E37E1058;

  return sub_1E3A16BF8();
}

uint64_t sub_1E3A17074()
{

  v1 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel__showTooltip;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v5 = OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel__tooltipOpacity;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0);
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(v0 + v5);
  v4(v0 + OBJC_IVAR____TtC8VideosUI39SportsCanonicalBannerAccessoryViewModel__tooltipHasPreviouslyShown, v2);
  swift_weakDestroy();
  return v0;
}

uint64_t sub_1E3A17160()
{
  sub_1E3A17074();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3A171B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SportsCanonicalBannerAccessoryViewModel(0);
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t sub_1E3A17238(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3A17280(uint64_t a1, uint64_t a2)
{
  if (*(a2 + *(type metadata accessor for SportsCanonicalBannerAccessoryView(0) + 32)) && (type metadata accessor for ViewModel(), OUTLINED_FUNCTION_26_40(), sub_1E3A17238(v2, v3), , v4 = sub_1E4205E84(), , (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_6_78();
    v8 = (*(v5 + 1216))(v6, v7) ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_1E3A173B0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1E32AE9B0(a3);
  v7 = result;
  v8 = 0;
  v9 = v4 & 0xC000000000000001;
  v12 = v4;
  v13 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v7 == v8)
    {

      return v15;
    }

    if (v9)
    {
      result = MEMORY[0x1E6911E60](v8, v4);
      v10 = result;
    }

    else
    {
      if (v8 >= *(v13 + 16))
      {
        goto LABEL_16;
      }

      v10 = *(v4 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v14 = v10;
    v11 = a1(&v14);
    if (v3)
    {
    }

    if (v11)
    {
      sub_1E4207544();
      sub_1E4207584();
      v4 = v12;
      sub_1E4207594();
      result = sub_1E4207554();
    }

    else
    {
    }

    ++v8;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1E3A17538(char a1)
{
  v2 = TVAppFeature.isEnabled.getter(2);
  if ((a1 & 1) == 0)
  {
    if (v2)
    {
      v3 = 0;
      goto LABEL_7;
    }

    return 0;
  }

  if ((v2 & 1) == 0 || (sub_1E3A7E390(0) & 1) == 0)
  {
    return 0;
  }

  v3 = 1;
LABEL_7:

  return sub_1E3A7E390(v3);
}

BOOL sub_1E3A175A4()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (sub_1E3A17538(v3 == 1) & 1) != 0 && (v4 = type metadata accessor for SportsCanonicalBannerAccessoryView(0), OUTLINED_FUNCTION_6_78(), ((*(v5 + 1192))()) && (OUTLINED_FUNCTION_8(), ((*(v6 + 1216))() & 1) == 0))
  {
    return *(v1 + *(v4 + 32)) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3A17698()
{
  if (sub_1E3A175A4() && (OUTLINED_FUNCTION_41_27(), OUTLINED_FUNCTION_6_78(), ((*(v0 + 136))() & 1) != 0))
  {
    OUTLINED_FUNCTION_8();
    if ((*(v1 + 352))())
    {
      v2 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_8();
      v2 = (*(v4 + 232))() ^ 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1E3A1774C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v87 = v11 - v10;
  v12 = OUTLINED_FUNCTION_138();
  v13 = type metadata accessor for SportsCanonicalBannerAccessoryView(v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = (v16 - v15);
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_15(v13[7]);
  OUTLINED_FUNCTION_66_15(v13[8]);
  OUTLINED_FUNCTION_66_15(v13[9]);
  OUTLINED_FUNCTION_66_15(v13[10]);
  v18 = v17 + v13[13];
  type metadata accessor for CGRect(0);
  sub_1E42038E4();
  v19 = v97;
  v20 = v96[1];
  *v18 = v96[0];
  *(v18 + 1) = v20;
  *(v18 + 4) = v19;
  OUTLINED_FUNCTION_66_15(v13[15]);
  v21 = v17 + v13[16];
  v22 = sub_1E42038E4();
  v23 = *(&v96[0] + 1);
  *v21 = v96[0];
  *(v21 + 1) = v23;
  *(v17 + v13[12]) = v1;
  v24 = (*(*v5 + 392))(v22);
  if (v24)
  {
    if (*v24 == _TtC8VideosUI37LegacySportsCanonicalBannerViewLayout)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for LegacySportsCanonicalBannerViewLayout();
  v24 = sub_1E37C2700();
LABEL_5:
  v25 = v7;
  v86 = v8;
  *(v17 + v13[11]) = v24;
  v80 = v17;
  *(v17 + v13[14]) = v3;
  v26 = *(*v5 + 464);

  v28 = v26(v27);
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v89 = sub_1E32AE9B0(v29);
  if (v89)
  {
    v77 = v3;
    v78 = v13;
    v79 = v25;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v95 = v29 & 0xC000000000000001;
    v92 = v29 & 0xFFFFFFFFFFFFFF8;
    v90 = 0;
    v91 = v29 + 32;
    v33 = v80;
    v34 = v87;
    v88 = v29;
    v35 = v89;
    do
    {
      if (v95)
      {
        v36 = MEMORY[0x1E6911E60](v30, v29);
      }

      else
      {
        if (v30 >= *(v92 + 16))
        {
          goto LABEL_65;
        }

        v36 = *(v91 + 8 * v30);
      }

      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        return;
      }

      v38 = *(v36 + 98);
      switch(v38)
      {
        case 11:
          if (*v36 != _TtC8VideosUI13TextViewModel)
          {

            v36 = 0;
          }

          *(v33 + v83) = v36;
          v31 = v36;
          break;
        case 17:
          if (*v36 != _TtC8VideosUI13TextViewModel)
          {

            v36 = 0;
          }

          *(v33 + v85) = v36;
          break;
        case 59:

          break;
        case 91:
          OUTLINED_FUNCTION_111();
          v40 = (*(v39 + 464))();

          *(v33 + v82) = v40;
          if (v40)
          {
            v41 = sub_1E32AE9B0(v40);
            for (i = 0; ; ++i)
            {
              if (v41 == i)
              {

                v43 = 0;
                goto LABEL_53;
              }

              if ((v40 & 0xC000000000000001) != 0)
              {
                v43 = MEMORY[0x1E6911E60](i, v40);
              }

              else
              {
                if (i >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_64;
                }

                v43 = *(v40 + 8 * i + 32);
              }

              if (__OFADD__(i, 1))
              {
                goto LABEL_63;
              }

              sub_1E3742F1C();
              sub_1E4206254();
              sub_1E4206254();
              if (!*&v96[0] && *(&v96[0] + 1) == 0)
              {
                break;
              }

              v45 = sub_1E42079A4();

              if (v45)
              {
                goto LABEL_52;
              }
            }

LABEL_52:

LABEL_53:
            v56 = v80;
          }

          else
          {

            v56 = v33;
            v43 = 0;
          }

          *(v56 + v81) = v43;
          v34 = v87;
          v29 = v88;
          v35 = v89;
          v33 = v56;
          break;
        case 97:

          *(v33 + v84) = v36;
          v32 = v36;
          break;
        case 234:

          type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
          v90 = swift_dynamicCastClass();
          if (!v90)
          {

            v90 = 0;
          }

          break;
        default:
          v94 = v32;
          v93 = v31;
          sub_1E3E37F30();
          OUTLINED_FUNCTION_36_5();
          v46(v34);

          v47 = sub_1E41FFC94();
          v48 = sub_1E4206814();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            *&v96[0] = v50;
            *v49 = 136315138;
            sub_1E384EE08(v38);
            v53 = v33;
            v54 = sub_1E3270FC8(v51, v52, v96);

            *(v49 + 4) = v54;
            v33 = v53;
            _os_log_impl(&dword_1E323F000, v47, v48, "SportsCanonicalBannerAccessoryView: unhandled view model type [%s]", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v50);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();

            OUTLINED_FUNCTION_36_5();
            v34 = v87;
          }

          else
          {

            OUTLINED_FUNCTION_36_5();
          }

          v55(v34, v86);
          v31 = v93;
          v32 = v94;
          v29 = v88;
          v35 = v89;
          break;
      }
    }

    while (v30 != v35);

    if (v90)
    {
      v57 = (v33 + *(v78 + 20));
      type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
      OUTLINED_FUNCTION_21_49();
      sub_1E3A17238(v58, v59);

      v60 = sub_1E42010C4();
      v62 = v61;
      *v57 = v60;
      v57[1] = v61;
      v63 = (*(*v90 + 1096))();
      (*(*v90 + 1224))(v63);
      type metadata accessor for SportsCanonicalBannerAccessoryViewModel(0);
      swift_allocObject();
      sub_1E3A1662C();
      v64 = (v33 + *(v78 + 24));
      OUTLINED_FUNCTION_19_54();
      sub_1E3A17238(v65, v66);
      *v64 = sub_1E42010C4();
      v64[1] = v67;
      v68 = *(*v67 + 312);

      v68(v69);
      (*(*v62 + 1288))(v77);

      sub_1E3A1FE98(v33, v79, type metadata accessor for SportsCanonicalBannerAccessoryView);
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v78);
      sub_1E3A1FEF4();
      goto LABEL_61;
    }

    v13 = v78;
    v73 = v33;
  }

  else
  {

    v73 = v80;
  }

  sub_1E325F69C(v73, &qword_1ECF28BB8);

  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v13);
LABEL_61:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A182D8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = type metadata accessor for SportsCanonicalBannerAccessoryView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D88);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  v14 = *(v0 + *(v5 + 68));
  if (v14)
  {
    v35 = v3;
    MEMORY[0x1EEE9AC00](v13);
    v33 = v0;

    v15 = sub_1E3A173B0(sub_1E3A2048C, (&v34 - 4), v14);
    v16 = sub_1E3741880(v15);

    v36 = v16;
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_118();
    sub_1E3A1FE98(v0, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_0_114();
    sub_1E3A1FE3C(v8, v20 + v18, v21);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1E3A1E838;
    *(v22 + 24) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30D90);
    sub_1E374AD40(&qword_1ECF28A48, &qword_1ECF28A38);
    OUTLINED_FUNCTION_26_40();
    sub_1E3A17238(v23, v24);
    v33 = sub_1E3A1E89C();
    sub_1E4203B34();
    (*(v11 + 32))(v35, v1, v9);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v9);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }
}

void sub_1E3A18620()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v89 = v4;
  v90 = v3;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = type metadata accessor for SportsCanonicalBannerAccessoryView(0);
  OUTLINED_FUNCTION_0_10();
  v80 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DF0);
  OUTLINED_FUNCTION_0_10();
  v84 = v13;
  v85 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v79 = v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v83 = v17;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DA8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  v86 = v23;
  v24 = sub_1E3A175A4();
  v25 = *(v0 + v6[8]);
  if (v24 && v25 && v25 == v90)
  {
    v78 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = *(v0 + v6[5] + 8);
    v27 = *(*v26 + 2240);
    v75 = *v26 + 2240;
    v76 = v27;
    v72 = v27();
    v28 = (*(*v26 + 2264))();
    v74 = v21;
    if (v28)
    {
      v29 = v28;
      if (object_getClass(v28) == _TtC8VideosUI27Tier1PlusLiveUpdateProvider)
      {
        OUTLINED_FUNCTION_5_0();
        HIDWORD(v71) = v29[120];
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
    }

    HIDWORD(v71) = 0;
LABEL_15:
    v38 = v2 + v6[13];
    v39 = *(v38 + 32);
    v40 = *(v38 + 16);
    v94 = *v38;
    v95 = v40;
    *&v96 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DF8);
    sub_1E4203914();
    OUTLINED_FUNCTION_1_118();
    v77 = v41;
    v42 = v78;
    sub_1E3A1FE98(v2, v78, v43);
    v80 = *(v80 + 80);
    v44 = (v80 + 16) & ~v80;
    v73 = v44;
    swift_allocObject();
    OUTLINED_FUNCTION_0_114();
    v46 = v45 + v44;
    v48 = v47;
    sub_1E3A1FE3C(v42, v46, v49);

    sub_1E37DBE34();
    v76();
    sub_1E3848584();

    sub_1E3A1EAD4();
    v50 = v79;
    View.accessibilityIdentifier(key:location:)();
    sub_1E325F69C(v1, &qword_1ECF30DC0);
    v51 = v2 + v6[16];
    v52 = *v51;
    v53 = *(v51 + 8);
    LOBYTE(v94) = v52;
    *(&v94 + 1) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
    sub_1E42038F4();
    v54 = v91[0];
    KeyPath = swift_getKeyPath();
    v56 = swift_allocObject();
    *(v56 + 16) = (v54 & 1) == 0;
    v57 = v83;
    (*(v84 + 32))(v83, v50, v85);
    v58 = (v57 + *(v82 + 36));
    *v58 = KeyPath;
    v58[1] = sub_1E37E09AC;
    v58[2] = v56;
    v59 = v78;
    sub_1E3A1FE98(v2, v78, v77);
    v60 = v73;
    v61 = swift_allocObject();
    sub_1E3A1FE3C(v59, v61 + v60, v48);
    v62 = v57;
    v63 = v74;
    sub_1E3741EA0(v62, v74, &qword_1ECF30DB8);
    v64 = v86;
    v65 = (v63 + *(v87 + 36));
    *v65 = sub_1E3A1EDD8;
    v65[1] = v61;
    v65[2] = 0;
    v65[3] = 0;
    sub_1E3741EA0(v63, v64, &qword_1ECF30DA8);
    OUTLINED_FUNCTION_40_21();
    sub_1E3743538(v66, v67, v68);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DE0);
    sub_1E3A1E954();
    OUTLINED_FUNCTION_20_52();
    sub_1E3A1F924(v69, &qword_1ECF30DE0, &unk_1E42B38A8, v70);
    OUTLINED_FUNCTION_49_5();
    sub_1E4201F44();
    sub_1E325F69C(v64, &qword_1ECF30DA8);
    goto LABEL_16;
  }

  if (v25 && v25 == v90 || (TVAppFeature.isEnabled.getter(10) & 1) != 0)
  {
    bzero(v93, 0xF8uLL);
  }

  else
  {

    v30 = sub_1E37C1C0C();
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 2;
    v100 = 0;
    v102 = 0u;
    v103 = 0u;
    v101 = 1;
    v104 = 0;
    v92 = 0;
    memset(v91, 0, sizeof(v91));
    v31 = sub_1E383C8A8();
    v32 = sub_1E383C8B0();
    sub_1E383C8FC(v90, v30, &v94, v32, &v101, 0, 1, v91, v93, v31);
  }

  OUTLINED_FUNCTION_40_21();
  sub_1E3743538(v33, v34, v35);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DE0);
  sub_1E3A1E954();
  OUTLINED_FUNCTION_20_52();
  sub_1E3A1F924(v36, &qword_1ECF30DE0, &unk_1E42B38A8, v37);
  sub_1E4201F44();
  sub_1E325F69C(v93, &qword_1ECF30DE0);
LABEL_16:
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3A18DC4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v51 = v6 - v5;
  OUTLINED_FUNCTION_138();
  v7 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v50 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v49 = v11 - v10;
  v12 = OUTLINED_FUNCTION_138();
  v13 = type metadata accessor for SportsCanonicalBannerAccessoryView(v12);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v52 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  OUTLINED_FUNCTION_6_78();
  v25 = (*(v24 + 136))();
  if (v25)
  {
    v47 = v3;
    MEMORY[0x1EEE9AC00](v25);
    *(&v42 - 2) = v0;
    sub_1E4203E44();
    v46 = v7;
    v45 = v1;
    sub_1E4200FE4();

    sub_1E3280A90(0, &qword_1EE23B1D0);
    v43 = sub_1E4206A04();
    sub_1E4204004();
    sub_1E4204074();
    v44 = *(v16 + 8);
    v44(v20, v52);
    OUTLINED_FUNCTION_1_118();
    sub_1E3A1FE98(v0, &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
    v27 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_0_114();
    sub_1E3A1FE3C(&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v27, v30);
    v53[4] = sub_1E3A20300;
    v53[5] = v28;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v53[2] = v31;
    v53[3] = &block_descriptor_128;
    v32 = _Block_copy(v53);

    v33 = v49;
    sub_1E4203FE4();
    v53[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_23_39();
    sub_1E3A17238(v34, v35);
    v36 = OUTLINED_FUNCTION_33_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(v36);
    OUTLINED_FUNCTION_47();
    sub_1E374AD40(v37, v38);
    v39 = v51;
    v40 = v45;
    sub_1E42072E4();
    v41 = v43;
    MEMORY[0x1E69112E0](v23, v33, v39, v32);
    _Block_release(v32);

    (*(v47 + 8))(v39, v40);
    (*(v50 + 8))(v33, v46);
    v44(v23, v52);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A1926C()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  result = type metadata accessor for SportsCanonicalBannerAccessoryView(0);
  v5 = result;
  if (v3 == 1)
  {
    if (*(v1 + *(result + 60)))
    {
      MEMORY[0x1EEE9AC00](result);
      OUTLINED_FUNCTION_57_11();
      *(v6 - 16) = v1;

      OUTLINED_FUNCTION_164();
      v10 = sub_1E3A173B0(v7, v8, v9);
      sub_1E32AE9B0(v10);
    }
  }

  else
  {
    sub_1E401C478();
    v11 = v1 + *(v5 + 52);
    v12 = *(v11 + 32);
    v13 = *(v11 + 16);
    v15[0] = *v11;
    v15[1] = v13;
    v16 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DF8);
    sub_1E4203914();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A860);
    MEMORY[0x1E690E3F0](v15, v14);
  }

  return result;
}

void *sub_1E3A19434@<X0>(void *a1@<X8>)
{
  if (sub_1E3A175A4() && (sub_1E3A17698() & 1) != 0 && ((sub_1E3A1926C(), v3 > 0.0) || (OUTLINED_FUNCTION_41_27(), OUTLINED_FUNCTION_6_78(), ((*(v4 + 352))() & 1) != 0)) && (v5 = type metadata accessor for SportsCanonicalBannerAccessoryView(0), OUTLINED_FUNCTION_6_78(), (*(v6 + 280))() != 2))
  {
    if (*(v1 + *(v5 + 32)))
    {
      *&__src[0] = *(v1 + *(v5 + 32));
      sub_1E3A19588();
    }

    else
    {
      sub_1E3A1EE70(v11);
    }

    memcpy(__dst, v11, sizeof(__dst));
    nullsub_1(v8, v9);
    memcpy(__src, __dst, 0xC1uLL);
  }

  else
  {
    sub_1E3A1EE5C(__src);
  }

  return memcpy(a1, __src, 0xC1uLL);
}

void sub_1E3A19588()
{
  OUTLINED_FUNCTION_21_5();
  v38 = v3;
  v5 = v4;
  v39 = v6;
  v7 = type metadata accessor for SportsCanonicalBannerAccessoryView(0);
  v36 = *(v7 - 8);
  v8 = *(v36 + 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = *v5;

  sub_1E3A1926C();
  v18 = v17;
  sub_1E3746E10(v15);
  LOBYTE(v5) = sub_1E3B0352C();
  (*(v11 + 8))(v15, v9);
  OUTLINED_FUNCTION_1_118();
  v37 = v19;
  v20 = OUTLINED_FUNCTION_75();
  sub_1E3A1FE98(v20, v21, v22);
  v23 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_0_114();
  v36 = v25;
  sub_1E3A1FE3C(&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v23, v27);
  sub_1E3A19888(v16, v38 & 1, v5 & 1, sub_1E3A20160, v24, v40, v18);
  memcpy(v41, v40, 0x51uLL);
  type metadata accessor for BubbleTipModelBox();
  v28 = swift_allocObject();
  sub_1E3A1EECC(v40, v42);
  sub_1E3A1BCE8();
  LOBYTE(v16) = sub_1E4202744();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  LOBYTE(v42[0]) = 0;
  OUTLINED_FUNCTION_6_78();
  v30 = (*(v29 + 184))();
  v31 = OUTLINED_FUNCTION_75();
  sub_1E3A1FE98(v31, v32, v37);
  v33 = swift_allocObject();
  sub_1E3A1FE3C(&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v23, v36);
  memcpy(v42, v41, 0x58uLL);
  v42[11] = v28;
  v42[12] = 0;
  LOBYTE(v42[13]) = v16;
  *&v42[14] = v18;
  v42[15] = v0;
  v42[16] = v1;
  v42[17] = v2;
  LOBYTE(v42[18]) = 0;
  *&v42[19] = v30;
  v42[20] = sub_1E3A201AC;
  v42[21] = v33;
  v42[22] = 0;
  v42[23] = 0;
  LOBYTE(v42[24]) = 1;
  nullsub_1(v34, v35);
  memcpy(v39, v42, 0xC1uLL);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3A19888@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v13 = *(*a1 + 464);

  v14 = v13();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  result = sub_1E32AE9B0(v15);
  v37 = a4;
  v38 = a5;
  if (!result)
  {
    v19 = a1;
    goto LABEL_16;
  }

  v17 = result;
  if (result >= 1)
  {
    v18 = 0;
    v19 = a1;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = OUTLINED_FUNCTION_159();
        v21 = MEMORY[0x1E6911E60](v20);
      }

      else
      {
        v21 = *(v15 + 8 * v18 + 32);
      }

      if (*(v21 + 98) == 80)
      {

        v19 = v21;
      }

      else
      {
      }

      ++v18;
    }

    while (v17 != v18);
LABEL_16:

    if (a2)
    {
      v22 = 6;
    }

    else
    {
      v22 = 3;
    }

    if (a2)
    {
      v23 = 7;
    }

    else
    {
      v23 = 4;
    }

    v46[3] = &unk_1F5D5D528;
    v46[4] = &off_1F5D5C858;
    LOBYTE(v46[0]) = v22;
    v44 = &unk_1F5D5D528;
    v45 = &off_1F5D5C858;
    LOBYTE(v43[0]) = v23;
    v24 = __swift_project_boxed_opaque_existential_1(v46, &unk_1F5D5D528);
    v25 = *(*v19 + 776);
    v25(v41, v24, &unk_1F5D5D528, &off_1F5D5C858);
    if (v42)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_29:
        v31 = a3;
        goto LABEL_30;
      }

      v27 = v39;
      v26 = v40;
      v28 = v44;
      v29 = v45;
      v30 = __swift_project_boxed_opaque_existential_1(v43, v44);
      v25(v41, v30, v28, v29);
      if (v42)
      {
        v31 = a3;
        if (swift_dynamicCast())
        {
          v33 = v39;
          v32 = v40;
LABEL_33:
          v34 = a2 & 1;
          v35 = sub_1E34AF508(a2 & 1, 0);

          __swift_destroy_boxed_opaque_existential_1(v43);
          __swift_destroy_boxed_opaque_existential_1(v46);
          result = swift_allocObject();
          *(result + 16) = v34;
          *a6 = v27;
          *(a6 + 8) = v26;
          *(a6 + 16) = v33;
          *(a6 + 24) = v32;
          *(a6 + 32) = sub_1E3A1EE78;
          *(a6 + 40) = result;
          *(a6 + 48) = v37;
          *(a6 + 56) = v38;
          *(a6 + 64) = v35;
          *(a6 + 72) = a7;
          *(a6 + 80) = v31 & 1;
          return result;
        }

LABEL_30:
        v33 = 0xD00000000000003ELL;
        if (a2)
        {
          v32 = 0x80000001E426C9D0;
          v33 = 0xD000000000000040;
          v26 = 0xEC00000073657461;
          v27 = 0x647055206576694CLL;
        }

        else
        {
          v26 = 0x80000001E426CA20;
          v32 = 0x80000001E426CA40;
          v27 = 0x1000000000000018;
        }

        goto LABEL_33;
      }
    }

    sub_1E325F69C(v41, &unk_1ECF296E0);
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

void sub_1E3A19C0C()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v1;
  v58 = v5;
  v6 = type metadata accessor for SportsCanonicalBannerAccessoryView(0);
  OUTLINED_FUNCTION_0_10();
  v55 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v56 = v9;
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E00);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_50_1();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_49_2();
  v18 = *(v4 + *(v6 + 60));
  if (v18)
  {
    MEMORY[0x1EEE9AC00](v17);
    OUTLINED_FUNCTION_57_11();
    *(v19 - 16) = v4;

    v20 = sub_1E3A173B0(sub_1E3A2048C, v2, v18);
    v21 = sub_1E32AE9B0(v20);
  }

  else
  {
    v21 = 0;
  }

  v59[0] = v21;
  LOBYTE(v59[1]) = v18 == 0;
  v60[0] = 1;
  v22 = sub_1E414A658(v59, v60, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
  if (v22)
  {
    if (v18)
    {
      MEMORY[0x1EEE9AC00](v22);
      v52 = v4;

      v23 = sub_1E3A173B0(sub_1E3A2048C, &v50, v18);
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1E6911E60](0, v23);
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v24 = *(v23 + 32);
      }
    }

    else
    {
      v24 = 0;
    }

    v59[3] = &unk_1F5D5D0A8;
    v59[4] = &off_1F5D5C758;
    LOBYTE(v59[0]) = 2;
    type metadata accessor for ViewModel();
    v25 = j__OUTLINED_FUNCTION_18();
    sub_1E39C3418(v59, v25 & 1, v24);

    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  *v0 = sub_1E4201D44();
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E18);
  sub_1E3A1A160();
  v52 = sub_1E4203D84();
  v53 = v26;
  v51 = 0;
  v50 = 0x7FF0000000000000;
  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  sub_1E3741EA0(v0, v14, &qword_1ECF30E00);
  memcpy(&v14[*(v54 + 36)], v59, 0x70uLL);
  sub_1E37C1AE4();
  OUTLINED_FUNCTION_30();
  (*(v27 + 176))(v60);
  v28 = v60[0];
  v29 = v60[1];
  v30 = v60[2];
  v31 = v60[3];

  if (v61)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v32.n128_u64[0] = v28;
    v33.n128_u64[0] = v29;
    v34.n128_u64[0] = v30;
    v35.n128_u64[0] = v31;
    j_nullsub_1(v32, v33, v34, v35);
  }

  OUTLINED_FUNCTION_3();
  v36 = v57;
  v37 = v55;
  v38 = sub_1E4202734();
  v39 = OUTLINED_FUNCTION_159();
  sub_1E3741EA0(v39, v40, v41);
  v42 = (v3 + *(v15 + 36));
  *v42 = v38;
  OUTLINED_FUNCTION_11_4(v42);
  OUTLINED_FUNCTION_1_118();
  v43 = OUTLINED_FUNCTION_75();
  sub_1E3A1FE98(v43, v44, v45);
  v46 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_0_114();
  sub_1E3A1FE3C(v36, v47 + v46, v48);
  sub_1E3A1EF54();
  v49 = OUTLINED_FUNCTION_51_1();
  sub_1E40AB6EC(v49 & 1);

  sub_1E325F69C(v3, &qword_1ECF30E10);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3A1A160()
{
  OUTLINED_FUNCTION_9_4();
  v151 = v4;
  v6 = v5;
  v141 = v7;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v134 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EC8);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v153 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30ED0);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v148 = v19;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30ED8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v147 = v21;
  v22 = OUTLINED_FUNCTION_138();
  v23 = type metadata accessor for SportsCanonicalBannerAccessoryView(v22);
  OUTLINED_FUNCTION_0_10();
  v143 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v144 = v26;
  v145 = (&v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = OUTLINED_FUNCTION_138();
  v28 = type metadata accessor for SportsAccessoryButtonLayout(v27);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v146 = v30 - v31;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_19_7();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EE0);
  v34 = OUTLINED_FUNCTION_17_2(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4_6();
  v140 = v35 - v36;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_25_3();
  v152 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v135 = v40;
  v136 = v39;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  v137 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_26_2();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8);
  v46 = OUTLINED_FUNCTION_17_2(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4_6();
  v138 = v47 - v48;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_25_3();
  v154 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EF0);
  v53 = OUTLINED_FUNCTION_17_2(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_4_6();
  v150 = v54 - v55;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_25_3();
  v155 = v57;
  v156 = v23;
  v58 = *(v6 + *(v23 + 28));
  v142 = v14;
  if (v58)
  {
    *&v161[0] = v58;
    v59 = v6;
    sub_1E3A1AE74();
  }

  else
  {
    v59 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EF8);
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  }

  sub_1E3A1F924(&qword_1ECF30F00, &qword_1ECF30EE8, &unk_1E42B3E30, sub_1E3A1FB68);
  sub_1E4203374();
  v64 = OUTLINED_FUNCTION_33_11();
  sub_1E325F69C(v64, v65);
  if (v151)
  {
    v66 = v59;
    if (*(v59 + v156[10]))
    {

      OUTLINED_FUNCTION_18();
      sub_1E3F23370();
      v130 = sub_1E4202754();
      v67 = sub_1E3C27528();
      v68 = v145;
      if (v67 && (OUTLINED_FUNCTION_30(), (*(v69 + 152))(v162), , (v163 & 1) == 0))
      {
        sub_1E4200A54();
        v131 = v73;
        v132 = v72;
        v128 = v75;
        v129 = v74;

        v70 = 0;
        *&v76 = v131;
        *(&v76 + 1) = v128;
        v131 = v76;
        *&v76 = v132;
        *(&v76 + 1) = v129;
        v132 = v76;
      }

      else
      {

        v131 = 0u;
        v132 = 0u;
        v70 = 1;
      }

      (*(v135 + 32))(v0, v137, v136);
      v77 = v0 + *(v43 + 36);
      *v77 = v130;
      v78 = v132;
      *(v77 + 24) = v131;
      *(v77 + 8) = v78;
      *(v77 + 40) = v70;
      sub_1E3741EA0(v0, v154, &qword_1ECF28CC0);
      v71 = 0;
    }

    else
    {
      v71 = 1;
      v68 = v145;
    }
  }

  else
  {
    v71 = 1;
    v66 = v59;
    v68 = v145;
  }

  v79 = v143;
  __swift_storeEnumTagSinglePayload(v154, v71, 1, v43);
  v80 = *(v66 + v156[11]);
  v81 = sub_1E3952BE0(v80[22], v80[23], v80[24], v80[25]);
  v82 = sub_1E3952BD8(v80[22], v80[23], v80[24]);
  sub_1E3746E10(v1 + *(v28 + 32));
  v83 = sub_1E37C1C0C();
  v84 = sub_1E37C1AE4();
  OUTLINED_FUNCTION_1_118();
  sub_1E3A1FE98(v66, v68, v85);
  v86 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v87 = swift_allocObject();
  OUTLINED_FUNCTION_0_114();
  sub_1E3A1FE3C(v68, v88 + v86, v89);
  *v1 = v81;
  v1[1] = v82;
  *(v1 + 2) = v84;
  *(v1 + 3) = v83;
  v90 = (v1 + *(v28 + 36));
  *v90 = sub_1E3A1FDDC;
  v90[1] = v87;
  v91 = v146;
  sub_1E3A1FE3C(v1, v146, type metadata accessor for SportsAccessoryButtonLayout);
  v92 = v148;
  sub_1E3A1FE98(v91, v148, type metadata accessor for SportsAccessoryButtonLayout);
  v93 = v147;
  sub_1E3743538(v92, v147, &qword_1ECF30ED0);
  sub_1E3A1B2C4(v93 + *(v149 + 44));
  sub_1E325F69C(v92, &qword_1ECF30ED0);
  sub_1E3A1FEF4();
  sub_1E3A1FF48();
  sub_1E4203374();
  sub_1E325F69C(v93, &qword_1ECF30ED8);
  v94 = *(v66 + v156[9]);
  v145 = v80;
  if (!v94)
  {
    v106 = 1;
    v105 = 0;
LABEL_40:
    if (v151)
    {
      v111 = 1;
    }

    else
    {
      v111 = 1;
      if (*(v66 + v156[10]))
      {

        v112 = sub_1E4201D44();
        v113 = v134;
        *v134 = v112;
        *(v113 + 8) = 0;
        *(v113 + 16) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F58);
        sub_1E3A1B5F0();

        sub_1E3741EA0(v113, v153, &qword_1ECF30EC0);
        v111 = 0;
      }
    }

    __swift_storeEnumTagSinglePayload(v153, v111, 1, v139);
    v114 = [objc_opt_self() currentDevice];
    v115 = [v114 userInterfaceIdiom];

    if (v115 == 1)
    {
      sub_1E3A2007C(v161);
    }

    else
    {
      sub_1E3A19434(v157);
      v116 = sub_1E4202724();
      sub_1E4200A54();
      OUTLINED_FUNCTION_3();
      LOBYTE(v161[0]) = 0;
      memcpy(v160, v157, 0xC8uLL);
      LOBYTE(v160[25]) = v116;
      *&v160[26] = v81;
      *&v160[27] = v82;
      v160[28] = v2;
      v160[29] = v3;
      LOBYTE(v160[30]) = 0;
      nullsub_1(v117, v118);
      memcpy(v161, v160, 0xF1uLL);
    }

    v119 = v150;
    sub_1E3743538(v155, v150, &qword_1ECF30EF0);
    v159[0] = v119;
    v120 = v154;
    v121 = v138;
    sub_1E3743538(v154, v138, &qword_1ECF2F9A8);
    v159[1] = v121;
    v122 = v152;
    v123 = v140;
    sub_1E3743538(v152, v140, &qword_1ECF30EE0);
    v158[0] = v106;
    v158[1] = v105;
    v158[2] = 0;
    v159[2] = v123;
    v159[3] = v158;
    v124 = v153;
    v125 = v142;
    sub_1E3743538(v153, v142, &qword_1ECF30EC8);
    v159[4] = v125;
    memcpy(v157, v161, 0xF1uLL);
    v159[5] = v157;
    sub_1E3A1B4AC(v159, v141);
    sub_1E325F69C(v124, &qword_1ECF30EC8);
    sub_1E325F69C(v122, &qword_1ECF30EE0);
    sub_1E325F69C(v120, &qword_1ECF2F9A8);
    sub_1E325F69C(v155, &qword_1ECF30EF0);
    memcpy(v160, v157, 0xF1uLL);
    sub_1E325F69C(v160, &qword_1ECF30F50);
    v126 = OUTLINED_FUNCTION_33_11();
    sub_1E325F69C(v126, v127);
    sub_1E3A2002C(v158[0]);
    sub_1E325F69C(v123, &qword_1ECF30EE0);
    sub_1E325F69C(v121, &qword_1ECF2F9A8);
    sub_1E325F69C(v150, &qword_1ECF30EF0);
    OUTLINED_FUNCTION_10_3();
    return;
  }

  OUTLINED_FUNCTION_8();
  v96 = *(v95 + 392);

  v98 = v96(v97);
  v99 = v98;
  if (v98 && *v98 != _TtCC8VideosUI37LegacySportsCanonicalBannerViewLayout26ScoreAccessoryDetailLayout)
  {

    v99 = 0;
  }

  OUTLINED_FUNCTION_8();
  v101 = (*(v100 + 464))();
  if (v101)
  {
    v102 = v101;
  }

  else
  {
    v102 = MEMORY[0x1E69E7CC0];
  }

  v103 = sub_1E32AE9B0(v102);
  v133 = v66;
  v149 = v99;
  if (!v103)
  {
    v105 = 0;
    v106 = 0;
LABEL_39:

    v66 = v133;
    goto LABEL_40;
  }

  v104 = v103;
  if (v103 >= 1)
  {
    v105 = 0;
    v106 = 0;
    v107 = 0;
    while (1)
    {
      if ((v102 & 0xC000000000000001) != 0)
      {
        v108 = OUTLINED_FUNCTION_159();
        v109 = MEMORY[0x1E6911E60](v108);
      }

      else
      {
        v109 = *(v102 + 8 * v107 + 32);
      }

      v110 = *(v109 + 98);
      if (v110 == 17)
      {

        if (*v109 != _TtC8VideosUI13TextViewModel)
        {
          v105 = 0;
          goto LABEL_34;
        }

        v105 = v109;
      }

      else
      {
        if (v110 != 23)
        {
          goto LABEL_34;
        }

        if (*v109 != _TtC8VideosUI13TextViewModel)
        {
          v106 = 0;
LABEL_34:

          goto LABEL_35;
        }

        v106 = v109;
      }

LABEL_35:
      if (v104 == ++v107)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
}

void sub_1E3A1AE74()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21[-v5];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21[-v10];
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  *&v6[*(v3 + 44)] = 256;
  type metadata accessor for SportsCanonicalBannerAccessoryView(0);
  v12 = sub_1E37C192C();
  (*(*v12 + 248))();

  sub_1E4203DA4();
  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  sub_1E3741EA0(v6, v0, &qword_1ECF29D98);
  memcpy((v0 + *(v22 + 36)), v23, 0x70uLL);
  sub_1E37588FC();
  v13 = sub_1E4202AB4();
  KeyPath = swift_getKeyPath();
  sub_1E3741EA0(v0, v11, &qword_1ECF30F28);
  v15 = &v11[*(v8 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  LOBYTE(v13) = sub_1E4202754();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v11, v2, &qword_1ECF30F18);
  v16 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EF8) + 36));
  *v16 = v13;
  OUTLINED_FUNCTION_11_4(v16);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3A1B1A4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_9_5();
  v5 = type metadata accessor for SportsCanonicalBannerAccessoryView(v4);
  if (!*(a2 + *(v5 + 60)))
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](v5);

  OUTLINED_FUNCTION_40_21();
  v13[1] = sub_1E3A173B0(v6, v7, v8);
  v11 = v2;
  v12 = 0;
  v9 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  sub_1E374AD40(&qword_1EE23B540, &unk_1ECF2C790);
  sub_1E38D2054(&v11, v13);

  return v13[0];
}

uint64_t sub_1E3A1B2C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E70);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_7();
  sub_1E3A182D8();
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    sub_1E3A19434(v22);
    nullsub_1(v8, v9);
    memcpy(v23, v22, 0xC1uLL);
  }

  else
  {
    sub_1E3A200E4(v23);
  }

  OUTLINED_FUNCTION_164();
  sub_1E3743538(v10, v11, v12);
  memcpy(v20, v23, sizeof(v20));
  OUTLINED_FUNCTION_40_21();
  sub_1E3743538(v13, v14, v15);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F70) + 48);
  memcpy(v21, v20, 0xC1uLL);
  memcpy((a1 + v16), v20, 0xC1uLL);
  sub_1E3743538(v21, v22, &qword_1ECF30F78);
  sub_1E325F69C(v1, &qword_1ECF30E70);
  memcpy(v22, v20, 0xC1uLL);
  sub_1E325F69C(v22, &qword_1ECF30F78);
  v17 = OUTLINED_FUNCTION_67_0();
  return sub_1E325F69C(v17, v18);
}

uint64_t sub_1E3A1B4AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3743538(*a1, a2, &qword_1ECF30EF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F68);
  sub_1E3743538(a1[1], a2 + v4[12], &qword_1ECF2F9A8);
  sub_1E3743538(a1[2], a2 + v4[16], &qword_1ECF30EE0);
  v5 = (a2 + v4[20]);
  v7 = a1[3];
  v6 = a1[4];
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  *v5 = *v7;
  v5[1] = v9;
  v5[2] = v10;
  sub_1E3743538(v6, a2 + v4[24], &qword_1ECF30EC8);
  v11 = v4[28];
  v12 = a1[5];
  memcpy(__dst, v12, 0xF1uLL);
  memmove((a2 + v11), v12, 0xF1uLL);
  sub_1E3A20090(v8);
  return sub_1E3743538(__dst, &v14, &qword_1ECF30F50);
}

void sub_1E3A1B5F0()
{
  OUTLINED_FUNCTION_93();
  v42 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_49_2();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for ScaledBaselineRelativeSpacer();
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  if (sub_1E3C27528())
  {
    OUTLINED_FUNCTION_30();
    (*(v18 + 152))(&v43);

    if (v44)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v43;
    }
  }

  else
  {
    v19 = 0.0;
  }

  sub_1E40E4CD4(v17, v19);
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  v20 = sub_1E4202754();
  if (sub_1E3C27528() && (OUTLINED_FUNCTION_30(), (*(v21 + 152))(&v45), , (v46 & 1) == 0))
  {
    sub_1E4200A54();
    v22 = 0;
    *(&v24 + 1) = v23;
    *(&v26 + 1) = v25;
    v38 = v24;
    v39 = v26;
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v22 = 1;
  }

  v27 = OUTLINED_FUNCTION_159();
  v28(v27);
  v29 = &v6[*(v40 + 36)];
  *v29 = v20;
  v30 = v39;
  *(v29 + 24) = v38;
  *(v29 + 8) = v30;
  v29[40] = v22;
  sub_1E3741EA0(v6, v9, &qword_1ECF28CC0);
  sub_1E3A1FE98(v17, v14, type metadata accessor for ScaledBaselineRelativeSpacer);
  OUTLINED_FUNCTION_59_1();
  sub_1E3743538(v31, v32, v33);
  v34 = v42;
  sub_1E3A1FE98(v14, v42, type metadata accessor for ScaledBaselineRelativeSpacer);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F60);
  sub_1E3743538(v0, v34 + *(v35 + 48), &qword_1ECF28CC0);
  v36 = OUTLINED_FUNCTION_11_6();
  sub_1E325F69C(v36, v37);
  sub_1E3A1FEF4();
  sub_1E325F69C(v0, &qword_1ECF28CC0);
  sub_1E3A1FEF4();
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3A1B960()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v30[1] = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v30[0] = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = type metadata accessor for SportsCanonicalBannerAccessoryView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v16 = sub_1E4206A04();
  OUTLINED_FUNCTION_1_118();
  sub_1E3A1FE98(v1, v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_0_114();
  sub_1E3A1FE3C(v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18, v21);
  v31[4] = sub_1E3A1FA8C;
  v31[5] = v19;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v31[2] = v22;
  v31[3] = &block_descriptor_42;
  v23 = _Block_copy(v31);

  sub_1E4203FE4();
  v31[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_23_39();
  sub_1E3A17238(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E374AD40(v26, v27);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v12, v6, v23);
  _Block_release(v23);

  v28 = OUTLINED_FUNCTION_11_6();
  v29(v28);
  (*(v8 + 8))(v12, v30[0]);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A1BC80(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_1();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1E3A1BCB8()
{

  v0 = OUTLINED_FUNCTION_35_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3A1BCE8()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F80);
  OUTLINED_FUNCTION_0_10();
  v45 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_50_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F88);
  OUTLINED_FUNCTION_0_10();
  v47 = v11;
  v48 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30F90);
  OUTLINED_FUNCTION_0_10();
  v51 = v16;
  v52 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v50 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v53 = v1;
  *(v1 + 16) = MEMORY[0x1E69E7CD0];
  v49 = v1 + 16;
  v24 = *v3;
  v23 = *(v3 + 8);
  v26 = *(v3 + 16);
  v25 = *(v3 + 24);
  v27 = objc_allocWithZone(MEMORY[0x1E698C8C0]);

  v28 = sub_1E3A1E654(v24, v23, v26, v25);
  [v28 setStyle_];
  sub_1E3280A90(0, &qword_1ECF30F98);
  v44 = sub_1E3A1C340(0, 0, 2);
  [v28 addButtonAction_];
  sub_1E3A1C3BC(0xD000000000000010, 0x80000001E426CC30, v22);
  v29 = sub_1E41FE414();
  v30 = 0;
  if (__swift_getEnumTagSinglePayload(v22, 1, v29) != 1)
  {
    v30 = sub_1E41FE364();
    (*(*(v29 - 8) + 8))(v22, v29);
  }

  [v28 setIconURL_];

  sub_1E41FFB04();
  swift_allocObject();
  v31 = v28;
  *(v53 + 24) = sub_1E41FFAF4();
  if (*(v3 + 64))
  {
    v32 = 0.5;
    if ((*(v3 + 80) & 1) == 0)
    {
      v32 = *(v3 + 72);
    }

    v33 = objc_allocWithZone(MEMORY[0x1E698CC78]);

    [v33 initWithArrowDirection:0 relativeArrowOffset:v32];
    sub_1E41FFAE4();
  }

  sub_1E41FFB14();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v34 = sub_1E4206A04();
  v54 = v34;
  sub_1E42069A4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  sub_1E374AD40(&qword_1ECF30FA0, &qword_1ECF30F80);
  sub_1E3746800();
  v39 = v46;
  sub_1E42007D4();
  sub_1E325F69C(v7, &unk_1ECF2D2B0);

  (*(v45 + 8))(v0, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30FA8);
  sub_1E374AD40(&qword_1ECF30FB0, &qword_1ECF30F88);
  v40 = v50;
  v41 = v48;
  sub_1E42006C4();
  (*(v47 + 8))(v14, v41);
  v42 = swift_allocObject();
  memcpy((v42 + 16), v3, 0x51uLL);
  sub_1E3A1EECC(v3, &v54);
  sub_1E374AD40(&qword_1ECF30FB8, &qword_1ECF30F90);
  v43 = v52;
  sub_1E4200844();

  (*(v51 + 8))(v40, v43);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();

  sub_1E3A20100(v3);

  OUTLINED_FUNCTION_54_0();
}

id sub_1E3A1C340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_1E4205ED4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() actionWithTitle:v4 style:a3];

  return v5;
}

uint64_t sub_1E3A1C3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - v8;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1E42074B4();

  strcpy(v14, "systemimage://");
  HIBYTE(v14[1]) = -18;
  MEMORY[0x1E69109E0](a1, a2);

  sub_1E41FE404();

  v10 = sub_1E41FE414();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    sub_1E325F69C(v9, &unk_1ECF363C0);
    v11 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_164();
    v12();
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v11, 1, v10);
}

id sub_1E3A1C530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 8) = v3;
  return sub_1E3A2013C(v2, v3);
}

uint64_t sub_1E3A1C548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if (*(a1 + 8) == 1)
  {
    v11 = *a1;
    v12 = sub_1E3E37F30();
    (*(v6 + 16))(v10, v12, v4);
    v13 = v11;
    v14 = sub_1E41FFC94();
    v15 = sub_1E4206814();
    sub_1E3A20130(v11);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1E323F000, v14, v15, "BubbleTipModel $selection publisher failed: %@", v16, 0xCu);
      sub_1E325F69C(v17, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    return (*(v6 + 8))(v10, v4);
  }

  else
  {
    v21 = (*(a2 + 48))();
    return (*(a2 + 32))(v21);
  }
}

uint64_t sub_1E3A1C71C()
{

  v0 = OUTLINED_FUNCTION_35_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3A1C754()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E38);
  sub_1E42038F4();

  return sub_1E41FFAD4();
}

void sub_1E3A1CA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EA8);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &a9 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &a9 - v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_19_7();
  if (v27)
  {
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98);
    *&v42[*(v44 + 36)] = 256;
    v45 = v42;
    v46 = 0;
  }

  else
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98);
    v45 = v42;
    v46 = 1;
  }

  __swift_storeEnumTagSinglePayload(v45, v46, 1, v44);
  sub_1E3741EA0(v42, v21, &qword_1ECF30EA8);
  if (v25)
  {
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98);
    *&v36[*(v47 + 36)] = 256;
    v48 = v36;
    v49 = 0;
  }

  else
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98);
    v48 = v36;
    v49 = 1;
  }

  __swift_storeEnumTagSinglePayload(v48, v49, 1, v47);
  OUTLINED_FUNCTION_49_5();
  sub_1E3741EA0(v50, v51, v52);
  OUTLINED_FUNCTION_49_5();
  sub_1E3743538(v53, v54, v55);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_49_5();
  sub_1E3743538(v56, v57, v58);
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_49_5();
  sub_1E3743538(v59, v60, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EB0);
  OUTLINED_FUNCTION_49_5();
  sub_1E3743538(v62, v63, v64);
  OUTLINED_FUNCTION_83_4(v39);
  OUTLINED_FUNCTION_83_4(v21);
  OUTLINED_FUNCTION_83_4(v32);
  OUTLINED_FUNCTION_83_4(v20);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A1CCB0()
{
  OUTLINED_FUNCTION_21_5();
  v152 = v0;
  v3 = v2;
  v144 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v143 = v7;
  OUTLINED_FUNCTION_138();
  v149 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v163 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v148 = v11 - v10;
  OUTLINED_FUNCTION_138();
  v12 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v138 = v16 - v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v157 = v19;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v161 = v21;
  OUTLINED_FUNCTION_138();
  v22 = sub_1E4201044();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_26_2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E50);
  v28 = OUTLINED_FUNCTION_17_2(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v138 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED18);
  v36 = OUTLINED_FUNCTION_17_2(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_4_6();
  v142 = v37 - v38;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v39);
  v151 = &v138 - v40;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v12);
  (*(v24 + 16))(v34, v144, v22);
  v140 = v34;
  sub_1E3743538(v34, v31, &qword_1ECF30E50);
  v44 = OUTLINED_FUNCTION_33_11();
  v45 = v22;
  v46(v44);
  OUTLINED_FUNCTION_25_44();
  sub_1E3A17238(v47, &qword_1ECF30E50);
  sub_1E4206194();
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E58) + 36);
  v49 = OUTLINED_FUNCTION_28_34(&qword_1EE289D88);
  v50 = 0;
  v153 = 0;
  v158 = 0;
  v162 = (v14 + 16);
  v139 = v14;
  v159 = v14 + 32;
  v145 = *MEMORY[0x1E697E6C0];
  v146 = v163 + 104;
  v147 = v163 + 8;
  v51 = MEMORY[0x1E69E7CC0];
  v150 = v12;
  v155 = v48;
  v154 = v49;
  while (1)
  {
    sub_1E4206724();
    if (*(v1 + v48) == v175)
    {
      break;
    }

    v52 = sub_1E4206764();
    v53 = *v162;
    v54 = v12;
    v55 = v157;
    (*v162)(v157);
    v52(&v175, 0);
    v56 = v50;
    v57 = v1;
    v58 = v45;
    sub_1E4206734();
    v59 = *(v156 + 48);
    v60 = v161;
    *v161 = v56;
    OUTLINED_FUNCTION_36_5();
    v61 = v55;
    v12 = v54;
    v62(&v60[v59], v61, v54);
    v163 = v56;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      return;
    }

    sub_1E3A1F0B8();
    sub_1E4200F44();
    if (v175 == 1)
    {
      v63 = v151;
      sub_1E325F69C(v151, &qword_1ECF2ED18);
      (v53)(v63, &v60[v59], v54);
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v54);
      v67 = v60;
      v45 = v58;
      v1 = v57;
      v48 = v155;
      v68 = v163;
      goto LABEL_30;
    }

    v69 = type metadata accessor for SportsAccessoryButtonLayout(0);
    v70 = (*(v152 + *(v69 + 36)))(v163);
    v45 = v58;
    if (!v70)
    {
      v175 = 0u;
      v176 = 0u;
      v71 = v158;
      v1 = v57;
LABEL_14:
      sub_1E325F69C(&v175, &unk_1ECF296E0);
      v160 = 0;
      v74 = 0;
      goto LABEL_15;
    }

    LOBYTE(v170) = 1;
    (*(*v70 + 776))(&v175, &v170, &unk_1F5D5D0A8, &off_1F5D5C758);

    v71 = v158;
    v1 = v57;
    if (!*(&v176 + 1))
    {
      goto LABEL_14;
    }

    v72 = swift_dynamicCast();
    v73 = *&v170;
    if (!v72)
    {
      v73 = 0;
    }

    v160 = v73;
    if (v72)
    {
      v74 = *&v171;
    }

    else
    {
      v74 = 0;
    }

LABEL_15:
    v48 = v155;
    if (!v51[2])
    {
      goto LABEL_17;
    }

    v75 = sub_1E41494A8(v153, v71);

    if (v75)
    {
      goto LABEL_17;
    }

    if (v71)
    {
      if (!v74 || (v153 == v160 ? (v84 = v71 == v74) : (v84 = 0), !v84 && (sub_1E42079A4() & 1) == 0))
      {
LABEL_17:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1E3A1E6F4(0, v51[2] + 1, 1, v51);
        }

        v77 = v51[2];
        v76 = v51[3];
        if (v77 >= v76 >> 1)
        {
          v51 = sub_1E3A1E6F4((v76 > 1), v77 + 1, 1, v51);
        }

        v51[2] = v77 + 1;
        v51[v77 + 4] = MEMORY[0x1E69E7CC0];
        goto LABEL_22;
      }
    }

    else if (v74)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_36_5();
    v85(v148, v145, v149);
    OUTLINED_FUNCTION_22_39();
    sub_1E3A17238(&qword_1EE289CD0, v86);
    OUTLINED_FUNCTION_164();
    v87 = sub_1E4205E14();
    OUTLINED_FUNCTION_36_5();
    v88 = OUTLINED_FUNCTION_67_0();
    v89(v88);
    if ((v87 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_22:

    v78 = v51[2];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (!v78)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v51 = sub_1E3A1E824(v51);
      if (!v78)
      {
        goto LABEL_72;
      }
    }

    if (v78 > v51[2])
    {
      goto LABEL_73;
    }

    v79 = v51 + 3;
    v80 = v51[v78 + 3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[v78 + 3] = v80;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v90 = *(v80 + 2);

      v79[v78] = sub_1E3997AA8(0, v90 + 1, 1, v80);

      v80 = v79[v78];
    }

    v83 = *(v80 + 2);
    v82 = *(v80 + 3);
    if (v83 >= v82 >> 1)
    {
      v80 = sub_1E3997AA8((v82 > 1), v83 + 1, 1, v80);
      v79[v78] = v80;
    }

    *(v80 + 2) = v83 + 1;
    v68 = v163;
    *&v80[8 * v83 + 32] = v163;
    v153 = v160;
    v158 = v74;
    v12 = v150;
    v67 = v161;
LABEL_30:
    sub_1E325F69C(v67, &qword_1ECF30E40);
    v50 = v68 + 1;
  }

  v91 = *(v141 + 36);
  sub_1E325F69C(v140, &qword_1ECF30E50);
  *(v1 + v91) = v50;
  sub_1E325F69C(v1, &qword_1ECF30E48);
  v92 = v152;
  OUTLINED_FUNCTION_111();
  (*(v93 + 152))(&v170);
  if ((v174 & 1) == 0)
  {
    v94 = v170;
    v95 = v171;
    v96 = v172;
    v97 = v173;
    v98 = *(v92 + 16);
    if (!v98)
    {
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_8();
    (*(v99 + 176))(&v175);
    if (v177)
    {
      v98 = 0;
LABEL_48:
      v100 = 1;
    }

    else
    {
      v100 = 0;
      v98 = sub_1E3952BE0(*&v175, *(&v175 + 1), *&v176, *(&v176 + 1));
    }

    v101 = sub_1E3952BE0(v94, v95, v96, v97);
    v3 = v3 - sub_1E4149E0C(v98, v100, v101);
  }

  OUTLINED_FUNCTION_111();
  v103 = COERCE_DOUBLE((*(v102 + 248))());
  if (v104)
  {
    v105 = INFINITY;
  }

  else
  {
    v105 = v103;
  }

  OUTLINED_FUNCTION_111();
  v168 = (*(v106 + 200))();
  v169 = v107 & 1;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
  sub_1E3A1F10C();
  sub_1E4149AF0(v108, &v166);
  v109 = v166;
  if (v167)
  {
    v109 = v3;
  }

  if (v109 >= v105)
  {
    v109 = v105;
  }

  v168 = *&v109;
  v110 = v51[2];
  v111 = 4;
  while (v110)
  {
    v112 = *(v51[v111++] + 16);
    --v110;
    if (v112 >= 2)
    {

      goto LABEL_63;
    }
  }

  type metadata accessor for SportsAccessoryButtonLayout(0);
  OUTLINED_FUNCTION_36_5();
  v113 = v148;
  v114 = v149;
  v115(v148);
  OUTLINED_FUNCTION_22_39();
  sub_1E3A17238(v116, v117);

  v118 = sub_1E4205E14();
  OUTLINED_FUNCTION_36_5();
  v119(v113, v114);
  if ((v118 & 1) == 0)
  {
    goto LABEL_67;
  }

LABEL_63:
  if (v3 >= v105)
  {
    *&v120 = v105;
  }

  else
  {
    *&v120 = v3;
  }

  v168 = v120;
LABEL_67:
  type metadata accessor for SportsAccessoryButtonLayout(0);
  OUTLINED_FUNCTION_111();
  v122 = (*(v121 + 328))();
  v124 = v123;
  v125 = *MEMORY[0x1E6980F00];
  v126 = sub_1E4202A94();
  OUTLINED_FUNCTION_2();
  v128 = v143;
  (*(v127 + 104))(v143, v125, v126);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v126);
  v132 = v152;
  sub_1E405F150(v122, v124 & 1);
  v133 = sub_1E325F69C(v128, &qword_1ECF2DEE8);
  v166 = 0.0;
  v134 = MEMORY[0x1EEE9AC00](v133).n128_u64[0];
  *(&v138 - 6) = &v168;
  *(&v138 - 5) = v132;
  *(&v138 - 4) = v144;
  *(&v138 - 3) = &v166;
  *(&v138 - 2) = v134;
  sub_1E3A1DBD8(sub_1E3A1F160, (&v138 - 8), v51);
  v135 = v142;
  sub_1E3743538(v151, v142, &qword_1ECF2ED18);
  if (__swift_getEnumTagSinglePayload(v135, 1, v12) == 1)
  {
    sub_1E325F69C(v135, &qword_1ECF2ED18);
  }

  else
  {
    v136 = v139;
    v137 = v138;
    (*(v139 + 32))(v138, v135, v12);
    v165 = 0;
    v164 = 1;
    sub_1E4200EF4();
    (*(v136 + 8))(v137, v12);
  }

  sub_1E325F69C(v151, &qword_1ECF2ED18);

  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3A1DBD8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;

      v4(&v7);
      if (v3)
      {
        break;
      }

      ++v6;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1E3A1DC6C()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4200F34();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v5 + 16);
  if (v10)
  {
    v11 = *v5 + 32;
    v12 = (v7 + 8);
    v13 = MEMORY[0x1E69E7DE0];
    do
    {
      v11 += 8;
      sub_1E4201054();
      LOBYTE(v18) = 0;
      LOBYTE(v16) = 1;
      sub_1E4200EF4();
      v15 = v14;
      (*v12)(v9, v6);
      v20[0] = v1;
      v18 = v15;
      v19 = 0;
      v16 = *v3;
      v17 = 0;
      sub_1E3793CAC();
      max<A>(_:_:_:)(v20, &v18, &v16, v13);
      *v3 = v20[1];
      --v10;
    }

    while (v10);
  }

  OUTLINED_FUNCTION_54_0();
}

double sub_1E3A1DE08(uint64_t a1, char a2)
{
  v2 = 0.0;
  if ((a2 & 1) == 0)
  {
    v2 = *&a1;
    sub_1E3A1CCB0();
  }

  return v2;
}

void sub_1E3A1DE78(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E4201044();
  OUTLINED_FUNCTION_0_10();
  v64 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v75 = v15;
  OUTLINED_FUNCTION_138();
  sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v19);
  v73 = v58 - v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v29 = v58 - v28;
  if ((a2 & 1) == 0)
  {
    v61 = v13;
    v58[2] = v27;
    v72 = v26;
    v59 = v25;
    v79 = v24;
    v76 = a5;
    sub_1E3A1CCB0();
    v31 = v30;
    v63 = v32;
    v58[1] = v33;
    v34 = 0;
    v35 = 0;
    v77 = *(v30 + 16);
    v60 = v36;
    v71 = v36;
    v78 = (v17 + 8);
    v74 = v8;
    v62 = v5;
    while (v77 != v35)
    {
      if (v35 >= *(v31 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v37 = *(v31 + 8 * v35 + 32);
      v38 = *v5;
      v39 = *(v37 + 16);

      v82.origin.x = OUTLINED_FUNCTION_2_0();
      Width = CGRectGetWidth(v82);
      v41 = *(v37 + 16);
      if (v41)
      {
        v42 = 0;
        v43 = v5[1];
        v70 = (v63 - v38 * (v39 - 1)) / v39;
        v68 = (Width - v63) * 0.5;
        v67 = (v60 + v43) * v35;
        v69 = v70;
        v66 = v38 + v70;
        ++v35;
        do
        {
          sub_1E4201054();
          sub_1E3A1F0B8();
          sub_1E4200F44();
          if ((v80[0] & 1) == 0)
          {
            LOBYTE(v80[0]) = 0;
            v81 = 0;
            sub_1E4200EF4();
            v83.origin.x = OUTLINED_FUNCTION_2_0();
            CGRectGetMinX(v83);
            v84.origin.x = OUTLINED_FUNCTION_2_0();
            CGRectGetMinY(v84);
            if (__OFADD__(v34++, 1))
            {
              goto LABEL_21;
            }

            sub_1E4203F04();
            OUTLINED_FUNCTION_53_22();
            sub_1E4200F04();
          }

          ++v42;
          (*v78)(v29, v79);
        }

        while (v41 != v42);

        v5 = v62;
        v8 = v74;
      }

      else
      {

        ++v35;
      }
    }

    (*(v64 + 16))(v61, v76, v8);
    OUTLINED_FUNCTION_25_44();
    sub_1E3A17238(v45, v35);
    v46 = v75;
    sub_1E4206194();
    v47 = *(v65 + 36);
    OUTLINED_FUNCTION_28_34(&qword_1EE289D88);
    v48 = (v17 + 16);
    v49 = (v17 + 32);
    v50 = v79;
    while (1)
    {
      sub_1E4206724();
      if (*(v46 + v47) == v80[0])
      {
        sub_1E325F69C(v46, &qword_1ECF30E58);
        return;
      }

      v51 = sub_1E4206764();
      v52 = v73;
      (*v48)(v73);
      v51(v80, 0);
      sub_1E4206734();
      v53 = *v49;
      v54 = v72;
      (*v49)(v72, v52, v50);
      sub_1E3A1F0B8();
      sub_1E4200F44();
      if (LOBYTE(v80[0]) == 1)
      {
        break;
      }

      (*v78)(v54, v50);
      v46 = v75;
    }

    sub_1E325F69C(v75, &qword_1ECF30E58);
    v55 = OUTLINED_FUNCTION_32_0();
    v53(v55);
    v56 = v59;
    v57 = OUTLINED_FUNCTION_11_6();
    v53(v57);
    v85.origin.x = OUTLINED_FUNCTION_2_0();
    CGRectGetWidth(v85);
    OUTLINED_FUNCTION_53_22();
    OUTLINED_FUNCTION_82_7();
    sub_1E4200EF4();
    v86.origin.x = OUTLINED_FUNCTION_2_0();
    CGRectGetMinX(v86);
    sub_1E4203F04();
    OUTLINED_FUNCTION_53_22();
    OUTLINED_FUNCTION_82_7();
    sub_1E4200F04();
    (*v78)(v56, v50);
  }
}

void (*sub_1E3A1E5DC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_59_1();
  v2[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

id sub_1E3A1E654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_1E4205ED4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_1E4205ED4();

LABEL_6:
  v8 = [v4 initWithTitle:v6 message:v7];

  return v8;
}

void *sub_1E3A1E6F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30EB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32EC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E3A1E838()
{
  OUTLINED_FUNCTION_11_71();
  OUTLINED_FUNCTION_135_0();
  sub_1E3A18620();
}

unint64_t sub_1E3A1E89C()
{
  result = qword_1ECF30D98;
  if (!qword_1ECF30D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30D90);
    sub_1E3A1E954();
    sub_1E3A1F924(&qword_1ECF30DD8, &qword_1ECF30DE0, &unk_1E42B38A8, sub_1E37ADF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30D98);
  }

  return result;
}

unint64_t sub_1E3A1E954()
{
  result = qword_1ECF30DA0;
  if (!qword_1ECF30DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30DA8);
    sub_1E3A1E9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30DA0);
  }

  return result;
}

unint64_t sub_1E3A1E9E0()
{
  result = qword_1ECF30DB0;
  if (!qword_1ECF30DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30DB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30DC0);
    sub_1E3A1EAD4();
    swift_getOpaqueTypeConformance2();
    sub_1E374AD40(&qword_1EE288760, &unk_1ECF2A928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30DB0);
  }

  return result;
}

unint64_t sub_1E3A1EAD4()
{
  result = qword_1ECF30DC8;
  if (!qword_1ECF30DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30DC0);
    sub_1E3A17238(&qword_1ECF30DD0, type metadata accessor for FollowLiveUpdatesButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30DC8);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(type metadata accessor for SportsCanonicalBannerAccessoryView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1E3A1ED34()
{
  OUTLINED_FUNCTION_11_71();
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_6_78();
  if (((*(v0 + 232))() & 1) == 0)
  {
    OUTLINED_FUNCTION_8();
    (*(v1 + 360))();
  }

  sub_1E3A18DC4();
}

uint64_t sub_1E3A1EDD8()
{
  OUTLINED_FUNCTION_11_71();
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_6_78();
  return (*(v0 + 368))();
}

uint64_t sub_1E3A1EE78()
{
  v1 = sub_1E395AC48(*(v0 + 16)) & 1;

  return sub_1E395A698(v1);
}

void sub_1E3A1EF04()
{
  OUTLINED_FUNCTION_11_71();
  OUTLINED_FUNCTION_135_0();

  sub_1E3A1B960();
}

unint64_t sub_1E3A1EF54()
{
  result = qword_1ECF30E20;
  if (!qword_1ECF30E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30E10);
    sub_1E3A1EFE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30E20);
  }

  return result;
}

unint64_t sub_1E3A1EFE0()
{
  result = qword_1ECF30E28;
  if (!qword_1ECF30E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30E08);
    sub_1E374AD40(&qword_1ECF30E30, &unk_1ECF30E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30E28);
  }

  return result;
}

unint64_t sub_1E3A1F0B8()
{
  result = qword_1ECF52DE8[0];
  if (!qword_1ECF52DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF52DE8);
  }

  return result;
}

unint64_t sub_1E3A1F10C()
{
  result = qword_1EE28A3F0;
  if (!qword_1EE28A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A3F0);
  }

  return result;
}

void sub_1E3A1F214(uint64_t a1)
{
  OUTLINED_FUNCTION_29_37(a1, &qword_1EE289F50, MEMORY[0x1E69E6370]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_29_37(v1 - 8, &qword_1EE28A0A8, MEMORY[0x1E69E7DE0]);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E3A1F34C()
{
  sub_1E3A1F62C(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  OUTLINED_FUNCTION_39_6();
  if (!(!v2 & v1))
  {
    sub_1E3867038();
    OUTLINED_FUNCTION_39_6();
    if (!(!v2 & v1))
    {
      sub_1E3A1F598();
      OUTLINED_FUNCTION_39_6();
      if (!(!v2 & v1))
      {
        sub_1E3A1F62C(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
        OUTLINED_FUNCTION_39_6();
        if (!(!v2 & v1))
        {
          sub_1E3A1F62C(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
          if (v4 > 0x3F)
          {
            return v3;
          }

          else
          {
            type metadata accessor for LegacySportsCanonicalBannerViewLayout();
            OUTLINED_FUNCTION_39_6();
            if (!(!v2 & v1))
            {
              type metadata accessor for SportsCanonicalBannerProxy(319);
              OUTLINED_FUNCTION_39_6();
              if (!(!v2 & v1))
              {
                sub_1E3A1F62C(319, &qword_1EE288650, type metadata accessor for CGRect, MEMORY[0x1E6981790]);
                OUTLINED_FUNCTION_39_6();
                if (!(!v2 & v1))
                {
                  type metadata accessor for SportsCanonicalBannerAccessoryView.ContainerRef();
                  sub_1E3A1F6B4();
                  OUTLINED_FUNCTION_39_6();
                  if (!(!v2 & v1))
                  {
                    sub_1E3A203DC(319, &qword_1EE288668, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                    OUTLINED_FUNCTION_39_6();
                    if (!(!v2 & v1))
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return v0;
}

void sub_1E3A1F598()
{
  if (!qword_1ECF30E68)
  {
    type metadata accessor for SportsCanonicalBannerAccessoryViewModel(255);
    sub_1E3A17238(&qword_1ECF30D80, type metadata accessor for SportsCanonicalBannerAccessoryViewModel);
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF30E68);
    }
  }
}

void sub_1E3A1F62C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E3A1F6B4()
{
  if (!qword_1EE23B530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C790);
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23B530);
    }
  }
}

uint64_t sub_1E3A1F718(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3A1F768(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3A1F7A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

      return OUTLINED_FUNCTION_5_25(result, a2);
    }

    *(result + 81) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_25(result, a2);
    }
  }

  return result;
}

void sub_1E3A1F830()
{
  sub_1E3A1F62C(319, qword_1EE286B30, type metadata accessor for ViewLayout, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ButtonLayout();
    if (v1 <= 0x3F)
    {
      sub_1E42012F4();
      if (v2 <= 0x3F)
      {
        sub_1E37E0144();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E3A1F924(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3A1F9D4()
{
  result = qword_1ECF30E98;
  if (!qword_1ECF30E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30E88);
    sub_1E374AD40(&qword_1ECF30EA0, &unk_1ECF30E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30E98);
  }

  return result;
}

uint64_t sub_1E3A1FA8C()
{
  v1 = type metadata accessor for SportsCanonicalBannerAccessoryView(0) - 8;
  OUTLINED_FUNCTION_135_0();
  v3 = *(v0 + v2 + *(v1 + 64));
  OUTLINED_FUNCTION_5_0();
  v4 = *(v3 + 16);

  v4(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  return sub_1E4203904();
}

unint64_t sub_1E3A1FB68()
{
  result = qword_1ECF30F08;
  if (!qword_1ECF30F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30EF8);
    sub_1E3A1FBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30F08);
  }

  return result;
}

unint64_t sub_1E3A1FBF4()
{
  result = qword_1ECF30F10;
  if (!qword_1ECF30F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30F18);
    sub_1E3A1FCAC();
    sub_1E374AD40(&qword_1EE2887A0, &qword_1ECF2A208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30F10);
  }

  return result;
}

unint64_t sub_1E3A1FCAC()
{
  result = qword_1ECF30F20;
  if (!qword_1ECF30F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30F28);
    sub_1E3A1FD38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30F20);
  }

  return result;
}

unint64_t sub_1E3A1FD38()
{
  result = qword_1EE289CA0;
  if (!qword_1EE289CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29D98);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289CA0);
  }

  return result;
}

uint64_t sub_1E3A1FDDC(uint64_t a1)
{
  OUTLINED_FUNCTION_11_71();
  OUTLINED_FUNCTION_135_0();

  return sub_1E3A1B1A4(a1, v1 + v3);
}

uint64_t sub_1E3A1FE3C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3A1FE98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3A1FEF4()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1E3A1FF48()
{
  result = qword_1ECF30F30;
  if (!qword_1ECF30F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30ED8);
    sub_1E374AD40(&qword_1ECF30F38, &unk_1ECF30ED0);
    sub_1E374AD40(&qword_1ECF30F40, &unk_1ECF30F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30F30);
  }

  return result;
}

uint64_t sub_1E3A2002C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1E3A20090(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

id sub_1E3A2013C(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1E3A20154(a1);
  }

  return a1;
}

void sub_1E3A20160()
{
  OUTLINED_FUNCTION_11_71();
  OUTLINED_FUNCTION_135_0();
  sub_1E3A18DC4();
}

uint64_t sub_1E3A201AC()
{
  OUTLINED_FUNCTION_11_71();
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_6_78();
  result = (*(v1 + 352))();
  if (result)
  {
    result = (*(*v0 + 232))();
    if ((result & 1) == 0)
    {
      return (*(*v0 + 360))();
    }
  }

  return result;
}

uint64_t sub_1E3A20288()
{
  v1 = *(v0 + 16);
  v2 = **(v1 + *(type metadata accessor for SportsCanonicalBannerAccessoryView(0) + 24) + 8);
  return (*(v2 + 336))(0.0);
}

uint64_t sub_1E3A20300()
{
  v1 = type metadata accessor for SportsCanonicalBannerAccessoryView(0) - 8;
  OUTLINED_FUNCTION_135_0();
  v3 = v0 + v2;
  OUTLINED_FUNCTION_6_78();
  (*(v4 + 344))();
  v5 = *(v3 + *(v1 + 64));
  OUTLINED_FUNCTION_15_0();
  v6 = *(v5 + 16);

  v6(v7);
}

void sub_1E3A203D0(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_1E3A203DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBP06VideosB0E12onSizeChange7enabled_QrSb_ySo6CGSizeVctFQOyAA15ModifiedContentVyAJyAA6VStackVyAA05TupleC0VyAJyAJyAJyAJyAJyAD11TextFactoryO04makenC09viewModel15preferredLayout04textT5StateQrAD0ncR0C_AD0nT0CSgAD0ntV0OtFZQOy_Qo_AA06_FixedfT0VGAA010_FlexFrameT0VGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingT0VGSgAA31AccessibilityAttachmentModifierVG_AJyA0_A15_GSgAJyAA09_VariadicC0O4TreeVy_AA01_T4RootVyAD021SportsAccessoryButtonT0VGANyAA7ForEachVySaySi6offset_AD0cR0C7elementtGA36_AA012_ConditionalK0VyAJyAJyAcDE23accessibilityIdentifier3key8locationQrAD29SportsAccessibilityIdentifierV3KeyO_A45_8LocationOtFQOyAD23FollowLiveUpdatesButtonVSg_Qo_AA01_Z20KeyTransformModifierVySbGGAA25_AppearanceActionModifierVGAD19ButtonRepresentableVSgGGSg_AJyAJyAJyAJyAD7TooltipVA15_GAA14_OpacityEffectVGA59_GAA21_TraitWritingModifierVyAA01_T5TraitVyAD07TooltipT3Key33_F8BD00E7B2F013BF7477CF938F1CE3A0LLVGGGSgSgSgtGGA19_GAD027SportsBannerAccessoryDetailC0A79_LLVSgALyANyAD28ScaledBaselineRelativeSpacerV_A21_tGGSgAJyA85_A15_GSgtGGA5_GA15_G_Qo_HOTm(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = OUTLINED_FUNCTION_40_2(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_83_4(uint64_t a1)
{

  return sub_1E325F69C(a1, v1);
}

id sub_1E3A204F8()
{
  v1 = OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___valueLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___valueLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___valueLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = [objc_opt_self() systemFontOfSize_];
    v6 = OUTLINED_FUNCTION_17_1();
    [v6 v7];

    [v4 setTextAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1E3A205D4()
{
  v1 = OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___descriptionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___descriptionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___descriptionLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v6 = [objc_opt_self() systemFontOfSize_];
    OUTLINED_FUNCTION_13_0(v6, sel_setFont_);

    type metadata accessor for MetricsCellPresentationUtilities();
    v7 = sub_1E3B625A8();
    OUTLINED_FUNCTION_13_0(v7, sel_setTextColor_);

    [v5 setTextAlignment_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1E3A206D4()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___valueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___descriptionLabel) = 0;
  v6 = type metadata accessor for MetricsDataFieldStackView();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v6);
  sub_1E3A20810();

  return v4;
}

void sub_1E3A207A0()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___valueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25MetricsDataFieldStackView____lazy_storage___descriptionLabel) = 0;
  OUTLINED_FUNCTION_4_97();
  __break(1u);
}

id sub_1E3A20810()
{
  [v0 setDistribution_];
  [v0 setAxis_];
  [v0 setSpacing_];
  v1 = sub_1E3A205D4();
  [v0 addArrangedSubview_];

  v2 = sub_1E3A204F8();
  [v0 addArrangedSubview_];

  return [v0 sizeToFit];
}

void sub_1E3A208C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E3A204F8();
  sub_1E390E98C(a1, a2, v8);

  v9 = sub_1E3A205D4();
  sub_1E390E98C(a3, a4, v9);
}

id sub_1E3A209D0()
{
  v1 = OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___pageTypeLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___pageTypeLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___pageTypeLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v6 = [objc_opt_self() systemFontOfSize_];
    OUTLINED_FUNCTION_13_0(v6, sel_setFont_);

    type metadata accessor for MetricsCellPresentationUtilities();
    v7 = sub_1E3B625A8();
    OUTLINED_FUNCTION_13_0(v7, sel_setTextColor_);

    [v5 setTextAlignment_];
    [v5 setAdjustsFontSizeToFitWidth_];
    [v5 setMinimumScaleFactor_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1E3A20B10(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    type metadata accessor for MetricsDataFieldStackView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_1E3A20B94(uint64_t a1)
{
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___pageTypeLabel);
  if (v3)
  {
    v4 = sub_1E4205ED4();
  }

  else
  {
    v4 = 0;
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for MetricsEventCell();
  v5 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v4);

  v6 = v5;
  sub_1E3A20C80();

  return v6;
}

void sub_1E3A20C80()
{
  [v0 setAccessoryType_];
  v1 = [v0 contentView];
  v2 = sub_1E3A209D0();
  v3 = OUTLINED_FUNCTION_17_1();
  [v3 v4];

  v5 = [v0 contentView];
  v6 = sub_1E3A20AF8();
  v7 = OUTLINED_FUNCTION_17_1();
  [v7 v8];

  v9 = [v0 contentView];
  v10 = sub_1E3A20B04();
  v11 = OUTLINED_FUNCTION_17_1();
  [v11 v12];

  v13 = OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___pageTypeLabel;
  v14 = [*&v0[OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___pageTypeLabel] leadingAnchor];
  v15 = OUTLINED_FUNCTION_0_115();
  v16 = [v15 layoutMarginsGuide];

  v17 = [v16 &selRef_loadFairPlayStreamingKeyRequests_completion_ + 1];
  v18 = OUTLINED_FUNCTION_17_1();
  v20 = [v18 v19];

  OUTLINED_FUNCTION_5_95(v21, sel_setActive_);
  v22 = [*&v0[v13] topAnchor];
  v23 = OUTLINED_FUNCTION_0_115();
  v24 = OUTLINED_FUNCTION_6_79(v23);

  v25 = [v24 topAnchor];
  v26 = OUTLINED_FUNCTION_17_1();
  v28 = [v26 v27];

  OUTLINED_FUNCTION_2_11();
  v29 = [*&v0[v13] bottomAnchor];
  v30 = OUTLINED_FUNCTION_0_115();
  v31 = OUTLINED_FUNCTION_6_79(v30);

  v32 = [v31 &selRef_catchUpToLiveViewControllerWithIndex_playable_segments_metadataViewModels_nextToken_ + 5];
  v33 = OUTLINED_FUNCTION_17_1();
  v35 = [v33 v34];

  OUTLINED_FUNCTION_2_11();
  v36 = [*&v0[v13] widthAnchor];
  v37 = OUTLINED_FUNCTION_0_115();
  v38 = OUTLINED_FUNCTION_6_79(v37);

  v39 = [v38 &selRef_weakToWeakObjectsMapTable + 6];
  v40 = OUTLINED_FUNCTION_17_1();
  v42 = [v40 v41];

  OUTLINED_FUNCTION_2_11();
  v43 = OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___appearTimeView;
  v44 = [*&v0[OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___appearTimeView] trailingAnchor];
  v45 = OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___totalTimeView;
  v46 = [*&v0[OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___totalTimeView] leadingAnchor];
  v47 = OUTLINED_FUNCTION_17_1();
  v49 = [v47 v48];

  OUTLINED_FUNCTION_2_11();
  v50 = [*&v0[v43] topAnchor];
  v51 = OUTLINED_FUNCTION_0_115();
  v52 = OUTLINED_FUNCTION_6_79(v51);

  v53 = [v52 topAnchor];
  v54 = OUTLINED_FUNCTION_17_1();
  v56 = [v54 v55];

  OUTLINED_FUNCTION_2_11();
  v57 = [*&v0[v43] bottomAnchor];
  v58 = OUTLINED_FUNCTION_0_115();
  v59 = OUTLINED_FUNCTION_6_79(v58);

  v60 = [v59 bottomAnchor];
  v61 = OUTLINED_FUNCTION_17_1();
  v63 = [v61 v62];

  OUTLINED_FUNCTION_2_11();
  v64 = [*&v0[v45] widthAnchor];
  v65 = OUTLINED_FUNCTION_0_115();
  v66 = OUTLINED_FUNCTION_6_79(v65);

  v67 = [v66 widthAnchor];
  v68 = OUTLINED_FUNCTION_17_1();
  v70 = [v68 v69];

  OUTLINED_FUNCTION_2_11();
  v71 = [*&v0[v45] trailingAnchor];
  v72 = OUTLINED_FUNCTION_0_115();
  v73 = [v72 &selRef_configurationWithTextStyle_scale_ + 1];

  v74 = [v73 trailingAnchor];
  v75 = OUTLINED_FUNCTION_17_1();
  v77 = [v75 v76];

  OUTLINED_FUNCTION_5_95(v78, &selRef_setBookmarkTimestamp_);
  v79 = [*&v0[v45] topAnchor];
  v80 = OUTLINED_FUNCTION_0_115();
  v81 = [v80 &selRef_configurationWithTextStyle_scale_ + 1];

  v82 = [v81 topAnchor];
  v83 = OUTLINED_FUNCTION_17_1();
  v85 = [v83 v84];

  OUTLINED_FUNCTION_5_95(v86, &selRef_setBookmarkTimestamp_);
  v87 = [*&v0[v45] bottomAnchor];
  v88 = OUTLINED_FUNCTION_0_115();
  v89 = [v88 &selRef_configurationWithTextStyle_scale_ + 1];

  v90 = [v89 bottomAnchor];
  v91 = OUTLINED_FUNCTION_17_1();
  v93 = [v91 v92];

  OUTLINED_FUNCTION_5_95(v94, &selRef_setBookmarkTimestamp_);
  v95 = [*&v0[v45] widthAnchor];
  v96 = OUTLINED_FUNCTION_0_115();
  v97 = [v96 &selRef_configurationWithTextStyle_scale_ + 1];

  v98 = [v97 widthAnchor];
  v99 = [v44 constraintEqualToAnchor:v98 multiplier:0.25];

  [v99 &selRef:1 setBookmarkTimestamp:?];
}

void sub_1E3A213FC()
{
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___pageTypeLabel);
  OUTLINED_FUNCTION_4_97();
  __break(1u);
}

uint64_t sub_1E3A21468(uint64_t a1)
{
  v2 = sub_1E3A209D0();
  v3 = sub_1E4205ED4();
  [v2 setText_];

  v4 = sub_1E3A20B04();
  v5 = sub_1E4167B40(a1, 5);
  v7 = v6;
  sub_1E41675F8(5);
  v8 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x98))(v5, v7, v9, v10);

  v11 = sub_1E3A20AF8();
  v12 = sub_1E4167B40(a1, 23);
  v14 = v13;
  sub_1E41675F8(23);
  (*((*v8 & *v11) + 0x98))(v12, v14, v15, v16);
}

id sub_1E3A21608(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3A216BC()
{
  v1 = v0;
  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_8();
  (*(v3 + 1352))(0);
  OUTLINED_FUNCTION_36();
  (*(v4 + 1328))(1);
  v5 = *sub_1E3BD2884();
  (*(*v2 + 1280))(v5, 0);
  OUTLINED_FUNCTION_36();
  v7 = *(v6 + 1808);
  v7(3);
  v8 = *sub_1E3E5FB0C();
  v9 = *(*v2 + 776);
  v10 = v8;
  v9(v8);
  OUTLINED_FUNCTION_5_0();
  v11 = *(v1 + 177);
  v12 = *(*v2 + 2240);
  if (v11 == 1)
  {
    v12(1);
    sub_1E39537A8();
    *&__src[0] = v13;
    *(&__src[0] + 1) = v14;
    *&__src[1] = v15;
    *(&__src[1] + 1) = v16;
    LOBYTE(__src[2]) = 0;
    (*(*v2 + 560))(__src);
    OUTLINED_FUNCTION_36();
    (*(v17 + 312))(0x4048000000000000, 0);
    sub_1E418A524();
    OUTLINED_FUNCTION_8();
    (*(v18 + 208))();
    *__dst = 0uLL;
    __asm { FMOV            V0.2D, #10.0 }

    *&__dst[16] = _Q0;
    __dst[32] = 0;
    OUTLINED_FUNCTION_8();
    (*(v24 + 160))(__dst);
    OUTLINED_FUNCTION_36();
    (*(v25 + 1712))(1);
    v7(1);
  }

  else
  {
    v12(0);
    memset(__src, 0, 32);
    LOBYTE(__src[2]) = 1;
    OUTLINED_FUNCTION_8();
    (*(v26 + 560))(__src);
    OUTLINED_FUNCTION_36();
    (*(v27 + 360))(0, 1);
    OUTLINED_FUNCTION_8();
    (*(v28 + 160))(__src);
    OUTLINED_FUNCTION_36();
    (*(v29 + 312))(0, 1);
  }

  OUTLINED_FUNCTION_8();
  (*(v30 + 416))(v11 ^ 1u);
  v31 = *(v1 + 160);
  sub_1E3952C78();
  *__dst = v32;
  *&__dst[8] = v33;
  *&__dst[16] = v34;
  *&__dst[24] = v35;
  __dst[32] = 0;
  v241 = 0u;
  v242 = 0u;
  v243 = 1;
  sub_1E3952C78();
  v238.n128_u64[0] = v36;
  v238.n128_u64[1] = v37;
  v239.n128_u64[0] = v38;
  v239.n128_u64[1] = v39;
  v240 = 0;
  type metadata accessor for UIEdgeInsets();
  v41 = v40;
  sub_1E3C2FC98();
  v232 = v235;
  v233 = v236;
  v234 = v237;
  v42 = sub_1E3C3DE00(v41);
  OUTLINED_FUNCTION_5_24(v42, v43, v44, v45, v46, v47, v48, v49, v168, v176, v184, v192, v200, v208, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v217, *(&v217 + 1), v218, *(&v218 + 1), v219, v220, v221, *(&v221 + 1), v222, *(&v222 + 1), v223, v224, v225, v226, v227, v228, v229, v230, v231);
  v50 = sub_1E3C3DE00(v41);
  v217 = v221;
  v218 = v222;
  LOBYTE(v219) = v223;
  v58 = OUTLINED_FUNCTION_7_97(v50, v51, v52, v53, v54, v55, v56, v57, v169, v177, v185, v193, v201, v209, __dst[0]);
  sub_1E3C2FCB8(v58, v59);
  memcpy(__dst, __src, 0xE9uLL);
  v60 = OUTLINED_FUNCTION_18();
  v68 = OUTLINED_FUNCTION_6_80(v60, v61, v62, v63, v64, v65, v66, v67, v170, v178, v186, v194, v202, v210, __dst[0]);
  v70 = v69(v68, 0);
  v71 = (*(*v31 + 1728))(v70);
  v72 = *sub_1E3E5FDEC();
  v73 = *(*v71 + 680);
  v74 = v72;
  v73(v72);

  v75 = *sub_1E3E5FD88();
  (*(*v31 + 1712))(v75);
  v76 = *(v1 + 152);
  OUTLINED_FUNCTION_3_0();
  __asm { FMOV            V0.2D, #25.0 }

  *(v76 + 208) = _Q0;
  *(v76 + 224) = _Q0;
  OUTLINED_FUNCTION_3_0();
  *(v76 + 201) = 0;
  v78 = OUTLINED_FUNCTION_5_0();
  if (*(v1 + 177) == 1)
  {
    (*(**(v1 + 128) + 1656))(v78);
    OUTLINED_FUNCTION_36();
    (*(v79 + 1656))();
    sub_1E3C6DC94();
    sub_1E3C6DE18();
    sub_1E3C2D438();
    type metadata accessor for LayoutGrid();
    sub_1E3C2F814();
    sub_1E3A25914();
    *&__src[0] = 0x4024000000000000;
    *(&__src[0] + 1) = v80;
    *&__src[1] = 0x4024000000000000;
    *(&__src[1] + 1) = v81;
    LOBYTE(__src[2]) = 0;
    sub_1E3C2CC78();
    memset(__dst, 0, 32);
    __dst[32] = 1;
    sub_1E3C2D7EC();
    sub_1E3C2DE50();
    sub_1E3C2E258();
  }

  else
  {
    v82 = *(v1 + 120);
    OUTLINED_FUNCTION_8();
    (*(v83 + 1656))();
    __dst[0] = 24;
    LOBYTE(v241) = 17;
    v238.n128_u8[0] = 19;
    sub_1E3C2FC98();
    LOBYTE(v232) = v235;
    sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v225) = v231;
    v84 = sub_1E3C3DE00(&qword_1F5D549D8);
    v245 = v221;
    v92 = OUTLINED_FUNCTION_7_97(v84, v85, v86, v87, v88, v89, v90, v91, v171, v179, v187, v195, v203, v211, __dst[0]);
    sub_1E3C2FCB8(v92, v93);
    OUTLINED_FUNCTION_3_97();
    OUTLINED_FUNCTION_36();
    v102 = OUTLINED_FUNCTION_6_80(v94, v95, v96, v97, v98, v99, v100, v101, v172, v180, v188, v196, v204, v212, __dst[0]);
    v103(v102, 48);
    OUTLINED_FUNCTION_36();
    (*(v104 + 1792))(10);
    OUTLINED_FUNCTION_36();
    (*(v105 + 1936))(2);
    v106 = *sub_1E3E5FDEC();
    v107 = *(*v82 + 680);
    v108 = v106;
    v107(v106);
    OUTLINED_FUNCTION_36();
    (*(v109 + 2056))(1, 0);
    OUTLINED_FUNCTION_36();
    (*(v110 + 1984))(5);
    OUTLINED_FUNCTION_36();
    (*(v111 + 2008))(1);
    v112 = *(v1 + 128);
    OUTLINED_FUNCTION_36();
    (*(v113 + 1656))();
    __dst[0] = 15;
    LOBYTE(v241) = 19;
    v238.n128_u8[0] = 19;
    LOBYTE(v235) = 21;
    LOBYTE(v232) = 3;
    sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v225) = v231;
    sub_1E3C2FCB8(__dst, __src);
    OUTLINED_FUNCTION_3_97();
    OUTLINED_FUNCTION_36();
    v122 = OUTLINED_FUNCTION_6_80(v114, v115, v116, v117, v118, v119, v120, v121, v173, v181, v189, v197, v205, v213, __dst[0]);
    v123(v122, 48);
    OUTLINED_FUNCTION_5_0();
    if (*(v1 + 177) == 1)
    {
      OUTLINED_FUNCTION_8();
      (*(v124 + 1696))(17);
    }

    v125 = *sub_1E3E5FD88();
    OUTLINED_FUNCTION_8();
    v127 = *(v126 + 680);
    v128 = v125;
    v127(v125);
    if (*(v1 + 177))
    {
      v129 = 2;
    }

    else
    {
      v129 = 1;
    }

    (*(*v112 + 2056))(v129, 0);
    OUTLINED_FUNCTION_36();
    (*(v130 + 2080))(2, 0);
    OUTLINED_FUNCTION_36();
    (*(v131 + 2104))(0, 0);
    OUTLINED_FUNCTION_36();
    (*(v132 + 1984))(5);
    sub_1E3952C94();
    *&__src[0] = v133;
    *(&__src[0] + 1) = v134;
    *&__src[1] = v135;
    *(&__src[1] + 1) = v136;
    LOBYTE(__src[2]) = 0;
    OUTLINED_FUNCTION_8();
    (*(v137 + 160))(__src);
    OUTLINED_FUNCTION_36();
    (*(v138 + 2008))(1);
    __asm { FMOV            V1.2D, #12.0 }

    *__dst = _Q1;
    *&__dst[16] = xmmword_1E42B29F0;
    __dst[32] = 0;
    v241 = _Q1;
    v242 = xmmword_1E42B29F0;
    v243 = 0;
    __asm { FMOV            V0.2D, #14.0 }

    v238 = _Q0;
    v239 = _Q0;
    v240 = 0;
    _Q0.n128_u64[0] = 12.0;
    *&v235 = j__OUTLINED_FUNCTION_7_78(_Q0);
    *(&v235 + 1) = v141;
    *&v236 = v142;
    *(&v236 + 1) = v143;
    v237 = 0;
    v144.n128_u64[0] = 12.0;
    *&v232 = j__OUTLINED_FUNCTION_7_78(v144);
    *(&v232 + 1) = v145;
    *&v233 = v146;
    *(&v233 + 1) = v147;
    v234 = 0;
    v148 = sub_1E3C3DE00(v41);
    OUTLINED_FUNCTION_5_24(v148, v149, v150, v151, v152, v153, v154, v155, v174, v182, v190, v198, v206, v214, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v217, *(&v217 + 1), v218, *(&v218 + 1), v219, v220, v221, *(&v221 + 1), v222, *(&v222 + 1), v223, v224, v225, v226, v227, v228, v229, v230, v231);
    sub_1E3C2FCB8(&v225, __src);
    memcpy(__dst, __src, 0xE9uLL);
    v156 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_6_80(v156, v157, v158, v159, v160, v161, v162, v163, v175, v183, v191, v199, v207, v215, __dst[0]);
    sub_1E3C2FDFC();
    v164 = sub_1E3E61064();
    v165 = *(v164 + 1);
    __src[0] = *v164;
    __src[1] = v165;
    LOBYTE(__src[2]) = 0;
    sub_1E3C2D7EC();
    v166 = *sub_1E3E5FB0C();
    sub_1E3C2DE50();
  }

  return sub_1E3C2D200();
}

uint64_t sub_1E3A2240C(char a1)
{
  OUTLINED_FUNCTION_3_0();
  v3 = *(v1 + 177);
  *(v1 + 177) = a1;
  result = OUTLINED_FUNCTION_5_0();
  if (v3 != *(v1 + 177))
  {
    return sub_1E3A216BC();
  }

  return result;
}

uint64_t *sub_1E3A224A0()
{
  type metadata accessor for ImageLayout();
  *(v0 + 104) = sub_1E3BD61D8();
  type metadata accessor for PlaybackStatusLayout();
  *(v0 + 112) = sub_1E3A70EBC(1);
  type metadata accessor for TextLayout();
  *(v0 + 120) = sub_1E383BCC0();
  *(v0 + 128) = sub_1E383BCC0();
  *(v0 + 136) = sub_1E383BCC0();
  *(v0 + 144) = 0;
  type metadata accessor for ContextMenuButtonLayout();
  *(v0 + 152) = sub_1E3890F28();
  type metadata accessor for DownloadStateIndicatorLayout();
  *(v0 + 160) = sub_1E3C6D918();
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  v1 = sub_1E3C2F9A0();

  sub_1E3A216BC();
  sub_1E3C37CBC(v1[13], 39);
  sub_1E3C37CBC(v1[16], 23);
  sub_1E3C37CBC(v1[14], 96);
  sub_1E3C37CBC(v1[15], 15);
  sub_1E3C37CBC(v1[19], 67);
  sub_1E3C37CBC(v1[20], 233);

  return v1;
}

uint64_t sub_1E3A225B0(uint64_t a1, void *a2, __int16 a3)
{
  v4 = a1;
  v5 = a3;
  sub_1E3C35CF4(a1, a2);
  v6 = sub_1E3A22650(v4, a3);
  result = sub_1E3A2240C(v6 & 1);
  if (v5 != 5)
  {
    sub_1E3890B18();
    result = sub_1E4205E84();
    if (result)
    {
      return sub_1E3A70DC8(0);
    }
  }

  return result;
}

uint64_t sub_1E3A22650(char a1, __int16 a2)
{
  if (HIBYTE(a2) == 2)
  {
    if (a2 == 5)
    {
      goto LABEL_12;
    }

LABEL_9:
    sub_1E3890B18();
    if ((sub_1E4205E84() & 1) == 0 || (sub_1E3A24FDC(a1) & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a2 == 5)
  {
LABEL_12:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  sub_1E3890B18();
  if ((sub_1E4205E84() & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x100) != 0)
  {
LABEL_11:
    LOBYTE(v4) = 1;
    return v4 & 1;
  }

  v4 = [objc_opt_self() isPad];
  if (v4)
  {
    LOBYTE(v4) = sub_1E3A24FDC(a1);
  }

  return v4 & 1;
}

uint64_t sub_1E3A22750()
{
  result = sub_1E385050C();
  if (result)
  {
    type metadata accessor for TextBadgeLayout();
    result = swift_dynamicCastClass();
    if (result)
    {
      v2 = result;
      OUTLINED_FUNCTION_3_0();
      *(v0 + 144) = v2;
      swift_retain_n();

      OUTLINED_FUNCTION_5_0();
      if (*(v0 + 177) == 1)
      {
        OUTLINED_FUNCTION_5_0();
        if (*(v0 + 144))
        {
          OUTLINED_FUNCTION_8();
          v4 = *(v3 + 1808);

          v4(1);
LABEL_8:
        }
      }

      else
      {
        OUTLINED_FUNCTION_5_0();
        if (*(v0 + 144))
        {
          __dst[0] = xmmword_1E42B29E0;
          memset(&__dst[1], 0, 17);
          __asm { FMOV            V0.2D, #12.0 }

          v27 = _Q0;
          v28 = xmmword_1E4298720;
          v29 = 0;
          v24 = xmmword_1E42B3F30;
          v25 = xmmword_1E429D550;
          v26 = 0;
          __asm { FMOV            V1.2D, #14.0 }

          v21 = _Q1;
          v22 = _Q1;
          v23 = 0;
          v18 = xmmword_1E4298700;
          v19 = xmmword_1E4298700;
          v20 = 0;
          __dst[15] = _Q0;
          __dst[16] = _Q0;
          v17 = 0;
          type metadata accessor for UIEdgeInsets();
          v12 = v11;

          sub_1E3C2FCB8(__dst, __src);
          memcpy(__dst, __src, 0xE9uLL);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_36();
          (*(v13 + 1600))(__dst, 0, v14 & 1, v12);
          goto LABEL_8;
        }
      }

      v15 = *sub_1E3810A0C();

      sub_1E3C37EC8(v2, v15);
    }
  }

  return result;
}

uint64_t sub_1E3A22990()
{
}

uint64_t sub_1E3A229F0()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3A22A58()
{
  v0 = sub_1E3A229F0();

  return MEMORY[0x1EEE6BDC0](v0, 178, 7);
}

uint64_t sub_1E3A22A88(char a1, uint64_t a2, __int16 a3)
{
  v4 = sub_1E3A22650(a1, a3);
  OUTLINED_FUNCTION_5_0();
  return (v4 ^ *(v3 + 177)) & 1;
}

uint64_t sub_1E3A22B70(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 272) = 0;
  *(v3 + 280) = 0;
  *(v3 + 248) = a1;
  v6 = 0x80000001E4266410;
  v7 = 0x2E72656B61657073;
  if (a1)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xEC0000006C6C6966;
  }

  *(v3 + 256) = v7;
  *(v3 + 264) = v6;
  OUTLINED_FUNCTION_14_0();
  *(v3 + 272) = a2;
  *(v3 + 280) = a3;
  sub_1E37FAED4(a2, a3);
  v8 = sub_1E4205CB4();
  v9 = sub_1E39BEDCC(59, v8, 0);

  sub_1E37FAED8(a2, a3);
  if (v9)
  {
  }

  return v9;
}