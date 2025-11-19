uint64_t sub_1CA62725C(char *a1, char *a2, id *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 8;
  v11 = (a3 - a2) / 8;
  if (v10 >= v11)
  {
    sub_1CA440434(a2, (a3 - a2) / 8, a4);
    v12 = &v6[v11];
    v58 = v9;
    v60 = v6;
LABEL_25:
    v31 = v8 - 1;
    v32 = v7 - 1;
    v61 = v8;
    v52 = v8 - 1;
    while (v12 > v6 && v8 > v9)
    {
      v54 = v12;
      v56 = v32;
      v34 = v12 - 1;
      v35 = *v31;
      v36 = *(v12 - 1);
      v37 = v35;
      v38 = [v36 identifier];
      sub_1CA94C3A8();

      v39 = [v37 identifier];
      sub_1CA94C3A8();

      if (*(a5 + 16) && (v40 = sub_1CA271BF8(), (v41 & 1) != 0))
      {
        v42 = *(*(a5 + 56) + 8 * v40);
        v43 = 1;
      }

      else
      {
        v42 = 0;
        v43 = 0;
      }

      if (*(a5 + 16) && (v44 = sub_1CA271BF8(), (v45 & 1) != 0))
      {
        v46 = *(*(a5 + 56) + 8 * v44);
        v47 = 1;
      }

      else
      {
        v46 = 0;
        v47 = 0;
      }

      if ((v43 & v47) == 1 && v42 < v46)
      {
        v7 = v56;
        v9 = v58;
        v12 = v54;
        v8 = v52;
        v6 = v60;
        if (v56 + 1 != v61)
        {
          *v56 = *v52;
          v8 = v52;
        }

        goto LABEL_25;
      }

      v8 = v61;
      v9 = v58;
      v31 = v52;
      if (v54 != v56 + 1)
      {
        *v56 = *v34;
      }

      v32 = v56 - 1;
      v12 = v34;
      v6 = v60;
    }
  }

  else
  {
    sub_1CA440434(a1, (a2 - a1) / 8, a4);
    v12 = &v6[v10];
    v53 = v12;
    v55 = v7;
    while (v6 < v12 && v8 < v7)
    {
      v57 = v9;
      v14 = *v6;
      v15 = *v8;
      v16 = v14;
      v17 = [v15 identifier];
      sub_1CA94C3A8();

      v18 = [v16 identifier];
      sub_1CA94C3A8();

      v59 = v6;
      if (*(a5 + 16) && (v19 = sub_1CA271BF8(), (v20 & 1) != 0))
      {
        v21 = *(*(a5 + 56) + 8 * v19);
        v22 = 1;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      if (*(a5 + 16) && (v23 = sub_1CA271BF8(), (v24 & 1) != 0))
      {
        v25 = *(*(a5 + 56) + 8 * v23);
        v26 = 1;
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      if ((v22 & v26) == 1 && v21 < v25)
      {
        v29 = v8;
        v28 = v57;
        v6 = v59;
        v30 = v57 == v8++;
      }

      else
      {
        v28 = v57;
        v29 = v59;
        v6 = v59 + 1;
        v30 = v57 == v59;
      }

      v12 = v53;
      v7 = v55;
      if (!v30)
      {
        *v28 = *v29;
      }

      v9 = (v28 + 1);
    }

    v8 = v9;
  }

  v49 = v12 - v6;
  if (v8 != v6 || v8 >= &v6[v49])
  {
    memmove(v8, v6, 8 * v49);
  }

  return 1;
}

char *sub_1CA627628(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1CA627654(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E48, &qword_1CA9824B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_1CA627754()
{
  result = qword_1EC4417B8;
  if (!qword_1EC4417B8)
  {
    sub_1CA25B3D0(255, &qword_1EC4417C0, 0x1E69E0A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4417B8);
  }

  return result;
}

uint64_t WFEntityUpdatingAction.getValueForParameterData(_:ofProcessedParameters:)()
{
  OUTLINED_FUNCTION_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = sub_1CA94C838();
  v1[7] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v5 = sub_1CA94C7C8();
  v1[8] = v5;
  v1[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CA627980, v5, v4);
}

uint64_t sub_1CA627980()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_1CA94C828();
  v0[10] = v5;
  v6 = swift_task_alloc();
  v0[11] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v7 = *(MEMORY[0x1E69E88D0] + 4);
  v8 = swift_task_alloc();
  v0[12] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4477B0, &qword_1CA98E7A8);
  *v8 = v0;
  v8[1] = sub_1CA627AA8;
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 2, v5, v10, 0xD000000000000032, 0x80000001CA9D7100, sub_1CA62B23C, v6, v9);
}

uint64_t sub_1CA627AA8()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *v0;
  OUTLINED_FUNCTION_1();
  *v6 = v5;

  v7 = *(v1 + 72);
  v8 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1CA627C00, v8, v7);
}

uint64_t sub_1CA627C00()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_2_4();

  return v3();
}

uint64_t sub_1CA627C60()
{
  v0 = sub_1CA697814(v19);
  if (!v21)
  {
    return 2;
  }

  OUTLINED_FUNCTION_11_34(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19[0], v19[1], v19[2], v19[3], v20);
  v8 = RowTemplatePropertySetterParameterState.operators.getter();
  sub_1CA532E30(v19, &qword_1EC445FA0, &unk_1CA98B5A0);
  v9 = *(v8 + 16);

  return v9 == 1;
}

double WFEntityUpdatingAction.createTableRow()@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 availableSubjectValues];
  v4 = sub_1CA94C658();

  if (!v4[2] || (v5 = v4[4], v6 = v4[5], sub_1CA94C218(), , v7 = sub_1CA94C368(), v8 = [v1 parameterForKey_], v7, !v8))
  {

    goto LABEL_7;
  }

  type metadata accessor for WFUpdatableParameter();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    goto LABEL_7;
  }

  v10 = v9;
  sub_1CA94C1E8();
  sub_1CA94C1A8();

  v11 = v1;
  v12 = v8;
  UpdatableParameterState.init(serializedRepresentation:variableProvider:parameter:)(v10, v52);
  v13 = v52[0];
  if (v52[0] == 1)
  {

LABEL_7:
    result = 0.0;
    *(a1 + 44) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  v41 = v12;
  v37 = v52[1];
  v15 = v52[3];
  HIDWORD(v36) = v53;
  v16 = sub_1CA948D28();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v15;
  v39 = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1CA948D18();
  v21 = sub_1CA948CC8();
  v23 = v22;
  v24 = v16;
  v25 = v21;
  (*(v17 + 8))(v20, v24);
  v26 = BYTE4(v36);
  v27 = v37;
  v28 = sub_1CA94C368();

  v29 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

  swift_unknownObjectRelease();
  v42 = v13;
  v43 = v27;
  v44 = 0;
  v45 = v29;
  v46 = v26;
  *v47 = *v51;
  *&v47[3] = *&v51[3];
  v48 = v25;
  v49 = v23;
  v39 = v23;
  *&v30 = 16842752;
  v38 = v30;
  v50 = 16842752;
  v31 = sub_1CA5C8D08();
  v32 = [objc_opt_self() BOOLValueType];
  if (!v31)
  {

    OUTLINED_FUNCTION_25_19();
    goto LABEL_13;
  }

  sub_1CA25B3D0(0, &unk_1EC441AB0, 0x1E69ACAA0);
  v33 = sub_1CA94CFD8();

  OUTLINED_FUNCTION_25_19();
  if ((v33 & 1) == 0)
  {
LABEL_13:
    v34 = 0;
    goto LABEL_14;
  }

  v34 = 1;
LABEL_14:
  *a1 = v13;
  *(a1 + 8) = v27;
  *(a1 + 16) = 0;
  *(a1 + 24) = v29;
  *(a1 + 32) = v34;
  *(a1 + 33) = *v51;
  *(a1 + 36) = *&v51[3];
  v35 = v39;
  *(a1 + 40) = v25;
  *(a1 + 48) = v35;
  result = *&v38;
  *(a1 + 56) = v38;
  return result;
}

uint64_t sub_1CA6280B0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a2)
  {
    sub_1CA94C1C8();
  }

  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = OUTLINED_FUNCTION_26_21();
  v9(v13);
}

void sub_1CA628188(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id WFEntityUpdatingAction.parameterSummary.getter()
{
  v1 = sub_1CA697814(v18);
  if (v20)
  {
    OUTLINED_FUNCTION_11_34(v1, v2, v3, v4, v5, v6, v7, v8, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v18[0], v18[1], v18[2], v18[3], v19);
    sub_1CA628420(v17);
    v10 = v9;
    sub_1CA532E30(v18, &qword_1EC445FA0, &unk_1CA98B5A0);
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    sub_1CA698450();
    if (v12)
    {
      v13 = [v0 localizedName];
    }

    else
    {
      v14 = sub_1CA94C438();
      if (qword_1EDB9F5F0 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDB9F690;
      v16 = sub_1CA94C368();
      sub_1CA94C368();
      OUTLINED_FUNCTION_87();

      v13 = [v15 localizedStringForKey:v16 value:v14 table:0];
    }

    sub_1CA94C3A8();
  }

  sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  return sub_1CA43AE20();
}

id sub_1CA628420(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = [v2 value];
  if (v4)
  {
    sub_1CA94C398();

    return 0;
  }

  return v4;
}

BOOL sub_1CA629C28()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 properties];

  sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
  sub_1CA94C658();

  sub_1CA25B410();
  OUTLINED_FUNCTION_87();

  return v3 == 1;
}

uint64_t sub_1CA629CEC()
{
  sub_1CA697814(v2);
  if (!v3)
  {
    return 2;
  }

  v0 = v2[32] > 1u;
  sub_1CA532E30(v2, &qword_1EC445FA0, &unk_1CA98B5A0);
  return 2 * v0;
}

uint64_t WFEntityUpdatingAction.visibleParameters(withProcessing:)(char a1)
{
  v2 = v1;
  if (a1)
  {
    v14.receiver = v1;
    v14.super_class = type metadata accessor for WFEntityUpdatingAction();
    v3 = objc_msgSendSuper2(&v14, sel_visibleParametersWithProcessing_, 1);
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
    v4 = sub_1CA94C658();
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
    v5 = [v1 parametersByKey];
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
    sub_1CA94C1C8();

    v6 = OUTLINED_FUNCTION_31();
    v7 = sub_1CA323E2C(v6);

    if (v7)
    {
      if ([v2 entityVisibility])
      {
      }

      else
      {
        MEMORY[0x1CCAA1490]();
        OUTLINED_FUNCTION_8_8();
        if (v9)
        {
          OUTLINED_FUNCTION_64(v8);
          sub_1CA94C698();
        }

        sub_1CA94C6E8();
      }
    }

    sub_1CA697814(&v17);
    v20[0] = *v19;
    *(v20 + 7) = *&v19[7];
    if (*&v19[15])
    {
      if (v18)
      {
        v10 = [v18 value];
        if (v10)
        {
          v11 = v10;
          v15 = 0;
          v16 = 0;
          sub_1CA94C398();
        }
      }

      sub_1CA532E30(&v17, &qword_1EC445FA0, &unk_1CA98B5A0);
    }

    sub_1CA697948();
    MEMORY[0x1CCAA1490]();
    OUTLINED_FUNCTION_8_8();
    if (v9)
    {
      OUTLINED_FUNCTION_64(v12);
      sub_1CA94C698();
    }

    OUTLINED_FUNCTION_116();
    sub_1CA94C6E8();
    return v21;
  }

  return v4;
}

void __swiftcall WFEntityUpdatingAction.makeValueParameter(for:)(WFParameter *__return_ptr retstr, Swift::String a2)
{
  v3 = [v2 parametersByKey];
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  sub_1CA94C1C8();

  v4 = OUTLINED_FUNCTION_116();
  v5 = sub_1CA323E2C(v4);

  if (v5)
  {
    type metadata accessor for WFUpdatableParameter();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      [v2 configureParameter_];
      *(v7 + OBJC_IVAR___WFUpdatableParameter_underlyingParameter);

      return;
    }
  }

  sub_1CA94D408();

  v8 = OUTLINED_FUNCTION_116();
  MEMORY[0x1CCAA1300](v8);
  sub_1CA94D5F8();
  __break(1u);
}

BOOL WFEntityUpdatingAction.showsAddButton.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState;
  swift_beginAccess();
  v2 = *(*(v1 + 8) + 16);
  WFEntityUpdatingAction.possibleSubjectValues.getter();
  v4 = *(v3 + 16);

  return v2 < v4;
}

void WFEntityUpdatingAction.possibleSubjectValues.getter()
{
  v1 = [v0 parameterDefinitions];
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v2 = sub_1CA94C658();

  v3 = sub_1CA25B410();
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1CCAA22D0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    if ([v6 objectForKey_])
    {
      sub_1CA94D258();
      swift_unknownObjectRelease();
    }

    else
    {

      v31 = 0u;
      v32 = 0u;
    }

    v33[0] = v31;
    v33[1] = v32;
    if (!*(&v32 + 1))
    {
      sub_1CA532E30(v33, &unk_1EC444650, &unk_1CA981C70);
      goto LABEL_19;
    }

    if ((swift_dynamicCast() & 1) != 0 && (v8 = v35) != 0)
    {
      v29 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v5 + 16);
        OUTLINED_FUNCTION_66();
        sub_1CA26DADC();
        v5 = v12;
      }

      v9 = *(v5 + 16);
      if (v9 >= *(v5 + 24) >> 1)
      {
        sub_1CA26DADC();
        v5 = v13;
      }

      *(v5 + 16) = v9 + 1;
      v10 = v5 + 16 * v9;
      *(v10 + 32) = v29;
      *(v10 + 40) = v8;
      ++v4;
    }

    else
    {
LABEL_19:
      ++v4;
    }
  }

  v14 = 0;
  v15 = *(v5 + 16);
  v16 = v5 + 40;
  v17 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v18 = (v16 + 16 * v14);
  while (v15 != v14)
  {
    if (v14 >= *(v5 + 16))
    {
      goto LABEL_39;
    }

    v19 = *(v18 - 1);
    v20 = *v18;
    if (v19 != 0x797469746E65 || v20 != 0xE600000000000000)
    {
      v22 = *(v18 - 1);
      v23 = *v18;
      if ((sub_1CA94D7F8() & 1) == 0)
      {
        sub_1CA94C218();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v33[0] = v17;
        v30 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = *(v17 + 16);
          OUTLINED_FUNCTION_66();
          sub_1CA271524();
          v17 = *&v33[0];
        }

        v27 = *(v17 + 16);
        v26 = *(v17 + 24);
        if (v27 >= v26 >> 1)
        {
          OUTLINED_FUNCTION_64(v26);
          sub_1CA271524();
          v17 = *&v33[0];
        }

        ++v14;
        *(v17 + 16) = v27 + 1;
        v28 = v17 + 16 * v27;
        *(v28 + 32) = v19;
        *(v28 + 40) = v20;
        v16 = v30;
        goto LABEL_22;
      }
    }

    v18 += 2;
    ++v14;
  }
}

Swift::Bool __swiftcall WFEntityUpdatingAction.showsAddButton(for:)(WFParameter *a1)
{
  v2 = v1;
  sub_1CA697814(v27);
  v33 = v27[0];
  v34 = v27[1];
  v3 = v28;
  v32[0] = *v29;
  v4 = v30;
  *(v32 + 7) = *&v29[7];
  if (!v30)
  {
    return 0;
  }

  v5 = v31;
  v6 = &v1[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState];
  swift_beginAccess();
  v7 = *(*(v6 + 1) + 16);
  WFEntityUpdatingAction.possibleSubjectValues.getter();
  v9 = *(v8 + 16);

  if (v3 > 1)
  {
    goto LABEL_8;
  }

  v23 = v33;
  v24 = v34;
  v25[0] = v3;
  *&v25[1] = v32[0];
  *&v25[8] = *(v32 + 7);
  LODWORD(v26) = v5;
  v10 = sub_1CA5C8D08();
  v11 = [objc_opt_self() BOOLValueType];
  v12 = v11;
  if (v10)
  {
    sub_1CA25B3D0(0, &unk_1EC441AB0, 0x1E69ACAA0);
    v13 = sub_1CA94CFD8();

    v14 = v13 ^ 1;
  }

  else
  {

    v14 = 1;
  }

  v15 = sub_1CA94C368();
  v16 = [v2 parameterStateForKey_];

  if (v16)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v14 = 0;
  }

  sub_1CA698450();
  if ((v17 & 1) == 0)
  {
    OUTLINED_FUNCTION_31();
    v18 = sub_1CA94C368();
    v19 = OUTLINED_FUNCTION_50_6();
    v21 = [v19 v20];
    sub_1CA532E30(v27, &qword_1EC445FA0, &unk_1CA98B5A0);

    if (!v21)
    {
      return 0;
    }

    swift_unknownObjectRelease();
    return !((v7 >= v9) | v14 & 1);
  }

  sub_1CA532E30(v27, &qword_1EC445FA0, &unk_1CA98B5A0);
  return !((v7 >= v9) | v14 & 1);
}

WFAddButtonParameterStateUpdate_optional __swiftcall WFEntityUpdatingAction.parameterStateUpdateForPlusButton(for:)(WFParameter *a1)
{
  WFEntityUpdatingAction.createTableRow()(&v26);
  v29 = v26;
  v30 = v27;
  v31 = *v28;
  v5 = *&v28[16];
  if (*&v28[16])
  {
    v6 = *&v28[24];
    v7 = (v1 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState);
    swift_beginAccess();
    v24[0] = v26;
    v24[1] = v27;
    v25[0] = *v28;
    *(v25 + 12) = *&v28[12];
    sub_1CA2DBDB8(v24, v23);
    sub_1CA69ADC8();
    v8 = *(v7[1] + 16);
    sub_1CA69AF74(v8);
    v9 = v7[1];
    *(v9 + 16) = v8 + 1;
    v10 = v9 + (v8 << 6);
    v11 = v30;
    *(v10 + 32) = v29;
    *(v10 + 48) = v11;
    *(v10 + 64) = v31;
    *(v10 + 80) = v5;
    *(v10 + 88) = v6;
    v7[1] = v9;
    swift_endAccess();
    v13 = *v7;
    v12 = v7[1];
    v14 = *(v7 + 16);
    v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446590, &qword_1CA98B5B0));
    v16 = v15 + *((*MEMORY[0x1E69E7D40] & *v15) + 0x60);
    *v16 = v13;
    *(v16 + 1) = v12;
    v16[16] = v14;
    sub_1CA94C218();
    v22.receiver = v15;
    v22.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4477C0, &unk_1CA98B5B8);
    v17 = [(WFParameter *)&v22 init];
    v18 = objc_allocWithZone(WFAddButtonParameterStateUpdate);
    v19 = sub_1CA94C368();
    v20 = [v18 initWithParameterKey:v19 parameterState:v17];

    sub_1CA532E30(&v26, &qword_1EC445FA0, &unk_1CA98B5A0);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  result.value._parameterState = v3;
  result.value._parameterKey = v2;
  result.value.super.isa = v21;
  result.is_nil = v4;
  return result;
}

void WFEntityUpdatingAction.availableSubjectValues.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_tableTemplateState;
  swift_beginAccess();
  v2 = *(v1 + 8);
  v3 = *(v2 + 16);
  sub_1CA94C218();
  v29 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  v27 = v2 + 48;
  v5 = (v2 + 48);
  while (v3 != v4)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v6 = v5[1];
    if (v6)
    {
      v7 = v5[4];
      v8 = *v5;
      v9 = *(v5 - 2);
      swift_unknownObjectRetain();
      v10 = v6;
      sub_1CA94C218();
      swift_unknownObjectRetain();
      v11 = [v10 value];
      if (v11)
      {
        v12 = v11;
        v31 = 0;
        v32 = 0;
        sub_1CA94C398();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    v5 += 8;
    ++v4;
  }

  WFEntityUpdatingAction.possibleSubjectValues.getter();
  v14 = isUniquelyReferenced_nonNull_native;
  v15 = 0;
  v16 = *(isUniquelyReferenced_nonNull_native + 16);
  v17 = isUniquelyReferenced_nonNull_native + 40;
  v27 = isUniquelyReferenced_nonNull_native + 40;
  v28 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v18 = (v17 + 16 * v15);
  while (v16 != v15)
  {
    if (v15 >= *(v14 + 16))
    {
      goto LABEL_22;
    }

    v20 = *(v18 - 1);
    v19 = *v18;
    v31 = v20;
    v32 = v19;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v26[2] = &v31;
    sub_1CA94C218();
    if (!sub_1CA2BFD14(sub_1CA2E9370, v26, v29))
    {
      v21 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = *(v21 + 16);
        OUTLINED_FUNCTION_66();
        sub_1CA271524();
        v21 = v30;
      }

      v17 = v27;
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        OUTLINED_FUNCTION_64(v23);
        sub_1CA271524();
        v17 = v27;
        v21 = v30;
      }

      ++v15;
      *(v21 + 16) = v24 + 1;
      v28 = v21;
      v25 = v21 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v19;
      goto LABEL_10;
    }

    v18 += 2;
    ++v15;
  }
}

void sub_1CA62B044(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  if (a4)
  {
    a4 = sub_1CA94C1A8();
  }

  (*(v9 + 16))(v12, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  aBlock[4] = sub_1CA62E2A8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA4F60DC;
  aBlock[3] = &block_descriptor_26_0;
  v15 = _Block_copy(aBlock);

  [a2 getValueForParameterData:a3 ofProcessedParameters:a4 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_1CA62B248(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0);
  return sub_1CA94C7E8();
}

uint64_t WFEntityUpdatingAction.getEntityPropertyValue(for:context:)()
{
  OUTLINED_FUNCTION_14();
  v17 = *MEMORY[0x1E69E9840];
  v1[50] = v2;
  v1[51] = v0;
  v1[48] = v3;
  v1[49] = v4;
  v5 = sub_1CA94CEF8();
  v1[52] = v5;
  OUTLINED_FUNCTION_12(v5);
  v1[53] = v6;
  v8 = *(v7 + 64) + 15;
  v1[54] = swift_task_alloc();
  v9 = sub_1CA94CF08();
  v1[55] = v9;
  OUTLINED_FUNCTION_12(v9);
  v1[56] = v10;
  v12 = *(v11 + 64) + 15;
  v1[57] = swift_task_alloc();
  v1[58] = sub_1CA94C838();
  v1[59] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v13 = sub_1CA94C7C8();
  v1[60] = v13;
  v1[61] = v14;
  v15 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1CA62B40C, v13, v14);
}

uint64_t sub_1CA62B40C()
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 408)) + 0xC0))();
  *(v0 + 496) = v3;
  if (!v3)
  {
    v44 = *(v0 + 472);

    goto LABEL_28;
  }

  v4 = v3;
  v5 = *(v0 + 408);
  sub_1CA698450();
  if (v6)
  {
    v7 = [v4 identifier];
    sub_1CA94C3A8();

    v8 = [v4 identifier];
    sub_1CA94C3A8();

    MEMORY[0x1CCAA1300](0x657571696E753ALL, 0xE700000000000000);
    v9 = objc_allocWithZone(MEMORY[0x1E69AC7D8]);
    v10 = sub_1CA320B2C();
    *(v0 + 568) = v10;
    v4 = *(v0 + 496);
    if (v10)
    {
      v11 = v10;
      v12 = objc_opt_self();
      v13 = v11;
      v14 = [v12 policyWithEntityMetadata_];
      *(v0 + 336) = 0;
      v15 = [v14 connectionWithError_];
      *(v0 + 576) = v15;

      v16 = *(v0 + 336);
      if (!v15)
      {
        v52 = *(v0 + 496);
        v53 = *(v0 + 472);
        v54 = v16;

        sub_1CA948AD8();

        swift_willThrow();
        OUTLINED_FUNCTION_24_20();

        OUTLINED_FUNCTION_5();
        v55 = *MEMORY[0x1E69E9840];
        OUTLINED_FUNCTION_202();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_3_53();
      v74 = sub_1CA25B3D0(0, &unk_1EC445BB0, 0x1E69ACE00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v17 = swift_allocObject();
      OUTLINED_FUNCTION_21_22(v17, xmmword_1CA9813B0);
      v18 = *MEMORY[0x1E69ACAC8];
      v19 = OUTLINED_FUNCTION_20_30();
      v20(v19);
      *v1 = v2;
      v21 = *MEMORY[0x1E69ACB00];
      v22 = OUTLINED_FUNCTION_18_28();
      v23(v22);
      v24 = objc_allocWithZone(MEMORY[0x1E69ACFD8]);
      v25 = v13;
      v26 = v16;
      v27 = v2;
      [v24 init];
      v28 = OUTLINED_FUNCTION_14_31();
      v29 = OUTLINED_FUNCTION_19_24(v28);
      *(v0 + 16) = v30;
      OUTLINED_FUNCTION_2_59(v29, v31, v32, v33, v34, v35, v36, v37, v72, v73, v74, v75);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D0, &qword_1CA988F20);
      OUTLINED_FUNCTION_0_67(v38);
      *(v0 + 88) = 1107296256;
      OUTLINED_FUNCTION_1_49();
      v39 = OUTLINED_FUNCTION_50_6();
      [v39 v40];
      v41 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_202();

      return MEMORY[0x1EEE6DEC8](v42);
    }

    goto LABEL_27;
  }

  v45 = [*(v0 + 408) parameterIdentifiersNeedingValues];
  *(v0 + 304) = 0x797469746E65;
  *(v0 + 312) = 0xE600000000000000;
  v46 = [v45 __swift_objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if (v46)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
  }

  *(v0 + 144) = v76;
  *(v0 + 160) = v77;
  if (*(v0 + 168))
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v47 = *(v0 + 368);
      *(v0 + 504) = v47;
      if ([v47 BOOLValue])
      {
        v48 = swift_task_alloc();
        *(v0 + 512) = v48;
        *v48 = v0;
        v48[1] = sub_1CA62BA9C;
        v49 = *(v0 + 408);
        v50 = *MEMORY[0x1E69E9840];
        OUTLINED_FUNCTION_202();

        return sub_1CA62D1C0();
      }
    }
  }

  else
  {
    sub_1CA532E30(v0 + 144, &unk_1EC444650, &unk_1CA981C70);
  }

  v58 = *(v0 + 408);
  v59 = sub_1CA94C368();
  v60 = [v58 parameterStateForKey_];
  *(v0 + 536) = v60;

  if (!v60)
  {
LABEL_27:
    v67 = *(v0 + 472);

LABEL_28:
    OUTLINED_FUNCTION_24_20();

    OUTLINED_FUNCTION_2_4();
    v68 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_23_19();
    OUTLINED_FUNCTION_202();

    __asm { BRAA            X2, X16 }
  }

  swift_getObjectType();
  v61 = swift_task_alloc();
  *(v0 + 544) = v61;
  *v61 = v0;
  v61[1] = sub_1CA62BFE0;
  v62 = *(v0 + 400);
  v63 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_202();

  return WFParameterState.process(context:)(v64, v65);
}

