_BYTE *sub_22378A9D4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22378AB04()
{
  result = qword_27D097B68;
  if (!qword_27D097B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B68);
  }

  return result;
}

unint64_t sub_22378AB5C()
{
  result = qword_27D097B70;
  if (!qword_27D097B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B70);
  }

  return result;
}

unint64_t sub_22378ABB4()
{
  result = qword_27D097B78;
  if (!qword_27D097B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B78);
  }

  return result;
}

unint64_t sub_22378AC0C()
{
  result = qword_27D097B80;
  if (!qword_27D097B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B80);
  }

  return result;
}

unint64_t sub_22378AC64()
{
  result = qword_27D097B88;
  if (!qword_27D097B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B88);
  }

  return result;
}

unint64_t sub_22378ACBC()
{
  result = qword_27D097B90;
  if (!qword_27D097B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B90);
  }

  return result;
}

unint64_t sub_22378AD14()
{
  result = qword_27D097B98;
  if (!qword_27D097B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097B98);
  }

  return result;
}

unint64_t sub_22378AD6C()
{
  result = qword_27D097BA0;
  if (!qword_27D097BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097BA0);
  }

  return result;
}

unint64_t sub_22378ADC4()
{
  result = qword_27D097BA8;
  if (!qword_27D097BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097BA8);
  }

  return result;
}

unint64_t sub_22378AE1C()
{
  result = qword_27D097BB0;
  if (!qword_27D097BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097BB0);
  }

  return result;
}

unint64_t sub_22378AE74()
{
  result = qword_27D097BB8;
  if (!qword_27D097BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097BB8);
  }

  return result;
}

unint64_t sub_22378AECC()
{
  result = qword_27D097BC0;
  if (!qword_27D097BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097BC0);
  }

  return result;
}

unint64_t sub_22378AF24()
{
  result = qword_27D097BC8;
  if (!qword_27D097BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D097BC8);
  }

  return result;
}

uint64_t sub_22378AF9C()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_22378AFF8()
{
  OUTLINED_FUNCTION_16_3();
  v45 = OUTLINED_FUNCTION_25_1();
  v6 = OUTLINED_FUNCTION_4(v45);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_6(v9, v42);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_5(v14, v43);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_4();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_4();
  v20 = objc_allocWithZone(sub_2237B452C());
  v21 = sub_2237B451C();
  v22 = v21;
  if (v21)
  {
    v23 = *(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    sub_2237654A4(v21);
    v24 = OUTLINED_FUNCTION_55(OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    OUTLINED_FUNCTION_4(v24);
    (*(v25 + 16))(v4, v0, v24);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v24);
    v44 = AFDeviceSupportsSiriUOD();
    v29 = OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils;
    sub_223781B5C(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils, v48);
    OUTLINED_FUNCTION_14_5(v48[4]);
    v30 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_31();
    sub_22378EED8(v3 + v30, v5, &unk_27D097C80, &unk_2237B9260);
    if (OUTLINED_FUNCTION_21_2())
    {
      sub_2237710FC(v5, &unk_27D097C80, &unk_2237B9260);
      v2 = 0;
      v24 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_40();
      sub_2237710FC(v5, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_54();
      sub_223771D44(v23);
    }

    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_58();
    sub_223781B5C(v3 + v29, &v47);
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_45(v3 + v30, v38, &unk_27D097C80, &unk_2237B9260);
    if (OUTLINED_FUNCTION_43())
    {
      sub_2237710FC(v24, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_34();
    }

    else
    {
      OUTLINED_FUNCTION_27_0();
      sub_2237710FC(v24, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_28_0();
      sub_223771D44(v22);
    }

    OUTLINED_FUNCTION_4_7();
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_7_4();
    sub_223771484(v39, v46, v2, 2, v44, 0, v40, v41, OS_LOG_TYPE_DEFAULT);

    sub_2237710FC(v24, &qword_27D097A50, &unk_2237B7800);
    OUTLINED_FUNCTION_51();
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v31 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v31, qword_28131B550);

    v32 = sub_2237B5C8C();
    sub_2237B5FFC();

    if (OUTLINED_FUNCTION_57())
    {
      OUTLINED_FUNCTION_20();
      v33 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_50(v33);
      v34 = OUTLINED_FUNCTION_23_1(4.8149e-34);
      *(v0 + 4) = sub_223763694(v34, v1, v35);
      OUTLINED_FUNCTION_17_3(&dword_22375F000, v36, v37, "Failed to create StartTextRequestMessage for request Id: %s");
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_14_2();
}

void sub_22378B3F0()
{
  OUTLINED_FUNCTION_16_3();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v53 = type metadata accessor for RequestDispatcher.SessionContext(0);
  v10 = OUTLINED_FUNCTION_4(v53);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_6(v13, v47);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_5(v18, v48);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_20_4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_39();
  v24 = objc_allocWithZone(sub_2237B494C());
  v25 = sub_2237B48CC();
  if (v25)
  {
    v26 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    v51 = v25;
    sub_2237654A4(v25);
    v50 = *(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    v27 = sub_2237B412C();
    OUTLINED_FUNCTION_4(v27);
    (*(v28 + 16))(v1, v9, v27);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
    v49 = AFDeviceSupportsSiriUOD();
    v32 = OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils;
    sub_223781B5C(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils, v55);
    OUTLINED_FUNCTION_14_5(v55[4]);
    v33 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_31();
    sub_22378EED8(v3 + v33, v2, &unk_27D097C80, &unk_2237B9260);
    if (OUTLINED_FUNCTION_21_2())
    {
      sub_2237710FC(v2, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_34();
    }

    else
    {
      sub_22378ED08(v2, v52);
      sub_2237710FC(v2, &unk_27D097C80, &unk_2237B9260);
      v41 = (v52 + *(v7 + 20));
      v42 = *v41;
      v27 = v41[1];

      sub_223771D44(v52);
    }

    OUTLINED_FUNCTION_6_5();
    sub_2237B58AC();
    OUTLINED_FUNCTION_58();
    sub_223781B5C(v3 + v32, &v54);
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_45(v3 + v33, v43, &unk_27D097C80, &unk_2237B9260);
    if (OUTLINED_FUNCTION_43())
    {
      sub_2237710FC(v27, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_34();
    }

    else
    {
      OUTLINED_FUNCTION_27_0();
      sub_2237710FC(v27, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_28_0();
      sub_223771D44(v33);
    }

    OUTLINED_FUNCTION_4_7();
    OUTLINED_FUNCTION_56();
    v44 = OUTLINED_FUNCTION_7_4();
    sub_223771484(v44, v7, v32, 2, v49, 0, v45, v46, OS_LOG_TYPE_INFO);

    sub_2237710FC(v27, &qword_27D097A50, &unk_2237B7800);
    OUTLINED_FUNCTION_51();
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v34 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v34, qword_28131B550);

    v35 = sub_2237B5C8C();
    sub_2237B5FFC();

    if (OUTLINED_FUNCTION_57())
    {
      OUTLINED_FUNCTION_20();
      v36 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_50(v36);
      v37 = OUTLINED_FUNCTION_23_1(4.8149e-34);
      *(v1 + 4) = sub_223763694(v37, v5, v38);
      OUTLINED_FUNCTION_17_3(&dword_22375F000, v39, v40, "Failed to create StartRootTextRequestMessage for request Id: %s");
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_22378B880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v35 = a7;
  v36 = a8;
  v33 = a4;
  v34 = a5;
  v37 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097BD0, &qword_2237B9120);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v32 - v23;
  v25 = *MEMORY[0x277D5CDC8];
  v26 = sub_2237B540C();
  (*(*(v26 - 8) + 104))(v24, v25, v26);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v26);
  sub_2237B491C();

  sub_2237B48EC();
  v27 = sub_2237B412C();
  (*(*(v27 - 8) + 16))(v20, v33, v27);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v27);
  sub_2237B493C();

  sub_2237B492C();
  v28 = sub_2237B544C();
  (*(*(v28 - 8) + 16))(v16, v35, v28);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v28);
  sub_2237B48FC();
  v29 = v36;
  sub_2237B490C();
  v30 = sub_2237B549C();
  (*(*(v30 - 8) + 16))(v12, v37, v30);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v30);
  return sub_2237B48DC();
}

uint64_t sub_22378BC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v24 = a5;
  v25 = a7;
  v23 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - v15;
  v17 = *MEMORY[0x277D5CDC8];
  v18 = sub_2237B540C();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v18);
  sub_2237B4E8C();

  sub_2237B4E6C();
  v19 = sub_2237B412C();
  (*(*(v19 - 8) + 16))(v12, v23, v19);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v19);
  sub_2237B4EAC();

  sub_2237B4E9C();
  sub_2237B4E5C();

  sub_2237B4EBC();
  v20 = a9;
  return sub_2237B4E7C();
}

BOOL sub_22378BE44()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  swift_getObjectType();
  v2 = objc_allocWithZone(sub_2237B4DAC());
  v3 = sub_2237B4D1C();
  if (v3)
  {
    OUTLINED_FUNCTION_46(OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    v4 = OUTLINED_FUNCTION_9_6(OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    sub_223786220(v4, v5, v6, v7);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v8 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v8, qword_28131B550);

    v9 = sub_2237B5C8C();
    sub_2237B5FFC();
    OUTLINED_FUNCTION_48();
    if (OUTLINED_FUNCTION_41())
    {
      OUTLINED_FUNCTION_20();
      v16 = OUTLINED_FUNCTION_29_0();
      *v1 = 136315138;
      v10 = OUTLINED_FUNCTION_16_5();
      *(v1 + 4) = sub_223763694(v10, v11, v12);
      OUTLINED_FUNCTION_19(&dword_22375F000, v13, v14, "Failed to create MUXTextBasedResultSelectedMessage for request Id: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      OUTLINED_FUNCTION_13_5();
      OUTLINED_FUNCTION_8();
    }
  }

  return v3 != 0;
}

uint64_t sub_22378BFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a5;
  v25 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v24 - v18;
  v20 = *MEMORY[0x277D5CDC8];
  v21 = sub_2237B540C();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
  sub_2237B4D7C();

  sub_2237B4D3C();
  v22 = sub_2237B412C();
  (*(*(v22 - 8) + 16))(v15, a4, v22);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v22);
  sub_2237B4D9C();

  sub_2237B4D8C();
  sub_2237B4D6C();
  sub_2237B4D4C();
  sub_2237B4D5C();
  sub_22378EED8(v25, v11, &qword_27D097900, &qword_2237B8860);
  return sub_2237B4D2C();
}

uint64_t sub_22378C304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28[1] = a5;
  v29 = a7;
  v28[0] = a4;
  v30 = a11;
  v31 = a10;
  v32 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v28 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v28 - v21;
  v23 = *MEMORY[0x277D5CDC8];
  v24 = sub_2237B540C();
  (*(*(v24 - 8) + 104))(v22, v23, v24);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v24);
  sub_2237B530C();

  sub_2237B52EC();
  v25 = sub_2237B412C();
  (*(*(v25 - 8) + 16))(v18, v28[0], v25);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v25);
  sub_2237B533C();

  sub_2237B532C();
  v26 = sub_2237B56DC();
  (*(*(v26 - 8) + 16))(v14, v29, v26);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v26);
  sub_2237B531C();

  sub_2237B534C();

  return sub_2237B52FC();
}

BOOL sub_22378C638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(void), uint64_t a12, uint64_t (*a13)(uint64_t, void *))
{
  OUTLINED_FUNCTION_30_0();
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v16;
  v34[5] = v17;
  v34[6] = v18;
  v34[7] = v19;
  v34[8] = v20;
  v34[9] = v21;
  v34[10] = a9;
  v34[11] = a10;
  v22 = objc_allocWithZone(a11(0));
  v23 = a13(a12, v34);
  if (v23)
  {
    OUTLINED_FUNCTION_46(OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    v24 = *(v13 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    v25 = OUTLINED_FUNCTION_16_5();
    sub_223786204(v25, v26, a9, a10);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v27 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v27, qword_28131B550);

    v28 = sub_2237B5C8C();
    sub_2237B5FFC();
    OUTLINED_FUNCTION_48();
    if (OUTLINED_FUNCTION_41())
    {
      OUTLINED_FUNCTION_20();
      v29 = OUTLINED_FUNCTION_44();
      v34[13] = v29;
      *a9 = 136315138;
      v30 = OUTLINED_FUNCTION_16_5();
      *(a9 + 4) = sub_223763694(v30, v31, v32);
      OUTLINED_FUNCTION_24_1(&dword_22375F000);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_13_5();
    }
  }

  return v23 != 0;
}

uint64_t sub_22378C7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28[1] = a5;
  v29 = a7;
  v28[0] = a4;
  v30 = a11;
  v31 = a10;
  v32 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v28 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v28 - v21;
  v23 = *MEMORY[0x277D5CDC8];
  v24 = sub_2237B540C();
  (*(*(v24 - 8) + 104))(v22, v23, v24);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v24);
  sub_2237B50DC();

  sub_2237B50BC();
  v25 = sub_2237B412C();
  (*(*(v25 - 8) + 16))(v18, v28[0], v25);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v25);
  sub_2237B510C();

  sub_2237B50FC();
  v26 = sub_2237B56DC();
  (*(*(v26 - 8) + 16))(v14, v29, v26);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v26);
  sub_2237B50EC();

  sub_2237B511C();

  return sub_2237B50CC();
}

BOOL sub_22378CAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  OUTLINED_FUNCTION_30_0();
  v11 = objc_allocWithZone(sub_2237B525C());
  v12 = sub_2237B51FC();
  v13 = v12;
  if (v12)
  {
    v14 = *(v7 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    sub_2237654A4(v12);
    v15 = *(v8 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    v16 = OUTLINED_FUNCTION_16_5();
    sub_223786220(v16, v17, a6, a7);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v18 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v18, qword_28131B550);

    v19 = sub_2237B5C8C();
    sub_2237B5FFC();
    OUTLINED_FUNCTION_48();
    if (OUTLINED_FUNCTION_41())
    {
      OUTLINED_FUNCTION_20();
      v26 = OUTLINED_FUNCTION_29_0();
      *a6 = 136315138;
      v20 = OUTLINED_FUNCTION_16_5();
      *(a6 + 4) = sub_223763694(v20, v21, v22);
      OUTLINED_FUNCTION_19(&dword_22375F000, v23, v24, "Failed to create StoppedListeningForTextContinuationForPlannerMessage for request Id: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      OUTLINED_FUNCTION_13_5();
      OUTLINED_FUNCTION_8();
    }
  }

  return v13 != 0;
}

uint64_t sub_22378CC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[0] = a5;
  v20[1] = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v20 - v14;
  v16 = *MEMORY[0x277D5CDC8];
  v17 = sub_2237B540C();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
  sub_2237B521C();

  sub_2237B520C();
  v18 = sub_2237B412C();
  (*(*(v18 - 8) + 16))(v11, a4, v18);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
  sub_2237B524C();

  sub_2237B523C();

  return sub_2237B522C();
}

uint64_t sub_22378CE5C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 64);
  return sub_22378CC64(v2, v3, v4, v5, v6, v7, v8);
}

void sub_22378CE78()
{
  OUTLINED_FUNCTION_16_3();
  v46 = OUTLINED_FUNCTION_25_1();
  v6 = OUTLINED_FUNCTION_4(v46);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_6(v9, v42);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_5(v14, v43);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_4();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_4();
  v20 = objc_allocWithZone(sub_2237B4BFC());
  v21 = sub_2237B451C();
  v22 = v21;
  if (v21)
  {
    v23 = *(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    sub_2237654A4(v21);
    v24 = OUTLINED_FUNCTION_55(OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    OUTLINED_FUNCTION_4(v24);
    (*(v25 + 16))(v4, v0, v24);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v24);
    v45 = AFDeviceSupportsSiriUOD();
    v44 = AFShouldRunAsrOnServerForUOD();
    v29 = OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils;
    sub_223781B5C(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils, v49);
    OUTLINED_FUNCTION_14_5(v49[4]);
    v30 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_31();
    sub_22378EED8(v3 + v30, v5, &unk_27D097C80, &unk_2237B9260);
    if (OUTLINED_FUNCTION_21_2())
    {
      sub_2237710FC(v5, &unk_27D097C80, &unk_2237B9260);
      v2 = 0;
      v24 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_40();
      sub_2237710FC(v5, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_54();
      sub_223771D44(v23);
    }

    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_58();
    sub_223781B5C(v3 + v29, &v48);
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_45(v3 + v30, v38, &unk_27D097C80, &unk_2237B9260);
    if (OUTLINED_FUNCTION_43())
    {
      sub_2237710FC(v24, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_34();
    }

    else
    {
      OUTLINED_FUNCTION_27_0();
      sub_2237710FC(v24, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_28_0();
      sub_223771D44(v22);
    }

    OUTLINED_FUNCTION_4_7();
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_7_4();
    sub_223771484(v39, v47, v2, 4, v45, v44, v40, v41, OS_LOG_TYPE_DEFAULT);

    sub_2237710FC(v24, &qword_27D097A50, &unk_2237B7800);
    OUTLINED_FUNCTION_51();
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v31 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v31, qword_28131B550);

    v32 = sub_2237B5C8C();
    sub_2237B5FFC();

    if (OUTLINED_FUNCTION_57())
    {
      OUTLINED_FUNCTION_20();
      v33 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_50(v33);
      v34 = OUTLINED_FUNCTION_23_1(4.8149e-34);
      *(v0 + 4) = sub_223763694(v34, v1, v35);
      OUTLINED_FUNCTION_17_3(&dword_22375F000, v36, v37, "Failed to create StartDirectActionRequestMessage for request Id: %s");
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_14_2();
}

void sub_22378D280()
{
  OUTLINED_FUNCTION_16_3();
  v2 = v1;
  v41 = v3;
  v42 = v4;
  v40 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_39();
  v22 = *MEMORY[0x277D5CDC8];
  v23 = sub_2237B540C();
  OUTLINED_FUNCTION_4(v23);
  (*(v24 + 104))(v0, v22, v23);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
  sub_2237B437C();

  sub_2237B434C();
  v28 = sub_2237B412C();
  OUTLINED_FUNCTION_4(v28);
  (*(v29 + 16))(v17, v40, v28);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v28);
  sub_2237B439C();

  sub_2237B438C();
  v33 = sub_2237B544C();
  OUTLINED_FUNCTION_4(v33);
  (*(v34 + 16))(v11, v42, v33);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);
  sub_2237B435C();
  v38 = v2;
  sub_2237B436C();
  OUTLINED_FUNCTION_14_2();
}

void sub_22378D52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, char *), char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_53();
  a33 = v38;
  a34 = v39;
  OUTLINED_FUNCTION_11_5();
  v40 = OUTLINED_FUNCTION_33_0();
  objc_allocWithZone(v34(v40));
  v41 = a10(a9, &a11);
  if (v41)
  {
    OUTLINED_FUNCTION_46(OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    OUTLINED_FUNCTION_47(OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v42 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v42, qword_28131B550);

    v43 = sub_2237B5C8C();
    sub_2237B5FFC();

    if (OUTLINED_FUNCTION_41())
    {
      OUTLINED_FUNCTION_20();
      v44 = OUTLINED_FUNCTION_44();
      a22 = v44;
      *v36 = 136315138;
      *(v36 + 4) = sub_223763694(v35, v37, &a22);
      OUTLINED_FUNCTION_24_1(&dword_22375F000);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_13_5();
    }
  }

  OUTLINED_FUNCTION_52();
}

uint64_t sub_22378D66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a5;
  v22 = a7;
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = *MEMORY[0x277D5CDC8];
  v16 = sub_2237B540C();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
  sub_2237B508C();

  sub_2237B506C();
  v17 = sub_2237B412C();
  (*(*(v17 - 8) + 16))(v10, v20, v17);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v17);
  sub_2237B50AC();

  sub_2237B509C();
  sub_2237B505C();

  sub_2237B504C();

  return sub_2237B507C();
}

void sub_22378D880()
{
  OUTLINED_FUNCTION_53();
  v1 = v0;
  OUTLINED_FUNCTION_30_0();
  swift_getObjectType();
  objc_allocWithZone(sub_2237B4E4C());
  v2 = sub_2237B4DBC();
  if (v2)
  {
    OUTLINED_FUNCTION_46(OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    v3 = OUTLINED_FUNCTION_9_6(OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    sub_223786204(v3, v4, v5, v6);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v7 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v7, qword_28131B550);

    v8 = sub_2237B5C8C();
    sub_2237B5FFC();
    OUTLINED_FUNCTION_48();
    if (OUTLINED_FUNCTION_41())
    {
      OUTLINED_FUNCTION_20();
      v14 = OUTLINED_FUNCTION_29_0();
      *v1 = 136315138;
      v9 = OUTLINED_FUNCTION_16_5();
      *(v1 + 4) = sub_223763694(v9, v10, v11);
      OUTLINED_FUNCTION_19(&dword_22375F000, v12, v13, "Failed to create DirectActionResultCandidateMessage for request Id: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      OUTLINED_FUNCTION_13_5();
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_52();
}

uint64_t sub_22378DA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a5;
  v30 = a7;
  v27[1] = a2;
  v28 = a4;
  v31 = a10;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v27 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v27 - v20;
  v22 = *MEMORY[0x277D5CDC8];
  v23 = sub_2237B540C();
  (*(*(v23 - 8) + 104))(v21, v22, v23);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v23);
  sub_2237B4E0C();

  sub_2237B4DEC();
  v24 = sub_2237B412C();
  (*(*(v24 - 8) + 16))(v17, v28, v24);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v24);
  sub_2237B4E3C();

  sub_2237B4E2C();
  sub_2237B4DDC();

  sub_2237B4DCC();

  sub_2237B4DFC();
  v25 = sub_2237B56DC();
  (*(*(v25 - 8) + 16))(v13, v31, v25);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
  return sub_2237B4E1C();
}

BOOL sub_22378DD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, void *))
{
  OUTLINED_FUNCTION_30_0();
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v30 = v9;
  v31 = v8;
  ObjectType = swift_getObjectType();
  v16 = objc_allocWithZone((a6)(0));
  v17 = a8(a7, v29);
  if (v17)
  {
    OUTLINED_FUNCTION_46(OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    v18 = OUTLINED_FUNCTION_9_6(OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    sub_223786220(v18, v19, v20, v21);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v22 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v22, qword_28131B550);

    v23 = sub_2237B5C8C();
    sub_2237B5FFC();
    OUTLINED_FUNCTION_48();
    if (OUTLINED_FUNCTION_41())
    {
      OUTLINED_FUNCTION_20();
      v24 = OUTLINED_FUNCTION_44();
      v33 = v24;
      *a6 = 136315138;
      v25 = OUTLINED_FUNCTION_16_5();
      *(a6 + 4) = sub_223763694(v25, v26, v27);
      OUTLINED_FUNCTION_24_1(&dword_22375F000);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_13_5();
    }
  }

  return v17 != 0;
}

void sub_22378DEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_30_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = *MEMORY[0x277D5CDC8];
  v36 = sub_2237B540C();
  OUTLINED_FUNCTION_4(v36);
  (*(v37 + 104))(v34, v35, v36);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v36);
  sub_2237B447C();

  sub_2237B443C();
  v41 = sub_2237B412C();
  OUTLINED_FUNCTION_4(v41);
  (*(v42 + 16))(v28, v20, v41);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v41);
  sub_2237B449C();

  sub_2237B448C();
  sub_2237B446C();
  sub_2237B444C();
  sub_2237B445C();
  OUTLINED_FUNCTION_14_2();
}

void sub_22378E068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_16_3();
  v23 = v21;
  v99 = v24;
  v98 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v96 = type metadata accessor for RequestDispatcher.SessionContext(0);
  v38 = OUTLINED_FUNCTION_4(v96);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v95 = &v90[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  v43 = OUTLINED_FUNCTION_1(v42);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v43);
  v97 = &v90[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_20_4();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v51);
  v53 = &v90[-v52];
  v102 = v37;
  v54 = v33;
  v103 = v35;
  v104 = v33;
  v105 = v31;
  v100 = v31;
  v101 = v29;
  v106 = v29;
  v107 = v27;
  v108 = v98;
  v109 = v99;
  v110 = a21;
  v55 = objc_allocWithZone(sub_2237B4F4C());
  v56 = sub_2237B4ECC();
  if (v56)
  {
    v57 = *(v23 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    v99 = v56;
    sub_2237654A4(v56);
    v93 = *(v23 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    v58 = sub_2237B412C();
    OUTLINED_FUNCTION_4(v58);
    (*(v59 + 16))(v53, v54, v58);
    v98 = v53;
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v58);
    v92 = AFDeviceSupportsSiriUOD();
    v91 = AFShouldRunAsrOnServerForUOD();
    v63 = OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils;
    sub_223781B5C(v23 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils, v112);
    v64 = v113;
    OUTLINED_FUNCTION_14_5(v114);
    v65 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_31();
    v94 = v23;
    sub_22378EED8(v23 + v65, v22, &unk_27D097C80, &unk_2237B9260);
    v66 = v96;
    if (__swift_getEnumTagSinglePayload(v22, 1, v96))
    {
      sub_2237710FC(v22, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_34();
    }

    else
    {
      v75 = v95;
      sub_22378ED08(v22, v95);
      sub_2237710FC(v22, &unk_27D097C80, &unk_2237B9260);
      v76 = &v75[*(v66 + 20)];
      v78 = *v76;
      v77 = v76[1];

      sub_223771D44(v75);
    }

    v79 = v100;
    sub_2237B58AC();
    OUTLINED_FUNCTION_58();
    v80 = v94;
    sub_223781B5C(v94 + v63, &v111);
    OUTLINED_FUNCTION_19_4();
    v81 = v80 + v65;
    v82 = v97;
    sub_22378EED8(v81, v97, &unk_27D097C80, &unk_2237B9260);
    if (__swift_getEnumTagSinglePayload(v82, 1, v66))
    {
      sub_2237710FC(v82, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_34();
    }

    else
    {
      v83 = v95;
      sub_22378ED08(v82, v95);
      sub_2237710FC(v82, &unk_27D097C80, &unk_2237B9260);
      v84 = &v83[*(v66 + 20)];
      v86 = *v84;
      v85 = v84[1];

      sub_223771D44(v83);
    }

    v87 = v99;
    v88 = v98;
    v89 = v101;
    sub_2237B58AC();
    OUTLINED_FUNCTION_56();
    sub_223771484(v88, v79, v89, 3, v92, v91, v64 & 1, v57 & 1, OS_LOG_TYPE_DEFAULT);

    sub_2237710FC(v88, &qword_27D097A50, &unk_2237B7800);
    OUTLINED_FUNCTION_51();
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v67 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v67, qword_28131B550);
    v68 = v101;

    v69 = sub_2237B5C8C();
    sub_2237B5FFC();

    v70 = OUTLINED_FUNCTION_57();
    v71 = v100;
    if (v70)
    {
      OUTLINED_FUNCTION_20();
      v72 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_50(v72);
      *v31 = 136315138;
      *(v31 + 4) = sub_223763694(v71, v68, v112);
      OUTLINED_FUNCTION_17_3(&dword_22375F000, v73, v74, "Failed to create StartCorrectedSpeechRequestMessage for request Id: %s");
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_22378E60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v30 = a5;
  v31 = a7;
  v29 = a4;
  v32 = a10;
  v33 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v28 - v20;
  v22 = *MEMORY[0x277D5CDC8];
  v23 = sub_2237B540C();
  (*(*(v23 - 8) + 104))(v21, v22, v23);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v23);
  sub_2237B4F1C();

  sub_2237B4EDC();
  v24 = sub_2237B412C();
  (*(*(v24 - 8) + 16))(v17, v29, v24);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v24);
  sub_2237B4F3C();

  sub_2237B4F2C();
  v25 = sub_2237B544C();
  (*(*(v25 - 8) + 16))(v13, v31, v25);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
  sub_2237B4EEC();

  sub_2237B4EFC();
  v26 = v32;
  return sub_2237B4F0C();
}

void sub_22378E920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, char *), char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_53();
  a33 = v38;
  a34 = v39;
  OUTLINED_FUNCTION_11_5();
  v40 = OUTLINED_FUNCTION_33_0();
  objc_allocWithZone(v34(v40));
  v41 = a10(a9, &a11);
  if (v41)
  {
    OUTLINED_FUNCTION_46(OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    OUTLINED_FUNCTION_47(OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v42 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v42, qword_28131B550);

    v43 = sub_2237B5C8C();
    sub_2237B5FFC();

    if (OUTLINED_FUNCTION_41())
    {
      OUTLINED_FUNCTION_20();
      v44 = OUTLINED_FUNCTION_29_0();
      a22 = v44;
      *v36 = 136315138;
      *(v36 + 4) = sub_223763694(v35, v37, &a22);
      OUTLINED_FUNCTION_19(&dword_22375F000, v45, v46, "Failed to create TextBasedResultCandidateMessage for request Id: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      OUTLINED_FUNCTION_13_5();
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_52();
}

void sub_22378EA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_16_3();
  v57[1] = v22;
  v57[2] = v23;
  v57[0] = v24;
  v58 = a21;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  OUTLINED_FUNCTION_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_39();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v32);
  v34 = v57 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v38);
  v40 = v57 - v39;
  v41 = *MEMORY[0x277D5CDC8];
  v42 = sub_2237B540C();
  OUTLINED_FUNCTION_4(v42);
  (*(v43 + 104))(v40, v41, v42);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v42);
  sub_2237B4C3C();

  sub_2237B4C2C();
  v47 = sub_2237B412C();
  OUTLINED_FUNCTION_4(v47);
  (*(v48 + 16))(v34, v57[0], v47);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v47);
  sub_2237B4C6C();

  sub_2237B4C5C();
  sub_2237B4C1C();

  sub_2237B4C7C();
  v52 = sub_2237B56DC();
  OUTLINED_FUNCTION_4(v52);
  (*(v53 + 16))(v21, v58, v52);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v52);
  sub_2237B4C4C();
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_22378ED08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestDispatcher.SessionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22378EDD8()
{
  OUTLINED_FUNCTION_8_5();
  v9 = v0[11];
  return sub_22378DA00(v1, v2, v3, v4, v5, v6, v7, v0[8], v0[9], v0[10]);
}

