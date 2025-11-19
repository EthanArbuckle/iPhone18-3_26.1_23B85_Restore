uint64_t VisualContext.lists(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  v31 = MEMORY[0x1E69E7CD0];
  v29 = type metadata accessor for VisualContext();
  v30 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v28, v27);
  v21[2] = sub_1D9F0A4FC;
  v21[3] = 0;
  v21[4] = &v31;
  v22 = a1;
  sub_1D9EE14D0(v27, v24);
  v16 = v25;
  v17 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_1D9F0CEA4(&v23, *v12, v12[1], v12[2], v12[3]);

    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v18 = v25;
    v19 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_1D9EE12AC(sub_1D9F1C0EC, v21, v18, v19);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v31;
}

uint64_t VisualContext.structuredExtraction.getter@<X0>(void *a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for VisualClassification();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for VisualContext();
  v27 = *(v1 + *(result + 32));
  v24 = *(v27 + 16);
  if (v24)
  {
    v6 = 0;
    v7 = v25 + *(v2 + 24);
    v23 = v27 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    while (v6 < *(v27 + 16))
    {
      v8 = v25;
      sub_1D9F1BEE0(v23 + *(v26 + 72) * v6, v25, type metadata accessor for VisualClassification);
      v9 = *v7;
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v12 = *(v7 + 32);
      v13 = *(v7 + 40);
      v15 = *(v7 + 48);
      v14 = *(v7 + 56);
      v16 = *(v7 + 64);
      v17 = *(v7 + 72);
      v18 = *(v7 + 80);
      v30 = *(v7 + 8);
      v31 = v9;
      v28 = v14;
      v29 = v10;
      sub_1D9F0CC18(v9, v30, v10, v11, v12, v13, v15, v14, v16, v17, v18);
      result = sub_1D9F1BF48(v8, type metadata accessor for VisualClassification);
      if ((v18 & 0xE0) == 0xA0 && !v11)
      {
        v19 = v22;
        v20 = v30;
        *v22 = v31;
        v19[1] = v20;
        v19[2] = v29;
        return result;
      }

      ++v6;
      result = sub_1D9F0CD2C(v31, v30, v29, v11, v12, v13, v15, v28, v16, v17, v18);
      if (v24 == v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v21 = v22;
    *v22 = 0;
    v21[1] = 0;
    v21[2] = 0;
  }

  return result;
}

uint64_t VisualContext.visualLookupResult.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for VisualContext();
  v4 = 0;
  v5 = *(v1 + *(result + 32));
  v6 = *(v5 + 16);
  do
  {
    if (v6 == v4)
    {
      *a1 = 0;
      a1[1] = 0;
      return result;
    }

    v7 = type metadata accessor for VisualClassification();
    v8 = *(v7 - 8);
    result = v7 - 8;
    v9 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4++;
    v10 = v9 + *(result + 32);
  }

  while ((*(v10 + 80) & 0xE0) != 0x60);
  v11 = *(v10 + 8);
  *a1 = *v10;
  a1[1] = v11;
}

void *sub_1D9F039E8()
{
  v45 = type metadata accessor for DetectedEntity();
  v39 = *(v45 - 8);
  v1 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for VisualClassification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + *(type metadata accessor for VisualContext() + 32));
  v10 = MEMORY[0x1E69E7CC0];
  v44 = *(v9 + 16);
  if (!v44)
  {
    return v10;
  }

  v11 = 0;
  v12 = &v8[*(v4 + 24)];
  v43 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v42 = *(v5 + 72);
  v41 = v9;
  v40 = v8;
  do
  {
    sub_1D9F1BEE0(v43 + v42 * v11, v8, type metadata accessor for VisualClassification);
    v13 = *(v12 + 3);
    v53 = *(v12 + 2);
    v54 = v13;
    v55 = *(v12 + 4);
    v56 = v12[80];
    v14 = *(v12 + 1);
    v51 = *v12;
    v52 = v14;
    sub_1D9E8A2F0(&v51, &v47);
    sub_1D9F1BF48(v8, type metadata accessor for VisualClassification);
    v15 = v51;
    v16 = v56 >> 5;
    if (v16 > 2)
    {
      v17 = *(&v51 + 1);
      v18 = v52;
      if (v56 >> 5 > 4u)
      {
        if (v16 != 5)
        {

          goto LABEL_46;
        }

        if (BYTE8(v52))
        {
LABEL_20:
          result = sub_1D9E87D78(&v51);
          goto LABEL_46;
        }

        sub_1D9E743C0(v51, *(&v51 + 1), v52, 0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D9F0C150(0, v10[2] + 1, 1, v10);
        }

        v20 = v10[2];
        v37 = v10[3];
        v21 = v20 + 1;
        if (v20 >= v37 >> 1)
        {
          v10 = sub_1D9F0C150((v37 > 1), v20 + 1, 1, v10);
        }

        sub_1D9E87D78(&v51);
      }

      else
      {
        if (v16 == 3)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D9F0C150(0, v10[2] + 1, 1, v10);
          }

          v20 = v10[2];
          v19 = v10[3];
          v21 = v20 + 1;
          if (v20 >= v19 >> 1)
          {
            v10 = sub_1D9F0C150((v19 > 1), v20 + 1, 1, v10);
          }

          v49 = &type metadata for VisualLookupResult;
          v50 = &off_1EECD1D40;
          *&v47 = v15;
          *(&v47 + 1) = v17;
          goto LABEL_45;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D9F0C150(0, v10[2] + 1, 1, v10);
        }

        v20 = v10[2];
        v28 = v10[3];
        v21 = v20 + 1;
        if (v20 >= v28 >> 1)
        {
          v10 = sub_1D9F0C150((v28 > 1), v20 + 1, 1, v10);
        }
      }

      v50 = &off_1EECD2548;
      *&v47 = v15;
      *(&v47 + 1) = v17;
      v48 = v18;
      v49 = &type metadata for StructuredExtraction;
LABEL_45:
      v10[2] = v21;
      result = sub_1D9E3EE4C(&v47, &v10[5 * v20 + 4]);
      v9 = v41;
      goto LABEL_46;
    }

    if (v16 != 1)
    {
      goto LABEL_20;
    }

    v22 = *(v51 + 16);
    if (v22)
    {
      v46 = MEMORY[0x1E69E7CC0];
      sub_1D9E947CC(0, v22, 0);
      v23 = v46;
      v24 = v15 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v25 = *(v39 + 72);
      do
      {
        sub_1D9F1BEE0(v24, v3, type metadata accessor for DetectedEntity);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB743F8, &unk_1D9F454E0);
        swift_dynamicCast();
        v46 = v23;
        v27 = *(v23 + 16);
        v26 = *(v23 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1D9E947CC((v26 > 1), v27 + 1, 1);
          v23 = v46;
        }

        *(v23 + 16) = v27 + 1;
        sub_1D9E3EE4C(&v47, v23 + 40 * v27 + 32);
        v24 += v25;
        --v22;
      }

      while (v22);
      result = sub_1D9E87D78(&v51);
      v9 = v41;
    }

    else
    {
      result = sub_1D9E87D78(&v51);
      v23 = MEMORY[0x1E69E7CC0];
    }

    v30 = *(v23 + 16);
    v31 = v10[2];
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      goto LABEL_53;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v32 > v10[3] >> 1)
    {
      if (v31 <= v32)
      {
        v33 = v31 + v30;
      }

      else
      {
        v33 = v31;
      }

      result = sub_1D9F0C150(result, v33, 1, v10);
      v10 = result;
    }

    v8 = v40;
    if (*(v23 + 16))
    {
      if ((v10[3] >> 1) - v10[2] < v30)
      {
        goto LABEL_55;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB743F8, &unk_1D9F454E0);
      swift_arrayInitWithCopy();

      if (v30)
      {
        v34 = v10[2];
        v35 = __OFADD__(v34, v30);
        v36 = v34 + v30;
        v8 = v40;
        if (v35)
        {
          goto LABEL_56;
        }

        v10[2] = v36;
      }

      else
      {
        v8 = v40;
      }
    }

    else
    {

      if (v30)
      {
        goto LABEL_54;
      }
    }

LABEL_46:
    if (++v11 == v44)
    {
      return v10;
    }
  }

  while (v11 < *(v9 + 16));
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_1D9F04044(void *a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v19 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DetectedEntity();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 24))(v16, v17);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D9E51FE8(v10, &qword_1ECB75CC0, &qword_1D9F452A8);
    return 1;
  }

  else
  {
    sub_1D9F1BFA8(v10, v15, type metadata accessor for DetectedEntity);
    a2(&v21, v15);
    if (v24)
    {
      sub_1D9F0CEA4(&v21, v21, v22, v23, v24);

      sub_1D9F1BF48(v15, type metadata accessor for DetectedEntity);
    }

    else
    {
      sub_1D9F1BF48(v15, type metadata accessor for DetectedEntity);
      sub_1D9F0CE60(v21, v22, v23, 0);
    }

    return v20 & 1;
  }
}

uint64_t sub_1D9F04294(void *a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v19[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v19 - v9;
  v11 = type metadata accessor for DetectedEntity();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 24))(v16, v17);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D9E51FE8(v10, &qword_1ECB75CC0, &qword_1D9F452A8);
    return 1;
  }

  else
  {
    sub_1D9F1BFA8(v10, v15, type metadata accessor for DetectedEntity);
    a2(&v21, v15);
    if (v22)
    {
      sub_1D9F0D300(&v21, v21, v22, v23);

      sub_1D9F1BF48(v15, type metadata accessor for DetectedEntity);
    }

    else
    {
      sub_1D9F1BF48(v15, type metadata accessor for DetectedEntity);
    }

    return v20 & 1;
  }
}

uint64_t sub_1D9F044D4(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, int a5)
{
  v39 = a5;
  v35 = a4;
  v37 = a3;
  v38 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC8, &unk_1D9F452B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v36 = type metadata accessor for DateTimeSchedule();
  v10 = *(v36 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v36);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v34 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v32 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v32 - v19;
  v21 = type metadata accessor for DetectedEntity();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  (*(v27 + 24))(v26, v27);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1D9E51FE8(v20, &qword_1ECB75CC0, &qword_1D9F452A8);
    return 1;
  }

  else
  {
    sub_1D9F1BFA8(v20, v25, type metadata accessor for DetectedEntity);
    v38(v25);
    if ((*(v10 + 48))(v9, 1, v36) == 1)
    {
      sub_1D9F1BF48(v25, type metadata accessor for DetectedEntity);
      sub_1D9E51FE8(v9, &qword_1ECB75CC8, &unk_1D9F452B8);
    }

    else
    {
      v29 = v32;
      sub_1D9F1BFA8(v9, v32, type metadata accessor for DateTimeSchedule);
      v30 = v33;
      sub_1D9F1BEE0(v29, v33, type metadata accessor for DateTimeSchedule);
      v31 = v34;
      sub_1D9F0D4CC(v34, v30);
      sub_1D9F1BF48(v31, type metadata accessor for DateTimeSchedule);
      sub_1D9F1BF48(v29, type metadata accessor for DateTimeSchedule);
      sub_1D9F1BF48(v25, type metadata accessor for DetectedEntity);
    }

    return v39 & 1;
  }
}

uint64_t sub_1D9F048B8(void *a1, void (*a2)(double *__return_ptr, char *), uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v19[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v19 - v9;
  v11 = type metadata accessor for DetectedEntity();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 24))(v16, v17);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D9E51FE8(v10, &qword_1ECB75CC0, &qword_1D9F452A8);
    return 1;
  }

  else
  {
    sub_1D9F1BFA8(v10, v15, type metadata accessor for DetectedEntity);
    a2(v21, v15);
    if (v22)
    {
      sub_1D9F0D76C(v21, *&v21[1], v22, v21[0]);

      sub_1D9F1BF48(v15, type metadata accessor for DetectedEntity);
    }

    else
    {
      sub_1D9F1BF48(v15, type metadata accessor for DetectedEntity);
    }

    return v20 & 1;
  }
}

uint64_t sub_1D9F04AF8(void *a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, uint64_t a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  v22[1] = a4;
  v23 = a6;
  v26 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v22 - v12;
  v14 = type metadata accessor for DetectedEntity();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(v20 + 24))(v19, v20);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D9E51FE8(v13, &qword_1ECB75CC0, &qword_1D9F452A8);
    return 1;
  }

  else
  {
    sub_1D9F1BFA8(v13, v18, type metadata accessor for DetectedEntity);
    a2(&v27, v18);
    if (v28)
    {
      sub_1D9F0FDE0(&v27, v27, v28, v29, v30, v23, v24);

      sub_1D9F1BF48(v18, type metadata accessor for DetectedEntity);
    }

    else
    {
      sub_1D9F1BF48(v18, type metadata accessor for DetectedEntity);
      sub_1D9F1C0A8(v27, 0);
    }

    return v26 & 1;
  }
}

uint64_t sub_1D9F04D54(void *a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v19 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DetectedEntity();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 24))(v16, v17);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D9E51FE8(v10, &qword_1ECB75CC0, &qword_1D9F452A8);
    return 1;
  }

  else
  {
    sub_1D9F1BFA8(v10, v15, type metadata accessor for DetectedEntity);
    a2(&v21, v15);
    if (v22)
    {
      sub_1D9F0D970(&v21, v21, v22, v23, v24);

      sub_1D9F1BF48(v15, type metadata accessor for DetectedEntity);
    }

    else
    {
      sub_1D9F1BF48(v15, type metadata accessor for DetectedEntity);
      sub_1D9F1C0A8(v21, 0);
    }

    return v20 & 1;
  }
}

uint64_t sub_1D9F04FA8(void *a1, void (*a2)(__int128 *__return_ptr, char *), uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v18[1] = a4;
  v19 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v18 - v8;
  v10 = type metadata accessor for DetectedEntity();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v15 + 24))(v16, v15);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D9E51FE8(v9, &qword_1ECB75CC0, &qword_1D9F452A8);
    return 1;
  }

  else
  {
    sub_1D9F1BFA8(v9, v14, type metadata accessor for DetectedEntity);
    v19(&v22, v14);
    if (*(&v22 + 1) == 1)
    {
      sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
      v30 = v24;
      v31 = v25;
      v32 = v26;
      v33 = v27;
      v28 = v22;
      v29 = v23;
      sub_1D9E51FE8(&v28, &qword_1ECB75D50, &unk_1D9F45570);
    }

    else
    {
      v30 = v24;
      v31 = v25;
      v32 = v26;
      v33 = v27;
      v28 = v22;
      v29 = v23;
      sub_1D9F0DBAC(v21, &v28);
      sub_1D9E51FE8(v21, &qword_1ECB731D0, &qword_1D9F42160);
      sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    }

    return v20 & 1;
  }
}

uint64_t sub_1D9F0523C(void *a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v19 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DetectedEntity();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 24))(v16, v17);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D9E51FE8(v10, &qword_1ECB75CC0, &qword_1D9F452A8);
    return 1;
  }

  else
  {
    sub_1D9F1BFA8(v10, v15, type metadata accessor for DetectedEntity);
    a2(&v21, v15);
    if (v22)
    {
      v26[0] = v21;
      v26[1] = v22;
      v26[2] = v23;
      v26[3] = v24;
      v27 = v25;
      sub_1D9F0E0AC(&v21, v26);

      sub_1D9F1BF48(v15, type metadata accessor for DetectedEntity);
    }

    else
    {
      sub_1D9F1BF48(v15, type metadata accessor for DetectedEntity);
      sub_1D9F1C058(v21, 0);
    }

    return v20 & 1;
  }
}

uint64_t sub_1D9F054B4(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, int a5)
{
  v39 = a5;
  v35 = a4;
  v37 = a3;
  v38 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CD0, &qword_1D9F452C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v36 = type metadata accessor for CalendarEvent();
  v10 = *(v36 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v36);
  v33 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v34 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v32 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v32 - v19;
  v21 = type metadata accessor for DetectedEntity();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  (*(v27 + 24))(v26, v27);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1D9E51FE8(v20, &qword_1ECB75CC0, &qword_1D9F452A8);
    return 1;
  }

  else
  {
    sub_1D9F1BFA8(v20, v25, type metadata accessor for DetectedEntity);
    v38(v25);
    if ((*(v10 + 48))(v9, 1, v36) == 1)
    {
      sub_1D9F1BF48(v25, type metadata accessor for DetectedEntity);
      sub_1D9E51FE8(v9, &qword_1ECB75CD0, &qword_1D9F452C8);
    }

    else
    {
      v29 = v32;
      sub_1D9F1BFA8(v9, v32, type metadata accessor for CalendarEvent);
      v30 = v33;
      sub_1D9F1BEE0(v29, v33, type metadata accessor for CalendarEvent);
      v31 = v34;
      sub_1D9F0E36C(v34, v30);
      sub_1D9F1BF48(v31, type metadata accessor for CalendarEvent);
      sub_1D9F1BF48(v29, type metadata accessor for CalendarEvent);
      sub_1D9F1BF48(v25, type metadata accessor for DetectedEntity);
    }

    return v39 & 1;
  }
}

