char *assignWithCopy for MLActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLImageClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    v5 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
    {
      v6 = type metadata accessor for MLActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v37 = type metadata accessor for URL(0);
          v44 = *(*(v37 - 8) + 16);
          v44(__dst, __src, v37);
          v40 = v6;
          v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v44(&__dst[v12[12]], &__src[v12[12]], v37);
          v13 = v12[16];
          *&__dst[v13] = *&__src[v13];
          v14 = *&__src[v13 + 8];
          *&__dst[v13 + 8] = v14;
          v15 = v12[20];
          *&__dst[v15] = *&__src[v15];
          v45 = *&__src[v15 + 8];
          *&__dst[v15 + 8] = v45;
          v16 = v12[24];
          *&__dst[v16] = *&__src[v16];
          v38 = *&__src[v16 + 8];
          *&__dst[v16 + 8] = v38;
          v17 = v12[28];
          *&__dst[v17] = *&__src[v17];
          goto LABEL_11;
        case 1u:
        case 2u:
          v7 = type metadata accessor for URL(0);
          (*(*(v7 - 8) + 16))(__dst, __src, v7);
          goto LABEL_14;
        case 3u:
          v41 = v6;
          v18 = *__src;
          v46 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v46);
          *__dst = v18;
          __dst[8] = v46;
          *(__dst + 2) = *(__src + 2);
          v19 = *(__src + 3);
          *(__dst + 3) = v19;
          *(__dst + 4) = *(__src + 4);
          v20 = *(__src + 5);
          *(__dst + 5) = v20;
          *(__dst + 6) = *(__src + 6);
          v47 = *(__src + 7);
          *(__dst + 7) = v47;
          v19;
          LOBYTE(v19) = v20;
          v6 = v41;
          v19;
          v11 = v47;
          goto LABEL_13;
        case 4u:
          v39 = v6;
          v8 = *__src;
          v42 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v42);
          *__dst = v8;
          __dst[8] = v42;
          *(__dst + 2) = *(__src + 2);
          v9 = *(__src + 3);
          *(__dst + 3) = v9;
          *(__dst + 4) = *(__src + 4);
          v10 = *(__src + 5);
          *(__dst + 5) = v10;
          *(__dst + 6) = *(__src + 6);
          v43 = *(__src + 7);
          *(__dst + 7) = v43;
          *(__dst + 8) = *(__src + 8);
          v36 = *(__src + 9);
          *(__dst + 9) = v36;
          v9;
          LOBYTE(v9) = v10;
          v6 = v39;
          v9;
          v43;
          v11 = v36;
          goto LABEL_13;
        case 5u:
          v21 = type metadata accessor for DataFrame(0);
          (*(*(v21 - 8) + 16))(__dst, __src, v21);
          v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v23 = v22[12];
          *&__dst[v23] = *&__src[v23];
          v24 = *&__src[v23 + 8];
          *&__dst[v23 + 8] = v24;
          v25 = v22[16];
          *&__dst[v25] = *&__src[v25];
          v48 = *&__src[v25 + 8];
          *&__dst[v25 + 8] = v48;
          v26 = v22[20];
          *&__dst[v26] = *&__src[v26];
          v40 = v6;
          v27 = *&__src[v26 + 8];
          *&__dst[v26 + 8] = v27;
          v24;
          v28 = v48;
          goto LABEL_12;
        case 6u:
          v29 = type metadata accessor for DataFrame(0);
          (*(*(v29 - 8) + 16))(__dst, __src, v29);
          v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v31 = v30[12];
          *&__dst[v31] = *&__src[v31];
          v14 = *&__src[v31 + 8];
          *&__dst[v31 + 8] = v14;
          v32 = v30[16];
          *&__dst[v32] = *&__src[v32];
          v45 = *&__src[v32 + 8];
          *&__dst[v32 + 8] = v45;
          v33 = v30[20];
          *&__dst[v33] = *&__src[v33];
          v38 = *&__src[v33 + 8];
          *&__dst[v33 + 8] = v38;
          v17 = v30[24];
          *&__dst[v17] = *&__src[v17];
          v40 = v6;
LABEL_11:
          v27 = *&__src[v17 + 8];
          *&__dst[v17 + 8] = v27;
          v14;
          v45;
          v28 = v38;
LABEL_12:
          v28;
          v11 = v27;
          v6 = v40;
LABEL_13:
          v11;
LABEL_14:
          swift_storeEnumTagMultiPayload(__dst, v6, EnumCaseMultiPayload);
          swift_storeEnumTagMultiPayload(__dst, v5, 1);
          break;
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

char *initializeWithTake for MLActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v5 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
  {
    v6 = type metadata accessor for MLActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v6))
    {
      case 0u:
        v19 = type metadata accessor for URL(0);
        v20 = *(*(v19 - 8) + 32);
        v20(__dst, __src, v19);
        v18 = v6;
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v20(&__dst[v7[12]], &__src[v7[12]], v19);
        *&__dst[v7[16]] = *&__src[v7[16]];
        *&__dst[v7[20]] = *&__src[v7[20]];
        *&__dst[v7[24]] = *&__src[v7[24]];
        *&__dst[v7[28]] = *&__src[v7[28]];
        v8 = v18;
        v9 = 0;
        goto LABEL_11;
      case 1u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v17 = 1;
        goto LABEL_10;
      case 2u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 32))(__dst, __src, v10);
        v17 = 2;
        goto LABEL_10;
      case 5u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 32))(__dst, __src, v12);
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v13[12]] = *&__src[v13[12]];
        *&__dst[v13[16]] = *&__src[v13[16]];
        *&__dst[v13[20]] = *&__src[v13[20]];
        v17 = 5;
        goto LABEL_10;
      case 6u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 32))(__dst, __src, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&__dst[v15[12]] = *&__src[v15[12]];
        *&__dst[v15[16]] = *&__src[v15[16]];
        *&__dst[v15[20]] = *&__src[v15[20]];
        *&__dst[v15[24]] = *&__src[v15[24]];
        v17 = 6;
LABEL_10:
        v9 = v17;
        v8 = v6;
LABEL_11:
        swift_storeEnumTagMultiPayload(__dst, v8, v9);
        break;
      default:
        memcpy(__dst, __src, *(*(v6 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(__dst, v5, 1);
  }

  else
  {
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

char *assignWithTake for MLActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLImageClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    v5 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
    {
      v6 = type metadata accessor for MLActionClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v6))
      {
        case 0u:
          v19 = type metadata accessor for URL(0);
          v20 = *(*(v19 - 8) + 32);
          v20(__dst, __src, v19);
          v18 = v6;
          v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v20(&__dst[v7[12]], &__src[v7[12]], v19);
          *&__dst[v7[16]] = *&__src[v7[16]];
          *&__dst[v7[20]] = *&__src[v7[20]];
          *&__dst[v7[24]] = *&__src[v7[24]];
          *&__dst[v7[28]] = *&__src[v7[28]];
          v8 = v18;
          v9 = 0;
          goto LABEL_12;
        case 1u:
          v11 = type metadata accessor for URL(0);
          (*(*(v11 - 8) + 32))(__dst, __src, v11);
          v17 = 1;
          goto LABEL_11;
        case 2u:
          v10 = type metadata accessor for URL(0);
          (*(*(v10 - 8) + 32))(__dst, __src, v10);
          v17 = 2;
          goto LABEL_11;
        case 5u:
          v12 = type metadata accessor for DataFrame(0);
          (*(*(v12 - 8) + 32))(__dst, __src, v12);
          v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&__dst[v13[12]] = *&__src[v13[12]];
          *&__dst[v13[16]] = *&__src[v13[16]];
          *&__dst[v13[20]] = *&__src[v13[20]];
          v17 = 5;
          goto LABEL_11;
        case 6u:
          v14 = type metadata accessor for DataFrame(0);
          (*(*(v14 - 8) + 32))(__dst, __src, v14);
          v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          *&__dst[v15[12]] = *&__src[v15[12]];
          *&__dst[v15[16]] = *&__src[v15[16]];
          *&__dst[v15[20]] = *&__src[v15[20]];
          *&__dst[v15[24]] = *&__src[v15[24]];
          v17 = 6;
LABEL_11:
          v9 = v17;
          v8 = v6;
LABEL_12:
          swift_storeEnumTagMultiPayload(__dst, v8, v9);
          break;
        default:
          memcpy(__dst, __src, *(*(v6 - 8) + 64));
          break;
      }

      swift_storeEnumTagMultiPayload(__dst, v5, 1);
    }

    else
    {
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

uint64_t type metadata completion function for MLActionClassifier.ModelParameters(uint64_t a1)
{
  result = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.Int64 + 64;
    v3[2] = &value witness table for Builtin.Int64 + 64;
    v3[3] = &value witness table for Builtin.Int64 + 64;
    v3[4] = &value witness table for Builtin.Int64 + 64;
    v3[5] = &value witness table for () + 64;
    v3[6] = &value witness table for Builtin.Int64 + 64;
    swift_initStructMetadata(a1, 256, 7, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v20 = *__src;
    *v3 = *__src;
    v3 = (v20 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(v4 + 64));
    }

    v7 = type metadata accessor for MLActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v7))
    {
      case 0u:
        v57 = v7;
        v8 = type metadata accessor for URL(0);
        v55 = *(*(v8 - 8) + 16);
        v55(__dst, __src, v8);
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v55(&__dst[v9[12]], &__src[v9[12]], v8);
        v10 = v9[16];
        *&__dst[v10] = *&__src[v10];
        v11 = *&__src[v10 + 8];
        *(v3 + v10 + 8) = v11;
        v12 = v9[20];
        *(v3 + v12) = *&__src[v12];
        v56 = *&__src[v12 + 8];
        *(v3 + v12 + 8) = v56;
        v13 = v9[24];
        *(v3 + v13) = *&__src[v13];
        v14 = *&__src[v13 + 8];
        *(v3 + v13 + 8) = v14;
        v15 = v9[28];
        *(v3 + v15) = *&__src[v15];
        v16 = *&__src[v15 + 8];
        *(v3 + v15 + 8) = v16;
        v11;
        v56;
        v14;
        v16;
        v17 = v3;
        v18 = v57;
        v19 = 0;
        break;
      case 1u:
        v34 = type metadata accessor for URL(0);
        (*(*(v34 - 8) + 16))(__dst, __src, v34);
        v54 = 1;
        goto LABEL_12;
      case 2u:
        v28 = type metadata accessor for URL(0);
        (*(*(v28 - 8) + 16))(__dst, __src, v28);
        v54 = 2;
        goto LABEL_12;
      case 3u:
        v29 = *__src;
        v58 = v7;
        v30 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v30);
        *__dst = v29;
        __dst[8] = v30;
        *(__dst + 2) = *(__src + 2);
        v31 = *(__src + 3);
        v3[3] = v31;
        v3[4] = *(__src + 4);
        v32 = *(__src + 5);
        v3[5] = v32;
        v3[6] = *(__src + 6);
        v33 = *(__src + 7);
        v3[7] = v33;
        v31;
        v32;
        v33;
        v53 = 3;
        goto LABEL_14;
      case 4u:
        v22 = *__src;
        v58 = v7;
        v23 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v23);
        *__dst = v22;
        __dst[8] = v23;
        *(__dst + 2) = *(__src + 2);
        v24 = *(__src + 3);
        v3[3] = v24;
        v3[4] = *(__src + 4);
        v25 = *(__src + 5);
        v3[5] = v25;
        v3[6] = *(__src + 6);
        v26 = *(__src + 7);
        v3[7] = v26;
        v3[8] = *(__src + 8);
        v27 = *(__src + 9);
        v3[9] = v27;
        v24;
        v25;
        v26;
        v27;
        v53 = 4;
        goto LABEL_14;
      case 5u:
        v35 = type metadata accessor for DataFrame(0);
        (*(*(v35 - 8) + 16))(__dst, __src, v35);
        v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v37 = v36[12];
        *&__dst[v37] = *&__src[v37];
        v38 = *&__src[v37 + 8];
        *(v3 + v37 + 8) = v38;
        v39 = v36[16];
        *(v3 + v39) = *&__src[v39];
        v40 = *&__src[v39 + 8];
        *(v3 + v39 + 8) = v40;
        v41 = v36[20];
        *(v3 + v41) = *&__src[v41];
        v42 = *&__src[v41 + 8];
        *(v3 + v41 + 8) = v42;
        v38;
        v40;
        v42;
        v54 = 5;
LABEL_12:
        v19 = v54;
        v17 = v3;
        v18 = v7;
        break;
      case 6u:
        v43 = type metadata accessor for DataFrame(0);
        (*(*(v43 - 8) + 16))(__dst, __src, v43);
        v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v45 = v44[12];
        *&__dst[v45] = *&__src[v45];
        v46 = *&__src[v45 + 8];
        *(v3 + v45 + 8) = v46;
        v47 = v44[16];
        *(v3 + v47) = *&__src[v47];
        v48 = *&__src[v47 + 8];
        *(v3 + v47 + 8) = v48;
        v49 = v44[20];
        *(v3 + v49) = *&__src[v49];
        v58 = v7;
        v50 = *&__src[v49 + 8];
        *(v3 + v49 + 8) = v50;
        v51 = v44[24];
        *(v3 + v51) = *&__src[v51];
        v52 = *&__src[v51 + 8];
        *(v3 + v51 + 8) = v52;
        v46;
        v48;
        v50;
        v52;
        v53 = 6;
LABEL_14:
        v19 = v53;
        v17 = v3;
        v18 = v58;
        break;
    }

    swift_storeEnumTagMultiPayload(v17, v18, v19);
    swift_storeEnumTagMultiPayload(v3, a3, 1);
  }

  return v3;
}

uint64_t destroy for MLActionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 1)
  {
    v3 = type metadata accessor for MLActionClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 0:
        v5 = type metadata accessor for URL(0);
        v6 = *(*(v5 - 8) + 8);
        v6(a1, v5);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v6(a1 + v7[12], v5);
        *(a1 + v7[16] + 8);
        *(a1 + v7[20] + 8);
        *(a1 + v7[24] + 8);
        v8 = v7[28];
        goto LABEL_10;
      case 1:
      case 2:
        v4 = type metadata accessor for URL(0);
        return (*(*(v4 - 8) + 8))(a1, v4);
      case 3:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        *(a1 + 40);
        return *(a1 + 56);
      case 4:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        *(a1 + 40);
        *(a1 + 56);
        return *(a1 + 72);
      case 5:
        v9 = type metadata accessor for DataFrame(0);
        (*(*(v9 - 8) + 8))(a1, v9);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(a1 + v10[12] + 8);
        *(a1 + v10[16] + 8);
        v8 = v10[20];
        goto LABEL_10;
      case 6:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 8))(a1, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(a1 + v12[12] + 8);
        *(a1 + v12[16] + 8);
        *(a1 + v12[20] + 8);
        v8 = v12[24];
LABEL_10:
        result = *(a1 + v8 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

char *initializeWithCopy for MLActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v5 = type metadata accessor for MLActionClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(__src, v5))
  {
    case 0u:
      v54 = v5;
      v6 = type metadata accessor for URL(0);
      v52 = *(*(v6 - 8) + 16);
      v52(__dst, __src, v6);
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v52(&__dst[v7[12]], &__src[v7[12]], v6);
      v8 = v7[16];
      *&__dst[v8] = *&__src[v8];
      v9 = *&__src[v8 + 8];
      *&__dst[v8 + 8] = v9;
      v10 = v7[20];
      *&__dst[v10] = *&__src[v10];
      v53 = *&__src[v10 + 8];
      *&__dst[v10 + 8] = v53;
      v11 = v7[24];
      *&__dst[v11] = *&__src[v11];
      v12 = *&__src[v11 + 8];
      *&__dst[v11 + 8] = v12;
      v13 = v7[28];
      *&__dst[v13] = *&__src[v13];
      v14 = *&__src[v13 + 8];
      *&__dst[v13 + 8] = v14;
      v9;
      v53;
      v12;
      v14;
      v15 = __dst;
      v16 = v54;
      v17 = 0;
      break;
    case 1u:
      v31 = type metadata accessor for URL(0);
      (*(*(v31 - 8) + 16))(__dst, __src, v31);
      v51 = 1;
      goto LABEL_10;
    case 2u:
      v25 = type metadata accessor for URL(0);
      (*(*(v25 - 8) + 16))(__dst, __src, v25);
      v51 = 2;
      goto LABEL_10;
    case 3u:
      v26 = *__src;
      v55 = v5;
      v27 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v27);
      *__dst = v26;
      __dst[8] = v27;
      *(__dst + 2) = *(__src + 2);
      v28 = *(__src + 3);
      *(__dst + 3) = v28;
      *(__dst + 4) = *(__src + 4);
      v29 = *(__src + 5);
      *(__dst + 5) = v29;
      *(__dst + 6) = *(__src + 6);
      v30 = *(__src + 7);
      *(__dst + 7) = v30;
      v28;
      v29;
      v30;
      v50 = 3;
      goto LABEL_12;
    case 4u:
      v19 = *__src;
      v55 = v5;
      v20 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v20);
      *__dst = v19;
      __dst[8] = v20;
      *(__dst + 2) = *(__src + 2);
      v21 = *(__src + 3);
      *(__dst + 3) = v21;
      *(__dst + 4) = *(__src + 4);
      v22 = *(__src + 5);
      *(__dst + 5) = v22;
      *(__dst + 6) = *(__src + 6);
      v23 = *(__src + 7);
      *(__dst + 7) = v23;
      *(__dst + 8) = *(__src + 8);
      v24 = *(__src + 9);
      *(__dst + 9) = v24;
      v21;
      v22;
      v23;
      v24;
      v50 = 4;
      goto LABEL_12;
    case 5u:
      v32 = type metadata accessor for DataFrame(0);
      (*(*(v32 - 8) + 16))(__dst, __src, v32);
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v34 = v33[12];
      *&__dst[v34] = *&__src[v34];
      v35 = *&__src[v34 + 8];
      *&__dst[v34 + 8] = v35;
      v36 = v33[16];
      *&__dst[v36] = *&__src[v36];
      v37 = *&__src[v36 + 8];
      *&__dst[v36 + 8] = v37;
      v38 = v33[20];
      *&__dst[v38] = *&__src[v38];
      v39 = *&__src[v38 + 8];
      *&__dst[v38 + 8] = v39;
      v35;
      v37;
      v39;
      v51 = 5;
LABEL_10:
      v17 = v51;
      v15 = __dst;
      v16 = v5;
      break;
    case 6u:
      v40 = type metadata accessor for DataFrame(0);
      (*(*(v40 - 8) + 16))(__dst, __src, v40);
      v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v42 = v41[12];
      *&__dst[v42] = *&__src[v42];
      v43 = *&__src[v42 + 8];
      *&__dst[v42 + 8] = v43;
      v44 = v41[16];
      *&__dst[v44] = *&__src[v44];
      v45 = *&__src[v44 + 8];
      *&__dst[v44 + 8] = v45;
      v46 = v41[20];
      *&__dst[v46] = *&__src[v46];
      v55 = v5;
      v47 = *&__src[v46 + 8];
      *&__dst[v46 + 8] = v47;
      v48 = v41[24];
      *&__dst[v48] = *&__src[v48];
      v49 = *&__src[v48 + 8];
      *&__dst[v48 + 8] = v49;
      v43;
      v45;
      v47;
      v49;
      v50 = 6;
LABEL_12:
      v17 = v50;
      v15 = __dst;
      v16 = v55;
      break;
  }

  swift_storeEnumTagMultiPayload(v15, v16, v17);
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithCopy for MLActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLImageClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v5 = type metadata accessor for MLActionClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v5);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v44 = v5;
        v41 = type metadata accessor for URL(0);
        v15 = *(*(v41 - 8) + 16);
        v15(__dst, __src, v41);
        v46 = EnumCaseMultiPayload;
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v15(&__dst[v16[12]], &__src[v16[12]], v41);
        v17 = v16[16];
        *&__dst[v17] = *&__src[v17];
        v23 = *&__src[v17 + 8];
        *&__dst[v17 + 8] = v23;
        v18 = v16[20];
        *&__dst[v18] = *&__src[v18];
        v42 = *&__src[v18 + 8];
        *&__dst[v18 + 8] = v42;
        v19 = v16[24];
        *&__dst[v19] = *&__src[v19];
        v20 = *&__src[v19 + 8];
        *&__dst[v19 + 8] = v20;
        v21 = v16[28];
        *&__dst[v21] = *&__src[v21];
        v22 = *&__src[v21 + 8];
        *&__dst[v21 + 8] = v22;
        v23;
        LOBYTE(v23) = v42;
        goto LABEL_10;
      case 1u:
      case 2u:
        v7 = type metadata accessor for URL(0);
        (*(*(v7 - 8) + 16))(__dst, __src, v7);
        goto LABEL_14;
      case 3u:
        v44 = v5;
        v24 = *__src;
        v46 = EnumCaseMultiPayload;
        v25 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v25);
        *__dst = v24;
        __dst[8] = v25;
        *(__dst + 2) = *(__src + 2);
        v23 = *(__src + 3);
        *(__dst + 3) = v23;
        *(__dst + 4) = *(__src + 4);
        v20 = *(__src + 5);
        *(__dst + 5) = v20;
        *(__dst + 6) = *(__src + 6);
        v22 = *(__src + 7);
        *(__dst + 7) = v22;
        goto LABEL_10;
      case 4u:
        v43 = v5;
        v9 = *__src;
        v45 = EnumCaseMultiPayload;
        v10 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v10);
        *__dst = v9;
        __dst[8] = v10;
        *(__dst + 2) = *(__src + 2);
        v11 = *(__src + 3);
        *(__dst + 3) = v11;
        *(__dst + 4) = *(__src + 4);
        v12 = *(__src + 5);
        *(__dst + 5) = v12;
        *(__dst + 6) = *(__src + 6);
        v13 = *(__src + 7);
        *(__dst + 7) = v13;
        *(__dst + 8) = *(__src + 8);
        v14 = *(__src + 9);
        *(__dst + 9) = v14;
        goto LABEL_12;
      case 5u:
        v26 = type metadata accessor for DataFrame(0);
        (*(*(v26 - 8) + 16))(__dst, __src, v26);
        v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v28 = v27[12];
        *&__dst[v28] = *&__src[v28];
        v23 = *&__src[v28 + 8];
        *&__dst[v28 + 8] = v23;
        v29 = v27[16];
        *&__dst[v29] = *&__src[v29];
        v44 = v5;
        v20 = *&__src[v29 + 8];
        *&__dst[v29 + 8] = v20;
        v30 = v27[20];
        *&__dst[v30] = *&__src[v30];
        v46 = EnumCaseMultiPayload;
        v22 = *&__src[v30 + 8];
        *&__dst[v30 + 8] = v22;
LABEL_10:
        v23;
        v31 = v20;
        v5 = v44;
        v31;
        v32 = v22;
        EnumCaseMultiPayload = v46;
        break;
      case 6u:
        v33 = type metadata accessor for DataFrame(0);
        (*(*(v33 - 8) + 16))(__dst, __src, v33);
        v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v35 = v34[12];
        *&__dst[v35] = *&__src[v35];
        v11 = *&__src[v35 + 8];
        *&__dst[v35 + 8] = v11;
        v36 = v34[16];
        *&__dst[v36] = *&__src[v36];
        v43 = v5;
        v12 = *&__src[v36 + 8];
        *&__dst[v36 + 8] = v12;
        v37 = v34[20];
        *&__dst[v37] = *&__src[v37];
        v45 = EnumCaseMultiPayload;
        v13 = *&__src[v37 + 8];
        *&__dst[v37 + 8] = v13;
        v38 = v34[24];
        *&__dst[v38] = *&__src[v38];
        v14 = *&__src[v38 + 8];
        *&__dst[v38 + 8] = v14;
LABEL_12:
        v11;
        v39 = v12;
        v5 = v43;
        v39;
        v40 = v13;
        EnumCaseMultiPayload = v45;
        v40;
        v32 = v14;
        break;
    }

    v32;
LABEL_14:
    swift_storeEnumTagMultiPayload(__dst, v5, EnumCaseMultiPayload);
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
  }

  return __dst;
}

char *initializeWithTake for MLActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLActionClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(__src, v4))
  {
    case 0u:
      v16 = type metadata accessor for URL(0);
      v17 = *(*(v16 - 8) + 32);
      v17(__dst, __src, v16);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v17(&__dst[v5[12]], &__src[v5[12]], v16);
      *&__dst[v5[16]] = *&__src[v5[16]];
      *&__dst[v5[20]] = *&__src[v5[20]];
      *&__dst[v5[24]] = *&__src[v5[24]];
      *&__dst[v5[28]] = *&__src[v5[28]];
      v6 = v4;
      v7 = 0;
      goto LABEL_11;
    case 1u:
      v10 = type metadata accessor for URL(0);
      (*(*(v10 - 8) + 32))(__dst, __src, v10);
      v15 = 1;
      goto LABEL_10;
    case 2u:
      v9 = type metadata accessor for URL(0);
      (*(*(v9 - 8) + 32))(__dst, __src, v9);
      v15 = 2;
      goto LABEL_10;
    case 5u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *&__dst[v12[12]] = *&__src[v12[12]];
      *&__dst[v12[16]] = *&__src[v12[16]];
      *&__dst[v12[20]] = *&__src[v12[20]];
      v15 = 5;
      goto LABEL_10;
    case 6u:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 32))(__dst, __src, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *&__dst[v14[12]] = *&__src[v14[12]];
      *&__dst[v14[16]] = *&__src[v14[16]];
      *&__dst[v14[20]] = *&__src[v14[20]];
      *&__dst[v14[24]] = *&__src[v14[24]];
      v15 = 6;
LABEL_10:
      v7 = v15;
      v6 = v4;
LABEL_11:
      swift_storeEnumTagMultiPayload(__dst, v6, v7);
      break;
    default:
      memcpy(__dst, __src, *(*(v4 - 8) + 64));
      break;
  }

  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithTake for MLActionClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLImageClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v4 = type metadata accessor for MLActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v4))
    {
      case 0u:
        v16 = type metadata accessor for URL(0);
        v17 = *(*(v16 - 8) + 32);
        v17(__dst, __src, v16);
        v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v17(&__dst[v5[12]], &__src[v5[12]], v16);
        *&__dst[v5[16]] = *&__src[v5[16]];
        *&__dst[v5[20]] = *&__src[v5[20]];
        *&__dst[v5[24]] = *&__src[v5[24]];
        *&__dst[v5[28]] = *&__src[v5[28]];
        v6 = v4;
        v7 = 0;
        goto LABEL_12;
      case 1u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 32))(__dst, __src, v10);
        v15 = 1;
        goto LABEL_11;
      case 2u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 32))(__dst, __src, v9);
        v15 = 2;
        goto LABEL_11;
      case 5u:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v12[12]] = *&__src[v12[12]];
        *&__dst[v12[16]] = *&__src[v12[16]];
        *&__dst[v12[20]] = *&__src[v12[20]];
        v15 = 5;
        goto LABEL_11;
      case 6u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 32))(__dst, __src, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&__dst[v14[12]] = *&__src[v14[12]];
        *&__dst[v14[16]] = *&__src[v14[16]];
        *&__dst[v14[20]] = *&__src[v14[20]];
        *&__dst[v14[24]] = *&__src[v14[24]];
        v15 = 6;
LABEL_11:
        v7 = v15;
        v6 = v4;
LABEL_12:
        swift_storeEnumTagMultiPayload(__dst, v6, v7);
        break;
      default:
        memcpy(__dst, __src, *(*(v4 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(__dst, a3, 1);
  }

  return __dst;
}

uint64_t type metadata completion function for MLActionClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_3476E8;
  result = type metadata accessor for MLActionClassifier.DataSource(319);
  if (v4 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 2, v5, v2, v3);
    return 0;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg5093_s14NeuralNetworks6TensorV8CreateMLE_6deviceACSo12MLMultiArrayC_AA13ComputeDeviceVSgtcfcSiSo8D55Ccfu1_33_5bdac5b40c7411f20a64c1277f8fd44fALSiTf3nnnpk_nTf1cn_n(uint64_t a1)
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

void Tensor.init(_:device:)(id a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(*(type metadata accessor for ScalarType(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v31 = v29;
  v12 = *(*(type metadata accessor for TensorShape(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v32 = v29;
  v15 = [a1 dataType];
  v16 = v15;
  v35 = a2;
  v29[1] = v5;
  v30 = v29;
  if (v15 == &loc_10020)
  {
LABEL_5:
    v28 = 4;
    goto LABEL_6;
  }

  if (v15 != &loc_1003C + 4)
  {
    if (v15 != &loc_2001D + 3)
    {
      if (v15 == &loc_1000E + 2)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000041, "i-array data type" + 0x8000000000000000, "CreateML/_CoreML+NeuralNetworks.swift", 37, 2, 63, 0);
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000021, "+NeuralNetworks.swift" + 0x8000000000000000, "CreateML/_CoreML+NeuralNetworks.swift", 37, 2, 72, 0);
      }

      BUG();
    }

    goto LABEL_5;
  }

  v28 = 8;
LABEL_6:
  v36 = v28;
  v33 = a1;
  v17 = [a1 shape];
  v18 = v17;
  v19 = type metadata accessor for NSNumber();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v18, v19);

  MLE_6deviceACSo12MLMultiArrayC_AA13ComputeDeviceVSgtcfcSiSo8D55Ccfu1_33_5bdac5b40c7411f20a64c1277f8fd44fALSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg5093_s14NeuralNetworks6TensorV8CreateMLE_6deviceACSo12MLMultiArrayC_AA13ComputeDeviceVSgtcfcSiSo8D55Ccfu1_33_5bdac5b40c7411f20a64c1277f8fd44fALSiTf3nnnpk_nTf1cn_n(v20);
  v20;
  v22 = v32;
  TensorShape.init(_:)(MLE_6deviceACSo12MLMultiArrayC_AA13ComputeDeviceVSgtcfcSiSo8D55Ccfu1_33_5bdac5b40c7411f20a64c1277f8fd44fALSiTf3nnnpk_nTf1cn_n, a3, a4);
  v23 = v31;
  MLMultiArrayDataType.dataType.getter(v16);
  v24 = v30;
  outlined init with copy of ComputeDevice?(v35, v30);
  v34 = v29;
  v25 = alloca(32);
  v26 = alloca(32);
  v27 = v33;
  v30 = v33;
  v31 = v36;
  Tensor.init(unsafeUninitializedShape:scalarType:computeDevice:initializingWith:)(v22, v23, v24, partial apply for closure #1 in Tensor.init(_:device:));
  outlined destroy of ComputeDevice?(v35);
}

uint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    v1 = objc_opt_self(NSNumber);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for NSNumber = result;
  }

  return result;
}

uint64_t MLMultiArrayDataType.dataType.getter(char *a1)
{
  v2 = v1;
  if (a1 == &loc_1000E + 2)
  {
    v3 = &enum case for ScalarType.float16(_:);
  }

  else if (a1 == &loc_2001D + 3)
  {
    v3 = &enum case for ScalarType.int32(_:);
  }

  else if (a1 == &loc_1003C + 4)
  {
    v3 = &enum case for ScalarType.float64(_:);
  }

  else
  {
    if (a1 != &loc_10020)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000021, "+NeuralNetworks.swift" + 0x8000000000000000, "CreateML/_CoreML+NeuralNetworks.swift", 37, 2, 20, 0);
      BUG();
    }

    v3 = &enum case for ScalarType.float32(_:);
  }

  v4 = *v3;
  v5 = type metadata accessor for ScalarType(0);
  return (*(*(v5 - 8) + 104))(v2, v4, v5);
}

uint64_t outlined init with copy of ComputeDevice?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

size_t closure #1 in Tensor.init(_:device:)(void *__dst, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = a3;
  v6 = [v5 dataPointer];
  v8 = [v5 count];
  result = a4 * v8;
  if (!is_mul_ok(a4, v8))
  {
    BUG();
  }

  if (__dst)
  {
    return memmove(__dst, v6, result);
  }

  return result;
}

uint64_t outlined destroy of ComputeDevice?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t MLDataTable.subscript.getter(Swift::String a1)
{
  v3 = v1;
  if (v2[8])
  {
    swift_willThrow();
    _StringGuts.grow(_:)(34);
    0xE000000000000000;
    *&v12 = 0xD00000000000001FLL;
    *(&v12 + 1) = "ml.activityclassifier" + 0x8000000000000000;
    String.append(_:)(a1);
    v5._object = 0xE100000000000000;
    v5._countAndFlagsBits = 34;
    String.append(_:)(v5);
    v6 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    result = swift_allocError(&type metadata for MLCreateError, v6, 0, 0);
    *v8 = v12;
    *(v8 + 16) = 0;
    *(v8 + 32) = 0;
    *(v8 + 48) = 1;
    v9 = 1;
  }

  else
  {
    v4 = *(*v2 + 16);
    v4;
    v10 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v4, a1._countAndFlagsBits, a1._object, type metadata accessor for CMLColumn, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    v4;
    v9 = 0;
    v11 = type metadata accessor for _UntypedColumn();
    result = swift_allocObject(v11, 24, 7);
    *(result + 16) = v10;
  }

  *v3 = result;
  *(v3 + 8) = v9;
  return result;
}

