uint64_t sub_1D88648C8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1D8B16610();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1D8B16610();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1D890026C(result);

  return sub_1D88647C8(v4, v2, 0);
}

uint64_t sub_1D88649A0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1D88649B8(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D886553C;

  return sub_1D884B2C8(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D8864AB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CVBundle(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for BundleSelector.Output(0) - 8);
  v10 = (v8 + *(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = *(v1 + v7);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D886553C;

  return sub_1D884C4A0(a1, v11, v12, v13, v1 + v6, v14, v1 + v8, v1 + v10);
}

uint64_t sub_1D8864C40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return sub_1D88B7A58(a1, v4);
}

uint64_t sub_1D8864D18(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + *(type metadata accessor for BundleSelector.Output(0) + 28));
  v6[2] = a1;
  return sub_1D8AD0124(sub_1D8864DA8, v6, v4) & 1;
}

uint64_t sub_1D8864DC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8864E7C()
{
  result = qword_1ECA642C8;
  if (!qword_1ECA642C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA642C8);
  }

  return result;
}

uint64_t sub_1D8864F10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8864FBC;

  return sub_1D884E4F8(a1, v5, v4);
}

uint64_t sub_1D8864FBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D886512C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D8B14E80() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ActionPredictor.BundleActionPredictionResult(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D886553C;

  return sub_1D88377C0(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t sub_1D8865290(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for CVBundle(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for BundleClassification.ClassificationType(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1D8B13240() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v1 + v12;
  v16 = *(v1 + v12);
  v17 = *(v15 + 8);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_1D8864FBC;

  return sub_1D8835E2C(a1, v13, v14, v1 + v5, v1 + v8, v1 + v11, v16, v17);
}

__n128 sub_1D8865584@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_1D88840C8(a1, a9, type metadata accessor for BuiltInAction);
  v17 = type metadata accessor for BuiltInActionExecutor.Request();
  sub_1D881F6FC(a2, a9 + v17[9], &qword_1ECA67980);
  *(a9 + v17[10]) = a3;
  v18 = (a9 + v17[11]);
  *v18 = a4;
  v18[1] = a5;
  *(a9 + v17[12]) = a6;
  *(a9 + v17[13]) = a7;
  sub_1D881F6FC(a8, a9 + v17[14], &qword_1ECA64340);
  v19 = a9 + v17[15];
  v20 = *(a10 + 48);
  *(v19 + 32) = *(a10 + 32);
  *(v19 + 48) = v20;
  *(v19 + 64) = *(a10 + 64);
  result = *(a10 + 16);
  *v19 = *a10;
  *(v19 + 16) = result;
  return result;
}

void sub_1D88656A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v32 = a4;
  v9 = type metadata accessor for BuiltInAction(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BuiltInActionExecutor.Request();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  if (qword_1ECA62128 != -1)
  {
    swift_once();
  }

  v16 = sub_1D8B151E0();
  __swift_project_value_buffer(v16, qword_1ECA66978);
  v17 = *(v13 + 16);
  v33 = a1;
  v17(v15, a1, v12);
  v18 = sub_1D8B151C0();
  v19 = sub_1D8B16200();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = a3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30 = a2;
    v23 = v22;
    v34 = v22;
    *v21 = 136315138;
    sub_1D8883FB0(v15, v11, type metadata accessor for BuiltInAction);
    v24 = sub_1D8B159E0();
    v26 = v25;
    (*(v13 + 8))(v15, v12);
    v27 = sub_1D89AC714(v24, v26, &v34);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_1D8783000, v18, v19, "executing built-in action: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v28 = v23;
    a2 = v30;
    MEMORY[0x1DA721330](v28, -1, -1);
    v29 = v21;
    a3 = v31;
    MEMORY[0x1DA721330](v29, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  os_unfair_lock_lock((v5 + 16));
  sub_1D886608C((v5 + 20), v5, v33, a2, a3, v32);
  os_unfair_lock_unlock((v5 + 16));
}

unint64_t sub_1D8865998(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v27 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x1E69E7CC0];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v26 = v1;
    while (1)
    {
      if (v28)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1DA71FC20](v2, v25);
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v27 + 16))
        {
          goto LABEL_41;
        }

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      sub_1D8B14160();
      sub_1D8B14580();
      v6 = MEMORY[0x1E69C9BE0];
      sub_1D8883B2C(&qword_1ECA64400, MEMORY[0x1E69C9BE0]);
      sub_1D8883B2C(&qword_1ECA64408, v6);
      v7 = sub_1D8B15D30();

      v8 = v7 >> 62;
      v9 = v7 >> 62 ? sub_1D8B16610() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          v12 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_1D8B16610();
        goto LABEL_19;
      }

      if (v10)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D8B16750();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D8B16610();
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v14 >> 1) - v13) < v30)
          {
            goto LABEL_43;
          }

          v16 = v12 + 8 * v13 + 32;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_45;
            }

            sub_1D881CF20(&qword_1ECA64418, &qword_1ECA64410);
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64410);
              v18 = sub_1D8A72970(v29, i, v7);
              v20 = *v19;

              (v18)(v29, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v4 = v26;
          if (v30 >= 1)
          {
            v21 = *(v12 + 16);
            v5 = __OFADD__(v21, v30);
            v22 = v21 + v30;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v12 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_24;
        }
      }

      v4 = v26;
      if (v30 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v4)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_1D8B16610();
    v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1D8B16610();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D8865D84()
{
  if (qword_1ECA62280 != -1)
  {
    swift_once();
  }

  return byte_1ECAA36D0;
}

uint64_t sub_1D8865DD4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64340);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  sub_1D87A0E38(v2 + *(a1 + 56), &v14 - v9, &qword_1ECA64340);
  v11 = type metadata accessor for ExecutionParameter();
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_5;
  }

  sub_1D87A0E38(v10, v8, &qword_1ECA64340);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D8883F50(v8, type metadata accessor for ExecutionParameter);
LABEL_5:
    v12 = 2;
    goto LABEL_6;
  }

  v12 = *v8;
LABEL_6:
  result = sub_1D87A14E4(v10, &qword_1ECA64340);
  *a2 = v12;
  return result;
}

uint64_t sub_1D8865F60@<X0>(char *a1@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8883FB0(v3, v5, type metadata accessor for BuiltInAction);
  result = swift_getEnumCaseMultiPayload();
  if (result > 0xE)
  {
    goto LABEL_5;
  }

  v7 = 1;
  if (((1 << result) & 0x6600) == 0)
  {
    if (result == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);

      result = sub_1D87A14E4(v5, &qword_1ECA635B8);
    }

    else if (result != 6)
    {
LABEL_5:
      result = sub_1D8883F50(v5, type metadata accessor for BuiltInAction);
      v7 = 2;
      goto LABEL_8;
    }

    v7 = 0;
  }

LABEL_8:
  *a1 = v7;
  return result;
}

uint64_t sub_1D886608C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a3;
  v45 = a5;
  v46 = a2;
  v48 = a6;
  v44 = a4;
  v7 = type metadata accessor for BuiltInActionExecutor.Request();
  v42 = *(v7 - 8);
  v43 = v7;
  v40 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = &v36 - v10;
  v11 = type metadata accessor for ResultLookupState(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64390);
  v38 = *(v14 - 8);
  v39 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v37 = &v36 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64398);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  v20 = *(v49 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v49);
  v47 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  LODWORD(a1) = *a1;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8650], v16);
  sub_1D8B15EB0();
  (*(v17 + 8))(v19, v16);
  if (a1 == 1)
  {
    *v13 = 0xD000000000000041;
    v13[1] = 0x80000001D8B42980;
    swift_storeEnumTagMultiPayload();
    v25 = v37;
    v26 = v49;
    sub_1D8B15EE0();
    (*(v38 + 8))(v25, v39);
    sub_1D8B15EF0();
  }

  else
  {
    v27 = sub_1D8B15EA0();
    (*(*(v27 - 8) + 56))(v51, 1, 1, v27);
    v28 = v42;
    v29 = v43;
    (*(v42 + 16))(v50, v41, v43);
    v30 = v49;
    (*(v20 + 16))(v47, v24, v49);
    v31 = (*(v28 + 80) + 56) & ~*(v28 + 80);
    v32 = (v40 + *(v20 + 80) + v31) & ~*(v20 + 80);
    v26 = v30;
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    v34 = v45;
    *(v33 + 4) = v44;
    *(v33 + 5) = v34;
    *(v33 + 6) = v46;
    (*(v28 + 32))(&v33[v31], v50, v29);
    (*(v20 + 32))(&v33[v32], v47, v26);

    sub_1D8891CA0(0, 0, v51, &unk_1D8B23F68, v33);
  }

  return (*(v20 + 8))(v24, v26);
}

uint64_t sub_1D88665E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_1D8864FBC;

  return sub_1D88666A4(a5, a6, a7, a8);
}

uint64_t sub_1D88666A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for ExecutionParameter();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A8);
  v5[11] = swift_task_alloc();
  v5[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64340);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = type metadata accessor for BuiltInAction(0);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for BuiltInActionExecutor.Request();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88668B8, 0, 0);
}

uint64_t sub_1D88668B8()
{
  v113 = v0;
  if (qword_1ECA62128 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[2];
  v5 = sub_1D8B151E0();
  __swift_project_value_buffer(v5, qword_1ECA66978);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_1D8B151C0();
  v8 = sub_1D8B16230();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[22];
  v12 = v0[19];
  v11 = v0[20];
  if (v9)
  {
    v109 = v6;
    v13 = v0[18];
    v108 = v8;
    v14 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v112 = v107;
    *v14 = 136315138;
    sub_1D8883FB0(v10, v13, type metadata accessor for BuiltInAction);
    v15 = sub_1D8B159E0();
    v17 = v16;
    v110 = *(v11 + 8);
    v110(v10, v12);
    v18 = v15;
    v6 = v109;
    v19 = sub_1D89AC714(v18, v17, &v112);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1D8783000, v7, v108, "executing action %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v107);
    MEMORY[0x1DA721330](v107, -1, -1);
    MEMORY[0x1DA721330](v14, -1, -1);
  }

  else
  {

    v110 = *(v11 + 8);
    v110(v10, v12);
  }

  v6(v0[21], v0[2], v0[19]);
  v20 = sub_1D8B151C0();
  v21 = sub_1D8B16230();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[21];
  v24 = v0[19];
  if (v22)
  {
    v25 = v0[15];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v112 = v27;
    *v26 = 136315138;
    sub_1D87A0E38(v23 + *(v24 + 56), v25, &qword_1ECA64340);
    v28 = sub_1D8B159E0();
    v30 = v29;
    v110(v23, v24);
    v31 = sub_1D89AC714(v28, v30, &v112);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_1D8783000, v20, v21, "execution parameter: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1DA721330](v27, -1, -1);
    MEMORY[0x1DA721330](v26, -1, -1);
  }

  else
  {

    v110(v23, v24);
  }

  sub_1D8883FB0(v0[2], v0[17], type metadata accessor for BuiltInAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 9)
  {
    if (EnumCaseMultiPayload > 12)
    {
      switch(EnumCaseMultiPayload)
      {
        case 13:
          v84 = swift_task_alloc();
          v0[30] = v84;
          *v84 = v0;
          v84[1] = sub_1D8867E34;
          v85 = v0[4];
          v86 = v0[5];
          v88 = v0[2];
          v87 = v0[3];

          return sub_1D887F218(v88, v87, v85, v86);
        case 14:
          v89 = swift_task_alloc();
          v0[31] = v89;
          *v89 = v0;
          v89[1] = sub_1D8867F30;
          v90 = v0[4];
          v91 = v0[5];
          v93 = v0[2];
          v92 = v0[3];

          return sub_1D887FA18(v93, v92, v90, v91);
        case 16:
          v111 = sub_1D8880A30;
          v44 = swift_task_alloc();
          v0[34] = v44;
          *v44 = v0;
          v45 = sub_1D886834C;
          goto LABEL_30;
      }
    }

    else
    {
      if ((EnumCaseMultiPayload - 11) < 2)
      {
        v39 = swift_task_alloc();
        v0[24] = v39;
        *v39 = v0;
        v39[1] = sub_1D886773C;
        v40 = v0[4];
        v41 = v0[5];
        v43 = v0[2];
        v42 = v0[3];

        return sub_1D8879EC8(v43, v42, v40, v41);
      }

      if (EnumCaseMultiPayload == 10)
      {
        v53 = swift_task_alloc();
        v0[23] = v53;
        *v53 = v0;
        v53[1] = sub_1D8867640;
        v54 = v0[5];
        v55 = v0[3];
        v56 = v0[4];
        v57 = v0[2];

        return sub_1D8868448(v57, v55, v56, v54);
      }
    }

LABEL_60:
    sub_1D8883F50(v0[17], type metadata accessor for BuiltInAction);
    v94 = v0[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
    sub_1D8B15EF0();
    os_unfair_lock_lock((v94 + 16));
    *(v94 + 20) = 0;
    os_unfair_lock_unlock((v94 + 16));

    v95 = v0[1];

    return v95();
  }

  if (EnumCaseMultiPayload <= 3)
  {
    switch(EnumCaseMultiPayload)
    {
      case 0:
        sub_1D8883F50(v0[17], type metadata accessor for BuiltInAction);
        v74 = swift_task_alloc();
        v0[25] = v74;
        *v74 = v0;
        v74[1] = sub_1D8867838;
        v75 = v0[4];
        v76 = v0[5];
        v78 = v0[2];
        v77 = v0[3];

        return sub_1D887ABA4(v78, v77, v75, v76);
      case 1:
        sub_1D8883F50(v0[17], type metadata accessor for BuiltInAction);
        v79 = swift_task_alloc();
        v0[32] = v79;
        *v79 = v0;
        v79[1] = sub_1D886802C;
        v80 = v0[5];
        v81 = v0[3];
        v82 = v0[4];
        v83 = v0[2];

        return sub_1D8876510(v83, v81, v82, v80);
      case 3:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);

        v111 = sub_1D887FDB8;
        v44 = swift_task_alloc();
        v0[33] = v44;
        *v44 = v0;
        v45 = sub_1D8868128;
LABEL_30:
        v44[1] = v45;
        v46 = v0[4];
        v47 = v0[5];
        v49 = v0[2];
        v48 = v0[3];

        return v111(v49, v48, v46, v47);
    }

    goto LABEL_60;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v50 = swift_task_alloc();
        v0[29] = v50;
        *v50 = v0;
        v50[1] = sub_1D8867D38;
        v52 = v0[2];
        v51 = v0[3];

        return sub_1D887E79C(v52, v51);
      }

      goto LABEL_60;
    }

    v63 = v0[14];
    v65 = v0[10];
    v64 = v0[11];
    v66 = v0[7];
    v67 = v0[8];
    v68 = v0[2];
    v69 = *(v0[19] + 56);
    swift_storeEnumTagMultiPayload();
    (*(v67 + 56))(v63, 0, 1, v66);
    v70 = *(v65 + 48);
    sub_1D87A0E38(v68 + v69, v64, &qword_1ECA64340);
    sub_1D87A0E38(v63, v64 + v70, &qword_1ECA64340);
    v71 = *(v67 + 48);
    if (v71(v64, 1, v66) == 1)
    {
      v72 = v0[7];
      sub_1D87A14E4(v0[14], &qword_1ECA64340);
      if (v71(v64 + v70, 1, v72) == 1)
      {
        sub_1D87A14E4(v0[11], &qword_1ECA64340);
        v73 = 1;
LABEL_67:
        v102 = swift_task_alloc();
        v0[28] = v102;
        *v102 = v0;
        v102[1] = sub_1D8867C3C;
        v103 = v0[5];
        v104 = v0[3];
        v105 = v0[4];
        v106 = v0[2];

        return sub_1D8875E04(v106, v73 & 1, v104, v105, v103);
      }
    }

    else
    {
      v96 = v0[7];
      sub_1D87A0E38(v0[11], v0[13], &qword_1ECA64340);
      v97 = v71(v64 + v70, 1, v96);
      v98 = v0[13];
      v99 = v0[14];
      if (v97 != 1)
      {
        v100 = v0[11];
        v101 = v0[9];
        sub_1D88840C8(v64 + v70, v101, type metadata accessor for ExecutionParameter);
        v73 = _s22VisualIntelligenceCore18ExecutionParameterO2eeoiySbAC_ACtFZ_0(v98, v101);
        sub_1D8883F50(v101, type metadata accessor for ExecutionParameter);
        sub_1D87A14E4(v99, &qword_1ECA64340);
        sub_1D8883F50(v98, type metadata accessor for ExecutionParameter);
        sub_1D87A14E4(v100, &qword_1ECA64340);
        goto LABEL_67;
      }

      sub_1D87A14E4(v0[14], &qword_1ECA64340);
      sub_1D8883F50(v98, type metadata accessor for ExecutionParameter);
    }

    sub_1D87A14E4(v0[11], &qword_1ECA643A8);
    v73 = 0;
    goto LABEL_67;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v33 = swift_task_alloc();
      v0[27] = v33;
      *v33 = v0;
      v33[1] = sub_1D8867A30;
      v34 = v0[5];
      v35 = v0[3];
      v36 = v0[4];
      v37 = v0[2];

      return sub_1D8870C00(v37, v35, v36, v34);
    }

    goto LABEL_60;
  }

  v58 = swift_task_alloc();
  v0[26] = v58;
  *v58 = v0;
  v58[1] = sub_1D8867934;
  v59 = v0[4];
  v60 = v0[5];
  v62 = v0[2];
  v61 = v0[3];

  return sub_1D887C43C(v62, v61, v59, v60);
}

uint64_t sub_1D8867640()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8884518, 0, 0);
}

uint64_t sub_1D886773C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8884518, 0, 0);
}

uint64_t sub_1D8867838()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8884518, 0, 0);
}

uint64_t sub_1D8867934()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8884518, 0, 0);
}

uint64_t sub_1D8867A30()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8867B2C, 0, 0);
}

uint64_t sub_1D8867B2C()
{
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  sub_1D8B15EF0();
  os_unfair_lock_lock((v1 + 16));
  *(v1 + 20) = 0;
  os_unfair_lock_unlock((v1 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D8867C3C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8884518, 0, 0);
}

uint64_t sub_1D8867D38()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8884518, 0, 0);
}

uint64_t sub_1D8867E34()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8884518, 0, 0);
}

uint64_t sub_1D8867F30()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8884518, 0, 0);
}

uint64_t sub_1D886802C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8884518, 0, 0);
}

uint64_t sub_1D8868128()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8868224, 0, 0);
}

uint64_t sub_1D8868224()
{
  sub_1D87A14E4(v0[17], &qword_1ECA635B8);
  v1 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  sub_1D8B15EF0();
  os_unfair_lock_lock((v1 + 16));
  *(v1 + 20) = 0;
  os_unfair_lock_unlock((v1 + 16));

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D886834C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8884518, 0, 0);
}

uint64_t sub_1D8868448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[63] = a4;
  v5[64] = v4;
  v5[61] = a2;
  v5[62] = a3;
  v5[60] = a1;
  sub_1D8B141C0();
  v5[65] = swift_task_alloc();
  v6 = sub_1D8B14170();
  v5[66] = v6;
  v5[67] = *(v6 - 8);
  v5[68] = swift_task_alloc();
  v7 = sub_1D8B14320();
  v5[69] = v7;
  v5[70] = *(v7 - 8);
  v5[71] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643B0);
  v5[72] = swift_task_alloc();
  v8 = sub_1D8B15240();
  v5[73] = v8;
  v5[74] = *(v8 - 8);
  v5[75] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643B8);
  v5[76] = swift_task_alloc();
  v9 = sub_1D8B12DE0();
  v5[77] = v9;
  v5[78] = *(v9 - 8);
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  v5[81] = swift_task_alloc();
  v5[82] = swift_task_alloc();
  v10 = sub_1D8B131D0();
  v5[83] = v10;
  v5[84] = *(v10 - 8);
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();
  v11 = sub_1D8B145A0();
  v5[87] = v11;
  v5[88] = *(v11 - 8);
  v5[89] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643C0);
  v5[90] = swift_task_alloc();
  v12 = type metadata accessor for AFMResult(0);
  v5[91] = v12;
  v5[92] = *(v12 - 8);
  v5[93] = swift_task_alloc();
  v5[94] = type metadata accessor for DetectionResult(0);
  v5[95] = swift_task_alloc();
  type metadata accessor for CVTrackSnapshot(0);
  v5[96] = swift_task_alloc();
  v5[97] = type metadata accessor for CVBundle.BundleType(0);
  v5[98] = swift_task_alloc();
  v13 = sub_1D8B13240();
  v5[99] = v13;
  v5[100] = *(v13 - 8);
  v5[101] = swift_task_alloc();
  v5[102] = type metadata accessor for DetectionRequest.Originator(0);
  v5[103] = swift_task_alloc();
  v5[104] = swift_task_alloc();
  v5[105] = type metadata accessor for DetectionRequest(0);
  v5[106] = swift_task_alloc();
  v5[107] = swift_task_alloc();
  v14 = sub_1D8B141D0();
  v5[108] = v14;
  v5[109] = *(v14 - 8);
  v5[110] = swift_task_alloc();
  v15 = sub_1D8B14250();
  v5[111] = v15;
  v5[112] = *(v15 - 8);
  v5[113] = swift_task_alloc();
  v16 = sub_1D8B142C0();
  v5[114] = v16;
  v5[115] = *(v16 - 8);
  v5[116] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643C8);
  v5[117] = swift_task_alloc();
  v17 = sub_1D8B14260();
  v5[118] = v17;
  v5[119] = *(v17 - 8);
  v5[120] = swift_task_alloc();
  type metadata accessor for EventLookupItem();
  v5[121] = swift_task_alloc();
  v5[122] = swift_task_alloc();
  v5[123] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v5[124] = swift_task_alloc();
  v18 = type metadata accessor for CVBundle(0);
  v5[125] = v18;
  v5[126] = *(v18 - 8);
  v5[127] = swift_task_alloc();
  v19 = sub_1D8B13350();
  v5[128] = v19;
  v5[129] = *(v19 - 8);
  v5[130] = swift_task_alloc();
  v5[131] = swift_task_alloc();
  sub_1D8B15930();
  v5[132] = swift_task_alloc();
  v5[133] = swift_task_alloc();
  v5[134] = swift_task_alloc();
  v5[135] = swift_task_alloc();
  v5[136] = type metadata accessor for ResultLookupState(0);
  v5[137] = swift_task_alloc();
  v5[138] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64390);
  v5[139] = v20;
  v5[140] = *(v20 - 8);
  v5[141] = swift_task_alloc();
  v5[142] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8868DDC, 0, 0);
}

uint64_t sub_1D8868DDC()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 480);
  *(v0 + 1144) = type metadata accessor for EventLookupState(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v0 + 1152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  sub_1D8B15EE0();
  v5 = *(v2 + 8);
  *(v0 + 1160) = v5;
  *(v0 + 1168) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = type metadata accessor for BuiltInActionExecutor.Request();
  *(v0 + 1176) = v6;
  v7 = *(v4 + *(v6 + 40));
  if (!v7)
  {
    goto LABEL_8;
  }

  *(v0 + 416) = 0;
  IOSurface = CVPixelBufferGetIOSurface(v7);
  if (IOSurface)
  {
    v9 = IOSurface;
    viCore_lockUnlockWithFence(v9);
  }

  VTCreateCGImageFromCVPixelBuffer(v7, 0, (v0 + 416));
  v10 = *(v0 + 416);
  *(v0 + 1184) = v10;
  if (v10)
  {
    *(v0 + 1192) = *(*(v0 + 512) + 24);
    sub_1D8B15E80();
    *(v0 + 1200) = sub_1D8B15E70();
    v12 = sub_1D8B15E00();

    return MEMORY[0x1EEE6DFA0](sub_1D88692BC, v12, v11);
  }

  else
  {
LABEL_8:
    v13 = *(v0 + 1136);
    v14 = *(v0 + 1112);
    v15 = *(v0 + 1104);
    *v15 = 0xD000000000000030;
    v15[1] = 0x80000001D8B429D0;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    v5(v13, v14);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1D88692BC()
{
  v1 = *(v0 + 1192);

  swift_getKeyPath();
  *(v0 + 424) = v1;
  sub_1D8883B2C(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
  sub_1D8B13520();

  *(v0 + 1401) = *(v1 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D88693D0, 0, 0);
}

uint64_t sub_1D88693D0()
{
  v205 = v0;
  v204[1] = *MEMORY[0x1E69E9840];
  if ((*(v0 + 1401) & 1) == 0)
  {
    v181 = *(v0 + 1184);
    v186 = *(v0 + 1160);
    v13 = *(v0 + 1136);
    v14 = *(v0 + 1112);
    v15 = *(v0 + 1104);
    sub_1D8B158D0();
    sub_1D8B132F0();
    *v15 = sub_1D8B159D0();
    v15[1] = v16;
    v15[2] = 0xD000000000000020;
    v15[3] = 0x80000001D8B42A50;
    v15[4] = 0;
    v15[5] = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();

    v186(v13, v14);
LABEL_8:

    v17 = *(v0 + 8);

    return v17();
  }

  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  sub_1D87A0E38(*(v0 + 480) + *(*(v0 + 1176) + 36), v3, &qword_1ECA67980);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1D87A14E4(*(v0 + 992), &qword_1ECA67980);
    if (qword_1EE0E4390 == -1)
    {
LABEL_4:
      v4 = sub_1D8B151E0();
      __swift_project_value_buffer(v4, qword_1EE0E4398);
      v5 = sub_1D8B151C0();
      v6 = sub_1D8B16210();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1D8783000, v5, v6, "no CVBundle for event lookup", v7, 2u);
        MEMORY[0x1DA721330](v7, -1, -1);
      }

      v8 = *(v0 + 1184);
      v9 = *(v0 + 1160);
      v10 = *(v0 + 1136);
      v11 = *(v0 + 1112);
      v12 = *(v0 + 1104);

      *v12 = 0xD000000000000029;
      v12[1] = 0x80000001D8B42A80;
      swift_storeEnumTagMultiPayload();
      sub_1D8B15EE0();

      v9(v10, v11);
      goto LABEL_8;
    }

LABEL_117:
    swift_once();
    goto LABEL_4;
  }

  sub_1D88840C8(*(v0 + 992), *(v0 + 1016), type metadata accessor for CVBundle);
  if (qword_1EE0E6008 != -1)
  {
    swift_once();
  }

  if (byte_1EE0ED6C0 != 1)
  {
    v19 = CVBundle.textDetections.getter();
    v20 = *(v19 + 2);
    if (!v20)
    {

      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
        v72 = [objc_opt_self() mainBundle];
      }

      v184 = *(v0 + 1184);
      v188 = *(v0 + 1160);
      v73 = *(v0 + 1128);
      v74 = *(v0 + 1096);
      v175 = *(v0 + 1112);
      v179 = *(v0 + 1016);
      sub_1D8B132F0();
      *v74 = sub_1D8B159D0();
      v74[1] = v75;
      v74[2] = 0xD00000000000003BLL;
      v74[3] = 0x80000001D8B42B10;
      v74[4] = 0;
      v74[5] = 0;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1D8B15EE0();

      v188(v73, v175);
      sub_1D8883F50(v179, type metadata accessor for CVBundle);
      goto LABEL_8;
    }

    CVBundle.latestEstimate.getter(&v195);
    v204[0] = v195;
    CVDetection.detection.getter((v0 + 16));

    v21 = *(v0 + 40);
    v22 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v21);
    (*(v22 + 64))(&v196, v21, v22);
    Corners.bounds.getter();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v31 = 0;
    v192 = v19 + 32;
    v187 = v20;
    v177 = v20 - 1;
    v182 = MEMORY[0x1E69E7CC0];
    do
    {
      v32 = v31;
      while (1)
      {
        if (v32 >= *(v19 + 2))
        {
          __break(1u);
          goto LABEL_116;
        }

        v33 = v19;
        v34 = *&v192[8 * v32];
        v31 = v32 + 1;
        v204[0] = v34;
        CVDetection.detection.getter((v0 + 56));
        v36 = *(v0 + 80);
        v35 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v36);
        v37 = *(v35 + 64);

        v37(&v196, v36, v35);
        __swift_destroy_boxed_opaque_existential_1(v0 + 56);
        v38 = v196;
        v39 = v197;
        if (v198 >= v196)
        {
          v40 = v196;
        }

        else
        {
          v40 = v198;
        }

        if (v200 < v40)
        {
          v40 = v200;
        }

        if (v202 < v40)
        {
          v40 = v202;
        }

        if (v199 >= v197)
        {
          v41 = v197;
        }

        else
        {
          v41 = v199;
        }

        if (v201 < v41)
        {
          v41 = v201;
        }

        if (v203 < v41)
        {
          v41 = v203;
        }

        if (v196 <= v198)
        {
          v38 = v198;
        }

        if (v38 <= v200)
        {
          v38 = v200;
        }

        if (v38 <= v202)
        {
          v38 = v202;
        }

        if (v197 <= v199)
        {
          v39 = v199;
        }

        if (v39 <= v201)
        {
          v39 = v201;
        }

        if (v39 <= v203)
        {
          v39 = v203;
        }

        v42 = v38 - v40;
        v43 = v39 - v41;
        v214.origin.x = v24;
        v214.origin.y = v26;
        v214.size.width = v28;
        v214.size.height = v30;
        v207 = CGRectIntersection(*&v40, v214);
        if (v207.size.width * v207.size.height / (v28 * v30) >= 0.05)
        {
          break;
        }

        ++v32;
        v19 = v33;
        if (v187 == v31)
        {
          goto LABEL_53;
        }
      }

      v44 = v182;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v195 = v182;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F43E0(0, *(v182 + 16) + 1, 1);
        v44 = v195;
      }

      v19 = v33;
      v47 = *(v44 + 16);
      v46 = *(v44 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1D87F43E0((v46 > 1), v47 + 1, 1);
        v44 = v195;
      }

      *(v44 + 16) = v47 + 1;
      v182 = v44;
      *(v44 + 8 * v47 + 32) = v34;
    }

    while (v177 != v32);
