id MLClassifier.model.getter()
{
  v30 = v0;
  v31 = type metadata accessor for MLSupportVectorClassifier(0);
  v1 = *(*(v31 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v32 = v29;
  v33 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v4 = *(*(v33 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v34 = v29;
  v35 = type metadata accessor for MLRandomForestClassifier(0);
  v7 = *(*(v35 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v36 = v29;
  v10 = type metadata accessor for MLDecisionTreeClassifier(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v37 = v29;
  v14 = type metadata accessor for MLBoostedTreeClassifier(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = type metadata accessor for MLClassifier(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  outlined init with copy of MLTrainingSessionParameters(v30, v29, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(v29, v18))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v29, v29, type metadata accessor for MLBoostedTreeClassifier);
      v22 = *&v29[*(v14 + 20)];
      outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for MLBoostedTreeClassifier);
      return v22;
    case 1u:
      v24 = type metadata accessor for MLDecisionTreeClassifier;
      v25 = v37;
      outlined init with take of MLClassifierMetrics(v29, v37, type metadata accessor for MLDecisionTreeClassifier);
      v27 = *(v10 + 20);
      goto LABEL_8;
    case 2u:
      v24 = type metadata accessor for MLRandomForestClassifier;
      v25 = v36;
      outlined init with take of MLClassifierMetrics(v29, v36, type metadata accessor for MLRandomForestClassifier);
      v26 = v35;
      goto LABEL_6;
    case 3u:
      v24 = type metadata accessor for MLLogisticRegressionClassifier;
      v25 = v34;
      outlined init with take of MLClassifierMetrics(v29, v34, type metadata accessor for MLLogisticRegressionClassifier);
      v26 = v33;
      goto LABEL_6;
    case 4u:
      v24 = type metadata accessor for MLSupportVectorClassifier;
      v25 = v32;
      outlined init with take of MLClassifierMetrics(v29, v32, type metadata accessor for MLSupportVectorClassifier);
      v26 = v31;
LABEL_6:
      v27 = *(v26 + 20);
LABEL_8:
      v28 = *(v25 + v27);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, v24);
      return v28;
  }
}

uint64_t MLClassifier.trainingMetrics.getter()
{
  v32 = v1;
  v40 = v0;
  v34 = type metadata accessor for MLSupportVectorClassifier(0);
  v2 = *(*(v34 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v33 = &v32;
  v36 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v5 = *(*(v36 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v35 = &v32;
  v8 = type metadata accessor for MLRandomForestClassifier(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v37 = &v32;
  v12 = type metadata accessor for MLDecisionTreeClassifier(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v38 = &v32;
  v16 = type metadata accessor for MLBoostedTreeClassifier(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v39 = &v32;
  v20 = type metadata accessor for MLClassifier(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLTrainingSessionParameters(v32, &v32, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v32, v20))
  {
    case 0u:
      v24 = v39;
      outlined init with take of MLClassifierMetrics(&v32, v39, type metadata accessor for MLBoostedTreeClassifier);
      outlined init with copy of MLTrainingSessionParameters(v24 + *(v16 + 36), v40, type metadata accessor for MLClassifierMetrics);
      v25 = v24;
      v26 = type metadata accessor for MLBoostedTreeClassifier;
      return outlined destroy of MLActivityClassifier.ModelParameters(v25, v26);
    case 1u:
      v27 = type metadata accessor for MLDecisionTreeClassifier;
      v28 = v38;
      outlined init with take of MLClassifierMetrics(&v32, v38, type metadata accessor for MLDecisionTreeClassifier);
      v30 = *(v12 + 36);
      goto LABEL_8;
    case 2u:
      v27 = type metadata accessor for MLRandomForestClassifier;
      v28 = v37;
      outlined init with take of MLClassifierMetrics(&v32, v37, type metadata accessor for MLRandomForestClassifier);
      v30 = *(v8 + 36);
      goto LABEL_8;
    case 3u:
      v27 = type metadata accessor for MLLogisticRegressionClassifier;
      v28 = v35;
      outlined init with take of MLClassifierMetrics(&v32, v35, type metadata accessor for MLLogisticRegressionClassifier);
      v29 = v36;
      goto LABEL_6;
    case 4u:
      v27 = type metadata accessor for MLSupportVectorClassifier;
      v28 = v33;
      outlined init with take of MLClassifierMetrics(&v32, v33, type metadata accessor for MLSupportVectorClassifier);
      v29 = v34;
LABEL_6:
      v30 = *(v29 + 36);
LABEL_8:
      outlined init with copy of MLTrainingSessionParameters(v28 + v30, v40, type metadata accessor for MLClassifierMetrics);
      v25 = v28;
      v26 = v27;
      return outlined destroy of MLActivityClassifier.ModelParameters(v25, v26);
  }
}

uint64_t MLClassifier.validationMetrics.getter()
{
  v32 = v1;
  v40 = v0;
  v34 = type metadata accessor for MLSupportVectorClassifier(0);
  v2 = *(*(v34 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v33 = &v32;
  v36 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v5 = *(*(v36 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v35 = &v32;
  v8 = type metadata accessor for MLRandomForestClassifier(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v37 = &v32;
  v12 = type metadata accessor for MLDecisionTreeClassifier(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v38 = &v32;
  v16 = type metadata accessor for MLBoostedTreeClassifier(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v39 = &v32;
  v20 = type metadata accessor for MLClassifier(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLTrainingSessionParameters(v32, &v32, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v32, v20))
  {
    case 0u:
      v24 = v39;
      outlined init with take of MLClassifierMetrics(&v32, v39, type metadata accessor for MLBoostedTreeClassifier);
      outlined init with copy of MLTrainingSessionParameters(v24 + *(v16 + 40), v40, type metadata accessor for MLClassifierMetrics);
      v25 = v24;
      v26 = type metadata accessor for MLBoostedTreeClassifier;
      return outlined destroy of MLActivityClassifier.ModelParameters(v25, v26);
    case 1u:
      v27 = type metadata accessor for MLDecisionTreeClassifier;
      v28 = v38;
      outlined init with take of MLClassifierMetrics(&v32, v38, type metadata accessor for MLDecisionTreeClassifier);
      v30 = *(v12 + 40);
      goto LABEL_8;
    case 2u:
      v27 = type metadata accessor for MLRandomForestClassifier;
      v28 = v37;
      outlined init with take of MLClassifierMetrics(&v32, v37, type metadata accessor for MLRandomForestClassifier);
      v30 = *(v8 + 40);
      goto LABEL_8;
    case 3u:
      v27 = type metadata accessor for MLLogisticRegressionClassifier;
      v28 = v35;
      outlined init with take of MLClassifierMetrics(&v32, v35, type metadata accessor for MLLogisticRegressionClassifier);
      v29 = v36;
      goto LABEL_6;
    case 4u:
      v27 = type metadata accessor for MLSupportVectorClassifier;
      v28 = v33;
      outlined init with take of MLClassifierMetrics(&v32, v33, type metadata accessor for MLSupportVectorClassifier);
      v29 = v34;
LABEL_6:
      v30 = *(v29 + 40);
LABEL_8:
      outlined init with copy of MLTrainingSessionParameters(v28 + v30, v40, type metadata accessor for MLClassifierMetrics);
      v25 = v28;
      v26 = v27;
      return outlined destroy of MLActivityClassifier.ModelParameters(v25, v26);
  }
}

uint64_t MLClassifier.targetColumn.getter()
{
  v32 = v0;
  v33 = type metadata accessor for MLSupportVectorClassifier(0);
  v1 = *(*(v33 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v34 = v31;
  v35 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v4 = *(*(v35 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v36 = v31;
  v37 = type metadata accessor for MLRandomForestClassifier(0);
  v7 = *(*(v37 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v38 = v31;
  v10 = type metadata accessor for MLDecisionTreeClassifier(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v39 = v31;
  v14 = type metadata accessor for MLBoostedTreeClassifier(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = type metadata accessor for MLClassifier(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  outlined init with copy of MLTrainingSessionParameters(v32, v31, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(v31, v18))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v31, v31, type metadata accessor for MLBoostedTreeClassifier);
      v22 = *(v14 + 24);
      v23 = *&v31[v22];
      *&v31[v22 + 8];
      v24 = v31;
      v25 = type metadata accessor for MLBoostedTreeClassifier;
      goto LABEL_9;
    case 1u:
      v26 = type metadata accessor for MLDecisionTreeClassifier;
      v27 = v39;
      outlined init with take of MLClassifierMetrics(v31, v39, type metadata accessor for MLDecisionTreeClassifier);
      v29 = *(v10 + 24);
      goto LABEL_8;
    case 2u:
      v26 = type metadata accessor for MLRandomForestClassifier;
      v27 = v38;
      outlined init with take of MLClassifierMetrics(v31, v38, type metadata accessor for MLRandomForestClassifier);
      v28 = v37;
      goto LABEL_6;
    case 3u:
      v26 = type metadata accessor for MLLogisticRegressionClassifier;
      v27 = v36;
      outlined init with take of MLClassifierMetrics(v31, v36, type metadata accessor for MLLogisticRegressionClassifier);
      v28 = v35;
      goto LABEL_6;
    case 4u:
      v26 = type metadata accessor for MLSupportVectorClassifier;
      v27 = v34;
      outlined init with take of MLClassifierMetrics(v31, v34, type metadata accessor for MLSupportVectorClassifier);
      v28 = v33;
LABEL_6:
      v29 = *(v28 + 24);
LABEL_8:
      v23 = *(v27 + v29);
      *(v27 + v29 + 8);
      v24 = v27;
      v25 = v26;
LABEL_9:
      outlined destroy of MLActivityClassifier.ModelParameters(v24, v25);
      return v23;
  }
}

uint64_t MLClassifier.featureColumns.getter()
{
  v31 = v0;
  v32 = type metadata accessor for MLSupportVectorClassifier(0);
  v1 = *(*(v32 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v33 = v30;
  v34 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v4 = *(*(v34 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v35 = v30;
  v36 = type metadata accessor for MLRandomForestClassifier(0);
  v7 = *(*(v36 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v37 = v30;
  v10 = type metadata accessor for MLDecisionTreeClassifier(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v38 = v30;
  v14 = type metadata accessor for MLBoostedTreeClassifier(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = type metadata accessor for MLClassifier(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  outlined init with copy of MLTrainingSessionParameters(v31, v30, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(v30, v18))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v30, v30, type metadata accessor for MLBoostedTreeClassifier);
      v22 = *&v30[*(v14 + 28)];
      v22;
      v23 = v30;
      v24 = type metadata accessor for MLBoostedTreeClassifier;
      goto LABEL_9;
    case 1u:
      v25 = type metadata accessor for MLDecisionTreeClassifier;
      v26 = v38;
      outlined init with take of MLClassifierMetrics(v30, v38, type metadata accessor for MLDecisionTreeClassifier);
      v28 = *(v10 + 28);
      goto LABEL_8;
    case 2u:
      v25 = type metadata accessor for MLRandomForestClassifier;
      v26 = v37;
      outlined init with take of MLClassifierMetrics(v30, v37, type metadata accessor for MLRandomForestClassifier);
      v27 = v36;
      goto LABEL_6;
    case 3u:
      v25 = type metadata accessor for MLLogisticRegressionClassifier;
      v26 = v35;
      outlined init with take of MLClassifierMetrics(v30, v35, type metadata accessor for MLLogisticRegressionClassifier);
      v27 = v34;
      goto LABEL_6;
    case 4u:
      v25 = type metadata accessor for MLSupportVectorClassifier;
      v26 = v33;
      outlined init with take of MLClassifierMetrics(v30, v33, type metadata accessor for MLSupportVectorClassifier);
      v27 = v32;
LABEL_6:
      v28 = *(v27 + 28);
LABEL_8:
      v22 = *(v26 + v28);
      v22;
      v23 = v26;
      v24 = v25;
LABEL_9:
      outlined destroy of MLActivityClassifier.ModelParameters(v23, v24);
      return v22;
  }
}

unint64_t MLClassifier.description.getter()
{
  return MLClassifier.description.getter();
}

{
  v1 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v29 = &v29;
  v4 = *(*(type metadata accessor for MLLogisticRegressionClassifier(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v30 = &v29;
  v7 = *(*(type metadata accessor for MLRandomForestClassifier(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v31 = &v29;
  v10 = *(*(type metadata accessor for MLDecisionTreeClassifier(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *(*(type metadata accessor for MLBoostedTreeClassifier(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = type metadata accessor for MLClassifier(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  outlined init with copy of MLTrainingSessionParameters(v0, &v29, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v29, v16))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(&v29, &v29, type metadata accessor for MLBoostedTreeClassifier);
      v20 = MLBoostedTreeClassifier.debugDescription.getter();
      v21 = &v29;
      v22 = type metadata accessor for MLBoostedTreeClassifier;
      goto LABEL_9;
    case 1u:
      v23 = type metadata accessor for MLDecisionTreeClassifier;
      outlined init with take of MLClassifierMetrics(&v29, &v29, type metadata accessor for MLDecisionTreeClassifier);
      v20 = MLDecisionTreeClassifier.debugDescription.getter();
      v21 = &v29;
      goto LABEL_8;
    case 2u:
      v23 = type metadata accessor for MLRandomForestClassifier;
      v24 = v31;
      outlined init with take of MLClassifierMetrics(&v29, v31, type metadata accessor for MLRandomForestClassifier);
      v26 = MLRandomForestClassifier.debugDescription.getter();
      goto LABEL_6;
    case 3u:
      v23 = type metadata accessor for MLLogisticRegressionClassifier;
      v24 = v30;
      v27 = v30;
      outlined init with take of MLClassifierMetrics(&v29, v30, type metadata accessor for MLLogisticRegressionClassifier);
      v26 = MLLogisticRegressionClassifier.debugDescription.getter(&v29, v27);
      goto LABEL_6;
    case 4u:
      v23 = type metadata accessor for MLSupportVectorClassifier;
      v24 = v29;
      v25 = v29;
      outlined init with take of MLClassifierMetrics(&v29, v29, type metadata accessor for MLSupportVectorClassifier);
      v26 = MLSupportVectorClassifier.debugDescription.getter(&v29, v25);
LABEL_6:
      v20 = v26;
      v21 = v24;
LABEL_8:
      v22 = v23;
LABEL_9:
      outlined destroy of MLActivityClassifier.ModelParameters(v21, v22);
      return v20;
  }
}

uint64_t MLClassifier.playgroundDescription.getter()
{
  v46 = v0;
  v2 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v43 = &v42;
  v5 = *(*(type metadata accessor for MLLogisticRegressionClassifier(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v44 = &v42;
  v8 = *(*(type metadata accessor for MLRandomForestClassifier(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v45 = &v42;
  v11 = *(*(type metadata accessor for MLDecisionTreeClassifier(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *(*(type metadata accessor for MLBoostedTreeClassifier(0) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = type metadata accessor for MLClassifier(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  outlined init with copy of MLTrainingSessionParameters(v1, &v42, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v42, v17))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(&v42, &v42, type metadata accessor for MLBoostedTreeClassifier);
      v21 = type metadata accessor for NSAttributedString();
      v22._countAndFlagsBits = MLBoostedTreeClassifier.debugDescription.getter();
      v22._object = v23;
      v24.super.isa = NSAttributedString.__allocating_init(string:)(v22).super.isa;
      v25 = v46;
      v46[3].super.isa = v21;
      v25->super.isa = v24.super.isa;
      v26 = &v42;
      v27 = type metadata accessor for MLBoostedTreeClassifier;
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, v27);
    case 1u:
      v28 = type metadata accessor for MLDecisionTreeClassifier;
      outlined init with take of MLClassifierMetrics(&v42, &v42, type metadata accessor for MLDecisionTreeClassifier);
      v36 = type metadata accessor for NSAttributedString();
      v37._countAndFlagsBits = MLDecisionTreeClassifier.debugDescription.getter();
      v37._object = v38;
      v39.super.isa = NSAttributedString.__allocating_init(string:)(v37).super.isa;
      v40 = v46;
      v46[3].super.isa = v36;
      v40->super.isa = v39.super.isa;
      v26 = &v42;
      goto LABEL_8;
    case 2u:
      v28 = type metadata accessor for MLRandomForestClassifier;
      v29 = v45;
      outlined init with take of MLClassifierMetrics(&v42, v45, type metadata accessor for MLRandomForestClassifier);
      v31 = type metadata accessor for NSAttributedString();
      v32._countAndFlagsBits = MLRandomForestClassifier.debugDescription.getter();
      goto LABEL_6;
    case 3u:
      v28 = type metadata accessor for MLLogisticRegressionClassifier;
      v29 = v44;
      v33 = v44;
      outlined init with take of MLClassifierMetrics(&v42, v44, type metadata accessor for MLLogisticRegressionClassifier);
      v31 = type metadata accessor for NSAttributedString();
      v32._countAndFlagsBits = MLLogisticRegressionClassifier.debugDescription.getter(0, v33);
      goto LABEL_6;
    case 4u:
      v28 = type metadata accessor for MLSupportVectorClassifier;
      v29 = v43;
      v30 = v43;
      outlined init with take of MLClassifierMetrics(&v42, v43, type metadata accessor for MLSupportVectorClassifier);
      v31 = type metadata accessor for NSAttributedString();
      v32._countAndFlagsBits = MLSupportVectorClassifier.debugDescription.getter(0, v30);
LABEL_6:
      v34.super.isa = NSAttributedString.__allocating_init(string:)(v32).super.isa;
      v35 = v46;
      v46[3].super.isa = v31;
      v35->super.isa = v34.super.isa;
      v26 = v29;
LABEL_8:
      v27 = v28;
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, v27);
  }
}

uint64_t outlined destroy of DataFrame?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t type metadata accessor for MLClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLClassifier;
  if (!type metadata singleton initialization cache for MLClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLClassifier);
  }

  return result;
}

uint64_t sub_67DF1()
{
  v1 = type metadata accessor for DataFrame(0);
  v2 = *(v1 - 8);
  v30 = *(v2 + 80);
  v3 = ~*(v2 + 80) & (v30 + 16);
  v4 = v3 + *(v2 + 64);
  v5 = type metadata accessor for MLSupportVectorClassifier(0);
  v6 = *(v5 - 8);
  v31 = *(v6 + 80);
  v7 = ~v31 & (v31 + v4);
  v32 = *(v6 + 64);
  v35 = v1;
  v8 = v1;
  v9 = v5;
  v34 = *(v2 + 8);
  v34(v0 + v3, v8);
  v10 = v7 + v0;
  *(v0 + v7 + 8);
  *(v0 + v7 + 16);
  v29 = v0;
  *(v0 + v7 + 32);
  v11 = v7 + v0 + *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v13 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (swift_getEnumCaseMultiPayload(v11, v12) == 1)
  {
    v13 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledName(v13);
  (*(*(v14 - 8) + 8))(v11, v14);

  *(v9[6] + v10 + 8);
  *(v9[7] + v10);
  v15 = v9[8];
  if (*(v15 + v10 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v10 + v15 + 8));
  }

  v16 = (v10 + v9[9]);
  v17 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v16, v17);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v16;
      break;
    case 1:
      v33 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v34(v16 + *(v33 + 20), v35);
      v34(v16 + *(v33 + 24), v35);
      break;
    case 0:
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v16, v19) == 1)
      {
        v20 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v20 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v21 = __swift_instantiateConcreteTypeFromMangledName(v20);
      (*(*(v21 - 8) + 8))(v16, v21);
      break;
  }

  v22 = (v9[10] + v10);
  v23 = swift_getEnumCaseMultiPayload(v22, v17);
  switch(v23)
  {
    case 2:
      *v22;
      break;
    case 1:
      v26 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v34(v22 + *(v26 + 20), v35);
      v34(v22 + *(v26 + 24), v35);
      break;
    case 0:
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v22, v24) == 1)
      {
        v25 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v25 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v27 = __swift_instantiateConcreteTypeFromMangledName(v25);
      (*(*(v27 - 8) + 8))(v22, v27);
      break;
  }

  return swift_deallocObject(v29, v32 + v7, v31 | v30 | 7);
}

uint64_t partial apply for closure #1 in MLSupportVectorClassifier.predictions(from:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DataFrame(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 80);
  v7 = swift_task_alloc(48);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLSupportVectorClassifier.predictions(from:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

void *initializeBufferWithCopyOfBuffer for MLClassifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v4 + 16) & ~v4));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    *a1 = *a2;
    v6 = a2[1];
    a1[1] = v6;
    v7 = a1 + 2;
    v8 = a2 + 2;
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v9 = *v8;
        v6;
        if (v9)
        {
          a1[2] = v9;
          v10 = a2;
          a1[3] = a2[3];
          v11 = a2[4];
          a1[4] = v11;
          v9;
          v11;
        }

        else
        {
          a1[4] = a2[4];
          *v7 = *v8;
          v10 = a2;
        }

        v102 = type metadata accessor for AnyTreeClassifierModel(0);
        v103 = *(v102 + 24);
        v104 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v104 - 8) + 16))(a1 + v103, &v10[v103], v104);
        v105 = *(v102 + 28);
        v275 = *&v10[v105];
        v106 = v10[v105 + 8];
        *(a1 + v105) = v275;
        *(a1 + v105 + 8) = v106;
        v107 = type metadata accessor for MLBoostedTreeClassifier(0);
        v108 = v107[5];
        v334 = *&v10[v108];
        *(a1 + v108) = v334;
        v109 = v107[6];
        *(a1 + v109) = *&v10[v109];
        v263 = *&v10[v109 + 8];
        *(a1 + v109 + 8) = v263;
        v110 = v107[7];
        v298 = *&v10[v110];
        *(a1 + v110) = v298;
        v316 = v107;
        v111 = v107[8];
        v112 = a1 + v111;
        v113 = &v10[v111];
        v114 = *&v10[v111 + 24];
        v275;
        v334;
        v263;
        v298;
        if (v114)
        {
          *(v112 + 3) = v114;
          (**(v114 - 8))(v112, v113, v114);
        }

        else
        {
          v130 = *v113;
          *(v112 + 1) = *(v113 + 1);
          *v112 = v130;
        }

        *(v112 + 2) = *(v113 + 2);
        *(v112 + 3) = *(v113 + 3);
        *(v112 + 4) = *(v113 + 4);
        *(v112 + 10) = *(v113 + 10);
        v112[88] = v113[88];
        *(v112 + 6) = *(v113 + 6);
        v131 = v316[9];
        v132 = (a1 + v131);
        v133 = &v10[v131];
        v134 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v135 = swift_getEnumCaseMultiPayload(v133, v134);
        v277 = v135;
        if (v135 == 2)
        {
          v156 = *v133;
          swift_errorRetain(v156);
          *v132 = v156;
        }

        else if (v135 == 1)
        {
          *v132 = *v133;
          v265 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v336 = v132;
          v136 = v265[5];
          v256 = v336 + v136;
          v300 = v134;
          v137 = type metadata accessor for DataFrame(0);
          v138 = *(*(v137 - 8) + 16);
          v139 = v133 + v136;
          v132 = v336;
          v138(v256, v139, v137);
          v140 = v137;
          v134 = v300;
          v138(v336 + v265[6], v133 + v265[6], v140);
          v10 = a2;
        }

        else
        {
          v289 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v210 = swift_getEnumCaseMultiPayload(v133, v289);
          v308 = v210 == 1;
          v211 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v210 == 1)
          {
            v211 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v212 = __swift_instantiateConcreteTypeFromMangledName(v211);
          (*(*(v212 - 8) + 16))(v132, v133, v212);
          swift_storeEnumTagMultiPayload(v132, v289, v308);
        }

        swift_storeEnumTagMultiPayload(v132, v134, v277);
        v213 = v316[10];
        v214 = (v3 + v213);
        v215 = &v10[v213];
        v216 = swift_getEnumCaseMultiPayload(v215, v134);
        if (v216 == 2)
        {
          v222 = *v215;
          swift_errorRetain(v222);
          *v214 = v222;
          goto LABEL_96;
        }

        v290 = v216;
        if (v216 == 1)
        {
          *v214 = *v215;
          v282 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v217 = *(v282 + 20);
          v343 = v214 + v217;
          v309 = v134;
          v218 = type metadata accessor for DataFrame(0);
          v324 = v214;
          v219 = *(*(v218 - 8) + 16);
          v220 = v215 + v217;
          v216 = 1;
          v219(v343, v220, v218);
          v221 = v218;
          v134 = v309;
          v219(v324 + *(v282 + 24), v215 + *(v282 + 24), v221);
          v214 = v324;
LABEL_96:
          v223 = a3;
          goto LABEL_108;
        }

        v326 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v237 = swift_getEnumCaseMultiPayload(v215, v326);
        v238 = v237 == 1;
        v239 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v237 == 1)
        {
          v239 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v240 = __swift_instantiateConcreteTypeFromMangledName(v239);
        (*(*(v240 - 8) + 16))(v214, v215, v240);
        swift_storeEnumTagMultiPayload(v214, v326, v238);
        v223 = a3;
        v216 = v290;
LABEL_108:
        swift_storeEnumTagMultiPayload(v214, v134, v216);
        v241 = v3;
        v242 = v223;
        v243 = 0;
        goto LABEL_114;
      case 1:
        v36 = *v8;
        v6;
        if (v36)
        {
          a1[2] = v36;
          v37 = a2;
          a1[3] = a2[3];
          v38 = a2[4];
          a1[4] = v38;
          v36;
          v38;
        }

        else
        {
          a1[4] = a2[4];
          *v7 = *v8;
          v37 = a2;
        }

        v115 = type metadata accessor for AnyTreeClassifierModel(0);
        v116 = *(v115 + 24);
        v117 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v117 - 8) + 16))(a1 + v116, &v37[v116], v117);
        v118 = *(v115 + 28);
        v299 = *&v37[v118];
        v119 = v37[v118 + 8];
        *(a1 + v118) = v299;
        *(a1 + v118 + 8) = v119;
        v120 = type metadata accessor for MLDecisionTreeClassifier(0);
        v121 = v120[5];
        v264 = *&v37[v121];
        *(a1 + v121) = v264;
        v122 = v120[6];
        *(a1 + v122) = *&v37[v122];
        v123 = *&v37[v122 + 8];
        *(a1 + v122 + 8) = v123;
        v124 = v120[7];
        v335 = *&v37[v124];
        *(a1 + v124) = v335;
        v317 = v120;
        v125 = v120[8];
        v126 = v37;
        v127 = a1 + v125;
        v276 = v126 + v125;
        v128 = (v126 + v125 + 8);
        v255 = (a1 + v125 + 8);
        *(a1 + v125) = *(v126 + v125);
        v129 = *(v126 + v125 + 32);
        v299;
        v264;
        v123;
        v335;
        if (v129)
        {
          *(v127 + 4) = v129;
          (**(v129 - 8))(v255, v128, v129);
        }

        else
        {
          v141 = *v128;
          v255[1] = v128[1];
          *v255 = v141;
        }

        *(v127 + 40) = *(v276 + 40);
        *(v127 + 7) = *(v276 + 56);
        v142 = v317[9];
        v143 = (a1 + v142);
        v144 = a2;
        v145 = (a2 + v142);
        v146 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v147 = swift_getEnumCaseMultiPayload(v145, v146);
        v278 = v147;
        if (v147 == 2)
        {
          v157 = *v145;
          swift_errorRetain(v157);
          *v143 = v157;
        }

        else if (v147 == 1)
        {
          *v143 = *v145;
          v266 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v337 = v143;
          v148 = v266[5];
          v257 = v337 + v148;
          v301 = v146;
          v149 = type metadata accessor for DataFrame(0);
          v150 = *(*(v149 - 8) + 16);
          v151 = v145 + v148;
          v143 = v337;
          v150(v257, v151, v149);
          v152 = v149;
          v146 = v301;
          v150(v337 + v266[6], v145 + v266[6], v152);
          v144 = a2;
        }

        else
        {
          v310 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v224 = swift_getEnumCaseMultiPayload(v145, v310);
          v344 = v224 == 1;
          v225 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v224 == 1)
          {
            v225 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v226 = __swift_instantiateConcreteTypeFromMangledName(v225);
          (*(*(v226 - 8) + 16))(v143, v145, v226);
          swift_storeEnumTagMultiPayload(v143, v310, v344);
        }

        swift_storeEnumTagMultiPayload(v143, v146, v278);
        v227 = v317[10];
        v228 = (v3 + v227);
        v229 = (v144 + v227);
        v230 = swift_getEnumCaseMultiPayload(v229, v146);
        if (v230 == 2)
        {
          v236 = *v229;
          swift_errorRetain(v236);
          *v228 = v236;
        }

        else
        {
          v291 = v230;
          if (v230 != 1)
          {
            v327 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
            v244 = swift_getEnumCaseMultiPayload(v229, v327);
            v245 = v244 == 1;
            v246 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
            if (v244 == 1)
            {
              v246 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
            }

            v247 = __swift_instantiateConcreteTypeFromMangledName(v246);
            (*(*(v247 - 8) + 16))(v228, v229, v247);
            swift_storeEnumTagMultiPayload(v228, v327, v245);
            v171 = a3;
            v230 = v291;
            goto LABEL_112;
          }

          *v228 = *v229;
          v283 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v231 = *(v283 + 20);
          v345 = v228 + v231;
          v311 = v146;
          v232 = type metadata accessor for DataFrame(0);
          v325 = v228;
          v233 = *(*(v232 - 8) + 16);
          v234 = v229 + v231;
          v230 = 1;
          v233(v345, v234, v232);
          v235 = v232;
          v146 = v311;
          v233(v325 + *(v283 + 24), v229 + *(v283 + 24), v235);
          v228 = v325;
        }

        v171 = a3;
LABEL_112:
        swift_storeEnumTagMultiPayload(v228, v146, v230);
        v249 = 1;
        goto LABEL_113;
      case 2:
        v30 = *v8;
        v6;
        if (v30)
        {
          a1[2] = v30;
          v31 = a2;
          a1[3] = a2[3];
          v32 = a2[4];
          a1[4] = v32;
          v30;
          v32;
        }

        else
        {
          a1[4] = a2[4];
          *v7 = *v8;
          v31 = a2;
        }

        v51 = type metadata accessor for AnyTreeClassifierModel(0);
        v52 = *(v51 + 24);
        v53 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v53 - 8) + 16))(a1 + v52, &v31[v52], v53);
        v54 = *(v51 + 28);
        v271 = *&v31[v54];
        v55 = v31[v54 + 8];
        *(a1 + v54) = v271;
        *(a1 + v54 + 8) = v55;
        v56 = type metadata accessor for MLRandomForestClassifier(0);
        v57 = v56[5];
        v330 = *&v31[v57];
        *(a1 + v57) = v330;
        v58 = v56[6];
        *(a1 + v58) = *&v31[v58];
        v259 = *&v31[v58 + 8];
        *(a1 + v58 + 8) = v259;
        v59 = v56[7];
        v294 = *&v31[v59];
        *(a1 + v59) = v294;
        v314 = v56;
        v60 = v56[8];
        v61 = a1 + v60;
        v62 = &v31[v60];
        v63 = *&v31[v60 + 24];
        v271;
        v330;
        v259;
        v294;
        if (v63)
        {
          *(v61 + 3) = v63;
          (**(v63 - 8))(v61, v62, v63);
        }

        else
        {
          v64 = *v62;
          *(v61 + 1) = *(v62 + 1);
          *v61 = v64;
        }

        *(v61 + 2) = *(v62 + 2);
        *(v61 + 3) = *(v62 + 3);
        *(v61 + 4) = *(v62 + 4);
        *(v61 + 10) = *(v62 + 10);
        v65 = v314[9];
        v66 = (a1 + v65);
        v67 = &v31[v65];
        v68 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v69 = swift_getEnumCaseMultiPayload(v67, v68);
        v272 = v69;
        if (v69 == 2)
        {
          v154 = *v67;
          swift_errorRetain(v154);
          *v66 = v154;
        }

        else if (v69 == 1)
        {
          *v66 = *v67;
          v260 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v331 = v66;
          v70 = v260[5];
          v252 = v331 + v70;
          v295 = v68;
          v71 = type metadata accessor for DataFrame(0);
          v72 = *(*(v71 - 8) + 16);
          v73 = v67 + v70;
          v66 = v331;
          v72(v252, v73, v71);
          v74 = v71;
          v68 = v295;
          v72(v331 + v260[6], v67 + v260[6], v74);
          v31 = a2;
        }

        else
        {
          v286 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v176 = swift_getEnumCaseMultiPayload(v67, v286);
          v304 = v176 == 1;
          v177 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v176 == 1)
          {
            v177 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v178 = __swift_instantiateConcreteTypeFromMangledName(v177);
          (*(*(v178 - 8) + 16))(v66, v67, v178);
          swift_storeEnumTagMultiPayload(v66, v286, v304);
        }

        swift_storeEnumTagMultiPayload(v66, v68, v272);
        v179 = v314[10];
        v180 = (v3 + v179);
        v181 = &v31[v179];
        v182 = swift_getEnumCaseMultiPayload(v181, v68);
        if (v182 == 2)
        {
          v188 = *v181;
          swift_errorRetain(v188);
          *v180 = v188;
          goto LABEL_72;
        }

        v287 = v182;
        if (v182 == 1)
        {
          *v180 = *v181;
          v280 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v183 = *(v280 + 20);
          v340 = v180 + v183;
          v305 = v68;
          v184 = type metadata accessor for DataFrame(0);
          v320 = v180;
          v185 = *(*(v184 - 8) + 16);
          v186 = v181 + v183;
          v182 = 1;
          v185(v340, v186, v184);
          v187 = v184;
          v68 = v305;
          v185(v320 + *(v280 + 24), v181 + *(v280 + 24), v187);
          v180 = v320;
LABEL_72:
          v171 = a3;
          goto LABEL_76;
        }

        v321 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v189 = swift_getEnumCaseMultiPayload(v181, v321);
        v190 = v189 == 1;
        v191 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v189 == 1)
        {
          v191 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v192 = __swift_instantiateConcreteTypeFromMangledName(v191);
        (*(*(v192 - 8) + 16))(v180, v181, v192);
        swift_storeEnumTagMultiPayload(v180, v321, v190);
        v171 = a3;
        v182 = v287;
LABEL_76:
        swift_storeEnumTagMultiPayload(v180, v68, v182);
        v249 = 2;
        goto LABEL_113;
      case 3:
        v33 = *v8;
        v6;
        if (v33)
        {
          a1[2] = v33;
          v34 = a2;
          a1[3] = a2[3];
          v35 = a2[4];
          a1[4] = v35;
          v33;
          v35;
        }

        else
        {
          a1[4] = a2[4];
          *v7 = *v8;
          v34 = a2;
        }

        v75 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
        v76 = *(v75 + 24);
        v77 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
        (*(*(v77 - 8) + 16))(a1 + v76, &v34[v76], v77);
        v78 = *(v75 + 28);
        v296 = *&v34[v78];
        v79 = v34[v78 + 8];
        *(a1 + v78) = v296;
        *(a1 + v78 + 8) = v79;
        v80 = type metadata accessor for MLLogisticRegressionClassifier(0);
        v81 = v80[5];
        v261 = *&v34[v81];
        *(a1 + v81) = v261;
        v82 = v80[6];
        *(a1 + v82) = *&v34[v82];
        v83 = *&v34[v82 + 8];
        *(a1 + v82 + 8) = v83;
        v84 = v80[7];
        v332 = *&v34[v84];
        *(a1 + v84) = v332;
        v315 = v80;
        v85 = v80[8];
        v86 = v34;
        v87 = a1 + v85;
        v273 = v86 + v85;
        v88 = (v86 + v85 + 8);
        v253 = (a1 + v85 + 8);
        *(a1 + v85) = *(v86 + v85);
        v89 = *(v86 + v85 + 32);
        v296;
        v261;
        v83;
        v332;
        if (v89)
        {
          *(v87 + 4) = v89;
          (**(v89 - 8))(v253, v88, v89);
        }

        else
        {
          v90 = *v88;
          v253[1] = v88[1];
          *v253 = v90;
        }

        *(v87 + 40) = *(v273 + 40);
        *(v87 + 56) = *(v273 + 56);
        v87[72] = *(v273 + 72);
        v91 = v315[9];
        v92 = (a1 + v91);
        v93 = a2;
        v94 = (a2 + v91);
        v95 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v96 = swift_getEnumCaseMultiPayload(v94, v95);
        v274 = v96;
        if (v96 == 2)
        {
          v155 = *v94;
          swift_errorRetain(v155);
          *v92 = v155;
        }

        else if (v96 == 1)
        {
          *v92 = *v94;
          v262 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v333 = v92;
          v97 = v262[5];
          v254 = v333 + v97;
          v297 = v95;
          v98 = type metadata accessor for DataFrame(0);
          v99 = *(*(v98 - 8) + 16);
          v100 = v94 + v97;
          v92 = v333;
          v99(v254, v100, v98);
          v101 = v98;
          v95 = v297;
          v99(v333 + v262[6], v94 + v262[6], v101);
          v93 = a2;
        }

        else
        {
          v306 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v193 = swift_getEnumCaseMultiPayload(v94, v306);
          v341 = v193 == 1;
          v194 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v193 == 1)
          {
            v194 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v195 = __swift_instantiateConcreteTypeFromMangledName(v194);
          (*(*(v195 - 8) + 16))(v92, v94, v195);
          swift_storeEnumTagMultiPayload(v92, v306, v341);
        }

        swift_storeEnumTagMultiPayload(v92, v95, v274);
        v196 = v315[10];
        v197 = (v3 + v196);
        v198 = (v93 + v196);
        v199 = swift_getEnumCaseMultiPayload(v198, v95);
        if (v199 == 2)
        {
          v205 = *v198;
          swift_errorRetain(v205);
          *v197 = v205;
          goto LABEL_84;
        }

        v288 = v199;
        if (v199 == 1)
        {
          *v197 = *v198;
          v281 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v200 = *(v281 + 20);
          v342 = v197 + v200;
          v307 = v95;
          v201 = type metadata accessor for DataFrame(0);
          v322 = v197;
          v202 = *(*(v201 - 8) + 16);
          v203 = v198 + v200;
          v199 = 1;
          v202(v342, v203, v201);
          v204 = v201;
          v95 = v307;
          v202(v322 + *(v281 + 24), v198 + *(v281 + 24), v204);
          v197 = v322;
LABEL_84:
          v171 = a3;
          goto LABEL_88;
        }

        v323 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v206 = swift_getEnumCaseMultiPayload(v198, v323);
        v207 = v206 == 1;
        v208 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v206 == 1)
        {
          v208 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v209 = __swift_instantiateConcreteTypeFromMangledName(v208);
        (*(*(v209 - 8) + 16))(v197, v198, v209);
        swift_storeEnumTagMultiPayload(v197, v323, v207);
        v171 = a3;
        v199 = v288;
LABEL_88:
        swift_storeEnumTagMultiPayload(v197, v95, v199);
        v249 = 3;
        goto LABEL_113;
      case 4:
        v13 = a2[2];
        a1[2] = v13;
        a1[3] = a2[3];
        v267 = a2[4];
        a1[4] = v267;
        v14 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
        v312 = a1 + v14;
        v15 = a2 + v14;
        v6;
        v13;
        v267;
        v268 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
        v16 = swift_getEnumCaseMultiPayload(v15, v268);
        v17 = v16 == 1;
        v18 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
        if (v16 == 1)
        {
          v18 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
        }

        v19 = __swift_instantiateConcreteTypeFromMangledName(v18);
        (*(*(v19 - 8) + 16))(v312, v15, v19);
        swift_storeEnumTagMultiPayload(v312, v268, v17);
        v20 = type metadata accessor for MLSupportVectorClassifier(0);
        v21 = v20[5];
        v22 = *(a2 + v21);
        *(v3 + v21) = v22;
        v23 = v20[6];
        *(v3 + v23) = *(a2 + v23);
        v24 = *(a2 + v23 + 8);
        *(v3 + v23 + 8) = v24;
        v25 = v20[7];
        v292 = *(a2 + v25);
        *(v3 + v25) = v292;
        v313 = v20;
        v26 = v20[8];
        v328 = v3 + v26;
        v269 = a2 + v26;
        v27 = (a2 + v26 + 8);
        v28 = (v3 + v26 + 8);
        *(v3 + v26) = *(a2 + v26);
        v29 = *(a2 + v26 + 32);
        v22;
        v24;
        v292;
        if (v29)
        {
          *(v328 + 4) = v29;
          (**(v29 - 8))(v28, v27, v29);
        }

        else
        {
          v39 = *v27;
          v28[1] = v27[1];
          *v28 = v39;
        }

        *(v328 + 40) = *(v269 + 40);
        v328[56] = v269[56];
        v40 = v313[9];
        v41 = (v3 + v40);
        v42 = a2;
        v43 = (a2 + v40);
        v44 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v45 = swift_getEnumCaseMultiPayload(v43, v44);
        v270 = v45;
        if (v45 == 2)
        {
          v153 = *v43;
          swift_errorRetain(v153);
          *v41 = v153;
        }

        else if (v45 == 1)
        {
          *v41 = *v43;
          v258 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v329 = v41;
          v46 = v258[5];
          v251 = v329 + v46;
          v293 = v44;
          v47 = type metadata accessor for DataFrame(0);
          v48 = *(*(v47 - 8) + 16);
          v49 = v43 + v46;
          v41 = v329;
          v48(v251, v49, v47);
          v50 = v47;
          v44 = v293;
          v48(v329 + v258[6], v43 + v258[6], v50);
          v42 = a2;
        }

        else
        {
          v302 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v158 = swift_getEnumCaseMultiPayload(v43, v302);
          v338 = v158 == 1;
          v159 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v158 == 1)
          {
            v159 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v160 = __swift_instantiateConcreteTypeFromMangledName(v159);
          (*(*(v160 - 8) + 16))(v41, v43, v160);
          swift_storeEnumTagMultiPayload(v41, v302, v338);
        }

        swift_storeEnumTagMultiPayload(v41, v44, v270);
        v161 = v313[10];
        v162 = (v3 + v161);
        v163 = (v42 + v161);
        v164 = swift_getEnumCaseMultiPayload(v163, v44);
        if (v164 == 2)
        {
          v170 = *v163;
          swift_errorRetain(v170);
          *v162 = v170;
          goto LABEL_60;
        }

        v285 = v164;
        if (v164 == 1)
        {
          *v162 = *v163;
          v279 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v165 = *(v279 + 20);
          v339 = v162 + v165;
          v303 = v44;
          v166 = type metadata accessor for DataFrame(0);
          v318 = v162;
          v167 = *(*(v166 - 8) + 16);
          v168 = v163 + v165;
          v164 = 1;
          v167(v339, v168, v166);
          v169 = v166;
          v44 = v303;
          v167(v318 + *(v279 + 24), v163 + *(v279 + 24), v169);
          v162 = v318;
LABEL_60:
          v171 = a3;
          goto LABEL_64;
        }

        v319 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v172 = swift_getEnumCaseMultiPayload(v163, v319);
        v173 = v172 == 1;
        v174 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v172 == 1)
        {
          v174 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v175 = __swift_instantiateConcreteTypeFromMangledName(v174);
        (*(*(v175 - 8) + 16))(v162, v163, v175);
        swift_storeEnumTagMultiPayload(v162, v319, v173);
        v171 = a3;
        v164 = v285;
LABEL_64:
        swift_storeEnumTagMultiPayload(v162, v44, v164);
        v249 = 4;
LABEL_113:
        v243 = v249;
        v241 = v3;
        v242 = v171;
LABEL_114:
        swift_storeEnumTagMultiPayload(v241, v242, v243);
        break;
    }
  }

  return v3;
}

uint64_t destroy for MLClassifier(void *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 0:
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
      v8 = type metadata accessor for MLBoostedTreeClassifier(0);
      goto LABEL_11;
    case 1:
      a1[1];
      v25 = a1[2];
      if (v25)
      {
        v25;
        a1[4];
      }

      v26 = type metadata accessor for AnyTreeClassifierModel(0);
      v27 = a1 + *(v26 + 24);
      v28 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v28 - 8) + 8))(v27, v28);
      *(a1 + *(v26 + 28));
      v13 = type metadata accessor for MLDecisionTreeClassifier(0);
      goto LABEL_19;
    case 2:
      a1[1];
      v14 = a1[2];
      if (v14)
      {
        v14;
        a1[4];
      }

      v15 = type metadata accessor for AnyTreeClassifierModel(0);
      v16 = a1 + *(v15 + 24);
      v17 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v17 - 8) + 8))(v16, v17);
      *(a1 + *(v15 + 28));
      v8 = type metadata accessor for MLRandomForestClassifier(0);
LABEL_11:
      v18 = v8;

      *(a1 + v18[6] + 8);
      *(a1 + v18[7]);
      v19 = v18[8];
      if (!*(a1 + v19 + 24))
      {
        goto LABEL_22;
      }

      v20 = (a1 + v19);
      goto LABEL_21;
    case 3:
      a1[1];
      v21 = a1[2];
      if (v21)
      {
        v21;
        a1[4];
      }

      v22 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
      v23 = a1 + *(v22 + 24);
      v24 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
      (*(*(v24 - 8) + 8))(v23, v24);
      *(a1 + *(v22 + 28));
      v13 = type metadata accessor for MLLogisticRegressionClassifier(0);
      goto LABEL_19;
    case 4:
      a1[1];
      a1[2];
      a1[4];
      v9 = a1 + *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
      v11 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
      if (swift_getEnumCaseMultiPayload(v9, v10) == 1)
      {
        v11 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
      }

      v12 = __swift_instantiateConcreteTypeFromMangledName(v11);
      (*(*(v12 - 8) + 8))(v9, v12);
      v13 = type metadata accessor for MLSupportVectorClassifier(0);
LABEL_19:
      v18 = v13;

      *(a1 + v18[6] + 8);
      *(a1 + v18[7]);
      v29 = v18[8];
      if (!*(a1 + v29 + 32))
      {
        goto LABEL_22;
      }

      v20 = (a1 + v29 + 8);
LABEL_21:
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
LABEL_22:
      v30 = a1 + v18[9];
      v31 = type metadata accessor for MLClassifierMetrics.Contents(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v30, v31);
      switch(EnumCaseMultiPayload)
      {
        case 2:
          *v30;
          break;
        case 1:
          v50 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v35 = &v30[*(v50 + 20)];
          v49 = v31;
          v36 = type metadata accessor for DataFrame(0);
          v37 = v35;
          v38 = *(*(v36 - 8) + 8);
          v38(v37, v36);
          v39 = v36;
          v31 = v49;
          v38(&v30[*(v50 + 24)], v39);
          break;
        case 0:
          v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          if (swift_getEnumCaseMultiPayload(v30, v33) == 1)
          {
            v34 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          else
          {
            v34 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          }

          v40 = __swift_instantiateConcreteTypeFromMangledName(v34);
          (*(*(v40 - 8) + 8))(v30, v40);
          break;
      }

      v41 = (a1 + v18[10]);
      result = swift_getEnumCaseMultiPayload(v41, v31);
      switch(result)
      {
        case 2:
          return *v41;
        case 1:
          v44 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v45 = v41 + *(v44 + 20);
          v46 = type metadata accessor for DataFrame(0);
          v47 = *(*(v46 - 8) + 8);
          v47(v45, v46);
          return (v47)(v41 + *(v44 + 24), v46);
        case 0:
          v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          if (swift_getEnumCaseMultiPayload(v41, v42) == 1)
          {
            v43 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          else
          {
            v43 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          }

          v48 = __swift_instantiateConcreteTypeFromMangledName(v43);
          return (*(*(v48 - 8) + 8))(v41, v48);
      }

      return result;
    default:
      return result;
  }
}

void *initializeWithCopy for MLClassifier(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  *a1 = *a2;
  v5 = a2[1];
  a1[1] = v5;
  v6 = a1 + 2;
  v7 = a2 + 2;
  v154 = EnumCaseMultiPayload;
  switch(EnumCaseMultiPayload)
  {
    case 0u:
      v8 = *v7;
      v5;
      if (v8)
      {
        a1[2] = v8;
        v9 = v8;
        v10 = a2;
        a1[3] = a2[3];
        v11 = a2[4];
        a1[4] = v11;
        v9;
        v11;
      }

      else
      {
        a1[4] = a2[4];
        *v6 = *v7;
        v10 = a2;
      }

      v74 = type metadata accessor for AnyTreeClassifierModel(0);
      v75 = *(v74 + 24);
      v76 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v76 - 8) + 16))(a1 + v75, &v10[v75], v76);
      v77 = *(v74 + 28);
      v169 = *&v10[v77];
      v78 = v10[v77 + 8];
      *(a1 + v77) = v169;
      *(a1 + v77 + 8) = v78;
      v79 = type metadata accessor for MLBoostedTreeClassifier(0);
      v80 = v79[5];
      v161 = *&v10[v80];
      *(a1 + v80) = v161;
      v81 = v79[6];
      *(a1 + v81) = *&v10[v81];
      v82 = a1;
      v83 = *&v10[v81 + 8];
      *(v82 + v81 + 8) = v83;
      v84 = v79[7];
      v182 = *&v10[v84];
      *(v82 + v84) = v182;
      v174 = v79;
      v85 = v79[8];
      v86 = v82 + v85;
      v87 = &v10[v85];
      v88 = *&v10[v85 + 24];
      v169;
      v161;
      v83;
      v182;
      if (v88)
      {
        *(v86 + 3) = v88;
        (**(v88 - 8))(v86, v87, v88);
      }

      else
      {
        v104 = *v87;
        *(v86 + 1) = *(v87 + 1);
        *v86 = v104;
      }

      *(v86 + 2) = *(v87 + 2);
      *(v86 + 3) = *(v87 + 3);
      *(v86 + 4) = *(v87 + 4);
      *(v86 + 10) = *(v87 + 10);
      v86[88] = v87[88];
      *(v86 + 6) = *(v87 + 6);
      goto LABEL_34;
    case 1u:
      v37 = *v7;
      v5;
      if (v37)
      {
        a1[2] = v37;
        v38 = a2;
        a1[3] = a2[3];
        v39 = a2[4];
        a1[4] = v39;
        v37;
        v39;
      }

      else
      {
        a1[4] = a2[4];
        *v6 = *v7;
        v38 = a2;
      }

      v89 = type metadata accessor for AnyTreeClassifierModel(0);
      v90 = *(v89 + 24);
      v91 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v91 - 8) + 16))(a1 + v90, &v38[v90], v91);
      v92 = *(v89 + 28);
      v183 = *&v38[v92];
      v93 = v38[v92 + 8];
      *(a1 + v92) = v183;
      *(a1 + v92 + 8) = v93;
      v94 = type metadata accessor for MLDecisionTreeClassifier(0);
      v95 = v94[5];
      v96 = *&v38[v95];
      *(a1 + v95) = v96;
      v97 = v94[6];
      *(a1 + v97) = *&v38[v97];
      v98 = *&v38[v97 + 8];
      *(a1 + v97 + 8) = v98;
      v99 = v94[7];
      v100 = *&v38[v99];
      *(a1 + v99) = v100;
      v175 = v94;
      v101 = v94[8];
      v162 = a1 + v101;
      v170 = &v38[v101];
      v102 = &v38[v101 + 8];
      v157 = (a1 + v101 + 8);
      *(a1 + v101) = *(v102 - 8);
      v103 = *(v102 + 24);
      v183;
      v96;
      v98;
      v100;
      if (v103)
      {
        *(v162 + 4) = v103;
        (**(v103 - 8))(v157, v102, v103);
      }

      else
      {
        v124 = *v102;
        v157[1] = *(v102 + 16);
        *v157 = v124;
      }

      *(v162 + 40) = *(v170 + 40);
      *(v162 + 7) = *(v170 + 7);
      goto LABEL_45;
    case 2u:
      v30 = *v7;
      v5;
      if (v30)
      {
        a1[2] = v30;
        v31 = v30;
        v32 = a2;
        a1[3] = a2[3];
        v33 = a2[4];
        a1[4] = v33;
        v31;
        v33;
      }

      else
      {
        a1[4] = a2[4];
        *v6 = *v7;
        v32 = a2;
      }

      v41 = type metadata accessor for AnyTreeClassifierModel(0);
      v42 = *(v41 + 24);
      v43 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v43 - 8) + 16))(a1 + v42, &v32[v42], v43);
      v44 = *(v41 + 28);
      v167 = *&v32[v44];
      v45 = v32[v44 + 8];
      *(a1 + v44) = v167;
      *(a1 + v44 + 8) = v45;
      v46 = type metadata accessor for MLRandomForestClassifier(0);
      v47 = v46[5];
      v48 = *&v32[v47];
      *(a1 + v47) = v48;
      v49 = v46[6];
      *(a1 + v49) = *&v32[v49];
      v50 = a1;
      v51 = *&v32[v49 + 8];
      *(v50 + v49 + 8) = v51;
      v52 = v46[7];
      v180 = *&v32[v52];
      *(v50 + v52) = v180;
      v174 = v46;
      v53 = v46[8];
      v54 = v50 + v53;
      v55 = &v32[v53];
      v56 = *&v32[v53 + 24];
      v167;
      v48;
      v51;
      v180;
      if (v56)
      {
        *(v54 + 3) = v56;
        (**(v56 - 8))(v54, v55, v56);
      }

      else
      {
        v57 = *v55;
        *(v54 + 1) = *(v55 + 1);
        *v54 = v57;
      }

      *(v54 + 2) = *(v55 + 2);
      *(v54 + 3) = *(v55 + 3);
      *(v54 + 4) = *(v55 + 4);
      *(v54 + 10) = *(v55 + 10);
      goto LABEL_34;
    case 3u:
      v34 = *v7;
      v5;
      if (v34)
      {
        a1[2] = v34;
        v35 = a2;
        a1[3] = a2[3];
        v36 = a2[4];
        a1[4] = v36;
        v34;
        v36;
      }

      else
      {
        a1[4] = a2[4];
        *v6 = *v7;
        v35 = a2;
      }

      v58 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
      v59 = *(v58 + 24);
      v60 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
      (*(*(v60 - 8) + 16))(a1 + v59, &v35[v59], v60);
      v61 = *(v58 + 28);
      v181 = *&v35[v61];
      v62 = v35[v61 + 8];
      *(a1 + v61) = v181;
      *(a1 + v61 + 8) = v62;
      v63 = type metadata accessor for MLLogisticRegressionClassifier(0);
      v64 = v63[5];
      v160 = *&v35[v64];
      *(a1 + v64) = v160;
      v65 = v63[6];
      *(a1 + v65) = *&v35[v65];
      v66 = *&v35[v65 + 8];
      *(a1 + v65 + 8) = v66;
      v67 = v63[7];
      v68 = *&v35[v67];
      *(a1 + v67) = v68;
      v175 = v63;
      v69 = v63[8];
      v70 = a1 + v69;
      v168 = &v35[v69];
      v71 = &v35[v69 + 8];
      v156 = (a1 + v69 + 8);
      *(a1 + v69) = *(v71 - 8);
      v72 = *(v71 + 24);
      v181;
      v160;
      v66;
      v68;
      if (v72)
      {
        *(v70 + 4) = v72;
        (**(v72 - 8))(v156, v71, v72);
      }

      else
      {
        v73 = *v71;
        v156[1] = *(v71 + 16);
        *v156 = v73;
      }

      *(v70 + 40) = *(v168 + 40);
      *(v70 + 56) = *(v168 + 56);
      v70[72] = v168[72];
LABEL_45:
      v125 = v175[9];
      v106 = a1;
      v126 = (a1 + v125);
      v127 = a2 + v125;
      v171 = type metadata accessor for MLClassifierMetrics.Contents(0);
      v128 = swift_getEnumCaseMultiPayload(v127, v171);
      if (v128 == 2)
      {
        v134 = *v127;
        swift_errorRetain(*v127);
        *v126 = v134;
      }

      else if (v128 == 1)
      {
        *v126 = *v127;
        v164 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v186 = v126;
        v129 = v164[5];
        v159 = v186 + v129;
        v130 = type metadata accessor for DataFrame(0);
        v131 = *(*(v130 - 8) + 16);
        v132 = &v127[v129];
        v126 = v186;
        v131(v159, v132, v130);
        v133 = v130;
        v106 = a1;
        v131(v186 + v164[6], &v127[v164[6]], v133);
      }

      else
      {
        v187 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v135 = swift_getEnumCaseMultiPayload(v127, v187);
        v136 = v135 == 1;
        v137 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v135 == 1)
        {
          v137 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v138 = __swift_instantiateConcreteTypeFromMangledName(v137);
        (*(*(v138 - 8) + 16))(v126, v127, v138);
        swift_storeEnumTagMultiPayload(v126, v187, v136);
      }

      v122 = v171;
      swift_storeEnumTagMultiPayload(v126, v171, v128);
      v123 = v175[10];
      goto LABEL_53;
    case 4u:
      v172 = a2[2];
      a1[2] = v172;
      a1[3] = a2[3];
      v12 = a2[4];
      a1[4] = v12;
      v13 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
      v165 = a1 + v13;
      v14 = a2 + v13;
      v5;
      v172;
      v12;
      v173 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
      v15 = swift_getEnumCaseMultiPayload(v14, v173);
      v16 = v15 == 1;
      v17 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
      if (v15 == 1)
      {
        v17 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
      }

      v18 = __swift_instantiateConcreteTypeFromMangledName(v17);
      (*(*(v18 - 8) + 16))(v165, v14, v18);
      swift_storeEnumTagMultiPayload(v165, v173, v16);
      v19 = type metadata accessor for MLSupportVectorClassifier(0);
      v20 = v19[5];
      v21 = *(a2 + v20);
      *(a1 + v20) = v21;
      v22 = v19[6];
      *(a1 + v22) = *(a2 + v22);
      v23 = *(a2 + v22 + 8);
      *(a1 + v22 + 8) = v23;
      v24 = v19[7];
      v25 = *(a2 + v24);
      *(a1 + v24) = v25;
      v174 = v19;
      v26 = v19[8];
      v179 = a1 + v26;
      v166 = a2 + v26;
      v27 = (a2 + v26 + 8);
      v28 = (a1 + v26 + 8);
      *(v28 - 1) = *(a2 + v26);
      v29 = *(a2 + v26 + 32);
      v21;
      v23;
      v25;
      if (v29)
      {
        *(v179 + 4) = v29;
        (**(v29 - 8))(v28, v27, v29);
      }

      else
      {
        v40 = *v27;
        v28[1] = v27[1];
        *v28 = v40;
      }

      *(v179 + 40) = *(v166 + 40);
      v179[56] = v166[56];
LABEL_34:
      v105 = v174[9];
      v106 = a1;
      v107 = (a1 + v105);
      v108 = a2 + v105;
      v171 = type metadata accessor for MLClassifierMetrics.Contents(0);
      v109 = swift_getEnumCaseMultiPayload(v108, v171);
      if (v109 == 2)
      {
        v120 = v107;
        v121 = *v108;
        swift_errorRetain(*v108);
        *v120 = v121;
        v107 = v120;
      }

      else
      {
        if (v109 == 1)
        {
          *v107 = *v108;
          v163 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v110 = v163[5];
          v158 = v107 + v110;
          v111 = type metadata accessor for DataFrame(0);
          v184 = v107;
          v112 = *(*(v111 - 8) + 16);
          v113 = &v108[v110];
          v114 = v174;
          v112(v158, v113, v111);
          v115 = v111;
          v106 = a1;
          v112(&v184[v163[6]], &v108[v163[6]], v115);
          v107 = v184;
          goto LABEL_42;
        }

        v185 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v116 = swift_getEnumCaseMultiPayload(v108, v185);
        v117 = v116 == 1;
        v118 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v116 == 1)
        {
          v118 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v119 = __swift_instantiateConcreteTypeFromMangledName(v118);
        (*(*(v119 - 8) + 16))(v107, v108, v119);
        swift_storeEnumTagMultiPayload(v107, v185, v117);
      }

      v114 = v174;
LABEL_42:
      v122 = v171;
      swift_storeEnumTagMultiPayload(v107, v171, v109);
      v123 = v114[10];
LABEL_53:
      v139 = v106 + v123;
      v140 = a2 + v123;
      v141 = swift_getEnumCaseMultiPayload(a2 + v123, v122);
      if (v141 == 2)
      {
        v151 = *v140;
        swift_errorRetain(v151);
        *v139 = v151;
      }

      else if (v141 == 1)
      {
        *v139 = *v140;
        v177 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v142 = *(v177 + 20);
        v188 = &v139[v142];
        v143 = type metadata accessor for DataFrame(0);
        v144 = *(*(v143 - 8) + 16);
        v145 = &v140[v142];
        v106 = a1;
        v144(v188, v145, v143);
        v144(&v139[*(v177 + 24)], &v140[*(v177 + 24)], v143);
        v141 = 1;
      }

      else
      {
        v146 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v147 = swift_getEnumCaseMultiPayload(v140, v146);
        v178 = v140;
        v148 = v147 == 1;
        v149 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v147 == 1)
        {
          v149 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v150 = __swift_instantiateConcreteTypeFromMangledName(v149);
        (*(*(v150 - 8) + 16))(v139, v178, v150);
        swift_storeEnumTagMultiPayload(v139, v146, v148);
      }

      swift_storeEnumTagMultiPayload(v139, v171, v141);
      swift_storeEnumTagMultiPayload(v106, a3, v154);
      return v106;
  }
}

void *assignWithCopy for MLClassifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLClassifier);
    v149 = a3;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    *a1 = *a2;
    v6 = a2[1];
    a1[1] = v6;
    v7 = a1 + 2;
    v8 = a2 + 2;
    v150 = EnumCaseMultiPayload;
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v9 = *v8;
        v6;
        if (v9)
        {
          v10 = a1;
          a1[2] = v9;
          v11 = a2;
          a1[3] = a2[3];
          v12 = a2[4];
          a1[4] = v12;
          v9;
          v12;
        }

        else
        {
          a1[4] = a2[4];
          *v7 = *v8;
          v10 = a1;
          v11 = a2;
        }

        v85 = type metadata accessor for AnyTreeClassifierModel(0);
        v86 = *(v85 + 24);
        v87 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v87 - 8) + 16))(&v10[v86], &v11[v86], v87);
        v88 = *(v85 + 28);
        v173 = *&v11[v88];
        v89 = v11[v88 + 8];
        *&v10[v88] = v173;
        v10[v88 + 8] = v89;
        v90 = type metadata accessor for MLBoostedTreeClassifier(0);
        v91 = v90[5];
        v162 = *&v11[v91];
        *&v10[v91] = v162;
        v92 = v90[6];
        *&v10[v92] = *&v11[v92];
        v155 = *&v11[v92 + 8];
        *&v10[v92 + 8] = v155;
        v93 = v90[7];
        v184 = *&v11[v93];
        *&v10[v93] = v184;
        v178 = v90;
        v94 = v90[8];
        v95 = &v10[v94];
        v96 = &v11[v94];
        v97 = *&v11[v94 + 24];
        v173;
        v162;
        v155;
        v184;
        v46 = v11;
        if (v97)
        {
          *(v95 + 3) = v97;
          (**(v97 - 8))(v95, v96, v97);
        }

        else
        {
          v113 = *v96;
          *(v95 + 1) = *(v96 + 1);
          *v95 = v113;
        }

        *(v95 + 4) = *(v96 + 4);
        *(v95 + 5) = *(v96 + 5);
        *(v95 + 6) = *(v96 + 6);
        *(v95 + 7) = *(v96 + 7);
        *(v95 + 8) = *(v96 + 8);
        *(v95 + 9) = *(v96 + 9);
        *(v95 + 10) = *(v96 + 10);
        v95[88] = v96[88];
        *(v95 + 12) = *(v96 + 12);
        *(v95 + 13) = *(v96 + 13);
        v114 = v178[9];
        v45 = (a1 + v114);
        v61 = v46 + v114;
        v171 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v62 = swift_getEnumCaseMultiPayload(v61, v171);
        if (v62 == 2)
        {
          goto LABEL_40;
        }

        if (v62 != 1)
        {
          goto LABEL_46;
        }

        *v45 = *v61;
        v164 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v115 = v164[5];
        v157 = v45 + v115;
        v186 = v45;
        v116 = type metadata accessor for DataFrame(0);
        v117 = *(*(v116 - 8) + 16);
        v118 = &v61[v115];
        v67 = a1;
        v117(v157, v118, v116);
        v119 = v116;
        v45 = v186;
        v117(v186 + v164[6], &v61[v164[6]], v119);
        v46 = a2;
        goto LABEL_50;
      case 1u:
        v39 = *v8;
        v6;
        if (v39)
        {
          v40 = a1;
          a1[2] = v39;
          v41 = a2;
          a1[3] = a2[3];
          v42 = a2[4];
          a1[4] = v42;
          v39;
          v42;
        }

        else
        {
          a1[4] = a2[4];
          *v7 = *v8;
          v40 = a1;
          v41 = a2;
        }

        v98 = type metadata accessor for AnyTreeClassifierModel(0);
        v99 = *(v98 + 24);
        v100 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v100 - 8) + 16))(&v40[v99], &v41[v99], v100);
        v101 = *(v98 + 28);
        v185 = *&v41[v101];
        v102 = v41[v101 + 8];
        *&v40[v101] = v185;
        v40[v101 + 8] = v102;
        v103 = type metadata accessor for MLDecisionTreeClassifier(0);
        v104 = v103[5];
        v156 = *&v41[v104];
        *&v40[v104] = v156;
        v105 = v103[6];
        *&v40[v105] = *&v41[v105];
        v106 = *&v41[v105 + 8];
        *&v40[v105 + 8] = v106;
        v107 = v103[7];
        v163 = *&v41[v107];
        *&v40[v107] = v163;
        v178 = v103;
        v108 = v103[8];
        v109 = &v40[v108];
        v174 = &v41[v108];
        v110 = &v41[v108 + 8];
        v111 = &v40[v108 + 8];
        *(v111 - 1) = *&v41[v108];
        v112 = *&v41[v108 + 32];
        v185;
        v156;
        v106;
        v163;
        if (v112)
        {
          *(v109 + 4) = v112;
          (**(v112 - 8))(v111, v110, v112);
        }

        else
        {
          v122 = *v110;
          *(v111 + 1) = v110[1];
          *v111 = v122;
        }

        *(v109 + 5) = *(v174 + 5);
        *(v109 + 6) = *(v174 + 6);
        *(v109 + 7) = *(v174 + 7);
        goto LABEL_43;
      case 2u:
        v31 = *v8;
        v6;
        if (v31)
        {
          v32 = a1;
          a1[2] = v31;
          v33 = a2;
          a1[3] = a2[3];
          v34 = a2[4];
          a1[4] = v34;
          v31;
          v34;
        }

        else
        {
          a1[4] = a2[4];
          *v7 = *v8;
          v32 = a1;
          v33 = a2;
        }

        v47 = type metadata accessor for AnyTreeClassifierModel(0);
        v48 = *(v47 + 24);
        v49 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v49 - 8) + 16))(&v32[v48], &v33[v48], v49);
        v50 = *(v47 + 28);
        v170 = *&v33[v50];
        v51 = v33[v50 + 8];
        *&v32[v50] = v170;
        v32[v50 + 8] = v51;
        v52 = type metadata accessor for MLRandomForestClassifier(0);
        v53 = v52[5];
        v159 = *&v33[v53];
        *&v32[v53] = v159;
        v54 = v52[6];
        *&v32[v54] = *&v33[v54];
        v153 = *&v33[v54 + 8];
        *&v32[v54 + 8] = v153;
        v55 = v52[7];
        v181 = *&v33[v55];
        *&v32[v55] = v181;
        v178 = v52;
        v56 = v52[8];
        v57 = &v32[v56];
        v58 = &v33[v56];
        v59 = *&v33[v56 + 24];
        v170;
        v159;
        v153;
        v181;
        v46 = v33;
        if (v59)
        {
          *(v57 + 3) = v59;
          (**(v59 - 8))(v57, v58, v59);
        }

        else
        {
          v60 = *v58;
          *(v57 + 1) = *(v58 + 1);
          *v57 = v60;
        }

        *(v57 + 4) = *(v58 + 4);
        *(v57 + 5) = *(v58 + 5);
        *(v57 + 6) = *(v58 + 6);
        *(v57 + 7) = *(v58 + 7);
        *(v57 + 8) = *(v58 + 8);
        *(v57 + 9) = *(v58 + 9);
        *(v57 + 10) = *(v58 + 10);
        v44 = v178[9];
        v45 = (a1 + v44);
        goto LABEL_22;
      case 3u:
        v35 = *v8;
        v6;
        if (v35)
        {
          v36 = a1;
          a1[2] = v35;
          v37 = a2;
          a1[3] = a2[3];
          v38 = a2[4];
          a1[4] = v38;
          v35;
          v38;
        }

        else
        {
          a1[4] = a2[4];
          *v7 = *v8;
          v36 = a1;
          v37 = a2;
        }

        v69 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
        v70 = *(v69 + 24);
        v71 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
        (*(*(v71 - 8) + 16))(&v36[v70], &v37[v70], v71);
        v72 = *(v69 + 28);
        v172 = *&v37[v72];
        v73 = v37[v72 + 8];
        *&v36[v72] = v172;
        v36[v72 + 8] = v73;
        v74 = type metadata accessor for MLLogisticRegressionClassifier(0);
        v75 = v74[5];
        v161 = *&v37[v75];
        *&v36[v75] = v161;
        v76 = v74[6];
        *&v36[v76] = *&v37[v76];
        v154 = *&v37[v76 + 8];
        *&v36[v76 + 8] = v154;
        v77 = v74[7];
        v183 = *&v37[v77];
        *&v36[v77] = v183;
        v178 = v74;
        v78 = v74[8];
        v79 = &v36[v78];
        v80 = &v37[v78];
        v81 = &v37[v78 + 8];
        v82 = &v36[v78 + 8];
        *(v82 - 1) = *&v37[v78];
        v83 = *&v37[v78 + 32];
        v172;
        v161;
        v154;
        v183;
        if (v83)
        {
          *(v79 + 4) = v83;
          (**(v83 - 8))(v82, v81, v83);
        }

        else
        {
          v84 = *v81;
          *(v82 + 1) = v81[1];
          *v82 = v84;
        }

        *(v79 + 5) = *(v80 + 5);
        *(v79 + 6) = *(v80 + 6);
        *(v79 + 7) = *(v80 + 7);
        *(v79 + 8) = *(v80 + 8);
        v79[72] = v80[72];
LABEL_43:
        v123 = v178[9];
        v67 = a1;
        v45 = (a1 + v123);
        v46 = a2;
        v61 = a2 + v123;
        v171 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v62 = swift_getEnumCaseMultiPayload(v61, v171);
        if (v62 == 2)
        {
          v147 = v45;
          v148 = *v61;
          swift_errorRetain(*v61);
          *v147 = v148;
          v45 = v147;
          v62 = 2;
        }

        else
        {
          if (v62 != 1)
          {
            goto LABEL_46;
          }

          *v45 = *v61;
          v158 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v124 = v158[5];
          v152 = v45 + v124;
          v187 = v45;
          v125 = type metadata accessor for DataFrame(0);
          v165 = *(*(v125 - 8) + 16);
          v126 = &v61[v124];
          v67 = a1;
          v165(v152, v126, v125);
          v127 = v125;
          v45 = v187;
          v165(v187 + v158[6], &v61[v158[6]], v127);
        }

        goto LABEL_50;
      case 4u:
        v13 = a2[2];
        a1[2] = v13;
        a1[3] = a2[3];
        v176 = a2[4];
        a1[4] = v176;
        v14 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
        v168 = a1 + v14;
        v15 = a2 + v14;
        v6;
        v13;
        v176;
        v177 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
        v16 = swift_getEnumCaseMultiPayload(v15, v177);
        v17 = v16 == 1;
        v18 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
        if (v16 == 1)
        {
          v18 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
        }

        v19 = __swift_instantiateConcreteTypeFromMangledName(v18);
        (*(*(v19 - 8) + 16))(v168, v15, v19);
        swift_storeEnumTagMultiPayload(v168, v177, v17);
        v20 = type metadata accessor for MLSupportVectorClassifier(0);
        v21 = v20[5];
        v22 = *(a2 + v21);
        *(a1 + v21) = v22;
        v23 = v20[6];
        *(a1 + v23) = *(a2 + v23);
        v24 = *(a2 + v23 + 8);
        *(a1 + v23 + 8) = v24;
        v25 = v20[7];
        v26 = *(a2 + v25);
        *(a1 + v25) = v26;
        v178 = v20;
        v27 = v20[8];
        v180 = a1 + v27;
        v169 = a2 + v27;
        v28 = (a2 + v27 + 8);
        v29 = (a1 + v27 + 8);
        *(a1 + v27) = *(a2 + v27);
        v30 = *(a2 + v27 + 32);
        v22;
        v24;
        v26;
        if (v30)
        {
          *(v180 + 4) = v30;
          (**(v30 - 8))(v29, v28, v30);
        }

        else
        {
          v43 = *v28;
          v29[1] = v28[1];
          *v29 = v43;
        }

        *(v180 + 5) = *(v169 + 5);
        *(v180 + 6) = *(v169 + 6);
        v180[56] = v169[56];
        v44 = v178[9];
        v45 = (a1 + v44);
        v46 = a2;
LABEL_22:
        v61 = v46 + v44;
        v171 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v62 = swift_getEnumCaseMultiPayload(v61, v171);
        if (v62 == 2)
        {
LABEL_40:
          v120 = v45;
          v121 = *v61;
          swift_errorRetain(*v61);
          *v120 = v121;
          v45 = v120;
        }

        else
        {
          if (v62 == 1)
          {
            *v45 = *v61;
            v160 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
            v63 = v160[5];
            v151 = v45 + v63;
            v182 = v45;
            v64 = type metadata accessor for DataFrame(0);
            v65 = *(*(v64 - 8) + 16);
            v66 = &v61[v63];
            v67 = a1;
            v65(v151, v66, v64);
            v68 = v64;
            v45 = v182;
            v65(v182 + v160[6], &v61[v160[6]], v68);
            v62 = 1;
            goto LABEL_50;
          }

LABEL_46:
          v188 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v128 = swift_getEnumCaseMultiPayload(v61, v188);
          v129 = v128 == 1;
          v130 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v128 == 1)
          {
            v130 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v131 = __swift_instantiateConcreteTypeFromMangledName(v130);
          (*(*(v131 - 8) + 16))(v45, v61, v131);
          swift_storeEnumTagMultiPayload(v45, v188, v129);
        }

        v67 = a1;
LABEL_50:
        swift_storeEnumTagMultiPayload(v45, v171, v62);
        v132 = v178[10];
        v133 = v67 + v132;
        v134 = v46 + v132;
        v135 = swift_getEnumCaseMultiPayload(v134, v171);
        if (v135 == 2)
        {
          v140 = *v134;
          swift_errorRetain(*v134);
          *v133 = v140;
        }

        else if (v135 == 1)
        {
          *v133 = *v134;
          v167 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v136 = *(v167 + 20);
          v179 = &v133[v136];
          v137 = type metadata accessor for DataFrame(0);
          v138 = &v134[v136];
          v139 = *(*(v137 - 8) + 16);
          v139(v179, v138, v137);
          v139(&v133[*(v167 + 24)], &v134[*(v167 + 24)], v137);
        }

        else
        {
          v141 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v142 = swift_getEnumCaseMultiPayload(v134, v141);
          v143 = v142 == 1;
          v144 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v142 == 1)
          {
            v144 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v145 = __swift_instantiateConcreteTypeFromMangledName(v144);
          (*(*(v145 - 8) + 16))(v133, v134, v145);
          swift_storeEnumTagMultiPayload(v133, v141, v143);
        }

        swift_storeEnumTagMultiPayload(v133, v171, v135);
        v3 = a1;
        swift_storeEnumTagMultiPayload(a1, v149, v150);
        break;
      case 5u:
        JUMPOUT(0x6B0ECLL);
    }
  }

  return v3;
}

uint64_t initializeWithTake for MLClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  *a1 = *a2;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  v97 = EnumCaseMultiPayload;
  switch(EnumCaseMultiPayload)
  {
    case 0u:
      v6 = type metadata accessor for AnyTreeClassifierModel(0);
      v7 = *(v6 + 24);
      v8 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
      v9 = *(v6 + 28);
      *(a1 + v9 + 8) = *(a2 + v9 + 8);
      *(a1 + v9) = *(a2 + v9);
      v10 = type metadata accessor for MLBoostedTreeClassifier(0);
      *(a1 + v10[5]) = *(a2 + v10[5]);
      *(a1 + v10[6]) = *(a2 + v10[6]);
      *(a1 + v10[7]) = *(a2 + v10[7]);
      v11 = v10[8];
      v12 = (a1 + v11);
      v13 = (a2 + v11);
      v86 = 14;
      goto LABEL_11;
    case 1u:
      v46 = type metadata accessor for AnyTreeClassifierModel(0);
      v47 = *(v46 + 24);
      v48 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v48 - 8) + 32))(a1 + v47, a2 + v47, v48);
      v49 = *(v46 + 28);
      *(a1 + v49 + 8) = *(a2 + v49 + 8);
      *(a1 + v49) = *(a2 + v49);
      v10 = type metadata accessor for MLDecisionTreeClassifier(0);
      *(a1 + v10[5]) = *(a2 + v10[5]);
      *(a1 + v10[6]) = *(a2 + v10[6]);
      *(a1 + v10[7]) = *(a2 + v10[7]);
      v50 = v10[8];
      v51 = *(a2 + v50);
      v52 = *(a2 + v50 + 16);
      v53 = *(a2 + v50 + 32);
      *(a1 + v50 + 48) = *(a2 + v50 + 48);
      *(a1 + v50 + 32) = v53;
      *(a1 + v50 + 16) = v52;
      *(a1 + v50) = v51;
      goto LABEL_14;
    case 2u:
      v37 = type metadata accessor for AnyTreeClassifierModel(0);
      v38 = *(v37 + 24);
      v39 = type metadata accessor for BaseTreeClassifierModel(0);
      (*(*(v39 - 8) + 32))(a1 + v38, a2 + v38, v39);
      v40 = *(v37 + 28);
      *(a1 + v40 + 8) = *(a2 + v40 + 8);
      *(a1 + v40) = *(a2 + v40);
      v10 = type metadata accessor for MLRandomForestClassifier(0);
      *(a1 + v10[5]) = *(a2 + v10[5]);
      *(a1 + v10[6]) = *(a2 + v10[6]);
      *(a1 + v10[7]) = *(a2 + v10[7]);
      v41 = v10[8];
      v12 = (a1 + v41);
      v13 = (a2 + v41);
      v86 = 11;
LABEL_11:
      qmemcpy(v12, v13, 8 * v86);
      goto LABEL_14;
    case 3u:
      v42 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
      v43 = *(v42 + 24);
      v44 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
      (*(*(v44 - 8) + 32))(a1 + v43, a2 + v43, v44);
      v45 = *(v42 + 28);
      *(a1 + v45 + 8) = *(a2 + v45 + 8);
      *(a1 + v45) = *(a2 + v45);
      v10 = type metadata accessor for MLLogisticRegressionClassifier(0);
      *(a1 + v10[5]) = *(a2 + v10[5]);
      *(a1 + v10[6]) = *(a2 + v10[6]);
      *(a1 + v10[7]) = *(a2 + v10[7]);
      qmemcpy((a1 + v10[8]), (a2 + v10[8]), 0x49uLL);
LABEL_14:
      v54 = v10[9];
      __dsta = (v4 + v54);
      v55 = (a2 + v54);
      v106 = type metadata accessor for MLClassifierMetrics.Contents(0);
      v56 = swift_getEnumCaseMultiPayload(v55, v106);
      if (v56 == 1)
      {
        *__dsta = *v55;
        v94 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v63 = *(v94 + 20);
        v88 = type metadata accessor for DataFrame(0);
        v103 = *(*(v88 - 8) + 32);
        v103(&__dsta[v63], &v55[v63], v88);
        v103(&__dsta[*(v94 + 24)], &v55[*(v94 + 24)], v88);
        v62 = 1;
        v60 = __dsta;
        v61 = v106;
LABEL_20:
        swift_storeEnumTagMultiPayload(v60, v61, v62);
        goto LABEL_22;
      }

      if (!v56)
      {
        v102 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v57 = swift_getEnumCaseMultiPayload(v55, v102);
        v93 = v57 == 1;
        v58 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v57 == 1)
        {
          v58 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v59 = __swift_instantiateConcreteTypeFromMangledName(v58);
        (*(*(v59 - 8) + 32))(__dsta, v55, v59);
        swift_storeEnumTagMultiPayload(__dsta, v102, v93);
        v60 = __dsta;
        v61 = v106;
        v62 = 0;
        goto LABEL_20;
      }

      memcpy(__dsta, v55, *(*(v106 - 8) + 64));
LABEL_22:
      v64 = v10[10];
      v65 = (v4 + v64);
      v66 = (v64 + a2);
      v67 = swift_getEnumCaseMultiPayload(v66, v106);
      if (v67 != 1)
      {
        goto LABEL_28;
      }

      *v65 = *v66;
      __dstb = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v68 = __dstb[5];
      v104 = &v65[v68];
      v69 = type metadata accessor for DataFrame(0);
      v70 = &v66[v68];
      v71 = *(*(v69 - 8) + 32);
      v71(v104, v70, v69);
      v72 = __dstb;
      goto LABEL_34;
    case 4u:
      v14 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
      v18 = swift_getEnumCaseMultiPayload(v16, v17);
      v19 = v18 == 1;
      v20 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
      if (v18 == 1)
      {
        v20 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
      }

      v21 = __swift_instantiateConcreteTypeFromMangledName(v20);
      (*(*(v21 - 8) + 32))(v15, v16, v21);
      v22 = v15;
      v4 = a1;
      swift_storeEnumTagMultiPayload(v22, v17, v19);
      v23 = type metadata accessor for MLSupportVectorClassifier(0);
      *(a1 + v23[5]) = *(a2 + v23[5]);
      *(a1 + v23[6]) = *(a2 + v23[6]);
      *(a1 + v23[7]) = *(a2 + v23[7]);
      v24 = v23[8];
      v25 = *(a2 + v24);
      v26 = *(a2 + v24 + 16);
      v27 = *(a2 + v24 + 32);
      *(a1 + v24 + 41) = *(a2 + v24 + 41);
      *(a1 + v24 + 32) = v27;
      *(a1 + v24 + 16) = v26;
      *(a1 + v24) = v25;
      v28 = v23[9];
      v101 = (a1 + v28);
      v29 = (a2 + v28);
      v106 = type metadata accessor for MLClassifierMetrics.Contents(0);
      v30 = swift_getEnumCaseMultiPayload(v29, v106);
      if (v30 == 1)
      {
        *v101 = *v29;
        v90 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v73 = *(v90 + 20);
        v87 = type metadata accessor for DataFrame(0);
        v95 = *(*(v87 - 8) + 32);
        v95(&v101[v73], &v29[v73], v87);
        v95(&v101[*(v90 + 24)], &v29[*(v90 + 24)], v87);
        v36 = 1;
        v34 = v101;
        v35 = v106;
LABEL_25:
        swift_storeEnumTagMultiPayload(v34, v35, v36);
        goto LABEL_27;
      }

      if (!v30)
      {
        v92 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v31 = swift_getEnumCaseMultiPayload(v29, v92);
        v89 = v31 == 1;
        v32 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v31 == 1)
        {
          v32 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v33 = __swift_instantiateConcreteTypeFromMangledName(v32);
        (*(*(v33 - 8) + 32))(v101, v29, v33);
        swift_storeEnumTagMultiPayload(v101, v92, v89);
        v34 = v101;
        v35 = v106;
        v36 = 0;
        goto LABEL_25;
      }

      memcpy(v101, v29, *(*(v106 - 8) + 64));
LABEL_27:
      v74 = v23[10];
      v65 = (a1 + v74);
      v66 = (v74 + a2);
      v67 = swift_getEnumCaseMultiPayload(v66, v106);
      if (v67 == 1)
      {
        *v65 = *v66;
        v105 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v83 = v105[5];
        v96 = &v65[v83];
        v69 = type metadata accessor for DataFrame(0);
        v84 = &v66[v83];
        v71 = *(*(v69 - 8) + 32);
        v71(v96, v84, v69);
        v72 = v105;
LABEL_34:
        v71(&v65[v72[6]], &v66[v72[6]], v69);
        v82 = 1;
        v80 = v65;
        v81 = v106;
      }

      else
      {
LABEL_28:
        if (v67)
        {
          memcpy(v65, v66, *(*(v106 - 8) + 64));
          goto LABEL_36;
        }

        v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v76 = swift_getEnumCaseMultiPayload(v66, v75);
        v77 = v76 == 1;
        v78 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v76 == 1)
        {
          v78 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v79 = __swift_instantiateConcreteTypeFromMangledName(v78);
        (*(*(v79 - 8) + 32))(v65, v66, v79);
        swift_storeEnumTagMultiPayload(v65, v75, v77);
        v80 = v65;
        v81 = v106;
        v82 = 0;
      }

      swift_storeEnumTagMultiPayload(v80, v81, v82);
LABEL_36:
      swift_storeEnumTagMultiPayload(v4, a3, v97);
      return v4;
  }
}

uint64_t assignWithTake for MLClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLClassifier);
    v74 = a3;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    *a1 = *a2;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    v78 = EnumCaseMultiPayload;
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v7 = type metadata accessor for AnyTreeClassifierModel(0);
        v8 = *(v7 + 24);
        v9 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
        v10 = *(v7 + 28);
        *(a1 + v10 + 8) = *(a2 + v10 + 8);
        *(a1 + v10) = *(a2 + v10);
        v11 = type metadata accessor for MLBoostedTreeClassifier(0);
        *(a1 + v11[5]) = *(a2 + v11[5]);
        *(a1 + v11[6]) = *(a2 + v11[6]);
        *(a1 + v11[7]) = *(a2 + v11[7]);
        v12 = v11[8];
        v13 = (a1 + v12);
        v14 = (a2 + v12);
        v70 = 14;
        goto LABEL_8;
      case 1u:
        v35 = type metadata accessor for AnyTreeClassifierModel(0);
        v36 = *(v35 + 24);
        v37 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v37 - 8) + 32))(a1 + v36, a2 + v36, v37);
        v38 = *(v35 + 28);
        *(a1 + v38 + 8) = *(a2 + v38 + 8);
        *(a1 + v38) = *(a2 + v38);
        v11 = type metadata accessor for MLDecisionTreeClassifier(0);
        *(a1 + v11[5]) = *(a2 + v11[5]);
        *(a1 + v11[6]) = *(a2 + v11[6]);
        *(a1 + v11[7]) = *(a2 + v11[7]);
        v22 = v11[8];
        v23 = *(a2 + v22);
        v24 = *(a2 + v22 + 16);
        v25 = *(a2 + v22 + 32);
        *(a1 + v22 + 48) = *(a2 + v22 + 48);
        goto LABEL_11;
      case 2u:
        v26 = type metadata accessor for AnyTreeClassifierModel(0);
        v27 = *(v26 + 24);
        v28 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v28 - 8) + 32))(a1 + v27, a2 + v27, v28);
        v29 = *(v26 + 28);
        *(a1 + v29 + 8) = *(a2 + v29 + 8);
        *(a1 + v29) = *(a2 + v29);
        v11 = type metadata accessor for MLRandomForestClassifier(0);
        *(a1 + v11[5]) = *(a2 + v11[5]);
        *(a1 + v11[6]) = *(a2 + v11[6]);
        *(a1 + v11[7]) = *(a2 + v11[7]);
        v30 = v11[8];
        v13 = (a1 + v30);
        v14 = (a2 + v30);
        v70 = 11;
