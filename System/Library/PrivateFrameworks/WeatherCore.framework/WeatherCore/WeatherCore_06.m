uint64_t sub_1C94E654C()
{
  v1 = (type metadata accessor for PrecipitationNotification() - 8);
  v48 = *(*v1 + 80);
  v2 = (v48 + 16) & ~v48;
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_10_2();
  v47 = *(v5 + 80);
  v6 = (v2 + v3 + v47) & ~v47;
  v8 = *(v7 + 64);
  type metadata accessor for PrecipitationNotificationFetchSchedule();
  OUTLINED_FUNCTION_10_2();
  v50 = *(v9 + 80);
  v51 = v10;
  v11 = v8 + v50;
  v49 = *(v12 + 64);
  v13 = v0 + v2;

  v14 = v1[8];
  v15 = sub_1C96A5DD4();
  OUTLINED_FUNCTION_6();
  v17 = *(v16 + 8);
  v17(v13 + v14, v15);
  v17(v13 + v1[9], v15);
  v18 = v1[10];
  sub_1C96A5CB4();
  OUTLINED_FUNCTION_6();
  (*(v19 + 8))(v13 + v18);
  v20 = v1[11];
  sub_1C96A5D64();
  OUTLINED_FUNCTION_6();
  (*(v21 + 8))(v13 + v20);
  v22 = v1[12];
  v23 = sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  (*(v24 + 8))(v13 + v22, v23);
  if (!OUTLINED_FUNCTION_20_1(v13 + v1[13]))
  {
    OUTLINED_FUNCTION_67_6();
    v25();
  }

  v26 = v6 + v11;

  v27 = v0 + v6 + *(v4 + 20);

  v28 = type metadata accessor for Location();
  v29 = v28[5];
  v30 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  v32 = *(v31 + 8);
  v32(v27 + v29, v30);
  if (!OUTLINED_FUNCTION_20_1(v27 + v28[6]))
  {
    OUTLINED_FUNCTION_67_6();
    v33();
  }

  v34 = v26 & ~v50;
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();

  v35 = type metadata accessor for NotificationSubscription.Location(0);
  v36 = v27 + *(v35 + 20);

  v32(v36 + v28[5], v30);
  if (!OUTLINED_FUNCTION_20_1(v36 + v28[6]))
  {
    OUTLINED_FUNCTION_67_6();
    v37();
  }

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_13_0();

  v46 = v34;

  v38 = v0 + v34 + *(v51 + 20);

  OUTLINED_FUNCTION_89_2();
  v40 = v38 + v39;

  v32(v40 + v28[5], v30);
  if (!OUTLINED_FUNCTION_20_1(v40 + v28[6]))
  {
    OUTLINED_FUNCTION_67_6();
    v41();
  }

  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_76_3();

  v42 = v40 + *(v35 + 20);

  v32(v42 + v28[5], v30);
  if (!OUTLINED_FUNCTION_20_1(v42 + v28[6]))
  {
    OUTLINED_FUNCTION_67_6();
    v43();
  }

  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_76_3();

  OUTLINED_FUNCTION_67_6();
  v44();

  return MEMORY[0x1EEE6BDD0](v0, v46 + v49, v48 | v47 | v50 | 7);
}

uint64_t sub_1C94E6AAC()
{
  v1 = type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_10_2();
  v41 = *(v2 + 80);
  v3 = (v41 + 16) & ~v41;
  v5 = *(v4 + 64);
  v37 = type metadata accessor for PrecipitationNotificationConfiguration();
  OUTLINED_FUNCTION_10_2();
  v40 = *(v6 + 80);
  v7 = (v3 + v5 + v40) & ~v40;
  v9 = *(v8 + 64);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  OUTLINED_FUNCTION_10_2();
  v11 = *(v10 + 80);
  v36 = v7;
  v12 = v9 + v11 + v7;
  v39 = *(v13 + 64);
  v43 = v0;

  v14 = v0 + v3 + *(v1 + 20);

  type metadata accessor for Location();
  v15 = OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_6();
  v17 = *(v16 + 8);
  v17(v14 + v1, v15);
  v18 = v9[6];
  v19 = sub_1C96A4A54();
  if (!OUTLINED_FUNCTION_21_4(v14 + v18))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v20 + 8))(v14 + v18, v19);
  }

  v21 = v12 & ~v11;
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_54_7();

  type metadata accessor for NotificationSubscription.Location(0);
  OUTLINED_FUNCTION_81_1();

  v17(v14 + v9[5], v15);
  v22 = v9[6];
  if (!OUTLINED_FUNCTION_21_4(v14 + v22))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v23 + 8))(v14 + v22, v19);
  }

  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_54_7();

  OUTLINED_FUNCTION_7_4();
  v25 = *(v24 + 8);
  v25(v43 + v36, v19);
  v26 = OUTLINED_FUNCTION_88_1(*(v37 + 20));
  (v25)(v26);
  v38 = v21;

  v27 = v43 + v21 + *(Schedule + 20);

  OUTLINED_FUNCTION_89_2();
  v29 = v27 + v28;

  v30 = OUTLINED_FUNCTION_21_25();
  (v17)(v30);
  v31 = v9[6];
  if (!OUTLINED_FUNCTION_21_4(v29 + v31))
  {
    v25(v29 + v31, v19);
  }

  OUTLINED_FUNCTION_38_7();
  OUTLINED_FUNCTION_37_10();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_80_2();

  v32 = OUTLINED_FUNCTION_21_25();
  (v17)(v32);
  if (!OUTLINED_FUNCTION_56_4())
  {
    v25(v17 + v29, v19);
  }

  v33 = (v39 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_38_7();
  OUTLINED_FUNCTION_37_10();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_83_1();
  v34 = OUTLINED_FUNCTION_88_1(*(Schedule + 24));
  (v25)(v34);

  return MEMORY[0x1EEE6BDD0](v43, v33 + 8, v41 | v40 | v11 | 7);
}

uint64_t sub_1C94E6F08()
{
  OUTLINED_FUNCTION_100_1();
  type metadata accessor for PrecipitationNotificationPolicy();
  OUTLINED_FUNCTION_10_2();
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
    v5 = v2 + *(Schedule + 20);

    type metadata accessor for NotificationSubscription(0);
    OUTLINED_FUNCTION_81_1();

    v6 = type metadata accessor for Location();
    v7 = v6[5];
    v8 = sub_1C96A4DF4();
    OUTLINED_FUNCTION_6();
    v10 = *(v9 + 8);
    v10(v5 + v7, v8);
    v11 = v6[6];
    v12 = sub_1C96A4A54();
    if (!__swift_getEnumTagSinglePayload(v5 + v11, 1, v12))
    {
      (*(*(v12 - 8) + 8))(v5 + v11, v12);
    }

    OUTLINED_FUNCTION_54_7();
    OUTLINED_FUNCTION_54_7();
    OUTLINED_FUNCTION_54_7();
    OUTLINED_FUNCTION_54_7();

    type metadata accessor for NotificationSubscription.Location(0);
    OUTLINED_FUNCTION_81_1();

    v10(v5 + v6[5], v8);
    v13 = v6[6];
    if (!__swift_getEnumTagSinglePayload(v5 + v13, 1, v12))
    {
      (*(*(v12 - 8) + 8))(v5 + v13, v12);
    }

    OUTLINED_FUNCTION_54_7();
    OUTLINED_FUNCTION_54_7();
    OUTLINED_FUNCTION_54_7();
    OUTLINED_FUNCTION_54_7();

    (*(*(v12 - 8) + 8))(v2 + *(Schedule + 24), v12);
  }

  else
  {
    v14 = type metadata accessor for PrecipitationNotification();
    v15 = v14[6];
    v16 = sub_1C96A5DD4();
    OUTLINED_FUNCTION_6();
    v18 = *(v17 + 8);
    v18(v2 + v15, v16);
    v18(v2 + v14[7], v16);
    v19 = v14[8];
    sub_1C96A5CB4();
    OUTLINED_FUNCTION_6();
    (*(v20 + 8))(v2 + v19);
    v21 = v14[9];
    sub_1C96A5D64();
    OUTLINED_FUNCTION_6();
    (*(v22 + 8))(v2 + v21);
    v23 = v14[10];
    v24 = sub_1C96A4A54();
    OUTLINED_FUNCTION_6();
    (*(v25 + 8))(v2 + v23, v24);
    if (!OUTLINED_FUNCTION_20_1(v2 + v14[11]))
    {
      OUTLINED_FUNCTION_51_8();
      v26();
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7118);
    v27 = v2 + *(v51 + 48);

    v28 = v27 + *(type metadata accessor for NotificationSubscription(0) + 20);

    v29 = type metadata accessor for Location();
    v30 = *(v29 + 20);
    v31 = sub_1C96A4DF4();
    OUTLINED_FUNCTION_6();
    v33 = *(v32 + 8);
    v33(v28 + v30, v31);
    if (!OUTLINED_FUNCTION_20_1(v28 + *(v29 + 24)))
    {
      OUTLINED_FUNCTION_51_8();
      v34();
    }

    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_105_2();
    type metadata accessor for NotificationSubscription.Location(0);
    OUTLINED_FUNCTION_80_2();

    v35 = OUTLINED_FUNCTION_68_3();
    (v33)(v35);
    if (!OUTLINED_FUNCTION_20_1(v28 + *(v29 + 24)))
    {
      OUTLINED_FUNCTION_51_8();
      v36();
    }

    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_105_2();
    v37 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
    if (!OUTLINED_FUNCTION_20_1(v27 + *(v37 + 20)))
    {
      OUTLINED_FUNCTION_51_8();
      v38();
    }

    v39 = v2 + *(v51 + 64);

    v40 = v39 + *(type metadata accessor for PrecipitationNotificationFetchSchedule() + 20);

    OUTLINED_FUNCTION_80_2();

    v41 = OUTLINED_FUNCTION_68_3();
    (v33)(v41);
    if (!OUTLINED_FUNCTION_20_1(v40 + *(v29 + 24)))
    {
      OUTLINED_FUNCTION_51_8();
      v42();
    }

    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_105_2();
    OUTLINED_FUNCTION_80_2();

    v43 = OUTLINED_FUNCTION_68_3();
    (v33)(v43);
    if (!OUTLINED_FUNCTION_20_1(v40 + *(v29 + 24)))
    {
      OUTLINED_FUNCTION_51_8();
      v44();
    }

    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_105_2();
    OUTLINED_FUNCTION_51_8();
    v45();
  }

  OUTLINED_FUNCTION_99_1();

  return MEMORY[0x1EEE6BDD0](v46, v47, v48);
}

uint64_t sub_1C94E7590()
{
  OUTLINED_FUNCTION_55_5();
  v1 = type metadata accessor for Location();
  OUTLINED_FUNCTION_10_2();
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for PrecipitationNotificationConfiguration();
  OUTLINED_FUNCTION_1();
  v8 = *(v7 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v9 = v0 + v3;

  v10 = v1[5];
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v11 + 8))(v0 + v3 + v10);
  v12 = v1[6];
  v13 = sub_1C96A4A54();
  if (!OUTLINED_FUNCTION_21_4(v0 + v3 + v12))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v14 + 8))(v9 + v12, v13);
  }

  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_9_28();

  v15 = v0 + ((v3 + v5 + v8) & ~v8);
  OUTLINED_FUNCTION_7_4();
  v17 = *(v16 + 8);
  v17(v15, v13);
  v17(v15 + *(v6 + 20), v13);
  OUTLINED_FUNCTION_58_4();

  return MEMORY[0x1EEE6BDD0](v18, v19, v20);
}

