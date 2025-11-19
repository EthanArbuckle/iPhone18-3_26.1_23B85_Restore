uint64_t sub_26A7D4354()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 176);

  swift_beginAccess();
  sub_26A4EF6C0(v1, v2, v6 & 1);

  swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + 16);
  sub_26A655B5C();
  *(v4 + 16) = v12;
  swift_endAccess();
  swift_beginAccess();
  sub_26A7D4C50(v5, v3);
  sub_26A4DBD10(v3, &qword_2803B8308);
  swift_endAccess();
  type metadata accessor for DynamicFormattedTextView.TextCache();
  OUTLINED_FUNCTION_1_100();
  sub_26A7D5640(v7, v8, v9);
  OUTLINED_FUNCTION_10_6();
  sub_26A84EB88();
  sub_26A84EBC8();

  sub_26A4EC448(v1, v2, v6 & 1);

  OUTLINED_FUNCTION_2_9();

  return v10();
}

uint64_t sub_26A7D4650(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for LoadableText.Source(0);
  MEMORY[0x28223BE20](v3);
  sub_26A852248();
  MEMORY[0x26D663B00](0xD00000000000002DLL, 0x800000026A892D20);
  sub_26A7D5528();
  v4 = sub_26A8517F8();
  MEMORY[0x26D663B00](v4);

  MEMORY[0x26D663B00](0x203A6874697720, 0xE700000000000000);
  v5 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC088);
  v6 = sub_26A8517F8();
  MEMORY[0x26D663B00](v6);

  return 0;
}

uint64_t sub_26A7D47A4()
{

  return v0;
}

uint64_t sub_26A7D47D4()
{
  sub_26A7D47A4();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_26A7D4844(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_26A7D4884(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A7D48F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DynamicFormattedTextView.TextCache();
  result = sub_26A84EB88();
  *a1 = result;
  return result;
}

uint64_t sub_26A7D4968@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 40);
  if (v2 >> 8 > 0xFE)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 24);
    v4 = *(result + 32);
    v5 = *(result + 8);
    v6 = *(result + 16);
    v7 = *result;
    *a2 = v7;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v3;
    *(a2 + 32) = v4;
    *(a2 + 40) = v2;
    return sub_26A5064E8(v7, v5, v6, v3, v4, v2, SBYTE1(v2));
  }

  return result;
}

uint64_t sub_26A7D49A0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    v4 = result;
    sub_26A4EF6C0(result, a2, a3 & 1);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26A7D4A28()
{
  OUTLINED_FUNCTION_31_3();
  sub_26A850F88();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  v1 = OUTLINED_FUNCTION_5_21();
  v2(v1);
  return sub_26A84F6A8();
}

uint64_t sub_26A7D4AD4()
{
  v3 = OUTLINED_FUNCTION_31_3();
  v4 = type metadata accessor for LoadableText.Source(v3);
  OUTLINED_FUNCTION_79(v4);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26A68B714;

  return sub_26A7D4000(v0, v7, v8, v9, v1 + v6);
}

uint64_t sub_26A7D4BC4()
{
  v1 = *(type metadata accessor for LoadableText.Source(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26A7D4650(v0 + v2, v3);
}

uint64_t sub_26A7D4C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = type metadata accessor for LoadableText.Source.URLImage(0);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3930);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for LoadableText.Source(0);
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v39 = &v33 - v13;
  MEMORY[0x28223BE20](v14);
  v34 = v2;
  v15 = *v2;
  sub_26A8526B8();
  v44 = a1;
  sub_26A538DC4();
  v16 = sub_26A8526F8();
  v17 = -1 << *(v15 + 32);
  v18 = v16 & ~v17;
  v43 = v15 + 56;
  if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
LABEL_14:
    v28 = 1;
    v29 = v35;
    return __swift_storeEnumTagSinglePayload(v29, v28, 1, v9);
  }

  v41 = ~v17;
  v42 = *(v42 + 72);
  v36 = v9;
  v38 = v15;
  while (1)
  {
    v40 = v42 * v18;
    sub_26A7D5528();
    v19 = &v8[*(v6 + 48)];
    sub_26A7D5528();
    sub_26A7D5528();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_26A7D5528();
    v20 = v11[1];
    v51[0] = *v11;
    v51[1] = v20;
    v52[0] = v11[2];
    *(v52 + 9) = *(v11 + 41);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A7D5AD4();
      sub_26A5393B4(v51);
      goto LABEL_10;
    }

    v21 = *(v19 + 1);
    v49[0] = *v19;
    v49[1] = v21;
    v23 = *v19;
    v22 = *(v19 + 1);
    v50[0] = *(v19 + 2);
    *(v50 + 9) = *(v19 + 41);
    v24 = v11[1];
    v47[0] = *v11;
    v47[1] = v24;
    v48[0] = v11[2];
    *(v48 + 9) = *(v11 + 41);
    v45[0] = v23;
    v45[1] = v22;
    v46[0] = *(v19 + 2);
    *(v46 + 9) = *(v19 + 41);
    v25 = sub_26A538794(v47, v45);
    sub_26A7D5AD4();
    sub_26A5393B4(v49);
    sub_26A5393B4(v51);
    if (v25)
    {
      goto LABEL_15;
    }

    sub_26A7D5AD4();
LABEL_13:
    v18 = (v18 + 1) & v41;
    if (((*(v43 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_26A7D5528();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A7D5AD4();
    sub_26A7D5AD4();
LABEL_10:
    sub_26A4DBD10(v8, &unk_2803B3930);
    goto LABEL_13;
  }

  sub_26A7D5A60();
  sub_26A538054();
  v27 = v26;
  sub_26A7D5AD4();
  sub_26A7D5AD4();
  sub_26A7D5AD4();
  if ((v27 & 1) == 0)
  {
    sub_26A7D5AD4();
    v9 = v36;
    goto LABEL_13;
  }

LABEL_15:
  sub_26A7D5AD4();
  v30 = v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v51[0] = *v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26A6BC35C();
  }

  v29 = v35;
  sub_26A7D5A60();
  sub_26A7D5204(v18);
  v28 = 0;
  *v30 = *&v51[0];
  v9 = v36;
  return __swift_storeEnumTagSinglePayload(v29, v28, 1, v9);
}

void sub_26A7D5204(int64_t a1)
{
  v25 = type metadata accessor for LoadableText.Source(0);
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = *v1;
  v5 = *v1 + 56;
  v6 = -1 << *(*v1 + 32);
  v7 = (a1 + 1) & ~v6;
  if (((1 << v7) & *(v5 + 8 * (v7 >> 6))) != 0)
  {
    v8 = ~v6;

    v9 = sub_26A852138();
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) != 0)
    {
      v10 = (v9 + 1) & v8;
      v11 = *(v3 + 72);
      while (1)
      {
        v12 = v11 * v7;
        sub_26A7D5528();
        sub_26A8526B8();
        sub_26A538DC4();
        v13 = sub_26A8526F8();
        sub_26A7D5AD4();
        v14 = v13 & v8;
        if (a1 >= v10)
        {
          if (v14 < v10 || a1 < v14)
          {
            goto LABEL_24;
          }
        }

        else if (v14 < v10 && a1 < v14)
        {
          goto LABEL_24;
        }

        v17 = *(v4 + 48);
        v18 = v11 * a1;
        v19 = v17 + v11 * a1;
        v20 = v17 + v12 + v11;
        if (v11 * a1 < v12 || v19 >= v20)
        {
          break;
        }

        a1 = v7;
        if (v18 != v12)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v7 = (v7 + 1) & v8;
        if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_23:
      a1 = v7;
      goto LABEL_24;
    }

LABEL_25:

    *(v5 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v5 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v4 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v24;
    ++*(v4 + 36);
  }
}

uint64_t sub_26A7D549C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26A7D49A0(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t type metadata accessor for DynamicFormattedTextView()
{
  result = qword_28157E1A8;
  if (!qword_28157E1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A7D5528()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(v0, v1);
  return v0;
}

unint64_t sub_26A7D5580()
{
  result = qword_2803B8328;
  if (!qword_2803B8328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8318);
    sub_26A7D5640(&qword_2803ABCA0, 255, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8328);
  }

  return result;
}

uint64_t sub_26A7D5640(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_10_6();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26A7D56AC()
{
  sub_26A7D57F8();
  if (v0 <= 0x3F)
  {
    sub_26A7D5888(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_26A5E8F44(319, &qword_2803AB0C8);
      if (v2 <= 0x3F)
      {
        sub_26A7D5888(319, &qword_2803B28A0, MEMORY[0x277CE0A00]);
        if (v3 <= 0x3F)
        {
          sub_26A67A8EC();
          if (v4 <= 0x3F)
          {
            sub_26A5E8F44(319, &qword_2803AB788);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26A7D57F8()
{
  if (!qword_2803B8330)
  {
    type metadata accessor for DynamicFormattedTextView.TextCache();
    sub_26A7D5640(&qword_2803B8310, v0, type metadata accessor for DynamicFormattedTextView.TextCache);
    v1 = sub_26A84F288();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B8330);
    }
  }
}

void sub_26A7D5888(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_10_6();
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26A7D58E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 42))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 41);
      if (v3 <= 5)
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

uint64_t sub_26A7D5924(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

unint64_t sub_26A7D59A8()
{
  result = qword_2803B8340;
  if (!qword_2803B8340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8338);
    sub_26A54FF6C(&qword_2803B8348, &qword_2803B8350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8340);
  }

  return result;
}

uint64_t sub_26A7D5A60()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26A7D5AD4()
{
  v1 = OUTLINED_FUNCTION_31_3();
  v2(v1);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_26A7D5B40(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_31_3();
  v4 = type metadata accessor for DynamicFormattedTextView();
  OUTLINED_FUNCTION_79(v4);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(v2, v6);
}

uint64_t sub_26A7D5BBC@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t objectdestroy_53Tm()
{
  v1 = type metadata accessor for DynamicFormattedTextView();
  OUTLINED_FUNCTION_33_10();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_26A4EC448(*(v3 + 8), *(v3 + 16), *(v3 + 24));

  if (*(v3 + 64))
  {
    sub_26A4EC448(*(v3 + 40), *(v3 + 48), *(v3 + 56));
  }

  sub_26A4EC448(*(v3 + 72), *(v3 + 80), *(v3 + 88));

  v4 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = OUTLINED_FUNCTION_6_47(v1[7]);
  sub_26A49035C(v6, v7);
  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A850438();
    OUTLINED_FUNCTION_46();
    (*(v9 + 8))(v3 + v8);
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_47(v1[9]);
  j__swift_release();
  v10 = OUTLINED_FUNCTION_6_47(v1[10]);
  sub_26A49035C(v10, v11);
  v12 = OUTLINED_FUNCTION_6_47(v1[11]);
  sub_26A49035C(v12, v13);

  return swift_deallocObject();
}

uint64_t sub_26A7D5DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DynamicFormattedTextView();
  OUTLINED_FUNCTION_79(v4);

  return sub_26A7D2BC8(a1, a2);
}

unint64_t sub_26A7D5E74()
{
  result = qword_2803B8380;
  if (!qword_2803B8380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8378);
    sub_26A6E4C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8380);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FormattedTextModel.Run.VoiceOver(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A7D5FDC()
{
  result = qword_2803B8388;
  if (!qword_2803B8388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8390);
    sub_26A7D59A8();
    sub_26A7D5640(&qword_2803ABCA0, 255, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8388);
  }

  return result;
}

unint64_t sub_26A7D60A0()
{
  result = qword_2803B8398;
  if (!qword_2803B8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8398);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_32(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_22_31()
{
}

uint64_t FactItemShortHeroNumberView.init(number:text1:text2:text3:text4:unit:thumbnail:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a7;
  v46 = a3;
  v50 = a6;
  v51 = a5;
  v52 = a4;
  v48 = a2;
  v49 = a1;
  v47 = a8;
  v8 = type metadata accessor for FactItemShortHeroNumberView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803A8A80 != -1)
  {
    swift_once();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
  v13 = __swift_project_value_buffer(v12, qword_2803D1A70);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v15 = &v11[*(v14 + 32)];
  sub_26A505CD4(v13, v15, &qword_2803AB6F0);
  sub_26A6AEE74(v55);
  memcpy(v11, v55, 0xBFuLL);
  sub_26A60E54C(v15 + *(v12 + 36), &v11[*(v14 + 28)]);
  v16 = &v11[v8[5]];
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v56[0] = xmmword_281588758[0];
  v56[1] = unk_281588768;
  v56[2] = xmmword_281588778;
  v56[3] = xmmword_281588788;
  v57 = xmmword_281588758[0];
  v58 = unk_281588768;
  v59 = xmmword_281588778;
  v60 = xmmword_281588788;
  v43 = xmmword_281588788;
  v44 = xmmword_281588778;
  sub_26A505CD4(v56, v61, &qword_2803A91B0);
  sub_26A6AEE74(v61);
  memcpy(v16, v61, 0xC0uLL);
  v17 = v43;
  *(v16 + 12) = v44;
  *(v16 + 13) = v17;
  v18 = v58;
  *(v16 + 14) = v57;
  *(v16 + 15) = v18;
  v19 = v60;
  *(v16 + 16) = v59;
  *(v16 + 17) = v19;
  v20 = v8[6];
  *&v11[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v21 = v8[7];
  *&v11[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v22 = &v11[v8[8]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v49;
  __swift_project_boxed_opaque_existential_1(v49, v49[3]);
  v24 = OUTLINED_FUNCTION_3_89();
  *&v11[v8[9]] = v25(v24);
  v26 = v48;
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  v27 = OUTLINED_FUNCTION_3_89();
  *&v11[v8[10]] = v28(v27);
  v29 = v46;
  sub_26A505CD4(v46, v53, &qword_2803A91B8);
  if (v54)
  {
    v30 = OUTLINED_FUNCTION_0_96();
    v31(v30);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A6A1DE4(v53, &qword_2803A91B8);
    v22 = 0;
  }

  v32 = v45;
  *&v11[v8[11]] = v22;
  sub_26A505CD4(v52, v53, &qword_2803A91B8);
  if (v54)
  {
    v33 = OUTLINED_FUNCTION_0_96();
    v34(v33);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A6A1DE4(v53, &qword_2803A91B8);
    v22 = 0;
  }

  *&v11[v8[12]] = v22;
  sub_26A505CD4(v51, v53, &qword_2803A91B8);
  if (v54)
  {
    v35 = OUTLINED_FUNCTION_0_96();
    v36(v35);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A6A1DE4(v53, &qword_2803A91B8);
    v22 = 0;
  }

  *&v11[v8[13]] = v22;
  sub_26A505CD4(v50, v53, &qword_2803A91B8);
  if (v54)
  {
    v37 = OUTLINED_FUNCTION_0_96();
    v38(v37);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A6A1DE4(v53, &qword_2803A91B8);
    v22 = 0;
  }

  *&v11[v8[14]] = v22;
  sub_26A505CD4(v32, v53, &qword_2803A91B8);
  if (v54)
  {
    v39 = OUTLINED_FUNCTION_0_96();
    v41 = v40(v39);
    OUTLINED_FUNCTION_5_77(v32);
    OUTLINED_FUNCTION_5_77(v50);
    OUTLINED_FUNCTION_5_77(v51);
    OUTLINED_FUNCTION_5_77(v52);
    OUTLINED_FUNCTION_5_77(v29);
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  else
  {
    OUTLINED_FUNCTION_4_83(v32);
    OUTLINED_FUNCTION_4_83(v50);
    OUTLINED_FUNCTION_4_83(v51);
    OUTLINED_FUNCTION_4_83(v52);
    OUTLINED_FUNCTION_4_83(v29);
    OUTLINED_FUNCTION_4_83(v53);
    v41 = 0;
  }

  *&v11[v8[15]] = v41;
  sub_26A7D681C(v11, v47);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t type metadata accessor for FactItemShortHeroNumberView()
{
  result = qword_2803B8538;
  if (!qword_2803B8538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A7D681C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FactItemShortHeroNumberView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7D6880@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for FactItemShortHeroNumberView();
  sub_26A505CD4(v1 + *(v10 + 24), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A505C8C(v9, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A7D6A68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FactItemShortHeroNumberView();
  sub_26A505CD4(v1 + *(v10 + 28), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26A7D6C70()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for FactItemShortHeroNumberView() + 32);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t FactItemShortHeroNumberView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v6 - 8);
  sub_26A7D6880(&v15[-v7]);
  sub_26A7D6FF4(v17);
  sub_26A7D6C70();
  sub_26A7D6A68(v5);
  v8 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  v16 = v1;
  sub_26A4CF258();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26A68CCBC;
  *(v9 + 24) = 0;
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8530) + 36);
  *(v10 + 16) = swift_getKeyPath();
  *(v10 + 24) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v12 = *(v11 + 40);
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v13 = v10 + *(v11 + 44);
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  *v10 = sub_26A4D1F7C;
  *(v10 + 8) = v9;
  return result;
}

void sub_26A7D6FF4(uint64_t a1@<X8>)
{
  if (qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  v3 = 0uLL;
  if (byte_2803B0440 == 1)
  {
    v4 = sub_26A7D6C70();
    if (sub_26A61B05C(v4, &unk_287B13090))
    {
      v5 = type metadata accessor for FactItemShortHeroNumberView();
      v6 = 0;
      v7 = (v1 + *(v5 + 20));
      __asm { FMOV            V0.2D, #10.0 }

      v3 = vaddq_f64(v7[12], _Q0);
      v13 = vaddq_f64(v7[13], _Q0);
    }

    else
    {
      v6 = 1;
      v13 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v6 = 1;
    v13 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v13;
  *(a1 + 32) = v6;
}

uint64_t sub_26A7D70B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9740);
  MEMORY[0x28223BE20](v32);
  v4 = &v30 - v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8558);
  MEMORY[0x28223BE20](v31);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9730);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9720);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = sub_26A84F3A8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A7D6A68(v16);
  v17 = sub_26A84F388();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    *v9 = sub_26A84FC08();
    *(v9 + 1) = 0;
    v9[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8568);
    sub_26A7D8B38(a1);
    sub_26A851458();
    sub_26A84F628();
    sub_26A505C8C(v9, v12, &qword_2803A9730);
    memcpy(&v12[*(v10 + 36)], __src, 0x70uLL);
    sub_26A505CD4(v12, v6, &qword_2803A9720);
    swift_storeEnumTagMultiPayload();
    sub_26A4D4134();
    sub_26A4D41EC();
    sub_26A84FDF8();
    return sub_26A6A1DE4(v12, &qword_2803A9720);
  }

  else
  {
    v19 = v6;
    v20 = v32;
    v21 = type metadata accessor for FactItemShortHeroNumberView();
    if (*(a1 + v21[11]) || *(a1 + v21[12]) || *(a1 + v21[13]))
    {
      if (qword_2803A8E00 != -1)
      {
        swift_once();
      }

      v22 = 0;
      v23 = qword_2803D2390;
    }

    else
    {
      v22 = 1;
      v23 = sub_26A84FA78();
    }

    v24 = sub_26A84FA78();
    v25 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 28) + 32);
    *v4 = v24;
    *(v4 + 1) = v25;
    v4[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8560);
    sub_26A7D75D0(a1, v23, v22, &v4[*(v26 + 44)]);
    *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9750) + 36)] = 256;
    KeyPath = swift_getKeyPath();
    v28 = swift_getKeyPath();
    v29 = &v4[*(v20 + 36)];
    *v29 = KeyPath;
    v29[8] = 0;
    *(v29 + 2) = v28;
    *(v29 + 12) = 256;
    sub_26A505CD4(v4, v19, &qword_2803A9740);
    swift_storeEnumTagMultiPayload();
    sub_26A4D4134();
    sub_26A4D41EC();
    sub_26A84FDF8();
    return sub_26A6A1DE4(v4, &qword_2803A9740);
  }
}

uint64_t sub_26A7D75D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v42 = a2;
  v40 = a1;
  v45 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8570);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = sub_26A84B1D8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA488);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v41 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v40 - v18);
  v20 = *(a1 + *(type metadata accessor for FactItemShortHeroNumberView() + 60));
  (*(v11 + 104))(v13, *MEMORY[0x277D62B38], v10);
  KeyPath = swift_getKeyPath();
  v22 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438) + 36));
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
  (*(v11 + 32))(v22 + v23, v13, v10);
  __swift_storeEnumTagSinglePayload(v22 + v23, 0, 1, v10);
  *v22 = KeyPath;
  *v19 = v20;
  v24 = swift_getKeyPath();
  v25 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA448) + 36);
  *v25 = v24;
  v25[8] = 1;
  v26 = swift_getKeyPath();
  v27 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA430) + 36);
  *v27 = v26;
  v27[8] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v29 = v40;
  v30 = *(v40 + *(v28 + 28) + 32);
  v31 = swift_getKeyPath();
  v32 = v19 + *(v15 + 44);
  *v32 = v31;
  v32[8] = 0;
  *(v32 + 2) = v30;
  v33 = v42;
  *v9 = v42;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8578) + 44);

  sub_26A7D7A0C(v29, v44, v33, &v9[v34]);
  v35 = v41;
  sub_26A505CD4(v19, v41, &qword_2803AA488);
  v36 = v43;
  sub_26A505CD4(v9, v43, &qword_2803B8570);
  v37 = v45;
  sub_26A505CD4(v35, v45, &qword_2803AA488);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8580);
  sub_26A505CD4(v36, v37 + *(v38 + 48), &qword_2803B8570);
  sub_26A6A1DE4(v9, &qword_2803B8570);
  sub_26A6A1DE4(v19, &qword_2803AA488);
  sub_26A6A1DE4(v36, &qword_2803B8570);
  return sub_26A6A1DE4(v35, &qword_2803AA488);
}