LABEL_8:
        qmemcpy(v13, v14, 8 * v70);
        break;
      case 3u:
        v31 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
        v32 = *(v31 + 24);
        v33 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
        (*(*(v33 - 8) + 32))(a1 + v32, a2 + v32, v33);
        v34 = *(v31 + 28);
        *(a1 + v34 + 8) = *(a2 + v34 + 8);
        *(a1 + v34) = *(a2 + v34);
        v11 = type metadata accessor for MLLogisticRegressionClassifier(0);
        *(a1 + v11[5]) = *(a2 + v11[5]);
        *(a1 + v11[6]) = *(a2 + v11[6]);
        *(a1 + v11[7]) = *(a2 + v11[7]);
        qmemcpy((a1 + v11[8]), (a2 + v11[8]), 0x49uLL);
        break;
      case 4u:
        v15 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
        v16 = a1 + v15;
        v17 = a2 + v15;
        v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
        v18 = swift_getEnumCaseMultiPayload(v17, v79);
        v19 = v18 == 1;
        v20 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
        if (v18 == 1)
        {
          v20 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
        }

        v21 = __swift_instantiateConcreteTypeFromMangledName(v20);
        (*(*(v21 - 8) + 32))(v16, v17, v21);
        swift_storeEnumTagMultiPayload(v16, v79, v19);
        v11 = type metadata accessor for MLSupportVectorClassifier(0);
        *(a1 + v11[5]) = *(a2 + v11[5]);
        *(a1 + v11[6]) = *(a2 + v11[6]);
        *(a1 + v11[7]) = *(a2 + v11[7]);
        v22 = v11[8];
        v23 = *(a2 + v22);
        v24 = *(a2 + v22 + 16);
        v25 = *(a2 + v22 + 32);
        *(a1 + v22 + 41) = *(a2 + v22 + 41);