void sub_22378EE44()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 64);
  sub_22378D280();
}

uint64_t sub_22378EE7C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 64);
  v8 = *(v0 + 88);
  v7 = *(v0 + 72);
  return v5(v2, v3, v4);
}

uint64_t sub_22378EEBC()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 64);
  return sub_22378BFC4(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_22378EED8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22378EF50()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 72);
  v6 = *(v0 + 80);
  return v4(v2, v3);
}

uint64_t OUTLINED_FUNCTION_25_1()
{

  return type metadata accessor for RequestDispatcher.SessionContext(0);
}

uint64_t OUTLINED_FUNCTION_28_0()
{
  v3 = (v0 + *(v1 + 20));
  v5 = *v3;
  v4 = v3[1];
}

uint64_t OUTLINED_FUNCTION_40()
{
  *(v2 - 352) = v0;
  v4 = *(v2 - 312);

  return sub_22378ED08(v1, v4);
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 - 296);

  return sub_22378EED8(a1, v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_46@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);

  return sub_2237654A4(v1);
}

void OUTLINED_FUNCTION_47(uint64_t a1@<X8>)
{
  v5 = *(v2 + a1);

  sub_223786204(v1, v3, 48, 0xE100000000000000);
}

uint64_t OUTLINED_FUNCTION_48()
{
}

uint64_t OUTLINED_FUNCTION_51()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 - 192));

  return __swift_destroy_boxed_opaque_existential_0Tm((v0 - 128));
}

uint64_t OUTLINED_FUNCTION_55@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 328) = *(v1 + a1);

  return sub_2237B412C();
}

BOOL OUTLINED_FUNCTION_57()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_58()
{
}

uint64_t sub_22378F2E8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_getObjectType();
  sub_223761B80();
  sub_2237B572C();
  v5 = sub_22378F394(a2);
  sub_22379114C(v5, a3, 1);
}

void *sub_22378F394(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_2237B576C() & 1) != 0 || (v3 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), (sub_2237B57FC()))
  {
    v4 = sub_2237A6AAC(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_2237A6AAC((v5 > 1), v6 + 1, 1, v4);
    }

    v7 = sub_2237B419C();
    v8 = sub_223766F90(&qword_28131B4A0, MEMORY[0x277CF3B38]);
    v4[2] = v6 + 1;
    v9 = &v4[5 * v6];
    v9[4] = 19534;
    v9[5] = 0xE200000000000000;
    v9[6] = v7;
    v9[7] = v8;
    *(v9 + 64) = 0;
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_2237B580C();
    v12 = v4[2];
    if (v11)
    {
      v13 = v4[3];
      v14 = v12 + 1;
      if (v12 >= v13 >> 1)
      {
        v4 = sub_2237A6AAC((v13 > 1), v12 + 1, 1, v4);
      }

      v15 = sub_2237B418C();
      v16 = sub_223766F90(&unk_28131B4A8, MEMORY[0x277CF3B30]);
      v4[2] = v14;
      v17 = &v4[5 * v12];
      v17[4] = 0x726574756F524C4ELL;
      v17[5] = 0xE800000000000000;
      v17[6] = v15;
      v17[7] = v16;
      *(v17 + 64) = 0;
    }

    else
    {
      v14 = v4[2];
    }

    v18 = v4[3];
    if (v14 >= v18 >> 1)
    {
      v4 = sub_2237A6AAC((v18 > 1), v14 + 1, 1, v4);
    }

    v19 = sub_2237B56FC();
    v20 = sub_223766F90(&qword_28131A868, MEMORY[0x277D565F0]);
    v4[2] = v14 + 1;
    v21 = &v4[5 * v14];
    v21[4] = 0x53454D4D4F50;
    v21[5] = 0xE600000000000000;
    v21[6] = v19;
    v21[7] = v20;
    *(v21 + 64) = 0;
    if (sub_2237B576C())
    {
      v23 = v4[2];
      v22 = v4[3];
      if (v23 >= v22 >> 1)
      {
        v4 = sub_2237A6AAC((v22 > 1), v23 + 1, 1, v4);
      }

      v24 = sub_2237B416C();
      v25 = sub_223766F90(&qword_28131B4C0, MEMORY[0x277D55F98]);
      v4[2] = v23 + 1;
      v26 = &v4[5 * v23];
      v26[4] = 0x6C66726574747542;
      v26[5] = 0xE900000000000079;
      v26[6] = v24;
      v26[7] = v25;
      *(v26 + 64) = 0;
    }

    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (sub_2237B579C())
    {
      v29 = v4[2];
      v28 = v4[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v4 = sub_2237A6AAC((v28 > 1), v29 + 1, 1, v4);
      }

      v31 = sub_2237B593C();
      v32 = sub_223766F90(&unk_28131A850, MEMORY[0x277D46AF0]);
      v4[2] = v30;
      v33 = &v4[5 * v29];
      v33[4] = 0xD000000000000011;
      v33[5] = 0x80000002237BB170;
      v33[6] = v31;
      v33[7] = v32;
      *(v33 + 64) = 0;
      v34 = v4[3];
      v35 = v29 + 2;
      if ((v29 + 2) > (v34 >> 1))
      {
        v4 = sub_2237A6AAC((v34 > 1), v29 + 2, 1, v4);
      }

      v36 = sub_2237B417C();
      v37 = sub_223766F90(&qword_28131B4B8, MEMORY[0x277D61A10]);
      v4[2] = v35;
      v38 = &v4[5 * v30];
      v38[4] = 18773;
      v38[5] = 0xE200000000000000;
      v38[6] = v36;
      v38[7] = v37;
      *(v38 + 64) = 1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = sub_2237B57AC();
  v41 = sub_22378FE54(v40 & 1);
  if (v41)
  {
    v43 = v41;
    v44 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2237A6AAC(0, v4[2] + 1, 1, v4);
    }

    v46 = v4[2];
    v45 = v4[3];
    if (v46 >= v45 >> 1)
    {
      v4 = sub_2237A6AAC((v45 > 1), v46 + 1, 1, v4);
    }

    v4[2] = v46 + 1;
    v47 = &v4[5 * v46];
    v47[4] = 5526357;
    v47[5] = 0xE300000000000000;
    v47[6] = v43;
    v47[7] = v44;
    *(v47 + 64) = 0;
  }

  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_2237B57EC() & 1) != 0 || (sub_2237B576C() & 1) != 0 || (v49 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), (sub_2237B57FC()))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2237A6AAC(0, v4[2] + 1, 1, v4);
    }

    v51 = v4[2];
    v50 = v4[3];
    if (v51 >= v50 >> 1)
    {
      v4 = sub_2237A6AAC((v50 > 1), v51 + 1, 1, v4);
    }

    v52 = sub_2237B5D9C();
    v53 = sub_223766F90(&qword_28131A838, MEMORY[0x277CE53E8]);
    v4[2] = v51 + 1;
    v54 = &v4[5 * v51];
    v54[4] = 5395265;
    v54[5] = 0xE300000000000000;
    v54[6] = v52;
    v54[7] = v53;
    *(v54 + 64) = 0;
  }

  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_2237B57CC())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2237A6AAC(0, v4[2] + 1, 1, v4);
    }

    v57 = v4[2];
    v56 = v4[3];
    if (v57 >= v56 >> 1)
    {
      v4 = sub_2237A6AAC((v56 > 1), v57 + 1, 1, v4);
    }

    v58 = sub_2237B56EC();
    v59 = sub_223766F90(&qword_28131A870, MEMORY[0x277D55F90]);
    v4[2] = v57 + 1;
    v60 = &v4[5 * v57];
    v60[4] = 0x65727574736547;
    v60[5] = 0xE700000000000000;
    v60[6] = v58;
    v60[7] = v59;
    *(v60 + 64) = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_2237A6AAC(0, v4[2] + 1, 1, v4);
  }

  v62 = v4[2];
  v61 = v4[3];
  if (v62 >= v61 >> 1)
  {
    v4 = sub_2237A6AAC((v61 > 1), v62 + 1, 1, v4);
  }

  v63 = sub_2237B41AC();
  v64 = sub_223766F90(&unk_28131B490, MEMORY[0x277D5C2F0]);
  v4[2] = v62 + 1;
  v65 = &v4[5 * v62];
  strcpy(v65 + 32, "Conversation");
  v65[45] = 0;
  *(v65 + 23) = -5120;
  *(v65 + 6) = v63;
  *(v65 + 7) = v64;
  v65[64] = 0;
  v66 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_2237B57AC())
  {
    v68 = v4[2];
    v67 = v4[3];
    if (v68 >= v67 >> 1)
    {
      v4 = sub_2237A6AAC((v67 > 1), v68 + 1, 1, v4);
    }

    v69 = sub_2237B594C();
    v70 = sub_223766F90(&qword_28131A848, MEMORY[0x277D46AF8]);
    v4[2] = v68 + 1;
    v71 = &v4[5 * v68];
    v71[4] = 0x657261727543;
    v71[5] = 0xE600000000000000;
    v71[6] = v69;
    v71[7] = v70;
    *(v71 + 64) = 0;
  }

  return v4;
}

id RequestDispatcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestDispatcher(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22378FDE0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2237B5E1C();

  v2 = [v0 initWithPath_];

  return v2;
}

uint64_t sub_22378FE54(char a1)
{
  if (qword_28131AA10 != -1)
  {
    swift_once();
  }

  v2 = sub_2237B5C9C();
  __swift_project_value_buffer(v2, qword_28131B550);
  v3 = sub_2237B5C8C();
  v4 = sub_2237B601C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22375F000, v3, v4, "Attempting to load the USTBridge framework.", v5, 2u);
    MEMORY[0x223DEB690](v5, -1, -1);
  }

  if ((a1 & 1) == 0)
  {
    v7 = sub_2237B5C8C();
    v13 = sub_2237B601C();
    if (os_log_type_enabled(v7, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Not loading USTBridge in an external build.";
LABEL_16:
      _os_log_impl(&dword_22375F000, v7, v13, v15, v14, 2u);
      MEMORY[0x223DEB690](v14, -1, -1);
    }

LABEL_23:

    return 0;
  }

  sub_223766240(0, &unk_28131A7C0, 0x277CCA8D8);
  v6 = sub_22378FDE0();
  if (!v6)
  {
    v7 = sub_2237B5C8C();
    v13 = sub_2237B5FFC();
    if (os_log_type_enabled(v7, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Can't locate the USTBridge framework.";
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  v7 = v6;
  if (![v6 principalClass])
  {
    v10 = sub_2237B5C8C();
    v16 = sub_2237B5FFC();
    if (os_log_type_enabled(v10, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "USTBridge bundle didn't have a principal class.";
LABEL_21:
      _os_log_impl(&dword_22375F000, v10, v16, v18, v17, 2u);
      MEMORY[0x223DEB690](v17, -1, -1);
    }

LABEL_22:

    goto LABEL_23;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v9 = dynamic_cast_existential_1_conditional(ObjCClassMetadata);
  v10 = sub_2237B5C8C();
  if (!v9)
  {
    v16 = sub_2237B5FFC();
    if (os_log_type_enabled(v10, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "USTBridge's principal class had unexpected type.";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v11 = sub_2237B601C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22375F000, v10, v11, "Successfully loaded the USTBridge class.", v12, 2u);
    MEMORY[0x223DEB690](v12, -1, -1);
  }

  return v9;
}

void sub_2237901A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v25;
  a20 = v26;
  v189 = v21;
  v28 = v27;
  OUTLINED_FUNCTION_297();
  v29 = sub_2237B59CC();
  v30 = OUTLINED_FUNCTION_8_6(v29, &v204);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_69();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_69();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_69();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_2(v36);
  v194 = sub_2237B603C();
  v37 = OUTLINED_FUNCTION_4(v194);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v40);
  v41 = sub_2237B605C();
  v42 = OUTLINED_FUNCTION_8_6(v41, &a12);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v45);
  v46 = sub_2237B5D0C();
  v47 = OUTLINED_FUNCTION_1(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v50);
  v51 = sub_2237B5C7C();
  v52 = OUTLINED_FUNCTION_8_6(v51, &v207);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_62(v55);
  v195 = v20;
  v202 = *(v20 + 16);
  v56 = sub_223776EFC(0, v202, 0, MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_243(v56);
  v200 = sub_2237A688C(v28);
  if (!v200)
  {
LABEL_18:
    sub_223761B80();
    sub_2237B574C();
    if (!v202)
    {
LABEL_47:
      v141 = &v189[OBJC_IVAR___SRDRequestDispatcherInternal_featureChecker];
      v142 = *&v189[OBJC_IVAR___SRDRequestDispatcherInternal_featureChecker + 24];
      v143 = *&v189[OBJC_IVAR___SRDRequestDispatcherInternal_featureChecker + 32];
      v144 = OUTLINED_FUNCTION_1_1();
      __swift_project_boxed_opaque_existential_1(v144, v145);
      v146 = *&v189[OBJC_IVAR___SRDRequestDispatcherInternal_messagePublisher];
      v147 = *&v189[OBJC_IVAR___SRDRequestDispatcherInternal_serviceHelper];
      v148 = *&v189[OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager];
      OUTLINED_FUNCTION_20_1();
      v150 = *(v149 + 64);
      OUTLINED_FUNCTION_0();
      MEMORY[0x28223BE20](v151);
      OUTLINED_FUNCTION_226();
      (*(v152 + 16))(v23);
      OUTLINED_FUNCTION_283();
      sub_2237B3DA4(v153, v154, v155, v23, v142, v143, v156);
      isa = v141[3].isa;
      v158 = v141[4].isa;
      v159 = OUTLINED_FUNCTION_349();
      __swift_project_boxed_opaque_existential_1(v159, v160);
      OUTLINED_FUNCTION_8_2();

      swift_unknownObjectRetain();

      OUTLINED_FUNCTION_356();
      if (sub_2237B580C())
      {
        v161 = v141[3].isa;
        v162 = v141[4].isa;
        v163 = OUTLINED_FUNCTION_349();
        OUTLINED_FUNCTION_259(v163, v164);
        if (sub_2237B577C())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097D08, qword_2237B92C0);
          sub_2237A91D4(&v209, &v203);
          sub_2237A9230();
          v141 = sub_2237B581C();
          OUTLINED_FUNCTION_211();
          v178 = *(v176 + 16);
          v177 = *(v176 + 24);
          if (v178 >= v177 >> 1)
          {
            v185 = OUTLINED_FUNCTION_306((v177 > 1), v178 + 1);
            OUTLINED_FUNCTION_243(v185);
          }

          sub_223766FD8(&qword_28131A860, &unk_27D097D08, qword_2237B92C0);
          OUTLINED_FUNCTION_211();
          *(v179 + 16) = v178 + 1;
          v180 = v179 + 16 * v178;
          *(v180 + 32) = v141;
          *(v180 + 40) = v181;
        }
      }

      goto LABEL_56;
    }

    v192 = sub_223766240(0, &qword_28131A7D8, 0x277D85C78);
    v188 = OBJC_IVAR___SRDRequestDispatcherInternal_serviceHelper;
    OUTLINED_FUNCTION_206();
    v191 = (v77 + 104);
    v187 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager;
    v78 = (v195 + 64);
    v190 = *v79;
    while (1)
    {
      v81 = *(v78 - 4);
      v80 = *(v78 - 3);
      v82 = *(v78 - 1);
      v199 = *(v78 - 2);
      v201 = v78;
      v197 = *v78;
      v83 = qword_28131AA10;
      swift_bridgeObjectRetain_n();
      if (v83 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v84 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v84, qword_28131B550);

      v85 = sub_2237B5C8C();
      v86 = sub_2237B5FEC();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = OUTLINED_FUNCTION_20();
        v209 = OUTLINED_FUNCTION_19_0();
        *v87 = 136315138;
        *(v87 + 4) = sub_223763694(v81, v80, &v209);
        _os_log_impl(&dword_22375F000, v85, v86, "Creating Bridge: %s...", v87, 0xCu);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_135();
      }

      v209 = 0;
      v210 = 0xE000000000000000;
      sub_2237B613C();

      v209 = 0xD00000000000001DLL;
      OUTLINED_FUNCTION_183();
      v210 = v88;
      MEMORY[0x223DEAAD0](v81, v80);
      v23 = v210;
      OUTLINED_FUNCTION_287(&a10);
      sub_2237B5CFC();
      (*v191)(v193, v190);
      v209 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_140();
      sub_223766F90(&qword_28131A7E0, v89);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979A8, &qword_2237B8500);
      OUTLINED_FUNCTION_4_8();
      sub_223766FD8(&qword_28131A810, &qword_27D0979A8, &qword_2237B8500);
      sub_2237B60FC();
      OUTLINED_FUNCTION_293();
      v90 = sub_2237B608C();
      if (v197)
      {

        if (!dynamic_cast_existential_1_conditional(v199))
        {

          OUTLINED_FUNCTION_343();
          v135 = sub_2237B5C8C();
          v136 = sub_2237B600C();
          OUTLINED_FUNCTION_5(v136);
          OUTLINED_FUNCTION_337();
          if (v137)
          {
            v138 = OUTLINED_FUNCTION_7_3();
            *v138 = 0;
            _os_log_impl(&dword_22375F000, v135, v192, "isXPCListening set but bridge does not implement required interface", v138, 2u);
            OUTLINED_FUNCTION_3_0();
          }

          goto LABEL_42;
        }

        OUTLINED_FUNCTION_337();
        if (!*(v193 + 16) || (v23 = v91, OUTLINED_FUNCTION_136(), v92 = sub_22376504C(), (v93 & 1) == 0))
        {

          OUTLINED_FUNCTION_343();
          v129 = sub_2237B5C8C();
          v130 = sub_2237B5FFC();

          if (OUTLINED_FUNCTION_318())
          {
            OUTLINED_FUNCTION_20();
            v209 = OUTLINED_FUNCTION_44();
            *v23 = 136315138;
            v131 = OUTLINED_FUNCTION_136();
            v134 = sub_223763694(v131, v132, v133);

            *(v23 + 4) = v134;
            OUTLINED_FUNCTION_308(&dword_22375F000, v129, v130, "Could not find XpcConnectionListener for Bridge: %s");
            OUTLINED_FUNCTION_109();
            OUTLINED_FUNCTION_13_5();
          }

          else
          {
          }

LABEL_42:
          goto LABEL_43;
        }

        v94 = *(*(v193 + 56) + 8 * v92);
        OUTLINED_FUNCTION_286();
        v96 = *&v189[v95];
        v97 = type metadata accessor for MessagePublisher();
        OUTLINED_FUNCTION_132(v97);
        v211 = sub_223766F90(&qword_28131B488, v98);
        v209 = v96;
        v99 = *&v189[v188];
        v100 = *&v189[v187];
        v101 = type metadata accessor for SessionsManager();
        OUTLINED_FUNCTION_131(v101);
        v205 = sub_223766F90(&qword_28131B2B0, v102);
        v203 = v100;
        v103 = v94;

        swift_unknownObjectRetain();
        v104 = v90;

        OUTLINED_FUNCTION_136();
        v105 = sub_2237B554C();
        OUTLINED_FUNCTION_211();
        v107 = *(v106 + 16);
        v108 = *(v106 + 24);
        swift_unknownObjectRetain();
        if (v107 >= v108 >> 1)
        {
          v109 = v107 + 1;
          v140 = OUTLINED_FUNCTION_306((v108 > 1), v107 + 1);
          OUTLINED_FUNCTION_243(v140);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v109 = v107 + 1;
        }

        v110 = *(*(v23 + 8) + 8);
        OUTLINED_FUNCTION_227();
        *(v112 + 16) = v109;
        v113 = v112 + 16 * v107;
        *(v113 + 32) = v105;
      }

      else
      {
        OUTLINED_FUNCTION_286();
        v115 = *&v189[v114];
        v116 = type metadata accessor for MessagePublisher();
        OUTLINED_FUNCTION_132(v116);
        v211 = sub_223766F90(&qword_28131B488, v117);
        v209 = v115;
        v23 = *&v189[v188];
        v118 = *&v189[v187];
        v119 = type metadata accessor for SessionsManager();
        OUTLINED_FUNCTION_131(v119);
        v205 = sub_223766F90(&qword_28131B2B0, v120);
        v203 = v118;
        v121 = v90;
        OUTLINED_FUNCTION_370();
        swift_unknownObjectRetain();

        v122 = sub_2237B556C();

        OUTLINED_FUNCTION_211();
        v124 = *(v123 + 16);
        v125 = *(v123 + 24);
        swift_unknownObjectRetain();
        if (v124 >= v125 >> 1)
        {
          v126 = v124 + 1;
          v139 = OUTLINED_FUNCTION_306((v125 > 1), v124 + 1);
          OUTLINED_FUNCTION_243(v139);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v126 = v124 + 1;
        }

        v127 = *(v82 + 8);
        OUTLINED_FUNCTION_227();
        *(v128 + 16) = v126;
        v113 = v128 + 16 * v124;
        *(v113 + 32) = v122;
      }

      *(v113 + 40) = v111;
      OUTLINED_FUNCTION_337();
LABEL_43:
      v78 = v201 + 40;
      if (!--v202)
      {
        goto LABEL_47;
      }
    }
  }

  v57 = 0;
  v198 = v28 & 0xC000000000000001;
  v58 = MEMORY[0x277D84F98];
  v196 = v28;
  while (1)
  {
    if (v198)
    {
      v59 = MEMORY[0x223DEADA0](v57, v28);
    }

    else
    {
      OUTLINED_FUNCTION_290();
      if (v57 >= *(v60 + 16))
      {
        goto LABEL_60;
      }

      v59 = *(v28 + 8 * v57 + 32);
    }

    v61 = v59;
    v62 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    v63 = [v59 bridgeName];
    v64 = sub_2237B5E2C();
    v24 = v65;

    v66 = v61;
    swift_isUniquelyReferenced_nonNull_native();
    v209 = v58;
    OUTLINED_FUNCTION_100();
    v67 = sub_22376504C();
    if (__OFADD__(v58[2], (v68 & 1) == 0))
    {
      goto LABEL_58;
    }

    v23 = v67;
    v22 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097D00, &unk_2237B92B0);
    if (sub_2237B618C())
    {
      OUTLINED_FUNCTION_100();
      sub_22376504C();
      OUTLINED_FUNCTION_269();
      if (!v70)
      {
        sub_2237B62CC();
        __break(1u);
        return;
      }

      v23 = v69;
    }

    if (v22)
    {

      v58 = v209;
      v71 = v209[7];
      v72 = *(v71 + 8 * v23);
      *(v71 + 8 * v23) = v66;
    }

    else
    {
      v58 = v209;
      OUTLINED_FUNCTION_266(&v209[v23 >> 6]);
      v73 = (v58[6] + 16 * v23);
      *v73 = v64;
      v73[1] = v24;
      *(v58[7] + 8 * v23) = v66;

      v74 = v58[2];
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v75)
      {
        goto LABEL_59;
      }

      v58[2] = v76;
    }

    ++v57;
    v28 = v196;
    if (v62 == v200)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  OUTLINED_FUNCTION_0_6();
  swift_once();
  v165 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v165, qword_28131B550);
  v166 = *(v23 + 16);
  OUTLINED_FUNCTION_216();
  v167();
  v141 = sub_2237B5C8C();
  v168 = sub_2237B600C();
  if (os_log_type_enabled(v141, v168))
  {
    OUTLINED_FUNCTION_20();
    v169 = OUTLINED_FUNCTION_32();
    v203 = v169;
    *v22 = 136446210;
    sub_223766F90(&unk_27D097920, MEMORY[0x277D46B30]);
    sub_2237B62FC();
    v170 = OUTLINED_FUNCTION_148();
    v171 = *(v23 + 8);
    v171(v170, v24);
    v172 = OUTLINED_FUNCTION_256();
    sub_223763694(v172, v173, v174);
    OUTLINED_FUNCTION_148();

    *(v22 + 4) = v186;
    OUTLINED_FUNCTION_217(&dword_22375F000, v141, v168, "Failed to instantiate IntelligenceFlowSessionBridge bridge with error %{public}s");
    __swift_destroy_boxed_opaque_existential_0Tm(v169);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_3_0();

    v175 = OUTLINED_FUNCTION_100();
    (v171)(v175);
    OUTLINED_FUNCTION_337();
  }

  else
  {

    v141 = *(v23 + 8);
    v182 = OUTLINED_FUNCTION_332();
    (v141)(v182);
    v183 = OUTLINED_FUNCTION_100();
    (v141)(v183);
  }

LABEL_56:
  OUTLINED_FUNCTION_155(&v208);
  sub_2237B572C();
  sub_2237A9180(&v209);
  OUTLINED_FUNCTION_96(&v206);
  v184(v141);

  OUTLINED_FUNCTION_14_2();
}