uint64_t sub_26A7D7A0C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8588);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8590);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v14);
  v16 = &v26[-v15 - 8];
  MEMORY[0x28223BE20](v17);
  v19 = &v26[-v18 - 8];
  *v9 = sub_26A84FC08();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8598);
  sub_26A7D7D2C(a1, a2, &v9[*(v20 + 44)]);
  sub_26A851448();
  sub_26A84F628();
  sub_26A505C8C(v9, v16, &qword_2803B8588);
  memcpy(&v16[*(v11 + 44)], __src, 0x70uLL);
  sub_26A505C8C(v16, v19, &qword_2803B8590);
  v21 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 28) + 8);
  v27[0] = v25;
  v27[1] = v21;
  v28 = 0;
  sub_26A7D84F0(a2, a1);
  sub_26A505CD4(v19, v13, &qword_2803B8590);
  sub_26A505CD4(v27, v26, &qword_2803B85A0);
  sub_26A505CD4(v13, a4, &qword_2803B8590);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85A8);
  v23 = a4 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_26A505CD4(v26, a4 + *(v22 + 64), &qword_2803B85A0);
  sub_26A6A1DE4(v27, &qword_2803B85A0);
  sub_26A6A1DE4(v19, &qword_2803B8590);
  sub_26A6A1DE4(v26, &qword_2803B85A0);
  return sub_26A6A1DE4(v13, &qword_2803B8590);
}

uint64_t sub_26A7D7D2C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v32) = a2;
  v33 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85D8);
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for FactItemShortHeroNumberView();
  v10 = *(a1 + v9[13]);
  if (qword_2803A8FC8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B84E0, v52, &qword_2803AA880);
  sub_26A6AEE74(v53);
  memcpy(v51, v53, sizeof(v51));
  v52[11] = 0;
  v52[10] = sub_26A80A810;
  v50 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFE0);
  sub_26A4EA0D8();
  sub_26A850B98();
  sub_26A6A1DE4(&v50, &qword_2803AAFE0);
  v11 = sub_26A850268();
  if (qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  if (byte_2803B0440 != 1 || (v12 = sub_26A7D6C70(), !sub_26A61B05C(v12, &unk_287B13090)))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  }

  sub_26A84ED48();
  v13 = v8;
  v14 = &v8[*(v4 + 36)];
  *v14 = v11;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  if (v32)
  {
    v19 = *(a1 + v9[10]);
    if (qword_2803A8FB0 != -1)
    {
      swift_once();
    }

    sub_26A505CD4(&unk_2803B83F0, v44, &qword_2803AA880);
    sub_26A6AEE74(v54);
    memcpy(v43, v54, sizeof(v43));
    v46 = 0;
    v45 = sub_26A80A810;
    v42 = v19;
    sub_26A505CD4(&v42, v40, &qword_2803A99A0);
    v41 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A99A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0);
    sub_26A4D4C34();
    sub_26A7DA0E4();
    sub_26A84FDF8();
    v20 = &qword_2803A99A0;
  }

  else
  {
    v21 = *(a1 + v9[10]);
    if (qword_2803A8FB0 != -1)
    {
      swift_once();
    }

    sub_26A505CD4(&unk_2803B83F0, v44, &qword_2803AA880);
    sub_26A6AEE74(v54);
    memcpy(v43, v54, sizeof(v43));
    v46 = 0;
    v45 = sub_26A80A810;
    v42 = v21;
    v22 = qword_2803A8E00;

    if (v22 != -1)
    {
      swift_once();
    }

    v47 = qword_2803D2390;
    v48 = sub_26A676018;
    v49 = 0;
    sub_26A505CD4(&v42, v40, &qword_2803ADBA0);
    v41 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A99A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0);
    sub_26A4D4C34();
    sub_26A7DA0E4();
    sub_26A84FDF8();
    v20 = &qword_2803ADBA0;
  }

  sub_26A6A1DE4(&v42, v20);
  v23 = *(a1 + v9[11]);
  if (qword_2803A8FB8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B8440, v44, &qword_2803AA880);
  sub_26A6AEE74(v55);
  memcpy(v43, v55, sizeof(v43));
  v46 = 0;
  v45 = sub_26A80A810;
  v42 = v23;
  v24 = *(a1 + v9[12]);
  v25 = qword_2803A8FC0;

  if (v25 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B8490, v39, &qword_2803AA880);
  sub_26A6AEE74(v56);
  memcpy(v38, v56, sizeof(v38));
  v39[11] = 0;
  v39[10] = sub_26A80A810;
  v37 = v24;
  v26 = v8;
  v27 = v34;
  sub_26A505CD4(v26, v34, &qword_2803B85D8);
  sub_26A505CD4(&v50, v40, &qword_2803B85E0);
  v32 = v13;
  sub_26A505CD4(&v42, v36, &qword_2803AAFE0);
  sub_26A505CD4(&v37, v35, &qword_2803AAFE0);
  v28 = v33;
  sub_26A505CD4(v27, v33, &qword_2803B85D8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85E8);
  sub_26A505CD4(v40, v28 + v29[12], &qword_2803B85E0);
  sub_26A505CD4(v36, v28 + v29[16], &qword_2803AAFE0);
  sub_26A505CD4(v35, v28 + v29[20], &qword_2803AAFE0);

  sub_26A6A1DE4(&v37, &qword_2803AAFE0);
  sub_26A6A1DE4(&v42, &qword_2803AAFE0);
  sub_26A6A1DE4(&v50, &qword_2803B85E0);
  sub_26A6A1DE4(v32, &qword_2803B85D8);
  sub_26A6A1DE4(v35, &qword_2803AAFE0);
  sub_26A6A1DE4(v36, &qword_2803AAFE0);
  sub_26A6A1DE4(v40, &qword_2803B85E0);
  return sub_26A6A1DE4(v27, &qword_2803B85D8);
}

uint64_t sub_26A7D84F0(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = type metadata accessor for FactItemShortHeroNumberView();
    v4 = *(a2 + *(v3 + 36));
    if (qword_2803A9048 != -1)
    {
      swift_once();
    }

    sub_26A505CD4(&unk_2803D28A0, v31, &qword_2803AA880);
    sub_26A6AEE74(__src);
    memcpy(v30, __src, sizeof(v30));
    v33 = 0;
    v32 = sub_26A80A810;
    v29 = v4;
    v5 = *(a2 + *(v3 + 56));
    v6 = qword_2803A8FA8;

    if (v6 != -1)
    {
      swift_once();
    }

    sub_26A505CD4(&unk_2803B83A0, v23, &qword_2803AA880);
    sub_26A6AEE74(v38);
    memcpy(v22, v38, sizeof(v22));
    v25 = 0;
    v24 = sub_26A80A810;
    v21 = v5;
    sub_26A505CD4(&v29, v17, &qword_2803A99A0);
    sub_26A505CD4(&v21, v16, &qword_2803AAFE0);
    sub_26A505CD4(v17, v18, &qword_2803A99A0);
    sub_26A505CD4(v16, &v19, &qword_2803AAFE0);

    sub_26A6A1DE4(v16, &qword_2803AAFE0);
    sub_26A6A1DE4(v17, &qword_2803A99A0);
    sub_26A505CD4(v18, v14, &qword_2803B85C0);
    v15 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85B8);
    sub_26A4DBCC8(&qword_2803B85C8, &qword_2803B85C0);
    sub_26A4DBCC8(&qword_2803B85D0, &qword_2803B85B8);
    sub_26A84FDF8();
    sub_26A6A1DE4(v18, &qword_2803B85C0);
    sub_26A6A1DE4(&v21, &qword_2803AAFE0);
    v7 = &qword_2803A99A0;
  }

  else
  {
    v8 = type metadata accessor for FactItemShortHeroNumberView();
    v9 = *(a2 + *(v8 + 36));
    if (qword_2803A9048 != -1)
    {
      swift_once();
    }

    sub_26A505CD4(&unk_2803D28A0, v31, &qword_2803AA880);
    sub_26A6AEE74(__src);
    memcpy(v30, __src, sizeof(v30));
    v33 = 0;
    v32 = sub_26A80A810;
    v29 = v9;
    v10 = qword_2803A8E00;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = qword_2803D2390;
    v34 = qword_2803D2390;
    v35 = sub_26A676018;
    v36 = 0;
    v12 = *(a2 + *(v8 + 56));
    if (qword_2803A8FA8 != -1)
    {
      swift_once();
    }

    sub_26A505CD4(&unk_2803B83A0, v23, &qword_2803AA880);
    sub_26A6AEE74(v38);
    memcpy(v22, v38, sizeof(v22));
    v24 = sub_26A80A810;
    v21 = v12;
    v25 = 0;
    v26 = v11;
    v27 = sub_26A676018;
    v28 = 0;
    sub_26A505CD4(&v29, v17, &qword_2803ADBA0);
    sub_26A505CD4(&v21, v16, &qword_2803B85B0);
    sub_26A505CD4(v17, v18, &qword_2803ADBA0);
    sub_26A505CD4(v16, &v20, &qword_2803B85B0);

    sub_26A6A1DE4(v16, &qword_2803B85B0);
    sub_26A6A1DE4(v17, &qword_2803ADBA0);
    sub_26A505CD4(v18, v14, &qword_2803B85B8);
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85B8);
    sub_26A4DBCC8(&qword_2803B85C8, &qword_2803B85C0);
    sub_26A4DBCC8(&qword_2803B85D0, &qword_2803B85B8);
    sub_26A84FDF8();
    sub_26A6A1DE4(v18, &qword_2803B85B8);
    sub_26A6A1DE4(&v21, &qword_2803B85B0);
    v7 = &qword_2803ADBA0;
  }

  return sub_26A6A1DE4(&v29, v7);
}

uint64_t sub_26A7D8B38(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v49 = v1;
  v51 = v3;
  v4 = sub_26A84B1D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA488);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v48 - v12);
  v50 = type metadata accessor for FactItemShortHeroNumberView();
  v14 = *(v2 + *(v50 + 60));
  (*(v5 + 104))(v7, *MEMORY[0x277D62B38], v4);
  KeyPath = swift_getKeyPath();
  v16 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
  (*(v5 + 32))(v16 + v17, v7, v4);
  __swift_storeEnumTagSinglePayload(v16 + v17, 0, 1, v4);
  *v16 = KeyPath;
  *v13 = v14;
  v18 = swift_getKeyPath();
  v19 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA448) + 36);
  *v19 = v18;
  v19[8] = 1;
  v20 = swift_getKeyPath();
  v21 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA430) + 36);
  *v21 = v20;
  v21[8] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v23 = v49;
  v24 = v49 + *(v22 + 28);
  v25 = *(v24 + 32);
  v26 = swift_getKeyPath();
  v27 = v50;
  v28 = v13;
  v29 = v13 + *(v9 + 44);
  v30 = v23;
  *v29 = v26;
  v29[8] = 0;
  *(v29 + 2) = v25;
  v31 = *(v23 + v27[13]);
  v32 = qword_2803A8FC8;

  if (v32 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B84E0, v79, &qword_2803AA880);
  sub_26A6AEE74(v80);
  memcpy(v78, v80, sizeof(v78));
  v79[11] = 0;
  v79[10] = sub_26A80A810;
  v77 = v31;
  v33 = *(v30 + v27[10]);
  v34 = qword_2803A8FB0;

  if (v34 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B83F0, v70, &qword_2803AA880);
  sub_26A6AEE74(v81);
  memcpy(v69, v81, sizeof(v69));
  v70[11] = 0;
  v70[10] = sub_26A80A810;
  v68 = v33;

  v35 = sub_26A850268();
  v36 = *(v24 + 8);
  sub_26A84ED48();
  v71 = v35;
  v72 = v37;
  v73 = v38;
  v74 = v39;
  v75 = v40;
  v76 = 0;
  v65[0] = sub_26A84FA38();
  v65[1] = v36;
  v66 = 0;
  sub_26A7D929C(v30, &v67);
  v41 = *(v30 + v27[11]);
  if (qword_2803A8FB8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B8440, v64, &qword_2803AA880);
  sub_26A6AEE74(v82);
  memcpy(v63, v82, sizeof(v63));
  v64[11] = 0;
  v64[10] = sub_26A80A810;
  v62 = v41;
  v42 = *(v30 + v27[12]);
  v43 = qword_2803A8FC0;

  if (v43 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B8490, v61, &qword_2803AA880);
  sub_26A6AEE74(v83);
  memcpy(v60, v83, sizeof(v60));
  v61[11] = 0;
  v61[10] = sub_26A80A810;
  v59 = v42;
  v44 = v28;
  v45 = v28;
  v46 = v52;
  sub_26A505CD4(v45, v52, &qword_2803AA488);
  v58[0] = v46;
  sub_26A505CD4(&v77, v57, &qword_2803AAFE0);
  v58[1] = v57;
  sub_26A505CD4(&v68, v56, &qword_2803AE630);
  v58[2] = v56;
  sub_26A505CD4(v65, v55, &qword_2803AE638);
  v58[3] = v55;
  sub_26A505CD4(&v62, v54, &qword_2803AAFE0);
  v58[4] = v54;
  sub_26A505CD4(&v59, v53, &qword_2803AAFE0);
  v58[5] = v53;
  sub_26A594B00(v58);

  sub_26A6A1DE4(&v59, &qword_2803AAFE0);
  sub_26A6A1DE4(&v62, &qword_2803AAFE0);
  sub_26A6A1DE4(v65, &qword_2803AE638);
  sub_26A6A1DE4(&v68, &qword_2803AE630);
  sub_26A6A1DE4(&v77, &qword_2803AAFE0);
  sub_26A6A1DE4(v44, &qword_2803AA488);
  sub_26A6A1DE4(v53, &qword_2803AAFE0);
  sub_26A6A1DE4(v54, &qword_2803AAFE0);
  sub_26A6A1DE4(v55, &qword_2803AE638);
  sub_26A6A1DE4(v56, &qword_2803AE630);
  sub_26A6A1DE4(v57, &qword_2803AAFE0);
  return sub_26A6A1DE4(v46, &qword_2803AA488);
}

uint64_t sub_26A7D929C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FactItemShortHeroNumberView();
  v5 = *(a1 + *(v4 + 36));
  if (qword_2803A9048 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803D28A0, v16, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v15, __src, sizeof(v15));
  v16[11] = 0;
  v16[10] = sub_26A80A810;
  v14 = v5;
  v6 = *(a1 + *(v4 + 56));
  v7 = qword_2803A8FA8;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B83A0, v13, &qword_2803AA880);
  sub_26A6AEE74(v18);
  memcpy(v12, v18, sizeof(v12));
  v13[11] = 0;
  v13[10] = sub_26A80A810;
  v11 = v6;
  sub_26A505CD4(&v14, v10, &qword_2803A99A0);
  sub_26A505CD4(&v11, v9, &qword_2803AAFE0);
  sub_26A505CD4(v10, a2, &qword_2803A99A0);
  sub_26A505CD4(v9, a2 + 296, &qword_2803AAFE0);

  sub_26A6A1DE4(&v11, &qword_2803AAFE0);
  sub_26A6A1DE4(&v14, &qword_2803A99A0);
  sub_26A6A1DE4(v9, &qword_2803AAFE0);
  return sub_26A6A1DE4(v10, &qword_2803A99A0);
}