LABEL_11:
        *(a1 + v22 + 32) = v25;
        *(a1 + v22 + 16) = v24;
        *(a1 + v22) = v23;
        break;
      case 5u:
        JUMPOUT(0x6BE1CLL);
    }

    v39 = v11[9];
    v40 = (a1 + v39);
    v41 = (a2 + v39);
    v80 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v42 = swift_getEnumCaseMultiPayload(v41, v80);
    if (v42 == 1)
    {
      *v40 = *v41;
      v76 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v50 = v40;
      v71 = v40;
      v51 = *(v76 + 20);
      v72 = v50 + v51;
      v73 = type metadata accessor for DataFrame(0);
      v82 = *(*(v73 - 8) + 32);
      v82(v72, &v41[v51], v73);
      v82(&v71[*(v76 + 24)], &v41[*(v76 + 24)], v73);
      v49 = 1;
      v46 = v71;
      v47 = v80;
      v48 = v80;
    }

    else
    {
      if (v42)
      {
        v52 = v41;
        v47 = v80;
        memcpy(v40, v52, *(*(v80 - 8) + 64));
LABEL_20:
        v53 = v11[10];
        v54 = (a1 + v53);
        v55 = (v53 + a2);
        v56 = swift_getEnumCaseMultiPayload(v55, v47);
        if (v56 == 1)
        {
          *v54 = *v55;
          v83 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v65 = *(v83 + 20);
          v77 = &v54[v65];
          v66 = type metadata accessor for DataFrame(0);
          v67 = &v55[v65];
          v68 = *(*(v66 - 8) + 32);
          v68(v77, v67, v66);
          v68(&v54[*(v83 + 24)], &v55[*(v83 + 24)], v66);
          v64 = 1;
          v62 = v54;
          v63 = v80;
        }

        else
        {
          if (v56)
          {
            memcpy(v54, v55, *(*(v47 - 8) + 64));
            goto LABEL_28;
          }

          v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v58 = swift_getEnumCaseMultiPayload(v55, v57);
          v59 = v58 == 1;
          v60 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v58 == 1)
          {
            v60 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v61 = __swift_instantiateConcreteTypeFromMangledName(v60);
          (*(*(v61 - 8) + 32))(v54, v55, v61);
          swift_storeEnumTagMultiPayload(v54, v57, v59);
          v62 = v54;
          v63 = v80;
          v64 = 0;
        }

        swift_storeEnumTagMultiPayload(v62, v63, v64);
LABEL_28:
        swift_storeEnumTagMultiPayload(a1, v74, v78);
        return a1;
      }

      v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v43 = swift_getEnumCaseMultiPayload(v41, v81);
      v75 = v43 == 1;
      v44 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v43 == 1)
      {
        v44 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v45 = __swift_instantiateConcreteTypeFromMangledName(v44);
      (*(*(v45 - 8) + 32))(v40, v41, v45);
      swift_storeEnumTagMultiPayload(v40, v81, v75);
      v46 = v40;
      v47 = v80;
      v48 = v80;
      v49 = 0;
    }

    swift_storeEnumTagMultiPayload(v46, v48, v49);
    goto LABEL_20;
  }

  return a1;
}

