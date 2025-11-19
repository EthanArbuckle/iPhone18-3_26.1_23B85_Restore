uint64_t partial apply for closure #1 in MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for AnyTreeClassifierModel(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t objectdestroyTm_3()
{
  v11 = type metadata accessor for AnyTreeClassifierModel(0);
  v1 = *(v11 - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 16);
  v4 = *(v1 + 64);
  v5 = v3 + v0;
  *(v0 + v3 + 8);
  v6 = *(v0 + v3 + 16);
  if (v6)
  {
    v6;
    *(v5 + 32);
  }

  v7 = v4 + v3;
  v8 = v5 + *(v11 + 24);
  v9 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v9 - 8) + 8))(v8, v9);
  *(v5 + *(v11 + 28));
  return swift_deallocObject(v0, v7, v2 | 7);
}

uint64_t partial apply for closure #1 in MLRandomForestClassifier.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for AnyTreeClassifierModel(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestClassifier.init(checkpoint:)(a1);
}

id sub_1C0749()
{
  v1 = v0;
  result = MLRandomForestClassifier.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLRandomForestClassifier(void *a1, void *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) == 0)
  {
    *a1 = *a2;
    v5 = a2[1];
    a1[1] = v5;
    v6 = a2[2];
    v5;
    if (v6)
    {
      a1[2] = v6;
      a1[3] = a2[3];
      v7 = a2[4];
      a1[4] = v7;
      v6;
      v7;
    }

    else
    {
      a1[4] = a2[4];
      *(a1 + 1) = *(a2 + 1);
    }

    v10 = type metadata accessor for AnyTreeClassifierModel(0);
    v11 = *(v10 + 24);
    v12 = type metadata accessor for BaseTreeClassifierModel(0);
    (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
    v13 = *(v10 + 28);
    v14 = *(a2 + v13);
    v15 = *(a2 + v13 + 8);
    *(a1 + v13) = v14;
    *(a1 + v13 + 8) = v15;
    v16 = a3[5];
    v17 = *(a2 + v16);
    *(a1 + v16) = v17;
    v18 = a3[6];
    *(a1 + v18) = *(a2 + v18);
    v19 = a1;
    v20 = *(a2 + v18 + 8);
    *(v19 + v18 + 8) = v20;
    v21 = a3[7];
    v70 = *(a2 + v21);
    *(v19 + v21) = v70;
    v22 = a3[8];
    v63 = v19;
    v23 = v19 + v22;
    v24 = a2 + v22;
    v25 = *(a2 + v22 + 24);
    v14;
    v17;
    v20;
    v70;
    if (v25)
    {
      *(v23 + 3) = v25;
      (**(v25 - 8))(v23, v24, v25);
    }

    else
    {
      v26 = *v24;
      *(v23 + 1) = *(v24 + 1);
      *v23 = v26;
    }

    *(v23 + 2) = *(v24 + 2);
    *(v23 + 3) = *(v24 + 3);
    *(v23 + 4) = *(v24 + 4);
    *(v23 + 10) = *(v24 + 10);
    v27 = a3;
    v28 = a3[9];
    v9 = v63;
    v29 = (v63 + v28);
    v30 = a2 + v28;
    v71 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v30, v71);
    if (EnumCaseMultiPayload == 2)
    {
      v37 = v29;
      v38 = *v30;
      swift_errorRetain(*v30);
      *v37 = v38;
      v29 = v37;
      EnumCaseMultiPayload = 2;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v29 = *v30;
      v64 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v32 = *(v64 + 20);
      v62 = v29 + v32;
      v33 = type metadata accessor for DataFrame(0);
      v72 = v29;
      v34 = *(*(v33 - 8) + 16);
      v35 = &v30[v32];
      v9 = v63;
      v34(v62, v35, v33);
      v36 = v33;
      v27 = a3;
      v34(&v72[*(v64 + 24)], &v30[*(v64 + 24)], v36);
      v29 = v72;
    }

    else
    {
      v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v39 = swift_getEnumCaseMultiPayload(v30, v73);
      v65 = v39 == 1;
      v40 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v39 == 1)
      {
        v40 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v41 = __swift_instantiateConcreteTypeFromMangledName(v40);
      (*(*(v41 - 8) + 16))(v29, v30, v41);
      swift_storeEnumTagMultiPayload(v29, v73, v65);
    }

    swift_storeEnumTagMultiPayload(v29, v71, EnumCaseMultiPayload);
    v42 = v27[10];
    v43 = (v9 + v42);
    v44 = (a2 + v42);
    v45 = swift_getEnumCaseMultiPayload(a2 + v42, v71);
    if (v45 == 2)
    {
      v50 = *v44;
      swift_errorRetain(v50);
      *v43 = v50;
      v61 = 2;
    }

    else
    {
      if (v45 != 1)
      {
        v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v55 = swift_getEnumCaseMultiPayload(v44, v54);
        v56 = v44;
        v57 = v55 == 1;
        v58 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v55 == 1)
        {
          v58 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v59 = __swift_instantiateConcreteTypeFromMangledName(v58);
        (*(*(v59 - 8) + 16))(v43, v56, v59);
        swift_storeEnumTagMultiPayload(v43, v54, v57);
        v52 = v43;
        v53 = v71;
        v51 = 0;
        goto LABEL_24;
      }

      *v43 = *v44;
      v69 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v46 = *(v69 + 20);
      v67 = v43 + v46;
      v47 = type metadata accessor for DataFrame(0);
      v48 = *(*(v47 - 8) + 16);
      v49 = v44 + v46;
      v9 = v63;
      v48(v67, v49, v47);
      v48(v43 + *(v69 + 24), v44 + *(v69 + 24), v47);
      v61 = 1;
    }

    v51 = v61;
    v52 = v43;
    v53 = v71;
LABEL_24:
    swift_storeEnumTagMultiPayload(v52, v53, v51);
    return v9;
  }

  v8 = *a2;
  *a1 = *a2;
  v9 = (v8 + ((v4 + 16) & ~v4));

  return v9;
}

uint64_t destroy for MLRandomForestClassifier(void *a1, int *a2)
{
  a1[1];
  v4 = a1[2];
  if (v4)
  {
    v4;
    a1[4];
  }

  v5 = type metadata accessor for AnyTreeClassifierModel(0);
  v6 = a1 + *(v5 + 24);
  v7 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v7 - 8) + 8))(v6, v7);
  *(a1 + *(v5 + 28));

  *(a1 + a2[6] + 8);
  *(a1 + a2[7]);
  v8 = a2[8];
  if (*(a1 + v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v8));
  }

  v9 = a1 + a2[9];
  v10 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v10);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v9;
      break;
    case 1:
      v30 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v14 = &v9[*(v30 + 20)];
      v29 = v10;
      v15 = type metadata accessor for DataFrame(0);
      v16 = v14;
      v17 = *(*(v15 - 8) + 8);
      v17(v16, v15);
      v18 = v15;
      v10 = v29;
      v17(&v9[*(v30 + 24)], v18);
      break;
    case 0:
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v9, v12) == 1)
      {
        v13 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v13 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v19 = __swift_instantiateConcreteTypeFromMangledName(v13);
      (*(*(v19 - 8) + 8))(v9, v19);
      break;
  }

  v20 = (a1 + a2[10]);
  result = swift_getEnumCaseMultiPayload(v20, v10);
  switch(result)
  {
    case 2:
      return *v20;
    case 1:
      v24 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v25 = v20 + *(v24 + 20);
      v26 = type metadata accessor for DataFrame(0);
      v27 = *(*(v26 - 8) + 8);
      v27(v25, v26);
      return (v27)(v20 + *(v24 + 24), v26);
    case 0:
      v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v20, v22) == 1)
      {
        v23 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v23 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledName(v23);
      return (*(*(v28 - 8) + 8))(v20, v28);
  }

  return result;
}

void *initializeWithCopy for MLRandomForestClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a2[1];
  a1[1] = v4;
  v5 = a2[2];
  v4;
  if (v5)
  {
    a1[2] = v5;
    a1[3] = a2[3];
    v6 = a2[4];
    a1[4] = v6;
    v5;
    v6;
  }

  else
  {
    a1[4] = a2[4];
    *(a1 + 1) = *(a2 + 1);
  }

  v7 = type metadata accessor for AnyTreeClassifierModel(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  v10 = *(v7 + 28);
  v11 = *(a2 + v10);
  v12 = *(a2 + v10 + 8);
  *(a1 + v10) = v11;
  *(a1 + v10 + 8) = v12;
  v13 = a3[5];
  v14 = *(a2 + v13);
  *(a1 + v13) = v14;
  v15 = a3[6];
  *(a1 + v15) = *(a2 + v15);
  v16 = a1;
  v17 = *(a2 + v15 + 8);
  *(v16 + v15 + 8) = v17;
  v18 = a3[7];
  v56 = *(a2 + v18);
  *(v16 + v18) = v56;
  v19 = a3[8];
  v53 = v16;
  v20 = v16 + v19;
  v21 = a2 + v19;
  v22 = *(a2 + v19 + 24);
  v11;
  v14;
  v17;
  v56;
  if (v22)
  {
    *(v20 + 3) = v22;
    (**(v22 - 8))(v20, v21, v22);
  }

  else
  {
    v23 = *v21;
    *(v20 + 1) = *(v21 + 1);
    *v20 = v23;
  }

  *(v20 + 2) = *(v21 + 2);
  *(v20 + 3) = *(v21 + 3);
  *(v20 + 4) = *(v21 + 4);
  *(v20 + 10) = *(v21 + 10);
  v24 = a3[9];
  v25 = v53 + v24;
  v26 = a2 + v24;
  v57 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v26, v57);
  if (EnumCaseMultiPayload == 2)
  {
    v32 = *v26;
    swift_errorRetain(*v26);
    *v25 = v32;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *v25 = *v26;
    v54 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v28 = *(v54 + 20);
    v52 = &v25[v28];
    v29 = type metadata accessor for DataFrame(0);
    v30 = &v26[v28];
    v31 = *(*(v29 - 8) + 16);
    v31(v52, v30, v29);
    v31(&v25[*(v54 + 24)], &v26[*(v54 + 24)], v29);
  }

  else
  {
    v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v33 = swift_getEnumCaseMultiPayload(v26, v55);
    v34 = v33 == 1;
    v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v33 == 1)
    {
      v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledName(v35);
    (*(*(v36 - 8) + 16))(v25, v26, v36);
    swift_storeEnumTagMultiPayload(v25, v55, v34);
  }

  swift_storeEnumTagMultiPayload(v25, v57, EnumCaseMultiPayload);
  v37 = a3[10];
  v38 = v53 + v37;
  v39 = a2 + v37;
  v40 = swift_getEnumCaseMultiPayload(a2 + v37, v57);
  if (v40 == 2)
  {
    v45 = *v39;
    swift_errorRetain(v45);
    *v38 = v45;
  }

  else if (v40 == 1)
  {
    *v38 = *v39;
    v59 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v41 = *(v59 + 20);
    v61 = &v38[v41];
    v42 = type metadata accessor for DataFrame(0);
    v43 = &v39[v41];
    v44 = *(*(v42 - 8) + 16);
    v44(v61, v43, v42);
    v44(&v38[*(v59 + 24)], &v39[*(v59 + 24)], v42);
  }

  else
  {
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v47 = swift_getEnumCaseMultiPayload(v39, v46);
    v62 = v39;
    v48 = v47 == 1;
    v49 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v47 == 1)
    {
      v49 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v50 = __swift_instantiateConcreteTypeFromMangledName(v49);
    (*(*(v50 - 8) + 16))(v38, v62, v50);
    swift_storeEnumTagMultiPayload(v38, v46, v48);
  }

  swift_storeEnumTagMultiPayload(v38, v57, v40);
  return v53;
}

void *assignWithCopy for MLRandomForestClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;
  v5;
  v6;
  v7 = a1 + 2;
  v8 = a2 + 2;
  v9 = a1[2];
  v10 = a2[2];
  if (v9)
  {
    if (v10)
    {
      a1[2] = v10;
      v10;
      v9;
      a1[3] = a2[3];
      v11 = a2[4];
      v12 = a1[4];
      a1[4] = v11;
      v11;
      v12;
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v7 = *v8;
      a1[4] = a2[4];
    }
  }

  else if (v10)
  {
    a1[2] = v10;
    a1[3] = a2[3];
    v13 = a2[4];
    a1[4] = v13;
    v10;
    v13;
  }

  else
  {
    a1[4] = a2[4];
    *v7 = *v8;
  }

  v14 = type metadata accessor for AnyTreeClassifierModel(0);
  v15 = *(v14 + 24);
  v16 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v16 - 8) + 24))(a1 + v15, a2 + v15, v16);
  v17 = *(v14 + 28);
  v18 = *(a2 + v17);
  v19 = *(a2 + v17 + 8);
  v20 = *(a1 + v17);
  *(a1 + v17) = v18;
  *(a1 + v17 + 8) = v19;
  v18;
  v20;
  v21 = a3[5];
  v22 = *(a2 + v21);
  v23 = *(a1 + v21);
  *(a1 + v21) = v22;
  v22;

  v24 = a3[6];
  *(a1 + v24) = *(a2 + v24);
  v25 = *(a2 + v24 + 8);
  v26 = *(a1 + v24 + 8);
  *(a1 + v24 + 8) = v25;
  v25;
  v26;
  v27 = a3[7];
  v28 = *(a2 + v27);
  v29 = *(a1 + v27);
  *(a1 + v27) = v28;
  v28;
  v29;
  v30 = a3[8];
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *(a2 + v30 + 24);
  if (*(a1 + v30 + 24))
  {
    v34 = (a1 + v30);
    if (v33)
    {
      __swift_assign_boxed_opaque_existential_0(v34, (a2 + v30));
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  else if (v33)
  {
    *(v31 + 3) = v33;
    (**(v33 - 8))(v31, v32);
    goto LABEL_15;
  }

  v35 = *v32;
  *(v31 + 1) = *(v32 + 1);
  *v31 = v35;
LABEL_15:
  *(v31 + 4) = *(v32 + 4);
  *(v31 + 5) = *(v32 + 5);
  *(v31 + 6) = *(v32 + 6);
  *(v31 + 7) = *(v32 + 7);
  *(v31 + 8) = *(v32 + 8);
  *(v31 + 9) = *(v32 + 9);
  *(v31 + 10) = *(v32 + 10);
  if (a1 != a2)
  {
    v36 = a3[9];
    v37 = (a1 + v36);
    v38 = (a2 + v36);
    outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLClassifierMetrics.Contents);
    v39 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v38, v39);
    v70 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v43 = *v38;
      swift_errorRetain(v43);
      *v37 = v43;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v37 = *v38;
      v63 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v65 = v39;
      v41 = *(v63 + 20);
      v61 = v37 + v41;
      v62 = type metadata accessor for DataFrame(0);
      v73 = *(*(v62 - 8) + 16);
      v42 = v38 + v41;
      v39 = v65;
      v73(v61, v42, v62);
      v73(v37 + *(v63 + 24), v38 + *(v63 + 24), v62);
    }

    else
    {
      v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v44 = swift_getEnumCaseMultiPayload(v38, v66);
      v74 = v44 == 1;
      v45 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v44 == 1)
      {
        v45 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v46 = __swift_instantiateConcreteTypeFromMangledName(v45);
      (*(*(v46 - 8) + 16))(v37, v38, v46);
      swift_storeEnumTagMultiPayload(v37, v66, v74);
    }

    swift_storeEnumTagMultiPayload(v37, v39, v70);
    v47 = a3[10];
    v48 = (a1 + v47);
    v49 = (a2 + v47);
    outlined destroy of MLActivityClassifier.ModelParameters(a1 + v47, type metadata accessor for MLClassifierMetrics.Contents);
    v50 = swift_getEnumCaseMultiPayload(v49, v39);
    if (v50 == 2)
    {
      v55 = *v49;
      swift_errorRetain(v55);
      *v48 = v55;
    }

    else
    {
      v69 = v50;
      if (v50 == 1)
      {
        *v48 = *v49;
        v75 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v51 = *(v75 + 20);
        v64 = v48 + v51;
        v67 = v39;
        v52 = type metadata accessor for DataFrame(0);
        v71 = *(*(v52 - 8) + 16);
        v53 = v49 + v51;
        v50 = 1;
        v71(v64, v53, v52);
        v54 = v52;
        v39 = v67;
        v71(v48 + *(v75 + 24), v49 + *(v75 + 24), v54);
      }

      else
      {
        v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v56 = swift_getEnumCaseMultiPayload(v49, v72);
        v57 = v56 == 1;
        v58 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v56 == 1)
        {
          v58 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v59 = __swift_instantiateConcreteTypeFromMangledName(v58);
        (*(*(v59 - 8) + 16))(v48, v49, v59);
        swift_storeEnumTagMultiPayload(v48, v72, v57);
        v50 = v69;
      }
    }

    swift_storeEnumTagMultiPayload(v48, v39, v50);
  }

  return a1;
}

uint64_t initializeWithTake for MLRandomForestClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v5 = type metadata accessor for AnyTreeClassifierModel(0);
  v6 = *(v5 + 24);
  v7 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = *(v5 + 28);
  *(a1 + v8 + 8) = *(a2 + v8 + 8);
  *(a1 + v8) = *(a2 + v8);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  qmemcpy((a1 + a3[8]), (a2 + a3[8]), 0x58uLL);
  v47 = a3;
  v9 = a3[9];
  v10 = (v9 + a1);
  v11 = (a2 + v9);
  v12 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v11, v12);
  if (EnumCaseMultiPayload == 1)
  {
    *v10 = *v11;
    v45 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v21 = *(v45 + 20);
    v46 = &v10[v21];
    v51 = v12;
    v22 = type metadata accessor for DataFrame(0);
    v23 = &v11[v21];
    v24 = *(*(v22 - 8) + 32);
    v24(v46, v23, v22);
    v25 = v22;
    v12 = v51;
    v24(&v10[*(v45 + 24)], &v11[*(v45 + 24)], v25);
    v20 = 1;
    v18 = v10;
    v19 = v51;
LABEL_7:
    swift_storeEnumTagMultiPayload(v18, v19, v20);
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v14 = swift_getEnumCaseMultiPayload(v11, v50);
    v15 = v14 == 1;
    v16 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v14 == 1)
    {
      v16 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledName(v16);
    (*(*(v17 - 8) + 32))(v10, v11, v17);
    swift_storeEnumTagMultiPayload(v10, v50, v15);
    v18 = v10;
    v19 = v12;
    v20 = 0;
    goto LABEL_7;
  }

  memcpy(v10, v11, *(*(v12 - 8) + 64));
LABEL_9:
  v26 = v47[10];
  v27 = (a1 + v26);
  v28 = (v26 + a2);
  v29 = swift_getEnumCaseMultiPayload(v28, v12);
  if (v29 == 1)
  {
    *v27 = *v28;
    v39 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v52 = v12;
    v40 = *(v39 + 20);
    v48 = &v27[v40];
    v41 = type metadata accessor for DataFrame(0);
    v42 = &v28[v40];
    v43 = *(*(v41 - 8) + 32);
    v43(v48, v42, v41);
    v43(&v27[*(v39 + 24)], &v28[*(v39 + 24)], v41);
    v38 = 1;
    v36 = v27;
    v37 = v52;
  }

  else
  {
    if (v29)
    {
      memcpy(v27, v28, *(*(v12 - 8) + 64));
      return a1;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v31 = swift_getEnumCaseMultiPayload(v28, v30);
    v32 = v12;
    v33 = v31 == 1;
    v34 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v31 == 1)
    {
      v34 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledName(v34);
    (*(*(v35 - 8) + 32))(v27, v28, v35);
    swift_storeEnumTagMultiPayload(v27, v30, v33);
    v36 = v27;
    v37 = v32;
    v38 = 0;
  }

  swift_storeEnumTagMultiPayload(v36, v37, v38);
  return a1;
}

void *assignWithTake for MLRandomForestClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];
  v5;
  v6 = a1 + 2;
  v7 = a2 + 2;
  v8 = a1[2];
  if (v8)
  {
    v9 = a2[2];
    if (v9)
    {
      a1[2] = v9;
      v8;
      a1[3] = a2[3];
      v10 = a1[4];
      a1[4] = a2[4];
      v10;
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v6 = *v7;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v11 = type metadata accessor for AnyTreeClassifierModel(0);
  v12 = *(v11 + 24);
  v13 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v13 - 8) + 40))(a1 + v12, a2 + v12, v13);
  v14 = *(v11 + 28);
  v15 = *(a2 + v14 + 8);
  v16 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);
  *(a1 + v14 + 8) = v15;
  v16;
  v17 = a3[5];
  v18 = *(a1 + v17);
  *(a1 + v17) = *(a2 + v17);

  v19 = a3[6];
  *(a1 + v19) = *(a2 + v19);
  v20 = *(a1 + v19 + 8);
  *(a1 + v19 + 8) = *(a2 + v19 + 8);
  v20;
  v21 = a3[7];
  v22 = *(a1 + v21);
  *(a1 + v21) = *(a2 + v21);
  v22;
  v23 = a3[8];
  v24 = a1 + v23;
  v25 = a2 + v23;
  if (*(a1 + v23 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v23));
  }

  v26 = *v25;
  *(v24 + 1) = *(v25 + 1);
  *v24 = v26;
  *(v24 + 2) = *(v25 + 2);
  *(v24 + 3) = *(v25 + 3);
  *(v24 + 8) = *(v25 + 8);
  *(v24 + 72) = *(v25 + 72);
  if (a1 == a2)
  {
    return a1;
  }

  v27 = a3[9];
  v28 = a1 + v27;
  v29 = a2 + v27;
  outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLClassifierMetrics.Contents);
  v64 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v29, v64);
  if (EnumCaseMultiPayload == 1)
  {
    *v28 = *v29;
    v66 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v39 = *(v66 + 20);
    v60 = &v28[v39];
    v61 = type metadata accessor for DataFrame(0);
    v40 = &v29[v39];
    v41 = *(*(v61 - 8) + 32);
    v41(v60, v40, v61);
    v41(&v28[*(v66 + 24)], &v29[*(v66 + 24)], v61);
    v38 = 1;
    v35 = v28;
    v36 = v64;
    v37 = v64;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v42 = v29;
      v36 = v64;
      memcpy(v28, v42, *(*(v64 - 8) + 64));
      goto LABEL_17;
    }

    v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v31 = swift_getEnumCaseMultiPayload(v29, v65);
    v32 = v31 == 1;
    v33 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v31 == 1)
    {
      v33 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v34 = __swift_instantiateConcreteTypeFromMangledName(v33);
    (*(*(v34 - 8) + 32))(v28, v29, v34);
    swift_storeEnumTagMultiPayload(v28, v65, v32);
    v35 = v28;
    v36 = v64;
    v37 = v64;
    v38 = 0;
  }

  swift_storeEnumTagMultiPayload(v35, v37, v38);
LABEL_17:
  v43 = a3[10];
  v44 = a1 + v43;
  v45 = a2 + v43;
  outlined destroy of MLActivityClassifier.ModelParameters(a1 + v43, type metadata accessor for MLClassifierMetrics.Contents);
  v46 = swift_getEnumCaseMultiPayload(v45, v36);
  if (v46 == 1)
  {
    *v44 = *v45;
    v63 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v55 = *(v63 + 20);
    v67 = &v44[v55];
    v56 = type metadata accessor for DataFrame(0);
    v57 = &v45[v55];
    v58 = *(*(v56 - 8) + 32);
    v58(v67, v57, v56);
    v58(&v44[*(v63 + 24)], &v45[*(v63 + 24)], v56);
    v54 = 1;
    v52 = v44;
    v53 = v64;
  }

  else
  {
    if (v46)
    {
      memcpy(v44, v45, *(*(v36 - 8) + 64));
      return a1;
    }

    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v48 = swift_getEnumCaseMultiPayload(v45, v47);
    v49 = v48 == 1;
    v50 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v48 == 1)
    {
      v50 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v51 = __swift_instantiateConcreteTypeFromMangledName(v50);
    (*(*(v51 - 8) + 32))(v44, v45, v51);
    swift_storeEnumTagMultiPayload(v44, v47, v49);
    v52 = v44;
    v53 = v64;
    v54 = 0;
  }

  swift_storeEnumTagMultiPayload(v52, v53, v54);
  return a1;
}

uint64_t sub_1C1D0A(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for AnyTreeClassifierModel(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for MLClassifierMetrics(0);
    v4 = *(a3 + 36) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  result = 0;
  if ((*(a1 + *(a3 + 20)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 20)) >> 1) + 1;
  }

  return result;
}

uint64_t sub_1C1D97(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for AnyTreeClassifierModel(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    if (a3 == 0x7FFFFFFF)
    {
      result = *(a4 + 20);
      *(a1 + result) = 2 * (a2 - 1);
      return result;
    }

    v7 = type metadata accessor for MLClassifierMetrics(0);
    v6 = *(a4 + 36) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLRandomForestClassifier(uint64_t a1)
{
  result = type metadata accessor for AnyTreeClassifierModel(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &value witness table for Builtin.UnknownObject + 64;
    v4[2] = &unk_3449D0;
    v4[3] = &value witness table for Builtin.BridgeObject + 64;
    v4[4] = &unk_3449E8;
    result = type metadata accessor for MLClassifierMetrics.Contents(319);
    if (v3 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      v6 = v5;
      swift_initStructMetadata(a1, 256, 7, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C1EBC()
{
  swift_unknownObjectRelease(v0[2]);
  v0[4];
  v0[6];
  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v5 = v1[6];
  v6 = swift_task_alloc(64);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

uint64_t specialized _NativeSet._unsafeUpdate(with:)(uint64_t a1, uint64_t a2)
{
  v19 = *v2;
  Hasher.init(_seed:)(*(v19 + 40));
  v20 = a2;
  v21 = a1;
  if (a2)
  {
    Hasher._combine(_:)(1u);
    a2;
    String.hash(into:)(v18, a1);
    a2, a1;
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = Hasher._finalize()();
  v4 = v19;
  v5 = ~(-1 << *(v19 + 32));
  v6 = v5 & v3;
  result = *(v19 + 8 * ((v5 & v3) >> 6) + 56);
  if (!_bittest64(&result, v6))
  {
    v9 = v20;
    v10 = v21;
LABEL_15:
    if (v4[2] >= v4[3])
    {
      BUG();
    }

    v4[(v6 >> 6) + 7] |= 1 << v6;
    v13 = v4[6];
    v14 = 16 * v6;
    *(v13 + v14) = v10;
    *(v13 + v14 + 8) = v9;
    v15 = v4[2];
    v16 = __OFADD__(1, v15);
    result = v15 + 1;
    if (v16)
    {
      BUG();
    }

    v4[2] = result;
    return result;
  }

  v8 = *(v19 + 48);
  v9 = v20;
  v10 = v21;
  while (1)
  {
    v11 = *(v8 + 16 * v6 + 8);
    if (v11)
    {
      break;
    }

    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_12:
    v6 = v5 & (v6 + 1);
    result = v4[(v6 >> 6) + 7];
    if (!_bittest64(&result, v6))
    {
      goto LABEL_15;
    }
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  if (v10 ^ *(v8 + 16 * v6) | v9 ^ v11)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v8 + 16 * v6), *(v8 + 16 * v6 + 8), v21, v9, 0);
    v4 = v19;
    v10 = v21;
    v9 = v20;
    if ((v12 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  result = v11, v4;
  v10 = v21;
  v9 = v20;
LABEL_19:
  v17 = (16 * v6 + v8);
  *v17 = v10;
  v17[1] = v9;
  return result;
}

unint64_t MethodName.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 0x6172745F74696E69;
      break;
    case 1:
    case 8:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x745F656D75736572;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6E69617274;
      break;
    case 6:
      result = 1702257011;
      break;
    case 7:
      result = 0x6174656D5F646461;
      break;
    case 9:
      result = 0x737265765F746567;
      break;
    case 10:
      result = 0x74636964657270;
      break;
    case 11:
      result = 0x657A696C797473;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x657461756C617665;
      break;
    case 14:
      result = 0x74706F5F74696E69;
      break;
    case 15:
      result = 0x6569665F7473696CLL;
      break;
    case 16:
      result = 0x756C61765F746567;
      break;
    case 17:
      result = 0x6E656D6D6F636572;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0xD00000000000001DLL;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0xD000000000000019;
      break;
    case 23:
      result = 0xD00000000000002BLL;
      break;
    case 24:
      result = 0xD000000000000024;
      break;
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 26:
      result = 0xD000000000000021;
      break;
  }

  return result;
}

uint64_t MLHandActionClassifier.GraphCNN.updateGraphCNN(from:)(uint64_t a1)
{
  v46 = v1;
  v44 = v2;
  v3 = *(*(type metadata accessor for MLHandActionClassifier.GraphCNNModel(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v41 = &v25;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v43 = &v25;
  v9 = *(*(type metadata accessor for URL(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v42 = a1;
  URL.appendingPathComponent(_:)(0x7461446C65646F6DLL, 0xE900000000000061);
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
  __dst[0] = 1;
  LOBYTE(v26[0]) = 1;
  v26[1] = 44;
  v26[2] = 0xE100000000000000;
  v26[3] = 0;
  v26[4] = 0xE000000000000000;
  v26[5] = 92;
  v26[6] = 0xE100000000000000;
  v27 = 1;
  v28 = 34;
  v29 = 0xE100000000000000;
  v30 = 1;
  v31 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  v32 = 10;
  v33 = 0xE100000000000000;
  v34 = 0;
  v35 = 1;
  v36 = 0;
  outlined retain of MLDataTable.ParsingOptions(__src);
  outlined release of MLDataTable.ParsingOptions(v26, 0xE000000000000000);
  memcpy(__dst, __src, sizeof(__dst));
  v12 = v46;
  result = MLDataTable.init(contentsOf:options:)(&v25, __dst);
  if (!v12)
  {
    v14 = v44;
    v15 = v39;
    v16 = v40;
    ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5Tm = _s8CreateML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5Tm(v39, v40, 0.0);
    v45 = v15;
    v18 = v14 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
    v19 = v14 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
    v20 = ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5Tm;
    swift_beginAccess(v19, __dst, 0, 0);
    v21 = v18;
    v22 = v41;
    outlined init with copy of MLTrainingSessionParameters(v21, v41, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
    v46 = v20;
    _s14NeuralNetworks3SGDV8CreateMLE15createOptimizer3for20checkpointDictionaryACyxGx_SDySSSaySdGGtKFZAD22MLHandActionClassifierV13GraphCNNModelV_Tt2g5(v22, v20);
    outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
    v23 = v43;
    specialized _ModelCheckpoint<>.updateGraph<A>(from:optimizer:checkpointDictionary:)(v42, v43, v46);
    outlined consume of Result<_DataTable, Error>(v45, v16);
    v46;
    v24 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer + v44;
    swift_beginAccess(OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer + v44, &v39, 33, 0);
    outlined assign with take of SGD<MLHandActionClassifier.GraphCNNModel>(v23, v24);
    return swift_endAccess(&v39);
  }

  return result;
}

uint64_t specialized SGD.updateOptimizerState(for:shape:using:name:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7)
{
  v56 = v7;
  v65 = a3;
  v57 = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v58 = &v54;
  v59 = type metadata accessor for Tensor(0);
  v66 = *(v59 - 8);
  v13 = *(v66 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v60 = &v54;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v67 = &v54;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v61 = &v54;
  v21 = alloca(v18);
  v22 = alloca(v18);
  outlined init with copy of TensorShape?(a2, &v54);
  v23 = type metadata accessor for TensorShape(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v54, 1, v23);
  v55 = a4;
  v62 = v23;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v54, &demangling cache variable for type metadata for TensorShape?);
    v69 = 0;
    v70 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v25 = v70;
    a5;
    v25;
    v69 = a4;
    v64 = a5;
    v70 = a5;
    v26._object = ".optimizer.velocity" + 0x8000000000000000;
    v26._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v26);
    v27 = v70;
    v28 = specialized Dictionary.subscript.getter(v69, v70, v65);
    result = v27;
    if (!v28)
    {
      return result;
    }

    v30 = *(v28 + 16);
    if (v30)
    {
      v69 = _swiftEmptyArrayStorage;
      v31 = 0;
      v68 = v28;
      v71 = v30;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
      v32 = v71;
      v33 = v68;
      v34 = v69;
      a6 = -9.223372036854778e18;
      a7 = 9.223372036854776e18;
      do
      {
        v35 = *(v33 + 8 * v31 + 32);
        if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          BUG();
        }

        if (v35 <= -9.223372036854778e18)
        {
          BUG();
        }

        if (v35 >= 9.223372036854776e18)
        {
          BUG();
        }

        v69 = v34;
        v36 = v34[2];
        v37 = v34[3];
        if (v37 >> 1 <= v36)
        {
          v63 = v35;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v37 >= 2, v36 + 1, 1);
          v35 = v63;
          a7 = 9.223372036854776e18;
          a6 = -9.223372036854778e18;
          v32 = v71;
          v33 = v68;
          v34 = v69;
        }

        v31 = (v31 + 1);
        v34[2] = v36 + 1;
        v34[v36 + 4] = v35;
        a5 = v64;
      }

      while (v32 != v31);
      v71 = v34;
      v33;
    }

    else
    {
      v28;
      v71 = _swiftEmptyArrayStorage;
      a5 = v64;
    }
  }

  else
  {
    v71 = TensorShape.dimensions.getter();
    (*(*(v23 - 8) + 8))(&v54, v23);
  }

  v69 = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v38 = v70;
  a5;
  v38;
  v69 = v55;
  v70 = a5;
  v39._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v39);
  v40 = v70;
  v41 = specialized Dictionary.subscript.getter(v69, v70, v65);
  v40;
  if (!v41)
  {
    return v71;
  }

  v42 = v61;
  TensorShape.init(_:)(v71, a6, a7);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v62);
  v43 = v60;
  Array<A>.floatTensor(shape:)(v42, v41);
  v41;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v42, &demangling cache variable for type metadata for TensorShape?);
  v44 = v67;
  v45 = v43;
  v46 = v59;
  v47 = v66;
  (*(v66 + 32))(v67, v45, v59);
  v48 = v58;
  (*(v47 + 16))(v58, v44, v46);
  v49 = v48;
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v46);
  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>);
  v51 = *(v50 + 56) + v56;
  v52 = v57;

  v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLHandActionClassifier.GraphCNNModel>);
  OptimizerStateDictionary.subscript.setter(v49, v52, v53);
  return (*(v66 + 8))(v67, v46);
}

uint64_t _s14NeuralNetworks3SGDV8CreateMLE15createOptimizer3for20checkpointDictionaryACyxGx_SDySSSaySdGGtKFZAD22MLHandActionClassifierV13GraphCNNModelV_Tt2g5(uint64_t a1, uint64_t a2)
{
  v28[0] = a1;
  v28[1] = v2;
  v3 = 0xD000000000000033;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v29 = v28;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v30 = v28;
  v10 = specialized Dictionary.subscript.getter(0x676E696E7261656CLL, 0xEC00000065746152, a2);
  if (!v10)
  {
    v3 = 0xD000000000000037;
LABEL_22:
    v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
    *v27 = v3;
    *(v27 + 8) = v14 | 0x8000000000000000;
    *(v27 + 16) = 0;
    *(v27 + 32) = 0;
    *(v27 + 48) = 2;
    return swift_willThrow(&type metadata for MLCreateError, v26);
  }

  v11 = v10;
  if (*(v10 + 16) != 1)
  {
    v3 = 0xD000000000000037;
LABEL_21:
    v11;
    goto LABEL_22;
  }

  *&v12 = COERCE_DOUBLE(specialized Dictionary.subscript.getter(0x6D75746E656D6F6DLL, 0xE800000000000000, a2));
  if (*&v12 == 0.0)
  {
    v14 = "e checkpoint dictionary";
    goto LABEL_21;
  }

  if (*(v12 + 16) != 1)
  {
    v14 = "e checkpoint dictionary";
LABEL_20:
    v12;
    goto LABEL_21;
  }

  v33 = *&v12;
  v13 = specialized Dictionary.subscript.getter(0xD000000000000014, (".isBidirectional" + 0x8000000000000000), a2);
  v3 = 0xD00000000000003FLL;
  v14 = "eckpoint dictionary";
  if (!v13)
  {
LABEL_19:
    *&v12 = v33;
    goto LABEL_20;
  }

  if (*(v13 + 16) != 1)
  {
    v13;
    goto LABEL_19;
  }

  if (!*(v11 + 16))
  {
    BUG();
  }

  v15 = v13;
  v16 = *(v11 + 32);
  v31 = v16;
  v11;
  if (!*(*&v33 + 16))
  {
    BUG();
  }

  v17 = *(*&v33 + 32);
  v32 = v17;
  *&v33;
  if (!*(v15 + 16))
  {
    BUG();
  }

  v33 = *(v15 + 32);
  v18 = v33;
  v15;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v33 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v33 >= 9.223372036854776e18)
  {
    BUG();
  }

  LODWORD(v33) = v33 == 1;
  v19 = type metadata accessor for GradientClippingMode(0);
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v19);
  v20 = v29;
  *v29 = 981668463;
  v21 = enum case for RegularizationKind.l2(_:);
  v22 = type metadata accessor for RegularizationKind(0);
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v22);
  v23 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v24 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  return SGD.init(for:learningRate:momentum:usesNesterovMomentum:gradientClippingMode:regularizationKind:gradientScale:)(v28[0], LODWORD(v33), v30, v20, v23, v24, v31, v32, 1.0);
}

void *MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(char *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v87 = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v76 = v72;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v77 = v72;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v75 = v72;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v85 = v72;
  v20 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v83 = v5;
  v86 = a1;
  v5[2] = a1;
  v5[3] = a3;
  v5[4] = a4;
  *(v72 + *(v20 + 36)) = a2 & 1;
  v24 = v20;
  *(v72 + *(v20 + 40)) = v87;
  v25 = type metadata accessor for ParameterInitializer(0);
  a1;
  v26 = static ParameterInitializer.zeros.getter();
  v84 = v25;
  v27 = static ParameterInitializer.ones.getter();
  BatchNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:)(v26, v27, 0.1, 0.0000099999997);
  v87 = type metadata accessor for ComputeDevice(0);
  v28 = v85;
  __swift_storeEnumTagSinglePayload(v85, 1, 1, v87);
  v29 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0, 1, &type metadata for Float, &protocol witness table for Float, v28);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, &demangling cache variable for type metadata for ComputeDevice?);
  v30 = v72 + v24[5];
  Dense.init(unitCount:weightInitializer:biasInitializer:)(704, v29, 0);
  v31 = static ParameterInitializer.zeros.getter();
  v32 = static ParameterInitializer.ones.getter();
  v33 = v24[6];
  BatchNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:)(v31, v32, 0.1, 0.0000099999997);
  v34 = v24[7];
  v78 = v24;
  v79 = v72;
  Dropout.init(probability:seed:)(0, 1, 0.2);
  v80 = *(v86 + 2);
  v86;
  v35 = v72 + v24[8];
  v86 = v35;
  static MLHandActionClassifier.SingleStreamBlock.makeDownSampledInvertedResidual(inplanes:planes:stride:)(16, 8, 1, 1);
  v36 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v37 = v36[5];
  static MLHandActionClassifier.SingleStreamBlock.makeDownSampledInvertedResidual(inplanes:planes:stride:)(8, 16, 1, 1);
  v38 = v36[6];
  static MLHandActionClassifier.SingleStreamBlock.makeDownSampledInvertedResidual(inplanes:planes:stride:)(16, 32, 1, 1);
  v39 = v36[7];
  v81 = v36;
  static MLHandActionClassifier.SingleStreamBlock.makeDownSampledInvertedResidual(inplanes:planes:stride:)(32, 64, 2, 2);
  v40 = &v35[v36[8]];
  v41 = v85;
  __swift_storeEnumTagSinglePayload(v85, 1, 1, v87);
  v42 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0, 1, &type metadata for Float, &protocol witness table for Float, v41);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, &demangling cache variable for type metadata for ComputeDevice?);
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(128, 1, 1, 1, 1, 0, 0, 1, 1, 1, v42, 0);
  AveragePool2D.init(kernelSize:stride:padding:countIncludesPadding:)(1, 3, 1, 1, 0, 0, 1, 1);
  v82 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v43 = *(v82 + 20);
  v40[v43 + 48] = v73;
  v44 = v72[0];
  v45 = v72[1];
  *&v40[v43 + 32] = v72[2];
  *&v40[v43 + 16] = v45;
  *&v40[v43] = v44;
  v46 = v41;
  __swift_storeEnumTagSinglePayload(v41, 1, 1, v87);
  v47 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0, 1, &type metadata for Float, &protocol witness table for Float, v41);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v46, &demangling cache variable for type metadata for ComputeDevice?);
  v48 = v82;
  v49 = *(v82 + 24);
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(64, 9, 1, 1, 1, 4, 0, 1, 1, 1, v47, 0);
  v50 = static ParameterInitializer.zeros.getter();
  v51 = static ParameterInitializer.ones.getter();
  v52 = *(v48 + 28);
  BatchNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:)(v50, v51, 0.1, 0.0000099999997);
  v53 = &v40[*(v48 + 32)];
  Dropout.init(probability:seed:)(0, 1, 0.2);
  v54 = v81;
  v55 = v81[9];
  static MLHandActionClassifier.SingleStreamBlock.makeDownSampledInvertedResidual(inplanes:planes:stride:)(64, 128, 2, 2);
  v56 = v54[10];
  static MLHandActionClassifier.SingleStreamBlock.makeDownSampledInvertedResidual(inplanes:planes:stride:)(128, 256, 1, 1);
  GlobalAveragePool2D.init()();
  v57 = v85;
  __swift_storeEnumTagSinglePayload(v85, 1, 1, v87);
  v58 = v57;
  v59 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0, 1, &type metadata for Float, &protocol witness table for Float, v57);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v58, &demangling cache variable for type metadata for ComputeDevice?);
  v60 = static ParameterInitializer.zeros.getter();
  v61 = *(type metadata accessor for MLHandActionClassifier.Torso(0) + 24);
  Dense.init(unitCount:weightInitializer:biasInitializer:)(v80, v59, v60);
  v62 = v83 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  v63 = v79;
  outlined init with take of MLHandActionClassifier.GraphCNNModel(v79, v83 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model);
  swift_beginAccess(v62, v74, 0, 0);
  outlined init with copy of MLTrainingSessionParameters(v62, v63, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v64 = type metadata accessor for GradientClippingMode(0);
  v65 = v77;
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v64);
  v66 = v76;
  *v76 = 981668463;
  LODWORD(v62) = enum case for RegularizationKind.l2(_:);
  v67 = type metadata accessor for RegularizationKind(0);
  (*(*(v67 - 8) + 104))(v66, v62, v67);
  __swift_storeEnumTagSinglePayload(v66, 0, 1, v67);
  v68 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  v69 = v75;
  SGD.init(for:learningRate:momentum:usesNesterovMomentum:gradientClippingMode:regularizationKind:gradientScale:)(v63, 1, v65, v66, v78, v68, 0.0099999998, 0.89999998, 1.0);
  outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v70 = v83;
  outlined init with take of SGD<MLHandActionClassifier.GraphCNNModel>(v69, v83 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer);
  return v70;
}

