uint64_t sub_1D9BE7DE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0);
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v21, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v22;
      if (v22)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v21;
    v15 = v23;
    result = swift_isUniquelyReferenced_nonNull_native();
    v20 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1D9AF85D0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v17 = *(v8 + 16);
    v16 = *(v8 + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      result = sub_1D9AF85D0((v16 > 1), v17 + 1, 1, v8);
      v18 = v17 + 1;
      v8 = result;
    }

    *(v8 + 16) = v18;
    v19 = v8 + 24 * v17;
    *(v19 + 32) = v20;
    *(v19 + 40) = v13;
    *(v19 + 48) = v15;
  }

  while (v7 != v4);
  return v8;
}

void *sub_1D9BE7F90(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54428);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v30 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v23 - v12;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v24 = v11;
  v14 = (v11 + 48);
  v15 = (a3 + 48);
  v16 = MEMORY[0x1E69E7CC0];
  v25 = a1;
  while (1)
  {
    v17 = *v15;
    v18 = *(v15 - 1);
    v28[0] = *(v15 - 2);
    v28[1] = v18;
    v29 = v17;

    a1(v28);
    if (v3)
    {
      break;
    }

    if ((*v14)(v8, 1, v30) == 1)
    {
      sub_1D99A6AE0(v8, &qword_1ECB54428);
    }

    else
    {
      v19 = v26;
      sub_1D9BFA0FC(v8, v26, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);
      sub_1D9BFA0FC(v19, v27, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1D9AF92A4(0, v16[2] + 1, 1, v16);
      }

      v21 = v16[2];
      v20 = v16[3];
      if (v21 >= v20 >> 1)
      {
        v16 = sub_1D9AF92A4(v20 > 1, v21 + 1, 1, v16);
      }

      v16[2] = v21 + 1;
      sub_1D9BFA0FC(v27, v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);
      a1 = v25;
    }

    v15 += 6;
    if (!--v13)
    {
      return v16;
    }
  }

  return v16;
}

uint64_t sub_1D9BE8274(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for VisualUnderstanding.ImageRegion();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v20, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if ((v20 & 0x100000000) == 0)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v13 = v20;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D9AF92FC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v14 = *(v8 + 16);
    v15 = *(v8 + 24);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v19 = v14 + 1;
      v17 = v8;
      v18 = *(v8 + 16);
      result = sub_1D9AF92FC((v15 > 1), v14 + 1, 1, v17);
      v14 = v18;
      v16 = v19;
      v8 = result;
    }

    *(v8 + 16) = v16;
    *(v8 + 4 * v14 + 32) = v13;
  }

  while (v7 != v4);
  return v8;
}

char *sub_1D9BE8434(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6[7];
    v9 = v6[5];
    v44 = v6[6];
    v45 = v8;
    v10 = v6[7];
    v46[0] = v6[8];
    *(v46 + 13) = *(v6 + 141);
    v11 = v6[3];
    v12 = v6[1];
    v40 = v6[2];
    v41 = v11;
    v13 = v6[3];
    v14 = v6[5];
    v42 = v6[4];
    v43 = v14;
    v15 = v6[1];
    v39[0] = *v6;
    v39[1] = v15;
    v36 = v44;
    v37 = v10;
    v38[0] = v6[8];
    *(v38 + 13) = *(v6 + 141);
    v32 = v40;
    v33 = v13;
    v34 = v42;
    v35 = v9;
    v30 = v39[0];
    v31 = v12;
    sub_1D99AE054(v39, &v20);
    a1(&v29, &v30);
    if (v3)
    {
      break;
    }

    v26 = v36;
    v27 = v37;
    v28[0] = v38[0];
    *(v28 + 13) = *(v38 + 13);
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v20 = v30;
    v21 = v31;
    sub_1D99AE0B0(&v20);
    if ((v29 & 0x100000000) == 0)
    {
      v16 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D9AF92FC(0, *(v7 + 2) + 1, 1, v7);
      }

      v18 = *(v7 + 2);
      v17 = *(v7 + 3);
      if (v18 >= v17 >> 1)
      {
        v7 = sub_1D9AF92FC((v17 > 1), v18 + 1, 1, v7);
      }

      *(v7 + 2) = v18 + 1;
      *&v7[4 * v18 + 32] = v16;
    }

    v6 += 10;
    if (!--v4)
    {
      return v7;
    }
  }

  v26 = v36;
  v27 = v37;
  v28[0] = v38[0];
  *(v28 + 13) = *(v38 + 13);
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v20 = v30;
  v21 = v31;
  sub_1D99AE0B0(&v20);

  return v7;
}

char *sub_1D9BE8640(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = *v6++;
    v19 = v9;
    a1(&v16, &v19);
    if (v3)
    {
      break;
    }

    v10 = v16;
    if (v16 != 27)
    {
      v14 = v18;
      v15 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D9AFA350(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      if (v12 >= v11 >> 1)
      {
        v7 = sub_1D9AFA350((v11 > 1), v12 + 1, 1, v7);
      }

      *(v7 + 2) = v12 + 1;
      v8 = &v7[40 * v12];
      v8[32] = v10;
      *(v8 + 56) = v14;
      *(v8 + 40) = v15;
    }

    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

void *sub_1D9BE87AC(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v9 = 0;
    do
    {
      v14 = result;
      for (i = v9; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v11 = a4(0);
        v13 = *(v11 - 8);
        result = (v11 - 8);
        v12 = v13;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v16, a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i);
        if (v4)
        {

          return v14;
        }

        if (v16)
        {
          break;
        }

        if (v9 == v6)
        {
          return v14;
        }
      }

      MEMORY[0x1DA73E0E0](result);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D9C7DF4C();
      }

      sub_1D9C7DF6C();
      result = v17;
    }

    while (v9 != v6);
  }

  return result;
}

char *sub_1D9BE8938(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = (a3 + 56);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = *(v7 - 1);
    v10 = *v7;
    v11 = *(v7 - 2);
    v16[0] = *(v7 - 3);
    v16[1] = v11;
    v16[2] = v9;
    v16[3] = v10;

    a1(&v17, v16);
    if (v4)
    {
      break;
    }

    if ((v17 & 0x100000000) == 0)
    {
      v12 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1D9AF84B8(0, *(v8 + 2) + 1, 1, v8);
      }

      v14 = *(v8 + 2);
      v13 = *(v8 + 3);
      if (v14 >= v13 >> 1)
      {
        v8 = sub_1D9AF84B8((v13 > 1), v14 + 1, 1, v8);
      }

      *(v8 + 2) = v14 + 1;
      *&v8[4 * v14 + 32] = v12;
    }

    v7 += 4;
    if (!--v5)
    {
      return v8;
    }
  }

  return v8;
}