uint64_t type metadata completion function for MLClassifier(uint64_t a1)
{
  result = type metadata accessor for MLBoostedTreeClassifier(319);
  if (v2 <= 0x3F)
  {
    v9[0] = *(result - 8) + 64;
    result = type metadata accessor for MLDecisionTreeClassifier(319);
    if (v3 <= 0x3F)
    {
      v9[1] = *(result - 8) + 64;
      result = type metadata accessor for MLRandomForestClassifier(319);
      if (v4 <= 0x3F)
      {
        v9[2] = *(result - 8) + 64;
        result = type metadata accessor for MLLogisticRegressionClassifier(319);
        if (v5 <= 0x3F)
        {
          v9[3] = *(result - 8) + 64;
          result = type metadata accessor for MLSupportVectorClassifier(319);
          if (v8 <= 0x3F)
          {
            v9[4] = *(result - 8) + 64;
            swift_initEnumMetadataMultiPayload(a1, 256, 5, v9, v6, v7);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t destroy for AnnotatedFeatureStore(uint64_t *a1)
{
  outlined consume of Data._Representation(*a1, a1[1]);
  a1[10];
  return a1[11];
}

uint64_t initializeWithCopy for AnnotatedFeatureStore(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Data._Representation(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v8 = *(a2 + 80);
  *(a1 + 80) = v8;
  v9 = *(a2 + 88);
  *(a1 + 88) = v9;
  v8;
  v9;
  return a1;
}

uint64_t assignWithCopy for AnnotatedFeatureStore(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Data._Representation(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Data._Representation(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v8 = *(a2 + 80);
  v9 = *(a1 + 80);
  *(a1 + 80) = v8;
  v8;
  v9;
  v10 = *(a2 + 88);
  v11 = *(a1 + 88);
  *(a1 + 88) = v10;
  v10;
  v11;
  return a1;
}

void *__swift_memcpy96_8(void *a1, const void *a2)
{
  result = a1;
  qmemcpy(a1, a2, 0x60uLL);
  return result;
}

uint64_t assignWithTake for AnnotatedFeatureStore(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of Data._Representation(v4, v5);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80);
  v6 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for AnnotatedFeatureStore(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 80) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 80) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for AnnotatedFeatureStore(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 96) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 96) = 0;
    }

    if (a2)
    {
      *(a1 + 80) = 2 * (a2 - 1);
    }
  }
}

uint64_t *AnnotatedFeatureStore.init(contentsOf:)(uint64_t a1, double a2, __m128 a3, __m128 a4, __m128 a5)
{
  log = v6;
  v93 = a1;
  v74 = v5;
  v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  v76 = *(v75 - 8);
  v7 = *(v76 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v82 = v69;
  v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v84 = *(v83 - 8);
  v10 = *(v84 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v77 = v69;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v85 = v69;
  v95 = type metadata accessor for UTType(0);
  v90 = *(v95 - 8);
  v15 = *(v90 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v94 = type metadata accessor for URL(0);
  *type = *(v94 - 8);
  v18 = *(*type + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v88 = v69;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v23 = alloca(v18);
  v24 = alloca(v18);
  BlobsFile.init()();
  v92 = _swiftEmptyArrayStorage;
  v72[11] = _swiftEmptyArrayStorage;
  URL.appendingPathComponent(_:)(0x617461646174656DLL, 0xED00006E6F736A2ELL);
  URL.appendingPathComponent(_:)(0x7365727574616566, 0xEC0000006E69622ELL);
  static UTType.json.getter();
  v91 = v69;
  v25 = static _FileUtilities.isReadableFile(at:of:)(v69, v69);
  v26 = *(v90 + 8);
  v26(v69, v95);
  v89 = v69;
  if (!v25 || (static UTType.data.getter(), v27 = static _FileUtilities.isReadableFile(at:of:)(v69, v69), v26(v69, v95), !v27))
  {
    v34 = *(*type + 8);
    v35 = v94;
    v34(v93, v94);
    goto LABEL_6;
  }

  v28 = v91;
  v29 = log;
  v30 = Data.init(contentsOf:options:)(v91, 0);
  if (!v29)
  {
    v95 = v31;
    v38 = v30;
    v39 = type metadata accessor for JSONDecoder(0);
    swift_allocObject(v39, *(v39 + 48), *(v39 + 52));
    v40 = JSONDecoder.init()();
    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Metadata]);
    v42 = lazy protocol witness table accessor for type [Metadata] and conformance <A> [A](&lazy protocol witness table cache variable for type [Metadata] and conformance <A> [A], lazy protocol witness table accessor for type Metadata and conformance Metadata, &protocol conformance descriptor for <A> [A]);
    v90 = v38;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)(v41, v38, v95, v41, v42);
    v87 = v40;
    v43 = v73[0];
    v44 = v88;
    v45 = v94;
    (*(*type + 16))(v88, v89, v94);
    v46 = Data.init(contentsOf:options:)(v44, 0);
    v86 = v43;
    BlobsFile.init(data:)(v46, v47, a2, a3, a4, a5);
    v34 = *(*type + 8);
    v34(v88, v45);
    outlined assign with take of BlobsFile(v71, v72);
    LOBYTE(log) = static os_log_type_t.debug.getter();
    type metadata accessor for OS_os_log();
    v43;
    v48 = static OS_os_log.default.getter(v43);
    *type = log;
    if (os_log_type_enabled(v48, log))
    {
      v49 = swift_slowAlloc(12, -1);
      log = v48;
      v50 = v49;
      *v49 = 134217984;
      *(v49 + 4) = *(v43 + 16);
      v43;
      _os_log_impl(&dword_0, log, type[0], "Reading AnnotatedFeatureStore with %ld elements", v50, 0xCu);
      v51 = v50;
      v48 = log;
      v51, -1, -1;
    }

    else
    {
      v43;
    }

    log = 0;

    v81 = *(v43 + 16);
    if (v81)
    {
      qmemcpy(v70, v72, sizeof(v70));
      v52 = (v43 + 48);
      v53 = 0;
      v54 = v95;
      while (1)
      {
        v55 = *(v52 - 2);
        v79 = *(v52 - 1);
        v88 = v52;
        v56 = *v52;
        *type = v55;
        v55;
        v56;
        v78 = v53;
        v57 = log;
        v58 = BlobsFile.floatBlob(at:)(v53);
        log = v57;
        if (v57)
        {
          break;
        }

        v73[0] = v58;
        v59 = *type;
        type[0];
        v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
        v60 = lazy protocol witness table accessor for type [Float] and conformance [A]();
        v61 = v85;
        MLShapedArray.init<A>(scalars:shape:)(v73, v59, &type metadata for Float, v80, &protocol witness table for Float, v60);
        v62 = v77;
        v63 = v61;
        v64 = v83;
        (*(v84 + 16))(v77, v63, v83);
        v73[0] = v79;
        v73[1] = v56;
        v56;
        AnnotatedFeature.init(feature:annotation:)(v62, v73, v64, &type metadata for String);
        v56;
        *type;
        if (!swift_isUniquelyReferenced_nonNull_native(v92))
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v92 + 2) + 1, 1, v92);
        }

        v65 = *(v92 + 2);
        if (*(v92 + 3) >> 1 <= v65)
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v92 + 3) >= 2uLL, v65 + 1, 1, v92);
        }

        v66 = v78 + 1;
        v67 = v92;
        *(v92 + 2) = v65 + 1;
        v53 = v66;
        (*(v76 + 32))(&v67[((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v65], v82, v75);
        v72[11] = v67;
        (*(v84 + 8))(v85, v83);
        v52 = v88 + 3;
        v54 = v95;
        if (v81 == v53)
        {
          goto LABEL_22;
        }
      }

      outlined consume of Data._Representation(v90, v54);
      v56;
      *type;
      v68 = v94;
      v34(v93, v94);
      v86;
      v34(v89, v68);
      v34(v91, v68);
      goto LABEL_8;
    }

    v54 = v95;
LABEL_22:

    outlined consume of Data._Representation(v90, v54);
    v35 = v94;
    v34(v93, v94);
    v86;
LABEL_6:
    v36 = v91;
    v34(v89, v35);
    v34(v36, v35);
    qmemcpy(v69, v72, sizeof(v69));
    qmemcpy(v73, v72, sizeof(v73));
    outlined retain of AnnotatedFeatureStore(v69);
    result = outlined release of AnnotatedFeatureStore(v73);
    qmemcpy(v74, v69, 0x60uLL);
    return result;
  }

  v32 = *(*type + 8);
  v33 = v94;
  v32(v93, v94);
  v32(v89, v33);
  v32(v28, v33);
LABEL_8:
  qmemcpy(v73, v72, sizeof(v73));
  return outlined release of AnnotatedFeatureStore(v73);
}

uint64_t AnnotatedFeatureStore.write(to:)(uint64_t a1)
{
  v3 = v1;
  v4 = v2;
  v6 = type metadata accessor for URL(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = alloca(v8);
  v12 = alloca(v8);
  result = *(v4 + 88);
  v14 = *(result + 16);
  if (v14)
  {
    v31 = &v24;
    v27 = v7;
    v25 = a1;
    v26 = &v24;
    v29 = v6;
    type[0] = static os_log_type_t.debug.getter();
    type metadata accessor for OS_os_log();
    outlined retain of AnnotatedFeatureStore(v4);
    outlined retain of AnnotatedFeatureStore(v4);
    v15 = static OS_os_log.default.getter(v4);
    *type = type[0];
    if (os_log_type_enabled(v15, type[0]))
    {
      v16 = swift_slowAlloc(22, -1);
      v28 = v1;
      v17 = v16;
      *v16 = 134218240;
      *(v16 + 4) = v14;
      outlined release of AnnotatedFeatureStore(v4);
      *(v17 + 12) = 2048;
      *(v17 + 14) = *(v4 + 16);
      outlined release of AnnotatedFeatureStore(v4);
      _os_log_impl(&dword_0, v15, type[0], "Writing AnnotatedFeatureStore with %ld elements and %ld blobs", v17, 0x16u);
      v18 = v17;
      v3 = v28;
      v18, -1, -1;
    }

    else
    {

      outlined release of AnnotatedFeatureStore(v4);
      outlined release of AnnotatedFeatureStore(v4);
    }

    result = static _FileUtilities.prepareForWriting(to:isDirectory:)(v25, 1);
    if (!v3)
    {
      *type = v4;
      v19 = v31;
      URL.appendingPathComponent(_:)(0x617461646174656DLL, 0xED00006E6F736A2ELL);
      AnnotatedFeatureStore.writeMetadata(to:)(v19);
      v20 = v31;
      v31 = *(v27 + 8);
      (v31)(v20, v29);
      v28 = 0;
      v21 = **type;
      v22 = *(*type + 8);
      v23 = v26;
      URL.appendingPathComponent(_:)(0x7365727574616566, 0xEC0000006E69622ELL);
      Data.write(to:options:)(v23, 1, v21, v22);
      return (v31)(v23, v29);
    }
  }

  return result;
}

uint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    v1 = objc_opt_self(OS_os_log);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for OS_os_log = result;
  }

  return result;
}

uint64_t *outlined retain of AnnotatedFeatureStore(uint64_t *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  outlined copy of Data._Representation(*a1, a1[1]);
  v1;
  v2;
  return a1;
}

uint64_t *outlined release of AnnotatedFeatureStore(uint64_t *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  outlined consume of Data._Representation(*a1, a1[1]);
  v2;
  v1;
  return a1;
}

uint64_t AnnotatedFeatureStore.writeMetadata(to:)(uint64_t a1)
{
  v46 = v1;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v40 = *(v39 - 8);
  v3 = *(v40 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v41 = &v35;
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v51 = &v35;
  v10 = *(v2 + 88);
  v35 = v10;
  v11 = *(v10 + 16);
  v47 = a1;
  if (v11)
  {
    v48 = _swiftEmptyArrayStorage;
    v49 = v10;
    v10;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v48;
    v13 = v49 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v44 = *(v6 + 16);
    v43 = v6;
    v45 = *(v6 + 72);
    do
    {
      v50 = v12;
      v49 = v11;
      v37 = v13;
      v14 = v42;
      v44(v51, v13, v42);
      v15 = v41;
      AnnotatedFeature.feature.getter(v14);
      v16 = v39;
      v38 = MLShapedArray.shape.getter(v39);
      (*(v40 + 8))(v15, v16);
      v17 = v51;
      AnnotatedFeature.annotation.getter(v14);
      v18 = v36[0];
      v19 = v36[1];
      v20 = v14;
      (*(v43 + 8))(v17, v14);
      v48 = v50;
      v21 = v50[2];
      v22 = v50[3];
      v23 = v50;
      if (v22 >> 1 <= v21)
      {
        v20 = v21 + 1;
        v50 = v19;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 >= 2, v21 + 1, 1);
        v19 = v50;
        v23 = v48;
      }

      v23[2] = v21 + 1;
      v24 = 3 * v21;
      v23[v24 + 4] = v38;
      v23[v24 + 5] = v18;
      v23[v24 + 6] = v19;
      v11 = v49 - 1;
      v12 = v23;
      v13 = v45 + v37;
    }

    while (v49 != 1);
    outlined release of [Int?](&v35, v20);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v25 = type metadata accessor for JSONEncoder(0);
  swift_allocObject(v25, *(v25 + 48), *(v25 + 52));
  v26 = JSONEncoder.init()(v25);
  v36[0] = v12;
  v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Metadata]);
  v28 = lazy protocol witness table accessor for type [Metadata] and conformance <A> [A](&lazy protocol witness table cache variable for type [Metadata] and conformance <A> [A], lazy protocol witness table accessor for type Metadata and conformance Metadata, &protocol conformance descriptor for <A> [A]);
  v51 = v26;
  v29 = v46;
  v30 = dispatch thunk of JSONEncoder.encode<A>(_:)(v36, v27, v28);
  if (v29)
  {
    v12;
  }

  else
  {
    v33 = v30;
    v34 = v31;
    v12;
    Data.write(to:options:)(v47, 0, v33, v34);
    outlined consume of Data._Representation(v33, v34);
  }
}

char Metadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 ^ 0x5365727574616566 | a2 ^ 0xEC00000065706168 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x5365727574616566, 0xEC00000065706168, a1, a2, 0) & 1) == 0)
  {
    if (a1 ^ 0x697461746F6E6E61 | a2 ^ 0xEA00000000006E6FLL)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)(0x697461746F6E6E61, 0xEA00000000006E6FLL, a1, a2, 0);
      a2, 0xEA00000000006E6FLL;
      return 2 - (v3 & 1);
    }

    else
    {
      a2, 0xEA00000000006E6FLL;
      return 1;
    }
  }

  else
  {
    a2, 0xEC00000065706168;
    return 0;
  }
}

uint64_t Metadata.CodingKeys.stringValue.getter(char a1)
{
  result = 0x5365727574616566;
  if (a1)
  {
    return 0x697461746F6E6E61;
  }

  return result;
}

uint64_t Metadata.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = v4;
  v20 = a4;
  v21 = a3;
  v19 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<Metadata.CodingKeys>);
  v22 = *(v18 - 8);
  v5 = *(v22 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v8);
  v10 = lazy protocol witness table accessor for type Metadata.CodingKeys and conformance Metadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)(&unk_38FFB8, &unk_38FFB8, v10, v8, v9);
  v16 = v19;
  v23 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  v12 = lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
  v13 = v18;
  v14 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v16, &v23, v18, v11, v12);
  if (!v14)
  {
    v24[0] = 1;
    KeyedEncodingContainer.encode(_:forKey:)(v21, v20, v24, v13);
  }

  return (*(v22 + 8))(&v16, v13);
}

uint64_t *Metadata.init(from:)(void *a1)
{
  v20 = v1;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<Metadata.CodingKeys>);
  v18 = *(v17 - 8);
  v2 = *(v18 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = &v15;
  v6 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  v7 = lazy protocol witness table accessor for type Metadata.CodingKeys and conformance Metadata.CodingKeys();
  v21 = &v15;
  v8 = v20;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&unk_38FFB8, &unk_38FFB8, v7, v6, v19);
  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v20 = a1;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
    v22 = 0;
    v10 = lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
    v11 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)(v9, &v22, v17, v9, v10);
    v23[0] = 1;
    v19 = v16;
    v16;
    KeyedDecodingContainer.decode(_:forKey:)(v23, v11);
    v14 = v13;
    (*(v18 + 8))(v21, v11);
    v14;
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v14;
    v5 = v19;
    v19;
  }

  return v5;
}

char protocol witness for CodingKey.init(stringValue:) in conformance Metadata.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = Metadata.CodingKeys.init(stringValue:)(a1, a2);
  *v3 = result;
  return result;
}

uint64_t *protocol witness for Decodable.init(from:) in conformance Metadata(void *a1)
{
  v3 = v1;
  result = Metadata.init(from:)(a1);
  if (!v2)
  {
    *v3 = result;
    v3[1] = v5;
    v3[2] = v6;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Metadata and conformance Metadata()
{
  result = lazy protocol witness table cache variable for type Metadata and conformance Metadata;
  if (!lazy protocol witness table cache variable for type Metadata and conformance Metadata)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Metadata, &type metadata for Metadata);
    lazy protocol witness table cache variable for type Metadata and conformance Metadata = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Metadata and conformance Metadata;
  if (!lazy protocol witness table cache variable for type Metadata and conformance Metadata)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Metadata, &type metadata for Metadata);
    lazy protocol witness table cache variable for type Metadata and conformance Metadata = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Metadata] and conformance <A> [A](uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [Metadata]);
    a2();
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Float] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Float] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Float] and conformance [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [Float]);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v1);
    lazy protocol witness table cache variable for type [Float] and conformance [A] = result;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Metadata(uint64_t *a1, uint64_t *a2)
{
  return initializeBufferWithCopyOfBuffer for Metadata(a1, a2);
}

{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = a2[2];
  a1[2] = v4;
  v3;
  v4;
  return a1;
}

uint64_t *assignWithCopy for Metadata(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v3;
  v4, a2;
  a1[1] = a2[1];
  v5 = a2[2];
  v6 = a1[2];
  a1[2] = v5;
  v5;
  v6, a2;
  return a1;
}

uint64_t *assignWithTake for Metadata(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  v3, a2;
  a1[1] = a2[1];
  v4 = a1[2];
  a1[2] = a2[2];
  v4, a2;
  return a1;
}

uint64_t getEnumTagSinglePayload for Metadata(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*a1 & 0xFFFFFFFF00000001) != 0 ? -1 : *a1 >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for Metadata(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 24) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 24) = 0;
    }

    if (a2)
    {
      *a1 = 2 * (a2 - 1);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Metadata.CodingKeys and conformance Metadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Metadata.CodingKeys, &unk_38FFB8);
    lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Metadata.CodingKeys, &unk_38FFB8);
    lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Metadata.CodingKeys, &unk_38FFB8);
    lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Metadata.CodingKeys, &unk_38FFB8);
    lazy protocol witness table cache variable for type Metadata.CodingKeys and conformance Metadata.CodingKeys = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A](uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [Int]);
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Metadata.CodingKeys(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFF)
  {
    v4 = a3 + 1;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFE)
  {
    v5 = a2 - 255;
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
          *a1 = a2 + 1;
        }

        break;
      case 5:
        JUMPOUT(0x6D770);
    }
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySaySSG6tokens_AF6labelstG_AFs5NeverOTg5212_s8CreateML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = (a1 + 32);
    do
    {
      v5 = v1;
      v3 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      v8 = v3 + 1;
      v6 = *v2;
      *v2;
      if (v7 >> 1 <= v3)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v7 >= 2, v8, 1);
      }

      _swiftEmptyArrayStorage[2] = v8;
      _swiftEmptyArrayStorage[v3 + 4] = v6;
      v2 += 2;
      v1 = v5 - 1;
    }

    while (v5 != 1);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueOG_SSsAE_pTg503_s8d97ML12MLWordTaggerV16createTextColumn_4name7context11TabularData0G0VySaySSGGAG0K5FrameV_S2StKFZAJSgt4AA11fG29OGSgKXEfU_AjQKXEfU_SSAPKXEfU_SSTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    for (i = (a1 + 48); ; i += 24)
    {
      v6 = v4;
      v7 = *(i - 2);
      v8 = *(i - 1);
      v19 = v7;
      v20 = v8;
      if (*i != 2)
      {
        break;
      }

      outlined copy of MLDataValue(v7, v8, 2u);
      v4 = v6;
      v18 = v6;
      v9 = v6[2];
      v10 = v9 + 1;
      if (v4[3] >> 1 <= v9)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v10, 1);
        v10 = v9 + 1;
        v4 = v18;
      }

      v4[2] = v10;
      v11 = 2 * v9;
      v4[v11 + 4] = v19;
      v4[v11 + 5] = v20;
      if (!--v3)
      {
        v14 = v4;
        a3;
        return v14;
      }
    }

    v22 = *i;
    outlined copy of MLDataValue(v7, v8, *i);
    _StringGuts.grow(_:)(43);
    a3;
    0xE000000000000000;
    *&v16 = a2;
    *(&v16 + 1) = a3;
    v12._object = " in the data frame." + 0x8000000000000000;
    v12._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v12);
    v12._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v12._object, 0, 0);
    *v13 = v16;
    *(v13 + 16) = 0;
    *(v13 + 32) = 0;
    *(v13 + 48) = 1;
    swift_willThrow(&type metadata for MLCreateError, v12._object);
    outlined consume of MLDataValue(v19, v20, v22);
    a3;
  }

  else
  {
    a3;
    return _swiftEmptyArrayStorage;
  }
}

BOOL specialized Collection.isEmpty.getter()
{
  v0 = type metadata accessor for DataFrame.Rows(0);
  v1 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type DataFrame.Rows and conformance DataFrame.Rows, &type metadata accessor for DataFrame.Rows, &protocol conformance descriptor for DataFrame.Rows);
  dispatch thunk of Collection.startIndex.getter(v0, v1);
  dispatch thunk of Collection.endIndex.getter(v0, v1);
  return v3 == v4;
}

{
  return specialized Collection.isEmpty.getter();
}

{
  return CMLSequence.size.getter() == 0;
}

{

  v0 = CMLSequence.size.getter();
  v1 = specialized RandomAccessCollection<>.distance(from:to:)(0, v0);

  return v1 == 0;
}

{
  return CMLSequence.size.getter() == 0;
}

{
  return CMLDictionary.size.getter() == 0;
}

{
  return specialized Collection.isEmpty.getter();
}