uint64_t sub_1CA62BA9C()
{
  OUTLINED_FUNCTION_14();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = v2[64];
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  *(v9 + 520) = v8;
  *(v9 + 528) = v0;

  v10 = v2[61];
  v11 = v2[60];
  if (v0)
  {
    v12 = sub_1CA62CF94;
  }

  else
  {
    v12 = sub_1CA62BC04;
  }

  v13 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

uint64_t sub_1CA62BFE0()
{
  OUTLINED_FUNCTION_14();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = v2[68];
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  *(v9 + 552) = v8;
  *(v9 + 560) = v0;

  v10 = v2[61];
  v11 = v2[60];
  if (v0)
  {
    v12 = sub_1CA62D03C;
  }

  else
  {
    v12 = sub_1CA62C148;
  }

  v13 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

uint64_t sub_1CA62C544()
{
  OUTLINED_FUNCTION_0();
  v11 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v0;
  v5 = v4[6];
  *(v2 + 592) = v5;
  v6 = v4[61];
  v7 = v4[60];
  if (v5)
  {
    v8 = sub_1CA62D0EC;
  }

  else
  {
    v8 = sub_1CA62C698;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1CA62C698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_147();
  v94 = *MEMORY[0x1E69E9840];
  v19 = v18[73];
  v20 = v18[72];
  v21 = v18[41];
  v22 = &selRef_temporaryDirectoryURL;
  v23 = [v21 value];
  v18[75] = v23;

  v24 = [v23 value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447110, &qword_1CA98E7A0);
  if (!swift_dynamicCast())
  {
    v43 = v18[71];
    v44 = v18[62];
    v45 = v18[59];

LABEL_41:
    OUTLINED_FUNCTION_24_20();

    OUTLINED_FUNCTION_2_4();
    v84 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_23_19();
    OUTLINED_FUNCTION_68();

    return v87(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14, v94, a16, a17, a18);
  }

  a12 = v23;
  v25 = v18[43];
  if (!sub_1CA25B410())
  {
    v46 = v18[71];
    v47 = v18[62];
    v48 = v18[59];

    goto LABEL_41;
  }

  sub_1CA275D70(0, (v25 & 0xC000000000000001) == 0, v25);
  if ((v25 & 0xC000000000000001) != 0)
  {
    goto LABEL_46;
  }

  for (i = *(v25 + 32); ; i = MEMORY[0x1CCAA22D0](0, v25))
  {
    v27 = i;
    v18[76] = i;
    v28 = v18[51];

    v29 = *&v28[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_preprocessedEntity];
    *&v28[OBJC_IVAR____TtC11WorkflowKit22WFEntityUpdatingAction_preprocessedEntity] = v27;
    v25 = v27;

    v30 = [v28 parameterIdentifiersNeedingValues];
    OUTLINED_FUNCTION_31();
    v31 = sub_1CA94C368();
    [v30 removeObjectForKey_];

    a11 = v25;
    v32 = [v25 v22[278]];
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
    v33 = swift_dynamicCast();
    v34 = v18[44];
    v35 = v33 ? v18[44] : 0;
    sub_1CA698450();
    if (v36)
    {
      break;
    }

    if (!v35)
    {
LABEL_31:
      v62 = v18[71];
      v63 = v18[62];

      v64 = v18[59];
LABEL_40:

      goto LABEL_41;
    }

LABEL_18:
    a10 = v35;
    v49 = [v35 properties];
    sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
    v50 = sub_1CA94C658();

    v22 = sub_1CA25B410();
    v51 = 0;
    a13 = v50 & 0xFFFFFFFFFFFFFF8;
    a14 = v50 & 0xC000000000000001;
    while (1)
    {
      if (v22 == v51)
      {

        v65 = v18[71];
        v35 = v18[62];

        v66 = a10;
        goto LABEL_39;
      }

      if (a14)
      {
        v52 = MEMORY[0x1CCAA22D0](v51, v50);
      }

      else
      {
        if (v51 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v52 = *(v50 + 8 * v51 + 32);
      }

      v42 = v52;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      v53 = v18[48];
      v54 = v18[49];
      v55 = [v52 identifier];
      v56 = sub_1CA94C3A8();
      v58 = v57;

      if (v56 == v53 && v58 == v54)
      {

LABEL_34:

        v35 = a10;
        goto LABEL_35;
      }

      v60 = v18[48];
      v61 = v18[49];
      v25 = sub_1CA94D7F8();

      if (v25)
      {
        goto LABEL_34;
      }

      v51 = (v51 + 1);
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  if (!v35)
  {
    goto LABEL_31;
  }

  v37 = [v35 properties];
  sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
  sub_1CA94C658();

  v38 = sub_1CA25B410();

  if (v38 != 1)
  {
    goto LABEL_18;
  }

  v39 = [v35 properties];
  v40 = sub_1CA94C658();

  if (!sub_1CA25B410())
  {
    v82 = v18[71];
    v66 = v18[62];

LABEL_39:
    v83 = v18[59];

    goto LABEL_40;
  }

  sub_1CA275D70(0, (v40 & 0xC000000000000001) == 0, v40);
  if ((v40 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x1CCAA22D0](0, v40);
  }

  else
  {
    v41 = *(v40 + 32);
  }

  v42 = v41;

LABEL_35:
  v18[78] = v42;
  v18[77] = v35;
  v67 = v18[62];
  v68 = v18[58];
  v18[79] = sub_1CA94C828();
  v69 = swift_task_alloc();
  v18[80] = v69;
  v69[2] = v42;
  v69[3] = v35;
  v69[4] = v67;
  v70 = *(MEMORY[0x1E69E88D0] + 4);
  v71 = swift_task_alloc();
  v18[81] = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4477B0, &qword_1CA98E7A8);
  *v71 = v18;
  v71[1] = sub_1CA62CD14;
  v72 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_68();

  return MEMORY[0x1EEE6DDE0](v73, v74, v75, v76, v77, v78, v79, v80);
}

uint64_t sub_1CA62CD14()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 648);
  v3 = *(*v0 + 640);
  v4 = *(*v0 + 632);
  v5 = *v0;
  OUTLINED_FUNCTION_1();
  *v6 = v5;

  v7 = *(v1 + 488);
  v8 = *(v1 + 480);
  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1CA62CEA4, v8, v7);
}

uint64_t sub_1CA62CEA4()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[71];
  v6 = v0[62];
  v7 = v0[59];

  v8 = v0[45];
  OUTLINED_FUNCTION_31_13();

  OUTLINED_FUNCTION_2_4();
  v10 = *MEMORY[0x1E69E9840];

  return v9(v8);
}

uint64_t sub_1CA62CF94()
{
  OUTLINED_FUNCTION_14();
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[59];

  v4 = v0[66];
  OUTLINED_FUNCTION_31_13();

  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x1E69E9840];

  return v5();
}

uint64_t sub_1CA62D03C()
{
  OUTLINED_FUNCTION_14();
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[67];
  v2 = v0[62];
  v3 = v0[59];

  swift_unknownObjectRelease();

  v4 = v0[70];
  OUTLINED_FUNCTION_31_13();

  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x1E69E9840];

  return v5();
}

uint64_t sub_1CA62D0EC()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[62];
  v6 = v0[59];

  swift_willThrow();

  v7 = v0[74];
  OUTLINED_FUNCTION_31_13();

  OUTLINED_FUNCTION_5();
  v9 = *MEMORY[0x1E69E9840];

  return v8();
}

uint64_t sub_1CA62D1C0()
{
  v1[3] = v0;
  v1[4] = sub_1CA94C838();
  v1[5] = sub_1CA94C828();
  v3 = sub_1CA94C7C8();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CA62D25C, v3, v2);
}

uint64_t sub_1CA62D25C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_31();
  v2 = sub_1CA94C368();
  v3 = [v1 parameterForKey_];
  *(v0 + 64) = v3;

  if (v3)
  {
    v4 = [*(v0 + 24) workQueue];
    *(v0 + 72) = v4;
    if (v4)
    {
      v5 = v4;
      v7 = *(v0 + 24);
      v6 = *(v0 + 32);
      *(v0 + 80) = sub_1CA94C828();
      v8 = swift_task_alloc();
      *(v0 + 88) = v8;
      v8[2] = v7;
      v8[3] = v3;
      v8[4] = v5;
      v9 = *(MEMORY[0x1E69E8920] + 4);
      v10 = swift_task_alloc();
      *(v0 + 96) = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4477B0, &qword_1CA98E7A8);
      *v10 = v0;
      v10[1] = sub_1CA62D430;

      return MEMORY[0x1EEE6DE38](v0 + 16);
    }

    v12 = *(v0 + 40);
  }

  else
  {
    v11 = *(v0 + 40);
  }

  OUTLINED_FUNCTION_2_4();
  v13 = OUTLINED_FUNCTION_23_19();

  return v14(v13);
}

uint64_t sub_1CA62D430()
{
  OUTLINED_FUNCTION_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;
  v2[13] = v0;

  if (v0)
  {
    v8 = v2[6];
    v9 = v2[7];
    v10 = sub_1CA62D5B8;
  }

  else
  {
    v11 = v2[10];
    v12 = v2[11];

    v8 = v2[6];
    v9 = v2[7];
    v10 = sub_1CA62D548;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1CA62D548()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_2_4();

  return v4();
}

uint64_t sub_1CA62D5B8()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];

  OUTLINED_FUNCTION_5();
  v7 = v0[13];

  return v6();
}

void sub_1CA62D63C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  aBlock[4] = sub_1CA62E1A4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA628188;
  aBlock[3] = &block_descriptor_20_0;
  v15 = _Block_copy(aBlock);

  [a2 wf:a3 getValueForEntity:a4 entityMetadata:v15 completionHandler:?];
  _Block_release(v15);
}

void sub_1CA62D804(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v22 = a2;
  v23 = a4;
  v21 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D8, &qword_1CA990048);
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v8 = &v20 - v7;
  v25 = sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  aBlock[0] = a3;
  v9 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v10 = a3;
  v11 = sub_1CA62E034(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  sub_1CA94C1E8();
  v12 = sub_1CA94C1A8();

  sub_1CA25B3D0(0, &unk_1EC447130, off_1E836EDC8);
  sub_1CA94C1E8();
  v13 = sub_1CA94C1A8();

  v14 = v20;
  (*(v5 + 16))(v8, v21, v20);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v8, v14);
  v17 = v22;
  *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v26 = sub_1CA62E0D0;
  v27 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA6280B0;
  v25 = &block_descriptor_14_0;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  [v19 askForValuesOfParameters:v11 withDefaultStates:v12 prompts:v13 input:0 workQueue:v23 completionHandler:v18];
  _Block_release(v18);
}

uint64_t sub_1CA62DAF8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA949F78();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1CA311C0C(a1, &v19);
    if (v20)
    {
      sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
      v10 = swift_dynamicCast();
      v11 = v18[1];
      if (!v10)
      {
        v11 = 0;
      }
    }

    else
    {
      sub_1CA532E30(&v19, &unk_1EC444650, &unk_1CA981C70);
      v11 = 0;
    }

    *&v19 = v11;
  }

  else
  {
    if (a3)
    {
      *&v19 = a3;
      v12 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D8, &qword_1CA990048);
      return sub_1CA94C7D8();
    }

    v14 = *MEMORY[0x1E69E1078];
    sub_1CA949C58();
    v15 = sub_1CA949F68();
    v16 = sub_1CA94CC18();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1CA256000, v15, v16, "askForValues failed with no error", v17, 2u);
      MEMORY[0x1CCAA4BF0](v17, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    *&v19 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D8, &qword_1CA990048);
  return sub_1CA94C7E8();
}

uint64_t sub_1CA62DD48()
{
  v1 = [v0 availableSubjectValues];
  v2 = sub_1CA94C658();

  return v2;
}

uint64_t sub_1CA62DDA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA62DE44;

  return WFEntityUpdatingAction.getValueForParameterData(_:ofProcessedParameters:)();
}

uint64_t sub_1CA62DE44()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_1();
  *v6 = v5;

  OUTLINED_FUNCTION_2_4();
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

id sub_1CA62DF3C()
{
  v1 = sub_1CA94C368();
  v2 = [v0 parameterMetadataForIdentifier_];

  return v2;
}

uint64_t sub_1CA62DF88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA62E340;

  return WFEntityUpdatingAction.getEntityPropertyValue(for:context:)();
}

id sub_1CA62E034(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_1CA62E0D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D8, &qword_1CA990048);
  OUTLINED_FUNCTION_12(v1);
  v4 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = OUTLINED_FUNCTION_26_21();

  return sub_1CA62DAF8(v5, v6, v7);
}

uint64_t block_copy_helper_12_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA62E1A4(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0) - 8) + 80);

  return sub_1CA5F6140(a1);
}

uint64_t objectdestroy_16Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0);
  OUTLINED_FUNCTION_7_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CA62E2A8()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0) - 8) + 80);
  v1 = OUTLINED_FUNCTION_116();

  return sub_1CA62B248(v1);
}

id sub_1CA62E378()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  *(inited + 120) = 0xD000000000000011;
  *(inited + 128) = 0x80000001CA9D7560;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD00000000000001CLL;
  *(inited + 168) = 0x80000001CA9D7580;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA62E5F4(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t *a5)
{
  v8 = a1;
  a3();

  sub_1CA25B3D0(0, a4, a5);
  v9 = sub_1CA94C648();

  return v9;
}

uint64_t sub_1CA62E6C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v53 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  v55 = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1CA981370;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v54 = a1;
  v11 = MEMORY[0x1E69E6158];
  *(v8 + 32) = @"Key";
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 64) = v11;
  *(v8 + 72) = @"Label";
  sub_1CA94C218();
  v12 = @"Key";
  sub_1CA94C218();
  v13 = @"Label";
  v14 = sub_1CA94C438();
  v51 = v15;
  v52 = v14;
  v16 = sub_1CA94C438();
  v49 = v17;
  v50 = v16;
  v18 = sub_1CA948E58();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDB9F690;
  v22 = [qword_1EDB9F690 bundleURL];
  v23 = sub_1CA948BA8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v48 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v48 - v48;
  sub_1CA948B68();

  v26 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v27 = sub_1CA2F9F14(v52, v51, v50, v49, 0, 0, &v48 - v20, v25);
  v28 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v8 + 80) = v27;
  *(v8 + 104) = v28;
  *(v8 + 112) = @"Placeholder";
  v29 = @"Placeholder";
  v30 = sub_1CA94C438();
  v51 = v31;
  v32 = sub_1CA94C438();
  v34 = v33;
  v52 = &v48;
  MEMORY[0x1EEE9AC00](v32);
  sub_1CA948D98();
  v35 = [v21 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v48 - v48;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v8 + 120) = sub_1CA2F9F14(v30, v51, v32, v34, 0, 0, &v48 - v20, v36);
  *(v8 + 144) = v28;
  *(v8 + 152) = @"AllowsDecimalNumbers";
  v38 = MEMORY[0x1E69E6370];
  *(v8 + 160) = v53 & 1;
  *(v8 + 184) = v38;
  *(v8 + 192) = @"DisallowedVariableTypes";
  v39 = @"AllowsDecimalNumbers";
  v40 = @"DisallowedVariableTypes";
  if (RowTemplateParameterOptions.variablesDisabled.getter())
  {
    sub_1CA25B3D0(0, &unk_1EC4477F0, off_1E836EC08);
    v41 = [swift_getObjCClassFromMetadata() allInsertableVariableTypes];
    type metadata accessor for WFVariableType(0);
    sub_1CA43FD98(&qword_1EC441A60, type metadata accessor for WFVariableType);
    v42 = sub_1CA94C8F8();

    sub_1CA3E4650(v42);
    v44 = v43;
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(v8 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v8 + 200) = v44;
  _s3__C3KeyVMa_0(0);
  sub_1CA43FD98(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v45 = sub_1CA2F864C();
  v46 = [objc_allocWithZone(WFNumberFieldParameter) initWithDefinition_];

  *(v55 + 48) = v46;
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  return sub_1CA94C1E8();
}

uint64_t sub_1CA62EC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA62EC60()
{
  OUTLINED_FUNCTION_6();
  if (*(v0[2] + 16) && (v1 = v0[4], v2 = v0[5], v3 = sub_1CA271BF8(), (v4 & 1) != 0))
  {
    v0[6] = *(*(v0[2] + 56) + 8 * v3);
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_7_39(&unk_1CA9838C8);
      v5 = swift_task_alloc();
      v0[7] = v5;
      *v5 = v0;
      v5[1] = sub_1CA62EDDC;
      v6 = OUTLINED_FUNCTION_11_2(v0[3]);

      return v7(v6);
    }

    else
    {
      sub_1CA2A741C();
      v10 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_8_31(v10, v11);
      swift_unknownObjectRetain();
      v12 = v0[6];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v13();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v9(0);
  }
}

uint64_t sub_1CA62EDDC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  *(v2 + 64) = v6;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA62EEE0()
{
  OUTLINED_FUNCTION_6();
  if (!*(v0 + 64))
  {
    v5 = *(v0 + 48);
    swift_unknownObjectRelease();
    v3 = 0;
    goto LABEL_5;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v1 = swift_dynamicCastObjCClass();
  v2 = *(v0 + 48);
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 48);
    swift_unknownObjectRelease();
LABEL_5:
    v6 = *(v0 + 48);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_2_4();

    return v7(v3);
  }

  sub_1CA2A741C();
  OUTLINED_FUNCTION_127();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_9_36(ObjectType);
  swift_unknownObjectRelease();
  v10 = *(v0 + 48);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v11();
}

uint64_t sub_1CA62F000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA62F01C()
{
  OUTLINED_FUNCTION_6();
  if (*(v0[2] + 16) && (v1 = v0[5], v2 = v0[6], v3 = sub_1CA271BF8(), (v4 & 1) != 0))
  {
    v0[7] = *(*(v0[2] + 56) + 8 * v3);
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_7_39(&unk_1CA9838C8);
      v5 = swift_task_alloc();
      v0[8] = v5;
      *v5 = v0;
      v5[1] = sub_1CA62F198;
      v6 = OUTLINED_FUNCTION_11_2(v0[4]);

      return v7(v6);
    }

    else
    {
      sub_1CA2A741C();
      v10 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_8_31(v10, v11);
      swift_unknownObjectRetain();
      v12 = v0[7];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v13();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v9(1);
  }
}

uint64_t sub_1CA62F198()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 64);
  *v3 = *v1;
  *(v2 + 72) = v6;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA62F29C()
{
  OUTLINED_FUNCTION_6();
  if (v0[9])
  {
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v1 = swift_dynamicCastObjCClass();
    v0[11] = v1;
    v2 = v0[7];
    if (v1)
    {
      v3 = v0[7];
      swift_unknownObjectRelease_n();
      v4 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      v5 = *(MEMORY[0x1E6996C50] + 4);
      v6 = swift_task_alloc();
      v0[12] = v6;
      *v6 = v0;
      v6[1] = sub_1CA62F4A8;
      v7 = v0[3];

      return MEMORY[0x1EEDF81A0](v4);
    }

    else
    {
      sub_1CA2A741C();
      OUTLINED_FUNCTION_127();
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_9_36(ObjectType);
      swift_unknownObjectRelease();
      v11 = v0[7];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v12();
    }
  }

  else
  {
    v8 = v0[7];
    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_2_4();

    return v9(1);
  }
}

uint64_t sub_1CA62F444()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA62F4A8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  *v3 = *v1;
  *(v2 + 104) = v6;
  *(v2 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA62F5B8()
{
  OUTLINED_FUNCTION_14();
  if (v0[13])
  {
    v1 = v0[13];
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v0[9];
      v4 = [v2 compare_];
      swift_unknownObjectRelease_n();
      goto LABEL_7;
    }

    v6 = v0[9];
    swift_unknownObjectRelease_n();
  }

  else
  {
    v5 = v0[9];
  }

  v4 = -1;
LABEL_7:
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v7(v4);
}

uint64_t sub_1CA62F68C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  v2 = *(v0 + 112);
  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA62F6E8()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v4 = v3;
  *(v0 + 16) = v5;
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  *v9 = v0;
  v9[1] = sub_1CA62F79C;

  return sub_1CA62EC48(v7, v8, v4, v2);
}

uint64_t sub_1CA62F79C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_1();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1CA62F8D4()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 32);
  [*(v0 + 16) setNumber_];

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA62F944()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 88) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = *v4;
  v5 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
  v6 = *(MEMORY[0x1E6996C50] + 4);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_1CA62FA04;

  return MEMORY[0x1EEDF81A0](v5);
}

uint64_t sub_1CA62FA04()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v1;
  *(v2 + 56) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_2_4();

    return v7(0);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1CA62FB34()
{
  OUTLINED_FUNCTION_0();
  if (v0[7])
  {
    v1 = v0[7];
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v2 = swift_dynamicCastObjCClass();
    v0[8] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[9] = v3;
      *v3 = v0;
      v3[1] = sub_1CA62FC38;
      v5 = v0[4];
      v4 = v0[5];
      v6 = v0[2];
      v7 = v0[3];

      return sub_1CA62EC48(v5, v4, v6, v7);
    }

    swift_unknownObjectRelease_n();
  }

  OUTLINED_FUNCTION_2_4();

  return v9(0);
}

uint64_t sub_1CA62FC38()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  *v4 = *v1;
  *(v3 + 80) = v7;

  if (v0)
  {
    v8 = *(v3 + 56);

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA62FD50()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[7];
    v3 = v0[8];
    sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
    v4 = sub_1CA94CFD8();
  }

  else
  {
    v4 = 0;
    v5 = v0[7];
  }

  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_2_4();

  return v6(v4 & 1);
}

uint64_t sub_1CA62FE08()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v2(0);
}

uint64_t sub_1CA62FE68()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1CA2C756C;

  return sub_1CA62F6E8();
}

uint64_t sub_1CA62FF1C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA2A715C;

  return sub_1CA62F944();
}

uint64_t sub_1CA62FFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CA2A731C;

  return sub_1CA62F000(a1, a2, a3, v9, v8);
}

uint64_t sub_1CA6300F8(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_1CA630134@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA6300F8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CA630160@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA6300EC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1CA63035C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_unknownObjectRetain();
  return sub_1CA282EF4();
}