LABEL_53:
    if (qword_1EE0E4390 != -1)
    {
      swift_once();
    }

    v48 = sub_1D8B151E0();
    __swift_project_value_buffer(v48, qword_1EE0E4398);
    v49 = v182;

    v50 = sub_1D8B151C0();
    v51 = sub_1D8B16230();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134218240;
      *(v52 + 4) = *(v182 + 16);

      *(v52 + 12) = 2048;
      *(v52 + 14) = *(v19 + 2);

      _os_log_impl(&dword_1D8783000, v50, v51, "Found %ld overlapping text detections out of %ld detections", v52, 0x16u);
      MEMORY[0x1DA721330](v52, -1, -1);
    }

    else
    {
    }

    if (qword_1EE0E54C0 != -1)
    {
      swift_once();
    }

    v76 = qword_1EE0E54C8;
    v77 = sub_1D8B0AAA4();
    v78 = *(v0 + 672);
    v79 = *(v0 + 664);
    v80 = *(v0 + 648);
    if (v77)
    {
      v81 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
      swift_beginAccess();
      sub_1D87A0E38(v76 + v81, v80, &qword_1ECA631A8);
      if ((*(v78 + 48))(v80, 1, v79) != 1)
      {
        (*(*(v0 + 672) + 32))(*(v0 + 680), *(v0 + 648), *(v0 + 664));
LABEL_72:
        v85 = *(v0 + 680);
        v86 = swift_task_alloc();
        *(v86 + 16) = v85;
        v87 = sub_1D8AD02F4(sub_1D8883A54, v86, v182);

        if (v87)
        {
        }

        else
        {

          v49 = v19;
        }

        *(v0 + 1376) = v49;
        v88 = *(*(v0 + 480) + *(*(v0 + 1176) + 48));
        v89 = swift_task_alloc();
        *(v0 + 1384) = v89;
        *v89 = v0;
        v89[1] = sub_1D886EA9C;
        v90 = *(v0 + 968);

        return static EventLLMLookupUtility.generateEvent(_:useVerboseLogging:)(v90, v49, v88);
      }
    }

    else
    {
      (*(v78 + 56))(*(v0 + 648), 1, 1, *(v0 + 664));
    }

    v82 = *(v0 + 672);
    v83 = *(v0 + 664);
    v84 = *(v0 + 648);
    _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
    if ((*(v82 + 48))(v84, 1, v83) != 1)
    {
      sub_1D87A14E4(*(v0 + 648), &qword_1ECA631A8);
    }

    goto LABEL_72;
  }

  v196 = COERCE_DOUBLE(CVBundle.textDetectorResults.getter());

  sub_1D89DC06C(&v196);
  v53 = *(v0 + 1176);
  v54 = *(v0 + 480);

  v55 = v196;
  *(v0 + 1208) = v196;
  v56 = (v54 + *(v53 + 44));
  v57 = *v56;
  *(v0 + 1216) = *v56;
  if (!v57)
  {

    sub_1D8883A74();
    v91 = swift_allocError();
    *v92 = 0;
    swift_willThrow();
LABEL_80:
    if (qword_1EE0E4390 != -1)
    {
      swift_once();
    }

    v94 = sub_1D8B151E0();
    __swift_project_value_buffer(v94, qword_1EE0E4398);
    v95 = v91;
    v96 = sub_1D8B151C0();
    v97 = sub_1D8B16210();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = COERCE_DOUBLE(swift_slowAlloc());
      v196 = v99;
      *v98 = 136315138;
      swift_getErrorValue();
      v100 = sub_1D8B16C90();
      v102 = sub_1D89AC714(v100, v101, &v196);

      *(v98 + 4) = v102;
      _os_log_impl(&dword_1D8783000, v96, v97, "Error when trying to create an event: %s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(*&v99);
      MEMORY[0x1DA721330](*&v99, -1, -1);
      MEMORY[0x1DA721330](v98, -1, -1);
    }

    sub_1D8B158D0();
    sub_1D881F764(0, &qword_1EE0E36B0);
    if (!sub_1D8B163E0())
    {
      v103 = [objc_opt_self() mainBundle];
    }

    sub_1D8B132F0();
    v104 = sub_1D8B159D0();
    v106 = v105;
    *(v0 + 432) = v91;
    v107 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 1400) >= 2u)
    {

      sub_1D8B158D0();
      if (!sub_1D8B163E0())
      {
        v109 = [objc_opt_self() mainBundle];
      }

      v108 = v91;
      sub_1D8B132F0();
      v104 = sub_1D8B159D0();
      v106 = v110;
    }

    else
    {
      v108 = v91;
    }

    v176 = *(v0 + 1184);
    v111 = *(v0 + 1136);
    v180 = *(v0 + 1112);
    v112 = *(v0 + 1104);
    v185 = *(v0 + 1016);
    v189 = *(v0 + 1160);
    swift_getErrorValue();
    v113 = sub_1D8B16C90();
    *v112 = v104;
    v112[1] = v106;
    v112[2] = v113;
    v112[3] = v114;
    v112[4] = 0;
    v112[5] = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();

    v189(v111, v180);
    sub_1D8883F50(v185, type metadata accessor for CVBundle);
    goto LABEL_8;
  }

  if (!*(*&v55 + 16))
  {
    swift_unknownObjectRetain();

    sub_1D8883A74();
    v91 = swift_allocError();
    *v93 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_80;
  }

  v193 = v55;
  v174 = v56[1];
  v58 = *(v0 + 928);
  v59 = *(v0 + 920);
  v178 = *(v0 + 912);
  v60 = *(v0 + 904);
  v61 = *(v0 + 896);
  v183 = *(v0 + 888);
  swift_unknownObjectRetain();
  CVBundle.latestEstimate.getter(&v195);
  v204[0] = v195;
  CVDetection.detection.getter((v0 + 96));
  v62 = *(v0 + 120);
  v63 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v62);
  (*(v63 + 64))(&v196, v62, v63);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  Corners.bounds.getter();
  x = v64;
  y = v66;
  width = v68;
  height = v70;

  (*(v59 + 104))(v58, *MEMORY[0x1E69C9B78], v178);
  (*(v61 + 104))(v60, *MEMORY[0x1E69C9B60], v183);
  sub_1D8B14290();
  v115 = *(v0 + 960);
  v116 = *(v0 + 952);
  v117 = *(v0 + 944);
  v118 = *(v0 + 936);
  v119 = *(v0 + 928);
  v120 = *(v0 + 920);
  v121 = *(v0 + 912);
  v122 = *(v0 + 880);
  v123 = *(v0 + 872);
  v190 = *(v0 + 864);
  (*(*(v0 + 896) + 8))(*(v0 + 904), *(v0 + 888));
  (*(v120 + 8))(v119, v121);
  (*(v116 + 56))(v118, 0, 1, v117);
  (*(v116 + 32))(v115, v118, v117);
  sub_1D8B141E0();
  v124 = (*(v123 + 88))(v122, v190);
  if (v124 == *MEMORY[0x1E69C9B58])
  {
    v125 = *(v0 + 880);
    (*(*(v0 + 872) + 96))(v125, *(v0 + 864));
    v126 = *v125;
    v127 = *(v0 + 960);
    v128 = *(v0 + 952);
    v129 = *(v0 + 944);
    v130 = v193;
    if (v126 > 2.22044605e-16)
    {
      v208.origin.x = x;
      v208.origin.y = y;
      v208.size.width = width;
      v208.size.height = height;
      v131 = v126 * 0.5;
      v132 = -(CGRectGetWidth(v208) * (v126 * 0.5));
      v209.origin.x = x;
      v209.origin.y = y;
      v209.size.width = width;
      v209.size.height = height;
      v133 = -(CGRectGetHeight(v209) * v131);
      v210.origin.x = x;
      v210.origin.y = y;
      v210.size.width = width;
      v210.size.height = height;
      v211 = CGRectInset(v210, v132, v133);
      x = v211.origin.x;
      y = v211.origin.y;
      width = v211.size.width;
      height = v211.size.height;
    }

    (*(v128 + 8))(v127, v129);
  }

  else
  {
    v134 = *(v0 + 880);
    v135 = *(v0 + 872);
    v136 = *(v0 + 864);
    (*(*(v0 + 952) + 8))(*(v0 + 960), *(v0 + 944));
    (*(v135 + 8))(v134, v136);
    v130 = v193;
  }

  v137 = *(v0 + 1016);
  v138 = *(v0 + 784);
  v215.origin.x = 0.0;
  v215.origin.y = 0.0;
  v215.size.width = 1.0;
  v215.size.height = 1.0;
  v212.origin.x = x;
  v212.origin.y = y;
  v212.size.width = width;
  v212.size.height = height;
  v213 = CGRectIntersection(v212, v215);
  v139 = v213.origin.x;
  v140 = v213.origin.y;
  v141 = v213.size.width;
  v142 = v213.size.height;
  sub_1D8883FB0(v137, v138, type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v144 = *(v0 + 808);
  v145 = *(v0 + 800);
  v146 = *(v0 + 792);
  if (EnumCaseMultiPayload == 1)
  {
    v147 = *(v145 + 32);
    v147(*(v0 + 808), *(v0 + 784), *(v0 + 792));
  }

  else
  {
    v148 = *(v0 + 768);
    sub_1D88840C8(*(v0 + 784), v148, type metadata accessor for CVTrackSnapshot);
    (*(v145 + 16))(v144, v148, v146);
    sub_1D8883F50(v148, type metadata accessor for CVTrackSnapshot);
    v147 = *(v145 + 32);
  }

  v149 = *(v0 + 832);
  v194 = *(v0 + 824);
  v147(v149, *(v0 + 808), *(v0 + 792));
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631F0);
  v150 = *(type metadata accessor for DetectionRequest.Annotation(0) - 8);
  v151 = *(v150 + 72);
  v152 = (*(v150 + 80) + 32) & ~*(v150 + 80);
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_1D8B1AB80;
  v154 = (v153 + v152);
  *v154 = v130;
  swift_storeEnumTagMultiPayload();
  *(v154 + v151) = 1;
  swift_storeEnumTagMultiPayload();

  CVBundle.latestEstimate.getter(v204);
  v196 = *v204;
  CVDetection.detection.getter((v0 + 136));
  v155 = *(v0 + 160);
  v156 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v155);
  v157 = (*(v156 + 88))(v155, v156);

  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  sub_1D8883FB0(v149, v194, type metadata accessor for DetectionRequest.Originator);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D8883F50(*(v0 + 824), type metadata accessor for DetectionRequest.Originator);
    v158 = 0;
    v159 = -1;
    v160 = -1 << *(MEMORY[0x1E69E7CD0] + 32);
    if (-v160 < 64)
    {
      v159 = ~(-1 << -v160);
    }

    v161 = v159 & *(MEMORY[0x1E69E7CD0] + 56);
    v162 = (63 - v160) >> 6;
    while (v161)
    {
LABEL_105:
      v161 &= v161 - 1;
    }

    while (1)
    {
      v163 = v158 + 1;
      if (__OFADD__(v158, 1))
      {
        break;
      }

      if (v163 >= v162)
      {

        goto LABEL_112;
      }

      v161 = *(MEMORY[0x1E69E7CD0] + 8 * v163 + 56);
      ++v158;
      if (v161)
      {
        v158 = v163;
        goto LABEL_105;
      }
    }

LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

LABEL_112:
  v164 = *(v0 + 856);
  v165 = *(v0 + 848);
  v166 = *(v0 + 840);
  v167 = *(v0 + 832);
  *v165 = 10;
  sub_1D8883FB0(v167, &v165[v166[5]], type metadata accessor for DetectionRequest.Originator);
  v168 = sub_1D87C45EC(v153);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D8883F50(v167, type metadata accessor for DetectionRequest.Originator);
  *&v165[v166[6]] = v168;
  v169 = &v165[v166[7]];
  *v169 = v139;
  v169[1] = v140;
  v169[2] = v141;
  v169[3] = v142;
  *&v165[v166[8]] = v157;
  sub_1D88840C8(v165, v164, type metadata accessor for DetectionRequest);
  ObjectType = swift_getObjectType();
  v191 = (*(v174 + 16) + **(v174 + 16));
  v171 = swift_task_alloc();
  *(v0 + 1224) = v171;
  *v171 = v0;
  v171[1] = sub_1D886AF18;
  v172 = *(v0 + 856);
  v173 = *(v0 + 760);

  return v191(v173, v172, ObjectType, v174);
}

uint64_t sub_1D886AF18()
{
  *(*v1 + 1232) = v0;

  if (v0)
  {

    v2 = sub_1D886F01C;
  }

  else
  {
    v2 = sub_1D886B068;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D886B068()
{
  v126 = v0;
  v125[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 760);
  v2 = *(v1 + *(*(v0 + 752) + 20));

  sub_1D8883F50(v1, type metadata accessor for DetectionResult);
  if (!*(v2 + 16))
  {

LABEL_12:
    if (qword_1EE0E4390 != -1)
    {
      swift_once();
    }

    v23 = sub_1D8B151E0();
    __swift_project_value_buffer(v23, qword_1EE0E4398);
    v24 = sub_1D8B151C0();
    v25 = sub_1D8B16210();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      sub_1D8883A74();
      swift_allocError();
      *v28 = 2;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1D8783000, v24, v25, "STX didn't provide any usable result (%@)", v26, 0xCu);
      sub_1D87A14E4(v27, &qword_1ECA63128);
      MEMORY[0x1DA721330](v27, -1, -1);
      MEMORY[0x1DA721330](v26, -1, -1);
    }

    v30 = *(v0 + 856);

    sub_1D8883A74();
    v31 = swift_allocError();
    *v32 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D8883F50(v30, type metadata accessor for DetectionRequest);
    goto LABEL_17;
  }

  v3 = *(v2 + 32);
  *(v0 + 1240) = v3;

  v125[0] = v3;
  CVDetection.detection.getter((v0 + 176));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 736);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  if ((v4 & 1) == 0)
  {

    (*(v5 + 56))(v7, 1, 1, v6);
    sub_1D87A14E4(v7, &qword_1ECA643C0);
    goto LABEL_12;
  }

  v8 = *(v0 + 744);
  v9 = *(v0 + 712);
  v10 = *(v0 + 704);
  v11 = *(v0 + 696);
  (*(v5 + 56))(*(v0 + 720), 0, 1, *(v0 + 728));
  sub_1D88840C8(v7, v8, type metadata accessor for AFMResult);
  (*(v10 + 16))(v9, v8 + *(v6 + 40), v11);
  if ((*(v10 + 88))(v9, v11) != *MEMORY[0x1E69C9BF8])
  {
    v20 = *(v0 + 712);
    v21 = *(v0 + 704);
    v22 = *(v0 + 696);
    sub_1D8883F50(*(v0 + 744), type metadata accessor for AFMResult);

    (*(v21 + 8))(v20, v22);
    goto LABEL_12;
  }

  v12 = *(v0 + 712);
  (*(*(v0 + 704) + 96))(v12, *(v0 + 696));
  v13 = *v12;
  *(v0 + 1248) = *v12;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE0E54C8;
  *(v0 + 1256) = qword_1EE0E54C8;
  v15 = sub_1D8B0AAA4();
  v16 = *(v0 + 672);
  v17 = *(v0 + 664);
  v18 = *(v0 + 656);
  if (v15)
  {
    v19 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
    swift_beginAccess();
    sub_1D87A0E38(v14 + v19, v18, &qword_1ECA631A8);
    if ((*(v16 + 48))(v18, 1, v17) != 1)
    {
      (*(*(v0 + 672) + 32))(*(v0 + 688), *(v0 + 656), *(v0 + 664));
      goto LABEL_35;
    }
  }

  else
  {
    (*(v16 + 56))(*(v0 + 656), 1, 1, *(v0 + 664));
  }

  v56 = *(v0 + 672);
  v57 = *(v0 + 664);
  v58 = *(v0 + 656);
  _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
  if ((*(v56 + 48))(v58, 1, v57) != 1)
  {
    sub_1D87A14E4(*(v0 + 656), &qword_1ECA631A8);
  }

LABEL_35:
  v59 = *(v0 + 1232);
  sub_1D8B132F0();
  *(v0 + 1264) = sub_1D89AE6B8();
  v60 = sub_1D8B142E0();
  *(v0 + 1272) = sub_1D8865998(v60);
  *(v0 + 1280) = v59;

  v61 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno;
  *(v0 + 1288) = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno;
  if (*(v14 + v61))
  {
    CVBundle.latestEstimate.getter((v0 + 472));
    v125[0] = *(v0 + 472);
    CVDetection.detection.getter((v0 + 256));
    v62 = *(v0 + 280);
    v63 = *(v0 + 288);
    __swift_project_boxed_opaque_existential_1((v0 + 256), v62);
    v64 = (*(v63 + 88))(v62, v63);

    __swift_destroy_boxed_opaque_existential_1(v0 + 256);
    v65 = swift_task_alloc();
    *(v0 + 1296) = v65;
    *v65 = v0;
    v65[1] = sub_1D886C3B0;

    return sub_1D88798F0(0xD000000000000025, 0x80000001D8B42B70, v13, v64);
  }

  v66 = *(v0 + 1280);
  v67 = *(v0 + 1272);
  v68 = *(v0 + 688);
  v69 = CVBundle.textDetectorResults.getter();
  v70 = sub_1D88CB510(v69, v68, 1, v67);
  if (v66)
  {
    v71 = *(v0 + 1264);
    v31 = v66;
    v72 = *(v0 + 1032);
    v110 = *(v0 + 1024);
    v112 = *(v0 + 1040);
    v115 = *(v0 + 744);
    v123 = *(v0 + 688);
    v73 = *(v0 + 672);
    v118 = *(v0 + 856);
    v121 = *(v0 + 664);

    swift_unknownObjectRelease();
    (*(v72 + 8))(v112, v110);
    sub_1D8883F50(v115, type metadata accessor for AFMResult);
    sub_1D8883F50(v118, type metadata accessor for DetectionRequest);
    (*(v73 + 8))(v123, v121);
LABEL_17:
    if (qword_1EE0E4390 != -1)
    {
      swift_once();
    }

    v33 = sub_1D8B151E0();
    __swift_project_value_buffer(v33, qword_1EE0E4398);
    v34 = v31;
    v35 = sub_1D8B151C0();
    v36 = sub_1D8B16210();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v125[0] = v38;
      *v37 = 136315138;
      swift_getErrorValue();
      v39 = sub_1D8B16C90();
      v41 = sub_1D89AC714(v39, v40, v125);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_1D8783000, v35, v36, "Error when trying to create an event: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1DA721330](v38, -1, -1);
      MEMORY[0x1DA721330](v37, -1, -1);
    }

    sub_1D8B158D0();
    sub_1D881F764(0, &qword_1EE0E36B0);
    if (!sub_1D8B163E0())
    {
      v42 = [objc_opt_self() mainBundle];
    }

    sub_1D8B132F0();
    v43 = sub_1D8B159D0();
    v45 = v44;
    *(v0 + 432) = v31;
    v46 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 1400) >= 2u)
    {

      sub_1D8B158D0();
      if (!sub_1D8B163E0())
      {
        v48 = [objc_opt_self() mainBundle];
      }

      v47 = v31;
      sub_1D8B132F0();
      v43 = sub_1D8B159D0();
      v45 = v49;
    }

    else
    {
      v47 = v31;
    }

    v120 = *(v0 + 1160);
    v111 = *(v0 + 1184);
    v50 = *(v0 + 1136);
    v51 = *(v0 + 1104);
    v114 = *(v0 + 1112);
    v117 = *(v0 + 1016);
    swift_getErrorValue();
    v52 = sub_1D8B16C90();
    *v51 = v43;
    v51[1] = v45;
    v51[2] = v52;
    v51[3] = v53;
    v51[4] = 0;
    v51[5] = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();

    v120(v50, v114);
    sub_1D8883F50(v117, type metadata accessor for CVBundle);

    v54 = *(v0 + 8);

    return v54();
  }

  if (!v70)
  {
    if (qword_1EE0E4390 != -1)
    {
      swift_once();
    }

    v77 = sub_1D8B151E0();
    __swift_project_value_buffer(v77, qword_1EE0E4398);
    v78 = sub_1D8B151C0();
    v79 = sub_1D8B16210();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 138412290;
      sub_1D8883A74();
      swift_allocError();
      *v82 = 2;
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 4) = v83;
      *v81 = v83;
      _os_log_impl(&dword_1D8783000, v78, v79, "Couldn't select an event from STX result (%@), trying to fallback to text detection results...", v80, 0xCu);
      sub_1D87A14E4(v81, &qword_1ECA63128);
      MEMORY[0x1DA721330](v81, -1, -1);
      MEMORY[0x1DA721330](v80, -1, -1);
    }

    v84 = *(v0 + 688);

    v85 = CVBundle.textDetectorResults.getter();
    v86 = swift_task_alloc();
    *(v86 + 16) = v84;
    v87 = sub_1D8AA42E0(sub_1D8883AC8, v86, v85);

    if (v87[2])
    {
      v88 = *(v0 + 624);
      v89 = *(v0 + 616);
      v90 = *(v0 + 608);
      v91 = *(v0 + 600);
      v92 = *(v0 + 592);
      v93 = *(v0 + 584);
      (*(v92 + 16))(v91, v87 + ((*(v92 + 80) + 32) & ~*(v92 + 80)), v93);

      v94 = sub_1D8B151F0();
      (*(v92 + 8))(v91, v93);
      sub_1D8B16270();

      if ((*(v88 + 48))(v90, 1, v89) != 1)
      {
        v95 = *(v0 + 640);
        v96 = *(v0 + 632);
        v97 = *(v0 + 624);
        v98 = *(v0 + 616);
        (*(v97 + 32))(v95, *(v0 + 608), v98);
        sub_1D8B147A0();
        (*(v97 + 16))(v96, v95, v98);
        v74 = sub_1D88CB8EC(v96);
        (*(v97 + 8))(v95, v98);

        goto LABEL_43;
      }
    }

    else
    {
      v99 = *(v0 + 624);
      v100 = *(v0 + 616);
      v101 = *(v0 + 608);

      (*(v99 + 56))(v101, 1, 1, v100);
    }

    sub_1D87A14E4(*(v0 + 608), &qword_1ECA643B8);

    v102 = sub_1D8B151C0();
    v103 = sub_1D8B16210();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_1D8783000, v102, v103, "Falling back to text detection failed", v104, 2u);
      MEMORY[0x1DA721330](v104, -1, -1);
    }

    v105 = *(v0 + 1264);
    v106 = *(v0 + 1032);
    v107 = *(v0 + 1024);
    v113 = *(v0 + 1040);
    v116 = *(v0 + 744);
    v124 = *(v0 + 688);
    v108 = *(v0 + 672);
    v119 = *(v0 + 856);
    v122 = *(v0 + 664);

    sub_1D8883A74();
    v31 = swift_allocError();
    *v109 = 2;
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v106 + 8))(v113, v107);
    sub_1D8883F50(v116, type metadata accessor for AFMResult);
    sub_1D8883F50(v119, type metadata accessor for DetectionRequest);
    (*(v108 + 8))(v124, v122);
    goto LABEL_17;
  }

  v74 = v70;
LABEL_43:
  *(v0 + 1304) = v74;
  type metadata accessor for SafetySensitiveWordListProvider();
  swift_initStaticObject();

  v75 = swift_task_alloc();
  *(v0 + 1312) = v75;
  *v75 = v0;
  v75[1] = sub_1D886D1C8;
  v76 = *(v0 + 1264);

  return sub_1D89BC088(v76);
}

uint64_t sub_1D886C3B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D886C4D8, 0, 0);
}

uint64_t sub_1D886C4D8()
{
  v85 = v0;
  v84[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 688);
  v4 = CVBundle.textDetectorResults.getter();
  v5 = sub_1D88CB510(v4, v3, 1, v2);
  if (v1)
  {
    v6 = *(v0 + 1264);
    v7 = *(v0 + 1032);
    v69 = *(v0 + 1024);
    v70 = *(v0 + 1040);
    v73 = *(v0 + 744);
    v76 = *(v0 + 856);
    v8 = *(v0 + 672);
    v79 = *(v0 + 664);
    v82 = *(v0 + 688);

    v9 = v1;
    swift_unknownObjectRelease();
    (*(v7 + 8))(v70, v69);
    sub_1D8883F50(v73, type metadata accessor for AFMResult);
    sub_1D8883F50(v76, type metadata accessor for DetectionRequest);
    (*(v8 + 8))(v82, v79);
LABEL_3:
    if (qword_1EE0E4390 != -1)
    {
      swift_once();
    }

    v10 = sub_1D8B151E0();
    __swift_project_value_buffer(v10, qword_1EE0E4398);
    v11 = v9;
    v12 = sub_1D8B151C0();
    v13 = sub_1D8B16210();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v84[0] = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = sub_1D8B16C90();
      v18 = sub_1D89AC714(v16, v17, v84);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1D8783000, v12, v13, "Error when trying to create an event: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1DA721330](v15, -1, -1);
      MEMORY[0x1DA721330](v14, -1, -1);
    }

    sub_1D8B158D0();
    sub_1D881F764(0, &qword_1EE0E36B0);
    if (!sub_1D8B163E0())
    {
      v19 = [objc_opt_self() mainBundle];
    }

    sub_1D8B132F0();
    v20 = sub_1D8B159D0();
    v22 = v21;
    *(v0 + 432) = v9;
    v23 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 1400) >= 2u)
    {

      sub_1D8B158D0();
      if (!sub_1D8B163E0())
      {
        v29 = [objc_opt_self() mainBundle];
      }

      v24 = v9;
      sub_1D8B132F0();
      v20 = sub_1D8B159D0();
      v22 = v30;
    }

    else
    {
      v24 = v9;
    }

    v80 = *(v0 + 1160);
    v71 = *(v0 + 1184);
    v31 = *(v0 + 1136);
    v32 = *(v0 + 1104);
    v74 = *(v0 + 1112);
    v77 = *(v0 + 1016);
    swift_getErrorValue();
    v33 = sub_1D8B16C90();
    *v32 = v20;
    v32[1] = v22;
    v32[2] = v33;
    v32[3] = v34;
    v32[4] = 0;
    v32[5] = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();

    v80(v31, v74);
    sub_1D8883F50(v77, type metadata accessor for CVBundle);

    v35 = *(v0 + 8);

    return v35();
  }

  if (!v5)
  {
    if (qword_1EE0E4390 != -1)
    {
      swift_once();
    }

    v36 = sub_1D8B151E0();
    __swift_project_value_buffer(v36, qword_1EE0E4398);
    v37 = sub_1D8B151C0();
    v38 = sub_1D8B16210();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      sub_1D8883A74();
      swift_allocError();
      *v41 = 2;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v42;
      *v40 = v42;
      _os_log_impl(&dword_1D8783000, v37, v38, "Couldn't select an event from STX result (%@), trying to fallback to text detection results...", v39, 0xCu);
      sub_1D87A14E4(v40, &qword_1ECA63128);
      MEMORY[0x1DA721330](v40, -1, -1);
      MEMORY[0x1DA721330](v39, -1, -1);
    }

    v43 = *(v0 + 688);

    v44 = CVBundle.textDetectorResults.getter();
    v45 = swift_task_alloc();
    *(v45 + 16) = v43;
    v46 = sub_1D8AA42E0(sub_1D8883AC8, v45, v44);

    if (v46[2])
    {
      v47 = *(v0 + 624);
      v48 = *(v0 + 616);
      v49 = *(v0 + 608);
      v50 = *(v0 + 600);
      v51 = *(v0 + 592);
      v52 = *(v0 + 584);
      (*(v51 + 16))(v50, v46 + ((*(v51 + 80) + 32) & ~*(v51 + 80)), v52);

      v53 = sub_1D8B151F0();
      (*(v51 + 8))(v50, v52);
      sub_1D8B16270();

      if ((*(v47 + 48))(v49, 1, v48) != 1)
      {
        v54 = *(v0 + 640);
        v55 = *(v0 + 632);
        v56 = *(v0 + 624);
        v57 = *(v0 + 616);
        (*(v56 + 32))(v54, *(v0 + 608), v57);
        sub_1D8B147A0();
        (*(v56 + 16))(v55, v54, v57);
        v25 = sub_1D88CB8EC(v55);
        (*(v56 + 8))(v54, v57);

        goto LABEL_14;
      }
    }

    else
    {
      v58 = *(v0 + 624);
      v59 = *(v0 + 616);
      v60 = *(v0 + 608);

      (*(v58 + 56))(v60, 1, 1, v59);
    }

    sub_1D87A14E4(*(v0 + 608), &qword_1ECA643B8);

    v61 = sub_1D8B151C0();
    v62 = sub_1D8B16210();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1D8783000, v61, v62, "Falling back to text detection failed", v63, 2u);
      MEMORY[0x1DA721330](v63, -1, -1);
    }

    v64 = *(v0 + 1264);
    v65 = *(v0 + 1032);
    v66 = *(v0 + 1024);
    v72 = *(v0 + 1040);
    v75 = *(v0 + 744);
    v83 = *(v0 + 688);
    v67 = *(v0 + 672);
    v78 = *(v0 + 856);
    v81 = *(v0 + 664);

    sub_1D8883A74();
    v9 = swift_allocError();
    *v68 = 2;
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v65 + 8))(v72, v66);
    sub_1D8883F50(v75, type metadata accessor for AFMResult);
    sub_1D8883F50(v78, type metadata accessor for DetectionRequest);
    (*(v67 + 8))(v83, v81);
    goto LABEL_3;
  }

  v25 = v5;
LABEL_14:
  *(v0 + 1304) = v25;
  type metadata accessor for SafetySensitiveWordListProvider();
  swift_initStaticObject();

  v26 = swift_task_alloc();
  *(v0 + 1312) = v26;
  *v26 = v0;
  v26[1] = sub_1D886D1C8;
  v27 = *(v0 + 1264);

  return sub_1D89BC088(v27);
}