BOOL specialized Collection.isEmpty.getter(uint64_t a1, char a2)
{
  outlined copy of Result<_DataTable, Error>(a1, a2);
  v2 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a1, a2 & 1);
  return v2 == 0;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  v1 = Set.init(minimumCapacity:)(*(a1 + 16), &type metadata for String, &protocol witness table for String);
  v10 = v1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v9 = a1;
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      *v3;
      specialized Set._Variant.insert(_:)(v8, v4, v5);
      v8[1];
      v3 += 2;
      --v2;
    }

    while (v2);
    v9;
    return v10;
  }

  else
  {
    v6 = v1;
    a1;
  }

  return v6;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<String>>>);
  v1 = *(*(v0 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v6 = dispatch thunk of Sequence.underestimatedCount.getter(v4, v5);
  v18 = Set.init(minimumCapacity:)(v6, &type metadata for String, &protocol witness table for String);
  v19 = v4;
  dispatch thunk of Sequence.makeIterator()(v4, v5);
  v7 = *(v0 + 36);
  v21 = v14;
  v20 = &v14[v7];
  v8 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v17 = v8;
  v9 = v19;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v19, v8);
    if (*v20 == v15[0])
    {
      break;
    }

    v10 = dispatch thunk of Collection.subscript.read(v15, v20, v9, v8);
    v16 = *v11;
    v12 = v11[1];
    v12;
    v10(v15, 0);
    v8 = v17;
    dispatch thunk of Collection.formIndex(after:)(v20, v9, v17);
    specialized Set._Variant.insert(_:)(v15, v16, v12);
    v15[1];
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<String>>>);
  return v18;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_11TabularData6ColumnVySSGTt0g5(uint64_t a1)
{
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  v1 = *(*(v24 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v26 = &v21;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Sequence.underestimatedCount.getter(v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for String?);
  v8 = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &demangling cache variable for type metadata for String?);
  v9 = v7;
  v10 = v4;
  v23 = Set.init(minimumCapacity:)(v6, v9, v8);
  v11 = v26;
  dispatch thunk of Sequence.makeIterator()(v10, v5);
  v12 = (v11 + *(v24 + 36));
  v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v25 = v13;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v10, v13);
    if (*v12 == v22[0])
    {
      break;
    }

    v14 = dispatch thunk of Collection.subscript.read(v22, v12, v10, v13);
    v15 = v12;
    v16 = v10;
    v17 = v14;
    v24 = *v18;
    v19 = v18[1];
    v19;
    v17(v22, 0);
    v10 = v16;
    v12 = v15;
    v13 = v25;
    dispatch thunk of Collection.formIndex(after:)(v12, v10, v25);
    specialized Set._Variant.insert(_:)(v22, v24, v19);
    v22[1];
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, &demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  return v23;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSiSg_11TabularData24DiscontiguousColumnSliceVySiGTt0g5(uint64_t a1)
{
  v22 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Int>>);
  v1 = *(*(v23 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v21 = v16;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DiscontiguousColumnSlice<Int>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<Int> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<Int>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
  v6 = dispatch thunk of Sequence.underestimatedCount.getter(v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
  v8 = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, &demangling cache variable for type metadata for Int?);
  v18 = Set.init(minimumCapacity:)(v6, v7, v8);
  v9 = v21;
  v22 = v4;
  dispatch thunk of Sequence.makeIterator()(v4, v5);
  v23 = v9 + *(v23 + 36);
  v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<Int> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<Int>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
  v10 = v23;
  v11 = v22;
  v12 = v19;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v22, v19);
    if (*v23 == v16[0])
    {
      break;
    }

    v13 = dispatch thunk of Collection.subscript.read(v16, v10, v11, v12);
    v17 = *v14;
    v20 = *(v14 + 8);
    v13(v16, 0);
    dispatch thunk of Collection.formIndex(after:)(v10, v11, v12);
    specialized Set._Variant.insert(_:)(v16, v17, v20);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Int>>);
  return v18;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_11TabularData12FilledColumnVyAD0E0VySiGGTt0g5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<Int>>>);
  v1 = *(*(v0 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
  v6 = dispatch thunk of Sequence.underestimatedCount.getter(v4, v5);
  v17 = Set.init(minimumCapacity:)(v6, &type metadata for Int, &protocol witness table for Int);
  v18 = v4;
  dispatch thunk of Sequence.makeIterator()(v4, v5);
  v7 = *(v0 + 36);
  v21 = v14;
  v19 = &v14[v7];
  v20 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
  v8 = v19;
  v9 = v18;
  v10 = v20;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v18, v20);
    if (*v19 == v15[0])
    {
      break;
    }

    v11 = dispatch thunk of Collection.subscript.read(v15, v8, v9, v10);
    v16 = *v12;
    v11(v15, 0);
    dispatch thunk of Collection.formIndex(after:)(v8, v9, v10);
    specialized Set._Variant.insert(_:)(v15, v16);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<Int>>>);
  return v17;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation3URLV_SayAFGTt0g5(uint64_t a1)
{
  v1 = type metadata accessor for URL(0);
  v25 = *(v1 - 8);
  v2 = *(v25 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = alloca(v2);
  v6 = alloca(v2);
  v18 = &v17;
  v7 = *(a1 + 16);
  v8 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v9 = Set.init(minimumCapacity:)(v7, v1, v8);
  v24 = v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v23 = a1;
    v12 = a1 + v11;
    v19 = *(v25 + 16);
    v20 = *(v25 + 72);
    v21 = v1;
    v22 = &v17;
    v13 = v1;
    v14 = v18;
    do
    {
      v17 = v10;
      v19(&v17, v12, v13);
      specialized Set._Variant.insert(_:)(v14, &v17);
      (*(v25 + 8))(v14, v13);
      v12 += v20;
      v10 = v17 - 1;
    }

    while (v17 != 1);
    v23;
    return v24;
  }

  else
  {
    v15 = v9;
    a1;
  }

  return v15;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSiSg_11TabularData6ColumnVySiGTt0g5(uint64_t a1)
{
  v22 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<Int>>);
  v1 = *(*(v23 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v21 = v16;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Sequence.underestimatedCount.getter(v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
  v8 = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, &demangling cache variable for type metadata for Int?);
  v18 = Set.init(minimumCapacity:)(v6, v7, v8);
  v9 = v21;
  v22 = v4;
  dispatch thunk of Sequence.makeIterator()(v4, v5);
  v23 = v9 + *(v23 + 36);
  v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v10 = v23;
  v11 = v22;
  v12 = v19;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v22, v19);
    if (*v23 == v16[0])
    {
      break;
    }

    v13 = dispatch thunk of Collection.subscript.read(v16, v10, v11, v12);
    v17 = *v14;
    v20 = *(v14 + 8);
    v13(v16, 0);
    dispatch thunk of Collection.formIndex(after:)(v10, v11, v12);
    specialized Set._Variant.insert(_:)(v16, v17, v20);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for IndexingIterator<Column<Int>>);
  return v18;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8CreateML13MLRecommenderV10IdentifierO_s15LazyMapSequenceVySayAH4user_AH4itemSd6ratingtGAHGTt0g5(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier();
  v6 = Set.init(minimumCapacity:)(v4, &type metadata for MLRecommender.Identifier, v5);
  v32 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v31 = a1;
    v30 = a2;
    v8 = (a1 + 80);
    v33 = a3;
    do
    {
      v26 = v7;
      v29 = *(v8 - 6);
      v9 = *(v8 - 5);
      v10 = *(v8 - 3);
      v27 = v10;
      v11 = *(v8 - 2);
      v12 = *v8;
      v13 = *(v8 - 32);
      v34 = *(v8 - 8);
      v16 = v29;
      v17 = v9;
      LOBYTE(v18) = v13;
      v19 = v10;
      v20 = v11;
      v28 = v11;
      v21 = v34;
      v22 = v12;
      outlined copy of MLRecommender.Identifier(v29, v9, v13);
      v14 = v11;
      LOBYTE(v11) = v34;
      outlined copy of MLRecommender.Identifier(v10, v14, v34);
      v30(&v16);
      outlined consume of MLRecommender.Identifier(v29, v9, v13);
      outlined consume of MLRecommender.Identifier(v27, v28, v11);
      specialized Set._Variant.insert(_:)(&v16, v23, v24, v25);
      outlined consume of MLRecommender.Identifier(v16, v17, v18);
      v8 += 7;
      v7 = v26 - 1;
    }

    while (v26 != 1);

    v31;
    return v32;
  }

  else
  {

    a1;
  }

  return v6;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5(uint64_t a1)
{
  v1 = Set.init(minimumCapacity:)(*(a1 + 16), &type metadata for Int, &protocol witness table for Int);
  v8 = v1;
  v2 = *(a1 + 16);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = *(a1 + 8 * i + 32);
      specialized Set._Variant.insert(_:)(&v7, v4);
    }

    a1;
    return v8;
  }

  else
  {
    v5 = v1;
    a1;
  }

  return v5;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8CreateML13MLRecommenderV10IdentifierO_SayAHGTt0g5(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier();
  v3 = Set.init(minimumCapacity:)(v1, &type metadata for MLRecommender.Identifier, v2);
  v14 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v13 = a1;
    v5 = (a1 + 48);
    do
    {
      v12 = v4;
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      outlined copy of MLRecommender.Identifier(v6, v7, *v5);
      specialized Set._Variant.insert(_:)(v10, v6, v7, v8);
      outlined consume of MLRecommender.Identifier(v10[0], v10[1], v11);
      v5 += 24;
      v4 = v12 - 1;
    }

    while (v12 != 1);
    v13;
    return v14;
  }

  else
  {
    a1;
  }

  return v3;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSay10Foundation3URLVG_GTt0g5(uint64_t a1)
{
  v18 = Set.init(minimumCapacity:)(*(a1 + 16), &type metadata for String, &protocol witness table for String);
  specialized _NativeDictionary.makeIterator()(a1);
  v20 = v12;
  v22 = v13;
  v1 = v15;
  v2 = v16;
  v19 = v14;
  v21 = (v14 + 64) >> 6;
  while (1)
  {
    if (v2)
    {
      v3 = v1;
      goto LABEL_24;
    }

    v4 = v1 + 1;
    if (__OFADD__(1, v1))
    {
      BUG();
    }

    if (v4 >= v21)
    {
      goto LABEL_25;
    }

    v2 = *(v22 + 8 * v4);
    if (v2)
    {
      v3 = v1 + 1;
      goto LABEL_24;
    }

    v3 = v1 + 2;
    if (v1 + 2 >= v21)
    {
      goto LABEL_25;
    }

    v2 = *(v22 + 8 * v4 + 8);
    if (!v2)
    {
      v3 = v1 + 3;
      if (v1 + 3 >= v21)
      {
        goto LABEL_25;
      }

      v2 = *(v22 + 8 * v4 + 16);
      if (!v2)
      {
        v3 = v1 + 4;
        if (v1 + 4 >= v21)
        {
          goto LABEL_25;
        }

        v2 = *(v22 + 8 * v4 + 24);
        if (!v2)
        {
          v3 = v1 + 5;
          if (v1 + 5 >= v21)
          {
            goto LABEL_25;
          }

          v2 = *(v22 + 8 * v4 + 32);
          if (!v2)
          {
            v3 = v1 + 6;
            if (v1 + 6 >= v21)
            {
              goto LABEL_25;
            }

            v2 = *(v22 + 8 * v4 + 40);
            if (!v2)
            {
              v3 = v1 + 7;
              if (v1 + 7 >= v21)
              {
                goto LABEL_25;
              }

              v2 = *(v22 + 8 * v4 + 48);
              if (!v2)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_24:
    _BitScanForward64(&v6, v2);
    v2 &= v2 - 1;
    v7 = *(v20 + 48);
    v8 = (v3 << 10) | (16 * v6);
    v9 = *(v7 + v8);
    v10 = *(v7 + v8 + 8);
    v10;
    specialized Set._Variant.insert(_:)(v17, v9, v10);
    v17[1];
    v1 = v3;
  }

  v5 = v1 + 8;
  while (v5 < v21)
  {
    v2 = *(v22 + 8 * v5++);
    if (v2)
    {
      v3 = v5 - 1;
      goto LABEL_24;
    }
  }

LABEL_25:
  outlined consume of [String : [Double]].Iterator._Variant(v20);
  return v18;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_s15FlattenSequenceVySaySaySSGGGTt0g5(uint64_t a1)
{
  v12 = a1;
  v1 = 0;
  v10 = Set.init(minimumCapacity:)(0, &type metadata for String, &protocol witness table for String);
  v13 = 0;
  while (1)
  {
    if (v1)
    {
      v2 = (v1 + 40);
      v3 = 0;
      while (v3 != *(v1 + 16))
      {
        if (v3 >= *(v1 + 16))
        {
          BUG();
        }

        v11 = v3 + 1;
        v4 = *(v2 - 1);
        v5 = *v2;
        *v2;
        specialized Set._Variant.insert(_:)(v9, v4, v5);
        v9[1];
        v3 = v11;
        v2 += 2;
      }
    }

    v6 = v12;
    if (v13 == *(v12 + 16))
    {
      break;
    }

    if (v13 >= *(v12 + 16))
    {
      BUG();
    }

    v7 = *(v12 + 8 * v13++ + 32);
    v7;
    v1;
    v1 = v7;
  }

  v1;
  v6;
  return v10;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v2 + v4;
  if (__OFADD__(v2, v4))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  if (*(a1 + 16))
  {
    v7 = v3[2];
    if ((v3[3] >> 1) - v7 < v2)
    {
      BUG();
    }

    swift_arrayInitWithCopy(&v3[2 * v7 + 4], a1 + 32, v2, &type metadata for String);
    if (v2)
    {
      v8 = __OFADD__(v3[2], v2);
      v9 = v3[2] + v2;
      if (v8)
      {
        BUG();
      }

      v3[2] = v9;
    }
  }

  else if (v2)
  {
    BUG();
  }

  result = a1;
  *v1 = v3;
  return result;
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v2 + v4;
  if (__OFADD__(v2, v4))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  if (*(a1 + 16))
  {
    v7 = v3[2];
    if ((v3[3] >> 1) - v7 < v2)
    {
      BUG();
    }

    memcpy(v3 + 4 * v7 + 32, (a1 + 32), 4 * v2);
    if (v2)
    {
      v8 = __OFADD__(v3[2], v2);
      v9 = v3[2] + v2;
      if (v8)
      {
        BUG();
      }

      v3[2] = v9;
    }
  }

  else if (v2)
  {
    BUG();
  }

  result = a1;
  *v1 = v3;
  return result;
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v2 + v4;
  if (__OFADD__(v2, v4))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  if (*(a1 + 16))
  {
    v7 = v3[2];
    if ((v3[3] >> 1) - v7 < v2)
    {
      BUG();
    }

    memcpy(&v3[v7 + 4], (a1 + 32), 8 * v2);
    if (v2)
    {
      v8 = __OFADD__(v3[2], v2);
      v9 = v3[2] + v2;
      if (v8)
      {
        BUG();
      }

      v3[2] = v9;
    }
  }

  else if (v2)
  {
    BUG();
  }

  result = a1;
  *v1 = v3;
  return result;
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v2 + v4;
  if (__OFADD__(v2, v4))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  if (*(a1 + 16))
  {
    v7 = v3[2];
    if ((v3[3] >> 1) - v7 < v2)
    {
      BUG();
    }

    memcpy(&v3[v7 + 4], (a1 + 32), 8 * v2);
    if (v2)
    {
      v8 = __OFADD__(v3[2], v2);
      v9 = v3[2] + v2;
      if (v8)
      {
        BUG();
      }

      v3[2] = v9;
    }
  }

  else if (v2)
  {
    BUG();
  }

  result = a1;
  *v1 = v3;
  return result;
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v2 + v4;
  if (__OFADD__(v2, v4))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  if (!isUniquelyReferenced_nonNull_native || *(v3 + 3) >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  if (*(a1 + 16))
  {
    v7 = *(v3 + 2);
    if ((*(v3 + 3) >> 1) - v7 < v2)
    {
      BUG();
    }

    swift_arrayInitWithCopy(&v3[8 * v7 + 32], a1 + 32, v2, &type metadata for MLDataValue.MultiArrayType);
    if (v2)
    {
      v8 = __OFADD__(*(v3 + 2), v2);
      v9 = *(v3 + 2) + v2;
      if (v8)
      {
        BUG();
      }

      *(v3 + 2) = v9;
    }
  }

  else if (v2)
  {
    BUG();
  }

  result = a1;
  *v1 = v3;
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata accessor for Model);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v2 + v4;
  if (__OFADD__(v2, v4))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  if (*(a1 + 16))
  {
    v7 = v3[2];
    if ((v3[3] >> 1) - v7 < v2)
    {
      BUG();
    }

    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    swift_arrayInitWithCopy(v3 + *(v9 + 72) * v7 + v10, a1 + v10, v2, v8);
    if (v2)
    {
      v11 = __OFADD__(v3[2], v2);
      v12 = v3[2] + v2;
      if (v11)
      {
        BUG();
      }

      v3[2] = v12;
    }
  }

  else if (v2)
  {
    BUG();
  }

  result = a1;
  *v1 = v3;
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata accessor for NeuralNetwork.Layer);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata accessor for FeatureDescription);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = v5 - a3;
  if (__OFSUB__(v5, a3))
  {
    BUG();
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
    BUG();
  }

  v17 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v7);
  if (!isUniquelyReferenced_nonNull_native || (v11 = v7[3] >> 1, v11 < v9))
  {
    if (v8 > v9)
    {
      v9 = v8;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v7);
    v11 = v7[3] >> 1;
  }

  if (v17 == a3)
  {
    if (v6 > 0)
    {
      BUG();
    }
  }

  else
  {
    v12 = v7[2];
    if (v11 - v12 < v6)
    {
      BUG();
    }

    memcpy(v7 + 4 * v12 + 32, (a2 + 4 * a3), 4 * v6);
    if (v6 > 0)
    {
      v13 = __OFADD__(v7[2], v6);
      v14 = v7[2] + v6;
      if (v13)
      {
        BUG();
      }

      v7[2] = v14;
    }
  }

  result = swift_unknownObjectRelease(a1);
  *v4 = v7;
  return result;
}

{
  v5 = a4 >> 1;
  v6 = v5 - a3;
  if (__OFSUB__(v5, a3))
  {
    BUG();
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
    BUG();
  }

  v17 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v7);
  if (!isUniquelyReferenced_nonNull_native || (v11 = v7[3] >> 1, v11 < v9))
  {
    if (v8 > v9)
    {
      v9 = v8;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v7);
    v11 = v7[3] >> 1;
  }

  if (v17 == a3)
  {
    if (v6 > 0)
    {
      BUG();
    }
  }

  else
  {
    v12 = v7[2];
    if (v11 - v12 < v6)
    {
      BUG();
    }

    memcpy(&v7[v12 + 4], (a2 + 8 * a3), 8 * v6);
    if (v6 > 0)
    {
      v13 = __OFADD__(v7[2], v6);
      v14 = v7[2] + v6;
      if (v13)
      {
        BUG();
      }

      v7[2] = v14;
    }
  }

  result = swift_unknownObjectRelease(a1);
  *v4 = v7;
  return result;
}

char **specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v2 + v4;
  if (__OFADD__(v2, v4))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v3);
  if (!isUniquelyReferenced_nonNull_native || *(v3 + 3) >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  if (*(a1 + 16))
  {
    v7 = *(v3 + 2);
    if ((*(v3 + 3) >> 1) - v7 < v2)
    {
      BUG();
    }

    v8 = &v3[64 * v7 + 32];
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>);
    swift_arrayInitWithCopy(v8, a1 + 32, v2, v9);
    if (v2)
    {
      v10 = __OFADD__(*(v3 + 2), v2);
      v11 = *(v3 + 2) + v2;
      if (v10)
      {
        BUG();
      }

      *(v3 + 2) = v11;
    }
  }

  else if (v2)
  {
    BUG();
  }

  a1;
  result = v1;
  *v1 = v3;
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, char *a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = &v6[v4];
  if (__OFADD__(v4, v6))
  {
    BUG();
  }

  v20 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v5);
  if (!isUniquelyReferenced_nonNull_native || *(v5 + 24) >> 1 < v7)
  {
    if (v6 > v7)
    {
      v7 = v6;
    }

    a2 = v7;
    v5 = (v20)(isUniquelyReferenced_nonNull_native, v7, 1, v5);
  }

  v9 = a1;
  if (*(a1 + 16))
  {
    v10 = *(v5 + 16);
    v11 = (*(v5 + 24) >> 1) - v10;
    v12 = a3(0);
    if (v11 < v4)
    {
      BUG();
    }

    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = v14 + v5 + *(v13 + 72) * v10;
    v9 = a1;
    a2 = (a1 + v14);
    swift_arrayInitWithCopy(v15, a2, v4, v12);
    if (v4)
    {
      v16 = __OFADD__(*(v5 + 16), v4);
      v17 = *(v5 + 16) + v4;
      if (v16)
      {
        BUG();
      }

      *(v5 + 16) = v17;
    }
  }

  else if (v4)
  {
    BUG();
  }

  result = v9, a2;
  *v3 = v5;
  return result;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySaySSGGAIG_AH6tokens_AH6labelsts5NeverOTg5046_sSaySSGA3AIgggoo_AA_AAtAA6tokens_AA6labelsts5h93OIegnrzr_TR082_s8CreateML12MLWordTaggerV23createLabeledTokenPairs_15tokenColumnName05labeljK0J85Q72SSG6tokens_AG6labelstG11TabularData0P5FrameV_S2StKFZAgH_AgItAG_AGtXEfU1_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 16);
  v18 = v4;
  v19 = *(a2 + 16);
  if (v19 < v4)
  {
    v4 = *(a2 + 16);
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v22 = v4;
  if (v4)
  {
    a1;
    a2;
    v5 = 0;
    do
    {
      if (v18 == v5)
      {
        BUG();
      }

      if (v19 == v5)
      {
        BUG();
      }

      v6 = *(v3 + 8 * v5 + 32);
      v7 = *(v2 + 8 * v5 + 32);
      v8 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      v21 = v8 + 1;
      v6;
      v7;
      if (v17 >> 1 <= v8)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 >= 2, v21, 1);
      }

      ++v5;
      _swiftEmptyArrayStorage[2] = v21;
      v9 = 2 * v8;
      _swiftEmptyArrayStorage[v9 + 4] = v6;
      _swiftEmptyArrayStorage[v9 + 5] = v7;
      v3 = a1;
      v2 = a2;
    }

    while (v22 != v5);
  }

  else
  {
    a1;
    a2;
  }

  v10 = v22;
  while (v18 != v10)
  {
    if (v18 <= v10)
    {
      BUG();
    }

    v11 = v10 + 1;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    if (v19 == v10)
    {
      break;
    }

    if (v19 <= v10)
    {
      BUG();
    }

    v12 = *(v3 + 8 * v10 + 32);
    v13 = *(a2 + 8 * v10 + 32);
    v14 = _swiftEmptyArrayStorage[2];
    v23 = _swiftEmptyArrayStorage[3];
    v12;
    v13;
    if (v23 >> 1 <= v14)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 >= 2, v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = 2 * v14;
    _swiftEmptyArrayStorage[v15 + 4] = v12;
    _swiftEmptyArrayStorage[v15 + 5] = v13;
    v10 = v11;
    v3 = a1;
  }

  a2;
  v3;
  return _swiftEmptyArrayStorage;
}

uint64_t static MLWordTagger.validateDataFrame(_:tokenColumnName:labelColumnName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = v5;
  v60 = a5;
  v54 = a4;
  v65 = a3;
  v61._countAndFlagsBits = a2;
  v55 = type metadata accessor for DataFrame.Rows(0);
  v57 = *(v55 - 8);
  v6 = *(v57 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = &v54;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v64 = &v54;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v63 = a1;
  v16 = v66;
  result = static MLWordTagger.createTextColumn(_:name:context:)(a1, v61._countAndFlagsBits, v65, 0x6E656B6F54, 0xE500000000000000);
  if (v16)
  {
    return result;
  }

  v62 = v10;
  v65 = &v54;
  v66 = v9;
  v18 = v63;
  v19 = v54;
  static MLWordTagger.createTextColumn(_:name:context:)(v63, v54, v60, 0x6C6562614CLL, 0xE500000000000000);
  v60 = 0;
  v20 = v56;
  DataFrame.rows.getter(v18, v19, v21, v22);
  v23 = v20;
  v24 = specialized Collection.isEmpty.getter();
  v25 = *(v57 + 8);
  v26 = v20;
  v27 = v55;
  v28 = v55;
  v25(v26, v55);
  if (v24)
  {
    v31 = static os_log_type_t.default.getter(v26);
    v32._countAndFlagsBits = 0xD000000000000015;
    v32._object = "f tokens and labels at index " + 0x8000000000000000;
    log(_:type:)(v32, v31);
    v33 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v33, 0, 0);
    *v34 = 0xD000000000000015;
    *(v34 + 8) = "f tokens and labels at index " + 0x8000000000000000;
    goto LABEL_18;
  }

  v35 = v23;
  DataFrame.rows.getter(v26, v28, v29, v30);
  v36 = DataFrame.Rows.count.getter();
  v25(v35, v27);
  v61._countAndFlagsBits = v36;
  v37 = v36 == 0;
  if (v36 < 0)
  {
    BUG();
  }

  v38 = v66;
  v39 = v65;
  if (v37)
  {
LABEL_16:
    v44 = *(v62 + 8);
    v44(v64, v38);
    return (v44)(v39, v38);
  }

  v40 = 0;
  while (1)
  {
    Column.subscript.getter(v40, v38);
    countAndFlagsBits = v59._countAndFlagsBits;
    if (v59._countAndFlagsBits)
    {
      v42 = *(v59._countAndFlagsBits + 16);
      v59._countAndFlagsBits;
    }

    else
    {
      v42 = 0;
    }

    Column.subscript.getter(v40, v66);
    if (v59._countAndFlagsBits)
    {
      break;
    }

    if (countAndFlagsBits)
    {
      goto LABEL_17;
    }

LABEL_15:
    ++v40;
    v38 = v66;
    v39 = v65;
    if (v61._countAndFlagsBits == v40)
    {
      goto LABEL_16;
    }
  }

  v43 = *(v59._countAndFlagsBits + 16);
  v59._countAndFlagsBits;
  if (countAndFlagsBits && v42 == v43)
  {
    goto LABEL_15;
  }

LABEL_17:
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  _StringGuts.grow(_:)(48);
  v59._object;
  v61._countAndFlagsBits = (" contain string elements." + 0x8000000000000000);
  v63 = 0xD00000000000002DLL;
  v59._countAndFlagsBits = 0xD00000000000002DLL;
  v59._object = " contain string elements." + 0x8000000000000000;
  v58 = v40;
  v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v45._object;
  String.append(_:)(v45);
  object;
  v47._countAndFlagsBits = 46;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  v48 = v59;
  v49 = static os_log_type_t.default.getter(46);
  log(_:type:)(v48, v49);
  v48._object;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  _StringGuts.grow(_:)(48);
  v59._object;
  v59._countAndFlagsBits = v63;
  v59._object = v61._countAndFlagsBits;
  v58 = v40;
  v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v51 = v50._object;
  String.append(_:)(v50);
  v51;
  v47._countAndFlagsBits = 46;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  v61 = v59;
  v33 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v33, 0, 0);
  *v34 = v61;
LABEL_18:
  *(v34 + 16) = 0;
  *(v34 + 32) = 0;
  *(v34 + 48) = 1;
  swift_willThrow(&type metadata for MLCreateError, v33);
  v52 = *(v62 + 8);
  v53 = v66;
  v52(v64, v66);
  return (v52)(v65, v53);
}

uint64_t static MLWordTagger.createTextColumn(_:name:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v55._object = v6;
  v54 = a5;
  v55._countAndFlagsBits = a4;
  v57._countAndFlagsBits = a3;
  v59 = a1;
  v56 = v5;
  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any?]>);
  v49 = *(v50 - 8);
  v7 = *(v49 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v58._object = &v45;
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[MLDataValue]>);
  v46 = *(v47 - 8);
  v10 = *(v46 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v48 = &v45;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v51 = *(v52 - 8);
  v13 = *(v51 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v53 = &v45;
  v16 = type metadata accessor for AnyColumn(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v58._countAndFlagsBits = a2;
  v21._countAndFlagsBits = a2;
  v21._object = v57._countAndFlagsBits;
  v22 = DataFrame.indexOfColumn(_:)(v21);
  if (v22.is_nil)
  {
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v23._countAndFlagsBits = v55._countAndFlagsBits;
    v23._object = v54;
    String.append(_:)(v23);
    v23._countAndFlagsBits = 0x206E6D756C6F6320;
    v23._object = 0xEE002720656D616ELL;
    String.append(_:)(v23);
    v23._countAndFlagsBits = v58._countAndFlagsBits;
    v23._object = v57._countAndFlagsBits;
    String.append(_:)(v23);
    v23._object = " a word tagger model." + 0x8000000000000000;
    v23._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v23);
    v24 = v45;
    v25 = static os_log_type_t.error.getter();
    log(_:type:)(v24, v25);
    v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
    *v27 = v24;
LABEL_3:
    *(v27 + 16) = 0;
    *(v27 + 32) = 0;
    *(v27 + 48) = 1;
    return swift_willThrow(&type metadata for MLCreateError, v26);
  }

  DataFrame.subscript.getter(v22.value);
  v29 = AnyColumn.wrappedElementType.getter();
  (*(v17 + 8))(&v45, v16);
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  if (swift_dynamicCastMetatype(v29, v30))
  {
    return DataFrame.subscript.getter(v58._countAndFlagsBits, v57._countAndFlagsBits, v30);
  }

  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLDataValue]);
  v32 = swift_dynamicCastMetatype(v29, v31);
  countAndFlagsBits = v57._countAndFlagsBits;
  if (v32)
  {
    v58._object = v30;
    v34 = v48;
    DataFrame.subscript.getter(v58._countAndFlagsBits, v57._countAndFlagsBits, v31);
    v57._countAndFlagsBits = &v45;
    v35 = alloca(32);
    v36 = alloca(32);
    v46 = v55._countAndFlagsBits;
    v47 = v54;
    v37 = v54;
    object = v55._object;
    Column.map<A>(_:)(partial apply for closure #1 in static MLWordTagger.createTextColumn(_:name:context:), &v45, v54);
    result = (*(v46 + 8))(v34, v37);
    if (!object)
    {
      return (*(v51 + 32))(v56, v53, v52);
    }
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
    if (!swift_dynamicCastMetatype(v29, v39))
    {
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      v42 = v54;
      _StringGuts.grow(_:)(43);
      v43 = v45._object;
      v42;
      v43;
      v45._countAndFlagsBits = v55._countAndFlagsBits;
      v45._object = v42;
      v44._object = " in the data frame." + 0x8000000000000000;
      v44._countAndFlagsBits = 0xD000000000000029;
      String.append(_:)(v44);
      v57 = v45;
      v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
      *v27 = v57;
      goto LABEL_3;
    }

    DataFrame.subscript.getter(v58._countAndFlagsBits, countAndFlagsBits, v39);
    v40 = v50;
    v41 = v58._object;
    Column.map<A>(_:)(closure #2 in static MLWordTagger.createTextColumn(_:name:context:), 0, v50);
    return (*(v49 + 8))(v41, v40);
  }

  return result;
}

void *static MLWordTagger.createLabeledTokenPairs(_:tokenColumnName:labelColumnName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v30 = a4;
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v28 = a1;
  DataFrame.subscript.getter(a2, v35, v32);
  v31 = &v25;
  v29 = v5;
  v33 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String]>, &protocol conformance descriptor for Column<A>);
  v9 = dispatch thunk of Sequence._copyToContiguousArray()(v5, v33);
  v10 = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage;
  v35 = *(v9 + 16);
  if (v35)
  {

    v11 = _swiftEmptyArrayStorage;
    v12 = 0;
    v34 = v9;
    do
    {
      v13 = *(v9 + 8 * v12 + 32);
      if (v13)
      {
        *(v9 + 8 * v12 + 32);
        if (!swift_isUniquelyReferenced_nonNull_native(v11))
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
        }

        v14 = v11[2];
        v15 = v11;
        if (v11[3] >> 1 <= v14)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v11[3] >= 2uLL, v14 + 1, 1, v11);
        }

        v15[2] = v14 + 1;
        v11 = v15;
        v15[v14 + 4] = v13;
        v9 = v34;
      }

      ++v12;
    }

    while (v35 != v12);

    v10 = _swiftEmptyArrayStorage;
  }

  v26 = v11;

  DataFrame.subscript.getter(v30, v27, v32);
  v16 = dispatch thunk of Sequence._copyToContiguousArray()(v29, v33);
  v35 = *(v16 + 16);
  if (v35)
  {

    v10 = _swiftEmptyArrayStorage;
    v17 = 0;
    v34 = v16;
    do
    {
      v18 = *(v16 + 8 * v17 + 32);
      if (v18)
      {
        *(v16 + 8 * v17 + 32);
        if (!swift_isUniquelyReferenced_nonNull_native(v10))
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
        }

        v19 = v10[2];
        v20 = v10;
        if (v10[3] >> 1 <= v19)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10[3] >= 2uLL, v19 + 1, 1, v10);
        }

        v20[2] = v19 + 1;
        v10 = v20;
        v20[v19 + 4] = v18;
        v16 = v34;
      }

      ++v17;
    }

    while (v35 != v17);
  }

  v21 = v26;
  v22 = v10;
  ML12MLWordTaggerV23createLabeledTokenPairs_15tokenColumnName05labeljK0J85Q72SSG6tokens_AG6labelstG11TabularData0P5FrameV_S2StKFZAgH_AgItAG_AGtXEfU1_Tf3nnnpf_nTf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySaySSGGAIG_AH6tokens_AH6labelsts5NeverOTg5046_sSaySSGA3AIgggoo_AA_AAtAA6tokens_AA6labelsts5h93OIegnrzr_TR082_s8CreateML12MLWordTaggerV23createLabeledTokenPairs_15tokenColumnName05labeljK0J85Q72SSG6tokens_AG6labelstG11TabularData0P5FrameV_S2StKFZAgH_AgItAG_AGtXEfU1_Tf3nnnpf_nTf1cn_n(v26, v10);
  v22;
  v21;
  return ML12MLWordTaggerV23createLabeledTokenPairs_15tokenColumnName05labeljK0J85Q72SSG6tokens_AG6labelstG11TabularData0P5FrameV_S2StKFZAgH_AgItAG_AGtXEfU1_Tf3nnnpf_nTf1cn_n;
}

