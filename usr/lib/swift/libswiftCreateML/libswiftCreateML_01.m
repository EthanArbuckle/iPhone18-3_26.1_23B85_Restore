char *initializeWithTake for MLActivityClassifier(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v5 = type metadata accessor for LearningPhase(0);
  (*(*(v5 - 8) + 32))(&a1[v4], &a2[v4], v5);
  v6 = type metadata accessor for MLActivityClassifier.Model(0);
  v7 = *(v6 + 20);
  v67 = type metadata accessor for Conv2D(0);
  v61 = *(*(v67 - 1) + 32);
  v61(&a1[v7], &a2[v7], v67);
  v8 = v6;
  v9 = *(v6 + 24);
  v55 = type metadata accessor for ReLU(0);
  v58 = *(*(v55 - 8) + 32);
  v58(&a1[v9], &a2[v9], v55);
  v10 = v8[7];
  __dstb = type metadata accessor for Dropout(0);
  v53 = *(*(__dstb - 1) + 32);
  v53(&a1[v10], &a2[v10], __dstb);
  v11 = v8[8];
  v12 = &a1[v11];
  v13 = &a2[v11];
  *&a1[v11] = *&a2[v11];
  a1[v11 + 16] = a2[v11 + 16];
  a1[v11 + 17] = a2[v11 + 17];
  v14 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v15 = &v12[v14];
  v16 = &v13[v14];
  v17 = type metadata accessor for LSTM(0);
  (*(*(v17 - 8) + 32))(v15, v16, v17);
  v61(&a1[v8[9]], &a2[v8[9]], v67);
  v18 = v8[10];
  v19 = type metadata accessor for BatchNorm(0);
  (*(*(v19 - 8) + 32))(&a1[v18], &a2[v18], v19);
  v58(&a1[v8[11]], &a2[v8[11]], v55);
  v53(&a1[v8[12]], &a2[v8[12]], __dstb);
  v61(&a1[v8[13]], &a2[v8[13]], v67);
  *&a1[v8[14]] = *&a2[v8[14]];
  *&a1[v8[15]] = *&a2[v8[15]];
  v62 = v8;
  v20 = v8[16];
  v21 = &a1[v20];
  v22 = &a2[v20];
  *&a1[v20] = *&a2[v20];
  *&a1[v20 + 8] = *&a2[v20 + 8];
  a1[v20 + 16] = a2[v20 + 16];
  *&a1[v20 + 24] = *&a2[v20 + 24];
  *&a1[v20 + 40] = *&a2[v20 + 40];
  *&a1[v20 + 48] = *&a2[v20 + 48];
  *&a1[v20 + 64] = *&a2[v20 + 64];
  v59 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v23 = *(v59 + 44);
  v68 = v21;
  __dst = &v21[v23];
  v56 = v22;
  v24 = &v22[v23];
  v25 = type metadata accessor for DataFrame(0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25))
  {
    v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v24, *(*(v26 - 8) + 64));
  }

  else
  {
    (*(*(v25 - 8) + 32))(__dst, v24, v25);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v25);
  }

  v27 = *(v59 + 48);
  v28 = &v68[v27];
  v29 = &v22[v27];
  v54 = v25;
  if (__swift_getEnumTagSinglePayload(&v56[v27], 1, v25))
  {
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v28, v29, *(*(v30 - 8) + 64));
  }

  else
  {
    (*(*(v25 - 8) + 32))(v28, v29, v25);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v25);
  }

  *&a1[v62[17]] = *&a2[v62[17]];
  v31 = v62[18];
  *&a1[v31 + 16] = *&a2[v31 + 16];
  *&a1[v31] = *&a2[v31];
  *&a1[a3[5]] = *&a2[a3[5]];
  v32 = a3[6];
  v33 = &a1[v32];
  v34 = &a2[v32];
  a1[v32 + 8] = a2[v32 + 8];
  *&a1[v32] = *&a2[v32];
  v63 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v35 = v63[5];
  v57 = v33;
  v69 = &v33[v35];
  v36 = &v34[v35];
  v37 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  if (swift_getEnumCaseMultiPayload(v36, v37) == 1)
  {
    v60 = v37;
    v38 = type metadata accessor for MLActivityClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v36, v38);
    __dsta = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v45 = v36;
      v44 = v69;
      (*(*(v54 - 8) + 32))(v69, v45);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v40 = type metadata accessor for URL(0);
      (*(*(v40 - 8) + 32))(v69, v36, v40);
      v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
      *&v69[v41[12]] = *&v36[v41[12]];
      *&v69[v41[16]] = *&v36[v41[16]];
      *&v69[v41[20]] = *&v36[v41[20]];
      v42 = v41[24];
      v43 = *&v36[v42];
      v44 = v69;
      *&v69[v42] = v43;
    }

    else
    {
      v46 = type metadata accessor for URL(0);
      v47 = v36;
      v44 = v69;
      (*(*(v46 - 8) + 32))(v69, v47, v46);
    }

    swift_storeEnumTagMultiPayload(v44, v38, __dsta);
    swift_storeEnumTagMultiPayload(v44, v60, 1);
  }

  else
  {
    memcpy(v69, v36, *(*(v37 - 8) + 64));
  }

  v48 = v63[6];
  v57[v48 + 8] = v34[v48 + 8];
  *&v57[v48] = *&v34[v48];
  v49 = v63[7];
  *&v57[v49] = *&v34[v49];
  v57[v49 + 8] = v34[v49 + 8];
  v50 = v63[8];
  *&v57[v50] = *&v34[v50];
  v57[v50 + 8] = v34[v50 + 8];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[a3[9]] = *&a2[a3[9]];
  *&a1[a3[10]] = *&a2[a3[10]];
  return a1;
}

char *assignWithTake for MLActivityClassifier(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v5 = type metadata accessor for LearningPhase(0);
  (*(*(v5 - 8) + 40))(&a1[v4], &a2[v4], v5);
  v6 = type metadata accessor for MLActivityClassifier.Model(0);
  v7 = *(v6 + 20);
  v8 = v6;
  __dstb = type metadata accessor for Conv2D(0);
  __srcb = *(*(__dstb - 1) + 40);
  __srcb(&a1[v7], &a2[v7], __dstb);
  v9 = v8[6];
  v89 = type metadata accessor for ReLU(0);
  v90 = *(*(v89 - 8) + 40);
  v90(&a1[v9], &a2[v9], v89);
  v10 = v8;
  v11 = v8[7];
  v86 = type metadata accessor for Dropout(0);
  v84 = *(*(v86 - 8) + 40);
  v84(&a1[v11], &a2[v11], v86);
  v12 = v8[8];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *&a1[v12] = *&a2[v12];
  a1[v12 + 16] = a2[v12 + 16];
  a1[v12 + 17] = a2[v12 + 17];
  v15 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v16 = &v13[v15];
  v17 = &v14[v15];
  v18 = type metadata accessor for LSTM(0);
  (*(*(v18 - 8) + 40))(v16, v17, v18);
  __srcb(&a1[v10[9]], &a2[v10[9]], __dstb);
  v19 = v10[10];
  v20 = type metadata accessor for BatchNorm(0);
  (*(*(v20 - 8) + 40))(&a1[v19], &a2[v19], v20);
  v90(&a1[v10[11]], &a2[v10[11]], v89);
  v84(&a1[v10[12]], &a2[v10[12]], v86);
  __srcb(&a1[v10[13]], &a2[v10[13]], __dstb);
  *&a1[v10[14]] = *&a2[v10[14]];
  v21 = v10[15];
  v22 = *&a1[v21];
  *&a1[v21] = *&a2[v21];
  v22;
  v87 = v10;
  v23 = v10[16];
  v24 = &a1[v23];
  v25 = &a2[v23];
  *&a1[v23] = *&a2[v23];
  *&a1[v23 + 8] = *&a2[v23 + 8];
  a1[v23 + 16] = a2[v23 + 16];
  *&a1[v23 + 24] = *&a2[v23 + 24];
  v26 = *&a1[v23 + 40];
  *&a1[v23 + 40] = *&a2[v23 + 40];
  v26;
  *&a1[v23 + 48] = *&a2[v23 + 48];
  v27 = *&a1[v23 + 56];
  *&a1[v23 + 56] = *&a2[v23 + 56];
  v27;
  *&a1[v23 + 64] = *&a2[v23 + 64];
  v28 = *&a1[v23 + 72];
  v91 = a1;
  *&a1[v23 + 72] = *&a2[v23 + 72];
  v28;
  v85 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v29 = *(v85 + 44);
  v30 = &v24[v29];
  __src = v25;
  v31 = &v25[v29];
  v32 = type metadata accessor for DataFrame(0);
  LODWORD(v25) = __swift_getEnumTagSinglePayload(v30, 1, v32);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v32);
  if (v25)
  {
    if (!EnumTagSinglePayload)
    {
      (*(*(v32 - 8) + 32))(v30, v31, v32);
      __swift_storeEnumTagSinglePayload(v30, 0, 1, v32);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v34 = *(v32 - 8);
  if (EnumTagSinglePayload)
  {
    (*(v34 + 8))(v30, v32);
LABEL_6:
    v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v30, v31, *(*(v35 - 8) + 64));
    goto LABEL_7;
  }

  (*(v34 + 40))(v30, v31, v32);
LABEL_7:
  v36 = a2;
  v37 = v91;
  v38 = *(v85 + 48);
  v39 = &__src[v38];
  __dst = &v24[v38];
  v40 = __swift_getEnumTagSinglePayload(&v24[v38], 1, v32);
  v41 = __swift_getEnumTagSinglePayload(v39, 1, v32);
  v82 = v32;
  if (v40)
  {
    if (v41)
    {
      v42 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v43 = __dst;
LABEL_12:
      memcpy(v43, v39, v42);
      goto LABEL_16;
    }

    (*(*(v32 - 8) + 32))(__dst, v39, v32);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v32);
  }

  else
  {
    v44 = *(v32 - 8);
    if (v41)
    {
      (*(v44 + 8))(__dst, v32);
      v42 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v43 = __dst;
      goto LABEL_12;
    }

    (*(v44 + 40))(__dst, v39, v32);
  }

LABEL_16:
  v45 = v87[17];
  v46 = *&v91[v45];
  *&v91[v45] = *&a2[v45];

  v47 = v87[18];
  v48 = &v91[v47];
  v49 = &a2[v47];
  if (*&v91[v47])
  {
    v50 = *&a2[v47];
    if (v50)
    {
      *v48 = v50;

      v51 = *(v48 + 1);
      *(v48 + 1) = *(v49 + 1);

      v52 = *(v48 + 2);
      *(v48 + 2) = *(v49 + 2);
      v52;
    }

    else
    {
      outlined destroy of ClassificationMetricsContainer(v48);
      *v48 = *v49;
      *(v48 + 2) = *(v49 + 2);
    }
  }

  else
  {
    *(v48 + 2) = *(v49 + 2);
    *v48 = *v49;
  }

  v53 = a3[5];
  v54 = *&v91[v53];
  *&v91[v53] = *&a2[v53];

  v55 = a3[6];
  v56 = &v91[v55];
  v57 = &a2[v55];
  v58 = v91[v55 + 8];
  if (v58 == -1)
  {
    *(v56 + 8) = v57[8];
    *v56 = *v57;
  }

  else
  {
    v59 = a2[v55 + 8];
    if (v59 == -1)
    {
      outlined destroy of MLDataTable(v56);
      *v56 = *v57;
      *(v56 + 8) = v57[8];
    }

    else
    {
      v60 = *v56;
      *v56 = *v57;
      *(v56 + 8) = v59 & 1;
      outlined consume of Result<_DataTable, Error>(v60, v58);
    }
  }

  v61 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  if (v91 != a2)
  {
    __dsta = v61;
    v62 = v61[5];
    v63 = (v56 + v62);
    v64 = &v57[v62];
    outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
    v65 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    if (swift_getEnumCaseMultiPayload(v64, v65) == 1)
    {
      __srca = type metadata accessor for MLActivityClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v64, __srca);
      v88 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload == 2)
      {
        (*(*(v82 - 8) + 32))(v63, v64);
      }

      else if (EnumCaseMultiPayload == 1)
      {
        v67 = type metadata accessor for URL(0);
        (*(*(v67 - 8) + 32))(v63, v64, v67);
        v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        *&v63[v68[12]] = *&v64[v68[12]];
        *&v63[v68[16]] = *&v64[v68[16]];
        *&v63[v68[20]] = *&v64[v68[20]];
        *&v63[v68[24]] = *&v64[v68[24]];
      }

      else
      {
        v69 = type metadata accessor for URL(0);
        (*(*(v69 - 8) + 32))(v63, v64, v69);
      }

      swift_storeEnumTagMultiPayload(v63, __srca, v88);
      swift_storeEnumTagMultiPayload(v63, v65, 1);
    }

    else
    {
      memcpy(v63, v64, *(*(v65 - 8) + 64));
    }

    v36 = a2;
    v37 = v91;
    v61 = __dsta;
  }

  v70 = v61[6];
  *(v56 + v70 + 8) = v57[v70 + 8];
  *(v56 + v70) = *&v57[v70];
  v71 = v61[7];
  *(v56 + v71) = *&v57[v71];
  *(v56 + v71 + 8) = v57[v71 + 8];
  v72 = v61[8];
  *(v56 + v72) = *&v57[v72];
  *(v56 + v72 + 8) = v57[v72 + 8];
  v73 = a3[7];
  *&v37[v73] = *(v36 + v73);
  v74 = *&v37[v73 + 8];
  *&v37[v73 + 8] = *(v36 + v73 + 8);
  v74;
  v75 = a3[8];
  *&v37[v75] = *(v36 + v75);
  v76 = *&v37[v75 + 8];
  *&v37[v75 + 8] = *(v36 + v75 + 8);
  v76;
  v77 = a3[9];
  v78 = *&v37[v77];
  *&v37[v77] = *(v36 + v77);
  v78;
  v79 = a3[10];
  *&v37[v79] = *(v36 + v79);
  v80 = *&v37[v79 + 8];
  *&v37[v79 + 8] = *(v36 + v79 + 8);
  v80;
  return v37;
}

uint64_t sub_161C8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLActivityClassifier.Model(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
    v4 = *(a3 + 24) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  result = 0;
  if ((*(a1 + *(a3 + 20)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 20)) >> 1) + 1;
  }

  return result;
}

uint64_t sub_16255(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLActivityClassifier.Model(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    if (a3 == 0x7FFFFFFF)
    {
      result = *(a4 + 20);
      *(a1 + result) = 2 * (a2 - 1);
      return result;
    }

    v7 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
    v6 = *(a4 + 24) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLActivityClassifier(uint64_t a1)
{
  result = type metadata accessor for MLActivityClassifier.Model(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &value witness table for Builtin.UnknownObject + 64;
    result = type metadata accessor for MLActivityClassifier.ModelParameters(319);
    if (v3 <= 0x3F)
    {
      v4[2] = *(result - 8) + 64;
      v4[3] = &unk_33D568;
      v4[4] = &unk_33D568;
      v4[5] = &value witness table for Builtin.BridgeObject + 64;
      v4[6] = &unk_33D568;
      swift_initStructMetadata(a1, 256, 7, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with take of DataFrame?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
  (*(*(v3 - 8) + 32))(a2, a1, v3);
  return a2;
}

uint64_t partial apply for specialized closure #1 in blockAwait<A>(_:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc(192);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return specialized closure #1 in blockAwait<A>(_:)(a1, v3, v4, v8, v9, v10, v5);
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(void *a1)
{
  result = *(a1[3] - 8);
  v2 = *(result + 80);
  if ((v2 & 0x20000) != 0)
  {
    return *a1, *(result + 64) + ((v2 + 16) & ~v2), v2 | 7;
  }

  return result;
}

uint64_t type metadata accessor for OS_os_log(uint64_t a1, uint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v4 = objc_opt_self(*a3);
    result = swift_getObjCClassMetadata(v4);
    *a2 = result;
  }

  return result;
}

uint64_t outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
  (*(*(v3 - 8) + 40))(a2, a1, v3);
  return a2;
}

uint64_t partial apply for specialized closure #1 in blockAwait<A>(_:)()
{
  v2 = *v0;
  *(*v0 + 16);
  return (*(v2 + 8))();
}

{
  return partial apply for specialized closure #1 in blockAwait<A>(_:)();
}

uint64_t outlined init with copy of MLTrainingSessionParameters(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3(0);
  (*(*(v3 - 8) + 16))(a2, a1, v3);
  return a2;
}

uint64_t sub_16F0F()
{
  v1 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v2 = *(v1 - 8);
  v17 = *(v2 + 80);
  v3 = ~*(v2 + 80) & (v17 + 16);
  v20 = *(v2 + 64);
  v19 = type metadata accessor for TrainingTablePrinter(0);
  v4 = *(v19 - 8);
  v5 = *(v4 + 80);
  v18 = *(v4 + 64);
  v6 = v3 + v0;
  *(v0 + v3 + 40);
  *(v0 + v3 + 56);
  v16 = v0;
  *(v0 + v3 + 72);
  v21 = v1;
  v7 = v3 + v0 + *(v1 + 44);
  v8 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  v9 = *(v21 + 48) + v6;
  if (!__swift_getEnumTagSinglePayload(v9, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v9, v8);
  }

  v10 = v5 | v17 | 7;
  v11 = (v5 + v20 + v3) & ~v5;
  v12 = v11 + v18;
  v13 = v16 + v11;
  v14 = type metadata accessor for Date(0);
  (*(*(v14 - 8) + 8))(v13, v14);

  *(*(v19 + 24) + v13);
  return swift_deallocObject(v16, v12, v10);
}

uint64_t outlined init with take of MLClassifierMetrics(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3(0);
  (*(*(v3 - 8) + 32))(a2, a1, v3);
  return a2;
}

uint64_t partial apply for closure #1 in static MLActivityClassifier.train(with:)(uint64_t a1)
{
  v2 = *(type metadata accessor for MLActivityClassifier.Configuration(0) - 8);
  v3 = ~*(v2 + 80) & (*(v2 + 80) + 16);
  v4 = v3 + *(v2 + 64);
  v5 = *(*(type metadata accessor for TrainingTablePrinter(0) - 8) + 80);
  return closure #1 in static MLActivityClassifier.train(with:)(a1, v1 + v3, v1 + ((v5 + v4) & ~v5));
}

uint64_t lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric()
{
  result = lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric;
  if (!lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.Metric, &type metadata for MLProgress.Metric);
    lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric;
  if (!lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.Metric, &type metadata for MLProgress.Metric);
    lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric;
  if (!lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.Metric, &type metadata for MLProgress.Metric);
    lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric;
  if (!lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.Metric, &type metadata for MLProgress.Metric);
    lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric;
  if (!lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.Metric, &type metadata for MLProgress.Metric);
    lazy protocol witness table cache variable for type MLProgress.Metric and conformance MLProgress.Metric = result;
  }

  return result;
}

uint64_t specialized closure #1 in _StringGuts.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = v3;
  result = a3();
  if (!v4)
  {
    result = v7;
    *v5 = v7;
  }

  return result;
}

uint64_t outlined destroy of MLActivityClassifier.ModelParameters(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:)(void *a1)
{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1);
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1);
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1);
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1);
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1);
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1, specialized closure #1 in MLUntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1, specialized closure #1 in MLUntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 16), a1);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease(*(v0 + 16));
  *(v0 + 32);
  *(v0 + 48);

  return swift_deallocObject(v0, 64, 7);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg50125_s8CreateML20MLHandPoseClassifierV15modelPrediction2on5usingSaySS5label_Sd10confidencetGSo12MLMultiArrayC_So7MLModelCtKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAOSiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  if ((a1 & 0x4000000000000001) != 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFF8;
    if (a1)
    {
      v12 = a1;
    }

    v2 = _CocoaArrayWrapper.endIndex.getter(v12);
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
  }

  if (v2)
  {
    v3 = 0;
    if (v2 > 0)
    {
      v3 = v2;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    if (v2 < 0)
    {
      BUG();
    }

    v4 = 0;
    for (i = 0; i != v2; v4 = i)
    {
      if (__OFADD__(1, i++))
      {
        BUG();
      }

      if ((a1 & 0xC000000000000003) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)(v4, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v4 + 32);
      }

      v8 = v7;
      v13 = [v7 integerValue];

      v9 = _swiftEmptyArrayStorage[2];
      v10 = v9 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v9)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v9 + 1, 1);
        v10 = v9 + 1;
      }

      _swiftEmptyArrayStorage[2] = v10;
      _swiftEmptyArrayStorage[v9 + 4] = v13;
    }
  }

  return _swiftEmptyArrayStorage;
}

