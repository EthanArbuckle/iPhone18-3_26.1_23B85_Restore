void sub_1DCD35644(uint64_t a1)
{
  OUTLINED_FUNCTION_35_19();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v3 = a1;
      goto LABEL_14;
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      if (*(a1 + 56))
      {
        v3 = (a1 + 32);
LABEL_14:
        __swift_destroy_boxed_opaque_existential_1Tm(v3);
      }

      goto LABEL_47;
    case 2u:
      v11 = *a1;
      OUTLINED_FUNCTION_11_7();

      return;
    case 3u:
      v14 = *(a1 + 8);
      OUTLINED_FUNCTION_11_7();

      return;
    case 4u:
      v4 = *a1;
      v5 = *(a1 + 8);
      v6 = *(a1 + 16);
      OUTLINED_FUNCTION_11_7();

      sub_1DCD21390(v7, v8, v9);
      return;
    case 5u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C08, &qword_1DD0EFA20) + 48);
      v17 = *(v16 + 8);

      v18 = type metadata accessor for PluginAction();
      v19 = v16 + v18[5];
      v20 = sub_1DD0DB04C();
      OUTLINED_FUNCTION_2(v20);
      (*(v21 + 8))(v19, v20);
      v22 = type metadata accessor for Input(0);
      v23 = (v19 + v22[5]);
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v24 = sub_1DD0DC76C();
          goto LABEL_22;
        case 1u:
          v40 = sub_1DD0DC76C();
          OUTLINED_FUNCTION_2(v40);
          (*(v41 + 8))(v23);
          v42 = *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

          break;
        case 2u:
          v29 = *(v23 + 1);

          v30 = *(v23 + 2);
          goto LABEL_34;
        case 3u:
          v31 = *v23;
          swift_unknownObjectRelease();
          break;
        case 4u:
          v24 = sub_1DD0DB1EC();
          goto LABEL_22;
        case 5u:
          v43 = *v23;
          goto LABEL_40;
        case 6u:
          v44 = sub_1DD0DB4BC();
          OUTLINED_FUNCTION_2(v44);
          (*(v45 + 8))(v23);
          v46 = type metadata accessor for USOParse();
          v47 = *(v46 + 20);
          v48 = sub_1DD0DB3EC();
          if (!OUTLINED_FUNCTION_79_6(v48))
          {
            OUTLINED_FUNCTION_112(v1);
            (*(v49 + 8))(&v23[v47], v1);
          }

          v39 = *(v46 + 24);
          goto LABEL_33;
        case 7u:
          v32 = sub_1DD0DB4BC();
          OUTLINED_FUNCTION_2(v32);
          (*(v33 + 8))(v23);
          v34 = type metadata accessor for USOParse();
          v35 = *(v34 + 20);
          v36 = sub_1DD0DB3EC();
          if (!OUTLINED_FUNCTION_79_6(v36))
          {
            OUTLINED_FUNCTION_112(v1);
            (*(v37 + 8))(&v23[v35], v1);
          }

          OUTLINED_FUNCTION_60_3(*(v34 + 24));

          v38 = type metadata accessor for LinkParse();
          OUTLINED_FUNCTION_60_3(v38[5]);

          OUTLINED_FUNCTION_60_3(v38[6]);

          v39 = v38[7];
LABEL_33:
          OUTLINED_FUNCTION_60_3(v39);
LABEL_34:

          break;
        case 8u:
          v50 = sub_1DD0DD12C();
          OUTLINED_FUNCTION_2(v50);
          (*(v51 + 8))(v23);
          v52 = type metadata accessor for NLRouterParse();
          OUTLINED_FUNCTION_60_3(v52[5]);

          v53 = &v23[v52[6]];
          v54 = type metadata accessor for USOParse();
          if (!__swift_getEnumTagSinglePayload(v53, 1, v54))
          {
            v55 = sub_1DD0DB4BC();
            OUTLINED_FUNCTION_2(v55);
            (*(v56 + 8))(v53);
            v57 = *(v54 + 20);
            v58 = sub_1DD0DB3EC();
            v79 = v57;
            v59 = v53 + v57;
            v60 = v58;
            if (!__swift_getEnumTagSinglePayload(v59, 1, v58))
            {
              OUTLINED_FUNCTION_112(v60);
              (*(v61 + 8))(v53 + v79, v60);
            }

            v62 = *(v53 + *(v54 + 24) + 8);
          }

          v43 = *&v23[v52[7]];
LABEL_40:

          break;
        case 9u:
          v24 = sub_1DD0DD08C();
LABEL_22:
          OUTLINED_FUNCTION_2(v24);
          (*(v28 + 8))(v23);
          break;
        default:
          break;
      }

      v63 = *(v19 + v22[6]);

      v64 = (v19 + v22[7]);
      if (v64[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
      }

      v65 = *(v16 + v18[6]);

      v66 = *(v16 + v18[8] + 8);

      v67 = v16 + v18[9];
      v68 = type metadata accessor for ActionParaphrase(0);
      if (!OUTLINED_FUNCTION_78_8(v68))
      {
        v69 = *(v67 + 8);

        v70 = v67 + v22[5];
        v71 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
        if (!OUTLINED_FUNCTION_78_8(v71))
        {
          v72 = *(v70 + 8);

          v73 = *(v70 + 24);

          v74 = v22[6];
          v75 = sub_1DD0DB66C();
          OUTLINED_FUNCTION_2(v75);
          (*(v76 + 8))(v70 + v74);
        }
      }

      if (!__swift_getEnumTagSinglePayload(v16 + v18[10], 1, v20))
      {
        OUTLINED_FUNCTION_11_7();

        __asm { BRAA            X2, X16 }
      }

      goto LABEL_47;
    case 6u:
      v25 = *(a1 + 8);

      v26 = *(a1 + 24);
      OUTLINED_FUNCTION_11_7();

      return;
    default:
LABEL_47:
      OUTLINED_FUNCTION_11_7();
      return;
  }
}

uint64_t sub_1DCD37E88()
{
  result = type metadata accessor for FlowActionType(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1DCD37FA4()
{
  result = type metadata accessor for FlowActionType(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_68_9()
{
  v2 = *(v0 + 20);

  return sub_1DD0DB3EC();
}

uint64_t static FlowActionBuilder.buildBlock(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DCB17CA0(a1, v5);
  a2[3] = type metadata accessor for Delegate(0);
  a2[4] = &protocol witness table for Delegate;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  sub_1DCAFF9E8(v5, boxed_opaque_existential_1Tm);
  type metadata accessor for FlowActionType(0);
  return swift_storeEnumTagMultiPayload();
}

_BYTE *storeEnumTagSinglePayload for FlowActionBuilder(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCD38250()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCD38294()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_1DCD38324()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCD38368()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

uint64_t sub_1DCD383F8()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCD3843C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

uint64_t sub_1DCD384CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1DCD38550();
}

uint64_t sub_1DCD3850C()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCD38550()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
}

uint64_t sub_1DCD385E0()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCD38624()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
}

double sub_1DCD386B4()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  return *(v0 + 96);
}

double sub_1DCD38728()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  return *(v0 + 104);
}

uint64_t sub_1DCD38758(double a1)
{
  OUTLINED_FUNCTION_47_2();
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t sub_1DCD387D8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_1DCD38820()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCD38864()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
}

uint64_t DefaultFlowActivity.__allocating_init(activityName:activityType:activityStartTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_5_11();
  v12 = swift_allocObject();
  DefaultFlowActivity.init(activityName:activityType:activityStartTime:)(v9, v8, v7, v6, a5, a6 & 1);
  return v12;
}

uint64_t sub_1DCD38960(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7974697669746361 && a2 == 0xEC000000656D614ELL;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
        if (v8 || (sub_1DD0DF0AC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
          if (v9 || (sub_1DD0DF0AC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
            if (v10 || (sub_1DD0DF0AC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
              if (v11 || (sub_1DD0DF0AC() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x7974697669746361 && a2 == 0xEC00000065707954)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD0DF0AC();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DCD38BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD38960(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCD38C10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCD38BE0();
  *a1 = result;
  return result;
}

uint64_t sub_1DCD38C38(uint64_t a1)
{
  v2 = sub_1DCB2D700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD38C74(uint64_t a1)
{
  v2 = sub_1DCB2D700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *DefaultFlowActivity.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[15];

  return v0;
}

uint64_t DefaultFlowActivity.__deallocating_deinit()
{
  DefaultFlowActivity.deinit();
  OUTLINED_FUNCTION_5_11();

  return swift_deallocClassInstance();
}

uint64_t DefaultFlowActivity.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_11();
  v2 = swift_allocObject();
  DefaultFlowActivity.init(from:)(a1);
  return v2;
}

void *DefaultFlowActivity.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D78, &qword_1DD0EFBB0);
  v4 = OUTLINED_FUNCTION_9(v38);
  v37[1] = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v10 = v37 - v9;
  OUTLINED_FUNCTION_15_32();
  v42 = v2;
  OUTLINED_FUNCTION_14_33();
  v2[2] = v11;
  v2[3] = v12;
  v13 = v2 + 2;
  v13[2] = v11;
  v13[4] = 0xD000000000000013;
  v13[3] = v12;
  v13[6] = 0;
  v13[5] = 0x80000001DD0EFB70;
  v13[8] = v11;
  v13[7] = 0;
  v13[9] = v12;
  v13[11] = 0xBFF0000000000000;
  v14 = a1[3];
  v40 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1DCB2D700();
  v39 = v10;
  v15 = v41;
  sub_1DD0DF23C();
  if (v15)
  {
    v25 = v42;
    v16 = v42[3];

    v17 = v25[5];

    v18 = v25[7];

    v19 = v25[9];

    v20 = v25[11];

    type metadata accessor for DefaultFlowActivity();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v13 + 4;
    v40 = v13 + 6;
    v37[0] = v13 + 8;
    v50 = 0;
    v22 = sub_1DD0DEF0C();
    v24 = v23;
    OUTLINED_FUNCTION_47_2();
    swift_beginAccess();
    v25 = v42;
    v26 = v42[3];
    v42[2] = v22;
    v25[3] = v24;

    v49 = 1;
    v27 = v38;
    OUTLINED_FUNCTION_0_48();
    sub_1DD0DEF0C();
    OUTLINED_FUNCTION_11_32();
    OUTLINED_FUNCTION_47_2();
    swift_beginAccess();
    v28 = v25[5];
    v25[4] = v13;
    v25[5] = v22;

    v48 = 2;
    OUTLINED_FUNCTION_0_48();
    sub_1DD0DEF0C();
    OUTLINED_FUNCTION_11_32();
    OUTLINED_FUNCTION_47_2();
    swift_beginAccess();
    v29 = v25[7];
    v25[6] = v13;
    v25[7] = v22;

    v47 = 3;
    OUTLINED_FUNCTION_0_48();
    sub_1DD0DEEDC();
    OUTLINED_FUNCTION_11_32();
    OUTLINED_FUNCTION_47_2();
    swift_beginAccess();
    v30 = v25[9];
    v25[8] = v13;
    v25[9] = v22;

    v46 = 4;
    OUTLINED_FUNCTION_0_48();
    sub_1DD0DEF0C();
    OUTLINED_FUNCTION_11_32();
    OUTLINED_FUNCTION_47_2();
    swift_beginAccess();
    v31 = v25[11];
    v25[10] = v13;
    v25[11] = v22;

    v45 = 5;
    OUTLINED_FUNCTION_0_48();
    sub_1DD0DEF2C();
    v25[12] = v32;
    v45 = 6;
    OUTLINED_FUNCTION_0_48();
    sub_1DD0DEF2C();
    v34 = v33;
    OUTLINED_FUNCTION_47_2();
    swift_beginAccess();
    v13[11] = v34;
    v44 = 7;
    OUTLINED_FUNCTION_0_48();
    sub_1DD0DEF0C();
    OUTLINED_FUNCTION_11_32();
    v35 = OUTLINED_FUNCTION_10_33();
    v36(v35, v27);
    v25[14] = v13;
    v25[15] = v22;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  return v25;
}

uint64_t (*sub_1DCD391FC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*sub_1DCD39298())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*sub_1DCD39334())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*sub_1DCD393D0())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*sub_1DCD3946C())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1DCD394C0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 352))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DCD39520(uint64_t a1)
{
  *(a1 + 8) = sub_1DCD39588(&qword_1EDE4F1A0);
  result = sub_1DCD39588(&qword_1EDE4F1A8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCD39588(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultFlowActivity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DCD39B38()
{
  result = qword_1ECCA4D80;
  if (!qword_1ECCA4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4D80);
  }

  return result;
}

unint64_t sub_1DCD39B90()
{
  result = qword_1EDE4F1B0;
  if (!qword_1EDE4F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F1B0);
  }

  return result;
}

unint64_t sub_1DCD39BE8()
{
  result = qword_1EDE4F1B8;
  if (!qword_1EDE4F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F1B8);
  }

  return result;
}

uint64_t static FlowsBuilder.buildExpression(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D88, &qword_1DD0EFDA8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DD0E07C0;
  sub_1DCB17CA0(a1, v2 + 32);
  return v2;
}

void sub_1DCD39CDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = (a1 + 32);
  if (v1)
  {
    while (1)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      v6 = *(v2 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      v7 = *v3;

      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v2 + 24) >> 1)
      {
        sub_1DCE1976C();
        v2 = v8;
      }

      if (*(v4 + 16))
      {
        if ((*(v2 + 24) >> 1) - *(v2 + 16) < v5)
        {
          goto LABEL_16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D90, &qword_1DD0F0AA0);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v2 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_17;
          }

          *(v2 + 16) = v11;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v3;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t static FlowsBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

_BYTE *sub_1DCD39E60(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCD39F28()
{
  type metadata accessor for RefreshableFlowContextPublisher();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D98, &unk_1DD0EFE88);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(v0 + 16) = result;
  qword_1EDE57D90 = v0;
  return result;
}

void static FlowContextPublisher.current.getter()
{
  if (qword_1EDE4AE90 != -1)
  {
    swift_once();
  }

  sub_1DD0DCF8C();
}

uint64_t dispatch thunk of FlowContextPublishing.publish(nlContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DCB4AD3C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of FlowContextPublishing.publish(dialogEngineOutput:executionSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  OUTLINED_FUNCTION_8();
  v15 = (v10 + *v10);
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a3, a4);
}

_BYTE *storeEnumTagSinglePayload for FlowContextPublisher(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCD3A300()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1DCD3A35C()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 128);
  return v2();
}

uint64_t sub_1DCD3A380()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_1DCD3A3DC()
{
  type metadata accessor for FlowDelegatePluginLoader();
  swift_allocObject();
  result = sub_1DCD3A6F0();
  qword_1EDE4F520 = result;
  return result;
}

void static FlowDelegatePluginLoader.sharedInstance.getter()
{
  if (qword_1EDE4F518 != -1)
  {
    swift_once();
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCD3A474()
{
  v0 = sub_1DD0DAECC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_1EDE4F538);
  __swift_project_value_buffer(v0, qword_1EDE4F538);
  v7 = MEMORY[0x1E12A7960]();
  sub_1DD0DDFBC();

  sub_1DD0DAE4C();

  sub_1DD0DAE7C();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_1DCD3A5BC()
{
  v0 = sub_1DD0DDD8C();
  __swift_allocate_value_buffer(v0, qword_1ECCA4DA0);
  *__swift_project_value_buffer(v0, qword_1ECCA4DA0) = 2500;
  v1 = *MEMORY[0x1E69E7F38];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1DCD3A694()
{
  v1 = *(v0 + 112);
  if (v1 == 2)
  {
    if (qword_1EDE4DD00 != -1)
    {
      swift_once();
    }

    LOBYTE(v1) = 1;
    *(v0 + 112) = 1;
  }

  return v1 & 1;
}

void *sub_1DCD3A6F0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1DD0DAECC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v30 - v11 + 16;
  *(v0 + 7) = 0u;
  v0[11] = 0;
  *(v0 + 9) = 0u;
  v0[13] = dispatch_semaphore_create(1);
  *(v0 + 112) = 2;
  sub_1DCC855E4();
  if (qword_1EDE4F530 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_1EDE4F538);
  static FlowDelegatePluginLoader.getSystemPluginCachePathURL()();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v3);
  sub_1DCD3ADF8(v13, v12, v30);
  sub_1DCB16DB0(v12, &unk_1ECCA28C0, &unk_1DD0E1D80);
  v14 = v30[1];
  *(v0 + 1) = v30[0];
  *(v0 + 2) = v14;
  v0[6] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F90, &qword_1DD0EFFF0);
  v0[12] = sub_1DD0DDE9C();
  v15 = [objc_opt_self() processInfo];
  v16 = [v15 environment];

  v17 = sub_1DD0DDE6C();
  sub_1DCB6B180(0xD000000000000021, 0x80000001DD11A8E0, v17);
  v19 = v18;

  if (v19)
  {
    sub_1DD0DAE4C();

    sub_1DCD4BCE4(v7, v32);
    v20 = v32[0];
    v21 = v32[1];
    v29 = v33;
    v22 = v34;
    swift_beginAccess();
    v23 = v1[7];
    v24 = v1[8];
    v25 = v1[9];
    v26 = v1[10];
    v27 = v1[11];
    v1[7] = v20;
    v1[8] = v21;
    *(v1 + 9) = v29;
    v1[11] = v22;
    sub_1DCD43E98(v23);
  }

  return v1;
}

void static FlowDelegatePluginLoader.getSystemPluginCachePathURL()()
{
  OUTLINED_FUNCTION_50();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v1 = OUTLINED_FUNCTION_20_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  OUTLINED_FUNCTION_10_2();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v35 - v10;
  v12 = sub_1DD0DAECC();
  v13 = OUTLINED_FUNCTION_9(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13, v18);
  OUTLINED_FUNCTION_16();
  v21 = v20 - v19;
  v22 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v23 = sub_1DD0DE2EC();

  if (!v23[2])
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v26 = sub_1DD0DD8FC();
    v27 = __swift_project_value_buffer(v26, qword_1EDE57E00);
    v28 = *(v26 - 8);
    (*(v28 + 16))(v11, v27, v26);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v26);
    sub_1DCB09910(v11, v7, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v7, 1, v26) == 1)
    {
      sub_1DCB16DB0(v7, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v29 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_83();
        v36 = swift_slowAlloc();
        *v31 = 136315650;
        v32 = sub_1DD0DEC3C();
        v34 = sub_1DCB10E9C(v32, v33, &v36);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2048;
        *(v31 + 14) = 409;
        *(v31 + 22) = 2080;
        *(v31 + 24) = sub_1DCB10E9C(0xD000000000000023, 0x80000001DD11A710, &v36);
        _os_log_impl(&dword_1DCAFC000, v29, v30, "FatalError at %s:%lu - %s", v31, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_80();
      }

      (*(v28 + 8))(v7, v26);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000023, 0x80000001DD11A710);
  }

  v24 = v23[4];
  v25 = v23[5];

  sub_1DD0DAE5C();

  sub_1DD0DAE8C();
  (*(v15 + 8))(v21, v12);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD3ADF8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v35 - v12;
  v14 = sub_1DD0DAECC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v35 - v23;
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v35 - v26;
  v36 = a2;
  sub_1DCB09910(a2, v13, &unk_1ECCA28C0, &unk_1DD0E1D80);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1DCB16DB0(v13, &unk_1ECCA28C0, &unk_1DD0E1D80);
    (*(v15 + 16))(v24, v35, v14);
  }

  else
  {
    (*(v15 + 32))(v27, v13, v14);
    v28 = *(v15 + 16);
    v28(v24, v27, v14);
    sub_1DCD4C41C(v24, v37);
    result = (*(v15 + 8))(v27, v14);
    v30 = v37[0];
    if (v37[0])
    {
      v32 = v37[3];
      v31 = v37[4];
      v34 = v37[1];
      v33 = v37[2];
      goto LABEL_10;
    }

    v28(v24, v35, v14);
  }

  sub_1DCD4BCE4(v24, v38);
  sub_1DCB09910(v36, v10, &unk_1ECCA28C0, &unk_1DD0E1D80);
  if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
  {
    result = sub_1DCB16DB0(v10, &unk_1ECCA28C0, &unk_1DD0E1D80);
  }

  else
  {
    (*(v15 + 32))(v20, v10, v14);
    sub_1DCD4CF58();
    result = (*(v15 + 8))(v20, v14);
  }

  v32 = v38[3];
  v31 = v38[4];
  v34 = v38[1];
  v33 = v38[2];
  v30 = v38[0];