void (*MLWordTagger.model.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  a1[2] = v3;
  *a1 = v3;
  v3;
  return MLWordTagger.model.modify;
}

void MLWordTagger.model.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;

    *(v3 + 16) = v5;
  }

  else
  {

    *(v3 + 16) = v2;
  }
}

uint64_t MLWordTagger.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLWordTagger(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 32), v2, type metadata accessor for MLWordTaggerMetrics);
}

uint64_t type metadata accessor for MLWordTagger(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLWordTagger;
  if (!type metadata singleton initialization cache for MLWordTagger)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLWordTagger);
  }

  return result;
}

uint64_t MLWordTagger.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLWordTagger(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLWordTaggerMetrics);
}

uint64_t MLWordTagger.init(trainingData:parameters:)(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v15 = v2;
  v14 = type metadata accessor for DataFrame(0);
  v17 = *(v14 - 8);
  v4 = *(v17 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v16 = &v12;
  v7 = alloca(v4);
  v8 = alloca(v4);
  static MLWordTagger.generateTextDataFrame(_:tokenColumn:labelColumn:)(a1, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
  if (v3)
  {
    outlined destroy of MLWordTagger.ModelParameters(v18);
    return a1;
  }

  else
  {
    a1;
    v10 = v16;
    v11 = v14;
    (*(v17 + 16))(v16, &v12, v14);
    outlined init with copy of MLWordTagger.ModelParameters(v18, v13);
    MLWordTagger.init(trainingData:tokenColumn:labelColumn:parameters:)(v10, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000, v13);
    outlined destroy of MLWordTagger.ModelParameters(v18);
    return (*(v17 + 8))(&v12, v11);
  }
}

uint64_t static MLWordTagger.generateTextDataFrame(_:tokenColumn:labelColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v35 = a4;
  v30 = a2;
  v28[2] = v5;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v29 = *(v32 - 8);
  v7 = *(v29 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v36 = v28;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v33 = a1;
  v12 = *(a1 + 16);
  a3;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v31 = v28;
  Column.init(name:capacity:)(v30, a3, v12, v13);
  v14 = v37;
  v37;
  v37 = v13;
  Column.init(name:capacity:)(v35, v14, v12, v13);
  if (v12)
  {
    v15 = v33;
    v33;
    v16 = (v15 + 40);
    do
    {
      v35 = v12;
      v17 = *v16;
      v34 = *(v16 - 1);
      v17;
      v18 = v32;
      Column.append(_:)(&v34, v32);
      v34 = v17;
      v19 = v18;
      v20 = v35;
      Column.append(_:)(&v34, v19);
      v17;
      v16 += 2;
      v12 = v20 - 1;
    }

    while (v12);
    v33;
  }

  DataFrame.init()();
  v21 = v31;
  v22 = v37;
  DataFrame.append<A>(column:)(v31, v37);
  v23 = v36;
  DataFrame.append<A>(column:)(v36, v22);
  v24 = *(v29 + 8);
  v25 = v23;
  v26 = v32;
  v24(v25, v32);
  return (v24)(v21, v26);
}

uint64_t MLWordTagger.init(trainingData:tokenColumn:labelColumn:parameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v259 = a4;
  v271 = a3;
  v8 = v6;
  v255 = a2;
  v260 = v7;
  v263 = a6;
  v273 = a5;
  v266 = a1;
  v243 = type metadata accessor for DataFrame.Rows(0);
  v236 = *(v243 - 8);
  v9 = *(v236 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v244 = &v231;
  v12 = *(*(type metadata accessor for MLWordTaggerMetrics(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v245 = &v231;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v235 = &v231;
  v234 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v17 = *(*(v234 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v256 = &v231;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v239 = &v231;
  v250 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<[String]>>);
  v23 = *(*(v250 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v252 = &v231;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v240 = &v231;
  v28 = alloca(v23);
  v29 = alloca(v23);
  v272 = &v231;
  v270 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v258 = *(v270 - 8);
  v30 = v258[8];
  v31 = alloca(v30);
  v32 = alloca(v30);
  v242 = &v231;
  v33 = alloca(v30);
  v34 = alloca(v30);
  v241 = &v231;
  v35 = alloca(v30);
  v36 = alloca(v30);
  v251 = &v231;
  v37 = alloca(v30);
  v38 = alloca(v30);
  v265 = &v231;
  v39 = alloca(v30);
  v40 = alloca(v30);
  v269 = &v231;
  v41 = alloca(v30);
  v42 = alloca(v30);
  v267 = &v231;
  v43 = type metadata accessor for DataFrame(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = alloca(v45);
  v47 = alloca(v45);
  v257 = &v231;
  v48 = alloca(v45);
  v49 = alloca(v45);
  v261 = v8;
  v8 += 24;
  outlined init with copy of MLWordTagger.ModelParameters(v263, v8);
  v249 = v8;
  MLWordTagger.ModelParameters.validateRevision()();
  v50 = v266;
  if (v51)
  {
    goto LABEL_2;
  }

  v264 = v44;
  v268 = &v231;
  v262 = v43;
  if (!*(v261 + 128) && *(v261 + 120) <= 0)
  {
    v58 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v58, 0, 0);
    *v59 = 0xD000000000000036;
    *(v59 + 8) = "bset of the training labels." + 0x8000000000000000;
    *(v59 + 16) = 0;
    *(v59 + 32) = 0;
    *(v59 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v58);
    v50 = v266;
    v43 = v262;
    v44 = v264;
LABEL_2:
    v52 = 0;
    (*(v44 + 8))(v50, v43);
    v271;
    v273;
    outlined destroy of MLWordTagger.ModelParameters(v263);
    goto LABEL_6;
  }

  v53 = v255;
  v54 = v271;
  static MLWordTagger.validateDataFrame(_:tokenColumnName:labelColumnName:)(v266, v255, v271, v259, v273);
  DataFrame.init()();
  v57 = v266;
  static MLWordTagger.createTextColumn(_:name:context:)(v266, v53, v54, 0x6E656B6F54, 0xE500000000000000);
  v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v61 = v267;
  v253 = v60;
  DataFrame.append<A>(column:)(v267, v60);
  v254 = v258[1];
  v254(v61, v270);
  v62 = v269;
  static MLWordTagger.createTextColumn(_:name:context:)(v57, v259, v273, 0x6C6562614CLL, 0xE500000000000000);
  isa = 0;
  v248 = v252;
  v63 = v253;
  DataFrame.append<A>(column:)(v62, v253);
  v64 = v62;
  v65 = v270;
  (v254)(v64);
  v66 = v265;
  DataFrame.subscript.getter(v259, v273, v63);
  v67 = v65;
  v246 = v258[2];
  v246(v251, v66, v65);
  v68 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String]>, &protocol conformance descriptor for Column<A>);
  v69 = v272;
  v247 = v68;
  dispatch thunk of Sequence.makeIterator()(v67, v68);
  v267 = (v69 + *(v250 + 36));
  v260 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String]>, &protocol conformance descriptor for Column<A>);
  v269 = _swiftEmptyArrayStorage;
  v70 = v67;
LABEL_10:
  v71 = v272;
  v72 = v267;
  while (1)
  {
    v73 = v260;
    dispatch thunk of Collection.endIndex.getter(v70, v260);
    if (*v72 == v237)
    {
      break;
    }

    v74 = dispatch thunk of Collection.subscript.read(&v237, v72, v270, v73);
    v76 = *v75;
    *v75;
    v74(&v237, 0);
    v72 = v267;
    dispatch thunk of Collection.formIndex(after:)(v267, v270, v260);
    v70 = v270;
    if (v76)
    {
      v77 = v76;
      v78 = v269;
      if (!swift_isUniquelyReferenced_nonNull_native(v269))
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78[2] + 1, 1, v78);
      }

      v79 = v78[2];
      if (v78[3] >> 1 <= v79)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v78[3] >= 2, v79 + 1, 1, v78);
      }

      v78[2] = v79 + 1;
      v269 = v78;
      v78[v79 + 4] = v77;
      v70 = v270;
      goto LABEL_10;
    }
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v71, &demangling cache variable for type metadata for IndexingIterator<Column<[String]>>);
  v254(v265, v270);
  v80 = v269;
  v272 = v269[2];
  if (v272)
  {
    v269;
    v81 = _swiftEmptyArrayStorage;
    v82 = 0;
    do
    {
      v83 = *(v80 + 8 * v82 + 32);
      v84 = v83[2];
      v85 = v81[2];
      v86 = v84 + v85;
      if (__OFADD__(v84, v85))
      {
        BUG();
      }

      v258 = v82;
      v267 = v83;
      v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v81);
      if (!isUniquelyReferenced_nonNull_native || v81[3] >> 1 < v86)
      {
        if (v85 > v86)
        {
          v86 = v85;
        }

        v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v86, 1, v81);
      }

      v80 = v269;
      v88 = v267;
      if (v267[2])
      {
        v89 = v81[2];
        if ((v81[3] >> 1) - v89 < v84)
        {
          BUG();
        }

        swift_arrayInitWithCopy(&v81[2 * v89 + 4], v267 + 4, v84, &type metadata for String);
        v88 = v267;
        if (v84)
        {
          v90 = __OFADD__(v81[2], v84);
          v91 = v81[2] + v84;
          if (v90)
          {
            BUG();
          }

          v81[2] = v91;
        }
      }

      else if (v84)
      {
        BUG();
      }

      v88;
      v82 = (v258 + 1);
    }

    while (v272 != (v258 + 1));
    v80;
  }

  else
  {
    v81 = _swiftEmptyArrayStorage;
  }

  v80;
  v92 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v81);
  *(v261 + 8) = v92;
  outlined init with copy of Any?((v263 + 2), &v232);
  v93 = v268;
  v94 = v256;
  if (!v233)
  {
    BUG();
  }

  outlined init with take of Any(&v232, &v237);
  v92;
  swift_dynamicCast(v94, &v237, &type metadata for Any + 8, v234, 7);
  v95 = v271;
  v96 = v273;
  v97 = isa;
  MLWordTagger.ModelParameters.ValidationData.createValidationData(trainingData:tokenColumnName:labelColumnName:)(v93, v255, v271, v259, v273);
  isa = v97;
  v98 = v270;
  if (v97)
  {
    v99 = v92;
    v92;
    v95;
    v96;
    v100 = *(v264 + 8);
    v101 = v262;
    v100(v266, v262);
    outlined destroy of MLActivityClassifier.ModelParameters(v256, type metadata accessor for MLWordTagger.ModelParameters.ValidationData);
LABEL_38:
    v102 = v101;
    v52 = 0;
    v100(v268, v102);
    outlined destroy of MLWordTagger.ModelParameters(v263);
    v103 = v99;
LABEL_39:
    v103;
    goto LABEL_6;
  }

  v265 = v92;
  outlined destroy of MLActivityClassifier.ModelParameters(v256, type metadata accessor for MLWordTagger.ModelParameters.ValidationData);
  v104 = v239;
  v105 = v262;
  if (__swift_getEnumTagSinglePayload(v239, 1, v262) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v104, &demangling cache variable for type metadata for DataFrame?);
    v272 = _swiftEmptyArrayStorage;
    v106 = v259;
  }

  else
  {
    (*(v264 + 32))(v257, v104, v105);
    v116 = v241;
    DataFrame.subscript.getter(v259, v273, v253);
    v246(v251, v116, v98);
    v117 = v240;
    dispatch thunk of Sequence.makeIterator()(v98, v247);
    v267 = (v117 + *(v250 + 36));
    v272 = _swiftEmptyArrayStorage;
LABEL_45:
    v118 = v240;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter(v270, v260);
      if (*v267 == v237)
      {
        break;
      }

      v119 = v270;
      v120 = dispatch thunk of Collection.subscript.read(&v237, v267, v270, v260);
      v122 = *v121;
      *v121;
      v120(&v237, 0);
      dispatch thunk of Collection.formIndex(after:)(v267, v119, v260);
      if (v122)
      {
        v123 = v272;
        if (!swift_isUniquelyReferenced_nonNull_native(v272))
        {
          v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v123[2] + 1, 1, v123);
        }

        v124 = v123[2];
        if (v123[3] >> 1 <= v124)
        {
          v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v123[3] >= 2, v124 + 1, 1, v123);
        }

        v123[2] = v124 + 1;
        v272 = v123;
        v123[v124 + 4] = v122;
        goto LABEL_45;
      }
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v118, &demangling cache variable for type metadata for IndexingIterator<Column<[String]>>);
    v254(v241, v270);
    v125 = v272;
    v269 = v272[2];
    if (v269)
    {
      v272;
      v126 = _swiftEmptyArrayStorage;
      v127 = 0;
      do
      {
        v258 = v127;
        v128 = *(v125 + 8 * v127 + 32);
        v129 = v128[2];
        v130 = v126[2];
        v131 = v129 + v130;
        if (__OFADD__(v129, v130))
        {
          BUG();
        }

        v267 = v128;
        v128;
        v132 = swift_isUniquelyReferenced_nonNull_native(v126);
        if (!v132 || v126[3] >> 1 < v131)
        {
          if (v130 > v131)
          {
            v131 = v130;
          }

          v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v132, v131, 1, v126);
        }

        v125 = v272;
        v133 = v267;
        if (v267[2])
        {
          v134 = v126[2];
          if ((v126[3] >> 1) - v134 < v129)
          {
            BUG();
          }

          swift_arrayInitWithCopy(&v126[2 * v134 + 4], v267 + 4, v129, &type metadata for String);
          v133 = v267;
          if (v129)
          {
            v90 = __OFADD__(v126[2], v129);
            v135 = v126[2] + v129;
            if (v90)
            {
              BUG();
            }

            v126[2] = v135;
          }
        }

        else if (v129)
        {
          BUG();
        }

        v133;
        v127 = (v258 + 1);
      }

      while (v269 != (v258 + 1));
      v125;
    }

    else
    {
      v126 = _swiftEmptyArrayStorage;
    }

    v125;
    v149 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v126);
    v99 = v265;
    v150 = specialized Set.isSubset(of:)(v265, v149);
    v149;
    v106 = v259;
    if ((v150 & 1) == 0)
    {
      v99;
      v271;
      v273;
      v155 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v155, 0, 0);
      *v156 = 0xD00000000000003CLL;
      *(v156 + 8) = "No validation data provided." + 0x8000000000000000;
      *(v156 + 16) = 0;
      *(v156 + 32) = 0;
      *(v156 + 48) = 2;
      swift_willThrow(&type metadata for MLCreateError, v155);
      v157 = *(v264 + 8);
      v158 = v262;
      v157(v266, v262);
      v157(v257, v158);
      v159 = v158;
      v52 = 0;
      v157(v268, v159);
      outlined destroy of MLWordTagger.ModelParameters(v263);
      v99;
LABEL_6:
      result = outlined destroy of MLWordTagger.ModelParameters(v249);
      if (v52)
      {
        v56 = type metadata accessor for MLWordTagger(0);
        return outlined destroy of MLActivityClassifier.ModelParameters(*(v56 + 32) + v261, type metadata accessor for MLWordTaggerMetrics);
      }

      return result;
    }

    v151 = v271;
    v152 = v273;
    v153 = isa;
    v154 = static MLWordTagger.createLabeledTokenPairs(_:tokenColumnName:labelColumnName:)(v257, v255, v271, v259, v273);
    isa = v153;
    if (v153)
    {
      v99;
      v151;
      v152;
      v100 = *(v264 + 8);
      v101 = v262;
      v100(v266, v262);
      v100(v257, v101);
      goto LABEL_38;
    }

    v272 = v154;
    v105 = v262;
    (*(v264 + 8))(v257, v262);
  }

  v107 = v271;
  v108 = v106;
  v109 = v273;
  v110 = isa;
  v111 = static MLWordTagger.createLabeledTokenPairs(_:tokenColumnName:labelColumnName:)(v268, v255, v271, v108, v273);
  isa = v110;
  if (v110)
  {
    v272;
    v112 = v265;
    v265;
    v107;
    v109;
    v113 = v105;
    v114 = *(v264 + 8);
    v114(v266, v113);
    v115 = v113;
    v52 = 0;
    v114(v268, v115);
    outlined destroy of MLWordTagger.ModelParameters(v263);
    v103 = v112;
    goto LABEL_39;
  }

  v269 = v111;
  v109;
  if (*(v261 + 40) == 1)
  {
    v256 = *v249;
    v136 = isa;
    ML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySaySSG6tokens_AF6labelstG_AFs5NeverOTg5212_s8CreateML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n(v269);
    isa = v136;
    v267 = ML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n[2];
    if (v267)
    {
      ML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n;
      v138 = _swiftEmptyArrayStorage;
      v139 = 0;
      v258 = ML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n;
      do
      {
        v259 = v139;
        v140 = ML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n[v139 + 4];
        v141 = v140[2];
        v142 = v138[2];
        v143 = v141 + v142;
        if (__OFADD__(v141, v142))
        {
          BUG();
        }

        v273 = v140;
        v140;
        v144 = swift_isUniquelyReferenced_nonNull_native(v138);
        v145 = v138;
        if (!v144 || v138[3] >> 1 < v143)
        {
          if (v142 > v143)
          {
            v143 = v142;
          }

          v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v144, v143, 1, v138);
        }

        v146 = v273;
        if (*(v273 + 2))
        {
          v147 = v145[2];
          if ((v145[3] >> 1) - v147 < v141)
          {
            BUG();
          }

          v138 = v145;
          swift_arrayInitWithCopy(&v145[2 * v147 + 4], v273 + 32, v141, &type metadata for String);
          v146 = v273;
          if (v141)
          {
            v90 = __OFADD__(v138[2], v141);
            v148 = v138[2] + v141;
            if (v90)
            {
              BUG();
            }

            v138[2] = v148;
          }
        }

        else
        {
          v138 = v145;
          if (v141)
          {
            BUG();
          }
        }

        v146;
        v139 = v259 + 1;
        ML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n = v258;
      }

      while (v267 != (v259 + 1));
      v258;
    }

    else
    {
      v138 = _swiftEmptyArrayStorage;
    }

    ML12MLWordTaggerV12trainingData11tokenColumn05labelH010parametersAC07TabularF00F5FrameV_S2SAC15ModelParametersVtKcfcSaySSGAM6tokens_AM6labelst_tcfu_33_29c983036b65b4698c68d5ff40418838AmN_AmOtAMTf3nnnpk_nTf1cn_n;
    v160 = *(v261 + 48);
    if (v160)
    {
      v161 = v160;
    }

    else
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NLLanguageRecognizer, NLLanguageRecognizer_ptr);
      v169 = isa;
      v161 = static NLLanguageRecognizer.dominantLanguage(for:)(v138);
      isa = v169;
      if (v169)
      {
        v272;
        v99 = v265;
        v265;
        v271;
        v269;
        v138;
        v100 = *(v264 + 8);
        v101 = v262;
        v100(v266, v262);
        goto LABEL_38;
      }
    }

    v273 = v161;
    v138;
    if (v256 == 2)
    {
      v162 = &NLModelEmbeddingTypeContextual;
    }

    else
    {
      v162 = &NLModelEmbeddingTypeDynamic;
    }

    v163 = *v162;
    v164 = static String._unconditionallyBridgeFromObjectiveC(_:)(*v162);
    v166 = v165;
    if (v164 ^ 0x6D6F74737543 | v165 ^ 0xE600000000000000)
    {
      v167 = _stringCompareWithSmolCheck(_:_:expecting:)(v164, v165, 0x6D6F74737543, 0xE600000000000000, 0);
      v168 = v163;
      v166;
      if (v167)
      {
      }

      else
      {
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NLEmbedding, NLEmbedding_ptr);
        v170 = v273;
        v171 = isa;
        static NLEmbedding.requestIfNotPresent(embeddingType:language:)(v168, v273);
        isa = v171;
        if (v171)
        {
          v272;
          v172 = v265;
          v265;
          v271;

          v269;
          v173 = *(v264 + 8);
          v174 = v262;
          v173(v266, v262);
          v173(v268, v174);
          outlined destroy of MLWordTagger.ModelParameters(v263);
          v103 = v172;
          v52 = 0;
          goto LABEL_39;
        }
      }
    }

    else
    {

      v166;
    }
  }

  v175 = v265;
  v176 = v272;
  v272;
  v177 = isa;
  ML12MLWordTaggerV010createWordD5Model16trainingExamples010validatingI015modelParametersSo7NLModelCx_q_AC0gL0VtKSlRzSlR_SaySSG6tokens_AL6labelst7ElementRtzAlM_AlNtAORt_r0_lFZSayAlM_AlNtG_ARTt2g5 = _s8CreateML12MLWordTaggerV010createWordD5Model16trainingExamples010validatingI015modelParametersSo7NLModelCx_q_AC0gL0VtKSlRzSlR_SaySSG6tokens_AL6labelst7ElementRtzAlM_AlNtAORt_r0_lFZSayAlM_AlNtG_ARTt2g5(v269, v176, v249);
  isa = v177;
  v179 = v271;
  if (v177)
  {
    v176;
    v175;
    v179;
    v180 = *(v264 + 8);
    v181 = v262;
    v180(v266, v262);
    v176;
    v182 = v181;
    v52 = 0;
    v180(v268, v182);
    outlined destroy of MLWordTagger.ModelParameters(v263);
    v175;
    v103 = v269;
    goto LABEL_39;
  }

  v183 = ML12MLWordTaggerV010createWordD5Model16trainingExamples010validatingI015modelParametersSo7NLModelCx_q_AC0gL0VtKSlRzSlR_SaySSG6tokens_AL6labelst7ElementRtzAlM_AlNtAORt_r0_lFZSayAlM_AlNtG_ARTt2g5;
  v176;
  *v261 = v183;
  v184 = v183;
  v185.super.isa = NLModel.asCoreML()().super.isa;
  if (v186.super.isa)
  {
    v270 = 0;
    v176;
    v265;

    v271;
    isa = v186.super.isa;
    v187 = v186.super.isa;
LABEL_116:
    v269;
    v189 = *(v264 + 8);
    v190 = v262;
    v189(v266, v262);
    v189(v268, v190);
    outlined destroy of MLWordTagger.ModelParameters(v263);

    v265;
    if (!v187)
    {
    }

    v52 = v270;
    goto LABEL_6;
  }

  *(v261 + 16) = v185;
  v188 = v235;
  v273 = 0;
  static MLWordTagger.evaluate(on:using:)(v269, v184);
  isa = 0;
  v269;
  v191 = type metadata accessor for MLWordTagger(0);
  outlined init with take of MLWordTaggerMetrics(v188, v261 + *(v191 + 32));
  if (v272[2])
  {
    v192 = isa;
    static MLWordTagger.evaluate(on:using:)(v272, v184);
    isa = v192;
    if (v192)
    {
      v265;

      v193 = v272;
      LOBYTE(v193) = 1;
      v270 = v193;
      v269 = v271;
      v187 = v273;
      goto LABEL_116;
    }

    v272;

    outlined init with take of MLWordTaggerMetrics(v245, *(v191 + 36) + v261);
  }

  else
  {

    v272;
    v194 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v195 = swift_allocError(&type metadata for MLCreateError, v194, 0, 0);
    *v196 = 0xD00000000000001CLL;
    *(v196 + 8) = "CreateML/MLClassifier.swift" + 0x8000000000000000;
    *(v196 + 16) = 0;
    *(v196 + 32) = 0;
    *(v196 + 48) = 2;
    v197 = (v261 + *(v191 + 36));
    *v197 = v195;
    v198 = type metadata accessor for MLClassifierMetrics.Contents(0);
    swift_storeEnumTagMultiPayload(v197, v198, 2);
  }

  v199 = v242;
  v200 = v271;
  DataFrame.subscript.getter(v255, v271, v253);
  v200;
  v201 = v270;
  v246(v251, v199, v270);
  dispatch thunk of Sequence.makeIterator()(v201, v247);
  v252 = (v252 + *(v250 + 36));
  v271 = _swiftEmptyArrayStorage;
  v202 = v270;
LABEL_128:
  v203 = v252;
  v204 = v248;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v202, v260);
    if (*v203 == v237)
    {
      break;
    }

    v261 = dispatch thunk of Collection.subscript.read(&v237, v203, v202, v260);
    v273 = *v205;
    v273;
    (v261)(&v237, 0);
    dispatch thunk of Collection.formIndex(after:)(v203, v202, v260);
    if (v273)
    {
      v206 = *(v273 + 2);
      v273;
      if (!swift_isUniquelyReferenced_nonNull_native(v271))
      {
        v271 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v271[2] + 1, 1, v271);
      }

      v207 = v271[2];
      if (v271[3] >> 1 <= v207)
      {
        v271 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v271[3] >= 2uLL, v207 + 1, 1, v271);
      }

      v208 = v271;
      v271[2] = v207 + 1;
      v208[v207 + 4] = v206;
      goto LABEL_128;
    }
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v204, &demangling cache variable for type metadata for IndexingIterator<Column<[String]>>);
  v209 = v202;
  v254(v242, v202);
  v210 = v271[2];
  if (v210)
  {
    v211 = 0;
    v212 = 0;
    v213 = v271;
    do
    {
      v90 = __OFADD__(v271[v211 + 4], v212);
      v212 += v271[v211 + 4];
      if (v90)
      {
        BUG();
      }

      ++v211;
    }

    while (v210 != v211);
    v271;
    v216 = v212;
  }

  else
  {
    v213 = v271;
    v271;
    v216 = 0.0;
  }

  *&v273 = v216;
  v217 = v244;
  DataFrame.rows.getter(v213, v209, v214, v215);
  v218 = specialized Collection.isEmpty.getter();
  v219 = *(v236 + 8);
  v220 = v217;
  v221 = v243;
  v219(v217, v243);
  LODWORD(v270) = 0;
  if (!v218)
  {
    v224 = v244;
    DataFrame.rows.getter(v220, v221, v222, v223);
    v225 = DataFrame.Rows.count.getter();
    v219(v224, v243);
    *&v270 = *&v273 / v225;
  }

  v226 = v265[2];
  v265;
  v227 = v263;
  v228 = *(v263 + 16);
  v237 = *v263;
  v238 = v228;
  static MLWordTagger.reportAnalytics(averageTokenCount:labelCount:algorithm:language:)(v226, &v237, *(v263 + 3), *&v270);
  v229 = *(v264 + 8);
  v230 = v262;
  v229(v266, v262);
  v229(v268, v230);
  return outlined destroy of MLWordTagger.ModelParameters(v227);
}

uint64_t specialized Set.isSubset(of:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    LODWORD(v2) = 0;
    return v2;
  }

  v3 = a2;
  v32 = a1;
  v4 = -1 << *(a2 + 32);
  v30 = ~v4;
  v5 = ~(-1 << -v4);
  if (-v4 >= 64)
  {
    v5 = -1;
  }

  v6 = *(a2 + 56) & v5;
  v33 = a2 + 56;
  v34 = (63 - v4) >> 6;
  a2;
  v7 = 0;
  v31 = v3;
  while (1)
  {
    v8 = v7;
    v9 = v6;
    if (v6)
    {
      goto LABEL_25;
    }

    v10 = v7 + 1;
    if (__OFADD__(1, v7))
    {
      BUG();
    }

    LOBYTE(v2) = 1;
    if (v10 >= v34)
    {
      goto LABEL_36;
    }

    v9 = *(v33 + 8 * v10);
    if (v9)
    {
      ++v7;
      goto LABEL_25;
    }

    v7 += 2;
    if (v8 + 2 >= v34)
    {
      goto LABEL_36;
    }

    v9 = *(v33 + 8 * v10 + 8);
    if (!v9)
    {
      v7 = v8 + 3;
      if (v8 + 3 >= v34)
      {
        goto LABEL_36;
      }

      v9 = *(v33 + 8 * v10 + 16);
      if (!v9)
      {
        v7 = v8 + 4;
        if (v8 + 4 >= v34)
        {
          goto LABEL_36;
        }

        v9 = *(v33 + 8 * v10 + 24);
        if (!v9)
        {
          v7 = v8 + 5;
          if (v8 + 5 >= v34)
          {
            goto LABEL_36;
          }

          v9 = *(v33 + 8 * v10 + 32);
          if (!v9)
          {
            v7 = v8 + 6;
            if (v8 + 6 >= v34)
            {
              goto LABEL_36;
            }

            v9 = *(v33 + 8 * v10 + 40);
            if (!v9)
            {
              break;
            }
          }
        }
      }
    }

LABEL_25:
    if (!*(v32 + 16))
    {
      LODWORD(v2) = 0;
      goto LABEL_36;
    }

    v29 = v8;
    v28 = v6;
    v27 = v9;
    _BitScanForward64(&v12, v9);
    v13 = *(v3 + 48);
    v26 = v7;
    v14 = (v7 << 10) | (16 * v12);
    v15 = *(v13 + v14);
    v2 = *(v13 + v14 + 8);
    Hasher.init(_seed:)(*(v32 + 40));
    v2;
    String.hash(into:)(v25, v15);
    v16 = Hasher._finalize()();
    v17 = ~(-1 << *(v32 + 32));
    v18 = v17 & v16;
    v19 = *(v32 + 8 * ((v17 & v16) >> 6) + 56);
    if (!_bittest64(&v19, v18))
    {
LABEL_34:
      v2;
      LODWORD(v2) = 0;
      v3 = v31;
      goto LABEL_36;
    }

    v20 = *(v32 + 48);
    while (1)
    {
      v21 = *(v20 + 16 * v18);
      v22 = *(v20 + 16 * v18 + 8);
      if (v21 == v15 && v22 == v2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)(v21, v22, v15, v2, 0))
      {
        break;
      }

      v18 = v17 & (v18 + 1);
      v23 = *(v32 + 8 * (v18 >> 6) + 56);
      if (!_bittest64(&v23, v18))
      {
        goto LABEL_34;
      }
    }

    v6 = v27 & (v27 - 1);
    v2;
    v3 = v31;
    v7 = v26;
  }

  v11 = v8 + 7;
  while (v11 < v34)
  {
    v9 = *(v3 + 8 * v11++ + 56);
    if (v9)
    {
      v7 = v11 - 1;
      goto LABEL_25;
    }
  }