uint64_t sub_1D886D1C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1320) = v1;

  if (v1)
  {
    v5 = sub_1D886F6DC;
  }

  else
  {
    *(v4 + 1328) = a1;
    v5 = sub_1D886D318;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D886D318()
{
  v76 = v0;
  v75[1] = *MEMORY[0x1E69E9840];
  *(v0 + 1336) = *(v0 + 1320);
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1024);
  v5 = *(v0 + 576);
  sub_1D8B14580();
  swift_allocObject();

  v6 = sub_1D8B14540();
  *(v0 + 1344) = v6;
  sub_1D8A12E08(v1);

  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  if (qword_1ECA62108 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 1288);
  v8 = *(v0 + 1256);
  v9 = *(v0 + 576);
  sub_1D8B14570();

  sub_1D87A14E4(v9, &qword_1ECA643B0);
  if (*(v8 + v7))
  {
    v10 = *(v0 + 568);
    v11 = *(v0 + 560);
    v12 = *(v0 + 552);
    v13 = *(v0 + 544);
    v14 = *(v0 + 536);
    v64 = *(v0 + 528);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D8B23DF0;
    *v10 = v6;
    (*(v11 + 104))(v10, *MEMORY[0x1E69C9BA8], v12);
    sub_1D8B14340();
    swift_allocObject();

    *(v15 + 32) = sub_1D8B14330();
    (*(v14 + 104))(v13, *MEMORY[0x1E69C9B30], v64);
    sub_1D8B141B0();
    sub_1D8B14190();
    swift_allocObject();
    v16 = sub_1D8B14180();
    *(v0 + 1352) = v16;
    sub_1D8B14300();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D8B23DF0;
    *(v17 + 32) = v16;
    sub_1D8B14310();
    swift_allocObject();

    v18 = sub_1D8B142F0();
    *(v0 + 1360) = v18;
    CVBundle.latestEstimate.getter((v0 + 456));
    v75[0] = *(v0 + 456);
    CVDetection.detection.getter((v0 + 216));
    v19 = *(v0 + 240);
    v20 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 216), v19);
    v21 = (*(v20 + 88))(v19, v20);

    __swift_destroy_boxed_opaque_existential_1(v0 + 216);
    v22 = swift_task_alloc();
    *(v0 + 1368) = v22;
    *v22 = v0;
    v22[1] = sub_1D886E034;

    return sub_1D88798F0(0xD00000000000001FLL, 0x80000001D8B42B50, v18, v21);
  }

  else
  {
    v24 = *(v0 + 1336);
    v25 = *(v0 + 672);
    sub_1D88D6BF0(*(v0 + 688), *(v0 + 976));
    v71 = (v25 + 8);
    v73 = v24;
    v26 = *(v0 + 1264);
    v27 = *(v0 + 1040);
    v28 = *(v0 + 1032);
    v29 = *(v0 + 1024);
    if (v24)
    {
      v30 = *(v0 + 744);
      v68 = *(v0 + 688);
      v61 = *(v0 + 856);
      v65 = *(v0 + 664);

      swift_unknownObjectRelease();
      (*(v28 + 8))(v27, v29);
      sub_1D8883F50(v30, type metadata accessor for AFMResult);
      sub_1D8883F50(v61, type metadata accessor for DetectionRequest);
      (*v71)(v68, v65);
      if (qword_1EE0E4390 != -1)
      {
        swift_once();
      }

      v31 = sub_1D8B151E0();
      __swift_project_value_buffer(v31, qword_1EE0E4398);
      v32 = v73;
      v33 = sub_1D8B151C0();
      v34 = sub_1D8B16210();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v75[0] = v36;
        *v35 = 136315138;
        swift_getErrorValue();
        v37 = sub_1D8B16C90();
        v39 = sub_1D89AC714(v37, v38, v75);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_1D8783000, v33, v34, "Error when trying to create an event: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x1DA721330](v36, -1, -1);
        MEMORY[0x1DA721330](v35, -1, -1);
      }

      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
        v40 = [objc_opt_self() mainBundle];
      }

      sub_1D8B132F0();
      v41 = sub_1D8B159D0();
      v43 = v42;
      *(v0 + 432) = v73;
      v44 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 1400) >= 2u)
      {

        sub_1D8B158D0();
        if (!sub_1D8B163E0())
        {
          v52 = [objc_opt_self() mainBundle];
        }

        sub_1D8B132F0();
        v45 = sub_1D8B159D0();
        v43 = v53;
      }

      else
      {
        v45 = v41;
      }

      v67 = *(v0 + 1160);
      v60 = *(v0 + 1184);
      v54 = *(v0 + 1136);
      v63 = *(v0 + 1112);
      v55 = *(v0 + 1104);
      v72 = *(v0 + 1016);
      swift_getErrorValue();
      v56 = sub_1D8B16C90();
      *v55 = v45;
      v55[1] = v43;
      v55[2] = v56;
      v55[3] = v57;
      v55[4] = 0;
      v55[5] = 0;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1D8B15EE0();

      v67(v54, v63);
    }

    else
    {
      v62 = *(v0 + 976);
      v66 = *(v0 + 984);
      v59 = *(v0 + 856);
      v46 = *(v0 + 744);
      v74 = *(v0 + 688);
      v69 = *(v0 + 664);

      swift_unknownObjectRelease();
      (*(v28 + 8))(v27, v29);
      sub_1D8883F50(v46, type metadata accessor for AFMResult);
      sub_1D8883F50(v59, type metadata accessor for DetectionRequest);
      sub_1D88840C8(v62, v66, type metadata accessor for EventLookupItem);
      (*v71)(v74, v69);
      v47 = *(v0 + 1184);
      v70 = *(v0 + 1160);
      v48 = *(v0 + 1136);
      v49 = *(v0 + 1112);
      v50 = *(v0 + 1104);
      v72 = *(v0 + 1016);
      v51 = *(v0 + 984);
      sub_1D8883FB0(v51, v50, type metadata accessor for EventLookupItem);
      *(v50 + *(type metadata accessor for EventLookupState.EventLookupResult(0) + 20)) = v47;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1D8B15EE0();
      v70(v48, v49);
      sub_1D8883F50(v51, type metadata accessor for EventLookupItem);
    }

    sub_1D8883F50(v72, type metadata accessor for CVBundle);

    v58 = *(v0 + 8);

    return v58();
  }
}

uint64_t sub_1D886E034()
{

  return MEMORY[0x1EEE6DFA0](sub_1D886E15C, 0, 0);
}

uint64_t sub_1D886E15C()
{
  v52 = v0;
  v51[1] = *MEMORY[0x1E69E9840];

  v1 = *(v0 + 1336);
  v2 = *(v0 + 672);
  sub_1D88D6BF0(*(v0 + 688), *(v0 + 976));
  v47 = (v2 + 8);
  v49 = v1;
  v3 = *(v0 + 1264);
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 1024);
  if (v1)
  {
    v7 = *(v0 + 744);
    v44 = *(v0 + 688);
    v38 = *(v0 + 856);
    v41 = *(v0 + 664);

    swift_unknownObjectRelease();
    (*(v5 + 8))(v4, v6);
    sub_1D8883F50(v7, type metadata accessor for AFMResult);
    sub_1D8883F50(v38, type metadata accessor for DetectionRequest);
    (*v47)(v44, v41);
    if (qword_1EE0E4390 != -1)
    {
      swift_once();
    }

    v8 = sub_1D8B151E0();
    __swift_project_value_buffer(v8, qword_1EE0E4398);
    v9 = v49;
    v10 = sub_1D8B151C0();
    v11 = sub_1D8B16210();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v51[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_1D8B16C90();
      v16 = sub_1D89AC714(v14, v15, v51);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1D8783000, v10, v11, "Error when trying to create an event: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1DA721330](v13, -1, -1);
      MEMORY[0x1DA721330](v12, -1, -1);
    }

    sub_1D8B158D0();
    sub_1D881F764(0, &qword_1EE0E36B0);
    if (!sub_1D8B163E0())
    {
      v17 = [objc_opt_self() mainBundle];
    }

    sub_1D8B132F0();
    v18 = sub_1D8B159D0();
    v20 = v19;
    *(v0 + 432) = v49;
    v21 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 1400) >= 2u)
    {

      sub_1D8B158D0();
      if (!sub_1D8B163E0())
      {
        v22 = [objc_opt_self() mainBundle];
      }

      sub_1D8B132F0();
      v18 = sub_1D8B159D0();
      v20 = v23;
    }

    v42 = *(v0 + 1160);
    v36 = *(v0 + 1184);
    v24 = *(v0 + 1136);
    v39 = *(v0 + 1112);
    v25 = *(v0 + 1104);
    v48 = *(v0 + 1016);
    swift_getErrorValue();
    v26 = sub_1D8B16C90();
    *v25 = v18;
    v25[1] = v20;
    v25[2] = v26;
    v25[3] = v27;
    v25[4] = 0;
    v25[5] = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();

    v42(v24, v39);
  }

  else
  {
    v40 = *(v0 + 976);
    v43 = *(v0 + 984);
    v37 = *(v0 + 856);
    v28 = *(v0 + 744);
    v50 = *(v0 + 688);
    v45 = *(v0 + 664);

    swift_unknownObjectRelease();
    (*(v5 + 8))(v4, v6);
    sub_1D8883F50(v28, type metadata accessor for AFMResult);
    sub_1D8883F50(v37, type metadata accessor for DetectionRequest);
    sub_1D88840C8(v40, v43, type metadata accessor for EventLookupItem);
    (*v47)(v50, v45);
    v29 = *(v0 + 1184);
    v46 = *(v0 + 1160);
    v30 = *(v0 + 1136);
    v31 = *(v0 + 1112);
    v32 = *(v0 + 1104);
    v48 = *(v0 + 1016);
    v33 = *(v0 + 984);
    sub_1D8883FB0(v33, v32, type metadata accessor for EventLookupItem);
    *(v32 + *(type metadata accessor for EventLookupState.EventLookupResult(0) + 20)) = v29;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    v46(v30, v31);
    sub_1D8883F50(v33, type metadata accessor for EventLookupItem);
  }

  sub_1D8883F50(v48, type metadata accessor for CVBundle);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1D886EA9C()
{
  *(*v1 + 1392) = v0;

  if (v0)
  {
    v2 = sub_1D887053C;
  }

  else
  {

    v2 = sub_1D886EC10;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D886EC10()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  sub_1D88840C8(v0[121], v0[123], type metadata accessor for EventLookupItem);
  (*(v2 + 8))(v1, v3);
  v4 = v0[148];
  v11 = v0[145];
  v5 = v0[142];
  v6 = v0[139];
  v7 = v0[138];
  v12 = v0[127];
  v8 = v0[123];
  sub_1D8883FB0(v8, v7, type metadata accessor for EventLookupItem);
  *(v7 + *(type metadata accessor for EventLookupState.EventLookupResult(0) + 20)) = v4;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();
  v11(v5, v6);
  sub_1D8883F50(v8, type metadata accessor for EventLookupItem);
  sub_1D8883F50(v12, type metadata accessor for CVBundle);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D886F01C()
{
  v31 = v0;
  v30[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 856);
  swift_unknownObjectRelease();
  sub_1D8883F50(v1, type metadata accessor for DetectionRequest);
  v2 = *(v0 + 1232);
  if (qword_1EE0E4390 != -1)
  {
    swift_once();
  }

  v3 = sub_1D8B151E0();
  __swift_project_value_buffer(v3, qword_1EE0E4398);
  v4 = v2;
  v5 = sub_1D8B151C0();
  v6 = sub_1D8B16210();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30[0] = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_1D8B16C90();
    v11 = sub_1D89AC714(v9, v10, v30);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D8783000, v5, v6, "Error when trying to create an event: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1DA721330](v8, -1, -1);
    MEMORY[0x1DA721330](v7, -1, -1);
  }

  sub_1D8B158D0();
  sub_1D881F764(0, &qword_1EE0E36B0);
  if (!sub_1D8B163E0())
  {
    v12 = [objc_opt_self() mainBundle];
  }

  sub_1D8B132F0();
  v13 = sub_1D8B159D0();
  v15 = v14;
  *(v0 + 432) = v2;
  v16 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 1400) >= 2u)
  {

    sub_1D8B158D0();
    if (!sub_1D8B163E0())
    {
      v18 = [objc_opt_self() mainBundle];
    }

    v17 = v2;
    sub_1D8B132F0();
    v13 = sub_1D8B159D0();
    v15 = v19;
  }

  else
  {
    v17 = v2;
  }

  v29 = *(v0 + 1160);
  v26 = *(v0 + 1184);
  v20 = *(v0 + 1136);
  v21 = *(v0 + 1104);
  v27 = *(v0 + 1112);
  v28 = *(v0 + 1016);
  swift_getErrorValue();
  v22 = sub_1D8B16C90();
  *v21 = v13;
  v21[1] = v15;
  v21[2] = v22;
  v21[3] = v23;
  v21[4] = 0;
  v21[5] = 0;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();

  v29(v20, v27);
  sub_1D8883F50(v28, type metadata accessor for CVBundle);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D886F6DC()
{
  v85 = v0;
  v84[1] = *MEMORY[0x1E69E9840];
  if (qword_1EE0E4390 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1320);
  v2 = sub_1D8B151E0();
  __swift_project_value_buffer(v2, qword_1EE0E4398);
  v3 = v1;
  v4 = sub_1D8B151C0();
  v5 = sub_1D8B16210();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v84[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1D8B16C90();
    v10 = sub_1D89AC714(v8, v9, v84);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D8783000, v4, v5, "Cannot query sensitive words: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1DA721330](v7, -1, -1);
    MEMORY[0x1DA721330](v6, -1, -1);
  }

  *(v0 + 1336) = 0;
  v11 = *(v0 + 1208);
  v12 = *(v0 + 1040);
  v13 = *(v0 + 1032);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 576);
  sub_1D8B14580();
  swift_allocObject();

  v16 = sub_1D8B14540();
  *(v0 + 1344) = v16;
  sub_1D8A12E08(v11);

  (*(v13 + 16))(v15, v12, v14);
  (*(v13 + 56))(v15, 0, 1, v14);
  if (qword_1ECA62108 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 1288);
  v18 = *(v0 + 1256);
  v19 = *(v0 + 576);
  sub_1D8B14570();

  sub_1D87A14E4(v19, &qword_1ECA643B0);
  if (*(v18 + v17))
  {
    v20 = *(v0 + 568);
    v21 = *(v0 + 560);
    v22 = *(v0 + 552);
    v23 = *(v0 + 544);
    v24 = *(v0 + 536);
    v75 = *(v0 + 528);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D8B23DF0;
    *v20 = v16;
    (*(v21 + 104))(v20, *MEMORY[0x1E69C9BA8], v22);
    sub_1D8B14340();
    swift_allocObject();

    *(v25 + 32) = sub_1D8B14330();
    (*(v24 + 104))(v23, *MEMORY[0x1E69C9B30], v75);
    sub_1D8B141B0();
    sub_1D8B14190();
    swift_allocObject();
    v26 = sub_1D8B14180();
    *(v0 + 1352) = v26;
    sub_1D8B14300();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1D8B23DF0;
    *(v27 + 32) = v26;
    sub_1D8B14310();
    swift_allocObject();

    v28 = sub_1D8B142F0();
    *(v0 + 1360) = v28;
    CVBundle.latestEstimate.getter((v0 + 456));
    v84[0] = *(v0 + 456);
    CVDetection.detection.getter((v0 + 216));
    v29 = *(v0 + 240);
    v30 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 216), v29);
    v31 = (*(v30 + 88))(v29, v30);

    __swift_destroy_boxed_opaque_existential_1(v0 + 216);
    v32 = swift_task_alloc();
    *(v0 + 1368) = v32;
    *v32 = v0;
    v32[1] = sub_1D886E034;

    return sub_1D88798F0(0xD00000000000001FLL, 0x80000001D8B42B50, v28, v31);
  }

  else
  {
    v34 = *(v0 + 1336);
    v35 = *(v0 + 672);
    sub_1D88D6BF0(*(v0 + 688), *(v0 + 976));
    v80 = (v35 + 8);
    v82 = v34;
    v36 = *(v0 + 1264);
    v78 = *(v0 + 1040);
    v37 = *(v0 + 1032);
    v38 = *(v0 + 1024);
    if (v34)
    {
      v39 = *(v0 + 744);
      v40 = *(v0 + 688);
      v69 = *(v0 + 856);
      v72 = *(v0 + 664);

      swift_unknownObjectRelease();
      (*(v37 + 8))(v78, v38);
      sub_1D8883F50(v39, type metadata accessor for AFMResult);
      sub_1D8883F50(v69, type metadata accessor for DetectionRequest);
      (*v80)(v40, v72);
      if (qword_1EE0E4390 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_1EE0E4398);
      v41 = v82;
      v42 = sub_1D8B151C0();
      v43 = sub_1D8B16210();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v84[0] = v45;
        *v44 = 136315138;
        swift_getErrorValue();
        v46 = sub_1D8B16C90();
        v48 = sub_1D89AC714(v46, v47, v84);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_1D8783000, v42, v43, "Error when trying to create an event: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x1DA721330](v45, -1, -1);
        MEMORY[0x1DA721330](v44, -1, -1);
      }

      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
        v49 = [objc_opt_self() mainBundle];
      }

      sub_1D8B132F0();
      v50 = sub_1D8B159D0();
      v52 = v51;
      *(v0 + 432) = v82;
      v53 = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 1400) >= 2u)
      {

        sub_1D8B158D0();
        if (!sub_1D8B163E0())
        {
          v62 = [objc_opt_self() mainBundle];
        }

        sub_1D8B132F0();
        v54 = sub_1D8B159D0();
        v52 = v63;
      }

      else
      {
        v54 = v50;
      }

      v77 = *(v0 + 1160);
      v71 = *(v0 + 1184);
      v64 = *(v0 + 1136);
      v74 = *(v0 + 1112);
      v65 = *(v0 + 1104);
      v81 = *(v0 + 1016);
      swift_getErrorValue();
      v66 = sub_1D8B16C90();
      *v65 = v54;
      v65[1] = v52;
      v65[2] = v66;
      v65[3] = v67;
      v65[4] = 0;
      v65[5] = 0;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1D8B15EE0();

      v77(v64, v74);
    }

    else
    {
      v73 = *(v0 + 976);
      v76 = *(v0 + 984);
      v70 = *(v0 + 856);
      v55 = *(v0 + 744);
      v56 = *(v0 + 688);
      v83 = *(v0 + 664);

      swift_unknownObjectRelease();
      (*(v37 + 8))(v78, v38);
      sub_1D8883F50(v55, type metadata accessor for AFMResult);
      sub_1D8883F50(v70, type metadata accessor for DetectionRequest);
      sub_1D88840C8(v73, v76, type metadata accessor for EventLookupItem);
      (*v80)(v56, v83);
      v57 = *(v0 + 1184);
      v79 = *(v0 + 1160);
      v58 = *(v0 + 1136);
      v59 = *(v0 + 1112);
      v60 = *(v0 + 1104);
      v81 = *(v0 + 1016);
      v61 = *(v0 + 984);
      sub_1D8883FB0(v61, v60, type metadata accessor for EventLookupItem);
      *(v60 + *(type metadata accessor for EventLookupState.EventLookupResult(0) + 20)) = v57;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1D8B15EE0();
      v79(v58, v59);
      sub_1D8883F50(v61, type metadata accessor for EventLookupItem);
    }

    sub_1D8883F50(v81, type metadata accessor for CVBundle);

    v68 = *(v0 + 8);

    return v68();
  }
}

uint64_t sub_1D887053C()
{
  v33 = v0;
  v32[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 680);
  v2 = *(v0 + 672);
  v3 = *(v0 + 664);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1392);
  if (qword_1EE0E4390 != -1)
  {
    swift_once();
  }

  v5 = sub_1D8B151E0();
  __swift_project_value_buffer(v5, qword_1EE0E4398);
  v6 = v4;
  v7 = sub_1D8B151C0();
  v8 = sub_1D8B16210();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32[0] = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_1D8B16C90();
    v13 = sub_1D89AC714(v11, v12, v32);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1D8783000, v7, v8, "Error when trying to create an event: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1DA721330](v10, -1, -1);
    MEMORY[0x1DA721330](v9, -1, -1);
  }

  sub_1D8B158D0();
  sub_1D881F764(0, &qword_1EE0E36B0);
  if (!sub_1D8B163E0())
  {
    v14 = [objc_opt_self() mainBundle];
  }

  sub_1D8B132F0();
  v15 = sub_1D8B159D0();
  v17 = v16;
  *(v0 + 432) = v4;
  v18 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 1400) >= 2u)
  {

    sub_1D8B158D0();
    if (!sub_1D8B163E0())
    {
      v20 = [objc_opt_self() mainBundle];
    }

    v19 = v4;
    sub_1D8B132F0();
    v15 = sub_1D8B159D0();
    v17 = v21;
  }

  else
  {
    v19 = v4;
  }

  v31 = *(v0 + 1160);
  v28 = *(v0 + 1184);
  v22 = *(v0 + 1136);
  v23 = *(v0 + 1104);
  v29 = *(v0 + 1112);
  v30 = *(v0 + 1016);
  swift_getErrorValue();
  v24 = sub_1D8B16C90();
  *v23 = v15;
  v23[1] = v17;
  v23[2] = v24;
  v23[3] = v25;
  v23[4] = 0;
  v23[5] = 0;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();

  v31(v22, v29);
  sub_1D8883F50(v30, type metadata accessor for CVBundle);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1D8870C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[161] = v4;
  v5[160] = a4;
  v5[159] = a3;
  v5[158] = a2;
  v5[157] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  v5[164] = swift_task_alloc();
  v6 = sub_1D8B16880();
  v5[165] = v6;
  v5[166] = *(v6 - 8);
  v5[167] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64340);
  v5[168] = swift_task_alloc();
  v5[169] = swift_task_alloc();
  sub_1D8B13350();
  v5[170] = swift_task_alloc();
  sub_1D8B15930();
  v5[171] = swift_task_alloc();
  v5[172] = swift_task_alloc();
  v5[173] = swift_task_alloc();
  v5[174] = swift_task_alloc();
  v5[175] = swift_task_alloc();
  v5[176] = swift_task_alloc();
  v5[177] = swift_task_alloc();
  sub_1D8B15910();
  v5[178] = swift_task_alloc();
  v5[179] = swift_task_alloc();
  v5[180] = swift_task_alloc();
  v5[181] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  v5[182] = swift_task_alloc();
  v7 = sub_1D8B131D0();
  v5[183] = v7;
  v5[184] = *(v7 - 8);
  v5[185] = swift_task_alloc();
  v5[186] = swift_task_alloc();
  v5[187] = type metadata accessor for ResultLookupState(0);
  v5[188] = swift_task_alloc();
  v5[189] = swift_task_alloc();
  v5[190] = swift_task_alloc();
  v5[191] = swift_task_alloc();
  v5[192] = swift_task_alloc();
  v5[193] = swift_task_alloc();
  v5[194] = swift_task_alloc();
  v5[195] = swift_task_alloc();
  v5[196] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64390);
  v5[197] = v8;
  v5[198] = *(v8 - 8);
  v5[199] = swift_task_alloc();
  v5[200] = swift_task_alloc();
  v5[201] = swift_task_alloc();
  v5[202] = swift_task_alloc();
  v5[203] = swift_task_alloc();
  v5[204] = swift_task_alloc();
  v5[205] = swift_task_alloc();
  v5[206] = swift_task_alloc();
  v5[207] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8871078, 0, 0);
}

uint64_t sub_1D8871078()
{
  v26 = v0;
  v25[2] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for BuiltInActionExecutor.Request();
  v0[208] = v1;
  sub_1D8865DD4(v1, v25);
  if (LOBYTE(v25[0]) != 2)
  {
    ConfigStorage.hasOnboardedImageSearch.setter((v25[0] & 1) == 0, v0[159], v0[160]);
  }

  if (ConfigStorage.hasOnboardedImageSearch.getter(v0[159], v0[160]))
  {
    if (qword_1ECA62128 != -1)
    {
      swift_once();
    }

    v2 = sub_1D8B151E0();
    v0[209] = v2;
    __swift_project_value_buffer(v2, qword_1ECA66978);
    v3 = sub_1D8B151C0();
    v4 = sub_1D8B16230();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D8783000, v3, v4, "image search has been onboarded", v5, 2u);
      MEMORY[0x1DA721330](v5, -1, -1);
    }

    v6 = v0[207];
    v7 = v0[198];
    v8 = v0[197];
    v9 = v0[196];

    v9[3] = 0u;
    v9[4] = 0u;
    v9[1] = 0u;
    v9[2] = 0u;
    *v9 = 0u;
    swift_storeEnumTagMultiPayload();
    v0[210] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
    sub_1D8B15EE0();
    v10 = *(v7 + 8);
    v0[211] = v10;
    v0[212] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);
    static ImageSearchProvider.getImageSearchProvider()(v25);
    v11 = v25[1];
    v0[213] = v25[0];
    v0[214] = v11;
    if (v11)
    {
      if (qword_1ECA620C0 != -1)
      {
        swift_once();
      }

      v12 = qword_1ECA631A0;
      v0[215] = qword_1ECA631A0;
      v13 = sub_1D887150C;
      v14 = 0;
    }

    else
    {
      v0[217] = *(v0[161] + 24);
      sub_1D8B15E80();
      v0[218] = sub_1D8B15E70();
      v21 = sub_1D8B15E00();
      v23 = v22;
      v13 = sub_1D88722E8;
      v12 = v21;
      v14 = v23;
    }

    return MEMORY[0x1EEE6DFA0](v13, v12, v14);
  }

  else
  {
    if (qword_1ECA62128 != -1)
    {
      swift_once();
    }

    v15 = sub_1D8B151E0();
    v0[229] = __swift_project_value_buffer(v15, qword_1ECA66978);
    v16 = sub_1D8B151C0();
    v17 = sub_1D8B16230();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D8783000, v16, v17, "onboarding image search", v18, 2u);
      MEMORY[0x1DA721330](v18, -1, -1);
    }

    v19 = swift_task_alloc();
    v0[230] = v19;
    *v19 = v0;
    v19[1] = sub_1D88752E4;
    v20 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DE38](v0 + 1857, 0, 0, 0xD000000000000017, 0x80000001D8B42BA0, sub_1D8B08C78, 0, v20);
  }
}

uint64_t sub_1D887150C()
{
  *(v0 + 1858) = sub_1D87C5DFC() & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D88715A8, 0, 0);
}