uint64_t _s8CreateML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5Tm(void *a1, char a2, double a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  v22 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v4, &protocol witness table for String);
  v19 = a2 & 1;
  outlined copy of Result<_DataTable, Error>(a1, a2);
  LOBYTE(v20) = a2 & 1;
  outlined copy of Result<_DataTable, Error>(a1, a2);
  v5 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a1, a2 & 1);
  if (v5)
  {
    MLDataTable.Rows.subscript.getter(0);
    specialized RandomAccessCollection<>.index(after:)(0, a1, v19);
    if (v20[2])
    {

      v20;

      v6 = specialized __RawDictionaryStorage.find<A>(_:)(1937335659, 0xE400000000000000);
      if (v7)
      {
        v8 = *(v20[7] + 8 * v6);

        v9 = CMLSequence.value(at:)(v8);
        if (v3)
        {
          swift_unexpectedError(v3, "CreateML/MLDataTable.Row.swift", 30, 1, 85);
          BUG();
        }

        MLDataValue.init(_:)(v9, a3);
        v20;

        v21;
        if (v21 == 2)
        {
          if (v20[2])
          {

            v20;

            outlined copy of MLDataValue(a1, v20, 2u);
            v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x7365756C6176, 0xE600000000000000);
            if (v11)
            {
              v12 = *(v20[7] + 8 * v10);

              v13 = CMLSequence.value(at:)(v12);
              MLDataValue.init(_:)(v13, a3);
              v20;

              v21;
              v22;
              outlined consume of MLDataValue(a1, v20, v21);
            }

            else
            {
              v22;

              v20;
            }

            outlined consume of MLDataValue(a1, v20, 2);
          }

          else
          {
            v22;
          }

          v16 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v16, 0, 0);
          *v17 = 0xD00000000000005BLL;
          *(v17 + 8) = " contains string keys" + 0x8000000000000000;
          *(v17 + 16) = 0;
          *(v17 + 32) = 0;
          *(v17 + 48) = 2;
          swift_willThrow();
          outlined consume of MLDataValue(a1, v20, 2);
          goto LABEL_18;
        }

        v22;
        outlined consume of MLDataValue(a1, v20, v21);
      }

      else
      {
        v22;

        v20;
      }
    }

    else
    {
      v22;
    }

    v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
    *v15 = 0xD000000000000055;
    *(v15 + 8) = "nd in the checkpoint dictionary" + 0x8000000000000000;
    *(v15 + 16) = 0;
    *(v15 + 32) = 0;
    *(v15 + 48) = 2;
    swift_willThrow();
LABEL_18:

    v20;

    outlined consume of Result<_DataTable, Error>(a1, v19);
    return v22;
  }

  outlined consume of Result<_DataTable, Error>(a1, v19);
  return v22;
}