Swift::Int MLDataTable.size.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v5 = *(v1 + 16);
    v1;
    v6 = CMLTable.rows()();
    if (v7)
    {
      v12 = 191;
    }

    else
    {
      v8 = v6;
      v9 = *(v1 + 16);
      CMLTable.columns()();
      if (!v7)
      {
        outlined consume of Result<_DataTable, Error>(v1, 0);
        return v8;
      }

      v12 = 192;
    }

    swift_unexpectedError(v7, "CreateML/MLDataTable.swift", 26, 1, v12);
    BUG();
  }

  v13[0] = *v0;
  outlined copy of Result<_DataTable, Error>(v1, 1);
  swift_errorRetain(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  v3 = _getErrorEmbeddedNSError<A>(_:)(v13, v2, &protocol self-conformance witness table for Error);
  if (v3)
  {
    v4 = v3;
    outlined consume of Result<_DataTable, Error>(v1, 1);
  }

  else
  {
    v4 = swift_allocError(v2, &protocol self-conformance witness table for Error, 0, 0);
    *v10 = v1;
  }

  outlined consume of Result<_DataTable, Error>(v1, 1);
  outlined consume of Result<_RegressorMetrics, Error>(v4, 1, 1);
  return 0;
}

uint64_t MLDataTable.init(namedColumns:)(uint64_t a1)
{
  v3 = v1;
  result = _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(a1);
  if (!v2)
  {
    result = v5;
    *v3 = v5;
    *(v3 + 8) = v6;
  }

  return result;
}

uint64_t MLDataTable.init()()
{
  v1 = v0;
  empty = tc_v1_sframe_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v3 = empty;
  v4 = type metadata accessor for CMLTable();
  v5 = swift_allocObject(v4, 24, 7);
  *(v5 + 16) = v3;
  v6 = type metadata accessor for _DataTable();
  result = swift_allocObject(v6, 40, 7);
  *(result + 24) = 0;
  *(result + 16) = v5;
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

void *MLDataTable.subscript.getter(Swift::String a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = v3;
  if (v4[8])
  {
    swift_willThrow(a1._countAndFlagsBits, a1._object);
    _StringGuts.grow(_:)(34);
    0xE000000000000000;
    *&v21 = 0xD00000000000001FLL;
    *(&v21 + 1) = "Duplicate values for key: '" + 0x8000000000000000;
    String.append(_:)(a1);
    v7._countAndFlagsBits = 39;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v9 = swift_allocError(&type metadata for MLCreateError, v8, 0, 0);
    *v10 = v21;
    *(v10 + 16) = 0;
    *(v10 + 32) = 0;
    *(v10 + 48) = 1;
    *&v21 = v9;
    BYTE8(v21) = 1;
    return MLDataColumn.init(from:)(&v21);
  }

  v6 = *(*v4 + 16);

  v12 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v6, a1._countAndFlagsBits, a1._object, type metadata accessor for CMLColumn, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));

  v13 = type metadata accessor for _UntypedColumn();
  v14 = swift_allocObject(v13, 24, 7);
  *(v14 + 16) = v12;
  v20 = v14;

  MLUntypedColumn.column<A>(type:)(a2, a2, v22);
  outlined consume of Result<_DataTable, Error>(v20, 0);
  v15 = BYTE8(v21);
  if (BYTE8(v21) == 0xFF)
  {
    _StringGuts.grow(_:)(49);
    0xE000000000000000;
    strcpy(&v21, "Column named '");
    HIBYTE(v21) = -18;
    String.append(_:)(a1);
    v16._object = "DataTable has no column named '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v16);
    v17 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v18 = swift_allocError(&type metadata for MLCreateError, v17, 0, 0);
    *v19 = v21;
    *(v19 + 16) = 0;
    *(v19 + 32) = 0;
    *(v19 + 48) = 1;

    *&v21 = v18;
    BYTE8(v21) = 1;
    return MLDataColumn.init(from:)(&v21);
  }

  result = v23;
  *v23 = v21;
  *(result + 8) = v15 & 1;
  return result;
}

uint64_t MLDataTable.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  v5 = *a1;
  v6 = *(a1 + 8);
  MLDataTable.willMutate()();
  v9 = v5;
  v10 = v6;
  MLDataTable.setColumnImpl(newColumn:named:)(&v9, a2, a3);
  a3;
  result = outlined consume of Result<_DataTable, Error>(v9, v10);
  if (!*(v3 + 8))
  {
    v8 = *v3;
    outlined copy of Result<_DataTable, Error>(v8, 0);
    _DataTable.columnNamesDidChange()();
    return outlined consume of Result<_DataTable, Error>(v8, 0);
  }

  return result;
}

{
  v5 = *a1;
  v6 = *(a1 + 8);
  MLDataTable.willMutate()();
  v9 = v5;
  v10 = v6;
  MLDataTable.setColumnImpl(newColumn:named:)(&v9, a2, a3);
  a3;
  result = outlined consume of Result<_DataTable, Error>(v5, v6);
  if (!*(v3 + 8))
  {
    v8 = *v3;
    outlined copy of Result<_DataTable, Error>(v8, 0);
    _DataTable.columnNamesDidChange()();
    return outlined consume of Result<_DataTable, Error>(v8, 0);
  }

  return result;
}

uint64_t MLDataTable.subscript.getter(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *v2;
  v21 = *(v2 + 8);
  v16 = v1;
  v20 = v4;
  if (v21)
  {
    v6 = *v2;
    outlined copy of Result<_DataTable, Error>(v5, 1);
    v7 = tc_v1_flex_list_create(0);
    if (!v7)
    {
      BUG();
    }

    v8 = v7;
    v9 = type metadata accessor for CMLSequence();
    v10 = swift_allocObject(v9, 25, 7);
    *(v10 + 16) = v8;
    v19 = v10;
    *(v10 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v5, 1);
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v5, 0);
    v6 = v5;
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v5, 0);
    v19 = v17;
  }

  v11 = swift_allocObject(&unk_394480, 25, 7);
  *(v11 + 16) = v6;
  *(v11 + 24) = v21;
  v12 = swift_allocObject(&unk_3944A8, 25, 7);
  *(v12 + 16) = v3;
  *(v12 + 24) = v20 & 1;
  v13 = swift_allocObject(&unk_3944D0, 56, 7);
  v13[2] = partial apply for closure #2 in MLDataTable.subscript.getter;
  v13[3] = v12;
  v13[4] = v19;
  v13[5] = partial apply for closure #1 in MLDataTable.subscript.getter;
  v13[6] = v11;
  outlined copy of Result<_DataTable, Error>(v6, v21);
  outlined copy of Result<_DataTable, Error>(v3, v20);
  swift_retain_n(v19, 3);

  ML15MLUntypedColumnVs15LazyMapSequenceVyAE11MLDataTableV0I5NamesVSS_AGtGTt0B5 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_8CreateML15MLUntypedColumnVs15LazyMapSequenceVyAE11MLDataTableV0I5NamesVSS_AGtGTt0B5(v19, partial apply for specialized closure #1 in LazyMapSequence<>.map<A>(_:), v13);
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(ML15MLUntypedColumnVs15LazyMapSequenceVyAE11MLDataTableV0I5NamesVSS_AGtGTt0B5);

  v19, 2;
  result = v17;
  *v16 = v17;
  *(v16 + 8) = v18;
  return result;
}

{
  v12 = v1;
  v3 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v2 + 8);
  v10 = *v2;
  v4 = v10;
  v11 = v6;
  v8 = v3;
  v9 = v5;
  outlined copy of Result<_DataTable, Error>(v3, v5);
  outlined copy of Result<_DataTable, Error>(v10, v6);
  MLDataTable.subscript.getter(&v8);
  outlined consume of Result<_DataTable, Error>(v3, v5);
  return outlined consume of Result<_DataTable, Error>(v4, v6);
}

uint64_t MLDataTable.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46._countAndFlagsBits = a1;
  v43 = v3;
  v50 = 0;
  AssociatedConformanceWitness = *(a2 - 8);
  v6 = *(AssociatedConformanceWitness + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v49 = &v42;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v44 = *(AssociatedTypeWitness - 8);
  v9 = *(v44 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v52 = &v42;
  v45 = *v4;
  v56 = *(v4 + 8);
  empty = tc_v1_sframe_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v13 = empty;
  v14 = type metadata accessor for CMLTable();
  v15 = swift_allocObject(v14, 24, 7);
  *(v15 + 16) = v13;
  v16 = type metadata accessor for _DataTable();
  v17 = swift_allocObject(v16, 40, 7);
  *(v17 + 24) = 0;
  *(v17 + 16) = v15;
  v53 = v17;
  v54 = 0;
  (*(AssociatedConformanceWitness + 16))(v49, v46._countAndFlagsBits, a2);
  v18 = v52;
  dispatch thunk of Sequence.makeIterator()(a2, a3);
  v19 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, AssociatedTypeWitness, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v49 = "ml.activityclassifier" + 0x8000000000000000;
  v47 = v56;
  v20 = v18;
  v21 = v56;
  while (1)
  {
    v22 = v19;
    v23 = AssociatedConformanceWitness;
    dispatch thunk of IteratorProtocol.next()(v19, AssociatedConformanceWitness);
    v24 = *(&v55 + 1);
    if (!*(&v55 + 1))
    {
      break;
    }

    v25 = v55;
    v46._countAndFlagsBits = v55;
    if (v21)
    {
      v26 = v45;
      swift_willThrow(v22, v23);
      outlined copy of Result<_DataTable, Error>(v26, 1);
      v50 = 0;
      goto LABEL_8;
    }

    v26 = v45;
    v27 = *(v45 + 16);
    outlined copy of Result<_DataTable, Error>(v45, 0);

    v28 = v25;
    v29 = v50;
    v30 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v27, v28, v24, type metadata accessor for CMLColumn, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    if (v29)
    {
      v29;

      v50 = 0;
LABEL_8:
      *&v55 = 0;
      *(&v55 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      *(&v55 + 1);
      *&v55 = 0xD00000000000001FLL;
      *(&v55 + 1) = v49;
      v31._countAndFlagsBits = v46._countAndFlagsBits;
      v31._object = v24;
      String.append(_:)(v31);
      v31._countAndFlagsBits = 34;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);
      v46 = v55;
      v32 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v33 = swift_allocError(&type metadata for MLCreateError, v32, 0, 0);
      *v34 = v46;
      *(v34 + 16) = 0;
      *(v34 + 32) = 0;
      *(v34 + 48) = 1;
      outlined consume of Result<_DataTable, Error>(v26, v47);
      outlined consume of Result<_DataTable, Error>(v33, 1);
      v24;
      v19 = AssociatedTypeWitness;
      v20 = v52;
      v21 = v56;
    }

    else
    {
      v35 = v30;
      v50 = 0;

      outlined consume of Result<_DataTable, Error>(v26, 0);
      v36 = type metadata accessor for _UntypedColumn();
      v37 = swift_allocObject(v36, 24, 7);
      *(v37 + 16) = v35;
      outlined copy of Result<_DataTable, Error>(v37, 0);
      MLDataTable.willMutate()();
      *&v55 = v37;
      BYTE8(v55) = 0;
      MLDataTable.setColumnImpl(newColumn:named:)(&v55, v46._countAndFlagsBits, v24);
      v24;
      outlined consume of Result<_DataTable, Error>(v37, 0);
      if (!v54)
      {
        v38 = v53;
        outlined copy of Result<_DataTable, Error>(v53, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v38, 0);
      }

      outlined consume of Result<_DataTable, Error>(v37, 0);
      v19 = AssociatedTypeWitness;
      v20 = v52;
      v21 = v56;
    }
  }

  (*(v44 + 8))(v20, v19);
  result = v53;
  v40 = v54;
  v41 = v43;
  *v43 = v53;
  *(v41 + 8) = v40;
  return result;
}

{
  v16 = a3;
  v19 = a2;
  v17 = a1;
  v5 = v3;
  v6 = *v4;
  v7 = *(v4 + 8);
  v14 = v6;
  LOBYTE(v15) = v7 & 1;
  outlined copy of Result<_DataTable, Error>(v6, v7);
  v8 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v6, v7);
  if (v8 < 0)
  {
    BUG();
  }

  v13[0] = 0;
  v13[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v10 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v18 = v5;
  dispatch thunk of RangeExpression.relative<A>(to:)(v13, v9, v10, v19, v16);
  v11 = v14;
  v19 = v15;
  v14 = v6;
  LOBYTE(v15) = v7 & 1;
  outlined copy of Result<_DataTable, Error>(v6, v7);
  MLDataTable.subscript.getter(v11, v19);
  return outlined consume of Result<_DataTable, Error>(v6, v7);
}

uint64_t MLDataTable.addColumn(_:named:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  MLDataTable.willMutate()();
  v9 = v5;
  v10 = v6;
  result = MLDataTable.addImpl(newColumn:named:)(&v9, a2, a3);
  if (!*(v3 + 8))
  {
    v8 = *v3;
    outlined copy of Result<_DataTable, Error>(v8, 0);
    _DataTable.columnNamesDidChange()();
    return outlined consume of Result<_DataTable, Error>(v8, 0);
  }

  return result;
}

void *_sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = a1[4];
  v4 = a1[6];
  v6 = &_swiftEmptyDictionarySingleton;
  v1;
  v2;
  v3;
  v4;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, 1, &v6);
  v4;
  v3;
  v2;
  v1;
  return v6;
}

void *_sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SdSaySS_SdtGTt0g5Tm(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, void **))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledName(a2);
    v5 = static _DictionaryStorage.allocate(capacity:)(v4);
  }

  else
  {
    v5 = &_swiftEmptyDictionarySingleton;
  }

  v7 = v5;
  a1;
  a3(a1, 1, &v7);
  a1;
  return v7;
}

uint64_t _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_8CreateML15MLUntypedColumnVs15LazyMapSequenceVyAE11MLDataTableV0I5NamesVSS_AGtGTt0B5(uint64_t a1, void (*a2)(unint64_t *), uint64_t a3)
{
  v4 = specialized Collection.underestimatedCount.getter();
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, MLUntypedColumn>);
    v6 = static _DictionaryStorage.allocate(capacity:)(v5);
  }

  else
  {
    v6 = _swiftEmptyDictionarySingleton;
  }

  v8[0] = v6;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, a2, a3, 1, v8);

  return v8[0];
}

void *_sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void **))
{
  if (__OFSUB__(a3, a2))
  {
    BUG();
  }

  v7 = *(a1 + 16);
  if (a3 - a2 < v7)
  {
    v7 = a3 - a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledName(a4);
    v8 = static _DictionaryStorage.allocate(capacity:)(v7);
  }

  else
  {
    v8 = _swiftEmptyDictionarySingleton;
  }

  v10 = v8;
  a1;
  a5(a1, a2, a3, 1, &v10);
  a1;
  return v10;
}

Swift::Void __swiftcall MLDataTable.renameColumn(named:to:)(Swift::String named, Swift::String to)
{
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;
  MLDataTable.willMutate()();
  v5._countAndFlagsBits = countAndFlagsBits;
  v5._object = object;
  MLDataTable.renameImpl(named:to:)(named, v5);
  if (!*(v2 + 8))
  {
    v6 = *v2;
    outlined copy of Result<_DataTable, Error>(v6, 0);
    _DataTable.columnNamesDidChange()();
    outlined consume of Result<_DataTable, Error>(v6, 0);
  }
}

uint64_t specialized String.withCString<A>(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized String.withCString<A>(_:)(a1, a2, a3, a4, type metadata accessor for CMLVariant, _ss11_StringGutsV11withCStringyxxSPys4Int8VGKXEKlFxSRyAEGKXEfU_s13OpaquePointerV_TG5TA_0);
}

{
  return specialized String.withCString<A>(_:)(a1, a2, a3, a4, type metadata accessor for CMLColumn, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
}

{
  return specialized String.withCString<A>(_:)(a1, a2, a3, a4, type metadata accessor for CMLFeatureValue, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
}

{
  return specialized String.withCString<A>(_:)(a1, a2, a3, a4, type metadata accessor for CMLTable, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in CMLTable.removeColumn(name:), a3, a1, a2, &type metadata for () + 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v4 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = _StringObject.sharedUTF8.getter(a1, a2);
      v4 = v6;
    }

    _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v3, v4, partial apply for closure #1 in CMLTable.removeColumn(name:));
  }

  v7[0] = a1;
  v7[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  specialized handling<A, B, C>(_:_:_:)(*(a3 + 16), v7);
}

char specialized String.withCString<A>(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0 || !(a4 & 0x2000000000000000 | a3 & 0x1000000000000000))
  {
    result = _StringGuts._slowWithCString<A>(_:)(a1, a2, a3, a4, &type metadata for CMLFeatureValueType);
    if (!v4)
    {
      return v10;
    }
  }

  else
  {
    v5 = alloca(32);
    v6 = alloca(32);
    if ((a4 & 0x2000000000000000) != 0)
    {
      result = a1();
      if (!v4)
      {
        return HIBYTE(a2);
      }
    }

    else
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v7 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v8 = a3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter(a3, a4);
      }

      return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TG5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(v7, v8, _ss11_StringGutsV11withCStringyxxSPys4Int8VGKXEKlFxSRyAEGKXEfU_Sb_TG5TA_0);
    }
  }

  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  if ((a4 & 0x1000000000000000) != 0 || !(a4 & 0x2000000000000000 | a3 & 0x1000000000000000))
  {
    v14 = a5(0);
    result = _StringGuts._slowWithCString<A>(_:)(a1, a2, a3, a4, v14);
    if (!v6)
    {
      return v18;
    }
  }

  else
  {
    v9 = alloca(32);
    v10 = alloca(32);
    if ((a4 & 0x2000000000000000) != 0)
    {
      result = a1();
      if (!v6)
      {
        return v19;
      }
    }

    else
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v12 = a3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = a6;
        v16 = _StringObject.sharedUTF8.getter(a3, a4);
        a6 = v15;
        v11 = v16;
        v12 = v17;
      }

      return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v11, v12, a6);
    }
  }

  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t (*a1)(void, void, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0 || !(a4 & 0x2000000000000000 | a3 & 0x1000000000000000))
  {
    result = _StringGuts._slowWithCString<A>(_:)(a1, a2, a3, a4, &type metadata for OpaquePointer);
    if (!v4)
    {
      return v11;
    }
  }

  else
  {
    v5 = alloca(32);
    v6 = alloca(32);
    v11 = a1;
    v12 = a2;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v10[0] = a3;
      v10[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      result = a1(v10, a1, a3);
      if (!v4)
      {
        return v12;
      }
    }

    else
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v7 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v8 = a3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter(a3, a4);
      }

      return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v7, v8, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    }
  }

  return result;
}

uint64_t MLDataTable.init(dictionary:)(uint64_t a1)
{
  v44 = v2;
  v36 = v1;
  empty = tc_v1_sframe_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v5 = empty;
  v45 = 0;
  v6 = type metadata accessor for CMLTable();
  v7 = swift_allocObject(v6, 24, 7);
  *(v7 + 16) = v5;
  v8 = type metadata accessor for _DataTable();
  v9 = swift_allocObject(v8, 40, 7);
  *(v9 + 24) = 0;
  *(v9 + 16) = v7;
  v10 = 1 << *(a1 + 32);
  v11 = ~(-1 << v10);
  if (v10 >= 64)
  {
    v11 = -1;
  }

  v12 = *(a1 + 64) & v11;
  v47 = (v10 + 63) >> 6;
  v37 = v47 - 1;
  v46 = v9;

  v13 = &v38;
  v43 = a1;
  while (1)
  {
    if (v12)
    {
      v14 = v45;
LABEL_7:
      _BitScanForward64(&v15, v12);
      v42 = (v12 - 1) & v12;
      v16 = v15 | (v14 << 6);
      v17 = *(a1 + 48);
      v18 = 40 * v16;
      v16 *= 16;
      v19 = *(v17 + v16 + 8);
      *&v38 = *(v17 + v16);
      *(&v38 + 1) = v19;
      outlined init with copy of TabularRegressionTask(*(a1 + 56) + v18, &v39);
      v19;
      goto LABEL_17;
    }

    v14 = v45;
    v20 = v45 + 1;
    if (__OFADD__(1, v45))
    {
      BUG();
    }

    if (v20 < v47)
    {
      v12 = *(a1 + 8 * v20 + 64);
      if (v12)
      {
        v14 = v45 + 1;
        goto LABEL_7;
      }

      v21 = v45 + 2;
      if (v45 + 2 >= v47)
      {
        v14 = v45 + 1;
      }

      else
      {
        v12 = *(a1 + 8 * v20 + 72);
        if (v12)
        {
          goto LABEL_14;
        }

        v29 = v45 + 3;
        if (v45 + 3 >= v47)
        {
          goto LABEL_33;
        }

        v12 = *(a1 + 8 * v20 + 80);
        if (v12)
        {
          goto LABEL_22;
        }

        v21 = v45 + 4;
        if (v45 + 4 >= v47)
        {
          goto LABEL_34;
        }

        v12 = *(a1 + 8 * v20 + 88);
        if (v12)
        {
          goto LABEL_14;
        }

        v29 = v45 + 5;
        if (v45 + 5 >= v47)
        {
LABEL_33:
          v14 = v21;
        }

        else
        {
          v12 = *(a1 + 8 * v20 + 96);
          if (v12)
          {
LABEL_22:
            v14 = v29;
            goto LABEL_7;
          }

          v21 = v45 + 6;
          if (v45 + 6 >= v47)
          {
LABEL_34:
            v14 = v29;
            goto LABEL_16;
          }

          v12 = *(a1 + 8 * v20 + 104);
          if (v12)
          {
LABEL_14:
            v14 = v21;
            goto LABEL_7;
          }

          v30 = v45 + 7;
          while (v30 < v47)
          {
            v12 = *(a1 + 8 * v30++ + 64);
            if (v12)
            {
              v14 = v30 - 1;
              goto LABEL_7;
            }
          }

          v14 = v37;
        }
      }
    }

LABEL_16:
    v40 = 0;
    v39 = 0;
    v38 = 0;
    v41 = 0;
    v42 = 0;
LABEL_17:
    v34 = v41;
    v33[1] = v40;
    v33[0] = v39;
    v22 = *(&v38 + 1);
    if (!*(&v38 + 1))
    {
      v31 = v46;

      result = v36;
      *v36 = v31;
      *(result + 8) = 0;
      return result;
    }

    v45 = v14;
    v35 = v38;
    outlined init with take of TabularRegressionTask(v33, v13);
    v23 = *(&v39 + 1);
    v24 = v13;
    v25 = v40;
    __swift_project_boxed_opaque_existential_0Tm(v24, *(&v39 + 1));
    v26 = MLDataValueConvertible.featureColumn.getter(v23, v25);
    v27 = *(v46 + 16);

    v28 = v44;
    CMLTable.addColumn(name:_:)(v35, v22, v26);
    v44 = v28;
    if (v28)
    {
      break;
    }

    v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    a1 = v43;
    v13 = v24;
    v12 = v42;
  }

  v46;

  v22;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v38);
}

uint64_t MLDataTable.append(contentsOf:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {
    swift_errorRetain(*v1);
    v4 = 1;
  }

  else
  {
    v5 = *a1;
    if (*(a1 + 8))
    {
      swift_errorRetain(*a1);
      v4 = 1;
      v3 = v5;
    }

    else
    {
      type metadata accessor for CMLTable();
      v6 = *(v3 + 16);
      v7 = *(v5 + 16);
      outlined copy of Result<_DataTable, Error>(v5, 0);
      outlined copy of Result<_DataTable, Error>(v3, 0);

      v8 = CMLTable.__allocating_init(concatenating:and:)(v6, v7);
      v9 = type metadata accessor for _DataTable();
      v10 = swift_allocObject(v9, 40, 7);
      *(v10 + 24) = 0;
      *(v10 + 16) = v8;
      v4 = 0;
      outlined consume of Result<_DataTable, Error>(v5, 0);
      outlined consume of Result<_DataTable, Error>(v3, 0);
      v3 = v10;
    }
  }

  result = outlined consume of Result<_DataTable, Error>(*v2, *(v2 + 2));
  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

uint64_t MLDataTable.addColumn<A>(_:named:)(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v4 = *a1;
  v5 = *(a1 + 8);
  MLDataTable.willMutate()();
  v8 = v4;
  v9 = v5;
  outlined copy of Result<_DataTable, Error>(v4, v5);
  MLDataTable.addImpl(newColumn:named:)(&v8, a2, v10);
  result = outlined consume of Result<_DataTable, Error>(v8, v9);
  if (!*(v3 + 8))
  {
    v7 = *v3;
    outlined copy of Result<_DataTable, Error>(v7, 0);
    _DataTable.columnNamesDidChange()();
    return outlined consume of Result<_DataTable, Error>(v7, 0);
  }

  return result;
}

uint64_t MLDataTable.columnTypes.getter()
{
  if (*(v0 + 8))
  {
    return Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for MLDataValue.ValueType, &protocol witness table for String);
  }

  v2 = *v0;
  v89 = *(v2 + 16);

  outlined copy of Result<_DataTable, Error>(v2, 0);
  v106 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for MLDataValue.ValueType, &protocol witness table for String);
  outlined copy of Result<_DataTable, Error>(v2, 0);
  _DataTable.columnNames.getter();
  v88 = v2;
  outlined consume of Result<_DataTable, Error>(v2, 0);

  v3 = CMLSequence.size.getter();
  v4 = specialized RandomAccessCollection<>.distance(from:to:)(0, v3);

  if (v4)
  {
    v5 = 0;
    while (2)
    {
      v90 = v5;
      CMLSequence.value(at:)(v5);
      v6 = CMLFeatureValue.stringValue()();
      if (v7)
      {
        v7;

        _StringGuts.grow(_:)(37);
        0xE000000000000000;
        v85._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        object = v85._object;
        String.append(_:)(v85);
        object;
        v87._countAndFlagsBits = 46;
        v87._object = 0xE100000000000000;
        String.append(_:)(v87);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000022, "able.ColumnNames.swift" + 0x8000000000000000, "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
        BUG();
      }

      countAndFlagsBits = v6._countAndFlagsBits;
      v9 = v6._object;

      v10 = CMLSequence.size.getter();
      v11 = specialized RandomAccessCollection<>.distance(from:to:)(0, v10);

      if (v90 >= v11)
      {
        BUG();
      }

      v12 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.columnType(name:), v89, countAndFlagsBits, v9);
      isUnique = swift_isUniquelyReferenced_nonNull_native(v106);
      switch(v12)
      {
        case 0:
          v98 = v106;
          v13 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
          v15 = (v14 & 1) == 0;
          v16 = __OFADD__(*(v106 + 16), v15);
          v17 = *(v106 + 16) + v15;
          if (v16)
          {
            BUG();
          }

          v107 = v14;
          v91 = v13;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataValue.ValueType>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v17))
          {
            v22 = countAndFlagsBits;
            v18 = v9;
            v19 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
            LOBYTE(v21) = v21 & 1;
            LOBYTE(v22) = v107;
            v23 = v22;
            LOBYTE(v23) = v107 & 1;
            if ((v107 & 1) != v21)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v19 = v91;
            LOBYTE(v22) = v107;
          }

          v60 = v98;
          v106 = v98;
          if (v22)
          {
            *(v98[7] + v19) = 0;
            goto LABEL_67;
          }

          v98[(v19 >> 6) + 8] |= 1 << v19;
          v71 = v98[6];
          v72 = 16 * v19;
          *(v71 + v72) = countAndFlagsBits;
          *(v71 + v72 + 8) = v9;
          *(v98[7] + v19) = 0;
          v73 = v98[2];
          v16 = __OFADD__(1, v73);
          v64 = v73 + 1;
          if (v16)
          {
            BUG();
          }

          goto LABEL_71;
        case 1:
          v102 = v106;
          v42 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
          v44 = (v43 & 1) == 0;
          v16 = __OFADD__(*(v106 + 16), v44);
          v45 = *(v106 + 16) + v44;
          if (v16)
          {
            BUG();
          }

          v111 = v43;
          v95 = v42;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataValue.ValueType>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v45))
          {
            v47 = countAndFlagsBits;
            v18 = v9;
            v46 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
            LOBYTE(v21) = v21 & 1;
            LOBYTE(v47) = v111;
            v23 = v47;
            LOBYTE(v23) = v111 & 1;
            if ((v111 & 1) != v21)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v46 = v95;
            LOBYTE(v47) = v111;
          }

          v60 = v102;
          v106 = v102;
          if (v47)
          {
            *(v102[7] + v46) = 1;
            goto LABEL_67;
          }

          v102[(v46 >> 6) + 8] |= 1 << v46;
          v74 = v102[6];
          v75 = 16 * v46;
          *(v74 + v75) = countAndFlagsBits;
          *(v74 + v75 + 8) = v9;
          *(v102[7] + v46) = 1;
          v76 = v102[2];
          v16 = __OFADD__(1, v76);
          v64 = v76 + 1;
          if (v16)
          {
            BUG();
          }

          goto LABEL_71;
        case 2:
          v100 = v106;
          v30 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
          v32 = (v31 & 1) == 0;
          v16 = __OFADD__(*(v106 + 16), v32);
          v33 = *(v106 + 16) + v32;
          if (v16)
          {
            BUG();
          }

          v109 = v31;
          v93 = v30;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataValue.ValueType>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v33))
          {
            v35 = countAndFlagsBits;
            v18 = v9;
            v34 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
            LOBYTE(v21) = v21 & 1;
            LOBYTE(v35) = v109;
            v23 = v35;
            LOBYTE(v23) = v109 & 1;
            if ((v109 & 1) != v21)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v34 = v93;
            LOBYTE(v35) = v109;
          }

          v60 = v100;
          v106 = v100;
          if (v35)
          {
            *(v100[7] + v34) = 2;
            goto LABEL_67;
          }

          v100[(v34 >> 6) + 8] |= 1 << v34;
          v65 = v100[6];
          v66 = 16 * v34;
          *(v65 + v66) = countAndFlagsBits;
          *(v65 + v66 + 8) = v9;
          *(v100[7] + v34) = 2;
          v67 = v100[2];
          v16 = __OFADD__(1, v67);
          v64 = v67 + 1;
          if (v16)
          {
            BUG();
          }

          goto LABEL_71;
        case 3:
          v101 = v106;
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
          v38 = (v37 & 1) == 0;
          v16 = __OFADD__(*(v106 + 16), v38);
          v39 = *(v106 + 16) + v38;
          if (v16)
          {
            BUG();
          }

          v110 = v37;
          v94 = v36;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataValue.ValueType>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v39))
          {
            v41 = countAndFlagsBits;
            v18 = v9;
            v40 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
            LOBYTE(v21) = v21 & 1;
            LOBYTE(v41) = v110;
            v23 = v41;
            LOBYTE(v23) = v110 & 1;
            if ((v110 & 1) != v21)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v40 = v94;
            LOBYTE(v41) = v110;
          }

          v60 = v101;
          v106 = v101;
          if (v41)
          {
            *(v101[7] + v40) = 3;
            goto LABEL_67;
          }

          v101[(v40 >> 6) + 8] |= 1 << v40;
          v68 = v101[6];
          v69 = 16 * v40;
          *(v68 + v69) = countAndFlagsBits;
          *(v68 + v69 + 8) = v9;
          *(v101[7] + v40) = 3;
          v70 = v101[2];
          v16 = __OFADD__(1, v70);
          v64 = v70 + 1;
          if (v16)
          {
            BUG();
          }

          goto LABEL_71;
        case 4:
          v99 = v106;
          v24 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
          v26 = (v25 & 1) == 0;
          v16 = __OFADD__(*(v106 + 16), v26);
          v27 = *(v106 + 16) + v26;
          if (v16)
          {
            BUG();
          }

          v108 = v25;
          v92 = v24;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataValue.ValueType>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v27))
          {
            v29 = countAndFlagsBits;
            v18 = v9;
            v28 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
            LOBYTE(v21) = v21 & 1;
            LOBYTE(v29) = v108;
            v23 = v29;
            LOBYTE(v23) = v108 & 1;
            if ((v108 & 1) != v21)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v28 = v92;
            LOBYTE(v29) = v108;
          }

          v60 = v99;
          v106 = v99;
          if (v29)
          {
            *(v99[7] + v28) = 4;
            goto LABEL_67;
          }

          v99[(v28 >> 6) + 8] |= 1 << v28;
          v61 = v99[6];
          v62 = 16 * v28;
          *(v61 + v62) = countAndFlagsBits;
          *(v61 + v62 + 8) = v9;
          *(v99[7] + v28) = 4;
          v63 = v99[2];
          v16 = __OFADD__(1, v63);
          v64 = v63 + 1;
          if (v16)
          {
            BUG();
          }

          goto LABEL_71;
        case 5:
          v103 = v106;
          v48 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
          v50 = (v49 & 1) == 0;
          v16 = __OFADD__(*(v106 + 16), v50);
          v51 = *(v106 + 16) + v50;
          if (v16)
          {
            BUG();
          }

          v112 = v49;
          v96 = v48;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataValue.ValueType>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v51))
          {
            v53 = countAndFlagsBits;
            v18 = v9;
            v52 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
            LOBYTE(v21) = v21 & 1;
            LOBYTE(v53) = v112;
            v23 = v53;
            LOBYTE(v23) = v112 & 1;
            if ((v112 & 1) != v21)
            {
              goto LABEL_84;
            }
          }

          else
          {
            v52 = v96;
            LOBYTE(v53) = v112;
          }

          v60 = v103;
          v106 = v103;
          if (v53)
          {
            *(v103[7] + v52) = 6;
            goto LABEL_67;
          }

          v103[(v52 >> 6) + 8] |= 1 << v52;
          v77 = v103[6];
          v78 = 16 * v52;
          *(v77 + v78) = countAndFlagsBits;
          *(v77 + v78 + 8) = v9;
          *(v103[7] + v52) = 6;
          v79 = v103[2];
          v16 = __OFADD__(1, v79);
          v64 = v79 + 1;
          if (v16)
          {
            BUG();
          }

          goto LABEL_71;
        case 6:
          v104 = v106;
          v54 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
          v56 = (v55 & 1) == 0;
          v16 = __OFADD__(*(v106 + 16), v56);
          v57 = *(v106 + 16) + v56;
          if (v16)
          {
            BUG();
          }

          v113 = v55;
          v97 = v54;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataValue.ValueType>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v57))
          {
            v59 = countAndFlagsBits;
            v18 = v9;
            v58 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v9);
            LOBYTE(v21) = v21 & 1;
            LOBYTE(v59) = v113;
            v23 = v59;
            LOBYTE(v23) = v113 & 1;
            if ((v113 & 1) != v21)
            {
LABEL_84:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v18, v21, v23, v20);
              BUG();
            }
          }

          else
          {
            v58 = v97;
            LOBYTE(v59) = v113;
          }

          v60 = v104;
          v106 = v104;
          if (v59)
          {
            *(v104[7] + v58) = 5;
LABEL_67:
            v9;
          }

          else
          {
            v104[(v58 >> 6) + 8] |= 1 << v58;
            v80 = v104[6];
            v81 = 16 * v58;
            *(v80 + v81) = countAndFlagsBits;
            *(v80 + v81 + 8) = v9;
            *(v104[7] + v58) = 5;
            v82 = v104[2];
            v16 = __OFADD__(1, v82);
            v64 = v82 + 1;
            if (v16)
            {
              BUG();
            }

LABEL_71:
            v60[2] = v64;
          }

          v5 = v90 + 1;

          v83 = CMLSequence.size.getter();
          v84 = specialized RandomAccessCollection<>.distance(from:to:)(0, v83);

          if (v90 + 1 == v84)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  outlined consume of Result<_DataTable, Error>(v88, 0);
  return v106;
}