void *sub_1D9BE8AA0(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54438);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53300);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v27 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(_s14DetectedResultVMa() - 8);
  v24 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v28 = *(v15 + 72);
  v18 = MEMORY[0x1E69E7CC0];
  v25 = v9;
  v26 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_1D99A6AE0(v8, &qword_1ECB54438);
    }

    else
    {
      v19 = v27;
      sub_1D9BFA1B8(v8, v27);
      sub_1D9BFA1B8(v19, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1D9AFBC4C(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1D9AFBC4C(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_1D9BFA1B8(v29, v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21);
      v9 = v25;
      a1 = v26;
    }

    v17 += v28;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

__n128 VisualUnderstanding.Annotation.init(faceAnnotations:humanAnnotations:nsfwAnnotations:textAnnotations:barcodeAnnotations:scenenetAnnotations:reducePersonOverTriggerAnnotation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a7;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  result = *a6;
  *(a8 + 40) = *a6;
  *(a8 + 56) = v8;
  return result;
}

uint64_t sub_1D9BE8DB0()
{
  v1 = type metadata accessor for VisualUnderstanding.ImageRegion() - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(*v0 + 16);
  if (v5)
  {
    v6 = *v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v7 = *(v2 + 72);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D99CC070(v6, v4, type metadata accessor for VisualUnderstanding.ImageRegion);
      v10 = v4[10];
      v11 = v4[11];
      v12 = v4[12];
      sub_1D99CB864(v10, v11);
      sub_1D99CC0F8(v4, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v11)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D9AF85EC(0, *(v8 + 2) + 1, 1, v8);
        }

        v14 = *(v8 + 2);
        v13 = *(v8 + 3);
        if (v14 >= v13 >> 1)
        {
          v8 = sub_1D9AF85EC((v13 > 1), v14 + 1, 1, v8);
        }

        *(v8 + 2) = v14 + 1;
        v9 = &v8[24 * v14];
        *(v9 + 4) = v10;
        *(v9 + 5) = v11;
        *(v9 + 6) = v12;
      }

      v6 += v7;
      --v5;
    }

    while (v5);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  if (*(v8 + 2))
  {
    v15 = *(v8 + 4);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t VisualUnderstanding.payload.getter()
{
  sub_1D9C7B59C();
  swift_allocObject();
  sub_1D9C7B58C();
  sub_1D9A0EBFC();
  v0 = sub_1D9C7B57C();

  return v0;
}

uint64_t VisualUnderstanding.imageRegions.getter()
{
  v1 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v86 = &v83 - v3;
  v85 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v97 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v96 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v83 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v83 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v83 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v83 - v12;
  v14 = *v0;
  v89 = (*v0)[2];
  if (v89)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v87 = v14;
    v88 = &v83 - v12;
    while (v15 < v14[2])
    {
      v98 = v16;
      v99 = 0;
      v94 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v93 = *(v97 + 72);
      sub_1D99CC070(v14 + v94 + v93 * v15, v13, type metadata accessor for VisualUnderstanding.ImageRegion);
      v17 = *(v13 + 6);
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = 0;
        v1 = (v17 + 32);
        v20 = v18 - 1;
        v21 = MEMORY[0x1E69E7CC0];
        while (2)
        {
          v22 = &v1[160 * v19];
          v23 = v19;
          while (1)
          {
            if (v23 >= *(v17 + 16))
            {
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            v24 = *(v22 + 1);
            v101 = *v22;
            v102 = v24;
            v25 = *(v22 + 2);
            v26 = *(v22 + 3);
            v27 = *(v22 + 5);
            v105 = *(v22 + 4);
            v106 = v27;
            v103 = v25;
            v104 = v26;
            v28 = *(v22 + 6);
            v29 = *(v22 + 7);
            v30 = *(v22 + 8);
            *(v109 + 13) = *(v22 + 141);
            v108 = v29;
            v109[0] = v30;
            v107 = v28;
            v19 = v23 + 1;
            if (BYTE13(v29))
            {
              break;
            }

            v22 += 160;
            ++v23;
            if (v18 == v19)
            {
              goto LABEL_20;
            }
          }

          sub_1D99AE054(&v101, v100);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v110 = v21;
          v90 = v20;
          v91 = v1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D99FE2D8(0, *(v21 + 16) + 1, 1);
            v21 = v110;
          }

          v33 = *(v21 + 16);
          v32 = *(v21 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_1D99FE2D8((v32 > 1), v33 + 1, 1);
            v21 = v110;
          }

          *(v21 + 16) = v33 + 1;
          v34 = (v21 + 160 * v33);
          v35 = v102;
          v34[2] = v101;
          v34[3] = v35;
          v36 = v103;
          v37 = v104;
          v38 = v106;
          v34[6] = v105;
          v34[7] = v38;
          v34[4] = v36;
          v34[5] = v37;
          v39 = v107;
          v40 = v108;
          v41 = v109[0];
          *(v34 + 173) = *(v109 + 13);
          v34[9] = v40;
          v34[10] = v41;
          v34[8] = v39;
          v20 = v90;
          v1 = v91;
          if (v90 != v23)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }

LABEL_20:
      *&v101 = v21;

      v1 = v99;
      sub_1D9BE9B70(&v101);
      if (v1)
      {
        goto LABEL_61;
      }

      v42 = *(v101 + 16);

      v13 = v88;
      if (v42)
      {
        sub_1D9BFA0FC(v88, v92, type metadata accessor for VisualUnderstanding.ImageRegion);
        v16 = v98;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v111 = v16;
        v14 = v87;
        if ((v43 & 1) == 0)
        {
          sub_1D99FE2B8(0, *(v16 + 16) + 1, 1);
          v16 = v111;
        }

        v45 = *(v16 + 16);
        v44 = *(v16 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1D99FE2B8(v44 > 1, v45 + 1, 1);
          v16 = v111;
        }

        *(v16 + 16) = v45 + 1;
        sub_1D9BFA0FC(v92, v16 + v94 + v45 * v93, type metadata accessor for VisualUnderstanding.ImageRegion);
      }

      else
      {
        sub_1D99CC0F8(v88, type metadata accessor for VisualUnderstanding.ImageRegion);
        v16 = v98;
        v14 = v87;
      }

      if (++v15 == v89)
      {
        goto LABEL_28;
      }
    }

LABEL_59:
    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v90 = *(v16 + 16);
    if (!v90)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v46 = 0;
    v83 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v89 = (v16 + v83);
    v87 = (v97 + 48);
    v88 = (v97 + 56);
    v47 = MEMORY[0x1E69E7CC0];
    v98 = v16;
    while (v46 < *(v16 + 16))
    {
      v93 = *(v97 + 72);
      v94 = v47;
      v48 = v95;
      sub_1D99CC070(v89 + v93 * v46, v95, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D99CC070(v48, v96, type metadata accessor for VisualUnderstanding.ImageRegion);
      v49 = *(v48 + 48);
      v50 = *(v49 + 16);
      if (v50)
      {
        v51 = 0;
        v52 = (v49 + 32);
        v53 = v50 - 1;
        v54 = MEMORY[0x1E69E7CC0];
LABEL_35:
        v55 = &v52[160 * v51];
        v56 = v51;
        while (v56 < *(v49 + 16))
        {
          v57 = v55[1];
          v101 = *v55;
          v102 = v57;
          v58 = v55[2];
          v59 = v55[3];
          v60 = v55[5];
          v105 = v55[4];
          v106 = v60;
          v103 = v58;
          v104 = v59;
          v61 = v55[6];
          v62 = v55[7];
          v63 = v55[8];
          *(v109 + 13) = *(v55 + 141);
          v108 = v62;
          v109[0] = v63;
          v107 = v61;
          v51 = v56 + 1;
          if (BYTE13(v62))
          {
            v92 = v53;
            sub_1D99AE054(&v101, v100);
            v64 = swift_isUniquelyReferenced_nonNull_native();
            v111 = v54;
            v99 = v1;
            v91 = v52;
            if ((v64 & 1) == 0)
            {
              sub_1D99FE2D8(0, *(v54 + 16) + 1, 1);
              v54 = v111;
            }

            v53 = v92;
            v66 = *(v54 + 16);
            v65 = *(v54 + 24);
            if (v66 >= v65 >> 1)
            {
              sub_1D99FE2D8((v65 > 1), v66 + 1, 1);
              v53 = v92;
              v54 = v111;
            }

            *(v54 + 16) = v66 + 1;
            v67 = (v54 + 160 * v66);
            v68 = v102;
            v67[2] = v101;
            v67[3] = v68;
            v69 = v103;
            v70 = v104;
            v71 = v106;
            v67[6] = v105;
            v67[7] = v71;
            v67[4] = v69;
            v67[5] = v70;
            v72 = v107;
            v73 = v108;
            v74 = v109[0];
            *(v67 + 173) = *(v109 + 13);
            v67[9] = v73;
            v67[10] = v74;
            v67[8] = v72;
            v1 = v99;
            v52 = v91;
            if (v53 != v56)
            {
              goto LABEL_35;
            }

            goto LABEL_47;
          }

          v55 += 10;
          ++v56;
          if (v50 == v51)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_58;
      }

      v54 = MEMORY[0x1E69E7CC0];
LABEL_47:
      *&v101 = v54;

      sub_1D9BE9B70(&v101);
      if (v1)
      {
        goto LABEL_61;
      }

      sub_1D99CC0F8(v95, type metadata accessor for VisualUnderstanding.ImageRegion);
      v75 = v101;
      v76 = v96;

      *(v76 + 48) = v75;
      v77 = v86;
      sub_1D99CC070(v76, v86, type metadata accessor for VisualUnderstanding.ImageRegion);
      v78 = v85;
      (*v88)(v77, 0, 1, v85);
      sub_1D99CC0F8(v76, type metadata accessor for VisualUnderstanding.ImageRegion);
      if ((*v87)(v77, 1, v78) == 1)
      {
        sub_1D99A6AE0(v77, &qword_1ECB51220);
        v16 = v98;
        v47 = v94;
      }

      else
      {
        sub_1D9BFA0FC(v77, v84, type metadata accessor for VisualUnderstanding.ImageRegion);
        v47 = v94;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_1D9AF8A90(0, v47[2] + 1, 1, v47);
        }

        v79 = v93;
        v81 = v47[2];
        v80 = v47[3];
        if (v81 >= v80 >> 1)
        {
          v47 = sub_1D9AF8A90(v80 > 1, v81 + 1, 1, v47);
        }

        v47[2] = v81 + 1;
        sub_1D9BFA0FC(v84, v47 + v83 + v81 * v79, type metadata accessor for VisualUnderstanding.ImageRegion);
        v16 = v98;
      }

      if (++v46 == v90)
      {

        return v47;
      }
    }
  }

  __break(1u);
LABEL_61:

  __break(1u);
  return result;
}

uint64_t VisualUnderstanding.ImageRegion.domainInfo.getter()
{
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = *(v2 + 16);
      v7 = (v2 + 32 + 160 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v6)
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v9 = v7[1];
        v29 = *v7;
        v30 = v9;
        v10 = v7[2];
        v11 = v7[3];
        v12 = v7[5];
        v33 = v7[4];
        v34 = v12;
        v31 = v10;
        v32 = v11;
        v13 = v7[6];
        v14 = v7[7];
        v15 = v7[8];
        *(v37 + 13) = *(v7 + 141);
        v36 = v14;
        v37[0] = v15;
        v35 = v13;
        v4 = v8 + 1;
        if (BYTE13(v14))
        {
          break;
        }

        v7 += 10;
        ++v8;
        if (v3 == v4)
        {
          goto LABEL_15;
        }
      }

      sub_1D99AE054(&v29, v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D99FE2D8(0, *(v5 + 16) + 1, 1);
        v5 = v38;
      }

      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      v1 = (v18 + 1);
      if (v18 >= v17 >> 1)
      {
        sub_1D99FE2D8((v17 > 1), v18 + 1, 1);
        v5 = v38;
      }

      *(v5 + 16) = v1;
      v19 = (v5 + 160 * v18);
      v20 = v30;
      v19[2] = v29;
      v19[3] = v20;
      v21 = v31;
      v22 = v32;
      v23 = v34;
      v19[6] = v33;
      v19[7] = v23;
      v19[4] = v21;
      v19[5] = v22;
      v24 = v35;
      v25 = v36;
      v26 = v37[0];
      *(v19 + 173) = *(v37 + 13);
      v19[9] = v25;
      v19[10] = v26;
      v19[8] = v24;
    }

    while (v3 - 1 != v8);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  *&v29 = v5;

  sub_1D9BE9B70(&v29);

  return v29;
}

uint64_t type metadata accessor for VisualUnderstanding.ImageRegion()
{
  result = qword_1EDD351E0;
  if (!qword_1EDD351E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL VisualUnderstanding.ImageRegion.hasEmbedding.getter()
{
  VisualUnderstanding.ImageRegion.embeddings.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 16) + 1;
  v2 = 32;
  do
  {
    v3 = --v1 != 0;
    if (!v1)
    {
      break;
    }

    v4 = *(v0 + v2);
    v2 += 24;
  }

  while (!*(v4 + 16));

  return v3;
}

uint64_t sub_1D9BE9B70(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D99E91D8(v2);
  }

  v3 = *(v2 + 2);
  v44[0] = (v2 + 32);
  v44[1] = v3;
  result = sub_1D9C7E79C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 192;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 - 12) >= *(v12 + 28))
          {
            break;
          }

          v13 = v12 - 160;
          v14 = *(v12 + 1);
          v35 = *v12;
          v36 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 5);
          v39 = *(v12 + 4);
          v40 = v17;
          v37 = v15;
          v38 = v16;
          v18 = *(v12 + 6);
          v19 = *(v12 + 7);
          v20 = *(v12 + 8);
          *(v43 + 13) = *(v12 + 141);
          v43[0] = v20;
          v41 = v18;
          v42 = v19;
          v21 = *(v12 - 5);
          *(v12 + 4) = *(v12 - 6);
          *(v12 + 5) = v21;
          v22 = *(v12 - 7);
          *(v12 + 2) = *(v12 - 8);
          *(v12 + 3) = v22;
          v23 = *(v12 - 1);
          *(v12 + 8) = *(v12 - 2);
          *(v12 + 9) = v23;
          v24 = *(v12 - 3);
          *(v12 + 6) = *(v12 - 4);
          *(v12 + 7) = v24;
          v25 = *(v12 - 9);
          *v12 = *(v12 - 10);
          *(v12 + 1) = v25;
          v26 = v36;
          *v13 = v35;
          *(v13 + 1) = v26;
          v27 = v37;
          v28 = v38;
          v29 = v40;
          *(v13 + 4) = v39;
          *(v13 + 5) = v29;
          *(v13 + 2) = v27;
          *(v13 + 3) = v28;
          v30 = v41;
          v31 = v42;
          v32 = v43[0];
          *(v13 + 141) = *(v43 + 13);
          *(v13 + 7) = v31;
          *(v13 + 8) = v32;
          *(v13 + 6) = v30;
          v12 -= 160;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 160;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D9C7DF5C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v35 = v7 + 32;
    *(&v35 + 1) = v6;
    sub_1D9B6A1F0(&v35, v34, v44, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void __swiftcall VisualUnderstanding.Text.init(text:confidence:boundingBox:)(VisualLookUp::VisualUnderstanding::Text *__return_ptr retstr, Swift::String text, Swift::Float confidence, VisualLookUp::NormalizedRect boundingBox)
{
  retstr->text = text;
  retstr->confidence = confidence;
  v5 = *(v4 + 16);
  retstr->boundingBox.bottomLeftCGRect.origin = *v4;
  retstr->boundingBox.bottomLeftCGRect.size = v5;
}

uint64_t sub_1D9BE9D4C()
{
  sub_1D9C7E40C();
  VisualUnderstanding.imageRegions.getter();

  v0 = sub_1D9C7E7AC();

  MEMORY[0x1DA73DF90](0xD000000000000020, 0x80000001D9CACCA0);
  return v0;
}

unint64_t sub_1D9BE9DFC()
{
  v1 = *v0;
  v2 = 0x6567616D496C6C61;
  v3 = 0xD000000000000010;
  if (v1 != 6)
  {
    v3 = 0x6E6F697461727564;
  }

  v4 = 0x6D6D6F436C727563;
  if (v1 != 4)
  {
    v4 = 0x44497972657571;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x5264656E69666572;
  if (v1 != 2)
  {
    v5 = 0x7A69536567616D69;
  }

  if (*v0)
  {
    v2 = 0x697461746F6E6E61;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9BE9F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9BF88CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9BE9F58(uint64_t a1)
{
  v2 = sub_1D9BF4F6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9BE9F94(uint64_t a1)
{
  v2 = sub_1D9BF4F6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualUnderstanding.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54170);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = *(v1 + 3);
  v39 = *(v1 + 1);
  v40 = v8;
  v9 = *(v1 + 7);
  v41 = *(v1 + 5);
  v42 = v9;
  v26 = *(v1 + 11);
  v27 = *(v1 + 9);
  v10 = v1[14];
  v29 = v1[13];
  v28 = v10;
  v25 = *(v1 + 120);
  v11 = v1[17];
  v23 = v1[16];
  v24 = v11;
  v12 = v1[19];
  v22 = v1[18];
  v19 = v12;
  v13 = v1[21];
  v21 = v1[20];
  v20 = v13;
  v18 = v1[22];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF4F6C();

  sub_1D9C7E96C();
  *&v35 = v7;
  LOBYTE(v33[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54178);
  sub_1D9BF5178(&qword_1EDD2A818, &qword_1EDD2C258);
  v14 = v43;
  sub_1D9C7E74C();
  if (v14)
  {
  }

  else
  {
    v15 = v28;
    v16 = v29;

    v35 = v39;
    v36 = v40;
    v37 = v41;
    v38 = v42;
    v34 = 1;
    sub_1D99AB100(&v39, v33, &qword_1ECB514D0);
    sub_1D9BF4FC0();
    sub_1D9C7E6DC();
    v33[0] = v35;
    v33[1] = v36;
    v33[2] = v37;
    v33[3] = v38;
    sub_1D99A6AE0(v33, &qword_1ECB514D0);
    v32 = v26;
    v31 = v27;
    v30 = 2;
    sub_1D99EA188();
    sub_1D9C7E74C();
    *&v31 = v16;
    *(&v31 + 1) = v15;
    LOBYTE(v32) = v25;
    v30 = 3;
    type metadata accessor for CGSize(0);
    sub_1D9BF6E38(&qword_1EDD2A650, type metadata accessor for CGSize);
    sub_1D9C7E6DC();
    LOBYTE(v31) = 4;
    sub_1D9C7E6EC();
    LOBYTE(v31) = 5;
    sub_1D9C7E77C();
    *&v31 = v19;
    *(&v31 + 1) = v21;
    *&v32 = v20;
    v30 = 6;
    sub_1D9BF5014();
    sub_1D9C7E6DC();
    *&v31 = v18;
    v30 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51230);
    sub_1D9BF5068();
    sub_1D9C7E74C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t VisualUnderstanding.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v9 = *(v1 + 104);
  v8 = *(v1 + 112);
  v21 = *(v1 + 120);
  v11 = *(v1 + 144);
  v10 = *(v1 + 152);
  v12 = *(v1 + 176);
  sub_1D9A2F87C(a1, *v1);
  if (v3 == 1)
  {
    sub_1D9C7E8FC();
  }

  else
  {
    *&v22[8] = *(v1 + 16);
    *&v22[24] = *(v1 + 32);
    *&v22[40] = *(v1 + 48);
    *&v22[56] = *(v1 + 64);
    *v22 = v3;
    sub_1D9C7E8FC();
    v23 = v3;
    v13 = *(v1 + 32);
    v24 = *(v1 + 16);
    v25 = v13;
    v26 = *(v1 + 48);
    v27 = *(v1 + 64);
    sub_1D9BF5140(&v23, v28);
    VisualUnderstanding.Annotation.hash(into:)(a1);
    v28[0] = *v22;
    v28[1] = *&v22[16];
    v28[2] = *&v22[32];
    v28[3] = *&v22[48];
    sub_1D9B5B7EC(v28);
  }

  v29.origin.x = v4;
  v29.origin.y = v5;
  v29.size.width = v6;
  v29.size.height = v7;
  MinX = CGRectGetMinX(v29);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v30.origin.x = v4;
  v30.origin.y = v5;
  v30.size.width = v6;
  v30.size.height = v7;
  MaxX = CGRectGetMaxX(v30);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v31.origin.x = v4;
  v31.origin.y = v5;
  v31.size.width = v6;
  v31.size.height = v7;
  MinY = CGRectGetMinY(v31);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v32.origin.x = v4;
  v32.origin.y = v5;
  v32.size.width = v6;
  v32.size.height = v7;
  MaxY = CGRectGetMaxY(v32);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  if (v21)
  {
    sub_1D9C7E8FC();
  }

  else
  {
    sub_1D9C7E8FC();
    if (v9 == 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v9;
    }

    MEMORY[0x1DA73EB00](*&v18);
    if (v8 == 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v8;
    }

    MEMORY[0x1DA73EB00](*&v19);
  }

  sub_1D9C7DD6C();
  MEMORY[0x1DA73EB00](v11);
  sub_1D9C7E8FC();
  if (v10)
  {
    sub_1D9A2ED94(a1, v10);
    sub_1D9C7DD6C();
  }

  return sub_1D9A2F7DC(a1, v12);
}

uint64_t VisualUnderstanding.hashValue.getter()
{
  sub_1D9C7E8DC();
  VisualUnderstanding.hash(into:)(v1);
  return sub_1D9C7E93C();
}

uint64_t VisualUnderstanding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54180);
  v5 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v7 = &v23 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF4F6C();
  sub_1D9C7E95C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    return sub_1D99BB254(0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54178);
    LOBYTE(v31[0]) = 0;
    sub_1D9BF5178(&qword_1EDD2A810, &qword_1EDD2C250);
    sub_1D9C7E65C();
    v8 = v39;
    v60 = 1;
    sub_1D9BF5214();
    sub_1D9C7E5EC();
    v67 = v61;
    v68 = v62;
    v69 = v63;
    v70 = v64;
    LOBYTE(v31[0]) = 2;
    sub_1D99EA7B8();
    sub_1D9C7E65C();
    v9 = v39;
    v11 = v40;
    v10 = v41;
    type metadata accessor for CGSize(0);
    LOBYTE(v31[0]) = 3;
    sub_1D9BF6E38(&qword_1EDD2A648, type metadata accessor for CGSize);
    sub_1D9C7E5EC();
    v29 = v40;
    v30 = v39;
    v66 = BYTE8(v40);
    LOBYTE(v39) = 4;
    *&v28 = sub_1D9C7E5FC();
    *(&v28 + 1) = v12;
    LOBYTE(v39) = 5;
    v27 = sub_1D9C7E68C();
    LOBYTE(v31[0]) = 6;
    sub_1D9BF5268();
    sub_1D9C7E5EC();
    v26 = v40;
    v24 = v39;
    v25 = *(&v40 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51230);
    v58 = 7;
    sub_1D9BF52BC();
    sub_1D9C7E65C();
    (*(v5 + 8))(v7, v71);
    v13 = v59;
    *&v31[0] = v8;
    *(v31 + 8) = v67;
    *(&v31[1] + 8) = v68;
    *(&v31[2] + 8) = v69;
    *(&v31[3] + 8) = v70;
    *(&v31[4] + 1) = v9;
    v32 = v11;
    *&v33 = v10;
    *(&v33 + 1) = v30;
    *&v34 = v29;
    LODWORD(v71) = v66;
    BYTE8(v34) = v66;
    HIDWORD(v34) = *&v65[3];
    *(&v34 + 9) = *v65;
    v14 = *(&v28 + 1);
    v35 = v28;
    v15 = v24;
    *&v36 = v27;
    *(&v36 + 1) = v24;
    *&v37 = v26;
    *(&v37 + 1) = v25;
    v38 = v59;
    *(a2 + 176) = v59;
    v16 = v31[1];
    *a2 = v31[0];
    *(a2 + 16) = v16;
    v17 = v31[3];
    *(a2 + 32) = v31[2];
    *(a2 + 48) = v17;
    v18 = v36;
    *(a2 + 128) = v35;
    *(a2 + 144) = v18;
    *(a2 + 160) = v37;
    v19 = v31[4];
    v20 = v32;
    v21 = v34;
    *(a2 + 96) = v33;
    *(a2 + 112) = v21;
    *(a2 + 64) = v19;
    *(a2 + 80) = v20;
    sub_1D99BB40C(v31, &v39);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v39 = v8;
    v40 = v67;
    v41 = v68;
    v42 = v69;
    v43 = v70;
    v44 = v9;
    v45 = v11;
    v46 = v10;
    v47 = v30;
    v48 = v29;
    v49 = v71;
    *&v50[3] = *&v65[3];
    *v50 = *v65;
    v51 = v28;
    v52 = v14;
    v53 = v27;
    v54 = v15;
    v55 = v26;
    v56 = v25;
    v57 = v13;
    return sub_1D9A0009C(&v39);
  }
}

uint64_t sub_1D9BEAEE8()
{
  sub_1D9C7E8DC();
  VisualUnderstanding.hash(into:)(v1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9BEAF2C()
{
  sub_1D9C7E8DC();
  VisualUnderstanding.hash(into:)(v1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9BEAF68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54418);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF8B94();
  sub_1D9C7E96C();
  v14 = 0;
  sub_1D9C7E6EC();
  if (!v4)
  {
    v13 = 1;
    sub_1D9C7E70C();
    v12 = 2;
    sub_1D9C7E77C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D9BEB12C()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x6D69547472617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1D9BEB190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9BF8BE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9BEB1B8(uint64_t a1)
{
  v2 = sub_1D9BF8B94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9BEB1F4(uint64_t a1)
{
  v2 = sub_1D9BF8B94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D9BEB230(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_1D9BF8D10(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v6;
  }
}

BOOL sub_1D9BEB288(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 == v5;
  }

  v7 = sub_1D9C7E7DC();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t sub_1D9BEB314()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x1DA73EB00](*&v3);
  MEMORY[0x1DA73EB00](v2);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9BEB39C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D9C7DD6C();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x1DA73EB00](*&v3);
  return MEMORY[0x1DA73EB00](v2);
}

uint64_t sub_1D9BEB3FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x1DA73EB00](*&v3);
  MEMORY[0x1DA73EB00](v2);
  return sub_1D9C7E93C();
}

uint64_t VisualUnderstanding.Text.text.getter()
{
  v1 = *v0;

  return v1;
}

__n128 VisualUnderstanding.Text.boundingBox.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D9BEB4C8()
{
  v1 = 0x6E656469666E6F63;
  if (*v0 != 1)
  {
    v1 = 0x676E69646E756F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1D9BEB528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9BF8F18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9BEB550(uint64_t a1)
{
  v2 = sub_1D9BF5394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9BEB58C(uint64_t a1)
{
  v2 = sub_1D9BF5394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1D9BEB684(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v7)
    {
      return 0;
    }

    goto LABEL_7;
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 24);
  v13 = sub_1D9C7E7DC();
  result = 0;
  if (v13)
  {
    v4 = v16;
    v3 = v17;
    if (v2 == v7)
    {
LABEL_7:
      v14 = v5;
      v15 = v6;
      v18.origin.x = v8;
      v18.origin.y = v9;
      v18.size.width = v10;
      v18.size.height = v11;
      return CGRectEqualToRect(*&v3, v18);
    }
  }

  return result;
}

uint64_t sub_1D9BEB74C()
{
  v1 = 0x6E656469666E6F63;
  if (*v0 != 1)
  {
    v1 = 0x676E69646E756F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1D9BEB7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9BF903C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9BEB7D8(uint64_t a1)
{
  v2 = sub_1D9BF53E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9BEB814(uint64_t a1)
{
  v2 = sub_1D9BF53E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9BEB894(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v16 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v15 = *v4;
  v10 = *(v4 + 3);
  v13 = *(v4 + 5);
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16();
  sub_1D9C7E96C();
  LOBYTE(v19) = 0;
  v11 = v17;
  sub_1D9C7E6EC();
  if (!v11)
  {
    LOBYTE(v19) = 1;
    sub_1D9C7E71C();
    v19 = v14;
    v20 = v13;
    v18 = 2;
    sub_1D99EA188();
    sub_1D9C7E74C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D9BEBAA0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  sub_1D9C7DD6C();
  sub_1D9C7E91C();
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  MinX = CGRectGetMinX(v10);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v11.origin.x = v1;
  v11.origin.y = v2;
  v11.size.width = v3;
  v11.size.height = v4;
  MaxX = CGRectGetMaxX(v11);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v12.origin.x = v1;
  v12.origin.y = v2;
  v12.size.width = v3;
  v12.size.height = v4;
  MinY = CGRectGetMinY(v12);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  MaxY = CGRectGetMaxY(v13);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  return MEMORY[0x1DA73EB00](*&MaxY);
}

uint64_t sub_1D9BEBB9C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  sub_1D9C7E91C();
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  MinX = CGRectGetMinX(v10);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v11.origin.x = v1;
  v11.origin.y = v2;
  v11.size.width = v3;
  v11.size.height = v4;
  MaxX = CGRectGetMaxX(v11);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v12.origin.x = v1;
  v12.origin.y = v2;
  v12.size.width = v3;
  v12.size.height = v4;
  MinY = CGRectGetMinY(v12);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  MaxY = CGRectGetMaxY(v13);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9BEBD14@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v21 = a4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3();
  sub_1D9C7E95C();
  if (v4)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v10 = v21;
  v11 = v22;
  LOBYTE(v24) = 0;
  v12 = sub_1D9C7E5FC();
  v14 = v13;
  v20 = v12;
  LOBYTE(v24) = 1;
  sub_1D9C7E62C();
  v16 = v15;
  v23 = 2;
  sub_1D99EA7B8();
  sub_1D9C7E65C();
  (*(v7 + 8))(v9, v11);
  v18 = v24;
  v19 = v25;
  *v10 = v20;
  *(v10 + 8) = v14;
  *(v10 + 16) = v16;
  *(v10 + 24) = v18;
  *(v10 + 40) = v19;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1D9BEBF7C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  sub_1D9C7E91C();
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  MinX = CGRectGetMinX(v10);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v11.origin.x = v1;
  v11.origin.y = v2;
  v11.size.width = v3;
  v11.size.height = v4;
  MaxX = CGRectGetMaxX(v11);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v12.origin.x = v1;
  v12.origin.y = v2;
  v12.size.width = v3;
  v12.size.height = v4;
  MinY = CGRectGetMinY(v12);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  MaxY = CGRectGetMaxY(v13);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  return sub_1D9C7E93C();
}

uint64_t static VisualUnderstanding.ScenenetAnnotations.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1D9A31C78(*a1, *a2) & (v2 == v3);
}

uint64_t sub_1D9BEC0E8()
{
  if (*v0)
  {
    return 0x6E6F697369766572;
  }

  else
  {
    return 0x736E6F69676572;
  }
}

uint64_t sub_1D9BEC124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E6F69676572 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D9C7E7DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9C7E7DC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9BEC200(uint64_t a1)
{
  v2 = sub_1D9BF543C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9BEC23C(uint64_t a1)
{
  v2 = sub_1D9BF543C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualUnderstanding.ScenenetAnnotations.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB541B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF543C();

  sub_1D9C7E96C();
  v13 = v8;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB541C0);
  sub_1D9BF5490();
  sub_1D9C7E74C();

  if (!v2)
  {
    v11 = 1;
    sub_1D9C7E73C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisualUnderstanding.ScenenetAnnotations.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1D9A2F590(a1, v2);
  return MEMORY[0x1DA73EAC0](v3);
}

uint64_t VisualUnderstanding.ScenenetAnnotations.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9C7E8DC();
  sub_1D9A2F590(v4, v1);
  MEMORY[0x1DA73EAC0](v2);
  return sub_1D9C7E93C();
}

uint64_t VisualUnderstanding.ScenenetAnnotations.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB541C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF543C();
  sub_1D9C7E95C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB541C0);
  v12[15] = 0;
  sub_1D9BF5568();
  sub_1D9C7E65C();
  v9 = v13;
  v12[14] = 1;
  v10 = sub_1D9C7E64C();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1D9BEC6CC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1D9A31C78(*a1, *a2) & (v2 == v3);
}

uint64_t sub_1D9BEC708()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9C7E8DC();
  sub_1D9A2F590(v4, v1);
  MEMORY[0x1DA73EAC0](v2);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9BEC764(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1D9A2F590(a1, v2);
  return MEMORY[0x1DA73EAC0](v3);
}

uint64_t sub_1D9BEC798()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9C7E8DC();
  sub_1D9A2F590(v4, v1);
  MEMORY[0x1DA73EAC0](v2);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9BEC7F4()
{
  v1 = 0x6C6562616CLL;
  v2 = 0x6E756F4365636166;
  if (*v0 != 2)
  {
    v2 = 0x676E69646E756F62;
  }

  if (*v0)
  {
    v1 = 0x6E656469666E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D9BEC87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9BF915C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9BEC8A4(uint64_t a1)
{
  v2 = sub_1D9BF5640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9BEC8E0(uint64_t a1)
{
  v2 = sub_1D9BF5640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualUnderstanding.ReducePersonOverTriggerRegionalAnnotation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB541D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v12 = *(v1 + 20);
  v7 = *(v1 + 24);
  v10 = *(v1 + 40);
  v11 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF5640();
  sub_1D9C7E96C();
  LOBYTE(v15) = 0;
  v8 = v13;
  sub_1D9C7E6EC();
  if (!v8)
  {
    LOBYTE(v15) = 1;
    sub_1D9C7E71C();
    LOBYTE(v15) = 2;
    sub_1D9C7E76C();
    v15 = v11;
    v16 = v10;
    v14 = 3;
    sub_1D99EA188();
    sub_1D9C7E74C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t VisualUnderstanding.ReducePersonOverTriggerRegionalAnnotation.hash(into:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  sub_1D9C7DD6C();
  sub_1D9C7E91C();
  sub_1D9C7E91C();
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  MinX = CGRectGetMinX(v10);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v11.origin.x = v1;
  v11.origin.y = v2;
  v11.size.width = v3;
  v11.size.height = v4;
  MaxX = CGRectGetMaxX(v11);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v12.origin.x = v1;
  v12.origin.y = v2;
  v12.size.width = v3;
  v12.size.height = v4;
  MinY = CGRectGetMinY(v12);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  MaxY = CGRectGetMaxY(v13);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  return MEMORY[0x1DA73EB00](*&MaxY);
}

uint64_t VisualUnderstanding.ReducePersonOverTriggerRegionalAnnotation.hashValue.getter()
{
  sub_1D9C7E8DC();
  VisualUnderstanding.ReducePersonOverTriggerRegionalAnnotation.hash(into:)();
  return sub_1D9C7E93C();
}

uint64_t VisualUnderstanding.ReducePersonOverTriggerRegionalAnnotation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB541E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF5640();
  sub_1D9C7E95C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v27[0]) = 0;
  v9 = sub_1D9C7E5FC();
  v11 = v10;
  v12 = v9;
  LOBYTE(v27[0]) = 1;
  sub_1D9C7E62C();
  v14 = v13;
  LOBYTE(v27[0]) = 2;
  v22 = sub_1D9C7E67C();
  v33 = 3;
  sub_1D99EA7B8();
  sub_1D9C7E65C();
  (*(v6 + 8))(v8, v5);
  v15 = v34;
  v17 = v35;
  v16 = v36;
  *&v23 = v12;
  *(&v23 + 1) = v11;
  *&v24 = __PAIR64__(v22, v14);
  v18 = v22;
  *(&v24 + 1) = v34;
  v25 = v35;
  v26 = v36;
  v19 = v24;
  *a2 = v23;
  *(a2 + 16) = v19;
  *(a2 + 32) = v25;
  *(a2 + 48) = v26;
  sub_1D9BF5694(&v23, v27);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v27[0] = v12;
  v27[1] = v11;
  v28 = v14;
  v29 = v18;
  v30 = v15;
  v31 = v17;
  v32 = v16;
  return sub_1D9BF56CC(v27);
}

uint64_t sub_1D9BECF94()
{
  sub_1D9C7E8DC();
  VisualUnderstanding.ReducePersonOverTriggerRegionalAnnotation.hash(into:)();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9BECFD8()
{
  sub_1D9C7E8DC();
  VisualUnderstanding.ReducePersonOverTriggerRegionalAnnotation.hash(into:)();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9BED038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F69676572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9C7E7DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9BED0C0(uint64_t a1)
{
  v2 = sub_1D9BF56FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9BED0FC(uint64_t a1)
{
  v2 = sub_1D9BF56FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualUnderstanding.ReducePersonOverTriggerAnnotation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB541E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF56FC();

  sub_1D9C7E96C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB541F8);
  sub_1D9BF5750();
  sub_1D9C7E74C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t VisualUnderstanding.ReducePersonOverTriggerAnnotation.hashValue.getter()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A2F438(v3, v1);
  return sub_1D9C7E93C();
}

uint64_t VisualUnderstanding.ReducePersonOverTriggerAnnotation.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54210);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF56FC();
  sub_1D9C7E95C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB541F8);
    sub_1D9BF5828();
    sub_1D9C7E65C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1D9BED4B8()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A2F438(v3, v1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9BED508()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A2F438(v3, v1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9BED550()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000010;
    if (v1 != 1)
    {
      v5 = 0x6F6E6E417766736ELL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6F6E6E4165636166;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    if (v1 != 5)
    {
      v2 = 0xD000000000000021;
    }

    v3 = 0xD000000000000012;
    if (v1 == 3)
    {
      v3 = 0x6F6E6E4174786574;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D9BED63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9BF92D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9BED670(uint64_t a1)
{
  v2 = sub_1D9BF5900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9BED6AC(uint64_t a1)
{
  v2 = sub_1D9BF5900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualUnderstanding.Annotation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54228);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v23 = v1[2];
  v24 = v8;
  v11 = v1[5];
  v21 = v1[4];
  v22 = v10;
  v13 = v1[6];
  v12 = v1[7];
  v19 = v11;
  v20 = v13;
  v18 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF5900();

  v14 = v4;
  sub_1D9C7E96C();
  v25 = v9;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB541C0);
  sub_1D9BF5490();
  sub_1D9C7E6DC();
  if (v2)
  {

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v15 = v23;

    v25 = v24;
    v27 = 1;
    sub_1D9C7E6DC();
    v25 = v15;
    v27 = 2;
    sub_1D9C7E6DC();
    v25 = v22;
    v27 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54230);
    sub_1D9BF5954();
    sub_1D9C7E6DC();
    v25 = v21;
    v27 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54238);
    sub_1D9BF5A2C();
    sub_1D9C7E6DC();
    v25 = v19;
    v26 = v20;
    v27 = 5;
    sub_1D9BF5B04();

    sub_1D9C7E6DC();

    v25 = v18;
    v27 = 6;
    sub_1D9BF5B58();

    sub_1D9C7E6DC();

    return (*(v5 + 8))(v7, v14);
  }
}

uint64_t VisualUnderstanding.Annotation.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  if (*v1)
  {
    sub_1D9C7E8FC();
    sub_1D9A2F590(a1, v4);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D9C7E8FC();
    if (v3)
    {
LABEL_3:
      sub_1D9C7E8FC();
      sub_1D9A2F590(a1, v3);
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  sub_1D9C7E8FC();
  if (v5)
  {
LABEL_4:
    sub_1D9C7E8FC();
    sub_1D9A2F590(a1, v5);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_18:
    sub_1D9C7E8FC();
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_19:
    sub_1D9C7E8FC();
    if (v7)
    {
      goto LABEL_13;
    }

LABEL_20:
    sub_1D9C7E8FC();
    if (v9)
    {
      goto LABEL_14;
    }

    return sub_1D9C7E8FC();
  }

LABEL_17:
  sub_1D9C7E8FC();
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_5:
  sub_1D9C7E8FC();
  MEMORY[0x1DA73EAC0](*(v6 + 16));
  v11 = *(v6 + 16);
  if (v11)
  {
    v12 = v6 + 40;
    do
    {
      v13 = *v12;
      v14 = *(v12 + 8);
      *&v26 = *(v12 - 8);
      *(&v26 + 1) = v13;
      *v27 = v14;
      v15 = *(v12 + 32);
      *&v27[8] = *(v12 + 16);
      *&v27[24] = v15;

      VisualUnderstanding.RegionalAnnotation.hash(into:)(a1);

      v12 += 56;
      --v11;
    }

    while (v11);
  }

  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_9:
  sub_1D9C7E8FC();
  MEMORY[0x1DA73EAC0](*(v8 + 16));
  v16 = *(v8 + 16);
  if (v16)
  {
    v17 = (v8 + 32);
    do
    {
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[3];
      v24[2] = v17[2];
      v24[3] = v20;
      v24[0] = v18;
      v24[1] = v19;
      v21 = v17[1];
      v26 = *v17;
      *v27 = v21;
      v22 = v17[3];
      *&v27[16] = v17[2];
      *&v27[32] = v22;
      sub_1D99DEC94(v24, v25);
      DetectedBarcode.hash(into:)();
      v25[0] = v26;
      v25[1] = *v27;
      v25[2] = *&v27[16];
      v25[3] = *&v27[32];
      sub_1D99DECF0(v25);
      v17 += 4;
      --v16;
    }

    while (v16);
  }

  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_13:
  sub_1D9C7E8FC();

  sub_1D9A2F590(a1, v7);
  MEMORY[0x1DA73EAC0](v10);

  if (v9)
  {
LABEL_14:
    sub_1D9C7E8FC();

    sub_1D9A2F438(a1, v9);
  }

  return sub_1D9C7E8FC();
}

uint64_t VisualUnderstanding.Annotation.hashValue.getter()
{
  sub_1D9C7E8DC();
  VisualUnderstanding.Annotation.hash(into:)(v1);
  return sub_1D9C7E93C();
}

uint64_t VisualUnderstanding.Annotation.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54240);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF5900();
  sub_1D9C7E95C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB541C0);
  LOBYTE(v29) = 0;
  sub_1D9BF5568();
  sub_1D9C7E5EC();
  v27 = v33;
  LOBYTE(v29) = 1;
  sub_1D9C7E5EC();
  v26 = v33;
  LOBYTE(v29) = 2;
  sub_1D9C7E5EC();
  v9 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54230);
  LOBYTE(v29) = 3;
  sub_1D9BF5BAC();
  sub_1D9C7E5EC();
  v10 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54238);
  LOBYTE(v29) = 4;
  sub_1D9BF5C84();
  sub_1D9C7E5EC();
  v25 = v33;
  LOBYTE(v29) = 5;
  sub_1D9BF5D5C();
  sub_1D9C7E5EC();
  v24 = v33;
  v23 = v34;
  v41 = 6;
  sub_1D9BF5DB0();
  sub_1D9C7E5EC();
  (*(v6 + 8))(v8, v5);
  v22 = v42;
  v11 = v9;
  v13 = v26;
  v12 = v27;
  *&v29 = v27;
  *(&v29 + 1) = v26;
  *&v30 = v11;
  *(&v30 + 1) = v10;
  v14 = v25;
  v15 = v24;
  *&v31 = v25;
  *(&v31 + 1) = v24;
  v16 = v23;
  *&v32 = v23;
  *(&v32 + 1) = v42;
  v17 = v30;
  v18 = v28;
  *v28 = v29;
  v18[1] = v17;
  v19 = v32;
  v18[2] = v31;
  v18[3] = v19;
  sub_1D9BF5140(&v29, &v33);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v33 = v12;
  v34 = v13;
  v35 = v11;
  v36 = v10;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v22;
  return sub_1D9B5B7EC(&v33);
}

uint64_t sub_1D9BEE298()
{
  sub_1D9C7E8DC();
  VisualUnderstanding.Annotation.hash(into:)(v1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9BEE2DC()
{
  sub_1D9C7E8DC();
  VisualUnderstanding.Annotation.hash(into:)(v1);
  return sub_1D9C7E93C();
}

uint64_t VisualUnderstanding.ImageRegion.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v38.origin.x = *v0;
  v38.origin.y = v2;
  v38.size.width = v3;
  v38.size.height = v4;
  MinX = CGRectGetMinX(v38);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v39.origin.x = v1;
  v39.origin.y = v2;
  v39.size.width = v3;
  v39.size.height = v4;
  MaxX = CGRectGetMaxX(v39);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v40.origin.x = v1;
  v40.origin.y = v2;
  v40.size.width = v3;
  v40.size.height = v4;
  MinY = CGRectGetMinY(v40);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v41.origin.x = v1;
  v41.origin.y = v2;
  v41.size.width = v3;
  v41.size.height = v4;
  MaxY = CGRectGetMaxY(v41);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  v9 = *(v0 + 48);
  result = MEMORY[0x1DA73EAC0](*(v9 + 16));
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = (v9 + 32);
    do
    {
      v13 = v12[1];
      v25[0] = *v12;
      v25[1] = v13;
      v14 = v12[2];
      v15 = v12[3];
      v16 = v12[5];
      v25[4] = v12[4];
      v25[5] = v16;
      v25[2] = v14;
      v25[3] = v15;
      v17 = v12[6];
      v18 = v12[7];
      v19 = v12[8];
      *&v26[13] = *(v12 + 141);
      v25[7] = v18;
      *v26 = v19;
      v25[6] = v17;
      v20 = v12[7];
      v35 = v12[6];
      v36 = v20;
      v37[0] = v12[8];
      *(v37 + 13) = *(v12 + 141);
      v21 = v12[3];
      v31 = v12[2];
      v32 = v21;
      v22 = v12[5];
      v33 = v12[4];
      v34 = v22;
      v23 = *v12;
      v24 = v12[1];
      v12 += 10;
      v29 = v23;
      v30 = v24;
      sub_1D99AE054(v25, v27);
      VisualUnderstanding.DomainInfo.hash(into:)();
      v27[6] = v35;
      v27[7] = v36;
      v28[0] = v37[0];
      *(v28 + 13) = *(v37 + 13);
      v27[2] = v31;
      v27[3] = v32;
      v27[4] = v33;
      v27[5] = v34;
      v27[0] = v29;
      v27[1] = v30;
      result = sub_1D99AE0B0(v27);
      --v11;
    }

    while (v11);
  }

  return result;
}

__n128 VisualUnderstanding.ImageRegion.boundingBox.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D9BEE548(char a1)
{
  result = 0x676E69646E756F62;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x79676F6C6F746E6FLL;
      break;
    case 3:
      result = 0x69616D6F446C6C61;
      break;
    case 4:
      result = 0x726F746365746564;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0x65726F6373;
      break;
    case 7:
      result = 0x65726F6353786F62;
      break;
    case 8:
      result = 0x6552657372616F63;
      break;
    case 9:
      result = 0x49656C6F68577369;
      break;
    case 10:
      result = 0x736C616E676973;
      break;
    case 11:
      result = 0x55676E6967676F6CLL;
      break;
    case 12:
      result = 0x6570756F72477369;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9BEE710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9BF9520(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9BEE744(uint64_t a1)
{
  v2 = sub_1D9BF5E04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9BEE780(uint64_t a1)
{
  v2 = sub_1D9BF5E04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualUnderstanding.ImageRegion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54248);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF5E04();
  sub_1D9C7E96C();
  v9 = v3[1];
  v15 = *v3;
  v16 = v9;
  v14 = 0;
  sub_1D99EA188();
  sub_1D9C7E74C();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1D9C7E6FC();
    *&v15 = *(v3 + 5);
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54250);
    sub_1D9BF5E58();
    sub_1D9C7E74C();
    *&v15 = *(v3 + 6);
    v14 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54258);
    sub_1D9BF5EDC();
    sub_1D9C7E74C();
    *&v15 = *(v3 + 7);
    v14 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54168);
    sub_1D9BF63EC(&qword_1EDD2A798, &unk_1EDD2BDD0);
    sub_1D9C7E74C();
    *&v15 = *(v3 + 8);
    v14 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54260);
    sub_1D9BF5FB4();
    sub_1D9C7E74C();
    LOBYTE(v15) = 6;
    sub_1D9C7E71C();
    LOBYTE(v15) = 7;
    sub_1D9C7E71C();
    v10 = *(v3 + 12);
    v15 = v3[5];
    *&v16 = v10;
    v14 = 8;
    sub_1D9BF608C();
    sub_1D9C7E6DC();
    LOBYTE(v15) = 9;
    sub_1D9C7E6FC();
    *&v15 = *(v3 + 14);
    v14 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54268);
    sub_1D9BF60E0();
    sub_1D9C7E74C();
    v11 = type metadata accessor for VisualUnderstanding.ImageRegion();
    LOBYTE(v15) = 11;
    sub_1D9C7B93C();
    sub_1D9BF6E38(&qword_1EDD2C310, MEMORY[0x1E69695A8]);
    sub_1D9C7E74C();
    LOBYTE(v15) = 12;
    sub_1D9C7E6FC();
    *&v15 = *(v3 + *(v11 + 68));
    v14 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54270);
    sub_1D9BF61B8();
    sub_1D9C7E74C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t VisualUnderstanding.ImageRegion.hashValue.getter()
{
  sub_1D9C7E8DC();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v38.origin.x = *v0;
  v38.origin.y = v2;
  v38.size.width = v3;
  v38.size.height = v4;
  MinX = CGRectGetMinX(v38);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v39.origin.x = v1;
  v39.origin.y = v2;
  v39.size.width = v3;
  v39.size.height = v4;
  MaxX = CGRectGetMaxX(v39);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v40.origin.x = v1;
  v40.origin.y = v2;
  v40.size.width = v3;
  v40.size.height = v4;
  MinY = CGRectGetMinY(v40);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v41.origin.x = v1;
  v41.origin.y = v2;
  v41.size.width = v3;
  v41.size.height = v4;
  MaxY = CGRectGetMaxY(v41);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  v9 = *(v0 + 48);
  MEMORY[0x1DA73EAC0](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      v12 = v11[1];
      v25[0] = *v11;
      v25[1] = v12;
      v13 = v11[2];
      v14 = v11[3];
      v15 = v11[5];
      v25[4] = v11[4];
      v25[5] = v15;
      v25[2] = v13;
      v25[3] = v14;
      v16 = v11[6];
      v17 = v11[7];
      v18 = v11[8];
      *&v26[13] = *(v11 + 141);
      v25[7] = v17;
      *v26 = v18;
      v25[6] = v16;
      v19 = v11[7];
      v35 = v11[6];
      v36 = v19;
      v37[0] = v11[8];
      *(v37 + 13) = *(v11 + 141);
      v20 = v11[3];
      v31 = v11[2];
      v32 = v20;
      v21 = v11[5];
      v33 = v11[4];
      v34 = v21;
      v22 = *v11;
      v23 = v11[1];
      v11 += 10;
      v29 = v22;
      v30 = v23;
      sub_1D99AE054(v25, v27);
      VisualUnderstanding.DomainInfo.hash(into:)();
      v27[6] = v35;
      v27[7] = v36;
      v28[0] = v37[0];
      *(v28 + 13) = *(v37 + 13);
      v27[2] = v31;
      v27[3] = v32;
      v27[4] = v33;
      v27[5] = v34;
      v27[0] = v29;
      v27[1] = v30;
      sub_1D99AE0B0(v27);
      --v10;
    }

    while (v10);
  }

  return sub_1D9C7E93C();
}

uint64_t VisualUnderstanding.ImageRegion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D9C7B93C();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54278);
  v8 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v10 = &v39 - v9;
  v11 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v11);
  v50 = *(v13 + 60);
  v53 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9C7B92C();
  v14 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D9BF5E04();
  sub_1D9C7E95C();
  if (v2)
  {
    v54 = v2;
    v16 = 0;
    v17 = 0;
    v18 = v53;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0Tm(v49);

    sub_1D99F2604(v16, v17);

    return (*(v51 + 8))(&v18[v50], v52);
  }

  v45 = a2;
  v46 = v7;
  v47 = v8;
  v57 = 0;
  sub_1D99EA7B8();
  v15 = v48;
  sub_1D9C7E65C();
  v20 = v56;
  v21 = v53;
  *v53 = v55;
  *(v21 + 1) = v20;
  LOBYTE(v55) = 1;
  v22 = sub_1D9C7E60C();
  v23 = v47;
  v21[32] = v22 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54250);
  v57 = 2;
  sub_1D9BF6290();
  sub_1D9C7E65C();
  v44 = v55;
  *(v21 + 5) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54258);
  v57 = 3;
  sub_1D9BF6314();
  sub_1D9C7E65C();
  v43 = v55;
  *(v21 + 6) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54168);
  v57 = 4;
  sub_1D9BF63EC(&qword_1EDD2A790, &qword_1EDD2BDC8);
  sub_1D9C7E65C();
  v42 = v55;
  *(v21 + 7) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54260);
  v57 = 5;
  sub_1D9BF6488();
  sub_1D9C7E65C();
  v24 = v55;
  *(v21 + 8) = v55;
  LOBYTE(v55) = 6;
  sub_1D9C7E62C();
  *(v21 + 18) = v25;
  LOBYTE(v55) = 7;
  sub_1D9C7E62C();
  v54 = 0;
  v41 = v24;
  v18 = v21;
  *(v21 + 19) = v26;
  v57 = 8;
  sub_1D9BF6560();
  v27 = v54;
  sub_1D9C7E5EC();
  v54 = v27;
  if (v27)
  {
    (*(v23 + 8))(v10, v15);
    v16 = 0;
    v17 = 0;
    goto LABEL_4;
  }

  v28 = *(&v55 + 1);
  v29 = v56;
  v40 = v55;
  *(v21 + 10) = v55;
  *(v21 + 11) = v28;
  v17 = v28;
  *(v21 + 12) = v29;
  LOBYTE(v55) = 9;
  v30 = v54;
  v31 = sub_1D9C7E60C();
  v54 = v30;
  if (v30 || (v53[104] = v31 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54268), v57 = 10, sub_1D9BF65B4(), v32 = v54, sub_1D9C7E65C(), (v54 = v32) != 0) || (*(v53 + 14) = v55, LOBYTE(v55) = 11, sub_1D9BF6E38(&unk_1EDD2C300, MEMORY[0x1E69695A8]), v33 = v54, sub_1D9C7E65C(), (v54 = v33) != 0) || ((*(v51 + 40))(&v53[v50], v46, v52), LOBYTE(v55) = 12, v34 = v54, v35 = sub_1D9C7E60C(), (v54 = v34) != 0) || (v53[*(v11 + 64)] = v35 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54270), v57 = 13, sub_1D9BF668C(), v36 = v54, sub_1D9C7E65C(), (v54 = v36) != 0))
  {
    (*(v47 + 8))(v10, v48);
    v18 = v53;
    v16 = v40;
    goto LABEL_4;
  }

  v37 = *(v11 + 68);
  (*(v47 + 8))(v10, v48);
  v38 = v53;
  *&v53[v37] = v55;
  sub_1D99CC070(v38, v45, type metadata accessor for VisualUnderstanding.ImageRegion);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  return sub_1D99CC0F8(v38, type metadata accessor for VisualUnderstanding.ImageRegion);
}