void sub_26A7D94F8()
{
  sub_26A662E30(319, &qword_2803AB738, type metadata accessor for FactItemConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A4DB840(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
    if (v1 <= 0x3F)
    {
      sub_26A4D27F4();
      if (v2 <= 0x3F)
      {
        sub_26A662E30(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A662E30(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_26A4DB840(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26A7D96C8()
{
  result = qword_2803B8548;
  if (!qword_2803B8548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8530);
    sub_26A4DBCC8(&qword_2803B8550, &qword_2803A9708);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8548);
  }

  return result;
}

void sub_26A7D97AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 1;
  *(v1 + 56) = 3;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A850328();
  v6 = sub_26A84FED8();
  v7 = MEMORY[0x277CE04F8];
  v8 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v8;
  *(inited + 48) = v6;
  *(inited + 40) = v5;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_26A8570F0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v10 = qword_281588998;
  *(v9 + 32) = qword_281588998;
  v11 = byte_2815889A0;
  *(v9 + 40) = byte_2815889A0;
  *(v9 + 48) = 1;
  *(v9 + 56) = 3;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(v9);
  *(inited + 88) = v12;
  sub_26A850468();
  sub_26A8503A8();
  v13 = sub_26A850428();

  v14 = sub_26A84FEA8();
  *(inited + 128) = v7;
  *(inited + 136) = v8;
  *(inited + 104) = v14;
  *(inited + 96) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  sub_26A8516A8();
  sub_26A850408();
  sub_26A8503A8();
  sub_26A850428();

  sub_26A84FED8();
  sub_26A80D690();
}

uint64_t sub_26A7D9A54()
{
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588848, v16, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588898, v14, &qword_2803AA880);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570F0;
  v6 = qword_281588998;
  *(v5 + 32) = qword_281588998;
  v7 = byte_2815889A0;
  *(v5 + 40) = byte_2815889A0;
  *(v5 + 48) = 1;
  *(v5 + 56) = 3;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v11)
  {
    *(inited + 40) = v11;
    *(inited + 56) = v12;
    *(inited + 72) = v13;
  }

  else
  {
    sub_26A4F20CC(v15, inited + 40);
  }

  sub_26A6A1DE4(v14, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  v9 = sub_26A8516A8();
  v15[0] = 0u;
  memset(v14, 0, sizeof(v14));
  sub_26A66DDEC(v9, &unk_2803B8440);

  sub_26A6A1DE4(v14, &qword_2803ABAC0);
  return sub_26A6A1DE4(v16, &qword_2803AA880);
}

uint64_t sub_26A7D9D58()
{
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2815887F8, v16, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588848, v14, &qword_2803AA880);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570F0;
  v6 = qword_281588998;
  *(v5 + 32) = qword_281588998;
  v7 = byte_2815889A0;
  *(v5 + 40) = byte_2815889A0;
  *(v5 + 48) = 1;
  *(v5 + 56) = 3;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v11)
  {
    *(inited + 40) = v11;
    *(inited + 56) = v12;
    *(inited + 72) = v13;
  }

  else
  {
    sub_26A4F20CC(v15, inited + 40);
  }

  sub_26A6A1DE4(v14, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  v9 = sub_26A8516A8();
  v15[0] = 0u;
  memset(v14, 0, sizeof(v14));
  sub_26A66DDEC(v9, &unk_2803B8490);

  sub_26A6A1DE4(v14, &qword_2803ABAC0);
  return sub_26A6A1DE4(v16, &qword_2803AA880);
}

uint64_t sub_26A7DA088(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  return sub_26A505CD4(a3, a4, &qword_2803AA880);
}

unint64_t sub_26A7DA0E4()
{
  result = qword_2803B6800;
  if (!qword_2803B6800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADBA0);
    sub_26A4D4C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6800);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_83(uint64_t a1)
{

  return sub_26A6A1DE4(a1, v1);
}

uint64_t OUTLINED_FUNCTION_5_77(uint64_t a1)
{

  return sub_26A6A1DE4(a1, v1);
}

uint64_t SliderView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SliderView();
  v5 = a2 + v4[6];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a2 + v4[7];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = sub_26A84E1E8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a2, a1, v7);
  v9 = sub_26A84E1A8();
  if (v10)
  {
    sub_26A84E1D8();
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  result = (*(v8 + 8))(a1, v7);
  v14 = (a2 + v4[5]);
  *v14 = v12;
  v14[1] = 0;
  return result;
}

uint64_t type metadata accessor for SliderView()
{
  result = qword_2803B85F8;
  if (!qword_2803B85F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A7DA34C()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v6 = (v0 + *(type metadata accessor for SliderView() + 28));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_26A851EA8();
    v9 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v4 + 8))(v1, v2);
    return v11;
  }

  return v7;
}

uint64_t SliderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SliderView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_26A7DA590(v1, a1);
  sub_26A74D864(v1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_26A7DADEC(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85F0);
  v9 = (a1 + *(result + 36));
  *v9 = sub_26A7DAE50;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_26A7DA590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8640);
  MEMORY[0x28223BE20](v36);
  v5 = &v33 - v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8648);
  MEMORY[0x28223BE20](v34);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8638);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = sub_26A84E1B8();
  v16 = v15;
  v17 = (a1 + *(type metadata accessor for SliderView() + 20));
  v18 = *v17;
  v19 = v17[1];
  if (v16)
  {
    v41 = v18;
    v42 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B50B8);
    sub_26A851078();
    v20 = v38;
    v21 = v39;
    v22 = v40;
    sub_26A84E1D8();
    v24 = v23;
    result = sub_26A84E1C8();
    if (v24 <= v26)
    {
      v38 = v20;
      v39 = v21;
      v40 = v22;
      v41 = v24;
      v42 = v26;
      sub_26A7DABAC(MEMORY[0x277D636E8], v9);
      sub_26A7DABAC(MEMORY[0x277D636F0], v35);
      sub_26A7DB258();
      sub_26A56EB70();
      sub_26A851198();
LABEL_6:
      (*(v11 + 16))(v5, v13, v10);
      swift_storeEnumTagMultiPayload();
      sub_26A7DB1F4();
      sub_26A84FDF8();
      return (*(v11 + 8))(v13, v10);
    }

    __break(1u);
  }

  else
  {
    v33 = a2;
    v41 = v18;
    v42 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B50B8);
    sub_26A851078();
    v28 = v38;
    v27 = v39;
    v29 = v40;
    sub_26A84E1D8();
    v31 = v30;
    result = sub_26A84E1C8();
    if (v31 <= v32)
    {
      v38 = v28;
      v39 = v27;
      v40 = v29;
      v41 = v31;
      v42 = v32;
      v37 = v14;
      sub_26A7DABAC(MEMORY[0x277D636E8], v9);
      sub_26A7DABAC(MEMORY[0x277D636F0], v35);
      sub_26A7DB258();
      sub_26A56EB70();
      sub_26A8511A8();
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

double sub_26A7DAA2C()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v6 = v0 + *(type metadata accessor for SliderView() + 24);
  v7 = *v6;
  if ((*(v6 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v7, 0);
    (*(v4 + 8))(v1, v2);
    v7 = v11;
  }

  if ((v7 - 1) < 8)
  {
    return dbl_26A886128[v7 - 1];
  }

  v10 = sub_26A851E98();
  sub_26A7A6570(v10, 1, "SnippetUI/Context.swift", 23, 2, 635, "idiom", 5, 2);
  return 40.0;
}

uint64_t sub_26A7DABAC@<X0>(void (*a1)(__n128)@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_26A84BD28();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v19 - v11;
  a1(v10);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
  {
    sub_26A565064(v12);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE40);
    v14 = a2;
    v15 = 1;
  }

  else
  {
    (*(v7 + 16))(v2, v12, v5);
    VisualPropertyView.init(_:)(v2, a2);
    (*(v7 + 8))(v12, v5);
    sub_26A7DAA2C();
    sub_26A7DAA2C();
    sub_26A851448();
    sub_26A84F028();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE40);
    v16 = (a2 + *(v13 + 36));
    v17 = v19[1];
    *v16 = v19[0];
    v16[1] = v17;
    v16[2] = v19[2];
    v14 = a2;
    v15 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
}

uint64_t sub_26A7DADA4()
{
  sub_26A7DA34C();
  sub_26A84EB98();
}

uint64_t sub_26A7DADEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SliderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7DAE50()
{
  type metadata accessor for SliderView();

  return sub_26A7DADA4();
}

void sub_26A7DAEF8()
{
  sub_26A84E1E8();
  if (v0 <= 0x3F)
  {
    sub_26A7DAFAC();
    if (v1 <= 0x3F)
    {
      sub_26A4EEA70();
      if (v2 <= 0x3F)
      {
        sub_26A7DAFFC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A7DAFAC()
{
  if (!qword_2803B4FA8)
  {
    v0 = sub_26A851088();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B4FA8);
    }
  }
}

void sub_26A7DAFFC()
{
  if (!qword_2803B3E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFA68);
    v0 = sub_26A84EEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B3E98);
    }
  }
}

unint64_t sub_26A7DB060()
{
  result = qword_2803B8608;
  if (!qword_2803B8608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B85F0);
    sub_26A7DB0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8608);
  }

  return result;
}

unint64_t sub_26A7DB0EC()
{
  result = qword_2803B8610;
  if (!qword_2803B8610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8618);
    sub_26A7DB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8610);
  }

  return result;
}

unint64_t sub_26A7DB170()
{
  result = qword_2803B8620;
  if (!qword_2803B8620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8628);
    sub_26A7DB1F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8620);
  }

  return result;
}

unint64_t sub_26A7DB1F4()
{
  result = qword_2803B8630;
  if (!qword_2803B8630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8630);
  }

  return result;
}

unint64_t sub_26A7DB258()
{
  result = qword_2803B8650;
  if (!qword_2803B8650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8648);
    sub_26A5BEB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8650);
  }

  return result;
}

uint64_t sub_26A7DB30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A7DB400();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26A7DB370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A7DB400();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26A7DB3D4()
{
  sub_26A7DB400();
  sub_26A8500D8();
  __break(1u);
}

unint64_t sub_26A7DB400()
{
  result = qword_2803B8658;
  if (!qword_2803B8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8658);
  }

  return result;
}

id sub_26A7DB454(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_0_97();
  v6 = sub_26A84ABC8();
  v7 = [v2 initWithData_];

  sub_26A513D40(a1, a2);
  return v7;
}

uint64_t Image.init(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  sub_26A7DB540();
  v5 = OUTLINED_FUNCTION_0_97();
  sub_26A54D260(v5, v6);
  if (!sub_26A7DB454(a1, a2))
  {
    sub_26A54D2B8(a1, a2);
    return 0;
  }

  _s7SwiftUI5ImageV07SnippetB0E06nativeC0ACSo7UIImageC_tcfC_0();
  v7 = OUTLINED_FUNCTION_0_97();
  sub_26A54D2B8(v7, v8);
  return v2;
}

unint64_t sub_26A7DB540()
{
  result = qword_28157D7E0;
  if (!qword_28157D7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28157D7E0);
  }

  return result;
}

uint64_t static UIImage.imageData(for:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_26A7DB540();

  v6 = a3;
  v7 = sub_26A7DB618(a1, a2, a3, 0);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = UIImage.asPNGData()();

  return v9;
}

id sub_26A7DB618(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_26A851788();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

uint64_t UIImage.asPNGData()()
{
  v1 = UIImagePNGRepresentation(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A84ABF8();

  return v3;
}

UIImage_optional __swiftcall UIImage.init(systemName:accessibilityDescription:)(Swift::String systemName, Swift::String_optional accessibilityDescription)
{

  swift_getObjCClassFromMetadata();
  OUTLINED_FUNCTION_0_97();
  v3 = sub_26A851788();

  v4 = [v2 systemImageNamed_];

  v6 = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

void RFVisualProperty.asVisualProperty()()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v53 = sub_26A84BA88();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v12 = sub_26A4EC1C4(v0, &selRef_visual_elements, &qword_28157D848);
  if (!v12)
  {
    sub_26A851E98();
    LOBYTE(v46) = 2;
    OUTLINED_FUNCTION_26_19();
    sub_26A7A88B4(v25, v26, v27, v28, v29, 16, v30, 18, v46, v47, v48, v49, v50, v51, v52, v53, v54, *(&v54 + 1), v55, *(&v55 + 1), v56, v57, v58, *(&v58 + 1), v59, *(&v59 + 1));
    v61 = sub_26A7DBE8C(MEMORY[0x277D84F90]);
    goto LABEL_31;
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  v15 = sub_26A73670C(v13);
  v16 = v15;
  v52 = v13;
  if (!v14)
  {
    if (v15)
    {
      v51 = v3;
      *&v58 = MEMORY[0x277D84F90];
      sub_26A7DCBAC();
      if (v16 < 0)
      {
        goto LABEL_34;
      }

      v31 = 0;
      v32 = v58;
      v33 = v13 & 0xC000000000000001;
      do
      {
        if (v33)
        {
          v34 = MEMORY[0x26D6644E0](v31, v13);
        }

        else
        {
          v34 = *(v13 + 8 * v31 + 32);
        }

        v35 = v34;
        RFVisualElement.asVisualElement()();

        *&v58 = v32;
        v36 = *(v32 + 16);
        if (v36 >= *(v32 + 24) >> 1)
        {
          sub_26A7DCBAC();
          v32 = v58;
        }

        ++v31;
        *(v32 + 16) = v36 + 1;
        OUTLINED_FUNCTION_63_2();
        (*(v5 + 32))(v32 + v37 + *(v5 + 72) * v36, v9, v53);
        v13 = v52;
      }

      while (v16 != v31);
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
    }

    v44 = sub_26A7DBE8C(v32);

    v61 = v44;
LABEL_31:
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8660);
    v45 = sub_26A7E021C();
    OUTLINED_FUNCTION_25_26(v45);
LABEL_32:
    OUTLINED_FUNCTION_27_0();
    return;
  }

  if (!v15)
  {
    v38 = v1;

    v19 = MEMORY[0x277D84F90];
LABEL_25:
    v39 = sub_26A7DBE8C(v19);

    v60 = 0;
    v61 = v39;
    v58 = 0u;
    v59 = 0u;
    v40 = [v14 commandItem];
    v41 = v40;
    if (v40)
    {
      v42 = sub_26A4EC5B0(0, &qword_2803B8668);
      v40 = sub_26A7E0280();
    }

    else
    {
      v42 = 0;
      *(&v54 + 1) = 0;
      *&v55 = 0;
    }

    *&v54 = v41;
    *(&v55 + 1) = v42;
    v56 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8660);
    v43 = sub_26A7E021C();
    OUTLINED_FUNCTION_25_26(v43);

    goto LABEL_32;
  }

  v49 = v14;
  v51 = v3;
  *&v58 = MEMORY[0x277D84F90];
  v50 = v1;
  v17 = v1;
  sub_26A7DCBAC();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v19 = v58;
    v20 = v13 & 0xC000000000000001;
    do
    {
      if (v20)
      {
        v21 = MEMORY[0x26D6644E0](v18, v13);
      }

      else
      {
        v21 = *(v13 + 8 * v18 + 32);
      }

      v22 = v21;
      RFVisualElement.asVisualElement()();

      *&v58 = v19;
      v23 = *(v19 + 16);
      if (v23 >= *(v19 + 24) >> 1)
      {
        sub_26A7DCBAC();
        v19 = v58;
      }

      ++v18;
      *(v19 + 16) = v23 + 1;
      OUTLINED_FUNCTION_63_2();
      (*(v5 + 32))(v19 + v24 + *(v5 + 72) * v23, v11, v53);
      v13 = v52;
    }

    while (v16 != v18);

    v1 = v50;
    v14 = v49;
    goto LABEL_25;
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

id sub_26A7DBC10(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_26A852168();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_26A736710(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x26D6644E0](0, a1);
  }

  else
  {
    return *(a1 + 32);
  }
}

uint64_t sub_26A7DBD00@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t sub_26A7DBDD8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    OUTLINED_FUNCTION_63_2();
    sub_26A7E036C(a1 + v9, a4, a3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v10, 1, v8);
}