LABEL_36:
  outlined consume of [String : [Double]].Iterator._Variant(v3);
  return v2;
}

char *_s8CreateML12MLWordTaggerV010createWordD5Model16trainingExamples010validatingI015modelParametersSo7NLModelCx_q_AC0gL0VtKSlRzSlR_SaySSG6tokens_AL6labelst7ElementRtzAlM_AlNtAORt_r0_lFZSayAlM_AlNtG_ARTt2g5(uint64_t a1, char *a2, uint64_t a3)
{
  TrainedModelWithData = a2;
  v5 = static MLWordTagger.buildOptions(_:)(a3);
  if (!v3)
  {
    v38 = v5;
    v6 = _swiftEmptyArrayStorage;
    v36 = _swiftEmptyArrayStorage;
    v34 = *(a1 + 16);
    if (v34)
    {
      aBlock = _swiftEmptyArrayStorage;
      v7 = v34;
      specialized ContiguousArray.reserveCapacity(_:)(v34);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSDictionary, NSDictionary_ptr);
      v8 = (a1 + 40);
      do
      {
        v39 = *(v8 - 1);
        v9 = *v8;
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>);
        v11 = swift_allocObject(v10, 160, 7);
        v11[2] = 2;
        v11[3] = 4;
        v11[7] = &type metadata for String;
        v11[4] = 0x7272416C6562614CLL;
        v11[5] = 0xEA00000000007961;
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        v11[11] = v12;
        v11[8] = v9;
        v11[15] = &type metadata for String;
        v11[12] = 0x7272416E656B6F54;
        v11[13] = 0xEA00000000007961;
        v11[19] = v12;
        v11[16] = v39;
        v39;
        v9;
        v40 = NSDictionary.init(dictionaryLiteral:)(v11);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v11);
        v13 = aBlock[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v13);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v13);
        specialized ContiguousArray._endMutation()(v13, v40);
        v8 += 2;
        --v7;
      }

      while (v7);
      v36 = aBlock;
      v6 = _swiftEmptyArrayStorage;
      TrainedModelWithData = a2;
    }

    v35 = *(TrainedModelWithData + 2);
    if (v35)
    {
      aBlock = _swiftEmptyArrayStorage;
      v14 = v35;
      specialized ContiguousArray.reserveCapacity(_:)(v35);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSDictionary, NSDictionary_ptr);
      v15 = TrainedModelWithData + 40;
      do
      {
        v42 = v15;
        v41 = *(v15 - 1);
        v16 = *v15;
        v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>);
        v18 = swift_allocObject(v17, 160, 7);
        v18[2] = 2;
        v18[3] = 4;
        v18[7] = &type metadata for String;
        v18[4] = 0x7272416C6562614CLL;
        v18[5] = 0xEA00000000007961;
        v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        v18[11] = v19;
        v18[8] = v16;
        v18[15] = &type metadata for String;
        v18[12] = 0x7272416E656B6F54;
        v18[13] = 0xEA00000000007961;
        v18[19] = v19;
        v18[16] = v41;
        v41;
        v16;
        v20 = NSDictionary.init(dictionaryLiteral:)(v18);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v18);
        v21 = aBlock[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v21);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v21);
        specialized ContiguousArray._endMutation()(v21, v20);
        v15 = v42 + 2;
        --v14;
      }

      while (v14);
      v6 = aBlock;
    }

    v49 = 0;
    v22 = v36;
    if ((((v36 & 0x4000000000000001) == 0) & swift_isUniquelyReferenced_nonNull_bridgeObject(v36)) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
    }

    v37 = v22;
    v23 = v22 & 0xFFFFFFFFFFFFF8;
    if ((((v6 & 0x4000000000000001) == 0) & swift_isUniquelyReferenced_nonNull_bridgeObject(v6)) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    v47 = implicit closure #1 in closure #1 in closure #3 in static MLWordTagger.createWordTaggerModel<A, B>(trainingExamples:validatingExamples:modelParameters:);
    v48 = 0;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned Int) -> (@unowned Unmanaged<CFDictionaryRef>?);
    v46 = &block_descriptor_0;
    v24 = _Block_copy(&aBlock);
    v47 = MLBoostedTreeRegressor.ModelParameters.maxDepth.modify;
    v48 = 0;
    v25 = v24;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @unowned UnsafeMutablePointer<Bool>?) -> ();
    v46 = &block_descriptor_4;
    v33 = _Block_copy(&aBlock);
    TrainedModelWithData = NLPSequenceModelCreateTrainedModelWithData(v38, v34, v35, v23 + 32, (v6 & 0xFFFFFFFFFFFFF8) + 32);
    _Block_release(v33);
    _Block_release(v25);
    v37;
    v26 = v49;
    if (v49)
    {
      v27 = type metadata accessor for CFErrorRef(0);
      v28 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, &protocol conformance descriptor for CFErrorRef);
      TrainedModelWithData = swift_allocError(v27, v28, 0, 0);
      *v29 = v26;
      swift_willThrow(v27, v28);
      v6;
    }

    else
    {
      if (!TrainedModelWithData)
      {
        TrainedModelWithData = "v24@?0r^{__CFString=}8^B16" + 0x8000000000000000;
        v31 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v31, 0, 0);
        *v32 = 0xD000000000000025;
        *(v32 + 8) = "v24@?0r^{__CFString=}8^B16" + 0x8000000000000000;
        *(v32 + 16) = 0;
        *(v32 + 32) = 0;
        *(v32 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v31);
      }

      v6;
    }
  }

  return TrainedModelWithData;
}

char static MLWordTagger.reportAnalytics(averageTokenCount:labelCount:algorithm:language:)(int a1, uint64_t *a2, uint64_t a3, Swift::Float a4)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  result = AnalyticsReporter.init()();
  if ((result & 1) == 0)
  {
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_wordTagger, __PAIR128__(("WordTagger\n\nParameters\n" + 0x8000000000000000), 0xD00000000000001BLL), a4);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_wordTagger, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), a1);
    if (v6)
    {
      v8 = a3;
      if (v5)
      {
        if (v5 == 1)
        {
          v9 = 0xD000000000000027;
          v10 = "Unspecified Language";
        }

        else
        {
          v9 = 0xD000000000000046;
          v10 = "Average Tokens per Sequence";
        }
      }

      else
      {
        v9 = 0xD000000000000016;
        v10 = "ge Model Text Embedding";
      }

      v17 = v9;
      v10;
      v13._countAndFlagsBits = 0x6C65646F4D20;
      v13._object = 0xE600000000000000;
      String.append(_:)(v13);
      v10 | 0x8000000000000000;
      v12 = v17;
      v11 = (v10 | 0x8000000000000000);
    }

    else
    {
      v11 = "Dynamic Text Embedding" + 0x8000000000000000;
      v12 = 0xD00000000000001ELL;
      v8 = a3;
    }

    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_wordTagger, __PAIR128__(0xE90000000000006DLL, 0x687469726F676C41), __PAIR128__(v11, v12));
    v11;
    if (v8)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)(v8);
      v16 = v15;
    }

    else
    {
      v16 = "formers Text Embedding" + 0x8000000000000000;
      v14 = 0xD000000000000014;
    }

    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_wordTagger, __PAIR128__(0xE800000000000000, 0x65676175676E614CLL), __PAIR128__(v16, v14));
    return v16;
  }

  return result;
}

uint64_t MLWordTagger.init(trainingData:tokenColumn:labelColumn:parameters:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v15 = a4;
  v16 = a3;
  v17 = a2;
  v18 = a5;
  v7 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(a1 + 8);
  v13 = *a1;
  v14 = v10;
  DataFrame.init(_:)(&v13);
  outlined init with copy of MLWordTagger.ModelParameters(a6, &v13);
  MLWordTagger.init(trainingData:tokenColumn:labelColumn:parameters:)(&v12, v17, v16, v15, v18, &v13);
  return outlined destroy of MLWordTagger.ModelParameters(a6);
}

void *closure #1 in static MLWordTagger.createTextColumn(_:name:context:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1)
  {
    v8 = result;
    a3;
    v5;
    ML11MLDataValueOG_SSsAE_pTg503_s8d97ML12MLWordTaggerV16createTextColumn_4name7context11TabularData0G0VySaySSGGAG0K5FrameV_S2StKFZAJSgt4AA11fG29OGSgKXEfU_AjQKXEfU_SSAPKXEfU_SSTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueOG_SSsAE_pTg503_s8d97ML12MLWordTaggerV16createTextColumn_4name7context11TabularData0G0VySaySSGGAG0K5FrameV_S2StKFZAJSgt4AA11fG29OGSgKXEfU_AjQKXEfU_SSAPKXEfU_SSTf1cn_n(v5, a2, a3);
    result = v5;
    if (v4)
    {
      return result;
    }

    result = v8;
  }

  else
  {
    ML11MLDataValueOG_SSsAE_pTg503_s8d97ML12MLWordTaggerV16createTextColumn_4name7context11TabularData0G0VySaySSGGAG0K5FrameV_S2StKFZAJSgt4AA11fG29OGSgKXEfU_AjQKXEfU_SSAPKXEfU_SSTf1cn_n = 0;
  }

  *result = ML11MLDataValueOG_SSsAE_pTg503_s8d97ML12MLWordTaggerV16createTextColumn_4name7context11TabularData0G0VySaySSGGAG0K5FrameV_S2StKFZAJSgt4AA11fG29OGSgKXEfU_AjQKXEfU_SSAPKXEfU_SSTf1cn_n;
  return result;
}

void *closure #2 in static MLWordTagger.createTextColumn(_:name:context:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if (v3)
  {
    result = specialized _arrayConditionalCast<A, B>(_:)(v3);
  }

  else
  {
    result = 0;
  }

  *v2 = result;
  return result;
}

uint64_t static MLWordTagger.generateTextTable(_:tokenColumn:labelColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v38 = a3;
  v41 = v5;
  v40 = a2;
  v37 = a5;
  v7 = *(a1 + 16);
  if (v7)
  {
    a1;
    v42 = a1;
    v8 = (a1 + 40);
    v9 = _swiftEmptyArrayStorage;
    ML14_UntypedColumnC_s5Error_pTt1g5 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *v8;
      v36 = *(v8 - 1);
      v36;
      v45 = v10;
      v10;
      v46 = v7;
      if (!swift_isUniquelyReferenced_nonNull_native(v9))
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
      }

      v11 = v9[2];
      v47 = v9;
      v12 = ML14_UntypedColumnC_s5Error_pTt1g5;
      if (v9[3] >> 1 <= v11)
      {
        v12 = ML14_UntypedColumnC_s5Error_pTt1g5;
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v9[3] >= 2uLL, v11 + 1, 1, v47);
      }

      v13 = v47;
      v47[2] = v11 + 1;
      *(v13 + 8 * v11 + 32) = v36;
      if (swift_isUniquelyReferenced_nonNull_native(v12))
      {
        v14 = ML14_UntypedColumnC_s5Error_pTt1g5;
      }

      else
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ML14_UntypedColumnC_s5Error_pTt1g5[2] + 1, 1, ML14_UntypedColumnC_s5Error_pTt1g5);
      }

      v15 = v14[2];
      if (v14[3] >> 1 <= v15)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14[3] >= 2uLL, v15 + 1, 1, v14);
      }

      v14[2] = v15 + 1;
      ML14_UntypedColumnC_s5Error_pTt1g5 = v14;
      v14[v15 + 4] = v45;
      v8 += 2;
      v7 = v46 - 1;
      v9 = v47;
    }

    while (v46 != 1);
    v42;
    v16 = ML14_UntypedColumnC_s5Error_pTt1g5;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage;
  }

  v43 = v9;
  v17 = alloca(24);
  v18 = alloca(32);
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  LOBYTE(v45) = v19;
  v43;
  v43 = v16;
  v20 = alloca(24);
  v21 = alloca(32);
  v35 = &v43;
  v47 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  LOBYTE(v46) = v22;
  v43;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v23, v34);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  *(inited + 32) = v40;
  v25 = v38;
  *(inited + 40) = v38;
  v26 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(inited + 48) = ML14_UntypedColumnC_s5Error_pTt1g5;
  v27 = v45;
  *(inited + 56) = v45 & 1;
  *(inited + 64) = v39;
  v28 = v37;
  *(inited + 72) = v37;
  *(inited + 80) = v47;
  *(inited + 88) = v46 & 1;
  v25;
  outlined copy of Result<_DataTable, Error>(v26, v27);
  v28;
  LOBYTE(v26) = v46;
  v29 = v47;
  outlined copy of Result<_DataTable, Error>(v47, v46);
  v30 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v30);
  outlined consume of Result<_DataTable, Error>(v29, v26);
  result = outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v27);
  if (!v6)
  {
    result = v43;
    v32 = v44;
    v33 = v41;
    *v41 = v43;
    *(v33 + 8) = v32;
  }

  return result;
}

void *MLWordTagger.debugDescription.getter()
{
  v1 = v0;
  v25._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v25._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v25._countAndFlagsBits = MLWordTagger.ModelParameters.description.getter();
  v6 = v5;
  v7 = type metadata accessor for MLWordTagger(0);
  v8 = v0 + *(v7 + 32);
  v22._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v22._object = v9;
  v10 = *(v7 + 36);
  v11 = v6;
  outlined init with copy of MLTrainingSessionParameters(v1 + v10, &v21, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v25._object) = swift_getEnumCaseMultiPayload(&v21, v25._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v21, type metadata accessor for MLClassifierMetrics.Contents);
  v23._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v13 = v12;
  v23._object = 0xD000000000000017;
  v24 = "er than or equal to 1." + 0x8000000000000000;
  v14._countAndFlagsBits = v25._countAndFlagsBits;
  v25._countAndFlagsBits = v11;
  v14._object = v11;
  String.append(_:)(v14);
  v21._countAndFlagsBits = 0xD00000000000001ELL;
  v21._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  object = v22._object;
  String.append(_:)(v22);
  v16 = v21._object;
  String.append(_:)(v21);
  v16;
  if (LODWORD(v25._object) > 1)
  {
    v19 = object;
  }

  else
  {
    v21._countAndFlagsBits = 0xD000000000000020;
    v21._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v17._countAndFlagsBits = v23._countAndFlagsBits;
    v17._object = v13;
    String.append(_:)(v17);
    v18 = v21._object;
    String.append(_:)(v21);
    object;
    v19 = v13;
    v13 = v18;
  }

  v19;
  v13;
  v25._countAndFlagsBits;
  return v23._object;
}

NSAttributedString MLWordTagger.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v3._countAndFlagsBits = MLWordTagger.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

uint64_t outlined init with take of MLWordTaggerMetrics(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLWordTaggerMetrics(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

id sub_72F74()
{
  v1 = v0;
  result = MLWordTagger.model.getter();
  *v1 = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MLWordTagger(char *a1, char **a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) == 0)
  {
    v7 = a2[1];
    *(a1 + 1) = v7;
    v50 = a2[2];
    *(a1 + 2) = v50;
    *(a1 + 24) = *(a2 + 3);
    a1[40] = *(a2 + 40);
    v8 = a2[6];
    *(a1 + 6) = v8;
    v56 = a1 + 56;
    v59 = (a2 + 7);
    v9 = a2[10];
    v5;
    v7;
    v50;
    v8;
    if (v9)
    {
      *(a1 + 10) = v9;
      (**(v9 - 1))(v56, v59, v9);
    }

    else
    {
      v10 = *v59;
      *(a1 + 72) = *(a2 + 9);
      *v56 = v10;
    }

    *(a1 + 11) = a2[11];
    v57 = a2[12];
    *(a1 + 12) = v57;
    *(a1 + 13) = a2[13];
    v11 = a2[14];
    *(a1 + 14) = v11;
    *(a1 + 15) = a2[15];
    a1[128] = *(a2 + 128);
    v12 = *(a3 + 32);
    v60 = &a1[v12];
    v13 = (a2 + v12);
    v14 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v57;
    v11;
    v58 = v14;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v13, v14);
    if (EnumCaseMultiPayload == 2)
    {
      v22 = *v13;
      swift_errorRetain(v22);
      *v60 = v22;
      v21 = v60;
    }

    else
    {
      v51 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload != 1)
      {
        v53 = v13;
        v23 = a3;
        v21 = v60;
        v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v24 = swift_getEnumCaseMultiPayload(v53, v49);
        v25 = v24 == 1;
        v26 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v24 == 1)
        {
          v26 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v27 = __swift_instantiateConcreteTypeFromMangledName(v26);
        (*(*(v27 - 8) + 16))(v60, v53, v27);
        swift_storeEnumTagMultiPayload(v60, v49, v25);
        EnumCaseMultiPayload = v51;
LABEL_14:
        swift_storeEnumTagMultiPayload(v21, v58, EnumCaseMultiPayload);
        v28 = *(v23 + 36);
        v29 = &a1[v28];
        v30 = (a2 + v28);
        v31 = swift_getEnumCaseMultiPayload(v30, v58);
        if (v31 == 2)
        {
          v36 = *v30;
          swift_errorRetain(v36);
          *v29 = v36;
          v46 = 2;
        }

        else
        {
          if (v31 != 1)
          {
            v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
            v41 = swift_getEnumCaseMultiPayload(v30, v40);
            v42 = v41 == 1;
            v43 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
            if (v41 == 1)
            {
              v43 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
            }

            v44 = __swift_instantiateConcreteTypeFromMangledName(v43);
            (*(*(v44 - 8) + 16))(v29, v30, v44);
            swift_storeEnumTagMultiPayload(v29, v40, v42);
            v38 = v29;
            v39 = v58;
            v37 = 0;
            goto LABEL_22;
          }

          *v29 = *v30;
          v55 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v32 = *(v55 + 20);
          v61 = &v29[v32];
          v33 = type metadata accessor for DataFrame(0);
          v34 = v30 + v32;
          v35 = *(*(v33 - 8) + 16);
          v35(v61, v34, v33);
          v35(&v29[*(v55 + 24)], v30 + *(v55 + 24), v33);
          v46 = 1;
        }

        v37 = v46;
        v38 = v29;
        v39 = v58;
LABEL_22:
        swift_storeEnumTagMultiPayload(v38, v39, v37);
        return a1;
      }

      *v60 = *v13;
      v48 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v16 = *(v48 + 20);
      v47 = &v60[v16];
      v17 = type metadata accessor for DataFrame(0);
      v52 = *(*(v17 - 8) + 16);
      v18 = v13 + v16;
      EnumCaseMultiPayload = 1;
      v52(v47, v18, v17);
      v19 = *(v48 + 24);
      v20 = v13 + v19;
      v21 = v60;
      v52(&v60[v19], v20, v17);
    }

    v23 = a3;
    goto LABEL_14;
  }

  a1 = &v5[(v4 + 16) & ~v4];

  return a1;
}

uint64_t destroy for MLWordTagger(uint64_t a1, uint64_t a2)
{
  v2 = a2;

  *(a1 + 8);
  if (*(a1 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
  }

  *(a1 + 96);
  *(a1 + 112);
  v4 = (a1 + *(a2 + 32));
  v5 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v4, v5);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v4;
      break;
    case 1:
      v25 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v9 = &v4[*(v25 + 20)];
      v10 = type metadata accessor for DataFrame(0);
      v11 = v9;
      v12 = *(*(v10 - 8) + 8);
      v12(v11, v10);
      v13 = v10;
      v2 = a2;
      v12(&v4[*(v25 + 24)], v13);
      break;
    case 0:
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v4, v7) == 1)
      {
        v8 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v8 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v14 = __swift_instantiateConcreteTypeFromMangledName(v8);
      (*(*(v14 - 8) + 8))(v4, v14);
      break;
  }

  v15 = (*(v2 + 36) + a1);
  result = swift_getEnumCaseMultiPayload(v15, v5);
  switch(result)
  {
    case 2:
      return *v15;
    case 1:
      v19 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v20 = v15 + *(v19 + 20);
      v21 = type metadata accessor for DataFrame(0);
      v22 = *(*(v21 - 8) + 8);
      v22(v20, v21);
      return (v22)(v15 + *(v19 + 24), v21);
    case 0:
      v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v15, v17) == 1)
      {
        v18 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v18 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v23 = __swift_instantiateConcreteTypeFromMangledName(v18);
      return (*(*(v23 - 8) + 8))(v15, v23);
  }

  return result;
}

uint64_t initializeWithCopy for MLWordTagger(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 8) = v6;
  v50 = *(a2 + 16);
  *(a1 + 16) = v50;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 48);
  *(a1 + 48) = v7;
  v52 = (a1 + 56);
  v55 = (a2 + 56);
  v8 = *(a2 + 80);
  v5;
  v6;
  v50;
  v7;
  if (v8)
  {
    *(a1 + 80) = v8;
    (**(v8 - 8))(v52, v55, v8);
  }

  else
  {
    v9 = *v55;
    *(a1 + 72) = *(a2 + 72);
    *v52 = v9;
  }

  *(a1 + 88) = *(a2 + 88);
  v53 = *(a2 + 96);
  *(a1 + 96) = v53;
  *(a1 + 104) = *(a2 + 104);
  v10 = *(a2 + 112);
  *(a1 + 112) = v10;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v11 = *(a3 + 32);
  v56 = (a1 + v11);
  v12 = (a2 + v11);
  v13 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v53;
  v10;
  v54 = v13;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v12, v13);
  v45 = a1;
  if (EnumCaseMultiPayload == 2)
  {
    v24 = *v12;
    swift_errorRetain(v24);
    v15 = v56;
    *v56 = v24;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v15 = v56;
    *v56 = *v12;
    v46 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v16 = v12;
    v17 = *(v46 + 20);
    v44 = v56 + v17;
    v18 = type metadata accessor for DataFrame(0);
    v19 = v16 + v17;
    v20 = *(*(v18 - 8) + 16);
    v20(v44, v19, v18);
    v21 = *(v46 + 24);
    v22 = v16 + v21;
    v23 = v18;
    EnumCaseMultiPayload = 1;
    a1 = v45;
    v20(v56 + v21, v22, v23);
  }

  else
  {
    v15 = v56;
    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v25 = swift_getEnumCaseMultiPayload(v12, v51);
    v47 = v12;
    v26 = v25 == 1;
    v27 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v25 == 1)
    {
      v27 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v28 = __swift_instantiateConcreteTypeFromMangledName(v27);
    (*(*(v28 - 8) + 16))(v56, v47, v28);
    swift_storeEnumTagMultiPayload(v56, v51, v26);
  }

  swift_storeEnumTagMultiPayload(v15, v54, EnumCaseMultiPayload);
  v29 = *(a3 + 36);
  v30 = (v29 + a1);
  v31 = (v29 + a2);
  v32 = swift_getEnumCaseMultiPayload(v31, v54);
  if (v32 == 2)
  {
    v37 = *v31;
    swift_errorRetain(*v31);
    *v30 = v37;
  }

  else if (v32 == 1)
  {
    *v30 = *v31;
    v49 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v33 = *(v49 + 20);
    v57 = &v30[v33];
    v34 = type metadata accessor for DataFrame(0);
    v35 = &v31[v33];
    v36 = *(*(v34 - 8) + 16);
    v36(v57, v35, v34);
    v36(&v30[*(v49 + 24)], &v31[*(v49 + 24)], v34);
  }

  else
  {
    v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v39 = swift_getEnumCaseMultiPayload(v31, v38);
    v40 = v39 == 1;
    v41 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v39 == 1)
    {
      v41 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledName(v41);
    (*(*(v42 - 8) + 16))(v30, v31, v42);
    swift_storeEnumTagMultiPayload(v30, v38, v40);
  }

  swift_storeEnumTagMultiPayload(v30, v54, v32);
  return v45;
}

uint64_t assignWithCopy for MLWordTagger(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *a1;
  *a1 = *a2;
  v5;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v7;
  v8;
  v9 = *(a2 + 16);
  v10 = *(a1 + 16);
  *(a1 + 16) = v9;
  v9;

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  v11 = *(a1 + 48);
  v12 = *(a2 + 48);
  *(a1 + 48) = v12;
  v12;

  v13 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (v13)
    {
      __swift_assign_boxed_opaque_existential_0((a1 + 56), (a2 + 56));
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
  }

  else if (v13)
  {
    *(a1 + 80) = v13;
    (**(v13 - 8))(a1 + 56, a2 + 56);
    goto LABEL_8;
  }

  v14 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v14;
LABEL_8:
  *(a1 + 88) = *(a2 + 88);
  v15 = *(a2 + 96);
  v16 = *(a1 + 96);
  *(a1 + 96) = v15;
  v15;
  v16;
  *(a1 + 104) = *(a2 + 104);
  v17 = *(a2 + 112);
  v18 = *(a1 + 112);
  *(a1 + 112) = v17;
  v17;
  v18;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  if (a1 != a2)
  {
    v19 = *(a3 + 32);
    v20 = (a1 + v19);
    v21 = (a2 + v19);
    outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLClassifierMetrics.Contents);
    v47 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v21, v47);
    if (EnumCaseMultiPayload == 2)
    {
      v25 = *v21;
      swift_errorRetain(*v21);
      *v20 = v25;
      EnumCaseMultiPayload = 2;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v20 = *v21;
      v48 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v23 = *(v48 + 20);
      v45 = &v20[v23];
      v46 = type metadata accessor for DataFrame(0);
      v52 = *(*(v46 - 8) + 16);
      v24 = &v21[v23];
      EnumCaseMultiPayload = 1;
      v52(v45, v24, v46);
      v52(&v20[*(v48 + 24)], &v21[*(v48 + 24)], v46);
    }

    else
    {
      v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v26 = swift_getEnumCaseMultiPayload(v21, v55);
      v53 = v26 == 1;
      v27 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v26 == 1)
      {
        v27 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledName(v27);
      (*(*(v28 - 8) + 16))(v20, v21, v28);
      swift_storeEnumTagMultiPayload(v20, v55, v53);
    }

    v29 = v20;
    v30 = v47;
    swift_storeEnumTagMultiPayload(v29, v47, EnumCaseMultiPayload);
    v31 = *(a3 + 36);
    v32 = (a1 + v31);
    v33 = (v31 + a2);
    outlined destroy of MLActivityClassifier.ModelParameters(a1 + v31, type metadata accessor for MLClassifierMetrics.Contents);
    v34 = swift_getEnumCaseMultiPayload(v33, v47);
    if (v34 == 2)
    {
      v39 = *v33;
      swift_errorRetain(v39);
      *v32 = v39;
    }

    else
    {
      v51 = v34;
      if (v34 == 1)
      {
        *v32 = *v33;
        v54 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v35 = *(v54 + 20);
        v49 = &v32[v35];
        v36 = type metadata accessor for DataFrame(0);
        v56 = *(*(v36 - 8) + 16);
        v37 = &v33[v35];
        v34 = 1;
        v56(v49, v37, v36);
        v38 = v36;
        v30 = v47;
        v56(&v32[*(v54 + 24)], &v33[*(v54 + 24)], v38);
      }

      else
      {
        v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v40 = swift_getEnumCaseMultiPayload(v33, v57);
        v41 = v40 == 1;
        v42 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v40 == 1)
        {
          v42 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v43 = __swift_instantiateConcreteTypeFromMangledName(v42);
        (*(*(v43 - 8) + 16))(v32, v33, v43);
        swift_storeEnumTagMultiPayload(v32, v57, v41);
        v34 = v51;
      }
    }

    swift_storeEnumTagMultiPayload(v32, v30, v34);
  }

  return a1;
}

void *initializeWithTake for MLWordTagger(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  qmemcpy(a1 + 3, a2 + 3, 0x69uLL);
  v6 = *(a3 + 32);
  __dst = a1 + v6;
  v7 = a2 + v6;
  v8 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v7, v8);
  v40 = v8;
  if (EnumCaseMultiPayload == 1)
  {
    *__dst = *v7;
    v42 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v45 = v3;
    v18 = *(v42 + 20);
    v39 = &__dst[v18];
    v19 = type metadata accessor for DataFrame(0);
    v43 = *(*(v19 - 8) + 32);
    v20 = &v7[v18];
    v3 = v45;
    v43(v39, v20, v19);
    v21 = v19;
    v8 = v40;
    v43(&__dst[*(v42 + 24)], &v7[*(v42 + 24)], v21);
    v17 = 1;
    v15 = __dst;
    v16 = v40;
LABEL_7:
    swift_storeEnumTagMultiPayload(v15, v16, v17);
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v10 = swift_getEnumCaseMultiPayload(v7, v41);
    v44 = v3;
    v11 = v10 == 1;
    v12 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v10 == 1)
    {
      v12 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledName(v12);
    (*(*(v13 - 8) + 32))(__dst, v7, v13);
    v14 = v11;
    v3 = v44;
    swift_storeEnumTagMultiPayload(__dst, v41, v14);
    v15 = __dst;
    v16 = v8;
    v17 = 0;
    goto LABEL_7;
  }

  memcpy(__dst, v7, *(*(v8 - 8) + 64));