uint64_t MLDataTable.subscript.getter(Swift::String a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(v4 + 8);
  outlined copy of Result<_DataTable, Error>(*v4, v6);
  MLDataTable.subscript.getter(a1);
  outlined consume of Result<_DataTable, Error>(v5, v6);
  MLUntypedColumn.column<A>(type:)(a2, a3, a4);
  return outlined consume of Result<_DataTable, Error>(v8, v9);
}

uint64_t MLDataTable.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  if (*(v3 + 8))
  {
    v19[0] = *v3;
    outlined copy of Result<_DataTable, Error>(v5, 1);
    swift_errorRetain(v5);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v7 = _getErrorEmbeddedNSError<A>(_:)(v19, v6, &protocol self-conformance witness table for Error);
    if (v7)
    {
      v8 = v7;
      outlined consume of Result<_DataTable, Error>(v5, 1);
    }

    else
    {
      v8 = swift_allocError(v6, &protocol self-conformance witness table for Error, 0, 0);
      *v11 = v5;
    }

    result = outlined consume of Result<_DataTable, Error>(v5, 1);
    v13 = 1;
  }

  else
  {
    v9 = *(*(v5 + 16) + 16);

    v10 = specialized handling<A, B, C, D, E>(_:_:_:_:_:)(v9, a1, 1, a2);
    v14 = v10;
    if (!v10)
    {
      BUG();
    }

    v13 = 0;
    v15 = type metadata accessor for CMLTable();
    v16 = swift_allocObject(v15, 24, 7);
    *(v16 + 16) = v14;
    v17 = v16;
    v18 = type metadata accessor for _DataTable();
    v8 = swift_allocObject(v18, 40, 7);
    *(v8 + 24) = 0;
    *(v8 + 16) = v17;
    result = outlined consume of Result<_DataTable, Error>(v5, 0);
  }

  *v4 = v8;
  *(v4 + 8) = v13;
  return result;
}

uint64_t _DataTable.columnNames.getter()
{
  v2 = v0;
  v3 = *(v1 + 24);
  if (!v3)
  {
    v4 = specialized handling<A, B>(_:_:)(*(*(v1 + 16) + 16));
    if (!v4)
    {
      BUG();
    }

    v5 = type metadata accessor for CMLSequence();
    v6 = swift_allocObject(v5, 25, 7);
    *(v6 + 16) = v4;
    *(v6 + 24) = 1;
    v7 = *(v1 + 24);
    *(v1 + 24) = v6;
    v7;
    v3 = *(v1 + 24);
    if (!v3)
    {
      BUG();
    }
  }

  *v2 = v3;
  return v3;
}

uint64_t _DataTable.columnIndexes.getter()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    v28 = v0;
    _DataTable.columnNames.getter();

    v2 = CMLSequence.size.getter();
    v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

    if (v3)
    {
      v4 = 0;
      do
      {
        CMLSequence.value(at:)(v4);
        v30 = CMLFeatureValue.stringValue()();
        if (v5)
        {
          v5;

          _StringGuts.grow(_:)(37);
          0xE000000000000000;
          v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
          object = v25._object;
          String.append(_:)(v25);
          object;
          v27._countAndFlagsBits = 46;
          v27._object = 0xE100000000000000;
          String.append(_:)(v27);
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000022, "able.ColumnNames.swift" + 0x8000000000000000, "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
          BUG();
        }

        v6 = CMLSequence.size.getter();
        v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

        if (v4 >= v7)
        {
          BUG();
        }

        v29 = v4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v30._countAndFlagsBits, v30._object);
        v11 = (v9 & 1) == 0;
        v12 = __OFADD__(_swiftEmptyDictionarySingleton[2], v11);
        v13 = _swiftEmptyDictionarySingleton[2] + v11;
        if (v12)
        {
          BUG();
        }

        v14 = v9;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Int>);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v13))
        {
          v10 = specialized __RawDictionaryStorage.find<A>(_:)(v30._countAndFlagsBits, v30._object);
          LOBYTE(v17) = v17 & 1;
          if ((v14 & 1) != v17)
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v30._object, v17, v15, v16);
            BUG();
          }
        }

        if (v14)
        {
          v18 = v29;
          *(_swiftEmptyDictionarySingleton[7] + 8 * v10) = v29;
          v30._object;
        }

        else
        {
          _swiftEmptyDictionarySingleton[(v10 >> 6) + 8] |= 1 << v10;
          *(_swiftEmptyDictionarySingleton[6] + 16 * v10) = v30;
          v18 = v29;
          *(_swiftEmptyDictionarySingleton[7] + 8 * v10) = v29;
          v19 = _swiftEmptyDictionarySingleton[2];
          v12 = __OFADD__(1, v19);
          v20 = v19 + 1;
          if (v12)
          {
            BUG();
          }

          _swiftEmptyDictionarySingleton[2] = v20;
        }

        v4 = v18 + 1;

        v21 = CMLSequence.size.getter();
        v22 = specialized RandomAccessCollection<>.distance(from:to:)(0, v21);
      }

      while (v4 != v22);
    }

    v23 = *(v28 + 32);
    *(v28 + 32) = _swiftEmptyDictionarySingleton;
    v23;
    v1 = *(v28 + 32);
    if (!v1)
    {
      BUG();
    }
  }

  return v1;
}

uint64_t _DataTable.init(impl:)(uint64_t a1)
{
  result = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = a1;
  return result;
}

Swift::Void __swiftcall _DataTable.columnNamesDidChange()()
{
  v1 = *(v0 + 24);
  *(v0 + 24) = 0;
  v1;
  v2 = *(v0 + 32);
  *(v0 + 32) = 0;
  v2;
}

void *_DataTable.deinit()
{
  v0[2];
  v0[3];
  v0[4];
  return v0;
}

uint64_t MLDataTable.error.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  swift_errorRetain(*v0);
  return v1;
}

void MLDataTable.willMutate()()
{
  if (!*(v0 + 8))
  {
    v1 = *v0;
    *v0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v1);
    v1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v62 = *v0;
      v60 = *(v0 + 2);
      outlined copy of Result<_DataTable, Error>(*v0, v60);
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v4 = empty;
      v5 = type metadata accessor for CMLTable();
      v6 = swift_allocObject(v5, 24, 7);
      *(v6 + 16) = v4;
      v7 = type metadata accessor for _DataTable();
      v8 = swift_allocObject(v7, 40, 7);
      *(v8 + 24) = 0;
      *(v8 + 16) = v6;
      v9 = *v0;
      v10 = *(v0 + 2);
      v8;
      outlined consume of Result<_DataTable, Error>(v9, v10);
      v56 = v8;
      *v0 = v8;
      *(v0 + 8) = 0;
      v55 = v0;
      if (v60)
      {
        outlined copy of Result<_DataTable, Error>(v62, 1);
        v11 = tc_v1_flex_list_create(0);
        if (!v11)
        {
          BUG();
        }

        v12 = v11;
        outlined consume of Result<_DataTable, Error>(v62, 1);
        v13 = type metadata accessor for CMLSequence();
        v14 = swift_allocObject(v13, 25, 7);
        *(v14 + 16) = v12;
        *(v14 + 24) = 1;
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(v62, 0);
        _DataTable.columnNames.getter();
        outlined consume of Result<_DataTable, Error>(v62, 0);
        v14 = v66;
      }

      v14;
      v15 = CMLSequence.size.getter();
      v16 = specialized RandomAccessCollection<>.distance(from:to:)(0, v15);
      v14;
      v17 = v14;
      if (v16)
      {
        v64 = 0;
        v67 = v8;
        v18 = 0;
        v58 = v14;
        while (1)
        {
          v63 = v18;
          v19 = CMLSequence.value(at:)(v18);
          v20 = CMLFeatureValue.stringValue()();
          object = v20._object;
          if (v21)
          {
            v21;
            v19;
            *&v66 = 0;
            *(&v66 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(37);
            *(&v66 + 1);
            *&v66 = 0xD000000000000022;
            *(&v66 + 1) = "able.ColumnNames.swift" + 0x8000000000000000;
            v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
            v52 = v51._object;
            String.append(_:)(v51);
            v52;
            v53._countAndFlagsBits = 46;
            v53._object = 0xE100000000000000;
            String.append(_:)(v53);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v66, *(&v66 + 1), "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
            BUG();
          }

          countAndFlagsBits = v20._countAndFlagsBits;
          v19;
          v17;
          v23 = CMLSequence.size.getter();
          v24 = specialized RandomAccessCollection<>.distance(from:to:)(0, v23);
          v17;
          if (v63 >= v24)
          {
            BUG();
          }

          if ((v60 & 1) == 0)
          {
            break;
          }

          swift_willThrow();
          outlined copy of Result<_DataTable, Error>(v62, 1);
          *&v66 = 0;
          *(&v66 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(34);
          *(&v66 + 1);
          *&v66 = 0xD00000000000001FLL;
          *(&v66 + 1) = "ml.activityclassifier" + 0x8000000000000000;
          String.append(_:)(__PAIR128__(object, countAndFlagsBits));
          v26._countAndFlagsBits = 34;
          v26._object = 0xE100000000000000;
          String.append(_:)(v26);
          v54 = v66;
          v27 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          v57 = swift_allocError(&type metadata for MLCreateError, v27, 0, 0);
          *v28 = v54;
          *(v28 + 16) = 0;
          *(v28 + 32) = 0;
          *(v28 + 48) = 1;
          outlined consume of Result<_DataTable, Error>(v62, v60);
          if (v64)
          {
            v65 = 1;
LABEL_17:
            v29 = v63;
            v30 = v67;
            *&v66 = v67;
            outlined copy of Result<_DataTable, Error>(v67, 1);
            swift_errorRetain(v30);
            v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
            v32 = v30;
            v33 = _getErrorEmbeddedNSError<A>(_:)(&v66, v31, &protocol self-conformance witness table for Error);
            if (v33)
            {
              v34 = v33;
              outlined consume of Result<_DataTable, Error>(v32, 1);
            }

            else
            {
              v34 = swift_allocError(v31, &protocol self-conformance witness table for Error, 0, 0);
              *v46 = v32;
            }

            v41 = v58;
            outlined consume of Result<_DataTable, Error>(v32, 1);
            v40 = v34;
            v39 = v65;
            goto LABEL_24;
          }

          *&v66 = 0;
          *(&v66 + 1) = 0xE000000000000000;
          v35 = v67;
          outlined copy of Result<_DataTable, Error>(v67, 0);
          _StringGuts.grow(_:)(36);
          *(&v66 + 1);
          *&v66 = 0xD000000000000021;
          *(&v66 + 1) = "Can't represent value as Int32." + 0x8000000000000000;
          String.append(_:)(__PAIR128__(object, countAndFlagsBits));
          v36._countAndFlagsBits = 39;
          v36._object = 0xE100000000000000;
          String.append(_:)(v36);
          v59 = v66;
          v37 = swift_allocError(&type metadata for MLCreateError, v27, 0, 0);
          *v38 = v59;
          *(v38 + 16) = 0;
          *(v38 + 32) = 0;
          *(v38 + 48) = 1;
          swift_willThrow();
          outlined consume of Result<_DataTable, Error>(v35, 0);
          v39 = 1;
          v40 = v37;
          v41 = v58;
          v29 = v63;
LABEL_24:
          outlined consume of Result<_DataTable, Error>(*v55, *(v55 + 2));
          object;
          outlined consume of Result<_DataTable, Error>(v57, v39);
          v67 = v40;
          *v55 = v40;
          *(v55 + 8) = 1;
          v64 = 1;
LABEL_25:
          v18 = v29 + 1;
          v17 = v41;
          v41;
          v47 = CMLSequence.size.getter();
          v48 = specialized RandomAccessCollection<>.distance(from:to:)(0, v47);
          v41;
          if (v18 == v48)
          {
            goto LABEL_28;
          }
        }

        v25 = *(v62 + 16);
        outlined copy of Result<_DataTable, Error>(v62, 0);
        v25;
        v42 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v25, countAndFlagsBits, object, type metadata accessor for CMLColumn, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
        v25;
        outlined consume of Result<_DataTable, Error>(v62, 0);
        v43 = type metadata accessor for _UntypedColumn();
        v44 = swift_allocObject(v43, 24, 7);
        v45 = v44;
        *(v44 + 16) = v42;
        if ((v64 & 1) == 0)
        {
          v49 = v42;
          v50 = *(v67 + 16);
          outlined copy of Result<_DataTable, Error>(v67, 0);
          outlined copy of Result<_DataTable, Error>(v45, 0);
          v49;
          CMLTable.addColumn(name:_:)(countAndFlagsBits, object, v49);
          v41 = v58;
          v64 = 0;
          outlined consume of Result<_DataTable, Error>(v45, 0);
          v49;
          outlined consume of Result<_DataTable, Error>(v67, 0);
          object;
          outlined consume of Result<_DataTable, Error>(v45, 0);
          v29 = v63;
          goto LABEL_25;
        }

        v65 = 0;
        v57 = v44;
        goto LABEL_17;
      }

LABEL_28:
      v17;
      _DataTable.columnNamesDidChange()();
      v56;
      outlined consume of Result<_DataTable, Error>(v62, v60);
    }
  }
}

uint64_t MLDataTable.addImpl(newColumn:named:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *v3;
  if (*(v3 + 8))
  {
    *&v19 = *v3;
    outlined copy of Result<_DataTable, Error>(v4, 1);
    swift_errorRetain(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(&v19, v5, &protocol self-conformance witness table for Error);
    if (v6)
    {
      v7 = v6;
      outlined consume of Result<_DataTable, Error>(v4, 1);
    }

    else
    {
      v7 = swift_allocError(v5, &protocol self-conformance witness table for Error, 0, 0);
      *v17 = v4;
    }

    v16 = 1;
    v15 = v4;
  }

  else
  {
    if (!*(a1 + 8))
    {
      v22 = a3;
      v11 = *a1;
      v20 = *(v4 + 16);
      v13 = *(v11 + 16);
      outlined copy of Result<_DataTable, Error>(v4, 0);
      outlined copy of Result<_DataTable, Error>(v11, 0);

      v14 = v22;
      v22 = v13;
      CMLTable.addColumn(name:_:)(a2, v14, v13);
      outlined consume of Result<_DataTable, Error>(v11, 0);

      return outlined consume of Result<_DataTable, Error>(v4, 0);
    }

    outlined copy of Result<_DataTable, Error>(v4, 0);
    _StringGuts.grow(_:)(36);
    0xE000000000000000;
    *&v19 = 0xD000000000000021;
    *(&v19 + 1) = "Can't represent value as Int32." + 0x8000000000000000;
    v9._countAndFlagsBits = a2;
    v9._object = a3;
    String.append(_:)(v9);
    v9._countAndFlagsBits = 39;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v21 = v19;
    v9._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v7 = swift_allocError(&type metadata for MLCreateError, v9._object, 0, 0);
    *v10 = v19;
    *(v10 + 16) = 0;
    *(v10 + 32) = 0;
    *(v10 + 48) = 1;
    swift_willThrow();
    v15 = v4;
    v16 = 0;
  }

  outlined consume of Result<_DataTable, Error>(v15, v16);
  result = outlined consume of Result<_DataTable, Error>(*v3, *(v3 + 8));
  *v3 = v7;
  *(v3 + 8) = 1;
  return result;
}

uint64_t _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(uint64_t a1)
{
  *&v41 = v2;
  v38 = v1;
  empty = tc_v1_sframe_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v4 = empty;
  v5 = type metadata accessor for CMLTable();
  v6 = swift_allocObject(v5, 24, 7);
  *(v6 + 16) = v4;
  v7 = type metadata accessor for _DataTable();
  v8 = swift_allocObject(v7, 40, 7);
  *(v8 + 24) = 0;
  *(v8 + 16) = v6;
  specialized _NativeDictionary.makeIterator()(a1);
  v9 = v29;
  v45 = v30;
  v42 = v32;
  v10 = v33;
  v44 = (v31 + 64) >> 6;
  v46 = a1;
  a1;

  v40 = v8;
  for (i = v29; ; v9 = i)
  {
    if (v10)
    {
      v11 = v42;
      goto LABEL_22;
    }

    v12 = v42 + 1;
    if (__OFADD__(1, v42))
    {
      BUG();
    }

    if (v12 >= v44)
    {
      break;
    }

    v10 = *(v45 + 8 * v12);
    if (v10)
    {
      v11 = v42 + 1;
    }

    else
    {
      v13 = v42 + 2;
      if (v42 + 2 >= v44)
      {
        break;
      }

      v10 = *(v45 + 8 * v12 + 8);
      if (!v10)
      {
        v13 = v42 + 3;
        if (v42 + 3 >= v44)
        {
          break;
        }

        v10 = *(v45 + 8 * v12 + 16);
        if (!v10)
        {
          v13 = v42 + 4;
          if (v42 + 4 >= v44)
          {
            break;
          }

          v10 = *(v45 + 8 * v12 + 24);
          if (!v10)
          {
            v13 = v42 + 5;
            if (v42 + 5 >= v44)
            {
              break;
            }

            v10 = *(v45 + 8 * v12 + 32);
            if (!v10)
            {
              v13 = v42 + 6;
              if (v42 + 6 >= v44)
              {
                break;
              }

              v10 = *(v45 + 8 * v12 + 40);
              if (!v10)
              {
                v13 = v42 + 7;
                if (v42 + 7 >= v44)
                {
                  break;
                }

                v10 = *(v45 + 8 * v12 + 48);
                if (!v10)
                {
                  v22 = v42 + 8;
                  v23 = v46;
                  while (v22 < v44)
                  {
                    v10 = *(v45 + 8 * v22++);
                    if (v10)
                    {
                      v11 = v22 - 1;
                      goto LABEL_22;
                    }
                  }

                  goto LABEL_33;
                }
              }
            }
          }
        }
      }

      v11 = v13;
    }

LABEL_22:
    _BitScanForward64(&v14, v10);
    v15 = *(v9 + 56);
    v16 = (v11 << 10) | (16 * v14);
    v17 = *(v15 + v16);
    if (*(v15 + v16 + 8))
    {
      outlined copy of Result<_DataTable, Error>(*(v15 + v16), 1);

      *&v34 = 0;
      *(&v34 + 1) = 0xE000000000000000;
      v35 = v17;
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      _print_unlocked<A, B>(_:_:)(&v35, &v34, v24, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v41 = v34;
      v25 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v26 = swift_allocError(&type metadata for MLCreateError, v25, 0, 0);
      *v27 = v41;
      *(v27 + 16) = 0;
      *(v27 + 32) = 0;
      *(v27 + 48) = 0;
      *&v41 = v26;
      swift_willThrow();
      outlined consume of Result<_DataTable, Error>(v17, 1);

      v46;
    }

    v37 = v10;
    v42 = v11;
    v18 = *(v9 + 48);
    v19 = *(v18 + v16 + 8);
    v36 = *(v18 + v16);
    v20 = *(v8 + 16);
    v21 = *(v17 + 16);
    outlined copy of Result<_DataTable, Error>(v17, 0);
    v39 = v17;
    outlined copy of Result<_DataTable, Error>(v17, 0);
    v19;

    CMLTable.addColumn(name:_:)(v36, v19, v21);
    if (v41)
    {
      v19;

      outlined consume of Result<_DataTable, Error>(v39, 0);
      outlined consume of Result<_DataTable, Error>(v39, 0);

      v46;
    }

    v10 = (v37 - 1) & v37;

    outlined consume of Result<_DataTable, Error>(v39, 0);
    outlined consume of Result<_DataTable, Error>(v39, 0);
    v19;
    v8 = v40;
  }

  v23 = v46;
LABEL_33:
  v23;

  result = v38;
  *v38 = v8;
  *(result + 8) = 0;
  return result;
}

uint64_t key path getter for MLDataTable.subscript(_:) : MLDataTable(uint64_t a1, Swift::String *a2)
{
  v3 = v2;
  v4 = *a1;
  v9 = *a2;
  v8 = *(a1 + 8);
  outlined copy of Result<_DataTable, Error>(*a1, v8);
  MLDataTable.subscript.getter(v9);
  outlined consume of Result<_DataTable, Error>(v4, v8);
  result = v6;
  *v3 = v6;
  *(v3 + 8) = v7;
  return result;
}

uint64_t key path setter for MLDataTable.subscript(_:) : MLDataTable(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v3 = *a3;
  v4 = a3[1];
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  v4;
  outlined copy of Result<_DataTable, Error>(v7, v5);
  return MLDataTable.subscript.setter(&v7, v3, v4);
}

uint64_t MLDataTable.setColumnImpl(newColumn:named:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v5 = *a1;
  v31 = *(a1 + 8);
  v6 = *v3;
  LOBYTE(v28) = *(v3 + 8);
  v26 = v3;
  v29 = v5;
  if (v28)
  {
    outlined copy of Result<_DataTable, Error>(v6, 1);
    v7 = tc_v1_flex_list_create(0);
    if (!v7)
    {
      BUG();
    }

    v8 = v7;
    v9 = type metadata accessor for CMLSequence();
    v10 = swift_allocObject(v9, 25, 7);
    *(v10 + 16) = v8;
    *(v10 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v6, 1);
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v6, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v6, 0);
    v10 = v24;
  }

  v25[0] = v30;
  v27 = a3;
  v25[1] = a3;
  v11 = alloca(24);
  v12 = alloca(32);
  v24 = v25;
  v13 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v23, v10);

  v14 = v26;
  if (v13)
  {
    MLDataTable.removeImpl(_:)(v30, v27);
  }

  if (v28)
  {
    v25[0] = v6;
    swift_errorRetain(v6);
    outlined copy of Result<_DataTable, Error>(v6, 1);
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v16 = _getErrorEmbeddedNSError<A>(_:)(v25, v15, &protocol self-conformance witness table for Error);
    if (v16)
    {
      v17 = v16;
      outlined consume of Result<_DataTable, Error>(v6, 1);
    }

    else
    {
      v17 = swift_allocError(v15, &protocol self-conformance witness table for Error, 0, 0);
      *v21 = v6;
    }

    outlined consume of Result<_DataTable, Error>(v6, 1);
    result = outlined consume of Result<_DataTable, Error>(*v14, *(v14 + 8));
    *v14 = v17;
    *(v14 + 8) = 1;
  }

  else
  {
    if (v31)
    {
      outlined copy of Result<_DataTable, Error>(v6, 0);
    }

    else
    {
      v28 = *(v6 + 16);
      v18 = v29;
      v19 = *(v29 + 16);
      outlined copy of Result<_DataTable, Error>(v6, 0);
      outlined copy of Result<_DataTable, Error>(v18, 0);

      v20 = v30;
      v30 = v19;
      CMLTable.addColumn(name:_:)(v20, v27, v19);
      outlined consume of Result<_DataTable, Error>(v29, 0);
    }

    return outlined consume of Result<_DataTable, Error>(v6, 0);
  }

  return result;
}

void (*MLDataTable.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t **a1, char a2)
{
  v5 = malloc(0x28uLL);
  *a1 = v5;
  v5[4] = v3;
  v5[3] = a3;
  v5[2] = a2;
  v8 = *v3;
  v9 = *(v3 + 8);
  v6._countAndFlagsBits = a2;
  v6._object = a3;
  MLDataTable.subscript.getter(v6);
  return MLDataTable.subscript.modify;
}

void MLDataTable.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v14 = **a1;
  v4 = *(v2 + 8);
  v3;
  v15 = v2[2];
  v5 = v2[4];
  if (a2)
  {
    v16 = v4;
    v6 = v14;
    outlined copy of Result<_DataTable, Error>(v14, v4);
    MLDataTable.willMutate()();
    v12 = v14;
    v13 = v4 & 1;
    MLDataTable.setColumnImpl(newColumn:named:)(&v12, v15, v3);
    v3;
    outlined consume of Result<_DataTable, Error>(v6, v16);
    if (!*(v5 + 8))
    {
      v7 = *v2[4];
      outlined copy of Result<_DataTable, Error>(v7, 0);
      _DataTable.columnNamesDidChange()();
      outlined consume of Result<_DataTable, Error>(v7, 0);
    }

    v8 = *v2;
    v9 = *(v2 + 2);
    goto LABEL_7;
  }

  MLDataTable.willMutate()();
  v10 = v14;
  v12 = v14;
  v13 = v4 & 1;
  MLDataTable.setColumnImpl(newColumn:named:)(&v12, v15, v3);
  v3;
  outlined consume of Result<_DataTable, Error>(v10, v4);
  if (!*(v5 + 8))
  {
    v11 = *v2[4];
    outlined copy of Result<_DataTable, Error>(v11, 0);
    _DataTable.columnNamesDidChange()();
    v8 = v11;
    LOBYTE(v9) = 0;
LABEL_7:
    outlined consume of Result<_DataTable, Error>(v8, v9);
  }

  free(v2);
}

{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  v9 = (*a1)[6];
  v5 = v2[3];
  v6 = v2[2];
  v7 = v3;
  v8 = v4 & 1;
  v5;
  if (a2)
  {
    outlined copy of Result<_DataTable, Error>(v3, v4);
    MLDataTable.subscript.setter(&v7, v6, v5);
    outlined consume of Result<_DataTable, Error>(*v2, *(v2 + 2));
  }

  else
  {
    MLDataTable.subscript.setter(&v7, v6, v5);
  }

  free(v2);
}

uint64_t key path getter for MLDataTable.subscript<A>(_:) : <A>MLDataTableA(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v13 = *(a2 + a3 - 16);
  v14 = *(a2 + a3 - 8);
  v6 = *a2;
  v7 = a2[1];
  v5 = *a1;
  v12 = *(a1 + 8);
  outlined copy of Result<_DataTable, Error>(*a1, v12);
  v8._countAndFlagsBits = v6;
  v8._object = v7;
  MLDataTable.subscript.getter(v8, v13, v14);
  outlined consume of Result<_DataTable, Error>(v5, v12);
  result = v10;
  *v4 = v10;
  *(v4 + 8) = v11;
  return result;
}

uint64_t key path setter for MLDataTable.subscript<A>(_:) : <A>MLDataTableA(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v3 = *a3;
  v4 = a3[1];
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  v4;
  outlined copy of Result<_DataTable, Error>(v7, v5);
  return MLDataTable.subscript.setter(&v7, v3, v4);
}

void (*MLDataTable.subscript.modify(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v7 = malloc(0x38uLL);
  *a1 = v7;
  v7[6] = v5;
  v7[5] = a5;
  v7[4] = a4;
  v7[3] = a3;
  v7[2] = a2;
  v10 = *v5;
  v11 = *(v5 + 8);
  v8._countAndFlagsBits = a2;
  v8._object = a3;
  MLDataTable.subscript.getter(v8, a4, a5);
  return MLDataTable.subscript.modify;
}

uint64_t MLDataTable.removeImpl(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    v12[0] = *v2;
    outlined copy of Result<_DataTable, Error>(v3, 1);
    swift_errorRetain(v3);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v5 = _getErrorEmbeddedNSError<A>(_:)(v12, v4, &protocol self-conformance witness table for Error);
    if (v5)
    {
      v6 = v5;
      outlined consume of Result<_DataTable, Error>(v3, 1);
    }

    else
    {
      v6 = swift_allocError(v4, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v3;
    }

    outlined consume of Result<_DataTable, Error>(v3, 1);
    v9 = 1;
  }

  else
  {
    v7 = *(v3 + 16);
    outlined copy of Result<_DataTable, Error>(*v2, 0);

    v8 = v7;
    v6 = 0;
    specialized String.withCString<A>(_:)(a1, a2, v8);
    v9 = 0;
    outlined consume of Result<_DataTable, Error>(v3, 0);
  }

  return outlined consume of Result<(), Error>(v6, v9);
}

uint64_t MLDataTable.renameImpl(named:to:)(Swift::String named, Swift::String to)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    v11[0] = *v2;
    outlined copy of Result<_DataTable, Error>(v3, 1);
    swift_errorRetain(v3);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v5 = _getErrorEmbeddedNSError<A>(_:)(v11, v4, &protocol self-conformance witness table for Error);
    if (v5)
    {
      v6 = v5;
      outlined consume of Result<_DataTable, Error>(v3, 1);
    }

    else
    {
      v6 = swift_allocError(v4, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v3;
    }

    outlined consume of Result<_DataTable, Error>(v3, 1);
    goto LABEL_8;
  }

  countAndFlagsBits = to._countAndFlagsBits;
  v11[1] = *(v3 + 16);
  toa = to._object;

  v8._countAndFlagsBits = countAndFlagsBits;
  v8._object = toa;
  CMLTable.renameColumn(named:to:)(named, v8);
  result = outlined consume of Result<_DataTable, Error>(v3, 0);
  if (v6)
  {
LABEL_8:
    result = outlined consume of Result<_DataTable, Error>(*v2, *(v2 + 8));
    *v2 = v6;
    *(v2 + 8) = 1;
  }

  return result;
}

Swift::Void __swiftcall MLDataTable.removeColumn(named:)(Swift::String named)
{
  MLDataTable.willMutate()();
  MLDataTable.removeImpl(_:)(named._countAndFlagsBits, named._object);
  if (!*(v1 + 8))
  {
    v2 = *v1;
    outlined copy of Result<_DataTable, Error>(v2, 0);
    _DataTable.columnNamesDidChange()();
    outlined consume of Result<_DataTable, Error>(v2, 0);
  }
}

uint64_t MLDataTable.randomSample(by:seed:)(uint64_t a1, double a2)
{
  v4 = v2;
  v5 = *v3;
  if (*(v3 + 8))
  {
    v21[0] = *v3;
    outlined copy of Result<_DataTable, Error>(v5, 1);
    swift_errorRetain(v5);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v7 = _getErrorEmbeddedNSError<A>(_:)(v21, v6, &protocol self-conformance witness table for Error);
    if (v7)
    {
      v8 = v7;
      outlined consume of Result<_DataTable, Error>(v5, 1);
    }

    else
    {
      v8 = swift_allocError(v6, &protocol self-conformance witness table for Error, 0, 0);
      *v13 = v5;
    }

    result = outlined consume of Result<_DataTable, Error>(v5, 1);
    v15 = 1;
  }

  else
  {
    if (a1 < 0)
    {
      BUG();
    }

    v10 = *(*(v5 + 16) + 16);
    v11 = *v3;
    *&v21[1] = a2;
    outlined copy of Result<_DataTable, Error>(v11, 0);
    v12 = specialized handling<A, B, C, D>(_:_:_:_:)(v10, a1);
    v16 = v12;
    if (!v12)
    {
      BUG();
    }

    v15 = 0;
    v17 = type metadata accessor for CMLTable();
    v18 = swift_allocObject(v17, 24, 7);
    *(v18 + 16) = v16;
    v19 = v18;
    v20 = type metadata accessor for _DataTable();
    v8 = swift_allocObject(v20, 40, 7);
    *(v8 + 24) = 0;
    *(v8 + 16) = v19;
    result = outlined consume of Result<_DataTable, Error>(v5, 0);
  }

  *v4 = v8;
  *(v4 + 8) = v15;
  return result;
}

uint64_t MLDataTable.exclude<A>(_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v16 = a3;
  v18 = v6;
  v17 = a2;
  v19 = a6;
  v10 = *v7;
  v11 = *(v7 + 8);
  v14 = a1;
  v8 = type metadata accessor for Array(0, a4);
  a1;
  swift_getWitnessTable(&protocol conformance descriptor for [A], v8);
  MLUntypedColumn.init<A>(_:)(&v14, v8);
  v14 = v12;
  v15 = v13;
  MLDataTable.filtered(isExcluding:values:in:)(v19, &v14, v17, v16);
  return outlined consume of Result<_DataTable, Error>(v14, v15);
}