uint64_t sub_26A7DBE8C(uint64_t a1)
{
  v2 = sub_26A84BA88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_26A7DCB8C(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_26A7DCB8C(v12 > 1, v13 + 1, 1);
      }

      v19 = v2;
      v20 = MEMORY[0x277D62EB0];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_26A4C2314(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_26A7DC058(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_26A7DCFA0(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_26A7DCFA0(v5 > 1, v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_26A576F3C(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_26A7DC158()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v2 = type metadata accessor for VisualPropertyView();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  if (v8)
  {
    v19 = MEMORY[0x277D84F90];
    sub_26A7DD144(0, v8, 0);
    v9 = v19;
    OUTLINED_FUNCTION_63_2();
    v11 = v1 + v10;
    v12 = *(v4 + 72);
    do
    {
      sub_26A7E036C(v11, v7, type metadata accessor for VisualPropertyView);
      v19 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26A7DD144(v13 > 1, v14 + 1, 1);
        v9 = v19;
      }

      v17 = v2;
      v18 = sub_26A6DF594();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
      sub_26A7E036C(v7, boxed_opaque_existential_1, type metadata accessor for VisualPropertyView);
      *(v9 + 16) = v14 + 1;
      sub_26A4C2314(&v16, v9 + 40 * v14 + 32);
      sub_26A7E03CC(v7);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7DC2F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 width];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 height];
    if (v6)
    {
      v7 = v6;
      sub_26A851CD8();
      sub_26A851CD8();
      sub_26A84B268();

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_26A84B2B8();

  return __swift_storeEnumTagSinglePayload(a1, v8, 1, v9);
}

void sub_26A7DC3D0(uint64_t a1@<X8>)
{
  if ([v1 url])
  {
    OUTLINED_FUNCTION_9_63();
    sub_26A67B6BC(v3);
LABEL_15:

    return;
  }

  if ([v1 symbol])
  {
    OUTLINED_FUNCTION_9_63();
    sub_26A74DD58(v4);
    goto LABEL_15;
  }

  if ([v1 app_icon])
  {
    OUTLINED_FUNCTION_9_63();
    sub_26A5D1E1C(v5);
    goto LABEL_15;
  }

  if ([v1 avatar])
  {
    OUTLINED_FUNCTION_9_63();
    sub_26A7627F4(v6);
    goto LABEL_15;
  }

  if ([v1 monogram])
  {
    OUTLINED_FUNCTION_9_63();
    sub_26A65F414(v7);
    goto LABEL_15;
  }

  if ([v1 default_browser_app_icon])
  {
    OUTLINED_FUNCTION_9_63();
    sub_26A7A5BEC(v8);
    goto LABEL_15;
  }

  if ([v1 badged_image])
  {
    OUTLINED_FUNCTION_9_63();
    sub_26A64E984(v9);
    goto LABEL_15;
  }

  v10 = sub_26A84B718();

  __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
}

uint64_t sub_26A7DC554(int a1)
{
  switch(a1)
  {
    case 3:
      return sub_26A84FC18();
    case 2:
      return sub_26A84FBF8();
    case 1:
      return sub_26A84FC08();
  }

  return 0;
}

uint64_t SFCommandButtonItem.asActionProperty()()
{
  v1 = [v0 command];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD158);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26A8570D0;
  v3 = sub_26A84E278();
  v4 = MEMORY[0x277D63778];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  if (v1)
  {
    *boxed_opaque_existential_1 = v1;
    *(boxed_opaque_existential_1 + 8) = 0;
  }

  (*(*(v3 - 8) + 104))();

  return sub_26A84BAC8();
}

uint64_t sub_26A7DCB8C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DD978(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26A7DCC48()
{
  OUTLINED_FUNCTION_22_32();
  sub_26A7DEE6C(v1, v2, v3, v4, v5, v6, v7);
  *v0 = v8;
}

uint64_t sub_26A7DCCC0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DDA90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A7DCCE0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DDB94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A7DCD00(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DDC98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A7DCD64(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DDD98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26A7DCD84()
{
  OUTLINED_FUNCTION_24_26();
  sub_26A7E0074();
  *v0 = v1;
}

uint64_t sub_26A7DCDCC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DE310(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A7DCE88(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DE658(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A7DCEA8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DE760(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A7DCF20(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DE864(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A7DCF40(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DE968(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A7DCF60(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DEA78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A7DCF80(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DEB88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26A7DD048(size_t a1, int64_t a2, char a3)
{
  result = sub_26A7DECA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A7DD0AC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DEF48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A7DD124(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DF6C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A7DD144(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DF7D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A7DD1BC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DF8E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A7DD1DC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DF9F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A7DD1FC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DFB08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26A7DD2B8()
{
  OUTLINED_FUNCTION_23_25();
  sub_26A7DFE18(v1, v2, v3, v4, v5, v6, v7);
  *v0 = v8;
}

uint64_t sub_26A7DD2F4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26A7DFD20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26A7DD490()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_34_13();
  if (v3)
  {
    OUTLINED_FUNCTION_4_81();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_32_11();
      if (v4)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_8_67();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DD8);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD20);
    OUTLINED_FUNCTION_2_5(v6);
    v8 = *(v7 + 72);
    v9 = OUTLINED_FUNCTION_3_90();
    _swift_stdlib_malloc_size(v9);
    if (v8)
    {
      OUTLINED_FUNCTION_12_52();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        OUTLINED_FUNCTION_11_56(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD20);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_54(v12);
    sub_26A7A3730(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_48();
  }

  OUTLINED_FUNCTION_61_2();
}

void sub_26A7DD5E4()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7AD8);
      v6 = OUTLINED_FUNCTION_16_34();
      OUTLINED_FUNCTION_0_98(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_5_78();
        sub_26A4C23DC(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86E0);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DD6A4()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A38);
      v6 = OUTLINED_FUNCTION_16_34();
      OUTLINED_FUNCTION_0_98(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_5_78();
        sub_26A4C2444(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2748);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DD764()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_34_13();
  if (v3)
  {
    OUTLINED_FUNCTION_4_81();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_32_11();
      if (v4)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_8_67();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D48);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD08);
    OUTLINED_FUNCTION_2_5(v6);
    v8 = *(v7 + 72);
    v9 = OUTLINED_FUNCTION_3_90();
    _swift_stdlib_malloc_size(v9);
    if (v8)
    {
      OUTLINED_FUNCTION_12_52();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        OUTLINED_FUNCTION_11_56(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD08);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_54(v12);
    sub_26A7A3744(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_48();
  }

  OUTLINED_FUNCTION_61_2();
}

void sub_26A7DD8B8()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DA8);
      v6 = OUTLINED_FUNCTION_16_34();
      OUTLINED_FUNCTION_0_98(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_5_78();
        sub_26A7A3758(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8790);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_26A7DD978(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3648);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_26A7A5650((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B87A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7DDA90(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8770);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 80);
      if (v5)
      {
LABEL_13:
        sub_26A7A37BC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 80 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7DDB94(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1880);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_26A7A3798((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 72 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7DDC98(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_26A7A3800((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7DDD98(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8678);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26A7A5640((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8680);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26A7DDEE4()
{
  OUTLINED_FUNCTION_34_13();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A50);
      v7 = OUTLINED_FUNCTION_29_6();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_2_97();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_5_78();
        sub_26A4C2424(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8688);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v5)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DDFA8()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_34_13();
  if (v3)
  {
    OUTLINED_FUNCTION_4_81();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_32_11();
      if (v4)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_8_67();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DA0);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD18);
    OUTLINED_FUNCTION_2_5(v6);
    v8 = *(v7 + 72);
    v9 = OUTLINED_FUNCTION_3_90();
    _swift_stdlib_malloc_size(v9);
    if (v8)
    {
      OUTLINED_FUNCTION_12_52();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        OUTLINED_FUNCTION_11_56(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD18);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_54(v12);
    sub_26A7A3838(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_48();
  }

  OUTLINED_FUNCTION_61_2();
}

void sub_26A7DE0FC()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D20);
      v6 = OUTLINED_FUNCTION_16_34();
      OUTLINED_FUNCTION_0_98(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_5_78();
        sub_26A4C23DC(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8748);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DE1BC()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_34_13();
  if (v3)
  {
    OUTLINED_FUNCTION_4_81();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_32_11();
      if (v4)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_8_67();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D50);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD10);
    OUTLINED_FUNCTION_2_5(v6);
    v8 = *(v7 + 72);
    v9 = OUTLINED_FUNCTION_3_90();
    _swift_stdlib_malloc_size(v9);
    if (v8)
    {
      OUTLINED_FUNCTION_12_52();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        OUTLINED_FUNCTION_11_56(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD10);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_54(v12);
    sub_26A7A384C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_48();
  }

  OUTLINED_FUNCTION_61_2();
}

uint64_t sub_26A7DE310(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8760);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_26A7A3860((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26A7DE418()
{
  OUTLINED_FUNCTION_34_13();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CA0);
      v7 = OUTLINED_FUNCTION_29_6();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_2_97();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_5_78();
        sub_26A4C2424(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86F0);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v5)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DE4DC()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_34_13();
  if (v3)
  {
    OUTLINED_FUNCTION_4_81();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_32_11();
      if (v4)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_8_67();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CF8);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0);
    OUTLINED_FUNCTION_2_5(v6);
    v8 = *(v7 + 72);
    v9 = OUTLINED_FUNCTION_3_90();
    _swift_stdlib_malloc_size(v9);
    if (v8)
    {
      OUTLINED_FUNCTION_12_52();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        OUTLINED_FUNCTION_11_56(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_54(v12);
    sub_26A7A38A0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_48();
  }

  OUTLINED_FUNCTION_61_2();
}

uint64_t sub_26A7DE658(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DB0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_26A7A5644((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7DE760(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8708);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_26A7A3860((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 24 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7DE864(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86C0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_26A7A5644((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 48 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7DE968(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26A4C2404((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86B8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7DEA78(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A58);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26A7A5640((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1110);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7DEB88(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86C8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_26A7A3860((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86D0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_26A7DECA0(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8718);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB670) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB670) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_26A7A38FC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_26A7DEE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_81();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_86_1(a1, a2, a3, a4, a5);
      v15 = OUTLINED_FUNCTION_29_6();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v11)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26A7DEF48(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A60);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26A7A5640((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A68);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26A7DF058()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C98);
      v6 = OUTLINED_FUNCTION_16_34();
      OUTLINED_FUNCTION_0_98(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_5_78();
        sub_26A7A3910(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86E8);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DF118()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_34_13();
  if (v3)
  {
    OUTLINED_FUNCTION_4_81();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_32_11();
      if (v4)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_8_67();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D30);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD00);
    OUTLINED_FUNCTION_2_5(v6);
    v8 = *(v7 + 72);
    v9 = OUTLINED_FUNCTION_3_90();
    _swift_stdlib_malloc_size(v9);
    if (v8)
    {
      OUTLINED_FUNCTION_12_52();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        OUTLINED_FUNCTION_11_56(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD00);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_54(v12);
    sub_26A7A3938(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_48();
  }

  OUTLINED_FUNCTION_61_2();
}

void sub_26A7DF26C()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D28);
      v6 = OUTLINED_FUNCTION_16_34();
      OUTLINED_FUNCTION_0_98(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_5_78();
        sub_26A7A5654(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8750);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DF32C()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D18);
      v6 = OUTLINED_FUNCTION_16_34();
      OUTLINED_FUNCTION_0_98(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_5_78();
        sub_26A7A3964(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8740);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DF3EC()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D10);
      v6 = OUTLINED_FUNCTION_16_34();
      OUTLINED_FUNCTION_0_98(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_5_78();
        sub_26A7A398C(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8738);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DF4AC()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_34_13();
  if (v3)
  {
    OUTLINED_FUNCTION_4_81();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_32_11();
      if (v4)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_8_67();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D00);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF8);
    OUTLINED_FUNCTION_2_5(v6);
    v8 = *(v7 + 72);
    v9 = OUTLINED_FUNCTION_3_90();
    _swift_stdlib_malloc_size(v9);
    if (v8)
    {
      OUTLINED_FUNCTION_12_52();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        OUTLINED_FUNCTION_11_56(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF8);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_54(v12);
    sub_26A7A39B4(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_48();
  }

  OUTLINED_FUNCTION_61_2();
}

void sub_26A7DF600()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D08);
      v6 = OUTLINED_FUNCTION_16_34();
      OUTLINED_FUNCTION_0_98(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_5_78();
        sub_26A7A3A90(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8730);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_26A7DF6C0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26A7A5640((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6680);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7DF7D0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8780);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_26A7A5650((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7308);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7DF8E8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8728);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26A7A5640((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4218);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7DF9F8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8710);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26A4C2424((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFB8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A7DFB08(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D38);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_26A7A5650((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26A7DFC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_81();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_86_1(a1, a2, a3, a4, a5);
      v15 = OUTLINED_FUNCTION_29_6();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_2_97();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v11)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26A7DFD20(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2870);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_26A7A37E0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 32 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26A7DFE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_81();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_86_1(a1, a2, a3, a4, a5);
      v15 = OUTLINED_FUNCTION_29_6();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_20_30();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v11)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26A7DFEF0()
{
  OUTLINED_FUNCTION_34_13();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CA8);
      v7 = OUTLINED_FUNCTION_29_6();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_20_30();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_5_78();
        sub_26A7A37E0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86F8);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v5)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DFFB4()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A78);
      v6 = OUTLINED_FUNCTION_16_34();
      OUTLINED_FUNCTION_0_98(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_5_78();
        sub_26A7A5654(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8698);
    OUTLINED_FUNCTION_6_69();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7E0074()
{
  OUTLINED_FUNCTION_28_0();
  v6 = v5;
  v8 = v7;
  v9 = v3;
  v10 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_4_81();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_32_11();
      if (v12)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  else
  {
    v11 = v1;
  }

  v14 = *(v9 + 16);
  if (v11 <= v14)
  {
    v15 = *(v9 + 16);
  }

  else
  {
    v15 = v11;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_86_1(v0, v1, v2, v3, v4);
  v16 = v8(0);
  OUTLINED_FUNCTION_2_5(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_18:
  v8(0);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v10)
  {
    v6(v9 + v24, v14, v21 + v24);
    *(v9 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_26A7E021C()
{
  result = qword_28157D8D0;
  if (!qword_28157D8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157D8D0);
  }

  return result;
}

unint64_t sub_26A7E0280()
{
  result = qword_2803B8670;
  if (!qword_2803B8670)
  {
    sub_26A4EC5B0(255, &qword_2803B8668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8670);
  }

  return result;
}

uint64_t sub_26A7E0304(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A7E036C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A7E03CC(uint64_t a1)
{
  v2 = type metadata accessor for VisualPropertyView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

size_t OUTLINED_FUNCTION_0_98(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_90()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_69()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_13_48()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_16_34()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_26(uint64_t a1)
{

  return MEMORY[0x2821C9E08](v2 - 88, 0, v2 - 128, v2 - 176, v1, a1);
}

BOOL sub_26A7E05B8()
{
  v0 = sub_26A851788();
  sub_26A84F068();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD220);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_26A8570D0;
  v5 = *v4;
  *(inited + 32) = *v4;
  v6 = objc_opt_self();
  v7 = *MEMORY[0x277D76918];
  v8 = v5;
  v9 = [v6 preferredFontForTextStyle_];
  *(inited + 64) = sub_26A4EC5B0(0, &qword_2803AD228);
  *(inited + 40) = v9;
  type metadata accessor for Key();
  sub_26A7EA138();
  sub_26A8516A8();
  v10 = sub_26A851688();

  [v0 boundingRectWithSize:1 options:v10 attributes:0 context:{v2, 1.79769313e308}];
  v12 = v11;

  sub_26A84F068();
  v14 = vabdd_f64(v13 + 1.0, v12) >= 0.01;
  return v12 < v13 + 1.0 && v14;
}

void FactItemShortNumberView.init(number:text1:text2:text3:text4:unit:thumbnail:)()
{
  OUTLINED_FUNCTION_28_0();
  v51 = v1;
  v52 = v0;
  v53 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_2803A8A80 != -1)
  {
    OUTLINED_FUNCTION_18_1();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
  __swift_project_value_buffer(v9, qword_2803D1A70);
  v10 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 32)];
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v11, v12, v13);
  sub_26A6AEE74(__src);
  memcpy(v8, __src, 0xBFuLL);
  OUTLINED_FUNCTION_11_57();
  sub_26A7E9ABC(&v10[v14], &v8[v15], v16);
  v17 = type metadata accessor for FactItemShortNumberView();
  v18 = &v8[v17[5]];
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v62[0] = xmmword_281588758[0];
  v62[1] = unk_281588768;
  v62[2] = xmmword_281588778;
  v62[3] = xmmword_281588788;
  v63 = xmmword_281588758[0];
  v64 = unk_281588768;
  v65 = xmmword_281588778;
  v66 = xmmword_281588788;
  v49 = xmmword_281588788;
  v50 = xmmword_281588778;
  sub_26A505CD4(v62, __dst, &qword_2803A91B0);
  sub_26A6AEE74(v67);
  memcpy(v18, v67, 0xC0uLL);
  *(v18 + 12) = v50;
  *(v18 + 13) = v49;
  v19 = v64;
  *(v18 + 14) = v63;
  *(v18 + 15) = v19;
  v20 = v66;
  *(v18 + 16) = v65;
  *(v18 + 17) = v20;
  v21 = &v8[v17[6]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v8[v17[7]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v17[8];
  *&v8[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v24 = v17[9];
  *&v8[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v25 = &v8[v17[17]];
  v58[0] = 0;
  sub_26A851048();
  v26 = *(&__dst[0] + 1);
  *v25 = __dst[0];
  *(v25 + 1) = v26;
  sub_26A50429C(v6, __dst);
  OUTLINED_FUNCTION_80();
  v27 = swift_allocObject();
  sub_26A4C2314(__dst, v27 + 16);
  v28 = &v8[v17[10]];
  *v28 = sub_26A7EA310;
  v28[1] = v27;
  sub_26A50429C(v4, __dst);
  OUTLINED_FUNCTION_80();
  v29 = swift_allocObject();
  sub_26A4C2314(__dst, v29 + 16);
  v30 = &v8[v17[11]];
  *v30 = sub_26A7E20F4;
  v30[1] = v29;
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v31, v32, v33);
  OUTLINED_FUNCTION_80();
  v34 = swift_allocObject();
  v35 = __dst[1];
  *(v34 + 16) = __dst[0];
  *(v34 + 32) = v35;
  *(v34 + 48) = *&__dst[2];
  v36 = &v8[v17[12]];
  *v36 = sub_26A616E10;
  v36[1] = v34;
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v37, v38, v39);
  if (v59[3])
  {
    OUTLINED_FUNCTION_59_0(v59);
    v40 = OUTLINED_FUNCTION_13_3();
    v41(v40);
    nullsub_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v59);
    memcpy(__dst, v58, 0xFAuLL);
  }

  else
  {
    sub_26A505D1C();
    sub_26A504324(__dst);
  }

  memcpy(&v8[v17[13]], __dst, 0xFAuLL);
  sub_26A505CD4(v53, v57, &qword_2803AB700);
  if (v57[3])
  {
    OUTLINED_FUNCTION_59_0(v57);
    v42 = OUTLINED_FUNCTION_13_3();
    v43(v42);
    nullsub_1(v56);
    __swift_destroy_boxed_opaque_existential_1(v57);
    memcpy(v58, v56, 0xFAuLL);
  }

  else
  {
    sub_26A505D1C();
    sub_26A504324(v58);
  }

  memcpy(&v8[v17[14]], v58, 0xFAuLL);
  sub_26A505CD4(v52, v55, &qword_2803AB700);
  if (v55[3])
  {
    OUTLINED_FUNCTION_59_0(v55);
    v44 = OUTLINED_FUNCTION_13_3();
    v45(v44);
    nullsub_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v55);
    memcpy(v56, v54, 0xFAuLL);
  }

  else
  {
    sub_26A505D1C();
    sub_26A504324(v56);
  }

  memcpy(&v8[v17[15]], v56, 0xFAuLL);
  sub_26A505CD4(v51, v54, &qword_2803A91B8);
  if (v54[3])
  {
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    v46 = OUTLINED_FUNCTION_13_3();
    v48 = v47(v46);
    sub_26A505D1C();
    OUTLINED_FUNCTION_7_0();
    sub_26A505D1C();
    OUTLINED_FUNCTION_7_0();
    sub_26A505D1C();
    OUTLINED_FUNCTION_7_0();
    sub_26A505D1C();
    OUTLINED_FUNCTION_7_0();
    sub_26A505D1C();
    __swift_destroy_boxed_opaque_existential_1(v4);
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    OUTLINED_FUNCTION_111();
    sub_26A505D1C();
    OUTLINED_FUNCTION_24_27();
    sub_26A505D1C();
    OUTLINED_FUNCTION_24_27();
    sub_26A505D1C();
    OUTLINED_FUNCTION_24_27();
    sub_26A505D1C();
    OUTLINED_FUNCTION_24_27();
    sub_26A505D1C();
    __swift_destroy_boxed_opaque_existential_1(v4);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_111();
    sub_26A505D1C();
    v48 = 0;
  }

  *&v8[v17[16]] = v48;
  OUTLINED_FUNCTION_27_0();
}

uint64_t type metadata accessor for FactItemShortNumberView()
{
  result = qword_2803B89A8;
  if (!qword_2803B89A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A7E0E6C()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v6 = v0 + *(type metadata accessor for FactItemShortNumberView() + 24);
  v7 = *v6;
  if ((*(v6 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v7, 0);
    (*(v4 + 8))(v1, v2);
    return v10;
  }

  return v7;
}

uint64_t sub_26A7E0F98()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v6 = v0 + *(type metadata accessor for FactItemShortNumberView() + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v7, 0);
    (*(v4 + 8))(v1, v2);
    LOBYTE(v7) = v10;
  }

  return v7 & 1;
}

uint64_t sub_26A7E10C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for FactItemShortNumberView();
  sub_26A505CD4(v1 + *(v10 + 32), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A505C8C(v9, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A7E12B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FactItemShortNumberView();
  sub_26A505CD4(v1 + *(v10 + 36), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_26A7E14B8()
{
  OUTLINED_FUNCTION_28_0();
  v91 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v88 = v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  v87 = v8;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27_1();
  v86 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  OUTLINED_FUNCTION_79(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  v85 = v83 - v13;
  OUTLINED_FUNCTION_25_2();
  sub_26A84CCD8();
  OUTLINED_FUNCTION_15();
  v89 = v15;
  v90 = v14;
  MEMORY[0x28223BE20](v14);
  v17 = v16;
  v18 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803A8A80 != -1)
  {
    OUTLINED_FUNCTION_18_1();
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
  v20 = __swift_project_value_buffer(v19, qword_2803D1A70);
  v21 = &v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 32)];
  sub_26A505CD4(v20, v21, &qword_2803AB6F0);
  sub_26A6AEE74(v109);
  memcpy(v2, v109, 0xBFuLL);
  OUTLINED_FUNCTION_11_57();
  sub_26A7E9ABC(v21 + v22, &v2[v23], v24);
  v25 = type metadata accessor for FactItemShortNumberView();
  v26 = &v2[v25[5]];
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v111[0] = xmmword_281588758[0];
  v111[1] = unk_281588768;
  v111[2] = xmmword_281588778;
  v111[3] = unk_281588788;
  v112 = xmmword_281588758[0];
  v113 = unk_281588768;
  v114 = xmmword_281588778;
  v115 = unk_281588788;
  v92 = unk_281588788;
  v93 = xmmword_281588778;
  sub_26A505CD4(v111, v110, &qword_2803A91B0);
  sub_26A6AEE74(v116);
  memcpy(v26, v116, 0xC0uLL);
  v27 = v92;
  *(v26 + 12) = v93;
  *(v26 + 13) = v27;
  v28 = v113;
  *(v26 + 14) = v112;
  *(v26 + 15) = v28;
  v29 = v115;
  *(v26 + 16) = v114;
  *(v26 + 17) = v29;
  v30 = &v2[v25[6]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = &v2[v25[7]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = v25[8];
  *&v2[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v33 = v25[9];
  *&v2[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v34 = &v2[v25[17]];
  LOBYTE(v104[0]) = 0;
  sub_26A851048();
  v35 = v110[1];
  *v34 = v110[0];
  *(v34 + 1) = v35;
  v36 = v89;
  v84 = *(v89 + 16);
  v37 = v18;
  *&v92 = v2;
  v38 = v18;
  v39 = v90;
  v84(v37, v91, v90);
  v40 = *(v36 + 80);
  *&v93 = v25;
  v41 = (v40 + 16) & ~v40;
  v83[1] = v17;
  v42 = swift_allocObject();
  v83[0] = *(v36 + 32);
  (v83[0])(v42 + v41, v38, v39);
  v43 = v91;
  v44 = (v92 + *(v93 + 40));
  *v44 = sub_26A7EA17C;
  v44[1] = v42;
  v45 = v84;
  v84(v38, v43, v39);
  v46 = swift_allocObject();
  v47 = v83[0];
  (v83[0])(v46 + v41, v38, v39);
  v48 = (v92 + *(v93 + 44));
  *v48 = sub_26A7EA194;
  v48[1] = v46;
  v49 = v91;
  v45(v38, v91, v39);
  v50 = v49;
  v51 = v92;
  v52 = swift_allocObject();
  v53 = v52 + v41;
  v54 = v93;
  v47(v53, v38, v39);
  v55 = v51;
  v56 = (v51 + v54[12]);
  *v56 = sub_26A7EA29C;
  v56[1] = v52;
  OUTLINED_FUNCTION_43_9();
  sub_26A84CC98();
  sub_26A84D098();
  OUTLINED_FUNCTION_12_53();
  if (v57)
  {
    sub_26A505D1C();
    sub_26A504324(v110);
  }

  else
  {
    v58 = MultilineTextProperty.asAnyView()();
    v59 = sub_26A84B878();
    KeyPath = swift_getKeyPath();
    v108 = 0;
    v61 = swift_getKeyPath();
    v107 = 0;
    v62 = swift_getKeyPath();
    v106 = 0;
    v105 = 1;
    OUTLINED_FUNCTION_4_11();
    v63 = OUTLINED_FUNCTION_31_11();
    v64(v63);
    v104[0] = KeyPath;
    v54 = v93;
    LOBYTE(v104[1]) = v108;
    v104[2] = v61;
    LOBYTE(v104[3]) = v107;
    v104[4] = v62;
    LOBYTE(v104[5]) = v106;
    memset(&v104[6], 0, 32);
    v104[10] = v58;
    LOBYTE(v104[11]) = v59 & 1;
    memset(&v104[12], 0, 128);
    LOBYTE(v104[28]) = v105;
    memset(&v104[29], 0, 18);
    nullsub_1(v104);
    memcpy(v110, v104, 0xFAuLL);
  }

  memcpy((v55 + v54[13]), v110, 0xFAuLL);
  OUTLINED_FUNCTION_43_9();
  sub_26A84CCA8();
  sub_26A84B888();
  OUTLINED_FUNCTION_12_53();
  if (v57)
  {
    sub_26A505D1C();
    sub_26A504324(v104);
  }

  else
  {
    v65 = TextProperty.asAnyView()();
    v66 = sub_26A84B878();
    v67 = swift_getKeyPath();
    v103 = 0;
    v68 = swift_getKeyPath();
    v102 = 0;
    v69 = swift_getKeyPath();
    v101 = 0;
    v100 = 1;
    OUTLINED_FUNCTION_4_11();
    v70 = OUTLINED_FUNCTION_31_11();
    v71(v70);
    v99[0] = v67;
    v54 = v93;
    LOBYTE(v99[1]) = v103;
    v99[2] = v68;
    LOBYTE(v99[3]) = v102;
    v99[4] = v69;
    LOBYTE(v99[5]) = v101;
    memset(&v99[6], 0, 32);
    v99[10] = v65;
    LOBYTE(v99[11]) = v66 & 1;
    memset(&v99[12], 0, 128);
    LOBYTE(v99[28]) = v100;
    memset(&v99[29], 0, 18);
    nullsub_1(v99);
    memcpy(v104, v99, 0xFAuLL);
  }

  memcpy((v55 + v54[14]), v104, 0xFAuLL);
  OUTLINED_FUNCTION_43_9();
  sub_26A84CC68();
  OUTLINED_FUNCTION_12_53();
  if (v57)
  {
    sub_26A505D1C();
    sub_26A504324(v99);
  }

  else
  {
    v72 = TextProperty.asAnyView()();
    v73 = sub_26A84B878();
    v74 = swift_getKeyPath();
    v98 = 0;
    v75 = swift_getKeyPath();
    v97 = 0;
    v76 = swift_getKeyPath();
    v96 = 0;
    v95 = 1;
    OUTLINED_FUNCTION_4_11();
    v77 = OUTLINED_FUNCTION_31_11();
    v78(v77);
    v94[0] = v74;
    v54 = v93;
    LOBYTE(v94[1]) = v98;
    v94[2] = v75;
    LOBYTE(v94[3]) = v97;
    v94[4] = v76;
    LOBYTE(v94[5]) = v96;
    memset(&v94[6], 0, 32);
    v94[10] = v72;
    LOBYTE(v94[11]) = v73 & 1;
    memset(&v94[12], 0, 128);
    LOBYTE(v94[28]) = v95;
    memset(&v94[29], 0, 18);
    nullsub_1(v94);
    memcpy(v99, v94, 0xFAuLL);
  }

  v79 = v88;
  memcpy((v55 + v54[15]), v99, 0xFAuLL);
  OUTLINED_FUNCTION_43_9();
  sub_26A84CCC8();
  v80 = sub_26A84BD28();
  OUTLINED_FUNCTION_12_53();
  if (v57)
  {
    (*(v89 + 8))(v50, v90);
    sub_26A505D1C();
    v81 = 0;
  }

  else
  {
    v81 = VisualProperty.asAnyView()();
    (*(v89 + 8))(v50, v90);
    OUTLINED_FUNCTION_4_11();
    (*(v82 + 8))(v79, v80);
  }

  *(v55 + v54[16]) = v81;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7E1EC4@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  a1();
  v11 = sub_26A6E3188(a2);
  return (*(v6 + 8))(v10, v4, v11);
}

void *sub_26A7E1FA4@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3];
  sub_26A84CC88();
  v5 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_26A505D1C();
    sub_26A504324(v8);
  }

  else
  {
    v6 = sub_26A6E3398(v9);
    (*(*(v5 - 8) + 8))(v4, v5, v6);
    memcpy(v8, v9, 0xFAuLL);
    nullsub_1(v8);
  }

  return memcpy(a1, v8, 0xFAuLL);
}

uint64_t FactItemShortNumberView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v20[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74_0();
  sub_26A7E10C8(v2);
  sub_26A7E23B8(v22);
  sub_26A7E0E6C();
  sub_26A7E12B0(v7);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
  v21 = v1;
  sub_26A4CFA3C();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26A68CCBC;
  *(v11 + 24) = 0;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8988) + 36);
  *(v12 + 16) = swift_getKeyPath();
  *(v12 + 24) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v14 = *(v13 + 40);
  *(v12 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v15 = v12 + *(v13 + 44);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *v12 = sub_26A4D1F7C;
  *(v12 + 8) = v11;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8990) + 36)) = 2;
  KeyPath = swift_getKeyPath();
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  v17 = byte_2803B0441;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8998);
  v19 = a1 + *(result + 36);
  *v19 = KeyPath;
  *(v19 + 8) = v17;
  return result;
}

void sub_26A7E23B8(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  if (byte_2803B0441 == 1 && (v4 = sub_26A7E0E6C(), sub_26A61B05C(v4, &unk_287B131A0)))
  {
    sub_26A4EC5B0(0, &qword_28157D880);
    switch(sub_26A63CD18())
    {
      case 1u:
      case 2u:
      case 3u:
        v5 = sub_26A852598();

        if ((v5 & 1) == 0)
        {
          goto LABEL_9;
        }

        break;
      case 4u:
        goto LABEL_9;
      default:

        break;
    }

    v6 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 28);
    v7 = *(v6 + *(type metadata accessor for FactItemConstants() + 60));
    v8 = type metadata accessor for FactItemShortNumberView();
    v9 = 0;
    v10 = v2 + *(v8 + 20);
    v11.f64[0] = *(v10 + 192) + -5.0;
    v12.f64[0] = *(v10 + 208) + -5.0;
    v11.f64[1] = v7;
    v12.f64[1] = v7;
  }

  else
  {
LABEL_9:
    if (qword_2803A8BF0 != -1)
    {
      swift_once();
    }

    v11 = 0uLL;
    if (byte_2803B0440 == 1)
    {
      v13 = sub_26A7E0E6C();
      if (sub_26A61B05C(v13, &unk_287B13090))
      {
        v14 = type metadata accessor for FactItemShortNumberView();
        v9 = 0;
        v15 = (v1 + *(v14 + 20));
        __asm { FMOV            V0.2D, #10.0 }

        v11 = vaddq_f64(v15[12], _Q0);
        v12 = vaddq_f64(v15[13], _Q0);
      }

      else
      {
        v9 = 1;
        v12 = 0uLL;
        v11 = 0uLL;
      }
    }

    else
    {
      v9 = 1;
      v12 = 0uLL;
    }
  }

  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v9;
}

uint64_t sub_26A7E2610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A96B0);
  MEMORY[0x28223BE20](v43);
  v38 = (v35 - v3);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B89D8);
  MEMORY[0x28223BE20](v41);
  v42 = v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A96A0);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = (v35 - v6);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9690);
  MEMORY[0x28223BE20](v39);
  v37 = v35 - v7;
  v8 = sub_26A84F3A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9680);
  MEMORY[0x28223BE20](v12);
  v40 = v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B89E0);
  MEMORY[0x28223BE20](v14);
  v16 = v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9640);
  MEMORY[0x28223BE20](v17);
  v19 = v35 - v18;
  v20 = a1;
  if (sub_26A7E0F98())
  {
    sub_26A7E2CEC(v19);
    sub_26A505CD4(v19, v16, &qword_2803A9640);
    swift_storeEnumTagMultiPayload();
    sub_26A4D3B98();
    sub_26A4D3D68();
    sub_26A84FDF8();
  }

  else
  {
    v35[1] = v14;
    v35[2] = v17;
    v35[3] = v12;
    sub_26A7E12B0(v11);
    v21 = sub_26A84F388();
    (*(v9 + 8))(v11, v8);
    if (v21)
    {
      v22 = sub_26A84FC08();
      v23 = v36;
      *v36 = v22;
      *(v23 + 8) = 0;
      *(v23 + 16) = 0;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B89E8);
      sub_26A7E55E8(v20, v23 + *(v24 + 44));
      sub_26A851458();
      sub_26A84F628();
      v25 = v37;
      sub_26A505C8C(v23, v37, &qword_2803A96A0);
      memcpy((v25 + *(v39 + 36)), __src, 0x70uLL);
      sub_26A505CD4(v25, v42, &qword_2803A9690);
    }

    else
    {
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
      v28 = v38;
      *v38 = *(v20 + *(v27 + 28) + 32);
      *(v28 + 8) = 0;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A96D0);
      sub_26A7E315C(v20, v28 + *(v29 + 44));
      *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A96C0) + 36)) = 256;
      KeyPath = swift_getKeyPath();
      v31 = swift_getKeyPath();
      v32 = v42;
      v33 = v28 + *(v43 + 36);
      *v33 = KeyPath;
      *(v33 + 8) = 0;
      *(v33 + 16) = v31;
      *(v33 + 24) = 256;
      sub_26A505CD4(v28, v32, &qword_2803A96B0);
    }

    swift_storeEnumTagMultiPayload();
    sub_26A4D3DF4();
    sub_26A4D3EAC();
    v26 = v40;
    sub_26A84FDF8();
    sub_26A505D1C();
    sub_26A505CD4(v26, v16, &qword_2803A9680);
    swift_storeEnumTagMultiPayload();
    sub_26A4D3B98();
    sub_26A4D3D68();
    sub_26A84FDF8();
  }

  return sub_26A505D1C();
}

uint64_t sub_26A7E2CEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &__src[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9660);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &__src[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9650);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &__src[-v13];
  *v6 = sub_26A84FC08();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v15 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B89F0) + 44)];
  v16 = sub_26A84FA78();
  v17 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 28) + 32);
  *v15 = v16;
  *(v15 + 1) = v17;
  v15[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B89F8);
  sub_26A7E4288(v2, &v15[*(v18 + 44)]);
  sub_26A851458();
  sub_26A84F628();
  sub_26A505C8C(v6, v10, &qword_2803A9670);
  memcpy(&v10[*(v8 + 44)], __src, 0x70uLL);
  sub_26A505C8C(v10, v14, &qword_2803A9660);
  *&v14[*(v12 + 44)] = 256;
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  sub_26A505C8C(v14, a1, &qword_2803A9650);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9640);
  v22 = a1 + *(result + 36);
  *v22 = KeyPath;
  *(v22 + 8) = 0;
  *(v22 + 16) = v20;
  *(v22 + 24) = 256;
  return result;
}

uint64_t sub_26A7E315C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A00);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = (&v57 - v4);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AF0) - 8;
  MEMORY[0x28223BE20](v66);
  v67 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v57 - v7;
  MEMORY[0x28223BE20](v8);
  v65 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v57 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8B00) - 8;
  MEMORY[0x28223BE20](v60);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v57 - v15;
  MEMORY[0x28223BE20](v16);
  v69 = &v57 - v17;
  v18 = sub_26A84B1D8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA488);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v61 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = (&v57 - v26);
  v28 = *(a1 + *(type metadata accessor for FactItemShortNumberView() + 64));
  (*(v19 + 104))(v21, *MEMORY[0x277D62B38], v18);
  KeyPath = swift_getKeyPath();
  v30 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438) + 36));
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
  (*(v19 + 32))(v30 + v31, v21, v18);
  __swift_storeEnumTagSinglePayload(v30 + v31, 0, 1, v18);
  *v30 = KeyPath;
  *v27 = v28;
  v32 = swift_getKeyPath();
  v33 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA448) + 36);
  *v33 = v32;
  v33[8] = 1;
  v34 = swift_getKeyPath();
  v35 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA430) + 36);
  *v35 = v34;
  v35[8] = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v37 = v58;
  v38 = *(v58 + *(v36 + 28) + 32);
  v39 = swift_getKeyPath();
  v40 = v27 + *(v23 + 44);
  *v40 = v39;
  v40[8] = 0;
  *(v40 + 2) = v38;

  *v12 = sub_26A84FC08();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8B08);
  sub_26A7E38EC(v37, &v12[*(v41 + 44)]);
  sub_26A851448();
  sub_26A84F628();
  v42 = v59;
  sub_26A505C8C(v12, v59, &qword_2803B8AF8);
  memcpy((v42 + *(v60 + 44)), __src, 0x70uLL);
  v43 = v69;
  sub_26A505C8C(v42, v69, &qword_2803B8B00);
  v44 = sub_26A84FC18();
  v45 = v63;
  *v63 = v44;
  v45[1] = 0;
  *(v45 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A20);
  sub_26A7E51EC();
  v46 = sub_26A7E0E6C();
  if (sub_26A61B05C(v46, &unk_287B13248))
  {
    v47 = 1.0;
  }

  else
  {
    v47 = 0.0;
  }

  v48 = v45;
  v49 = v64;
  sub_26A505C8C(v48, v64, &qword_2803B8A00);
  v50 = v65;
  *(v49 + *(v66 + 44)) = v47;
  sub_26A505C8C(v49, v50, &qword_2803B8AF0);
  v51 = v61;
  sub_26A505CD4(v27, v61, &qword_2803AA488);
  v52 = v62;
  sub_26A505CD4(v43, v62, &qword_2803B8B00);
  v53 = v67;
  sub_26A505CD4(v50, v67, &qword_2803B8AF0);
  v54 = v68;
  sub_26A505CD4(v51, v68, &qword_2803AA488);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8B10);
  sub_26A505CD4(v52, v54 + *(v55 + 48), &qword_2803B8B00);
  sub_26A505CD4(v53, v54 + *(v55 + 64), &qword_2803B8AF0);
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7E38EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A38);
  MEMORY[0x28223BE20](v80);
  v74 = v66 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A30);
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = v66 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A80);
  MEMORY[0x28223BE20](v70);
  v77 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = v66 - v10;
  MEMORY[0x28223BE20](v11);
  v68 = v66 - v12;
  MEMORY[0x28223BE20](v13);
  v75 = v66 - v14;
  MEMORY[0x28223BE20](v15);
  v81 = v66 - v16;
  v17 = sub_26A84B058();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A70);
  MEMORY[0x28223BE20](v21);
  v73 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v66 - v24;
  v79 = type metadata accessor for FactItemShortNumberView();
  v26 = *(a1 + v79[11]);
  sub_26A7E70C0(v20);
  v26(v93, v20);
  v27 = *(v18 + 8);
  v27(v20, v17);
  memcpy(v91, v93, 0xFAuLL);
  memcpy(v93, v91, 0xFAuLL);
  sub_26A4EC4B4();
  sub_26A850AF8();
  if (qword_2803A8FD8 != -1)
  {
    swift_once();
  }

  v28 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A58) + 36)];
  sub_26A505CD4(&unk_2803B87F8, (v28 + 192), &qword_2803AA880);
  sub_26A6AEE74(v88);
  sub_26A4EC508(v91);
  memcpy(v28, v88, 0xBFuLL);
  *(v28 + 34) = sub_26A80A810;
  *(v28 + 35) = 0;
  if (qword_28157FC78 != -1)
  {
    swift_once();
  }

  v29 = *(v21 + 36);
  v82 = v25;
  v30 = &v25[v29];
  *v30 = qword_28157FC80;
  *(v30 + 1) = sub_26A4D82F0;
  *(v30 + 2) = 0;
  v31 = *(a1 + v79[12]);
  sub_26A7E70C0(v20);
  v31(v93, v20);
  v27(v20, v17);
  memcpy(v92, v93, sizeof(v92));
  memcpy(v87, v92, sizeof(v87));
  memcpy(v93, v92, 0xFAuLL);
  sub_26A505008(v93);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB870);
  v33 = sub_26A7E82CC();
  v34 = v67;
  v66[1] = v33;
  v66[2] = v32;
  sub_26A850AF8();
  if (qword_2803A8FE0 != -1)
  {
    swift_once();
  }

  v35 = v81;
  v36 = (v81 + *(v80 + 36));
  sub_26A505CD4(&unk_2803B8848, (v36 + 24), &qword_2803AA880);
  sub_26A6AEE74(v89);
  sub_26A505D1C();
  memcpy(v36, v89, 0xBFuLL);
  v36[34] = sub_26A80A810;
  v36[35] = 0;
  v37 = v72;
  v38 = *(v71 + 32);
  v38(v35, v34, v72);
  LOBYTE(v36) = sub_26A850258();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  sub_26A84ED48();
  v39 = v70;
  v40 = v35 + *(v70 + 36);
  *v40 = v36;
  *(v40 + 8) = v41;
  *(v40 + 16) = v42;
  *(v40 + 24) = v43;
  *(v40 + 32) = v44;
  *(v40 + 40) = 0;
  v45 = v79[13];
  memcpy(v85, (a1 + v45), 0xFAuLL);
  memcpy(v84, (a1 + v45), sizeof(v84));
  memcpy(v86, (a1 + v45), 0xFAuLL);
  sub_26A505008(v86);
  sub_26A505CD4(v85, v83, &qword_2803AB870);
  v46 = v69;
  sub_26A850AF8();
  memcpy(v83, v84, 0xFAuLL);
  sub_26A505D1C();
  if (qword_2803A8FE8 != -1)
  {
    swift_once();
  }

  v47 = v74;
  v48 = &v74[*(v80 + 36)];
  sub_26A505CD4(&unk_2803B8898, (v48 + 192), &qword_2803AA880);
  sub_26A6AEE74(v90);
  memcpy(v48, v90, 0xBFuLL);
  *(v48 + 34) = sub_26A80A810;
  *(v48 + 35) = 0;
  v38(v47, v46, v37);
  LOBYTE(v48) = sub_26A850258();
  sub_26A84ED48();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v68;
  sub_26A505C8C(v47, v68, &qword_2803B8A38);
  v58 = v57 + *(v39 + 36);
  *v58 = v48;
  *(v58 + 8) = v50;
  *(v58 + 16) = v52;
  *(v58 + 24) = v54;
  *(v58 + 32) = v56;
  *(v58 + 40) = 0;
  v59 = v75;
  sub_26A505C8C(v57, v75, &qword_2803B8A80);
  v60 = v73;
  sub_26A505CD4(v82, v73, &qword_2803B8A70);
  v61 = v76;
  sub_26A505CD4(v81, v76, &qword_2803B8A80);
  v62 = v77;
  sub_26A505CD4(v59, v77, &qword_2803B8A80);
  v63 = v78;
  sub_26A505CD4(v60, v78, &qword_2803B8A70);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8B18);
  sub_26A505CD4(v61, v63 + *(v64 + 48), &qword_2803B8A80);
  sub_26A505CD4(v62, v63 + *(v64 + 64), &qword_2803B8A80);
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7E4288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A00);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = (v55 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A08);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v55 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A10) - 8;
  MEMORY[0x28223BE20](v58);
  v59 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = v55 - v12;
  MEMORY[0x28223BE20](v13);
  v64 = v55 - v14;
  v15 = sub_26A84B1D8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA488);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v63 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = (v55 - v23);
  v25 = *(a1 + *(type metadata accessor for FactItemShortNumberView() + 64));
  (*(v16 + 104))(v18, *MEMORY[0x277D62B38], v15);
  KeyPath = swift_getKeyPath();
  v27 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438) + 36));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
  (*(v16 + 32))(v27 + v28, v18, v15);
  __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v15);
  *v27 = KeyPath;
  v29 = v24;
  *v24 = v25;
  v30 = swift_getKeyPath();
  v31 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA448) + 36);
  *v31 = v30;
  v31[8] = 1;
  v32 = swift_getKeyPath();
  v33 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA430) + 36);
  *v33 = v32;
  v33[8] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v35 = v56;
  v36 = (v56 + *(v34 + 28));
  v37 = v36[4];
  v38 = swift_getKeyPath();
  v39 = v24 + *(v20 + 44);
  v55[1] = v24;
  *v39 = v38;
  v39[8] = 0;
  *(v39 + 2) = v37;

  v40 = sub_26A84FC08();
  v41 = *v36;
  *v9 = v40;
  *(v9 + 1) = v41;
  v9[16] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A18);
  sub_26A7E4920(v35, &v9[*(v42 + 44)]);
  sub_26A851458();
  sub_26A84F628();
  v43 = v57;
  sub_26A505C8C(v9, v57, &qword_2803B8A08);
  memcpy((v43 + *(v58 + 44)), __src, 0x70uLL);
  v44 = v64;
  sub_26A505C8C(v43, v64, &qword_2803B8A10);
  v45 = sub_26A84FC18();
  v46 = v60;
  *v60 = v45;
  *(v46 + 8) = 0;
  *(v46 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A20);
  sub_26A7E51EC();
  v47 = v29;
  v48 = v63;
  sub_26A505CD4(v47, v63, &qword_2803AA488);
  v49 = v59;
  sub_26A505CD4(v44, v59, &qword_2803B8A10);
  v50 = v61;
  sub_26A505CD4(v46, v61, &qword_2803B8A00);
  v51 = v48;
  v52 = v62;
  sub_26A505CD4(v51, v62, &qword_2803AA488);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A28);
  sub_26A505CD4(v49, v52 + *(v53 + 48), &qword_2803B8A10);
  sub_26A505CD4(v50, v52 + *(v53 + 64), &qword_2803B8A00);
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7E4920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A30);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = v56 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A38);
  MEMORY[0x28223BE20](v59);
  v68 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v67 = v56 - v10;
  MEMORY[0x28223BE20](v11);
  v60 = v56 - v12;
  MEMORY[0x28223BE20](v13);
  v66 = v56 - v14;
  MEMORY[0x28223BE20](v15);
  v71 = v56 - v16;
  v17 = sub_26A84B058();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A68);
  MEMORY[0x28223BE20](v21);
  v62 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v56 - v24;
  v70 = type metadata accessor for FactItemShortNumberView();
  v26 = *(a1 + v70[11]);
  v58 = a1;
  sub_26A7E70C0(v20);
  v26(v82, v20);
  v27 = *(v18 + 8);
  v27(v20, v17);
  memcpy(v80, v82, 0xFAuLL);
  memcpy(v82, v80, 0xFAuLL);
  sub_26A4EC4B4();
  sub_26A850AF8();
  if (qword_2803A8FD8 != -1)
  {
    swift_once();
  }

  v28 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A58) + 36)];
  sub_26A505CD4(&unk_2803B87F8, (v28 + 192), &qword_2803AA880);
  sub_26A6AEE74(v77);
  sub_26A4EC508(v80);
  memcpy(v28, v77, 0xBFuLL);
  *(v28 + 34) = sub_26A80A810;
  *(v28 + 35) = 0;
  if (qword_28157FC78 != -1)
  {
    swift_once();
  }

  v63 = v5;
  v29 = qword_28157FC80;
  v30 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A70) + 36)];
  *v30 = v29;
  v30[1] = sub_26A4D82F0;
  v30[2] = 0;
  v31 = sub_26A84FBD8();
  v32 = *(v21 + 36);
  v61 = v25;
  v33 = &v25[v32];
  *v33 = v31;
  v33[1] = sub_26A4D82F0;
  v33[2] = 0;
  v34 = v58;
  v35 = *(v58 + v70[12]);
  sub_26A7E70C0(v20);
  v35(v82, v20);
  v27(v20, v17);
  memcpy(v81, v82, sizeof(v81));
  memcpy(v76, v81, sizeof(v76));
  memcpy(v82, v81, 0xFAuLL);
  sub_26A505008(v82);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB870);
  v37 = sub_26A7E82CC();
  v38 = v57;
  v56[0] = v37;
  v56[1] = v36;
  sub_26A850AF8();
  if (qword_2803A8FE0 != -1)
  {
    swift_once();
  }

  v39 = v59;
  v40 = v71;
  v41 = &v71[*(v59 + 36)];
  sub_26A505CD4(&unk_2803B8848, (v41 + 192), &qword_2803AA880);
  sub_26A6AEE74(v78);
  sub_26A505D1C();
  memcpy(v41, v78, 0xBFuLL);
  *(v41 + 34) = sub_26A80A810;
  *(v41 + 35) = 0;
  v42 = *(v64 + 32);
  v43 = v38;
  v44 = v65;
  v42(v40, v43, v65);
  v45 = v70[13];
  memcpy(v74, (v34 + v45), 0xFAuLL);
  memcpy(v73, (v34 + v45), sizeof(v73));
  memcpy(v75, (v34 + v45), 0xFAuLL);
  sub_26A505008(v75);
  sub_26A505CD4(v74, v72, &qword_2803AB870);
  v46 = v63;
  sub_26A850AF8();
  memcpy(v72, v73, 0xFAuLL);
  sub_26A505D1C();
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  v47 = v60;
  v48 = &v60[*(v39 + 36)];
  sub_26A505CD4(&unk_2815887F8, (v48 + 192), &qword_2803AA880);
  sub_26A6AEE74(v79);
  memcpy(v48, v79, 0xBFuLL);
  *(v48 + 34) = sub_26A80A810;
  *(v48 + 35) = 0;
  v42(v47, v46, v44);
  v49 = v66;
  sub_26A505C8C(v47, v66, &qword_2803B8A38);
  v50 = v62;
  sub_26A505CD4(v61, v62, &qword_2803B8A68);
  v51 = v67;
  sub_26A505CD4(v40, v67, &qword_2803B8A38);
  v52 = v68;
  sub_26A505CD4(v49, v68, &qword_2803B8A38);
  v53 = v69;
  sub_26A505CD4(v50, v69, &qword_2803B8A68);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A78);
  sub_26A505CD4(v51, v53 + *(v54 + 48), &qword_2803B8A38);
  sub_26A505CD4(v52, v53 + *(v54 + 64), &qword_2803B8A38);
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

