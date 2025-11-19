uint64_t Array<A>.featureColumn.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = Array<A>.featureSequence.getter(a1, a2, a3);
  (*(a3 + 8))(a2, a3);
  type metadata accessor for CMLColumn();
  return CMLColumn.__allocating_init(_:type:)(v4, 0x5060403020100uLL >> (8 * v6));
}

uint64_t protocol witness for MLDataValueConvertible.init(from:) in conformance <A> [A](uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  result = Array<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8), a4);
  *v5 = result;
  return result;
}

uint64_t protocol witness for MLDataValueConvertible.init() in conformance <A> [A](uint64_t a1)
{
  v2 = v1;
  result = Array.init()(*(a1 + 16));
  *v2 = result;
  return result;
}

uint64_t protocol witness for FeatureValueConvertible.init(from:) in conformance <A> [A](uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  result = Array<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8), a4);
  *v5 = result;
  return result;
}

void outlined consume of MLDataValue?(void *a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    outlined consume of MLDataValue(a1, a2, a3);
  }
}

uint64_t lazy protocol witness table accessor for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>(uint64_t *a1, uint64_t *a2, void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!*a1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    a3();
    result = swift_getWitnessTable(a4, v7);
    *a1 = result;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for <A> [A](uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], a2);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<CMLSequence> and conformance <> Slice<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!*a1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Slice<CMLSequence>);
    lazy protocol witness table accessor for type CMLSequence and conformance CMLSequence(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CMLSequence and conformance CMLSequence(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = type metadata accessor for CMLSequence();
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

uint64_t outlined retain of Range<MLDataValue.DictionaryType.Index>(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  outlined copy of [A : B].Index._Variant<A, B>(*a1, *(a1 + 8), *(a1 + 16));
  outlined copy of [A : B].Index._Variant<A, B>(v1, v2, v3);
  return a1;
}

void *initializeBufferWithCopyOfBuffer for MLLogisticRegressionClassifier.Model(void *a1, void *a2, uint64_t a3)
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
    v6;
    if (v7)
    {
      v3[2] = v7;
      v3[3] = a2[3];
      v8 = a2[4];
      v3[4] = v8;
      v7;
      v8;
    }

    else
    {
      v3[4] = a2[4];
      *(v3 + 1) = *(a2 + 1);
    }

    v10 = *(a3 + 24);
    v11 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
    (*(*(v11 - 8) + 16))(v3 + v10, a2 + v10, v11);
    v12 = *(a3 + 28);
    v13 = *(a2 + v12);
    v14 = *(a2 + v12 + 8);
    *(v3 + v12) = v13;
    *(v3 + v12 + 8) = v14;
    v13;
  }

  return v3;
}

uint64_t destroy for MLLogisticRegressionClassifier.Model(void *a1, uint64_t a2)
{
  a1[1], a2;
  v4 = a1[2];
  if (v4)
  {
    v4, a2;
    a1[4], a2;
  }

  v5 = a1 + *(a2 + 24);
  v6 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v6 - 8) + 8))(v5, v6);
  return *(a1 + *(a2 + 28)), v6;
}

void *initializeWithCopy for MLLogisticRegressionClassifier.Model(void *a1, void *a2, uint64_t a3)
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

  v8 = *(a3 + 24);
  v9 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  v10 = *(a3 + 28);
  v11 = *(a2 + v10);
  v12 = *(a2 + v10 + 8);
  *(a1 + v10) = v11;
  *(a1 + v10 + 8) = v12;
  v11;
  return a1;
}

void *assignWithCopy for MLLogisticRegressionClassifier.Model(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v4;
  v5;
  v6 = a1 + 2;
  v7 = a2 + 2;
  v8 = a1[2];
  v9 = a2[2];
  if (v8)
  {
    if (v9)
    {
      a1[2] = v9;
      v9;
      v8;
      a1[3] = a2[3];
      v10 = a2[4];
      v11 = a1[4];
      a1[4] = v10;
      v10;
      v11;
    }

    else
    {
      outlined destroy of FeatureVectorizer<Double>.Transformer((a1 + 2));
      *v6 = *v7;
      a1[4] = a2[4];
    }
  }

  else if (v9)
  {
    a1[2] = v9;
    a1[3] = a2[3];
    v12 = a2[4];
    a1[4] = v12;
    v9;
    v12;
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v13 = *(a3 + 24);
  v14 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v14 - 8) + 24))(a1 + v13, a2 + v13, v14);
  v15 = *(a3 + 28);
  v16 = *(a2 + v15);
  v17 = *(a2 + v15 + 8);
  v18 = *(a1 + v15);
  *(a1 + v15) = v16;
  *(a1 + v15 + 8) = v17;
  v16;
  v18;
  return a1;
}

uint64_t outlined destroy of FeatureVectorizer<Double>.Transformer(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t initializeWithTake for MLLogisticRegressionClassifier.Model(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a3 + 24);
  v5 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v5 - 8) + 32))(a1 + v4, a2 + v4, v5);
  v6 = *(a3 + 28);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  *(a1 + v6) = *(a2 + v6);
  return a1;
}

void *assignWithTake for MLLogisticRegressionClassifier.Model(void *a1, void *a2, uint64_t a3)
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
      outlined destroy of FeatureVectorizer<Double>.Transformer((a1 + 2));
      *v6 = *v7;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v11 = *(a3 + 24);
  v12 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = *(a3 + 28);
  v14 = *(a2 + v13 + 8);
  v15 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);
  *(a1 + v13 + 8) = v14;
  v15;
  return a1;
}

uint64_t sub_132242(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 24) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_1322CA(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 24) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for MLLogisticRegressionClassifier.Model(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLogisticRegressionClassifier.Model;
  if (!type metadata singleton initialization cache for MLLogisticRegressionClassifier.Model)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLogisticRegressionClassifier.Model);
  }

  return result;
}

uint64_t type metadata completion function for MLLogisticRegressionClassifier.Model(uint64_t a1)
{
  v3[0] = &unk_342328;
  v3[1] = &unk_342340;
  result = type metadata accessor for BaseLogisticRegressionClassifierModel(319);
  if (v2 <= 0x3F)
  {
    v3[2] = *(result - 8) + 64;
    v3[3] = &unk_342358;
    swift_initStructMetadata(a1, 256, 4, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.Model.computeMetrics(on:)(uint64_t a1)
{
  v14[0] = v1;
  v4 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v15 = v14;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v20 = v14;
  v17 = type metadata accessor for DataFrame(0);
  v16 = *(v17 - 8);
  v9 = *(v16 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v14[1] = a1;
  result = MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(a1, 0, 0);
  if (!v2)
  {
    v18 = *v3;
    v19 = v3[1];
    DataFrame.subscript.getter(v18, v19);
    v13 = v15;
    DataFrame.subscript.getter(v18, v19);
    AnyClassificationMetrics.init(_:_:)(v20, v13);
    return (*(v16 + 8))(v14, v17);
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(uint64_t a1, void *a2, uint64_t *a3)
{
  v33 = v4;
  v6 = v5;
  v32 = a3;
  v28 = a2;
  v30 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = v5[2];
  if (!v11)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, "ressorModel.swift" + 0x8000000000000000, "CreateML/MLLogisticRegressionClassifier.Model.swift", 51, 2, 28, 0);
    BUG();
  }

  result = specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(a1, 1u, v11, v5[3], v5[4]);
  if (!v33)
  {
    v33 = 0;
    v31 = v7;
    v13 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
    v14 = v5 + *(v13 + 24);
    v29 = &v26;
    v15 = BaseLogisticRegressionClassifierModel.applied(features:eventHandler:)(&v26, v28, v32);
    v32 = &v26;
    v16 = *(v13 + 28);
    v17 = *(v6 + v16);
    v18 = alloca(32);
    v19 = alloca(32);
    v20 = *(v6 + v16 + 8) == 0;
    v28 = v6;
    v29 = v17;
    v21 = v33;
    if (v20)
    {
      MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5(partial apply for closure #1 in MLLogisticRegressionClassifier.Model.applied(to:eventHandler:), &v26, v15);
      v33 = v21;
      v15;
      v23 = MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5;
      specialized MLLogisticRegressionClassifier.Model.buildDataFrame<A>(_:)(MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5);
    }

    else
    {
      MLComponents26ClassificationDistributionVySiGG_AHySSGs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_AHySSGs5NeverOTg5(partial apply for closure #2 in MLLogisticRegressionClassifier.Model.applied(to:eventHandler:), &v26, v15);
      v33 = v21;
      v15;
      v23 = MLComponents26ClassificationDistributionVySiGG_AHySSGs5NeverOTg5;
      specialized MLLogisticRegressionClassifier.Model.buildDataFrame<A>(_:)(MLComponents26ClassificationDistributionVySiGG_AHySSGs5NeverOTg5);
    }

    v25 = v31;
    v23;
    return (*(v27 + 8))(v29, v25);
  }

  return result;
}

uint64_t closure #1 in MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  return ClassificationDistribution.map<A>(_:)(partial apply for closure #1 in MLLogisticRegressionClassifier.Model.convertDistribution(_:labels:), v5, v3, &type metadata for Int, &protocol witness table for Int);
}

uint64_t specialized MLLogisticRegressionClassifier.Model.buildDataFrame<A>(_:)(uint64_t a1)
{
  v28[4] = v1;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v29 = *(v31 - 8);
  v4 = *(v29 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = v28;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<ClassificationDistribution<Int>>);
  v30 = *(v32 - 8);
  v7 = *(v30 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v33 = v28;
  v34 = *v2;
  v10 = v2[1];
  v38 = v34;
  v39 = v10;
  v10;
  v11._countAndFlagsBits = 0x6C696261626F7250;
  v11._object = 0xEB00000000797469;
  String.append(_:)(v11);
  v36 = v38;
  v37 = v39;
  v35 = a1;
  v38 = a1;
  a1;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ClassificationDistribution<Int>]);
  v14 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [ClassificationDistribution<Int>] and conformance [A], &demangling cache variable for type metadata for [ClassificationDistribution<Int>]);
  Column.init<A>(name:contents:)(v36, v37, &v38, v12, v13, v14);
  v28[2] = &type metadata for Int;
  v28[3] = &protocol witness table for Int;
  KeyPath = swift_getKeyPath(&unk_3423D8);
  v10;

  MLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_Si_TG5s7KeyPathCyAiKGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_Si_TG5s7KeyPathCyAiKGTf1cn_n(v35, KeyPath);

  v38 = MLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_Si_TG5s7KeyPathCyAiKGTf1cn_n;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int?]);
  v18 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [Int?] and conformance [A], &demangling cache variable for type metadata for [Int?]);
  Column.init<A>(name:contents:)(v34, v10, &v38, &type metadata for Int, v17, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v20 = *(type metadata accessor for AnyColumn(0) - 8);
  v21 = swift_allocObject(v19, ((*(v20 + 80) + 32) & ~*(v20 + 80)) + 2 * *(v20 + 72), *(v20 + 80) | 7);
  *(v21 + 16) = 2;
  *(v21 + 24) = 4;
  v22 = v31;
  Column.eraseToAnyColumn()(v31);
  v23 = v32;
  v24 = v33;
  Column.eraseToAnyColumn()(v32);
  v38 = v21;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v26 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn]);
  DataFrame.init<A>(columns:)(&v38, v25, v26);
  (*(v29 + 8))(v40, v22);
  return (*(v30 + 8))(v24, v23);
}

{
  v28[4] = v1;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v29 = *(v31 - 8);
  v4 = *(v29 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = v28;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<ClassificationDistribution<String>>);
  v30 = *(v32 - 8);
  v7 = *(v30 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v33 = v28;
  v34 = *v2;
  v10 = v2[1];
  v38 = v34;
  v39 = v10;
  v10;
  v11._countAndFlagsBits = 0x6C696261626F7250;
  v11._object = 0xEB00000000797469;
  String.append(_:)(v11);
  v36 = v38;
  v37 = v39;
  v35 = a1;
  v38 = a1;
  a1;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ClassificationDistribution<String>]);
  v14 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [ClassificationDistribution<String>] and conformance [A], &demangling cache variable for type metadata for [ClassificationDistribution<String>]);
  Column.init<A>(name:contents:)(v36, v37, &v38, v12, v13, v14);
  v28[2] = &type metadata for String;
  v28[3] = &protocol witness table for String;
  KeyPath = swift_getKeyPath(&unk_3423D8);
  v10;

  MLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_SS_TG5s7KeyPathCyAiKGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_SS_TG5s7KeyPathCyAiKGTf1cn_n(v35, KeyPath);

  v38 = MLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_SS_TG5s7KeyPathCyAiKGTf1cn_n;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String?]);
  v18 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String?] and conformance [A], &demangling cache variable for type metadata for [String?]);
  Column.init<A>(name:contents:)(v34, v10, &v38, &type metadata for String, v17, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v20 = *(type metadata accessor for AnyColumn(0) - 8);
  v21 = swift_allocObject(v19, ((*(v20 + 80) + 32) & ~*(v20 + 80)) + 2 * *(v20 + 72), *(v20 + 80) | 7);
  *(v21 + 16) = 2;
  *(v21 + 24) = 4;
  v22 = v31;
  Column.eraseToAnyColumn()(v31);
  v23 = v32;
  v24 = v33;
  Column.eraseToAnyColumn()(v32);
  v38 = v21;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v26 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn]);
  DataFrame.init<A>(columns:)(&v38, v25, v26);
  (*(v29 + 8))(v40, v22);
  return (*(v30 + 8))(v24, v23);
}

uint64_t closure #2 in MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  return ClassificationDistribution.map<A>(_:)(partial apply for closure #1 in MLLogisticRegressionClassifier.Model.convertDistribution(_:labels:), v5, v3, &type metadata for String, &protocol witness table for String);
}

uint64_t closure #1 in MLLogisticRegressionClassifier.Model.convertDistribution(_:labels:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Classification<Int>);
  Classification.label.getter(v3);
  if (v5[0] < 0 || v5[0] >= v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000029, "ClassifierModel.swift" + 0x8000000000000000, "CreateML/MLLogisticRegressionClassifier.Model.swift", 51, 2, 47, 0);
    BUG();
  }

  Classification.label.getter(v3);
  if (v5[0] >= v2)
  {
    BUG();
  }

  v5[0] = *(a2 + 8 * v5[0] + 32);
  Classification.probability.getter(v3);
  return Classification.init(label:probability:)(v5, &type metadata for Int, &protocol witness table for Int);
}

{
  v2 = *(a2 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Classification<Int>);
  Classification.label.getter(v3);
  if (v6[0] < 0 || v6[0] >= v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000029, "ClassifierModel.swift" + 0x8000000000000000, "CreateML/MLLogisticRegressionClassifier.Model.swift", 51, 2, 57, 0);
    BUG();
  }

  Classification.label.getter(v3);
  if (v6[0] >= v2)
  {
    BUG();
  }

  v4 = *(a2 + 16 * v6[0] + 40);
  v6[0] = *(a2 + 16 * v6[0] + 32);
  v6[1] = v4;
  v4;
  Classification.probability.getter(v3);
  return Classification.init(label:probability:)(v6, &type metadata for String, &protocol witness table for String);
}

uint64_t lazy protocol witness table accessor for type MLLogisticRegressionClassifier.Model and conformance MLLogisticRegressionClassifier.Model()
{
  result = lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Model and conformance MLLogisticRegressionClassifier.Model;
  if (!lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Model and conformance MLLogisticRegressionClassifier.Model)
  {
    v1 = type metadata accessor for MLLogisticRegressionClassifier.Model(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLLogisticRegressionClassifier.Model, v1);
    lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Model and conformance MLLogisticRegressionClassifier.Model = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in MLLogisticRegressionClassifier.Model.convertDistribution(_:labels:)(uint64_t a1)
{
  return closure #1 in MLLogisticRegressionClassifier.Model.convertDistribution(_:labels:)(a1, *(v1 + 16));
}

{
  return closure #1 in MLLogisticRegressionClassifier.Model.convertDistribution(_:labels:)(a1, *(v1 + 16));
}

uint64_t *initializeBufferWithCopyOfBuffer for ClassificationMetricsContainer(uint64_t *a1, uint64_t *a2)
{
  return initializeBufferWithCopyOfBuffer for ClassificationMetricsContainer(a1, a2);
}

{
  v3 = *a2;
  *a1 = *a2;
  v4 = a2[1];
  a1[1] = v4;
  v5 = a2[2];
  a1[2] = v5;
  v3;
  v4;
  v5;
  return a1;
}

uint64_t destroy for ClassificationMetricsContainer(void *a1, uint64_t a2)
{
  *a1;
  a1[1];
  return a1[2], a2;
}

uint64_t *assignWithCopy for ClassificationMetricsContainer(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v3;
  v4;
  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;
  v5;
  v6;
  v7 = a2[2];
  v8 = a1[2];
  a1[2] = v7;
  v7;
  v8, a2;
  return a1;
}

void *assignWithTake for ClassificationMetricsContainer(void *a1, uint64_t a2)
{
  *a1;
  v3 = a1[1];
  *a1 = *a2;
  v3;
  v4 = a1[2];
  a1[2] = *(a2 + 16);
  v4, a2;
  return a1;
}

uint64_t ClassificationMetricsContainer.init(classLabels:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  v5 = swift_allocObject(v4, *(v4 + 48), *(v4 + 52));
  a1;
  v6 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v3);
  if (v1)
  {
    swift_bridgeObjectRelease_n(a1, 2);
  }

  else
  {
    v7 = v6;
    swift_allocObject(v4, *(v4 + 48), *(v4 + 52));

    _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v3);
    a1;
    v5 = v7;
  }

  return v5;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ClassificationMetricsContainer.resetIteration()()
{
  v11 = v1;
  v2 = v1[2];
  v3 = *(v2 + 16);
  v4 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  swift_allocObject(v4, *(v4 + 48), *(v4 + 52));
  v5 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v3);
  if (!v0)
  {
    v6 = *v11;
    v10 = v5;

    *v11 = v10;
    v7 = *(v2 + 16);
    swift_allocObject(v4, *(v4 + 48), *(v4 + 52));
    v8 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v7);
    v9 = v11[1];

    v11[1] = v8;
  }
}

void *initializeBufferWithCopyOfBuffer for MLLogisticRegressionClassifier.Classifier(void *a1, uint64_t *a2, uint64_t a3)
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
    v3[3] = a2[3];
    v19 = v3 + 4;
    v21 = (a2 + 4);
    v8 = a2[7];
    v6;
    v7;
    if (v8)
    {
      v3[7] = v8;
      (**(v8 - 8))(v19, v21, v8);
    }

    else
    {
      v10 = *v21;
      *(v3 + 3) = *(a2 + 3);
      *v19 = v10;
    }

    *(v3 + 4) = *(a2 + 4);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 96) = *(a2 + 96);
    v11 = a2[13];
    v12 = *(a2 + 112);
    v3[13] = v11;
    *(v3 + 112) = v12;
    v13 = a2[15];
    v3[15] = v13;
    v3[16] = a2[16];
    v22 = a2[17];
    v3[17] = v22;
    v14 = *(a3 + 36);
    v20 = v3 + v14;
    v15 = a2 + v14;
    v16 = type metadata accessor for BaseLogisticRegressionClassifier(0);
    v18 = *(*(v16 - 8) + 16);
    v11;
    v13;
    v22;
    v18(v20, v15, v16);
  }

  return v3;
}

uint64_t destroy for MLLogisticRegressionClassifier.Classifier(void *a1, uint64_t a2)
{
  a1[1];
  a1[2];
  if (a1[7])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 4);
  }

  a1[13];
  a1[15];
  a1[17];
  v2 = a1 + *(a2 + 36);
  v3 = type metadata accessor for BaseLogisticRegressionClassifier(0);
  return (*(*(v3 - 8) + 8))(v2, v3);
}

uint64_t initializeWithCopy for MLLogisticRegressionClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  v18 = (a1 + 32);
  v6 = *(a2 + 56);
  v4;
  v5;
  if (v6)
  {
    *(a1 + 56) = v6;
    (**(v6 - 8))(v18, a2 + 32, v6);
  }

  else
  {
    v7 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *v18 = v7;
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v19 = *(a2 + 104);
  v8 = *(a2 + 112);
  *(a1 + 104) = v19;
  *(a1 + 112) = v8;
  v9 = *(a2 + 120);
  *(a1 + 120) = v9;
  *(a1 + 128) = *(a2 + 128);
  v10 = *(a2 + 136);
  *(a1 + 136) = v10;
  v11 = *(a3 + 36);
  v17 = a1 + v11;
  v12 = v11 + a2;
  v13 = type metadata accessor for BaseLogisticRegressionClassifier(0);
  v15 = *(*(v13 - 8) + 16);
  v19;
  v9;
  v10;
  v15(v17, v12, v13);
  return a1;
}

uint64_t assignWithCopy for MLLogisticRegressionClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *(a1 + 24) = *(a2 + 24);
  v9 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (v9)
    {
      *(a1 + 56) = v9;
      (**(v9 - 8))(a1 + 32, a2 + 32);
      goto LABEL_8;
    }

LABEL_7:
    v10 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v10;
    goto LABEL_8;
  }

  if (!v9)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0((a1 + 32), (a2 + 32));
LABEL_8:
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v11 = *(a2 + 104);
  v12 = *(a2 + 112);
  v13 = *(a1 + 104);
  *(a1 + 104) = v11;
  *(a1 + 112) = v12;
  v11;
  v13;
  v14 = *(a2 + 120);
  v15 = *(a1 + 120);
  *(a1 + 120) = v14;
  v14;
  v15;
  *(a1 + 128) = *(a2 + 128);
  v16 = *(a2 + 136);
  v17 = *(a1 + 136);
  *(a1 + 136) = v16;
  v16;
  v17;
  v18 = *(a3 + 36);
  v19 = a1 + v18;
  v20 = v18 + a2;
  v21 = type metadata accessor for BaseLogisticRegressionClassifier(0);
  (*(*(v21 - 8) + 24))(v19, v20, v21);
  return a1;
}

uint64_t initializeWithTake for MLLogisticRegressionClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  qmemcpy((a1 + 24), (a2 + 24), 0x49uLL);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  v3 = *(a3 + 36);
  v4 = type metadata accessor for BaseLogisticRegressionClassifier(0);
  (*(*(v4 - 8) + 32))(a1 + v3, a2 + v3, v4);
  return a1;
}

uint64_t assignWithTake for MLLogisticRegressionClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v5;
  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v6;
  *(a1 + 24) = *(a2 + 24);
  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v8 = *(a2 + 112);
  v9 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v8;
  v9;
  v10 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  v10;
  *(a1 + 128) = *(a2 + 128);
  v11 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);
  v11;
  v12 = *(a3 + 36);
  v13 = a1 + v12;
  v14 = v12 + a2;
  v15 = type metadata accessor for BaseLogisticRegressionClassifier(0);
  (*(*(v15 - 8) + 40))(v13, v14, v15);
  return a1;
}

uint64_t sub_133874(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for BaseLogisticRegressionClassifier(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 36) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_1338FC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseLogisticRegressionClassifier(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 36) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for MLLogisticRegressionClassifier.Classifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLogisticRegressionClassifier.Classifier;
  if (!type metadata singleton initialization cache for MLLogisticRegressionClassifier.Classifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLogisticRegressionClassifier.Classifier);
  }

  return result;
}

uint64_t type metadata completion function for MLLogisticRegressionClassifier.Classifier(uint64_t a1)
{
  v3[0] = &unk_342480;
  v3[1] = &value witness table for Builtin.BridgeObject + 64;
  v3[2] = &unk_342498;
  v3[3] = &unk_3424B0;
  v3[4] = &unk_3424C8;
  result = type metadata accessor for BaseLogisticRegressionClassifier(319);
  if (v2 <= 0x3F)
  {
    v3[5] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 6, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.Classifier.init(trainingLabelsColumn:validationLabelsColumn:annotationColumnName:featureColumnNames:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v39 = a4;
  v40 = a3;
  v8 = v6;
  v35 = v6;
  v38 = a2;
  v37 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Double, Int>.Configuration);
  v36 = *(v32 - 8);
  v11 = *(v36 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v31 = &v29;
  v14 = alloca(v11);
  v15 = alloca(v11);
  *v8 = v40;
  v8[1] = v39;
  v8[2] = a5;
  v34 = v8 + 3;
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(a6, (v8 + 3));
  v8[15] = a5;
  v8[16] = 0xD000000000000013;
  v8[17] = "raining samples." + 0x8000000000000000;
  v40 = a6;
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(a6, v30);
  v16 = lazy protocol witness table accessor for type Double and conformance Double();
  v33 = a5;
  a5;
  v17 = v16;
  v18 = v32;
  LogisticRegressionClassifier.Configuration.init()(&type metadata for Double, &type metadata for Int, &protocol witness table for Double, v17, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int);
  LogisticRegressionClassifier.Configuration.maximumIterations.setter(*&v30[0], v18);
  LogisticRegressionClassifier.Configuration.l1Penalty.setter(v18, v30[5]);
  LogisticRegressionClassifier.Configuration.l2Penalty.setter(v18, v30[6]);
  LogisticRegressionClassifier.Configuration.stepSize.setter(v18, v30[7]);
  LogisticRegressionClassifier.Configuration.convergenceThreshold.setter(v18, v30[8]);
  outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v30);
  v19 = v31;
  (*(v36 + 16))(v31, &v29, v18);
  v20 = v35 + *(type metadata accessor for MLLogisticRegressionClassifier.Classifier(0) + 36);
  BaseLogisticRegressionClassifier.init(configuration:)(v19);
  v21 = static Labels.collected(from:_:)(v37, v38);
  if (v7)
  {
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v40);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v38, &demangling cache variable for type metadata for AnyColumn?);
    v23 = type metadata accessor for AnyColumn(0);
    (*(*(v23 - 8) + 8))(v37, v23);
    (*(v36 + 8))(&v29, v18);
    v24 = v33;
    v33;
    v39;
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v34);
    v24;
    v25 = type metadata accessor for BaseLogisticRegressionClassifier(0);
    return (*(*(v25 - 8) + 8))(v20, v25);
  }

  else
  {
    v27 = v22;
    v39 = v21;
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v40);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v38, &demangling cache variable for type metadata for AnyColumn?);
    v28 = type metadata accessor for AnyColumn(0);
    (*(*(v28 - 8) + 8))(v37, v28);
    (*(v36 + 8))(&v29, v18);
    result = v35;
    *(v35 + 104) = v39;
    *(result + 112) = v27 & 1;
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.Classifier.fitted(to:validateOn:eventHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = v5;
  v68 = a4;
  v69 = a3;
  v61 = a2;
  v88 = a1;
  v67 = v4;
  v64 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  v63 = *(v64 - 8);
  v7 = *(v63 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v70 = v59;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v71 = v59;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v62 = v59;
  v79 = type metadata accessor for DataFrame(0);
  v77 = *(v79 - 8);
  v15 = *(v77 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v85 = v59;
  v65 = type metadata accessor for AnyColumn(0);
  v76 = *(v65 - 8);
  v18 = *(v76 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v66 = v59;
  v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v21 = *(v80 - 8);
  v22 = *(v21 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v81 = v59;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v86 = v59;
  v75 = v6;
  v27 = v6[2];
  v60 = v88;
  v27;
  v28 = v87;
  ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(closure #1 in FeatureVectorizer.fitted(to:)partial apply, v59, v27);
  result = v27;
  if (!v28)
  {
    v82 = v21;
    specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v88, 1u, ML16ColumnDescriptorVsAE_pTg5, 0xD000000000000013, ("raining samples." + 0x8000000000000000));
    v87 = 0;
    v72 = "raining samples." + 0x8000000000000000;
    v83 = ML16ColumnDescriptorVsAE_pTg5;
    v31 = v75[13];
    v32 = *(v75 + 112);
    v33 = v75[1];
    v34 = v66;
    v74 = *v75;
    v73 = v33;
    DataFrame.subscript.getter(v74, v33);
    v78 = v31;
    v84 = v32;
    v88 = Labels.encodeAnnotations(_:)(v34, v31, v32);
    v76 = *(v76 + 8);
    (v76)(v34, v65);
    v35 = v62;
    outlined init with copy of DataFrame?(v61, v62);
    v36 = v79;
    if (__swift_getEnumTagSinglePayload(v35, 1, v79) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for DataFrame?);
      v37 = *(v78 + 16);
      v38 = v75 + *(type metadata accessor for MLLogisticRegressionClassifier.Classifier(0) + 36);
      v39 = v86;
      v40 = v88;
      v41 = v87;
      BaseLogisticRegressionClassifier.fitted(features:annotations:classCount:eventHandler:)(v86, v88, v37, v69, v68);
      (*(v82 + 8))(v39, v80);
      v40;
      v42 = v67;
      if (v41)
      {
        return v83;
      }

      v48 = v70;
    }

    else
    {
      v43 = v85;
      v44 = v36;
      v45 = v77;
      (*(v77 + 32))(v85, v35, v44);
      v46 = v83;
      v47 = v87;
      specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v43, 1u, v83, 0xD000000000000013, v72);
      v42 = v67;
      if (v47)
      {
        v46;
        v88;
        (*(v45 + 8))(v85, v79);
        return (*(v82 + 8))(v86, v80);
      }

      v49 = v66;
      DataFrame.subscript.getter(v74, v73);
      v50 = v78;
      v87 = Labels.encodeAnnotations(_:)(v49, v78, v84);
      (v76)(v49, v65);
      v51 = *(v50 + 16);
      v52 = v75 + *(type metadata accessor for MLLogisticRegressionClassifier.Classifier(0) + 36);
      v53 = v87;
      BaseLogisticRegressionClassifier.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:classCount:eventHandler:)(v86, v88, v81, v87, v51, v69, v68);
      v53;
      v88;
      v54 = *(v82 + 8);
      v55 = v80;
      v54(v81, v80);
      (*(v77 + 8))(v85, v79);
      v54(v86, v55);
      v48 = v71;
    }

    v56 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
    (*(v63 + 32))(&v42[*(v56 + 24)], v48, v64);
    *v42 = v74;
    v57 = v73;
    *(v42 + 1) = v73;
    *(v42 + 2) = v83;
    *(v42 + 3) = 0xD000000000000013;
    *(v42 + 4) = v72;
    v58 = *(v56 + 28);
    LOBYTE(v56) = v78;
    *&v42[v58] = v78;
    v42[v58 + 8] = v84;
    v57;
    return v56;
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.Classifier.init(labels:annotationColumnName:featureColumnNames:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a3;
  v29 = a1;
  v9 = v5;
  *(&v26 + 1) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Double, Int>.Configuration);
  v27 = *(*(&v26 + 1) - 8);
  v10 = *(v27 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v28 = &v26;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v30 = &v26;
  v15 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  *v9 = v31;
  *(v9 + 8) = a4;
  *(v9 + 16) = a5;
  v26 = 0;
  LOWORD(v27) = 256;
  swift_storeEnumTagMultiPayload(&v26, v15, 0);
  a5;
  MLLogisticRegressionClassifier.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(&v26, 10, 1, 0.0, 0.01, 1.0, 0.01);
  *(v9 + 104) = v29;
  *(v9 + 112) = a2 & 1;
  *(v9 + 120) = a5;
  *(v9 + 128) = 0xD000000000000013;
  *(v9 + 136) = "raining samples." + 0x8000000000000000;
  v19 = lazy protocol witness table accessor for type Double and conformance Double();
  v20 = v30;
  LogisticRegressionClassifier.Configuration.init()(&type metadata for Double, &type metadata for Int, &protocol witness table for Double, v19, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int);
  v21 = v28;
  v22 = *(&v26 + 1);
  v23 = v27;
  (*(v27 + 16))(v28, v20, *(&v26 + 1));
  v24 = *(type metadata accessor for MLLogisticRegressionClassifier.Classifier(0) + 36);
  BaseLogisticRegressionClassifier.init(configuration:)(v21);
  return (*(v23 + 8))(v20, v22);
}

uint64_t MLLogisticRegressionClassifier.Classifier.annotationColumnID.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<String, Int>);
  v2;
  return ColumnID.init(_:_:)(v1, v2, v3);
}

uint64_t MLLogisticRegressionClassifier.Classifier.annotationColumnID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Either<String, Int>>);
  v3 = ColumnID.name.getter(v2);
  v5 = v4;
  (*(*(v2 - 8) + 8))(a1, v2);
  result = v1[1];
  *v1 = v3;
  v1[1] = v5;
  return result;
}