uint64_t sub_1C94E7790()
{
  OUTLINED_FUNCTION_55_5();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  OUTLINED_FUNCTION_9(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  type metadata accessor for NotificationSubscription(0);
  if (!OUTLINED_FUNCTION_20_1(v0 + v3))
  {

    type metadata accessor for Location();
    OUTLINED_FUNCTION_64_5();
    OUTLINED_FUNCTION_6();
    v7 = *(v6 + 8);
    v8 = OUTLINED_FUNCTION_93_1();
    v7(v8);
    v9 = OUTLINED_FUNCTION_104_2();
    if (!OUTLINED_FUNCTION_34_11(v9))
    {
      OUTLINED_FUNCTION_3_35();
      v10 = OUTLINED_FUNCTION_92_2();
      v11(v10);
    }

    OUTLINED_FUNCTION_27_14();
    OUTLINED_FUNCTION_26_14();
    OUTLINED_FUNCTION_25_19();
    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_77_2();
    type metadata accessor for NotificationSubscription.Location(0);
    OUTLINED_FUNCTION_60_5();

    v12 = OUTLINED_FUNCTION_41_12();
    v7(v12);
    if (!OUTLINED_FUNCTION_32_7())
    {
      OUTLINED_FUNCTION_3_35();
      v13 = OUTLINED_FUNCTION_91_2();
      v14(v13);
    }

    OUTLINED_FUNCTION_27_14();
    OUTLINED_FUNCTION_26_14();
    OUTLINED_FUNCTION_25_19();
    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_77_2();
  }

  OUTLINED_FUNCTION_58_4();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1C94E7974()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C94E79C4()
{
  OUTLINED_FUNCTION_55_5();
  type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_124();

  OUTLINED_FUNCTION_84_2();

  type metadata accessor for Location();
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_6();
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_93_1();
  v2(v3);
  v4 = OUTLINED_FUNCTION_104_2();
  if (!OUTLINED_FUNCTION_34_11(v4))
  {
    OUTLINED_FUNCTION_3_35();
    v5 = OUTLINED_FUNCTION_92_2();
    v6(v5);
  }

  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_77_2();
  type metadata accessor for NotificationSubscription.Location(0);
  OUTLINED_FUNCTION_60_5();

  v7 = OUTLINED_FUNCTION_41_12();
  v2(v7);
  if (!OUTLINED_FUNCTION_32_7())
  {
    OUTLINED_FUNCTION_3_35();
    v8 = OUTLINED_FUNCTION_91_2();
    v9(v8);
  }

  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_58_4();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1C94E7C30()
{

  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C94E7C64()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C94E7CA4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C94E7CD8@<X0>(uint64_t *a1@<X8>)
{
  result = SyncedLocationDisplayContext.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C94E7D68@<X0>(_BYTE *a1@<X8>)
{
  result = SyncedLocationDisplayContext.canActAsLocationOfInterest.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C94E7E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
  OUTLINED_FUNCTION_16_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8);
  OUTLINED_FUNCTION_16_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1C94E7F24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
  OUTLINED_FUNCTION_16_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8);
    OUTLINED_FUNCTION_16_1();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1C94E8054(uint64_t a1, uint64_t a2, int *a3)
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
    sub_1C96A5DD4();
    OUTLINED_FUNCTION_16_1();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[6];
    }

    else
    {
      sub_1C96A5CB4();
      OUTLINED_FUNCTION_16_1();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[8];
      }

      else
      {
        sub_1C96A5D64();
        OUTLINED_FUNCTION_16_1();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[9];
        }

        else
        {
          sub_1C96A4A54();
          OUTLINED_FUNCTION_16_1();
          if (*(v17 + 84) == a2)
          {
            v10 = v16;
            v11 = a3[10];
          }

          else
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
            v11 = a3[11];
          }
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1C94E81E8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1C96A5DD4();
    OUTLINED_FUNCTION_16_1();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      sub_1C96A5CB4();
      OUTLINED_FUNCTION_16_1();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[8];
      }

      else
      {
        sub_1C96A5D64();
        OUTLINED_FUNCTION_16_1();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[9];
        }

        else
        {
          sub_1C96A4A54();
          OUTLINED_FUNCTION_16_1();
          if (*(v17 + 84) == a3)
          {
            v10 = v16;
            v11 = a4[10];
          }

          else
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
            v11 = a4[11];
          }
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1C94E8500()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94E859C()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C94E8674()
{
  OUTLINED_FUNCTION_40_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1C94E86C4()
{
  OUTLINED_FUNCTION_40_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930);
  v0 = OUTLINED_FUNCTION_27_16();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C94E870C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocationCoalescenceProvider.Labeling(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void sub_1C94E8794()
{
  OUTLINED_FUNCTION_40_2();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    v5 = type metadata accessor for LocationCoalescenceProvider.Labeling(0);
    v6 = v1 + *(v4 + 20);

    __swift_storeEnumTagSinglePayload(v6, v0, v0, v5);
  }
}

uint64_t sub_1C94E8810()
{
  OUTLINED_FUNCTION_40_2();
  v2 = type metadata accessor for Location();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1C94E8854()
{
  OUTLINED_FUNCTION_40_2();
  type metadata accessor for Location();
  v0 = OUTLINED_FUNCTION_27_16();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C94E88DC()
{
  v1 = (type metadata accessor for SyncedData() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
  OUTLINED_FUNCTION_6();
  (*(v5 + 8))(v0 + v3);
  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0);
  OUTLINED_FUNCTION_6();
  (*(v7 + 8))(v0 + v3 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

BOOL sub_1C94E8A10(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1C94E8AA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C94E8AE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C94E8B38()
{
  v1 = type metadata accessor for Location();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v7 + 8))(v0 + v3 + v6);
  v8 = v1[6];
  v9 = sub_1C96A4A54();
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v8, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C94E8CB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1C94E8CFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1C94E8D4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B38);
  OUTLINED_FUNCTION_0_36();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C94E8DF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1C94E8EDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C94E8FE4()
{
  v1 = (type metadata accessor for AppConfiguration() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(*v1 + 64);
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  (*(v4 + 8))(v0 + v3);

  v5 = v0 + v3 + v1[18];
  v6 = type metadata accessor for LocationsConfiguration();
  v7 = *(v6 + 32);
  v8 = sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + *(v6 + 36), v8);

  return MEMORY[0x1EEE6BDD0](v13, v3 + v12, v2 | 7);
}

uint64_t sub_1C94E9234()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C94E9318()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C94E9364()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C94E93DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94E9414()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C94E9454()
{
  MEMORY[0x1CCA8E4B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94E948C()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C94E94DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C94E959C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94E95D4()
{

  OUTLINED_FUNCTION_54();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void sub_1C94E9624(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_24_22(a1);
}

uint64_t sub_1C94E96C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NotificationSubscription.Location(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C94E9750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NotificationSubscription.Location(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C94E97D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C94E9818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C94E991C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C94E9954()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1C94E9BDC@<X0>(void *a1@<X8>)
{
  result = AppLaunchCountManager.appLaunchCount.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C94E9EB0()
{
  sub_1C96A7144();
}

uint64_t sub_1C94EA1A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

BOOL sub_1C94EA210()
{
  v0 = sub_1C96A7BE4();

  return v0 != 0;
}

uint64_t sub_1C94EA334()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C94EA410()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94EA448()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C94EA54C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C94EA584@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94EA52C();
  *a1 = result & 1;
  return result;
}

id WCCountryCodeEstimate()
{
  v0 = [MEMORY[0x1E69C6CF0] currentEstimates];
  v1 = [v0 firstObject];
  v2 = [v1 countryCode];

  return v2;
}

void WCPowerLogPrecipitationFetch(void *a1, void *a2, void *a3)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  [v6 timeIntervalSince1970];
  v10 = v9;
  [v6 timeIntervalSince1970];
  v12 = v11;
  [v5 timeIntervalSince1970];
  v14 = v13;
  if (v7)
  {
    [v7 timeIntervalSince1970];
    v16 = v15;
    [v6 timeIntervalSince1970];
    v18 = v16 - v17;
  }

  else
  {
    v18 = -1.0;
  }

  v22[0] = @"FetchEnd";
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:floor(v10 / 60.0) * 60.0];
  v23[0] = v19;
  v22[1] = @"FetchDuration";
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v12 - v14];
  v23[1] = v20;
  v22[2] = @"NextFetch";
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
  v23[2] = v21;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  PLLogRegisteredEvent();

  objc_autoreleasePoolPop(v8);
}

void WCPowerLogNotificationEnablement(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v7[0] = @"precipitationNotificationEnabled";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  v7[1] = @"severeNotificationEnabled";
  v8[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v8[1] = v6;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  PLLogRegisteredEvent();

  objc_autoreleasePoolPop(v4);
}

void WCPowerLogSevereNotificationsReport(void *a1)
{
  v2 = a1;
  v1 = objc_autoreleasePoolPush();
  PLLogRegisteredEvent();
  objc_autoreleasePoolPop(v1);
}

id sub_1C94EC60C()
{
  result = sub_1C94EC62C();
  qword_1EC3A45E8 = result;
  return result;
}

id sub_1C94EC62C()
{
  v0 = sub_1C96A4C14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1C96A4B74();
  v5 = sub_1C96A4B64();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  [v4 setMinimumFractionDigits_];
  [v4 setMaximumFractionDigits_];
  [v4 setNumberStyle_];
  return v4;
}

id static NSNumberFormatter.decimalFractionDigits.getter()
{
  if (qword_1EC3A45E0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  swift_beginAccess();
  v0 = qword_1EC3A45E8;

  return v0;
}

void static NSNumberFormatter.decimalFractionDigits.setter(uint64_t a1)
{
  if (qword_1EC3A45E0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  swift_beginAccess();
  v2 = qword_1EC3A45E8;
  qword_1EC3A45E8 = a1;
}

uint64_t (*static NSNumberFormatter.decimalFractionDigits.modify())()
{
  if (qword_1EC3A45E0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t getEnumTagSinglePayload for LocationCoordinate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LocationCoordinate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1C94EC92C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C94EC960(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1C94EC97C@<X0>(_DWORD *a1@<X8>)
{
  result = GEOLocationCoordinate2DMake(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C94EC9C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C94EC9E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1C94ECA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = a4(a1, a2, v14, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v16;
}

uint64_t AppConfigurationService.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);

  return v0;
}

uint64_t AppConfigurationService.__deallocating_deinit()
{
  AppConfigurationService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 153, 7);
}

uint64_t sub_1C94ECC44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A40);
  sub_1C96A3D04();
  sub_1C96A5624();
  sub_1C96A5654();

  type metadata accessor for AppConfiguration();
  sub_1C96A5654();

  v0 = sub_1C96A55A4();
  v1 = sub_1C96A5674();

  return v1;
}

uint64_t sub_1C94ECD98(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C94ECDB8, 0, 0);
}

uint64_t sub_1C94ECDB8()
{
  v1 = *(v0 + 32);
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1C94ECEE0;

  return v6(v2, v3);
}

uint64_t sub_1C94ECEE0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1C94ED02C;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_1C94ED008;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C94ED02C()
{
  v16 = v0;
  if (qword_1EDB7CFF0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7CFF8);
  v3 = v1;
  v4 = sub_1C96A6134();
  v5 = sub_1C96A7684();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v10 = sub_1C96A70A4();
    v12 = sub_1C9484164(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1C945E000, v4, v5, "Failed to load app config settings. Error=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
  }

  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t sub_1C94ED1F0(void **a1, void *a2)
{
  v3 = *a1;
  if (qword_1EDB7CFF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7CFF8);
  v5 = v3;
  v6 = sub_1C96A6134();
  v7 = sub_1C96A76A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    sub_1C946B5D0(0, &unk_1EDB7CD68);
    v10 = v5;
    v11 = sub_1C96A70C4();
    v13 = sub_1C9484164(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1C945E000, v6, v7, "About to fetch app config with settings: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
  }

  v14 = a2[6];
  v15 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v14);
  return (*(v15 + 8))(v5, v14, v15);
}

uint64_t sub_1C94ED3B8(uint64_t *a1)
{
  v2 = sub_1C96A4A54();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for AppConfiguration();
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v40 - v6;
  v7 = sub_1C96A7B74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v45 = a1[1];
  v46 = v11;
  v13 = a1[2];
  v12 = a1[3];
  if (qword_1EDB7CFF0 != -1)
  {
    swift_once();
  }

  v14 = sub_1C96A6154();
  v47 = __swift_project_value_buffer(v14, qword_1EDB7CFF8);
  v15 = sub_1C96A6134();
  v16 = sub_1C96A76A4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1C945E000, v15, v16, "About to parse app config...", v17, 2u);
    MEMORY[0x1CCA8E3D0](v17, -1, -1);
  }

  sub_1C96A4184();
  swift_allocObject();
  sub_1C96A4174();
  if (qword_1EDB7CCF8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v7, qword_1EDB7CD00);
  v19 = *(v8 + 16);
  v19(v10, v18, v7);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A48);
  v51[0] = v13;
  sub_1C96A53C4();
  v20 = sub_1C96A4164();
  sub_1C953B328(v51, v10);
  v20(v50, 0);
  if (qword_1EDB7CCD0 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v7, qword_1EDB7CCD8);
  v19(v10, v21, v7);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A50);
  v51[0] = v12;
  sub_1C96A53C4();
  v22 = sub_1C96A4164();
  sub_1C953B328(v51, v10);
  v22(v50, 0);
  sub_1C9470794(&qword_1EDB7F210, 255, type metadata accessor for AppConfiguration);
  v23 = v53;
  v24 = v49;
  sub_1C96A4154();
  if (v24)
  {

    v25 = v24;
    v26 = sub_1C96A6134();
    v27 = sub_1C96A7684();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51[0] = v29;
      *v28 = 136446210;
      v50[0] = v24;
      v30 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
      v31 = sub_1C96A70A4();
      v33 = sub_1C9484164(v31, v32, v51);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1C945E000, v26, v27, "Failed to parse app config file. Error=%{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1CCA8E3D0](v29, -1, -1);
      MEMORY[0x1CCA8E3D0](v28, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A58);
    swift_allocObject();
    return sub_1C96A5694();
  }

  else
  {
    v35 = v41;
    _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
    (*(v42 + 40))(v23, v35, v43);
    v36 = sub_1C96A6134();
    v37 = sub_1C96A76A4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1C945E000, v36, v37, "Successfully parsed app config.", v38, 2u);
      MEMORY[0x1CCA8E3D0](v38, -1, -1);
    }

    sub_1C94840A4(v23, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A58);
    swift_allocObject();
    v34 = sub_1C96A56A4();

    sub_1C9484108(v23);
  }

  return v34;
}

void sub_1C94EDA40(void *a1)
{
  if (qword_1EDB7CFF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7CFF8);
  v3 = a1;
  oslog = sub_1C96A6134();
  v4 = sub_1C96A7684();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v8 = sub_1C96A70A4();
    v10 = sub_1C9484164(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1C945E000, oslog, v4, "Failed to fetch app config. Error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1CCA8E3D0](v6, -1, -1);
    MEMORY[0x1CCA8E3D0](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t *sub_1C94EDC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a3, a5);
  v15 = sub_1C94EDDA0(a1, a2, v13, v14, a5, a6);
  (*(v11 + 8))(a3, a5);
  return v15;
}

uint64_t *sub_1C94EDDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v28 = *a4;
  v12 = sub_1C96A65E4();
  v26 = *(v12 - 8);
  v27 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v24 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C96A7724();
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C96A5404();
  MEMORY[0x1EEE9AC00](v16);
  v30[3] = a5;
  v30[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v29 = MEMORY[0x1E69E7CC0];
  sub_1C9470794(&unk_1EDB7D088, 255, MEMORY[0x1E69D67A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6390);
  sub_1C9469C60(&qword_1EDB7CE88, &unk_1EC3A6390);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A60);
  swift_allocObject();
  a4[2] = sub_1C96A5314();
  *(a4 + 152) = 7;
  sub_1C9469B6C(a1, (a4 + 3));
  sub_1C9469B6C(a2, (a4 + 13));
  sub_1C9469B6C(v30, (a4 + 8));
  sub_1C946B5D0(0, &qword_1EDB7CDB0);
  v29 = MEMORY[0x1E69E7CC0];
  sub_1C9470794(&qword_1EDB7CDC0, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68);
  sub_1C9469C60(&qword_1EDB7CE50, &qword_1EC3A4A68);
  v18 = v23;
  sub_1C96A79E4();
  v19 = v24;
  sub_1C96A6594();
  v20 = sub_1C96A7714();
  (*(v26 + 8))(v19, v27);
  v21 = (*(v25 + 8))(v15, v18);
  a4[18] = v20;
  sub_1C9470568(v21);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return a4;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C94EE2B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C94B9278;

  return sub_1C94ECD98(a1, v1);
}

uint64_t sub_1C94EE3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49[1] = a1;
  v49[2] = a2;
  v52 = a3;
  v3 = sub_1C96A4764();
  v50 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v51 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v49 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v49 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v49 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v49 - v21;
  if (qword_1EC3A4730 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v11, qword_1EC3C3DB0);
  v24 = 1;
  if (!__swift_getEnumTagSinglePayload(v23, 1, v3))
  {
    v25 = v50;
    (*(v50 + 16))(v8, v23, v3);
    sub_1C96A4704();
    v26 = *(v25 + 8);
    v26(v8, v3);
    sub_1C96A4714();
    v26(v10, v3);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v24, 1, v3);
  if (qword_1EDB7ACB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1C96A6154();
  __swift_project_value_buffer(v27, qword_1EDB7ACB8);
  sub_1C947F224(v22, v20);
  v28 = sub_1C96A6134();
  v29 = sub_1C96A76A4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v53 = v31;
    *v30 = 136315138;
    sub_1C947F224(v20, v17);
    v32 = sub_1C96A70A4();
    v34 = v33;
    sub_1C947F1BC(v20);
    v35 = sub_1C9484164(v32, v34, &v53);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_1C945E000, v28, v29, "Loading json ppt content. resourceUrl=%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1CCA8E3D0](v31, -1, -1);
    MEMORY[0x1CCA8E3D0](v30, -1, -1);
  }

  else
  {

    sub_1C947F1BC(v20);
  }

  v36 = v51;
  sub_1C947F224(v22, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    sub_1C947F1BC(v22);
    sub_1C947F1BC(v14);
    v38 = *MEMORY[0x1E69D6480];
    v39 = sub_1C96A5244();
    return (*(*(v39 - 8) + 104))(v52, v38, v39);
  }

  else
  {
    v37 = v50 + 32;
    (*(v50 + 32))(v36, v14, v3);
    v41 = sub_1C96A47B4();
    v43 = v42;
    (*(v37 - 24))(v36, v3);
    sub_1C947F1BC(v22);
    v44 = v52;
    *v52 = v41;
    v44[1] = v43;
    v45 = *MEMORY[0x1E69D6478];
    v46 = sub_1C96A5234();
    (*(*(v46 - 8) + 104))(v44, v45, v46);
    v47 = *MEMORY[0x1E69D6468];
    v48 = sub_1C96A5244();
    return (*(*(v48 - 8) + 104))(v44, v47, v48);
  }
}

uint64_t sub_1C94EE99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v55 = a5;
  v56 = a6;
  v59 = a3;
  v60 = a4;
  v57 = a1;
  v58 = a2;
  v63 = a7;
  v7 = sub_1C96A4764();
  v61 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v62 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v54 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v54 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v54 - v25;
  if (qword_1EC3A4730 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v15, qword_1EC3C3DB0);
  v28 = 1;
  if (!__swift_getEnumTagSinglePayload(v27, 1, v7))
  {
    v29 = v61;
    (*(v61 + 16))(v12, v27, v7);
    sub_1C96A4704();
    v30 = *(v29 + 8);
    v30(v12, v7);
    sub_1C96A4714();
    v30(v14, v7);
    v28 = 0;
  }

  __swift_storeEnumTagSinglePayload(v26, v28, 1, v7);
  if (qword_1EDB7ACB0 != -1)
  {
    swift_once();
  }

  v31 = sub_1C96A6154();
  __swift_project_value_buffer(v31, qword_1EDB7ACB8);
  sub_1C947F224(v26, v24);
  v32 = sub_1C96A6134();
  v33 = sub_1C96A76A4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v64 = v35;
    *v34 = 136315138;
    sub_1C947F224(v24, v21);
    v36 = sub_1C96A70A4();
    v38 = v37;
    sub_1C947F1BC(v24);
    v39 = sub_1C9484164(v36, v38, &v64);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_1C945E000, v32, v33, "Loading binary ppt content. resourceUrl=%s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1CCA8E3D0](v35, -1, -1);
    MEMORY[0x1CCA8E3D0](v34, -1, -1);
  }

  else
  {

    sub_1C947F1BC(v24);
  }

  v40 = v62;
  sub_1C947F224(v26, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v7) == 1)
  {
    sub_1C947F1BC(v26);
    sub_1C947F1BC(v18);
    v42 = *MEMORY[0x1E69D6480];
    v43 = sub_1C96A5244();
    return (*(*(v43 - 8) + 104))(v63, v42, v43);
  }

  else
  {
    v41 = v61 + 32;
    (*(v61 + 32))(v40, v18, v7);
    v45 = sub_1C96A47B4();
    v47 = v46;
    (*(v41 - 24))(v40, v7);
    sub_1C947F1BC(v26);
    v48 = v63;
    *v63 = v45;
    v48[1] = v47;
    v49 = v56;
    v48[2] = v55;
    v48[3] = v49;
    v50 = *MEMORY[0x1E69D6470];
    v51 = sub_1C96A5234();
    (*(*(v51 - 8) + 104))(v48, v50, v51);
    v52 = *MEMORY[0x1E69D6468];
    v53 = sub_1C96A5244();
    (*(*(v53 - 8) + 104))(v48, v52, v53);
    return sub_1C96A53C4();
  }
}

id sub_1C94EF0F8()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_1C94EF150();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1C94EF150()
{
  v0 = sub_1C96A5294();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C94F02CC();
  if (qword_1EDB7A440 != -1)
  {
    swift_once();
  }

  v4 = sub_1C96A51A4();
  __swift_project_value_buffer(v4, qword_1EDB7A448);
  v5 = sub_1C96A5194();
  v7 = sub_1C9611DB8(v5, v6, 4096);
  sub_1C96A5184();
  v8 = sub_1C96A5284();
  (*(v1 + 8))(v3, v0);
  [v7 setRemoteObjectInterface_];

  return v7;
}

uint64_t DatabaseManagerProxy.__allocating_init()()
{
  v0 = swift_allocObject();
  DatabaseManagerProxy.init()();
  return v0;
}

void *DatabaseManagerProxy.init()()
{
  v1 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  v2 = sub_1C96A5124();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v2;
  return v0;
}

uint64_t sub_1C94EF388()
{
  sub_1C96A50E4();
  v1 = *(v0 + 24);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v3;
    if (qword_1EDB7AC20 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC28);
  sub_1C96A3D04();
  v5 = sub_1C96A6134();
  v6 = sub_1C96A76A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 134349314;
    *(v7 + 4) = *(v0 + 24);

    *(v7 + 12) = 2082;
    if (qword_1EDB7A440 != -1)
    {
      swift_once();
    }

    v9 = sub_1C96A51A4();
    __swift_project_value_buffer(v9, qword_1EDB7A448);
    v10 = sub_1C96A5194();
    v12 = sub_1C9484164(v10, v11, &v23);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1C945E000, v5, v6, "Increasing connection reference count to %{public}ld for: %{public}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 24) == 1)
  {
    v13 = sub_1C96A6134();
    v14 = sub_1C96A76A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      if (qword_1EDB7A440 != -1)
      {
        swift_once();
      }

      v17 = sub_1C96A51A4();
      __swift_project_value_buffer(v17, qword_1EDB7A448);
      v18 = sub_1C96A5194();
      v20 = sub_1C9484164(v18, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1C945E000, v13, v14, "Resuming connection for: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1CCA8E3D0](v16, -1, -1);
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
    }

    v21 = sub_1C94EF0F8();
    [v21 resume];
  }

  return sub_1C96A50F4();
}

uint64_t sub_1C94EF6AC()
{
  sub_1C96A50E4();
  v1 = *(v0 + 24);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v3;
    if (qword_1EDB7AC20 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC28);
  sub_1C96A3D04();
  v5 = sub_1C96A6134();
  v6 = sub_1C96A76A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 134349314;
    *(v7 + 4) = *(v0 + 24);

    *(v7 + 12) = 2082;
    if (qword_1EDB7A440 != -1)
    {
      swift_once();
    }

    v9 = sub_1C96A51A4();
    __swift_project_value_buffer(v9, qword_1EDB7A448);
    v10 = sub_1C96A5194();
    v12 = sub_1C9484164(v10, v11, &v23);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1C945E000, v5, v6, "Decreasing connection reference count to %{public}ld for: %{public}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
  }

  else
  {
  }

  if (!*(v0 + 24))
  {
    v13 = sub_1C96A6134();
    v14 = sub_1C96A76A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      if (qword_1EDB7A440 != -1)
      {
        swift_once();
      }

      v17 = sub_1C96A51A4();
      __swift_project_value_buffer(v17, qword_1EDB7A448);
      v18 = sub_1C96A5194();
      v20 = sub_1C9484164(v18, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1C945E000, v13, v14, "Suspending connection for: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1CCA8E3D0](v16, -1, -1);
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
    }

    v21 = sub_1C94EF0F8();
    [v21 suspend];
  }

  return sub_1C96A50F4();
}

uint64_t DatabaseManagerProxy.deinit()
{

  return v0;
}

uint64_t DatabaseManagerProxy.__deallocating_deinit()
{
  DatabaseManagerProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t DatabaseManagerProxy.performCleanup()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78);
  swift_allocObject();
  sub_1C96A5714();
  v0 = sub_1C96A55A4();
  v1 = sub_1C96A56C4();

  return v1;
}

void sub_1C94EFB0C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1C96A3D04();
  sub_1C94EF388();
  v9 = sub_1C94EF0F8();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v31 = sub_1C94F0318;
  v32 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C963E29C;
  v30 = &block_descriptor;
  v11 = _Block_copy(&aBlock);
  sub_1C96A3D04();

  v12 = [v9 remoteObjectProxyWithErrorHandler_];
  _Block_release(v11);

  sub_1C96A79C4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A80);
  if (swift_dynamicCast())
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1C94F0310;
    *(v13 + 24) = v8;
    v31 = sub_1C94F0374;
    v32 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1C946FCF8;
    v30 = &block_descriptor_11;
    v14 = _Block_copy(&aBlock);

    [v26 cleanupWithCompletionHandler_];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {

    if (qword_1EDB7AC20 != -1)
    {
      swift_once();
    }

    v15 = sub_1C96A6154();
    __swift_project_value_buffer(v15, qword_1EDB7AC28);
    v16 = sub_1C96A6134();
    v17 = sub_1C96A7684();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock = v19;
      *v18 = 136446210;
      if (qword_1EDB7A440 != -1)
      {
        swift_once();
      }

      v20 = sub_1C96A51A4();
      __swift_project_value_buffer(v20, qword_1EDB7A448);
      v21 = sub_1C96A5194();
      v23 = sub_1C9484164(v21, v22, &aBlock);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1C945E000, v16, v17, "Remote object proxy remote interface mismatch for: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1CCA8E3D0](v19, -1, -1);
      MEMORY[0x1CCA8E3D0](v18, -1, -1);
    }

    sub_1C94F0320();
    v24 = swift_allocError();
    *v25 = 0;
    a3();
  }
}

void sub_1C94EFEEC(void *a1, void (*a2)(void *))
{
  if (qword_1EDB7AC20 != -1)
  {
    swift_once();
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC28);
  v5 = a1;
  v6 = sub_1C96A6134();
  v7 = sub_1C96A7684();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446466;
    if (qword_1EDB7A440 != -1)
    {
      swift_once();
    }

    v10 = sub_1C96A51A4();
    __swift_project_value_buffer(v10, qword_1EDB7A448);
    v11 = sub_1C96A5194();
    v13 = sub_1C9484164(v11, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2082;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v15 = sub_1C96A70A4();
    v17 = sub_1C9484164(v15, v16, &v21);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1C945E000, v6, v7, "Failed to get remote object proxy for: %{public}s with error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
  }

  sub_1C94F0320();
  v18 = swift_allocError();
  *v19 = a1;
  v20 = a1;
  a2(v18);
}

uint64_t sub_1C94F01F8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C94F0248(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1C94F029C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1C94F02CC()
{
  result = qword_1EDB77CF8;
  if (!qword_1EDB77CF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB77CF8);
  }

  return result;
}

unint64_t sub_1C94F0320()
{
  result = qword_1EC3A4A88;
  if (!qword_1EC3A4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4A88);
  }

  return result;
}

Swift::Void __swiftcall NSUserDefaults.remove(for:)(Swift::String a1)
{
  v2 = sub_1C96A7004();
  [v1 removeObjectForKey_];
}

uint64_t NamedNetworkConfiguration.name.getter()
{
  v1 = *v0;
  sub_1C96A53C4();
  return v1;
}

uint64_t NamedNetworkConfiguration.networkConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v4 = v1[4];
  v8 = v1[3];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1C94B694C(v7, &v6);
}