char MLDataTable.filtered(isExcluding:values:in:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = v4;
  v6 = *v5;
  if (*(v5 + 8))
  {
    v19[0] = *v5;
    outlined copy of Result<_DataTable, Error>(v6, 1);
    swift_errorRetain(v6);
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v8 = _getErrorEmbeddedNSError<A>(_:)(v19, v7, &protocol self-conformance witness table for Error);
    if (v8)
    {
      v9 = v8;
      outlined consume of Result<_DataTable, Error>(v6, 1);
    }

    else
    {
      v9 = swift_allocError(v7, &protocol self-conformance witness table for Error, 0, 0);
      *v14 = v6;
    }

    outlined consume of Result<_DataTable, Error>(v6, 1);
    result = 1;
  }

  else
  {
    v18 = *a2;
    v11 = *(a2 + 8);
    v16 = v6;

    closure #1 in MLDataTable.filtered(isExcluding:values:in:)(&v16, v18, v11, a3, a4, a1);
    outlined consume of Result<_DataTable, Error>(v6, 0);
    v9 = v19[0];
    result = 0;
  }

  v15 = v17;
  *v17 = v9;
  *(v15 + 8) = result;
  return result;
}

uint64_t closure #1 in MLDataTable.filtered(isExcluding:values:in:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    v9._object = "el's set of labels." + 0x8000000000000000;
    v9._countAndFlagsBits = 0xD000000000000052;
    String.append(_:)(v9);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v22[0] = a2;
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(v22, &v20, v10, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    object = v20._object;
    String.append(_:)(v20);
    object;
    v9._countAndFlagsBits = 39;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v25 = v21;
    v9._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v9._object, 0, 0);
    *v12 = v25;
    *(v12 + 16) = 0;
    *(v12 + 32) = 0;
    *(v12 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v9._object);
  }

  else
  {
    v24 = v6;
    *&v25 = *(*a1 + 16);
    v16 = *(a2 + 16);
    v23 = a4;
    v22[1] = v7;
    outlined copy of Result<_DataTable, Error>(a2, 0);

    v17 = CMLTable.filtered(_:columnName:isExcluding:)(v16, v23, a5, a6);
    if (v7)
    {

      return outlined consume of Result<_DataTable, Error>(a2, 0);
    }

    else
    {
      v18 = v17;
      outlined consume of Result<_DataTable, Error>(a2, 0);

      v19 = type metadata accessor for _DataTable();
      result = swift_allocObject(v19, 40, 7);
      *(result + 24) = 0;
      *(result + 16) = v18;
      *v24 = result;
    }
  }

  return result;
}

uint64_t MLDataTable.join(with:on:type:)(uint64_t a1, uint64_t *a2, _BYTE *a3, double a4)
{
  v15 = v4;
  v16 = *a1;
  LOBYTE(v19) = *(a1 + 8);
  v6 = *v5;
  v7 = *(v5 + 8);
  switch(*a3)
  {
    case 0:
      v9 = *a3;
      v8 = 0x72656E6E69;
      goto LABEL_6;
    case 1:
      v8 = 0x726574756FLL;
      goto LABEL_6;
    case 2:
      v18[0] = 1952867692;
      v10 = 0xE400000000000000;
      goto LABEL_7;
    case 3:
      v8 = 0x7468676972;
LABEL_6:
      v18[0] = v8;
      v10 = 0xE500000000000000;
LABEL_7:
      v17 = v10;
      v18[1] = v10;
      a2;
      outlined copy of Result<_DataTable, Error>(v6, v7);
      v11 = v19;
      outlined copy of Result<_DataTable, Error>(v16, v19);
      v19 = specialized binaryDo<A, B, C>(_:_:_:)(v6, v7, v16, v19, a2, v18, a4);
      v13 = v12;
      outlined consume of Result<_DataTable, Error>(v16, v11);
      outlined consume of Result<_DataTable, Error>(v6, v7);
      v17;
      result = v15;
      *v15 = v19;
      *(v15 + 8) = v13 & 1;
      return result;
  }
}

uint64_t closure #1 in MLDataTable.join(with:on:type:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, double a5)
{
  v64 = a4;
  v8 = v5;
  v9 = v6;
  v67 = *a1;
  v68 = *a2;
  v10 = tc_v1_flex_list_create(0);
  if (!v10)
  {
    BUG();
  }

  v11 = v10;
  v65 = v8;
  v12 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v12, v58);
  v71 = inited;
  *(inited + 16) = v11;
  *(inited + 24) = 1;
  v14 = a3[2];
  if (v14)
  {
    v74 = type metadata accessor for CMLFeatureValue();
    a3;
    object = a3;
    v15 = a3 + 5;
    while (1)
    {
      v73 = v14;
      v16 = *(v15 - 1);
      v17 = *v15;
      swift_bridgeObjectRetain_n(*v15, 2);
      v18 = CMLFeatureValue.__allocating_init(_:)(v16, v17);
      if (v6)
      {
        break;
      }

      v19 = v18;
      v17;
      CMLSequence.append(_:)(v19);

      v15 += 2;
      v14 = (v73 - 1);
      if (v73 == (&dword_0 + 1))
      {
        object;
        goto LABEL_17;
      }
    }

    v50 = "CreateML/MLDataValueConvertible.swift";
    v51 = 37;
    v52 = 170;
    v53 = v6;
    goto LABEL_23;
  }

  _DataTable.columnNames.getter();
  v20 = v69;
  _DataTable.columnNames.getter();
  v66 = v69;
  swift_retain_n(v20, 2);
  v21 = CMLSequence.size.getter();
  v22 = specialized RandomAccessCollection<>.distance(from:to:)(0, v21);

  if (v22)
  {
    v23 = 0;
    v74 = v20;
    while (1)
    {
      CMLSequence.value(at:)(v23);
      if (v9)
      {
        break;
      }

      v73 = v23;
      v24 = CMLFeatureValue.stringValue()();
      object = v24._object;
      v9 = v25;
      if (v25)
      {
        v25;

        v69 = 0;
        v70 = 0xE000000000000000;
        _StringGuts.grow(_:)(37);
        v70;
        v69 = 0xD000000000000022;
        v70 = "able.ColumnNames.swift" + 0x8000000000000000;
        v62 = v73;
        v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v55 = v54._object;
        String.append(_:)(v54);
        v55;
        v56._countAndFlagsBits = 46;
        v56._object = 0xE100000000000000;
        String.append(_:)(v56);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v69, v70, "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
        BUG();
      }

      countAndFlagsBits = v24._countAndFlagsBits;

      v27 = CMLSequence.size.getter();
      v28 = specialized RandomAccessCollection<>.distance(from:to:)(0, v27);

      if (v73 >= v28)
      {
        BUG();
      }

      v29 = v73;
      v63 = countAndFlagsBits;
      v69 = countAndFlagsBits;
      v30 = object;
      v70 = object;
      v31 = alloca(24);
      v32 = alloca(32);
      v59 = &v69;
      if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v57, v66))
      {
        type metadata accessor for CMLFeatureValue();
        v30;
        v33 = CMLFeatureValue.__allocating_init(_:)(v63, v30);
        v30;
        CMLSequence.append(_:)(v33);

        v20 = v74;
        v29 = v73;
      }

      else
      {
        v30;
        v20 = v74;
      }

      v34 = CMLSequence.size.getter();
      v35 = v29 + 1;
      v36 = specialized RandomAccessCollection<>.distance(from:to:)(0, v34);

      v37 = v35 == v36;
      v23 = v35;
      if (v37)
      {
        goto LABEL_16;
      }
    }

    v50 = "CreateML/SequenceType.swift";
    v51 = 27;
    v52 = 76;
    v53 = v9;
LABEL_23:
    swift_unexpectedError(v53, v50, v51, 1, v52);
    BUG();
  }

LABEL_16:

  v20;
LABEL_17:
  v73 = &v57;
  v38 = *(v67 + 16);
  v39 = *(v68 + 16);
  object = *v64;
  v40 = *(v64 + 8);
  v41 = alloca(40);
  v42 = alloca(48);
  v59 = v38;
  v60 = v39;
  v61 = v71;
  v74 = v38;

  v40;
  v43 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.init(joiningMultiple:and:columnNames:method:), &v57, object, v40);
  if (v9)
  {

    v40;
    swift_setDeallocating(v71);
    v44 = CMLFeatureValue.deinit(a5);
    return swift_deallocClassInstance(v44, 25, 7);
  }

  else
  {
    v46 = v43;

    v40;

    v47 = type metadata accessor for CMLTable();
    v48 = swift_allocObject(v47, 24, 7);
    *(v48 + 16) = v46;
    v49 = type metadata accessor for _DataTable();
    result = swift_allocObject(v49, 40, 7);
    *(result + 24) = 0;
    *(result + 16) = v48;
    *v65 = result;
  }

  return result;
}

Swift::Int MLDataTable.JoinType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t closure #1 in MLDataTable.subscript.getter(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  v7 = a1[1];
  *v3 = *a1;
  v3[1] = v7;
  v7;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  v8._countAndFlagsBits = v6;
  v8._object = v7;
  MLDataTable.subscript.getter(v8);
  return outlined consume of Result<_DataTable, Error>(a2, a3);
}

uint64_t closure #2 in MLDataTable.subscript.getter(uint64_t *a1, uint64_t a2, int a3)
{
  v14 = a3;
  v13 = a2;
  v4 = v3;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v12 = v3 + 2;
  v8 = *(a1 + 24);
  v6;
  outlined copy of Result<_DataTable, Error>(v7, v8);
  outlined consume of Result<_DataTable, Error>(v7, v8);
  *v4 = v5;
  v4[1] = v6;
  v6;
  outlined copy of Result<_DataTable, Error>(v7, v8);
  v6;
  v10 = v13;
  v11 = v14 & 1;
  outlined copy of Result<_DataTable, Error>(v13, v14);
  MLUntypedColumn.subscript.getter(&v10);
  outlined consume of Result<_DataTable, Error>(v10, v11);
  return outlined consume of Result<_DataTable, Error>(v7, v8);
}

uint64_t MLDataTable.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v22[1] = v4;
  v23 = a1;
  v6 = *v5;
  LOBYTE(v27) = *(v5 + 8);
  v25 = a3;
  v26 = v6;
  v24 = a2;
  if (v27)
  {
    outlined copy of Result<_DataTable, Error>(v6, 1);
    v7 = tc_v1_flex_list_create(0);
    if (!v7)
    {
      BUG();
    }

    v8 = v7;
    v9 = type metadata accessor for CMLSequence();
    v10 = swift_allocObject(v9, 25, 7);
    *(v10 + 16) = v8;
    *(v10 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v6, 1);
    v11 = _swiftEmptyDictionarySingleton;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v6, 0);
    _DataTable.columnNames.getter(v6);
    outlined consume of Result<_DataTable, Error>(v6, 0);
    v10 = v29;
    outlined copy of Result<_DataTable, Error>(v6, 0);
    v11 = _DataTable.columnIndexes.getter();
    outlined consume of Result<_DataTable, Error>(v6, 0);
  }

  v12 = v28;
  v13 = swift_allocObject(&unk_3944F8, 64, 7);
  v14 = v25;
  v13[2] = v25;
  v13[3] = v12;
  v13[4] = v10;
  v13[5] = v11;
  v13[6] = v23;
  v13[7] = v24;
  if (v27)
  {
    v15 = v26;
    v29 = v26;
    outlined copy of Result<_DataTable, Error>(v26, 1);
    outlined copy of Result<_DataTable, Error>(v26, 1);
    v27 = v10;

    v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v17 = _getErrorEmbeddedNSError<A>(_:)(&v29, v16, &protocol self-conformance witness table for Error);
    if (v17)
    {
      v18 = v17;
      outlined consume of Result<_DataTable, Error>(v26, 1);
    }

    else
    {
      v18 = swift_allocError(v16, &protocol self-conformance witness table for Error, 0, 0);
      *v20 = v26;
    }

    outlined consume of Result<_DataTable, Error>(v15, 1);

    v19 = 1;
  }

  else
  {
    v22[0] = v26;
    outlined copy of Result<_DataTable, Error>(v26, 0);

    closure #2 in MLDataTable.map<A>(_:)(v22, partial apply for closure #1 in MLDataTable.map<A>(_:), v13, v14, v12);

    outlined consume of Result<_DataTable, Error>(v26, 0);

    v18 = v29;
    v19 = 0;
  }

  v29 = v18;
  v30 = v19;
  return MLDataColumn.init(from:)(&v29);
}

{
  v9 = *v4;
  v10 = *(v4 + 8);
  v7 = swift_allocObject(&unk_394520, 48, 7);
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a1;
  v7[5] = a2;

  MLDataTable.map<A>(_:)(partial apply for closure #1 in MLDataTable.map<A>(_:), v7, a3, a4);
}

uint64_t closure #1 in MLDataTable.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v24 = a4;
  v29 = type metadata accessor for Optional(0, a6);
  v30 = *(v29 - 8);
  v9 = *(v30 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v26 = v23;
  v27 = *(a6 - 8);
  v12 = *(v27 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v28 = v23;
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a1;
  v33 = a1;
  swift_retain_n(a1, 2);
  v31 = a2;

  v32 = a3;
  v15 = a3;
  v16 = a6;
  v17 = v26;
  v15;
  v24(v23);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    (*(v30 + 8))(v17, v29);
    type metadata accessor for CMLFeatureValue();
    v18 = CMLFeatureValue.__allocating_init()(0);
    v33;
    v32;
  }

  else
  {
    v19 = v28;
    v20 = v17;
    v21 = v27;
    (*(v27 + 32))(v28, v20, v16);
    v18 = MLDataValueConvertible.featureValue.getter(v16, a7);
    v33;
    v32;

    (*(v21 + 8))(v19, v16);
  }

  return v18;
}

uint64_t closure #2 in MLDataTable.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5;
  v7 = *(*a1 + 16);
  (*(a5 + 8))(a4);
  result = CMLTable.apply(transform:type:)(a2, a3, 0x5060403020100uLL >> (8 * v13));
  if (!v6)
  {
    v9 = result;
    v10 = type metadata accessor for _UntypedColumn();
    result = swift_allocObject(v10, 24, 7);
    *(result + 16) = v9;
    *v12 = result;
  }

  return result;
}

uint64_t closure #1 in MLDataTable.map<A>(_:)(__int128 *a1, void (*a2)(__int128 *, void, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = *(a1 + 2);
  v9 = *a1;
  v10 = v7;
  a2(&v9, a2, a3);
  return __swift_storeEnumTagSinglePayload(v6, 0, 1, a4);
}

uint64_t MLDataTable.dropMissing()()
{
  v2 = v0;
  v3 = *v1;
  if (*(v1 + 8))
  {
    v18[0] = *v1;
    outlined copy of Result<_DataTable, Error>(v3, 1);
    swift_errorRetain(v3);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v5 = _getErrorEmbeddedNSError<A>(_:)(v18, v4, &protocol self-conformance witness table for Error);
    if (v5)
    {
      v6 = v5;
      outlined consume of Result<_DataTable, Error>(v3, 1);
    }

    else
    {
      v6 = swift_allocError(v4, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v3;
    }

    result = outlined consume of Result<_DataTable, Error>(v3, 1);
    v12 = 1;
  }

  else
  {
    v7 = *(*(v3 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(*v1, 0);
    v8 = tc_v1_flex_list_create(0);
    v9 = specialized handling<A, B, C, D>(_:_:_:_:)(v7, v8, "any");
    v13 = v9;
    if (!v9)
    {
      BUG();
    }

    v12 = 0;
    v14 = type metadata accessor for CMLTable();
    v15 = swift_allocObject(v14, 24, 7);
    *(v15 + 16) = v13;
    v16 = v15;
    v17 = type metadata accessor for _DataTable();
    v6 = swift_allocObject(v17, 40, 7);
    *(v6 + 24) = 0;
    *(v6 + 16) = v16;
    result = outlined consume of Result<_DataTable, Error>(v3, 0);
  }

  *v2 = v6;
  *(v2 + 8) = v12;
  return result;
}

uint64_t *MLDataTable.fillMissing(columnNamed:with:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v24 = v4;
  v6 = *v5;
  if (*(v5 + 8))
  {
    v22[0] = *v5;
    outlined copy of Result<_DataTable, Error>(v6, 1);
    swift_errorRetain(v6);
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v8 = _getErrorEmbeddedNSError<A>(_:)(v22, v7, &protocol self-conformance witness table for Error);
    if (v8)
    {
      v9 = v8;
      outlined consume of Result<_DataTable, Error>(v6, 1);
    }

    else
    {
      v9 = swift_allocError(v7, &protocol self-conformance witness table for Error, 0, 0);
      *v17 = v6;
    }

    outlined consume of Result<_DataTable, Error>(v6, 1);
    v20 = 1;
  }

  else
  {
    v10 = *(a3 + 16);
    v11 = *a3;
    v12 = *(a3 + 8);
    v27 = v6[2];
    v22[0] = v11;
    v23 = v10;
    v26 = a1;
    v25 = a2;
    outlined copy of Result<_DataTable, Error>(v6, 0);
    outlined copy of MLDataValue(v11, v12, v10);
    v13 = MLDataValue.featureValue.getter(a4);
    outlined consume of MLDataValue(v22[0], v12, v10);
    v14 = alloca(32);
    v15 = alloca(32);
    v22[0] = v27;
    v22[1] = v13;
    v16 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.fillMissing(columnNamed:with:), &v21, a1, a2, type metadata accessor for CMLTable, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));

    v19 = type metadata accessor for _DataTable();
    v9 = swift_allocObject(v19, 40, 7);
    *(v9 + 24) = 0;
    *(v9 + 16) = v16;
    v20 = 0;
    outlined consume of Result<_DataTable, Error>(v6, 0);
  }

  result = v24;
  *v24 = v9;
  *(result + 8) = v20;
  return result;
}

uint64_t MLDataTable.dropDuplicates()()
{
  v2 = v0;
  v3 = *v1;
  if (*(v1 + 8))
  {
    v18[0] = *v1;
    outlined copy of Result<_DataTable, Error>(v3, 1);
    swift_errorRetain(v3);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v5 = _getErrorEmbeddedNSError<A>(_:)(v18, v4, &protocol self-conformance witness table for Error);
    if (v5)
    {
      v6 = v5;
      outlined consume of Result<_DataTable, Error>(v3, 1);
    }

    else
    {
      v6 = swift_allocError(v4, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v3;
    }

    result = outlined consume of Result<_DataTable, Error>(v3, 1);
    v12 = 1;
  }

  else
  {
    v7 = *(*(v3 + 16) + 16);
    v8 = *v1;

    v9 = specialized handling<A, B>(_:_:)(v7);
    v13 = v9;
    if (!v9)
    {
      BUG();
    }

    v12 = 0;
    v14 = type metadata accessor for CMLTable();
    v15 = swift_allocObject(v14, 24, 7);
    *(v15 + 16) = v13;
    v16 = v15;
    v17 = type metadata accessor for _DataTable();
    v6 = swift_allocObject(v17, 40, 7);
    *(v6 + 24) = 0;
    *(v6 + 16) = v16;
    result = outlined consume of Result<_DataTable, Error>(v3, 0);
  }

  *v2 = v6;
  *(v2 + 8) = v12;
  return result;
}

uint64_t MLDataTable.prefix(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = v2;
  if (a1 <= 0)
  {
    v9 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v8 = swift_allocError(&type metadata for MLCreateError, v9, 0, 0);
    result = 0xD00000000000002BLL;
    *v11 = 0xD00000000000002BLL;
    *(v11 + 8) = "Column initialized as invalid" + 0x8000000000000000;
    *(v11 + 16) = 0;
    *(v11 + 32) = 0;
    *(v11 + 48) = 0;
LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

  v5 = *v3;
  if (*(v3 + 8))
  {
    v21[0] = *v3;
    outlined copy of Result<_DataTable, Error>(v5, 1);
    swift_errorRetain(v5);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v7 = _getErrorEmbeddedNSError<A>(_:)(v21, v6, &protocol self-conformance witness table for Error);
    if (v7)
    {
      v8 = v7;
      outlined consume of Result<_DataTable, Error>(v5, 1);
    }

    else
    {
      v8 = swift_allocError(v6, &protocol self-conformance witness table for Error, 0, 0);
      *v14 = v5;
    }

    result = outlined consume of Result<_DataTable, Error>(v5, 1);
    goto LABEL_9;
  }

  v12 = *(*(v5 + 16) + 16);

  v13 = a2(v12, a1);
  v16 = v13;
  if (!v13)
  {
    BUG();
  }

  v15 = 0;
  v17 = type metadata accessor for CMLTable();
  v18 = swift_allocObject(v17, 24, 7);
  *(v18 + 16) = v16;
  v19 = v18;
  v20 = type metadata accessor for _DataTable();
  v8 = swift_allocObject(v20, 40, 7);
  *(v8 + 24) = 0;
  *(v8 + 16) = v19;
  result = outlined consume of Result<_DataTable, Error>(v5, 0);
LABEL_10:
  *v4 = v8;
  *(v4 + 8) = v15;
  return result;
}

uint64_t MLDataTable.sort(columnNamed:byIncreasingOrder:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v6 = *v4;
  if (*(v4 + 8))
  {
    v18 = *v4;
    outlined copy of Result<_DataTable, Error>(v6, 1);
    swift_errorRetain(v6);
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v8 = _getErrorEmbeddedNSError<A>(_:)(&v18, v7, &protocol self-conformance witness table for Error);
    if (v8)
    {
      v9 = v8;
      outlined consume of Result<_DataTable, Error>(v6, 1);
    }

    else
    {
      v9 = swift_allocError(v7, &protocol self-conformance witness table for Error, 0, 0);
      *v12 = v6;
    }

    result = outlined consume of Result<_DataTable, Error>(v6, 1);
    v15 = 1;
  }

  else
  {
    v19 = &v17;
    v10 = alloca(25);
    v11 = alloca(32);
    v19 = *(v6 + 16);
    v20 = a3 & 1;

    v13 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.sorted(by:increasingOrder:), &v17, a1, a2, type metadata accessor for CMLTable, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    v14 = type metadata accessor for _DataTable();
    v9 = swift_allocObject(v14, 40, 7);
    *(v9 + 24) = 0;
    *(v9 + 16) = v13;
    v15 = 0;
    result = outlined consume of Result<_DataTable, Error>(v6, 0);
  }

  *v5 = v9;
  *(v5 + 8) = v15;
  return result;
}

uint64_t *MLDataTable.expand(columnNamed:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v23 = v5;
  v7 = *v6;
  if (*(v6 + 8))
  {
    v22 = *v6;
    outlined copy of Result<_DataTable, Error>(v7, 1);
    swift_errorRetain(v7);
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v9 = _getErrorEmbeddedNSError<A>(_:)(&v22, v8, &protocol self-conformance witness table for Error);
    if (v9)
    {
      v10 = v9;
      outlined consume of Result<_DataTable, Error>(v7, 1);
    }

    else
    {
      v10 = swift_allocError(v8, &protocol self-conformance witness table for Error, 0, 0);
      *v16 = v7;
    }

    outlined consume of Result<_DataTable, Error>(v7, 1);
    v20 = 1;
  }

  else
  {
    v24 = v21;
    v13 = *(v7 + 16);
    v14 = alloca(40);
    v15 = alloca(48);
    v22 = a3;
    v23 = a4;
    v24 = v13;

    v18 = specialized String.withCString<A>(_:)(a5, v21, a1, a2, type metadata accessor for CMLTable, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    v19 = type metadata accessor for _DataTable();
    v10 = swift_allocObject(v19, 40, 7);
    *(v10 + 24) = 0;
    *(v10 + 16) = v18;
    v20 = 0;
    outlined consume of Result<_DataTable, Error>(v7, 0);
  }

  result = v23;
  *v23 = v10;
  *(result + 8) = v20;
  return result;
}

uint64_t MLDataTable.show()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  v6 = *v1;
  v7 = v3;
  outlined copy of Result<_DataTable, Error>(v6, v3);
  v4 = MLDataTableVisualization.init(_:)(&v6);
  v2[3] = &type metadata for MLDataTableVisualization;
  result = lazy protocol witness table accessor for type MLDataTableVisualization and conformance MLDataTableVisualization();
  v2[4] = result;
  *v2 = v4;
  return result;
}

uint64_t MLDataTable.playgroundDescription.getter()
{
  v2 = v0;
  v3 = *v1;
  if (*(v1 + 8))
  {
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    v43[0] = v3;
    outlined copy of Result<_DataTable, Error>(v3, 1);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(v43, &v40, v4, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v42 = v40;
    v2[3] = &type metadata for String;
    result = outlined consume of Result<_DataTable, Error>(v3, 1);
    *v2 = v42;
  }

  else
  {
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    outlined copy of Result<_DataTable, Error>(v3, 0);
    _StringGuts.grow(_:)(36);
    v6 = *(v3 + 16);

    v7 = CMLTable.rows()();

    if (v8)
    {
      swift_unexpectedError(v8, "CreateML/MLDataTable.swift", 26, 1, 1330);
      BUG();
    }

    v43[0] = v7;
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v9._object;
    String.append(_:)(v9);
    object;
    v11._countAndFlagsBits = 0x20582073776F7220;
    v11._object = 0xE800000000000000;
    String.append(_:)(v11);
    *&v42 = v3;
    _DataTable.columnNames.getter(0x20582073776F7220);

    v12 = CMLSequence.size.getter();
    v13 = specialized RandomAccessCollection<>.distance(from:to:)(0, v12);

    v14 = CMLSequence.size.getter();
    v15 = specialized RandomAccessCollection<>.distance(from:to:)(0, v14);

    if (v15 < 0)
    {
      BUG();
    }

    v16 = CMLSequence.size.getter();
    v17 = specialized RandomAccessCollection<>.distance(from:to:)(0, v16);
    v43[0];
    if (v13 < 0 || v17 < v13)
    {
      BUG();
    }

    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v19 = v18._object;
    String.append(_:)(v18);
    v19;
    v20._object = "ed on this device" + 0x8000000000000000;
    v20._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v20);
    _DataTable.columnNames.getter(0xD000000000000016);

    v21 = CMLSequence.size.getter();
    v22 = specialized RandomAccessCollection<>.distance(from:to:)(0, v21);

    v23 = CMLSequence.size.getter();
    v24 = specialized RandomAccessCollection<>.distance(from:to:)(0, v23);

    if (v24 < 0)
    {
      BUG();
    }

    v25 = CMLSequence.size.getter();
    v26 = specialized RandomAccessCollection<>.distance(from:to:)(0, v25);
    v43[0];
    if (v22 < 0 || v26 < v22)
    {
      BUG();
    }

    v41 = v2;

    ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg565_s8CreateML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n(0, v22);
    v28 = Array.description.getter(ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n, &type metadata for String);
    v30 = v29;
    ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n;
    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v30;
    *(&v40 + 1);
    v32 = *(v42 + 16);
    outlined copy of Result<_DataTable, Error>(v42, 0);
    outlined copy of Result<_DataTable, Error>(v42, 0);

    v33 = CMLTable.description()();
    if (v34)
    {
      countAndFlagsBits = 0;
      v34;

      v36 = 0xE000000000000000;
    }

    else
    {
      countAndFlagsBits = v33._countAndFlagsBits;
      v36 = v33._object;
    }

    v37 = v41;
    v38 = v42;
    outlined consume of Result<_DataTable, Error>(v42, 0);
    outlined consume of Result<_DataTable, Error>(v42, 0);
    objc_allocWithZone(NSMutableAttributedString);
    v39 = @nonobjc NSMutableAttributedString.init(string:attributes:)(countAndFlagsBits, v36, 0);
    v41[3] = type metadata accessor for NSMutableAttributedString();
    result = outlined consume of Result<_DataTable, Error>(v38, 0);
    *v37 = v39;
  }

  return result;
}

uint64_t MLDataTable.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    v9[0] = v1;
    v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(v9, v8, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    return v8[0];
  }

  else
  {
    v4 = *(v1 + 16);
    outlined copy of Result<_DataTable, Error>(v1, 0);

    countAndFlagsBits = CMLTable.description()()._countAndFlagsBits;
    if (v6)
    {
      v6;

      v3 = 0;
    }

    else
    {
      v3 = countAndFlagsBits;
    }

    outlined consume of Result<_DataTable, Error>(v1, 0);
  }

  return v3;
}

id @nonobjc NSMutableAttributedString.init(string:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();
  a2;
  if (a3)
  {
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    a3;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6.super.isa];

  return v7;
}

uint64_t specialized closure #1 in LazyMapSequence<>.map<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  v13[0] = a1;
  v13[1] = a2;
  a6(v13);
  a3(v9);
  v7 = v11;
  LOBYTE(a3) = v12;
  v10;
  return outlined consume of Result<_DataTable, Error>(v7, a3);
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v39 = a3;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return a1;
  }

  v35 = v3;
  v37 = a1;
  v5 = (a1 + 48);
  while (1)
  {
    v33 = v4;
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v34 = v5;
    v32 = *v5;
    v30[0] = v6;
    v30[1] = v7;
    v8 = *v39;
    v7;
    v36 = v6;
    v38 = v7;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(v8[2], v11);
    v13 = v8[2] + v11;
    if (v12)
    {
      BUG();
    }

    v14 = v9;
    if (v8[3] >= v13)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Double>);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a2);
      v15 = *v39;
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v38);
      LOBYTE(v18) = v18 & 1;
      if ((v14 & 1) != v18)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v38, v18, v16, v17);
        BUG();
      }
    }

    if (v14)
    {
      break;
    }

    v19 = *v39;
    v19[(v10 >> 6) + 8] |= 1 << v10;
    v20 = v19[6];
    v21 = 16 * v10;
    *(v20 + v21) = v36;
    *(v20 + v21 + 8) = v38;
    *(v19[7] + 8 * v10) = v32;
    v22 = v19[2];
    v12 = __OFADD__(1, v22);
    v23 = v22 + 1;
    if (v12)
    {
      BUG();
    }

    v19[2] = v23;
    v5 = v34 + 3;
    a2 = 1;
    v4 = v33 - 1;
    if (v33 == 1)
    {
      return v37;
    }
  }

  v24 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow(&type metadata for _MergeError, &protocol witness table for _MergeError);
  v31 = v24;
  swift_errorRetain(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v31, v25, &type metadata for _MergeError, 0))
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v27._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v27._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v27);
    _print_unlocked<A, B>(_:_:)(v30, &v28, &type metadata for String, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v27._countAndFlagsBits = 39;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v28, v29, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  v37;
  v38;
  return v31;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, double a6)
{
  v51 = v6;
  v54 = a5;
  v57 = a4;
  a1;
  v9 = a3;
  v47 = a2 - a3;
  v52 = a1;
  v10 = (a1 + 48);
  v11 = 0;
  v48 = a3;
  v53 = a2;
  while (1)
  {
    v49 = v11 + a2;
    v45 = v11;
    if (v11 == *(v52 + 16))
    {
      return swift_bridgeObjectRelease_n(v52, 2);
    }

    if (v11 >= *(v52 + 16))
    {
      BUG();
    }

    if (!(v11 + v47))
    {
      return swift_bridgeObjectRelease_n(v52, 2);
    }

    if (v9 < a2)
    {
      BUG();
    }

    if (v49 >= v9)
    {
      BUG();
    }

    v12 = *(v10 - 2);
    v13 = *(v10 - 1);
    v58 = *v10;
    outlined copy of MLDataValue(v12, v13, v58);
    if (v58 == 0xFF)
    {
      return swift_bridgeObjectRelease_n(v52, 2);
    }

    v46 = v10;
    v42[0] = v12;
    v42[1] = v13;
    v43 = v58;
    v14 = *v54;
    v50 = v12;
    *&v15 = v12;
    v56 = v13;
    *(&v15 + 1) = v13;
    v55 = v58;
    specialized __RawDictionaryStorage.find<A>(_:)(v15, v58, a6);
    v18 = v17;
    *&v15 = (v16 & 1) == 0;
    v19 = __OFADD__(v14[2], v15);
    v20 = v14[2] + v15;
    if (v19)
    {
      BUG();
    }

    v21 = v16;
    if (v14[3] < v20)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, v57);
      v22 = *v54;
      v23 = v50;
      *&v24 = v50;
      *(&v24 + 1) = v56;
      specialized __RawDictionaryStorage.find<A>(_:)(v24, v55, a6);
      v18 = v27;
      LOBYTE(v28) = v28 & 1;
      if ((v21 & 1) != v28)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v56, v28, v25, v26);
        BUG();
      }

      goto LABEL_11;
    }

    a2 = v53;
    v23 = v50;
    if ((v57 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLDataValue, Int>);
      _NativeDictionary.copy()();
LABEL_11:
      a2 = v53;
    }

    v29 = v56;
    if (v21)
    {
      break;
    }

    v30 = *v54;
    v30[(v18 >> 6) + 8] |= 1 << v18;
    v31 = v30[6];
    v32 = 24 * v18;
    *(v31 + v32) = v23;
    *(v31 + v32 + 8) = v29;
    *(v31 + v32 + 16) = v58;
    *(v30[7] + 8 * v18) = v49;
    v33 = v30[2];
    v19 = __OFADD__(1, v33);
    v34 = v33 + 1;
    if (v19)
    {
      BUG();
    }

    v30[2] = v34;
    v10 = v46 + 24;
    v11 = v45 + 1;
    LOBYTE(v30) = 1;
    v57 = v30;
    v9 = v48;
  }

  v36 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow();
  v44 = v36;
  v51 = v36;
  swift_errorRetain(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v44, v37, &type metadata for _MergeError, 0))
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v39._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v39._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v39);
    _print_unlocked<A, B>(_:_:)(v42, &v40, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v40, v41, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  v38 = v52;
  v52;
  outlined consume of MLDataValue(v23, v56, v55);
  v38;
  return v44;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(unint64_t *), uint64_t a3, int a4, uint64_t *a5)
{
  v61 = v5;
  v60 = a5;
  v62 = a4;
  v52 = a2;
  v7 = a1;

  v58 = a3;

  v8 = 0;
  for (i = a1; ; v7 = i)
  {

    v9 = CMLSequence.size.getter();
    v10 = specialized RandomAccessCollection<>.distance(from:to:)(0, v9);

    if (v8 == v10)
    {
      goto LABEL_17;
    }

    v56 = v8;
    v11 = v61;
    CMLSequence.value(at:)(v8);
    if (v11)
    {
      swift_unexpectedError(v11, "CreateML/SequenceType.swift", 27, 1, 76);
      BUG();
    }

    v12 = CMLFeatureValue.stringValue()();
    v61 = v13;
    if (v13)
    {
      v61;

      v54 = 0;
      v55 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);
      v55;
      v54 = 0xD000000000000022;
      v55 = "able.ColumnNames.swift" + 0x8000000000000000;
      v45 = v56;
      v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      object = v41._object;
      String.append(_:)(v41);
      object;
      v43._countAndFlagsBits = 46;
      v43._object = 0xE100000000000000;
      String.append(_:)(v43);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v54, v55, "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
      goto LABEL_25;
    }

    countAndFlagsBits = v12._countAndFlagsBits;
    v15 = v12._object;

    v16 = CMLSequence.size.getter();
    v17 = specialized RandomAccessCollection<>.distance(from:to:)(0, v16);

    if (v56 >= v17)
    {
      BUG();
    }

    v54 = countAndFlagsBits;
    v55 = v15;
    v52(&v54);
    v15;
    if (!v48)
    {
      break;
    }

    v18 = v47;
    v53 = v49;
    v54 = v47;
    v55 = v48;
    v63 = v50;
    v19 = *v60;
    v57 = v48;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(*(v19 + 16), v22);
    v24 = *(v19 + 16) + v22;
    if (v23)
    {
      BUG();
    }

    v25 = v20;
    if (*(v19 + 24) >= v24)
    {
      if ((v62 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLUntypedColumn>);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      v26 = v60;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, v62);
      v27 = *v26;
      v28 = v57;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v57);
      LOBYTE(v31) = v31 & 1;
      if ((v25 & 1) != v31)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v28, v31, v29, v30);
        BUG();
      }
    }

    if (v25)
    {
      v39 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
      swift_willThrow();
      v51 = v39;
      swift_errorRetain(v39);
      v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      if (!swift_dynamicCast(&demangling cache variable for type metadata for Error, &v51, v40, &type metadata for _MergeError, 0))
      {

        outlined consume of Result<_DataTable, Error>(v53, v63);

        v57;
        return v51;
      }

      v45 = 0;
      v46 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);
      v44._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
      v44._countAndFlagsBits = 0xD00000000000001BLL;
      String.append(_:)(v44);
      _print_unlocked<A, B>(_:_:)(&v54, &v45, &type metadata for String, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v44._countAndFlagsBits = 39;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v45, v46, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
LABEL_25:
      BUG();
    }

    v32 = *v60;
    v32[(v21 >> 6) + 8] |= 1 << v21;
    v33 = v32[6];
    v34 = 16 * v21;
    *(v33 + v34) = v18;
    *(v33 + v34 + 8) = v57;
    v35 = v32[7];
    *(v35 + v34) = v53;
    *(v35 + v34 + 8) = v63 & 1;
    v36 = v32[2];
    v23 = __OFADD__(1, v36);
    v37 = v36 + 1;
    if (v23)
    {
      BUG();
    }

    v32[2] = v37;
    v8 = v56 + 1;
    LOBYTE(v32) = 1;
    v62 = v32;
  }

  v7 = i;