uint64_t specialized _ModelCheckpoint<>.updateGraph<A>(from:optimizer:checkpointDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v112 = v3;
  v108 = a3;
  v109 = a2;
  v96 = type metadata accessor for LSTM(0);
  v105 = *(v96 - 8);
  v5 = *(v105 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v99 = &v78;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v97 = &v78;
  v92 = type metadata accessor for Dense(0);
  v104 = *(v92 - 8);
  v10 = *(v104 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v98 = &v78;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v94 = &v78;
  v103 = type metadata accessor for Conv2D(0);
  v93 = *(v103 - 8);
  v15 = *(v93 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v95 = &v78;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v90 = &v78;
  v85 = type metadata accessor for BatchNorm(0);
  v89 = *(v85 - 8);
  v20 = *(v89 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v91 = &v78;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v86 = &v78;
  v25 = *(*(type metadata accessor for MLActivityClassifier.Model(0) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v28 = v4 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model;
  swift_beginAccess(v4 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model, v79, 0, 0);
  v29 = v28;
  v30 = 0;
  outlined init with copy of MLTrainingSessionParameters(v29, &v78, type metadata accessor for MLActivityClassifier.Model);
  v107 = v4;
  v31 = specialized _ModelCheckpoint<>.trainableSublayers(model:)(&v78, type metadata accessor for MLActivityClassifier.Model, &lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
  outlined destroy of MLActivityClassifier.ModelParameters(&v78, type metadata accessor for MLActivityClassifier.Model);
  v32 = v31[2];
  v111 = v31;
  v88 = v31 + 4;
  for (i = v32; ; v32 = i)
  {
    if (v30 == v32)
    {
      v102 = 0;
      v101 = 0;
      v100 = 0;
      v33 = v32;
    }

    else
    {
      if (v30 < 0)
      {
        BUG();
      }

      if (v30 >= v111[2])
      {
        BUG();
      }

      v33 = v30 + 1;
      *&v100 = v30;
      outlined init with copy of TabularRegressionTask(&v88[5 * v30], &v100 + 8);
    }

    v34 = *&v101;
    v80[2] = v102;
    v80[1] = v101;
    v80[0] = v100;
    if (!v102)
    {
      return v111;
    }

    v84 = v33;
    v35 = *&v80[0];
    outlined init with take of TabularRegressionTask((v80 + 8), &v100);
    v81 = 0x5F726579616CLL;
    v82 = 0xE600000000000000;
    *&v83 = v35;
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v36._object;
    String.append(_:)(v36);
    object;
    v106 = v81;
    *&v110 = v82;
    outlined init with copy of TabularRegressionTask(&v100, &v81);
    v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
    v39 = v86;
    v40 = v85;
    if (swift_dynamicCast(v86, &v81, v38, v85, 0))
    {
      v41 = v91;
      v42 = v89;
      (*(v89 + 32))(v91, v39, v40);
      v43 = v112;
      specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(v41, v109, v106, v110, v108, specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter, specialized _ModelCheckpoint<>.layerStateKeyPathLookup.getter, specialized Dictionary.subscript.getter, &OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model, &lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model, specialized Adam.updateOptimizerState(for:shape:using:name:), specialized Dictionary.subscript.getter);
      v112 = v43;
      if (!v43)
      {
        v110;
        v44 = v41;
        v45 = v40;
LABEL_14:
        (*(v42 + 8))(v44, v45);
        goto LABEL_22;
      }

      v110;
      v71 = v41;
      v72 = v40;
      goto LABEL_26;
    }

    v46 = v90;
    v47 = v103;
    if (swift_dynamicCast(v90, &v81, v38, v103, 0))
    {
      v48 = v47;
      v49 = v95;
      v42 = v93;
      v50 = (*(v93 + 32))(v95, v46, v48);
      v51 = v110;
      v52 = v112;
      specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(v49, v109, v106, v110, v108, v50, v34);
      v112 = v52;
      if (!v52)
      {
        v51;
        v44 = v49;
        v45 = v103;
        goto LABEL_14;
      }

      v51;
      v71 = v49;
      v72 = v103;
LABEL_26:
      (*(v42 + 8))(v71, v72);
      goto LABEL_31;
    }

    v53 = v94;
    v54 = v92;
    if (!swift_dynamicCast(v94, &v81, v38, v92, 0))
    {
      v62 = v97;
      v63 = v96;
      v64 = swift_dynamicCast(v97, &v81, v38, v96, 0);
      v65 = v106;
      if (!v64)
      {
        v110;
        v111;
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(64);
        v73._object = "annels" + 0x8000000000000000;
        v73._countAndFlagsBits = 0xD000000000000020;
        String.append(_:)(v73);
        _print_unlocked<A, B>(_:_:)(&v100, &v83, v38, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v73._countAndFlagsBits = 0xD00000000000001ELL;
        String.append(_:)(v73);
        v110 = v83;
        v73._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v73._object, 0, 0);
        *v74 = v110;
        *(v74 + 16) = 0;
        *(v74 + 32) = 0;
        *(v74 + 48) = 2;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1Tm(&v100);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v81);
      }

      v66 = v63;
      v67 = v99;
      (*(v105 + 32))(v99, v62, v66);
      v68 = v110;
      v69 = v112;
      specialized _ModelCheckpoint<>.restoreGenericLayer<A, B>(_:optimizer:layerName:checkpointDictionary:)(v67, v109, v65, v110, v108);
      v112 = v69;
      if (v69)
      {
        v68;
        v75 = v67;
        v76 = v66;
        v77 = v105;
        goto LABEL_30;
      }

      v68;
      v59 = v67;
      v60 = v66;
      v61 = v105;
      goto LABEL_21;
    }

    v55 = v98;
    v56 = (*(v104 + 32))(v98, v53, v54);
    v57 = v110;
    v58 = v112;
    specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(v55, v109, v106, v110, v108, v56, v34);
    v112 = v58;
    if (v58)
    {
      break;
    }

    v57;
    v59 = v55;
    v60 = v54;
    v61 = v104;
LABEL_21:
    (*(v61 + 8))(v59, v60);
LABEL_22:
    __swift_destroy_boxed_opaque_existential_1Tm(&v100);
    __swift_destroy_boxed_opaque_existential_1Tm(&v81);
    v30 = v84;
  }

  v57;
  v75 = v55;
  v76 = v54;
  v77 = v104;
LABEL_30:
  (*(v77 + 8))(v75, v76);
LABEL_31:
  __swift_destroy_boxed_opaque_existential_1Tm(&v100);
  v111;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v81);
}

{
  v113 = v3;
  v109 = a3;
  v110 = a2;
  v97 = type metadata accessor for LSTM(0);
  v106 = *(v97 - 8);
  v5 = *(v106 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v100 = &v79;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v98 = &v79;
  v93 = type metadata accessor for Dense(0);
  v105 = *(v93 - 8);
  v10 = *(v105 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v99 = &v79;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v95 = &v79;
  v104 = type metadata accessor for Conv2D(0);
  v94 = *(v104 - 8);
  v15 = *(v94 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v96 = &v79;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v91 = &v79;
  v86 = type metadata accessor for BatchNorm(0);
  v90 = *(v86 - 8);
  v20 = *(v90 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v92 = &v79;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v87 = &v79;
  v25 = *(*(type metadata accessor for MLHandActionClassifier.GraphCNNModel(0) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v28 = v4 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess(v4 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, v80, 0, 0);
  v29 = v28;
  v30 = 0;
  outlined init with copy of MLTrainingSessionParameters(v29, &v79, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v108 = v4;
  v31 = specialized _ModelCheckpoint<>.trainableSublayers(model:)(&v79, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  outlined destroy of MLActivityClassifier.ModelParameters(&v79, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v32 = v31[2];
  v112 = v31;
  v89 = v31 + 4;
  for (i = v32; ; v32 = i)
  {
    if (v30 == v32)
    {
      v103 = 0;
      v102 = 0;
      v101 = 0;
      v33 = v32;
    }

    else
    {
      if (v30 < 0)
      {
        BUG();
      }

      if (v30 >= v112[2])
      {
        BUG();
      }

      v33 = v30 + 1;
      *&v101 = v30;
      outlined init with copy of TabularRegressionTask(&v89[5 * v30], &v101 + 8);
    }

    v34 = *&v102;
    v81[2] = v103;
    v81[1] = v102;
    v81[0] = v101;
    if (!v103)
    {
      return v112;
    }

    v85 = v33;
    v35 = *&v81[0];
    outlined init with take of TabularRegressionTask((v81 + 8), &v101);
    v82 = 0x5F726579616CLL;
    v83 = 0xE600000000000000;
    *&v84 = v35;
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v36._object;
    String.append(_:)(v36);
    object;
    v107 = v82;
    *&v111 = v83;
    outlined init with copy of TabularRegressionTask(&v101, &v82);
    v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
    v39 = v87;
    v40 = v86;
    if (swift_dynamicCast(v87, &v82, v38, v86, 0))
    {
      v41 = v92;
      v42 = v90;
      (*(v90 + 32))(v92, v39, v40);
      v43 = v113;
      specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(v41, v110, v107, v111, v109, specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter, specialized _ModelCheckpoint<>.layerStateKeyPathLookup.getter, specialized Dictionary.subscript.getter, &OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, &lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel, specialized SGD.updateOptimizerState(for:shape:using:name:), specialized Dictionary.subscript.getter);
      v113 = v43;
      if (!v43)
      {
        v111;
        v44 = v41;
        v45 = v40;
LABEL_14:
        (*(v42 + 8))(v44, v45);
        goto LABEL_22;
      }

      v111;
      v72 = v41;
      v73 = v40;
      goto LABEL_26;
    }

    v46 = v91;
    v47 = v104;
    if (swift_dynamicCast(v91, &v82, v38, v104, 0))
    {
      v48 = v47;
      v49 = v96;
      v42 = v94;
      v50 = (*(v94 + 32))(v96, v46, v48);
      v51 = v111;
      v52 = v113;
      specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(v49, v110, v107, v111, v109, v50, v34);
      v113 = v52;
      if (!v52)
      {
        v51;
        v44 = v49;
        v45 = v104;
        goto LABEL_14;
      }

      v51;
      v72 = v49;
      v73 = v104;
LABEL_26:
      (*(v42 + 8))(v72, v73);
      goto LABEL_31;
    }

    v53 = v95;
    v54 = v93;
    if (!swift_dynamicCast(v95, &v82, v38, v93, 0))
    {
      v62 = v98;
      v63 = v97;
      v64 = swift_dynamicCast(v98, &v82, v38, v97, 0);
      v65 = v107;
      if (!v64)
      {
        v111;
        v112;
        *&v84 = 0;
        *(&v84 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(64);
        v74._object = "annels" + 0x8000000000000000;
        v74._countAndFlagsBits = 0xD000000000000020;
        String.append(_:)(v74);
        _print_unlocked<A, B>(_:_:)(&v101, &v84, v38, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v74._countAndFlagsBits = 0xD00000000000001ELL;
        String.append(_:)(v74);
        v111 = v84;
        v74._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v74._object, 0, 0);
        *v75 = v111;
        *(v75 + 16) = 0;
        *(v75 + 32) = 0;
        *(v75 + 48) = 2;
        swift_willThrow(&type metadata for MLCreateError, v74._object);
        __swift_destroy_boxed_opaque_existential_1Tm(&v101);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v82);
      }

      v66 = v63;
      v67 = v100;
      v68 = (*(v106 + 32))(v100, v62, v66);
      v69 = v111;
      v70 = v113;
      specialized _ModelCheckpoint<>.restoreGenericLayer<A, B>(_:optimizer:layerName:checkpointDictionary:)(v67, v110, v65, v111, v109, v68, v34);
      v113 = v70;
      if (v70)
      {
        v69;
        v76 = v67;
        v77 = v66;
        v78 = v106;
        goto LABEL_30;
      }

      v69;
      v59 = v67;
      v60 = v66;
      v61 = v106;
      goto LABEL_21;
    }

    v55 = v99;
    v56 = (*(v105 + 32))(v99, v53, v54);
    v57 = v111;
    v58 = v113;
    specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(v55, v110, v107, v111, v109, v56, v34);
    v113 = v58;
    if (v58)
    {
      break;
    }

    v57;
    v59 = v55;
    v60 = v54;
    v61 = v105;
LABEL_21:
    (*(v61 + 8))(v59, v60);
LABEL_22:
    __swift_destroy_boxed_opaque_existential_1Tm(&v101);
    __swift_destroy_boxed_opaque_existential_1Tm(&v82);
    v30 = v85;
  }

  v57;
  v76 = v55;
  v77 = v54;
  v78 = v105;
LABEL_30:
  (*(v78 + 8))(v76, v77);
LABEL_31:
  __swift_destroy_boxed_opaque_existential_1Tm(&v101);
  v112;
  return __swift_destroy_boxed_opaque_existential_1Tm(&v82);
}

uint64_t MLHandActionClassifier.GraphCNN.deinit()
{
  *(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer, &demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>);
  return v0;
}

uint64_t type metadata completion function for MLHandActionClassifier.GraphCNN(uint64_t a1)
{
  v4[0] = &value witness table for Builtin.BridgeObject + 64;
  v4[1] = &value witness table for Builtin.Int64 + 64;
  v4[2] = &value witness table for Builtin.Int64 + 64;
  result = type metadata accessor for MLHandActionClassifier.GraphCNNModel(319);
  if (v2 <= 0x3F)
  {
    v4[3] = *(result - 8) + 64;
    result = type metadata accessor for SGD<MLHandActionClassifier.GraphCNNModel>(319);
    if (v3 <= 0x3F)
    {
      v4[4] = *(result - 8) + 64;
      result = swift_updateClassMetadata2(a1, 256, 5, v4, a1 + 80);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for SGD<MLHandActionClassifier.GraphCNNModel>(uint64_t a1)
{
  result = lazy cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>;
  if (!lazy cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>)
  {
    v2 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(255);
    v3 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
    result = type metadata accessor for SGD(a1, v2, v3);
    if (!v4)
    {
      lazy cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel> = result;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.GraphCNNModel(char *a1, char *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v66 = *a2;
    *a1 = *a2;
    v64 = (v66 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for BatchNorm(0);
    v81 = *(*(v6 - 8) + 16);
    v80 = v6;
    v81(a1, a2, v6);
    v7 = a3[5];
    v68 = type metadata accessor for Dense(0);
    v69 = *(*(v68 - 8) + 16);
    v69(&a1[v7], &a2[v7], v68);
    v81(&a1[a3[6]], &a2[a3[6]], v6);
    v8 = a3[7];
    v79 = type metadata accessor for Dropout(0);
    v78 = *(*(v79 - 8) + 16);
    v78(&a1[v8], &a2[v8], v79);
    v9 = a3[8];
    v10 = &a1[v9];
    v11 = &a2[v9];
    v71 = a3;
    v12 = type metadata accessor for Conv2D(0);
    v13 = *(*(v12 - 8) + 16);
    v13(v10, v11, v12);
    v14 = v13;
    v74 = v13;
    v15 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
    v16 = *(v15 + 20);
    v10[v16 + 48] = v11[v16 + 48];
    v17 = *&v11[v16];
    v18 = *&v11[v16 + 16];
    *&v10[v16 + 32] = *&v11[v16 + 32];
    *&v10[v16 + 16] = v18;
    *&v10[v16] = v17;
    v19 = v15;
    v75 = v15;
    v14(&v10[*(v15 + 24)], &v11[*(v15 + 24)], v12);
    v81(&v10[*(v19 + 28)], &v11[*(v19 + 28)], v80);
    v78(&v10[*(v19 + 32)], &v11[*(v19 + 32)], v79);
    v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
    v74(&v10[*(v73 + 36)], &v11[*(v73 + 36)], v12);
    v20 = v10;
    v76 = v10;
    v77 = v11;
    v81(&v10[*(v73 + 40)], &v11[*(v73 + 40)], v80);
    v72 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
    v21 = v72[5];
    v22 = &v20[v21];
    v23 = &v77[v21];
    v74(v22, v23, v12);
    v24 = v75;
    v25 = v75[5];
    v22[v25 + 48] = v23[v25 + 48];
    v26 = *&v23[v25];
    v27 = *&v23[v25 + 16];
    *&v22[v25 + 32] = *&v23[v25 + 32];
    *&v22[v25 + 16] = v27;
    *&v22[v25] = v26;
    v74(&v22[v75[6]], &v23[v75[6]], v12);
    v81(&v22[v24[7]], &v23[v24[7]], v80);
    v78(&v22[v24[8]], &v23[v24[8]], v79);
    v74(&v22[*(v73 + 36)], &v23[*(v73 + 36)], v12);
    v81(&v22[*(v73 + 40)], &v23[*(v73 + 40)], v80);
    v28 = v72[6];
    v29 = &v76[v28];
    v30 = &v77[v28];
    v74(v29, v30, v12);
    v31 = v75;
    v32 = v75[5];
    v29[v32 + 48] = v30[v32 + 48];
    v33 = *&v30[v32];
    v34 = *&v30[v32 + 16];
    *&v29[v32 + 32] = *&v30[v32 + 32];
    *&v29[v32 + 16] = v34;
    *&v29[v32] = v33;
    v74(&v29[v75[6]], &v30[v75[6]], v12);
    v81(&v29[v31[7]], &v30[v31[7]], v80);
    v78(&v29[v31[8]], &v30[v31[8]], v79);
    v74(&v29[*(v73 + 36)], &v30[*(v73 + 36)], v12);
    v81(&v29[*(v73 + 40)], &v30[*(v73 + 40)], v80);
    v35 = v72[7];
    v36 = &v76[v35];
    v37 = &v77[v35];
    v74(v36, v37, v12);
    v38 = v75;
    v39 = v75[5];
    v36[v39 + 48] = v37[v39 + 48];
    v40 = *&v37[v39];
    v41 = *&v37[v39 + 16];
    *&v36[v39 + 32] = *&v37[v39 + 32];
    *&v36[v39 + 16] = v41;
    *&v36[v39] = v40;
    v74(&v36[v75[6]], &v37[v75[6]], v12);
    v81(&v36[v38[7]], &v37[v38[7]], v80);
    v78(&v36[v38[8]], &v37[v38[8]], v79);
    v74(&v36[*(v73 + 36)], &v37[*(v73 + 36)], v12);
    v81(&v36[*(v73 + 40)], &v37[*(v73 + 40)], v80);
    v42 = v72[8];
    v43 = &v76[v42];
    v44 = &v77[v42];
    v74(v43, v44, v12);
    v45 = v75;
    v46 = v75[5];
    v43[v46 + 48] = v44[v46 + 48];
    v47 = *&v44[v46];
    v48 = *&v44[v46 + 16];
    *&v43[v46 + 32] = *&v44[v46 + 32];
    *&v43[v46 + 16] = v48;
    *&v43[v46] = v47;
    v74(&v43[v75[6]], &v44[v75[6]], v12);
    v81(&v43[v45[7]], &v44[v45[7]], v80);
    v78(&v43[v45[8]], &v44[v45[8]], v79);
    v49 = v72[9];
    v50 = &v76[v49];
    v51 = &v77[v49];
    v74(v50, v51, v12);
    v52 = v75[5];
    v50[v52 + 48] = v51[v52 + 48];
    v53 = *&v51[v52];
    v54 = *&v51[v52 + 16];
    *&v50[v52 + 32] = *&v51[v52 + 32];
    *&v50[v52 + 16] = v54;
    *&v50[v52] = v53;
    v74(&v50[v45[6]], &v51[v45[6]], v12);
    v81(&v50[v75[7]], &v51[v75[7]], v80);
    v78(&v50[v75[8]], &v51[v75[8]], v79);
    v74(&v50[*(v73 + 36)], &v51[*(v73 + 36)], v12);
    v81(&v50[*(v73 + 40)], &v51[*(v73 + 40)], v80);
    v55 = v72[10];
    v56 = &v76[v55];
    v57 = &v77[v55];
    v74(v56, v57, v12);
    v58 = v75[5];
    v56[v58 + 48] = v57[v58 + 48];
    v59 = *&v57[v58];
    v60 = *&v57[v58 + 16];
    *&v56[v58 + 32] = *&v57[v58 + 32];
    *&v56[v58 + 16] = v60;
    *&v56[v58] = v59;
    v61 = v75;
    v74(&v56[v75[6]], &v57[v75[6]], v12);
    v81(&v56[v61[7]], &v57[v61[7]], v80);
    v78(&v56[v61[8]], &v57[v61[8]], v79);
    v74(&v56[*(v73 + 36)], &v57[*(v73 + 36)], v12);
    v62 = *(v73 + 40);
    v63 = &v57[v62];
    v64 = a1;
    v81(&v56[v62], v63, v80);
    v65 = type metadata accessor for MLHandActionClassifier.Torso(0);
    v69(&v76[*(v65 + 24)], &v77[*(v65 + 24)], v68);
    a1[v71[9]] = a2[v71[9]];
    *&a1[v71[10]] = *&a2[v71[10]];
  }

  return v64;
}

uint64_t destroy for MLHandActionClassifier.GraphCNNModel(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for BatchNorm(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v4 = v3;
  v27 = v3;
  v5 = a1 + a2[5];
  v20 = type metadata accessor for Dense(0);
  v21 = *(*(v20 - 8) + 8);
  v21(v5, v20);
  v4(a1 + a2[6], v2);
  v6 = a1 + a2[7];
  v26 = type metadata accessor for Dropout(0);
  v25 = *(*(v26 - 8) + 8);
  v25(v6, v26);
  v7 = a1 + a2[8];
  v8 = type metadata accessor for Conv2D(0);
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v10 = v9;
  v28 = v9;
  v11 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v10(v7 + v11[6], v8);
  v27(v7 + v11[7], v2);
  v25(v7 + v11[8], v26);
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v28(v7 + *(v24 + 36), v8);
  v23 = v7;
  v27(v7 + *(v24 + 40), v2);
  v22 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v12 = v7 + v22[5];
  v28(v12, v8);
  v28(v12 + v11[6], v8);
  v27(v12 + v11[7], v2);
  v25(v12 + v11[8], v26);
  v28(v12 + *(v24 + 36), v8);
  v27(v12 + *(v24 + 40), v2);
  v13 = v7 + v22[6];
  v28(v13, v8);
  v28(v13 + v11[6], v8);
  v27(v13 + v11[7], v2);
  v25(v13 + v11[8], v26);
  v28(v13 + *(v24 + 36), v8);
  v27(v13 + *(v24 + 40), v2);
  v14 = v23 + v22[7];
  v28(v14, v8);
  v28(v14 + v11[6], v8);
  v27(v14 + v11[7], v2);
  v25(v14 + v11[8], v26);
  v28(v14 + *(v24 + 36), v8);
  v27(v14 + *(v24 + 40), v2);
  v15 = v23 + v22[8];
  v28(v15, v8);
  v28(v15 + v11[6], v8);
  v27(v15 + v11[7], v2);
  v25(v15 + v11[8], v26);
  v16 = v23 + v22[9];
  v28(v16, v8);
  v28(v16 + v11[6], v8);
  v27(v16 + v11[7], v2);
  v25(v16 + v11[8], v26);
  v28(v16 + *(v24 + 36), v8);
  v27(v16 + *(v24 + 40), v2);
  v17 = v23 + v22[10];
  v28(v17, v8);
  v28(v17 + v11[6], v8);
  v27(v17 + v11[7], v2);
  v25(v17 + v11[8], v26);
  v28(v17 + *(v24 + 36), v8);
  v27(v17 + *(v24 + 40), v2);
  v18 = type metadata accessor for MLHandActionClassifier.Torso(0);
  return (v21)(v23 + *(v18 + 24), v20);
}

uint64_t initializeWithCopy for MLHandActionClassifier.GraphCNNModel(uint64_t a1, uint64_t a2, int *a3)
{
  v72 = type metadata accessor for BatchNorm(0);
  v71 = *(*(v72 - 8) + 16);
  v71(a1, a2, v72);
  v4 = a3[5];
  v60 = type metadata accessor for Dense(0);
  v61 = *(*(v60 - 8) + 16);
  v61(a1 + v4, a2 + v4, v60);
  v71(a1 + a3[6], a2 + a3[6], v72);
  v5 = a3[7];
  v62 = a3;
  v69 = type metadata accessor for Dropout(0);
  v70 = *(*(v69 - 8) + 16);
  v70(a1 + v5, a2 + v5, v69);
  v6 = a3[8];
  v7 = v6 + a1;
  v8 = a2 + v6;
  v9 = type metadata accessor for Conv2D(0);
  v10 = *(*(v9 - 8) + 16);
  v10(v7, v8, v9);
  v63 = v10;
  v11 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v12 = *(v11 + 20);
  *(v12 + v7 + 48) = *(v12 + v8 + 48);
  v13 = *(v12 + v8);
  v14 = *(v12 + v8 + 16);
  *(v12 + v7 + 32) = *(v12 + v8 + 32);
  *(v12 + v7 + 16) = v14;
  *(v12 + v7) = v13;
  v15 = v11;
  v10(v7 + *(v11 + 24), v8 + *(v11 + 24), v9);
  v66 = v15;
  v71(v7 + v15[7], v8 + v15[7], v72);
  v70(v7 + v15[8], v8 + v15[8], v69);
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v10(v7 + *(v65 + 36), v8 + *(v65 + 36), v9);
  v67 = v7;
  v68 = v8;
  v71(v7 + *(v65 + 40), v8 + *(v65 + 40), v72);
  v64 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v16 = v64[5];
  v17 = v16 + v7;
  v18 = v8 + v16;
  v10(v17, v18, v9);
  v19 = v66[5];
  *(v19 + v17 + 48) = *(v19 + v18 + 48);
  v20 = *(v19 + v18);
  v21 = *(v19 + v18 + 16);
  *(v19 + v17 + 32) = *(v19 + v18 + 32);
  *(v19 + v17 + 16) = v21;
  *(v19 + v17) = v20;
  v22 = v66;
  v10(v17 + v66[6], v18 + v66[6], v9);
  v71(v17 + v22[7], v18 + v22[7], v72);
  v70(v17 + v22[8], v18 + v22[8], v69);
  v10(v17 + *(v65 + 36), v18 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v17, *(v65 + 40) + v18, v72);
  v23 = v64[6];
  v24 = v67 + v23;
  v25 = v68 + v23;
  v26 = v10;
  v10(v24, v25, v9);
  v27 = v66;
  v28 = v66[5];
  *(v28 + v24 + 48) = *(v28 + v25 + 48);
  v29 = *(v28 + v25);
  v30 = *(v28 + v25 + 16);
  *(v28 + v24 + 32) = *(v28 + v25 + 32);
  *(v28 + v24 + 16) = v30;
  *(v28 + v24) = v29;
  v26(v24 + v66[6], v25 + v66[6], v9);
  v71(v24 + v27[7], v25 + v27[7], v72);
  v70(v24 + v27[8], v25 + v27[8], v69);
  v63(v24 + *(v65 + 36), v25 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v24, *(v65 + 40) + v25, v72);
  v31 = v64[7];
  v32 = v67 + v31;
  v33 = v68 + v31;
  v63(v32, v33, v9);
  v34 = v66;
  v35 = v66[5];
  *(v35 + v32 + 48) = *(v35 + v33 + 48);
  v36 = *(v35 + v33);
  v37 = *(v35 + v33 + 16);
  *(v35 + v32 + 32) = *(v35 + v33 + 32);
  *(v35 + v32 + 16) = v37;
  *(v35 + v32) = v36;
  v63(v32 + v66[6], v33 + v66[6], v9);
  v71(v32 + v34[7], v33 + v34[7], v72);
  v70(v32 + v34[8], v33 + v34[8], v69);
  v63(v32 + *(v65 + 36), v33 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v32, *(v65 + 40) + v33, v72);
  v38 = v64[8];
  v39 = v67 + v38;
  v40 = v68 + v38;
  v63(v39, v40, v9);
  v41 = v66;
  v42 = v66[5];
  *(v42 + v39 + 48) = *(v42 + v40 + 48);
  v43 = *(v42 + v40);
  v44 = *(v42 + v40 + 16);
  *(v42 + v39 + 32) = *(v42 + v40 + 32);
  *(v42 + v39 + 16) = v44;
  *(v42 + v39) = v43;
  v63(v39 + v66[6], v40 + v66[6], v9);
  v71(v39 + v41[7], v40 + v41[7], v72);
  v70(v41[8] + v39, v41[8] + v40, v69);
  v45 = v64[9];
  v46 = v67 + v45;
  v47 = v68 + v45;
  v63(v46, v47, v9);
  v48 = v66[5];
  *(v48 + v46 + 48) = *(v48 + v47 + 48);
  v49 = *(v48 + v47);
  v50 = *(v48 + v47 + 16);
  *(v48 + v46 + 32) = *(v48 + v47 + 32);
  *(v48 + v46 + 16) = v50;
  *(v48 + v46) = v49;
  v63(v46 + v41[6], v47 + v41[6], v9);
  v71(v46 + v66[7], v47 + v66[7], v72);
  v70(v46 + v66[8], v47 + v66[8], v69);
  v63(v46 + *(v65 + 36), v47 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v46, *(v65 + 40) + v47, v72);
  v51 = v64[10];
  v52 = v67 + v51;
  v53 = v68 + v51;
  v63(v52, v53, v9);
  v54 = v66;
  v55 = v66[5];
  *(v55 + v52 + 48) = *(v55 + v53 + 48);
  v56 = *(v55 + v53);
  v57 = *(v55 + v53 + 16);
  *(v55 + v52 + 32) = *(v55 + v53 + 32);
  *(v55 + v52 + 16) = v57;
  *(v55 + v52) = v56;
  v63(v52 + v66[6], v53 + v66[6], v9);
  v71(v52 + v54[7], v53 + v54[7], v72);
  v70(v52 + v54[8], v53 + v54[8], v69);
  v63(v52 + *(v65 + 36), v53 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v52, *(v65 + 40) + v53, v72);
  v58 = type metadata accessor for MLHandActionClassifier.Torso(0);
  v61(*(v58 + 24) + v67, *(v58 + 24) + v68, v60);
  result = a1;
  *(a1 + v62[9]) = *(a2 + v62[9]);
  *(a1 + v62[10]) = *(a2 + v62[10]);
  return result;
}

uint64_t assignWithCopy for MLHandActionClassifier.GraphCNNModel(uint64_t a1, uint64_t a2, int *a3)
{
  v56 = type metadata accessor for BatchNorm(0);
  v53 = *(*(v56 - 8) + 24);
  v53(a1, a2, v56);
  v4 = a3[5];
  v44 = type metadata accessor for Dense(0);
  v45 = *(*(v44 - 8) + 24);
  v45(a1 + v4, a2 + v4, v44);
  v53(a1 + a3[6], a2 + a3[6], v56);
  v5 = a3[7];
  v46 = a3;
  v51 = type metadata accessor for Dropout(0);
  v52 = *(*(v51 - 8) + 24);
  v52(a1 + v5, a2 + v5, v51);
  v6 = a3[8];
  v7 = v6 + a1;
  v8 = a2 + v6;
  v9 = type metadata accessor for Conv2D(0);
  v10 = *(*(v9 - 8) + 24);
  v55 = v9;
  v10(v7, v8, v9);
  v11 = v10;
  v54 = v10;
  v12 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v13 = *(v12 + 20);
  v14 = v12;
  v49 = v12;
  *(v13 + v7) = *(v13 + v8);
  *(v13 + v7 + 8) = *(v13 + v8 + 8);
  *(v13 + v7 + 16) = *(v13 + v8 + 16);
  *(v13 + v7 + 24) = *(v13 + v8 + 24);
  *(v13 + v7 + 32) = *(v13 + v8 + 32);
  *(v13 + v7 + 40) = *(v13 + v8 + 40);
  *(v13 + v7 + 48) = *(v13 + v8 + 48);
  v11(v7 + *(v12 + 24), v8 + *(v12 + 24), v9);
  v53(v7 + *(v14 + 28), v8 + *(v14 + 28), v56);
  v52(*(v14 + 32) + v7, v8 + *(v14 + 32), v51);
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v54(*(v48 + 36) + v7, v8 + *(v48 + 36), v9);
  v50 = v7;
  v53(*(v48 + 40) + v7, v8 + *(v48 + 40), v56);
  v47 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v15 = v47[5];
  v16 = v15 + v7;
  v17 = v8 + v15;
  v54(v16, v17, v55);
  v18 = v49[5];
  *(v18 + v16) = *(v18 + v17);
  *(v18 + v16 + 8) = *(v18 + v17 + 8);
  *(v18 + v16 + 16) = *(v18 + v17 + 16);
  *(v18 + v16 + 24) = *(v18 + v17 + 24);
  *(v18 + v16 + 32) = *(v18 + v17 + 32);
  *(v18 + v16 + 40) = *(v18 + v17 + 40);
  *(v18 + v16 + 48) = *(v18 + v17 + 48);
  v54(v16 + v49[6], v17 + v49[6], v55);
  v53(v16 + v49[7], v17 + v49[7], v56);
  v52(v16 + v49[8], v17 + v49[8], v51);
  v54(v16 + *(v48 + 36), v17 + *(v48 + 36), v55);
  v53(*(v48 + 40) + v16, *(v48 + 40) + v17, v56);
  v19 = v47[6];
  v20 = v50 + v19;
  v21 = v8 + v19;
  v54(v20, v21, v55);
  v22 = v49;
  v23 = v49[5];
  *(v23 + v20) = *(v23 + v21);
  *(v23 + v20 + 8) = *(v23 + v21 + 8);
  *(v23 + v20 + 16) = *(v23 + v21 + 16);
  *(v23 + v20 + 24) = *(v23 + v21 + 24);
  *(v23 + v20 + 32) = *(v23 + v21 + 32);
  *(v23 + v20 + 40) = *(v23 + v21 + 40);
  *(v23 + v20 + 48) = *(v23 + v21 + 48);
  v54(v20 + v49[6], v21 + v49[6], v55);
  v53(v20 + v22[7], v21 + v22[7], v56);
  v52(v20 + v22[8], v21 + v22[8], v51);
  v54(v20 + *(v48 + 36), v21 + *(v48 + 36), v55);
  v53(*(v48 + 40) + v20, *(v48 + 40) + v21, v56);
  v24 = v47[7];
  v25 = v50 + v24;
  v26 = v8 + v24;
  v54(v25, v26, v55);
  v27 = v49[5];
  *(v27 + v25) = *(v27 + v26);
  *(v27 + v25 + 8) = *(v27 + v26 + 8);
  *(v27 + v25 + 16) = *(v27 + v26 + 16);
  *(v27 + v25 + 24) = *(v27 + v26 + 24);
  *(v27 + v25 + 32) = *(v27 + v26 + 32);
  *(v27 + v25 + 40) = *(v27 + v26 + 40);
  *(v27 + v25 + 48) = *(v27 + v26 + 48);
  v54(v25 + v49[6], v26 + v49[6], v55);
  v53(v25 + v49[7], v26 + v49[7], v56);
  v52(v25 + v49[8], v26 + v49[8], v51);
  v54(v25 + *(v48 + 36), v26 + *(v48 + 36), v55);
  v53(*(v48 + 40) + v25, *(v48 + 40) + v26, v56);
  v28 = v47[8];
  v29 = v50 + v28;
  v30 = v8 + v28;
  v54(v29, v30, v55);
  v31 = v49;
  v32 = v49[5];
  *(v32 + v29) = *(v32 + v30);
  *(v32 + v29 + 8) = *(v32 + v30 + 8);
  *(v32 + v29 + 16) = *(v32 + v30 + 16);
  *(v32 + v29 + 24) = *(v32 + v30 + 24);
  *(v32 + v29 + 32) = *(v32 + v30 + 32);
  *(v32 + v29 + 40) = *(v32 + v30 + 40);
  *(v32 + v29 + 48) = *(v32 + v30 + 48);
  v54(v29 + v49[6], v30 + v49[6], v55);
  v53(v29 + v31[7], v30 + v31[7], v56);
  v52(v31[8] + v29, v31[8] + v30, v51);
  v33 = v47[9];
  v34 = v50 + v33;
  v35 = v8 + v33;
  v54(v34, v35, v55);
  v36 = v49[5];
  *(v36 + v34) = *(v36 + v35);
  *(v36 + v34 + 8) = *(v36 + v35 + 8);
  *(v36 + v34 + 16) = *(v36 + v35 + 16);
  *(v36 + v34 + 24) = *(v36 + v35 + 24);
  *(v36 + v34 + 32) = *(v36 + v35 + 32);
  *(v36 + v34 + 40) = *(v36 + v35 + 40);
  *(v36 + v34 + 48) = *(v36 + v35 + 48);
  v54(v34 + v31[6], v35 + v31[6], v55);
  v53(v34 + v49[7], v35 + v49[7], v56);
  v52(v34 + v49[8], v35 + v49[8], v51);
  v54(v34 + *(v48 + 36), v35 + *(v48 + 36), v55);
  v53(*(v48 + 40) + v34, *(v48 + 40) + v35, v56);
  v37 = v47[10];
  v38 = v50 + v37;
  v39 = v8 + v37;
  v54(v38, v39, v55);
  v40 = v49[5];
  *(v40 + v38) = *(v40 + v39);
  *(v40 + v38 + 8) = *(v40 + v39 + 8);
  *(v40 + v38 + 16) = *(v40 + v39 + 16);
  *(v40 + v38 + 24) = *(v40 + v39 + 24);
  *(v40 + v38 + 32) = *(v40 + v39 + 32);
  *(v40 + v38 + 40) = *(v40 + v39 + 40);
  *(v40 + v38 + 48) = *(v40 + v39 + 48);
  v41 = v49;
  v54(v38 + v49[6], v39 + v49[6], v55);
  v53(v38 + v41[7], v39 + v41[7], v56);
  v52(v38 + v41[8], v39 + v41[8], v51);
  v54(v38 + *(v48 + 36), v39 + *(v48 + 36), v55);
  v53(*(v48 + 40) + v38, *(v48 + 40) + v39, v56);
  v42 = type metadata accessor for MLHandActionClassifier.Torso(0);
  v45(*(v42 + 24) + v50, *(v42 + 24) + v8, v44);
  result = a1;
  *(a1 + v46[9]) = *(a2 + v46[9]);
  *(a1 + v46[10]) = *(a2 + v46[10]);
  return result;
}

uint64_t initializeWithTake for MLHandActionClassifier.GraphCNNModel(uint64_t a1, uint64_t a2, int *a3)
{
  v72 = type metadata accessor for BatchNorm(0);
  v71 = *(*(v72 - 8) + 32);
  v71(a1, a2, v72);
  v4 = a3[5];
  v60 = type metadata accessor for Dense(0);
  v61 = *(*(v60 - 8) + 32);
  v61(a1 + v4, a2 + v4, v60);
  v71(a1 + a3[6], a2 + a3[6], v72);
  v5 = a3[7];
  v62 = a3;
  v69 = type metadata accessor for Dropout(0);
  v70 = *(*(v69 - 8) + 32);
  v70(a1 + v5, a2 + v5, v69);
  v6 = a3[8];
  v7 = v6 + a1;
  v8 = a2 + v6;
  v9 = type metadata accessor for Conv2D(0);
  v10 = *(*(v9 - 8) + 32);
  v10(v7, v8, v9);
  v63 = v10;
  v11 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v12 = *(v11 + 20);
  *(v12 + v7 + 48) = *(v12 + v8 + 48);
  v13 = *(v12 + v8);
  v14 = *(v12 + v8 + 16);
  *(v12 + v7 + 32) = *(v12 + v8 + 32);
  *(v12 + v7 + 16) = v14;
  *(v12 + v7) = v13;
  v15 = v11;
  v10(v7 + *(v11 + 24), v8 + *(v11 + 24), v9);
  v66 = v15;
  v71(v7 + v15[7], v8 + v15[7], v72);
  v70(v7 + v15[8], v8 + v15[8], v69);
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v10(v7 + *(v65 + 36), v8 + *(v65 + 36), v9);
  v67 = v7;
  v68 = v8;
  v71(v7 + *(v65 + 40), v8 + *(v65 + 40), v72);
  v64 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v16 = v64[5];
  v17 = v16 + v7;
  v18 = v8 + v16;
  v10(v17, v18, v9);
  v19 = v66[5];
  *(v19 + v17 + 48) = *(v19 + v18 + 48);
  v20 = *(v19 + v18);
  v21 = *(v19 + v18 + 16);
  *(v19 + v17 + 32) = *(v19 + v18 + 32);
  *(v19 + v17 + 16) = v21;
  *(v19 + v17) = v20;
  v22 = v66;
  v10(v17 + v66[6], v18 + v66[6], v9);
  v71(v17 + v22[7], v18 + v22[7], v72);
  v70(v17 + v22[8], v18 + v22[8], v69);
  v10(v17 + *(v65 + 36), v18 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v17, *(v65 + 40) + v18, v72);
  v23 = v64[6];
  v24 = v67 + v23;
  v25 = v68 + v23;
  v26 = v10;
  v10(v24, v25, v9);
  v27 = v66;
  v28 = v66[5];
  *(v28 + v24 + 48) = *(v28 + v25 + 48);
  v29 = *(v28 + v25);
  v30 = *(v28 + v25 + 16);
  *(v28 + v24 + 32) = *(v28 + v25 + 32);
  *(v28 + v24 + 16) = v30;
  *(v28 + v24) = v29;
  v26(v24 + v66[6], v25 + v66[6], v9);
  v71(v24 + v27[7], v25 + v27[7], v72);
  v70(v24 + v27[8], v25 + v27[8], v69);
  v63(v24 + *(v65 + 36), v25 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v24, *(v65 + 40) + v25, v72);
  v31 = v64[7];
  v32 = v67 + v31;
  v33 = v68 + v31;
  v63(v32, v33, v9);
  v34 = v66;
  v35 = v66[5];
  *(v35 + v32 + 48) = *(v35 + v33 + 48);
  v36 = *(v35 + v33);
  v37 = *(v35 + v33 + 16);
  *(v35 + v32 + 32) = *(v35 + v33 + 32);
  *(v35 + v32 + 16) = v37;
  *(v35 + v32) = v36;
  v63(v32 + v66[6], v33 + v66[6], v9);
  v71(v32 + v34[7], v33 + v34[7], v72);
  v70(v32 + v34[8], v33 + v34[8], v69);
  v63(v32 + *(v65 + 36), v33 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v32, *(v65 + 40) + v33, v72);
  v38 = v64[8];
  v39 = v67 + v38;
  v40 = v68 + v38;
  v63(v39, v40, v9);
  v41 = v66;
  v42 = v66[5];
  *(v42 + v39 + 48) = *(v42 + v40 + 48);
  v43 = *(v42 + v40);
  v44 = *(v42 + v40 + 16);
  *(v42 + v39 + 32) = *(v42 + v40 + 32);
  *(v42 + v39 + 16) = v44;
  *(v42 + v39) = v43;
  v63(v39 + v66[6], v40 + v66[6], v9);
  v71(v39 + v41[7], v40 + v41[7], v72);
  v70(v41[8] + v39, v41[8] + v40, v69);
  v45 = v64[9];
  v46 = v67 + v45;
  v47 = v68 + v45;
  v63(v46, v47, v9);
  v48 = v66[5];
  *(v48 + v46 + 48) = *(v48 + v47 + 48);
  v49 = *(v48 + v47);
  v50 = *(v48 + v47 + 16);
  *(v48 + v46 + 32) = *(v48 + v47 + 32);
  *(v48 + v46 + 16) = v50;
  *(v48 + v46) = v49;
  v63(v46 + v41[6], v47 + v41[6], v9);
  v71(v46 + v66[7], v47 + v66[7], v72);
  v70(v46 + v66[8], v47 + v66[8], v69);
  v63(v46 + *(v65 + 36), v47 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v46, *(v65 + 40) + v47, v72);
  v51 = v64[10];
  v52 = v67 + v51;
  v53 = v68 + v51;
  v63(v52, v53, v9);
  v54 = v66;
  v55 = v66[5];
  *(v55 + v52 + 48) = *(v55 + v53 + 48);
  v56 = *(v55 + v53);
  v57 = *(v55 + v53 + 16);
  *(v55 + v52 + 32) = *(v55 + v53 + 32);
  *(v55 + v52 + 16) = v57;
  *(v55 + v52) = v56;
  v63(v52 + v66[6], v53 + v66[6], v9);
  v71(v52 + v54[7], v53 + v54[7], v72);
  v70(v52 + v54[8], v53 + v54[8], v69);
  v63(v52 + *(v65 + 36), v53 + *(v65 + 36), v9);
  v71(*(v65 + 40) + v52, *(v65 + 40) + v53, v72);
  v58 = type metadata accessor for MLHandActionClassifier.Torso(0);
  v61(*(v58 + 24) + v67, *(v58 + 24) + v68, v60);
  result = a1;
  *(a1 + v62[9]) = *(a2 + v62[9]);
  *(a1 + v62[10]) = *(a2 + v62[10]);
  return result;
}

uint64_t assignWithTake for MLHandActionClassifier.GraphCNNModel(uint64_t a1, uint64_t a2, int *a3)
{
  v53 = type metadata accessor for BatchNorm(0);
  v52 = *(*(v53 - 8) + 40);
  v52(a1, a2, v53);
  v4 = a3[5];
  v42 = type metadata accessor for Dense(0);
  v43 = *(*(v42 - 8) + 40);
  v43(a1 + v4, a2 + v4, v42);
  v52(a1 + a3[6], a2 + a3[6], v53);
  v5 = a3[7];
  v44 = a3;
  v48 = type metadata accessor for Dropout(0);
  v49 = *(*(v48 - 8) + 40);
  v49(a1 + v5, a2 + v5, v48);
  v6 = a3[8];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v50 = type metadata accessor for Conv2D(0);
  v9 = *(*(v50 - 8) + 40);
  v9(v7, v8, v50);
  v51 = v9;
  v10 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v11 = *(v10 + 20);
  *(v11 + v7) = *(v11 + v8);
  *(v11 + v7 + 16) = *(v11 + v8 + 16);
  *(v11 + v7 + 32) = *(v11 + v8 + 32);
  *(v11 + v7 + 48) = *(v11 + v8 + 48);
  v12 = v10;
  v9(*(v10 + 24) + v7, v8 + *(v10 + 24), v50);
  v45 = v12;
  v52(v12[7] + v7, v8 + v12[7], v53);
  v49(v12[8] + v7, v8 + v12[8], v48);
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v9(*(v47 + 36) + v7, v8 + *(v47 + 36), v50);
  v52(*(v47 + 40) + v7, v8 + *(v47 + 40), v53);
  v46 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v13 = v46[5];
  v14 = v13 + v7;
  v15 = v8 + v13;
  v9(v14, v15, v50);
  v16 = v45;
  v17 = v45[5];
  *(v17 + v14) = *(v17 + v15);
  *(v17 + v14 + 16) = *(v17 + v15 + 16);
  *(v17 + v14 + 32) = *(v17 + v15 + 32);
  *(v17 + v14 + 48) = *(v17 + v15 + 48);
  v51(v14 + v45[6], v15 + v45[6], v50);
  v52(v14 + v16[7], v15 + v16[7], v53);
  v49(v14 + v16[8], v15 + v16[8], v48);
  v51(v14 + *(v47 + 36), v15 + *(v47 + 36), v50);
  v52(*(v47 + 40) + v14, *(v47 + 40) + v15, v53);
  v18 = v46[6];
  v19 = v7 + v18;
  v20 = v8 + v18;
  v51(v19, v20, v50);
  v21 = v45[5];
  *(v21 + v19) = *(v21 + v20);
  *(v21 + v19 + 16) = *(v21 + v20 + 16);
  *(v21 + v19 + 32) = *(v21 + v20 + 32);
  *(v21 + v19 + 48) = *(v21 + v20 + 48);
  v51(v19 + v45[6], v20 + v45[6], v50);
  v52(v19 + v45[7], v20 + v45[7], v53);
  v49(v19 + v45[8], v20 + v45[8], v48);
  v51(v19 + *(v47 + 36), v20 + *(v47 + 36), v50);
  v52(*(v47 + 40) + v19, *(v47 + 40) + v20, v53);
  v22 = v46[7];
  v23 = v7 + v22;
  v24 = v8 + v22;
  v51(v23, v24, v50);
  v25 = v45;
  v26 = v45[5];
  *(v26 + v23) = *(v26 + v24);
  *(v26 + v23 + 16) = *(v26 + v24 + 16);
  *(v26 + v23 + 32) = *(v26 + v24 + 32);
  *(v26 + v23 + 48) = *(v26 + v24 + 48);
  v51(v23 + v45[6], v24 + v45[6], v50);
  v52(v23 + v25[7], v24 + v25[7], v53);
  v49(v23 + v25[8], v24 + v25[8], v48);
  v51(v23 + *(v47 + 36), v24 + *(v47 + 36), v50);
  v52(*(v47 + 40) + v23, *(v47 + 40) + v24, v53);
  v27 = v46[8];
  v28 = v7 + v27;
  v29 = v8 + v27;
  v51(v28, v29, v50);
  v30 = v45;
  v31 = v45[5];
  *(v31 + v28) = *(v31 + v29);
  *(v31 + v28 + 16) = *(v31 + v29 + 16);
  *(v31 + v28 + 32) = *(v31 + v29 + 32);
  *(v31 + v28 + 48) = *(v31 + v29 + 48);
  v51(v28 + v45[6], v29 + v45[6], v50);
  v52(v28 + v30[7], v29 + v30[7], v53);
  v49(v30[8] + v28, v30[8] + v29, v48);
  v32 = v46[9];
  v33 = v7 + v32;
  v34 = v8 + v32;
  v51(v33, v34, v50);
  v35 = v45[5];
  *(v35 + v33) = *(v35 + v34);
  *(v35 + v33 + 16) = *(v35 + v34 + 16);
  *(v35 + v33 + 32) = *(v35 + v34 + 32);
  *(v35 + v33 + 48) = *(v35 + v34 + 48);
  v51(v33 + v30[6], v34 + v30[6], v50);
  v52(v33 + v30[7], v34 + v30[7], v53);
  v49(v33 + v30[8], v34 + v30[8], v48);
  v51(v33 + *(v47 + 36), v34 + *(v47 + 36), v50);
  v52(*(v47 + 40) + v33, *(v47 + 40) + v34, v53);
  v36 = v46[10];
  v37 = v7 + v36;
  v38 = v8 + v36;
  v51(v37, v38, v50);
  v39 = v45[5];
  *(v39 + v37) = *(v39 + v38);
  *(v39 + v37 + 16) = *(v39 + v38 + 16);
  *(v39 + v37 + 32) = *(v39 + v38 + 32);
  *(v39 + v37 + 48) = *(v39 + v38 + 48);
  v51(v37 + v30[6], v38 + v30[6], v50);
  v52(v37 + v30[7], v38 + v30[7], v53);
  v49(v37 + v30[8], v38 + v30[8], v48);
  v51(v37 + *(v47 + 36), v38 + *(v47 + 36), v50);
  v52(*(v47 + 40) + v37, *(v47 + 40) + v38, v53);
  v40 = type metadata accessor for MLHandActionClassifier.Torso(0);
  v43(*(v40 + 24) + v7, *(v40 + 24) + v8, v42);
  result = a1;
  *(a1 + v44[9]) = *(a2 + v44[9]);
  *(a1 + v44[10]) = *(a2 + v44[10]);
  return result;
}

uint64_t sub_1C752B(uint64_t a1, unsigned int a2, int *a3)
{
  v4 = a1;
  v5 = type metadata accessor for BatchNorm(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = type metadata accessor for Dense(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[5];
LABEL_8:
    v4 = v6 + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = type metadata accessor for Dropout(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[7];
    goto LABEL_8;
  }

  v7 = 0;
  v5 = type metadata accessor for MLHandActionClassifier.Torso(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[8];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[9]);
  if (v9 >= 2u)
  {
    return ((v9 + 2147483646) & 0x7FFFFFFFu) + 1;
  }

  return v7;
}

uint64_t sub_1C75F6(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v6 = a1;
  v7 = type metadata accessor for BatchNorm(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = type metadata accessor for Dense(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v8 = a4[5];
LABEL_8:
    v6 = v8 + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = type metadata accessor for Dropout(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v8 = a4[7];
    goto LABEL_8;
  }

  v7 = type metadata accessor for MLHandActionClassifier.Torso(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v8 = a4[8];
    goto LABEL_8;
  }

  result = a4[9];
  *(a1 + result) = a2 + 1;
  return result;
}

uint64_t type metadata completion function for MLHandActionClassifier.GraphCNNModel(uint64_t a1)
{
  result = type metadata accessor for BatchNorm(319);
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    v7[0] = v3;
    result = type metadata accessor for Dense(319);
    if (v4 <= 0x3F)
    {
      v7[1] = *(result - 8) + 64;
      v7[2] = v3;
      result = type metadata accessor for Dropout(319);
      if (v5 <= 0x3F)
      {
        v7[3] = *(result - 8) + 64;
        result = type metadata accessor for MLHandActionClassifier.Torso(319);
        if (v6 <= 0x3F)
        {
          v7[4] = *(result - 8) + 64;
          v7[5] = &unk_344A60;
          v7[6] = &value witness table for Builtin.Int64 + 64;
          swift_initStructMetadata(a1, 256, 7, v7, a1 + 16);
          return 0;
        }
      }
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.Torso(void *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v54 = *a2;
    *v3 = *a2;
    v3 = (v54 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = type metadata accessor for Conv2D(0);
    v6 = *(*(v5 - 8) + 16);
    v6(a1, a2, v5);
    v63 = v6;
    v7 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
    v8 = *(v7 + 20);
    *(a1 + v8 + 48) = a2[v8 + 48];
    v9 = *&a2[v8];
    v10 = *&a2[v8 + 16];
    *(a1 + v8 + 32) = *&a2[v8 + 32];
    *(a1 + v8 + 16) = v10;
    *(a1 + v8) = v9;
    v11 = v7;
    v6(a1 + *(v7 + 24), &a2[*(v7 + 24)], v5);
    v12 = v11[7];
    v61 = type metadata accessor for BatchNorm(0);
    v62 = *(*(v61 - 8) + 16);
    v62(a1 + v12, &a2[v12], v61);
    v13 = v11[8];
    v60 = type metadata accessor for Dropout(0);
    v59 = *(*(v60 - 8) + 16);
    v59(a1 + v13, &a2[v13], v60);
    v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
    v6(a1 + *(v58 + 36), &a2[*(v58 + 36)], v5);
    v62(a1 + *(v58 + 40), &a2[*(v58 + 40)], v61);
    v57 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
    v14 = v57[5];
    v15 = a1 + v14;
    v16 = &a2[v14];
    v63(v15, v16, v5);
    v17 = v11[5];
    v15[v17 + 48] = v16[v17 + 48];
    v18 = *&v16[v17];
    v19 = *&v16[v17 + 16];
    *&v15[v17 + 32] = *&v16[v17 + 32];
    *&v15[v17 + 16] = v19;
    *&v15[v17] = v18;
    v63(&v15[v11[6]], &v16[v11[6]], v5);
    v62(&v15[v11[7]], &v16[v11[7]], v61);
    v59(&v15[v11[8]], &v16[v11[8]], v60);
    v63(&v15[*(v58 + 36)], &v16[*(v58 + 36)], v5);
    v62(&v15[*(v58 + 40)], &v16[*(v58 + 40)], v61);
    v20 = v57[6];
    v21 = a1 + v20;
    v22 = &a2[v20];
    v63(v21, v22, v5);
    v23 = v11[5];
    v21[v23 + 48] = v22[v23 + 48];
    v24 = *&v22[v23];
    v25 = *&v22[v23 + 16];
    *&v21[v23 + 32] = *&v22[v23 + 32];
    *&v21[v23 + 16] = v25;
    *&v21[v23] = v24;
    v63(&v21[v11[6]], &v22[v11[6]], v5);
    v62(&v21[v11[7]], &v22[v11[7]], v61);
    v59(&v21[v11[8]], &v22[v11[8]], v60);
    v63(&v21[*(v58 + 36)], &v22[*(v58 + 36)], v5);
    v62(&v21[*(v58 + 40)], &v22[*(v58 + 40)], v61);
    v26 = v57[7];
    v27 = a1 + v26;
    v28 = &a2[v26];
    v63(v27, v28, v5);
    v29 = v11[5];
    v27[v29 + 48] = v28[v29 + 48];
    v30 = *&v28[v29];
    v31 = *&v28[v29 + 16];
    *&v27[v29 + 32] = *&v28[v29 + 32];
    *&v27[v29 + 16] = v31;
    *&v27[v29] = v30;
    v63(&v27[v11[6]], &v28[v11[6]], v5);
    v62(&v27[v11[7]], &v28[v11[7]], v61);
    v59(&v27[v11[8]], &v28[v11[8]], v60);
    v63(&v27[*(v58 + 36)], &v28[*(v58 + 36)], v5);
    v62(&v27[*(v58 + 40)], &v28[*(v58 + 40)], v61);
    v32 = v57[8];
    v33 = a1 + v32;
    v34 = &a2[v32];
    v63(v33, v34, v5);
    v35 = v11[5];
    v33[v35 + 48] = v34[v35 + 48];
    v36 = *&v34[v35];
    v37 = *&v34[v35 + 16];
    *&v33[v35 + 32] = *&v34[v35 + 32];
    *&v33[v35 + 16] = v37;
    *&v33[v35] = v36;
    v63(&v33[v11[6]], &v34[v11[6]], v5);
    v62(&v33[v11[7]], &v34[v11[7]], v61);
    v59(&v33[v11[8]], &v34[v11[8]], v60);
    v38 = v57[9];
    v39 = a1 + v38;
    v40 = &a2[v38];
    v63(v39, v40, v5);
    v41 = v11[5];
    v39[v41 + 48] = v40[v41 + 48];
    v42 = *&v40[v41];
    v43 = *&v40[v41 + 16];
    *&v39[v41 + 32] = *&v40[v41 + 32];
    *&v39[v41 + 16] = v43;
    *&v39[v41] = v42;
    v63(&v39[v11[6]], &v40[v11[6]], v5);
    v62(&v39[v11[7]], &v40[v11[7]], v61);
    v59(&v39[v11[8]], &v40[v11[8]], v60);
    v63(&v39[*(v58 + 36)], &v40[*(v58 + 36)], v5);
    v62(&v39[*(v58 + 40)], &v40[*(v58 + 40)], v61);
    v44 = v57[10];
    v45 = a1 + v44;
    v46 = &a2[v44];
    v63(v45, v46, v5);
    v47 = v11[5];
    v45[v47 + 48] = v46[v47 + 48];
    v48 = *&v46[v47];
    v49 = *&v46[v47 + 16];
    *&v45[v47 + 32] = *&v46[v47 + 32];
    *&v45[v47 + 16] = v49;
    *&v45[v47] = v48;
    v63(&v45[v11[6]], &v46[v11[6]], v5);
    v62(&v45[v11[7]], &v46[v11[7]], v61);
    v59(&v45[v11[8]], &v46[v11[8]], v60);
    v63(&v45[*(v58 + 36)], &v46[*(v58 + 36)], v5);
    v62(&v45[*(v58 + 40)], &v46[*(v58 + 40)], v61);
    v50 = *(a3 + 24);
    v51 = a1 + v50;
    v52 = &a2[v50];
    v53 = type metadata accessor for Dense(0);
    (*(*(v53 - 8) + 16))(v51, v52, v53);
  }

  return v3;
}

uint64_t destroy for MLHandActionClassifier.Torso(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Conv2D(0);
  v3 = *(*(v2 - 8) + 8);
  v24 = v2;
  v3(a1, v2);
  v23 = v3;
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v3(a1 + *(v4 + 24), v2);
  v5 = v4;
  v18 = v4;
  v6 = a1 + *(v4 + 28);
  v7 = type metadata accessor for BatchNorm(0);
  v25 = *(*(v7 - 8) + 8);
  v25(v6, v7);
  v8 = a1 + *(v5 + 32);
  v22 = type metadata accessor for Dropout(0);
  v19 = *(*(v22 - 8) + 8);
  v19(v8, v22);
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v23(a1 + *(v21 + 36), v24);
  v25(a1 + *(v21 + 40), v7);
  v20 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v9 = a1 + v20[5];
  v23(v9, v24);
  v23(v9 + v18[6], v24);
  v25(v9 + v18[7], v7);
  v19(v9 + v18[8], v22);
  v23(v9 + *(v21 + 36), v24);
  v25(v9 + *(v21 + 40), v7);
  v10 = a1 + v20[6];
  v23(v10, v24);
  v23(v10 + v18[6], v24);
  v25(v10 + v18[7], v7);
  v19(v10 + v18[8], v22);
  v23(v10 + *(v21 + 36), v24);
  v25(v10 + *(v21 + 40), v7);
  v11 = a1 + v20[7];
  v23(v11, v24);
  v23(v11 + v18[6], v24);
  v25(v11 + v18[7], v7);
  v19(v11 + v18[8], v22);
  v23(v11 + *(v21 + 36), v24);
  v25(v11 + *(v21 + 40), v7);
  v12 = a1 + v20[8];
  v23(v12, v24);
  v23(v12 + v18[6], v24);
  v25(v12 + v18[7], v7);
  v19(v12 + v18[8], v22);
  v13 = a1 + v20[9];
  v23(v13, v24);
  v23(v13 + v18[6], v24);
  v25(v13 + v18[7], v7);
  v19(v13 + v18[8], v22);
  v23(v13 + *(v21 + 36), v24);
  v25(v13 + *(v21 + 40), v7);
  v14 = a1 + v20[10];
  v23(v14, v24);
  v23(v14 + v18[6], v24);
  v25(v14 + v18[7], v7);
  v19(v14 + v18[8], v22);
  v23(v14 + *(v21 + 36), v24);
  v25(v14 + *(v21 + 40), v7);
  v15 = a1 + *(a2 + 24);
  v16 = type metadata accessor for Dense(0);
  return (*(*(v16 - 8) + 8))(v15, v16);
}

uint64_t initializeWithCopy for MLHandActionClassifier.Torso(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = type metadata accessor for Conv2D(0);
  v3 = *(*(v61 - 8) + 16);
  v3(a1, a2, v61);
  v58 = v3;
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v5 = *(v4 + 20);
  *(a1 + v5 + 48) = *(a2 + v5 + 48);
  v6 = *(a2 + v5);
  v7 = *(a2 + v5 + 16);
  *(a1 + v5 + 32) = *(a2 + v5 + 32);
  *(a1 + v5 + 16) = v7;
  *(a1 + v5) = v6;
  v8 = v4;
  v3(a1 + *(v4 + 24), a2 + *(v4 + 24), v61);
  v9 = v8[7];
  v59 = type metadata accessor for BatchNorm(0);
  v60 = *(*(v59 - 8) + 16);
  v60(a1 + v9, a2 + v9, v59);
  v10 = v8[8];
  v56 = type metadata accessor for Dropout(0);
  v57 = *(*(v56 - 8) + 16);
  v57(a1 + v10, a2 + v10, v56);
  v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v3(a1 + *(v55 + 36), a2 + *(v55 + 36), v61);
  v60(a1 + *(v55 + 40), a2 + *(v55 + 40), v59);
  v54 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v11 = v54[5];
  v12 = a1 + v11;
  v13 = a2 + v11;
  v3(v12, v13, v61);
  v14 = v8[5];
  *(v14 + v12 + 48) = *(v14 + v13 + 48);
  v15 = *(v14 + v13);
  v16 = *(v14 + v13 + 16);
  *(v14 + v12 + 32) = *(v14 + v13 + 32);
  *(v14 + v12 + 16) = v16;
  *(v14 + v12) = v15;
  v3(v12 + v8[6], v13 + v8[6], v61);
  v60(v12 + v8[7], v13 + v8[7], v59);
  v57(v12 + v8[8], v13 + v8[8], v56);
  v3(v12 + *(v55 + 36), v13 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v12, *(v55 + 40) + v13, v59);
  v17 = v54[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v3(v18, v19, v61);
  v20 = v8[5];
  *(v20 + v18 + 48) = *(v20 + v19 + 48);
  v21 = *(v20 + v19);
  v22 = *(v20 + v19 + 16);
  *(v20 + v18 + 32) = *(v20 + v19 + 32);
  *(v20 + v18 + 16) = v22;
  *(v20 + v18) = v21;
  v3(v18 + v8[6], v19 + v8[6], v61);
  v60(v18 + v8[7], v19 + v8[7], v59);
  v57(v18 + v8[8], v19 + v8[8], v56);
  v3(v18 + *(v55 + 36), v19 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v18, *(v55 + 40) + v19, v59);
  v23 = v54[7];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v3(v24, v25, v61);
  v26 = v8[5];
  *(v26 + v24 + 48) = *(v26 + v25 + 48);
  v27 = *(v26 + v25);
  v28 = *(v26 + v25 + 16);
  *(v26 + v24 + 32) = *(v26 + v25 + 32);
  *(v26 + v24 + 16) = v28;
  *(v26 + v24) = v27;
  v3(v24 + v8[6], v25 + v8[6], v61);
  v60(v24 + v8[7], v25 + v8[7], v59);
  v57(v24 + v8[8], v25 + v8[8], v56);
  v3(v24 + *(v55 + 36), v25 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v24, *(v55 + 40) + v25, v59);
  v29 = v54[8];
  v30 = a1 + v29;
  v31 = a2 + v29;
  v3(v30, v31, v61);
  v32 = v8[5];
  *(v32 + v30 + 48) = *(v32 + v31 + 48);
  v33 = *(v32 + v31);
  v34 = *(v32 + v31 + 16);
  *(v32 + v30 + 32) = *(v32 + v31 + 32);
  *(v32 + v30 + 16) = v34;
  *(v32 + v30) = v33;
  v3(v30 + v8[6], v31 + v8[6], v61);
  v60(v30 + v8[7], v31 + v8[7], v59);
  v57(v8[8] + v30, v8[8] + v31, v56);
  v35 = v54[9];
  v36 = a1 + v35;
  v37 = a2 + v35;
  v3(v36, v37, v61);
  v38 = v8[5];
  *(v38 + v36 + 48) = *(v38 + v37 + 48);
  v39 = *(v38 + v37);
  v40 = *(v38 + v37 + 16);
  *(v38 + v36 + 32) = *(v38 + v37 + 32);
  *(v38 + v36 + 16) = v40;
  *(v38 + v36) = v39;
  v3(v36 + v8[6], v37 + v8[6], v61);
  v60(v36 + v8[7], v37 + v8[7], v59);
  v57(v36 + v8[8], v37 + v8[8], v56);
  v3(v36 + *(v55 + 36), v37 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v36, *(v55 + 40) + v37, v59);
  v41 = v54[10];
  v42 = a1 + v41;
  v43 = a2 + v41;
  v3(v42, v43, v61);
  v44 = v8;
  v45 = v8[5];
  *(v45 + v42 + 48) = *(v45 + v43 + 48);
  v46 = *(v45 + v43);
  v47 = *(v45 + v43 + 16);
  *(v45 + v42 + 32) = *(v45 + v43 + 32);
  *(v45 + v42 + 16) = v47;
  *(v45 + v42) = v46;
  v58(v42 + v44[6], v43 + v44[6], v61);
  v60(v42 + v44[7], v43 + v44[7], v59);
  v57(v42 + v44[8], v43 + v44[8], v56);
  v58(v42 + *(v55 + 36), v43 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v42, *(v55 + 40) + v43, v59);
  v48 = *(a3 + 24);
  v49 = a1 + v48;
  v50 = v48 + a2;
  v51 = type metadata accessor for Dense(0);
  (*(*(v51 - 8) + 16))(v49, v50, v51);
  return a1;
}

uint64_t assignWithCopy for MLHandActionClassifier.Torso(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  v49 = *(*(v4 - 8) + 24);
  v50 = v4;
  v49(a1, a2, v4);
  v5 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v6 = *(v5 + 20);
  *(a1 + v6) = *(a2 + v6);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  *(a1 + v6 + 16) = *(a2 + v6 + 16);
  *(a1 + v6 + 24) = *(a2 + v6 + 24);
  *(a1 + v6 + 32) = *(a2 + v6 + 32);
  *(a1 + v6 + 40) = *(a2 + v6 + 40);
  *(a1 + v6 + 48) = *(a2 + v6 + 48);
  v7 = v5;
  v49(a1 + *(v5 + 24), a2 + *(v5 + 24), v4);
  v8 = v7[7];
  v46 = v7;
  v51 = type metadata accessor for BatchNorm(0);
  v52 = *(*(v51 - 8) + 24);
  v52(a1 + v8, a2 + v8, v51);
  v9 = v7[8];
  v48 = type metadata accessor for Dropout(0);
  v47 = *(*(v48 - 8) + 24);
  v47(v9 + a1, a2 + v9, v48);
  v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v49(a1 + *(v45 + 36), a2 + *(v45 + 36), v4);
  v52(a1 + *(v45 + 40), a2 + *(v45 + 40), v51);
  v44 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v10 = v44[5];
  v11 = a1 + v10;
  v12 = a2 + v10;
  v49(v11, v12, v4);
  v13 = v7;
  v14 = v7[5];
  *(v14 + v11) = *(v14 + v12);
  *(v14 + v11 + 8) = *(v14 + v12 + 8);
  *(v14 + v11 + 16) = *(v14 + v12 + 16);
  *(v14 + v11 + 24) = *(v14 + v12 + 24);
  *(v14 + v11 + 32) = *(v14 + v12 + 32);
  *(v14 + v11 + 40) = *(v14 + v12 + 40);
  *(v14 + v11 + 48) = *(v14 + v12 + 48);
  v49(v11 + v13[6], v12 + v13[6], v50);
  v52(v11 + v13[7], v12 + v13[7], v51);
  v47(v11 + v13[8], v12 + v13[8], v48);
  v49(v11 + *(v45 + 36), v12 + *(v45 + 36), v50);
  v52(*(v45 + 40) + v11, *(v45 + 40) + v12, v51);
  v15 = v44[6];
  v16 = a1 + v15;
  v17 = a2 + v15;
  v49(v16, v17, v50);
  v18 = v7[5];
  *(v18 + v16) = *(v18 + v17);
  *(v18 + v16 + 8) = *(v18 + v17 + 8);
  *(v18 + v16 + 16) = *(v18 + v17 + 16);
  *(v18 + v16 + 24) = *(v18 + v17 + 24);
  *(v18 + v16 + 32) = *(v18 + v17 + 32);
  *(v18 + v16 + 40) = *(v18 + v17 + 40);
  *(v18 + v16 + 48) = *(v18 + v17 + 48);
  v49(v16 + v46[6], v17 + v46[6], v50);
  v52(v16 + v13[7], v17 + v13[7], v51);
  v47(v16 + v13[8], v17 + v13[8], v48);
  v49(v16 + *(v45 + 36), v17 + *(v45 + 36), v50);
  v52(*(v45 + 40) + v16, *(v45 + 40) + v17, v51);
  v19 = v44[7];
  v20 = a1 + v19;
  v21 = a2 + v19;
  v49(v20, v21, v50);
  v22 = v7;
  v23 = v7[5];
  *(v23 + v20) = *(v23 + v21);
  *(v23 + v20 + 8) = *(v23 + v21 + 8);
  *(v23 + v20 + 16) = *(v23 + v21 + 16);
  *(v23 + v20 + 24) = *(v23 + v21 + 24);
  *(v23 + v20 + 32) = *(v23 + v21 + 32);
  *(v23 + v20 + 40) = *(v23 + v21 + 40);
  *(v23 + v20 + 48) = *(v23 + v21 + 48);
  v49(v20 + v46[6], v21 + v46[6], v50);
  v52(v20 + v22[7], v21 + v22[7], v51);
  v47(v20 + v22[8], v21 + v22[8], v48);
  v49(v20 + *(v45 + 36), v21 + *(v45 + 36), v50);
  v52(*(v45 + 40) + v20, *(v45 + 40) + v21, v51);
  v24 = v44[8];
  v25 = a1 + v24;
  v26 = a2 + v24;
  v49(v25, v26, v50);
  v27 = v7;
  v28 = v7[5];
  *(v28 + v25) = *(v28 + v26);
  *(v28 + v25 + 8) = *(v28 + v26 + 8);
  *(v28 + v25 + 16) = *(v28 + v26 + 16);
  *(v28 + v25 + 24) = *(v28 + v26 + 24);
  *(v28 + v25 + 32) = *(v28 + v26 + 32);
  *(v28 + v25 + 40) = *(v28 + v26 + 40);
  *(v28 + v25 + 48) = *(v28 + v26 + 48);
  v49(v25 + v46[6], v26 + v46[6], v50);
  v52(v25 + v27[7], v26 + v27[7], v51);
  v47(v27[8] + v25, v27[8] + v26, v48);
  v29 = v44[9];
  v30 = a1 + v29;
  v31 = a2 + v29;
  v49(v30, v31, v50);
  v32 = v7[5];
  *(v32 + v30) = *(v32 + v31);
  *(v32 + v30 + 8) = *(v32 + v31 + 8);
  *(v32 + v30 + 16) = *(v32 + v31 + 16);
  *(v32 + v30 + 24) = *(v32 + v31 + 24);
  *(v32 + v30 + 32) = *(v32 + v31 + 32);
  *(v32 + v30 + 40) = *(v32 + v31 + 40);
  *(v32 + v30 + 48) = *(v32 + v31 + 48);
  v49(v30 + v27[6], v31 + v27[6], v50);
  v52(v30 + v7[7], v31 + v7[7], v51);
  v47(v30 + v7[8], v31 + v7[8], v48);
  v49(v30 + *(v45 + 36), v31 + *(v45 + 36), v50);
  v52(*(v45 + 40) + v30, *(v45 + 40) + v31, v51);
  v33 = v44[10];
  v34 = a1 + v33;
  v35 = a2 + v33;
  v49(v34, v35, v50);
  v36 = v7[5];
  *(v36 + v34) = *(v36 + v35);
  *(v36 + v34 + 8) = *(v36 + v35 + 8);
  *(v36 + v34 + 16) = *(v36 + v35 + 16);
  *(v36 + v34 + 24) = *(v36 + v35 + 24);
  *(v36 + v34 + 32) = *(v36 + v35 + 32);
  *(v36 + v34 + 40) = *(v36 + v35 + 40);
  *(v36 + v34 + 48) = *(v36 + v35 + 48);
  v37 = v7;
  v49(v34 + v46[6], v35 + v46[6], v50);
  v52(v34 + v37[7], v35 + v37[7], v51);
  v47(v34 + v37[8], v35 + v37[8], v48);
  v49(v34 + *(v45 + 36), v35 + *(v45 + 36), v50);
  v52(*(v45 + 40) + v34, *(v45 + 40) + v35, v51);
  v38 = *(a3 + 24);
  v39 = a1 + v38;
  v40 = v38 + a2;
  v41 = type metadata accessor for Dense(0);
  (*(*(v41 - 8) + 24))(v39, v40, v41);
  return a1;
}

uint64_t initializeWithTake for MLHandActionClassifier.Torso(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = type metadata accessor for Conv2D(0);
  v3 = *(*(v61 - 8) + 32);
  v3(a1, a2, v61);
  v58 = v3;
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v5 = *(v4 + 20);
  *(a1 + v5 + 48) = *(a2 + v5 + 48);
  v6 = *(a2 + v5);
  v7 = *(a2 + v5 + 16);
  *(a1 + v5 + 32) = *(a2 + v5 + 32);
  *(a1 + v5 + 16) = v7;
  *(a1 + v5) = v6;
  v8 = v4;
  v3(a1 + *(v4 + 24), a2 + *(v4 + 24), v61);
  v9 = v8[7];
  v59 = type metadata accessor for BatchNorm(0);
  v60 = *(*(v59 - 8) + 32);
  v60(a1 + v9, a2 + v9, v59);
  v10 = v8[8];
  v56 = type metadata accessor for Dropout(0);
  v57 = *(*(v56 - 8) + 32);
  v57(a1 + v10, a2 + v10, v56);
  v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v3(a1 + *(v55 + 36), a2 + *(v55 + 36), v61);
  v60(a1 + *(v55 + 40), a2 + *(v55 + 40), v59);
  v54 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v11 = v54[5];
  v12 = a1 + v11;
  v13 = a2 + v11;
  v3(v12, v13, v61);
  v14 = v8[5];
  *(v14 + v12 + 48) = *(v14 + v13 + 48);
  v15 = *(v14 + v13);
  v16 = *(v14 + v13 + 16);
  *(v14 + v12 + 32) = *(v14 + v13 + 32);
  *(v14 + v12 + 16) = v16;
  *(v14 + v12) = v15;
  v3(v12 + v8[6], v13 + v8[6], v61);
  v60(v12 + v8[7], v13 + v8[7], v59);
  v57(v12 + v8[8], v13 + v8[8], v56);
  v3(v12 + *(v55 + 36), v13 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v12, *(v55 + 40) + v13, v59);
  v17 = v54[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v3(v18, v19, v61);
  v20 = v8[5];
  *(v20 + v18 + 48) = *(v20 + v19 + 48);
  v21 = *(v20 + v19);
  v22 = *(v20 + v19 + 16);
  *(v20 + v18 + 32) = *(v20 + v19 + 32);
  *(v20 + v18 + 16) = v22;
  *(v20 + v18) = v21;
  v3(v18 + v8[6], v19 + v8[6], v61);
  v60(v18 + v8[7], v19 + v8[7], v59);
  v57(v18 + v8[8], v19 + v8[8], v56);
  v3(v18 + *(v55 + 36), v19 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v18, *(v55 + 40) + v19, v59);
  v23 = v54[7];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v3(v24, v25, v61);
  v26 = v8[5];
  *(v26 + v24 + 48) = *(v26 + v25 + 48);
  v27 = *(v26 + v25);
  v28 = *(v26 + v25 + 16);
  *(v26 + v24 + 32) = *(v26 + v25 + 32);
  *(v26 + v24 + 16) = v28;
  *(v26 + v24) = v27;
  v3(v24 + v8[6], v25 + v8[6], v61);
  v60(v24 + v8[7], v25 + v8[7], v59);
  v57(v24 + v8[8], v25 + v8[8], v56);
  v3(v24 + *(v55 + 36), v25 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v24, *(v55 + 40) + v25, v59);
  v29 = v54[8];
  v30 = a1 + v29;
  v31 = a2 + v29;
  v3(v30, v31, v61);
  v32 = v8[5];
  *(v32 + v30 + 48) = *(v32 + v31 + 48);
  v33 = *(v32 + v31);
  v34 = *(v32 + v31 + 16);
  *(v32 + v30 + 32) = *(v32 + v31 + 32);
  *(v32 + v30 + 16) = v34;
  *(v32 + v30) = v33;
  v3(v30 + v8[6], v31 + v8[6], v61);
  v60(v30 + v8[7], v31 + v8[7], v59);
  v57(v8[8] + v30, v8[8] + v31, v56);
  v35 = v54[9];
  v36 = a1 + v35;
  v37 = a2 + v35;
  v3(v36, v37, v61);
  v38 = v8[5];
  *(v38 + v36 + 48) = *(v38 + v37 + 48);
  v39 = *(v38 + v37);
  v40 = *(v38 + v37 + 16);
  *(v38 + v36 + 32) = *(v38 + v37 + 32);
  *(v38 + v36 + 16) = v40;
  *(v38 + v36) = v39;
  v3(v36 + v8[6], v37 + v8[6], v61);
  v60(v36 + v8[7], v37 + v8[7], v59);
  v57(v36 + v8[8], v37 + v8[8], v56);
  v3(v36 + *(v55 + 36), v37 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v36, *(v55 + 40) + v37, v59);
  v41 = v54[10];
  v42 = a1 + v41;
  v43 = a2 + v41;
  v3(v42, v43, v61);
  v44 = v8;
  v45 = v8[5];
  *(v45 + v42 + 48) = *(v45 + v43 + 48);
  v46 = *(v45 + v43);
  v47 = *(v45 + v43 + 16);
  *(v45 + v42 + 32) = *(v45 + v43 + 32);
  *(v45 + v42 + 16) = v47;
  *(v45 + v42) = v46;
  v58(v42 + v44[6], v43 + v44[6], v61);
  v60(v42 + v44[7], v43 + v44[7], v59);
  v57(v42 + v44[8], v43 + v44[8], v56);
  v58(v42 + *(v55 + 36), v43 + *(v55 + 36), v61);
  v60(*(v55 + 40) + v42, *(v55 + 40) + v43, v59);
  v48 = *(a3 + 24);
  v49 = a1 + v48;
  v50 = v48 + a2;
  v51 = type metadata accessor for Dense(0);
  (*(*(v51 - 8) + 32))(v49, v50, v51);
  return a1;
}

uint64_t assignWithTake for MLHandActionClassifier.Torso(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Conv2D(0);
  v4 = *(*(v3 - 8) + 40);
  v53 = v3;
  v4(a1, a2, v3);
  v50 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v5 = v50[5];
  *(a1 + v5) = *(a2 + v5);
  *(a1 + v5 + 16) = *(a2 + v5 + 16);
  *(a1 + v5 + 32) = *(a2 + v5 + 32);
  *(a1 + v5 + 48) = *(a2 + v5 + 48);
  v4(v50[6] + a1, a2 + v50[6], v3);
  v6 = v50[7];
  v51 = type metadata accessor for BatchNorm(0);
  v52 = *(*(v51 - 8) + 40);
  v52(v6 + a1, a2 + v6, v51);
  v7 = v50[8];
  v49 = type metadata accessor for Dropout(0);
  v48 = *(*(v49 - 8) + 40);
  v48(v7 + a1, a2 + v7, v49);
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v4(*(v47 + 36) + a1, a2 + *(v47 + 36), v3);
  v52(a1 + *(v47 + 40), a2 + *(v47 + 40), v51);
  v46 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v8 = v46[5];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v4(v9, v10, v3);
  v11 = v50;
  v12 = v50[5];
  *(v12 + v9) = *(v12 + v10);
  *(v12 + v9 + 16) = *(v12 + v10 + 16);
  *(v12 + v9 + 32) = *(v12 + v10 + 32);
  *(v12 + v9 + 48) = *(v12 + v10 + 48);
  v4(v9 + v50[6], v10 + v50[6], v3);
  v52(v9 + v11[7], v10 + v11[7], v51);
  v48(v9 + v11[8], v10 + v11[8], v49);
  v4(v9 + *(v47 + 36), v10 + *(v47 + 36), v3);
  v52(*(v47 + 40) + v9, *(v47 + 40) + v10, v51);
  v13 = v46[6];
  v14 = a1 + v13;
  v15 = a2 + v13;
  v4(v14, v15, v3);
  v16 = v50;
  v17 = v50[5];
  *(v17 + v14) = *(v17 + v15);
  *(v17 + v14 + 16) = *(v17 + v15 + 16);
  *(v17 + v14 + 32) = *(v17 + v15 + 32);
  *(v17 + v14 + 48) = *(v17 + v15 + 48);
  v4(v14 + v50[6], v15 + v50[6], v3);
  v52(v14 + v16[7], v15 + v16[7], v51);
  v48(v14 + v16[8], v15 + v16[8], v49);
  v4(v14 + *(v47 + 36), v15 + *(v47 + 36), v3);
  v52(*(v47 + 40) + v14, *(v47 + 40) + v15, v51);
  v18 = v46[7];
  v19 = a1 + v18;
  v20 = a2 + v18;
  v4(v19, v20, v3);
  v21 = v50;
  v22 = v50[5];
  *(v22 + v19) = *(v22 + v20);
  *(v22 + v19 + 16) = *(v22 + v20 + 16);
  *(v22 + v19 + 32) = *(v22 + v20 + 32);
  *(v22 + v19 + 48) = *(v22 + v20 + 48);
  v4(v19 + v50[6], v20 + v50[6], v3);
  v52(v19 + v21[7], v20 + v21[7], v51);
  v48(v19 + v21[8], v20 + v21[8], v49);
  v4(v19 + *(v47 + 36), v20 + *(v47 + 36), v3);
  v52(*(v47 + 40) + v19, *(v47 + 40) + v20, v51);
  v23 = v46[8];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v4(v24, v25, v3);
  v26 = v50;
  v27 = v50[5];
  *(v27 + v24) = *(v27 + v25);
  *(v27 + v24 + 16) = *(v27 + v25 + 16);
  *(v27 + v24 + 32) = *(v27 + v25 + 32);
  *(v27 + v24 + 48) = *(v27 + v25 + 48);
  v4(v24 + v50[6], v25 + v50[6], v3);
  v52(v24 + v26[7], v25 + v26[7], v51);
  v48(v26[8] + v24, v26[8] + v25, v49);
  v28 = v46[9];
  v29 = a1 + v28;
  v30 = a2 + v28;
  v4(v29, v30, v3);
  v31 = v50[5];
  *(v31 + v29) = *(v31 + v30);
  *(v31 + v29 + 16) = *(v31 + v30 + 16);
  *(v31 + v29 + 32) = *(v31 + v30 + 32);
  *(v31 + v29 + 48) = *(v31 + v30 + 48);
  v4(v29 + v26[6], v30 + v26[6], v3);
  v52(v29 + v50[7], v30 + v50[7], v51);
  v48(v29 + v50[8], v30 + v50[8], v49);
  v4(v29 + *(v47 + 36), v30 + *(v47 + 36), v3);
  v52(*(v47 + 40) + v29, *(v47 + 40) + v30, v51);
  v32 = v46[10];
  v33 = a1 + v32;
  v34 = a2 + v32;
  v4(v33, v34, v3);
  v35 = v4;
  v36 = v50;
  v37 = v50[5];
  *(v37 + v33) = *(v37 + v34);
  *(v37 + v33 + 16) = *(v37 + v34 + 16);
  *(v37 + v33 + 32) = *(v37 + v34 + 32);
  *(v37 + v33 + 48) = *(v37 + v34 + 48);
  v38 = v3;
  v39 = v35;
  v35(v33 + v50[6], v34 + v50[6], v38);
  v52(v33 + v36[7], v34 + v36[7], v51);
  v48(v33 + v36[8], v34 + v36[8], v49);
  v39(v33 + *(v47 + 36), v34 + *(v47 + 36), v53);
  v52(*(v47 + 40) + v33, *(v47 + 40) + v34, v51);
  v40 = *(a3 + 24);
  v41 = a1 + v40;
  v42 = v40 + a2;
  v43 = type metadata accessor for Dense(0);
  (*(*(v43 - 8) + 40))(v41, v42, v43);
  return a1;
}

uint64_t sub_1C98B5(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  if (*(*(v5 - 8) + 84) != a2)
  {
    v5 = type metadata accessor for Dense(0);
    v4 = *(a3 + 24) + a1;
  }

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_1C990D(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = type metadata accessor for Dense(0);
    v6 = *(a4 + 24) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLHandActionClassifier.Torso(uint64_t a1)
{
  result = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &value witness table for () + 64;
    result = type metadata accessor for Dense(319);
    if (v3 <= 0x3F)
    {
      v4[2] = *(result - 8) + 64;
      swift_initStructMetadata(a1, 256, 3, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.SingleStreamBlock(void *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v53 = *a2;
    *v3 = *a2;
    v3 = (v53 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = type metadata accessor for Conv2D(0);
    v6 = *(*(v5 - 8) + 16);
    v62 = v5;
    v6(a1, a2, v5);
    v60 = v6;
    v7 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
    v8 = v7[5];
    *(a1 + v8 + 48) = a2[v8 + 48];
    v9 = *&a2[v8];
    v10 = *&a2[v8 + 16];
    *(a1 + v8 + 32) = *&a2[v8 + 32];
    *(a1 + v8 + 16) = v10;
    *(a1 + v8) = v9;
    v6(a1 + v7[6], &a2[v7[6]], v5);
    v11 = v7[7];
    v56 = v7;
    v61 = type metadata accessor for BatchNorm(0);
    v63 = *(*(v61 - 8) + 16);
    v63(a1 + v11, &a2[v11], v61);
    v12 = v7[8];
    v59 = type metadata accessor for Dropout(0);
    v58 = *(*(v59 - 8) + 16);
    v58(a1 + v12, &a2[v12], v59);
    v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
    v60(a1 + *(v55 + 36), &a2[*(v55 + 36)], v5);
    v63(a1 + *(v55 + 40), &a2[*(v55 + 40)], v61);
    v13 = a3[5];
    v14 = a1 + v13;
    v15 = &a2[v13];
    v60(v14, v15, v5);
    v16 = v56;
    v17 = v56[5];
    v14[v17 + 48] = v15[v17 + 48];
    v18 = *&v15[v17];
    v19 = *&v15[v17 + 16];
    *&v14[v17 + 32] = *&v15[v17 + 32];
    *&v14[v17 + 16] = v19;
    *&v14[v17] = v18;
    v60(&v14[v56[6]], &v15[v56[6]], v62);
    v63(&v14[v16[7]], &v15[v16[7]], v61);
    v58(&v14[v16[8]], &v15[v16[8]], v59);
    v60(&v14[*(v55 + 36)], &v15[*(v55 + 36)], v62);
    v63(&v14[*(v55 + 40)], &v15[*(v55 + 40)], v61);
    v20 = a3[6];
    v21 = a1 + v20;
    v22 = &a2[v20];
    v60(v21, v22, v62);
    v23 = v56;
    v24 = v56[5];
    v21[v24 + 48] = v22[v24 + 48];
    v25 = *&v22[v24];
    v26 = *&v22[v24 + 16];
    *&v21[v24 + 32] = *&v22[v24 + 32];
    *&v21[v24 + 16] = v26;
    *&v21[v24] = v25;
    v60(&v21[v56[6]], &v22[v56[6]], v62);
    v63(&v21[v23[7]], &v22[v23[7]], v61);
    v58(&v21[v23[8]], &v22[v23[8]], v59);
    v60(&v21[*(v55 + 36)], &v22[*(v55 + 36)], v62);
    v63(&v21[*(v55 + 40)], &v22[*(v55 + 40)], v61);
    v27 = a3[7];
    v28 = a1 + v27;
    v29 = &a2[v27];
    v60(v28, v29, v62);
    v30 = v56[5];
    v28[v30 + 48] = v29[v30 + 48];
    v31 = *&v29[v30];
    v32 = *&v29[v30 + 16];
    *&v28[v30 + 32] = *&v29[v30 + 32];
    *&v28[v30 + 16] = v32;
    *&v28[v30] = v31;
    v60(&v28[v56[6]], &v29[v56[6]], v62);
    v63(&v28[v56[7]], &v29[v56[7]], v61);
    v58(&v28[v56[8]], &v29[v56[8]], v59);
    v60(&v28[*(v55 + 36)], &v29[*(v55 + 36)], v62);
    v63(&v28[*(v55 + 40)], &v29[*(v55 + 40)], v61);
    v33 = a3[8];
    v34 = a1 + v33;
    v35 = &a2[v33];
    v60(v34, v35, v62);
    v36 = v56;
    v37 = v56[5];
    v34[v37 + 48] = v35[v37 + 48];
    v38 = *&v35[v37];
    v39 = *&v35[v37 + 16];
    *&v34[v37 + 32] = *&v35[v37 + 32];
    *&v34[v37 + 16] = v39;
    *&v34[v37] = v38;
    v60(&v34[v56[6]], &v35[v56[6]], v62);
    v63(&v34[v36[7]], &v35[v36[7]], v61);
    v58(&v34[v36[8]], &v35[v36[8]], v59);
    v40 = a3[9];
    v41 = a1 + v40;
    v42 = &a2[v40];
    v60(v41, v42, v62);
    v43 = v56[5];
    v41[v43 + 48] = v42[v43 + 48];
    v44 = *&v42[v43];
    v45 = *&v42[v43 + 16];
    *&v41[v43 + 32] = *&v42[v43 + 32];
    *&v41[v43 + 16] = v45;
    *&v41[v43] = v44;
    v60(&v41[v36[6]], &v42[v36[6]], v62);
    v63(&v41[v36[7]], &v42[v36[7]], v61);
    v58(&v41[v36[8]], &v42[v36[8]], v59);
    v60(&v41[*(v55 + 36)], &v42[*(v55 + 36)], v62);
    v63(&v41[*(v55 + 40)], &v42[*(v55 + 40)], v61);
    v46 = a3[10];
    v47 = a1 + v46;
    v48 = &a2[v46];
    v60(a1 + v46, &a2[v46], v62);
    v49 = v56;
    v50 = v56[5];
    v47[v50 + 48] = v48[v50 + 48];
    v51 = *&v48[v50];
    v52 = *&v48[v50 + 16];
    *&v47[v50 + 32] = *&v48[v50 + 32];
    *&v47[v50 + 16] = v52;
    *&v47[v50] = v51;
    v60(&v47[v56[6]], &v48[v56[6]], v62);
    v63(&v47[v49[7]], &v48[v49[7]], v61);
    v58(&v47[v49[8]], &v48[v49[8]], v59);
    v60(&v47[*(v55 + 36)], &v48[*(v55 + 36)], v62);
    v63(&v47[*(v55 + 40)], &v48[*(v55 + 40)], v61);
  }

  return v3;
}

uint64_t destroy for MLHandActionClassifier.SingleStreamBlock(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for Conv2D(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v3(a1 + v4[6], v2);
  v5 = a1 + v4[7];
  v14 = type metadata accessor for BatchNorm(0);
  v18 = *(*(v14 - 8) + 8);
  v18(v5, v14);
  v6 = a1 + v4[8];
  v17 = type metadata accessor for Dropout(0);
  v15 = *(*(v17 - 8) + 8);
  v15(v6, v17);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v3(a1 + *(v16 + 36), v2);
  v18(a1 + *(v16 + 40), v14);
  v7 = a1 + a2[5];
  v3(v7, v2);
  v3(v7 + v4[6], v2);
  v18(v7 + v4[7], v14);
  v15(v7 + v4[8], v17);
  v3(v7 + *(v16 + 36), v2);
  v18(v7 + *(v16 + 40), v14);
  v8 = a1 + a2[6];
  v3(v8, v2);
  v3(v8 + v4[6], v2);
  v18(v8 + v4[7], v14);
  v15(v8 + v4[8], v17);
  v3(v8 + *(v16 + 36), v2);
  v18(v8 + *(v16 + 40), v14);
  v9 = a1 + a2[7];
  v3(v9, v2);
  v3(v9 + v4[6], v2);
  v18(v9 + v4[7], v14);
  v15(v9 + v4[8], v17);
  v3(v9 + *(v16 + 36), v2);
  v18(v9 + *(v16 + 40), v14);
  v10 = a1 + a2[8];
  v3(v10, v2);
  v3(v10 + v4[6], v2);
  v18(v10 + v4[7], v14);
  v15(v10 + v4[8], v17);
  v11 = a1 + a2[9];
  v3(v11, v2);
  v3(v11 + v4[6], v2);
  v18(v11 + v4[7], v14);
  v15(v11 + v4[8], v17);
  v3(v11 + *(v16 + 36), v2);
  v18(v11 + *(v16 + 40), v14);
  v12 = a1 + a2[10];
  v3(v12, v2);
  v3(v12 + v4[6], v2);
  v18(v12 + v4[7], v14);
  v15(v12 + v4[8], v17);
  v3(v12 + *(v16 + 36), v2);
  return (v18)(v12 + *(v16 + 40), v14);
}

uint64_t initializeWithCopy for MLHandActionClassifier.SingleStreamBlock(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = type metadata accessor for Conv2D(0);
  v55 = *(*(v3 - 8) + 16);
  v53 = v3;
  v55(a1, a2, v3);
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v5 = *(v4 + 20);
  *(a1 + v5 + 48) = *(a2 + v5 + 48);
  v6 = *(a2 + v5);
  v7 = *(a2 + v5 + 16);
  *(a1 + v5 + 32) = *(a2 + v5 + 32);
  *(a1 + v5 + 16) = v7;
  *(a1 + v5) = v6;
  v8 = v4;
  v55(a1 + *(v4 + 24), a2 + *(v4 + 24), v3);
  v9 = v8[7];
  v49 = v8;
  v56 = type metadata accessor for BatchNorm(0);
  v54 = *(*(v56 - 8) + 16);
  v54(a1 + v9, a2 + v9, v56);
  v10 = v8[8];
  v51 = type metadata accessor for Dropout(0);
  v50 = *(*(v51 - 8) + 16);
  v50(a1 + v10, a2 + v10, v51);
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v55(a1 + *(v48 + 36), a2 + *(v48 + 36), v3);
  v54(a1 + *(v48 + 40), a2 + *(v48 + 40), v56);
  v11 = a3[5];
  v12 = a1 + v11;
  v13 = a2 + v11;
  v55(v12, v13, v53);
  v14 = v8[5];
  *(v14 + v12 + 48) = *(v14 + v13 + 48);
  v15 = *(v14 + v13);
  v16 = *(v14 + v13 + 16);
  *(v14 + v12 + 32) = *(v14 + v13 + 32);
  *(v14 + v12 + 16) = v16;
  *(v14 + v12) = v15;
  v55(v12 + v8[6], v13 + v8[6], v53);
  v54(v12 + v8[7], v13 + v8[7], v56);
  v50(v12 + v8[8], v13 + v8[8], v51);
  v55(v12 + *(v48 + 36), v13 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v12, *(v48 + 40) + v13, v56);
  v17 = a3[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v55(v18, v19, v53);
  v20 = v8[5];
  *(v20 + v18 + 48) = *(v20 + v19 + 48);
  v21 = *(v20 + v19);
  v22 = *(v20 + v19 + 16);
  *(v20 + v18 + 32) = *(v20 + v19 + 32);
  *(v20 + v18 + 16) = v22;
  *(v20 + v18) = v21;
  v55(v18 + v49[6], v19 + v49[6], v53);
  v54(v18 + v49[7], v19 + v49[7], v56);
  v50(v18 + v49[8], v19 + v49[8], v51);
  v55(v18 + *(v48 + 36), v19 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v18, *(v48 + 40) + v19, v56);
  v23 = a3[7];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v55(v24, v25, v53);
  v26 = v8[5];
  *(v26 + v24 + 48) = *(v26 + v25 + 48);
  v27 = *(v26 + v25);
  v28 = *(v26 + v25 + 16);
  *(v26 + v24 + 32) = *(v26 + v25 + 32);
  *(v26 + v24 + 16) = v28;
  *(v26 + v24) = v27;
  v55(v24 + v49[6], v25 + v49[6], v53);
  v54(v24 + v8[7], v25 + v8[7], v56);
  v50(v24 + v8[8], v25 + v8[8], v51);
  v55(v24 + *(v48 + 36), v25 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v24, *(v48 + 40) + v25, v56);
  v29 = a3[8];
  v30 = a1 + v29;
  v31 = a2 + v29;
  v55(v30, v31, v53);
  v32 = v8[5];
  *(v32 + v30 + 48) = *(v32 + v31 + 48);
  v33 = *(v32 + v31);
  v34 = *(v32 + v31 + 16);
  *(v32 + v30 + 32) = *(v32 + v31 + 32);
  *(v32 + v30 + 16) = v34;
  *(v32 + v30) = v33;
  v55(v49[6] + v30, v31 + v49[6], v53);
  v54(v8[7] + v30, v31 + v8[7], v56);
  v50(v8[8] + v30, v8[8] + v31, v51);
  v35 = a3[9];
  v36 = a1 + v35;
  v37 = a2 + v35;
  v55(v36, v37, v53);
  v38 = v8[5];
  *(v38 + v36 + 48) = *(v38 + v37 + 48);
  v39 = *(v38 + v37);
  v40 = *(v38 + v37 + 16);
  *(v38 + v36 + 32) = *(v38 + v37 + 32);
  *(v38 + v36 + 16) = v40;
  *(v38 + v36) = v39;
  v55(v36 + v8[6], v37 + v8[6], v53);
  v54(v36 + v8[7], v37 + v8[7], v56);
  v50(v36 + v8[8], v37 + v8[8], v51);
  v55(v36 + *(v48 + 36), v37 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v36, *(v48 + 40) + v37, v56);
  v41 = a3[10];
  v42 = a1 + v41;
  v43 = v41 + a2;
  v55(a1 + v41, v41 + a2, v53);
  v44 = v8[5];
  *(v44 + v42 + 48) = *(v44 + v43 + 48);
  v45 = *(v44 + v43);
  v46 = *(v44 + v43 + 16);
  *(v44 + v42 + 32) = *(v44 + v43 + 32);
  *(v44 + v42 + 16) = v46;
  *(v44 + v42) = v45;
  v55(v42 + v8[6], v43 + v8[6], v53);
  v54(v42 + v8[7], v43 + v8[7], v56);
  v50(v42 + v8[8], v43 + v8[8], v51);
  v55(v42 + *(v48 + 36), v43 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v42, *(v48 + 40) + v43, v56);
  return a1;
}

uint64_t assignWithCopy for MLHandActionClassifier.SingleStreamBlock(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = type metadata accessor for Conv2D(0);
  v41 = *(*(v3 - 8) + 24);
  v38 = v3;
  v41(a1, a2, v3);
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v5 = *(v4 + 20);
  v6 = v4;
  *(a1 + v5) = *(a2 + v5);
  *(a1 + v5 + 8) = *(a2 + v5 + 8);
  *(a1 + v5 + 16) = *(a2 + v5 + 16);
  *(a1 + v5 + 24) = *(a2 + v5 + 24);
  *(a1 + v5 + 32) = *(a2 + v5 + 32);
  *(a1 + v5 + 40) = *(a2 + v5 + 40);
  *(a1 + v5 + 48) = *(a2 + v5 + 48);
  v41(a1 + *(v4 + 24), a2 + *(v4 + 24), v3);
  v7 = v6[7];
  v40 = type metadata accessor for BatchNorm(0);
  v39 = *(*(v40 - 8) + 24);
  v39(a1 + v7, a2 + v7, v40);
  v8 = v6[8];
  v36 = type metadata accessor for Dropout(0);
  v35 = *(*(v36 - 8) + 24);
  v35(a1 + v8, a2 + v8, v36);
  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v41(a1 + *(v34 + 36), a2 + *(v34 + 36), v3);
  v39(a1 + *(v34 + 40), a2 + *(v34 + 40), v40);
  v9 = a3[5];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v41(v10, v11, v38);
  v12 = v6[5];
  *(v12 + v10) = *(v12 + v11);
  *(v12 + v10 + 8) = *(v12 + v11 + 8);
  *(v12 + v10 + 16) = *(v12 + v11 + 16);
  *(v12 + v10 + 24) = *(v12 + v11 + 24);
  *(v12 + v10 + 32) = *(v12 + v11 + 32);
  *(v12 + v10 + 40) = *(v12 + v11 + 40);
  *(v12 + v10 + 48) = *(v12 + v11 + 48);
  v41(v10 + v6[6], v11 + v6[6], v38);
  v39(v10 + v6[7], v11 + v6[7], v40);
  v35(v10 + v6[8], v11 + v6[8], v36);
  v41(v10 + *(v34 + 36), v11 + *(v34 + 36), v38);
  v39(*(v34 + 40) + v10, *(v34 + 40) + v11, v40);
  v13 = a3[6];
  v14 = a1 + v13;
  v15 = a2 + v13;
  v41(v14, v15, v38);
  v16 = v6[5];
  *(v16 + v14) = *(v16 + v15);
  *(v16 + v14 + 8) = *(v16 + v15 + 8);
  *(v16 + v14 + 16) = *(v16 + v15 + 16);
  *(v16 + v14 + 24) = *(v16 + v15 + 24);
  *(v16 + v14 + 32) = *(v16 + v15 + 32);
  *(v16 + v14 + 40) = *(v16 + v15 + 40);
  *(v16 + v14 + 48) = *(v16 + v15 + 48);
  v41(v14 + v6[6], v15 + v6[6], v38);
  v39(v14 + v6[7], v15 + v6[7], v40);
  v35(v14 + v6[8], v15 + v6[8], v36);
  v41(v14 + *(v34 + 36), v15 + *(v34 + 36), v38);
  v39(*(v34 + 40) + v14, *(v34 + 40) + v15, v40);
  v17 = a3[7];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v41(v18, v19, v38);
  v20 = v6[5];
  *(v20 + v18) = *(v20 + v19);
  *(v20 + v18 + 8) = *(v20 + v19 + 8);
  *(v20 + v18 + 16) = *(v20 + v19 + 16);
  *(v20 + v18 + 24) = *(v20 + v19 + 24);
  *(v20 + v18 + 32) = *(v20 + v19 + 32);
  *(v20 + v18 + 40) = *(v20 + v19 + 40);
  *(v20 + v18 + 48) = *(v20 + v19 + 48);
  v41(v18 + v6[6], v19 + v6[6], v38);
  v39(v18 + v6[7], v19 + v6[7], v40);
  v35(v18 + v6[8], v19 + v6[8], v36);
  v41(v18 + *(v34 + 36), v19 + *(v34 + 36), v38);
  v39(*(v34 + 40) + v18, *(v34 + 40) + v19, v40);
  v21 = a3[8];
  v22 = a1 + v21;
  v23 = a2 + v21;
  v41(v22, v23, v38);
  v24 = v6[5];
  *(v24 + v22) = *(v24 + v23);
  *(v24 + v22 + 8) = *(v24 + v23 + 8);
  *(v24 + v22 + 16) = *(v24 + v23 + 16);
  *(v24 + v22 + 24) = *(v24 + v23 + 24);
  *(v24 + v22 + 32) = *(v24 + v23 + 32);
  *(v24 + v22 + 40) = *(v24 + v23 + 40);
  *(v24 + v22 + 48) = *(v24 + v23 + 48);
  v41(v6[6] + v22, v23 + v6[6], v38);
  v39(v6[7] + v22, v23 + v6[7], v40);
  v35(v6[8] + v22, v6[8] + v23, v36);
  v25 = a3[9];
  v26 = a1 + v25;
  v27 = a2 + v25;
  v41(v26, v27, v38);
  v28 = v6[5];
  *(v28 + v26) = *(v28 + v27);
  *(v28 + v26 + 8) = *(v28 + v27 + 8);
  *(v28 + v26 + 16) = *(v28 + v27 + 16);
  *(v28 + v26 + 24) = *(v28 + v27 + 24);
  *(v28 + v26 + 32) = *(v28 + v27 + 32);
  *(v28 + v26 + 40) = *(v28 + v27 + 40);
  *(v28 + v26 + 48) = *(v28 + v27 + 48);
  v41(v26 + v6[6], v27 + v6[6], v38);
  v39(v26 + v6[7], v27 + v6[7], v40);
  v35(v26 + v6[8], v27 + v6[8], v36);
  v41(v26 + *(v34 + 36), v27 + *(v34 + 36), v38);
  v39(*(v34 + 40) + v26, *(v34 + 40) + v27, v40);
  v29 = a3[10];
  v30 = a1 + v29;
  v31 = v29 + a2;
  v41(a1 + v29, v29 + a2, v38);
  v32 = v6[5];
  *(v32 + v30) = *(v32 + v31);
  *(v32 + v30 + 8) = *(v32 + v31 + 8);
  *(v32 + v30 + 16) = *(v32 + v31 + 16);
  *(v32 + v30 + 24) = *(v32 + v31 + 24);
  *(v32 + v30 + 32) = *(v32 + v31 + 32);
  *(v32 + v30 + 40) = *(v32 + v31 + 40);
  *(v32 + v30 + 48) = *(v32 + v31 + 48);
  v41(v30 + v6[6], v31 + v6[6], v38);
  v39(v30 + v6[7], v31 + v6[7], v40);
  v35(v30 + v6[8], v31 + v6[8], v36);
  v41(v30 + *(v34 + 36), v31 + *(v34 + 36), v38);
  v39(*(v34 + 40) + v30, *(v34 + 40) + v31, v40);
  return a1;
}

uint64_t initializeWithTake for MLHandActionClassifier.SingleStreamBlock(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = type metadata accessor for Conv2D(0);
  v55 = *(*(v3 - 8) + 32);
  v53 = v3;
  v55(a1, a2, v3);
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v5 = *(v4 + 20);
  *(a1 + v5 + 48) = *(a2 + v5 + 48);
  v6 = *(a2 + v5);
  v7 = *(a2 + v5 + 16);
  *(a1 + v5 + 32) = *(a2 + v5 + 32);
  *(a1 + v5 + 16) = v7;
  *(a1 + v5) = v6;
  v8 = v4;
  v55(a1 + *(v4 + 24), a2 + *(v4 + 24), v3);
  v9 = v8[7];
  v49 = v8;
  v56 = type metadata accessor for BatchNorm(0);
  v54 = *(*(v56 - 8) + 32);
  v54(a1 + v9, a2 + v9, v56);
  v10 = v8[8];
  v51 = type metadata accessor for Dropout(0);
  v50 = *(*(v51 - 8) + 32);
  v50(a1 + v10, a2 + v10, v51);
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v55(a1 + *(v48 + 36), a2 + *(v48 + 36), v3);
  v54(a1 + *(v48 + 40), a2 + *(v48 + 40), v56);
  v11 = a3[5];
  v12 = a1 + v11;
  v13 = a2 + v11;
  v55(v12, v13, v53);
  v14 = v8[5];
  *(v14 + v12 + 48) = *(v14 + v13 + 48);
  v15 = *(v14 + v13);
  v16 = *(v14 + v13 + 16);
  *(v14 + v12 + 32) = *(v14 + v13 + 32);
  *(v14 + v12 + 16) = v16;
  *(v14 + v12) = v15;
  v55(v12 + v8[6], v13 + v8[6], v53);
  v54(v12 + v8[7], v13 + v8[7], v56);
  v50(v12 + v8[8], v13 + v8[8], v51);
  v55(v12 + *(v48 + 36), v13 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v12, *(v48 + 40) + v13, v56);
  v17 = a3[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v55(v18, v19, v53);
  v20 = v8[5];
  *(v20 + v18 + 48) = *(v20 + v19 + 48);
  v21 = *(v20 + v19);
  v22 = *(v20 + v19 + 16);
  *(v20 + v18 + 32) = *(v20 + v19 + 32);
  *(v20 + v18 + 16) = v22;
  *(v20 + v18) = v21;
  v55(v18 + v49[6], v19 + v49[6], v53);
  v54(v18 + v49[7], v19 + v49[7], v56);
  v50(v18 + v49[8], v19 + v49[8], v51);
  v55(v18 + *(v48 + 36), v19 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v18, *(v48 + 40) + v19, v56);
  v23 = a3[7];
  v24 = a1 + v23;
  v25 = a2 + v23;
  v55(v24, v25, v53);
  v26 = v8[5];
  *(v26 + v24 + 48) = *(v26 + v25 + 48);
  v27 = *(v26 + v25);
  v28 = *(v26 + v25 + 16);
  *(v26 + v24 + 32) = *(v26 + v25 + 32);
  *(v26 + v24 + 16) = v28;
  *(v26 + v24) = v27;
  v55(v24 + v49[6], v25 + v49[6], v53);
  v54(v24 + v8[7], v25 + v8[7], v56);
  v50(v24 + v8[8], v25 + v8[8], v51);
  v55(v24 + *(v48 + 36), v25 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v24, *(v48 + 40) + v25, v56);
  v29 = a3[8];
  v30 = a1 + v29;
  v31 = a2 + v29;
  v55(v30, v31, v53);
  v32 = v8[5];
  *(v32 + v30 + 48) = *(v32 + v31 + 48);
  v33 = *(v32 + v31);
  v34 = *(v32 + v31 + 16);
  *(v32 + v30 + 32) = *(v32 + v31 + 32);
  *(v32 + v30 + 16) = v34;
  *(v32 + v30) = v33;
  v55(v49[6] + v30, v31 + v49[6], v53);
  v54(v8[7] + v30, v31 + v8[7], v56);
  v50(v8[8] + v30, v8[8] + v31, v51);
  v35 = a3[9];
  v36 = a1 + v35;
  v37 = a2 + v35;
  v55(v36, v37, v53);
  v38 = v8[5];
  *(v38 + v36 + 48) = *(v38 + v37 + 48);
  v39 = *(v38 + v37);
  v40 = *(v38 + v37 + 16);
  *(v38 + v36 + 32) = *(v38 + v37 + 32);
  *(v38 + v36 + 16) = v40;
  *(v38 + v36) = v39;
  v55(v36 + v8[6], v37 + v8[6], v53);
  v54(v36 + v8[7], v37 + v8[7], v56);
  v50(v36 + v8[8], v37 + v8[8], v51);
  v55(v36 + *(v48 + 36), v37 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v36, *(v48 + 40) + v37, v56);
  v41 = a3[10];
  v42 = a1 + v41;
  v43 = v41 + a2;
  v55(a1 + v41, v41 + a2, v53);
  v44 = v8[5];
  *(v44 + v42 + 48) = *(v44 + v43 + 48);
  v45 = *(v44 + v43);
  v46 = *(v44 + v43 + 16);
  *(v44 + v42 + 32) = *(v44 + v43 + 32);
  *(v44 + v42 + 16) = v46;
  *(v44 + v42) = v45;
  v55(v42 + v8[6], v43 + v8[6], v53);
  v54(v42 + v8[7], v43 + v8[7], v56);
  v50(v42 + v8[8], v43 + v8[8], v51);
  v55(v42 + *(v48 + 36), v43 + *(v48 + 36), v53);
  v54(*(v48 + 40) + v42, *(v48 + 40) + v43, v56);
  return a1;
}

uint64_t assignWithTake for MLHandActionClassifier.SingleStreamBlock(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = type metadata accessor for Conv2D(0);
  v39 = *(*(v3 - 8) + 40);
  v41 = v3;
  v39(a1, a2, v3);
  v4 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v5 = *(v4 + 20);
  *(a1 + v5) = *(a2 + v5);
  *(a1 + v5 + 16) = *(a2 + v5 + 16);
  *(a1 + v5 + 32) = *(a2 + v5 + 32);
  *(a1 + v5 + 48) = *(a2 + v5 + 48);
  v6 = v4;
  v39(a1 + *(v4 + 24), a2 + *(v4 + 24), v3);
  v7 = v6[7];
  v40 = type metadata accessor for BatchNorm(0);
  v42 = *(*(v40 - 8) + 40);
  v42(a1 + v7, a2 + v7, v40);
  v8 = v6[8];
  v37 = type metadata accessor for Dropout(0);
  v36 = *(*(v37 - 8) + 40);
  v36(a1 + v8, a2 + v8, v37);
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v39(a1 + *(v35 + 36), a2 + *(v35 + 36), v3);
  v42(a1 + *(v35 + 40), a2 + *(v35 + 40), v40);
  v9 = a3[5];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v39(v10, v11, v41);
  v12 = v6[5];
  *(v12 + v10) = *(v12 + v11);
  *(v12 + v10 + 16) = *(v12 + v11 + 16);
  *(v12 + v10 + 32) = *(v12 + v11 + 32);
  *(v12 + v10 + 48) = *(v12 + v11 + 48);
  v39(v10 + v6[6], v11 + v6[6], v41);
  v42(v10 + v6[7], v11 + v6[7], v40);
  v36(v10 + v6[8], v11 + v6[8], v37);
  v39(v10 + *(v35 + 36), v11 + *(v35 + 36), v41);
  v42(*(v35 + 40) + v10, *(v35 + 40) + v11, v40);
  v13 = a3[6];
  v14 = a1 + v13;
  v15 = a2 + v13;
  v39(v14, v15, v41);
  v16 = v6[5];
  *(v16 + v14) = *(v16 + v15);
  *(v16 + v14 + 16) = *(v16 + v15 + 16);
  *(v16 + v14 + 32) = *(v16 + v15 + 32);
  *(v16 + v14 + 48) = *(v16 + v15 + 48);
  v39(v14 + v6[6], v15 + v6[6], v41);
  v42(v14 + v6[7], v15 + v6[7], v40);
  v36(v14 + v6[8], v15 + v6[8], v37);
  v39(v14 + *(v35 + 36), v15 + *(v35 + 36), v41);
  v42(*(v35 + 40) + v14, *(v35 + 40) + v15, v40);
  v17 = a3[7];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v39(v18, v19, v41);
  v20 = v6[5];
  *(v20 + v18) = *(v20 + v19);
  *(v20 + v18 + 16) = *(v20 + v19 + 16);
  *(v20 + v18 + 32) = *(v20 + v19 + 32);
  *(v20 + v18 + 48) = *(v20 + v19 + 48);
  v39(v18 + v6[6], v19 + v6[6], v41);
  v42(v18 + v6[7], v19 + v6[7], v40);
  v36(v18 + v6[8], v19 + v6[8], v37);
  v39(v18 + *(v35 + 36), v19 + *(v35 + 36), v41);
  v42(*(v35 + 40) + v18, *(v35 + 40) + v19, v40);
  v21 = a3[8];
  v22 = a1 + v21;
  v23 = a2 + v21;
  v39(v22, v23, v41);
  v24 = v6;
  v25 = v6[5];
  *(v25 + v22) = *(v25 + v23);
  *(v25 + v22 + 16) = *(v25 + v23 + 16);
  *(v25 + v22 + 32) = *(v25 + v23 + 32);
  *(v25 + v22 + 48) = *(v25 + v23 + 48);
  v39(v24[6] + v22, v23 + v24[6], v41);
  v42(v24[7] + v22, v23 + v24[7], v40);
  v36(v24[8] + v22, v24[8] + v23, v37);
  v26 = a3[9];
  v27 = a1 + v26;
  v28 = a2 + v26;
  v39(v27, v28, v41);
  v29 = v6[5];
  *(v29 + v27) = *(v29 + v28);
  *(v29 + v27 + 16) = *(v29 + v28 + 16);
  *(v29 + v27 + 32) = *(v29 + v28 + 32);
  *(v29 + v27 + 48) = *(v29 + v28 + 48);
  v39(v27 + v24[6], v28 + v24[6], v41);
  v42(v27 + v24[7], v28 + v24[7], v40);
  v36(v27 + v24[8], v28 + v24[8], v37);
  v39(v27 + *(v35 + 36), v28 + *(v35 + 36), v41);
  v42(*(v35 + 40) + v27, *(v35 + 40) + v28, v40);
  v30 = a3[10];
  v31 = a1 + v30;
  v32 = v30 + a2;
  v39(a1 + v30, v30 + a2, v41);
  v33 = v24[5];
  *(v33 + v31) = *(v33 + v32);
  *(v33 + v31 + 16) = *(v33 + v32 + 16);
  *(v33 + v31 + 32) = *(v33 + v32 + 32);
  *(v33 + v31 + 48) = *(v33 + v32 + 48);
  v39(v31 + v24[6], v32 + v24[6], v41);
  v42(v31 + v24[7], v32 + v24[7], v40);
  v36(v31 + v24[8], v32 + v24[8], v37);
  v39(v31 + *(v35 + 36), v32 + *(v35 + 36), v41);
  v42(*(v35 + 40) + v31, *(v35 + 40) + v32, v40);
  return a1;
}

uint64_t sub_1CB9BE(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  if (*(*(v5 - 8) + 84) != a2)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.ResidualLayer<MLHandActionClassifier.InvertedResidual>);
    v4 = *(a3 + 32) + a1;
  }

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_1CBA20(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.ResidualLayer<MLHandActionClassifier.InvertedResidual>);
    v6 = *(a4 + 32) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLHandActionClassifier.SingleStreamBlock(uint64_t a1)
{
  result = type metadata accessor for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>(319);
  if (v2 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    v5[0] = v3;
    v5[1] = v3;
    v5[2] = v3;
    v5[3] = v3;
    result = type metadata accessor for MLHandActionClassifier.InvertedResidual(319);
    if (v4 <= 0x3F)
    {
      v5[4] = *(result - 8) + 64;
      v5[5] = v3;
      v5[6] = v3;
      swift_initStructMetadata(a1, 256, 7, v5, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>(uint64_t a1)
{
  result = lazy cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>;
  if (!lazy cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>)
  {
    v2 = type metadata accessor for MLHandActionClassifier.InvertedResidual(255);
    v3 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.InvertedResidual and conformance MLHandActionClassifier.InvertedResidual, type metadata accessor for MLHandActionClassifier.InvertedResidual, &protocol conformance descriptor for MLHandActionClassifier.InvertedResidual);
    result = type metadata accessor for MLHandActionClassifier.DownsampledResidualLayer(a1, v2, v3, v4);
    if (!v5)
    {
      lazy cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual> = result;
    }
  }

  return result;
}

uint64_t type metadata completion function for MLHandActionClassifier.ResidualLayer(uint64_t a1)
{
  v1 = swift_checkMetadataState(319, *(a1 + 16));
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v5[0] = *(v1 - 8) + 64;
    v2 = 0;
    swift_initStructMetadata(a1, 0, 1, v5, a1 + 32);
  }

  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.ResidualLayer(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = v5;
  if (v5 > 7u || *(v4 + 64) > 0x18uLL || (v5 & 0x100000) != 0)
  {
    v7 = *a2;
    *v3 = *a2;
    v7;
    return (v7 + ((v6 + 16) & ~v6));
  }

  else
  {
    (*(v4 + 16))(a1);
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for MLHandActionClassifier.ResidualLayer(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  result = 0;
  if (!a2)
  {
    return result;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = a2 <= v7;
  v9 = a2 - v7;
  if (v8)
  {
    return __swift_getEnumTagSinglePayload(a1, v7, v5);
  }

  v10 = *(v6 + 64);
  if (v10 > 3)
  {
LABEL_4:
    v11 = a1[v10];
    goto LABEL_11;
  }

  v12 = ((~(-1 << (8 * v10)) + v9) >> (8 * v10)) + 1;
  if (v12 > 0xFFFF)
  {
    v11 = *&a1[v10];
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
LABEL_19:
        if (!v7)
        {
          return result;
        }

        return __swift_getEnumTagSinglePayload(a1, v7, v5);
      }

      goto LABEL_4;
    }

    v11 = *&a1[v10];
  }

LABEL_11:
  if (!v11)
  {
    goto LABEL_19;
  }

  v13 = (v11 - 1) << (8 * v10);
  v14 = 0;
  if (v10 >= 4)
  {
    v13 = 0;
  }

  if (v10)
  {
    v15 = 4;
    if (v10 < 4)
    {
      v15 = *(v6 + 64);
    }

    switch(v15)
    {
      case 1:
        v14 = *a1;
        break;
      case 2:
        v14 = *a1;
        break;
      case 3:
        v14 = *a1 | (a1[2] << 16);
        break;
      case 4:
        v14 = *a1;
        break;
    }
  }

  return v7 + (v13 | v14) + 1;
}

uint64_t storeEnumTagSinglePayload for MLHandActionClassifier.ResidualLayer(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  result = *(a4 + 16);
  v5 = *(result - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = 0;
  v9 = a3 <= v6;
  v10 = a3 - v6;
  if (!v9)
  {
    if (v7 > 3)
    {
      v15 = 1;
LABEL_9:
      v8 = v15;
      goto LABEL_10;
    }

    v11 = ((~(-1 << (8 * v7)) + v10) >> (8 * v7)) + 1;
    if (v11 > 0xFFFF)
    {
      v15 = 4;
      goto LABEL_9;
    }

    v8 = 0;
    if (v11 >= 2)
    {
      v8 = ((v11 | 0x200000000uLL) - 256) >> 32;
    }
  }

LABEL_10:
  if (v6 < a2)
  {
    v12 = a2 + ~v6;
    if (v7 >= 4)
    {
      v13 = 1;
      __bzero(a1, v7);
      *a1 = v12;
      result = v8;
      switch(v8)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_26;
        case 2u:
          goto LABEL_28;
        case 3u:
          goto LABEL_30;
        case 4u:
          goto LABEL_27;
      }
    }

    v13 = (v12 >> (8 * v7)) + 1;
    if (v7)
    {
      v14 = v12 & ~(-1 << (8 * v7));
      __bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v14;
          result = v8;
          switch(v8)
          {
            case 0u:
              return result;
            case 1u:
              goto LABEL_26;
            case 2u:
              goto LABEL_28;
            case 3u:
              goto LABEL_30;
            case 4u:
              goto LABEL_27;
          }
        }

        *a1 = v12;
        result = v8;
        switch(v8)
        {
          case 0u:
            return result;
          case 1u:
            goto LABEL_26;
          case 2u:
            goto LABEL_28;
          case 3u:
            goto LABEL_30;
          case 4u:
            goto LABEL_27;
        }
      }

      *a1 = v14;
      *(a1 + 2) = BYTE2(v14);
      result = v8;
      switch(v8)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_26;
        case 2u:
          goto LABEL_28;
        case 3u:
          goto LABEL_30;
        case 4u:
          goto LABEL_27;
      }
    }

    result = v8;
    switch(v8)
    {
      case 0u:
        return result;
      case 1u:
LABEL_26:
        *(a1 + v7) = v13;
        return result;
      case 2u:
LABEL_28:
        *(a1 + v7) = v13;
        return result;
      case 3u:
        goto LABEL_30;
      case 4u:
LABEL_27:
        *(a1 + v7) = v13;
        return result;
    }
  }

  switch(v8)
  {
    case 0u:
      break;
    case 1u:
      *(a1 + v7) = 0;
      break;
    case 2u:
      *(a1 + v7) = 0;
      break;
    case 3u:
LABEL_30:
      BUG();
    case 4u:
      *(a1 + v7) = 0;
      break;
  }

  if (a2)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, v6, result);
  }

  return result;
}

uint64_t type metadata completion function for MLHandActionClassifier.DownsampledResidualLayer(uint64_t a1)
{
  v1 = swift_checkMetadataState(319, *(a1 + 16));
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v9[0] = *(v1 - 8) + 64;
    v4 = type metadata accessor for Conv2D(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v9[1] = *(v4 - 8) + 64;
      v6 = type metadata accessor for BatchNorm(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        v9[2] = *(v6 - 8) + 64;
        v2 = 0;
        swift_initStructMetadata(a1, 0, 3, v9, a1 + 32);
      }
    }
  }

  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.DownsampledResidualLayer(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v27 = *(a3 + 16);
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  v25 = type metadata accessor for Conv2D(0);
  v5 = *(v25 - 8);
  v6 = *(v5 + 80);
  v26 = v5;
  v7 = *(v5 + 64);
  v8 = type metadata accessor for BatchNorm(0);
  v9 = v3;
  v10 = *(v8 - 8);
  v11 = *(v10 + 80);
  v12 = v11 | v6 | *(v3 + 80);
  v13 = (v11 | v6 | *(v3 + 80));
  if (v13 > 7 || (v14 = v6 + v4, v15 = ~v6, v16 = *(v10 + 80), v17 = v16 + v7, v18 = ~v16, *(v10 + 64) + (v18 & (v17 + (v15 & v14))) > 0x18) || (v12 & 0x100000) != 0)
  {
    v23 = *a2;
    *a1 = *a2;
    v23;
    return (v23 + ((v13 + 16) & ~v13));
  }

  else
  {
    v19 = v17;
    v20 = a1;
    v28 = *(v8 - 8);
    v30 = v19;
    v29 = v8;
    (*(v9 + 16))(a1, a2, v27);
    v21 = v15 & (a1 + v14);
    v22 = v15 & (a2 + v14);
    (*(v26 + 16))(v21, v22, v25);
    (*(v28 + 16))(v18 & (v30 + v21), v18 & (v30 + v22), v29);
  }

  return v20;
}

uint64_t destroy for MLHandActionClassifier.DownsampledResidualLayer(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  (*(v2 + 8))(a1);
  v3 = *(v2 + 64) + a1;
  v4 = type metadata accessor for Conv2D(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + v3) & ~*(v5 + 80);
  (*(v5 + 8))(v6, v4);
  v7 = *(v5 + 64) + v6;
  v8 = type metadata accessor for BatchNorm(0);
  return (*(*(v8 - 8) + 8))((*(*(v8 - 8) + 80) + v7) & ~*(*(v8 - 8) + 80), v8);
}

uint64_t initializeWithCopy for MLHandActionClassifier.DownsampledResidualLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 16))(a1);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for Conv2D(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v7 + v4;
  v9 = ~v7;
  v10 = v9 & (v8 + a1);
  v11 = v9 & (a2 + v8);
  (*(v6 + 16))(v10, v11, v5);
  v12 = *(v6 + 64);
  v13 = type metadata accessor for BatchNorm(0);
  v14 = *(v13 - 8);
  (*(v14 + 16))(~*(v14 + 80) & (*(v14 + 80) + v12 + v10), ~*(v14 + 80) & (v11 + *(v14 + 80) + v12), v13);
  return a1;
}

uint64_t assignWithCopy for MLHandActionClassifier.DownsampledResidualLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 24))(a1);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for Conv2D(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v7 + v4;
  v9 = ~v7;
  v10 = v9 & (v8 + a1);
  v11 = v9 & (a2 + v8);
  (*(v6 + 24))(v10, v11, v5);
  v12 = *(v6 + 64);
  v13 = type metadata accessor for BatchNorm(0);
  v14 = *(v13 - 8);
  (*(v14 + 24))(~*(v14 + 80) & (*(v14 + 80) + v12 + v10), ~*(v14 + 80) & (v11 + *(v14 + 80) + v12), v13);
  return a1;
}

uint64_t initializeWithTake for MLHandActionClassifier.DownsampledResidualLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 32))(a1);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for Conv2D(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v7 + v4;
  v9 = ~v7;
  v10 = v9 & (v8 + a1);
  v11 = v9 & (a2 + v8);
  (*(v6 + 32))(v10, v11, v5);
  v12 = *(v6 + 64);
  v13 = type metadata accessor for BatchNorm(0);
  v14 = *(v13 - 8);
  (*(v14 + 32))(~*(v14 + 80) & (*(v14 + 80) + v12 + v10), ~*(v14 + 80) & (v11 + *(v14 + 80) + v12), v13);
  return a1;
}

uint64_t assignWithTake for MLHandActionClassifier.DownsampledResidualLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 40))(a1);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for Conv2D(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v7 + v4;
  v9 = ~v7;
  v10 = v9 & (v8 + a1);
  v11 = v9 & (a2 + v8);
  (*(v6 + 40))(v10, v11, v5);
  v12 = *(v6 + 64);
  v13 = type metadata accessor for BatchNorm(0);
  v14 = *(v13 - 8);
  (*(v14 + 40))(~*(v14 + 80) & (*(v14 + 80) + v12 + v10), ~*(v14 + 80) & (v11 + *(v14 + 80) + v12), v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLHandActionClassifier.DownsampledResidualLayer(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v28 = *(a3 + 16);
  v4 = *(v28 - 8);
  v5 = *(v4 + 84);
  v30 = 0;
  v29 = type metadata accessor for Conv2D(0);
  v6 = *(v29 - 8);
  v7 = v5;
  v31 = *(v6 + 84);
  if (v31 > v5)
  {
    v7 = *(v6 + 84);
  }

  v8 = type metadata accessor for BatchNorm(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 > v7)
  {
    v7 = *(v9 + 84);
  }

  if (!a2)
  {
    return v30;
  }

  v11 = ~*(v6 + 80);
  v12 = *(v4 + 64) + *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  v15 = ~v14;
  v16 = a2 <= v7;
  v17 = a2 - v7;
  if (v16)
  {
    goto LABEL_24;
  }

  v18 = *(v9 + 64) + (v15 & (v14 + v13 + (v11 & v12)));
  if (v18 > 3)
  {
    goto LABEL_8;
  }

  v20 = ((~(-1 << (8 * v18)) + v17) >> (8 * v18)) + 1;
  if (v20 > 0xFFFF)
  {
    v19 = *&a1[v18];
    goto LABEL_15;
  }

  if (v20 > 0xFF)
  {
    v19 = *&a1[v18];
LABEL_15:
    if (v19)
    {
      v21 = (v19 - 1) << (8 * v18);
      v22 = 0;
      if (v18 >= 4)
      {
        v21 = 0;
      }

      if (v18)
      {
        v23 = 4;
        if (v18 < 4)
        {
          v23 = *(v9 + 64) + (v15 & (v14 + v13 + (v11 & v12)));
        }

        switch(v23)
        {
          case 1:
            v22 = *a1;
            break;
          case 2:
            v22 = *a1;
            break;
          case 3:
            v22 = *a1 | (a1[2] << 16);
            break;
          case 4:
            v22 = *a1;
            break;
        }
      }

      return v7 + (v21 | v22) + 1;
    }

    goto LABEL_23;
  }

  if (v20 >= 2)
  {
LABEL_8:
    v19 = a1[v18];
    goto LABEL_15;
  }

LABEL_23:
  if (!v7)
  {
    return v30;
  }

LABEL_24:
  if (v5 == v7)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v28);
  }

  v25 = v11 & &a1[v12];
  if (v31 == v7)
  {
    v10 = v31;
    v26 = v29;
  }

  else
  {
    v25 = v15 & (v14 + v13 + v25);
    v26 = v8;
  }

  return __swift_getEnumTagSinglePayload(v25, v10, v26);
}

uint64_t storeEnumTagSinglePayload for MLHandActionClassifier.DownsampledResidualLayer(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v26 = *(a4 + 16);
  v5 = *(v26 - 8);
  v6 = *(v5 + 84);
  v27 = type metadata accessor for Conv2D(0);
  v7 = *(v27 - 8);
  v8 = v6;
  v30 = *(v7 + 84);
  if (*(v7 + 84) > v6)
  {
    v8 = *(v7 + 84);
  }

  result = type metadata accessor for BatchNorm(0);
  v10 = *(result - 8);
  v11 = *(v10 + 84);
  if (v11 > v8)
  {
    v8 = *(v10 + 84);
  }

  v12 = ~*(v7 + 80);
  v13 = *(v5 + 64) + *(v7 + 80);
  v14 = *(v7 + 64);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64) + (~v15 & (v15 + v14 + (v12 & v13)));
  v17 = a3 <= v8;
  v18 = a3 - v8;
  if (!v17)
  {
    if (v16 <= 3)
    {
      v19 = ((~(-1 << (8 * v16)) + v18) >> (8 * v16)) + 1;
      if (v19 > 0xFFFF)
      {
        HIDWORD(v30) = 4;
      }

      else
      {
        v20 = 0;
        if (v19 >= 2)
        {
          v20 = ((v19 | 0x200000000uLL) - 256) >> 32;
        }

        HIDWORD(v30) = v20;
      }
    }

    else
    {
      HIDWORD(v30) = 1;
    }
  }

  if (v8 < a2)
  {
    v21 = a2 + ~v8;
    if (v16 >= 4)
    {
      v22 = 1;
      __bzero(a1, v16);
      *a1 = v21;
      result = HIDWORD(v30);
      switch(HIDWORD(v30))
      {
        case 0:
          return result;
        case 1:
          goto LABEL_34;
        case 2:
          goto LABEL_36;
        case 3:
          goto LABEL_38;
        case 4:
          goto LABEL_35;
      }
    }

    v22 = (v21 >> (8 * v16)) + 1;
    if (v16)
    {
      v23 = v21 & ~(-1 << (8 * v16));
      __bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v23;
          result = HIDWORD(v30);
          switch(HIDWORD(v30))
          {
            case 0:
              return result;
            case 1:
              goto LABEL_34;
            case 2:
              goto LABEL_36;
            case 3:
              goto LABEL_38;
            case 4:
              goto LABEL_35;
          }
        }

        *a1 = v21;
        result = HIDWORD(v30);
        switch(HIDWORD(v30))
        {
          case 0:
            return result;
          case 1:
            goto LABEL_34;
          case 2:
            goto LABEL_36;
          case 3:
            goto LABEL_38;
          case 4:
            goto LABEL_35;
        }
      }

      *a1 = v23;
      *(a1 + 2) = BYTE2(v23);
      result = HIDWORD(v30);
      switch(HIDWORD(v30))
      {
        case 0:
          return result;
        case 1:
          goto LABEL_34;
        case 2:
          goto LABEL_36;
        case 3:
          goto LABEL_38;
        case 4:
          goto LABEL_35;
      }
    }

    result = HIDWORD(v30);
    switch(HIDWORD(v30))
    {
      case 0:
        return result;
      case 1:
LABEL_34:
        *(a1 + v16) = v22;
        return result;
      case 2:
LABEL_36:
        *(a1 + v16) = v22;
        return result;
      case 3:
        goto LABEL_38;
      case 4:
LABEL_35:
        *(a1 + v16) = v22;
        return result;
    }
  }

  switch(HIDWORD(v30))
  {
    case 0:
      break;
    case 1:
      *(a1 + v16) = 0;
      break;
    case 2:
      *(a1 + v16) = 0;
      break;
    case 3:
LABEL_38:
      BUG();
    case 4:
      *(a1 + v16) = 0;
      break;
  }

  if (a2)
  {
    if (v6 == v8)
    {
      v24 = a1;
      v11 = v6;
      v25 = v26;
    }

    else
    {
      v24 = v12 & (a1 + v13);
      if (v30 == v8)
      {
        v11 = v30;
        v25 = v27;
      }

      else
      {
        v24 = ~v15 & (v15 + v14 + v24);
        v25 = result;
      }
    }

    return __swift_storeEnumTagSinglePayload(v24, a2, v11, v25);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.InvertedResidual(void *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v17 = *a2;
    *v3 = *a2;
    v3 = (v17 + ((v4 + 16) & ~v4));
    v17;
  }

  else
  {
    v6 = type metadata accessor for Conv2D(0);
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    v8 = a3[5];
    *(a1 + v8 + 48) = *(a2 + v8 + 48);
    v9 = *(a2 + v8);
    v10 = *(a2 + v8 + 16);
    *(a1 + v8 + 32) = *(a2 + v8 + 32);
    *(a1 + v8 + 16) = v10;
    *(a1 + v8) = v9;
    v7((a1 + a3[6]), (a2 + a3[6]), v6);
    v11 = a3[7];
    v12 = type metadata accessor for BatchNorm(0);
    (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
    v13 = a3[8];
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = type metadata accessor for Dropout(0);
    (*(*(v16 - 8) + 16))(v14, v15, v16);
  }

  return v3;
}

uint64_t destroy for MLHandActionClassifier.InvertedResidual(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for Conv2D(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v3(a1 + a2[6], v2);
  v4 = a1 + a2[7];
  v5 = type metadata accessor for BatchNorm(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = a1 + a2[8];
  v7 = type metadata accessor for Dropout(0);
  return (*(*(v7 - 8) + 8))(v6, v7);
}

uint64_t initializeWithCopy for MLHandActionClassifier.InvertedResidual(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for Conv2D(0);
  v5 = *(*(v4 - 8) + 16);
  v5(a1, a2, v4);
  v6 = a3[5];
  *(a1 + v6 + 48) = *(a2 + v6 + 48);
  v7 = *(a2 + v6);
  v8 = *(a2 + v6 + 16);
  *(a1 + v6 + 32) = *(a2 + v6 + 32);
  *(a1 + v6 + 16) = v8;
  *(a1 + v6) = v7;
  v5(a1 + a3[6], a2 + a3[6], v4);
  v9 = a3[7];
  v10 = type metadata accessor for BatchNorm(0);
  (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
  v11 = a3[8];
  v12 = a1 + v11;
  v13 = v11 + a2;
  v14 = type metadata accessor for Dropout(0);
  (*(*(v14 - 8) + 16))(v12, v13, v14);
  return a1;
}

uint64_t assignWithCopy for MLHandActionClassifier.InvertedResidual(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for Conv2D(0);
  v5 = *(*(v4 - 8) + 24);
  v5(a1, a2, v4);
  v6 = a3[5];
  *(a1 + v6) = *(a2 + v6);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  *(a1 + v6 + 16) = *(a2 + v6 + 16);
  *(a1 + v6 + 24) = *(a2 + v6 + 24);
  *(a1 + v6 + 32) = *(a2 + v6 + 32);
  *(a1 + v6 + 40) = *(a2 + v6 + 40);
  *(a1 + v6 + 48) = *(a2 + v6 + 48);
  v5(a1 + a3[6], a2 + a3[6], v4);
  v7 = a3[7];
  v8 = type metadata accessor for BatchNorm(0);
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  v9 = a3[8];
  v10 = a1 + v9;
  v11 = v9 + a2;
  v12 = type metadata accessor for Dropout(0);
  (*(*(v12 - 8) + 24))(v10, v11, v12);
  return a1;
}

uint64_t initializeWithTake for MLHandActionClassifier.InvertedResidual(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for Conv2D(0);
  v5 = *(*(v4 - 8) + 32);
  v5(a1, a2, v4);
  v6 = a3[5];
  *(a1 + v6 + 48) = *(a2 + v6 + 48);
  v7 = *(a2 + v6);
  v8 = *(a2 + v6 + 16);
  *(a1 + v6 + 32) = *(a2 + v6 + 32);
  *(a1 + v6 + 16) = v8;
  *(a1 + v6) = v7;
  v5(a1 + a3[6], a2 + a3[6], v4);
  v9 = a3[7];
  v10 = type metadata accessor for BatchNorm(0);
  (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
  v11 = a3[8];
  v12 = a1 + v11;
  v13 = v11 + a2;
  v14 = type metadata accessor for Dropout(0);
  (*(*(v14 - 8) + 32))(v12, v13, v14);
  return a1;
}

uint64_t assignWithTake for MLHandActionClassifier.InvertedResidual(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for Conv2D(0);
  v5 = *(*(v4 - 8) + 40);
  v5(a1, a2, v4);
  v6 = a3[5];
  *(a1 + v6) = *(a2 + v6);
  *(a1 + v6 + 16) = *(a2 + v6 + 16);
  *(a1 + v6 + 32) = *(a2 + v6 + 32);
  *(a1 + v6 + 48) = *(a2 + v6 + 48);
  v5(a1 + a3[6], a2 + a3[6], v4);
  v7 = a3[7];
  v8 = type metadata accessor for BatchNorm(0);
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = a3[8];
  v10 = a1 + v9;
  v11 = v9 + a2;
  v12 = type metadata accessor for Dropout(0);
  (*(*(v12 - 8) + 40))(v10, v11, v12);
  return a1;
}

uint64_t sub_1CCD45(uint64_t a1, unsigned int a2, int *a3)
{
  v4 = a1;
  v5 = type metadata accessor for Conv2D(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 254)
  {
    v5 = type metadata accessor for BatchNorm(0);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v8 = a3[7];
    }

    else
    {
      v5 = type metadata accessor for Dropout(0);
      v8 = a3[8];
    }

    v4 = v8 + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v6 = *(a1 + a3[5] + 48);
  result = 0;
  if (v6 >= 2u)
  {
    return ((v6 + 2147483646) & 0x7FFFFFFFu) + 1;
  }

  return result;
}

uint64_t sub_1CCDE5(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v6 = a1;
  v7 = type metadata accessor for Conv2D(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    if (a3 == 254)
    {
      result = a4[5];
      *(a1 + result + 48) = a2 + 1;
      return result;
    }

    v7 = type metadata accessor for BatchNorm(0);
    if (*(*(v7 - 8) + 84) == a3)
    {
      v9 = a4[7];
    }

    else
    {
      v7 = type metadata accessor for Dropout(0);
      v9 = a4[8];
    }

    v6 = v9 + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLHandActionClassifier.InvertedResidual(uint64_t a1)
{
  result = type metadata accessor for Conv2D(319);
  if (v2 <= 0x3F)
  {
    v5[0] = *(result - 8) + 64;
    v5[1] = "1";
    v5[2] = v5[0];
    result = type metadata accessor for BatchNorm(319);
    if (v3 <= 0x3F)
    {
      v5[3] = *(result - 8) + 64;
      result = type metadata accessor for Dropout(319);
      if (v4 <= 0x3F)
      {
        v5[4] = *(result - 8) + 64;
        swift_initStructMetadata(a1, 256, 5, v5, a1 + 16);
        return 0;
      }
    }
  }

  return result;
}

uint64_t MLHandActionClassifier.GraphCNN.callAsFunction(_:)(uint64_t a1)
{
  v11 = a1;
  v2 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v1;
  swift_beginAccess(v6, v10, 0, 0);
  outlined init with copy of MLTrainingSessionParameters(v6, &v9, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v7 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  Layer.callAsFunction(_:)(v11, v2, v7);
  return outlined destroy of MLActivityClassifier.ModelParameters(&v9, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
}

uint64_t MLHandActionClassifier.GraphCNNModel.forward(_:)(uint64_t a1, double a2)
{
  v4 = v2;
  v58 = type metadata accessor for TensorShape(0);
  v59 = *(v58 - 8);
  v5 = *(v59 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = alloca(v5);
  v9 = alloca(v5);
  v56 = &v50;
  v10 = type metadata accessor for Tensor(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v60 = &v50;
  v61 = v10;
  (*(v11 + 16))(v4, a1);
  v51 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v15 = *(v51 + 36);
  v50 = v3;
  v62 = *(v3 + v15);
  if (v62 == 1)
  {
    v16 = v60;
    Tensor.expandingShape(at:)(&outlined read-only object #0 of MLHandActionClassifier.GraphCNNModel.forward(_:));
    v17 = v61;
    (*(v11 + 8))(v4, v61);
    (*(v11 + 32))(v4, v16, v17);
  }

  v18 = v60;
  Tensor.transposed(permutation:)(&outlined read-only object #1 of MLHandActionClassifier.GraphCNNModel.forward(_:));
  v57 = *(v11 + 8);
  v19 = v61;
  v57(v4, v61);
  v55 = *(v11 + 32);
  v55(v4, v18, v19);
  Tensor.shape.getter(v4, v18, v20);
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v21 = swift_allocObject(v52, 64, 7);
  v21[2] = 4;
  v21[3] = 8;
  v21[4] = TensorShape.subscript.getter(0);
  v21[5] = TensorShape.subscript.getter(1);
  v21[6] = -1;
  v21[7] = 1;
  v54 = &v50;
  TensorShape.init(_:)(v21, a2);
  v22 = v60;
  Tensor.reshaped(to:)(&v50);
  v59 = *(v59 + 8);
  (v59)(&v50, v58);
  v23 = v61;
  v24 = v57;
  v57(v4, v61);
  v25 = v23;
  v26 = v55;
  v55(v4, v22, v25);
  v27 = v50;
  MLHandActionClassifier.GraphCNNModel.poseMotion(_:)(v4);
  v28 = v61;
  v24(v4, v61);
  v29 = v60;
  v26(v4, v60, v28);
  v30 = v27 + *(v51 + 32);
  v31 = type metadata accessor for MLHandActionClassifier.Torso(0);
  v32 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.Torso and conformance MLHandActionClassifier.Torso, type metadata accessor for MLHandActionClassifier.Torso, &protocol conformance descriptor for MLHandActionClassifier.Torso);
  Layer.callAsFunction(_:)(v4, v31, v32);
  v33 = v61;
  v57(v4, v61);
  v53 = v4;
  v55(v4, v29, v33);
  v34 = v52;
  v35 = swift_allocObject(v52, 48, 7);
  v35[2] = 2;
  v35[3] = 4;
  v36 = v54;
  Tensor.shape.getter(v34, 48, v37);
  v38 = TensorShape.subscript.getter(0);
  v39 = v58;
  v40 = v59;
  v41 = (v59)(v36, v58);
  v35[4] = v38;
  v35[5] = -1;
  v42 = v39;
  TensorShape.init(_:)(v35, v41);
  v43 = v60;
  v44 = v53;
  Tensor.reshaped(to:)(v36);
  v45 = v55;
  v40(v54, v42);
  v46 = v61;
  v57(v44, v61);
  v45(v44, v43, v46);
  if (!v62)
  {
    return (v59)(v56, v58);
  }

  v47 = v60;
  softmax(_:alongAxis:)(v44, 1);
  (v59)(v56, v58);
  v48 = v61;
  v57(v44, v61);
  return (v45)(v44, v47, v48);
}

uint64_t MLHandActionClassifier.GraphCNNModel.poseMotion(_:)()
{
  v71 = v0;
  v86 = type metadata accessor for TensorShape(0);
  v85 = *(v86 - 8);
  v2 = *(v85 + 8);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v68 = &v68;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v74 = &v68;
  v7 = alloca(v2);
  v8 = alloca(v2);
  v78 = &v68;
  v84 = type metadata accessor for Tensor(0);
  v9 = *(v84 - 8);
  v10 = v9[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v75 = &v68;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v73 = &v68;
  v15 = alloca(v10);
  v16 = alloca(v10);
  v17 = alloca(v10);
  v18 = alloca(v10);
  Tensor.transposed(permutation:)(&outlined read-only object #0 of MLHandActionClassifier.GraphCNNModel.poseMotion(_:));
  v72 = type metadata accessor for BatchNorm(0);
  v77 = v1;
  Layer.callAsFunction(_:)(&v68, v72, &protocol witness table for BatchNorm);
  v19 = v9[1];
  v20 = v84;
  v19(&v68, v84);
  v69 = v9;
  v21 = v9[4];
  v21(&v68, &v68, v20);
  Tensor.transposed(permutation:)(&outlined read-only object #1 of MLHandActionClassifier.GraphCNNModel.poseMotion(_:));
  v22 = v84;
  v19(&v68, v84);
  v21(&v68, &v68, v22);
  Tensor.squeezingShape(at:)(&outlined read-only object #2 of MLHandActionClassifier.GraphCNNModel.poseMotion(_:));
  v23 = v84;
  v83 = v19;
  v19(&v68, v84);
  v81 = &v68;
  v79 = v21;
  v21(&v68, &v68, v23);
  v24 = v78;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v25 = swift_allocObject(v76, 48, 7);
  *(v25 + 16) = 2;
  v70 = v25;
  *(v25 + 24) = 4;
  (Tensor.shape.getter)();
  v82 = TensorShape.subscript.getter(0);
  v26 = *(v85 + 1);
  v26(v24, v86);
  v27 = v74;
  v80 = &v68;
  (Tensor.shape.getter)();
  v28 = TensorShape.subscript.getter(1);
  v29 = v27;
  v30 = v26;
  v26(v29, v86);
  v32 = v28;
  v31 = v82 * v28;
  if (!is_mul_ok(v82, v32))
  {
    BUG();
  }

  v33 = v70;
  *(v70 + 32) = v31;
  v34 = v80;
  (Tensor.shape.getter)();
  v35 = TensorShape.subscript.getter(2);
  v85 = v30;
  v36 = (v30)(v24, v86);
  *(v33 + 40) = v35;
  TensorShape.init(_:)(v33, v36);
  v37 = v81;
  Tensor.reshaped(to:)(v24);
  v85(v24, v86);
  v38 = v79;
  v39 = v84;
  v83(v34, v84);
  v38(v34, v37, v39);
  v82 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v40 = v77 + *(v82 + 20);
  v41 = type metadata accessor for Dense(0);
  Layer.callAsFunction(_:)(v34, v41, &protocol witness table for Dense);
  v83(v34, v39);
  v38(v34, v37, v39);
  (v69[2])(v75, v34, v39);
  v42 = swift_allocObject(v76, 56, 7);
  v42[2] = 3;
  v42[3] = 6;
  v43 = v68;
  (Tensor.shape.getter)();
  v44 = TensorShape.subscript.getter(0);
  v45 = v86;
  v46 = v85;
  v85(v43, v86);
  v47 = *(v77 + *(v82 + 40));
  if (!v47)
  {
    BUG();
  }

  if (__OFSUB__(-v44, 1) && v47 == -1)
  {
    BUG();
  }

  v42[4] = v44 / v47;
  v42[5] = v47;
  v48 = v78;
  Tensor.shape.getter(v43, v45, v44 % v47);
  v49 = TensorShape.subscript.getter(1);
  v50 = v86;
  v51 = v46(v48, v86);
  v42[6] = v49;
  TensorShape.init(_:)(v42, v51);
  v52 = v73;
  v53 = v75;
  Tensor.reshaped(to:)(v48);
  v46(v48, v50);
  v54 = v53;
  v55 = v84;
  v56 = v83;
  v83(v54, v84);
  v57 = v80;
  v56(v80, v55);
  v79(v57, v52, v55);
  Tensor.shape.getter(v57, v52, v58);
  v59 = swift_allocObject(v76, 64, 7);
  v59[2] = 4;
  v59[3] = 8;
  v59[4] = TensorShape.subscript.getter(0);
  v59[5] = TensorShape.subscript.getter(1);
  v59[6] = TensorShape.subscript.getter(2) / 16;
  v59[7] = 16;
  v60 = v74;
  TensorShape.init(_:)(v59, v51);
  Tensor.reshaped(to:)(v60);
  v85(v60, v86);
  v61 = v84;
  v62 = v83;
  v83(v57, v84);
  v63 = v79;
  v79(v57, v81, v61);
  Tensor.transposed(permutation:)(&outlined read-only object #3 of MLHandActionClassifier.GraphCNNModel.poseMotion(_:));
  v62(v57, v61);
  v64 = v81;
  v63(v57, v81, v61);
  v65 = *(v82 + 24) + v77;
  Layer.callAsFunction(_:)(v57, v72, &protocol witness table for BatchNorm);
  v66 = v83;
  v83(v57, v61);
  v63(v57, v64, v61);
  relu(_:)(v57);
  v85(v78, v86);
  return v66(v57, v61);
}

uint64_t MLHandActionClassifier.Torso.forward(_:)(uint64_t a1)
{
  v20 = v2;
  v19 = a1;
  v17[1] = v1;
  v18 = type metadata accessor for Tensor(0);
  v3 = *(v18 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  v9 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v10 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.SingleStreamBlock and conformance MLHandActionClassifier.SingleStreamBlock, type metadata accessor for MLHandActionClassifier.SingleStreamBlock, &protocol conformance descriptor for MLHandActionClassifier.SingleStreamBlock);
  Layer.callAsFunction(_:)(v19, v9, v10);
  Layer.callAsFunction(_:)(v17, &type metadata for GlobalAveragePool2D, &protocol witness table for GlobalAveragePool2D);
  v11 = v3;
  v12 = *(v3 + 8);
  v13 = v18;
  v12(v17, v18);
  (*(v11 + 32))(v17, v17, v13);
  v14 = *(type metadata accessor for MLHandActionClassifier.Torso(0) + 24) + v20;
  v15 = type metadata accessor for Dense(0);
  Layer.callAsFunction(_:)(v17, v15, &protocol witness table for Dense);
  return (v12)(v17, v13);
}

uint64_t static MLHandActionClassifier.SingleStreamBlock.makeDownSampledInvertedResidual(inplanes:planes:stride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v31 = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v32 = v29;
  if (a1 + 0x4000000000000000 < 0)
  {
    BUG();
  }

  v38 = v9;
  v13 = type metadata accessor for ParameterInitializer(0);
  v37 = a2;
  v35 = v13;
  v34 = type metadata accessor for ComputeDevice(0);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v34);
  v14 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0, 1, &type metadata for Float, &protocol witness table for Float, v29);
  v33 = a3;
  v15 = v14;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, &demangling cache variable for type metadata for ComputeDevice?);
  v16 = v32;
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(2 * a1, 1, 1, 1, 1, 0, 0, 1, 1, 1, v15, 0);
  AveragePool2D.init(kernelSize:stride:padding:countIncludesPadding:)(1, 3, 1, 1, 0, 0, 1, 1);
  v17 = v38[5];
  *(v16 + v17 + 48) = v30;
  v18 = v29[0];
  v19 = v29[1];
  *(v16 + v17 + 32) = v29[2];
  *(v16 + v17 + 16) = v19;
  *(v16 + v17) = v18;
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v34);
  v20 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0, 1, &type metadata for Float, &protocol witness table for Float, v29);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, &demangling cache variable for type metadata for ComputeDevice?);
  v21 = v38[6];
  v22 = v33;
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(v37, 9, 1, v33, v36, 4, 0, 1, 1, 1, v20, 0);
  v23 = static ParameterInitializer.zeros.getter();
  v24 = static ParameterInitializer.ones.getter();
  v25 = v38;
  v26 = v38[7];
  BatchNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:)(v23, v24, 0.1, 0.0000099999997);
  v27 = v16 + v25[8];
  Dropout.init(probability:seed:)(0, 1, 0.2);
  return _s8CreateML22MLHandActionClassifierV24DownsampledResidualLayerV_11filterCount6strideAEy_xGx_S2i1y_Si1xttcfCAC08InvertedG0V_Tt4g5(v16, v37, v22, v36);
}

uint64_t MLHandActionClassifier.SingleStreamBlock.forward(_:)(uint64_t a1)
{
  v39 = a1;
  v35[0] = v1;
  v48 = type metadata accessor for Tensor(0);
  v50 = *(v48 - 8);
  v3 = *(v50 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = alloca(v3);
  v7 = alloca(v3);
  v46 = v35;
  v8 = alloca(v3);
  v9 = alloca(v3);
  v42 = v35;
  v10 = alloca(v3);
  v11 = alloca(v3);
  v41 = v35;
  v12 = alloca(v3);
  v13 = alloca(v3);
  v37 = v35;
  v14 = alloca(v3);
  v15 = alloca(v3);
  v36 = v35;
  v16 = type metadata accessor for MLHandActionClassifier.SingleStreamBlock(0);
  v35[1] = v2 + v16[10];
  v38 = v2 + v16[9];
  v40 = v2 + v16[8];
  v43 = v2 + v16[7];
  v44 = v2 + v16[6];
  v45 = v2 + v16[5];
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v47 = v17;
  v18 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual> and conformance MLHandActionClassifier.DownsampledResidualLayer<A>, &demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>, &protocol conformance descriptor for MLHandActionClassifier.DownsampledResidualLayer<A>);
  Layer.callAsFunction(_:)(v39, v17, v18);
  v19 = v46;
  v49 = v18;
  Layer.callAsFunction(_:)(v35, v17, v18);
  v50 = *(v50 + 8);
  v20 = v48;
  (v50)(v35, v48);
  v21 = v42;
  v22 = v19;
  v23 = v47;
  Layer.callAsFunction(_:)(v22, v47, v18);
  v24 = v50;
  (v50)(v46, v20);
  v25 = v41;
  Layer.callAsFunction(_:)(v21, v23, v49);
  v26 = v48;
  v24(v21, v48);
  v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.ResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v28 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLHandActionClassifier.ResidualLayer<MLHandActionClassifier.InvertedResidual> and conformance MLHandActionClassifier.ResidualLayer<A>, &demangling cache variable for type metadata for MLHandActionClassifier.ResidualLayer<MLHandActionClassifier.InvertedResidual>, &protocol conformance descriptor for MLHandActionClassifier.ResidualLayer<A>);
  v29 = v37;
  Layer.callAsFunction(_:)(v25, v27, v28);
  v24(v25, v26);
  v30 = v36;
  v31 = v47;
  Layer.callAsFunction(_:)(v29, v47, v49);
  v32 = v29;
  v33 = v48;
  v24(v32, v48);
  Layer.callAsFunction(_:)(v30, v31, v49);
  return (v24)(v30, v33);
}

uint64_t _s8CreateML22MLHandActionClassifierV24DownsampledResidualLayerV_11filterCount6strideAEy_xGx_S2i1y_Si1xttcfCAC08InvertedG0V_Tt4g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v17 = a3;
  v19 = a2;
  v5 = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of MLTrainingSessionParameters(a1, v5, type metadata accessor for MLHandActionClassifier.InvertedResidual);
  type metadata accessor for ParameterInitializer(0);
  v9 = type metadata accessor for ComputeDevice(0);
  __swift_storeEnumTagSinglePayload(&v17, 1, 1, v9);
  v10 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0, 1, &type metadata for Float, &protocol witness table for Float, &v17);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v17, &demangling cache variable for type metadata for ComputeDevice?);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.DownsampledResidualLayer<MLHandActionClassifier.InvertedResidual>);
  v12 = v5 + *(v11 + 36);
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(v19, 1, 1, v17, v18, 0, 0, 1, 1, 1, v10, 0);
  v13 = static ParameterInitializer.zeros.getter();
  v14 = static ParameterInitializer.ones.getter();
  v15 = *(v11 + 40);
  BatchNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:)(v13, v14, 0.1, 0.0000099999997);
  return outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLHandActionClassifier.InvertedResidual);
}

uint64_t MLHandActionClassifier.InvertedResidual.forward(_:)(uint64_t a1)
{
  v27 = v1;
  v29 = type metadata accessor for Tensor(0);
  v3 = *(v29 - 8);
  v4 = v3[8];
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  v28 = type metadata accessor for Conv2D(0);
  Layer.callAsFunction(_:)(a1, v28, &protocol witness table for Conv2D);
  v32 = type metadata accessor for MLHandActionClassifier.InvertedResidual(0);
  v9 = v32[5];
  v31 = v2;
  v10 = *(v2 + v9 + 48);
  v25[0] = *(v2 + v9);
  v25[1] = *(v2 + v9 + 16);
  v25[2] = *(v2 + v9 + 32);
  v26 = v10;
  Layer.callAsFunction(_:)(v25, &type metadata for AveragePool2D, &protocol witness table for AveragePool2D);
  v33 = v3[1];
  v11 = v29;
  v33(v25, v29);
  v30 = v3[4];
  v30(v25, v25, v11);
  v12 = v32;
  v13 = v31 + v32[6];
  Layer.callAsFunction(_:)(v25, v28, &protocol witness table for Conv2D);
  v14 = v11;
  v15 = v11;
  v16 = v33;
  v33(v25, v15);
  v30(v25, v25, v14);
  v17 = v12[7];
  v18 = v31;
  v19 = type metadata accessor for BatchNorm(0);
  Layer.callAsFunction(_:)(v25, v19, &protocol witness table for BatchNorm);
  v20 = v29;
  v16(v25, v29);
  v21 = v20;
  v30(v25, v25, v20);
  v22 = v18 + v32[8];
  v23 = type metadata accessor for Dropout(0);
  Layer.callAsFunction(_:)(v25, v23, &protocol witness table for Dropout);
  return (v33)(v25, v21);
}

uint64_t MLHandActionClassifier.ResidualLayer.forward(_:)(uint64_t a1, uint64_t a2)
{
  v8 = v2;
  v3 = type metadata accessor for Tensor(0);
  v9 = *(v3 - 8);
  v4 = *(v9 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  Layer.callAsFunction(_:)(a1, *(a2 + 16), *(a2 + 24));
  static Tensor.+= infix(_:_:)(&v8, a1);
  relu(_:)(&v8);
  return (*(v9 + 8))(&v8, v3);
}

uint64_t MLHandActionClassifier.DownsampledResidualLayer.forward(_:)(uint64_t a1, uint64_t a2)
{
  v20 = v2;
  v21 = type metadata accessor for Tensor(0);
  v22 = *(v21 - 8);
  v4 = *(v22 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  v24 = &v20;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v23 = &v20;
  Layer.callAsFunction(_:)(a1, *(a2 + 16), *(a2 + 24));
  v11 = v3 + *(a2 + 40);
  v12 = *(a2 + 36) + v3;
  v13 = type metadata accessor for Conv2D(0);
  Layer.callAsFunction(_:)(a1, v13, &protocol witness table for Conv2D);
  v14 = type metadata accessor for BatchNorm(0);
  v15 = v24;
  Layer.callAsFunction(_:)(&v20, v14, &protocol witness table for BatchNorm);
  v16 = *(v22 + 8);
  v17 = v21;
  v16(&v20, v21);
  v18 = v23;
  static Tensor.+= infix(_:_:)(v23, v15);
  v16(v15, v17);
  relu(_:)(v18);
  return (v16)(v18, v17);
}

void *specialized _ModelCheckpoint<>.trainableSublayers(model:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t a4)
{
  v6 = a2(0);
  v7 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a3, a2, a4);
  v28 = Layer.sublayers(recursively:)(1, v6, v7);
  v29 = dispatch thunk of _AnySequenceBox._makeIterator()();
  v30 = _swiftEmptyArrayStorage;
  while (1)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!v24)
    {
      break;
    }

    outlined init with take of TabularRegressionTask(&v23, v20);
    outlined init with copy of TabularRegressionTask(v20, v19);
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _LayerDictionaryRepresentable);
    if (swift_dynamicCast(v18, v19, v8, v9, 0))
    {
      outlined init with copy of TabularRegressionTask(v20, &v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
    }

    else
    {
      v10 = v22;
      v11 = v21;
      __swift_project_boxed_opaque_existential_0Tm(v20, v21);
      v12 = Layer.parameters(recursively:)(0, v11, v10);
      v13 = *(v12 + 16);
      v12;
      if (v13)
      {
        outlined init with copy of TabularRegressionTask(v20, &v25);
      }

      else
      {
        v26 = 0;
        v25 = 0;
        v27 = 0;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    if (*(&v26 + 1))
    {
      outlined init with take of TabularRegressionTask(&v25, v17);
      outlined init with take of TabularRegressionTask(v17, &v25);
      if (!swift_isUniquelyReferenced_nonNull_native(v30))
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
      }

      v14 = v30[2];
      if (v30[3] >> 1 <= v14)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30[3] >= 2uLL, v14 + 1, 1, v30);
      }

      v15 = v30;
      v30[2] = v14 + 1;
      outlined init with take of TabularRegressionTask(&v25, &v15[5 * v14 + 4]);
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v25, &demangling cache variable for type metadata for Layer?);
    }
  }

  return v30;
}

uint64_t specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(uint64_t, uint64_t (*)(void)), void *a9, uint64_t *a10, uint64_t (*a11)(uint64_t), uint64_t a12, void (*a13)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a14)(uint64_t, uint64_t))
{
  v135 = a6;
  v136 = v14;
  v131 = a5;
  v134._countAndFlagsBits = a3;
  v116 = a2;
  v123 = a1;
  v117 = type metadata accessor for LayerState(0);
  v110 = *(v117 - 8);
  v17 = *(v110 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v112 = &v108;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v111 = &v108;
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v120 = &v108;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v137 = &v108;
  v127 = type metadata accessor for Tensor(0);
  v119 = *(v127 - 8);
  v27 = *(v119 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v109 = &v108;
  v30 = alloca(v27);
  v31 = alloca(v27);
  v118 = &v108;
  v32 = alloca(v27);
  v33 = alloca(v27);
  v125 = &v108;
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v124 = &v108;
  v115 = type metadata accessor for Parameter(0);
  v138 = *(v115 - 8);
  v37 = *(v138 + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v108 = &v108;
  v40 = alloca(v37);
  v41 = alloca(v37);
  v128 = &v108;
  v132 = type metadata accessor for BatchNorm(0);
  v42 = *(v132 - 8);
  v43 = *(v42 + 64);
  v44 = alloca(v43);
  v45 = alloca(v43);
  v135 = v135();
  v126 = v15;
  v46 = a4;
  v47 = a7();
  v48 = v136;
  static BatchNorm.loadLayer(from:layerName:)(v131, v134._countAndFlagsBits, v46);
  v136 = v48;
  if (v48)
  {
    v135;
    return v47;
  }

  v130 = v47;
  v129 = v46;
  v139 = &v108;
  v133 = v42;
  v50 = v128;
  BatchNorm.$offset.getter();
  v51 = Parameter.id.getter();
  v52 = *(v138 + 8);
  v52(v50, v115);
  v53 = v51;
  v54 = v135;
  v55 = a8(v53, v135);
  if (!v55)
  {
    v130;
    v54;
    v122._countAndFlagsBits = 0;
    v122._object = 0xE000000000000000;
    _StringGuts.grow(_:)(47);
    v122._object;
    v122._countAndFlagsBits = 0xD000000000000019;
    v69._countAndFlagsBits = v134._countAndFlagsBits;
    v69._object = v129;
    String.append(_:)(v69);
    v69._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v69);
    v134 = v122;
    v69._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v69._object, 0, 0);
    *v70 = v134;
    *(v70 + 16) = 0;
    *(v70 + 32) = 0;
    *(v70 + 48) = 2;
    swift_willThrow();
    goto LABEL_12;
  }

  v113 = v52;
  v56 = v55;
  v138 = v55;
  BatchNorm.offset.getter();
  v57 = *a9 + v126;
  swift_beginAccess(v57, &v122, 33, 0);
  v58 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a10, a11, a12);
  v59 = v124;
  v121 = v58;
  v126 = v57;
  Layer.updateValue<A>(_:for:)(v125, v56, v58, &protocol witness table for Parameter);
  v60 = *(v119 + 8);
  v60(v125, v127);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for Tensor?);
  swift_endAccess(&v122);
  v61 = v118;
  BatchNorm.offset.getter();
  v62 = v137;
  Tensor.shape.getter();
  v128 = v60;
  v60(v61, v127);
  v118 = type metadata accessor for TensorShape(0);
  __swift_storeEnumTagSinglePayload(v62, 0, 1, v118);
  v119 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v63 = swift_allocObject(v119, 72, 7);
  v63[2] = 1;
  v63[3] = 2;
  v63[7] = &type metadata for String;
  v114 = lazy protocol witness table accessor for type String and conformance String();
  v63[8] = v114;
  v63[4] = v134._countAndFlagsBits;
  v64 = v129;
  v63[5] = v129;
  v64;
  v65 = String.init(format:_:)(0x657366666F2E4025, 0xE900000000000074, v63);
  v67 = v66;
  v68 = v136;
  a13(v138, v62, v131, v65, v66);
  if (v68)
  {

    v130;
    v135;
    v67;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v137, &demangling cache variable for type metadata for TensorShape?);
LABEL_12:
    v88 = v139;
    v89 = v132;
    return (*(v133 + 8))(v88, v89);
  }

  v136 = 0;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v137, &demangling cache variable for type metadata for TensorShape?);
  v67;
  v71 = v108;
  BatchNorm.$scale.getter();
  v72 = Parameter.id.getter();
  v113(v71, v115);
  v73 = v135;
  v74 = a8(v72, v135);
  v73;
  if (!v74)
  {
    v130;
    v122._countAndFlagsBits = 0;
    v122._object = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v122._object;
    v122._countAndFlagsBits = 0xD000000000000019;
    v90._countAndFlagsBits = v134._countAndFlagsBits;
    v90._object = v129;
    String.append(_:)(v90);
    v90._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v90);
    v134 = v122;
    v90._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v90._object, 0, 0);
    *v91 = v134;
    *(v91 + 16) = 0;
    *(v91 + 32) = 0;
    *(v91 + 48) = 2;
    swift_willThrow();
LABEL_11:

    goto LABEL_12;
  }

  v75 = v125;
  BatchNorm.scale.getter();
  swift_beginAccess(v126, &v122, 33, 0);
  v76 = v74;
  v137 = v74;
  v77 = v124;
  Layer.updateValue<A>(_:for:)(v75, v76, v121, &protocol witness table for Parameter);
  v78 = v75;
  v79 = v127;
  (v128)(v78, v127);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v77, &demangling cache variable for type metadata for Tensor?);
  swift_endAccess(&v122);
  v80 = v109;
  BatchNorm.scale.getter();
  v81 = v120;
  Tensor.shape.getter();
  (v128)(v80, v79);
  __swift_storeEnumTagSinglePayload(v81, 0, 1, v118);
  v82 = swift_allocObject(v119, 72, 7);
  v82[2] = 1;
  v82[3] = 2;
  v82[7] = &type metadata for String;
  v82[8] = v114;
  v82[4] = v134._countAndFlagsBits;
  LOBYTE(v78) = v129;
  v82[5] = v129;
  v78;
  v83 = String.init(format:_:)(0x656C6163732E4025, 0xE800000000000000, v82);
  v85 = v84;
  v86 = v136;
  a13(v137, v81, v131, v83, v84);
  v87 = v132;
  if (v86)
  {

    v130;
    v85;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v120, &demangling cache variable for type metadata for TensorShape?);
    v88 = v139;
    v89 = v87;
    return (*(v133 + 8))(v88, v89);
  }

  v136 = 0;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v120, &demangling cache variable for type metadata for TensorShape?);
  v85;
  v92 = v111;
  BatchNorm.$runningMean.getter();
  v93 = LayerState.id.getter();
  v94 = *(v110 + 8);
  (v94)(v92, v117);
  v95 = v93;
  v96 = v130;
  v131 = a14(v95, v130);
  if (!v131)
  {
    v96;
    v122._countAndFlagsBits = 0;
    v122._object = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v104._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v104);
    v104._countAndFlagsBits = v134._countAndFlagsBits;
    v104._object = v129;
    String.append(_:)(v104);
    v104._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v104);
    v134 = v122;
    v104._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v104._object, 0, 0);
    *v105 = v134;
    *(v105 + 16) = 0;
    *(v105 + 32) = 0;
    *(v105 + 48) = 2;
    swift_willThrow();

    goto LABEL_11;
  }

  v97 = v125;
  v135 = v94;
  BatchNorm.runningMean.getter();
  swift_beginAccess(v126, &v122, 33, 0);
  v98 = v124;
  Layer.updateValue<A>(_:for:)(v97, v131, v121, &protocol witness table for LayerState);
  (v128)(v97, v127);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v98, &demangling cache variable for type metadata for Tensor?);
  swift_endAccess(&v122);
  v99 = v112;
  BatchNorm.$runningVariance.getter();
  v100 = LayerState.id.getter();
  (v135)(v99, v117);
  v101 = v130;
  v102 = a14(v100, v130);
  v101;
  if (!v102)
  {
    v122._countAndFlagsBits = 0;
    v122._object = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v106._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v106);
    v106._countAndFlagsBits = v134._countAndFlagsBits;
    v106._object = v129;
    String.append(_:)(v106);
    v106._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v106);
    v134 = v122;
    v106._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v106._object, 0, 0);
    *v107 = v134;
    *(v107 + 16) = 0;
    *(v107 + 32) = 0;
    *(v107 + 48) = 2;
    swift_willThrow();

    goto LABEL_11;
  }

  BatchNorm.runningVariance.getter();
  swift_beginAccess(v126, &v122, 33, 0);
  v103 = v124;
  Layer.updateValue<A>(_:for:)(v97, v102, v121, &protocol witness table for LayerState);
  (v128)(v97, v127);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v103, &demangling cache variable for type metadata for Tensor?);
  swift_endAccess(&v122);

  return (*(v133 + 8))(v139, v132);
}

uint64_t specialized _ModelCheckpoint<>.restoreLayer<A>(_:optimizer:layerName:checkpointDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v106 = v7;
  v95 = a5;
  *&v100 = a4;
  v101._countAndFlagsBits = a3;
  v93 = a2;
  v90 = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Parameter?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v84 = &v82;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v85 = &v82;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v82 = &v82;
  v101._object = type metadata accessor for Tensor(0);
  v92 = *(v101._object - 1);
  v17 = *(v92 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v102 = &v82;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v97 = &v82;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v98 = &v82;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v83 = &v82;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v94 = &v82;
  v91 = type metadata accessor for Parameter(0);
  v107 = *(v91 - 8);
  v29 = *(v107 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v103 = &v82;
  v32 = type metadata accessor for Conv2D(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v96 = v8;
  v37 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
  v38 = v106;
  static Conv2D.loadLayer(from:layerName:)(v95, v101._countAndFlagsBits, v100, a6, a7);
  v106 = v38;
  if (v38)
  {
    return v37;
  }

  v108 = &v82;
  v105 = v32;
  v104 = v33;
  v40 = v103;
  v41 = v37;
  Conv2D.$weight.getter();
  v42 = Parameter.id.getter();
  v43 = *(v107 + 8);
  v43(v40, v91);
  v44 = specialized Dictionary.subscript.getter(v42, v41);
  if (v44)
  {
    v86 = v43;
    v99 = v41;
    v45 = v98;
    v46 = v44;
    Conv2D.weight.getter();
    v47 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v96;
    swift_beginAccess(OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v96, &v89, 33, 0);
    v48 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v49 = v94;
    v87 = v48;
    v96 = v47;
    Layer.updateValue<A>(_:for:)(v45, v46, v48, &protocol witness table for Parameter);
    v103 = *(v92 + 8);
    v50 = v45;
    v107 = v46;
    object = v101._object;
    (v103)(v50, v101._object);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v49, &demangling cache variable for type metadata for Tensor?);
    swift_endAccess(&v89);
    v52 = v97;
    Conv2D.weight.getter();
    v53 = v82;
    Tensor.shape.getter();
    (v103)(v52, object);
    v97 = type metadata accessor for TensorShape(0);
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v97);
    v98 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v54 = swift_allocObject(v98, 72, 7);
    v54[2] = 1;
    v54[3] = 2;
    v54[7] = &type metadata for String;
    v55 = lazy protocol witness table accessor for type String and conformance String();
    v54[8] = v55;
    v54[4] = v101._countAndFlagsBits;
    LOBYTE(v50) = v100;
    v54[5] = v100;
    v50;
    v56 = String.init(format:_:)(0x68676965772E4025, 0xE900000000000074, v54);
    v58 = v57;
    v59 = v106;
    specialized Adam.updateOptimizerState(for:shape:using:name:)(v107, v53, v95, v56, v57);
    if (v59)
    {
      v60 = v104;
      v99;

      v58;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v53, &demangling cache variable for type metadata for TensorShape?);
      return (*(v60 + 8))(v108, v105);
    }

    v88 = v55;
    v63 = v96;
    v106 = 0;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v53, &demangling cache variable for type metadata for TensorShape?);
    v58;
    v64 = v83;
    v65 = v108;
    Conv2D.bias.getter();
    v66 = v101._object;
    if (__swift_getEnumTagSinglePayload(v64, 1, v101._object) == 1)
    {
      (*(v104 + 8))(v65, v105);
      v99;

      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v64, &demangling cache variable for type metadata for Tensor?);
    }

    (*(v92 + 32))(v102, v64, v66);
    v67 = v84;
    Conv2D.$bias.getter();
    v68 = v91;
    if (__swift_getEnumTagSinglePayload(v67, 1, v91) == 1)
    {
      v99;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, &demangling cache variable for type metadata for Parameter?);
      v69 = v100;
    }

    else
    {
      v70 = Parameter.id.getter();
      v86(v67, v68);
      v71 = v99;
      v72 = specialized Dictionary.subscript.getter(v70, v99);
      v71;
      v69 = v100;
      if (v72)
      {
        swift_beginAccess(v63, &v89, 33, 0);
        v73 = v94;
        Layer.updateValue<A>(_:for:)(v102, v72, v87, &protocol witness table for Parameter);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v73, &demangling cache variable for type metadata for Tensor?);
        swift_endAccess(&v89);
        v74 = v85;
        Tensor.shape.getter();
        __swift_storeEnumTagSinglePayload(v74, 0, 1, v97);
        v75 = swift_allocObject(v98, 72, 7);
        v75[2] = 1;
        v75[3] = 2;
        v75[7] = &type metadata for String;
        v75[8] = v88;
        v75[4] = v101._countAndFlagsBits;
        v76 = v100;
        v75[5] = v100;
        v76;
        v77 = String.init(format:_:)(0x736169622E4025, 0xE700000000000000, v75);
        v79 = v78;
        specialized Adam.updateOptimizerState(for:shape:using:name:)(v72, v74, v95, v77, v78);

        v79;

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74, &demangling cache variable for type metadata for TensorShape?);
LABEL_14:
        (v103)(v102, v101._object);
        return (*(v104 + 8))(v108, v105);
      }
    }

    *&v89 = 0;
    *(&v89 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    *(&v89 + 1);
    *&v89 = 0xD000000000000019;
    v80._countAndFlagsBits = v101._countAndFlagsBits;
    v80._object = v69;
    String.append(_:)(v80);
    v80._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v80);
    v100 = v89;
    v80._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v80._object, 0, 0);
    *v81 = v100;
    *(v81 + 16) = 0;
    *(v81 + 32) = 0;
    *(v81 + 48) = 2;
    swift_willThrow();

    goto LABEL_14;
  }

  v41;
  *&v89 = 0;
  *(&v89 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  *(&v89 + 1);
  *&v89 = 0xD000000000000019;
  v61._countAndFlagsBits = v101._countAndFlagsBits;
  v61._object = v100;
  String.append(_:)(v61);
  v61._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v61);
  v100 = v89;
  v61._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v61._object, 0, 0);
  *v62 = v100;
  *(v62 + 16) = 0;
  *(v62 + 32) = 0;
  *(v62 + 48) = 2;
  swift_willThrow();
  return (*(v104 + 8))(v108, v105);
}