void __swiftcall NamedNetworkConfiguration.init(name:networkConfiguration:)(WeatherCore::NamedNetworkConfiguration *__return_ptr retstr, Swift::String_optional name, WeatherCore::NetworkConfiguration_optional *networkConfiguration)
{
  rawValue = networkConfiguration->value.raceDelayTimeIntervals._rawValue;
  if (rawValue)
  {
    v5 = networkConfiguration->value.attemptTimeoutTimeIntervals._rawValue;
    v4 = networkConfiguration->value.retryBackoffTimeIntervals._rawValue;
    v6 = *&networkConfiguration->value.maxRetryCount;
    v7 = *&networkConfiguration->value.isRequestRacingEnabled;
    is_nil = networkConfiguration->value.tokenTimeoutTimeInterval.is_nil;
    shouldRetryInvalidAuthorizationErrors = networkConfiguration->value.shouldRetryInvalidAuthorizationErrors;
    shouldRetryTimeOutsAndLostNetworkConnectionErrors = networkConfiguration->value.shouldRetryTimeOutsAndLostNetworkConnectionErrors;
    shouldRetry503Errors = networkConfiguration->value.shouldRetry503Errors;
  }

  else
  {
    LOBYTE(v7) = 0;
    shouldRetry503Errors = 0;
    shouldRetryTimeOutsAndLostNetworkConnectionErrors = 0;
    v4 = &unk_1F48FA9C0;
    v6 = xmmword_1C96AA490;
    shouldRetryInvalidAuthorizationErrors = 1;
    rawValue = MEMORY[0x1E69E7CC0];
    is_nil = 1;
    v5 = MEMORY[0x1E69E7CC0];
  }

  v12 = is_nil;
  object = 0xE000000000000000;
  if (name.value._object)
  {
    object = name.value._object;
  }

  else
  {
    name.value._countAndFlagsBits = 0;
  }

  retstr->name._countAndFlagsBits = name.value._countAndFlagsBits;
  retstr->name._object = object;
  retstr->networkConfiguration.isRequestRacingEnabled = v7 & 1;
  retstr->networkConfiguration.raceDelayTimeIntervals._rawValue = rawValue;
  retstr->networkConfiguration.shouldRetry503Errors = shouldRetry503Errors;
  retstr->networkConfiguration.shouldRetryTimeOutsAndLostNetworkConnectionErrors = shouldRetryTimeOutsAndLostNetworkConnectionErrors;
  retstr->networkConfiguration.shouldRetryInvalidAuthorizationErrors = shouldRetryInvalidAuthorizationErrors;
  *&retstr->networkConfiguration.maxRetryCount = v6;
  retstr->networkConfiguration.tokenTimeoutTimeInterval.is_nil = v12;
  retstr->networkConfiguration.attemptTimeoutTimeIntervals._rawValue = v5;
  retstr->networkConfiguration.retryBackoffTimeIntervals._rawValue = v4;
}

uint64_t NamedNetworkConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AA0);
  OUTLINED_FUNCTION_1();
  v11 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  OUTLINED_FUNCTION_0_5();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948067C();
  sub_1C96A7F54();
  LOBYTE(v13) = 0;
  sub_1C96A7D24();
  if (v1)
  {
    return (*(v11 + 8))(v7, v3);
  }

  v13 = v17[0];
  v14 = v17[1];
  v15 = v17[2];
  v16 = v17[3];
  v18 = 1;
  sub_1C94B694C(v17, v12);
  sub_1C94F0754();
  sub_1C96A7D74();
  v9 = (v11 + 8);
  v12[0] = v13;
  v12[1] = v14;
  v12[2] = v15;
  v12[3] = v16;
  sub_1C94BDA7C(v12);
  return (*v9)(v7, v3);
}

unint64_t sub_1C94F0754()
{
  result = qword_1EDB7E848;
  if (!qword_1EDB7E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E848);
  }

  return result;
}

uint64_t sub_1C94F07A8()
{
  v0 = sub_1C96A7BE4();

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

uint64_t sub_1C94F0834@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94F07A8();
  *a1 = result;
  return result;
}

uint64_t sub_1C94F0864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C94790AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C94F0890@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94F07A8();
  *a1 = result;
  return result;
}

uint64_t sub_1C94F08D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94F07FC();
  *a1 = result;
  return result;
}

uint64_t sub_1C94F0900(uint64_t a1)
{
  v2 = sub_1C948067C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C94F093C(uint64_t a1)
{
  v2 = sub_1C948067C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static NamedNetworkConfiguration.== infix(_:_:)(_OWORD *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_0_5();
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 4);
  v28[2] = *(a2 + 3);
  v28[3] = v7;
  v8 = *(a2 + 2);
  v10 = v9 == v5 && v4 == v6;
  v28[0] = *(a2 + 1);
  v28[1] = v8;
  if (v10 || (v11 = 0, (sub_1C96A7DE4() & 1) != 0))
  {
    v12 = a1[2];
    v21 = a1[1];
    v22 = v12;
    v13 = a1[4];
    v23 = a1[3];
    v24 = v13;
    v14 = *(a2 + 2);
    v17 = *(a2 + 1);
    v18 = v14;
    v15 = *(a2 + 4);
    v19 = *(a2 + 3);
    v20 = v15;
    v11 = static NetworkConfiguration.== infix(_:_:)(&v21, &v17);
    v25[0] = v17;
    v25[1] = v18;
    v25[2] = v19;
    v25[3] = v20;
    sub_1C94B694C(v27, v26);
    sub_1C94B694C(v28, v26);
    sub_1C94BDA7C(v25);
    v26[0] = v21;
    v26[1] = v22;
    v26[2] = v23;
    v26[3] = v24;
    sub_1C94BDA7C(v26);
  }

  return v11 & 1;
}

uint64_t sub_1C94F0A80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1C94F0AC0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1C94F0B18()
{
  result = qword_1EC3A4AA8;
  if (!qword_1EC3A4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4AA8);
  }

  return result;
}

uint64_t static GeocodedLocationEntity.version.getter()
{
  swift_beginAccess();
  v0 = *a004_0;
  sub_1C96A53C4();
  return v0;
}

uint64_t static GeocodedLocationEntity.version.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *a004_0 = a1;
  qword_1EC3A4AB8 = a2;
}

uint64_t sub_1C94F0C90@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EC3A4AB8;
  *a1 = *a004_0;
  a1[1] = v2;
  return sub_1C96A53C4();
}

uint64_t sub_1C94F0CE0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *a004_0 = v2;
  qword_1EC3A4AB8 = v1;
  sub_1C96A53C4();
}

uint64_t GeocodedLocationEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC0);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  *a1 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE0);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  a1[1] = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v8);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v8);
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  result = sub_1C96A6344();
  a1[2] = result;
  return result;
}

uint64_t sub_1C94F0F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v44 = a2;
  v45 = a3;
  v43 = a1;
  v46 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v46);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B40);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC0);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v14 = OUTLINED_FUNCTION_7(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  *a4 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE0);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a4[1] = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v16);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v16);
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a4[2] = sub_1C96A6344();
  v47 = v43;
  v48 = v44;
  sub_1C96A3D04();
  sub_1C96A6364();

  v37 = v45;
  sub_1C9489760(v45, v42);
  sub_1C94892C0(&qword_1EDB7D0B8);
  sub_1C94892C0(&qword_1EDB7ADD8);
  sub_1C96A6284();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B48);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v38);
  sub_1C96A6364();

  v47 = sub_1C96A4D74();
  v48 = v39;
  sub_1C96A6364();

  return sub_1C94DBDDC(v37);
}

uint64_t sub_1C94F1358(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001C96CC210 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C96A7DE4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C94F1468(unsigned __int8 a1)
{
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](a1);
  return sub_1C96A7F24();
}

uint64_t sub_1C94F14B0(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461636F6CLL;
  }

  return 0xD000000000000012;
}

uint64_t sub_1C94F1510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C94F1358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C94F1538@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94B7BF0();
  *a1 = result;
  return result;
}

uint64_t sub_1C94F1560(uint64_t a1)
{
  v2 = sub_1C94F17DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C94F159C(uint64_t a1)
{
  v2 = sub_1C94F17DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GeocodedLocationEntity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AF0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v18 = v1[2];
  v19 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1C94F17DC();
  sub_1C96A3D04();
  sub_1C96A7F54();
  v21 = v10;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_4_0();
  sub_1C9469CB4(v12, v13);
  OUTLINED_FUNCTION_8_6();

  if (!v11)
  {
    v21 = v19;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v14, v15);
    sub_1C96A7D74();
    v21 = v18;
    v20 = 2;
    OUTLINED_FUNCTION_8_6();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C94F17DC()
{
  result = qword_1EC3A4AF8;
  if (!qword_1EC3A4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4AF8);
  }

  return result;
}

uint64_t GeocodedLocationEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B10);
  OUTLINED_FUNCTION_1();
  v45 = v4;
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC0);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v10 = OUTLINED_FUNCTION_7(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v49 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE0);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AE8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  v51 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v12);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v12);
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  v33 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1C94F17DC();
  v34 = v48;
  v35 = v47;
  sub_1C96A7F44();
  if (!v34)
  {
    v36 = v45;
    v52 = 0;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8);
    OUTLINED_FUNCTION_11_0();

    v38 = v53;
    v52 = 1;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B20, &qword_1EC3A4AE8);
    sub_1C96A7CB4();

    v51 = v53;
    v52 = 2;
    v39 = v46;
    OUTLINED_FUNCTION_11_0();
    (*(v36 + 8))(v35, v39);

    v40 = v53;
    v41 = v44;
    v42 = v51;
    *v44 = v38;
    v41[1] = v42;
    v41[2] = v40;
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v50);
}

unint64_t sub_1C94F1CBC()
{
  result = qword_1EDB7E110;
  if (!qword_1EDB7E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E110);
  }

  return result;
}

unint64_t sub_1C94F1D14()
{
  result = qword_1EDB7E128;
  if (!qword_1EDB7E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E128);
  }

  return result;
}

unint64_t sub_1C94F1D6C()
{
  result = qword_1EDB7E100;
  if (!qword_1EDB7E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E100);
  }

  return result;
}

unint64_t sub_1C94F1DC0()
{
  result = qword_1EDB7E108;
  if (!qword_1EDB7E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E108);
  }

  return result;
}

unint64_t sub_1C94F1E18()
{
  result = qword_1EDB7E120;
  if (!qword_1EDB7E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E120);
  }

  return result;
}

unint64_t sub_1C94F1E94()
{
  result = qword_1EDB7E118;
  if (!qword_1EDB7E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E118);
  }

  return result;
}

uint64_t sub_1C94F1EE8(uint64_t a1)
{
  v2 = sub_1C94F2390();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C94F1F34(uint64_t a1)
{
  v2 = sub_1C94F2390();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C94F1F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94F2390();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C94F2018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94F2390();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C94F2064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94F2390();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C94F20B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C94F2390();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1C94F211C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C94F215C(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for GeocodedLocationEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C94F228C()
{
  result = qword_1EC3A4B28;
  if (!qword_1EC3A4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4B28);
  }

  return result;
}

unint64_t sub_1C94F22E4()
{
  result = qword_1EC3A4B30;
  if (!qword_1EC3A4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4B30);
  }

  return result;
}

unint64_t sub_1C94F233C()
{
  result = qword_1EC3A4B38;
  if (!qword_1EC3A4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4B38);
  }

  return result;
}

unint64_t sub_1C94F2390()
{
  result = qword_1EDB7E130;
  if (!qword_1EDB7E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E130);
  }

  return result;
}

uint64_t PrecipitationNotificationDeliveryScheduler.__allocating_init(notificationStore:userNotificationCenter:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  return result;
}

uint64_t PrecipitationNotificationDeliveryScheduler.init(notificationStore:userNotificationCenter:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t PrecipitationNotificationDeliveryScheduler.__deallocating_deinit()
{
  PrecipitationNotificationDeliveryScheduler.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t PrecipitationNotificationDeliveryScheduler.scheduleNotification(_:with:on:)(uint64_t *a1, const void *a2, uint64_t a3)
{
  v122 = a3;
  v123 = *v3;
  v6 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  v7 = OUTLINED_FUNCTION_9(v6);
  v121 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v124 = v9;
  v125 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrecipitationNotification();
  v11 = OUTLINED_FUNCTION_9(v10);
  v114 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v116 = v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v107 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (v107 - v18);
  v115 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (v107 - v22);
  memcpy(__dst, a2, sizeof(__dst));
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_5_2();
    swift_once();
  }

  v24 = sub_1C96A6154();
  v25 = __swift_project_value_buffer(v24, qword_1EDB7AC90);
  OUTLINED_FUNCTION_3_0();
  sub_1C94F7508(a1, v23, v26);
  sub_1C94F712C(__dst, v128);
  v27 = sub_1C96A6134();
  v28 = sub_1C96A76A4();
  sub_1C94F7188(__dst);
  v29 = os_log_type_enabled(v27, v28);
  v119 = a1;
  if (v29)
  {
    OUTLINED_FUNCTION_14_3();
    v30 = swift_slowAlloc();
    v120 = v16;
    v31 = v30;
    v118 = swift_slowAlloc();
    v126 = v118;
    *v31 = 136446466;
    v32 = *v23;
    v33 = v23[1];
    sub_1C96A53C4();
    OUTLINED_FUNCTION_0_6();
    sub_1C94F7568(v23, v34);
    v35 = sub_1C9484164(v32, v33, &v126);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    v36 = v25;
    v37 = __dst[0];
    v38 = __dst[1];
    v117 = __dst[4];
    v113 = __dst[5];
    v39 = __dst[6];
    v40 = __dst[7];
    v127[0] = 0;
    v127[1] = 0xE000000000000000;
    sub_1C94F712C(__dst, v128);
    sub_1C96A7A94();

    v128[0] = 0x3A6461657268545BLL;
    v128[1] = 0xE900000000000020;
    MEMORY[0x1CCA8CB00](v39, v40);
    MEMORY[0x1CCA8CB00](0x656C746954203B5DLL, 0xEA0000000000203ALL);
    v41 = v38;
    v25 = v36;
    a1 = v119;
    MEMORY[0x1CCA8CB00](v37, v41);
    MEMORY[0x1CCA8CB00](0x203A79646F42203BLL, 0xE800000000000000);
    MEMORY[0x1CCA8CB00](v117, v113);
    sub_1C94F7188(__dst);
    v42 = sub_1C9484164(v128[0], v128[1], &v126);

    *(v31 + 14) = v42;
    _os_log_impl(&dword_1C945E000, v27, v28, "Scheduling notification: %{public}s, content: %s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
    v16 = v120;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  else
  {

    OUTLINED_FUNCTION_0_6();
    sub_1C94F7568(v23, v43);
  }

  v44 = sub_1C94F3154(v122);
  OUTLINED_FUNCTION_3_0();
  sub_1C94F7508(a1, v19, v45);
  v46 = v44;
  v47 = sub_1C96A6134();
  v48 = sub_1C96A76A4();

  if (os_log_type_enabled(v47, v48))
  {
    v120 = v25;
    OUTLINED_FUNCTION_14_3();
    v49 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_0();
    v50 = swift_slowAlloc();
    v128[0] = v50;
    *v49 = 134349314;
    v51 = v16;
    if (v44)
    {
      [v46 timeInterval];
    }

    else
    {
      v52 = 0;
    }

    *(v49 + 4) = v52;
    *(v49 + 12) = 2082;
    v54 = *v19;
    v55 = v19[1];
    sub_1C96A53C4();
    OUTLINED_FUNCTION_0_6();
    sub_1C94F7568(v19, v56);
    v57 = sub_1C9484164(v54, v55, v128);

    *(v49 + 14) = v57;
    _os_log_impl(&dword_1C945E000, v47, v48, "Calculated notification trigger interval: %{public}f for notification: %{public}s", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();

    a1 = v119;
    v16 = v51;
  }

  else
  {

    OUTLINED_FUNCTION_0_6();
    sub_1C94F7568(v19, v53);
  }

  v58 = *a1;
  v59 = a1[1];
  sub_1C946B5D0(0, &qword_1EC3A4B50);
  memcpy(v128, __dst, sizeof(v128));
  sub_1C94F712C(__dst, v127);
  sub_1C96A53C4();
  v60 = sub_1C94F8768(v128);
  sub_1C946B5D0(0, &qword_1EC3A4B58);
  v112 = v46;
  v111 = sub_1C94F333C(v58, v59, v60, v44);
  OUTLINED_FUNCTION_3_0();
  sub_1C94F7508(a1, v16, v61);
  v62 = sub_1C96A6134();
  v63 = sub_1C96A76A4();
  v64 = os_log_type_enabled(v62, v63);
  v113 = v44;
  if (v64)
  {
    v65 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_0();
    v66 = swift_slowAlloc();
    v128[0] = v66;
    *v65 = 136446210;
    v67 = *v16;
    v68 = *(v16 + 1);
    sub_1C96A53C4();
    OUTLINED_FUNCTION_0_6();
    sub_1C94F7568(v16, v69);
    v70 = sub_1C9484164(v67, v68, v128);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_1C945E000, v62, v63, "Created notification request: %{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  else
  {

    OUTLINED_FUNCTION_0_6();
    sub_1C94F7568(v16, v71);
  }

  sub_1C96A5444();
  v110 = v128[0];
  v117 = sub_1C946B5D0(0, &qword_1EDB7CDB0);
  v72 = sub_1C96A7704();
  v120 = type metadata accessor for PrecipitationNotificationDeliverySchedule;
  v73 = v122;
  v74 = v125;
  sub_1C94F7508(v122, v125, type metadata accessor for PrecipitationNotificationDeliverySchedule);
  v118 = *(v121 + 80);
  v75 = (v118 + 16) & ~v118;
  v76 = v118 | 7;
  OUTLINED_FUNCTION_26_2();
  v121 = v76;
  v77 = swift_allocObject();
  sub_1C94F75C0(v74, v77 + v75, type metadata accessor for PrecipitationNotificationDeliverySchedule);
  sub_1C96A5774();

  v78 = sub_1C96A7704();
  sub_1C94F7508(v73, v74, v120);
  OUTLINED_FUNCTION_26_2();
  v79 = swift_allocObject() + v75;
  v108 = type metadata accessor for PrecipitationNotificationDeliverySchedule;
  sub_1C94F75C0(v74, v79, type metadata accessor for PrecipitationNotificationDeliverySchedule);
  v107[1] = sub_1C96A5654();

  v80 = sub_1C96A7704();
  v81 = v73;
  v82 = v73;
  v83 = v125;
  v84 = v120;
  sub_1C94F7508(v82, v125, v120);
  v85 = v124;
  v86 = swift_allocObject();
  sub_1C94F75C0(v83, v86 + v75, type metadata accessor for PrecipitationNotificationDeliverySchedule);
  v109 = sub_1C96A5654();

  v87 = sub_1C96A7704();
  OUTLINED_FUNCTION_3_0();
  v88 = v116;
  sub_1C94F7508(v119, v116, v89);
  v90 = v125;
  sub_1C94F7508(v81, v125, v84);
  v91 = (*(v114 + 80) + 24) & ~*(v114 + 80);
  v92 = (v115 + v118 + v91) & ~v118;
  v93 = (v85 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  *(v94 + 16) = v110;
  sub_1C94F75C0(v88, v94 + v91, type metadata accessor for PrecipitationNotification);
  v95 = v90;
  v96 = v108;
  sub_1C94F75C0(v95, v94 + v92, v108);
  memcpy((v94 + v93), __dst, 0x48uLL);
  v97 = v111;
  *(v94 + ((v93 + 79) & 0xFFFFFFFFFFFFFFF8)) = v111;
  sub_1C94F712C(__dst, v128);
  sub_1C96A3D04();
  v98 = v97;
  sub_1C96A5654();

  v99 = sub_1C96A7704();
  v100 = v125;
  sub_1C94F7508(v122, v125, v120);
  v101 = (v118 + 24) & ~v118;
  v102 = swift_allocObject();
  *(v102 + 16) = v113;
  sub_1C94F75C0(v100, v102 + v101, v96);
  v103 = v112;
  sub_1C96A5654();

  v104 = sub_1C96A55A4();
  v105 = sub_1C96A56C4();

  return v105;
}

id sub_1C94F3154(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_1C96A4A54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  sub_1C94D63E8(a1 + *(v9 + 20), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C9470AFC(v4, &unk_1EC3A5430);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_1C96A49C4();
  if (v10 <= 0.0)
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  sub_1C96A49C4();
  v12 = [objc_opt_self() triggerWithTimeInterval:0 repeats:v11];
  (*(v6 + 8))(v8, v5);
  return v12;
}

id sub_1C94F333C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1C96A7004();

  v7 = [swift_getObjCClassFromMetadata() requestWithIdentifier:v6 content:a3 trigger:a4];

  return v7;
}

uint64_t sub_1C94F33C0(uint64_t a1)
{
  v32 = *v1;
  v3 = type metadata accessor for NotificationSubscription(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v10 = sub_1C96A6154();
  __swift_project_value_buffer(v10, qword_1EDB7AC90);
  sub_1C94F7508(a1, v9, type metadata accessor for NotificationSubscription);
  v11 = sub_1C96A6134();
  v12 = sub_1C96A76A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = v4;
    v15 = swift_slowAlloc();
    v34 = v15;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1C94F75C0(v9, v6, type metadata accessor for NotificationSubscription);
    v16 = *v6;
    v17 = v6[1];
    sub_1C96A53C4();
    sub_1C94F7568(v6, type metadata accessor for NotificationSubscription);
    v18 = sub_1C9484164(v16, v17, &v34);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_1C945E000, v11, v12, "Marking notifications as delivered for subscription: %{private,mask.hash}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    v19 = v15;
    v4 = v14;
    MEMORY[0x1CCA8E3D0](v19, -1, -1);
    MEMORY[0x1CCA8E3D0](v13, -1, -1);
  }

  else
  {

    sub_1C94F7568(v9, type metadata accessor for NotificationSubscription);
  }

  v31 = sub_1C946B5D0(0, &qword_1EDB7CDB0);
  v20 = sub_1C96A7704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B78);
  sub_1C96A5774();

  v21 = sub_1C96A7704();
  v30 = type metadata accessor for NotificationSubscription;
  sub_1C94F7508(a1, v6, type metadata accessor for NotificationSubscription);
  v22 = v6;
  v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v24 = swift_allocObject();
  v29 = a1;
  sub_1C94F75C0(v22, v24 + v23, type metadata accessor for NotificationSubscription);
  sub_1C96A5654();

  v25 = sub_1C96A7704();
  sub_1C94F7508(v29, v22, v30);
  v26 = swift_allocObject();
  sub_1C94F75C0(v22, v26 + v23, type metadata accessor for NotificationSubscription);
  v27 = sub_1C96A56D4();

  return v27;
}

uint64_t sub_1C94F3848(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46[4] = a3;
  v10 = *v5;
  v11 = type metadata accessor for NotificationSubscription(0);
  v12 = OUTLINED_FUNCTION_9(v11);
  v47 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = v46 - v18;
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_5_2();
    swift_once();
  }

  v20 = sub_1C96A6154();
  __swift_project_value_buffer(v20, qword_1EDB7AC90);
  OUTLINED_FUNCTION_2_8();
  v48 = a1;
  sub_1C94F7508(a1, v19, v21);
  v22 = sub_1C96A6134();
  v23 = sub_1C96A76A4();
  v24 = OUTLINED_FUNCTION_27_1();
  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_14_3();
    v26 = swift_slowAlloc();
    v46[3] = a5;
    v27 = v26;
    OUTLINED_FUNCTION_15_0();
    v28 = swift_slowAlloc();
    v46[1] = v10;
    v46[2] = a4;
    v29 = v28;
    v49 = v28;
    *v27 = 141558275;
    OUTLINED_FUNCTION_25();
    *(v27 + 4) = v30;
    *(v27 + 12) = 2081;
    OUTLINED_FUNCTION_4_6();
    sub_1C94F75C0(v19, v16, v31);
    v32 = a2;
    v34 = *v16;
    v33 = v16[1];
    sub_1C96A53C4();
    OUTLINED_FUNCTION_1_6();
    sub_1C94F7568(v16, v35);
    v36 = sub_1C9484164(v34, v33, &v49);

    *(v27 + 14) = v36;
    _os_log_impl(&dword_1C945E000, v22, v23, v32, v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  else
  {

    OUTLINED_FUNCTION_1_6();
    sub_1C94F7568(v19, v37);
  }

  sub_1C946B5D0(0, &qword_1EDB7CDB0);
  v38 = sub_1C96A7704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B78);
  sub_1C96A5774();

  v39 = sub_1C96A7704();
  OUTLINED_FUNCTION_2_8();
  sub_1C94F7508(v48, v16, v40);
  v41 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_4_6();
  sub_1C94F75C0(v16, v42 + v41, v43);
  v44 = sub_1C96A5654();

  return v44;
}

void sub_1C94F3B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, const void *a6)
{
  v11 = objc_autoreleasePoolPush();
  sub_1C94F3CA8(a3, a4, a5, a6, &v13);
  objc_autoreleasePoolPop(v11);
  if (!v6)
  {
    MEMORY[0x1EEE9AC00](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B88);
    swift_allocObject();
    sub_1C96A5714();
  }
}

uint64_t sub_1C94F3CA8(uint64_t a1, uint64_t *a2, uint64_t *a3, const void *a4, void *a5)
{
  v37 = a5;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v28 - v7;
  v9 = sub_1C96A4A54();
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C96A41C4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A4204();
  swift_allocObject();
  sub_1C96A41F4();
  (*(v13 + 104))(v15, *MEMORY[0x1E6967FA8], v12);
  sub_1C96A41D4();
  NotificationStore.deliverySchedules.getter();
  if (v5)
  {

    *v37 = v5;
  }

  else
  {
    v29 = v11;
    v28[2] = sub_1C96A6304();

    v17 = v32[1];
    v28[0] = *v32;
    v18 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
    v19 = v31;
    sub_1C94D63E8(v31 + *(v18 + 20), v8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v9);
    v28[1] = v9;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C96A53C4();
      _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
      {
        sub_1C9470AFC(v8, &unk_1EC3A5430);
      }
    }

    else
    {
      (*(v33 + 32))(v29, v8, v9);
      sub_1C96A53C4();
    }

    v21 = *v19;
    v22 = v19[1];
    type metadata accessor for PrecipitationNotification();
    sub_1C94F7810();
    sub_1C96A53C4();
    v23 = sub_1C96A41E4();
    v25 = v24;
    memcpy(__dst, v30, sizeof(__dst));
    sub_1C94F7868();
    v26 = sub_1C96A41E4();
    LOBYTE(v34[0]) = 0;
    DeliveryScheduleEntity.init(id:date:subscription:notification:notificationContent:state:)(v28[0], v17, v29, v21, v22, v23, v25, v26, v35, v27, v34);
    sub_1C96A62A4();
    v34[0] = v35[0];
    v34[1] = v35[1];
    v34[2] = v35[2];
    v34[3] = v35[3];
    sub_1C94F77AC(v34);
  }

  return result;
}

uint64_t sub_1C94F41D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return sub_1C94F33C0(a4);
  }

  sub_1C94F4250();
  if (v4)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78);
  swift_allocObject();
  return sub_1C96A56A4();
}