unint64_t *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SaySfGs5NeverOTg5Tm(void (*a1)(void *), uint64_t a2, uint64_t a3, void (*a4)(BOOL, unint64_t, uint64_t))
{
  v18 = a2;
  v19 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v22 = &_swiftEmptyArrayStorage;
  v6 = v4;
  v20 = a4;
  a4(0, v4, 0);
  v7 = &_swiftEmptyArrayStorage;
  v8 = (a3 + 40);
  do
  {
    v17 = v4;
    v9 = *v8;
    v15[0] = *(v8 - 1);
    v15[1] = v9;
    v9;
    v10 = v23;
    v19(v15);
    v23 = v10;
    if (v10)
    {
      v7;
      v9, v6;
      BUG();
    }

    v9, v6;
    v11 = v16;
    v22 = v7;
    v12 = v7[2];
    v13 = v7[3];
    v6 = v12 + 1;
    if (v13 >> 1 <= v12)
    {
      v21 = v16;
      v20(v13 >= 2, v6, 1);
      v11 = v21;
      v7 = v22;
    }

    v7[2] = v6;
    v7[v12 + 4] = v11;
    v8 += 2;
    v4 = v17 - 1;
  }

  while (v17 != 1);
  return v7;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a2;
  v22 = a1;
  if (__OFSUB__(a4, a3))
  {
    BUG();
  }

  if (a4 == a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v29 = a3;
  v31 = _swiftEmptyArrayStorage;
  v6 = 0;
  if (a4 - a3 > 0)
  {
    v6 = a4 - a3;
  }

  v30 = a4 - a3;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v30;
  if (v30 < 0)
  {
    BUG();
  }

  result = v31;
  v9 = v29;
  v24 = v29 - 1;
  v10 = 0;
  v23 = a4;
  do
  {
    if (v10 >= v7)
    {
      BUG();
    }

    v11 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    v12 = result;
    v21[0] = v9 + v10;
    v22(v21);
    if (v4)
    {

      BUG();
    }

    v13 = v19;
    v14 = v20;
    result = v12;
    v31 = v12;
    v15 = v12[2];
    v16 = result[3];
    v17 = v15 + 1;
    v7 = v30;
    if (v16 >> 1 <= v15)
    {
      v26 = v19;
      v25 = 0;
      v27 = v20;
      v28 = v15 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 >= 2, v17, 1);
      v17 = v28;
      v14 = v27;
      v13 = v26;
      v7 = v30;
      v4 = v25;
      result = v31;
    }

    v18 = 2 * v15;
    result[2] = v17;
    result[v18 + 4] = v13;
    result[v18 + 5] = v14;
    v9 = v29;
    if (v23 < v29)
    {
      BUG();
    }

    if ((v10 + v24 + 1) >= v23)
    {
      BUG();
    }

    ++v10;
  }

  while (v11 != v7);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData0E5FrameV4RowsV_8CreateML08WeightedE6SampleVsAE_pTg5(void (*a1)(void *, void *), uint64_t a2)
{
  v31 = a2;
  v32 = a1;
  v33 = type metadata accessor for DataFrame.Row(0);
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v34 = v29;
  v35 = *(type metadata accessor for WeightedDataSample(0) - 8);
  v7 = *(v35 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v39 = v29;
  v10 = type metadata accessor for DataFrame.Rows(0);
  v11 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type DataFrame.Rows and conformance DataFrame.Rows, &type metadata accessor for DataFrame.Rows, &protocol conformance descriptor for DataFrame.Rows);
  v44 = v10;
  v12 = v10;
  v13 = v11;
  v14 = dispatch thunk of Collection.count.getter(v12, v11);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v42 = _swiftEmptyArrayStorage;
  v15 = 0;
  if (v14 > 0)
  {
    v15 = v14;
  }

  v41 = v14;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
  v45 = v42;
  dispatch thunk of Collection.startIndex.getter(v44, v13);
  if (v41 < 0)
  {
    BUG();
  }

  v40 = v13;
  v16 = 0;
  v17 = v44;
  v36 = v2;
  v37 = v3;
  while (1)
  {
    v18 = __OFADD__(1, v16);
    v19 = v16 + 1;
    if (v18)
    {
      BUG();
    }

    v30 = v19;
    v20 = dispatch thunk of Collection.subscript.read(v29, v38, v17, v40);
    v21 = v34;
    v22 = v33;
    (*(v3 + 16))(v34, v23, v33);
    v20(v29, 0);
    v24 = v43;
    v32(v21, v29);
    if (v24)
    {
      break;
    }

    v43 = 0;
    (*(v3 + 8))(v21, v22);
    v25 = v45;
    v42 = v45;
    v26 = v45[2];
    if (v45[3] >> 1 <= v26)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v45[3] >= 2uLL, v26 + 1, 1);
      v25 = v42;
    }

    v25[2] = v26 + 1;
    v27 = *(v35 + 80);
    v45 = v25;
    outlined init with take of MLClassifierMetrics(v39, v25 + ((v27 + 32) & ~v27) + *(v35 + 72) * v26, type metadata accessor for WeightedDataSample);
    v17 = v44;
    dispatch thunk of Collection.formIndex(after:)(v38, v44, v40);
    v16 = v30;
    v3 = v37;
    if (v30 == v41)
    {
      return v45;
    }
  }

  (*(v3 + 8))(v21, v22);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData12FilledColumnVyAF0G0VySSGG_SSSgs5NeverOTg5(void (*a1)(void *), uint64_t a2)
{
  v4 = v2;
  v21[2] = a2;
  v22 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v6 = dispatch thunk of Collection.count.getter(v30, v5);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v28 = _swiftEmptyArrayStorage;
  v7 = 0;
  if (v6 > 0)
  {
    v7 = v6;
  }

  v26 = v6;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  *&v27 = v28;
  v25 = v5;
  dispatch thunk of Collection.startIndex.getter(v30, v5);
  if (v26 < 0)
  {
    BUG();
  }

  v8 = 0;
  v23 = v3;
  do
  {
    if (__OFADD__(1, v8++))
    {
      BUG();
    }

    v29 = v4;
    v10 = dispatch thunk of Collection.subscript.read(v19, v24, v30, v25);
    v12 = v11[1];
    v21[0] = *v11;
    v21[1] = v12;
    v12;
    v10(v19, 0);
    v13 = v29;
    v22(v21);
    v29 = v13;
    if (v13)
    {

      v12;
      BUG();
    }

    v12;
    v14 = v20;
    v15 = v27;
    v28 = v27;
    v16 = *(v27 + 16);
    v17 = *(v27 + 24);
    if (v17 >> 1 <= v16)
    {
      v27 = v20;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 >= 2, v16 + 1, 1);
      v14 = v27;
      v15 = v28;
    }

    v15[2] = v16 + 1;
    *&v27 = v15;
    *&v15[2 * v16 + 4] = v14;
    dispatch thunk of Collection.formIndex(after:)(v24, v30, v25);
    v4 = v29;
  }

  while (v8 != v26);
  return v27;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = v3;
  v25 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v6 = _swiftEmptyArrayStorage;
  v7 = (a3 + 40);
  do
  {
    v20 = v4;
    v8 = *v7;
    v19[0] = *(v7 - 1);
    v19[1] = v8;
    v8;
    v9 = v26;
    v22(v19);
    v26 = v9;
    if (v9)
    {

      v8;
      BUG();
    }

    v8;
    v10 = v17;
    v11 = v18;
    v25 = v6;
    v12 = v6[2];
    v13 = v6[3];
    v14 = v12 + 1;
    if (v13 >> 1 <= v12)
    {
      v23 = v18;
      v24 = v17;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 >= 2, v14, 1);
      v11 = v23;
      v10 = v24;
      v6 = v25;
    }

    v6[2] = v14;
    v15 = 2 * v12;
    v6[v15 + 4] = v10;
    v6[v15 + 5] = v11;
    v7 += 2;
    v4 = v20 - 1;
  }

  while (v20 != 1);
  return v6;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sfs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a2;
  v18 = a1;
  if (__OFSUB__(a4, a3))
  {
    BUG();
  }

  if (a4 == a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = a3;
  v27 = _swiftEmptyArrayStorage;
  v6 = 0;
  if (a4 - a3 > 0)
  {
    v6 = a4 - a3;
  }

  v26 = a4 - a3;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v26;
  if (v26 < 0)
  {
    BUG();
  }

  result = v27;
  v9 = v23;
  v20 = v23 - 1;
  v10 = 0;
  v19 = a4;
  do
  {
    if (v10 >= v7)
    {
      BUG();
    }

    v11 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    v12 = result;
    v17[0] = v9 + v10;
    v18(v17);
    if (v4)
    {

      BUG();
    }

    v13 = v24;
    result = v12;
    v27 = v12;
    v14 = v12[2];
    v15 = result[3];
    v16 = v14 + 1;
    v7 = v26;
    if (v15 >> 1 <= v14)
    {
      v21 = 0;
      v25 = v24;
      v22 = v14 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v16, 1);
      v16 = v22;
      v13 = v25;
      v7 = v26;
      v4 = v21;
      result = v27;
    }

    result[2] = v16;
    *(result + v14 + 8) = v13;
    v9 = v23;
    if (v19 < v23)
    {
      BUG();
    }

    if ((v10 + v20 + 1) >= v19)
    {
      BUG();
    }

    ++v10;
  }

  while (v11 != v7);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(void (*a1)(void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v34 = v3;
  v33 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v26 = v4;
    v8 = *i;
    v20[0] = *(i - 1);
    v20[1] = v8;
    v8;
    v9 = v34;
    v28(v20, &v25);
    if (v9)
    {
      break;
    }

    v34 = 0;
    v8;
    v10 = v21;
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v33 = v6;
    v14 = v6[2];
    v15 = v6[3];
    v16 = v14 + 1;
    if (v15 >> 1 <= v14)
    {
      v30 = v23;
      v29 = v22;
      v31 = v21;
      v18 = v24;
      v32 = v14 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v16, 1);
      v16 = v32;
      v13 = v18;
      v12 = v30;
      v11 = v29;
      v10 = v31;
      v6 = v33;
    }

    v6[2] = v16;
    v17 = 4 * v14;
    v6[v17 + 4] = v10;
    v6[v17 + 5] = v11;
    v6[v17 + 6] = v12;
    LOBYTE(v6[v17 + 7]) = v13;
    v4 = v26 - 1;
    if (v26 == 1)
    {
      return v6;
    }
  }

  v8;
  return v6;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a2;
  v20 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v10)
  {
    v27 = _swiftEmptyArrayStorage;
    v25 = v10;
    v26 = &v17;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v28 = v27;
    v23 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v22 = v6;
    v24 = *(v6 + 72);
    v12 = v23 + a3;
    do
    {
      v20();
      v18 = v4;
      if (v4)
      {

        BUG();
      }

      v13 = v28;
      v27 = v28;
      v14 = v28[2];
      if (v28[3] >> 1 <= v14)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28[3] >= 2uLL, v14 + 1, 1);
        v13 = v27;
      }

      v13[2] = v14 + 1;
      v28 = v13;
      v15 = v24;
      (*(v22 + 32))(v13 + v23 + v24 * v14, v26, v21);
      v12 += v15;
      v16 = v25-- == 1;
      v4 = v18;
    }

    while (!v16);
    return v28;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML17MLLinearRegressorV15ModelParametersVG_AHsAE_pTg5Tm(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v7 = v5;
  v21 = a2;
  v22 = a1;
  v23 = a4;
  v24 = *(a4(0) - 8);
  v9 = *(v24 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v26 = &v19;
  v12 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v12)
  {
    v27 = _swiftEmptyArrayStorage;
    v28 = a3;
    v14 = v12;
    v25 = a5;
    a5(0, v12, 0);
    v15 = v27;
    v16 = v28 + 32;
    while (1)
    {
      v28 = v16;
      v22(v16, &v19);
      if (v7)
      {
        break;
      }

      v20 = 0;
      v17 = v15;
      v27 = v15;
      v18 = v15[2];
      if (v15[3] >> 1 <= v18)
      {
        v25(v15[3] >= 2uLL, v18 + 1, 1);
        v17 = v27;
      }

      v17[2] = v18 + 1;
      v15 = v17;
      outlined init with take of MLClassifierMetrics(v26, v17 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18, v23);
      v16 = v28 + 80;
      --v14;
      v7 = v20;
      if (!v14)
      {
        return v17;
      }
    }
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData12FilledColumnVyAF0G0VySSGG_SSs5NeverOTg5(void (*a1)(void *), uint64_t a2)
{
  v36 = v2;
  v26[2] = a2;
  v27 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v6 = dispatch thunk of Collection.count.getter(v4, v5);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v35 = _swiftEmptyArrayStorage;
  v7 = 0;
  if (v6 > 0)
  {
    v7 = v6;
  }

  v34 = v6;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v8 = v4;
  v9 = v35;
  v32 = v8;
  v33 = v5;
  dispatch thunk of Collection.startIndex.getter(v8, v5);
  if (v34 < 0)
  {
    BUG();
  }

  v10 = 0;
  v28 = v3;
  do
  {
    if (__OFADD__(1, v10++))
    {
      BUG();
    }

    v12 = dispatch thunk of Collection.subscript.read(v23, v31, v32, v33);
    v14 = v13[1];
    v26[0] = *v13;
    v26[1] = v14;
    v14;
    v12(v23, 0);
    v15 = v36;
    v27(v26);
    v36 = v15;
    if (v15)
    {

      v14;
      BUG();
    }

    v14;
    v16 = v24;
    v17 = v25;
    v35 = v9;
    v18 = v9[2];
    v19 = v9[3];
    v20 = v18 + 1;
    if (v19 >> 1 <= v18)
    {
      v29 = v25;
      v30 = v24;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 >= 2, v20, 1);
      v17 = v29;
      v16 = v30;
      v9 = v35;
    }

    v9[2] = v20;
    v21 = 2 * v18;
    v9[v21 + 4] = v16;
    v9[v21 + 5] = v17;
    dispatch thunk of Collection.formIndex(after:)(v31, v32, v33);
  }

  while (v10 != v34);
  return v9;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVySSSay0D2ML16MLObjectDetectorV20NormalizedAnnotationVGGG_SayAK06ObjectL0VGsAE_pTg5(void (*a1)(uint64_t, uint64_t *), void *a2, uint64_t a3)
{
  v17 = a2;
  v18 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v6 = _swiftEmptyArrayStorage;
  v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<String, [MLObjectDetector.NormalizedAnnotation]>) - 8);
  v8 = ((*(v7 + 80) + 32) & ~*(v7 + 80)) + a3;
  v19 = *(v7 + 72);
  while (1)
  {
    v9 = v6;
    v6 = v17;
    v18(v8, &v16);
    if (v3)
    {
      break;
    }

    v10 = v15;
    v6 = v9;
    v23 = v9;
    v11 = v9[2];
    v12 = v6[3];
    v13 = v11 + 1;
    if (v12 >> 1 <= v11)
    {
      v22 = v11 + 1;
      v21 = v15;
      v20 = 0;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 >= 2, v13, 1);
      v13 = v22;
      v10 = v21;
      v3 = v20;
      v6 = v23;
    }

    v6[2] = v13;
    v6[v11 + 4] = v10;
    v8 += v19;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_14NeuralNetworks6TensorVs5NeverOTg5Tm(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22[1] = a2;
  v23 = a1;
  v24 = type metadata accessor for Tensor(0);
  v25 = *(v24 - 8);
  v6 = *(v25 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v28 = v22;
  v9 = a3 & 0xFFFFFFFFFFFFF8;
  if ((a3 & 0x4000000000000001) != 0)
  {
    if (a3)
    {
      v9 = a3;
    }

    v10 = _CocoaArrayWrapper.endIndex.getter(v9);
  }

  else
  {
    v10 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFF8));
  }

  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  v29 = _swiftEmptyArrayStorage;
  v11 = 0;
  if (v10 > 0)
  {
    v11 = v10;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  if (v10 < 0)
  {
    BUG();
  }

  v27 = v10;
  v12 = v29;
  v13 = 0;
  v14 = 0;
  v26 = a3;
  do
  {
    if (__OFADD__(1, v14++))
    {
      BUG();
    }

    v30 = v12;
    if ((a3 & 0xC000000000000003) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)(v13, a3);
    }

    else
    {
      v16 = *(a3 + 8 * v13 + 32);
    }

    v17 = v16;
    v22[0] = v16;
    v23(v22);
    if (v4)
    {

      BUG();
    }

    v4 = 0;

    v12 = v30;
    v29 = v30;
    v18 = v30[2];
    v19 = v30[3];
    v20 = (v18 + 1);
    if (v19 >> 1 <= v18)
    {
      v30 = (v18 + 1);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 >= 2, v18 + 1, 1);
      v20 = v30;
      v12 = v29;
    }

    v12[2] = v20;
    (*(v25 + 32))(v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v18, v28, v24);
    v13 = v14;
    a3 = v26;
  }

  while (v14 != v27);
  return v12;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_20MLModelSpecification38ItemSimilarityRecommenderConfigurationV12SimilarItemsVs5NeverOTg5(void (*a1)(unint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v26 = a1;
  v28 = type metadata accessor for ItemSimilarityRecommenderConfiguration.SimilarItems(0);
  v29 = *(v28 - 8);
  v7 = *(v29 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v31 = &v22;
  v27 = a4;
  v10 = __OFSUB__(a4, a3);
  v11 = a4 - a3;
  if (v10)
  {
    BUG();
  }

  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  v32 = a3;
  v35 = _swiftEmptyArrayStorage;
  v12 = 0;
  if (v11 > 0)
  {
    v12 = v11;
  }

  v33 = v11;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
  v13 = v33;
  if (v33 < 0)
  {
    BUG();
  }

  v14 = v35;
  v15 = v32;
  v30 = v32 - 1;
  v16 = 0;
  do
  {
    if (v16 >= v13)
    {
      BUG();
    }

    v17 = v16 + 1;
    if (__OFADD__(1, v16))
    {
      BUG();
    }

    v23 = v15 + v16;
    v26(&v23);
    v24 = v4;
    if (v4)
    {

      BUG();
    }

    v35 = v14;
    v18 = v14[2];
    v19 = v14[3];
    v20 = v18 + 1;
    if (v19 >> 1 <= v18)
    {
      v34 = v18 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 >= 2, v18 + 1, 1);
      v20 = v34;
      v14 = v35;
    }

    v14[2] = v20;
    (*(v29 + 32))(v14 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v18, v31, v28);
    v15 = v32;
    if (v27 < v32)
    {
      BUG();
    }

    if ((v16 + v30 + 1) >= v27)
    {
      BUG();
    }

    ++v16;
    v13 = v33;
    v4 = v24;
  }

  while (v17 != v33);
  return v14;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_8CreateML14RecommendationVyAG13MLRecommenderV10IdentifierOAMGs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a2;
  v22 = a1;
  v25 = a3;
  if (__OFSUB__(a4, a3))
  {
    BUG();
  }

  if (a4 == a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v28 = _swiftEmptyArrayStorage;
  v6 = 0;
  if (a4 - a3 > 0)
  {
    v6 = a4 - a3;
  }

  v26 = a4 - a3;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v26;
  if (v26 < 0)
  {
    BUG();
  }

  result = v28;
  v9 = 0;
  v23 = a4;
  while (1)
  {
    if (v9 >= v7)
    {
      BUG();
    }

    v10 = v9 + 1;
    if (__OFADD__(1, v9))
    {
      BUG();
    }

    v11 = result;
    v12 = v25 + v9;
    v21[0] = v12;
    v22(v21);
    if (v4)
    {

      BUG();
    }

    result = v11;
    v28 = v11;
    v13 = v11[2];
    v14 = result[3];
    v15 = v13 + 1;
    if (v14 >> 1 <= v13)
    {
      v27 = v13 + 1;
      v24 = 0;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 >= 2, v15, 1);
      v15 = v27;
      v4 = v24;
      result = v28;
    }

    v16 = v13 << 6;
    result[2] = v15;
    *(result + v16 + 80) = v20;
    *(result + v16 + 64) = v19;
    *(result + v16 + 48) = v18;
    *(result + v16 + 32) = v17;
    if (v23 < v25)
    {
      BUG();
    }

    if (v12 >= v23)
    {
      BUG();
    }

    v7 = v26;
    if (v10 == v26)
    {
      break;
    }

    v9 = v10;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_8CreateML12MLIdentifier_ps5NeverOTg5(void (*a1)(unint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v32 = a1;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
    BUG();
  }

  v6 = v4;
  if (a4 == a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v36 = a3;
  v37[0] = _swiftEmptyArrayStorage;
  v8 = 0;
  if (v5 > 0)
  {
    v8 = a4 - a3;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  if (v5 < 0)
  {
    BUG();
  }

  v33 = a4;
  v9 = v37[0];
  v10 = v36;
  v34 = v36 - 1;
  v11 = 0;
  v35 = v5;
  do
  {
    if (v11 >= v5)
    {
      BUG();
    }

    v12 = v11 + 1;
    if (__OFADD__(1, v11))
    {
      BUG();
    }

    v29 = v11;
    v26 = v10 + v11;
    v32(&v26);
    if (v6)
    {

      BUG();
    }

    v30 = 0;
    v37[0] = v9;
    v13 = v9[2];
    if (v9[3] >> 1 <= v13)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9[3] >= 2uLL, v13 + 1, 1);
    }

    v14 = v24;
    v27 = v25;
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v28 = &v22;
    v16 = *(v14 - 8);
    v17 = *(v16 + 64);
    v18 = alloca(v17);
    v19 = alloca(v17);
    (*(v16 + 16))(&v22, v15, v14);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v13, &v22, v37, v14, v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v10 = v36;
    if (v33 < v36)
    {
      BUG();
    }

    if ((v29 + v34 + 1) >= v33)
    {
      BUG();
    }

    v9 = v37[0];
    v11 = v12;
    v20 = v12 == v35;
    v5 = v35;
    v6 = v30;
  }

  while (!v20);
  return v9;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sis5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a2;
  v19 = a1;
  if (__OFSUB__(a4, a3))
  {
    BUG();
  }

  if (a4 == a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v25 = a3;
  v27 = _swiftEmptyArrayStorage;
  v6 = 0;
  if (a4 - a3 > 0)
  {
    v6 = a4 - a3;
  }

  v26 = a4 - a3;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v26;
  if (v26 < 0)
  {
    BUG();
  }

  result = v27;
  v9 = v25;
  v21 = v25 - 1;
  v10 = 0;
  v20 = a4;
  do
  {
    if (v10 >= v7)
    {
      BUG();
    }

    v11 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    v12 = result;
    v18[0] = v9 + v10;
    v19(v18);
    if (v4)
    {

      BUG();
    }

    v13 = v17;
    result = v12;
    v27 = v12;
    v14 = v12[2];
    v15 = result[3];
    v16 = v14 + 1;
    v7 = v26;
    if (v15 >> 1 <= v14)
    {
      v23 = v17;
      v22 = 0;
      v24 = v14 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v16, 1);
      v16 = v24;
      v13 = v23;
      v7 = v26;
      v4 = v22;
      result = v27;
    }

    result[2] = v16;
    result[v14 + 4] = v13;
    v9 = v25;
    if (v20 < v25)
    {
      BUG();
    }

    if ((v10 + v21 + 1) >= v20)
    {
      BUG();
    }

    ++v10;
  }

  while (v11 != v7);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_AHySSGs5NeverOTg5Tm(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(BOOL, void *, uint64_t), uint64_t *a6)
{
  v26 = a2;
  v27 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledName(a4);
  v29 = *(v28 - 8);
  v10 = *(v29 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v32 = &v26;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v34 = v6;
  v33 = _swiftEmptyArrayStorage;
  v14 = a5;
  v15 = a6;
  v16 = v13;
  v31 = v14;
  v14(0, v13, 0);
  v35 = v33;
  v17 = *(__swift_instantiateConcreteTypeFromMangledName(v15) - 8);
  v18 = ((*(v17 + 80) + 32) & ~*(v17 + 80)) + a3;
  v30 = *(v17 + 72);
  do
  {
    v19 = v34;
    v27(v18);
    if (v19)
    {

      BUG();
    }

    v20 = v35;
    v33 = v35;
    v21 = v35[2];
    v22 = v35[3];
    v23 = (v21 + 1);
    v34 = 0;
    if (v22 >> 1 <= v21)
    {
      v35 = (v21 + 1);
      v31(v22 >= 2, v23, 1);
      v23 = v35;
      v20 = v33;
    }

    v20[2] = v23;
    v24 = *(v29 + 80);
    v35 = v20;
    (*(v29 + 32))(v20 + ((v24 + 32) & ~v24) + *(v29 + 72) * v21, v32, v28);
    v18 += v30;
    v16 = (v16 - 1);
  }

  while (v16);
  return v35;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation3URLVG_SaySS5label_Sd10confidencetGsAE_pTg5Tm(void (*a1)(uint64_t, uint64_t *), void *a2, uint64_t a3, void (*a4)(BOOL, unint64_t, uint64_t))
{
  v18 = a2;
  v19 = a1;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v25 = &_swiftEmptyArrayStorage;
  v21 = a4;
  a4(0, v5, 0);
  v7 = &_swiftEmptyArrayStorage;
  v8 = *(type metadata accessor for URL(0) - 8);
  v9 = ((*(v8 + 80) + 32) & ~*(v8 + 80)) + a3;
  v20 = *(v8 + 72);
  while (1)
  {
    v10 = v7;
    v7 = v18;
    v19(v9, &v17);
    if (v4)
    {
      break;
    }

    v11 = v16;
    v7 = v10;
    v25 = v10;
    v12 = v10[2];
    v13 = v7[3];
    v14 = v12 + 1;
    if (v13 >> 1 <= v12)
    {
      v24 = v12 + 1;
      v23 = v16;
      v22 = 0;
      v21(v13 >= 2, v14, 1);
      v14 = v24;
      v11 = v23;
      v4 = v22;
      v7 = v25;
    }

    v7[2] = v14;
    v7[v12 + 4] = v11;
    v9 += v20;
    if (!--v5)
    {
      return v7;
    }
  }

  v10;
  return v7;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_14NeuralNetworks6TensorVs5NeverOTg5Tm(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, void *, uint64_t))
{
  v24[2] = a2;
  v25 = a1;
  v26 = a4(0);
  v27 = *(v26 - 8);
  v8 = *(v27 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v29 = &v23;
  v11 = *(a3 + 16);
  if (!v11)
  {
    return &_swiftEmptyArrayStorage;
  }

  v31 = v5;
  v30 = &_swiftEmptyArrayStorage;
  v12 = a5;
  v13 = v11;
  v28 = v12;
  v12(0, v11, 0);
  v32 = v30;
  v14 = (a3 + 40);
  do
  {
    v15 = *v14;
    v24[0] = *(v14 - 1);
    v24[1] = v15;
    v15;
    v16 = v31;
    v25(v24);
    v31 = v16;
    if (v16)
    {
      v32;
      v15, v11;
      BUG();
    }

    v15, v11;
    v17 = v32;
    v30 = v32;
    v18 = v32[2];
    v19 = v32[3];
    v20 = (v18 + 1);
    if (v19 >> 1 <= v18)
    {
      v32 = (v18 + 1);
      v28(v19 >= 2, v20, 1);
      v20 = v32;
      v17 = v30;
    }

    v17[2] = v20;
    v21 = *(v27 + 80);
    v32 = v17;
    v11 = v29;
    (*(v27 + 32))(v17 + ((v21 + 32) & ~v21) + *(v27 + 72) * v18, v29, v26);
    v14 += 2;
    v13 = (v13 - 1);
  }

  while (v13);
  return v32;
}

uint64_t static MLHandPoseClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLHandPoseClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t type metadata accessor for MLHandPoseClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLHandPoseClassifier;
  if (!type metadata singleton initialization cache for MLHandPoseClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLHandPoseClassifier);
  }

  return result;
}

void MLHandPoseClassifier.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLHandPoseClassifier(0) + 20);

  *(v1 + v2) = a1;
}

uint64_t MLHandPoseClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLHandPoseClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 24), v2, type metadata accessor for MLHandPoseClassifier.ModelParameters);
}

uint64_t MLHandPoseClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLHandPoseClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 28), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLHandPoseClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLHandPoseClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 32), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLHandPoseClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, __m128 a3)
{
  v76 = v4;
  v67 = a2;
  v74 = a1;
  v5 = v3;
  v58 = *(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) - 8);
  v57 = *(v58 + 64);
  v6 = alloca(v57);
  v7 = alloca(v57);
  v66 = &v57;
  v8 = type metadata accessor for MLHandPoseClassifier(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v60 = &v57;
  v69 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v12 = *(*(v69 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v73 = &v57;
  v15 = *(*(type metadata accessor for MLHandPoseClassifier.DataSource(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v59 = &v57;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v64 = *(v65 - 8);
  v18 = *(v64 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v71 = v8;
  v21 = *(v8 + 20);
  v22 = objc_allocWithZone(MLModel);
  v23 = [v22 init];
  v61 = v5;
  v70 = v23;
  *(v5 + v21) = v23;
  v24 = *(v8 + 28);
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v25 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v68 = v25;
  v26 = *(v25 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v57);
  v27 = *(v25 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v57);
  v75 = *(v64 + 8);
  v75(&v57, v65);
  v28 = v61;
  *(v61 + v24) = 0;
  v72 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v64 = v24 + v5;
  swift_storeEnumTagMultiPayload(v24 + v5, v72, 1);
  v29 = *(v71 + 32);
  v30 = v28 + v29;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v31 = v68;
  v32 = *(v68 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v57);
  v33 = *(v31 + 24);
  v34 = v67;
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v57);
  v75(&v57, v65);
  *(v61 + v29) = 0;
  v65 = v30;
  swift_storeEnumTagMultiPayload(v30, v72, 1);
  v35 = v76;
  MLHandPoseClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(&v77, &v62, a3);
  if (v35)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for MLHandPoseClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for MLHandPoseClassifier.DataSource);

LABEL_3:
    outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v65, type metadata accessor for MLClassifierMetrics);
  }

  v75 = 0;
  v37 = v77;
  v71 = v62;
  LOBYTE(v76) = v63;
  v38 = v78;
  if (v78 == 0xFF)
  {
    LODWORD(v72) = v78;
    v40 = v77;
    MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(a3);
    v41 = v77;
    v79 = v78;
  }

  else
  {
    type metadata accessor for MLHandPoseClassifier.FeatureExtractor();
    v62 = v37;
    v63 = v38 & 1;
    outlined copy of Result<_DataTable, Error>(v37, v38);
    v39 = v75;
    static MLHandPoseClassifier.FeatureExtractor.extractFeatures(from:startingSessionId:)(&v62, 0);
    if (v39)
    {
      outlined consume of MLDataTable?(v71, v76);
      outlined consume of MLDataTable?(v37, v38);
      outlined destroy of MLActivityClassifier.ModelParameters(v67, type metadata accessor for MLHandPoseClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for MLHandPoseClassifier.DataSource);
      outlined consume of MLDataTable?(v37, v38);

      goto LABEL_3;
    }

    LODWORD(v72) = v38;
    outlined consume of MLDataTable?(v37, v38);
    v41 = v77;
    v79 = v78;
    v34 = v67;
    v40 = v37;
  }

  v75 = v41;
  v42 = v73;
  v68 = v40;
  if (v76 == 0xFF)
  {
    outlined init with copy of MLTrainingSessionParameters(v34, v73, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(v42, v69) != 1)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v42, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v46 = empty;
      v69 = 0;
      v47 = type metadata accessor for CMLTable();
      v48 = swift_allocObject(v47, 24, 7);
      *(v48 + 16) = v46;
      v49 = type metadata accessor for _DataTable();
      swift_allocObject(v49, 40, 7);
      v73 = _DataTable.init(impl:)(v48);
      v34 = v67;
      goto LABEL_16;
    }

    v43 = v42;
    v44 = v59;
    outlined init with take of MLClassifierMetrics(v43, v59, type metadata accessor for MLHandPoseClassifier.DataSource);
    MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(a3);
    outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for MLHandPoseClassifier.DataSource);
  }

  else
  {
    type metadata accessor for MLHandPoseClassifier.FeatureExtractor();
    v62 = v71;
    v63 = v76 & 1;
    static MLHandPoseClassifier.FeatureExtractor.extractFeatures(from:startingSessionId:)(&v62, 0);
  }

  v50 = v77;
  v73 = v77;
  LOBYTE(v50) = v78;
  v69 = v50;
LABEL_16:
  outlined init with copy of MLTrainingSessionParameters(v34, v66, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v51 = *(v58 + 80);
  v52 = ~*(v58 + 80) & (v51 + 41);
  v53 = swift_allocObject(&unk_38F290, v52 + v57, v51 | 7);
  *(v53 + 16) = v75;
  v54 = v79;
  *(v53 + 24) = v79 & 1;
  *(v53 + 32) = v73;
  *(v53 + 40) = v69 & 1;
  outlined init with take of MLClassifierMetrics(v66, v53 + v52, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v55 = v54;
  v56 = v75;
  LODWORD(v66) = v55;
  outlined copy of Result<_DataTable, Error>(v75, v55);
  LOBYTE(v52) = v69;
  outlined copy of Result<_DataTable, Error>(v73, v69);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLHandPoseClassifier.init(trainingData:parameters:), v53);

  outlined consume of MLDataTable?(v71, v76);
  outlined consume of MLDataTable?(v68, v72);
  outlined consume of Result<_DataTable, Error>(v73, v52);
  outlined consume of Result<_DataTable, Error>(v56, v66);
  outlined destroy of MLActivityClassifier.ModelParameters(v67, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for MLHandPoseClassifier.DataSource);

  outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v65, type metadata accessor for MLClassifierMetrics);
  return outlined init with take of MLClassifierMetrics(v60, v61, type metadata accessor for MLHandPoseClassifier);
}

uint64_t closure #1 in MLHandPoseClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a6;
  *(v6 + 26) = a5;
  *(v6 + 64) = a4;
  *(v6 + 25) = a3;
  *(v6 + 56) = a2;
  *(v6 + 48) = a1;
  v10 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *(v6 + 80) = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined copy of Result<_DataTable, Error>(a2, a3);
  outlined copy of Result<_DataTable, Error>(a4, a5);
  return swift_task_switch(closure #1 in MLHandPoseClassifier.init(trainingData:parameters:), 0, 0);
}

uint64_t closure #1 in MLHandPoseClassifier.init(trainingData:parameters:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v3 = *(v0 + 25);
  v4 = *(v0 + 26);
  v5 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v3 & 1;
  *(v0 + 32) = v5;
  *(v0 + 40) = v4 & 1;
  outlined init with copy of MLTrainingSessionParameters(v2, v1, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v6 = swift_task_alloc(192);
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLHandPoseClassifier.init(trainingData:parameters:);
  return MLHandPoseClassifier.init(trainingFeatures:validationFeatures:parameters:)(*(v0 + 48), v0 + 16, v0 + 32, *(v0 + 80));
}

{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 96) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in MLHandPoseClassifier.init(trainingData:parameters:), 0, 0);
  }

  *(v3 + 80);
  return (*(v3 + 8))();
}

{
  *(v0 + 80);
  v1 = *(v0 + 96);
  return (*(v0 + 8))();
}