LABEL_9:
  v22 = *(v3 + 36);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = swift_getEnumCaseMultiPayload(v24, v8);
  if (v25 == 1)
  {
    *v23 = *v24;
    __dsta = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v34 = __dsta[5];
    v46 = &v23[v34];
    v35 = type metadata accessor for DataFrame(0);
    v36 = &v24[v34];
    v37 = *(*(v35 - 8) + 32);
    v37(v46, v36, v35);
    v37(&v23[__dsta[6]], &v24[__dsta[6]], v35);
    v33 = 1;
    v31 = v23;
    v32 = v40;
  }

  else
  {
    if (v25)
    {
      memcpy(v23, v24, *(*(v8 - 8) + 64));
      return a1;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v27 = swift_getEnumCaseMultiPayload(v24, v26);
    v28 = v27 == 1;
    v29 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v27 == 1)
    {
      v29 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledName(v29);
    (*(*(v30 - 8) + 32))(v23, v24, v30);
    swift_storeEnumTagMultiPayload(v23, v26, v28);
    v31 = v23;
    v32 = v40;
    v33 = 0;
  }

  swift_storeEnumTagMultiPayload(v31, v32, v33);
  return a1;
}

uint64_t assignWithTake for MLWordTagger(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v7;
  v8 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  v9 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  if (*(a1 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
  }

  v10 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v10;
  *(a1 + 88) = *(a2 + 88);
  v11 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  v11;
  *(a1 + 104) = *(a2 + 104);
  v12 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  v12;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  if (a1 == a2)
  {
    return a1;
  }

  v48 = a3;
  v13 = *(a3 + 32);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLClassifierMetrics.Contents);
  v16 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v15, v16);
  v50 = v16;
  if (EnumCaseMultiPayload == 1)
  {
    *v14 = *v15;
    v45 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v26 = *(v45 + 20);
    v46 = &v14[v26];
    v47 = type metadata accessor for DataFrame(0);
    v52 = *(*(v47 - 8) + 32);
    v27 = &v15[v26];
    v16 = v50;
    v52(v46, v27, v47);
    v52(&v14[*(v45 + 24)], &v15[*(v45 + 24)], v47);
    v25 = 1;
    v23 = v14;
    v24 = v50;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(v14, v15, *(*(v16 - 8) + 64));
      goto LABEL_12;
    }

    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v18 = swift_getEnumCaseMultiPayload(v15, v51);
    v19 = v18 == 1;
    v20 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v18 == 1)
    {
      v20 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v21 = __swift_instantiateConcreteTypeFromMangledName(v20);
    (*(*(v21 - 8) + 32))(v14, v15, v21);
    v22 = v19;
    v16 = v50;
    swift_storeEnumTagMultiPayload(v14, v51, v22);
    v23 = v14;
    v24 = v50;
    v25 = 0;
  }

  swift_storeEnumTagMultiPayload(v23, v24, v25);
LABEL_12:
  v28 = *(v48 + 36);
  v29 = (a1 + v28);
  v30 = (v28 + a2);
  outlined destroy of MLActivityClassifier.ModelParameters(a1 + v28, type metadata accessor for MLClassifierMetrics.Contents);
  v31 = swift_getEnumCaseMultiPayload(v30, v16);
  if (v31 == 1)
  {
    *v29 = *v30;
    v49 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v40 = *(v49 + 20);
    v53 = &v29[v40];
    v41 = type metadata accessor for DataFrame(0);
    v42 = &v30[v40];
    v43 = *(*(v41 - 8) + 32);
    v43(v53, v42, v41);
    v43(&v29[*(v49 + 24)], &v30[*(v49 + 24)], v41);
    v39 = 1;
    v37 = v29;
    v38 = v50;
  }

  else
  {
    if (v31)
    {
      memcpy(v29, v30, *(*(v16 - 8) + 64));
      return a1;
    }

    v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v33 = swift_getEnumCaseMultiPayload(v30, v32);
    v34 = v33 == 1;
    v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v33 == 1)
    {
      v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledName(v35);
    (*(*(v36 - 8) + 32))(v29, v30, v36);
    swift_storeEnumTagMultiPayload(v29, v32, v34);
    v37 = v29;
    v38 = v50;
    v39 = 0;
  }

  swift_storeEnumTagMultiPayload(v37, v38, v39);
  return a1;
}

uint64_t sub_7420E(void *a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for MLWordTaggerMetrics(0);
    return __swift_getEnumTagSinglePayload(a1 + *(a3 + 32), a2, v5);
  }

  return result;
}

uint64_t sub_74286(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for MLWordTaggerMetrics(0);
    return __swift_storeEnumTagSinglePayload(a1 + *(a4 + 32), a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLWordTagger(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.UnknownObject + 64;
  v3[1] = &value witness table for Builtin.BridgeObject + 64;
  v3[2] = &value witness table for Builtin.UnknownObject + 64;
  v3[3] = "i";
  result = type metadata accessor for MLClassifierMetrics.Contents(319);
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    v5 = v4;
    swift_initStructMetadata(a1, 256, 6, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3);
    *a1 = result;
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  return v2;
}

void outlined consume of MLDataValue(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 2:
      a1 = a2;
      goto LABEL_3;
    case 3:
      a1;
      break;
    case 4:
LABEL_3:
      a1, a2;
      break;
    case 5:

      break;
    default:
      return;
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  return block_copy_helper_0(a1, a2);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  return v2;
}

uint64_t block_destroy_helper_3(uint64_t a1)
{
  return block_destroy_helper_0(a1);
}

{
  return __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg565_s8CreateML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n(uint64_t a1, uint64_t a2)
{
  v3 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (a2 != a1)
  {
    v4 = 0;
    if (v3 > 0)
    {
      v4 = v3;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    if (v3 < 0)
    {
      BUG();
    }

    v5 = a1;
    v19 = a1 - 1;
    v6 = 0;
    v20 = v3;
    while (1)
    {
      if (v6 >= v3)
      {
        BUG();
      }

      v7 = v6 + 1;
      if (__OFADD__(1, v6))
      {
        BUG();
      }

      CMLSequence.value(at:)(v5 + v6);
      if (v2)
      {
        break;
      }

      v17 = CMLFeatureValue.stringValue()();
      if (v8)
      {

        v13 = "CreateML/MLDataTable.ColumnNames.swift";
        v14 = 38;
        v15 = 59;
        v16 = v8;
LABEL_25:
        swift_unexpectedError(v16, v13, v14, 1, v15);
        BUG();
      }

      v9 = _swiftEmptyArrayStorage[2];
      v10 = v9 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v9)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v9 + 1, 1);
        v10 = v9 + 1;
      }

      _swiftEmptyArrayStorage[2] = v10;
      *&_swiftEmptyArrayStorage[2 * v9 + 4] = v17;
      v5 = a1;
      if (a2 < a1)
      {
        BUG();
      }

      if ((v6 + v19 + 1) >= a2)
      {
        BUG();
      }

      ++v6;
      v11 = v7 == v20;
      v3 = v20;
      v2 = 0;
      if (v11)
      {
        goto LABEL_16;
      }
    }

    v13 = "CreateML/SequenceType.swift";
    v14 = 27;
    v15 = 76;
    v16 = v2;
    goto LABEL_25;
  }

LABEL_16:

  return _swiftEmptyArrayStorage;
}

uint64_t MLDataTable.columnNames.getter()
{
  v2 = v0;
  if (*(v1 + 8))
  {
    v3 = tc_v1_flex_list_create(0);
    if (!v3)
    {
      BUG();
    }

    v4 = v3;
    v5 = type metadata accessor for CMLSequence();
    result = swift_allocObject(v5, 25, 7);
    *(result + 16) = v4;
    *(result + 24) = 1;
    *v2 = result;
  }

  else
  {
    v7 = *v1;

    _DataTable.columnNames.getter(v7);
    return outlined consume of Result<_DataTable, Error>(v7, 0);
  }

  return result;
}

uint64_t MLDataTable.ColumnNames.endIndex.getter()
{
  v1 = *v0;

  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

  return v3;
}

uint64_t MLDataTable.ColumnNames.subscript.getter(uint64_t a1)
{
  v2 = *v1;
  CMLSequence.value(at:)(a1);
  countAndFlagsBits = CMLFeatureValue.stringValue()()._countAndFlagsBits;
  if (v4)
  {
    v4;

    _StringGuts.grow(_:)(37);
    0xE000000000000000;
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v7._object;
    String.append(_:)(v7);
    object;
    v9._countAndFlagsBits = 46;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000022, "able.ColumnNames.swift" + 0x8000000000000000, "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
    BUG();
  }

  v5 = countAndFlagsBits;

  return v5;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance MLDataTable.ColumnNames(uint64_t *a1)
{
  v3 = v1;
  v4 = *v2;
  result = specialized RandomAccessCollection<>.index(before:)(*a1);
  *v3 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance MLDataTable.ColumnNames(uint64_t *a1)
{
  v2 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    BUG();
  }

  v3 = *v1;

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  if (v2 < 0 || v2 >= v5)
  {
    BUG();
  }

  *a1 = v2;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance MLDataTable.ColumnNames(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2);
  *v4 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance MLDataTable.ColumnNames(uint64_t a1)
{
  v2 = v1;
  result = MLDataTable.ColumnNames.endIndex.getter(a1);
  *v2 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance MLDataTable.ColumnNames(uint64_t *a1, uint64_t *a2))(uint64_t a1, uint64_t a2)
{
  v2 = MLDataTable.ColumnNames.subscript.getter(*a2);
  a1[2] = v3;
  *a1 = v2;
  a1[1] = v3;
  return protocol witness for Collection.subscript.read in conformance MLDataTable.ColumnNames;
}

uint64_t protocol witness for Collection.indices.getter in conformance MLDataTable.ColumnNames()
{
  v2 = v0;
  v3 = *v1;
  result = specialized RandomAccessCollection<>.indices.getter();
  *v2 = result;
  v2[1] = v5;
  return result;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance MLDataTable.ColumnNames()
{
  *result = 0;
  *(result + 8) = 256;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance MLDataTable.ColumnNames(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v6 = *v4;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *v5 = result;
  *(v5 + 8) = v8 & 1;
  return result;
}

{
  return protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance MLDataTable.ColumnNames(a1, a2, a3);
}

void protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataTable.ColumnNames(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  v3 = *v2;
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  v3 = *v2;
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, a1[1], *a2, a2[1]);
}

void specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < a2 || a3 < a1)
  {
    BUG();
  }
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3);
}

{
  if (a1 < a2 || a1 >= a3)
  {
    BUG();
  }
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3);
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3);
}

void specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3 & 1) != 0 || (*(a4 + 16))
  {
    BUG();
  }

  if (*(a4 + 8) != a2)
  {
    BUG();
  }

  if (*a4 > a1)
  {
    BUG();
  }

  if (*(a4 + 40))
  {
    BUG();
  }

  if (*(a4 + 32) != a2)
  {
    BUG();
  }

  if (*(a4 + 24) < a1)
  {
    BUG();
  }
}

{
  if (a3 & 1) != 0 || (*(a4 + 16))
  {
    BUG();
  }

  if (*(a4 + 8) != a2)
  {
    BUG();
  }

  if (*a4 > a1)
  {
    BUG();
  }

  if (*(a4 + 40))
  {
    BUG();
  }

  if (*(a4 + 32) != a2)
  {
    BUG();
  }

  if (*(a4 + 24) <= a1)
  {
    BUG();
  }
}

uint64_t protocol witness for Collection.index(after:) in conformance MLDataTable.ColumnNames(uint64_t *a1)
{
  v3 = v1;
  v4 = *v2;
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *v3 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance MLDataTable.ColumnNames(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  if (v3 < 0 || v3 >= v5)
  {
    BUG();
  }

  *a1 = v3 + 1;
  return result;
}

void *protocol witness for Sequence.makeIterator() in conformance MLDataTable.ColumnNames()
{
  *result = *v1;
  result[1] = 0;
  return result;
}

char static MLDataTable.ColumnNames.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized Sequence<>.elementsEqual<A>(_:)();
}

char specialized Sequence<>.elementsEqual<A>(_:)()
{
  v21 = 0;

  for (i = 0; ; i = v22)
  {

    v1 = CMLSequence.size.getter();
    v2 = specialized RandomAccessCollection<>.distance(from:to:)(0, v1);

    if (i == v2)
    {
      v20 = 0;
    }

    else
    {
      CMLSequence.value(at:)(i);
      v20 = CMLFeatureValue.stringValue()();
      if (v3)
      {
        goto LABEL_28;
      }

      v4 = CMLSequence.size.getter();
      v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

      if (i < 0 || i >= v5)
      {
        BUG();
      }

      ++i;
    }

    v6 = CMLSequence.size.getter();
    v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

    if (v21 == v7)
    {
      break;
    }

    v22 = i;
    CMLSequence.value(at:)(v21);
    v8 = CMLFeatureValue.stringValue()();
    if (v3)
    {
LABEL_28:
      v3;

      _StringGuts.grow(_:)(37);
      0xE000000000000000;
      v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      object = v17._object;
      String.append(_:)(v17);
      object;
      v19._countAndFlagsBits = 46;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000022, "able.ColumnNames.swift" + 0x8000000000000000, "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
      BUG();
    }

    countAndFlagsBits = v8._countAndFlagsBits;
    v10 = v8._object;

    v11 = CMLSequence.size.getter();
    v12 = specialized RandomAccessCollection<>.distance(from:to:)(0, v11);

    if (v21 >= v12)
    {
      BUG();
    }

    v13 = v20._object;
    if (!v20._object)
    {
      goto LABEL_21;
    }

    if (!v10)
    {
      goto LABEL_18;
    }

    if (v20 == __PAIR128__(v10, countAndFlagsBits))
    {
      v20._object;
      v10;
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)(v20._countAndFlagsBits, v20._object, countAndFlagsBits, v10, 0);
      v20._object;
      v10;
      if ((v14 & 1) == 0)
      {

        return 0;
      }
    }

    ++v21;
  }

  v13 = v20._object;
  if (v20._object)
  {
LABEL_18:

    v15 = v13;
LABEL_23:
    v15;
    return 0;
  }

  v10 = 0;
LABEL_21:

  if (v10)
  {
    v15 = v10;
    goto LABEL_23;
  }

  return 1;
}

BOOL specialized Sequence<>.elementsEqual<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  v4 = 0;
  v5 = 0;
  do
  {
    if (v5 == v2)
    {
      v6 = 0;
      v7 = *(a2 + 16);
    }

    else
    {
      if (v5 >= v2)
      {
        BUG();
      }

      v7 = v5 + 1;
      if (__OFADD__(1, v5))
      {
        BUG();
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    result = v4 == v3;
    if (v4 == v3)
    {
      v9 = 0;
      v10 = *(a1 + 16);
    }

    else
    {
      if (v4 >= v3)
      {
        BUG();
      }

      v10 = v4 + 1;
      if (__OFADD__(1, v4))
      {
        BUG();
      }

      v9 = *(a1 + 8 * v4 + 32);
    }

    if (v5 == v2)
    {
      break;
    }

    result = 0;
    if (v4 == v3)
    {
      break;
    }

    v4 = v10;
    v5 = v7;
  }

  while (v6 == v9);
  return result;
}

uint64_t MLDataTable.ColumnNames.description.getter()
{
  v1 = *v0;

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
  v1;
  if (v3 < 0 || v7 < v3)
  {
    BUG();
  }

  ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg565_s8CreateML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n(0, v3);
  v9 = Array.description.getter(ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n, &type metadata for String);
  ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n;
  return v9;
}

uint64_t MLDataTable.ColumnNames.debugDescription.getter()
{
  v1 = *v0;
  swift_retain_n(v1, 2);
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
  v1;
  if (v3 < 0 || v7 < v3)
  {
    BUG();
  }

  ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg565_s8CreateML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n(0, v3);
  v9 = Array.description.getter(ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n, &type metadata for String);

  ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n;
  return v9;
}

uint64_t MLDataTable.ColumnNames.playgroundDescription.getter()
{
  v2 = v0;
  v3 = *v1;
  swift_retain_n(v3, 2);
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
  v3;
  if (v5 < 0 || v9 < v5)
  {
    BUG();
  }

  ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg565_s8CreateML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n(0, v5);
  v11 = Array.description.getter(ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n, &type metadata for String);
  v13 = v12;

  ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n;
  objc_allocWithZone(NSAttributedString);
  v14 = @nonobjc NSAttributedString.init(string:attributes:)(v11, v13, 0);
  result = type metadata accessor for NSAttributedString();
  v2[3] = result;
  *v2 = v14;
  return result;
}

id @nonobjc NSAttributedString.init(string:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames()
{
  result = lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames;
  if (!lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.ColumnNames, &type metadata for MLDataTable.ColumnNames);
    lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames;
  if (!lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.ColumnNames, &type metadata for MLDataTable.ColumnNames);
    lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames;
  if (!lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.ColumnNames, &type metadata for MLDataTable.ColumnNames);
    lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames;
  if (!lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.ColumnNames, &type metadata for MLDataTable.ColumnNames);
    lazy protocol witness table cache variable for type MLDataTable.ColumnNames and conformance MLDataTable.ColumnNames = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<MLDataTable.ColumnNames> and conformance <> Slice<A>(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Slice<MLDataTable.ColumnNames>);
    a2();
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Range<Int>);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    v1 = type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSAttributedStringKey, v1);
    lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey = result;
  }

  return result;
}

unint64_t MLWordTagger.ModelAlgorithmType.description.getter()
{
  v1 = 0xD000000000000016;
  if (v0[16] != 1)
  {
    return 0xD00000000000001ELL;
  }

  if (*v0)
  {
    if (*v0 == 1)
    {
      v1 = 0xD000000000000027;
      v2 = "Unspecified Language";
    }

    else
    {
      v1 = 0xD000000000000046;
      v2 = "Average Tokens per Sequence";
    }
  }

  else
  {
    v2 = "ge Model Text Embedding";
  }

  v5 = v1;
  v2 | 0x8000000000000000;
  v4._countAndFlagsBits = 0x6C65646F4D20;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);
  v2 | 0x8000000000000000, 0xE600000000000000;
  return v5;
}

unint64_t MLWordTagger.ModelAlgorithmType.playgroundDescription.getter()
{
  v2 = v0;
  v3 = 0xD000000000000016;
  if (v1[16] == 1)
  {
    if (*v1)
    {
      if (*v1 == 1)
      {
        v3 = 0xD000000000000027;
        v4 = "Unspecified Language";
      }

      else
      {
        v3 = 0xD000000000000046;
        v4 = "Average Tokens per Sequence";
      }
    }

    else
    {
      v4 = "ge Model Text Embedding";
    }

    v8 = v3;
    v4 | 0x8000000000000000;
    v7._countAndFlagsBits = 0x6C65646F4D20;
    v7._object = 0xE600000000000000;
    String.append(_:)(v7);
    v4 | 0x8000000000000000, 0xE600000000000000;
    result = v8;
    v5 = (v4 | 0x8000000000000000);
  }

  else
  {
    v5 = "Dynamic Text Embedding" + 0x8000000000000000;
    result = 0xD00000000000001ELL;
  }

  v2[3] = &type metadata for String;
  *v2 = result;
  v2[1] = v5;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.PersistentParameters(uint64_t *a1, uint64_t a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v21 = *a2;
    *v4 = *a2;
    v4 = (v21 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = a3;
    v7 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    v102 = v6;
    v110 = v7;
    switch(swift_getEnumCaseMultiPayload(a2, v7))
    {
      case 0u:
        v8 = type metadata accessor for URL(0);
        v9 = *(*(v8 - 8) + 16);
        v9(a1, a2, v8);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v9((a1 + v10[12]), a2 + v10[12], v8);
        v11 = v10[16];
        *(a1 + v11) = *(a2 + v11);
        v12 = *(a2 + v11 + 8);
        *(v4 + v11 + 8) = v12;
        v13 = v10[20];
        *(v4 + v13) = *(a2 + v13);
        v14 = *(a2 + v13 + 8);
        *(v4 + v13 + 8) = v14;
        v15 = v10[24];
        *(v4 + v15) = *(a2 + v15);
        v16 = *(a2 + v15 + 8);
        *(v4 + v15 + 8) = v16;
        v17 = v10[28];
        *(v4 + v17) = *(a2 + v17);
        v18 = *(a2 + v17 + 8);
        *(v4 + v17 + 8) = v18;
        v12;
        v14;
        v16;
        LOBYTE(v12) = v18;
        v6 = v102;
        v12;
        a1 = v4;
        v19 = v110;
        v20 = 0;
        goto LABEL_13;
      case 1u:
        v35 = type metadata accessor for URL(0);
        (*(*(v35 - 8) + 16))(a1, a2, v35);
        v98 = 1;
        goto LABEL_9;
      case 2u:
        v28 = type metadata accessor for URL(0);
        (*(*(v28 - 8) + 16))(a1, a2, v28);
        v98 = 2;
LABEL_9:
        v20 = v98;
        v19 = v7;
        goto LABEL_13;
      case 3u:
        v29 = *a2;
        v30 = v6;
        v31 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v31);
        *a1 = v29;
        *(a1 + 8) = v31;
        a1[2] = *(a2 + 16);
        v32 = *(a2 + 24);
        v4[3] = v32;
        v4[4] = *(a2 + 32);
        v33 = *(a2 + 40);
        v4[5] = v33;
        v4[6] = *(a2 + 48);
        v34 = *(a2 + 56);
        v4[7] = v34;
        v32;
        v33;
        LOBYTE(v32) = v34;
        v6 = v30;
        v32;
        v97 = 3;
        goto LABEL_12;
      case 4u:
        v22 = *a2;
        v23 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v23);
        *a1 = v22;
        *(a1 + 8) = v23;
        a1[2] = *(a2 + 16);
        v24 = *(a2 + 24);
        v4[3] = v24;
        v4[4] = *(a2 + 32);
        v25 = *(a2 + 40);
        v4[5] = v25;
        v4[6] = *(a2 + 48);
        v26 = *(a2 + 56);
        v4[7] = v26;
        v4[8] = *(a2 + 64);
        v27 = *(a2 + 72);
        v4[9] = v27;
        v24;
        v25;
        LOBYTE(v24) = v26;
        v6 = v102;
        v24;
        v27;
        v97 = 4;
        goto LABEL_12;
      case 5u:
        v36 = type metadata accessor for DataFrame(0);
        (*(*(v36 - 8) + 16))(a1, a2, v36);
        v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v38 = v37[12];
        *(a1 + v38) = *(a2 + v38);
        v39 = *(a2 + v38 + 8);
        *(v4 + v38 + 8) = v39;
        v40 = v37[16];
        *(v4 + v40) = *(a2 + v40);
        v41 = *(a2 + v40 + 8);
        *(v4 + v40 + 8) = v41;
        v42 = v37[20];
        *(v4 + v42) = *(a2 + v42);
        v43 = v6;
        v44 = *(a2 + v42 + 8);
        *(v4 + v42 + 8) = v44;
        v39;
        v41;
        LOBYTE(v39) = v44;
        v6 = v43;
        v39;
        v97 = 5;
        goto LABEL_12;
      case 6u:
        v45 = type metadata accessor for DataFrame(0);
        (*(*(v45 - 8) + 16))(a1, a2, v45);
        v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v47 = v46[12];
        *(a1 + v47) = *(a2 + v47);
        v48 = *(a2 + v47 + 8);
        *(v4 + v47 + 8) = v48;
        v49 = v46[16];
        *(v4 + v49) = *(a2 + v49);
        v50 = *(a2 + v49 + 8);
        *(v4 + v49 + 8) = v50;
        v51 = v46[20];
        *(v4 + v51) = *(a2 + v51);
        v52 = *(a2 + v51 + 8);
        *(v4 + v51 + 8) = v52;
        v53 = v46[24];
        *(v4 + v53) = *(a2 + v53);
        v54 = *(a2 + v53 + 8);
        *(v4 + v53 + 8) = v54;
        v48;
        v50;
        LOBYTE(v48) = v52;
        v6 = v102;
        v48;
        v54;
        v97 = 6;
LABEL_12:
        v20 = v97;
        a1 = v4;
        v19 = v110;
LABEL_13:
        swift_storeEnumTagMultiPayload(a1, v19, v20);
        v55 = v6[5];
        v56 = v4 + v55;
        v57 = a2 + v55;
        v58 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
        if (swift_getEnumCaseMultiPayload(v57, v58) == 1)
        {
          v103 = v58;
          switch(swift_getEnumCaseMultiPayload(v57, v110))
          {
            case 0u:
              v104 = type metadata accessor for URL(0);
              v100 = *(*(v104 - 8) + 16);
              v100(v56, v57, v104);
              v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
              v100(&v56[v59[12]], v57 + v59[12], v104);
              v60 = v59[16];
              *&v56[v60] = *(v57 + v60);
              v61 = *(v57 + v60 + 8);
              *&v56[v60 + 8] = v61;
              v62 = v59[20];
              *&v56[v62] = *(v57 + v62);
              v105 = *(v57 + v62 + 8);
              *&v56[v62 + 8] = v105;
              v63 = v59[24];
              *&v56[v63] = *(v57 + v63);
              v101 = *(v57 + v63 + 8);
              *&v56[v63 + 8] = v101;
              v64 = v59[28];
              *&v56[v64] = *(v57 + v64);
              v65 = *(v57 + v64 + 8);
              *&v56[v64 + 8] = v65;
              v61;
              v105;
              v101;
              v65;
              v66 = v56;
              v67 = v110;
              v68 = 0;
              goto LABEL_24;
            case 1u:
              v78 = type metadata accessor for URL(0);
              (*(*(v78 - 8) + 16))(v56, v57, v78);
              v99 = 1;
              goto LABEL_23;
            case 2u:
              v73 = type metadata accessor for URL(0);
              (*(*(v73 - 8) + 16))(v56, v57, v73);
              v99 = 2;
              goto LABEL_23;
            case 3u:
              v108 = *v57;
              v74 = *(v57 + 8);
              outlined copy of Result<_DataTable, Error>(*v57, v74);
              *v56 = v108;
              v56[8] = v74;
              *(v56 + 2) = *(v57 + 16);
              v75 = *(v57 + 24);
              *(v56 + 3) = v75;
              *(v56 + 4) = *(v57 + 32);
              v76 = *(v57 + 40);
              *(v56 + 5) = v76;
              *(v56 + 6) = *(v57 + 48);
              v77 = *(v57 + 56);
              *(v56 + 7) = v77;
              v75;
              v76;
              v77;
              v99 = 3;
              goto LABEL_23;
            case 4u:
              v106 = *v57;
              v69 = *(v57 + 8);
              outlined copy of Result<_DataTable, Error>(*v57, v69);
              *v56 = v106;
              v56[8] = v69;
              *(v56 + 2) = *(v57 + 16);
              v70 = *(v57 + 24);
              *(v56 + 3) = v70;
              *(v56 + 4) = *(v57 + 32);
              v71 = *(v57 + 40);
              *(v56 + 5) = v71;
              *(v56 + 6) = *(v57 + 48);
              v107 = *(v57 + 56);
              *(v56 + 7) = v107;
              *(v56 + 8) = *(v57 + 64);
              v72 = *(v57 + 72);
              *(v56 + 9) = v72;
              v70;
              v71;
              v107;
              v72;
              v99 = 4;
              goto LABEL_23;
            case 5u:
              v79 = type metadata accessor for DataFrame(0);
              (*(*(v79 - 8) + 16))(v56, v57, v79);
              v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
              v81 = v80[12];
              *&v56[v81] = *(v57 + v81);
              v82 = *(v57 + v81 + 8);
              *&v56[v81 + 8] = v82;
              v83 = v80[16];
              *&v56[v83] = *(v57 + v83);
              v84 = *(v57 + v83 + 8);
              *&v56[v83 + 8] = v84;
              v85 = v80[20];
              *&v56[v85] = *(v57 + v85);
              v86 = *(v57 + v85 + 8);
              *&v56[v85 + 8] = v86;
              v82;
              v84;
              v86;
              v99 = 5;
              goto LABEL_23;
            case 6u:
              v87 = type metadata accessor for DataFrame(0);
              (*(*(v87 - 8) + 16))(v56, v57, v87);
              v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
              v89 = v88[12];
              *&v56[v89] = *(v57 + v89);
              v90 = *(v57 + v89 + 8);
              *&v56[v89 + 8] = v90;
              v91 = v88[16];
              *&v56[v91] = *(v57 + v91);
              v92 = *(v57 + v91 + 8);
              *&v56[v91 + 8] = v92;
              v93 = v88[20];
              *&v56[v93] = *(v57 + v93);
              v109 = *(v57 + v93 + 8);
              *&v56[v93 + 8] = v109;
              v94 = v88[24];
              *&v56[v94] = *(v57 + v94);
              v95 = *(v57 + v94 + 8);
              *&v56[v94 + 8] = v95;
              v90;
              v92;
              v109;
              v95;
              v99 = 6;
LABEL_23:
              v68 = v99;
              v66 = v56;
              v67 = v110;
LABEL_24:
              swift_storeEnumTagMultiPayload(v66, v67, v68);
              swift_storeEnumTagMultiPayload(v56, v103, 1);
              break;
            case 7u:
              JUMPOUT(0x75F30);
          }
        }

        else
        {
          memcpy(v56, v57, *(*(v58 - 8) + 64));
        }

        *(v4 + v102[6]) = *(a2 + v102[6]);
        *(v4 + v102[7]) = *(a2 + v102[7]);
        *(v4 + v102[8]) = *(a2 + v102[8]);
        *(v4 + v102[9]) = *(a2 + v102[9]);
        *(v4 + v102[10]) = *(a2 + v102[10]);
        break;
    }
  }

  return v4;
}