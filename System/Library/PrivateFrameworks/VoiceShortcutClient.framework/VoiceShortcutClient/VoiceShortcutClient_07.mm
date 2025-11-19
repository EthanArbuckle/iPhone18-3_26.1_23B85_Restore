void TriggerType.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v79 = v0;
  v2 = v1;
  v70 = v3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F70, &qword_1B1F354F8);
  OUTLINED_FUNCTION_0(v78);
  v73 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v75 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F78, &qword_1B1F35500);
  v10 = OUTLINED_FUNCTION_0(v9);
  v71 = v11;
  v72 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v74 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F80, &qword_1B1F35508);
  v17 = OUTLINED_FUNCTION_0(v16);
  v76 = v18;
  v77 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_39_1();
  v22 = type metadata accessor for TriggerType(0);
  v23 = OUTLINED_FUNCTION_10(v22);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v66 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v66 - v32;
  v34 = v2[4];
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E7B218();
  v35 = v79;
  sub_1B1F1B810();
  if (v35)
  {
    goto LABEL_8;
  }

  v66 = v28;
  v67 = v31;
  v36 = v77;
  v68 = v33;
  v69 = v22;
  v79 = v2;
  v37 = sub_1B1F1B210();
  sub_1B1E32BFC(v37, 0);
  if (v39 == v40 >> 1)
  {
LABEL_7:
    v50 = v69;
    v51 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13();
    v53 = v52;
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v53 = v50;
    sub_1B1F1B190();
    OUTLINED_FUNCTION_35_3();
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x1E69E6AF8], v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    v55 = OUTLINED_FUNCTION_19_10();
    v56(v55, v36);
    v2 = v79;
LABEL_8:
    v57 = v2;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v57);
    OUTLINED_FUNCTION_35();
    return;
  }

  if (v39 < (v40 >> 1))
  {
    v80 = *(v38 + v39);
    sub_1B1E32BF8(v39 + 1);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    if (v42 == v44 >> 1)
    {
      v45 = v36;
      if (v80)
      {
        OUTLINED_FUNCTION_84();
        sub_1B1E7B26C();
        OUTLINED_FUNCTION_42_0();
        v46 = v68;
        type metadata accessor for LocationTrigger(0);
        OUTLINED_FUNCTION_12_7();
        sub_1B1E771F0(v47, v48);
        v49 = v66;
        OUTLINED_FUNCTION_55_0();
        swift_unknownObjectRelease();
        v60 = OUTLINED_FUNCTION_20_5();
        v61(v60);
        v62 = OUTLINED_FUNCTION_50_0();
      }

      else
      {
        sub_1B1E7B2C0();
        OUTLINED_FUNCTION_42_0();
        v46 = v68;
        type metadata accessor for TimeOfDayTrigger(0);
        OUTLINED_FUNCTION_11_8();
        sub_1B1E771F0(v58, v59);
        v49 = v67;
        OUTLINED_FUNCTION_55_0();
        swift_unknownObjectRelease();
        v64 = OUTLINED_FUNCTION_20_5();
        v65(v64);
        v62 = OUTLINED_FUNCTION_19_10();
      }

      v63(v62, v45);
      swift_storeEnumTagMultiPayload();
      sub_1B1E7AE0C(v49, v46);
      sub_1B1E7AE0C(v46, v70);
      v57 = v79;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B1E79D58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_41_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001B1F39C20 == a2;
    if (v6 || (OUTLINED_FUNCTION_41_1() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74756374726F6873 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_41_1();

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

uint64_t sub_1B1E79E48(char a1)
{
  if (!a1)
  {
    return 0x746E65746E69;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x74756374726F6873;
}

uint64_t sub_1B1E79EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E79D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E79EE4(uint64_t a1)
{
  v2 = sub_1B1E7B314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E79F20(uint64_t a1)
{
  v2 = sub_1B1E7B314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CodableTriggerAction.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F98, &qword_1B1F35510);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_39_1();
  v11 = v2[4];
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E7B314();
  sub_1B1F1B810();
  if (!v0)
  {
    sub_1B1E0EDAC();
    OUTLINED_FUNCTION_24_0();
    sub_1B1F1B200();
    sub_1B1DEA98C(0, qword_1EB7849B8, 0x1E696ACD0);
    sub_1B1DEA98C(0, &qword_1EB785FB0, 0x1E69AC640);
    v12 = sub_1B1F1AD40();
    if (v12)
    {
      v22 = v12;
      OUTLINED_FUNCTION_24_0();
      v19 = sub_1B1F1B1C0();
      v21 = v20;
      sub_1B1E03C48(v23, v24);
      v13 = *(v7 + 8);
      v14 = OUTLINED_FUNCTION_49();
      v15(v14);
      *v4 = v22;
      *(v4 + 8) = v19;
      *(v4 + 16) = v21;
      *(v4 + 24) = 0;
    }

    else
    {
      sub_1B1F1AFE0();
      OUTLINED_FUNCTION_13();
      sub_1B1E7B368(&qword_1EB785FA8, &qword_1EB785F98, &qword_1B1F35510);
      sub_1B1F1AFC0();
      swift_willThrow();
      sub_1B1E03C48(v23, v24);
      v16 = *(v7 + 8);
      v17 = OUTLINED_FUNCTION_49();
      v18(v17);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_35();
}

void CodableTriggerAction.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v31 = v1;
  v3 = v2;
  v33[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785FB8, &qword_1B1F35518);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  v12 = *v0;
  v13 = v0[1];
  v29 = v0[2];
  v30 = v12;
  v14 = *(v0 + 24);
  v15 = v3[4];
  OUTLINED_FUNCTION_44(v3, v3[3]);
  sub_1B1E7B314();
  sub_1B1F1B830();
  if (v14)
  {
    LOBYTE(v33[0]) = 2;
    sub_1B1F1B270();
    (*(v6 + 8))(v11, v4);
  }

  else
  {
    v27[1] = v13;
    v28 = v11;
    v16 = v6;
    v17 = v31;
    v18 = objc_opt_self();
    v33[0] = 0;
    v19 = [v18 archivedDataWithRootObject:v30 requiringSecureCoding:1 error:v33];
    v20 = v33[0];
    if (v19)
    {
      v21 = sub_1B1F1A290();
      v23 = v22;

      v33[0] = v21;
      v33[1] = v23;
      v32 = 0;
      sub_1B1E0EF20();
      v24 = v28;
      sub_1B1F1B2B0();
      if (v17)
      {
        (*(v16 + 8))(v24, v4);
        sub_1B1E03C48(v21, v23);
      }

      else
      {
        LOBYTE(v33[0]) = 1;
        sub_1B1F1B270();
        sub_1B1E03C48(v21, v23);
        (*(v16 + 8))(v24, v4);
      }
    }

    else
    {
      v25 = v20;
      sub_1B1F1A1C0();

      swift_willThrow();
      (*(v16 + 8))(v28, v4);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_35();
}

uint64_t ScheduledTrigger.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B1F1A760();
  return OUTLINED_FUNCTION_6_8();
}

uint64_t ScheduledTrigger.triggerType.getter()
{
  v2 = OUTLINED_FUNCTION_87();
  v3 = *(type metadata accessor for ScheduledTrigger(v2) + 20);
  OUTLINED_FUNCTION_13_7();
  return sub_1B1E7AEB8(v1 + v4, v0);
}

uint64_t ScheduledTrigger.triggerType.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ScheduledTrigger(0) + 20);

  return sub_1B1E7B3DC(a1, v3);
}

uint64_t ScheduledTrigger.init(identifier:trigger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_0(a3, v6);
  v8 = *(v7 + 32);
  v9 = a4 + *(type metadata accessor for ScheduledTrigger(0) + 20);
  v8(v6, v7);

  return __swift_destroy_boxed_opaque_existential_1(a3);
}

uint64_t sub_1B1E7A7C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5472656767697274 && a2 == 0xEB00000000657079)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B1E7A898(char a1)
{
  if (a1)
  {
    return 0x5472656767697274;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1B1E7A8DC()
{
  v1 = *v0;
  sub_1B1F1B7C0();
  OUTLINED_FUNCTION_58_0();
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E7A920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E7A7C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E7A948(uint64_t a1)
{
  v2 = sub_1B1E7B440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E7A984(uint64_t a1)
{
  v2 = sub_1B1E7B440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ScheduledTrigger.encode(to:)()
{
  OUTLINED_FUNCTION_33_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785FC0, &qword_1B1F35520);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_16_11();
  sub_1B1E7B440();
  OUTLINED_FUNCTION_15_13();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_24_0();
  sub_1B1F1B270();
  if (!v0)
  {
    v8 = *(type metadata accessor for ScheduledTrigger(0) + 20);
    OUTLINED_FUNCTION_33_2();
    type metadata accessor for TriggerType(0);
    OUTLINED_FUNCTION_9_12();
    sub_1B1E771F0(v9, v10);
    OUTLINED_FUNCTION_24_0();
    sub_1B1F1B2B0();
  }

  v11 = OUTLINED_FUNCTION_8_11();
  return v12(v11);
}

void ScheduledTrigger.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v27 = v3;
  v28 = type metadata accessor for TriggerType(0);
  v4 = OUTLINED_FUNCTION_10(v28);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_3();
  v9 = v8 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785FD0, &qword_1B1F35528);
  OUTLINED_FUNCTION_0(v29);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_17_6();
  v14 = type metadata accessor for ScheduledTrigger(v13);
  v15 = OUTLINED_FUNCTION_10(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_3();
  v20 = (v19 - v18);
  v21 = v2[4];
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E7B440();
  sub_1B1F1B810();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    *v20 = sub_1B1F1B1C0();
    v20[1] = v22;
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_9_12();
    sub_1B1E771F0(v23, v24);
    sub_1B1F1B200();
    v25 = OUTLINED_FUNCTION_31_6();
    v26(v25);
    sub_1B1E7AE0C(v9, v20 + *(v14 + 20));
    sub_1B1E7AEB8(v20, v27);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1B1E7AF10(v20, type metadata accessor for ScheduledTrigger);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E7AE0C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_25_4();
  v5 = v4(v3);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_6_8();
  v9(v8);
  return a2;
}

unint64_t sub_1B1E7AE64()
{
  result = qword_1EB785EC8;
  if (!qword_1EB785EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785EC8);
  }

  return result;
}

uint64_t sub_1B1E7AEB8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_25_4();
  v5 = v4(v3);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_6_8();
  v9(v8);
  return a2;
}

uint64_t sub_1B1E7AF10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_10(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1B1E7AF88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785ED8, &qword_1B1F354C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1E7AFF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785ED8, &qword_1B1F354C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1E7B068()
{
  result = qword_1EB785EE8;
  if (!qword_1EB785EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785EE8);
  }

  return result;
}

unint64_t sub_1B1E7B0BC()
{
  result = qword_1EB785F00;
  if (!qword_1EB785F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785F00);
  }

  return result;
}

unint64_t sub_1B1E7B110()
{
  result = qword_1EB785F18;
  if (!qword_1EB785F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785F18);
  }

  return result;
}

unint64_t sub_1B1E7B164()
{
  result = qword_1EB785F20;
  if (!qword_1EB785F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB785ED8, &qword_1B1F354C8);
    sub_1B1E771F0(&qword_1EB785F28, type metadata accessor for LocationTrigger.TimeRange);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785F20);
  }

  return result;
}

unint64_t sub_1B1E7B218()
{
  result = qword_1EB785F48;
  if (!qword_1EB785F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785F48);
  }

  return result;
}

unint64_t sub_1B1E7B26C()
{
  result = qword_1EB785F50;
  if (!qword_1EB785F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785F50);
  }

  return result;
}

unint64_t sub_1B1E7B2C0()
{
  result = qword_1EB785F60;
  if (!qword_1EB785F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785F60);
  }

  return result;
}

unint64_t sub_1B1E7B314()
{
  result = qword_1EB785FA0;
  if (!qword_1EB785FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785FA0);
  }

  return result;
}

uint64_t sub_1B1E7B368(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1B1E7B3DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TriggerType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1E7B440()
{
  result = qword_1EB785FC8;
  if (!qword_1EB785FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785FC8);
  }

  return result;
}

uint64_t sub_1B1E7B494(uint64_t a1)
{
  *(a1 + 8) = sub_1B1E771F0(&qword_1EB785F90, type metadata accessor for TimeOfDayTrigger);
  result = sub_1B1E771F0(&qword_1EB785F68, type metadata accessor for TimeOfDayTrigger);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B1E7B51C()
{
  result = qword_1EB785FD8;
  if (!qword_1EB785FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785FD8);
  }

  return result;
}

uint64_t sub_1B1E7B570(uint64_t a1)
{
  *(a1 + 8) = sub_1B1E771F0(&qword_1EB785F88, type metadata accessor for LocationTrigger);
  result = sub_1B1E771F0(&qword_1EB785F58, type metadata accessor for LocationTrigger);
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_19VoiceShortcutClient10RecurrenceO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void sub_1B1E7B6B8()
{
  sub_1B1DEA98C(319, &qword_1EB785EF0, 0x1E695FBB0);
  if (v0 <= 0x3F)
  {
    sub_1B1E7B764();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B1E7B764()
{
  if (!qword_1EB786010)
  {
    type metadata accessor for LocationTrigger.TimeRange(255);
    v0 = sub_1B1F1AEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB786010);
    }
  }
}

uint64_t sub_1B1E7B7F4()
{
  result = sub_1B1F1A110();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1E7B888()
{
  result = type metadata accessor for TimeOfDayTrigger(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocationTrigger(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B1E7B924(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1E7B960(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B1E7B9B0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_1B1E7B9F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1E7BA38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B1E7BAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableTriggerAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B1E7BC68(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LocationTrigger.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1B1E7BE30(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B1E7BF10()
{
  result = qword_1EB786048;
  if (!qword_1EB786048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786048);
  }

  return result;
}

unint64_t sub_1B1E7BF68()
{
  result = qword_1EB786050;
  if (!qword_1EB786050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786050);
  }

  return result;
}

unint64_t sub_1B1E7BFC0()
{
  result = qword_1EB786058;
  if (!qword_1EB786058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786058);
  }

  return result;
}

unint64_t sub_1B1E7C018()
{
  result = qword_1EB786060;
  if (!qword_1EB786060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786060);
  }

  return result;
}

unint64_t sub_1B1E7C070()
{
  result = qword_1EB786068;
  if (!qword_1EB786068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786068);
  }

  return result;
}

unint64_t sub_1B1E7C0C8()
{
  result = qword_1EB786070;
  if (!qword_1EB786070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786070);
  }

  return result;
}

unint64_t sub_1B1E7C120()
{
  result = qword_1EB786078;
  if (!qword_1EB786078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786078);
  }

  return result;
}

unint64_t sub_1B1E7C178()
{
  result = qword_1EB786080;
  if (!qword_1EB786080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786080);
  }

  return result;
}

unint64_t sub_1B1E7C1D0()
{
  result = qword_1EB786088;
  if (!qword_1EB786088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786088);
  }

  return result;
}

unint64_t sub_1B1E7C228()
{
  result = qword_1EB786090;
  if (!qword_1EB786090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786090);
  }

  return result;
}

unint64_t sub_1B1E7C280()
{
  result = qword_1EB786098;
  if (!qword_1EB786098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786098);
  }

  return result;
}

unint64_t sub_1B1E7C2D8()
{
  result = qword_1EB7860A0;
  if (!qword_1EB7860A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860A0);
  }

  return result;
}

unint64_t sub_1B1E7C330()
{
  result = qword_1EB7860A8;
  if (!qword_1EB7860A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860A8);
  }

  return result;
}

unint64_t sub_1B1E7C388()
{
  result = qword_1EB7860B0;
  if (!qword_1EB7860B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860B0);
  }

  return result;
}

unint64_t sub_1B1E7C3E0()
{
  result = qword_1EB7860B8;
  if (!qword_1EB7860B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860B8);
  }

  return result;
}

unint64_t sub_1B1E7C438()
{
  result = qword_1EB7860C0;
  if (!qword_1EB7860C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860C0);
  }

  return result;
}

unint64_t sub_1B1E7C490()
{
  result = qword_1EB7860C8;
  if (!qword_1EB7860C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860C8);
  }

  return result;
}

unint64_t sub_1B1E7C4E8()
{
  result = qword_1EB7860D0;
  if (!qword_1EB7860D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860D0);
  }

  return result;
}

unint64_t sub_1B1E7C540()
{
  result = qword_1EB7860D8;
  if (!qword_1EB7860D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860D8);
  }

  return result;
}

unint64_t sub_1B1E7C598()
{
  result = qword_1EB7860E0;
  if (!qword_1EB7860E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860E0);
  }

  return result;
}

unint64_t sub_1B1E7C5F0()
{
  result = qword_1EB7860E8;
  if (!qword_1EB7860E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860E8);
  }

  return result;
}

unint64_t sub_1B1E7C648()
{
  result = qword_1EB7860F0;
  if (!qword_1EB7860F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860F0);
  }

  return result;
}

unint64_t sub_1B1E7C6A0()
{
  result = qword_1EB7860F8;
  if (!qword_1EB7860F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7860F8);
  }

  return result;
}

unint64_t sub_1B1E7C6F8()
{
  result = qword_1EB786100;
  if (!qword_1EB786100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786100);
  }

  return result;
}

unint64_t sub_1B1E7C750()
{
  result = qword_1EB786108;
  if (!qword_1EB786108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786108);
  }

  return result;
}

unint64_t sub_1B1E7C7A8()
{
  result = qword_1EB786110;
  if (!qword_1EB786110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786110);
  }

  return result;
}

unint64_t sub_1B1E7C800()
{
  result = qword_1EB786118;
  if (!qword_1EB786118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786118);
  }

  return result;
}

unint64_t sub_1B1E7C858()
{
  result = qword_1EB786120;
  if (!qword_1EB786120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786120);
  }

  return result;
}

unint64_t sub_1B1E7C8B0()
{
  result = qword_1EB786128;
  if (!qword_1EB786128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786128);
  }

  return result;
}

unint64_t sub_1B1E7C908()
{
  result = qword_1EB786130;
  if (!qword_1EB786130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786130);
  }

  return result;
}

unint64_t sub_1B1E7C960()
{
  result = qword_1EB786138;
  if (!qword_1EB786138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB786138);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_13()
{

  return sub_1B1F1B830();
}

uint64_t OUTLINED_FUNCTION_34_2()
{

  return sub_1B1F1B200();
}

uint64_t OUTLINED_FUNCTION_35_3()
{

  return sub_1B1F1AFD0();
}

uint64_t OUTLINED_FUNCTION_39_2()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return sub_1B1F1B510();
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return sub_1B1F1B180();
}

uint64_t OUTLINED_FUNCTION_47_0()
{

  return sub_1B1F1B7C0();
}

uint64_t OUTLINED_FUNCTION_55_0()
{

  return sub_1B1F1B200();
}

uint64_t OUTLINED_FUNCTION_56_0()
{
  v3 = *(v1 - 136);

  return sub_1B1E03C48(v3, v0);
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return sub_1B1F1A900();
}

void OUTLINED_FUNCTION_58_0()
{

  JUMPOUT(0x1B273E060);
}

void sub_1B1E7D17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1E7D398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B1E7F9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  objc_destroyWeak((v27 - 128));
  _Unwind_Resume(a1);
}

id WFNameForGlyphSection(unint64_t a1)
{
  if (a1 <= 2)
  {
    a1 = WFLocalizedString(off_1E7AFFB30[a1]);
  }

  return a1;
}

id WFSystemGlyphCharactersInSection(uint64_t a1)
{
  v1 = &unk_1F2931500;
  if (a1 == 1)
  {
    v1 = &unk_1F2931518;
  }

  if (a1 == 2)
  {
    v1 = &unk_1F2931530;
  }

  v2 = v1;
  v3 = [v2 if_objectsPassingTest:&__block_literal_global_553];

  return v3;
}

BOOL __WFSystemGlyphCharactersInSection_block_invoke(uint64_t a1, void *a2)
{
  v2 = WFSystemImageNameForGlyphCharacter([a2 intValue]);
  v3 = v2 != 0;

  return v3;
}

id WFSystemOutlineGlyphCharactersInSection(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = WFSystemGlyphCharactersInSection(a1);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __WFSystemOutlineGlyphCharactersInSection_block_invoke;
  aBlock[3] = &unk_1E7AFFAC0;
  v5 = v2;
  v31 = v5;
  v6 = v3;
  v32 = v6;
  v7 = _Block_copy(aBlock);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __WFSystemOutlineGlyphCharactersInSection_block_invoke_2;
  v27[3] = &unk_1E7AFFAE8;
  v21 = v5;
  v28 = v21;
  v19 = v6;
  v29 = v19;
  v20 = _Block_copy(v27);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = WFSystemImageNameForGlyphCharacter([v12 intValue]);
        v14 = WFSystemImageNameForOutlineGlyphCharacter([v12 intValue]);
        if ([v13 hasSuffix:@".fill"])
        {
          v7[2](v7, v12, v14);
        }

        else
        {
          v15 = [v21 objectForKey:v14];
          if (v15)
          {
            v20[2](v20, v12, v14, v15);
          }

          else
          {
            v7[2](v7, v12, v14);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v9);
  }

  v16 = v19;
  v17 = *MEMORY[0x1E69E9840];
  return v19;
}

void __WFSystemOutlineGlyphCharactersInSection_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a3;
  v10 = a2;
  v9 = [v5 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
  [v6 setObject:v9 forKey:v8];

  [*(a1 + 40) addObject:v10];
}

void __WFSystemOutlineGlyphCharactersInSection_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v10 = a2;
  [v7 setObject:v8 forKey:a3];
  v9 = *(a1 + 40);
  LODWORD(a2) = [v8 intValue];

  [v9 replaceObjectAtIndex:a2 withObject:v10];
}

id WFWorkflowGlyphCharactersInSection(uint64_t a1)
{
  v1 = &unk_1F2931500;
  if (a1 == 1)
  {
    v1 = &unk_1F2931518;
  }

  if (a1 == 2)
  {
    v1 = &unk_1F2931530;
  }

  v2 = v1;
  v3 = [v2 if_objectsPassingTest:&__block_literal_global_73];

  return v3;
}

BOOL __WFWorkflowGlyphCharactersInSection_block_invoke(uint64_t a1, void *a2)
{
  v2 = WFSystemImageNameForGlyphCharacter([a2 intValue]);
  v3 = v2 == 0;

  return v3;
}