uint64_t MLHandPoseClassifier.init(trainingFeatures:validationFeatures:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  *(v4 + 48) = a1;
  v6 = type metadata accessor for MLHandActionClassifier(0);
  *(v4 + 64) = v6;
  *(v4 + 72) = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v4 + 80) = v7;
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  *(v4 + 88) = swift_task_alloc(v8);
  *(v4 + 96) = swift_task_alloc(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  *(v4 + 104) = v9;
  v10 = *(v9 - 8);
  *(v4 + 112) = v10;
  *(v4 + 120) = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 128) = *a2;
  *(v4 + 25) = *(a2 + 8);
  *(v4 + 136) = *a3;
  *(v4 + 26) = *(a3 + 8);
  return swift_task_switch(MLHandPoseClassifier.init(trainingFeatures:validationFeatures:parameters:), 0, 0);
}

uint64_t MLHandPoseClassifier.init(trainingFeatures:validationFeatures:parameters:)()
{
  v31 = *(v0 + 25);
  v30 = *(v0 + 26);
  v18 = *(v0 + 136);
  v20 = *(v0 + 128);
  v1 = *(v0 + 120);
  v28 = *(v0 + 112);
  v26 = *(v0 + 104);
  v22 = *(v0 + 96);
  v19 = *(v0 + 88);
  v21 = *(v0 + 80);
  v23 = *(v0 + 56);
  v2 = *(v0 + 48);
  v3 = objc_allocWithZone(MLModel);
  *(v0 + 144) = [v3 init];
  v27 = type metadata accessor for MLHandPoseClassifier(0);
  *(v0 + 152) = v27;
  v4 = v27[7];
  *(v0 + 28) = v4;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v25 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v5 = *(v25 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v1);
  v6 = *(v25 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v1);
  v29 = *(v28 + 8);
  v29(v1, v26);
  *(v2 + v4) = 0;
  v24 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v2 + v4, v24, 1);
  v7 = v27[8];
  *(v0 + 44) = v7;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v8 = *(v25 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v1);
  v9 = *(v25 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v1);
  v29(v1, v26);
  *(v2 + v7) = 0;
  swift_storeEnumTagMultiPayload(v7 + v2, v24, 1);
  v10 = v27[6];
  *(v0 + 176) = v10;
  outlined init with copy of MLTrainingSessionParameters(v23, v10 + v2, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v11 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v12 = *(v23 + v11[7]);
  v13 = *(v23 + v11[5]);
  v14 = *(v23 + v11[6]);
  *v22 = 0;
  *(v22 + 16) = 256;
  v15 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  swift_storeEnumTagMultiPayload(v22, v15, 0);
  *(v22 + v21[5]) = v13;
  *(v22 + v21[6]) = v14;
  *(v22 + v21[7]) = 1;
  *(v22 + v21[8]) = v12;
  *(v22 + v21[10]) = 0x403E000000000000;
  *(v0 + 16) = v20;
  *(v0 + 24) = v31;
  *(v0 + 32) = v18;
  *(v0 + 40) = v30;
  outlined init with copy of MLTrainingSessionParameters(v22, v19, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v16 = swift_task_alloc(144);
  *(v0 + 160) = v16;
  *v16 = v0;
  v16[1] = MLHandPoseClassifier.init(trainingFeatures:validationFeatures:parameters:);
  return MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:)(*(v0 + 72), v0 + 16, v0 + 32, *(v0 + 88));
}

{
  v3 = *(*v1 + 160);
  v2 = *v1;
  *(*v1 + 168) = v0;
  v3;
  if (v0)
  {
    v4 = MLHandPoseClassifier.init(trainingFeatures:validationFeatures:parameters:);
  }

  else
  {
    *(v2 + 180) = *(*(v2 + 152) + 20);
    v4 = MLHandPoseClassifier.init(trainingFeatures:validationFeatures:parameters:);
  }

  return swift_task_switch(v4, 0, 0);
}

{
  v8 = *(v0 + 180);
  v10 = *(v0 + 144);
  v9 = *(v0 + 120);
  v1 = *(v0 + 96);
  v7 = *(v0 + 88);
  v2 = *(v0 + 72);
  v12 = *(v0 + 64);
  v3 = *(v0 + 48);
  v11 = v3 + *(v0 + 44);
  v4 = v3 + *(v0 + 28);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 56), type metadata accessor for MLHandPoseClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLHandActionClassifier.ModelParameters);
  outlined init with take of MLClassifierMetrics(v2, v3, type metadata accessor for MLHandActionClassifier);
  outlined assign with copy of MLClassifierMetrics(v3 + *(v12 + 32), v4);
  outlined assign with copy of MLClassifierMetrics(v3 + *(v12 + 36), v11);
  v5 = *(v3 + 16);

  *(v3 + v8) = v5;
  v9;
  v1;
  v7;
  v2;
  return (*(v0 + 8))();
}

{
  v11 = *(v0 + 144);
  v10 = *(v0 + 120);
  v1 = *(v0 + 96);
  v9 = *(v0 + 88);
  v8 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = v2 + *(v0 + 176);
  v4 = v2 + *(v0 + 44);
  v5 = v2 + *(v0 + 28);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 56), type metadata accessor for MLHandPoseClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLHandActionClassifier.ModelParameters);

  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLClassifierMetrics);
  v10;
  v1;
  v9;
  v8;
  v6 = *(v0 + 168);
  return (*(v0 + 8))();
}

uint64_t MLHandPoseClassifier.init(model:parameters:metricsAttributes:classLabels:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v91 = a4;
  v89 = a3;
  v8 = v6;
  v90 = a2;
  v78 = v7;
  v93 = a1;
  v9 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v81 = v76;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v79 = v76;
  v85 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v14 = *(*(v85 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v84 = v76;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v88 = v76;
  v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v97 = *(v96 - 8);
  v19 = *(v97 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v22 = type metadata accessor for MLHandPoseClassifier(0);
  v23 = *(v22 + 20);
  v83 = v22;
  v24 = objc_allocWithZone(MLModel);
  *(v8 + v23) = [v24 init];
  v95 = *(v22 + 28);
  v25 = v8 + v95;
  v92 = v8;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v26 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v87 = v26;
  v27 = *(v26 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v76);
  v28 = *(v26 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v76);
  v97 = *(v97 + 8);
  v29 = v96;
  (v97)(v76, v96);
  *(v8 + v95) = 0;
  v95 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v80 = v25;
  swift_storeEnumTagMultiPayload(v25, v95, 1);
  v94 = *(v83 + 32);
  v30 = v8 + v94;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v31 = v87;
  v32 = *(v87 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v76);
  v33 = *(v31 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v76);
  (v97)(v76, v29);
  *(v92 + v94) = 0;
  v82 = v30;
  swift_storeEnumTagMultiPayload(v30, v95, 1);
  v34 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v94 = *(v90 + v34[7]);
  v35 = *(v90 + v34[5]);
  v36 = *(v90 + v34[6]);
  v37 = v88;
  *v88 = 0;
  *(v37 + 16) = 256;
  v38 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  swift_storeEnumTagMultiPayload(v37, v38, 0);
  v39 = v85;
  *(v37 + *(v85 + 20)) = v35;
  *(v37 + v39[6]) = v36;
  *(v37 + v39[7]) = 1;
  *(v37 + v39[8]) = v94;
  *(v37 + v39[10]) = 0x403E000000000000;
  outlined init with copy of MLTrainingSessionParameters(v37, v84, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v40 = objc_allocWithZone(MLModel);
  v91;
  v41 = [v40 init];
  v42 = v92;
  v92[2] = v41;
  v94 = type metadata accessor for MLHandActionClassifier(0);
  v43 = *(v94 + 32);
  v44 = v42 + v43;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v45 = v87;
  v46 = *(v87 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v76);
  v47 = *(v45 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v76);
  (v97)(v76, v96);
  v48 = v92;
  *(v92 + v43) = 0;
  swift_storeEnumTagMultiPayload(v44, v95, 1);
  v49 = *(v94 + 36);
  v50 = v48 + v49;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v51 = v87;
  v52 = *(v87 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v76);
  v53 = *(v51 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v76);
  (v97)(v76, v96);
  v54 = v92;
  *(v92 + v49) = 0;
  v55 = v91;
  swift_storeEnumTagMultiPayload(v50, v95, 1);
  *v54 = v55;
  v56 = v84;
  outlined init with copy of MLTrainingSessionParameters(v84, v54 + *(v94 + 28), type metadata accessor for MLHandActionClassifier.ModelParameters);
  v57 = *(v56 + *(v85 + 28));
  v58 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
  swift_allocObject(v58, *(v58 + 48), *(v58 + 52));
  v55;
  MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(v55, 0, 21, 3, v57);
  v59 = v56;
  v60 = v89;
  outlined destroy of MLActivityClassifier.ModelParameters(v59, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v61 = v93;

  v62 = v92;
  v92[1] = v61;
  outlined init with copy of MLTrainingSessionParameters(v90, v62 + *(v83 + 24), type metadata accessor for MLHandPoseClassifier.ModelParameters);
  specialized Dictionary.subscript.getter(0xD000000000000012, ("oseClassifier.swift" + 0x8000000000000000), v60);
  if (!v77)
  {
    v55;
    v60;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v76, &demangling cache variable for type metadata for Any?);
LABEL_7:
    v67 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
    *v68 = 0xD00000000000002CLL;
    *(v68 + 8) = "training_confusion" + 0x8000000000000000;
    *(v68 + 16) = 0;
    *(v68 + 32) = 0;
    *(v68 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v67);
    goto LABEL_8;
  }

  v63 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  if (!swift_dynamicCast(&v86, v76, &type metadata for Any + 8, v63, 6))
  {
    v55;
    v89;
    goto LABEL_7;
  }

  v95 = v63;
  v64 = v86;
  v65 = v79;
  v66 = v78;
  static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(0.0, a6, v86, v55, 0);
  v97 = v66;
  if (v66)
  {
    v55;

    v89;
LABEL_8:

    outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLHandPoseClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v88, type metadata accessor for MLHandActionClassifier.ModelParameters);
LABEL_9:
    v69 = type metadata accessor for MLHandPoseClassifier;
    v70 = v92;
    return outlined destroy of MLActivityClassifier.ModelParameters(v70, v69);
  }

  v96 = v64;
  outlined assign with take of MLClassifierMetrics(v65, v80);
  v72 = v89;
  specialized Dictionary.subscript.getter(0xD000000000000014, ("ve training confusion matrix" + 0x8000000000000000), v89);
  v72;
  if (!v77)
  {
    v91;

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v76, &demangling cache variable for type metadata for Any?);
LABEL_17:
    outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLHandPoseClassifier.ModelParameters);
    v69 = type metadata accessor for MLHandActionClassifier.ModelParameters;
    v70 = v88;
    return outlined destroy of MLActivityClassifier.ModelParameters(v70, v69);
  }

  if (!swift_dynamicCast(&v86, v76, &type metadata for Any + 8, v95, 6))
  {
    v91;

    goto LABEL_17;
  }

  v73 = v81;
  v74 = v91;
  v75 = v97;
  static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(0.0, a6, v86, v91, 0);
  v74;

  outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v88, type metadata accessor for MLHandActionClassifier.ModelParameters);
  if (v75)
  {
    goto LABEL_9;
  }

  return outlined assign with take of MLClassifierMetrics(v73, v82);
}

uint64_t MLHandPoseClassifier.init(checkpoint:)(uint64_t a1, __m128 a2)
{
  v131._object = v3;
  v129 = a1;
  v4 = v2;
  v117 = type metadata accessor for MLHandActionClassifier(0);
  v113 = *(v117 - 1);
  v5 = *(v113 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v111 = &v102;
  v112 = v5;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v119 = &v102;
  v115 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v10 = *(*(v115 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v114 = &v102;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v118 = &v102;
  v131._countAndFlagsBits = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v15 = *(*(v131._countAndFlagsBits - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v107 = &v102;
  v110 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v18 = *(*(v110 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v125 = &v102;
  v121 = type metadata accessor for URL(0);
  v120 = *(v121 - 8);
  v21 = *(v120 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v132 = &v102;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v124 = &v102;
  v130 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v127 = *(v130 - 8);
  v26 = *(v127 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v29 = objc_allocWithZone(MLModel);
  v122 = [v29 init];
  v126 = type metadata accessor for MLHandPoseClassifier(0);
  v128 = v126[7];
  v30 = v4 + v128;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v31 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v32 = *(v31 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v102);
  v33 = *(v31 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v102);
  v127 = *(v127 + 8);
  (v127)(&v102, v130);
  *(v4 + v128) = 0;
  v128 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v106 = v30;
  swift_storeEnumTagMultiPayload(v30, v128, 1);
  v116 = v126[8];
  v34 = v4 + v116;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v35 = *(v31 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v102);
  v109 = v31;
  v36 = *(v31 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v102);
  v108 = &v102;
  (v127)(&v102, v130);
  v123 = v4;
  *(v4 + v116) = 0;
  v116 = v34;
  v37 = v34;
  v38 = v121;
  v39 = v129;
  swift_storeEnumTagMultiPayload(v37, v128, 1);
  v40 = v124;
  URL.deletingLastPathComponent()();
  v41 = v132;
  v42 = v40;
  v43 = v38;
  v44 = v120;
  (*(v120 + 16))(v132, v42, v43);
  object = v131._object;
  MLHandPoseClassifier.PersistentParameters.init(sessionDirectory:)(v41);
  v131._object = object;
  if (object)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v39, type metadata accessor for MLCheckpoint);
    (*(v44 + 8))(v124, v43);
LABEL_3:

    goto LABEL_12;
  }

  v46 = v125;
  v47 = v107;
  outlined init with copy of MLTrainingSessionParameters(v125, v107, type metadata accessor for MLHandPoseClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(v47, v131._countAndFlagsBits) == 3)
  {
    LODWORD(v132) = *(v47 + 8);
    v48 = *v47;
    v49 = *(v47 + 24);
    v131._countAndFlagsBits = *(v47 + 32);
    v50 = *(v47 + 40);
    v51 = *(v47 + 56);
    v49;
    v51;
    v52 = v132;
    outlined copy of Result<_DataTable, Error>(v48, v132);
    v53._countAndFlagsBits = v131._countAndFlagsBits;
    v53._object = v50;
    specialized MLDataTable.subscript.getter(v53, v48, v52);
    v50;
    outlined consume of Result<_DataTable, Error>(v48, v52);
    v54 = v104;
    LOBYTE(v51) = v105;
    specialized MLDataColumn.dropDuplicates()(v104, v105);
    outlined consume of Result<_DataTable, Error>(v54, v51);
    v131._countAndFlagsBits = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v102, v103, *a2.i64);
    v53._countAndFlagsBits = v48;
    v46 = v125;
    outlined consume of Result<_DataTable, Error>(v53._countAndFlagsBits, v132);
  }

  else
  {
    v55 = v131._object;
    v56 = static _ImageUtilities.getDataSourceSynopsisForHandPoseClassifier(from:)(v46, a2);
    v131._object = v55;
    if (v55)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
      (*(v120 + 8))(v124, v121);
      outlined destroy of MLActivityClassifier.ModelParameters(v47, type metadata accessor for MLHandPoseClassifier.DataSource);
      goto LABEL_3;
    }

    v59 = v56;
    v60 = v57;
    v58;
    v59;
    v131._countAndFlagsBits = specialized _copyCollectionToContiguousArray<A>(_:)(v60);
    v60;
    outlined destroy of MLActivityClassifier.ModelParameters(v47, type metadata accessor for MLHandPoseClassifier.DataSource);
  }

  v61 = v123 + v126[6];
  v62 = v110;
  outlined init with copy of MLTrainingSessionParameters(v46 + *(v110 + 20), v61, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v63 = v46;
  v64 = *(v46 + v62[6]);
  v65 = *(v63 + v62[7]);
  v66 = *(v63 + v62[8]);
  v67 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *(v67[5] + v61) = v64;
  *(v67[6] + v61) = v65;
  *(v67[7] + v61) = v66;
  v68 = v118;
  *v118 = 0;
  *(v68 + 16) = 256;
  v69 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  swift_storeEnumTagMultiPayload(v68, v69, 0);
  v70 = v115;
  *(v68 + *(v115 + 20)) = v64;
  *(v68 + v70[6]) = v65;
  *(v68 + v70[7]) = 1;
  *(v68 + v70[8]) = v66;
  *(v68 + v70[10]) = 0x403E000000000000;
  outlined init with copy of MLTrainingSessionParameters(v68, v114, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v71 = objc_allocWithZone(MLModel);
  v72 = [v71 init];
  v73 = v119;
  v119[2] = v72;
  v132 = v117[8];
  v74 = v132 + v73;
  v75 = v108;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v76 = v109;
  v77 = *(v109 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v75);
  v78 = *(v76 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v75);
  (v127)(v75, v130);
  *(v132 + v73) = 0;
  swift_storeEnumTagMultiPayload(v74, v128, 1);
  v132 = v117[9];
  v79 = v132 + v73;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v80 = *(v76 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v75);
  v81 = *(v76 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v75);
  (v127)(v75, v130);
  *(v132 + v73) = 0;
  v82 = v79;
  v83 = v73;
  swift_storeEnumTagMultiPayload(v82, v128, 1);
  countAndFlagsBits = v131._countAndFlagsBits;
  *v73 = v131._countAndFlagsBits;
  v85 = v73 + v117[7];
  v86 = v114;
  outlined init with copy of MLTrainingSessionParameters(v114, v85, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v130 = *(v86 + *(v115 + 28));
  v87 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
  swift_allocObject(v87, *(v87 + 48), *(v87 + 52));
  countAndFlagsBits;
  v88 = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(countAndFlagsBits, 0, 21, 3, v130);
  outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLHandActionClassifier.ModelParameters);
  *(v83 + 8) = v88;
  v89 = v129;
  v90 = v131._object;
  MLHandActionClassifier.GraphCNN.updateGraphCNN(from:)(v129);
  if (!v90)
  {
    v92 = v111;
    outlined init with copy of MLTrainingSessionParameters(v83, v111, type metadata accessor for MLHandActionClassifier);
    v93 = *(v113 + 80);
    v94 = ~*(v113 + 80) & (v93 + 16);
    v95 = swift_allocObject(&unk_38F2B8, v94 + v112, v93 | 7);
    outlined init with take of MLClassifierMetrics(v92, v95 + v94, type metadata accessor for MLHandActionClassifier);
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLHandPoseClassifier.init(checkpoint:), v95);
    v98 = v97;

    v99 = v126[5];
    outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v118, type metadata accessor for MLHandActionClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v125, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
    (*(v120 + 8))(v124, v121);

    v100 = v123;
    *(v123 + v99) = v98;
    return outlined init with take of MLClassifierMetrics(v119, v100, type metadata accessor for MLHandActionClassifier);
  }

  v131._object = v90;
  v91 = v123;
  v96 = v126;
  outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(v118, type metadata accessor for MLHandActionClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v125, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
  (*(v120 + 8))(v124, v121);
  outlined destroy of MLActivityClassifier.ModelParameters(v83, type metadata accessor for MLHandActionClassifier);

  outlined destroy of MLActivityClassifier.ModelParameters(v96[6] + v91, type metadata accessor for MLHandPoseClassifier.ModelParameters);
LABEL_12:
  outlined destroy of MLActivityClassifier.ModelParameters(v106, type metadata accessor for MLClassifierMetrics);
  return outlined destroy of MLActivityClassifier.ModelParameters(v116, type metadata accessor for MLClassifierMetrics);
}

char specialized MLDataTable.subscript.getter(Swift::String a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    swift_willThrow();
    _StringGuts.grow(_:)(34);
    0xE000000000000000;
    *&v16 = 0xD00000000000001FLL;
    *(&v16 + 1) = "Duplicate values for key: '" + 0x8000000000000000;
    String.append(_:)(a1);
    v6._countAndFlagsBits = 39;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v8 = swift_allocError(&type metadata for MLCreateError, v7, 0, 0);
    *v9 = v16;
    *(v9 + 16) = 0;
    *(v9 + 32) = 0;
    *(v9 + 48) = 1;
  }

  else
  {
    v5 = *(a2 + 16);

    v11 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v5, a1._countAndFlagsBits, a1._object);

    v12 = type metadata accessor for _UntypedColumn();
    v8 = swift_allocObject(v12, 24, 7);
    *(v8 + 16) = v11;
    *&v17 = v11;

    _UntypedColumn.type.getter();

    if (!v16)
    {

      result = 0;
      goto LABEL_5;
    }

    _StringGuts.grow(_:)(49);
    0xE000000000000000;
    strcpy(&v16, "Column named '");
    HIBYTE(v16) = -18;
    String.append(_:)(a1);
    v13._object = "DataTable has no column named '" + 0x8000000000000000;
    v13._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v13);
    v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v8 = swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
    *v15 = v16;
    *(v15 + 16) = 0;
    *(v15 + 32) = 0;
    *(v15 + 48) = 1;
  }

  result = 1;
LABEL_5:
  *v4 = v8;
  *(v4 + 8) = result;
  return result;
}

{
  v4 = v3;
  if (a3)
  {
    swift_willThrow(a1._countAndFlagsBits, a1._object);
    _StringGuts.grow(_:)(34);
    0xE000000000000000;
    *&v16 = 0xD00000000000001FLL;
    *(&v16 + 1) = "Duplicate values for key: '" + 0x8000000000000000;
    String.append(_:)(a1);
    v6._countAndFlagsBits = 39;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v8 = swift_allocError(&type metadata for MLCreateError, v7, 0, 0);
    *v9 = v16;
    *(v9 + 16) = 0;
    *(v9 + 32) = 0;
    *(v9 + 48) = 1;
  }

  else
  {
    v5 = *(a2 + 16);

    v11 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v5, a1._countAndFlagsBits, a1._object);

    v12 = type metadata accessor for _UntypedColumn();
    v8 = swift_allocObject(v12, 24, 7);
    *(v8 + 16) = v11;
    *&v17 = v11;

    _UntypedColumn.type.getter();

    if (v16 == 2)
    {

      result = 0;
      goto LABEL_5;
    }

    _StringGuts.grow(_:)(49);
    0xE000000000000000;
    strcpy(&v16, "Column named '");
    HIBYTE(v16) = -18;
    String.append(_:)(a1);
    v13._object = "DataTable has no column named '" + 0x8000000000000000;
    v13._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v13);
    v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v8 = swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
    *v15 = v16;
    *(v15 + 16) = 0;
    *(v15 + 32) = 0;
    *(v15 + 48) = 1;
  }

  result = 1;
LABEL_5:
  *v4 = v8;
  *(v4 + 8) = result;
  return result;
}

uint64_t specialized MLDataColumn.dropDuplicates()(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v17[0] = a1;
    swift_errorRetain(a1);
    outlined copy of Result<_DataTable, Error>(a1, 1);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v5 = _getErrorEmbeddedNSError<A>(_:)(v17, v4, &protocol self-conformance witness table for Error);
    if (v5)
    {
      v6 = v5;
      outlined consume of Result<_DataTable, Error>(a1, 1);
    }

    else
    {
      v6 = swift_allocError(v4, &protocol self-conformance witness table for Error, 0, 0);
      *v9 = a1;
    }

    result = outlined consume of Result<_DataTable, Error>(a1, 1);
    v11 = 1;
  }

  else
  {
    v7 = *(*(a1 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(a1, 0);
    v8 = specialized handling<A, B>(_:_:)(v7);
    v12 = v8;
    if (!v8)
    {
      BUG();
    }

    v11 = 0;
    v13 = type metadata accessor for CMLColumn();
    v14 = swift_allocObject(v13, 24, 7);
    *(v14 + 16) = v12;
    v15 = v14;
    v16 = type metadata accessor for _UntypedColumn();
    v6 = swift_allocObject(v16, 24, 7);
    *(v6 + 16) = v15;
    result = outlined consume of Result<_DataTable, Error>(a1, 0);
  }

  *v3 = v6;
  *(v3 + 8) = v11;
  return result;
}

void *_sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(uint64_t a1, char a2, double a3)
{
  v3 = a1;
  v4 = _swiftEmptyArrayStorage;
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 16);
    v6 = CMLColumn.size.getter();
    v15 = v6;
    if (v6 < 0)
    {
      BUG();
    }

    if (v6)
    {
      v4 = _swiftEmptyArrayStorage;
      v7 = 0;
      do
      {
        outlined copy of Result<_DataTable, Error>(v3, 0);
        _UntypedColumn.valueAtIndex(index:)(v7, a3);
        v8 = v12;
        if (v14 == 2)
        {
          v16 = v13;
        }

        else
        {
          outlined consume of MLDataValue(v12, v13, v14);
          v8 = 0;
          v16 = 0xE000000000000000;
        }

        outlined consume of Result<_DataTable, Error>(v3, 0);
        if (!swift_isUniquelyReferenced_nonNull_native(v4))
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v9 = v4[2];
        if (v4[3] >> 1 <= v9)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v9 + 1, 1, v4);
        }

        ++v7;
        v4[2] = v9 + 1;
        v10 = 2 * v9;
        v4[v10 + 4] = v8;
        v4[v10 + 5] = v16;
        v3 = a1;
      }

      while (v15 != v7);
    }
  }

  outlined consume of Result<_DataTable, Error>(v3, a2);
  return v4;
}

void *_sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5(uint64_t a1, char a2, double a3)
{
  v3 = a1;
  v4 = _swiftEmptyArrayStorage;
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 16);
    v6 = CMLColumn.size.getter();
    v14 = v6;
    if (v6 < 0)
    {
      BUG();
    }

    if (v6)
    {
      v4 = _swiftEmptyArrayStorage;
      v7 = 0;
      do
      {
        outlined copy of Result<_DataTable, Error>(v3, 0);
        _UntypedColumn.valueAtIndex(index:)(v7, a3);
        v8 = v11;
        if (v13)
        {
          outlined consume of MLDataValue(v11, v12, v13);
          outlined consume of Result<_DataTable, Error>(v3, 0);
          v8 = 0;
          if (!swift_isUniquelyReferenced_nonNull_native(v4))
          {
            goto LABEL_13;
          }

          v8 = 0;
        }

        else
        {
          outlined consume of Result<_DataTable, Error>(v3, 0);
          if (!swift_isUniquelyReferenced_nonNull_native(v4))
          {
LABEL_13:
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
          }
        }

        v9 = v4[2];
        if (v4[3] >> 1 <= v9)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v9 + 1, 1, v4);
        }

        ++v7;
        v4[2] = v9 + 1;
        v4[v9 + 4] = v8;
        v3 = a1;
      }

      while (v14 != v7);
    }
  }

  outlined consume of Result<_DataTable, Error>(v3, a2);
  return v4;
}

void *_sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSd_Tt0B5(uint64_t a1, char a2, double a3)
{
  v3 = _swiftEmptyArrayStorage;
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 16);
    v5 = CMLColumn.size.getter();
    v12 = v5;
    if (v5 < 0)
    {
      BUG();
    }

    if (v5)
    {
      v3 = _swiftEmptyArrayStorage;
      v6 = 0;
      do
      {
        outlined copy of Result<_DataTable, Error>(a1, 0);
        _UntypedColumn.valueAtIndex(index:)(v6, a3);
        if (v11 == 1)
        {
          v13 = *&v9;
        }

        else
        {
          outlined consume of MLDataValue(v9, v10, v11);
          v13 = 0.0;
        }

        outlined consume of Result<_DataTable, Error>(a1, 0);
        if (!swift_isUniquelyReferenced_nonNull_native(v3))
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
        }

        v7 = v3[2];
        if (v3[3] >> 1 <= v7)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v7 + 1, 1, v3);
        }

        ++v6;
        v3[2] = v7 + 1;
        a3 = v13;
        *&v3[v7 + 4] = v13;
      }

      while (v12 != v6);
    }
  }

  outlined consume of Result<_DataTable, Error>(a1, a2);
  return v3;
}

uint64_t closure #1 in MLHandPoseClassifier.init(checkpoint:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return swift_task_switch(closure #1 in MLHandPoseClassifier.init(checkpoint:), 0, 0);
}