LABEL_10:
  *a3 = v30;
  a3[1] = v34;
  a3[2] = v33;
  a3[3] = v32;
  a3[4] = v31;
  return result;
}

BOOL sub_1DCD3B114(uint64_t a1)
{
  v1 = *(sub_1DCD3E6E0(a1) + 16);

  return v1 != 0;
}

uint64_t sub_1DCD3B154()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DB8, &qword_1DD0EFE98);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v10 - v5);
  OUTLINED_FUNCTION_90_0();
  sub_1DCD3B250();
  v7 = type metadata accessor for LoadedFlowInfo(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    v8 = *v6;
    sub_1DD0DCF8C();
  }

  sub_1DCB16DB0(v6, &qword_1ECCA4DB8, &qword_1DD0EFE98);
  return 0;
}

void sub_1DCD3B250()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v166 = v3;
  v165 = v4;
  v161 = v5;
  v167 = *v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v158[8] = v158 - v11;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  OUTLINED_FUNCTION_9(v159);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v158 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0);
  OUTLINED_FUNCTION_20_0(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_6_36(v158 - v25);
  v170 = type metadata accessor for NamedParseTransformer();
  v26 = OUTLINED_FUNCTION_2(v170);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6_36(v31 - v30);
  v163 = type metadata accessor for FlowSearchResult();
  v32 = OUTLINED_FUNCTION_2(v163);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32, v35);
  OUTLINED_FUNCTION_16();
  v38 = (v37 - v36);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA25C0, &qword_1DD0E5270);
  v39 = OUTLINED_FUNCTION_9(v173);
  v178 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39, v43);
  OUTLINED_FUNCTION_10_2();
  v177 = v44 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = OUTLINED_FUNCTION_6_36(v158 - v48);
  v50 = type metadata accessor for Parse(v49);
  v51 = OUTLINED_FUNCTION_20_0(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51, v54);
  OUTLINED_FUNCTION_10_2();
  v162 = v55 - v56;
  v59 = MEMORY[0x1EEE9AC00](v57, v58);
  v61 = v158 - v60;
  MEMORY[0x1EEE9AC00](v59, v62);
  v64 = v158 - v63;
  v65 = type metadata accessor for Input(0);
  v66 = OUTLINED_FUNCTION_2(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66, v69);
  OUTLINED_FUNCTION_16();
  v72 = v71 - v70;
  sub_1DCB29E58(v2, v64);
  OUTLINED_FUNCTION_20_17(v72 + v65[7]);
  v73 = v65[5];
  sub_1DCB29E58(v64, v72 + v73);
  *(v72 + v65[6]) = MEMORY[0x1E69E7CC0];
  sub_1DD0DB03C();
  OUTLINED_FUNCTION_0_49();
  v160 = v64;
  sub_1DCD44270(v64, v74);
  v158[4] = v65;
  *(v72 + v65[8]) = 0;
  v171 = v0;
  v75 = sub_1DCD3E6E0(v72 + v73);
  v179[2] = v72;
  sub_1DCC346C4(sub_1DCD3F764, v179, v75);
  OUTLINED_FUNCTION_57_5();
  OUTLINED_FUNCTION_17_20();
  v158[3] = v72;
  sub_1DCD44270(v72, v76);
  v77 = 0;
  v158[5] = v13 + 32;
  v158[6] = v13 + 8;
  v188 = v65;
  v186[5] = MEMORY[0x1E69E7CD0];
  v187 = MEMORY[0x1E69E7CD0];
  v176 = v61;
  v168 = v38;
  v158[7] = v19;
LABEL_2:
  if (v77 != 10)
  {
    v172 = v77;
LABEL_4:
    v78 = v173;
    while (1)
    {
      v79 = v188;
      v80 = *(v188 + 2);
      if (!v80)
      {
        break;
      }

      v81 = (*(v178 + 80) + 32) & ~*(v178 + 80);
      v82 = v175;
      sub_1DCB09910(v188 + v81, v175, &unk_1ECCA25C0, &qword_1DD0E5270);
      v83 = (v82 + *(v78 + 48));
      v84 = *v83;
      v85 = v83[1];
      v86 = v83[2];
      v87 = v82;
      v88 = v176;
      sub_1DCD404E0(v87, v176, type metadata accessor for Parse);
      sub_1DCB09910(v79 + v81, v177, &unk_1ECCA25C0, &qword_1DD0E5270);
      if (!swift_isUniquelyReferenced_nonNull_native() || (v80 - 1) > *(v79 + 3) >> 1)
      {
        sub_1DCE18AE4();
        v79 = v89;
      }

      sub_1DCB16DB0(v79 + v81, &unk_1ECCA25C0, &qword_1DD0E5270);
      v90 = v178[9];
      if (v90 > 0 || v79 + v81 >= v79 + v81 + v90 + (*(v79 + 2) - 1) * v90)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v90)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      --*(v79 + 2);
      v188 = v79;
      v92 = v177;
      v93 = v177 + *(v78 + 48);
      v94 = *(v93 + 8);

      OUTLINED_FUNCTION_0_49();
      sub_1DCD44270(v92, v95);

      v96 = v86;
      v97 = sub_1DCD402FC(v186, v84, v85, v96);

      if (v97)
      {
        v99 = v187;
        v174 = v85;
        if ((v187 & 0xC000000000000001) != 0)
        {
          v100 = v96;
          v101 = sub_1DD0DEB7C();

          if (v101)
          {
LABEL_26:
            OUTLINED_FUNCTION_0_49();
            sub_1DCD44270(v176, v108);
            OUTLINED_FUNCTION_32_15();

            goto LABEL_4;
          }
        }

        else if (*(v187 + 16))
        {
          sub_1DCB10E5C(0, &qword_1EDE460A8, 0x1E696AAE8);
          v102 = *(v99 + 40);
          v96;
          v103 = sub_1DD0DE8DC();
          v104 = ~(-1 << *(v99 + 32));
          while (1)
          {
            v105 = v103 & v104;
            if (((*(v99 + 56 + (((v103 & v104) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v103 & v104)) & 1) == 0)
            {
              break;
            }

            v106 = *(*(v99 + 48) + 8 * v105);
            v107 = sub_1DD0DE8EC();

            v103 = v105 + 1;
            if (v107)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          v109 = v96;
        }

        v77 = v172 + 1;
        sub_1DCD3DBEC();
        if (!v184)
        {
          OUTLINED_FUNCTION_0_49();
          sub_1DCD44270(v176, v121);
          OUTLINED_FUNCTION_32_15();

          sub_1DCB16DB0(&v183, &qword_1ECCA2F80, &unk_1DD0EFEC0);
          goto LABEL_2;
        }

        sub_1DCAFF9E8(&v183, v186);
        v110 = v168;
        v111 = v176;
        sub_1DCD3C55C(v176, v186, v168);
        if (*v110)
        {
          v135 = *v110;
          sub_1DD0DCF8C();
        }

        sub_1DCB09910((v110 + 1), &v180, &qword_1ECCA1D20, &qword_1DD0F0330);
        if (v181)
        {

          sub_1DCAFF9E8(&v180, &v183);
          v136 = OUTLINED_FUNCTION_60_4();
          sub_1DD0DDFBC();
          v138 = v137;

          v139 = v171;
          OUTLINED_FUNCTION_5_35();
          sub_1DCD4C370();
          v140 = OUTLINED_FUNCTION_48_1();
          v141 = sub_1DCB90DA0(v140, v138, v139 + 2);
          swift_endAccess();

          if (v141)
          {
            v142._rawValue = v141;
          }

          else
          {
            v142._rawValue = MEMORY[0x1E69E7CC0];
          }

          v143 = v184;
          v177 = v185;
          v144 = __swift_project_boxed_opaque_existential_1(&v183, v184);
          v178 = v158;
          v145 = *(*(v143 - 8) + 64);
          MEMORY[0x1EEE9AC00](v144, v144);
          OUTLINED_FUNCTION_16();
          (*(v146 + 16))(v148 - v147);
          OUTLINED_FUNCTION_55_11();
          Parse.usoTasks.getter();
          v149 = OUTLINED_FUNCTION_60_4();
          v150 = sub_1DD0DDFBC();
          v152 = v151;

          v181 = &type metadata for FlowPluginBundleImpl;
          v182 = &protocol witness table for FlowPluginBundleImpl;
          v153._countAndFlagsBits = v150;
          v153._object = v152;
          FlowPluginBundleImpl.init(bundlePath:pluginCacheKeys:)(v153, v142);
          v154 = v161;
          LoadedFlowInfo.init<A>(actingFlow:parse:activeTasks:fromBundle:)();
          OUTLINED_FUNCTION_32_15();

          OUTLINED_FUNCTION_3_55();
          sub_1DCD44270(v168, v155);
          __swift_destroy_boxed_opaque_existential_1Tm(v186);
          OUTLINED_FUNCTION_0_49();
          sub_1DCD44270(v111, v156);
          v157 = type metadata accessor for LoadedFlowInfo(0);
          __swift_storeEnumTagSinglePayload(v154, 0, 1, v157);
          __swift_destroy_boxed_opaque_existential_1Tm(&v183);
          goto LABEL_48;
        }

        v172 = v77;
        sub_1DCB16DB0(&v180, &qword_1ECCA1D20, &qword_1DD0F0330);
        v112 = v163;
        if (*(v110 + *(v163 + 28)) == 1)
        {
          sub_1DCD400D8(&v183, v96);
        }

        v113 = v164;
        sub_1DCB09910(v110 + *(v112 + 24), v164, &qword_1ECCA4DD0, &unk_1DD0EFEB0);
        if (__swift_getEnumTagSinglePayload(v113, 1, v170) != 1)
        {
          sub_1DCD404E0(v113, v169, type metadata accessor for NamedParseTransformer);
          if (qword_1EDE4DFB8 != -1)
          {
            swift_once();
          }

          v122 = *(v170 + 20);
          v123 = [v96 bundlePath];
          sub_1DD0DDFBC();

          v124 = OUTLINED_FUNCTION_12_31();
          sub_1DCCD3024(v124);

          NamedParseTransformer.resolve()();
        }

        sub_1DCB16DB0(v113, &qword_1ECCA4DD0, &unk_1DD0EFEB0);
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v114 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v114, qword_1EDE57E00);
        v115 = sub_1DD0DD8EC();
        v116 = sub_1DD0DE6CC();
        v117 = OUTLINED_FUNCTION_75(v116);
        v77 = v172;
        if (v117)
        {
          v118 = OUTLINED_FUNCTION_50_0();
          *v118 = 0;
          _os_log_impl(&dword_1DCAFC000, v115, v116, "Plugin rejected flow for which it registered; still looking.", v118, 2u);
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_32_15();

        OUTLINED_FUNCTION_3_55();
        sub_1DCD44270(v110, v119);
        __swift_destroy_boxed_opaque_existential_1Tm(v186);
        OUTLINED_FUNCTION_0_49();
        sub_1DCD44270(v111, v120);
        goto LABEL_2;
      }

      OUTLINED_FUNCTION_0_49();
      sub_1DCD44270(v88, v98);
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v125 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v125, qword_1EDE57E00);
  v126 = sub_1DD0DD8EC();
  v127 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v127))
  {
    v128 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v128);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v129, v130, v131, v132, v133, 2u);
    OUTLINED_FUNCTION_62();
  }

  v134 = type metadata accessor for LoadedFlowInfo(0);
  __swift_storeEnumTagSinglePayload(v161, 1, 1, v134);