{
  v107 = v7;
  v96 = a5;
  *&v101 = a4;
  v102._countAndFlagsBits = a3;
  v94 = a2;
  v91 = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Parameter?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v85 = &v83;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v86 = &v83;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v83 = &v83;
  v102._object = type metadata accessor for Tensor(0);
  v93 = *(v102._object - 1);
  v17 = *(v93 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v103 = &v83;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v98 = &v83;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v99 = &v83;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v84 = &v83;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v95 = &v83;
  v92 = type metadata accessor for Parameter(0);
  v108 = *(v92 - 8);
  v29 = *(v108 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v104 = &v83;
  v32 = type metadata accessor for Conv2D(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v97 = v8;
  v37 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
  v38 = v96;
  v39 = v107;
  static Conv2D.loadLayer(from:layerName:)(v96, v102._countAndFlagsBits, v101, a6, a7);
  v107 = v39;
  if (v39)
  {
    return v37;
  }

  v109 = &v83;
  v106 = v32;
  v105 = v33;
  v41 = v104;
  v42 = v37;
  Conv2D.$weight.getter();
  v43 = Parameter.id.getter(v38);
  v44 = *(v108 + 8);
  v44(v41, v92);
  v45 = specialized Dictionary.subscript.getter(v43, v42);
  if (v45)
  {
    v87 = v44;
    v100 = v42;
    v46 = v99;
    v47 = v45;
    Conv2D.weight.getter();
    v48 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v97;
    swift_beginAccess(OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v97, &v90, 33, 0);
    v49 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
    v50 = v95;
    v88 = v49;
    v97 = v48;
    Layer.updateValue<A>(_:for:)(v46, v47, v49, &protocol witness table for Parameter);
    v104 = *(v93 + 8);
    v51 = v46;
    v108 = v47;
    object = v102._object;
    (v104)(v51, v102._object);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for Tensor?);
    swift_endAccess(&v90);
    v53 = v98;
    Conv2D.weight.getter();
    v54 = v83;
    Tensor.shape.getter();
    (v104)(v53, object);
    v98 = type metadata accessor for TensorShape(0);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v98);
    v99 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v55 = swift_allocObject(v99, 72, 7);
    v55[2] = 1;
    v55[3] = 2;
    v55[7] = &type metadata for String;
    v56 = lazy protocol witness table accessor for type String and conformance String();
    v55[8] = v56;
    v55[4] = v102._countAndFlagsBits;
    LOBYTE(v51) = v101;
    v55[5] = v101;
    v51;
    v57 = String.init(format:_:)(0x68676965772E4025, 0xE900000000000074, v55);
    v59 = v58;
    v60 = v107;
    specialized SGD.updateOptimizerState(for:shape:using:name:)(v108, v54, v96, v57, v58, a6, a7);
    if (v60)
    {
      v61 = v105;
      v100;

      v59;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
      return (*(v61 + 8))(v109, v106);
    }

    v89 = v56;
    v64 = v97;
    v107 = 0;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
    v59;
    v65 = v84;
    v66 = v109;
    Conv2D.bias.getter();
    v67 = v102._object;
    if (__swift_getEnumTagSinglePayload(v65, 1, v102._object) == 1)
    {
      (*(v105 + 8))(v66, v106);
      v100;

      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, &demangling cache variable for type metadata for Tensor?);
    }

    (*(v93 + 32))(v103, v65, v67);
    v68 = v85;
    Conv2D.$bias.getter();
    v69 = v92;
    if (__swift_getEnumTagSinglePayload(v68, 1, v92) == 1)
    {
      v100;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v68, &demangling cache variable for type metadata for Parameter?);
      v70 = v101;
    }

    else
    {
      v71 = Parameter.id.getter(v68);
      v87(v68, v69);
      v72 = v100;
      v73 = specialized Dictionary.subscript.getter(v71, v100);
      v72;
      v70 = v101;
      if (v73)
      {
        swift_beginAccess(v64, &v90, 33, 0);
        v74 = v95;
        Layer.updateValue<A>(_:for:)(v103, v73, v88, &protocol witness table for Parameter);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74, &demangling cache variable for type metadata for Tensor?);
        swift_endAccess(&v90);
        v75 = v86;
        Tensor.shape.getter();
        __swift_storeEnumTagSinglePayload(v75, 0, 1, v98);
        v76 = swift_allocObject(v99, 72, 7);
        v76[2] = 1;
        v76[3] = 2;
        v76[7] = &type metadata for String;
        v76[8] = v89;
        v76[4] = v102._countAndFlagsBits;
        v77 = v101;
        v76[5] = v101;
        v77;
        v78 = String.init(format:_:)(0x736169622E4025, 0xE700000000000000, v76);
        v80 = v79;
        specialized SGD.updateOptimizerState(for:shape:using:name:)(v73, v75, v96, v78, v79, a6, a7);

        v80;

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v75, &demangling cache variable for type metadata for TensorShape?);
LABEL_14:
        (v104)(v103, v102._object);
        return (*(v105 + 8))(v109, v106);
      }
    }

    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    *(&v90 + 1);
    *&v90 = 0xD000000000000019;
    v81._countAndFlagsBits = v102._countAndFlagsBits;
    v81._object = v70;
    String.append(_:)(v81);
    v81._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v81);
    v101 = v90;
    v81._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v81._object, 0, 0);
    *v82 = v101;
    *(v82 + 16) = 0;
    *(v82 + 32) = 0;
    *(v82 + 48) = 2;
    swift_willThrow(&type metadata for MLCreateError, v81._object);

    goto LABEL_14;
  }

  v42;
  *&v90 = 0;
  *(&v90 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  *(&v90 + 1);
  *&v90 = 0xD000000000000019;
  v62._countAndFlagsBits = v102._countAndFlagsBits;
  v62._object = v101;
  String.append(_:)(v62);
  v62._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v62);
  v101 = v90;
  v62._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v62._object, 0, 0);
  *v63 = v101;
  *(v63 + 16) = 0;
  *(v63 + 32) = 0;
  *(v63 + 48) = 2;
  swift_willThrow(&type metadata for MLCreateError, v62._object);
  return (*(v105 + 8))(v109, v106);
}