uint64_t sub_1D9BEF874()
{
  sub_1D9C7E8DC();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v38.origin.x = *v0;
  v38.origin.y = v2;
  v38.size.width = v3;
  v38.size.height = v4;
  MinX = CGRectGetMinX(v38);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v39.origin.x = v1;
  v39.origin.y = v2;
  v39.size.width = v3;
  v39.size.height = v4;
  MaxX = CGRectGetMaxX(v39);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v40.origin.x = v1;
  v40.origin.y = v2;
  v40.size.width = v3;
  v40.size.height = v4;
  MinY = CGRectGetMinY(v40);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v41.origin.x = v1;
  v41.origin.y = v2;
  v41.size.width = v3;
  v41.size.height = v4;
  MaxY = CGRectGetMaxY(v41);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  v9 = *(v0 + 48);
  MEMORY[0x1DA73EAC0](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      v12 = v11[1];
      v25[0] = *v11;
      v25[1] = v12;
      v13 = v11[2];
      v14 = v11[3];
      v15 = v11[5];
      v25[4] = v11[4];
      v25[5] = v15;
      v25[2] = v13;
      v25[3] = v14;
      v16 = v11[6];
      v17 = v11[7];
      v18 = v11[8];
      *&v26[13] = *(v11 + 141);
      v25[7] = v17;
      *v26 = v18;
      v25[6] = v16;
      v19 = v11[7];
      v35 = v11[6];
      v36 = v19;
      v37[0] = v11[8];
      *(v37 + 13) = *(v11 + 141);
      v20 = v11[3];
      v31 = v11[2];
      v32 = v20;
      v21 = v11[5];
      v33 = v11[4];
      v34 = v21;
      v22 = *v11;
      v23 = v11[1];
      v11 += 10;
      v29 = v22;
      v30 = v23;
      sub_1D99AE054(v25, v27);
      VisualUnderstanding.DomainInfo.hash(into:)();
      v27[6] = v35;
      v27[7] = v36;
      v28[0] = v37[0];
      *(v28 + 13) = *(v37 + 13);
      v27[2] = v31;
      v27[3] = v32;
      v27[4] = v33;
      v27[5] = v34;
      v27[0] = v29;
      v27[1] = v30;
      sub_1D99AE0B0(v27);
      --v10;
    }

    while (v10);
  }

  return sub_1D9C7E93C();
}