void (*protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance MLLogisticRegressionClassifier.Classifier(void *a1))(uint64_t **a1, char a2)
{
  v2 = malloc(0x28uLL);
  *a1 = v2;
  *v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Either<String, Int>>);
  v2[1] = v3;
  v4 = *(v3 - 8);
  v2[2] = v4;
  v5 = *(v4 + 64);
  v2[3] = malloc(v5);
  v2[4] = malloc(v5);
  MLLogisticRegressionClassifier.Classifier.annotationColumnID.getter();
  return protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance MLLogisticRegressionClassifier.Classifier;
}

void protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance MLLogisticRegressionClassifier.Classifier(uint64_t **a1, char a2)
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
    MLLogisticRegressionClassifier.Classifier.annotationColumnID.setter(v3);
    (*(v5 + 8))(v4, v8);
  }

  else
  {
    v7 = *v2;
    MLLogisticRegressionClassifier.Classifier.annotationColumnID.setter((*a1)[4]);
  }

  free(v4);
  free(v3);
  free(v2);
}

uint64_t MLLogisticRegressionClassifier.Classifier.encode(_:to:)(uint64_t a1, uint64_t a2)
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
    v9 = *(type metadata accessor for MLLogisticRegressionClassifier.Model(0) + 24) + v15;
    v17 = *(a2 + 24);
    v16 = *(a2 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
    v10 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
    v11 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseLogisticRegressionClassifierModel and conformance BaseLogisticRegressionClassifierModel, &type metadata accessor for BaseLogisticRegressionClassifierModel, &protocol conformance descriptor for BaseLogisticRegressionClassifierModel);
    return dispatch thunk of EstimatorEncoder.encode<A>(_:)(v9, v10, v11, v17, v16, v12, v13, *(&v13 + 1), v14);
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.Classifier.decode(from:)(uint64_t a1)
{
  v29 = v2;
  v22 = v3;
  v21 = v1;
  v26 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  v23 = *(v26 - 8);
  v4 = *(v23 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v27 = v20;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
  v8 = *(a1 + 24);
  v30 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v9 = lazy protocol witness table accessor for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer(&lazy protocol witness table cache variable for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer, &protocol conformance descriptor for FeatureVectorizer<A>.Transformer);
  v10 = v29;
  result = dispatch thunk of EstimatorDecoder.decode<A>(_:)(v7, v7, v9, v8, v30);
  if (!v10)
  {
    v29 = v20[1];
    v24 = v20[2];
    v30 = v20[3];
    v12 = *(a1 + 24);
    v28 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v12);
    v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseLogisticRegressionClassifierModel and conformance BaseLogisticRegressionClassifierModel, &type metadata accessor for BaseLogisticRegressionClassifierModel, &protocol conformance descriptor for BaseLogisticRegressionClassifierModel);
    dispatch thunk of EstimatorDecoder.decode<A>(_:)(v26, v26, v13, v12, v28);
    v14 = v22;
    v28 = *v22;
    v25 = v22[1];
    v15 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
    v16 = v21;
    (*(v23 + 32))(v21 + *(v15 + 24), v27, v26);
    v17 = v14[13];
    v18 = *(v14 + 112);
    *v16 = v28;
    LOBYTE(v14) = v25;
    v16[1] = v25;
    v16[2] = v29;
    v16[3] = v24;
    v16[4] = v30;
    v19 = *(v15 + 28);
    *(v16 + v19) = v17;
    *(v16 + v19 + 8) = v18;
    v17;
    return v14;
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.Classifier.makeTransformer()()
{
  v2 = v0;
  v12 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  v13 = *(v12 - 8);
  v3 = *(v13 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v14 = *v1;
  v6 = v1[1];
  v7 = v1[13];
  v16 = *(v1 + 112);
  v15 = *(v7 + 16);
  v8 = v1 + *(type metadata accessor for MLLogisticRegressionClassifier.Classifier(0) + 36);
  v6;
  BaseLogisticRegressionClassifier.makeTransformer(classCount:)(v15);
  *v2 = v14;
  *(v2 + 8) = v6;
  v9 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  (*(v13 + 32))(v2 + *(v9 + 24), &v12, v12);
  v10 = *(v9 + 28);
  *(v2 + v10) = v7;
  *(v2 + v10 + 8) = v16;
  return v7;
}

uint64_t MLLogisticRegressionClassifier.Classifier.update(_:with:eventHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = v5;
  v42 = a4;
  v44 = a3;
  v6 = a2;
  v7 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v41 = *(v43 - 8);
  v8 = *(v41 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v48 = &v41;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v51 = &v41;
  v55 = type metadata accessor for AnyColumn(0);
  v50 = *(v55 - 8);
  v14 = *(v50 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v45 = &v41;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v57 = &v41;
  ML16ColumnDescriptorVsAE_pTg5 = a1[2];
  if (ML16ColumnDescriptorVsAE_pTg5)
  {
    v58 = v4;
    v56 = a1[3];
    v49 = a1[4];
  }

  else
  {
    v56 = &v41;
    v28 = v54[2];
    v29 = alloca(24);
    v30 = alloca(32);
    v53 = a2;
    v43 = a2;
    v28;
    ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(partial apply for closure #1 in FeatureVectorizer.fitted(to:), &v41, v28);
    result = v28;
    v58 = v4;
    if (v4)
    {
      return result;
    }

    v6 = v53;
    a1[2] = ML16ColumnDescriptorVsAE_pTg5;
    v56 = 0xD000000000000013;
    a1[3] = 0xD000000000000013;
    v49 = "raining samples." + 0x8000000000000000;
    a1[4] = "raining samples." + 0x8000000000000000;
  }

  v46 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v20 = *(v46 + 28);
  v52 = *(a1 + v20);
  if (*(v52 + 16))
  {
    LOBYTE(v57) = *(a1 + v20 + 8);
  }

  else
  {
    v47 = a1;
    v31 = *v54;
    v32 = v54[1];
    v33 = v57;
    v53 = v6;
    DataFrame.subscript.getter(v31, v32);
    v34 = v51;
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v55);
    v35 = v58;
    v36 = static Labels.collected(from:_:)(v33, v34);
    v58 = v35;
    v38 = v34;
    if (v35)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v34, &demangling cache variable for type metadata for AnyColumn?);
      return (*(v50 + 8))(v57, v55);
    }

    v39 = v37;
    v51 = v36;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v38, &demangling cache variable for type metadata for AnyColumn?);
    (*(v50 + 8))(v57, v55);
    v52;
    v7 = v47;
    v40 = v51;
    *(v47 + v20) = v51;
    LOBYTE(v57) = v39;
    *(v7 + v20 + 8) = v39 & 1;
    v52 = v40;
    v6 = v53;
  }

  v21 = v58;
  result = specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v6, 1u, ML16ColumnDescriptorVsAE_pTg5, v56, v49);
  if (!v21)
  {
    v23 = v45;
    DataFrame.subscript.getter(*v54, v54[1]);
    v58 = Labels.encodeAnnotations(_:)(v23, v52, v57 & 1);
    (*(v50 + 8))(v23, v55);
    v24 = v54 + *(type metadata accessor for MLLogisticRegressionClassifier.Classifier(0) + 36);
    v25 = v7 + *(v46 + 24);
    v26 = v48;
    v27 = v58;
    BaseLogisticRegressionClassifier.update(_:features:annotations:eventHandler:)(v25, v48, v58, v44, v42);
    (*(v41 + 8))(v26, v43);
    return v27;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation3URLVG_18CreateMLComponents16AnnotatedFeatureVyAHSSGs5NeverOTg503_s8f24ML17MLSoundClassifierV16i143ExtractorC12filesByLabel7optionsAESDySSSay10Foundation3URLVGG_AE13ConfigurationVtKc33_EF88DE97863F019753745A6AAFDAF1B0LlfcSay0A12MLComponents09H29E0VyAJSSGGSS_AKtXEfU_AsJXEfU_SSTf1cn_n(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v21 = a2;
  v22 = type metadata accessor for URL(0);
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v23 = &v19;
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v25 = *(v24 - 8);
  v8 = *(v25 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v32 = a1;
  v11 = a1[2];
  if (v11)
  {
    v30 = v3;
    v31 = _swiftEmptyArrayStorage;
    v26 = v11;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v31;
    v13 = v32 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v27 = *(v4 + 16);
    v28 = *(v4 + 72);
    v29 = &v19;
    do
    {
      v32 = v12;
      v14 = v23;
      v15 = v22;
      v27(v23, v13, v22);
      v20[0] = v21;
      v20[1] = v33;
      v33;
      v16 = v14;
      v12 = v32;
      AnnotatedFeature.init(feature:annotation:)(v16, v20, v15, &type metadata for String);
      v31 = v12;
      v17 = v12[2];
      if (v12[3] >> 1 <= v17)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12[3] >= 2uLL, v17 + 1, 1);
        v12 = v31;
      }

      v12[2] = v17 + 1;
      (*(v25 + 32))(v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v17, v29, v24);
      v13 += v28;
      --v26;
    }

    while (v26);
    v33;
  }

  else
  {
    v33;
    return _swiftEmptyArrayStorage;
  }

  return v12;
}

void *specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v2 = v1;
  specialized _NativeDictionary.makeIterator()(a1);
  v35 = v29;
  v3 = v30;
  v36 = (v28 + 64) >> 6;
  a1;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    v31 = v4;
    if (v3)
    {
      v5 = v35;
      goto LABEL_20;
    }

    v6 = v35 + 1;
    if (__OFADD__(1, v35))
    {
      BUG();
    }

    if (v6 >= v36)
    {
      goto LABEL_37;
    }

    v3 = *(v27 + 8 * v6);
    if (v3)
    {
LABEL_7:
      v5 = v6;
      goto LABEL_20;
    }

    v5 = v35 + 2;
    if (v35 + 2 >= v36)
    {
      goto LABEL_37;
    }

    v3 = *(v27 + 8 * v6 + 8);
    if (!v3)
    {
      v5 = v35 + 3;
      if (v35 + 3 >= v36)
      {
        goto LABEL_37;
      }

      v3 = *(v27 + 8 * v6 + 16);
      if (!v3)
      {
        v5 = v35 + 4;
        if (v35 + 4 >= v36)
        {
          goto LABEL_37;
        }

        v3 = *(v27 + 8 * v6 + 24);
        if (!v3)
        {
          v5 = v35 + 5;
          if (v35 + 5 >= v36)
          {
            goto LABEL_37;
          }

          v3 = *(v27 + 8 * v6 + 32);
          if (!v3)
          {
            v5 = v35 + 6;
            if (v35 + 6 >= v36)
            {
              goto LABEL_37;
            }

            v3 = *(v27 + 8 * v6 + 40);
            if (!v3)
            {
              v5 = v35 + 7;
              if (v35 + 7 >= v36)
              {
                goto LABEL_37;
              }

              v3 = *(v27 + 8 * v6 + 48);
              if (!v3)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_20:
    v34 = v3;
    _BitScanForward64(&v7, v3);
    v35 = v5;
    v8 = v7 | (v5 << 6);
    v9 = *(*(v26 + 56) + 8 * v8);
    v8 *= 16;
    v10 = *(v26 + 48);
    v11 = *(v10 + v8);
    v12 = *(v10 + v8 + 8);
    swift_bridgeObjectRetain_n(v12, 2);
    v9;
    MLComponents16AnnotatedFeatureVyAHSSGs5NeverOTg503_s8f24ML17MLSoundClassifierV16i143ExtractorC12filesByLabel7optionsAESDySSSay10Foundation3URLVGG_AE13ConfigurationVtKc33_EF88DE97863F019753745A6AAFDAF1B0LlfcSay0A12MLComponents09H29E0VyAJSSGGSS_AKtXEfU_AsJXEfU_SSTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation3URLVG_18CreateMLComponents16AnnotatedFeatureVyAHSSGs5NeverOTg503_s8f24ML17MLSoundClassifierV16i143ExtractorC12filesByLabel7optionsAESDySSSay10Foundation3URLVGG_AE13ConfigurationVtKc33_EF88DE97863F019753745A6AAFDAF1B0LlfcSay0A12MLComponents09H29E0VyAJSSGGSS_AKtXEfU_AsJXEfU_SSTf1cn_n(v9, v11, v12);
    v33 = v2;
    v9;
    v12;
    v32 = MLComponents16AnnotatedFeatureVyAHSSGs5NeverOTg503_s8f24ML17MLSoundClassifierV16i143ExtractorC12filesByLabel7optionsAESDySSSay10Foundation3URLVGG_AE13ConfigurationVtKc33_EF88DE97863F019753745A6AAFDAF1B0LlfcSay0A12MLComponents09H29E0VyAJSSGGSS_AKtXEfU_AsJXEfU_SSTf1cn_n;
    v14 = MLComponents16AnnotatedFeatureVyAHSSGs5NeverOTg503_s8f24ML17MLSoundClassifierV16i143ExtractorC12filesByLabel7optionsAESDySSSay10Foundation3URLVGG_AE13ConfigurationVtKc33_EF88DE97863F019753745A6AAFDAF1B0LlfcSay0A12MLComponents09H29E0VyAJSSGGSS_AKtXEfU_AsJXEfU_SSTf1cn_n[2];
    v4 = v31;
    v15 = *(v31 + 16);
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      BUG();
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v31);
    if (!isUniquelyReferenced_nonNull_native || *(v31 + 24) >> 1 < v16)
    {
      if (v15 > v16)
      {
        v16 = v15;
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v31);
    }

    if (v32[2])
    {
      v18 = v4[2];
      if ((v4[3] >> 1) - v18 < v14)
      {
        BUG();
      }

      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
      v20 = *(v19 - 8);
      v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      swift_arrayInitWithCopy(v4 + *(v20 + 72) * v18 + v21, v32 + v21, v14, v19);
      if (v14)
      {
        v22 = __OFADD__(v4[2], v14);
        v23 = v4[2] + v14;
        if (v22)
        {
          BUG();
        }

        v4[2] = v23;
      }
    }

    else if (v14)
    {
      BUG();
    }

    v3 = (v34 - 1) & v34;
    v32;
    v2 = v33;
  }

  v24 = v35 + 8;
  while (v24 < v36)
  {
    v3 = *(v27 + 8 * v24++);
    if (v3)
    {
      v6 = v24 - 1;
      goto LABEL_7;
    }
  }

LABEL_37:
  outlined consume of [String : [Double]].Iterator._Variant(v26);
  return v4;
}

{
  specialized _NativeDictionary.makeIterator()(a1);
  v1 = v40;
  v2 = v43;
  v58 = (v42 + 64) >> 6;
  v3 = v44;
  a1;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v3)
    {
      v5 = v2;
      goto LABEL_24;
    }

    v6 = v2 + 1;
    if (__OFADD__(1, v2))
    {
      BUG();
    }

    if (v6 >= v58)
    {
      goto LABEL_43;
    }

    v3 = *(v41 + 8 * v6);
    if (v3)
    {
      v5 = v2 + 1;
      goto LABEL_24;
    }

    v5 = v2 + 2;
    if (v2 + 2 >= v58)
    {
      goto LABEL_43;
    }

    v3 = *(v41 + 8 * v6 + 8);
    if (!v3)
    {
      v5 = v2 + 3;
      if (v2 + 3 >= v58)
      {
        goto LABEL_43;
      }

      v3 = *(v41 + 8 * v6 + 16);
      if (!v3)
      {
        v5 = v2 + 4;
        if (v2 + 4 >= v58)
        {
          goto LABEL_43;
        }

        v3 = *(v41 + 8 * v6 + 24);
        if (!v3)
        {
          v5 = v2 + 5;
          if (v2 + 5 >= v58)
          {
            goto LABEL_43;
          }

          v3 = *(v41 + 8 * v6 + 32);
          if (!v3)
          {
            v5 = v2 + 6;
            if (v2 + 6 >= v58)
            {
              goto LABEL_43;
            }

            v3 = *(v41 + 8 * v6 + 40);
            if (!v3)
            {
              v5 = v2 + 7;
              if (v2 + 7 >= v58)
              {
                goto LABEL_43;
              }

              v3 = *(v41 + 8 * v6 + 48);
              if (!v3)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_24:
    v52 = v3;
    _BitScanForward64(&v8, v3);
    v51 = v5;
    v9 = v8 | (v5 << 6);
    v10 = *(*(v1 + 56) + 8 * v9);
    v11 = *(v10 + 16);
    v12 = _swiftEmptyArrayStorage;
    if (v11)
    {
      v53 = v4;
      v13 = 16 * v9;
      v14 = *(v1 + 48);
      v48 = *(v14 + v13);
      v15 = *(v14 + v13 + 8);
      swift_bridgeObjectRetain_n(v15, 2);
      v10;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
      v16 = v15;
      v17 = _swiftEmptyArrayStorage;
      v54 = v10;
      v18 = (v10 + 40);
      v49 = v16;
      do
      {
        v55 = v17;
        v45 = v11;
        v46 = *(v18 - 1);
        v19 = *v18;
        v57 = v17;
        v20 = v17[2];
        v50 = v17[3];
        v16;
        v47 = v19;
        v21 = v19;
        v22 = v20 + 1;
        v21;
        v17 = v55;
        if (v50 >> 1 <= v20)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v50 >= 2, v22, 1);
          v17 = v57;
        }

        v17[2] = v22;
        v23 = 4 * v20;
        v17[v23 + 4] = v46;
        v17[v23 + 5] = v47;
        v17[v23 + 6] = v48;
        LOBYTE(v16) = v49;
        v17[v23 + 7] = v49;
        v18 += 2;
        v11 = v45 - 1;
      }

      while (v45 != 1);
      v24 = v17;
      v54;
      swift_bridgeObjectRelease_n(v49, 2);
      v12 = v24;
      v4 = v53;
    }

    v25 = v12[2];
    v26 = v4[2];
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      BUG();
    }

    v56 = v12;
    v28 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4);
    v30 = v28;
    if (!isUniquelyReferenced_nonNull_native || *(v28 + 24) >> 1 < v27)
    {
      if (v26 > v27)
      {
        v27 = v26;
      }

      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v27, 1, v28);
    }

    v31 = v56;
    if (v56[2])
    {
      v32 = v30[2];
      if ((v30[3] >> 1) - v32 < v25)
      {
        BUG();
      }

      v33 = v30;
      v34 = &v30[4 * v32 + 4];
      v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (predicted: String, label: String));
      swift_arrayInitWithCopy(v34, v56 + 4, v25, v35);
      v31 = v56;
      if (v25)
      {
        v36 = __OFADD__(v33[2], v25);
        v37 = v33[2] + v25;
        if (v36)
        {
          BUG();
        }

        v33[2] = v37;
      }
    }

    else
    {
      v33 = v30;
      if (v25)
      {
        BUG();
      }
    }

    v3 = (v52 - 1) & v52;
    v31;
    v2 = v51;
    v4 = v33;
    v1 = v40;
  }

  v7 = v2 + 8;
  while (v7 < v58)
  {
    v3 = *(v41 + 8 * v7++);
    if (v3)
    {
      v5 = v7 - 1;
      goto LABEL_24;
    }
  }

LABEL_43:
  v38 = v4;
  outlined consume of [String : [String]].Iterator._Variant(v1);
  return v38;
}