LABEL_17:
  v58, 2;
  return v7, 2;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v50 = a5;
  v43 = a1[2];
  if (!v43)
  {
    return a1;
  }

  v7 = __OFSUB__(a3, a2);
  v8 = a3 - a2;
  if (!v8)
  {
    return a1;
  }

  if (v8 < 0 != v7)
  {
    BUG();
  }

  v51 = a4;
  v44 = v5;
  v49 = a1[4];
  v10 = a1[5];
  v11 = v8;
  a1;
  v40 = v11;
  v42 = v11 - 1;
  v12 = a1 + 7;
  --v43;
  v13 = 0;
  v48 = a1;
  v41 = a2;
  while (1)
  {
    v46 = v12;
    v10;
    if (v40 == v13)
    {
      BUG();
    }

    v47 = v13;
    v38[0] = v49;
    v38[1] = v10;
    v14 = *v50;
    v45 = v10;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v10);
    v17 = (v15 & 1) == 0;
    v7 = __OFADD__(v14[2], v17);
    v18 = v14[2] + v17;
    if (v7)
    {
      BUG();
    }

    v19 = v15;
    if (v14[3] >= v18)
    {
      v24 = v46;
      v25 = v47;
      if ((v51 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Int>);
        _NativeDictionary.copy()();
        v25 = v47;
        v24 = v46;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, v51);
      v20 = *v50;
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v45);
      LOBYTE(v23) = v23 & 1;
      if ((v19 & 1) != v23)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v45, v23, v21, v22);
        BUG();
      }

      v24 = v46;
      v25 = v47;
    }

    if (v19)
    {
      break;
    }

    v26 = *v50;
    v26[(v16 >> 6) + 8] |= 1 << v16;
    v27 = v26[6];
    v28 = 16 * v16;
    *(v27 + v28) = v49;
    *(v27 + v28 + 8) = v45;
    *(v26[7] + 8 * v16) = a2 + v25;
    v29 = v26[2];
    v7 = __OFADD__(1, v29);
    v30 = v29 + 1;
    if (v7)
    {
      BUG();
    }

    v26[2] = v30;
    if (v43 == v25)
    {
      v34 = v48;
      return swift_bridgeObjectRelease_n(v34, 2);
    }

    v13 = v25 + 1;
    if ((v25 + 1) >= v48[2])
    {
      BUG();
    }

    if (v42 == v25)
    {
      v34 = v48;
      return swift_bridgeObjectRelease_n(v34, 2);
    }

    v49 = *(v24 - 1);
    v31 = v49;
    v10 = *v24;
    v12 = v24 + 2;
    LOBYTE(v31) = 1;
    v51 = v31;
  }

  v32 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow(&type metadata for _MergeError, &protocol witness table for _MergeError);
  v39 = v32;
  swift_errorRetain(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v39, v33, &type metadata for _MergeError, 0))
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v35._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v35._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v35);
    _print_unlocked<A, B>(_:_:)(v38, &v36, &type metadata for String, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v35._countAndFlagsBits = 39;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v36, v37, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  v45;
  swift_bridgeObjectRelease_n(v48, 2);
  return v39;
}

uint64_t sub_2660BD()
{
  v0[3];
  v0[4];
  v0[6];
  return swift_deallocObject(v0, 56, 7);
}

uint64_t sub_26611C()
{
  v0[4];
  v0[5];
  v0[7];
  return swift_deallocObject(v0, 64, 7);
}

uint64_t lazy protocol witness table accessor for type MLDataTableVisualization and conformance MLDataTableVisualization()
{
  result = lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization;
  if (!lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTableVisualization, &type metadata for MLDataTableVisualization);
    lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization;
  if (!lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTableVisualization, &type metadata for MLDataTableVisualization);
    lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization;
  if (!lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTableVisualization, &type metadata for MLDataTableVisualization);
    lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization = result;
  }

  return result;
}

uint64_t type metadata accessor for NSMutableAttributedString()
{
  result = lazy cache variable for type metadata for NSMutableAttributedString;
  if (!lazy cache variable for type metadata for NSMutableAttributedString)
  {
    v1 = objc_opt_self(NSMutableAttributedString);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for NSMutableAttributedString = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLDataTable.JoinType and conformance MLDataTable.JoinType()
{
  result = lazy protocol witness table cache variable for type MLDataTable.JoinType and conformance MLDataTable.JoinType;
  if (!lazy protocol witness table cache variable for type MLDataTable.JoinType and conformance MLDataTable.JoinType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.JoinType, &type metadata for MLDataTable.JoinType);
    lazy protocol witness table cache variable for type MLDataTable.JoinType and conformance MLDataTable.JoinType = result;
  }

  return result;
}

uint64_t outlined consume of Result<(), Error>(uint64_t a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  return result;
}

uint64_t outlined init with copy of (String, JSONType)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

unint64_t MLWordTagger.FeatureExtractorType.description.getter()
{
  result = 0xD000000000000016;
  if (*v0)
  {
    if (*v0 == 1)
    {
      return 0xD000000000000027;
    }

    else
    {
      return 0xD000000000000046;
    }
  }

  return result;
}

Swift::Int MLWordTagger.FeatureExtractorType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t *MLWordTagger.FeatureExtractorType.playgroundDescription.getter()
{
  v2 = 0xD000000000000016;
  if (*v1)
  {
    if (*v1 == 1)
    {
      v2 = 0xD000000000000027;
      v3 = "Unspecified Language";
    }

    else
    {
      v2 = 0xD000000000000046;
      v3 = "Average Tokens per Sequence";
    }
  }

  else
  {
    v3 = "ge Model Text Embedding";
  }

  result[3] = &type metadata for String;
  *result = v2;
  result[1] = v3 | 0x8000000000000000;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLWordTagger.FeatureExtractorType and conformance MLWordTagger.FeatureExtractorType()
{
  result = lazy protocol witness table cache variable for type MLWordTagger.FeatureExtractorType and conformance MLWordTagger.FeatureExtractorType;
  if (!lazy protocol witness table cache variable for type MLWordTagger.FeatureExtractorType and conformance MLWordTagger.FeatureExtractorType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLWordTagger.FeatureExtractorType, &type metadata for MLWordTagger.FeatureExtractorType);
    lazy protocol witness table cache variable for type MLWordTagger.FeatureExtractorType and conformance MLWordTagger.FeatureExtractorType = result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MLWordTagger.FeatureExtractorType(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFE)
  {
    v4 = a3 + 2;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFD)
  {
    v5 = a2 - 254;
    v6 = (v5 >> 8) + 1;
    *a1 = v5;
    result = result;
    switch(result)
    {
      case 0:
        return result;
      case 1:
        a1[1] = v6;
        break;
      case 2:
        *(a1 + 1) = v6;
        break;
      case 3:
LABEL_16:
        BUG();
      case 4:
        *(a1 + 1) = v6;
        break;
    }
  }

  else
  {
    result = result;
    switch(result)
    {
      case 0:
        goto LABEL_11;
      case 1:
        a1[1] = 0;
        goto LABEL_11;
      case 2:
        *(a1 + 1) = 0;
        goto LABEL_11;
      case 3:
        goto LABEL_16;
      case 4:
        *(a1 + 1) = 0;
LABEL_11:
        if (a2)
        {
          *a1 = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t String.featureValue.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CMLFeatureValue();
  a2;
  return CMLFeatureValue.__allocating_init(_:)(a1, a2);
}

uint64_t Int.dataValue.getter(uint64_t a1)
{
  *result = a1;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t String.dataValue.getter(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 2;
  return a2;
}

uint64_t Bool.featureValue.getter(char a1)
{
  v1 = specialized handling<A, B>(_:_:)(a1 & 1);
  if (!v1)
  {
    BUG();
  }

  v2 = type metadata accessor for CMLFeatureValue();
  swift_allocObject(v2, 25, 7);
  return CMLFeatureValue.init(rawValue:ownsValue:)(v1, 1);
}

uint64_t MLDataValueConvertible.featureValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  (*(v3 + 16))(&v12, v2, a1);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureValueConvertible);
  if (swift_dynamicCast(&v16, &v12, a1, v7, 6))
  {
    outlined init with take of TabularRegressionTask(&v16, &v12);
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_0Tm(&v12, v14);
    v10 = (*(v9 + 24))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v18 = 0;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v16, &demangling cache variable for type metadata for FeatureValueConvertible?);
    (*(a2 + 32))(a1, a2);
    v16 = v12;
    LOBYTE(v17) = v13;
    v10 = MLDataValue.featureValue.getter(*&v12);
    outlined consume of MLDataValue(v16, *(&v16 + 1), v17);
  }

  return v10;
}

uint64_t Double.dataValue.getter(double a1)
{
  *result = a1;
  *(result + 8) = 0;
  *(result + 16) = 1;
  return result;
}

uint64_t static MLDataValueConvertible.makeInstance(featureValue:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v30 = a3;
  v6 = v4;
  v7 = dynamic_cast_existential_1_conditional(v5, v5, &protocol descriptor for FeatureValueConvertible);
  if (v7)
  {
    v9 = v7;
    v29 = v6;
    v30 = a2;
    v25 = *(v8 + 16);
    v10 = v8;
    v28 = &v20;
    v26 = type metadata accessor for Optional(0, v7);
    v27 = *(v26 - 8);
    v11 = *(v27 + 64);
    v12 = alloca(v11);
    v13 = alloca(v11);

    v25(a1, v9, v10);
    if (__swift_getEnumTagSinglePayload(&v20, 1, v9) == 1)
    {
      (*(v27 + 8))(&v20, v26);
      v23 = 0;
      v22 = 0;
      v24 = 0;
    }

    else
    {
      *(&v23 + 1) = v9;
      v24 = v10;
      v15 = __swift_allocate_boxed_opaque_existential_0(&v22);
      (*(*(v9 - 8) + 32))(v15, &v20, v9);
    }

    v16 = v30;
    v17 = v29;
    v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureValueConvertible?);
    v19 = swift_dynamicCast(v17, &v22, v18, v16, 6);
    return __swift_storeEnumTagSinglePayload(v17, v19 ^ 1u, 1, v16);
  }

  else
  {

    MLDataValue.init(_:)(a1, a4);
    v20 = v22;
    v21 = v23;
    return (*(v30 + 16))(&v20, a2);
  }
}

uint64_t Double.init(from:)(uint64_t a1, double a2)
{
  specialized handling<A, B>(_:_:)(*(a1 + 16));

  return *&a2;
}

uint64_t String.init(from:)()
{
  countAndFlagsBits = CMLFeatureValue.stringValue()()._countAndFlagsBits;
  if (v1)
  {
    v1;

    return 0;
  }

  else
  {
    v2 = countAndFlagsBits;
  }

  return v2;
}

uint64_t Double.featureValue.getter()
{
  v0 = specialized handling<A, B>(_:_:)();
  if (!v0)
  {
    BUG();
  }

  v1 = type metadata accessor for CMLFeatureValue();
  swift_allocObject(v1, 25, 7);
  return CMLFeatureValue.init(rawValue:ownsValue:)(v0, 1);
}

uint64_t MLDataValueConvertible.featureColumn.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  (*(v3 + 16))(&v15, v2, a1);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for CMLColumnConvertible);
  if (swift_dynamicCast(v19, &v15, a1, v7, 6))
  {
    outlined init with take of TabularRegressionTask(v19, v16);
    v8 = v17;
    v9 = v18;
    __swift_project_boxed_opaque_existential_0Tm(v16, v17);
    v10 = (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for CMLColumnConvertible?);
    v11 = MLDataValueConvertible.featureValue.getter(a1, a2);
    v12 = specialized handling<A, B, C>(_:_:_:)(*(v11 + 16), 1);
    if (!v12)
    {
      BUG();
    }

    v13 = type metadata accessor for CMLColumn();
    v10 = swift_allocObject(v13, 24, 7);
    *(v10 + 16) = v12;
  }

  return v10;
}

void *Int.init(from:)(uint64_t a1)
{
  return Int.init(from:)(a1);
}

{
  result = *a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    outlined consume of MLDataValue(*a1, *(a1 + 8), v2);
    return 0;
  }

  return result;
}

void *protocol witness for MLDataValueConvertible.init(from:) in conformance Int(uint64_t a1)
{
  v2 = v1;
  result = Int.init(from:)(a1);
  *v2 = result;
  *(v2 + 8) = v4 & 1;
  return result;
}

uint64_t protocol witness for FeatureValueConvertible.init(from:) in conformance Int(uint64_t a1)
{
  v2 = v1;
  result = Int.init(from:)(a1);
  *v2 = result;
  *(v2 + 8) = v4 & 1;
  return result;
}

char Bool.init(from:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2 != 0;
  }

  outlined consume of MLDataValue(v2, *(a1 + 8), v3);
  return 2;
}

uint64_t Bool.dataValue.getter(char a1)
{
  *result = a1 & 1;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

BOOL Bool.init(from:)(uint64_t a1)
{
  v1 = specialized handling<A, B>(_:_:)(*(a1 + 16));

  return v1 != 0;
}

char protocol witness for MLDataValueConvertible.init(from:) in conformance Bool(uint64_t a1)
{
  v2 = v1;
  result = Bool.init(from:)(a1);
  *v2 = result;
  return result;
}

BOOL protocol witness for FeatureValueConvertible.init(from:) in conformance Bool(uint64_t a1)
{
  v2 = v1;
  result = Bool.init(from:)(a1);
  *v2 = result;
  return result;
}

uint64_t Int.init(from:)(uint64_t a1)
{
  v1 = specialized handling<A, B>(_:_:)(*(a1 + 16));

  return v1;
}

uint64_t Int.featureValue.getter(uint64_t a1)
{
  v1 = specialized handling<A, B>(_:_:)(a1);
  if (!v1)
  {
    BUG();
  }

  v2 = type metadata accessor for CMLFeatureValue();
  swift_allocObject(v2, 25, 7);
  return CMLFeatureValue.init(rawValue:ownsValue:)(v1, 1);
}

void *Double.init(from:)(uint64_t a1)
{
  result = *a1;
  v2 = *(a1 + 16);
  if (v2 != 1)
  {
    outlined consume of MLDataValue(*a1, *(a1 + 8), v2);
    return 0;
  }

  return result;
}

void *protocol witness for MLDataValueConvertible.init(from:) in conformance Double(uint64_t a1)
{
  v2 = v1;
  result = Double.init(from:)(a1);
  *v2 = result;
  *(v2 + 8) = v4 & 1;
  return result;
}

uint64_t protocol witness for FeatureValueConvertible.init(from:) in conformance Double(uint64_t a1, double a2)
{
  v3 = v2;
  result = Double.init(from:)(a1, a2);
  *v3 = result;
  *(v3 + 8) = v5 & 1;
  return result;
}

void *String.init(from:)(uint64_t a1)
{
  result = *a1;
  v2 = *(a1 + 16);
  if (v2 != 2)
  {
    outlined consume of MLDataValue(result, *(a1 + 8), v2);
    return 0;
  }

  return result;
}

void *protocol witness for MLDataValueConvertible.init(from:) in conformance String(uint64_t a1)
{
  v2 = v1;
  result = String.init(from:)(a1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t protocol witness for FeatureValueConvertible.init(from:) in conformance String()
{
  v1 = v0;
  result = String.init(from:)();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!swift_conformsToProtocol2(a2, a3))
  {
    return 0;
  }

  return a1;
}

uint64_t MLObjectDetector.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLObjectDetector(0);
  return outlined init with copy of MLObjectDetector.ModelParameters(v1 + *(v3 + 20), v2);
}

uint64_t type metadata accessor for MLObjectDetector(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLObjectDetector;
  if (!type metadata singleton initialization cache for MLObjectDetector)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLObjectDetector);
  }

  return result;
}

uint64_t outlined init with copy of MLObjectDetector.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLObjectDetector.validationMetrics.getter(double a1)
{
  v3 = v1;
  v4 = *v2;
  if (_Model.hasObjectDetectorValidationMetrics.getter(a1))
  {
    return _Model.makeDetectorMetrics(onTraining:)(0, a1);
  }

  v6 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  result = swift_allocError(&type metadata for MLCreateError, v6, 0, 0);
  *v7 = 0xD000000000000035;
  *(v7 + 8) = " the given table." + 0x8000000000000000;
  *(v7 + 16) = 0;
  *(v7 + 32) = 0;
  *(v7 + 48) = 0;
  *v3 = result;
  *(v3 + 8) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  return result;
}

uint64_t MLObjectDetector.init(trainingData:parameters:annotationType:)(void *a1, uint64_t a2, uint64_t a3, __m128 a4)
{
  v41 = v4;
  *(&parameterValue._object + 5) = *a3;
  v6 = *(a3 + 2);
  static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:)(a1, 0, 0, 0, 0, a4);
  if (v5)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a2, type metadata accessor for MLObjectDetector.ModelParameters);
    v7 = type metadata accessor for MLObjectDetector.DataSource;
    return outlined destroy of MLActivityClassifier.ModelParameters(a1, v7);
  }

  HIBYTE(parameterValue._object) = v6;
  v43 = a1;
  v45 = a2;
  v9 = countAndFlagsBits;
  v10 = v37;
  static MLObjectDetector.validateInput(trainingData:imageColumn:annotationColumn:)(&countAndFlagsBits, 0x7461506567616D69, 0xE900000000000068, 0x697461746F6E6E61, 0xEA00000000006E6FLL);
  v35 = type metadata accessor for MLObjectDetector(0);
  v11 = v41 + *(v35 + 20);
  v44 = 0;
  v12 = v45;
  v42 = v11;
  outlined init with copy of MLObjectDetector.ModelParameters(v45, v11);
  LOWORD(v39) = *(&parameterValue._object + 5);
  BYTE2(v39) = HIBYTE(parameterValue._object);
  parameterValue._countAndFlagsBits = v9;
  countAndFlagsBits = v9;
  v37 = v10;
  v13 = v44;
  v14 = static MLObjectDetector.validateAndConvertParameters(_:annotationType:imageColumn:annotationColumn:table:)(v12, &v39, 0x7461506567616D69, 0xE900000000000068, 0x697461746F6E6E61, 0xEA00000000006E6FLL, a4, &countAndFlagsBits);
  if (v13)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLObjectDetector.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v43, type metadata accessor for MLObjectDetector.DataSource);
    outlined consume of Result<_DataTable, Error>(parameterValue._countAndFlagsBits, v10);
    v7 = type metadata accessor for MLObjectDetector.ModelParameters;
    a1 = v42;
    return outlined destroy of MLActivityClassifier.ModelParameters(a1, v7);
  }

  v15 = v14;

  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLObjectDetector.init(trainingData:parameters:annotationType:), v15);
  v17 = v16;

  v44 = v15;
  v18 = v41;
  *v41 = v17;
  if (AnalyticsReporter.init()())
  {
    outlined consume of Result<_DataTable, Error>(parameterValue._countAndFlagsBits, v10);
  }

  else
  {
    countAndFlagsBits = parameterValue._countAndFlagsBits;
    v37 = v10;
    LODWORD(v42) = v10;
    outlined copy of Result<_DataTable, Error>(parameterValue._countAndFlagsBits, v10);
    v19 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(countAndFlagsBits, v37);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__((" training session" + 0x8000000000000000), 0xD000000000000011), v19);
    v20 = type metadata accessor for MLObjectDetector.ModelParameters(0);
    v21 = v20[6];
    v22 = v45;
    v23 = 0.0;
    if (!*(v45 + v21 + 8))
    {
      v23 = *(v45 + v21);
    }

    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), v23);
    v24 = v20[5];
    v25 = 0.0;
    if (!*(v22 + v24 + 8))
    {
      v25 = *(v22 + v24);
    }

    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(0xEA0000000000657ALL, 0x6953206863746142), v25);
    v26 = *(v22 + v20[7]);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(0xEF68746469572065, 0x7A69532064697247), v26);
    v27 = *(v22 + v20[8]);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(("etrics not available." + 0x8000000000000000), 0xD000000000000010), v27);
    outlined init with copy of Any?(v22 + v20[10], &countAndFlagsBits);
    if (v38)
    {
      v28 = swift_dynamicCast(&v39, &countAndFlagsBits, &type metadata for Any + 8, &type metadata for MLObjectDetector.ModelParameters.ModelAlgorithmType, 6);
      v29 = parameterValue._countAndFlagsBits;
      if (v28)
      {
        v30 = v39;
        v31 = v40;
      }

      else
      {
        v31 = 1;
        v30 = 0;
      }
    }

    else
    {
      outlined destroy of Any?(&countAndFlagsBits);
      v31 = 1;
      v30 = 0;
      v29 = parameterValue._countAndFlagsBits;
    }

    countAndFlagsBits = v30;
    v37 = v31 & 1;
    v32 = MLObjectDetector.ModelParameters.ModelAlgorithmType.dictionary.getter();
    parameterValue._countAndFlagsBits = Dictionary.description.getter(v32, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    v34 = v33;
    v32;
    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_objectDetector, __PAIR128__(0xE90000000000006DLL, 0x687469726F676C41), __PAIR128__(v34, parameterValue._countAndFlagsBits));
    v34;
    outlined consume of Result<_DataTable, Error>(v29, v42);

    v18 = v41;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLObjectDetector.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v43, type metadata accessor for MLObjectDetector.DataSource);
  result = *(v35 + 24);
  *(v18 + result) = *(&parameterValue._object + 5);
  *(v18 + result + 2) = HIBYTE(parameterValue._object);
  return result;
}

uint64_t closure #1 in MLObjectDetector.init(trainingData:parameters:annotationType:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = type metadata accessor for _Model();
  swift_allocObject(v3, 48, 7);

  v4 = swift_task_alloc(112);
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return _Model.init(type:parameters:modelOptions:)(17, a2, 0);
}

uint64_t partial apply for closure #1 in MLObjectDetector.init(trainingData:parameters:annotationType:)(uint64_t a1)
{
  v3 = swift_task_alloc(48);
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLObjectDetector.init(trainingData:parameters:annotationType:)(a1, v1);
}

uint64_t MLObjectDetector.init(trainingData:imageColumn:annotationColumn:annotationType:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, __int16 *a6, __m128 a7, uint64_t a8)
{
  v40 = v8;
  v11 = *a1;
  v12 = *(a1 + 8);
  v44 = *a6;
  v45 = *(a6 + 2);
  v42 = v11;
  v33 = v11;
  v46 = v12;
  v34 = v12;
  v41 = a4;
  v43 = a5;
  static MLObjectDetector.validateInput(trainingData:imageColumn:annotationColumn:)(&v33, a2, a3, a4, a5);
  if (v9)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a8, type metadata accessor for MLObjectDetector.ModelParameters);
    a3;
    v43;
    return outlined consume of Result<_DataTable, Error>(v42, v46);
  }

  v37 = type metadata accessor for MLObjectDetector(0);
  v36 = v40 + *(v37 + 20);
  outlined init with copy of MLObjectDetector.ModelParameters(a8, v36);
  LOWORD(v38) = v44;
  BYTE2(v38) = v45;
  v33 = v42;
  v34 = v46;
  v14 = static MLObjectDetector.validateAndConvertParameters(_:annotationType:imageColumn:annotationColumn:table:)(a8, &v38, a2, a3, v41, v43, a7, &v33);
  a3;
  v43;

  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLObjectDetector.init(trainingData:imageColumn:annotationColumn:annotationType:parameters:), v14);
  v16 = v15;

  v17 = v40;
  *v40 = v16;
  v18 = v17;
  if (!AnalyticsReporter.init()())
  {
    v41 = v14;
    v43 = 0;
    v33 = v42;
    v34 = v46;
    v19 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v33, v34);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__((" training session" + 0x8000000000000000), 0xD000000000000011), v19);
    v20 = type metadata accessor for MLObjectDetector.ModelParameters(0);
    v21 = v20[6];
    v22 = 0.0;
    if (!*(a8 + v21 + 8))
    {
      v22 = *(a8 + v21);
    }

    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), v22);
    v23 = v20[5];
    v24 = 0.0;
    if (!*(a8 + v23 + 8))
    {
      v24 = *(a8 + v23);
    }

    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(0xEA0000000000657ALL, 0x6953206863746142), v24);
    v25 = *(a8 + v20[7]);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(0xEF68746469572065, 0x7A69532064697247), v25);
    v26 = *(a8 + v20[8]);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(("etrics not available." + 0x8000000000000000), 0xD000000000000010), v26);
    outlined init with copy of Any?(a8 + v20[10], &v33);
    if (v35)
    {
      if (swift_dynamicCast(&v38, &v33, &type metadata for Any + 8, &type metadata for MLObjectDetector.ModelParameters.ModelAlgorithmType, 6))
      {
        v27 = v38;
        v28 = v39;
LABEL_14:
        v33 = v27;
        v34 = v28 & 1;
        v29 = MLObjectDetector.ModelParameters.ModelAlgorithmType.dictionary.getter();
        v30 = Dictionary.description.getter(v29, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
        v32 = v31;
        v29;
        AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_objectDetector, __PAIR128__(0xE90000000000006DLL, 0x687469726F676C41), __PAIR128__(v32, v30));

        v32;
        outlined destroy of MLActivityClassifier.ModelParameters(a8, type metadata accessor for MLObjectDetector.ModelParameters);
        v18 = v40;
        goto LABEL_15;
      }
    }

    else
    {
      outlined destroy of Any?(&v33);
    }

    v28 = 1;
    v27 = 0;
    goto LABEL_14;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(a8, type metadata accessor for MLObjectDetector.ModelParameters);

  outlined consume of Result<_DataTable, Error>(v42, v46);
LABEL_15:
  result = *(v37 + 24);
  *(v18 + result) = v44;
  *(v18 + result + 2) = v45;
  return result;
}

uint64_t closure #1 in MLObjectDetector.init(trainingData:imageColumn:annotationColumn:annotationType:parameters:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = type metadata accessor for _Model();
  swift_allocObject(v3, 48, 7);

  v4 = swift_task_alloc(112);
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:);
  return _Model.init(type:parameters:modelOptions:)(17, a2, 0);
}

uint64_t partial apply for closure #1 in MLObjectDetector.init(trainingData:imageColumn:annotationColumn:annotationType:parameters:)(uint64_t a1)
{
  v3 = swift_task_alloc(48);
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLObjectDetector.init(trainingData:imageColumn:annotationColumn:annotationType:parameters:)(a1, v1);
}

void *MLObjectDetector.debugDescription.getter(double a1)
{
  v2 = *v1;
  v50._object = ModelType.description.getter(*(*v1 + 32));
  v51 = v3;
  v4 = v1 + *(type metadata accessor for MLObjectDetector(0) + 20);
  v50._countAndFlagsBits = MLObjectDetector.ModelParameters.description.getter();
  v54 = v5;
  v55 = v2;
  _Model.makeDetectorMetrics(onTraining:)(1, a1);
  if (v35)
  {
    v37 = 0;
    *&v38 = 0xE000000000000000;
    v41 = v32;
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(&v41, &v37, v6, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    outlined consume of Result<MLObjectDetector.Metrics, Error>(v32, v33, *(&v33 + 1), v34, 1);
    v53._countAndFlagsBits = v37;
    v52 = v38;
  }

  else
  {
    outlined copy of Result<MLObjectDetector.Metrics, Error>(v32, v33, *(&v33 + 1), v34, 0);
    v33;
    v32;
    v37 = v32;
    v38 = v33;
    v39 = v34;
    v40 = 0;
    outlined copy of Result<MLObjectDetector.Metrics, Error>(v32, v33, *(&v33 + 1), v34, 0);
    v53._countAndFlagsBits = MLObjectDetectorMetrics.description.getter();
    v52 = v7;
    outlined consume of Result<MLObjectDetector.Metrics, Error>(v32, v33, *(&v33 + 1), v34, 0);
    outlined consume of Result<MLObjectDetector.Metrics, Error>(v32, v33, *(&v33 + 1), v34, 0);
  }

  if (_Model.hasObjectDetectorValidationMetrics.getter(a1))
  {
    _Model.makeDetectorMetrics(onTraining:)(0, a1);
    v8 = v37;
    v9 = *(&v38 + 1);
    v10 = v38;
    v11 = v39;
    v12 = v40;
  }

  else
  {
    v13 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v11 = 0;
    v8 = swift_allocError(&type metadata for MLCreateError, v13, 0, 0);
    *v14 = 0xD000000000000035;
    *(v14 + 8) = " the given table." + 0x8000000000000000;
    a1 = 0.0;
    *(v14 + 16) = 0;
    *(v14 + 32) = 0;
    *(v14 + 48) = 0;
    v37 = v8;
    v38 = 0;
    v39 = 0;
    v40 = 1;
    v12 = 1;
    v9 = 0;
    v10 = 0;
  }

  LOBYTE(v55) = v12;
  outlined consume of Result<MLObjectDetector.Metrics, Error>(v8, v10, v9, v11, v12);
  if ((_Model.hasObjectDetectorValidationMetrics.getter(a1) & 1) == 0)
  {
    v18 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v56 = 0;
    v15 = swift_allocError(&type metadata for MLCreateError, v18, 0, 0);
    *v19 = 0xD000000000000035;
    *(v19 + 8) = " the given table." + 0x8000000000000000;
    *(v19 + 16) = 0;
    *(v19 + 32) = 0;
    *(v19 + 48) = 0;
    v41 = v15;
    v43 = 0;
    v42 = 0;
    v44 = 1;
    v16 = 0;
    v17 = 0;
    goto LABEL_11;
  }

  _Model.makeDetectorMetrics(onTraining:)(0, a1);
  v15 = v41;
  v16 = *(&v42 + 1);
  v17 = v43;
  if (v44)
  {
    v56 = v42;
LABEL_11:
    object = 0;
    v46 = 0xE000000000000000;
    v36._countAndFlagsBits = v15;
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(&v36, &object, v20, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    outlined consume of Result<MLObjectDetector.Metrics, Error>(v15, v56, v16, v17, 1);
    v53._object = object;
    v56 = v46;
    goto LABEL_13;
  }

  v21 = v42;
  outlined copy of Result<MLObjectDetector.Metrics, Error>(v41, v42, *(&v42 + 1), v43, 0);
  v21;
  v15;
  object = v15;
  v46 = v21;
  v47 = v16;
  v48 = v17;
  v49 = 0;
  outlined copy of Result<MLObjectDetector.Metrics, Error>(v15, v21, v16, v17, 0);
  v53._object = MLObjectDetectorMetrics.description.getter();
  v56 = v22;
  outlined consume of Result<MLObjectDetector.Metrics, Error>(object, v46, v47, v48, v49);
  outlined consume of Result<MLObjectDetector.Metrics, Error>(v15, v21, v16, v17, 0);
LABEL_13:
  object = v50._object;
  v46 = v51;
  v51;
  v23._countAndFlagsBits = 0x656D617261500A0ALL;
  v23._object = 0xED00000A73726574;
  String.append(_:)(v23);
  v24 = v46;
  v46;
  v23._countAndFlagsBits = v50._countAndFlagsBits;
  v23._object = v54;
  String.append(_:)(v23);
  v24;
  v36._countAndFlagsBits = 0xD00000000000001ELL;
  v36._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  v23._countAndFlagsBits = v53._countAndFlagsBits;
  v25 = v52;
  v23._object = v52;
  String.append(_:)(v23);
  v26 = v36._object;
  String.append(_:)(v36);
  v26;
  if (v55)
  {
    v27 = v56;
    v28 = v54;
  }

  else
  {
    v36._countAndFlagsBits = 0xD000000000000020;
    v36._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v29._countAndFlagsBits = v53._object;
    v27 = v56;
    v29._object = v56;
    String.append(_:)(v29);
    v30 = v36._object;
    String.append(_:)(v36);
    v54;
    v28 = v25;
    v25 = v30;
  }

  v28;
  v25;
  v27;
  v51;
  return object;
}

NSAttributedString MLObjectDetector.playgroundDescription.getter(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for NSAttributedString();
  v4._countAndFlagsBits = MLObjectDetector.debugDescription.getter(a1);
  v4._object = v5;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v4).super.isa;
  v2[3].super.isa = v3;
  v2->super.isa = result.super.isa;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLObjectDetector(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));

    return v5;
  }

  v5 = a1;
  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v9);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v20 = type metadata accessor for DataFrame(0);
      (*(*(v20 - 8) + 16))(v7, v8, v20);
      v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      v22 = *(v21 + 48);
      *&v7[v22] = *&v8[v22];
      v23 = *&v8[v22 + 8];
      *&v7[v22 + 8] = v23;
      v24 = *(v21 + 64);
      *&v7[v24] = *&v8[v24];
      v25 = v9;
      v26 = *&v8[v24 + 8];
      *&v7[v24 + 8] = v26;
      v23;
      v26;
      v17 = 3;
      v18 = v7;
      v19 = v25;
      goto LABEL_16;
    case 2:
      v13 = *v8;
      v52 = v9;
      v14 = v8[8];
      outlined copy of Result<_DataTable, Error>(*v8, v14);
      *v7 = v13;
      v7[8] = v14;
      *(v7 + 2) = *(v8 + 2);
      v15 = *(v8 + 3);
      *(v7 + 3) = v15;
      *(v7 + 4) = *(v8 + 4);
      v16 = *(v8 + 5);
      *(v7 + 5) = v16;
      v15;
      v16;
      v17 = 2;
      v18 = v7;
      v19 = v52;