uint64_t sub_1C94F4250()
{
  v1 = sub_1C96A61C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A5444();
  v5 = objc_autoreleasePoolPush();
  NotificationStore.deliverySchedules.getter();
  if (!v0)
  {
    sub_1C96A6334();

    v8[3] = sub_1C96A4A54();
    v8[4] = MEMORY[0x1E69D6130];
    __swift_allocate_boxed_opaque_existential_1(v8);
    sub_1C96A49B4();
    sub_1C96A6204();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    sub_1C96A63C4();
    (*(v2 + 8))(v4, v1);
  }

  objc_autoreleasePoolPop(v5);
  sub_1C96A5434();
}

uint64_t PrecipitationNotificationDeliveryScheduler.mostRecentSchedule(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v104 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  v110 = (v100 - v7);
  v114 = sub_1C96A61C4();
  v8 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_24();
  v105 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_1();
  v107 = v11;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_1();
  v106 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_1();
  v108 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_1();
  v115 = v17;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  v109 = v100 - v19;
  v20 = type metadata accessor for NotificationSubscription(0);
  v21 = OUTLINED_FUNCTION_7(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_24();
  v102 = v22;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_1();
  v113 = v24;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v100 - v26;
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_5_2();
    swift_once();
  }

  v28 = sub_1C96A6154();
  v29 = __swift_project_value_buffer(v28, qword_1EDB7AC90);
  OUTLINED_FUNCTION_2_8();
  sub_1C94F7508(a1, v27, v30);
  v103 = v29;
  v31 = sub_1C96A6134();
  v32 = sub_1C96A76A4();
  v33 = OUTLINED_FUNCTION_27_1();
  v35 = os_log_type_enabled(v33, v34);
  v111 = v8;
  if (v35)
  {
    OUTLINED_FUNCTION_14_3();
    v36 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_0();
    v37 = swift_slowAlloc();
    v101 = v3;
    v38 = v37;
    *&v131[0] = v37;
    *v36 = 141558275;
    OUTLINED_FUNCTION_25();
    *(v36 + 4) = v39;
    *(v36 + 12) = 2081;
    OUTLINED_FUNCTION_4_6();
    v40 = v113;
    sub_1C94F75C0(v27, v113, v41);
    v112 = a1;
    v43 = *v40;
    v42 = v40[1];
    sub_1C96A53C4();
    OUTLINED_FUNCTION_1_6();
    sub_1C94F7568(v40, v44);
    v45 = sub_1C9484164(v43, v42, v131);
    a1 = v112;

    *(v36 + 14) = v45;
    _os_log_impl(&dword_1C945E000, v31, v32, "Fetching recent notification for subscription: %{private,mask.hash}s", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v3 = v101;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  else
  {

    OUTLINED_FUNCTION_1_6();
    sub_1C94F7568(v27, v46);
  }

  v47 = *(v3 + 24);
  sub_1C96A5444();
  v48 = *&v131[0];
  v49 = v134;
  NotificationStore.deliverySchedules.getter();
  if (v49)
  {
    sub_1C96A5434();
  }

  v101 = v47;
  v134 = v48;
  v100[1] = sub_1C96A6314();

  v51 = *a1;
  v50 = a1[1];
  v52 = MEMORY[0x1E69E6158];
  *(&v125 + 1) = MEMORY[0x1E69E6158];
  *&v126 = MEMORY[0x1E69D62D8];
  v53 = MEMORY[0x1E69D62D8];
  *&v124 = v51;
  *(&v124 + 1) = v50;
  sub_1C96A53C4();
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v124);
  *(&v125 + 1) = v52;
  *&v126 = v53;
  v54 = v53;
  *&v124 = 0x65726576696C6564;
  *(&v124 + 1) = 0xE900000000000064;
  v55 = v107;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v124);
  *(&v125 + 1) = v52;
  *&v126 = v54;
  *&v124 = 0x64656E65706FLL;
  *(&v124 + 1) = 0xE600000000000000;
  v56 = v105;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v124);
  v57 = v106;
  sub_1C96A6264();
  v112 = a1;
  v58 = *(v111 + 8);
  v59 = v114;
  v58(v56, v114);
  v58(v55, v59);
  *(&v125 + 1) = v52;
  *&v126 = MEMORY[0x1E69D62D8];
  *&v124 = 0x676E69646E6570;
  *(&v124 + 1) = 0xE700000000000000;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v124);
  v60 = v108;
  sub_1C96A6264();
  v58(v55, v59);
  v58(v57, v59);
  v61 = v109;
  v62 = v115;
  sub_1C96A6214();
  v58(v60, v59);
  v58(v62, v59);
  v63 = v110;
  *v110 = 1702125924;
  *(v63 + 8) = 0xE400000000000000;
  v64 = *MEMORY[0x1E69D6220];
  v65 = sub_1C96A63E4();
  OUTLINED_FUNCTION_6();
  (*(v66 + 104))(v63, v64, v65);
  __swift_storeEnumTagSinglePayload(v63, 0, 1, v65);
  sub_1C96A62D4();
  v115 = 0;
  v68 = v63;
  v69 = v112;

  sub_1C9470AFC(v68, &qword_1EC3A4B60);
  v58(v61, v114);
  v124 = v131[0];
  v125 = v131[1];
  v126 = v132;
  v127 = v133;
  v129 = v133;
  v130 = *(v131 + 8);
  v70 = *&v131[0];
  v71 = *(&v131[1] + 1);
  v128 = v132;
  if (!*&v131[0])
  {
    OUTLINED_FUNCTION_2_8();
    v83 = v102;
    sub_1C94F7508(v69, v102, v84);
    v85 = sub_1C96A6134();
    v86 = sub_1C96A76A4();
    v87 = OUTLINED_FUNCTION_27_1();
    if (os_log_type_enabled(v87, v88))
    {
      OUTLINED_FUNCTION_14_3();
      v89 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_0();
      v90 = swift_slowAlloc();
      *&v123[0] = v90;
      *v89 = 141558275;
      OUTLINED_FUNCTION_25();
      *(v89 + 4) = v91;
      *(v89 + 12) = 2081;
      OUTLINED_FUNCTION_4_6();
      v92 = v113;
      sub_1C94F75C0(v83, v113, v93);
      v94 = *v92;
      v95 = v92[1];
      sub_1C96A53C4();
      OUTLINED_FUNCTION_1_6();
      sub_1C94F7568(v92, v96);
      v97 = sub_1C9484164(v94, v95, v123);

      *(v89 + 14) = v97;
      _os_log_impl(&dword_1C945E000, v85, v86, "Failed to find delivery schedule for subscription: %{private,mask.hash}s", v89, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

    else
    {

      OUTLINED_FUNCTION_1_6();
      sub_1C94F7568(v83, v98);
    }

    v99 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
    __swift_storeEnumTagSinglePayload(v104, 1, 1, v99);
    sub_1C96A5434();
  }

  v123[0] = v131[0];
  v123[1] = v131[1];
  v123[2] = v132;
  v123[3] = v133;
  sub_1C94F7620(v123, v122);
  v72 = sub_1C96A6134();
  v73 = sub_1C96A76A4();
  sub_1C9470AFC(&v124, &qword_1EC3A4B68);
  if (os_log_type_enabled(v72, v73))
  {
    OUTLINED_FUNCTION_14_3();
    v74 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_0();
    v75 = swift_slowAlloc();
    v121 = v75;
    *v74 = 141558275;
    OUTLINED_FUNCTION_25();
    *(v74 + 4) = v76;
    *(v74 + 12) = 2081;
    v116[8] = v70;
    v117 = v130;
    v118 = v71;
    v119 = v128;
    v120 = v129;
    v122[2] = v126;
    v122[3] = v127;
    v122[0] = v124;
    v122[1] = v125;
    sub_1C94F7620(v122, v116);
    v77 = sub_1C96A70A4();
    v79 = sub_1C9484164(v77, v78, &v121);

    *(v74 + 14) = v79;
    _os_log_impl(&dword_1C945E000, v72, v73, "Found delivery schedule: %{private,mask.hash}s", v74, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  OUTLINED_FUNCTION_2_8();
  v80 = v104;
  sub_1C94F7508(v69, v104, v81);
  v82 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  sub_1C96A6354();
  sub_1C9470AFC(&v124, &qword_1EC3A4B68);
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v82);
  sub_1C96A5434();
}

Swift::Void __swiftcall PrecipitationNotificationDeliveryScheduler.removeAllNotifications()()
{
  v1 = v0;
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_5_2();
    swift_once();
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7AC90);
  v3 = sub_1C96A6134();
  v4 = sub_1C96A76A4();
  v5 = OUTLINED_FUNCTION_27_1();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C945E000, v3, v4, "Removing all notifications", v7, 2u);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  v8 = *(v1 + 16);
  [v8 removeAllPendingNotificationRequests];

  [v8 removeAllDeliveredNotifications];
}

uint64_t sub_1C94F4F34(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v117 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v109 = &v104 - v7;
  v110 = sub_1C96A61C4();
  v115 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v106 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v104 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v104 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v104 - v14;
  v15 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v111 = (&v104 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v113 = &v104 - v20;
  v21 = *a1;
  v104 = a2;
  v112 = *(a2 + 24);
  sub_1C96A5444();
  v118 = v126;
  v22 = sub_1C946D04C(v21);
  v23 = 0;
  v130 = v21 & 0xC000000000000001;
  v24 = v21;
  v119 = v21 & 0xFFFFFFFFFFFFFF8;
  v25 = MEMORY[0x1E69E7CC0];
  while (v22 != v23)
  {
    if (v130)
    {
      v26 = MEMORY[0x1CCA8D440](v23, v24);
    }

    else
    {
      if (v23 >= *(v119 + 16))
      {
        goto LABEL_45;
      }

      v26 = *(v24 + 8 * v23 + 32);
    }

    v3 = v26;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v27 = [v26 identifier];
    a2 = sub_1C96A7024();
    v29 = v28;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C94FB3F4();
      v25 = v32;
    }

    v30 = *(v25 + 16);
    v3 = (v30 + 1);
    if (v30 >= *(v25 + 24) >> 1)
    {
      sub_1C94FB3F4();
      v25 = v33;
    }

    *(v25 + 16) = v3;
    v31 = v25 + 16 * v30;
    *(v31 + 32) = a2;
    *(v31 + 40) = v29;
    ++v23;
  }

  v3 = v113;
  if (qword_1EDB7AC88 == -1)
  {
    goto LABEL_14;
  }

LABEL_47:
  swift_once();
LABEL_14:
  v34 = sub_1C96A6154();
  v35 = __swift_project_value_buffer(v34, qword_1EDB7AC90);
  sub_1C94F7508(v117, v3, type metadata accessor for NotificationSubscription);
  sub_1C96A53C4();
  v130 = v35;
  v36 = sub_1C96A6134();
  v37 = sub_1C96A76A4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    a2 = swift_slowAlloc();
    *&v126 = a2;
    *v38 = 136446723;
    v39 = MEMORY[0x1CCA8CC40](v25, MEMORY[0x1E69E6158]);
    v41 = sub_1C9484164(v39, v40, &v126);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2160;
    *(v38 + 14) = 1752392040;
    *(v38 + 22) = 2081;
    v42 = v3;
    v43 = v111;
    sub_1C94F75C0(v42, v111, type metadata accessor for NotificationSubscription);
    v44 = *v43;
    v45 = v43[1];
    sub_1C96A53C4();
    sub_1C94F7568(v43, type metadata accessor for NotificationSubscription);
    v46 = sub_1C9484164(v44, v45, &v126);

    *(v38 + 24) = v46;
    _os_log_impl(&dword_1C945E000, v36, v37, "Found pending request identifiers: %{public}s for subscription: %{private,mask.hash}s", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](a2, -1, -1);
    MEMORY[0x1CCA8E3D0](v38, -1, -1);
  }

  else
  {

    sub_1C94F7568(v3, type metadata accessor for NotificationSubscription);
  }

  v47 = v114;
  NotificationStore.deliverySchedules.getter();
  if (v47)
  {

    sub_1C96A5434();

    return a2;
  }

  v119 = sub_1C96A6314();

  sub_1C955F848(v25);

  v48 = v108;
  sub_1C96A6234();

  v50 = *v117;
  v49 = v117[1];
  v51 = MEMORY[0x1E69D62D8];
  *(&v127 + 1) = MEMORY[0x1E69E6158];
  *&v128 = MEMORY[0x1E69D62D8];
  *&v126 = v50;
  *(&v126 + 1) = v49;
  sub_1C96A53C4();
  v52 = v106;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v126);
  v53 = v107;
  sub_1C96A6214();
  v55 = v115 + 8;
  v54 = *(v115 + 8);
  v56 = v52;
  v57 = v110;
  v54(v56, v110);
  v54(v48, v57);
  *(&v127 + 1) = MEMORY[0x1E69E6158];
  *&v128 = v51;
  *&v126 = 0x676E69646E6570;
  *(&v126 + 1) = 0xE700000000000000;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v126);
  sub_1C96A6214();
  v54(v48, v57);
  v115 = v55;
  v54(v53, v57);
  v58 = sub_1C96A63E4();
  v59 = v109;
  __swift_storeEnumTagSinglePayload(v109, 1, 1, v58);
  v3 = sub_1C96A62E4();

  sub_1C9470AFC(v59, &qword_1EC3A4B60);
  v54(v116, v57);
  a2 = 0;
  v25 = v3[2];
  v116 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v61 = (a2 << 6) | 0x20;
  while (v25 != a2)
  {
    if (a2 >= v3[2])
    {
      goto LABEL_46;
    }

    v62 = *(v3 + v61 + 48);
    v64 = *(v3 + v61);
    v63 = *(v3 + v61 + 16);
    v128 = *(v3 + v61 + 32);
    v129 = v62;
    v126 = v64;
    v127 = v63;
    sub_1C94F7620(&v126, v125);
    sub_1C96A6354();
    sub_1C94F77AC(&v126);
    v65 = *(&v125[0] + 1);
    if (*(&v125[0] + 1))
    {
      v66 = *&v125[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C94FB3F4();
        v116 = v70;
      }

      v67 = *(v116 + 2);
      if (v67 >= *(v116 + 3) >> 1)
      {
        sub_1C94FB3F4();
        v116 = v71;
      }

      ++a2;
      v68 = v116;
      *(v116 + 2) = v67 + 1;
      v69 = &v68[16 * v67];
      *(v69 + 4) = v66;
      *(v69 + 5) = v65;
      goto LABEL_21;
    }

    v61 += 64;
    ++a2;
  }

  v72 = v105;
  sub_1C94F7508(v117, v105, type metadata accessor for NotificationSubscription);
  v73 = v116;
  sub_1C96A53C4();
  v74 = sub_1C96A6134();
  v75 = sub_1C96A76A4();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    LODWORD(v117) = v75;
    v77 = v76;
    v119 = swift_slowAlloc();
    *&v126 = v119;
    *v77 = 136446723;
    v78 = MEMORY[0x1CCA8CC40](v73, MEMORY[0x1E69E6158]);
    v80 = v72;
    v81 = sub_1C9484164(v78, v79, &v126);

    *(v77 + 4) = v81;
    *(v77 + 12) = 2160;
    *(v77 + 14) = 1752392040;
    *(v77 + 22) = 2081;
    v82 = v80;
    v83 = v111;
    sub_1C94F75C0(v82, v111, type metadata accessor for NotificationSubscription);
    v84 = *v83;
    v85 = v83[1];
    sub_1C96A53C4();
    sub_1C94F7568(v83, type metadata accessor for NotificationSubscription);
    v86 = sub_1C9484164(v84, v85, &v126);

    *(v77 + 24) = v86;
    _os_log_impl(&dword_1C945E000, v74, v117, "Found pending notification identifiers: %{public}s for subscription: %{private,mask.hash}s", v77, 0x20u);
    v87 = v119;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v87, -1, -1);
    MEMORY[0x1CCA8E3D0](v77, -1, -1);
  }

  else
  {

    sub_1C94F7568(v72, type metadata accessor for NotificationSubscription);
  }

  if (!v25)
  {
LABEL_43:

    v102 = *(v104 + 16);
    v103 = sub_1C96A7294();

    [v102 removePendingNotificationRequestsWithIdentifiers_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78);
    swift_allocObject();
    a2 = sub_1C96A56A4();
    sub_1C96A5434();

    return a2;
  }

  v89 = 0;
  v115 = v25 - 1;
  v90 = 32;
  *&v88 = 136446210;
  v114 = v88;
  while (v89 < v3[2])
  {
    v119 = v89;
    v117 = v90;
    v91 = *(v3 + v90);
    v92 = *(v3 + v90 + 16);
    v93 = *(v3 + v90 + 48);
    v128 = *(v3 + v90 + 32);
    v129 = v93;
    v126 = v91;
    v127 = v92;
    sub_1C94F7620(&v126, v125);
    sub_1C94F7620(&v126, v125);
    v94 = sub_1C96A6134();
    v95 = sub_1C96A76A4();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *&v121 = v97;
      *v96 = v114;
      sub_1C96A6354();
      v98 = *(&v125[0] + 1);
      if (!*(&v125[0] + 1))
      {
        goto LABEL_49;
      }

      v99 = *&v125[0];
      sub_1C94F77AC(&v126);
      v100 = sub_1C9484164(v99, v98, &v121);

      *(v96 + 4) = v100;
      _os_log_impl(&dword_1C945E000, v94, v95, "Marking scheduled notification as removed: %{public}s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v97);
      MEMORY[0x1CCA8E3D0](v97, -1, -1);
      MEMORY[0x1CCA8E3D0](v96, -1, -1);
    }

    else
    {

      sub_1C94F77AC(&v126);
    }

    v101 = objc_autoreleasePoolPush();
    NotificationStore.deliverySchedules.getter();
    sub_1C96A6304();

    v121 = v126;
    v122 = v127;
    v123 = v128;
    v124 = v129;
    LOBYTE(v120[0]) = 3;
    DeliveryScheduleEntity.withState(_:)(v120, v125);
    v121 = v125[0];
    v122 = v125[1];
    v123 = v125[2];
    v124 = v125[3];
    sub_1C96A62A4();
    v120[0] = v121;
    v120[1] = v122;
    v120[2] = v123;
    v120[3] = v124;
    sub_1C94F77AC(v120);

    objc_autoreleasePoolPop(v101);
    sub_1C94F77AC(&v126);
    if (v115 == v119)
    {
      goto LABEL_43;
    }

    v90 = (v117 + 8);
    v89 = v119 + 1;
  }

  __break(1u);