uint64_t sub_1D9F05898(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, int a5)
{
  v39 = a5;
  v35 = a4;
  v37 = a3;
  v38 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CD8, &qword_1D9F452D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v36 = type metadata accessor for Contact(0);
  v10 = *(v36 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v36);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v34 = &v32 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v32 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v32 - v19;
  v21 = type metadata accessor for DetectedEntity();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  (*(v27 + 24))(v26, v27);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1D9E51FE8(v20, &qword_1ECB75CC0, &qword_1D9F452A8);
    return 1;
  }

  else
  {
    sub_1D9F1BFA8(v20, v25, type metadata accessor for DetectedEntity);
    v38(v25);
    if ((*(v10 + 48))(v9, 1, v36) == 1)
    {
      sub_1D9F1BF48(v25, type metadata accessor for DetectedEntity);
      sub_1D9E51FE8(v9, &qword_1ECB75CD8, &qword_1D9F452D0);
    }

    else
    {
      v29 = v32;
      sub_1D9F1BFA8(v9, v32, type metadata accessor for Contact);
      v30 = v33;
      sub_1D9F1BEE0(v29, v33, type metadata accessor for Contact);
      v31 = v34;
      sub_1D9F0ECB4(v34, v30);
      sub_1D9F1BF48(v31, type metadata accessor for Contact);
      sub_1D9F1BF48(v29, type metadata accessor for Contact);
      sub_1D9F1BF48(v25, type metadata accessor for DetectedEntity);
    }

    return v39 & 1;
  }
}

uint64_t sub_1D9F05C7C(void *a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v19 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DetectedEntity();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 24))(v16, v17);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D9E51FE8(v10, &qword_1ECB75CC0, &qword_1D9F452A8);
    return 1;
  }

  else
  {
    sub_1D9F1BFA8(v10, v15, type metadata accessor for DetectedEntity);
    a2(&v21, v15);
    if (v23 == 1)
    {
      sub_1D9F1BF48(v15, type metadata accessor for DetectedEntity);
      sub_1D9F1BE8C(v21, v22, 1);
    }

    else
    {
      v26[0] = v21;
      v27 = v22;
      v28 = v23;
      v29 = v24;
      v30 = v25;
      sub_1D9F0F938(&v21, v26);

      sub_1D9F1BF48(v15, type metadata accessor for DetectedEntity);
    }

    return v20 & 1;
  }
}

uint64_t sub_1D9F05EF8(void *a1, void (*a2)(__int128 *__return_ptr, char *), uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v18[1] = a4;
  v19 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v18 - v8;
  v10 = type metadata accessor for DetectedEntity();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v15 + 24))(v16, v15);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D9E51FE8(v9, &qword_1ECB75CC0, &qword_1D9F452A8);
    return 1;
  }

  else
  {
    sub_1D9F1BFA8(v9, v14, type metadata accessor for DetectedEntity);
    v19(&v22, v14);
    if (*(&v22 + 1) == 1)
    {
      sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
      v30 = v24;
      v31 = v25;
      v32 = v26;
      v33 = v27;
      v28 = v22;
      v29 = v23;
      sub_1D9E51FE8(&v28, &qword_1ECB75D18, &qword_1D9F45530);
    }

    else
    {
      v30 = v24;
      v31 = v25;
      v32 = v26;
      v33 = v27;
      v28 = v22;
      v29 = v23;
      sub_1D9F0FFF0(v21, &v28);
      sub_1D9E77278(v21);
      sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    }

    return v20 & 1;
  }
}

uint64_t sub_1D9F06198(void *a1, void (*a2)(__int128 *__return_ptr, char *), uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v18[1] = a4;
  v19 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v18 - v8;
  v10 = type metadata accessor for DetectedEntity();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v15 + 24))(v16, v15);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D9E51FE8(v9, &qword_1ECB75CC0, &qword_1D9F452A8);
    return 1;
  }

  else
  {
    sub_1D9F1BFA8(v9, v14, type metadata accessor for DetectedEntity);
    v19(&v22, v14);
    if (*(&v22 + 1))
    {
      v33 = v26;
      v34 = v27;
      v35 = v28;
      v29 = v22;
      v30 = v23;
      v31 = v24;
      v32 = v25;
      sub_1D9F102B4(v21, &v29);
      sub_1D9EE7F58(v21);
      sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    }

    else
    {
      sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
      v33 = v26;
      v34 = v27;
      v35 = v28;
      v29 = v22;
      v30 = v23;
      v31 = v24;
      v32 = v25;
      sub_1D9E51FE8(&v29, &qword_1ECB75D08, &qword_1D9F45520);
    }

    return v20 & 1;
  }
}

uint64_t sub_1D9F06434(void *a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v19 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DetectedEntity();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 24))(v16, v17);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D9E51FE8(v10, &qword_1ECB75CC0, &qword_1D9F452A8);
    return 1;
  }

  else
  {
    sub_1D9F1BFA8(v10, v15, type metadata accessor for DetectedEntity);
    a2(&v21, v15);
    if (v22)
    {
      v26[0] = v21;
      v26[1] = v22;
      v27 = v23;
      v28 = v24;
      v29 = v25;
      sub_1D9F1065C(&v21, v26);

      sub_1D9F1BF48(v15, type metadata accessor for DetectedEntity);
    }

    else
    {
      sub_1D9F1BF48(v15, type metadata accessor for DetectedEntity);
      sub_1D9F1C058(v21, 0);
    }

    return v20 & 1;
  }
}

uint64_t sub_1D9F066AC(void *a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v19 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DetectedEntity();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 24))(v16, v17);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D9E51FE8(v10, &qword_1ECB75CC0, &qword_1D9F452A8);
    return 1;
  }

  else
  {
    sub_1D9F1BFA8(v10, v15, type metadata accessor for DetectedEntity);
    a2(&v21, v15);
    if (v22)
    {
      sub_1D9F108B4(&v21, v21, v22);
    }

    sub_1D9F1BF48(v15, type metadata accessor for DetectedEntity);
    return v20 & 1;
  }
}

uint64_t VisualContext.currencyAmounts(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21[-v5];
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-v13];
  v34 = MEMORY[0x1E69E7CD0];
  v32 = type metadata accessor for VisualContext();
  v33 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v31, v30);
  v22 = sub_1D9F06C14;
  v23 = 0;
  v24 = &v34;
  v25 = a1;
  sub_1D9EE14D0(v30, v27);
  v16 = v28;
  v17 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1D9F0D300(v26, *v12, *(v12 + 1), *(v12 + 2));

    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v18 = v28;
    v19 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    sub_1D9EE12AC(sub_1D9F0D2DC, v21, v18, v19);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v34;
}

uint64_t sub_1D9F06C14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v9 = *v7;
    v10 = v7[1];
    v11 = v7[2];
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  return result;
}

uint64_t VisualContext.dateTimeSchedules(includesNested:)(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC8, &unk_1D9F452B8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v40 - v8;
  v43 = type metadata accessor for DateTimeSchedule();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v43);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v40 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v40 - v18;
  v20 = type metadata accessor for DetectedEntity();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v40 - v26;
  v58 = MEMORY[0x1E69E7CD0];
  v56 = type metadata accessor for VisualContext();
  v57 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v55);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v55, v54);
  v47 = sub_1D9F072E4;
  v48 = 0;
  v49 = &v58;
  v45 = a1;
  v50 = a1;
  sub_1D9EE14D0(v54, v51);
  v29 = v52;
  v30 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(v30 + 24))(v29, v30);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1D9E51FE8(v19, &qword_1ECB75CC0, &qword_1D9F452A8);
LABEL_10:
    v37 = v52;
    v38 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    sub_1D9EE12AC(sub_1D9F0D4A8, v46, v37, v38);
    goto LABEL_11;
  }

  sub_1D9F1BFA8(v19, v27, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v27, v25, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1D9F1BFA8(v25, v7, type metadata accessor for DateTimeSchedule);
    v31 = 0;
  }

  else
  {
    sub_1D9F1BF48(v25, type metadata accessor for DetectedEntity);
    v31 = 1;
  }

  v32 = v43;
  (*(v9 + 56))(v7, v31, 1, v43);
  v33 = v44;
  sub_1D9E68C38(v7, v44, &qword_1ECB75CC8, &unk_1D9F452B8);
  if ((*(v9 + 48))(v33, 1, v32) == 1)
  {
    sub_1D9F1BF48(v27, type metadata accessor for DetectedEntity);
    sub_1D9E51FE8(v33, &qword_1ECB75CC8, &unk_1D9F452B8);
  }

  else
  {
    v34 = v40;
    sub_1D9F1BFA8(v33, v40, type metadata accessor for DateTimeSchedule);
    v35 = v42;
    sub_1D9F1BEE0(v34, v42, type metadata accessor for DateTimeSchedule);
    v36 = v41;
    sub_1D9F0D4CC(v41, v35);
    sub_1D9F1BF48(v36, type metadata accessor for DateTimeSchedule);
    sub_1D9F1BF48(v34, type metadata accessor for DateTimeSchedule);
    sub_1D9F1BF48(v27, type metadata accessor for DetectedEntity);
  }

  if (v45)
  {
    goto LABEL_10;
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return v58;
}

uint64_t sub_1D9F072E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1D9F1BFA8(v7, a2, type metadata accessor for DateTimeSchedule);
    v8 = 0;
  }

  else
  {
    sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v8 = 1;
  }

  v9 = type metadata accessor for DateTimeSchedule();
  return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
}

uint64_t VisualContext.flightNumbers(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  v31 = MEMORY[0x1E69E7CD0];
  v29 = type metadata accessor for VisualContext();
  v30 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v28, v27);
  v21[2] = sub_1D9F07784;
  v21[3] = 0;
  v21[4] = &v31;
  v22 = a1;
  sub_1D9EE14D0(v27, v24);
  v16 = v25;
  v17 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1D9F0FDE0(v23, *v12, v12[1], v12[2], v12[3], &qword_1ECB75D70, &qword_1D9F45598);

    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v18 = v25;
    v19 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_1D9EE12AC(sub_1D9F0D70C, v21, v18, v19);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v31;
}

uint64_t sub_1D9F07784@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 6)
  {
    v9 = *v7;
    v10 = v7[1];
    v11 = v7[2];
    v12 = v7[3];
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  return result;
}

uint64_t VisualContext.physicalValues(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21[-v5];
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-v13];
  v34 = MEMORY[0x1E69E7CD0];
  v32 = type metadata accessor for VisualContext();
  v33 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v31, v30);
  v22 = sub_1D9F07BC8;
  v23 = 0;
  v24 = &v34;
  v25 = a1;
  sub_1D9EE14D0(v30, v27);
  v16 = v28;
  v17 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1D9F0D76C(v26, *(v12 + 1), *(v12 + 2), *v12);

    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v18 = v28;
    v19 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    sub_1D9EE12AC(sub_1D9F0D748, v21, v18, v19);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v34;
}

uint64_t sub_1D9F07BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 7)
  {
    v9 = *v7;
    v10 = *(v7 + 2);
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v10 = 0;
    v9 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  return result;
}

uint64_t VisualContext.shipmentTrackingNumbers(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  v31 = MEMORY[0x1E69E7CD0];
  v29 = type metadata accessor for VisualContext();
  v30 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v28, v27);
  v21[2] = sub_1D9F08018;
  v21[3] = 0;
  v21[4] = &v31;
  v22 = a1;
  sub_1D9EE14D0(v27, v24);
  v16 = v25;
  v17 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1D9F0FDE0(v23, *v12, v12[1], v12[2], v12[3], &qword_1ECB75D60, &qword_1D9F45588);

    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v18 = v25;
    v19 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_1D9EE12AC(sub_1D9F0D910, v21, v18, v19);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v31;
}

uint64_t sub_1D9F08018@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 8)
  {
    v9 = *v7;
    v10 = v7[1];
    v11 = v7[2];
    v12 = v7[3];
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  return result;
}

uint64_t VisualContext.emailAddresses(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  v31 = MEMORY[0x1E69E7CD0];
  v29 = type metadata accessor for VisualContext();
  v30 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v28, v27);
  v21[2] = sub_1D9F08458;
  v21[3] = 0;
  v21[4] = &v31;
  v22 = a1;
  sub_1D9EE14D0(v27, v24);
  v16 = v25;
  v17 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1D9F0D970(v23, *v12, v12[1], v12[2], v12[3]);

    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v18 = v25;
    v19 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_1D9EE12AC(sub_1D9F0D94C, v21, v18, v19);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v31;
}

uint64_t sub_1D9F08458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 9)
  {
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = *(v7 + 1);
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v9 = 0;
    v10 = 0;
    v11 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  return result;
}

uint64_t VisualContext.phoneNumbers(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  v31 = MEMORY[0x1E69E7CD0];
  v29 = type metadata accessor for VisualContext();
  v30 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v28, v27);
  v21[2] = sub_1D9F08894;
  v21[3] = 0;
  v21[4] = &v31;
  v22 = a1;
  sub_1D9EE14D0(v27, v24);
  v16 = v25;
  v17 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_1D9F0D970(v23, *v12, v12[1], v12[2], v12[3]);

    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v18 = v25;
    v19 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_1D9EE12AC(sub_1D9F1C104, v21, v18, v19);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v31;
}

uint64_t sub_1D9F08894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 10)
  {
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = *(v7 + 1);
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v9 = 0;
    v10 = 0;
    v11 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  return result;
}

uint64_t VisualContext.postalAddresses(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v24 - v5;
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - v13;
  v34 = MEMORY[0x1E69E7CD0];
  v32 = type metadata accessor for VisualContext();
  v33 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v31, v30);
  v24[2] = sub_1D9F08CE8;
  v24[3] = 0;
  v24[4] = &v34;
  v25 = a1;
  sub_1D9EE14D0(v30, v27);
  v16 = v28;
  v17 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 11)
  {
    v18 = v12[3];
    v35[2] = v12[2];
    v35[3] = v18;
    v19 = v12[5];
    v35[4] = v12[4];
    v35[5] = v19;
    v20 = v12[1];
    v35[0] = *v12;
    v35[1] = v20;
    sub_1D9F0DBAC(v26, v35);
    sub_1D9E51FE8(v26, &qword_1ECB731D0, &qword_1D9F42160);
    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v21 = v28;
    v22 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    sub_1D9EE12AC(sub_1D9F0DB88, v24, v21, v22);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v34;
}

uint64_t sub_1D9F08CE8@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 11)
  {
    v9 = *v7;
    v10 = v7[1];
    v11 = v7[2];
    v12 = v7[3];
    v13 = v7[4];
    v14 = v7[5];
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v9 = xmmword_1D9F420A0;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v14;
  return result;
}

uint64_t VisualContext.socialProfiles(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v22 - v5;
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  v32 = MEMORY[0x1E69E7CD0];
  v30 = type metadata accessor for VisualContext();
  v31 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v29, v28);
  v22[2] = sub_1D9F09154;
  v22[3] = 0;
  v22[4] = &v32;
  v23 = a1;
  sub_1D9EE14D0(v28, v25);
  v16 = v26;
  v17 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v18 = v12[1];
    v33[0] = *v12;
    v33[1] = v18;
    v33[2] = v12[2];
    sub_1D9F0E0AC(v24, v33);

    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v19 = v26;
    v20 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_1D9EE12AC(sub_1D9F0E088, v22, v19, v20);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v32;
}

uint64_t sub_1D9F09154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 12)
  {
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = *(v7 + 2);
    v12 = *(v7 + 3);
    v13 = *(v7 + 2);
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  return result;
}