uint64_t VisualUnderstanding.DomainInfo.glyphName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t VisualUnderstanding.DomainInfo.displayLabel.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t VisualUnderstanding.DomainInfo.richLabelKnowledgeID.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t VisualUnderstanding.DomainInfo.richLabelKnowledgeID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

unint64_t sub_1D9BEFC08(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
      result = 0x696F506C61636F66;
      break;
    case 2:
      result = 0x6D614E6870796C67;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x4C79616C70736964;
      break;
    case 5:
      result = 0x4D79616C70736964;
      break;
    case 6:
      result = 0x79676F6C6F746E6FLL;
      break;
    case 7:
      result = 0x65726F6373;
      break;
    case 8:
      result = 0x726F746365746564;
      break;
    case 9:
      result = 0x6353657372616F63;
      break;
    case 10:
      result = 0x7463656C65537369;
      break;
    case 11:
      result = 0x6863726165537369;
      break;
    case 12:
      result = 0x72656E726F437369;
      break;
    case 13:
      result = 0x5374736575716572;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD000000000000019;
      break;
    case 18:
      result = 0x6E6F43776F4C7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9BEFE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9BF99B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9BEFEA0(uint64_t a1)
{
  v2 = sub_1D9BF6764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9BEFEDC(uint64_t a1)
{
  v2 = sub_1D9BF6764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualUnderstanding.DomainInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54280);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v10 = *(v1 + 3);
  v39 = *(v1 + 4);
  v40 = v10;
  v46 = v1[40];
  v11 = *(v1 + 7);
  v37 = *(v1 + 6);
  v38 = v11;
  v12 = *(v1 + 9);
  v35 = *(v1 + 8);
  v36 = v12;
  v13 = *(v1 + 11);
  v31 = *(v1 + 10);
  v32 = v13;
  v14 = *(v1 + 13);
  v33 = *(v1 + 12);
  v34 = v14;
  v30 = v1[124];
  v29 = v1[125];
  v28 = v1[126];
  v27 = v1[127];
  v26 = v1[128];
  v25 = v1[129];
  v15 = *(v1 + 18);
  v24 = *(v1 + 17);
  v16 = v1[156];
  v17 = a1[3];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1D9BF6764();
  sub_1D9C7E96C();
  LOBYTE(v42) = v7;
  v47 = 0;
  sub_1D99FEEDC();
  v21 = v41;
  sub_1D9C7E74C();
  if (v21)
  {
    return (*(v4 + 8))(v6, v20);
  }

  v41 = v15;
  v23[3] = v16;
  v42 = v8;
  v43 = v9;
  v47 = 1;
  type metadata accessor for CGPoint(0);
  sub_1D9BF6E38(&qword_1EDD2A638, type metadata accessor for CGPoint);
  sub_1D9C7E74C();
  LOBYTE(v42) = 2;
  sub_1D9C7E6BC();
  LOBYTE(v42) = 3;
  sub_1D9C7E6FC();
  LOBYTE(v42) = 4;
  sub_1D9C7E6BC();
  LOBYTE(v42) = 5;
  sub_1D9C7E6BC();
  v42 = v31;
  v43 = v32;
  v44 = v33;
  v45 = v34;
  v47 = 6;
  sub_1D99FE1B4(v31, v32);
  sub_1D99FEF30();
  sub_1D9C7E6DC();
  sub_1D99FEF84(v42, v43);
  LOBYTE(v42) = 7;
  sub_1D9C7E71C();
  LOBYTE(v42) = 8;
  sub_1D9C7E71C();
  LOBYTE(v42) = 9;
  sub_1D9C7E71C();
  LOBYTE(v42) = 10;
  sub_1D9C7E6FC();
  LOBYTE(v42) = 11;
  sub_1D9C7E6FC();
  LOBYTE(v42) = 12;
  sub_1D9C7E6FC();
  LOBYTE(v42) = 13;
  sub_1D9C7E6FC();
  LOBYTE(v42) = 14;
  sub_1D9C7E6FC();
  LOBYTE(v42) = 15;
  sub_1D9C7E6FC();
  LOBYTE(v42) = 16;
  sub_1D9C7E6BC();
  LOBYTE(v42) = 17;
  sub_1D9C7E71C();
  LOBYTE(v42) = 18;
  sub_1D9C7E6FC();
  return (*(v4 + 8))(0, v20);
}

uint64_t VisualUnderstanding.DomainInfo.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  v6 = *(v0 + 88);
  v7 = *(v0 + 144);
  sub_1D9A15C94(*v0);
  sub_1D9C7DD6C();

  if (v1 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v1;
  }

  MEMORY[0x1DA73EB00](*&v8);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x1DA73EB00](*&v9);
  sub_1D9C7E8FC();
  if (v3)
  {
    sub_1D9C7DD6C();
  }

  sub_1D9C7E8FC();
  if (v4)
  {
    sub_1D9C7E8FC();
    sub_1D9C7DD6C();
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_1D9C7E8FC();
    if (v6)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  sub_1D9C7E8FC();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_1D9C7E8FC();
  sub_1D9C7DD6C();
  if (v6)
  {
LABEL_12:
    sub_1D9C7E8FC();
    sub_1D9C7DD6C();
    sub_1D9C7DD6C();
    goto LABEL_16;
  }

LABEL_15:
  sub_1D9C7E8FC();
LABEL_16:
  sub_1D9C7E91C();
  sub_1D9C7E91C();
  sub_1D9C7E91C();
  sub_1D9C7E8FC();
  sub_1D9C7E8FC();
  sub_1D9C7E8FC();
  sub_1D9C7E8FC();
  sub_1D9C7E8FC();
  sub_1D9C7E8FC();
  sub_1D9C7E8FC();
  if (v7)
  {
    sub_1D9C7DD6C();
  }

  sub_1D9C7E91C();
  return sub_1D9C7E8FC();
}

uint64_t VisualUnderstanding.DomainInfo.hashValue.getter()
{
  sub_1D9C7E8DC();
  VisualUnderstanding.DomainInfo.hash(into:)();
  return sub_1D9C7E93C();
}

uint64_t VisualUnderstanding.DomainInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54288);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - v7;
  v9 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D9BF6764();
  sub_1D9C7E95C();
  if (v2)
  {
    v112 = v2;
    __swift_destroy_boxed_opaque_existential_0Tm(v67);

    sub_1D99FEF84(0, 0);
  }

  else
  {
    v10 = a2;
    LOBYTE(v68) = 0;
    sub_1D99FF02C();
    sub_1D9C7E65C();
    v11 = v77;
    type metadata accessor for CGPoint(0);
    LOBYTE(v68) = 1;
    sub_1D9BF6E38(&qword_1EDD2A630, type metadata accessor for CGPoint);
    sub_1D9C7E65C();
    v13 = v77;
    v12 = v78;
    LOBYTE(v77) = 2;
    v15 = sub_1D9C7E5AC();
    v66 = v16;
    LOBYTE(v77) = 3;
    v17 = sub_1D9C7E60C();
    LOBYTE(v77) = 4;
    v18 = sub_1D9C7E5AC();
    v64 = v17;
    v19 = v18;
    v65 = v20;
    LOBYTE(v77) = 5;
    v61 = sub_1D9C7E5AC();
    v62 = v19;
    v63 = v21;
    LOBYTE(v68) = 6;
    sub_1D99FF080();
    sub_1D9C7E5EC();
    v57 = v15;
    v58 = v11;
    v22 = v78;
    v59 = v6;
    v60 = v77;
    v23 = v79;
    v24 = v80;
    sub_1D99FEF84(0, 0);
    LOBYTE(v77) = 7;
    sub_1D9C7E62C();
    v26 = v25;
    LOBYTE(v77) = 8;
    sub_1D9C7E62C();
    v112 = 0;
    v28 = v27;
    LOBYTE(v77) = 9;
    sub_1D9C7E62C();
    v112 = 0;
    v30 = v29;
    LOBYTE(v77) = 10;
    v56 = sub_1D9C7E60C();
    v112 = 0;
    LOBYTE(v77) = 11;
    v55 = sub_1D9C7E60C();
    v112 = 0;
    LOBYTE(v77) = 12;
    v54 = sub_1D9C7E60C();
    v112 = 0;
    LOBYTE(v77) = 13;
    v53 = sub_1D9C7E60C();
    v112 = 0;
    LOBYTE(v77) = 14;
    v52 = sub_1D9C7E60C();
    v112 = 0;
    LOBYTE(v77) = 15;
    v51 = sub_1D9C7E60C();
    v112 = 0;
    LOBYTE(v77) = 16;
    v50 = sub_1D9C7E5AC();
    v112 = 0;
    v32 = v31;
    LOBYTE(v77) = 17;
    sub_1D9C7E62C();
    v112 = 0;
    v34 = v33;
    v107 = 18;
    v35 = sub_1D9C7E60C();
    v112 = 0;
    v36 = v35;
    HIDWORD(v49) = v64 & 1;
    v64 = v56 & 1;
    v37 = v55 & 1;
    v55 = v54 & 1;
    v56 = v37;
    v38 = v53 & 1;
    v53 = v52 & 1;
    v54 = v38;
    v52 = v51 & 1;
    (*(v59 + 8))(v8, v5);
    LODWORD(v59) = v36 & 1;
    LOBYTE(v68) = v58;
    *(&v68 + 1) = v111[0];
    DWORD1(v68) = *(v111 + 3);
    *(&v68 + 1) = v13;
    *&v69 = v12;
    v40 = v65;
    v39 = v66;
    *(&v69 + 1) = v57;
    *&v70 = v66;
    BYTE8(v70) = BYTE4(v49);
    *(&v70 + 9) = *v110;
    HIDWORD(v70) = *&v110[3];
    *&v71 = v62;
    *(&v71 + 1) = v65;
    *&v72 = v61;
    *(&v72 + 1) = v63;
    v41 = v60;
    *&v73 = v60;
    *(&v73 + 1) = v22;
    *&v74 = v23;
    *(&v74 + 1) = v24;
    *&v75 = __PAIR64__(v28, v26);
    DWORD2(v75) = v30;
    BYTE12(v75) = v64;
    BYTE13(v75) = v56;
    BYTE14(v75) = v55;
    HIBYTE(v75) = v54;
    LOBYTE(v76[0]) = v53;
    BYTE1(v76[0]) = v52;
    WORD3(v76[0]) = v109;
    *(v76 + 2) = v108;
    *(&v76[0] + 1) = v50;
    *&v76[1] = v32;
    DWORD2(v76[1]) = v34;
    BYTE12(v76[1]) = v59;
    v42 = v69;
    *v10 = v68;
    v10[1] = v42;
    v43 = v70;
    v44 = v71;
    v45 = v73;
    v10[4] = v72;
    v10[5] = v45;
    v10[2] = v43;
    v10[3] = v44;
    v46 = v74;
    v47 = v75;
    v48 = v76[0];
    *(v10 + 141) = *(v76 + 13);
    v10[7] = v47;
    v10[8] = v48;
    v10[6] = v46;
    sub_1D99AE054(&v68, &v77);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    LOBYTE(v77) = v58;
    *(&v77 + 1) = v111[0];
    HIDWORD(v77) = *(v111 + 3);
    v78 = v13;
    v79 = v12;
    v80 = v57;
    v81 = v39;
    v82 = BYTE4(v49);
    *v83 = *v110;
    *&v83[3] = *&v110[3];
    v84 = v62;
    v85 = v40;
    v86 = v61;
    v87 = v63;
    v88 = v41;
    v89 = v22;
    v90 = v23;
    v91 = v24;
    v92 = v26;
    v93 = v28;
    v94 = v30;
    v95 = v64;
    v96 = v56;
    v97 = v55;
    v98 = v54;
    v99 = v53;
    v100 = v52;
    v102 = v109;
    v101 = v108;
    v103 = v50;
    v104 = v32;
    v105 = v34;
    v106 = v59;
    return sub_1D99AE0B0(&v77);
  }
}