LABEL_49:
  result = sub_1C94F77AC(&v126);
  __break(1u);
  return result;
}

void sub_1C94F5D34(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v87 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v77 - v8;
  v10 = sub_1C96A61C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v83 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = v77 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v77 - v16;
  v18 = *a1;
  v80 = a2;
  v77[1] = *(a2 + 24);
  sub_1C96A5444();
  v94 = *v107;
  v92 = sub_1C946D04C(v18);
  v19 = 0;
  v89 = v18;
  v90 = v18 & 0xC000000000000001;
  v88 = v18 & 0xFFFFFFFFFFFFFF8;
  v81 = (v11 + 8);
  v20 = &off_1E8341000;
  *&v21 = 136446210;
  v78 = v21;
  v79 = xmmword_1C96AA1C0;
  v85 = v10;
  v86 = v9;
  v84 = v17;
  while (1)
  {
    if (v92 == v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78);
      swift_allocObject();
      sub_1C96A56A4();
      sub_1C96A5434();

      return;
    }

    if (v90)
    {
      v22 = MEMORY[0x1CCA8D440](v19, v89);
    }

    else
    {
      if (v19 >= *(v88 + 16))
      {
        goto LABEL_30;
      }

      v22 = *(v89 + 8 * v19 + 32);
    }

    v23 = v22;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    NotificationStore.deliverySchedules.getter();
    if (v4)
    {

LABEL_28:
      sub_1C96A5434();

      return;
    }

    v95 = v19;
    sub_1C96A6314();

    v24 = v20[164];
    v108 = 0;
    v25 = v23;
    v26 = [v23 v24];
    v27 = sub_1C96A7024();
    v29 = v28;

    v30 = MEMORY[0x1E69E6158];
    *(&v100 + 1) = MEMORY[0x1E69E6158];
    v31 = MEMORY[0x1E69D62D8];
    *&v101 = MEMORY[0x1E69D62D8];
    *&v99 = v27;
    *(&v99 + 1) = v29;
    v32 = v84;
    v33 = v86;
    v34 = v82;
    sub_1C96A6224();
    __swift_destroy_boxed_opaque_existential_1Tm(&v99);
    v36 = *v87;
    v35 = v87[1];
    *(&v100 + 1) = v30;
    *&v101 = v31;
    *&v99 = v36;
    *(&v99 + 1) = v35;
    sub_1C96A53C4();
    v37 = v83;
    sub_1C96A6224();
    __swift_destroy_boxed_opaque_existential_1Tm(&v99);
    sub_1C96A6214();
    v38 = *v81;
    v39 = v37;
    v40 = v85;
    (*v81)(v39, v85);
    v38(v34, v40);
    v41 = sub_1C96A63E4();
    __swift_storeEnumTagSinglePayload(v33, 1, 1, v41);
    v42 = v108;
    sub_1C96A62D4();
    v108 = v42;
    if (v42)
    {

      sub_1C9470AFC(v33, &qword_1EC3A4B60);
      v38(v32, v40);
      sub_1C96A5434();

      return;
    }

    sub_1C9470AFC(v33, &qword_1EC3A4B60);
    v38(v32, v40);
    v99 = *v107;
    v100 = *&v107[16];
    v101 = *&v107[32];
    v102 = *&v107[48];
    v103 = *&v107[8];
    v104 = *&v107[24];
    v105 = *&v107[40];
    v106 = *&v107[56];
    if (*v107)
    {
      v91 = *v107;
      if (qword_1EDB7AC88 != -1)
      {
        swift_once();
      }

      v43 = sub_1C96A6154();
      __swift_project_value_buffer(v43, qword_1EDB7AC90);
      v44 = v25;
      v45 = sub_1C96A6134();
      v46 = sub_1C96A76A4();

      v47 = os_log_type_enabled(v45, v46);
      v93 = v44;
      if (v47)
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v98[0] = v49;
        *v48 = v78;
        v50 = [v44 identifier];
        v51 = sub_1C96A7024();
        v53 = v52;

        v54 = v51;
        v44 = v93;
        v55 = sub_1C9484164(v54, v53, v98);

        *(v48 + 4) = v55;
        _os_log_impl(&dword_1C945E000, v45, v46, "Removing notification with identifier: %{public}s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x1CCA8E3D0](v49, -1, -1);
        MEMORY[0x1CCA8E3D0](v48, -1, -1);
      }

      v4 = v108;
      v56 = *(v80 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BA0);
      v57 = swift_allocObject();
      *(v57 + 16) = v79;
      v58 = [v44 identifier];
      v59 = sub_1C96A7024();
      v61 = v60;

      *(v57 + 32) = v59;
      *(v57 + 40) = v61;
      v62 = sub_1C96A7294();

      [v56 removeDeliveredNotificationsWithIdentifiers_];

      v63 = objc_autoreleasePoolPush();
      NotificationStore.deliverySchedules.getter();
      if (v4)
      {
        v76 = v93;
        objc_autoreleasePoolPop(v63);

        sub_1C9470AFC(&v99, &qword_1EC3A4B68);
        goto LABEL_28;
      }

      sub_1C96A6304();

      *&v97[0] = v91;
      *(v97 + 8) = v103;
      *(&v97[1] + 8) = v104;
      *(&v97[2] + 8) = v105;
      *(&v97[3] + 1) = v106;
      LOBYTE(v96[0]) = 4;
      DeliveryScheduleEntity.withState(_:)(v96, v98);
      v97[0] = v98[0];
      v97[1] = v98[1];
      v97[2] = v98[2];
      v97[3] = v98[3];
      sub_1C96A62A4();
      v96[0] = v97[0];
      v96[1] = v97[1];
      v96[2] = v97[2];
      v96[3] = v97[3];
      sub_1C94F77AC(v96);

      objc_autoreleasePoolPop(v63);

      sub_1C9470AFC(&v99, &qword_1EC3A4B68);
      v64 = v95;
    }

    else
    {
      if (qword_1EDB7AC88 != -1)
      {
        swift_once();
      }

      v65 = sub_1C96A6154();
      __swift_project_value_buffer(v65, qword_1EDB7AC90);
      v66 = v25;
      v67 = sub_1C96A6134();
      v68 = sub_1C96A7684();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v98[0] = v70;
        *v69 = v78;
        v71 = [v66 identifier];
        v72 = sub_1C96A7024();
        v74 = v73;

        v75 = sub_1C9484164(v72, v74, v98);

        *(v69 + 4) = v75;
        _os_log_impl(&dword_1C945E000, v67, v68, "Unable to find notification store entry for delivered notification with identifier: %{public}s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x1CCA8E3D0](v70, -1, -1);
        MEMORY[0x1CCA8E3D0](v69, -1, -1);
      }

      else
      {
      }

      v64 = v95;
      v4 = v108;
    }

    v19 = v64 + 1;
    v20 = &off_1E8341000;
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1C94F6680()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B80);
  swift_allocObject();
  return sub_1C96A5714();
}

uint64_t sub_1C94F66F0(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v44 - v6;
  v50 = sub_1C96A61C4();
  v61 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = *(a2 + 24);
  sub_1C96A5444();
  v17 = v57;
  NotificationStore.deliverySchedules.getter();
  if (v3)
  {
    sub_1C96A5434();

    return v16;
  }

  v47 = v16;
  v48 = v17;
  sub_1C96A6314();

  v19 = *v49;
  v18 = v49[1];
  v20 = MEMORY[0x1E69E6158];
  v21 = MEMORY[0x1E69D62D8];
  *(&v58 + 1) = MEMORY[0x1E69E6158];
  *&v59 = MEMORY[0x1E69D62D8];
  *&v57 = v19;
  *(&v57 + 1) = v18;
  sub_1C96A53C4();
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v57);
  *(&v58 + 1) = v20;
  *&v59 = v21;
  *&v57 = 0x676E69646E6570;
  *(&v57 + 1) = 0xE700000000000000;
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v57);
  sub_1C96A6214();
  v22 = *(v61 + 8);
  v23 = v9;
  v24 = v50;
  v22(v23, v50);
  v22(v12, v24);
  v25 = sub_1C96A63E4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v25);
  v61 = sub_1C96A62E4();

  sub_1C9470AFC(v7, &qword_1EC3A4B60);
  v22(v15, v24);
  v27 = *(v61 + 16);
  if (!v27)
  {
LABEL_14:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78);
    swift_allocObject();
    v16 = sub_1C96A56A4();
    sub_1C96A5434();

    return v16;
  }

  v28 = 0;
  v29 = (v27 - 1);
  v30 = 32;
  *&v26 = 136446210;
  v46 = v26;
  v45 = (v27 - 1);
  while (v28 < v27)
  {
    v50 = v30;
    v31 = *(v61 + v30);
    v32 = *(v61 + v30 + 16);
    v33 = *(v61 + v30 + 48);
    v59 = *(v61 + v30 + 32);
    v60 = v33;
    v57 = v31;
    v58 = v32;
    sub_1C94F7620(&v57, v56);
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v34 = sub_1C96A6154();
    __swift_project_value_buffer(v34, qword_1EDB7AC90);
    sub_1C94F7620(&v57, v56);
    v35 = sub_1C96A6134();
    v36 = sub_1C96A76A4();
    if (os_log_type_enabled(v35, v36))
    {
      v49 = v28;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v52 = v38;
      *v37 = v46;
      sub_1C96A6354();
      v39 = *(&v56[0] + 1);
      if (!*(&v56[0] + 1))
      {
        goto LABEL_17;
      }

      v40 = *&v56[0];
      sub_1C94F77AC(&v57);
      v41 = sub_1C9484164(v40, v39, &v52);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_1C945E000, v35, v36, "Marking scheduled notification as delivered: %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1CCA8E3D0](v38, -1, -1);
      MEMORY[0x1CCA8E3D0](v37, -1, -1);

      v28 = v49;
      v29 = v45;
    }

    else
    {

      sub_1C94F77AC(&v57);
    }

    v42 = objc_autoreleasePoolPush();
    NotificationStore.deliverySchedules.getter();
    sub_1C96A6304();

    v52 = v57;
    v53 = v58;
    v54 = v59;
    v55 = v60;
    LOBYTE(v51[0]) = 1;
    DeliveryScheduleEntity.withState(_:)(v51, v56);
    v52 = v56[0];
    v53 = v56[1];
    v54 = v56[2];
    v55 = v56[3];
    sub_1C96A62A4();
    v51[0] = v52;
    v51[1] = v53;
    v51[2] = v54;
    v51[3] = v55;
    sub_1C94F77AC(v51);

    objc_autoreleasePoolPop(v42);
    sub_1C94F77AC(&v57);
    if (v29 == v28)
    {
      goto LABEL_14;
    }

    v27 = *(v61 + 16);
    v30 = v50 + 64;
    v28 = (v28 + 1);
  }

  __break(1u);
LABEL_17:
  result = sub_1C94F77AC(&v57);
  __break(1u);
  return result;
}

uint64_t sub_1C94F6D4C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v9 = sub_1C96A6154();
  __swift_project_value_buffer(v9, qword_1EDB7AC90);
  sub_1C94F7508(a2, v8, type metadata accessor for NotificationSubscription);
  v10 = sub_1C96A6134();
  v11 = sub_1C96A7684();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1C94F75C0(v8, v5, type metadata accessor for NotificationSubscription);
    v14 = *v5;
    v15 = v5[1];
    sub_1C96A53C4();
    sub_1C94F7568(v5, type metadata accessor for NotificationSubscription);
    v16 = sub_1C9484164(v14, v15, &v19);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_1C945E000, v10, v11, "Failed to update notification delivery status for subscription: %{private,mask.hash}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1CCA8E3D0](v13, -1, -1);
    MEMORY[0x1CCA8E3D0](v12, -1, -1);
  }

  else
  {

    sub_1C94F7568(v8, type metadata accessor for NotificationSubscription);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78);
  swift_allocObject();
  return sub_1C96A56A4();
}

char *sub_1C94F7038(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B70);
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

uint64_t sub_1C94F71DC()
{
  v1 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_19_2();
  return sub_1C94F3848(v0 + v2, "Removing pending notifications for subscription: %{private,mask.hash}s", sub_1C94F4F08, &unk_1F48FDF48, sub_1C94F7B3C);
}

uint64_t sub_1C94F7280()
{
  OUTLINED_FUNCTION_22_2();
  v1 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_19_2();
  return sub_1C94F33C0(v0 + v2);
}

uint64_t sub_1C94F72E8()
{
  OUTLINED_FUNCTION_22_2();
  v1 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_19_2();
  return sub_1C94F3848(v0 + v2, "Removing delivered notifications for subscription: %{private,mask.hash}s", sub_1C94F5D08, &unk_1F48FDF20, sub_1C94F78BC);
}

void sub_1C94F7388()
{
  OUTLINED_FUNCTION_22_2();
  v3 = v2;
  v4 = type metadata accessor for PrecipitationNotification();
  OUTLINED_FUNCTION_9(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  OUTLINED_FUNCTION_9(v9);
  v11 = v10;
  v13 = v12;
  v14 = (v6 + v8 + *(v11 + 80)) & ~*(v11 + 80);
  sub_1C94F3B98(v3, v1, *(v0 + 16), (v0 + v6), (v0 + v14), (v0 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1C94F7490()
{
  OUTLINED_FUNCTION_22_2();
  v3 = v2;
  v4 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  OUTLINED_FUNCTION_7(v4);
  return sub_1C94F41D0(v3, v1, *(v0 + 16), v0 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));
}

uint64_t sub_1C94F7508(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C94F7568(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C94F75C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C94F7748(uint64_t a1)
{
  v3 = type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_19_2();
  return sub_1C94F6D4C(a1, v1 + v4);
}

unint64_t sub_1C94F7810()
{
  result = qword_1EC3A4B90;
  if (!qword_1EC3A4B90)
  {
    type metadata accessor for PrecipitationNotification();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4B90);
  }

  return result;
}

unint64_t sub_1C94F7868()
{
  result = qword_1EC3A4B98;
  if (!qword_1EC3A4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4B98);
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{
  v1 = (type metadata accessor for NotificationSubscription(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*v1 + 64);

  v4 = v0 + v3 + v1[7];

  v5 = type metadata accessor for Location();
  v6 = v5[5];
  v7 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  v9 = *(v8 + 8);
  v9(v4 + v6, v7);
  v10 = v5[6];
  v11 = sub_1C96A4A54();
  if (!OUTLINED_FUNCTION_20_1(v4 + v10))
  {
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();

  v12 = v4 + *(type metadata accessor for NotificationSubscription.Location(0) + 20);

  v9(v12 + v5[5], v7);
  v13 = v5[6];
  if (!OUTLINED_FUNCTION_20_1(v12 + v13))
  {
    (*(*(v11 - 8) + 8))(v12 + v13, v11);
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v15, v2 | 7);
}

uint64_t sub_1C94F7B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v7 = type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_7(v7);
  OUTLINED_FUNCTION_19_2();
  return a3(a1, a2, v3 + v8);
}

uint64_t sub_1C94F7BF0()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A4BA8 = result;
  return result;
}

uint64_t sub_1C94F7E18()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A4BB0 = result;
  return result;
}

uint64_t sub_1C94F8040()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A4BB8 = result;
  return result;
}

uint64_t sub_1C94F8268()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A4BC0 = result;
  return result;
}

uint64_t sub_1C94F8490()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EC3A4BC8 = result;
  return result;
}

_BYTE *_s11WeatherMenuVwst(_BYTE *result, int a2, int a3)
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

id sub_1C94F8768(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 64);
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = sub_1C96A7004();
  [v3 setTitle_];

  if (v1)
  {
    sub_1C96A53C4();
    v5 = sub_1C96A7004();

    [v3 setSubtitle_];
  }

  v6 = sub_1C96A7004();
  [v3 setBody_];

  v7 = sub_1C96A7004();
  [v3 setThreadIdentifier_];

  if (!v2)
  {
    v2 = sub_1C96A6F04();
  }

  sub_1C950E220(v2);

  v8 = sub_1C96A6EC4();

  [v3 setUserInfo_];

  v9 = [objc_opt_self() defaultSound];
  [v3 setSound_];

  return v3;
}

void __swiftcall PrecipitationNotificationContent.init(title:subtitle:body:threadIdentifier:userInfo:)(WeatherCore::PrecipitationNotificationContent *__return_ptr retstr, Swift::String title, Swift::String_optional subtitle, Swift::String body, Swift::String threadIdentifier, Swift::OpaquePointer_optional userInfo)
{
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->body = body;
  retstr->threadIdentifier = threadIdentifier;
  retstr->userInfo.value._rawValue = userInfo.value._rawValue;
}