{
  v106 = v7;
  v95 = a5;
  *&v100 = a4;
  v101._countAndFlagsBits = a3;
  v93 = a2;
  v90 = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Parameter?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v84 = &v82;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v85 = &v82;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v82 = &v82;
  v101._object = type metadata accessor for Tensor(0);
  v92 = *(v101._object - 1);
  v17 = *(v92 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v102 = &v82;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v97 = &v82;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v98 = &v82;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v83 = &v82;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v94 = &v82;
  v91 = type metadata accessor for Parameter(0);
  v107 = *(v91 - 8);
  v29 = *(v107 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v103 = &v82;
  v32 = type metadata accessor for Dense(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v96 = v8;
  v37 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
  v38 = v106;
  static Dense.loadLayer(from:layerName:)(v95, v101._countAndFlagsBits, v100, a6, a7);
  v106 = v38;
  if (v38)
  {
    return v37;
  }

  v108 = &v82;
  v105 = v32;
  v104 = v33;
  v40 = v103;
  v41 = v37;
  Dense.$weight.getter();
  v42 = Parameter.id.getter();
  v43 = *(v107 + 8);
  v43(v40, v91);
  v44 = specialized Dictionary.subscript.getter(v42, v41);
  if (v44)
  {
    v86 = v43;
    v99 = v41;
    v45 = v98;
    v46 = v44;
    Dense.weight.getter();
    v47 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v96;
    swift_beginAccess(OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v96, &v89, 33, 0);
    v48 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v49 = v94;
    v87 = v48;
    v96 = v47;
    Layer.updateValue<A>(_:for:)(v45, v46, v48, &protocol witness table for Parameter);
    v103 = *(v92 + 8);
    v50 = v45;
    v107 = v46;
    object = v101._object;
    (v103)(v50, v101._object);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v49, &demangling cache variable for type metadata for Tensor?);
    swift_endAccess(&v89);
    v52 = v97;
    Dense.weight.getter();
    v53 = v82;
    Tensor.shape.getter();
    (v103)(v52, object);
    v97 = type metadata accessor for TensorShape(0);
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v97);
    v98 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v54 = swift_allocObject(v98, 72, 7);
    v54[2] = 1;
    v54[3] = 2;
    v54[7] = &type metadata for String;
    v55 = lazy protocol witness table accessor for type String and conformance String();
    v54[8] = v55;
    v54[4] = v101._countAndFlagsBits;
    LOBYTE(v50) = v100;
    v54[5] = v100;
    v50;
    v56 = String.init(format:_:)(0x68676965772E4025, 0xE900000000000074, v54);
    v58 = v57;
    v59 = v106;
    specialized Adam.updateOptimizerState(for:shape:using:name:)(v107, v53, v95, v56, v57);
    if (v59)
    {
      v60 = v104;
      v99;

      v58;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v53, &demangling cache variable for type metadata for TensorShape?);
      return (*(v60 + 8))(v108, v105);
    }

    v88 = v55;
    v63 = v96;
    v106 = 0;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v53, &demangling cache variable for type metadata for TensorShape?);
    v58;
    v64 = v83;
    v65 = v108;
    Dense.bias.getter();
    v66 = v101._object;
    if (__swift_getEnumTagSinglePayload(v64, 1, v101._object) == 1)
    {
      (*(v104 + 8))(v65, v105);
      v99;

      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v64, &demangling cache variable for type metadata for Tensor?);
    }

    (*(v92 + 32))(v102, v64, v66);
    v67 = v84;
    Dense.$bias.getter();
    v68 = v91;
    if (__swift_getEnumTagSinglePayload(v67, 1, v91) == 1)
    {
      v99;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, &demangling cache variable for type metadata for Parameter?);
      v69 = v100;
    }

    else
    {
      v70 = Parameter.id.getter();
      v86(v67, v68);
      v71 = v99;
      v72 = specialized Dictionary.subscript.getter(v70, v99);
      v71;
      v69 = v100;
      if (v72)
      {
        swift_beginAccess(v63, &v89, 33, 0);
        v73 = v94;
        Layer.updateValue<A>(_:for:)(v102, v72, v87, &protocol witness table for Parameter);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v73, &demangling cache variable for type metadata for Tensor?);
        swift_endAccess(&v89);
        v74 = v85;
        Tensor.shape.getter();
        __swift_storeEnumTagSinglePayload(v74, 0, 1, v97);
        v75 = swift_allocObject(v98, 72, 7);
        v75[2] = 1;
        v75[3] = 2;
        v75[7] = &type metadata for String;
        v75[8] = v88;
        v75[4] = v101._countAndFlagsBits;
        v76 = v100;
        v75[5] = v100;
        v76;
        v77 = String.init(format:_:)(0x736169622E4025, 0xE700000000000000, v75);
        v79 = v78;
        specialized Adam.updateOptimizerState(for:shape:using:name:)(v72, v74, v95, v77, v78);

        v79;

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74, &demangling cache variable for type metadata for TensorShape?);
LABEL_14:
        (v103)(v102, v101._object);
        return (*(v104 + 8))(v108, v105);
      }
    }

    *&v89 = 0;
    *(&v89 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    *(&v89 + 1);
    *&v89 = 0xD000000000000019;
    v80._countAndFlagsBits = v101._countAndFlagsBits;
    v80._object = v69;
    String.append(_:)(v80);
    v80._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v80);
    v100 = v89;
    v80._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v80._object, 0, 0);
    *v81 = v100;
    *(v81 + 16) = 0;
    *(v81 + 32) = 0;
    *(v81 + 48) = 2;
    swift_willThrow();

    goto LABEL_14;
  }

  v41;
  *&v89 = 0;
  *(&v89 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  *(&v89 + 1);
  *&v89 = 0xD000000000000019;
  v61._countAndFlagsBits = v101._countAndFlagsBits;
  v61._object = v100;
  String.append(_:)(v61);
  v61._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v61);
  v100 = v89;
  v61._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v61._object, 0, 0);
  *v62 = v100;
  *(v62 + 16) = 0;
  *(v62 + 32) = 0;
  *(v62 + 48) = 2;
  swift_willThrow();
  return (*(v104 + 8))(v108, v105);
}