{
  specialized _NativeDictionary.makeIterator()(a1);
  v1 = v25;
  v2 = v26;
  v30 = (v24 + 64) >> 6;
  a1;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v2)
    {
      v4 = v1;
      goto LABEL_24;
    }

    v5 = v1 + 1;
    if (__OFADD__(1, v1))
    {
      BUG();
    }

    if (v5 >= v30)
    {
      goto LABEL_37;
    }

    v2 = *(v23 + 8 * v5);
    if (v2)
    {
      v4 = v1 + 1;
      goto LABEL_24;
    }

    v4 = v1 + 2;
    if (v1 + 2 >= v30)
    {
      goto LABEL_37;
    }

    v2 = *(v23 + 8 * v5 + 8);
    if (!v2)
    {
      v4 = v1 + 3;
      if (v1 + 3 >= v30)
      {
        goto LABEL_37;
      }

      v2 = *(v23 + 8 * v5 + 16);
      if (!v2)
      {
        v4 = v1 + 4;
        if (v1 + 4 >= v30)
        {
          goto LABEL_37;
        }

        v2 = *(v23 + 8 * v5 + 24);
        if (!v2)
        {
          v4 = v1 + 5;
          if (v1 + 5 >= v30)
          {
            goto LABEL_37;
          }

          v2 = *(v23 + 8 * v5 + 32);
          if (!v2)
          {
            v4 = v1 + 6;
            if (v1 + 6 >= v30)
            {
              goto LABEL_37;
            }

            v2 = *(v23 + 8 * v5 + 40);
            if (!v2)
            {
              v4 = v1 + 7;
              if (v1 + 7 >= v30)
              {
                goto LABEL_37;
              }

              v2 = *(v23 + 8 * v5 + 48);
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
    v27 = v2;
    _BitScanForward64(&v7, v2);
    v8 = *(*(v22 + 56) + ((v4 << 9) | (8 * v7)));
    v9 = *(v8 + 16);
    v10 = v3[2];
    v11 = v9 + v10;
    if (__OFADD__(v9, v10))
    {
      BUG();
    }

    v28 = v4;
    v29 = *(*(v22 + 56) + ((v4 << 9) | (8 * v7)));
    v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v3);
    if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v11)
    {
      if (v10 > v11)
      {
        v11 = v10;
      }

      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
    }

    if (*(v8 + 16))
    {
      v13 = v3[2];
      v14 = v3;
      v15 = (v3[3] >> 1) - v13;
      v16 = type metadata accessor for URL(0);
      if (v15 < v9)
      {
        BUG();
      }

      v17 = *(v16 - 8);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      swift_arrayInitWithCopy(v14 + *(v17 + 72) * v13 + v18, v8 + v18, v9, v16);
      v3 = v14;
      if (v9)
      {
        v19 = __OFADD__(v14[2], v9);
        v20 = v14[2] + v9;
        if (v19)
        {
          BUG();
        }

        v14[2] = v20;
      }
    }

    else if (v9)
    {
      BUG();
    }

    v2 = (v27 - 1) & v27;
    v8;
    v1 = v28;
  }

  v6 = v1 + 8;
  while (v6 < v30)
  {
    v2 = *(v23 + 8 * v6++);
    if (v2)
    {
      v4 = v6 - 1;
      goto LABEL_24;
    }
  }

LABEL_37:
  outlined consume of [String : [Double]].Iterator._Variant(v22);
  return v3;
}

uint64_t MLSoundClassifier.FeatureExtractor.Configuration.init(parameters:fileCount:)(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v3 = v2;
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v15 = *(a1 + *(v4 + 24));
  v16 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  outlined init with copy of Any?(a1 + *(v4 + 28), v9);
  if (!v10)
  {
    outlined destroy of Any?(v9);
    goto LABEL_5;
  }

  if (!swift_dynamicCast(&v11, v9, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_5:
    v6 = 1;
    v5 = 1;
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v11;
  v6 = v12;
  v7 = v13;
LABEL_6:
  outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLSoundClassifier.ModelParameters);
  v7;
  *v3 = v15;
  *(v3 + 8) = v16;
  *(v3 + 16) = 0;
  result = v14;
  *(v3 + 24) = v14;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  return result;
}

void *static MLSoundClassifier.FeatureExtractor.extractFeatures(from:options:)(uint64_t a1, __int128 *a2)
{
  v14 = v3;
  v4 = *a2;
  v5 = a2[1];
  *(v13 + 9) = *(a2 + 25);
  v13[0] = v5;
  v12 = v4;
  a1;
  v6 = specialized Sequence.flatMap<A>(_:)(a1);
  a1;
  swift_allocObject(v3, 88, 7);
  specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(v6, &v12);
  if (!v2)
  {
    v6 = MLSoundClassifier.FeatureExtractor.extractFeatures()(v6, &v12, v7, v8, v9, v10);
  }

  return v6;
}

uint64_t MLSoundClassifier.FeatureExtractor.extractFeatures()()
{
  v145 = v0;
  v2 = v1->i64[0];
  v144 = v1;
  v127 = v2;
  v3 = 0;
  v106 = type metadata accessor for URL(0);
  v107 = *(v106 - 8);
  v4 = v107[8];
  v5 = alloca(v4);
  v6 = alloca(v4);
  v108 = v105;
  v139 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v137 = *(v139 - 8);
  v7 = *(v137 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v118 = v105;
  v120 = v7;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v138 = v105;
  v132 = type metadata accessor for Date(0);
  v133 = *(v132 - 8);
  v12 = *(v133 + 8);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v134 = v105;
  v142 = type metadata accessor for _TablePrinter(0);
  v111 = *(v142 - 8);
  v15 = *(v111 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v119 = v105;
  v121 = v15;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v135 = v105;
  v20 = v1[4].i64[0];
  v21 = *(v20 + 16);
  v22 = objc_opt_self(NSProgress);
  v23 = [v22 progressWithTotalUnitCount:v21];
  v24 = v23;
  aBlock.i64[0] = 0;
  v130 = v24;
  aBlock.i64[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  aBlock.i64[1];
  aBlock.i64[0] = 0x69737365636F7250;
  aBlock.i64[1] = 0xEB0000000020676ELL;
  v122 = v20;
  v105[1] = *(v20 + 16);
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v25._object;
  String.append(_:)(v25);
  object;
  v27._countAndFlagsBits = 0x73656C696620;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v29 = aBlock.u64[1];
  v28 = aBlock.i64[0];
  v30 = static os_log_type_t.info.getter();
  log(_:type:)(__PAIR128__(v29, v28), v30);
  v29;
  v131 = swift_allocObject(&unk_3919F8, 24, 7);
  *(v131 + 16) = 0;
  v31 = objc_allocWithZone(NSOperationQueue);
  v32 = [v31 init];
  v33 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSOperationQueue, NSOperationQueue_ptr);
  v34 = static Array._allocateBufferUninitialized(minimumCapacity:)(8, v33);
  v35 = (v34 & 0xFFFFFFFFFFFFF8);
  v35[2] = 8;
  v35[4] = v32;
  v35[5] = v32;
  v35[6] = v32;
  v35[7] = v32;
  v35[8] = v32;
  v35[9] = v32;
  v35[10] = v32;
  v35[11] = v32;
  v140 = swift_allocObject(&unk_391A20, 24, 7);
  v143 = v144[3].i64[0];
  LOBYTE(v128) = v144[3].i8[8];
  v27._countAndFlagsBits = v32;
  v36 = v34;
  v37 = v27._countAndFlagsBits;
  v38 = v37;
  v39 = v38;
  v40 = v39;
  aBlock = v144[1];
  v124 = v144[2];
  v125 = v143;
  LOBYTE(v126) = v128;
  v41 = v40;
  v42 = v41;
  v42;
  v43 = static MLSoundClassifier.FeatureExtractor.getFeaturePrintRequest(options:)(&aBlock);
  v44 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SNCreateFeaturePrintRequest, SNCreateFeaturePrintRequest_ptr);
  v45 = static Array._allocateBufferUninitialized(minimumCapacity:)(8, v44);
  v46 = (v45 & 0xFFFFFFFFFFFFF8);
  v46[2] = 8;
  v46[4] = v43;
  v46[5] = v43;
  v46[6] = v43;
  v46[7] = v43;
  v46[8] = v43;
  v46[9] = v43;
  v46[10] = v43;
  v46[11] = v43;
  *(v140 + 16) = v45;
  v47 = v144[1];
  v117 = v144[2];
  v136 = v144[3].i64[0];
  LOBYTE(v141) = v144[3].i8[8];
  v116 = v47;
  v48 = *v47.i64;
  *&v129 = v48;
  v49 = v43;
  v50 = v49;
  v51 = v50;
  v52 = v51;
  v53 = v52;
  v54 = v53;
  v54;
  do
  {
    v55 = objc_allocWithZone(NSOperationQueue);
    v56 = [v55 init];
    if ((swift_isUniquelyReferenced_nonNull_bridgeObject(v36) & ((v36 & 0x4000000000000001) == 0)) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
    }

    if (v3 >= *(&dword_10 + (v36 & 0xFFFFFFFFFFFFF8)))
    {
      BUG();
    }

    v57 = *(&stru_20.cmd + 8 * v3 + (v36 & 0xFFFFFFFFFFFFF8));
    *(&stru_20.cmd + 8 * v3 + (v36 & 0xFFFFFFFFFFFFF8)) = v56;

    if (v3 >= *(&dword_10 + (v36 & 0xFFFFFFFFFFFFF8)))
    {
      BUG();
    }

    v128 = v36 & 0xFFFFFFFFFFFFF8;
    v143 = v36;
    [*(v36 + 8 * v3 + 32) setMaxConcurrentOperationCount:1];
    aBlock = v116;
    v124 = v117;
    v125 = v136;
    LOBYTE(v126) = v141;
    v58 = static MLSoundClassifier.FeatureExtractor.getFeaturePrintRequest(options:)(&aBlock);
    v59 = v140;
    v60 = *(v140 + 16);
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(v60);
    *(v59 + 16) = v60;
    if ((((v60 & 0x4000000000000001) == 0) & isUniquelyReferenced_nonNull_bridgeObject) == 0)
    {
      v60 = specialized _ArrayBuffer._consumeAndCreateNew()(v60);
      *(v59 + 16) = v60;
    }

    if (v3 >= *(&dword_10 + (v60 & 0xFFFFFFFFFFFFF8)))
    {
      BUG();
    }

    v62 = *(&stru_20.cmd + 8 * v3 + (v60 & 0xFFFFFFFFFFFFF8));
    *(&stru_20.cmd + 8 * v3 + (v60 & 0xFFFFFFFFFFFFF8)) = v58;

    if ((v60 & 0xC000000000000003) != 0)
    {
      v63 = specialized _ArrayBuffer._getElementSlowPath(_:)(v3, v60);
      v36 = v143;
    }

    else
    {
      v36 = v143;
      if (v3 >= *(&dword_10 + (v60 & 0xFFFFFFFFFFFFF8)))
      {
        BUG();
      }

      v63 = *(v60 + 8 * v3 + 32);
    }

    ++v3;
    [v63 setOverlapFactor:COERCE_DOUBLE(v129)];
  }

  while (v3 != 8);
  v64 = v135;
  v65 = v135 + *(v142 + 20);
  Date.init()(v63);
  *v64 = _mm_extract_epi64(_mm_load_si128(&v117), 1);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v66 = OS_os_log.init(subsystem:category:)(0xD000000000000022, "n" + 0x8000000000000000, 0x72705F656C626174, 0xED00007265746E69);
  v67 = v142;
  v68 = *(v142 + 24);
  v115 = v66;
  *(v64 + v68) = v66;
  v69 = *(v67 + 28);
  *(v64 + v69) = 0x73656C6946;
  *(v64 + v69 + 8) = 0xE500000000000000;
  v70 = v134;
  Date.init()(0xD000000000000022);
  (*(v133 + 5))(v65, v70, v132);
  _TablePrinter.beginTable()();
  _TablePrinter.printRow(currentFileIndex:)(0);
  v71 = swift_allocObject(&unk_391A48, 24, 7);
  v141 = v71;
  *(v71 + 16) = _swiftEmptyArrayStorage;
  v72 = *(v122 + 16);
  if (v72)
  {
    v129 = v144[5].i64[0];
    v73 = *(v137 + 80);
    v113 = ~v73;
    v74 = v122 + ((v73 + 32) & ~v73);
    v136 = *(v137 + 16);
    v132 = *(v137 + 72);
    v121 += 7;
    v112 = v73;
    v114 = v73 + 8;
    v120 += 7;
    v122;
    v142 = 0;
    v75 = v139;
    v76 = v138;
    do
    {
      v117.i64[0] = v72;
      v116.i64[0] = v74;
      (v136)(v76, v74, v75);
      v77 = v108;
      AnnotatedFeature.feature.getter(v75);
      v78 = alloca(32);
      v79 = alloca(32);
      v106 = v144;
      v107 = v77;
      v80 = v145;
      v81 = v75;
      v82 = specialized NSLocking.withLock<A>(_:)(partial apply for closure #1 in MLSoundClassifier.FeatureExtractor.isProcessed(url:));
      v145 = v80;
      (v107[1])(v77, v106);
      if (v82)
      {
        v76 = v138;
        (*(v137 + 8))(v138, v81);
        v75 = v81;
      }

      else
      {
        v83 = v142 % 8;
        if (v142 % 8 < 0)
        {
          BUG();
        }

        if (v83 >= *(v128 + 16))
        {
          BUG();
        }

        v133 = *(v143 + v83 + 4);
        v134 = v142 % 8;
        outlined init with copy of _TablePrinter(v135, v119);
        (v136)(v118, v138, v139);
        v84 = *(v111 + 80);
        v85 = ~*(v111 + 80) & (v84 + 48);
        v109 = (v85 + v121) & 0xFFFFFFFFFFFFFFF8;
        v110 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
        v86 = v113 & (v114 + v110);
        v87 = (v120 + v86) & 0xFFFFFFFFFFFFFFF8;
        v88 = swift_allocObject(&unk_391A70, v87 + 8, v112 | v84 | 7);
        *(v88 + 2) = v144;
        *(v88 + 3) = v141;
        *(v88 + 4) = v131;
        *(v88 + 5) = v130;
        outlined init with take of _TablePrinter(v119, &v88[v85]);
        *&v88[v109] = v140;
        *&v88[v110] = v134;
        (*(v137 + 32))(&v88[v86], v118, v139);
        *&v88[v87] = v127;
        v125 = partial apply for closure #1 in MLSoundClassifier.FeatureExtractor.extractFeatures();
        v126 = v88;
        aBlock.i64[0] = _NSConcreteStackBlock;
        aBlock.i64[1] = 1107296256;
        v124.i64[0] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v124.i64[1] = &block_descriptor_6;
        v89 = _Block_copy(&aBlock);
        v90 = v133;

        v130;

        v76 = v138;

        [v90 addOperationWithBlock:v89];
        _Block_release(v89);
        v91 = v90;
        v75 = v139;

        (*(v137 + 8))(v76, v75);
        if (__OFADD__(1, v142++))
        {
          BUG();
        }
      }

      v74 = v132 + v116.i64[0];
      v72 = v117.i64[0] - 1;
    }

    while (v117.i64[0] != 1);
    v122;
  }

  v93 = v145;
  v94 = v143;
  v95 = specialized Array._getCount()(v143);
  if (v95)
  {
    if (v95 <= 0)
    {
      BUG();
    }

    v96 = v95;
    v94;
    for (i = 0; i != v96; ++i)
    {
      v98 = *(v94 + 8 * i + 32);
      [v98 waitUntilAllOperationsAreFinished];
    }

    v145 = v93;
    v94;
  }

  else
  {
    v145 = v93;
  }

  v99 = v141;
  v100 = v141 + 16;
  static os_log_type_t.info.getter();
  v101 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v102 = swift_allocObject(v101, 72, 7);
  v102[2] = 1;
  v102[3] = 2;
  v102[7] = &type metadata for Int;
  v102[8] = &protocol witness table for Int;
  v102[4] = 3;
  os_log(_:dso:log:type:_:)("event: %lu", 10);

  v102;
  outlined destroy of MLActivityClassifier.ModelParameters(v135, type metadata accessor for _TablePrinter);
  swift_beginAccess(v100, &aBlock, 0, 0);
  v103 = *(v99 + 16);
  v103;

  v143;

  return v103;
}

id static MLSoundClassifier.FeatureExtractor.getFeaturePrintRequest(options:)(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == -1)
  {
    v2 = objc_allocWithZone(SNCreateFeaturePrintRequest);
  }

  else
  {
    seconds = *(a1 + 8);
    v2 = objc_allocWithZone(SNCreateFeaturePrintRequest);
    if (v1)
    {
      v3 = [v2 initWithFeaturePrintType:3];
      v9 = CMTime.init(seconds:preferredTimescale:)(seconds, 16000);
      LODWORD(v7) = v9.timescale;
      *&v9.timescale >>= 32;
      HIDWORD(v7) = v9.timescale;
      [v3 setWindowDuration:{*&v9.timescale, v9.epoch, v4, v5, v9.value, v7, v9.epoch, v9.value, v7, v9.epoch}];
      return v3;
    }
  }

  return [v2 init];
}

NSURL *closure #1 in trainWork #1 (_:annotatedFeature:) in MLSoundClassifier.FeatureExtractor.extractFeatures()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v47 = a6;
  v39 = a5;
  v45 = a4;
  v42 = a3;
  v52 = a2;
  v41 = type metadata accessor for URL(0);
  v40 = *(v41 - 8);
  v7 = *(v40 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v44 = &v38;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v43 = &v38;
  v12 = alloca(v7);
  v13 = alloca(v7);
  v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  AnnotatedFeature.feature.getter(v46);
  objc_allocWithZone(SNAudioFileAnalyzer);
  v14 = @nonobjc SNAudioFileAnalyzer.init(url:)(&v38);
  v53 = v6;
  if (v6)
  {
    v34 = 123;
    v35 = v53;
    goto LABEL_12;
  }

  v15 = v14;
  v16 = objc_allocWithZone(SNResultsCollector);
  v17 = [v16 init];
  v56[0] = 0;
  v18 = [v15 addRequest:v52 withObserver:v17 error:v56];
  v19 = v56[0];
  if (!v18)
  {
    v36 = v56[0];
    v37 = _convertNSErrorToError(_:)(v19);

    swift_willThrow(v36, "addRequest:withObserver:error:");
    v34 = 125;
    v35 = v37;
LABEL_12:
    swift_unexpectedError(v35, "CreateML/MLSoundClassifier.FeatureExtractor.swift", 49, 1, v34);
    BUG();
  }

  v56[0];
  v49 = v15;
  [v15 analyze];
  v20 = v42;
  v48 = *(v42 + 32);
  v50 = v17;
  v21 = static MLSoundClassifier.FeatureExtractor.convertResultsToShapedArrays(resultsCollector:options:)(v17);
  v51 = *(v20 + 80);
  [v51 lock];
  v52 = &v38;
  v22 = alloca(24);
  v23 = alloca(32);
  v40 = a1;
  v24 = v53;
  MLComponents16AnnotatedFeatureVyAISSGs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay6CoreML13MLShapedArrayVySfGG_18CreateMLComponents16AnnotatedFeatureVyAISSGs5NeverOTg5(partial apply for closure #1 in closure #1 in trainWork #1 (_:annotatedFeature:) in MLSoundClassifier.FeatureExtractor.extractFeatures(), &v38, v21);
  v53 = v24;
  v21;
  swift_beginAccess(v45, v56, 1, 0);
  specialized Array.append<A>(contentsOf:)(MLComponents16AnnotatedFeatureVyAISSGs5NeverOTg5);
  v26 = v44;
  AnnotatedFeature.feature.getter(v46);
  swift_beginAccess(v20 + 72, v55, 33, 0);
  v27 = v43;
  specialized Set._Variant.insert(_:)(v43, v26);
  swift_endAccess(v55);
  (*(v40 + 8))(v27, v41);
  v28 = v39;
  swift_beginAccess(v39, v55, 1, 0);
  if (__OFADD__(1, *v28))
  {
    BUG();
  }

  ++*v28;
  v29 = v47;
  v30 = [v47 completedUnitCount];
  v31 = __OFADD__(1, v30);
  v32 = v30 + 1;
  if (v31)
  {
    BUG();
  }

  [v29 setCompletedUnitCount:v32];
  swift_beginAccess(v28, v54, 0, 0);
  if (__OFADD__(*v28, v48))
  {
    BUG();
  }

  _TablePrinter.printRow(currentFileIndex:)(*v28 + v48);
  [v51 unlock];

  return __stack_chk_guard;
}

void *static MLSoundClassifier.FeatureExtractor.convertResultsToShapedArrays(resultsCollector:options:)(id a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v35 = *(v34 - 8);
  v1 = *(v35 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v33 = v26;
  v4 = alloca(v1);
  v5 = alloca(v1);
  v36 = v26;
  v6 = [a1 results];
  v7 = v6;
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v7, &type metadata for Any + 8);

  v9 = *(v8 + 16);
  v8;
  v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0, _swiftEmptyArrayStorage);
  v10 = [a1 results];
  v11 = v10;
  v31 = &type metadata for Any + 8;
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v11, &type metadata for Any + 8);

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v35;
    v32 = v12;
    v15 = v12 + 32;
    v16 = v34;
    v17 = v36;
    v18 = v37;
    do
    {
      v37 = v18;
      v28 = v13;
      v29 = v15;
      outlined init with copy of Any(v15, v26);
      v19 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SNFeaturePrint, SNFeaturePrint_ptr);
      swift_dynamicCast(&v27, v26, v31, v19, 7);
      v30 = v27;
      v20 = [v27 featureVector];
      v21 = v20;
      static MLSoundClassifier.FeatureExtractor.convertVector(_:)(v21);
      (objc_release)(v21);
      (*(v14 + 16))(v33, v17, v16);
      v22 = v37;
      v23 = v37[2];
      if (v37[3] >> 1 <= v23)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37[3] >= 2uLL, v23 + 1, 1, v37);
      }

      v22[2] = v23 + 1;
      v14 = v35;
      v16 = v34;
      v18 = v22;
      (*(v35 + 32))(v22 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23, v33, v34);

      v17 = v36;
      (*(v14 + 8))(v36, v16);
      v15 = v29 + 32;
      v13 = v28 - 1;
    }

    while (v28 != 1);
    v37 = v18;
    v24 = v32;
  }

  else
  {
    v24 = v12;
  }

  v24;
  return v37;
}

uint64_t closure #1 in closure #1 in trainWork #1 (_:annotatedFeature:) in MLSoundClassifier.FeatureExtractor.extractFeatures()(uint64_t a1)
{
  v11 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  (*(v3 + 16))(&v9, a1, v2);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  AnnotatedFeature.annotation.getter(v7);
  v10 = v9;
  return AnnotatedFeature.init(feature:annotation:)(&v9, &v10, v2, &type metadata for String);
}

void closure #1 in MLSoundClassifier.FeatureExtractor.extractFeatures()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a5;
  v16 = a4;
  v17 = a3;
  swift_beginAccess(a6 + 16, v14, 32, 0);
  v10 = *(a6 + 16);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a7, (v10 & 0xC000000000000003) == 0, v10);
  if ((v10 & 0xC000000000000003) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)(a7, v10);
  }

  else
  {
    v11 = *(v10 + 8 * a7 + 32);
  }

  v12 = v11;
  swift_endAccess(v14);
  *(&v13 + 1) = a9;
  *&v13 = v15;
  trainWork #1 (_:annotatedFeature:) in MLSoundClassifier.FeatureExtractor.extractFeatures()(v12, a8, a1, a2, v17, v16, v13);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v2;
  v1();
  return v2;
}

uint64_t closure #1 in MLSoundClassifier.FeatureExtractor.isProcessed(url:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess(a1 + 72, v7, 0, 0);
  v4 = *(a1 + 72);
  v4;
  v5 = specialized Set.contains(_:)(a2, v4);
  result = v4;
  *v3 = v5 & 1;
  return result;
}

void (__cdecl **static MLSoundClassifier.FeatureExtractor.extractFeatures(from:options:)(uint64_t a1, __int128 *a2))(id)
{
  v60 = a1;
  v4 = type metadata accessor for URL(0);
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v49 = &v47;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v62 = &v47;
  v10 = *(a2 + 4);
  LOBYTE(v5) = *(a2 + 40);
  v57 = *a2;
  v64 = v57;
  v65 = a2[1];
  HIDWORD(v11) = DWORD1(v65);
  v66 = v10;
  v67 = v5;
  v50 = v3;
  v12 = v4;
  v13 = static MLSoundClassifier.FeatureExtractor.getFeaturePrintRequest(options:)(&v64);
  *&v11 = *&v57;
  [v13 setOverlapFactor:v11];
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLShapedArray<Float>]);
  v15 = lazy protocol witness table accessor for type URL and conformance URL();
  v61 = v12;
  v16 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v12, v14, v15);
  v17 = v16;
  if (*(v60 + 16))
  {
    v51 = *(v60 + 16);
    v63 = v16;
    *&v57 = v2;
    v59 = v13;
    v18 = (v60 + ((*(v58 + 80) + 32) & ~*(v58 + 80)));
    v55 = *(v58 + 16);
    v56 = *(v58 + 72);
    v60;
    v17 = v62;
    v19 = v61;
    while (1)
    {
      v52 = v18;
      v20 = v55;
      v55(v17, v18, v19);
      v21 = v49;
      v20(v49, v17, v19);
      objc_allocWithZone(SNAudioFileAnalyzer);
      v22 = v57;
      v23 = @nonobjc SNAudioFileAnalyzer.init(url:)(v21);
      if (v22)
      {

        (*(v58 + 8))(v62, v61);
        v63;
        v60;
        return v17;
      }

      v24 = v23;
      v25 = objc_allocWithZone(SNResultsCollector);
      v26 = [v25 init];
      *&v64 = 0;
      v27 = [v24 addRequest:v59 withObserver:v26 error:&v64];
      v28 = v64;
      v53 = v24;
      if (!v27)
      {
        break;
      }

      *&v57 = 0;
      v64;
      [v24 analyze];
      v48 = v26;
      v54 = static MLSoundClassifier.FeatureExtractor.convertResultsToShapedArrays(resultsCollector:options:)(v26);
      v29 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v63);
      *&v64 = v29;
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v62);
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(*(v29 + 16), v33);
      v35 = *(v29 + 16) + v33;
      if (v34)
      {
        BUG();
      }

      LOBYTE(v63) = v31;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<URL, [MLShapedArray<Float>]>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v35))
      {
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v62);
        LOBYTE(v37) = v37 & 1;
        LOBYTE(v38) = v63;
        v39 = v52;
        if ((v63 & 1) != v37)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v61, v35, v37, v38, v36);
          BUG();
        }

        v40 = v61;
      }

      else
      {
        v40 = v61;
        v39 = v52;
        LOBYTE(v38) = v63;
      }

      v41 = v64;
      v63 = v64;
      if (v38)
      {
        v42 = *(v64 + 56);
        *(v42 + 8 * v32);
        *(v42 + 8 * v32) = v54;
      }

      else
      {
        *(v64 + 8 * (v32 >> 6) + 64) |= 1 << v32;
        v55((v41[6] + v56 * v32), v62, v40);
        *(v41[7] + 8 * v32) = v54;
        v43 = v41[2];
        v34 = __OFADD__(1, v43);
        v44 = v43 + 1;
        if (v34)
        {
          BUG();
        }

        v41[2] = v44;
      }

      v17 = v62;
      v19 = v40;
      (*(v58 + 8))(v62, v40);
      v18 = (v39 + v56);
      if (!--v51)
      {

        v60;
        return v63;
      }
    }

    v45 = v64;
    v63;
    v60;
    _convertNSErrorToError(_:)(v28);
    v17 = &objc_release;

    swift_willThrow(v45, "addRequest:withObserver:error:");
    (*(v58 + 8))(v62, v61);
  }

  else
  {
  }

  return v17;
}

uint64_t static MLSoundClassifier.FeatureExtractor.convertVector(_:)(id a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = a1;
  MLShapedArray.init(_:)(v8, &type metadata for Float, &protocol witness table for Float);
  v9 = MLShapedArray.shape.getter(v3);
  v10 = *(v9 + 16);
  result = v9;
  if (v10 == 2)
  {
    v12 = MLShapedArray.shape.getter(v3);
    if (!*(v12 + 16))
    {
      BUG();
    }

    v13 = *(v12 + 32);
    result = v12;
    if (v13 == 1)
    {
      v14 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
      v21 = MLShapedArrayProtocol.scalars.getter(v3, v14);
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
      v16 = swift_allocObject(v15, 40, 7);
      v16[2] = 1;
      v16[3] = 2;
      v17 = MLShapedArray.shape.getter(v3);
      if (*(v17 + 16) < 2uLL)
      {
        BUG();
      }

      v22 = &v21;
      v18 = *(v17 + 40);
      v17;
      v16[4] = v18;
      v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
      v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
      v20 = v22;
      MLShapedArray.init<A>(scalars:shape:)(&v21, v16, &type metadata for Float, v23, &protocol witness table for Float, v19);
      (*(v4 + 8))(v2, v3);
      return (*(v4 + 32))(v2, v20, v3);
    }
  }

  return result;
}

uint64_t MLSoundClassifier.FeatureExtractor.deinit(uint64_t a1, uint64_t a2)
{
  *(v2 + 64), a2;
  *(v2 + 72), a2;

  return v2;
}

_OWORD *__swift_memcpy41_8(_OWORD *a1, __int128 *a2)
{
  result = a1;
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 25) = *(a2 + 25);
  a1[1] = v4;
  *a1 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MLSoundClassifier.FeatureExtractor.Configuration(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 40) >= 2u)
      {
        v2 = (*(a1 + 40) ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLSoundClassifier.FeatureExtractor.Configuration(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 254;
    *(a1 + 40) = 0;
    if (a3 >= 0xFE)
    {
      *(a1 + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(a1 + 41) = 0;
    }

    if (a2)
    {
      *(a1 + 40) = ~a2;
    }
  }
}

id @nonobjc SNAudioFileAnalyzer.init(url:)(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [v1 initWithURL:v2 error:&v12];

  v5 = v12;
  v11 = v4;
  if (v4)
  {
    v6 = type metadata accessor for URL(0);
    v7 = *(*(v6 - 8) + 8);
    v5;
    v7(a1, v6);
  }

  else
  {
    v8 = v12;
    _convertNSErrorToError(_:)(v5);

    swift_willThrow();
    v9 = type metadata accessor for URL(0);
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v11;
}

uint64_t outlined init with copy of _TablePrinter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for _TablePrinter(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t sub_1371DB()
{
  v19 = type metadata accessor for _TablePrinter(0);
  v1 = *(v19 - 1);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (*(v1 + 80) + 48);
  v16 = (v3 + *(v1 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v20 = v4;
  v6 = ~v5 & (v5 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
  v18 = v5 | v2 | 7;
  v7 = ((*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  v10 = *(v0 + 32);

  v11 = v0 + v3;
  v12 = v11 + v19[5];
  v13 = type metadata accessor for Date(0);
  (*(*(v13 - 8) + 8))(v12, v13);

  *(v19[7] + v11 + 8);
  v14 = *(v0 + v16);

  (*(v20 + 8))(v0 + v6, v17);
  return swift_deallocObject(v0, v7, v18);
}

uint64_t outlined init with take of _TablePrinter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for _TablePrinter(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

void partial apply for closure #1 in MLSoundClassifier.FeatureExtractor.extractFeatures()()
{
  v1 = *(type metadata accessor for _TablePrinter(0) - 8);
  v2 = ~*(v1 + 80) & (*(v1 + 80) + 48);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>) - 8);
  v6 = (*(v5 + 80) + v4 + 8) & ~*(v5 + 80);
  closure #1 in MLSoundClassifier.FeatureExtractor.extractFeatures()(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v4), v0 + v6, *(v0 + ((v6 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  return v2;
}

void specialized trainWork #1 (_:annotatedFeature:) in MLSoundClassifier.FeatureExtractor.extractFeatures()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, __int128 a7)
{
  v7 = a4 + 16;
  v8 = (a5 + 16);
  v9 = _objc_autoreleasePoolPush();
  closure #1 in trainWork #1 (_:annotatedFeature:) in MLSoundClassifier.FeatureExtractor.extractFeatures()(a2, a1, a3, v7, v8, a6);
  _objc_autoreleasePoolPop(v9);
}

uint64_t MLHandPoseClassifier.ModelParameters.init(validation:batchSize:maximumIterations:augmentationOptions:algorithm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  v7 = *a4;
  outlined init with take of MLClassifierMetrics(a1, v4, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v8 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *(v6 + v8[5]) = a2;
  *(v6 + v8[6]) = a3;
  result = v8[7];
  *(v6 + result) = v7;
  return result;
}

char MLHandPoseClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(uint64_t *a1, void *a2, __m128 a3)
{
  v60 = v3;
  v57 = v4;
  v59 = a2;
  v58 = a1;
  v5 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v53 = &v46;
  v9 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = v60;
  LOBYTE(v14) = MLHandPoseClassifier.DataSource.imagesWithAnnotations()(a3);
  if (v13)
  {
    return v14;
  }

  *&v52 = v5;
  v15 = v54;
  v62 = BYTE8(v54);
  outlined init with copy of MLHandPoseClassifier.ModelParameters.ValidationData(v57, &v46);
  v60 = &v46;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v46, v9);
  if (!EnumCaseMultiPayload)
  {
    v57 = 0;
    v52 = *v60;
    v61 = *(v60 + 16);
    LOBYTE(v53) = *(v60 + 17);
    v23 = v15;
    *&v54 = v15;
    v24 = v62;
    BYTE8(v54) = v62;
    LODWORD(v60) = v62;
    outlined copy of Result<_DataTable, Error>(v23, v62);
    v25 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v54, SBYTE8(v54));
    if (v25 > 0)
    {
      v50 = v23;
      v51 = v24;
      v54 = v52;
      v55 = v61;
      v56 = v53 & 1;
      MLDataTable.randomSplitBySequence(strategy:by:on:)(&v46, &v48, &v54, 0x7461506567616D69, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
      outlined consume of Result<_DataTable, Error>(v23, v60);
      v14 = v46;
      v26 = v47;
      v27 = v49;
      v28 = v58;
      *v58 = v48;
      *(v28 + 8) = v27;
      v29 = v59;
      *v59 = v14;
      *(v29 + 8) = v26;
      return v14;
    }

LABEL_11:
    outlined consume of Result<_DataTable, Error>(v23, v60);
    v34 = v58;
    *v58 = 0;
    LOBYTE(v14) = -1;
    *(v34 + 8) = -1;
    v35 = v59;
    *v59 = 0;
    *(v35 + 8) = -1;
    return v14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v57 = 0;
    v23 = v15;
    *&v54 = v15;
    v30 = v62;
    BYTE8(v54) = v62;
    LODWORD(v60) = v62;
    outlined copy of Result<_DataTable, Error>(v23, v62);
    MLDataTable.size.getter();
    v32 = v31;
    outlined consume of Result<_DataTable, Error>(v54, SBYTE8(v54));
    if (v32)
    {
      v33 = v58;
      *v58 = v23;
      *(v33 + 8) = v30;
      v14 = v59;
      *v59 = 0;
      *(v14 + 8) = -1;
      return v14;
    }

    goto LABEL_11;
  }

  v17 = swift_getEnumCaseMultiPayload(v60, v52);
  v18 = v15;
  if (v17 == 5)
  {
    outlined consume of Result<_DataTable, Error>(v15, v62);
    v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
    v37 = v60;
    *(v60 + v36[12] + 8);
    *(v37 + v36[16] + 8);
    *(v37 + v36[20] + 8);
    v38 = type metadata accessor for DataFrame(0);
    (*(*(v38 - 8) + 8))(v37, v38);
  }

  else
  {
    v19 = v62;
    if (v17 != 3)
    {
      v41 = v53;
      outlined init with take of MLClassifierMetrics(v60, v53, type metadata accessor for MLHandPoseClassifier.DataSource);
      MLHandPoseClassifier.DataSource.imagesWithAnnotations()(a3);
      outlined destroy of MLHandPoseClassifier.ModelParameters.ValidationData(v41, type metadata accessor for MLHandPoseClassifier.DataSource);
      v42 = v58;
      v14 = v54;
      v43 = BYTE8(v54);
      *v58 = v18;
      *(v42 + 8) = v19;
      v44 = v59;
      *v59 = v14;
      *(v44 + 8) = v43;
      return v14;
    }

    outlined consume of Result<_DataTable, Error>(v18, v62);
    v20 = v60[3];
    v21 = v60[5];
    v22 = v60[7];
    outlined consume of Result<_DataTable, Error>(*v60, *(v60 + 2));
    v22;
    v21;
    v20;
  }

  v39 = v59;
  v40 = v58;
  *v58 = 0;
  LOBYTE(v14) = -1;
  *(v40 + 8) = -1;
  *v39 = 0;
  *(v39 + 8) = -1;
  return v14;
}

uint64_t MLHandPoseClassifier.ModelParameters.batchSize.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) + 20);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLHandPoseClassifier.ModelParameters.maximumIterations.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) + 24);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLHandPoseClassifier.ModelParameters.augmentationOptions.getter()
{
  v2 = v0;
  result = *(v1 + *(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) + 28));
  *v2 = result;
  return result;
}

uint64_t MLHandPoseClassifier.ModelParameters.augmentationOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  result = *(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) + 28);
  *(v1 + result) = v2;
  return result;
}

Swift::Int MLHandPoseClassifier.ModelParameters.ModelAlgorithmType.hashValue.getter()
{
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t MLHandPoseClassifier.ModelParameters.description.getter()
{
  _StringGuts.grow(_:)(23);
  0xE000000000000000;
  v1 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v12._countAndFlagsBits = *(v0 + v1[6]);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v2._object;
  String.append(_:)(v2);
  object;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  strcpy(&v12, "Batch Size: ");
  BYTE5(v12._object) = 0;
  HIWORD(v12._object) = -5120;
  v11 = *(v0 + v1[5]);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v6 = v5._object;
  String.append(_:)(v5);
  v6;
  v4._countAndFlagsBits = 10;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  String.append(_:)(v12);
  v12._object;
  _StringGuts.grow(_:)(25);
  0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000016;
  v12._object = "Target Frame Rate: " + 0x8000000000000000;
  v7 = "Model Algorithm: GCN\n" + 0x8000000000000000;
  v8._countAndFlagsBits = 0;
  if (*(v0 + v1[7]) == 1)
  {
    v8._countAndFlagsBits = 0xD000000000000011;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8._object = v7;
  String.append(_:)(v8);
  v7;
  v9._countAndFlagsBits = 10;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  String.append(_:)(v12);
  v12._object;
  v9._object = "Augmentation Options: " + 0x8000000000000000;
  v9._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v9);
  return 0xD000000000000014;
}

uint64_t outlined init with copy of MLHandPoseClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of MLHandPoseClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

unint64_t MLHandPoseClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLHandPoseClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLHandPoseClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandPoseClassifier.ModelParameters.ModelAlgorithmType()
{
  result = lazy protocol witness table cache variable for type MLHandPoseClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandPoseClassifier.ModelParameters.ModelAlgorithmType;
  if (!lazy protocol witness table cache variable for type MLHandPoseClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandPoseClassifier.ModelParameters.ModelAlgorithmType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandPoseClassifier.ModelParameters.ModelAlgorithmType, &type metadata for MLHandPoseClassifier.ModelParameters.ModelAlgorithmType);
    lazy protocol witness table cache variable for type MLHandPoseClassifier.ModelParameters.ModelAlgorithmType and conformance MLHandPoseClassifier.ModelParameters.ModelAlgorithmType = result;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLHandPoseClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v4 = __dst;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *__src;
    *v4 = *__src;
    v4 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v7) == 1)
    {
      v8 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v8))
      {
        case 0u:
          v41 = type metadata accessor for URL(0);
          v44 = *(*(v41 - 8) + 16);
          v44(__dst, __src, v41);
          v42 = v8;
          v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v44(&__dst[v9[12]], &__src[v9[12]], v41);
          v10 = v9[16];
          *&__dst[v10] = *&__src[v10];
          v11 = *&__src[v10 + 8];
          *&v4[v10 + 8] = v11;
          v12 = v9[20];
          *&v4[v12] = *&__src[v12];
          v13 = *&__src[v12 + 8];
          *&v4[v12 + 8] = v13;
          v11;
          v13;
          __dst = v4;
          v14 = v42;
          v15 = 0;
          goto LABEL_15;
        case 1u:
          v24 = type metadata accessor for URL(0);
          (*(*(v24 - 8) + 16))(__dst, __src, v24);
          v40 = 1;
          goto LABEL_11;
        case 2u:
          v20 = type metadata accessor for URL(0);
          (*(*(v20 - 8) + 16))(__dst, __src, v20);
          v40 = 2;
LABEL_11:
          v15 = v40;
          v14 = v8;
          goto LABEL_15;
        case 3u:
          v43 = v8;
          v21 = *__src;
          v46 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v46);
          *__dst = v21;
          __dst[8] = v46;
          *(__dst + 2) = *(__src + 2);
          v22 = *(__src + 3);
          *(v4 + 3) = v22;
          *(v4 + 4) = *(__src + 4);
          v23 = *(__src + 5);
          *(v4 + 5) = v23;
          *(v4 + 6) = *(__src + 6);
          v47 = *(__src + 7);
          *(v4 + 7) = v47;
          v22;
          v23;
          v47;
          v39 = 3;
          goto LABEL_14;
        case 4u:
          v43 = v8;
          v17 = *__src;
          v45 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v45);
          *__dst = v17;
          __dst[8] = v45;
          *(__dst + 2) = *(__src + 2);
          v18 = *(__src + 3);
          *(v4 + 3) = v18;
          *(v4 + 4) = *(__src + 4);
          v19 = *(__src + 5);
          *(v4 + 5) = v19;
          v18;
          v19;
          v39 = 4;
          goto LABEL_14;
        case 5u:
          v25 = type metadata accessor for DataFrame(0);
          (*(*(v25 - 8) + 16))(__dst, __src, v25);
          v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v27 = v26[12];
          *&__dst[v27] = *&__src[v27];
          v28 = *&__src[v27 + 8];
          *&v4[v27 + 8] = v28;
          v29 = v26[16];
          *&v4[v29] = *&__src[v29];
          v48 = *&__src[v29 + 8];
          *&v4[v29 + 8] = v48;
          v30 = v26[20];
          *&v4[v30] = *&__src[v30];
          v43 = v8;
          v31 = *&__src[v30 + 8];
          *&v4[v30 + 8] = v31;
          v28;
          v48;
          v31;
          v39 = 5;
          goto LABEL_14;
        case 6u:
          v32 = type metadata accessor for DataFrame(0);
          (*(*(v32 - 8) + 16))(__dst, __src, v32);
          v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          v34 = *(v33 + 48);
          *&__dst[v34] = *&__src[v34];
          v35 = *&__src[v34 + 8];
          *&v4[v34 + 8] = v35;
          v36 = *(v33 + 64);
          *&v4[v36] = *&__src[v36];
          v43 = v8;
          v37 = *&__src[v36 + 8];
          *&v4[v36 + 8] = v37;
          v35;
          v37;
          v39 = 6;