void (*sub_1CA630388(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___WFRunningProgressSuppressionStateMachine_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1CA63040C;
}

void sub_1CA63040C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id RunningProgressSuppressionStateMachine.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1CA6304C0(void *a1, id a2)
{
  v3 = v2;
  v5 = [a2 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  sub_1CA94C658();

  v6 = sub_1CA25B410();

  if (v6 != 1)
  {
    goto LABEL_7;
  }

  v7 = [a1 identifier];
  v8 = sub_1CA94C3A8();
  v10 = v9;

  if (v8 == 0xD000000000000029 && 0x80000001CA9D7670 == v10)
  {
  }

  else
  {
    v12 = sub_1CA94D7F8();

    if ((v12 & 1) == 0)
    {
LABEL_7:
      v13 = objc_allocWithZone(type metadata accessor for RunningProgressSuppressionStateMachine.State());
      v14 = sub_1CA282CB0(2);
      v21 = *&v14[OBJC_IVAR____TtCC11WorkflowKit38RunningProgressSuppressionStateMachineP33_D75DF74A866BF93BDD94A2803CD087FC5State_timeout];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447828, &unk_1CA990120);
      sub_1CA6308E8();
      v15 = sub_1CA94A108();

      v16 = *(v3 + OBJC_IVAR___WFRunningProgressSuppressionStateMachine_waitingCancellable);
      *(v3 + OBJC_IVAR___WFRunningProgressSuppressionStateMachine_waitingCancellable) = v15;

      v17 = v14;
      v18 = sub_1CA94C368();
      v19 = OUTLINED_FUNCTION_50_6();
      [v19 v20];

      return;
    }
  }

  sub_1CA28C7C4(0);
}

uint64_t sub_1CA630700(void *a1)
{
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + OBJC_IVAR____TtCC11WorkflowKit38RunningProgressSuppressionStateMachineP33_D75DF74A866BF93BDD94A2803CD087FC5State_stage) == 2)
  {
    v8 = *MEMORY[0x1E69E10E0];
    sub_1CA949C58();
    v9 = sub_1CA949F68();
    v10 = sub_1CA94CC28();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = 0x4024000000000000;
      _os_log_impl(&dword_1CA256000, v9, v10, "Action timed out, and did not report whether or not it wants progress in %f, do you have a bug in the action?", v11, 0xCu);
      MEMORY[0x1CCAA4BF0](v11, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

unint64_t sub_1CA6308E8()
{
  result = qword_1EC447830;
  if (!qword_1EC447830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447828, &unk_1CA990120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447830);
  }

  return result;
}

id sub_1CA6309D0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for RunningProgressSuppressionStateMachine.State.Stage(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA630C34()
{
  result = qword_1EC447910;
  if (!qword_1EC447910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447910);
  }

  return result;
}

id sub_1CA630CC0()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v6 = MEMORY[0x1E69E6370];
  *(inited + 104) = v5;
  *(inited + 112) = @"Discoverable";
  *(inited + 144) = v6;
  *(inited + 120) = 0;
  v7 = @"Discoverable";
  v8 = sub_1CA94C368();
  *(inited + 184) = v1;
  *(inited + 152) = v8;
  *(inited + 160) = 0xD00000000000005BLL;
  *(inited + 168) = 0x80000001CA9D7A70;
  v9 = sub_1CA94C368();
  *(inited + 224) = v1;
  *(inited + 192) = v9;
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x80000001CA9D7AD0;
  *(inited + 232) = sub_1CA94C368();
  *(inited + 264) = v6;
  *(inited + 240) = 1;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA630F0C()
{
  v278 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA990270;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9D7B20;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v306 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v307 = v12;
  v13 = &v268 - v306;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v305 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v303 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v304 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v268 - v304;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v302 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v277 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v300 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v276 = xmmword_1CA97EDF0;
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionResult";
  v25 = @"Description";
  v26 = @"DescriptionResult";
  v27 = sub_1CA94C438();
  v297 = v28;
  v298 = v27;
  v29 = sub_1CA94C438();
  v31 = v30;
  v299 = &v268;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v268 - v306;
  sub_1CA948D98();
  v33 = [v305 bundleURL];
  v301 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v304;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v298, v297, v29, v31, 0, 0, v32, &v268 - v35);
  v37 = v302;
  *(v24 + 64) = v302;
  *(v24 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438();
  v297 = v40;
  v298 = v39;
  v296 = sub_1CA94C438();
  v42 = v41;
  v299 = &v268;
  MEMORY[0x1EEE9AC00](v296);
  v43 = &v268 - v306;
  sub_1CA948D98();
  v44 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v298, v297, v296, v42, 0, 0, v43, &v268 - v35);
  *(v24 + 104) = v37;
  *(v24 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v47 = v300;
  v48 = sub_1CA6B3784();
  v49 = v301;
  v301[20] = v48;
  v49[23] = v47;
  v49[24] = @"IconColor";
  v49[25] = 1953392980;
  v49[26] = 0xE400000000000000;
  v50 = MEMORY[0x1E69E6158];
  v49[28] = MEMORY[0x1E69E6158];
  v49[29] = @"IconSymbol";
  v275 = 0xD000000000000013;
  v49[30] = 0xD000000000000013;
  v49[31] = 0x80000001CA9D7BD0;
  v49[33] = v50;
  v49[34] = @"IconSymbolColor";
  v49[35] = 1702194242;
  v49[36] = 0xE400000000000000;
  v49[38] = v50;
  v49[39] = @"Input";
  v51 = v50;
  v52 = v49;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v53 = swift_initStackObject();
  v293 = xmmword_1CA981350;
  *(v53 + 16) = xmmword_1CA981350;
  *(v53 + 32) = 0x656C7069746C754DLL;
  *(v53 + 40) = 0xE800000000000000;
  v54 = MEMORY[0x1E69E6370];
  *(v53 + 48) = 1;
  *(v53 + 72) = v54;
  strcpy((v53 + 80), "ParameterKey");
  *(v53 + 93) = 0;
  *(v53 + 94) = -5120;
  *(v53 + 96) = 0x7475706E494657;
  *(v53 + 104) = 0xE700000000000000;
  *(v53 + 120) = v51;
  *(v53 + 128) = 0x6465726975716552;
  *(v53 + 136) = 0xE800000000000000;
  *(v53 + 144) = 1;
  *(v53 + 168) = v54;
  *(v53 + 176) = 0x7365707954;
  *(v53 + 184) = 0xE500000000000000;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v53 + 216) = v297;
  *(v53 + 192) = &unk_1F4A09DE0;
  v55 = @"IconColor";
  v56 = @"IconSymbol";
  v57 = @"IconSymbolColor";
  v58 = @"Input";
  v59 = sub_1CA94C1E8();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v300 = v60;
  v52[40] = v59;
  v52[43] = v60;
  v52[44] = @"Name";
  v61 = @"Name";
  v62 = sub_1CA94C438();
  v64 = v63;
  v65 = sub_1CA94C438();
  v67 = v66;
  v299 = &v268;
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v268 - v306;
  sub_1CA948D98();
  v69 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v268 - v304;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v72 = sub_1CA2F9F14(v62, v64, v65, v67, 0, 0, v68, v70);
  v73 = v301;
  v74 = v302;
  v301[45] = v72;
  v73[48] = v74;
  v73[49] = @"Output";
  v75 = swift_allocObject();
  *(v75 + 16) = v293;
  *(v75 + 32) = 0x75736F6C63736944;
  *(v75 + 40) = 0xEF6C6576654C6572;
  *(v75 + 48) = 0x63696C627550;
  *(v75 + 56) = 0xE600000000000000;
  *(v75 + 72) = MEMORY[0x1E69E6158];
  *(v75 + 80) = 0x656C7069746C754DLL;
  *(v75 + 88) = 0xE800000000000000;
  *(v75 + 96) = 1;
  *(v75 + 120) = MEMORY[0x1E69E6370];
  *(v75 + 128) = 0x614E74757074754FLL;
  *(v75 + 136) = 0xEA0000000000656DLL;
  v76 = @"Output";
  v77 = sub_1CA94C438();
  v296 = v78;
  v79 = sub_1CA94C438();
  v81 = v80;
  v299 = &v268;
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v268 - v306;
  sub_1CA948D98();
  v83 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v268 - v304;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v75 + 144) = sub_1CA2F9F14(v77, v296, v79, v81, 0, 0, v82, v84);
  *(v75 + 168) = v74;
  *(v75 + 176) = 0x7365707954;
  v86 = v297;
  *(v75 + 216) = v297;
  *(v75 + 184) = 0xE500000000000000;
  *(v75 + 192) = &unk_1F4A09E10;
  v87 = MEMORY[0x1E69E6158];
  v88 = sub_1CA94C1E8();
  v89 = v301;
  v301[50] = v88;
  v89[53] = v300;
  v89[54] = @"Parameters";
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v300 = swift_allocObject();
  *(v300 + 16) = xmmword_1CA981560;
  v299 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1CA981370;
  *&v292 = 0x80000001CA99B1E0;
  v284 = 0xD000000000000015;
  *(v90 + 32) = @"Class";
  *(v90 + 40) = 0xD000000000000015;
  *(v90 + 48) = 0x80000001CA99B1E0;
  *(v90 + 64) = v87;
  *(v90 + 72) = @"FilePickerSupportedTypes";
  *(v90 + 80) = &unk_1F4A09E40;
  *(v90 + 104) = v86;
  *(v90 + 112) = @"Key";
  *(v90 + 120) = 0x7475706E494657;
  *(v90 + 128) = 0xE700000000000000;
  *(v90 + 144) = v87;
  *(v90 + 152) = @"Label";
  v91 = @"Class";
  v92 = @"Key";
  v93 = @"Label";
  v94 = v91;
  v95 = v92;
  v96 = v93;
  v97 = @"FilePickerSupportedTypes";
  v288 = v94;
  v290 = v95;
  *&v291 = v96;
  v289 = v97;
  v98 = @"Parameters";
  v294 = sub_1CA94C438();
  v287 = v99;
  v100 = sub_1CA94C438();
  v286 = v101;
  v295 = &v268;
  MEMORY[0x1EEE9AC00](v100);
  v102 = v306;
  sub_1CA948D98();
  v103 = v305;
  v104 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  v105 = v304;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v90 + 160) = sub_1CA2F9F14(v294, v287, v100, v286, 0, 0, &v268 - v102, &v268 - v105);
  v107 = v302;
  *(v90 + 184) = v302;
  *(v90 + 192) = @"Placeholder";
  v282 = @"Placeholder";
  v294 = sub_1CA94C438();
  v287 = v108;
  v109 = sub_1CA94C438();
  v286 = v110;
  v295 = &v268;
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948D98();
  v111 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v294, v287, v109, v286, 0, 0, &v268 - v102, &v268 - v105);
  *(v90 + 224) = v107;
  *(v90 + 200) = v113;
  _s3__C3KeyVMa_0(0);
  v295 = v114;
  v294 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v300 + 32) = sub_1CA2F864C();
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_1CA981300;
  v116 = v288;
  v117 = v284;
  *(v115 + 32) = v288;
  *(v115 + 40) = v117;
  *(v115 + 48) = v292;
  v118 = MEMORY[0x1E69E6158];
  *(v115 + 64) = MEMORY[0x1E69E6158];
  *(v115 + 72) = @"DefaultsToShortcutsFolder";
  *(v115 + 80) = 1;
  v119 = MEMORY[0x1E69E6370];
  *(v115 + 104) = MEMORY[0x1E69E6370];
  *(v115 + 112) = @"Optional";
  *(v115 + 120) = 0;
  v120 = v289;
  v121 = v290;
  *(v115 + 144) = v119;
  *(v115 + 152) = v120;
  *(v115 + 160) = &unk_1F4A09E70;
  *(v115 + 184) = v297;
  *(v115 + 192) = v121;
  *(v115 + 200) = 0x7265646C6F464657;
  *(v115 + 208) = 0xE800000000000000;
  v122 = v291;
  *(v115 + 224) = v118;
  *(v115 + 232) = v122;
  v280 = v116;
  v281 = v121;
  v271 = v122;
  v123 = @"DefaultsToShortcutsFolder";
  v124 = @"Optional";
  v125 = sub_1CA94C438();
  v290 = v126;
  *&v291 = v125;
  v127 = sub_1CA94C438();
  v289 = v128;
  *&v292 = &v268;
  MEMORY[0x1EEE9AC00](v127);
  v129 = v306;
  sub_1CA948D98();
  v130 = v305;
  v131 = [v305 bundleURL];
  v288 = &v268;
  MEMORY[0x1EEE9AC00](v131);
  v132 = &v268 - v304;
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v115 + 240) = sub_1CA2F9F14(v291, v290, v127, v289, 0, 0, &v268 - v129, v132);
  v134 = v302;
  v135 = v282;
  *(v115 + 264) = v302;
  *(v115 + 272) = v135;
  v136 = sub_1CA94C438();
  v290 = v137;
  *&v291 = v136;
  v138 = sub_1CA94C438();
  v289 = v139;
  *&v292 = &v268;
  MEMORY[0x1EEE9AC00](v138);
  sub_1CA948D98();
  v140 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = &v268 - v304;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v115 + 280) = sub_1CA2F9F14(v291, v290, v138, v289, 0, 0, &v268 - v129, v141);
  *(v115 + 304) = v134;
  *(v115 + 312) = @"RequiredResources";
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v143 = swift_allocObject();
  v292 = xmmword_1CA981310;
  *(v143 + 16) = xmmword_1CA981310;
  v144 = swift_allocObject();
  v291 = xmmword_1CA9813C0;
  *(v144 + 16) = xmmword_1CA9813C0;
  strcpy((v144 + 32), "WFParameterKey");
  *(v144 + 47) = -18;
  *(v144 + 48) = 0xD000000000000010;
  *(v144 + 56) = 0x80000001CA9C77C0;
  v285 = 0x80000001CA9C77C0;
  v290 = 0x80000001CA993570;
  v145 = MEMORY[0x1E69E6158];
  *(v144 + 72) = MEMORY[0x1E69E6158];
  *(v144 + 80) = 0xD000000000000010;
  *(v144 + 88) = 0x80000001CA993570;
  *(v144 + 96) = 0;
  v146 = MEMORY[0x1E69E6370];
  *(v144 + 120) = MEMORY[0x1E69E6370];
  *(v144 + 128) = 0x72756F7365524657;
  *(v144 + 168) = v145;
  v288 = 0xD00000000000001BLL;
  v289 = 0x80000001CA993590;
  *(v144 + 136) = 0xEF7373616C436563;
  *(v144 + 144) = 0xD00000000000001BLL;
  *(v144 + 152) = 0x80000001CA993590;
  v272 = @"RequiredResources";
  *(v143 + 32) = sub_1CA94C1E8();
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v115 + 344) = v286;
  *(v115 + 320) = v143;
  sub_1CA94C1E8();
  *(v300 + 40) = sub_1CA2F864C();
  v147 = swift_allocObject();
  *(v147 + 16) = v293;
  v273 = 0x80000001CA99E620;
  v283 = 0xD000000000000011;
  v148 = v280;
  v149 = v281;
  *(v147 + 32) = v280;
  *(v147 + 40) = 0xD000000000000011;
  *(v147 + 48) = 0x80000001CA99E620;
  *(v147 + 64) = v145;
  *(v147 + 72) = @"DefaultValue";
  *(v147 + 80) = 1;
  *(v147 + 104) = v146;
  *(v147 + 112) = v149;
  *(v147 + 120) = 0xD000000000000010;
  *(v147 + 128) = 0x80000001CA9C77C0;
  v150 = v271;
  *(v147 + 144) = v145;
  *(v147 + 152) = v150;
  v151 = @"DefaultValue";
  v279 = v148;
  v280 = v149;
  v281 = v150;
  v271 = v151;
  v152 = sub_1CA94C438();
  v154 = v153;
  v155 = sub_1CA94C438();
  v157 = v156;
  v270 = &v268;
  MEMORY[0x1EEE9AC00](v155);
  v158 = &v268 - v306;
  sub_1CA948D98();
  v159 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v268 - v304;
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v162 = sub_1CA2F9F14(v152, v154, v155, v157, 0, 0, v158, v160);
  *(v147 + 184) = v302;
  *(v147 + 160) = v162;
  sub_1CA94C1E8();
  *(v300 + 48) = sub_1CA2F864C();
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_1CA9813E0;
  *(v163 + 32) = @"AutocapitalizationType";
  *(v163 + 40) = 1701736270;
  *(v163 + 48) = 0xE400000000000000;
  v164 = MEMORY[0x1E69E6158];
  v165 = v279;
  *(v163 + 64) = MEMORY[0x1E69E6158];
  *(v163 + 72) = v165;
  *(v163 + 80) = 0xD000000000000014;
  *(v163 + 88) = 0x80000001CA99B500;
  *(v163 + 104) = v164;
  *(v163 + 112) = @"Description";
  v166 = @"AutocapitalizationType";
  v167 = @"Description";
  v168 = sub_1CA94C438();
  v268 = v169;
  v269 = v168;
  v170 = sub_1CA94C438();
  v172 = v171;
  v270 = &v268;
  MEMORY[0x1EEE9AC00](v170);
  v173 = &v268 - v306;
  sub_1CA948D98();
  v174 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v174);
  v175 = &v268 - v304;
  sub_1CA948B68();

  v176 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v163 + 120) = sub_1CA2F9F14(v269, v268, v170, v172, 0, 0, v173, v175);
  *(v163 + 144) = v302;
  *(v163 + 152) = @"DisableAutocorrection";
  *(v163 + 160) = 1;
  v177 = v280;
  *(v163 + 184) = MEMORY[0x1E69E6370];
  *(v163 + 192) = v177;
  *(v163 + 200) = v284;
  *(v163 + 208) = 0x80000001CA9C78B0;
  v178 = v281;
  *(v163 + 224) = MEMORY[0x1E69E6158];
  *(v163 + 232) = v178;
  v179 = @"DisableAutocorrection";
  v180 = sub_1CA94C438();
  v269 = v181;
  v270 = v180;
  v182 = sub_1CA94C438();
  v268 = v183;
  v284 = &v268;
  MEMORY[0x1EEE9AC00](v182);
  v184 = v306;
  sub_1CA948D98();
  v185 = v305;
  v186 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = v304;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v163 + 240) = sub_1CA2F9F14(v270, v269, v182, v268, 0, 0, &v268 - v184, &v268 - v187);
  v189 = v302;
  v190 = v282;
  *(v163 + 264) = v302;
  *(v163 + 272) = v190;
  v282 = sub_1CA94C438();
  v270 = v191;
  v192 = sub_1CA94C438();
  v269 = v193;
  v284 = &v268;
  MEMORY[0x1EEE9AC00](v192);
  sub_1CA948D98();
  v194 = [v185 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  sub_1CA948B68();

  v195 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v163 + 280) = sub_1CA2F9F14(v282, v270, v192, v269, 0, 0, &v268 - v184, &v268 - v187);
  v196 = v272;
  *(v163 + 304) = v189;
  *(v163 + 312) = v196;
  v197 = swift_allocObject();
  *(v197 + 16) = v292;
  v198 = swift_allocObject();
  *(v198 + 16) = v291;
  strcpy((v198 + 32), "WFParameterKey");
  *(v198 + 47) = -18;
  v199 = v285;
  *(v198 + 48) = 0xD000000000000010;
  *(v198 + 56) = v199;
  v200 = MEMORY[0x1E69E6158];
  *(v198 + 72) = MEMORY[0x1E69E6158];
  *(v198 + 80) = 0xD000000000000010;
  *(v198 + 88) = v290;
  *(v198 + 96) = 0;
  v201 = MEMORY[0x1E69E6370];
  *(v198 + 120) = MEMORY[0x1E69E6370];
  *(v198 + 128) = 0x72756F7365524657;
  *(v198 + 168) = v200;
  *(v198 + 136) = 0xEF7373616C436563;
  v202 = v289;
  *(v198 + 144) = v288;
  *(v198 + 152) = v202;
  v203 = v200;
  *(v197 + 32) = sub_1CA94C1E8();
  *(v163 + 320) = v197;
  *(v163 + 344) = v286;
  *(v163 + 352) = @"TextAlignment";
  *(v163 + 384) = v203;
  *(v163 + 360) = 1952867660;
  *(v163 + 368) = 0xE400000000000000;
  v204 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v300 + 56) = sub_1CA2F864C();
  v205 = swift_allocObject();
  *(v205 + 16) = v293;
  v206 = v283;
  *(v205 + 32) = v279;
  *(v205 + 40) = v206;
  *(v205 + 48) = v273;
  v207 = v271;
  *(v205 + 64) = v203;
  *(v205 + 72) = v207;
  *(v205 + 80) = 0;
  v208 = v280;
  *(v205 + 104) = v201;
  *(v205 + 112) = v208;
  *(v205 + 120) = v275;
  *(v205 + 128) = 0x80000001CA9C7920;
  v209 = v281;
  *(v205 + 144) = v203;
  *(v205 + 152) = v209;
  v210 = sub_1CA94C438();
  v212 = v211;
  v213 = sub_1CA94C438();
  v215 = v214;
  v296 = &v268;
  MEMORY[0x1EEE9AC00](v213);
  v216 = &v268 - v306;
  sub_1CA948D98();
  v217 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v217);
  v218 = &v268 - v304;
  sub_1CA948B68();

  v219 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v220 = sub_1CA2F9F14(v210, v212, v213, v215, 0, 0, v216, v218);
  *(v205 + 184) = v302;
  *(v205 + 160) = v220;
  sub_1CA94C1E8();
  v221 = sub_1CA2F864C();
  v222 = v300;
  *(v300 + 64) = v221;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v224 = v301;
  v301[55] = v222;
  v224[58] = v223;
  v224[59] = @"ParameterSummary";
  v302 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v300 = swift_allocObject();
  *(v300 + 16) = xmmword_1CA981360;
  v299 = "Overwrite If File Exists";
  v225 = @"ParameterSummary";
  v226 = sub_1CA94C438();
  v228 = v227;
  v229 = sub_1CA94C438();
  v231 = v230;
  v296 = &v268;
  MEMORY[0x1EEE9AC00](v229);
  v232 = &v268 - v306;
  sub_1CA948D98();
  v233 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v233);
  v234 = &v268 - v304;
  sub_1CA948B68();

  v235 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v236 = sub_1CA2F9F14(v226, v228, v229, v231, 0, 0, v232, v234);
  v237 = objc_allocWithZone(WFActionParameterSummaryValue);
  v238 = sub_1CA65DD78(0xD00000000000004ELL, v299 | 0x8000000000000000, v236);
  v239 = v300;
  *(v300 + 32) = v238;
  v299 = "Save ${WFInput} to ${WFFolder}";
  v240 = sub_1CA94C438();
  v295 = v241;
  v242 = sub_1CA94C438();
  v244 = v243;
  v296 = &v268;
  MEMORY[0x1EEE9AC00](v242);
  v245 = &v268 - v306;
  sub_1CA948D98();
  v246 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v246);
  v247 = &v268 - v304;
  sub_1CA948B68();

  v248 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v249 = sub_1CA2F9F14(v240, v295, v242, v244, 0, 0, v245, v247);
  v250 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v239 + 40) = sub_1CA65DD78(0xD00000000000002FLL, v299 | 0x8000000000000000, v249);
  v251 = v302;
  v252 = sub_1CA65AF90();
  v253 = v301;
  v301[60] = v252;
  v253[63] = v251;
  v253[64] = @"RemoteExecuteOnPlatforms";
  v253[68] = v297;
  v253[65] = &unk_1F4A09EA0;
  v253[69] = @"RequiredResources";
  v254 = swift_allocObject();
  *(v254 + 16) = v292;
  v255 = swift_allocObject();
  *(v255 + 16) = v276;
  *(v255 + 32) = v283;
  *(v255 + 40) = 0x80000001CA99B240;
  v256 = swift_allocObject();
  *(v256 + 16) = v292;
  v257 = swift_allocObject();
  *(v257 + 16) = v291;
  strcpy((v257 + 32), "WFParameterKey");
  *(v257 + 47) = -18;
  v258 = v285;
  *(v257 + 48) = 0xD000000000000010;
  *(v257 + 56) = v258;
  v259 = MEMORY[0x1E69E6158];
  *(v257 + 72) = MEMORY[0x1E69E6158];
  *(v257 + 80) = 0xD000000000000010;
  *(v257 + 88) = v290;
  *(v257 + 96) = 1;
  *(v257 + 120) = MEMORY[0x1E69E6370];
  *(v257 + 128) = 0x72756F7365524657;
  *(v257 + 168) = v259;
  *(v257 + 136) = 0xEF7373616C436563;
  v260 = v289;
  *(v257 + 144) = v288;
  *(v257 + 152) = v260;
  v261 = @"RemoteExecuteOnPlatforms";
  v262 = @"RequiredResources";
  *(v256 + 32) = sub_1CA94C1E8();
  *(v255 + 48) = v256;
  v263 = v286;
  *(v255 + 72) = v286;
  *(v255 + 80) = 0x72756F7365524657;
  *(v255 + 120) = v259;
  *(v255 + 88) = 0xEF7373616C436563;
  *(v255 + 96) = 0xD000000000000019;
  *(v255 + 104) = 0x80000001CA9932D0;
  *(v254 + 32) = sub_1CA94C1E8();
  v253[73] = v263;
  v253[70] = v254;
  v253[74] = @"UserInterfaceClasses";
  v264 = @"UserInterfaceClasses";
  v265 = sub_1CA94C1E8();
  v253[78] = v277;
  v253[75] = v265;
  v253[79] = @"UserInterfaces";
  v253[83] = v297;
  v253[80] = &unk_1F4A09F30;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v266 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static NSDateInterval.dateInterval(with:)(uint64_t a1)
{
  v24[3] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  if (!sub_1CA323E28(0x7461447472617473, 0xE900000000000065))
  {

    return 0;
  }

  v1 = sub_1CA948CB8();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1CA3B1A38();
  if (__swift_getEnumTagSinglePayload(v11, 1, v1) == 1)
  {

    swift_unknownObjectRelease();
    sub_1CA633484(v11);
    return 0;
  }

  (*(v4 + 32))(v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v1);
  v12 = sub_1CA323E28(0x6E6F697461727564, 0xE800000000000000);

  if (!v12)
  {
LABEL_10:
    swift_unknownObjectRelease();
    (*(v4 + 8))(v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
    return 0;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  [v13 doubleValue];
  v24[0] = sub_1CA948898();
  v24[1] = v24;
  v14 = OUTLINED_FUNCTION_1_0(v24[0]);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v14);
  v21 = v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  (*(v4 + 16))(v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v1);
  sub_1CA948888();
  v22 = sub_1CA948878();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v16 + 8))(v21, v24[0]);
  (*(v4 + 8))(v7, v1);
  return v22;
}

uint64_t sub_1CA633484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CA6334EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = static NSDateInterval.dateInterval(with:)(a3);
  swift_unknownObjectRelease();

  return v4;
}

id sub_1CA63353C(void *a1)
{
  v1 = a1;
  v2 = NSDateInterval.serializedRepresentation.getter();

  return v2;
}

uint64_t NSDateInterval.serializedRepresentation.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v2 = sub_1CA94C1E8();
  v3 = [v0 startDate];
  v4 = sub_1CA948CB8();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948C78();

  sub_1CA948C38();
  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  (*(v7 + 8))(v11, v4);
  v14 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v2;
  sub_1CA32EA0C(v14, 0x7461447472617473, 0xE900000000000065, isUniquelyReferenced_nonNull_native, &v23);

  v16 = v23;
  [v1 duration];
  v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  swift_unknownObjectRetain();
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v23 = v16;
  sub_1CA32EA0C(v18, 0x6E6F697461727564, 0xE800000000000000, v19, &v23);

  v20 = sub_1CA94C1A8();

  return v20;
}

uint64_t sub_1CA6337C0()
{
  OUTLINED_FUNCTION_0();
  v0[17] = v1;
  v0[18] = v2;
  v3 = sub_1CA94A888();
  v0[19] = v3;
  OUTLINED_FUNCTION_12(v3);
  v0[20] = v4;
  v6 = *(v5 + 64);
  v0[21] = OUTLINED_FUNCTION_45();
  v7 = sub_1CA94A908();
  v0[22] = v7;
  OUTLINED_FUNCTION_12(v7);
  v0[23] = v8;
  v10 = *(v9 + 64);
  v0[24] = OUTLINED_FUNCTION_45();
  v11 = sub_1CA94A9A8();
  v0[25] = v11;
  OUTLINED_FUNCTION_12(v11);
  v0[26] = v12;
  v14 = *(v13 + 64);
  v0[27] = OUTLINED_FUNCTION_45();
  v15 = sub_1CA94A8C8();
  v0[28] = v15;
  OUTLINED_FUNCTION_12(v15);
  v0[29] = v16;
  v18 = *(v17 + 64);
  v0[30] = OUTLINED_FUNCTION_45();
  v19 = sub_1CA94AC18();
  v0[31] = v19;
  OUTLINED_FUNCTION_12(v19);
  v0[32] = v20;
  v22 = *(v21 + 64);
  v0[33] = OUTLINED_FUNCTION_45();
  v23 = sub_1CA94AC88();
  v0[34] = v23;
  OUTLINED_FUNCTION_12(v23);
  v0[35] = v24;
  v26 = *(v25 + 64);
  v0[36] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1CA6339E4()
{
  OUTLINED_FUNCTION_59_0();
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  (*(v2 + 16))(v1, v0[17], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E69DAE70])
  {
    v5 = v0[36];
    v7 = v0[33];
    v6 = v0[34];
    v8 = v0[31];
    v9 = v0[32];
    v10 = OUTLINED_FUNCTION_14_1(v0[35]);
    v11(v10);
    v0[37] = *v5;
    swift_projectBox();
    v12 = OUTLINED_FUNCTION_22();
    v13(v12);
    v14 = swift_task_alloc();
    v0[38] = v14;
    *v14 = v0;
    v14[1] = sub_1CA633EAC;
    OUTLINED_FUNCTION_5_46(v0[33]);
    OUTLINED_FUNCTION_150();

    return sub_1CA5A3F30(v15, v16);
  }

  else if (v4 == *MEMORY[0x1E69DAE20])
  {
    OUTLINED_FUNCTION_21_23();
    v20 = v0[29];
    v19 = v0[30];
    v21 = v0[28];
    v23 = OUTLINED_FUNCTION_14_1(v22);
    v24(v23);
    v0[40] = *v1;
    swift_projectBox();
    v25 = OUTLINED_FUNCTION_22();
    v26(v25);
    v27 = swift_task_alloc();
    v0[41] = v27;
    *v27 = v0;
    v27[1] = sub_1CA63411C;
    OUTLINED_FUNCTION_5_46(v0[30]);
    OUTLINED_FUNCTION_150();

    return sub_1CA5AD2EC(v28, v29);
  }

  else if (v4 == *MEMORY[0x1E69DAE58])
  {
    OUTLINED_FUNCTION_21_23();
    v32 = v0[26];
    v31 = v0[27];
    v33 = v0[25];
    v35 = OUTLINED_FUNCTION_14_1(v34);
    v36(v35);
    v0[43] = *v1;
    swift_projectBox();
    v37 = OUTLINED_FUNCTION_22();
    v38(v37);
    v39 = swift_task_alloc();
    v0[44] = v39;
    *v39 = v0;
    v39[1] = sub_1CA63438C;
    OUTLINED_FUNCTION_5_46(v0[27]);
    OUTLINED_FUNCTION_150();

    return sub_1CA3DA9E4(v40, v41);
  }

  else if (v4 == *MEMORY[0x1E69DAE18])
  {
    OUTLINED_FUNCTION_21_23();
    v44 = v0[20];
    v43 = v0[21];
    v45 = v0[19];
    v47 = OUTLINED_FUNCTION_14_1(v46);
    v48(v47);
    v0[49] = *v1;
    swift_projectBox();
    v49 = OUTLINED_FUNCTION_22();
    v50(v49);
    v51 = swift_task_alloc();
    v0[50] = v51;
    *v51 = v0;
    v51[1] = sub_1CA63485C;
    OUTLINED_FUNCTION_5_46(v0[21]);
    OUTLINED_FUNCTION_150();

    return sub_1CA436F48();
  }

  else
  {
    v53 = *MEMORY[0x1E69DAE50];
    v54 = *MEMORY[0x1E69DAE68];
    v55 = *MEMORY[0x1E69DAE28];
    OUTLINED_FUNCTION_21_23();
    if (v56 == v60 || v56 == v58 || v56 != v59)
    {
      (*(v57 + 8))(v1);
      sub_1CA3DBA78();
      swift_allocError();
      *v63 = 1;
      swift_willThrow();
      OUTLINED_FUNCTION_0_68();

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_150();

      __asm { BRAA            X1, X16 }
    }

    v67 = v0[23];
    v66 = v0[24];
    v68 = v0[22];
    v69 = OUTLINED_FUNCTION_14_1(v57);
    v70(v69);
    v0[46] = *v1;
    swift_projectBox();
    v71 = OUTLINED_FUNCTION_22();
    v72(v71);
    v73 = swift_task_alloc();
    v0[47] = v73;
    *v73 = v0;
    v73[1] = sub_1CA6345F4;
    OUTLINED_FUNCTION_5_46(v0[24]);
    OUTLINED_FUNCTION_150();

    return sub_1CA445BDC(v74, v75);
  }
}