void sub_26A7E51EC()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v40 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A30);
  OUTLINED_FUNCTION_15();
  v38 = v5;
  v39 = v4;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74_0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A38);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  v37 = v8;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27_1();
  v36 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A40);
  v15 = OUTLINED_FUNCTION_79(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v34 - v19);
  v21 = sub_26A84FA28();
  v22 = sub_26A7E2FAC();
  *v20 = v21;
  v20[1] = v22;
  *(v20 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A48);
  sub_26A7E6098();
  v23 = *(type metadata accessor for FactItemShortNumberView() + 56);
  memcpy(v44, (v2 + v23), 0xFAuLL);
  memcpy(v42, (v2 + v23), sizeof(v42));
  memcpy(v45, (v2 + v23), 0xFAuLL);
  sub_26A505008(v45);
  sub_26A505CD4(v44, v41, &qword_2803AB870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB870);
  sub_26A7E82CC();
  sub_26A850AF8();
  memcpy(v41, v42, 0xFAuLL);
  sub_26A505D1C();
  if (qword_2803A8FF0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B88E8, &v11[*(v35 + 36) + 192], &qword_2803AA880);
  v24 = sub_26A6AEE74(v43);
  OUTLINED_FUNCTION_51_8(v24, v43);
  OUTLINED_FUNCTION_1_101();
  (*(v38 + 32))(v11, v0, v39);
  OUTLINED_FUNCTION_46_0();
  sub_26A505C8C(v25, v26, v27);
  sub_26A505CD4(v20, v17, &qword_2803B8A40);
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v28, v29, v30);
  sub_26A505CD4(v17, v40, &qword_2803B8A40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A50);
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v31, v32, v33);
  OUTLINED_FUNCTION_111();
  sub_26A505D1C();
  sub_26A505D1C();
  OUTLINED_FUNCTION_111();
  sub_26A505D1C();
  sub_26A505D1C();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7E55E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v83 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A80);
  MEMORY[0x28223BE20](v79);
  v84 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v72 - v5;
  MEMORY[0x28223BE20](v6);
  v81 = &v72 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A40);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v91 = (&v72 - v11);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A30);
  v92 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v74 = &v72 - v14;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A38);
  MEMORY[0x28223BE20](v85);
  v80 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v72 - v17;
  MEMORY[0x28223BE20](v18);
  v76 = &v72 - v19;
  MEMORY[0x28223BE20](v20);
  v90 = &v72 - v21;
  v22 = sub_26A84B1D8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA430);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v89 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = (&v72 - v30);
  v32 = type metadata accessor for FactItemShortNumberView();
  v72 = *(a1 + *(v32 + 64));
  (*(v23 + 104))(v25, *MEMORY[0x277D62B38], v22);
  KeyPath = swift_getKeyPath();
  v34 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438) + 36));
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
  (*(v23 + 32))(v34 + v35, v25, v22);
  __swift_storeEnumTagSinglePayload(v34 + v35, 0, 1, v22);
  *v34 = KeyPath;
  *v31 = v72;
  v36 = swift_getKeyPath();
  v37 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA448) + 36);
  *v37 = v36;
  v37[8] = 1;
  v38 = swift_getKeyPath();
  v39 = *(v27 + 44);
  v88 = v31;
  v40 = v31 + v39;
  v41 = v73;
  *v40 = v38;
  v40[8] = 0;
  v75 = v32;
  v42 = *(v32 + 56);
  memcpy(v101, (v41 + v42), 0xFAuLL);
  memcpy(v98, (v41 + v42), sizeof(v98));
  memcpy(v102, (v41 + v42), 0xFAuLL);
  sub_26A505008(v102);

  sub_26A505CD4(v101, v97, &qword_2803AB870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB870);
  sub_26A7E82CC();
  v43 = v74;
  sub_26A850AF8();
  memcpy(v95, v98, sizeof(v95));
  sub_26A505D1C();
  if (qword_2803A8FF0 != -1)
  {
    swift_once();
  }

  v44 = v76;
  v45 = &v76[*(v85 + 36)];
  sub_26A505CD4(&unk_2803B88E8, (v45 + 192), &qword_2803AA880);
  sub_26A6AEE74(v99);
  memcpy(v45, v99, 0xBFuLL);
  *(v45 + 34) = sub_26A80A810;
  *(v45 + 35) = 0;
  v46 = *(v92 + 32);
  v92 += 32;
  v46(v44, v43, v87);
  sub_26A505C8C(v44, v90, &qword_2803B8A38);
  v47 = sub_26A84FA28();
  v48 = v91;
  *v91 = v47;
  v48[1] = 0x3FF0000000000000;
  *(v48 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A48);
  sub_26A7E6098();
  sub_26A7E6580();
  v76 = v49;
  v50 = *(v75 + 52);
  memcpy(v96, (v41 + v50), 0xFAuLL);
  memcpy(v94, (v41 + v50), sizeof(v94));
  memcpy(v97, (v41 + v50), 0xFAuLL);
  sub_26A505008(v97);
  sub_26A505CD4(v96, v93, &qword_2803AB870);
  sub_26A850AF8();
  memcpy(v93, v94, 0xFAuLL);
  sub_26A505D1C();
  if (qword_2803A8FE8 != -1)
  {
    swift_once();
  }

  v51 = v77;
  v52 = &v77[*(v85 + 36)];
  sub_26A505CD4(&unk_2803B8898, (v52 + 192), &qword_2803AA880);
  sub_26A6AEE74(v100);
  memcpy(v52, v100, 0xBFuLL);
  *(v52 + 34) = sub_26A80A810;
  *(v52 + 35) = 0;
  v46(v51, v86, v87);
  v53 = sub_26A850258();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  sub_26A84ED48();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v78;
  sub_26A505C8C(v51, v78, &qword_2803B8A38);
  v63 = v62 + *(v79 + 36);
  *v63 = v53;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  v64 = v81;
  sub_26A505C8C(v62, v81, &qword_2803B8A80);
  v65 = v89;
  sub_26A505CD4(v88, v89, &qword_2803AA430);
  v66 = v80;
  sub_26A505CD4(v90, v80, &qword_2803B8A38);
  v67 = v82;
  sub_26A505CD4(v91, v82, &qword_2803B8A40);
  v68 = v84;
  sub_26A505CD4(v64, v84, &qword_2803B8A80);
  v69 = v83;
  sub_26A505CD4(v65, v83, &qword_2803AA430);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A88);
  sub_26A505CD4(v66, v69 + v70[12], &qword_2803B8A38);
  sub_26A505CD4(v67, v69 + v70[16], &qword_2803B8A40);
  *(v69 + v70[20]) = v76;
  sub_26A505CD4(v68, v69 + v70[24], &qword_2803B8A80);

  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();

  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