{
  v107 = v7;
  v96 = a5;
  *&v101 = a4;
  v102._countAndFlagsBits = a3;
  v94 = a2;
  v91 = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Parameter?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v85 = &v83;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v86 = &v83;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v83 = &v83;
  v102._object = type metadata accessor for Tensor(0);
  v93 = *(v102._object - 1);
  v17 = *(v93 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v103 = &v83;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v98 = &v83;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v99 = &v83;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v84 = &v83;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v95 = &v83;
  v92 = type metadata accessor for Parameter(0);
  v108 = *(v92 - 8);
  v29 = *(v108 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v104 = &v83;
  v32 = type metadata accessor for Dense(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v97 = v8;
  v37 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
  v38 = v96;
  v39 = v107;
  static Dense.loadLayer(from:layerName:)(v96, v102._countAndFlagsBits, v101, a6, a7);
  v107 = v39;
  if (v39)
  {
    return v37;
  }

  v109 = &v83;
  v106 = v32;
  v105 = v33;
  v41 = v104;
  v42 = v37;
  Dense.$weight.getter();
  v43 = Parameter.id.getter(v38);
  v44 = *(v108 + 8);
  v44(v41, v92);
  v45 = specialized Dictionary.subscript.getter(v43, v42);
  if (v45)
  {
    v87 = v44;
    v100 = v42;
    v46 = v99;
    v47 = v45;
    Dense.weight.getter();
    v48 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v97;
    swift_beginAccess(OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v97, &v90, 33, 0);
    v49 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
    v50 = v95;
    v88 = v49;
    v97 = v48;
    Layer.updateValue<A>(_:for:)(v46, v47, v49, &protocol witness table for Parameter);
    v104 = *(v93 + 8);
    v51 = v46;
    v108 = v47;
    object = v102._object;
    (v104)(v51, v102._object);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for Tensor?);
    swift_endAccess(&v90);
    v53 = v98;
    Dense.weight.getter();
    v54 = v83;
    Tensor.shape.getter();
    (v104)(v53, object);
    v98 = type metadata accessor for TensorShape(0);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v98);
    v99 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v55 = swift_allocObject(v99, 72, 7);
    v55[2] = 1;
    v55[3] = 2;
    v55[7] = &type metadata for String;
    v56 = lazy protocol witness table accessor for type String and conformance String();
    v55[8] = v56;
    v55[4] = v102._countAndFlagsBits;
    LOBYTE(v51) = v101;
    v55[5] = v101;
    v51;
    v57 = String.init(format:_:)(0x68676965772E4025, 0xE900000000000074, v55);
    v59 = v58;
    v60 = v107;
    specialized SGD.updateOptimizerState(for:shape:using:name:)(v108, v54, v96, v57, v58, a6, a7);
    if (v60)
    {
      v61 = v105;
      v100;

      v59;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
      return (*(v61 + 8))(v109, v106);
    }

    v89 = v56;
    v64 = v97;
    v107 = 0;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
    v59;
    v65 = v84;
    v66 = v109;
    Dense.bias.getter();
    v67 = v102._object;
    if (__swift_getEnumTagSinglePayload(v65, 1, v102._object) == 1)
    {
      (*(v105 + 8))(v66, v106);
      v100;

      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, &demangling cache variable for type metadata for Tensor?);
    }

    (*(v93 + 32))(v103, v65, v67);
    v68 = v85;
    Dense.$bias.getter();
    v69 = v92;
    if (__swift_getEnumTagSinglePayload(v68, 1, v92) == 1)
    {
      v100;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v68, &demangling cache variable for type metadata for Parameter?);
      v70 = v101;
    }

    else
    {
      v71 = Parameter.id.getter(v68);
      v87(v68, v69);
      v72 = v100;
      v73 = specialized Dictionary.subscript.getter(v71, v100);
      v72;
      v70 = v101;
      if (v73)
      {
        swift_beginAccess(v64, &v90, 33, 0);
        v74 = v95;
        Layer.updateValue<A>(_:for:)(v103, v73, v88, &protocol witness table for Parameter);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74, &demangling cache variable for type metadata for Tensor?);
        swift_endAccess(&v90);
        v75 = v86;
        Tensor.shape.getter();
        __swift_storeEnumTagSinglePayload(v75, 0, 1, v98);
        v76 = swift_allocObject(v99, 72, 7);
        v76[2] = 1;
        v76[3] = 2;
        v76[7] = &type metadata for String;
        v76[8] = v89;
        v76[4] = v102._countAndFlagsBits;
        v77 = v101;
        v76[5] = v101;
        v77;
        v78 = String.init(format:_:)(0x736169622E4025, 0xE700000000000000, v76);
        v80 = v79;
        specialized SGD.updateOptimizerState(for:shape:using:name:)(v73, v75, v96, v78, v79, a6, a7);

        v80;

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v75, &demangling cache variable for type metadata for TensorShape?);
LABEL_14:
        (v104)(v103, v102._object);
        return (*(v105 + 8))(v109, v106);
      }
    }

    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    *(&v90 + 1);
    *&v90 = 0xD000000000000019;
    v81._countAndFlagsBits = v102._countAndFlagsBits;
    v81._object = v70;
    String.append(_:)(v81);
    v81._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v81);
    v101 = v90;
    v81._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v81._object, 0, 0);
    *v82 = v101;
    *(v82 + 16) = 0;
    *(v82 + 32) = 0;
    *(v82 + 48) = 2;
    swift_willThrow(&type metadata for MLCreateError, v81._object);

    goto LABEL_14;
  }

  v42;
  *&v90 = 0;
  *(&v90 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  *(&v90 + 1);
  *&v90 = 0xD000000000000019;
  v62._countAndFlagsBits = v102._countAndFlagsBits;
  v62._object = v101;
  String.append(_:)(v62);
  v62._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v62);
  v101 = v90;
  v62._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v62._object, 0, 0);
  *v63 = v101;
  *(v63 + 16) = 0;
  *(v63 + 32) = 0;
  *(v63 + 48) = 2;
  swift_willThrow(&type metadata for MLCreateError, v62._object);
  return (*(v105 + 8))(v109, v106);
}