uint64_t sub_1D88715A8()
{
  if (*(v0 + 1858))
  {
    *(v0 + 1736) = *(*(v0 + 1288) + 24);
    sub_1D8B15E80();
    *(v0 + 1744) = sub_1D8B15E70();
    v1 = sub_1D8B15E00();
    v3 = v2;
    v4 = sub_1D88722E8;
    v5 = v1;
    v6 = v3;
  }

  else
  {
    v5 = *(v0 + 1720);
    v4 = sub_1D88716B8;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D88716B8()
{
  v1 = v0[215];
  v2 = v0[184];
  v3 = v0[183];
  v4 = v0[182];
  v5 = OBJC_IVAR____TtC22VisualIntelligenceCore28GoogleImageSearchRateLimiter_blockStartTime;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v5, v4, &qword_1ECA631A8);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_1D87A14E4(v0[182], &qword_1ECA631A8);
    v6 = sub_1D8884520;
  }

  else
  {
    v7 = v0[186];
    v8 = v0[185];
    v9 = v0[184];
    v10 = v0[183];
    (*(v9 + 32))(v7, v0[182], v10);
    sub_1D8B13110();
    sub_1D8B13160();
    v12 = v11;
    *(v0 + 216) = v11;
    v13 = *(v9 + 8);
    v13(v8, v10);
    v13(v7, v10);
    if (v12 <= 0.0)
    {
      v6 = sub_1D8871884;
    }

    else
    {
      v6 = sub_1D8871D84;
    }
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D8871884()
{
  if (qword_1EE0E4538 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[209], qword_1EE0E4540);
  v1 = sub_1D8B151C0();
  v2 = sub_1D8B161F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D8783000, v1, v2, "Google Image Search is rate limited. There is a minimum required cool down period.", v3, 2u);
    MEMORY[0x1DA721330](v3, -1, -1);
  }

  v4 = v0[214];
  v5 = v0[213];
  v15 = v0[211];
  v6 = v0[207];
  v14 = v0[197];
  v7 = v0[196];
  sub_1D8B15900();
  sub_1D8B158F0();

  sub_1D8B158E0();

  sub_1D8B158F0();
  sub_1D8B15920();
  sub_1D8B132F0();
  v8 = sub_1D8B159D0();
  v10 = v9;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD000000000000038, 0x80000001D8B42EE0);
  MEMORY[0x1DA71EFA0](v5, v4);

  MEMORY[0x1DA71EFA0](0xD00000000000003ALL, 0x80000001D8B42F20);
  v11 = MEMORY[0x1E69E7CC0];
  *v7 = MEMORY[0x1E69E7CC0];
  *(v7 + 8) = 0;
  *(v7 + 16) = v11;
  *(v7 + 24) = v11;
  *(v7 + 32) = 0xD000000000000016;
  *(v7 + 40) = 0x80000001D8B41490;
  *(v7 + 48) = v8;
  *(v7 + 56) = v10;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();
  v15(v6, v14);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D8871D84()
{
  v25 = v0;
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EE0E4538 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[209], qword_1EE0E4540);
  v1 = sub_1D8B151C0();
  v2 = sub_1D8B161F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v22 = v4;
    *v3 = 136315138;
    v5 = sub_1D8B0B960();
    v7 = sub_1D89AC714(v5, v6, &v22);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1D8783000, v1, v2, "Google Image Search is rate limited. Try again in %s.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x1DA721330](v4, -1, -1);
    MEMORY[0x1DA721330](v3, -1, -1);
  }

  v8 = v0[214];
  v9 = v0[213];
  v21 = v0[211];
  v10 = v0[207];
  v20 = v0[197];
  v11 = v0[196];
  sub_1D8B15900();
  sub_1D8B158F0();

  sub_1D8B158E0();

  sub_1D8B158F0();
  sub_1D8B15920();
  sub_1D8B132F0();
  v12 = sub_1D8B159D0();
  v14 = v13;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD000000000000038, 0x80000001D8B42EE0);
  MEMORY[0x1DA71EFA0](v9, v8);

  MEMORY[0x1DA71EFA0](0xD00000000000003ALL, 0x80000001D8B42F20);
  v15 = v22;
  v16 = v23;
  v17 = MEMORY[0x1E69E7CC0];
  *v11 = MEMORY[0x1E69E7CC0];
  *(v11 + 8) = 0;
  *(v11 + 16) = v17;
  *(v11 + 24) = v17;
  *(v11 + 32) = 0xD000000000000016;
  *(v11 + 40) = 0x80000001D8B41490;
  *(v11 + 48) = v12;
  *(v11 + 56) = v14;
  *(v11 + 64) = v15;
  *(v11 + 72) = v16;
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();
  v21(v10, v20);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1D88722E8()
{
  v1 = *(v0 + 1736);

  swift_getKeyPath();
  *(v0 + 1248) = v1;
  sub_1D8883B2C(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
  sub_1D8B13520();

  *(v0 + 1859) = *(v1 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D88723FC, 0, 0);
}

uint64_t sub_1D88723FC()
{
  if (*(v0 + 1859) != 1)
  {
    if (qword_1EE0E4538 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 1672), qword_1EE0E4540);
    v9 = sub_1D8B151C0();
    v10 = sub_1D8B161F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D8783000, v9, v10, "No network internet connectivity", v11, 2u);
      MEMORY[0x1DA721330](v11, -1, -1);
    }

    v12 = *(v0 + 1712);

    if (v12)
    {
      v13 = *(v0 + 1712);
      *(v0 + 96) = *(v0 + 1704);
      *(v0 + 104) = v13;
      v14 = &off_1F5429C08;
      v15 = &type metadata for GoogleImageSearch;
    }

    else
    {
      v14 = &off_1F542A738;
      v15 = &type metadata for ImageSearchProviderUnavailable;
    }

    *(v0 + 120) = v15;
    *(v0 + 128) = v14;
    __swift_project_boxed_opaque_existential_1((v0 + 96), v15);
    v23 = (v14[3])();
    v73 = v24;
    v76 = v23;
    __swift_destroy_boxed_opaque_existential_1(v0 + 96);
    sub_1D8B158D0();
    sub_1D881F764(0, &qword_1EE0E36B0);
    if (!sub_1D8B163E0())
    {
      v25 = [objc_opt_self() mainBundle];
    }

    v70 = *(v0 + 1688);
    v26 = *(v0 + 1624);
    v27 = *(v0 + 1576);
    v28 = *(v0 + 1536);
    sub_1D8B132F0();
    v29 = sub_1D8B159D0();
    v30 = MEMORY[0x1E69E7CC0];
    *v28 = MEMORY[0x1E69E7CC0];
    *(v28 + 8) = 0;
    *(v28 + 16) = v30;
    *(v28 + 24) = v30;
    *(v28 + 32) = v76;
    *(v28 + 40) = v73;
    *(v28 + 48) = v29;
    *(v28 + 56) = v31;
    *(v28 + 64) = 0;
    *(v28 + 72) = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    v70(v26, v27);
    goto LABEL_36;
  }

  v1 = *(*(v0 + 1256) + *(*(v0 + 1664) + 40));
  *(v0 + 1752) = v1;
  if (!v1)
  {

    if (qword_1EE0E4538 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 1672), qword_1EE0E4540);
    v16 = sub_1D8B151C0();
    v17 = sub_1D8B16210();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D8783000, v16, v17, "Could not retrieve frame for image search", v18, 2u);
      MEMORY[0x1DA721330](v18, -1, -1);
    }

    v19 = *(v0 + 1688);
    v20 = *(v0 + 1656);
    v21 = *(v0 + 1576);
    v22 = *(v0 + 1568);

    *v22 = 0xD000000000000029;
    v22[1] = 0x80000001D8B42DD0;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    v19(v20, v21);
    goto LABEL_36;
  }

  type metadata accessor for SaliencyPixelSmuggler();
  v2 = v1;
  sub_1D888DB40();
  *(v0 + 1240) = 0;
  IOSurface = CVPixelBufferGetIOSurface(v2);
  if (IOSurface)
  {
    v4 = IOSurface;
    viCore_lockUnlockWithFence(v4);
  }

  VTCreateCGImageFromCVPixelBuffer(v2, 0, (v0 + 1240));
  v5 = *(v0 + 1240);
  *(v0 + 1760) = v5;
  if (!v5)
  {
LABEL_26:
    v36 = *(v0 + 1712);
    if (v36)
    {
      *(v0 + 176) = *(v0 + 1704);
      *(v0 + 184) = v36;
      v37 = &off_1F5429C08;
      v38 = &type metadata for GoogleImageSearch;
    }

    else
    {
      v37 = &off_1F542A738;
      v38 = &type metadata for ImageSearchProviderUnavailable;
    }

    v77 = v2;
    *(v0 + 200) = v38;
    *(v0 + 208) = v37;
    __swift_project_boxed_opaque_existential_1((v0 + 176), v38);
    v47 = (v37[3])();
    v72 = v48;
    v75 = v47;
    __swift_destroy_boxed_opaque_existential_1(v0 + 176);
    sub_1D8B158D0();
    sub_1D881F764(0, &qword_1EE0E36B0);
    if (!sub_1D8B163E0())
    {
      v49 = [objc_opt_self() mainBundle];
    }

    v69 = *(v0 + 1688);
    v50 = *(v0 + 1632);
    v51 = *(v0 + 1576);
    v52 = *(v0 + 1544);
    sub_1D8B132F0();
    v53 = sub_1D8B159D0();
    v54 = MEMORY[0x1E69E7CC0];
    *v52 = MEMORY[0x1E69E7CC0];
    *(v52 + 8) = 0;
    *(v52 + 16) = v54;
    *(v52 + 24) = v54;
    *(v52 + 32) = v75;
    *(v52 + 40) = v72;
    *(v52 + 48) = v53;
    *(v52 + 56) = v55;
    *(v52 + 64) = 0xD00000000000003ELL;
    *(v52 + 72) = 0x80000001D8B42E00;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();

    v69(v50, v51);
LABEL_36:

    v56 = *(v0 + 8);

    return v56();
  }

  v6 = *(v0 + 1712);
  if (v6)
  {
    *(v0 + 216) = *(v0 + 1704);
    *(v0 + 224) = v6;
    v7 = &off_1F5429C08;
    v8 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v7 = &off_1F542A738;
    v8 = &type metadata for ImageSearchProviderUnavailable;
  }

  *(v0 + 1768) = v6;
  *(v0 + 240) = v8;
  *(v0 + 248) = v7;
  __swift_project_boxed_opaque_existential_1((v0 + 216), v8);
  v32 = v7[6];

  v33 = v32(v5, 1);
  v35 = v34;
  *(v0 + 1776) = v33;
  *(v0 + 1784) = v34;
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);
  if (v35 >> 60 == 15)
  {

    goto LABEL_26;
  }

  v39 = *(v0 + 1664);
  v40 = *(v0 + 1352);
  v41 = *(v0 + 1256);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  sub_1D87A0E38(v41 + *(v39 + 56), v40, &qword_1ECA64340);
  v42 = type metadata accessor for ExecutionParameter();
  if ((*(*(v42 - 8) + 48))(v40, 1, v42) != 1)
  {
    sub_1D87A0E38(*(v0 + 1352), *(v0 + 1344), &qword_1ECA64340);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v44 = *(v0 + 1344);
    if (EnumCaseMultiPayload == 1)
    {
      if ((*v44 & 1) == 0)
      {
        v58 = *(*(v0 + 1288) + 40) - 1;
        v71 = 0;
        v74 = 0;
        if (v58 >= 4)
        {
          LOBYTE(v45) = 2;
        }

        else
        {
          v45 = 0x10300u >> (8 * v58);
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        LOBYTE(v45) = *v44;
        v71 = *(v44 + 16);
        v74 = *(v44 + 8);
        v46 = *(v44 + 24);
LABEL_49:
        v78 = v46;
        goto LABEL_50;
      }

      sub_1D8883F50(v44, type metadata accessor for ExecutionParameter);
    }
  }

  if (qword_1EE0E4538 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 1672), qword_1EE0E4540);
  v59 = sub_1D8B151C0();
  v60 = sub_1D8B16210();
  if (!os_log_type_enabled(v59, v60))
  {

    LOBYTE(v45) = 0;
    v71 = 0;
    v74 = 0;
LABEL_48:
    v46 = 2;
    goto LABEL_49;
  }

  v78 = 2;
  v61 = swift_slowAlloc();
  *v61 = 0;
  _os_log_impl(&dword_1D8783000, v59, v60, "Performing image search with unknown context (not provided)", v61, 2u);
  MEMORY[0x1DA721330](v61, -1, -1);

  LOBYTE(v45) = 0;
  v71 = 0;
  v74 = 0;
LABEL_50:
  v62 = *(v0 + 1712);
  v63 = *(v0 + 1704);
  v64 = *(v0 + 1336);
  sub_1D87A14E4(*(v0 + 1352), &qword_1ECA64340);
  v65 = swift_allocObject();
  *(v0 + 1792) = v65;
  *(v65 + 16) = v63;
  *(v65 + 24) = v62;
  *(v65 + 32) = v33;
  *(v65 + 40) = v35;
  *(v65 + 48) = v45;
  *(v65 + 56) = v74;
  *(v65 + 64) = v71;
  *(v65 + 72) = v78;

  sub_1D8883D78(v33, v35);
  _s22VisualIntelligenceCore7TimeoutO7perform6within2on9operationx8DurationQy__q_xyYaYbKctYaKs8SendableRzs5ClockR_r0_lFZfA0__0();
  *(v0 + 1200) = xmmword_1D8B23E00;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64428);
  v67 = swift_task_alloc();
  *(v0 + 1800) = v67;
  v67[2] = &unk_1D8B240C8;
  v67[3] = v65;
  v67[4] = v64;
  v67[5] = v0 + 1200;
  v68 = swift_task_alloc();
  *(v0 + 1808) = v68;
  *v68 = v0;
  v68[1] = sub_1D8873098;

  return MEMORY[0x1EEE6DD58](v0 + 1232, v66, v66, 0, 0, &unk_1D8B240E0, v67, v66);
}

uint64_t sub_1D8873098()
{
  v2 = *v1;
  *(*v1 + 1816) = v0;

  if (v0)
  {
    v3 = sub_1D887469C;
  }

  else
  {
    v4 = v2[167];
    v5 = v2[166];
    v6 = v2[165];

    v2[228] = v2[154];
    (*(v5 + 8))(v4, v6);
    v3 = sub_1D8873228;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8873228()
{
  v165 = v0;
  v164 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1824);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_1D87C1470(v3, v0 + 776);
      v5 = *(v0 + 800);
      v6 = *(v0 + 808);
      __swift_project_boxed_opaque_existential_1((v0 + 776), v5);
      (*(v6 + 24))(v5, v6);
      if (*(v0 + 880))
      {
        sub_1D8788F40((v0 + 856), v0 + 816);
        v7 = *(v0 + 840);
        v8 = *(v0 + 848);
        __swift_project_boxed_opaque_existential_1((v0 + 816), v7);
        (*(v8 + 8))(v7, v8);
        v9 = *(v0 + 320);
        v10 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), v9);
        v11 = *((*(v10 + 8))(v9, v10) + 16);

        __swift_destroy_boxed_opaque_existential_1(v0 + 296);
        if (v11)
        {
          sub_1D87A0E38(v0 + 256, v0 + 56, &qword_1ECA64430);
          if (*(v0 + 80))
          {
            v12 = *(v0 + 1312);
            v13 = *(v0 + 1304);
            sub_1D8788F40((v0 + 56), v0 + 136);
            v14 = *(v0 + 800);
            v15 = *(v0 + 808);
            __swift_project_boxed_opaque_existential_1((v0 + 776), v14);
            (*(v15 + 16))(v14, v15);
            v16 = sub_1D8B13000();
            v17 = *(*(v16 - 8) + 48);
            v157 = v17(v12, 1, v16);
            sub_1D87A14E4(v12, &qword_1ECA630C0);
            v19 = *(v0 + 160);
            v18 = *(v0 + 168);
            __swift_project_boxed_opaque_existential_1((v0 + 136), v19);
            (*(v18 + 16))(v19, v18);
            v20 = v17(v13, 1, v16);
            sub_1D87A14E4(v13, &qword_1ECA630C0);
            if (v20 == 1)
            {
              if (v157 != 1)
              {
LABEL_27:
                sub_1D87A14E4(v0 + 256, &qword_1ECA64430);
                sub_1D87C1470(v0 + 776, v0 + 256);
                goto LABEL_28;
              }
            }

            else if (v157 == 1)
            {
              goto LABEL_28;
            }

            v34 = *(v0 + 800);
            v35 = *(v0 + 808);
            __swift_project_boxed_opaque_existential_1((v0 + 776), v34);
            (*(v35 + 8))(v34, v35);
            v38 = v36 * v37;
            v39 = *(v0 + 160);
            v40 = *(v0 + 168);
            __swift_project_boxed_opaque_existential_1((v0 + 136), v39);
            (*(v40 + 8))(v39, v40);
            if (v41 * v42 < v38)
            {
              goto LABEL_27;
            }

LABEL_28:
            __swift_destroy_boxed_opaque_existential_1(v0 + 136);
          }

          else
          {
            sub_1D87A14E4(v0 + 56, &qword_1ECA64430);
            sub_1D87A14E4(v0 + 256, &qword_1ECA64430);
            sub_1D87C1470(v0 + 776, v0 + 256);
          }

          v4 = v0 + 816;
          goto LABEL_4;
        }

        __swift_destroy_boxed_opaque_existential_1(v0 + 816);
      }

      else
      {
        sub_1D87A14E4(v0 + 856, &qword_1ECA64438);
      }

      if (qword_1EE0E4538 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v0 + 1672), qword_1EE0E4540);
      sub_1D87C1470(v0 + 776, v0 + 896);
      v21 = sub_1D8B151C0();
      v22 = sub_1D8B16210();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v161 = v24;
        *v23 = 136315138;
        v25 = *(v0 + 920);
        v26 = *(v0 + 928);
        __swift_project_boxed_opaque_existential_1((v0 + 896), v25);
        (*(v26 + 32))(v25, v26);
        v27 = *(v0 + 360);
        v28 = *(v0 + 368);
        __swift_project_boxed_opaque_existential_1((v0 + 336), v27);
        v29 = (*(v28 + 16))(v27, v28);
        if (v30)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0;
        }

        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0xE000000000000000;
        }

        __swift_destroy_boxed_opaque_existential_1(v0 + 336);
        __swift_destroy_boxed_opaque_existential_1(v0 + 896);
        v33 = sub_1D89AC714(v31, v32, &v161);

        *(v23 + 4) = v33;
        _os_log_impl(&dword_1D8783000, v21, v22, "Skipping object with status %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1DA721330](v24, -1, -1);
        MEMORY[0x1DA721330](v23, -1, -1);

        goto LABEL_5;
      }

      v4 = v0 + 896;
LABEL_4:
      __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v0 + 776);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v43 = *(v0 + 280);
  if (v43)
  {
    v44 = *(v0 + 288);
    v45 = __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
    v46 = *(v43 - 8);
    v47 = swift_task_alloc();
    (*(v46 + 16))(v47, v45, v43);
    (*(v44 + 24))(v43, v44);
    (*(v46 + 8))(v47, v43);

    if (*(v0 + 1000))
    {
      sub_1D8788F40((v0 + 976), v0 + 936);
      v48 = *(v0 + 960);
      v49 = *(v0 + 968);
      __swift_project_boxed_opaque_existential_1((v0 + 936), v48);
      (*(v49 + 8))(v48, v49);
      v50 = *(v0 + 1160);
      v51 = *(v0 + 1168);
      __swift_project_boxed_opaque_existential_1((v0 + 1136), v50);
      v52 = (*(v51 + 8))(v50, v51);
      v53 = *(v52 + 16);
      v54 = MEMORY[0x1E69E7CC0];
      if (v53)
      {
        v160 = MEMORY[0x1E69E7CC0];
        sub_1D87F4458(0, v53, 0);
        v55 = v160;
        v56 = v52 + 32;
        do
        {
          sub_1D87C1470(v56, v0 + 16);
          v57 = *(v0 + 40);
          v58 = *(v0 + 48);
          v59 = __swift_project_boxed_opaque_existential_1((v0 + 16), v57);
          v60 = *(v57 - 8);
          v61 = swift_task_alloc();
          (*(v60 + 16))(v61, v59, v57);
          ImageSearchItem.init<A>(with:)(v61, v57, v58, &v161);

          __swift_destroy_boxed_opaque_existential_1(v0 + 16);
          v63 = *(v160 + 16);
          v62 = *(v160 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_1D87F4458((v62 > 1), v63 + 1, 1);
          }

          *(v160 + 16) = v63 + 1;
          v64 = v160 + 40 * v63;
          v65 = v161;
          v66 = v162;
          *(v64 + 64) = v163;
          *(v64 + 32) = v65;
          *(v64 + 48) = v66;
          v56 += 40;
          --v53;
        }

        while (v53);

        v54 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v55 = MEMORY[0x1E69E7CC0];
      }

      __swift_destroy_boxed_opaque_existential_1(v0 + 1136);
      v93 = *(v0 + 960);
      v94 = *(v0 + 968);
      __swift_project_boxed_opaque_existential_1((v0 + 936), v93);
      (*(v94 + 8))(v93, v94);
      v96 = *(v0 + 480);
      v95 = *(v0 + 488);
      __swift_project_boxed_opaque_existential_1((v0 + 456), v96);
      v159 = (*(v95 + 16))(v96, v95);
      v97 = *(v0 + 960);
      v98 = *(v0 + 968);
      __swift_project_boxed_opaque_existential_1((v0 + 936), v97);
      v99 = (*(v98 + 16))(v97, v98);
      v100 = *(v99 + 16);
      if (v100)
      {
        sub_1D87F4420(0, v100, 0);
        v101 = v54;
        v102 = v99 + 32;
        do
        {
          sub_1D87C1470(v102, v0 + 416);
          v103 = *(v0 + 440);
          v104 = *(v0 + 448);
          v105 = __swift_project_boxed_opaque_existential_1((v0 + 416), v103);
          v106 = *(v103 - 8);
          v107 = swift_task_alloc();
          (*(v106 + 16))(v107, v105, v103);
          ImageSearchRelatedSearches.init<A>(with:)(&v161, v107, v103, v104);

          __swift_destroy_boxed_opaque_existential_1(v0 + 416);
          v109 = *(v101 + 16);
          v108 = *(v101 + 24);
          if (v109 >= v108 >> 1)
          {
            sub_1D87F4420((v108 > 1), v109 + 1, 1);
          }

          *(v101 + 16) = v109 + 1;
          v110 = v101 + 40 * v109;
          v111 = v161;
          v112 = v162;
          *(v110 + 64) = v163;
          *(v110 + 32) = v111;
          *(v110 + 48) = v112;
          v102 += 40;
          --v100;
        }

        while (v100);

        v54 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v101 = MEMORY[0x1E69E7CC0];
      }

      v113 = *(v0 + 960);
      v114 = *(v0 + 968);
      __swift_project_boxed_opaque_existential_1((v0 + 936), v113);
      v115 = (*(v114 + 24))(v113, v114);
      v116 = *(v115 + 16);
      if (v116)
      {
        sub_1D87F3DE4(0, v116, 0);
        v117 = v115 + 32;
        do
        {
          v118 = swift_allocObject();
          sub_1D87D3FD8(v117, v118 + 16);
          v120 = *(v54 + 16);
          v119 = *(v54 + 24);
          if (v120 >= v119 >> 1)
          {
            sub_1D87F3DE4((v119 > 1), v120 + 1, 1);
          }

          *(v54 + 16) = v120 + 1;
          v121 = v54 + 40 * v120;
          *(v121 + 32) = v118;
          *(v121 + 40) = v161;
          *(v121 + 56) = &type metadata for ImageSearchAdSection;
          *(v121 + 64) = &protocol witness table for ImageSearchAdSection;
          v117 += 40;
          --v116;
        }

        while (v116);
      }

      v122 = *(v0 + 280);
      if (v122)
      {
        v123 = *(v0 + 1296);
        v124 = *(v0 + 288);
        v125 = __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
        v126 = *(v122 - 8);
        v127 = swift_task_alloc();
        (*(v126 + 16))(v127, v125, v122);
        (*(v124 + 16))(v122, v124);
        (*(v126 + 8))(v127, v122);
        v128 = sub_1D8B13000();
        v129 = *(v128 - 8);
        if ((*(v129 + 48))(v123, 1, v128) != 1)
        {
          v134 = *(v0 + 1296);
          v156 = sub_1D8B12F20();
          v153 = v135;
          (*(v129 + 8))(v134, v128);

LABEL_72:
          v148 = *(v0 + 1776);
          v150 = *(v0 + 1784);
          v137 = *(v0 + 1760);
          v138 = *(v0 + 1752);
          v151 = *(v0 + 1688);
          v139 = *(v0 + 1648);
          v146 = *(v0 + 1576);
          v140 = *(v0 + 1560);
          *v140 = v55;
          *(v140 + 8) = v159 & 1;
          *(v140 + 16) = v101;
          *(v140 + 24) = v54;
          *(v140 + 32) = v156;
          *(v140 + 40) = v153;
          *(v140 + 48) = 0;
          *(v140 + 56) = 0xE000000000000000;
          *(v140 + 64) = 0;
          *(v140 + 72) = 0xE000000000000000;
          swift_storeEnumTagMultiPayload();
          sub_1D8B15EE0();

          sub_1D87C12A4(v148, v150);
          v151(v139, v146);
          __swift_destroy_boxed_opaque_existential_1(v0 + 456);
          __swift_destroy_boxed_opaque_existential_1(v0 + 936);
          goto LABEL_73;
        }

        v130 = *(v0 + 1296);

        sub_1D87A14E4(v130, &qword_1ECA630C0);
      }

      if (*(v0 + 1712))
      {
        v131 = *(v0 + 1768);
        *(v0 + 376) = *(v0 + 1704);
        *(v0 + 384) = v131;
        v132 = &off_1F5429C08;
        v133 = &type metadata for GoogleImageSearch;
      }

      else
      {
        v132 = &off_1F542A738;
        v133 = &type metadata for ImageSearchProviderUnavailable;
      }

      *(v0 + 400) = v133;
      *(v0 + 408) = v132;
      __swift_project_boxed_opaque_existential_1((v0 + 376), v133);
      v156 = (v132[3])();
      v153 = v136;
      __swift_destroy_boxed_opaque_existential_1(v0 + 376);
      goto LABEL_72;
    }
  }

  else
  {
    *(v0 + 1008) = 0;
    *(v0 + 976) = 0u;
    *(v0 + 992) = 0u;
  }

  v67 = *(v0 + 1712);
  sub_1D87A14E4(v0 + 976, &qword_1ECA64438);
  v68 = *(v0 + 1768);
  if (v67)
  {
    *(v0 + 1016) = *(v0 + 1704);
    *(v0 + 1024) = v68;
    v69 = &off_1F5429C08;
    v70 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v69 = &off_1F542A738;
    v70 = &type metadata for ImageSearchProviderUnavailable;
  }

  v71 = *(v0 + 1712);
  *(v0 + 1040) = v70;
  *(v0 + 1048) = v69;
  __swift_project_boxed_opaque_existential_1((v0 + 1016), v70);
  v72 = v69[3];

  v158 = v72();
  v155 = v73;
  __swift_destroy_boxed_opaque_existential_1(v0 + 1016);
  sub_1D8B15900();
  sub_1D8B158F0();
  v74 = *(v0 + 1768);
  if (v71)
  {
    *(v0 + 1056) = *(v0 + 1704);
    *(v0 + 1064) = v74;
    v75 = &off_1F5429C08;
    v76 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v75 = &off_1F542A738;
    v76 = &type metadata for ImageSearchProviderUnavailable;
  }

  *(v0 + 1080) = v76;
  *(v0 + 1088) = v75;
  __swift_project_boxed_opaque_existential_1((v0 + 1056), v76);
  v77 = v75[2];

  v77();
  __swift_destroy_boxed_opaque_existential_1(v0 + 1056);
  sub_1D8B158E0();

  sub_1D8B158F0();
  sub_1D8B15920();
  sub_1D881F764(0, &qword_1EE0E36B0);
  if (!sub_1D8B163E0())
  {
    v78 = [objc_opt_self() mainBundle];
  }

  v79 = *(v0 + 1712);
  sub_1D8B132F0();
  v80 = sub_1D8B159D0();
  v152 = v81;
  v154 = v80;
  *&v161 = 0;
  *(&v161 + 1) = 0xE000000000000000;
  sub_1D8B16720();
  if (v79)
  {
    v82 = *(v0 + 1768);
    *(v0 + 1096) = *(v0 + 1704);
    *(v0 + 1104) = v82;
    v83 = &off_1F5429C08;
    v84 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v83 = &off_1F542A738;
    v84 = &type metadata for ImageSearchProviderUnavailable;
  }

  v145 = *(v0 + 1776);
  v147 = *(v0 + 1784);
  v85 = *(v0 + 1760);
  v149 = *(v0 + 1688);
  v86 = *(v0 + 1640);
  v143 = *(v0 + 1752);
  v144 = *(v0 + 1576);
  v87 = *(v0 + 1552);
  *(v0 + 1120) = v84;
  *(v0 + 1128) = v83;
  __swift_project_boxed_opaque_existential_1((v0 + 1096), v84);
  v88 = (v83[2])();
  v90 = v89;
  __swift_destroy_boxed_opaque_existential_1(v0 + 1096);
  MEMORY[0x1DA71EFA0](v88, v90);

  MEMORY[0x1DA71EFA0](0xD00000000000004CLL, 0x80000001D8B42E90);
  v91 = v161;
  v92 = MEMORY[0x1E69E7CC0];
  *v87 = MEMORY[0x1E69E7CC0];
  *(v87 + 8) = 0;
  *(v87 + 16) = v92;
  *(v87 + 24) = v92;
  *(v87 + 32) = v158;
  *(v87 + 40) = v155;
  *(v87 + 48) = v154;
  *(v87 + 56) = v152;
  *(v87 + 64) = v91;
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();

  sub_1D87C12A4(v145, v147);
  v149(v86, v144);
LABEL_73:
  sub_1D87A14E4(v0 + 256, &qword_1ECA64430);

  v141 = *(v0 + 8);

  return v141();
}

uint64_t sub_1D887469C()
{
  v111 = v0;
  v110 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1336);
  v3 = *(v0 + 1328);
  v4 = *(v0 + 1320);

  (*(v3 + 8))(v2, v4);
  *(v0 + 1224) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  v6 = swift_dynamicCast();
  v7 = *(v0 + 1816);
  if (v6)
  {
    v8 = *(v0 + 1712);

    v9 = *(v0 + 1768);
    if (v8)
    {
      *(v0 + 656) = *(v0 + 1704);
      *(v0 + 664) = v9;
      v10 = &off_1F5429C08;
      v11 = &type metadata for GoogleImageSearch;
    }

    else
    {
      v10 = &off_1F542A738;
      v11 = &type metadata for ImageSearchProviderUnavailable;
    }

    v22 = *(v0 + 1712);
    *(v0 + 680) = v11;
    *(v0 + 688) = v10;
    __swift_project_boxed_opaque_existential_1((v0 + 656), v11);
    v23 = v10[3];

    v24 = v23();
    v103 = v25;
    v106 = v24;
    __swift_destroy_boxed_opaque_existential_1(v0 + 656);
    sub_1D8B15900();
    sub_1D8B158F0();
    v26 = *(v0 + 1768);
    if (v22)
    {
      *(v0 + 696) = *(v0 + 1704);
      *(v0 + 704) = v26;
      v27 = &off_1F5429C08;
      v28 = &type metadata for GoogleImageSearch;
    }

    else
    {
      v27 = &off_1F542A738;
      v28 = &type metadata for ImageSearchProviderUnavailable;
    }

    *(v0 + 720) = v28;
    *(v0 + 728) = v27;
    __swift_project_boxed_opaque_existential_1((v0 + 696), v28);
    v29 = v27[2];

    v29();
    __swift_destroy_boxed_opaque_existential_1(v0 + 696);
    sub_1D8B158E0();

    sub_1D8B158F0();
    sub_1D8B15920();
    sub_1D881F764(0, &qword_1EE0E36B0);
    if (!sub_1D8B163E0())
    {
      v30 = [objc_opt_self() mainBundle];
    }

    v31 = *(v0 + 1712);
    sub_1D8B132F0();
    v32 = sub_1D8B159D0();
    v93 = v33;
    v96 = v32;
    if (v31)
    {
      v34 = *(v0 + 1768);
      *(v0 + 736) = *(v0 + 1704);
      *(v0 + 744) = v34;
      v35 = &off_1F5429C08;
      v36 = &type metadata for GoogleImageSearch;
    }

    else
    {
      v35 = &off_1F542A738;
      v36 = &type metadata for ImageSearchProviderUnavailable;
    }

    v90 = *(v0 + 1784);
    v88 = *(v0 + 1776);
    v37 = *(v0 + 1760);
    v83 = *(v0 + 1752);
    v98 = *(v0 + 1688);
    v38 = *(v0 + 1608);
    v85 = *(v0 + 1576);
    v39 = *(v0 + 1520);
    *(v0 + 760) = v36;
    *(v0 + 768) = v35;
    __swift_project_boxed_opaque_existential_1((v0 + 736), v36);
    v40 = (v35[2])();
    __swift_destroy_boxed_opaque_existential_1(v0 + 736);
    v41 = sub_1D89CF244(v40);
    v43 = v42;

    v44 = MEMORY[0x1E69E7CC0];
    *v39 = MEMORY[0x1E69E7CC0];
    *(v39 + 8) = 0;
    *(v39 + 16) = v44;
    *(v39 + 24) = v44;
    *(v39 + 32) = v106;
    *(v39 + 40) = v103;
    *(v39 + 48) = v96;
    *(v39 + 56) = v93;
    *(v39 + 64) = v41;
    *(v39 + 72) = v43;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();

    sub_1D87C12A4(v88, v90);
    v98(v38, v85);
    v45 = *(v0 + 1224);
    goto LABEL_21;
  }

  *(v0 + 1216) = v7;
  v12 = v7;
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 1712);

    v14 = *(v0 + 1768);
    v15 = *(v0 + 1704);
    if (v13)
    {
      *(v0 + 616) = v15;
      *(v0 + 624) = v14;
      v16 = &off_1F5429C08;
      v17 = &type metadata for GoogleImageSearch;
    }

    else
    {
      v16 = &off_1F542A738;
      v17 = &type metadata for ImageSearchProviderUnavailable;
    }

    v91 = *(v0 + 1760);
    v94 = *(v0 + 1752);
    v46 = *(v0 + 1712);
    v104 = *(v0 + 1784);
    v99 = *(v0 + 1776);
    v101 = *(v0 + 1688);
    v86 = *(v0 + 1600);
    v97 = *(v0 + 1576);
    v47 = *(v0 + 1512);
    *(v0 + 640) = v17;
    *(v0 + 648) = v16;
    __swift_project_boxed_opaque_existential_1((v0 + 616), v17);
    v48 = v16[3];

    v49 = v48();
    v51 = v50;
    __swift_destroy_boxed_opaque_existential_1(v0 + 616);
    v108 = v15;
    v109 = v46;
    v52 = sub_1D888A854(&v108);
    v54 = v53;

    v55 = MEMORY[0x1E69E7CC0];
    *v47 = MEMORY[0x1E69E7CC0];
    *(v47 + 8) = 0;
    *(v47 + 16) = v55;
    *(v47 + 24) = v55;
    *(v47 + 32) = v49;
    *(v47 + 40) = v51;
    *(v47 + 48) = v52;
    *(v47 + 56) = v54;
    *(v47 + 64) = 0;
    *(v47 + 72) = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();

    sub_1D87C12A4(v99, v104);
    v101(v86, v97);
    v45 = *(v0 + 1216);