LABEL_48:
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD3C55C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1DCB17CA0(a2, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F90, &qword_1DD0EFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F98, &qword_1DD0E8CA0);
  if (!swift_dynamicCast())
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1DCB16DB0(v12, &qword_1ECCA2F88, &unk_1DD0E8C90);
    v9 = a2[3];
    v10 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v9);
    v11 = (*(v10 + 40))(a1, v9, v10);
    static FlowSearchResult.flow(_:)(v11, a3);
  }

  sub_1DCAFF9E8(v12, v15);
  v6 = v16;
  v7 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v7 + 16))(a1, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

id sub_1DCD3C6B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA25C0, &qword_1DD0E5270) + 48));
  v9 = type metadata accessor for Input(0);
  sub_1DCB29E58(a2 + *(v9 + 20), a3);
  *v8 = v6;
  v8[1] = v5;
  v8[2] = v7;

  return v7;
}

double sub_1DCD3C748@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v11 = *a1;
  v12 = v3;
  v13[0] = a1[2];
  *(v13 + 9) = *(a1 + 41);
  IntentTopic.makeCacheKeyAndWildcardFallbacks()();
  v5 = sub_1DCD3E8AC(v4);

  if (v5[2])
  {
    v6 = v5[5];
    v7 = v5[6];

    v8 = v7;

    v9 = v8;
    sub_1DCD3DBEC();

    if (*(&v12 + 1))
    {
      sub_1DCAFF9E8(&v11, a2);
      return result;
    }

    sub_1DCB16DB0(&v11, &qword_1ECCA2F80, &unk_1DD0EFEC0);
  }

  else
  {
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1DCD3C84C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1DCD3E6E0(a1);
  if (!v4[2])
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v20 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v20, qword_1EDE57E00);
    v21 = sub_1DD0DD8EC();
    v22 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v22))
    {
      v23 = OUTLINED_FUNCTION_151();
      v24 = OUTLINED_FUNCTION_83();
      v47[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1DCB10E9C(4999502, 0xE300000000000000, v47);
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();
    }

    return 0;
  }

  v6 = v4[4];
  v5 = v4[5];
  v7 = v4[6];

  v8 = v7;

  v9 = v8;
  sub_1DCD3DBEC();
  if (!v45)
  {
    sub_1DCB16DB0(&v43, &qword_1ECCA2F80, &unk_1DD0EFEC0);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v30 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v30, qword_1EDE57E00);

    v31 = v9;
    v32 = sub_1DD0DD8EC();
    v33 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_151();
      v47[0] = OUTLINED_FUNCTION_83();
      *v34 = 136315138;

      v35 = sub_1DCB10E9C(v6, v5, v47);

      *(v34 + 4) = v35;
      OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v36, v37, "FlowDelegatePluginLoader.makeFlowFrame no provider : %s");
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_37();
    }

    else
    {
    }

    return 0;
  }

  OUTLINED_FUNCTION_61_11(v10, v11, v12, v13, v14, v15, v16, v17, v43, v44, v45, v46, v47[0]);
  v18 = sub_1DCD3CC08(v47, a1);
  if (!v18)
  {
    v38 = v47[4];
    __swift_project_boxed_opaque_existential_1(v47, v47[3]);
    v39 = *(v38 + 40);
    v40 = OUTLINED_FUNCTION_90_0();
    v41(v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD8, &qword_1DD0EFED0);
    swift_allocObject();
    sub_1DCD3F130();
  }

  v19 = v18;

  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  return v19;
}

uint64_t sub_1DCD3CC08(void *a1, uint64_t a2)
{
  v4 = sub_1DD0DDDBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Parse(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  v14 = type metadata accessor for WithDispatchSemaphoreTimeout();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DEEAC();
  if ((v31[0] & 1) == 0)
  {
    if (qword_1ECCA12B8 != -1)
    {
      swift_once();
    }

    v25 = sub_1DD0DDD8C();
    v26 = __swift_project_value_buffer(v25, qword_1ECCA4DA0);
    (*(*(v25 - 8) + 16))(v18, v26, v25);
    sub_1DCB17CA0(a1, v31);
    sub_1DCB29E58(a2, v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = (*(v11 + 80) + 56) & ~*(v11 + 80);
    v28 = swift_allocObject();
    sub_1DCAFF9E8(v31, v28 + 16);
    sub_1DCD404E0(v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for Parse);
    sub_1DCB10E5C(0, &qword_1EDE461B0, 0x1E69E9610);
    (*(v5 + 104))(v9, *MEMORY[0x1E69E7F88], v4);
    v29 = sub_1DD0DE7AC();
    (*(v5 + 8))(v9, v4);
    sub_1DCD3D1CC(v29, sub_1DCD44200, v28);
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v19 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v19, qword_1EDE57E00);
  v20 = sub_1DD0DD8EC();
  v21 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DCAFC000, v20, v21, "Calling deprecated FlowPlugin.makeFlowFrame function. Note the time out guard previously surrounding this call was removed due to risk of deadlock (see rdar://79777131). The runtime should no longer execute through this codepath.", v22, 2u);
    MEMORY[0x1E12A8390](v22, -1, -1);
  }

  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  return (*(v24 + 32))(a2, v23, v24);
}

uint64_t sub_1DCD3D10C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_1DD0DE55C();
  result = __swift_getEnumTagSinglePayload(a1, 1, v4);
  *a2 = result != 1;
  return result;
}

uint64_t sub_1DCD3D164@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = (*(v6 + 32))(a2, v5, v6);
  *a3 = result;
  return result;
}

void sub_1DCD3D1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v5 = sub_1DD0DDE1C();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v27 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v25 = v21 - v11;
  v12 = sub_1DD0DDDAC();
  v24 = *(v12 - 8);
  v13 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v15 = sub_1DD0DDDFC();
  v22 = *(v15 - 8);
  v23 = v15;
  v16 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v18 = dispatch_semaphore_create(0);
  v19 = swift_allocObject();
  *(v19 + 16) = 1;
  v21[1] = v19 + 16;
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = v18;
  aBlock[4] = sub_1DCD442D4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DCF5B728;
  aBlock[3] = &block_descriptor_5;
  _Block_copy(aBlock);
  sub_1DD0DCF8C();
}

double sub_1DCD3D638@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1EDE4F900 != -1)
  {
LABEL_45:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);

  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();

  v56 = a2;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_151();
    v8 = OUTLINED_FUNCTION_83();
    *&v58 = v8;
    *(v7 + 4) = OUTLINED_FUNCTION_54_11(4.8149e-34, v8, v9, v10, v11, v12, v13, v14, v15, v52);
    OUTLINED_FUNCTION_52_12(&dword_1DCAFC000, v16, v17, "%s being loaded...");
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  if ((sub_1DCD3A694() & 1) == 0)
  {
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v19))
    {
      v20 = OUTLINED_FUNCTION_50_0();
      *v20 = 0;
      _os_log_impl(&dword_1DCAFC000, v18, v19, "Environment should be initialized by this point", v20, 2u);
      OUTLINED_FUNCTION_80();
    }
  }

  OUTLINED_FUNCTION_5_35();
  v21 = sub_1DCD4C3BC();
  swift_endAccess();
  v22 = 0;
  v23 = v21 + 64;
  v24 = 1 << *(v21 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  a2 = v25 & *(v21 + 64);
  v26 = (v24 + 63) >> 6;
  v55 = v21;
  v52 = v26;
  v53 = v21 + 64;
  do
  {
LABEL_11:
    if (!a2)
    {
      while (1)
      {
        v27 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v27 >= v26)
        {
          goto LABEL_41;
        }

        a2 = *(v23 + 8 * v27);
        ++v22;
        if (a2)
        {
          v22 = v27;
          goto LABEL_16;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_16:
    v28 = *(*(v21 + 56) + ((v22 << 9) | (8 * __clz(__rbit64(a2)))));
    if (v28 >> 62)
    {
      v29 = sub_1DD0DEB3C();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a2 &= a2 - 1;
  }

  while (!v29);

  v30 = 0;
  while (1)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1E12A72C0](v30, v28);
    }

    else
    {
      if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v31 = *(v28 + 8 * v30 + 32);
    }

    v32 = v31;
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    v34 = sub_1DCD43E34(v31);
    if (!v35)
    {
      goto LABEL_31;
    }

    if (v34 == a1 && v35 == v56)
    {
      break;
    }

    v37 = sub_1DD0DF0AC();

    if (v37)
    {
      goto LABEL_36;
    }

LABEL_31:

    ++v30;
    if (v33 == v29)
    {

      v21 = v55;
      v26 = v52;
      v23 = v53;
      goto LABEL_11;
    }
  }

LABEL_36:

  sub_1DCD3DBEC();
  if (v59)
  {

    sub_1DCAFF9E8(&v58, a3);
    return result;
  }

  sub_1DCB16DB0(&v58, &qword_1ECCA2F80, &unk_1DD0EFEC0);

  v39 = sub_1DD0DD8EC();
  v40 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_151();
    v42 = OUTLINED_FUNCTION_83();
    *&v58 = v42;
    *(v41 + 4) = OUTLINED_FUNCTION_54_11(4.8149e-34, v42, v43, v44, v45, v46, v47, v48, v49, v52);
    OUTLINED_FUNCTION_52_12(&dword_1DCAFC000, v50, v51, "Didn't find a bundle for input %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_80();
  }

LABEL_41:

  return OUTLINED_FUNCTION_20_17(a3);
}

uint64_t sub_1DCD3DA54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DCD3D638(a1, a2, &v25);
  if (!v27)
  {
    return sub_1DCB16DB0(&v25, &qword_1ECCA2F80, &unk_1DD0EFEC0);
  }

  OUTLINED_FUNCTION_61_11(v6, v7, v8, v9, v10, v11, v12, v13, v25, v26, v27, v28, v29[0]);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v14 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v14, qword_1EDE57E00);

  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_151();
    v18 = OUTLINED_FUNCTION_83();
    *&v25 = v18;
    *v17 = 136315138;
    v19 = OUTLINED_FUNCTION_90_0();
    *(v17 + 4) = sub_1DCB10E9C(v19, v20, v21);
    _os_log_impl(&dword_1DCAFC000, v15, v16, "%s being warmed...", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v22 = v30;
  v23 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(v23 + 24))(a3, a4, v22, v23);
  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

void sub_1DCD3DBEC()
{
  OUTLINED_FUNCTION_50();
  v140 = v1;
  v3 = v2;
  v4 = sub_1DD0DD85C();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v138 = v13;
  v14 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v14, qword_1EDE57E00);
  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_22(v16))
  {
    v17 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v17);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
    OUTLINED_FUNCTION_62();
  }

  v139 = *(v0 + 104);
  sub_1DD0DE83C();
  v23 = sub_1DCD43E34(v140);
  if (!v24)
  {
    v46 = sub_1DD0DD8EC();
    v47 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_22(v47))
    {
      v48 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v48);
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v49, v50, v51, v52, v53, 2u);
LABEL_34:
      OUTLINED_FUNCTION_80();
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  v25 = v23;
  v26 = v24;

  v27 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  v137 = v7;
  if (OUTLINED_FUNCTION_45_1())
  {
    v28 = OUTLINED_FUNCTION_151();
    v29 = v3;
    v30 = OUTLINED_FUNCTION_83();
    *&v143 = v30;
    *v28 = 136315138;
    *(v28 + 4) = sub_1DCB10E9C(v25, v26, &v143);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v3 = v29;
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_62();
  }

  swift_beginAccess();
  v36 = *(v0 + 96);

  sub_1DCC18004(&v141, v25, v26, v36);

  if (v142)
  {
    sub_1DCAFF9E8(&v141, &v143);

    v37 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();

    if (OUTLINED_FUNCTION_45_1())
    {
      v38 = OUTLINED_FUNCTION_151();
      v39 = OUTLINED_FUNCTION_83();
      *&v141 = v39;
      *v38 = 136315138;
      v40 = sub_1DCB10E9C(v25, v26, &v141);

      *(v38 + 4) = v40;
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();
    }

    else
    {
    }

    sub_1DCAFF9E8(&v143, v3);
    goto LABEL_36;
  }

  sub_1DCB16DB0(&v141, &qword_1ECCA2F80, &unk_1DD0EFEC0);
  v54 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  if ([v140 isLoaded])
  {
LABEL_14:
    if ([v140 principalClass])
    {
      ObjCClassMetadata = swift_getObjCClassMetadata();
      v56 = dynamic_cast_existential_1_conditional(ObjCClassMetadata);
      if (v56)
      {
        v58 = v56;
        v59 = v57;
        v60 = *(v57 + 8);
        v144 = v56;
        v145 = v57;
        __swift_allocate_boxed_opaque_existential_1Tm(&v143);
        v60(v58, v59);
        sub_1DCB17CA0(&v143, &v141);
        OUTLINED_FUNCTION_5_35();
        sub_1DD06E060(&v141);
        swift_endAccess();
        sub_1DCB17CA0(&v143, v3);
        __swift_destroy_boxed_opaque_existential_1Tm(&v143);
        goto LABEL_36;
      }

      v46 = sub_1DD0DD8EC();
      v124 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v124))
      {
        v125 = OUTLINED_FUNCTION_151();
        v126 = OUTLINED_FUNCTION_83();
        *&v143 = v126;
        *v125 = 136315138;
        *&v141 = ObjCClassMetadata;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA25D0, &unk_1DD0E5A50);
        v127 = sub_1DD0DE02C();
        v129 = sub_1DCB10E9C(v127, v128, &v143);

        *(v125 + 4) = v129;
        OUTLINED_FUNCTION_13_32();
        _os_log_impl(v130, v131, v132, v133, v125, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v126);
        goto LABEL_33;
      }
    }

    else
    {
      v91 = v54;

      v92 = v140;
      v46 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_45_1())
      {
        v93 = OUTLINED_FUNCTION_151();
        v94 = OUTLINED_FUNCTION_83();
        *&v143 = v94;
        *v93 = 136315138;
        v95 = [v92 v91 + 3448];
        v96 = sub_1DD0DDFBC();
        v98 = v97;

        v99 = sub_1DCB10E9C(v96, v98, &v143);

        *(v93 + 4) = v99;
        OUTLINED_FUNCTION_13_32();
        _os_log_impl(v100, v101, v102, v103, v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v94);
LABEL_33:
        OUTLINED_FUNCTION_80();
        goto LABEL_34;
      }
    }