LABEL_14:
          v15 = v39;
          __dst = v4;
          v14 = v43;
LABEL_15:
          swift_storeEnumTagMultiPayload(__dst, v14, v15);
          swift_storeEnumTagMultiPayload(v4, v7, 1);
          break;
        case 7u:
          JUMPOUT(0x138140);
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    *&v4[a3[5]] = *&__src[a3[5]];
    *&v4[a3[6]] = *&__src[a3[6]];
    *&v4[a3[7]] = *&__src[a3[7]];
  }

  return v4;
}

uint64_t destroy for MLHandPoseClassifier.ModelParameters(uint64_t a1)
{
  v1 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  result = swift_getEnumCaseMultiPayload(a1, v1);
  if (result == 1)
  {
    v3 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 0:
        v5 = type metadata accessor for URL(0);
        v6 = *(*(v5 - 8) + 8);
        v6(a1, v5);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v6(a1 + v7[12], v5);
        *(a1 + v7[16] + 8);
        v8 = v7[20];
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
        return *(a1 + 40);
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
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *(a1 + *(v12 + 48) + 8);
        v8 = *(v12 + 64);
LABEL_10:
        result = *(a1 + v8 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

char *initializeWithCopy for MLHandPoseClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v5 = __dst;
  v6 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v6) == 1)
  {
    v7 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v7))
    {
      case 0u:
        v39 = type metadata accessor for URL(0);
        v42 = *(*(v39 - 8) + 16);
        v42(__dst, __src, v39);
        v40 = v7;
        v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v42(&__dst[v8[12]], &__src[v8[12]], v39);
        v9 = v8[16];
        *&__dst[v9] = *&__src[v9];
        v10 = *&__src[v9 + 8];
        *&v5[v9 + 8] = v10;
        v11 = v8[20];
        *&v5[v11] = *&__src[v11];
        v12 = *&__src[v11 + 8];
        *&v5[v11 + 8] = v12;
        v10;
        v12;
        __dst = v5;
        v13 = v40;
        v14 = 0;
        goto LABEL_13;
      case 1u:
        v22 = type metadata accessor for URL(0);
        (*(*(v22 - 8) + 16))(__dst, __src, v22);
        v38 = 1;
        goto LABEL_9;
      case 2u:
        v18 = type metadata accessor for URL(0);
        (*(*(v18 - 8) + 16))(__dst, __src, v18);
        v38 = 2;
LABEL_9:
        v14 = v38;
        v13 = v7;
        goto LABEL_13;
      case 3u:
        v41 = v7;
        v19 = *__src;
        v44 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v44);
        *__dst = v19;
        __dst[8] = v44;
        *(__dst + 2) = *(__src + 2);
        v20 = *(__src + 3);
        *(v5 + 3) = v20;
        *(v5 + 4) = *(__src + 4);
        v21 = *(__src + 5);
        *(v5 + 5) = v21;
        *(v5 + 6) = *(__src + 6);
        v45 = *(__src + 7);
        *(v5 + 7) = v45;
        v20;
        v21;
        v45;
        v37 = 3;
        goto LABEL_12;
      case 4u:
        v41 = v7;
        v15 = *__src;
        v43 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v43);
        *__dst = v15;
        __dst[8] = v43;
        *(__dst + 2) = *(__src + 2);
        v16 = *(__src + 3);
        *(v5 + 3) = v16;
        *(v5 + 4) = *(__src + 4);
        v17 = *(__src + 5);
        *(v5 + 5) = v17;
        v16;
        v17;
        v37 = 4;
        goto LABEL_12;
      case 5u:
        v23 = type metadata accessor for DataFrame(0);
        (*(*(v23 - 8) + 16))(__dst, __src, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v25 = v24[12];
        *&__dst[v25] = *&__src[v25];
        v26 = *&__src[v25 + 8];
        *&v5[v25 + 8] = v26;
        v27 = v24[16];
        *&v5[v27] = *&__src[v27];
        v46 = *&__src[v27 + 8];
        *&v5[v27 + 8] = v46;
        v28 = v24[20];
        *&v5[v28] = *&__src[v28];
        v41 = v7;
        v29 = *&__src[v28 + 8];
        *&v5[v28 + 8] = v29;
        v26;
        v46;
        v29;
        v37 = 5;
        goto LABEL_12;
      case 6u:
        v30 = type metadata accessor for DataFrame(0);
        (*(*(v30 - 8) + 16))(__dst, __src, v30);
        v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v32 = *(v31 + 48);
        *&__dst[v32] = *&__src[v32];
        v33 = *&__src[v32 + 8];
        *&v5[v32 + 8] = v33;
        v34 = *(v31 + 64);
        *&v5[v34] = *&__src[v34];
        v41 = v7;
        v35 = *&__src[v34 + 8];
        *&v5[v34 + 8] = v35;
        v33;
        v35;
        v37 = 6;
LABEL_12:
        v14 = v37;
        __dst = v5;
        v13 = v41;
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v13, v14);
        swift_storeEnumTagMultiPayload(v5, v6, 1);
        break;
    }
  }

  else
  {
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
  }

  *&v5[a3[5]] = *&__src[a3[5]];
  *&v5[a3[6]] = *&__src[a3[6]];
  *&v5[a3[7]] = *&__src[a3[7]];
  return v5;
}

char *assignWithCopy for MLHandPoseClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandPoseClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    v5 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
    {
      v6 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v27 = type metadata accessor for URL(0);
          v32 = *(*(v27 - 8) + 16);
          v32(__dst, __src, v27);
          v29 = v6;
          v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v32(&__dst[v11[12]], &__src[v11[12]], v27);
          v12 = v11[16];
          *&__dst[v12] = *&__src[v12];
          v9 = *&__src[v12 + 8];
          *&__dst[v12 + 8] = v9;
          v13 = v11[20];
          *&__dst[v13] = *&__src[v13];
          goto LABEL_11;
        case 1u:
        case 2u:
          v7 = type metadata accessor for URL(0);
          (*(*(v7 - 8) + 16))(__dst, __src, v7);
          goto LABEL_14;
        case 3u:
          v30 = v6;
          v14 = *__src;
          v33 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v33);
          *__dst = v14;
          __dst[8] = v33;
          *(__dst + 2) = *(__src + 2);
          v15 = *(__src + 3);
          *(__dst + 3) = v15;
          *(__dst + 4) = *(__src + 4);
          v16 = *(__src + 5);
          *(__dst + 5) = v16;
          *(__dst + 6) = *(__src + 6);
          v34 = *(__src + 7);
          *(__dst + 7) = v34;
          v15;
          LOBYTE(v15) = v16;
          v6 = v30;
          v15;
          v17 = v34;
          goto LABEL_13;
        case 4u:
          v29 = v6;
          v8 = *__src;
          v31 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v31);
          *__dst = v8;
          __dst[8] = v31;
          *(__dst + 2) = *(__src + 2);
          v9 = *(__src + 3);
          *(__dst + 3) = v9;
          *(__dst + 4) = *(__src + 4);
          v10 = *(__src + 5);
          *(__dst + 5) = v10;
          goto LABEL_12;
        case 5u:
          v18 = type metadata accessor for DataFrame(0);
          (*(*(v18 - 8) + 16))(__dst, __src, v18);
          v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v20 = v19[12];
          *&__dst[v20] = *&__src[v20];
          v9 = *&__src[v20 + 8];
          *&__dst[v20 + 8] = v9;
          v21 = v19[16];
          *&__dst[v21] = *&__src[v21];
          v35 = *&__src[v21 + 8];
          *&__dst[v21 + 8] = v35;
          v22 = v19[20];
          *&__dst[v22] = *&__src[v22];
          v29 = v6;
          v10 = *&__src[v22 + 8];
          *&__dst[v22 + 8] = v10;
          v9;
          LOBYTE(v9) = v35;
          goto LABEL_12;
        case 6u:
          v23 = type metadata accessor for DataFrame(0);
          (*(*(v23 - 8) + 16))(__dst, __src, v23);
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          v25 = *(v24 + 48);
          *&__dst[v25] = *&__src[v25];
          v9 = *&__src[v25 + 8];
          *&__dst[v25 + 8] = v9;
          v13 = *(v24 + 64);
          *&__dst[v13] = *&__src[v13];
          v29 = v6;
LABEL_11:
          v10 = *&__src[v13 + 8];
          *&__dst[v13 + 8] = v10;
LABEL_12:
          v9;
          v17 = v10;
          v6 = v29;
LABEL_13:
          v17;
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
  return __dst;
}

char *initializeWithTake for MLHandPoseClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v5 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
  {
    v6 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v6))
    {
      case 0u:
        v19 = type metadata accessor for URL(0);
        v20 = *(*(v19 - 8) + 32);
        v20(__dst, __src, v19);
        v18 = v6;
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v20(&__dst[v7[12]], &__src[v7[12]], v19);
        *&__dst[v7[16]] = *&__src[v7[16]];
        *&__dst[v7[20]] = *&__src[v7[20]];
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
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *&__dst[*(v15 + 48)] = *&__src[*(v15 + 48)];
        *&__dst[*(v15 + 64)] = *&__src[*(v15 + 64)];
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
  return __dst;
}

char *assignWithTake for MLHandPoseClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandPoseClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    v5 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v5) == 1)
    {
      v6 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v6))
      {
        case 0u:
          v19 = type metadata accessor for URL(0);
          v20 = *(*(v19 - 8) + 32);
          v20(__dst, __src, v19);
          v18 = v6;
          v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v20(&__dst[v7[12]], &__src[v7[12]], v19);
          *&__dst[v7[16]] = *&__src[v7[16]];
          *&__dst[v7[20]] = *&__src[v7[20]];
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
          v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          *&__dst[*(v15 + 48)] = *&__src[*(v15 + 48)];
          *&__dst[*(v15 + 64)] = *&__src[*(v15 + 64)];
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
  return __dst;
}

uint64_t type metadata completion function for MLHandPoseClassifier.ModelParameters(uint64_t a1)
{
  result = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.Int64 + 64;
    v3[2] = &value witness table for Builtin.Int64 + 64;
    v3[3] = &value witness table for Builtin.Int64 + 64;
    v3[4] = &value witness table for () + 64;
    swift_initStructMetadata(a1, 256, 5, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLHandPoseClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v17 = *__src;
    *v3 = *__src;
    v3 = (v17 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(v4 + 64));
    }

    v7 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v7))
    {
      case 0u:
        v47 = v7;
        v8 = type metadata accessor for URL(0);
        v46 = *(*(v8 - 8) + 16);
        v46(__dst, __src, v8);
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v46(&__dst[v9[12]], &__src[v9[12]], v8);
        v10 = v9[16];
        *&__dst[v10] = *&__src[v10];
        v11 = *&__src[v10 + 8];
        *(v3 + v10 + 8) = v11;
        v12 = v9[20];
        *(v3 + v12) = *&__src[v12];
        v13 = *&__src[v12 + 8];
        *(v3 + v12 + 8) = v13;
        v11;
        v13;
        v14 = v3;
        v15 = v47;
        v16 = 0;
        goto LABEL_15;
      case 1u:
        v29 = type metadata accessor for URL(0);
        (*(*(v29 - 8) + 16))(__dst, __src, v29);
        v45 = 1;
        goto LABEL_14;
      case 2u:
        v23 = type metadata accessor for URL(0);
        (*(*(v23 - 8) + 16))(__dst, __src, v23);
        v45 = 2;
        goto LABEL_14;
      case 3u:
        v24 = *__src;
        v48 = v7;
        v25 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v25);
        *__dst = v24;
        __dst[8] = v25;
        *(__dst + 2) = *(__src + 2);
        v26 = *(__src + 3);
        v3[3] = v26;
        v3[4] = *(__src + 4);
        v27 = *(__src + 5);
        v3[5] = v27;
        v3[6] = *(__src + 6);
        v28 = *(__src + 7);
        v3[7] = v28;
        v26;
        v27;
        v28;
        v44 = 3;
        goto LABEL_10;
      case 4u:
        v19 = *__src;
        v48 = v7;
        v20 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v20);
        *__dst = v19;
        __dst[8] = v20;
        *(__dst + 2) = *(__src + 2);
        v21 = *(__src + 3);
        v3[3] = v21;
        v3[4] = *(__src + 4);
        v22 = *(__src + 5);
        v3[5] = v22;
        v21;
        v22;
        v44 = 4;
LABEL_10:
        v16 = v44;
        v14 = v3;
        v15 = v48;
        goto LABEL_15;
      case 5u:
        v30 = type metadata accessor for DataFrame(0);
        (*(*(v30 - 8) + 16))(__dst, __src, v30);
        v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v32 = v31[12];
        *&__dst[v32] = *&__src[v32];
        v33 = *&__src[v32 + 8];
        *(v3 + v32 + 8) = v33;
        v34 = v31[16];
        *(v3 + v34) = *&__src[v34];
        v35 = *&__src[v34 + 8];
        *(v3 + v34 + 8) = v35;
        v36 = v31[20];
        *(v3 + v36) = *&__src[v36];
        v37 = *&__src[v36 + 8];
        *(v3 + v36 + 8) = v37;
        v33;
        v35;
        v37;
        v45 = 5;
        goto LABEL_14;
      case 6u:
        v38 = type metadata accessor for DataFrame(0);
        (*(*(v38 - 8) + 16))(__dst, __src, v38);
        v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v40 = *(v39 + 48);
        *&__dst[v40] = *&__src[v40];
        v41 = *&__src[v40 + 8];
        *(v3 + v40 + 8) = v41;
        v42 = *(v39 + 64);
        *(v3 + v42) = *&__src[v42];
        v43 = *&__src[v42 + 8];
        *(v3 + v42 + 8) = v43;
        v41;
        v43;
        v45 = 6;
LABEL_14:
        v16 = v45;
        v14 = v3;
        v15 = v7;
LABEL_15:
        swift_storeEnumTagMultiPayload(v14, v15, v16);
        swift_storeEnumTagMultiPayload(v3, a3, 1);
        break;
    }
  }

  return v3;
}

uint64_t destroy for MLHandPoseClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 1)
  {
    v3 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 0:
        v5 = type metadata accessor for URL(0);
        v6 = *(*(v5 - 8) + 8);
        v6(a1, v5);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v6(a1 + v7[12], v5);
        *(a1 + v7[16] + 8);
        v8 = v7[20];
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
        return *(a1 + 40);
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
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *(a1 + *(v12 + 48) + 8);
        v8 = *(v12 + 64);
LABEL_10:
        result = *(a1 + v8 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

char *initializeWithCopy for MLHandPoseClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v5 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(__src, v5))
  {
    case 0u:
      v44 = v5;
      v6 = type metadata accessor for URL(0);
      v43 = *(*(v6 - 8) + 16);
      v43(__dst, __src, v6);
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v43(&__dst[v7[12]], &__src[v7[12]], v6);
      v8 = v7[16];
      *&__dst[v8] = *&__src[v8];
      v9 = *&__src[v8 + 8];
      *&__dst[v8 + 8] = v9;
      v10 = v7[20];
      *&__dst[v10] = *&__src[v10];
      v11 = *&__src[v10 + 8];
      *&__dst[v10 + 8] = v11;
      v9;
      v11;
      v12 = __dst;
      v13 = v44;
      v14 = 0;
      goto LABEL_13;
    case 1u:
      v26 = type metadata accessor for URL(0);
      (*(*(v26 - 8) + 16))(__dst, __src, v26);
      v42 = 1;
      goto LABEL_12;
    case 2u:
      v20 = type metadata accessor for URL(0);
      (*(*(v20 - 8) + 16))(__dst, __src, v20);
      v42 = 2;
      goto LABEL_12;
    case 3u:
      v21 = *__src;
      v45 = v5;
      v22 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v22);
      *__dst = v21;
      __dst[8] = v22;
      *(__dst + 2) = *(__src + 2);
      v23 = *(__src + 3);
      *(__dst + 3) = v23;
      *(__dst + 4) = *(__src + 4);
      v24 = *(__src + 5);
      *(__dst + 5) = v24;
      *(__dst + 6) = *(__src + 6);
      v25 = *(__src + 7);
      *(__dst + 7) = v25;
      v23;
      v24;
      v25;
      v41 = 3;
      goto LABEL_8;
    case 4u:
      v16 = *__src;
      v45 = v5;
      v17 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v17);
      *__dst = v16;
      __dst[8] = v17;
      *(__dst + 2) = *(__src + 2);
      v18 = *(__src + 3);
      *(__dst + 3) = v18;
      *(__dst + 4) = *(__src + 4);
      v19 = *(__src + 5);
      *(__dst + 5) = v19;
      v18;
      v19;
      v41 = 4;
LABEL_8:
      v14 = v41;
      v12 = __dst;
      v13 = v45;
      goto LABEL_13;
    case 5u:
      v27 = type metadata accessor for DataFrame(0);
      (*(*(v27 - 8) + 16))(__dst, __src, v27);
      v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v29 = v28[12];
      *&__dst[v29] = *&__src[v29];
      v30 = *&__src[v29 + 8];
      *&__dst[v29 + 8] = v30;
      v31 = v28[16];
      *&__dst[v31] = *&__src[v31];
      v32 = *&__src[v31 + 8];
      *&__dst[v31 + 8] = v32;
      v33 = v28[20];
      *&__dst[v33] = *&__src[v33];
      v34 = *&__src[v33 + 8];
      *&__dst[v33 + 8] = v34;
      v30;
      v32;
      v34;
      v42 = 5;
      goto LABEL_12;
    case 6u:
      v35 = type metadata accessor for DataFrame(0);
      (*(*(v35 - 8) + 16))(__dst, __src, v35);
      v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v37 = *(v36 + 48);
      *&__dst[v37] = *&__src[v37];
      v38 = *&__src[v37 + 8];
      *&__dst[v37 + 8] = v38;
      v39 = *(v36 + 64);
      *&__dst[v39] = *&__src[v39];
      v40 = *&__src[v39 + 8];
      *&__dst[v39 + 8] = v40;
      v38;
      v40;
      v42 = 6;
LABEL_12:
      v14 = v42;
      v12 = __dst;
      v13 = v5;
LABEL_13:
      swift_storeEnumTagMultiPayload(v12, v13, v14);
      swift_storeEnumTagMultiPayload(__dst, a3, 1);
      result = __dst;
      break;
  }

  return result;
}

char *assignWithCopy for MLHandPoseClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandPoseClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v5 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v5);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v36 = EnumCaseMultiPayload;
        v32 = type metadata accessor for URL(0);
        v13 = *(*(v32 - 8) + 16);
        v13(__dst, __src, v32);
        v34 = v5;
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v13(&__dst[v14[12]], &__src[v14[12]], v32);
        v15 = v14[16];
        *&__dst[v15] = *&__src[v15];
        v11 = *&__src[v15 + 8];
        *&__dst[v15 + 8] = v11;
        v16 = v14[20];
        v5 = v34;
        *&__dst[v16] = *&__src[v16];
        goto LABEL_12;
      case 1u:
      case 2u:
        v7 = type metadata accessor for URL(0);
        (*(*(v7 - 8) + 16))(__dst, __src, v7);
        goto LABEL_15;
      case 3u:
        v37 = EnumCaseMultiPayload;
        v17 = *__src;
        v35 = v5;
        v18 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v18);
        *__dst = v17;
        __dst[8] = v18;
        *(__dst + 2) = *(__src + 2);
        v19 = *(__src + 3);
        *(__dst + 3) = v19;
        *(__dst + 4) = *(__src + 4);
        v20 = *(__src + 5);
        *(__dst + 5) = v20;
        *(__dst + 6) = *(__src + 6);
        v21 = *(__src + 7);
        *(__dst + 7) = v21;
        goto LABEL_10;
      case 4u:
        v36 = EnumCaseMultiPayload;
        v9 = *__src;
        v33 = v5;
        v10 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v10);
        *__dst = v9;
        __dst[8] = v10;
        v5 = v33;
        *(__dst + 2) = *(__src + 2);
        v11 = *(__src + 3);
        *(__dst + 3) = v11;
        *(__dst + 4) = *(__src + 4);
        v12 = *(__src + 5);
        *(__dst + 5) = v12;
        goto LABEL_13;
      case 5u:
        v22 = type metadata accessor for DataFrame(0);
        (*(*(v22 - 8) + 16))(__dst, __src, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v24 = v23[12];
        *&__dst[v24] = *&__src[v24];
        v19 = *&__src[v24 + 8];
        *&__dst[v24 + 8] = v19;
        v25 = v23[16];
        *&__dst[v25] = *&__src[v25];
        v37 = EnumCaseMultiPayload;
        v20 = *&__src[v25 + 8];
        *&__dst[v25 + 8] = v20;
        v26 = v23[20];
        *&__dst[v26] = *&__src[v26];
        v35 = v5;
        v21 = *&__src[v26 + 8];
        *&__dst[v26 + 8] = v21;
LABEL_10:
        v19;
        v27 = v20;
        EnumCaseMultiPayload = v37;
        v27;
        v28 = v21;
        v5 = v35;
        break;
      case 6u:
        v29 = type metadata accessor for DataFrame(0);
        (*(*(v29 - 8) + 16))(__dst, __src, v29);
        v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v31 = *(v30 + 48);
        *&__dst[v31] = *&__src[v31];
        v11 = *&__src[v31 + 8];
        *&__dst[v31 + 8] = v11;
        v16 = *(v30 + 64);
        *&__dst[v16] = *&__src[v16];
        v36 = EnumCaseMultiPayload;
LABEL_12:
        v12 = *&__src[v16 + 8];
        *&__dst[v16 + 8] = v12;
LABEL_13:
        v11;
        v28 = v12;
        EnumCaseMultiPayload = v36;
        break;
    }

    v28;
LABEL_15:
    swift_storeEnumTagMultiPayload(__dst, v5, EnumCaseMultiPayload);
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
  }

  return __dst;
}

char *initializeWithTake for MLHandPoseClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(__src, v4))
  {
    case 0u:
      v16 = type metadata accessor for URL(0);
      v17 = *(*(v16 - 8) + 32);
      v17(__dst, __src, v16);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v17(&__dst[v5[12]], &__src[v5[12]], v16);
      *&__dst[v5[16]] = *&__src[v5[16]];
      *&__dst[v5[20]] = *&__src[v5[20]];
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
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      *&__dst[*(v14 + 48)] = *&__src[*(v14 + 48)];
      *&__dst[*(v14 + 64)] = *&__src[*(v14 + 64)];
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

char *assignWithTake for MLHandPoseClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandPoseClassifier.ModelParameters.ValidationData(__dst, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v4 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v4))
    {
      case 0u:
        v16 = type metadata accessor for URL(0);
        v17 = *(*(v16 - 8) + 32);
        v17(__dst, __src, v16);
        v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v17(&__dst[v5[12]], &__src[v5[12]], v16);
        *&__dst[v5[16]] = *&__src[v5[16]];
        *&__dst[v5[20]] = *&__src[v5[20]];
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
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *&__dst[*(v14 + 48)] = *&__src[*(v14 + 48)];
        *&__dst[*(v14 + 64)] = *&__src[*(v14 + 64)];
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

uint64_t type metadata completion function for MLHandPoseClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_342728;
  result = type metadata accessor for MLHandPoseClassifier.DataSource(319);
  if (v4 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 2, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t outlined destroy of MLHandPoseClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MLTrainingSessionParameters.init(sessionDirectory:reportInterval:checkpointInterval:iterations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = v4;
  outlined init with copy of URL?(a1, v4);
  if (a3 < a2)
  {
    v6 = a3;
  }

  v8 = type metadata accessor for MLTrainingSessionParameters(0);
  v9 = v8[5];
  v12 = v8[6];
  v13 = v8[7];
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &demangling cache variable for type metadata for URL?);
  *(v7 + v9) = v6;
  *(v7 + v12) = a3;
  result = a4;
  *(v7 + v13) = a4;
  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t type metadata accessor for MLTrainingSessionParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLTrainingSessionParameters;
  if (!type metadata singleton initialization cache for MLTrainingSessionParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLTrainingSessionParameters);
  }

  return result;
}

uint64_t MLTrainingSessionParameters.reportInterval.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLTrainingSessionParameters(0) + 20);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLTrainingSessionParameters.checkpointInterval.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLTrainingSessionParameters(0) + 24);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLTrainingSessionParameters.iterations.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLTrainingSessionParameters(0) + 28);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLTrainingSession.date.getter()
{
  v2 = v0;
  v3 = *(*v1 + 112) + v1;
  swift_beginAccess(v3, v6, 0, 0);
  v4 = type metadata accessor for Date(0);
  return (*(*(v4 - 8) + 16))(v2, v3, v4);
}

char MLTrainingSession.phase.getter()
{
  v2 = v0;
  v3 = *v1;
  v4 = v1 + *(*v1 + 112);
  swift_beginAccess(v4, v8, 0, 0);
  result = *(*(type metadata accessor for MLTrainingSession.Metadata(0, *(v3 + 80), v5, v6) + 28) + v4);
  *v2 = result;
  return result;
}

char key path getter for MLTrainingSession.phase : <A>MLTrainingSession<A>(uint64_t *a1)
{
  v5 = HIBYTE(v1);
  v2 = v1;
  v3 = *a1;
  MLTrainingSession.phase.getter();
  result = v5;
  *v2 = v5;
  return result;
}

uint64_t key path setter for MLTrainingSession.phase : <A>MLTrainingSession<A>(char *a1, uint64_t *a2)
{
  v5[0] = HIBYTE(v2);
  v3 = *a2;
  v5[0] = *a1;
  return MLTrainingSession.phase.setter(v5);
}

uint64_t MLTrainingSession.phase.setter(char *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = v1 + *(*v1 + 112);
  swift_beginAccess(v4, v8, 1, 0);
  result = *(type metadata accessor for MLTrainingSession.Metadata(0, *(v2 + 80), v5, v6) + 28);
  *(result + v4) = v3;
  return result;
}

uint64_t MLTrainingSession.iteration.getter()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 112);
  swift_beginAccess(v2, v6, 0, 0);
  return *(*(type metadata accessor for MLTrainingSession.Metadata(0, *(v1 + 80), v3, v4) + 32) + v2);
}

uint64_t MLTrainingSession.iteration.setter(uint64_t a1)
{
  v2 = *v1;
  v3 = v1 + *(*v1 + 112);
  swift_beginAccess(v3, v7, 1, 0);
  result = *(type metadata accessor for MLTrainingSession.Metadata(0, *(v2 + 80), v4, v5) + 32);
  *(result + v3) = a1;
  return result;
}

uint64_t MLTrainingSession.checkpoints.getter()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 112);
  swift_beginAccess(v2, v7, 0, 0);
  v5 = *(*(type metadata accessor for MLTrainingSession.Metadata(0, *(v1 + 80), v3, v4) + 44) + v2);
  v5;
  return v5;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLTrainingSession.save()()
{
  v58 = v2;
  v56 = type metadata accessor for MLTrainingSession.Metadata(0, *(*v3 + 80), v0, v1);
  v60 = *(v56 - 8);
  v4 = *(v60 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v52 = v50;
  v61 = type metadata accessor for CodingUserInfoKey(0);
  v54 = *(v61 - 8);
  v7 = *(v54 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v53 = v50;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = type metadata accessor for URL(0);
  v57 = *(v16 - 8);
  v17 = *(v57 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v62 = v50;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v59 = v50;
  v55 = v3;
  outlined init with copy of MLTrainingSessionParameters(v3 + direct field offset for MLTrainingSession.parameters, v50, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v50, v50);
  if (__swift_getEnumTagSinglePayload(v50, 1, v16) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for URL?);
    return;
  }

  v22 = v59;
  (*(v57 + 32))(v59, v50, v16);
  URL.appendingPathComponent(_:)(0x696C702E6174656DLL, 0xEA00000000007473);
  v23 = type metadata accessor for PropertyListEncoder(0);
  swift_allocObject(v23, *(v23 + 48), *(v23 + 52));
  v63 = PropertyListEncoder.init()();
  v24 = v16;
  if (one-time initialization token for sessionDirectory != -1)
  {
    swift_once(&one-time initialization token for sessionDirectory, one-time initialization function for sessionDirectory);
  }

  v25 = v61;
  v26 = __swift_project_value_buffer(v61, static CodingUserInfoKey.sessionDirectory);
  v27 = v53;
  (*(v54 + 16))(v53, v26, v25);
  v51[3] = v24;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v51);
  v61 = v24;
  (*(v57 + 16))(boxed_opaque_existential_0, v22, v24);
  v29 = dispatch thunk of PropertyListEncoder.userInfo.modify(v50);
  specialized Dictionary.subscript.setter(v51, v27);
  v29(v50, 0);
  v30 = v55 + *(*v55 + 112);
  swift_beginAccess(v30, v51, 0, 0);
  v31 = v52;
  v32 = v30;
  v33 = v56;
  v34 = v60;
  (*(v60 + 16))(v52, v32, v56);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for MLTrainingSession<A>.Metadata, v33);
  v36 = v58;
  v37 = dispatch thunk of PropertyListEncoder.encode<A>(_:)(v31, v33, WitnessTable);
  if (v36)
  {

    (*(v34 + 8))(v31, v33);
  }

  else
  {
    v39 = v33;
    v40 = v37;
    v56 = v38;
    (*(v34 + 8))(v31, v39);
    v41 = v40;
    v42 = v40;
    v43 = v56;
    Data.write(to:options:)(v62, 0, v42, v56);
    v60 = v41;
    v47 = *(v55 + direct field offset for MLTrainingSession.delegate + 24);
    v58 = 0;
    v48 = *(v55 + direct field offset for MLTrainingSession.delegate + 32);
    __swift_project_boxed_opaque_existential_0Tm((v55 + direct field offset for MLTrainingSession.delegate), v47);
    v49 = v58;
    (*(*(v48 + 8) + 8))(v59, v47);
    if (!v49)
    {
      outlined consume of Data._Representation(v60, v43);

      v44 = *(v57 + 8);
      v45 = v62;
      goto LABEL_9;
    }

    outlined consume of Data._Representation(v60, v43);
  }

  v44 = *(v57 + 8);
  v45 = v62;
LABEL_9:
  v46 = v61;
  v44(v45, v61);
  v44(v59, v46);
}