LABEL_16:
      swift_storeEnumTagMultiPayload(v18, v19, v17);
      goto LABEL_17;
    case 1:
      v11 = type metadata accessor for MLObjectDetector.DataSource(0);
      v51 = swift_getEnumCaseMultiPayload(v8, v11);
      switch(v51)
      {
        case 0u:
          v12 = type metadata accessor for URL(0);
          (*(*(v12 - 8) + 16))(v7, v8, v12);
          break;
        case 1u:
          v56 = v11;
          v35 = type metadata accessor for URL(0);
          v54 = v9;
          v36 = *(*(v35 - 8) + 16);
          v36(v7, v8, v35);
          v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
          v38 = v35;
          v11 = v56;
          v36(&v7[*(v37 + 48)], &v8[*(v37 + 48)], v38);
          v9 = v54;
          break;
        case 2u:
          v55 = v11;
          v27 = *v8;
          v53 = v8[8];
          outlined copy of Result<_DataTable, Error>(*v8, v53);
          *v7 = v27;
          v7[8] = v53;
          *(v7 + 2) = *(v8 + 2);
          v28 = *(v8 + 3);
          *(v7 + 3) = v28;
          *(v7 + 4) = *(v8 + 4);
          v29 = *(v8 + 5);
          *(v7 + 5) = v29;
          goto LABEL_13;
        case 3u:
          v30 = type metadata accessor for DataFrame(0);
          (*(*(v30 - 8) + 16))(v7, v8, v30);
          v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
          v32 = *(v31 + 48);
          *&v7[v32] = *&v8[v32];
          v28 = *&v8[v32 + 8];
          *&v7[v32 + 8] = v28;
          v33 = *(v31 + 64);
          *&v7[v33] = *&v8[v33];
          v55 = v11;
          v29 = *&v8[v33 + 8];
          *&v7[v33 + 8] = v29;
LABEL_13:
          v28;
          v34 = v29;
          v11 = v55;
          v34;
          break;
      }

      swift_storeEnumTagMultiPayload(v7, v11, v51);
      v17 = 1;
      v18 = v7;
      v19 = v9;
      goto LABEL_16;
  }

  memcpy(v7, v8, *(*(v9 - 8) + 64));
LABEL_17:
  v39 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v40 = v39[5];
  v7[v40 + 8] = v8[v40 + 8];
  *&v7[v40] = *&v8[v40];
  v41 = v39[6];
  *&v7[v41] = *&v8[v41];
  v7[v41 + 8] = v8[v41 + 8];
  *&v7[v39[7]] = *&v8[v39[7]];
  *&v7[v39[8]] = *&v8[v39[8]];
  v7[v39[9]] = v8[v39[9]];
  v42 = v39[10];
  v43 = &v7[v42];
  v44 = &v8[v42];
  v45 = *&v8[v42 + 24];
  if (v45)
  {
    *(v43 + 3) = v45;
    (**(v45 - 8))(v43, v44);
  }

  else
  {
    v46 = *v44;
    *(v43 + 1) = *(v44 + 1);
    *v43 = v46;
  }

  v47 = *(a3 + 24);
  *(v5 + v47 + 2) = *(a2 + v47 + 2);
  *(v5 + v47) = *(a2 + v47);
  return v5;
}

uint64_t destroy for MLObjectDetector(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  v4 = a1 + *(a2 + 20);
  v5 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v4, v5);
  switch(EnumCaseMultiPayload)
  {
    case 3:
LABEL_7:
      v10 = type metadata accessor for DataFrame(0);
      (*(*(v10 - 8) + 8))(v4, v10);
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *&v4[*(v11 + 48) + 8];
      v9 = *&v4[*(v11 + 64) + 8];
      goto LABEL_8;
    case 2:
LABEL_6:
      outlined consume of Result<_DataTable, Error>(*v4, *(v4 + 2));
      *(v4 + 3);
      v9 = *(v4 + 5);
LABEL_8:
      v9;
      break;
    case 1:
      v7 = type metadata accessor for MLObjectDetector.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v4, v7))
      {
        case 0u:
          v8 = type metadata accessor for URL(0);
          (*(*(v8 - 8) + 8))(v4, v8);
          break;
        case 1u:
          v13 = type metadata accessor for URL(0);
          v14 = *(*(v13 - 8) + 8);
          v14(v4, v13);
          v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
          v14(&v4[*(v15 + 48)], v13);
          break;
        case 2u:
          goto LABEL_6;
        case 3u:
          goto LABEL_7;
        default:
          goto LABEL_9;
      }

      break;
  }

LABEL_9:
  result = *(type metadata accessor for MLObjectDetector.ModelParameters(0) + 40);
  if (*&v4[result + 24])
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(&v4[result]);
  }

  return result;
}

void *initializeWithCopy for MLObjectDetector(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v7);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v18 = type metadata accessor for DataFrame(0);
      (*(*(v18 - 8) + 16))(v5, v6, v18);
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      v20 = *(v19 + 48);
      *&v5[v20] = *&v6[v20];
      v21 = *&v6[v20 + 8];
      *&v5[v20 + 8] = v21;
      v22 = *(v19 + 64);
      *&v5[v22] = *&v6[v22];
      v23 = v7;
      v24 = *&v6[v22 + 8];
      *&v5[v22 + 8] = v24;
      v21;
      v24;
      v15 = 3;
      v16 = v5;
      v17 = v23;
      break;
    case 2:
      v11 = *v6;
      v50 = v7;
      v12 = v6[8];
      outlined copy of Result<_DataTable, Error>(*v6, v12);
      *v5 = v11;
      v5[8] = v12;
      *(v5 + 2) = *(v6 + 2);
      v13 = *(v6 + 3);
      *(v5 + 3) = v13;
      *(v5 + 4) = *(v6 + 4);
      v14 = *(v6 + 5);
      *(v5 + 5) = v14;
      v13;
      v14;
      v15 = 2;
      v16 = v5;
      v17 = v50;
      break;
    case 1:
      v9 = type metadata accessor for MLObjectDetector.DataSource(0);
      v49 = swift_getEnumCaseMultiPayload(v6, v9);
      switch(v49)
      {
        case 0u:
          v10 = type metadata accessor for URL(0);
          (*(*(v10 - 8) + 16))(v5, v6, v10);
          break;
        case 1u:
          v54 = v9;
          v33 = type metadata accessor for URL(0);
          v52 = v7;
          v34 = *(*(v33 - 8) + 16);
          v34(v5, v6, v33);
          v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
          v36 = v33;
          v9 = v54;
          v34(&v5[*(v35 + 48)], &v6[*(v35 + 48)], v36);
          v7 = v52;
          break;
        case 2u:
          v53 = v9;
          v25 = *v6;
          v51 = v6[8];
          outlined copy of Result<_DataTable, Error>(*v6, v51);
          *v5 = v25;
          v5[8] = v51;
          *(v5 + 2) = *(v6 + 2);
          v26 = *(v6 + 3);
          *(v5 + 3) = v26;
          *(v5 + 4) = *(v6 + 4);
          v27 = *(v6 + 5);
          *(v5 + 5) = v27;
          goto LABEL_11;
        case 3u:
          v28 = type metadata accessor for DataFrame(0);
          (*(*(v28 - 8) + 16))(v5, v6, v28);
          v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
          v30 = *(v29 + 48);
          *&v5[v30] = *&v6[v30];
          v26 = *&v6[v30 + 8];
          *&v5[v30 + 8] = v26;
          v31 = *(v29 + 64);
          *&v5[v31] = *&v6[v31];
          v53 = v9;
          v27 = *&v6[v31 + 8];
          *&v5[v31 + 8] = v27;
LABEL_11:
          v26;
          v32 = v27;
          v9 = v53;
          v32;
          break;
      }

      swift_storeEnumTagMultiPayload(v5, v9, v49);
      v15 = 1;
      v16 = v5;
      v17 = v7;
      break;
    default:
      memcpy(v5, v6, *(*(v7 - 8) + 64));
      goto LABEL_15;
  }

  swift_storeEnumTagMultiPayload(v16, v17, v15);
LABEL_15:
  v37 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v38 = v37[5];
  v5[v38 + 8] = v6[v38 + 8];
  *&v5[v38] = *&v6[v38];
  v39 = v37[6];
  *&v5[v39] = *&v6[v39];
  v5[v39 + 8] = v6[v39 + 8];
  *&v5[v37[7]] = *&v6[v37[7]];
  *&v5[v37[8]] = *&v6[v37[8]];
  v5[v37[9]] = v6[v37[9]];
  v40 = v37[10];
  v41 = &v5[v40];
  v42 = &v6[v40];
  v43 = *&v6[v40 + 24];
  if (v43)
  {
    *(v41 + 3) = v43;
    (**(v43 - 8))(v41, v42);
  }

  else
  {
    v44 = *v42;
    *(v41 + 1) = *(v42 + 1);
    *v41 = v44;
  }

  v45 = *(a3 + 24);
  *(a1 + v45 + 2) = *(a2 + v45 + 2);
  *(a1 + v45) = *(a2 + v45);
  return a1;
}

void *assignWithCopy for MLObjectDetector(void *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;

  v51 = a3;
  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLObjectDetector.ModelParameters.ValidationData);
    v9 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v9);
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v20 = type metadata accessor for DataFrame(0);
        (*(*(v20 - 8) + 16))(v7, v8, v20);
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
        v22 = *(v21 + 48);
        *&v7[v22] = *&v8[v22];
        v23 = *&v8[v22 + 8];
        *&v7[v22 + 8] = v23;
        v24 = *(v21 + 64);
        *&v7[v24] = *&v8[v24];
        v25 = *&v8[v24 + 8];
        *&v7[v24 + 8] = v25;
        v23;
        v25;
        v49 = 3;
        break;
      case 2:
        v13 = *v8;
        v53 = v9;
        v14 = v8[8];
        outlined copy of Result<_DataTable, Error>(*v8, v14);
        *v7 = v13;
        v7[8] = v14;
        *(v7 + 2) = *(v8 + 2);
        v15 = *(v8 + 3);
        *(v7 + 3) = v15;
        *(v7 + 4) = *(v8 + 4);
        v16 = *(v8 + 5);
        *(v7 + 5) = v16;
        v15;
        v16;
        v17 = 2;
        v18 = v7;
        v19 = v53;
LABEL_16:
        swift_storeEnumTagMultiPayload(v18, v19, v17);
        goto LABEL_17;
      case 1:
        v11 = type metadata accessor for MLObjectDetector.DataSource(0);
        v52 = swift_getEnumCaseMultiPayload(v8, v11);
        switch(v52)
        {
          case 0u:
            v12 = type metadata accessor for URL(0);
            (*(*(v12 - 8) + 16))(v7, v8, v12);
            break;
          case 1u:
            v57 = v11;
            v35 = type metadata accessor for URL(0);
            v55 = v9;
            v36 = *(*(v35 - 8) + 16);
            v36(v7, v8, v35);
            v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
            v38 = v35;
            v11 = v57;
            v36(&v7[*(v37 + 48)], &v8[*(v37 + 48)], v38);
            v9 = v55;
            break;
          case 2u:
            v56 = v11;
            v26 = *v8;
            v54 = v9;
            v27 = v8[8];
            outlined copy of Result<_DataTable, Error>(*v8, v27);
            *v7 = v26;
            v7[8] = v27;
            v9 = v54;
            *(v7 + 2) = *(v8 + 2);
            v28 = *(v8 + 3);
            *(v7 + 3) = v28;
            *(v7 + 4) = *(v8 + 4);
            v29 = *(v8 + 5);
            *(v7 + 5) = v29;
            goto LABEL_12;
          case 3u:
            v30 = type metadata accessor for DataFrame(0);
            (*(*(v30 - 8) + 16))(v7, v8, v30);
            v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
            v32 = *(v31 + 48);
            *&v7[v32] = *&v8[v32];
            v28 = *&v8[v32 + 8];
            *&v7[v32 + 8] = v28;
            v33 = *(v31 + 64);
            *&v7[v33] = *&v8[v33];
            v56 = v11;
            v29 = *&v8[v33 + 8];
            *&v7[v33 + 8] = v29;
LABEL_12:
            v28;
            v34 = v29;
            v11 = v56;
            v34;
            break;
        }

        swift_storeEnumTagMultiPayload(v7, v11, v52);
        v49 = 1;
        break;
      default:
        memcpy(v7, v8, *(*(v9 - 8) + 64));
        goto LABEL_17;
    }

    v17 = v49;
    v18 = v7;
    v19 = v9;
    goto LABEL_16;
  }

LABEL_17:
  v39 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v40 = v39[5];
  v7[v40 + 8] = v8[v40 + 8];
  *&v7[v40] = *&v8[v40];
  v41 = v39[6];
  *&v7[v41] = *&v8[v41];
  v7[v41 + 8] = v8[v41 + 8];
  *&v7[v39[7]] = *&v8[v39[7]];
  *&v7[v39[8]] = *&v8[v39[8]];
  v7[v39[9]] = v8[v39[9]];
  v42 = v39[10];
  v43 = &v7[v42];
  v44 = &v8[v42];
  v45 = *&v8[v42 + 24];
  if (!*&v7[v42 + 24])
  {
    if (v45)
    {
      *(v43 + 3) = v45;
      (**(v45 - 8))(v43, v44);
      goto LABEL_24;
    }

LABEL_23:
    v46 = *v44;
    *(v43 + 1) = *(v44 + 1);
    *v43 = v46;
    goto LABEL_24;
  }

  if (!v45)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v7[v42]);
    goto LABEL_23;
  }

  __swift_assign_boxed_opaque_existential_0(&v7[v42], &v8[v42]);
LABEL_24:
  v47 = *(v51 + 24);
  *(a1 + v47) = *(a2 + v47);
  *(a1 + v47 + 1) = *(a2 + v47 + 1);
  *(a1 + v47 + 2) = *(a2 + v47 + 2);
  return a1;
}

void *initializeWithTake for MLObjectDetector(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v7, v8);
  if (EnumCaseMultiPayload == 3)
  {
    v15 = type metadata accessor for DataFrame(0);
    (*(*(v15 - 8) + 32))(v6, v7, v15);
    v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
    *&v6[*(v16 + 48)] = *&v7[*(v16 + 48)];
    *&v6[*(v16 + 64)] = *&v7[*(v16 + 64)];
    swift_storeEnumTagMultiPayload(v6, v8, 3);
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = type metadata accessor for MLObjectDetector.DataSource(0);
      v10 = swift_getEnumCaseMultiPayload(v7, v31);
      if (v10 == 3)
      {
        v18 = type metadata accessor for DataFrame(0);
        (*(*(v18 - 8) + 32))(v6, v7, v18);
        v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
        *&v6[*(v19 + 48)] = *&v7[*(v19 + 48)];
        *&v6[*(v19 + 64)] = *&v7[*(v19 + 64)];
        v27 = 3;
      }

      else
      {
        if (v10 != 1)
        {
          if (v10)
          {
            memcpy(v6, v7, *(*(v31 - 8) + 64));
            goto LABEL_14;
          }

          v11 = type metadata accessor for URL(0);
          (*(*(v11 - 8) + 32))(v6, v7, v11);
          v12 = v6;
          v13 = v31;
          v14 = 0;
LABEL_12:
          swift_storeEnumTagMultiPayload(v12, v13, v14);
LABEL_14:
          swift_storeEnumTagMultiPayload(v6, v8, 1);
          goto LABEL_15;
        }

        v29 = type metadata accessor for URL(0);
        v30 = *(*(v29 - 8) + 32);
        v30(v6, v7, v29);
        v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
        v30(&v6[*(v17 + 48)], &v7[*(v17 + 48)], v29);
        v27 = 1;
      }

      v14 = v27;
      v12 = v6;
      v13 = v31;
      goto LABEL_12;
    }

    memcpy(v6, v7, *(*(v8 - 8) + 64));
  }

LABEL_15:
  v20 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v21 = v20[5];
  v6[v21 + 8] = v7[v21 + 8];
  *&v6[v21] = *&v7[v21];
  v22 = v20[6];
  *&v6[v22] = *&v7[v22];
  v6[v22 + 8] = v7[v22 + 8];
  *&v6[v20[7]] = *&v7[v20[7]];
  *&v6[v20[8]] = *&v7[v20[8]];
  v6[v20[9]] = v7[v20[9]];
  v23 = v20[10];
  v24 = *&v7[v23 + 16];
  *&v6[v23] = *&v7[v23];
  *&v6[v23 + 16] = v24;
  v25 = *(a3 + 24);
  *(a1 + v25 + 2) = *(a2 + v25 + 2);
  *(a1 + v25) = *(a2 + v25);
  return a1;
}

void *assignWithTake for MLObjectDetector(void *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;

  v33 = a3;
  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLObjectDetector.ModelParameters.ValidationData);
    v9 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v9);
    if (EnumCaseMultiPayload == 3)
    {
      v17 = type metadata accessor for DataFrame(0);
      (*(*(v17 - 8) + 32))(v7, v8, v17);
      v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *&v7[*(v18 + 48)] = *&v8[*(v18 + 48)];
      *&v7[*(v18 + 64)] = *&v8[*(v18 + 64)];
      swift_storeEnumTagMultiPayload(v7, v9, 3);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload != 1)
    {
      memcpy(v7, v8, *(*(v9 - 8) + 64));
      goto LABEL_15;
    }

    v11 = type metadata accessor for MLObjectDetector.DataSource(0);
    v12 = swift_getEnumCaseMultiPayload(v8, v11);
    if (v12 == 3)
    {
      v22 = type metadata accessor for DataFrame(0);
      (*(*(v22 - 8) + 32))(v7, v8, v22);
      v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *&v7[*(v23 + 48)] = *&v8[*(v23 + 48)];
      *&v7[*(v23 + 64)] = *&v8[*(v23 + 64)];
      v16 = 3;
      v14 = v7;
      v15 = v11;
    }

    else if (v12 == 1)
    {
      v35 = v11;
      v19 = type metadata accessor for URL(0);
      v34 = v9;
      v20 = *(*(v19 - 8) + 32);
      v20(v7, v8, v19);
      v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
      v20(&v7[*(v21 + 48)], &v8[*(v21 + 48)], v19);
      v9 = v34;
      v16 = 1;
      v14 = v7;
      v15 = v35;
    }

    else
    {
      if (v12)
      {
        memcpy(v7, v8, *(*(v11 - 8) + 64));
        goto LABEL_14;
      }

      v13 = type metadata accessor for URL(0);
      (*(*(v13 - 8) + 32))(v7, v8, v13);
      v14 = v7;
      v15 = v11;
      v16 = 0;
    }

    swift_storeEnumTagMultiPayload(v14, v15, v16);
LABEL_14:
    swift_storeEnumTagMultiPayload(v7, v9, 1);
  }

LABEL_15:
  v24 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v25 = v24[5];
  v7[v25 + 8] = v8[v25 + 8];
  *&v7[v25] = *&v8[v25];
  v26 = v24[6];
  *&v7[v26] = *&v8[v26];
  v7[v26 + 8] = v8[v26 + 8];
  *&v7[v24[7]] = *&v8[v24[7]];
  *&v7[v24[8]] = *&v8[v24[8]];
  v7[v24[9]] = v8[v24[9]];
  v27 = v24[10];
  v28 = &v7[v27];
  if (*&v7[v27 + 24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v7[v27]);
  }

  v29 = *&v8[v27];
  *(v28 + 1) = *&v8[v27 + 16];
  *v28 = v29;
  v30 = *(v33 + 24);
  *(a1 + v30) = *(a2 + v30);
  *(a1 + v30 + 1) = *(a2 + v30 + 1);
  *(a1 + v30 + 2) = *(a2 + v30 + 2);
  return a1;
}

uint64_t sub_2693EF(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*a1 & 0xFFFFFFFF00000001) == 0)
    {
      return (*a1 >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for MLObjectDetector.ModelParameters(0);
    return __swift_getEnumTagSinglePayload(a1 + *(a3 + 20), a2, v5);
  }

  return result;
}

uint64_t sub_26946A(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for MLObjectDetector.ModelParameters(0);
    return __swift_storeEnumTagSinglePayload(a1 + *(a4 + 20), a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLObjectDetector(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.NativeObject + 64;
  result = type metadata accessor for MLObjectDetector.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    v3[2] = &unk_347B18;
    swift_initStructMetadata(a1, 256, 3, v3, a1 + 16);
    return 0;
  }

  return result;
}

void MLLogisticRegressionClassifier.Model.export(internalMetadata:)()
{
  v132 = v0;
  v126 = type metadata accessor for FeatureType(0);
  v125 = *(v126 - 8);
  v3 = *(v125 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v139 = &v113;
  v127 = type metadata accessor for LinearClassifierConfiguration.ClassLabels(0);
  v115 = *(v127 - 8);
  v6 = *(v115 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v114 = &v113;
  v133 = type metadata accessor for ModelKind(0);
  v124 = *(v133 - 8);
  v9 = *(v124 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v121 = &v113;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v116 = &v113;
  v134 = type metadata accessor for LinearClassifierConfiguration(0);
  v135 = *(v134 - 8);
  v14 = *(v135 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v136 = &v113;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Model?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v117 = &v113;
  v122 = type metadata accessor for Model(0);
  v123 = *(v122 - 8);
  v20 = *(v123 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v142 = &v113;
  v144 = type metadata accessor for URL.DirectoryHint(0);
  v130 = *(v144 - 1);
  v23 = *(v130 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v131 = &v113;
  v26 = type metadata accessor for UUID(0);
  v147 = *(v26 - 8);
  v27 = *(v147 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v141 = &v113;
  v138 = type metadata accessor for URL(0);
  v146 = *(v138 - 8);
  v30 = *(v146 + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v113 = &v113;
  v33 = alloca(v30);
  v34 = alloca(v30);
  v145 = &v113;
  v35 = alloca(v30);
  v36 = alloca(v30);
  v148 = &v113;
  v37 = alloca(v30);
  v38 = alloca(v30);
  v39 = v2;
  v40 = v2[2];
  if (!v40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, "ressorModel.swift" + 0x8000000000000000, "CreateML/MLLogisticRegressionClassifier.Model+CoreML.swift", 58, 2, 10, 0);
    goto LABEL_16;
  }

  v41 = v39;
  v42 = specialized FeatureVectorizer.Transformer.exportEncoders()(v40, v39[3], v39[4]);
  if (v1)
  {
    return;
  }

  v137 = v41;
  v118 = v40;
  v143 = v42;
  v140 = &v113;
  v43 = objc_opt_self(NSFileManager);
  v44 = [v43 defaultManager];
  v45 = v44;
  NSFileManager.createTemporaryModelDirectory()();
  if (v46)
  {
    v143;

    return;
  }

  v47 = [v43 defaultManager];
  v48 = v47;
  NSFileManager.temporaryModelDirectory.getter();

  v49 = v141;
  UUID.init()();
  v120 = UUID.uuidString.getter();
  v51 = v50;
  v119 = v50;
  (*(v147 + 8))(v49, v26);
  v128 = v120;
  v129 = v51;
  v52 = v131;
  v53 = v130;
  (*(v130 + 104))(v131, enum case for URL.DirectoryHint.inferFromPath(_:), v144);
  v54 = lazy protocol witness table accessor for type String and conformance String();
  v147 = 0;
  v55 = v145;
  URL.appending<A>(component:directoryHint:)(&v128, v52, &type metadata for String, v54);
  (*(v53 + 8))(v52, v144);
  v119;
  v56 = *(v146 + 8);
  v57 = v138;
  (v56)(v55, v138);
  v58 = v140;
  v59 = v148;
  URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
  v144 = v56;
  (v56)(v59, v57);
  v60 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v61 = v137 + *(v60 + 24);
  v62 = v147;
  BaseLogisticRegressionClassifierModel.export(to:)(v58);
  if (v62)
  {
    (v144)(v140, v138);
    v143;
    return;
  }

  v148 = v60;
  v63 = v113;
  (*(v146 + 16))(v113, v140, v138);
  Model.init(contentsOf:)(v63);
  v147 = 0;
  v64 = v117;
  specialized BidirectionalCollection.last.getter(v143);
  v65 = v122;
  if (__swift_getEnumTagSinglePayload(v64, 1, v122) == 1)
  {
    BUG();
  }

  v66 = Model.outputs.getter();
  v130 = *(v123 + 8);
  (v130)(v64, v65);
  Model.inputs.setter(v66);
  v67 = *v137;
  v68 = v137[1];
  v68;
  Model.predictedFeatureName.setter(v67, v68);
  v146 = v67;
  v128 = v67;
  v129 = v68;
  v145 = v68;
  v68;
  v69._countAndFlagsBits = 0x6C696261626F7250;
  v69._object = 0xEB00000000797469;
  String.append(_:)(v69);
  Model.predictedProbabilitiesName.setter(v128, v129);
  v70 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  Model.metadata.setter(v70);
  v71 = v116;
  Model.kind.getter();
  v72 = v71;
  v69._countAndFlagsBits = v71;
  v73 = v133;
  v74 = v124;
  LODWORD(v131) = (*(v124 + 88))(v69._countAndFlagsBits, v133);
  if (v131 != enum case for ModelKind.linearClassifier(_:))
  {
    (*(v74 + 8))(v72, v73);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001DLL, "ssifier.Model+CoreML.swift" + 0x8000000000000000, "CreateML/MLLogisticRegressionClassifier.Model+CoreML.swift", 58, 2, 31, 0);
LABEL_16:
    BUG();
  }

  (*(v74 + 96))(v72, v73);
  (*(v135 + 32))(v136, v72, v134);
  v75 = *(v148 + 7);
  v76 = *(v137 + v75);
  v77 = *(v137 + v75 + 8) == 0;
  v78 = v114;
  *v114 = v76;
  v79 = *(v115 + 104);
  if (v77)
  {
    v79(v78, enum case for LinearClassifierConfiguration.ClassLabels.int(_:), v127);
    v76;
    LinearClassifierConfiguration.classLabels.setter(v78);
    v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
    v91 = *(type metadata accessor for FeatureDescription(0) - 8);
    v141 = *(v91 + 72);
    v92 = swift_allocObject(v90, ((*(v91 + 80) + 32) & ~*(v91 + 80)) + 2 * v141, *(v91 + 80) | 7);
    *(v92 + 16) = 2;
    *(v92 + 24) = 4;
    v148 = v92;
    v93 = v145;
    v145;
    v94 = v139;
    FeatureType.IntParameters.init(optional:)(0);
    (*(v125 + 104))(v94, enum case for FeatureType.int(_:), v126);
    v95 = v146;
    FeatureDescription.init(name:type:description:)(v146, v93, v94, 0, 0xE000000000000000);
    v128 = v95;
    v129 = v93;
    v93;
    v96._countAndFlagsBits = 0x6C696261626F7250;
    v96._object = 0xEB00000000797469;
    String.append(_:)(v96);
    v87 = v128;
    v88 = v129;
    v89 = v139;
    static FeatureType.dictionaryWithIntKeys(optional:)(0);
  }

  else
  {
    v79(v78, enum case for LinearClassifierConfiguration.ClassLabels.string(_:), v127);
    v76;
    LinearClassifierConfiguration.classLabels.setter(v78);
    v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
    v81 = *(type metadata accessor for FeatureDescription(0) - 8);
    v141 = *(v81 + 72);
    v82 = swift_allocObject(v80, ((*(v81 + 80) + 32) & ~*(v81 + 80)) + 2 * v141, *(v81 + 80) | 7);
    *(v82 + 16) = 2;
    *(v82 + 24) = 4;
    v148 = v82;
    v83 = v145;
    v145;
    v84 = v139;
    FeatureType.StringParameters.init(optional:)(0);
    (*(v125 + 104))(v84, enum case for FeatureType.string(_:), v126);
    v85 = v146;
    FeatureDescription.init(name:type:description:)(v146, v83, v84, 0, 0xE000000000000000);
    v128 = v85;
    v129 = v83;
    v83;
    v86._countAndFlagsBits = 0x6C696261626F7250;
    v86._object = 0xEB00000000797469;
    String.append(_:)(v86);
    v87 = v128;
    v88 = v129;
    v89 = v139;
    static FeatureType.dictionaryWithStringKeys(optional:)(0);
  }

  FeatureDescription.init(name:type:description:)(v87, v88, v89, 0, 0xE000000000000000);
  Model.outputs.setter(v148);
  v97 = v121;
  (*(v135 + 16))(v121, v136, v134);
  v148 = *(v124 + 104);
  (v148)(v97, v131, v133);
  Model.kind.setter(v97);
  Model.init()();
  Model.specificationVersion.setter(1);
  v98 = v118;
  v118;
  v99 = v147;
  ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n(v98);
  v147 = v99;
  v98;
  Model.inputs.setter(ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n);
  v101 = Model.outputs.getter();
  Model.outputs.setter(v101);
  v102 = v145;
  v145;
  v103 = v146;
  Model.predictedFeatureName.setter(v146, v102);
  v128 = v103;
  v129 = v102;
  v102;
  v104._countAndFlagsBits = 0x6C696261626F7250;
  v104._object = 0xEB00000000797469;
  String.append(_:)(v104);
  Model.predictedProbabilitiesName.setter(v128, v129);
  v105 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
  v106 = v123;
  v107 = *(v123 + 80);
  v108 = (v107 + 32) & ~*(v123 + 80);
  v109 = swift_allocObject(v105, v108 + *(v123 + 72), v107 | 7);
  *(v109 + 16) = 1;
  *(v109 + 24) = 2;
  v104._countAndFlagsBits = v109 + v108;
  v110 = v122;
  (*(v106 + 16))(v104._countAndFlagsBits, v142, v122);
  v128 = v143;
  specialized Array.append<A>(contentsOf:)(v109);
  v111 = v121;
  PipelineClassifierConfiguration.init(models:names:)(v128, _swiftEmptyArrayStorage);
  (v148)(v111, enum case for ModelKind.pipelineClassifier(_:), v133);
  Model.kind.setter(v111);
  (*(v135 + 8))(v136, v134);
  (v130)(v142, v110);
  v112 = v140;
  $defer #1 () in MLLogisticRegressionClassifier.Model.export(internalMetadata:)();
  (v144)(v112, v138);
}

NSURL *$defer #1 () in MLLogisticRegressionClassifier.Model.export(internalMetadata:)()
{
  v0 = objc_opt_self(NSFileManager);
  v1 = [v0 defaultManager];
  v2 = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v10 = 0;
  v5 = [(NSURL *)v2 removeItemAtURL:v3 error:&v10];

  v6 = v10;
  if (v5)
  {
    return v10;
  }

  v8 = v10;
  v9 = _convertNSErrorToError(_:)(v6);

  swift_willThrow();
  v9;
  return __stack_chk_guard;
}

void *initializeBufferWithCopyOfBuffer for MLLinearRegressor.Regressor(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
    v9;
  }

  else
  {
    *a1 = *a2;
    v6 = a2[1];
    v3[1] = v6;
    v7 = a2[2];
    v3[2] = v7;
    v16 = v3 + 3;
    v17 = (a2 + 3);
    v8 = a2[6];
    v6;
    v7;
    if (v8)
    {
      v3[6] = v8;
      (**(v8 - 8))(v16, v17, v8);
    }

    else
    {
      v10 = *v17;
      *(v3 + 5) = *(a2 + 5);
      *v16 = v10;
    }

    *(v3 + 7) = *(a2 + 7);
    *(v3 + 9) = *(a2 + 9);
    v3[11] = a2[11];
    *(v3 + 96) = *(a2 + 96);
    v11 = *(a3 + 28);
    v12 = v3 + v11;
    v13 = a2 + v11;
    v14 = type metadata accessor for BaseLinearRegressor(0);
    (*(*(v14 - 8) + 16))(v12, v13, v14);
  }

  return v3;
}

uint64_t destroy for MLLinearRegressor.Regressor(void *a1, uint64_t a2)
{
  a1[1];
  a1[2];
  if (a1[6])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 3);
  }

  v2 = a1 + *(a2 + 28);
  v3 = type metadata accessor for BaseLinearRegressor(0);
  return (*(*(v3 - 8) + 8))(v2, v3);
}

uint64_t initializeWithCopy for MLLinearRegressor.Regressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v14 = (a1 + 24);
  v6 = *(a2 + 48);
  v4;
  v5;
  if (v6)
  {
    *(a1 + 48) = v6;
    (**(v6 - 8))(v14, a2 + 24, v6);
  }

  else
  {
    v7 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *v14 = v7;
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v8 = *(a3 + 28);
  v9 = a1 + v8;
  v10 = v8 + a2;
  v11 = type metadata accessor for BaseLinearRegressor(0);
  (*(*(v11 - 8) + 16))(v9, v10, v11);
  return a1;
}

uint64_t assignWithCopy for MLLinearRegressor.Regressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a1 + 8);
  *(a1 + 8) = v5;
  v5;
  v6;
  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  v7;
  v8;
  v9 = *(a2 + 48);
  if (!*(a1 + 48))
  {
    if (v9)
    {
      *(a1 + 48) = v9;
      (**(v9 - 8))(a1 + 24, a2 + 24);
      goto LABEL_8;
    }

LABEL_7:
    v10 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v10;
    goto LABEL_8;
  }

  if (!v9)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 24));
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0((a1 + 24), (a2 + 24));
LABEL_8:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v11 = *(a3 + 28);
  v12 = a1 + v11;
  v13 = v11 + a2;
  v14 = type metadata accessor for BaseLinearRegressor(0);
  (*(*(v14 - 8) + 24))(v12, v13, v14);
  return a1;
}