id WFRepresentativeGlyphNameForSection(void *a1)
{
  if (a1 <= 2)
  {
    a1 = WFSystemImageNameForOutlineGlyphCharacter((0xF000E999E959uLL >> (16 * a1)));
  }

  return a1;
}

uint64_t WFSectionForGlyph(__int16 a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = [&unk_1F2931488 firstObject];
  v3 = [v2 unsignedIntegerValue];

  v11 = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __WFSectionForGlyph_block_invoke;
  v6[3] = &unk_1E7AFFB10;
  v7 = a1;
  v6[4] = &v8;
  [&unk_1F2931488 enumerateObjectsUsingBlock:v6];
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_1B1E853C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __WFSectionForGlyph_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 unsignedIntegerValue];
  v7 = v6;
  v8 = &unk_1F2931500;
  if (v6 == 1)
  {
    v8 = &unk_1F2931518;
  }

  if (v6 == 2)
  {
    v8 = &unk_1F2931530;
  }

  v11 = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(a1 + 40)];
  v10 = [v11 containsObject:v9];

  if (v10)
  {
    *(*(*(a1 + 32) + 8) + 24) = v7;
    *a4 = 1;
  }
}

id WFHumanReadableNameForWorkflowType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"ActionExtension"])
  {
    v2 = @"Share Sheet";
LABEL_13:
    v3 = WFLocalizedString(v2);
    goto LABEL_14;
  }

  if ([v1 isEqualToString:@"Watch"])
  {
    v2 = @"Apple Watch";
    goto LABEL_13;
  }

  if ([v1 isEqualToString:@"Sleep"])
  {
    v2 = @"Sleep Focus";
    goto LABEL_13;
  }

  if ([v1 isEqualToString:@"QuickActions"])
  {
    v2 = @"Quick Actions";
    goto LABEL_13;
  }

  if ([v1 isEqualToString:@"MenuBar"])
  {
    v2 = @"Menu Bar";
    goto LABEL_13;
  }

  if ([v1 isEqualToString:@"ReceivesOnScreenContent"])
  {
    v2 = @"Receives What’s On Screen";
    goto LABEL_13;
  }

  v3 = 0;
LABEL_14:

  return v3;
}

id WFAppIntentArchiverErrorWithLocalizedErrorDescription(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E695DF90];
  v11 = *MEMORY[0x1E696A578];
  v12[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [v5 dictionaryWithDictionary:v6];

  if (v4)
  {
    [v7 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AppIntentsArchivingError" code:1000 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void sub_1B1E888F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVSystemControllerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __MediaExperienceLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7AFFD88;
    v9 = 0;
    MediaExperienceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaExperienceLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaExperienceLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAVSystemController.m" lineNumber:16 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("AVSystemController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVSystemControllerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFAVSystemController.m" lineNumber:17 description:{@"Unable to find class %s", "AVSystemController"}];

LABEL_10:
    __break(1u);
  }

  getAVSystemControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaExperienceLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaExperienceLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __Block_byref_object_copy__1140(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __VCUserActivityFromEvent_block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if ([v12 count])
  {
    v3 = [v12 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      v5 = [v4 firstObject];
      if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
        v7 = *(*(a1 + 40) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;
      }

      else if ([v4 count] < 2)
      {
        v8 = 0;
      }

      else
      {
        v8 = [v4 objectAtIndex:1];
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
            v10 = *(*(a1 + 40) + 8);
            v11 = *(v10 + 40);
            *(v10 + 40) = v9;
          }
        }
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

__CFString *WFRunSourceForExecutionContext(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7AFFFD8[a1];
  }
}

uint64_t WFRunSourceIsSpotlight(void *a1)
{
  v1 = WFRunSourceIsSpotlight_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&WFRunSourceIsSpotlight_onceToken, &__block_literal_global_1737);
  }

  v3 = [WFRunSourceIsSpotlight_s_spotlightRunSources containsObject:v2];

  return v3;
}

void __WFRunSourceIsSpotlight_block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v3[0] = @"spotlight-search";
  v3[1] = @"spotlight-search-detail-page";
  v3[2] = @"spotlight_prediction";
  v3[3] = @"contextual-action-spotlight-unknown";
  v3[4] = @"contextual-action-spotlight-search";
  v3[5] = @"contextual-action-spotlight-prediction";
  v3[6] = @"contextual-action-spotlight-top-hit";
  v3[7] = @"spotlight-tool";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:8];
  v1 = WFRunSourceIsSpotlight_s_spotlightRunSources;
  WFRunSourceIsSpotlight_s_spotlightRunSources = v0;

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t WFRunSourceIsToolKit(void *a1)
{
  v1 = WFRunSourceIsToolKit_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&WFRunSourceIsToolKit_onceToken, &__block_literal_global_198);
  }

  v3 = [WFRunSourceIsToolKit_toolKitRunSources containsObject:v2];

  return v3;
}

void __WFRunSourceIsToolKit_block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"spotlight-tool";
  v3[1] = @"toolKit";
  v3[2] = @"siri-planner";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = WFRunSourceIsToolKit_toolKitRunSources;
  WFRunSourceIsToolKit_toolKitRunSources = v0;

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t WFRunSourceIsSuggestion(void *a1)
{
  v1 = WFRunSourceIsSuggestion_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&WFRunSourceIsSuggestion_onceToken, &__block_literal_global_200);
  }

  v3 = [WFRunSourceIsSuggestion_s_suggestionRunSources containsObject:v2];

  return v3;
}

void __WFRunSourceIsSuggestion_block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v3[0] = @"siri";
  v3[1] = @"lock_screen_prediction";
  v3[2] = @"WFWorkflowRunSourceSuggestionsWidgetPrediction";
  v3[3] = @"spotlight_prediction";
  v3[4] = @"spotlight-search";
  v3[5] = @"watch-face";
  v3[6] = @"siri_cloud_relay";
  v3[7] = @"carplay";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:8];
  v1 = WFRunSourceIsSuggestion_s_suggestionRunSources;
  WFRunSourceIsSuggestion_s_suggestionRunSources = v0;

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t WFRunSourceIsExemptFromOutputApproval(void *a1)
{
  v1 = WFRunSourceIsExemptFromOutputApproval_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&WFRunSourceIsExemptFromOutputApproval_onceToken, &__block_literal_global_202);
  }

  v3 = [WFRunSourceIsExemptFromOutputApproval_s_outputApprovalExemptRunSources containsObject:v2];

  return v3;
}

void __WFRunSourceIsExemptFromOutputApproval_block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"button";
  v3[1] = @"keyboard";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = WFRunSourceIsExemptFromOutputApproval_s_outputApprovalExemptRunSources;
  WFRunSourceIsExemptFromOutputApproval_s_outputApprovalExemptRunSources = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B1E8CB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1764(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1E8CE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B1E8D0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B1E8D558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B1E8D854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

id getWFActionsLogObject()
{
  if (getWFActionsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFActionsLogObject_onceToken, &__block_literal_global_8);
  }

  v1 = getWFActionsLogObject_log;

  return v1;
}

uint64_t __getWFActionsLogObject_block_invoke()
{
  getWFActionsLogObject_log = os_log_create(WFLogSubsystem, "Actions");

  return MEMORY[0x1EEE66BB8]();
}

id getWFContentGraphLogObject()
{
  if (getWFContentGraphLogObject_onceToken != -1)
  {
    dispatch_once(&getWFContentGraphLogObject_onceToken, &__block_literal_global_11);
  }

  v1 = getWFContentGraphLogObject_log;

  return v1;
}

uint64_t __getWFContentGraphLogObject_block_invoke()
{
  getWFContentGraphLogObject_log = os_log_create(WFLogSubsystem, "ContentGraph");

  return MEMORY[0x1EEE66BB8]();
}

id getWFContentItemLogObject()
{
  if (getWFContentItemLogObject_onceToken != -1)
  {
    dispatch_once(&getWFContentItemLogObject_onceToken, &__block_literal_global_14);
  }

  v1 = getWFContentItemLogObject_log;

  return v1;
}

uint64_t __getWFContentItemLogObject_block_invoke()
{
  getWFContentItemLogObject_log = os_log_create(WFLogSubsystem, "ContentItem");

  return MEMORY[0x1EEE66BB8]();
}

id getWFInterchangeLogObject()
{
  if (getWFInterchangeLogObject_onceToken != -1)
  {
    dispatch_once(&getWFInterchangeLogObject_onceToken, &__block_literal_global_17);
  }

  v1 = getWFInterchangeLogObject_log;

  return v1;
}

uint64_t __getWFInterchangeLogObject_block_invoke()
{
  getWFInterchangeLogObject_log = os_log_create(WFLogSubsystem, "Interchange");

  return MEMORY[0x1EEE66BB8]();
}

id getWFEditorLogObject()
{
  if (getWFEditorLogObject_onceToken != -1)
  {
    dispatch_once(&getWFEditorLogObject_onceToken, &__block_literal_global_23);
  }

  v1 = getWFEditorLogObject_log;

  return v1;
}

uint64_t __getWFEditorLogObject_block_invoke()
{
  getWFEditorLogObject_log = os_log_create(WFLogSubsystem, "Editor");

  return MEMORY[0x1EEE66BB8]();
}

id getWFFoldersLogObject()
{
  if (getWFFoldersLogObject_onceToken != -1)
  {
    dispatch_once(&getWFFoldersLogObject_onceToken, &__block_literal_global_26);
  }

  v1 = getWFFoldersLogObject_log;

  return v1;
}

uint64_t __getWFFoldersLogObject_block_invoke()
{
  getWFFoldersLogObject_log = os_log_create(WFLogSubsystem, "Folders");

  return MEMORY[0x1EEE66BB8]();
}

id getWFIntentExecutionLogObject()
{
  if (getWFIntentExecutionLogObject_onceToken != -1)
  {
    dispatch_once(&getWFIntentExecutionLogObject_onceToken, &__block_literal_global_35);
  }

  v1 = getWFIntentExecutionLogObject_log;

  return v1;
}

uint64_t __getWFIntentExecutionLogObject_block_invoke()
{
  getWFIntentExecutionLogObject_log = os_log_create(WFLogSubsystem, "IntentExecution");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __getWFCloudKitSyncLogObject_block_invoke()
{
  getWFCloudKitSyncLogObject_log = os_log_create(WFLogSubsystem, "CloudKitSync");

  return MEMORY[0x1EEE66BB8]();
}

id getWFWatchSyncLogObject()
{
  if (getWFWatchSyncLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWatchSyncLogObject_onceToken, &__block_literal_global_41);
  }

  v1 = getWFWatchSyncLogObject_log;

  return v1;
}

uint64_t __getWFWatchSyncLogObject_block_invoke()
{
  getWFWatchSyncLogObject_log = os_log_create(WFLogSubsystem, "WatchSync");

  return MEMORY[0x1EEE66BB8]();
}

id getWFTriggersLogObject()
{
  if (getWFTriggersLogObject_onceToken != -1)
  {
    dispatch_once(&getWFTriggersLogObject_onceToken, &__block_literal_global_44);
  }

  v1 = getWFTriggersLogObject_log;

  return v1;
}

uint64_t __getWFTriggersLogObject_block_invoke()
{
  getWFTriggersLogObject_log = os_log_create(WFLogSubsystem, "Triggers");

  return MEMORY[0x1EEE66BB8]();
}

id getWFTriggerNotificationsLogObject()
{
  if (getWFTriggerNotificationsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFTriggerNotificationsLogObject_onceToken, &__block_literal_global_47);
  }

  v1 = getWFTriggerNotificationsLogObject_log;

  return v1;
}

uint64_t __getWFTriggerNotificationsLogObject_block_invoke()
{
  getWFTriggerNotificationsLogObject_log = os_log_create(WFLogSubsystem, "TriggerNotifications");

  return MEMORY[0x1EEE66BB8]();
}

id getWFPeaceMigrationLogObject()
{
  if (getWFPeaceMigrationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFPeaceMigrationLogObject_onceToken, &__block_literal_global_53);
  }

  v1 = getWFPeaceMigrationLogObject_log;

  return v1;
}

uint64_t __getWFPeaceMigrationLogObject_block_invoke()
{
  getWFPeaceMigrationLogObject_log = os_log_create(WFLogSubsystem, "PeaceMigration");

  return MEMORY[0x1EEE66BB8]();
}

id getWFWorkflowMigrationLogObject()
{
  if (getWFWorkflowMigrationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWorkflowMigrationLogObject_onceToken, &__block_literal_global_56_1966);
  }

  v1 = getWFWorkflowMigrationLogObject_log;

  return v1;
}

uint64_t __getWFWorkflowMigrationLogObject_block_invoke()
{
  getWFWorkflowMigrationLogObject_log = os_log_create(WFLogSubsystem, "WorkflowMigration");

  return MEMORY[0x1EEE66BB8]();
}

id getWFAutomatorMigrationLogObject()
{
  if (getWFAutomatorMigrationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFAutomatorMigrationLogObject_onceToken, &__block_literal_global_59_1968);
  }

  v1 = getWFAutomatorMigrationLogObject_log;

  return v1;
}

uint64_t __getWFAutomatorMigrationLogObject_block_invoke()
{
  getWFAutomatorMigrationLogObject_log = os_log_create(WFLogSubsystem, "AutomatorMigration");

  return MEMORY[0x1EEE66BB8]();
}

id getWFSpotlightSyncLogObject()
{
  if (getWFSpotlightSyncLogObject_onceToken != -1)
  {
    dispatch_once(&getWFSpotlightSyncLogObject_onceToken, &__block_literal_global_62);
  }

  v1 = getWFSpotlightSyncLogObject_log;

  return v1;
}

uint64_t __getWFSpotlightSyncLogObject_block_invoke()
{
  getWFSpotlightSyncLogObject_log = os_log_create(WFLogSubsystem, "SpotlightSync");

  return MEMORY[0x1EEE66BB8]();
}

id getWFHomeLogObject()
{
  if (getWFHomeLogObject_onceToken != -1)
  {
    dispatch_once(&getWFHomeLogObject_onceToken, &__block_literal_global_71);
  }

  v1 = getWFHomeLogObject_log;

  return v1;
}

uint64_t __getWFHomeLogObject_block_invoke()
{
  getWFHomeLogObject_log = os_log_create(WFLogSubsystem, "Home");

  return MEMORY[0x1EEE66BB8]();
}

id getWFRemoteExecutionLogObject()
{
  if (getWFRemoteExecutionLogObject_onceToken != -1)
  {
    dispatch_once(&getWFRemoteExecutionLogObject_onceToken, &__block_literal_global_74);
  }

  v1 = getWFRemoteExecutionLogObject_log;

  return v1;
}

uint64_t __getWFRemoteExecutionLogObject_block_invoke()
{
  getWFRemoteExecutionLogObject_log = os_log_create(WFLogSubsystem, "RemoteExecution");

  return MEMORY[0x1EEE66BB8]();
}

id getWFBundledIntentsLogObject()
{
  if (getWFBundledIntentsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFBundledIntentsLogObject_onceToken, &__block_literal_global_77);
  }

  v1 = getWFBundledIntentsLogObject_log;

  return v1;
}

uint64_t __getWFBundledIntentsLogObject_block_invoke()
{
  getWFBundledIntentsLogObject_log = os_log_create(WFLogSubsystem, "BundledIntents");

  return MEMORY[0x1EEE66BB8]();
}

id getWFDialogLogObject()
{
  if (getWFDialogLogObject_onceToken != -1)
  {
    dispatch_once(&getWFDialogLogObject_onceToken, &__block_literal_global_80);
  }

  v1 = getWFDialogLogObject_log;

  return v1;
}

uint64_t __getWFDialogLogObject_block_invoke()
{
  getWFDialogLogObject_log = os_log_create(WFLogSubsystem, "Dialog");

  return MEMORY[0x1EEE66BB8]();
}

id getWFRuntimeUILogObject()
{
  if (getWFRuntimeUILogObject_onceToken != -1)
  {
    dispatch_once(&getWFRuntimeUILogObject_onceToken, &__block_literal_global_83);
  }

  v1 = getWFRuntimeUILogObject_log;

  return v1;
}

uint64_t __getWFRuntimeUILogObject_block_invoke()
{
  getWFRuntimeUILogObject_log = os_log_create(WFLogSubsystem, "RuntimeUI");

  return MEMORY[0x1EEE66BB8]();
}

id getWFWidgetLogObject()
{
  if (getWFWidgetLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWidgetLogObject_onceToken, &__block_literal_global_86);
  }

  v1 = getWFWidgetLogObject_log;

  return v1;
}

uint64_t __getWFWidgetLogObject_block_invoke()
{
  getWFWidgetLogObject_log = os_log_create(WFLogSubsystem, "Widget");

  return MEMORY[0x1EEE66BB8]();
}

id getWFSleepLogObject()
{
  if (getWFSleepLogObject_onceToken != -1)
  {
    dispatch_once(&getWFSleepLogObject_onceToken, &__block_literal_global_89);
  }

  v1 = getWFSleepLogObject_log;

  return v1;
}

uint64_t __getWFSleepLogObject_block_invoke()
{
  getWFSleepLogObject_log = os_log_create(WFLogSubsystem, "Sleep");

  return MEMORY[0x1EEE66BB8]();
}

id getWFContextualActionsLogObject()
{
  if (getWFContextualActionsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFContextualActionsLogObject_onceToken, &__block_literal_global_104);
  }

  v1 = getWFContextualActionsLogObject_log;

  return v1;
}

uint64_t __getWFContextualActionsLogObject_block_invoke()
{
  getWFContextualActionsLogObject_log = os_log_create(WFLogSubsystem, "ContextualActions");

  return MEMORY[0x1EEE66BB8]();
}

id getWFSandboxLogObject()
{
  if (getWFSandboxLogObject_onceToken != -1)
  {
    dispatch_once(&getWFSandboxLogObject_onceToken, &__block_literal_global_107);
  }

  v1 = getWFSandboxLogObject_log;

  return v1;
}

uint64_t __getWFSandboxLogObject_block_invoke()
{
  getWFSandboxLogObject_log = os_log_create(WFLogSubsystem, "Sandbox");

  return MEMORY[0x1EEE66BB8]();
}

id getWFAppIntentsLogObject()
{
  if (getWFAppIntentsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFAppIntentsLogObject_onceToken, &__block_literal_global_110);
  }

  v1 = getWFAppIntentsLogObject_log;

  return v1;
}

uint64_t __getWFAppIntentsLogObject_block_invoke()
{
  getWFAppIntentsLogObject_log = os_log_create(WFLogSubsystem, "AppIntents");

  return MEMORY[0x1EEE66BB8]();
}

id getWFRunningStateLogObject()
{
  if (getWFRunningStateLogObject_onceToken != -1)
  {
    dispatch_once(&getWFRunningStateLogObject_onceToken, &__block_literal_global_113);
  }

  v1 = getWFRunningStateLogObject_log;

  return v1;
}

uint64_t __getWFRunningStateLogObject_block_invoke()
{
  getWFRunningStateLogObject_log = os_log_create(WFLogSubsystem, "RunningState");

  return MEMORY[0x1EEE66BB8]();
}

id getWFStateMachineLogObject()
{
  if (getWFStateMachineLogObject_onceToken != -1)
  {
    dispatch_once(&getWFStateMachineLogObject_onceToken, &__block_literal_global_116);
  }

  v1 = getWFStateMachineLogObject_log;

  return v1;
}

id getWFSessionKitLogObject()
{
  if (getWFSessionKitLogObject_onceToken != -1)
  {
    dispatch_once(&getWFSessionKitLogObject_onceToken, &__block_literal_global_119);
  }

  v1 = getWFSessionKitLogObject_log;

  return v1;
}

uint64_t __getWFSessionKitLogObject_block_invoke()
{
  getWFSessionKitLogObject_log = os_log_create(WFLogSubsystem, "SessionKit");

  return MEMORY[0x1EEE66BB8]();
}

id getWFTestHarnessLogObject()
{
  if (getWFTestHarnessLogObject_onceToken != -1)
  {
    dispatch_once(&getWFTestHarnessLogObject_onceToken, &__block_literal_global_122);
  }

  v1 = getWFTestHarnessLogObject_log;

  return v1;
}

uint64_t __getWFTestHarnessLogObject_block_invoke()
{
  getWFTestHarnessLogObject_log = os_log_create(WFLogSubsystem, "TestHarness");

  return MEMORY[0x1EEE66BB8]();
}

id getWFBiomeWritingLogObject()
{
  if (getWFBiomeWritingLogObject_onceToken != -1)
  {
    dispatch_once(&getWFBiomeWritingLogObject_onceToken, &__block_literal_global_125);
  }

  v1 = getWFBiomeWritingLogObject_log;

  return v1;
}

uint64_t __getWFBiomeWritingLogObject_block_invoke()
{
  getWFBiomeWritingLogObject_log = os_log_create(WFLogSubsystem, "BiomeWriting");

  return MEMORY[0x1EEE66BB8]();
}

id getWFDropletLogObject()
{
  if (getWFDropletLogObject_onceToken != -1)
  {
    dispatch_once(&getWFDropletLogObject_onceToken, &__block_literal_global_131);
  }

  v1 = getWFDropletLogObject_log;

  return v1;
}

uint64_t __getWFDropletLogObject_block_invoke()
{
  getWFDropletLogObject_log = os_log_create(WFLogSubsystem, "Droplet");

  return MEMORY[0x1EEE66BB8]();
}

id getWFWidgetConfigurationLogObject()
{
  if (getWFWidgetConfigurationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWidgetConfigurationLogObject_onceToken, &__block_literal_global_134);
  }

  v1 = getWFWidgetConfigurationLogObject_log;

  return v1;
}

uint64_t __getWFWidgetConfigurationLogObject_block_invoke()
{
  getWFWidgetConfigurationLogObject_log = os_log_create(WFLogSubsystem, "WidgetConfiguration");

  return MEMORY[0x1EEE66BB8]();
}

id getWFSmartShortcutPickerLogObject()
{
  if (getWFSmartShortcutPickerLogObject_onceToken != -1)
  {
    dispatch_once(&getWFSmartShortcutPickerLogObject_onceToken, &__block_literal_global_137);
  }

  v1 = getWFSmartShortcutPickerLogObject_log;

  return v1;
}

uint64_t __getWFSmartShortcutPickerLogObject_block_invoke()
{
  getWFSmartShortcutPickerLogObject_log = os_log_create(WFLogSubsystem, "SmartShortcutPicker");

  return MEMORY[0x1EEE66BB8]();
}

id getWFTopHitsLogObject()
{
  if (getWFTopHitsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFTopHitsLogObject_onceToken, &__block_literal_global_140);
  }

  v1 = getWFTopHitsLogObject_log;

  return v1;
}