uint64_t closure #1 in MLHandPoseClassifier.init(checkpoint:)()
{
  v1 = *(*(v0 + 24) + 8);
  v2 = swift_task_alloc(80);
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = closure #1 in MLHandPoseClassifier.init(checkpoint:);
  return MLHandActionClassifier.GraphCNN.compile()();
}

{
  **(v0 + 16) = *(v0 + 40);
  return (*(v0 + 8))();
}

uint64_t closure #1 in MLHandPoseClassifier.init(checkpoint:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  v5;
  if (v1)
  {
    return (*(v6 + 8))();
  }

  *(v4 + 40) = a1;
  return swift_task_switch(closure #1 in MLHandPoseClassifier.init(checkpoint:), 0, 0);
}

void *static MLHandPoseClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, __m128 a4)
{
  result = static MLHandPoseClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2, a3, a4);
  if (!v4)
  {
    v6 = result;
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLHandPoseClassifier>);
    v8 = swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
    return specialized MLJob.init(_:)(v8, v6);
  }

  return result;
}

uint64_t static MLHandPoseClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, __m128 a4)
{
  v24 = v4;
  v27 = a2;
  v25 = a1;
  v6 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v26 = &v22;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v11 = *(*(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *(*(type metadata accessor for MLHandPoseClassifier.DataSource(0) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  outlined init with copy of MLTrainingSessionParameters(v25, &v22, type metadata accessor for MLHandPoseClassifier.DataSource);
  outlined init with copy of MLTrainingSessionParameters(v27, &v22, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v27 = a3;
  outlined init with copy of MLTrainingSessionParameters(a3, &v22, type metadata accessor for MLTrainingSessionParameters);
  v17 = type metadata accessor for HandPoseClassifierTrainingSessionDelegate(0);
  swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  v18 = v24;
  result = HandPoseClassifierTrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(&v22, &v22, &v22, a4);
  if (!v18)
  {
    v23[3] = v17;
    v23[4] = &protocol witness table for HandPoseClassifierTrainingSessionDelegate;
    v23[0] = result;
    v20 = v26;
    outlined init with copy of MLTrainingSessionParameters(v27, v26, type metadata accessor for MLTrainingSessionParameters);
    v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>);
    swift_allocObject(v21, *(v21 + 48), *(v21 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v23, v20, 23);
  }

  return result;
}

void *static MLHandPoseClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLHandPoseClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

uint64_t static MLHandPoseClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for HandPoseClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = HandPoseClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for HandPoseClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 23);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLHandPoseClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v54 = a5;
  v53 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLHandPoseClassifier, Error>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = &v41;
  v48 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v11 = *(*(v48 - 1) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v50 = &v41;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v49 = &v41;
  v17 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v21 = alloca(v18);
  v22 = alloca(v18);
  if (a2)
  {
    v41 = a1;
    swift_storeEnumTagMultiPayload(&v41, v6, 1);
    swift_errorRetain(a1);
    v53(&v41);
    v23 = &demangling cache variable for type metadata for Result<MLHandPoseClassifier, Error>;
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v23);
  }

  v51 = v17;
  v55 = &v41;
  v52 = &v41;
  outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v42);
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
  v26 = type metadata accessor for HandPoseClassifierTrainingSessionDelegate(0);
  result = swift_dynamicCast(&v47, v42, v25, v26, 6);
  if (result)
  {
    v27 = *(v47 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);
    if (v27)
    {
      v57 = v47;
      v28 = v47 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
      swift_beginAccess(v47 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, v42, 0, 0);
      v29 = v28;
      v10 = v49;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v49, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
      v30 = v48;
      if (__swift_getEnumTagSinglePayload(v10, 1, v48))
      {

        v23 = &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?;
        return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v23);
      }

      v31 = v50;
      outlined init with copy of MLTrainingSessionParameters(v10, v50, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
      v56 = v27;

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
      outlined init with copy of MLTrainingSessionParameters(v31 + v30[5], &v41, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
      v32 = *(v31 + v30[7]);
      v33 = *(v31 + v30[8]);
      v34 = v51;
      *&v42[*(v51 + 20) - 8] = *(v31 + v30[6]);
      *&v42[*(v34 + 24) - 8] = v32;
      *&v42[*(v34 + 28) - 8] = v33;
      outlined destroy of MLActivityClassifier.ModelParameters(v31, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
      v35 = v55;
      outlined init with take of MLClassifierMetrics(&v41, v55, type metadata accessor for MLHandPoseClassifier.ModelParameters);
      v36 = *(v57 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels);
      if (v36)
      {
        v37 = alloca(48);
        v38 = alloca(48);
        v43 = v56;
        v44 = v35;
        v45 = v57;
        v46 = v36;
        v36;
        v39 = v52;
        _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML20MLHandPoseClassifierV_s5Error_pTt1g5(partial apply for closure #1 in closure #1 in closure #1 in static MLHandPoseClassifier.resume(_:), &v41);
        v36;
        v53(v39);

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, &demangling cache variable for type metadata for Result<MLHandPoseClassifier, Error>);
        v40 = v55;
      }

      else
      {

        v40 = v35;
      }

      return outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLHandPoseClassifier.ModelParameters);
    }

    else
    {
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static MLHandPoseClassifier.resume(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7)
{
  v18 = a5;
  v16[0] = v8;
  v17 = a3;
  v16[1] = v7;
  v10 = *(*(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  outlined init with copy of MLTrainingSessionParameters(a2, v16, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v13 = *(v17 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary);

  v13;
  a4;
  v14 = v16[0];
  result = MLHandPoseClassifier.init(model:parameters:metricsAttributes:classLabels:)(a1, v16, v13, a4, a6, a7);
  if (v14)
  {
    result = v18;
    *v18 = v14;
  }

  return result;
}

uint64_t static MLHandPoseClassifier.buildFeatureTable(features:labels:sessionIds:imageFiles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v22 = a3;
  v20 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v5, v15);
  *(inited + 16) = 4;
  *(inited + 24) = 8;
  *(inited + 32) = 0x746E696F7079656BLL;
  *(inited + 40) = 0xE900000000000073;
  v23 = a1;
  v16 = &v23;
  a1;
  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 56) = v7 & 1;
  v23;
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  v23 = a2;
  v17 = &v23;
  a2;
  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 88) = v8 & 1;
  v23;
  *(inited + 96) = 0x5F6E6F6973736573;
  *(inited + 104) = 0xEA00000000006469;
  v23 = v22;
  v18 = &v23;
  v22;
  *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 120) = v9 & 1;
  v23;
  *(inited + 128) = 0x7461506567616D69;
  *(inited + 136) = 0xE900000000000068;
  v23 = v21;
  v19 = &v23;
  v21;
  *(inited + 144) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 152) = v10 & 1;
  v23;
  v11 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v11);
  result = v23;
  v13 = v24;
  v14 = v20;
  *v20 = v23;
  *(v14 + 8) = v13;
  return result;
}

uint64_t static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = v3;
  v5 = *(a1 + 8);
  v40 = *a1;
  v41 = v5;
  v38 = a2;
  v6._countAndFlagsBits = a2;
  *&v36 = a3;
  v6._object = a3;
  MLDataTable.subscript.getter(v6);
  if (LOBYTE(v39._object) == 1)
  {
    outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, 1);
  }

  else
  {

    _UntypedColumn.type.getter();
    outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, 0);
    outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, 0);
    if (v40 == 3)
    {
      v7 = *(a1 + 8);
      v39._countAndFlagsBits = *a1;
      LOBYTE(v39._object) = v7;
      v8._countAndFlagsBits = v38;
      v8._object = v36;
      MLDataTable.subscript.getter(v8);
      specialized MLUntypedColumn.map<A>(skipUndefined:_:)(1, partial apply for closure #1 in static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:), 0, v40, v41);
      outlined consume of Result<_DataTable, Error>(v40, v41);
      countAndFlagsBits = v39._countAndFlagsBits;
      LOBYTE(v42) = v39._object;
      v9 = *(a1 + 8);
      v40 = *a1;
      v41 = v9;
      v8._countAndFlagsBits = v38;
      v8._object = v36;
      MLDataTable.subscript.getter(v8);
      v10 = -1;
      v35 = -1;
      if (!LOBYTE(v39._object))
      {
        v11 = *(v39._countAndFlagsBits + 16);

        v10 = CMLColumn.size.getter();
        outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, 0);
      }

      outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, v39._object);
      v42 = v42;
      specialized MLDataColumn.dropMissing()(countAndFlagsBits, v42);
      if (!v41)
      {
        v34 = v10;
        v12 = *(v40 + 16);
        outlined copy of Result<_DataTable, Error>(v40, 0);
        v10 = v34;
        v35 = CMLColumn.size.getter();
        outlined consume of Result<_DataTable, Error>(v40, 0);
      }

      outlined consume of Result<_DataTable, Error>(v40, v41);
      v13 = __OFSUB__(v10, v35);
      v14 = v10 - v35;
      if (v13)
      {
        BUG();
      }

      if (v14)
      {
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        _StringGuts.grow(_:)(236);
        v15._object = "validation_confusion" + 0x8000000000000000;
        v15._countAndFlagsBits = 0xD00000000000003DLL;
        String.append(_:)(v15);
        v16 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v18 = v17;
        v15._countAndFlagsBits = v16;
        v15._object = v17;
        String.append(_:)(v15);
        v18;
        v15._object = "mn into MLMultiArray format. " + 0x8000000000000000;
        v15._countAndFlagsBits = 0xD00000000000006BLL;
        String.append(_:)(v15);
        v19 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v21 = v20;
        v15._countAndFlagsBits = v19;
        v15._object = v20;
        String.append(_:)(v15);
        v21;
        v15._object = 0xE200000000000000;
        v15._countAndFlagsBits = 8236;
        String.append(_:)(v15);
        v40 = 21;
        v22 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v24 = v23;
        v15._countAndFlagsBits = v22;
        v15._object = v23;
        String.append(_:)(v15);
        v24;
        v15._object = "ld have a dimension of [1, " + 0x8000000000000000;
        v15._countAndFlagsBits = 0xD00000000000003CLL;
        String.append(_:)(v15);
        v15._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v15._object, 0, 0);
        *v25 = v39;
        *(v25 + 16) = 0;
        *(v25 + 32) = 0;
        *(v25 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v15._object);
        return outlined consume of Result<_DataTable, Error>(countAndFlagsBits, v42);
      }

      v36;
      specialized MLDataTable.subscript.setter(countAndFlagsBits, v42, v38, v36);
    }
  }

  v28 = *(a1 + 8);
  v39._countAndFlagsBits = *a1;
  v27 = v39._countAndFlagsBits;
  LOBYTE(v39._object) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v29, v32);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = v38;
  v31 = v36;
  inited[5] = v36;
  LOBYTE(v40) = 5;
  v31;
  outlined copy of Result<_DataTable, Error>(v27, v28);
  static _ValidationUtilities.validateTableTypes(table:columns:type:)(&v39, inited, &v40);
  outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, v39._object);
  swift_setDeallocating(inited);
  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

void closure #1 in static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(uint64_t a1)
{
  if (*(a1 + 16) == 3)
  {
    v2 = *a1;
    static MLHandPoseClassifier.convertSequenceToMultiArray(value:)(&v2);
  }

  else
  {
    *v1 = 0;
  }
}

void static MLHandPoseClassifier.convertSequenceToMultiArray(value:)(uint64_t *a1)
{
  v142 = v1;
  v2 = *a1;
  v138 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  specialized ContiguousArray.reserveCapacity(_:)(3);
  v3 = objc_allocWithZone(NSNumber);
  v4 = [v3 initWithInteger:1];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v3);
  v5 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v5);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v5, v4);
  specialized ContiguousArray._endMutation()();
  v6 = objc_allocWithZone(NSNumber);
  v7 = [v6 initWithInteger:3];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v6);
  v8 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v8);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v8, v7);
  specialized ContiguousArray._endMutation()();
  v9 = objc_allocWithZone(NSNumber);
  v10 = [v9 initWithInteger:21];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v9);
  v11 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v11);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v11, v10);
  specialized ContiguousArray._endMutation()();
  objc_allocWithZone(MLMultiArray);
  v12 = @nonobjc MLMultiArray.init(shape:dataType:)(_swiftEmptyArrayStorage, 65600);
  if (!v12)
  {
    goto LABEL_67;
  }

  v13 = v12;
  v128 = UnsafeMutableBufferPointer.init(_:)(v13, &type metadata for Double);
  v144 = v13;

  v14 = CMLSequence.size.getter();
  v15 = specialized RandomAccessCollection<>.distance(from:to:)(0, v14);

  if (v15 != 1)
  {

LABEL_67:
    *v142 = 0;
    return;
  }

  v124[1] = v2;
  v16 = 0.0;
  v125 = 0;

LABEL_4:
  specialized EnumeratedSequence.Iterator.next()(v16);
  v17 = *&v138;
  v18 = v139;
  v19 = v140;
  v20 = v141;
  if (v141 == 3)
  {
    outlined copy of MLDataValue(v139, v140, 3u);
    outlined copy of MLDataValue(v18, v19, 3u);
    v137 = v18;
    v134 = v19;
    v21 = CMLSequence.size.getter();
    v19 = v134;
    v18 = v137;
    v22 = specialized RandomAccessCollection<>.distance(from:to:)(0, v21);
    v136 = v17;
    outlined consume of (offset: Int, element: MLDataValue)?(v17, v18, v19, 3);
    if (v22 == 3)
    {
      outlined copy of MLDataValue(v18, v19, 3u);
      v23 = 0;
      while (1)
      {
        if (v23 == CMLSequence.size.getter())
        {

          v108 = v136;
          v109 = v134;
          outlined consume of (offset: Int, element: MLDataValue)?(v136, v18, v134, 3);
          outlined consume of (offset: Int, element: MLDataValue)?(v108, v18, v109, 3);
          goto LABEL_4;
        }

        v25 = v23;
        v24 = CMLSequence.value(at:)(v23);
        MLDataValue.init(_:)(v24, v16);
        v26 = v138;
        v133 = v139;
        v27 = v140;
        v28 = CMLSequence.size.getter();
        v127 = v25;
        if (v25 >= v28)
        {
          BUG();
        }

        v29 = v133;
        if (v27 != 3)
        {
          break;
        }

        outlined copy of MLDataValue(*&v26, v133, 3u);
        outlined copy of MLDataValue(*&v26, v29, 3u);
        v30 = CMLSequence.size.getter();
        if (CMLSequence.size.getter() < 0)
        {
          BUG();
        }

        v31 = v26;
        v32 = CMLSequence.size.getter();
        v135 = v31;
        outlined consume of MLDataValue(*&v31, v29, 3);
        if (v30 < 0 || v32 < v30)
        {
          BUG();
        }

        if (v30 != 21)
        {
          v26 = v135;
          outlined consume of MLDataValue(*&v135, v29, 3);
          v27 = 3;
          break;
        }

        v33 = v135;

        if (CMLSequence.size.getter())
        {
          v34 = 0;
          while (1)
          {
            v35 = CMLSequence.value(at:)(v34);
            v36 = CMLFeatureValue.type.getter();
            v126 = v34;
            switch(v36)
            {
              case 0:
                v37 = v35[2];

                v145 = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v37));
                v35;
                object = 0;
                v146 = 0.0;
                goto LABEL_39;
              case 1:
                v74 = v35[2];

                specialized handling<A, B>(_:_:)(v74);
                v143 = v16;
                *&v73 = COERCE_DOUBLE(v35);
                v16 = v143;
                v145 = v143;
                LOBYTE(v73) = 1;
                goto LABEL_37;
              case 2:

                v67 = CMLFeatureValue.stringValue()();
                v145 = *&v67._countAndFlagsBits;
                if (v68)
                {
                  v68;

                  BUG();
                }

                object = v67._object;
                *&v69 = COERCE_DOUBLE(v35);
                LOBYTE(v69) = 2;
                v146 = *&v69;
                goto LABEL_39;
              case 3:
                v70 = v35[2];

                v71 = specialized handling<A, B>(_:_:)(v70);
                if (!v71)
                {
                  BUG();
                }

                v35;
                v72 = type metadata accessor for CMLSequence();
                *&v73 = COERCE_DOUBLE(swift_allocObject(v72, 25, 7));
                *(v73 + 16) = v71;
                v145 = *&v73;
                *(v73 + 24) = 1;
                LOBYTE(v73) = 3;
                goto LABEL_37;
              case 4:
                v39 = v35[2];

                v40 = specialized handling<A, B>(_:_:)(v39);
                if (!v40)
                {
                  BUG();
                }

                v132 = v35;
                v41 = type metadata accessor for CMLDictionary();
                *&v42 = COERCE_DOUBLE(swift_initStackObject(v41, &v121));
                *(v42 + 16) = v40;
                v131 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
                swift_retain_n(v42, 2);
                v43 = 0;
                v145 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
                v143 = *&v42;
                while (v43 != CMLDictionary.size.getter())
                {
                  CMLDictionary.keyAndValue(at:)(v43);
                  v45 = v44;
                  v43 = specialized RandomAccessCollection<>.index(after:)(v43);
                  v46 = CMLFeatureValue.stringValue()();
                  if (v47)
                  {
                    v47;

                    *&v42 = v143;
                  }

                  else
                  {
                    v48 = v46._object;
                    v146 = *&v46._countAndFlagsBits;

                    MLDataValue.init(_:)(v45, v16);

                    v130 = v138;
                    v129 = v139;
                    v147 = v140;
                    *&v49 = v146;
                    v138 = v146;
                    v139 = v48;
                    LOBYTE(v140) = 2;
                    v50 = v48;
                    *(&v49 + 1) = v48;
                    v51 = v145;
                    specialized __RawDictionaryStorage.find<A>(_:)(v49, 2, v16);
                    *&v49 = (v53 & 1) == 0;
                    v54 = __OFADD__(*(*&v51 + 16), v49);
                    v55 = *(*&v51 + 16) + v49;
                    if (v54)
                    {
                      BUG();
                    }

                    v56 = v53;
                    if (*(*&v51 + 24) < v55)
                    {
                      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, 1u);
                      *&v57 = v146;
                      *(&v57 + 1) = v50;
                      specialized __RawDictionaryStorage.find<A>(_:)(v57, 2, v16);
                      LOBYTE(v59) = v59 & 1;
                      v60 = v56;
                      if ((v56 & 1) != v59)
                      {
                        LOBYTE(v60) = v56 & 1;
                        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v50, v59, v60, v58);
                        BUG();
                      }
                    }

                    if (v56)
                    {
                      v118 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
                      swift_willThrow(&type metadata for _MergeError, &protocol witness table for _MergeError);
                      v124[0] = v118;
                      swift_errorRetain(v118);
                      v119 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
                      if (swift_dynamicCast(&demangling cache variable for type metadata for Error, v124, v119, &type metadata for _MergeError, 0))
                      {
                        v122 = 0;
                        v123 = 0xE000000000000000;
                        _StringGuts.grow(_:)(30);
                        v120._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
                        v120._countAndFlagsBits = 0xD00000000000001BLL;
                        String.append(_:)(v120);
                        _print_unlocked<A, B>(_:_:)(&v138, &v122, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
                        v120._countAndFlagsBits = 39;
                        v120._object = 0xE100000000000000;
                        String.append(_:)(v120);
                        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v122, v123, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
                        BUG();
                      }

                      outlined consume of MLDataValue(*&v130, v129, v147);
                      outlined consume of MLDataValue(*&v138, v139, v140);

                      v124[0];
                      swift_unexpectedError(v118, "Swift/Dictionary.swift", 22, 1, 489);
                      BUG();
                    }

                    v61 = v131;
                    *(*&v131 + 8 * (v52 >> 6) + 64) |= 1 << v52;
                    v62 = *(*&v61 + 48);
                    v63 = 24 * v52;
                    *(v62 + v63) = v146;
                    *(v62 + v63 + 8) = v50;
                    *(v62 + v63 + 16) = 2;
                    v64 = *(*&v61 + 56);
                    *(v64 + v63) = v130;
                    *(v64 + v63 + 8) = v129;
                    *(v64 + v63 + 16) = v147;
                    v65 = *(*&v61 + 16);
                    v54 = __OFADD__(1, v65);
                    v66 = v65 + 1;
                    if (v54)
                    {
                      BUG();
                    }

                    v145 = v61;
                    *(*&v61 + 16) = v66;
                    *&v42 = v143;
                  }
                }

                v132;
                *&v104 = COERCE_DOUBLE(v42);
                LOBYTE(v104) = 4;
                v146 = *&v104;
                object = 0;
                v34 = v126;
                goto LABEL_39;
              case 5:
                *&v75 = COERCE_DOUBLE();
                LOBYTE(v75) = 6;
                v146 = *&v75;
                v145 = 0.0;
                goto LABEL_38;
              case 6:

                MLDataValue.MultiArrayType.init(from:)(v35);
                v145 = v138;
                if (v138 == 0.0)
                {
                  BUG();
                }

                *&v73 = COERCE_DOUBLE();
                LOBYTE(v73) = 5;
LABEL_37:
                v146 = *&v73;
LABEL_38:
                object = 0;
LABEL_39:
                if (v34 >= CMLSequence.size.getter())
                {
                  BUG();
                }

                v132 = object;
                v76 = v144;
                v77 = [v144 strides];
                v78 = v77;
                v143 = COERCE_DOUBLE(type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr));
                v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v78, *&v143);

                if ((v79 & 0xC000000000000003) != 0)
                {
                  v80 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v79);
                }

                else
                {
                  if (!*(&dword_10 + (v79 & 0xFFFFFFFFFFFFF8)))
                  {
                    BUG();
                  }

                  v80 = *(v79 + 32);
                }

                v81 = v80;
                v79;
                v82 = [v81 integerValue];

                v84 = v82;
                v83 = v136 * v82;
                if (!is_mul_ok(v136, v84))
                {
                  BUG();
                }

                v85 = [v76 strides];
                v86 = v85;
                v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v86, *&v143);

                if ((v87 & 0xC000000000000003) != 0)
                {
                  v88 = specialized _ArrayBuffer._getElementSlowPath(_:)(1, v87);
                }

                else
                {
                  if (*(&dword_10 + (v87 & 0xFFFFFFFFFFFFF8)) < 2uLL)
                  {
                    BUG();
                  }

                  v88 = *(v87 + 40);
                }

                v89 = v88;
                v87;
                v90 = [v89 integerValue];

                v92 = v90;
                v91 = v127 * v90;
                if (!is_mul_ok(v127, v92))
                {
                  BUG();
                }

                v54 = __OFADD__(v91, v83);
                v93 = v91 + v83;
                if (v54)
                {
                  BUG();
                }

                v94 = [v144 strides];
                v95 = v94;
                v96 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v95, *&v143);
                (objc_release)(v95);
                if ((v96 & 0xC000000000000003) != 0)
                {
                  v98 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v96);
                  v97 = v133;
                }

                else
                {
                  v97 = v133;
                  if (*(&dword_10 + (v96 & 0xFFFFFFFFFFFFF8)) < 3uLL)
                  {
                    BUG();
                  }

                  v98 = *(v96 + 48);
                }

                v96;
                v99 = [v98 integerValue];

                v100 = v126;
                v102 = v99;
                v101 = v126 * v99;
                if (!is_mul_ok(v126, v102))
                {
                  BUG();
                }

                v54 = __OFADD__(v101, v93);
                v103 = v101 + v93;
                if (v54)
                {
                  BUG();
                }

                if (LOBYTE(v146))
                {
                  v33 = v135;
                  if (LOBYTE(v146) != 1)
                  {
                    outlined consume of MLDataValue(*&v145, v132, SLOBYTE(v146));
                    outlined consume of MLDataValue(*&v33, v97, 3);
                    outlined consume of MLDataValue(*&v33, v97, 3);
                    v110 = v136;
                    v111 = v137;
                    v112 = v134;
                    outlined consume of (offset: Int, element: MLDataValue)?(v136, v137, v134, 3);
                    outlined consume of (offset: Int, element: MLDataValue)?(v110, v111, v112, 3);

                    goto LABEL_71;
                  }

                  *(v128 + 8 * v103) = v145;
                }

                else
                {
                  v16 = SLODWORD(v145);
                  *(v128 + 8 * v103) = SLODWORD(v145);
                  v33 = v135;
                }

                v34 = v100 + 1;
                if (v34 == CMLSequence.size.getter())
                {
                  goto LABEL_64;
                }

                break;
            }
          }
        }

LABEL_64:
        v105 = v127 + 1;

        v106 = v133;
        outlined consume of MLDataValue(*&v33, v133, 3);
        v107 = *&v33;
        v23 = v105;
        outlined consume of MLDataValue(v107, v106, 3);
        v18 = v137;
      }

      outlined consume of MLDataValue(*&v26, v29, v27);
      v113 = v136;
      v114 = v137;
      v115 = v134;
      outlined consume of (offset: Int, element: MLDataValue)?(v136, v137, v134, 3);
      outlined consume of (offset: Int, element: MLDataValue)?(v113, v114, v115, 3);
LABEL_71:

      goto LABEL_67;
    }

    v116 = v136;
    outlined consume of (offset: Int, element: MLDataValue)?(v136, v18, v19, 3);
    v20 = 3;
  }

  else
  {
    if (v141 == 255)
    {

      MLDataValue.MultiArrayType.init(_:)(v144);
      *v142 = v138;
      return;
    }

    v116 = *&v138;
  }

  v117 = v142;
  outlined consume of (offset: Int, element: MLDataValue)?(v116, v18, v19, v20);
  *v117 = 0;
}

void *MLHandPoseClassifier.modelPrediction(on:using:)(uint64_t a1, void *a2)
{
  v4 = static _VideoUtilities.getHandKeyPointsFromImageUrl(url:)(a1);
  if (!v2)
  {
    v5 = v4;
    v15 = v4[2];
    if (v15)
    {
      specialized ContiguousArray.reserveCapacity(_:)(v15);
      v6 = 0;
      do
      {
        v7 = v5[v6 + 4];
        v6 = (v6 + 1);
        v14 = v7;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v7);
        v8 = v5;
        v9 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v9);
        v10 = v9;
        v5 = v8;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v10, v14);
        specialized ContiguousArray._endMutation()();
      }

      while (v15 != v6);
      v8;
    }

    else
    {
      v4;
    }

    v11 = static _VideoUtilities.generatePredictionWindows(frameKeypoints:windowSize:numOfKeypoints:)(_swiftEmptyArrayStorage, 1, 21);
    _swiftEmptyArrayStorage;
    if (!*(v11 + 16))
    {
      BUG();
    }

    v12 = *(v11 + 32);
    v11;
    v3 = MLHandPoseClassifier.modelPrediction(on:using:)(v12, a2);
  }

  return v3;
}

void *closure #1 in MLHandPoseClassifier.predictions(from:)(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = v3;
  v6 = type metadata accessor for MLHandPoseClassifier(0);
  result = MLHandPoseClassifier.modelPrediction(on:using:)(a1, *(a2 + *(v6 + 20)));
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *v8 = result;
  }

  return result;
}