uint64_t PrecipitationNotificationContent.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  sub_1C96A7A94();

  MEMORY[0x1CCA8CB00](v5, v6);
  MEMORY[0x1CCA8CB00](0x656C746954203B5DLL, 0xEA0000000000203ALL);
  MEMORY[0x1CCA8CB00](v1, v2);
  MEMORY[0x1CCA8CB00](0x203A79646F42203BLL, 0xE800000000000000);
  MEMORY[0x1CCA8CB00](v3, v4);
  return 0x3A6461657268545BLL;
}

uint64_t PrecipitationNotificationContent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C94F8DB4();
  sub_1C96A7F44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v30[0]) = 0;
  v11 = sub_1C96A7C84();
  v31 = v12;
  OUTLINED_FUNCTION_6_4(1);
  v13 = sub_1C96A7C44();
  v28 = v14;
  v26 = v13;
  OUTLINED_FUNCTION_6_4(2);
  v25 = sub_1C96A7C84();
  v27 = v15;
  OUTLINED_FUNCTION_6_4(3);
  v16 = sub_1C96A7C84();
  v18 = v17;
  v24 = v16;
  v19 = sub_1C94F8E08();
  (*(v7 + 8))(v10, v5);
  __src[0] = v11;
  __src[1] = v31;
  v21 = v26;
  v20 = v27;
  v22 = v28;
  __src[2] = v26;
  __src[3] = v28;
  __src[4] = v25;
  __src[5] = v27;
  __src[6] = v24;
  __src[7] = v18;
  __src[8] = v19;
  memcpy(a2, __src, 0x48uLL);
  sub_1C94F712C(__src, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v30[0] = v11;
  v30[1] = v31;
  v30[2] = v21;
  v30[3] = v22;
  v30[4] = v25;
  v30[5] = v20;
  v30[6] = v24;
  v30[7] = v18;
  v30[8] = v19;
  return sub_1C94F7188(v30);
}

unint64_t sub_1C94F8DB4()
{
  result = qword_1EC3A4BE0;
  if (!qword_1EC3A4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4BE0);
  }

  return result;
}

uint64_t sub_1C94F8E08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BE8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v43 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - v8;
  v10 = sub_1C96A6F04();
  v11 = sub_1C96A57E4();
  LOBYTE(v45) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD8);
  sub_1C94FB088(&qword_1EC3A4C28, MEMORY[0x1E69E17C8]);
  sub_1C96A7C74();
  if (v0)
  {
  }

  else
  {
    v44 = v3;
    if (__swift_getEnumTagSinglePayload(v9, 1, v11) == 1)
    {
      sub_1C94BE204(v9, &qword_1EC3A4BF0);
      v12 = sub_1C9476F90(0x57746E6572727543, 0xEE00726568746165);
      if (v13)
      {
        v14 = v12;
        swift_isUniquelyReferenced_nonNull_native();
        v49 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
        sub_1C96A7B84();
        v10 = v49;

        sub_1C946306C((*(v10 + 56) + 32 * v14), &v45);
        sub_1C96A7B94();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      sub_1C94BE204(&v45, &qword_1EC3A4A90);
    }

    else
    {
      v48 = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
      (*(*(v11 - 8) + 32))(boxed_opaque_existential_1, v9, v11);
      sub_1C946306C(&v47, &v45);
      swift_isUniquelyReferenced_nonNull_native();
      v49 = v10;
      sub_1C950B354();
      v10 = v49;
    }

    v16 = sub_1C96A4A54();
    LOBYTE(v45) = 5;
    sub_1C94FB088(&qword_1EDB7FD58, MEMORY[0x1E6969530]);
    sub_1C96A7C74();
    if (__swift_getEnumTagSinglePayload(v6, 1, v16) == 1)
    {
      sub_1C94BE204(v6, &unk_1EC3A5430);
      v17 = sub_1C9476F90(1702125892, 0xE400000000000000);
      if (v18)
      {
        v19 = v17;
        swift_isUniquelyReferenced_nonNull_native();
        v49 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
        sub_1C96A7B84();
        v10 = v49;

        sub_1C946306C((*(v10 + 56) + 32 * v19), &v45);
        sub_1C96A7B94();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      sub_1C94BE204(&v45, &qword_1EC3A4A90);
    }

    else
    {
      v48 = v16;
      v20 = __swift_allocate_boxed_opaque_existential_1(&v47);
      (*(*(v16 - 8) + 32))(v20, v6, v16);
      sub_1C946306C(&v47, &v45);
      swift_isUniquelyReferenced_nonNull_native();
      v49 = v10;
      sub_1C950B354();
      v10 = v49;
    }

    LOBYTE(v45) = 6;
    v21 = sub_1C96A7C44();
    if (v22)
    {
      v48 = MEMORY[0x1E69E6158];
      *&v47 = v21;
      *(&v47 + 1) = v22;
      sub_1C946306C(&v47, &v45);
      swift_isUniquelyReferenced_nonNull_native();
      v49 = v10;
      sub_1C950B354();
      v10 = v49;
    }

    else
    {
      v23 = sub_1C9476F90(0xD000000000000011, 0x80000001C96CC3A0);
      if (v24)
      {
        v25 = v23;
        swift_isUniquelyReferenced_nonNull_native();
        v49 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
        sub_1C96A7B84();
        v10 = v49;

        sub_1C946306C((*(v10 + 56) + 32 * v25), &v45);
        sub_1C96A7B94();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      sub_1C94BE204(&v45, &qword_1EC3A4A90);
    }

    LOBYTE(v45) = 7;
    v26 = sub_1C96A7C44();
    if (v27)
    {
      v48 = MEMORY[0x1E69E6158];
      *&v47 = v26;
      *(&v47 + 1) = v27;
      sub_1C946306C(&v47, &v45);
      swift_isUniquelyReferenced_nonNull_native();
      v49 = v10;
      sub_1C950B354();
      v10 = v49;
    }

    else
    {
      v28 = sub_1C9476F90(0x6E6F697461636F4CLL, 0xE800000000000000);
      if (v29)
      {
        v30 = v28;
        swift_isUniquelyReferenced_nonNull_native();
        v49 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
        sub_1C96A7B84();
        v10 = v49;

        sub_1C946306C((*(v10 + 56) + 32 * v30), &v45);
        sub_1C96A7B94();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      sub_1C94BE204(&v45, &qword_1EC3A4A90);
    }

    v31 = sub_1C96A5D64();
    LOBYTE(v45) = 8;
    sub_1C94FB088(&qword_1EC3A4C30, MEMORY[0x1E69E1908]);
    v32 = v44;
    sub_1C96A7C74();
    if (__swift_getEnumTagSinglePayload(v32, 1, v31) == 1)
    {
      sub_1C94BE204(v32, &qword_1EC3A4BE8);
      v33 = sub_1C9476F90(0xD000000000000010, 0x80000001C96CC3C0);
      if (v34)
      {
        v35 = v33;
        swift_isUniquelyReferenced_nonNull_native();
        v49 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
        sub_1C96A7B84();
        v10 = v49;

        sub_1C946306C((*(v10 + 56) + 32 * v35), &v45);
        sub_1C96A7B94();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      sub_1C94BE204(&v45, &qword_1EC3A4A90);
    }

    else
    {
      v48 = v31;
      v36 = __swift_allocate_boxed_opaque_existential_1(&v47);
      (*(*(v31 - 8) + 32))(v36, v32, v31);
      sub_1C946306C(&v47, &v45);
      swift_isUniquelyReferenced_nonNull_native();
      v49 = v10;
      sub_1C950B354();
      v10 = v49;
    }

    LOBYTE(v45) = 9;
    v37 = sub_1C96A7C44();
    if (v38)
    {
      v48 = MEMORY[0x1E69E6158];
      *&v47 = v37;
      *(&v47 + 1) = v38;
      sub_1C946306C(&v47, &v45);
      swift_isUniquelyReferenced_nonNull_native();
      v49 = v10;
      sub_1C950B354();
      return v49;
    }

    else
    {
      v40 = sub_1C9476F90(0x656E6F5A656D6954, 0xE800000000000000);
      if (v41)
      {
        v42 = v40;
        swift_isUniquelyReferenced_nonNull_native();
        v49 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C38);
        sub_1C96A7B84();
        v10 = v49;

        sub_1C946306C((*(v10 + 56) + 32 * v42), &v45);
        sub_1C96A7B94();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      sub_1C94BE204(&v45, &qword_1EC3A4A90);
    }
  }

  return v10;
}

uint64_t PrecipitationNotificationContent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BE8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v4);
  v91 = &v80 - v5;
  v90 = sub_1C96A5D64();
  OUTLINED_FUNCTION_1();
  v85 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v93 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v80 - v12;
  v88 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v83 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v82 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BF0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v80 - v19;
  v101 = sub_1C96A57E4();
  OUTLINED_FUNCTION_1();
  v86 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14();
  v24 = v23 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BF8);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v80 - v28;
  v30 = v1[2];
  v99 = v1[3];
  v100 = v30;
  v31 = v1[4];
  v97 = v1[5];
  v98 = v31;
  v32 = v1[6];
  v95 = v1[7];
  v96 = v32;
  v94 = v1[8];
  v33 = a1[3];
  v34 = a1;
  v36 = v35;
  __swift_project_boxed_opaque_existential_1(v34, v33);
  sub_1C94F8DB4();
  sub_1C96A7F54();
  v105[0] = 0;
  v106 = v36;
  v37 = v102;
  sub_1C96A7D24();
  if (v37)
  {
    return (*(v26 + 8))(v29, v106);
  }

  v102 = v24;
  v38 = v101;
  v105[0] = 1;
  OUTLINED_FUNCTION_3_1();
  sub_1C96A7CE4();
  v105[0] = 2;
  OUTLINED_FUNCTION_3_1();
  sub_1C96A7D24();
  v105[0] = 3;
  OUTLINED_FUNCTION_3_1();
  sub_1C96A7D24();
  if (!v94)
  {
    return (*(v26 + 8))(v29, v106);
  }

  sub_1C94FA584(0x57746E6572727543, 0xEE00726568746165, v94);
  if (v104)
  {
    OUTLINED_FUNCTION_2_9();
    v39 = v89;
    v40 = v38;
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_11_1(v39);
      v41 = v86;
      v42 = v102;
      (*(v86 + 32))(v102, v39, v40);
      v43 = v87;
      (*(v41 + 16))(v87, v42, v40);
      OUTLINED_FUNCTION_11_1(v43);
      v103[0] = 4;
      sub_1C94FB088(&qword_1EC3A4C08, MEMORY[0x1E69E17C8]);
      OUTLINED_FUNCTION_7_5();
      sub_1C96A7D14();
      v44 = v92;
      sub_1C94BE204(v43, &qword_1EC3A4BF0);
      (*(v41 + 8))(v42, v40);
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v105);
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v38);
    v45 = &qword_1EC3A4BF0;
    v46 = v39;
  }

  else
  {
    v45 = &qword_1EC3A4A90;
    v46 = v103;
  }

  sub_1C94BE204(v46, v45);
  v44 = v92;
LABEL_9:
  v47 = v94;
  sub_1C94FA584(1702125892, 0xE400000000000000, v94);
  v48 = v93;
  if (v104)
  {
    OUTLINED_FUNCTION_2_9();
    v49 = v88;
    if (swift_dynamicCast())
    {
      v50 = OUTLINED_FUNCTION_1_7();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
      v53 = v83;
      v54 = v44;
      v55 = v82;
      (*(v83 + 32))(v82, v54, v49);
      v56 = v84;
      (*(v53 + 16))(v84, v55, v49);
      OUTLINED_FUNCTION_11_1(v56);
      v103[0] = 5;
      sub_1C94FB088(&qword_1EDB7FD60, MEMORY[0x1E6969530]);
      OUTLINED_FUNCTION_7_5();
      sub_1C96A7D14();
      sub_1C94BE204(v56, &unk_1EC3A5430);
      (*(v53 + 8))(v55, v49);
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      v47 = v94;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      v57 = OUTLINED_FUNCTION_5_4();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v49);
      sub_1C94BE204(v44, &unk_1EC3A5430);
    }

    v48 = v93;
  }

  else
  {
    sub_1C94BE204(v103, &qword_1EC3A4A90);
  }

  sub_1C94FA584(0xD000000000000011, 0x80000001C96CC3A0, v47);
  v60 = v91;
  if (v104)
  {
    OUTLINED_FUNCTION_2_9();
    if (swift_dynamicCast())
    {
      v103[0] = 6;
      OUTLINED_FUNCTION_3_1();
      sub_1C96A7CE4();
      __swift_destroy_boxed_opaque_existential_1Tm(v105);

      v60 = v91;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
    }

    v47 = v94;
  }

  else
  {
    sub_1C94BE204(v103, &qword_1EC3A4A90);
  }

  sub_1C94FA584(0x6E6F697461636F4CLL, 0xE800000000000000, v47);
  if (v104)
  {
    OUTLINED_FUNCTION_2_9();
    if (swift_dynamicCast())
    {
      v103[0] = 7;
      OUTLINED_FUNCTION_3_1();
      sub_1C96A7CE4();
      __swift_destroy_boxed_opaque_existential_1Tm(v105);

      v60 = v91;
      v47 = v94;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
    }
  }

  else
  {
    sub_1C94BE204(v103, &qword_1EC3A4A90);
  }

  sub_1C94FA584(0xD000000000000010, 0x80000001C96CC3C0, v47);
  if (v104)
  {
    OUTLINED_FUNCTION_2_9();
    if (swift_dynamicCast())
    {
      v61 = OUTLINED_FUNCTION_1_7();
      v62 = v90;
      __swift_storeEnumTagSinglePayload(v61, v63, v64, v90);
      v65 = v85;
      (*(v85 + 32))(v48, v60, v62);
      v66 = v81;
      (*(v65 + 16))(v81, v48, v62);
      v67 = OUTLINED_FUNCTION_1_7();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v62);
      v103[0] = 8;
      sub_1C94FB088(&qword_1EC3A4C00, MEMORY[0x1E69E1908]);
      OUTLINED_FUNCTION_7_5();
      sub_1C96A7D14();
      sub_1C94BE204(v66, &qword_1EC3A4BE8);
      v78 = OUTLINED_FUNCTION_10_3();
      v79(v78);
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      v47 = v94;
      goto LABEL_32;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v105);
    v72 = OUTLINED_FUNCTION_5_4();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v90);
    v70 = &qword_1EC3A4BE8;
    v71 = v60;
  }

  else
  {
    v70 = &qword_1EC3A4A90;
    v71 = v103;
  }

  sub_1C94BE204(v71, v70);
LABEL_32:
  v75 = sub_1C94FA584(0x656E6F5A656D6954, 0xE800000000000000, v47);
  if (v104)
  {
    OUTLINED_FUNCTION_2_9();
    if (swift_dynamicCast())
    {
      v103[0] = 9;
      v76 = v106;
      OUTLINED_FUNCTION_7_5();
      sub_1C96A7CE4();

      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      return (*(v26 + 8))(v29, v76);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v105);
    return (*(v26 + 8))(v29, v106);
  }

  (*(v26 + 8))(v29, v106, v75);
  return sub_1C94BE204(v103, &qword_1EC3A4A90);
}

double sub_1C94FA584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_16_5();
  }

  v3 = sub_1C9476F90(a1, a2);
  if ((v4 & 1) == 0)
  {
    return OUTLINED_FUNCTION_16_5();
  }

  v5 = OUTLINED_FUNCTION_13_1(v3);

  sub_1C9484328(v5, v6);
  return result;
}

uint64_t sub_1C94FA5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C9476F90(a1, a2);
  if (v3)
  {
    return sub_1C96A53C4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C94FA62C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C950B04C(a1);
  if (v2)
  {
    return sub_1C96A3D04();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C94FA67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (sub_1C9476F90(a1, a2), (v8 & 1) != 0))
  {
    OUTLINED_FUNCTION_15_1();
    type metadata accessor for Location();
    OUTLINED_FUNCTION_9_3();
    sub_1C9489760(v5 + *(v9 + 72) * v4, a4);
    v10 = OUTLINED_FUNCTION_1_7();
    v13 = a3;
  }

  else
  {
    type metadata accessor for Location();
    v10 = OUTLINED_FUNCTION_5_4();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1C94FA708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (*(a1 + 16) && (sub_1C950B1B0(a3, a4), (v8 & 1) != 0))
  {
    OUTLINED_FUNCTION_15_1();
    type metadata accessor for Location();
    OUTLINED_FUNCTION_9_3();
    sub_1C9489760(v5 + *(v9 + 72) * v4, a2);
    v10 = OUTLINED_FUNCTION_1_7();
    v13 = a1;
  }

  else
  {
    type metadata accessor for Location();
    v10 = OUTLINED_FUNCTION_5_4();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

double sub_1C94FA794(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_16_5();
  }

  v2 = sub_1C950B0E4();
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_16_5();
  }

  v4 = OUTLINED_FUNCTION_13_1(v2);

  sub_1C9484328(v4, v5);
  return result;
}

double sub_1C94FA7EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_16_5();
  }

  v6 = sub_1C9476F90(a1, a2);
  if ((v7 & 1) == 0)
  {
    return OUTLINED_FUNCTION_16_5();
  }

  v8 = (*(a3 + 56) + 32 * v6);
  v9 = v8[1];
  v10 = v8[2];
  v11 = v8[3];
  *a4 = *v8;
  a4[1] = v9;
  a4[2] = v10;
  a4[3] = v11;
  sub_1C96A53C4();

  sub_1C96A53C4();
  return result;
}

double sub_1C94FA860(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_16_5();
  }

  v2 = sub_1C950B090();
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_16_5();
  }

  v4 = OUTLINED_FUNCTION_13_1(v2);

  sub_1C9484328(v4, v5);
  return result;
}