LABEL_35:

    v3[4] = 0;
    *v3 = 0u;
    *(v3 + 1) = 0u;
    goto LABEL_36;
  }

  v61 = sub_1DD0DD8EC();
  v62 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_22(v62))
  {
    v63 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v63);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v64, v65, v66, v67, v68, 2u);
    OUTLINED_FUNCTION_62();
  }

  v136 = v3;

  sub_1DD0DE7FC();
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1DD0E07C0;
  v70 = [v140 bundlePath];
  v71 = sub_1DD0DDFBC();
  v73 = v72;

  *(v69 + 56) = MEMORY[0x1E69E6158];
  v135 = sub_1DCB34060();
  *(v69 + 64) = v135;
  *(v69 + 32) = v71;
  *(v69 + 40) = v73;
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_35_20();
  sub_1DD0DD80C();

  (*(v137 + 8))(v138, v4);
  if ([v140 load])
  {
    sub_1DD0DE7EC();
    v74 = OUTLINED_FUNCTION_58_7();
    *(v74 + 16) = xmmword_1DD0E32B0;
    v3 = [v140 bundlePath];
    v75 = sub_1DD0DDFBC();
    v77 = v76;

    v78 = MEMORY[0x1E69E6158];
    *(v74 + 56) = MEMORY[0x1E69E6158];
    *(v74 + 64) = v135;
    *(v74 + 32) = v75;
    *(v74 + 40) = v77;
    *(v74 + 96) = v78;
    *(v74 + 104) = v135;
    *(v74 + 72) = 0x73736563637553;
    *(v74 + 80) = 0xE700000000000000;
    sub_1DD0DD84C();
    OUTLINED_FUNCTION_27_18();
    OUTLINED_FUNCTION_35_20();
    sub_1DD0DD80C();

    OUTLINED_FUNCTION_51_11();
    v79();
    v80 = v140;
    v81 = sub_1DD0DD8EC();
    sub_1DD0DE70C();

    if (OUTLINED_FUNCTION_45_1())
    {
      v82 = OUTLINED_FUNCTION_151();
      *&v143 = OUTLINED_FUNCTION_83();
      *v82 = 136315138;
      v54 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
      v83 = [v80 bundlePath];
      v84 = sub_1DD0DDFBC();
      v86 = v85;

      v3 = sub_1DCB10E9C(v84, v86, &v143);

      *(v82 + 4) = v3;
      OUTLINED_FUNCTION_13_32();
      _os_log_impl(v87, v88, v89, v90, v82, 0xCu);
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_80();

      OUTLINED_FUNCTION_28_16();
    }

    else
    {

      OUTLINED_FUNCTION_28_16();
      v54 = 0x1FB44A000;
    }

    goto LABEL_14;
  }

  sub_1DD0DE7EC();
  v104 = OUTLINED_FUNCTION_58_7();
  *(v104 + 16) = xmmword_1DD0E32B0;
  v105 = [v140 bundlePath];
  v106 = sub_1DD0DDFBC();
  v108 = v107;

  v109 = MEMORY[0x1E69E6158];
  *(v104 + 56) = MEMORY[0x1E69E6158];
  *(v104 + 64) = v135;
  *(v104 + 32) = v106;
  *(v104 + 40) = v108;
  *(v104 + 96) = v109;
  *(v104 + 104) = v135;
  *(v104 + 72) = 0x6572756C696146;
  *(v104 + 80) = 0xE700000000000000;
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_27_18();
  OUTLINED_FUNCTION_35_20();
  sub_1DD0DD80C();

  OUTLINED_FUNCTION_51_11();
  v110();
  v111 = v140;
  v112 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();

  if (OUTLINED_FUNCTION_45_1())
  {
    v113 = OUTLINED_FUNCTION_151();
    v114 = OUTLINED_FUNCTION_83();
    *&v143 = v114;
    *v113 = 136315138;
    v115 = [v111 bundlePath];
    v116 = sub_1DD0DDFBC();
    v118 = v117;

    v119 = sub_1DCB10E9C(v116, v118, &v143);

    *(v113 + 4) = v119;
    OUTLINED_FUNCTION_13_32();
    _os_log_impl(v120, v121, v122, v123, v113, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_20_17(v136);
LABEL_36:
  sub_1DD0DE84C();
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD3E6E0(uint64_t a1)
{
  v2 = type metadata accessor for Parse(0);
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  sub_1DCB29E58(a1, v8 - v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_0_49();
  sub_1DCD44270(v9, v11);
  if (EnumCaseMultiPayload != 10)
  {
    static IntentTopic.make(from:)(a1, v12, v13, v14, v15, v16, v17, v18, v36, v38, v39, v41, v42, v44, v45, v46, v47, v48, v50, v51);
    v30 = v29;
    v31 = 0;
    v49 = MEMORY[0x1E69E7CC0];
    v32 = *(v29 + 16);
    for (i = 32; ; i += 64)
    {
      if (v32 == v31)
      {

        v28 = sub_1DCD3E8AC(v49);

        return v28;
      }

      if (v31 >= *(v30 + 16))
      {
        break;
      }

      v37 = *(v30 + i);
      v40 = *(v30 + i + 16);
      *v43 = *(v30 + i + 32);
      *&v43[9] = *(v30 + i + 41);
      ++v31;
      IntentTopic.makeCacheKeyAndWildcardFallbacks()();
      sub_1DCBB9238(v34);
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_13:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v19 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v19, qword_1EDE57E00);
  v20 = sub_1DD0DD8EC();
  v21 = sub_1DD0DE6CC();
  if (OUTLINED_FUNCTION_22(v21))
  {
    v22 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v22);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v23, v24, v25, v26, v27, 2u);
    OUTLINED_FUNCTION_62();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DCD3E8AC(void *a1)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);

  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v4))
  {
    v5 = OUTLINED_FUNCTION_151();
    *v5 = 134217984;
    *(v5 + 4) = a1[2];

    _os_log_impl(&dword_1DCAFC000, v3, v4, "cacheKeys count %ld", v5, 0xCu);
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  v34 = MEMORY[0x1E69E7CC0];
  v6 = a1[2];
  v7 = a1 + 5;
  for (i = v6; i; --i)
  {
    v9 = *v7;
    v33[0] = *(v7 - 1);
    v33[1] = v9;

    sub_1DCD3EBB0(v33, &v32);

    sub_1DCBB9420(v32);
    v7 += 2;
  }

  v10 = v34;

  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v12))
  {
    v13 = OUTLINED_FUNCTION_151();
    *v13 = 134217984;
    *(v13 + 4) = *(v10 + 16);

    OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v14, v15, "Found %ld eligible bundles.");
    OUTLINED_FUNCTION_37();

    if (!v6)
    {
      return v10;
    }
  }

  else
  {

    if (!v6)
    {
      return v10;
    }
  }

  if (!*(v10 + 16))
  {

    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_151();
      v33[0] = OUTLINED_FUNCTION_83();
      *v18 = 136315138;
      v20 = a1[4];
      v19 = a1[5];

      v21 = sub_1DCB10E9C(v20, v19, v33);

      *(v18 + 4) = v21;
      OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v22, v23, "Didn't find a bundle for input %s");
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_37();
    }

    v24 = sub_1DD0DD8EC();
    v25 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_22(v25))
    {
      v26 = OUTLINED_FUNCTION_50_0();
      *v26 = 0;
      OUTLINED_FUNCTION_13_32();
      _os_log_impl(v27, v28, v29, v30, v26, 2u);
      OUTLINED_FUNCTION_80();
    }
  }

  return v10;
}

void sub_1DCD3EBB0(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v29 = *a1;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);

  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DCB10E9C(v29, v3, v28);
    _os_log_impl(&dword_1DCAFC000, v5, v6, "Searching bundleCache for '%s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A8390](v8, -1, -1);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }

  v9 = sub_1DCD3A64C();
  if (*v10)
  {
    v11 = sub_1DCD4C3BC();
    v12 = sub_1DCB90DA0(v29, v3, v11);

    (v9)(v28, 0);
    if (v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    (v9)(v28, 0);
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_10:
  swift_beginAccess();
  v13 = sub_1DCD4C3BC();
  v14 = sub_1DCB90DA0(v29, v3, v13);
  swift_endAccess();

  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v28[0] = v12;
  sub_1DCBB9820(v16);
  v17 = v28[0];
  v18 = sub_1DCB08B14(v28[0]);
  if (!v18)
  {

    v21 = MEMORY[0x1E69E7CC0];
LABEL_24:
    *a2 = v21;
    return;
  }

  v19 = v18;
  v28[0] = v15;
  sub_1DCE06C68(0, v18 & ~(v18 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v27 = a2;
    v20 = 0;
    v21 = v28[0];
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1E12A72C0](v20, v17);
      }

      else
      {
        v22 = *(v17 + 8 * v20 + 32);
      }

      v23 = v22;
      v28[0] = v21;
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);

      if (v25 >= v24 >> 1)
      {
        sub_1DCE06C68(v24 > 1, v25 + 1, 1);
        v21 = v28[0];
      }

      ++v20;
      *(v21 + 16) = v25 + 1;
      v26 = (v21 + 24 * v25);
      v26[4] = v29;
      v26[5] = v3;
      v26[6] = v23;
    }

    while (v19 != v20);

    a2 = v27;
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_1DCD3EEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (!v5 && (sub_1DD0DF0AC() & 1) == 0)
  {
    return 0;
  }

  sub_1DCB10E5C(0, &qword_1EDE4D6A8, 0x1E69E58C0);
  return sub_1DD0DE8EC() & 1;
}

uint64_t sub_1DCD3EF98()
{
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  sub_1DD0DE8FC();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD3EFFC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1DCD3EF98();
}

uint64_t sub_1DCD3F008()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1DCD3EF68();
}

uint64_t sub_1DCD3F014()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  sub_1DD0DE8FC();
  return sub_1DD0DF20C();
}

uint64_t FlowDelegatePluginLoader.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  sub_1DCD43E98(*(v0 + 56));
  v9 = *(v0 + 96);

  return v0;
}