void *MLHandPoseClassifier.modelPrediction(on:using:)(id a1, void *a2)
{
  v3 = [a1 shape];
  v4 = v3;
  v5 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v4, v5);

  v7 = specialized Array._getCount()(v6);
  v6;
  if (v7 != 3)
  {
    goto LABEL_19;
  }

  v8 = [a1 shape];
  v9 = v8;
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v9, v5);

  ML20MLHandPoseClassifierV15modelPrediction2on5usingSaySS5label_Sd10confidencetGSo12MLMultiArrayC_So7MLModelCtKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAOSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg50125_s8CreateML20MLHandPoseClassifierV15modelPrediction2on5usingSaySS5label_Sd10confidencetGSo12MLMultiArrayC_So7MLModelCtKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAOSiTf3nnnpk_nTf1cn_n(v10);
  v10;
  LOBYTE(v12) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(ML20MLHandPoseClassifierV15modelPrediction2on5usingSaySS5label_Sd10confidencetGSo12MLMultiArrayC_So7MLModelCtKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAOSiTf3nnnpk_nTf1cn_n, &outlined read-only object #0 of MLHandPoseClassifier.modelPrediction(on:using:));
  v7 = v12;
  ML20MLHandPoseClassifierV15modelPrediction2on5usingSaySS5label_Sd10confidencetGSo12MLMultiArrayC_So7MLModelCtKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAOSiTf3nnnpk_nTf1cn_n;
  if (v7)
  {
    v62 = v5;
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    inited = swift_initStackObject(v13, v82);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = 0x7365736F70;
    inited[5] = 0xE500000000000000;
    v15 = objc_opt_self(MLFeatureValue);
    v16 = [v15 featureValueWithMultiArray:a1];
    v17 = v16;
    inited[9] = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLFeatureValue, MLFeatureValue_ptr);
    inited[6] = v17;
    v18 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    v7 = objc_allocWithZone(MLDictionaryFeatureProvider);
    v19 = @nonobjc MLDictionaryFeatureProvider.init(dictionary:)(v18);
    if (!v2)
    {
      v7 = v19;
      v81[0] = 0;
      v20 = [a2 predictionFromFeatures:v19 error:v81];
      v21 = v20;
      v22 = v81[0];
      if (v21)
      {
        v63 = v7;
        v7 = 0xD000000000000012;
        v23 = v21;
        v81[0];
        v24 = String._bridgeToObjectiveC()();
        v64 = v23;
        v25 = [v23 featureValueForName:v24];
        v26 = v25;

        if (v26)
        {
          v27 = [v26 dictionaryValue];
          v28 = v27;

          v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v28, &type metadata for AnyHashable, v62, &protocol witness table for AnyHashable);
          v30 = v29;
          v31 = *(v29 + 16);
          if (v31)
          {
            v67 = _swiftEmptyArrayStorage;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
            v7 = _swiftEmptyArrayStorage;
            v32 = specialized Dictionary.startIndex.getter(v29);
            v34 = v29 + 64;
            v35 = v31 - 1;
            v59 = v30 + 64;
            for (i = v30; ; v33 = *(i + 36))
            {
              if (v32 < 0 || v32 >= 1 << *(v30 + 32))
              {
                BUG();
              }

              v55 = v35;
              v36 = v32 >> 6;
              v37 = *(v34 + 8 * (v32 >> 6));
              if (!_bittest64(&v37, v32))
              {
                BUG();
              }

              if (v33 != *(v30 + 36))
              {
                BUG();
              }

              v56 = 1 << v32;
              v57 = v33;
              v38 = v32;
              outlined init with copy of AnyHashable(*(v30 + 48) + 40 * v32, v81);
              v61 = v38;
              v39 = *(*(v30 + 56) + 8 * v38);
              v81[5] = v39;
              outlined init with copy of AnyHashable(v81, v78);
              v80 = v39;
              v76 = v79;
              v77 = v39;
              v75[1] = v78[1];
              v75[0] = v78[0];
              v40 = v39;
              v40;
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v81, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v75, v70, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));

              v74 = v71;
              v41 = *&v70[0];
              v73[1] = v70[1];
              v73[0] = v70[0];
              swift_dynamicCast(&v65, v73, &type metadata for AnyHashable, &type metadata for String, 7);
              outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v75, v68, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              v42 = v69;
              [v69 doubleValue];

              outlined destroy of AnyHashable(v68);
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v75, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              v43 = v65;
              v44 = v66;
              v67 = v7;
              v45 = *(v7 + 16);
              v46 = v45 + 1;
              if (*(v7 + 24) >> 1 <= v45)
              {
                v60 = v66;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v7 + 24) >= 2uLL, v46, 1);
                v46 = v45 + 1;
                v44 = v60;
                v7 = v67;
              }

              *(v7 + 16) = v46;
              v47 = 24 * v45;
              *(v7 + v47 + 32) = v43;
              *(v7 + v47 + 40) = v44;
              *(v7 + v47 + 48) = v41;
              v30 = i;
              v48 = -1 << *(i + 32);
              if (v61 >= -v48)
              {
                BUG();
              }

              v34 = v59;
              if ((v56 & *(v59 + 8 * v36)) == 0)
              {
                BUG();
              }

              if (v57 != *(i + 36))
              {
                BUG();
              }

              v32 = _HashTable.occupiedBucket(after:)(v61, v59, ~v48);
              v35 = v55 - 1;
              if (!v55)
              {
                break;
              }
            }

            i;
            swift_unknownObjectRelease(v64);
          }

          else
          {
            v29;
            swift_unknownObjectRelease(v64);

            return _swiftEmptyArrayStorage;
          }
        }

        else
        {
          v53 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v53, 0, 0);
          *v54 = 0xD000000000000028;
          *(v54 + 8) = "labelProbabilities" + 0x8000000000000000;
          *(v54 + 16) = 0;
          *(v54 + 32) = 0;
          *(v54 + 48) = 0;
          swift_willThrow(&type metadata for MLCreateError, v53);

          swift_unknownObjectRelease(v23);
        }
      }

      else
      {
        v52 = v81[0];
        _convertNSErrorToError(_:)(v22);

        swift_willThrow(v52, "predictionFromFeatures:error:");
      }
    }
  }

  else
  {
LABEL_19:
    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v50 = 0xD000000000000025;
    *(v50 + 8) = "rt requested type" + 0x8000000000000000;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v49);
  }

  return v7;
}

uint64_t MLHandPoseClassifier.evaluation(on:)(uint64_t a1, double a2, double a3)
{
  v20 = v4;
  v17 = a1;
  v19 = v3;
  v6 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v7 = *(*(v6 - 1) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(type metadata accessor for MLHandPoseClassifier(0) + 24);
  v18 = v5;
  v11 = *(*(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) + 20) + v5 + v10);
  v16 = 0;
  LOWORD(v17) = 256;
  v12 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  swift_storeEnumTagMultiPayload(&v16, v12, 0);
  *(&v16 + v6[5]) = v11;
  *(&v16 + v6[6]) = 80;
  *(&v16 + v6[7]) = 1;
  *(&v16 + v6[8]) = 0;
  *(&v16 + v6[10]) = 0x403E000000000000;
  v13 = v20;
  MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(0);
  if (v13)
  {
    return outlined destroy of MLActivityClassifier.ModelParameters(&v16, type metadata accessor for MLHandActionClassifier.ModelParameters);
  }

  v15 = v16;
  LODWORD(v20) = BYTE8(v16);
  MLHandActionClassifier.evaluation(on:parameters:)(&v16, &v16, 0.0, a3);
  outlined destroy of MLActivityClassifier.ModelParameters(&v16, type metadata accessor for MLHandActionClassifier.ModelParameters);
  return outlined consume of Result<_DataTable, Error>(v15, v20);
}

uint64_t MLHandPoseClassifier.write(to:metadata:)(uint64_t a1, const void *a2, double a3, double a4)
{
  v26 = v4;
  v28 = v5;
  v29 = a2;
  v30 = type metadata accessor for URL(0);
  v31 = *(v30 - 8);
  v6 = *(v31 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v25 = &v22;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v24 = &v22;
  v27 = a1;
  v11 = URL.pathExtension.getter();
  v13 = v12;
  if (!(v11 ^ 0x67616B6361706C6DLL | v12 ^ 0xE900000000000065))
  {
    v12;
LABEL_4:
    v15 = v24;
    v16 = v26;
    result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v27, 0xD000000000000014, ("HandPoseClassifier" + 0x8000000000000000), 0x67616B6361706C6DLL, 0xE900000000000065);
    if (v16)
    {
      return result;
    }

    v18 = *(v28 + 8);
    qmemcpy(v23, v29, sizeof(v23));
    MLHandActionClassifier.GraphCNN.writeMLPackage(to:metadata:)(v15, v23, a3, a4);
    v19 = v15;
    return (*(v31 + 8))(v19, v30);
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v12, 0x67616B6361706C6DLL, 0xE900000000000065, 0);
  v13;
  if (v14)
  {
    goto LABEL_4;
  }

  v20 = v25;
  v21 = v26;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v27, 0xD000000000000012, (" is empty on row " + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (v21)
  {
    return result;
  }

  qmemcpy(v23, v29, sizeof(v23));
  MLHandActionClassifier.write(to:metadata:)(v20, v23, a3, a4);
  v19 = v20;
  return (*(v31 + 8))(v19, v30);
}

uint64_t MLHandPoseClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3, double a4, double a5)
{
  v20 = v5;
  v24 = a3;
  v22 = a2;
  v21 = a1;
  v25 = type metadata accessor for URL.DirectoryHint(0);
  v23 = *(v25 - 8);
  v6 = *(v23 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v26 = v19;
  v12 = type metadata accessor for URL(0);
  v27 = *(v12 - 8);
  v13 = *(v27 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  qmemcpy(v19, v24, sizeof(v19));
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v12);
  (*(v23 + 104))(v19, enum case for URL.DirectoryHint.inferFromPath(_:), v25);
  v16 = v22;
  v22;
  v17 = URL.init(filePath:directoryHint:relativeTo:)(v21, v16, v19, v26);
  MLHandPoseClassifier.write(to:metadata:)(v19, v19, v17, a5);
  return (*(v27 + 8))(v19, v12);
}

unint64_t MLHandPoseClassifier.debugDescription.getter()
{
  v1 = v0;
  v27._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v27._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLHandPoseClassifier(0);
  v6 = v0 + v5[6];
  v27._countAndFlagsBits = MLHandPoseClassifier.ModelParameters.description.getter();
  v8 = v7;
  v9 = v1 + v5[7];
  v24._countAndFlagsBits = MLClassifierMetrics.accuracyDescription.getter();
  v24._object = v10;
  v11 = v5[8];
  v12 = v8;
  outlined init with copy of MLTrainingSessionParameters(v1 + v11, &v22, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v8) = swift_getEnumCaseMultiPayload(&v22, v27._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v22, type metadata accessor for MLClassifierMetrics.Contents);
  v27._object = MLClassifierMetrics.accuracyDescription.getter();
  v14 = v13;
  v25 = 0xD00000000000001FLL;
  v26 = "HandActionClassifier" + 0x8000000000000000;
  v15._countAndFlagsBits = v27._countAndFlagsBits;
  v27._countAndFlagsBits = v12;
  v15._object = v12;
  String.append(_:)(v15);
  v23._countAndFlagsBits = 0xD00000000000001ELL;
  v23._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  object = v24._object;
  String.append(_:)(v24);
  v17 = v23._object;
  String.append(_:)(v23);
  v17;
  if (v8 > 1)
  {
    v20 = object;
  }

  else
  {
    v23._countAndFlagsBits = 0xD000000000000020;
    v23._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v18._countAndFlagsBits = v27._object;
    v18._object = v14;
    String.append(_:)(v18);
    v19 = v23._object;
    String.append(_:)(v23);
    object;
    v20 = v14;
    v14 = v19;
  }

  v20;
  v14;
  v27._countAndFlagsBits;
  return v25;
}

NSAttributedString MLHandPoseClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v3._countAndFlagsBits = MLHandPoseClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

NSAttributedString __swiftcall NSAttributedString.__allocating_init(string:)(Swift::String string)
{
  v1 = (swift_getObjCClassFromMetadata)();
  v2 = objc_allocWithZone(v1);
  v3 = String._bridgeToObjectiveC()();
  string._object, string._object;
  v4 = [v2 initWithString:v3];

  return v4;
}

uint64_t specialized Collection<>.mostFrequent()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v7 = a4 >> 1;
  if (v7 != a3)
  {
    swift_unknownObjectRetain(a1);
    v8 = (a2 + 16 * a3 + 8);
    v34 = v7;
    do
    {
      if (a3 >= v7)
      {
        BUG();
      }

      v35 = a3;
      v9 = *(v8 - 1);
      v33 = v8;
      v10 = *v8;
      *v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v6);
      v36 = v9;
      v37 = v10;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v6[2], v14);
      v16 = v6[2] + v14;
      if (v15)
      {
        BUG();
      }

      v17 = v12;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Int>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v16))
      {
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v37);
        LOBYTE(v20) = v20 & 1;
        v21 = v35;
        if ((v17 & 1) != v20)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v37, v20, v18, v19);
          BUG();
        }
      }

      else
      {
        v21 = v35;
      }

      v7 = v34;
      if ((v17 & 1) == 0)
      {
        v6[(v13 >> 6) + 8] |= 1 << v13;
        v22 = v6[6];
        v23 = 16 * v13;
        *(v22 + v23) = v36;
        *(v22 + v23 + 8) = v37;
        *(v6[7] + 8 * v13) = 0;
        v24 = v6[2];
        v15 = __OFADD__(1, v24);
        v25 = v24 + 1;
        if (v15)
        {
          BUG();
        }

        v6[2] = v25;
        v37;
      }

      v26 = v6[7];
      v27 = *(v26 + 8 * v13);
      v15 = __OFADD__(1, v27);
      v28 = v27 + 1;
      if (v15)
      {
        BUG();
      }

      a3 = v21 + 1;
      *(v26 + 8 * v13) = v28;
      v37;
      v8 = v33 + 2;
    }

    while (v34 != a3);
    swift_unknownObjectRelease(a1);
  }

  v29 = specialized Sequence.max(by:)(v6);
  v31 = v30;
  v6;
  if (!v31)
  {
    return 0;
  }

  return v29;
}

uint64_t specialized Collection<>.mostFrequent()()
{
  v57 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnSlice<String>);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v58 = v49;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<ColumnSlice<String>>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for String?);
  v11 = lazy protocol witness table accessor for type String? and conformance <A> A?();
  v54 = v10;
  v56 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v10, &type metadata for Int, v11);
  (*(v2 + 16))(v58, v57, v1);
  v12 = v1;
  v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ColumnSlice<String> and conformance ColumnSlice<A>, &demangling cache variable for type metadata for ColumnSlice<String>, &protocol conformance descriptor for ColumnSlice<A>);
  dispatch thunk of Sequence.makeIterator()(v1, v13);
  v14 = v49;
  v15 = &v49[*(v6 + 36)];
  v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ColumnSlice<String> and conformance ColumnSlice<A>, &demangling cache variable for type metadata for ColumnSlice<String>, &protocol conformance descriptor for ColumnSlice<A>);
  v55 = v12;
  v51 = v49;
  v52 = v15;
  for (i = v16; ; v16 = i)
  {
    dispatch thunk of Collection.endIndex.getter(v12, v16);
    if (*v15 == v50[0])
    {
      break;
    }

    v58 = dispatch thunk of Collection.subscript.read(v50, v15, v12, v16);
    v57 = *v17;
    v18 = v17[1];
    v18;
    (v58)(v50, 0);
    dispatch thunk of Collection.formIndex(after:)(v15, v55, v16);
    v19 = v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v56);
    v50[0] = v19;
    v58 = v18;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v18);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(*(v19 + 16), v23);
    v25 = *(v19 + 16) + v23;
    if (v24)
    {
      BUG();
    }

    v26 = v21;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String?, Int>);
    v27 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25);
    v28 = v50[0];
    v56 = v50[0];
    if (v27)
    {
      v29 = v58;
      v30 = v58;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v58);
      LOBYTE(v33) = v33 & 1;
      v34 = v55;
      if ((v26 & 1) != v33)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v54, v30, v33, v31, v32);
        BUG();
      }

      v28 = v56;
    }

    else
    {
      v34 = v55;
      v29 = v58;
    }

    v35 = (v26 & 1) == 0;
    v14 = v51;
    v36 = v52;
    if (v35)
    {
      v28[(v22 >> 6) + 8] |= 1 << v22;
      v37 = v28[6];
      v38 = 16 * v22;
      *(v37 + v38) = v57;
      *(v37 + v38 + 8) = v29;
      *(v28[7] + 8 * v22) = 0;
      v39 = v28[2];
      v24 = __OFADD__(1, v39);
      v40 = v39 + 1;
      if (v24)
      {
        BUG();
      }

      v28[2] = v40;
      v29;
      v28 = v56;
    }

    v41 = v28[7];
    v42 = *(v41 + 8 * v22);
    v24 = __OFADD__(1, v42);
    v43 = v42 + 1;
    if (v24)
    {
      BUG();
    }

    *(v41 + 8 * v22) = v43;
    v29;
    v12 = v34;
    v15 = v36;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v14, &demangling cache variable for type metadata for IndexingIterator<ColumnSlice<String>>);
  v44 = v56;
  v45 = specialized Sequence.max(by:)(v56);
  v47 = v46;
  v44;
  result = 0;
  if (v47 != 2)
  {
    return v45;
  }

  return result;
}

id specialized Collection<>.mostFrequent()(uint64_t a1)
{
  v1 = a1;
  v2 = type metadata accessor for NLLanguage(0);
  v3 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NLLanguage and conformance NLLanguage, type metadata accessor for NLLanguage, &protocol conformance descriptor for NLLanguage);
  v4 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v2, &type metadata for Int, v3);
  v26 = *(a1 + 16);
  if (v26)
  {
    v27 = v2;
    a1;
    v5 = 0;
    do
    {
      v25 = v5;
      v6 = *(v1 + 8 * v5 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4);
      v28 = v6;
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      v10 = (v8 & 1) == 0;
      v11 = __OFADD__(v4[2], v10);
      v12 = v4[2] + v10;
      if (v11)
      {
        BUG();
      }

      v13 = v8;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<NLLanguage, Int>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12))
      {
        v14 = v28;
        v9 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
        LOBYTE(v17) = v17 & 1;
        if ((v13 & 1) != v17)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v27, v12, v17, v15, v16);
          BUG();
        }
      }

      else
      {
        v14 = v28;
      }

      if ((v13 & 1) == 0)
      {
        v4[(v9 >> 6) + 8] |= 1 << v9;
        *(v4[6] + 8 * v9) = v14;
        *(v4[7] + 8 * v9) = 0;
        v18 = v4[2];
        v11 = __OFADD__(1, v18);
        v19 = v18 + 1;
        if (v11)
        {
          BUG();
        }

        v4[2] = v19;
        v14;
      }

      v20 = v4[7];
      v21 = *(v20 + 8 * v9);
      v11 = __OFADD__(1, v21);
      v22 = v21 + 1;
      if (v11)
      {
        BUG();
      }

      v5 = v25 + 1;
      *(v20 + 8 * v9) = v22;

      v1 = a1;
    }

    while (v26 != v25 + 1);
    a1;
  }

  v23 = specialized Sequence.max(by:)(v4);
  v4;
  return v23;
}