LABEL_21:

    goto LABEL_32;
  }

  v18 = *(v0 + 1712);

  v19 = *(v0 + 1768);
  if (v18)
  {
    *(v0 + 496) = *(v0 + 1704);
    *(v0 + 504) = v19;
    v20 = &off_1F5429C08;
    v21 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v20 = &off_1F542A738;
    v21 = &type metadata for ImageSearchProviderUnavailable;
  }

  v56 = *(v0 + 1712);
  *(v0 + 520) = v21;
  *(v0 + 528) = v20;
  __swift_project_boxed_opaque_existential_1((v0 + 496), v21);
  v57 = v20[3];

  v58 = v57();
  v105 = v59;
  v107 = v58;
  __swift_destroy_boxed_opaque_existential_1(v0 + 496);
  sub_1D8B15900();
  sub_1D8B158F0();
  v60 = *(v0 + 1768);
  if (v56)
  {
    *(v0 + 536) = *(v0 + 1704);
    *(v0 + 544) = v60;
    v61 = &off_1F5429C08;
    v62 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v61 = &off_1F542A738;
    v62 = &type metadata for ImageSearchProviderUnavailable;
  }

  *(v0 + 560) = v62;
  *(v0 + 568) = v61;
  __swift_project_boxed_opaque_existential_1((v0 + 536), v62);
  v63 = v61[2];

  v63();
  __swift_destroy_boxed_opaque_existential_1(v0 + 536);
  sub_1D8B158E0();

  sub_1D8B158F0();
  sub_1D8B15920();
  sub_1D881F764(0, &qword_1EE0E36B0);
  if (!sub_1D8B163E0())
  {
    v64 = [objc_opt_self() mainBundle];
  }

  v65 = *(v0 + 1712);
  sub_1D8B132F0();
  v66 = sub_1D8B159D0();
  v100 = v67;
  v102 = v66;
  v108 = 0;
  v109 = 0xE000000000000000;
  sub_1D8B16720();
  if (v65)
  {
    v68 = *(v0 + 1768);
    *(v0 + 576) = *(v0 + 1704);
    *(v0 + 584) = v68;
    v69 = &off_1F5429C08;
    v70 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v69 = &off_1F542A738;
    v70 = &type metadata for ImageSearchProviderUnavailable;
  }

  v82 = *(v0 + 1816);
  v92 = *(v0 + 1784);
  v89 = *(v0 + 1776);
  v71 = *(v0 + 1760);
  v84 = *(v0 + 1752);
  v95 = *(v0 + 1688);
  v72 = *(v0 + 1592);
  v87 = *(v0 + 1576);
  v73 = *(v0 + 1504);
  *(v0 + 600) = v70;
  *(v0 + 608) = v69;
  __swift_project_boxed_opaque_existential_1((v0 + 576), v70);
  v74 = (v69[2])();
  v76 = v75;
  __swift_destroy_boxed_opaque_existential_1(v0 + 576);
  MEMORY[0x1DA71EFA0](v74, v76);

  MEMORY[0x1DA71EFA0](0xD00000000000001FLL, 0x80000001D8B42E70);
  v77 = v108;
  v78 = v109;
  v79 = MEMORY[0x1E69E7CC0];
  *v73 = MEMORY[0x1E69E7CC0];
  *(v73 + 8) = 0;
  *(v73 + 16) = v79;
  *(v73 + 24) = v79;
  *(v73 + 32) = v107;
  *(v73 + 40) = v105;
  *(v73 + 48) = v102;
  *(v73 + 56) = v100;
  *(v73 + 64) = v77;
  *(v73 + 72) = v78;
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();

  sub_1D87C12A4(v89, v92);
  v95(v72, v87);
LABEL_32:
  sub_1D87A14E4(v0 + 256, &qword_1ECA64430);

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_1D88752E4()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1D887598C;
  }

  else
  {
    v2 = sub_1D8875424;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8875424()
{
  v1 = *(v0 + 1857);
  v2 = sub_1D8B151C0();
  if (v1 == 1)
  {
    v3 = sub_1D8B16230();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D8783000, v2, v3, "image search onboarding required", v4, 2u);
      MEMORY[0x1DA721330](v4, -1, -1);
    }

    v5 = *(v0 + 1656);
    v6 = *(v0 + 1584);
    v7 = *(v0 + 1576);
    v8 = *(v0 + 1568);

    *v8 = 1;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
    sub_1D8B15EE0();
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v9 = sub_1D8B16210();
    if (os_log_type_enabled(v2, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D8783000, v2, v9, "failed to request keybag utility authentication", v10, 2u);
      MEMORY[0x1DA721330](v10, -1, -1);
    }

    sub_1D8B158D0();
    sub_1D881F764(0, &qword_1EE0E36B0);
    if (!sub_1D8B163E0())
    {
      v11 = [objc_opt_self() mainBundle];
    }

    v12 = *(v0 + 1616);
    v13 = *(v0 + 1584);
    v14 = *(v0 + 1576);
    v15 = *(v0 + 1528);
    sub_1D8B132F0();
    v16 = sub_1D8B159D0();
    v17 = MEMORY[0x1E69E7CC0];
    *v15 = MEMORY[0x1E69E7CC0];
    *(v15 + 8) = 0;
    *(v15 + 16) = v17;
    *(v15 + 24) = v17;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0xE000000000000000;
    *(v15 + 48) = v16;
    *(v15 + 56) = v18;
    *(v15 + 64) = 0xD000000000000015;
    *(v15 + 72) = 0x80000001D8B42BC0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
    sub_1D8B15EE0();
    (*(v13 + 8))(v12, v14);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D887598C()
{
  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16210();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D8783000, v1, v2, "failed to request keybag utility authentication", v3, 2u);
    MEMORY[0x1DA721330](v3, -1, -1);
  }

  sub_1D8B158D0();
  sub_1D881F764(0, &qword_1EE0E36B0);
  if (!sub_1D8B163E0())
  {
    v4 = [objc_opt_self() mainBundle];
  }

  v5 = *(v0 + 1616);
  v6 = *(v0 + 1584);
  v7 = *(v0 + 1576);
  v8 = *(v0 + 1528);
  sub_1D8B132F0();
  v9 = sub_1D8B159D0();
  v10 = MEMORY[0x1E69E7CC0];
  *v8 = MEMORY[0x1E69E7CC0];
  *(v8 + 8) = 0;
  *(v8 + 16) = v10;
  *(v8 + 24) = v10;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v9;
  *(v8 + 56) = v11;
  *(v8 + 64) = 0xD000000000000015;
  *(v8 + 72) = 0x80000001D8B42BC0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  sub_1D8B15EE0();
  (*(v6 + 8))(v5, v7);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D8875E04(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = v5;
  *(v6 + 112) = a3;
  *(v6 + 120) = a4;
  *(v6 + 248) = a2;
  *(v6 + 104) = a1;
  sub_1D8B13350();
  *(v6 + 144) = swift_task_alloc();
  sub_1D8B15930();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = type metadata accessor for ResultLookupState(0);
  *(v6 + 168) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64390);
  *(v6 + 176) = v7;
  *(v6 + 184) = *(v7 - 8);
  *(v6 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8875F64, 0, 0);
}

uint64_t sub_1D8875F64()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[17];
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0x8000000000000000;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  swift_storeEnumTagMultiPayload();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  sub_1D8B15EE0();
  v6 = *(v2 + 8);
  v0[26] = v6;
  v0[27] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v0[28] = *(v5 + 24);
  sub_1D8B15E80();
  v0[29] = sub_1D8B15E70();
  v8 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8876098, v8, v7);
}

uint64_t sub_1D8876098()
{
  v1 = *(v0 + 224);

  swift_getKeyPath();
  *(v0 + 96) = v1;
  sub_1D8883B2C(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
  sub_1D8B13520();

  *(v0 + 249) = *(v1 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D8876180, 0, 0);
}

uint64_t sub_1D8876180()
{
  if (*(v0 + 249) == 1)
  {
    v1 = *(v0 + 104);
    v2 = type metadata accessor for BuiltInActionExecutor.Request();
    v3 = *(v2 + 36);
    v4 = (v1 + *(v2 + 60));
    *(v0 + 16) = *v4;
    v5 = v4[4];
    v7 = v4[1];
    v6 = v4[2];
    *(v0 + 64) = v4[3];
    *(v0 + 80) = v5;
    *(v0 + 32) = v7;
    *(v0 + 48) = v6;
    v8 = swift_task_alloc();
    *(v0 + 240) = v8;
    *v8 = v0;
    v8[1] = sub_1D88763A4;
    v9 = *(v0 + 112);
    v10 = *(v0 + 248);

    return sub_1D8877390(v1 + v3, v10, (v0 + 16), v9);
  }

  else
  {
    v12 = *(v0 + 208);
    v13 = *(v0 + 192);
    v15 = *(v0 + 168);
    v14 = *(v0 + 176);
    sub_1D8B158D0();
    sub_1D8B132F0();
    v16 = sub_1D8B159D0();
    *v15 = xmmword_1D8B23E10;
    *(v15 + 16) = xmmword_1D8B23E10;
    *(v15 + 32) = 0x4000000000000000;
    *(v15 + 40) = v16;
    *(v15 + 48) = v17;
    *(v15 + 56) = xmmword_1D8B23E10;
    *(v15 + 72) = 0;
    *(v15 + 80) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    v12(v13, v14);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1D88763A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D8876510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  sub_1D8B13350();
  v5[8] = swift_task_alloc();
  sub_1D8B15930();
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for BundleClassification.ClassificationType(0);
  v5[11] = swift_task_alloc();
  v5[12] = *(type metadata accessor for BundleClassification(0) - 8);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v5[14] = swift_task_alloc();
  v6 = type metadata accessor for CVBundle(0);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = type metadata accessor for ResultLookupState(0);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64390);
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88767A0, 0, 0);
}

uint64_t sub_1D88767A0()
{
  v70 = v0;
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[16];
  v6 = v0[14];
  v65 = v0[3];
  v67 = v0[15];
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  v61 = v4;
  sub_1D8B15EE0();
  v7 = *(v2 + 8);
  v0[26] = v7;
  v0[27] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v62 = v7;
  v7(v1, v3);
  v8 = type metadata accessor for BuiltInActionExecutor.Request();
  sub_1D87A0E38(v65 + *(v8 + 36), v6, &qword_1ECA67980);
  if ((*(v5 + 48))(v6, 1, v67) == 1)
  {
    sub_1D87A14E4(v0[14], &qword_1ECA67980);
    v9 = v0;
    if (qword_1ECA62120 != -1)
    {
      swift_once();
    }

    v10 = sub_1D8B151E0();
    __swift_project_value_buffer(v10, qword_1ECA66960);
    v11 = sub_1D8B151C0();
    v12 = sub_1D8B16210();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D8783000, v11, v12, "no CVBundle for barcode scanning", v13, 2u);
      MEMORY[0x1DA721330](v13, -1, -1);
    }

    v14 = v0[24];
    v16 = v0[20];
    v15 = v0[21];

    *v16 = 0xD000000000000028;
    *(v61 + 8) = 0x80000001D8B430D0;
    *(v61 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    v62(v14, v15);
    goto LABEL_33;
  }

  sub_1D88840C8(v0[14], v0[17], type metadata accessor for CVBundle);
  CVBundle.latestEstimate.getter(&v69);
  v0[28] = v69;
  v17 = CVBundle.classifications.getter();
  v18 = v17[2];
  v9 = v0;
  v66 = v0;
  if (!v18)
  {

    v23 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_18;
    }

LABEL_25:

    v64 = 0;
    v38 = 0;
LABEL_27:
    if (qword_1ECA62120 != -1)
    {
      swift_once();
    }

    v43 = v38;
    v44 = sub_1D8B151E0();
    __swift_project_value_buffer(v44, qword_1ECA66960);
    v45 = sub_1D8B151C0();
    v46 = sub_1D8B16210();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1D8783000, v45, v46, "No barcode action", v47, 2u);
      MEMORY[0x1DA721330](v47, -1, -1);
    }

    v48 = v9[24];
    v49 = v9[20];
    v50 = v9[21];
    v51 = v9[17];

    *v49 = 0xD000000000000011;
    *(v61 + 8) = 0x80000001D8B43100;
    *(v61 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();

    sub_1D8883EB4(0, v64, v43);
    v62(v48, v50);
    v52 = v51;
    goto LABEL_32;
  }

  v20 = v0[11];
  v19 = v0[12];
  v21 = v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v22 = *(v19 + 72);
  v23 = MEMORY[0x1E69E7CC0];
  v63 = v22;
  do
  {
    v24 = v9[13];
    v25 = v9[11];
    sub_1D8883FB0(v21, v24, type metadata accessor for BundleClassification);
    sub_1D8883FB0(v24, v25, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8883F50(v24, type metadata accessor for BundleClassification);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v27 = v9[11];
    if (EnumCaseMultiPayload == 2)
    {
      v28 = *v27;
      v30 = v20[1];
      v29 = v20[2];
      v31 = v20[3];
      v68 = v20[4];
      v32 = v20[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D87C8650(0, *(v23 + 2) + 1, 1, v23);
      }

      v34 = *(v23 + 2);
      v33 = *(v23 + 3);
      if (v34 >= v33 >> 1)
      {
        v23 = sub_1D87C8650((v33 > 1), v34 + 1, 1, v23);
      }

      *(v23 + 2) = v34 + 1;
      v35 = &v23[48 * v34];
      *(v35 + 4) = v28;
      *(v35 + 5) = v30;
      *(v35 + 6) = v29;
      *(v35 + 7) = v31;
      v9 = v66;
      *(v35 + 8) = v68;
      *(v35 + 9) = v32;
      v22 = v63;
    }

    else
    {
      sub_1D8883F50(v27, type metadata accessor for BundleClassification.ClassificationType);
    }

    v21 += v22;
    --v18;
  }

  while (v18);

  if (!*(v23 + 2))
  {
    goto LABEL_25;
  }

LABEL_18:
  v36 = *(v23 + 4);
  v9[29] = v36;
  v37 = *(v23 + 5);
  v38 = *(v23 + 6);
  v9[30] = v38;
  v9[31] = *(v23 + 8);
  v39 = v36;

  if (!v36)
  {
    v64 = v37;
    goto LABEL_27;
  }

  v40 = [v39 payloadDataType];
  if (v40 > 0xE || ((1 << v40) & 0x6742) == 0)
  {
    v54 = v66[29];
    v55 = v66[26];
    v56 = v66[24];
    v57 = v66[21];
    v58 = v66[20];
    v59 = v66[17];
    *v58 = v66[28];
    *(v58 + 8) = v54;
    *(v58 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();

    v9 = v66;

    v55(v56, v57);
    v52 = v59;
LABEL_32:
    sub_1D8883F50(v52, type metadata accessor for CVBundle);
LABEL_33:

    v53 = v9[1];

    return v53();
  }

  v9[32] = *(v9[7] + 24);
  sub_1D8B15E80();
  v9[33] = sub_1D8B15E70();
  v42 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8877000, v42, v41);
}

uint64_t sub_1D8877000()
{
  v1 = *(v0 + 256);

  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_1D8883B2C(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
  sub_1D8B13520();

  *(v0 + 272) = *(v1 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D88770E8, 0, 0);
}

uint64_t sub_1D88770E8()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 232);
    v2 = *(v0 + 208);
    v3 = *(v0 + 192);
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v15 = *(v0 + 136);
    *v5 = *(v0 + 224);
    *(v5 + 8) = v1;
    *(v5 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();

    v2(v3, v4);
  }

  else
  {
    sub_1D8B158D0();
    sub_1D881F764(0, &qword_1EE0E36B0);
    if (!sub_1D8B163E0())
    {
      v6 = [objc_opt_self() mainBundle];
    }

    v7 = *(v0 + 232);
    v14 = *(v0 + 208);
    v8 = *(v0 + 184);
    v13 = *(v0 + 168);
    v9 = *(v0 + 152);
    v15 = *(v0 + 136);
    sub_1D8B132F0();
    *v9 = sub_1D8B159D0();
    *(v9 + 8) = v10;
    *(v9 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();

    v14(v8, v13);
  }

  sub_1D8883F50(v15, type metadata accessor for CVBundle);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D8877390(uint64_t a1, char a2, _OWORD *a3, uint64_t a4)
{
  *(v5 + 200) = a4;
  *(v5 + 208) = v4;
  *(v5 + 376) = a2;
  *(v5 + 192) = a1;
  sub_1D8B13350();
  *(v5 + 216) = swift_task_alloc();
  sub_1D8B15930();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = type metadata accessor for ResultLookupState(0);
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64390);
  *(v5 + 256) = v7;
  *(v5 + 264) = *(v7 - 8);
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = *(type metadata accessor for TextDetectorResult(0) - 8);
  *(v5 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1D88775C4, 0, 0);
}

uint64_t sub_1D88775C4()
{
  v61 = v0;
  v1 = *(v0 + 320);
  sub_1D87A0E38(*(v0 + 192), v1, &qword_1ECA67980);
  v2 = type metadata accessor for CVBundle(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 320);
  if (v3 == 1)
  {
    sub_1D87A14E4(*(v0 + 320), &qword_1ECA67980);
LABEL_21:
    if (qword_1EE0E44C8 != -1)
    {
LABEL_39:
      swift_once();
    }

    v30 = *(v0 + 304);
    v31 = *(v0 + 192);
    v32 = sub_1D8B151E0();
    __swift_project_value_buffer(v32, qword_1EE0E44D0);
    sub_1D87A0E38(v31, v30, &qword_1ECA67980);
    v33 = sub_1D8B151C0();
    v34 = sub_1D8B16210();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 304);
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v60 = v38;
      *v37 = 136315138;
      v39 = sub_1D8878494();
      v41 = v40;
      sub_1D87A14E4(v36, &qword_1ECA67980);
      v42 = sub_1D89AC714(v39, v41, &v60);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_1D8783000, v33, v34, "Could not retrieve text for bundle %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1DA721330](v38, -1, -1);
      MEMORY[0x1DA721330](v37, -1, -1);
    }

    else
    {

      sub_1D87A14E4(v36, &qword_1ECA67980);
    }

    v43 = *(v0 + 280);
    v44 = *(v0 + 256);
    v45 = *(v0 + 264);
    v46 = *(v0 + 248);
    *v46 = 0xD000000000000017;
    v46[1] = 0x80000001D8B42F60;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
    sub_1D8B15EE0();
    (*(v45 + 8))(v43, v44);
    goto LABEL_26;
  }

  v5 = CVBundle.textDetections.getter();
  sub_1D8883F50(v4, type metadata accessor for CVBundle);
  v6 = *(v5 + 2);
  if (!v6)
  {

    goto LABEL_21;
  }

  v7 = 0;
  v8 = *(v0 + 288);
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v7 >= *(v5 + 2))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (*&v5[8 * v7 + 32] >> 60 == 5)
    {
      v11 = *(v0 + 296);
      v12 = swift_projectBox();
      sub_1D8883FB0(v12, v11, type metadata accessor for TextDetectorResult);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1D87C7EE0(0, v9[2] + 1, 1, v9);
      }

      v14 = v9[2];
      v13 = v9[3];
      if (v14 >= v13 >> 1)
      {
        v9 = sub_1D87C7EE0(v13 > 1, v14 + 1, 1, v9);
      }

      v10 = *(v0 + 296);
      v9[2] = v14 + 1;
      sub_1D88840C8(v10, v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, type metadata accessor for TextDetectorResult);
    }

    ++v7;
  }

  while (v6 != v7);
  v16 = *(v0 + 328);
  v15 = *(v0 + 336);

  v17 = _s22VisualIntelligenceCore31TextDetectionReadabilityUtilityV016generateReadableD0_15imageResolution21skipReadabiltySorting5isRTL13minConfidenceSSSayAA0D14DetectorResultVG_So6CGSizeVS2bSftFZ_0(v9, 0, v16, v15, 0.0);
  v19 = v18;

  *(v0 + 344) = v19;
  v20 = sub_1D89CDF94(v17, v19);
  if (qword_1EE0E44C8 != -1)
  {
    swift_once();
  }

  v21 = sub_1D8B151E0();
  *(v0 + 352) = __swift_project_value_buffer(v21, qword_1EE0E44D0);
  v22 = sub_1D8B151C0();
  v23 = sub_1D8B16200();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v20 & 1;
    _os_log_impl(&dword_1D8783000, v22, v23, "Language is eligible for summarization: %{BOOL}d", v24, 8u);
    MEMORY[0x1DA721330](v24, -1, -1);
  }

  if ((v20 & 1) == 0)
  {
    v49 = sub_1D8B151C0();
    v50 = sub_1D8B161F0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1D8783000, v49, v50, "Language is not eligible for summarization", v51, 2u);
      MEMORY[0x1DA721330](v51, -1, -1);
    }

    sub_1D8B158D0();
    sub_1D881F764(0, &qword_1EE0E36B0);
    if (!sub_1D8B163E0())
    {
      v52 = [objc_opt_self() mainBundle];
    }

    v54 = *(v0 + 264);
    v53 = *(v0 + 272);
    v59 = *(v0 + 256);
    v55 = *(v0 + 240);
    sub_1D8B132F0();
    v56 = sub_1D8B159D0();
    *v55 = v17;
    *(v55 + 8) = v19;
    *(v55 + 16) = xmmword_1D8B23E10;
    *(v55 + 32) = 0x4000000000000000;
    *(v55 + 40) = v56;
    *(v55 + 48) = v57;
    *(v55 + 56) = 0xD000000000000027;
    *(v55 + 64) = 0x80000001D8B42FC0;
    *(v55 + 72) = 0xD000000000000012;
    *(v55 + 80) = 0x80000001D8B42FF0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
    sub_1D8B15EE0();
    (*(v54 + 8))(v53, v59);
LABEL_26:

    v47 = *(v0 + 8);

    return v47();
  }

  if (*(v0 + 376) == 1)
  {
    v25 = swift_task_alloc();
    *(v0 + 360) = v25;
    *v25 = v0;
    v25[1] = sub_1D8877E44;
    v26 = v0 + 104;
    v27 = v17;
    v28 = v19;
    v29 = 1;
  }

  else
  {
    v58 = swift_task_alloc();
    *(v0 + 368) = v58;
    *v58 = v0;
    v58[1] = sub_1D88780C8;
    v26 = v0 + 16;
    v27 = v17;
    v28 = v19;
    v29 = 0;
  }

  return TextSummarizer.summarize(text:useExternalIntelligence:)(v26, v27, v28, v29);
}

uint64_t sub_1D8877E44()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8877F5C, 0, 0);
}

uint64_t sub_1D8877F5C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 136) & 0x10101 | 0x4000000000000000;
  v6 = *(v0 + 120);
  v7 = *(v0 + 144);
  v8 = *(v0 + 160);
  v9 = *(v0 + 176);
  *v4 = *(v0 + 104);
  *(v4 + 16) = v6;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 56) = v8;
  *(v4 + 72) = v9;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  sub_1D8B15EE0();
  (*(v3 + 8))(v1, v2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D88780C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88781E0, 0, 0);
}

uint64_t sub_1D88781E0()
{
  v26 = v0;
  v23 = *(v0 + 32);
  v24 = *(v0 + 16);
  v1 = *(v0 + 48);
  v21 = *(v0 + 72);
  v22 = *(v0 + 56);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_1D87A0E38(*(v0 + 192), *(v0 + 312), &qword_1ECA67980);
  v4 = sub_1D8B151C0();
  v5 = sub_1D8B161F0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 312);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    v10 = sub_1D8878494();
    v20 = v1;
    v1 = v2;
    v12 = v11;
    sub_1D87A14E4(v7, &qword_1ECA67980);
    v13 = sub_1D89AC714(v10, v12, &v25);
    v2 = v1;
    LODWORD(v1) = v20;

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D8783000, v4, v5, "Summarization finished for bundle %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1DA721330](v9, -1, -1);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  else
  {

    sub_1D87A14E4(v7, &qword_1ECA67980);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v17 = *(v0 + 248);
  *v17 = v24;
  *(v17 + 16) = v23;
  *(v17 + 32) = v1 & 0x10101 | 0x4000000000000000;
  *(v17 + 56) = v21;
  *(v17 + 40) = v22;
  *(v17 + 72) = v3;
  *(v17 + 80) = v2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  sub_1D8B15EE0();
  (*(v16 + 8))(v14, v15);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D8878494()
{
  v0 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v34 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D8B13240();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - v12;
  v14 = type metadata accessor for CVBundle(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87A0E38(v37, v13, &qword_1ECA67980);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D87A14E4(v13, &qword_1ECA67980);
    return 0x4E574F4E4B4E55;
  }

  else
  {
    sub_1D88840C8(v13, v17, type metadata accessor for CVBundle);
    sub_1D8883FB0(v17, v4, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v35;
      v19 = v36;
      v21 = *(v35 + 32);
      v21(v8, v4, v36);
    }

    else
    {
      v22 = v34;
      sub_1D88840C8(v4, v34, type metadata accessor for CVTrackSnapshot);
      v20 = v35;
      v19 = v36;
      (*(v35 + 16))(v8, v22, v36);
      sub_1D8883F50(v22, type metadata accessor for CVTrackSnapshot);
      v21 = *(v20 + 32);
    }

    v21(v10, v8, v19);
    sub_1D8B131E0();
    v23 = sub_1D881BE2C(8);
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = MEMORY[0x1DA71EF10](v23, v25, v27, v29);
    v32 = v31;

    (*(v20 + 8))(v10, v19);
    v38 = v30;
    v39 = v32;
    v33 = sub_1D8B15BA0();
    sub_1D8883F50(v17, type metadata accessor for CVBundle);
    return v33;
  }
}

uint64_t sub_1D88788FC@<X0>(unint64_t a1@<X1>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70);
  v4 = sub_1D8B15270();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D8B1AB90;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x1E69E0208], v4);
  v8 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v7, a1, 1);

  *a2 = v8;
  return result;
}

BOOL sub_1D8878A20(void *a1, unint64_t a2)
{
  v4 = type metadata accessor for TextDetectorResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 >> 60 != 5)
  {
    return 0;
  }

  v7 = swift_projectBox();
  sub_1D8883FB0(v7, v6, type metadata accessor for TextDetectorResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70);
  v8 = sub_1D8B15270();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D8B1AB90;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x1E69E0208], v8);
  v12 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(v11, a2, 1);

  sub_1D8883F50(v6, type metadata accessor for TextDetectorResult);
  v13 = v12[2];

  return v13 != 0;
}

uint64_t sub_1D8878BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 64) = a1;
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 40) = v14;
  v11 = swift_task_alloc();
  *(v8 + 72) = v11;
  *v11 = v8;
  v11[1] = sub_1D8878CC0;

  return ImageSearchProvider.search(imageData:context:)(a4, a5, v8 + 16);
}

uint64_t sub_1D8878CC0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1D8878E0C;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_1D8878DE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1D8878E24()
{
  v0 = [objc_opt_self() creationRequestForAsset];
  v1 = sub_1D8B13030();
  [v0 addResourceWithType:1 data:v1 options:0];
}

uint64_t sub_1D8878EC0(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x1EEE6DEE0](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEE0](v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x1EEE6DEE8](v6, v7);
}