uint64_t sub_1D9BF1064()
{
  sub_1D9C7E8DC();
  VisualUnderstanding.DomainInfo.hash(into:)();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9BF10A8()
{
  sub_1D9C7E8DC();
  VisualUnderstanding.DomainInfo.hash(into:)();
  return sub_1D9C7E93C();
}

uint64_t static VisualUnderstanding.Signal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (!CGRectEqualToRect(*a1, *a2) || (sub_1D9A29E74(v3, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1D9A2A058(v2, v4);
}

uint64_t sub_1D9BF1164()
{
  v1 = 0x6E69646465626D65;
  if (*v0 != 1)
  {
    v1 = 0x6966697373616C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E756F62;
  }
}

uint64_t sub_1D9BF11D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9BF9FD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9BF1200(uint64_t a1)
{
  v2 = sub_1D9BF67B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9BF123C(uint64_t a1)
{
  v2 = sub_1D9BF67B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualUnderstanding.Signal.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54290);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = *(v3 + 5);
  v13 = *(v3 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF67B8();
  sub_1D9C7E96C();
  v10 = v3[1];
  v14 = *v3;
  v15 = v10;
  v16 = 0;
  sub_1D99EA188();
  sub_1D9C7E74C();
  if (!v2)
  {
    *&v14 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54298);
    sub_1D9BF680C();
    sub_1D9C7E74C();
    *&v14 = v9;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB542A0);
    sub_1D9BF6890();
    sub_1D9C7E74C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t VisualUnderstanding.Signal.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v8 = *(v2 + 40);
  v16.origin.x = *v2;
  v16.origin.y = v5;
  v16.size.width = v6;
  v16.size.height = v7;
  MinX = CGRectGetMinX(v16);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v17.origin.x = v4;
  v17.origin.y = v5;
  v17.size.width = v6;
  v17.size.height = v7;
  MaxX = CGRectGetMaxX(v17);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v18.origin.x = v4;
  v18.origin.y = v5;
  v18.size.width = v6;
  v18.size.height = v7;
  MinY = CGRectGetMinY(v18);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v19.origin.x = v4;
  v19.origin.y = v5;
  v19.size.width = v6;
  v19.size.height = v7;
  MaxY = CGRectGetMaxY(v19);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  sub_1D9A2F34C(a1, v9);

  return sub_1D9A2F23C(a1, v8);
}

uint64_t VisualUnderstanding.Signal.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_1D9C7E8DC();
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  MinX = CGRectGetMinX(v13);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v14.origin.x = v1;
  v14.origin.y = v2;
  v14.size.width = v3;
  v14.size.height = v4;
  MaxX = CGRectGetMaxX(v14);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v15.origin.x = v1;
  v15.origin.y = v2;
  v15.size.width = v3;
  v15.size.height = v4;
  MinY = CGRectGetMinY(v15);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v16.origin.x = v1;
  v16.origin.y = v2;
  v16.size.width = v3;
  v16.size.height = v4;
  MaxY = CGRectGetMaxY(v16);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  sub_1D9A2F34C(v12, v6);
  sub_1D9A2F23C(v12, v5);
  return sub_1D9C7E93C();
}

uint64_t VisualUnderstanding.Signal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB542A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF67B8();
  sub_1D9C7E95C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v17 = 0;
  sub_1D99EA7B8();
  sub_1D9C7E65C();
  v13 = v16;
  v14 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54298);
  v17 = 1;
  sub_1D9BF6914();
  sub_1D9C7E65C();
  v9 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB542A0);
  v17 = 2;
  sub_1D9BF6998();
  sub_1D9C7E65C();
  (*(v6 + 8))(v8, v5);
  v10 = v15;
  v11 = v13;
  *a2 = v14;
  *(a2 + 16) = v11;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1D9BF1954(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (!CGRectEqualToRect(*a1, *a2) || (sub_1D9A29E74(v3, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1D9A2A058(v2, v4);
}

uint64_t sub_1D9BF19DC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_1D9C7E8DC();
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  MinX = CGRectGetMinX(v13);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v14.origin.x = v1;
  v14.origin.y = v2;
  v14.size.width = v3;
  v14.size.height = v4;
  MaxX = CGRectGetMaxX(v14);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v15.origin.x = v1;
  v15.origin.y = v2;
  v15.size.width = v3;
  v15.size.height = v4;
  MinY = CGRectGetMinY(v15);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v16.origin.x = v1;
  v16.origin.y = v2;
  v16.size.width = v3;
  v16.size.height = v4;
  MaxY = CGRectGetMaxY(v16);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  sub_1D9A2F34C(v12, v6);
  sub_1D9A2F23C(v12, v5);
  return sub_1D9C7E93C();
}

VisualLookUp::VisualUnderstanding::AdditionalSignalType_optional __swiftcall VisualUnderstanding.AdditionalSignalType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9C7E56C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VisualUnderstanding.AdditionalSignalType.rawValue.getter()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1D9BF1BAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "brandDistribution";
  v4 = 0xD000000000000014;
  if (v2 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v2 == 1)
  {
    v6 = "brandDistribution";
  }

  else
  {
    v6 = "categoryDistribution";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "neric";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = "categoryDistribution";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "neric";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9C7E7DC();
  }

  return v11 & 1;
}

void sub_1D9BF1C90(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = "brandDistribution";
  v4 = 0xD000000000000014;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = "categoryDistribution";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "neric";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t sub_1D9BF1D9C()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9BF1E38()
{
  sub_1D9C7DD6C();
}

uint64_t sub_1D9BF1EC0()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

unint64_t sub_1D9BF1F5C()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1D9BF1F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D9CACC60 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D9CACC80 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9C7E7DC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D9BF207C(uint64_t a1)
{
  v2 = sub_1D9BF6A1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9BF20B8(uint64_t a1)
{
  v2 = sub_1D9BF6A1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualUnderstanding.AdditionalSignal.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB542B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF6A1C();
  sub_1D9C7E96C();
  v13 = v8;
  v12 = 0;
  sub_1D9BF6A70();
  sub_1D9C7E74C();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518B0);
    sub_1D99F2594(&qword_1EDD2A848);
    sub_1D9C7E74C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisualUnderstanding.AdditionalSignal.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1D9C7DD6C();

  return sub_1D99CE528(a1, v2);
}

uint64_t VisualUnderstanding.AdditionalSignal.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  sub_1D99CE528(v3, v1);
  return sub_1D9C7E93C();
}

uint64_t VisualUnderstanding.AdditionalSignal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB542C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF6A1C();
  sub_1D9C7E95C();
  if (!v2)
  {
    v14 = 0;
    sub_1D9BF6AC4();
    sub_1D9C7E65C();
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518B0);
    v13 = 1;
    sub_1D99F2594(&unk_1EDD2A838);
    sub_1D9C7E65C();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1D9BF267C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1D9C7DD6C();

  return sub_1D99CE528(a1, v2);
}

uint64_t sub_1D9BF2720()
{
  v1 = *(v0 + 8);
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  sub_1D99CE528(v3, v1);
  return sub_1D9C7E93C();
}

void VisualUnderstanding.ImageRegion.embeddings.getter()
{
  v1 = *(v0 + 112);
  v2 = MEMORY[0x1E69E7CC0];
  v25 = *(v1 + 16);
  if (!v25)
  {
    return;
  }

  v3 = 0;
  v23 = *(v0 + 112);
  v24 = v1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v5 = *(v24 + 48 * v3 + 32);
    v6 = *(v5 + 16);
    if (v6)
    {
      v26 = v3;
      swift_bridgeObjectRetain_n();

      sub_1D99FE4F8(0, v6, 0);
      v7 = v2;
      v8 = (v5 + 48);
      do
      {
        v10 = *(v8 - 2);
        v9 = *(v8 - 1);
        v11 = *v8;
        v12 = *(v7 + 16);
        v13 = *(v7 + 24);

        if (v12 >= v13 >> 1)
        {
          sub_1D99FE4F8((v13 > 1), v12 + 1, 1);
        }

        *(v7 + 16) = v12 + 1;
        v14 = (v7 + 24 * v12);
        v14[4] = v10;
        v14[5] = v9;
        v14[6] = v11;
        v8 += 3;
        --v6;
      }

      while (v6);

      swift_bridgeObjectRelease_n();
      v2 = MEMORY[0x1E69E7CC0];
      v1 = v23;
      v3 = v26;
    }

    else
    {
      v7 = v2;
    }

    v15 = *(v7 + 16);
    v16 = *(v4 + 2);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= *(v4 + 3) >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      v4 = sub_1D9AFA214(isUniquelyReferenced_nonNull_native, v19, 1, v4);
      if (*(v7 + 16))
      {
LABEL_22:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v15)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v20 = *(v4 + 2);
          v21 = __OFADD__(v20, v15);
          v22 = v20 + v15;
          if (v21)
          {
            goto LABEL_31;
          }

          *(v4 + 2) = v22;
        }

        goto LABEL_4;
      }
    }

    if (v15)
    {
      goto LABEL_29;
    }

LABEL_4:
    if (++v3 == v25)
    {
      return;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t VisualUnderstanding.ImageRegion.Embedding.modelUrn.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t static VisualUnderstanding.ImageRegion.Embedding.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    if (result == a2[1] && a1[2] == a2[2])
    {
      return 1;
    }

    else
    {
      return sub_1D9C7E7DC();
    }
  }

  else
  {
    v8 = (v2 + 32);
    v9 = (v3 + 32);
    while (v4)
    {
      if (*v8 != *v9)
      {
        return 0;
      }

      ++v8;
      ++v9;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D9BF2AE8()
{
  if (*v0)
  {
    return 0x6E72556C65646F6DLL;
  }

  else
  {
    return 0x7365727574616566;
  }
}

uint64_t sub_1D9BF2B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365727574616566 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D9C7E7DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E72556C65646F6DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9C7E7DC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9BF2BF8(uint64_t a1)
{
  v2 = sub_1D9BF6B18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9BF2C34(uint64_t a1)
{
  v2 = sub_1D9BF6B18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualUnderstanding.ImageRegion.Embedding.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB542D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11[1] = v1[2];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF6B18();

  sub_1D9C7E96C();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517C0);
  sub_1D99EA1DC(&qword_1EDD2A720);
  sub_1D9C7E74C();

  if (!v2)
  {
    v12 = 1;
    sub_1D9C7E6EC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisualUnderstanding.ImageRegion.Embedding.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB542E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF6B18();
  sub_1D9C7E95C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517C0);
  v14[15] = 0;
  sub_1D99EA1DC(&qword_1EDD2A718);
  sub_1D9C7E65C();
  v9 = v15;
  v14[14] = 1;
  v10 = sub_1D9C7E5FC();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v12;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1D9BF30BC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1D9A227B8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1D9C7E7DC();
}

BOOL VisualUnderstanding.ImageRegion.isDominantAndGood.getter()
{
  v1 = 0.5;
  if (*(v0 + 104))
  {
    return *(v0 + 72) > v1;
  }

  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v8.origin.x = *v0;
  v8.origin.y = v3;
  v8.size.width = v4;
  v8.size.height = v5;
  Width = CGRectGetWidth(v8);
  v9.origin.x = v2;
  v9.origin.y = v3;
  v9.size.width = v4;
  v9.size.height = v5;
  if (Width * CGRectGetHeight(v9) > 0.2)
  {
    v1 = 0.1;
    return *(v0 + 72) > v1;
  }

  return 0;
}

unint64_t VisualUnderstanding.ImageRegion.getBrandDistribution()()
{
  result = type metadata accessor for VisualUnderstanding.ImageRegion();
  v2 = *(v0 + *(result + 68));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 40);
    while (v4 < *(v2 + 16))
    {
      v6 = *v5;
      v7 = *(v5 - 8);
      if (v7 != 1 && v7 != 2)
      {

        return v6;
      }

      v8 = sub_1D9C7E7DC();

      if (v8)
      {
        return v6;
      }

      ++v4;

      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v9 = MEMORY[0x1E69E7CC0];

    return sub_1D9A441B8(v9);
  }

  return result;
}

unint64_t VisualUnderstanding.ImageRegion.getCategoryDistribution()()
{
  result = type metadata accessor for VisualUnderstanding.ImageRegion();
  v2 = *(v0 + *(result + 68));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 40);
    while (v4 < *(v2 + 16))
    {
      v6 = *v5;
      if (*(v5 - 8) && *(v5 - 8) != 2)
      {

        return v6;
      }

      v7 = sub_1D9C7E7DC();

      if (v7)
      {
        return v6;
      }

      ++v4;

      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v8 = MEMORY[0x1E69E7CC0];

    return sub_1D9A441B8(v8);
  }

  return result;
}

unint64_t VisualUnderstanding.ImageRegion.getCoarseCategoryDistribution()()
{
  result = type metadata accessor for VisualUnderstanding.ImageRegion();
  v2 = *(v0 + *(result + 68));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 40);
    while (v4 < *(v2 + 16))
    {
      v6 = *v5;
      if (*(v5 - 8) && *(v5 - 8) != 1)
      {

        return v6;
      }

      v7 = sub_1D9C7E7DC();

      if (v7)
      {
        return v6;
      }

      ++v4;

      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v8 = MEMORY[0x1E69E7CC0];

    return sub_1D9A441B8(v8);
  }

  return result;
}

uint64_t sub_1D9BF364C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB535C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_1D9C7B93C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s14DetectedResultVMa();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99CC070(a1, v14, _s14DetectedResultVMa);
  sub_1D99AB100(&v14[*(v12 + 28)], v6, &unk_1ECB535C0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D99A6AE0(v6, &unk_1ECB535C0);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53300);
    (*(*(v15 - 8) + 56))(v48, 1, 1, v15);
  }

  else
  {
    v17 = *(v8 + 32);
    v16 = v8 + 32;
    v46 = v10;
    v18 = v6;
    v19 = v17;
    v20 = (v17)(v10, v18, v7);
    MEMORY[0x1EEE9AC00](v20);
    *(&v42 - 2) = v14;
    v21 = v49;
    sub_1D9B097F8(sub_1D9BFA228, v22, &v50);
    v23 = v53;
    if (v53)
    {
      v47 = v16;
      v25 = v51;
      v24 = v52;
      v26 = *(&v50 + 1);
      v27 = v50;

      sub_1D9AF6BF8(v27, v26, v25, v24, v23);
      v28 = *(v23 + 16);
      v29 = v23;
      v30 = v48;
      if (v28)
      {
        v43 = v19;
        v44 = v7;
        v45 = v14;
        v49 = v21;
        v54 = MEMORY[0x1E69E7CC0];
        sub_1D99FE4F8(0, v28, 0);
        v31 = v54;
        v42 = v29;
        v32 = (v29 + 48);
        do
        {
          v33 = *(v32 - 2);
          v34 = *(v32 - 1);
          v35 = *v32;
          v54 = v31;
          v37 = *(v31 + 16);
          v36 = *(v31 + 24);

          if (v37 >= v36 >> 1)
          {
            sub_1D99FE4F8((v36 > 1), v37 + 1, 1);
            v31 = v54;
          }

          *(v31 + 16) = v37 + 1;
          v38 = (v31 + 24 * v37);
          v38[4] = v33;
          v38[5] = v34;
          v38[6] = v35;
          v32 += 3;
          --v28;
        }

        while (v28);

        v30 = v48;
        v7 = v44;
        v14 = v45;
        v19 = v43;
      }

      else
      {

        v31 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
      v30 = v48;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53300);
    v40 = *(v39 + 48);
    v19(v30, v46, v7);
    *(v30 + v40) = v31;
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
  }

  return sub_1D99CC0F8(v14, _s14DetectedResultVMa);
}

BOOL sub_1D9BF3ABC(CGFloat *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v8 = *(a2 + *(_s14DetectedResultVMa() + 24));
  v7.origin.x = v2;
  v7.origin.y = v3;
  v7.size.width = v4;
  v7.size.height = v5;
  return CGRectEqualToRect(v7, v8);
}

uint64_t VisualUnderstanding.DomainInfo.detectionInfo.getter()
{
  if (!*(v0 + 88))
  {
    return 0;
  }

  v1 = *(v0 + 96);

  return v1;
}

Swift::Bool __swiftcall VisualUnderstanding.DomainInfo.isSearchable(cameraSearchMode:)(VisualLookUp::VisualQueryContext::Mode cameraSearchMode)
{
  v2 = cameraSearchMode;
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = *v2;
  v11 = v1[7];
  v39[6] = v1[6];
  v39[7] = v11;
  v40[0] = v1[8];
  *(v40 + 13) = *(v1 + 141);
  v12 = v1[3];
  v39[2] = v1[2];
  v39[3] = v12;
  v13 = v1[5];
  v39[4] = v1[4];
  v39[5] = v13;
  v14 = v1[1];
  v39[0] = *v1;
  v39[1] = v14;
  if (sub_1D9A75D94())
  {
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v15 = &off_1ECB51BA8;
  }

  else
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EDD355A8;
  }

  v16 = *(*v15 + 32);

  v17 = sub_1D9C7DC4C();
  LOBYTE(v16) = [v16 BOOLForKey_];

  if (v16)
  {
    return 1;
  }

  v18 = 0x7265676165;
  if (v10 > 1)
  {
  }

  else
  {
    v19 = sub_1D9C7E7DC();

    if ((v19 & 1) == 0)
    {
      return 1;
    }
  }

  v20 = v39[0];
  if (!sub_1D9BE7168(v39[0], &unk_1F552ABA0))
  {
    return 1;
  }

  static Logger.argos.getter(v9);
  sub_1D9A3E0E0(v6);
  v23 = *(v4 + 8);
  v22 = v4 + 8;
  v21 = v23;
  v23(v9, v3);
  sub_1D99AE054(v39, v38);
  v24 = sub_1D9C7D8BC();
  v25 = sub_1D9C7E09C();
  sub_1D99AE0B0(v39);
  if (os_log_type_enabled(v24, v25))
  {
    v36 = v21;
    v37 = v22;
    v26 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38[0] = v35;
    *v26 = 136315394;
    v27 = sub_1D9A15C94(v20);
    v29 = sub_1D9A0E224(v27, v28, v38);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    if (v10)
    {
      if (v10 == 1)
      {
        v18 = 0x6974537265676165;
        v30 = 0xEB00000000796B63;
      }

      else
      {
        v18 = 0x646E616D65446E6FLL;
        v30 = 0xE800000000000000;
      }
    }

    else
    {
      v30 = 0xE500000000000000;
    }

    v32 = sub_1D9A0E224(v18, v30, v38);

    *(v26 + 14) = v32;
    _os_log_impl(&dword_1D9962000, v24, v25, "%s is disabled in %s mode", v26, 0x16u);
    v33 = v35;
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v33, -1, -1);
    MEMORY[0x1DA7405F0](v26, -1, -1);

    v36(v6, v3);
  }

  else
  {

    v21(v6, v3);
  }

  return 0;
}