void sub_26A7E6098()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v46 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A30);
  OUTLINED_FUNCTION_15();
  v42 = v5;
  v43 = v4;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  v39 = &v38 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A38);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v45 = v9;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27_1();
  v44 = v11;
  OUTLINED_FUNCTION_25_2();
  v12 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A58);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19();
  v41 = v18;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  v38 = type metadata accessor for FactItemShortNumberView();
  v22 = *(v2 + *(v38 + 40));
  sub_26A7E70C0(v0);
  v22(v53, v0);
  (*(v14 + 8))(v0, v12);
  memcpy(v51, v53, 0xFAuLL);
  memcpy(v53, v51, 0xFAuLL);
  sub_26A4EC4B4();
  sub_26A850AF8();
  if (qword_2803A8FF8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B8938, &v21[*(v16 + 36) + 192], &qword_2803AA880);
  sub_26A6AEE74(v49);
  v23 = sub_26A4EC508(v51);
  OUTLINED_FUNCTION_51_8(v23, v49);
  OUTLINED_FUNCTION_1_101();
  v24 = *(v38 + 60);
  memcpy(v52, (v2 + v24), 0xFAuLL);
  memcpy(v48, (v2 + v24), sizeof(v48));
  memcpy(v53, (v2 + v24), 0xFAuLL);
  sub_26A505008(v53);
  sub_26A505CD4(v52, v47, &qword_2803AB870);
  v25 = OUTLINED_FUNCTION_8_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(v25);
  sub_26A7E82CC();
  v26 = v39;
  sub_26A850AF8();
  memcpy(v47, v48, 0xFAuLL);
  OUTLINED_FUNCTION_7_0();
  sub_26A505D1C();
  if (qword_2803A8FD0 != -1)
  {
    swift_once();
  }

  v27 = v44;
  sub_26A505CD4(&unk_2803B87A8, v44 + *(v40 + 36) + 192, &qword_2803AA880);
  v28 = sub_26A6AEE74(v50);
  OUTLINED_FUNCTION_51_8(v28, v50);
  OUTLINED_FUNCTION_1_101();
  (*(v42 + 32))(v27, v26, v43);
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v29, v30, v31);
  v32 = v45;
  sub_26A505CD4(v27, v45, &qword_2803B8A38);
  v33 = v46;
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v34, v35, v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A60);
  sub_26A505CD4(v32, v33 + *(v37 + 48), &qword_2803B8A38);
  OUTLINED_FUNCTION_22_33();
  sub_26A505D1C();
  OUTLINED_FUNCTION_111();
  sub_26A505D1C();
  OUTLINED_FUNCTION_24_27();
  sub_26A505D1C();
  OUTLINED_FUNCTION_111();
  sub_26A505D1C();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A7E6580()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A58);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19();
  v113 = v3;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27_1();
  v114 = v5;
  OUTLINED_FUNCTION_25_2();
  v6 = type metadata accessor for FactItemShortNumberView();
  OUTLINED_FUNCTION_15();
  v106 = v7;
  MEMORY[0x28223BE20](v8);
  v107 = v9;
  v108 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB8E8);
  OUTLINED_FUNCTION_15();
  v111 = v11;
  v112 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v109 = v12;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_27_1();
  v110 = v14;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  if (qword_2803A8BD8 != -1)
  {
    swift_once();
  }

  *&v118 = *(&xmmword_2803B00A0 + 1);
  *&v119 = xmmword_2803B00A0;
  v117 = byte_2803B00B0;
  v116 = qword_2803B00B8;
  v21 = *(v0 + v6[12]);
  sub_26A7E70C0(v20);
  v21(v126, v20);
  v22 = *(v16 + 8);
  v23 = OUTLINED_FUNCTION_22_33();
  v22(v23);
  memcpy(v127, v126, sizeof(v127));
  memcpy(v128, v126, 0xFAuLL);
  if (sub_26A505008(v128) == 1)
  {
    goto LABEL_8;
  }

  if (!v128[9])
  {
    sub_26A505D1C();
LABEL_8:
    sub_26A7E70C0(v20);
    v21(v125, v20);
    v34 = OUTLINED_FUNCTION_22_33();
    v22(v34);
    memcpy(v123, v125, sizeof(v123));
    memcpy(v124, v125, 0xFAuLL);
    if (sub_26A505008(v124) == 1)
    {
      OUTLINED_FUNCTION_33_17();
      v21(v122, v20);
      v35 = OUTLINED_FUNCTION_22_33();
      v22(v35);
      memcpy(v126, v122, 0xFAuLL);
      memcpy(v122, v126, 0xFAuLL);
      sub_26A4EC4B4();
      v36 = v114;
      sub_26A850AF8();
      if (qword_2803A8FD8 != -1)
      {
        swift_once();
      }

      sub_26A505CD4(&unk_2803B87F8, v36 + *(v115 + 36) + 192, &qword_2803AA880);
      sub_26A6AEE74(v122);
      v37 = sub_26A4EC508(v126);
      OUTLINED_FUNCTION_51_8(v37, v122);
      OUTLINED_FUNCTION_1_101();
      OUTLINED_FUNCTION_111();
      sub_26A505CD4(v38, v39, v40);
      sub_26A7E99D8();
      OUTLINED_FUNCTION_31_11();
      sub_26A851248();
      OUTLINED_FUNCTION_7_0();
      sub_26A505D1C();
    }

    else
    {
      memcpy(v126, v124, 0xFAuLL);
      v41 = *(v0 + v6[11]);
      sub_26A7E70C0(v20);
      v41(v122, v20);
      v42 = OUTLINED_FUNCTION_22_33();
      v22(v42);
      memcpy(v125, v122, 0xFAuLL);
      v43 = v0 + v6[17];
      v44 = *v43;
      v45 = *(v43 + 8);
      LOBYTE(v122[0]) = v44;
      *(&v122[0] + 1) = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
      sub_26A851058();
      if (v121[0] == 1)
      {
        v46 = sub_26A84FC08();
        sub_26A7E72B8(v125, v126, v122);
        v47 = v122[0];
        v122[0] = v46;
        LOBYTE(v122[1]) = 0;
        *(&v122[1] + 8) = v47;

        v48 = OUTLINED_FUNCTION_31_11();
        __swift_instantiateConcreteTypeFromMangledNameV2(v48);
        sub_26A506A30();
        sub_26A851248();
        sub_26A4EC508(v125);
        sub_26A505D1C();
      }

      else
      {
        v49 = sub_26A84FA78();
        v121[0] = 0;
        sub_26A7E7678(v125, v119, v118, v117, v116, v126, v122);
        v50 = *&v122[1];
        v51 = BYTE8(v122[1]);
        v118 = v122[2];
        v119 = v122[0];
        LOBYTE(v122[0]) = BYTE8(v122[1]);
        v52 = v121[0];
        v53 = v108;
        sub_26A7E9ABC(v1, v108, type metadata accessor for FactItemShortNumberView);
        v54 = (*(v106 + 80) + 16) & ~*(v106 + 80);
        v55 = swift_allocObject();
        sub_26A7E9B18(v53, v55 + v54);
        v56 = sub_26A851448();
        v122[0] = v49;
        LOBYTE(v122[1]) = v52;
        *(&v122[1] + 8) = v119;
        *(&v122[2] + 1) = v50;
        LOBYTE(v122[3]) = v51;
        *(&v122[3] + 8) = v118;
        *(&v122[4] + 1) = sub_26A7E9B7C;
        *&v122[5] = v55;
        *(&v122[5] + 1) = v56;
        *&v122[6] = v57;
        memcpy(v121, v122, sizeof(v121));
        sub_26A505CD4(v122, &v120, &qword_2803B8A98);
        v58 = OUTLINED_FUNCTION_8_30();
        __swift_instantiateConcreteTypeFromMangledNameV2(v58);
        sub_26A7E9BF0();
        sub_26A851248();
        sub_26A4EC508(v125);
        sub_26A505D1C();
        OUTLINED_FUNCTION_7_0();
        sub_26A505D1C();
      }
    }

    goto LABEL_26;
  }

  v107 = v128[9];
  v105 = v128[7];
  v106 = v128[6];
  v104 = v128[8];
  OUTLINED_FUNCTION_33_17();
  v21(v125, v20);
  v24 = OUTLINED_FUNCTION_22_33();
  v22(v24);
  memcpy(v126, v125, 0xFAuLL);
  v25 = v126[6];
  v26 = v126[7];
  v27 = v126[8];
  if (v126[9])
  {
    sub_26A4EF6C0(v126[6], v126[7], v126[8] & 1);

    sub_26A8504A8();
    v28 = sub_26A850738();
    v30 = v29;
    v32 = v31;
    v115 = v33;

    sub_26A4EC448(v25, v26, v27 & 1);

    v113 = v32 & 1;
    v114 = v28;
    v108 = v30;
  }

  else
  {
    v114 = v126[6];
    v115 = 0;
    v113 = v126[8];
    v108 = v126[7];
  }

  v60 = v104;
  v59 = v105;
  v61 = v106;
  sub_26A4EF6C0(v106, v105, v104 & 1);

  sub_26A8502F8();
  v62 = sub_26A850738();
  v64 = v63;
  v66 = v65;
  v68 = v67;

  sub_26A4EC448(v61, v59, v60 & 1);

  LODWORD(v104) = v66;
  v69 = v66 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB910);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_26A8570F0;
  v72 = v113;
  v71 = v114;
  v73 = v108;
  *(v70 + 32) = v114;
  *(v70 + 40) = v73;
  v74 = v115;
  *(v70 + 48) = v72;
  *(v70 + 56) = v74;
  *(v70 + 64) = v62;
  *(v70 + 72) = v64;
  *(v70 + 80) = v69;
  *(v70 + 88) = v68;
  sub_26A505318(v71, v73, v72, v74);
  v105 = v64;
  v106 = v62;
  sub_26A4EF6C0(v62, v64, v69);
  v107 = v68;

  v75 = 0;
  v76 = MEMORY[0x277D84F90];