char MLTrainingSession.Metadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 ^ 0x65746164 | a2 ^ 0xE400000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(1702125924, 0xE400000000000000, a1, a2, 0) & 1) == 0)
  {
    if (a1 ^ 0x6573616870 | a2 ^ 0xE500000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6573616870, 0xE500000000000000, a1, a2, 0) & 1) == 0)
    {
      if (a1 ^ 0x6F69746172657469 | a2 ^ 0xE90000000000006ELL && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6F69746172657469, 0xE90000000000006ELL, a1, a2, 0) & 1) == 0)
      {
        if (a1 ^ 0x4C52556C65646F6DLL | a2 ^ 0xE800000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x4C52556C65646F6DLL, 0xE800000000000000, a1, a2, 0) & 1) == 0)
        {
          if (a1 ^ 0x7461447475706E69 | a2 ^ 0xEC0000004C525561 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x7461447475706E69, 0xEC0000004C525561, a1, a2, 0) & 1) == 0)
          {
            if (a1 ^ 0x696F706B63656863 | a2 ^ 0xEB0000000073746ELL)
            {
              v3 = _stringCompareWithSmolCheck(_:_:expecting:)(0x696F706B63656863, 0xEB0000000073746ELL, a1, a2, 0);
              a2, 0xEB0000000073746ELL;
              return 6 - (v3 & 1);
            }

            else
            {
              a2, 0xEB0000000073746ELL;
              return 5;
            }
          }

          else
          {
            a2, 0xEC0000004C525561;
            return 4;
          }
        }

        else
        {
          a2, 0xE800000000000000;
          return 3;
        }
      }

      else
      {
        a2, 0xE90000000000006ELL;
        return 2;
      }
    }

    else
    {
      a2, 0xE500000000000000;
      return 1;
    }
  }

  else
  {
    a2, 0xE400000000000000;
    return 0;
  }
}

uint64_t MLTrainingSession.Metadata.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 1702125924;
      break;
    case 1:
      result = 0x6573616870;
      break;
    case 2:
      result = 0x6F69746172657469;
      break;
    case 3:
      result = 0x4C52556C65646F6DLL;
      break;
    case 4:
      result = 0x7461447475706E69;
      break;
    case 5:
      result = 0x696F706B63656863;
      break;
  }

  return result;
}

uint64_t MLTrainingSession.Metadata.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = v4;
  v37 = v5;
  v36 = a2;
  v6 = type metadata accessor for MLTrainingSession.Metadata.CodingKeys(255, *(a2 + 16), a3, a4);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for MLTrainingSession<A>.Metadata.CodingKeys, v6);
  v38 = type metadata accessor for KeyedEncodingContainer(0, v6, WitnessTable);
  v45 = *(v38 - 8);
  v7 = *(v45 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v35 = &v30;
  v10 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v10);
  dispatch thunk of Encoder.container<A>(keyedBy:)(v6, v6, WitnessTable, v10, v34);
  v39 = 0;
  v11 = type metadata accessor for Date(0);
  v12 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v13 = v38;
  v14 = v35;
  v15 = v32;
  KeyedEncodingContainer.encode<A>(_:forKey:)(v37, &v39, v38, v11, v12);
  if (v15)
  {
    v29 = v14;
  }

  else
  {
    v40 = *(v37 + v36[7]);
    v41 = 1;
    v16 = lazy protocol witness table accessor for type MLPhase and conformance MLPhase();
    v17 = v38;
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v40, &v41, v38, &type metadata for MLPhase, v16);
    v19 = *(v37 + v36[8]);
    v42 = 2;
    KeyedEncodingContainer.encode(_:forKey:)(v19, &v42, v17);
    v20 = v37 + v36[9];
    v46[0] = 3;
    v21 = type metadata accessor for URL(0);
    v22 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v23 = v17;
    v24 = v22;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)(v20, v46, v23, v21, v22);
    v25 = v37 + v36[10];
    v43 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)(v25, &v43, v38, v21, v24);
    v31 = *(v37 + v36[11]);
    v44 = 5;
    v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLCheckpoint]);
    v27 = lazy protocol witness table accessor for type [MLCheckpoint] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLCheckpoint] and conformance <A> [A], &lazy protocol witness table cache variable for type MLCheckpoint and conformance MLCheckpoint, &protocol conformance descriptor for MLCheckpoint, &protocol conformance descriptor for <A> [A]);
    v28 = v35;
    v13 = v38;
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v31, &v44, v38, v26, v27);
    v29 = v28;
  }

  return (*(v45 + 8))(v29, v13);
}

uint64_t MLTrainingSession.Metadata.init(from:)(void *a1, uint64_t a2)
{
  v67 = v3;
  v66 = a1;
  v61 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v58 = &v50;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v56 = &v50;
  v64 = type metadata accessor for Date(0);
  v53 = *(v64 - 8);
  v9 = *(v53 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v65 = &v50;
  v14 = type metadata accessor for MLTrainingSession.Metadata.CodingKeys(255, a2, v12, v13);
  v52 = v14;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for MLTrainingSession<A>.Metadata.CodingKeys, v14);
  v75 = type metadata accessor for KeyedDecodingContainer(0, v14, WitnessTable);
  v74 = *(v75 - 8);
  v15 = *(v74 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v76 = &v50;
  v20 = type metadata accessor for MLTrainingSession.Metadata(0, a2, v18, v19);
  v63 = *(v20 - 1);
  v21 = *(v63 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  Date.init()(0);
  v54 = v20[7];
  *(&v50 + v54) = 0;
  v57 = v20[8];
  *(&v50 + v57) = 0;
  v24 = &v50 + v20[9];
  v25 = type metadata accessor for URL(0);
  v59 = v24;
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  v60 = &v50 + v20[10];
  v55 = v25;
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v25);
  v62 = v20;
  v26 = v20[11];
  v73 = &v50;
  *(&v50 + v26) = _swiftEmptyArrayStorage;
  v27 = v26;
  v28 = v66[3];
  v29 = v66[4];
  __swift_project_boxed_opaque_existential_0Tm(v66, v28);
  v30 = v67;
  dispatch thunk of Decoder.container<A>(keyedBy:)(v52, v52, WitnessTable, v28, v29);
  if (v30)
  {
    v33 = v73;
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    return (*(v63 + 8))(v33, v62);
  }

  else
  {
    v31 = v53;
    v67 = v27;
    v68 = 0;
    v32 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)(v64, &v68, v75, v64, v32);
    v34 = v73;
    (*(v31 + 40))(v73, v65, v64);
    v69 = 1;
    v35 = lazy protocol witness table accessor for type MLPhase and conformance MLPhase();
    v36 = v75;
    KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for MLPhase, &v69, v75, &type metadata for MLPhase, v35);
    *(v34 + v54) = v77;
    v70 = 2;
    v37 = KeyedDecodingContainer.decode(_:forKey:)(&v70, v36);
    *(v34 + v57) = v37;
    v78[0] = 3;
    v38 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v39 = v36;
    v40 = v38;
    v41 = v56;
    v42 = v55;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(v55, v78, v39, v55, v38);
    outlined assign with take of URL?(v41, v59);
    v71 = 4;
    v43 = v58;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(v42, &v71, v75, v42, v40);
    outlined assign with take of URL?(v43, v60);
    v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLCheckpoint]);
    v72 = 5;
    v45 = lazy protocol witness table accessor for type [MLCheckpoint] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLCheckpoint] and conformance <A> [A], &lazy protocol witness table cache variable for type MLCheckpoint and conformance MLCheckpoint, &protocol conformance descriptor for MLCheckpoint, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)(v44, &v72, v75, v44, v45);
    (*(v74 + 8))(v76, v75);
    v46 = v73;
    *(v73 + v67) = v50;
    v47 = v62;
    v48 = v63;
    (*(v63 + 16))(v61, v46, v62);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    return (*(v48 + 8))(v46, v47);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLTrainingSession<A>.Metadata.CodingKeys(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)(a1);
  v3 = *(a2 + 16);
  MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys.hash(into:)(v5, *v2);
  return Hasher._finalize()();
}

char protocol witness for CodingKey.init(stringValue:) in conformance MLTrainingSession<A>.Metadata.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  result = MLTrainingSession.Metadata.CodingKeys.init(stringValue:)(a1, a2);
  *v4 = result;
  return result;
}

uint64_t protocol witness for CodingKey.intValue.getter in conformance MLTrainingSession<A>.Metadata.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  return Rectangle.CodingKeys.intValue.getter();
}

char protocol witness for CodingKey.init(intValue:) in conformance MLTrainingSession<A>.Metadata.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  result = MLTrainingSession.Metadata.CodingKeys.init(intValue:)();
  *v3 = result;
  return result;
}

NSURL *MLTrainingSession.removeCheckpoints(_:)(uint64_t (*a1)(void *), uint64_t a2)
{
  v64 = v2;
  v4 = v3;
  v51[1] = a2;
  v52 = a1;
  v66 = *v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = v51;
  v9 = alloca(v5);
  v10 = alloca(v5);
  v57 = v51;
  v56 = type metadata accessor for MLCheckpoint(0);
  v53 = *(v56 - 8);
  v11 = *(v53 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v59 = v51;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v16 = v51;
  v17 = objc_allocWithZone(NSFileManager);
  v60 = [v17 init];
  v18 = *(*v4 + 112);
  v63 = v4;
  v19 = v4 + v18;
  swift_beginAccess(v19, v68, 1, 0);
  v22 = type metadata accessor for MLTrainingSession.Metadata(0, *(v66 + 80), v20, v21);
  v23 = v19;
  v61 = v22;
  v24 = *(v22 + 44);
  v25 = *&v19[v24];
  v54 = *(v25 + 16);
  v58 = v19;
  if (v54)
  {
    v65 = _swiftEmptyArrayStorage;
    v26 = 0;
    v27 = type metadata accessor for MLCheckpoint;
    v55 = v51;
    v62 = v51;
    do
    {
      v28 = *&v23[*(v61 + 44)];
      if (v26 >= *(v28 + 16))
      {
        BUG();
      }

      v29 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v51[0] = *(v53 + 72);
      v66 = v26;
      outlined init with copy of MLTrainingSessionParameters(v29 + v26 * v51[0] + v28, v16, v27);
      v30 = v27;
      v31 = v52(v16);
      if (v31)
      {
        URL._bridgeToObjectiveC()(v31);
        v33 = v32;
        v67 = 0;
        v34 = [v60 removeItemAtURL:v32 error:&v67];

        v35 = v67;
        if (v34)
        {
          v67;
        }

        else
        {
          v41 = v67;
          v42 = _convertNSErrorToError(_:)(v35);

          swift_willThrow(v41, "removeItemAtURL:error:");
          v42;
          v64 = 0;
        }

        v8 = v62;
        v27 = v30;
        v37 = v66;
      }

      else
      {
        outlined init with copy of MLTrainingSessionParameters(v16, v59, v27);
        if (swift_isUniquelyReferenced_nonNull_native(v65))
        {
          v36 = v65;
        }

        else
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65[2] + 1, 1, v65);
        }

        v37 = v66;
        v38 = v36[2];
        v39 = v36[3];
        v40 = v38 + 1;
        if (v39 >> 1 <= v38)
        {
          v66 = v38 + 1;
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 >= 2, v40, 1, v36);
          v40 = v66;
        }

        v36[2] = v40;
        v65 = v36;
        outlined init with take of MLCheckpoint(v59, v36 + v29 + v51[0] * v38);
        v8 = v62;
      }

      v26 = v37 + 1;
      v16 = v55;
      outlined destroy of MLActivityClassifier.ModelParameters(v55, v27);
      v23 = v58;
    }

    while (v54 != v26);
    v24 = *(v61 + 44);
    v25 = *&v58[v24];
    v43 = v65;
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
  }

  *&v23[v24] = v43;
  v43;
  v25;
  v44 = v57;
  specialized BidirectionalCollection.last.getter(v43);
  v45 = v56;
  if (__swift_getEnumTagSinglePayload(v44, 1, v56) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v44, &demangling cache variable for type metadata for MLCheckpoint?);
    v43;
  }

  else
  {
    LOBYTE(v66) = *(v44 + *(v45 + 20));
    outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for MLCheckpoint);
    specialized BidirectionalCollection.last.getter(v43);
    v43;
    if (__swift_getEnumTagSinglePayload(v8, 1, v45) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8, &demangling cache variable for type metadata for MLCheckpoint?);
    }

    else
    {
      v46 = v8;
      v47 = *(v8 + *(v45 + 24));
      outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
      v48 = v61;
      v49 = v58;
      v58[*(v61 + 28)] = v66;
      *&v49[*(v48 + 32)] = v47;
    }
  }

  MLTrainingSession.save()();

  return __stack_chk_guard;
}

NSURL *MLTrainingSession.reuseExtractedFeatures(from:)(void *a1)
{
  v91 = v1;
  v93 = a1;
  v3 = *v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v86 = v79;
  v7 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v82 = v79;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v80 = v79;
  v92 = type metadata accessor for MLCheckpoint(0);
  v87 = *(v92 - 8);
  v13 = *(v87 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v88 = v79;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v18 = alloca(v13);
  v19 = alloca(v13);
  v89 = v79;
  v20 = v3[14];
  v81 = v2;
  v21 = v2 + v20;
  swift_beginAccess(v21, v97, 1, 0);
  v24 = type metadata accessor for MLTrainingSession.Metadata(0, v3[10], v22, v23);
  if (*(*&v21[*(v24 + 44)] + 16))
  {
    v25 = "reExtractor.swift" + 0x8000000000000000;
    v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
    v28 = 0xD000000000000047;
    goto LABEL_21;
  }

  v84 = v21;
  v29 = v93 + *(*v93 + 112);
  v30 = v24;
  swift_beginAccess(v29, v96, 0, 0);
  v85 = v30;
  v31 = *&v29[*(v30 + 44)];
  v95 = v31;
  v32 = v31[2];
  if (!v32)
  {
    v41 = v31;
    v31;
    v40 = 1;
    v32 = 0;
    v34 = v92;
    v39 = v91;
    goto LABEL_19;
  }

  v33 = v87;
  v90 = v31 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
  v93 = v31;
  v31;
  v83 = &loc_308EF - 0x14FFFFFFFF9B9A86;
  v34 = v92;
  while (2)
  {
    if (v32 > v93[2])
    {
      BUG();
    }

    outlined init with copy of MLTrainingSessionParameters(v90 + --v32 * *(v33 + 72), v79, type metadata accessor for MLCheckpoint);
    switch(v79[v34[5]])
    {
      case 0:
        v36 = v79[v34[5]];
        v35 = 0xEB0000000064657ALL;
        v37 = 0x696C616974696E69;
        goto LABEL_11;
      case 1:
        0xEA0000000000676ELL;
        outlined destroy of MLActivityClassifier.ModelParameters(v79, type metadata accessor for MLCheckpoint);
        v40 = 0;
        goto LABEL_17;
      case 2:
        v35 = 0xE800000000000000;
        v37 = 0x676E696E69617274;
        goto LABEL_11;
      case 3:
        v35 = 0xEA0000000000676ELL;
        v37 = 0x697461756C617665;
        goto LABEL_11;
      case 4:
        v35 = v83;
        v37 = 0x636E657265666E69;
LABEL_11:
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)(v37, v35, 0x6974636172747865, 0xEA0000000000676ELL, 0);
        v35;
        outlined destroy of MLActivityClassifier.ModelParameters(v79, type metadata accessor for MLCheckpoint);
        if ((v38 & 1) == 0)
        {
          v33 = v87;
          v34 = v92;
          v39 = v91;
          if (!v32)
          {
            v40 = 1;
            v32 = 0;
            goto LABEL_18;
          }

          continue;
        }

        v40 = 0;
        v34 = v92;
LABEL_17:
        v39 = v91;
LABEL_18:
        v41 = v93;
LABEL_19:
        v42 = alloca(24);
        v43 = alloca(32);
        v81 = &v95;
        v44 = v32;
        v45 = v80;
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5Tm(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v79, v44, v40, v94, type metadata accessor for MLCheckpoint);
        v91 = v39;
        v41;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v34);
        v47 = v86;
        if (EnumTagSinglePayload == 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v45, &demangling cache variable for type metadata for MLCheckpoint?);
          v25 = "e create a new session." + 0x8000000000000000;
          v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
          v28 = 0xD000000000000029;
LABEL_21:
          *v27 = v28;
          *(v27 + 8) = v25;
          *(v27 + 16) = 0;
          *(v27 + 32) = 0;
          *(v27 + 48) = 0;
          swift_willThrow(&type metadata for MLCreateError, v26);
        }

        else
        {
          v49 = v89;
          outlined init with take of MLCheckpoint(v45, v89);
          v50 = v82;
          outlined init with copy of MLTrainingSessionParameters(v81 + direct field offset for MLTrainingSession.parameters, v82, type metadata accessor for MLTrainingSessionParameters);
          outlined init with take of URL?(v50, v47);
          v93 = type metadata accessor for URL(0);
          if (__swift_getEnumTagSinglePayload(v47, 1, v93) == 1)
          {
            BUG();
          }

          v92 = *(v49 + v34[6]);
          v90 = *(v49 + v34[8]);
          v51 = v90;
          v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
          v53 = v34;
          v54 = swift_allocObject(v52, 112, 7);
          v54[2] = 2;
          v54[3] = 4;
          v54[7] = &type metadata for String;
          v54[8] = lazy protocol witness table accessor for type String and conformance String();
          v54[4] = 0x6974636172747865;
          v54[5] = 0xEA0000000000676ELL;
          v54[12] = &type metadata for Int;
          v54[13] = &protocol witness table for Int;
          v54[9] = v92;
          v51;
          v55 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v54);
          v57 = v56;
          v58 = v88;
          v59 = v86;
          URL.appendingPathComponent(_:)(v55, v56);
          v57;
          *(v58 + v53[5]) = 1;
          *(v58 + v53[6]) = v92;
          v60 = v53[7];
          Date.init()(v57);
          (*(*(v93 - 1) + 8))(v59);
          *(v58 + v53[8]) = v90;
          v61 = objc_opt_self(NSFileManager);
          v62 = [v61 defaultManager];
          v90 = v62;
          URL._bridgeToObjectiveC()(v90);
          v64 = v63;
          URL._bridgeToObjectiveC()(v63);
          v66 = v65;
          v95 = 0;
          v67 = v90;
          LOBYTE(v93) = [v90 copyItemAtURL:v64 toURL:v65 error:&v95];

          v68 = v95;
          if (v93)
          {
            v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLCheckpoint>);
            v70 = *(v87 + 80);
            v71 = (v70 + 32) & ~*(v87 + 80);
            v72 = swift_allocObject(v69, v71 + *(v87 + 72), v70 | 7);
            *(v72 + 16) = 1;
            *(v72 + 24) = 2;
            v73 = v88;
            outlined init with copy of MLTrainingSessionParameters(v88, v72 + v71, type metadata accessor for MLCheckpoint);
            v68;
            outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLCheckpoint);
            v74 = v85;
            v75 = *(v85 + 44);
            v76 = v84;
            v77 = *&v84[v75];
            *&v84[v75] = v72;
            v77;
            v76[*(v74 + 28)] = 1;
            outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLCheckpoint);
            *&v76[*(v74 + 32)] = v92;
          }

          else
          {
            v78 = v95;
            _convertNSErrorToError(_:)(v68);

            swift_willThrow(v78, "copyItemAtURL:toURL:error:");
            outlined destroy of MLActivityClassifier.ModelParameters(v88, type metadata accessor for MLCheckpoint);
            outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLCheckpoint);
          }
        }

        return __stack_chk_guard;
    }
  }
}

uint64_t *MLTrainingSession.deinit()
{
  v1 = *v0;
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + direct field offset for MLTrainingSession.parameters, type metadata accessor for MLTrainingSessionParameters);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for MLTrainingSession.delegate));
  v2 = v0 + *(*v0 + 112);
  v5 = type metadata accessor for MLTrainingSession.Metadata(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 8))(v2, v5);
  return v0;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5Tm(void (*a1)(void), uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void))
{
  v8 = v6;
  if (a4)
  {
    v10 = a6(0);
    v11 = v8;
    v12 = 1;
  }

  else
  {
    a1();
    if (v7)
    {
      BUG();
    }

    v10 = a6(0);
    v11 = v8;
    v12 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
}

uint64_t specialized closure #1 in BidirectionalCollection.last(where:)(uint64_t *a1, uint64_t *a2)
{
  return specialized closure #1 in BidirectionalCollection.last(where:)(*a1, *a2);
}

{
  return specialized closure #1 in BidirectionalCollection.last(where:)(*a1, *a2, v3);
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t sub_13BFF4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_13C000(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  result = MLTrainingSession.iteration.getter();
  *v2 = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MLTrainingSessionParameters(char *__dst, char *__src, int *a3)
{
  v3 = __dst;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *__src;
    *v3 = *__src;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(__src, 1, v6))
    {
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    else
    {
      (*(*(v6 - 8) + 16))(__dst, __src, v6);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
    }

    *&__dst[a3[5]] = *&__src[a3[5]];
    *&__dst[a3[6]] = *&__src[a3[6]];
    *&__dst[a3[7]] = *&__src[a3[7]];
  }

  return v3;
}

char *initializeWithCopy for MLTrainingSessionParameters(char *__dst, char *__src, int *a3)
{
  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 1, v4))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(*(v4 - 8) + 16))(__dst, __src, v4);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  return __dst;
}

char *assignWithCopy for MLTrainingSessionParameters(char *__dst, char *__src, int *a3)
{
  v3 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 1, v3);
  v5 = __swift_getEnumTagSinglePayload(__src, 1, v3);
  if (!EnumTagSinglePayload)
  {
    v6 = *(v3 - 8);
    if (!v5)
    {
      (*(v6 + 24))(__dst, __src, v3);
      goto LABEL_7;
    }

    (*(v6 + 8))(__dst, v3);
    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(__dst, __src, *(*(v7 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v3 - 8) + 16))(__dst, __src, v3);
  __swift_storeEnumTagSinglePayload(__dst, 0, 1, v3);
LABEL_7:
  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  return __dst;
}

char *initializeWithTake for MLTrainingSessionParameters(char *__dst, char *__src, int *a3)
{
  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 1, v4))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
  }

  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  return __dst;
}

char *assignWithTake for MLTrainingSessionParameters(char *__dst, char *__src, int *a3)
{
  v3 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 1, v3);
  v5 = __swift_getEnumTagSinglePayload(__src, 1, v3);
  if (!EnumTagSinglePayload)
  {
    v6 = *(v3 - 8);
    if (!v5)
    {
      (*(v6 + 40))(__dst, __src, v3);
      goto LABEL_7;
    }

    (*(v6 + 8))(__dst, v3);
    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(__dst, __src, *(*(v7 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v3 - 8) + 32))(__dst, __src, v3);
  __swift_storeEnumTagSinglePayload(__dst, 0, 1, v3);
LABEL_7:
  *&__dst[a3[5]] = *&__src[a3[5]];
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  return __dst;
}

uint64_t type metadata completion function for MLTrainingSessionParameters(uint64_t a1)
{
  result = type metadata accessor for URL?(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.Int64 + 64;
    v3[2] = &value witness table for Builtin.Int64 + 64;
    v3[3] = &value witness table for Builtin.Int64 + 64;
    swift_initStructMetadata(a1, 256, 4, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for MLTrainingSession(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v5[0] = *(result - 8) + 64;
    v5[1] = &unk_3427C8;
    v5[2] = &unk_3427E0;
    result = type metadata accessor for MLTrainingSession.Metadata(319, *(a1 + 80), v2, v3);
    if (v4 <= 0x3F)
    {
      v5[3] = *(result - 8) + 64;
      result = swift_initClassMetadata2(a1, 0, 4, v5, a1 + 88);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for MLTrainingSession.Metadata(uint64_t a1)
{
  v1 = type metadata accessor for Date(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v7[0] = *(v1 - 8) + 64;
    v7[1] = &unk_342820;
    v7[2] = &value witness table for Builtin.Int64 + 64;
    v4 = type metadata accessor for URL?(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v8 = *(v4 - 8) + 64;
      v9 = v8;
      v10 = &value witness table for Builtin.BridgeObject + 64;
      v2 = 0;
      swift_initStructMetadata(a1, 0, 6, v7, a1 + 24);
    }
  }

  return v2;
}

void *initializeBufferWithCopyOfBuffer for MLTrainingSession.Metadata(void *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for Date(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    *(a1 + a3[7]) = *(a2 + a3[7]);
    *(a1 + a3[8]) = *(a2 + a3[8]);
    v7 = a3[9];
    __dst = a1 + v7;
    v8 = a2 + v7;
    v9 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
      memcpy(__dst, v8, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(*(v9 - 8) + 16))(__dst, v8, v9);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v9);
    }

    v12 = a3[10];
    __dsta = a1 + v12;
    v13 = a2 + v12;
    if (__swift_getEnumTagSinglePayload(v13, 1, v9))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
      memcpy(__dsta, v13, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(*(v9 - 8) + 16))(__dsta, v13, v9);
      __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v9);
    }

    v15 = a3[11];
    v16 = *(a2 + v15);
    *(v3 + v15) = v16;
    v16;
  }

  return v3;
}

uint64_t destroy for MLTrainingSession.Metadata(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for Date(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = a1 + a2[9];
  v4 = type metadata accessor for URL(0);
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  v5 = a1 + a2[10];
  if (!__swift_getEnumTagSinglePayload(v5, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v5, v4);
  }

  return *(a1 + a2[11]);
}

uint64_t initializeWithCopy for MLTrainingSession.Metadata(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for Date(0);
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v6 = a3[9];
  __dst = (a1 + v6);
  v7 = (a2 + v6);
  v8 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(__dst, v7, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(*(v8 - 8) + 16))(__dst, v7, v8);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v8);
  }

  __dsta = a3;
  v10 = a3[10];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  if (__swift_getEnumTagSinglePayload(v12, 1, v8))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v11, v12, *(*(v13 - 8) + 64));
  }

  else
  {
    (*(*(v8 - 8) + 16))(v11, v12, v8);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v8);
  }

  v14 = __dsta[11];
  v15 = *(a2 + v14);
  *(a1 + v14) = v15;
  v15;
  return a1;
}

uint64_t assignWithCopy for MLTrainingSession.Metadata(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for Date(0);
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v25 = a3;
  v5 = a3[9];
  v6 = (v5 + a1);
  v7 = (a2 + v5);
  v8 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v8);
  v10 = __swift_getEnumTagSinglePayload(v7, 1, v8);
  if (EnumTagSinglePayload)
  {
    if (!v10)
    {
      (*(*(v8 - 8) + 16))(v6, v7, v8);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = *(v8 - 8);
  if (v10)
  {
    (*(v11 + 8))(v6, v8);
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v6, v7, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 24))(v6, v7, v8);
LABEL_7:
  v13 = v25[10];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = __swift_getEnumTagSinglePayload(v14, 1, v8);
  v17 = __swift_getEnumTagSinglePayload(v15, 1, v8);
  if (!v16)
  {
    v18 = *(v8 - 8);
    if (!v17)
    {
      (*(v18 + 24))(v14, v15, v8);
      goto LABEL_13;
    }

    (*(v18 + 8))(v14, v8);
    goto LABEL_12;
  }

  if (v17)
  {
LABEL_12:
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v14, v15, *(*(v19 - 8) + 64));
    goto LABEL_13;
  }

  (*(*(v8 - 8) + 16))(v14, v15, v8);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v8);
LABEL_13:
  v20 = v25[11];
  v21 = *(a2 + v20);
  v22 = *(a1 + v20);
  *(a1 + v20) = v21;
  v21;
  v22;
  return a1;
}

uint64_t initializeWithTake for MLTrainingSession.Metadata(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for Date(0);
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v5 = a3[9];
  __dst = (a1 + v5);
  v6 = (a2 + v5);
  v7 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(__dst, v6, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 32))(__dst, v6, v7);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v7);
  }

  __dsta = a3;
  v9 = a3[10];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  if (__swift_getEnumTagSinglePayload(v11, 1, v7))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 32))(v10, v11, v7);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v7);
  }

  *(a1 + __dsta[11]) = *(a2 + __dsta[11]);
  return a1;
}

char *assignWithTake for MLTrainingSession.Metadata(char *a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for Date(0);
  (*(*(v5 - 8) + 40))(a1, a2, v5);
  a1[a3[7]] = *(a2 + a3[7]);
  *&a1[a3[8]] = *(a2 + a3[8]);
  v24 = a3;
  v6 = a3[9];
  v7 = &a1[v6];
  v8 = (a2 + v6);
  v9 = type metadata accessor for URL(0);
  __dst = v7;
  LODWORD(v7) = __swift_getEnumTagSinglePayload(v7, 1, v9);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v9);
  if (v7)
  {
    if (EnumTagSinglePayload)
    {
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
      v12 = __dst;
LABEL_6:
      memcpy(v12, v8, v11);
      goto LABEL_9;
    }

    (*(*(v9 - 8) + 32))(__dst, v8, v9);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v9);
  }

  else
  {
    v13 = *(v9 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v13 + 8))(__dst, v9);
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
      v12 = __dst;
      goto LABEL_6;
    }

    (*(v13 + 40))(__dst, v8, v9);
  }

LABEL_9:
  v14 = v24[10];
  __dsta = a1;
  v15 = &a1[v14];
  v16 = (a2 + v14);
  v17 = __swift_getEnumTagSinglePayload(v15, 1, v9);
  v18 = __swift_getEnumTagSinglePayload(v16, 1, v9);
  if (!v17)
  {
    v19 = *(v9 - 8);
    if (!v18)
    {
      (*(v19 + 40))(v15, v16, v9);
      goto LABEL_15;
    }

    (*(v19 + 8))(v15, v9);
    goto LABEL_14;
  }

  if (v18)
  {
LABEL_14:
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v15, v16, *(*(v20 - 8) + 64));
    goto LABEL_15;
  }

  (*(*(v9 - 8) + 32))(v15, v16, v9);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v9);