uint64_t VisualContext.calendarEvents(includesNested:)(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CD0, &qword_1D9F452C8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v40 - v8;
  v43 = type metadata accessor for CalendarEvent();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v43);
  v42 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v40 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v40 - v18;
  v20 = type metadata accessor for DetectedEntity();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v40 - v26;
  v58 = MEMORY[0x1E69E7CD0];
  v56 = type metadata accessor for VisualContext();
  v57 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v55);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v55, v54);
  v47 = sub_1D9F09834;
  v48 = 0;
  v49 = &v58;
  v45 = a1;
  v50 = a1;
  sub_1D9EE14D0(v54, v51);
  v29 = v52;
  v30 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(v30 + 24))(v29, v30);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1D9E51FE8(v19, &qword_1ECB75CC0, &qword_1D9F452A8);
LABEL_10:
    v37 = v52;
    v38 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    sub_1D9EE12AC(sub_1D9F0E348, v46, v37, v38);
    goto LABEL_11;
  }

  sub_1D9F1BFA8(v19, v27, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v27, v25, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_1D9F1BFA8(v25, v7, type metadata accessor for CalendarEvent);
    v31 = 0;
  }

  else
  {
    sub_1D9F1BF48(v25, type metadata accessor for DetectedEntity);
    v31 = 1;
  }

  v32 = v43;
  (*(v9 + 56))(v7, v31, 1, v43);
  v33 = v44;
  sub_1D9E68C38(v7, v44, &qword_1ECB75CD0, &qword_1D9F452C8);
  if ((*(v9 + 48))(v33, 1, v32) == 1)
  {
    sub_1D9F1BF48(v27, type metadata accessor for DetectedEntity);
    sub_1D9E51FE8(v33, &qword_1ECB75CD0, &qword_1D9F452C8);
  }

  else
  {
    v34 = v40;
    sub_1D9F1BFA8(v33, v40, type metadata accessor for CalendarEvent);
    v35 = v42;
    sub_1D9F1BEE0(v34, v42, type metadata accessor for CalendarEvent);
    v36 = v41;
    sub_1D9F0E36C(v41, v35);
    sub_1D9F1BF48(v36, type metadata accessor for CalendarEvent);
    sub_1D9F1BF48(v34, type metadata accessor for CalendarEvent);
    sub_1D9F1BF48(v27, type metadata accessor for DetectedEntity);
  }

  if (v45)
  {
    goto LABEL_10;
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return v58;
}

uint64_t sub_1D9F09834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_1D9F1BFA8(v7, a2, type metadata accessor for CalendarEvent);
    v8 = 0;
  }

  else
  {
    sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v8 = 1;
  }

  v9 = type metadata accessor for CalendarEvent();
  return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
}

uint64_t VisualContext.contacts(includesNested:)(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CD8, &qword_1D9F452D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v40 - v8;
  v43 = type metadata accessor for Contact(0);
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v43);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v40 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v40 - v18;
  v20 = type metadata accessor for DetectedEntity();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v40 - v26;
  v58 = MEMORY[0x1E69E7CD0];
  v56 = type metadata accessor for VisualContext();
  v57 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v55);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v55, v54);
  v47 = sub_1D9F09F50;
  v48 = 0;
  v49 = &v58;
  v45 = a1;
  v50 = a1;
  sub_1D9EE14D0(v54, v51);
  v29 = v52;
  v30 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(v30 + 24))(v29, v30);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1D9E51FE8(v19, &qword_1ECB75CC0, &qword_1D9F452A8);
LABEL_10:
    v37 = v52;
    v38 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    sub_1D9EE12AC(sub_1D9F0EC90, v46, v37, v38);
    goto LABEL_11;
  }

  sub_1D9F1BFA8(v19, v27, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v27, v25, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_1D9F1BFA8(v25, v7, type metadata accessor for Contact);
    v31 = 0;
  }

  else
  {
    sub_1D9F1BF48(v25, type metadata accessor for DetectedEntity);
    v31 = 1;
  }

  v32 = v43;
  (*(v9 + 56))(v7, v31, 1, v43);
  v33 = v44;
  sub_1D9E68C38(v7, v44, &qword_1ECB75CD8, &qword_1D9F452D0);
  if ((*(v9 + 48))(v33, 1, v32) == 1)
  {
    sub_1D9F1BF48(v27, type metadata accessor for DetectedEntity);
    sub_1D9E51FE8(v33, &qword_1ECB75CD8, &qword_1D9F452D0);
  }

  else
  {
    v34 = v40;
    sub_1D9F1BFA8(v33, v40, type metadata accessor for Contact);
    v35 = v42;
    sub_1D9F1BEE0(v34, v42, type metadata accessor for Contact);
    v36 = v41;
    sub_1D9F0ECB4(v41, v35);
    sub_1D9F1BF48(v36, type metadata accessor for Contact);
    sub_1D9F1BF48(v34, type metadata accessor for Contact);
    sub_1D9F1BF48(v27, type metadata accessor for DetectedEntity);
  }

  if (v45)
  {
    goto LABEL_10;
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return v58;
}

uint64_t sub_1D9F09F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_1D9F1BFA8(v7, a2, type metadata accessor for Contact);
    v8 = 0;
  }

  else
  {
    sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v8 = 1;
  }

  v9 = type metadata accessor for Contact(0);
  return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
}

uint64_t VisualContext.identifications(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v22 - v5;
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  v32 = MEMORY[0x1E69E7CD0];
  v30 = type metadata accessor for VisualContext();
  v31 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v29, v28);
  v22[2] = sub_1D9F0A3F8;
  v22[3] = 0;
  v22[4] = &v32;
  v23 = a1;
  sub_1D9EE14D0(v28, v25);
  v16 = v26;
  v17 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 15)
  {
    v18 = *(v12 + 1);
    v33[0] = *v12;
    v33[1] = v18;
    v33[2] = *(v12 + 2);
    v34 = *(v12 + 6);
    sub_1D9F0F938(&v24, v33);

    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v19 = v26;
    v20 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_1D9EE12AC(sub_1D9F0F914, v22, v19, v20);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v32;
}

uint64_t sub_1D9F0A3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 15)
  {
    v9 = *v7;
    v10 = *(v7 + 8);
    v11 = *(v7 + 24);
    v12 = *(v7 + 40);
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v9 = 0;
    v10 = xmmword_1D9F420A0;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 24) = v11;
  *(a2 + 40) = v12;
  return result;
}

uint64_t sub_1D9F0A4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 16)
  {
    v9 = *v7;
    v10 = *(v7 + 8);
    v11 = *(v7 + 3);
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v9 = 0;
    v11 = 0;
    v10 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 24) = v11;
  return result;
}

uint64_t VisualContext.parkingLocations(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  v31 = MEMORY[0x1E69E7CD0];
  v29 = type metadata accessor for VisualContext();
  v30 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v28, v27);
  v21[2] = sub_1D9F0A958;
  v21[3] = 0;
  v21[4] = &v31;
  v22 = a1;
  sub_1D9EE14D0(v27, v24);
  v16 = v25;
  v17 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_1D9F0FDE0(v23, *v12, v12[1], v12[2], v12[3], &qword_1ECB75D20, &qword_1D9F45538);

    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v18 = v25;
    v19 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_1D9EE12AC(sub_1D9F0FDA4, v21, v18, v19);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v31;
}

uint64_t sub_1D9F0A958@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 17)
  {
    v9 = *v7;
    v10 = v7[1];
    v11 = v7[2];
    v12 = v7[3];
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  return result;
}

uint64_t VisualContext.transactions(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v23 - v5;
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - v13;
  v33 = MEMORY[0x1E69E7CD0];
  v31 = type metadata accessor for VisualContext();
  v32 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v30, v29);
  v23[2] = sub_1D9F0ADA8;
  v23[3] = 0;
  v23[4] = &v33;
  v24 = a1;
  sub_1D9EE14D0(v29, v26);
  v16 = v27;
  v17 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 18)
  {
    v18 = *(v12 + 3);
    v34[2] = *(v12 + 2);
    v34[3] = v18;
    v34[4] = *(v12 + 4);
    v35 = v12[80];
    v19 = *(v12 + 1);
    v34[0] = *v12;
    v34[1] = v19;
    sub_1D9F0FFF0(v25, v34);
    sub_1D9E77278(v25);
    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v20 = v27;
    v21 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    sub_1D9EE12AC(sub_1D9F0FFCC, v23, v20, v21);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v33;
}

uint64_t sub_1D9F0ADA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 18)
  {
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = *(v7 + 2);
    v12 = *(v7 + 3);
    v13 = *(v7 + 4);
    v14 = v7[80];
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v14 = 0;
    v9 = xmmword_1D9F420A0;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  return result;
}

uint64_t VisualContext.books(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v24 - v5;
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - v13;
  v34 = MEMORY[0x1E69E7CD0];
  v32 = type metadata accessor for VisualContext();
  v33 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v31, v30);
  v24[2] = sub_1D9F0B214;
  v24[3] = 0;
  v24[4] = &v34;
  v25 = a1;
  sub_1D9EE14D0(v30, v27);
  v16 = v28;
  v17 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 19)
  {
    v18 = *(v12 + 5);
    v35[4] = *(v12 + 4);
    v35[5] = v18;
    v36 = *(v12 + 12);
    v19 = *(v12 + 1);
    v35[0] = *v12;
    v35[1] = v19;
    v20 = *(v12 + 3);
    v35[2] = *(v12 + 2);
    v35[3] = v20;
    sub_1D9F102B4(v26, v35);
    sub_1D9EE7F58(v26);
    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v21 = v28;
    v22 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    sub_1D9EE12AC(sub_1D9F10290, v24, v21, v22);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v34;
}

uint64_t sub_1D9F0B214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 19)
  {
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = *(v7 + 2);
    v12 = *(v7 + 3);
    v13 = *(v7 + 4);
    v14 = *(v7 + 5);
    v15 = *(v7 + 12);
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v15 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  *(a2 + 96) = v15;
  return result;
}

uint64_t VisualContext.albums(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v22 - v5;
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  v32 = MEMORY[0x1E69E7CD0];
  v30 = type metadata accessor for VisualContext();
  v31 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v29, v28);
  v22[2] = sub_1D9F0B688;
  v22[3] = 0;
  v22[4] = &v32;
  v23 = a1;
  sub_1D9EE14D0(v28, v25);
  v16 = v26;
  v17 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 20)
  {
    v18 = v12[1];
    v33[0] = *v12;
    v33[1] = v18;
    v33[2] = v12[2];
    sub_1D9F1065C(v24, v33);

    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v19 = v26;
    v20 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_1D9EE12AC(sub_1D9F10638, v22, v19, v20);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v32;
}

uint64_t sub_1D9F0B688@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 20)
  {
    v9 = *v7;
    v10 = v7[1];
    v11 = v7[2];
    v12 = v7[3];
    v13 = v7[4];
    v14 = v7[5];
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v14;
  return result;
}

uint64_t VisualContext.appCodes(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21[-v5];
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-v13];
  v34 = MEMORY[0x1E69E7CD0];
  v32 = type metadata accessor for VisualContext();
  v33 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v31, v30);
  v22 = sub_1D9F0BAD8;
  v23 = 0;
  v24 = &v34;
  v25 = a1;
  sub_1D9EE14D0(v30, v27);
  v16 = v28;
  v17 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 23)
  {
    sub_1D9F108B4(v26, *v12, v12[1]);

    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v18 = v28;
    v19 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    sub_1D9EE12AC(sub_1D9F10890, v21, v18, v19);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v34;
}

uint64_t sub_1D9F0BAD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 23)
  {
    v9 = *v7;
    v10 = v7[1];
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v9 = 0;
    v10 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t VisualContext.machineReadableCodes(includesNested:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CC0, &qword_1D9F452A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21[-v5];
  v7 = type metadata accessor for DetectedEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-v13];
  v34 = MEMORY[0x1E69E7CD0];
  v32 = type metadata accessor for VisualContext();
  v33 = &off_1EECD2778;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  sub_1D9F1BEE0(v1, boxed_opaque_existential_1, type metadata accessor for VisualContext);
  sub_1D9E3EE4C(&v31, v30);
  v22 = sub_1D9F0BF08;
  v23 = 0;
  v24 = &v34;
  v25 = a1;
  sub_1D9EE14D0(v30, v27);
  v16 = v28;
  v17 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v17 + 24))(v16, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D9E51FE8(v6, &qword_1ECB75CC0, &qword_1D9F452A8);
    goto LABEL_7;
  }

  sub_1D9F1BFA8(v6, v14, type metadata accessor for DetectedEntity);
  sub_1D9F1BEE0(v14, v12, type metadata accessor for DetectedEntity);
  if (swift_getEnumCaseMultiPayload() == 24)
  {
    sub_1D9F108B4(v26, *v12, v12[1]);

    sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1D9F1BF48(v12, type metadata accessor for DetectedEntity);
  sub_1D9F1BF48(v14, type metadata accessor for DetectedEntity);
  if (a1)
  {
LABEL_7:
    v18 = v28;
    v19 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    sub_1D9EE12AC(sub_1D9F1C11C, v21, v18, v19);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v34;
}

uint64_t sub_1D9F0BF08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DetectedEntity();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9F1BEE0(a1, v7, type metadata accessor for DetectedEntity);
  result = swift_getEnumCaseMultiPayload();
  if (result == 24)
  {
    v9 = *v7;
    v10 = v7[1];
  }

  else
  {
    result = sub_1D9F1BF48(v7, type metadata accessor for DetectedEntity);
    v9 = 0;
    v10 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  return result;
}

unint64_t sub_1D9F0BFE8()
{
  result = qword_1EE0F3420;
  if (!qword_1EE0F3420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3420);
  }

  return result;
}