uint64_t __getWFTopHitsLogObject_block_invoke()
{
  getWFTopHitsLogObject_log = os_log_create(WFLogSubsystem, "TopHits");

  return MEMORY[0x1EEE66BB8]();
}

id getWFTestingLifecycleLogObject()
{
  if (getWFTestingLifecycleLogObject_onceToken != -1)
  {
    dispatch_once(&getWFTestingLifecycleLogObject_onceToken, &__block_literal_global_143);
  }

  v1 = getWFTestingLifecycleLogObject_log;

  return v1;
}

uint64_t __getWFTestingLifecycleLogObject_block_invoke()
{
  getWFTestingLifecycleLogObject_log = os_log_create(WFLogSubsystem, "TestingLifecycle");

  return MEMORY[0x1EEE66BB8]();
}

id getWFToolKitLogObject()
{
  if (getWFToolKitLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitLogObject_onceToken, &__block_literal_global_146);
  }

  v1 = getWFToolKitLogObject_log;

  return v1;
}

uint64_t __getWFToolKitLogObject_block_invoke()
{
  getWFToolKitLogObject_log = os_log_create(WFLogSubsystem, "ToolKit");

  return MEMORY[0x1EEE66BB8]();
}

id getWFToolKitSyncLogObject()
{
  if (getWFToolKitSyncLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitSyncLogObject_onceToken, &__block_literal_global_149);
  }

  v1 = getWFToolKitSyncLogObject_log;

  return v1;
}

uint64_t __getWFToolKitSyncLogObject_block_invoke()
{
  getWFToolKitSyncLogObject_log = os_log_create(WFLogSubsystem, "ToolKitSync");

  return MEMORY[0x1EEE66BB8]();
}

id getWFToolKitDatabaseLogObject()
{
  if (getWFToolKitDatabaseLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitDatabaseLogObject_onceToken, &__block_literal_global_152);
  }

  v1 = getWFToolKitDatabaseLogObject_log;

  return v1;
}

uint64_t __getWFToolKitDatabaseLogObject_block_invoke()
{
  getWFToolKitDatabaseLogObject_log = os_log_create(WFLogSubsystem, "ToolKitDatabase");

  return MEMORY[0x1EEE66BB8]();
}

id getWFToolKitIndexingLogObject()
{
  if (getWFToolKitIndexingLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitIndexingLogObject_onceToken, &__block_literal_global_155);
  }

  v1 = getWFToolKitIndexingLogObject_log;

  return v1;
}

uint64_t __getWFToolKitIndexingLogObject_block_invoke()
{
  getWFToolKitIndexingLogObject_log = os_log_create(WFLogSubsystem, "ToolKitIndexing");

  return MEMORY[0x1EEE66BB8]();
}

id getWFToolKitRepresentationLogObject()
{
  if (getWFToolKitRepresentationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitRepresentationLogObject_onceToken, &__block_literal_global_158);
  }

  v1 = getWFToolKitRepresentationLogObject_log;

  return v1;
}

uint64_t __getWFToolKitRepresentationLogObject_block_invoke()
{
  getWFToolKitRepresentationLogObject_log = os_log_create(WFLogSubsystem, "ToolKitRepresentation");

  return MEMORY[0x1EEE66BB8]();
}

id getWFToolKitSchedulerLogObject()
{
  if (getWFToolKitSchedulerLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitSchedulerLogObject_onceToken, &__block_literal_global_161);
  }

  v1 = getWFToolKitSchedulerLogObject_log;

  return v1;
}

uint64_t __getWFToolKitSchedulerLogObject_block_invoke()
{
  getWFToolKitSchedulerLogObject_log = os_log_create(WFLogSubsystem, "ToolKitScheduler");

  return MEMORY[0x1EEE66BB8]();
}

id getWFToolKitExecutionPoolLogObject()
{
  if (getWFToolKitExecutionPoolLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitExecutionPoolLogObject_onceToken, &__block_literal_global_167);
  }

  v1 = getWFToolKitExecutionPoolLogObject_log;

  return v1;
}

uint64_t __getWFToolKitExecutionPoolLogObject_block_invoke()
{
  getWFToolKitExecutionPoolLogObject_log = os_log_create(WFLogSubsystem, "ToolKitExecutionPool");

  return MEMORY[0x1EEE66BB8]();
}

id getWFToolKitSQLLogObject()
{
  if (getWFToolKitSQLLogObject_onceToken != -1)
  {
    dispatch_once(&getWFToolKitSQLLogObject_onceToken, &__block_literal_global_170);
  }

  v1 = getWFToolKitSQLLogObject_log;

  return v1;
}

uint64_t __getWFToolKitSQLLogObject_block_invoke()
{
  getWFToolKitSQLLogObject_log = os_log_create(WFLogSubsystem, "ToolKitSQL");

  return MEMORY[0x1EEE66BB8]();
}

id getWFAppShortcutInterpolationLogObject()
{
  if (getWFAppShortcutInterpolationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFAppShortcutInterpolationLogObject_onceToken, &__block_literal_global_173);
  }

  v1 = getWFAppShortcutInterpolationLogObject_log;

  return v1;
}

uint64_t __getWFAppShortcutInterpolationLogObject_block_invoke()
{
  getWFAppShortcutInterpolationLogObject_log = os_log_create(WFLogSubsystem, "AppShortcutInterpolation");

  return MEMORY[0x1EEE66BB8]();
}

id getWFActionConfirmationAlertLogObject()
{
  if (getWFActionConfirmationAlertLogObject_onceToken != -1)
  {
    dispatch_once(&getWFActionConfirmationAlertLogObject_onceToken, &__block_literal_global_176);
  }

  v1 = getWFActionConfirmationAlertLogObject_log;

  return v1;
}

uint64_t __getWFActionConfirmationAlertLogObject_block_invoke()
{
  getWFActionConfirmationAlertLogObject_log = os_log_create(WFLogSubsystem, "ActionConfirmationAlert");

  return MEMORY[0x1EEE66BB8]();
}

id getWFPersonaLogObject()
{
  if (getWFPersonaLogObject_onceToken != -1)
  {
    dispatch_once(&getWFPersonaLogObject_onceToken, &__block_literal_global_179);
  }

  v1 = getWFPersonaLogObject_log;

  return v1;
}

uint64_t __getWFPersonaLogObject_block_invoke()
{
  getWFPersonaLogObject_log = os_log_create(WFLogSubsystem, "Persona");

  return MEMORY[0x1EEE66BB8]();
}

id getWFAppIntentsMetadataLogObject()
{
  if (getWFAppIntentsMetadataLogObject_onceToken != -1)
  {
    dispatch_once(&getWFAppIntentsMetadataLogObject_onceToken, &__block_literal_global_182);
  }

  v1 = getWFAppIntentsMetadataLogObject_log;

  return v1;
}

uint64_t __getWFAppIntentsMetadataLogObject_block_invoke()
{
  getWFAppIntentsMetadataLogObject_log = os_log_create(WFLogSubsystem, "AppIntentsMetadata");

  return MEMORY[0x1EEE66BB8]();
}

id getWFFilesystemEventsLogObject()
{
  if (getWFFilesystemEventsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFFilesystemEventsLogObject_onceToken, &__block_literal_global_185);
  }

  v1 = getWFFilesystemEventsLogObject_log;

  return v1;
}

uint64_t __getWFFilesystemEventsLogObject_block_invoke()
{
  getWFFilesystemEventsLogObject_log = os_log_create(WFLogSubsystem, "FilesystemEvents");

  return MEMORY[0x1EEE66BB8]();
}

id getWFLanguageLogObject()
{
  if (getWFLanguageLogObject_onceToken != -1)
  {
    dispatch_once(&getWFLanguageLogObject_onceToken, &__block_literal_global_188);
  }

  v1 = getWFLanguageLogObject_log;

  return v1;
}

uint64_t __getWFLanguageLogObject_block_invoke()
{
  getWFLanguageLogObject_log = os_log_create(WFLogSubsystem, "Language");

  return MEMORY[0x1EEE66BB8]();
}

id getWFUserStringsLogObject()
{
  if (getWFUserStringsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFUserStringsLogObject_onceToken, &__block_literal_global_191);
  }

  v1 = getWFUserStringsLogObject_log;

  return v1;
}

uint64_t __getWFUserStringsLogObject_block_invoke()
{
  getWFUserStringsLogObject_log = os_log_create(WFLogSubsystem, "UserStrings");

  return MEMORY[0x1EEE66BB8]();
}

id getWFParameterSummaryLogObject()
{
  if (getWFParameterSummaryLogObject_onceToken != -1)
  {
    dispatch_once(&getWFParameterSummaryLogObject_onceToken, &__block_literal_global_194);
  }

  v1 = getWFParameterSummaryLogObject_log;

  return v1;
}

uint64_t __getWFParameterSummaryLogObject_block_invoke()
{
  getWFParameterSummaryLogObject_log = os_log_create(WFLogSubsystem, "ParameterSummary");

  return MEMORY[0x1EEE66BB8]();
}

id getWFControlMigrationLogObject()
{
  if (getWFControlMigrationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFControlMigrationLogObject_onceToken, &__block_literal_global_197);
  }

  v1 = getWFControlMigrationLogObject_log;

  return v1;
}

uint64_t __getWFControlMigrationLogObject_block_invoke()
{
  getWFControlMigrationLogObject_log = os_log_create(WFLogSubsystem, "ControlMigration");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B1E9143C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBiomeLibrarySymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __BiomeLibraryLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B00310;
    v8 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = BiomeLibraryLibraryCore_frameworkLibrary;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeLibraryLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFToggleFocusModeContextualAction.m" lineNumber:19 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "BiomeLibrary");
  *(*(a1[4] + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id VCAppBundleIdentifierForBundleRecord(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleIdentifier];
  v3 = [&unk_1F29315D8 objectForKey:v2];

  if (v3)
  {
    v4 = [v1 bundleIdentifier];
    v5 = [&unk_1F29315D8 objectForKey:v4];
  }

  else
  {
    v6 = v1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v4 = v7;

    v8 = [v4 containingBundleRecord];
    v9 = v8;
    if (v8)
    {
      v5 = VCAppBundleIdentifierForBundleRecord(v8);
    }

    else
    {
      v10 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      if (v12 || !v4)
      {
        v13 = v12;
      }

      else
      {
        v13 = v4;
      }

      v5 = [v13 bundleIdentifier];
    }
  }

  return v5;
}

uint64_t __Block_byref_object_copy__2791(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFAppOrExtensionRecordFromBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v1 allowPlaceholder:0 error:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v1 error:0];
    v4 = v5;
    if (v5)
    {
      v6 = v5;
    }
  }

  return v4;
}

void WFBiomeLibrary()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getBiomeLibrarySymbolLoc_ptr_3423;
  v9 = getBiomeLibrarySymbolLoc_ptr_3423;
  if (!getBiomeLibrarySymbolLoc_ptr_3423)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getBiomeLibrarySymbolLoc_block_invoke_3424;
    v5[3] = &unk_1E7B02C60;
    v5[4] = &v6;
    __getBiomeLibrarySymbolLoc_block_invoke_3424(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v1 = v0();

    v2 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<BMRootLibrary> WFBiomeLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFToggleSettingContextualAction.m" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1E9B7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBiomeLibrarySymbolLoc_block_invoke_3424(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_3428)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __BiomeLibraryLibraryCore_block_invoke_3429;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B004A8;
    v8 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary_3428 = _sl_dlopen();
  }

  v2 = BiomeLibraryLibraryCore_frameworkLibrary_3428;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_3428)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeLibraryLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFToggleSettingContextualAction.m" lineNumber:20 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "BiomeLibrary");
  *(*(a1[4] + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr_3423 = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke_3429(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary_3428 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id WFToggleSettingContextualActions()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = [&unk_1F29314B8 mutableCopy];
  v1 = +[WFDevice currentDevice];
  [v0 addObjectsFromArray:&unk_1F29314D0];
  [v0 addObjectsFromArray:&unk_1F29314E8];
  if ([v1 hasCapability:@"CellularData"])
  {
    v2 = +[WFCellularSettings defaultSettings];
    v15 = 0;
    v3 = [v2 isCellularDataCapableWithError:&v15];
    v4 = v15;
    v5 = getWFSpotlightSyncLogObject();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "WFToggleSettingContextualActions";
        v18 = 2112;
        v19 = v4;
        v7 = "%s Unable to get cellular data capability: %@";
        v8 = v6;
        v9 = OS_LOG_TYPE_ERROR;
        v10 = 22;
LABEL_11:
        _os_log_impl(&dword_1B1DE3000, v8, v9, v7, buf, v10);
      }
    }

    else
    {
      v11 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
      if (v3)
      {
        if (v11)
        {
          *buf = 136315138;
          v17 = "WFToggleSettingContextualActions";
          _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_INFO, "%s Device is cellular data capable, indexing toggle", buf, 0xCu);
        }

        [v0 addObject:&unk_1F292CCA0];
        goto LABEL_13;
      }

      if (v11)
      {
        *buf = 136315138;
        v17 = "WFToggleSettingContextualActions";
        v7 = "%s Device is not cellular data capable, not indexing toggle";
        v8 = v6;
        v9 = OS_LOG_TYPE_INFO;
        v10 = 12;
        goto LABEL_11;
      }
    }

LABEL_13:
  }

  if ([v1 hasCapability:@"AlwaysOnDisplay"])
  {
    [v0 addObject:&unk_1F292CCB8];
  }

  if ([v1 hasCapability:@"TrueTone"])
  {
    [v0 addObject:&unk_1F292CCD0];
  }

  if ([v1 hasCapability:@"NightShift"])
  {
    [v0 addObject:&unk_1F292CCE8];
  }

  if (([v1 hasCapability:@"HardwareRingerSwitch"] & 1) == 0)
  {
    [v0 addObject:&unk_1F292CD00];
  }

  v12 = [v0 if_compactMap:&__block_literal_global_3593];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

WFToggleSettingContextualAction *__WFToggleSettingContextualActions_block_invoke(uint64_t a1, void *a2)
{
  v2 = -[WFToggleSettingContextualAction initWithSetting:operation:]([WFToggleSettingContextualAction alloc], "initWithSetting:operation:", [a2 unsignedIntegerValue], 2);

  return v2;
}

id WFPrimaryPhrasesForAutoShortcut(void *a1)
{
  v4 = 0;
  v1 = WFLocalizedPhrasesGroupedByParameterIdentifier(a1, 0, &v4);
  v2 = v4;

  return v2;
}

id WFParameterlessPhrasesForAutoShortcut(void *a1)
{
  v4 = 0;
  v1 = WFLocalizedPhrasesGroupedByParameterIdentifier(a1, &v4, 0);
  v2 = v4;

  return v2;
}