uint64_t specialized Sequence.max(by:)(uint64_t a1)
{
  v1 = a1;
  specialized _NativeDictionary.makeIterator()(a1);
  v2 = v30;
  v33 = v28;
  if (!v31)
  {
    v21 = v30 + 1;
    if (__OFADD__(1, v30))
    {
      BUG();
    }

    v22 = (v29 + 64) >> 6;
    if (v21 < v22)
    {
      v23 = *(v28 + 8 * v21);
      if (v23)
      {
        v24 = v30 + 1;
LABEL_32:
        v3 = v1;
        v34 = (v29 + 64) >> 6;
        v36 = v29;
        _BitScanForward64(&v25, v23);
        v5 = v23 & (v23 - 1);
        v6 = v25 | (v24 << 6);
        v2 = v24;
        goto LABEL_3;
      }

      v24 = v30 + 2;
      if (v30 + 2 < v22)
      {
        v23 = *(v28 + 8 * v21 + 8);
        if (v23)
        {
          goto LABEL_32;
        }

        v24 = v30 + 3;
        if (v30 + 3 < v22)
        {
          v23 = *(v28 + 8 * v21 + 16);
          if (v23)
          {
            goto LABEL_32;
          }

          v24 = v30 + 4;
          if (v30 + 4 < v22)
          {
            v23 = *(v28 + 8 * v21 + 24);
            if (v23)
            {
              goto LABEL_32;
            }

            v24 = v30 + 5;
            if (v30 + 5 < v22)
            {
              v23 = *(v28 + 8 * v21 + 32);
              if (v23)
              {
                goto LABEL_32;
              }

              v24 = v30 + 6;
              if (v30 + 6 < v22)
              {
                v23 = *(v28 + 8 * v21 + 40);
                if (v23)
                {
                  goto LABEL_32;
                }

                v24 = v30 + 7;
                if (v30 + 7 < v22)
                {
                  v23 = *(v28 + 8 * v21 + 48);
                  if (!v23)
                  {
                    v26 = v30 + 8;
                    do
                    {
                      v1 = a1;
                      if (v26 >= v22)
                      {
                        goto LABEL_49;
                      }

                      v23 = *(v33 + 8 * v26++);
                    }

                    while (!v23);
                    v24 = v26 - 1;
                    v1 = a1;
                  }

                  goto LABEL_32;
                }
              }
            }
          }
        }
      }
    }

LABEL_49:
    v1;
    outlined release of _NativeDictionary<String?, Int>.Iterator(&v27);
    return 0;
  }

  v3 = a1;
  _BitScanForward64(&v4, v31);
  v5 = v31 & (v31 - 1);
  v6 = v4 | (v30 << 6);
  v36 = v29;
  v34 = (v29 + 64) >> 6;
LABEL_3:
  v7 = *(v27 + 48);
  v32 = v27;
  v8 = *(v27 + 56);
  v35 = *(v7 + 16 * v6);
  v9 = *(v7 + 16 * v6 + 8);
  v10 = *(v8 + 8 * v6);
  v3;
  v37 = v9;
  v9;
  while (1)
  {
    v11 = v2;
    if (!v5)
    {
      v12 = v2 + 1;
      if (__OFADD__(1, v2))
      {
        BUG();
      }

      if (v12 >= v34)
      {
        goto LABEL_27;
      }

      v5 = *(v33 + 8 * v12);
      if (v5)
      {
        ++v2;
        goto LABEL_25;
      }

      v2 += 2;
      if (v11 + 2 >= v34)
      {
        goto LABEL_27;
      }

      v5 = *(v33 + 8 * v12 + 8);
      if (!v5)
      {
        v2 = v11 + 3;
        if (v11 + 3 >= v34)
        {
          goto LABEL_27;
        }

        v5 = *(v33 + 8 * v12 + 16);
        if (!v5)
        {
          v2 = v11 + 4;
          if (v11 + 4 >= v34)
          {
            goto LABEL_27;
          }

          v5 = *(v33 + 8 * v12 + 24);
          if (!v5)
          {
            v2 = v11 + 5;
            if (v11 + 5 >= v34)
            {
              goto LABEL_27;
            }

            v5 = *(v33 + 8 * v12 + 32);
            if (!v5)
            {
              v2 = v11 + 6;
              if (v11 + 6 >= v34)
              {
                goto LABEL_27;
              }

              v5 = *(v33 + 8 * v12 + 40);
              if (!v5)
              {
                v2 = v11 + 7;
                if (v11 + 7 >= v34)
                {
                  goto LABEL_27;
                }

                v5 = *(v33 + 8 * v12 + 48);
                if (!v5)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

LABEL_25:
    _BitScanForward64(&v14, v5);
    v5 &= v5 - 1;
    v15 = v14 | (v2 << 6);
    v16 = *(*(v32 + 56) + 8 * v15);
    if (v10 < v16)
    {
      v17 = *(v32 + 48);
      v18 = 16 * v15;
      v35 = *(v17 + v18);
      v19 = *(v17 + v18 + 8);
      v19;
      v37;
      v37 = v19;
      v10 = v16;
    }
  }

  v13 = v11 + 8;
  while (v13 < v34)
  {
    v5 = *(v33 + 8 * v13++);
    if (v5)
    {
      v2 = v13 - 1;
      goto LABEL_25;
    }
  }

LABEL_27:
  outlined consume of [String : [Double]].Iterator._Variant(v32);
  return v35;
}

{
  v2 = v1;
  v3 = a1;
  specialized _NativeDictionary.makeIterator()(a1);
  v4 = v29;
  v31 = v27;
  if (v30)
  {
    v33 = a1;
    v35 = v1;
    _BitScanForward64(&v5, v30);
    v6 = v30 & (v30 - 1);
    v7 = v5 | (v29 << 6);
    v36 = v28;
    v32 = (v28 + 64) >> 6;
    goto LABEL_3;
  }

  v20 = v29 + 1;
  if (__OFADD__(1, v29))
  {
    BUG();
  }

  v21 = (v28 + 64) >> 6;
  if (v20 >= v21)
  {
    goto LABEL_50;
  }

  v22 = *(v27 + 8 * v20);
  if (!v22)
  {
    v23 = v29 + 2;
    if (v29 + 2 < v21)
    {
      v22 = *(v27 + 8 * v20 + 8);
      if (v22)
      {
        goto LABEL_33;
      }

      v23 = v29 + 3;
      if (v29 + 3 < v21)
      {
        v22 = *(v27 + 8 * v20 + 16);
        if (v22)
        {
          goto LABEL_33;
        }

        v23 = v29 + 4;
        if (v29 + 4 < v21)
        {
          v22 = *(v27 + 8 * v20 + 24);
          if (v22)
          {
            goto LABEL_33;
          }

          v23 = v29 + 5;
          if (v29 + 5 < v21)
          {
            v22 = *(v27 + 8 * v20 + 32);
            if (v22)
            {
              goto LABEL_33;
            }

            v23 = v29 + 6;
            if (v29 + 6 < v21)
            {
              v22 = *(v27 + 8 * v20 + 40);
              if (v22)
              {
                goto LABEL_33;
              }

              v23 = v29 + 7;
              if (v29 + 7 < v21)
              {
                v22 = *(v27 + 8 * v20 + 48);
                if (!v22)
                {
                  v25 = v29 + 8;
                  do
                  {
                    LOBYTE(v3) = a1;
                    if (v25 >= v21)
                    {
                      goto LABEL_50;
                    }

                    v22 = *(v31 + 8 * v25++);
                  }

                  while (!v22);
                  v23 = v25 - 1;
                  v2 = v1;
                  v3 = a1;
                }

                goto LABEL_33;
              }
            }
          }
        }
      }
    }

LABEL_50:
    v3;
    outlined release of _NativeDictionary<String?, Int>.Iterator(&v26);
    return 0;
  }

  v23 = v29 + 1;
LABEL_33:
  v33 = v3;
  v32 = (v28 + 64) >> 6;
  v36 = v28;
  v35 = v2;
  _BitScanForward64(&v24, v22);
  v6 = v22 & (v22 - 1);
  v7 = v24 | (v23 << 6);
  v4 = v23;
LABEL_3:
  v8 = *(v26 + 48);
  v9 = *(v26 + 56);
  v34 = *(v8 + 16 * v7);
  v10 = *(v9 + 8 * v7);
  v37 = *(v8 + 16 * v7 + 8);
  v37;
  v33;
LABEL_4:
  v11 = v10;
  while (1)
  {
    v12 = v4;
    if (!v6)
    {
      break;
    }

LABEL_26:
    _BitScanForward64(&v15, v6);
    v6 &= v6 - 1;
    v16 = v15 | (v4 << 6);
    v10 = *(*(v26 + 56) + 8 * v16);
    if (v11 < v10)
    {
      v17 = *(v26 + 48);
      v18 = 16 * v16;
      v34 = *(v17 + v18);
      v33 = *(v17 + v18 + 8);
      v33;
      v37;
      v37 = v33;
      goto LABEL_4;
    }
  }

  v13 = v4 + 1;
  if (__OFADD__(1, v4))
  {
    BUG();
  }

  if (v13 >= v32)
  {
    goto LABEL_28;
  }

  v6 = *(v31 + 8 * v13);
  if (v6)
  {
    ++v4;
    goto LABEL_26;
  }

  v4 += 2;
  if (v12 + 2 >= v32)
  {
    goto LABEL_28;
  }

  v6 = *(v31 + 8 * v13 + 8);
  if (v6)
  {
    goto LABEL_26;
  }

  v4 = v12 + 3;
  if (v12 + 3 >= v32)
  {
    goto LABEL_28;
  }

  v6 = *(v31 + 8 * v13 + 16);
  if (v6)
  {
    goto LABEL_26;
  }

  v4 = v12 + 4;
  if (v12 + 4 >= v32)
  {
    goto LABEL_28;
  }

  v6 = *(v31 + 8 * v13 + 24);
  if (v6)
  {
    goto LABEL_26;
  }

  v4 = v12 + 5;
  if (v12 + 5 >= v32)
  {
    goto LABEL_28;
  }

  v6 = *(v31 + 8 * v13 + 32);
  if (v6)
  {
    goto LABEL_26;
  }

  v4 = v12 + 6;
  if (v12 + 6 >= v32)
  {
    goto LABEL_28;
  }

  v6 = *(v31 + 8 * v13 + 40);
  if (v6)
  {
    goto LABEL_26;
  }

  v4 = v12 + 7;
  if (v12 + 7 >= v32)
  {
    goto LABEL_28;
  }

  v6 = *(v31 + 8 * v13 + 48);
  if (v6)
  {
    goto LABEL_26;
  }

  v14 = v12 + 8;
  while (v14 < v32)
  {
    v6 = *(v31 + 8 * v14++);
    if (v6)
    {
      v4 = v14 - 1;
      goto LABEL_26;
    }
  }

LABEL_28:
  outlined consume of [String : [Double]].Iterator._Variant(v26);
  return v34;
}

{
  v2 = v1;
  a1;
  v3 = specialized Dictionary.startIndex.getter(a1);
  if (v5)
  {
    BUG();
  }

  v6 = v4;
  if (*(a1 + 36) != v4)
  {
    BUG();
  }

  if (v3 == 1 << *(a1 + 32))
  {
    v7 = v3;
    a1;
    result = outlined consume of [MLDataValue : MLDataValue].Index._Variant(v7, v6, 0);
    *v2 = 0;
    *(v2 + 16) = 255;
    *(v2 + 24) = 0;
    *(v2 + 40) = 0;
  }

  else
  {
    v58 = v2;
    v68 = v3;
    specialized Dictionary.subscript.getter(&v52, v55, v3, v4, 0, a1);
    v69 = v6;
    v9 = v52;
    v74 = v53;
    v70 = a1;
    v10 = v55[0];
    v11 = v55[1];
    v12 = v56;
    v79 = v54;
    LODWORD(v75) = v54;
    outlined copy of MLDataValue(v52, v53, v54);
    v78 = v12;
    outlined copy of MLDataValue(v10, v11, v12);
    v73 = v9;
    outlined consume of MLDataValue(v9, v74, v75);
    v75 = v10;
    v13 = v10;
    v14 = v70;
    v72 = v11;
    outlined consume of MLDataValue(v13, v11, v12);
    v15 = v68;
    v16 = v69;
    *&v60 = COERCE_DOUBLE(specialized _NativeDictionary.index(after:)(v68, v69, 0, v14));
    v71 = v17;
    LOBYTE(v11) = v18;
    outlined consume of [MLDataValue : MLDataValue].Index._Variant(v15, v16, 0);
    if (v11)
    {
      BUG();
    }

    v69 = v14 + 64;
    v19 = v71;
    v20 = v71;
    v21 = v73;
    v22 = v79;
    v23 = v74;
LABEL_7:
    v77 = v78;
    v65 = v72;
    v76 = v22;
    v62 = v23;
    v63 = v21;
    v66 = v75;
    v57 = *&v75;
    v24 = v60;
    while (1)
    {
      v25 = 1 << *(v14 + 32);
      if (v19 != *(v14 + 36))
      {
        BUG();
      }

      v59 = v76;
      if (v24 == v25)
      {
        break;
      }

      if (v24 < 0 || v24 >= v25)
      {
        BUG();
      }

      v26 = 1 << v24;
      v61 = v20;
      if (v19 != v20 || (v27 = v24 >> 6, (v26 & *(v69 + 8 * (v24 >> 6))) == 0))
      {
        BUG();
      }

      v71 = v19;
      v28 = 24 * v24;
      v29 = *(v70 + 48);
      v30 = *(v70 + 56);
      v73 = *(v29 + 24 * v24);
      v31 = v73;
      v74 = *(v29 + 24 * v24 + 8);
      v64 = *&v24;
      v32 = *(v29 + 24 * v24 + 16);
      v75 = *(v30 + v28);
      v72 = *(v30 + v28 + 8);
      v78 = *(v30 + v28 + 16);
      LODWORD(v68) = v78;
      outlined copy of MLDataValue(v75, v72, v78);
      v79 = v32;
      v33 = v31;
      v34 = v74;
      outlined copy of MLDataValue(v33, v74, v32);
      outlined copy of MLDataValue(v75, v72, v68);
      outlined copy of MLDataValue(v73, v34, v32);
      v35 = v34;
      v36 = v75;
      v67 = v32;
      v37 = v32;
      v38 = *&v64;
      outlined consume of MLDataValue(v73, v35, v37);
      outlined consume of MLDataValue(v36, v72, v68);
      v39 = *(v70 + 32);
      if (v38 >= -(-1 << v39))
      {
        BUG();
      }

      if ((v26 & *(v69 + 8 * v27)) == 0)
      {
        BUG();
      }

      v40 = v70;
      if (*(v70 + 36) != v71)
      {
        BUG();
      }

      *&v60 = COERCE_DOUBLE(_HashTable.occupiedBucket(after:)(v38, v69, ~(-1 << v39)));
      v71 = *(v40 + 36);
      outlined consume of [MLDataValue : MLDataValue].Index._Variant(v38, v61, 0);
      v41 = v63;
      v42 = v62;
      v43 = v59;
      outlined copy of MLDataValue(v63, v62, v59);
      v44 = v77;
      outlined copy of MLDataValue(v66, v65, v77);
      outlined consume of MLDataValue(v41, v42, v43);
      v45 = v57;
      if (v44 != 1)
      {
        outlined consume of MLDataValue(v66, v65, v44);
        v45 = 0.0;
      }

      v64 = v45;
      LODWORD(v61) = v44;
      v46 = v73;
      v47 = v74;
      v48 = v67;
      outlined copy of MLDataValue(v73, v74, v67);
      v49 = v68;
      outlined copy of MLDataValue(v75, v72, v68);
      outlined consume of MLDataValue(v46, v47, v48);
      if (v49 == 1)
      {
        v50 = 1;
        v51 = v72;
        if (*&v75 > v64)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v51 = v72;
        outlined consume of MLDataValue(v75, v72, v49);
        if (v64 < 0.0)
        {
LABEL_25:
          outlined consume of MLDataValue(v63, v62, v59);
          outlined consume of MLDataValue(v66, v65, v61);
          v19 = v71;
          v20 = v71;
          v23 = v74;
          v14 = v70;
          v22 = v79;
          v21 = v73;
          goto LABEL_7;
        }

        v50 = v78;
      }

      outlined consume of MLDataValue(v73, v74, v67);
      outlined consume of MLDataValue(v75, v51, v50);
      v24 = v60;
      v19 = v71;
      v20 = v71;
      v14 = v70;
    }

    v14;
    outlined consume of [MLDataValue : MLDataValue].Index._Variant(v24, v20, 0);
    result = v58;
    *v58 = v63;
    *(result + 8) = v62;
    *(result + 16) = v59;
    *(result + 24) = v66;
    *(result + 32) = v65;
    *(result + 40) = v77;
  }

  return result;
}

{
  v1 = a1;
  specialized _NativeDictionary.makeIterator()(a1);
  v2 = v30;
  v33 = v28;
  if (!v31)
  {
    v21 = v30 + 1;
    if (__OFADD__(1, v30))
    {
      BUG();
    }

    v22 = (v29 + 64) >> 6;
    if (v21 < v22)
    {
      v23 = *(v28 + 8 * v21);
      if (v23)
      {
        v24 = v30 + 1;
LABEL_32:
        v3 = v1;
        v34 = (v29 + 64) >> 6;
        v36 = v29;
        _BitScanForward64(&v25, v23);
        v5 = v23 & (v23 - 1);
        v6 = v25 | (v24 << 6);
        v2 = v24;
        goto LABEL_3;
      }

      v24 = v30 + 2;
      if (v30 + 2 < v22)
      {
        v23 = *(v28 + 8 * v21 + 8);
        if (v23)
        {
          goto LABEL_32;
        }

        v24 = v30 + 3;
        if (v30 + 3 < v22)
        {
          v23 = *(v28 + 8 * v21 + 16);
          if (v23)
          {
            goto LABEL_32;
          }

          v24 = v30 + 4;
          if (v30 + 4 < v22)
          {
            v23 = *(v28 + 8 * v21 + 24);
            if (v23)
            {
              goto LABEL_32;
            }

            v24 = v30 + 5;
            if (v30 + 5 < v22)
            {
              v23 = *(v28 + 8 * v21 + 32);
              if (v23)
              {
                goto LABEL_32;
              }

              v24 = v30 + 6;
              if (v30 + 6 < v22)
              {
                v23 = *(v28 + 8 * v21 + 40);
                if (v23)
                {
                  goto LABEL_32;
                }

                v24 = v30 + 7;
                if (v30 + 7 < v22)
                {
                  v23 = *(v28 + 8 * v21 + 48);
                  if (!v23)
                  {
                    v26 = v30 + 8;
                    do
                    {
                      v1 = a1;
                      if (v26 >= v22)
                      {
                        goto LABEL_49;
                      }

                      v23 = *(v33 + 8 * v26++);
                    }

                    while (!v23);
                    v24 = v26 - 1;
                    v1 = a1;
                  }

                  goto LABEL_32;
                }
              }
            }
          }
        }
      }
    }

LABEL_49:
    v1;
    outlined release of _NativeDictionary<String?, Int>.Iterator(&v27);
    return 0;
  }

  v3 = a1;
  _BitScanForward64(&v4, v31);
  v5 = v31 & (v31 - 1);
  v6 = v4 | (v30 << 6);
  v36 = v29;
  v34 = (v29 + 64) >> 6;
LABEL_3:
  v7 = *(v27 + 48);
  v32 = v27;
  v8 = *(v27 + 56);
  v35 = *(v7 + 16 * v6);
  v9 = *(v7 + 16 * v6 + 8);
  v10 = *(v8 + 8 * v6);
  v3;
  v37 = v9;
  v9;
  while (1)
  {
    v11 = v2;
    if (!v5)
    {
      v12 = v2 + 1;
      if (__OFADD__(1, v2))
      {
        BUG();
      }

      if (v12 >= v34)
      {
        goto LABEL_27;
      }

      v5 = *(v33 + 8 * v12);
      if (v5)
      {
        ++v2;
        goto LABEL_25;
      }

      v2 += 2;
      if (v11 + 2 >= v34)
      {
        goto LABEL_27;
      }

      v5 = *(v33 + 8 * v12 + 8);
      if (!v5)
      {
        v2 = v11 + 3;
        if (v11 + 3 >= v34)
        {
          goto LABEL_27;
        }

        v5 = *(v33 + 8 * v12 + 16);
        if (!v5)
        {
          v2 = v11 + 4;
          if (v11 + 4 >= v34)
          {
            goto LABEL_27;
          }

          v5 = *(v33 + 8 * v12 + 24);
          if (!v5)
          {
            v2 = v11 + 5;
            if (v11 + 5 >= v34)
            {
              goto LABEL_27;
            }

            v5 = *(v33 + 8 * v12 + 32);
            if (!v5)
            {
              v2 = v11 + 6;
              if (v11 + 6 >= v34)
              {
                goto LABEL_27;
              }

              v5 = *(v33 + 8 * v12 + 40);
              if (!v5)
              {
                v2 = v11 + 7;
                if (v11 + 7 >= v34)
                {
                  goto LABEL_27;
                }

                v5 = *(v33 + 8 * v12 + 48);
                if (!v5)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

LABEL_25:
    _BitScanForward64(&v14, v5);
    v5 &= v5 - 1;
    v15 = v14 | (v2 << 6);
    v16 = *(*(v32 + 56) + 8 * v15);
    if (v10 < v16)
    {
      v17 = *(v32 + 48);
      v18 = 16 * v15;
      v35 = *(v17 + v18);
      v19 = *(v17 + v18 + 8);
      v19;
      v37;
      v37 = v19;
      v10 = v16;
    }
  }

  v13 = v11 + 8;
  while (v13 < v34)
  {
    v5 = *(v33 + 8 * v13++);
    if (v5)
    {
      v2 = v13 - 1;
      goto LABEL_25;
    }
  }

LABEL_27:
  outlined consume of [String : [Double]].Iterator._Variant(v32);
  return v35;
}

id specialized Sequence.max(by:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  specialized _NativeDictionary.makeIterator()(a1);
  v4 = v29;
  v32 = v27;
  if (v30)
  {
    v34 = v1;
    _BitScanForward64(&v5, v30);
    v6 = v30 & (v30 - 1);
    v7 = v5 | (v29 << 6);
    v35 = v28;
    v33 = (v28 + 64) >> 6;
    goto LABEL_3;
  }

  v20 = v29 + 1;
  if (__OFADD__(1, v29))
  {
    BUG();
  }

  v21 = (v28 + 64) >> 6;
  if (v20 >= v21)
  {
    goto LABEL_50;
  }

  v22 = *(v27 + 8 * v20);
  if (!v22)
  {
    v23 = v29 + 2;
    if (v29 + 2 < v21)
    {
      v22 = *(v27 + 8 * v20 + 8);
      if (v22)
      {
        goto LABEL_33;
      }

      v23 = v29 + 3;
      if (v29 + 3 < v21)
      {
        v22 = *(v27 + 8 * v20 + 16);
        if (v22)
        {
          goto LABEL_33;
        }

        v23 = v29 + 4;
        if (v29 + 4 < v21)
        {
          v22 = *(v27 + 8 * v20 + 24);
          if (v22)
          {
            goto LABEL_33;
          }

          v23 = v29 + 5;
          if (v29 + 5 < v21)
          {
            v22 = *(v27 + 8 * v20 + 32);
            if (v22)
            {
              goto LABEL_33;
            }

            v23 = v29 + 6;
            if (v29 + 6 < v21)
            {
              v22 = *(v27 + 8 * v20 + 40);
              if (v22)
              {
                goto LABEL_33;
              }

              v23 = v29 + 7;
              if (v29 + 7 < v21)
              {
                v22 = *(v27 + 8 * v20 + 48);
                if (!v22)
                {
                  v25 = v29 + 8;
                  do
                  {
                    v3 = a1;
                    if (v25 >= v21)
                    {
                      goto LABEL_50;
                    }

                    v22 = *(v32 + 8 * v25++);
                  }

                  while (!v22);
                  v23 = v25 - 1;
                  v2 = v1;
                  v3 = a1;
                }

                goto LABEL_33;
              }
            }
          }
        }
      }
    }

LABEL_50:
    v3;
    outlined release of _NativeDictionary<String?, Int>.Iterator(&v26);
    return 0;
  }

  v23 = v29 + 1;
LABEL_33:
  LOBYTE(a1) = v3;
  v33 = (v28 + 64) >> 6;
  v35 = v28;
  v34 = v2;
  _BitScanForward64(&v24, v22);
  v6 = v22 & (v22 - 1);
  v7 = v24 | (v23 << 6);
  v4 = v23;
LABEL_3:
  v8 = *(v26 + 56);
  v36 = *(*(v26 + 48) + 8 * v7);
  v9 = *(v8 + 8 * v7);
  a1;
  v10 = v36;
LABEL_4:
  v11 = v9;
  while (1)
  {
    v12 = v4;
    if (!v6)
    {
      break;
    }

LABEL_26:
    _BitScanForward64(&v15, v6);
    v6 &= v6 - 1;
    v16 = v15 | (v4 << 6);
    v9 = *(*(v26 + 56) + 8 * v16);
    if (v11 < v9)
    {
      v17 = *(v26 + 48);
      v36 = v10;
      v31 = *(v17 + 8 * v16);

      v10 = v31;
      goto LABEL_4;
    }
  }

  v13 = v4 + 1;
  if (__OFADD__(1, v4))
  {
    BUG();
  }

  if (v13 >= v33)
  {
    goto LABEL_28;
  }

  v6 = *(v32 + 8 * v13);
  if (v6)
  {
    ++v4;
    goto LABEL_26;
  }

  v4 += 2;
  if (v12 + 2 >= v33)
  {
    goto LABEL_28;
  }

  v6 = *(v32 + 8 * v13 + 8);
  if (v6)
  {
    goto LABEL_26;
  }

  v4 = v12 + 3;
  if (v12 + 3 >= v33)
  {
    goto LABEL_28;
  }

  v6 = *(v32 + 8 * v13 + 16);
  if (v6)
  {
    goto LABEL_26;
  }

  v4 = v12 + 4;
  if (v12 + 4 >= v33)
  {
    goto LABEL_28;
  }

  v6 = *(v32 + 8 * v13 + 24);
  if (v6)
  {
    goto LABEL_26;
  }

  v4 = v12 + 5;
  if (v12 + 5 >= v33)
  {
    goto LABEL_28;
  }

  v6 = *(v32 + 8 * v13 + 32);
  if (v6)
  {
    goto LABEL_26;
  }

  v4 = v12 + 6;
  if (v12 + 6 >= v33)
  {
    goto LABEL_28;
  }

  v6 = *(v32 + 8 * v13 + 40);
  if (v6)
  {
    goto LABEL_26;
  }

  v4 = v12 + 7;
  if (v12 + 7 >= v33)
  {
    goto LABEL_28;
  }

  v6 = *(v32 + 8 * v13 + 48);
  if (v6)
  {
    goto LABEL_26;
  }

  v14 = v12 + 8;
  while (v14 < v33)
  {
    v6 = *(v32 + 8 * v14++);
    if (v6)
    {
      v4 = v14 - 1;
      goto LABEL_26;
    }
  }

LABEL_28:
  v18 = v10;
  outlined consume of [String : [Double]].Iterator._Variant(v26);
  return v18;
}

void *specialized OptionSet<>.init()()
{
  *result = 0;
  return result;
}

{
  return specialized OptionSet<>.init()();
}

uint64_t _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D2LL10startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSf_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v199 = v4;
  v216 = a3;
  v214 = a2;
  v205 = a1;
  v178 = v3;
  v180 = type metadata accessor for DataFrame(0);
  v179 = *(v180 - 8);
  v6 = *(v179 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v210 = v166;
  v188 = type metadata accessor for DataFrame.Row(0);
  v189 = *(v188 - 8);
  v9 = *(v189 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v211 = v166;
  v184 = type metadata accessor for DataFrame.Rows(0);
  v173 = *(v184 - 8);
  v12 = *(v173 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v201 = v166;
  v217 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v213 = *(v217 - 8);
  v15 = *(v213 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v172 = v166;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v221 = v166;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v212 = v166;
  v200 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v190 = *(v200 - 8);
  v22 = *(v190 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v197 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v25 = v197[6];
  v198 = v5;
  v26 = *(v5 + v25);
  v27 = *(v5 + v25 + 8);
  v27;
  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v207 = v166;
  v185 = v28;
  Column.init(name:capacity:)(v26, v27, v214, v28);
  v174 = v26;
  v191 = v26;
  v192 = v27;
  v175 = v27;
  v27;
  v29._countAndFlagsBits = 0x7468676965775FLL;
  v29._object = 0xE700000000000000;
  String.append(_:)(v29);
  v30 = v191;
  v31 = v192;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v29._countAndFlagsBits = v30;
  v33 = v198;
  Column.init(name:capacity:)(v29._countAndFlagsBits, v31, v214, v32);
  v34 = *(v33 + v197[7]);
  v35 = *(v34 + 16);
  v187 = v34;
  v194 = v32;
  if (v35)
  {
    v191 = _swiftEmptyArrayStorage;
    v34;
    v219 = v35;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v36 = v191;
    v37 = (v34 + 40);
    do
    {
      v220 = v37;
      v38 = *(v37 - 1);
      v39 = *v37;
      *v37;
      Column.init(name:capacity:)(v38, v39, v214, v194);
      v191 = v36;
      v40 = v36[2];
      if (v36[3] >> 1 <= v40)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36[3] >= 2uLL, v40 + 1, 1);
        v36 = v191;
      }

      v36[2] = v40 + 1;
      (*(v213 + 32))(v36 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v40, v221, v217);
      v37 = v220 + 2;
      --v219;
    }

    while (v219);
    v187;
    v33 = v198;
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
  }

  v41 = *(v33 + v197[9]);
  v177 = *(v33 + v197[10]);
  v206 = v177 * v41;
  if (!is_mul_ok(v177, v41))
  {
    BUG();
  }

  v42 = v217;
  if (v216 < 0)
  {
    BUG();
  }

  v186 = v41;
  v215 = v36;
  v43 = v216;
  v44 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v44, 136, 7);
  v45 = MersenneTwisterGenerator.init(seed:)(v43);
  v191 = v45;
  if (v214 < 0)
  {
    BUG();
  }

  v202 = v45;
  if (v214)
  {
    if (swift_isUniquelyReferenced_nonNull_native(v215))
    {
      v46 = v214;
      v47 = v215;
    }

    else
    {
      v47 = specialized _ArrayBuffer._consumeAndCreateNew()(v215);
      v46 = v214;
    }

    v48 = v201;
    v49 = 0;
    v215 = v47;
    while (1)
    {
      if (v49 >= v46)
      {
        BUG();
      }

      v50 = __OFADD__(1, v49);
      v51 = v49 + 1;
      if (v50)
      {
        BUG();
      }

      v176 = v51;
      v52 = v198;
      v53 = v48;
      DataFrame.rows.getter();
      v220 = DataFrame.Rows.count.getter();
      v54 = *(v173 + 8);
      v54(v53, v184);
      if (v205 >= v220)
      {
        v42 = v217;
        goto LABEL_112;
      }

      v203 = _swiftEmptyArrayStorage;
      v193 = _swiftEmptyArrayStorage;
      v220 = _sSa9repeating5countSayxGx_SitcfCSaySfG_Tt1g5(_swiftEmptyArrayStorage, v215[2]);
      DataFrame.rows.getter();
      DataFrame.Rows.subscript.getter(v205);
      v54(v53, v184);
      DataFrame.Row.subscript.getter(v174, v175, v185);
      v55 = v218;
      if (!v218)
      {
        BUG();
      }

      v56 = v186;
      v57 = v206;
      if (*(v52 + v197[11]) || (v58 = v218[2], v206 >= v58))
      {
        v61 = 0;
      }

      else
      {
        v50 = __OFSUB__(v58, v206);
        v59 = v58 - v206;
        if (v50)
        {
          BUG();
        }

        if (v59 < 0)
        {
          BUG();
        }

        v60 = specialized RandomNumberGenerator.next<A>(upperBound:)(v59);
        v57 = v206;
        v56 = v186;
        v61 = v60;
        if (v60 < 0)
        {
          BUG();
        }
      }

      v62 = &v61[v57];
      if (__OFADD__(v57, v61))
      {
        BUG();
      }

      v63 = *(v55 + 16);
      if (v63 < v62)
      {
        v62 = *(v55 + 16);
      }

      if (v62 < v61)
      {
        BUG();
      }

      if (v63 < v61)
      {
        BUG();
      }

      if (v56 <= 0)
      {
        BUG();
      }

      v196 = v62;
      __src = v61;
      _s10Algorithms23ChunksOfCountCollectionV5_base06_chunkD0ACyxGx_SitcfCs10ArraySliceVySSG_Tt2g5(v55, v55 + 32, v61, 2 * v62 + 1, v56);
      v64 = specialized ChunksOfCountCollection.count.getter();
      if (v64)
      {
        break;
      }

      outlined release of ChunksOfCountCollection<ArraySlice<String>>(v166);
      v86 = _swiftEmptyArrayStorage;
LABEL_57:
      v86;
      specialized Array.append<A>(contentsOf:)(v86);
      v87 = v86[2];
      v86;
      v88 = _mm_cvtsi32_si128(0x3F800000u);
      v89 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v87, *v88.i32);
      specialized Array.append<A>(contentsOf:)(v89);
      v90 = alloca(24);
      v91 = alloca(32);
      v167 = v211;
      v92 = v187;
      v187;
      v93 = v199;
      v94 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SaySfGs5NeverOTg5Tm(partial apply for specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:), v166, v92, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
      v199 = v93;
      v92;
      v219 = v94;
      v216 = v94[2];
      if (v216)
      {
        v95 = v220;
        if (!swift_isUniquelyReferenced_nonNull_native(v220))
        {
          v95 = specialized _ArrayBuffer._consumeAndCreateNew()(v95);
        }

        v220 = v95;
        v96 = v95 + 4;
        v97 = 0;
        v98 = __src;
        do
        {
          v99 = *(v219 + 8 * v97 + 32);
          v100 = *(v99 + 16);
          v101 = v196;
          if (v100 < v196)
          {
            v101 = *(v99 + 16);
          }

          if (v101 < v98)
          {
            BUG();
          }

          if (v100 < v98)
          {
            BUG();
          }

          v221 = v220[2];
          swift_bridgeObjectRetain_n(v99, 2);
          if (v97 >= v221)
          {
            BUG();
          }

          ++v97;
          v102 = 2 * v101 + 1;
          v103 = __src;
          specialized Array.append<A>(contentsOf:)(v99, v99 + 32, __src, v102);
          v99;
          v98 = v103;
          ++v96;
        }

        while (v216 != v97);
      }

      v104 = v217;
      v105 = v206;
      v219;
      v106 = v220;
      v107 = v220[2];
      if (!v107)
      {
        BUG();
      }

      v108 = v220[4];
      v109 = v105 <= *(v108 + 16);
      v208 = v105 - *(v108 + 16);
      if (!v109)
      {
        v209 = v107;
        v110 = _sSf7exactlySfSgx_tcSzRzlufCSi_Tt0g5(0, v88);
        if (!swift_isUniquelyReferenced_nonNull_native(v106))
        {
          v220 = specialized _ArrayBuffer._consumeAndCreateNew()(v106);
        }

        v111 = v209;
        v112 = v208;
        v113 = (v208 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v114 = 0;
        v181 = _mm_xor_si128(_mm_shuffle_epi32((v208 - 1), 68), xmmword_33D700);
        do
        {
          if (v114 == v111)
          {
            BUG();
          }

          if ((v110 & 0x100000000) != 0)
          {
            BUG();
          }

          v115 = v220;
          if (v112 < 0)
          {
            BUG();
          }

          v221 = v114;
          v195 = (v114 + 1);
          v116 = static Array._allocateBufferUninitialized(minimumCapacity:)(v112, &type metadata for Float);
          v117 = _mm_load_si128(&v181);
          si128 = _mm_load_si128(&xmmword_33D700);
          v119 = v112;
          v120 = v116;
          *(v116 + 16) = v119;
          v121 = (v116 + 32);
          v122 = 0;
          v123 = _mm_cvtepi8_epi64(770);
          v124 = _mm_cvtepi8_epi64(256);
          do
          {
            v125 = _mm_shuffle_epi32(v122, 68);
            v126 = _mm_xor_si128(_mm_or_si128(v125, v124), si128);
            v127 = _mm_cmpgt_epi32(v126, v117);
            v128 = _mm_or_si128(_mm_shuffle_epi32(v127, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v126, v117), 245), v127));
            if (~_mm_cvtsi128_si32(v128))
            {
              *(v120 + 4 * v122 + 32) = v110;
            }

            if (_mm_extract_epi8(_mm_xor_si128(v128, -1), 8))
            {
              *(v120 + 4 * v122 + 36) = v110;
            }

            v129 = _mm_xor_si128(_mm_or_si128(v125, v123), si128);
            v130 = _mm_cmpgt_epi32(v129, v117);
            v131 = _mm_xor_si128(_mm_or_si128(_mm_shuffle_epi32(v130, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v129, v117), 245), v130)), -1);
            if (_mm_extract_epi8(v131, 0))
            {
              *(v120 + 4 * v122 + 40) = v110;
            }

            if (_mm_extract_epi8(v131, 8))
            {
              *(v120 + 4 * v122 + 44) = v110;
            }

            v122 += 4;
          }

          while (v113 != v122);
          if (v221 >= v115[2])
          {
            BUG();
          }

          v132 = *(v120 + 16);
          v133 = v115[v221 + 4];
          v134 = v115;
          v135 = *(v133 + 16);
          v50 = __OFADD__(v132, v135);
          v136 = v132 + v135;
          if (v50)
          {
            BUG();
          }

          v196 = *(v133 + 16);
          v219 = v132;
          __src = v121;
          v216 = v133;
          v220 = v134;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v133);
          v138 = v216;
          v220[v221 + 4] = v216;
          if (!isUniquelyReferenced_nonNull_native || v138[3] >> 1 < v136)
          {
            if (v196 > v136)
            {
              v136 = v196;
            }

            v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v136, 1, v138);
            v220[v221 + 4] = v138;
          }

          if (*(v120 + 16))
          {
            v139 = v138[2];
            if ((v138[3] >> 1) - v139 < v219)
            {
              BUG();
            }

            v140 = v138;
            memcpy(v138 + 4 * v139 + 32, __src, 4 * v219);
            if (v219)
            {
              if (__OFADD__(v140[2], v219))
              {
                BUG();
              }

              v140[2] += v219;
            }
          }

          else
          {
            v140 = v138;
            if (v219)
            {
              BUG();
            }
          }

          v120;
          v220[v221 + 4] = v140;
          v111 = v209;
          v114 = v195;
          v112 = v208;
        }

        while (v195 != v209);
        v104 = v217;
      }

      v141 = v104;
      v142 = v203;
      v143 = v177 - v203[2];
      if (v177 > v203[2])
      {
        v144 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(0, 0xE000000000000000, v177 - v203[2]);
        specialized Array.append<A>(contentsOf:)(v144);
        v145 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v143, 0.0);
        specialized Array.append<A>(contentsOf:)(v145);
        v142 = v203;
      }

      v219 = v142;
      v218 = v142;
      Column.append(_:)(&v218, v200);
      v146 = v193;
      v218 = v193;
      v147 = v141;
      Column.append(_:)(&v218, v141);
      v148 = v220;
      v221 = v220[2];
      if (v221)
      {
        v216 = v146;
        v220;
        v149 = 0;
        v150 = v215;
        do
        {
          v151 = v148[v149 + 4];
          v218 = v151;
          v152 = *(v150 + 16);
          v151;
          if (v149 >= v152)
          {
            BUG();
          }

          v153 = (v149 + 1);
          v154 = v150 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v149;
          Column.append(_:)(&v218, v217);
          v151;
          v149 = v153;
          v148 = v220;
        }

        while (v221 != v153);
        v216;
        v148;
        v42 = v217;
      }

      else
      {
        v146;
        v42 = v147;
      }

      ++v205;
      (*(v189 + 8))(v211, v188);
      v219;
      v148;
      v46 = v214;
      v49 = v176;
      v48 = v201;
      if (v176 == v214)
      {
        goto LABEL_112;
      }
    }

    v65 = v64;
    v218 = _swiftEmptyArrayStorage;
    v66 = 0;
    if (v64 > 0)
    {
      v66 = v64;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66, 0);
    if (v65 < 0 || (v67 = v167, v68 = v170, v170 < v167))
    {
      BUG();
    }

    v208 = v166[0];
    v209 = v166[1];
    v69 = v218;
    v70 = v168 >> 1;
    v181.i64[0] = v168 & 1;
    v71 = 0;
    v72 = v167;
    v182 = v65;
    v171 = v167;
    v183 = v168 >> 1;
    while (1)
    {
      v50 = __OFADD__(1, v71);
      v73 = v71 + 1;
      if (v50)
      {
        BUG();
      }

      if (v72 == v70)
      {
        BUG();
      }

      if (v72 > v70)
      {
        BUG();
      }

      if (v72 < v67)
      {
        BUG();
      }

      v74 = v70 - v68;
      if (v70 < v68)
      {
        BUG();
      }

      if (v68 < v67)
      {
        BUG();
      }

      if (v68 < 0)
      {
        BUG();
      }

      v195 = v73;
      v221 = v69;
      v216 = v68;
      v219 = v181.i64[0] + 2 * v68;
      v75 = v208;
      swift_unknownObjectRetain(v208);
      v76 = specialized Collection<>.mostFrequent()(v75, v209, v72, v219);
      if (!v77)
      {
        break;
      }

      v78 = v76;
      v79 = v77;
      outlined release of ChunksOfCountCollection<ArraySlice<String>>(v166);
      v69 = v221;
      v218 = v221;
      v80 = *(v221 + 16);
      v81 = *(v221 + 24);
      v82 = v80 + 1;
      if (v81 >> 1 <= v80)
      {
        v221 = v80 + 1;
        v219 = v78;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v81 >= 2, v80 + 1, 1);
        v82 = v221;
        v78 = v219;
        v69 = v218;
      }

      v69[2] = v82;
      v83 = 2 * v80;
      v69[v83 + 4] = v78;
      v69[v83 + 5] = v79;
      if (v169 <= 0)
      {
        v84 = v74 <= 0;
        v85 = v169 < v74;
      }

      else
      {
        v84 = v74 >= 0;
        v85 = v74 < v169;
      }

      v70 = v183;
      v68 = v183;
      v72 = v216;
      if (!v85 || !v84)
      {
        v68 = v216 + v169;
        if (__OFADD__(v216, v169))
        {
          BUG();
        }
      }

      if (v68 < v216)
      {
        BUG();
      }

      v71 = v195;
      v67 = v171;
      if (v195 == v182)
      {
        v86 = v69;
        outlined release of ChunksOfCountCollection<ArraySlice<String>>(v166);
        goto LABEL_57;
      }
    }

    v155 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v155, 0, 0);
    *v156 = 0xD000000000000038;
    *(v156 + 8) = "Unknown feature type: " + 0x8000000000000000;
    *(v156 + 16) = 0;
    *(v156 + 32) = 0;
    *(v156 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v155);
    outlined release of ChunksOfCountCollection<ArraySlice<String>>(v166);

    outlined release of ChunksOfCountCollection<ArraySlice<String>>(v166);

    (*(v213 + 8))(v212, v217);
    (*(v190 + 8))(v207, v200);
    (*(v189 + 8))(v211, v188);
    v215;
    return v220;
  }

  else
  {
LABEL_112:
    DataFrame.init()();
    DataFrame.append<A>(column:)(v207, v185);
    DataFrame.append<A>(column:)(v212, v194);
    v158 = v215[2];
    if (v158)
    {
      v159 = v215 + ((*(v213 + 80) + 32) & ~*(v213 + 80));
      v221 = *(v213 + 16);
      v219 = *(v213 + 72);
      v215;
      v160 = v217;
      do
      {
        v220 = v158;
        v161 = v172;
        (v221)(v172, v159, v160);
        DataFrame.append<A>(column:)(v161, v194);
        v162 = *(v213 + 8);
        v163 = v161;
        v164 = v220;
        v162(v163, v160);
        v159 += v219;
        v158 = (v164 - 1);
      }

      while (v158);

      v165 = v215;
      v215;
      v42 = v217;
    }

    else
    {
      v165 = v215;

      v162 = *(v213 + 8);
    }

    v162(v212, v42);
    (*(v190 + 8))(v207, v200);
    (*(v179 + 32))(v178, v210, v180);
    return v165;
  }
}

uint64_t _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D2LL10startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSd_Tt3g5(int64_t a1, uint64_t a2, uint64_t a3)
{
  v204 = v4;
  v222 = a3;
  v219 = a2;
  v211 = a1;
  v178 = v3;
  v180 = type metadata accessor for DataFrame(0);
  v179 = *(v180 - 8);
  v6 = *(v179 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v205 = &v165;
  v189 = type metadata accessor for DataFrame.Row(0);
  v190 = *(v189 - 8);
  v9 = *(v190 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v216 = &v165;
  v184 = type metadata accessor for DataFrame.Rows(0);
  v173 = *(v184 - 8);
  v12 = *(v173 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v188 = &v165;
  v196 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v218 = *(v196 - 8);
  v15 = *(v218 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v172 = &v165;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v221 = &v165;
  v206 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v191 = *(v206 - 8);
  v20 = *(v191 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v217 = &v165;
  v207 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v192 = *(v207 - 8);
  v23 = *(v192 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v202 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v26 = v202[6];
  v203 = v5;
  v27 = *(v5 + v26);
  v28 = *(v5 + v26 + 8);
  v28;
  v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v213 = &v165;
  v185 = v29;
  Column.init(name:capacity:)(v27, v28, v219, v29);
  v174 = v27;
  v193 = v27;
  v194 = v28;
  v175 = v28;
  v28;
  v30._countAndFlagsBits = 0x7468676965775FLL;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31 = v193;
  v32 = v194;
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v30._countAndFlagsBits = v31;
  v34 = v203;
  v181 = v33;
  Column.init(name:capacity:)(v30._countAndFlagsBits, v32, v219, v33);
  v35 = *(v34 + v202[7]);
  v36 = *(v35 + 16);
  v187 = v35;
  if (v36)
  {
    v193 = _swiftEmptyArrayStorage;
    v35;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
    v37 = v35;
    v38 = v193;
    v39 = (v37 + 40);
    do
    {
      v223 = v39;
      v224 = v36;
      v40 = *(v39 - 1);
      v41 = *v39;
      *v39;
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
      Column.init(name:capacity:)(v40, v41, v219, v42);
      v193 = v38;
      v43 = v38[2];
      if (v38[3] >> 1 <= v43)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38[3] >= 2uLL, v43 + 1, 1);
        v38 = v193;
      }

      v38[2] = v43 + 1;
      (*(v218 + 32))(v38 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v43, v221, v196);
      v39 = v223 + 2;
      v36 = v224 - 1;
    }

    while (v224 != 1);
    v187;
    v34 = v203;
    v44 = v38;
  }

  else
  {
    v44 = _swiftEmptyArrayStorage;
  }

  v45 = *(v34 + v202[9]);
  v177 = *(v34 + v202[10]);
  v46 = v205;
  v47 = v222;
  if (!is_mul_ok(v177, v45))
  {
    BUG();
  }

  v48 = v218;
  if (v222 < 0)
  {
    BUG();
  }

  v212 = v177 * v45;
  v186 = v45;
  v221 = v44;
  v49 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v49, 136, 7);
  v50 = MersenneTwisterGenerator.init(seed:)(v47);
  v193 = v50;
  if (v219 < 0)
  {
    BUG();
  }

  v208 = v50;
  if (v219)
  {
    if (swift_isUniquelyReferenced_nonNull_native(v221))
    {
      v51 = v219;
      v52 = v221;
    }

    else
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew()(v221);
      v51 = v219;
    }

    v53 = 0;
    v54 = v188;
    v221 = v52;
    while (1)
    {
      if (v53 >= v51)
      {
        BUG();
      }

      v55 = __OFADD__(1, v53);
      v56 = v53 + 1;
      if (v55)
      {
        BUG();
      }

      v176 = v56;
      v57 = v203;
      v58 = v54;
      DataFrame.rows.getter();
      v224 = DataFrame.Rows.count.getter();
      v59 = *(v173 + 8);
      v59(v58, v184);
      if (v211 >= v224)
      {
        v46 = v205;
        v48 = v218;
        goto LABEL_109;
      }

      v209 = _swiftEmptyArrayStorage;
      v195 = _swiftEmptyArrayStorage;
      v223 = _sSa9repeating5countSayxGx_SitcfCSaySdG_Tt1g5(_swiftEmptyArrayStorage, v221[2]);
      DataFrame.rows.getter();
      DataFrame.Rows.subscript.getter(v211);
      v59(v58, v184);
      DataFrame.Row.subscript.getter(v174, v175, v185);
      v60 = v220;
      if (!v220)
      {
        BUG();
      }

      v61 = v186;
      v62 = v212;
      if (*(v57 + v202[11]) || (v63 = v220[2], v212 >= v63))
      {
        v66 = 0;
      }

      else
      {
        v55 = __OFSUB__(v63, v212);
        v64 = v63 - v212;
        if (v55)
        {
          BUG();
        }

        if (v64 < 0)
        {
          BUG();
        }

        v65 = specialized RandomNumberGenerator.next<A>(upperBound:)(v64);
        v62 = v212;
        v61 = v186;
        v66 = v65;
        if (v65 < 0)
        {
          BUG();
        }
      }

      v67 = v62 + v66;
      if (__OFADD__(v62, v66))
      {
        BUG();
      }

      v68 = *(v60 + 16);
      if (v68 < v67)
      {
        v67 = *(v60 + 16);
      }

      if (v67 < v66)
      {
        BUG();
      }

      if (v68 < v66)
      {
        BUG();
      }

      if (v61 <= 0)
      {
        BUG();
      }

      __src = v67;
      v210 = v66;
      _s10Algorithms23ChunksOfCountCollectionV5_base06_chunkD0ACyxGx_SitcfCs10ArraySliceVySSG_Tt2g5(v60, v60 + 32, v66, 2 * v67 + 1, v61);
      v69 = specialized ChunksOfCountCollection.count.getter();
      if (v69)
      {
        break;
      }

      outlined release of ChunksOfCountCollection<ArraySlice<String>>(&v166);
      v92 = _swiftEmptyArrayStorage;
LABEL_57:
      v92;
      specialized Array.append<A>(contentsOf:)(v92);
      v93 = v92[2];
      v92;
      v94 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v93, 1.0);
      specialized Array.append<A>(contentsOf:)(v94);
      v95 = alloca(24);
      v96 = alloca(32);
      v167 = v216;
      v97 = v187;
      v187;
      v98 = v204;
      v99 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SaySfGs5NeverOTg5Tm(partial apply for specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:), &v165, v97, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
      v204 = v98;
      v97;
      v222 = v99;
      v214 = v99[2];
      if (v214)
      {
        v100 = v223;
        if (!swift_isUniquelyReferenced_nonNull_native(v223))
        {
          v100 = specialized _ArrayBuffer._consumeAndCreateNew()(v100);
        }

        v223 = v100;
        v101 = v100 + 4;
        v102 = 0;
        v103 = v210;
        do
        {
          v104 = *(v222 + 8 * v102 + 32);
          v105 = *(v104 + 16);
          v106 = __src;
          if (v105 < __src)
          {
            v106 = *(v104 + 16);
          }

          if (v106 < v103)
          {
            BUG();
          }

          if (v105 < v103)
          {
            BUG();
          }

          v224 = v223[2];
          swift_bridgeObjectRetain_n(v104, 2);
          if (v102 >= v224)
          {
            BUG();
          }

          ++v102;
          v107 = 2 * v106 + 1;
          v108 = v210;
          specialized Array.append<A>(contentsOf:)(v104, v104 + 32, v210, v107);
          v104;
          v103 = v108;
          ++v101;
        }

        while (v214 != v102);
      }

      v109 = v212;
      v110 = v223;
      v222;
      v111 = *(v110 + 16);
      if (!v111)
      {
        BUG();
      }

      v112 = *(v110 + 32);
      v113 = v109 <= *(v112 + 16);
      v114 = v109 - *(v112 + 16);
      if (!v113)
      {
        v200 = _sSd7exactlySdSgx_tcSzRzlufCSi_Tt0g5(0);
        LOBYTE(v199) = v115;
        if (swift_isUniquelyReferenced_nonNull_native(v110))
        {
          v223 = v110;
        }

        else
        {
          v223 = specialized _ArrayBuffer._consumeAndCreateNew()(v110);
        }

        v116 = (v114 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v117 = 0;
        v201 = v111;
        v215 = v114;
        v183 = _mm_xor_si128(_mm_shuffle_epi32((v114 - 1), 68), xmmword_33D700);
        do
        {
          if (v117 == v111)
          {
            BUG();
          }

          if (v199)
          {
            BUG();
          }

          v118 = v223;
          if (v114 < 0)
          {
            BUG();
          }

          v224 = v117;
          v210 = v117 + 1;
          v119 = static Array._allocateBufferUninitialized(minimumCapacity:)(v114, &type metadata for Double);
          v120 = _mm_load_si128(&v183);
          si128 = _mm_load_si128(&xmmword_33D700);
          v122 = v119;
          *(v119 + 16) = v114;
          v123 = (v119 + 32);
          v124 = 0;
          v125 = _mm_cvtepi8_epi64(256);
          v126 = v200;
          do
          {
            v127 = _mm_xor_si128(_mm_or_si128(_mm_shuffle_epi32(v124, 68), v125), si128);
            v128 = _mm_cmpgt_epi32(v127, v120);
            v129 = _mm_or_si128(_mm_shuffle_epi32(v128, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v127, v120), 245), v128));
            if (~_mm_cvtsi128_si32(v129))
            {
              *(v122 + 8 * v124 + 32) = v126;
            }

            if (_mm_extract_epi8(_mm_xor_si128(v129, -1), 8))
            {
              *(v122 + 8 * v124 + 40) = v126;
            }

            v124 += 2;
          }

          while (v116 != v124);
          if (v224 >= v118[2])
          {
            BUG();
          }

          v130 = *(v122 + 16);
          v131 = v118[v224 + 4];
          v132 = v118;
          v133 = v131[2];
          v55 = __OFADD__(v130, v133);
          v134 = v130 + v133;
          if (v55)
          {
            BUG();
          }

          v198 = v131[2];
          v222 = v130;
          __src = v123;
          v214 = v131;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v131);
          v136 = v214;
          v132[v224 + 4] = v214;
          if (!isUniquelyReferenced_nonNull_native || v136[3] >> 1 < v134)
          {
            if (v198 > v134)
            {
              v134 = v198;
            }

            v136 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v134, 1, v136);
            v223[v224 + 4] = v136;
          }

          v137 = v215;
          if (*(v122 + 16))
          {
            v138 = v136[2];
            if ((v136[3] >> 1) - v138 < v222)
            {
              BUG();
            }

            v139 = v136;
            memcpy(&v136[v138 + 4], __src, 8 * v222);
            if (v222)
            {
              if (__OFADD__(v139[2], v222))
              {
                BUG();
              }

              v139[2] += v222;
            }
          }

          else
          {
            v139 = v136;
            if (v222)
            {
              BUG();
            }
          }

          v122;
          v223[v224 + 4] = v139;
          v111 = v201;
          v117 = v210;
          v114 = v137;
        }

        while (v210 != v201);
        v110 = v223;
      }

      v140 = v209;
      v141 = v177 - v209[2];
      if (v177 > v209[2])
      {
        v142 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(0, 0xE000000000000000, v177 - v209[2]);
        specialized Array.append<A>(contentsOf:)(v142);
        v143 = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v141, 0.0);
        specialized Array.append<A>(contentsOf:)(v143);
        v140 = v209;
      }

      v223 = v140;
      v220 = v140;
      Column.append(_:)(&v220, v207);
      v144 = v195;
      v220 = v195;
      Column.append(_:)(&v220, v206);
      v224 = *(v110 + 16);
      if (v224)
      {
        v222 = v144;
        v110;
        v145 = 0;
        do
        {
          v146 = v110;
          v147 = *(v110 + 8 * v145 + 32);
          v220 = v147;
          v148 = v221[2];
          v147;
          if (v145 >= v148)
          {
            BUG();
          }

          v149 = v145 + 1;
          v150 = v221 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v145;
          Column.append(_:)(&v220, v196);
          v147;
          v145 = v149;
          v110 = v146;
        }

        while (v224 != v149);
        v222;
        v151 = v146;
      }

      else
      {
        v151 = v144;
      }

      v151;
      ++v211;
      (*(v190 + 8))(v216, v189);
      v223;
      v110;
      v51 = v219;
      v53 = v176;
      v46 = v205;
      v48 = v218;
      v54 = v188;
      if (v176 == v219)
      {
        goto LABEL_109;
      }
    }

    v70 = v69;
    v220 = _swiftEmptyArrayStorage;
    v71 = 0;
    if (v69 > 0)
    {
      v71 = v69;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71, 0);
    if (v70 < 0 || (v72 = v168, v73 = v171, v171 < v168))
    {
      BUG();
    }

    v198 = v166;
    v199 = v167;
    v74 = v220;
    v75 = v169 >> 1;
    v200 = v169 & 1;
    v76 = 0;
    v77 = v168;
    v183.i64[0] = v70;
    v201 = v168;
    v215 = v169 >> 1;
    while (1)
    {
      v55 = __OFADD__(1, v76);
      v78 = (v76 + 1);
      if (v55)
      {
        BUG();
      }

      if (v77 == v75)
      {
        BUG();
      }

      if (v77 > v75)
      {
        BUG();
      }

      if (v77 < v72)
      {
        BUG();
      }

      v79 = v75 - v73;
      if (v75 < v73)
      {
        BUG();
      }

      if (v73 < v72)
      {
        BUG();
      }

      if (v73 < 0)
      {
        BUG();
      }

      v214 = v78;
      v224 = v74;
      v222 = v73;
      v80 = v200 + 2 * v73;
      v81 = v198;
      swift_unknownObjectRetain(v198);
      v82 = specialized Collection<>.mostFrequent()(v81, v199, v77, v80);
      if (!v83)
      {
        break;
      }

      v84 = v82;
      v85 = v83;
      outlined release of ChunksOfCountCollection<ArraySlice<String>>(&v166);
      v74 = v224;
      v220 = v224;
      v86 = *(v224 + 16);
      v87 = *(v224 + 24);
      v88 = v86 + 1;
      if (v87 >> 1 <= v86)
      {
        v224 = v86 + 1;
        v182 = v84;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v87 >= 2, v86 + 1, 1);
        v88 = v224;
        v84 = v182;
        v74 = v220;
      }

      v74[2] = v88;
      v89 = 2 * v86;
      v74[v89 + 4] = v84;
      v74[v89 + 5] = v85;
      if (v170 <= 0)
      {
        v90 = v79 <= 0;
        v91 = v170 < v79;
      }

      else
      {
        v90 = v79 >= 0;
        v91 = v79 < v170;
      }

      v75 = v215;
      v73 = v215;
      v77 = v222;
      if (!v91 || !v90)
      {
        v73 = v222 + v170;
        if (__OFADD__(v222, v170))
        {
          BUG();
        }
      }

      if (v73 < v222)
      {
        BUG();
      }

      v76 = v214;
      v72 = v201;
      if (v214 == v183.i64[0])
      {
        v92 = v74;
        outlined release of ChunksOfCountCollection<ArraySlice<String>>(&v166);
        goto LABEL_57;
      }
    }

    v152 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v152, 0, 0);
    *v153 = 0xD000000000000038;
    *(v153 + 8) = "Unknown feature type: " + 0x8000000000000000;
    *(v153 + 16) = 0;
    *(v153 + 32) = 0;
    *(v153 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v152);
    outlined release of ChunksOfCountCollection<ArraySlice<String>>(&v166);

    outlined release of ChunksOfCountCollection<ArraySlice<String>>(&v166);

    (*(v191 + 8))(v217, v206);
    (*(v192 + 8))(v213, v207);
    (*(v190 + 8))(v216, v189);
    v221;
    return v223;
  }

  else
  {
LABEL_109:
    DataFrame.init()();
    DataFrame.append<A>(column:)(v213, v185);
    DataFrame.append<A>(column:)(v217, v181);
    v155 = v221[2];
    if (v155)
    {
      v156 = v48;
      v157 = v221 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v223 = *(v156 + 16);
      v158 = v46;
      v222 = *(v156 + 72);
      v221;
      v159 = v196;
      do
      {
        v224 = v155;
        v160 = v172;
        (v223)(v172, v157, v159);
        v161 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
        DataFrame.append<A>(column:)(v160, v161);
        v162 = v160;
        v163 = v224;
        (*(v218 + 8))(v162, v159);
        v157 += v222;
        v155 = v163 - 1;
      }

      while (v155);

      v164 = v221;
      v221;
      v46 = v158;
    }

    else
    {
      v164 = v221;
    }

    (*(v191 + 8))(v217, v206);
    (*(v192 + 8))(v213, v207);
    (*(v179 + 32))(v178, v46, v180);
    return v164;
  }
}