BOOL _s12VisualLookUp0A13UnderstandingV10AnnotationV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v21 = a1[6];
  v22 = a1[7];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v24 = a1[5];
  v25 = a2[5];
  v20 = a2[6];
  v23 = a2[7];
  if (*a1)
  {
    if (!v8)
    {
      return 0;
    }

    v12 = sub_1D9A31C78(v3, v8);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v2)
  {
    if (!v7)
    {
      return 0;
    }

    v13 = sub_1D9A31C78(v2, v7);

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }

    v14 = sub_1D9A31C78(v5, v10);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9)
    {
      return 0;
    }

    v15 = sub_1D9A31C78(v4, v9);

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (!v6)
  {
    if (!v11)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  v16 = sub_1D9A2A3F0(v6, v11);

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  if (!v24)
  {
    if (!v25)
    {

      goto LABEL_33;
    }

LABEL_39:

    return 0;
  }

  if (!v25)
  {
    goto LABEL_39;
  }

  swift_bridgeObjectRetain_n();

  v17 = sub_1D9A31C78(v24, v25);
  swift_bridgeObjectRelease_n();

  result = 0;
  if ((v17 & 1) != 0 && v21 == v20)
  {
LABEL_33:
    if (v22)
    {
      if (v23)
      {
        swift_bridgeObjectRetain_n();

        v19 = sub_1D9A2A1A0(v22, v23);
        swift_bridgeObjectRelease_n();

        return v19;
      }
    }

    else if (!v23)
    {

      return 1;
    }

    goto LABEL_39;
  }

  return result;
}

uint64_t _s12VisualLookUp0A13UnderstandingV10DomainInfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v61 = *(a1 + 48);
  v70 = *(a1 + 56);
  v57 = *(a1 + 64);
  v63 = *(a1 + 72);
  v67 = *(a1 + 80);
  v66 = *(a1 + 88);
  v68 = *(a1 + 96);
  v69 = *(a1 + 104);
  v7 = *(a1 + 112);
  v54 = *(a1 + 120);
  v55 = *(a1 + 116);
  v53 = *(a1 + 124);
  v51 = *(a1 + 125);
  v49 = *(a1 + 126);
  v47 = *(a1 + 127);
  v45 = *(a1 + 128);
  v43 = *(a1 + 129);
  v35 = *(a1 + 136);
  v41 = *(a1 + 144);
  v39 = *(a1 + 152);
  v37 = *(a1 + 156);
  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 56);
  v56 = *(a2 + 64);
  v62 = *(a2 + 72);
  v64 = *(a2 + 88);
  v65 = *(a2 + 80);
  v15 = *(a2 + 112);
  v14 = *(a2 + 116);
  v16 = *(a2 + 120);
  v38 = *(a2 + 152);
  v58 = *(a2 + 96);
  v59 = *(a2 + 104);
  v60 = *(a2 + 48);
  v52 = *(a2 + 124);
  v50 = *(a2 + 125);
  v48 = *(a2 + 126);
  v46 = *(a2 + 127);
  v44 = *(a2 + 128);
  v42 = *(a2 + 129);
  v34 = *(a2 + 136);
  v40 = *(a2 + 144);
  v36 = *(a2 + 156);
  v17 = *a2;
  v18 = sub_1D9A15C94(*a1);
  v20 = v19;
  if (v18 == sub_1D9A15C94(v17) && v20 == v21)
  {

    result = 0;
  }

  else
  {
    v23 = sub_1D9C7E7DC();

    result = 0;
    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  if (v3 != v9 || v2 != v8)
  {
    return result;
  }

  if (!v5)
  {
    result = 0;
    if (v11)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!v11)
  {
    return 0;
  }

  if (v4 != v10 || v5 != v11)
  {
    v24 = sub_1D9C7E7DC();
    result = 0;
    if ((v24 & 1) == 0)
    {
      return result;
    }

LABEL_16:
    if ((v6 ^ v12))
    {
      return result;
    }

    goto LABEL_17;
  }

  if (v6 != v12)
  {
    return 0;
  }

LABEL_17:
  if (v70)
  {
    if (!v13 || (v61 != v60 || v70 != v13) && (sub_1D9C7E7DC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v63)
  {
    v26 = v68;
    v25 = v69;
    v27 = v67;
    v29 = v65;
    v28 = v66;
    v30 = v64;
    if (!v62 || (v57 != v56 || v63 != v62) && (sub_1D9C7E7DC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v26 = v68;
    v25 = v69;
    v27 = v67;
    v29 = v65;
    v28 = v66;
    v30 = v64;
    if (v62)
    {
      return 0;
    }
  }

  if (!v28)
  {
    sub_1D99FE1B4(v27, 0);
    if (!v30)
    {
      sub_1D99FE1B4(v29, 0);
      sub_1D99FEF84(v27, 0);
      result = 0;
      goto LABEL_49;
    }

    sub_1D99FE1B4(v29, v30);
LABEL_42:
    sub_1D99FEF84(v27, v28);
    sub_1D99FEF84(v29, v30);
    return 0;
  }

  if (!v30)
  {
    sub_1D99FE1B4(v27, v28);
    sub_1D99FE1B4(v29, 0);
    sub_1D99FE1B4(v27, v28);

    goto LABEL_42;
  }

  if (v27 == v29 && v28 == v30 || (sub_1D9C7E7DC() & 1) != 0)
  {
    if (v26 == v58 && v25 == v59)
    {
      sub_1D99FE1B4(v27, v28);
      sub_1D99FE1B4(v29, v30);
      sub_1D99FE1B4(v27, v28);
      sub_1D99FEF84(v29, v30);
      v31 = 0;
    }

    else
    {
      v32 = sub_1D9C7E7DC();
      sub_1D99FE1B4(v27, v28);
      sub_1D99FE1B4(v29, v30);
      sub_1D99FE1B4(v27, v28);
      sub_1D99FEF84(v29, v30);
      v31 = v32 ^ 1;
    }
  }

  else
  {
    sub_1D99FE1B4(v27, v28);
    sub_1D99FE1B4(v29, v30);
    sub_1D99FE1B4(v27, v28);
    sub_1D99FEF84(v29, v30);
    v31 = 1;
  }

  sub_1D99FEF84(v27, v28);
  result = 0;
  if (v31)
  {
    return result;
  }

LABEL_49:
  if (v7 != v15 || v55 != v14 || v54 != v16 || ((v53 ^ v52) & 1) != 0 || ((v51 ^ v50) & 1) != 0 || ((v49 ^ v48) & 1) != 0 || ((v47 ^ v46) & 1) != 0 || ((v45 ^ v44) & 1) != 0 || ((v43 ^ v42) & 1) != 0)
  {
    return result;
  }

  if (!v41)
  {
    result = 0;
    if (v40)
    {
      return result;
    }

    goto LABEL_67;
  }

  if (!v40)
  {
    return 0;
  }

  if (v35 == v34 && v41 == v40)
  {
    if (v39 != v38)
    {
      return 0;
    }

    return v37 ^ v36 ^ 1u;
  }

  v33 = sub_1D9C7E7DC();
  result = 0;
  if (v33)
  {
LABEL_67:
    if (v39 == v38)
    {
      return v37 ^ v36 ^ 1u;
    }
  }

  return result;
}

uint64_t _s12VisualLookUp0A13UnderstandingV16AdditionalSignalV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a2 + 8);
  v5 = "brandDistribution";
  v6 = 0xD000000000000014;
  if (v2 == 1)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  if (v2 == 1)
  {
    v8 = "brandDistribution";
  }

  else
  {
    v8 = "categoryDistribution";
  }

  if (*a1)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (v2)
  {
    v10 = v8;
  }

  else
  {
    v10 = "neric";
  }

  if (*a2 != 1)
  {
    v6 = 0xD00000000000001ALL;
    v5 = "categoryDistribution";
  }

  if (*a2)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0xD000000000000011;
  }

  if (*a2)
  {
    v12 = v5;
  }

  else
  {
    v12 = "neric";
  }

  if (v9 == v11 && (v10 | 0x8000000000000000) == (v12 | 0x8000000000000000))
  {
  }

  else
  {
    v13 = sub_1D9C7E7DC();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1D9A01074(v3, v4);
}

BOOL _s12VisualLookUp0A13UnderstandingV41ReducePersonOverTriggerRegionalAnnotationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v8 || v3 != v9)
    {
      return 0;
    }

    goto LABEL_14;
  }

  v20 = *(a1 + 48);
  v21 = *(a1 + 40);
  v16 = sub_1D9C7E7DC();
  result = 0;
  if (v16)
  {
    v17 = v2 == v8 && v3 == v9;
    v7 = v20;
    v6 = v21;
    if (v17)
    {
LABEL_14:
      v18 = v4;
      v19 = v5;
      v22.origin.x = v10;
      v22.origin.y = v11;
      v22.size.width = v12;
      v22.size.height = v13;
      return CGRectEqualToRect(*(&v6 - 2), v22);
    }
  }

  return result;
}

uint64_t _s12VisualLookUp0A13UnderstandingV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v72[0] = *(a1 + 8);
  v72[1] = v5;
  v6 = *(a1 + 56);
  v72[2] = *(a1 + 40);
  v72[3] = v6;
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v55 = *(a1 + 104);
  v51 = *(a1 + 112);
  v11 = *(a1 + 120);
  v12 = *(a1 + 128);
  v57 = *(a1 + 144);
  v58 = *(a1 + 136);
  v53 = *(a1 + 152);
  v13 = *(a1 + 160);
  v14 = *(a1 + 168);
  v15 = *(a1 + 176);
  v16 = *a2;
  v17 = *(a2 + 24);
  v73[0] = *(a2 + 8);
  v73[1] = v17;
  v18 = *(a2 + 56);
  v73[2] = *(a2 + 40);
  v73[3] = v18;
  v19 = *(a2 + 72);
  v20 = *(a2 + 80);
  v21 = *(a2 + 88);
  v22 = *(a2 + 96);
  v54 = *(a2 + 104);
  v50 = *(a2 + 112);
  v23 = *(a2 + 120);
  v25 = *(a2 + 128);
  v24 = *(a2 + 136);
  v56 = *(a2 + 144);
  v52 = *(a2 + 152);
  v47 = *(a2 + 168);
  v48 = *(a2 + 160);
  v49 = *(a2 + 176);
  if ((sub_1D9A29790(v4, v16) & 1) == 0)
  {
    goto LABEL_9;
  }

  v45 = v14;
  v46 = v13;
  v26 = *&v72[0];
  v27 = *&v73[0];
  if (*&v72[0] == 1)
  {
    if (*&v73[0] == 1)
    {
      v28 = *(a1 + 32);
      *&v66[8] = *(a1 + 16);
      *&v66[24] = v28;
      *&v66[40] = *(a1 + 48);
      v29 = *(a1 + 64);
      *v66 = 1;
      *&v66[56] = v29;
      sub_1D99AB100(v72, &v62, &qword_1ECB514D0);
      sub_1D99AB100(v73, &v62, &qword_1ECB514D0);
      sub_1D99A6AE0(v66, &qword_1ECB514D0);
      goto LABEL_12;
    }

    sub_1D99AB100(v72, v66, &qword_1ECB514D0);
    sub_1D99AB100(v73, v66, &qword_1ECB514D0);
LABEL_8:
    v32 = *(a1 + 32);
    *&v66[8] = *(a1 + 16);
    *&v66[24] = v32;
    *&v66[40] = *(a1 + 48);
    v33 = *(a2 + 32);
    v68 = *(a2 + 16);
    v34 = *(a1 + 64);
    *v66 = v26;
    *&v66[56] = v34;
    v67 = v27;
    v69 = v33;
    v70 = *(a2 + 48);
    v71 = *(a2 + 64);
    sub_1D99A6AE0(v66, &qword_1ECB54440);
    goto LABEL_9;
  }

  v30 = *(a1 + 32);
  *&v66[8] = *(a1 + 16);
  *&v66[24] = v30;
  *&v66[40] = *(a1 + 48);
  v31 = *(a1 + 64);
  *v66 = *&v72[0];
  *&v66[56] = v31;
  v62 = *v66;
  v63 = *&v66[16];
  v64 = *&v66[32];
  v65 = *&v66[48];
  if (*&v73[0] == 1)
  {
    *v61 = *v66;
    *&v61[16] = *&v66[16];
    *&v61[32] = *&v66[32];
    *&v61[48] = *&v66[48];
    sub_1D99AB100(v72, v60, &qword_1ECB514D0);
    sub_1D99AB100(v73, v60, &qword_1ECB514D0);
    sub_1D99AB100(v66, v60, &qword_1ECB514D0);
    sub_1D9B5B7EC(v61);
    goto LABEL_8;
  }

  v37 = *(a2 + 32);
  *&v61[8] = *(a2 + 16);
  *&v61[24] = v37;
  *&v61[40] = *(a2 + 48);
  *&v61[56] = *(a2 + 64);
  *v61 = *&v73[0];
  sub_1D99AB100(v72, v60, &qword_1ECB514D0);
  sub_1D99AB100(v73, v60, &qword_1ECB514D0);
  sub_1D99AB100(v66, v60, &qword_1ECB514D0);
  v38 = _s12VisualLookUp0A13UnderstandingV10AnnotationV2eeoiySbAE_AEtFZ_0(&v62, v61);
  v59[0] = *v61;
  v59[1] = *&v61[16];
  v59[2] = *&v61[32];
  v59[3] = *&v61[48];
  sub_1D9B5B7EC(v59);
  v60[0] = v62;
  v60[1] = v63;
  v60[2] = v64;
  v60[3] = v65;
  sub_1D9B5B7EC(v60);
  v39 = *(a1 + 32);
  *&v61[8] = *(a1 + 16);
  *&v61[24] = v39;
  *&v61[40] = *(a1 + 48);
  v40 = *(a1 + 64);
  *v61 = v26;
  *&v61[56] = v40;
  sub_1D99A6AE0(v61, &qword_1ECB514D0);
  if (!v38)
  {
    goto LABEL_9;
  }

LABEL_12:
  v74.origin.x = v7;
  v74.origin.y = v8;
  v74.size.width = v9;
  v74.size.height = v10;
  v75.origin.x = v19;
  v75.origin.y = v20;
  v75.size.width = v21;
  v75.size.height = v22;
  v35 = CGRectEqualToRect(v74, v75);
  if (!v35)
  {
    return v35 & 1;
  }

  if (v11)
  {
    v42 = v46;
    v41 = v15;
    v43 = v45;
    if ((v23 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v42 = v46;
    v41 = v15;
    v43 = v45;
    LOBYTE(v35) = 0;
    if ((v23 & 1) != 0 || v55 != v54 || v51 != v50)
    {
      return v35 & 1;
    }
  }

  if (v12 == v25 && v58 == v24)
  {
    if (v57 == v56)
    {
      goto LABEL_25;
    }

LABEL_9:
    LOBYTE(v35) = 0;
    return v35 & 1;
  }

  v44 = sub_1D9C7E7DC();
  LOBYTE(v35) = 0;
  if ((v44 & 1) != 0 && v57 == v56)
  {
LABEL_25:
    if (v53)
    {
      if (v52 && (sub_1D9A227B8(v53, v52) & 1) != 0 && (v42 == v48 && v43 == v47 || (sub_1D9C7E7DC() & 1) != 0))
      {
        goto LABEL_33;
      }
    }

    else if (!v52)
    {
LABEL_33:
      LOBYTE(v35) = sub_1D9A29B98(v41, v49);
      return v35 & 1;
    }

    goto LABEL_9;
  }

  return v35 & 1;
}

unint64_t sub_1D9BF4F6C()
{
  result = qword_1EDD2C2B0;
  if (!qword_1EDD2C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C2B0);
  }

  return result;
}

unint64_t sub_1D9BF4FC0()
{
  result = qword_1EDD2C2C0;
  if (!qword_1EDD2C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C2C0);
  }

  return result;
}

unint64_t sub_1D9BF5014()
{
  result = qword_1EDD2BFF0;
  if (!qword_1EDD2BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BFF0);
  }

  return result;
}

unint64_t sub_1D9BF5068()
{
  result = qword_1EDD2A7A8;
  if (!qword_1EDD2A7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECB51230);
    sub_1D9BF50EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A7A8);
  }

  return result;
}

unint64_t sub_1D9BF50EC()
{
  result = qword_1EDD2BEF0;
  if (!qword_1EDD2BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BEF0);
  }

  return result;
}

uint64_t sub_1D9BF5178(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54178);
    sub_1D9BF6E38(a2, type metadata accessor for VisualUnderstanding.ImageRegion);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9BF5214()
{
  result = qword_1EDD2C2B8;
  if (!qword_1EDD2C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C2B8);
  }

  return result;
}

unint64_t sub_1D9BF5268()
{
  result = qword_1EDD2BFE8;
  if (!qword_1EDD2BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BFE8);
  }

  return result;
}

unint64_t sub_1D9BF52BC()
{
  result = qword_1EDD2A7A0;
  if (!qword_1EDD2A7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECB51230);
    sub_1D9BF5340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A7A0);
  }

  return result;
}

unint64_t sub_1D9BF5340()
{
  result = qword_1EDD2BEE8;
  if (!qword_1EDD2BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BEE8);
  }

  return result;
}

unint64_t sub_1D9BF5394()
{
  result = qword_1ECB54190;
  if (!qword_1ECB54190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54190);
  }

  return result;
}

unint64_t sub_1D9BF53E8()
{
  result = qword_1EDD2C238;
  if (!qword_1EDD2C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C238);
  }

  return result;
}