void sub_2237912BC(uint64_t *a1, uint64_t *a2)
{
  v4 = v2;
  if (qword_28131AA10 != -1)
  {
LABEL_60:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v7 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v7, qword_28131B550);
  swift_unknownObjectRetain();
  v91 = v2;
  v8 = sub_2237B5C8C();
  v9 = sub_2237B5FEC();
  swift_unknownObjectRelease();
  v92 = a1;
  v93 = a2;
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_20();
    v10 = OUTLINED_FUNCTION_32();
    v97[0] = v10;
    *v3 = 136315138;
    swift_getObjectType();
    v11 = sub_2237B568C();
    v13 = sub_223763694(v11, v12, v97);

    *(v3 + 4) = v13;
    a2 = v93;
    OUTLINED_FUNCTION_217(&dword_22375F000, v8, v9, "About to register bridge %s to message bus...");
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    a1 = v92;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3_0();
  }

  v14 = *(v4 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
  v15 = OUTLINED_FUNCTION_240();
  if (sub_223782228(v15, v16))
  {
    v2 = a1;
    swift_getObjectType();
    v17 = sub_2237B567C();
    v18 = v17;
    v84 = *(v17 + 16);
    if (v84)
    {
      v19 = OBJC_IVAR___SRDRequestDispatcherInternal_aceCommandDispatcher;
      v83 = v17 + 32;
      OUTLINED_FUNCTION_14_3();
      swift_beginAccess();
      v3 = 0;
      v80 = v18;
      v81 = v19;
      v82 = v4;
      do
      {
        if (v3 >= *(v18 + 16))
        {
          goto LABEL_57;
        }

        v20 = (v83 + 16 * v3);
        v22 = *v20;
        v21 = v20[1];

        v87 = v22;
        v23 = sub_2237B566C();
        v2 = *(v4 + v19);
        v85 = v3;
        if (v2[2])
        {

          v24 = sub_22376504C();
          if (v25)
          {
            v26 = *(v2[7] + 8 * v24);

            goto LABEL_13;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097980, &qword_2237B8320);
        v26 = sub_2237B5DBC();
LABEL_13:
        v86 = v21;
        v90 = *(v23 + 16);
        if (v90)
        {
          v4 = 0;
          v27 = (v23 + 40);
          v89 = v23;
          while (v4 < *(v23 + 16))
          {
            v28 = *(v27 - 1);
            v29 = *v27;

            swift_isUniquelyReferenced_nonNull_native();
            v96[0] = v26;
            v94 = v28;
            OUTLINED_FUNCTION_350();
            v2 = v26;
            v30 = sub_22376504C();
            v32 = v26[2];
            v33 = (v31 & 1) == 0;
            a1 = (v32 + v33);
            if (__OFADD__(v32, v33))
            {
              goto LABEL_55;
            }

            v34 = v30;
            v3 = v31;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097CF0, &qword_2237B92A0);
            v2 = v96;
            if (sub_2237B618C())
            {
              v2 = v96[0];
              sub_22376504C();
              OUTLINED_FUNCTION_269();
              a1 = v92;
              if (!v36)
              {
                goto LABEL_61;
              }

              v34 = v35;
            }

            else
            {
              a1 = v92;
            }

            v26 = v96[0];
            if (v3)
            {
              v37 = (*(v96[0] + 56) + 16 * v34);
              v38 = *v37;
              v3 = v37[1];
              *v37 = a1;
              v37[1] = a2;
              swift_unknownObjectRetain();

              swift_unknownObjectRetain();
              v39 = sub_2237B5C8C();
              v40 = sub_2237B5FFC();

              swift_unknownObjectRelease();
              if (os_log_type_enabled(v39, v40))
              {
                v88 = v40;
                v41 = OUTLINED_FUNCTION_19_0();
                v96[0] = swift_slowAlloc();
                *v41 = 136315650;
                swift_getObjectType();
                v42 = sub_2237B568C();
                OUTLINED_FUNCTION_371(v42, v43);
                OUTLINED_FUNCTION_254();

                *(v41 + 4) = v3;
                *(v41 + 12) = 2080;
                *(v41 + 14) = sub_223763694(v94, v29, v96);
                *(v41 + 22) = 2080;
                v44 = sub_2237B568C();
                OUTLINED_FUNCTION_371(v44, v45);
                OUTLINED_FUNCTION_254();

                *(v41 + 24) = v3;
                _os_log_impl(&dword_22375F000, v39, v88, "There is already a bridge: %s consuming %s. Replacing with %s", v41, 0x20u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_74();
                OUTLINED_FUNCTION_116();

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

            else
            {
              OUTLINED_FUNCTION_266(v96[0] + 8 * (v34 >> 6));
              v46 = (v26[6] + 16 * v34);
              *v46 = v94;
              v46[1] = v29;
              v47 = (v26[7] + 16 * v34);
              *v47 = a1;
              v47[1] = a2;
              v48 = v26[2];
              v49 = __OFADD__(v48, 1);
              v50 = v48 + 1;
              if (v49)
              {
                goto LABEL_56;
              }

              v26[2] = v50;
              swift_unknownObjectRetain();
            }

            swift_unknownObjectRetain();

            v2 = v91;
            v51 = sub_2237B5C8C();
            v52 = sub_2237B5FEC();

            swift_unknownObjectRelease();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = OUTLINED_FUNCTION_25_0();
              v3 = OUTLINED_FUNCTION_198();
              v96[0] = v3;
              *v53 = 136315394;
              v54 = sub_2237B568C();
              v56 = OUTLINED_FUNCTION_371(v54, v55);

              *(v53 + 4) = v56;
              a1 = v92;
              *(v53 + 12) = 2080;
              v2 = sub_223763694(v94, v29, v96);

              *(v53 + 14) = v2;
              _os_log_impl(&dword_22375F000, v51, v52, "Registered bridge:%s for command:%s", v53, 0x16u);
              OUTLINED_FUNCTION_98();
              OUTLINED_FUNCTION_3_0();
              OUTLINED_FUNCTION_71();
            }

            else
            {
            }

            v23 = v89;
            v4 = (v4 + 1);
            v27 += 2;
            a2 = v93;
            if (v90 == v4)
            {
              goto LABEL_32;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

LABEL_32:

        if (v26[2])
        {
          v19 = v81;
          v4 = v82;
          swift_beginAccess();
          v57 = *(v82 + v81);
          swift_isUniquelyReferenced_nonNull_native();
          v2 = *(v82 + v81);
          v58 = sub_22376504C();
          v60 = v2[2];
          v61 = (v59 & 1) == 0;
          a1 = (v60 + v61);
          if (__OFADD__(v60, v61))
          {
            goto LABEL_58;
          }

          v62 = v58;
          v3 = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097CF8, &qword_2237B92A8);
          if (sub_2237B618C())
          {
            sub_22376504C();
            OUTLINED_FUNCTION_269();
            a1 = v92;
            if (!v36)
            {
LABEL_61:
              sub_2237B62CC();
              __break(1u);
              return;
            }

            v62 = v63;
          }

          else
          {
            a1 = v92;
          }

          if (v3)
          {
            v65 = v2[7];
            v66 = *(v65 + 8 * v62);
            *(v65 + 8 * v62) = v26;
          }

          else
          {
            OUTLINED_FUNCTION_266(&v2[v62 >> 6]);
            v67 = (v2[6] + 16 * v62);
            *v67 = v87;
            v67[1] = v86;
            *(v2[7] + 8 * v62) = v26;
            v68 = v2[2];
            v49 = __OFADD__(v68, 1);
            v69 = v68 + 1;
            if (v49)
            {
              goto LABEL_59;
            }

            v2[2] = v69;
          }

          *(v82 + v81) = v2;

          swift_endAccess();
          v18 = v80;
          v64 = v85;
        }

        else
        {

          v19 = v81;
          v4 = v82;
          v18 = v80;
          v64 = v85;
        }

        v3 = v64 + 1;
      }

      while (v3 != v84);
    }

    swift_unknownObjectRetain();
    v70 = sub_2237B5C8C();
    v71 = sub_2237B601C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v70, v71))
    {
      OUTLINED_FUNCTION_20();
      v72 = OUTLINED_FUNCTION_32();
      v96[0] = v72;
      *v3 = 136446210;
      v73 = sub_2237B568C();
      v75 = OUTLINED_FUNCTION_371(v73, v74);

      *(v3 + 4) = v75;
      OUTLINED_FUNCTION_217(&dword_22375F000, v70, v71, "%{public}s Bridge was registered to the MessageBus");
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_3_0();
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v95 = sub_2237B5C8C();
    v76 = sub_2237B5FFC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v95, v76))
    {
      OUTLINED_FUNCTION_20();
      v97[0] = OUTLINED_FUNCTION_32();
      *v3 = 136315138;
      swift_getObjectType();
      v77 = sub_2237B568C();
      v79 = sub_223763694(v77, v78, v97);

      *(v3 + 4) = v79;
      OUTLINED_FUNCTION_217(&dword_22375F000, v95, v76, "Unable to register %s Bridge...");
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_3_0();
    }

    else
    {
    }
  }
}

void sub_223791BE0()
{
  OUTLINED_FUNCTION_16_3();
  v3 = sub_2237B5C7C();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_112();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27_1();
  v34 = MEMORY[0x277D84F90];
  v31[2] = &v34;
  v32 = v0;
  sub_223761B80();
  v30 = v1;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  sub_2237B573C();
  v29 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v15 = *(v6 + 16);
  v16 = OUTLINED_FUNCTION_184();
  (v15)(v16);
  OUTLINED_FUNCTION_147();
  v15();
  v17 = *(v6 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = (v8 + v17 + v18) & ~v17;
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = OUTLINED_FUNCTION_305();
  v22 = *(v6 + 32);
  v22(v21 + v18, v2, v3);
  v22(v21 + v19, v11, v3);
  v23 = (v21 + v20);
  *v23 = 0x28736E69616D6F64;
  v23[1] = 0xE900000000000029;
  v24 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_2237A7C58;
  v24[1] = v31;
  OUTLINED_FUNCTION_5_3();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_223761F90;
  *(v25 + 24) = v21;
  v33[4] = sub_223761F50;
  v33[5] = v25;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v33[2] = v26;
  v33[3] = &block_descriptor_2;
  _Block_copy(v33);
  OUTLINED_FUNCTION_125();

  dispatch_sync(v29, v11);
  _Block_release(v11);
  v27 = *(v6 + 8);
  v28 = OUTLINED_FUNCTION_231();
  v27(v28);
  (v27)(v30, v3);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_223791F10(uint64_t *a1, uint64_t a2)
{
  v4 = OBJC_IVAR___SRDRequestDispatcherInternal_aceCommandDispatcher;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = sub_2237A6BE0(*(v5 + 16), 0);
  sub_2237A6F60();
  v9 = v8;

  sub_2237A92AC();
  if (v9 != v6)
  {
    __break(1u);
LABEL_4:
    v7 = MEMORY[0x277D84F90];
  }

  v10 = *a1;
  *a1 = v7;
}

void *sub_223791FF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_2237A6BE0(*(a1 + 16), 0);
  sub_2237A6F60();
  v4 = v3;
  sub_2237A92AC();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v2;
}

void sub_2237920E8()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v1;
  v6 = v5;
  OUTLINED_FUNCTION_188();
  v34 = sub_2237B5C7C();
  v7 = OUTLINED_FUNCTION_0_2(v34);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_246();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27_1();
  v41 = MEMORY[0x277D84F90];
  v36[2] = v4;
  v37 = v3;
  v38 = v6;
  v39 = &v41;
  v15 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_363();
  v35 = *(v4 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v16 = OUTLINED_FUNCTION_203();
  (v15)(v16, v2, v34);
  OUTLINED_FUNCTION_170();
  v15();
  v17 = *(v9 + 80);
  v18 = v9;
  OUTLINED_FUNCTION_11_6();
  v20 = (v19 & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = *(v18 + 32);
  OUTLINED_FUNCTION_139();
  v23();
  v24 = OUTLINED_FUNCTION_52_0();
  (v23)(v24);
  OUTLINED_FUNCTION_76((v20 + v22));
  *(v25 + 8) = 0x80000002237BA1E0;
  v26 = (v22 + v21);
  *v26 = sub_2237A7C60;
  v26[1] = v36;
  OUTLINED_FUNCTION_5_3();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_223761F8C;
  *(v27 + 24) = v22;
  v40[4] = sub_223761F78;
  v40[5] = v27;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v40[2] = v28;
  v40[3] = &block_descriptor_14;
  v29 = _Block_copy(v40);

  v30 = OUTLINED_FUNCTION_285();
  dispatch_sync(v30, v31);
  _Block_release(v29);
  v32 = OUTLINED_FUNCTION_160();
  v20(v32);
  v33 = OUTLINED_FUNCTION_202();
  v20(v33);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_121();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_223792408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = OBJC_IVAR___SRDRequestDispatcherInternal_aceCommandDispatcher;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  if (*(v8 + 16))
  {

    v9 = sub_22376504C();
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      v12 = sub_223791FF8(v11);
      v13 = *a4;
      *a4 = v12;
    }
  }

  return result;
}

void sub_223792554()
{
  OUTLINED_FUNCTION_16_3();
  v6 = v5;
  v8 = v7;
  v31 = v9;
  OUTLINED_FUNCTION_174();
  v29 = sub_2237B5C7C();
  v10 = OUTLINED_FUNCTION_0_2(v29);
  v33 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_158(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_274();
  v42 = 0;
  v35 = v0;
  v36 = v8;
  v37 = v6;
  v38 = &v42;
  v39 = v1;
  v40 = v31;
  v18 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  v30 = v2;
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_223();
  v32 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v19 = OUTLINED_FUNCTION_203();
  (v6)(v19, v4, v29);
  v20 = OUTLINED_FUNCTION_151();
  (v6)(v20);
  v21 = *(v33 + 80);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_105();
  v22 = OUTLINED_FUNCTION_260();
  v23 = *(v33 + 32);
  v23(v22 + v33, v3, v29);
  v23(&v6[v22], v28, v29);
  OUTLINED_FUNCTION_41_0(&v18[v22]);
  v24 = (v22 + v33);
  *v24 = sub_2237A7C6C;
  v24[1] = &v34;
  OUTLINED_FUNCTION_5_3();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_223761F8C;
  *(v25 + 24) = v22;
  v41[4] = sub_223761F78;
  v41[5] = v25;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v41[2] = v26;
  v41[3] = &block_descriptor_25;
  _Block_copy(v41);
  OUTLINED_FUNCTION_252();

  OUTLINED_FUNCTION_362();
  _Block_release(v18);
  v27 = *(v33 + 8);
  v27(v30, v29);
  v27(v4, v29);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_121();

  if ((v33 + 8))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_223792860(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, uint64_t a5, uint64_t a6)
{
  v10 = OBJC_IVAR___SRDRequestDispatcherInternal_aceCommandDispatcher;
  result = swift_beginAccess();
  v12 = *(a1 + v10);
  if (*(v12 + 16))
  {

    v13 = sub_22376504C();
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      v16 = sub_2237725B0(a5, a6, v15);

      if (v16)
      {
        result = swift_unknownObjectRelease();
      }

      *a4 = v16 != 0;
    }

    else
    {
    }
  }

  return result;
}

void sub_2237929D8()
{
  OUTLINED_FUNCTION_16_3();
  v2 = v1;
  OUTLINED_FUNCTION_191();
  v3 = sub_2237B412C();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_299();
  if (v2)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D47208]) init];
    sub_2237B411C();
    sub_2237B40FC();
    v10 = *(v6 + 8);
    v11 = OUTLINED_FUNCTION_19_2();
    v12(v11);
    v13 = OUTLINED_FUNCTION_234();
    sub_2237A6EFC(v13, v14, v9);
    v15 = v9;
    sub_223767020(v0, &selRef_aceId);
    if (v16)
    {
      v17 = sub_2237B5E1C();
    }

    else
    {
      v17 = 0;
    }

    [v15 setRefId_];

    v18 = objc_opt_self();
    v19 = v15;
    v20 = [v18 errorWithCode_];
    v21 = OUTLINED_FUNCTION_19_3();
    v2(v21);
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_223792B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v54 = v28;
  OUTLINED_FUNCTION_174();
  v53 = sub_2237B5C7C();
  v29 = OUTLINED_FUNCTION_0_2(v53);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_31_0();
  v52 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_27_1();
  v38 = sub_223761B80();
  sub_2237B575C();
  v56 = v20;
  v57 = v21;
  OUTLINED_FUNCTION_189(&a18);
  v58 = v54;
  v59 = v27;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_320();
  v39 = OUTLINED_FUNCTION_154(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v38(v39);
  v40 = OUTLINED_FUNCTION_119();
  v38(v40);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_79();
  v41 = OUTLINED_FUNCTION_221();
  v42 = OUTLINED_FUNCTION_46_0(v41);
  v23(v42);
  v43 = OUTLINED_FUNCTION_52_0();
  v23(v43);
  OUTLINED_FUNCTION_76((&type metadata for Logger + v41));
  OUTLINED_FUNCTION_84(v44);
  v45 = (v41 + v22);
  *v45 = sub_2237A7C7C;
  v45[1] = &v55;
  OUTLINED_FUNCTION_5_3();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_223761F8C;
  *(v46 + 24) = v41;
  v60[4] = sub_223761F78;
  v60[5] = v46;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v60[2] = v47;
  v60[3] = &block_descriptor_47;
  _Block_copy(v60);
  OUTLINED_FUNCTION_195();

  v48 = OUTLINED_FUNCTION_285();
  dispatch_sync(v48, v49);
  _Block_release(v52);
  v50 = OUTLINED_FUNCTION_160();
  (type metadata for Logger.Kind)(v50);
  v51 = OUTLINED_FUNCTION_202();
  (type metadata for Logger.Kind)(v51);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_121();

  if (v31)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_223792F08()
{
  OUTLINED_FUNCTION_16_3();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097A40, &unk_2237B8850);
  OUTLINED_FUNCTION_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_122();
  v18 = *(v1 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_233();
  sub_22376F45C();
  if (v19)
  {
    MEMORY[0x28223BE20](v19);
    OUTLINED_FUNCTION_278();
    *(v20 - 48) = v13;
    *(v20 - 40) = v11;
    *(v20 - 32) = v21;
    *(v20 - 24) = v9;
    *(v20 - 16) = v7;
    *(v20 - 8) = v5;
    v22 = objc_allocWithZone(sub_2237B440C());
    OUTLINED_FUNCTION_34_0();
    v23 = sub_2237B43AC();
    if (v23)
    {
      v24 = v23;
      v25 = *(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
      sub_2237654A4(v23);
      v26 = *(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
      sub_22376F91C(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_activeUserSessionObserver, v60, &qword_27D097C38, "&-");
      v27 = v61;
      if (v61)
      {
        v28 = v62;
        __swift_project_boxed_opaque_existential_1(v60, v61);
        v59 = &v59;
        OUTLINED_FUNCTION_20_1();
        v30 = v29;
        v32 = *(v31 + 64);
        MEMORY[0x28223BE20](v33);
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_299();
        (*(v30 + 16))(v25);
        sub_2237710FC(v60, &qword_27D097C38, "&-");
        (*(v28 + 8))(v27, v28);
        (*(v30 + 8))(v25, v27);
        sub_2237B551C();
        OUTLINED_FUNCTION_12_4();
        __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
      }

      else
      {
        sub_2237710FC(v60, &qword_27D097C38, "&-");
        v54 = sub_2237B551C();
        OUTLINED_FUNCTION_2_1(v2, v55, v56, v54);
      }

      v57 = OUTLINED_FUNCTION_19_3();
      sub_223770A64(v57, v58, v7, 1);
      sub_2237710FC(v2, &unk_27D097A40, &unk_2237B8850);
      OUTLINED_FUNCTION_16_5();
      sub_223786408();
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v44 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v44, qword_28131B550);

      v45 = sub_2237B5C8C();
      v46 = sub_2237B5FFC();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_20();
        v60[0] = OUTLINED_FUNCTION_19_0();
        *v47 = 136315138;
        v48 = OUTLINED_FUNCTION_16_5();
        *(v47 + 4) = sub_223763694(v48, v49, v50);
        OUTLINED_FUNCTION_239(&dword_22375F000, v51, v46, "Failed to create CancelRequestMessage for request Id: %s");
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_13_1();
      }
    }

    goto LABEL_19;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v38 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v38, qword_28131B550);

  v59 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_90();

  if (os_log_type_enabled(v59, v0))
  {
    v39 = OUTLINED_FUNCTION_20();
    v40 = OUTLINED_FUNCTION_19_0();
    v60[0] = v40;
    *v39 = 136315138;
    v41 = OUTLINED_FUNCTION_233();
    *(v39 + 4) = sub_223763694(v41, v42, v43);
    OUTLINED_FUNCTION_360(&dword_22375F000, v59, v0, "No active session for assistantId: %s cannot post CancelRequest message");
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_19:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_223793384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[1] = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v21 - v14;
  v16 = *MEMORY[0x277D5CDC8];
  v17 = sub_2237B540C();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
  sub_2237B43DC();

  sub_2237B43BC();
  v18 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
  v19 = sub_2237B412C();
  (*(*(v19 - 8) + 16))(v11, a4 + v18, v19);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v19);
  sub_2237B43FC();

  sub_2237B43EC();
  return sub_2237B43CC();
}

void sub_223793580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v25;
  a20 = v26;
  v27 = v21;
  v67 = v28;
  OUTLINED_FUNCTION_244(v29, v30, v31, v32, v33, v34, v35);
  v37 = v36;
  v39 = v38;
  v66 = a21;
  swift_getObjectType();
  OUTLINED_FUNCTION_174();
  v40 = sub_2237B5C7C();
  v41 = OUTLINED_FUNCTION_8_6(v40, &a15);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_59();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_20_4();
  v68[2] = v27;
  v68[3] = v39;
  OUTLINED_FUNCTION_206();
  v68[4] = v37;
  v68[5] = v50;
  OUTLINED_FUNCTION_114(&v73);
  v68[6] = v52;
  v68[7] = v51;
  OUTLINED_FUNCTION_108();
  v69 = v67;
  v70 = v66;
  v71 = v22;
  v53 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_323();
  OUTLINED_FUNCTION_12_5();
  sub_2237B573C();
  OUTLINED_FUNCTION_129(*(v27 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v54 = *(v43 + 16);
  v54(v23, v24);
  v55 = OUTLINED_FUNCTION_142();
  (v54)(v55);
  v56 = *(v43 + 80);
  OUTLINED_FUNCTION_23_2();
  v57 = OUTLINED_FUNCTION_305();
  v58 = *(v43 + 32);
  v58(v54 + v57, v23);
  (v58)(v57 + v24);
  OUTLINED_FUNCTION_76((v57 + v45));
  OUTLINED_FUNCTION_84(v59);
  v60 = &v53[v57];
  *v60 = sub_2237A7C94;
  v60[1] = v68;
  OUTLINED_FUNCTION_5_3();
  v61 = swift_allocObject();
  *(v61 + 16) = sub_223761F8C;
  *(v61 + 24) = v57;
  v72[4] = sub_223761F78;
  v72[5] = v61;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v72[2] = v62;
  v72[3] = &block_descriptor_69_0;
  _Block_copy(v72);
  OUTLINED_FUNCTION_253();

  v63 = OUTLINED_FUNCTION_101();
  dispatch_sync(v63, v53);
  _Block_release(v53);
  OUTLINED_FUNCTION_351(&a13);
  v64 = OUTLINED_FUNCTION_145(&a16);
  (v58)(v64);
  v65 = OUTLINED_FUNCTION_143();
  (v58)(v65);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_2237938F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v21 = a4;
  v22 = a5;
  v23 = a1;
  v13 = sub_2237B544C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(v17);
  if (a8)
  {
    v18 = sub_2237B5FDC();
  }

  else
  {
    v18 = 0;
  }

  sub_223793B3C(a2, a3, v21, v22, v17, v18, a9 & 1, a10, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);

  return (*(v14 + 8))(v17, v13);
}

void sub_223793B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v233 = v27;
  v232 = v28;
  v231 = v29;
  v230 = v30;
  v237 = v31;
  v238 = v32;
  v34 = v33;
  v36 = v35;
  v37 = sub_2237B5CCC();
  v38 = OUTLINED_FUNCTION_8_6(v37, &a13);
  v226 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v42);
  v43 = sub_2237B5D0C();
  v44 = OUTLINED_FUNCTION_8_6(v43, &a11);
  v224 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_62(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_25_2(v53);
  v54 = sub_2237B412C();
  v55 = OUTLINED_FUNCTION_0_2(v54);
  v234 = v56;
  v235 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62(v59);
  OUTLINED_FUNCTION_204(&v243);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_20_0();
  v236 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097A40, &unk_2237B8850);
  OUTLINED_FUNCTION_1(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_25_2(v66);
  v67 = sub_2237B563C();
  v68 = OUTLINED_FUNCTION_0_2(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_264();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_29_1();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v74);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_122();
  v78 = type metadata accessor for RequestDispatcher.SessionContext(0);
  v79 = OUTLINED_FUNCTION_4(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_3_4();
  v239 = v36;
  v240 = v82;
  v83 = *(v20 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  v84 = v34;
  sub_22376F45C();
  if (v85)
  {
    v86 = v85;
    v87 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_347();
    sub_22376F91C(v26 + v87, v23, v88, v89);
    OUTLINED_FUNCTION_312(v23, 1, v78);
    if (v90)
    {
      sub_2237710FC(v23, &unk_27D097C80, &unk_2237B9260);
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v91 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v91, qword_28131B550);

      v92 = sub_2237B5C8C();
      sub_2237B5FFC();

      if (OUTLINED_FUNCTION_218())
      {
        OUTLINED_FUNCTION_25_0();
        v242[0] = OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_302(4.8151e-34);
        v94 = sub_223763694(v239, v84, v93);
        OUTLINED_FUNCTION_56_0(v94);
        *(v21 + 14) = sub_223763694(v237, v238, v242);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v95, v96, v97, v98, v99, 0x16u);
        OUTLINED_FUNCTION_149();
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_3_0();
      }
    }

    else
    {
      sub_22376F978(v23, v240);
      v103 = *(v86 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession);
      v104 = OUTLINED_FUNCTION_81();
      v105(v104);
      v106 = *(v70 + 104);
      LODWORD(v218) = *MEMORY[0x277D5D258];
      v217 = v106;
      v106(v21);
      OUTLINED_FUNCTION_16_5();
      v107 = sub_223766744();
      v108 = *(v70 + 8);
      v109 = OUTLINED_FUNCTION_356();
      v108(v109);
      (v108)(v22, v67);
      v219 = v86;
      if (v107)
      {
        v115 = v220;
        sub_22376F9F8(v86, v239, v84, v110, v111, v112, v113, v114, v213, *(&v213 + 1), v214, v215, v84, v217, v218, v219, v220, v221, v222, v223);
        v218 = *(v115 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
        v116 = OBJC_IVAR____TtC14SiriMessageBus7Session_userSessionState;
        OUTLINED_FUNCTION_14_3();
        swift_beginAccess();
        v117 = sub_2237B551C();
        OUTLINED_FUNCTION_4(v117);
        v119 = v86;
        (*(v118 + 16))(v228, v86 + v116, v117);
        OUTLINED_FUNCTION_12_4();
        __swift_storeEnumTagSinglePayload(v120, v121, v122, v117);
        v123 = v238;
        sub_223770A64(v228, v237, v238, 0);
        sub_2237710FC(v228, &unk_27D097A40, &unk_2237B8850);
        v124 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
        v125 = *(v234 + 16);
        v125(v236, v119 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v235);
        v214 = v234 + 16;
        *(&v213 + 1) = v125;
        v125(v229, v119 + v124, v235);
        OUTLINED_FUNCTION_12_4();
        __swift_storeEnumTagSinglePayload(v126, v127, v128, v235);
        LODWORD(v228) = AFDeviceSupportsSiriUOD();
        LODWORD(v217) = AFShouldRunAsrOnServerForUOD();
        v129 = v115 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils;
        v131 = *(v115 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils + 24);
        v130 = *(v115 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils + 32);
        v132 = OUTLINED_FUNCTION_293();
        OUTLINED_FUNCTION_259(v132, v133);
        v134 = (v240 + *(v78 + 20));
        v135 = *v134;
        v136 = v134[1];
        v137 = v237;
        HIDWORD(v215) = OUTLINED_FUNCTION_280();
        v139 = *(v129 + 24);
        v138 = *(v129 + 32);
        v140 = OUTLINED_FUNCTION_293();
        OUTLINED_FUNCTION_259(v140, v141);
        OUTLINED_FUNCTION_280();
        v142 = v240;
        v212 = *(&v240->isa + *(v78 + 24));
        LODWORD(v138) = v212;
        v143 = OUTLINED_FUNCTION_332();
        sub_223771484(v143, v144, v238, 1, v228, v217, v145, v146, v212);
        v147 = sub_2237710FC(v229, &qword_27D097A50, &unk_2237B7800);
        MEMORY[0x28223BE20](v147);
        v148 = v216;
        *(&v213 - 10) = v239;
        *(&v213 - 9) = v148;
        *(&v213 - 8) = v236;
        *(&v213 - 7) = v137;
        OUTLINED_FUNCTION_227();
        *(v149 - 48) = v123;
        *(v149 - 40) = v150;
        OUTLINED_FUNCTION_210();
        *(v151 - 32) = v152;
        *(v151 - 24) = v232 & 1;
        *(v151 - 16) = v233;
        if (v138 == 1)
        {
          objc_allocWithZone(sub_2237B4B1C());
          OUTLINED_FUNCTION_144();
          v153 = sub_2237B4A8C();
        }

        else
        {
          objc_allocWithZone(sub_2237B47BC());
          OUTLINED_FUNCTION_144();
          v153 = sub_2237B472C();
        }

        v166 = v235;
        if (v153)
        {
          v167 = v153;
          v168 = v236;
          v169 = v220;
          v170 = *(v220 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
          sub_2237654A4(v153);

          v171 = *(v169 + OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
          if ((*(v171 + 32) & 1) != 0 || (OUTLINED_FUNCTION_138(), v90))
          {
            v239 = *(v171 + 16);
            v172 = v222;
            OUTLINED_FUNCTION_295();
            (*(&v213 + 1))();
            v211 = v234;
            OUTLINED_FUNCTION_228();
            v175 = v174 & ~v173;
            OUTLINED_FUNCTION_85();
            v176 = OUTLINED_FUNCTION_309();
            v177 = OUTLINED_FUNCTION_89(v176);
            v178(v177 + v175, v172, v166);
            v179 = &v168[v129];
            v180 = v238;
            *v179 = v237;
            *(v179 + 1) = v180;
            OUTLINED_FUNCTION_127();
            v242[1] = 1107296256;
            OUTLINED_FUNCTION_6_6();
            v242[2] = v181;
            v242[3] = &block_descriptor_442;
            _Block_copy(v242);
            OUTLINED_FUNCTION_358();

            v182 = v142;
            v183 = v223;
            sub_2237B5CEC();
            v241 = MEMORY[0x277D84F90];
            OUTLINED_FUNCTION_5_5();
            sub_223766F90(v184, v185);
            v186 = OUTLINED_FUNCTION_19_2();
            __swift_instantiateConcreteTypeFromMangledNameV2(v186, v187);
            OUTLINED_FUNCTION_4_8();
            OUTLINED_FUNCTION_209();
            sub_223766FD8(v188, v189, v190);
            OUTLINED_FUNCTION_263(&a10);
            v191 = v227;
            OUTLINED_FUNCTION_197();
            OUTLINED_FUNCTION_230();
            MEMORY[0x223DEACD0]();
            v192 = v168;
            v168 = v236;
            _Block_release(v192);

            OUTLINED_FUNCTION_96(&a12);
            v193(v166, v191);
            OUTLINED_FUNCTION_96(&a9);
            v194 = v183;
            v142 = v182;
            v195(v194, v225);
          }

          else
          {

            v211 = v234;
          }

          sub_223771D44(v142);
          (*(v211 + 8))(v168, v166);
        }

        else
        {
          if (qword_28131AA10 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v196 = sub_2237B5C9C();
          OUTLINED_FUNCTION_13(v196, qword_28131B550);

          v197 = sub_2237B5C8C();
          sub_2237B5FFC();
          OUTLINED_FUNCTION_26_0();
          v198 = OUTLINED_FUNCTION_218();
          v199 = v234;
          if (v198)
          {
            OUTLINED_FUNCTION_20();
            v242[0] = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_302(4.8149e-34);
            v200 = OUTLINED_FUNCTION_285();
            *(&v213 + 4) = sub_223763694(v200, v201, v202);
            OUTLINED_FUNCTION_33();
            _os_log_impl(v203, v204, v205, v206, v207, 0xCu);
            OUTLINED_FUNCTION_22_0();
            OUTLINED_FUNCTION_3_0();
          }

          sub_223771D44(v142);
          v208 = *(v199 + 8);
          v209 = OUTLINED_FUNCTION_350();
          v210(v209);
        }
      }

      else
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v156 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v156, qword_28131B550);
        v157 = sub_2237B5C8C();
        v158 = sub_2237B5FFC();
        if (os_log_type_enabled(v157, v158))
        {
          v159 = OUTLINED_FUNCTION_20();
          v160 = OUTLINED_FUNCTION_19_0();
          v242[0] = v160;
          *v159 = 136315138;
          OUTLINED_FUNCTION_286();
          v161();
          sub_2237B562C();
          OUTLINED_FUNCTION_298();
          (v108)(v22, v67);
          v162 = OUTLINED_FUNCTION_19_2();
          v165 = sub_223763694(v162, v163, v164);

          *(v159 + 4) = v165;
          _os_log_impl(&dword_22375F000, v157, v158, "Current session is not of type %s, cannot start speech request", v159, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v160);
          OUTLINED_FUNCTION_13_1();
          OUTLINED_FUNCTION_8();
        }

        sub_223771D44(v240);
      }
    }

    goto LABEL_36;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v100 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v100, qword_28131B550);

  v240 = sub_2237B5C8C();
  sub_2237B600C();
  OUTLINED_FUNCTION_90();

  if (os_log_type_enabled(v240, v26))
  {
    v101 = OUTLINED_FUNCTION_20();
    v102 = OUTLINED_FUNCTION_19_0();
    v242[0] = v102;
    *v101 = 136315138;
    *(v101 + 4) = sub_223763694(v239, v34, v242);
    OUTLINED_FUNCTION_360(&dword_22375F000, v240, v26, "No active session for assistantId: %s cannot start speech request");
    __swift_destroy_boxed_opaque_existential_0Tm(v102);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_36:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237948B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10)
{
  v32 = a5;
  v33 = a7;
  v31 = a4;
  v34 = a10;
  v35 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v30 - v20;
  v22 = *MEMORY[0x277D5CDC8];
  v23 = sub_2237B540C();
  (*(*(v23 - 8) + 104))(v21, v22, v23);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v23);
  sub_2237B4ADC();

  sub_2237B4AAC();
  v24 = sub_2237B412C();
  (*(*(v24 - 8) + 16))(v17, v31, v24);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v24);
  sub_2237B4B0C();

  sub_2237B4AFC();
  v25 = sub_2237B544C();
  (*(*(v25 - 8) + 16))(v13, v33, v25);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
  sub_2237B4ABC();

  v26 = v34;
  sub_2237B4AEC();
  result = sub_2237B4A9C();
  if (v26)
  {
    v28 = objc_allocWithZone(sub_2237B553C());
    v29 = v26;
    sub_2237B552C();
    return sub_2237B4ACC();
  }

  return result;
}

uint64_t sub_223794B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10)
{
  v32 = a5;
  v33 = a7;
  v31 = a4;
  v34 = a10;
  v35 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v30 - v20;
  v22 = *MEMORY[0x277D5CDC8];
  v23 = sub_2237B540C();
  (*(*(v23 - 8) + 104))(v21, v22, v23);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v23);
  sub_2237B477C();

  sub_2237B474C();
  v24 = sub_2237B412C();
  (*(*(v24 - 8) + 16))(v17, v31, v24);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v24);
  sub_2237B47AC();

  sub_2237B479C();
  v25 = sub_2237B544C();
  (*(*(v25 - 8) + 16))(v13, v33, v25);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
  sub_2237B475C();

  v26 = v34;
  sub_2237B478C();
  result = sub_2237B473C();
  if (v26)
  {
    v28 = objc_allocWithZone(sub_2237B553C());
    v29 = v26;
    sub_2237B552C();
    return sub_2237B476C();
  }

  return result;
}