uint64_t sub_1CA633EAC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  OUTLINED_FUNCTION_21_1();
  v6 = *(v5 + 304);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v9 + 312) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA633FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_59_0();
  v11 = v10[3];
  v13 = v10[36];
  v12 = v10[37];
  v14 = v10[30];
  v15 = v10[27];
  v16 = v10[24];
  v17 = v10[21];
  (*(v10[32] + 8))(v10[33], v10[31]);

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_122();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1CA634068()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[37];
  (*(v0[32] + 8))(v0[33], v0[31]);

  v2 = v0[39];
  OUTLINED_FUNCTION_0_68();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA63411C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_21_1();
  v6 = *(v5 + 328);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v9 + 336) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA634218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_59_0();
  v11 = v10[6];
  v12 = v10[40];
  v13 = v10[30];
  v14 = v10[36];
  v15 = v10[33];
  v17 = v10[27];
  v16 = v10[28];
  v18 = v10[24];
  v19 = v10[21];
  v20 = OUTLINED_FUNCTION_20_31(v10[29]);
  v21(v20);

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_122();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_1CA6342D8()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[40];
  (*(v0[29] + 8))(v0[30], v0[28]);

  v2 = v0[42];
  OUTLINED_FUNCTION_0_68();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA63438C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  OUTLINED_FUNCTION_21_1();
  v6 = *(v5 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v9 + 360) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA634488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_59_0();
  v11 = v10[9];
  v12 = v10[43];
  v13 = v10[26];
  v14 = v10[27];
  OUTLINED_FUNCTION_12_31();
  v16 = v10[24];
  v15 = v10[25];
  v17 = v10[21];
  v19 = OUTLINED_FUNCTION_20_31(v18);
  v20(v19);

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_122();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1CA634540()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[43];
  (*(v0[26] + 8))(v0[27], v0[25]);

  v2 = v0[45];
  OUTLINED_FUNCTION_0_68();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA6345F4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  OUTLINED_FUNCTION_21_1();
  v6 = *(v5 + 376);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v9 + 384) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA6346F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_59_0();
  v11 = v10[12];
  v12 = v10[46];
  v13 = v10[23];
  v14 = v10[24];
  OUTLINED_FUNCTION_12_31();
  v15 = v10[27];
  v17 = v10[21];
  v16 = v10[22];
  v19 = OUTLINED_FUNCTION_20_31(v18);
  v20(v19);

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_122();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1CA6347A8()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[46];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v2 = v0[48];
  OUTLINED_FUNCTION_0_68();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA63485C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v2[14] = v1;
  v2[15] = v4;
  v2[16] = v0;
  OUTLINED_FUNCTION_21_1();
  v6 = *(v5 + 400);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v9 + 408) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA634958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_59_0();
  v11 = v10[15];
  v12 = v10[49];
  v13 = v10[20];
  v14 = v10[21];
  v15 = v10[19];
  OUTLINED_FUNCTION_12_31();
  v16 = v10[27];
  v17 = v10[24];
  v19 = OUTLINED_FUNCTION_20_31(v18);
  v20(v19);

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_122();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1CA634A14()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[49];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v2 = v0[51];
  OUTLINED_FUNCTION_0_68();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA634AC8()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA4A0608;

  return sub_1CA6337C0();
}

_BYTE *storeEnumTagSinglePayload for ParameterStateToTypedValueError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA634C44()
{
  result = qword_1EC447918;
  if (!qword_1EC447918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447918);
  }

  return result;
}

id sub_1CA634CCC()
{
  v131 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001CLL;
  *(inited + 48) = 0x80000001CA9D7E00;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438();
  v7 = v6;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v138 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v139 = v13;
  v14 = &v124 - v138;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v135 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v137 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v134 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v124 - v134;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v133 = v21;
  v136 = v2;
  v2[10] = v20;
  v2[13] = v21;
  v2[14] = @"Description";
  *&v132 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CA97EDF0;
  *(v22 + 32) = @"DescriptionInput";
  v23 = @"Description";
  v24 = @"DescriptionInput";
  v25 = sub_1CA94C438();
  v128 = v26;
  v129 = v25;
  v27 = sub_1CA94C438();
  v127 = v28;
  v130 = &v124;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v124 - v138;
  sub_1CA948D98();
  v30 = v135;
  v31 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = v134;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v22 + 40) = sub_1CA2F9F14(v129, v128, v27, v127, 0, 0, v29, &v124 - v32);
  v34 = v133;
  *(v22 + 64) = v133;
  *(v22 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v36 = sub_1CA94C438();
  v128 = v37;
  v129 = v36;
  v127 = sub_1CA94C438();
  v39 = v38;
  v130 = &v124;
  MEMORY[0x1EEE9AC00](v127);
  v40 = &v124 - v138;
  sub_1CA948D98();
  v41 = [v30 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v129, v128, v127, v39, 0, 0, v40, &v124 - v32);
  *(v22 + 104) = v34;
  *(v22 + 80) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v44 = v132;
  v45 = sub_1CA6B3784();
  v46 = v136;
  v136[15] = v45;
  v46[18] = v44;
  v46[19] = @"IconColor";
  v46[20] = 0x6F6769646E49;
  v46[21] = 0xE600000000000000;
  v47 = MEMORY[0x1E69E6158];
  v46[23] = MEMORY[0x1E69E6158];
  v46[24] = @"IconSymbol";
  v46[25] = 0xD000000000000011;
  v46[26] = 0x80000001CA9A3B70;
  v46[28] = v47;
  v46[29] = @"Input";
  v48 = v47;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  v132 = xmmword_1CA981350;
  *(v49 + 16) = xmmword_1CA981350;
  *(v49 + 32) = 0x656C7069746C754DLL;
  *(v49 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 48) = 0;
  *(v49 + 72) = v50;
  strcpy((v49 + 80), "ParameterKey");
  *(v49 + 93) = 0;
  *(v49 + 94) = -5120;
  *(v49 + 96) = 0x7475706E494657;
  *(v49 + 104) = 0xE700000000000000;
  *(v49 + 120) = v48;
  *(v49 + 128) = 0x6465726975716552;
  *(v49 + 136) = 0xE800000000000000;
  *(v49 + 144) = 1;
  *(v49 + 168) = v50;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 184) = 0xE500000000000000;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 216) = v130;
  *(v49 + 192) = &unk_1F4A09F70;
  v51 = @"IconColor";
  v52 = @"IconSymbol";
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v129 = v55;
  v46[30] = v54;
  v46[33] = v55;
  v46[34] = @"Name";
  v56 = @"Name";
  v57 = sub_1CA94C438();
  v125 = v58;
  v126 = v57;
  v59 = sub_1CA94C438();
  v61 = v60;
  v127 = &v124;
  MEMORY[0x1EEE9AC00](v59);
  v62 = v138;
  sub_1CA948D98();
  v63 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v134;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v126, v125, v59, v61, 0, 0, &v124 - v62, &v124 - v64);
  v67 = v136;
  v136[35] = v66;
  v68 = v133;
  v67[38] = v133;
  v67[39] = @"Output";
  v69 = swift_allocObject();
  *(v69 + 16) = v132;
  *(v69 + 32) = 0x75736F6C63736944;
  *(v69 + 40) = 0xEF6C6576654C6572;
  *(v69 + 48) = 0x63696C627550;
  *(v69 + 56) = 0xE600000000000000;
  *(v69 + 72) = MEMORY[0x1E69E6158];
  *(v69 + 80) = 0x656C7069746C754DLL;
  *(v69 + 88) = 0xE800000000000000;
  *(v69 + 96) = 0;
  *(v69 + 120) = MEMORY[0x1E69E6370];
  *(v69 + 128) = 0x614E74757074754FLL;
  *(v69 + 136) = 0xEA0000000000656DLL;
  v70 = @"Output";
  v71 = sub_1CA94C438();
  v126 = v72;
  v127 = v71;
  v125 = sub_1CA94C438();
  v74 = v73;
  v128 = &v124;
  MEMORY[0x1EEE9AC00](v125);
  sub_1CA948D98();
  v75 = v135;
  v76 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 144) = sub_1CA2F9F14(v127, v126, v125, v74, 0, 0, &v124 - v62, &v124 - v64);
  *(v69 + 168) = v68;
  *(v69 + 176) = 0x7365707954;
  *(v69 + 216) = v130;
  *(v69 + 184) = 0xE500000000000000;
  *(v69 + 192) = &unk_1F4A09FA0;
  v78 = MEMORY[0x1E69E6158];
  v79 = sub_1CA94C1E8();
  v80 = v136;
  v136[40] = v79;
  v80[43] = v129;
  v80[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v130 = swift_allocObject();
  *(v130 + 1) = xmmword_1CA9813B0;
  v129 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v81 = swift_initStackObject();
  *(v81 + 16) = v132;
  *(v81 + 32) = @"Class";
  *(v81 + 40) = 0xD000000000000019;
  *(v81 + 48) = 0x80000001CA99B030;
  *(v81 + 64) = v78;
  *(v81 + 72) = @"Key";
  *(v81 + 80) = 0x7475706E494657;
  *(v81 + 88) = 0xE700000000000000;
  *(v81 + 104) = v78;
  *(v81 + 112) = @"Label";
  v82 = @"Parameters";
  v83 = @"Class";
  v84 = @"Key";
  v85 = @"Label";
  v86 = sub_1CA94C438();
  v127 = v87;
  v128 = v86;
  v88 = sub_1CA94C438();
  v126 = v89;
  *&v132 = &v124;
  MEMORY[0x1EEE9AC00](v88);
  v90 = v138;
  sub_1CA948D98();
  v91 = [v75 bundleURL];
  v125 = &v124;
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v124 - v134;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 120) = sub_1CA2F9F14(v128, v127, v88, v126, 0, 0, &v124 - v90, v92);
  v94 = v133;
  *(v81 + 144) = v133;
  *(v81 + 152) = @"Placeholder";
  v95 = @"Placeholder";
  v96 = sub_1CA94C438();
  v127 = v97;
  v128 = v96;
  v126 = sub_1CA94C438();
  v99 = v98;
  *&v132 = &v124;
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948D98();
  v100 = [v75 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = v134;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v128, v127, v126, v99, 0, 0, &v124 - v90, &v124 - v101);
  *(v81 + 184) = v94;
  *(v81 + 160) = v103;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v104 = sub_1CA2F864C();
  v105 = v130;
  v130[4] = v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v107 = v136;
  v136[45] = v105;
  v107[48] = v106;
  v107[49] = @"ParameterSummary";
  v108 = @"ParameterSummary";
  v109 = sub_1CA94C438();
  v111 = v110;
  v112 = sub_1CA94C438();
  v114 = v113;
  v133 = &v124;
  MEMORY[0x1EEE9AC00](v112);
  v115 = &v124 - v138;
  sub_1CA948D98();
  v116 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v109, v111, v112, v114, 0, 0, v115, &v124 - v101);
  v119 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v120 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v121 = v136;
  v136[50] = v119;
  v121[53] = v120;
  v121[54] = @"ResidentCompatible";
  v121[58] = MEMORY[0x1E69E6370];
  *(v121 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v122 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void *sub_1CA635CB8(void *a1)
{
  swift_unknownObjectWeakInit();
  v1[4] = 0;
  v1[5] = 0;
  v1[3] = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  sub_1CA94C218();
  sub_1CA636E5C(v3);

  v5 = v1[4];
  v6 = v1[5];
  v1[4] = v3;
  v1[5] = v4;
  sub_1CA636794(v5);
  return v1;
}

uint64_t sub_1CA635D24(uint64_t a1)
{
  v2 = v1[3];
  v1[3] = a1;

  v3 = v1[4];
  v4 = v1[5];
  v1[4] = 0;
  v1[5] = 0;

  return sub_1CA636794(v3);
}

uint64_t sub_1CA635D60(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *v3;
  v6 = v3 + 4;
  if (!v3[4])
  {
    return result;
  }

  v9 = result;
  v10 = v3[5];
  sub_1CA94C218();
  sub_1CA94C218();
  v11 = sub_1CA635F9C(a2, a3, v9);
  v12 = sub_1CA311E9C(v9, v10);
  if (v12)
  {
    v13 = sub_1CA323E30(a2, a3, v12);

    if (v13)
    {
      v14 = sub_1CA636CD8(v11, v13);

      if (v14)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  else
  {
  }

LABEL_8:
  v15 = v4[4];
  v16 = v4[5];
  *v6 = 0;
  v6[1] = 0;
  sub_1CA636794(v15);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = [*(result + OBJC_IVAR___WFWorkflowActionTree_observers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444858, &unk_1CA992010);
    v19 = sub_1CA94C658();

    result = sub_1CA25B410();
    if (result)
    {
      v20 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v20; ++i)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1CCAA22D0](i, v19);
        }

        else
        {
          v22 = *(v19 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        [v22 actionTreeDidChangeConnectorState_];
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1CA635F9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E69E7CD0];
  v18 = MEMORY[0x1E69E7CD0];
  v5 = sub_1CA94C368();
  v6 = [a3 parameterStateForKey:v5 fallingBackToDefaultValue:0];

  if (!v6)
  {
    return v4;
  }

  v7 = [v6 containedVariables];
  sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
  v8 = sub_1CA94C658();

  result = sub_1CA25B410();
  if (!result)
  {
    swift_unknownObjectRelease();

    return MEMORY[0x1E69E7CD0];
  }

  v10 = result;
  if (result >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1CCAA22D0](i, v8);
      }

      else
      {
        v12 = *(v8 + 8 * i + 32);
      }

      v13 = v12;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = [v14 action];
        if (v15)
        {
          v16 = v15;
          sub_1CA369200(&v17, v15);
        }
      }
    }

    swift_unknownObjectRelease();

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA636144()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = v0[5];
  if (v2)
  {
    v4 = v0[4];
  }

  else
  {
    v5 = v0;
    v6 = v0[3];
    v7 = sub_1CA94C218();
    v4 = sub_1CA636210(v7);
    v9 = v8;

    v10 = v5[4];
    v11 = v5[5];
    v5[4] = v4;
    v5[5] = v9;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA636794(v10);
  }

  sub_1CA636E5C(v2);
  return v4;
}