LABEL_15:
  v21 = v24[11];
  v22 = *&__dsta[v21];
  *&__dsta[v21] = *(a2 + v21);
  v22;
  return __dsta;
}

uint64_t sub_13CEC2(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for Date(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v4 = *(a3 + 36) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  result = 0;
  if ((*(a1 + *(a3 + 44)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 44)) >> 1) + 1;
  }

  return result;
}

uint64_t sub_13CF55(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for Date(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v6 = *(a4 + 36) + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  result = *(a4 + 44);
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [MLCheckpoint] and conformance <A> [A](uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!*a1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [MLCheckpoint]);
    lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a2, type metadata accessor for MLCheckpoint, a3);
    result = swift_getWitnessTable(a4, v7);
    *a1 = result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MLTrainingSession.Metadata.CodingKeys(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFB)
  {
    v4 = a3 + 5;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFA)
  {
    v5 = a2 - 251;
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
          *a1 = a2 + 5;
        }

        break;
      case 5:
        JUMPOUT(0x13D174);
    }
  }

  return result;
}

uint64_t MLTextClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  qmemcpy(v5, a2, 0x48uLL);
  v3 = *v2;
  return NLModel.write(to:defaultName:metadata:)(a1, 0x73616C4374786554, 0xEE00726569666973, v5);
}

uint64_t MLTextClassifier.write(toFile:metadata:)(Swift::String string, const void *a2)
{
  qmemcpy(v5, a2, 0x48uLL);
  v3 = *v2;
  return NLModel.write(toFile:defaultName:metadata:)(string, 0x73616C4374786554, 0xEE00726569666973, v5);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVySo7CIImageCSSGG_AJs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B59RtzlFAlMcfu_32ebed8ba5c9417264c39088de476e42ecAmLTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray.reserveCapacity(_:)(v1);
  v2 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>) - 8);
  v3 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + a1;
  v7 = *(v2 + 72);
  do
  {
    KeyPath = swift_getKeyPath(&unk_342AF8);
    swift_getAtKeyPath(v3, KeyPath);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(KeyPath);
    v5 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v5);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v5);
    specialized ContiguousArray._endMutation()(v5);
    v3 += v7;
    --v1;
  }

  while (v1);
  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVySo7CIImageCSSGG_SSs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B63RtzlFSSAMcfu0_33_7eec49b2e7313abe927b434220475ef8AMSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>) - 8);
    v3 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + a1;
    v14 = *(v2 + 72);
    do
    {
      v13 = v1;
      KeyPath = swift_getKeyPath(&unk_342AC0);
      swift_getAtKeyPath(v3, KeyPath);

      v5 = v11;
      v6 = v12;
      v7 = _swiftEmptyArrayStorage[2];
      v8 = v7 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v7)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v8, 1);
        v6 = v12;
        v5 = v11;
      }

      _swiftEmptyArrayStorage[2] = v8;
      v9 = 2 * v7;
      _swiftEmptyArrayStorage[v9 + 4] = v5;
      _swiftEmptyArrayStorage[v9 + 5] = v6;
      v3 += v14;
      v1 = v13 - 1;
    }

    while (v13 != 1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t static MLImageClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLImageClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

void (*MLImageClassifier.model.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  a1[2] = *v1;
  *a1 = v3;
  v3;
  return MLImageClassifier.model.modify;
}

void MLImageClassifier.model.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;

    *v3 = v5;
  }

  else
  {

    *v3 = v2;
  }
}

uint64_t MLImageClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLImageClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 24), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t type metadata accessor for MLImageClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLImageClassifier;
  if (!type metadata singleton initialization cache for MLImageClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLImageClassifier);
  }

  return result;
}

uint64_t MLImageClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLImageClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 28), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLImageClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2)
{
  v35 = v3;
  v33 = a2;
  v32 = a1;
  v4 = v2;
  v5 = type metadata accessor for MLImageClassifier(0);
  v6 = *(v5 - 8);
  v7 = v5;
  v38 = v5;
  v8 = *(v6 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v34 = v30;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v36 = *(v37 - 8);
  v11 = *(v36 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v31 = *(v7 + 24);
  v14 = v4;
  v15 = v31 + v4;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v16 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v17 = *(v16 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v30);
  v18 = *(v16 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v30);
  (*(v36 + 8))(v30, v37);
  *(v14 + v31) = 0;
  v36 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v37 = v15;
  swift_storeEnumTagMultiPayload(v15, v36, 1);
  v19 = *(v38 + 28);
  v20 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v21 = swift_allocError(&type metadata for MLCreateError, v20, 0, 0);
  *v22 = 0xD0000000000000C0;
  *(v22 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v22 + 16) = 0;
  *(v22 + 32) = 0;
  *(v22 + 48) = 0;
  *(v14 + v19) = v21;
  v38 = v14 + v19;
  v23 = v32;
  swift_storeEnumTagMultiPayload(v14 + v19, v36, 2);
  v24 = v35;
  v25 = static _ImageUtilities.getImageURLsAndLabels(from:)(v23);
  if (v24)
  {
    outlined destroy of MLImageClassifier.ModelParameters(v33);
    outlined destroy of MLActivityClassifier.ModelParameters(v23, type metadata accessor for MLImageClassifier.DataSource);
    outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLClassifierMetrics);
  }

  else
  {
    v26 = v25;
    v35 = v14;
    v27 = v33;
    outlined init with copy of MLImageClassifier.ModelParameters(v33, v30);
    v28 = swift_allocObject(&unk_391D38, 104, 7);
    *(v28 + 16) = v26;
    qmemcpy((v28 + 24), v30, 0x50uLL);
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLImageClassifier.init(trainingData:parameters:), v28);

    outlined destroy of MLImageClassifier.ModelParameters(v27);
    outlined destroy of MLActivityClassifier.ModelParameters(v32, type metadata accessor for MLImageClassifier.DataSource);
    outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLClassifierMetrics);
    outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLClassifierMetrics);
    return outlined init with take of MLClassifierMetrics(v34, v35, type metadata accessor for MLImageClassifier);
  }
}

{
  v31 = a2;
  v30 = a1;
  v4 = v2;
  v36 = v2;
  v5 = type metadata accessor for MLImageClassifier(0);
  v6 = *(v5 - 8);
  v7 = v5;
  v37 = v5;
  v8 = *(v6 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v35 = &v28;
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v34 = *(v33 - 8);
  v11 = *(v34 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *(v7 + 24);
  v15 = v14 + v4;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v16 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v17 = *(v16 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v28);
  v18 = *(v16 + 24);
  v32 = v15;
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v28);
  (*(v34 + 8))(&v28, v33);
  v19 = v36;
  *(v36 + v14) = 0;
  v20 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v15, v20, 1);
  v21 = *(v37 + 28);
  v37 = v21 + v19;
  v22 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v23 = swift_allocError(&type metadata for MLCreateError, v22, 0, 0);
  *v24 = 0xD0000000000000C0;
  *(v24 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v24 + 16) = 0;
  *(v24 + 32) = 0;
  *(v24 + 48) = 0;
  *(v36 + v21) = v23;
  swift_storeEnumTagMultiPayload(v21 + v19, v20, 2);
  v25 = v31;
  outlined init with copy of MLImageClassifier.ModelParameters(v31, v29);
  v26 = swift_allocObject(&unk_391D60, 104, 7);
  *(v26 + 16) = v30;
  qmemcpy((v26 + 24), v29, 0x50uLL);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLImageClassifier.init(trainingData:parameters:), v26);
  outlined destroy of MLImageClassifier.ModelParameters(v25);

  outlined destroy of MLActivityClassifier.ModelParameters(v32, type metadata accessor for MLClassifierMetrics);
  result = outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLClassifierMetrics);
  if (!v3)
  {
    return outlined init with take of MLClassifierMetrics(v35, v36, type metadata accessor for MLImageClassifier);
  }

  return result;
}

uint64_t closure #1 in MLImageClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a3;
  v3[13] = a2;
  v3[12] = a1;
  return swift_task_switch(closure #1 in MLImageClassifier.init(trainingData:parameters:), 0, 0);
}

{
  v3[14] = a3;
  v3[13] = a2;
  v3[12] = a1;
  return swift_task_switch(closure #1 in MLImageClassifier.init(trainingData:parameters:), 0, 0);
}

uint64_t closure #1 in MLImageClassifier.init(trainingData:parameters:)()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = specialized Sequence.flatMap<A>(_:)(v1);
  outlined init with copy of MLImageClassifier.ModelParameters(v2, (v0 + 2));
  v1;
  v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSay10Foundation3URLVG_GTt0g5(v1);
  v5 = swift_task_alloc(560);
  v0[15] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLImageClassifier.init(trainingData:parameters:);
  return MLImageClassifier.init(trainingData:parameters:classNames:)(v0[12], v3, (v0 + 2), v4);
}

{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in MLImageClassifier.init(trainingData:parameters:), 0, 0);
  }

  else
  {
    return (*(v3 + 8))();
  }
}

{
  v1 = *(v0 + 128);
  return (*(v0 + 8))();
}

{
  v1 = v0[13];
  v2 = v0[14];
  v3 = specialized Sequence.flatMap<A>(_:)(v1);
  outlined init with copy of MLImageClassifier.ModelParameters(v2, (v0 + 2));
  v1;
  v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSay10Foundation3URLVG_GTt0g5(v1);
  v5 = swift_task_alloc(560);
  v0[15] = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLImageClassifier.init(trainingData:parameters:);
  return MLImageClassifier.init(trainingData:parameters:classNames:)(v0[12], v3, (v0 + 2), v4);
}

{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in MLImageClassifier.init(trainingData:parameters:), 0, 0);
  }

  else
  {
    return (*(v3 + 8))();
  }
}

{
  return closure #1 in MLImageClassifier.init(trainingData:parameters:)();
}

uint64_t MLImageClassifier.init(trainingData:parameters:classNames:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a4;
  v4[27] = a3;
  v4[26] = a2;
  v4[25] = a1;
  v5 = (*(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[29] = swift_task_alloc(v5);
  v4[30] = swift_task_alloc(v5);
  v6 = (*(*(type metadata accessor for MLImageClassifier.Model(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[31] = swift_task_alloc(v6);
  v4[32] = swift_task_alloc(v6);
  v7 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v4[33] = v7;
  v8 = *(v7 - 8);
  v4[34] = v8;
  v9 = *(v8 + 64);
  v4[35] = v9;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[36] = swift_task_alloc(v10);
  v4[37] = swift_task_alloc(v10);
  v11 = (*(*(type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[38] = swift_task_alloc(v11);
  v4[39] = swift_task_alloc(v11);
  v12 = (*(*(type metadata accessor for MLImageClassifier.FeatureExtractorType(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[40] = swift_task_alloc(v12);
  v4[41] = swift_task_alloc(v12);
  v13 = type metadata accessor for MLImageClassifier.Classifier(0);
  v4[42] = swift_task_alloc((*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v4[43] = v14;
  v15 = *(v14 - 8);
  v4[44] = v15;
  v4[45] = swift_task_alloc((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.init(trainingData:parameters:classNames:), 0, 0);
}

uint64_t MLImageClassifier.init(trainingData:parameters:classNames:)()
{
  v1 = *(v0 + 360);
  v34 = *(v0 + 352);
  v30 = *(v0 + 344);
  v2 = *(v0 + 200);
  v33 = *(v0 + 216);
  v37 = type metadata accessor for MLImageClassifier(0);
  *(v0 + 368) = v37;
  v3 = *(v37 + 24);
  *(v0 + 552) = v3;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v4 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v5 = *(v4 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v1);
  v6 = *(v4 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v1);
  (*(v34 + 8))(v1, v30);
  *(v2 + v3) = 0;
  v7 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v3 + v2, v7, 1);
  v8 = *(v37 + 28);
  *(v0 + 556) = v8;
  v9 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v10 = swift_allocError(&type metadata for MLCreateError, v9, 0, 0);
  *v11 = 0xD0000000000000C0;
  *(v11 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v11 + 16) = 0;
  *(v11 + 32) = 0;
  *(v11 + 48) = 0;
  *(v2 + v8) = v10;
  swift_storeEnumTagMultiPayload(v2 + v8, v7, 2);
  outlined init with copy of MLImageClassifier.ModelParameters(v33, v2 + 8);
  MLImageClassifier.ModelParameters.validate()();
  if (v12)
  {
    v13 = *(v0 + 224);
    v14 = *(v0 + 208);
    outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
    v13;
    v14;
    v15 = *(v0 + 200);
    v16 = v15 + *(v0 + 556);
    v17 = v15 + *(v0 + 552);
    outlined destroy of MLImageClassifier.ModelParameters(v15 + 8);
    outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for MLClassifierMetrics);
    outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLClassifierMetrics);
    v18 = *(v0 + 336);
    v19 = *(v0 + 328);
    v20 = *(v0 + 320);
    v21 = *(v0 + 312);
    v29 = *(v0 + 304);
    v28 = *(v0 + 296);
    v27 = *(v0 + 288);
    v32 = *(v0 + 256);
    v31 = *(v0 + 248);
    v38 = *(v0 + 232);
    v35 = *(v0 + 240);
    *(v0 + 360);
    v18;
    v19;
    v20;
    v21;
    v29;
    v28;
    v27;
    v32;
    v31;
    v35;
    v38;
    return (*(v0 + 8))();
  }

  else
  {
    v36 = *(v0 + 336);
    v39 = *(v0 + 328);
    v23 = *(v0 + 224);
    v24 = *(v0 + 312);
    outlined init with copy of MLImageClassifier.ModelParameters(v2 + 8, v0 + 16);
    v23;
    MLImageClassifier.Classifier.init(labels:parameters:)(v23, (v0 + 16));
    MLImageClassifier.ModelParameters.algorithm.getter(v23);
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType));
    *(v0 + 376) = v25;
    *(v24 + *(v25 + 48));
    outlined init with take of MLClassifierMetrics(v24, v39, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    v26 = swift_task_alloc(144);
    *(v0 + 384) = v26;
    *v26 = v0;
    v26[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
    return MLImageClassifier.FeatureExtractor.init(type:)(v0 + 96, *(v0 + 328));
  }
}

{
  v3 = *(*v1 + 384);
  v2 = *v1;
  *(*v1 + 392) = v0;
  v3;
  if (v0)
  {
    v4 = *(v2 + 208);
    *(v2 + 224);
    v4;
    v5 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  else
  {
    v5 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  return swift_task_switch(v5, 0, 0);
}

{
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 216) + 16, v0 + 168, &demangling cache variable for type metadata for Any?);
  if (!*(v0 + 192))
  {
    BUG();
  }

  v24 = *(v0 + 392);
  v1 = *(v0 + 296);
  v25 = *(v0 + 288);
  v2 = *(v0 + 280);
  v32 = *(v0 + 272);
  v27 = *(v0 + 264);
  v29 = *(v0 + 208);
  v34 = *(v0 + 216);
  outlined init with take of Any((v0 + 168), (v0 + 136));
  swift_dynamicCast(v1, v0 + 136, &type metadata for Any + 8, v27, 7);
  v35 = *(v34 + 8);
  outlined init with copy of MLTrainingSessionParameters(v1, v25, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v3 = *(v32 + 80);
  v4 = ~*(v32 + 80) & (v3 + 24);
  v5 = swift_allocObject(&unk_391D98, v4 + v2, v3 | 7);
  *(v5 + 16) = v29;
  outlined init with take of MLClassifierMetrics(v25, v5 + v4, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLImageClassifier.init(trainingData:parameters:classNames:), v5);
  *(v0 + 400) = v6;
  *(v0 + 408) = v7;
  if (v24)
  {
    v30 = *(v0 + 336);
    v8 = *(v0 + 296);
    v9 = *(v0 + 216);
    v10 = *(v0 + 224);

    v10;
    outlined destroy of MLImageClassifier.ModelParameters(v9);
    outlined destroy of MLActivityClassifier.ModelParameters(v8, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    outlined destroy of MLImageClassifier.FeatureExtractor(v0 + 96);
    outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLImageClassifier.Classifier);
    v11 = *(v0 + 200);
    v12 = v11 + 8;
    v13 = v11 + *(v0 + 556);
    v14 = *(v0 + 552) + v11;
    outlined destroy of MLImageClassifier.ModelParameters(v12);
    outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLClassifierMetrics);
    outlined destroy of MLActivityClassifier.ModelParameters(v13, type metadata accessor for MLClassifierMetrics);
    v15 = *(v0 + 336);
    v16 = *(v0 + 328);
    v17 = *(v0 + 320);
    v18 = *(v0 + 312);
    v23 = *(v0 + 304);
    v22 = *(v0 + 296);
    v28 = *(v0 + 288);
    v36 = *(v0 + 256);
    v26 = *(v0 + 248);
    v31 = *(v0 + 232);
    v33 = *(v0 + 240);
    *(v0 + 360);
    v15;
    v16;
    v17;
    v18;
    v23;
    v22;
    v28;
    v36;
    v26;
    v33;
    v31;
    return (*(v0 + 8))();
  }

  else
  {
    v20 = v6;

    v21 = swift_task_alloc(416);
    *(v0 + 416) = v21;
    *v21 = v0;
    v21[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
    return ((&_s8CreateML17MLImageClassifierV18applyAugmentations2to19augmentationOptions14upsampleFactorSay0A12MLComponents16AnnotatedFeatureVySo7CIImageCSSGGx_AC017ImageAugmentationI0VSitYaKSlRzAM7ElementRtzlFZAN_Tt2B5Tu + _s8CreateML17MLImageClassifierV18applyAugmentations2to19augmentationOptions14upsampleFactorSay0A12MLComponents16AnnotatedFeatureVySo7CIImageCSSGGx_AC017ImageAugmentationI0VSitYaKSlRzAM7ElementRtzlFZAN_Tt2B5Tu))(v20, v35, 1);
  }
}

{
  v1 = v0[27];
  v2 = v0[28];
  v3 = *(v0[53] + 16);
  v4 = *(v2 + 16);
  v2;
  static MLImageClassifier.reportAnalytics(trainingExampleCount:classCount:parameters:)(v3, v4, v1);
  v5 = swift_task_alloc(64);
  v0[55] = v5;
  *v5 = v0;
  v5[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
  return ((&async function pointer to specialized MLImageClassifier.FeatureExtractor.extractFeatures<A>(from:) + async function pointer to specialized MLImageClassifier.FeatureExtractor.extractFeatures<A>(from:)))(v0[53]);
}

{
  v1 = *(v0[51] + 16);
  v0[58] = v1;
  if (v1)
  {
    v2 = swift_task_alloc(64);
    v0[61] = v2;
    *v2 = v0;
    v2[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
    return ((&async function pointer to specialized MLImageClassifier.FeatureExtractor.extractFeatures<A>(from:) + async function pointer to specialized MLImageClassifier.FeatureExtractor.extractFeatures<A>(from:)))(v0[51]);
  }

  else
  {
    v4 = swift_task_alloc(208);
    v0[59] = v4;
    *v4 = v0;
    v4[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
    v5 = v0[42];
    return ((&async function pointer to specialized MLImageClassifier.Classifier.fitted<A>(to:eventHandler:) + async function pointer to specialized MLImageClassifier.Classifier.fitted<A>(to:eventHandler:)))(v0[32], v0[56], 0, 0);
  }
}

{
  v3 = *(*v1 + 472);
  v2 = *v1;
  *(*v1 + 480) = v0;
  v3;
  if (v0)
  {
    v4 = v2[51];
    v2[50];
    v4;
    v5 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  else
  {
    v2[56];
    v5 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  return swift_task_switch(v5, 0, 0);
}

{
  v1 = v0[25];
  v2 = v0[32];
  v9 = v0[47];
  v3 = v0[46];
  v8 = v0[40];
  v4 = v0[38];
  outlined init with take of MLClassifierMetrics(v2, v1 + *(v3 + 32), type metadata accessor for MLImageClassifier.Model);
  MLImageClassifier.ModelParameters.algorithm.getter(v2);
  *(v4 + *(v9 + 48));
  outlined init with take of MLClassifierMetrics(v4, v8, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v5 = v1 + *(v3 + 32);
  v6 = swift_task_alloc(448);
  v0[66] = v6;
  *v6 = v0;
  v6[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
  return MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:)(v0[40]);
}

{
  v3 = *(*v1 + 512);
  v2 = *v1;
  *(*v1 + 520) = v0;
  v3;
  if (v0)
  {
    v4 = v2[51];
    v2[50];
    v4;
    v5 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  else
  {
    v6 = v2[56];
    v2[62];
    v6;
    v5 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  return swift_task_switch(v5, 0, 0);
}

{
  v1 = v0[25];
  v2 = v0[31];
  v9 = v0[47];
  v3 = v0[46];
  v8 = v0[40];
  v4 = v0[38];
  outlined init with take of MLClassifierMetrics(v2, v1 + *(v3 + 32), type metadata accessor for MLImageClassifier.Model);
  MLImageClassifier.ModelParameters.algorithm.getter(v2);
  *(v4 + *(v9 + 48));
  outlined init with take of MLClassifierMetrics(v4, v8, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v5 = v1 + *(v3 + 32);
  v6 = swift_task_alloc(448);
  v0[66] = v6;
  *v6 = v0;
  v6[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
  return MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:)(v0[40]);
}

{
  v47 = v0 + 96;
  v50 = *(v0 + 544);
  v1 = *(v0 + 536);
  v2 = *(v0 + 400);
  v3 = *(v0 + 200);
  v4 = *(v0 + 240);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 320), type metadata accessor for MLImageClassifier.FeatureExtractorType);
  *v3 = v1;
  specialized MLImageClassifier.evaluation<A>(on:)(v2);
  if (v50)
  {
    v5 = *(v0 + 536);
    v44 = *(v0 + 400);
    v6 = *(v0 + 336);
    v7 = *(v0 + 216);
    v8 = *(v0 + 296);
    *(v0 + 408);
    outlined destroy of MLImageClassifier.ModelParameters(v7);
    outlined destroy of MLActivityClassifier.ModelParameters(v8, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    outlined destroy of MLImageClassifier.FeatureExtractor(v47);
    outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLImageClassifier.Classifier);
    v44;

    v9 = *(v0 + 200);
    v10 = v9 + *(v0 + 556);
    v11 = v9 + *(v0 + 552);
    outlined destroy of MLImageClassifier.ModelParameters(v9 + 8);
    outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLClassifierMetrics);
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLClassifierMetrics);
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 200) + *(*(v0 + 368) + 32), type metadata accessor for MLImageClassifier.Model);
    v12 = *(v0 + 336);
    v13 = *(v0 + 328);
    v14 = *(v0 + 320);
    v15 = *(v0 + 312);
    v35 = *(v0 + 304);
    v42 = *(v0 + 296);
    v40 = *(v0 + 288);
    v38 = *(v0 + 256);
    v36 = *(v0 + 248);
    v48 = *(v0 + 232);
    v45 = *(v0 + 240);
    *(v0 + 360);
    v12;
    v13;
    v14;
    v15;
    v35;
    v42;
    v40;
    v38;
    v36;
    v45;
    v48;
    v16 = *(v0 + 8);
  }

  else
  {
    v17 = *(v0 + 240);
    v18 = *(v0 + 464);
    v19 = *(v0 + 200) + *(v0 + 552);
    *(v0 + 400);
    outlined assign with take of MLClassifierMetrics(v17, v19);
    v20 = *(v0 + 408);
    if (v18)
    {
      v21 = *(v0 + 200);
      v22 = *(v0 + 232);
      specialized MLImageClassifier.evaluation<A>(on:)(v20);
      v51 = *(v0 + 408);
      v26 = *(v0 + 336);
      v27 = *(v0 + 296);
      v28 = *(v0 + 232);
      v29 = *(v0 + 200) + *(v0 + 556);
      outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
      outlined destroy of MLActivityClassifier.ModelParameters(v27, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
      outlined destroy of MLImageClassifier.FeatureExtractor(v47);
      outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLImageClassifier.Classifier);
      v51;
      outlined assign with take of MLClassifierMetrics(v28, v29);
    }

    else
    {
      v23 = *(v0 + 336);
      v24 = *(v0 + 216);
      v25 = *(v0 + 296);
      v20;
      outlined destroy of MLImageClassifier.ModelParameters(v24);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
      outlined destroy of MLImageClassifier.FeatureExtractor(v47);
      outlined destroy of MLActivityClassifier.ModelParameters(v23, type metadata accessor for MLImageClassifier.Classifier);
    }

    v30 = *(v0 + 336);
    v31 = *(v0 + 328);
    v32 = *(v0 + 320);
    v33 = *(v0 + 312);
    v43 = *(v0 + 304);
    v41 = *(v0 + 296);
    v39 = *(v0 + 288);
    v37 = *(v0 + 256);
    v46 = *(v0 + 248);
    v49 = *(v0 + 232);
    v52 = *(v0 + 240);
    *(v0 + 360);
    v30;
    v31;
    v32;
    v33;
    v43;
    v41;
    v39;
    v37;
    v46;
    v52;
    v49;
    v16 = *(v0 + 8);
  }

  return v16();
}

{
  v1 = *(v0 + 336);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLImageClassifier.Classifier);
  v2 = *(v0 + 200);
  v10 = *(v0 + 392);
  v3 = v2 + *(v0 + 556);
  v4 = v2 + *(v0 + 552);
  outlined destroy of MLImageClassifier.ModelParameters(v2 + 8);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLClassifierMetrics);
  v5 = *(v0 + 336);
  v6 = *(v0 + 328);
  v7 = *(v0 + 320);
  v8 = *(v0 + 312);
  v17 = *(v0 + 304);
  v16 = *(v0 + 296);
  v15 = *(v0 + 288);
  v14 = *(v0 + 256);
  v13 = *(v0 + 248);
  v11 = *(v0 + 232);
  v12 = *(v0 + 240);
  *(v0 + 360);
  v5;
  v6;
  v7;
  v8;
  v17;
  v16;
  v15;
  v14;
  v13;
  v12;
  v11;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 400);
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined destroy of MLImageClassifier.FeatureExtractor(v0 + 96);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.Classifier);
  v1;
  v4 = *(v0 + 200);
  v12 = *(v0 + 432);
  v5 = v4 + *(v0 + 556);
  v6 = v4 + *(v0 + 552);
  outlined destroy of MLImageClassifier.ModelParameters(v4 + 8);
  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  v7 = *(v0 + 336);
  v8 = *(v0 + 328);
  v9 = *(v0 + 320);
  v10 = *(v0 + 312);
  v19 = *(v0 + 304);
  v18 = *(v0 + 296);
  v17 = *(v0 + 288);
  v16 = *(v0 + 256);
  v15 = *(v0 + 248);
  v13 = *(v0 + 232);
  v14 = *(v0 + 240);
  *(v0 + 360);
  v7;
  v8;
  v9;
  v10;
  v19;
  v18;
  v17;
  v16;
  v15;
  v14;
  v13;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined destroy of MLImageClassifier.FeatureExtractor(v0 + 96);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.Classifier);
  v1;
  v4 = *(v0 + 200);
  v12 = *(v0 + 456);
  v5 = v4 + *(v0 + 556);
  v6 = v4 + *(v0 + 552);
  outlined destroy of MLImageClassifier.ModelParameters(v4 + 8);
  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  v7 = *(v0 + 336);
  v8 = *(v0 + 328);
  v9 = *(v0 + 320);
  v10 = *(v0 + 312);
  v19 = *(v0 + 304);
  v18 = *(v0 + 296);
  v17 = *(v0 + 288);
  v16 = *(v0 + 256);
  v15 = *(v0 + 248);
  v13 = *(v0 + 232);
  v14 = *(v0 + 240);
  *(v0 + 360);
  v7;
  v8;
  v9;
  v10;
  v19;
  v18;
  v17;
  v16;
  v15;
  v14;
  v13;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 448);
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined destroy of MLImageClassifier.FeatureExtractor(v0 + 96);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.Classifier);
  v1;
  v4 = *(v0 + 200);
  v12 = *(v0 + 480);
  v5 = v4 + *(v0 + 556);
  v6 = v4 + *(v0 + 552);
  outlined destroy of MLImageClassifier.ModelParameters(v4 + 8);
  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  v7 = *(v0 + 336);
  v8 = *(v0 + 328);
  v9 = *(v0 + 320);
  v10 = *(v0 + 312);
  v19 = *(v0 + 304);
  v18 = *(v0 + 296);
  v17 = *(v0 + 288);
  v16 = *(v0 + 256);
  v15 = *(v0 + 248);
  v13 = *(v0 + 232);
  v14 = *(v0 + 240);
  *(v0 + 360);
  v7;
  v8;
  v9;
  v10;
  v19;
  v18;
  v17;
  v16;
  v15;
  v14;
  v13;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 408);
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined destroy of MLImageClassifier.FeatureExtractor(v0 + 96);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.Classifier);
  v1;
  v4 = *(v0 + 200);
  v12 = *(v0 + 504);
  v5 = v4 + *(v0 + 556);
  v6 = v4 + *(v0 + 552);
  outlined destroy of MLImageClassifier.ModelParameters(v4 + 8);
  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  v7 = *(v0 + 336);
  v8 = *(v0 + 328);
  v9 = *(v0 + 320);
  v10 = *(v0 + 312);
  v19 = *(v0 + 304);
  v18 = *(v0 + 296);
  v17 = *(v0 + 288);
  v16 = *(v0 + 256);
  v15 = *(v0 + 248);
  v13 = *(v0 + 232);
  v14 = *(v0 + 240);
  *(v0 + 360);
  v7;
  v8;
  v9;
  v10;
  v19;
  v18;
  v17;
  v16;
  v15;
  v14;
  v13;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 496);
  v19 = *(v0 + 448);
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined destroy of MLImageClassifier.FeatureExtractor(v0 + 96);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.Classifier);
  v1;
  v19;
  v4 = *(v0 + 200);
  v20 = *(v0 + 520);
  v5 = v4 + *(v0 + 556);
  v6 = v4 + *(v0 + 552);
  outlined destroy of MLImageClassifier.ModelParameters(v4 + 8);
  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  v7 = *(v0 + 336);
  v8 = *(v0 + 328);
  v9 = *(v0 + 320);
  v10 = *(v0 + 312);
  v18 = *(v0 + 304);
  v17 = *(v0 + 296);
  v16 = *(v0 + 288);
  v15 = *(v0 + 256);
  v14 = *(v0 + 248);
  v12 = *(v0 + 232);
  v13 = *(v0 + 240);
  *(v0 + 360);
  v7;
  v8;
  v9;
  v10;
  v18;
  v17;
  v16;
  v15;
  v14;
  v13;
  v12;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 216));
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined destroy of MLImageClassifier.FeatureExtractor(v0 + 96);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLImageClassifier.Classifier);
  v4 = *(v0 + 200);
  v12 = *(v0 + 544);
  v5 = v4 + *(v0 + 556);
  v6 = v4 + *(v0 + 552);
  outlined destroy of MLImageClassifier.ModelParameters(v4 + 8);
  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 200) + *(*(v0 + 368) + 32), type metadata accessor for MLImageClassifier.Model);
  v7 = *(v0 + 336);
  v8 = *(v0 + 328);
  v9 = *(v0 + 320);
  v10 = *(v0 + 312);
  v19 = *(v0 + 304);
  v18 = *(v0 + 296);
  v17 = *(v0 + 288);
  v16 = *(v0 + 256);
  v15 = *(v0 + 248);
  v13 = *(v0 + 232);
  v14 = *(v0 + 240);
  *(v0 + 360);
  v7;
  v8;
  v9;
  v10;
  v19;
  v18;
  v17;
  v16;
  v15;
  v14;
  v13;
  return (*(v0 + 8))();
}

uint64_t MLImageClassifier.init(trainingData:parameters:classNames:)(uint64_t a1)
{
  v4 = *(*v2 + 416);
  v3 = *v2;
  v3[53] = a1;
  v3[54] = v1;
  v4;
  if (v1)
  {
    v5 = v3[28];
    v3[51];
    v5;
    v6 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  else
  {
    v6 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v4 = *(*v2 + 440);
  v3 = *v2;
  v3[56] = a1;
  v3[57] = v1;
  v4;
  if (v1)
  {
    v5 = v3[51];
    v3[50];
    v5;
    v6 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  else
  {
    v3[53];
    v6 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v4 = *(*v2 + 488);
  v5 = *v2;
  v5[62] = a1;
  v5[63] = v1;
  v4;
  if (v1)
  {
    v6 = v5[56];
    v5[50];
    v6;
    return swift_task_switch(MLImageClassifier.init(trainingData:parameters:classNames:), 0, 0);
  }

  else
  {
    v8 = swift_task_alloc(208);
    v5[64] = v8;
    *v8 = v5;
    v8[1] = MLImageClassifier.init(trainingData:parameters:classNames:);
    v9 = v5[42];
    return ((&async function pointer to specialized MLImageClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:) + async function pointer to specialized MLImageClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)))(v5[31], v5[56], a1, 0, 0);
  }
}

{
  v4 = *(*v2 + 528);
  v3 = *v2;
  v3[67] = a1;
  v3[68] = v1;
  v4;
  if (v1)
  {
    v5 = v3[51];
    v3[50];
    v5;
    v6 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  else
  {
    v6 = MLImageClassifier.init(trainingData:parameters:classNames:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t closure #1 in MLImageClassifier.init(trainingData:parameters:classNames:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc(144);
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = closure #1 in MLImageClassifier.init(trainingData:parameters:classNames:);
  return static MLImageClassifier.collectImages(trainingData:validationData:)(a2, a3);
}

uint64_t closure #1 in MLImageClassifier.init(trainingData:parameters:classNames:)(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 24);
  v7 = *v3;
  v6;
  if (v2)
  {
    return (*(v7 + 8))();
  }

  *(v5 + 32) = a2;
  *(v5 + 40) = a1;
  return swift_task_switch(closure #1 in MLImageClassifier.init(trainingData:parameters:classNames:), 0, 0);
}

uint64_t static MLImageClassifier.collectImages(trainingData:validationData:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = a1;
  v3 = type metadata accessor for MLImageClassifier.DataSource(0);
  v2[4] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v2[5] = v4;
  v2[6] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageReader(0);
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v2[9] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(static MLImageClassifier.collectImages(trainingData:validationData:), 0, 0);
}

uint64_t static MLImageClassifier.collectImages(trainingData:validationData:)()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[5];
  ImageReader.init()();
  outlined init with copy of MLTrainingSessionParameters(v3, v2, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  switch(swift_getEnumCaseMultiPayload(v2, v4))
  {
    case 0u:
      v5 = v0[2];
      v6 = v0[6];
      v21 = *v6;
      v7 = *(v6 + 8);
      v8 = *(v6 + 16);
      v9 = *(v6 + 17);
      v5;
      v10 = specialized Collection.randomSplit<A, B>(strategy:)(v21, v7, v8 | (v9 << 8), v5);
      v12 = v11;
      v5;
      break;
    case 1u:
      v14 = v0[2];
      v15 = v0[4];
      outlined init with take of MLClassifierMetrics(v0[6], v15, type metadata accessor for MLImageClassifier.DataSource);
      v14;
      v16 = static _ImageUtilities.getImageURLsAndLabels(from:)(v15);
      v17 = v0[4];
      v10 = specialized Sequence.flatMap<A>(_:)(v16);
      v16;
      outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for MLImageClassifier.DataSource);
      goto LABEL_6;
    case 2u:
      v13 = *v0[6];
      v0[2];
      v10 = specialized Sequence.flatMap<A>(_:)(v13);
      v13;
LABEL_6:
      v12 = v0[2];
      break;
    case 3u:
      v12 = v0[2];
      v12;
      v10 = _swiftEmptyArrayStorage;
      break;
  }

  v0[11] = v12;
  v0[10] = v10;
  v18 = swift_task_alloc(272);
  v0[12] = v18;
  *v18 = v0;
  v18[1] = static MLImageClassifier.collectImages(trainingData:validationData:);
  v19 = v0[9];
  return ((&async function pointer to specialized Transformer.applied<A, B>(to:eventHandler:) + async function pointer to specialized Transformer.applied<A, B>(to:eventHandler:)))(v12, 0, 0);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  (*(*(v0 + 64) + 8))(v1, *(v0 + 56));
  v1;
  v3;
  v2;
  return (*(v0 + 8))(*(v0 + 104), *(v0 + 136));
}

{
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  v1 = *(v0 + 112);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  *(v0 + 72);
  v3;
  v2;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  (*(*(v0 + 64) + 8))(*(v0 + 72), v2);
  v1, v2;
  v3 = *(v0 + 128);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v0 + 72);
  v5;
  v4;
  return (*(v0 + 8))();
}

uint64_t static MLImageClassifier.collectImages(trainingData:validationData:)(uint64_t a1)
{
  v3 = *(*v2 + 88);
  v4 = *(*v2 + 96);
  v5 = *v2;
  v5[13] = a1;
  v5[14] = v1;
  v4;
  v3;
  if (v1)
  {
    v5[10];
    return swift_task_switch(static MLImageClassifier.collectImages(trainingData:validationData:), 0, 0);
  }

  else
  {
    v7 = swift_task_alloc(272);
    v5[15] = v7;
    *v7 = v5;
    v7[1] = static MLImageClassifier.collectImages(trainingData:validationData:);
    v8 = v5[9];
    return ((&async function pointer to specialized Transformer.applied<A, B>(to:eventHandler:) + async function pointer to specialized Transformer.applied<A, B>(to:eventHandler:)))(v5[10], 0, 0);
  }
}

{
  v5 = *(*v2 + 120);
  v4 = *v2;
  *(*v2 + 128) = v1;
  v5;
  if (v1)
  {
    v4[13];
    v6 = static MLImageClassifier.collectImages(trainingData:validationData:);
  }

  else
  {
    v4[10];
    v4[17] = a1;
    v6 = static MLImageClassifier.collectImages(trainingData:validationData:);
  }

  return swift_task_switch(v6, 0, 0);
}

char static MLImageClassifier.reportAnalytics(trainingExampleCount:classCount:parameters:)(int a1, int a2, void *a3)
{
  v12 = v3;
  v5 = *(*(type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  result = AnalyticsReporter.init()();
  if ((result & 1) == 0)
  {
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_imageClassifier, __PAIR128__(("ImageClassifier\n\nParameters\n" + 0x8000000000000000), 0xD000000000000010), a1);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_imageClassifier, __PAIR128__(("Number of Images" + 0x8000000000000000), 0xD000000000000011), a2);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_imageClassifier, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), *a3);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_imageClassifier, __PAIR128__(("Number of Classes" + 0x8000000000000000), 0xD000000000000014), a3[1]);
    MLImageClassifier.ModelParameters.algorithm.getter(12);
    v9 = MLImageClassifier.ModelParameters.ModelAlgorithmType.description.getter(12);
    v11 = v10;
    outlined destroy of MLActivityClassifier.ModelParameters(&v12, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_imageClassifier, __PAIR128__(0xE90000000000006DLL, 0x687469726F676C41), __PAIR128__(v11, v9));
    return v11;
  }

  return result;
}

uint64_t specialized MLImageClassifier.evaluation<A>(on:)(uint64_t a1)
{
  v15 = v1;
  MLComponents16AnnotatedFeatureVySo7CIImageCSSGG_AJs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B59RtzlFAlMcfu_32ebed8ba5c9417264c39088de476e42ecAmLTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVySo7CIImageCSSGG_AJs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B59RtzlFAlMcfu_32ebed8ba5c9417264c39088de476e42ecAmLTf3nnnpk_nTf1cn_n(a1);
  v4 = MLImageClassifier.performRequests(_:)(MLComponents16AnnotatedFeatureVySo7CIImageCSSGG_AJs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B59RtzlFAlMcfu_32ebed8ba5c9417264c39088de476e42ecAmLTf3nnnpk_nTf1cn_n);
  result = MLComponents16AnnotatedFeatureVySo7CIImageCSSGG_AJs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B59RtzlFAlMcfu_32ebed8ba5c9417264c39088de476e42ecAmLTf3nnnpk_nTf1cn_n;
  if (!v2)
  {
    MLComponents16AnnotatedFeatureVySo7CIImageCSSGG_SSs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B63RtzlFSSAMcfu0_33_7eec49b2e7313abe927b434220475ef8AMSSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVySo7CIImageCSSGG_SSs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B63RtzlFSSAMcfu0_33_7eec49b2e7313abe927b434220475ef8AMSSTf3nnnpk_nTf1cn_n(a1);
    MLComponents16AnnotatedFeatureVySo7CIImageCSSGG_SSs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B63RtzlFSSAMcfu0_33_7eec49b2e7313abe927b434220475ef8AMSSTf3nnnpk_nTf1cn_n;
    v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(MLComponents16AnnotatedFeatureVySo7CIImageCSSGG_SSs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B63RtzlFSSAMcfu0_33_7eec49b2e7313abe927b434220475ef8AMSSTf3nnnpk_nTf1cn_n);
    v13 = v4;
    v14 = MLComponents16AnnotatedFeatureVySo7CIImageCSSGG_SSs5NeverOTg503_s8d87ML17MLImageClassifierV10evaluation2onAA19MLClassifierMetricsVx_tKSlRz0A12MLComponents16fg5VySo7h5CSSG7B63RtzlFSSAMcfu0_33_7eec49b2e7313abe927b434220475ef8AMSSTf3nnnpk_nTf1cn_n;
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
    v9 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v10 = v15;
    ClassificationMetrics.init<A, B>(predicted:groundTruth:labels:)(&v13, &v14, v7, &type metadata for String, v8, v8, &protocol witness table for String, v9, v9);
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    swift_storeEnumTagMultiPayload(v10, v11, 0);
    v12 = type metadata accessor for MLClassifierMetrics.Contents(0);
    return swift_storeEnumTagMultiPayload(v10, v12, 0);
  }

  return result;
}

uint64_t MLImageClassifier.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[43] = a2;
  v2[42] = a1;
  v3 = type metadata accessor for MLClassifierMetrics(0);
  v2[44] = v3;
  v2[45] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLClassifierMetrics?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[46] = swift_task_alloc(v4);
  v2[47] = swift_task_alloc(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.Model?);
  v2[48] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLImageClassifier(0);
  v2[49] = v6;
  v2[50] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v2[51] = v7;
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[52] = swift_task_alloc(v8);
  v2[53] = swift_task_alloc(v8);
  v9 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v2[54] = v9;
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[55] = swift_task_alloc(v10);
  v2[56] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?);
  v2[57] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MLImageClassifier.PersistentParameters(0);
  v2[58] = v12;
  v2[59] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.init(delegate:), 0, 0);
}