LABEL_17:
  v77 = 32 * v75 + 56;
  while (++v75 != 3)
  {
    v78 = v77 + 32;
    v79 = *(v70 + v77);
    v77 += 32;
    if (v79)
    {
      v115 = v74;
      v81 = *(v70 + v78 - 56);
      v80 = *(v70 + v78 - 48);
      v82 = *(v70 + v78 - 40);
      sub_26A4EF6C0(v81, v80, v82 & 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A11D4();
        v76 = v85;
      }

      v83 = *(v76 + 16);
      if (v83 >= *(v76 + 24) >> 1)
      {
        sub_26A7A11D4();
        v76 = v86;
      }

      *(v76 + 16) = v83 + 1;
      v84 = v76 + 32 * v83;
      *(v84 + 32) = v81;
      *(v84 + 40) = v80;
      *(v84 + 48) = v82 & 1;
      *(v84 + 56) = v79;
      v74 = v115;
      goto LABEL_17;
    }
  }

  swift_setDeallocating();
  sub_26A7A0D60();
  sub_26A503434(v119, v118, v117, v116, v76);
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;

  v125[0] = v88;
  v125[1] = v90;
  LOBYTE(v125[2]) = v92 & 1;
  v125[3] = v94;
  v95 = MEMORY[0x277CE0BD8];
  v96 = MEMORY[0x277CE0BC8];
  v97 = v110;
  sub_26A850AF8();
  v98 = OUTLINED_FUNCTION_8_30();
  sub_26A4EC448(v98, v99, v92 & 1);

  v101 = v111;
  v100 = v112;
  v102 = OUTLINED_FUNCTION_31_11();
  v103(v102);
  v125[0] = v95;
  v125[1] = v96;
  swift_getOpaqueTypeConformance2();
  sub_26A851248();
  sub_26A4EC508(v126);
  sub_26A505D1C();
  sub_26A4EC448(v106, v105, v104 & 1);

  sub_26A506720(v114, v108, v113, v74);
  (*(v101 + 8))(v97, v100);
LABEL_26:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7E70C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for FactItemShortNumberView() + 24);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v15[1];
  }

  if ((v8 - 1) >= 8)
  {
    v11 = sub_26A851E98();
    sub_26A7A6570(v11, 1, "SnippetUI/Context.swift", 23, 2, 635, "idiom", 5, 2);
    v10 = MEMORY[0x277D62A18];
  }

  else
  {
    v10 = qword_279CA2BF8[v8 - 1];
  }

  v12 = *v10;
  v13 = sub_26A84B058();
  return (*(*(v13 - 8) + 104))(a1, v12, v13);
}

uint64_t sub_26A7E72B8@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a2;
  v35 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AC8);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v30 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AD0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = sub_26A8504A8();
  KeyPath = swift_getKeyPath();
  memcpy(v37, a1, 0xFAuLL);
  v37[32] = KeyPath;
  v37[33] = v15;
  sub_26A4EC458(a1, v38);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB918);
  v18 = sub_26A7E9CD4();
  sub_26A850AF8();
  memcpy(v38, v37, 0x110uLL);
  sub_26A505D1C();
  (*(v9 + 16))(v11, v14, v8);
  v37[0] = v17;
  v37[1] = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_26A851248();
  (*(v9 + 8))(v14, v8);
  LODWORD(a1) = sub_26A84FED8();
  memcpy(v36, v31, 0xFAuLL);
  HIDWORD(v36[31]) = a1;
  sub_26A4EC458(v31, v37);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AE0);
  v21 = sub_26A7E9D8C();
  v22 = v30;
  sub_26A850AF8();
  memcpy(v37, v36, 0x100uLL);
  sub_26A505D1C();
  v23 = v33;
  v24 = v34;
  (*(v33 + 16))(v32, v22, v34);
  v36[0] = v20;
  v36[1] = v21;
  swift_getOpaqueTypeConformance2();
  v25 = v24;
  v26 = sub_26A851248();
  result = (*(v23 + 8))(v22, v25);
  v28 = v35;
  *v35 = v19;
  v28[1] = v26;
  return result;
}

uint64_t sub_26A7E7678@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, const void *a6@<X5>, uint64_t *a7@<X8>)
{
  v37 = a6;
  v45 = a5;
  v44 = a4;
  v42 = a2;
  v43 = a3;
  v41 = a7;
  v46 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AC8);
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AD0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v19 = sub_26A8504A8();
  KeyPath = swift_getKeyPath();
  memcpy(v48, a1, 0xFAuLL);
  v48[32] = KeyPath;
  v48[33] = v19;
  sub_26A4EC458(a1, v49);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB918);
  v22 = sub_26A7E9CD4();
  sub_26A850AF8();
  memcpy(v49, v48, 0x110uLL);
  sub_26A505D1C();
  (*(v13 + 16))(v15, v18, v12);
  v48[0] = v21;
  v48[1] = v22;
  swift_getOpaqueTypeConformance2();
  v23 = sub_26A851248();
  (*(v13 + 8))(v18, v12);
  LODWORD(a1) = sub_26A84FED8();
  memcpy(v47, v37, 0xFAuLL);
  HIDWORD(v47[31]) = a1;
  sub_26A4EC458(v37, v48);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AE0);
  v25 = sub_26A7E9D8C();
  v26 = v36;
  sub_26A850AF8();
  memcpy(v48, v47, 0x100uLL);
  sub_26A505D1C();
  v27 = v39;
  v28 = v40;
  (*(v39 + 16))(v38, v26, v40);
  v47[0] = v24;
  v47[1] = v25;
  swift_getOpaqueTypeConformance2();
  v29 = v28;
  v30 = sub_26A851248();
  (*(v27 + 8))(v26, v29);
  LOBYTE(v29) = v46;
  v31 = v41;
  v32 = v42;
  *v41 = v23;
  v31[1] = v32;
  v33 = v43;
  v31[2] = v43;
  *(v31 + 24) = v29;
  v31[4] = v45;
  v31[5] = v30;
  v34 = v33;
  sub_26A4EF6C0(v32, v33, v44 & 1);

  sub_26A4EF6C0(v32, v34, v29);

  sub_26A4EC448(v32, v34, v29);
}