unint64_t sub_1D9BF543C()
{
  result = qword_1ECB541B8;
  if (!qword_1ECB541B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB541B8);
  }

  return result;
}

unint64_t sub_1D9BF5490()
{
  result = qword_1EDD2A7F8;
  if (!qword_1EDD2A7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB541C0);
    sub_1D9BF5514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A7F8);
  }

  return result;
}

unint64_t sub_1D9BF5514()
{
  result = qword_1EDD2C220;
  if (!qword_1EDD2C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C220);
  }

  return result;
}

unint64_t sub_1D9BF5568()
{
  result = qword_1EDD2A7F0;
  if (!qword_1EDD2A7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB541C0);
    sub_1D9BF55EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A7F0);
  }

  return result;
}

unint64_t sub_1D9BF55EC()
{
  result = qword_1EDD2C218;
  if (!qword_1EDD2C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C218);
  }

  return result;
}

unint64_t sub_1D9BF5640()
{
  result = qword_1ECB541D8;
  if (!qword_1ECB541D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB541D8);
  }

  return result;
}

unint64_t sub_1D9BF56FC()
{
  result = qword_1ECB541F0;
  if (!qword_1ECB541F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB541F0);
  }

  return result;
}

unint64_t sub_1D9BF5750()
{
  result = qword_1ECB54200;
  if (!qword_1ECB54200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB541F8);
    sub_1D9BF57D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54200);
  }

  return result;
}

unint64_t sub_1D9BF57D4()
{
  result = qword_1ECB54208;
  if (!qword_1ECB54208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54208);
  }

  return result;
}

unint64_t sub_1D9BF5828()
{
  result = qword_1ECB54218;
  if (!qword_1ECB54218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB541F8);
    sub_1D9BF58AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54218);
  }

  return result;
}

unint64_t sub_1D9BF58AC()
{
  result = qword_1ECB54220;
  if (!qword_1ECB54220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54220);
  }

  return result;
}

unint64_t sub_1D9BF5900()
{
  result = qword_1EDD2C2D8;
  if (!qword_1EDD2C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C2D8);
  }

  return result;
}

unint64_t sub_1D9BF5954()
{
  result = qword_1EDD2A7E8;
  if (!qword_1EDD2A7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54230);
    sub_1D9BF59D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A7E8);
  }

  return result;
}

unint64_t sub_1D9BF59D8()
{
  result = qword_1EDD2C1F0;
  if (!qword_1EDD2C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C1F0);
  }

  return result;
}

unint64_t sub_1D9BF5A2C()
{
  result = qword_1EDD2A788;
  if (!qword_1EDD2A788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54238);
    sub_1D9BF5AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A788);
  }

  return result;
}

unint64_t sub_1D9BF5AB0()
{
  result = qword_1EDD2BCC8[0];
  if (!qword_1EDD2BCC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD2BCC8);
  }

  return result;
}

unint64_t sub_1D9BF5B04()
{
  result = qword_1EDD2C210;
  if (!qword_1EDD2C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C210);
  }

  return result;
}

unint64_t sub_1D9BF5B58()
{
  result = qword_1EDD2C200;
  if (!qword_1EDD2C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C200);
  }

  return result;
}

unint64_t sub_1D9BF5BAC()
{
  result = qword_1EDD2A7E0;
  if (!qword_1EDD2A7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54230);
    sub_1D9BF5C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A7E0);
  }

  return result;
}

unint64_t sub_1D9BF5C30()
{
  result = qword_1EDD2C1E8;
  if (!qword_1EDD2C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C1E8);
  }

  return result;
}

unint64_t sub_1D9BF5C84()
{
  result = qword_1EDD2A780;
  if (!qword_1EDD2A780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54238);
    sub_1D9BF5D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A780);
  }

  return result;
}

unint64_t sub_1D9BF5D08()
{
  result = qword_1EDD2BCC0;
  if (!qword_1EDD2BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BCC0);
  }

  return result;
}

unint64_t sub_1D9BF5D5C()
{
  result = qword_1EDD2C208;
  if (!qword_1EDD2C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C208);
  }

  return result;
}

unint64_t sub_1D9BF5DB0()
{
  result = qword_1EDD2C1F8;
  if (!qword_1EDD2C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C1F8);
  }

  return result;
}

unint64_t sub_1D9BF5E04()
{
  result = qword_1EDD2C270;
  if (!qword_1EDD2C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C270);
  }

  return result;
}

unint64_t sub_1D9BF5E58()
{
  result = qword_1EDD2A7C8;
  if (!qword_1EDD2A7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54250);
    sub_1D99FEF30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A7C8);
  }

  return result;
}

unint64_t sub_1D9BF5EDC()
{
  result = qword_1EDD2A828;
  if (!qword_1EDD2A828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54258);
    sub_1D9BF5F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A828);
  }

  return result;
}

unint64_t sub_1D9BF5F60()
{
  result = qword_1EDD2C280;
  if (!qword_1EDD2C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C280);
  }

  return result;
}

unint64_t sub_1D9BF5FB4()
{
  result = qword_1EDD2A748;
  if (!qword_1EDD2A748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54260);
    sub_1D9BF6038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A748);
  }

  return result;
}

unint64_t sub_1D9BF6038()
{
  result = qword_1EDD2B5D0;
  if (!qword_1EDD2B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2B5D0);
  }

  return result;
}

unint64_t sub_1D9BF608C()
{
  result = qword_1EDD2B8A0;
  if (!qword_1EDD2B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2B8A0);
  }

  return result;
}

unint64_t sub_1D9BF60E0()
{
  result = qword_1EDD2A7D8;
  if (!qword_1EDD2A7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54268);
    sub_1D9BF6164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A7D8);
  }

  return result;
}

unint64_t sub_1D9BF6164()
{
  result = qword_1EDD2C1C8;
  if (!qword_1EDD2C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C1C8);
  }

  return result;
}

unint64_t sub_1D9BF61B8()
{
  result = qword_1EDD2A808;
  if (!qword_1EDD2A808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54270);
    sub_1D9BF623C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A808);
  }

  return result;
}

unint64_t sub_1D9BF623C()
{
  result = qword_1EDD2C248;
  if (!qword_1EDD2C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C248);
  }

  return result;
}

unint64_t sub_1D9BF6290()
{
  result = qword_1EDD2A7C0;
  if (!qword_1EDD2A7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54250);
    sub_1D99FF080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A7C0);
  }

  return result;
}

unint64_t sub_1D9BF6314()
{
  result = qword_1EDD2A820;
  if (!qword_1EDD2A820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54258);
    sub_1D9BF6398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A820);
  }

  return result;
}

unint64_t sub_1D9BF6398()
{
  result = qword_1EDD2C278;
  if (!qword_1EDD2C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C278);
  }

  return result;
}

uint64_t sub_1D9BF63EC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54168);
    sub_1D9BF6E38(a2, _s14DetectedResultVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9BF6488()
{
  result = qword_1EDD2A740;
  if (!qword_1EDD2A740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54260);
    sub_1D9BF650C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A740);
  }

  return result;
}

unint64_t sub_1D9BF650C()
{
  result = qword_1EDD2B5C8;
  if (!qword_1EDD2B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2B5C8);
  }

  return result;
}

unint64_t sub_1D9BF6560()
{
  result = qword_1EDD2B898;
  if (!qword_1EDD2B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2B898);
  }

  return result;
}

unint64_t sub_1D9BF65B4()
{
  result = qword_1EDD2A7D0;
  if (!qword_1EDD2A7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54268);
    sub_1D9BF6638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A7D0);
  }

  return result;
}

unint64_t sub_1D9BF6638()
{
  result = qword_1EDD2C1C0;
  if (!qword_1EDD2C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C1C0);
  }

  return result;
}

unint64_t sub_1D9BF668C()
{
  result = qword_1EDD2A800;
  if (!qword_1EDD2A800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54270);
    sub_1D9BF6710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A800);
  }

  return result;
}

unint64_t sub_1D9BF6710()
{
  result = qword_1EDD2C240;
  if (!qword_1EDD2C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C240);
  }

  return result;
}

unint64_t sub_1D9BF6764()
{
  result = qword_1EDD2C298;
  if (!qword_1EDD2C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C298);
  }

  return result;
}

unint64_t sub_1D9BF67B8()
{
  result = qword_1EDD2C1E0;
  if (!qword_1EDD2C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C1E0);
  }

  return result;
}

unint64_t sub_1D9BF680C()
{
  result = qword_1EDD2A7B8;
  if (!qword_1EDD2A7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54298);
    sub_1D9BF5014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A7B8);
  }

  return result;
}

unint64_t sub_1D9BF6890()
{
  result = qword_1EDD2A770;
  if (!qword_1EDD2A770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB542A0);
    sub_1D9BF608C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A770);
  }

  return result;
}

unint64_t sub_1D9BF6914()
{
  result = qword_1EDD2A7B0;
  if (!qword_1EDD2A7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54298);
    sub_1D9BF5268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A7B0);
  }

  return result;
}

unint64_t sub_1D9BF6998()
{
  result = qword_1EDD2A768;
  if (!qword_1EDD2A768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB542A0);
    sub_1D9BF6560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A768);
  }

  return result;
}

unint64_t sub_1D9BF6A1C()
{
  result = qword_1ECB542B8;
  if (!qword_1ECB542B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB542B8);
  }

  return result;
}

unint64_t sub_1D9BF6A70()
{
  result = qword_1ECB542C0;
  if (!qword_1ECB542C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB542C0);
  }

  return result;
}

unint64_t sub_1D9BF6AC4()
{
  result = qword_1ECB542D0;
  if (!qword_1ECB542D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB542D0);
  }

  return result;
}

unint64_t sub_1D9BF6B18()
{
  result = qword_1ECB542E0;
  if (!qword_1ECB542E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB542E0);
  }

  return result;
}

unint64_t sub_1D9BF6B8C()
{
  result = qword_1ECB542F0;
  if (!qword_1ECB542F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB542F0);
  }

  return result;
}

unint64_t sub_1D9BF6BE4()
{
  result = qword_1ECB542F8;
  if (!qword_1ECB542F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB542F8);
  }

  return result;
}

unint64_t sub_1D9BF6C3C()
{
  result = qword_1ECB54300;
  if (!qword_1ECB54300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54300);
  }

  return result;
}

unint64_t sub_1D9BF6C94()
{
  result = qword_1ECB54308;
  if (!qword_1ECB54308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54308);
  }

  return result;
}

unint64_t sub_1D9BF6CEC()
{
  result = qword_1ECB54310;
  if (!qword_1ECB54310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54310);
  }

  return result;
}

unint64_t sub_1D9BF6D44()
{
  result = qword_1ECB54318;
  if (!qword_1ECB54318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54318);
  }

  return result;
}

unint64_t sub_1D9BF6D9C()
{
  result = qword_1ECB54320;
  if (!qword_1ECB54320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54320);
  }

  return result;
}

uint64_t sub_1D9BF6E38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D9BF6E84()
{
  result = qword_1ECB54330;
  if (!qword_1ECB54330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54330);
  }

  return result;
}

unint64_t sub_1D9BF6EDC()
{
  result = qword_1ECB54338;
  if (!qword_1ECB54338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54338);
  }

  return result;
}

unint64_t sub_1D9BF6F34()
{
  result = qword_1ECB54340;
  if (!qword_1ECB54340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54340);
  }

  return result;
}

unint64_t sub_1D9BF6F8C()
{
  result = qword_1ECB54348;
  if (!qword_1ECB54348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54348);
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1D9BF701C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9BF7064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9BF7154(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D9BF71B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1D9BF724C()
{
  sub_1D9BF74B8(319, &qword_1EDD2C5C0, &type metadata for OntologyNode, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9BF74B8(319, &qword_1EDD2C5D8, &type metadata for VisualUnderstanding.DomainInfo, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D9BF7460();
      if (v2 <= 0x3F)
      {
        sub_1D9BF74B8(319, &qword_1EDD2C5B0, &type metadata for DomainPredictionNet.PredictionResult, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1D9BF74B8(319, qword_1EDD33BF0, &type metadata for ClassificationInfo, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1D9BF74B8(319, &qword_1EDD2C5C8, &type metadata for VisualUnderstanding.Signal, MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_1D9C7B93C();
              if (v6 <= 0x3F)
              {
                sub_1D9BF74B8(319, &qword_1EDD2C5D0, &type metadata for VisualUnderstanding.AdditionalSignal, MEMORY[0x1E69E62F8]);
                if (v7 <= 0x3F)
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

void sub_1D9BF7460()
{
  if (!qword_1EDD2C5B8)
  {
    _s14DetectedResultVMa();
    v0 = sub_1D9C7DF8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD2C5B8);
    }
  }
}

void sub_1D9BF74B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy157_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 141) = *(a2 + 141);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1D9BF753C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 157))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D9BF7598(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 156) = 0;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 157) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 157) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1D9BF7628(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9BF7670(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9BF76EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9BF7734(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for VisualUnderstanding.DomainInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualUnderstanding.DomainInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualUnderstanding.ImageRegion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualUnderstanding.ImageRegion.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualUnderstanding.Annotation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualUnderstanding.Annotation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9BF7C18()
{
  result = qword_1ECB54350;
  if (!qword_1ECB54350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54350);
  }

  return result;
}

unint64_t sub_1D9BF7C70()
{
  result = qword_1ECB54358;
  if (!qword_1ECB54358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54358);
  }

  return result;
}

unint64_t sub_1D9BF7CC8()
{
  result = qword_1ECB54360;
  if (!qword_1ECB54360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54360);
  }

  return result;
}

unint64_t sub_1D9BF7D20()
{
  result = qword_1ECB54368;
  if (!qword_1ECB54368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54368);
  }

  return result;
}

unint64_t sub_1D9BF7D78()
{
  result = qword_1ECB54370;
  if (!qword_1ECB54370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54370);
  }

  return result;
}

unint64_t sub_1D9BF7DD0()
{
  result = qword_1ECB54378;
  if (!qword_1ECB54378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54378);
  }

  return result;
}

unint64_t sub_1D9BF7E28()
{
  result = qword_1ECB54380;
  if (!qword_1ECB54380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54380);
  }

  return result;
}

unint64_t sub_1D9BF7E80()
{
  result = qword_1ECB54388;
  if (!qword_1ECB54388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54388);
  }

  return result;
}

unint64_t sub_1D9BF7ED8()
{
  result = qword_1ECB54390;
  if (!qword_1ECB54390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54390);
  }

  return result;
}

unint64_t sub_1D9BF7F30()
{
  result = qword_1ECB54398;
  if (!qword_1ECB54398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54398);
  }

  return result;
}

unint64_t sub_1D9BF7F88()
{
  result = qword_1ECB543A0;
  if (!qword_1ECB543A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB543A0);
  }

  return result;
}

unint64_t sub_1D9BF7FE0()
{
  result = qword_1ECB543A8;
  if (!qword_1ECB543A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB543A8);
  }

  return result;
}

unint64_t sub_1D9BF8038()
{
  result = qword_1ECB543B0;
  if (!qword_1ECB543B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB543B0);
  }

  return result;
}

unint64_t sub_1D9BF8090()
{
  result = qword_1ECB543B8;
  if (!qword_1ECB543B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB543B8);
  }

  return result;
}

unint64_t sub_1D9BF80E8()
{
  result = qword_1ECB543C0;
  if (!qword_1ECB543C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB543C0);
  }

  return result;
}

unint64_t sub_1D9BF8140()
{
  result = qword_1ECB543C8;
  if (!qword_1ECB543C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB543C8);
  }

  return result;
}

unint64_t sub_1D9BF8198()
{
  result = qword_1ECB543D0;
  if (!qword_1ECB543D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB543D0);
  }

  return result;
}

unint64_t sub_1D9BF81F0()
{
  result = qword_1EDD2C1D0;
  if (!qword_1EDD2C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C1D0);
  }

  return result;
}

unint64_t sub_1D9BF8248()
{
  result = qword_1EDD2C1D8;
  if (!qword_1EDD2C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C1D8);
  }

  return result;
}

unint64_t sub_1D9BF82A0()
{
  result = qword_1EDD2C288;
  if (!qword_1EDD2C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C288);
  }

  return result;
}

unint64_t sub_1D9BF82F8()
{
  result = qword_1EDD2C290;
  if (!qword_1EDD2C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C290);
  }

  return result;
}

unint64_t sub_1D9BF8350()
{
  result = qword_1EDD2C260;
  if (!qword_1EDD2C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C260);
  }

  return result;
}

unint64_t sub_1D9BF83A8()
{
  result = qword_1EDD2C268;
  if (!qword_1EDD2C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C268);
  }

  return result;
}

unint64_t sub_1D9BF8400()
{
  result = qword_1EDD2C2C8;
  if (!qword_1EDD2C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C2C8);
  }

  return result;
}

unint64_t sub_1D9BF8458()
{
  result = qword_1EDD2C2D0;
  if (!qword_1EDD2C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C2D0);
  }

  return result;
}

unint64_t sub_1D9BF84B0()
{
  result = qword_1ECB543D8;
  if (!qword_1ECB543D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB543D8);
  }

  return result;
}

unint64_t sub_1D9BF8508()
{
  result = qword_1ECB543E0;
  if (!qword_1ECB543E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB543E0);
  }

  return result;
}

unint64_t sub_1D9BF8560()
{
  result = qword_1ECB543E8;
  if (!qword_1ECB543E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB543E8);
  }

  return result;
}

unint64_t sub_1D9BF85B8()
{
  result = qword_1ECB543F0;
  if (!qword_1ECB543F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB543F0);
  }

  return result;
}

unint64_t sub_1D9BF8610()
{
  result = qword_1ECB543F8;
  if (!qword_1ECB543F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB543F8);
  }

  return result;
}

unint64_t sub_1D9BF8668()
{
  result = qword_1ECB54400;
  if (!qword_1ECB54400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54400);
  }

  return result;
}

unint64_t sub_1D9BF86C0()
{
  result = qword_1EDD2C228;
  if (!qword_1EDD2C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C228);
  }

  return result;
}

unint64_t sub_1D9BF8718()
{
  result = qword_1EDD2C230;
  if (!qword_1EDD2C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C230);
  }

  return result;
}

unint64_t sub_1D9BF8770()
{
  result = qword_1ECB54408;
  if (!qword_1ECB54408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54408);
  }

  return result;
}

unint64_t sub_1D9BF87C8()
{
  result = qword_1ECB54410;
  if (!qword_1ECB54410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54410);
  }

  return result;
}

unint64_t sub_1D9BF8820()
{
  result = qword_1EDD2C2A0;
  if (!qword_1EDD2C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C2A0);
  }

  return result;
}

unint64_t sub_1D9BF8878()
{
  result = qword_1EDD2C2A8;
  if (!qword_1EDD2C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C2A8);
  }

  return result;
}