void *__getCGImageSourceCreateImageAtIndexSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageSourceCreateImageAtIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCreateImageAtIndexSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ImageIOLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!ImageIOLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __ImageIOLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B00580;
    v7 = 0;
    ImageIOLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ImageIOLibraryCore_frameworkLibrary;
  if (!ImageIOLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ImageIOLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFImage.m" lineNumber:37 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __ImageIOLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ImageIOLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getCGImageSourceCreateWithURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageSourceCreateWithURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCreateWithURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceCreateWithDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageSourceCreateWithData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCreateWithDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void soft_CGImageSourceCopyProperties(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getCGImageSourceCopyPropertiesSymbolLoc_ptr;
  v9 = getCGImageSourceCopyPropertiesSymbolLoc_ptr;
  if (!getCGImageSourceCopyPropertiesSymbolLoc_ptr)
  {
    v3 = ImageIOLibrary();
    v7[3] = dlsym(v3, "CGImageSourceCopyProperties");
    getCGImageSourceCopyPropertiesSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1, 0);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFDictionaryRef  _Nullable soft_CGImageSourceCopyProperties(CGImageSourceRef _Nonnull, CFDictionaryRef _Nullable)"}];
    [v4 handleFailureInFunction:v5 file:@"WFImage.m" lineNumber:41 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EA11C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getkCGImagePropertyOrientation()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkCGImagePropertyOrientationSymbolLoc_ptr;
  v8 = getkCGImagePropertyOrientationSymbolLoc_ptr;
  if (!getkCGImagePropertyOrientationSymbolLoc_ptr)
  {
    v1 = ImageIOLibrary();
    v6[3] = dlsym(v1, "kCGImagePropertyOrientation");
    getkCGImagePropertyOrientationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (v0)
  {
    v2 = *v0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImagePropertyOrientation(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFImage.m" lineNumber:45 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EA1314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCGImageSourceGetCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageSourceGetCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceGetCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceCopyPropertiesAtIndexSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageSourceCopyPropertiesAtIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyOrientationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "kCGImagePropertyOrientation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyOrientationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageSourceCopyPropertiesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageSourceCopyProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageSourceCopyPropertiesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyPixelWidthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "kCGImagePropertyPixelWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyPixelWidthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyPixelHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "kCGImagePropertyPixelHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyPixelHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *WFGlyphCharactersInSection(uint64_t a1)
{
  v1 = &unk_1F2931500;
  if (a1 == 1)
  {
    v1 = &unk_1F2931518;
  }

  if (a1 == 2)
  {
    return &unk_1F2931530;
  }

  else
  {
    return v1;
  }
}

id WFNameForGlyphCharacter(int a1)
{
  v1 = 0;
  switch(a1)
  {
    case 61440:
      v2 = @"Shortcuts Icon";
      goto LABEL_689;
    case 61441:
    case 61443:
    case 61445:
    case 61451:
    case 61462:
    case 61463:
    case 61469:
    case 61479:
    case 61485:
    case 61492:
    case 61493:
    case 61513:
    case 61516:
    case 61517:
    case 61526:
    case 61527:
    case 61530:
    case 61531:
    case 61570:
    case 61573:
    case 61576:
    case 61580:
    case 61581:
    case 61582:
    case 61583:
    case 61585:
    case 61589:
    case 61594:
    case 61595:
    case 61596:
    case 61597:
    case 61598:
    case 61599:
    case 61600:
    case 61601:
    case 61602:
    case 61603:
    case 61604:
    case 61605:
    case 61606:
    case 61607:
    case 61608:
    case 61609:
    case 61610:
    case 61611:
    case 61612:
    case 61613:
    case 61614:
    case 61615:
    case 61616:
    case 61617:
    case 61618:
    case 61619:
    case 61620:
    case 61621:
    case 61622:
    case 61623:
    case 61624:
    case 61625:
    case 61626:
    case 61627:
    case 61628:
    case 61629:
    case 61630:
    case 61631:
    case 61632:
    case 61633:
    case 61634:
    case 61635:
    case 61636:
    case 61637:
    case 61638:
    case 61639:
    case 61640:
    case 61641:
    case 61642:
    case 61643:
    case 61644:
    case 61645:
    case 61646:
    case 61647:
    case 61648:
    case 61649:
    case 61650:
    case 61651:
    case 61652:
    case 61653:
    case 61654:
    case 61655:
    case 61656:
    case 61657:
    case 61658:
    case 61659:
    case 61660:
    case 61661:
    case 61662:
    case 61663:
    case 61664:
    case 61665:
    case 61666:
    case 61667:
    case 61668:
    case 61669:
    case 61670:
    case 61671:
    case 61672:
    case 61673:
    case 61674:
    case 61675:
    case 61676:
    case 61677:
    case 61678:
    case 61679:
    case 61680:
    case 61681:
    case 61682:
    case 61683:
    case 61684:
    case 61685:
    case 61686:
    case 61687:
    case 61688:
    case 61689:
    case 61690:
    case 61691:
    case 61692:
    case 61693:
    case 61694:
    case 61695:
    case 61706:
    case 61707:
    case 61708:
    case 61709:
    case 61710:
    case 61711:
    case 61722:
    case 61723:
    case 61724:
    case 61725:
    case 61726:
    case 61727:
    case 61738:
    case 61739:
    case 61740:
    case 61741:
    case 61742:
    case 61743:
    case 61754:
    case 61755:
    case 61756:
    case 61757:
    case 61758:
    case 61759:
    case 61770:
    case 61771:
    case 61772:
    case 61773:
    case 61774:
    case 61775:
    case 61786:
    case 61787:
    case 61788:
    case 61789:
    case 61790:
    case 61791:
    case 61802:
    case 61803:
    case 61804:
    case 61805:
    case 61806:
    case 61807:
    case 61818:
    case 61819:
    case 61820:
    case 61821:
    case 61822:
    case 61823:
    case 61834:
    case 61835:
    case 61836:
    case 61837:
    case 61838:
    case 61839:
    case 61850:
    case 61851:
    case 61852:
    case 61853:
    case 61854:
    case 61855:
    case 61856:
    case 61857:
    case 61858:
    case 61859:
    case 61860:
    case 61861:
    case 61862:
    case 61863:
    case 61864:
    case 61865:
    case 61866:
    case 61867:
    case 61868:
    case 61869:
    case 61870:
    case 61871:
    case 61872:
    case 61873:
    case 61874:
    case 61875:
    case 61876:
    case 61877:
    case 61878:
    case 61879:
    case 61880:
    case 61881:
    case 61882:
    case 61883:
    case 61884:
    case 61885:
    case 61886:
    case 61887:
    case 61888:
    case 61889:
    case 61890:
    case 61891:
    case 61892:
    case 61893:
    case 61894:
    case 61895:
    case 61896:
    case 61897:
    case 61898:
    case 61899:
    case 61900:
    case 61901:
    case 61902:
    case 61903:
    case 61904:
    case 61905:
    case 61906:
    case 61907:
    case 61908:
    case 61909:
    case 61910:
    case 61911:
    case 61912:
    case 61913:
    case 61914:
    case 61915:
    case 61916:
    case 61917:
    case 61918:
    case 61919:
    case 61920:
    case 61921:
    case 61922:
    case 61923:
    case 61924:
    case 61925:
    case 61926:
    case 61927:
    case 61928:
    case 61929:
    case 61930:
    case 61931:
    case 61932:
    case 61933:
    case 61934:
    case 61935:
    case 61936:
    case 61937:
    case 61938:
    case 61939:
    case 61940:
    case 61941:
    case 61942:
    case 61943:
    case 61944:
    case 61945:
    case 61946:
    case 61947:
    case 61948:
    case 61949:
    case 61950:
    case 61951:
    case 61962:
    case 61963:
    case 61964:
    case 61965:
    case 61966:
    case 61967:
    case 61978:
    case 61979:
    case 61980:
    case 61981:
    case 61982:
    case 61983:
    case 61994:
    case 61995:
    case 61996:
    case 61997:
    case 61998:
    case 61999:
    case 62010:
    case 62011:
    case 62012:
    case 62013:
    case 62014:
    case 62015:
    case 62026:
    case 62027:
    case 62028:
    case 62029:
    case 62030:
    case 62031:
    case 62032:
    case 62042:
    case 62043:
    case 62044:
    case 62045:
    case 62046:
    case 62047:
    case 62058:
    case 62059:
    case 62060:
    case 62061:
    case 62062:
    case 62063:
    case 62074:
    case 62075:
    case 62076:
    case 62077:
    case 62078:
    case 62079:
    case 62090:
    case 62091:
    case 62092:
    case 62093:
    case 62094:
    case 62095:
    case 62106:
    case 62107:
    case 62108:
    case 62109:
    case 62110:
    case 62111:
    case 62112:
    case 62113:
    case 62114:
    case 62115:
    case 62116:
    case 62117:
    case 62118:
    case 62119:
    case 62120:
    case 62121:
    case 62122:
    case 62123:
    case 62124:
    case 62125:
    case 62126:
    case 62127:
    case 62128:
    case 62129:
    case 62130:
    case 62131:
    case 62132:
    case 62133:
    case 62134:
    case 62135:
    case 62136:
    case 62137:
    case 62138:
    case 62139:
    case 62140:
    case 62141:
    case 62142:
    case 62143:
    case 62144:
    case 62145:
    case 62146:
    case 62147:
    case 62148:
    case 62149:
    case 62150:
    case 62151:
    case 62152:
    case 62153:
    case 62154:
    case 62155:
    case 62156:
    case 62157:
    case 62158:
    case 62159:
    case 62160:
    case 62161:
    case 62162:
    case 62163:
    case 62164:
    case 62165:
    case 62166:
    case 62167:
    case 62168:
    case 62169:
    case 62170:
    case 62171:
    case 62172:
    case 62173:
    case 62174:
    case 62175:
    case 62176:
    case 62177:
    case 62178:
    case 62179:
    case 62180:
    case 62181:
    case 62182:
    case 62183:
    case 62184:
    case 62185:
    case 62186:
    case 62187:
    case 62188:
    case 62189:
    case 62190:
    case 62191:
    case 62192:
    case 62193:
    case 62194:
    case 62195:
    case 62196:
    case 62197:
    case 62198:
    case 62199:
    case 62200:
    case 62201:
    case 62202:
    case 62203:
    case 62204:
    case 62205:
    case 62206:
    case 62207:
    case 62218:
    case 62219:
    case 62220:
    case 62221:
    case 62222:
    case 62223:
    case 62234:
    case 62235:
    case 62236:
    case 62237:
    case 62238:
    case 62239:
    case 62250:
    case 62251:
    case 62252:
    case 62253:
    case 62254:
    case 62255:
    case 62266:
    case 62267:
    case 62268:
    case 62269:
    case 62270:
    case 62271:
    case 62282:
    case 62283:
    case 62284:
    case 62285:
    case 62286:
    case 62287:
    case 62298:
    case 62299:
    case 62300:
    case 62301:
    case 62302:
    case 62303:
    case 62314:
    case 62315:
    case 62316:
    case 62317:
    case 62318:
    case 62319:
    case 62330:
    case 62331:
    case 62332:
    case 62333:
    case 62334:
    case 62335:
    case 62346:
    case 62347:
    case 62348:
    case 62349:
    case 62350:
    case 62351:
    case 62361:
    case 62362:
    case 62363:
    case 62364:
    case 62365:
    case 62366:
    case 62367:
    case 62368:
    case 62369:
    case 62370:
    case 62371:
    case 62372:
    case 62373:
    case 62374:
    case 62375:
    case 62376:
    case 62377:
    case 62378:
    case 62379:
    case 62380:
    case 62381:
    case 62382:
    case 62383:
    case 62384:
    case 62385:
    case 62386:
    case 62387:
    case 62388:
    case 62389:
    case 62390:
    case 62391:
    case 62392:
    case 62393:
    case 62394:
    case 62395:
    case 62396:
    case 62397:
    case 62398:
    case 62399:
    case 62400:
    case 62401:
    case 62402:
    case 62403:
    case 62404:
    case 62405:
    case 62406:
    case 62407:
    case 62408:
    case 62409:
    case 62410:
    case 62411:
    case 62412:
    case 62413:
    case 62414:
    case 62415:
    case 62416:
    case 62417:
    case 62418:
    case 62419:
    case 62420:
    case 62421:
    case 62422:
    case 62423:
    case 62424:
    case 62425:
    case 62426:
    case 62427:
    case 62428:
    case 62429:
    case 62430:
    case 62431:
    case 62432:
    case 62433:
    case 62434:
    case 62435:
    case 62436:
    case 62437:
    case 62438:
    case 62439:
    case 62440:
    case 62441:
    case 62442:
    case 62443:
    case 62444:
    case 62445:
    case 62446:
    case 62447:
    case 62448:
    case 62449:
    case 62450:
    case 62451:
    case 62452:
    case 62453:
    case 62454:
    case 62455:
    case 62456:
    case 62457:
    case 62458:
    case 62459:
    case 62460:
    case 62461:
    case 62462:
    case 62463:
    case 62474:
    case 62475:
    case 62476:
    case 62477:
    case 62478:
    case 62479:
    case 62490:
    case 62491:
    case 62492:
    case 62493:
    case 62494:
    case 62495:
      break;
    case 61442:
      v2 = @"Book Closed";
      goto LABEL_689;
    case 61444:
      v2 = @"Map";
      goto LABEL_689;
    case 61446:
      v2 = @"Car Multiple";
      goto LABEL_689;
    case 61447:
      v2 = @"Bolt Car";
      goto LABEL_689;
    case 61448:
      v2 = @"Bus Double Decker";
      goto LABEL_689;
    case 61449:
      v2 = @"Tram";
      goto LABEL_689;
    case 61450:
      v2 = @"Tram Tunnel";
      goto LABEL_689;
    case 61452:
      v2 = @"Gauge";
      goto LABEL_689;
    case 61453:
      v2 = @"Speedometer";
      goto LABEL_689;
    case 61454:
      v2 = @"Barometer";
      goto LABEL_689;
    case 61455:
      v2 = @"Network";
      goto LABEL_689;
    case 61456:
      v2 = @"Rectangle Stack";
      goto LABEL_689;
    case 61457:
      v2 = @"Square Stack";
      goto LABEL_689;
    case 61458:
      v2 = @"Three D Square Stack";
      goto LABEL_689;
    case 61459:
      v2 = @"Photo Stack";
      goto LABEL_689;
    case 61460:
      v2 = @"Photo Stack Angled";
      goto LABEL_689;
    case 61461:
      v2 = @"Camera Aperture";
      goto LABEL_689;
    case 61464:
      v2 = @"Note Icon";
      goto LABEL_689;
    case 61465:
      v2 = @"Note Text";
      goto LABEL_689;
    case 61466:
      v2 = @"Note Text Badge Plus";
      goto LABEL_689;
    case 61467:
      v2 = @"Send Message";
      goto LABEL_689;
    case 61468:
      v2 = @"Add Message";
      goto LABEL_689;
    case 61470:
      v2 = @"Speaker Wave2";
      goto LABEL_689;
    case 61471:
      v2 = @"Speaker Wave3";
      goto LABEL_689;
    case 61472:
      v2 = @"Speaker Slash";
      goto LABEL_689;
    case 61473:
      v2 = @"Speaker";
      goto LABEL_689;
    case 61474:
      v2 = @"TV And Hi-Fi Speaker";
      goto LABEL_689;
    case 61475:
      v2 = @"EarPods";
      goto LABEL_689;
    case 61476:
      v2 = @"AirPods";
      goto LABEL_689;
    case 61477:
      v2 = @"AirPods Pro";
      goto LABEL_689;
    case 61478:
      v2 = @"Hi-Fi Speaker";
      goto LABEL_689;
    case 61480:
      v2 = @"Radio";
      goto LABEL_689;
    case 61481:
      v2 = @"Hearing Aid";
      goto LABEL_689;
    case 61482:
      v2 = @"Apple TV";
      goto LABEL_689;
    case 61483:
      v2 = @"HomePod";
      goto LABEL_689;
    case 61484:
      v2 = @"Apple Watch Waves";
      goto LABEL_689;
    case 61486:
      v2 = @"iPhone Icon";
      goto LABEL_689;
    case 61487:
      v2 = @"iPhone Radio Waves";
      goto LABEL_689;
    case 61488:
      v2 = @"iPhone Apps";
      goto LABEL_689;
    case 61489:
      v2 = @"iPad Icon";
      goto LABEL_689;
    case 61490:
      v2 = @"iPad Landscape";
      goto LABEL_689;
    case 61491:
      v2 = @"iPod";
      goto LABEL_689;
    case 61494:
      v2 = @"Person Run Motion";
      goto LABEL_689;
    case 61495:
      v2 = @"Noise Cancellation";
      goto LABEL_689;
    case 61496:
      v2 = @"Transparency";
      goto LABEL_689;
    case 61497:
      v2 = @"Directions Arrow Diamond";
      goto LABEL_689;
    case 61498:
      v2 = @"Directions Arrow";
      goto LABEL_689;
    case 61499:
      v2 = @"AirPlay Audio";
      goto LABEL_689;
    case 61500:
      v2 = @"AirPlay Video";
      goto LABEL_689;
    case 61501:
      v2 = @"AirDrop";
      goto LABEL_689;
    case 61502:
      v2 = @"Music Note List";
      goto LABEL_689;
    case 61503:
      v2 = @"Music Note";
      goto LABEL_689;
    case 61504:
      v2 = @"Music Square Stack";
      goto LABEL_689;
    case 61505:
      v2 = @"Music Waveform Path";
      goto LABEL_689;
    case 61506:
      v2 = @"Music Live Photo Play";
      goto LABEL_689;
    case 61507:
      v2 = @"Music Live Photo";
      goto LABEL_689;
    case 61508:
      v2 = @"Slowmo";
      goto LABEL_689;
    case 61509:
      v2 = @"Timelapse";
      goto LABEL_689;
    case 61510:
      v2 = @"Calendar Badge Plus";
      goto LABEL_689;
    case 61511:
      v2 = @"Calendar Badge Exclamation";
      goto LABEL_689;
    case 61512:
      v2 = @"Timer";
      goto LABEL_689;
    case 61514:
      v2 = @"Compose";
      goto LABEL_689;
    case 61515:
      v2 = @"Duplicate";
      goto LABEL_689;
    case 61518:
      v2 = @"Night Shift";
      goto LABEL_689;
    case 61519:
      v2 = @"True Tone";
      goto LABEL_689;
    case 61520:
      v2 = @"Dial Min";
      goto LABEL_689;
    case 61521:
      v2 = @"Dial Max";
      goto LABEL_689;
    case 61522:
      v2 = @"QR Code Viewfinder";
      goto LABEL_689;
    case 61523:
      v2 = @"Camera Viewfinder";
      goto LABEL_689;
    case 61524:
      v2 = @"Wallet Pass";
      goto LABEL_689;
    case 61525:
      v2 = @"Appearance";
      goto LABEL_689;
    case 61528:
      v2 = @"No Sign";
      goto LABEL_689;
    case 61529:
      v2 = @"Command";
      goto LABEL_689;
    case 61532:
      v2 = @"Brain Head Profile";
      goto LABEL_689;
    case 61533:
      v2 = @"Brain";
      goto LABEL_689;
    case 61534:
      v2 = @"Grinning Face";
      goto LABEL_689;
    case 61535:
      v2 = @"Face Smiling With Smiling Eyes";
      goto LABEL_689;
    case 61536:
      v2 = @"Face Grinning With Squinting Eyes";
      goto LABEL_689;
    case 61537:
      v2 = @"Face With Tears Of Joy";
      goto LABEL_689;
    case 61538:
      v2 = @"Face Rolling On The Floor Laughing";
      goto LABEL_689;
    case 61539:
      v2 = @"Face Winking With Stuck Out Tongue";
      goto LABEL_689;
    case 61540:
      v2 = @"Face Grimacing";
      goto LABEL_689;
    case 61541:
      v2 = @"Face Smiling With Heart Eyes";
      goto LABEL_689;
    case 61542:
      v2 = @"Face Blowing A Kiss";
      goto LABEL_689;
    case 61543:
      v2 = @"Face Smiling With Hearts";
      goto LABEL_689;
    case 61544:
      v2 = @"Face Smiling With Sunglasses";
      goto LABEL_689;
    case 61545:
      v2 = @"Face With Starry Eyes";
      goto LABEL_689;
    case 61546:
      v2 = @"Memoji";
      goto LABEL_689;
    case 61547:
      v2 = @"Thumbs Up Emoji";
      goto LABEL_689;
    case 61548:
      v2 = @"Peace Hand Sign";
      goto LABEL_689;
    case 61549:
      v2 = @"Love You Gesture";
      goto LABEL_689;
    case 61550:
      v2 = @"Closed Fist";
      goto LABEL_689;
    case 61551:
      v2 = @"Face Mask";
      goto LABEL_689;
    case 61552:
      v2 = @"One Prong Puzzle Piece";
      goto LABEL_689;
    case 61553:
      v2 = @"Take Out Bag And Cup";
      goto LABEL_689;
    case 61554:
      v2 = @"Bear";
      goto LABEL_689;
    case 61555:
      v2 = @"Tiger";
      goto LABEL_689;
    case 61556:
      v2 = @"Monkey";
      goto LABEL_689;
    case 61557:
      v2 = @"Ram";
      goto LABEL_689;
    case 61558:
      v2 = @"Rabbit";
      goto LABEL_689;
    case 61559:
      v2 = @"Snake";
      goto LABEL_689;
    case 61560:
      v2 = @"Chicken";
      goto LABEL_689;
    case 61561:
      v2 = @"Pig";
      goto LABEL_689;
    case 61562:
      v2 = @"Mouse";
      goto LABEL_689;
    case 61563:
      v2 = @"Cow";
      goto LABEL_689;
    case 61564:
      v2 = @"Dragon";
      goto LABEL_689;
    case 61565:
      v2 = @"Alien Monster";
      goto LABEL_689;
    case 61566:
      v2 = @"Robot";
      goto LABEL_689;
    case 61567:
      v2 = @"Ghost";
      goto LABEL_689;
    case 61568:
      v2 = @"Pile Of Poop";
      goto LABEL_689;
    case 61569:
      v2 = @"Skull";
      goto LABEL_689;
    case 61571:
      v2 = @"Folder With Gear";
      goto LABEL_689;
    case 61572:
      v2 = @"2×2 Rectangle Grid";
      goto LABEL_689;
    case 61574:
      v2 = @"Rectangle Split In Two";
      goto LABEL_689;
    case 61575:
      v2 = @"Rectangle Split In Three";
      goto LABEL_689;
    case 61577:
      v2 = @"Cartoon Heart";
      goto LABEL_689;
    case 61578:
      v2 = @"Two Cartoon Hearts";
      goto LABEL_689;
    case 61579:
      v2 = @"Star Half Filled";
      goto LABEL_689;
    case 61584:
      v2 = @"Hand Raised With Slash";
      goto LABEL_689;
    case 61586:
      v2 = @"Waveform";
      goto LABEL_689;
    case 61587:
      v2 = @"Checklist";
      goto LABEL_689;
    case 61588:
      v2 = @"Text Box";
      goto LABEL_689;
    case 61590:
      v2 = @"Eraser";
      goto LABEL_689;
    case 61591:
      v2 = @"Scribble Variable";
      goto LABEL_689;
    case 61592:
      v2 = @"Pencil And Scribble";
      goto LABEL_689;
    case 61593:
      v2 = @"Clipboard Alternate";
      goto LABEL_689;
    case 61696:
      v2 = @"List Bullet Clipboard";
      goto LABEL_689;
    case 61697:
      v2 = @"Rich Text Page News Article";
      goto LABEL_689;
    case 61698:
      v2 = @"Text Page";
      goto LABEL_689;
    case 61699:
      v2 = @"Append Page";
      goto LABEL_689;
    case 61700:
      v2 = @"Apple Terminal";
      goto LABEL_689;
    case 61701:
      v2 = @"Calendar Badge Clock";
      goto LABEL_689;
    case 61702:
      v2 = @"Calendar Badge Minus";
      goto LABEL_689;
    case 61703:
      v2 = @"Calendar Badge Checkmark";
      goto LABEL_689;
    case 61704:
      v2 = @"Quicknote";
      goto LABEL_689;
    case 61705:
      v2 = @"Menucard";
      goto LABEL_689;
    case 61712:
      v2 = @"Magazine";
      goto LABEL_689;
    case 61713:
      v2 = @"Photo Art Frame";
      goto LABEL_689;
    case 61714:
      v2 = @"Figure Wave";
      goto LABEL_689;
    case 61715:
      v2 = @"Dumbbell";
      goto LABEL_689;
    case 61716:
      v2 = @"Sports Court";
      goto LABEL_689;
    case 61717:
      v2 = @"Tennis Racket";
      goto LABEL_689;
    case 61718:
      v2 = @"Skateboard";
      goto LABEL_689;
    case 61719:
      v2 = @"Duffle Bag";
      goto LABEL_689;
    case 61720:
      v2 = @"Apple Classical";
      goto LABEL_689;
    case 61721:
      v2 = @"Bluetooth";
      goto LABEL_689;
    case 61728:
      v2 = @"Flag2 Crossed";
      goto LABEL_689;
    case 61729:
      v2 = @"Flag Checkered2 Crossed";
      goto LABEL_689;
    case 61730:
      v2 = @"X Square Root";
      goto LABEL_689;
    case 61731:
      v2 = @"Flashlight On";
      goto LABEL_689;
    case 61732:
      v2 = @"Flashlight Slash";
      goto LABEL_689;
    case 61733:
      v2 = @"Paint Palette";
      goto LABEL_689;
    case 61734:
      v2 = @"Mail Stack";
      goto LABEL_689;
    case 61735:
      v2 = @"Mail";
      goto LABEL_689;
    case 61736:
      v2 = @"Gear Shape";
      goto LABEL_689;
    case 61737:
      v2 = @"Gearshape2";
      goto LABEL_689;
    case 61744:
      v2 = @"Signature";
      goto LABEL_689;
    case 61745:
      v2 = @"Wallet";
      goto LABEL_689;
    case 61746:
      v2 = @"Metronome  ";
      goto LABEL_689;
    case 61747:
      v2 = @"Numbers";
      goto LABEL_689;
    case 61748:
      v2 = @"Piano Keys Inverse";
      goto LABEL_689;
    case 61749:
      v2 = @"Paintbrush Pointed  ";
      goto LABEL_689;
    case 61750:
      v2 = @"Applescript  ";
      goto LABEL_689;
    case 61751:
      v2 = @"Scroll";
      goto LABEL_689;
    case 61752:
      v2 = @"Scanner";
      goto LABEL_689;
    case 61753:
      v2 = @"Handbag Alternate";
      goto LABEL_689;
    case 61760:
      v2 = @"Suitcase Rolling";
      goto LABEL_689;
    case 61761:
      v2 = @"Homekit";
      goto LABEL_689;
    case 61762:
      v2 = @"Building Columns";
      goto LABEL_689;
    case 61763:
      v2 = @"Lamp Desk";
      goto LABEL_689;
    case 61764:
      v2 = @"Lamp Ceiling";
      goto LABEL_689;
    case 61765:
      v2 = @"Fan Floor";
      goto LABEL_689;
    case 61766:
      v2 = @"Fan";
      goto LABEL_689;
    case 61767:
      v2 = @"Fan Ceiling";
      goto LABEL_689;
    case 61768:
      v2 = @"Lamp Floor";
      goto LABEL_689;
    case 61769:
      v2 = @"Power Plug";
      goto LABEL_689;
    case 61776:
      v2 = @"Balloon";
      goto LABEL_689;
    case 61777:
      v2 = @"Regatta Sailboat";
      goto LABEL_689;
    case 61778:
      v2 = @"Fireworks";
      goto LABEL_689;
    case 61779:
      v2 = @"Party Popper";
      goto LABEL_689;
    case 61780:
      v2 = @"Popcorn";
      goto LABEL_689;
    case 61781:
      v2 = @"Frying Pan";
      goto LABEL_689;
    case 61782:
      v2 = @"Sofa";
      goto LABEL_689;
    case 61783:
      v2 = @"Torus";
      goto LABEL_689;
    case 61784:
      v2 = @"Macintosh Classic";
      goto LABEL_689;
    case 61785:
      v2 = @"Finder";
      goto LABEL_689;
    case 61792:
      v2 = @"Watch Analog";
      goto LABEL_689;
    case 61793:
      v2 = @"Apple Watch Side Right";
      goto LABEL_689;
    case 61794:
      v2 = @"Media Stick";
      goto LABEL_689;
    case 61795:
      v2 = @"Tv";
      goto LABEL_689;
    case 61796:
      v2 = @"Shazam Logo";
      goto LABEL_689;
    case 61797:
      v2 = @"Guitars";
      goto LABEL_689;
    case 61798:
      v2 = @"Moped";
      goto LABEL_689;
    case 61799:
      v2 = @"Scooter";
      goto LABEL_689;
    case 61800:
      v2 = @"Stroller";
      goto LABEL_689;
    case 61801:
      v2 = @"Comb";
      goto LABEL_689;
    case 61808:
      v2 = @"Horn";
      goto LABEL_689;
    case 61809:
      v2 = @"Tortoise";
      goto LABEL_689;
    case 61810:
      v2 = @"Hare";
      goto LABEL_689;
    case 61811:
      v2 = @"Dog Alternate";
      goto LABEL_689;
    case 61812:
      v2 = @"Cat Alternate";
      goto LABEL_689;
    case 61813:
      v2 = @"Lizard";
      goto LABEL_689;
    case 61814:
      v2 = @"Bird";
      goto LABEL_689;
    case 61815:
      v2 = @"Ant";
      goto LABEL_689;
    case 61816:
      v2 = @"Ladybug";
      goto LABEL_689;
    case 61817:
      v2 = @"Function";
      goto LABEL_689;
    case 61824:
      v2 = @"Percent";
      goto LABEL_689;
    case 61825:
      v2 = @"Teddybear";
      goto LABEL_689;
    case 61826:
      v2 = @"Leaf";
      goto LABEL_689;
    case 61827:
      v2 = @"Text Format Characters";
      goto LABEL_689;
    case 61828:
      v2 = @"Crown";
      goto LABEL_689;
    case 61829:
      v2 = @"Movie Clapper";
      goto LABEL_689;
    case 61830:
      v2 = @"Text Format";
      goto LABEL_689;
    case 61831:
      v2 = @"Film Stack";
      goto LABEL_689;
    case 61832:
      v2 = @"Text Format Size";
      goto LABEL_689;
    case 61833:
      v2 = @"Text Format Superscript";
      goto LABEL_689;
    case 61840:
      v2 = @"Text Format Subscript";
      goto LABEL_689;
    case 61841:
      v2 = @"Sum";
      goto LABEL_689;
    case 61842:
      v2 = @"Compass Drawing";
      goto LABEL_689;
    case 61843:
      v2 = @"Angle";
      goto LABEL_689;
    case 61844:
      v2 = @"Bold Italic Underline";
      goto LABEL_689;
    case 61845:
      v2 = @"Characters Lowercase";
      goto LABEL_689;
    case 61846:
      v2 = @"Characters Uppercase";
      goto LABEL_689;
    case 61847:
      v2 = @"Vision Pro Spatial Computer";
      goto LABEL_689;
    case 61848:
      v2 = @"Low Battery";
      goto LABEL_689;
    case 61849:
      v2 = @"Charging Charge Battery";
      goto LABEL_689;
    case 61952:
      v2 = @"X";
      goto LABEL_689;
    case 61953:
      v2 = @"Left Arrow";
      goto LABEL_689;
    case 61954:
      v2 = @"Right Arrow";
      goto LABEL_689;
    case 61955:
      v2 = @"Up Arrow";
      goto LABEL_689;
    case 61956:
      v2 = @"Down Arrow";
      goto LABEL_689;
    case 61957:
      v2 = @"Medical Thermometer Temperature";
      goto LABEL_689;
    case 61958:
      v2 = @"Calendar Person";
      goto LABEL_689;
    case 61959:
      v2 = @"Calendar Chart";
      goto LABEL_689;
    case 61960:
      v2 = @"Person Contact Magnifying Glass";
      goto LABEL_689;
    case 61961:
      v2 = @"Journal";
      goto LABEL_689;
    case 61968:
      v2 = @"Figure Run Treadmill";
      goto LABEL_689;
    case 61969:
      v2 = @"Figure Walk Treadmill";
      goto LABEL_689;
    case 61970:
      v2 = @"Figure Ice Skating";
      goto LABEL_689;
    case 61971:
      v2 = @"Degrees Celsius Temperature";
      goto LABEL_689;
    case 61972:
      v2 = @"Degrees Farenheit Temperature";
      goto LABEL_689;
    case 61973:
      v2 = @"Fire Extinguisher";
      goto LABEL_689;
    case 61974:
      v2 = @"Wallet Bifold";
      goto LABEL_689;
    case 61975:
      v3 = +[WFDevice currentDevice];
      if ([v3 hasCapability:@"WAPI"])
      {
        v4 = @"House WLAN (Glyph)";
        v5 = @"House WLAN";
      }

      else
      {
        v4 = @"House WiFi (Glyph)";
        v5 = @"House WiFi";
      }

LABEL_695:
      v1 = WFLocalizedStringWithKey(v4, v5);

      break;
    case 61976:
      v2 = @"Keys Ring";
      goto LABEL_689;
    case 61977:
      v2 = @"Wheelchair";
      goto LABEL_689;
    case 61984:
      v2 = @"Helmet";
      goto LABEL_689;
    case 61985:
      v2 = @"Coat";
      goto LABEL_689;
    case 61986:
      v2 = @"Jacket";
      goto LABEL_689;
    case 61987:
      v2 = @"Heart Clipboard Doctor";
      goto LABEL_689;
    case 61988:
      v2 = @"Humidity";
      goto LABEL_689;
    case 61989:
      v2 = @"Sparkles Stars";
      goto LABEL_689;
    case 61990:
      v2 = @"Moon Haze";
      goto LABEL_689;
    case 61991:
      v2 = @"Moon Stars";
      goto LABEL_689;
    case 61992:
      v2 = @"Cloud Hail";
      goto LABEL_689;
    case 61993:
      v2 = @"Cloud Sleet";
      goto LABEL_689;
    case 62000:
      v2 = @"Cloud Bolt";
      goto LABEL_689;
    case 62001:
      v2 = @"Cloud Bolt Rain";
      goto LABEL_689;
    case 62002:
      v2 = @"Cloud Sun";
      goto LABEL_689;
    case 62003:
      v2 = @"Cloud Sun Rain";
      goto LABEL_689;
    case 62004:
      v2 = @"Cloud Sun Bolt";
      goto LABEL_689;
    case 62005:
      v2 = @"Cloud Moon";
      goto LABEL_689;
    case 62006:
      v2 = @"Cloud Moon Rain";
      goto LABEL_689;
    case 62007:
      v2 = @"Cloud Moon Bolt";
      goto LABEL_689;
    case 62008:
      v2 = @"Wind";
      goto LABEL_689;
    case 62009:
      v2 = @"Wind Snow";
      goto LABEL_689;
    case 62016:
      v2 = @"Tornado Twister";
      goto LABEL_689;
    case 62017:
      v2 = @"Thermometer Sun";
      goto LABEL_689;
    case 62018:
      v2 = @"Thermometer Snowflake";
      goto LABEL_689;
    case 62019:
      v2 = @"Sunset";
      goto LABEL_689;
    case 62020:
      v2 = @"Sunrise";
      goto LABEL_689;
    case 62021:
      v2 = @"Airplane Departure";
      goto LABEL_689;
    case 62022:
      v2 = @"Airplane Arrival";
      goto LABEL_689;
    case 62023:
      v2 = @"Cablecar";
      goto LABEL_689;
    case 62024:
      v2 = @"Light Rail";
      goto LABEL_689;
    case 62025:
      v2 = @"Ferry Boat";
      goto LABEL_689;
    case 62033:
      v2 = @"Box Truck";
      goto LABEL_689;
    case 62034:
      v2 = @"Ev Charger";
      goto LABEL_689;
    case 62035:
      v2 = @"Road Lanes";
      goto LABEL_689;
    case 62036:
      v2 = @"Checkered Flag";
      goto LABEL_689;
    case 62037:
      v2 = @"Arcade Stick Console";
      goto LABEL_689;
    case 62038:
      v2 = @"Gearshift Manual Six Speed Transmission";
      goto LABEL_689;
    case 62039:
      v2 = @"Phone Game Controller";
      goto LABEL_689;
    case 62040:
      v2 = @"Arcade Joystick Controller";
      goto LABEL_689;
    case 62041:
      v2 = @"Personal Hotspot";
      goto LABEL_689;
    case 62048:
      v2 = @"Bolt";
      goto LABEL_689;
    case 62049:
      v2 = @"Satellite";
      goto LABEL_689;
    case 62050:
      v2 = @"Usb";
      goto LABEL_689;
    case 62051:
      v2 = @"Bonjour Networking";
      goto LABEL_689;
    case 62052:
      v2 = @"Hdmi Port";
      goto LABEL_689;
    case 62053:
      v2 = @"Thunderbolt Port";
      goto LABEL_689;
    case 62054:
      v2 = @"Usb C Port";
      goto LABEL_689;
    case 62055:
      v2 = @"Usb A Port";
      goto LABEL_689;
    case 62056:
      v2 = @"Usb B Port";
      goto LABEL_689;
    case 62057:
      v2 = @"Ethernet Port";
      goto LABEL_689;
    case 62064:
      v2 = @"Vga Port";
      goto LABEL_689;
    case 62065:
      v2 = @"Thunderbolt";
      goto LABEL_689;
    case 62066:
      v2 = @"Firewire";
      goto LABEL_689;
    case 62067:
      v2 = @"Ethernet";
      goto LABEL_689;
    case 62068:
      v2 = @"Antenna Radiowaves";
      goto LABEL_689;
    case 62069:
      v2 = @"Oven";
      goto LABEL_689;
    case 62070:
      v2 = @"Microwave";
      goto LABEL_689;
    case 62071:
      v2 = @"Refrigerator";
      goto LABEL_689;
    case 62072:
      v2 = @"Toilet";
      goto LABEL_689;
    case 62073:
      v2 = @"Light Bulb Led";
      goto LABEL_689;
    case 62080:
      v2 = @"Light Bulb Led Alternate";
      goto LABEL_689;
    case 62081:
      v2 = @"Person Archery";
      goto LABEL_689;
    case 62082:
      v2 = @"Person Basketball";
      goto LABEL_689;
    case 62083:
      v2 = @"Person Climbing";
      goto LABEL_689;
    case 62084:
      v2 = @"Person Stretch Cooldown";
      goto LABEL_689;
    case 62085:
      v2 = @"Person Core Training";
      goto LABEL_689;
    case 62086:
      v2 = @"Person Curling";
      goto LABEL_689;
    case 62087:
      v2 = @"Person Elliptical";
      goto LABEL_689;
    case 62088:
      v2 = @"Person Fencing";
      goto LABEL_689;
    case 62089:
      v2 = @"Person Gymnastics";
      goto LABEL_689;
    case 62096:
      v2 = @"Person Interval Training";
      goto LABEL_689;
    case 62097:
      v2 = @"Person Hockey";
      goto LABEL_689;
    case 62098:
      v2 = @"Person Ice Hockey";
      goto LABEL_689;
    case 62099:
      v2 = @"Person Indoor Cycle";
      goto LABEL_689;
    case 62100:
      v2 = @"Person Cycle Bike";
      goto LABEL_689;
    case 62101:
      v2 = @"Person Rowing";
      goto LABEL_689;
    case 62102:
      v2 = @"Person Skateboarding";
      goto LABEL_689;
    case 62103:
      v2 = @"Person Ice Skating";
      goto LABEL_689;
    case 62104:
      v2 = @"Person Stair Stepper";
      goto LABEL_689;
    case 62105:
      v2 = @"Medal";
      goto LABEL_689;
    case 62208:
      v2 = @"Fossil Shell";
      goto LABEL_689;
    case 62209:
      v2 = @"Three D Move";
      goto LABEL_689;
    case 62210:
      v2 = @"Hat Cap";
      goto LABEL_689;
    case 62211:
      v2 = @"Book Wrench";
      goto LABEL_689;
    case 62212:
      v2 = @"Key Radiowaves";
      goto LABEL_689;
    case 62213:
      v2 = @"Apple Intelligence";
      goto LABEL_689;
    case 62214:
      v2 = @"Hand Point Up Left";
      goto LABEL_689;
    case 62215:
      v2 = @"Hand Tap";
      goto LABEL_689;
    case 62216:
      v2 = @"Hand Draw";
      goto LABEL_689;
    case 62217:
      v2 = @"Shipping Box";
      goto LABEL_689;
    case 62224:
      v2 = @"Engine Combustion";
      goto LABEL_689;
    case 62225:
      v2 = @"Pc";
      goto LABEL_689;
    case 62226:
      v2 = @"Bell Badge";
      goto LABEL_689;
    case 62227:
      v2 = @"Bell Badge Waveform";
      goto LABEL_689;
    case 62228:
      v2 = @"Bell Slash";
      goto LABEL_689;
    case 62229:
      v2 = @"Bell And Waves";
      goto LABEL_689;
    case 62230:
      v2 = @"Swatch Palette";
      goto LABEL_689;
    case 62231:
      v2 = @"Mug Alternate";
      goto LABEL_689;
    case 62232:
      v2 = @"Oil Can";
      goto LABEL_689;
    case 62233:
      v2 = @"Newspaper";
      goto LABEL_689;
    case 62240:
      v2 = @"Accessibility";
      goto LABEL_689;
    case 62241:
      v2 = @"Megaphone";
      goto LABEL_689;
    case 62242:
      v2 = @"Firewall";
      goto LABEL_689;
    case 62243:
      v2 = @"Basket";
      goto LABEL_689;
    case 62244:
      v2 = @"Level";
      goto LABEL_689;
    case 62245:
      v2 = @"File Vault";
      goto LABEL_689;
    case 62246:
      v2 = @"Fireplace";
      goto LABEL_689;
    case 62247:
      v2 = @"Cabinet";
      goto LABEL_689;
    case 62248:
      v2 = @"Dryer";
      goto LABEL_689;
    case 62249:
      v2 = @"Sink";
      goto LABEL_689;
    case 62256:
      v2 = @"Pin";
      goto LABEL_689;
    case 62257:
      v2 = @"Shoe";
      goto LABEL_689;
    case 62258:
      v2 = @"Building Block";
      goto LABEL_689;
    case 62259:
      v2 = @"D Pad";
      goto LABEL_689;
    case 62260:
      v2 = @"Water Bottle";
      goto LABEL_689;
    case 62261:
      v2 = @"Sd Card";
      goto LABEL_689;
    case 62262:
      v2 = @"Sim Card";
      goto LABEL_689;
    case 62263:
      v2 = @"esim";
      goto LABEL_689;
    case 62264:
      v2 = @"Scale Mass";
      goto LABEL_689;
    case 62265:
      v2 = @"Banknote";
      goto LABEL_689;
    case 62272:
      v2 = @"Hockey Puck";
      goto LABEL_689;
    case 62273:
      v2 = @"Australian Football";
      goto LABEL_689;
    case 62274:
      v2 = @"American Football";
      goto LABEL_689;
    case 62275:
      v2 = @"Beach Umbrella";
      goto LABEL_689;
    case 62276:
      v2 = @"Suit Spade";
      goto LABEL_689;
    case 62277:
      v2 = @"Suit Diamond";
      goto LABEL_689;
    case 62278:
      v2 = @"Suit Club";
      goto LABEL_689;
    case 62279:
      v2 = @"Shower Handheld";
      goto LABEL_689;
    case 62280:
      v2 = @"Signpost Right";
      goto LABEL_689;
    case 62281:
      v2 = @"Mac Pro Gen3";
      goto LABEL_689;
    case 62288:
      v2 = @"Mac Pro Gen2";
      goto LABEL_689;
    case 62289:
      v2 = @"Mac Pro Gen1";
      goto LABEL_689;
    case 62290:
      v2 = @"HomePod Mini";
      goto LABEL_689;
    case 62291:
      v2 = @"HomePod2";
      goto LABEL_689;
    case 62292:
      v2 = @"Suv Side";
      goto LABEL_689;
    case 62293:
      v2 = @"Car Side";
      goto LABEL_689;
    case 62294:
      v2 = @"Convertible Side";
      goto LABEL_689;
    case 62295:
      v2 = @"Horn Blast";
      goto LABEL_689;
    case 62296:
      v2 = @"Vaccination Card";
      goto LABEL_689;
    case 62297:
      v2 = @"Iv Fluid Bag";
      goto LABEL_689;
    case 62304:
      v2 = @"Hat Wide Brim";
      goto LABEL_689;
    case 62305:
      v2 = @"Globe Desk";
      goto LABEL_689;
    case 62306:
      v2 = @"Cup And Heat Waves";
      goto LABEL_689;
    case 62307:
      v2 = @"Network Connected To Line Below";
      goto LABEL_689;
    case 62308:
      v2 = @"App Connected To App Below";
      goto LABEL_689;
    case 62309:
      v2 = @"Wrench Adjustable";
      goto LABEL_689;
    case 62310:
      v2 = @"Mustache";
      goto LABEL_689;
    case 62311:
      v2 = @"Flip Phone";
      goto LABEL_689;
    case 62312:
      v2 = @"Siri";
      goto LABEL_689;
    case 62313:
      v2 = @"App Store";
      goto LABEL_689;
    case 62320:
      v2 = @"Car Play";
      goto LABEL_689;
    case 62321:
      v2 = @"Text Append";
      goto LABEL_689;
    case 62322:
      v2 = @"Apple Cash";
      goto LABEL_689;
    case 62323:
      v2 = @"Apple Math Notes";
      goto LABEL_689;
    case 62324:
      v2 = @"Apple Mindfulness";
      goto LABEL_689;
    case 62325:
      v2 = @"Apple Breathe";
      goto LABEL_689;
    case 62326:
      v2 = @"Apple Reflect";
      goto LABEL_689;
    case 62327:
      v2 = @"Apple Meditate";
      goto LABEL_689;
    case 62328:
      v2 = @"Apple State Of Mind";
      goto LABEL_689;
    case 62329:
      v2 = @"Apple Cycle Tracking";
      goto LABEL_689;
    case 62336:
      v2 = @"Apple News";
      goto LABEL_689;
    case 62337:
      v2 = @"Apple Health Trends";
      goto LABEL_689;
    case 62338:
      v2 = @"Apple Pages";
      goto LABEL_689;
    case 62339:
      v2 = @"Apple Keynote";
      goto LABEL_689;
    case 62340:
      v2 = @"Apple Numbers";
      goto LABEL_689;
    case 62341:
      v2 = @"Bezier Curve";
      goto LABEL_689;
    case 62342:
      v2 = @"Road Lanes Curved Left";
      goto LABEL_689;
    case 62343:
      v2 = @"Road Lanes Curved Right";
      goto LABEL_689;
    case 62344:
      v2 = @"Point Top Left Down To Point Bottom Right Curve Path";
      goto LABEL_689;
    case 62345:
      v2 = @"Point Bottom Left Forward To Point Top Right S Curve Path";
      goto LABEL_689;
    case 62352:
      v2 = @"Sparkle";
      goto LABEL_689;
    case 62353:
      v2 = @"Arrow Up Right";
      goto LABEL_689;
    case 62354:
      v2 = @"Arrow Up Left";
      goto LABEL_689;
    case 62355:
      v2 = @"Text Insert";
      goto LABEL_689;
    case 62356:
      v2 = @"Text Quote";
      goto LABEL_689;
    case 62357:
      v2 = @"Text Align Left";
      goto LABEL_689;
    case 62358:
      v2 = @"Text Align Center";
      goto LABEL_689;
    case 62359:
      v2 = @"Text Align Right";
      goto LABEL_689;
    case 62360:
      v2 = @"Text Justify";
      goto LABEL_689;
    case 62464:
      v2 = @"Suitcase Rolling And Suitcase";
      goto LABEL_689;
    case 62465:
      v2 = @"Pet Carrier";
      goto LABEL_689;
    case 62466:
      v2 = @"Airplane Landed";
      goto LABEL_689;
    case 62467:
      v2 = @"Airplane Cloud";
      goto LABEL_689;
    case 62468:
      v2 = @"Airplane Ticket";
      goto LABEL_689;
    case 62469:
      v2 = @"Airplane Seat";
      goto LABEL_689;
    case 62470:
      v2 = @"Person Walking Suitcase";
      goto LABEL_689;
    case 62471:
      v2 = @"Apple Classical Pages";
      goto LABEL_689;
    case 62472:
      v2 = @"Text Square Filled";
      goto LABEL_689;
    case 62473:
      v2 = @"Character Text Justify";
      goto LABEL_689;
    case 62480:
      v2 = @"Graph2 D";
      goto LABEL_689;
    case 62481:
      v2 = @"Math Operators A R";
      goto LABEL_689;
    case 62482:
      v2 = @"Circle Fill";
      goto LABEL_689;
    case 62483:
      v2 = @"Capsule Portrait Fill";
      goto LABEL_689;
    case 62484:
      v2 = @"Rectangle Fill";
      goto LABEL_689;
    case 62485:
      v2 = @"Rectangle Portrait Fill";
      goto LABEL_689;
    case 62486:
      v2 = @"Oval Fill";
      goto LABEL_689;
    case 62487:
      v2 = @"Oval Portrait Fill";
      goto LABEL_689;
    case 62488:
      v2 = @"Triangle Fill";
      goto LABEL_689;
    case 62489:
      v2 = @"Diamond Fill";
      goto LABEL_689;
    case 62496:
      v2 = @"Octagon Fill";
      goto LABEL_689;
    case 62497:
      v2 = @"Hexagon Fill";
      goto LABEL_689;
    case 62498:
      v2 = @"Pentagon Fill";
      goto LABEL_689;
    case 62499:
      v2 = @"Seal Fill";
      goto LABEL_689;
    case 62500:
      v2 = @"Rhombus Fill";
      goto LABEL_689;
    case 62501:
      v2 = @"Shield Fill";
LABEL_689:
      v1 = WFLocalizedString(v2);
      break;
    default:
      switch(a1)
      {
        case 59392:
          v2 = @"Ellipsis";
          goto LABEL_689;
        case 59395:
          v2 = @"Dollar Sign With Line";
          goto LABEL_689;
        case 59402:
          v2 = @"Movie Camera";
          goto LABEL_689;
        case 59403:
          v2 = @"Message Bubbles";
          goto LABEL_689;
        case 59405:
          v2 = @"Twelve Squares";
          goto LABEL_689;
        case 59412:
          v2 = @"Globe";
          goto LABEL_689;
        case 59414:
          v2 = @"Chat Bubble";
          goto LABEL_689;
        case 59436:
          v2 = @"Laptop";
          goto LABEL_689;
        case 59437:
          v2 = @"Person";
          goto LABEL_689;
        case 59445:
          v2 = @"List";
          goto LABEL_689;
        case 59446:
          v2 = @"Keyboard";
          goto LABEL_689;
        case 59448:
          v2 = @"Pound Sign";
          goto LABEL_689;
        case 59452:
          v2 = @"Car";
          goto LABEL_689;
        case 59454:
          v2 = @"Target";
          goto LABEL_689;
        case 59456:
          v2 = @"Football";
          goto LABEL_689;
        case 59459:
          v2 = @"Cloud Service";
          goto LABEL_689;
        case 59465:
          v2 = @"Open Book";
          goto LABEL_689;
        case 59468:
          v2 = @"Flower";
          goto LABEL_689;
        case 59489:
          v2 = @"Battery";
          goto LABEL_689;
        case 59497:
          v2 = @"Feed";
          goto LABEL_689;
        case 59508:
          v2 = @"Play";
          goto LABEL_689;
        case 59511:
          v2 = @"Magic Wand With Stars";
          goto LABEL_689;
        case 59512:
          v2 = @"Euro Sign";
          goto LABEL_689;
        case 59514:
          v2 = @"Yen Sign";
          goto LABEL_689;
        case 59515:
          v2 = @"Bitcoin Symbol";
          goto LABEL_689;
        case 59516:
          v2 = @"Loading Indicator";
          goto LABEL_689;
        case 59519:
          v2 = @"Database Cylinder Stack";
          goto LABEL_689;
        case 59648:
          v2 = @"Airplane";
          goto LABEL_689;
        case 59649:
          v2 = @"Alarm Clock";
          goto LABEL_689;
        case 59650:
          v2 = @"Alert Triangle";
          goto LABEL_689;
        case 59651:
          v2 = @"Alien";
          goto LABEL_689;
        case 59652:
          v2 = @"Ambulance";
          goto LABEL_689;
        case 59653:
          v2 = @"Archive";
          goto LABEL_689;
        case 59654:
          v2 = @"Arrow Curved Left";
          goto LABEL_689;
        case 59655:
          v2 = @"Arrow Curved Right";
          goto LABEL_689;
        case 59656:
          v2 = @"Asterisk";
          goto LABEL_689;
        case 59657:
          v2 = @"Atom";
          goto LABEL_689;
        case 59658:
          v2 = @"Baby";
          goto LABEL_689;
        case 59659:
          v2 = @"Baby 2";
          goto LABEL_689;
        case 59660:
          v2 = @"Bandage";
          goto LABEL_689;
        case 59661:
          v2 = @"Barcode";
          goto LABEL_689;
        case 59662:
          v2 = @"Bar Graph";
          goto LABEL_689;
        case 59663:
          v2 = @"Baseball";
          goto LABEL_689;
        case 59664:
          v2 = @"Basketball";
          goto LABEL_689;
        case 59665:
          v2 = @"Bathtub";
          goto LABEL_689;
        case 59666:
          v2 = @"Bed";
          goto LABEL_689;
        case 59667:
          v2 = @"Bell";
          goto LABEL_689;
        case 59668:
          v2 = @"Bicycle";
          goto LABEL_689;
        case 59669:
          v2 = @"Binoculars";
          goto LABEL_689;
        case 59670:
          v2 = @"Bookmark";
          goto LABEL_689;
        case 59671:
          v2 = @"Bookshelf";
          goto LABEL_689;
        case 59672:
          v2 = @"Book With Sash";
          goto LABEL_689;
        case 59673:
          v2 = @"Box Filled";
          goto LABEL_689;
        case 59675:
          v2 = @"Braille";
          goto LABEL_689;
        case 59676:
          v2 = @"Briefcase";
          goto LABEL_689;
        case 59677:
          v2 = @"Buildings";
          goto LABEL_689;
        case 59678:
          v2 = @"Bus";
          goto LABEL_689;
        case 59679:
          v2 = @"Cake";
          goto LABEL_689;
        case 59680:
          v2 = @"Calculator";
          goto LABEL_689;
        case 59681:
          v2 = @"Calendar";
          goto LABEL_689;
        case 59682:
          v2 = @"Camera";
          goto LABEL_689;
        case 59683:
          v2 = @"Carrot";
          goto LABEL_689;
        case 59684:
          v2 = @"Cat";
          goto LABEL_689;
        case 59685:
          v2 = @"Chain Link";
          goto LABEL_689;
        case 59686:
          v2 = @"Chemical";
          goto LABEL_689;
        case 59687:
          v2 = @"Child";
          goto LABEL_689;
        case 59688:
          v2 = @"Church";
          goto LABEL_689;
        case 59690:
          v2 = @"Checkmark";
          goto LABEL_689;
        case 59692:
          v2 = @"Down Chevron Arrow";
          goto LABEL_689;
        case 59693:
          v2 = @"Download Arrow";
          goto LABEL_689;
        case 59695:
          v2 = @"Fast Forward";
          goto LABEL_689;
        case 59696:
          v2 = @"Left Chevron Arrow";
          goto LABEL_689;
        case 59697:
          v2 = @"Info";
          goto LABEL_689;
        case 59698:
          v2 = @"Circled Pi Symbol";
          goto LABEL_689;
        case 59700:
          v2 = @"Plus";
          goto LABEL_689;
        case 59702:
          v2 = @"Power";
          goto LABEL_689;
        case 59703:
          v2 = @"Question Mark";
          goto LABEL_689;
        case 59704:
          v2 = @"Rewind";
          goto LABEL_689;
        case 59705:
          v2 = @"Right Chevron Arrow";
          goto LABEL_689;
        case 59706:
          v2 = @"Stop";
          goto LABEL_689;
        case 59707:
          v2 = @"Up Chevron Arrow";
          goto LABEL_689;
        case 59708:
          v2 = @"Upload Arrow";
          goto LABEL_689;
        case 59711:
          v2 = @"Clipboard glyph";
          goto LABEL_689;
        case 59712:
          v2 = @"Clock";
          goto LABEL_689;
        case 59713:
          v2 = @"Clothes Hanger";
          goto LABEL_689;
        case 59714:
          v2 = @"Cloud";
          goto LABEL_689;
        case 59715:
          v2 = @"Cloud Raining";
          goto LABEL_689;
        case 59716:
          v2 = @"Color Dropper";
          goto LABEL_689;
        case 59717:
          v2 = @"Web Compass";
          goto LABEL_689;
        case 59718:
          v2 = @"Connected Share Dots";
          goto LABEL_689;
        case 59719:
          v2 = @"Credit Card";
          goto LABEL_689;
        case 59720:
          v2 = @"Crop";
          goto LABEL_689;
        case 59721:
          v2 = @"Cube";
          goto LABEL_689;
        case 59722:
          v2 = @"Server";
          goto LABEL_689;
        case 59723:
          v2 = @"Dice";
          goto LABEL_689;
        case 59724:
          v2 = @"Directions Signs";
          goto LABEL_689;
        case 59725:
          v2 = @"Document";
          goto LABEL_689;
        case 59726:
          v2 = @"Document Filled";
          goto LABEL_689;
        case 59728:
          v2 = @"Dog";
          goto LABEL_689;
        case 59729:
          v2 = @"Quote Bubble";
          goto LABEL_689;
        case 59730:
          v2 = @"Drama Masks";
          goto LABEL_689;
        case 59731:
          v2 = @"Evergreen Tree";
          goto LABEL_689;
        case 59732:
          v2 = @"Feed";
          goto LABEL_689;
        case 59733:
          v2 = @"Filmstrip";
          goto LABEL_689;
        case 59734:
          v2 = @"Fire";
          goto LABEL_689;
        case 59735:
          v2 = @"Fish";
          goto LABEL_689;
        case 59736:
          v2 = @"Flag";
          goto LABEL_689;
        case 59737:
          v2 = @"Folder";
          goto LABEL_689;
        case 59738:
          v2 = @"Footprints";
          goto LABEL_689;
        case 59739:
          v2 = @"Four Squares";
          goto LABEL_689;
        case 59740:
          v2 = @"Fruit";
          goto LABEL_689;
        case 59741:
          v2 = @"Fuel Station";
          goto LABEL_689;
        case 59742:
          v2 = @"Game Controller";
          goto LABEL_689;
        case 59743:
          v2 = @"Gears";
          goto LABEL_689;
        case 59744:
          v2 = @"Gift";
          goto LABEL_689;
        case 59745:
          v2 = @"Glasses";
          goto LABEL_689;
        case 59746:
          v2 = @"Graduate Cap";
          goto LABEL_689;
        case 59747:
          v2 = @"Grocery Store";
          goto LABEL_689;
        case 59748:
          v2 = @"Hammer";
          goto LABEL_689;
        case 59749:
          v2 = @"Hammer And Wrench";
          goto LABEL_689;
        case 59750:
          v2 = @"Handbag";
          goto LABEL_689;
        case 59751:
          v2 = @"Hand With Spread Fingers";
          goto LABEL_689;
        case 59752:
          v2 = @"Hard Drive";
          goto LABEL_689;
        case 59753:
          v2 = @"Headphones";
          goto LABEL_689;
        case 59754:
          v2 = @"Heart";
          goto LABEL_689;
        case 59755:
          v2 = @"Home";
          goto LABEL_689;
        case 59756:
          v2 = @"Horse";
          goto LABEL_689;
        case 59757:
          v2 = @"Hourglass";
          goto LABEL_689;
        case 59758:
          v2 = @"Infinity";
          goto LABEL_689;
        case 59759:
          v2 = @"Inhaler";
          goto LABEL_689;
        case 59760:
          v2 = @"Key";
          goto LABEL_689;
        case 59761:
          v2 = @"Laundry Machine";
          goto LABEL_689;
        case 59762:
          v2 = @"Life Preserver";
          goto LABEL_689;
        case 59763:
          v2 = @"Light Bulb";
          goto LABEL_689;
        case 59764:
          v2 = @"Lightning Bolt";
          goto LABEL_689;
        case 59767:
          v2 = @"Loading Indicator";
          goto LABEL_689;
        case 59768:
          v2 = @"Location Arrow";
          goto LABEL_689;
        case 59769:
          v2 = @"Location Pin";
          goto LABEL_689;
        case 59770:
          v2 = @"Lock";
          goto LABEL_689;
        case 59771:
          v2 = @"Magic Wand";
          goto LABEL_689;
        case 59772:
          v2 = @"Magnifying Glass";
          goto LABEL_689;
        case 59773:
          v2 = @"Mail Envelope";
          goto LABEL_689;
        case 59774:
          v2 = @"Mail Envelope Open";
          goto LABEL_689;
        case 59775:
          v2 = @"Man";
          goto LABEL_689;
        case 59776:
          v2 = @"Martini Glass";
          goto LABEL_689;
        case 59777:
          v2 = @"Masquerade Mask";
          goto LABEL_689;
        case 59778:
          v2 = @"Medicine Bottle";
          goto LABEL_689;
        case 59779:
          v2 = @"Message Bubble";
          goto LABEL_689;
        case 59780:
          v2 = @"Microphone";
          goto LABEL_689;
        case 59781:
          v2 = @"Microscope";
          goto LABEL_689;
        case 59782:
          v2 = @"Moon";
          goto LABEL_689;
        case 59783:
          v2 = @"Motorcycle";
          goto LABEL_689;
        case 59784:
          v2 = @"Mountain Picture";
          goto LABEL_689;
        case 59785:
          v2 = @"Mountains";
          goto LABEL_689;
        case 59786:
          v2 = @"Move Arrows";
          goto LABEL_689;
        case 59788:
          v2 = @"Movie Ticket";
          goto LABEL_689;
        case 59789:
          v2 = @"Mug";
          goto LABEL_689;
        case 59790:
          v2 = @"Music Beamed Eighth Notes";
          goto LABEL_689;
        case 59792:
          v2 = @"Stove";
          goto LABEL_689;
        case 59793:
          v2 = @"Paintbrush";
          goto LABEL_689;
        case 59794:
          v2 = @"Paper Clip";
          goto LABEL_689;
        case 59795:
          v2 = @"Parking Symbol";
          goto LABEL_689;
        case 59796:
          v2 = @"Pawprint";
          goto LABEL_689;
        case 59797:
          v2 = @"Peace Sign";
          goto LABEL_689;
        case 59798:
          v2 = @"Pencil";
          goto LABEL_689;
        case 59799:
          v2 = @"People Three Overlapping";
          goto LABEL_689;
        case 59800:
          v2 = @"People Two Overlapping";
          goto LABEL_689;
        case 59801:
          v2 = @"Person";
          goto LABEL_689;
        case 59802:
          v2 = @"Person At Podium";
          goto LABEL_689;
        case 59803:
          v2 = @"Person Dancing";
          goto LABEL_689;
        case 59804:
          v2 = @"Person Giving Speech";
          goto LABEL_689;
        case 59805:
          v2 = @"Person Hiking";
          goto LABEL_689;
        case 59806:
          v2 = @"Person In Wheelchair";
          goto LABEL_689;
        case 59807:
          v2 = @"Person Lifting Weight";
          goto LABEL_689;
        case 59808:
          v2 = @"Person Running";
          goto LABEL_689;
        case 59809:
          v2 = @"Person Skiing";
          goto LABEL_689;
        case 59810:
          v2 = @"Person Snowboarding";
          goto LABEL_689;
        case 59811:
          v2 = @"Person Swimming";
          goto LABEL_689;
        case 59812:
          v2 = @"Person Walking";
          goto LABEL_689;
        case 59813:
          v2 = @"Person Walking With Cane";
          goto LABEL_689;
        case 59814:
          v2 = @"Phone";
          goto LABEL_689;
        case 59815:
          v2 = @"Pills";
          goto LABEL_689;
        case 59816:
          v2 = @"Podcasts";
          goto LABEL_689;
        case 59817:
          v2 = @"Printer";
          goto LABEL_689;
        case 59818:
          v2 = @"Two Prong Puzzle Piece";
          goto LABEL_689;
        case 59819:
          v2 = @"QR Code";
          goto LABEL_689;
        case 59820:
          v2 = @"Recycle";
          goto LABEL_689;
        case 59821:
          v2 = @"Repost Arrows";
          goto LABEL_689;
        case 59822:
          v2 = @"Rocket";
          goto LABEL_689;
        case 59823:
          v2 = @"Sailboat";
          goto LABEL_689;
        case 59824:
          v2 = @"Scissors";
          goto LABEL_689;
        case 59825:
          v2 = @"Screwdriver";
          goto LABEL_689;
        case 59826:
          v2 = @"Network Storage";
          goto LABEL_689;
        case 59827:
          v2 = @"Shirt";
          goto LABEL_689;
        case 59828:
          v2 = @"Shopping Cart";
          goto LABEL_689;
        case 59829:
          v2 = @"Shower";
          goto LABEL_689;
        case 59830:
          v2 = @"Shrink Arrows";
          goto LABEL_689;
        case 59832:
          v2 = @"Shuffle Arrows";
          goto LABEL_689;
        case 59833:
          v2 = @"Sliders";
          goto LABEL_689;
        case 59834:
          v2 = @"Smiley Face";
          goto LABEL_689;
        case 59835:
          v2 = @"Snowflake";
          goto LABEL_689;
        case 59836:
          v2 = @"Soaring Paper Airplane";
          goto LABEL_689;
        case 59837:
          v2 = @"Soccer Ball";
          goto LABEL_689;
        case 59838:
          v2 = @"Sparkling Bell";
          goto LABEL_689;
        case 59839:
          v2 = @"Speaker Wave1";
          goto LABEL_689;
        case 59840:
          v2 = @"Staircase";
          goto LABEL_689;
        case 59841:
          v2 = @"Star";
          goto LABEL_689;
        case 59842:
          v2 = @"Steaming Bowl";
          goto LABEL_689;
        case 59843:
          v2 = @"Stethoscope";
          goto LABEL_689;
        case 59844:
          v2 = @"Stopwatch";
          goto LABEL_689;
        case 59845:
          v2 = @"Sun";
          goto LABEL_689;
        case 59846:
          v2 = @"Sync Arrows";
          goto LABEL_689;
        case 59847:
          v2 = @"Syringe";
          goto LABEL_689;
        case 59848:
          v2 = @"Tag";
          goto LABEL_689;
        case 59849:
          v2 = @"Target";
          goto LABEL_689;
        case 59850:
          v2 = @"Telescope";
          goto LABEL_689;
        case 59851:
          v2 = @"Television";
          goto LABEL_689;
        case 59852:
          v2 = @"Tennis Ball";
          goto LABEL_689;
        case 59853:
          v2 = @"Text Symbol";
          goto LABEL_689;
        case 59854:
          v2 = @"Thermometer";
          goto LABEL_689;
        case 59856:
          v2 = @"Three Overlapping Circles";
          goto LABEL_689;
        case 59857:
          v2 = @"Thumbs Up";
          goto LABEL_689;
        case 59859:
          v2 = @"Trash";
          goto LABEL_689;
        case 59860:
          v2 = @"Trophy";
          goto LABEL_689;
        case 59861:
          v2 = @"Umbrella";
          goto LABEL_689;
        case 59862:
          v2 = @"Unlock";
          goto LABEL_689;
        case 59863:
          v2 = @"Utensils";
          goto LABEL_689;
        case 59864:
          v2 = @"Video Symbol";
          goto LABEL_689;
        case 59865:
          v2 = @"Watch";
          goto LABEL_689;
        case 59866:
          v2 = @"Water Drop";
          goto LABEL_689;
        case 59867:
          v3 = +[WFDevice currentDevice];
          if ([v3 hasCapability:@"WAPI"])
          {
            v4 = @"WLAN (Glyph)";
            v5 = @"WLAN";
          }

          else
          {
            v4 = @"Wi-Fi (Glyph)";
            v5 = @"Wi-Fi";
          }

          goto LABEL_695;
        case 59868:
          v2 = @"Wine Bottle";
          goto LABEL_689;
        case 59870:
          v2 = @"Wrench";
          goto LABEL_689;
        default:
          goto LABEL_690;
      }
  }

LABEL_690:

  return v1;
}

void __getWFFileRepresentationClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFFileRepresentation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFFileRepresentationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFFileRepresentationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContextualActionRunRequest.m" lineNumber:39 description:{@"Unable to find class %s", "WFFileRepresentation"}];

    __break(1u);
  }
}

void __getWFContentCollectionClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContentCollection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContentCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFContentCollectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContextualActionRunRequest.m" lineNumber:50 description:{@"Unable to find class %s", "WFContentCollection"}];

    __break(1u);
  }
}

void __getWFContentLocationClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContentLocation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContentLocationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFContentLocationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContextualActionRunRequest.m" lineNumber:44 description:{@"Unable to find class %s", "WFContentLocation"}];

    __break(1u);
  }
}

void ContentKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContentKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContentKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B00658;
    v6 = 0;
    ContentKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContentKitLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContentKitLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFContextualActionRunRequest.m" lineNumber:16 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __ContentKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContentKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1EA6304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __LinkServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LinkServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1EA923C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPDCPreflightManagerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!PrivacyDisclosureCoreLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __PrivacyDisclosureCoreLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7B007D8;
    v9 = 0;
    PrivacyDisclosureCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PrivacyDisclosureCoreLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PrivacyDisclosureCoreLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSystemActionRunnerClient.m" lineNumber:42 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("PDCPreflightManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPDCPreflightManagerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFSystemActionRunnerClient.m" lineNumber:43 description:{@"Unable to find class %s", "PDCPreflightManager"}];

LABEL_10:
    __break(1u);
  }

  getPDCPreflightManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getFBSOpenApplicationServiceClass_block_invoke(uint64_t a1)
{
  FrontBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FBSOpenApplicationService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFBSOpenApplicationServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFBSOpenApplicationServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSystemActionRunnerClient.m" lineNumber:27 description:{@"Unable to find class %s", "FBSOpenApplicationService"}];

    __break(1u);
  }
}

void *__getSBSOpenApplicationLaunchOriginActionButtonSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B00808;
    v8 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFSystemActionRunnerClient.m" lineNumber:31 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "SBSOpenApplicationLaunchOriginActionButton");
  *(*(a1[4] + 8) + 24) = result;
  getSBSOpenApplicationLaunchOriginActionButtonSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary();
  result = dlsym(v2, "FBSOpenApplicationOptionKeyLaunchOrigin");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *FrontBoardServicesLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B007F0;
    v7 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FrontBoardServicesLibraryCore_frameworkLibrary;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FrontBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFSystemActionRunnerClient.m" lineNumber:26 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void __getFBSOpenApplicationOptionsClass_block_invoke(uint64_t a1)
{
  FrontBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FBSOpenApplicationOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFBSOpenApplicationOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFBSOpenApplicationOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSystemActionRunnerClient.m" lineNumber:28 description:{@"Unable to find class %s", "FBSOpenApplicationOptions"}];

    __break(1u);
  }
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PrivacyDisclosureCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PrivacyDisclosureCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class initUIImageSymbolConfiguration()
{
  if (UIKitLibrary_sOnce_4891 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_4891, &__block_literal_global_76);
  }

  result = objc_getClass("UIImageSymbolConfiguration");
  classUIImageSymbolConfiguration = result;
  getUIImageSymbolConfigurationClass = UIImageSymbolConfigurationFunction;
  return result;
}