uint64_t sub_1C94FA8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a5 + 16) && (sub_1C950B2C0(a1, a2, a3, a4), (v10 & 1) != 0))
  {
    OUTLINED_FUNCTION_15_1();
    sub_1C96A5AD4();
    OUTLINED_FUNCTION_9_3();
    (*(v11 + 16))(a6, v7 + *(v11 + 72) * v6, a5);
    v12 = OUTLINED_FUNCTION_1_7();
    v15 = a5;
  }

  else
  {
    sub_1C96A5AD4();
    v12 = OUTLINED_FUNCTION_5_4();
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_1C94FA958(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 2036625250 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C96CC3E0 == a2;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1702125924 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C96A7DE4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001C96CC400 == a2;
              if (v11 || (sub_1C96A7DE4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
                if (v12 || (sub_1C96A7DE4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000001C96CC420 == a2;
                  if (v13 || (sub_1C96A7DE4() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1C96A7DE4();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_1C94FAC78(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 2036625250;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x57746E6572727563;
      break;
    case 5:
      result = 1702125924;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x656E6F5A656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C94FAD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C94FA958(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C94FADBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94FAC70();
  *a1 = result;
  return result;
}

uint64_t sub_1C94FADE4(uint64_t a1)
{
  v2 = sub_1C94F8DB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C94FAE20(uint64_t a1)
{
  v2 = sub_1C94F8DB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for PrecipitationNotificationContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C94FAF84()
{
  result = qword_1EC3A4C10;
  if (!qword_1EC3A4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4C10);
  }

  return result;
}

unint64_t sub_1C94FAFDC()
{
  result = qword_1EC3A4C18;
  if (!qword_1EC3A4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4C18);
  }

  return result;
}

unint64_t sub_1C94FB034()
{
  result = qword_1EC3A4C20;
  if (!qword_1EC3A4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4C20);
  }

  return result;
}

uint64_t sub_1C94FB088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C94FB0E4(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C94FB16C()
{
  sub_1C94FB1A8(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C94FB1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C94FBE18();
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    sub_1C94FBE58(result, v5, a1, a2);
    v7 = 0;
  }

  v8 = type metadata accessor for LocationOfInterest();

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v8);
}

void *sub_1C94FB268@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (result[2])
  {
    v4 = result[4];
    v3 = result[5];
    v6 = result[6];
    v5 = result[7];
    sub_1C96A53C4();
    result = sub_1C96A53C4();
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v6 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
  a2[2] = v6;
  a2[3] = v5;
  return result;
}

uint64_t sub_1C94FB2D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C94FB33C()
{
  OUTLINED_FUNCTION_19_3();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_8_7(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_5();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C80);
      v7 = OUTLINED_FUNCTION_24_1();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_11_2();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_9_4();
        sub_1C94B9434(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v7 + 4, (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_18_5();
  if (!v5)
  {
    OUTLINED_FUNCTION_7_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C94FB3F4()
{
  OUTLINED_FUNCTION_19_3();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_8_7(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_5();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BA0);
      v7 = OUTLINED_FUNCTION_24_1();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_11_2();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_9_4();
        sub_1C94B9434(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_14_4();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_18_5();
  if (!v5)
  {
    OUTLINED_FUNCTION_7_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C94FB4A8()
{
  OUTLINED_FUNCTION_1_8();
  if (v2)
  {
    OUTLINED_FUNCTION_0_7();
    if (v3 != v4)
    {
      OUTLINED_FUNCTION_15_2();
      if (v3)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_22_3();
  sub_1C94A0404(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_17_7();
  type metadata accessor for Location();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v11 = OUTLINED_FUNCTION_2_10(v10);
    sub_1C94DBCD4(v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
  }
}

void sub_1C94FB568()
{
  OUTLINED_FUNCTION_19_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_8_7(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_5();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D08);
      v6 = OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_4_8(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_9_4();
        sub_1C949DBD4(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_14_4();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_18_5();
  if (!v4)
  {
    OUTLINED_FUNCTION_7_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C94FB618()
{
  OUTLINED_FUNCTION_1_8();
  if (v4)
  {
    OUTLINED_FUNCTION_0_7();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_23_5(v2, v5, &qword_1EC3A4D00, &unk_1C96AAE30);
  OUTLINED_FUNCTION_17_7();
  type metadata accessor for PrecipitationNotificationFetchSchedule();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1C952299C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
  }
}

void sub_1C94FB6E0()
{
  OUTLINED_FUNCTION_1_8();
  if (v4)
  {
    OUTLINED_FUNCTION_0_7();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_23_5(v2, v5, &qword_1EC3A4C48, &unk_1C96BE260);
  v8 = OUTLINED_FUNCTION_17_7();
  type metadata accessor for NotificationSubscription(v8);
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_2_10(v9);
    sub_1C9522984(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
  }
}

void sub_1C94FB7A8()
{
  OUTLINED_FUNCTION_19_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_8_7(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_5();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4CC8);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_4_8(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_9_4();
        sub_1C9522B18(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_14_4();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_18_5();
  if (!v4)
  {
    OUTLINED_FUNCTION_7_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C94FB868()
{
  OUTLINED_FUNCTION_1_8();
  if (v4)
  {
    OUTLINED_FUNCTION_0_7();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_23_5(v2, v5, &qword_1EC3A4CD8, &unk_1C96B9230);
  OUTLINED_FUNCTION_17_7();
  sub_1C96A4304();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1C9522B40(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
  }
}

void sub_1C94FB930()
{
  OUTLINED_FUNCTION_1_8();
  if (v4)
  {
    OUTLINED_FUNCTION_0_7();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_23_5(v2, v5, &qword_1EC3A4C40, &unk_1C96AD3B0);
  OUTLINED_FUNCTION_17_7();
  type metadata accessor for LocationDataModel();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1C9522A78(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
  }
}

void sub_1C94FB9F8()
{
  OUTLINED_FUNCTION_1_8();
  if (v4)
  {
    OUTLINED_FUNCTION_0_7();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_23_5(v2, v5, &qword_1EC3A4CD0, &unk_1C96B6B60);
  OUTLINED_FUNCTION_17_7();
  type metadata accessor for MapsConfiguration.EndpointConfiguration();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1C9522B58(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
  }
}

void sub_1C94FBAC0()
{
  OUTLINED_FUNCTION_1_8();
  if (v4)
  {
    OUTLINED_FUNCTION_0_7();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_23_5(v2, v5, &qword_1EC3A4CC0, &unk_1C96C3460);
  OUTLINED_FUNCTION_17_7();
  type metadata accessor for SavedLocation();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_10(v8);
    sub_1C9522B00(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
  }
}

void sub_1C94FBB88()
{
  OUTLINED_FUNCTION_19_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_8_7(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_5();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50);
      v6 = OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_4_8(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_9_4();
        sub_1C949DBFC(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C58);
    OUTLINED_FUNCTION_13_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_18_5();
  if (!v4)
  {
    OUTLINED_FUNCTION_7_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C94FBC44()
{
  OUTLINED_FUNCTION_19_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_8_7(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_5();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C70);
      v6 = OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_4_8(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_9_4();
        sub_1C949DBFC(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C78);
    OUTLINED_FUNCTION_13_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_18_5();
  if (!v4)
  {
    OUTLINED_FUNCTION_7_6();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1C94FBD00(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BA0);
  v4 = swift_allocObject();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_11_2();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_1C94FBD98(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5390);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t sub_1C94FBE58@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 48);
    v7 = type metadata accessor for LocationOfInterest();
    return sub_1C9489928(v6 + *(*(v7 - 8) + 72) * v4, a4, type metadata accessor for LocationOfInterest);
  }

LABEL_8:
  __break(1u);
  return result;
}

WeatherCore::AppStoreReviewConfiguration __swiftcall AppStoreReviewConfiguration.init(appReviewEnabled:reviewPromptSamplingRate:savedLocationsCountThreshold:timeIntervalBetweenPrompts:)(Swift::Bool_optional appReviewEnabled, Swift::Double_optional reviewPromptSamplingRate, Swift::Int_optional savedLocationsCountThreshold, Swift::Double_optional timeIntervalBetweenPrompts)
{
  v7 = v5;
  v8 = v4;
  is_nil = timeIntervalBetweenPrompts.is_nil;
  v10 = *&savedLocationsCountThreshold.is_nil;
  value = appReviewEnabled.value;
  v12 = v6;
  if (savedLocationsCountThreshold.value)
  {
    v13 = 0x3F847AE147AE147BLL;
  }

  else
  {
    appReviewEnabled.value = sub_1C96A7534();
  }

  v14 = 15;
  if (!is_nil)
  {
    v14 = v10;
  }

  v15 = v8;
  *v12 = value;
  *(v12 + 8) = v13;
  if (v7)
  {
    v16 = 630720000.0;
  }

  else
  {
    v16 = v8;
  }

  *(v12 + 16) = v14;
  *(v12 + 24) = v16;
  LOBYTE(result.savedLocationsCountThreshold) = reviewPromptSamplingRate.is_nil;
  result.timeIntervalBetweenPrompts = v15;
  result.reviewPromptSamplingRate = v16;
  result.appReviewEnabled = appReviewEnabled.value;
  return result;
}

uint64_t AppStoreReviewConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D18);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  v11[1] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C946E5F4();
  sub_1C96A7F54();
  v15 = 0;
  OUTLINED_FUNCTION_0_0();
  sub_1C96A7D34();
  if (!v2)
  {
    v14 = 1;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D44();
    v13 = 2;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D54();
    v12 = 3;
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D44();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C94FC1A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94DE804();
  *a1 = result;
  return result;
}

unint64_t sub_1C94FC1D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C946E650(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C94FC204@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94DE804();
  *a1 = result;
  return result;
}

uint64_t sub_1C94FC22C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94FC17C();
  *a1 = result;
  return result;
}

uint64_t sub_1C94FC254(uint64_t a1)
{
  v2 = sub_1C946E5F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C94FC290(uint64_t a1)
{
  v2 = sub_1C946E5F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static AppStoreReviewConfiguration.== infix(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && a1[1] == a2[1] && *(a1 + 2) == *(a2 + 2))
  {
    return a1[3] == a2[3];
  }

  return result;
}

uint64_t sub_1C94FC330(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[32])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1C94FC380()
{
  result = qword_1EC3A4D20;
  if (!qword_1EC3A4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4D20);
  }

  return result;
}

uint64_t (*static SevereNotificationEntity.version.modify())()
{
  OUTLINED_FUNCTION_117();
  swift_beginAccess();
  return j__swift_endAccess;
}

WeatherCore::SevereNotificationEntity::NotificationKind_optional __swiftcall SevereNotificationEntity.NotificationKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SevereNotificationEntity.NotificationKind.rawValue.getter()
{
  if (*v0)
  {
    return 0x61684364756F6C63;
  }

  else
  {
    return 0x6369646F69726570;
  }
}

uint64_t sub_1C94FC528@<X0>(uint64_t *a1@<X8>)
{
  result = SevereNotificationEntity.NotificationKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void SevereNotificationEntity.init()()
{
  OUTLINED_FUNCTION_103();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D48);
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_24();
  v143 = v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_51_0();
  v142 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D50);
  v10 = OUTLINED_FUNCTION_7(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_24();
  v141 = v11;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_51_0();
  v140 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D58);
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_24();
  v139 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_51_0();
  v138 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v20 = OUTLINED_FUNCTION_7(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_95();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v26 = OUTLINED_FUNCTION_7(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_94_1();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v134 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  v31 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  *v3 = sub_1C96A6344();
  v134[1] = v29;
  v135 = v30;
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v144 = v0;
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_45_0(v42, v43, v44, v45);
  OUTLINED_FUNCTION_1_1();
  v3[1] = sub_1C96A6344();
  v46 = v3;
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v47 = *MEMORY[0x1E69D61F8];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v50 = *(v49 + 104);
  v50(v1, v47, v48);
  v51 = OUTLINED_FUNCTION_41_3();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v48);
  v54 = OUTLINED_FUNCTION_21_0();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v46[2] = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v50(v1, v47, v48);
  v136 = v1;
  OUTLINED_FUNCTION_48();
  v134[0] = v48;
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v48);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v50(v23, v47, v48);
  v137 = v23;
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v48);
  OUTLINED_FUNCTION_30_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v46[3] = sub_1C96A6344();
  v63 = v135;
  v64 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v63);
  v67 = OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_45_0(v67, v68, v69, v63);
  OUTLINED_FUNCTION_1_1();
  v46[4] = OUTLINED_FUNCTION_98_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D78);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v46[5] = sub_1C96A6344();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  OUTLINED_FUNCTION_36();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v46[6] = sub_1C96A6344();
  v86 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v63);
  v89 = OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_45_0(v89, v90, v91, v63);
  OUTLINED_FUNCTION_1_1();
  v46[7] = OUTLINED_FUNCTION_98_0();
  v92 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v63);
  v95 = OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_45_0(v95, v96, v97, v63);
  OUTLINED_FUNCTION_1_1();
  v46[8] = OUTLINED_FUNCTION_98_0();
  v98 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v63);
  v101 = OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_45_0(v101, v102, v103, v63);
  OUTLINED_FUNCTION_1_1();
  v46[9] = OUTLINED_FUNCTION_98_0();
  v104 = OUTLINED_FUNCTION_5_4();
  v105 = v134[0];
  __swift_storeEnumTagSinglePayload(v104, v106, v107, v134[0]);
  v108 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v105);
  OUTLINED_FUNCTION_30_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v46[10] = OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
  v115 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v105);
  OUTLINED_FUNCTION_30_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v46[11] = OUTLINED_FUNCTION_121();
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D88);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v122);
  v123 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v46[12] = sub_1C96A6344();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D98);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v130);
  v131 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v126);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4DA0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v46[13] = sub_1C96A6344();
  OUTLINED_FUNCTION_101();
}

void SevereNotificationEntity.init(identifier:notificationIdentifier:notificationKind:subscription:notification:alert:alertIdentifier:messageIdentifier:alertDescription:issuedTime:expireTime:replacementAlert:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_103();
  a19 = v35;
  a20 = v36;
  v198 = v37;
  v187 = v38;
  v40 = v39;
  OUTLINED_FUNCTION_67(v41, v42, v43, v44);
  v46 = v45;
  v194 = a33;
  v192 = a30;
  v193 = a31;
  v191 = a29;
  v189 = a27;
  v188 = a25;
  v196 = a22;
  v197 = a23;
  v195 = a21;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v47);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_90();
  v190 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4DA8);
  OUTLINED_FUNCTION_7(v50);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_57(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D48);
  v54 = OUTLINED_FUNCTION_7(v53);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_57(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D50);
  v58 = OUTLINED_FUNCTION_7(v57);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_57(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D58);
  v62 = OUTLINED_FUNCTION_7(v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_57(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v66 = OUTLINED_FUNCTION_7(v65);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_94_1();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_95();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v69 = OUTLINED_FUNCTION_7(v68);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_96();
  v183 = *v40;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  v72 = OUTLINED_FUNCTION_21_0();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v71);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_27_3();
  v79 = sub_1C96A6344();
  *v46 = v79;
  OUTLINED_FUNCTION_106(v79, &v201);
  OUTLINED_FUNCTION_3();
  v182 = v71;
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v71);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
  OUTLINED_FUNCTION_37_1();
  swift_allocObject();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_1_0();
  v46[1] = sub_1C96A6344();
  v87 = v46;
  sub_1C96A3D04();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v88 = *MEMORY[0x1E69D61F8];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v91 = *(v90 + 104);
  v91(v34, v88, v89);
  v92 = OUTLINED_FUNCTION_41_3();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v89);
  v95 = OUTLINED_FUNCTION_32();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v87[2] = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v91(v34, v88, v89);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v89);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v91(v33, v88, v89);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v89);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_1_1();
  v87[3] = sub_1C96A6344();
  v104 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v182);
  v107 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v182);
  OUTLINED_FUNCTION_37_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v87[4] = sub_1C96A6344();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D78);
  v111 = OUTLINED_FUNCTION_16_6(&v196);
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v110);
  v114 = OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_1_0();
  v87[5] = OUTLINED_FUNCTION_123();
  v117 = OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v110);
  v120 = OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v110);
  swift_allocObject();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_1_0();
  v87[6] = OUTLINED_FUNCTION_123();
  v123 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v182);
  v126 = OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v182);
  OUTLINED_FUNCTION_37_1();
  swift_allocObject();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_4_9();
  v87[7] = sub_1C96A6344();
  v129 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v182);
  v132 = OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v182);
  OUTLINED_FUNCTION_37_1();
  swift_allocObject();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_4_9();
  v87[8] = sub_1C96A6344();
  v135 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v135, v136, v137, v182);
  v138 = OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v138, v139, v140, v182);
  OUTLINED_FUNCTION_37_1();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_4_9();
  v87[9] = sub_1C96A6344();
  v141 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v89);
  v144 = OUTLINED_FUNCTION_9_5(&v195);
  __swift_storeEnumTagSinglePayload(v144, v145, v146, v89);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_66();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_4_9();
  v87[10] = sub_1C96A6344();
  v147 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v89);
  v150 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v150, v151, v152, v89);
  OUTLINED_FUNCTION_110();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_4_9();
  v87[11] = sub_1C96A6344();
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D88);
  v154 = OUTLINED_FUNCTION_16_6(&a9);
  __swift_storeEnumTagSinglePayload(v154, v155, v156, v153);
  v157 = OUTLINED_FUNCTION_9_5(&a10);
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v153);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_1_0();
  v87[12] = sub_1C96A6344();
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D98);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
  v165 = OUTLINED_FUNCTION_16_6(&a13);
  __swift_storeEnumTagSinglePayload(v165, v166, v167, v160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4DA0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_99();
  v87[13] = sub_1C96A6344();
  v199 = v184;
  v200 = v185;
  sub_1C96A3D04();
  sub_1C96A6364();

  OUTLINED_FUNCTION_89_0(v186);
  sub_1C96A6364();

  LOBYTE(v199) = v183;
  sub_1C94FD744();
  sub_1C94FD798();
  sub_1C96A6284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4DC0);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v168, v169, v170, v171);
  sub_1C96A6364();

  OUTLINED_FUNCTION_89_0(v187);
  sub_1C96A6364();

  v199 = v198;
  v200 = v195;
  sub_1C94874C0(v198, v195);
  sub_1C96A6364();

  v199 = v196;
  v200 = v197;
  sub_1C94874C0(v196, v197);
  sub_1C96A6364();

  OUTLINED_FUNCTION_89_0(v188);
  sub_1C96A6364();

  OUTLINED_FUNCTION_89_0(v189);
  sub_1C96A6364();

  OUTLINED_FUNCTION_89_0(v191);
  sub_1C96A6364();

  v172 = sub_1C96A4A54();
  v173 = *(v172 - 8);
  v174 = *(v173 + 16);
  v174(v190, v192, v172);
  v175 = OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_107(v175, v176, v177, v172);
  sub_1C96A6364();

  v174(v190, v193, v172);
  v178 = OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_107(v178, v179, v180, v172);
  sub_1C96A6364();

  OUTLINED_FUNCTION_89_0(v194);
  sub_1C96A6364();

  sub_1C9482F3C(v196, v197);
  sub_1C9482F3C(v198, v195);
  v181 = *(v173 + 8);
  v181(v193, v172);
  v181(v192, v172);
  OUTLINED_FUNCTION_101();
}

unint64_t sub_1C94FD744()
{
  result = qword_1EC3A4DB0;
  if (!qword_1EC3A4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4DB0);
  }

  return result;
}

unint64_t sub_1C94FD798()
{
  result = qword_1EC3A4DB8;
  if (!qword_1EC3A4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4DB8);
  }

  return result;
}

void sub_1C94FD7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_103();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4DA8);
  OUTLINED_FUNCTION_7(v27);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_90();
  v201 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D48);
  v31 = OUTLINED_FUNCTION_7(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_24();
  v198 = v32;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_51_0();
  v196 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D50);
  v36 = OUTLINED_FUNCTION_7(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_24();
  v188 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_51_0();
  v187 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D58);
  v41 = OUTLINED_FUNCTION_7(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_57(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v45 = OUTLINED_FUNCTION_7(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2();
  v48 = v46 - v47;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_95();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v51 = OUTLINED_FUNCTION_7(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2();
  v54 = v52 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v176 - v56;
  v197 = v24;
  v58 = v24[1];
  v203 = *v24;
  v204 = v58;
  v59 = v24[2];
  v199 = v24[3];
  v200 = v59;
  v60 = v24[5];
  v189 = v24[4];
  v190 = v60;
  v61 = v24[7];
  v191 = v24[6];
  v192 = v61;
  v62 = v24[9];
  v193 = v24[8];
  v194 = v62;
  v195 = v24[10];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  v64 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v63);
  v67 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v186 = OUTLINED_FUNCTION_98_0();
  *&v202 = v57;
  OUTLINED_FUNCTION_3();
  v177 = v63;
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v63);
  v176 = v54;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v63);
  OUTLINED_FUNCTION_36();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v185 = OUTLINED_FUNCTION_98_0();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v76 = *MEMORY[0x1E69D61F8];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  v79 = *(v78 + 104);
  v79(v20, v76, v77);
  v80 = OUTLINED_FUNCTION_41_3();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v77);
  v83 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_115();
  v86 = sub_1C96A6344();
  v184 = v26;
  *(v26 + 16) = v86;
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v79(v20, v76, v77);
  v178 = v20;
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v77);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v79(v48, v76, v77);
  v179 = v48;
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v77);
  OUTLINED_FUNCTION_30_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_115();
  *(v26 + 24) = sub_1C96A6344();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_102_0();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v48);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
  OUTLINED_FUNCTION_36();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v183 = sub_1C96A6344();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D78);
  v101 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v100);
  v104 = OUTLINED_FUNCTION_16_6(&a14);
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_104_0();
  v182 = sub_1C96A6344();
  v107 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v100);
  v110 = OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v110, v111, v112, v100);
  OUTLINED_FUNCTION_65();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_104_0();
  sub_1C96A6344();
  v113 = OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_107(v113, v114, v115, v48);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
  OUTLINED_FUNCTION_36();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v181 = sub_1C96A6344();
  v120 = OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_107(v120, v121, v122, v48);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
  OUTLINED_FUNCTION_36();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v180 = sub_1C96A6344();
  v127 = OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_107(v127, v128, v129, v48);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v130, v131, v132, v133);
  OUTLINED_FUNCTION_36();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  *&v202 = sub_1C96A6344();
  v134 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v77);
  v137 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v77);
  OUTLINED_FUNCTION_30_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v177 = OUTLINED_FUNCTION_121();
  v140 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v140, v141, v142, v77);
  v143 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v143, v144, v145, v77);
  OUTLINED_FUNCTION_30_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v179 = OUTLINED_FUNCTION_121();
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D88);
  v147 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v146);
  v150 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v150, v151, v152, v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v188 = OUTLINED_FUNCTION_98_0();
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D98);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v154, v155, v156, v157);
  v158 = OUTLINED_FUNCTION_11_3();
  __swift_storeEnumTagSinglePayload(v158, v159, v160, v153);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4DA0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v161 = sub_1C96A6344();
  v162 = v184;
  *(v184 + 104) = v161;
  sub_1C96A3D04();
  v163 = v203;
  sub_1C96A3D04();

  *v162 = v163;
  v164 = v204;
  sub_1C96A3D04();

  *(v162 + 8) = v164;
  v165 = v189;
  sub_1C96A3D04();

  *(v162 + 32) = v165;
  v166 = v190;
  sub_1C96A3D04();

  *(v162 + 40) = v166;
  v167 = v191;
  sub_1C96A3D04();

  *(v162 + 48) = v167;
  v168 = v192;
  sub_1C96A3D04();

  *(v162 + 56) = v168;
  v169 = v193;
  sub_1C96A3D04();

  *(v162 + 64) = v169;
  v170 = v194;
  sub_1C96A3D04();

  *(v162 + 72) = v170;
  v171 = v195;
  sub_1C96A3D04();

  *(v162 + 80) = v171;
  v202 = *(v197 + 11);
  sub_1C96A3D04();

  *(v162 + 88) = v202;
  v205 = 1;
  sub_1C94FD744();
  sub_1C94FD798();
  sub_1C96A6284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4DC0);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v172, v173, v174, v175);
  sub_1C96A6364();

  OUTLINED_FUNCTION_101();
}