CGImageRef sub_1D8878F78()
{
  imageOut[12] = *MEMORY[0x1E69E9840];
  if (*(v0 + 56))
  {
    v1 = *v0;
    if (*(v0 + 8) > 1u)
    {
      if (*(v0 + 8) == 2)
      {
        sub_1D888406C(v0, imageOut);
        if (qword_1ECA62140 != -1)
        {
          swift_once();
        }

        v3 = sub_1D8B151E0();
        __swift_project_value_buffer(v3, qword_1ECA669C0);
        sub_1D888406C(v0, imageOut);
        v4 = sub_1D8B151C0();
        v5 = sub_1D8B16210();
        sub_1D8884018(v0);
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          imageOut[0] = v7;
          *v6 = 136315138;
          swift_getErrorValue();
          v8 = sub_1D8B16C90();
          v10 = sub_1D89AC714(v8, v9, imageOut);

          *(v6 + 4) = v10;
          _os_log_impl(&dword_1D8783000, v4, v5, "Unable to get CGImage copy: %s", v6, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v7);
          MEMORY[0x1DA721330](v7, -1, -1);
          MEMORY[0x1DA721330](v6, -1, -1);
          sub_1D8884018(v0);
        }

        else
        {

          sub_1D8884018(v0);
        }
      }

      return 0;
    }

    else if (*(v0 + 8))
    {
      sub_1D888406C(v0, imageOut);
      return v1;
    }

    else
    {
      imageOut[0] = 0;
      VTCreateCGImageFromCVPixelBuffer(v1, 0, imageOut);
      return imageOut[0];
    }
  }

  else
  {
    result = sub_1D8B168C0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D88791E0()
{

  sub_1D88793B8(*(v0 + 32), *(v0 + 40));
  sub_1D8883F50(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21BuiltInActionExecutor_textSummarizer, type metadata accessor for TextSummarizer);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BuiltInActionExecutor()
{
  result = qword_1EE0E55A8;
  if (!qword_1EE0E55A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D88792E0()
{
  result = type metadata accessor for TextSummarizer();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D88793B8(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 4)
  {
  }

  return result;
}

uint64_t sub_1D88793D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *(v6 + 16) = a1;
  v11 = *a6;
  v12 = a6[1];
  v13 = swift_task_alloc();
  *(v6 + 24) = v13;
  *v13 = v6;
  v13[1] = sub_1D887949C;

  return sub_1D89D0A94(a2, a3, a4, a5, v11, v12);
}

uint64_t sub_1D887949C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1D88795AC(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v7 = type metadata accessor for TextSummarizer();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = a1[1];
  v12 = *a3;
  v13 = *(a3 + 4);
  v14 = *(a3 + 10);
  *(v3 + 16) = 0;
  *(v3 + 20) = 0;
  *(v3 + 24) = a2;
  *(v3 + 32) = v10;
  *(v3 + 40) = v11;
  v15 = v3 + OBJC_IVAR____TtC22VisualIntelligenceCore21BuiltInActionExecutor_greymatterAvailability;
  *v15 = v12;
  *(v15 + 8) = v13;
  *(v15 + 10) = v14;
  v20[0] = v10;
  v20[1] = v11;
  sub_1D8879738(v10, v11);
  sub_1D8879738(v10, v11);

  TextSummarizer.init(entryPoint:)(v20, v9);
  sub_1D88840C8(v9, v3 + OBJC_IVAR____TtC22VisualIntelligenceCore21BuiltInActionExecutor_textSummarizer, type metadata accessor for TextSummarizer);
  if ((v11 - 1) < 2)
  {
    goto LABEL_4;
  }

  v16 = 0xE90000000000005DLL;
  if (v11 != 3)
  {
    if (v11 != 4)
    {
      v17 = 0x5353535B5D49565BLL;
      goto LABEL_7;
    }

LABEL_4:
    v16 = 0xE400000000000000;
    v17 = 1565087323;
LABEL_7:
    sub_1D88793B8(v10, v11);
    goto LABEL_8;
  }

  v17 = 0x46564C5B5D49565BLL;
LABEL_8:
  v18 = (v3 + OBJC_IVAR____TtC22VisualIntelligenceCore21BuiltInActionExecutor_tapToRadarDraftTitle);
  *v18 = v17;
  v18[1] = v16;
  return v3;
}

uint64_t sub_1D8879738(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 4)
  {
  }

  return result;
}

uint64_t sub_1D8879768(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for BuiltInActionExecutor.Request() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[6];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D8864FBC;

  return sub_1D88665E0(a1, v12, v13, v14, v1 + v8, v1 + v11, v6, v5);
}

uint64_t sub_1D88798F0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 128) = a3;
  *(v4 + 120) = a4;
  *(v4 + 104) = a1;
  *(v4 + 112) = a2;
  v5 = sub_1D8B12BC0();
  *(v4 + 136) = v5;
  *(v4 + 144) = *(v5 - 8);
  *(v4 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88799B8, 0, 0);
}

uint64_t sub_1D88799B8()
{
  v1 = *(v0 + 128);
  sub_1D8B12C00();
  swift_allocObject();
  *(v0 + 160) = sub_1D8B12BF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643D8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D8B1AB80;
  sub_1D8B12BB0();
  sub_1D8B12BA0();
  *(v0 + 88) = v2;
  sub_1D8883B2C(&qword_1ECA643E0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643E8);
  sub_1D881CF20(&qword_1ECA643F0, &qword_1ECA643E8);
  sub_1D8B16570();
  sub_1D8B12BD0();
  *(v0 + 96) = v1;
  sub_1D8B14310();
  sub_1D8883B2C(&qword_1ECA643F8, MEMORY[0x1E69C9B90]);
  v3 = sub_1D8B12BE0();
  *(v0 + 168) = v3;
  *(v0 + 176) = v4;
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  *(v0 + 56) = 7633012;
  *(v0 + 64) = 0xE300000000000000;
  *(v0 + 80) = 2;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 32) = v5;
  sub_1D87A1544(v3, v4);
  v8 = qword_1ECA62268;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_1ECA675B0;
  *(v0 + 184) = qword_1ECA675B0;

  return MEMORY[0x1EEE6DFA0](sub_1D8879DD0, v9, 0);
}

uint64_t sub_1D8879DD0()
{
  sub_1D8A3B1F4(v0 + 16, 7169633, 0xE300000000000000);

  return MEMORY[0x1EEE6DFA0](sub_1D8879E48, 0, 0);
}

uint64_t sub_1D8879E48()
{
  v1 = v0[21];
  v2 = v0[22];

  sub_1D87A1598(v1, v2);
  sub_1D87DC9A0((v0 + 2));

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D8879EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v4[14] = type metadata accessor for BuiltInAction(0);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for ResultLookupState(0);
  v4[17] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64390);
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8879FF8, 0, 0);
}

uint64_t sub_1D8879FF8()
{
  v50 = v0;
  v1 = type metadata accessor for BuiltInActionExecutor.Request();
  sub_1D8865DD4(v1, &v47);
  if (v47 != 2)
  {
    ConfigStorage.hasOnboardedACME.setter((v47 & 1) == 0, *(v0 + 96), *(v0 + 104));
  }

  v2 = ConfigStorage.hasOnboardedACME.getter(*(v0 + 96), *(v0 + 104));
  type metadata accessor for AskAcmeRequirementManager();
  inited = swift_initStackObject();
  *(v0 + 168) = inited;
  v4 = [objc_opt_self() sharedConnection];
  if (!v4)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE38](v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = v4;
  v13 = [v4 isExternalIntelligenceAllowed];

  *(inited + 17) = v13 ^ 1;
  v14 = [objc_opt_self() sharedInstance];
  *(inited + 48) = sub_1D881F764(0, &unk_1EE0E3778);
  *(inited + 56) = &off_1F5430390;
  *(inited + 24) = v14;
  *(inited + 16) = v2 & 1;
  sub_1D898CADC(&v48);
  v15 = v48;
  if (v48 != 10)
  {
    if (qword_1ECA62128 != -1)
    {
      swift_once();
    }

    v28 = sub_1D8B151E0();
    *(v0 + 176) = __swift_project_value_buffer(v28, qword_1ECA66978);
    v29 = sub_1D8B151C0();
    v30 = sub_1D8B16230();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D8783000, v29, v30, "onboarding ACME", v31, 2u);
      MEMORY[0x1DA721330](v31, -1, -1);
    }

    if (v15 != 6)
    {
      v33 = sub_1D8B151C0();
      v34 = sub_1D8B16230();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v49 = v36;
        *v35 = 136315138;
        *(v0 + 200) = v15;
        v37 = sub_1D8B159E0();
        v39 = sub_1D89AC714(v37, v38, &v49);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_1D8783000, v33, v34, "ACME onboarding required: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x1DA721330](v36, -1, -1);
        MEMORY[0x1DA721330](v35, -1, -1);
      }

      v41 = *(v0 + 152);
      v40 = *(v0 + 160);
      v43 = *(v0 + 136);
      v42 = *(v0 + 144);
      *v43 = v15;
      *(v43 + 8) = 0;
      *(v43 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
      sub_1D8B15EE0();

      (*(v41 + 8))(v40, v42);
      goto LABEL_24;
    }

    v32 = swift_task_alloc();
    *(v0 + 184) = v32;
    *v32 = v0;
    v32[1] = sub_1D887A624;
    v11 = MEMORY[0x1E69E6370];
    v9 = sub_1D8B08C78;
    v4 = (v0 + 201);
    v8 = 0x80000001D8B42BA0;
    v5 = 0;
    v6 = 0;
    v7 = 0xD000000000000017;
    v10 = 0;

    return MEMORY[0x1EEE6DE38](v4, v5, v6, v7, v8, v9, v10, v11);
  }

  if (qword_1ECA62128 != -1)
  {
    swift_once();
  }

  v16 = sub_1D8B151E0();
  __swift_project_value_buffer(v16, qword_1ECA66978);
  v17 = sub_1D8B151C0();
  v18 = sub_1D8B16230();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D8783000, v17, v18, "ACME has been onboarded", v19, 2u);
    MEMORY[0x1DA721330](v19, -1, -1);
  }

  v21 = *(v0 + 152);
  v20 = *(v0 + 160);
  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  v24 = *(v0 + 120);
  v46 = *(v0 + 80);

  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  sub_1D8B15EE0();
  (*(v21 + 8))(v20, v22);
  v25 = [objc_allocWithZone(MEMORY[0x1E69CE1C0]) init];
  swift_storeEnumTagMultiPayload();
  v26 = _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0(v46, v24);
  sub_1D8883F50(v24, type metadata accessor for BuiltInAction);
  if (v26)
  {
    v27 = 60;
  }

  else
  {
    v27 = 59;
  }

  [v25 activateFromSource_];
  [v25 invalidate];

LABEL_24:

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1D887A624()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1D887AA14;
  }

  else
  {
    v2 = sub_1D887A738;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D887A738()
{
  v22 = v0;
  v1 = *(v0 + 201);
  v2 = sub_1D8B151C0();
  if (v1 == 1)
  {
    v3 = sub_1D8B16230();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v21 = v5;
      *v4 = 136315138;
      *(v0 + 202) = 6;
      v6 = sub_1D8B159E0();
      v8 = sub_1D89AC714(v6, v7, &v21);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_1D8783000, v2, v3, "ACME onboarding required: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x1DA721330](v5, -1, -1);
      MEMORY[0x1DA721330](v4, -1, -1);
    }

    v9 = *(v0 + 160);
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    v12 = *(v0 + 136);
    *v12 = xmmword_1D8B23E20;
    *(v12 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
    sub_1D8B15EE0();

    (*(v11 + 8))(v9, v10);
  }

  else
  {
    v13 = sub_1D8B16210();
    if (os_log_type_enabled(v2, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D8783000, v2, v13, "failed to request keybag utility authentication", v14, 2u);
      MEMORY[0x1DA721330](v14, -1, -1);
    }

    v15 = *(v0 + 160);
    v16 = *(v0 + 144);
    v17 = *(v0 + 152);
    v18 = *(v0 + 136);

    *v18 = 0xD000000000000015;
    *(v18 + 8) = 0x80000001D8B42BC0;
    *(v18 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
    sub_1D8B15EE0();

    (*(v17 + 8))(v15, v16);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D887AA14()
{
  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16210();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D8783000, v1, v2, "failed to request keybag utility authentication", v3, 2u);
    MEMORY[0x1DA721330](v3, -1, -1);
  }

  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);

  *v7 = 0xD000000000000015;
  *(v7 + 8) = 0x80000001D8B42BC0;
  *(v7 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  sub_1D8B15EE0();

  (*(v6 + 8))(v4, v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D887ABA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[47] = a3;
  v4[48] = a4;
  v4[45] = a1;
  v4[46] = a2;
  v4[49] = type metadata accessor for ResultLookupState(0);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64390);
  v4[53] = v5;
  v4[54] = *(v5 - 8);
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = type metadata accessor for BundleClassification.ClassificationType(0);
  v4[59] = swift_task_alloc();
  v4[60] = *(type metadata accessor for BundleClassification(0) - 8);
  v4[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v4[62] = swift_task_alloc();
  v6 = type metadata accessor for CVBundle(0);
  v4[63] = v6;
  v4[64] = *(v6 - 8);
  v4[65] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D887ADF0, 0, 0);
}

uint64_t sub_1D887ADF0()
{
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[62];
  v4 = v0[45];
  v5 = type metadata accessor for BuiltInActionExecutor.Request();
  sub_1D87A0E38(v4 + *(v5 + 36), v3, &qword_1ECA67980);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D87A14E4(v0[62], &qword_1ECA67980);
    return sub_1D8B168C0();
  }

  sub_1D88840C8(v0[62], v0[65], type metadata accessor for CVBundle);
  v7 = CVBundle.classifications.getter();
  v8 = v7[2];
  if (v8)
  {
    v9 = 0;
    v10 = v0[60];
    v11 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    do
    {
      v13 = v0[61];
      v14 = v0[59];
      sub_1D8883FB0(v11, v13, type metadata accessor for BundleClassification);
      sub_1D8883FB0(v13, v14, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8883F50(v13, type metadata accessor for BundleClassification);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v16 = v0[59];
      if (EnumCaseMultiPayload)
      {
        sub_1D8883F50(v0[59], type metadata accessor for BundleClassification.ClassificationType);
      }

      else
      {

        v9 = *v16;
      }

      v0[66] = v9;
      v11 += v12;
      --v8;
    }

    while (v8);

    if (v9)
    {
      v17 = v0[57];
      v18 = v0[53];
      v19 = v0[54];
      v20 = v0[52];
      _s22VisualIntelligenceCore21MapsAnalyticsReporterV06tappedD11ResultsPill7resultsySayAA9GeoLookupC0kL6ResultVG_tFZ_0(v9);
      *v20 = v9;
      v20[3] = 0;
      swift_storeEnumTagMultiPayload();

      v0[67] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
      sub_1D8B15EE0();
      v21 = *(v19 + 8);
      v0[68] = v21;
      v0[69] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v21(v17, v18);
      v0[70] = sub_1D8B15E80();
      v0[71] = sub_1D8B15E70();
      v23 = sub_1D8B15E00();

      return MEMORY[0x1EEE6DFA0](sub_1D887B2A4, v23, v22);
    }
  }

  else
  {
  }

  if (qword_1ECA62160 != -1)
  {
    swift_once();
  }

  v24 = sub_1D8B151E0();
  __swift_project_value_buffer(v24, qword_1ECA66A08);
  v25 = sub_1D8B151C0();
  v26 = sub_1D8B16220();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[65];
  if (v27)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D8783000, v25, v26, "Asked to perform GeoLookup on a track with no associated results", v29, 2u);
    MEMORY[0x1DA721330](v29, -1, -1);
  }

  sub_1D8883F50(v28, type metadata accessor for CVBundle);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1D887B2A4()
{

  if (qword_1EE0E67F8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D887B33C, 0, 0);
}

uint64_t sub_1D887B33C()
{
  *(v0 + 576) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D887B3C8, v2, v1);
}

uint64_t sub_1D887B3C8()
{

  *(v0 + 584) = qword_1EE0E6800;

  return MEMORY[0x1EEE6DFA0](sub_1D887B43C, 0, 0);
}

uint64_t sub_1D887B43C()
{
  *(v0 + 592) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D887B4C8, v2, v1);
}

uint64_t sub_1D887B4C8()
{
  v1 = v0[73];

  swift_getKeyPath();
  v0[75] = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler___observationRegistrar;
  v0[39] = v1;
  v0[76] = sub_1D8883B2C(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  v2 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationInternal);
  if (v2)
  {
    v3 = v0[73];
    swift_getKeyPath();
    v0[40] = v3;
    v4 = v2;
    sub_1D8B13520();

    v5 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__heading;
    v0[77] = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__heading;
    v6 = *(v3 + v5);
    v7 = v6;
    v0[78] = sub_1D89AFE24(v6);

    v8 = sub_1D887B650;
  }

  else
  {
    v8 = sub_1D887C014;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D887B650()
{
  *(v0 + 632) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D887B6DC, v2, v1);
}

uint64_t sub_1D887B6DC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D887B744, 0, 0);
}

uint64_t sub_1D887B744()
{
  *(v0 + 640) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D887B7D0, v2, v1);
}

uint64_t sub_1D887B7D0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D887B838, 0, 0);
}

uint64_t sub_1D887B838()
{
  *(v0 + 648) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D887B8C4, v2, v1);
}

uint64_t sub_1D887B8C4()
{
  v1 = v0[77];
  v2 = v0[73];

  swift_getKeyPath();
  v0[41] = v2;
  sub_1D8B13520();

  v3 = *(v2 + v1);
  v0[82] = v3;
  v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D887B98C, 0, 0);
}

uint64_t sub_1D887B98C()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 624);
  if (v1)
  {
    [v1 trueHeading];
    v19 = v3;
    [v1 headingAccuracy];
    v18 = v4;

    v5.f64[0] = v19;
    v5.f64[1] = v18;
    v6 = vdivq_f64(vmulq_f64(v5, vdupq_n_s64(0x400921FB54442D18uLL)), vdupq_n_s64(0x4066800000000000uLL));
    v7 = *(v0 + 624);
    v8 = 2;
  }

  else
  {
    v7 = v2;
    v6 = 0uLL;
    v8 = 1;
  }

  *(v0 + 680) = v8;
  *(v0 + 664) = v6;
  v9 = *(v0 + 544);
  v10 = *(v0 + 528);
  v11 = *(v0 + 456);
  v13 = *(v0 + 416);
  v12 = *(v0 + 424);
  *v13 = v7;
  *(v13 + 8) = v6;
  *(v13 + 24) = v8 | 0x4000000000000000;
  *(v13 + 32) = v10;
  swift_storeEnumTagMultiPayload();

  v14 = v7;
  sub_1D8B15EE0();
  v9(v11, v12);
  if (qword_1ECA620F0 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 528);
  v16 = swift_task_alloc();
  *(v0 + 688) = v16;
  *v16 = v0;
  v16[1] = sub_1D887BB6C;

  return sub_1D88EC748(v15);
}

uint64_t sub_1D887BB6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 696) = a1;
  *(v3 + 704) = v1;

  if (v1)
  {

    v4 = sub_1D887C180;
  }

  else
  {
    v4 = sub_1D887BC8C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D887BC8C()
{
  v1 = *(v0 + 696);
  if (*(v1 + 16) == 1)
  {
    *(v0 + 16) = *(v1 + 32);
    v2 = *(v1 + 48);
    v3 = *(v1 + 64);
    v4 = *(v1 + 96);
    *(v0 + 64) = *(v1 + 80);
    *(v0 + 80) = v4;
    *(v0 + 32) = v2;
    *(v0 + 48) = v3;
    v5 = *(v1 + 112);
    v6 = *(v1 + 128);
    v7 = *(v1 + 144);
    *(v0 + 144) = *(v1 + 160);
    *(v0 + 112) = v6;
    *(v0 + 128) = v7;
    *(v0 + 96) = v5;
    v8 = *(v0 + 24);
    sub_1D8883B74(v0 + 16, v0 + 152);
    *(v0 + 352) = [v8 muid];
    sub_1D8B16B50();
    v9 = objc_opt_self();
    v10 = sub_1D8B15940();

    [v9 captureUserAction:21 target:145 value:v10];

    sub_1D8883BD0(v0 + 16);
  }

  else
  {
    _s22VisualIntelligenceCore21MapsAnalyticsReporterV27displayedDisambiguationList7resultsySayAA23GeoLookupResultBusinessVG_tFZ_0(v1);
  }

  v11 = *(v0 + 528);
  v12 = v11[2];
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1D87F4140(0, v12, 0);
    v14 = v37;
    v15 = *(v37 + 16);
    v16 = v11 + 7;
    v17 = v12;
    do
    {
      v18 = *v16;
      v19 = *(v37 + 24);
      if (v15 >= v19 >> 1)
      {
        sub_1D87F4140((v19 > 1), v15 + 1, 1);
      }

      *(v37 + 16) = v15 + 1;
      *(v37 + 8 * v15 + 32) = v18;
      v16 += 5;
      ++v15;
      --v17;
    }

    while (v17);
    sub_1D87F4400(0, v12, 0);
    v20 = *(v13 + 16);
    v21 = v11 + 8;
    do
    {
      v23 = *v21;
      v21 += 5;
      v22 = v23;
      v24 = *(v13 + 24);

      if (v20 >= v24 >> 1)
      {
        sub_1D87F4400((v24 > 1), v20 + 1, 1);
      }

      *(v13 + 16) = v20 + 1;
      *(v13 + 8 * v20++ + 32) = v22;
      --v12;
    }

    while (v12);
    v25 = *(v0 + 528);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
    v25 = *(v0 + 528);
  }

  v26 = *(v0 + 696);
  v27 = *(v0 + 680);
  v28 = *(v0 + 624);
  v29 = *(v0 + 544);
  v36 = *(v0 + 520);
  v30 = *(v0 + 448);
  v31 = *(v0 + 424);
  v32 = *(v0 + 408);
  v33 = *(v0 + 664);
  *v32 = v28;
  *(v32 + 8) = v33;
  *(v32 + 24) = v27 | 0x8000000000000000;
  *(v32 + 32) = v25;
  *(v32 + 40) = v26;
  *(v32 + 48) = v14;
  *(v32 + 56) = v13;
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();

  v29(v30, v31);
  sub_1D8883F50(v36, type metadata accessor for CVBundle);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1D887C014()
{
  v1 = v0[68];
  v2 = v0[65];
  v3 = v0[57];
  v5 = v0[52];
  v4 = v0[53];

  *v5 = 0xD000000000000035;
  v5[1] = 0x80000001D8B42C80;
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();
  v1(v3, v4);
  sub_1D8883F50(v2, type metadata accessor for CVBundle);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D887C180()
{
  v1 = *(v0 + 704);
  *(v0 + 336) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  if (swift_dynamicCast())
  {

    if (*(v0 + 712))
    {
      v3 = 0xD000000000000010;
      if (*(v0 + 712) == 1)
      {
        v3 = 0xD000000000000014;
        v4 = "Cannot create ticket";
      }

      else
      {
        v4 = "Invalid location";
      }

      v11 = (v4 - 32) | 0x8000000000000000;
    }

    else
    {
      v11 = 0xEE0065736E6F7073;
      v3 = 0x657220676E6F7257;
    }

    v12 = *(v0 + 624);
    v13 = *(v0 + 544);
    v14 = *(v0 + 520);
    v15 = *(v0 + 440);
    v16 = *(v0 + 424);
    v17 = *(v0 + 400);
    *v17 = v3;
    v17[1] = v11;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();

    v13(v15, v16);
    sub_1D8883F50(v14, type metadata accessor for CVBundle);
  }

  else
  {
    v5 = *(v0 + 704);
    v6 = *(v0 + 624);
    v20 = *(v0 + 544);
    v21 = *(v0 + 520);
    v7 = *(v0 + 456);
    v9 = *(v0 + 416);
    v8 = *(v0 + 424);

    swift_getErrorValue();
    *v9 = sub_1D8B16C90();
    v9[1] = v10;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();

    v20(v7, v8);
    sub_1D8883F50(v21, type metadata accessor for CVBundle);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D887C43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  sub_1D8B13350();
  v4[8] = swift_task_alloc();
  sub_1D8B15930();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for VisualLookupClassifier.Result(0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for BundleClassification.ClassificationType(0);
  v4[21] = swift_task_alloc();
  v4[22] = *(type metadata accessor for BundleClassification(0) - 8);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for ResultLookupState(0);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64390);
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v4[35] = swift_task_alloc();
  v7 = type metadata accessor for CVBundle(0);
  v4[36] = v7;
  v4[37] = *(v7 - 8);
  v4[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D887C7EC, 0, 0);
}

uint64_t sub_1D887C7EC()
{
  v131 = v0;
  v1 = type metadata accessor for BuiltInActionExecutor.Request();
  sub_1D8865DD4(v1, &v129);
  v2 = v129;
  if (v129 != 2)
  {
    if (v129)
    {
      if (qword_1EE0E4518 != -1)
      {
        swift_once();
      }

      v3 = sub_1D8B151E0();
      __swift_project_value_buffer(v3, qword_1EE0E4520);
      v4 = sub_1D8B151C0();
      v5 = sub_1D8B16230();
      if (!os_log_type_enabled(v4, v5))
      {
        v9 = 0;
        goto LABEL_14;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "user opted out of eager visual lookup";
    }

    else
    {
      if (qword_1EE0E4518 != -1)
      {
        swift_once();
      }

      v8 = sub_1D8B151E0();
      __swift_project_value_buffer(v8, qword_1EE0E4520);
      v4 = sub_1D8B151C0();
      v5 = sub_1D8B16230();
      if (!os_log_type_enabled(v4, v5))
      {
        v9 = 1;
        goto LABEL_14;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "user opted in to eager visual lookup";
    }

    _os_log_impl(&dword_1D8783000, v4, v5, v7, v6, 2u);
    v9 = v2 ^ 1;
    MEMORY[0x1DA721330](v6, -1, -1);
LABEL_14:
    v11 = v0[6];
    v10 = v0[7];

    ConfigStorage.isVisualLookUpEagerModeEnabled.setter(v9 & 1, v11, v10);
  }

  sub_1D8865DD4(v1, &v129);
  if (v129 != 2)
  {
    ConfigStorage.hasOnboardedVisualLookUp.setter(1, v0[6], v0[7]);
  }

  if ((ConfigStorage.hasOnboardedVisualLookUp.getter(v0[6], v0[7]) & 1) == 0)
  {
    if (qword_1ECA62128 != -1)
    {
      swift_once();
    }

    v27 = sub_1D8B151E0();
    __swift_project_value_buffer(v27, qword_1ECA66978);
    v28 = sub_1D8B151C0();
    v29 = sub_1D8B16230();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D8783000, v28, v29, "Visual look up onboarding required", v30, 2u);
      MEMORY[0x1DA721330](v30, -1, -1);
    }

    v23 = v0[34];
    v24 = v0[30];
    v25 = v0[31];
    v31 = v0[29];

    *v31 = 1;
    *(v31 + 8) = 0u;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 0;
    *(v31 + 48) = 2;
    goto LABEL_33;
  }

  if (qword_1ECA62128 != -1)
  {
    swift_once();
  }

  v12 = sub_1D8B151E0();
  v0[39] = v12;
  __swift_project_value_buffer(v12, qword_1ECA66978);
  v13 = sub_1D8B151C0();
  v14 = sub_1D8B16230();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D8783000, v13, v14, "Visual look up has been onboarded", v15, 2u);
    MEMORY[0x1DA721330](v15, -1, -1);
  }

  v16 = v0[36];
  v17 = v0[37];
  v18 = v0[35];
  v19 = v0[4];

  sub_1D87A0E38(v19 + *(v1 + 36), v18, &qword_1ECA67980);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_1D87A14E4(v0[35], &qword_1ECA67980);
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, qword_1EE0E4520);
    v20 = sub_1D8B151C0();
    v21 = sub_1D8B16220();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D8783000, v20, v21, "Failed to find bundle with VLU", v22, 2u);
      MEMORY[0x1DA721330](v22, -1, -1);
    }

    v23 = v0[34];
    v24 = v0[30];
    v25 = v0[31];
    v26 = v0[29];

    *v26 = 0xD00000000000001ELL;
    v26[1] = 0x80000001D8B42CC0;
LABEL_33:
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
    sub_1D8B15EE0();
    (*(v25 + 8))(v23, v24);