void *__UIKitLibrary_block_invoke_4894()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_4896 = result;
  return result;
}

uint64_t WFWorkflowPaletteColorForLNShortcutTileColor(uint64_t result)
{
  if ((result - 1) >= 0xE)
  {
    return 0;
  }

  return result;
}

void sub_1B1EAB978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFContentCollectionClass_block_invoke_5220(uint64_t a1)
{
  ContentKitLibrary_5221();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContentCollection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContentCollectionClass_softClass_5219 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFContentCollectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFConfiguratorRunRequest.m" lineNumber:27 description:{@"Unable to find class %s", "WFContentCollection"}];

    __break(1u);
  }
}

void ContentKitLibrary_5221()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContentKitLibraryCore_frameworkLibrary_5231)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContentKitLibraryCore_block_invoke_5232;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B008B8;
    v6 = 0;
    ContentKitLibraryCore_frameworkLibrary_5231 = _sl_dlopen();
  }

  if (!ContentKitLibraryCore_frameworkLibrary_5231)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void * _Nonnull ContentKitLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFConfiguratorRunRequest.m" lineNumber:26 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __ContentKitLibraryCore_block_invoke_5232(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContentKitLibraryCore_frameworkLibrary_5231 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1EABD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFContentItemClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary_5221();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFConfiguratorRunRequest.m" lineNumber:28 description:{@"Unable to find class %s", "WFContentItem"}];

    __break(1u);
  }
}

void sub_1B1EAF300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5472(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__getCGImageDestinationCreateWithDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "CGImageDestinationCreateWithData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageDestinationCreateWithDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ImageIOLibrary_5544()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!ImageIOLibraryCore_frameworkLibrary_5562)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __ImageIOLibraryCore_block_invoke_5563;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B00AA8;
    v7 = 0;
    ImageIOLibraryCore_frameworkLibrary_5562 = _sl_dlopen();
  }

  v0 = ImageIOLibraryCore_frameworkLibrary_5562;
  if (!ImageIOLibraryCore_frameworkLibrary_5562)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ImageIOLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFImage+Representations.m" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void *__getkCGImagePropertyPNGCompressionFilterSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "kCGImagePropertyPNGCompressionFilter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyPNGCompressionFilterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyPNGDictionarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "kCGImagePropertyPNGDictionary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyPNGDictionarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyPNGBandCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "kCGImagePropertyPNGBandCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyPNGBandCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyDPIWidthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "kCGImagePropertyDPIWidth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyDPIWidthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCGImagePropertyDPIHeightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "kCGImagePropertyDPIHeight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGImagePropertyDPIHeightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageDestinationAddImageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "CGImageDestinationAddImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageDestinationAddImageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageDestinationFinalizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary_5544();
  result = dlsym(v2, "CGImageDestinationFinalize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageDestinationFinalizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ImageIOLibraryCore_block_invoke_5563(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ImageIOLibraryCore_frameworkLibrary_5562 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1EB087C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5659(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1EB0C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1EB1AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

Class initATXClient()
{
  if (AppPredictionClientLibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionClientLibrary_sOnce, &__block_literal_global_171);
  }

  result = objc_getClass("ATXClient");
  classATXClient = result;
  getATXClientClass = ATXClientFunction;
  return result;
}