uint64_t MLImageClassifier.init(delegate:)()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 456);
  v3 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingParameters + *(v0 + 344);
  swift_beginAccess(v3, v0 + 240, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v18 = (v0 + 208);
  v21 = (v0 + 176);
  v4 = *(v0 + 472);
  v5 = *(v0 + 464);
  v6 = *(v0 + 448);
  v23 = *(v0 + 440);
  v22 = *(v0 + 432);
  v26 = *(v0 + 424);
  v20 = *(v0 + 416);
  v19 = *(v0 + 408);
  v17 = *(v0 + 344);
  v16 = *(v0 + 384);
  outlined init with take of MLClassifierMetrics(*(v0 + 456), v4, type metadata accessor for MLImageClassifier.PersistentParameters);
  outlined init with copy of MLTrainingSessionParameters(v4 + v5[5], v6, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v24 = *(v4 + v5[8]);
  v25 = *(v4 + v5[9]);
  v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48);
  outlined init with copy of MLTrainingSessionParameters(v4 + v5[6], v26, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v8 = *(v4 + v5[7]);
  v9 = v8;
  if (v8 == 2)
  {
    v9 = 0;
  }

  *(v26 + v7) = v9;
  *(v0 + 80) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v24;
  *(v0 + 24) = v25;
  outlined init with copy of MLTrainingSessionParameters(v6, v23, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  *(v0 + 200) = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  outlined init with take of MLClassifierMetrics(v23, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined copy of MLImageClassifier.ModelParameters.ClassifierType?(v8);
  outlined assign with take of Any?(v21, v0 + 32);
  outlined init with copy of MLTrainingSessionParameters(v26, v20, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  *(v0 + 232) = v19;
  v11 = __swift_allocate_boxed_opaque_existential_0(v18);
  outlined init with take of MLClassifierMetrics(v20, v11, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined assign with take of Any?(v18, v0 + 64);
  outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v12 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_model + v17;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_model + v17, v0 + 264, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, v16, &demangling cache variable for type metadata for MLImageClassifier.Model?);
  v13 = type metadata accessor for MLImageClassifier.Model(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v13) == 1)
  {
    BUG();
  }

  outlined init with copy of MLImageClassifier.ModelParameters(v0 + 16, v0 + 96);
  v14 = swift_task_alloc(128);
  *(v0 + 480) = v14;
  *v14 = v0;
  v14[1] = MLImageClassifier.init(delegate:);
  return MLImageClassifier.init(_:parameters:)(*(v0 + 400), *(v0 + 384), v0 + 96);
}

{
  v2 = *(*v1 + 480);
  *(*v1 + 488) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.init(delegate:);
  }

  else
  {
    v3 = MLImageClassifier.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  outlined init with take of MLClassifierMetrics(*(v0 + 400), *(v0 + 336), type metadata accessor for MLImageClassifier);
  v4 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingMetrics + v3;
  swift_beginAccess(v4, v0 + 288, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, v1, &demangling cache variable for type metadata for MLClassifierMetrics?);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    BUG();
  }

  v5 = *(v0 + 472);
  v6 = *(v0 + 392);
  v25 = *(v0 + 376);
  v22 = *(v0 + 368);
  v20 = *(v0 + 352);
  v7 = *(v0 + 336);
  v8 = *(v0 + 344);
  outlined destroy of MLImageClassifier.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLImageClassifier.PersistentParameters);
  outlined assign with take of MLClassifierMetrics(v25, v7 + *(v6 + 24));
  v9 = v8 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationMetrics;
  swift_beginAccess(v8 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationMetrics, v0 + 312, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, v22, &demangling cache variable for type metadata for MLClassifierMetrics?);

  if (__swift_getEnumTagSinglePayload(v22, 1, v20) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 368), &demangling cache variable for type metadata for MLClassifierMetrics?);
  }

  else
  {
    v10 = *(v0 + 392);
    v11 = *(v0 + 336);
    v12 = *(v0 + 360);
    outlined init with take of MLClassifierMetrics(*(v0 + 368), v12, type metadata accessor for MLClassifierMetrics);
    outlined assign with take of MLClassifierMetrics(v12, v11 + *(v10 + 28));
  }

  v13 = *(v0 + 456);
  v14 = *(v0 + 448);
  v15 = *(v0 + 440);
  v16 = *(v0 + 424);
  v19 = *(v0 + 416);
  v18 = *(v0 + 400);
  v26 = *(v0 + 384);
  v24 = *(v0 + 376);
  v21 = *(v0 + 360);
  v23 = *(v0 + 368);
  *(v0 + 472);
  v13;
  v14;
  v15;
  v16;
  v19;
  v18;
  v26;
  v24;
  v23;
  v21;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 472);
  v2 = *(v0 + 456);
  v3 = *(v0 + 448);
  v14 = *(v0 + 440);
  v13 = *(v0 + 424);
  v12 = *(v0 + 416);
  v11 = *(v0 + 400);
  v10 = *(v0 + 384);
  v9 = *(v0 + 376);
  v8 = *(v0 + 368);
  v4 = *(v0 + 344);
  v7 = *(v0 + 360);

  outlined destroy of MLImageClassifier.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLImageClassifier.PersistentParameters);
  v1;
  v2;
  v3;
  v14;
  v13;
  v12;
  v11;
  v10;
  v9;
  v8;
  v7;
  v5 = *(v0 + 488);
  return (*(v0 + 8))();
}

void *MLImageClassifier.debugDescription.getter()
{
  v1 = v0;
  v25._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v25._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v25._countAndFlagsBits = MLImageClassifier.ModelParameters.description.getter();
  v6 = v5;
  v7 = type metadata accessor for MLImageClassifier(0);
  v8 = v0 + *(v7 + 24);
  v22._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v22._object = v9;
  v10 = *(v7 + 28);
  v11 = v6;
  outlined init with copy of MLTrainingSessionParameters(v1 + v10, &v21, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v25._object) = swift_getEnumCaseMultiPayload(&v21, v25._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v21, type metadata accessor for MLClassifierMetrics.Contents);
  v23._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v13 = v12;
  v23._object = 0xD00000000000001CLL;
  v24 = "odelType" + 0x8000000000000000;
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

NSAttributedString MLImageClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLImageClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

void *key path getter for AnnotatedFeature.feature : AnnotatedFeature<CIImage, String>()
{
  v4 = v0;
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>);
  AnnotatedFeature.feature.getter(v2);
  result = v4;
  *v1 = v4;
  return result;
}

uint64_t key path setter for AnnotatedFeature.feature : AnnotatedFeature<CIImage, String>(id *a1)
{
  v3[0] = *a1;
  v3[0];
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>);
  return AnnotatedFeature.feature.setter(v3, v1);
}

uint64_t key path getter for AnnotatedFeature.annotation : AnnotatedFeature<CIImage, String>()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>);
  result = AnnotatedFeature.annotation.getter(v2);
  *v1 = v4;
  return result;
}

uint64_t key path setter for AnnotatedFeature.annotation : AnnotatedFeature<CIImage, String>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v5[0] = v1;
  v5[1] = v2;
  v2;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>);
  return AnnotatedFeature.annotation.setter(v5, v3);
}

uint64_t partial apply for closure #1 in MLImageClassifier.init(trainingData:parameters:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = swift_task_alloc(144);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in MLImageClassifier.init(trainingData:parameters:);
  return closure #1 in MLImageClassifier.init(trainingData:parameters:)(a1, v3, v1 + 24);
}

{
  v3 = *(v1 + 16);
  v4 = swift_task_alloc(144);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLImageClassifier.init(trainingData:parameters:)(a1, v3, v1 + 24);
}

uint64_t objectdestroyTm_2()
{
  v0[2];
  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  }

  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  }

  return swift_deallocObject(v0, 104, 7);
}

id sub_14151E()
{
  v1 = v0;
  result = MLImageClassifier.model.getter();
  *v1 = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MLImageClassifier(char *a1, char **a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = &v5[(v4 + 16) & ~v4];

    return a1;
  }

  *(a1 + 8) = *(a2 + 1);
  v7 = a2[6];
  v5;
  if (v7)
  {
    *(a1 + 6) = v7;
    (**(v7 - 1))((a1 + 24), (a2 + 3), v7);
  }

  else
  {
    v8 = *(a2 + 3);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v8;
  }

  v9 = a1 + 56;
  v10 = (a2 + 7);
  v11 = a2[10];
  if (v11)
  {
    *(a1 + 10) = v11;
    (**(v11 - 1))(v9, v10);
  }

  else
  {
    v12 = *v10;
    *(a1 + 72) = *(a2 + 9);
    *v9 = v12;
  }

  v13 = *(a3 + 24);
  v14 = &a1[v13];
  v15 = (a2 + v13);
  v16 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v15, v16);
  v67 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload == 2)
  {
    v26 = *v15;
    swift_errorRetain(v26);
    *v14 = v26;
    v23 = v14;
LABEL_16:
    v25 = a3;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v27 = swift_getEnumCaseMultiPayload(v15, v65);
    v70 = v27 == 1;
    v28 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v27 == 1)
    {
      v28 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledName(v28);
    v30 = v15;
    v23 = v14;
    (*(*(v29 - 8) + 16))(v14, v30, v29);
    swift_storeEnumTagMultiPayload(v14, v65, v70);
    goto LABEL_16;
  }

  *v14 = *v15;
  v58 = v14;
  v61 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v69 = v16;
  v18 = *(v61 + 20);
  v57 = &v14[v18];
  v19 = type metadata accessor for DataFrame(0);
  v64 = *(*(v19 - 8) + 16);
  v20 = v15 + v18;
  v16 = v69;
  v64(v57, v20, v19);
  v21 = *(v61 + 24);
  v22 = v15 + v21;
  v23 = v58;
  v24 = v19;
  v25 = a3;
  v64(&v58[v21], v22, v24);
LABEL_17:
  swift_storeEnumTagMultiPayload(v23, v16, v67);
  v31 = *(v25 + 28);
  v68 = &a1[v31];
  v32 = (a2 + v31);
  v33 = swift_getEnumCaseMultiPayload(v32, v16);
  v66 = v33;
  if (v33 == 2)
  {
    v42 = *v32;
    swift_errorRetain(v42);
    *v68 = v42;
    v40 = v68;
  }

  else if (v33 == 1)
  {
    *v68 = *v32;
    v62 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v34 = *(v62 + 20);
    v59 = &v68[v34];
    v71 = v16;
    v35 = type metadata accessor for DataFrame(0);
    v36 = v32 + v34;
    v37 = *(*(v35 - 8) + 16);
    v37(v59, v36, v35);
    v38 = *(v62 + 24);
    v39 = v32 + v38;
    v40 = v68;
    v41 = v35;
    v16 = v71;
    v37(&v68[v38], v39, v41);
    v25 = a3;
  }

  else
  {
    v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v43 = swift_getEnumCaseMultiPayload(v32, v72);
    v63 = v43 == 1;
    v44 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v43 == 1)
    {
      v44 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledName(v44);
    v46 = v32;
    v40 = v68;
    (*(*(v45 - 8) + 16))(v68, v46, v45);
    swift_storeEnumTagMultiPayload(v68, v72, v63);
  }

  swift_storeEnumTagMultiPayload(v40, v16, v66);
  v47 = *(v25 + 32);
  v48 = &a1[v47];
  v49 = a2 + v47;
  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  if (swift_getEnumCaseMultiPayload(v49, v50) == 1)
  {
    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
    (*(*(v51 - 8) + 16))(v48, v49, v51);
    v52 = 1;
    v53 = v48;
    v54 = v50;
  }

  else
  {
    v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
    (*(*(v55 - 8) + 16))(v48, v49, v55);
    v53 = v48;
    v54 = v50;
    v52 = 0;
  }

  swift_storeEnumTagMultiPayload(v53, v54, v52);
  return a1;
}

uint64_t destroy for MLImageClassifier(uint64_t a1, uint64_t a2)
{
  v2 = a2;

  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 24));
  }

  if (*(a1 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
  }

  v4 = (a1 + *(a2 + 24));
  v5 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v4, v5);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v4;
      break;
    case 1:
      v29 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v9 = &v4[*(v29 + 20)];
      v10 = type metadata accessor for DataFrame(0);
      v27 = v5;
      v11 = *(*(v10 - 8) + 8);
      v12 = v9;
      v2 = a2;
      v11(v12, v10);
      v11(&v4[*(v29 + 24)], v10);
      v5 = v27;
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

      v13 = __swift_instantiateConcreteTypeFromMangledName(v8);
      (*(*(v13 - 8) + 8))(v4, v13);
      break;
  }

  v14 = (a1 + *(v2 + 28));
  v15 = swift_getEnumCaseMultiPayload(v14, v5);
  switch(v15)
  {
    case 2:
      *v14;
      break;
    case 1:
      v30 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v18 = &v14[*(v30 + 20)];
      v19 = type metadata accessor for DataFrame(0);
      v28 = v2;
      v20 = *(*(v19 - 8) + 8);
      v20(v18, v19);
      v20(&v14[*(v30 + 24)], v19);
      v2 = v28;
      break;
    case 0:
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v14, v16) == 1)
      {
        v17 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v17 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v21 = __swift_instantiateConcreteTypeFromMangledName(v17);
      (*(*(v21 - 8) + 8))(v14, v21);
      break;
  }

  v22 = *(v2 + 32) + a1;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v24 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v22, v23) == 1)
  {
    v24 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledName(v24);
  return (*(*(v25 - 8) + 8))(v22, v25);
}

uint64_t initializeWithCopy for MLImageClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 48);
  v5;
  if (v6)
  {
    *(a1 + 48) = v6;
    (**(v6 - 8))(a1 + 24, a2 + 24, v6);
  }

  else
  {
    v7 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v7;
  }

  v8 = (a1 + 56);
  v9 = (a2 + 56);
  v10 = *(a2 + 80);
  if (v10)
  {
    *(a1 + 80) = v10;
    (**(v10 - 8))(v8, v9);
  }

  else
  {
    v11 = *v9;
    *(a1 + 72) = *(a2 + 72);
    *v8 = v11;
  }

  v12 = a3[6];
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v49 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v14, v49);
  v51 = a1;
  if (EnumCaseMultiPayload == 2)
  {
    v21 = *v14;
    swift_errorRetain(*v14);
    *v13 = v21;
    a1 = v51;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *v13 = *v14;
    v52 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v16 = *(v52 + 20);
    v48 = &v13[v16];
    v17 = type metadata accessor for DataFrame(0);
    v56 = v13;
    v18 = *(*(v17 - 8) + 16);
    v19 = &v14[v16];
    EnumCaseMultiPayload = 1;
    v18(v48, v19, v17);
    v20 = v17;
    a1 = v51;
    v18(&v56[*(v52 + 24)], &v14[*(v52 + 24)], v20);
    v13 = v56;
  }

  else
  {
    v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v22 = swift_getEnumCaseMultiPayload(v14, v57);
    v54 = v22 == 1;
    v23 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v22 == 1)
    {
      v23 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v24 = __swift_instantiateConcreteTypeFromMangledName(v23);
    (*(*(v24 - 8) + 16))(v13, v14, v24);
    swift_storeEnumTagMultiPayload(v13, v57, v54);
  }

  swift_storeEnumTagMultiPayload(v13, v49, EnumCaseMultiPayload);
  v25 = a3[7];
  v26 = (a1 + v25);
  v27 = (a2 + v25);
  v28 = swift_getEnumCaseMultiPayload(v27, v49);
  if (v28 == 2)
  {
    v34 = *v27;
    swift_errorRetain(*v27);
    *v26 = v34;
  }

  else if (v28 == 1)
  {
    *v26 = *v27;
    v55 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v29 = *(v55 + 20);
    v53 = &v26[v29];
    v30 = type metadata accessor for DataFrame(0);
    v31 = &v27[v29];
    v32 = *(*(v30 - 8) + 16);
    v32(v53, v31, v30);
    v33 = v30;
    v28 = 1;
    v32(&v26[*(v55 + 24)], &v27[*(v55 + 24)], v33);
  }

  else
  {
    v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v35 = swift_getEnumCaseMultiPayload(v27, v58);
    v36 = v35 == 1;
    v37 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v35 == 1)
    {
      v37 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledName(v37);
    (*(*(v38 - 8) + 16))(v26, v27, v38);
    swift_storeEnumTagMultiPayload(v26, v58, v36);
  }

  swift_storeEnumTagMultiPayload(v26, v49, v28);
  v39 = a3[8];
  v40 = v39 + v51;
  v41 = v39 + a2;
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v43 = swift_getEnumCaseMultiPayload(v41, v42);
  v44 = v43 == 1;
  v45 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (v43 == 1)
  {
    v45 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v46 = __swift_instantiateConcreteTypeFromMangledName(v45);
  (*(*(v46 - 8) + 16))(v40, v41, v46);
  swift_storeEnumTagMultiPayload(v40, v42, v44);
  return v51;
}

uint64_t assignWithCopy for MLImageClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v6;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v8 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (v8)
    {
      __swift_assign_boxed_opaque_existential_0((a1 + 24), (a2 + 24));
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 24));
  }

  else if (v8)
  {
    *(a1 + 48) = v8;
    (**(v8 - 8))(a1 + 24, a2 + 24);
    goto LABEL_8;
  }

  v9 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v9;
LABEL_8:
  v10 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (v10)
    {
      __swift_assign_boxed_opaque_existential_0((a1 + 56), (a2 + 56));
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
  }

  else if (v10)
  {
    *(a1 + 80) = v10;
    (**(v10 - 8))(a1 + 56, a2 + 56);
    goto LABEL_15;
  }

  v11 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v11;
LABEL_15:
  if (a1 != a2)
  {
    v42 = a3;
    v12 = *(a3 + 24);
    v13 = (a1 + v12);
    v14 = (a2 + v12);
    outlined destroy of MLActivityClassifier.ModelParameters(v13, type metadata accessor for MLClassifierMetrics.Contents);
    v15 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v14, v15);
    v50 = v15;
    v52 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v19 = *v14;
      swift_errorRetain(*v14);
      *v13 = v19;
      v15 = v50;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v13 = *v14;
      v47 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v17 = *(v47 + 20);
      v43 = &v13[v17];
      v45 = type metadata accessor for DataFrame(0);
      v54 = *(*(v45 - 8) + 16);
      v18 = &v14[v17];
      v15 = v50;
      v54(v43, v18, v45);
      v54(&v13[*(v47 + 24)], &v14[*(v47 + 24)], v45);
    }

    else
    {
      v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v20 = swift_getEnumCaseMultiPayload(v14, v55);
      v48 = v20 == 1;
      v21 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v20 == 1)
      {
        v21 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v22 = __swift_instantiateConcreteTypeFromMangledName(v21);
      (*(*(v22 - 8) + 16))(v13, v14, v22);
      swift_storeEnumTagMultiPayload(v13, v55, v48);
    }

    swift_storeEnumTagMultiPayload(v13, v15, v52);
    v23 = *(v42 + 28);
    v24 = (a1 + v23);
    v25 = (a2 + v23);
    outlined destroy of MLActivityClassifier.ModelParameters(v24, type metadata accessor for MLClassifierMetrics.Contents);
    v26 = swift_getEnumCaseMultiPayload(v25, v15);
    v53 = v26;
    if (v26 == 2)
    {
      v29 = *v25;
      swift_errorRetain(*v25);
      *v24 = v29;
      v15 = v50;
    }

    else if (v26 == 1)
    {
      *v24 = *v25;
      v49 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v27 = *(v49 + 20);
      v44 = &v24[v27];
      v46 = type metadata accessor for DataFrame(0);
      v56 = *(*(v46 - 8) + 16);
      v28 = &v25[v27];
      v15 = v50;
      v56(v44, v28, v46);
      v56(&v24[*(v49 + 24)], &v25[*(v49 + 24)], v46);
    }

    else
    {
      v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v30 = swift_getEnumCaseMultiPayload(v25, v51);
      v57 = v30 == 1;
      v31 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v30 == 1)
      {
        v31 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v32 = __swift_instantiateConcreteTypeFromMangledName(v31);
      (*(*(v32 - 8) + 16))(v24, v25, v32);
      swift_storeEnumTagMultiPayload(v24, v51, v57);
    }

    swift_storeEnumTagMultiPayload(v24, v15, v53);
    v33 = *(v42 + 32);
    v34 = a1 + v33;
    v35 = v33 + a2;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1 + v33, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v37 = swift_getEnumCaseMultiPayload(v35, v36);
    v38 = v37 == 1;
    v39 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
    if (v37 == 1)
    {
      v39 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledName(v39);
    (*(*(v40 - 8) + 16))(v34, v35, v40);
    swift_storeEnumTagMultiPayload(v34, v36, v38);
  }

  return a1;
}