uint64_t initializeWithTake for MLLinearRegressor.Regressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  qmemcpy((a1 + 24), (a2 + 24), 0x49uLL);
  v3 = *(a3 + 28);
  v4 = type metadata accessor for BaseLinearRegressor(0);
  (*(*(v4 - 8) + 32))(a1 + v3, a2 + v3, v4);
  return a1;
}

uint64_t assignWithTake for MLLinearRegressor.Regressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v5;
  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v6;
  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 24));
  }

  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v8 = *(a3 + 28);
  v9 = a1 + v8;
  v10 = v8 + a2;
  v11 = type metadata accessor for BaseLinearRegressor(0);
  (*(*(v11 - 8) + 40))(v9, v10, v11);
  return a1;
}

uint64_t sub_26A5D5(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*(a1 + 8) & 0xFFFFFFFF00000001) == 0)
    {
      return (*(a1 + 8) >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for BaseLinearRegressor(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 28) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_26A65D(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseLinearRegressor(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 28) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for MLLinearRegressor.Regressor(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLinearRegressor.Regressor;
  if (!type metadata singleton initialization cache for MLLinearRegressor.Regressor)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLinearRegressor.Regressor);
  }

  return result;
}

uint64_t type metadata completion function for MLLinearRegressor.Regressor(uint64_t a1)
{
  v3[0] = &unk_347B50;
  v3[1] = &value witness table for Builtin.BridgeObject + 64;
  v3[2] = &unk_347B68;
  result = type metadata accessor for BaseLinearRegressor(319);
  if (v2 <= 0x3F)
  {
    v3[3] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 4, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t MLLinearRegressor.Regressor.init(annotationColumnName:featureColumnNames:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v27 = a3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearRegressor<Double>.Configuration);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v26 = &v18;
  v10 = alloca(v7);
  v11 = alloca(v7);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = v27;
  v12 = v28;
  outlined init with copy of MLLinearRegressor.ModelParameters(v28, (v5 + 3));
  outlined init with copy of MLLinearRegressor.ModelParameters(v12, v19);
  v13 = lazy protocol witness table accessor for type Double and conformance Double();
  LinearRegressor.Configuration.init()(&type metadata for Double, &protocol witness table for Double, v13);
  LinearRegressor.Configuration.maximumIterations.setter(v20, v6);
  LinearRegressor.Configuration.l1Penalty.setter(v6, v21);
  LinearRegressor.Configuration.l2Penalty.setter(v6, v22);
  LinearRegressor.Configuration.stepSize.setter(v6, v23);
  LinearRegressor.Configuration.convergenceThreshold.setter(v6, v24);
  outlined destroy of MLLinearRegressor.ModelParameters(v19);
  v14 = v26;
  v15 = v25;
  (*(v25 + 16))(v26, &v18, v6);
  v16 = *(type metadata accessor for MLLinearRegressor.Regressor(0) + 28);
  BaseLinearRegressor.init(configuration:)(v14);
  outlined destroy of MLLinearRegressor.ModelParameters(v28);
  return (*(v15 + 8))(&v18, v6);
}

uint64_t MLLinearRegressor.Regressor.makeTransformer()()
{
  v2 = v0;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1 + *(type metadata accessor for MLLinearRegressor.Regressor(0) + 28);
  v6 = v2 + *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
  v4;
  result = BaseLinearRegressor.makeTransformer()(v4);
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  return result;
}

uint64_t MLLinearRegressor.Regressor.update(_:with:eventHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = v5;
  v54 = a4;
  v55 = a3;
  v67 = a2;
  v60 = type metadata accessor for BaseLinearRegressor(0);
  v6 = *(v60 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v53 = v43;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearRegressor<Double>.Configuration);
  v63 = *(v52 - 8);
  v10 = *(v63 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v57 = v43;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v56 = v43;
  v50 = type metadata accessor for AnyColumn(0);
  v66 = *(v50 - 8);
  v15 = v66[8];
  v16 = alloca(v15);
  v17 = alloca(v15);
  v51 = v43;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v62 = v18;
  v61 = *(v18 - 8);
  v20 = *(v61 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  ML16ColumnDescriptorVsAE_pTg5 = a1[2];
  v59 = a1;
  if (ML16ColumnDescriptorVsAE_pTg5)
  {
    v24 = v67;
    v25 = a1[3];
    v26 = a1[4];
  }

  else
  {
    v64 = v6;
    v65 = v43;
    v39 = v58[2];
    v40 = alloca(24);
    v41 = alloca(32);
    v44 = v67;
    v39;
    ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(partial apply for closure #1 in FeatureVectorizer.fitted(to:), v43, v39);
    result = v39;
    if (v4)
    {
      return result;
    }

    v24 = v67;
    v25 = 0xD000000000000013;
    v26 = "raining samples." + 0x8000000000000000;
    v42 = v59;
    v59[2] = ML16ColumnDescriptorVsAE_pTg5;
    v42[3] = 0xD000000000000013;
    v42[4] = "raining samples." + 0x8000000000000000;
    v6 = v64;
  }

  result = specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v24, 1u, ML16ColumnDescriptorVsAE_pTg5, v25, v26);
  if (!v4)
  {
    v67 = 0;
    v65 = v43;
    v64 = v6;
    v28 = v58;
    v29 = v51;
    DataFrame.subscript.getter(*v58, v58[1]);
    v30 = AnyColumn.convertedToDoubles()();
    (v66[1])(v29, v50);
    v66 = v30;
    if (!v30)
    {
      BUG();
    }

    outlined init with copy of MLLinearRegressor.ModelParameters((v28 + 3), v43);
    v31 = lazy protocol witness table accessor for type Double and conformance Double();
    v32 = v56;
    LinearRegressor.Configuration.init()(&type metadata for Double, &protocol witness table for Double, v31);
    v33 = v52;
    LinearRegressor.Configuration.maximumIterations.setter(v45, v52);
    LinearRegressor.Configuration.l1Penalty.setter(v33, v46);
    LinearRegressor.Configuration.l2Penalty.setter(v33, v47);
    LinearRegressor.Configuration.stepSize.setter(v33, v48);
    LinearRegressor.Configuration.convergenceThreshold.setter(v33, v49);
    outlined destroy of MLLinearRegressor.ModelParameters(v43);
    v34 = v57;
    (*(v63 + 16))(v57, v32, v33);
    v35 = v53;
    BaseLinearRegressor.init(configuration:)(v34);
    v36 = type metadata accessor for MLLinearRegressor.Model(0);
    v37 = v65;
    v38 = v67;
    BaseLinearRegressor.update(_:features:annotations:eventHandler:)(v59 + *(v36 + 24), v65, v66, v55, v54);
    v67 = v38;

    (*(v64 + 8))(v35, v60);
    (*(v63 + 8))(v32, v33);
    return (*(v61 + 8))(v37, v62);
  }

  return result;
}

uint64_t MLLinearRegressor.Regressor.annotationColumnID.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v2;
  return ColumnID.init(_:_:)(v1, v2, &type metadata for Double);
}

uint64_t MLLinearRegressor.Regressor.annotationColumnID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Double>);
  v3 = ColumnID.name.getter(v2);
  v5 = v4;
  (*(*(v2 - 8) + 8))(a1, v2);
  result = v1[1];
  *v1 = v3;
  v1[1] = v5;
  return result;
}

uint64_t MLLinearRegressor.Regressor.fitted(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v132 = v5;
  v107 = a4;
  v108 = a3;
  v100 = a2;
  *&v117 = a1;
  v102 = v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v99 = v91;
  v113 = type metadata accessor for DataFrame(0);
  v120 = *(v113 - 8);
  v10 = *(v120 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v114 = v91;
  v103 = type metadata accessor for BaseLinearRegressorModel(0);
  v104 = *(v103 - 8);
  v13 = *(v104 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v106 = v91;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v109 = v91;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v105 = v91;
  v124 = type metadata accessor for BaseLinearRegressor(0);
  v123 = *(v124 - 8);
  v20 = *(v123 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v122 = v91;
  v129 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearRegressor<Double>.Configuration);
  v128 = *(v129 - 8);
  v23 = *(v128 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v101 = v91;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v130 = v91;
  v111 = type metadata accessor for AnyColumn(0);
  v119 = *(v111 - 8);
  v28 = v119[8];
  v29 = alloca(v28);
  v30 = alloca(v28);
  v112 = v91;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v121 = v91;
  v36 = alloca(v33);
  v37 = alloca(v33);
  v127 = v91;
  v118 = v6;
  v38 = v6[2];
  v92 = v117;
  v38;
  v39 = v132;
  ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(closure #1 in FeatureVectorizer.fitted(to:)partial apply, v91, v38);
  if (v39)
  {
    return v38;
  }

  v125 = v32;
  v131 = v31;
  v42 = v38;
  v43 = ML16ColumnDescriptorVsAE_pTg5;
  v42;
  specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v117, 1u, v43, 0xD000000000000013, ("raining samples." + 0x8000000000000000));
  v132 = 0;
  v110 = "raining samples." + 0x8000000000000000;
  v126 = v43;
  v44 = v118;
  v45 = v118[1];
  v46 = v112;
  v116 = *v118;
  v115 = v45;
  DataFrame.subscript.getter(v116, v45);
  v47 = AnyColumn.convertedToDoubles()();
  v48 = v119[1];
  v49 = v46;
  v50 = v47;
  (v48)(v49, v111);
  v119 = v48;
  if (!v50)
  {
    v126;
    *&v93[0] = 0;
    *(&v93[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v61._object = "Expected a linear classifier." + 0x8000000000000000;
    v61._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v61);
    v62 = v112;
    DataFrame.subscript.getter(v116, v115);
    v63 = AnyColumn.wrappedElementType.getter();
    (v119)(v62, v111);
    v64 = _typeName(_:qualified:)(v63, 0);
    v66 = v65;
    v61._countAndFlagsBits = v64;
    v61._object = v65;
    String.append(_:)(v61);
    v66;
    v61._countAndFlagsBits = 46;
    v61._object = 0xE100000000000000;
    String.append(_:)(v61);
    v117 = v93[0];
    v61._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v61._object, 0, 0);
    *v67 = v117;
    *(v67 + 16) = 0;
    *(v67 + 32) = 0;
    *(v67 + 48) = 1;
    swift_willThrow(&type metadata for MLCreateError, v61._object);
    return (*(v125 + 8))(v127, v131);
  }

  outlined init with copy of MLLinearRegressor.ModelParameters((v44 + 3), v93);
  v51 = lazy protocol witness table accessor for type Double and conformance Double();
  v52 = v130;
  LinearRegressor.Configuration.init()(&type metadata for Double, &protocol witness table for Double, v51);
  v53 = v129;
  LinearRegressor.Configuration.maximumIterations.setter(v94, v129);
  LinearRegressor.Configuration.l1Penalty.setter(v53, v95);
  LinearRegressor.Configuration.l2Penalty.setter(v53, v96);
  LinearRegressor.Configuration.stepSize.setter(v53, v97);
  LinearRegressor.Configuration.convergenceThreshold.setter(v53, v98);
  outlined destroy of MLLinearRegressor.ModelParameters(v93);
  v54 = v101;
  (*(v128 + 16))(v101, v52, v53);
  v55 = v122;
  BaseLinearRegressor.init(configuration:)(v54);
  v56 = v99;
  outlined init with copy of DataFrame?(v100, v99);
  v57 = v113;
  if (__swift_getEnumTagSinglePayload(v56, 1, v113) == 1)
  {
    outlined destroy of DataFrame?(v56);
    v58 = v127;
    v59 = v132;
    BaseLinearRegressor.fitted(features:annotations:eventHandler:)(v127, v50, v108, v107);
    v60 = v125;
    if (v59)
    {

      v126;
      (*(v123 + 8))(v55, v124);
      (*(v128 + 8))(v130, v129);
      return (*(v60 + 8))(v58, v131);
    }

    (*(v123 + 8))(v55, v124);
    (*(v128 + 8))(v130, v129);
    v71 = *(v60 + 8);
    v72 = v106;
    v73 = v131;
    goto LABEL_12;
  }

  v118 = v50;
  v68 = v114;
  (*(v120 + 32))(v114, v56, v57);
  v69 = v126;
  v70 = v132;
  specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v68, 1u, v126, 0xD000000000000013, v110);
  if (v70)
  {

    v69;
    (*(v120 + 8))(v68, v57);
    (*(v123 + 8))(v122, v124);
    (*(v128 + 8))(v130, v129);
    return (*(v125 + 8))(v127, v131);
  }

  v80 = v112;
  DataFrame.subscript.getter(v116, v115);
  v81 = AnyColumn.convertedToDoubles()();
  (v119)(v80, v111);
  v132 = v81;
  if (v81)
  {
    BaseLinearRegressor.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:eventHandler:)(v127, v118, v121, v132, v108, v107);

    v71 = *(v125 + 8);
    v73 = v131;
    v71(v121, v131);
    (*(v120 + 8))(v114, v113);
    (*(v123 + 8))(v122, v124);
    (*(v128 + 8))(v130, v129);
    v72 = v109;
LABEL_12:
    v71(v127, v73);
    *&v117 = *(v104 + 32);
    v74 = v105;
    v75 = v72;
    v76 = v103;
    (v117)(v105, v75, v103);
    v77 = type metadata accessor for MLLinearRegressor.Model(0);
    v78 = v102;
    (v117)(v102 + *(v77 + 24), v74, v76);
    *v78 = v116;
    v79 = v115;
    v78[1] = v115;
    v78[2] = v126;
    v78[3] = 0xD000000000000013;
    v78[4] = v110;
    return v79;
  }

  v126;
  *&v93[0] = 0;
  *(&v93[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v82._object = "Expected a linear classifier." + 0x8000000000000000;
  v82._countAndFlagsBits = 0xD000000000000031;
  String.append(_:)(v82);
  v83 = v112;
  DataFrame.subscript.getter(v116, v115);
  v84 = AnyColumn.wrappedElementType.getter();
  (v119)(v83, v111);
  v85 = _typeName(_:qualified:)(v84, 0);
  v87 = v86;
  v82._countAndFlagsBits = v85;
  v82._object = v86;
  String.append(_:)(v82);
  v87;
  v82._countAndFlagsBits = 46;
  v82._object = 0xE100000000000000;
  String.append(_:)(v82);
  v117 = v93[0];
  v82._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v82._object, 0, 0);
  *v88 = v117;
  *(v88 + 16) = 0;
  *(v88 + 32) = 0;
  *(v88 + 48) = 1;
  swift_willThrow(&type metadata for MLCreateError, v82._object);
  v89 = *(v125 + 8);
  v90 = v131;
  v89(v121, v131);
  (*(v120 + 8))(v114, v113);
  (*(v123 + 8))(v122, v124);
  (*(v128 + 8))(v130, v129);
  return (v89)(v127, v90);
}

uint64_t MLLinearRegressor.Regressor.encode(_:to:)(uint64_t a1, uint64_t a2)
{
  v16 = v2;
  v3 = *(a1 + 32);
  v15 = a1;
  v13 = *(a1 + 16);
  v14 = v3;
  v4 = *(a2 + 24);
  v17 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer?);
  v6 = lazy protocol witness table accessor for type FeatureVectorizer<Double>.Transformer? and conformance <A> A?();
  result = (dispatch thunk of EstimatorEncoder.encode<A>(_:))(&v13, v5, v6, v4, v17, v7);
  if (!v2)
  {
    v9 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24) + v15;
    v17 = *(a2 + 24);
    v16 = *(a2 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
    v10 = type metadata accessor for BaseLinearRegressorModel(0);
    v11 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseLinearRegressorModel and conformance BaseLinearRegressorModel, &type metadata accessor for BaseLinearRegressorModel, &protocol conformance descriptor for BaseLinearRegressorModel);
    return dispatch thunk of EstimatorEncoder.encode<A>(_:)(v9, v10, v11, v17, v16, v12, v13, *(&v13 + 1), v14);
  }

  return result;
}

uint64_t MLLinearRegressor.Regressor.decode(from:)(uint64_t a1)
{
  v28 = v2;
  v21 = v1;
  v24 = type metadata accessor for BaseLinearRegressorModel(0);
  v22 = *(v24 - 8);
  v4 = *(v22 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v25 = v19;
  v23 = *v3;
  v7 = v3[1];
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
  v9 = *(a1 + 24);
  v29 = *(a1 + 32);
  v20 = a1;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v10 = lazy protocol witness table accessor for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer(&lazy protocol witness table cache variable for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer, &protocol conformance descriptor for FeatureVectorizer<A>.Transformer);
  v26 = v7;
  v7;
  v11 = v28;
  dispatch thunk of EstimatorDecoder.decode<A>(_:)(v8, v8, v10, v9, v29);
  if (v11)
  {
    return v26;
  }

  v28 = v19[1];
  v12 = v19[2];
  v29 = v19[3];
  v13 = *(v20 + 24);
  v27 = *(v20 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v20, v13);
  v14 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseLinearRegressorModel and conformance BaseLinearRegressorModel, &type metadata accessor for BaseLinearRegressorModel, &protocol conformance descriptor for BaseLinearRegressorModel);
  dispatch thunk of EstimatorDecoder.decode<A>(_:)(v24, v24, v14, v13, v27);
  v16 = v12;
  v17 = v21;
  *v21 = v23;
  *(v17 + 1) = v26;
  *(v17 + 2) = v28;
  *(v17 + 3) = v16;
  *(v17 + 4) = v29;
  v18 = type metadata accessor for MLLinearRegressor.Model(0);
  return (*(v22 + 32))(&v17[*(v18 + 24)], v25, v24);
}

void (*protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance MLLinearRegressor.Regressor(void *a1))(uint64_t **a1, char a2)
{
  v2 = malloc(0x28uLL);
  *a1 = v2;
  *v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Double>);
  v2[1] = v3;
  v4 = *(v3 - 8);
  v2[2] = v4;
  v5 = *(v4 + 64);
  v2[3] = malloc(v5);
  v2[4] = malloc(v5);
  MLLinearRegressor.Regressor.annotationColumnID.getter();
  return protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance MLLinearRegressor.Regressor;
}

void protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance MLLinearRegressor.Regressor(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[2];
    v6 = *v2;
    v8 = v2[1];
    (*(v5 + 16))(v3, v4);
    MLLinearRegressor.Regressor.annotationColumnID.setter(v3);
    (*(v5 + 8))(v4, v8);
  }

  else
  {
    v7 = *v2;
    MLLinearRegressor.Regressor.annotationColumnID.setter((*a1)[4]);
  }

  free(v4);
  free(v3);
  free(v2);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    swift_makeBoxUnique(a1, a2, v2);
    return v3;
  }

  return a1;
}

uint64_t lazy protocol witness table accessor for type FeatureVectorizer<Double>.Transformer? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type FeatureVectorizer<Double>.Transformer? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type FeatureVectorizer<Double>.Transformer? and conformance <A> A?)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer?);
    lazy protocol witness table accessor for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer(&lazy protocol witness table cache variable for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer, &protocol conformance descriptor for FeatureVectorizer<A>.Transformer);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v1);
    lazy protocol witness table cache variable for type FeatureVectorizer<Double>.Transformer? and conformance <A> A? = result;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Adam<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(&protocol conformance descriptor for Adam<A>, a2);
  *(a1 + 8) = result;
  return result;
}

void static MLCreateError.checkoutDictionaryMissingOrInvalidValue(key:)(Swift::String a1)
{
  object = a1._object;
  *&v6 = 0;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  *(&v6 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  v5._object = " numeric but got " + 0x8000000000000000;
  v5._countAndFlagsBits = 0xD000000000000038;
  String.append(_:)(v5);
  v5._countAndFlagsBits = countAndFlagsBits;
  v5._object = object;
  String.append(_:)(v5);
  *v4 = v6;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  *(v4 + 48) = 2;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVySSSaySdG_G_SSs5NeverOTg5101_s8CreateML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFS2SXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = specialized _NativeDictionary.startIndex.getter(a1);
    v5 = a1 + 64;
    v6 = v1 - 1;
    v21 = a1 + 64;
    while (1)
    {
      if (v3 < 0 || v3 >= 1 << *(v2 + 32))
      {
        BUG();
      }

      v18 = v6;
      v7 = v3 >> 6;
      v8 = *(v5 + 8 * (v3 >> 6));
      v9 = 1 << v3;
      if (!_bittest64(&v8, v3))
      {
        BUG();
      }

      if (v4 != *(v2 + 36))
      {
        BUG();
      }

      v19 = v4;
      v10 = *(v2 + 48);
      v16 = *(v10 + 16 * v3);
      v11 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      v23 = v11 + 1;
      v15 = v3;
      v17 = *(v10 + 16 * v3 + 8);
      v17;
      if (v22 >> 1 <= v11)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 >= 2, v23, 1);
      }

      _swiftEmptyArrayStorage[2] = v23;
      v12 = 2 * v11;
      _swiftEmptyArrayStorage[v12 + 4] = v16;
      _swiftEmptyArrayStorage[v12 + 5] = v17;
      v2 = a1;
      v13 = *(a1 + 32);
      if (v15 >= -(-1 << v13))
      {
        BUG();
      }

      if ((v9 & *(v21 + 8 * v7)) == 0)
      {
        BUG();
      }

      v5 = v21;
      if (v19 != *(a1 + 36))
      {
        BUG();
      }

      v3 = _HashTable.occupiedBucket(after:)(v15, v21, ~(-1 << v13));
      v6 = v18 - 1;
      if (!v18)
      {
        break;
      }

      v4 = *(a1 + 36);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySSSaySdG_G_AHs5NeverOTg5107_s8CreateML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFSaySdGAMXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = a1;
    v3 = specialized Dictionary.startIndex.getter(a1);
    v5 = v4;
    v17 = v2 + 64;
    v6 = v1 - 1;
    for (i = v2; ; v5 = *(i + 36))
    {
      if (v3 < 0 || v3 >= 1 << *(v2 + 32))
      {
        BUG();
      }

      v13 = v6;
      v7 = *(v17 + 8 * (v3 >> 6));
      if (!_bittest64(&v7, v3))
      {
        BUG();
      }

      if (v5 != *(v2 + 36))
      {
        BUG();
      }

      v8 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      v16 = v8 + 1;
      v12 = *(*(v2 + 56) + 8 * v3);
      v12;
      if (v15 >> 1 <= v8)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v16, 1);
      }

      _swiftEmptyArrayStorage[2] = v16;
      _swiftEmptyArrayStorage[v8 + 4] = v12;
      v2 = i;
      v9 = *(i + 32);
      if (v3 >= -(-1 << v9))
      {
        BUG();
      }

      if (((1 << v3) & *(v17 + 8 * (v3 >> 6))) == 0)
      {
        BUG();
      }

      if (v5 != *(i + 36))
      {
        BUG();
      }

      v10 = _HashTable.occupiedBucket(after:)(v3, v17, ~(-1 << v9));
      --v6;
      if (!v13)
      {
        break;
      }

      v3 = v10;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t specialized _ModelCheckpoint<>.save(to:)(uint64_t a1)
{
  return specialized _ModelCheckpoint<>.save(to:)(a1, MLHandActionClassifier.GraphCNN.getCheckpointStatesDictionary());
}

{
  return specialized _ModelCheckpoint<>.save(to:)(a1, MLActivityClassifier.Trainer.ModelContainer.getCheckpointStatesDictionary());
}

uint64_t specialized _ModelCheckpoint<>.save(to:)(uint64_t a1, uint64_t (*a2)(void))
{
  v25 = a2;
  v22 = a1;
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v21 = v18;
  result = a2();
  if (!v2)
  {
    v24 = v3;
    v23 = v4;
    v9 = result;
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValueConvertible)>);
    inited = swift_initStackObject(v10, v18);
    inited[2] = 2;
    inited[3] = 4;
    inited[4] = 1937335659;
    inited[5] = 0xE400000000000000;
    v9;
    ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFS2SXEfU_Tf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVySSSaySdG_G_SSs5NeverOTg5101_s8CreateML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFS2SXEfU_Tf1cn_n(v9);
    v25 = 0;
    v9;
    inited[9] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
    inited[10] = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &demangling cache variable for type metadata for [String]);
    inited[6] = ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFS2SXEfU_Tf1cn_n;
    inited[11] = 0x7365756C6176;
    inited[12] = 0xE600000000000000;
    v13 = v25;
    ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFSaySdGAMXEfU0_Tf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySSSaySdG_G_AHs5NeverOTg5107_s8CreateML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFSaySdGAMXEfU0_Tf1cn_n(v9);
    v9;
    inited[16] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [[Double]]);
    inited[17] = lazy protocol witness table accessor for type [[Double]] and conformance <A> [A]();
    inited[13] = ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFSaySdGAMXEfU0_Tf1cn_n;
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
    v16 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v15, &protocol witness table for String);
    result = MLDataTable.init(dictionary:)(v16);
    if (!v13)
    {
      v25 = v19;
      v26 = v20;
      v17 = v21;
      URL.appendingPathComponent(_:)(0x7461446C65646F6DLL, 0xE900000000000061);
      MLDataTable.write(to:)(v17);
      (*(v23 + 8))(v17, v24);
      return outlined consume of Result<_DataTable, Error>(v25, v26);
    }
  }

  return result;
}

uint64_t HandActionClassifierTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  v3 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
  *(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable) = 0;
  *(v1 + v4 + 8) = -1;
  *(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  static MLHandActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  static MLHandActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary) = _swiftEmptyDictionarySingleton;
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