void *__AppPredictionClientLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppPredictionClient.framework/AppPredictionClient", 2);
  AppPredictionClientLibrary_sLib = result;
  return result;
}

void sub_1B1EB4024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getISImageClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISImage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISImageClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFImage+Icons.m" lineNumber:25 description:{@"Unable to find class %s", "ISImage"}];

    __break(1u);
  }
}

id getISIconClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getISIconClass_softClass;
  v7 = getISIconClass_softClass;
  if (!getISIconClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getISIconClass_block_invoke;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getISIconClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1EB41D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFImageForIconAndFormat(void *a1, uint64_t a2)
{
  v3 = a1;
  v5 = WFISImageDescriptorNameFromWFImageApplicationIconFormat(a2, v4);
  v6 = [getISImageDescriptorClass() imageDescriptorNamed:v5];
  [v6 setAppearance:0];
  v7 = WFImageForIconAndDescriptor(v3, v6);

  return v7;
}

void WFISImageDescriptorNameFromWFImageApplicationIconFormat(uint64_t a1, id a2)
{
  switch(a1)
  {
    case 2:
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v2 = getkISImageDescriptorHomeScreenSymbolLoc_ptr;
      v16 = getkISImageDescriptorHomeScreenSymbolLoc_ptr;
      if (!getkISImageDescriptorHomeScreenSymbolLoc_ptr)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __getkISImageDescriptorHomeScreenSymbolLoc_block_invoke;
        v12 = &unk_1E7B02C60;
        v7 = IconServicesLibrary();
        v14[3] = dlsym(v7, "kISImageDescriptorHomeScreen");
        getkISImageDescriptorHomeScreenSymbolLoc_ptr = v14[3];
        v2 = v14[3];
      }

      _Block_object_dispose(&v13, 8);
      if (!v2)
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ISImageDescriptorName getkISImageDescriptorHomeScreen(void)"];
        [v4 handleFailureInFunction:v5 file:@"WFImage+Icons.m" lineNumber:29 description:{@"%s", dlerror(), v9, v10, v11, v12}];
        goto LABEL_20;
      }

LABEL_15:
      a2 = *v2;
      break;
    case 1:
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v2 = getkISImageDescriptorNotificationSymbolLoc_ptr;
      v16 = getkISImageDescriptorNotificationSymbolLoc_ptr;
      if (!getkISImageDescriptorNotificationSymbolLoc_ptr)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __getkISImageDescriptorNotificationSymbolLoc_block_invoke;
        v12 = &unk_1E7B02C60;
        v6 = IconServicesLibrary();
        v14[3] = dlsym(v6, "kISImageDescriptorNotification");
        getkISImageDescriptorNotificationSymbolLoc_ptr = v14[3];
        v2 = v14[3];
      }

      _Block_object_dispose(&v13, 8);
      if (!v2)
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ISImageDescriptorName getkISImageDescriptorNotification(void)"];
        [v4 handleFailureInFunction:v5 file:@"WFImage+Icons.m" lineNumber:28 description:{@"%s", dlerror(), v9, v10, v11, v12}];
        goto LABEL_20;
      }

      goto LABEL_15;
    case 0:
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v2 = getkISImageDescriptorTableUINameSymbolLoc_ptr;
      v16 = getkISImageDescriptorTableUINameSymbolLoc_ptr;
      if (!getkISImageDescriptorTableUINameSymbolLoc_ptr)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __getkISImageDescriptorTableUINameSymbolLoc_block_invoke;
        v12 = &unk_1E7B02C60;
        v3 = IconServicesLibrary();
        v14[3] = dlsym(v3, "kISImageDescriptorTableUIName");
        getkISImageDescriptorTableUINameSymbolLoc_ptr = v14[3];
        v2 = v14[3];
      }

      _Block_object_dispose(&v13, 8);
      if (!v2)
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ISImageDescriptorName getkISImageDescriptorTableUIName(void)"];
        [v4 handleFailureInFunction:v5 file:@"WFImage+Icons.m" lineNumber:27 description:{@"%s", dlerror(), v9, v10, v11, v12}];
LABEL_20:

        __break(1u);
        return;
      }

      goto LABEL_15;
  }

  v8 = a2;
}

void sub_1B1EB45F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getISImageDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getISImageDescriptorClass_softClass;
  v7 = getISImageDescriptorClass_softClass;
  if (!getISImageDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getISImageDescriptorClass_block_invoke;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getISImageDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1EB46E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFImageForIconAndDescriptor(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 arrayWithObjects:&v14 count:1];
  v7 = WFISImagesForIconAndDescriptors(v5, v6);

  v8 = [v7 firstObject];

  v9 = [v8 CGImage];
  [v8 scale];
  v10 = [WFImage imageWithCGImage:v9 scale:1 orientation:?];

  v11 = [v10 imageWithRenderingMode:1];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id WFISImagesForIconAndDescriptors(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 prepareImagesForImageDescriptors:v4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __WFISImagesForIconAndDescriptors_block_invoke;
  v8[3] = &unk_1E7B00D40;
  v9 = v3;
  v5 = v3;
  v6 = [v4 if_compactMap:v8];

  return v6;
}

void __getISImageDescriptorClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISImageDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISImageDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISImageDescriptorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFImage+Icons.m" lineNumber:26 description:{@"Unable to find class %s", "ISImageDescriptor"}];

    __break(1u);
  }
}

void *IconServicesLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __IconServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B00D08;
    v7 = 0;
    IconServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IconServicesLibraryCore_frameworkLibrary;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IconServicesLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFImage+Icons.m" lineNumber:23 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __IconServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IconServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getkISImageDescriptorTableUINameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorTableUIName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorTableUINameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkISImageDescriptorNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkISImageDescriptorHomeScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorHomeScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorHomeScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getISIconClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISIcon");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISIconClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFImage+Icons.m" lineNumber:24 description:{@"Unable to find class %s", "ISIcon"}];

    __break(1u);
  }
}

void sub_1B1EB507C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose((v10 - 96), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalendarUIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CalendarUIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __Block_byref_object_copy__5938(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1EB583C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkISImageDescriptorCustomDocumentSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorCustomDocumentSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorCustomDocumentSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkISImageDescriptorBadgedDocumentSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorBadgedDocumentSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorBadgedDocumentSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkISImageDescriptorCustomDocumentScalableSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorCustomDocumentScalableSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorCustomDocumentScalableSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkISImageDescriptorBadgedDocumentScalableSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorBadgedDocumentScalableSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorBadgedDocumentScalableSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id WFImageApplicationIconCache()
{
  if (WFImageApplicationIconCache_onceToken != -1)
  {
    dispatch_once(&WFImageApplicationIconCache_onceToken, &__block_literal_global_90);
  }

  v1 = WFImageApplicationIconCache_cache;

  return v1;
}

uint64_t __WFImageApplicationIconCache_block_invoke()
{
  WFImageApplicationIconCache_cache = objc_alloc_init(MEMORY[0x1E695DEE0]);

  return MEMORY[0x1EEE66BB8]();
}

id WFStaccatoTintColorForSectionIdentifier(void *a1)
{
  v19[12] = *MEMORY[0x1E69E9840];
  v18[0] = @"SilentMode";
  v17 = a1;
  v16 = [[WFColor alloc] initWithSystemColor:5];
  v19[0] = v16;
  v18[1] = @"Focus";
  v15 = [[WFColor alloc] initWithSystemColor:10];
  v19[1] = v15;
  v18[2] = @"Flashlight";
  v14 = [WFColor colorWithRGBAValue:1937084671];
  v19[2] = v14;
  v18[3] = @"Camera";
  v1 = [[WFColor alloc] initWithSystemColor:6];
  v19[3] = v1;
  v18[4] = @"Translate";
  v2 = [[WFColor alloc] initWithSystemColor:816760831];
  v19[4] = v2;
  v18[5] = @"VoiceMemos";
  v3 = [[WFColor alloc] initWithSystemColor:2];
  v19[5] = v3;
  v18[6] = @"Magnifier";
  v4 = [[WFColor alloc] initWithSystemColor:14];
  v19[6] = v4;
  v18[7] = @"MusicRecognition";
  v5 = [[WFColor alloc] initWithSystemColor:4];
  v19[7] = v5;
  v18[8] = @"Shortcuts";
  v6 = [WFColor colorWithRGBAValue:994537727];
  v19[8] = v6;
  v18[9] = @"Accessibility";
  v7 = [[WFColor alloc] initWithSystemColor:4];
  v19[9] = v7;
  v18[10] = @"Nothing";
  v8 = [[WFColor alloc] initWithWhite:0.0 alpha:0.0];
  v19[10] = v8;
  v18[11] = @"Controls";
  v9 = [[WFColor alloc] initWithRed:0.5018 green:0.5292 blue:0.5813 alpha:1.0];
  v19[11] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:12];

  v11 = [v10 objectForKeyedSubscript:v17];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id WFEncodableErrorDictionary(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = WFEncodableErrorObject(v8);
        v10 = [v1 objectForKeyedSubscript:v8];
        v11 = WFEncodableErrorObject(v10);

        if (v9)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          [v2 setObject:v11 forKeyedSubscript:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [v2 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id WFEncodableErrorObject(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (WFEncodableErrorObject_onceToken != -1)
  {
    dispatch_once(&WFEncodableErrorObject_onceToken, &__block_literal_global_6102);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = WFEncodableError(v1);
LABEL_5:
    v3 = v2;
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v1;
    v5 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v12 = WFEncodableErrorObject(v11);
          if (v12)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }

    v3 = [v5 copy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = WFEncodableErrorDictionary(v1);
      goto LABEL_5;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = WFEncodableErrorObject_encodableClasses;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v21 + 1) + 8 * j);
          if (objc_opt_isKindOfClass())
          {
            v3 = v1;

            goto LABEL_29;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v3 = 0;
  }

LABEL_29:

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

void __WFEncodableErrorObject_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];
  v8 = WFAllowedClassesForDecodingNSError();
  v9 = [v8 setByAddingObjectsFromSet:v7];

  v10 = WFEncodableErrorObject_encodableClasses;
  WFEncodableErrorObject_encodableClasses = v9;
}

id getLPLinkMetadataClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLPLinkMetadataClass_softClass;
  v7 = getLPLinkMetadataClass_softClass;
  if (!getLPLinkMetadataClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLPLinkMetadataClass_block_invoke;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getLPLinkMetadataClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1EB8100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1EB832C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLPImageClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPImage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLPImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPImageClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFItemProviderRequestMetadata.m" lineNumber:24 description:{@"Unable to find class %s", "LPImage"}];

    __break(1u);
  }
}

void LinkPresentationLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __LinkPresentationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B00DD0;
    v6 = 0;
    LinkPresentationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkPresentationLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFItemProviderRequestMetadata.m" lineNumber:21 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __LinkPresentationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getUIImageClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __UIKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7B00DE8;
    v9 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFItemProviderRequestMetadata.m" lineNumber:20 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIImageClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFItemProviderRequestMetadata.m" lineNumber:22 description:{@"Unable to find class %s", "UIImage"}];

LABEL_10:
    __break(1u);
  }

  getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getLPLinkMetadataClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPLinkMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLPLinkMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLPLinkMetadataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFItemProviderRequestMetadata.m" lineNumber:23 description:{@"Unable to find class %s", "LPLinkMetadata"}];

    __break(1u);
  }
}

void sub_1B1EBBF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLNFullyQualifiedActionIdentifierClass_block_invoke(uint64_t a1)
{
  LinkServicesLibrary_6889();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNFullyQualifiedActionIdentifier");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNFullyQualifiedActionIdentifierClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNFullyQualifiedActionIdentifierClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFWorkflowRunDescriptors.m" lineNumber:27 description:{@"Unable to find class %s", "LNFullyQualifiedActionIdentifier"}];

    __break(1u);
  }
}

void __getLNActionClass_block_invoke(uint64_t a1)
{
  LinkServicesLibrary_6889();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNActionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFWorkflowRunDescriptors.m" lineNumber:26 description:{@"Unable to find class %s", "LNAction"}];

    __break(1u);
  }
}

void __getLNActionMetadataClass_block_invoke(uint64_t a1)
{
  LinkServicesLibrary_6889();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNActionMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNActionMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNActionMetadataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFWorkflowRunDescriptors.m" lineNumber:28 description:{@"Unable to find class %s", "LNActionMetadata"}];

    __break(1u);
  }
}

void LinkServicesLibrary_6889()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!LinkServicesLibraryCore_frameworkLibrary_6894)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __LinkServicesLibraryCore_block_invoke_6895;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B00E58;
    v6 = 0;
    LinkServicesLibraryCore_frameworkLibrary_6894 = _sl_dlopen();
  }

  if (!LinkServicesLibraryCore_frameworkLibrary_6894)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkServicesLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFWorkflowRunDescriptors.m" lineNumber:25 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __LinkServicesLibraryCore_block_invoke_6895(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LinkServicesLibraryCore_frameworkLibrary_6894 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getAnalyticsSendEventLazySymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreAnalyticsLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B00EC0;
    v8 = 0;
    CoreAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreAnalyticsLibraryCore_frameworkLibrary;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreAnalyticsLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFLinkActionWorkflowRunnerClient.m" lineNumber:21 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "AnalyticsSendEventLazy");
  *(*(a1[4] + 8) + 24) = result;
  getAnalyticsSendEventLazySymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreAnalyticsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1EBE2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLLocationClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __CoreLocationLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7B00F28;
    v9 = 0;
    CoreLocationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFGetDirectionsContextualAction.m" lineNumber:17 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CLLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFGetDirectionsContextualAction.m" lineNumber:18 description:{@"Unable to find class %s", "CLLocation"}];

LABEL_10:
    __break(1u);
  }

  getCLLocationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1EBF70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1EC10DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(a10 + 16))();
  (*(v11 + 16))(v11);
  (*(v10 + 16))(v10);
  _Unwind_Resume(a1);
}

double WFWorkflowIconDrawerScaledSizeWithTargetSize(double result, double a2, double a3, double a4, double a5)
{
  if (result == 0.0)
  {
    result = a2 * (a3 / a4);
    if (a5 > 0.0)
    {
      return round(result * a5) / a5;
    }
  }

  return result;
}