uint64_t sub_1CA636210(uint64_t a1)
{
  v54 = MEMORY[0x1E69E7CD0];
  v55 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447920, &qword_1CA9903D0);
  v2 = sub_1CA94C1E8();
  v3 = 0;
  v4 = 0;
  v41 = a1 & 0xC000000000000001;
  v42 = sub_1CA25B410();
  v38 = a1;
  v39 = a1 + 32;
  v40 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = &selRef_isInputParameter;
  while (1)
  {
    if (v4 == v42)
    {
      v36 = v55;

      sub_1CA293254(v3);
      return v36;
    }

    if (v41)
    {
      v6 = MEMORY[0x1CCAA22D0](v4, v38);
    }

    else
    {
      if (v4 >= *(v40 + 16))
      {
        goto LABEL_43;
      }

      v6 = *(v39 + 8 * v4);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v44 = v4 + 1;
    v53 = MEMORY[0x1E69E7CD0];
    v8 = [v6 parameters];
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
    v9 = sub_1CA94C658();

    if (v9 >> 62)
    {
      v10 = sub_1CA94D328();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v3;
    v43 = v4;
    if (v10)
    {
      v11 = 0;
      v47 = v10;
      v48 = v9 & 0xC000000000000001;
      v45 = v9 & 0xFFFFFFFFFFFFFF8;
      v46 = v9;
      while (1)
      {
        if (v48)
        {
          v12 = MEMORY[0x1CCAA22D0](v11, v9);
        }

        else
        {
          if (v11 >= *(v45 + 16))
          {
            goto LABEL_41;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        if (__OFADD__(v11, 1))
        {
          break;
        }

        v51 = v11 + 1;
        v13 = v12;
        v14 = [v12 v5[126]];
        v15 = sub_1CA94C3A8();
        v17 = v16;

        v18 = sub_1CA635F9C(v15, v17, v7);

        if (*(v18 + 16))
        {
          v19 = sub_1CA94C218();
          sub_1CA342AF0(v19);
          v49 = v13;
          v20 = [v13 v5[126]];
          sub_1CA94C3A8();

          sub_1CA293254(v50);
          swift_isUniquelyReferenced_nonNull_native();
          v52 = v2;
          v21 = v7;
          v22 = sub_1CA320E94();
          if (__OFADD__(*(v2 + 16), (v23 & 1) == 0))
          {
            goto LABEL_40;
          }

          v24 = v22;
          v25 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447928, &qword_1CA9903D8);
          v26 = sub_1CA94D588();
          v2 = v52;
          if (v26)
          {
            v27 = sub_1CA320E94();
            if ((v25 & 1) != (v28 & 1))
            {
              goto LABEL_44;
            }

            v24 = v27;
          }

          if ((v25 & 1) == 0)
          {
            sub_1CA6366C8(&v52);
            sub_1CA3233C4(v24, v21, v52, v2);
          }

          v29 = *(v2 + 56);
          v30 = *(v29 + 8 * v24);
          swift_isUniquelyReferenced_nonNull_native();
          v52 = *(v29 + 8 * v24);
          sub_1CA322E28();
          *(v29 + 8 * v24) = v52;

          v50 = sub_1CA6366C8;
          v5 = &selRef_isInputParameter;
          v7 = v21;
          v9 = v46;
        }

        else
        {
        }

        ++v11;
        if (v51 == v47)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      break;
    }

LABEL_26:
    v3 = v50;

    if (v43)
    {
      v31 = v53;
      v32 = v54;
LABEL_29:
      if (!*(v31 + 16))
      {
        goto LABEL_33;
      }

      if (!*(v32 + 16))
      {
        goto LABEL_33;
      }

      sub_1CA2E4808();
      if ((v34 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    v33 = [v7 containsVariableOfType_];
    v31 = v53;
    v32 = v54;
    if ((v33 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    sub_1CA369200(&v52, v7);
LABEL_33:
    v35 = sub_1CA6154B0(v31, v32);

    v54 = v35;
    if ([v7 isEligibleForOutputVariable])
    {
      sub_1CA369200(&v52, v7);
    }

    v4 = v44;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA6366C8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447930, &unk_1CA9903E0);
  result = sub_1CA94C1E8();
  *a1 = result;
  return result;
}

void *sub_1CA636720()
{
  MEMORY[0x1CCAA4CD0](v0 + 2);
  v1 = v0[3];

  v2 = v0[5];
  sub_1CA636794(v0[4]);
  return v0;
}

uint64_t sub_1CA636750()
{
  sub_1CA636720();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1CA636794(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CA6367D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA94ADC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v34 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v41 = v5 + 32;
  v43 = a2 + 56;
  v44 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v34 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (2)
    {
      v22 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v42 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v42 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v45, v14, v4);
      v27 = *(a2 + 40);
      sub_1CA636E18(&qword_1EC441D00);
      v28 = sub_1CA94C288();
      v29 = a2;
      v30 = ~(-1 << *(a2 + 32));
      do
      {
        v31 = v28 & v30;
        if (((*(v43 + (((v28 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v30)) & 1) == 0)
        {
          (*v21)(v45, v4);
          return 0;
        }

        v26(v9, *(v29 + 48) + v31 * v42, v4);
        sub_1CA636E18(&qword_1EC443AB0);
        v32 = sub_1CA94C358();
        v33 = *v21;
        (*v21)(v9, v4);
        v28 = v31 + 1;
      }

      while ((v32 & 1) == 0);
      result = (v33)(v45, v4);
      a2 = v29;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v40;
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v40 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA636B30(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_1CA94D918();
      sub_1CA94C218();
      sub_1CA94C458();
      v16 = sub_1CA94D968();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = sub_1CA94D7F8();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA636CD8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
LABEL_7:
  if (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = *(*(v3 + 48) + 8 * (v9 | (v4 << 6)));
    v13 = *(a2 + 40);
    result = sub_1CA94D908();
    v14 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v15 = result & v14;
      if (((*(a2 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
      {
        return 0;
      }

      result = v15 + 1;
      if (*(*(a2 + 48) + 8 * v15) == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA636E18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CA94ADC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA636E5C(uint64_t result)
{
  if (result)
  {
    sub_1CA94C218();

    return sub_1CA94C218();
  }

  return result;
}

id sub_1CA636ED0()
{
  v70 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ELL;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x80000001CA9D8030;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v75 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v76 = v12;
  v13 = &v67 - v75;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v72 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v73 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v67 - v73;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v71 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v69 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v67 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v68 = &v67;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v67 - v75;
  sub_1CA948D98();
  v33 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v67 - v73;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v67, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v71;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v69;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"LocallyProcessesData";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v38;
  *(inited + 232) = @"Name";
  v39 = @"LocallyProcessesData";
  v40 = @"Name";
  v41 = sub_1CA94C438();
  v43 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v69 = &v67;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v67 - v75;
  sub_1CA948D98();
  v48 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v67 - v73;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 264) = v71;
  *(inited + 272) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA9813C0;
  *(v51 + 32) = 0x656C7069746C754DLL;
  *(v51 + 40) = 0xE800000000000000;
  *(v51 + 48) = 1;
  *(v51 + 72) = MEMORY[0x1E69E6370];
  *(v51 + 80) = 0x614E74757074754FLL;
  *(v51 + 88) = 0xEA0000000000656DLL;
  v52 = @"Output";
  v53 = sub_1CA94C438();
  v68 = v54;
  v55 = sub_1CA94C438();
  v57 = v56;
  v69 = &v67;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v67 - v75;
  sub_1CA948D98();
  v59 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v67 - v73;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 96) = sub_1CA2F9F14(v53, v68, v55, v57, 0, 0, v58, v60);
  *(v51 + 120) = v71;
  *(v51 + 128) = 0x7365707954;
  *(v51 + 136) = 0xE500000000000000;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 168) = v62;
  *(v51 + 144) = &unk_1F4A0A010;
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v63;
  *(inited + 304) = v64;
  *(inited + 312) = @"RequiredResources";
  *(inited + 344) = v62;
  *(inited + 320) = &unk_1F4A0A040;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  v65 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA637798()
{
  v31 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Name";
  v6 = @"Name";
  v7 = sub_1CA94C438();
  v30 = v8;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v7, v30, v9, v11, 0, 0, v15, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Output";
  v24 = @"Output";
  v25 = MEMORY[0x1E69E6158];
  *(inited + 160) = sub_1CA94C1E8();
  *(inited + 184) = v5;
  *(inited + 192) = @"ResidentCompatible";
  *(inited + 224) = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v26 = @"ResidentCompatible";
  v27 = sub_1CA94C368();
  *(inited + 264) = v25;
  *(inited + 232) = v27;
  *(inited + 240) = 0xD000000000000019;
  *(inited + 248) = 0x80000001CA9D8160;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id ActionWillTakeSessionKitAssertionTestingEvent.__allocating_init(action:sessionConfiguration:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___WFActionWillTakeSessionKitAssertionTestingEvent_sessionConfiguration] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_initWithAction_, a1);

  return v6;
}

id ActionWillTakeSessionKitAssertionTestingEvent.init(action:sessionConfiguration:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___WFActionWillTakeSessionKitAssertionTestingEvent_sessionConfiguration] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithAction_, a1);

  return v6;
}

id ActionWillTakeSessionKitAssertionTestingEvent.__allocating_init(action:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithAction_];

  return v3;
}

id ActionWillTakeSessionKitAssertionTestingEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA637DCC()
{
  v0 = sub_1CA949D18();
  v331 = *(v0 - 8);
  v332 = v0;
  v1 = *(v331 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v330 = &v318 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x4450656B614D4657;
  *(inited + 48) = 0xEF6E6F6974634146;
  *(inited + 64) = v4;
  *(inited + 72) = @"ActionKeywords";
  v5 = @"ActionClass";
  v6 = @"ActionKeywords";
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v357 = v15;
  v354 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v318 - v354;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v355 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v356 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v353 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v318 - v353;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v16, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v352 = v23;
  *(inited + 80) = v22;
  *(inited + 104) = v23;
  *(inited + 112) = @"Description";
  v351 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v345 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v350 = &v318;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v318 - v354;
  sub_1CA948D98();
  v34 = [v355 bundleURL];
  v346 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v318 - v353;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v352;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v351;
  v40 = sub_1CA6B3784();
  v41 = v346;
  *(v346 + 15) = v40;
  *(v41 + 18) = v39;
  *(v41 + 19) = @"IconColor";
  *(v41 + 20) = 1953392980;
  *(v41 + 21) = 0xE400000000000000;
  v42 = MEMORY[0x1E69E6158];
  *(v41 + 23) = MEMORY[0x1E69E6158];
  *(v41 + 24) = @"IconSymbol";
  strcpy(v41 + 200, "doc.text.fill");
  *(v41 + 107) = -4864;
  *(v41 + 28) = v42;
  *(v41 + 29) = @"IconSymbolColor";
  *(v41 + 30) = 1702194242;
  *(v41 + 31) = 0xE400000000000000;
  *(v41 + 33) = v42;
  *(v41 + 34) = @"Input";
  v43 = v42;
  v44 = v41;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v45 = swift_initStackObject();
  v349 = xmmword_1CA981350;
  *(v45 + 16) = xmmword_1CA981350;
  *(v45 + 32) = 0x656C7069746C754DLL;
  *(v45 + 40) = 0xE800000000000000;
  v46 = MEMORY[0x1E69E6370];
  *(v45 + 48) = 1;
  *(v45 + 72) = v46;
  strcpy((v45 + 80), "ParameterKey");
  *(v45 + 93) = 0;
  *(v45 + 94) = -5120;
  *(v45 + 96) = 0x7475706E494657;
  *(v45 + 104) = 0xE700000000000000;
  *(v45 + 120) = v43;
  *(v45 + 128) = 0x6465726975716552;
  *(v45 + 136) = 0xE800000000000000;
  *(v45 + 144) = 1;
  *(v45 + 168) = v46;
  *(v45 + 176) = 0x7365707954;
  *(v45 + 184) = 0xE500000000000000;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v45 + 216) = v344;
  *(v45 + 192) = &unk_1F4A0A110;
  v47 = @"IconColor";
  v48 = @"IconSymbol";
  v49 = @"IconSymbolColor";
  v50 = @"Input";
  v51 = sub_1CA94C1E8();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v351 = v52;
  *(v44 + 35) = v51;
  *(v44 + 38) = v52;
  *(v44 + 39) = @"Name";
  v53 = @"Name";
  v54 = sub_1CA94C438();
  v56 = v55;
  v57 = sub_1CA94C438();
  v59 = v58;
  v348 = &v318;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v318 - v354;
  sub_1CA948D98();
  v61 = v355;
  v62 = [v355 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v318 - v353;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v65 = sub_1CA2F9F14(v54, v56, v57, v59, 0, 0, v60, v63);
  v66 = v346;
  *(v346 + 40) = v65;
  v67 = v352;
  *(v66 + 43) = v352;
  *(v66 + 44) = @"Output";
  v68 = swift_allocObject();
  *(v68 + 16) = v349;
  *(v68 + 32) = 0x75736F6C63736944;
  *(v68 + 40) = 0xEF6C6576654C6572;
  *(v68 + 48) = 0x63696C627550;
  *(v68 + 56) = 0xE600000000000000;
  *(v68 + 72) = MEMORY[0x1E69E6158];
  *(v68 + 80) = 0x656C7069746C754DLL;
  *(v68 + 88) = 0xE800000000000000;
  *(v68 + 96) = 0;
  *(v68 + 120) = MEMORY[0x1E69E6370];
  *(v68 + 128) = 0x614E74757074754FLL;
  *(v68 + 136) = 0xEA0000000000656DLL;
  v69 = @"Output";
  v70 = sub_1CA94C438();
  v348 = v71;
  v72 = sub_1CA94C438();
  v74 = v73;
  v350 = &v318;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v318 - v354;
  sub_1CA948D98();
  v76 = [v61 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v318 - v353;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 144) = sub_1CA2F9F14(v70, v348, v72, v74, 0, 0, v75, v77);
  *(v68 + 168) = v67;
  *(v68 + 176) = 0x7365707954;
  *(v68 + 216) = v344;
  *(v68 + 184) = 0xE500000000000000;
  *(v68 + 192) = &unk_1F4A0A140;
  v79 = MEMORY[0x1E69E6158];
  v80 = sub_1CA94C1E8();
  v81 = v346;
  *(v346 + 45) = v80;
  *(v81 + 48) = v351;
  *(v81 + 49) = @"Parameters";
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v351 = swift_allocObject();
  *(v351 + 16) = xmmword_1CA98B2D0;
  v350 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v82 = swift_initStackObject();
  *(v82 + 16) = v349;
  v325 = 0xD000000000000011;
  *(v82 + 32) = @"Class";
  *(v82 + 40) = 0xD000000000000011;
  *(v82 + 48) = 0x80000001CA99E620;
  *(v82 + 64) = v79;
  *(v82 + 72) = @"DefaultValue";
  *(v82 + 80) = 0;
  *(v82 + 104) = MEMORY[0x1E69E6370];
  *(v82 + 112) = @"Key";
  v340 = 0xD000000000000012;
  *(v82 + 120) = 0xD000000000000012;
  *(v82 + 128) = 0x80000001CA9D8320;
  *(v82 + 144) = v79;
  *(v82 + 152) = @"Label";
  v83 = @"Class";
  v84 = @"DefaultValue";
  v85 = @"Key";
  v86 = @"Label";
  v87 = v83;
  v88 = v84;
  v89 = v85;
  v90 = v86;
  v337 = v87;
  v342 = v88;
  v338 = v89;
  v339 = v90;
  v91 = @"Parameters";
  v92 = sub_1CA94C438();
  v94 = v93;
  v95 = sub_1CA94C438();
  v97 = v96;
  *&v349 = &v318;
  MEMORY[0x1EEE9AC00](v95);
  v98 = &v318 - v354;
  sub_1CA948D98();
  v99 = [v355 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v318 - v353;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v92, v94, v95, v97, 0, 0, v98, v100);
  *(v82 + 184) = v352;
  *(v82 + 160) = v102;
  _s3__C3KeyVMa_0(0);
  *&v349 = v103;
  v348 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v351 + 32) = sub_1CA2F864C();
  v104 = swift_allocObject();
  v326 = xmmword_1CA981370;
  *(v104 + 16) = xmmword_1CA981370;
  v328 = 0x80000001CA99C4A0;
  v105 = v337;
  *(v104 + 32) = v337;
  *(v104 + 40) = 0xD000000000000016;
  *(v104 + 48) = 0x80000001CA99C4A0;
  v106 = MEMORY[0x1E69E6158];
  v107 = v342;
  *(v104 + 64) = MEMORY[0x1E69E6158];
  *(v104 + 72) = v107;
  *(v104 + 80) = 0x65676150206C6C41;
  *(v104 + 88) = 0xE900000000000073;
  *(v104 + 104) = v106;
  *(v104 + 112) = @"Items";
  *&v341 = swift_allocObject();
  *(v341 + 16) = xmmword_1CA981470;
  v108 = @"Items";
  v337 = v105;
  v329 = v108;
  v109 = sub_1CA94C438();
  v334 = v110;
  v335 = v109;
  v111 = sub_1CA94C438();
  v327 = v112;
  v336 = &v318;
  MEMORY[0x1EEE9AC00](v111);
  v113 = v354;
  sub_1CA948D98();
  v114 = [v355 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  v115 = v353;
  sub_1CA948B68();

  v116 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v117 = sub_1CA2F9F14(v335, v334, v111, v327, 0, 0, &v318 - v113, &v318 - v115);
  v118 = v341;
  *(v341 + 32) = v117;
  v119 = sub_1CA94C438();
  v334 = v120;
  v335 = v119;
  v121 = sub_1CA94C438();
  v327 = v122;
  v336 = &v318;
  MEMORY[0x1EEE9AC00](v121);
  v123 = &v318 - v113;
  sub_1CA948D98();
  v124 = v355;
  v125 = [v355 bundleURL];
  v324 = &v318;
  MEMORY[0x1EEE9AC00](v125);
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v118 + 40) = sub_1CA2F9F14(v335, v334, v121, v327, 0, 0, v123, &v318 - v115);
  v127 = sub_1CA94C438();
  v334 = v128;
  v335 = v127;
  v129 = sub_1CA94C438();
  v327 = v130;
  v336 = &v318;
  MEMORY[0x1EEE9AC00](v129);
  v131 = v354;
  sub_1CA948D98();
  v132 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v132);
  v133 = v353;
  sub_1CA948B68();

  v134 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v135 = sub_1CA2F9F14(v335, v334, v129, v327, 0, 0, &v318 - v131, &v318 - v133);
  v136 = v341;
  *(v341 + 48) = v135;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v327 = v137;
  *(v104 + 120) = v136;
  v138 = v338;
  v139 = v339;
  *(v104 + 144) = v137;
  *(v104 + 152) = v138;
  *(v104 + 160) = v340;
  *(v104 + 168) = 0x80000001CA99A7C0;
  *(v104 + 184) = MEMORY[0x1E69E6158];
  *(v104 + 192) = v139;
  v338 = v138;
  v339 = v139;
  v140 = sub_1CA94C438();
  v340 = v141;
  v142 = sub_1CA94C438();
  v144 = v143;
  *&v341 = &v318;
  MEMORY[0x1EEE9AC00](v142);
  sub_1CA948D98();
  v145 = [v355 bundleURL];
  MEMORY[0x1EEE9AC00](v145);
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v147 = sub_1CA2F9F14(v140, v340, v142, v144, 0, 0, &v318 - v131, &v318 - v133);
  *(v104 + 224) = v352;
  *(v104 + 200) = v147;
  sub_1CA94C1E8();
  *(v351 + 40) = sub_1CA2F864C();
  v148 = swift_allocObject();
  v341 = xmmword_1CA981400;
  *(v148 + 16) = xmmword_1CA981400;
  *(v148 + 32) = @"AllowsDecimalNumbers";
  *(v148 + 40) = 1;
  v149 = v337;
  v150 = v338;
  *(v148 + 64) = MEMORY[0x1E69E6370];
  *(v148 + 72) = v149;
  v340 = 0x80000001CA99C180;
  *(v148 + 80) = 0xD000000000000016;
  *(v148 + 88) = 0x80000001CA99C180;
  v151 = MEMORY[0x1E69E6158];
  *(v148 + 104) = MEMORY[0x1E69E6158];
  *(v148 + 112) = v150;
  *(v148 + 120) = 0x6E69534644504657;
  *(v148 + 128) = 0xEF65676150656C67;
  v152 = v339;
  *(v148 + 144) = v151;
  *(v148 + 152) = v152;
  v153 = @"AllowsDecimalNumbers";
  v324 = v149;
  v323 = v150;
  v334 = v152;
  v339 = v153;
  v154 = sub_1CA94C438();
  v336 = v155;
  v337 = v154;
  v156 = sub_1CA94C438();
  v158 = v157;
  v338 = &v318;
  MEMORY[0x1EEE9AC00](v156);
  v159 = v354;
  sub_1CA948D98();
  v160 = [v355 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  v161 = &v318 - v353;
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v148 + 160) = sub_1CA2F9F14(v337, v336, v156, v158, 0, 0, &v318 - v159, v161);
  v163 = v352;
  *(v148 + 184) = v352;
  *(v148 + 192) = @"Placeholder";
  v322 = @"Placeholder";
  v164 = sub_1CA94C438();
  v336 = v165;
  v337 = v164;
  v166 = sub_1CA94C438();
  v168 = v167;
  v338 = &v318;
  MEMORY[0x1EEE9AC00](v166);
  sub_1CA948D98();
  v169 = [v355 bundleURL];
  MEMORY[0x1EEE9AC00](v169);
  v170 = &v318 - v353;
  sub_1CA948B68();

  v171 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v148 + 200) = sub_1CA2F9F14(v337, v336, v166, v168, 0, 0, &v318 - v159, v170);
  *(v148 + 224) = v163;
  *(v148 + 232) = @"RequiredResources";
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v172 = swift_allocObject();
  *(v172 + 16) = v345;
  v337 = @"RequiredResources";
  v173 = MEMORY[0x1E69E6158];
  *(v172 + 32) = sub_1CA94C1E8();
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v336 = v174;
  *(v148 + 240) = v172;
  *(v148 + 264) = v174;
  *(v148 + 272) = @"TextAlignment";
  *(v148 + 304) = v173;
  *(v148 + 280) = 0x7468676952;
  *(v148 + 288) = 0xE500000000000000;
  v335 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v351 + 48) = sub_1CA2F864C();
  v175 = swift_allocObject();
  *(v175 + 16) = v341;
  *(v175 + 32) = v339;
  *(v175 + 40) = 1;
  v177 = v323;
  v176 = v324;
  *(v175 + 64) = MEMORY[0x1E69E6370];
  *(v175 + 72) = v176;
  v178 = v340;
  *(v175 + 80) = 0xD000000000000016;
  *(v175 + 88) = v178;
  *(v175 + 104) = v173;
  *(v175 + 112) = v177;
  *(v175 + 120) = 0xD000000000000013;
  *(v175 + 128) = 0x80000001CA9D8480;
  v179 = v334;
  *(v175 + 144) = v173;
  *(v175 + 152) = v179;
  v321 = v176;
  v323 = v177;
  v324 = v179;
  v180 = sub_1CA94C438();
  v319 = v181;
  v320 = v180;
  v182 = sub_1CA94C438();
  v318 = v183;
  v334 = &v318;
  MEMORY[0x1EEE9AC00](v182);
  v184 = &v318 - v354;
  sub_1CA948D98();
  v185 = v355;
  v186 = [v355 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v318 - v353;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v175 + 160) = sub_1CA2F9F14(v320, v319, v182, v318, 0, 0, v184, v187);
  v189 = v352;
  v190 = v322;
  *(v175 + 184) = v352;
  *(v175 + 192) = v190;
  v334 = v190;
  v191 = sub_1CA94C438();
  v319 = v192;
  v320 = v191;
  v318 = sub_1CA94C438();
  v194 = v193;
  v322 = &v318;
  MEMORY[0x1EEE9AC00](v318);
  v195 = &v318 - v354;
  sub_1CA948D98();
  v196 = [v185 bundleURL];
  MEMORY[0x1EEE9AC00](v196);
  v197 = v353;
  sub_1CA948B68();

  v198 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v175 + 200) = sub_1CA2F9F14(v320, v319, v318, v194, 0, 0, v195, &v318 - v197);
  v199 = v337;
  *(v175 + 224) = v189;
  *(v175 + 232) = v199;
  v200 = swift_allocObject();
  *(v200 + 16) = v345;
  v201 = MEMORY[0x1E69E6158];
  *(v200 + 32) = sub_1CA94C1E8();
  *(v175 + 240) = v200;
  v202 = v335;
  *(v175 + 264) = v336;
  *(v175 + 272) = v202;
  *(v175 + 304) = v201;
  *(v175 + 280) = 0x7468676952;
  *(v175 + 288) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v351 + 56) = sub_1CA2F864C();
  v203 = swift_allocObject();
  *(v203 + 16) = v341;
  *(v203 + 32) = v339;
  *(v203 + 40) = 1;
  v204 = v321;
  *(v203 + 64) = MEMORY[0x1E69E6370];
  *(v203 + 72) = v204;
  *(v203 + 80) = 0xD000000000000016;
  *(v203 + 88) = v340;
  v205 = v323;
  *(v203 + 104) = v201;
  *(v203 + 112) = v205;
  *(v203 + 120) = v325;
  *(v203 + 128) = 0x80000001CA9D84F0;
  *(v203 + 144) = v201;
  v206 = v324;
  *(v203 + 152) = v324;
  v339 = v204;
  v340 = v205;
  *&v341 = v206;
  v207 = sub_1CA94C438();
  v323 = v208;
  v324 = v207;
  v209 = sub_1CA94C438();
  v322 = v210;
  v325 = &v318;
  MEMORY[0x1EEE9AC00](v209);
  v211 = v354;
  sub_1CA948D98();
  v212 = [v355 bundleURL];
  MEMORY[0x1EEE9AC00](v212);
  sub_1CA948B68();

  v213 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v203 + 160) = sub_1CA2F9F14(v324, v323, v209, v322, 0, 0, &v318 - v211, &v318 - v197);
  v214 = v352;
  v215 = v334;
  *(v203 + 184) = v352;
  *(v203 + 192) = v215;
  v216 = sub_1CA94C438();
  v323 = v217;
  v324 = v216;
  v218 = sub_1CA94C438();
  v322 = v219;
  v325 = &v318;
  MEMORY[0x1EEE9AC00](v218);
  sub_1CA948D98();
  v220 = [v355 bundleURL];
  MEMORY[0x1EEE9AC00](v220);
  sub_1CA948B68();

  v221 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v203 + 200) = sub_1CA2F9F14(v324, v323, v218, v322, 0, 0, &v318 - v211, &v318 - v197);
  v222 = v337;
  *(v203 + 224) = v214;
  *(v203 + 232) = v222;
  v223 = swift_allocObject();
  *(v223 + 16) = v345;
  v224 = MEMORY[0x1E69E6158];
  *(v223 + 32) = sub_1CA94C1E8();
  *(v203 + 240) = v223;
  v225 = v335;
  *(v203 + 264) = v336;
  *(v203 + 272) = v225;
  *(v203 + 304) = v224;
  *(v203 + 280) = 0x7468676952;
  *(v203 + 288) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v351 + 64) = sub_1CA2F864C();
  v226 = swift_allocObject();
  *(v226 + 16) = v326;
  *(v226 + 32) = v339;
  *(v226 + 40) = 0xD000000000000019;
  *(v226 + 48) = 0x80000001CA99B030;
  v227 = v340;
  *(v226 + 64) = v224;
  *(v226 + 72) = v227;
  *(v226 + 80) = 0x7475706E494657;
  *(v226 + 88) = 0xE700000000000000;
  v228 = v341;
  *(v226 + 104) = v224;
  *(v226 + 112) = v228;
  v229 = sub_1CA94C438();
  v336 = v230;
  v337 = v229;
  v231 = sub_1CA94C438();
  v335 = v232;
  v338 = &v318;
  MEMORY[0x1EEE9AC00](v231);
  v233 = v354;
  sub_1CA948D98();
  v234 = v355;
  v235 = [v355 bundleURL];
  *&v326 = &v318;
  MEMORY[0x1EEE9AC00](v235);
  v236 = v353;
  sub_1CA948B68();

  v237 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v226 + 120) = sub_1CA2F9F14(v337, v336, v231, v335, 0, 0, &v318 - v233, &v318 - v236);
  v238 = v352;
  v239 = v334;
  *(v226 + 144) = v352;
  *(v226 + 152) = v239;
  v240 = sub_1CA94C438();
  v336 = v241;
  v337 = v240;
  v242 = sub_1CA94C438();
  v335 = v243;
  v338 = &v318;
  MEMORY[0x1EEE9AC00](v242);
  sub_1CA948D98();
  v244 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v244);
  sub_1CA948B68();

  v245 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v226 + 160) = sub_1CA2F9F14(v337, v336, v242, v335, 0, 0, &v318 - v233, &v318 - v236);
  *(v226 + 184) = v238;
  *(v226 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v246 = swift_allocObject();
  *(v246 + 16) = v345;
  v247 = @"PreferredTypes";
  v248 = v330;
  sub_1CA949C98();
  v249 = sub_1CA949C68();
  v251 = v250;
  (*(v331 + 8))(v248, v332);
  *(v246 + 32) = v249;
  *(v246 + 40) = v251;
  *(v226 + 224) = v344;
  *(v226 + 200) = v246;
  sub_1CA94C1E8();
  *(v351 + 72) = sub_1CA2F864C();
  v252 = swift_allocObject();
  *(v252 + 16) = xmmword_1CA981380;
  *(v252 + 32) = v339;
  *(v252 + 40) = 0xD000000000000016;
  *(v252 + 48) = v328;
  v253 = MEMORY[0x1E69E6158];
  v254 = v342;
  *(v252 + 64) = MEMORY[0x1E69E6158];
  *(v252 + 72) = v254;
  *(v252 + 80) = 0x646E65707041;
  *(v252 + 88) = 0xE600000000000000;
  *(v252 + 104) = v253;
  *(v252 + 112) = @"Description";
  v255 = @"Description";
  v256 = sub_1CA94C438();
  v344 = v257;
  *&v345 = v256;
  v258 = sub_1CA94C438();
  v260 = v259;
  v347 = &v318;
  MEMORY[0x1EEE9AC00](v258);
  v261 = v354;
  sub_1CA948D98();
  v262 = [v355 bundleURL];
  MEMORY[0x1EEE9AC00](v262);
  v263 = &v318 - v353;
  sub_1CA948B68();

  v264 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v252 + 120) = sub_1CA2F9F14(v345, v344, v258, v260, 0, 0, &v318 - v261, v263);
  v265 = v329;
  *(v252 + 144) = v352;
  *(v252 + 152) = v265;
  v347 = swift_allocObject();
  *(v347 + 1) = xmmword_1CA981360;
  v266 = sub_1CA94C438();
  v343 = v267;
  v344 = v266;
  v268 = sub_1CA94C438();
  v342 = v269;
  *&v345 = &v318;
  MEMORY[0x1EEE9AC00](v268);
  v270 = &v318 - v261;
  sub_1CA948D98();
  v271 = v355;
  v272 = [v355 bundleURL];
  MEMORY[0x1EEE9AC00](v272);
  v273 = v353;
  sub_1CA948B68();

  v274 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v275 = sub_1CA2F9F14(v344, v343, v268, v342, 0, 0, v270, &v318 - v273);
  v347[4] = v275;
  v276 = sub_1CA94C438();
  v343 = v277;
  v344 = v276;
  v278 = sub_1CA94C438();
  v342 = v279;
  *&v345 = &v318;
  MEMORY[0x1EEE9AC00](v278);
  v280 = &v318 - v354;
  sub_1CA948D98();
  v281 = [v271 bundleURL];
  MEMORY[0x1EEE9AC00](v281);
  v282 = v273;
  sub_1CA948B68();

  v283 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v284 = sub_1CA2F9F14(v344, v343, v278, v342, 0, 0, v280, &v318 - v273);
  v285 = v347;
  v347[5] = v284;
  *(v252 + 160) = v285;
  v286 = v340;
  *(v252 + 184) = v327;
  *(v252 + 192) = v286;
  *(v252 + 200) = 0xD00000000000001ALL;
  *(v252 + 208) = 0x80000001CA9D8810;
  v287 = v341;
  *(v252 + 224) = MEMORY[0x1E69E6158];
  *(v252 + 232) = v287;
  v288 = sub_1CA94C438();
  *&v345 = v289;
  v290 = sub_1CA94C438();
  v292 = v291;
  v347 = &v318;
  MEMORY[0x1EEE9AC00](v290);
  v293 = &v318 - v354;
  sub_1CA948D98();
  v294 = [v355 bundleURL];
  MEMORY[0x1EEE9AC00](v294);
  sub_1CA948B68();

  v295 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v296 = sub_1CA2F9F14(v288, v345, v290, v292, 0, 0, v293, &v318 - v282);
  *(v252 + 264) = v352;
  *(v252 + 240) = v296;
  sub_1CA94C1E8();
  v297 = sub_1CA2F864C();
  v298 = v351;
  *(v351 + 80) = v297;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v300 = v346;
  *(v346 + 50) = v298;
  *(v300 + 53) = v299;
  *(v300 + 54) = @"ParameterSummary";
  v301 = @"ParameterSummary";
  v302 = sub_1CA94C438();
  v304 = v303;
  v305 = sub_1CA94C438();
  v307 = v306;
  MEMORY[0x1EEE9AC00](v305);
  v308 = &v318 - v354;
  sub_1CA948D98();
  v309 = [v355 bundleURL];
  MEMORY[0x1EEE9AC00](v309);
  v310 = &v318 - v353;
  sub_1CA948B68();

  v311 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v312 = sub_1CA2F9F14(v302, v304, v305, v307, 0, 0, v308, v310);
  v313 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v314 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v315 = v346;
  *(v346 + 55) = v313;
  *(v315 + 58) = v314;
  *(v315 + 59) = @"ResidentCompatible";
  *(v315 + 63) = MEMORY[0x1E69E6370];
  v315[480] = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v316 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA63A4A0()
{
  v262 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9D88D0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v284 = v12;
  v285 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v254 - v285;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v283 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v281 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v282 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v254 - v282;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v280 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v261 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v278 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionResult";
  v25 = @"Description";
  v26 = @"DescriptionResult";
  v27 = sub_1CA94C438();
  v275 = v28;
  v276 = v27;
  v29 = sub_1CA94C438();
  v31 = v30;
  v277 = v254;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v254 - v285;
  sub_1CA948D98();
  v33 = v283;
  v34 = [v283 bundleURL];
  v279 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v282;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v276, v275, v29, v31, 0, 0, v32, v254 - v36);
  v38 = v280;
  *(v24 + 64) = v280;
  *(v24 + 72) = @"DescriptionSummary";
  v39 = @"DescriptionSummary";
  v40 = sub_1CA94C438();
  v275 = v41;
  v276 = v40;
  v42 = sub_1CA94C438();
  v44 = v43;
  v277 = v254;
  MEMORY[0x1EEE9AC00](v42);
  v45 = v254 - v285;
  sub_1CA948D98();
  v46 = [v33 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  sub_1CA948B68();

  v47 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v48 = sub_1CA2F9F14(v276, v275, v42, v44, 0, 0, v45, v254 - v36);
  *(v24 + 104) = v38;
  *(v24 + 80) = v48;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v49 = v278;
  v50 = sub_1CA6B3784();
  v51 = v279;
  v279[20] = v50;
  v51[23] = v49;
  v51[24] = @"DisabledOnPlatforms";
  v52 = v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v275 = v53;
  v52[25] = &unk_1F4A0A330;
  v52[28] = v53;
  v52[29] = @"InputPassthrough";
  v54 = MEMORY[0x1E69E6370];
  *(v52 + 240) = 0;
  v52[33] = v54;
  v52[34] = @"Name";
  v55 = @"DisabledOnPlatforms";
  v56 = @"InputPassthrough";
  v57 = @"Name";
  v277 = sub_1CA94C438();
  v59 = v58;
  v60 = sub_1CA94C438();
  v62 = v61;
  v278 = v254;
  MEMORY[0x1EEE9AC00](v60);
  v63 = v285;
  sub_1CA948D98();
  v64 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v254 - v282;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v277, v59, v60, v62, 0, 0, v254 - v63, v65);
  v68 = v279;
  v279[35] = v67;
  v69 = v280;
  v68[38] = v280;
  v68[39] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_1CA9813C0;
  *(v70 + 32) = 0x656C7069746C754DLL;
  *(v70 + 40) = 0xE800000000000000;
  *(v70 + 48) = 0;
  *(v70 + 72) = MEMORY[0x1E69E6370];
  *(v70 + 80) = 0x614E74757074754FLL;
  *(v70 + 88) = 0xEA0000000000656DLL;
  v71 = @"Output";
  v72 = sub_1CA94C438();
  v276 = v73;
  v277 = v72;
  v74 = sub_1CA94C438();
  v76 = v75;
  v278 = v254;
  MEMORY[0x1EEE9AC00](v74);
  v77 = v254 - v63;
  sub_1CA948D98();
  v78 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = v254 - v282;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 96) = sub_1CA2F9F14(v277, v276, v74, v76, 0, 0, v77, v79);
  *(v70 + 120) = v69;
  *(v70 + 128) = 0x7365707954;
  *(v70 + 168) = v275;
  *(v70 + 136) = 0xE500000000000000;
  *(v70 + 144) = &unk_1F4A0A360;
  v81 = MEMORY[0x1E69E6158];
  v82 = sub_1CA94C1E8();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v84 = v279;
  v279[40] = v82;
  v84[43] = v83;
  v84[44] = @"Parameters";
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v278 = swift_allocObject();
  v274 = xmmword_1CA981470;
  *(v278 + 1) = xmmword_1CA981470;
  v277 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1CA981380;
  v272 = 0x80000001CA99C4A0;
  *(v85 + 32) = @"Class";
  *(v85 + 40) = 0xD000000000000016;
  *(v85 + 48) = 0x80000001CA99C4A0;
  *(v85 + 64) = v81;
  *(v85 + 72) = @"DefaultValue";
  *(v85 + 80) = 1801675074;
  *(v85 + 88) = 0xE400000000000000;
  *(v85 + 104) = v81;
  *(v85 + 112) = @"Items";
  v267 = swift_allocObject();
  v260 = xmmword_1CA981360;
  *&v267->data = xmmword_1CA981360;
  v86 = @"Class";
  v87 = @"DefaultValue";
  v88 = @"Items";
  v89 = v86;
  v90 = v87;
  v91 = v88;
  v270 = v89;
  v269 = v90;
  v271 = v91;
  v92 = @"Parameters";
  v93 = sub_1CA94C438();
  v265 = v94;
  v266 = v93;
  v95 = sub_1CA94C438();
  v264 = v96;
  v268 = v254;
  MEMORY[0x1EEE9AC00](v95);
  v97 = v254 - v285;
  sub_1CA948D98();
  v98 = v283;
  v99 = [v283 bundleURL];
  v263 = v254;
  MEMORY[0x1EEE9AC00](v99);
  v100 = v282;
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v266, v265, v95, v264, 0, 0, v97, v254 - v100);
  v103 = v267;
  v267[1].isa = v102;
  v104 = sub_1CA94C438();
  v265 = v105;
  v266 = v104;
  v264 = sub_1CA94C438();
  v107 = v106;
  v268 = v254;
  MEMORY[0x1EEE9AC00](v264);
  v108 = v254 - v285;
  sub_1CA948D98();
  v109 = [v98 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103[1].info = sub_1CA2F9F14(v266, v265, v264, v107, 0, 0, v108, v254 - v100);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v268 = v111;
  *(v85 + 120) = v103;
  *(v85 + 144) = v111;
  *(v85 + 152) = @"Key";
  *(v85 + 160) = 0xD000000000000015;
  *(v85 + 168) = 0x80000001CA9D89C0;
  *(v85 + 184) = MEMORY[0x1E69E6158];
  *(v85 + 192) = @"Label";
  v112 = @"Key";
  v113 = @"Label";
  v114 = v112;
  v115 = v113;
  v266 = v114;
  v267 = v115;
  v116 = sub_1CA94C438();
  v118 = v117;
  v119 = sub_1CA94C438();
  v121 = v120;
  v265 = v254;
  MEMORY[0x1EEE9AC00](v119);
  v122 = v254 - v285;
  sub_1CA948D98();
  v123 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = v254 - v282;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v85 + 200) = sub_1CA2F9F14(v116, v118, v119, v121, 0, 0, v122, v124);
  *(v85 + 224) = v280;
  *(v85 + 232) = @"RequiredResources";
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_1CA9813B0;
  v286 = 2;
  v287 = 1;
  v127 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v128 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v286);
  *(v126 + 32) = v129;
  *(v85 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(v85 + 240) = v126;
  _s3__C3KeyVMa_0(0);
  v265 = v130;
  v264 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v278[4] = sub_1CA2F864C();
  v131 = swift_allocObject();
  v259 = xmmword_1CA981370;
  *(v131 + 16) = xmmword_1CA981370;
  *(v131 + 32) = v270;
  *(v131 + 40) = 0xD000000000000016;
  *(v131 + 48) = v272;
  v132 = MEMORY[0x1E69E6158];
  v133 = v269;
  *(v131 + 64) = MEMORY[0x1E69E6158];
  *(v131 + 72) = v133;
  *(v131 + 80) = 1751607624;
  *(v131 + 88) = 0xE400000000000000;
  v134 = v271;
  *(v131 + 104) = v132;
  *(v131 + 112) = v134;
  v263 = swift_allocObject();
  *(v263 + 1) = v274;
  v135 = sub_1CA94C438();
  v256 = v136;
  v257 = v135;
  v137 = sub_1CA94C438();
  v255 = v138;
  v258 = v254;
  MEMORY[0x1EEE9AC00](v137);
  v139 = v254 - v285;
  sub_1CA948D98();
  v140 = v283;
  v141 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  v142 = v254 - v282;
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v144 = sub_1CA2F9F14(v257, v256, v137, v255, 0, 0, v139, v142);
  v145 = v263;
  v263[4] = v144;
  v146 = sub_1CA94C438();
  v256 = v147;
  v257 = v146;
  v148 = sub_1CA94C438();
  v255 = v149;
  v258 = v254;
  MEMORY[0x1EEE9AC00](v148);
  v150 = v285;
  sub_1CA948D98();
  v151 = [v140 bundleURL];
  v254[1] = v254;
  MEMORY[0x1EEE9AC00](v151);
  v152 = v282;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145[5] = sub_1CA2F9F14(v257, v256, v148, v255, 0, 0, v254 - v150, v254 - v152);
  v154 = sub_1CA94C438();
  v256 = v155;
  v257 = v154;
  v156 = sub_1CA94C438();
  v255 = v157;
  v258 = v254;
  MEMORY[0x1EEE9AC00](v156);
  sub_1CA948D98();
  v158 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v158);
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v160 = sub_1CA2F9F14(v257, v256, v156, v255, 0, 0, v254 - v150, v254 - v152);
  v161 = v263;
  v263[6] = v160;
  *(v131 + 120) = v161;
  v162 = v266;
  *(v131 + 144) = v268;
  *(v131 + 152) = v162;
  *(v131 + 160) = 0xD000000000000016;
  *(v131 + 168) = 0x80000001CA9D8A80;
  v163 = v267;
  *(v131 + 184) = MEMORY[0x1E69E6158];
  *(v131 + 192) = v163;
  v258 = sub_1CA94C438();
  v165 = v164;
  v166 = sub_1CA94C438();
  v168 = v167;
  v263 = v254;
  MEMORY[0x1EEE9AC00](v166);
  v169 = v254 - v285;
  sub_1CA948D98();
  v170 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v170);
  v171 = v254 - v282;
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v173 = sub_1CA2F9F14(v258, v165, v166, v168, 0, 0, v169, v171);
  *(v131 + 224) = v280;
  *(v131 + 200) = v173;
  sub_1CA94C1E8();
  v278[5] = sub_1CA2F864C();
  v174 = swift_allocObject();
  *(v174 + 16) = v259;
  *(v174 + 32) = v270;
  *(v174 + 40) = 0xD000000000000016;
  *(v174 + 48) = v272;
  v175 = MEMORY[0x1E69E6158];
  v176 = v269;
  *(v174 + 64) = MEMORY[0x1E69E6158];
  *(v174 + 72) = v176;
  *(v174 + 80) = 0x74616964656D6D49;
  *(v174 + 88) = 0xEB00000000796C65;
  v177 = v271;
  *(v174 + 104) = v175;
  *(v174 + 112) = v177;
  v273 = swift_allocObject();
  *(v273 + 1) = v260;
  v178 = sub_1CA94C438();
  v270 = v179;
  v271 = v178;
  v180 = sub_1CA94C438();
  v269 = v181;
  v272 = v254;
  MEMORY[0x1EEE9AC00](v180);
  v182 = v285;
  sub_1CA948D98();
  v183 = v283;
  v184 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  v185 = v254 - v282;
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v187 = sub_1CA2F9F14(v271, v270, v180, v269, 0, 0, v254 - v182, v185);
  v273[4] = v187;
  v188 = sub_1CA94C438();
  v270 = v189;
  v271 = v188;
  v190 = sub_1CA94C438();
  v269 = v191;
  v272 = v254;
  MEMORY[0x1EEE9AC00](v190);
  sub_1CA948D98();
  v192 = [v183 bundleURL];
  MEMORY[0x1EEE9AC00](v192);
  v193 = v282;
  sub_1CA948B68();

  v194 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v195 = sub_1CA2F9F14(v271, v270, v190, v269, 0, 0, v254 - v182, v254 - v193);
  v196 = v273;
  v273[5] = v195;
  *(v174 + 120) = v196;
  v197 = v266;
  *(v174 + 144) = v268;
  *(v174 + 152) = v197;
  *(v174 + 160) = 0xD000000000000010;
  *(v174 + 168) = 0x80000001CA9D5AD0;
  v198 = v267;
  *(v174 + 184) = MEMORY[0x1E69E6158];
  *(v174 + 192) = v198;
  v199 = sub_1CA94C438();
  v271 = v200;
  v272 = v199;
  v201 = sub_1CA94C438();
  v203 = v202;
  v273 = v254;
  MEMORY[0x1EEE9AC00](v201);
  v204 = v254 - v285;
  sub_1CA948D98();
  v205 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v205);
  sub_1CA948B68();

  v206 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v207 = sub_1CA2F9F14(v272, v271, v201, v203, 0, 0, v204, v254 - v193);
  *(v174 + 224) = v280;
  *(v174 + 200) = v207;
  sub_1CA94C1E8();
  v208 = sub_1CA2F864C();
  v209 = v278;
  v278[6] = v208;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v211 = v279;
  v279[45] = v209;
  v211[48] = v210;
  v211[49] = @"ParameterSummary";
  v278 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v280 = swift_allocObject();
  *(v280 + 16) = v274;
  v212 = @"ParameterSummary";
  v276 = sub_1CA94C438();
  *&v274 = v213;
  v214 = sub_1CA94C438();
  v273 = v215;
  v277 = v254;
  MEMORY[0x1EEE9AC00](v214);
  v216 = v285;
  sub_1CA948D98();
  v217 = v283;
  v218 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v218);
  v219 = v282;
  sub_1CA948B68();

  v220 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v221 = sub_1CA2F9F14(v276, v274, v214, v273, 0, 0, v254 - v216, v254 - v219);
  v222 = objc_allocWithZone(WFActionParameterSummaryValue);
  v223 = sub_1CA65DD78(0, 0xE000000000000000, v221);
  v224 = v280;
  *(v280 + 32) = v223;
  v277 = "aCaptureQuality)";
  v225 = sub_1CA94C438();
  v273 = v226;
  *&v274 = v225;
  v227 = sub_1CA94C438();
  v272 = v228;
  v276 = v254;
  MEMORY[0x1EEE9AC00](v227);
  sub_1CA948D98();
  v229 = [v217 bundleURL];
  MEMORY[0x1EEE9AC00](v229);
  sub_1CA948B68();

  v230 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v231 = sub_1CA2F9F14(v274, v273, v227, v272, 0, 0, v254 - v216, v254 - v219);
  v232 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v224 + 40) = sub_1CA65DD78(0xD00000000000001CLL, v277 | 0x8000000000000000, v231);
  v277 = "${WFCameraCaptureDevice} camera";
  v233 = sub_1CA94C438();
  v235 = v234;
  v236 = sub_1CA94C438();
  v238 = v237;
  MEMORY[0x1EEE9AC00](v236);
  v239 = v254 - v285;
  sub_1CA948D98();
  v240 = [v283 bundleURL];
  MEMORY[0x1EEE9AC00](v240);
  v241 = v254 - v282;
  sub_1CA948B68();

  v242 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v243 = sub_1CA2F9F14(v233, v235, v236, v238, 0, 0, v239, v241);
  v244 = objc_allocWithZone(WFActionParameterSummaryValue);
  v245 = sub_1CA65DD78(0xD00000000000001BLL, v277 | 0x8000000000000000, v243);
  *(v280 + 48) = v245;
  v246 = v278;
  v247 = sub_1CA65AF90();
  v248 = v279;
  v279[50] = v247;
  v248[53] = v246;
  v248[54] = @"RequiredResources";
  v248[55] = &unk_1F4A0A390;
  v249 = v275;
  v248[58] = v275;
  v248[59] = @"UserInterfaceClasses";
  v250 = @"RequiredResources";
  v251 = @"UserInterfaceClasses";
  v248[60] = sub_1CA94C1E8();
  v248[63] = v261;
  v248[64] = @"UserInterfaces";
  v248[68] = v249;
  v248[65] = &unk_1F4A0A430;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v252 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA63C1F8()
{
  v106 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9D8BD0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v111 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v112 = v12;
  v13 = &v100 - v111;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v110 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v108 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v109 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v100 - v109;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v113 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v105 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionNote";
  v22 = @"Description";
  v23 = @"DescriptionNote";
  v24 = sub_1CA94C438();
  v102 = v25;
  v103 = v24;
  v26 = sub_1CA94C438();
  v101 = v27;
  *&v104 = &v100;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v100 - v111;
  sub_1CA948D98();
  v29 = v110;
  v30 = [v110 bundleURL];
  v107 = inited;
  MEMORY[0x1EEE9AC00](v30);
  v31 = v109;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v103, v102, v26, v101, 0, 0, v28, &v100 - v31);
  *(v21 + 64) = v113;
  *(v21 + 72) = @"DescriptionSummary";
  v33 = @"DescriptionSummary";
  v34 = sub_1CA94C438();
  v102 = v35;
  v103 = v34;
  v36 = sub_1CA94C438();
  v38 = v37;
  *&v104 = &v100;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v100 - v111;
  sub_1CA948D98();
  v40 = [v29 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v103, v102, v36, v38, 0, 0, v39, &v100 - v31);
  *(v21 + 104) = v113;
  *(v21 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v43 = v105;
  v44 = sub_1CA6B3784();
  v45 = v107;
  v107[15] = v44;
  v45[18] = v43;
  v45[19] = @"IconColor";
  v45[20] = 0x65676E61724FLL;
  v45[21] = 0xE600000000000000;
  v46 = MEMORY[0x1E69E6158];
  v45[23] = MEMORY[0x1E69E6158];
  v45[24] = @"IconSymbol";
  v45[25] = 0xD000000000000010;
  v45[26] = 0x80000001CA9CA420;
  v45[28] = v46;
  v45[29] = @"Name";
  v47 = @"IconColor";
  v48 = @"IconSymbol";
  v49 = @"Name";
  v50 = sub_1CA94C438();
  v52 = v51;
  v53 = sub_1CA94C438();
  v55 = v54;
  v105 = &v100;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v100 - v111;
  sub_1CA948D98();
  v57 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v100 - v109;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v50, v52, v53, v55, 0, 0, v56, v58);
  v61 = v107;
  v107[30] = v60;
  v61[33] = v113;
  v61[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v62 = swift_initStackObject();
  v104 = xmmword_1CA981350;
  *(v62 + 16) = xmmword_1CA981350;
  *(v62 + 32) = 0x75736F6C63736944;
  *(v62 + 40) = 0xEF6C6576654C6572;
  *(v62 + 48) = 0x63696C627550;
  *(v62 + 56) = 0xE600000000000000;
  *(v62 + 72) = MEMORY[0x1E69E6158];
  *(v62 + 80) = 0x656C7069746C754DLL;
  *(v62 + 88) = 0xE800000000000000;
  v63 = MEMORY[0x1E69E6370];
  *(v62 + 96) = 0;
  *(v62 + 120) = v63;
  *(v62 + 128) = 0x614E74757074754FLL;
  *(v62 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438();
  v103 = v66;
  v67 = sub_1CA94C438();
  v69 = v68;
  v105 = &v100;
  MEMORY[0x1EEE9AC00](v67);
  v70 = v111;
  sub_1CA948D98();
  v71 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v100 - v109;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 144) = sub_1CA2F9F14(v65, v103, v67, v69, 0, 0, &v100 - v70, v72);
  *(v62 + 168) = v113;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 184) = 0xE500000000000000;
  *(v62 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v62 + 192) = &unk_1F4A0A460;
  v74 = MEMORY[0x1E69E6158];
  v75 = sub_1CA94C1E8();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v77 = v107;
  v107[35] = v75;
  v77[38] = v76;
  v77[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v105 = swift_allocObject();
  *(v105 + 1) = xmmword_1CA9813B0;
  v103 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v78 = swift_initStackObject();
  *(v78 + 16) = v104;
  *(v78 + 32) = @"AllowedValueTypes";
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444838, &unk_1CA984300);
  *(v78 + 40) = &unk_1F4A0A490;
  *(v78 + 64) = v79;
  *(v78 + 72) = @"Class";
  *(v78 + 80) = 0xD000000000000015;
  *(v78 + 88) = 0x80000001CA9CE7F0;
  *(v78 + 104) = v74;
  *(v78 + 112) = @"Key";
  *(v78 + 120) = 0x736D6574494657;
  *(v78 + 128) = 0xE700000000000000;
  *(v78 + 144) = v74;
  *(v78 + 152) = @"Label";
  v80 = @"Parameters";
  v81 = @"AllowedValueTypes";
  v82 = @"Class";
  v83 = @"Key";
  v84 = @"Label";
  v85 = sub_1CA94C438();
  v102 = v86;
  v87 = sub_1CA94C438();
  v89 = v88;
  *&v104 = &v100;
  MEMORY[0x1EEE9AC00](v87);
  sub_1CA948D98();
  v90 = [v110 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v100 - v109;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v85, v102, v87, v89, 0, 0, &v100 - v70, v91);
  *(v78 + 184) = v113;
  *(v78 + 160) = v93;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v94 = sub_1CA2F864C();
  v95 = v105;
  v105[4] = v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v97 = v107;
  v107[40] = v95;
  v97[43] = v96;
  v97[44] = @"ResidentCompatible";
  v97[48] = MEMORY[0x1E69E6370];
  *(v97 + 360) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v98 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA63CEE0()
{
  v105 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9D8CC0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v110 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v111 = v12;
  v13 = &v99 - v110;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v109 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v107 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v108 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v99 - v108;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v106 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v104 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v102 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v103 = &v99;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v99 - v110;
  sub_1CA948D98();
  v33 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v99 - v108;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v102, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v106;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v104;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"LocallyProcessesData";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v38;
  *(inited + 232) = @"Name";
  v39 = @"LocallyProcessesData";
  v40 = @"Name";
  v41 = sub_1CA94C438();
  v43 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v104 = &v99;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v99 - v110;
  sub_1CA948D98();
  v48 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v99 - v108;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 264) = v106;
  *(inited + 272) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1CA981350;
  *(v51 + 32) = 0x75736F6C63736944;
  *(v51 + 40) = 0xEF6C6576654C6572;
  *(v51 + 48) = 0x63696C627550;
  *(v51 + 56) = 0xE600000000000000;
  *(v51 + 72) = MEMORY[0x1E69E6158];
  *(v51 + 80) = 0x656C7069746C754DLL;
  *(v51 + 88) = 0xE800000000000000;
  *(v51 + 96) = 1;
  *(v51 + 120) = MEMORY[0x1E69E6370];
  *(v51 + 128) = 0x614E74757074754FLL;
  *(v51 + 136) = 0xEA0000000000656DLL;
  v52 = @"Output";
  v53 = sub_1CA94C438();
  v103 = v54;
  v55 = sub_1CA94C438();
  v57 = v56;
  v104 = &v99;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v99 - v110;
  sub_1CA948D98();
  v59 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v99 - v108;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v51 + 144) = sub_1CA2F9F14(v53, v103, v55, v57, 0, 0, v58, v60);
  *(v51 + 168) = v106;
  *(v51 + 176) = 0x7365707954;
  *(v51 + 184) = 0xE500000000000000;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v51 + 216) = v104;
  *(v51 + 192) = &unk_1F4A0A518;
  v62 = MEMORY[0x1E69E6158];
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v63;
  *(inited + 304) = v64;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v103 = swift_allocObject();
  *(v103 + 1) = xmmword_1CA9813B0;
  v102 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v65 = swift_initStackObject();
  *(v65 + 16) = xmmword_1CA9813C0;
  *(v65 + 32) = @"Class";
  *(v65 + 40) = 0xD000000000000019;
  *(v65 + 48) = 0x80000001CA9C6480;
  *(v65 + 64) = v62;
  *(v65 + 72) = @"Key";
  strcpy((v65 + 80), "WFPlaylistName");
  *(v65 + 95) = -18;
  *(v65 + 104) = v62;
  *(v65 + 112) = @"Label";
  v66 = @"Parameters";
  v67 = @"Class";
  v68 = @"Key";
  v69 = @"Label";
  v70 = sub_1CA94C438();
  v100 = v71;
  v72 = sub_1CA94C438();
  v74 = v73;
  v101 = &v99;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v99 - v110;
  sub_1CA948D98();
  v76 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v99 - v108;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v79 = sub_1CA2F9F14(v70, v100, v72, v74, 0, 0, v75, v77);
  *(v65 + 144) = v106;
  *(v65 + 120) = v79;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v80 = sub_1CA2F864C();
  v81 = v103;
  v103[4] = v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 320) = v81;
  *(inited + 344) = v82;
  *(inited + 352) = @"ParameterSummary";
  v83 = @"ParameterSummary";
  v84 = sub_1CA94C438();
  v86 = v85;
  v87 = sub_1CA94C438();
  v89 = v88;
  v106 = &v99;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v99 - v110;
  sub_1CA948D98();
  v91 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v99 - v108;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v84, v86, v87, v89, 0, 0, v90, v92);
  v95 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v96 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 360) = v95;
  *(inited + 384) = v96;
  *(inited + 392) = @"RequiredResources";
  *(inited + 424) = v104;
  *(inited + 400) = &unk_1F4A0A548;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v97 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA63DBF8(SEL *a1, uint64_t (*a2)(void))
{
  v4 = [v2 *a1];
  v5 = a2();

  return v5;
}