void sub_223794E80()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v1;
  v6 = v5;
  OUTLINED_FUNCTION_188();
  v27 = sub_2237B5C7C();
  v7 = OUTLINED_FUNCTION_0_2(v27);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_246();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_29_1();
  v33 = 0;
  v29[2] = &v33;
  v29[3] = v4;
  v30 = v3;
  v31 = v6;
  v15 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_364();
  v28 = *(v4 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v16 = OUTLINED_FUNCTION_203();
  (v15)(v16, v2, v27);
  OUTLINED_FUNCTION_170();
  v15();
  v17 = *(v9 + 80);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_79();
  v18 = OUTLINED_FUNCTION_221();
  v19 = OUTLINED_FUNCTION_46_0(v18);
  (v9)(v19);
  v20 = OUTLINED_FUNCTION_52_0();
  (v9)(v20);
  OUTLINED_FUNCTION_76((v27 + v18));
  *(v21 + 8) = 0x80000002237BA310;
  v22 = (v18 + v2);
  *v22 = sub_2237A7CC8;
  v22[1] = v29;
  OUTLINED_FUNCTION_5_3();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_223761F8C;
  *(v23 + 24) = v18;
  v32[4] = sub_223761F78;
  v32[5] = v23;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v32[2] = v24;
  v32[3] = &block_descriptor_80;
  _Block_copy(v32);
  OUTLINED_FUNCTION_195();

  dispatch_sync(v28, v0);
  _Block_release(v0);
  v25 = OUTLINED_FUNCTION_162();
  v27(v25);
  v26 = OUTLINED_FUNCTION_231();
  v27(v26);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_121();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_22379515C(_BYTE *a1)
{
  result = sub_2237951F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2237951F8()
{
  v2 = sub_2237B563C();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_264();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_29_1();
  v9 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_151();
  v10 = sub_223762CDC();
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession);
    v12 = OUTLINED_FUNCTION_81();
    v13(v12);
    v14 = *MEMORY[0x277D5D258];
    OUTLINED_FUNCTION_304();
    v15(v1);
    OUTLINED_FUNCTION_16_5();
    v16 = sub_223766744();
    v17 = *(v5 + 8);
    v18 = OUTLINED_FUNCTION_136();
    v17(v18);
    v19 = OUTLINED_FUNCTION_16();
    v17(v19);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_223795364()
{
  OUTLINED_FUNCTION_16_3();
  v24 = v3;
  v23 = OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_0_2(v23);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_158(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_82("prewarm(withAssistantId:languageCode:prewarmOptions:sharedUserId:)");
  v26 = v1;
  v27 = v24;
  v11 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_223();
  v12 = OUTLINED_FUNCTION_48_0(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v2(v12);
  v13 = OUTLINED_FUNCTION_151();
  v2(v13);
  v14 = *(v11 + 80);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_105();
  v15 = OUTLINED_FUNCTION_260();
  v16 = *(v11 + 32);
  v17 = OUTLINED_FUNCTION_49_0(v15);
  v16(v17);
  v18 = OUTLINED_FUNCTION_52_0();
  v16(v18);
  OUTLINED_FUNCTION_41_0((v15 + v11));
  v19 = (&type metadata for Logger + v15);
  *v19 = sub_2237A7CD4;
  v19[1] = &v25;
  OUTLINED_FUNCTION_5_3();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_223761F8C;
  *(v20 + 24) = v15;
  v28[4] = sub_223761F78;
  v28[5] = v20;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v28[2] = v21;
  v28[3] = &block_descriptor_91;
  _Block_copy(v28);
  OUTLINED_FUNCTION_252();

  OUTLINED_FUNCTION_362();
  _Block_release(v11);
  v22 = OUTLINED_FUNCTION_156();
  (type metadata for Logger.Kind)(v22);
  (type metadata for Logger.Kind)(v2, v0);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_121();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237956CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 2) != 0)
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_275();
    *(v8 - 32) = v6;
    *(v8 - 24) = v7;
    *(v8 - 16) = v9;
    *(v8 - 8) = v10;
    v11 = objc_allocWithZone(sub_2237B54FC());
    OUTLINED_FUNCTION_34_0();
    v12 = sub_2237B54AC();
    if (v12)
    {
      v13 = v12;
      v14 = *(v5 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
      sub_2237654A4(v12);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v15 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v15, qword_28131B550);

      v16 = sub_2237B5C8C();
      sub_2237B5FFC();

      if (OUTLINED_FUNCTION_318())
      {
        v17 = OUTLINED_FUNCTION_20();
        v26 = OUTLINED_FUNCTION_19_0();
        *v17 = 136315138;
        v18 = OUTLINED_FUNCTION_136();
        *(v17 + 4) = sub_223763694(v18, v19, v20);
        OUTLINED_FUNCTION_157();
        _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        OUTLINED_FUNCTION_13_1();
        OUTLINED_FUNCTION_10();
      }
    }
  }
}

uint64_t sub_223795840()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097CD0, &qword_2237B9288);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = *MEMORY[0x277D5CDC8];
  v9 = sub_2237B540C();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  sub_2237B54EC();

  sub_2237B54BC();

  sub_2237B54CC();
  v10 = *MEMORY[0x277D5D258];
  v11 = sub_2237B563C();
  (*(*(v11 - 8) + 104))(v3, v10, v11);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v11);
  return sub_2237B54DC();
}

void sub_223795A24()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_174();
  v30 = sub_2237B5C7C();
  v7 = OUTLINED_FUNCTION_0_2(v30);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_344(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_274();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_336("endSession(withAssistantId:withDelay:)");
  v32[4] = v6;
  v33 = v4;
  v16 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_320();
  v17 = OUTLINED_FUNCTION_165(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  (v16)(v17);
  OUTLINED_FUNCTION_139();
  v16();
  v18 = (v11 + *(v0 + 80) + ((*(v0 + 80) + 16) & ~*(v0 + 80))) & ~*(v0 + 80);
  OUTLINED_FUNCTION_47_0();
  v19 = OUTLINED_FUNCTION_221();
  v20 = OUTLINED_FUNCTION_46_0(v19);
  v2(v20);
  v21 = OUTLINED_FUNCTION_67();
  v2(v21);
  OUTLINED_FUNCTION_76((&type metadata for Logger + v19));
  *(v22 + 8) = v28;
  v23 = (v19 + v1);
  *v23 = sub_2237A7D1C;
  v23[1] = v32;
  OUTLINED_FUNCTION_5_3();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_223761F8C;
  *(v24 + 24) = v19;
  v34[4] = sub_223761F78;
  v34[5] = v24;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v34[2] = v25;
  v34[3] = &block_descriptor_113;
  _Block_copy(v34);
  OUTLINED_FUNCTION_125();

  dispatch_sync(v31, v29);
  _Block_release(v29);
  v26 = OUTLINED_FUNCTION_162();
  (type metadata for Logger.Kind)(v26);
  v27 = OUTLINED_FUNCTION_231();
  (type metadata for Logger.Kind)(v27);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_223795E94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097CD0, &qword_2237B9288);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = *MEMORY[0x277D5CDC8];
  v9 = sub_2237B540C();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  sub_2237B55DC();

  sub_2237B55BC();
  v10 = *MEMORY[0x277D5D258];
  v11 = sub_2237B563C();
  (*(*(v11 - 8) + 104))(v3, v10, v11);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v11);
  return sub_2237B55CC();
}

void sub_223796054()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v3;
  v38 = v5;
  v37 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_122();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_348();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_299();
  v19 = *MEMORY[0x277D5CDC8];
  v20 = sub_2237B540C();
  OUTLINED_FUNCTION_4(v20);
  (*(v21 + 104))(v0, v19, v20);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v20);
  sub_2237B437C();

  sub_2237B434C();
  v25 = sub_2237B412C();
  OUTLINED_FUNCTION_4(v25);
  (*(v26 + 16))(v1, v37, v25);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v25);
  sub_2237B439C();

  sub_2237B438C();
  v30 = sub_2237B544C();
  OUTLINED_FUNCTION_4(v30);
  (*(v31 + 16))(v2, v38, v30);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v30);
  sub_2237B435C();
  if (v4)
  {
    v35 = objc_allocWithZone(sub_2237B553C());
    v36 = v4;
    sub_2237B552C();
    sub_2237B436C();
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_2237962B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v27;
  a20 = v28;
  OUTLINED_FUNCTION_208(v29, v30, v31, v32, v33, v34, v35, v36);
  v66 = v37;
  OUTLINED_FUNCTION_214(v38, &v77);
  OUTLINED_FUNCTION_167(a23);
  ObjectType = swift_getObjectType();
  v40 = OUTLINED_FUNCTION_316(ObjectType, v78);
  v41 = OUTLINED_FUNCTION_0_2(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_236(&a14);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_27_1();
  v48 = sub_223761B80();
  OUTLINED_FUNCTION_64();
  sub_2237B575C();
  v69 = v25;
  v70 = v23;
  OUTLINED_FUNCTION_286();
  v71 = v50;
  v72 = v49;
  OUTLINED_FUNCTION_338();
  v73 = v51;
  v74 = v66;
  OUTLINED_FUNCTION_190(&a12);
  OUTLINED_FUNCTION_110(&a15);
  OUTLINED_FUNCTION_334();
  v75 = v53;
  v76 = v52;
  v77 = v65;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_134(*(v25 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v54 = OUTLINED_FUNCTION_16_6();
  v48(v54);
  v55 = OUTLINED_FUNCTION_61(&a13);
  v48(v55);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_9_7();
  v56 = OUTLINED_FUNCTION_221();
  v57 = OUTLINED_FUNCTION_30_1(v56);
  v24(v57);
  v58 = OUTLINED_FUNCTION_80();
  v24(v58);
  OUTLINED_FUNCTION_76((v25 + v43));
  OUTLINED_FUNCTION_78(v59);
  *v60 = sub_2237A7D2C;
  v60[1] = &v68;
  OUTLINED_FUNCTION_5_3();
  v61 = swift_allocObject();
  *(v61 + 16) = sub_223761F8C;
  *(v61 + 24) = v25;
  v78[4] = sub_223761F78;
  v78[5] = v61;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v78[2] = v62;
  v78[3] = &block_descriptor_135;
  _Block_copy(v78);
  OUTLINED_FUNCTION_125();

  dispatch_sync(v67, v26);
  _Block_release(v26);
  OUTLINED_FUNCTION_133(&a11);
  v63 = OUTLINED_FUNCTION_146(&a14);
  (type metadata for Logger.Kind)(v63);
  v64 = OUTLINED_FUNCTION_146(&a16);
  (type metadata for Logger.Kind)(v64);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (0x237BA440)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_223796620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  HIDWORD(v23) = a6;
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v27 = a1;
  v22 = a10;
  v14 = sub_2237B544C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(v18);
  if (a9)
  {
    v19 = sub_2237B5FDC();
  }

  else
  {
    v19 = 0;
  }

  sub_2237968C8(a2, v24, v25, v26, BYTE4(v23) & 1, v18, v19, v22, a11, a12, a13, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);

  return (*(v15 + 8))(v18, v14);
}

void sub_2237968C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_16_3();
  v26 = v23;
  v104 = v27;
  v105 = v28;
  HIDWORD(v102) = v29;
  v31 = v30;
  v113 = v32;
  v34 = v33;
  v36 = v35;
  v103 = v37;
  v38 = sub_2237B412C();
  v39 = OUTLINED_FUNCTION_0_2(v38);
  v106 = v40;
  v108 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_4();
  v110 = v43;
  OUTLINED_FUNCTION_12();
  v44 = sub_2237B563C();
  v45 = OUTLINED_FUNCTION_0_2(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_264();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_29_1();
  v51 = *(v23 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_215();
  sub_22376F45C();
  if (v52)
  {
    v53 = v52;
    v101 = v31;
    v54 = *(v52 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession);
    v55 = OUTLINED_FUNCTION_81();
    v56(v55);
    HIDWORD(v100) = *MEMORY[0x277D5D258];
    v99 = *(v47 + 104);
    v99(v24);
    OUTLINED_FUNCTION_16_5();
    v57 = sub_223766744();
    v58 = *(v47 + 8);
    v58(v24, v44);
    v59 = OUTLINED_FUNCTION_352();
    (v58)(v59);
    if (v57)
    {
      sub_22376F9F8(v53, v36, v34, v60, v61, v62, v63, v64, v99, v100, v101, a21, a22, v102, a23, v103, v104, v105, v106, v108);
      v65 = (*(v107 + 16))(v110, v53 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v109);
      MEMORY[0x28223BE20](v65);
      v66 = objc_allocWithZone(sub_2237B4BDC());
      OUTLINED_FUNCTION_34_0();
      v67 = sub_2237B4B2C();
      if (v67)
      {
        v68 = v67;
        v69 = *(v26 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
        sub_2237654A4(v67);
      }

      else
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v84 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v84, qword_28131B550);

        v85 = sub_2237B5C8C();
        sub_2237B5FFC();

        if (OUTLINED_FUNCTION_28())
        {
          v86 = OUTLINED_FUNCTION_20();
          v87 = OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_325(v87);
          *v86 = 136315138;
          v88 = OUTLINED_FUNCTION_233();
          *(v86 + 4) = sub_223763694(v88, v89, v90);
          OUTLINED_FUNCTION_163();
          _os_log_impl(v91, v92, v93, v94, v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v53);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_8();
        }
      }

      v96 = *(v107 + 8);
      v97 = OUTLINED_FUNCTION_171();
      v98(v97);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v74 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v74, qword_28131B550);
      v75 = sub_2237B5C8C();
      v76 = sub_2237B5FFC();
      if (os_log_type_enabled(v75, v76))
      {
        OUTLINED_FUNCTION_20();
        v112 = OUTLINED_FUNCTION_44();
        v114 = v112;
        *v34 = 136315138;
        (v99)(v25, HIDWORD(v100), v44);
        sub_2237B562C();
        OUTLINED_FUNCTION_298();
        v77 = OUTLINED_FUNCTION_352();
        (v58)(v77);
        v78 = OUTLINED_FUNCTION_19_2();
        v81 = sub_223763694(v78, v79, v80);

        *(v34 + 4) = v81;
        OUTLINED_FUNCTION_308(&dword_22375F000, v75, v76, "Current session is not of type %s, cannot start test speech request");
        __swift_destroy_boxed_opaque_existential_0Tm(v112);
        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_13_5();
      }
    }

    goto LABEL_23;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v70 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v70, qword_28131B550);

  v111 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_321();

  if (os_log_type_enabled(v111, v36))
  {
    OUTLINED_FUNCTION_25_0();
    v71 = OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_301(v71);
    OUTLINED_FUNCTION_212(4.8151e-34);
    v73 = sub_223763694(v36, v34, v72);
    OUTLINED_FUNCTION_45_0(v73);
    *(v51 + 14) = sub_223763694(v113, v31, &v114);
    OUTLINED_FUNCTION_257(&dword_22375F000, v111, v36, "No active session for assistantId: %s cannot start test speech request for request id: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_23:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_223796EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v33 = a7;
  v32[0] = a4;
  v32[1] = a5;
  v37 = a12;
  v38 = a11;
  v36 = a10;
  v34 = a8;
  v35 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v32 - v23;
  v25 = *MEMORY[0x277D5CDC8];
  v26 = sub_2237B540C();
  (*(*(v26 - 8) + 104))(v24, v25, v26);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v26);
  sub_2237B4B8C();

  sub_2237B4B4C();
  v27 = sub_2237B412C();
  (*(*(v27 - 8) + 16))(v20, v32[0], v27);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v27);
  sub_2237B4BCC();

  sub_2237B4BBC();
  sub_2237B4BAC();
  v28 = sub_2237B544C();
  (*(*(v28 - 8) + 16))(v16, v34, v28);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v28);
  sub_2237B4B5C();

  sub_2237B4B9C();

  sub_2237B4B3C();

  result = sub_2237B4B6C();
  if (a13)
  {
    v30 = objc_allocWithZone(sub_2237B553C());
    v31 = a13;
    sub_2237B552C();
    return sub_2237B4B7C();
  }

  return result;
}

void sub_2237971D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v28 = v27;
  v62 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  OUTLINED_FUNCTION_188();
  v61 = sub_2237B5C7C();
  v36 = OUTLINED_FUNCTION_0_2(v61);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_35();
  v65[2] = v26;
  v66 = v23;
  v67 = v35;
  v68 = v33;
  OUTLINED_FUNCTION_207();
  v69 = v31;
  v70 = v46;
  v71 = v62;
  v72 = v28;
  v47 = sub_223761B80();
  v48 = v22;
  v64 = v22;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  sub_2237B573C();
  v63 = *(v26 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v49 = *(v38 + 16);
  v50 = OUTLINED_FUNCTION_155(&a16);
  v49(v50, v48, v61);
  v51 = OUTLINED_FUNCTION_151();
  (v49)(v51);
  v52 = *(v38 + 80);
  OUTLINED_FUNCTION_21_3();
  v53 = OUTLINED_FUNCTION_260();
  v54 = OUTLINED_FUNCTION_54_0(v53);
  v21(v54);
  (v21)(&v47[v53], v60, v61);
  OUTLINED_FUNCTION_76((v53 + v40));
  OUTLINED_FUNCTION_84(v55);
  v56 = (&type metadata for Logger + v53);
  *v56 = sub_2237A7D70;
  v56[1] = v65;
  OUTLINED_FUNCTION_5_3();
  v57 = swift_allocObject();
  *(v57 + 16) = sub_223761F8C;
  *(v57 + 24) = v53;
  v73[4] = sub_223761F78;
  v73[5] = v57;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v73[2] = v58;
  v73[3] = &block_descriptor_146;
  _Block_copy(v73);
  OUTLINED_FUNCTION_175();

  dispatch_sync(v63, v47);
  _Block_release(v47);
  OUTLINED_FUNCTION_133(&a17);
  v59 = OUTLINED_FUNCTION_324();
  (type metadata for Logger.Kind)(v59);
  (type metadata for Logger.Kind)(v64, v61);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_121();

  if (v38)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_223797518()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v0;
  v6 = v5;
  v72 = v7;
  v73 = v8;
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_262();
  v13 = sub_2237B412C();
  v14 = OUTLINED_FUNCTION_0_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_4();
  v19 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_120();
  sub_22376F45C();
  if (v20)
  {
    v69 = v12;
    v70 = v16;
    OUTLINED_FUNCTION_241();
    v71 = v13;
    v21(v1);
    sub_223766240(0, &qword_27D097CA8, 0x277CEF470);
    v22 = objc_allocWithZone(MEMORY[0x277CEF440]);
    v23 = v6;
    v24 = [v22 init];
    v25 = v23;
    v26 = sub_2237979CC(v6, v6, v24, 1, 0.0);
    if (v26)
    {
      v27 = v26;
      MEMORY[0x28223BE20](v26);
      OUTLINED_FUNCTION_276();
      *(v28 - 64) = v3;
      *(v28 - 56) = v2;
      *(v28 - 48) = v1;
      *(v28 - 40) = v69;
      v29 = v10;
      *(v28 - 32) = v10;
      *(v28 - 24) = v72;
      *(v28 - 16) = v73;
      *(v28 - 8) = v30;
      v31 = objc_allocWithZone(sub_2237B466C());
      OUTLINED_FUNCTION_34_0();
      v32 = sub_2237B45EC();
      if (!v32)
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v60 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v60, qword_28131B550);

        v61 = sub_2237B5C8C();
        sub_2237B5FFC();

        if (OUTLINED_FUNCTION_218())
        {
          OUTLINED_FUNCTION_20();
          v62 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_300(v62);
          OUTLINED_FUNCTION_303(4.8149e-34);
          sub_223763694(v69, v29, v63);
          OUTLINED_FUNCTION_33();
          _os_log_impl(v64, v65, v66, v67, v68, 0xCu);
          OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_3_0();
        }

        v57 = v71;
        v35 = *(v70 + 8);
        v36 = v1;
        goto LABEL_23;
      }

      v33 = v32;
      v34 = *(v4 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
      sub_2237654A4(v32);

      v35 = *(v70 + 8);
      v36 = v1;
    }

    else
    {
      v48 = v1;
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v49 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v49, qword_28131B550);
      v50 = v25;
      v51 = sub_2237B5C8C();
      v52 = sub_2237B5FFC();

      if (OUTLINED_FUNCTION_218())
      {
        v53 = OUTLINED_FUNCTION_20();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        *(v53 + 4) = v50;
        *v54 = v6;
        v55 = v50;
        OUTLINED_FUNCTION_317(&dword_22375F000, v56, v52, "Failed to create SpeechPackage for recognition: %@");
        sub_2237710FC(v54, &qword_27D097BE0, &qword_2237B88D0);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_71();
      }

      v35 = *(v70 + 8);
      v36 = v48;
    }

    v57 = v71;
LABEL_23:
    v35(v36, v57);
    goto LABEL_24;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v37 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v37, qword_28131B550);

  v74 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_282();

  if (OUTLINED_FUNCTION_368())
  {
    OUTLINED_FUNCTION_25_0();
    v38 = OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_301(v38);
    OUTLINED_FUNCTION_212(4.8151e-34);
    v39 = OUTLINED_FUNCTION_120();
    v42 = sub_223763694(v39, v40, v41);
    OUTLINED_FUNCTION_45_0(v42);
    v43 = OUTLINED_FUNCTION_342();
    *(v19 + 14) = sub_223763694(v43, v44, v45);
    OUTLINED_FUNCTION_152(&dword_22375F000, v46, v47, "No active session for assistantId: %s cannot post test result candidate for request id: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_24:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_14_2();
}

id sub_2237979CC(void *a1, void *a2, void *a3, char a4, double a5)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecognition:a1 rawRecognition:a2 audioAnalytics:a3 isFinal:a4 & 1 utteranceStart:a5];

  return v8;
}