uint64_t specialized _ModelCheckpoint<>.restoreGenericLayer<A, B>(_:optimizer:layerName:checkpointDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  *&v90 = v5;
  v82 = a5;
  v84._object = a4;
  v85._countAndFlagsBits = a3;
  v75 = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v74 = &v64;
  v79 = type metadata accessor for MLActivityClassifier.Model(0);
  v10 = *(*(v79 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v80 = &v64;
  v71 = type metadata accessor for Parameter(0);
  v72 = *(v71 - 8);
  v13 = *(v72 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v73 = &v64;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v76 = &v64;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v69 = &v64;
  v87 = type metadata accessor for Tensor(0);
  v85._object = *(v87 - 8);
  v21 = *(v85._object + 8);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v24 = type metadata accessor for LSTM(0);
  v70 = a1;
  v25 = Layer.namedParameterKeyPaths(recursively:)(1, v24, &protocol witness table for LSTM);
  if (!*(v25 + 16))
  {
    return v25;
  }

  v78 = *(v25 + 16);
  v88 = &v64;
  v26 = v6;
  v83 = v6 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model;
  swift_beginAccess(v6 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model, v65, 0, 0);
  v89 = v25;
  v27 = (v25 + 48);
  v28 = v90;
  v29 = v87;
  v77 = v26;
  while (1)
  {
    *&v90 = v28;
    v30 = *(v27 - 2);
    v31 = *(v27 - 1);
    v68 = v27;
    v32 = *v27;
    v31;
    v91 = v32;

    v33 = v69;
    v84._countAndFlagsBits = v30;
    v34._countAndFlagsBits = v30;
    v86 = v31;
    v34._object = v31;
    v35 = v90;
    Dictionary<>.tensor(forKey:prefix:)(v34, v85._countAndFlagsBits, v84._object, v82);
    if (v35)
    {
      v86;

      return v89;
    }

    if (__swift_getEnumTagSinglePayload(v33, 1, v29) == 1)
    {
      v89;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v33, &demangling cache variable for type metadata for Tensor?);
      *&v81 = 0;
      *(&v81 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v58._countAndFlagsBits = 0xD000000000000025;
      String.append(_:)(v58);
      v58._countAndFlagsBits = v85._countAndFlagsBits;
      v58._object = v84._object;
      String.append(_:)(v58);
      v58._countAndFlagsBits = 0x74656D6172617020;
      v58._object = 0xEB00000000207265;
      String.append(_:)(v58);
      v58._countAndFlagsBits = v84._countAndFlagsBits;
      v59 = v86;
      v58._object = v86;
      String.append(_:)(v58);
      v90 = v81;
      v58._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v58._object, 0, 0);
      *v60 = v90;
      *(v60 + 16) = 0;
      *(v60 + 32) = 0;
      *(v60 + 48) = 0;
      v59;
      swift_willThrow();
    }

    *&v90 = 0;
    (*(v85._object + 4))(v88, v33, v29);
    v36 = v91;

    v37 = v73;
    swift_getAtKeyPath(v70, v36);

    v38 = Parameter.id.getter(v36);
    (*(v72 + 8))(v37, v71);
    v39 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
    if (v39[2])
    {
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
      if (v41)
      {
        v42 = *(v39[7] + 8 * v40);

        v39;
        goto LABEL_9;
      }
    }

    v39;
    v43 = v80;
    outlined init with copy of MLTrainingSessionParameters(v83, v80, type metadata accessor for MLActivityClassifier.Model);
    v44 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v45 = Layer.parameterKeyPaths(recursively:)(1, v79, v44);
    v46 = alloca(28);
    v47 = alloca(32);
    v66 = v43;
    v67 = v38;
    v48 = v90;
    v42 = specialized Sequence.first(where:)(partial apply for specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:), &v64, v45);
    *&v90 = v48;
    v45;
    outlined destroy of MLActivityClassifier.ModelParameters(v43, type metadata accessor for MLActivityClassifier.Model);
    if (!v42)
    {
      break;
    }

LABEL_9:
    swift_beginAccess(v83, &v81, 33, 0);
    v49 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v50 = v76;
    Layer.updateValue<A>(_:for:)(v88, v42, v49, &protocol witness table for Parameter);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for Tensor?);
    swift_endAccess(&v81);
    v51 = type metadata accessor for TensorShape(0);
    v52 = v74;
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v51);
    *&v81 = v85._countAndFlagsBits;
    *(&v81 + 1) = v84._object;
    v84._object;
    v53._countAndFlagsBits = 46;
    v53._object = 0xE100000000000000;
    String.append(_:)(v53);
    v53._countAndFlagsBits = v84._countAndFlagsBits;
    v54 = v86;
    v53._object = v86;
    String.append(_:)(v53);
    v54;
    v55 = *(&v81 + 1);
    v56 = v90;
    specialized Adam.updateOptimizerState(for:shape:using:name:)(v42, v52, v82, v81, *(&v81 + 1));
    v28 = v56;
    if (v56)
    {

      v55;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v52, &demangling cache variable for type metadata for TensorShape?);
      (*(v85._object + 1))(v88, v87);
      return v89;
    }

    v55;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v52, &demangling cache variable for type metadata for TensorShape?);
    v29 = v87;
    (*(v85._object + 1))(v88, v87);
    v27 = v68 + 3;
    if (!--v78)
    {
      return v89;
    }
  }

  v89;
  *&v81 = 0;
  *(&v81 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v61._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v61);
  v61._countAndFlagsBits = v85._countAndFlagsBits;
  v61._object = v84._object;
  String.append(_:)(v61);
  v61._countAndFlagsBits = 0x74656D6172617020;
  v61._object = 0xEB00000000207265;
  String.append(_:)(v61);
  v61._countAndFlagsBits = v84._countAndFlagsBits;
  v62 = v86;
  v61._object = v86;
  String.append(_:)(v61);
  v90 = v81;
  v61._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v61._object, 0, 0);
  *v63 = v90;
  *(v63 + 16) = 0;
  *(v63 + 32) = 0;
  *(v63 + 48) = 0;
  v62;
  swift_willThrow();

  return (*(v85._object + 1))(v88, v87);
}

uint64_t specialized _ModelCheckpoint<>.restoreGenericLayer<A, B>(_:optimizer:layerName:checkpointDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7)
{
  *&v92 = v7;
  v84 = a5;
  v86._object = a4;
  v87._countAndFlagsBits = a3;
  v77 = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v76 = &v66;
  v81 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v12 = *(*(v81 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v82 = &v66;
  v73 = type metadata accessor for Parameter(0);
  v74 = *(v73 - 8);
  v15 = *(v74 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v75 = &v66;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v78 = &v66;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v71 = &v66;
  v89 = type metadata accessor for Tensor(0);
  v87._object = *(v89 - 8);
  v23 = *(v87._object + 8);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = type metadata accessor for LSTM(0);
  v72 = a1;
  v27 = Layer.namedParameterKeyPaths(recursively:)(1, v26, &protocol witness table for LSTM);
  if (!*(v27 + 16))
  {
    return v27;
  }

  v80 = *(v27 + 16);
  v90 = &v66;
  v28 = v8;
  v85 = v8 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess(v8 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, v67, 0, 0);
  v91 = v27;
  v29 = (v27 + 48);
  v30 = v92;
  v31 = v89;
  v79 = v28;
  while (1)
  {
    *&v92 = v30;
    v32 = *(v29 - 2);
    v33 = *(v29 - 1);
    v70 = v29;
    v34 = *v29;
    v33;
    v93 = v34;

    v35 = v71;
    v86._countAndFlagsBits = v32;
    v36._countAndFlagsBits = v32;
    v88 = v33;
    v36._object = v33;
    v37 = v92;
    Dictionary<>.tensor(forKey:prefix:)(v36, v87._countAndFlagsBits, v86._object, v84);
    if (v37)
    {
      v88;

      return v91;
    }

    if (__swift_getEnumTagSinglePayload(v35, 1, v31) == 1)
    {
      v91;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for Tensor?);
      *&v83 = 0;
      *(&v83 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v60._countAndFlagsBits = 0xD000000000000025;
      String.append(_:)(v60);
      v60._countAndFlagsBits = v87._countAndFlagsBits;
      v60._object = v86._object;
      String.append(_:)(v60);
      v60._countAndFlagsBits = 0x74656D6172617020;
      v60._object = 0xEB00000000207265;
      String.append(_:)(v60);
      v60._countAndFlagsBits = v86._countAndFlagsBits;
      v61 = v88;
      v60._object = v88;
      String.append(_:)(v60);
      v92 = v83;
      v60._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v60._object, 0, 0);
      *v62 = v92;
      *(v62 + 16) = 0;
      *(v62 + 32) = 0;
      *(v62 + 48) = 0;
      v61;
      swift_willThrow(v61, v60._object);
    }

    *&v92 = 0;
    (*(v87._object + 4))(v90, v35, v31);
    v38 = v93;

    v39 = v75;
    swift_getAtKeyPath(v72, v38);

    v40 = Parameter.id.getter(v38);
    (*(v74 + 8))(v39, v73);
    v41 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
    if (v41[2])
    {
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
      if (v43)
      {
        v44 = *(v41[7] + 8 * v42);

        v41;
        goto LABEL_9;
      }
    }

    v41;
    v45 = v82;
    outlined init with copy of MLTrainingSessionParameters(v85, v82, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
    v46 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
    v47 = Layer.parameterKeyPaths(recursively:)(1, v81, v46);
    v48 = alloca(28);
    v49 = alloca(32);
    v68 = v45;
    v69 = v40;
    v50 = v92;
    v44 = specialized Sequence.first(where:)(_s14NeuralNetworks5LayerP8CreateMLE16parameterKeyPath18forParameterWithIds08WritablegH0CyxAA0J0VGSgs6UInt32V_tFSbAKXEfU_AD22MLHandActionClassifierV13GraphCNNModelV_TG5TA_0, &v66, v47);
    *&v92 = v50;
    v47;
    outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
    if (!v44)
    {
      break;
    }

LABEL_9:
    swift_beginAccess(v85, &v83, 33, 0);
    v51 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
    v52 = v78;
    Layer.updateValue<A>(_:for:)(v90, v44, v51, &protocol witness table for Parameter);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v52, &demangling cache variable for type metadata for Tensor?);
    swift_endAccess(&v83);
    v53 = type metadata accessor for TensorShape(0);
    v54 = v76;
    __swift_storeEnumTagSinglePayload(v76, 1, 1, v53);
    *&v83 = v87._countAndFlagsBits;
    *(&v83 + 1) = v86._object;
    v86._object;
    v55._countAndFlagsBits = 46;
    v55._object = 0xE100000000000000;
    String.append(_:)(v55);
    v55._countAndFlagsBits = v86._countAndFlagsBits;
    v56 = v88;
    v55._object = v88;
    String.append(_:)(v55);
    v56;
    v57 = *(&v83 + 1);
    v58 = v92;
    specialized SGD.updateOptimizerState(for:shape:using:name:)(v44, v54, v84, v83, *(&v83 + 1), a6, a7);
    v30 = v58;
    if (v58)
    {

      v57;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
      (*(v87._object + 1))(v90, v89);
      return v91;
    }

    v57;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for TensorShape?);
    v31 = v89;
    (*(v87._object + 1))(v90, v89);
    v29 = v70 + 3;
    if (!--v80)
    {
      return v91;
    }
  }

  v91;
  *&v83 = 0;
  *(&v83 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v63._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v63);
  v63._countAndFlagsBits = v87._countAndFlagsBits;
  v63._object = v86._object;
  String.append(_:)(v63);
  v63._countAndFlagsBits = 0x74656D6172617020;
  v63._object = 0xEB00000000207265;
  String.append(_:)(v63);
  v63._countAndFlagsBits = v86._countAndFlagsBits;
  v64 = v88;
  v63._object = v88;
  String.append(_:)(v63);
  v92 = v83;
  v63._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v63._object, 0, 0);
  *v65 = v92;
  *(v65 + 16) = 0;
  *(v65 + 32) = 0;
  *(v65 + 48) = 0;
  v64;
  swift_willThrow(v64, v63._object);

  return (*(v87._object + 1))(v90, v89);
}