uint64_t sub_1CA63DC58(void *a1)
{
  v1 = [a1 count];
  v21 = MEMORY[0x1E69E7CC0];
  sub_1CA2B8DF8(0, v1 & ~(v1 >> 63), 0);
  v2 = v21;
  v3 = sub_1CA948AF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1CA94CBC8();
  if (v1 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v15[0] = v4;
  v15[1] = v15;
  if (v1)
  {
    sub_1CA60EEC4();
    do
    {
      result = sub_1CA94D148();
      if (!v19)
      {
        goto LABEL_15;
      }

      sub_1CA25B374(v18, &v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A70, &unk_1CA9843A0);
      swift_dynamicCast();
      __swift_destroy_boxed_opaque_existential_0(v18);
      v9 = v20;
      v21 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1CA2B8DF8(v10 > 1, v11 + 1, 1);
        v2 = v21;
      }

      *(v2 + 16) = v11 + 1;
      *(v2 + 8 * v11 + 32) = v9;
    }

    while (--v1);
  }

  sub_1CA60EEC4();
  while (1)
  {
    sub_1CA94D148();
    if (!v17)
    {
      break;
    }

    sub_1CA2C0A20(&v16, v18);
    sub_1CA25B374(v18, &v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A70, &unk_1CA9843A0);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_0(v18);
    v12 = v20;
    v21 = v2;
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1CA2B8DF8(v13 > 1, v14 + 1, 1);
      v2 = v21;
    }

    *(v2 + 16) = v14 + 1;
    *(v2 + 8 * v14 + 32) = v12;
  }

  (*(v15[0] + 8))(v7, v3);
  sub_1CA2C0A74(&v16);
  return v2;
}

uint64_t sub_1CA63DF38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v45 = a5;
  v44 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  v43[1] = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1CA981350;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = MEMORY[0x1E69E6158];
  *(v9 + 32) = @"Key";
  *(v9 + 40) = v10;
  *(v9 + 48) = v11;
  *(v9 + 64) = v12;
  *(v9 + 72) = @"Label";
  sub_1CA94C218();
  v13 = @"Key";
  sub_1CA94C218();
  v14 = @"Label";
  v15 = sub_1CA94C438();
  v17 = v16;
  v18 = sub_1CA94C438();
  v20 = v19;
  v21 = sub_1CA948E58();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v25 = [qword_1EDB9F690 bundleURL];
  v26 = sub_1CA948BA8();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v31 = sub_1CA2F9F14(v15, v17, v18, v20, 0, 0, v24, v29);
  v32 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v9 + 80) = v31;
  *(v9 + 104) = v32;
  *(v9 + 112) = @"MinimumValue";
  v33 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
  v34 = v44;
  *(v9 + 120) = v44;
  *(v9 + 144) = v33;
  *(v9 + 152) = @"MaximumValue";
  *(v9 + 184) = v33;
  v35 = v45;
  *(v9 + 160) = v45;
  _s3__C3KeyVMa_0(0);
  sub_1CA2A7470();
  v36 = @"MinimumValue";
  v37 = v34;
  v38 = @"MaximumValue";
  v39 = v35;
  sub_1CA94C1E8();
  v40 = sub_1CA2F864C();
  v41 = [objc_allocWithZone(WFSliderParameter) initWithDefinition_];

  *(inited + 48) = v41;
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  return sub_1CA94C1E8();
}

uint64_t sub_1CA63E2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA63E300, 0, 0);
}

uint64_t sub_1CA63E300()
{
  OUTLINED_FUNCTION_6();
  if (*(v0[2] + 16) && (v1 = v0[4], v2 = v0[5], v3 = sub_1CA271BF8(), (v4 & 1) != 0))
  {
    v0[6] = *(*(v0[2] + 56) + 8 * v3);
    swift_unknownObjectRetain();
    objc_opt_self();
    if (OUTLINED_FUNCTION_37())
    {
      OUTLINED_FUNCTION_7_39(&unk_1CA983948);
      v5 = swift_task_alloc();
      v0[7] = v5;
      *v5 = v0;
      v5[1] = sub_1CA63E478;
      v6 = OUTLINED_FUNCTION_11_2(v0[3]);

      return v7(v6);
    }

    else
    {
      sub_1CA2A741C();
      v10 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_8_31(v10, v11);
      swift_unknownObjectRetain();
      v12 = v0[6];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v13();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v9(0);
  }
}

uint64_t sub_1CA63E478()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  *(v2 + 64) = v6;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA63E57C()
{
  OUTLINED_FUNCTION_6();
  if (!*(v0 + 64))
  {
    v5 = *(v0 + 48);
    swift_unknownObjectRelease();
    v3 = 0;
    goto LABEL_5;
  }

  objc_opt_self();
  v1 = OUTLINED_FUNCTION_37();
  v2 = *(v0 + 48);
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 48);
    swift_unknownObjectRelease();
LABEL_5:
    v6 = *(v0 + 48);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_2_4();

    return v7(v3);
  }

  sub_1CA2A741C();
  OUTLINED_FUNCTION_127();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_9_36(ObjectType);
  swift_unknownObjectRelease();
  v10 = *(v0 + 48);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v11();
}

uint64_t sub_1CA63E698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_90();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA63E6CC()
{
  OUTLINED_FUNCTION_6();
  if (*(v0[2] + 16) && (v1 = v0[5], v2 = v0[6], v3 = sub_1CA271BF8(), (v4 & 1) != 0))
  {
    v0[7] = *(*(v0[2] + 56) + 8 * v3);
    swift_unknownObjectRetain();
    objc_opt_self();
    if (OUTLINED_FUNCTION_37())
    {
      OUTLINED_FUNCTION_7_39(&unk_1CA983948);
      v5 = swift_task_alloc();
      v0[8] = v5;
      *v5 = v0;
      v5[1] = sub_1CA63E844;
      v6 = OUTLINED_FUNCTION_11_2(v0[4]);

      return v7(v6);
    }

    else
    {
      sub_1CA2A741C();
      v10 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_8_31(v10, v11);
      swift_unknownObjectRetain();
      v12 = v0[7];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v13();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v9(1);
  }
}

uint64_t sub_1CA63E844()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 64);
  *v3 = *v1;
  *(v2 + 72) = v6;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA63E948()
{
  OUTLINED_FUNCTION_6();
  if (v0[9])
  {
    objc_opt_self();
    v1 = OUTLINED_FUNCTION_37();
    v0[11] = v1;
    v2 = v0[7];
    if (v1)
    {
      v3 = v0[7];
      swift_unknownObjectRelease_n();
      v4 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      v5 = *(MEMORY[0x1E6996C50] + 4);
      v6 = swift_task_alloc();
      v0[12] = v6;
      *v6 = v0;
      v6[1] = sub_1CA63EAEC;
      v7 = v0[3];

      return MEMORY[0x1EEDF81A0](v4);
    }

    else
    {
      sub_1CA2A741C();
      OUTLINED_FUNCTION_127();
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_9_36(ObjectType);
      swift_unknownObjectRelease();
      v11 = v0[7];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v12();
    }
  }

  else
  {
    v8 = v0[7];
    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_2_4();

    return v9(1);
  }
}