uint64_t sub_223797A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v29 = a5;
  v30 = a7;
  v27 = a2;
  v28 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v27 - v19;
  v21 = *MEMORY[0x277D5CDC8];
  v22 = sub_2237B540C();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v22);
  sub_2237B462C();

  sub_2237B460C();
  v23 = sub_2237B412C();
  (*(*(v23 - 8) + 16))(v16, v28, v23);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v23);
  sub_2237B465C();

  sub_2237B464C();

  sub_2237B45FC();
  v24 = a9;
  sub_2237B461C();
  sub_2237B56CC();
  v25 = sub_2237B56DC();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v25);
  return sub_2237B463C();
}

void sub_223797CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v63 = v26;
  v60[3] = v27;
  v60[1] = v28;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_188();
  v33 = sub_2237B5C7C();
  v34 = OUTLINED_FUNCTION_8_6(v33, &a18);
  v65 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_62(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v41);
  v43 = v60 - v42;
  v67 = v20;
  v68 = v23;
  v60[2] = 0x80000002237BA520;
  v69 = v32;
  v70 = v30;
  OUTLINED_FUNCTION_189(&a16);
  v71 = v63;
  v44 = sub_223761B80();
  v45 = v43;
  v64 = v43;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  v62 = v21;
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_223();
  v63 = *(v20 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v46 = v65;
  v47 = *(v65 + 16);
  v48 = v61;
  v47(v22, v45, v61);
  v49 = v60[4];
  v50 = OUTLINED_FUNCTION_151();
  (v47)(v50);
  v51 = (v37 + *(v46 + 80) + ((*(v46 + 80) + 16) & ~*(v46 + 80))) & ~*(v46 + 80);
  OUTLINED_FUNCTION_105();
  v52 = OUTLINED_FUNCTION_260();
  v53 = OUTLINED_FUNCTION_54_0(v52);
  v21(v53);
  (v21)(v52 + v51, v49, v48);
  OUTLINED_FUNCTION_76(&v44[v52]);
  OUTLINED_FUNCTION_84(v54);
  v55 = (v52 + v46);
  *v55 = sub_2237A7D98;
  v55[1] = &v66;
  OUTLINED_FUNCTION_5_3();
  v56 = swift_allocObject();
  *(v56 + 16) = sub_223761F8C;
  *(v56 + 24) = v52;
  v72[4] = sub_223761F78;
  v72[5] = v56;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v72[2] = v57;
  v72[3] = &block_descriptor_157;
  _Block_copy(v72);
  OUTLINED_FUNCTION_175();

  dispatch_sync(v63, v44);
  _Block_release(v44);
  v58 = v65 + 8;
  v59 = *(v65 + 8);
  v59(v62, v48);
  v59(v64, v48);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_121();

  if (v58)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_223798040()
{
  OUTLINED_FUNCTION_16_3();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_188();
  v12 = sub_2237B412C();
  v13 = OUTLINED_FUNCTION_0_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_226();
  v18 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_100();
  sub_22376F45C();
  if (v19)
  {
    OUTLINED_FUNCTION_241();
    v21 = v20(v1);
    MEMORY[0x28223BE20](v21);
    OUTLINED_FUNCTION_276();
    *(v22 - 64) = v2;
    *(v22 - 56) = v11;
    *(v22 - 48) = v1;
    *(v22 - 40) = v9;
    *(v22 - 32) = v7;
    *(v22 - 24) = v5;
    OUTLINED_FUNCTION_225(v22);
    v23 = objc_allocWithZone(sub_2237B442C());
    OUTLINED_FUNCTION_34_0();
    v24 = sub_2237B441C();
    if (v24)
    {
      v25 = v24;
      v26 = *(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
      sub_2237654A4(v24);

      (*(v15 + 8))(v1, v12);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v33 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v33, qword_28131B550);

      v34 = sub_2237B5C8C();
      sub_2237B5FFC();

      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_20();
        v42 = OUTLINED_FUNCTION_44();
        *v1 = 136315138;
        *(v1 + 4) = sub_223763694(v9, v7, &v42);
        OUTLINED_FUNCTION_181();
        OUTLINED_FUNCTION_308(v35, v36, v37, v38);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_8();
      }

      (*(v15 + 8))(v1, v12);
    }

    goto LABEL_13;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v27 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v27, qword_28131B550);

  v41 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_361();

  if (os_log_type_enabled(v41, v18))
  {
    OUTLINED_FUNCTION_25_0();
    v28 = OUTLINED_FUNCTION_137();
    OUTLINED_FUNCTION_300(v28);
    OUTLINED_FUNCTION_303(4.8151e-34);
    v29 = OUTLINED_FUNCTION_100();
    v32 = sub_223763694(v29, v30, v31);
    OUTLINED_FUNCTION_56_0(v32);
    *(v5 + 14) = sub_223763694(v9, v7, &v42);
    OUTLINED_FUNCTION_281(&dword_22375F000, v41, v18, "No active session for assistantId: %s cannot post test result selected for request id: %s");
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_3_0();

LABEL_13:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237983B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[0] = a5;
  v20[1] = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v20 - v14;
  v16 = *MEMORY[0x277D5CDC8];
  v17 = sub_2237B540C();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
  sub_2237B447C();

  sub_2237B443C();
  v18 = sub_2237B412C();
  (*(*(v18 - 8) + 16))(v11, a4, v18);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
  sub_2237B449C();

  sub_2237B448C();

  sub_2237B446C();
  return sub_2237B444C();
}

void sub_2237985B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v50 = v26;
  OUTLINED_FUNCTION_214(v27, &a14);
  ObjectType = swift_getObjectType();
  v29 = OUTLINED_FUNCTION_316(ObjectType, &a13);
  v30 = OUTLINED_FUNCTION_0_2(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_158(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_27_1();
  v37 = sub_223761B80();
  OUTLINED_FUNCTION_64();
  sub_2237B575C();
  v54 = v21;
  v55 = v20;
  OUTLINED_FUNCTION_207();
  v56 = v39;
  v57 = v38;
  OUTLINED_FUNCTION_189(&a17);
  v58 = v50;
  v59 = v48;
  v52 = v23;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223();
  v51 = *(v21 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v40 = OUTLINED_FUNCTION_16_6();
  v37(v40);
  (v37)(v49, v22, v29);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_9_7();
  v41 = OUTLINED_FUNCTION_221();
  v42 = OUTLINED_FUNCTION_30_1(v41);
  v23(v42);
  v43 = OUTLINED_FUNCTION_80();
  v23(v43);
  OUTLINED_FUNCTION_76((v21 + v32));
  OUTLINED_FUNCTION_78(v44);
  *v45 = sub_2237A7DCC;
  v45[1] = &v53;
  OUTLINED_FUNCTION_5_3();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_223761F8C;
  *(v46 + 24) = v21;
  v60[4] = sub_223761F78;
  v60[5] = v46;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v60[2] = v47;
  v60[3] = &block_descriptor_168;
  _Block_copy(v60);
  OUTLINED_FUNCTION_125();

  dispatch_sync(v51, v49);
  _Block_release(v49);
  OUTLINED_FUNCTION_133(&a18);
  (type metadata for Logger.Kind)(v22, 0x80000002237BA560);
  (type metadata for Logger.Kind)(v52, 0x80000002237BA560);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (0x237BA560)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_2237988EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2237B544C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = var50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(v13);
  sub_223798AE0(a2, a3, a4, a5, v13, v14, v15, v16, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_223798A1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  v8 = a1;
  v9 = OUTLINED_FUNCTION_240();
  a6(v9);
}

void sub_223798AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v188 = v26;
  v195 = v27;
  v196 = v28;
  v30 = v29;
  v31 = OUTLINED_FUNCTION_191();
  v32 = type metadata accessor for RequestDispatcher.SessionContext(v31);
  v33 = OUTLINED_FUNCTION_243(v32);
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_226();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  v38 = OUTLINED_FUNCTION_1(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_69();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_62(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_168();
  v47 = sub_2237B5CCC();
  v48 = OUTLINED_FUNCTION_8_6(v47, &a13);
  v183 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v52);
  v53 = sub_2237B5D0C();
  v54 = OUTLINED_FUNCTION_8_6(v53, &a11);
  v180 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v58);
  v194 = sub_2237B412C();
  v59 = OUTLINED_FUNCTION_0_2(v194);
  v192 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_62(&v176[-((v62 + 15) & 0xFFFFFFFFFFFFFFF0) - 4]);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_20_0();
  v193 = v64;
  OUTLINED_FUNCTION_12();
  v65 = sub_2237B563C();
  v66 = OUTLINED_FUNCTION_0_2(v65);
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_3();
  v73 = v71 - v72;
  MEMORY[0x28223BE20](v74);
  v76 = &v176[-v75 - 4];
  v190 = v20;
  v77 = *(v20 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  v189 = v21;
  v191 = v30;
  sub_22376F45C();
  if (v78)
  {
    v79 = v78;
    *&v176[4] = v23;
    v178 = v22;
    v80 = *(v78 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession);
    OUTLINED_FUNCTION_141();
    v81(v76);
    v82 = v79;
    v83 = *MEMORY[0x277D5D258];
    v177 = *(v68 + 104);
    v177(v73, v83, v65);
    LOBYTE(v79) = sub_223766744();
    v84 = *(v68 + 8);
    v84(v73, v65);
    v85 = OUTLINED_FUNCTION_186();
    (v84)(v85);
    if (v79)
    {
      v86 = v193;
      v87 = *(v192 + 16);
      v88 = v87(v193, v82 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v194);
      MEMORY[0x28223BE20](v88);
      v89 = v191;
      *(&v175 - 6) = v189;
      *(&v175 - 5) = v89;
      v91 = v195;
      v90 = v196;
      *(&v175 - 4) = v86;
      *(&v175 - 3) = v91;
      OUTLINED_FUNCTION_210();
      *(v92 - 16) = v90;
      *(v92 - 8) = v93;
      v94 = objc_allocWithZone(sub_2237B515C());
      OUTLINED_FUNCTION_144();
      v95 = sub_2237B451C();
      if (v95)
      {
        v191 = v82;
        v96 = v190;
        v97 = *(v190 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
        v189 = v95;
        sub_2237654A4(v95);
        v98 = *(v96 + OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
        if ((*(v98 + 32) & 1) != 0 || (OUTLINED_FUNCTION_138(), v99))
        {
          OUTLINED_FUNCTION_129(*(v98 + 16));
          v100 = OUTLINED_FUNCTION_185(&v203);
          v87(v100, v193, v194);
          v101 = (*(v192 + 80) + 24) & ~*(v192 + 80);
          OUTLINED_FUNCTION_329();
          v102 = OUTLINED_FUNCTION_221();
          OUTLINED_FUNCTION_354(v102);
          OUTLINED_FUNCTION_283();
          v103();
          v104 = v84 + v96;
          v105 = v196;
          *v104 = v195;
          *(v104 + 1) = v105;
          v199 = sub_2237A93F0;
          v200 = v96;
          v197[0] = MEMORY[0x277D85DD0];
          v197[1] = 1107296256;
          OUTLINED_FUNCTION_6_6();
          v197[2] = v106;
          v198 = &block_descriptor_415;
          _Block_copy(v197);
          OUTLINED_FUNCTION_370();

          v107 = v179;
          sub_2237B5CEC();
          v201[0] = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_5_5();
          sub_223766F90(v108, v109);
          v110 = OUTLINED_FUNCTION_256();
          __swift_instantiateConcreteTypeFromMangledNameV2(v110, v111);
          OUTLINED_FUNCTION_4_8();
          sub_223766FD8(v112, &unk_27D097C90, qword_2237B7940);
          v113 = v181;
          v114 = v184;
          sub_2237B60FC();
          OUTLINED_FUNCTION_343();
          MEMORY[0x223DEACD0]();
          _Block_release(v84);
          OUTLINED_FUNCTION_96(&a12);
          v115(v113, v114);
          OUTLINED_FUNCTION_96(&a9);
          v116(v107, v182);
        }

        v117 = v190;
        OUTLINED_FUNCTION_129(*(v190 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil));
        v118 = v194;
        v87(v178, v193, v194);
        OUTLINED_FUNCTION_12_4();
        __swift_storeEnumTagSinglePayload(v119, v120, v121, v118);
        LODWORD(v184) = AFDeviceSupportsSiriUOD();
        AFShouldRunAsrOnServerForUOD();
        v122 = OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils;
        sub_223781B5C(v117 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils, v197);
        OUTLINED_FUNCTION_259(v197, v198);
        v123 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
        OUTLINED_FUNCTION_14_3();
        swift_beginAccess();
        v124 = v185;
        sub_22376F91C(v117 + v123, v185, &unk_27D097C80, &unk_2237B9260);
        v125 = v187;
        if (__swift_getEnumTagSinglePayload(v124, 1, v187))
        {
          sub_2237710FC(v124, &unk_27D097C80, &unk_2237B9260);
        }

        else
        {
          v154 = *&v176[4];
          sub_22378ED08(v124, *&v176[4]);
          sub_2237710FC(v124, &unk_27D097C80, &unk_2237B9260);
          v155 = (v154 + *(v125 + 20));
          v157 = *v155;
          v156 = v155[1];

          sub_223771D44(v154);
        }

        v158 = sub_2237B58AC();

        v159 = v190;
        sub_223781B5C(v190 + v122, v201);
        OUTLINED_FUNCTION_259(v201, v201[3]);
        v160 = v186;
        sub_22376F91C(v159 + v123, v186, &unk_27D097C80, &unk_2237B9260);
        if (__swift_getEnumTagSinglePayload(v160, 1, v125))
        {
          sub_2237710FC(v160, &unk_27D097C80, &unk_2237B9260);
        }

        else
        {
          v161 = *&v176[4];
          sub_22378ED08(v160, *&v176[4]);
          sub_2237710FC(v160, &unk_27D097C80, &unk_2237B9260);
          v162 = (v161 + *(v125 + 20));
          v164 = *v162;
          v163 = v162[1];

          sub_223771D44(v161);
        }

        sub_2237B58AC();

        v174 = OS_LOG_TYPE_DEFAULT;
        OUTLINED_FUNCTION_185(&v202);
        OUTLINED_FUNCTION_343();
        sub_223771484(v165, v166, v167, v168, v169, v170, v171, v172, v174);

        OUTLINED_FUNCTION_290();

        sub_2237710FC(v158, &qword_27D097A50, &unk_2237B7800);
        __swift_destroy_boxed_opaque_existential_0Tm(v201);
        __swift_destroy_boxed_opaque_existential_0Tm(v197);
      }

      else
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v144 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v144, qword_28131B550);

        v145 = sub_2237B5C8C();
        sub_2237B5FFC();

        if (OUTLINED_FUNCTION_218())
        {
          OUTLINED_FUNCTION_20();
          v197[0] = OUTLINED_FUNCTION_32();
          v175 = 136315138;
          v146 = OUTLINED_FUNCTION_151();
          *v176 = sub_223763694(v146, v147, v148);
          OUTLINED_FUNCTION_33();
          _os_log_impl(v149, v150, v151, v152, v153, 0xCu);
          OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_3_0();
        }
      }

      (*(v192 + 8))(v193, v194);
    }

    else
    {
      v191 = v82;
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v134 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v134, qword_28131B550);
      v135 = sub_2237B5C8C();
      v136 = sub_2237B5FFC();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = OUTLINED_FUNCTION_20();
        v196 = OUTLINED_FUNCTION_19_0();
        v197[0] = v196;
        *v137 = 136315138;
        v177(v76, v83, v65);
        sub_2237B562C();
        OUTLINED_FUNCTION_357();
        v138 = OUTLINED_FUNCTION_186();
        (v84)(v138);
        v139 = OUTLINED_FUNCTION_256();
        sub_223763694(v139, v140, v141);
        OUTLINED_FUNCTION_148();

        *(v137 + 4) = v76;
        _os_log_impl(&dword_22375F000, v135, v136, "Current session is not of type %s, cannot start remote server request", v137, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v196);
        OUTLINED_FUNCTION_74();
        OUTLINED_FUNCTION_116();
      }
    }

    goto LABEL_33;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v126 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v126, qword_28131B550);

  v127 = v191;

  v194 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_282();

  if (os_log_type_enabled(v194, v73))
  {
    OUTLINED_FUNCTION_25_0();
    v197[0] = OUTLINED_FUNCTION_99();
    *v77 = 136315394;
    v128 = OUTLINED_FUNCTION_143();
    v130 = sub_223763694(v128, v127, v129);
    OUTLINED_FUNCTION_45_0(v130);
    v131 = OUTLINED_FUNCTION_119();
    *(v77 + 14) = sub_223763694(v131, v132, v133);
    OUTLINED_FUNCTION_257(&dword_22375F000, v194, v73, "No active session for assistantId: %s cannot start remote server request for request id: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_33:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_22379974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v26 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v25 - v18;
  v20 = *MEMORY[0x277D5CDC8];
  v21 = sub_2237B540C();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
  sub_2237B437C();

  sub_2237B434C();
  v22 = sub_2237B412C();
  (*(*(v22 - 8) + 16))(v15, a4, v22);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v22);
  sub_2237B439C();

  sub_2237B438C();
  v23 = sub_2237B544C();
  (*(*(v23 - 8) + 16))(v11, v26, v23);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v23);
  return sub_2237B435C();
}

void sub_2237999D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_267(v26, v27, v28, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_68(v34, v35, v36, v37, &a13);
  v41 = OUTLINED_FUNCTION_196(v38, v39, v40);
  v42 = OUTLINED_FUNCTION_316(v41, &v72);
  v43 = OUTLINED_FUNCTION_0_2(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_236(&a16);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_27_1();
  v50 = sub_223761B80();
  OUTLINED_FUNCTION_64();
  sub_2237B575C();
  OUTLINED_FUNCTION_265();
  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_115(&v71);
  v69[4] = v52;
  v69[5] = v51;
  OUTLINED_FUNCTION_190(&a11);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_114(&a17);
  v69[10] = v54;
  v69[11] = v53;
  OUTLINED_FUNCTION_206();
  v69[12] = v55;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_129(*(v22 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v56 = OUTLINED_FUNCTION_16_6();
  v50(v56);
  v57 = OUTLINED_FUNCTION_61(&a15);
  v50(v57);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_9_7();
  v58 = OUTLINED_FUNCTION_221();
  v59 = OUTLINED_FUNCTION_30_1(v58);
  v21(v59);
  v60 = OUTLINED_FUNCTION_80();
  v21(v60);
  OUTLINED_FUNCTION_76((v22 + v45));
  OUTLINED_FUNCTION_78(v61);
  *v62 = sub_2237A7DE4;
  v62[1] = v69;
  OUTLINED_FUNCTION_5_3();
  v63 = swift_allocObject();
  *(v63 + 16) = sub_223761F8C;
  *(v63 + 24) = v22;
  v70[4] = sub_223761F78;
  v71 = v63;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v70[2] = v64;
  v70[3] = &block_descriptor_179;
  _Block_copy(v70);
  OUTLINED_FUNCTION_125();

  v65 = OUTLINED_FUNCTION_57_0();
  dispatch_sync(v65, v66);
  _Block_release(v23);
  v67 = OUTLINED_FUNCTION_86(&a14);
  (type metadata for Logger.Kind)(v67, v20);
  v68 = OUTLINED_FUNCTION_143();
  (type metadata for Logger.Kind)(v68, v20);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_223799CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a1;
  v22 = a8;
  v20 = a5;
  v13 = sub_2237B544C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(v17);
  sub_223799E14(a2, a3, a4, v20, v17, v22, a9, a10, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return (*(v14 + 8))(v17, v13);
}

void sub_223799E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v257 = v26;
  v254 = v27;
  v253 = v28;
  v256 = v29;
  v265 = v30;
  v262 = v31;
  v33 = v32;
  v35 = v34;
  ObjectType = swift_getObjectType();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_25_2(v40);
  v41 = sub_2237B5CCC();
  v42 = OUTLINED_FUNCTION_8_6(v41, &a15);
  v250 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v46);
  v47 = sub_2237B5D0C();
  v48 = OUTLINED_FUNCTION_8_6(v47, &a13);
  v248 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v52);
  v53 = sub_2237B412C();
  v54 = OUTLINED_FUNCTION_0_2(v53);
  v258 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62(v58);
  OUTLINED_FUNCTION_204(&v268);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_20_0();
  v260 = v60;
  OUTLINED_FUNCTION_12();
  v259 = sub_2237B563C();
  v61 = OUTLINED_FUNCTION_0_2(v259);
  v263 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_3();
  v67 = v65 - v66;
  MEMORY[0x28223BE20](v68);
  v70 = &v240[-v69];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v71);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_168();
  v75 = type metadata accessor for RequestDispatcher.SessionContext(0);
  v76 = OUTLINED_FUNCTION_4(v75);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_17_4();
  v79 = *(v20 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  v264 = v35;
  v80 = v33;
  sub_22376F45C();
  if (v81)
  {
    v261 = v81;
    v82 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    v244 = v25;
    sub_22376F91C(v25 + v82, v22, &unk_27D097C80, &unk_2237B9260);
    OUTLINED_FUNCTION_312(v22, 1, v75);
    if (v83)
    {
      sub_2237710FC(v22, &unk_27D097C80, &unk_2237B9260);
      v84 = v264;
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v85 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v85, qword_28131B550);
      v86 = v265;

      v87 = sub_2237B5C8C();
      sub_2237B5FFC();

      if (OUTLINED_FUNCTION_218())
      {
        OUTLINED_FUNCTION_25_0();
        v88 = OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_251(v88);
        OUTLINED_FUNCTION_255(4.8151e-34);
        v90 = sub_223763694(v84, v33, v89);
        OUTLINED_FUNCTION_56_0(v90);
        *(v75 + 14) = sub_223763694(v262, v86, v267);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v91, v92, v93, v94, v95, 0x16u);
        OUTLINED_FUNCTION_149();
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_3_0();
      }

      goto LABEL_50;
    }

    *&v241[4] = v75;
    v245 = v53;
    v246 = v21;
    sub_22376F978(v22, v21);
    v101 = v261;
    v102 = *(v261 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession);
    v103 = v263;
    OUTLINED_FUNCTION_141();
    v104 = v259;
    v105(v70);
    isa = v103[13].isa;
    v243 = *MEMORY[0x277D5D258];
    v242 = isa;
    isa(v67);
    OUTLINED_FUNCTION_215();
    v107 = sub_223766744();
    v108 = v103[1].isa;
    v109 = OUTLINED_FUNCTION_142();
    v108(v109);
    v110 = OUTLINED_FUNCTION_349();
    v263 = v103 + 1;
    v108(v110);
    v111 = v264;
    if ((v107 & 1) == 0)
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v176 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v176, qword_28131B550);
      v177 = sub_2237B5C8C();
      v178 = sub_2237B5FFC();
      if (os_log_type_enabled(v177, v178))
      {
        OUTLINED_FUNCTION_20();
        v267[0] = OUTLINED_FUNCTION_44();
        *v67 = 136315138;
        v242(v70, v243, v104);
        sub_2237B562C();
        OUTLINED_FUNCTION_298();
        v179 = OUTLINED_FUNCTION_349();
        v108(v179);
        v180 = OUTLINED_FUNCTION_19_2();
        v183 = sub_223763694(v180, v181, v182);

        *(v67 + 4) = v183;
        OUTLINED_FUNCTION_308(&dword_22375F000, v177, v178, "Current session is not of type %s, cannot start server text request request");
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_13_5();
      }

      goto LABEL_48;
    }

    v112 = v80;
    v113 = v258;
    v114 = v258 + 16;
    v115 = v260;
    v259 = *(v258 + 16);
    v116 = v259(v260, v101 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v245);
    MEMORY[0x28223BE20](v116);
    OUTLINED_FUNCTION_277();
    *(v117 - 64) = v111;
    *(v117 - 56) = v112;
    v118 = v262;
    *(v117 - 48) = v115;
    *(v117 - 40) = v118;
    v119 = v265;
    v120 = v256;
    *(v117 - 32) = v265;
    *(v117 - 24) = v120;
    OUTLINED_FUNCTION_225(v117);
    objc_allocWithZone(sub_2237B527C());
    OUTLINED_FUNCTION_144();
    v121 = sub_2237B451C();
    if (!v121)
    {
      v184 = v246;
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v185 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v185, qword_28131B550);
      OUTLINED_FUNCTION_366();
      v186 = sub_2237B5C8C();
      sub_2237B5FFC();
      OUTLINED_FUNCTION_26_0();
      if (OUTLINED_FUNCTION_218())
      {
        OUTLINED_FUNCTION_20();
        v187 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_251(v187);
        OUTLINED_FUNCTION_255(4.8149e-34);
        v188 = OUTLINED_FUNCTION_233();
        *v241 = sub_223763694(v188, v189, v190);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v191, v192, v193, v194, v195, 0xCu);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_3_0();
      }

      v196 = *(v113 + 8);
      v197 = OUTLINED_FUNCTION_186();
      v198(v197);
      v199 = v184;
      goto LABEL_49;
    }

    v263 = v121;
    MEMORY[0x28223BE20](v121);
    *&v240[-80] = v111;
    *&v240[-72] = v112;
    *&v240[-64] = v115;
    *&v240[-56] = v118;
    OUTLINED_FUNCTION_210();
    *(v122 - 48) = v119;
    *(v122 - 40) = v123;
    v124 = v246;
    *(v122 - 32) = v254;
    *(v122 - 24) = v124;
    v125 = ObjectType;
    *(v122 - 16) = ObjectType;
    objc_allocWithZone(sub_2237B4C8C());
    OUTLINED_FUNCTION_144();
    v126 = sub_2237B4C0C();
    if (v126)
    {
      v257 = v126;
      MEMORY[0x28223BE20](v126);
      OUTLINED_FUNCTION_213();
      objc_allocWithZone(sub_2237B45BC());
      OUTLINED_FUNCTION_144();
      v127 = sub_2237B453C();
      v256 = v127;
      if (v127)
      {
        MEMORY[0x28223BE20](v127);
        OUTLINED_FUNCTION_213();
        objc_allocWithZone(sub_2237B442C());
        OUTLINED_FUNCTION_144();
        v128 = sub_2237B441C();
        v129 = v115;
        if (v128)
        {
          v130 = v128;
          v131 = v244;
          v132 = *(v244 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
          sub_2237654A4(v263);
          sub_2237654A4(v257);
          sub_2237654A4(v256);
          v264 = v130;
          sub_2237654A4(v130);
          v133 = *(v131 + OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
          v134 = v245;
          v135 = v246;
          if ((*(v133 + 32) & 1) != 0 || (OUTLINED_FUNCTION_138(), v83))
          {
            ObjectType = *(v133 + 16);
            v136 = OUTLINED_FUNCTION_155(&a9);
            v259(v136, v129, v134);
            OUTLINED_FUNCTION_228();
            v139 = v138 & ~v137;
            OUTLINED_FUNCTION_329();
            v140 = OUTLINED_FUNCTION_221();
            v141 = OUTLINED_FUNCTION_89(v140);
            v142(v141 + v139, v135, v134);
            v143 = &v240[v112];
            v144 = v265;
            *v143 = v262;
            v143[1] = v144;
            v267[4] = sub_2237A93F0;
            v267[5] = v240;
            OUTLINED_FUNCTION_44_0();
            v267[1] = 1107296256;
            OUTLINED_FUNCTION_6_6();
            v267[2] = v145;
            v267[3] = &block_descriptor_408;
            _Block_copy(v267);
            OUTLINED_FUNCTION_254();

            v146 = v247;
            sub_2237B5CEC();
            v266 = MEMORY[0x277D84F90];
            OUTLINED_FUNCTION_5_5();
            sub_223766F90(v147, v148);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C90, qword_2237B7940);
            OUTLINED_FUNCTION_4_8();
            sub_223766FD8(v149, &unk_27D097C90, qword_2237B7940);
            OUTLINED_FUNCTION_296(&a12);
            v150 = v251;
            sub_2237B60FC();
            MEMORY[0x223DEACD0](0, v146, v135, v240);
            _Block_release(v240);
            OUTLINED_FUNCTION_96(&a14);
            v151 = v135;
            v135 = v246;
            v152(v151, v150);
            OUTLINED_FUNCTION_96(&a11);
            v153(v146, v249);
          }

          ObjectType = *(v131 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
          v154 = v252;
          v155 = OUTLINED_FUNCTION_171();
          (v259)(v155);
          OUTLINED_FUNCTION_12_4();
          __swift_storeEnumTagSinglePayload(v156, v157, v158, v134);
          LODWORD(v259) = AFDeviceSupportsSiriUOD();
          LODWORD(v254) = AFShouldRunAsrOnServerForUOD();
          v159 = (v131 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils);
          v160 = v159[3];
          v161 = v159[4];
          v162 = OUTLINED_FUNCTION_234();
          OUTLINED_FUNCTION_259(v162, v163);
          OUTLINED_FUNCTION_286();
          v165 = (v135 + *(v164 + 20));
          v166 = *v165;
          v167 = v165[1];
          sub_2237B58AC();
          v168 = v159[4];
          OUTLINED_FUNCTION_259(v159, v159[3]);
          OUTLINED_FUNCTION_147();
          sub_2237B58AC();
          v239 = OS_LOG_TYPE_DEFAULT;
          OUTLINED_FUNCTION_147();
          sub_223771484(v169, v170, v171, 2, v259, v254, v172, v173, v239);

          sub_2237710FC(v154, &qword_27D097A50, &unk_2237B7800);
          (*(v258 + 8))(v260, v245);
          goto LABEL_48;
        }

        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v227 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v227, qword_28131B550);
        OUTLINED_FUNCTION_366();
        v228 = sub_2237B5C8C();
        sub_2237B5FFC();
        OUTLINED_FUNCTION_26_0();
        v229 = OUTLINED_FUNCTION_218();
        v230 = v258;
        if (v229)
        {
          OUTLINED_FUNCTION_20();
          v231 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_251(v231);
          OUTLINED_FUNCTION_255(4.8149e-34);
          *v241 = sub_223763694(v118, v114, v232);
          OUTLINED_FUNCTION_33();
          _os_log_impl(v233, v234, v235, v236, v237, 0xCu);
          OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_3_0();
        }

        v238 = *(v230 + 8);
        v225 = OUTLINED_FUNCTION_120();
LABEL_47:
        v226(v225);
LABEL_48:
        v199 = v246;
LABEL_49:
        sub_223771D44(v199);
        goto LABEL_50;
      }

      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v213 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v213, qword_28131B550);
      OUTLINED_FUNCTION_366();
      v201 = sub_2237B5C8C();
      sub_2237B5FFC();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_218();
      OUTLINED_FUNCTION_289();
      if (v214)
      {
        OUTLINED_FUNCTION_20();
        v215 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_251(v215);
        OUTLINED_FUNCTION_255(4.8149e-34);
        v216 = OUTLINED_FUNCTION_240();
        *v241 = sub_223763694(v216, v217, v218);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v219, v220, v221, v222, v223, 0xCu);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_3_0();
      }

      v212 = v257;
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v200 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v200, qword_28131B550);
      OUTLINED_FUNCTION_366();
      v201 = sub_2237B5C8C();
      sub_2237B5FFC();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_218();
      OUTLINED_FUNCTION_289();
      if (v202)
      {
        OUTLINED_FUNCTION_20();
        v203 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_251(v203);
        OUTLINED_FUNCTION_255(4.8149e-34);
        v204 = OUTLINED_FUNCTION_240();
        *v241 = sub_223763694(v204, v205, v206);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v207, v208, v209, v210, v211, 0xCu);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_3_0();
      }

      v212 = v263;
    }

    v224 = *(v125 + 8);
    v225 = OUTLINED_FUNCTION_234();
    goto LABEL_47;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v96 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v96, qword_28131B550);
  v97 = v265;

  v263 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_282();

  v98 = os_log_type_enabled(v263, v70);
  v99 = v264;
  if (v98)
  {
    OUTLINED_FUNCTION_25_0();
    v267[0] = OUTLINED_FUNCTION_99();
    *v79 = 136315394;
    v100 = sub_223763694(v99, v80, v267);
    OUTLINED_FUNCTION_45_0(v100);
    *(v79 + 14) = sub_223763694(v262, v97, v267);
    OUTLINED_FUNCTION_257(&dword_22375F000, v263, v70, "No active session for assistantId: %s cannot start remote server text request for request id: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_50:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_22379AE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26[1] = a5;
  v26[2] = a7;
  v26[0] = a4;
  v27 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v26 - v19;
  v21 = *MEMORY[0x277D5CDC8];
  v22 = sub_2237B540C();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v22);
  sub_2237B4C3C();

  sub_2237B4C2C();
  v23 = sub_2237B412C();
  (*(*(v23 - 8) + 16))(v16, v26[0], v23);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v23);
  sub_2237B4C6C();

  sub_2237B4C5C();
  sub_2237B4C1C();

  sub_2237B4C7C();
  v24 = sub_2237B56DC();
  (*(*(v24 - 8) + 16))(v12, v27, v24);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v24);
  return sub_2237B4C4C();
}