uint64_t HandActionClassifierTrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v154 = v3;
  v149 = a3;
  v147 = a2;
  v146 = a1;
  v124 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v5 = *(*(v124 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v123 = v118;
  v135 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v134 = *(v135 - 8);
  v8 = *(v134 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v138 = v118;
  v120 = type metadata accessor for AnyColumn(0);
  v137 = *(v120 - 8);
  v11 = v137[8];
  v12 = alloca(v11);
  v13 = alloca(v11);
  v133 = v118;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v121 = v118;
  v145 = type metadata accessor for DataFrame(0);
  v151 = *(v145 - 8);
  v16 = v151[8];
  v17 = alloca(v16);
  v18 = alloca(v16);
  v122 = v118;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v144 = v118;
  v143 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v21 = *(*(v143 - 1) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v136 = v118;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v155 = v118;
  v130 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v26 = *(*(v130 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v153 = v118;
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v32 = v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  v142 = v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  v33 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
  *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable) = 0;
  *(v4 + v34 + 8) = -1;
  *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  v131 = v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
  static MLHandActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  v125 = v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
  static MLHandActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = 0;
  v132 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels;
  *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels) = 0;
  v148 = v4;
  *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary) = _swiftEmptyDictionarySingleton;
  outlined init with copy of MLTrainingSessionParameters(v146, v118, type metadata accessor for MLHandActionClassifier.DataSource);
  v35 = v153;
  outlined init with copy of MLTrainingSessionParameters(v147, v153, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v36 = v33[6];
  v152 = v33[7];
  v150 = v33[8];
  v139 = v33[9];
  outlined init with copy of MLTrainingSessionParameters(v35, &v118[v33[5]], type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  v37 = v130;
  *&v118[v36] = *&v35[*(v130 + 20)];
  *&v118[v150] = *&v35[v37[7]];
  *&v118[v152] = *&v35[v37[6]];
  *&v118[v33[10]] = *&v35[v37[8]];
  v38 = v143;
  v152 = *&v35[v37[10]];
  outlined destroy of MLHandActionClassifier.DataSource(v35, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v39 = v152;
  *&v118[v139] = v152;
  v139 = v33;
  __swift_storeEnumTagSinglePayload(v118, 0, 1, v33);
  v40 = v142;
  swift_beginAccess(v142, &v140, 33, 0);
  v41 = v146;
  outlined assign with take of MLHandActionClassifier.PersistentParameters?(v118, v40);
  v42 = v155;
  swift_endAccess(&v140);
  outlined init with copy of MLTrainingSessionParameters(v41, v42, type metadata accessor for MLHandActionClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(v42, v38) == 3)
  {
    v43 = *v42;
    v44 = v42;
    v45 = *(v42 + 2);
    v137 = v44[2];
    v153 = v44[3];
    v136 = v44[4];
    v151 = v44[5];
    v145 = v44[6];
    v155 = v44[7];
    v46 = v131;
    swift_beginAccess(v131, v119, 1, 0);
    v144 = *v46;
    *v46 = v43;
    v47 = *(v46 + 8);
    *(v46 + 8) = v45 & 1;
    v152 = v43;
    LODWORD(v150) = v45;
    outlined copy of Result<_DataTable, Error>(v43, v45);
    v48 = v155;
    outlined consume of Result<_DataTable, Error>(v144, v47);
    swift_beginAccess(v46, &v140, 33, 0);
    v49 = v145;
    v50 = v154;
    static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(v46, v145, v48);
    if (v50)
    {
      v51 = 0;
      swift_endAccess(&v140);
      v48;
      v151;
      v153;
      outlined consume of Result<_DataTable, Error>(v152, v150);
      v71 = v148;
      goto LABEL_11;
    }

    swift_endAccess(&v140);
    swift_beginAccess(v46, &v140, 33, 0);
    v69 = v48;
    v70 = v151;
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v46, v137, v153, v49, v69, v136, v151);
    v154 = 0;
    swift_endAccess(&v140);
    v155;
    v70;
    v153;
    swift_beginAccess(v46, &v140, 32, 0);
    v82._countAndFlagsBits = 0x6C6562616CLL;
    v82._object = 0xE500000000000000;
    specialized MLDataTable.subscript.getter(v82, *v46, *(v46 + 8));
    v83 = v128;
    v84 = v129;
    swift_endAccess(&v140);
    specialized MLDataColumn.dropDuplicates()(v83, v84);
    outlined consume of Result<_DataTable, Error>(v83, v84);
    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v140, v141, *v39.i64);
    outlined consume of Result<_DataTable, Error>(v152, v150);
    v71 = v148;
  }

  else
  {
    outlined destroy of MLHandActionClassifier.DataSource(v42, type metadata accessor for MLHandActionClassifier.DataSource);
    v52 = v136;
    outlined init with copy of MLTrainingSessionParameters(v41, v136, type metadata accessor for MLHandActionClassifier.DataSource);
    if (swift_getEnumCaseMultiPayload(v52, v38) == 5)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v54 = v53[12];
      v127 = *(v52 + v54);
      v153 = *(v52 + v54 + 8);
      v55 = v53[16];
      v126 = *(v52 + v55);
      v152 = *(v52 + v55 + 8);
      v56 = v53[20];
      v57 = *(v52 + v56);
      v58 = *(v52 + v56 + 8);
      v59 = v52;
      v60 = v144;
      (v151[4])(v144, v59, v145);
      v61 = v121;
      v150 = v57;
      v155 = v58;
      DataFrame.subscript.getter(v57, v58);
      v62 = AnyColumn.wrappedElementType.getter();
      (v137[1])(v61, v120);
      v71 = v148;
      if (v62 == &type metadata for String)
      {
        DataFrame.subscript.getter(v150, v155, &type metadata for String);
        v72 = v154;
        Column<A>.parseAsJSONArrays()();
        if (v72)
        {
          v155;
          v152;
          v153;
          outlined destroy of MLHandActionClassifier.DataSource(v149, type metadata accessor for MLTrainingSessionParameters);
          outlined destroy of MLHandActionClassifier.DataSource(v147, type metadata accessor for MLHandActionClassifier.ModelParameters);
          outlined destroy of MLHandActionClassifier.DataSource(v146, type metadata accessor for MLHandActionClassifier.DataSource);
          (*(v134 + 8))(v138, v135);
          (v151[1])(v60, v145);
          goto LABEL_31;
        }

        v154 = 0;
        (*(v134 + 8))(v138, v135);
        v102 = v155;
        v155;
        DataFrame.subscript.setter(v133, v150, v102);
      }

      v63 = v122;
      v64 = v144;
      v65 = v145;
      *v39.i64 = (v151[2])(v122, v144, v145);
      v66 = v154;
      MLDataTable.init(_:convertArraysToShapedArrays:)(v63, 0, v39);
      if (v66)
      {
        v155;
        v152;
        v153;
        outlined destroy of MLHandActionClassifier.DataSource(v149, type metadata accessor for MLTrainingSessionParameters);
        outlined destroy of MLHandActionClassifier.DataSource(v147, type metadata accessor for MLHandActionClassifier.ModelParameters);
        outlined destroy of MLHandActionClassifier.DataSource(v146, type metadata accessor for MLHandActionClassifier.DataSource);
        (v151[1])(v64, v65);
        goto LABEL_31;
      }

      v74 = v140;
      v154 = 0;
      v75 = v141;
      v76 = v131;
      swift_beginAccess(v131, v119, 1, 0);
      v77 = *v76;
      *v76 = v74;
      v78 = *(v76 + 8);
      *(v76 + 8) = v75;
      outlined consume of Result<_DataTable, Error>(v77, v78);
      swift_beginAccess(v76, &v140, 33, 0);
      v79 = v150;
      v80 = v155;
      v81 = v154;
      static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(v76, v150, v155);
      if (v81)
      {
        swift_endAccess(&v140);
        v80;
        v152;
        v153;
        outlined destroy of MLHandActionClassifier.DataSource(v149, type metadata accessor for MLTrainingSessionParameters);
        outlined destroy of MLHandActionClassifier.DataSource(v147, type metadata accessor for MLHandActionClassifier.ModelParameters);
        outlined destroy of MLHandActionClassifier.DataSource(v146, type metadata accessor for MLHandActionClassifier.DataSource);
        (v151[1])(v144, v145);
        v71 = v148;
        goto LABEL_31;
      }

      swift_endAccess(&v140);
      swift_beginAccess(v76, &v140, 33, 0);
      v109 = v79;
      v110 = v152;
      static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v76, v127, v153, v109, v80, v126, v152);
      v154 = 0;
      swift_endAccess(&v140);
      v155;
      v110;
      v153;
      swift_beginAccess(v76, &v140, 32, 0);
      v114._countAndFlagsBits = 0x6C6562616CLL;
      v114._object = 0xE500000000000000;
      specialized MLDataTable.subscript.getter(v114, *v76, *(v76 + 8));
      v115 = v128;
      v116 = v129;
      swift_endAccess(&v140);
      specialized MLDataColumn.dropDuplicates()(v115, v116);
      v114._countAndFlagsBits = v115;
      v71 = v148;
      outlined consume of Result<_DataTable, Error>(v114._countAndFlagsBits, v116);
      MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v140, v141, *v39.i64);
      (v151[1])(v144, v145);
    }

    else
    {
      outlined destroy of MLHandActionClassifier.DataSource(v52, type metadata accessor for MLHandActionClassifier.DataSource);
      v67 = v154;
      v68 = static _VideoUtilities.videoURLsPerClass(from:)(v41, v39);
      v71 = v148;
      if (v67)
      {
        v51 = 0;
        goto LABEL_11;
      }

      v73 = v68;
      v154 = 0;
      MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = specialized _copyCollectionToContiguousArray<A>(_:)(v68);
      v73;
    }
  }

  v86 = *(v71 + v132);
  *(v71 + v132) = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v86;
  v87 = v142;
  v88 = v139;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v142, 1, v139);
  v90 = v123;
  if (EnumTagSinglePayload)
  {
    v91 = v149;
  }

  else
  {
    outlined init with copy of MLTrainingSessionParameters(*(v88 + 20) + v87, v123, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v90, v124);
    v91 = v149;
    if (EnumCaseMultiPayload == 1)
    {
      if (swift_getEnumCaseMultiPayload(v90, v143) == 3)
      {
        v93 = *v90;
        LODWORD(v142) = *(v90 + 8);
        v151 = *(v90 + 16);
        v143 = *(v90 + 24);
        v150 = *(v90 + 32);
        v153 = *(v90 + 40);
        v152 = *(v90 + 48);
        v139 = *(v90 + 56);
        v94 = v125;
        swift_beginAccess(v125, &v140, 1, 0);
        v95 = *v94;
        *v94 = v93;
        v96 = v142;
        v97 = *(v94 + 8);
        *(v94 + 8) = v142 & 1;
        v155 = v93;
        outlined copy of Result<_DataTable, Error>(v93, v96);
        v98 = v97;
        v99 = v152;
        outlined consume of Result<_DataTable, Error>(v95, v98);
        swift_beginAccess(v94, &v128, 33, 0);
        v100 = v139;
        v101 = v154;
        static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(v94, v99, v139);
        if (v101)
        {
          swift_endAccess(&v128);
          v143;
          v153;
          v100;
          outlined consume of Result<_DataTable, Error>(v155, v142);
          outlined destroy of MLHandActionClassifier.DataSource(v149, type metadata accessor for MLTrainingSessionParameters);
          outlined destroy of MLHandActionClassifier.DataSource(v147, type metadata accessor for MLHandActionClassifier.ModelParameters);
          outlined destroy of MLHandActionClassifier.DataSource(v146, type metadata accessor for MLHandActionClassifier.DataSource);
          v71 = v148;
          goto LABEL_31;
        }

        swift_endAccess(&v128);
        swift_beginAccess(v94, &v128, 33, 0);
        v117 = v153;
        static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v94, v151, v143, v99, v100, v150, v153);
        v71 = v148;
        swift_endAccess(&v128);
        v143;
        v117;
        v100;
        outlined consume of Result<_DataTable, Error>(v155, v142);
        v91 = v149;
      }

      else
      {
        outlined destroy of MLHandActionClassifier.DataSource(v90, type metadata accessor for MLHandActionClassifier.DataSource);
      }
    }

    else
    {
      outlined destroy of MLHandActionClassifier.DataSource(v90, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    }
  }

  outlined init with copy of MLTrainingSessionParameters(v91, v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  v103 = *(v71 + v132);
  if (!v103)
  {
    v107 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v107, 0, 0);
    *v108 = 0xD00000000000003DLL;
    *(v108 + 8) = "ng a feature checkpoint." + 0x8000000000000000;
    *(v108 + 16) = 0;
    *(v108 + 32) = 0;
    *(v108 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v107);
    v51 = 1;
LABEL_11:
    outlined destroy of MLHandActionClassifier.DataSource(v149, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLHandActionClassifier.DataSource(v147, type metadata accessor for MLHandActionClassifier.ModelParameters);
    outlined destroy of MLHandActionClassifier.DataSource(v146, type metadata accessor for MLHandActionClassifier.DataSource);
    if (v51)
    {
      goto LABEL_28;
    }

LABEL_31:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
    outlined consume of MLDataTable?(*(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable), *(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable + 8));
    outlined consume of Result<_DataTable, Error>(*(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures), *(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures + 8));
    outlined consume of Result<_DataTable, Error>(*(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures), *(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures + 8));
    v111 = *(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);

    *(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);
    *(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary);
    v112 = type metadata accessor for HandActionClassifierTrainingSessionDelegate(0);
    swift_deallocPartialClassInstance(v71, v112, *(*v71 + 48), *(*v71 + 52));
    return v71;
  }

  v154 = *(v147 + *(v130 + 28));
  v104 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
  swift_allocObject(v104, *(v104 + 48), *(v104 + 52));
  v103;
  v105 = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(v103, 0, 21, 3, v154);
  outlined destroy of MLHandActionClassifier.DataSource(v149, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of MLHandActionClassifier.DataSource(v147, type metadata accessor for MLHandActionClassifier.ModelParameters);
  outlined destroy of MLHandActionClassifier.DataSource(v146, type metadata accessor for MLHandActionClassifier.DataSource);
  v106 = *(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);
  *(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = v105;
LABEL_28:

  return v71;
}

char HandActionClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(int a1, __m128 a2)
{
  v4 = v3;
  v5 = a1 + *(type metadata accessor for MLHandActionClassifier.PersistentParameters(0) + 20);
  result = MLHandActionClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(&v29, &v27, a2);
  if (!v2)
  {
    v36 = v29;
    v7 = v27;
    v8 = v28;
    v39 = v30;
    v31 = 0;
    if (v30 == 0xFF)
    {
      if (v28 != -1)
      {
        v17 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
        swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable, &v29, 1, 0);
        v38 = *(v4 + v17);
        *(v4 + v17) = v7;
        LODWORD(v37) = *(v4 + v17 + 8);
        *(v4 + v17 + 8) = v8;
        v18 = v8;
        outlined copy of Result<_DataTable, Error>(v7, v8);
        outlined consume of MLDataTable?(v38, v37);
        *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
LABEL_13:
        v32 = v7;
        v33 = v18 & 1;
        v26 = MLDataTable.size.getter();
        outlined consume of MLDataTable?(v36, v39);
        outlined consume of Result<_DataTable, Error>(v32, v33);
LABEL_16:
        result = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount;
        *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = v26;
        return result;
      }

      *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
    }

    else
    {
      v41 = v30;
      v37 = v27;
      LOBYTE(v38) = v28;
      if (v28 == -1)
      {
        v19 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
        v20 = v30;
        swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable, &v29, 1, 0);
        v21 = *(v4 + v19);
        v22 = v36;
        *(v4 + v19) = v36;
        v40 = *(v4 + v19 + 8);
        *(v4 + v19 + 8) = v20;
        v13 = v22;
        outlined copy of MLDataTable?(v22, v20);
        outlined copy of Result<_DataTable, Error>(v13, v20);
        outlined consume of MLDataTable?(v21, v40);
      }

      else
      {
        v9 = v30 & 1;
        v10 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
        v11 = v30;
        swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable, &v27, 1, 0);
        v35 = *(v4 + v10);
        v12 = v36;
        *(v4 + v10) = v36;
        v34 = *(v4 + v10 + 8);
        *(v4 + v10 + 8) = v9;
        v13 = v12;
        outlined copy of Result<_DataTable, Error>(v12, v11);
        outlined copy of MLDataTable?(v13, v11);
        v14 = v37;
        v40 = v38;
        outlined copy of MLDataTable?(v37, v38);
        outlined consume of MLDataTable?(v35, v34);
        v15 = HandActionClassifierTrainingSessionDelegate.sourceTable.modify(&v29);
        if (*(v16 + 8) == 0xFF)
        {
          (v15)(&v29, 0);
        }

        else
        {
          v32 = v14;
          v35 = v15;
          v33 = v38 & 1;
          MLDataTable.append(contentsOf:)(&v32);
          (v35)(&v29, 0);
        }

        v23 = v14;
        v24 = v39;
        outlined consume of MLDataTable?(v13, v39);
        outlined consume of MLDataTable?(v23, v40);
        outlined copy of Result<_DataTable, Error>(v13, v24);
      }

      v32 = v13;
      v33 = v41 & 1;
      v25 = MLDataTable.size.getter();
      outlined consume of Result<_DataTable, Error>(v32, v33);
      *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = v25;
      v18 = v38;
      if (v38 != 0xFF)
      {
        v7 = v37;
        goto LABEL_13;
      }
    }

    outlined consume of MLDataTable?(v36, v39);
    v26 = 0;
    goto LABEL_16;
  }

  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandActionClassifierTrainingSessionDelegate.setUp()()
{
  v12 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, v11, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, &v10, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v10, 1, v5) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v10, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(&v10, &v10, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  HandActionClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(&v10, v1);
  outlined destroy of MLHandActionClassifier.DataSource(&v10, type metadata accessor for MLHandActionClassifier.PersistentParameters);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandActionClassifierTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v186 = v1;
  v181 = v2;
  rawValue = from._rawValue;
  v4 = *(*(type metadata accessor for URL(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v172 = v126;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v171 = v126;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v170 = v126;
  v11 = alloca(v4);
  v12 = alloca(v4);
  v175 = v126;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v167 = v126;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v182 = v126;
  v185 = type metadata accessor for MLCheckpoint(0);
  v168 = *(v185 - 8);
  v18 = *(v168 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v173 = v126;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v183 = v126;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v187 = v126;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v28 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v32 = v126;
  v33 = v181 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v181 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, v164, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v33, v126, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  v169 = v28;
  if (__swift_getEnumTagSinglePayload(v126, 1, v28) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v126, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v126, v126, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  v34 = v182;
  specialized BidirectionalCollection.last.getter(rawValue);
  v35 = v185;
  if (__swift_getEnumTagSinglePayload(v34, 1, v185) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v34, &demangling cache variable for type metadata for MLCheckpoint?);
    v36 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v36, 0, 0);
    *v37 = 0xD00000000000001DLL;
    *(v37 + 8) = "reated." + 0x8000000000000000;
    *(v37 + 16) = 0;
    *(v37 + 32) = 0;
    *(v37 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v36);
LABEL_20:
    v53 = v32;
    goto LABEL_21;
  }

  v38 = 0xEB0000000064657ALL;
  v176 = 0x6974636172747865;
  v184 = v126;
  v39 = v34;
  v40 = v187;
  outlined init with take of MLClassifierMetrics(v39, v187, type metadata accessor for MLCheckpoint);
  v182 = *(v35 + 20);
  v41 = 0x696C616974696E69;
  v32 = v184;
  v42 = 0xEA0000000000676ELL;
  switch(*(v40 + v182))
  {
    case 0:
      goto LABEL_8;
    case 1:
LABEL_10:
      v42;
      goto LABEL_14;
    case 2:
      v41 = 0x676E696E69617274;
      v38 = 0xE800000000000000;
      goto LABEL_8;
    case 3:
      v41 = 0x697461756C617665;
      v38 = 0xEA0000000000676ELL;
      goto LABEL_8;
    case 4:
      v41 = 0x636E657265666E69;
      v38 = &loc_308EF - 0x14FFFFFFFF9B9A86;
LABEL_8:
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)(v41, v38, 0x6974636172747865, 0xEA0000000000676ELL, 0);
      v38;
      if ((v43 & 1) == 0)
      {
        v42 = 0xE800000000000000;
        switch(*(v40 + v182))
        {
          case 0:
            JUMPOUT(0x26DBD0);
          case 1:
            v44 = 0x6974636172747865;
            goto LABEL_13;
          case 2:
            goto LABEL_10;
          case 3:
            v44 = 0x697461756C617665;
LABEL_13:
            v45 = _stringCompareWithSmolCheck(_:_:expecting:)(v44, 0xEA0000000000676ELL, 0x676E696E69617274, 0xE800000000000000, 0);
            0xEA0000000000676ELL;
            if (v45)
            {
              goto LABEL_14;
            }

            v51 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v51, 0, 0);
            *v52 = 0xD00000000000003FLL;
            *(v52 + 8) = "not been properly initialized." + 0x8000000000000000;
            *(v52 + 16) = 0;
            *(v52 + 32) = 0;
            *(v52 + 48) = 0;
            swift_willThrow(&type metadata for MLCreateError, v51);
            v47 = v40;
            break;
          case 4:
            JUMPOUT(0x26DBF0);
        }

        goto LABEL_19;
      }

LABEL_14:
      v46 = v186;
      HandActionClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(v32, v3);
      if (v46)
      {
LABEL_15:
        v47 = v187;
LABEL_19:
        outlined destroy of MLHandActionClassifier.DataSource(v47, type metadata accessor for MLCheckpoint);
        goto LABEL_20;
      }

      v186 = 0;
      v48 = 0x676E696E69617274;
      switch(*(v187 + v182))
      {
        case 0:
          v50 = *(v187 + v182);
          v49 = 0xEB0000000064657ALL;
          v48 = 0x696C616974696E69;
          goto LABEL_26;
        case 1:
          0xEA0000000000676ELL;
          goto LABEL_38;
        case 2:
          v49 = 0xE800000000000000;
          goto LABEL_26;
        case 3:
          v48 = 0x697461756C617665;
          v49 = 0xEA0000000000676ELL;
          goto LABEL_26;
        case 4:
          v48 = 0x636E657265666E69;
          v49 = &loc_308EF - 0x14FFFFFFFF9B9A86;
LABEL_26:
          v54 = _stringCompareWithSmolCheck(_:_:expecting:)(v48, v49, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v49;
          if (v54)
          {
LABEL_38:
            URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
            LOBYTE(__src[0]) = 1;
            *(&__src[0] + 1) = 44;
            __src[1] = 0xE100000000000000;
            *&__src[2] = 0xE000000000000000;
            *(&__src[2] + 1) = 92;
            *&__src[3] = 0xE100000000000000;
            BYTE8(__src[3]) = 1;
            *&__src[4] = 34;
            *(&__src[4] + 1) = 0xE100000000000000;
            LOBYTE(__src[5]) = 1;
            *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            *&__src[6] = 10;
            *(&__src[6] + 1) = 0xE100000000000000;
            __src[7] = 0;
            LOBYTE(__src[8]) = 1;
            *(&__src[8] + 1) = 0;
            LOBYTE(__dst[0]) = 1;
            LOBYTE(v147) = 1;
            v148 = 44;
            v149 = 0xE100000000000000;
            v150 = 0;
            v151 = 0xE000000000000000;
            v152 = 92;
            v153 = 0xE100000000000000;
            v154 = 1;
            v155 = 34;
            v156 = 0xE100000000000000;
            v157 = 1;
            v158 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            v159 = 10;
            v160 = 0xE100000000000000;
            v161 = 0;
            v162 = 1;
            v163 = 0;
            outlined retain of MLDataTable.ParsingOptions(__src);
            outlined release of MLDataTable.ParsingOptions(&v147, 34);
            memcpy(__dst, __src, sizeof(__dst));
            v67 = v186;
            MLDataTable.init(contentsOf:options:)(v175, __dst);
            if (v67)
            {
              goto LABEL_64;
            }

            v68 = v177;
            v69 = v178;
            v186 = 0;
            v70 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
            v71 = v181;
            swift_beginAccess(v181 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures, v165, 1, 0);
            v72 = *(v71 + v70);
            *(v71 + v70) = v68;
            v73 = *(v71 + v70 + 8);
            *(v71 + v70 + 8) = v69;
            outlined consume of Result<_DataTable, Error>(v72, v73);
            URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
            LOBYTE(v126[0]) = 1;
            *(&v126[0] + 1) = 44;
            v126[1] = 0xE100000000000000;
            *&v126[2] = 0xE000000000000000;
            *(&v126[2] + 1) = 92;
            *&v126[3] = 0xE100000000000000;
            BYTE8(v126[3]) = 1;
            *&v126[4] = 34;
            *(&v126[4] + 1) = 0xE100000000000000;
            LOBYTE(v126[5]) = 1;
            *(&v126[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            *&v126[6] = 10;
            *(&v126[6] + 1) = 0xE100000000000000;
            v3.i64[0] = 0;
            v126[7] = 0;
            LOBYTE(v126[8]) = 1;
            *(&v126[8] + 1) = 0;
            v146[0] = 1;
            LOBYTE(v128) = 1;
            v129 = 44;
            v130 = 0xE100000000000000;
            v131 = 0;
            v132 = 0xE000000000000000;
            v133 = 92;
            v134 = 0xE100000000000000;
            v135 = 1;
            v136 = 34;
            v137 = 0xE100000000000000;
            v138 = 1;
            v139 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            v140 = 10;
            v141 = 0xE100000000000000;
            v142 = 0;
            v143 = 1;
            v144 = 0;
            outlined retain of MLDataTable.ParsingOptions(v126);
            outlined release of MLDataTable.ParsingOptions(&v128, 44);
            memcpy(v146, v126, sizeof(v146));
            v74 = v186;
            MLDataTable.init(contentsOf:options:)(v170, v146);
            v75 = v74;
            if (v74)
            {
              goto LABEL_64;
            }

            v76 = v179;
            LOBYTE(v185) = v180;
            v77 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
            swift_beginAccess(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures, v146, 1, 0);
            v78 = *(v71 + v77);
            *(v71 + v77) = v76;
            v79 = *(v71 + v77 + 8);
            *(v71 + v77 + 8) = v185;
            outlined consume of Result<_DataTable, Error>(v78, v79);
            v80 = v187;
            v81 = 0xEA0000000000676ELL;
            switch(*(v187 + v182))
            {
              case 0:
LABEL_47:
                v176 = 0x696C616974696E69;
                v81 = 0xEB0000000064657ALL;
                goto LABEL_57;
              case 1:
                goto LABEL_57;
              case 2:
LABEL_54:
                0xE800000000000000;
                goto LABEL_58;
              case 3:
LABEL_56:
                v176 = 0x697461756C617665;
                goto LABEL_57;
              case 4:
LABEL_55:
                v176 = 0x636E657265666E69;
                v81 = 0xEB00000000676E69;
LABEL_57:
                v108 = v81;
                v109 = _stringCompareWithSmolCheck(_:_:expecting:)(v176, v81, 0x676E696E69617274, 0xE800000000000000, 0);
                v108;
                v32 = v184;
                if ((v109 & 1) == 0)
                {
                  goto LABEL_68;
                }

LABEL_58:
                v186 = v75;
                v110 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
                v111 = v181;
                swift_beginAccess(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures + v181, __src, 0, 0);
                v112 = *(v111 + v110);
                LOBYTE(v110) = *(v111 + v110 + 8);
                outlined copy of Result<_DataTable, Error>(v112, v110);
                v113._countAndFlagsBits = 0x6C6562616CLL;
                v113._object = 0xE500000000000000;
                specialized MLDataTable.subscript.getter(v113, v112, v110);
                outlined consume of Result<_DataTable, Error>(v112, v110);
                v114 = v128;
                LOBYTE(v110) = v129;
                specialized MLDataColumn.dropDuplicates()(v128, v129);
                outlined consume of Result<_DataTable, Error>(v114, v110);
                MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(__dst[0], __dst[1], *v3.i64);
                v116 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels;
                v113._countAndFlagsBits = *(v111 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);
                *(v111 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels) = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
                v113._countAndFlagsBits;
                v117 = *(v111 + v116);
                if (!v117)
                {
                  v99 = "re not properly constructed." + 0x8000000000000000;
                  v100 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                  swift_allocError(&type metadata for MLCreateError, v100, 0, 0);
                  v102 = 0xD00000000000002ELL;
                  goto LABEL_63;
                }

                v32 = v184;
                v185 = *(v184 + *(v169 + 32));
                v118 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
                swift_allocObject(v118, *(v118 + 48), *(v118 + 52));
                v117;
                v119 = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(v117, 0, 21, 3, v185);
                v120 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model;
                v121 = *(v111 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);
                *(v111 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = v119;

                if (!*(v111 + v120))
                {
                  v124 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                  swift_allocError(&type metadata for MLCreateError, v124, 0, 0);
                  *v125 = 0xD000000000000031;
                  *(v125 + 8) = "ning checkpoints are supported." + 0x8000000000000000;
                  *(v125 + 16) = 0;
                  *(v125 + 32) = 0;
                  *(v125 + 48) = 0;
                  swift_willThrow(&type metadata for MLCreateError, v124);
                  goto LABEL_15;
                }

                v122 = *(v111 + v120);

                v80 = v187;
                v123 = v186;
                MLHandActionClassifier.GraphCNN.updateGraphCNN(from:)(v187);
                if (v123)
                {

                  outlined destroy of MLHandActionClassifier.DataSource(v80, type metadata accessor for MLCheckpoint);
                  outlined destroy of MLHandActionClassifier.DataSource(v32, type metadata accessor for MLHandActionClassifier.PersistentParameters);
                  return;
                }

                MLHandActionClassifier.GraphCNN.initDevice()();

LABEL_68:
                v47 = v80;
                break;
            }

            goto LABEL_19;
          }

          v147 = rawValue;
          v55 = *(rawValue + 16);
          v56 = 1;
          if (!v55)
          {
            v57 = 0;
            goto LABEL_43;
          }

          v57 = v55 - 1;
          v58 = v57 * *(v168 + 72) + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + rawValue;
          rawValue = -*(v168 + 72);
          v175 = 0xEB00000000676E69;
          v59 = v183;
          break;
      }

      break;
  }

  while (2)
  {
    v60 = v173;
    outlined init with copy of MLTrainingSessionParameters(v58, v173, type metadata accessor for MLCheckpoint);
    switch(*(v60 + *(v185 + 20)))
    {
      case 0:
        v62 = *(v60 + *(v185 + 20));
        v61 = v58;
        v63 = 0xEB0000000064657ALL;
        v64 = 0x696C616974696E69;
        goto LABEL_34;
      case 1:
        0xEA0000000000676ELL;
        outlined destroy of MLHandActionClassifier.DataSource(v173, type metadata accessor for MLCheckpoint);
        v56 = 0;
        goto LABEL_44;
      case 2:
        v61 = v58;
        v63 = 0xE800000000000000;
        v64 = 0x676E696E69617274;
        goto LABEL_34;
      case 3:
        v61 = v58;
        v63 = 0xEA0000000000676ELL;
        v64 = 0x697461756C617665;
        goto LABEL_34;
      case 4:
        v61 = v58;
        v63 = v175;
        v64 = 0x636E657265666E69;
LABEL_34:
        v65 = _stringCompareWithSmolCheck(_:_:expecting:)(v64, v63, 0x6974636172747865, 0xEA0000000000676ELL, 0);
        v63;
        outlined destroy of MLHandActionClassifier.DataSource(v173, type metadata accessor for MLCheckpoint);
        if ((v65 & 1) == 0)
        {
          v58 = rawValue + v61;
          v66 = v57-- != 0;
          v59 = v183;
          if (!v66)
          {
            v57 = 0;
            v56 = 1;
            goto LABEL_44;
          }

          continue;
        }

        v56 = 0;
LABEL_43:
        v59 = v183;
LABEL_44:
        v82 = alloca(24);
        v83 = alloca(32);
        *&v126[1] = &v147;
        v84 = v167;
        v85 = v186;
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v126, v57, v56, v166);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v84, 1, v185);
        v186 = v85;
        if (EnumTagSinglePayload == 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v84, &demangling cache variable for type metadata for MLCheckpoint?);
          v87 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
          v88 = v181;
          swift_beginAccess(v181 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures, &v147, 0, 0);
          v89 = *(v88 + v87 + 8);
          *&__src[0] = *(v88 + v87);
          BYTE8(__src[0]) = v89;
          outlined copy of Result<_DataTable, Error>(*&__src[0], v89);
          v90 = MLDataTable.size.getter();
          outlined consume of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
          if (v90)
          {
            v80 = v187;
            v75 = v186;
            v81 = 0xEA0000000000676ELL;
            switch(*(v187 + v182))
            {
              case 0:
                goto LABEL_47;
              case 1:
                goto LABEL_57;
              case 2:
                goto LABEL_54;
              case 3:
                goto LABEL_56;
              case 4:
                goto LABEL_55;
            }
          }

          v99 = "erly initialized." + 0x8000000000000000;
          v100 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v100, 0, 0);
          v102 = 0xD000000000000028;
LABEL_63:
          *v101 = v102;
          *(v101 + 8) = v99;
          *(v101 + 16) = 0;
          *(v101 + 32) = 0;
          *(v101 + 48) = 0;
          swift_willThrow(&type metadata for MLCreateError, v100);
LABEL_64:
          v98 = v187;
        }

        else
        {
          outlined init with take of MLClassifierMetrics(v84, v59, type metadata accessor for MLCheckpoint);
          URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
          LOBYTE(__src[0]) = 1;
          *(&__src[0] + 1) = 44;
          __src[1] = 0xE100000000000000;
          *&__src[2] = 0xE000000000000000;
          *(&__src[2] + 1) = 92;
          *&__src[3] = 0xE100000000000000;
          BYTE8(__src[3]) = 1;
          *&__src[4] = 34;
          *(&__src[4] + 1) = 0xE100000000000000;
          LOBYTE(__src[5]) = 1;
          *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
          *&__src[6] = 10;
          *(&__src[6] + 1) = 0xE100000000000000;
          __src[7] = 0;
          LOBYTE(__src[8]) = 1;
          *(&__src[8] + 1) = 0;
          LOBYTE(__dst[0]) = 1;
          LOBYTE(v147) = 1;
          v148 = 44;
          v149 = 0xE100000000000000;
          v150 = 0;
          v151 = 0xE000000000000000;
          v152 = 92;
          v153 = 0xE100000000000000;
          v154 = 1;
          v155 = 34;
          v156 = 0xE100000000000000;
          v157 = 1;
          v158 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
          v159 = 10;
          v160 = 0xE100000000000000;
          v161 = 0;
          v162 = 1;
          v163 = 0;
          outlined retain of MLDataTable.ParsingOptions(__src);
          outlined release of MLDataTable.ParsingOptions(&v147, &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:));
          memcpy(__dst, __src, sizeof(__dst));
          v91 = v186;
          MLDataTable.init(contentsOf:options:)(v171, __dst);
          if (!v91)
          {
            v92 = v177;
            LOBYTE(v185) = v178;
            v186 = 0;
            v93 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
            v94 = v181;
            swift_beginAccess(v181 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures, v165, 1, 0);
            v95 = *(v94 + v93);
            *(v94 + v93) = v92;
            v96 = *(v94 + v93 + 8);
            *(v94 + v93 + 8) = v185;
            outlined consume of Result<_DataTable, Error>(v95, v96);
            URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
            LOBYTE(v126[0]) = 1;
            *(&v126[0] + 1) = 44;
            v126[1] = 0xE100000000000000;
            *&v126[2] = 0xE000000000000000;
            *(&v126[2] + 1) = 92;
            *&v126[3] = 0xE100000000000000;
            BYTE8(v126[3]) = 1;
            *&v126[4] = 34;
            *(&v126[4] + 1) = 0xE100000000000000;
            LOBYTE(v126[5]) = 1;
            *(&v126[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            *&v126[6] = 10;
            *(&v126[6] + 1) = 0xE100000000000000;
            v3.i64[0] = 0;
            v126[7] = 0;
            LOBYTE(v126[8]) = 1;
            *(&v126[8] + 1) = 0;
            v146[0] = 1;
            LOBYTE(v128) = 1;
            v129 = 44;
            v130 = 0xE100000000000000;
            v131 = 0;
            v132 = 0xE000000000000000;
            v133 = 92;
            v134 = 0xE100000000000000;
            v135 = 1;
            v136 = 34;
            v137 = 0xE100000000000000;
            v138 = 1;
            v139 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            v140 = 10;
            v141 = 0xE100000000000000;
            v142 = 0;
            v143 = 1;
            v144 = 0;
            outlined retain of MLDataTable.ParsingOptions(v126);
            outlined release of MLDataTable.ParsingOptions(&v128, 92);
            memcpy(v146, v126, sizeof(v146));
            v97 = v186;
            MLDataTable.init(contentsOf:options:)(v172, v146);
            v75 = v97;
            if (!v97)
            {
              outlined destroy of MLHandActionClassifier.DataSource(v183, type metadata accessor for MLCheckpoint);
              v103 = v179;
              LOBYTE(v185) = v180;
              v104 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
              v105 = v181;
              swift_beginAccess(v181 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures, v146, 1, 0);
              v106 = *(v105 + v104);
              *(v105 + v104) = v103;
              v107 = *(v105 + v104 + 8);
              *(v105 + v104 + 8) = v185;
              outlined consume of Result<_DataTable, Error>(v106, v107);
              v80 = v187;
              v81 = 0xEA0000000000676ELL;
              switch(*(v187 + v182))
              {
                case 0:
                  goto LABEL_47;
                case 1:
                  goto LABEL_57;
                case 2:
                  goto LABEL_54;
                case 3:
                  goto LABEL_56;
                case 4:
                  goto LABEL_55;
              }
            }
          }

          outlined destroy of MLHandActionClassifier.DataSource(v183, type metadata accessor for MLCheckpoint);
          v98 = v187;
        }

        outlined destroy of MLHandActionClassifier.DataSource(v98, type metadata accessor for MLCheckpoint);
        v53 = v184;
LABEL_21:
        outlined destroy of MLHandActionClassifier.DataSource(v53, type metadata accessor for MLHandActionClassifier.PersistentParameters);
        return;
    }
  }
}