uint64_t sub_1CA63EAEC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  *v3 = *v1;
  *(v2 + 104) = v6;
  *(v2 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA63EBFC()
{
  if (v0[13])
  {
    v1 = v0[13];
    swift_unknownObjectRetain();
    objc_opt_self();
    v2 = OUTLINED_FUNCTION_37();
    if (v2)
    {
      v3 = v0[9];
      v4 = [v2 compare_];
      swift_unknownObjectRelease_n();
      goto LABEL_7;
    }

    v6 = v0[9];
    swift_unknownObjectRelease_n();
  }

  else
  {
    v5 = v0[9];
  }

  v4 = -1;
LABEL_7:
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v7(v4);
}

uint64_t sub_1CA63ECD0()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  *(v0 + 16) = v5;
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  *v9 = v0;
  v9[1] = sub_1CA63ED98;

  return sub_1CA63E2DC(v7, v8, v4, v2);
}

uint64_t sub_1CA63ED98(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v2;
  OUTLINED_FUNCTION_1();
  *v10 = v9;

  if (v1)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = a1;
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1CA63EED4()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 48) = *v5;
  v6 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
  *(v0 + 64) = v6;
  v7 = *(MEMORY[0x1E6996C50] + 4);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1CA63EF98;

  return MEMORY[0x1EEDF81A0](v6);
}

uint64_t sub_1CA63EF98()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 72);
  *v3 = *v1;
  *(v2 + 80) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_2_4();

    return v7(0);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1CA63F0C8()
{
  OUTLINED_FUNCTION_0();
  if (v0[10])
  {
    v1 = v0[10];
    swift_unknownObjectRetain();
    objc_opt_self();
    v2 = OUTLINED_FUNCTION_37();
    v0[11] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[12] = v3;
      *v3 = v0;
      v3[1] = sub_1CA63F1CC;
      v5 = v0[6];
      v4 = v0[7];
      v6 = v0[4];
      v7 = v0[5];
      v8 = v0[2];
      v9 = v0[3];

      return sub_1CA63E2DC(v5, v4, v8, v9);
    }

    v11 = v0[10];
    swift_unknownObjectRelease();
    v12 = v0[10];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_2_4();

  return v13(0);
}

uint64_t sub_1CA63F1CC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v6 = *(v5 + 96);
  *v4 = *v1;
  v3[13] = v7;
  v3[14] = v0;

  if (!v0)
  {
    v8 = v3[10];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA63F2D8()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[10];
    v3 = v0[11];
    v4 = v0[8];
    swift_unknownObjectRetain();
    v5 = sub_1CA94CFD8();

    v6 = v0[10];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  v7 = v0[10];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v8(v5 & 1);
}

uint64_t sub_1CA63F37C()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CA2C756C;

  return sub_1CA63ECD0();
}

uint64_t sub_1CA63F440()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1CA2A715C;

  return sub_1CA63EED4();
}

uint64_t sub_1CA63F504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CA2A731C;

  return sub_1CA63E698(a1, a2, a3, v9, v8);
}