void WFCTFontCopyCharacterSet(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getCTFontCopyCharacterSetSymbolLoc_ptr;
  v9 = getCTFontCopyCharacterSetSymbolLoc_ptr;
  if (!getCTFontCopyCharacterSetSymbolLoc_ptr)
  {
    v3 = CoreTextLibrary();
    v7[3] = dlsym(v3, "CTFontCopyCharacterSet");
    getCTFontCopyCharacterSetSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFCharacterSetRef WFCTFontCopyCharacterSet(CTFontRef)"];
    [v4 handleFailureInFunction:v5 file:@"WFWorkflowIconDrawer.m" lineNumber:30 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EC1314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getkCTFontAttributeName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkCTFontAttributeNameSymbolLoc_ptr;
  v8 = getkCTFontAttributeNameSymbolLoc_ptr;
  if (!getkCTFontAttributeNameSymbolLoc_ptr)
  {
    v1 = CoreTextLibrary();
    v6[3] = dlsym(v1, "kCTFontAttributeName");
    getkCTFontAttributeNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (v0)
  {
    v2 = *v0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCTFontAttributeName(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFWorkflowIconDrawer.m" lineNumber:35 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EC1470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WFCTFramesetterCreateWithAttributedString(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getCTFramesetterCreateWithAttributedStringSymbolLoc_ptr;
  v9 = getCTFramesetterCreateWithAttributedStringSymbolLoc_ptr;
  if (!getCTFramesetterCreateWithAttributedStringSymbolLoc_ptr)
  {
    v3 = CoreTextLibrary();
    v7[3] = dlsym(v3, "CTFramesetterCreateWithAttributedString");
    getCTFramesetterCreateWithAttributedStringSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CTFramesetterRef WFCTFramesetterCreateWithAttributedString(CFAttributedStringRef)"];
    [v4 handleFailureInFunction:v5 file:@"WFWorkflowIconDrawer.m" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EC15D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WFCTFramesetterSuggestFrameSizeWithConstraints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getCTFramesetterSuggestFrameSizeWithConstraintsSymbolLoc_ptr;
  v13 = getCTFramesetterSuggestFrameSizeWithConstraintsSymbolLoc_ptr;
  if (!getCTFramesetterSuggestFrameSizeWithConstraintsSymbolLoc_ptr)
  {
    v7 = CoreTextLibrary();
    v11[3] = dlsym(v7, "CTFramesetterSuggestFrameSizeWithConstraints");
    getCTFramesetterSuggestFrameSizeWithConstraintsSymbolLoc_ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v6)
  {
    (v6)(a1, a2, a3, 0, 0, 1.79769313e308, 1.79769313e308);
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGSize WFCTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef, CFRange, CFDictionaryRef, CGSize, CFRange * _Nullable)"}];
    [v8 handleFailureInFunction:v9 file:@"WFWorkflowIconDrawer.m" lineNumber:34 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EC176C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCTFramesetterSuggestFrameSizeWithConstraintsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFramesetterSuggestFrameSizeWithConstraints");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFramesetterSuggestFrameSizeWithConstraintsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreTextLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreTextLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreTextLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B00F88;
    v7 = 0;
    CoreTextLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreTextLibraryCore_frameworkLibrary;
  if (!CoreTextLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreTextLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFWorkflowIconDrawer.m" lineNumber:28 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __CoreTextLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreTextLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getCTFramesetterCreateWithAttributedStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFramesetterCreateWithAttributedString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFramesetterCreateWithAttributedStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCTFontAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTFontAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFontCopyCharacterSetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFontCopyCharacterSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFontCopyCharacterSetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B1EC3018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  (*(a16 + 16))();
  (*(a19 + 16))();
  (*(a27 + 16))();
  (*(a21 + 16))();
  _Unwind_Resume(a1);
}

void WFDrawGlyphForVectorIdentifier(void *a1, void *a2, void *a3, void *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  memset(&v33, 0, sizeof(v33));
  v18 = v15;
  v19 = a1;
  CGContextGetCTM(&v33, [v15 CGContext]);
  v20 = floor(sqrt(v33.c * v33.c + v33.a * v33.a));
  v21 = [v19 coreGlyphsCatalogs];

  v22 = [WFImage glyphNamed:v16 pointSize:6 symbolWeight:v21 scaleFactor:a8 inCatalogs:v20];

  if (v22)
  {
    v23 = [v22 tintedImageWithColor:v17];

    [v23 sizeInPoints];
    v26 = a7 / v24;
    if (a7 / v24 >= a8 / v25)
    {
      v26 = a8 / v25;
    }

    v27 = v24 * v26;
    v28 = v25 * v26;
    v39.origin.x = a5;
    v39.origin.y = a6;
    v39.size.width = a7;
    v39.size.height = a8;
    MidX = CGRectGetMidX(v39);
    v40.origin.x = a5;
    v40.origin.y = a6;
    v40.size.width = a7;
    v40.size.height = a8;
    MidY = CGRectGetMidY(v40);
    v31 = v20;
    [v23 drawInContext:v15 inRect:round((MidX - v27 * 0.5) * v31) / v31, round((MidY - v28 * 0.5) * v31) / v31, round(v27 * v31) / v31, round(v28 * v31) / v31];
  }

  else
  {
    v23 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v35 = "WFDrawGlyphForVectorIdentifier";
      v36 = 2114;
      v37 = v16;
      _os_log_impl(&dword_1B1DE3000, v23, OS_LOG_TYPE_FAULT, "%s vector glyph was unexpectedly nil with identifier: %{public}@", buf, 0x16u);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void *__getkCTForegroundColorAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTForegroundColorAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTForegroundColorAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void WFCTFramesetterCreateFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = getCTFramesetterCreateFrameSymbolLoc_ptr;
  v15 = getCTFramesetterCreateFrameSymbolLoc_ptr;
  if (!getCTFramesetterCreateFrameSymbolLoc_ptr)
  {
    v9 = CoreTextLibrary();
    v13[3] = dlsym(v9, "CTFramesetterCreateFrame");
    getCTFramesetterCreateFrameSymbolLoc_ptr = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (v8)
  {
    v8(a1, a2, a3, a4, 0);
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CTFrameRef WFCTFramesetterCreateFrame(CTFramesetterRef, CFRange, CGPathRef, CFDictionaryRef)"}];
    [v10 handleFailureInFunction:v11 file:@"WFWorkflowIconDrawer.m" lineNumber:32 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EC35F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WFCTFrameDraw(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getCTFrameDrawSymbolLoc_ptr;
  v11 = getCTFrameDrawSymbolLoc_ptr;
  if (!getCTFrameDrawSymbolLoc_ptr)
  {
    v5 = CoreTextLibrary();
    v9[3] = dlsym(v5, "CTFrameDraw");
    getCTFrameDrawSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFCTFrameDraw(CTFrameRef, CGContextRef)"}];
    [v6 handleFailureInFunction:v7 file:@"WFWorkflowIconDrawer.m" lineNumber:31 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EC3764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCTFrameDrawSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFrameDraw");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFrameDrawSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCTFramesetterCreateFrameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "CTFramesetterCreateFrame");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCTFramesetterCreateFrameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id WFStaticContextualActionDefinitionsForSurface(unint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  if (a1 == 2)
  {
    v4 = 0;
    goto LABEL_34;
  }

  if (a1 != 3)
  {
    v2 = objc_opt_new();
    if (a1 > 1)
    {
      if (a1 != 9)
      {
LABEL_32:
        v3 = [(WFTakeScreenshotContextualAction *)v2 copy];
        goto LABEL_33;
      }

      v45 = [[WFToggleSettingContextualAction alloc] initWithSetting:1 operation:0];
      v46 = [[WFToggleSettingContextualAction alloc] initWithSetting:2 operation:0];
      v44 = objc_opt_new();
      v68 = v45;
      v69 = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:2];
      [(WFContextualAction *)v44 addObjectsFromArray:v47];

      v48 = +[WFDevice currentDevice];
      if ([v48 hasCapability:@"AlwaysOnDisplay"])
      {
        v49 = [[WFToggleSettingContextualAction alloc] initWithSetting:3 operation:0 unconfigured:1];
        [(WFContextualAction *)v44 addObject:v49];
      }

      if (([v48 hasCapability:@"HardwareRingerSwitch"] & 1) == 0)
      {
        v50 = [[WFToggleSettingContextualAction alloc] initWithSetting:9 operation:0];
        [(WFContextualAction *)v44 addObject:v50];
      }

      [(WFTakeScreenshotContextualAction *)v2 addObjectsFromArray:v44];
    }

    else
    {
      v5 = a1 != 1;
      if (a1 == 1)
      {
        v6 = @"is.workflow.actions.image.rotate.right";
      }

      else
      {
        v6 = @"APPEXTENSION-com.apple.finder.RotateQuickAction";
      }

      if (a1 == 1)
      {
        v7 = @"is.workflow.actions.image.rotate.left";
      }

      else
      {
        v7 = @"APPEXTENSION-com.apple.finder.RotateQuickAction";
      }

      v8 = WFRotateImageContextualAction(v7, 1, v5);
      v66[0] = v8;
      v9 = WFRotateImageContextualAction(v6, 0, v5);
      v66[1] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
      [(WFTakeScreenshotContextualAction *)v2 addObjectsFromArray:v10];

      if (a1 == 1)
      {
        v11 = @"pdf.doc";
      }

      else
      {
        v11 = @"doc";
      }

      if (a1 == 1)
      {
        v12 = @"is.workflow.actions.makepdf";
      }

      else
      {
        v12 = @"APPEXTENSION-com.apple.finder.CreatePDFQuickAction";
      }

      v13 = *MEMORY[0x1E6982E30];
      v61 = *MEMORY[0x1E6982F10];
      v14 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6982E30], 0}];
      v15 = MEMORY[0x1E696AE18];
      v16 = [v61 identifier];
      v17 = [v13 identifier];
      v18 = [v15 predicateWithFormat:@"SUBQUERY (SELF, $file, $file.type.identifier UTI-CONFORMS-TO %@).@count > 1 OR SUBQUERY (SELF, $file, $file.type.identifier UTI-CONFORMS-TO %@).@count >= 1", v16, v17];

      v19 = [WFContextualActionFilteringBehavior filteringWithMatchingTypes:v14 predicate:v18];
      v20 = WFLocalizedString(@"Create PDF");
      v21 = [WFContextualAction alloc];
      v22 = [WFContextualActionIcon iconWithSystemName:v11];
      LOBYTE(v58) = 0;
      v23 = [(WFContextualAction *)v21 initWithIdentifier:v12 wfActionIdentifier:@"is.workflow.actions.makepdf" type:0 correspondingSystemActionType:5 associatedAppBundleIdentifier:@"com.apple.DocumentsApp" resultFileOperation:1 alternate:v58 filteringBehavior:v19 parameters:MEMORY[0x1E695E0F0] displayString:v20 title:v20 subtitle:0 icon:v22];

      [(WFTakeScreenshotContextualAction *)v2 addObject:v23];
      v24 = objc_alloc_init(WFFinderConvertImageContextualAction);
      [(WFTakeScreenshotContextualAction *)v2 addObject:v24];

      v25 = _os_feature_enabled_impl();
      v62 = 0;
      v63 = &v62;
      v64 = 0x2050000000;
      v26 = getVKCRemoveBackgroundRequestHandlerClass_softClass;
      v65 = getVKCRemoveBackgroundRequestHandlerClass_softClass;
      if (!getVKCRemoveBackgroundRequestHandlerClass_softClass)
      {
        v68 = MEMORY[0x1E69E9820];
        v69 = 3221225472;
        v70 = __getVKCRemoveBackgroundRequestHandlerClass_block_invoke;
        v71 = &unk_1E7B02C60;
        v72 = &v62;
        __getVKCRemoveBackgroundRequestHandlerClass_block_invoke(&v68);
        v26 = v63[3];
      }

      v27 = v26;
      _Block_object_dispose(&v62, 8);
      if ((v25 & [v26 isSupported]) == 1)
      {
        v28 = WFLocalizedString(@"Remove Background");
        v29 = [WFContextualAction alloc];
        v30 = [MEMORY[0x1E695DFD8] setWithObject:v13];
        v31 = [WFContextualActionFilteringBehavior filteringWithMatchingTypes:v30 predicate:0];
        v32 = [WFContextualActionIcon iconWithSystemName:@"circle.rectangle.filled.pattern.diagonalline"];
        LOBYTE(v59) = 0;
        v33 = [(WFContextualAction *)v29 initWithIdentifier:@"is.workflow.actions.image.removebackground" wfActionIdentifier:@"is.workflow.actions.image.removebackground" type:0 correspondingSystemActionType:9 associatedAppBundleIdentifier:@"com.apple.mobileslideshow" resultFileOperation:1 alternate:v59 filteringBehavior:v31 parameters:0 displayString:v28 title:v28 subtitle:0 icon:v32];

        [(WFTakeScreenshotContextualAction *)v2 addObject:v33];
      }

      if (a1 == 1)
      {
        v51 = [MEMORY[0x1E695DFD8] setWithObject:v61];
        v52 = [WFContextualActionFilteringBehavior filteringWithMatchingTypes:v51 predicate:0];

        v53 = WFLocalizedString(@"Optimize File Size");
        v54 = [WFContextualAction alloc];
        v55 = [WFContextualActionIcon iconWithSystemName:@"doc.richtext"];
        LOBYTE(v59) = 0;
        v44 = [(WFContextualAction *)v54 initWithIdentifier:@"is.workflow.actions.compresspdf" wfActionIdentifier:@"is.workflow.actions.compresspdf" type:0 correspondingSystemActionType:0 associatedAppBundleIdentifier:@"com.apple.DocumentsApp" resultFileOperation:1 alternate:v59 filteringBehavior:v52 parameters:0 displayString:v53 title:v53 subtitle:0 icon:v55];

        [(WFTakeScreenshotContextualAction *)v2 addObject:v44];
      }

      else
      {
        v34 = WFLocalizedString(@"Trim");
        v35 = WFLocalizedString(@"Markup");
        v36 = [WFContextualAction alloc];
        v37 = +[WFContextualActionFilteringBehavior matchAllFiles];
        v38 = [WFContextualActionIcon iconWithSystemName:@"timeline.selection"];
        LOBYTE(v59) = 0;
        v39 = [(WFContextualAction *)v36 initWithIdentifier:@"APPEXTENSION-com.apple.finder.TrimQuickAction" wfActionIdentifier:0 type:0 correspondingSystemActionType:4 associatedAppBundleIdentifier:@"com.apple.finder" resultFileOperation:0 alternate:v59 filteringBehavior:v37 parameters:0 displayString:v34 title:v34 subtitle:0 icon:v38];

        v40 = [WFContextualAction alloc];
        v41 = +[WFContextualActionFilteringBehavior matchAllFiles];
        v42 = [WFContextualActionIcon iconWithSystemName:@"pencil.tip.crop.circle"];
        LOBYTE(v60) = 0;
        v43 = [(WFContextualAction *)v40 initWithIdentifier:@"APPEXTENSION-com.apple.finder.MarkupQuickAction" wfActionIdentifier:0 type:0 correspondingSystemActionType:3 associatedAppBundleIdentifier:@"com.apple.finder" resultFileOperation:0 alternate:v60 filteringBehavior:v41 parameters:0 displayString:v35 title:v35 subtitle:0 icon:v42];

        v68 = v39;
        v69 = v43;
        v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:2];

        [(WFTakeScreenshotContextualAction *)v2 addObjectsFromArray:v44];
      }
    }

    goto LABEL_32;
  }

  v2 = objc_alloc_init(WFTakeScreenshotContextualAction);
  v67 = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
LABEL_33:
  v4 = v3;

LABEL_34:
  v56 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1B1EC4A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

WFContextualAction *WFRotateImageContextualAction(void *a1, int a2, char a3)
{
  v40[9] = *MEMORY[0x1E69E9840];
  v38 = a1;
  if (!v38)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"WFContextualAction * _Nonnull WFRotateImageContextualAction(NSString * _Nonnull __strong, BOOL, BOOL)"}];
    [v33 handleFailureInFunction:v34 file:@"WFStaticContextualActionDefinitions.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v5 = MEMORY[0x1E695DFD8];
  v6 = *MEMORY[0x1E6982E58];
  v40[0] = *MEMORY[0x1E6982F28];
  v40[1] = v6;
  v40[2] = *MEMORY[0x1E6983008];
  v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.adobe.photoshop-image"];
  v8 = *MEMORY[0x1E6982E00];
  v40[3] = v7;
  v40[4] = v8;
  v9 = *MEMORY[0x1E6982EC8];
  v40[5] = *MEMORY[0x1E6982F80];
  v40[6] = v9;
  v10 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.m4v-video"];
  v40[7] = v10;
  v11 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"public.3gpp"];
  v40[8] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:9];
  v13 = [v5 setWithArray:v12];
  v37 = v13;

  if (a2)
  {
    v14 = @"Left";
  }

  else
  {
    v14 = @"Right";
  }

  if (a2)
  {
    v15 = @"Rotate Left";
  }

  else
  {
    v15 = @"Rotate Right";
  }

  if (a2)
  {
    v16 = @"rotate.left";
  }

  else
  {
    v16 = @"rotate.right";
  }

  if (a2)
  {
    v17 = 270;
  }

  else
  {
    v17 = 90;
  }

  v18 = 1;
  if (!a2)
  {
    v18 = 2;
  }

  v36 = v18;
  v19 = WFLocalizedString(v14);
  v20 = WFLocalizedString(v15);
  v21 = a3 & ~a2;
  v22 = [WFContextualActionFilteringBehavior filteringWithMatchingTypes:v13 predicate:0];
  v23 = [WFContextualAction alloc];
  v24 = [WFContextualActionParameter alloc];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
  v26 = [(WFContextualActionParameter *)v24 initWithType:@"WFNumberContentItem" displayString:v19 wfParameterKey:@"WFImageRotateAmount" wfSerializedRepresentation:v25];
  v39 = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v28 = WFLocalizedStringWithKey(@"Rotate Image (Contextual Action)", @"Rotate Image");
  v29 = [WFContextualActionIcon iconWithSystemName:v16];
  LOBYTE(v35) = v21;
  v30 = [(WFContextualAction *)v23 initWithIdentifier:v38 wfActionIdentifier:@"is.workflow.actions.image.rotate" type:0 correspondingSystemActionType:v36 associatedAppBundleIdentifier:@"com.apple.mobileslideshow" resultFileOperation:0 alternate:v35 filteringBehavior:v22 parameters:v27 displayString:v20 title:v28 subtitle:v20 icon:v29];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

Class __getVKCRemoveBackgroundRequestHandlerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!VisionKitCoreLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __VisionKitCoreLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7B00FA0;
    v9 = 0;
    VisionKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VisionKitCoreLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *VisionKitCoreLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFStaticContextualActionDefinitions.m" lineNumber:24 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("VKCRemoveBackgroundRequestHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVKCRemoveBackgroundRequestHandlerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFStaticContextualActionDefinitions.m" lineNumber:25 description:{@"Unable to find class %s", "VKCRemoveBackgroundRequestHandler"}];

LABEL_10:
    __break(1u);
  }

  getVKCRemoveBackgroundRequestHandlerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __VisionKitCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  VisionKitCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void WFBiomeLibrary_8552()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getBiomeLibrarySymbolLoc_ptr_8553;
  v9 = getBiomeLibrarySymbolLoc_ptr_8553;
  if (!getBiomeLibrarySymbolLoc_ptr_8553)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getBiomeLibrarySymbolLoc_block_invoke_8554;
    v5[3] = &unk_1E7B02C60;
    v5[4] = &v6;
    __getBiomeLibrarySymbolLoc_block_invoke_8554(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v1 = v0();

    v2 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<BMRootLibrary> WFBiomeLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFToggleAccessibilityContextualAction.m" lineNumber:16 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B1EC8640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBiomeLibrarySymbolLoc_block_invoke_8554(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_8556)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __BiomeLibraryLibraryCore_block_invoke_8557;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B00FE8;
    v8 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary_8556 = _sl_dlopen();
  }

  v2 = BiomeLibraryLibraryCore_frameworkLibrary_8556;
  if (!BiomeLibraryLibraryCore_frameworkLibrary_8556)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeLibraryLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFToggleAccessibilityContextualAction.m" lineNumber:15 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "BiomeLibrary");
  *(*(a1[4] + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr_8553 = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke_8557(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary_8556 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

WFToggleAccessibilityContextualAction *__WFToggleAccessibilityContextualActions_block_invoke(uint64_t a1, void *a2)
{
  v2 = -[WFToggleAccessibilityContextualAction initWithSetting:]([WFToggleAccessibilityContextualAction alloc], "initWithSetting:", [a2 unsignedIntegerValue]);

  return v2;
}

id WFLocalizedStringWithKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = WFCurrentBundle();
  v6 = [v5 localizedStringForKey:v4 value:v3 table:0];

  return v6;
}

void sub_1B1EC9714(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B1ECAB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLLocationClass_block_invoke_9046(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_9047)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __CoreLocationLibraryCore_block_invoke_9048;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7B01208;
    v9 = 0;
    CoreLocationLibraryCore_frameworkLibrary_9047 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_9047)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFRequestRideContextualAction.m" lineNumber:17 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CLLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFRequestRideContextualAction.m" lineNumber:18 description:{@"Unable to find class %s", "CLLocation"}];

LABEL_10:
    __break(1u);
  }

  getCLLocationClass_softClass_9045 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_9048(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_9047 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UIFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id getFPSandboxingURLWrapperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFPSandboxingURLWrapperClass_softClass;
  v7 = getFPSandboxingURLWrapperClass_softClass;
  if (!getFPSandboxingURLWrapperClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFPSandboxingURLWrapperClass_block_invoke;
    v3[3] = &unk_1E7B02C60;
    v3[4] = &v4;
    __getFPSandboxingURLWrapperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1ECC928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFPSandboxingURLWrapperClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __FileProviderLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7B012A8;
    v9 = 0;
    FileProviderLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FileProviderLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFContextualActionFile.m" lineNumber:19 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("FPSandboxingURLWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFPSandboxingURLWrapperClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFContextualActionFile.m" lineNumber:20 description:{@"Unable to find class %s", "FPSandboxingURLWrapper"}];

LABEL_10:
    __break(1u);
  }

  getFPSandboxingURLWrapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __FileProviderLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FileProviderLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id WFUIImageWithAnimatedGIFDataAndOptions(void *a1, double a2)
{
  v3 = a1;
  if (!v3)
  {
    v41 = 0;
    goto LABEL_44;
  }

  v46 = [MEMORY[0x1E695DF90] dictionary];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v4 = getkCGImageSourceShouldCacheSymbolLoc_ptr;
  v50 = getkCGImageSourceShouldCacheSymbolLoc_ptr;
  if (!getkCGImageSourceShouldCacheSymbolLoc_ptr)
  {
    v5 = ImageIOLibrary_9720();
    v48[3] = dlsym(v5, "kCGImageSourceShouldCache");
    getkCGImageSourceShouldCacheSymbolLoc_ptr = v48[3];
    v4 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v4)
  {
    goto LABEL_53;
  }

  [v46 setObject:MEMORY[0x1E695E118] forKey:*v4];
  v6 = [*MEMORY[0x1E6982DE8] identifier];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v7 = getkCGImageSourceTypeIdentifierHintSymbolLoc_ptr;
  v50 = getkCGImageSourceTypeIdentifierHintSymbolLoc_ptr;
  if (!getkCGImageSourceTypeIdentifierHintSymbolLoc_ptr)
  {
    v8 = ImageIOLibrary_9720();
    v48[3] = dlsym(v8, "kCGImageSourceTypeIdentifierHint");
    getkCGImageSourceTypeIdentifierHintSymbolLoc_ptr = v48[3];
    v7 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v7)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImageSourceTypeIdentifierHint(void)"];
    [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:38 description:{@"%s", dlerror()}];
    goto LABEL_52;
  }

  [v46 setObject:v6 forKey:*v7];

  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v9 = getCGImageSourceCreateWithDataSymbolLoc_ptr_9725;
  v50 = getCGImageSourceCreateWithDataSymbolLoc_ptr_9725;
  if (!getCGImageSourceCreateWithDataSymbolLoc_ptr_9725)
  {
    v10 = ImageIOLibrary_9720();
    v48[3] = dlsym(v10, "CGImageSourceCreateWithData");
    getCGImageSourceCreateWithDataSymbolLoc_ptr_9725 = v48[3];
    v9 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v9)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageSourceRef  _Nullable soft_CGImageSourceCreateWithData(CFDataRef _Nonnull, CFDictionaryRef _Nullable)"}];
    [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:27 description:{@"%s", dlerror()}];
    goto LABEL_52;
  }

  v11 = v9(v3, v46);
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v12 = getCGImageSourceGetCountSymbolLoc_ptr_9729;
  v50 = getCGImageSourceGetCountSymbolLoc_ptr_9729;
  if (!getCGImageSourceGetCountSymbolLoc_ptr_9729)
  {
    v13 = ImageIOLibrary_9720();
    v48[3] = dlsym(v13, "CGImageSourceGetCount");
    getCGImageSourceGetCountSymbolLoc_ptr_9729 = v48[3];
    v12 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v12)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t soft_CGImageSourceGetCount(CGImageSourceRef _Nonnull)"];
    [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:31 description:{@"%s", dlerror()}];
    while (1)
    {
LABEL_52:

      __break(1u);
LABEL_53:
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImageSourceShouldCache(void)"];
      [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:37 description:{@"%s", dlerror()}];
    }
  }

  v14 = v12(v11);
  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:v14];
  if (!v14)
  {
    CFRelease(v11);
    v17 = 0.0;
    goto LABEL_42;
  }

  v45 = v3;
  v16 = 0;
  v17 = 0.0;
  do
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v18 = getCGImageSourceCreateImageAtIndexSymbolLoc_ptr_9733;
    v50 = getCGImageSourceCreateImageAtIndexSymbolLoc_ptr_9733;
    if (!getCGImageSourceCreateImageAtIndexSymbolLoc_ptr_9733)
    {
      v19 = ImageIOLibrary_9720();
      v48[3] = dlsym(v19, "CGImageSourceCreateImageAtIndex");
      getCGImageSourceCreateImageAtIndexSymbolLoc_ptr_9733 = v48[3];
      v18 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v18)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageRef  _Nullable soft_CGImageSourceCreateImageAtIndex(CGImageSourceRef _Nonnull, size_t, CFDictionaryRef _Nullable)"}];
      [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:28 description:{@"%s", dlerror()}];
      goto LABEL_52;
    }

    v20 = v18(v11, v16, v46);
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v21 = getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr_9737;
    v50 = getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr_9737;
    if (!getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr_9737)
    {
      v22 = ImageIOLibrary_9720();
      v48[3] = dlsym(v22, "CGImageSourceCopyPropertiesAtIndex");
      getCGImageSourceCopyPropertiesAtIndexSymbolLoc_ptr_9737 = v48[3];
      v21 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v21)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFDictionaryRef  _Nullable soft_CGImageSourceCopyPropertiesAtIndex(CGImageSourceRef _Nonnull, size_t, CFDictionaryRef _Nullable)"}];
      [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:30 description:{@"%s", dlerror()}];
      goto LABEL_52;
    }

    v23 = v21(v11, v16, 0);
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v24 = getkCGImagePropertyGIFDictionarySymbolLoc_ptr;
    v50 = getkCGImagePropertyGIFDictionarySymbolLoc_ptr;
    if (!getkCGImagePropertyGIFDictionarySymbolLoc_ptr)
    {
      v25 = ImageIOLibrary_9720();
      v48[3] = dlsym(v25, "kCGImagePropertyGIFDictionary");
      getkCGImagePropertyGIFDictionarySymbolLoc_ptr = v48[3];
      v24 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v24)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImagePropertyGIFDictionary(void)"];
      [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:36 description:{@"%s", dlerror()}];
      goto LABEL_52;
    }

    v26 = [v23 objectForKey:*v24];
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v27 = getkCGImagePropertyGIFDelayTimeSymbolLoc_ptr;
    v50 = getkCGImagePropertyGIFDelayTimeSymbolLoc_ptr;
    if (!getkCGImagePropertyGIFDelayTimeSymbolLoc_ptr)
    {
      v28 = ImageIOLibrary_9720();
      v48[3] = dlsym(v28, "kCGImagePropertyGIFDelayTime");
      getkCGImagePropertyGIFDelayTimeSymbolLoc_ptr = v48[3];
      v27 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v27)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImagePropertyGIFDelayTime(void)"];
      [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:35 description:{@"%s", dlerror()}];
      goto LABEL_52;
    }

    v29 = [v26 objectForKey:*v27];
    [v29 doubleValue];
    v31 = v30;

    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v32 = getkCGImagePropertyOrientationSymbolLoc_ptr_9743;
    v50 = getkCGImagePropertyOrientationSymbolLoc_ptr_9743;
    if (!getkCGImagePropertyOrientationSymbolLoc_ptr_9743)
    {
      v33 = ImageIOLibrary_9720();
      v48[3] = dlsym(v33, "kCGImagePropertyOrientation");
      getkCGImagePropertyOrientationSymbolLoc_ptr_9743 = v48[3];
      v32 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v32)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCGImagePropertyOrientation(void)"];
      [v43 handleFailureInFunction:v44 file:@"WFImageHelpers.m" lineNumber:32 description:{@"%s", dlerror()}];
      goto LABEL_52;
    }

    v34 = [v23 objectForKeyedSubscript:*v32];
    v35 = v34;
    if (v34)
    {
      v36 = [v34 integerValue] - 2;
    }

    else
    {
      v36 = -1;
    }

    v37 = objc_alloc(getUIImageClass_9747());
    if (v36 > 6)
    {
      v38 = 0;
    }

    else
    {
      v38 = qword_1B1F36948[v36];
    }

    v17 = v17 + v31;
    v39 = [v37 initWithCGImage:v20 scale:v38 orientation:a2];
    [v15 addObject:v39];

    CGImageRelease(v20);
    ++v16;
  }

  while (v14 != v16);
  CFRelease(v11);
  v3 = v45;
  if (v14 == 1)
  {
    v40 = [v15 firstObject];
    goto LABEL_43;
  }

LABEL_42:
  v40 = [(objc_class *)getUIImageClass_9747() animatedImageWithImages:v15 duration:v17];
LABEL_43:
  v41 = v40;

LABEL_44:

  return v41;
}