void *initializeWithTake for MLImageClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  qmemcpy(a1 + 1, a2 + 1, 0x50uLL);
  v4 = a3[6];
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v7);
  v50 = v7;
  if (EnumCaseMultiPayload == 1)
  {
    *v5 = *v6;
    v52 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v17 = *(v52 + 20);
    v48 = &v5[v17];
    v18 = type metadata accessor for DataFrame(0);
    v45 = v5;
    v19 = *(*(v18 - 8) + 32);
    v19(v48, &v6[v17], v18);
    v20 = v18;
    v7 = v50;
    v19(&v45[*(v52 + 24)], &v6[*(v52 + 24)], v20);
    v16 = 1;
    v14 = v45;
    v15 = v50;
LABEL_7:
    swift_storeEnumTagMultiPayload(v14, v15, v16);
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v9 = swift_getEnumCaseMultiPayload(v6, v51);
    v10 = v9 == 1;
    v11 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v9 == 1)
    {
      v11 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledName(v11);
    (*(*(v12 - 8) + 32))(v5, v6, v12);
    v13 = v10;
    v7 = v50;
    swift_storeEnumTagMultiPayload(v5, v51, v13);
    v14 = v5;
    v15 = v50;
    v16 = 0;
    goto LABEL_7;
  }

  memcpy(v5, v6, *(*(v7 - 8) + 64));
LABEL_9:
  v21 = a3[7];
  v22 = a1 + v21;
  v23 = a2 + v21;
  v24 = swift_getEnumCaseMultiPayload(v23, v7);
  if (v24 == 1)
  {
    *v22 = *v23;
    v54 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v32 = *(v54 + 20);
    v49 = &v22[v32];
    v33 = type metadata accessor for DataFrame(0);
    v34 = &v23[v32];
    v35 = *(*(v33 - 8) + 32);
    v35(v49, v34, v33);
    v35(&v22[*(v54 + 24)], &v23[*(v54 + 24)], v33);
    v31 = 1;
    v29 = v22;
    v30 = v50;
LABEL_15:
    swift_storeEnumTagMultiPayload(v29, v30, v31);
    goto LABEL_17;
  }

  if (!v24)
  {
    v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v25 = swift_getEnumCaseMultiPayload(v23, v53);
    v26 = v25 == 1;
    v27 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v25 == 1)
    {
      v27 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v28 = __swift_instantiateConcreteTypeFromMangledName(v27);
    (*(*(v28 - 8) + 32))(v22, v23, v28);
    swift_storeEnumTagMultiPayload(v22, v53, v26);
    v29 = v22;
    v30 = v50;
    v31 = 0;
    goto LABEL_15;
  }

  memcpy(v22, v23, *(*(v7 - 8) + 64));
LABEL_17:
  v36 = a3[8];
  v37 = a1 + v36;
  v38 = a2 + v36;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v40 = swift_getEnumCaseMultiPayload(v38, v39);
  v41 = v40 == 1;
  v42 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (v40 == 1)
  {
    v42 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v43 = __swift_instantiateConcreteTypeFromMangledName(v42);
  (*(*(v43 - 8) + 32))(v37, v38, v43);
  swift_storeEnumTagMultiPayload(v37, v39, v41);
  return a1;
}

uint64_t assignWithTake for MLImageClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 24));
  }

  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  if (*(a1 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 56));
  }

  v8 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v8;
  if (a1 != a2)
  {
    v48 = a3;
    v9 = *(a3 + 24);
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLClassifierMetrics.Contents);
    v12 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v11, v12);
    v53 = v12;
    if (EnumCaseMultiPayload == 1)
    {
      *v10 = *v11;
      v49 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v22 = *(v49 + 20);
      v51 = &v10[v22];
      v47 = type metadata accessor for DataFrame(0);
      v55 = *(*(v47 - 8) + 32);
      v23 = &v11[v22];
      v12 = v53;
      v55(v51, v23, v47);
      v55(&v10[*(v49 + 24)], &v11[*(v49 + 24)], v47);
      v21 = 1;
      v19 = v10;
      v20 = v53;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(v10, v11, *(*(v12 - 8) + 64));
LABEL_14:
        v24 = *(v48 + 28);
        v25 = (a1 + v24);
        v26 = (a2 + v24);
        outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLClassifierMetrics.Contents);
        v27 = swift_getEnumCaseMultiPayload(v26, v12);
        if (v27 == 1)
        {
          *v25 = *v26;
          v57 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v35 = *(v57 + 20);
          v50 = &v25[v35];
          v52 = type metadata accessor for DataFrame(0);
          v36 = &v26[v35];
          v37 = *(*(v52 - 8) + 32);
          v37(v50, v36, v52);
          v37(&v25[*(v57 + 24)], &v26[*(v57 + 24)], v52);
          v34 = 1;
          v32 = v25;
          v33 = v53;
        }

        else
        {
          if (v27)
          {
            memcpy(v25, v26, *(*(v12 - 8) + 64));
            goto LABEL_22;
          }

          v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v28 = swift_getEnumCaseMultiPayload(v26, v56);
          v29 = v28 == 1;
          v30 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v28 == 1)
          {
            v30 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v31 = __swift_instantiateConcreteTypeFromMangledName(v30);
          (*(*(v31 - 8) + 32))(v25, v26, v31);
          swift_storeEnumTagMultiPayload(v25, v56, v29);
          v32 = v25;
          v33 = v53;
          v34 = 0;
        }

        swift_storeEnumTagMultiPayload(v32, v33, v34);
LABEL_22:
        v38 = *(v48 + 32);
        v39 = a1 + v38;
        v40 = v38 + a2;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1 + v38, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
        v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
        v42 = swift_getEnumCaseMultiPayload(v40, v41);
        v43 = v42 == 1;
        v44 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
        if (v42 == 1)
        {
          v44 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
        }

        v45 = __swift_instantiateConcreteTypeFromMangledName(v44);
        (*(*(v45 - 8) + 32))(v39, v40, v45);
        swift_storeEnumTagMultiPayload(v39, v41, v43);
        return a1;
      }

      v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v14 = swift_getEnumCaseMultiPayload(v11, v54);
      v15 = v14 == 1;
      v16 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v14 == 1)
      {
        v16 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v17 = __swift_instantiateConcreteTypeFromMangledName(v16);
      (*(*(v17 - 8) + 32))(v10, v11, v17);
      v18 = v15;
      v12 = v53;
      swift_storeEnumTagMultiPayload(v10, v54, v18);
      v19 = v10;
      v20 = v53;
      v21 = 0;
    }

    swift_storeEnumTagMultiPayload(v19, v20, v21);
    goto LABEL_14;
  }

  return a1;
}

uint64_t sub_142859(void *a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for MLClassifierMetrics(0);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v6 = *(a3 + 24);
    }

    else
    {
      v5 = type metadata accessor for MLImageClassifier.Model(0);
      v6 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v6, a2, v5);
  }

  return result;
}

void sub_1428F6(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v6 = type metadata accessor for MLClassifierMetrics(0);
    if (*(*(v6 - 8) + 84) == a3)
    {
      v7 = *(a4 + 24);
    }

    else
    {
      v6 = type metadata accessor for MLImageClassifier.Model(0);
      v7 = *(a4 + 32);
    }

    __swift_storeEnumTagSinglePayload(a1 + v7, a2, a2, v6);
  }
}

uint64_t type metadata completion function for MLImageClassifier(uint64_t a1)
{
  v4[0] = &value witness table for Builtin.UnknownObject + 64;
  v4[1] = "P";
  result = type metadata accessor for MLClassifierMetrics.Contents(319);
  if (v2 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    v6 = v5;
    result = type metadata accessor for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(319);
    if (v3 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      swift_initStructMetadata(a1, 256, 5, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t sub_142A01()
{
  v1 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 24);
  v10 = *(v2 + 64);
  *(v0 + 16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v4 + v0, v1);
  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return swift_deallocObject(v0, v10 + v4, v3 | 7);
  }

  v6 = type metadata accessor for MLImageClassifier.DataSource(0);
  v7 = swift_getEnumCaseMultiPayload(v4 + v0, v6);
  if (v7 == 2)
  {
LABEL_6:
    *(v4 + v0);
    return swift_deallocObject(v0, v10 + v4, v3 | 7);
  }

  if (v7 <= 1)
  {
    v8 = type metadata accessor for URL(0);
    (*(*(v8 - 8) + 8))(v4 + v0, v8);
  }

  return swift_deallocObject(v0, v10 + v4, v3 | 7);
}

uint64_t partial apply for closure #1 in MLImageClassifier.init(trainingData:parameters:classNames:)(uint64_t a1)
{
  v3 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v4 = *(v1 + 16);
  v5 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 24));
  v6 = swift_task_alloc(48);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLImageClassifier.init(trainingData:parameters:classNames:)(a1, v4, v5);
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 80);
  if ((v4 & 0x20000) != 0)
  {
    v5 = swift_slowAlloc(*(v3 + 64), v4);
    *a2 = v5;
    return v5;
  }

  return v2;
}

uint64_t lazy protocol witness table accessor for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions()
{
  result = lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLActionClassifier.VideoAugmentationOptions, &type metadata for MLActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLActionClassifier.VideoAugmentationOptions, &type metadata for MLActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLActionClassifier.VideoAugmentationOptions, &type metadata for MLActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLActionClassifier.VideoAugmentationOptions, &type metadata for MLActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLActionClassifier.VideoAugmentationOptions and conformance MLActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

uint64_t MLActionClassifier.VideoAugmentationOptions.setOptions(in:)()
{
  if (*v0)
  {
    v5 = specialized handling<A, B>(_:_:)(1);
    if (!v5)
    {
      BUG();
    }

    v6 = type metadata accessor for CMLFeatureValue();
    swift_initStackObject(v6, v9);
    v7 = CMLFeatureValue.init(rawValue:ownsValue:)(v5, 1);
    CMLDictionary.add(key:value:)(0xD000000000000011, ("entationOptions.swift" + 0x8000000000000000), v7);
  }

  else
  {
    v1 = specialized handling<A, B>(_:_:)(0);
    if (!v1)
    {
      BUG();
    }

    v2 = type metadata accessor for CMLFeatureValue();
    swift_initStackObject(v2, v8);
    v3 = CMLFeatureValue.init(rawValue:ownsValue:)(v1, 1);
    CMLDictionary.add(key:value:)(0xD000000000000011, ("entationOptions.swift" + 0x8000000000000000), v3);
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MLActionClassifier.VideoAugmentationOptions(uint64_t *a1)
{
  v2 = v1;
  MLActionClassifier.VideoAugmentationOptions.init(rawValue:)(*a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLActionClassifier.VideoAugmentationOptions(uint64_t a1)
{
  v2 = v1;
  result = MLActionClassifier.VideoAugmentationOptions.rawValue.getter(a1);
  *v2 = result;
  return result;
}

void *specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: MetricsKey, value: Sendable));
  v1 = *(*(v62 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v63 = v59;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MetricsKey, Sendable));
  v4 = *(*(v64 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v65 = v59;
  v75 = type metadata accessor for MetricsKey(0);
  v66 = *(v75 - 8);
  v7 = *(v66 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v72 = v59;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: MetricsKey, value: Double));
  v10 = *(*(v67 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v68 = v59;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v69 = v59;
  v74 = a1;
  v15 = *(a1 + 16);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MetricsKey, Sendable>);
    v16 = static _DictionaryStorage.allocate(capacity:)(v15);
  }

  else
  {
    v16 = _swiftEmptyDictionarySingleton;
  }

  v76 = v16;
  v17 = -1 << *(v74 + 32);
  v78 = v74 + 64;
  v18 = ~(-1 << -v17);
  if (-v17 >= 64)
  {
    v18 = -1;
  }

  j = *(v74 + 64) & v18;
  v70 = v17;
  v77 = (63 - v17) >> 6;
  v74;

  for (i = 0; ; i = v60)
  {
    if (j)
    {
      v21 = i;
      goto LABEL_23;
    }

    v22 = i + 1;
    if (__OFADD__(1, i))
    {
      BUG();
    }

    if (v22 >= v77)
    {
      break;
    }

    j = *(v78 + 8 * v22);
    if (j)
    {
      v21 = i + 1;
    }

    else
    {
      v21 = i + 2;
      if (i + 2 >= v77)
      {
        break;
      }

      j = *(v78 + 8 * v22 + 8);
      if (!j)
      {
        v21 = i + 3;
        if (i + 3 >= v77)
        {
          break;
        }

        j = *(v78 + 8 * v22 + 16);
        if (!j)
        {
          v21 = i + 4;
          if (i + 4 >= v77)
          {
            break;
          }

          j = *(v78 + 8 * v22 + 24);
          if (!j)
          {
            v21 = i + 5;
            if (i + 5 >= v77)
            {
              break;
            }

            j = *(v78 + 8 * v22 + 32);
            if (!j)
            {
              v21 = i + 6;
              if (i + 6 >= v77)
              {
                break;
              }

              j = *(v78 + 8 * v22 + 40);
              if (!j)
              {
                v21 = i + 7;
                if (i + 7 >= v77)
                {
                  break;
                }

                for (j = *(v78 + 8 * v22 + 48); !j; j = *(v78 + 8 * v21))
                {
                  if (__OFADD__(1, v21++))
                  {
                    BUG();
                  }

                  if (v21 >= v77)
                  {
                    goto LABEL_41;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_23:
    v73 = j;
    _BitScanForward64(&v23, j);
    v60 = v21;
    v24 = v23 | (v21 << 6);
    v25 = v66;
    v61 = *(v66 + 72);
    v26 = v74;
    v27 = v69;
    (*(v66 + 16))(v69, *(v74 + 48) + v24 * v61, v75);
    v28 = v67;
    *(v27 + *(v67 + 48)) = *(*(v26 + 56) + 8 * v24);
    v29 = v68;
    outlined init with take of (key: MetricsKey, value: Double)(v27, v68);
    v30 = *(v28 + 48);
    v31 = v63;
    v32 = (v63 + *(v62 + 48));
    v71 = *(v25 + 32);
    v71(v63, v29, v75);
    *&v59[0] = *(v29 + v30);
    v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    swift_dynamicCast(v32, v59, &type metadata for Double, v33, 7);
    v34 = v65;
    v35 = (v65 + *(v64 + 48));
    v36 = v31;
    v37 = v72;
    v38 = v71;
    v71(v65, v36, v75);
    outlined init with take of Any(v32, v35);
    v39 = v38;
    v40 = v75;
    v39(v37, v34, v75);
    outlined init with take of Any(v35, v59);
    v41 = v76;
    v42 = v76[5];
    v43 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v44 = dispatch thunk of Hashable._rawHashValue(seed:)(v42, v40, v43) & ~(-1 << *(v41 + 32));
    v45 = v44 >> 6;
    v46 = ~v41[(v44 >> 6) + 8] >> v44 << v44;
    if (v46)
    {
      _BitScanForward64(&v46, v46);
      v47 = v46 | v44 & 0xFFFFFFFFFFFFFFC0;
      v48 = v73;
    }

    else
    {
      v49 = (63 - (-1 << *(v41 + 32))) >> 6;
      v50 = 0;
      v48 = v73;
      do
      {
        v51 = v45 + 1;
        if (v45 + 1 == v49 && (v50 & 1) != 0)
        {
          BUG();
        }

        v45 = 0;
        if (v51 != v49)
        {
          v45 = v51;
        }

        v50 |= v51 == v49;
        v52 = v76[v45 + 8];
      }

      while (v52 == -1);
      v53 = ~v52;
      v54 = 64;
      if (v53)
      {
        _BitScanForward64(&v54, v53);
      }

      v47 = v54 + (v45 << 6);
    }

    v55 = v76;
    v76[(v47 >> 6) + 8] |= 1 << v47;
    j = (v48 - 1) & v48;
    v71((v55[6] + v47 * v61), v72, v75);
    outlined init with take of Any(v59, (v55[7] + 32 * v47));
    ++v55[2];
  }

LABEL_41:
  v57 = v76;

  outlined consume of [String : [Double]].Iterator._Variant(v74);
  return v57;
}

{
  v40 = a1;
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLProgress.Metric, Any>);
    v2 = static _DictionaryStorage.allocate(capacity:)(v1);
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = -1 << *(v40 + 32);
  v42 = v40 + 64;
  v4 = ~(-1 << -v3);
  if (-v3 >= 64)
  {
    v4 = -1;
  }

  i = *(v40 + 64) & v4;
  v39 = v3;
  v41 = (63 - v3) >> 6;
  v34 = "validationRootMeanSquaredError" + 0x8000000000000000;
  v35 = "rror" + 0x8000000000000000;
  v36 = "stylizedImageURL" + 0x8000000000000000;
  v37 = "validationAccuracy" + 0x8000000000000000;
  v38 = "accuracy" + 0x8000000000000000;
  v40;

  v6 = 0;
  v32 = &type metadata for Any + 8;
  v33 = 0x7FFFFFFFFFFFFFC0;
  while (1)
  {
    if (i)
    {
      v7 = v6;
      goto LABEL_23;
    }

    v8 = v6 + 1;
    if (__OFADD__(1, v6))
    {
      BUG();
    }

    if (v8 >= v41)
    {
      break;
    }

    i = *(v42 + 8 * v8);
    if (i)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + 2;
      if (v6 + 2 >= v41)
      {
        break;
      }

      i = *(v42 + 8 * v8 + 8);
      if (!i)
      {
        v7 = v6 + 3;
        if (v6 + 3 >= v41)
        {
          break;
        }

        i = *(v42 + 8 * v8 + 16);
        if (!i)
        {
          v7 = v6 + 4;
          if (v6 + 4 >= v41)
          {
            break;
          }

          i = *(v42 + 8 * v8 + 24);
          if (!i)
          {
            v7 = v6 + 5;
            if (v6 + 5 >= v41)
            {
              break;
            }

            i = *(v42 + 8 * v8 + 32);
            if (!i)
            {
              v7 = v6 + 6;
              if (v6 + 6 >= v41)
              {
                break;
              }

              i = *(v42 + 8 * v8 + 40);
              if (!i)
              {
                v7 = v6 + 7;
                if (v6 + 7 >= v41)
                {
                  break;
                }

                for (i = *(v42 + 8 * v8 + 48); !i; i = *(v42 + 8 * v7))
                {
                  if (__OFADD__(1, v7++))
                  {
                    BUG();
                  }

                  if (v7 >= v41)
                  {
                    goto LABEL_53;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_23:
    _BitScanForward64(&v9, i);
    v31 = v7;
    v10 = v9 | (v7 << 6);
    v11 = *(*(v40 + 56) + 8 * v10);
    LOBYTE(v29[0]) = *(*(v40 + 48) + v10);
    v30 = v11;
    swift_dynamicCast(v29 + 8, &v30, &type metadata for Double, v32, 7);
    v27[0] = v29[0];
    outlined init with take of Any((v29 + 8), v28);
    v12 = v27[0];
    outlined init with take of Any(v28, v29);
    Hasher.init(_seed:)(v2[5]);
    switch(v12)
    {
      case 0:
        v13 = 1936945004;
        v14 = 0xE400000000000000;
        break;
      case 1:
        v13 = 0x4C746E65746E6F63;
        v14 = 0xEB0000000073736FLL;
        break;
      case 2:
        v13 = 0x736F4C656C797473;
        v14 = 0xE900000000000073;
        break;
      case 3:
        v13 = 0x7963617275636361;
        v14 = 0xE800000000000000;
        break;
      case 4:
        v13 = 0x69746164696C6176;
        v14 = 0xEE0073736F4C6E6FLL;
        break;
      case 5:
        v13 = 0xD000000000000012;
        v14 = v38;
        break;
      case 6:
        v13 = 0xD000000000000010;
        v14 = v37;
        break;
      case 7:
        v13 = 0xD000000000000014;
        v14 = v36;
        break;
      case 8:
        v13 = 0x456D756D6978616DLL;
        v14 = 0xEC000000726F7272;
        break;
      case 9:
        v13 = 0xD00000000000001ELL;
        v14 = v35;
        break;
      case 10:
        v13 = 0xD000000000000016;
        v14 = v34;
        break;
    }

    String.hash(into:)(v27, v13);
    v14;
    v15 = Hasher._finalize()() & ~(-1 << *(v2 + 32));
    v16 = v15 >> 6;
    v17 = ~v2[(v15 >> 6) + 8] >> v15 << v15;
    if (v17)
    {
      _BitScanForward64(&v17, v17);
      v18 = v17 | v33 & v15;
    }

    else
    {
      v19 = (63 - (-1 << *(v2 + 32))) >> 6;
      v20 = 0;
      do
      {
        v21 = v16 + 1;
        if (v16 + 1 == v19 && (v20 & 1) != 0)
        {
          BUG();
        }

        v16 = 0;
        if (v21 != v19)
        {
          v16 = v21;
        }

        v20 |= v21 == v19;
        v22 = v2[v16 + 8];
      }

      while (v22 == -1);
      v23 = ~v22;
      v24 = 64;
      if (v23)
      {
        _BitScanForward64(&v24, v23);
      }

      v18 = v24 + (v16 << 6);
    }

    i &= i - 1;
    v2[(v18 >> 6) + 8] |= 1 << v18;
    *(v2[6] + v18) = v12;
    outlined init with take of Any(v29, (v2[7] + 32 * v18));
    ++v2[2];
    v6 = v31;
  }

LABEL_53:

  outlined consume of [String : [Double]].Iterator._Variant(v40);
  return v2;
}

{
  v42 = a1;
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<AnyHashable, Any>);
    v2 = static _DictionaryStorage.allocate(capacity:)(v1);
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = -1 << *(v42 + 32);
  v44 = v42 + 64;
  v4 = ~(-1 << -v3);
  if (-v3 >= 64)
  {
    v4 = -1;
  }

  j = *(v42 + 64) & v4;
  v41 = v3;
  v43 = (63 - v3) >> 6;
  v42;

  for (i = 0; ; i = v40)
  {
    if (j)
    {
      v7 = i;
      goto LABEL_23;
    }

    v8 = i + 1;
    if (__OFADD__(1, i))
    {
      BUG();
    }

    if (v8 >= v43)
    {
      break;
    }

    j = *(v44 + 8 * v8);
    if (j)
    {
      v7 = i + 1;
    }

    else
    {
      v7 = i + 2;
      if (i + 2 >= v43)
      {
        break;
      }

      j = *(v44 + 8 * v8 + 8);
      if (!j)
      {
        v7 = i + 3;
        if (i + 3 >= v43)
        {
          break;
        }

        j = *(v44 + 8 * v8 + 16);
        if (!j)
        {
          v7 = i + 4;
          if (i + 4 >= v43)
          {
            break;
          }

          j = *(v44 + 8 * v8 + 24);
          if (!j)
          {
            v7 = i + 5;
            if (i + 5 >= v43)
            {
              break;
            }

            j = *(v44 + 8 * v8 + 32);
            if (!j)
            {
              v7 = i + 6;
              if (i + 6 >= v43)
              {
                break;
              }

              j = *(v44 + 8 * v8 + 40);
              if (!j)
              {
                v7 = i + 7;
                if (i + 7 >= v43)
                {
                  break;
                }

                for (j = *(v44 + 8 * v8 + 48); !j; j = *(v44 + 8 * v7))
                {
                  if (__OFADD__(1, v7++))
                  {
                    BUG();
                  }

                  if (v7 >= v43)
                  {
                    goto LABEL_41;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_23:
    _BitScanForward64(&v9, j);
    v40 = v7;
    v10 = v9 | (v7 << 6);
    v11 = *(v42 + 48);
    v12 = *(v11 + 16 * v10 + 8);
    *&v34 = *(v11 + 16 * v10);
    *(&v34 + 1) = v12;
    outlined init with copy of Any(*(v42 + 56) + 32 * v10, v35);
    v33[1] = v35[1];
    v33[0] = v35[0];
    *&v32[5] = v34;
    v28[0] = v34;
    v12;
    swift_dynamicCast(&v36, v28, &type metadata for String, &type metadata for AnyHashable, 7);
    outlined init with take of Any(v33, v39);
    v29 = v36;
    v30 = v37;
    v31 = v38;
    outlined init with take of Any(v39, v32);
    v36 = v29;
    v37 = v30;
    v38 = v31;
    outlined init with take of Any(v32, v28);
    v13 = AnyHashable._rawHashValue(seed:)(v2[5]) & ~(-1 << *(v2 + 32));
    v14 = v13 >> 6;
    v15 = ~v2[(v13 >> 6) + 8] >> v13 << v13;
    if (v15)
    {
      _BitScanForward64(&v15, v15);
      v16 = v15 | v13 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = (63 - (-1 << *(v2 + 32))) >> 6;
      v18 = 0;
      do
      {
        v19 = v14 + 1;
        if (v14 + 1 == v17 && (v18 & 1) != 0)
        {
          BUG();
        }

        v14 = 0;
        if (v19 != v17)
        {
          v14 = v19;
        }

        v18 |= v19 == v17;
        v20 = v2[v14 + 8];
      }

      while (v20 == -1);
      v21 = ~v20;
      v22 = 64;
      if (v21)
      {
        _BitScanForward64(&v22, v21);
      }

      v16 = v22 + (v14 << 6);
    }

    v2[(v16 >> 6) + 8] |= 1 << v16;
    j &= j - 1;
    v23 = v2[6];
    v24 = 40 * v16;
    *(v23 + v24 + 32) = v38;
    v25 = v36;
    *(v23 + v24 + 16) = v37;
    *(v23 + v24) = v25;
    outlined init with take of Any(v28, (v2[7] + 32 * v16));
    ++v2[2];
  }

LABEL_41:

  outlined consume of [String : [Double]].Iterator._Variant(v42);
  return v2;
}

{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [NSNumber]>);
    v3 = static _DictionaryStorage.allocate(capacity:)(v2);
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v4 = -1 << *(a1 + 32);
  v5 = ~(-1 << -v4);
  if (-v4 >= 64)
  {
    v5 = -1;
  }

  v6 = *(a1 + 64) & v5;
  v44 = a1 + 64;
  v39 = v4;
  v43 = (63 - v4) >> 6;
  a1;
  v7 = 0;
  v38 = a1;
  while (1)
  {
    if (v6)
    {
      v8 = v7;
      goto LABEL_29;
    }

    v9 = v7 + 1;
    if (__OFADD__(1, v7))
    {
      BUG();
    }

    if (v9 >= v43)
    {
      goto LABEL_34;
    }

    v6 = *(v44 + 8 * v9);
    if (v6)
    {
      v8 = v7 + 1;
      goto LABEL_29;
    }

    v8 = v7 + 2;
    if (v7 + 2 >= v43)
    {
      goto LABEL_34;
    }

    v6 = *(v44 + 8 * v9 + 8);
    if (!v6)
    {
      v8 = v7 + 3;
      if (v7 + 3 >= v43)
      {
        goto LABEL_34;
      }

      v6 = *(v44 + 8 * v9 + 16);
      if (!v6)
      {
        v8 = v7 + 4;
        if (v7 + 4 >= v43)
        {
          goto LABEL_34;
        }

        v6 = *(v44 + 8 * v9 + 24);
        if (!v6)
        {
          v8 = v7 + 5;
          if (v7 + 5 >= v43)
          {
            goto LABEL_34;
          }

          v6 = *(v44 + 8 * v9 + 32);
          if (!v6)
          {
            v8 = v7 + 6;
            if (v7 + 6 >= v43)
            {
              goto LABEL_34;
            }

            v6 = *(v44 + 8 * v9 + 40);
            if (!v6)
            {
              v8 = v7 + 7;
              if (v7 + 7 >= v43)
              {
                goto LABEL_34;
              }

              v6 = *(v44 + 8 * v9 + 48);
              if (!v6)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_29:
    v40 = v8;
    _BitScanForward64(&v11, v6);
    v42 = v6 & (v6 - 1);
    v12 = v11 | (v8 << 6);
    v13 = *(*(v1 + 56) + 8 * v12);
    v12 *= 16;
    v14 = *(v1 + 48);
    v15 = *(v14 + v12);
    v16 = *(v14 + v12 + 8);
    v36 = v13;
    v16;
    v13;
    v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [NSNumber]);
    v19 = v17;
    v20 = v15;
    swift_dynamicCast(&v35, &v36, v19, v18, 7);
    v41 = v35;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;
    if (v23)
    {
      v24 = v3[6];
      v37 = v20;
      v25 = 16 * v21;
      *(v24 + 16 * v21 + 8);
      *(v24 + 16 * v22) = v37;
      *(v24 + v25 + 8) = v16;
      v26 = v3[7];
      *(v26 + 8 * v22);
      *(v26 + 8 * v22) = v41;
      v1 = v38;
      v7 = v40;
      v6 = v42;
    }

    else
    {
      v27 = v41;
      v28 = v40;
      if (v3[2] >= v3[3])
      {
        BUG();
      }

      v3[(v21 >> 6) + 8] |= 1 << v21;
      v29 = v3[6];
      v30 = 16 * v22;
      *(v29 + v30) = v20;
      *(v29 + v30 + 8) = v16;
      *(v3[7] + 8 * v22) = v27;
      v31 = v3[2];
      v32 = __OFADD__(1, v31);
      v33 = v31 + 1;
      if (v32)
      {
        BUG();
      }

      v3[2] = v33;
      v7 = v28;
      v6 = v42;
    }
  }

  v10 = v7 + 8;
  while (v10 < v43)
  {
    v6 = *(v1 + 8 * v10++ + 64);
    if (v6)
    {
      v8 = v10 - 1;
      goto LABEL_29;
    }
  }

LABEL_34:
  outlined consume of [String : [Double]].Iterator._Variant(v1);
  return v3;
}