LABEL_34:

    v32 = v0[1];

    return v32();
  }

  v126 = v12;
  v34 = v0[34];
  v36 = v0[30];
  v35 = v0[31];
  v37 = v0[29];
  v38 = v0[25];
  v39 = v0[14];
  v123 = v0[13];
  sub_1D88840C8(v0[35], v0[38], type metadata accessor for CVBundle);
  *v37 = 0u;
  *(v37 + 16) = 0u;
  *(v37 + 32) = 0u;
  *(v37 + 48) = 2;
  swift_storeEnumTagMultiPayload();
  v0[40] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  v119 = v37;
  sub_1D8B15EE0();
  v40 = *(v35 + 8);
  v0[41] = v40;
  v0[42] = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v121 = v40;
  v40(v34, v36);
  (*(v39 + 56))(v38, 1, 1, v123);
  v41 = CVBundle.classifications.getter();
  v42 = v41[2];
  if (v42)
  {
    v43 = v0[22];
    v44 = v41 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v45 = *(v43 + 72);
    v46 = v126;
    do
    {
      v47 = v0[23];
      v48 = v0[21];
      sub_1D8883FB0(v44, v47, type metadata accessor for BundleClassification);
      sub_1D8883FB0(v47, v48, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8883F50(v47, type metadata accessor for BundleClassification);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v49 = v0[25];
        v50 = v0[21];
        sub_1D87A14E4(v49, &qword_1ECA641B0);
        sub_1D881F6FC(v50, v49, &qword_1ECA641B0);
      }

      else
      {
        sub_1D8883F50(v0[21], type metadata accessor for BundleClassification.ClassificationType);
      }

      v44 += v45;
      --v42;
    }

    while (v42);
  }

  else
  {

    v46 = v126;
  }

  v51 = v0[24];
  v52 = v0[13];
  v53 = v0[14];
  sub_1D87A0E38(v0[25], v51, &qword_1ECA641B0);
  v54 = (*(v53 + 48))(v51, 1, v52);
  v55 = v0[24];
  if (v54 == 1)
  {
    sub_1D87A14E4(v55, &qword_1ECA641B0);
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v46, qword_1EE0E4520);
    v56 = sub_1D8B151C0();
    v57 = sub_1D8B16220();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1D8783000, v56, v57, "Asked to perform Identify on a track with no associated results", v58, 2u);
      MEMORY[0x1DA721330](v58, -1, -1);
    }

    v59 = v0[38];
    v60 = v0[34];
    v62 = v0[29];
    v61 = v0[30];
    v63 = v0[25];

    *v62 = 0xD00000000000003FLL;
    *(v119 + 8) = 0x80000001D8B42CE0;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    v121(v60, v61);
    v64 = v63;
    goto LABEL_60;
  }

  v65 = v0[19];
  v66 = v0[12];
  v67 = v0[13];
  sub_1D88840C8(v55, v65, type metadata accessor for VisualLookupClassifier.Result);
  sub_1D8883FB0(v65 + *(v67 + 36), v66, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v79 = v0[19];
      v80 = *(v79 + *(v0[13] + 32));
      if (v80)
      {
        if (*(v80 + 16))
        {
          v81 = v0[41];
          v82 = v0[34];
          v84 = v0[29];
          v83 = v0[30];
          v124 = v0[25];
          v127 = v0[38];
          *v84 = v80;
          *(v84 + 8) = 0u;
          *(v84 + 24) = 0u;
          *(v84 + 33) = 0u;

          swift_storeEnumTagMultiPayload();
          sub_1D8B15EE0();
          v81(v82, v83);
          v85 = v79;
        }

        else
        {
          if (qword_1EE0E4518 != -1)
          {
            swift_once();
            v79 = v0[19];
          }

          v96 = v0[15];
          __swift_project_value_buffer(v0[39], qword_1EE0E4520);
          sub_1D8883FB0(v79, v96, type metadata accessor for VisualLookupClassifier.Result);
          v97 = sub_1D8B151C0();
          v98 = sub_1D8B16210();
          if (os_log_type_enabled(v97, v98))
          {
            v100 = v0[15];
            v99 = v0[16];
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v129 = v102;
            *v101 = 136315138;
            sub_1D8883FB0(v100, v99, type metadata accessor for VisualLookupClassifier.Result);
            v103 = sub_1D8B159E0();
            v105 = v104;
            sub_1D8883F50(v100, type metadata accessor for VisualLookupClassifier.Result);
            v106 = sub_1D89AC714(v103, v105, &v129);

            *(v101 + 4) = v106;
            _os_log_impl(&dword_1D8783000, v97, v98, "Server returned empty results for %s", v101, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v102);
            MEMORY[0x1DA721330](v102, -1, -1);
            MEMORY[0x1DA721330](v101, -1, -1);
          }

          else
          {
            v107 = v0[15];

            sub_1D8883F50(v107, type metadata accessor for VisualLookupClassifier.Result);
          }

          sub_1D8B158D0();
          sub_1D881F764(0, &qword_1EE0E36B0);
          if (!sub_1D8B163E0())
          {
            v108 = [objc_opt_self() mainBundle];
          }

          v122 = v0[41];
          v109 = v0[32];
          v120 = v0[30];
          v110 = v0[27];
          v124 = v0[25];
          v127 = v0[38];
          v111 = v0[19];
          v112 = v0[16];
          sub_1D8B132F0();
          v113 = sub_1D8B159D0();
          v115 = v114;
          v129 = 0;
          v130 = 0xE000000000000000;
          sub_1D8B16720();

          v129 = 0xD000000000000022;
          v130 = 0x80000001D8B42DA0;
          sub_1D8883FB0(v111, v112, type metadata accessor for VisualLookupClassifier.Result);
          v116 = sub_1D8B159E0();
          MEMORY[0x1DA71EFA0](v116);

          v117 = v129;
          v118 = v130;
          *v110 = v113;
          *(v110 + 8) = v115;
          *(v110 + 16) = v117;
          *(v110 + 24) = v118;
          *(v110 + 32) = 0;
          *(v110 + 40) = 0;
          *(v110 + 48) = 1;
          swift_storeEnumTagMultiPayload();
          sub_1D8B15EE0();
          v122(v109, v120);
          v85 = v111;
        }

        sub_1D8883F50(v85, type metadata accessor for VisualLookupClassifier.Result);
        sub_1D87A14E4(v124, &qword_1ECA641B0);
        sub_1D8883F50(v127, type metadata accessor for CVBundle);
      }

      else
      {
        if (qword_1EE0E4518 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v46, qword_1EE0E4520);
        v86 = sub_1D8B151C0();
        v87 = sub_1D8B16210();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_1D8783000, v86, v87, "Expected to find a result if success was proposed.", v88, 2u);
          MEMORY[0x1DA721330](v88, -1, -1);
        }

        v89 = v0[38];
        v90 = v0[34];
        v91 = v0[29];
        v125 = v0[30];
        v128 = v0[25];
        v92 = v0[19];
        v93 = v0[16];

        v129 = 0;
        v130 = 0xE000000000000000;
        sub_1D8B16720();
        MEMORY[0x1DA71EFA0](0xD000000000000033, 0x80000001D8B42D20);
        sub_1D8883FB0(v92, v93, type metadata accessor for VisualLookupClassifier.Result);
        v94 = sub_1D8B159E0();
        MEMORY[0x1DA71EFA0](v94);

        v95 = v130;
        *v91 = v129;
        *(v119 + 8) = v95;
        swift_storeEnumTagMultiPayload();
        sub_1D8B15EE0();
        v121(v90, v125);
        sub_1D8883F50(v92, type metadata accessor for VisualLookupClassifier.Result);
        sub_1D87A14E4(v128, &qword_1ECA641B0);
        sub_1D8883F50(v89, type metadata accessor for CVBundle);
      }

      goto LABEL_34;
    }

    goto LABEL_59;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_59:
    v59 = v0[38];
    v72 = v0[34];
    v73 = v0[30];
    v74 = v0[25];
    v75 = v0[19];
    v76 = v0[12];
    v78 = *v76;
    v77 = v76[1];
    *v0[29] = v78;
    *(v37 + 8) = v77;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    v121(v72, v73);
    sub_1D8883F50(v75, type metadata accessor for VisualLookupClassifier.Result);
    v64 = v74;
LABEL_60:
    sub_1D87A14E4(v64, &qword_1ECA641B0);
    sub_1D8883F50(v59, type metadata accessor for CVBundle);
    goto LABEL_34;
  }

  if (qword_1ECA62270 != -1)
  {
    swift_once();
  }

  v69 = qword_1ECAA36C8;
  v70 = swift_task_alloc();
  v0[43] = v70;
  *v70 = v0;
  v70[1] = sub_1D887DA34;
  v71 = v0[18];

  return sub_1D89DE214(v71, v69, (v0 + 2), 5.0);
}

uint64_t sub_1D887DA34()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 352) = *(v2 + 16);
    v3 = sub_1D887DB4C;
  }

  else
  {
    v3 = sub_1D887DDB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D887DB4C()
{
  v1 = v0[44];
  v9 = v0[41];
  v2 = v0[34];
  v4 = v0[29];
  v3 = v0[30];
  v10 = v0[25];
  v11 = v0[38];
  v5 = v0[19];
  v12 = v0[12];
  v0[3] = v1;
  sub_1D8883C24();
  *v4 = sub_1D8B16C90();
  v4[1] = v6;
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();
  sub_1D8883C78(v1);
  v9(v2, v3);
  sub_1D8883F50(v5, type metadata accessor for VisualLookupClassifier.Result);
  sub_1D87A14E4(v10, &qword_1ECA641B0);
  sub_1D8883F50(v11, type metadata accessor for CVBundle);
  sub_1D8883F50(v12, type metadata accessor for VisualLookupClassifier.Result.SearchState);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D887DDB4()
{
  v74 = v0;
  v1 = v0[18];
  v2 = *(v1 + *(v0[13] + 32));
  if (v2)
  {
    v3 = v0[12];

    sub_1D8883F50(v1, type metadata accessor for VisualLookupClassifier.Result);

    sub_1D8883F50(v3, type metadata accessor for VisualLookupClassifier.Result.SearchState);
    v4 = *(v2 + 16);

    if (v4)
    {
      v5 = v0[41];
      v6 = v0[34];
      v8 = v0[29];
      v7 = v0[30];
      v68 = v0[25];
      v70 = v0[38];
      v9 = v0[19];
      *v8 = v2;
      *(v8 + 8) = 0u;
      *(v8 + 24) = 0u;
      *(v8 + 33) = 0u;
      swift_storeEnumTagMultiPayload();
      sub_1D8B15EE0();
      v5(v6, v7);
      v10 = v9;
    }

    else
    {

      if (qword_1EE0E4518 != -1)
      {
        swift_once();
      }

      v23 = v0[19];
      v24 = v0[15];
      __swift_project_value_buffer(v0[39], qword_1EE0E4520);
      sub_1D8883FB0(v23, v24, type metadata accessor for VisualLookupClassifier.Result);
      v25 = sub_1D8B151C0();
      v26 = sub_1D8B16210();
      if (os_log_type_enabled(v25, v26))
      {
        v28 = v0[15];
        v27 = v0[16];
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v72 = v30;
        *v29 = 136315138;
        sub_1D8883FB0(v28, v27, type metadata accessor for VisualLookupClassifier.Result);
        v31 = sub_1D8B159E0();
        v33 = v32;
        sub_1D8883F50(v28, type metadata accessor for VisualLookupClassifier.Result);
        v34 = sub_1D89AC714(v31, v33, &v72);

        *(v29 + 4) = v34;
        _os_log_impl(&dword_1D8783000, v25, v26, "Server returned empty results for %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x1DA721330](v30, -1, -1);
        MEMORY[0x1DA721330](v29, -1, -1);
      }

      else
      {
        v48 = v0[15];

        sub_1D8883F50(v48, type metadata accessor for VisualLookupClassifier.Result);
      }

      sub_1D8B158D0();
      sub_1D881F764(0, &qword_1EE0E36B0);
      if (!sub_1D8B163E0())
      {
        v49 = [objc_opt_self() mainBundle];
      }

      v66 = v0[41];
      v50 = v0[32];
      v64 = v0[30];
      v51 = v0[27];
      v68 = v0[25];
      v70 = v0[38];
      v52 = v0[19];
      v53 = v0[16];
      sub_1D8B132F0();
      v54 = sub_1D8B159D0();
      v56 = v55;
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_1D8B16720();

      v72 = 0xD000000000000022;
      v73 = 0x80000001D8B42DA0;
      sub_1D8883FB0(v52, v53, type metadata accessor for VisualLookupClassifier.Result);
      v57 = sub_1D8B159E0();
      MEMORY[0x1DA71EFA0](v57);

      v58 = v72;
      v59 = v73;
      *v51 = v54;
      *(v51 + 8) = v56;
      *(v51 + 16) = v58;
      *(v51 + 24) = v59;
      *(v51 + 32) = 0;
      *(v51 + 40) = 0;
      *(v51 + 48) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1D8B15EE0();
      v66(v50, v64);
      v10 = v52;
    }

    sub_1D8883F50(v10, type metadata accessor for VisualLookupClassifier.Result);
    sub_1D87A14E4(v68, &qword_1ECA641B0);
    v46 = type metadata accessor for CVBundle;
    v47 = v70;
  }

  else
  {
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
      v1 = v0[18];
    }

    v11 = v0[17];
    __swift_project_value_buffer(v0[39], qword_1EE0E4520);
    sub_1D8883FB0(v1, v11, type metadata accessor for VisualLookupClassifier.Result);
    v12 = sub_1D8B151C0();
    v13 = sub_1D8B16210();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[17];
    if (v14)
    {
      v16 = v0[16];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v72 = v18;
      *v17 = 136315138;
      sub_1D8883FB0(v15, v16, type metadata accessor for VisualLookupClassifier.Result);
      v19 = sub_1D8B159E0();
      v21 = v20;
      sub_1D8883F50(v15, type metadata accessor for VisualLookupClassifier.Result);
      v22 = sub_1D89AC714(v19, v21, &v72);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1D8783000, v12, v13, "Server returned empty results for %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1DA721330](v18, -1, -1);
      MEMORY[0x1DA721330](v17, -1, -1);
    }

    else
    {

      sub_1D8883F50(v15, type metadata accessor for VisualLookupClassifier.Result);
    }

    sub_1D8B158D0();
    sub_1D881F764(0, &qword_1EE0E36B0);
    if (!sub_1D8B163E0())
    {
      v35 = [objc_opt_self() mainBundle];
    }

    v63 = v0[41];
    v36 = v0[33];
    v62 = v0[30];
    v37 = v0[28];
    v38 = v0[18];
    v65 = v0[19];
    v67 = v0[25];
    v39 = v0[16];
    v69 = v0[12];
    v71 = v0[38];
    sub_1D8B132F0();
    v40 = sub_1D8B159D0();
    v42 = v41;
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_1D8B16720();

    v72 = 0xD000000000000022;
    v73 = 0x80000001D8B42DA0;
    sub_1D8883FB0(v38, v39, type metadata accessor for VisualLookupClassifier.Result);
    v43 = sub_1D8B159E0();
    MEMORY[0x1DA71EFA0](v43);

    v44 = v72;
    v45 = v73;
    *v37 = v40;
    *(v37 + 8) = v42;
    *(v37 + 16) = v44;
    *(v37 + 24) = v45;
    *(v37 + 32) = 0;
    *(v37 + 40) = 0;
    *(v37 + 48) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    v63(v36, v62);
    sub_1D8883F50(v38, type metadata accessor for VisualLookupClassifier.Result);
    sub_1D8883F50(v65, type metadata accessor for VisualLookupClassifier.Result);
    sub_1D87A14E4(v67, &qword_1ECA641B0);
    sub_1D8883F50(v71, type metadata accessor for CVBundle);
    v46 = type metadata accessor for VisualLookupClassifier.Result.SearchState;
    v47 = v69;
  }

  sub_1D8883F50(v47, v46);

  v60 = v0[1];

  return v60();
}

uint64_t sub_1D887E79C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for BuiltInActionExecutor.Request();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1D8B13350();
  v2[8] = swift_task_alloc();
  sub_1D8B15930();
  v2[9] = swift_task_alloc();
  v2[10] = *(type metadata accessor for TextDetectorResult(0) - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for ResultLookupState(0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64390);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D887EA28, 0, 0);
}

uint64_t sub_1D887EA28()
{
  v73 = v0;
  v72[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  *(v4 + 48) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  *(v4 + 56) = 2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  sub_1D8B15EE0();
  v7 = *(v3 + 8);
  v7(v1, v2);
  v8 = *(v6 + *(v5 + 40));
  if (!v8)
  {
    goto LABEL_7;
  }

  *(v0 + 16) = 0;
  IOSurface = CVPixelBufferGetIOSurface(v8);
  if (IOSurface)
  {
    v10 = IOSurface;
    viCore_lockUnlockWithFence(v10);
  }

  VTCreateCGImageFromCVPixelBuffer(v8, 0, (v0 + 16));
  if (!*(v0 + 16))
  {
LABEL_7:
    v15 = *(v0 + 152);
    v16 = *(v0 + 128);
    **(v0 + 120) = 0xD000000000000018;
    *(v4 + 8) = 0x80000001D8B43010;
    *(v4 + 56) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    v7(v15, v16);
    goto LABEL_30;
  }

  v70 = *(v0 + 16);
  v11 = *(v0 + 96);
  sub_1D87A0E38(*(v0 + 24) + *(*(v0 + 40) + 36), v11, &qword_1ECA67980);
  v12 = type metadata accessor for CVBundle(0);
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  v14 = *(v0 + 96);
  v71 = v7;
  if (v13 == 1)
  {
    sub_1D87A14E4(v14, &qword_1ECA67980);
LABEL_23:
    if (qword_1EE0E4258 != -1)
    {
LABEL_34:
      swift_once();
    }

    v45 = *(v0 + 48);
    v44 = *(v0 + 56);
    v46 = *(v0 + 40);
    v47 = *(v0 + 24);
    v48 = sub_1D8B151E0();
    __swift_project_value_buffer(v48, qword_1EE0E4260);
    (*(v45 + 16))(v44, v47, v46);
    v49 = sub_1D8B151C0();
    v50 = sub_1D8B16210();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 48);
    v53 = *(v0 + 56);
    v54 = *(v0 + 40);
    if (v51)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v72[0] = v56;
      *v55 = 136315138;
      v69 = v50;
      v57 = sub_1D8878494();
      v59 = v58;
      (*(v52 + 8))(v53, v54);
      v60 = sub_1D89AC714(v57, v59, v72);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_1D8783000, v49, v69, "Could not retrieve text for bundle %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x1DA721330](v56, -1, -1);
      MEMORY[0x1DA721330](v55, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v53, v54);
    }

    v61 = *(v0 + 152);
    v62 = *(v0 + 128);
    **(v0 + 120) = 0xD000000000000017;
    *(v4 + 8) = 0x80000001D8B42F60;
    *(v4 + 56) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();

    v71(v61, v62);
    goto LABEL_30;
  }

  v17 = CVBundle.textDetections.getter();
  sub_1D8883F50(v14, type metadata accessor for CVBundle);
  v18 = *(v17 + 2);
  if (!v18)
  {

    goto LABEL_23;
  }

  v19 = 0;
  v20 = *(v0 + 80);
  v21 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v19 >= *(v17 + 2))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (*&v17[8 * v19 + 32] >> 60 == 5)
    {
      v23 = *(v0 + 88);
      v24 = swift_projectBox();
      sub_1D8883FB0(v24, v23, type metadata accessor for TextDetectorResult);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D87C7EE0(0, v21[2] + 1, 1, v21);
      }

      v26 = v21[2];
      v25 = v21[3];
      v4 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v21 = sub_1D87C7EE0(v25 > 1, v26 + 1, 1, v21);
      }

      v22 = *(v0 + 88);
      v21[2] = v4;
      sub_1D88840C8(v22, v21 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v26, type metadata accessor for TextDetectorResult);
    }

    ++v19;
  }

  while (v18 != v19);
  v27 = *(v0 + 40);
  v28 = *(v0 + 24);

  v29 = _s22VisualIntelligenceCore31TextDetectionReadabilityUtilityV016generateReadableD0_15imageResolution21skipReadabiltySorting5isRTL13minConfidenceSSSayAA0D14DetectorResultVG_So6CGSizeVS2bSftFZ_0(v21, 0, *(v28 + *(v27 + 60)), *(v28 + *(v27 + 60) + 8), 0.0);
  v31 = v30;

  sub_1D8B158D0();
  sub_1D881F764(0, &qword_1EE0E36B0);
  if (!sub_1D8B163E0())
  {
    v32 = [objc_opt_self() mainBundle];
  }

  sub_1D8B132F0();
  v68 = sub_1D8B159D0();
  v34 = v33;
  v35 = [objc_allocWithZone(MEMORY[0x1E6977A58]) init];
  v36 = v31;
  v37 = sub_1D8B15940();
  [v35 processString_];

  v38 = [v35 dominantLanguage];
  v39 = v29;
  if (v38)
  {
    v40 = v38;
    v41 = sub_1D8B15970();
    v43 = v42;
  }

  else
  {

    v43 = 0xE200000000000000;
    v41 = 28261;
  }

  v63 = *(v0 + 144);
  v64 = *(v0 + 128);
  v65 = *(v0 + 112);
  *v65 = v68;
  *(v65 + 8) = v34;
  *(v65 + 16) = v39;
  *(v65 + 24) = v36;
  *(v65 + 32) = v41;
  *(v65 + 40) = v43;
  *(v65 + 48) = v70;
  *(v65 + 56) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();
  v71(v63, v64);
LABEL_30:

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1D887F218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  v4[32] = type metadata accessor for ResultLookupState(0);
  v4[33] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64390);
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D887F318, 0, 0);
}

uint64_t sub_1D887F318()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v18 = v0[28];
  *v3 = 0;
  v3[1] = 0;
  swift_storeEnumTagMultiPayload();
  v0[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  sub_1D8B15EE0();
  v5 = *(v2 + 8);
  v0[38] = v5;
  v0[39] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v4);
  if (*(v18 + *(type metadata accessor for BuiltInActionExecutor.Request() + 40)) && (v6 = CVBufferRef.pngData.getter(), v0[40] = v6, v0[41] = v7, v7 >> 60 != 15))
  {
    v12 = v6;
    v13 = v7;
    v14 = [objc_opt_self() sharedPhotoLibrary];
    v0[42] = v14;
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = v13;
    v0[22] = sub_1D8883E68;
    v0[23] = v15;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1D89B1AA0;
    v0[21] = &block_descriptor_0;
    v16 = _Block_copy(v0 + 18);
    v0[43] = v16;
    sub_1D87A1544(v12, v13);

    v0[2] = v0;
    v0[3] = sub_1D887F670;
    v17 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64440);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D8878EC0;
    v0[13] = &block_descriptor_64;
    v0[14] = v17;
    [v14 performChanges:v16 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v8 = v0[36];
    v9 = v0[34];
    *v0[33] = 0xD000000000000034;
    v3[1] = 0x80000001D8B43030;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    v5(v8, v9);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1D887F670()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_1D887F880;
  }

  else
  {
    v2 = sub_1D887F780;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D887F780()
{
  v1 = *(v0 + 344);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v9 = *(v0 + 304);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);

  _Block_release(v1);
  *v6 = xmmword_1D8B190D0;
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();
  sub_1D87C12A4(v3, v2);
  v9(v4, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D887F880()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  v11 = v0[41];
  v12 = v0[38];
  v4 = v0[36];
  v5 = v0[33];
  v9 = v0[40];
  v10 = v0[34];
  swift_willThrow();

  _Block_release(v1);
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD00000000000003BLL, 0x80000001D8B43090);
  swift_getErrorValue();
  v6 = sub_1D8B16C90();
  MEMORY[0x1DA71EFA0](v6);

  MEMORY[0x1DA71EFA0](46, 0xE100000000000000);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();

  sub_1D87C12A4(v9, v11);
  v12(v4, v10);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D887FA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = type metadata accessor for ResultLookupState(0);
  v4[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64390);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D887FB44, 0, 0);
}

uint64_t sub_1D887FB44()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 24);
  *v3 = 0;
  v3[1] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  sub_1D8B15EE0();
  v15 = *(v2 + 8);
  v15(v1, v4);
  v6 = *(v5 + *(type metadata accessor for BuiltInActionExecutor.Request() + 40));
  if (!v6)
  {
    goto LABEL_6;
  }

  *(v0 + 16) = 0;
  IOSurface = CVPixelBufferGetIOSurface(v6);
  if (IOSurface)
  {
    v8 = IOSurface;
    viCore_lockUnlockWithFence(v8);
  }

  VTCreateCGImageFromCVPixelBuffer(v6, 0, (v0 + 16));
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = *(v0 + 64);
    v11 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
    v12 = [objc_opt_self() generalPasteboard];
    [v12 setImage_];

    *v10 = 0;
    v3[1] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
  }

  else
  {
LABEL_6:
    **(v0 + 64) = 0xD000000000000034;
    v3[1] = 0x80000001D8B43030;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
  }

  v15(*(v0 + 88), *(v0 + 72));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D887FDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1D8B13DC0();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64448);
  v4[10] = swift_task_alloc();
  sub_1D8B13350();
  v4[11] = swift_task_alloc();
  sub_1D8B15930();
  v4[12] = swift_task_alloc();
  v6 = sub_1D8B13E40();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = sub_1D8B13E30();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for ResultLookupState(0);
  v4[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64390);
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for BuiltInAction(0);
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635B8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D888012C, 0, 0);
}

uint64_t sub_1D888012C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + *(type metadata accessor for BuiltInActionExecutor.Request() + 40));
  if (!v2)
  {
    goto LABEL_8;
  }

  *(v0 + 16) = 0;
  IOSurface = CVPixelBufferGetIOSurface(v2);
  if (IOSurface)
  {
    v4 = IOSurface;
    viCore_lockUnlockWithFence(v4);
  }

  VTCreateCGImageFromCVPixelBuffer(v2, 0, (v0 + 16));
  v5 = *(v0 + 16);
  if (v5)
  {
    sub_1D8883FB0(*(v0 + 24), *(v0 + 216), type metadata accessor for BuiltInAction);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v7 = *(v0 + 240);
      v6 = *(v0 + 248);
      v8 = *(v0 + 216);
      v10 = *(v0 + 136);
      v9 = *(v0 + 144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
      sub_1D881F6FC(v8, v6, &qword_1ECA635B8);
      sub_1D87A0E38(v6, v7, &qword_1ECA635B8);
      if ((*(v9 + 48))(v7, 1, v10) == 1)
      {
        v11 = *(v0 + 240);
        v72 = *(v0 + 248);
        v13 = *(v0 + 192);
        v12 = *(v0 + 200);
        v15 = *(v0 + 176);
        v14 = *(v0 + 184);

        sub_1D87A14E4(v11, &qword_1ECA635B8);
        *v15 = 0xD000000000000030;
        *(v15 + 8) = 0x80000001D8B43160;
        *(v15 + 16) = 1;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
        sub_1D8B15EE0();

        (*(v13 + 8))(v12, v14);
        v16 = v72;
      }

      else
      {
        (*(*(v0 + 144) + 32))(*(v0 + 160), *(v0 + 240), *(v0 + 136));
        v25.value = CGImageRef.rotateCounterClockwiseBy90Degrees()().value;
        if (v25.value && (value = v25.value, v27 = CGImageRef.toPNG()(), v29 = v28, value, v29 >> 60 != 15))
        {
          v37 = *(v0 + 120);
          v36 = *(v0 + 128);
          v39 = *(v0 + 104);
          v38 = *(v0 + 112);
          *v36 = v27;
          v36[1] = v29;
          (*(v38 + 104))(v36, *MEMORY[0x1E699C5F0], v39);
          (*(v38 + 16))(v37, v36, v39);
          sub_1D87A1544(v27, v29);
          sub_1D8B158D0();
          sub_1D881F764(0, &qword_1EE0E36B0);
          v66 = v27;
          v67 = v29;
          if (!sub_1D8B163E0())
          {
            v40 = [objc_opt_self() mainBundle];
          }

          v69 = *(v0 + 248);
          v57 = *(v0 + 232);
          v60 = *(v0 + 200);
          v61 = *(v0 + 192);
          v62 = *(v0 + 184);
          v58 = *(v0 + 224);
          v59 = *(v0 + 176);
          v71 = *(v0 + 160);
          v41 = *(v0 + 152);
          v56 = *(v0 + 144);
          v42 = *(v0 + 136);
          v65 = *(v0 + 128);
          v63 = *(v0 + 112);
          v64 = *(v0 + 104);
          v43 = *(v0 + 80);
          v44 = *(v0 + 64);
          v45 = *(v0 + 72);
          v55 = *(v0 + 56);
          sub_1D8B132F0();
          sub_1D8B159D0();
          v46 = sub_1D8B13E20();
          (*(*(v46 - 8) + 56))(v43, 1, 1, v46);
          sub_1D8B13E00();
          (*(v44 + 104))(v45, *MEMORY[0x1E699C2F8], v55);
          v47 = v56[2];
          v47(v57, v41, v42);
          v48 = v56[7];
          v48(v57, 0, 1, v42);
          v47(v58, v71, v42);
          v48(v58, 0, 1, v42);
          v49 = objc_allocWithZone(sub_1D8B13E50());
          v50 = sub_1D8B13DD0();
          *v59 = v50;
          *(v59 + 8) = 0;
          *(v59 + 16) = 0;
          swift_storeEnumTagMultiPayload();
          v51 = v50;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
          sub_1D8B15EE0();

          sub_1D87C12A4(v66, v67);
          (*(v61 + 8))(v60, v62);
          v52 = v56[1];
          v52(v41, v42);
          (*(v63 + 8))(v65, v64);
          v52(v71, v42);
          v16 = v69;
        }

        else
        {
          v30 = *(v0 + 248);
          v32 = *(v0 + 192);
          v31 = *(v0 + 200);
          v33 = *(v0 + 176);
          v34 = *(v0 + 184);
          v35 = *(v0 + 144);
          v68 = *(v0 + 136);
          v70 = *(v0 + 160);

          *v33 = 0xD000000000000022;
          *(v33 + 8) = 0x80000001D8B431A0;
          *(v33 + 16) = 1;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
          sub_1D8B15EE0();

          (*(v32 + 8))(v31, v34);
          (*(v35 + 8))(v70, v68);
          v16 = v30;
        }
      }

      sub_1D87A14E4(v16, &qword_1ECA635B8);
    }

    else
    {
      v22 = *(v0 + 192);
      v21 = *(v0 + 200);
      v24 = *(v0 + 176);
      v23 = *(v0 + 184);
      sub_1D8883F50(*(v0 + 216), type metadata accessor for BuiltInAction);
      *v24 = 0xD000000000000033;
      *(v24 + 8) = 0x80000001D8B43120;
      *(v24 + 16) = 1;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
      sub_1D8B15EE0();

      (*(v22 + 8))(v21, v23);
    }
  }

  else
  {
LABEL_8:
    v18 = *(v0 + 192);
    v17 = *(v0 + 200);
    v20 = *(v0 + 176);
    v19 = *(v0 + 184);
    *v20 = 0xD000000000000033;
    v20[1] = 0x80000001D8B43120;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
    sub_1D8B15EE0();
    (*(v18 + 8))(v17, v19);
  }

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_1D8880A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[36] = a1;
  v4[37] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  v4[40] = swift_task_alloc();
  v4[41] = type metadata accessor for TapToRadarDraft();
  v4[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  v4[43] = swift_task_alloc();
  v5 = sub_1D8B12F10();
  v4[44] = v5;
  v4[45] = *(v5 - 8);
  v4[46] = swift_task_alloc();
  v6 = sub_1D8B13000();
  v4[47] = v6;
  v4[48] = *(v6 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64340);
  v4[58] = swift_task_alloc();
  v4[59] = type metadata accessor for TapToRadarDraftPayload();
  v4[60] = swift_task_alloc();
  v4[61] = type metadata accessor for ResultLookupState(0);
  v4[62] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64390);
  v4[63] = v7;
  v4[64] = *(v7 - 8);
  v4[65] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8880D50, 0, 0);
}

uint64_t sub_1D8880D50()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v4 = v0[58];
  v5 = v0[36];
  swift_storeEnumTagMultiPayload();
  v0[66] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643A0);
  sub_1D8B15EE0();
  v6 = *(v3 + 8);
  v0[67] = v6;
  v0[68] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = type metadata accessor for BuiltInActionExecutor.Request();
  sub_1D87A0E38(v5 + *(v7 + 56), v4, &qword_1ECA64340);
  v8 = type metadata accessor for ExecutionParameter();
  v9 = (*(*(v8 - 8) + 48))(v4, 1, v8);
  v10 = v0[58];
  if (v9 == 1)
  {
    sub_1D87A14E4(v0[58], &qword_1ECA64340);
LABEL_11:
    v21 = v0[65];
    v23 = v0[62];
    v22 = v0[63];
    *v23 = 0xD00000000000003FLL;
    v23[1] = 0x80000001D8B431F0;
    swift_storeEnumTagMultiPayload();
    sub_1D8B15EE0();
    v6(v21, v22);
LABEL_33:

    v61 = v0[1];

    return v61();
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1D8883F50(v10, type metadata accessor for ExecutionParameter);
    goto LABEL_11;
  }

  v11 = v0[60];
  sub_1D88840C8(v10, v11, type metadata accessor for TapToRadarDraftPayload);
  v12 = *(v11 + 8);
  v0[69] = v12;
  v13 = objc_opt_self();

  v14 = [v13 mainBundle];
  v15 = [v14 bundleIdentifier];

  if (v15)
  {
    v16 = sub_1D8B15970();
    v18 = v17;

    if (v16 == 0xD000000000000022 && 0x80000001D8B433B0 == v18 || (sub_1D8B16BA0() & 1) != 0)
    {

      v19 = 0x46564C5B5D49565BLL;
LABEL_9:
      v20 = 0xE90000000000005DLL;
      goto LABEL_18;
    }

    if (v16 == 0xD000000000000023 && 0x80000001D8B433E0 == v18)
    {

LABEL_16:
      v19 = 0x5353535B5D49565BLL;
      goto LABEL_9;
    }

    v24 = sub_1D8B16BA0();

    if (v24)
    {
      goto LABEL_16;
    }
  }

  v20 = 0xE400000000000000;
  v19 = 1565087323;