id sub_1CA63F604()
{
  v115 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9D8E30;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v2 = swift_initStackObject();
  v118 = xmmword_1CA981350;
  *(v2 + 16) = xmmword_1CA981350;
  *(v2 + 32) = 0xD00000000000001DLL;
  *(v2 + 40) = 0x80000001CA99DA80;
  v3 = MEMORY[0x1E69E6370];
  *(v2 + 48) = 1;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0xD000000000000010;
  v114 = 0xD000000000000010;
  *(v2 + 88) = 0x80000001CA993290;
  *(v2 + 96) = 0xD000000000000017;
  *(v2 + 104) = 0x80000001CA9D8E50;
  *(v2 + 120) = v1;
  *(v2 + 128) = 1701667150;
  *(v2 + 136) = 0xE400000000000000;
  *(v2 + 144) = 0x757153646E696C42;
  *(v2 + 152) = 0xEB00000000657261;
  *(v2 + 168) = v1;
  strcpy((v2 + 176), "TeamIdentifier");
  *(v2 + 216) = v1;
  *(v2 + 191) = -18;
  *(v2 + 192) = 0x3337515639364553;
  *(v2 + 200) = 0xEA00000000005253;
  v4 = @"ActionClass";
  v5 = @"AppDefinition";
  v6 = sub_1CA94C1E8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 80) = v6;
  v120 = v7;
  *(inited + 104) = v7;
  *(inited + 112) = @"Description";
  v117 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v8 = swift_initStackObject();
  v113 = xmmword_1CA981310;
  *(v8 + 16) = xmmword_1CA981310;
  *(v8 + 32) = @"DescriptionSummary";
  v9 = @"Description";
  v10 = @"DescriptionSummary";
  v11 = sub_1CA94C438();
  v121 = v12;
  v13 = sub_1CA94C438();
  v15 = v14;
  v16 = sub_1CA948E58();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v125 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v126 = v18;
  v19 = &v107 - v125;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v124 = qword_1EDB9F690;
  v20 = [qword_1EDB9F690 bundleURL];
  v21 = sub_1CA948BA8();
  v122 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v123 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v107 - v123;
  sub_1CA948B68();

  v24 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v25 = sub_1CA2F9F14(v11, v121, v13, v15, 0, 0, v19, v23);
  v121 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v8 + 64) = v121;
  *(v8 + 40) = v25;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v26 = v117;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v26;
  *(inited + 152) = @"Input";
  v27 = swift_initStackObject();
  *(v27 + 16) = v118;
  *(v27 + 32) = 0x656C7069746C754DLL;
  *(v27 + 40) = 0xE800000000000000;
  *(v27 + 48) = 0;
  v28 = MEMORY[0x1E69E6370];
  *(v27 + 72) = MEMORY[0x1E69E6370];
  strcpy((v27 + 80), "ParameterKey");
  *(v27 + 93) = 0;
  *(v27 + 94) = -5120;
  *(v27 + 96) = 0x7475706E494657;
  *(v27 + 104) = 0xE700000000000000;
  *(v27 + 120) = MEMORY[0x1E69E6158];
  *(v27 + 128) = 0x6465726975716552;
  *(v27 + 136) = 0xE800000000000000;
  *(v27 + 144) = 1;
  *(v27 + 168) = v28;
  *(v27 + 176) = 0x7365707954;
  v29 = v28;
  *(v27 + 184) = 0xE500000000000000;
  *(v27 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v27 + 192) = &unk_1F4A0A578;
  v30 = @"Input";
  *(inited + 160) = sub_1CA94C1E8();
  *(inited + 184) = v120;
  *(inited + 192) = @"InputPassthrough";
  *(inited + 200) = 1;
  *(inited + 224) = v29;
  *(inited + 232) = @"Name";
  v31 = @"InputPassthrough";
  v32 = @"Name";
  v33 = sub_1CA94C438();
  v35 = v34;
  v36 = sub_1CA94C438();
  v38 = v37;
  v117 = &v107;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v107 - v125;
  sub_1CA948D98();
  v40 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v107 - v123;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v33, v35, v36, v38, 0, 0, v39, v41);
  *(inited + 264) = v121;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v117 = swift_allocObject();
  *(v117 + 1) = xmmword_1CA981360;
  v116 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v43 = swift_allocObject();
  *(v43 + 16) = v118;
  *(v43 + 32) = @"Class";
  *(v43 + 40) = 0xD000000000000011;
  *(v43 + 48) = 0x80000001CA99E620;
  v44 = MEMORY[0x1E69E6158];
  *(v43 + 64) = MEMORY[0x1E69E6158];
  *(v43 + 72) = @"DefaultValue";
  *(v43 + 80) = 0;
  *(v43 + 104) = MEMORY[0x1E69E6370];
  *(v43 + 112) = @"Key";
  *(v43 + 120) = 0xD000000000000017;
  *(v43 + 128) = 0x80000001CA9D8F60;
  *(v43 + 144) = v44;
  *(v43 + 152) = @"Label";
  v45 = @"Class";
  v46 = @"Key";
  v47 = @"Label";
  v111 = v45;
  v110 = v46;
  v109 = v47;
  v48 = @"Parameters";
  v49 = @"DefaultValue";
  v50 = sub_1CA94C438();
  v108 = v51;
  v52 = sub_1CA94C438();
  v54 = v53;
  *&v118 = &v107;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v107 - v125;
  sub_1CA948D98();
  v56 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v107 - v123;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v50, v108, v52, v54, 0, 0, v55, v57);
  *(v43 + 184) = v121;
  *(v43 + 160) = v59;
  _s3__C3KeyVMa_0(0);
  v108 = v60;
  v107 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v117[4] = sub_1CA2F864C();
  v61 = swift_allocObject();
  v118 = xmmword_1CA9813C0;
  *(v61 + 16) = xmmword_1CA9813C0;
  *(v61 + 32) = v111;
  *(v61 + 40) = 0xD000000000000013;
  *(v61 + 48) = 0x80000001CA99B730;
  v62 = MEMORY[0x1E69E6158];
  v63 = v110;
  *(v61 + 64) = MEMORY[0x1E69E6158];
  *(v61 + 72) = v63;
  *(v61 + 80) = 0x7475706E494657;
  *(v61 + 88) = 0xE700000000000000;
  v64 = v109;
  *(v61 + 104) = v62;
  *(v61 + 112) = v64;
  v65 = sub_1CA94C438();
  v111 = v66;
  v67 = sub_1CA94C438();
  v69 = v68;
  v112 = &v107;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v107 - v125;
  sub_1CA948D98();
  v71 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v107 - v123;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v74 = sub_1CA2F9F14(v65, v111, v67, v69, 0, 0, v70, v72);
  *(v61 + 144) = v121;
  *(v61 + 120) = v74;
  sub_1CA94C1E8();
  v75 = sub_1CA2F864C();
  v76 = v117;
  v117[5] = v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v76;
  *(inited + 304) = v77;
  *(inited + 312) = @"ParameterSummary";
  v78 = @"ParameterSummary";
  v79 = sub_1CA94C438();
  v81 = v80;
  v82 = sub_1CA94C438();
  v84 = v83;
  v121 = &v107;
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v107 - v125;
  sub_1CA948D98();
  v86 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v107 - v123;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89 = sub_1CA2F9F14(v79, v81, v82, v84, 0, 0, v85, v87);
  v90 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v91 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v90;
  *(inited + 344) = v91;
  *(inited + 352) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v92 = swift_allocObject();
  *(v92 + 16) = v118;
  v93 = MEMORY[0x1E69E6158];
  *(v92 + 56) = MEMORY[0x1E69E6158];
  *(v92 + 32) = 0xD000000000000011;
  *(v92 + 40) = 0x80000001CA993BE0;
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1CA97EDF0;
  *(v94 + 32) = 0xD000000000000011;
  *(v94 + 40) = 0x80000001CA99B240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v95 = swift_allocObject();
  *(v95 + 16) = v113;
  v96 = swift_allocObject();
  *(v96 + 16) = v118;
  strcpy((v96 + 32), "WFParameterKey");
  *(v96 + 47) = -18;
  *(v96 + 48) = 0x7475706E494657;
  *(v96 + 56) = 0xE700000000000000;
  v97 = v114;
  *(v96 + 72) = v93;
  *(v96 + 80) = v97;
  *(v96 + 88) = 0x80000001CA993570;
  v98 = @"RequiredResources";
  v99 = sub_1CA94C1E8();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443800, &unk_1CA981440);
  *(v96 + 96) = v99;
  *(v96 + 120) = v100;
  *(v96 + 128) = 0x72756F7365524657;
  *(v96 + 168) = v93;
  *(v96 + 136) = 0xEF7373616C436563;
  *(v96 + 144) = 0xD00000000000001BLL;
  *(v96 + 152) = 0x80000001CA993590;
  *(v95 + 32) = sub_1CA94C1E8();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v94 + 48) = v95;
  *(v94 + 72) = v101;
  *(v94 + 80) = 0x72756F7365524657;
  *(v94 + 120) = v93;
  *(v94 + 88) = 0xEF7373616C436563;
  *(v94 + 96) = 0xD000000000000018;
  *(v94 + 104) = 0x80000001CA994040;
  v102 = sub_1CA94C1E8();
  *(v92 + 88) = v120;
  *(v92 + 64) = v102;
  v127 = 2;
  v128 = 1;
  v103 = type metadata accessor for WFDeviceIdiomResource();
  v104 = objc_allocWithZone(v103);
  WFDeviceIdiomResource.init(requirement:)(&v127);
  *(v92 + 120) = v103;
  *(v92 + 96) = v105;
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 360) = v92;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA640644()
{
  v38 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v37 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"Input";
  v6 = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v7 = sub_1CA94C1E8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 120) = v7;
  *(inited + 144) = v8;
  *(inited + 152) = @"LocallyProcessesData";
  v9 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v9;
  *(inited + 192) = @"Name";
  v10 = @"LocallyProcessesData";
  v11 = @"Name";
  v12 = sub_1CA94C438();
  v36 = v13;
  v14 = sub_1CA94C438();
  v16 = v15;
  v17 = sub_1CA948E58();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v35 = 0x80000001CA997EB0;
  v21 = [qword_1EDB9F690 bundleURL];
  v22 = sub_1CA948BA8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v26 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v27 = sub_1CA2F9F14(v12, v36, v14, v16, 0, 0, v20, v25);
  v28 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 200) = v27;
  *(inited + 224) = v28;
  *(inited + 232) = @"Output";
  v29 = @"Output";
  v30 = sub_1CA94C1E8();
  *(inited + 264) = v37;
  *(inited + 240) = v30;
  v31 = sub_1CA94C368();
  *(inited + 304) = v1;
  *(inited + 272) = v31;
  *(inited + 280) = 0xD000000000000014;
  *(inited + 288) = v35;
  v32 = sub_1CA94C368();
  *(inited + 344) = v1;
  *(inited + 312) = v32;
  *(inited + 320) = 0x747369747241;
  *(inited + 328) = 0xE600000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA640AC4()
{
  sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"Discoverable";
  v2 = MEMORY[0x1E69E6370];
  *(inited + 80) = 0;
  *(inited + 104) = v2;
  *(inited + 112) = @"Name";
  v3 = @"ActionClass";
  v4 = @"Discoverable";
  v5 = @"Name";
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v15, v20);
  *(inited + 144) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v22;
  v23 = sub_1CA94C368();
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 152) = v23;
  *(inited + 160) = 0xD000000000000017;
  *(inited + 168) = 0x80000001CA9D90C0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA640E20()
{
  v254 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9D90F0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v270 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v271 = v12;
  v13 = v244 - v270;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v267 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v269 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v268 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v244 - v268;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v266 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v263 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v264 = xmmword_1CA9813C0;
  *(v21 + 16) = xmmword_1CA9813C0;
  *(v21 + 32) = @"DescriptionNote";
  v22 = @"Description";
  v23 = @"DescriptionNote";
  v24 = sub_1CA94C438();
  v260 = v25;
  v261 = v24;
  v26 = sub_1CA94C438();
  v28 = v27;
  v262 = v244;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v244 - v270;
  sub_1CA948D98();
  v30 = v267;
  v31 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v265 = inited;
  v32 = v268;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v261, v260, v26, v28, 0, 0, v29, v244 - v32);
  *(v21 + 64) = v266;
  *(v21 + 72) = @"DescriptionResult";
  v34 = @"DescriptionResult";
  v35 = sub_1CA94C438();
  v260 = v36;
  v261 = v35;
  *&v259 = sub_1CA94C438();
  v38 = v37;
  v262 = v244;
  MEMORY[0x1EEE9AC00](v259);
  v39 = v270;
  sub_1CA948D98();
  v40 = [v30 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 80) = sub_1CA2F9F14(v261, v260, v259, v38, 0, 0, v244 - v39, v244 - v32);
  v42 = v266;
  *(v21 + 104) = v266;
  *(v21 + 112) = @"DescriptionSummary";
  v43 = @"DescriptionSummary";
  v44 = sub_1CA94C438();
  v260 = v45;
  v261 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v262 = v244;
  MEMORY[0x1EEE9AC00](v46);
  sub_1CA948D98();
  v49 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = v244 - v268;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v52 = sub_1CA2F9F14(v261, v260, v46, v48, 0, 0, v244 - v39, v50);
  *(v21 + 144) = v42;
  *(v21 + 120) = v52;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v53 = v263;
  v54 = sub_1CA6B3784();
  v55 = v265;
  v265[15] = v54;
  v55[18] = v53;
  v55[19] = @"IconColor";
  v55[20] = 1953392980;
  v55[21] = 0xE400000000000000;
  v56 = MEMORY[0x1E69E6158];
  v55[23] = MEMORY[0x1E69E6158];
  v55[24] = @"IconSymbol";
  v55[25] = 0x7070612E74786574;
  v55[26] = 0xEB00000000646E65;
  v55[28] = v56;
  v55[29] = @"IconSymbolColor";
  v55[30] = 1702194242;
  v55[31] = 0xE400000000000000;
  v55[33] = v56;
  v55[34] = @"Input";
  v57 = v56;
  v58 = v55;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  v259 = xmmword_1CA981350;
  *(v59 + 16) = xmmword_1CA981350;
  *(v59 + 32) = 0x656C7069746C754DLL;
  *(v59 + 40) = 0xE800000000000000;
  v60 = MEMORY[0x1E69E6370];
  *(v59 + 48) = 0;
  *(v59 + 72) = v60;
  strcpy((v59 + 80), "ParameterKey");
  *(v59 + 93) = 0;
  *(v59 + 94) = -5120;
  *(v59 + 96) = 0x7475706E494657;
  *(v59 + 104) = 0xE700000000000000;
  *(v59 + 120) = v57;
  *(v59 + 128) = 0x6465726975716552;
  *(v59 + 136) = 0xE800000000000000;
  *(v59 + 144) = 1;
  *(v59 + 168) = v60;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 184) = 0xE500000000000000;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 216) = v258;
  *(v59 + 192) = &unk_1F4A0A6E8;
  v61 = @"IconColor";
  v62 = @"IconSymbol";
  v63 = @"IconSymbolColor";
  v64 = @"Input";
  v65 = sub_1CA94C1E8();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v263 = v66;
  v58[35] = v65;
  v58[38] = v66;
  v58[39] = @"Name";
  v67 = @"Name";
  v260 = sub_1CA94C438();
  v69 = v68;
  v70 = sub_1CA94C438();
  v72 = v71;
  v261 = v244;
  MEMORY[0x1EEE9AC00](v70);
  v73 = v244 - v270;
  sub_1CA948D98();
  v74 = v267;
  v75 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = v244 - v268;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v260, v69, v70, v72, 0, 0, v73, v76);
  v79 = v265;
  v80 = v266;
  v265[40] = v78;
  v79[43] = v80;
  v79[44] = @"Output";
  v81 = swift_allocObject();
  *(v81 + 16) = v264;
  *(v81 + 32) = 0x656C7069746C754DLL;
  *(v81 + 40) = 0xE800000000000000;
  *(v81 + 48) = 0;
  *(v81 + 72) = MEMORY[0x1E69E6370];
  *(v81 + 80) = 0x614E74757074754FLL;
  *(v81 + 88) = 0xEA0000000000656DLL;
  v82 = @"Output";
  v83 = sub_1CA94C438();
  v261 = v84;
  v262 = v83;
  v85 = sub_1CA94C438();
  v87 = v86;
  *&v264 = v244;
  MEMORY[0x1EEE9AC00](v85);
  v88 = v244 - v270;
  sub_1CA948D98();
  v89 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = v244 - v268;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 96) = sub_1CA2F9F14(v262, v261, v85, v87, 0, 0, v88, v90);
  *(v81 + 120) = v80;
  *(v81 + 128) = 0x7365707954;
  v92 = v258;
  *(v81 + 168) = v258;
  *(v81 + 136) = 0xE500000000000000;
  *(v81 + 144) = &unk_1F4A0A718;
  v93 = MEMORY[0x1E69E6158];
  v94 = sub_1CA94C1E8();
  v95 = v265;
  v265[45] = v94;
  v95[48] = v263;
  v95[49] = @"ParameterCollapsingBehavior";
  v95[50] = 0x726576654ELL;
  v95[51] = 0xE500000000000000;
  v95[53] = v93;
  v95[54] = @"Parameters";
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v263 = swift_allocObject();
  *(v263 + 16) = xmmword_1CA981560;
  *&v264 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1CA981380;
  v256 = 0xD000000000000015;
  *(v96 + 32) = @"Class";
  *(v96 + 40) = 0xD000000000000015;
  *(v96 + 48) = 0x80000001CA99B1E0;
  *(v96 + 64) = v93;
  *(v96 + 72) = @"DefaultsToShortcutsFolder";
  *(v96 + 80) = 1;
  v97 = MEMORY[0x1E69E6370];
  *(v96 + 104) = MEMORY[0x1E69E6370];
  *(v96 + 112) = @"Optional";
  *(v96 + 120) = 0;
  *(v96 + 144) = v97;
  *(v96 + 152) = @"FilePickerSupportedTypes";
  *(v96 + 160) = &unk_1F4A0A748;
  *(v96 + 184) = v92;
  *(v96 + 192) = @"Key";
  *(v96 + 200) = 0x656C69464657;
  *(v96 + 208) = 0xE600000000000000;
  *(v96 + 224) = v93;
  *(v96 + 232) = @"Label";
  v98 = @"Class";
  v99 = @"Key";
  v100 = @"Label";
  v101 = v98;
  v102 = v99;
  v103 = v100;
  v250 = v101;
  v251 = v102;
  v255 = v103;
  v104 = @"ParameterCollapsingBehavior";
  v105 = @"Parameters";
  v106 = @"DefaultsToShortcutsFolder";
  v107 = @"Optional";
  v108 = @"FilePickerSupportedTypes";
  v109 = sub_1CA94C438();
  v111 = v110;
  v112 = sub_1CA94C438();
  v114 = v113;
  v261 = v244;
  MEMORY[0x1EEE9AC00](v112);
  v115 = v244 - v270;
  sub_1CA948D98();
  v116 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  v117 = v244 - v268;
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v109, v111, v112, v114, 0, 0, v115, v117);
  *(v96 + 264) = v266;
  *(v96 + 240) = v119;
  _s3__C3KeyVMa_0(0);
  v261 = v120;
  v260 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v263 + 32) = sub_1CA2F864C();
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_1CA9813E0;
  *(v121 + 32) = @"AutocapitalizationType";
  *(v121 + 40) = 1701736270;
  *(v121 + 48) = 0xE400000000000000;
  v122 = MEMORY[0x1E69E6158];
  v123 = v250;
  *(v121 + 64) = MEMORY[0x1E69E6158];
  *(v121 + 72) = v123;
  v252 = 0xD000000000000014;
  v253 = 0x80000001CA99B500;
  *(v121 + 80) = 0xD000000000000014;
  *(v121 + 88) = 0x80000001CA99B500;
  *(v121 + 104) = v122;
  *(v121 + 112) = @"Description";
  v250 = v123;
  v124 = @"AutocapitalizationType";
  v125 = @"Description";
  v126 = sub_1CA94C438();
  v128 = v127;
  v129 = sub_1CA94C438();
  v131 = v130;
  v249 = v244;
  MEMORY[0x1EEE9AC00](v129);
  v132 = v244 - v270;
  sub_1CA948D98();
  v133 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v133);
  v134 = v244 - v268;
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v121 + 120) = sub_1CA2F9F14(v126, v128, v129, v131, 0, 0, v132, v134);
  *(v121 + 144) = v266;
  *(v121 + 152) = @"DisableAutocorrection";
  *(v121 + 160) = 1;
  v136 = v251;
  *(v121 + 184) = MEMORY[0x1E69E6370];
  *(v121 + 192) = v136;
  *(v121 + 200) = 0x6150656C69464657;
  *(v121 + 208) = 0xEA00000000006874;
  v137 = MEMORY[0x1E69E6158];
  *(v121 + 224) = MEMORY[0x1E69E6158];
  *(v121 + 232) = @"KeyboardType";
  *(v121 + 240) = 0x6372616553626557;
  *(v121 + 248) = 0xE900000000000068;
  v138 = v255;
  *(v121 + 264) = v137;
  *(v121 + 272) = v138;
  v251 = v136;
  v255 = v138;
  v139 = @"DisableAutocorrection";
  v140 = @"KeyboardType";
  v141 = sub_1CA94C438();
  v247 = v142;
  v248 = v141;
  v143 = sub_1CA94C438();
  v145 = v144;
  v249 = v244;
  MEMORY[0x1EEE9AC00](v143);
  v146 = v270;
  sub_1CA948D98();
  v147 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  v148 = v244 - v268;
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v121 + 280) = sub_1CA2F9F14(v248, v247, v143, v145, 0, 0, v244 - v146, v148);
  v150 = v266;
  *(v121 + 304) = v266;
  *(v121 + 312) = @"Placeholder";
  v151 = @"Placeholder";
  v152 = sub_1CA94C438();
  v247 = v153;
  v248 = v152;
  v154 = sub_1CA94C438();
  v246 = v155;
  v249 = v244;
  MEMORY[0x1EEE9AC00](v154);
  sub_1CA948D98();
  v156 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v156);
  v157 = v268;
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v121 + 320) = sub_1CA2F9F14(v248, v247, v154, v246, 0, 0, v244 - v146, v244 - v157);
  *(v121 + 344) = v150;
  *(v121 + 352) = @"TextAlignment";
  v159 = MEMORY[0x1E69E6158];
  *(v121 + 384) = MEMORY[0x1E69E6158];
  *(v121 + 360) = 1952867660;
  *(v121 + 368) = 0xE400000000000000;
  v160 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v263 + 40) = sub_1CA2F864C();
  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_1CA981370;
  v162 = v250;
  *(v161 + 32) = v250;
  *(v161 + 40) = 0xD000000000000016;
  *(v161 + 48) = 0x80000001CA99C4A0;
  *(v161 + 64) = v159;
  *(v161 + 72) = @"DefaultValue";
  *(v161 + 80) = 0x646E65707041;
  *(v161 + 88) = 0xE600000000000000;
  *(v161 + 104) = v159;
  *(v161 + 112) = @"Items";
  v249 = swift_allocObject();
  *(v249 + 1) = xmmword_1CA981360;
  v163 = @"DefaultValue";
  v257 = v162;
  v250 = v163;
  v164 = @"Items";
  v165 = sub_1CA94C438();
  v246 = v166;
  v247 = v165;
  v167 = sub_1CA94C438();
  v245 = v168;
  v248 = v244;
  MEMORY[0x1EEE9AC00](v167);
  v169 = v270;
  sub_1CA948D98();
  v170 = v267;
  v171 = [v267 bundleURL];
  v244[1] = v244;
  MEMORY[0x1EEE9AC00](v171);
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v173 = sub_1CA2F9F14(v247, v246, v167, v245, 0, 0, v244 - v169, v244 - v157);
  v174 = v249;
  v249[4] = v173;
  v175 = sub_1CA94C438();
  v246 = v176;
  v247 = v175;
  v245 = sub_1CA94C438();
  v178 = v177;
  v248 = v244;
  MEMORY[0x1EEE9AC00](v245);
  sub_1CA948D98();
  v179 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v174 + 40) = sub_1CA2F9F14(v247, v246, v245, v178, 0, 0, v244 - v169, v244 - v157);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v161 + 120) = v174;
  v182 = v251;
  *(v161 + 144) = v181;
  *(v161 + 152) = v182;
  v183 = v255;
  *(v161 + 160) = v256;
  *(v161 + 168) = 0x80000001CA9C3D00;
  *(v161 + 184) = MEMORY[0x1E69E6158];
  *(v161 + 192) = v183;
  v256 = v182;
  v255 = v183;
  v184 = sub_1CA94C438();
  v249 = v185;
  v186 = sub_1CA94C438();
  v188 = v187;
  v251 = v244;
  MEMORY[0x1EEE9AC00](v186);
  v189 = v244 - v270;
  sub_1CA948D98();
  v190 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v190);
  v191 = v244 - v268;
  sub_1CA948B68();

  v192 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v193 = sub_1CA2F9F14(v184, v249, v186, v188, 0, 0, v189, v191);
  *(v161 + 224) = v266;
  *(v161 + 200) = v193;
  sub_1CA94C1E8();
  *(v263 + 48) = sub_1CA2F864C();
  v194 = swift_allocObject();
  *(v194 + 16) = v259;
  *(v194 + 32) = v257;
  *(v194 + 40) = 0xD000000000000011;
  *(v194 + 48) = 0x80000001CA99E620;
  v195 = MEMORY[0x1E69E6158];
  v196 = v250;
  *(v194 + 64) = MEMORY[0x1E69E6158];
  *(v194 + 72) = v196;
  *(v194 + 80) = 1;
  v197 = v256;
  *(v194 + 104) = MEMORY[0x1E69E6370];
  *(v194 + 112) = v197;
  *(v194 + 120) = 0xD000000000000011;
  *(v194 + 128) = 0x80000001CA9C3D40;
  v198 = v255;
  *(v194 + 144) = v195;
  *(v194 + 152) = v198;
  v199 = sub_1CA94C438();
  v249 = v200;
  v250 = v199;
  v201 = sub_1CA94C438();
  v248 = v202;
  v251 = v244;
  MEMORY[0x1EEE9AC00](v201);
  v203 = v244 - v270;
  sub_1CA948D98();
  v204 = v267;
  v205 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v205);
  v206 = v268;
  sub_1CA948B68();

  v207 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v208 = sub_1CA2F9F14(v250, v249, v201, v248, 0, 0, v203, v244 - v206);
  *(v194 + 184) = v266;
  *(v194 + 160) = v208;
  sub_1CA94C1E8();
  *(v263 + 56) = sub_1CA2F864C();
  v209 = swift_allocObject();
  *(v209 + 16) = v259;
  v211 = v252;
  v210 = v253;
  *(v209 + 32) = v257;
  *(v209 + 40) = v211;
  *(v209 + 48) = v210;
  v212 = MEMORY[0x1E69E6158];
  v213 = v256;
  *(v209 + 64) = MEMORY[0x1E69E6158];
  *(v209 + 72) = v213;
  *(v209 + 80) = 0x7475706E494657;
  *(v209 + 88) = 0xE700000000000000;
  v214 = v255;
  *(v209 + 104) = v212;
  *(v209 + 112) = v214;
  *&v259 = sub_1CA94C438();
  v257 = v215;
  v216 = sub_1CA94C438();
  v218 = v217;
  v262 = v244;
  MEMORY[0x1EEE9AC00](v216);
  v219 = v244 - v270;
  sub_1CA948D98();
  v220 = [v204 bundleURL];
  MEMORY[0x1EEE9AC00](v220);
  sub_1CA948B68();

  v221 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v209 + 120) = sub_1CA2F9F14(v259, v257, v216, v218, 0, 0, v219, v244 - v206);
  *(v209 + 144) = v266;
  *(v209 + 152) = @"Multiline";
  *(v209 + 184) = MEMORY[0x1E69E6370];
  *(v209 + 160) = 1;
  v222 = @"Multiline";
  sub_1CA94C1E8();
  v223 = sub_1CA2F864C();
  v224 = v263;
  *(v263 + 64) = v223;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v226 = v265;
  v265[55] = v224;
  v226[58] = v225;
  v226[59] = @"ParameterSummary";
  v227 = @"ParameterSummary";
  v228 = sub_1CA94C438();
  v230 = v229;
  v231 = sub_1CA94C438();
  v233 = v232;
  MEMORY[0x1EEE9AC00](v231);
  v234 = v244 - v270;
  sub_1CA948D98();
  v235 = [v267 bundleURL];
  MEMORY[0x1EEE9AC00](v235);
  v236 = v244 - v268;
  sub_1CA948B68();

  v237 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v238 = sub_1CA2F9F14(v228, v230, v231, v233, 0, 0, v234, v236);
  v239 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v240 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v241 = v265;
  v265[60] = v239;
  v241[63] = v240;
  v241[64] = @"RemoteExecuteOnPlatforms";
  v241[68] = v258;
  v241[65] = &unk_1F4A0A778;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v242 = @"RemoteExecuteOnPlatforms";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA642B34()
{
  v115 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v120 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v121 = v12;
  v13 = v109 - v120;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v119 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v122 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v118 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v109 - v118;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 104) = v117;
  *(inited + 80) = v19;
  *(inited + 112) = sub_1CA94C368();
  *(inited + 120) = 0xD000000000000010;
  *(inited + 128) = 0x80000001CA9934F0;
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"Description";
  *&v116 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438();
  v113 = v24;
  v25 = sub_1CA94C438();
  v27 = v26;
  v114 = v109;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v109 - v120;
  sub_1CA948D98();
  v29 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v109 - v118;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v113, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v117;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v33 = v116;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v33;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v34 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 1802398060;
  *(inited + 248) = 0xE400000000000000;
  *(inited + 264) = v34;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v34;
  *(inited + 312) = @"Input";
  v35 = v34;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  v116 = xmmword_1CA981350;
  *(v36 + 16) = xmmword_1CA981350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 0x7475706E494657;
  *(v36 + 104) = 0xE700000000000000;
  *(v36 + 120) = v35;
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 1;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  *(v36 + 184) = 0xE500000000000000;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v114;
  *(v36 + 192) = &unk_1F4A0A7A8;
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"IconSymbolColor";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v113 = v43;
  *(inited + 320) = v42;
  *(inited + 344) = v43;
  *(inited + 352) = @"Name";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v110 = v46;
  v47 = sub_1CA94C438();
  v49 = v48;
  v111 = v109;
  MEMORY[0x1EEE9AC00](v47);
  v50 = v109 - v120;
  sub_1CA948D98();
  v51 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v109 - v118;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v45, v110, v47, v49, 0, 0, v50, v52);
  v54 = v117;
  *(inited + 384) = v117;
  *(inited + 392) = @"Output";
  v55 = swift_allocObject();
  *(v55 + 16) = v116;
  *(v55 + 32) = 0x75736F6C63736944;
  *(v55 + 40) = 0xEF6C6576654C6572;
  *(v55 + 48) = 0x63696C627550;
  *(v55 + 56) = 0xE600000000000000;
  *(v55 + 72) = MEMORY[0x1E69E6158];
  *(v55 + 80) = 0x656C7069746C754DLL;
  *(v55 + 88) = 0xE800000000000000;
  *(v55 + 96) = 1;
  *(v55 + 120) = MEMORY[0x1E69E6370];
  *(v55 + 128) = 0x614E74757074754FLL;
  *(v55 + 136) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438();
  v110 = v58;
  v111 = v57;
  v59 = sub_1CA94C438();
  v61 = v60;
  v112 = v109;
  MEMORY[0x1EEE9AC00](v59);
  v62 = v109 - v120;
  sub_1CA948D98();
  v63 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v109 - v118;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 144) = sub_1CA2F9F14(v111, v110, v59, v61, 0, 0, v62, v64);
  *(v55 + 168) = v54;
  *(v55 + 176) = 0x7365707954;
  *(v55 + 216) = v114;
  *(v55 + 184) = 0xE500000000000000;
  *(v55 + 192) = &unk_1F4A0A7D8;
  v66 = MEMORY[0x1E69E6158];
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v113;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v114 = swift_allocObject();
  *(v114 + 1) = xmmword_1CA9813B0;
  v113 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v67 = swift_allocObject();
  *(v67 + 16) = v116;
  *(v67 + 32) = @"Class";
  *(v67 + 40) = 0xD000000000000014;
  *(v67 + 48) = 0x80000001CA99B500;
  *(v67 + 64) = v66;
  *(v67 + 72) = @"Key";
  *(v67 + 80) = 0x7475706E494657;
  *(v67 + 88) = 0xE700000000000000;
  *(v67 + 104) = v66;
  *(v67 + 112) = @"Label";
  v68 = @"Parameters";
  v69 = @"Class";
  v70 = @"Key";
  v71 = @"Label";
  v72 = sub_1CA94C438();
  v111 = v73;
  v112 = v72;
  v74 = sub_1CA94C438();
  v110 = v75;
  *&v116 = v109;
  MEMORY[0x1EEE9AC00](v74);
  v76 = v120;
  sub_1CA948D98();
  v77 = v119;
  v78 = [v119 bundleURL];
  v109[1] = v109;
  MEMORY[0x1EEE9AC00](v78);
  v79 = v118;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 120) = sub_1CA2F9F14(v112, v111, v74, v110, 0, 0, v109 - v76, v109 - v79);
  v81 = v117;
  *(v67 + 144) = v117;
  *(v67 + 152) = @"Placeholder";
  v82 = @"Placeholder";
  v83 = sub_1CA94C438();
  v111 = v84;
  v112 = v83;
  v110 = sub_1CA94C438();
  v86 = v85;
  *&v116 = v109;
  MEMORY[0x1EEE9AC00](v110);
  v87 = v109 - v76;
  sub_1CA948D98();
  v88 = [v77 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v112, v111, v110, v86, 0, 0, v87, v109 - v79);
  *(v67 + 184) = v81;
  *(v67 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v91 = sub_1CA2F864C();
  v92 = v114;
  v114[4] = v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 440) = v92;
  *(inited + 464) = v93;
  *(inited + 472) = @"ParameterSummary";
  v94 = @"ParameterSummary";
  v95 = sub_1CA94C438();
  v97 = v96;
  v98 = sub_1CA94C438();
  v100 = v99;
  v117 = v109;
  MEMORY[0x1EEE9AC00](v98);
  v101 = v109 - v120;
  sub_1CA948D98();
  v102 = [v119 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v95, v97, v98, v100, 0, 0, v101, v109 - v79);
  v105 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v106 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 480) = v105;
  *(inited + 504) = v106;
  *(inited + 512) = @"ResidentCompatible";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v107 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA643A8C()
{
  v250 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9D9380;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v256 = inited;
  v261 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v262 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA94C438();
  v13 = v12;
  v14 = sub_1CA948E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v267 = v16;
  v265 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v242 - v265;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDB9F690;
  v264 = qword_1EDB9F690;
  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v263 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v266 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v242 - v266;
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v262, v10, v11, v13, 0, 0, v17, v22);
  v262 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v262;
  *(v6 + 40) = v24;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v25 = v261;
  v26 = sub_1CA6B3784();
  v27 = v256;
  v256[15] = v26;
  v27[18] = v25;
  v27[19] = @"Name";
  v28 = @"Name";
  v29 = sub_1CA94C438();
  v31 = v30;
  v32 = sub_1CA94C438();
  v34 = v33;
  v261 = &v242;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v242 - v265;
  sub_1CA948D98();
  v36 = [v18 bundleURL];
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v242 - v266;
  sub_1CA948B68();

  v38 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v39 = sub_1CA2F9F14(v29, v31, v32, v34, 0, 0, v35, v37);
  v40 = v262;
  v27[20] = v39;
  v27[23] = v40;
  v27[24] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  v255 = xmmword_1CA9813C0;
  *(v41 + 16) = xmmword_1CA9813C0;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 48) = 0;
  *(v41 + 72) = v42;
  *(v41 + 80) = 0x614E74757074754FLL;
  *(v41 + 88) = 0xEA0000000000656DLL;
  v43 = @"Output";
  v44 = sub_1CA94C438();
  v259 = v45;
  v260 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v261 = &v242;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v242 - v265;
  sub_1CA948D98();
  v50 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v242 - v266;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v41 + 96) = sub_1CA2F9F14(v260, v259, v46, v48, 0, 0, v49, v51);
  *(v41 + 120) = v40;
  *(v41 + 128) = 0x7365707954;
  *(v41 + 136) = 0xE500000000000000;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 168) = v249;
  *(v41 + 144) = &unk_1F4A0A888;
  v53 = MEMORY[0x1E69E6158];
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v27[25] = v54;
  v27[28] = v55;
  v27[29] = @"Parameters";
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v261 = swift_allocObject();
  *(v261 + 1) = xmmword_1CA98B2D0;
  v260 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_initStackObject();
  v252 = xmmword_1CA981350;
  *(v56 + 16) = xmmword_1CA981350;
  v248 = 0x80000001CA99B500;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000014;
  *(v56 + 48) = 0x80000001CA99B500;
  *(v56 + 64) = v53;
  *(v56 + 72) = @"Key";
  strcpy((v56 + 80), "WFTrelloName");
  *(v56 + 93) = 0;
  *(v56 + 94) = -5120;
  *(v56 + 104) = v53;
  *(v56 + 112) = @"Label";
  v57 = @"Class";
  v58 = @"Key";
  v59 = @"Label";
  v60 = v57;
  v61 = v58;
  v62 = v59;
  v247 = v60;
  v246 = v61;
  v251 = v62;
  v63 = @"Parameters";
  v64 = sub_1CA94C438();
  v66 = v65;
  v67 = sub_1CA94C438();
  v69 = v68;
  v258 = &v242;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v242 - v265;
  sub_1CA948D98();
  v71 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v242 - v266;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 120) = sub_1CA2F9F14(v64, v66, v67, v69, 0, 0, v70, v72);
  *(v56 + 144) = v262;
  *(v56 + 152) = @"TextAlignment";
  v74 = MEMORY[0x1E69E6158];
  *(v56 + 184) = MEMORY[0x1E69E6158];
  *(v56 + 160) = 0x7468676952;
  *(v56 + 168) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v258 = v75;
  v257 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  *&v254 = @"TextAlignment";
  sub_1CA94C1E8();
  v261[4] = sub_1CA2F864C();
  v76 = swift_initStackObject();
  *(v76 + 16) = v255;
  v78 = v246;
  v77 = v247;
  *(v76 + 32) = v247;
  *(v76 + 40) = 0xD00000000000001CLL;
  *(v76 + 48) = 0x80000001CA9A0130;
  *(v76 + 64) = v74;
  *(v76 + 72) = v78;
  strcpy((v76 + 80), "WFTrelloBoard");
  *(v76 + 94) = -4864;
  v79 = v251;
  *(v76 + 104) = v74;
  *(v76 + 112) = v79;
  v245 = v77;
  v247 = v78;
  *&v255 = v79;
  v80 = sub_1CA94C438();
  v82 = v81;
  v83 = sub_1CA94C438();
  v85 = v84;
  v251 = &v242;
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v242 - v265;
  sub_1CA948D98();
  v87 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v242 - v266;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v80, v82, v83, v85, 0, 0, v86, v88);
  *(v76 + 144) = v262;
  *(v76 + 120) = v90;
  sub_1CA94C1E8();
  v261[5] = sub_1CA2F864C();
  v91 = swift_allocObject();
  *(v91 + 16) = v252;
  *(v91 + 32) = sub_1CA94C368();
  strcpy((v91 + 40), "WFTrelloBoard");
  *(v91 + 54) = -4864;
  v92 = MEMORY[0x1E69E6158];
  v93 = v245;
  *(v91 + 64) = MEMORY[0x1E69E6158];
  *(v91 + 72) = v93;
  *(v91 + 80) = 0xD00000000000001BLL;
  *(v91 + 88) = 0x80000001CA9D1E80;
  v94 = v247;
  *(v91 + 104) = v92;
  *(v91 + 112) = v94;
  strcpy((v91 + 120), "WFTrelloList");
  *(v91 + 133) = 0;
  *(v91 + 134) = -5120;
  v95 = v255;
  *(v91 + 144) = v92;
  *(v91 + 152) = v95;
  *&v252 = v93;
  v251 = v94;
  *&v255 = v95;
  v96 = sub_1CA94C438();
  v98 = v97;
  v99 = sub_1CA94C438();
  v101 = v100;
  v247 = &v242;
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v242 - v265;
  sub_1CA948D98();
  v103 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v242 - v266;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v104);
  *(v91 + 184) = v262;
  *(v91 + 160) = v106;
  sub_1CA94C1E8();
  v261[6] = sub_1CA2F864C();
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1CA981380;
  v109 = v251;
  v108 = v252;
  *(v107 + 32) = v252;
  *(v107 + 40) = 0xD000000000000014;
  *(v107 + 48) = 0x80000001CA9AB710;
  v110 = MEMORY[0x1E69E6158];
  *(v107 + 64) = MEMORY[0x1E69E6158];
  *(v107 + 72) = v109;
  *(v107 + 80) = 0x6F6C6C6572544657;
  *(v107 + 88) = 0xEF65746144657544;
  v111 = v255;
  *(v107 + 104) = v110;
  *(v107 + 112) = v111;
  v246 = v108;
  v251 = v109;
  v247 = v111;
  *&v252 = sub_1CA94C438();
  v245 = v112;
  v113 = sub_1CA94C438();
  v115 = v114;
  *&v255 = &v242;
  MEMORY[0x1EEE9AC00](v113);
  v116 = &v242 - v265;
  sub_1CA948D98();
  v117 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  v118 = v266;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v107 + 120) = sub_1CA2F9F14(v252, v245, v113, v115, 0, 0, v116, &v242 - v118);
  v120 = v262;
  *(v107 + 144) = v262;
  *(v107 + 152) = @"Placeholder";
  *&v255 = @"Placeholder";
  v121 = sub_1CA94C438();
  v244 = v122;
  v245 = v121;
  v123 = sub_1CA94C438();
  v243 = v124;
  *&v252 = &v242;
  MEMORY[0x1EEE9AC00](v123);
  v125 = &v242 - v265;
  sub_1CA948D98();
  v126 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v107 + 160) = sub_1CA2F9F14(v245, v244, v123, v243, 0, 0, v125, &v242 - v118);
  *(v107 + 184) = v120;
  *(v107 + 192) = @"ResultType";
  *(v107 + 200) = 0x676E69727453;
  *(v107 + 208) = 0xE600000000000000;
  v128 = MEMORY[0x1E69E6158];
  v129 = v254;
  *(v107 + 224) = MEMORY[0x1E69E6158];
  *(v107 + 232) = v129;
  *(v107 + 264) = v128;
  v130 = v128;
  *(v107 + 240) = 0x7468676952;
  *(v107 + 248) = 0xE500000000000000;
  v131 = @"ResultType";
  sub_1CA94C1E8();
  v261[7] = sub_1CA2F864C();
  v132 = swift_allocObject();
  v254 = xmmword_1CA981370;
  *(v132 + 16) = xmmword_1CA981370;
  v133 = v246;
  *(v132 + 32) = v246;
  *(v132 + 40) = 0xD000000000000016;
  *(v132 + 48) = 0x80000001CA99C4A0;
  *(v132 + 64) = v130;
  *(v132 + 72) = @"DefaultValue";
  *(v132 + 80) = 7368532;
  *(v132 + 88) = 0xE300000000000000;
  *(v132 + 104) = v130;
  *(v132 + 112) = @"Items";
  *&v252 = swift_allocObject();
  *(v252 + 16) = xmmword_1CA981360;
  v253 = v133;
  v134 = @"DefaultValue";
  v135 = @"Items";
  v136 = sub_1CA94C438();
  v244 = v137;
  v245 = v136;
  v138 = sub_1CA94C438();
  v243 = v139;
  v246 = &v242;
  MEMORY[0x1EEE9AC00](v138);
  v140 = v265;
  sub_1CA948D98();
  v141 = v264;
  v142 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v242 - v266;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v245, v244, v138, v243, 0, 0, &v242 - v140, v143);
  *(v252 + 32) = v145;
  v146 = sub_1CA94C438();
  v244 = v147;
  v245 = v146;
  v148 = sub_1CA94C438();
  v243 = v149;
  v246 = &v242;
  MEMORY[0x1EEE9AC00](v148);
  v150 = &v242 - v140;
  sub_1CA948D98();
  v151 = [v141 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  v152 = v266;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v154 = sub_1CA2F9F14(v245, v244, v148, v243, 0, 0, v150, &v242 - v152);
  v155 = v252;
  *(v252 + 40) = v154;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v132 + 120) = v155;
  v157 = v251;
  *(v132 + 144) = v156;
  *(v132 + 152) = v157;
  *(v132 + 160) = 0xD000000000000014;
  *(v132 + 168) = 0x80000001CA9D9510;
  v158 = v247;
  *(v132 + 184) = MEMORY[0x1E69E6158];
  *(v132 + 192) = v158;
  v251 = v157;
  *&v252 = v158;
  v159 = sub_1CA94C438();
  v246 = v160;
  v161 = sub_1CA94C438();
  v163 = v162;
  v247 = &v242;
  MEMORY[0x1EEE9AC00](v161);
  v164 = &v242 - v265;
  sub_1CA948D98();
  v165 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v167 = sub_1CA2F9F14(v159, v246, v161, v163, 0, 0, v164, &v242 - v152);
  *(v132 + 224) = v262;
  *(v132 + 200) = v167;
  sub_1CA94C1E8();
  v261[8] = sub_1CA2F864C();
  v168 = swift_allocObject();
  *(v168 + 16) = v254;
  *(v168 + 32) = v253;
  *(v168 + 40) = 0xD000000000000019;
  *(v168 + 48) = 0x80000001CA99B030;
  *(v168 + 64) = MEMORY[0x1E69E6158];
  *(v168 + 72) = @"Description";
  v169 = @"Description";
  v170 = sub_1CA94C438();
  v245 = v171;
  v246 = v170;
  v172 = sub_1CA94C438();
  v244 = v173;
  v247 = &v242;
  MEMORY[0x1EEE9AC00](v172);
  v174 = v265;
  sub_1CA948D98();
  v175 = v264;
  v176 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v176);
  v177 = &v242 - v266;
  sub_1CA948B68();

  v178 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v168 + 80) = sub_1CA2F9F14(v246, v245, v172, v244, 0, 0, &v242 - v174, v177);
  v179 = v251;
  *(v168 + 104) = v262;
  *(v168 + 112) = v179;
  v247 = 0xD000000000000013;
  *(v168 + 120) = 0xD000000000000013;
  *(v168 + 128) = 0x80000001CA9D95F0;
  v180 = v252;
  *(v168 + 144) = MEMORY[0x1E69E6158];
  *(v168 + 152) = v180;
  v181 = sub_1CA94C438();
  v244 = v182;
  v245 = v181;
  v243 = sub_1CA94C438();
  v184 = v183;
  v246 = &v242;
  MEMORY[0x1EEE9AC00](v243);
  sub_1CA948D98();
  v185 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v185);
  v186 = v266;
  sub_1CA948B68();

  v187 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v168 + 160) = sub_1CA2F9F14(v245, v244, v243, v184, 0, 0, &v242 - v174, &v242 - v186);
  v188 = v262;
  v189 = v255;
  *(v168 + 184) = v262;
  *(v168 + 192) = v189;
  v190 = sub_1CA94C438();
  v244 = v191;
  v245 = v190;
  v192 = sub_1CA94C438();
  v243 = v193;
  v246 = &v242;
  MEMORY[0x1EEE9AC00](v192);
  v194 = v265;
  sub_1CA948D98();
  v195 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v195);
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v197 = sub_1CA2F9F14(v245, v244, v192, v243, 0, 0, &v242 - v194, &v242 - v186);
  *(v168 + 224) = v188;
  *(v168 + 200) = v197;
  sub_1CA94C1E8();
  v261[9] = sub_1CA2F864C();
  v198 = swift_allocObject();
  *(v198 + 16) = v254;
  *(v198 + 32) = v253;
  *(v198 + 40) = 0xD000000000000014;
  v199 = v247;
  *(v198 + 48) = v248;
  v200 = MEMORY[0x1E69E6158];
  v201 = v251;
  *(v198 + 64) = MEMORY[0x1E69E6158];
  *(v198 + 72) = v201;
  *(v198 + 80) = v199;
  *(v198 + 88) = 0x80000001CA9CCF00;
  v202 = v252;
  *(v198 + 104) = v200;
  *(v198 + 112) = v202;
  v203 = sub_1CA94C438();
  v253 = v204;
  *&v254 = v203;
  v205 = sub_1CA94C438();
  *&v252 = v206;
  v259 = &v242;
  MEMORY[0x1EEE9AC00](v205);
  sub_1CA948D98();
  v207 = v264;
  v208 = [v264 bundleURL];
  v251 = &v242;
  MEMORY[0x1EEE9AC00](v208);
  v209 = &v242 - v266;
  sub_1CA948B68();

  v210 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v198 + 120) = sub_1CA2F9F14(v254, v253, v205, v252, 0, 0, &v242 - v194, v209);
  *(v198 + 144) = v262;
  *(v198 + 152) = @"Multiline";
  *(v198 + 160) = 1;
  v211 = v255;
  *(v198 + 184) = MEMORY[0x1E69E6370];
  *(v198 + 192) = v211;
  v212 = @"Multiline";
  *&v255 = sub_1CA94C438();
  *&v254 = v213;
  v214 = sub_1CA94C438();
  v216 = v215;
  v259 = &v242;
  MEMORY[0x1EEE9AC00](v214);
  sub_1CA948D98();
  v217 = [v207 bundleURL];
  MEMORY[0x1EEE9AC00](v217);
  v218 = &v242 - v266;
  sub_1CA948B68();

  v219 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v220 = sub_1CA2F9F14(v255, v254, v214, v216, 0, 0, &v242 - v194, v218);
  *(v198 + 224) = v262;
  *(v198 + 200) = v220;
  sub_1CA94C1E8();
  v221 = sub_1CA2F864C();
  v222 = v261;
  v261[10] = v221;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v224 = v256;
  v256[30] = v222;
  v224[33] = v223;
  v224[34] = @"ParameterSummary";
  v225 = @"ParameterSummary";
  v226 = sub_1CA94C438();
  v228 = v227;
  v229 = sub_1CA94C438();
  v231 = v230;
  MEMORY[0x1EEE9AC00](v229);
  v232 = &v242 - v265;
  sub_1CA948D98();
  v233 = [v264 bundleURL];
  MEMORY[0x1EEE9AC00](v233);
  v234 = &v242 - v266;
  sub_1CA948B68();

  v235 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v236 = sub_1CA2F9F14(v226, v228, v229, v231, 0, 0, v232, v234);
  v237 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v238 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v239 = v256;
  v256[35] = v237;
  v239[38] = v238;
  v239[39] = @"RequiredResources";
  v239[43] = v249;
  v239[40] = &unk_1F4A0A8B8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v240 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}