uint64_t sub_1D9BF88CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D496C6C61 && a2 == 0xEF736E6F69676552;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEA00000000006E6FLL || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5264656E69666572 && a2 == 0xED00006E6F696765 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7A69536567616D69 && a2 == 0xE900000000000065 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6D6F436C727563 && a2 == 0xEB00000000646E61 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44497972657571 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9CA4470 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xEF7363697274654DLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1D9BF8B94()
{
  result = qword_1EDD2BF08;
  if (!qword_1EDD2BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BF08);
  }

  return result;
}

uint64_t sub_1D9BF8BE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D9CACCD0 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xEE00706D61745365)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_1D9BF8D10(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54420);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BF8B94();
  sub_1D9C7E95C();
  if (!v1)
  {
    v13 = 0;
    sub_1D9C7E5FC();
    v12 = 1;
    sub_1D9C7E61C();
    v2 = v9;
    v11 = 2;
    sub_1D9C7E68C();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v2;
}

uint64_t sub_1D9BF8F18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D9BF903C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D9BF915C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E756F4365636166 && a2 == 0xE900000000000074 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D9BF92D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6E6E4165636166 && a2 == 0xEF736E6F69746174;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9CACAD0 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6E6E417766736ELL && a2 == 0xEF736E6F69746174 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6E6E4174786574 && a2 == 0xEF736E6F69746174 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9CACAF0 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9CACB10 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001D9CACB30 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D9BF9520(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9CACB60 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79676F6C6F746E6FLL && a2 == 0xE800000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69616D6F446C6C61 && a2 == 0xED00006F666E496ELL || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F746365746564 && a2 == 0xEF73746C75736552 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D9CACB80 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65726F6353786F62 && a2 == 0xE800000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6552657372616F63 && a2 == 0xED000073746C7573 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x49656C6F68577369 && a2 == 0xEC0000006567616DLL || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x736C616E676973 && a2 == 0xE700000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x55676E6967676F6CLL && a2 == 0xEB00000000444955 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6570756F72477369 && a2 == 0xEF6E6F6967655264 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9CACBA0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1D9BF99B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696F506C61636F66 && a2 == 0xEA0000000000746ELL || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6870796C67 && a2 == 0xE900000000000065 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D9CACBC0 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C79616C70736964 && a2 == 0xEC0000006C656261 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4D79616C70736964 && a2 == 0xEE00656761737365 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x79676F6C6F746E6FLL && a2 == 0xE800000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F746365746564 && a2 == 0xED000065726F6353 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6353657372616F63 && a2 == 0xEB0000000065726FLL || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7463656C65537369 && a2 == 0xEA00000000006465 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6863726165537369 && a2 == 0xEC000000656C6261 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x72656E726F437369 && a2 == 0xED00006870796C47 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x5374736575716572 && a2 == 0xED00006863726165 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9CACBE0 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D9CACC00 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9CACC20 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D9CACC40 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6E6F43776F4C7369 && a2 == 0xEF65636E65646966)
  {

    return 18;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_1D9BF9FD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D9BFA0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D9BFA164()
{
  result = qword_1ECB54430;
  if (!qword_1ECB54430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54430);
  }

  return result;
}

uint64_t sub_1D9BFA1B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53300);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9BFA25C()
{
  result = qword_1ECB54448;
  if (!qword_1ECB54448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54448);
  }

  return result;
}

unint64_t sub_1D9BFA2B4()
{
  result = qword_1EDD2BEF8;
  if (!qword_1EDD2BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BEF8);
  }

  return result;
}

unint64_t sub_1D9BFA30C()
{
  result = qword_1EDD2BF00;
  if (!qword_1EDD2BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BF00);
  }

  return result;
}

void sub_1D9BFA3B0(uint64_t a1)
{
  v2 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 112);
  v37 = *(v7 + 16);
  if (!v37)
  {
    return;
  }

  v8 = 0;
  v38 = v7 + 32;
  v9 = 0x80000001D9CA60A0;
  v40 = 0x80000001D9CA3A40;
  v43 = (v3 + 8);
  v44 = (v3 + 16);
  *&v4 = 136315138;
  v41 = v4;
  v42 = v2;
  v36 = v7;
  v45 = 0x80000001D9CA60A0;
  while (1)
  {
    if (v8 >= *(v7 + 16))
    {
      goto LABEL_37;
    }

    v39 = v8;
    v10 = *(v38 + 48 * v8 + 32);
    v11 = *(v10 + 16);
    v47 = v10;

    v46 = v11;
    if (v11)
    {
      break;
    }

LABEL_3:
    v8 = v39 + 1;

    v7 = v36;
    if (v8 == v37)
    {
      return;
    }
  }

  v12 = 0;
  v13 = (v47 + 48);
  while (v12 < *(v47 + 16))
  {
    v14 = *(v13 - 1);
    v15 = *v13;
    v16 = v14 == 0xD00000000000002DLL && v9 == v15;
    if (v16 || (sub_1D9C7E7DC() & 1) != 0)
    {

      return;
    }

    v17 = qword_1EDD354B8;

    if (v17 != -1)
    {
      swift_once();
    }

    if (byte_1EDD354C0 != 1)
    {
LABEL_30:
      v27 = qword_1EDD354D8;
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
        v27 = qword_1EDD354D8;
      }

      goto LABEL_32;
    }

    v18 = [objc_opt_self() mainBundle];
    v19 = [v18 bundleIdentifier];

    if (v19)
    {
      v20 = sub_1D9C7DC7C();
      v22 = v21;

      if (v20 == 0xD00000000000002BLL && v40 == v22)
      {

LABEL_23:
        v24 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v24 = &off_1ECB51BA8;
        }

        goto LABEL_27;
      }

      v23 = sub_1D9C7E7DC();

      if (v23)
      {
        goto LABEL_23;
      }
    }

    v24 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v24 = &qword_1EDD355A8;
    }

LABEL_27:
    v25 = *(*v24 + 32);

    v26 = sub_1D9C7DC4C();
    LODWORD(v25) = [v25 BOOLForKey_];

    if (!v25)
    {
      goto LABEL_30;
    }

    v27 = qword_1EDD2C990;
    if (qword_1EDD2C988 != -1)
    {
      swift_once();
      v27 = qword_1EDD2C990;
    }

LABEL_32:
    v28 = __swift_project_value_buffer(v2, v27);
    (*v44)(v6, v28, v2);

    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E09C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = v32;
      *v31 = v41;

      v33 = sub_1D9A0E224(v14, v15, &v48);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_1D9962000, v29, v30, "embeddingURN not matching storefront URN %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      v34 = v32;
      v2 = v42;
      MEMORY[0x1DA7405F0](v34, -1, -1);
      MEMORY[0x1DA7405F0](v31, -1, -1);
    }

    else
    {
    }

    (*v43)(v6, v2);
    v9 = v45;
    ++v12;
    v13 += 3;
    if (v46 == v12)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1D9BFA95C(void (*a1)(_DWORD *a1@<X8>))
{
  v152 = a1;
  v159[3] = *MEMORY[0x1E69E9840];
  v1 = sub_1D9C7D8DC();
  v155 = *(v1 - 8);
  v156 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v154 = &v149 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  v153 = &v149 - v5;
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v149 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v149 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v149 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v149 - v17;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v149 - v21;
  type metadata accessor for TitleClassificationModel();
  sub_1D9C1EF74([objc_allocWithZone(MEMORY[0x1E695FEB0]) init]);
  v150 = v9;
  v151 = v22;
  v23 = v155;
  v154 = v24;
  type metadata accessor for CategoryClassificationModel();
  sub_1D9C1FAF0([objc_allocWithZone(MEMORY[0x1E695FEB0]) init]);
  v153 = v25;
  type metadata accessor for StorefrontLabelMapper();
  swift_allocObject();
  v151 = sub_1D9A73DEC();
  v32 = sub_1D9B438D4(v152, 1);
  type metadata accessor for TitleClassificationModelInput();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  v34 = [objc_allocWithZone(MEMORY[0x1E695FF08]) &selRef_setFont_size_stop_reporting_threshold_];
  v35 = *(v154 + 2);
  v159[0] = 0;
  v36 = [v35 predictionFromFeatures:v33 options:v34 error:v159];
  if (!v36)
  {
    v49 = v159[0];
    v50 = sub_1D9C7B70C();

    swift_willThrow();

    v51 = v156;
    static Logger.argos.getter(v12);
    v26 = v150;
    sub_1D9A3E0E0(v150);
    v27 = *(v23 + 8);
    v27(v12, v51);
    v28 = sub_1D9C7D8BC();
    v29 = sub_1D9C7E09C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D9962000, v28, v29, "Could not inference title model for storefront brand classification", v30, 2u);
      MEMORY[0x1DA7405F0](v30, -1, -1);
    }

    v27(v26, v51);
    goto LABEL_5;
  }

  v37 = v36;
  v38 = v159[0];

  v39 = sub_1D9C7DC4C();
  v40 = [v37 featureValueForName_];

  if (!v40)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v41 = [v40 multiArrayValue];

  if (!v41)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  swift_unknownObjectRelease();
  v42 = [v41 numberArray];

  sub_1D99CC024();
  v43 = sub_1D9C7DF2C();

  v52 = v43;
  v53 = sub_1D9B438D4(v152, 1);
  type metadata accessor for CategoryClassificationModelInput();
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  v55 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v56 = *(v153 + 2);
  v159[0] = 0;
  v57 = [v56 predictionFromFeatures:v54 options:v55 error:v159];
  if (!v57)
  {
    v145 = v159[0];
    v146 = sub_1D9C7B70C();

    swift_willThrow();

    static Logger.argos.getter(v18);
    sub_1D9A3E0E0(v15);
    v44 = *(v23 + 8);
    v45 = v156;
    v44(v18, v156);
    v46 = sub_1D9C7D8BC();
    v47 = sub_1D9C7E09C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1D9962000, v46, v47, "Could not inference category model for storefront type classification", v48, 2u);
      MEMORY[0x1DA7405F0](v48, -1, -1);
    }

    v44(v15, v45);
LABEL_5:

    return MEMORY[0x1E69E7CC0];
  }

  v58 = v57;
  v59 = v159[0];

  v60 = sub_1D9C7DC4C();
  v61 = [v58 featureValueForName_];

  if (!v61)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v62 = [v61 multiArrayValue];

  if (!v62)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  swift_unknownObjectRelease();
  v63 = [v62 numberArray];

  v64 = sub_1D9C7DF2C();
  v65 = sub_1D9A441B8(MEMORY[0x1E69E7CC0]);
  v66 = v52 & 0xFFFFFFFFFFFFFF8;
  if (v52 >> 62)
  {
LABEL_85:
    v147 = v65;
    v67 = sub_1D9C7E50C();
    v65 = v147;
  }

  else
  {
    v67 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = v151;
  v156 = v65;
  if (!v67)
  {
    goto LABEL_43;
  }

  v69 = 0;
  do
  {
    v70 = v69;
    while (1)
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x1DA73E610](v70, v52);
      }

      else
      {
        if (v70 >= *(v66 + 16))
        {
          goto LABEL_82;
        }

        v65 = *(v52 + 8 * v70 + 32);
      }

      v71 = v65;
      v69 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v72 = *(v68 + 40);
      if (*(v72 + 16))
      {
        v73 = sub_1D99F0BB0(v70);
        if (v74)
        {
          break;
        }
      }

      ++v70;
      if (v69 == v67)
      {
        goto LABEL_43;
      }
    }

    v75 = (*(v72 + 56) + 16 * v73);
    v76 = v75[1];
    v155 = *v75;

    [v71 floatValue];
    v78 = v77;
    v79 = v156;
    LODWORD(v151) = swift_isUniquelyReferenced_nonNull_native();
    v159[0] = v79;
    v152 = v76;
    v80 = sub_1D99ED894(v155, v76);
    v82 = v79[2];
    v83 = (v81 & 1) == 0;
    v84 = __OFADD__(v82, v83);
    v85 = v82 + v83;
    if (v84)
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    if (v79[3] >= v85)
    {
      if ((v151 & 1) == 0)
      {
        v156 = v80;
        v93 = v81;
        sub_1D9C13E54();
        LOBYTE(v81) = v93;
        v80 = v156;
      }

      v86 = v152;
    }

    else
    {
      LODWORD(v156) = v81;
      sub_1D9C09080(v85, v151);
      v86 = v152;
      v80 = sub_1D99ED894(v155, v152);
      v87 = v81 & 1;
      LOBYTE(v81) = v156;
      if ((v156 & 1) != v87)
      {
LABEL_100:
        result = sub_1D9C7E84C();
        __break(1u);
        return result;
      }
    }

    if (v81)
    {
      v88 = v80;

      v156 = v159[0];
      *(*(v159[0] + 7) + 4 * v88) = v78;

      continue;
    }

    v89 = v159[0];
    *(v159[0] + (v80 >> 6) + 8) |= 1 << v80;
    v90 = (v89[6] + 16 * v80);
    *v90 = v155;
    v90[1] = v86;
    *(v89[7] + 4 * v80) = v78;

    v91 = v89[2];
    v84 = __OFADD__(v91, 1);
    v92 = v91 + 1;
    if (v84)
    {
      goto LABEL_93;
    }

    v156 = v89;
    v89[2] = v92;
  }

  while (v69 != v67);
LABEL_43:

  v94 = MEMORY[0x1E69E7CC0];
  v155 = sub_1D9A441B8(MEMORY[0x1E69E7CC0]);
  v65 = sub_1D9A441B8(v94);
  v95 = v65;
  if (v64 >> 62)
  {
    v65 = sub_1D9C7E50C();
    v96 = v65;
    if (!v65)
    {
      goto LABEL_87;
    }

LABEL_45:
    v66 = 0;
    v152 = 0;
    v52 = v64 & 0xC000000000000001;
    while (2)
    {
      v97 = v66;
      while (1)
      {
        if (v52)
        {
          v65 = MEMORY[0x1DA73E610](v97, v64);
        }

        else
        {
          if (v97 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_84;
          }

          v65 = *(v64 + 8 * v97 + 32);
        }

        v98 = v65;
        v66 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          goto LABEL_83;
        }

        v99 = *(v68 + 24);
        if (*(v99 + 16))
        {
          v100 = sub_1D99F0BB0(v97);
          if (v101)
          {
            break;
          }
        }

        ++v97;
        if (v66 == v96)
        {
          goto LABEL_88;
        }
      }

      v102 = (*(v99 + 56) + 16 * v100);
      v103 = *v102;
      v150 = v95;
      v151 = v103;
      v104 = v102[1];

      [v98 floatValue];
      v106 = v105;
      v107 = v155;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v159[0] = v107;
      v149 = v104;
      v109 = sub_1D99ED894(v151, v104);
      v111 = v109;
      v112 = v107[2];
      v113 = (v110 & 1) == 0;
      v114 = v112 + v113;
      if (__OFADD__(v112, v113))
      {
        goto LABEL_90;
      }

      if (v107[3] >= v114)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v139 = v110;
          sub_1D9C13E54();
          LOBYTE(v110) = v139;
        }

        v115 = v149;
      }

      else
      {
        LODWORD(v155) = v110;
        sub_1D9C09080(v114, isUniquelyReferenced_nonNull_native);
        v115 = v149;
        v116 = sub_1D99ED894(v151, v149);
        v117 = v110 & 1;
        LOBYTE(v110) = v155;
        if ((v155 & 1) != v117)
        {
          goto LABEL_100;
        }

        v111 = v116;
      }

      v118 = v159[0];
      v155 = v159[0];
      if (v110)
      {
        *(*(v159[0] + 7) + 4 * v111) = v106;
      }

      else
      {
        *(v159[0] + (v111 >> 6) + 8) |= 1 << v111;
        v119 = (v118[6] + 16 * v111);
        *v119 = v151;
        v119[1] = v115;
        *(v118[7] + 4 * v111) = v106;
        v120 = v118[2];
        v84 = __OFADD__(v120, 1);
        v121 = v120 + 1;
        if (v84)
        {
          goto LABEL_94;
        }

        v118[2] = v121;
      }

      v122 = sub_1D9C7DCFC();
      v124 = v123;

      v159[0] = v122;
      v159[1] = v124;
      v157 = 46;
      v158 = 0xE100000000000000;
      sub_1D99A57F8();
      v125 = sub_1D9C7E2AC();

      if (v125[2])
      {
        v126 = v125[5];
        v151 = v125[4];

        [v98 floatValue];
        v128 = v127;
        sub_1D9979BF4(v152);
        v129 = v150;
        v130 = swift_isUniquelyReferenced_nonNull_native();
        v159[0] = v129;
        v152 = v126;
        v131 = sub_1D99ED894(v151, v126);
        v133 = *(v129 + 2);
        v134 = (v132 & 1) == 0;
        v84 = __OFADD__(v133, v134);
        v135 = v133 + v134;
        if (v84)
        {
          goto LABEL_92;
        }

        v136 = v132;
        if (*(v129 + 3) >= v135)
        {
          if ((v130 & 1) == 0)
          {
            v140 = v131;
            sub_1D9C13E54();
            v131 = v140;
            v150 = v159[0];
            if (v136)
            {
              goto LABEL_74;
            }

            goto LABEL_76;
          }
        }

        else
        {
          sub_1D9C09080(v135, v130);
          v150 = v159[0];
          v131 = sub_1D99ED894(v151, v152);
          if ((v136 & 1) != (v137 & 1))
          {
            goto LABEL_100;
          }
        }

        if (v136)
        {
LABEL_74:
          v138 = v131;

          v131 = v138;
          v95 = v150;
          goto LABEL_78;
        }

LABEL_76:
        v95 = v150;
        *&v150[8 * (v131 >> 6) + 64] |= 1 << v131;
        v141 = (*(v95 + 6) + 16 * v131);
        v142 = v152;
        *v141 = v151;
        v141[1] = v142;
        *(*(v95 + 7) + 4 * v131) = 0;
        v143 = *(v95 + 2);
        v84 = __OFADD__(v143, 1);
        v144 = v143 + 1;
        if (v84)
        {
          goto LABEL_95;
        }

        *(v95 + 2) = v144;
LABEL_78:
        *(*(v95 + 7) + 4 * v131) = v128 + *(*(v95 + 7) + 4 * v131);

        v152 = sub_1D9BFA384;
        if (v66 != v96)
        {
          continue;
        }

        goto LABEL_88;
      }

      goto LABEL_91;
    }
  }

  v96 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v96)
  {
    goto LABEL_45;
  }

LABEL_87:
  v152 = 0;
LABEL_88:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54450);
  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_1D9C85490;
  *(v148 + 32) = 0;
  *(v148 + 40) = v156;
  *(v148 + 48) = 1;
  *(v148 + 56) = v155;
  *(v148 + 64) = 2;
  *(v148 + 72) = v95;

  sub_1D9979BF4(v152);
  return v148;
}