LABEL_18:
  v25 = 0;
  v0[71] = v20;
  v0[70] = v19;
  v26 = 0xEA00000000002973;
  v27 = 0x6775422077654E28;
  v28 = 1700176;
  if (*v0[60] > 2u)
  {
    v76 = v20;
    v77 = v19;
    v78 = v12;
LABEL_23:
    v71 = v28;
    v72 = v27;
    v74 = v25;
    v75 = v0[49];
    v30 = v0[41];
    v29 = v0[42];
    v31 = v0[40];
    v73 = v26;
    v70 = v31;
    sub_1D8B131C0();
    v32 = sub_1D8B131D0();
    v33 = *(*(v32 - 8) + 56);
    v33(v31, 0, 1, v32);
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *v29 = 0x4449656C646E7542;
    *(v29 + 8) = 0xE800000000000000;
    *(v29 + 32) = 0u;
    *(v29 + 48) = 0u;
    *(v29 + 88) = 10;
    *(v29 + 64) = 0;
    strcpy((v29 + 72), "Classification");
    *(v29 + 87) = -18;
    *(v29 + 112) = 6;
    *(v29 + 96) = 0x6375646F72706552;
    *(v29 + 104) = 0xEF7974696C696269;
    *(v29 + 136) = 0;
    *(v29 + 144) = 0;
    *(v29 + 120) = 0x656C746954;
    *(v29 + 128) = 0xE500000000000000;
    *(v29 + 168) = 0;
    *(v29 + 176) = 0;
    *(v29 + 152) = 0x7470697263736544;
    *(v29 + 160) = 0xEB000000006E6F69;
    *(v29 + 192) = 0xE800000000000000;
    *(v29 + 200) = 0;
    *(v29 + 184) = 0x7364726F7779654BLL;
    v34 = (v29 + v30[11]);
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450) + 36);
    v33(v34 + v69, 1, 1, v32);
    *v34 = 0x7349664F656D6954;
    v34[1] = 0xEB00000000657573;
    v67 = (v29 + v30[12]);
    v68 = v34;
    *v67 = 0x656D686361747441;
    v67[1] = 0xEB0000000073746ELL;
    v67[2] = 0;
    v66 = (v29 + v30[13]);
    v66[1] = 0x80000001D8B43250;
    v66[2] = 0;
    *v66 = 0xD000000000000011;
    v35 = (v29 + v30[14]);
    v35[1] = 0x80000001D8B43270;
    v35[2] = 0;
    *v35 = 0xD000000000000014;
    v64 = (v29 + v30[15]);
    v65 = v35;
    v64[16] = 2;
    strcpy(v64, "DeleteOnAttach");
    v64[15] = -18;
    v63 = (v29 + v30[16]);
    *v63 = 0x4449656369766544;
    v63[1] = 0xE900000000000073;
    v63[2] = 0;
    v62 = v29 + v30[17];
    strcpy(v62, "DeviceClasses");
    *(v62 + 14) = -4864;
    *(v62 + 16) = 0;
    v36 = v29 + v30[18];
    strcpy(v36, "DeviceModels");
    *(v36 + 13) = 0;
    *(v36 + 14) = -5120;
    *(v36 + 16) = 0;
    v37 = v29 + v30[19];
    *(v37 + 8) = 0x80000001D8B43290;
    *(v37 + 16) = 0;
    *(v37 + 24) = 1;
    *v37 = 0xD000000000000016;
    v38 = v29 + v30[20];
    *(v38 + 16) = 2;
    *v38 = 0xD00000000000001ALL;
    *(v38 + 8) = 0x80000001D8B432B0;
    v39 = v29 + v30[21];
    *(v39 + 16) = 7;
    *v39 = 0x676169446F747541;
    *(v39 + 8) = 0xEF73636974736F6ELL;
    v40 = (v29 + v30[22]);
    v40[1] = 0x80000001D8B432D0;
    v40[2] = 0;
    *v40 = 0xD00000000000001BLL;
    v41 = (v29 + v30[23]);
    v41[2] = 0;
    v41[3] = 0;
    *v41 = 0xD000000000000018;
    v41[1] = 0x80000001D8B432F0;
    v42 = (v29 + v30[24]);
    v42[2] = 0;
    v42[3] = 0;
    *v42 = 0xD000000000000012;
    v42[1] = 0x80000001D8B43310;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    sub_1D8883F0C(*(v29 + 32), *(v29 + 40), *(v29 + 48));
    *(v29 + 32) = v71;
    *(v29 + 40) = 0xD000000000000013;
    *(v29 + 48) = 0x80000001D8B43230;
    *(v29 + 56) = v72;
    *(v29 + 64) = v73;
    *(v29 + 88) = 10;
    *(v29 + 112) = 6;
    *(v29 + 136) = v77;
    *(v29 + 144) = v76;
    *(v29 + 168) = 0;
    *(v29 + 176) = 0;
    v43 = MEMORY[0x1E69E7CC0];
    *(v29 + 200) = MEMORY[0x1E69E7CC0];
    sub_1D87C69C8(v70, v68 + v69);
    v67[2] = v78;
    v66[2] = v43;
    v65[2] = v43;
    v64[16] = 1;
    v63[2] = v43;
    *(v62 + 16) = v43;
    *(v36 + 16) = v43;
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    *(v38 + 16) = 1;
    *(v39 + 16) = v74;
    v40[2] = v43;
    v41[2] = 0;
    v41[3] = 0;
    v42[2] = 0;
    v42[3] = 0;
    TapToRadarDraft.url.getter(v75);
    v44 = [objc_opt_self() defaultWorkspace];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64458);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D8B1AB90;
    *(inited + 32) = sub_1D8B15970();
    *(inited + 40) = v46;
    *(inited + 48) = 1;
    v47 = sub_1D893DD38(inited);
    swift_setDeallocating();
    sub_1D87A14E4(inited + 32, qword_1ECA64460);
    if (v44)
    {
      v48 = v44;
      v49 = sub_1D8B12F50();
      sub_1D89C5D50(v47);

      v50 = sub_1D8B15710();

      [v48 openSensitiveURL:v49 withOptions:v50];
    }

    else
    {
    }

    v59 = v0[60];
    v60 = v0[42];
    (*(v0[48] + 8))(v0[49], v0[47]);
    sub_1D8883F50(v59, type metadata accessor for TapToRadarDraftPayload);
    sub_1D8883F50(v60, type metadata accessor for TapToRadarDraft);
    goto LABEL_33;
  }

  if (*v0[60])
  {
    v76 = v20;
    v77 = v19;
    v78 = v12;
    if (*v0[60] != 1)
    {
      v26 = 0xEC0000007463656CLL;
      v27 = 0x6C6F432061746144;
      v25 = 1;
      v28 = 1724432;
    }

    goto LABEL_23;
  }

  v51 = (v0[36] + *(v7 + 44));
  if (!*v51)
  {
    v76 = v20;
    v77 = v19;
    v78 = v12;
    v25 = 0;
    v28 = 1700176;
    goto LABEL_23;
  }

  v52 = v51[1];
  ObjectType = swift_getObjectType();
  if (qword_1EE0E3EB8 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for ActionPin(0);
  v55 = __swift_project_value_buffer(v54, qword_1EE0E3EC0);
  v0[24] = v54;
  v0[25] = &protocol witness table for ActionPin;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 21);
  sub_1D8883FB0(v55, boxed_opaque_existential_1, type metadata accessor for ActionPin);
  v79 = (*(v52 + 8) + **(v52 + 8));
  v57 = swift_task_alloc();
  v0[72] = v57;
  *v57 = v0;
  v57[1] = sub_1D8881B8C;

  return v79(v0 + 21, 1, ObjectType, v52);
}

uint64_t sub_1D8881B8C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 584) = a1;
  *(v3 + 592) = v1;

  if (v1)
  {
    v4 = sub_1D88830E8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 168);
    v4 = sub_1D8881CAC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D8881CAC()
{
  v182 = v0;
  v1 = v0[73];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = CVBufferRef.cvPixelData.getter();
  if (v3 >> 60 == 15)
  {

LABEL_4:
    v179 = v0[69];
    goto LABEL_5;
  }

  v40 = v0[56];
  v171 = v0[55];
  v41 = v0[48];
  v165 = v0[57];
  pixelBufferb = v0[47];
  v43 = v0[45];
  v42 = v0[46];
  v44 = v0[44];
  v175 = v3;
  v173 = v2;
  v45 = CVBufferRef.pixelFormat.getter();
  v47 = v46;
  sub_1D8B12F40();
  sub_1D8B16720();

  v181[0] = 0xD000000000000012;
  v181[1] = 0x80000001D8B43370;
  MEMORY[0x1DA71EFA0](v45, v47);

  *(v180 + 232) = 0xD000000000000012;
  *(v180 + 240) = 0x80000001D8B43370;
  v156 = *MEMORY[0x1E6968F70];
  v154 = *(v43 + 104);
  v154(v42);
  sub_1D87C12C0();
  sub_1D8B12FE0();
  v153 = *(v43 + 8);
  v153(v42, v44);

  v177 = *(v41 + 8);
  v177(v40, pixelBufferb);
  v152 = objc_opt_self();
  v48 = [v152 defaultManager];
  sub_1D8B12FC0();
  v49 = sub_1D8B15940();

  v50 = sub_1D8B13030();
  [v48 createFileAtPath:v49 contents:v50 attributes:0];

  v159 = *(v41 + 16);
  v159(v171, v165, pixelBufferb);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *(v180 + 552);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v52 = sub_1D87C8798(0, v52[2] + 1, 1, *(v180 + 552));
  }

  v54 = v52[2];
  v53 = v52[3];
  if (v54 >= v53 >> 1)
  {
    v52 = sub_1D87C8798(v53 > 1, v54 + 1, 1, v52);
  }

  v55 = *(v180 + 584);
  v56 = *(v180 + 440);
  v57 = *(v180 + 376);
  v58 = *(v180 + 384);
  v52[2] = v54 + 1;
  v59 = *(v58 + 32);
  v58 += 32;
  v163 = (*(v58 + 48) + 32) & ~*(v58 + 48);
  v166 = v59;
  v161 = *(v58 + 40);
  v59(v52 + v163 + v161 * v54, v56, v57);
  *(v180 + 16) = v55;
  *(v180 + 24) = 0;
  *(v180 + 40) = 0;
  *(v180 + 48) = 0;
  *(v180 + 32) = 0;
  *(v180 + 56) = 0;
  *(v180 + 64) = 0;
  *(v180 + 72) = 1;
  *(v180 + 80) = 0;
  *(v180 + 88) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v180 + 96) = _Q0;
  pixelBuffer = v1;
  v65 = sub_1D8878F78();
  sub_1D8884018(v180 + 16);
  v66 = v52;
  if (v65)
  {
    v67 = v65;
    v68 = CGImageRef.toPNG()();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0xF000000000000000;
  }

  v75 = *(v180 + 448);
  v77 = *(v180 + 368);
  v76 = *(v180 + 376);
  v78 = *(v180 + 352);
  sub_1D8B12F40();
  *(v180 + 248) = 0xD000000000000012;
  *(v180 + 256) = 0x80000001D8B43390;
  (v154)(v77, v156, v78);
  sub_1D8B12FE0();
  v153(v77, v78);
  v177(v75, v76);
  v79 = [v152 defaultManager];
  sub_1D8B12FC0();
  v80 = sub_1D8B15940();

  v151 = v68;
  if (v70 >> 60 == 15)
  {
    v81 = v70;
    v82 = 0;
  }

  else
  {
    sub_1D87A1544(v68, v70);
    v82 = sub_1D8B13030();
    v83 = v68;
    v81 = v70;
    sub_1D87C12A4(v83, v70);
  }

  v85 = *(v180 + 424);
  v84 = *(v180 + 432);
  v86 = *(v180 + 376);
  [v79 createFileAtPath:v80 contents:v82 attributes:0];

  v159(v85, v84, v86);
  v87 = v66;
  v89 = v66[2];
  v88 = v66[3];
  if (v89 >= v88 >> 1)
  {
    v87 = sub_1D87C8798(v88 > 1, v89 + 1, 1, v66);
  }

  v0 = v180;
  v90 = *(v180 + 424);
  v91 = *(v180 + 376);
  *(v87 + 16) = v89 + 1;
  v166(v87 + v163 + v89 * v161, v90, v91);
  v179 = v87;
  if (!v65)
  {
    v100 = *(v180 + 456);
    v101 = *(v180 + 432);
    v102 = *(v180 + 376);
    sub_1D87C12A4(v173, v175);
    sub_1D87C12A4(v151, v81);

    v177(v101, v102);
    v177(v100, v102);
    goto LABEL_5;
  }

  v93 = *(v180 + 376);
  v92 = *(v180 + 384);
  v94 = *(v180 + 344);
  sub_1D87A0E38(*(v180 + 480) + *(*(v180 + 472) + 24), v94, &qword_1ECA630C0);
  v95 = (*(v92 + 48))(v94, 1, v93);
  v96 = *(v180 + 376);
  v97 = *(v180 + 344);
  if (v95 == 1)
  {
    v98 = *(v180 + 456);
    v99 = *(v180 + 432);
    sub_1D87C12A4(v173, v175);

    sub_1D87C12A4(v151, v81);
    v177(v99, v96);
    v177(v98, v96);
    sub_1D87A14E4(v97, &qword_1ECA630C0);
    goto LABEL_5;
  }

  v166(*(v180 + 416), *(v180 + 344), *(v180 + 376));
  v103 = sub_1D8B12F50();
  v104 = CGDataProviderCreateWithURL(v103);

  if (!v104)
  {
    v124 = *(v180 + 456);
    v125 = *(v180 + 432);
    v126 = *(v180 + 416);
    v127 = *(v180 + 376);
    sub_1D87C12A4(v173, v175);

LABEL_49:
    sub_1D87C12A4(v151, v81);

    v177(v126, v127);
    v177(v125, v127);
    v177(v124, v127);
    goto LABEL_5;
  }

  v150 = CGImageCreateWithPNGDataProvider(v104, 0, 0, kCGRenderingIntentDefault);
  if (!v150)
  {
    v124 = *(v180 + 456);
    v125 = *(v180 + 432);
    v126 = *(v180 + 416);
    v127 = *(v180 + 376);
    sub_1D87C12A4(v173, v175);

    goto LABEL_49;
  }

  v148 = v81;
  v105 = pixelBuffer;
  CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  CVPixelBufferGetHeight(pixelBuffer);
  v110 = Width;
  v111 = 0xC3E0000000000001;
  if (Width <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_55;
  }

  v111 = 0x43E0000000000000;
  if (v110 >= 9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v112 = Height;
  v111 = 0xC3E0000000000001;
  if (Height <= -9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v111 = 0x43E0000000000000;
  if (v112 >= 9.22337204e18)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    v138 = v108;
    v179 = sub_1D87C8798(v111 > 1, v108, 1, v109);
    goto LABEL_53;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(v65);
  BytesPerRow = CGImageGetBytesPerRow(v65);
  v115 = CGImageGetColorSpace(v65);
  BitmapInfo = CGImageGetBitmapInfo(v65);
  v117 = CGBitmapContextCreate(0, v110, v112, BitsPerComponent, BytesPerRow, v115, BitmapInfo);

  v147 = v117;
  if (v117 && (v118 = v117, sub_1D8B161D0(), v118, v119 = v118, sub_1D8B161D0(), v119, (Image = CGBitmapContextCreateImage(v119)) != 0))
  {
    v121 = Image;
    v149 = CGImageRef.toPNG()();
    v123 = v122;
  }

  else
  {
    v149 = 0;
    v123 = 0xF000000000000000;
  }

  v128 = *(v180 + 448);
  v130 = *(v180 + 368);
  v129 = *(v180 + 376);
  v131 = *(v180 + 352);
  sub_1D8B12F40();
  *(v180 + 264) = 0x74535F7365786F42;
  *(v180 + 272) = 0xEF676E702E6C6C69;
  (v154)(v130, v156, v131);
  sub_1D8B12FE0();
  v153(v130, v131);
  v177(v128, v129);
  v132 = [v152 defaultManager];
  sub_1D8B12FC0();
  v133 = sub_1D8B15940();

  v146 = v104;
  if (v123 >> 60 == 15)
  {
    v134 = 0;
  }

  else
  {
    sub_1D87A1544(v149, v123);
    v134 = sub_1D8B13030();
    sub_1D87C12A4(v149, v123);
  }

  v136 = *(v180 + 400);
  v135 = *(v180 + 408);
  v137 = *(v180 + 376);
  [v132 createFileAtPath:v133 contents:v134 attributes:{0, v123}];

  v159(v136, v135, v137);
  v109 = v179;
  v105 = *(v179 + 16);
  v111 = *(v179 + 24);
  v108 = v105 + 1;
  if (v105 >= v111 >> 1)
  {
    goto LABEL_58;
  }

  v138 = v105 + 1;
LABEL_53:
  v0 = v180;
  v139 = *(v180 + 456);
  v140 = *(v180 + 432);
  v141 = *(v180 + 408);
  v142 = *(v180 + 416);
  v143 = *(v180 + 400);
  v144 = *(v180 + 376);
  sub_1D87C12A4(v173, v175);

  sub_1D87C12A4(v149, v145);
  sub_1D87C12A4(v151, v148);

  v177(v141, v144);
  v177(v142, v144);
  v177(v140, v144);
  v177(v139, v144);
  *(v179 + 16) = v138;
  v166(v179 + v163 + v105 * v161, v143, v144);
LABEL_5:
  v178 = v0[74];
  v174 = v0[71];
  v172 = v0[70];
  v176 = v0[49];
  v4 = v0[41];
  v5 = v0[42];
  v6 = v0[40];
  v170 = v6;
  sub_1D8B131C0();
  v7 = sub_1D8B131D0();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *v5 = 0x4449656C646E7542;
  *(v5 + 8) = 0xE800000000000000;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 88) = 10;
  *(v5 + 64) = 0;
  strcpy((v5 + 72), "Classification");
  *(v5 + 87) = -18;
  *(v5 + 112) = 6;
  *(v5 + 96) = 0x6375646F72706552;
  *(v5 + 104) = 0xEF7974696C696269;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 120) = 0x656C746954;
  *(v5 + 128) = 0xE500000000000000;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;
  *(v5 + 152) = 0x7470697263736544;
  *(v5 + 160) = 0xEB000000006E6F69;
  *(v5 + 192) = 0xE800000000000000;
  *(v5 + 200) = 0;
  *(v5 + 184) = 0x7364726F7779654BLL;
  v9 = (v5 + v4[11]);
  pixelBuffera = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450) + 36);
  v8(pixelBuffera + v9, 1, 1, v7);
  *v9 = 0x7349664F656D6954;
  v9[1] = 0xEB00000000657573;
  v162 = (v5 + v4[12]);
  v164 = v9;
  *v162 = 0x656D686361747441;
  v162[1] = 0xEB0000000073746ELL;
  v162[2] = 0;
  v160 = (v5 + v4[13]);
  v160[1] = 0x80000001D8B43250;
  v160[2] = 0;
  *v160 = 0xD000000000000011;
  v10 = (v5 + v4[14]);
  v10[1] = 0x80000001D8B43270;
  v10[2] = 0;
  *v10 = 0xD000000000000014;
  v157 = (v5 + v4[15]);
  v158 = v10;
  v157[16] = 2;
  strcpy(v157, "DeleteOnAttach");
  v157[15] = -18;
  v155 = (v5 + v4[16]);
  *v155 = 0x4449656369766544;
  v155[1] = 0xE900000000000073;
  v155[2] = 0;
  v11 = v5 + v4[17];
  strcpy(v11, "DeviceClasses");
  *(v11 + 14) = -4864;
  *(v11 + 16) = 0;
  v12 = v5 + v4[18];
  strcpy(v12, "DeviceModels");
  *(v12 + 13) = 0;
  *(v12 + 14) = -5120;
  *(v12 + 16) = 0;
  v13 = v5 + v4[19];
  *(v13 + 8) = 0x80000001D8B43290;
  *(v13 + 16) = 0;
  *(v13 + 24) = 1;
  *v13 = 0xD000000000000016;
  v14 = v5 + v4[20];
  *(v14 + 16) = 2;
  *v14 = 0xD00000000000001ALL;
  *(v14 + 8) = 0x80000001D8B432B0;
  v15 = v5 + v4[21];
  *(v15 + 16) = 7;
  *v15 = 0x676169446F747541;
  *(v15 + 8) = 0xEF73636974736F6ELL;
  v16 = (v5 + v4[22]);
  v16[1] = 0x80000001D8B432D0;
  v16[2] = 0;
  *v16 = 0xD00000000000001BLL;
  v17 = (v5 + v4[23]);
  v17[2] = 0;
  v17[3] = 0;
  *v17 = 0xD000000000000018;
  v17[1] = 0x80000001D8B432F0;
  v18 = (v5 + v4[24]);
  v18[2] = 0;
  v18[3] = 0;
  *v18 = 0xD000000000000012;
  v18[1] = 0x80000001D8B43310;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_1D8883F0C(*(v5 + 32), *(v5 + 40), *(v5 + 48));
  *(v5 + 32) = xmmword_1D8B23E30;
  *(v5 + 48) = 0x80000001D8B43230;
  *(v5 + 56) = xmmword_1D8B23E40;
  *(v5 + 88) = 10;
  *(v5 + 112) = 6;
  *(v5 + 136) = v172;
  *(v5 + 144) = v174;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;
  v19 = MEMORY[0x1E69E7CC0];
  *(v5 + 200) = MEMORY[0x1E69E7CC0];
  sub_1D87C69C8(v170, pixelBuffera + v164);
  v162[2] = v179;
  v160[2] = v19;
  v158[2] = v19;
  v157[16] = 1;
  v155[2] = v19;
  *(v11 + 16) = v19;
  *(v12 + 16) = v19;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v14 + 16) = 1;
  *(v15 + 16) = 0;
  v16[2] = v19;
  v17[2] = 0;
  v17[3] = 0;
  v18[2] = 0;
  v18[3] = 0;
  TapToRadarDraft.url.getter(v176);
  if (v178)
  {
    v20 = v180;
    if (qword_1ECA62128 != -1)
    {
      swift_once();
    }

    v21 = sub_1D8B151E0();
    __swift_project_value_buffer(v21, qword_1ECA66978);
    v22 = v178;
    v23 = sub_1D8B151C0();
    v24 = sub_1D8B16210();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v180 + 480);
    v27 = *(v180 + 336);
    if (v25)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v181[0] = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = sub_1D8B16C90();
      v32 = sub_1D89AC714(v30, v31, v181);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1D8783000, v23, v24, "Could not open TTR draft URL: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1DA721330](v29, -1, -1);
      MEMORY[0x1DA721330](v28, -1, -1);
    }

    else
    {
    }

    v71 = v26;
  }

  else
  {
    v33 = [objc_opt_self() defaultWorkspace];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64458);
    v20 = v180;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D8B1AB90;
    *(inited + 32) = sub_1D8B15970();
    *(inited + 40) = v35;
    *(inited + 48) = 1;
    v36 = sub_1D893DD38(inited);
    swift_setDeallocating();
    sub_1D87A14E4(inited + 32, qword_1ECA64460);
    if (v33)
    {
      v37 = v33;
      v38 = sub_1D8B12F50();
      sub_1D89C5D50(v36);

      v39 = sub_1D8B15710();

      [v37 openSensitiveURL:v38 withOptions:v39];
    }

    else
    {
    }

    v72 = *(v180 + 480);
    v27 = *(v180 + 336);
    (*(*(v180 + 384) + 8))(*(v180 + 392), *(v180 + 376));
    v71 = v72;
  }

  sub_1D8883F50(v71, type metadata accessor for TapToRadarDraftPayload);
  sub_1D8883F50(v27, type metadata accessor for TapToRadarDraft);

  v73 = *(v20 + 8);

  return v73();
}

uint64_t sub_1D88830E8()
{
  v1 = v0[74];
  v2 = v0[67];
  v3 = v0[65];
  v5 = v0[62];
  v4 = v0[63];
  __swift_destroy_boxed_opaque_existential_1((v0 + 21));
  *v5 = 0xD000000000000036;
  v5[1] = 0x80000001D8B43330;
  swift_storeEnumTagMultiPayload();
  sub_1D8B15EE0();

  v2(v3, v4);
  v40 = v0[71];
  v42 = v0[70];
  v43 = v0[69];
  v44 = v0[49];
  v6 = v0[41];
  v7 = v0[42];
  v8 = v0[40];
  v41 = v8;
  sub_1D8B131C0();
  v9 = sub_1D8B131D0();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *v7 = 0x4449656C646E7542;
  *(v7 + 8) = 0xE800000000000000;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 88) = 10;
  *(v7 + 64) = 0;
  strcpy((v7 + 72), "Classification");
  *(v7 + 87) = -18;
  *(v7 + 112) = 6;
  *(v7 + 96) = 0x6375646F72706552;
  *(v7 + 104) = 0xEF7974696C696269;
  *(v7 + 136) = 0;
  *(v7 + 144) = 0;
  *(v7 + 120) = 0x656C746954;
  *(v7 + 128) = 0xE500000000000000;
  *(v7 + 168) = 0;
  *(v7 + 176) = 0;
  *(v7 + 152) = 0x7470697263736544;
  *(v7 + 160) = 0xEB000000006E6F69;
  *(v7 + 192) = 0xE800000000000000;
  *(v7 + 200) = 0;
  *(v7 + 184) = 0x7364726F7779654BLL;
  v11 = (v7 + v6[11]);
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64450) + 36);
  v10(v11 + v39, 1, 1, v9);
  *v11 = 0x7349664F656D6954;
  v11[1] = 0xEB00000000657573;
  v37 = (v7 + v6[12]);
  v38 = v11;
  *v37 = 0x656D686361747441;
  v37[1] = 0xEB0000000073746ELL;
  v37[2] = 0;
  v36 = (v7 + v6[13]);
  v36[1] = 0x80000001D8B43250;
  v36[2] = 0;
  *v36 = 0xD000000000000011;
  v12 = (v7 + v6[14]);
  v12[1] = 0x80000001D8B43270;
  v12[2] = 0;
  *v12 = 0xD000000000000014;
  v34 = (v7 + v6[15]);
  v35 = v12;
  v34[16] = 2;
  strcpy(v34, "DeleteOnAttach");
  v34[15] = -18;
  v33 = (v7 + v6[16]);
  *v33 = 0x4449656369766544;
  v33[1] = 0xE900000000000073;
  v33[2] = 0;
  v32 = v7 + v6[17];
  strcpy(v32, "DeviceClasses");
  *(v32 + 14) = -4864;
  *(v32 + 16) = 0;
  v13 = v7 + v6[18];
  strcpy(v13, "DeviceModels");
  *(v13 + 13) = 0;
  *(v13 + 14) = -5120;
  *(v13 + 16) = 0;
  v14 = v7 + v6[19];
  *(v14 + 8) = 0x80000001D8B43290;
  *(v14 + 16) = 0;
  *(v14 + 24) = 1;
  *v14 = 0xD000000000000016;
  v15 = v7 + v6[20];
  *(v15 + 16) = 2;
  *v15 = 0xD00000000000001ALL;
  *(v15 + 8) = 0x80000001D8B432B0;
  v16 = v7 + v6[21];
  *(v16 + 16) = 7;
  *v16 = 0x676169446F747541;
  *(v16 + 8) = 0xEF73636974736F6ELL;
  v17 = (v7 + v6[22]);
  v17[1] = 0x80000001D8B432D0;
  v17[2] = 0;
  *v17 = 0xD00000000000001BLL;
  v18 = (v7 + v6[23]);
  v18[2] = 0;
  v18[3] = 0;
  *v18 = 0xD000000000000018;
  v18[1] = 0x80000001D8B432F0;
  v19 = (v7 + v6[24]);
  v19[2] = 0;
  v19[3] = 0;
  *v19 = 0xD000000000000012;
  v19[1] = 0x80000001D8B43310;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1D8883F0C(*(v7 + 32), *(v7 + 40), *(v7 + 48));
  *(v7 + 32) = xmmword_1D8B23E30;
  *(v7 + 48) = 0x80000001D8B43230;
  *(v7 + 56) = xmmword_1D8B23E40;
  *(v7 + 88) = 10;
  *(v7 + 112) = 6;
  *(v7 + 136) = v42;
  *(v7 + 144) = v40;
  *(v7 + 168) = 0;
  *(v7 + 176) = 0;
  v20 = MEMORY[0x1E69E7CC0];
  *(v7 + 200) = MEMORY[0x1E69E7CC0];
  sub_1D87C69C8(v41, v38 + v39);
  v37[2] = v43;
  v36[2] = v20;
  v35[2] = v20;
  v34[16] = 1;
  v33[2] = v20;
  *(v32 + 16) = v20;
  *(v13 + 16) = v20;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v15 + 16) = 1;
  *(v16 + 16) = 0;
  v17[2] = v20;
  v18[2] = 0;
  v18[3] = 0;
  v19[2] = 0;
  v19[3] = 0;
  TapToRadarDraft.url.getter(v44);
  v21 = [objc_opt_self() defaultWorkspace];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64458);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = sub_1D8B15970();
  *(inited + 40) = v23;
  *(inited + 48) = 1;
  v24 = sub_1D893DD38(inited);
  swift_setDeallocating();
  sub_1D87A14E4(inited + 32, qword_1ECA64460);
  if (v21)
  {
    v25 = v21;
    v26 = sub_1D8B12F50();
    sub_1D89C5D50(v24);

    v27 = sub_1D8B15710();

    [v25 openSensitiveURL:v26 withOptions:v27];
  }

  else
  {
  }

  v28 = v0[60];
  v29 = v0[42];
  (*(v0[48] + 8))(v0[49], v0[47]);
  sub_1D8883F50(v28, type metadata accessor for TapToRadarDraftPayload);
  sub_1D8883F50(v29, type metadata accessor for TapToRadarDraft);

  v30 = v0[1];

  return v30();
}