uint64_t sub_26A7E7ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v5 = sub_26A84F088();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FactItemShortNumberView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = sub_26A850DF8();
  sub_26A7E9ABC(a2, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FactItemShortNumberView);
  (*(v6 + 16))(v8, v18, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_26A7E9B18(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  result = (*(v6 + 32))(v15 + v14, v8, v5);
  *a3 = v12;
  a3[1] = sub_26A7E9E44;
  a3[2] = v15;
  a3[3] = 0;
  a3[4] = 0;
  return result;
}

uint64_t sub_26A7E7CB8()
{
  sub_26A7E05B8();
  type metadata accessor for FactItemShortNumberView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  return sub_26A851068();
}

unint64_t sub_26A7E7D3C(uint64_t a1)
{
  result = sub_26A7EA138();
  *(a1 + 8) = result;
  return result;
}

void sub_26A7E7DBC()
{
  sub_26A504650(319, &qword_2803AB738, type metadata accessor for FactItemConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A7E8054(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
    if (v1 <= 0x3F)
    {
      sub_26A504650(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A7E8054(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A4D27F4();
          if (v4 <= 0x3F)
          {
            sub_26A504650(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_26A5046B4();
              if (v6 <= 0x3F)
              {
                sub_26A7E8054(319, &qword_2803AB748, &type metadata for PartialText, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_26A7E8054(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_26A7E8054(319, &qword_2803B3840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_26A7E8054(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26A7E80A4()
{
  result = qword_2803B89B8;
  if (!qword_2803B89B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8998);
    sub_26A7E815C();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B89B8);
  }

  return result;
}

unint64_t sub_26A7E815C()
{
  result = qword_2803B89C0;
  if (!qword_2803B89C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8990);
    sub_26A7E81E8();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B89C0);
  }

  return result;
}

unint64_t sub_26A7E81E8()
{
  result = qword_2803B89C8;
  if (!qword_2803B89C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8988);
    sub_26A506A30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B89C8);
  }

  return result;
}

unint64_t sub_26A7E82CC()
{
  result = qword_2803AB898;
  if (!qword_2803AB898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB870);
    sub_26A4EC4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB898);
  }

  return result;
}

void sub_26A7E8350()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v49 = v3;
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v48 = (v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = sub_26A84CCD8();
  OUTLINED_FUNCTION_15();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v19 = v18 - v17;
  v20 = type metadata accessor for FactItemShortNumberView();
  v21 = OUTLINED_FUNCTION_79(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_41();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA20);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v26);
  v28 = &v47 - v27;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA28);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19();
  v52 = v30;
  OUTLINED_FUNCTION_92();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v47 - v33;
  (*(v15 + 16))(v19, v1, v13, v32);
  v51 = v24;
  sub_26A7E14B8();
  v54 = v1;
  v35 = v50;
  sub_26A84CCB8();
  sub_26A505C8C(v12, v9, &qword_2803B3800);
  if (__swift_getEnumTagSinglePayload(v9, 1, v35) == 1)
  {
    sub_26A505D1C();
    KeyPath = swift_getKeyPath();
    v37 = &v28[*(v25 + 36)];
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v39 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v37 + v38, 1, 1, v39);
    *v37 = KeyPath;
  }

  else
  {
    v40 = v48;
    v41 = *(v49 + 32);
    v41(v48, v9, v35);
    v42 = swift_getKeyPath();
    v43 = &v28[*(v25 + 36)];
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v41(v43 + v44, v40, v35);
    v45 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v43 + v44, 0, 1, v45);
    *v43 = v42;
  }

  sub_26A7E9B18(v51, v28);
  v46 = sub_26A84CC48();
  sub_26A4DD7EC(v46);

  sub_26A505D1C();
  sub_26A84CC58();

  sub_26A505CD4(v34, v52, &qword_2803AAA28);
  sub_26A7E9F0C();
  sub_26A851248();
  sub_26A505D1C();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A7E87C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v38 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A86D390;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v4 = swift_initStackObject();
  v38 = xmmword_26A8570D0;
  *(v4 + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v5 = qword_281588968;
  *(v4 + 32) = qword_281588968;
  v6 = byte_281588970;
  *(v4 + 40) = byte_281588970;
  sub_26A4E324C(v5, v6);
  sub_26A621A9C(v4);
  *(inited + 32) = v7;
  sub_26A850408();
  sub_26A8503B8();
  v8 = sub_26A850428();

  v9 = sub_26A84FED8();
  v10 = MEMORY[0x277CE04F8];
  v11 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v11;
  *(inited + 48) = v9;
  *(inited + 40) = v8;
  v12 = swift_initStackObject();
  *(v12 + 16) = v38;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v13 = qword_281588998;
  *(v12 + 32) = qword_281588998;
  v14 = byte_2815889A0;
  *(v12 + 40) = byte_2815889A0;
  sub_26A4E324C(v13, v14);
  sub_26A621A9C(v12);
  *(inited + 88) = v15;
  v16 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v16);
  sub_26A8503E8();
  sub_26A505D1C();
  sub_26A8504C8();

  sub_26A8503A8();
  v17 = sub_26A850428();

  v18 = sub_26A84FEA8();
  *(inited + 128) = v10;
  *(inited + 136) = v11;
  *(inited + 104) = v18;
  *(inited + 96) = v17;
  v19 = swift_initStackObject();
  *(v19 + 16) = v38;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v20 = qword_281588938;
  *(v19 + 32) = qword_281588938;
  v21 = byte_281588940;
  *(v19 + 40) = byte_281588940;
  sub_26A4E324C(v20, v21);
  sub_26A621A9C(v19);
  *(inited + 144) = v22;
  sub_26A850468();
  v23 = sub_26A8504C8();

  v24 = sub_26A84FEC8();
  *(inited + 184) = v10;
  *(inited + 192) = v11;
  *(inited + 160) = v24;
  *(inited + 152) = v23;
  v25 = swift_initStackObject();
  v38 = xmmword_26A8570F0;
  *(v25 + 16) = xmmword_26A8570F0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v26 = qword_281588978;
  *(v25 + 32) = qword_281588978;
  v27 = byte_281588980;
  *(v25 + 40) = byte_281588980;
  *(v25 + 48) = 1;
  *(v25 + 56) = 3;
  sub_26A4E324C(v26, v27);
  sub_26A621A9C(v25);
  *(inited + 200) = v28;
  sub_26A850408();
  sub_26A8504C8();

  sub_26A8503A8();
  v29 = sub_26A850428();

  *(inited + 240) = &type metadata for TextVibrancyShapeStyle;
  v30 = sub_26A573830();
  *(inited + 248) = v30;
  *(inited + 216) = 1;
  *(inited + 208) = v29;
  v31 = swift_initStackObject();
  *(v31 + 16) = v38;
  v32 = qword_281588968;
  *(v31 + 32) = qword_281588968;
  v33 = byte_281588970;
  *(v31 + 40) = byte_281588970;
  *(v31 + 48) = 1;
  *(v31 + 56) = 3;
  sub_26A4E324C(v32, v33);
  sub_26A621A9C(v31);
  *(inited + 256) = v34;
  sub_26A850328();
  sub_26A8504C8();

  sub_26A8503B8();
  v35 = sub_26A850428();

  *(inited + 296) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 304) = v30;
  *(inited + 272) = 1;
  *(inited + 264) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A506A30();
  sub_26A8516A8();
  sub_26A850408();
  sub_26A8504C8();

  sub_26A8503A8();
  v36 = sub_26A850428();

  v37 = sub_26A84FED8();
  v41 = MEMORY[0x277CE04F8];
  v42 = MEMORY[0x277CE04E8];
  v40 = v37;
  v39 = v36;
  sub_26A80D690();
}

uint64_t sub_26A7E8D08()
{
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2815888E8, v10, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A857110;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 1;
  *(v1 + 72) = 4;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A850408();
  v6 = sub_26A84FEA8();
  v7 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v7;
  *(inited + 48) = v6;
  *(inited + 40) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A506A30();
  v8 = sub_26A8516A8();
  sub_26A66DDEC(v8, &unk_2803B87F8);

  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7E8F38()
{
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588848, v23, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A857110;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 1;
  *(v1 + 72) = 4;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A850418();
  v6 = sub_26A84FEC8();
  v7 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v7;
  *(inited + 48) = v6;
  *(inited + 40) = v5;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v9 = qword_281588998;
  *(v8 + 32) = qword_281588998;
  v10 = byte_2815889A0;
  *(v8 + 40) = byte_2815889A0;
  sub_26A4E324C(v9, v10);
  sub_26A621A9C(v8);
  *(inited + 88) = v11;
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588898, v21, &qword_2803AA880);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_26A8570D0;
  v13 = qword_281588998;
  *(v12 + 32) = qword_281588998;
  v14 = byte_2815889A0;
  *(v12 + 40) = byte_2815889A0;
  sub_26A4E324C(v13, v14);

  sub_26A58787C(v15);
  sub_26A5075B0();

  if (v18)
  {
    *(inited + 96) = v18;
    *(inited + 112) = v19;
    *(inited + 128) = v20;
  }

  else
  {
    sub_26A4F20CC(v22, inited + 96);
  }

  sub_26A505D1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A506A30();
  v16 = sub_26A8516A8();
  v22[0] = 0u;
  memset(v21, 0, sizeof(v21));
  sub_26A66DDEC(v16, &unk_2803B8848);

  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7E92DC()
{
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2815887F8, v16, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588848, v14, &qword_2803AA880);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588998;
  *(v5 + 32) = qword_281588998;
  v7 = byte_2815889A0;
  *(v5 + 40) = byte_2815889A0;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v11)
  {
    *(inited + 40) = v11;
    *(inited + 56) = v12;
    *(inited + 72) = v13;
  }

  else
  {
    sub_26A4F20CC(v15, inited + 40);
  }

  sub_26A505D1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A506A30();
  v9 = sub_26A8516A8();
  v15[0] = 0u;
  memset(v14, 0, sizeof(v14));
  sub_26A66DDEC(v9, &unk_2803B8898);

  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7E95CC()
{
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588848, v21, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A857110;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 1;
  *(v1 + 72) = 4;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A850418();
  *(inited + 72) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 80) = sub_26A573830();
  *(inited + 48) = 2;
  *(inited + 40) = v5;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v7 = qword_281588998;
  *(v6 + 32) = qword_281588998;
  v8 = byte_2815889A0;
  *(v6 + 40) = byte_2815889A0;
  sub_26A4E324C(v7, v8);
  sub_26A621A9C(v6);
  *(inited + 88) = v9;
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2815887F8, v19, &qword_2803AA880);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_26A8570D0;
  v11 = qword_281588998;
  *(v10 + 32) = qword_281588998;
  v12 = byte_2815889A0;
  *(v10 + 40) = byte_2815889A0;
  sub_26A4E324C(v11, v12);

  sub_26A58787C(v13);
  sub_26A5075B0();

  if (v16)
  {
    *(inited + 96) = v16;
    *(inited + 112) = v17;
    *(inited + 128) = v18;
  }

  else
  {
    sub_26A4F20CC(v20, inited + 96);
  }

  sub_26A505D1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A506A30();
  v14 = sub_26A8516A8();
  v20[0] = 0u;
  memset(v19, 0, sizeof(v19));
  sub_26A66DDEC(v14, &unk_2803B88E8);

  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7E9970()
{
  if (qword_2803A9048 != -1)
  {
    swift_once();
  }

  return sub_26A505CD4(&unk_2803D28A0, &unk_2803B8938, &qword_2803AA880);
}

unint64_t sub_26A7E99D8()
{
  result = qword_2803B8A90;
  if (!qword_2803B8A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8A58);
    sub_26A4EC4B4();
    swift_getOpaqueTypeConformance2();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8A90);
  }

  return result;
}

uint64_t sub_26A7E9ABC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  v4 = OUTLINED_FUNCTION_211();
  v5(v4);
  return a2;
}

uint64_t sub_26A7E9B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FactItemShortNumberView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7E9B7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FactItemShortNumberView();
  OUTLINED_FUNCTION_79(v4);
  OUTLINED_FUNCTION_33_0();

  return sub_26A7E7ABC(a1, v5, a2);
}

unint64_t sub_26A7E9BF0()
{
  result = qword_2803B8AA0;
  if (!qword_2803B8AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8A98);
    sub_26A506A30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8AA0);
  }

  return result;
}

unint64_t sub_26A7E9CD4()
{
  result = qword_2803B8AD8;
  if (!qword_2803B8AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB918);
    sub_26A4EC4B4();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8AD8);
  }

  return result;
}

unint64_t sub_26A7E9D8C()
{
  result = qword_2803B8AE8;
  if (!qword_2803B8AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8AE0);
    sub_26A4EC4B4();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8AE8);
  }

  return result;
}

uint64_t sub_26A7E9E44()
{
  type metadata accessor for FactItemShortNumberView();
  v0 = sub_26A84F088();
  OUTLINED_FUNCTION_79(v0);

  return sub_26A7E7CB8();
}

unint64_t sub_26A7E9F0C()
{
  result = qword_2803B8B20;
  if (!qword_2803B8B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA28);
    sub_26A7E9FC4();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8B20);
  }

  return result;
}

unint64_t sub_26A7E9FC4()
{
  result = qword_2803B8B28;
  if (!qword_2803B8B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA18);
    sub_26A7EA050();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8B28);
  }

  return result;
}

unint64_t sub_26A7EA050()
{
  result = qword_2803B8B30;
  if (!qword_2803B8B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA20);
    sub_26A7EA138();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8B30);
  }

  return result;
}

unint64_t sub_26A7EA138()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A7EA1AC@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_26A84CCD8();
  OUTLINED_FUNCTION_79(v4);
  OUTLINED_FUNCTION_33_0();
  return sub_26A7E1EC4(a1, a2);
}

uint64_t objectdestroy_70Tm()
{
  sub_26A84CCD8();
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void *sub_26A7EA29C@<X0>(void *a1@<X8>)
{
  v2 = sub_26A84CCD8();
  OUTLINED_FUNCTION_79(v2);
  OUTLINED_FUNCTION_33_0();

  return sub_26A7E1FA4(a1);
}

uint64_t OUTLINED_FUNCTION_5_79()
{
  sub_26A49035C(*v0, *(v0 + 8));
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_26A49035C(v1, v2);
}

uint64_t OUTLINED_FUNCTION_6_70()
{
  sub_26A49035C(*v0, *(v0 + 8));
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_26A49035C(v1, v2);
}

uint64_t OUTLINED_FUNCTION_33_17()
{

  return sub_26A7E70C0(v0);
}

uint64_t OUTLINED_FUNCTION_35_13()
{
  sub_26A4EC448(*(v0 + 168), *(v0 + 176), *(v0 + 184));
}

uint64_t OUTLINED_FUNCTION_37_17()
{
  sub_26A4EC448(*(v0 + 136), *(v0 + 144), *(v0 + 152));
}

uint64_t OUTLINED_FUNCTION_39_10()
{
  sub_26A4EC448(*(v0 + 104), *(v0 + 112), *(v0 + 120));
}

uint64_t OUTLINED_FUNCTION_41_14()
{
  sub_26A4EC448(*(v0 + 48), *(v0 + 56), *(v0 + 64));
}

uint64_t OUTLINED_FUNCTION_48_7()
{
}

uint64_t OUTLINED_FUNCTION_50_8()
{
}

void *OUTLINED_FUNCTION_51_8(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0xBFuLL);
}

double sub_26A7EA624()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8B38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v2 = qword_281588988;
  *(v1 + 32) = qword_281588988;
  v3 = byte_281588990;
  *(v1 + 40) = byte_281588990;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  *(inited + 40) = 0x4034000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v5 = sub_26A8516A8();
  sub_26A80DECC(v5, v7, 0.0);
  result = *v7;
  xmmword_2803D2728 = v7[0];
  *&qword_2803D2738 = v7[1];
  qword_2803D2748 = v8;
  return result;
}

uint64_t FactItemImageRightView.init(number:text1:thumbnail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (qword_2803A8A80 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
  v8 = __swift_project_value_buffer(v7, qword_2803D1A70);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v10 = &a4[*(v9 + 32)];
  sub_26A4DBD68(v8, v10, &qword_2803AB6F0);
  sub_26A6AEE74(__src);
  memcpy(a4, __src, 0xBFuLL);
  sub_26A60E54C(v10 + *(v7 + 36), &a4[*(v9 + 28)]);
  v11 = type metadata accessor for FactItemImageRightView();
  v12 = &a4[v11[5]];
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v34[0] = xmmword_281588758[0];
  v34[1] = unk_281588768;
  v34[2] = xmmword_281588778;
  v34[3] = unk_281588788;
  v35 = xmmword_281588758[0];
  v36 = unk_281588768;
  v37 = xmmword_281588778;
  v38 = unk_281588788;
  v28 = unk_281588788;
  v29 = xmmword_281588778;
  sub_26A4DBD68(v34, v39, &qword_2803A91B0);
  sub_26A6AEE74(v39);
  memcpy(v12, v39, 0xC0uLL);
  *(v12 + 12) = v29;
  *(v12 + 13) = v28;
  v13 = v36;
  *(v12 + 14) = v35;
  *(v12 + 15) = v13;
  v14 = v38;
  *(v12 + 16) = v37;
  *(v12 + 17) = v14;
  v15 = v11[6];
  *&a4[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v16 = v11[7];
  *&a4[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v17 = &a4[v11[8]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  sub_26A4DBD68(a1, v31, &qword_2803A91B8);
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v18 = OUTLINED_FUNCTION_16_5();
    v20 = v19(v18);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_26A4DBD10(v31, &qword_2803A91B8);
    v20 = 0;
  }

  *&a4[v11[9]] = v20;
  sub_26A4DBD68(a2, v31, &qword_2803A91B8);
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v21 = OUTLINED_FUNCTION_16_5();
    v23 = v22(v21);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_26A4DBD10(v31, &qword_2803A91B8);
    v23 = 0;
  }

  *&a4[v11[10]] = v23;
  sub_26A4DBD68(a3, v31, &qword_2803A91B8);
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v24 = OUTLINED_FUNCTION_16_5();
    v26 = v25(v24);
    sub_26A4DBD10(a3, &qword_2803A91B8);
    sub_26A4DBD10(a2, &qword_2803A91B8);
    sub_26A4DBD10(a1, &qword_2803A91B8);
    result = __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    OUTLINED_FUNCTION_4_84(a3);
    OUTLINED_FUNCTION_4_84(a2);
    OUTLINED_FUNCTION_4_84(a1);
    result = OUTLINED_FUNCTION_4_84(v31);
    v26 = 0;
  }

  *&a4[v11[11]] = v26;
  return result;
}

uint64_t type metadata accessor for FactItemImageRightView()
{
  result = qword_2803B8B98;
  if (!qword_2803B8B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A7EABC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for FactItemImageRightView();
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A7EADAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FactItemImageRightView();
  sub_26A4DBD68(v1 + *(v10 + 28), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26A7EAFB4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for FactItemImageRightView() + 32);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t FactItemImageRightView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v6 - 8);
  sub_26A7EABC4(&v15[-v7]);
  sub_26A7EB338(v17);
  sub_26A7EAFB4();
  sub_26A7EADAC(v5);
  v8 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  v16 = v1;
  sub_26A4CFAAC();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26A68CCBC;
  *(v9 + 24) = 0;
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8B90) + 36);
  *(v10 + 16) = swift_getKeyPath();
  *(v10 + 24) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v12 = *(v11 + 40);
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v13 = v10 + *(v11 + 44);
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  *v10 = sub_26A4D1F7C;
  *(v10 + 8) = v9;
  return result;
}

void sub_26A7EB338(uint64_t a1@<X8>)
{
  if (qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  v3 = 0uLL;
  if (byte_2803B0440 == 1)
  {
    v4 = sub_26A7EAFB4();
    if (sub_26A61B05C(v4, &unk_287B13090))
    {
      v5 = type metadata accessor for FactItemImageRightView();
      v6 = 0;
      v7 = (v1 + *(v5 + 20));
      __asm { FMOV            V0.2D, #10.0 }

      v3 = vaddq_f64(v7[12], _Q0);
      v13 = vaddq_f64(v7[13], _Q0);
    }

    else
    {
      v6 = 1;
      v13 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v6 = 1;
    v13 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v13;
  *(a1 + 32) = v6;
}

uint64_t sub_26A7EB3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9600);
  MEMORY[0x28223BE20](v28);
  v4 = &v26 - v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8BB8);
  MEMORY[0x28223BE20](v27);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A95F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A95E0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = sub_26A84F3A8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A7EADAC(v16);
  v17 = sub_26A84F388();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    *v9 = sub_26A84FC08();
    *(v9 + 1) = 0;
    v9[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8BC8);
    sub_26A7EBD58(a1, &v9[*(v18 + 44)]);
    sub_26A851458();
    sub_26A84F628();
    sub_26A4DBDB4(v9, v12, &qword_2803A95F0);
    memcpy(&v12[*(v10 + 36)], __src, 0x70uLL);
    v19 = &qword_2803A95E0;
    sub_26A4DBD68(v12, v6, &qword_2803A95E0);
    swift_storeEnumTagMultiPayload();
    sub_26A4D399C();
    sub_26A4D3A54();
    sub_26A84FDF8();
    v20 = v12;
  }

  else
  {
    *v4 = sub_26A84FA78();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8BC0);
    sub_26A7EB840(a1, &v4[*(v21 + 44)]);
    KeyPath = swift_getKeyPath();
    v23 = swift_getKeyPath();
    v24 = &v4[*(v28 + 36)];
    *v24 = KeyPath;
    v24[8] = 0;
    *(v24 + 2) = v23;
    *(v24 + 12) = 256;
    v19 = &qword_2803A9600;
    sub_26A4DBD68(v4, v6, &qword_2803A9600);
    swift_storeEnumTagMultiPayload();
    sub_26A4D399C();
    sub_26A4D3A54();
    sub_26A84FDF8();
    v20 = v4;
  }

  return sub_26A4DBD10(v20, v19);
}