uint64_t sub_1D9F0C03C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75CB0, &qword_1D9F45298);
    sub_1D9F1C010(a2, type metadata accessor for VisualClassification);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9F0C0D8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75CA8, &qword_1D9F45290);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D9F0C150(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB743F0, &unk_1D9F386B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB743F8, &unk_1D9F454E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D9F0C298(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74428, &qword_1D9F454F0);
  v10 = *(type metadata accessor for DetectedEntity() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DetectedEntity() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D9F0C470(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DA8, &qword_1D9F455E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9F0C590(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74440, &unk_1D9F38700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D9F0C694(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74438, &qword_1D9F455E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1D9F0C798(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D98, &qword_1D9F455C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DA0, &unk_1D9F455D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9F0C8CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D90, &qword_1D9F455C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9F0C9D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74400, &qword_1D9F386C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D9F0CAE4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CE8, &unk_1D9F454F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73288, &qword_1D9F334E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D9F0CC18(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v11 = a11 >> 5;
  if (v11 <= 3)
  {
    if (a11 >> 5 > 1u)
    {
      if (v11 == 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v11)
      {
LABEL_16:
      }
    }

    goto LABEL_15;
  }

  if (a11 >> 5 > 5u)
  {
    if (v11 != 6)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v11 == 4)
  {
LABEL_15:

    goto LABEL_16;
  }

  return sub_1D9E743C0(result, a2, a3, a4);
}

uint64_t sub_1D9F0CD2C(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v11 = a11 >> 5;
  if (v11 <= 3)
  {
    if (a11 >> 5 > 1u)
    {
      if (v11 == 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v11)
      {
LABEL_16:
      }
    }

    goto LABEL_15;
  }

  if (a11 >> 5 > 5u)
  {
    if (v11 != 6)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v11 == 4)
  {
LABEL_15:

    goto LABEL_16;
  }

  return sub_1D9E74440(result, a2, a3, a4);
}

uint64_t sub_1D9F0CE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1D9F0CEA4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = *(*v5 + 40);
  sub_1D9F2BAFC();
  List.hash(into:)();
  v9 = sub_1D9F2BB4C();
  v46 = v7;
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  v44 = v7 + 56;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_64:
    v33 = *v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *v40;

    sub_1D9F13D5C(a2, a3, a4, a5, v11, isUniquelyReferenced_nonNull_native);
    *v40 = v49;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = a5;
    return 1;
  }

  v43 = ~v10;
  v12 = 0xED00007473694C20;
  v13 = 0x676E6970706F6853;
  v39 = (a5 + 40);
  v45 = a5;
  while (1)
  {
    v14 = (*(v46 + 48) + 32 * v11);
    v15 = *v14;
    if (v15 <= 1)
    {
      if (*v14)
      {
        v16 = 0x6569646572676E49;
      }

      else
      {
        v16 = 0x676E6970706F6853;
      }

      if (*v14)
      {
        v17 = 0xEB0000000073746ELL;
      }

      else
      {
        v17 = v12;
      }
    }

    else if (v15 == 2)
    {
      v17 = 0xE500000000000000;
      v16 = 0x6F44206F54;
    }

    else
    {
      if (v15 == 3)
      {
        v16 = 1970169165;
      }

      else
      {
        v16 = 0x726568744FLL;
      }

      if (v15 == 3)
      {
        v17 = 0xE400000000000000;
      }

      else
      {
        v17 = 0xE500000000000000;
      }
    }

    v19 = *(v14 + 1);
    v18 = *(v14 + 2);
    v20 = *(v14 + 3);
    if (a2 == 3)
    {
      v21 = 1970169165;
    }

    else
    {
      v21 = 0x726568744FLL;
    }

    if (a2 == 3)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v21 = 0x6F44206F54;
      v22 = 0xE500000000000000;
    }

    if (a2)
    {
      v13 = 0x6569646572676E49;
    }

    v23 = v12;
    if (a2)
    {
      v12 = 0xEB0000000073746ELL;
    }

    v24 = a2 <= 1u ? v13 : v21;
    v25 = a2 <= 1u ? v12 : v22;
    if (v16 == v24 && v17 == v25)
    {
    }

    else
    {
      v27 = sub_1D9F2BA1C();

      if ((v27 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if (v18)
    {
      if (!a4 || (v19 != a3 || v18 != a4) && (result = sub_1D9F2BA1C(), (result & 1) == 0))
      {
LABEL_49:

        a5 = v45;
        goto LABEL_4;
      }
    }

    else if (a4)
    {
      goto LABEL_49;
    }

    v28 = *(v20 + 16);
    a5 = v45;
    if (v28 == *(v45 + 16))
    {
      break;
    }

LABEL_3:

LABEL_4:
    v11 = (v11 + 1) & v43;
    v12 = v23;
    v13 = 0x676E6970706F6853;
    if (((*(v44 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v28)
  {
    v29 = v20 == v45;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
LABEL_65:

    v35 = *(v46 + 48) + 32 * v11;
    v37 = *(v35 + 8);
    v36 = *(v35 + 16);
    v38 = *(v35 + 24);
    *a1 = *v35;
    *(a1 + 8) = v37;
    *(a1 + 16) = v36;
    *(a1 + 24) = v38;

    return 0;
  }

  else
  {
    v30 = (v20 + 40);
    v31 = v39;
    while (v28)
    {
      result = *(v30 - 1);
      if (result != *(v31 - 1) || *v30 != *v31)
      {
        result = sub_1D9F2BA1C();
        if ((result & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v30 += 2;
      v31 += 2;
      if (!--v28)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D9F0D300(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  v11 = 0.0;
  if (a4 != 0.0)
  {
    v11 = a4;
  }

  MEMORY[0x1DA743920](*&v11);
  v12 = sub_1D9F2BB4C();
  v13 = -1 << *(v9 + 32);
  v14 = v12 & ~v13;
  if ((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v9 + 48);
    while (1)
    {
      v17 = v16 + 24 * v14;
      v18 = *(v17 + 16);
      v19 = *v17 == a2 && *(v17 + 8) == a3;
      if (v19 || (sub_1D9F2BA1C()) && v18 == a4)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v23 = (*(v9 + 48) + 24 * v14);
    v24 = v23[1];
    v25 = v23[2];
    *a1 = *v23;
    a1[1] = v24;
    a1[2] = v25;

    return 0;
  }

  else
  {
LABEL_13:
    v20 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v4;

    sub_1D9F14174(a2, a3, v14, isUniquelyReferenced_nonNull_native, a4);
    *v4 = v26;
    *a1 = a2;
    a1[1] = a3;
    *(a1 + 2) = a4;
    return 1;
  }
}

uint64_t sub_1D9F0D4CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for DateTimeSchedule();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D9F2BAFC();
  DateTimeSchedule.hash(into:)();
  v12 = sub_1D9F2BB4C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1D9F1BEE0(*(v10 + 48) + v16 * v14, v9, type metadata accessor for DateTimeSchedule);
      v17 = _s29VisualActionPredictionSupport16DateTimeScheduleV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1D9F1BF48(v9, type metadata accessor for DateTimeSchedule);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D9F1BF48(a2, type metadata accessor for DateTimeSchedule);
    sub_1D9F1BEE0(*(v10 + 48) + v16 * v14, v22, type metadata accessor for DateTimeSchedule);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D9F1BEE0(a2, v9, type metadata accessor for DateTimeSchedule);
    v23 = *v3;
    sub_1D9F14338(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = v23;
    sub_1D9F1BFA8(a2, v20, type metadata accessor for DateTimeSchedule);
    return 1;
  }
}

uint64_t sub_1D9F0D76C(double *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_1D9F2BAFC();
  v11 = 0.0;
  if (a4 != 0.0)
  {
    v11 = a4;
  }

  MEMORY[0x1DA743920](*&v11);
  sub_1D9F2B18C();
  v12 = sub_1D9F2BB4C();
  v13 = -1 << *(v9 + 32);
  v14 = v12 & ~v13;
  if ((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v9 + 48);
    while (1)
    {
      v17 = v16 + 24 * v14;
      if (*v17 == a4)
      {
        v18 = *(v17 + 8) == a2 && *(v17 + 16) == a3;
        if (v18 || (sub_1D9F2BA1C() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v19 = (*(v9 + 48) + 24 * v14);
    v21 = *(v19 + 1);
    v20 = *(v19 + 2);
    *a1 = *v19;
    *(a1 + 1) = v21;
    *(a1 + 2) = v20;

    return 0;
  }

  else
  {
LABEL_13:
    v23 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v4;

    sub_1D9F1457C(a2, a3, v14, isUniquelyReferenced_nonNull_native, a4);
    *v4 = v25;
    *a1 = a4;
    *(a1 + 1) = a2;
    *(a1 + 2) = a3;
    return 1;
  }
}

uint64_t sub_1D9F0D970(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2BB1C();
  if (a5)
  {

    sub_1D9F2B18C();
  }

  v12 = sub_1D9F2BB4C();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_20:
    v23 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    sub_1D9F14924(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }

  v16 = ~v14;
  v30 = v10;
  v17 = *(v10 + 48);
  while (1)
  {
    v18 = (v17 + 32 * v15);
    v20 = v18[2];
    v19 = v18[3];
    v21 = *v18 == a2 && v18[1] == a3;
    if (!v21 && (sub_1D9F2BA1C() & 1) == 0)
    {
      goto LABEL_6;
    }

    if (v19)
    {
      break;
    }

    if (!a5)
    {
      goto LABEL_21;
    }

LABEL_6:
    v15 = (v15 + 1) & v16;
    if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (!a5)
  {
    goto LABEL_6;
  }

  v22 = v20 == a4 && v19 == a5;
  if (!v22 && (sub_1D9F2BA1C() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_21:

  v26 = (*(v30 + 48) + 32 * v15);
  v27 = v26[1];
  v29 = v26[2];
  v28 = v26[3];
  *a1 = *v26;
  a1[1] = v27;
  a1[2] = v29;
  a1[3] = v28;

  return 0;
}

uint64_t sub_1D9F0DBAC(__int128 *a1, __int128 *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1D9F2BAFC();
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  v11 = *(a2 + 6);
  v12 = *(a2 + 7);
  v13 = *(a2 + 8);
  v14 = *(a2 + 9);
  v91 = *(a2 + 1);
  v92 = *a2;
  *&v95 = *a2;
  *(&v95 + 1) = v91;
  v85 = v7;
  v86 = v10;
  *&v96 = v7;
  *(&v96 + 1) = v8;
  v93 = v8;
  v83 = v9;
  v84 = v12;
  *&v97 = v9;
  *(&v97 + 1) = v10;
  v77 = v13;
  v78 = v11;
  *&v98 = v11;
  *(&v98 + 1) = v12;
  *&v99 = v13;
  *(&v99 + 1) = v14;
  v82 = v14;
  PostalAddress.hash(into:)();
  v15 = *(a2 + 10);
  v16 = *(a2 + 11);
  v80 = a2;
  v81 = a1;
  v79 = v2;
  sub_1D9F2BB1C();
  if (v16)
  {

    sub_1D9F2B18C();
  }

  v17 = sub_1D9F2BB4C();
  v18 = v5 + 56;
  v19 = -1 << *(v5 + 32);
  v20 = v17 & ~v19;
  if ((*(v5 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v75 = v15;
    v76 = v16;
    v21 = ~v19;
    v74 = v5;
    v22 = *(v5 + 48);
    v23 = v91;
    v88 = ~v19;
    v89 = v5 + 56;
    v87 = v22;
    do
    {
      v24 = (v22 + 96 * v20);
      v25 = v24[1];
      v26 = v24[2];
      v28 = v24[3];
      v27 = v24[4];
      v30 = v24[5];
      v29 = v24[6];
      v32 = v24[7];
      v31 = v24[8];
      v34 = v24[9];
      v33 = v24[10];
      v35 = v24[11];
      if (v25)
      {
        if (!v23)
        {
          goto LABEL_6;
        }

        if (*v24 != v92 || v25 != v23)
        {
          v90 = v24[4];
          v37 = v24[7];
          v38 = v24[6];
          v39 = v24[9];
          v40 = v24[8];
          v41 = v24[11];
          v42 = v24[10];
          v43 = sub_1D9F2BA1C();
          v33 = v42;
          v35 = v41;
          v31 = v40;
          v34 = v39;
          v29 = v38;
          v32 = v37;
          v18 = v89;
          v27 = v90;
          v22 = v87;
          v21 = v88;
          v23 = v91;
          if ((v43 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v23)
      {
        goto LABEL_6;
      }

      if (v28)
      {
        if (!v93)
        {
          goto LABEL_6;
        }

        if (v26 != v85 || v28 != v93)
        {
          v45 = v35;
          v46 = v33;
          v47 = sub_1D9F2BA1C();
          v33 = v46;
          v35 = v45;
          v22 = v87;
          v21 = v88;
          v18 = v89;
          v23 = v91;
          if ((v47 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v93)
      {
        goto LABEL_6;
      }

      if (v30)
      {
        if (!v86)
        {
          goto LABEL_6;
        }

        if (v27 != v83 || v30 != v86)
        {
          v49 = v35;
          v50 = v33;
          v51 = sub_1D9F2BA1C();
          v33 = v50;
          v35 = v49;
          v22 = v87;
          v21 = v88;
          v18 = v89;
          v23 = v91;
          if ((v51 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v86)
      {
        goto LABEL_6;
      }

      if (v32)
      {
        if (!v84)
        {
          goto LABEL_6;
        }

        if (v29 != v78 || v32 != v84)
        {
          v53 = v35;
          v54 = v33;
          v55 = sub_1D9F2BA1C();
          v33 = v54;
          v35 = v53;
          v22 = v87;
          v21 = v88;
          v18 = v89;
          v23 = v91;
          if ((v55 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v84)
      {
        goto LABEL_6;
      }

      if (v34)
      {
        if (!v82)
        {
          goto LABEL_6;
        }

        if (v31 != v77 || v34 != v82)
        {
          v56 = v33;
          v57 = sub_1D9F2BA1C();
          v33 = v56;
          v22 = v87;
          v21 = v88;
          v18 = v89;
          v23 = v91;
          if ((v57 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v82)
      {
        goto LABEL_6;
      }

      if (v35)
      {
        if (v76)
        {
          if (v33 == v75 && v35 == v76 || (v58 = sub_1D9F2BA1C(), v22 = v87, v21 = v88, v18 = v89, v23 = v91, (v58 & 1) != 0))
          {
LABEL_55:
            sub_1D9E51FE8(v80, &qword_1ECB731D0, &qword_1D9F42160);
            v59 = (*(v74 + 48) + 96 * v20);
            v60 = v59[1];
            v95 = *v59;
            v96 = v60;
            v61 = v59[5];
            v63 = v59[2];
            v62 = v59[3];
            v99 = v59[4];
            v100 = v61;
            v97 = v63;
            v98 = v62;
            v64 = v59[1];
            *v81 = *v59;
            v81[1] = v64;
            v65 = v59[2];
            v66 = v59[3];
            v67 = v59[5];
            v81[4] = v59[4];
            v81[5] = v67;
            v81[2] = v65;
            v81[3] = v66;
            sub_1D9E51E70(&v95, v94, &qword_1ECB731D0, &qword_1D9F42160);
            return 0;
          }
        }
      }

      else if (!v76)
      {
        goto LABEL_55;
      }

LABEL_6:
      v20 = (v20 + 1) & v21;
    }

    while (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
  }

  v69 = *v79;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94[0] = *v79;
  sub_1D9E51E70(v80, &v95, &qword_1ECB731D0, &qword_1D9F42160);
  sub_1D9F14B44(v80, v20, isUniquelyReferenced_nonNull_native);
  *v79 = v94[0];
  v71 = v80[3];
  v81[2] = v80[2];
  v81[3] = v71;
  v72 = v80[5];
  v81[4] = v80[4];
  v81[5] = v72;
  v73 = v80[1];
  result = 1;
  *v81 = *v80;
  v81[1] = v73;
  return result;
}

uint64_t sub_1D9F0E0AC(void *a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1D9F2BAFC();
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  sub_1D9F2B18C();
  v41 = v9;
  v42 = v8;
  sub_1D9F2B18C();
  v10 = a2[4];
  v11 = a2[5];
  v37 = a2;
  sub_1D9F2BB1C();
  if (v11)
  {

    sub_1D9F2B18C();
  }

  v12 = sub_1D9F2BB4C();
  v13 = -1 << *(v4 + 32);
  v14 = v12 & ~v13;
  v40 = v4 + 56;
  if ((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v39 = v10;
    v15 = ~v13;
    v35 = v4;
    v16 = *(v4 + 48);
    do
    {
      v17 = (v16 + 48 * v14);
      v19 = v17[2];
      v18 = v17[3];
      v21 = v17[4];
      v20 = v17[5];
      v22 = *v17 == v6 && v17[1] == v7;
      if (v22 || (sub_1D9F2BA1C() & 1) != 0)
      {
        v23 = v19 == v42 && v18 == v41;
        if (v23 || (sub_1D9F2BA1C() & 1) != 0)
        {
          if (v20)
          {
            if (v11)
            {
              v24 = v21 == v39 && v20 == v11;
              if (v24 || (sub_1D9F2BA1C() & 1) != 0)
              {
LABEL_24:
                sub_1D9E51FE8(v37, &qword_1ECB756D8, &qword_1D9F42170);
                v25 = (*(v35 + 48) + 48 * v14);
                v26 = v25[1];
                v27 = v25[2];
                v28 = v25[3];
                v30 = v25[4];
                v29 = v25[5];
                *a1 = *v25;
                a1[1] = v26;
                a1[2] = v27;
                a1[3] = v28;
                a1[4] = v30;
                a1[5] = v29;

                return 0;
              }
            }
          }

          else if (!v11)
          {
            goto LABEL_24;
          }
        }
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v40 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  v32 = *v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v36;
  sub_1D9E51E70(v37, v44, &qword_1ECB756D8, &qword_1D9F42170);
  sub_1D9F14FC8(v37, v14, isUniquelyReferenced_nonNull_native);
  *v36 = v43;
  v34 = v37[1];
  *a1 = *v37;
  *(a1 + 1) = v34;
  *(a1 + 2) = v37[2];
  return 1;
}

uint64_t sub_1D9F0E36C(uint64_t a1, void *a2)
{
  v77 = a1;
  v4 = type metadata accessor for DateTimeSchedule();
  v88 = *(v4 - 8);
  v5 = *(v88 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v87 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v69 - v8;
  v9 = sub_1D9F2AC4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v69 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74430, &unk_1D9F386F0);
  v18 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v20 = &v69 - v19;
  v80 = type metadata accessor for CalendarEvent();
  v21 = *(v80 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v80);
  v25 = (&v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v73 = (&v69 - v26);
  v74 = v2;
  v27 = *v2;
  v28 = *(*v2 + 40);
  sub_1D9F2BAFC();
  CalendarEvent.hash(into:)();
  v29 = sub_1D9F2BB4C();
  v30 = v27 + 56;
  v89 = v27 + 56;
  v90 = v27;
  v31 = -1 << *(v27 + 32);
  v32 = v29 & ~v31;
  if ((*(v30 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
  {
    v81 = v20;
    v78 = v17;
    v71 = v13;
    v76 = v9;
    v93 = ~v31;
    v33 = a2[1];
    v92 = *a2;
    v75 = (v10 + 48);
    v70 = (v10 + 32);
    v72 = (v10 + 8);
    v94 = *(v21 + 72);
    v34 = a2;
    v36 = v89;
    v35 = v90;
    while (1)
    {
      v37 = v94 * v32;
      sub_1D9F1BEE0(*(v35 + 48) + v94 * v32, v25, type metadata accessor for CalendarEvent);
      v38 = v25[1];
      if (v38)
      {
        if (!v33)
        {
          goto LABEL_4;
        }

        v39 = *v25 == v92 && v38 == v33;
        if (!v39 && (sub_1D9F2BA1C() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v33)
      {
        goto LABEL_4;
      }

      v40 = v25[3];
      v41 = v34[3];
      if (v40)
      {
        if (!v41 || (v25[2] != v34[2] || v40 != v41) && (sub_1D9F2BA1C() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v41)
      {
        goto LABEL_4;
      }

      v42 = v25[5];
      v43 = v34[5];
      if (v42)
      {
        if (!v43 || (v25[4] != v34[4] || v42 != v43) && (sub_1D9F2BA1C() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v43)
      {
        goto LABEL_4;
      }

      v44 = *(v80 + 28);
      v45 = *(v79 + 48);
      v46 = v81;
      sub_1D9E51E70(v25 + v44, v81, &qword_1ECB73890, &qword_1D9F38430);
      sub_1D9E51E70(v34 + v44, v46 + v45, &qword_1ECB73890, &qword_1D9F38430);
      v47 = *v75;
      v48 = v76;
      if ((*v75)(v46, 1, v76) == 1)
      {
        v49 = v47(v46 + v45, 1, v48);
        v35 = v90;
        if (v49 != 1)
        {
          goto LABEL_31;
        }

        result = sub_1D9E51FE8(v46, &qword_1ECB73890, &qword_1D9F38430);
        v36 = v89;
      }

      else
      {
        sub_1D9E51E70(v46, v78, &qword_1ECB73890, &qword_1D9F38430);
        if (v47(v46 + v45, 1, v48) == 1)
        {
          (*v72)(v78, v48);
          v46 = v81;
          v35 = v90;
LABEL_31:
          sub_1D9E51FE8(v46, &qword_1ECB74430, &unk_1D9F386F0);
          v36 = v89;
          goto LABEL_4;
        }

        v51 = v71;
        (*v70)(v71, &v81[v45], v48);
        sub_1D9F1C010(&qword_1ECB731C0, MEMORY[0x1E6968FB0]);
        v52 = sub_1D9F2B10C();
        v53 = *v72;
        (*v72)(v51, v48);
        v53(v78, v48);
        result = sub_1D9E51FE8(v81, &qword_1ECB73890, &qword_1D9F38430);
        v36 = v89;
        v35 = v90;
        if ((v52 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v54 = *(v80 + 32);
      v55 = *(v25 + v54);
      v85 = *(v34 + v54);
      v86 = v55;
      v56 = *(v85 + 16);
      v84 = *(v55 + 16);
      if (v84 == v56)
      {
        if (!v84 || v86 == v85)
        {
LABEL_41:
          sub_1D9F1BF48(v25, type metadata accessor for CalendarEvent);
          sub_1D9F1BF48(v34, type metadata accessor for CalendarEvent);
          sub_1D9F1BEE0(*(v35 + 48) + v37, v77, type metadata accessor for CalendarEvent);
          return 0;
        }

        else
        {
          v57 = 0;
          v58 = (*(v88 + 80) + 32) & ~*(v88 + 80);
          v83 = v86 + v58;
          v82 = v85 + v58;
          while (v57 < *(v86 + 16))
          {
            v59 = *(v88 + 72) * v57;
            result = sub_1D9F1BEE0(v83 + v59, v91, type metadata accessor for DateTimeSchedule);
            if (v57 >= *(v85 + 16))
            {
              goto LABEL_46;
            }

            v60 = v91;
            v61 = v87;
            sub_1D9F1BEE0(v82 + v59, v87, type metadata accessor for DateTimeSchedule);
            v62 = _s29VisualActionPredictionSupport16DateTimeScheduleV2eeoiySbAC_ACtFZ_0(v60, v61);
            v63 = v61;
            v64 = v60;
            v35 = v90;
            sub_1D9F1BF48(v63, type metadata accessor for DateTimeSchedule);
            v36 = v89;
            result = sub_1D9F1BF48(v64, type metadata accessor for DateTimeSchedule);
            if ((v62 & 1) == 0)
            {
              goto LABEL_4;
            }

            if (v84 == ++v57)
            {
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_46:
          __break(1u);
        }

        return result;
      }

LABEL_4:
      sub_1D9F1BF48(v25, type metadata accessor for CalendarEvent);
      v32 = (v32 + 1) & v93;
      if (((*(v36 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  v34 = a2;
LABEL_43:
  v65 = v74;
  v66 = *v74;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v73;
  sub_1D9F1BEE0(v34, v73, type metadata accessor for CalendarEvent);
  v95 = *v65;
  sub_1D9F15240(v68, v32, isUniquelyReferenced_nonNull_native);
  *v65 = v95;
  sub_1D9F1BFA8(v34, v77, type metadata accessor for CalendarEvent);
  return 1;
}

uint64_t sub_1D9F0ECB4(uint64_t a1, uint64_t a2)
{
  v123 = a1;
  v4 = type metadata accessor for Contact.Identity.Person(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v126 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Contact.Identity(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v130 = (&v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v98 - v11;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75858, &qword_1D9F42FE8);
  v12 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135);
  v14 = &v98 - v13;
  v15 = type metadata accessor for Contact(0);
  v133 = *(v15 - 1);
  v16 = *(v133 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v121 = &v98 - v20;
  v122 = v2;
  v21 = *v2;
  v22 = *(*v2 + 40);
  sub_1D9F2BAFC();
  Contact.Identity.hash(into:)();
  v23 = *(a2 + v15[5]);
  sub_1D9E4F0BC(&v138, v23);
  v24 = *(a2 + v15[6]);
  sub_1D9E4F0BC(&v138, v24);
  v25 = *(a2 + v15[7]);
  sub_1D9E4EEB4(&v138, v25);
  v116 = *(a2 + v15[8]);
  sub_1D9E4EDA4(&v138, v116);
  v128 = v15;
  v26 = v15[9];
  v137 = a2;
  v27 = *(a2 + v26);
  sub_1D9E4EBD0(&v138, v27);
  v28 = sub_1D9F2BB4C();
  v136 = v21;
  v29 = -1 << *(v21 + 32);
  v30 = v28 & ~v29;
  v134 = v21 + 56;
  if (((*(v21 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
  {
LABEL_120:
    v93 = v122;
    v94 = *v122;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = v137;
    v97 = v121;
    sub_1D9F1BEE0(v137, v121, type metadata accessor for Contact);
    v138 = *v93;
    sub_1D9F15ACC(v97, v30, isUniquelyReferenced_nonNull_native);
    *v93 = v138;
    sub_1D9F1BFA8(v96, v123, type metadata accessor for Contact);
    return 1;
  }

  v107 = v27;
  v131 = ~v29;
  v133 = *(v133 + 72);
  v127 = v23;
  v119 = (v23 + 56);
  v124 = v24;
  v115 = (v24 + 56);
  v120 = v25;
  v108 = (v25 + 64);
  v132 = v7;
  while (1)
  {
    v31 = v133 * v30;
    sub_1D9F1BEE0(*(v136 + 48) + v133 * v30, v19, type metadata accessor for Contact);
    v32 = &v14[*(v135 + 48)];
    sub_1D9F1BEE0(v19, v14, type metadata accessor for Contact.Identity);
    sub_1D9F1BEE0(v137, v32, type metadata accessor for Contact.Identity);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v130;
      sub_1D9F1BEE0(v14, v130, type metadata accessor for Contact.Identity);
      v34 = *v33;
      v35 = v33[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = *(v32 + 1);
        if (v35)
        {
          if (!v36)
          {

LABEL_4:

LABEL_5:
            sub_1D9F1BF48(v14, type metadata accessor for Contact.Identity);
            goto LABEL_6;
          }

          if (v34 != *v32 || v35 != v36)
          {
            v38 = *(v32 + 1);
            v39 = sub_1D9F2BA1C();

            if ((v39 & 1) == 0)
            {
              goto LABEL_5;
            }

            goto LABEL_27;
          }
        }

        else
        {

          if (v36)
          {
            goto LABEL_4;
          }
        }

        goto LABEL_27;
      }

LABEL_20:
      sub_1D9E51FE8(v14, &qword_1ECB75858, &qword_1D9F42FE8);
      goto LABEL_6;
    }

    v40 = v129;
    sub_1D9F1BEE0(v14, v129, type metadata accessor for Contact.Identity);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D9F1BF48(v40, type metadata accessor for Contact.Identity.Person);
      goto LABEL_20;
    }

    v41 = v126;
    sub_1D9F1BFA8(v32, v126, type metadata accessor for Contact.Identity.Person);
    v42 = _s29VisualActionPredictionSupport7ContactV8IdentityO6PersonV2eeoiySbAG_AGtFZ_0(v40, v41);
    sub_1D9F1BF48(v41, type metadata accessor for Contact.Identity.Person);
    sub_1D9F1BF48(v40, type metadata accessor for Contact.Identity.Person);
    if ((v42 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_27:
    v125 = v31;
    result = sub_1D9F1BF48(v14, type metadata accessor for Contact.Identity);
    v44 = *&v19[v128[5]];
    v45 = *(v44 + 16);
    if (v45 != *(v127 + 16))
    {
      goto LABEL_6;
    }

    if (v45)
    {
      v46 = v44 == v127;
    }

    else
    {
      v46 = 1;
    }

    if (!v46)
    {
      v53 = (v44 + 56);
      v54 = v119;
      while (v45)
      {
        result = *(v53 - 3);
        v56 = *(v53 - 1);
        v55 = *v53;
        v57 = *(v54 - 1);
        v58 = *v54;
        if (result != *(v54 - 3) || *(v53 - 2) != *(v54 - 2))
        {
          result = sub_1D9F2BA1C();
          if ((result & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        if (v55)
        {
          if (!v58)
          {
            goto LABEL_6;
          }

          if (v56 != v57 || v55 != v58)
          {
            result = sub_1D9F2BA1C();
            if ((result & 1) == 0)
            {
              goto LABEL_6;
            }
          }
        }

        else if (v58)
        {
          goto LABEL_6;
        }

        v54 += 4;
        v53 += 4;
        if (!--v45)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_122:
      sub_1D9F1BF48(v19, type metadata accessor for Contact);
      sub_1D9F1BF48(v137, type metadata accessor for Contact);
      sub_1D9F1BEE0(*(v136 + 48) + v125, v123, type metadata accessor for Contact);
      return 0;
    }

LABEL_33:
    v47 = *&v19[v128[6]];
    v48 = *(v47 + 16);
    if (v48 != *(v124 + 16))
    {
      goto LABEL_6;
    }

    if (v48 && v47 != v124)
    {
      break;
    }

LABEL_39:
    v50 = *&v19[v128[7]];
    v51 = *(v50 + 16);
    if (v51 == *(v120 + 16))
    {
      if (v51)
      {
        v52 = v50 == v120;
      }

      else
      {
        v52 = 1;
      }

      if (!v52)
      {
        v67 = (v50 + 64);
        v68 = v108;
        while (v51)
        {
          v69 = *(v67 - 3);
          v70 = *(v67 - 2);
          v71 = *(v67 - 1);
          v72 = *v67;
          v73 = v67[1];
          v74 = v67[2];
          v75 = v67[3];
          v114 = v67[4];
          v76 = v67[5];
          v109 = v67[6];
          v117 = v67[7];
          v77 = *(v68 - 3);
          v78 = *(v68 - 2);
          v80 = *(v68 - 1);
          v79 = *v68;
          v82 = v68[1];
          v81 = v68[2];
          v83 = v68[3];
          v113 = v68[4];
          v84 = v68[5];
          v110 = v68[6];
          v118 = v68[7];
          if (v69)
          {
            if (!v77)
            {
              goto LABEL_6;
            }

            result = *(v67 - 4);
            if (result != *(v68 - 4) || v69 != v77)
            {
              v103 = v79;
              v112 = v76;
              v85 = v84;
              v106 = v75;
              v86 = v74;
              v111 = v83;
              v87 = v81;
              v105 = v73;
              v102 = v72;
              v104 = v82;
              v101 = v71;
              v100 = v70;
              v99 = v78;
              result = sub_1D9F2BA1C();
              v78 = v99;
              v70 = v100;
              v71 = v101;
              v79 = v103;
              v82 = v104;
              v72 = v102;
              v73 = v105;
              v81 = v87;
              v83 = v111;
              v74 = v86;
              v75 = v106;
              v84 = v85;
              v76 = v112;
              if ((result & 1) == 0)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v77)
          {
            goto LABEL_6;
          }

          if (v71)
          {
            if (!v80)
            {
              goto LABEL_6;
            }

            if (v70 != v78 || v71 != v80)
            {
              v103 = v79;
              v112 = v76;
              v106 = v75;
              v111 = v83;
              v88 = v81;
              v105 = v73;
              v89 = v72;
              v104 = v82;
              result = sub_1D9F2BA1C();
              v79 = v103;
              v82 = v104;
              v72 = v89;
              v73 = v105;
              v81 = v88;
              v83 = v111;
              v75 = v106;
              v76 = v112;
              if ((result & 1) == 0)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v80)
          {
            goto LABEL_6;
          }

          if (v73)
          {
            if (!v82)
            {
              goto LABEL_6;
            }

            if (v72 != v79 || v73 != v82)
            {
              v112 = v76;
              v90 = v75;
              v111 = v83;
              v91 = v81;
              result = sub_1D9F2BA1C();
              v81 = v91;
              v83 = v111;
              v75 = v90;
              v76 = v112;
              if ((result & 1) == 0)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v82)
          {
            goto LABEL_6;
          }

          if (v75)
          {
            if (!v83)
            {
              goto LABEL_6;
            }

            if (v74 != v81 || v75 != v83)
            {
              v92 = v76;
              result = sub_1D9F2BA1C();
              v76 = v92;
              if ((result & 1) == 0)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v83)
          {
            goto LABEL_6;
          }

          if (v76)
          {
            if (!v84)
            {
              goto LABEL_6;
            }

            if (v114 != v113 || v76 != v84)
            {
              result = sub_1D9F2BA1C();
              if ((result & 1) == 0)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v84)
          {
            goto LABEL_6;
          }

          if (v117)
          {
            if (!v118)
            {
              goto LABEL_6;
            }

            if (v109 != v110 || v117 != v118)
            {
              result = sub_1D9F2BA1C();
              if ((result & 1) == 0)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v118)
          {
            goto LABEL_6;
          }

          v67 += 12;
          v68 += 12;
          if (!--v51)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_124;
      }

LABEL_45:
      if (sub_1D9E4A370(*&v19[v128[8]], v116) & 1) != 0 && (sub_1D9E4A49C(*&v19[v128[9]], v107))
      {
        goto LABEL_122;
      }
    }

LABEL_6:
    sub_1D9F1BF48(v19, type metadata accessor for Contact);
    v30 = (v30 + 1) & v131;
    if (((*(v134 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
      goto LABEL_120;
    }
  }

  v60 = (v47 + 56);
  v61 = v115;
  while (v48)
  {
    result = *(v60 - 3);
    v63 = *(v60 - 1);
    v62 = *v60;
    v64 = *(v61 - 1);
    v65 = *v61;
    if (result != *(v61 - 3) || *(v60 - 2) != *(v61 - 2))
    {
      result = sub_1D9F2BA1C();
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v62)
    {
      if (!v65)
      {
        goto LABEL_6;
      }

      if (v63 != v64 || v62 != v65)
      {
        result = sub_1D9F2BA1C();
        if ((result & 1) == 0)
        {
          goto LABEL_6;
        }
      }
    }

    else if (v65)
    {
      goto LABEL_6;
    }

    v61 += 4;
    v60 += 4;
    if (!--v48)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
  return result;
}

uint64_t sub_1D9F0F938(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(a2 + 1);
  v49 = *a2;
  v50 = v6;
  v51 = *(a2 + 2);
  v52 = *(a2 + 6);
  sub_1D9F2BAFC();
  Identification.hash(into:)();
  v7 = sub_1D9F2BB4C();
  v46 = v4 + 56;
  v47 = v4;
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  v36 = a2;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_50:
    v27 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = *v35;
    sub_1D9F1BDDC(v36, v48);
    sub_1D9F166D8(v36, v9, isUniquelyReferenced_nonNull_native);
    *v35 = v49;
    v29 = *(v36 + 16);
    *a1 = *v36;
    *(a1 + 16) = v29;
    *(a1 + 32) = *(v36 + 32);
    *(a1 + 48) = *(v36 + 48);
    return 1;
  }

  v45 = ~v8;
  v10 = *a2;
  v43 = *(a2 + 2);
  v41 = *(a2 + 1);
  v42 = *(a2 + 4);
  v11 = *(a2 + 5);
  v38 = v11;
  v39 = *(a2 + 3);
  v40 = *(a2 + 6);
  v44 = v10;
  while (1)
  {
    v12 = *(v47 + 48) + 56 * v9;
    if (*v12)
    {
      if (*v12 == 1)
      {
        v13 = 0xE600000000000000;
        v14 = 0x72656B636F4CLL;
        if (!v10)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        v14 = 0x676E696B726150;
        if (!v10)
        {
LABEL_15:
          v16 = 0xE400000000000000;
          v15 = 1768319319;
          goto LABEL_16;
        }
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      v14 = 1768319319;
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    v15 = v10 == 1 ? 0x72656B636F4CLL : 0x676E696B726150;
    v16 = v10 == 1 ? 0xE600000000000000 : 0xE700000000000000;
LABEL_16:
    v18 = *(v12 + 8);
    v17 = *(v12 + 16);
    v20 = *(v12 + 24);
    v19 = *(v12 + 32);
    v22 = *(v12 + 40);
    v21 = *(v12 + 48);
    if (v14 == v15 && v13 == v16)
    {
      v23 = *(v12 + 48);
    }

    else
    {
      v24 = sub_1D9F2BA1C();

      if ((v24 & 1) == 0)
      {

        goto LABEL_45;
      }
    }

    if (v17)
    {
      if (!v43 || (v18 == v41 ? (v25 = v17 == v43) : (v25 = 0), !v25 && (sub_1D9F2BA1C() & 1) == 0))
      {
LABEL_43:

        goto LABEL_44;
      }
    }

    else if (v43)
    {
      goto LABEL_43;
    }

    if (v19)
    {
      if (!v42 || (v20 != v39 || v19 != v42) && (sub_1D9F2BA1C() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v42)
    {
      goto LABEL_43;
    }

    if (!v21)
    {

      if (!v40)
      {
        goto LABEL_52;
      }

LABEL_44:

LABEL_45:

      goto LABEL_46;
    }

    if (!v40)
    {
      goto LABEL_43;
    }

    if (v22 == v38 && v21 == v40)
    {
      break;
    }

    v26 = sub_1D9F2BA1C();

    if (v26)
    {
      goto LABEL_53;
    }

LABEL_46:
    v9 = (v9 + 1) & v45;
    v10 = v44;
    if (((*(v46 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_50;
    }
  }

LABEL_52:

LABEL_53:
  sub_1D9F1BE38(v36);
  v31 = *(v47 + 48) + 56 * v9;
  v32 = *(v31 + 8);
  v33 = *(v31 + 48);
  *a1 = *v31;
  *(a1 + 8) = v32;
  v34 = *(v31 + 32);
  *(a1 + 16) = *(v31 + 16);
  *(a1 + 32) = v34;
  *(a1 + 48) = v33;

  return 0;
}

uint64_t sub_1D9F0FDE0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v12 = *v7;
  v13 = *(*v7 + 40);
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  v14 = sub_1D9F2BB4C();
  v15 = v12 + 56;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v32 = v12;
    v19 = *(v12 + 48);
    while (1)
    {
      v20 = (v19 + 32 * v17);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == a2 && v20[1] == a3;
      if (v23 || (sub_1D9F2BA1C() & 1) != 0)
      {
        v24 = v21 == a4 && v22 == a5;
        if (v24 || (sub_1D9F2BA1C() & 1) != 0)
        {
          break;
        }
      }

      v17 = (v17 + 1) & v18;
      if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v25 = (*(v32 + 48) + 32 * v17);
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    *a1 = *v25;
    a1[1] = v26;
    a1[2] = v27;
    a1[3] = v28;

    return 0;
  }

  else
  {
LABEL_15:
    v30 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v35;

    sub_1D9F1473C(a2, a3, a4, a5, v17, isUniquelyReferenced_nonNull_native, a6, a7);
    *v35 = v37;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_1D9F0FFF0(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[3];
  v6 = a2[1];
  v51 = a2[2];
  v52 = v5;
  v7 = a2[3];
  v53 = a2[4];
  v8 = a2[1];
  v49 = *a2;
  v50 = v8;
  v9 = *v2;
  v10 = *(*v2 + 40);
  v57 = v51;
  v58 = v7;
  v59 = a2[4];
  v54 = *(a2 + 80);
  v60 = *(a2 + 80);
  v55 = v49;
  v56 = v6;
  sub_1D9F2BAFC();
  Transaction.hash(into:)(v47);
  v11 = sub_1D9F2BB4C();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = *(v9 + 48) + 88 * v13;
      v16 = *(v15 + 16);
      v47[0] = *v15;
      v47[1] = v16;
      v18 = *(v15 + 48);
      v17 = *(v15 + 64);
      v19 = *(v15 + 32);
      v48 = *(v15 + 80);
      v47[3] = v18;
      v47[4] = v17;
      v47[2] = v19;
      v41 = *v15;
      v42 = *(v15 + 16);
      v20 = *(v15 + 32);
      v21 = *(v15 + 48);
      v22 = *(v15 + 64);
      v46 = *(v15 + 80);
      v44 = v21;
      v45 = v22;
      v43 = v20;
      sub_1D9E77240(v47, v39);
      v23 = _s29VisualActionPredictionSupport11TransactionV2eeoiySbAC_ACtFZ_0(&v41, &v49);
      v57 = v43;
      v58 = v44;
      v59 = v45;
      v60 = v46;
      v55 = v41;
      v56 = v42;
      sub_1D9E77278(&v55);
      if (v23)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v39[3] = v52;
    v39[4] = v53;
    v40 = v54;
    v39[0] = v49;
    v39[1] = v50;
    v39[2] = v51;
    sub_1D9E77278(v39);
    v29 = *(v9 + 48) + 88 * v13;
    v30 = *(v29 + 32);
    v31 = *(v29 + 48);
    v32 = *(v29 + 64);
    v46 = *(v29 + 80);
    v44 = v31;
    v45 = v32;
    v33 = *(v29 + 16);
    v41 = *v29;
    v42 = v33;
    v43 = v30;
    v34 = *(v29 + 16);
    *a1 = *v29;
    *(a1 + 16) = v34;
    v35 = *(v29 + 32);
    v36 = *(v29 + 48);
    v37 = *(v29 + 64);
    *(a1 + 80) = *(v29 + 80);
    *(a1 + 48) = v36;
    *(a1 + 64) = v37;
    *(a1 + 32) = v35;
    sub_1D9E77240(&v41, v38);
    return 0;
  }

  else
  {
LABEL_5:
    v24 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v51;
    v58 = v52;
    v59 = v53;
    v60 = v54;
    v55 = v49;
    v56 = v50;
    *&v41 = *v3;
    sub_1D9E77240(&v55, v47);
    sub_1D9F16B34(&v55, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v41;
    v26 = v52;
    *(a1 + 32) = v51;
    *(a1 + 48) = v26;
    *(a1 + 64) = v53;
    *(a1 + 80) = v54;
    v27 = v50;
    result = 1;
    *a1 = v49;
    *(a1 + 16) = v27;
  }

  return result;
}

uint64_t sub_1D9F102B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);
  v59 = *v2;
  v5 = *(*v2 + 40);
  sub_1D9F2BAFC();
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  v14 = *(a2 + 64);
  v15 = *(a2 + 72);
  v57 = a2;
  v17 = *(a2 + 80);
  v16 = *(a2 + 88);
  v73 = v7;
  v74 = v6;
  sub_1D9F2B18C();
  v70 = v9;
  v71 = v8;
  sub_1D9F2B18C();
  v66 = v11;
  v67 = v10;
  sub_1D9F2B18C();
  v64 = v13;
  v65 = v12;
  sub_1D9F2B18C();
  v62 = v15;
  v63 = v14;
  sub_1D9F2B18C();
  v61 = v17;
  sub_1D9F2B18C();
  v18 = 0.0;
  if (v4 != 0.0)
  {
    v18 = v4;
  }

  MEMORY[0x1DA743920](*&v18);
  v19 = sub_1D9F2BB4C();
  v20 = -1 << *(v59 + 32);
  v21 = v19 & ~v20;
  if ((*(v59 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v60 = v16;
    v68 = ~v20;
    v69 = *(v59 + 48);
    while (1)
    {
      v22 = v69 + 104 * v21;
      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      v26 = *(v22 + 32);
      v25 = *(v22 + 40);
      v27 = *(v22 + 48);
      v28 = *(v22 + 56);
      v29 = *(v22 + 64);
      v30 = *(v22 + 72);
      v31 = *(v22 + 80);
      v72 = *(v22 + 88);
      v32 = *(v22 + 96);
      v33 = *v22 == v74 && *(v22 + 8) == v73;
      if (v33 || (sub_1D9F2BA1C() & 1) != 0)
      {
        v34 = v24 == v71 && v23 == v70;
        if (v34 || (sub_1D9F2BA1C() & 1) != 0)
        {
          v35 = v26 == v67 && v25 == v66;
          if (v35 || (sub_1D9F2BA1C() & 1) != 0)
          {
            v36 = v27 == v65 && v28 == v64;
            if (v36 || (sub_1D9F2BA1C() & 1) != 0)
            {
              v37 = v29 == v63 && v30 == v62;
              if (v37 || (sub_1D9F2BA1C() & 1) != 0)
              {
                v38 = v31 == v61 && v72 == v60;
                if (v38 || (sub_1D9F2BA1C()) && v32 == v4)
                {
                  break;
                }
              }
            }
          }
        }
      }

      v21 = (v21 + 1) & v68;
      if (((*(v59 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    sub_1D9EE7F58(v57);
    v45 = *(v59 + 48) + 104 * v21;
    v46 = *(v45 + 48);
    v47 = *(v45 + 64);
    v48 = *(v45 + 80);
    v77 = *(v45 + 96);
    v76[4] = v47;
    v76[5] = v48;
    v76[3] = v46;
    v49 = *v45;
    v50 = *(v45 + 16);
    v76[2] = *(v45 + 32);
    v76[0] = v49;
    v76[1] = v50;
    v51 = *(v45 + 16);
    *a1 = *v45;
    *(a1 + 16) = v51;
    v52 = *(v45 + 32);
    v53 = *(v45 + 48);
    v54 = *(v45 + 64);
    v55 = *(v45 + 80);
    *(a1 + 96) = *(v45 + 96);
    *(a1 + 64) = v54;
    *(a1 + 80) = v55;
    *(a1 + 32) = v52;
    *(a1 + 48) = v53;
    sub_1D9E51C04(v76, v75);
    return 0;
  }

  else
  {
LABEL_38:
    v39 = *v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = *v56;
    sub_1D9E51C04(v57, v76);
    sub_1D9F16D74(v57, v21, isUniquelyReferenced_nonNull_native);
    *v56 = v75[0];
    v41 = *(v57 + 80);
    *(a1 + 64) = *(v57 + 64);
    *(a1 + 80) = v41;
    *(a1 + 96) = *(v57 + 96);
    v42 = *(v57 + 16);
    *a1 = *v57;
    *(a1 + 16) = v42;
    v43 = *(v57 + 48);
    result = 1;
    *(a1 + 32) = *(v57 + 32);
    *(a1 + 48) = v43;
  }

  return result;
}

uint64_t sub_1D9F1065C(void *a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1D9F2BAFC();
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v38 = a2;
  v11 = a2[4];
  v10 = a2[5];
  sub_1D9F2B18C();
  v42 = v9;
  v43 = v8;
  sub_1D9F2B18C();
  v40 = v10;
  v41 = v11;
  sub_1D9F2B18C();
  v12 = sub_1D9F2BB4C();
  v13 = v4 + 56;
  v14 = -1 << *(v4 + 32);
  v15 = v12 & ~v14;
  if ((*(v4 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v36 = v4;
    v17 = *(v4 + 48);
    while (1)
    {
      v18 = (v17 + 48 * v15);
      v19 = v18[2];
      v20 = v18[3];
      v22 = v18[4];
      v21 = v18[5];
      v23 = *v18 == v6 && v18[1] == v7;
      if (v23 || (sub_1D9F2BA1C() & 1) != 0)
      {
        v24 = v19 == v43 && v20 == v42;
        if (v24 || (sub_1D9F2BA1C() & 1) != 0)
        {
          v25 = v22 == v41 && v21 == v40;
          if (v25 || (sub_1D9F2BA1C() & 1) != 0)
          {
            break;
          }
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    sub_1D9F1BD88(v38);
    v26 = (*(v36 + 48) + 48 * v15);
    v27 = v26[1];
    v28 = v26[2];
    v29 = v26[3];
    v30 = v26[4];
    v31 = v26[5];
    *a1 = *v26;
    a1[1] = v27;
    a1[2] = v28;
    a1[3] = v29;
    a1[4] = v30;
    a1[5] = v31;

    return 0;
  }

  else
  {
LABEL_20:
    v33 = *v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *v37;
    sub_1D9F1BD2C(v38, v45);
    sub_1D9F170C0(v38, v15, isUniquelyReferenced_nonNull_native);
    *v37 = v44;
    v35 = v38[1];
    *a1 = *v38;
    *(a1 + 1) = v35;
    *(a1 + 2) = v38[2];
    return 1;
  }
}

uint64_t sub_1D9F108B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  v9 = sub_1D9F2BB4C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1D9F2BA1C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1D9F172E8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_1D9F10A74()
{
  sub_1D9F2AD7C();
  if (v0 <= 0x3F)
  {
    sub_1D9F10BE0(319, &qword_1EE0F3848, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D9F10B90();
      if (v2 <= 0x3F)
      {
        sub_1D9F10BE0(319, &qword_1EE0F2340, type metadata accessor for VisualClassification, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D9F10B90()
{
  if (!qword_1EE0F2350)
  {
    v0 = sub_1D9F2B2BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0F2350);
    }
  }
}

void sub_1D9F10BE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D9F10C58()
{
  result = qword_1ECB75CE0;
  if (!qword_1ECB75CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75CE0);
  }

  return result;
}

unint64_t sub_1D9F10CB0()
{
  result = qword_1EE0F3410;
  if (!qword_1EE0F3410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3410);
  }

  return result;
}

unint64_t sub_1D9F10D08()
{
  result = qword_1EE0F3418;
  if (!qword_1EE0F3418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3418);
  }

  return result;
}

uint64_t sub_1D9F10D5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D88, &unk_1D9F455B0);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
    v39 = v2;
    v40 = v3;
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
    v41 = result;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v42 = (v11 - 1) & v11;
LABEL_17:
      v21 = *(v3 + 48) + 32 * (v18 | (v7 << 6));
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(v6 + 40);
      sub_1D9F2BAFC();
      sub_1D9F2B18C();

      v43 = v24;
      v44 = v23;
      sub_1D9F2BB1C();
      if (v24)
      {
        sub_1D9F2B18C();
      }

      MEMORY[0x1DA7438F0](*(v25 + 16));
      v27 = *(v25 + 16);
      if (v27)
      {
        v28 = (v25 + 40);
        do
        {
          v29 = *(v28 - 1);
          v30 = *v28;

          sub_1D9F2B18C();

          v28 += 2;
          --v27;
        }

        while (v27);
      }

      result = sub_1D9F2BB4C();
      v6 = v41;
      v31 = -1 << *(v41 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v13 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v16 = v43;
        v15 = v44;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v13 + 8 * v33);
          if (v37 != -1)
          {
            v14 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v32) & ~*(v13 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v16 = v43;
      v15 = v44;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v17 = *(v41 + 48) + 32 * v14;
      *v17 = v22;
      *(v17 + 8) = v15;
      *(v17 + 16) = v16;
      *(v17 + 24) = v25;
      ++*(v41 + 16);
      v3 = v40;
      v11 = v42;
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v38 = 1 << *(v3 + 32);
    if (v38 >= 64)
    {
      bzero(v8, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v38;
    }

    v2 = v39;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D9F110FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D80, &qword_1D9F455A8);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      if (v22 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v22;
      }

      MEMORY[0x1DA743920](*&v24);
      result = sub_1D9F2BB4C();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero((v3 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D9F1138C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DateTimeSchedule();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D78, &qword_1D9F455A0);
  result = sub_1D9F2B66C();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v35 + 72);
      sub_1D9F1BFA8(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for DateTimeSchedule);
      v24 = *(v11 + 40);
      sub_1D9F2BAFC();
      DateTimeSchedule.hash(into:)();
      result = sub_1D9F2BB4C();
      v25 = -1 << *(v11 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D9F1BFA8(v7, *(v11 + 48) + v19 * v23, type metadata accessor for DateTimeSchedule);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1D9F11694(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D68, &qword_1D9F45590);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1D9F2BAFC();
      if (v20 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v20;
      }

      MEMORY[0x1DA743920](*&v24);
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero((v3 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D9F11924(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D58, &qword_1D9F45580);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_1D9F2BAFC();
      v36 = v21;
      sub_1D9F2B18C();
      if (v23)
      {
        sub_1D9F2BB1C();

        v25 = v22;
        sub_1D9F2B18C();
      }

      else
      {
        v25 = v22;
        sub_1D9F2BB1C();
      }

      result = sub_1D9F2BB4C();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v36;
      v15[2] = v25;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v35;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D9F11BE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D48, &qword_1D9F45568);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v38 = v2;
    v39 = (v9 + 63) >> 6;
    v12 = result + 56;
    v40 = v3;
    v41 = result;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v42 = (v11 - 1) & v11;
LABEL_17:
      v22 = (*(v3 + 48) + 96 * (v19 | (v7 << 6)));
      v24 = *v22;
      v23 = v22[1];
      v26 = v22[2];
      v25 = v22[3];
      v28 = v22[4];
      v27 = v22[5];
      v44 = v22[8];
      v45 = v22[6];
      v47 = v22[9];
      v48 = v22[7];
      v43 = v22[10];
      v46 = v22[11];
      v29 = *(v6 + 40);
      sub_1D9F2BAFC();
      sub_1D9F2BB1C();
      if (v23)
      {
        sub_1D9F2B18C();
      }

      sub_1D9F2BB1C();
      if (v25)
      {
        sub_1D9F2B18C();
      }

      sub_1D9F2BB1C();
      if (v27)
      {
        sub_1D9F2B18C();
      }

      sub_1D9F2BB1C();
      if (v48)
      {
        sub_1D9F2B18C();
      }

      sub_1D9F2BB1C();
      if (v47)
      {
        sub_1D9F2B18C();
      }

      sub_1D9F2BB1C();
      if (v46)
      {

        sub_1D9F2B18C();
      }

      result = sub_1D9F2BB4C();
      v6 = v41;
      v30 = -1 << *(v41 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v12 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v14 = v24;
        v15 = v46;
        v17 = v47;
        v16 = v48;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v12 + 8 * v32);
          if (v36 != -1)
          {
            v13 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v31) & ~*(v12 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v14 = v24;
      v15 = v46;
      v17 = v47;
      v16 = v48;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v18 = (*(v41 + 48) + 96 * v13);
      *v18 = v14;
      v18[1] = v23;
      v11 = v42;
      v18[2] = v26;
      v18[3] = v25;
      v18[4] = v28;
      v18[5] = v27;
      v18[6] = v45;
      v18[7] = v16;
      v18[8] = v44;
      v18[9] = v17;
      v18[10] = v43;
      v18[11] = v15;
      ++*(v41 + 16);
      v3 = v40;
    }

    v20 = v7;
    while (1)
    {
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v7 >= v39)
      {
        break;
      }

      v21 = v8[v7];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v37 = 1 << *(v3 + 32);
    if (v37 >= 64)
    {
      bzero(v8, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v37;
    }

    v2 = v38;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D9F11FF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D40, &qword_1D9F45560);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v1;
    v38 = v3;
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
    v39 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v40 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 48 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = v19[4];
      v25 = v19[5];
      v26 = *(v6 + 40);
      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2BB1C();
      if (v25)
      {

        sub_1D9F2B18C();
      }

      result = sub_1D9F2BB4C();
      v6 = v39;
      v27 = -1 << *(v39 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v39 + 48) + 48 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      v15[4] = v24;
      v15[5] = v25;
      ++*(v39 + 16);
      v3 = v38;
      v11 = v40;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      v35 = v6;
      bzero(v8, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v6 = v35;
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v37;
    *(v3 + 16) = 0;
  }

  v36 = v6;

  *v2 = v36;
  return result;
}

uint64_t sub_1D9F122E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CalendarEvent();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D38, &unk_1D9F45550);
  result = sub_1D9F2B66C();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v35 + 72);
      sub_1D9F1BFA8(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for CalendarEvent);
      v24 = *(v11 + 40);
      sub_1D9F2BAFC();
      CalendarEvent.hash(into:)();
      result = sub_1D9F2BB4C();
      v25 = -1 << *(v11 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D9F1BFA8(v7, *(v11 + 48) + v19 * v23, type metadata accessor for CalendarEvent);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

void *sub_1D9F125EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731B8, &unk_1D9F2F580);
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v60 - v5;
  v7 = type metadata accessor for Contact(0);
  v70 = *(v7 - 1);
  v8 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v1;
  v11 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v12 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D30, &qword_1D9F45548);
  v13 = sub_1D9F2B66C();
  v14 = v13;
  if (*(v11 + 16))
  {
    v15 = 0;
    v16 = *(v11 + 56);
    v61 = (v11 + 56);
    v17 = 1 << *(v11 + 32);
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
    v65 = v13 + 56;
    v66 = v20;
    v68 = v7;
    v69 = v11;
    v67 = v13;
    v73 = v10;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v72 = (v19 - 1) & v19;
LABEL_16:
      v28 = *(v11 + 48);
      v71 = *(v70 + 72);
      sub_1D9F1BFA8(v28 + v71 * (v24 | (v15 << 6)), v10, type metadata accessor for Contact);
      v29 = v14[5];
      sub_1D9F2BAFC();
      Contact.Identity.hash(into:)();
      v30 = *&v10[v7[5]];
      MEMORY[0x1DA7438F0](*(v30 + 16));
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = (v30 + 56);
        do
        {
          v33 = *(v32 - 3);
          v34 = *(v32 - 2);
          v35 = *(v32 - 1);
          v36 = *v32;

          sub_1D9F2B18C();
          sub_1D9F2BB1C();
          if (v36)
          {

            sub_1D9F2B18C();

            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          v32 += 4;
          --v31;
        }

        while (v31);
      }

      v37 = *&v10[v7[6]];
      MEMORY[0x1DA7438F0](*(v37 + 16));
      v38 = *(v37 + 16);
      if (v38)
      {
        v39 = (v37 + 56);
        do
        {
          v40 = *(v39 - 3);
          v41 = *(v39 - 2);
          v42 = *(v39 - 1);
          v43 = *v39;

          sub_1D9F2B18C();
          sub_1D9F2BB1C();
          if (v43)
          {

            sub_1D9F2B18C();

            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          v39 += 4;
          --v38;
        }

        while (v38);
      }

      sub_1D9E4EEB4(v74, *&v10[v7[7]]);
      v44 = *&v10[v7[8]];
      MEMORY[0x1DA7438F0](*(v44 + 16));
      v45 = *(v44 + 16);
      if (v45)
      {
        v46 = (v44 + 72);
        do
        {
          v47 = *(v46 - 5);
          v48 = *(v46 - 4);
          v50 = *(v46 - 3);
          v49 = *(v46 - 2);
          v51 = *(v46 - 1);
          v52 = *v46;

          sub_1D9F2B18C();
          sub_1D9F2B18C();
          sub_1D9F2BB1C();
          if (v52)
          {

            sub_1D9F2B18C();

            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          v46 += 6;
          --v45;
        }

        while (v45);
      }

      v7 = v68;
      v53 = *&v73[v68[9]];
      MEMORY[0x1DA7438F0](*(v53 + 16));
      v54 = *(v53 + 16);
      if (v54)
      {
        v55 = &v6[*(v64 + 28)];
        v56 = v53 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
        v57 = *(v63 + 72);
        do
        {
          sub_1D9E51E70(v56, v6, &qword_1ECB731B8, &unk_1D9F2F580);
          sub_1D9F2AC4C();
          sub_1D9F1C010(&qword_1ECB731C8, MEMORY[0x1E6968FB0]);
          sub_1D9F2B0EC();
          if (*(v55 + 1))
          {
            v58 = *v55;
            sub_1D9F2BB1C();
            sub_1D9F2B18C();
          }

          else
          {
            sub_1D9F2BB1C();
          }

          sub_1D9E51FE8(v6, &qword_1ECB731B8, &unk_1D9F2F580);
          v56 += v57;
          --v54;
        }

        while (v54);
      }

      sub_1D9F2BB4C();
      v14 = v67;
      v21 = -1 << *(v67 + 32);
      v22 = v65;
      v23 = sub_1D9F2B62C();
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v10 = v73;
      sub_1D9F1BFA8(v73, v14[6] + v23 * v71, type metadata accessor for Contact);
      ++v14[2];
      v11 = v69;
      v20 = v66;
      v19 = v72;
    }

    v25 = v15;
    result = v61;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        return result;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v61[v15];
      ++v25;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v72 = (v27 - 1) & v27;
        goto LABEL_16;
      }
    }

    v59 = 1 << *(v11 + 32);
    if (v59 >= 64)
    {
      bzero(v61, ((v59 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v61 = -1 << v59;
    }

    *(v11 + 16) = 0;
  }

  *v62 = v14;
  return result;
}

uint64_t sub_1D9F12CA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D28, &qword_1D9F45540);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
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
    v36 = result;
    while (1)
    {
      if (!v11)
      {
        v18 = v7;
        while (1)
        {
          v7 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v7 >= v12)
          {
            break;
          }

          v19 = v8[v7];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v37 = (v19 - 1) & v19;
            goto LABEL_17;
          }
        }

        v33 = 1 << *(v3 + 32);
        if (v33 >= 64)
        {
          bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v33;
        }

        v2 = v34;
        *(v3 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v11));
      v37 = (v11 - 1) & v11;
LABEL_17:
      v20 = *(v3 + 48) + 56 * (v17 | (v7 << 6));
      v21 = *v20;
      v22 = *(v20 + 16);
      v39 = *(v20 + 24);
      v40 = *(v20 + 8);
      v41 = *(v20 + 32);
      v23 = *(v20 + 48);
      v38 = *(v20 + 40);
      v24 = *(v6 + 40);
      sub_1D9F2BAFC();
      sub_1D9F2B18C();

      if (v22)
      {
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        if (v41)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_1D9F2BB1C();
        if (v41)
        {
LABEL_19:
          v25 = v22;
          sub_1D9F2BB1C();
          sub_1D9F2B18C();
          if (v23)
          {
            goto LABEL_20;
          }

          goto LABEL_23;
        }
      }

      v25 = v22;
      sub_1D9F2BB1C();
      if (v23)
      {
LABEL_20:
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        goto LABEL_24;
      }

LABEL_23:
      sub_1D9F2BB1C();
LABEL_24:
      result = sub_1D9F2BB4C();
      v6 = v36;
      v26 = -1 << *(v36 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v15 = v41;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v15 = v41;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v16 = *(v36 + 48) + 56 * v14;
      *v16 = v21;
      *(v16 + 8) = v40;
      *(v16 + 16) = v25;
      *(v16 + 24) = v39;
      *(v16 + 32) = v15;
      v11 = v37;
      *(v16 + 40) = v38;
      *(v16 + 48) = v23;
      ++*(v36 + 16);
      v3 = v35;
    }
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D9F13034(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D9F2B66C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v4;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = (*(v5 + 48) + 32 * (v18 | (v9 << 6)));
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      v25 = v21[3];
      v26 = *(v8 + 40);
      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v22;
      v17[1] = v23;
      v17[2] = v24;
      v17[3] = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v5 + 32);
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    v4 = v35;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_1D9F132B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D10, &qword_1D9F45528);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
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
    for (i = (v9 + 63) >> 6; v11; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v16 = *(v3 + 48) + 88 * (v13 | (v7 << 6));
      v17 = *(v16 + 48);
      v18 = *(v16 + 16);
      v36 = *(v16 + 32);
      v37 = v17;
      v19 = *(v16 + 48);
      v38 = *(v16 + 64);
      v20 = *(v16 + 16);
      v34 = *v16;
      v35 = v20;
      v30 = v36;
      v31 = v19;
      v32 = *(v16 + 64);
      v39 = *(v16 + 80);
      v21 = *(v6 + 40);
      v33 = *(v16 + 80);
      v28 = v34;
      v29 = v18;
      sub_1D9F2BAFC();
      Transaction.hash(into:)(v27);
      sub_1D9F2BB4C();
      v22 = -1 << *(v6 + 32);
      result = sub_1D9F2B62C();
      *(v6 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v23 = *(v6 + 48) + 88 * result;
      v24 = v37;
      *(v23 + 32) = v36;
      *(v23 + 48) = v24;
      *(v23 + 64) = v38;
      *(v23 + 80) = v39;
      v25 = v35;
      *v23 = v34;
      *(v23 + 16) = v25;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D9F134FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D00, &qword_1D9F45518);
  v5 = sub_1D9F2B66C();
  v6 = v5;
  if (*(v3 + 16))
  {
    v7 = 0;
    v42 = (v3 + 56);
    v43 = v3;
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
    v40 = v1;
    v41 = (v8 + 63) >> 6;
    v11 = v5 + 56;
    v44 = v5;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v45 = (v10 - 1) & v10;
LABEL_17:
      v18 = *(v3 + 48) + 104 * (v14 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v46 = *(v18 + 16);
      v47 = *(v18 + 24);
      v22 = *(v18 + 32);
      v21 = *(v18 + 40);
      v24 = *(v18 + 48);
      v23 = *(v18 + 56);
      v25 = *(v18 + 64);
      v26 = *(v18 + 72);
      v48 = *(v18 + 80);
      v49 = *(v18 + 88);
      v27 = *(v18 + 96);
      v28 = *(v6 + 40);
      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      if (v27 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v27;
      }

      MEMORY[0x1DA743920](*&v29);
      result = sub_1D9F2BB4C();
      v6 = v44;
      v30 = -1 << *(v44 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v11 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v11 + 8 * v32);
          if (v36 != -1)
          {
            v12 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v31) & ~*(v11 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v44 + 48) + 104 * v12;
      *v13 = v19;
      *(v13 + 8) = v20;
      *(v13 + 16) = v46;
      *(v13 + 24) = v47;
      *(v13 + 32) = v22;
      *(v13 + 40) = v21;
      *(v13 + 48) = v24;
      *(v13 + 56) = v23;
      *(v13 + 64) = v25;
      *(v13 + 72) = v26;
      *(v13 + 80) = v48;
      *(v13 + 88) = v49;
      *(v13 + 96) = v27;
      ++*(v44 + 16);
      v3 = v43;
      v10 = v45;
    }

    v15 = v7;
    result = v42;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v41)
      {
        break;
      }

      v17 = v42[v7];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v45 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v37 = 1 << *(v3 + 32);
    if (v37 >= 64)
    {
      v38 = v6;
      bzero(v42, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v6 = v38;
    }

    else
    {
      *v42 = -1 << v37;
    }

    v2 = v40;
    *(v3 + 16) = 0;
  }

  v39 = v6;

  *v2 = v39;
  return result;
}

uint64_t sub_1D9F13850(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CF8, &qword_1D9F45510);
  v5 = sub_1D9F2B66C();
  v6 = v5;
  if (*(v3 + 16))
  {
    v35 = v1;
    v7 = 0;
    v36 = (v3 + 56);
    v37 = v3;
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
    v12 = v5 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_17:
      v19 = (*(v3 + 48) + 48 * (v15 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v25 = v19[4];
      v24 = v19[5];
      v26 = *(v6 + 40);
      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 48 * v13);
      *v14 = v20;
      v14[1] = v21;
      v14[2] = v22;
      v14[3] = v23;
      v14[4] = v25;
      v14[5] = v24;
      ++*(v6 + 16);
      v3 = v37;
      v10 = v38;
    }

    v16 = v7;
    result = v36;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v11)
      {
        break;
      }

      v18 = v36[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D9F13AFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CF0, &qword_1D9F45508);
  result = sub_1D9F2B66C();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D9F13D5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v46 = result;
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a6 & 1) != 0)
  {
    goto LABEL_69;
  }

  if (a6)
  {
    sub_1D9F10D5C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1D9F17468();
LABEL_69:
      v34 = *v40;
      *(*v40 + 8 * (a5 >> 6) + 56) |= 1 << a5;
      v35 = *(v34 + 48) + 32 * a5;
      *v35 = v46;
      *(v35 + 8) = a2;
      *(v35 + 16) = a3;
      *(v35 + 24) = a4;
      v36 = *(v34 + 16);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_72;
      }

      *(v34 + 16) = v38;
      return result;
    }

    sub_1D9F18C88(v9 + 1);
  }

  v11 = *v6;
  v12 = *(*v6 + 40);
  sub_1D9F2BAFC();
  List.hash(into:)();
  result = sub_1D9F2BB4C();
  v44 = v11 + 56;
  v45 = v11;
  v13 = -1 << *(v11 + 32);
  a5 = result & ~v13;
  if (((*(v11 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
  {
    goto LABEL_69;
  }

  v43 = ~v13;
  v14 = 0xED00007473694C20;
  v15 = 0x676E6970706F6853;
  v39 = (a4 + 40);
  while (1)
  {
    v16 = (*(v45 + 48) + 32 * a5);
    v17 = *v16;
    if (v17 <= 1)
    {
      if (*v16)
      {
        v18 = 0x6569646572676E49;
      }

      else
      {
        v18 = 0x676E6970706F6853;
      }

      if (*v16)
      {
        v19 = 0xEB0000000073746ELL;
      }

      else
      {
        v19 = v14;
      }
    }

    else if (v17 == 2)
    {
      v19 = 0xE500000000000000;
      v18 = 0x6F44206F54;
    }

    else
    {
      if (v17 == 3)
      {
        v18 = 1970169165;
      }

      else
      {
        v18 = 0x726568744FLL;
      }

      if (v17 == 3)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }
    }

    v21 = *(v16 + 1);
    v20 = *(v16 + 2);
    v22 = *(v16 + 3);
    if (v46 == 3)
    {
      v23 = 1970169165;
    }

    else
    {
      v23 = 0x726568744FLL;
    }

    if (v46 == 3)
    {
      v24 = 0xE400000000000000;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

    if (v46 == 2)
    {
      v23 = 0x6F44206F54;
      v24 = 0xE500000000000000;
    }

    if (v46)
    {
      v15 = 0x6569646572676E49;
    }

    v25 = v14;
    if (v46)
    {
      v14 = 0xEB0000000073746ELL;
    }

    v26 = v46 <= 1u ? v15 : v23;
    v27 = v46 <= 1u ? v14 : v24;
    if (v18 == v26 && v19 == v27)
    {
    }

    else
    {
      v28 = sub_1D9F2BA1C();

      if ((v28 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    if (v20)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_55;
    }

LABEL_10:

    a5 = (a5 + 1) & v43;
    v14 = v25;
    v15 = 0x676E6970706F6853;
    if (((*(v44 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  if (!a3 || (v21 != a2 || v20 != a3) && (sub_1D9F2BA1C() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_55:
  v29 = *(v22 + 16);
  if (v29 != *(a4 + 16))
  {
    goto LABEL_10;
  }

  if (v29)
  {
    v30 = v22 == a4;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    v31 = (v22 + 40);
    v32 = v39;
    while (v29)
    {
      v33 = *(v31 - 1) == *(v32 - 1) && *v31 == *v32;
      if (!v33 && (sub_1D9F2BA1C() & 1) == 0)
      {
        goto LABEL_10;
      }

      v31 += 2;
      v32 += 2;
      if (!--v29)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
  }

LABEL_73:

  result = sub_1D9F2BA5C();
  __break(1u);
  return result;
}

uint64_t sub_1D9F14174(uint64_t result, uint64_t a2, unint64_t a3, char a4, double a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a4 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a4)
  {
    sub_1D9F110FC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1D9F175DC();
      goto LABEL_20;
    }

    sub_1D9F1900C(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  v15 = 0.0;
  if (a5 != 0.0)
  {
    v15 = a5;
  }

  MEMORY[0x1DA743920](*&v15);
  result = sub_1D9F2BB4C();
  v16 = v13 + 56;
  v17 = -1 << *(v13 + 32);
  a3 = result & ~v17;
  if ((*(v13 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v18 = ~v17;
    v19 = *(v13 + 48);
    do
    {
      v20 = v19 + 24 * a3;
      result = *v20;
      v21 = *(v20 + 16);
      v22 = *v20 == v10 && *(v20 + 8) == a2;
      if (v22 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
      {
        if (v21 == a5)
        {
          goto LABEL_23;
        }
      }

      a3 = (a3 + 1) & v18;
    }

    while (((*(v16 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_20:
  v23 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v24 = *(v23 + 48) + 24 * a3;
  *v24 = v10;
  *(v24 + 8) = a2;
  *(v24 + 16) = a5;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_23:
  result = sub_1D9F2BA5C();
  __break(1u);
  return result;
}

uint64_t sub_1D9F14338(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DateTimeSchedule();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1D9F1138C(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1D9F17744();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1D9F19274(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_1D9F2BAFC();
  DateTimeSchedule.hash(into:)();
  v18 = sub_1D9F2BB4C();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1D9F1BEE0(*(v16 + 48) + v21 * a2, v13, type metadata accessor for DateTimeSchedule);
      v22 = _s29VisualActionPredictionSupport16DateTimeScheduleV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_1D9F1BF48(v13, type metadata accessor for DateTimeSchedule);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D9F1BFA8(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for DateTimeSchedule);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D9F2BA5C();
  __break(1u);
  return result;
}

uint64_t sub_1D9F1457C(uint64_t result, uint64_t a2, unint64_t a3, char a4, double a5)
{
  v6 = v5;
  v9 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a4 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a4)
  {
    sub_1D9F11694(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1D9F17950();
      goto LABEL_20;
    }

    sub_1D9F1954C(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  sub_1D9F2BAFC();
  v15 = 0.0;
  if (a5 != 0.0)
  {
    v15 = a5;
  }

  MEMORY[0x1DA743920](*&v15);
  sub_1D9F2B18C();
  result = sub_1D9F2BB4C();
  v16 = v13 + 56;
  v17 = -1 << *(v13 + 32);
  a3 = result & ~v17;
  if ((*(v13 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v18 = ~v17;
    v19 = *(v13 + 48);
    while (1)
    {
      v20 = v19 + 24 * a3;
      if (*v20 == a5)
      {
        if (*(v20 + 8) == v9 && *(v20 + 16) == a2)
        {
          break;
        }

        result = sub_1D9F2BA1C();
        if (result)
        {
          break;
        }
      }

      a3 = (a3 + 1) & v18;
      if (((*(v16 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    result = sub_1D9F2BA5C();
    __break(1u);
  }

LABEL_20:
  v22 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v23 = *(v22 + 48) + 24 * a3;
  *v23 = a5;
  *(v23 + 8) = v9;
  *(v23 + 16) = a2;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

uint64_t sub_1D9F1473C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t *a7, uint64_t *a8)
{
  v13 = result;
  v14 = *(*v8 + 16);
  v15 = *(*v8 + 24);
  if (v15 > v14 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_1D9F13034(v14 + 1, a7, a8);
  }

  else
  {
    if (v15 > v14)
    {
      result = sub_1D9F18508(a7, a8);
      goto LABEL_22;
    }

    sub_1D9F1AE38(v14 + 1, a7, a8);
  }

  v16 = *v8;
  v17 = *(*v8 + 40);
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  result = sub_1D9F2BB4C();
  v18 = v16 + 56;
  v19 = -1 << *(v16 + 32);
  a5 = result & ~v19;
  if ((*(v16 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v20 = ~v19;
    v21 = *(v16 + 48);
    while (1)
    {
      v22 = (v21 + 32 * a5);
      v23 = v22[2];
      v24 = v22[3];
      v25 = *v22 == v13 && v22[1] == a2;
      if (v25 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
      {
        if (v23 == a3 && v24 == a4)
        {
          break;
        }

        result = sub_1D9F2BA1C();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v20;
      if (((*(v18 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_1D9F2BA5C();
    __break(1u);
  }

LABEL_22:
  v27 = *v32;
  *(*v32 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v28 = (*(v27 + 48) + 32 * a5);
  *v28 = v13;
  v28[1] = a2;
  v28[2] = a3;
  v28[3] = a4;
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v31;
  }

  return result;
}

uint64_t sub_1D9F14924(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a6)
  {
    sub_1D9F11924(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_1D9F17AB8();
      goto LABEL_27;
    }

    sub_1D9F197B4(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2BB1C();
  if (a4)
  {

    sub_1D9F2B18C();
  }

  result = sub_1D9F2BB4C();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = (v19 + 32 * a5);
      result = *v20;
      v22 = v20[2];
      v21 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
      {
        if (v21)
        {
          if (a4)
          {
            v24 = v22 == a3 && v21 == a4;
            if (v24 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
            {
LABEL_26:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75690, &qword_1D9F42150);
              result = sub_1D9F2BA5C();
              __break(1u);
              break;
            }
          }
        }

        else if (!a4)
        {
          goto LABEL_26;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_27:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

uint64_t sub_1D9F14B44(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v60 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_63;
  }

  if (a3)
  {
    sub_1D9F11BE0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D9F17C24();
      goto LABEL_63;
    }

    sub_1D9F19A60(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1D9F2BAFC();
  v67 = v5[1];
  v68 = *v5;
  v61 = v5[2];
  v62 = v5[5];
  v69 = v5[3];
  v57 = v5[4];
  v58 = v5[7];
  v54 = v5[8];
  v55 = v5[6];
  v56 = v5[9];
  PostalAddress.hash(into:)();
  v10 = v5[10];
  v11 = v5[11];
  sub_1D9F2BB1C();
  if (v11)
  {

    sub_1D9F2B18C();
  }

  result = sub_1D9F2BB4C();
  v12 = v8 + 56;
  v13 = -1 << *(v8 + 32);
  a2 = result & ~v13;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v52 = v10;
    v53 = v11;
    v14 = ~v13;
    v15 = *(v8 + 48);
    v16 = v67;
    v64 = ~v13;
    v65 = v8 + 56;
    v63 = v15;
    do
    {
      v17 = (v15 + 96 * a2);
      v18 = v17[1];
      v19 = v17[2];
      v21 = v17[3];
      v20 = v17[4];
      v23 = v17[5];
      v22 = v17[6];
      v24 = v17[7];
      v25 = v17[8];
      v27 = v17[9];
      v26 = v17[10];
      v28 = v17[11];
      if (v18)
      {
        if (!v16)
        {
          goto LABEL_13;
        }

        result = *v17;
        if (*v17 != v68 || v18 != v16)
        {
          v66 = v17[4];
          v30 = v17[7];
          v31 = v17[6];
          v32 = v17[9];
          v33 = v17[8];
          v34 = v17[11];
          v35 = v17[10];
          result = sub_1D9F2BA1C();
          v26 = v35;
          v28 = v34;
          v25 = v33;
          v27 = v32;
          v22 = v31;
          v24 = v30;
          v12 = v65;
          v20 = v66;
          v15 = v63;
          v14 = v64;
          v16 = v67;
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v16)
      {
        goto LABEL_13;
      }

      if (v21)
      {
        if (!v69)
        {
          goto LABEL_13;
        }

        if (v19 != v61 || v21 != v69)
        {
          v37 = v28;
          v38 = v26;
          result = sub_1D9F2BA1C();
          v26 = v38;
          v28 = v37;
          v15 = v63;
          v14 = v64;
          v12 = v65;
          v16 = v67;
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v69)
      {
        goto LABEL_13;
      }

      if (v23)
      {
        if (!v62)
        {
          goto LABEL_13;
        }

        if (v20 != v57 || v23 != v62)
        {
          v40 = v26;
          result = sub_1D9F2BA1C();
          v26 = v40;
          v15 = v63;
          v14 = v64;
          v12 = v65;
          v16 = v67;
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v62)
      {
        goto LABEL_13;
      }

      if (v24)
      {
        if (!v58)
        {
          goto LABEL_13;
        }

        if (v22 != v55 || v24 != v58)
        {
          v42 = v26;
          result = sub_1D9F2BA1C();
          v26 = v42;
          v15 = v63;
          v14 = v64;
          v12 = v65;
          v16 = v67;
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v58)
      {
        goto LABEL_13;
      }

      if (v27)
      {
        if (!v56)
        {
          goto LABEL_13;
        }

        if (v25 != v54 || v27 != v56)
        {
          v43 = v26;
          result = sub_1D9F2BA1C();
          v26 = v43;
          v15 = v63;
          v14 = v64;
          v12 = v65;
          v16 = v67;
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v56)
      {
        goto LABEL_13;
      }

      if (v28)
      {
        if (v53)
        {
          if (v26 == v52 && v28 == v53 || (result = sub_1D9F2BA1C(), v15 = v63, v14 = v64, v12 = v65, v16 = v67, (result & 1) != 0))
          {
LABEL_62:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731D0, &qword_1D9F42160);
            result = sub_1D9F2BA5C();
            __break(1u);
            break;
          }
        }
      }

      else if (!v53)
      {
        goto LABEL_62;
      }

LABEL_13:
      a2 = (a2 + 1) & v14;
    }

    while (((*(v12 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_63:
  v44 = *v59;
  *(*v59 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v45 = (*(v44 + 48) + 96 * a2);
  v46 = v60[1];
  *v45 = *v60;
  v45[1] = v46;
  v47 = v60[5];
  v45[4] = v60[4];
  v45[5] = v47;
  v48 = v60[3];
  v45[2] = v60[2];
  v45[3] = v48;
  v49 = *(v44 + 16);
  v50 = __OFADD__(v49, 1);
  v51 = v49 + 1;
  if (v50)
  {
    __break(1u);
  }

  else
  {
    *(v44 + 16) = v51;
  }

  return result;
}

uint64_t sub_1D9F14FC8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v34 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_32;
  }

  if (a3)
  {
    sub_1D9F11FF8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D9F17DD0();
      goto LABEL_32;
    }

    sub_1D9F19E74(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1D9F2BAFC();
  v10 = v5[1];
  v11 = v5[2];
  v12 = v5[3];
  v38 = *v5;
  sub_1D9F2B18C();
  v36 = v12;
  v37 = v11;
  sub_1D9F2B18C();
  v14 = v5[4];
  v13 = v5[5];
  sub_1D9F2BB1C();
  if (v13)
  {

    sub_1D9F2B18C();
  }

  result = sub_1D9F2BB4C();
  v15 = -1 << *(v8 + 32);
  a2 = result & ~v15;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = v8 + 56;
    v35 = v14;
    v17 = ~v15;
    v18 = *(v8 + 48);
    do
    {
      v19 = (v18 + 48 * a2);
      result = *v19;
      v21 = v19[2];
      v20 = v19[3];
      v23 = v19[4];
      v22 = v19[5];
      v24 = *v19 == v38 && v19[1] == v10;
      if (v24 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
      {
        v25 = v21 == v37 && v20 == v36;
        if (v25 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
        {
          if (v22)
          {
            if (v13)
            {
              v26 = v23 == v35 && v22 == v13;
              if (v26 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
              {
LABEL_31:
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB756D8, &qword_1D9F42170);
                result = sub_1D9F2BA5C();
                __break(1u);
                break;
              }
            }
          }

          else if (!v13)
          {
            goto LABEL_31;
          }
        }
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_32:
  v27 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v28 = (*(v27 + 48) + 48 * a2);
  v29 = v34[1];
  *v28 = *v34;
  v28[1] = v29;
  v28[2] = v34[2];
  v30 = *(v27 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v32;
  }

  return result;
}