uint64_t specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledName(a4);
  DataFrame.Row.subscript.getter(a1, a2, v4);
  result = v6;
  if (!v6)
  {
    BUG();
  }

  return result;
}

uint64_t _s8CreateML20MLActivityClassifierV11DataBatcherV17generateNextBatch33_B38BBA08EC64E268F7AB3D1A029502D2LL8rowCount4seed_07TabularE00E5FrameVSi_SixmtKSjRzlFSd_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a3;
  v5 = v4;
  v16[2] = v3;
  v17 = type metadata accessor for DataFrame.Rows(0);
  v18 = *(v17 - 8);
  v6 = *(v18 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(type metadata accessor for MLActivityClassifier.DataBatcher(0) + 48);
  v11 = *(v4 + v9);
  v12 = a1 + v11;
  if (__OFADD__(a1, v11))
  {
    BUG();
  }

  v21 = v9;
  v19 = a1;
  v20 = v11;
  DataFrame.rows.getter(0, a2, v10, v11);
  v13 = DataFrame.Rows.count.getter();
  (*(v18 + 8))(v16, v17);
  if (v13 < v12)
  {
    v12 = v13;
  }

  *(v5 + v21) = v12;
  v14 = timestampSeed()();
  return (v16[0])(v20, v19, v14);
}

uint64_t sub_22140()
{
  v1 = *(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 41);
  v4 = *(v1 + 64);
  outlined consume of Result<_DataTable, Error>(*(v0 + 16), *(v0 + 24));
  outlined consume of Result<_DataTable, Error>(*(v0 + 32), *(v0 + 40));
  v5 = v3 + v0;
  v6 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v3 + v0, v6) == 1)
  {
    v7 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v3 + v0, v7))
    {
      case 0u:
        v15 = type metadata accessor for URL(0);
        v17 = *(*(v15 - 8) + 8);
        v17(v3 + v0, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v17(v5 + *(v16 + 48), v15);
        *(v5 + *(v16 + 64) + 8);
        v10 = v16;
        goto LABEL_8;
      case 1u:
      case 2u:
        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 8))(v3 + v0, v8);
        return swift_deallocObject(v0, v4 + v3, v2 | 7);
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v5, *(v5 + 8));
        *(v5 + 24);
        *(v5 + 40);
        v9 = *(v5 + 56);
        goto LABEL_11;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v5, *(v5 + 8));
        *(v5 + 24);
        v9 = *(v5 + 40);
        goto LABEL_11;
      case 5u:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 8))(v3 + v0, v11);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v5 + *(v18 + 48) + 8);
        *(v5 + *(v18 + 64) + 8);
        v10 = v18;
LABEL_8:
        v12 = *(v10 + 80);
        goto LABEL_10;
      case 6u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 8))(v3 + v0, v13);
        v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *(v5 + *(v19 + 48) + 8);
        v12 = *(v19 + 64);
LABEL_10:
        v9 = *(v5 + v12 + 8);
LABEL_11:
        v9;
        break;
      default:
        return swift_deallocObject(v0, v4 + v3, v2 | 7);
    }
  }

  return swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t partial apply for closure #1 in MLHandPoseClassifier.init(trainingData:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v9 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v10 = *(v1 + 40);
  v6 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 41));
  v7 = swift_task_alloc(112);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLHandPoseClassifier.init(trainingData:parameters:)(a1, v4, v9, v5, v10, v6);
}

uint64_t _sSd7exactlySdSgx_tcSzRzlufCSi_Tt0g5(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 9.223372036854776e18)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = a1;
    if ((~*&v1 & 0x7FF0000000000000) == 0)
    {
      BUG();
    }

    if (v1 <= -9.223372036854778e18)
    {
      BUG();
    }

    if (v1 != a1)
    {
      *&result = 0.0;
    }
  }

  return result;
}