uint64_t specialized Adam.updateOptimizerState(for:shape:using:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v78 = v5;
  v71 = v6;
  v77 = a5;
  v72 = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v68 = &v64;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v65 = &v64;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v75._object = &v64;
  v16 = alloca(v9);
  v17 = alloca(v9);
  v70 = type metadata accessor for Tensor(0);
  v18 = *(v70 - 8);
  v19 = *(v18 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v73 = &v64;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v69 = &v64;
  v24 = alloca(v19);
  v25 = alloca(v19);
  v67 = &v64;
  v66 = &v64;
  v26._countAndFlagsBits = a4;
  v26._object = v77;
  v27 = v78;
  result = Dictionary<>.tensor(forKey:prefix:)(v26, 0x6D6F4D7473726966, 0xEC00000073746E65, a3);
  if (!v27)
  {
    v75._countAndFlagsBits = a4;
    v74 = a3;
    v78 = 0;
    v76 = v18;
    v29 = v66;
    v30 = v70;
    if (__swift_getEnumTagSinglePayload(v66, 1, v70) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, &demangling cache variable for type metadata for Tensor?);
      v31 = v76;
    }

    else
    {
      v32 = v67;
      v33 = v29;
      v34 = v76;
      (*(v76 + 32))(v67, v33, v30);
      object = v75._object;
      (*(v34 + 16))(v75._object, v32, v30);
      __swift_storeEnumTagSinglePayload(object, 0, 1, v30);
      v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
      v37 = v71 + *(v36 + 64);
      v38 = v30;
      v39 = v72;

      v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLActivityClassifier.Model>);
      v41 = v39;
      v30 = v38;
      OptimizerStateDictionary.subscript.setter(v75._object, v41, v40);
      v31 = v76;
      (*(v76 + 8))(v32, v30);
    }

    v42._object = v77;
    v42._countAndFlagsBits = v75._countAndFlagsBits;
    v43 = v69;
    v44 = v65;
    v45 = v78;
    result = Dictionary<>.tensor(forKey:prefix:)(v42, 0x6F4D646E6F636573, 0xED000073746E656DLL, v74);
    if (!v45)
    {
      v78 = 0;
      if (__swift_getEnumTagSinglePayload(v44, 1, v30) == 1)
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v44, &demangling cache variable for type metadata for Tensor?);
      }

      else
      {
        (*(v31 + 32))(v43, v44, v30);
        v46 = v75._object;
        (*(v76 + 16))(v75._object, v43, v30);
        __swift_storeEnumTagSinglePayload(v46, 0, 1, v30);
        v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
        v48 = v71 + *(v47 + 68);
        v49 = v72;

        v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLActivityClassifier.Model>);
        v51 = v46;
        v31 = v76;
        v52 = v49;
        v30 = v70;
        OptimizerStateDictionary.subscript.setter(v51, v52, v50);
        (*(v31 + 8))(v43, v30);
      }

      v53 = v73;
      v54 = v68;
      v55._countAndFlagsBits = v75._countAndFlagsBits;
      v55._object = v77;
      v56 = v78;
      result = Dictionary<>.tensor(forKey:prefix:)(v55, 0xD000000000000014, "usesNesterovMomentum" + 0x8000000000000000, v74);
      if (!v56)
      {
        v78 = 0;
        if (__swift_getEnumTagSinglePayload(v54, 1, v30) == 1)
        {
          return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for Tensor?);
        }

        else
        {
          (*(v31 + 32))(v53, v54, v30);
          v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
          v58 = v53;
          v59 = *(v57 + 72) + v71;
          v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLActivityClassifier.Model>);
          if (__swift_getEnumTagSinglePayload(v59, 1, v77))
          {
            v60 = v58;
            v61 = v30;
          }

          else
          {
            (*(v31 + 16))(v75._object, v58, v30);
            v62 = v75._object;
            __swift_storeEnumTagSinglePayload(v75._object, 0, 1, v30);
            v63 = v72;

            OptimizerStateDictionary.subscript.setter(v62, v63, v77);
            v60 = v73;
            v61 = v70;
          }

          return (*(v31 + 8))(v60, v61);
        }
      }
    }
  }

  return result;
}

void *outlined release of MLDataTable.ParsingOptions(void *a1, uint64_t a2)
{
  v7 = a1[2];
  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[9];
  v5 = a1[11];
  v8 = a1[14];
  a1[13], a2;
  v5, a2;
  v4, a2;
  v3, a2;
  v2, a2;
  v7, a2;
  v8, a2;
  return a1;
}

uint64_t outlined assign with take of SGD<MLHandActionClassifier.GraphCNNModel>(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLHandActionClassifier.GraphCNNModel(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of SGD<MLHandActionClassifier.GraphCNNModel>(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLSoundClassifier.ModelParameters.ModelAlgorithmType.validate()()
{
  v1 = v0[2];
  v10 = *v0;
  v11 = *(v0 + 8);
  MLSoundClassifier.ModelParameters.FeatureExtractorType.validate()();
  if (!v2 && v1)
  {
    v3 = 0xD000000000000031;
    v4 = v1[2];
    if (v4)
    {
      v5 = "n be converted to double";
      if (v1[4] > 0)
      {
        if (v4 == 1)
        {
          return;
        }

        if (v1[5] > 0)
        {
          if (v4 == 2)
          {
            return;
          }

          for (i = 6; ; ++i)
          {
            v7 = i - 4 + 1;
            if (__OFADD__(1, i - 4))
            {
              BUG();
            }

            if (v1[i] <= 0)
            {
              break;
            }

            if (v7 == v4)
            {
              return;
            }
          }
        }
      }
    }

    else
    {
      v3 = 0xD000000000000036;
      v5 = "positive integers";
    }

    v8 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v8, 0, 0);
    *v9 = v3;
    *(v9 + 8) = v5 | 0x8000000000000000;
    *(v9 + 16) = 0;
    *(v9 + 32) = 0;
    *(v9 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v8);
  }
}

unint64_t MLSoundClassifier.ModelParameters.ModelAlgorithmType.description.getter()
{
  v1 = 0xD000000000000012;
  v2 = v0[2];
  v9 = *v0;
  v10 = *(v0 + 8);
  v2;
  v3 = MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();
  v5 = v4;
  if (v2)
  {
    v2;
    v1 = 0xD000000000000015;
    v6 = "Feature Extractor: ";
  }

  else
  {
    0;
    v6 = "Multilayer Perceptron";
  }

  v5;
  v7._countAndFlagsBits = v1;
  v7._object = (v6 | 0x8000000000000000);
  String.append(_:)(v7);
  v5;
  v6 | 0x8000000000000000;
  return v3;
}

char static MLSoundClassifier.ModelParameters.ModelAlgorithmType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a2[2];
  if (*(a1 + 8))
  {
    if (((v3 == v5) & v6) != 1)
    {
      return 0;
    }
  }

  else if ((v3 != v5) | v6 & 1)
  {
    return 0;
  }

  if (!v4)
  {
    if (!v7)
    {
      swift_bridgeObjectRelease_n(0, 2);
      return 1;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v4, v7);
  result = 1;
  if (!v9)
  {
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLSoundClassifier.ModelParameters.ModelAlgorithmType(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  v3;
  return a1;
}

uint64_t assignWithCopy for MLSoundClassifier.ModelParameters.ModelAlgorithmType(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *a1 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
  v3;
  v4, a2;
  return a1;
}

uint64_t assignWithTake for MLSoundClassifier.ModelParameters.ModelAlgorithmType(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *a1 = *a2;
  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v3, a2;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLSoundClassifier.ModelParameters.ModelAlgorithmType(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 & 0xFFFFFFFF00000001;
      v5 = (v3 >> 1) - 1;
      v6 = -1;
      if (v5 >= 0)
      {
        v6 = v5;
      }

      v2 = v4 != 0 ? -1 : v6;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLSoundClassifier.ModelParameters.ModelAlgorithmType(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 24) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = 2 * a2;
    }
  }
}

uint64_t type metadata completion function for ItemStatistics(uint64_t a1)
{
  v5[0] = &value witness table for Builtin.Int64 + 64;
  v1 = swift_checkMetadataState(319, *(a1 + 16));
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v5[1] = *(v1 - 8) + 64;
    v2 = 0;
    swift_initStructMetadata(a1, 0, 2, v5, a1 + 24);
  }

  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for ItemStatistics(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = v5;
  if (v5 > 7u || (v5 & 0x100000) != 0 || (v5 | (-9 - v5)) - *(v4 + 64) < 0xFFFFFFFFFFFFFFE7)
  {
    v7 = *a2;
    *v3 = *a2;
    v7;
    return (v7 + ((v6 + 16) & (v6 & 0xFFFFFFF8 ^ 0x1F8)));
  }

  else
  {
    *a1 = *a2;
    (*(v4 + 16))(~v5 & (a1 + v5 + 8), ~v5 & (a2 + v5 + 8));
  }

  return v3;
}

void *initializeWithCopy for ItemStatistics(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 16))(~*(v3 + 80) & (a1 + *(v3 + 80) + 8), (a2 + *(v3 + 80) + 8) & ~*(v3 + 80));
  return a1;
}

void *assignWithCopy for ItemStatistics(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 24))(~*(v3 + 80) & (a1 + *(v3 + 80) + 8), (a2 + *(v3 + 80) + 8) & ~*(v3 + 80));
  return a1;
}

void *initializeWithTake for ItemStatistics(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 32))(~*(v3 + 80) & (a1 + *(v3 + 80) + 8), (a2 + *(v3 + 80) + 8) & ~*(v3 + 80));
  return a1;
}

void *assignWithTake for ItemStatistics(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 40))(~*(v3 + 80) & (a1 + *(v3 + 80) + 8), (a2 + *(v3 + 80) + 8) & ~*(v3 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for ItemStatistics(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  result = 0;
  if (!a2)
  {
    return result;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = a2 <= v7;
  v11 = a2 - v7;
  if (v10)
  {
    return __swift_getEnumTagSinglePayload(v9 & &a1[v8 + 8], v7, v5);
  }

  v12 = *(v6 + 64) + ((v8 + 8) & v9);
  if (v12 > 3)
  {
LABEL_4:
    v13 = a1[v12];
    goto LABEL_11;
  }

  v14 = ((~(-1 << (8 * v12)) + v11) >> (8 * v12)) + 1;
  if (v14 > 0xFFFF)
  {
    v13 = *&a1[v12];
  }

  else
  {
    if (v14 <= 0xFF)
    {
      if (v14 < 2)
      {
LABEL_19:
        if (!v7)
        {
          return result;
        }

        return __swift_getEnumTagSinglePayload(v9 & &a1[v8 + 8], v7, v5);
      }

      goto LABEL_4;
    }

    v13 = *&a1[v12];
  }

LABEL_11:
  if (!v13)
  {
    goto LABEL_19;
  }

  v15 = (v13 - 1) << (8 * v12);
  v16 = 0;
  if (v12 >= 4)
  {
    v15 = 0;
  }

  if (v12)
  {
    v17 = 4;
    if (v12 < 4)
    {
      v17 = *(v6 + 64) + ((v8 + 8) & v9);
    }

    switch(v17)
    {
      case 1:
        v16 = *a1;
        break;
      case 2:
        v16 = *a1;
        break;
      case 3:
        v16 = *a1 | (a1[2] << 16);
        break;
      case 4:
        v16 = *a1;
        break;
    }
  }

  return v7 + (v15 | v16) + 1;
}

uint64_t storeEnumTagSinglePayload for ItemStatistics(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  result = *(a4 + 16);
  v5 = *(result - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + ((v6 + 8) & ~*(v5 + 80));
  v8 = *(v5 + 84);
  v9 = 0;
  v10 = a3 <= v8;
  v11 = a3 - v8;
  if (!v10)
  {
    if (v7 > 3)
    {
      v16 = 1;
LABEL_9:
      v9 = v16;
      goto LABEL_10;
    }

    v12 = ((~(-1 << (8 * v7)) + v11) >> (8 * v7)) + 1;
    if (v12 > 0xFFFF)
    {
      v16 = 4;
      goto LABEL_9;
    }

    v9 = 0;
    if (v12 >= 2)
    {
      v9 = ((v12 | 0x200000000uLL) - 256) >> 32;
    }
  }

LABEL_10:
  if (v8 < a2)
  {
    v13 = a2 + ~v8;
    if (v7 >= 4)
    {
      v14 = 1;
      __bzero(a1, v7);
      *a1 = v13;
      result = v9;
      switch(v9)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_26;
        case 2u:
          goto LABEL_28;
        case 3u:
          goto LABEL_30;
        case 4u:
          goto LABEL_27;
      }
    }

    v14 = (v13 >> (8 * v7)) + 1;
    if (v7)
    {
      v15 = v13 & ~(-1 << (8 * v7));
      __bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v15;
          result = v9;
          switch(v9)
          {
            case 0u:
              return result;
            case 1u:
              goto LABEL_26;
            case 2u:
              goto LABEL_28;
            case 3u:
              goto LABEL_30;
            case 4u:
              goto LABEL_27;
          }
        }

        *a1 = v13;
        result = v9;
        switch(v9)
        {
          case 0u:
            return result;
          case 1u:
            goto LABEL_26;
          case 2u:
            goto LABEL_28;
          case 3u:
            goto LABEL_30;
          case 4u:
            goto LABEL_27;
        }
      }

      *a1 = v15;
      *(a1 + 2) = BYTE2(v15);
      result = v9;
      switch(v9)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_26;
        case 2u:
          goto LABEL_28;
        case 3u:
          goto LABEL_30;
        case 4u:
          goto LABEL_27;
      }
    }

    result = v9;
    switch(v9)
    {
      case 0u:
        return result;
      case 1u:
LABEL_26:
        *(a1 + v7) = v14;
        return result;
      case 2u:
LABEL_28:
        *(a1 + v7) = v14;
        return result;
      case 3u:
        goto LABEL_30;
      case 4u:
LABEL_27:
        *(a1 + v7) = v14;
        return result;
    }
  }

  switch(v9)
  {
    case 0u:
      break;
    case 1u:
      *(a1 + v7) = 0;
      break;
    case 2u:
      *(a1 + v7) = 0;
      break;
    case 3u:
LABEL_30:
      BUG();
    case 4u:
      *(a1 + v7) = 0;
      break;
  }

  if (a2)
  {
    return __swift_storeEnumTagSinglePayload(~v6 & (v6 + a1 + 8), a2, v8, result);
  }

  return result;
}

uint64_t static MLLogisticRegressionClassifier.ModelParameters.firstIncompatibility(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1 == *a2)
  {
    v4 = *(a1 + 5);
    if (v4 == *(a2 + 40))
    {
      v5 = *(a1 + 6);
      if (v5 == *(a2 + 48))
      {
        v6 = *(a1 + 7);
        if (v6 == *(a2 + 56))
        {
          v7 = *(a1 + 8);
          if (v7 == *(a2 + 64))
          {
            v8 = *(a1 + 72);
            v9 = *(a2 + 72);
            if (v8 == v9)
            {
              v15 = 0;
              v14 = 0;
              v11 = 0;
              v12 = 0;
              result = 0;
              v13 = 0;
            }

            else
            {
              result = 0x65736C6166;
              v11 = 0x65736C6166;
              if (v8)
              {
                v11 = 1702195828;
              }

              v12 = (v8 ^ 1u | 0xFFFFFFFFFFFFFFE4) << 56;
              if (v9)
              {
                result = 1702195828;
              }

              v13 = (v9 ^ 1u | 0xFFFFFFFFFFFFFFE4) << 56;
              v14 = 0xEF676E696C616373;
              v15 = 0x2065727574616546;
            }
          }

          else
          {
            v14 = "e at least one element" + 0x8000000000000000;
            v27 = *(a2 + 64);
            v11 = Double.description.getter(v7);
            v12 = v22;
            result = Double.description.getter(v27);
            v15 = 0xD000000000000015;
          }
        }

        else
        {
          v26 = *(a2 + 56);
          v11 = Double.description.getter(v6);
          v12 = v21;
          result = Double.description.getter(v26);
          v14 = 0xE900000000000065;
          v15 = 0x7A69732070657453;
        }
      }

      else
      {
        v14 = 0xEA00000000007974;
        v25 = *(a2 + 48);
        v11 = Double.description.getter(v5);
        v12 = v20;
        result = Double.description.getter(v25);
        v15 = 0x6C616E657020324CLL;
      }
    }

    else
    {
      v14 = 0xEA00000000007974;
      v15 = 0x6C616E657020314CLL;
      v24 = *(a2 + 40);
      v11 = Double.description.getter(v4);
      v12 = v19;
      result = Double.description.getter(v24);
    }
  }

  else
  {
    v23 = *a1;
    v16 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v18 = v17;
    v11 = v16;
    result = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v12 = v18;
    v14 = 0xEF736E6F69746172;
    v15 = 0x657469202E78614DLL;
  }

  *v3 = v15;
  v3[1] = v14;
  v3[2] = v11;
  v3[3] = v12;
  v3[4] = result;
  v3[5] = v13;
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg563_s8CreateML11MLGazetteerV11predictions4fromSaySSGAF_tKFS2SXEfU_0F2ML0H0VTf1cn_n(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v26 = a2;
    v28 = *(a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v27 = _swiftEmptyArrayStorage;
    v8 = (a1 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      *v8;
      v11 = String._bridgeToObjectiveC()();
      v12 = [v26 labelForString:v11];
      v13 = v12;

      if (v13)
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)(v13);
        v25 = v14;
        v10;
      }

      else
      {
        v10;
        v24 = 0;
        v25 = 0xE000000000000000;
      }

      v15 = v27;
      v16 = v27[2];
      v17 = v28;
      if (v27[3] >> 1 <= v16)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27[3] >= 2uLL, v16 + 1, 1);
        v17 = v28;
        v15 = v27;
      }

      v15[2] = v16 + 1;
      v18 = 2 * v16;
      v15[v18 + 4] = v24;
      v27 = v15;
      v15[v18 + 5] = v25;
      v8 += 2;
      v28 = v17 - 1;
    }

    while (v17 != 1);

    a3;
    return v27;
  }

  else
  {

    a3;
    return _swiftEmptyArrayStorage;
  }
}

Swift::String __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLGazetteer.prediction(from:)(Swift::String from)
{
  v2 = *v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 labelForString:v3];
  v5 = v4;

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)(v5);
    v8 = v7;
  }

  else
  {
    v8 = 0xE000000000000000;
    v6 = 0;
  }

  result._countAndFlagsBits = v6;
  result._object = v8;
  return result;
}

void *MLGazetteer.predictions(from:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v8 = *(v1 + 16);
  v4 = *(v1 + 24);
  v4;
  v5 = v2;
  v3;
  v6 = v8;
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg563_s8CreateML11MLGazetteerV11predictions4fromSaySSGAF_tKFS2SXEfU_0F2ML0H0VTf1cn_n(a1, v5, v3, v6, v4);
}

uint64_t MLGazetteer.predictions(from:)(uint64_t a1, double a2)
{
  v14 = v2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v18 = *v3;
  v16 = *(v3 + 8);
  v15 = *(v3 + 16);
  v17 = *(v3 + 24);
  outlined copy of Result<_DataTable, Error>(*a1, v5);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v4, v5, a2);
  v17;
  v7 = v18;
  v16;
  v8 = v15;
  ML11MLGazetteerV11predictions4fromSaySSGAF_tKFS2SXEfU_0F2ML0H0VTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg563_s8CreateML11MLGazetteerV11predictions4fromSaySSGAF_tKFS2SXEfU_0F2ML0H0VTf1cn_n(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5, v7, v16, v8, v17);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v13 = ML11MLGazetteerV11predictions4fromSaySSGAF_tKFS2SXEfU_0F2ML0H0VTf1cn_n;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  LOBYTE(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5) = v11;
  v13;
  result = v14;
  *v14 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(v14 + 8) = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 & 1;
  return result;
}

Class static MLTextClassifier.buildOptions(_:)(uint64_t a1)
{
  v106[0] = v1;
  v2 = a1;
  v110 = type metadata accessor for URL(0);
  v111 = *(v110 - 1);
  v3 = *(v111 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v108 = v106;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v112 = v106;
  v8 = *(*(type metadata accessor for MLTextClassifier.FeatureExtractorType(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v107 = v106;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v13 = v106;
  v113 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  v14 = *(*(v113 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v114 = v106;
  v106[1] = &type metadata for Any + 8;
  v118 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for AnyHashable, &type metadata for Any + 8, &protocol witness table for AnyHashable);
  v17 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v18 = *(v17 + 36);
  v19 = *(a1 + v18 + 8) == 0;
  v115 = v106;
  v116 = a1;
  if (v19)
  {
    if (!kNLPMaximumIterationsKey)
    {
      BUG();
    }

    v20 = *(a1 + v18);
    *&v120 = kNLPMaximumIterationsKey;
    v21 = type metadata accessor for CFStringRef(0);
    v22 = lazy protocol witness table accessor for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
    AnyHashable.init<A>(_:)(&v120, v21, v22);
    v121 = &type metadata for Int;
    *&v120 = v20;
    outlined init with take of Any(&v120, v119);
    v23 = v118;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v118);
    v117 = v23;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, isUniquelyReferenced_nonNull_native);
    v2 = v116;
    v118 = v117;
    outlined destroy of AnyHashable(v122);
    v13 = v115;
  }

  v25 = *(v2 + *(v17 + 20));
  if (v25)
  {
    v26 = NLModelConfigurationOptionsKeyLanguage;
    *&v120 = NLModelConfigurationOptionsKeyLanguage;
    v109 = type metadata accessor for NLModelConfigurationOptionsKey(0);
    v27 = lazy protocol witness table accessor for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
    v28 = v25;
    v26;
    AnyHashable.init<A>(_:)(&v120, v109, v27);
    v121 = type metadata accessor for NLLanguage(0);
    *&v120 = v28;
    outlined init with take of Any(&v120, v119);
    v109 = v28;
    v29 = v118;
    v30 = swift_isUniquelyReferenced_nonNull_native(v118);
    v117 = v29;
    v13 = v115;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v30);
    v2 = v116;
    v118 = v117;
    outlined destroy of AnyHashable(v122);
  }

  v31 = v114;
  outlined init with copy of MLTrainingSessionParameters(v2, v114, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v31, v113);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v116 = *v31;
      v33 = NLModelConfigurationOptionsKeyRevision;
      v34 = *(v31 + 8);
      *&v120 = NLModelConfigurationOptionsKeyRevision;
      v35 = type metadata accessor for NLModelConfigurationOptionsKey(0);
      v36 = lazy protocol witness table accessor for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
      v33;
      v115 = v35;
      v37 = v35;
      v38 = v36;
      AnyHashable.init<A>(_:)(&v120, v37, v36);
      if (v34)
      {
        specialized Dictionary._Variant.removeValue(forKey:)(v122);
        outlined destroy of AnyHashable(v122);
        outlined destroy of Any?(&v120);
      }

      else
      {
        v121 = &type metadata for Int;
        *&v120 = v116;
        outlined init with take of Any(&v120, v119);
        v51 = v118;
        v52 = swift_isUniquelyReferenced_nonNull_native(v118);
        v117 = v51;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v52);
        v118 = v117;
        outlined destroy of AnyHashable(v122);
      }

      v53 = &NLModelConfigurationOptionsKeyUseCRF;
      goto LABEL_18;
    }

    v44 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
    v113 = *(v31 + v44);
    v45 = *(v31 + v44 + 8);
    outlined init with take of MLTextClassifier.FeatureExtractorType(v31, v13);
    v46 = NLModelConfigurationOptionsKeyRevision;
    *&v120 = NLModelConfigurationOptionsKeyRevision;
    v47 = type metadata accessor for NLModelConfigurationOptionsKey(0);
    v48 = lazy protocol witness table accessor for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
    v46;
    v116 = v47;
    v49 = v47;
    v50 = v48;
    AnyHashable.init<A>(_:)(&v120, v49, v48);
    if (v45)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(v122);
      outlined destroy of AnyHashable(v122);
      outlined destroy of Any?(&v120);
    }

    else
    {
      v121 = &type metadata for Int;
      *&v120 = v113;
      outlined init with take of Any(&v120, v119);
      v59 = v118;
      v60 = swift_isUniquelyReferenced_nonNull_native(v118);
      v117 = v59;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v60);
      v118 = v117;
      outlined destroy of AnyHashable(v122);
    }

    *&v120 = NLModelConfigurationOptionsKeyUseTransfer;
    NLModelConfigurationOptionsKeyUseTransfer;
    AnyHashable.init<A>(_:)(&v120, v116, v50);
    v121 = &type metadata for Bool;
    LOBYTE(v120) = 1;
    outlined init with take of Any(&v120, v119);
    v61 = v118;
    v62 = swift_isUniquelyReferenced_nonNull_native(v118);
    v114 = v50;
    v117 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v62);
    v118 = v117;
    outlined destroy of AnyHashable(v122);
    v63 = v115;
    v64 = v107;
    outlined init with copy of MLTrainingSessionParameters(v115, v107, type metadata accessor for MLTextClassifier.FeatureExtractorType);
    v65 = v110;
    switch(__swift_getEnumTagSinglePayload(v64, 4, v110))
    {
      case 0u:
        v67 = v64;
        v68 = v112;
        (*(v111 + 32))(v112, v67, v65);
        *&v120 = NLModelConfigurationOptionsKeyEmbeddingType;
        NLModelConfigurationOptionsKeyEmbeddingType;
        AnyHashable.init<A>(_:)(&v120, v116, v114);
        v69 = NLModelEmbeddingTypeCustom;
        v121 = type metadata accessor for NLModelEmbeddingType(0);
        *&v120 = v69;
        outlined init with take of Any(&v120, v119);
        v69;
        v70 = v118;
        v71 = swift_isUniquelyReferenced_nonNull_native(v118);
        v117 = v70;
        v72 = v68;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v71);
        v73 = v117;
        v118 = v117;
        outlined destroy of AnyHashable(v122);
        v74 = URL.pathExtension.getter();
        v76 = v75;
        v113 = v73;
        if (v74 ^ 0x6C65646F6D6C6DLL | v75 ^ 0xE700000000000000)
        {
          v83 = _stringCompareWithSmolCheck(_:_:expecting:)(v74, v75, 0x6C65646F6D6C6DLL, 0xE700000000000000, 0);
          v76;
          if ((v83 & 1) == 0)
          {
            *&v120 = NLModelConfigurationOptionsKeyEmbeddingURL;
            NLModelConfigurationOptionsKeyEmbeddingURL;
            AnyHashable.init<A>(_:)(&v120, v116, v114);
            v99 = v72;
            v100 = v110;
            v121 = v110;
            v101 = __swift_allocate_boxed_opaque_existential_0(&v120);
            v102 = v99;
            v103 = v111;
            (*(v111 + 16))(v101, v102, v100);
            outlined init with take of Any(&v120, v119);
            v104 = v118;
            v105 = swift_isUniquelyReferenced_nonNull_native(v118);
            v117 = v104;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v105);
            v58 = v117;
            outlined destroy of AnyHashable(v122);
            (*(v103 + 8))(v112, v100);
            goto LABEL_35;
          }
        }

        else
        {
          v75;
        }

        v84 = objc_opt_self(MLModel);
        URL._bridgeToObjectiveC()(v84);
        v86 = v85;
        v81.super.isa = v122;
        v122[0] = 0;
        v87 = [(NSURL *)v84 compileModelAtURL:v85 error:v122];
        v88 = v87;

        v89 = v122[0];
        if (!v88)
        {
          v98 = v122[0];

          _convertNSErrorToError(_:)(v89);

          swift_willThrow(v98, "compileModelAtURL:error:");
          (*(v111 + 8))(v112, v110);
          outlined destroy of MLTextClassifier.FeatureExtractorType(v115);
          return v81.super.isa;
        }

        v90 = v108;
        static URL._unconditionallyBridgeFromObjectiveC(_:)(v88);
        v89;

        *&v120 = NLModelConfigurationOptionsKeyEmbeddingURL;
        NLModelConfigurationOptionsKeyEmbeddingURL;
        AnyHashable.init<A>(_:)(&v120, v116, v114);
        v91 = v110;
        v121 = v110;
        v92 = __swift_allocate_boxed_opaque_existential_0(&v120);
        v93 = v90;
        v94 = v111;
        (*(v111 + 16))(v92, v93, v91);
        outlined init with take of Any(&v120, v119);
        v95 = v118;
        v96 = swift_isUniquelyReferenced_nonNull_native(v118);
        v117 = v95;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v96);
        v58 = v117;
        outlined destroy of AnyHashable(v122);
        v97 = *(v94 + 8);
        v97(v108, v91);
        v97(v112, v91);
LABEL_35:
        v80 = v115;
        goto LABEL_27;
      case 1u:
        *&v120 = NLModelConfigurationOptionsKeyEmbeddingType;
        NLModelConfigurationOptionsKeyEmbeddingType;
        AnyHashable.init<A>(_:)(&v120, v116, v114);
        v66 = &NLModelEmbeddingTypeStatic;
        goto LABEL_26;
      case 2u:
      case 3u:
        *&v120 = NLModelConfigurationOptionsKeyEmbeddingType;
        NLModelConfigurationOptionsKeyEmbeddingType;
        AnyHashable.init<A>(_:)(&v120, v116, v114);
        v66 = &NLModelEmbeddingTypeDynamic;
        goto LABEL_26;
      case 4u:
        *&v120 = NLModelConfigurationOptionsKeyEmbeddingType;
        NLModelConfigurationOptionsKeyEmbeddingType;
        AnyHashable.init<A>(_:)(&v120, v116, v114);
        v66 = &NLModelEmbeddingTypeContextual;
LABEL_26:
        v77 = *v66;
        v121 = type metadata accessor for NLModelEmbeddingType(0);
        *&v120 = v77;
        outlined init with take of Any(&v120, v119);
        v77;
        v78 = v118;
        v79 = swift_isUniquelyReferenced_nonNull_native(v118);
        v117 = v78;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v79);
        v58 = v117;
        outlined destroy of AnyHashable(v122);
        v80 = v63;
LABEL_27:
        outlined destroy of MLTextClassifier.FeatureExtractorType(v80);
        goto LABEL_28;
    }
  }

  v116 = *v31;
  v39 = NLModelConfigurationOptionsKeyRevision;
  v40 = *(v31 + 8);
  *&v120 = NLModelConfigurationOptionsKeyRevision;
  v41 = type metadata accessor for NLModelConfigurationOptionsKey(0);
  v42 = lazy protocol witness table accessor for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
  v39;
  v115 = v41;
  v43 = v41;
  v38 = v42;
  AnyHashable.init<A>(_:)(&v120, v43, v42);
  if (v40)
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v122);
    outlined destroy of AnyHashable(v122);
    outlined destroy of Any?(&v120);
  }

  else
  {
    v121 = &type metadata for Int;
    *&v120 = v116;
    outlined init with take of Any(&v120, v119);
    v54 = v118;
    v55 = swift_isUniquelyReferenced_nonNull_native(v118);
    v117 = v54;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v55);
    v118 = v117;
    outlined destroy of AnyHashable(v122);
  }

  v53 = &NLModelConfigurationOptionsKeyUseMaxEnt;
LABEL_18:
  *&v120 = *v53;
  v120;
  AnyHashable.init<A>(_:)(&v120, v115, v38);
  v121 = &type metadata for Bool;
  LOBYTE(v120) = 1;
  outlined init with take of Any(&v120, v119);
  v56 = v118;
  v57 = swift_isUniquelyReferenced_nonNull_native(v118);
  v117 = v56;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, v122, v57);
  v58 = v117;
  outlined destroy of AnyHashable(v122);
LABEL_28:
  v81.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v58;
  return v81.super.isa;
}

uint64_t outlined init with take of MLTextClassifier.FeatureExtractorType(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = a2(255);
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

void AnyTreeClassifierModel.export(internalMetadata:)()
{
  v132 = v0;
  v126 = type metadata accessor for FeatureType(0);
  v125 = *(v126 - 8);
  v3 = *(v125 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v139 = &v113;
  v127 = type metadata accessor for TreeEnsembleClassifierConfiguration.ClassLabels(0);
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
  v134 = type metadata accessor for TreeEnsembleClassifierConfiguration(0);
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
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, "ressorModel.swift" + 0x8000000000000000, "CreateML/AnyTreeClassifierModel+CoreML.swift", 44, 2, 11, 0);
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
  v60 = type metadata accessor for AnyTreeClassifierModel(0);
  v61 = v137 + *(v60 + 24);
  v62 = v147;
  BaseTreeClassifierModel.export(to:)(v58);
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
  if (v131 != enum case for ModelKind.treeEnsembleClassifier(_:))
  {
    (*(v74 + 8))(v72, v73);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001BLL, "ClassifierModel+CoreML.swift" + 0x8000000000000000, "CreateML/AnyTreeClassifierModel+CoreML.swift", 44, 2, 32, 0);
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
    v79(v78, enum case for TreeEnsembleClassifierConfiguration.ClassLabels.int(_:), v127);
    v76;
    TreeEnsembleClassifierConfiguration.classLabels.setter(v78);
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
    v79(v78, enum case for TreeEnsembleClassifierConfiguration.ClassLabels.string(_:), v127);
    v76;
    TreeEnsembleClassifierConfiguration.classLabels.setter(v78);
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
  $defer #1 () in AnyTreeClassifierModel.export(internalMetadata:)();
  (v144)(v112, v138);
}