uint64_t FlowDelegatePluginLoader.__deallocating_deinit()
{
  FlowDelegatePluginLoader.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCD3F130()
{
  OUTLINED_FUNCTION_31_15();
  *(v0 + 48) = v1;
  v2 = 0;
  v3 = 0xE000000000000000;
  sub_1DD0DCF8C();
}

void sub_1DCD3F214()
{
  OUTLINED_FUNCTION_31_15();
  type metadata accessor for AnyFlow();
  swift_allocObject();
  OUTLINED_FUNCTION_48_1();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD3F364(uint64_t a1, void (*a2)(void *__return_ptr))
{
  a2(v6);
  v3 = v6[0];
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCD442C4(v4);
  return sub_1DD0DE84C();
}

char *sub_1DCD3F3EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

char *sub_1DCD3F414(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[224 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_34(a3, result, 224 * a2);
  }

  return result;
}

char *sub_1DCD3F440(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_34(a3, result, a2);
  }

  return result;
}

char *sub_1DCD3F464(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

char *sub_1DCD3F4F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

char *sub_1DCD3F51C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[96 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

char *sub_1DCD3F544(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

char *sub_1DCD3F5B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

uint64_t sub_1DCD3F644()
{
  OUTLINED_FUNCTION_48_12();
  if (v3 && (v4 = OUTLINED_FUNCTION_90_0(), v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5), result = OUTLINED_FUNCTION_2(v6), v1 + *(v8 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_11_33();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_90_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    OUTLINED_FUNCTION_11_33();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_1DCD3F85C(__int128 *a1, unsigned __int8 *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(a2 + 1);
  v54 = *a2;
  v55 = v6;
  v56[0] = *(a2 + 2);
  *(v56 + 9) = *(a2 + 41);
  sub_1DD0DF1DC();
  IntentTopic.hash(into:)();
  v7 = sub_1DD0DF20C();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  v41 = a2;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_78:
    v31 = *v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v54 = *v40;
    sub_1DCB32880(v41, &v51);
    sub_1DCD419F4(v41, v9, isUniquelyReferenced_nonNull_native);
    *v40 = v54;
    v33 = v41[1];
    *a1 = *v41;
    a1[1] = v33;
    a1[2] = v41[2];
    *(a1 + 41) = *(v41 + 41);
    return 1;
  }

  v49 = ~v8;
  v10 = *a2;
  v46 = *(a2 + 1);
  v48 = *(a2 + 2);
  v44 = *(a2 + 3);
  v47 = *(a2 + 4);
  v43 = *(a2 + 5);
  v45 = *(a2 + 6);
  if (a2[1])
  {
    v11 = 1701736302;
  }

  else
  {
    v11 = 0x33764F5355;
  }

  if (a2[1])
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  while (1)
  {
    v13 = (*(v4 + 48) + (v9 << 6));
    v14 = *(v13 + 41);
    v15 = v13[2];
    v16 = *v13;
    v52 = v13[1];
    *v53 = v15;
    v51 = v16;
    *&v53[9] = v14;
    v17 = 0xE400000000000000;
    v18 = 863390798;
    switch(v16)
    {
      case 1:
        v18 = 880168014;
        break;
      case 2:
        v18 = 1885430133;
        break;
      case 3:
        v18 = 0x4974694B69726973;
        v17 = 0xED0000746E65746ELL;
        break;
      case 4:
        v18 = 0xD000000000000010;
        v17 = 0x80000001DD110040;
        break;
      case 5:
        v18 = 0xD000000000000010;
        v17 = 0x80000001DD110060;
        break;
      case 6:
        v17 = 0xE800000000000000;
        v18 = 0x726574756F526C6ELL;
        break;
      case 7:
        v18 = 0x746E65696C436669;
        v17 = 0xEE006E6F69746341;
        break;
      case 8:
        v17 = 0xE700000000000000;
        v18 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    v19 = 0xE400000000000000;
    v20 = 863390798;
    switch(v10)
    {
      case 1:
        v20 = 880168014;
        break;
      case 2:
        v20 = 1885430133;
        break;
      case 3:
        v20 = 0x4974694B69726973;
        v19 = 0xED0000746E65746ELL;
        break;
      case 4:
        v20 = 0xD000000000000010;
        v19 = 0x80000001DD110040;
        break;
      case 5:
        v20 = 0xD000000000000010;
        v19 = 0x80000001DD110060;
        break;
      case 6:
        v19 = 0xE800000000000000;
        v20 = 0x726574756F526C6ELL;
        break;
      case 7:
        v20 = 0x746E65696C436669;
        v19 = 0xEE006E6F69746341;
        break;
      case 8:
        v19 = 0xE700000000000000;
        v20 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    if (v18 == v20 && v17 == v19)
    {
      sub_1DCB32880(&v51, &v54);
    }

    else
    {
      v22 = sub_1DD0DF0AC();
      sub_1DCB32880(&v51, &v54);

      if ((v22 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    v23 = BYTE1(v51) ? 1701736302 : 0x33764F5355;
    v24 = BYTE1(v51) ? 0xE400000000000000 : 0xE500000000000000;
    if (v23 == v11 && v24 == v12)
    {
    }

    else
    {
      v26 = sub_1DD0DF0AC();

      if ((v26 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    if (v52)
    {
      if (!v48)
      {
        goto LABEL_64;
      }

      v27 = *(&v51 + 1) == v46 && v52 == v48;
      if (!v27 && (sub_1DD0DF0AC() & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else
    {

      if (v48)
      {
        goto LABEL_76;
      }
    }

    if (*v53)
    {
      if (!v47)
      {
LABEL_64:

LABEL_76:
        sub_1DCB340B4(&v51);
        goto LABEL_77;
      }

      v28 = *(&v52 + 1) == v44 && *v53 == v47;
      if (!v28 && (sub_1DD0DF0AC() & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else
    {

      if (v47)
      {
        goto LABEL_76;
      }
    }

    if (!*&v53[16])
    {
      if (!v45)
      {
        break;
      }

      goto LABEL_76;
    }

    if (!v45)
    {
      goto LABEL_76;
    }

    if (*&v53[8] == v43 && *&v53[16] == v45)
    {
      break;
    }

    v30 = sub_1DD0DF0AC();
    sub_1DCB340B4(&v51);
    if (v30)
    {
      goto LABEL_81;
    }

LABEL_77:
    v9 = (v9 + 1) & v49;
    if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  sub_1DCB340B4(&v51);
LABEL_81:
  sub_1DCB340B4(v41);
  v35 = (*(v4 + 48) + (v9 << 6));
  v36 = *v35;
  v37 = v35[1];
  v38 = v35[2];
  *(v56 + 9) = *(v35 + 41);
  v55 = v37;
  v56[0] = v38;
  v54 = v36;
  v39 = v35[1];
  *a1 = *v35;
  a1[1] = v39;
  a1[2] = v35[2];
  *(a1 + 41) = *(v35 + 41);
  sub_1DCB32880(&v54, v50);
  return 0;
}

void sub_1DCD3FE54()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v29 = v3;
  v4 = sub_1DD0DB3AC();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  v28 = v0;
  v14 = *v0;
  v15 = *(*v0 + 40);
  OUTLINED_FUNCTION_18_26();
  sub_1DCD442F0(v16, v17);
  v18 = sub_1DD0DDF0C();
  v30 = v14;
  v31 = v14 + 56;
  v19 = ~(-1 << *(v14 + 32));
  while (1)
  {
    v20 = v18 & v19;
    if (((1 << (v18 & v19)) & *(v31 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v26 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v7 + 16))(v13, v2, v4);
      v32 = *v28;
      sub_1DCD41FC8(v13, v20, isUniquelyReferenced_nonNull_native);
      *v28 = v32;
      (*(v7 + 32))(v29, v2, v4);
      goto LABEL_7;
    }

    v21 = *(v7 + 72) * v20;
    v22 = *(v7 + 16);
    v22(v13, *(v30 + 48) + v21, v4);
    OUTLINED_FUNCTION_18_26();
    sub_1DCD442F0(&qword_1ECCA4E10, v23);
    v24 = sub_1DD0DDF7C();
    v25 = *(v7 + 8);
    v25(v13, v4);
    if (v24)
    {
      break;
    }

    v18 = v20 + 1;
  }

  v25(v2, v4);
  v22(v29, *(v30 + 48) + v21, v4);
LABEL_7:
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD400D8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1DD0DEB4C();

    if (v9)
    {

      sub_1DCB10E5C(0, &qword_1EDE460A8, 0x1E696AAE8);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = sub_1DD0DEB3C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_1DCD40620(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_1DCD41018(v18 + 1);
        }

        v19 = v8;
        sub_1DCD41970(v19, v17);

        *v3 = v17;
LABEL_16:
        *a1 = v19;
        return 1;
      }
    }
  }

  else
  {
    sub_1DCB10E5C(0, &qword_1EDE460A8, 0x1E696AAE8);
    v11 = *(v6 + 40);
    v12 = sub_1DD0DE8DC();
    v13 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v14 = v12 & v13;
      if (((*(v6 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
      {
        v20 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *v3;
        v19 = a2;
        sub_1DCD42254(v19, v14, isUniquelyReferenced_nonNull_native);
        *v3 = v25;
        goto LABEL_16;
      }

      v15 = *(*(v6 + 48) + 8 * v14);
      v16 = sub_1DD0DE8EC();

      if (v16)
      {
        break;
      }

      v12 = v14 + 1;
    }

    v22 = *(*(v6 + 48) + 8 * v14);
    *a1 = v22;
    v23 = v22;
    return 0;
  }

  return result;
}

uint64_t sub_1DCD402FC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  sub_1DD0DE8FC();
  v10 = sub_1DD0DF20C();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = (*(v8 + 48) + 24 * v12);
      v15 = v14[2];
      v16 = *v14 == a2 && v14[1] == a3;
      if (v16 || (v17 = v14[1], (sub_1DD0DF0AC() & 1) != 0))
      {
        sub_1DCB10E5C(0, &qword_1EDE4D6A8, 0x1E69E58C0);

        v18 = v15;
        v19 = sub_1DD0DE8EC();

        if (v19)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v24 = (*(v8 + 48) + 24 * v12);
    v25 = v24[1];
    v26 = v24[2];
    *a1 = *v24;
    a1[1] = v25;
    a1[2] = v26;

    v27 = v26;
    return 0;
  }

  else
  {
LABEL_10:
    v20 = *v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v28;

    v22 = a4;
    sub_1DCD423B8(a2, a3, v22, v12, isUniquelyReferenced_nonNull_native);
    *v28 = v30;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = v22;
    return 1;
  }
}

uint64_t sub_1DCD404E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

BOOL sub_1DCD40540()
{
  OUTLINED_FUNCTION_25_13();
  sub_1DD0DDF2C();
  sub_1DD0DF20C();
  OUTLINED_FUNCTION_30_20();
  while (1)
  {
    OUTLINED_FUNCTION_29_16(v6);
    if (v8)
    {
      break;
    }

    OUTLINED_FUNCTION_49_10();
    v8 = *v7 == v3 && v7[1] == v1;
    if (v8 || (sub_1DD0DF0AC() & 1) != 0)
    {

      OUTLINED_FUNCTION_49_10();
      v10 = v9[1];
      *v0 = *v9;
      v0[1] = v10;

      return v5 == 0;
    }

    v6 = v4 + 1;
  }

  v11 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_56_10();
  v12 = OUTLINED_FUNCTION_40_14();
  sub_1DCD425A4(v12, v13, v14, v15);
  *v2 = v17;
  *v0 = v3;
  v0[1] = v1;
  return v5 == 0;
}

uint64_t sub_1DCD40620(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E20, &qword_1DD0EFFE8);
    v2 = sub_1DD0DEBEC();
    v16 = v2;
    sub_1DD0DEAFC();
    while (1)
    {
      if (!sub_1DD0DEB6C())
      {

        return v2;
      }

      sub_1DCB10E5C(0, &qword_1EDE460A8, 0x1E696AAE8);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1DCD41018(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      result = sub_1DD0DE8DC();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1DCD407FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DF8, &qword_1DD0EFFD0);
  result = sub_1DD0DEBDC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_37:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v37 = v2;
  v13 = result + 56;
  v38 = v3;
  v39 = result;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      sub_1DCC7243C(0, (v36 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v36;
    }

    v2 = v37;
    *(v3 + 16) = 0;
    goto LABEL_37;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v42 = (v11 - 1) & v11;
LABEL_14:
    v17 = *(v3 + 48) + ((v14 | (v7 << 6)) << 6);
    v18 = *v17;
    v19 = *(v17 + 1);
    v46 = *(v17 + 2);
    v47 = *(v17 + 6);
    v21 = *(v17 + 8);
    v20 = *(v17 + 16);
    v45 = *(v17 + 32);
    v22 = *(v17 + 40);
    v43 = *(v17 + 48);
    v44 = *(v17 + 24);
    v41 = *(v17 + 56);
    v23 = *(v6 + 40);
    sub_1DD0DF1DC();
    sub_1DD0DDF2C();

    v40 = v19;
    sub_1DD0DDF2C();

    if (v20)
    {
      MEMORY[0x1E12A7840](0);
      v24 = v21;
      sub_1DD0DDF2C();
    }

    else
    {
      MEMORY[0x1E12A7840](1);
      v24 = v21;
    }

    if (v45)
    {
      MEMORY[0x1E12A7840](0);
      sub_1DD0DDF2C();
    }

    else
    {
      MEMORY[0x1E12A7840](1);
    }

    sub_1DD0DF1FC();
    if (v43)
    {
      sub_1DD0DDF2C();
    }

    result = sub_1DD0DF20C();
    v6 = v39;
    v25 = -1 << *(v39 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
    v29 = v18;
    v30 = v45;
LABEL_31:
    *(v13 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v35 = *(v39 + 48) + (v28 << 6);
    *v35 = v29;
    *(v35 + 1) = v40;
    *(v35 + 2) = v46;
    *(v35 + 6) = v47;
    *(v35 + 8) = v24;
    *(v35 + 16) = v20;
    *(v35 + 24) = v44;
    *(v35 + 32) = v30;
    *(v35 + 40) = v22;
    *(v35 + 48) = v43;
    *(v35 + 56) = v41;
    ++*(v39 + 16);
    v3 = v38;
    v11 = v42;
    if (!v42)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v25) >> 6;
  v29 = v18;
  v30 = v45;
  while (++v27 != v32 || (v31 & 1) == 0)
  {
    v33 = v27 == v32;
    if (v27 == v32)
    {
      v27 = 0;
    }

    v31 |= v33;
    v34 = *(v13 + 8 * v27);
    if (v34 != -1)
    {
      v28 = __clz(__rbit64(~v34)) + (v27 << 6);
      goto LABEL_31;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1DCD40CC0(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1DD0DB3AC();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E18, &qword_1DD0EFFE0);
  result = sub_1DD0DEBDC();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v36 = v2;
  v37 = v8;
  v12 = 0;
  v13 = (v8 + 56);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 56);
  v17 = (v14 + 63) >> 6;
  v40 = v4 + 4;
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      sub_1DCC7243C(0, (v34 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_14:
    v22 = *(v8 + 48) + v4[9] * (v19 | (v12 << 6));
    v23 = v4[4];
    v38 = v4[9];
    v39 = v23;
    v23(v41, v22, v42);
    v24 = v11;
    v25 = *(v11 + 40);
    sub_1DCD442F0(&qword_1EDE464E0, MEMORY[0x1E69D0948]);
    result = sub_1DD0DDF0C();
    v11 = v24;
    v26 = -1 << *(v24 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v18 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = v39(*(v24 + 48) + v29 * v38, v41, v42);
    ++*(v24 + 16);
    v8 = v37;
    if (!v16)
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
    v33 = *(v18 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DCD41018(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E20, &qword_1DD0EFFE8);
  result = sub_1DD0DEBDC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1DCC7243C(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_1DD0DE8DC();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DCD4123C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E28, &qword_1DD0EFFF8);
  result = sub_1DD0DEBDC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_1DCC7243C(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 24 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = *(v6 + 40);
    sub_1DD0DF1DC();
    sub_1DD0DDF2C();
    sub_1DD0DE8FC();
    result = sub_1DD0DF20C();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v6 + 48) + 24 * v25);
    *v30 = v18;
    v30[1] = v19;
    v30[2] = v20;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DCD414B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2870, &qword_1DD0E6B80);
  result = sub_1DD0DEBDC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1DCC7243C(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1DD0DF1DC();
    sub_1DD0DDF2C();
    result = sub_1DD0DF20C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DCD41714(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E00, &qword_1DD0EFFD8);
  result = sub_1DD0DEBDC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1DCC7243C(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1DD0DF1DC();
    sub_1DD0DDF2C();
    result = sub_1DD0DF20C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1DCD41970(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1DD0DE8DC();
  v5 = -1 << *(a2 + 32);
  result = sub_1DD0DEADC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1DCD419F4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v44 = result;
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DCD407FC(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1DCD4270C();
        goto LABEL_87;
      }

      sub_1DCD43028(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    v10 = *(v5 + 1);
    v51[0] = *v5;
    v51[1] = v10;
    v52[0] = *(v5 + 2);
    *(v52 + 9) = *(v5 + 41);
    sub_1DD0DF1DC();
    IntentTopic.hash(into:)();
    result = sub_1DD0DF20C();
    v11 = -1 << *(v8 + 32);
    a2 = result & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      v13 = *v5;
      v45 = *(v5 + 1);
      v47 = *(v5 + 2);
      v41 = *(v5 + 3);
      v46 = *(v5 + 4);
      v40 = *(v5 + 5);
      v42 = *(v5 + 6);
      if (v5[1])
      {
        v14 = 1701736302;
      }

      else
      {
        v14 = 0x33764F5355;
      }

      if (v5[1])
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      do
      {
        v16 = (*(v8 + 48) + (a2 << 6));
        v17 = *(v16 + 41);
        v18 = v16[2];
        v19 = *v16;
        v49 = v16[1];
        *v50 = v18;
        v48 = v19;
        *&v50[9] = v17;
        v20 = 0xE400000000000000;
        v21 = 863390798;
        switch(v19)
        {
          case 1:
            v21 = 880168014;
            break;
          case 2:
            v21 = 1885430133;
            break;
          case 3:
            v21 = 0x4974694B69726973;
            v20 = 0xED0000746E65746ELL;
            break;
          case 4:
            v21 = 0xD000000000000010;
            v20 = 0x80000001DD110040;
            break;
          case 5:
            v21 = 0xD000000000000010;
            v20 = 0x80000001DD110060;
            break;
          case 6:
            v20 = 0xE800000000000000;
            v21 = 0x726574756F526C6ELL;
            break;
          case 7:
            v21 = 0x746E65696C436669;
            v20 = 0xEE006E6F69746341;
            break;
          case 8:
            v20 = 0xE700000000000000;
            v21 = 0x6E776F6E6B6E75;
            break;
          default:
            break;
        }

        v22 = 0xE400000000000000;
        v23 = 863390798;
        switch(v13)
        {
          case 1:
            v23 = 880168014;
            break;
          case 2:
            v23 = 1885430133;
            break;
          case 3:
            v23 = 0x4974694B69726973;
            v22 = 0xED0000746E65746ELL;
            break;
          case 4:
            v23 = 0xD000000000000010;
            v22 = 0x80000001DD110040;
            break;
          case 5:
            v23 = 0xD000000000000010;
            v22 = 0x80000001DD110060;
            break;
          case 6:
            v22 = 0xE800000000000000;
            v23 = 0x726574756F526C6ELL;
            break;
          case 7:
            v23 = 0x746E65696C436669;
            v22 = 0xEE006E6F69746341;
            break;
          case 8:
            v22 = 0xE700000000000000;
            v23 = 0x6E776F6E6B6E75;
            break;
          default:
            break;
        }

        if (v21 == v23 && v20 == v22)
        {
          sub_1DCB32880(&v48, v51);
        }

        else
        {
          v25 = sub_1DD0DF0AC();
          sub_1DCB32880(&v48, v51);

          if ((v25 & 1) == 0)
          {
            goto LABEL_82;
          }
        }

        if (BYTE1(v48))
        {
          v26 = 1701736302;
        }

        else
        {
          v26 = 0x33764F5355;
        }

        if (BYTE1(v48))
        {
          v27 = 0xE400000000000000;
        }

        else
        {
          v27 = 0xE500000000000000;
        }

        if (v26 == v14 && v27 == v15)
        {
        }

        else
        {
          v29 = sub_1DD0DF0AC();

          if ((v29 & 1) == 0)
          {
            goto LABEL_82;
          }
        }

        if (v49)
        {
          if (!v47)
          {
            goto LABEL_71;
          }

          v30 = *(&v48 + 1) == v45 && v49 == v47;
          if (!v30 && (sub_1DD0DF0AC() & 1) == 0)
          {
            goto LABEL_82;
          }
        }

        else
        {

          if (v47)
          {
            goto LABEL_82;
          }
        }

        if (*v50)
        {
          if (!v46)
          {
LABEL_71:

LABEL_82:
            result = sub_1DCB340B4(&v48);
            goto LABEL_83;
          }

          v31 = *(&v49 + 1) == v41 && *v50 == v46;
          if (!v31 && (sub_1DD0DF0AC() & 1) == 0)
          {
            goto LABEL_82;
          }
        }

        else
        {

          if (v46)
          {
            goto LABEL_82;
          }
        }

        if (*&v50[16])
        {
          if (!v42)
          {
            goto LABEL_82;
          }

          if (*&v50[8] == v40 && *&v50[16] == v42)
          {
            goto LABEL_90;
          }

          v33 = sub_1DD0DF0AC();
          result = sub_1DCB340B4(&v48);
          if (v33)
          {
            goto LABEL_91;
          }
        }

        else
        {
          result = sub_1DCB340B4(&v48);
          if (!v42)
          {
            goto LABEL_91;
          }
        }

LABEL_83:
        a2 = (a2 + 1) & v12;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_87:
  v34 = *v43;
  *(*v43 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v35 = (*(v34 + 48) + (a2 << 6));
  v36 = v44[1];
  *v35 = *v44;
  v35[1] = v36;
  v35[2] = v44[2];
  *(v35 + 41) = *(v44 + 41);
  v37 = *(v34 + 16);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
LABEL_90:
    sub_1DCB340B4(&v48);
LABEL_91:
    result = sub_1DD0DF11C();
    __break(1u);
  }

  else
  {
    *(v34 + 16) = v39;
  }

  return result;
}

uint64_t sub_1DCD41FC8(uint64_t a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = sub_1DD0DB3AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DCD40CC0(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_1DCD4347C(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_1DCD442F0(&qword_1EDE464E0, MEMORY[0x1E69D0948]);
      v16 = sub_1DD0DDF0C();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_1DCD442F0(&qword_1ECCA4E10, MEMORY[0x1E69D0948]);
        v18 = sub_1DD0DDF7C();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_1DCD4288C();
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = sub_1DD0DF11C();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_1DCD42254(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DCD41018(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1DCD43794(v6 + 1);
LABEL_8:
      v8 = *v3;
      v9 = *(*v3 + 40);
      result = sub_1DD0DE8DC();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v10;
        if (((*(v8 + 56 + (((result & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1DCB10E5C(0, &qword_1EDE460A8, 0x1E696AAE8);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_1DD0DE8EC();

        if (v12)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DCD42AC0();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    result = sub_1DD0DF11C();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

uint64_t sub_1DCD423B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    sub_1DCD4123C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_1DCD42C10();
      goto LABEL_17;
    }

    sub_1DCD439A4(v10 + 1);
  }

  v12 = *v5;
  v13 = *(*v5 + 40);
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  sub_1DD0DE8FC();
  result = sub_1DD0DF20C();
  v14 = -1 << *(v12 + 32);
  a4 = result & ~v14;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    do
    {
      v16 = (*(v12 + 48) + 24 * a4);
      v17 = v16[2];
      v18 = *v16 == v9 && v16[1] == a2;
      if (v18 || (v19 = v16[1], result = sub_1DD0DF0AC(), (result & 1) != 0))
      {
        sub_1DCB10E5C(0, &qword_1EDE4D6A8, 0x1E69E58C0);

        v20 = v17;
        v21 = sub_1DD0DE8EC();

        if (v21)
        {
          goto LABEL_20;
        }
      }

      a4 = (a4 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_17:
  v22 = *v27;
  *(*v27 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = (*(v22 + 48) + 24 * a4);
  *v23 = v9;
  v23[1] = a2;
  v23[2] = a3;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_20:
  result = sub_1DD0DF11C();
  __break(1u);
  return result;
}

uint64_t sub_1DCD425A4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1DCD41714(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1DCD43C00(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1DD0DF1DC();
      sub_1DD0DDF2C();
      result = sub_1DD0DF20C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_1DD0DF0AC() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1DCD42ED0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1DD0DF11C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1DCD4270C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DF8, &qword_1DD0EFFD0);
  v2 = *v0;
  v3 = sub_1DD0DEBCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = v18[1];
        v19 = v18[2];
        v21 = *v18;
        *&v24[9] = *(v18 + 41);
        v23[1] = v20;
        *v24 = v19;
        v23[0] = v21;
        memmove((*(v4 + 48) + (v17 << 6)), v18, 0x39uLL);
        result = sub_1DCB32880(v23, &v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1DCD4288C()
{
  v1 = v0;
  v2 = sub_1DD0DB3AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E18, &qword_1DD0EFFE0);
  v8 = *v0;
  v9 = sub_1DD0DEBCC();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 56 + 8 * v12)
    {
      result = memmove(result, (v8 + 56), 8 * v12);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v21 = *(v8 + 56 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v10;
  }

  return result;
}

id sub_1DCD42AC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E20, &qword_1DD0EFFE8);
  v2 = *v0;
  v3 = sub_1DD0DEBCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1DCD42C10()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E28, &qword_1DD0EFFF8);
  v2 = *v0;
  v3 = sub_1DD0DEBCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + 8 * v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;

        result = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1DCD42D78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2870, &qword_1DD0E6B80);
  v2 = *v0;
  v3 = sub_1DD0DEBCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1DCD42ED0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E00, &qword_1DD0EFFD8);
  v2 = *v0;
  v3 = sub_1DD0DEBCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1DCD43028(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DF8, &qword_1DD0EFFD0);
  result = sub_1DD0DEBDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v36 = v3;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = (*(v3 + 48) + ((v14 | (v7 << 6)) << 6));
        v18 = *v17;
        v19 = *(v17 + 41);
        v20 = v17[2];
        v39 = v17[1];
        *v40 = v20;
        *&v40[9] = v19;
        v38 = v18;
        v21 = *(v6 + 40);
        sub_1DD0DF1DC();
        sub_1DCB32880(&v38, v37);
        sub_1DD0DDF2C();

        v22 = v39;
        sub_1DD0DDF2C();

        if (v22)
        {
          MEMORY[0x1E12A7840](0);
          sub_1DD0DDF2C();
        }

        else
        {
          MEMORY[0x1E12A7840](1);
        }

        if (*v40)
        {
          MEMORY[0x1E12A7840](0);
          sub_1DD0DDF2C();
        }

        else
        {
          MEMORY[0x1E12A7840](1);
        }

        if (*&v40[16])
        {
          sub_1DD0DF1FC();
          sub_1DD0DDF2C();
        }

        else
        {
          sub_1DD0DF1FC();
        }

        v3 = v36;
        result = sub_1DD0DF20C();
        v23 = -1 << *(v6 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
        *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v31 = (*(v6 + 48) + (v26 << 6));
        v32 = v38;
        v33 = v39;
        v34 = *v40;
        *(v31 + 41) = *&v40[9];
        v31[1] = v33;
        v31[2] = v34;
        *v31 = v32;
        ++*(v6 + 16);
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v13 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_32;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v35;
          goto LABEL_36;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_36:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DCD4347C(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1DD0DB3AC();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E18, &qword_1DD0EFFE0);
  v11 = sub_1DD0DEBDC();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    if (v17)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v23 = *(v37 + 72);
        (*(v37 + 16))(v8, *(result + 48) + v23 * (v20 | (v13 << 6)), v38);
        v24 = *(v11 + 40);
        sub_1DCD442F0(&qword_1EDE464E0, MEMORY[0x1E69D0948]);
        result = sub_1DD0DDF0C();
        v25 = -1 << *(v11 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v19 + 8 * (v26 >> 6))) == 0)
        {
          break;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v19 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v19 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        (*v34)(*(v11 + 48) + v28 * v23, v8, v38);
        ++*(v11 + 16);
        result = v35;
        if (!v17)
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
        v32 = *(v19 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v21 = v13;
      while (1)
      {
        v13 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v13 >= v18)
        {

          v2 = v33;
          goto LABEL_27;
        }

        v22 = *(v14 + 8 * v13);
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v17 = (v22 - 1) & v22;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1DCD43794(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E20, &qword_1DD0EFFE8);
  result = sub_1DD0DEBDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_1DD0DE8DC();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DCD439A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E28, &qword_1DD0EFFF8);
  result = sub_1DD0DEBDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = (*(v3 + 48) + 24 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = *(v6 + 40);
        sub_1DD0DF1DC();

        v22 = v20;
        sub_1DD0DDF2C();
        sub_1DD0DE8FC();
        result = sub_1DD0DF20C();
        v23 = -1 << *(v6 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v31 = (*(v6 + 48) + 24 * v26);
        *v31 = v18;
        v31[1] = v19;
        v31[2] = v22;
        ++*(v6 + 16);
        v3 = v33;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v13 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DCD43C00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E00, &qword_1DD0EFFD8);
  result = sub_1DD0DEBDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v18 = *v16;
        v17 = v16[1];
        v19 = *(v6 + 40);
        sub_1DD0DF1DC();
        sub_1DD0DDF2C();
        result = sub_1DD0DF20C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v18;
        v28[1] = v17;
        ++*(v6 + 16);

        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DCD43E34(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCD43E98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void destroy for FlowDelegatePluginLoader.KeyAndBundle(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 16);
}

void *sub_1DCD440B0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[2];
  a1[2] = v4;

  v5 = v4;
  return a1;
}

void *assignWithCopy for FlowDelegatePluginLoader.KeyAndBundle(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v5 = a2[2];
  v6 = a1[2];
  a1[2] = v5;
  v7 = v5;

  return a1;
}

void *assignWithTake for FlowDelegatePluginLoader.KeyAndBundle(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1[1];

  v5 = a1[2];
  *(a1 + 1) = *(a2 + 8);

  return a1;
}

unint64_t sub_1DCD441AC()
{
  result = qword_1EDE4AE60;
  if (!qword_1EDE4AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4AE60);
  }

  return result;
}

uint64_t sub_1DCD44200@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = v1 + ((*(v4 + 80) + 56) & ~*(v4 + 80));

  return sub_1DCD3D164((v1 + 16), v5, a1);
}

uint64_t sub_1DCD44270(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCD442C4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1DCD442D4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1DCD3F364(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_1DCD442E0(uint64_t result)
{
  if (result != 1)
  {
    sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCD442F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FlowUnhandledEvent.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FlowUnhandledEvent.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t *assignWithCopy for FlowExecutionEnvironment(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  __swift_assign_boxed_opaque_existential_1(a1 + 5, a2 + 5);
  __swift_assign_boxed_opaque_existential_1(a1 + 10, a2 + 10);
  return a1;
}

uint64_t assignWithTake for FlowExecutionEnvironment(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 80));
  v5 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v5;
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for FlowExecutionEnvironment(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for FlowExecutionEnvironment(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t FlowOutput.__allocating_init(atoms:flowActivity:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FlowOutput.init(atoms:flowActivity:)(a1, a2);
  return v4;
}

uint64_t sub_1DCD446BC(uint64_t a1, uint64_t *a2)
{
  sub_1DCD44804(a1, v5);
  v3 = *a2;
  return sub_1DCD44740(v5);
}

uint64_t sub_1DCD44740(uint64_t a1)
{
  swift_beginAccess();
  sub_1DCB6C5E8(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t FlowOutput.init(atoms:flowActivity:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 16) = a1;
  swift_beginAccess();
  sub_1DCB6C5E8(a2, v2 + 24);
  swift_endAccess();
  return v2;
}

uint64_t sub_1DCD44804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3280, &unk_1DD0E23D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FlowOutput.deinit()
{
  v1 = *(v0 + 16);

  sub_1DCD4489C(v0 + 24);
  return v0;
}

uint64_t sub_1DCD4489C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3280, &unk_1DD0E23D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FlowOutput.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_1DCD4489C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t initializeBufferWithCopyOfBuffer for FlowOutputAtom(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v5 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v5;
    v6 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v6;
    v7 = *(a2 + 48);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v7;
    v8 = *(a2 + 64);
    v9 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v9;
    *(a1 + 64) = v8;
    v10 = *(a2 + 88);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v10;
    v11 = *(a2 + 104);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = v11;
    v12 = *(a2 + 120);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = v12;
    v33 = *(a2 + 128);
    *(a1 + 128) = v33;
    *(a1 + 136) = *(a2 + 136);
    v13 = *(a2 + 152);
    v32 = *(a2 + 144);
    *(a1 + 144) = v32;
    *(a1 + 152) = v13;
    v14 = *(a2 + 168);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = v14;
    *(a1 + 176) = *(a2 + 176);
    v15 = *(a2 + 192);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = v15;
    *(a1 + 200) = *(a2 + 200);
    v16 = *(a2 + 216);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = v16;
    v17 = *(a2 + 232);
    v34 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = v17;
    *(a1 + 240) = v34;
    v35 = *(a2 + 256);

    v18 = v33;
    v19 = v32;

    if (v35)
    {
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = v35;
      *(a1 + 264) = *(a2 + 264);
    }

    else
    {
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
    }

    v22 = *(a2 + 280);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = v22;
    v23 = type metadata accessor for NLContextUpdate();
    v24 = v23[32];
    v25 = sub_1DD0DD72C();

    if (__swift_getEnumTagSinglePayload(a2 + v24, 1, v25))
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
      memcpy((a1 + v24), (a2 + v24), *(*(v26 - 8) + 64));
    }

    else
    {
      (*(*(v25 - 8) + 16))(a1 + v24, a2 + v24, v25);
      __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v25);
    }

    *(a1 + v23[33]) = *(a2 + v23[33]);
    *(a1 + v23[34]) = *(a2 + v23[34]);
    v27 = v23[35];
    v28 = (a1 + v27);
    v29 = (a2 + v27);
    v30 = v29[1];
    *v28 = *v29;
    v28[1] = v30;
  }

  else
  {
    v20 = *a2;
    *a1 = *a2;
    v21 = v20;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void destroy for FlowOutputAtom(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(a1 + 8);

    v3 = *(a1 + 16);

    v4 = *(a1 + 24);

    v5 = *(a1 + 40);

    v6 = *(a1 + 48);

    v7 = *(a1 + 56);

    v8 = *(a1 + 80);

    v9 = *(a1 + 96);

    v10 = *(a1 + 104);

    v11 = *(a1 + 120);

    v12 = *(a1 + 152);

    v13 = *(a1 + 160);

    v14 = *(a1 + 168);

    v15 = *(a1 + 192);

    v16 = *(a1 + 208);

    v17 = *(a1 + 216);

    v18 = *(a1 + 224);

    v19 = *(a1 + 232);

    v20 = *(a1 + 240);

    if (*(a1 + 256))
    {

      v21 = *(a1 + 264);
    }

    v22 = *(a1 + 280);

    v23 = type metadata accessor for NLContextUpdate();
    v24 = *(v23 + 128);
    v25 = sub_1DD0DD72C();
    if (!__swift_getEnumTagSinglePayload(a1 + v24, 1, v25))
    {
      (*(*(v25 - 8) + 8))(a1 + v24, v25);
    }

    v26 = *(a1 + *(v23 + 140) + 8);
  }

  else
  {
    v27 = *a1;
  }
}

uint64_t initializeWithCopy for FlowOutputAtom(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v4 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v4;
    v5 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v5;
    v6 = *(a2 + 48);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v6;
    v7 = *(a2 + 64);
    v8 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v8;
    *(a1 + 64) = v7;
    v9 = *(a2 + 88);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v9;
    v10 = *(a2 + 104);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = v10;
    v11 = *(a2 + 120);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = v11;
    v32 = *(a2 + 128);
    *(a1 + 128) = v32;
    *(a1 + 136) = *(a2 + 136);
    v12 = *(a2 + 152);
    v31 = *(a2 + 144);
    *(a1 + 144) = v31;
    *(a1 + 152) = v12;
    v13 = *(a2 + 168);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = v13;
    *(a1 + 176) = *(a2 + 176);
    v14 = *(a2 + 192);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = v14;
    *(a1 + 200) = *(a2 + 200);
    v15 = *(a2 + 216);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = v15;
    v16 = *(a2 + 232);
    v33 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = v16;
    *(a1 + 240) = v33;
    v34 = *(a2 + 256);

    v17 = v32;
    v18 = v31;

    if (v34)
    {
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = v34;
      *(a1 + 264) = *(a2 + 264);
    }

    else
    {
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
    }

    v21 = *(a2 + 280);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = v21;
    v22 = type metadata accessor for NLContextUpdate();
    v23 = v22[32];
    v24 = sub_1DD0DD72C();

    if (__swift_getEnumTagSinglePayload(a2 + v23, 1, v24))
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
      memcpy((a1 + v23), (a2 + v23), *(*(v25 - 8) + 64));
    }

    else
    {
      (*(*(v24 - 8) + 16))(a1 + v23, a2 + v23, v24);
      __swift_storeEnumTagSinglePayload(a1 + v23, 0, 1, v24);
    }

    *(a1 + v22[33]) = *(a2 + v22[33]);
    *(a1 + v22[34]) = *(a2 + v22[34]);
    v26 = v22[35];
    v27 = (a1 + v26);
    v28 = (a2 + v26);
    v29 = v28[1];
    *v27 = *v28;
    v27[1] = v29;
  }

  else
  {
    v19 = *a2;
    *a1 = *a2;
    v20 = v19;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for FlowOutputAtom(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1DCD455B0(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      v4 = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 64) = v4;
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      v19 = *(a2 + 128);
      *(a1 + 128) = v19;
      *(a1 + 136) = *(a2 + 136);
      v18 = *(a2 + 144);
      *(a1 + 144) = v18;
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v20 = *(a2 + 256);

      v5 = v19;
      v6 = v18;

      if (v20)
      {
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = *(a2 + 264);
      }

      else
      {
        v9 = *(a2 + 248);
        *(a1 + 264) = *(a2 + 264);
        *(a1 + 248) = v9;
      }

      *(a1 + 272) = *(a2 + 272);
      *(a1 + 280) = *(a2 + 280);
      v10 = type metadata accessor for NLContextUpdate();
      v11 = v10[32];
      v12 = sub_1DD0DD72C();

      if (__swift_getEnumTagSinglePayload(a2 + v11, 1, v12))
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
        memcpy((a1 + v11), (a2 + v11), *(*(v13 - 8) + 64));
      }

      else
      {
        (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
        __swift_storeEnumTagSinglePayload(a1 + v11, 0, 1, v12);
      }

      *(a1 + v10[33]) = *(a2 + v10[33]);
      *(a1 + v10[34]) = *(a2 + v10[34]);
      v14 = v10[35];
      v15 = (a1 + v14);
      v16 = (a2 + v14);
      *v15 = *v16;
      v15[1] = v16[1];
    }

    else
    {
      v7 = *a2;
      *a1 = *a2;
      v8 = v7;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1DCD455B0(uint64_t a1)
{
  v2 = type metadata accessor for FlowOutputAtom();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FlowOutputAtom()
{
  result = qword_1ECCA4E90;
  if (!qword_1ECCA4E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *initializeWithTake for FlowOutputAtom(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 3) = *(a2 + 3);
    v6 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v6;
    *(a1 + 8) = *(a2 + 8);
    a1[72] = a2[72];
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 13) = *(a2 + 13);
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 16) = *(a2 + 16);
    a1[136] = a2[136];
    v7 = *(a2 + 10);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 10) = v7;
    a1[176] = a2[176];
    *(a1 + 184) = *(a2 + 184);
    a1[200] = a2[200];
    v8 = *(a2 + 14);
    *(a1 + 13) = *(a2 + 13);
    *(a1 + 14) = v8;
    *(a1 + 30) = *(a2 + 30);
    *(a1 + 33) = *(a2 + 33);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 17) = *(a2 + 17);
    v9 = type metadata accessor for NLContextUpdate();
    v10 = v9[32];
    v11 = sub_1DD0DD72C();
    if (__swift_getEnumTagSinglePayload(&a2[v10], 1, v11))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
      memcpy(&a1[v10], &a2[v10], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
      __swift_storeEnumTagSinglePayload(&a1[v10], 0, 1, v11);
    }

    a1[v9[33]] = a2[v9[33]];
    a1[v9[34]] = a2[v9[34]];
    *&a1[v9[35]] = *&a2[v9[35]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v13 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v13);
  }
}

char *assignWithTake for FlowOutputAtom(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCD455B0(a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 3) = *(a2 + 3);
    v6 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v6;
    *(a1 + 8) = *(a2 + 8);
    a1[72] = a2[72];
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 13) = *(a2 + 13);
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 16) = *(a2 + 16);
    a1[136] = a2[136];
    v7 = *(a2 + 10);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 10) = v7;
    a1[176] = a2[176];
    *(a1 + 184) = *(a2 + 184);
    a1[200] = a2[200];
    v8 = *(a2 + 14);
    *(a1 + 13) = *(a2 + 13);
    *(a1 + 14) = v8;
    *(a1 + 30) = *(a2 + 30);
    *(a1 + 33) = *(a2 + 33);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 17) = *(a2 + 17);
    v9 = type metadata accessor for NLContextUpdate();
    v10 = v9[32];
    v11 = sub_1DD0DD72C();
    if (__swift_getEnumTagSinglePayload(&a2[v10], 1, v11))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
      memcpy(&a1[v10], &a2[v10], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
      __swift_storeEnumTagSinglePayload(&a1[v10], 0, 1, v11);
    }

    a1[v9[33]] = a2[v9[33]];
    a1[v9[34]] = a2[v9[34]];
    *&a1[v9[35]] = *&a2[v9[35]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t sub_1DCD45AA0()
{
  result = type metadata accessor for NLContextUpdate();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1DCD45B38()
{
  OUTLINED_FUNCTION_42();
  v1[19] = v2;
  v1[20] = v0;
  v3 = *(*(type metadata accessor for NLContextUpdate() - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v4 = type metadata accessor for FlowOutputAtom();
  v1[22] = v4;
  v5 = *(v4 - 8);
  v1[23] = v5;
  v6 = *(v5 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCD45C38, 0, 0);
}

uint64_t sub_1DCD45C38()
{
  sub_1DCB17CA0(*(v0 + 152), v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  type metadata accessor for FlowOutput();
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 136);
    *(v0 + 216) = v1;
    if (qword_1EDE4F900 != -1)
    {
LABEL_30:
      OUTLINED_FUNCTION_0_0();
    }

    v2 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v2, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v6, v7, "Warning: Deprecated FlowOutput being used. Domains should use AceOutput instead.");
      MEMORY[0x1E12A8390](v5, -1, -1);
    }

    v8 = MEMORY[0x1E69E7CC0];
    *(v0 + 144) = MEMORY[0x1E69E7CC0];
    v9 = *(v1 + 16);
    *(v0 + 224) = v9;
    v10 = *(v9 + 16);
    *(v0 + 232) = v10;
    if (v10)
    {
      *(v0 + 304) = *(*(v0 + 184) + 80);

      v11 = 0;
      while (1)
      {
        *(v0 + 248) = v8;
        *(v0 + 256) = v8;
        OUTLINED_FUNCTION_15_33(v11);
        if (v13)
        {
          __break(1u);
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_6_39(v12);
        v14 = OUTLINED_FUNCTION_20();
        sub_1DCCCF36C(v14, v15);
        if (OUTLINED_FUNCTION_18_27() == 1)
        {
          break;
        }

        v16 = *(v0 + 208);
        v17 = *(v0 + 192);
        v1 = *(v0 + 176);
        OUTLINED_FUNCTION_0_50();
        sub_1DCD46838(v18, v19);
        v20 = OUTLINED_FUNCTION_20();
        sub_1DCCCF36C(v20, v21);
        if (OUTLINED_FUNCTION_18_27() == 1)
        {
          v22 = OUTLINED_FUNCTION_3_56();
          sub_1DCD46838(v22, v23);
          v24 = OUTLINED_FUNCTION_20();
          sub_1DCD46838(v24, v25);
        }

        else
        {
          v26 = **(v0 + 192);
          MEMORY[0x1E12A6920]();
          OUTLINED_FUNCTION_14_34();
          if (v13)
          {
            OUTLINED_FUNCTION_12_32();
          }

          OUTLINED_FUNCTION_16_23();

          OUTLINED_FUNCTION_0_50();
          sub_1DCD46838(v1, v27);
          v8 = *(v0 + 144);
        }

        v11 = *(v0 + 240) + 1;
        if (v11 == *(v0 + 232))
        {
          v48 = *(v0 + 224);

          goto LABEL_26;
        }
      }

      v39 = *(v0 + 160);
      sub_1DCD467D4(*(v0 + 200), *(v0 + 168));
      v41 = *(v39 + 16);
      v40 = *(v39 + 24);
      swift_getObjectType();
      OUTLINED_FUNCTION_7_36();
      v50 = v42 + *v42;
      v44 = *(v43 + 4);
      v45 = swift_task_alloc();
      *(v0 + 264) = v45;
      *v45 = v0;
      v46 = OUTLINED_FUNCTION_1_54(v45);

      return v47(v46);
    }

    else
    {
LABEL_26:
      OUTLINED_FUNCTION_19_24();
      v49 = swift_task_alloc();
      *(v0 + 288) = v49;
      *v49 = v0;
      OUTLINED_FUNCTION_2_52(v49);

      return AceServiceInvokerAsync.submitAllSerial(_:)();
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v28 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v28, qword_1EDE57E00);
    v29 = sub_1DD0DD8EC();
    v30 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v32, v33, "Output is not a FlowOutput! handle() should have never been called.");
      MEMORY[0x1E12A8390](v31, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD0E07C0;
    *(inited + 32) = 0x6567617373654DLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD000000000000078;
    *(inited + 56) = 0x80000001DD11A9A0;
    v35 = sub_1DD0DDE9C();
    v36 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1DCF7E450(0xD000000000000016, 0x80000001DD1126E0, 1002, v35);
    swift_willThrow();
    OUTLINED_FUNCTION_11_34();

    OUTLINED_FUNCTION_29();

    return v37();
  }
}

uint64_t sub_1DCD46118()
{
  OUTLINED_FUNCTION_42();
  v3 = *(*v1 + 264);
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v2;
  v2[34] = v0;

  if (v0)
  {
    v5 = v2[31];
    v6 = v2[28];

    v7 = sub_1DCD4660C;
  }

  else
  {
    v7 = sub_1DCD46234;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1DCD46234()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  OUTLINED_FUNCTION_4_51();
  sub_1DCD46838(v3, v4);
  OUTLINED_FUNCTION_0_50();
  sub_1DCD46838(v1, v5);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  while (1)
  {
    v8 = *(v0 + 240) + 1;
    if (v8 == *(v0 + 232))
    {
      break;
    }

    *(v0 + 248) = v7;
    *(v0 + 256) = v6;
    OUTLINED_FUNCTION_15_33(v8);
    if (v10)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_6_39(v9);
    v11 = OUTLINED_FUNCTION_20();
    sub_1DCCCF36C(v11, v12);
    if (OUTLINED_FUNCTION_18_27() == 1)
    {
      v29 = *(v0 + 160);
      sub_1DCD467D4(*(v0 + 200), *(v0 + 168));
      v31 = *(v29 + 16);
      v30 = *(v29 + 24);
      swift_getObjectType();
      OUTLINED_FUNCTION_7_36();
      v38 = v32 + *v32;
      v34 = *(v33 + 4);
      v35 = swift_task_alloc();
      *(v0 + 264) = v35;
      *v35 = v0;
      v36 = OUTLINED_FUNCTION_1_54();

      v37(v36);
      return;
    }

    v13 = *(v0 + 200);
    v14 = *(v0 + 208);
    v15 = *(v0 + 192);
    v16 = *(v0 + 176);
    OUTLINED_FUNCTION_0_50();
    sub_1DCD46838(v17, v18);
    v19 = OUTLINED_FUNCTION_20();
    sub_1DCCCF36C(v19, v20);
    if (OUTLINED_FUNCTION_18_27() == 1)
    {
      v21 = OUTLINED_FUNCTION_3_56();
      sub_1DCD46838(v21, v22);
      v23 = OUTLINED_FUNCTION_20();
      sub_1DCD46838(v23, v24);
    }

    else
    {
      v25 = **(v0 + 192);
      MEMORY[0x1E12A6920]();
      OUTLINED_FUNCTION_14_34();
      if (v10)
      {
        OUTLINED_FUNCTION_12_32();
      }

      OUTLINED_FUNCTION_16_23();

      OUTLINED_FUNCTION_0_50();
      sub_1DCD46838(v16, v26);
      v7 = *(v0 + 144);
      v6 = v7;
    }
  }

  v27 = *(v0 + 224);

  OUTLINED_FUNCTION_19_24();
  v28 = swift_task_alloc();
  *(v0 + 288) = v28;
  *v28 = v0;
  OUTLINED_FUNCTION_2_52(v28);

  AceServiceInvokerAsync.submitAllSerial(_:)();
}

uint64_t sub_1DCD4646C()
{
  OUTLINED_FUNCTION_42();
  v3 = *(*v1 + 288);
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v2;
  *(v2 + 296) = v0;

  if (v0)
  {
    v5 = sub_1DCD466AC;
  }

  else
  {
    v6 = *(v2 + 280);

    v5 = sub_1DCD4657C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCD4657C()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[21];

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCD4660C()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[21];

  OUTLINED_FUNCTION_4_51();
  sub_1DCD46838(v3, v4);
  OUTLINED_FUNCTION_0_50();
  sub_1DCD46838(v2, v5);
  v6 = v0[34];
  OUTLINED_FUNCTION_11_34();

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCD466AC()
{
  v1 = v0[35];
  v2 = v0[27];

  v3 = v0[37];
  OUTLINED_FUNCTION_11_34();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCD4673C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB22EC8;

  return sub_1DCD45B38();
}

uint64_t sub_1DCD467D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLContextUpdate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD46838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static FlowOutputHelper.makeFlowOutput(atoms:flowActivity:)(uint64_t a1, uint64_t a2)
{
  sub_1DCB09910(a2, v4, &unk_1ECCA3280, &unk_1DD0E23D0);
  type metadata accessor for FlowOutput();
  swift_allocObject();

  return FlowOutput.init(atoms:flowActivity:)(v2, v4);
}

uint64_t sub_1DCD46914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28F8, &qword_1DD0E6F08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD46988(void *a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v47 = a2;
  v51 = a1;
  v3 = type metadata accessor for FlowOutputAtom();
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28F8, &qword_1DD0E6F08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v46 - v15;
  v17 = type metadata accessor for NLContextUpdate();
  v18 = OUTLINED_FUNCTION_2(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v28 = &v46 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA4EA0, &qword_1DD0F02C8);
  v29 = *(v8 + 72);
  v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1DD0E32B0;
  v48 = v31;
  v32 = v31 + v30;
  v33 = v3;
  sub_1DCB09910(v47, v28, &unk_1ECCA3270, &qword_1DD0E0F70);
  v34 = 1;
  if (__swift_getEnumTagSinglePayload(v28, 1, v17) != 1)
  {
    sub_1DCD4870C(v28, v23, type metadata accessor for NLContextUpdate);
    sub_1DCB46478(v23, v32);
    swift_storeEnumTagMultiPayload();
    sub_1DCB41F98(v23);
    v34 = 0;
  }

  __swift_storeEnumTagSinglePayload(v32, v34, 1, v3);
  v35 = v51;
  *(v32 + v29) = v51;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v32 + v29, 0, 1, v3);
  v36 = v35;
  v37 = 0;
  v38 = 0;
  v39 = MEMORY[0x1E69E7CC0];
  v51 = v3;
  do
  {
    v40 = v37;
    sub_1DCB09910(v32 + v38 * v29, v16, &qword_1ECCA28F8, &qword_1DD0E6F08);
    sub_1DCD46914(v16, v13);
    if (__swift_getEnumTagSinglePayload(v13, 1, v33) == 1)
    {
      sub_1DCB0E9D8(v13, &qword_1ECCA28F8, &qword_1DD0E6F08);
    }

    else
    {
      sub_1DCD4870C(v13, v52, type metadata accessor for FlowOutputAtom);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = *(v39 + 16);
        sub_1DCE19828();
        v39 = v43;
      }

      v41 = *(v39 + 16);
      if (v41 >= *(v39 + 24) >> 1)
      {
        sub_1DCE19828();
        v39 = v44;
      }

      *(v39 + 16) = v41 + 1;
      sub_1DCD4870C(v52, v39 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v41, type metadata accessor for FlowOutputAtom);
      v33 = v51;
    }

    v37 = 1;
    v38 = 1;
  }

  while ((v40 & 1) == 0);
  swift_setDeallocating();
  sub_1DCC657E4();
  sub_1DCB09910(v49, v53, &unk_1ECCA3280, &unk_1DD0E23D0);
  type metadata accessor for FlowOutput();
  swift_allocObject();
  return FlowOutput.init(atoms:flowActivity:)(v39, v53);
}

void static FlowOutputHelper.makeCancellationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:canUseServerTTS:flowActivity:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  sub_1DCD47034(a2);
}

void sub_1DCD47034(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BE8, &unk_1DD0EB600);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 184))(v5, v6);
  sub_1DD0DCFCC();
}

uint64_t sub_1DCD4737C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = sub_1DCB08B14(a2);
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v3 == v4)
    {
      v10 = sub_1DCB08B14(a1);
      v47 = sub_1DCB08B14(v2);
      if (v47 < v10)
      {
        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v11 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v11, qword_1EDE57E00);

        v12 = sub_1DD0DD8EC();
        v13 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134218240;
          *(v14 + 4) = sub_1DCB08B14(a1);

          *(v14 + 12) = 2048;
          *(v14 + 14) = sub_1DCB08B14(v2);

          _os_log_impl(&dword_1DCAFC000, v12, v13, "FlowOutputHelper is applying dialogs to snippets but there are %ld dialogs and %ld snippets. We will attempt to attach dialogs to as many snippets as possible and add empty AceViews as needed.", v14, 0x16u);
          MEMORY[0x1E12A8390](v14, -1, -1);
        }

        else
        {
        }
      }

      if (v10 < 0)
      {
        goto LABEL_66;
      }

      v19 = MEMORY[0x1E69E7CC0];
      if (v10)
      {
        v49 = MEMORY[0x1E69E7CC0];
        sub_1DD0DED0C();
        v20 = a1 & 0xC000000000000001;
        v21 = v10;
        v22 = 4;
        v46 = v21;
        do
        {
          if (v22 - 4 >= v47)
          {
            v28 = [objc_allocWithZone(MEMORY[0x1E69C7708]) init];
            if (v20)
            {
              v29 = MEMORY[0x1E12A72C0](v22 - 4, a1);
            }

            else
            {
              v29 = *(a1 + 8 * v22);
            }

            v30 = v29;
            [v28 setDialog_];

            sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
            v31 = sub_1DD0DE8CC();
            [v28 setListenAfterSpeaking_];
          }

          else
          {
            if (v5)
            {
              v23 = MEMORY[0x1E12A72C0](v22 - 4, v2);
            }

            else
            {
              if ((v22 - 4) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_65;
              }

              v23 = *(v2 + 8 * v22);
            }

            v24 = v23;
            if (v20)
            {
              v25 = MEMORY[0x1E12A72C0](v22 - 4, a1);
            }

            else
            {
              v25 = *(a1 + 8 * v22);
            }

            v26 = v25;
            [v24 setDialog_];

            if (v5)
            {
              v27 = MEMORY[0x1E12A72C0](v22 - 4, v2);
            }

            else
            {
              v27 = *(v2 + 8 * v22);
            }

            v32 = v27;
            sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
            v33 = sub_1DD0DE8CC();
            [v32 setListenAfterSpeaking_];

            if (v5)
            {
              MEMORY[0x1E12A72C0](v22 - 4, v2);
            }

            else
            {
              v34 = *(v2 + 8 * v22);
            }
          }

          sub_1DD0DECDC();
          v35 = *(v49 + 16);
          sub_1DD0DED1C();
          sub_1DD0DED2C();
          sub_1DD0DECEC();
          ++v22;
          --v21;
        }

        while (v21);
        v19 = v49;
        v10 = v46;
        v6 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      if (v10 >= v47)
      {
        return v19;
      }

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v36 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v36, qword_1EDE57E00);

      v37 = sub_1DD0DD8EC();
      v38 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134218240;
        *(v39 + 4) = sub_1DCB08B14(a1);

        *(v39 + 12) = 2048;
        *(v39 + 14) = sub_1DCB08B14(v2);

        _os_log_impl(&dword_1DCAFC000, v37, v38, "FlowOutputHelper received %ld dialogs but there are %ld snippets. Adding remaining snippets without dialog.", v39, 0x16u);
        MEMORY[0x1E12A8390](v39, -1, -1);
      }

      else
      {
      }

      if (v3 < v10)
      {
        __break(1u);
      }

      else
      {
        sub_1DCF41428(v10, v2);
        result = sub_1DCF41428(v3, v2);
        if (!v5 || v10 == v3)
        {
        }

        else
        {
          if (v10 >= v3)
          {
            __break(1u);
            return result;
          }

          sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);

          v41 = v10;
          do
          {
            v42 = v41 + 1;
            sub_1DD0DEC4C();
            v41 = v42;
          }

          while (v3 != v42);
        }

        if (!(v2 >> 62))
        {
          v43 = v6 + 32;
          v44 = (2 * v3) | 1;
LABEL_61:
          sub_1DCBB92F8(v6, v43, v10, v44);
          return v19;
        }
      }

      v6 = sub_1DD0DEE4C();
      v10 = v45;
      goto LABEL_61;
    }

    if (v5)
    {
      v7 = MEMORY[0x1E12A72C0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v7 = *(v2 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v9 = [v7 dialog];

    ++v4;
    if (v9)
    {

      if (qword_1EDE4F900 != -1)
      {
        goto LABEL_67;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  swift_once();
LABEL_16:
  v15 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v15, qword_1EDE57E00);
  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6CC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1DCAFC000, v16, v17, "FlowOutputHelper detected SADialogs on one or more snippets. Declining to modify provided snippets", v18, 2u);
    MEMORY[0x1E12A8390](v18, -1, -1);
  }

  return v2;
}

uint64_t static FlowOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:preCommandSubmissionContextUpdate:postCommandSubmissionContextUpdate:flowActivity:)(void *__src, int a2, int a3, unint64_t a4, int a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DCB10E5C(0, &unk_1EDE46088, 0x1E69C77A0);
  v13 = sub_1DCF73E90(__dst, a6);
  v14 = sub_1DCD4737C(v13, a4);

  sub_1DCB10E5C(0, &unk_1EDE46230, 0x1E69C7AF8);
  v15 = *MEMORY[0x1E69C8300];
  v16 = sub_1DD0DDFBC();
  v18 = sub_1DCF77328(v16, v17, v14, MEMORY[0x1E69E7CC0], 0);

  v19 = v18;
  v20 = sub_1DCD47C08(v18, a7, a8);

  sub_1DCB09910(a9, __dst, &unk_1ECCA3280, &unk_1DD0E23D0);
  type metadata accessor for FlowOutput();
  swift_allocObject();
  v21 = FlowOutput.init(atoms:flowActivity:)(v20, __dst);

  return v21;
}

uint64_t sub_1DCD47C08(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NLContextUpdate();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v35 - v18;
  sub_1DCB09910(a2, &v35 - v18, &unk_1ECCA3270, &qword_1DD0E0F70);
  if (__swift_getEnumTagSinglePayload(v19, 1, v6) == 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    if (a1)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2478, &unk_1DD0F9870);
      v21 = *(type metadata accessor for FlowOutputAtom() - 8);
      v22 = *(v21 + 72);
      v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1DD0E07C0;
      *(v24 + v23) = a1;
      swift_storeEnumTagMultiPayload();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DCD4870C(v19, v10, type metadata accessor for NLContextUpdate);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2478, &unk_1DD0F9870);
    v25 = *(type metadata accessor for FlowOutputAtom() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1DD0E07C0;
    sub_1DCB46478(v10, v20 + v27);
    swift_storeEnumTagMultiPayload();
    sub_1DCB41F98(v10);
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v36 = v20;
  v28 = a1;
  sub_1DCBB984C(v24);
  v29 = v36;
  sub_1DCB09910(a3, v16, &unk_1ECCA3270, &qword_1DD0E0F70);
  if (__swift_getEnumTagSinglePayload(v16, 1, v6) == 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1DCD4870C(v16, v10, type metadata accessor for NLContextUpdate);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2478, &unk_1DD0F9870);
    v31 = *(type metadata accessor for FlowOutputAtom() - 8);
    v32 = *(v31 + 72);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1DD0E07C0;
    sub_1DCB46478(v10, v30 + v33);
    swift_storeEnumTagMultiPayload();
    sub_1DCB41F98(v10);
  }

  v36 = v29;
  sub_1DCBB984C(v30);
  return v36;
}

uint64_t static FlowOutputHelper.makeClarificationViewOutput(aceViews:nlContextUpdate:flowActivity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DCB10E5C(0, &unk_1EDE46230, 0x1E69C7AF8);
  v5 = *MEMORY[0x1E69C8300];
  v6 = sub_1DD0DDFBC();
  v8 = sub_1DCF77328(v6, v7, a1, MEMORY[0x1E69E7CC0], 0);

  OUTLINED_FUNCTION_0_51(v8);

  return a3;
}

uint64_t sub_1DCD4870C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for FlowOutputHelper(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCD4881C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1DCD488B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 0x28uLL)
  {
    v5 = 40;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  if ((*(v4 + 80) & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v7 = *(a2 + v5);
  if (v7 >= 2)
  {
    v7 = *a2 + 2;
  }

  if (v7 == 1)
  {
    (*(v4 + 16))(a1);
    *(a1 + v5) = 1;
  }

  else
  {
    v8 = *(a2 + 24);
    *(a1 + 24) = v8;
    (**(v8 - 8))(a1);
    *(a1 + v5) = 0;
  }

  return a1;
}

uint64_t sub_1DCD489E4(uint64_t *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 0x28)
  {
    v2 = 40;
  }

  v3 = *(a1 + v2);
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *a1;
        goto LABEL_12;
      case 2:
        v6 = *a1;
        goto LABEL_12;
      case 3:
        v6 = *a1 | (*(a1 + 2) << 16);
        goto LABEL_12;
      case 4:
        v6 = *a1;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        v3 = v6 + 2;
        if (v2 < 4)
        {
          v3 = v7;
        }

        break;
      default:
        break;
    }
  }

  if (v3 == 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  else
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_1DCD48ACC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x28uLL)
  {
    v4 = 40;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        v5 = v8 + 2;
        if (v4 < 4)
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v10 = 1;
  }

  else
  {
    v11 = *(a2 + 24);
    *(a1 + 24) = v11;
    (**(v11 - 8))(a1);
    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCD48C20(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 0x28uLL)
    {
      v7 = 40;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_28;
        case 2:
          v16 = *a2;
          goto LABEL_28;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_28;
        case 4:
          v16 = *a2;
LABEL_28:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      (*(v6 + 16))(a1, a2, v5);
      v18 = 1;
    }

    else
    {
      v19 = *(a2 + 3);
      *(a1 + 3) = v19;
      *(a1 + 4) = *(a2 + 4);
      (**(v19 - 8))(a1, a2);
      v18 = 0;
    }

    a1[v7] = v18;
  }

  return a1;
}

uint64_t sub_1DCD48E48(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x28uLL)
  {
    v4 = 40;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        v5 = v8 + 2;
        if (v4 < 4)
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 32))(a1);
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v11 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v11;
    *(a1 + 32) = *(a2 + 4);
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCD48F74(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 0x28uLL)
    {
      v7 = 40;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_28;
        case 2:
          v16 = *a2;
          goto LABEL_28;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_28;
        case 4:
          v16 = *a2;
LABEL_28:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      (*(v6 + 32))(a1, a2, v5);
      v18 = 1;
    }

    else
    {
      v18 = 0;
      v19 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v19;
      *(a1 + 4) = *(a2 + 4);
    }

    a1[v7] = v18;
  }

  return a1;
}

uint64_t sub_1DCD4916C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 40;
  if (*(v3 + 64) > 0x28uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DCD49290(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCD49454(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 40;
  if (*(v2 + 64) > 0x28uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *a1;
        goto LABEL_12;
      case 2:
        v7 = *a1;
        goto LABEL_12;
      case 3:
        v7 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *a1;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        LODWORD(v4) = v7 + 2;
        if (v3 >= 4)
        {
          v4 = v4;
        }

        else
        {
          v4 = v8;
        }

        break;
      default:
        return v4;
    }
  }

  return v4;
}

void sub_1DCD494F8(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x28uLL)
  {
    v4 = 40;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 2;
      if (v4)
      {
        v6 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v4 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 2;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

uint64_t sub_1DCD495EC@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[1] = a4;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v16);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v13, v18, v8);
    a1(v13);
    result = (*(v9 + 8))(v13, v8);
    if (v5)
    {
      return result;
    }
  }

  else
  {
    sub_1DCAFF9E8(v18, a5);
  }

  type metadata accessor for _FlowPlanEvent();
  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall FlowPlugin.warmup()()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  oslog = sub_1DD0DD8EC();
  v1 = sub_1DD0DE6DC();
  if (os_log_type_enabled(oslog, v1))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v2, v3, "No-op warming...", v4, v5, v6, v7, v8, oslog);
    OUTLINED_FUNCTION_80();
  }
}

Swift::Void __swiftcall FlowPlugin.warmup(refId:)(Swift::String refId)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  oslog = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  if (os_log_type_enabled(oslog, v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v3, v4, "No-op warming...", v5, v6, v7, v8, v9, oslog);
    OUTLINED_FUNCTION_80();
  }
}

void *FlowPlugin.makeFlowFor(parse:)()
{
  type metadata accessor for AnyFlow();
  swift_allocObject();
  return sub_1DCBD23E0();
}

uint64_t sub_1DCD49AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[4] = a2;
  a4[5] = a3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4 + 1);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a2);
  v8 = type metadata accessor for FlowSearchResult();
  *(a4 + *(v8 + 28)) = 1;
  v9 = *(v8 + 24);
  v10 = type metadata accessor for NamedParseTransformer();

  return __swift_storeEnumTagSinglePayload(a4 + v9, 1, 1, v10);
}

uint64_t sub_1DCD49B68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for FlowSearchResult();
  __swift_allocate_value_buffer(v5, qword_1ECCA4F28);
  v6 = __swift_project_value_buffer(v5, qword_1ECCA4F28);
  v7 = type metadata accessor for NamedParseTransformer();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  *(v6 + *(v5 + 28)) = 1;
  return sub_1DCD4A1E8(v4, v6 + *(v5 + 24));
}

uint64_t static FlowSearchResult.noFlow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECCA12C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FlowSearchResult();
  v3 = __swift_project_value_buffer(v2, qword_1ECCA4F28);
  return sub_1DCD4A18C(v3, a1, type metadata accessor for FlowSearchResult);
}

uint64_t static FlowSearchResult.flow<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  return sub_1DCD49AB8(v9, a2, a3, a4);
}

uint64_t static FlowSearchResult.reform(transformer:exclude:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v14 - v9;
  sub_1DCD4A18C(a1, &v14 - v9, type metadata accessor for NamedParseTransformer);
  v11 = type metadata accessor for NamedParseTransformer();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  v12 = type metadata accessor for FlowSearchResult();
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *(a3 + *(v12 + 28)) = a2;
  return sub_1DCD4A1E8(v10, a3 + *(v12 + 24));
}

void SentinalFlow.execute(completion:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v18 - v7;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v9 = sub_1DD0DD8FC();
  v10 = __swift_project_value_buffer(v9, qword_1EDE57E00);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v8, v10, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  sub_1DCB4F1DC(v8, v5, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {
    sub_1DCBCF738(v5);
  }

  else
  {
    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v14 = 136315650;
      v15 = sub_1DD0DEC3C();
      v17 = sub_1DCB10E9C(v15, v16, &v19);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 191;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_1DCB10E9C(0xD000000000000022, 0x80000001DD11A420, &v19);
      _os_log_impl(&dword_1DCAFC000, v12, v13, "FatalError at %s:%lu - %s", v14, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v11 + 8))(v5, v9);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000022, 0x80000001DD11A420);
}

uint64_t sub_1DCD4A18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1_3(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCD4A1E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void initializeBufferWithCopyOfBuffer for FlowSearchResult(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  *a1 = *a2;
  if ((v3 & 0x20000) == 0)
  {
    v4 = a2[4];
    sub_1DD0DCF8C();
  }

  sub_1DD0DCF8C();
}

void initializeWithCopy for FlowSearchResult(void *a1, void *a2)
{
  *a1 = *a2;
  v2 = a2[4];
  sub_1DD0DCF8C();
}

void assignWithCopy for FlowSearchResult(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD4AD28(uint64_t a1)
{
  v2 = type metadata accessor for NamedParseTransformer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithTake for FlowSearchResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 24);
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = type metadata accessor for NamedParseTransformer();
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
    if (__swift_getEnumTagSinglePayload(v8, 1, v11))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
      memcpy(v7, v8, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 32))(v7, v8, v11);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
    }

    v13 = *(v9 + 20);
    sub_1DD0DCF7C();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0);
  memcpy(v7, v8, *(*(v10 - 8) + 64));
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t *assignWithTake for FlowSearchResult(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a2 + 1;
  *a1 = *a2;

  if (a1[4])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
  }

  v8 = *(v7 + 1);
  *(a1 + 1) = *v7;
  *(a1 + 3) = v8;
  a1[5] = v7[4];
  v9 = *(a3 + 24);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = type metadata accessor for NamedParseTransformer();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v12);
  v14 = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (!EnumTagSinglePayload)
  {
    if (v14)
    {
      sub_1DCD4AD28(v10);
      goto LABEL_9;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
    v19 = __swift_getEnumTagSinglePayload(v10, 1, v18);
    v20 = __swift_getEnumTagSinglePayload(v11, 1, v18);
    if (v19)
    {
      if (!v20)
      {
        (*(*(v18 - 8) + 32))(v10, v11, v18);
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v18);
        goto LABEL_18;
      }
    }

    else
    {
      v23 = *(v18 - 8);
      if (!v20)
      {
        (*(v23 + 40))(v10, v11, v18);
LABEL_18:
        v25 = *(v12 + 20);
        sub_1DD0DCF7C();
      }

      (*(v23 + 8))(v10, v18);
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
    memcpy(v10, v11, *(*(v24 - 8) + 64));
    goto LABEL_18;
  }

  if (!v14)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
    if (__swift_getEnumTagSinglePayload(v11, 1, v15))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
      memcpy(v10, v11, *(*(v16 - 8) + 64));
    }

    else
    {
      (*(*(v15 - 8) + 32))(v10, v11, v15);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v15);
    }

    v21 = *(v12 + 20);
    sub_1DD0DCF7C();
  }

LABEL_9:
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0) - 8) + 64);
  memcpy(v10, v11, v17);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

void sub_1DCD4B490()
{
  sub_1DCD4B538();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_1DCD4B538()
{
  if (!qword_1EDE48388[0])
  {
    type metadata accessor for NamedParseTransformer();
    v0 = sub_1DD0DE97C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDE48388);
    }
  }
}