unint64_t _sSf7exactlySfSgx_tcSzRzlufCSi_Tt0g5(uint64_t a1, __m128i a2)
{
  *a2.i32 = a1;
  if (a1 >= 9.223372e18)
  {
    v4 = 1;
    v3 = 0;
  }

  else
  {
    v2 = _mm_cvtsi128_si32(a2);
    if ((~v2 & 0x7F800000) == 0)
    {
      BUG();
    }

    if (*a2.i32 <= -9.2233731e18)
    {
      BUG();
    }

    v3 = 0;
    v4 = *a2.i32 != a1;
    if (*a2.i32 == a1)
    {
      v3 = v2;
    }
  }

  return v3 | (v4 << 32);
}

void *specialized _NativeDictionary.makeIterator()(uint64_t a1)
{
  return specialized _NativeDictionary.makeIterator()(a1);
}

{
  v2 = -(-1 << *(a1 + 32));
  v3 = ~(-1 << v2);
  if (v2 >= 64)
  {
    v3 = -1;
  }

  v4 = *(a1 + 64) & v3;
  v5 = ~(-1 << *(a1 + 32));
  *result = a1;
  result[1] = a1 + 64;
  result[2] = v5;
  result[3] = 0;
  result[4] = v4;
  return result;
}

{
  return specialized _NativeDictionary.makeIterator()(a1);
}

{
  return specialized _NativeDictionary.makeIterator()(a1);
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v3 = swift_allocObject(v2, 8 * v1 + 32, 7);
  v4 = (_swift_stdlib_malloc_size(v3) - 32);
  v3[2] = v1;
  v3[3] = 2 * (v4 / 8);
  v8 = specialized Sequence._copySequenceContents(initializing:)(v7, v3 + 4, v1, a1);
  v5 = v7[0];
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  a1;
  outlined consume of [String : [Double]].Iterator._Variant(v5);
  if (v8 != v1)
  {
    BUG();
  }

  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v3 = swift_allocObject(v2, 16 * v1 + 32, 7);
  v4 = (_swift_stdlib_malloc_size(v3) - 32);
  v3[2] = v1;
  v3[3] = 2 * (v4 / 16);
  v8 = specialized Sequence._copySequenceContents(initializing:)(v7, v3 + 4, v1, a1);
  v5 = v7[0];
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  a1;
  outlined consume of [String : [Double]].Iterator._Variant(v5);
  if (v8 != v1)
  {
    BUG();
  }

  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(key: MLDataValue, value: MLDataValue)>);
  v3 = swift_allocObject(v2, 48 * v1 + 32, 7);
  v4 = (_swift_stdlib_malloc_size(v3) - 32);
  v3[2] = v1;
  v3[3] = 2 * (v4 / 48);
  a1;
  v11 = specialized Sequence._copySequenceContents(initializing:)(v9, (v3 + 4), v1, a1);
  v5 = v9[1];
  v6 = v9[2];
  v7 = v10;
  v9[0];
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v5, v6, v7);
  if (v11 != v1)
  {
    BUG();
  }

  return v3;
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1);
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v3 = swift_allocObject(v2, 16 * v1 + 32, 7);
  v4 = (_swift_stdlib_malloc_size(v3) - 32);
  v3[2] = v1;
  v3[3] = 2 * (v4 / 16);
  v8 = specialized Sequence._copySequenceContents(initializing:)(v7, v3 + 4, v1, a1);
  v5 = v7[0];
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  a1;
  outlined consume of [String : [Double]].Iterator._Variant(v5);
  if (v8 != v1)
  {
    BUG();
  }

  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLRecommender.Identifier>);
  v3 = swift_allocObject(v2, 24 * v1 + 32, 7);
  v4 = (_swift_stdlib_malloc_size(v3) - 32);
  v3[2] = v1;
  v3[3] = 2 * (v4 / 24);
  v8 = specialized Sequence._copySequenceContents(initializing:)(v7, (v3 + 4), v1, a1);
  v5 = v7[0];
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  a1;
  outlined consume of [String : [Double]].Iterator._Variant(v5);
  if (v8 != v1)
  {
    BUG();
  }

  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<[String]>);
  v3 = swift_allocObject(v2, 8 * v1 + 32, 7);
  v4 = (_swift_stdlib_malloc_size(v3) - 32);
  v3[2] = v1;
  v3[3] = 2 * (v4 / 8);
  v8 = specialized Sequence._copySequenceContents(initializing:)(v7, v3 + 4, v1, a1);
  v5 = v7[0];
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  a1;
  outlined consume of [String : [Double]].Iterator._Variant(v5);
  if (v8 != v1)
  {
    BUG();
  }

  return v3;
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1);
}

uint64_t *specialized _copyCollectionToContiguousArray<A>(_:)()
{
  v0 = CMLDictionary.size.getter();
  v1 = specialized RandomAccessCollection<>.distance(from:to:)(0, v0);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  if (v1 <= 0)
  {
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(CMLFeatureValue, CMLFeatureValue)>);
    v4 = swift_allocObject(v3, 16 * v2 + 32, 7);
    v5 = (_swift_stdlib_malloc_size(v4) - 32);
    v4[2] = v2;
    v4[3] = 2 * (v5 / 16);
  }

  v6 = specialized Sequence._copySequenceContents(initializing:)(v8, v4 + 4, v2);

  if (v6 != v2)
  {
    BUG();
  }

  return v4;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, double a2)
{
  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  if (v3 <= 0)
  {
    v6 = _swiftEmptyArrayStorage;
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLDataValue>);
    v6 = swift_allocObject(v5, 24 * v4 + 32, 7);
    v7 = (_swift_stdlib_malloc_size(v6) - 32);
    v6[2] = v4;
    v6[3] = 2 * (v7 / 24);
  }

  v8 = specialized Sequence._copySequenceContents(initializing:)(v10, v6 + 4, v4, a1, a2);

  if (v8 != v4)
  {
    BUG();
  }

  return v6;
}

{

  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  if (v5 < 0)
  {
    BUG();
  }

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

  if (v3 < 0 || v7 < v3)
  {
    BUG();
  }

  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLDataValue>);
  v9 = swift_allocObject(v8, 24 * v3 + 32, 7);
  v10 = (_swift_stdlib_malloc_size(v9) - 32);
  v9[2] = v3;
  v9[3] = 2 * (v10 / 24);

  v11 = specialized Sequence._copySequenceContents(initializing:)(v13, (v9 + 4), v3, a1, a2);

  if (v11 != v3)
  {
    BUG();
  }

  return v9;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, char a2)
{
  v10 = a1;
  v11 = a2 & 1;
  outlined copy of Result<_DataTable, Error>(a1, a2);
  v2 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a1, a2 & 1);
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2, a1, a2 & 1);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v12 = a2 & 1;
  if (v3 <= 0)
  {
    v6 = _swiftEmptyArrayStorage;
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLDataTable.Row>);
    v6 = swift_allocObject(v5, 24 * v4 + 32, 7);
    v7 = (_swift_stdlib_malloc_size(v6) - 32);
    v6[2] = v4;
    v6[3] = 2 * (v7 / 24);
  }

  outlined copy of Result<_DataTable, Error>(a1, a2);
  v8 = specialized Sequence._copySequenceContents(initializing:)(&v10, (v6 + 4), v4, a1, v12);
  outlined consume of Result<_DataTable, Error>(v10, v11);
  if (v8 != v4)
  {
    BUG();
  }

  return v6;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

  if (v7 < 0)
  {
    BUG();
  }

  v8 = CMLSequence.size.getter();
  v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v8);
  a3;
  if (v5 < 0 || v9 < v5)
  {
    BUG();
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValue)>);
  v11 = swift_allocObject(v10, 40 * v5 + 32, 7);
  v12 = (_swift_stdlib_malloc_size(v11) - 32);
  v11[2] = v5;
  v11[3] = 2 * (v12 / 40);
  v16 = (v11 + 4);

  a2;

  v16 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v5, a1, a2, a3);
  v13 = v15[1];

  v13;

  if (v16 != v5)
  {
    BUG();
  }

  return v11;
}

uint64_t *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{

  v1 = CMLSequence.size.getter();
  v2 = specialized RandomAccessCollection<>.distance(from:to:)(0, v1);

  v3 = CMLSequence.size.getter();
  v4 = specialized RandomAccessCollection<>.distance(from:to:)(0, v3);

  if (v4 < 0)
  {
    BUG();
  }

  v5 = CMLSequence.size.getter();
  v6 = specialized RandomAccessCollection<>.distance(from:to:)(0, v5);

  if (v2 < 0 || v6 < v2)
  {
    BUG();
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v8 = swift_allocObject(v7, 16 * v2 + 32, 7);
  v9 = (_swift_stdlib_malloc_size(v8) - 32);
  v8[2] = v2;
  v8[3] = 2 * (v9 / 16);

  v10 = specialized Sequence._copySequenceContents(initializing:)(v12, v8 + 4, v2, a1);

  if (v10 != v2)
  {
    BUG();
  }

  return v8;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)()
{
  v0 = CMLSequence.size.getter();
  v1 = specialized RandomAccessCollection<>.distance(from:to:)(0, v0);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  if (v1 <= 0)
  {
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
    v4 = swift_allocObject(v3, 8 * v2 + 32, 7);
    v5 = (_swift_stdlib_malloc_size(v4) - 32);
    v4[2] = v2;
    v4[3] = 2 * (v5 / 8) + 1;
  }

  v6 = specialized Sequence._copySequenceContents(initializing:)(v8, (v4 + 4), v2);

  if (v6 != v2)
  {
    BUG();
  }

  return v4;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v2 <= 0)
  {
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v4 = swift_allocObject(v3, 8 * v2 + 32, 7);
    v5 = (_swift_stdlib_malloc_size(v4) - 32);
    v4[2] = v2;
    v4[3] = 2 * (v5 / 8);
  }

  if (specialized Sequence._copySequenceContents(initializing:)(v7, v4 + 4, v2, a1, a2) != v2)
  {
    BUG();
  }

  return v4;
}

uint64_t sub_23046()
{
  v1 = v0;
  v2 = type metadata accessor for MLHandActionClassifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = ~*(v3 + 80) & (v4 + 16);
  v43 = *(v3 + 64);
  *(v1 + v5);
  v6 = *(v1 + v5 + 8);

  v46 = v2;
  v45 = v1 + v5;
  v7 = v1 + v5 + *(v2 + 28);
  v8 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v7, v8) == 1)
  {
    v9 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v7, v9))
    {
      case 0u:
        v52 = type metadata accessor for URL(0);
        v49 = v5;
        v12 = *(*(v52 - 8) + 8);
        v12(v7, v52);
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v12(v7 + v13[12], v52);
        v5 = v49;
        *(v7 + v13[16] + 8);
        *(v7 + v13[20] + 8);
        *(v7 + v13[24] + 8);
        v14 = v13[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 8))(v7, v10);
        break;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v7, *(v7 + 8));
        *(v7 + 24);
        *(v7 + 40);
        v11 = *(v7 + 56);
        goto LABEL_10;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v7, *(v7 + 8));
        *(v7 + 24);
        *(v7 + 40);
        *(v7 + 56);
        v11 = *(v7 + 72);
        goto LABEL_10;
      case 5u:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 8))(v7, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v7 + v16[12] + 8);
        *(v7 + v16[16] + 8);
        v14 = v16[20];
        goto LABEL_9;
      case 6u:
        v17 = type metadata accessor for DataFrame(0);
        (*(*(v17 - 8) + 8))(v7, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v7 + v18[12] + 8);
        *(v7 + v18[16] + 8);
        *(v7 + v18[20] + 8);
        v14 = v18[24];
LABEL_9:
        v11 = *(v7 + v14 + 8);
LABEL_10:
        v11;
        break;
      default:
        break;
    }
  }

  v19 = (v45 + *(v46 + 32));
  v20 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v19, v20);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v19;
      break;
    case 1:
      v44 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v50 = v5;
      v24 = &v19[*(v44 + 20)];
      v47 = v4;
      v25 = type metadata accessor for DataFrame(0);
      v53 = v1;
      v26 = *(*(v25 - 8) + 8);
      v27 = v24;
      v5 = v50;
      v26(v27, v25);
      v28 = v25;
      v4 = v47;
      v26(&v19[*(v44 + 24)], v28);
      v1 = v53;
      break;
    case 0:
      v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v19, v22) == 1)
      {
        v23 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v23 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v29 = __swift_instantiateConcreteTypeFromMangledName(v23);
      (*(*(v29 - 8) + 8))(v19, v29);
      break;
  }

  v30 = (*(v46 + 36) + v45);
  v31 = swift_getEnumCaseMultiPayload(v30, v20);
  switch(v31)
  {
    case 2:
      *v30;
      break;
    case 1:
      v34 = v30;
      v35 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v51 = v5;
      v36 = &v34[*(v35 + 20)];
      v48 = v4;
      v37 = type metadata accessor for DataFrame(0);
      v54 = v1;
      v38 = *(*(v37 - 8) + 8);
      v39 = v36;
      v5 = v51;
      v38(v39, v37);
      v40 = v37;
      v4 = v48;
      v38(&v34[*(v35 + 24)], v40);
      v1 = v54;
      break;
    case 0:
      v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v30, v32) == 1)
      {
        v33 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v33 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v41 = __swift_instantiateConcreteTypeFromMangledName(v33);
      (*(*(v41 - 8) + 8))(v30, v41);
      break;
  }

  return swift_deallocObject(v1, v43 + v5, v4 | 7);
}

uint64_t partial apply for closure #1 in MLHandPoseClassifier.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for MLHandActionClassifier(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLHandPoseClassifier.init(checkpoint:)(a1, v4);
}

uint64_t *initializeBufferWithCopyOfBuffer for MLHandPoseClassifier(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v13 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    a1[1] = a2[1];
    v5 = a2[2];
    a1[2] = v5;
    v146 = type metadata accessor for MLHandActionClassifier(0);
    v6 = v146[7];
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = v4;
    v10 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    v9;

    v5;
    if (swift_getEnumCaseMultiPayload(v8, v10) == 1)
    {
      v11 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v11);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v153 = v11;
          v20 = type metadata accessor for URL(0);
          v159 = v10;
          v21 = *(*(v20 - 8) + 16);
          v21(v7, v8, v20);
          v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v21(&v7[v22[12]], &v8[v22[12]], v20);
          v23 = v22[16];
          *&v7[v23] = *&v8[v23];
          v24 = *&v8[v23 + 8];
          *&v7[v23 + 8] = v24;
          v25 = v22[20];
          *&v7[v25] = *&v8[v25];
          v26 = *&v8[v25 + 8];
          *&v7[v25 + 8] = v26;
          v27 = v22[24];
          *&v7[v27] = *&v8[v27];
          v28 = *&v8[v27 + 8];
          *&v7[v27 + 8] = v28;
          v29 = v22[28];
          *&v7[v29] = *&v8[v29];
          v30 = *&v8[v29 + 8];
          *&v7[v29 + 8] = v30;
          v24;
          LOBYTE(v24) = v26;
          v11 = v153;
          v24;
          v31 = v28;
          v10 = v159;
          goto LABEL_12;
        case 1u:
        case 2u:
          v12 = type metadata accessor for URL(0);
          (*(*(v12 - 8) + 16))(v7, v8, v12);
          goto LABEL_16;
        case 3u:
          v154 = v11;
          v32 = *v8;
          v33 = v8[8];
          outlined copy of Result<_DataTable, Error>(*v8, v33);
          *v7 = v32;
          v7[8] = v33;
          *(v7 + 2) = *(v8 + 2);
          v34 = *(v8 + 3);
          *(v7 + 3) = v34;
          *(v7 + 4) = *(v8 + 4);
          v35 = *(v8 + 5);
          *(v7 + 5) = v35;
          *(v7 + 6) = *(v8 + 6);
          v30 = *(v8 + 7);
          *(v7 + 7) = v30;
          goto LABEL_11;
        case 4u:
          v152 = v11;
          v14 = *v8;
          v15 = v8[8];
          outlined copy of Result<_DataTable, Error>(*v8, v15);
          *v7 = v14;
          v7[8] = v15;
          *(v7 + 2) = *(v8 + 2);
          v16 = *(v8 + 3);
          *(v7 + 3) = v16;
          *(v7 + 4) = *(v8 + 4);
          v17 = *(v8 + 5);
          *(v7 + 5) = v17;
          *(v7 + 6) = *(v8 + 6);
          v18 = *(v8 + 7);
          *(v7 + 7) = v18;
          *(v7 + 8) = *(v8 + 8);
          v158 = v10;
          v19 = *(v8 + 9);
          *(v7 + 9) = v19;
          goto LABEL_14;
        case 5u:
          v36 = type metadata accessor for DataFrame(0);
          (*(*(v36 - 8) + 16))(v7, v8, v36);
          v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v38 = v37[12];
          *&v7[v38] = *&v8[v38];
          v34 = *&v8[v38 + 8];
          *&v7[v38 + 8] = v34;
          v39 = v37[16];
          *&v7[v39] = *&v8[v39];
          v154 = v11;
          v35 = *&v8[v39 + 8];
          *&v7[v39 + 8] = v35;
          v40 = v37[20];
          *&v7[v40] = *&v8[v40];
          v30 = *&v8[v40 + 8];
          *&v7[v40 + 8] = v30;
LABEL_11:
          v34;
          v31 = v35;
          v11 = v154;
LABEL_12:
          v31;
          v41 = v30;
          break;
        case 6u:
          v42 = type metadata accessor for DataFrame(0);
          (*(*(v42 - 8) + 16))(v7, v8, v42);
          v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v44 = v43[12];
          *&v7[v44] = *&v8[v44];
          v16 = *&v8[v44 + 8];
          *&v7[v44 + 8] = v16;
          v45 = v43[16];
          *&v7[v45] = *&v8[v45];
          v152 = v11;
          v17 = *&v8[v45 + 8];
          *&v7[v45 + 8] = v17;
          v46 = v43[20];
          *&v7[v46] = *&v8[v46];
          v18 = *&v8[v46 + 8];
          *&v7[v46 + 8] = v18;
          v47 = v43[24];
          *&v7[v47] = *&v8[v47];
          v158 = v10;
          v19 = *&v8[v47 + 8];
          *&v7[v47 + 8] = v19;
LABEL_14:
          v16;
          v48 = v17;
          v11 = v152;
          v48;
          v18;
          v41 = v19;
          v10 = v158;
          break;
      }

      v41;
LABEL_16:
      v13 = a1;
      swift_storeEnumTagMultiPayload(v7, v11, EnumCaseMultiPayload);
      swift_storeEnumTagMultiPayload(v7, v10, 1);
    }

    else
    {
      memcpy(v7, v8, *(*(v10 - 8) + 64));
      v13 = a1;
    }

    v49 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    *&v7[v49[5]] = *&v8[v49[5]];
    *&v7[v49[6]] = *&v8[v49[6]];
    *&v7[v49[7]] = *&v8[v49[7]];
    *&v7[v49[8]] = *&v8[v49[8]];
    *&v7[v49[10]] = *&v8[v49[10]];
    v50 = v146[8];
    v51 = (v13 + v50);
    v52 = a2 + v50;
    v151 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v53 = swift_getEnumCaseMultiPayload(v52, v151);
    if (v53 == 2)
    {
      v58 = *v52;
      swift_errorRetain(*v52);
      *v51 = v58;
    }

    else if (v53 == 1)
    {
      *v51 = *v52;
      v160 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v54 = *(v160 + 20);
      v141 = v51 + v54;
      v55 = type metadata accessor for DataFrame(0);
      v155 = v51;
      v56 = *(*(v55 - 8) + 16);
      v57 = &v52[v54];
      v13 = a1;
      v56(v141, v57, v55);
      v56(&v155[*(v160 + 24)], &v52[*(v160 + 24)], v55);
      v51 = v155;
    }

    else
    {
      v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v60 = swift_getEnumCaseMultiPayload(v52, v59);
      v61 = v60 == 1;
      v62 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v60 == 1)
      {
        v62 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v63 = __swift_instantiateConcreteTypeFromMangledName(v62);
      (*(*(v63 - 8) + 16))(v51, v52, v63);
      swift_storeEnumTagMultiPayload(v51, v59, v61);
      v13 = a1;
    }

    swift_storeEnumTagMultiPayload(v51, v151, v53);
    v64 = v146[9];
    v65 = v13 + v64;
    v66 = a2 + v64;
    v67 = swift_getEnumCaseMultiPayload(v66, v151);
    if (v67 == 2)
    {
      v72 = *v66;
      swift_errorRetain(*v66);
      *v65 = v72;
    }

    else if (v67 == 1)
    {
      *v65 = *v66;
      v147 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v68 = *(v147 + 20);
      v161 = &v65[v68];
      v69 = type metadata accessor for DataFrame(0);
      v70 = *(*(v69 - 8) + 16);
      v71 = &v66[v68];
      v13 = a1;
      v70(v161, v71, v69);
      v70(&v65[*(v147 + 24)], &v66[*(v147 + 24)], v69);
      v67 = 1;
    }

    else
    {
      v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v74 = swift_getEnumCaseMultiPayload(v66, v73);
      v75 = v74 == 1;
      v76 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v74 == 1)
      {
        v76 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v77 = __swift_instantiateConcreteTypeFromMangledName(v76);
      (*(*(v77 - 8) + 16))(v65, v66, v77);
      swift_storeEnumTagMultiPayload(v65, v73, v75);
      v13 = a1;
    }

    swift_storeEnumTagMultiPayload(v65, v151, v67);
    v78 = a3;
    v79 = a3[5];
    v80 = *(a2 + v79);
    *(v13 + v79) = v80;
    v81 = a3[6];
    v82 = v13 + v81;
    v83 = a2 + v81;
    v84 = v80;
    v85 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    v84;
    if (swift_getEnumCaseMultiPayload(v83, v85) == 1)
    {
      v148 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
      v156 = swift_getEnumCaseMultiPayload(v83, v148);
      switch(v156)
      {
        case 0u:
          v162 = v85;
          v91 = type metadata accessor for URL(0);
          v92 = *(*(v91 - 8) + 16);
          v92(v82, v83, v91);
          v93 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v92(&v82[v93[12]], &v83[v93[12]], v91);
          v78 = a3;
          v94 = v93[16];
          *&v82[v94] = *&v83[v94];
          v89 = *&v83[v94 + 8];
          *&v82[v94 + 8] = v89;
          v95 = v93[20];
          v13 = a1;
          *&v82[v95] = *&v83[v95];
          goto LABEL_41;
        case 1u:
        case 2u:
          v86 = type metadata accessor for URL(0);
          (*(*(v86 - 8) + 16))(v82, v83, v86);
          goto LABEL_44;
        case 3u:
          v163 = v85;
          v96 = *v83;
          v97 = v83[8];
          outlined copy of Result<_DataTable, Error>(*v83, v97);
          *v82 = v96;
          v82[8] = v97;
          *(v82 + 2) = *(v83 + 2);
          v98 = *(v83 + 3);
          *(v82 + 3) = v98;
          *(v82 + 4) = *(v83 + 4);
          v99 = *(v83 + 5);
          *(v82 + 5) = v99;
          *(v82 + 6) = *(v83 + 6);
          v100 = *(v83 + 7);
          *(v82 + 7) = v100;
          goto LABEL_39;
        case 4u:
          v162 = v85;
          v87 = *v83;
          v88 = v83[8];
          outlined copy of Result<_DataTable, Error>(*v83, v88);
          *v82 = v87;
          v82[8] = v88;
          v13 = a1;
          *(v82 + 2) = *(v83 + 2);
          v89 = *(v83 + 3);
          *(v82 + 3) = v89;
          *(v82 + 4) = *(v83 + 4);
          v90 = *(v83 + 5);
          *(v82 + 5) = v90;
          goto LABEL_42;
        case 5u:
          v101 = type metadata accessor for DataFrame(0);
          (*(*(v101 - 8) + 16))(v82, v83, v101);
          v102 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v103 = v102[12];
          *&v82[v103] = *&v83[v103];
          v98 = *&v83[v103 + 8];
          *&v82[v103 + 8] = v98;
          v104 = v102[16];
          *&v82[v104] = *&v83[v104];
          v163 = v85;
          v99 = *&v83[v104 + 8];
          *&v82[v104 + 8] = v99;
          v105 = v102[20];
          *&v82[v105] = *&v83[v105];
          v100 = *&v83[v105 + 8];
          *&v82[v105 + 8] = v100;
LABEL_39:
          v98;
          v106 = v99;
          v85 = v163;
          v106;
          v107 = v100;
          v13 = a1;
          break;
        case 6u:
          v108 = type metadata accessor for DataFrame(0);
          (*(*(v108 - 8) + 16))(v82, v83, v108);
          v109 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          v110 = *(v109 + 48);
          *&v82[v110] = *&v83[v110];
          v89 = *&v83[v110 + 8];
          *&v82[v110 + 8] = v89;
          v95 = *(v109 + 64);
          *&v82[v95] = *&v83[v95];
          v162 = v85;
LABEL_41:
          v90 = *&v83[v95 + 8];
          *&v82[v95 + 8] = v90;
LABEL_42:
          v89;
          v107 = v90;
          v85 = v162;
          break;
      }

      v107;
LABEL_44:
      swift_storeEnumTagMultiPayload(v82, v148, v156);
      swift_storeEnumTagMultiPayload(v82, v85, 1);
    }

    else
    {
      memcpy(v82, v83, *(*(v85 - 8) + 64));
    }

    v111 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
    *&v82[v111[5]] = *&v83[v111[5]];
    *&v82[v111[6]] = *&v83[v111[6]];
    *&v82[v111[7]] = *&v83[v111[7]];
    v112 = v78[7];
    v113 = v13 + v112;
    v114 = a2 + v112;
    v115 = swift_getEnumCaseMultiPayload(v114, v151);
    if (v115 == 2)
    {
      v120 = *v114;
      swift_errorRetain(*v114);
      *v113 = v120;
    }

    else if (v115 == 1)
    {
      *v113 = *v114;
      v149 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v116 = *(v149 + 20);
      v164 = &v113[v116];
      v117 = type metadata accessor for DataFrame(0);
      v118 = *(*(v117 - 8) + 16);
      v119 = &v114[v116];
      v13 = a1;
      v118(v164, v119, v117);
      v118(&v113[*(v149 + 24)], &v114[*(v149 + 24)], v117);
      v115 = 1;
    }

    else
    {
      v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v122 = swift_getEnumCaseMultiPayload(v114, v121);
      v123 = v122 == 1;
      v124 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v122 == 1)
      {
        v124 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v125 = __swift_instantiateConcreteTypeFromMangledName(v124);
      (*(*(v125 - 8) + 16))(v113, v114, v125);
      swift_storeEnumTagMultiPayload(v113, v121, v123);
      v13 = a1;
    }

    swift_storeEnumTagMultiPayload(v113, v151, v115);
    v126 = a3[8];
    v127 = v13 + v126;
    v128 = a2 + v126;
    v129 = swift_getEnumCaseMultiPayload(a2 + v126, v151);
    if (v129 == 2)
    {
      v134 = *v128;
      swift_errorRetain(*v128);
      *v127 = v134;
      swift_storeEnumTagMultiPayload(v127, v151, 2);
    }

    else if (v129 == 1)
    {
      *v127 = *v128;
      v145 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v130 = *(v145 + 20);
      v143 = &v127[v130];
      v131 = type metadata accessor for DataFrame(0);
      v132 = *(*(v131 - 8) + 16);
      v133 = &v128[v130];
      v13 = a1;
      v132(v143, v133, v131);
      v132(&v127[*(v145 + 24)], &v128[*(v145 + 24)], v131);
      swift_storeEnumTagMultiPayload(v127, v151, 1);
    }

    else
    {
      v135 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v136 = swift_getEnumCaseMultiPayload(v128, v135);
      v137 = v136 == 1;
      v138 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v136 == 1)
      {
        v138 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v139 = __swift_instantiateConcreteTypeFromMangledName(v138);
      (*(*(v139 - 8) + 16))(v127, v128, v139);
      swift_storeEnumTagMultiPayload(v127, v135, v137);
      swift_storeEnumTagMultiPayload(v127, v151, 0);
      return a1;
    }
  }

  return v13;
}