uint64_t sub_22379B0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[1] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097CA0, &qword_2237B9270);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v24 - v16;
  v18 = *MEMORY[0x277D5CDC8];
  v19 = sub_2237B540C();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v19);
  sub_2237B458C();

  sub_2237B454C();
  v20 = sub_2237B412C();
  (*(*(v20 - 8) + 16))(v13, a4, v20);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v20);
  sub_2237B45AC();

  sub_2237B459C();
  sub_2237B456C();
  sub_2237B457C();
  v21 = *MEMORY[0x277D5D188];
  v22 = sub_2237B557C();
  (*(*(v22 - 8) + 104))(v9, v21, v22);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v22);
  return sub_2237B455C();
}

uint64_t sub_22379B3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = *MEMORY[0x277D5CDC8];
  v14 = sub_2237B540C();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
  sub_2237B447C();

  sub_2237B443C();
  v15 = sub_2237B412C();
  (*(*(v15 - 8) + 16))(v8, a4, v15);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
  sub_2237B449C();

  sub_2237B448C();
  sub_2237B446C();
  return sub_2237B444C();
}

void sub_22379B594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_267(v26, v27, v28, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_68(v34, v35, v36, v37, &a13);
  v41 = OUTLINED_FUNCTION_196(v38, v39, v40);
  v42 = OUTLINED_FUNCTION_316(v41, &v72);
  v43 = OUTLINED_FUNCTION_0_2(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_236(&a16);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_27_1();
  v50 = sub_223761B80();
  OUTLINED_FUNCTION_64();
  sub_2237B575C();
  OUTLINED_FUNCTION_265();
  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_115(&v71);
  v69[4] = v52;
  v69[5] = v51;
  OUTLINED_FUNCTION_190(&a11);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_114(&a17);
  v69[10] = v54;
  v69[11] = v53;
  OUTLINED_FUNCTION_206();
  v69[12] = v55;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_129(*(v22 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v56 = OUTLINED_FUNCTION_16_6();
  v50(v56);
  v57 = OUTLINED_FUNCTION_61(&a15);
  v50(v57);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_9_7();
  v58 = OUTLINED_FUNCTION_221();
  v59 = OUTLINED_FUNCTION_30_1(v58);
  v21(v59);
  v60 = OUTLINED_FUNCTION_80();
  v21(v60);
  OUTLINED_FUNCTION_76((v22 + v45));
  OUTLINED_FUNCTION_78(v61);
  *v62 = sub_2237A7DFC;
  v62[1] = v69;
  OUTLINED_FUNCTION_5_3();
  v63 = swift_allocObject();
  *(v63 + 16) = sub_223761F8C;
  *(v63 + 24) = v22;
  v70[4] = sub_223761F78;
  v71 = v63;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v70[2] = v64;
  v70[3] = &block_descriptor_190;
  _Block_copy(v70);
  OUTLINED_FUNCTION_125();

  v65 = OUTLINED_FUNCTION_57_0();
  dispatch_sync(v65, v66);
  _Block_release(v23);
  v67 = OUTLINED_FUNCTION_86(&a14);
  (type metadata for Logger.Kind)(v67, v20);
  v68 = OUTLINED_FUNCTION_143();
  (type metadata for Logger.Kind)(v68, v20);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_22379B894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v32 = a5;
  v33 = a8;
  v30 = a9;
  v31 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v30 - v15;
  v17 = sub_2237B544C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(v21);
  v22 = objc_allocWithZone(sub_2237B553C());
  v23 = a10;
  v24 = sub_2237B552C();
  v25 = *(a1 + OBJC_IVAR___SRDRequestDispatcherInternal_isMUXEnabled);
  v26 = sub_2237B56DC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v26);
  LOBYTE(v28) = v25;
  sub_22379D19C(a2, a3, v31, v32, v21, v33, v30, v24, v28, v16, 0, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);

  sub_2237710FC(v16, &qword_27D097900, &qword_2237B8860);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_22379BA90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  v24 = sub_2237B5E2C();
  v11 = v10;
  v12 = sub_2237B5E2C();
  v14 = v13;
  v15 = sub_2237B5E2C();
  v17 = v16;
  v18 = sub_2237B5E2C();
  v20 = v19;
  v21 = a7;
  v22 = a1;
  a8(v24, v11, v12, v14, v15, v17, v18, v20, v21);
}

void sub_22379BB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v69 = v26;
  v66 = v27;
  v65 = v28;
  v64 = v29;
  v63 = v30;
  v62 = v31;
  v33 = v32;
  OUTLINED_FUNCTION_188();
  v70 = sub_2237B5C7C();
  v34 = OUTLINED_FUNCTION_0_2(v70);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v39);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v61 - v42;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_236(&a17);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_27_1();
  sub_223761B80();
  OUTLINED_FUNCTION_64();
  sub_2237B575C();
  v73 = v23;
  v74 = v33;
  v61 = 0x80000002237BA620;
  v75 = v20;
  v76 = v62;
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_189(&a14);
  OUTLINED_FUNCTION_290();
  v77 = v45;
  v71 = v22;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_320();
  v69 = *(v20 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v46 = v36;
  v47 = *(v36 + 16);
  v48 = v43;
  v49 = v70;
  v47(v43, v22, v70);
  v50 = v68;
  v51 = OUTLINED_FUNCTION_119();
  (v47)(v51);
  v52 = *(v46 + 80);
  v67 = v46;
  OUTLINED_FUNCTION_9_7();
  v53 = OUTLINED_FUNCTION_221();
  v54 = *(v46 + 32);
  v54(v47 + v53, v48, v49);
  v54(&type metadata for Logger + v53, v50, v49);
  OUTLINED_FUNCTION_76((v53 + v38));
  OUTLINED_FUNCTION_84(v55);
  v56 = (v53 + v21);
  *v56 = sub_2237A7E50;
  v56[1] = &v72;
  OUTLINED_FUNCTION_5_3();
  v57 = swift_allocObject();
  *(v57 + 16) = sub_223761F8C;
  *(v57 + 24) = v53;
  v78[4] = sub_223761F78;
  v78[5] = v57;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v78[2] = v58;
  v78[3] = &block_descriptor_201;
  _Block_copy(v78);
  OUTLINED_FUNCTION_195();

  v59 = OUTLINED_FUNCTION_143();
  dispatch_sync(v59, v50);
  _Block_release(v50);
  OUTLINED_FUNCTION_133(&a15);
  v60 = OUTLINED_FUNCTION_101();
  (type metadata for Logger.Kind)(v60, v49);
  (type metadata for Logger.Kind)(v71, v49);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_121();

  if (v49)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_22379BF18(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  if (a2)
  {
    v30 = a9;
    v20 = a2;
LABEL_5:
    v22 = *(a3 + OBJC_IVAR___SRDRequestDispatcherInternal_isMUXEnabled);
    v23 = sub_2237B56DC();
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v23);

    LOBYTE(v28) = v22;
    sub_22379D19C(a1, v20, v31, a5, a6, a7, a8, v30, v28, v19, 0, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);

    sub_2237710FC(v19, &qword_27D097900, &qword_2237B8860);
    return;
  }

  v21 = *(a3 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  v20 = *(v21 + 64);
  if (v20)
  {
    v30 = a9;
    a1 = *(v21 + 56);

    goto LABEL_5;
  }

  if (qword_28131AA10 != -1)
  {
    swift_once();
  }

  v24 = sub_2237B5C9C();
  __swift_project_value_buffer(v24, qword_28131B550);
  v31 = sub_2237B5C8C();
  v25 = sub_2237B5FFC();
  if (os_log_type_enabled(v31, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_22375F000, v31, v25, "Failed to start text request: no current assistant id", v26, 2u);
    MEMORY[0x223DEB690](v26, -1, -1);
  }

  v27 = v31;
}

void sub_22379C168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_16_3();
  v80 = v23;
  v81 = v24;
  v26 = v25;
  v28 = v27;
  v29 = sub_2237B5CCC();
  v30 = OUTLINED_FUNCTION_0_2(v29);
  v78 = v31;
  v79 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_4();
  v76 = v34;
  OUTLINED_FUNCTION_12();
  v77 = sub_2237B5D0C();
  v35 = OUTLINED_FUNCTION_0_2(v77);
  v75 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_4();
  v74 = v39;
  OUTLINED_FUNCTION_12();
  v40 = sub_2237B412C();
  v41 = OUTLINED_FUNCTION_0_2(v40);
  v72 = v42;
  v73 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v72 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_117();
  sub_22378AFF8();
  if (v46)
  {
    v47 = OUTLINED_FUNCTION_117();
    if (sub_22378BBC8(v47))
    {
      OUTLINED_FUNCTION_117();
      sub_22378BE44();
      OUTLINED_FUNCTION_294(OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
      if ((v48 & 1) != 0 || (OUTLINED_FUNCTION_138(), v49))
      {
        v50 = *(v22 + 16);
        v51 = v72;
        v52 = *(v72 + 16);
        v53 = OUTLINED_FUNCTION_292();
        v54 = v73;
        v55(v53);
        v56 = (*(v51 + 80) + 24) & ~*(v51 + 80);
        OUTLINED_FUNCTION_329();
        v57 = OUTLINED_FUNCTION_221();
        *(v57 + 2) = v22;
        (*(v51 + 32))(&v57[v56], v45, v54);
        v58 = &v57[a22];
        *v58 = v28;
        *(v58 + 1) = v26;
        v83[4] = sub_2237A93F0;
        v83[5] = v57;
        OUTLINED_FUNCTION_7_5();
        v83[1] = 1107296256;
        OUTLINED_FUNCTION_6_6();
        v83[2] = v59;
        v83[3] = &block_descriptor_401;
        _Block_copy(v83);
        OUTLINED_FUNCTION_249();

        sub_2237B5CEC();
        v82 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_5_5();
        sub_223766F90(v60, v61);
        v62 = OUTLINED_FUNCTION_193();
        __swift_instantiateConcreteTypeFromMangledNameV2(v62, v63);
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_291();
        sub_223766FD8(v64, v65, v66);
        OUTLINED_FUNCTION_229();
        OUTLINED_FUNCTION_322();
        MEMORY[0x223DEACD0]();
        _Block_release(v57);
        v67 = *(v78 + 8);
        v68 = OUTLINED_FUNCTION_119();
        v69(v68);
        v70 = OUTLINED_FUNCTION_326();
        v71(v70);
      }
    }
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_22379C4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v34 = OUTLINED_FUNCTION_177(v26, v27, v28, v29, v30, v31, v32, v33);
  v35 = OUTLINED_FUNCTION_0_2(v34);
  v114 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v39);
  v113 = sub_2237B5D0C();
  v40 = OUTLINED_FUNCTION_0_2(v113);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v43);
  v44 = sub_2237B412C();
  v45 = OUTLINED_FUNCTION_0_2(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v48 = OUTLINED_FUNCTION_220();
  v49 = OUTLINED_FUNCTION_0_2(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_226();
  v54 = *MEMORY[0x277D5D0B0];
  OUTLINED_FUNCTION_355();
  v55(v21);
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_219();
  v57 = v56;
  v58 = *(v51 + 8);
  v59 = OUTLINED_FUNCTION_142();
  v60(v59);
  if (v57)
  {
    sub_2237B411C();
    v61 = sub_2237B40FC();
    v62 = OUTLINED_FUNCTION_235(v61);
    v63(v62);
    v64 = v22;
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v65 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v65, qword_28131B550);

    v66 = sub_2237B5C8C();
    sub_2237B5FEC();

    if (OUTLINED_FUNCTION_365())
    {
      OUTLINED_FUNCTION_25_0();
      v119[0] = OUTLINED_FUNCTION_137();
      *v48 = 136315394;
      v67 = v118;
      v68 = OUTLINED_FUNCTION_186();
      v71 = sub_223763694(v68, v69, v70);
      OUTLINED_FUNCTION_56_0(v71);
      v72 = OUTLINED_FUNCTION_238();
      *(v48 + 14) = sub_223763694(v72, v73, v74);
      OUTLINED_FUNCTION_331();
      OUTLINED_FUNCTION_281(v75, v76, v77, v78);
      OUTLINED_FUNCTION_311();
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_3_0();

      v79 = v20;
    }

    else
    {

      v79 = v20;
      v67 = v118;
    }

    v80 = OUTLINED_FUNCTION_55_0();
    if (sub_22378C294(v80, v81, v82, v83, v84, v115, v116, v85, v67, v23))
    {
      v86 = OUTLINED_FUNCTION_55_0();
      sub_22378CAE0(v86, v87, v88, v89, v90, v67, v23);

      OUTLINED_FUNCTION_294(OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
      if ((v91 & 1) != 0 || (OUTLINED_FUNCTION_138(), v92))
      {
        v93 = OUTLINED_FUNCTION_242();
        v94(v93);
        OUTLINED_FUNCTION_161();
        v95 = OUTLINED_FUNCTION_309();
        v96 = OUTLINED_FUNCTION_192(v95);
        v97 = OUTLINED_FUNCTION_328(v96);
        v98(v97);
        v99 = &v20[v79];
        *v99 = v117;
        *(v99 + 1) = v64;
        v119[4] = sub_2237A93F0;
        v119[5] = v79;
        OUTLINED_FUNCTION_7_5();
        v119[1] = 1107296256;
        OUTLINED_FUNCTION_6_6();
        v119[2] = v100;
        v119[3] = &block_descriptor_394;
        _Block_copy(v119);
        OUTLINED_FUNCTION_358();

        sub_2237B5CEC();
        OUTLINED_FUNCTION_5_5();
        sub_223766F90(v101, v102);
        v103 = OUTLINED_FUNCTION_19_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(v103, v104);
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_209();
        sub_223766FD8(v105, v106, v107);
        OUTLINED_FUNCTION_178();
        OUTLINED_FUNCTION_173();
        _Block_release(v79);
        v108 = *(v114 + 8);
        v109 = OUTLINED_FUNCTION_184();
        v110(v109);
        OUTLINED_FUNCTION_96(&a17);
        v111(v112, v113);
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_22379C978()
{
  OUTLINED_FUNCTION_16_3();
  v65 = v1;
  v66 = v2;
  v4 = v3;
  v6 = v5;
  v64 = v7;
  v9 = v8;
  v10 = sub_2237B5CCC();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v62 = v12;
  v63 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_4();
  v60 = v15;
  OUTLINED_FUNCTION_12();
  v61 = sub_2237B5D0C();
  v16 = OUTLINED_FUNCTION_0_2(v61);
  v59 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_4();
  v58 = v20;
  OUTLINED_FUNCTION_12();
  v21 = sub_2237B412C();
  v22 = OUTLINED_FUNCTION_0_2(v21);
  v56 = v23;
  v57 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_118();
  sub_22378AFF8();
  if (v26)
  {
    v27 = OUTLINED_FUNCTION_118();
    if (sub_22378C234(v27))
    {
      v28 = OUTLINED_FUNCTION_118();
      sub_22378CA74(v28, v29, v30, v31, v32);
      OUTLINED_FUNCTION_294(OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
      if ((v33 & 1) != 0 || (OUTLINED_FUNCTION_138(), v34))
      {
        v66 = *(v0 + 16);
        v36 = v56;
        v35 = v57;
        v37 = *(v56 + 16);
        OUTLINED_FUNCTION_216();
        v38();
        v39 = (*(v36 + 80) + 24) & ~*(v36 + 80);
        OUTLINED_FUNCTION_329();
        v40 = OUTLINED_FUNCTION_221();
        v41 = OUTLINED_FUNCTION_192(v40);
        (*(v36 + 32))(v41 + v39, &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
        v42 = (v9 + v25);
        *v42 = v6;
        v42[1] = v4;
        v68[4] = sub_2237A93F0;
        v68[5] = v9;
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 1107296256;
        OUTLINED_FUNCTION_6_6();
        v68[2] = v43;
        v68[3] = &block_descriptor_387;
        _Block_copy(v68);
        OUTLINED_FUNCTION_249();

        sub_2237B5CEC();
        v67 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_5_5();
        sub_223766F90(v44, v45);
        v46 = OUTLINED_FUNCTION_193();
        __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_291();
        sub_223766FD8(v48, v49, v50);
        OUTLINED_FUNCTION_229();
        OUTLINED_FUNCTION_322();
        MEMORY[0x223DEACD0]();
        _Block_release(&v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
        v51 = *(v62 + 8);
        v52 = OUTLINED_FUNCTION_119();
        v53(v52);
        v54 = OUTLINED_FUNCTION_326();
        v55(v54);
      }
    }
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_22379CCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v34 = OUTLINED_FUNCTION_177(v26, v27, v28, v29, v30, v31, v32, v33);
  v35 = OUTLINED_FUNCTION_0_2(v34);
  v114 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v39);
  v113 = sub_2237B5D0C();
  v40 = OUTLINED_FUNCTION_0_2(v113);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v43);
  v44 = sub_2237B412C();
  v45 = OUTLINED_FUNCTION_0_2(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v48 = OUTLINED_FUNCTION_220();
  v49 = OUTLINED_FUNCTION_0_2(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_226();
  v54 = *MEMORY[0x277D5D0B0];
  OUTLINED_FUNCTION_355();
  v55(v21);
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_219();
  v57 = v56;
  v58 = *(v51 + 8);
  v59 = OUTLINED_FUNCTION_142();
  v60(v59);
  if (v57)
  {
    sub_2237B411C();
    v61 = sub_2237B40FC();
    v62 = OUTLINED_FUNCTION_235(v61);
    v63(v62);
    v64 = v22;
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v65 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v65, qword_28131B550);

    v66 = sub_2237B5C8C();
    sub_2237B5FEC();

    if (OUTLINED_FUNCTION_365())
    {
      OUTLINED_FUNCTION_25_0();
      v119[0] = OUTLINED_FUNCTION_137();
      *v48 = 136315394;
      v67 = v118;
      v68 = OUTLINED_FUNCTION_186();
      v71 = sub_223763694(v68, v69, v70);
      OUTLINED_FUNCTION_56_0(v71);
      v72 = OUTLINED_FUNCTION_238();
      *(v48 + 14) = sub_223763694(v72, v73, v74);
      OUTLINED_FUNCTION_331();
      OUTLINED_FUNCTION_281(v75, v76, v77, v78);
      OUTLINED_FUNCTION_311();
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_3_0();

      v79 = v20;
    }

    else
    {

      v79 = v20;
      v67 = v118;
    }

    v80 = OUTLINED_FUNCTION_55_0();
    if (sub_22378C5C8(v80, v81, v82, v83, v84, v115, v116, v85, v67, v23))
    {
      v86 = OUTLINED_FUNCTION_55_0();
      sub_22378CAE0(v86, v87, v88, v89, v90, v67, v23);

      OUTLINED_FUNCTION_294(OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
      if ((v91 & 1) != 0 || (OUTLINED_FUNCTION_138(), v92))
      {
        v93 = OUTLINED_FUNCTION_242();
        v94(v93);
        OUTLINED_FUNCTION_161();
        v95 = OUTLINED_FUNCTION_309();
        v96 = OUTLINED_FUNCTION_192(v95);
        v97 = OUTLINED_FUNCTION_328(v96);
        v98(v97);
        v99 = &v20[v79];
        *v99 = v117;
        *(v99 + 1) = v64;
        v119[4] = sub_2237A93F0;
        v119[5] = v79;
        OUTLINED_FUNCTION_7_5();
        v119[1] = 1107296256;
        OUTLINED_FUNCTION_6_6();
        v119[2] = v100;
        v119[3] = &block_descriptor_380;
        _Block_copy(v119);
        OUTLINED_FUNCTION_358();

        sub_2237B5CEC();
        OUTLINED_FUNCTION_5_5();
        sub_223766F90(v101, v102);
        v103 = OUTLINED_FUNCTION_19_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(v103, v104);
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_209();
        sub_223766FD8(v105, v106, v107);
        OUTLINED_FUNCTION_178();
        OUTLINED_FUNCTION_173();
        _Block_release(v79);
        v108 = *(v114 + 8);
        v109 = OUTLINED_FUNCTION_184();
        v110(v109);
        OUTLINED_FUNCTION_96(&a17);
        v111(v112, v113);
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_22379D19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_16_3();
  v165 = v23;
  v148 = v27;
  v150 = v26;
  v154 = v28;
  v146 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = sub_2237B56DC();
  v39 = OUTLINED_FUNCTION_0_2(v38);
  v160 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_17_4();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_4_6();
  v158 = v47;
  v48 = OUTLINED_FUNCTION_12();
  v156 = type metadata accessor for RequestDispatcher.SessionContext(v48);
  v49 = OUTLINED_FUNCTION_4(v156);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_3_4();
  v144 = v52;
  OUTLINED_FUNCTION_12();
  v53 = sub_2237B412C();
  v54 = OUTLINED_FUNCTION_0_2(v53);
  v162 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3_4();
  v164 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097A40, &unk_2237B8850);
  OUTLINED_FUNCTION_1(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_232();
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v63 = sub_2237B5C9C();
  v142 = __swift_project_value_buffer(v63, qword_28131B550);
  v64 = sub_2237B5C8C();
  v65 = sub_2237B5FEC();
  v163 = v53;
  v152 = v25;
  if (OUTLINED_FUNCTION_5(v65))
  {
    v66 = OUTLINED_FUNCTION_20();
    v67 = v38;
    v68 = v37;
    v69 = v35;
    v70 = v33;
    v71 = v31;
    v72 = OUTLINED_FUNCTION_19_0();
    v166 = v72;
    *v66 = 136315138;
    *(v66 + 4) = sub_223763694(0xD00000000000008ELL, 0x80000002237BAFF0, &v166);
    OUTLINED_FUNCTION_317(&dword_22375F000, v73, v142, "%s");
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    v31 = v71;
    v33 = v70;
    v35 = v69;
    v37 = v68;
    v38 = v67;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_71();
  }

  OUTLINED_FUNCTION_234();
  sub_2237A5FA4();
  if (v74)
  {
    v80 = v74;
    sub_22376F9F8(v74, v37, v35, v75, v76, v77, v78, v79, v37, v141, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160);
    v81 = *(v23 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    v82 = v31;
    v83 = OBJC_IVAR____TtC14SiriMessageBus7Session_userSessionState;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    v84 = sub_2237B551C();
    OUTLINED_FUNCTION_4(v84);
    (*(v85 + 16))(v24, v80 + v83, v84);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v84);
    OUTLINED_FUNCTION_216();
    sub_223770A64(v89, v90, v91, 0);
    sub_2237710FC(v24, &unk_27D097A40, &unk_2237B8850);
    (*(v162 + 16))(v164, v80 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v163);
    v92 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    sub_22376F91C(v165 + v92, v159, &unk_27D097C80, &unk_2237B9260);
    OUTLINED_FUNCTION_312(v159, 1, v157);
    if (v93)
    {
      sub_2237710FC(v159, &unk_27D097C80, &unk_2237B9260);

      v94 = sub_2237B5C8C();
      sub_2237B5FFC();

      if (OUTLINED_FUNCTION_28())
      {
        v95 = OUTLINED_FUNCTION_25_0();
        OUTLINED_FUNCTION_198();
        *v95 = 136315394;
        v96 = OUTLINED_FUNCTION_57_0();
        v99 = sub_223763694(v96, v97, v98);
        OUTLINED_FUNCTION_271(v99);
        v100 = OUTLINED_FUNCTION_143();
        *(v95 + 14) = sub_223763694(v100, v82, v101);
        OUTLINED_FUNCTION_181();
        _os_log_impl(v102, v103, v104, v105, v95, 0x16u);
        OUTLINED_FUNCTION_149();
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_10();
      }

      else
      {
      }

      (*(v162 + 8))(v164, v163);
    }

    else
    {
      v106 = v145;
      sub_22376F978(v159, v145);
      v107 = *(v161 + 16);
      v108 = v153;
      v109 = OUTLINED_FUNCTION_292();
      v110(v109);
      v111 = *(v145 + *(v157 + 24));
      if (a21)
      {
        if (*(v145 + *(v157 + 24)))
        {
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_37();
          sub_22379C4B0(v112, v113, v114, v115, v116, v117, v118, v119, v136, v137, v138, v139, v140, v33, v143, v145, v147, v149, v151, v153);
        }

        else
        {
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_37();
          sub_22379C168(v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, a22, a23, v140, v33, v143, v145, v147, v149, v151, v153, v155, v157);
        }
      }

      else if (*(v145 + *(v157 + 24)))
      {
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_37();
        sub_22379CCD4(v120, v121, v122, v123, v124, v125, v126, v127, v138, v139, v140, v33, v143, v145, v147, v149, v151, v153, v155, v157);
      }

      else
      {
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_37();
        sub_22379C978();
      }

      (*(v161 + 8))(v108, v38);
      sub_223771D44(v106);
      (*(v162 + 8))(v164, v163);
    }
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_22379D7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v25;
  a20 = v26;
  OUTLINED_FUNCTION_267(v27, v28, v29, v30, v31, v32, v33, v34);
  OUTLINED_FUNCTION_68(v35, v36, v37, v38, &a14);
  OUTLINED_FUNCTION_214(v39, &v71);
  OUTLINED_FUNCTION_205(a21);
  ObjectType = swift_getObjectType();
  v41 = OUTLINED_FUNCTION_316(ObjectType, v72);
  v42 = OUTLINED_FUNCTION_0_2(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_236(&a16);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_27_1();
  v49 = sub_223761B80();
  OUTLINED_FUNCTION_64();
  sub_2237B575C();
  OUTLINED_FUNCTION_265();
  OUTLINED_FUNCTION_206();
  v69[4] = v51;
  v69[5] = v50;
  OUTLINED_FUNCTION_190(&a11);
  OUTLINED_FUNCTION_87(&a14);
  OUTLINED_FUNCTION_183();
  v69[10] = v53;
  v69[11] = v52;
  OUTLINED_FUNCTION_338();
  v69[12] = v55;
  v69[13] = v54;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_129(*(v23 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v56 = OUTLINED_FUNCTION_16_6();
  v49(v56);
  v57 = OUTLINED_FUNCTION_61(&a15);
  v49(v57);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_9_7();
  v58 = OUTLINED_FUNCTION_221();
  v59 = OUTLINED_FUNCTION_30_1(v58);
  v22(v59);
  v60 = OUTLINED_FUNCTION_80();
  v22(v60);
  OUTLINED_FUNCTION_76((v23 + v44));
  OUTLINED_FUNCTION_78(v61);
  *v62 = sub_2237A7E7C;
  v62[1] = v69;
  OUTLINED_FUNCTION_5_3();
  v63 = swift_allocObject();
  *(v63 + 16) = sub_223761F8C;
  *(v63 + 24) = v23;
  v71 = sub_223761F78;
  v72[0] = v63;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v70[2] = v64;
  v70[3] = &block_descriptor_212;
  _Block_copy(v70);
  OUTLINED_FUNCTION_125();

  v65 = OUTLINED_FUNCTION_57_0();
  dispatch_sync(v65, v66);
  _Block_release(v24);
  v67 = OUTLINED_FUNCTION_86(&a13);
  (type metadata for Logger.Kind)(v67, v21);
  v68 = OUTLINED_FUNCTION_143();
  (type metadata for Logger.Kind)(v68, v21);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_22379DB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = a5;
  v24 = a8;
  v21 = a9;
  v22 = a4;
  v14 = sub_2237B544C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(v18);
  LOBYTE(v20) = *(a1 + OBJC_IVAR___SRDRequestDispatcherInternal_isMUXEnabled);
  sub_22379DDA4(a2, a3, v22, v23, v18, v24, v21, a10, a11, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  return (*(v15 + 8))(v18, v14);
}

void sub_22379DDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, char a22)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v26 = v22;
  v144 = v27;
  v145 = v28;
  v143 = v29;
  v147 = v30;
  v151 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = sub_2237B5CCC();
  v39 = OUTLINED_FUNCTION_0_2(v38);
  v141 = v40;
  v142 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v43);
  v44 = sub_2237B5D0C();
  v45 = OUTLINED_FUNCTION_8_6(v44, &a18);
  v139 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v49);
  v50 = sub_2237B412C();
  v51 = OUTLINED_FUNCTION_0_2(v50);
  v150 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62(v55);
  OUTLINED_FUNCTION_204(&a13);
  MEMORY[0x28223BE20](v56);
  v58 = &v136 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_226();
  v63 = type metadata accessor for RequestDispatcher.SessionContext(0);
  v64 = OUTLINED_FUNCTION_4(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_3_4();
  v149 = v67;
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v68 = sub_2237B5C9C();
  v146 = __swift_project_value_buffer(v68, qword_28131B550);
  v69 = sub_2237B5C8C();
  v70 = sub_2237B5FEC();
  if (OUTLINED_FUNCTION_261(v70))
  {
    OUTLINED_FUNCTION_20();
    v148 = v33;
    v71 = OUTLINED_FUNCTION_32();
    v137 = v63;
    v72 = v35;
    v73 = v58;
    v74 = v26;
    v75 = v50;
    v76 = v37;
    v77 = v71;
    v153[0] = v71;
    *v33 = 136315138;
    *(v33 + 4) = sub_223763694(0xD000000000000087, 0x80000002237BAF60, v153);
    OUTLINED_FUNCTION_217(&dword_22375F000, v69, v70, "%s");
    __swift_destroy_boxed_opaque_existential_0Tm(v77);
    v37 = v76;
    v50 = v75;
    v26 = v74;
    v58 = v73;
    v35 = v72;
    v63 = v137;
    OUTLINED_FUNCTION_8();
    v33 = v148;
    OUTLINED_FUNCTION_8();
  }

  sub_2237A5FA4();
  if (!v78)
  {
    goto LABEL_25;
  }

  v79 = v78;
  v80 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
  OUTLINED_FUNCTION_14_3();
  swift_beginAccess();
  sub_22376F91C(v26 + v80, v23, &unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_312(v23, 1, v63);
  if (v81)
  {
    sub_2237710FC(v23, &unk_27D097C80, &unk_2237B9260);

    v82 = v146;
    v83 = sub_2237B5C8C();
    sub_2237B5FFC();
    OUTLINED_FUNCTION_361();

    if (OUTLINED_FUNCTION_218())
    {
      v84 = v35;
      v85 = OUTLINED_FUNCTION_25_0();
      v153[0] = OUTLINED_FUNCTION_198();
      *v85 = 136315394;
      v86 = sub_223763694(v37, v84, v153);
      OUTLINED_FUNCTION_271(v86);
      *(v85 + 14) = sub_223763694(v33, v151, v153);
      _os_log_impl(&dword_22375F000, v83, v82, "sessionContext is not set for assistantId: %s during request: %s", v85, 0x16u);
      OUTLINED_FUNCTION_98();
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_25;
  }

  v87 = a21;
  v88 = v23;
  v89 = v149;
  sub_22376F978(v88, v149);
  v90 = *(v150 + 16);
  v146 = v150 + 16;
  v137 = v90;
  v90(v58, (v79 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId), v50);
  v91 = objc_allocWithZone(sub_2237B553C());
  v92 = v87;
  v93 = sub_2237B552C();
  OUTLINED_FUNCTION_283();
  v148 = v33;
  sub_22378CE78();
  v95 = v94;

  if ((v95 & 1) == 0)
  {
    goto LABEL_15;
  }

  v147 = v79;
  if (a22)
  {
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_200();
    if ((sub_22378D4C4() & 1) == 0)
    {
LABEL_23:

      v133 = *(v150 + 8);
      v134 = OUTLINED_FUNCTION_119();
      v135(v134);
      v104 = v149;
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_322();
    v100 = sub_22378DCBC(v96, v97, v98, v99, v151);
    goto LABEL_18;
  }

  v89 = v149;
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_200();
  sub_22378D880();
  if ((v105 & 1) == 0)
  {
LABEL_15:

    v101 = *(v150 + 8);
    v102 = OUTLINED_FUNCTION_119();
    v103(v102);
    v104 = v89;
LABEL_24:
    sub_223771D44(v104);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_322();
  v100 = sub_22378CA74(v106, v107, v108, v109, v151);
LABEL_18:
  if (!v100)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_294(OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
  if ((v110 & 1) == 0)
  {
    OUTLINED_FUNCTION_138();
    if (!v81)
    {
      goto LABEL_23;
    }
  }

  v147 = *(v95 + 16);
  v111 = OUTLINED_FUNCTION_155(&a14);
  v137(v111, v58, v50);
  v112 = v150;
  OUTLINED_FUNCTION_228();
  v113 = v50;
  v136 = v50;
  v116 = (v115 & ~v114);
  OUTLINED_FUNCTION_85();
  v117 = OUTLINED_FUNCTION_309();
  v118 = OUTLINED_FUNCTION_89(v117);
  v119(&v116[v118], v93, v113);
  v120 = (v26 + v35);
  v121 = v151;
  *v120 = v148;
  v120[1] = v121;
  v153[4] = sub_2237A93F0;
  v153[5] = v26;
  OUTLINED_FUNCTION_44_0();
  v153[1] = 1107296256;
  OUTLINED_FUNCTION_6_6();
  v153[2] = v122;
  v153[3] = &block_descriptor_373;
  _Block_copy(v153);
  OUTLINED_FUNCTION_370();

  v123 = v138;
  sub_2237B5CEC();
  v152 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_5();
  sub_223766F90(v124, v125);
  v126 = OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v126, v127);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_209();
  sub_223766FD8(v128, v129, v130);
  OUTLINED_FUNCTION_296(&a17);
  v131 = v142;
  OUTLINED_FUNCTION_327();
  sub_2237B60FC();
  MEMORY[0x223DEACD0](0, v123, v121, v116);
  _Block_release(v116);

  (*(v141 + 8))(v121, v131);
  OUTLINED_FUNCTION_96(&a16);
  v132(v123, v140);
  (*(v112 + 8))(v58, v136);
  sub_223771D44(v149);

LABEL_25:
  OUTLINED_FUNCTION_14_2();
}

void sub_22379E59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v26;
  a20 = v27;
  OUTLINED_FUNCTION_208(v28, v29, v30, v31, v32, v33, v34, v35);
  v64 = v36;
  OUTLINED_FUNCTION_214(v37, &v80);
  OUTLINED_FUNCTION_205(a22);
  v65 = a21;
  ObjectType = swift_getObjectType();
  v39 = OUTLINED_FUNCTION_316(ObjectType, v81);
  v40 = OUTLINED_FUNCTION_0_2(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_236(&a14);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_27_1();
  v47 = sub_223761B80();
  OUTLINED_FUNCTION_64();
  sub_2237B575C();
  v69 = v24;
  v70 = v22;
  v71 = v62;
  v72 = v64;
  OUTLINED_FUNCTION_334();
  v73 = v49;
  v74 = v48;
  OUTLINED_FUNCTION_190(&a12);
  OUTLINED_FUNCTION_207();
  v75 = v50;
  v76 = v65;
  v77 = v66;
  v78 = v63;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_134(*(v24 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v51 = OUTLINED_FUNCTION_16_6();
  v47(v51);
  v52 = OUTLINED_FUNCTION_61(&a13);
  v47(v52);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_9_7();
  v53 = OUTLINED_FUNCTION_221();
  v54 = OUTLINED_FUNCTION_30_1(v53);
  v23(v54);
  v55 = OUTLINED_FUNCTION_80();
  v23(v55);
  OUTLINED_FUNCTION_76((v24 + v42));
  OUTLINED_FUNCTION_78(v56);
  *v57 = sub_2237A7EB0;
  v57[1] = &v68;
  OUTLINED_FUNCTION_5_3();
  v58 = swift_allocObject();
  *(v58 + 16) = sub_223761F8C;
  *(v58 + 24) = v24;
  v81[2] = sub_223761F78;
  v81[3] = v58;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v81[0] = v59;
  v81[1] = &block_descriptor_223;
  _Block_copy(&v79);
  OUTLINED_FUNCTION_125();

  dispatch_sync(v67, v25);
  _Block_release(v25);
  OUTLINED_FUNCTION_133(&a11);
  v60 = OUTLINED_FUNCTION_146(&a14);
  (type metadata for Logger.Kind)(v60);
  v61 = OUTLINED_FUNCTION_146(&a16);
  (type metadata for Logger.Kind)(v61);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (0x237BA700)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_22379E904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v24 = a1;
  v25 = a8;
  v22 = a4;
  v23 = a5;
  v21 = a9;
  v14 = sub_2237B544C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(v18);
  sub_22379EB68(a2, a3, v22, v23, v18, v25, v21, a10, a11, a12, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  return (*(v15 + 8))(v18, v14);
}

void sub_22379EB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v25;
  a20 = v26;
  v27 = v22;
  OUTLINED_FUNCTION_104(v28, v29, v30, &a18);
  v229 = v31;
  v240 = v32;
  v238 = v33;
  v35 = v34;
  v37 = v36;
  OUTLINED_FUNCTION_134(a22);
  OUTLINED_FUNCTION_129(a21);
  v38 = sub_2237B5CCC();
  v39 = OUTLINED_FUNCTION_8_6(v38, v254);
  v220 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v43);
  v44 = sub_2237B5D0C();
  v45 = OUTLINED_FUNCTION_8_6(v44, &v252);
  v217 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v49);
  v50 = sub_2237B549C();
  v51 = OUTLINED_FUNCTION_8_6(v50, &v256);
  v224 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_62(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C78, &qword_2237B9258);
  OUTLINED_FUNCTION_1(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_25_2(v60);
  v61 = sub_2237B548C();
  v62 = OUTLINED_FUNCTION_8_6(v61, &a14);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_62(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_4_6();
  v235 = v70;
  v71 = OUTLINED_FUNCTION_12();
  v233 = type metadata accessor for RequestDispatcher.SessionContext(v71);
  v72 = OUTLINED_FUNCTION_4(v233);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_3_4();
  v232 = v75;
  OUTLINED_FUNCTION_12();
  v239 = sub_2237B412C();
  v76 = OUTLINED_FUNCTION_0_2(v239);
  v236 = v77;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62(v80);
  OUTLINED_FUNCTION_204(&v248);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_20_0();
  v237 = v82;
  OUTLINED_FUNCTION_12();
  v83 = sub_2237B563C();
  v84 = OUTLINED_FUNCTION_0_2(v83);
  v86 = v85;
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_272();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_35();
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v90 = sub_2237B5C9C();
  v241 = __swift_project_value_buffer(v90, qword_28131B550);
  v91 = sub_2237B5C8C();
  v92 = sub_2237B5FEC();
  v242 = v37;
  v244 = v27;
  if (OUTLINED_FUNCTION_261(v92))
  {
    v93 = v35;
    v94 = OUTLINED_FUNCTION_20();
    v95 = OUTLINED_FUNCTION_19_0();
    v249 = v95;
    *v94 = 136315138;
    *(v94 + 4) = sub_223763694(0xD000000000000072, 0x80000002237BAEE0, &v249);
    _os_log_impl(&dword_22375F000, v91, v92, "%s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v95);
    OUTLINED_FUNCTION_116();
    v35 = v93;
    v27 = v244;
    OUTLINED_FUNCTION_8();
  }

  v96 = *(v27 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  sub_22376F45C();
  if (v97)
  {
    v98 = v97;
    v214 = v35;
    v99 = *(v97 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession);
    OUTLINED_FUNCTION_141();
    v100(v24);
    v101 = *MEMORY[0x277D5D258];
    v102 = *(v86 + 104);
    v102(v23, v101, v83);
    OUTLINED_FUNCTION_184();
    v103 = sub_223766744();
    v104 = *(v86 + 8);
    v104(v23, v83);
    v104(v24, v83);
    if ((v103 & 1) == 0)
    {
      v120 = sub_2237B5C8C();
      v121 = sub_2237B5FFC();
      if (os_log_type_enabled(v120, v121))
      {
        v246 = v120;
        v122 = OUTLINED_FUNCTION_20();
        v243 = OUTLINED_FUNCTION_19_0();
        v249 = v243;
        *v122 = 136315138;
        v102(v24, v101, v83);
        sub_2237B562C();
        OUTLINED_FUNCTION_357();
        v104(v24, v83);
        v123 = OUTLINED_FUNCTION_256();
        sub_223763694(v123, v124, v125);
        OUTLINED_FUNCTION_148();

        *(v122 + 4) = v24;
        _os_log_impl(&dword_22375F000, v246, v121, "Current session is not of type %s, cannot start correction speech request", v122, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v243);
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_116();
      }

      else
      {
      }

      goto LABEL_38;
    }

    v105 = v236;
    v106 = *(v236 + 16);
    v107 = v239;
    (v106)(v237, v98 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v239);
    v108 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    sub_22376F91C(v244 + v108, v235, &unk_27D097C80, &unk_2237B9260);
    OUTLINED_FUNCTION_312(v235, 1, v233);
    if (v109)
    {
      sub_2237710FC(v235, &unk_27D097C80, &unk_2237B9260);

      v110 = sub_2237B5C8C();
      sub_2237B5FFC();

      if (OUTLINED_FUNCTION_218())
      {
        OUTLINED_FUNCTION_25_0();
        v111 = OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_251(v111);
        OUTLINED_FUNCTION_255(4.8151e-34);
        v113 = sub_223763694(v242, v214, v112);
        OUTLINED_FUNCTION_56_0(v113);
        *(v239 + 14) = sub_223763694(v238, v240, &v249);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v114, v115, v116, v117, v118, 0x16u);
        OUTLINED_FUNCTION_149();
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_3_0();

        (*(v236 + 8))(v237, v239);
        goto LABEL_38;
      }
    }

    else
    {
      v128 = sub_22376F978(v235, v232);
      if (*(v232 + *(v233 + 24)) == 1)
      {
        MEMORY[0x28223BE20](v128);
        OUTLINED_FUNCTION_279();
        OUTLINED_FUNCTION_210();
        *(v129 - 16) = v131;
        *(v129 - 8) = v130;
        OUTLINED_FUNCTION_287(&a11);
        sub_2237B546C();
        OUTLINED_FUNCTION_312(v83, 1, v228);
        if (!v109)
        {
          v234 = v106;
          OUTLINED_FUNCTION_296(&a12);
          (*(v154 + 32))(v227, v83);
          v155 = objc_allocWithZone(sub_2237B553C());
          OUTLINED_FUNCTION_207();
          v157 = v156;
          v158 = sub_2237B552C();
          v159 = OUTLINED_FUNCTION_350();
          v160(v159);
          v161 = *MEMORY[0x277D5D0B8];
          OUTLINED_FUNCTION_287(&v255);
          (*(v162 + 104))();
          v163 = v158;
          sub_22378B3F0();
          v165 = v164;

          v166 = *(v83 + 8);
          v167 = OUTLINED_FUNCTION_350();
          v168(v167);
          if (v165)
          {
            sub_2237B411C();
            v169 = sub_2237B40FC();
            v171 = v170;
            OUTLINED_FUNCTION_129(*(v236 + 8));
            v172();

            v173 = sub_2237B5C8C();
            sub_2237B5FEC();

            if (OUTLINED_FUNCTION_28())
            {
              v174 = OUTLINED_FUNCTION_25_0();
              v249 = OUTLINED_FUNCTION_198();
              *v174 = 136315394;
              v175 = OUTLINED_FUNCTION_342();
              *(v174 + 4) = sub_223763694(v175, v176, v177);
              *(v174 + 12) = 2080;
              v178 = v238;
              *(v174 + 14) = sub_223763694(v238, v240, &v249);
              OUTLINED_FUNCTION_181();
              _os_log_impl(v179, v180, v181, v182, v174, 0x16u);
              OUTLINED_FUNCTION_311();
              OUTLINED_FUNCTION_116();
              OUTLINED_FUNCTION_13_1();
            }

            else
            {

              v178 = v238;
            }

            v139 = v244;
            v148 = v214;
            if (sub_22378C5C8(v242, v214, v237, v178, v240, v232, v225, v226, v169, v171))
            {
              v185 = v178;
              v140 = v237;
              sub_22378CAE0(v242, v214, v237, v185, v240, v169, v171);
              OUTLINED_FUNCTION_282();
              v186 = OUTLINED_FUNCTION_284();
              v187(v186);
              v107 = v239;
              v105 = v236;
              if (v214)
              {
LABEL_42:
                v188 = *(v139 + OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
                if ((*(v188 + 32) & 1) != 0 || (OUTLINED_FUNCTION_138(), v109))
                {
                  v247 = *(v188 + 16);
                  OUTLINED_FUNCTION_216();
                  v234();
                  v189 = v105;
                  v190 = (*(v105 + 80) + 24) & ~*(v105 + 80);
                  OUTLINED_FUNCTION_85();
                  v191 = OUTLINED_FUNCTION_309();
                  v192 = OUTLINED_FUNCTION_354(v191);
                  v193(v192 + v190, v222, v107);
                  v194 = (v148 + v140);
                  *v194 = v238;
                  v194[1] = v240;
                  v253 = sub_22376D08C;
                  v254[0] = v148;
                  OUTLINED_FUNCTION_44_0();
                  v250 = 1107296256;
                  OUTLINED_FUNCTION_6_6();
                  v251 = v195;
                  v252 = &block_descriptor_366;
                  v196 = _Block_copy(&v249);

                  sub_2237B5CEC();
                  v248 = MEMORY[0x277D84F90];
                  OUTLINED_FUNCTION_5_5();
                  sub_223766F90(v197, v198);
                  v199 = OUTLINED_FUNCTION_19_2();
                  __swift_instantiateConcreteTypeFromMangledNameV2(v199, v200);
                  OUTLINED_FUNCTION_4_8();
                  OUTLINED_FUNCTION_209();
                  sub_223766FD8(v201, v202, v203);
                  OUTLINED_FUNCTION_263(&v251);
                  OUTLINED_FUNCTION_197();
                  OUTLINED_FUNCTION_295();
                  MEMORY[0x223DEACD0]();
                  _Block_release(v196);

                  OUTLINED_FUNCTION_96(&v253);
                  v204 = OUTLINED_FUNCTION_238();
                  v205(v204);
                  OUTLINED_FUNCTION_96(&v250);
                  v206(v216, v219);
                  sub_223771D44(v232);
                  v207 = *(v189 + 8);
                  v208 = OUTLINED_FUNCTION_100();
                  v209(v208);

                  goto LABEL_38;
                }

                sub_223771D44(v232);
                v132 = *(v105 + 8);
                v133 = v237;
                goto LABEL_25;
              }

              sub_223771D44(v232);
            }

            else
            {

              v210 = OUTLINED_FUNCTION_284();
              v211(v210);
              sub_223771D44(v232);
            }

            OUTLINED_FUNCTION_290();
            OUTLINED_FUNCTION_210();
            v212();
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_96(&a12);
          v184();
          v183 = v232;
LABEL_36:
          sub_223771D44(v183);
          v132 = *(v236 + 8);
          v133 = v237;
          v134 = v239;
          goto LABEL_37;
        }

        sub_223771D44(v232);
        (*(v236 + 8))(v237, v239);
        sub_2237710FC(v83, &qword_27D097C78, &qword_2237B9258);
LABEL_38:
        OUTLINED_FUNCTION_14_2();
        return;
      }

      v234 = v106;
      v135 = objc_allocWithZone(sub_2237B553C());
      OUTLINED_FUNCTION_207();
      v137 = v136;
      v138 = sub_2237B552C();
      v139 = v244;
      OUTLINED_FUNCTION_216();
      v140 = v238;
      OUTLINED_FUNCTION_327();
      sub_22378E068(v141, v142, v143, v144, v145, v229, v231, v230, v138, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224);
      v147 = v146;

      if ((v147 & 1) == 0 || (OUTLINED_FUNCTION_216(), OUTLINED_FUNCTION_327(), v148 = v232, (sub_22378E8C0() & 1) == 0))
      {

        v183 = v232;
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_216();
      OUTLINED_FUNCTION_327();
      v107 = v239;
      if (sub_22378CA74(v149, v150, v151, v152, v153))
      {
        goto LABEL_42;
      }

      sub_223771D44(v232);
    }

    v132 = *(v236 + 8);
    v133 = v237;
LABEL_25:
    v134 = v107;
LABEL_37:
    v132(v133, v134);
    goto LABEL_38;
  }

  v245 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_282();

  if (os_log_type_enabled(v245, v27))
  {
    OUTLINED_FUNCTION_25_0();
    v249 = OUTLINED_FUNCTION_99();
    *v241 = 136315394;
    v119 = sub_223763694(v242, v35, &v249);
    OUTLINED_FUNCTION_45_0(v119);
    *(v241 + 14) = sub_223763694(v238, v240, &v249);
    OUTLINED_FUNCTION_257(&dword_22375F000, v245, v27, "No active session for assistantId: %s cannot start correction speech request for request id: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_22379FBDC()
{
  OUTLINED_FUNCTION_16_3();
  v24 = v3;
  v23 = OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_0_2(v23);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_158(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_82("startSpeechDictationSession(withAssistantId:languageCode:recognitionOnDevice:)");
  v26 = v1;
  v27 = v24;
  v11 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_223();
  v12 = OUTLINED_FUNCTION_48_0(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v2(v12);
  v13 = OUTLINED_FUNCTION_151();
  v2(v13);
  v14 = *(v11 + 80);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_105();
  v15 = OUTLINED_FUNCTION_260();
  v16 = *(v11 + 32);
  v17 = OUTLINED_FUNCTION_49_0(v15);
  v16(v17);
  v18 = OUTLINED_FUNCTION_52_0();
  v16(v18);
  OUTLINED_FUNCTION_41_0((v15 + v11));
  v19 = (&type metadata for Logger + v15);
  *v19 = sub_2237A7EC8;
  v19[1] = &v25;
  OUTLINED_FUNCTION_5_3();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_223761F8C;
  *(v20 + 24) = v15;
  v28[4] = sub_223761F78;
  v28[5] = v20;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v28[2] = v21;
  v28[3] = &block_descriptor_234;
  _Block_copy(v28);
  OUTLINED_FUNCTION_252();

  OUTLINED_FUNCTION_362();
  _Block_release(v11);
  v22 = OUTLINED_FUNCTION_156();
  (type metadata for Logger.Kind)(v22);
  (type metadata for Logger.Kind)(v2, v0);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_121();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_22379FEA0()
{
  OUTLINED_FUNCTION_16_3();
  v8 = OUTLINED_FUNCTION_237(v3, v4, v5, v6, v7);
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v17 = sub_2237B412C();
  v18 = OUTLINED_FUNCTION_0_2(v17);
  v45 = v19;
  v47 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_14_3();
  sub_223764358(v22, v23, v24, v25, 1, 0, v26, v27, v43, v44, v45, v47, v49, v50, v51, v52, v53, v54, v55, v56);
  v28 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  v29 = *MEMORY[0x277D5D260];
  OUTLINED_FUNCTION_304();
  v30(v16);
  OUTLINED_FUNCTION_19_3();
  sub_223763E48();
  (*(v11 + 8))(v16, v8);
  OUTLINED_FUNCTION_224();
  v31 = objc_allocWithZone(sub_2237B503C());
  v32 = sub_2237B4FDC();
  if (v32)
  {
    v33 = v32;
    v34 = *(v2 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    sub_2237654A4(v32);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v35 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v35, qword_28131B550);

    v36 = sub_2237B5C8C();
    sub_2237B5FFC();
    OUTLINED_FUNCTION_282();
    if (OUTLINED_FUNCTION_57())
    {
      v37 = OUTLINED_FUNCTION_20();
      v38 = OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_339(v38);
      *v37 = 136315138;
      v39 = OUTLINED_FUNCTION_19_3();
      *(v37 + 4) = sub_223763694(v39, v40, v41);
      OUTLINED_FUNCTION_239(&dword_22375F000, v42, v16, "Cannot create StartSpeechDictationSessionMessage for assistantId: %s");
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_13_1();
    }
  }

  (*(v46 + 8))(v1, v48);
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237A0108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v20[3] = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v20 - v14;
  v16 = *MEMORY[0x277D5CDC8];
  v17 = sub_2237B540C();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
  sub_2237B501C();

  sub_2237B4FEC();
  v18 = sub_2237B412C();
  (*(*(v18 - 8) + 16))(v11, a4, v18);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
  sub_2237B502C();

  sub_2237B4FFC();
  return sub_2237B500C();
}

void sub_2237A02F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_51_0(v26, v27, v28, v29, v30, v31);
  OUTLINED_FUNCTION_250();
  v32 = sub_2237B5C7C();
  v33 = OUTLINED_FUNCTION_8_6(v32, &a17);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_29_1();
  v59 = v22;
  v60 = v23;
  v61 = v20;
  v62 = v57;
  OUTLINED_FUNCTION_42_0();
  v43 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_364();
  v44 = OUTLINED_FUNCTION_43_0(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v22(v44);
  v45 = OUTLINED_FUNCTION_111();
  v22(v45);
  v46 = *(v23 + 80);
  OUTLINED_FUNCTION_21_3();
  v47 = OUTLINED_FUNCTION_260();
  v48 = OUTLINED_FUNCTION_54_0(v47);
  (v21)(v48);
  OUTLINED_FUNCTION_230();
  v21();
  OUTLINED_FUNCTION_76((v47 + v37));
  OUTLINED_FUNCTION_84(v49);
  v50 = (&type metadata for Logger + v47);
  *v50 = sub_2237A7EE0;
  v50[1] = &v58;
  OUTLINED_FUNCTION_5_3();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_223761F8C;
  *(v51 + 24) = v47;
  v63[4] = sub_223761F78;
  v63[5] = v51;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v63[2] = v52;
  v63[3] = &block_descriptor_245;
  _Block_copy(v63);
  OUTLINED_FUNCTION_175();

  v53 = OUTLINED_FUNCTION_335();
  dispatch_sync(v53, v54);
  _Block_release(v43);
  v55 = OUTLINED_FUNCTION_83();
  (type metadata for Logger.Kind)(v55);
  v56 = OUTLINED_FUNCTION_324();
  (type metadata for Logger.Kind)(v56);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_2237A05BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a5;
  v18 = a8;
  v11 = sub_2237B544C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_22376E3D4(v15);

  sub_2237A07D4(a2, a3, a4, v17, v15, v18);
  return (*(v12 + 8))(v15, v11);
}

void sub_2237A0C38()
{
  OUTLINED_FUNCTION_16_3();
  v24 = v3;
  v23 = OUTLINED_FUNCTION_164();
  v4 = OUTLINED_FUNCTION_0_2(v23);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_158(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_82("startUnderstandingDictationSession(withAssistantId:languageCode:understandingOnDevice:)");
  v26 = v1;
  v27 = v24;
  v11 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_223();
  v12 = OUTLINED_FUNCTION_48_0(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v2(v12);
  v13 = OUTLINED_FUNCTION_151();
  v2(v13);
  v14 = *(v11 + 80);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_105();
  v15 = OUTLINED_FUNCTION_260();
  v16 = *(v11 + 32);
  v17 = OUTLINED_FUNCTION_49_0(v15);
  v16(v17);
  v18 = OUTLINED_FUNCTION_52_0();
  v16(v18);
  OUTLINED_FUNCTION_41_0((v15 + v11));
  v19 = (&type metadata for Logger + v15);
  *v19 = sub_2237A7EF8;
  v19[1] = &v25;
  OUTLINED_FUNCTION_5_3();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_223761F8C;
  *(v20 + 24) = v15;
  v28[4] = sub_223761F78;
  v28[5] = v20;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v28[2] = v21;
  v28[3] = &block_descriptor_256;
  _Block_copy(v28);
  OUTLINED_FUNCTION_252();

  OUTLINED_FUNCTION_362();
  _Block_release(v11);
  v22 = OUTLINED_FUNCTION_156();
  (type metadata for Logger.Kind)(v22);
  (type metadata for Logger.Kind)(v2, v0);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_121();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_2237A0EFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  v8 = a1;
  v9 = OUTLINED_FUNCTION_240();
  a6(v9);
}

void sub_2237A0FA4()
{
  OUTLINED_FUNCTION_16_3();
  v8 = OUTLINED_FUNCTION_237(v3, v4, v5, v6, v7);
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v17 = sub_2237B412C();
  v18 = OUTLINED_FUNCTION_0_2(v17);
  v45 = v19;
  v47 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_14_3();
  sub_223764358(v22, v23, v24, v25, 1, 0, v26, v27, v43, v44, v45, v47, v49, v50, v51, v52, v53, v54, v55, v56);
  v28 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  v29 = *MEMORY[0x277D5D250];
  OUTLINED_FUNCTION_304();
  v30(v16);
  OUTLINED_FUNCTION_19_3();
  sub_223763E48();
  (*(v11 + 8))(v16, v8);
  OUTLINED_FUNCTION_224();
  v31 = objc_allocWithZone(sub_2237B51EC());
  v32 = sub_2237B518C();
  if (v32)
  {
    v33 = v32;
    v34 = *(v2 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    sub_2237654A4(v32);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v35 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v35, qword_28131B550);

    v36 = sub_2237B5C8C();
    sub_2237B5FFC();
    OUTLINED_FUNCTION_282();
    if (OUTLINED_FUNCTION_57())
    {
      v37 = OUTLINED_FUNCTION_20();
      v38 = OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_339(v38);
      *v37 = 136315138;
      v39 = OUTLINED_FUNCTION_19_3();
      *(v37 + 4) = sub_223763694(v39, v40, v41);
      OUTLINED_FUNCTION_239(&dword_22375F000, v42, v16, "Cannot create StartUnderstandingDictationSessionMessage for assistantId: %s");
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_13_1();
    }
  }

  (*(v46 + 8))(v1, v48);
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237A120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v20[3] = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v20 - v14;
  v16 = *MEMORY[0x277D5CDC8];
  v17 = sub_2237B540C();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
  sub_2237B51CC();

  sub_2237B519C();
  v18 = sub_2237B412C();
  (*(*(v18 - 8) + 16))(v11, a4, v18);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
  sub_2237B51DC();

  sub_2237B51AC();
  return sub_2237B51BC();
}

void sub_2237A13F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_51_0(v26, v27, v28, v29, v30, v31);
  OUTLINED_FUNCTION_250();
  v32 = sub_2237B5C7C();
  v33 = OUTLINED_FUNCTION_8_6(v32, &a17);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_29_1();
  v59 = v22;
  v60 = v23;
  v61 = v20;
  v62 = v57;
  OUTLINED_FUNCTION_42_0();
  v43 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_364();
  v44 = OUTLINED_FUNCTION_43_0(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v22(v44);
  v45 = OUTLINED_FUNCTION_111();
  v22(v45);
  v46 = *(v23 + 80);
  OUTLINED_FUNCTION_21_3();
  v47 = OUTLINED_FUNCTION_260();
  v48 = OUTLINED_FUNCTION_54_0(v47);
  (v21)(v48);
  OUTLINED_FUNCTION_230();
  v21();
  OUTLINED_FUNCTION_76((v47 + v37));
  OUTLINED_FUNCTION_84(v49);
  v50 = (&type metadata for Logger + v47);
  *v50 = sub_2237A7F44;
  v50[1] = &v58;
  OUTLINED_FUNCTION_5_3();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_223761F8C;
  *(v51 + 24) = v47;
  v63[4] = sub_223761F78;
  v63[5] = v51;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v63[2] = v52;
  v63[3] = &block_descriptor_267;
  _Block_copy(v63);
  OUTLINED_FUNCTION_175();

  v53 = OUTLINED_FUNCTION_335();
  dispatch_sync(v53, v54);
  _Block_release(v43);
  v55 = OUTLINED_FUNCTION_83();
  (type metadata for Logger.Kind)(v55);
  v56 = OUTLINED_FUNCTION_324();
  (type metadata for Logger.Kind)(v56);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_2237A16C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[1] = a8;
  v8 = sub_2237B544C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(v12);
  sub_2237A17FC();
  return (*(v9 + 8))(v12, v8);
}

void sub_2237A17FC()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v0;
  v75 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_188();
  v12 = sub_2237B412C();
  v13 = OUTLINED_FUNCTION_0_2(v12);
  v76 = v14;
  v77 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_4();
  v78 = v17;
  OUTLINED_FUNCTION_12();
  v18 = sub_2237B563C();
  v19 = OUTLINED_FUNCTION_0_2(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_272();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_50_0();
  v25 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_340();
  sub_22376F45C();
  if (v26)
  {
    v72 = v4;
    v73 = v3;
    v74 = v9;
    v27 = *(v26 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession);
    OUTLINED_FUNCTION_141();
    v29 = v28;
    v30(v1);
    v31 = *MEMORY[0x277D5D250];
    v71 = *(v21 + 104);
    v71(v2, v31, v18);
    v32 = sub_223766744();
    v33 = *(v21 + 8);
    v33(v2, v18);
    v33(v1, v18);
    if (v32)
    {
      v34 = (*(v76 + 16))(v78, v29 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v77);
      MEMORY[0x28223BE20](v34);
      OUTLINED_FUNCTION_277();
      *(v35 - 64) = v73;
      *(v35 - 56) = v11;
      *(v35 - 48) = v78;
      *(v35 - 40) = v74;
      *(v35 - 32) = v7;
      *(v35 - 24) = v75;
      OUTLINED_FUNCTION_225(v35);
      objc_allocWithZone(sub_2237B517C());
      OUTLINED_FUNCTION_144();
      v36 = sub_2237B4F5C();
      if (v36)
      {
        v37 = v36;
        v38 = *(v72 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
        sub_2237654A4(v36);
      }

      else
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v57 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v57, qword_28131B550);

        v58 = sub_2237B5C8C();
        sub_2237B5FFC();
        OUTLINED_FUNCTION_361();
        if (OUTLINED_FUNCTION_218())
        {
          OUTLINED_FUNCTION_20();
          v59 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_325(v59);
          OUTLINED_FUNCTION_303(4.8149e-34);
          v60 = OUTLINED_FUNCTION_119();
          sub_223763694(v60, v61, v62);
          OUTLINED_FUNCTION_33();
          _os_log_impl(v63, v64, v65, v66, v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v78);
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_3_0();
        }
      }

      v68 = *(v76 + 8);
      v69 = OUTLINED_FUNCTION_292();
      v70(v69);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v47 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v47, qword_28131B550);

      v48 = sub_2237B5C8C();
      v49 = sub_2237B5FFC();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = OUTLINED_FUNCTION_25_0();
        v80 = OUTLINED_FUNCTION_198();
        *v50 = 136315394;
        v71(v1, v31, v18);
        v51 = sub_2237B562C();
        v33(v1, v18);
        v52 = OUTLINED_FUNCTION_1_1();
        sub_223763694(v52, v53, v54);
        OUTLINED_FUNCTION_249();

        *(v50 + 4) = v51;
        *(v50 + 12) = 2080;
        *(v50 + 14) = sub_223763694(v74, v7, &v80);
        _os_log_impl(&dword_22375F000, v48, v49, "Current session type is not of type %s, cannot start understanding dictation request for requestId: %s", v50, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_13_5();
      }

      else
      {
      }
    }

    goto LABEL_23;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v39 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v39, qword_28131B550);

  v79 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_90();

  if (OUTLINED_FUNCTION_368())
  {
    OUTLINED_FUNCTION_25_0();
    v40 = OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_301(v40);
    OUTLINED_FUNCTION_212(4.8151e-34);
    v41 = OUTLINED_FUNCTION_340();
    v44 = sub_223763694(v41, v42, v43);
    OUTLINED_FUNCTION_45_0(v44);
    *(v25 + 14) = sub_223763694(v9, v7, &v80);
    OUTLINED_FUNCTION_152(&dword_22375F000, v45, v46, "No active session for assistantId: %s cannot start understanding dictation request for request id: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_23:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_14_2();
}

void sub_2237A1DE0()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v3;
  v37 = v5;
  v36 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_348();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_113();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_232();
  v19 = *MEMORY[0x277D5CDC8];
  v20 = sub_2237B540C();
  OUTLINED_FUNCTION_4(v20);
  (*(v21 + 104))(v0, v19, v20);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v20);
  sub_2237B4F9C();

  OUTLINED_FUNCTION_13_3();
  sub_2237B4F6C();
  v25 = sub_2237B412C();
  OUTLINED_FUNCTION_4(v25);
  (*(v26 + 16))(v2, v36, v25);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v25);
  sub_2237B4FBC();

  sub_2237B4FAC();
  v30 = sub_2237B544C();
  OUTLINED_FUNCTION_4(v30);
  (*(v31 + 16))(v1, v37, v30);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v30);
  sub_2237B4F7C();
  v35 = v4;
  sub_2237B4F8C();
  OUTLINED_FUNCTION_14_2();
}

void sub_2237A2018()
{
  OUTLINED_FUNCTION_16_3();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_188();
  v34 = sub_2237B5C7C();
  v6 = OUTLINED_FUNCTION_0_2(v34);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_112();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27_1();
  v37[2] = v3;
  v38 = v2;
  v39 = v5;
  v17 = sub_223761B80();
  v36 = v1;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_363();
  v18 = OUTLINED_FUNCTION_169(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  (v17)(v18);
  OUTLINED_FUNCTION_170();
  v17();
  v19 = v8;
  v33 = v8;
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  OUTLINED_FUNCTION_53_0();
  v22 = v21 & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = *(v19 + 32);
  OUTLINED_FUNCTION_139();
  v24();
  v25 = OUTLINED_FUNCTION_67();
  (v24)(v25);
  OUTLINED_FUNCTION_76((&type metadata for Logger + v23));
  *(v26 + 8) = 0x80000002237BA8F0;
  v27 = (v23 + v22);
  *v27 = sub_2237A7F5C;
  v27[1] = v37;
  OUTLINED_FUNCTION_5_3();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_223761F8C;
  *(v28 + 24) = v23;
  v40[4] = sub_223761F78;
  v40[5] = v28;
  OUTLINED_FUNCTION_7_5();
  v40[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v40[2] = v29;
  v40[3] = &block_descriptor_278;
  v30 = _Block_copy(v40);

  dispatch_sync(v35, v30);
  _Block_release(v30);
  v31 = *(v33 + 8);
  v32 = OUTLINED_FUNCTION_231();
  v31(v32);
  (v31)(v36, v13);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_90();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_2237A2318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097D20, &qword_2237B92E0);
  v5 = sub_2237B563C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2237B9140;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x277D5D260], v5);
  v11(v10 + v7, *MEMORY[0x277D5D250], v5);
  sub_223764358(a2, a3, v9, 0, 1, 0, v12, v13, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, vars0, vars8);
  swift_setDeallocating();
  return sub_2237A67E4();
}

void sub_2237A24D0()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_174();
  v34 = sub_2237B5C7C();
  v11 = OUTLINED_FUNCTION_0_2(v34);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_31_0();
  v33 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_27_1();
  v35[2] = v4;
  v36 = v1;
  v37 = v10;
  v38 = v8;
  v39 = v6;
  v20 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_320();
  v21 = OUTLINED_FUNCTION_154(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v20(v21);
  v22 = OUTLINED_FUNCTION_119();
  v20(v22);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_79();
  v23 = OUTLINED_FUNCTION_221();
  v24 = OUTLINED_FUNCTION_46_0(v23);
  v3(v24);
  v25 = OUTLINED_FUNCTION_52_0();
  v3(v25);
  OUTLINED_FUNCTION_41_0((&type metadata for Logger + v23));
  v26 = (v23 + v2);
  *v26 = sub_2237A7F68;
  v26[1] = v35;
  OUTLINED_FUNCTION_5_3();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_223761F8C;
  *(v27 + 24) = v23;
  v40[4] = sub_223761F78;
  v40[5] = v27;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v40[2] = v28;
  v40[3] = &block_descriptor_289;
  _Block_copy(v40);
  OUTLINED_FUNCTION_195();

  v29 = OUTLINED_FUNCTION_285();
  dispatch_sync(v29, v30);
  _Block_release(v33);
  v31 = OUTLINED_FUNCTION_160();
  (type metadata for Logger.Kind)(v31);
  v32 = OUTLINED_FUNCTION_202();
  (type metadata for Logger.Kind)(v32);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_121();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237A27A8()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_262();
  v9 = sub_2237B412C();
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_4();
  v15 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_120();
  sub_22376F45C();
  if (v16)
  {
    OUTLINED_FUNCTION_241();
    v18 = v17(v1);
    MEMORY[0x28223BE20](v18);
    OUTLINED_FUNCTION_278();
    *(v19 - 48) = v3;
    *(v19 - 40) = v2;
    *(v19 - 32) = v1;
    *(v19 - 24) = v8;
    *(v19 - 16) = v6;
    v20 = objc_allocWithZone(sub_2237B496C());
    OUTLINED_FUNCTION_34_0();
    v21 = sub_2237B44FC();
    if (v21)
    {
      v22 = v21;
      v23 = *(v4 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
      sub_2237654A4(v21);

      (*(v12 + 8))(v1, v9);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v34 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v34, qword_28131B550);

      v35 = sub_2237B5C8C();
      sub_2237B5FFC();

      if (OUTLINED_FUNCTION_365())
      {
        v36 = OUTLINED_FUNCTION_20();
        v50 = OUTLINED_FUNCTION_19_0();
        *v36 = 136315138;
        v37 = OUTLINED_FUNCTION_136();
        *(v36 + 4) = sub_223763694(v37, v38, v39);
        OUTLINED_FUNCTION_331();
        _os_log_impl(v40, v41, v42, v43, v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_135();
      }

      v44 = *(v12 + 8);
      v45 = OUTLINED_FUNCTION_19_3();
      v46(v45);
    }

    goto LABEL_13;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v24 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v24, qword_28131B550);

  v49 = sub_2237B5C8C();
  v25 = sub_2237B5FFC();

  if (os_log_type_enabled(v49, v25))
  {
    v26 = OUTLINED_FUNCTION_25_0();
    v27 = OUTLINED_FUNCTION_198();
    OUTLINED_FUNCTION_325(v27);
    *v26 = 136315394;
    v28 = OUTLINED_FUNCTION_120();
    *(v26 + 4) = sub_223763694(v28, v29, v30);
    *(v26 + 12) = 2080;
    v31 = OUTLINED_FUNCTION_136();
    *(v26 + 14) = sub_223763694(v31, v32, v33);
    _os_log_impl(&dword_22375F000, v49, v25, "No active session for assistantId: %s, cannot pause dictation recognition for requestId: %s", v26, 0x16u);
    OUTLINED_FUNCTION_310();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_71();

LABEL_13:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_14_2();
}

void sub_2237A2B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_244(v26, v27, v28, v29, v30, v31, v32);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v68 = a22;
  OUTLINED_FUNCTION_205(a21);
  v41 = sub_2237B5C7C();
  v42 = OUTLINED_FUNCTION_0_2(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_35();
  v71 = v22;
  v72 = v40;
  v73 = v38;
  v74 = v36;
  v75 = v34;
  v76 = v69;
  OUTLINED_FUNCTION_87(&a12);
  OUTLINED_FUNCTION_183();
  v77 = v53;
  v78 = v52;
  v79 = v68;
  sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_363();
  OUTLINED_FUNCTION_129(*(v22 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v54 = *(v44 + 16);
  OUTLINED_FUNCTION_155(&a13);
  OUTLINED_FUNCTION_283();
  v54();
  v55 = OUTLINED_FUNCTION_185(&a15);
  (v54)(v55, v23, v41);
  v56 = *(v44 + 80);
  v57 = (v56 + 16) & ~v56;
  v58 = (v46 + ((v46 + v56 + v57) & ~v56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = OUTLINED_FUNCTION_305();
  v60 = *(v44 + 32);
  (v60)(v59 + v57, v44, v41);
  OUTLINED_FUNCTION_283();
  v60();
  OUTLINED_FUNCTION_76((v59 + v58));
  OUTLINED_FUNCTION_84(v61);
  v62 = (v59 + ((v58 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v62 = sub_2237A7F80;
  v62[1] = &v70;
  OUTLINED_FUNCTION_5_3();
  v63 = swift_allocObject();
  *(v63 + 16) = sub_223761F8C;
  *(v63 + 24) = v59;
  v80[4] = sub_223761F78;
  v80[5] = v63;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v80[2] = v64;
  v80[3] = &block_descriptor_300;
  _Block_copy(v80);
  OUTLINED_FUNCTION_175();

  v65 = OUTLINED_FUNCTION_101();
  dispatch_sync(v65, ((v58 + 23) & 0xFFFFFFFFFFFFFFF8));
  _Block_release(((v58 + 23) & 0xFFFFFFFFFFFFFFF8));
  v66 = OUTLINED_FUNCTION_86(&a14);
  (v60)(v66, v41);
  v67 = OUTLINED_FUNCTION_143();
  (v60)(v67, v41);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_121();

  if (v44)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237A2FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_16_3();
  v24 = v22;
  v73 = v25;
  v74 = v26;
  v71 = v27;
  v72 = v28;
  v70 = a22;
  v29 = sub_2237B412C();
  v30 = OUTLINED_FUNCTION_0_2(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_232();
  v35 = *(v22 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_215();
  sub_22376F45C();
  if (v36)
  {
    OUTLINED_FUNCTION_241();
    v68 = v37;
    v39 = v38(v23);
    v69 = v29;
    MEMORY[0x28223BE20](v39);
    OUTLINED_FUNCTION_225(&v68);
    v40 = objc_allocWithZone(sub_2237B4A7C());
    OUTLINED_FUNCTION_34_0();
    v41 = sub_2237B49FC();
    if (v41)
    {
      v42 = v41;
      v43 = *(v24 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
      sub_2237654A4(v41);

      (*(v32 + 8))(v23, v69);
    }

    else
    {
      v55 = v69;
      v74 = v23;
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v56 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v56, qword_28131B550);

      v57 = sub_2237B5C8C();
      sub_2237B5FFC();
      OUTLINED_FUNCTION_321();
      if (OUTLINED_FUNCTION_57())
      {
        OUTLINED_FUNCTION_20();
        v58 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_300(v58);
        OUTLINED_FUNCTION_303(4.8149e-34);
        v59 = OUTLINED_FUNCTION_100();
        *(v23 + 4) = sub_223763694(v59, v60, v61);
        OUTLINED_FUNCTION_247();
        OUTLINED_FUNCTION_217(v62, v63, v64, v65);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_3_0();
      }

      (*(v32 + 8))(v74, v55);
    }

    goto LABEL_13;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v44 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v44, qword_28131B550);

  v74 = sub_2237B5C8C();
  sub_2237B5FFC();
  OUTLINED_FUNCTION_321();

  if (OUTLINED_FUNCTION_368())
  {
    OUTLINED_FUNCTION_25_0();
    v45 = OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_301(v45);
    OUTLINED_FUNCTION_212(4.8151e-34);
    v46 = OUTLINED_FUNCTION_293();
    v49 = sub_223763694(v46, v47, v48);
    OUTLINED_FUNCTION_45_0(v49);
    v50 = OUTLINED_FUNCTION_171();
    *(v35 + 14) = sub_223763694(v50, v51, v52);
    OUTLINED_FUNCTION_152(&dword_22375F000, v53, v54, "No active session for assistantId: %s, cannot resume dictation recognition for requestId: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_13:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_14_2();
}