void SevereNotificationEntity.markAsReplaced(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_103();
  a19 = v21;
  a20 = v22;
  v247 = v23;
  v244 = v24;
  v233 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D48);
  v27 = OUTLINED_FUNCTION_7(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_57(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D50);
  v34 = OUTLINED_FUNCTION_7(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_57(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D58);
  v38 = OUTLINED_FUNCTION_7(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_57(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v42 = OUTLINED_FUNCTION_7(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_57(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v46 = OUTLINED_FUNCTION_7(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_24();
  v246 = v47;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_51_0();
  v50 = v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v52 = OUTLINED_FUNCTION_7(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v53);
  v55 = v215 - v54;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_51_0();
  v245 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4DA8);
  v59 = OUTLINED_FUNCTION_7(v58);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v60);
  v62 = v215 - v61;
  v63 = v20[9];
  v238 = v20[8];
  v237 = v63;
  v64 = v20[11];
  v236 = v20[10];
  v235 = v64;
  sub_1C96A6354();
  v232 = v261;
  if (!v261)
  {
    __break(1u);
    goto LABEL_13;
  }

  v229 = v260[1];
  sub_1C96A6354();
  v65 = v260[0];
  if (!v260[0])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v228 = v259;
  sub_1C96A6354();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4DC0);
  if (__swift_getEnumTagSinglePayload(v62, 1, v66) == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1C96A6294();
  v227 = v258;
  (*(*(v66 - 8) + 8))(v62, v66);
  sub_1C96A6354();
  v67 = v257;
  if (!v257)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v225 = v65;
  v226 = v66;
  v224 = v256;
  sub_1C96A6354();
  v68 = v255;
  if (v255 >> 60 == 15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v223 = v67;
  v69 = v254;
  sub_1C96A6354();
  v70 = v253;
  if (v253 >> 60 == 15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v71 = v252[1];
  sub_1C96A6354();
  if (!v252[0])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v72 = v55;
  v222 = v252[0];
  v221 = v251[1];
  sub_1C96A6354();
  v237 = v251[0];
  if (!v251[0])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v220 = v250;
  v73 = v245;
  sub_1C96A6354();
  v74 = sub_1C96A4A54();
  if (__swift_getEnumTagSinglePayload(v73, 1, v74) == 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v218 = v71;
  v219 = v70;
  v240 = v69;
  v241 = v68;
  v236 = v30;
  sub_1C96A6354();
  v235 = v74;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v74);
  v217 = v72;
  if (EnumTagSinglePayload != 1)
  {
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
    OUTLINED_FUNCTION_13_3();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
    v81 = OUTLINED_FUNCTION_11_3();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
    OUTLINED_FUNCTION_9_2();
    swift_allocObject();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_27_3();
    v84 = sub_1C96A6344();
    v85 = v233;
    *v233 = v84;
    v86 = v85;
    OUTLINED_FUNCTION_106(v84, &v244);
    v239 = v50;
    OUTLINED_FUNCTION_3();
    v238 = v76;
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v76);
    v90 = OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_56(v90, v91, v92, v76);
    OUTLINED_FUNCTION_66();
    sub_1C96A3D04();
    OUTLINED_FUNCTION_1_0();
    v216 = sub_1C96A6344();
    v86[1] = v216;
    v93 = v86;
    sub_1C96A3D04();
    v94 = v242;
    _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
    v95 = *MEMORY[0x1E69D61F8];
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
    OUTLINED_FUNCTION_6();
    v98 = *(v97 + 104);
    v98(v94, v95, v96);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
    v103 = v243;
    OUTLINED_FUNCTION_12_1();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
    OUTLINED_FUNCTION_9_2();
    swift_allocObject();
    OUTLINED_FUNCTION_1_1();
    v93[2] = sub_1C96A6344();
    _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
    v98(v94, v95, v96);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
    _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
    v98(v103, v95, v96);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
    OUTLINED_FUNCTION_40_1();
    swift_allocObject();
    OUTLINED_FUNCTION_1_1();
    v93[3] = sub_1C96A6344();
    v116 = OUTLINED_FUNCTION_11_3();
    v117 = v238;
    __swift_storeEnumTagSinglePayload(v116, v118, v119, v238);
    v120 = OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_56(v120, v121, v122, v117);
    OUTLINED_FUNCTION_1_1();
    v123 = sub_1C96A6344();
    v93[4] = v123;
    v215[2] = v123;
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D78);
    v125 = OUTLINED_FUNCTION_17_8(&v256);
    __swift_storeEnumTagSinglePayload(v125, v126, v127, v124);
    v128 = OUTLINED_FUNCTION_34();
    __swift_storeEnumTagSinglePayload(v128, v129, v130, v124);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80);
    OUTLINED_FUNCTION_9_2();
    swift_allocObject();
    OUTLINED_FUNCTION_97();
    OUTLINED_FUNCTION_1_0();
    v131 = sub_1C96A6344();
    v93[5] = v131;
    v215[1] = v131;
    v132 = OUTLINED_FUNCTION_21_0();
    __swift_storeEnumTagSinglePayload(v132, v133, v134, v124);
    v135 = OUTLINED_FUNCTION_34();
    __swift_storeEnumTagSinglePayload(v135, v136, v137, v124);
    OUTLINED_FUNCTION_36();
    swift_allocObject();
    OUTLINED_FUNCTION_97();
    OUTLINED_FUNCTION_1_0();
    v138 = sub_1C96A6344();
    v139 = v93;
    v93[6] = v138;
    v231 = v138;
    v140 = OUTLINED_FUNCTION_9_5(&a14);
    v141 = v238;
    __swift_storeEnumTagSinglePayload(v140, v142, v143, v238);
    v144 = OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_56(v144, v145, v146, v141);
    sub_1C96A3D04();
    OUTLINED_FUNCTION_5_7();
    v147 = sub_1C96A6344();
    v93[7] = v147;
    v230 = v147;
    v148 = OUTLINED_FUNCTION_14_5();
    __swift_storeEnumTagSinglePayload(v148, v149, v150, v141);
    v151 = OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_56(v151, v152, v153, v141);
    sub_1C96A3D04();
    OUTLINED_FUNCTION_5_7();
    v93[8] = sub_1C96A6344();
    v154 = OUTLINED_FUNCTION_14_5();
    __swift_storeEnumTagSinglePayload(v154, v155, v156, v141);
    v157 = OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_56(v157, v158, v159, v141);
    sub_1C96A3D04();
    OUTLINED_FUNCTION_5_7();
    v93[9] = sub_1C96A6344();
    v160 = OUTLINED_FUNCTION_9_5(&a17);
    __swift_storeEnumTagSinglePayload(v160, v161, v162, v96);
    OUTLINED_FUNCTION_12_1();
    __swift_storeEnumTagSinglePayload(v163, v164, v165, v166);
    OUTLINED_FUNCTION_40_1();
    swift_allocObject();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_5_7();
    v167 = sub_1C96A6344();
    v93[10] = v167;
    v246 = v167;
    OUTLINED_FUNCTION_12_1();
    __swift_storeEnumTagSinglePayload(v168, v169, v170, v171);
    OUTLINED_FUNCTION_12_1();
    __swift_storeEnumTagSinglePayload(v172, v173, v174, v175);
    OUTLINED_FUNCTION_40_1();
    swift_allocObject();
    sub_1C96A3D04();
    OUTLINED_FUNCTION_5_7();
    v176 = sub_1C96A6344();
    v139[11] = v176;
    v243 = v176;
    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D88);
    v178 = OUTLINED_FUNCTION_17_8(v260);
    __swift_storeEnumTagSinglePayload(v178, v179, v180, v177);
    v181 = OUTLINED_FUNCTION_5_4();
    __swift_storeEnumTagSinglePayload(v181, v182, v183, v177);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
    OUTLINED_FUNCTION_9_2();
    swift_allocObject();
    OUTLINED_FUNCTION_97();
    OUTLINED_FUNCTION_1_0();
    v184 = sub_1C96A6344();
    v139[12] = v184;
    v242 = v184;
    v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D98);
    OUTLINED_FUNCTION_0();
    __swift_storeEnumTagSinglePayload(v186, v187, v188, v189);
    v190 = OUTLINED_FUNCTION_16_6(&a11);
    __swift_storeEnumTagSinglePayload(v190, v191, v192, v185);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4DA0);
    OUTLINED_FUNCTION_9_2();
    swift_allocObject();
    OUTLINED_FUNCTION_66();
    sub_1C96A3D04();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_99();
    v139[13] = sub_1C96A6344();
    v248 = v229;
    v249 = v232;
    sub_1C96A3D04();
    sub_1C96A6364();

    OUTLINED_FUNCTION_63(v252);
    sub_1C96A6364();

    LOBYTE(v248) = v227;
    sub_1C94FD744();
    sub_1C94FD798();
    sub_1C96A6284();
    OUTLINED_FUNCTION_48();
    __swift_storeEnumTagSinglePayload(v193, v194, v195, v226);
    sub_1C96A6364();

    OUTLINED_FUNCTION_63(v251);
    sub_1C96A6364();

    v248 = OUTLINED_FUNCTION_111();
    v249 = v196;
    sub_1C94874C0(v248, v196);
    sub_1C96A6364();

    v197 = v218;
    v198 = v219;
    v248 = v218;
    v249 = v219;
    sub_1C94874C0(v218, v219);
    sub_1C96A6364();

    v248 = v244;
    v249 = v247;
    sub_1C96A6364();

    OUTLINED_FUNCTION_63(&v250);
    sub_1C96A6364();

    OUTLINED_FUNCTION_63(&a12);
    sub_1C96A6364();

    OUTLINED_FUNCTION_102_0();
    v199 = *(v176 - 8);
    v200 = *(v199 + 16);
    v201 = v234;
    v202 = v245;
    v200(v234, v245, v176);
    OUTLINED_FUNCTION_47_1();
    __swift_storeEnumTagSinglePayload(v203, v204, v205, v206);
    sub_1C96A6364();

    v207 = v217;
    v200(v201, v217, v176);
    OUTLINED_FUNCTION_47_1();
    __swift_storeEnumTagSinglePayload(v208, v209, v210, v211);
    sub_1C96A6364();

    v248 = v244;
    v249 = v247;
    sub_1C96A53C4();
    sub_1C96A6364();

    sub_1C9485BFC(v197, v198);
    v212 = OUTLINED_FUNCTION_111();
    sub_1C9485BFC(v212, v213);
    v214 = *(v199 + 8);
    v214(v207, v176);
    v214(v202, v176);
    OUTLINED_FUNCTION_101();
    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_1C94FEEEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001C96CC4C0 == a2;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702125924 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465696669646F6DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974;
            if (v10 || (sub_1C96A7DE4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7472656C61 && a2 == 0xE500000000000000;
              if (v11 || (sub_1C96A7DE4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6564497472656C61 && a2 == 0xEF7265696669746ELL;
                if (v12 || (sub_1C96A7DE4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x80000001C96CC4E0 == a2;
                  if (v13 || (sub_1C96A7DE4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001C96CC500 == a2;
                    if (v14 || (sub_1C96A7DE4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6954646575737369 && a2 == 0xEA0000000000656DLL;
                      if (v15 || (sub_1C96A7DE4() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6954657269707865 && a2 == 0xEA0000000000656DLL;
                        if (v16 || (sub_1C96A7DE4() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000010 && 0x80000001C96CC520 == a2;
                          if (v17 || (sub_1C96A7DE4() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0xD000000000000010 && 0x80000001C96CC540 == a2)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_1C96A7DE4();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

uint64_t sub_1C94FF330(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 1702125924;
      break;
    case 3:
      result = 0x6465696669646F6DLL;
      break;
    case 4:
      result = 0x7069726373627573;
      break;
    case 5:
      result = 0x6163696669746F6ELL;
      break;
    case 6:
      result = 0x7472656C61;
      break;
    case 7:
      result = 0x6564497472656C61;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      v3 = 0x646575737369;
      goto LABEL_16;
    case 11:
      v3 = 0x657269707865;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C94FF4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C94FEEEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C94FF4D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94FF328();
  *a1 = result;
  return result;
}

uint64_t sub_1C94FF4FC(uint64_t a1)
{
  v2 = sub_1C94FF9D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C94FF538(uint64_t a1)
{
  v2 = sub_1C94FF9D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SevereNotificationEntity.encode(to:)()
{
  OUTLINED_FUNCTION_119();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4DC8);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v6 = sub_1C94FF9D0();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_105();
  sub_1C96A7F54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_0_8();
  sub_1C9469CB4(v7, &qword_1EC3A4AD8);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_42_0();

  if (v6)
  {
    v8 = OUTLINED_FUNCTION_116();
    v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_42_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
    OUTLINED_FUNCTION_0_8();
    sub_1C9469CB4(v10, &qword_1EC3A4D70);
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_25_3(3);
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_25_3(4);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_112();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80);
    OUTLINED_FUNCTION_0_8();
    sub_1C9469CB4(v11, &qword_1EC3A4D80);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_25_3(6);
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_25_3(7);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_25_3(8);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_25_3(9);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_25_3(10);
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_25_3(11);
    OUTLINED_FUNCTION_69_0();
    sub_1C96A7D74();
    OUTLINED_FUNCTION_114();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
    OUTLINED_FUNCTION_0_8();
    sub_1C9469CB4(v12, &qword_1EC3A4D90);
    OUTLINED_FUNCTION_33_0();
    sub_1C96A7D74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4DA0);
    OUTLINED_FUNCTION_0_8();
    sub_1C9469CB4(v13, &qword_1EC3A4DA0);
    OUTLINED_FUNCTION_33_0();
    sub_1C96A7D74();
    (*(v4 + 8))(v0);
  }

  OUTLINED_FUNCTION_118();
}

unint64_t sub_1C94FF9D0()
{
  result = qword_1EC3A4DD0;
  if (!qword_1EC3A4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A4DD0);
  }

  return result;
}

void SevereNotificationEntity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_119();
  v180 = v10;
  v195 = v12;
  v172 = v13;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4DF8);
  OUTLINED_FUNCTION_1();
  v174 = v14;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_57(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D48);
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_57(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D50);
  v22 = OUTLINED_FUNCTION_7(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_57(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D58);
  v26 = OUTLINED_FUNCTION_7(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_57(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v30 = OUTLINED_FUNCTION_7(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_24();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_96();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v35 = OUTLINED_FUNCTION_7(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_24();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v172 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_108_0();
  v188 = sub_1C96A6344();
  v193 = v40;
  OUTLINED_FUNCTION_3();
  v194 = v41;
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v41);
  v177 = v37;
  OUTLINED_FUNCTION_13_3();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  OUTLINED_FUNCTION_40_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_108_0();
  v191 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v57 = *MEMORY[0x1E69D61F8];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  v176 = v58;
  OUTLINED_FUNCTION_6();
  v60 = *(v59 + 104);
  v60(v11, v57, v58);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v190 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v70 = v176;
  v60(v11, v57, v176);
  v178 = v11;
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v70);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v60(v32, v57, v70);
  v179 = v32;
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v70);
  OUTLINED_FUNCTION_30_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v189 = sub_1C96A6344();
  v77 = OUTLINED_FUNCTION_9_5(&v207);
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v194);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  OUTLINED_FUNCTION_36();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v187 = OUTLINED_FUNCTION_120();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D78);
  v85 = OUTLINED_FUNCTION_9_5(&v203);
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v84);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_92();
  v186 = sub_1C96A6344();
  v93 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v84);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
  v173 = v92;
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_92();
  v185 = sub_1C96A6344();
  v100 = OUTLINED_FUNCTION_9_5(&v207);
  v101 = v194;
  __swift_storeEnumTagSinglePayload(v100, v102, v103, v194);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
  OUTLINED_FUNCTION_36();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v184 = OUTLINED_FUNCTION_120();
  v108 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v101);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
  OUTLINED_FUNCTION_36();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v183 = OUTLINED_FUNCTION_120();
  v115 = OUTLINED_FUNCTION_14_5();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v101);
  OUTLINED_FUNCTION_22_1();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v122 = OUTLINED_FUNCTION_120();
  v123 = OUTLINED_FUNCTION_9_5(&v196[12]);
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v70);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v129);
  OUTLINED_FUNCTION_30_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_113_1();
  v194 = sub_1C96A6344();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v130, v131, v132, v133);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v137);
  v177 = v69;
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_113_1();
  v193 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D88);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v138, v139, v140, v141);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v142, v143, v144, v145);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D90);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_99();
  v182 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D98);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v146, v147, v148, v149);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v150, v151, v152, v153);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4DA0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v181 = sub_1C96A6344();
  v154 = v195[4];
  __swift_project_boxed_opaque_existential_1(v195, v195[3]);
  sub_1C94FF9D0();
  v155 = v180;
  OUTLINED_FUNCTION_104_0();
  sub_1C96A7F44();
  if (v155)
  {
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_102_0();
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v198 = v154;
    v199 = v191;
    OUTLINED_FUNCTION_64_0();
    v200 = v158;
    v201 = v157;
    v202 = v187;
    v203 = v186;
    OUTLINED_FUNCTION_87();
    v204 = v159;
    v205 = v122;
    OUTLINED_FUNCTION_68();
    v160 = &v200;
  }

  else
  {
    v180 = v122;
    LOBYTE(v196[0]) = 0;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8);
    OUTLINED_FUNCTION_8_8();

    v156 = v198;
    OUTLINED_FUNCTION_61(1);
    OUTLINED_FUNCTION_8_8();

    v191 = v198;
    OUTLINED_FUNCTION_61(2);
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_55();

    v190 = v198;
    OUTLINED_FUNCTION_15_3(3);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_55();

    v189 = v198;
    OUTLINED_FUNCTION_61(4);
    OUTLINED_FUNCTION_8_8();
    v188 = v156;

    v187 = v198;
    OUTLINED_FUNCTION_61(5);
    OUTLINED_FUNCTION_5(&qword_1EC3A4E08, &qword_1EC3A4D80);
    v161 = v173;
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_55();

    v186 = v198;
    OUTLINED_FUNCTION_15_3(6);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_55();

    v185 = v198;
    OUTLINED_FUNCTION_61(7);
    OUTLINED_FUNCTION_8_8();
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_102_0();

    v184 = v198;
    OUTLINED_FUNCTION_61(8);
    OUTLINED_FUNCTION_8_8();

    v183 = v198;
    OUTLINED_FUNCTION_61(9);
    OUTLINED_FUNCTION_8_8();

    v162 = v198;
    OUTLINED_FUNCTION_15_3(10);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_55();

    v194 = v198;
    OUTLINED_FUNCTION_15_3(11);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_55();

    v193 = v198;
    OUTLINED_FUNCTION_61(12);
    OUTLINED_FUNCTION_5(&qword_1EC3A4E10, &qword_1EC3A4D90);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_55();

    v182 = v198;
    v197 = 13;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E18, &qword_1EC3A4DA0);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_55();
    v163 = OUTLINED_FUNCTION_6_6();
    v164(v163);

    v192 = a10;
    v165 = v188;
    v196[0] = v188;
    v166 = v191;
    v196[1] = v191;
    v167 = v190;
    v196[2] = v190;
    v168 = v189;
    v196[3] = v189;
    v169 = v187;
    v196[4] = v187;
    v170 = v186;
    v196[5] = v186;
    v196[6] = v185;
    v196[7] = v184;
    v196[8] = v183;
    v196[9] = v162;
    v196[10] = v194;
    v196[11] = v193;
    v196[12] = v182;
    v196[13] = a10;
    memcpy(v172, v196, 0x70uLL);
    sub_1C9500830(v196, &v198);
    __swift_destroy_boxed_opaque_existential_1Tm(v161);
    v198 = v165;
    v199 = v166;
    v200 = v167;
    v201 = v168;
    v202 = v169;
    v203 = v170;
    OUTLINED_FUNCTION_87();
    v204 = v171;
    v205 = v162;
    OUTLINED_FUNCTION_68();
    v160 = &v206;
  }

  v206 = *(v160 - 32);
  sub_1C9500800(&v198);
  OUTLINED_FUNCTION_118();
}