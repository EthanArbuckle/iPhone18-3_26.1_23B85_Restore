uint64_t sub_1D8A3518C(uint64_t a1)
{
  v2 = sub_1D8A5191C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA677F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A5191C();
  sub_1D8B16DD0();
  LOBYTE(v13[0]) = *v3;
  v14 = 0;
  sub_1D8A51970();
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for DetectionRequest(0);
    LOBYTE(v13[0]) = 1;
    type metadata accessor for DetectionRequest.Originator(0);
    sub_1D8A4F044(&qword_1ECA67420, 255, type metadata accessor for DetectionRequest.Originator);
    sub_1D8B16AE0();
    *&v13[0] = *&v3[*(v9 + 24)];
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D40);
    sub_1D8A519C4();
    sub_1D8B16AE0();
    v10 = &v3[*(v9 + 28)];
    v11 = v10[1];
    v13[0] = *v10;
    v13[1] = v11;
    v14 = 3;
    type metadata accessor for CGRect(0);
    sub_1D8A4F044(&qword_1ECA67820, 255, type metadata accessor for CGRect);
    sub_1D8B16AE0();
    LOBYTE(v13[0]) = 4;
    sub_1D8B16AB0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DetectionRequest.hash(into:)(__int128 *a1)
{
  MEMORY[0x1DA720210](*v1);
  v3 = type metadata accessor for DetectionRequest(0);
  DetectionRequest.Originator.hash(into:)(a1);
  sub_1D8818BD0(a1, *&v1[v3[6]]);
  sub_1D88911A0(*&v1[v3[7]], *&v1[v3[7] + 8], *&v1[v3[7] + 16], *&v1[v3[7] + 24]);
  v4 = *&v1[v3[8]];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1DA720250](*&v4);
}

uint64_t DetectionRequest.hashValue.getter()
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](*v0);
  v1 = type metadata accessor for DetectionRequest(0);
  DetectionRequest.Originator.hash(into:)(v4);
  sub_1D8818BD0(v4, *&v0[v1[6]]);
  sub_1D88911A0(*&v0[v1[7]], *&v0[v1[7] + 8], *&v0[v1[7] + 16], *&v0[v1[7] + 24]);
  v2 = *&v0[v1[8]];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1DA720250](*&v2);
  return sub_1D8B16D80();
}

uint64_t DetectionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67828);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A5191C();
  v25 = v8;
  v12 = v26;
  sub_1D8B16DB0();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v23;
  v14 = v11;
  v29 = 0;
  sub_1D8A51A7C();
  v15 = v24;
  sub_1D8B16A10();
  *v14 = v27;
  LOBYTE(v27) = 1;
  sub_1D8A4F044(&unk_1ECA676C0, 255, type metadata accessor for DetectionRequest.Originator);
  sub_1D8B16A10();
  sub_1D8A512F0(v5, &v14[v9[5]], type metadata accessor for DetectionRequest.Originator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D40);
  v29 = 2;
  sub_1D8A51AD0();
  sub_1D8B16A10();
  *&v14[v9[6]] = v27;
  type metadata accessor for CGRect(0);
  v29 = 3;
  sub_1D8A4F044(&qword_1ECA64778, 255, type metadata accessor for CGRect);
  sub_1D8B16A10();
  v16 = &v14[v9[7]];
  v17 = v28;
  *v16 = v27;
  v16[1] = v17;
  LOBYTE(v27) = 4;
  sub_1D8B169E0();
  v19 = v18;
  (*(v13 + 8))(v25, v15);
  *&v14[v9[8]] = v19;
  sub_1D8A50DC0(v14, v22, type metadata accessor for DetectionRequest);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D8A50E28(v14, type metadata accessor for DetectionRequest);
}

uint64_t DetectionRequest.Originator.description.getter()
{
  v1 = v0;
  v2 = sub_1D8B13240();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A50DC0(v1, v8, type metadata accessor for DetectionRequest.Originator);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D8A50E28(v8, type metadata accessor for DetectionRequest.Originator);
      return 18774;
    }

    v16 = *v8;
    v17 = v8[4];
    v20 = 0;
    v21 = 0xE000000000000000;
    MEMORY[0x1DA71EFA0](0x28656D69676572, 0xE700000000000000);
    LODWORD(v19) = v16;
    BYTE4(v19) = v17;
    sub_1D8B168A0();
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 32))(v5, v8, v2);
      v20 = 0x286B63617274;
      v21 = 0xE600000000000000;
      sub_1D8A4F044(&qword_1EE0E9890, 255, MEMORY[0x1E69695A8]);
      v14 = sub_1D8B16B50();
      MEMORY[0x1DA71EFA0](v14);

      MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
      v15 = v20;
      (*(v3 + 8))(v5, v2);
      return v15;
    }

    if (EnumCaseMultiPayload != 3)
    {
      return 0x6E696D6165727473;
    }

    v10 = *v8;
    v20 = 0x2873756F69726176;
    v21 = 0xE800000000000000;
    v11 = *(v10 + 16);

    v19 = v11;
    v12 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v12);
  }

  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  return v20;
}

uint64_t DetectionResult.results.getter()
{
  type metadata accessor for DetectionResult(0);
}

uint64_t DetectionResult.init(request:results:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D8A512F0(a1, a3, type metadata accessor for DetectionRequest);
  result = type metadata accessor for DetectionResult(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t static DetectionResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for DetectionRequest(0);
  if ((_s22VisualIntelligenceCore16DetectionRequestV10OriginatorO2eeoiySbAE_AEtFZ_0(&a1[v4[5]], &a2[v4[5]]) & 1) == 0 || (sub_1D894CAAC(*&a1[v4[6]], *&a2[v4[6]]) & 1) == 0 || !CGRectEqualToRect(*&a1[v4[7]], *&a2[v4[7]]) || *&a1[v4[8]] != *&a2[v4[8]])
  {
    return 0;
  }

  v5 = *(type metadata accessor for DetectionResult(0) + 20);
  v6 = *&a1[v5];
  v7 = *&a2[v5];

  return sub_1D88E4098(v6, v7);
}

uint64_t sub_1D8A35FE4()
{
  if (*v0)
  {
    return 0x73746C75736572;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_1D8A36018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D8B16BA0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D8B16BA0();

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

uint64_t sub_1D8A360F4(uint64_t a1)
{
  v2 = sub_1D8A51B88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A36130(uint64_t a1)
{
  v2 = sub_1D8A51B88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectionResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67848);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A51B88();
  sub_1D8B16DD0();
  v12 = 0;
  type metadata accessor for DetectionRequest(0);
  sub_1D8A4F044(&qword_1ECA67858, 255, type metadata accessor for DetectionRequest);
  sub_1D8B16AE0();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for DetectionResult(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67860);
    sub_1D8A51BDC(&qword_1ECA67868, sub_1D8A29858);
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DetectionResult.hash(into:)(__int128 *a1)
{
  MEMORY[0x1DA720210](*v1);
  v3 = type metadata accessor for DetectionRequest(0);
  DetectionRequest.Originator.hash(into:)(a1);
  sub_1D8818BD0(a1, *&v1[v3[6]]);
  sub_1D88911A0(*&v1[v3[7]], *&v1[v3[7] + 8], *&v1[v3[7] + 16], *&v1[v3[7] + 24]);
  v4 = *&v1[v3[8]];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1DA720250](*&v4);
  v5 = *&v1[*(type metadata accessor for DetectionResult(0) + 20)];
  result = MEMORY[0x1DA720210](*(v5 + 16));
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = v5 + 32;
    do
    {
      v8 += 8;

      CVDetection.hash(into:)(a1);

      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1D8A36494(void (*a1)(_BYTE *))
{
  sub_1D8B16D20();
  a1(v3);
  return sub_1D8B16D80();
}

uint64_t DetectionResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67878);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A51B88();
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_1D8A4F044(&qword_1ECA67880, 255, type metadata accessor for DetectionRequest);
  v14 = v19;
  sub_1D8B16A10();
  sub_1D8A512F0(v20, v13, type metadata accessor for DetectionRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67860);
  v22 = 1;
  sub_1D8A51BDC(&qword_1ECA67888, sub_1D8A51C54);
  sub_1D8B16A10();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_1D8A50DC0(v13, v17, type metadata accessor for DetectionResult);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D8A50E28(v13, type metadata accessor for DetectionResult);
}

uint64_t sub_1D8A36848(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!_s22VisualIntelligenceCore16DetectionRequestV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *&a1[v6];
  v8 = *&a2[v6];

  return sub_1D88E4098(v7, v8);
}

uint64_t sub_1D8A36918(__int128 *a1)
{
  v3 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetectionRequest(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A50DC0(v1, v14, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8A512F0(v14, v5, type metadata accessor for DetectionResult);
      MEMORY[0x1DA720210](1);
      DetectionResult.hash(into:)(a1);
      v16 = type metadata accessor for DetectionResult;
      v17 = v5;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
      sub_1D8A512F0(v14, v9, type metadata accessor for DetectionRequest);
      MEMORY[0x1DA720210](2);
      MEMORY[0x1DA720210](*v9);
      DetectionRequest.Originator.hash(into:)(a1);
      sub_1D8818BD0(a1, *&v9[v6[6]]);
      sub_1D88911A0(*&v9[v6[7]], *&v9[v6[7] + 8], *&v9[v6[7] + 16], *&v9[v6[7] + 24]);
      v19 = *&v9[v6[8]];
      if (v19 == 0.0)
      {
        v19 = 0.0;
      }

      MEMORY[0x1DA720250](*&v19);
      sub_1D8B15A60();

      v16 = type metadata accessor for DetectionRequest;
      v17 = v9;
    }
  }

  else
  {
    sub_1D8A512F0(v14, v11, type metadata accessor for DetectionRequest);
    MEMORY[0x1DA720210](0);
    MEMORY[0x1DA720210](*v11);
    DetectionRequest.Originator.hash(into:)(a1);
    sub_1D8818BD0(a1, *&v11[v6[6]]);
    sub_1D88911A0(*&v11[v6[7]], *&v11[v6[7] + 8], *&v11[v6[7] + 16], *&v11[v6[7] + 24]);
    v18 = *&v11[v6[8]];
    if (v18 == 0.0)
    {
      v18 = 0.0;
    }

    MEMORY[0x1DA720250](*&v18);
    v16 = type metadata accessor for DetectionRequest;
    v17 = v11;
  }

  return sub_1D8A50E28(v17, v16);
}

uint64_t sub_1D8A36C80(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1D8B16D20();
  a3(v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A36CE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D8B16D20();
  a4(v6);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A36D28()
{
  v1 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v57 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v55);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ProcessorState(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v54 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - v14;
  v56 = type metadata accessor for DetectionRequest(0);
  v16 = MEMORY[0x1EEE9AC00](v56);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v54 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v54 - v22;
  v24 = v0;
  sub_1D8A50DC0(v0, v15, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = v15;
      v27 = v4;
      sub_1D8A512F0(v26, v4, type metadata accessor for DetectionResult);
      sub_1D8A50DC0(v4, v23, type metadata accessor for DetectionRequest);
      sub_1D8A50E28(v4, type metadata accessor for DetectionResult);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
  }

  sub_1D8A512F0(v15, v23, type metadata accessor for DetectionRequest);
  v27 = v4;
LABEL_6:
  v28 = *v23;
  sub_1D8A50E28(v23, type metadata accessor for DetectionRequest);
  v29 = v24;
  sub_1D8A50DC0(v24, v13, type metadata accessor for ProcessorState);
  v30 = swift_getEnumCaseMultiPayload();
  if (v30)
  {
    if (v30 == 1)
    {
      sub_1D8A512F0(v13, v27, type metadata accessor for DetectionResult);
      sub_1D8A50DC0(v27, v21, type metadata accessor for DetectionRequest);
      sub_1D8A50E28(v27, type metadata accessor for DetectionResult);
      goto LABEL_11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
  }

  sub_1D8A512F0(v13, v21, type metadata accessor for DetectionRequest);
LABEL_11:
  v31 = v56;
  sub_1D8A50E28(v21, type metadata accessor for DetectionRequest);
  sub_1D8A50DC0(v24, v10, type metadata accessor for ProcessorState);
  v32 = swift_getEnumCaseMultiPayload();
  v33 = v28;
  if (v32)
  {
    if (v32 == 1)
    {
      sub_1D8A512F0(v10, v27, type metadata accessor for DetectionResult);
      sub_1D8A50DC0(v27, v18, type metadata accessor for DetectionRequest);
      sub_1D8A50E28(v27, type metadata accessor for DetectionResult);
      goto LABEL_16;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
  }

  sub_1D8A512F0(v10, v18, type metadata accessor for DetectionRequest);
LABEL_16:
  v34 = v57;
  sub_1D8A50DC0(&v18[*(v31 + 20)], v57, type metadata accessor for DetectionRequest.Originator);
  sub_1D8A50E28(v18, type metadata accessor for DetectionRequest);
  v35 = DetectionRequest.Originator.description.getter();
  v37 = v36;
  sub_1D8A50E28(v34, type metadata accessor for DetectionRequest.Originator);
  v38 = v58;
  sub_1D8A50DC0(v29, v58, type metadata accessor for ProcessorState);
  v39 = swift_getEnumCaseMultiPayload();
  if (!v39)
  {
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_1D8B16720();
    MEMORY[0x1DA71EFA0](0xD000000000000027, 0x80000001D8B47F40);
    LOBYTE(v59) = v33;
    v47 = CVDetection.DetectionType.description.getter();
    MEMORY[0x1DA71EFA0](v47);

    MEMORY[0x1DA71EFA0](0x7473656D6974202CLL, 0xED0000203A706D61);
    sub_1D8B16020();
    MEMORY[0x1DA71EFA0](0x6E696769726F202CLL, 0xEE00203A726F7461);
    MEMORY[0x1DA71EFA0](v35, v37);

    MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
    v44 = v60;
    v48 = type metadata accessor for ProcessorState;
LABEL_21:
    v45 = v48;
    v46 = v38;
    goto LABEL_22;
  }

  if (v39 != 1)
  {
    v49 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40) + 48));
    v51 = *v49;
    v50 = v49[1];
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_1D8B16720();
    MEMORY[0x1DA71EFA0](0xD000000000000026, 0x80000001D8B47EE0);
    LOBYTE(v59) = v33;
    v52 = CVDetection.DetectionType.description.getter();
    MEMORY[0x1DA71EFA0](v52);

    MEMORY[0x1DA71EFA0](0x7473656D6974202CLL, 0xED0000203A706D61);
    sub_1D8B16020();
    MEMORY[0x1DA71EFA0](0x6E696769726F202CLL, 0xEE00203A726F7461);
    MEMORY[0x1DA71EFA0](v35, v37);

    MEMORY[0x1DA71EFA0](0x6E6F73616572202CLL, 0xEA0000000000203ALL);
    MEMORY[0x1DA71EFA0](v51, v50);

    MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
    v44 = v60;
    v48 = type metadata accessor for DetectionRequest;
    goto LABEL_21;
  }

  sub_1D8A512F0(v38, v27, type metadata accessor for DetectionResult);
  v40 = v27;
  v41 = *(*(v27 + *(v55 + 20)) + 16);
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD000000000000028, 0x80000001D8B47F10);
  LOBYTE(v59) = v33;
  v42 = CVDetection.DetectionType.description.getter();
  MEMORY[0x1DA71EFA0](v42);

  MEMORY[0x1DA71EFA0](0x7473656D6974202CLL, 0xED0000203A706D61);
  sub_1D8B16020();
  MEMORY[0x1DA71EFA0](0x6E696769726F202CLL, 0xEE00203A726F7461);
  MEMORY[0x1DA71EFA0](v35, v37);

  MEMORY[0x1DA71EFA0](0x746C75736572202CLL, 0xEB00000000203A73);
  v59 = v41;
  v43 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v43);

  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  v44 = v60;
  v45 = type metadata accessor for DetectionResult;
  v46 = v40;
LABEL_22:
  sub_1D8A50E28(v46, v45);
  return v44;
}

BOOL sub_1D8A376B4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_1D88E29C4(*a1, *a2))
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return _s22VisualIntelligenceCore16DetectionRequestV2eeoiySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

uint64_t sub_1D8A37724()
{
  sub_1D8B16D20();
  sub_1D87CFE70(v2, *v0);
  DetectionRequest.hash(into:)(v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A377C0()
{
  sub_1D8B16D20();
  sub_1D87CFE70(v2, *v0);
  DetectionRequest.hash(into:)(v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A37814(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8A37850()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D8B16D20();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA720210](v3);
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16D60();
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D8A378CC()
{
  if (*(v0 + 4) == 1)
  {
    if (*v0)
    {
      v1 = 2;
    }

    else
    {
      v1 = 0;
    }

    return MEMORY[0x1DA720210](v1);
  }

  else
  {
    MEMORY[0x1DA720210](1);
    return sub_1D8B16D60();
  }
}

uint64_t sub_1D8A37928()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D8B16D20();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA720210](v3);
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16D60();
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D8A379A0(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  type metadata accessor for CGColor(0);
  sub_1D8A4F044(&unk_1EE0E3800, 255, type metadata accessor for CGColor);
  return sub_1D8B13D60() & 1;
}

uint64_t sub_1D8A37A60()
{
  sub_1D8B16D20();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D8A37AC4()
{
  if (!*v0)
  {
    v1 = 0;
    return MEMORY[0x1DA720210](v1);
  }

  if (*v0 == 1)
  {
    v1 = 1;
    return MEMORY[0x1DA720210](v1);
  }

  MEMORY[0x1DA720210](2);
  type metadata accessor for CGColor(0);
  sub_1D8A4F044(&unk_1EE0E3800, 255, type metadata accessor for CGColor);
  return sub_1D8B13D70();
}

BOOL sub_1D8A37B78(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1D8A4D3A8(&v5, &v7);
}

uint64_t sub_1D8A37BC4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1D8B16D20();
  if (!v6)
  {
    MEMORY[0x1DA720210](0);
    MEMORY[0x1DA720210](*&v1);
    v7 = *&v2;
LABEL_6:
    MEMORY[0x1DA720210](v7);
    return sub_1D8B16D80();
  }

  if (v6 != 1)
  {
    v7 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1DA720210](1);
  MEMORY[0x1DA720210](*&v1);
  sub_1D88911A0(v2, v3, v4, v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A37C98()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 40))
  {
    MEMORY[0x1DA720210](0);
    MEMORY[0x1DA720210](*&v1);
    v7 = *&v2;
    return MEMORY[0x1DA720210](v7);
  }

  if (*(v0 + 40) != 1)
  {
    v7 = 2;
    return MEMORY[0x1DA720210](v7);
  }

  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  MEMORY[0x1DA720210](1);
  MEMORY[0x1DA720210](*&v1);

  return sub_1D88911A0(v2, v5, v4, v3);
}

uint64_t sub_1D8A37D60()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1D8B16D20();
  if (!v6)
  {
    MEMORY[0x1DA720210](0);
    MEMORY[0x1DA720210](*&v1);
    v7 = *&v2;
LABEL_6:
    MEMORY[0x1DA720210](v7);
    return sub_1D8B16D80();
  }

  if (v6 != 1)
  {
    v7 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1DA720210](1);
  MEMORY[0x1DA720210](*&v1);
  sub_1D88911A0(v2, v3, v4, v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A37E30()
{
  if (*(v0 + 4))
  {
    MEMORY[0x1DA720210](0);
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16D60();
  }

  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      v4 = *(v0 + 32);
      v3 = *(v0 + 40);
      v5 = *(v0 + 24);
      MEMORY[0x1DA720210](1);
      MEMORY[0x1DA720210](v1);
      sub_1D88911A0(v2, v5, v4, v3);
      goto LABEL_10;
    }

    v6 = 2;
  }

  else
  {
    MEMORY[0x1DA720210](0);
    MEMORY[0x1DA720210](v1);
    v6 = *&v2;
  }

  MEMORY[0x1DA720210](v6);
LABEL_10:
  if (*(v0 + 56))
  {
    if (*(v0 + 52))
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x1DA720210](v7);
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16D60();
  }

  v8 = *(v0 + 64);
  if (v8 == 1)
  {
    v9 = 1;
    return MEMORY[0x1DA720210](v9);
  }

  if (!v8)
  {
    v9 = 0;
    return MEMORY[0x1DA720210](v9);
  }

  MEMORY[0x1DA720210](2);
  type metadata accessor for CGColor(0);
  sub_1D8A4F044(&unk_1EE0E3800, 255, type metadata accessor for CGColor);
  return sub_1D8B13D70();
}

BOOL sub_1D8A37FB8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == 1)
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1D8A37FF4()
{
  v1 = *(v0 + 4);
  sub_1D8B16D20();
  if (v1 == 1)
  {
    MEMORY[0x1DA720210](0);
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16D60();
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D8A38064()
{
  if (*(v0 + 4) == 1)
  {
    return MEMORY[0x1DA720210](0);
  }

  MEMORY[0x1DA720210](1);
  return sub_1D8B16D60();
}

uint64_t sub_1D8A380B4()
{
  v1 = *(v0 + 4);
  sub_1D8B16D20();
  if (v1 == 1)
  {
    MEMORY[0x1DA720210](0);
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16D60();
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D8A38120()
{
  sub_1D8B16D20();
  sub_1D8A37E30();
  return sub_1D8B16D80();
}

uint64_t sub_1D8A38164()
{
  sub_1D8B16D20();
  sub_1D8A37E30();
  return sub_1D8B16D80();
}

uint64_t sub_1D8A381A0(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 6);
  v19 = *(a1 + 2);
  v20[0] = v4;
  *(v20 + 9) = *(a1 + 33);
  v5 = a1[13];
  v6 = *(a1 + 56);
  v7 = *(a1 + 8);
  v8 = *a2;
  v9 = *(a2 + 4);
  v10 = *(a2 + 6);
  v21 = *(a2 + 2);
  v22[0] = v10;
  *(v22 + 9) = *(a2 + 33);
  v11 = a2[13];
  v12 = *(a2 + 56);
  v13 = *(a2 + 8);
  if (v3 == 1)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v8)
    {
      v14 = v9;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (sub_1D8A4D3A8(&v19, &v21))
  {
    if (v6)
    {
      if (v5)
      {
        if (v11)
        {
          v15 = v12;
        }

        else
        {
          v15 = 0;
        }

        if (v15 != 1)
        {
          return 0;
        }
      }

      else
      {
        if (v11)
        {
          v17 = 0;
        }

        else
        {
          v17 = v12;
        }

        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v5 == v11)
      {
        v16 = v12;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }
    }

    if (v7)
    {
      if (v7 == 1)
      {
        if (v13 != 1)
        {
          return 0;
        }
      }

      else
      {
        if (v13 < 2)
        {
          return 0;
        }

        type metadata accessor for CGColor(0);
        sub_1D8A4F044(&unk_1EE0E3800, 255, type metadata accessor for CGColor);
        if ((sub_1D8B13D60() & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1D8A38318(uint64_t a1, uint64_t a2)
{
  sub_1D88C5438(a1, v27);
  sub_1D88C5438(a2, v28);
  sub_1D88C5438(v27, &v29);
  v3 = v29;
  LODWORD(a2) = v30;
  v18 = v31;
  v19 = v32;
  v4 = v33;
  v5 = v34;
  v6 = v35;
  v7 = v36;
  v8 = v37;
  sub_1D88C5438(v28, &v38);
  v9 = v39;
  v10 = v44;
  v11 = v45;
  if (a2 == 1)
  {
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v3 != v38)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v12 = v46;
  v21[0] = v18;
  v21[1] = v19;
  v22 = v4;
  v23 = v5;
  v24[0] = v40;
  v24[1] = v41;
  v25 = v42;
  v26 = v43;
  sub_1D88C5530(v27, v20);
  sub_1D88C5530(v28, v20);
  if (!sub_1D8A4D3A8(v21, v24))
  {
    goto LABEL_31;
  }

  if (v7)
  {
    if (v6)
    {
      if (v10)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      if (v13 != 1)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v10)
      {
        v15 = 0;
      }

      else
      {
        v15 = v11;
      }

      if ((v15 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (v6 == v10)
    {
      v14 = v11;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_31;
    }
  }

  if (!v8)
  {
    sub_1D88C558C(v27);
    sub_1D88C558C(v28);
    return !v12;
  }

  if (v8 == 1)
  {
    sub_1D88C558C(v27);
    sub_1D88C558C(v28);
    return v12 == 1;
  }

  if (v12 < 2)
  {
LABEL_31:
    sub_1D88C558C(v28);
    sub_1D88C558C(v27);
    return 0;
  }

  type metadata accessor for CGColor(0);
  sub_1D8A4F044(&unk_1EE0E3800, 255, type metadata accessor for CGColor);
  v17 = sub_1D8B13D60();
  sub_1D88C558C(v28);
  sub_1D88C558C(v27);
  return (v17 & 1) != 0;
}

uint64_t sub_1D8A38554()
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](0);
  sub_1D8A37E30();
  return sub_1D8B16D80();
}

uint64_t sub_1D8A3869C()
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](0);
  sub_1D8A37E30();
  return sub_1D8B16D80();
}

uint64_t sub_1D8A38750()
{
  MEMORY[0x1DA71EFA0](0x203A616E69746552, 0xE800000000000000);
  sub_1D8B168A0();
  return 0;
}

uint64_t sub_1D8A38854(uint64_t a1)
{
  v2 = sub_1D8A51DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A38890(uint64_t a1)
{
  v2 = sub_1D8A51DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A388CC()
{
  if (*v0)
  {
    return 0x646E616D65446E6FLL;
  }

  else
  {
    return 0x65636E65646163;
  }
}

uint64_t sub_1D8A38934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A57368(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A3895C(uint64_t a1)
{
  v2 = sub_1D8A51CA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A38998(uint64_t a1)
{
  v2 = sub_1D8A51CA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A389D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x636E657571657266 && a2 == 0xEB000000007A4879)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D8A38A60(uint64_t a1)
{
  v2 = sub_1D8A51CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A38A9C(uint64_t a1)
{
  v2 = sub_1D8A51CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A38AD8(uint64_t a1)
{
  v2 = sub_1D8A51D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A38B14(uint64_t a1)
{
  v2 = sub_1D8A51D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CVCoordinationRegime.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67898);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678A0);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v23 = &v21 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678A8);
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678B0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = *(v2 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A51CA8();
  sub_1D8B16DD0();
  if (!v15)
  {
    v29 = 0;
    sub_1D8A51DA4();
    sub_1D8B16A40();
    v18 = v22;
    sub_1D8B16AC0();
    (*(v21 + 8))(v10, v18);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 == 1)
  {
    v31 = 2;
    sub_1D8A51CFC();
    v16 = v26;
    sub_1D8B16A40();
    v17 = v28;
    sub_1D8B16AC0();
    (*(v27 + 8))(v16, v17);
    return (*(v12 + 8))(v14, v11);
  }

  v30 = 1;
  sub_1D8A51D50();
  v20 = v23;
  sub_1D8B16A40();
  (*(v24 + 8))(v20, v25);
  return (*(v12 + 8))(v14, v11);
}

uint64_t CVCoordinationRegime.hash(into:)()
{
  if (!*(v0 + 4))
  {
    v1 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 4) == 1)
  {
    v1 = 2;
LABEL_5:
    MEMORY[0x1DA720210](v1);
    return sub_1D8B16D60();
  }

  return MEMORY[0x1DA720210](1);
}

uint64_t CVCoordinationRegime.hashValue.getter()
{
  sub_1D8B16D20();
  CVCoordinationRegime.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t CVCoordinationRegime.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678D8);
  v44 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v45 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678E0);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678E8);
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678F0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  v15 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D8A51CA8();
  v16 = v47;
  sub_1D8B16DB0();
  if (!v16)
  {
    v39 = 0;
    v47 = v12;
    v17 = v45;
    v18 = v46;
    v19 = sub_1D8B16A20();
    v20 = (2 * *(v19 + 16)) | 1;
    v50 = v19;
    v51 = v19 + 32;
    v52 = 0;
    v53 = v20;
    v21 = sub_1D881F7C4();
    if (v21 != 3 && v52 == v53 >> 1)
    {
      if (v21)
      {
        if (v21 == 1)
        {
          v49 = 1;
          sub_1D8A51D50();
          v22 = v14;
          v23 = v39;
          sub_1D8B16950();
          if (!v23)
          {
            (*(v43 + 8))(v7, v42);
            (*(v47 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v24 = 2;
            v25 = 0;
LABEL_18:
            *v18 = v25;
            *(v18 + 4) = v24;
            return __swift_destroy_boxed_opaque_existential_1(v48);
          }

          goto LABEL_9;
        }

        v49 = 2;
        sub_1D8A51CFC();
        v31 = v14;
        v34 = v39;
        sub_1D8B16950();
        if (!v34)
        {
          v35 = v40;
          sub_1D8B169F0();
          v36 = v47;
          v25 = v37;
          (*(v44 + 8))(v17, v35);
          (*(v36 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v24 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_1D8A51DA4();
        v30 = v10;
        v31 = v14;
        v32 = v39;
        sub_1D8B16950();
        if (!v32)
        {
          sub_1D8B169F0();
          v25 = v33;
          (*(v41 + 8))(v30, v8);
          (*(v47 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v24 = 0;
          goto LABEL_18;
        }
      }

      (*(v47 + 8))(v31, v11);
      goto LABEL_10;
    }

    v26 = sub_1D8B16770();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
    *v28 = &type metadata for CVCoordinationRegime;
    v22 = v14;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
LABEL_9:
    (*(v47 + 8))(v22, v11);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}

BOOL sub_1D8A3961C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a1 + 4) == 1)
    {
      return v4 == 1 && v2 == v3;
    }

    return v4 == 2 && LODWORD(v3) == 0;
  }

  else
  {
    return !*(a2 + 4) && v2 == v3;
  }
}

uint64_t sub_1D8A3968C()
{
  sub_1D8B16D20();
  CVCoordinationRegime.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D8A396E4()
{
  sub_1D8B16D20();
  CVCoordinationRegime.hash(into:)();
  return sub_1D8B16D80();
}

VisualIntelligenceCore::CVCoordinator::Configuration __swiftcall CVCoordinator.Configuration.Preset.configuration(objectDetectionThresholdOverride:)(Swift::Float_optional *objectDetectionThresholdOverride)
{
  v3 = v1;
  v4 = *v2;
  v5 = sub_1D8A397D0();
  if (v4)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  *v3 = v5;
  *(v3 + 8) = v4 == 0;
  if (v4 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  *(v3 + 16) = v10;
  *(v3 + 24) = v9;
  result.multiBufferingDepth = v7;
  result.detectionRegimes._rawValue = v5;
  result.groundingNmsPolicy = v8;
  result.crystalEraModels = v6;
  return result;
}

unint64_t sub_1D8A397D0()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      v7 = sub_1D893DF5C(&unk_1F5426928);
      v8 = sub_1D8A4C49C(v7);

      return v8;
    }

    v1 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v1 = &unk_1F5426928;
    if (!*v0)
    {
      v2 = sub_1D893DF5C(&unk_1F5426928);
      v3 = sub_1D8B06A6C(v2);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D8B052EC(1084227584, 4, isUniquelyReferenced_nonNull_native);
      v5 = swift_isUniquelyReferenced_nonNull_native();
      sub_1D8B052EC(0x40000000, 3, v5);
      return v3;
    }
  }

  return sub_1D893DF5C(v1);
}

unint64_t CVCoordinator.Configuration.Preset.description.getter()
{
  v1 = 0x73206172656D6143;
  if (*v0 != 2)
  {
    v1 = 0x6C6C412070696B53;
  }

  v2 = 0x206C617473797243;
  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D8A39980(uint64_t a1)
{
  v2 = sub_1D8A51EA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A399BC(uint64_t a1)
{
  v2 = sub_1D8A51EA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D8A399F8()
{
  v1 = 0x5379726F74636166;
  v2 = 0x65536172656D6163;
  if (*v0 != 2)
  {
    v2 = 0x6C6C4170696B73;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1D8A39A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A57488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A39AB8(uint64_t a1)
{
  v2 = sub_1D8A51DF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A39AF4(uint64_t a1)
{
  v2 = sub_1D8A51DF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A39B30(uint64_t a1)
{
  v2 = sub_1D8A51F48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A39B6C(uint64_t a1)
{
  v2 = sub_1D8A51F48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A39BA8(uint64_t a1)
{
  v2 = sub_1D8A51EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A39BE4(uint64_t a1)
{
  v2 = sub_1D8A51EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A39C20(uint64_t a1)
{
  v2 = sub_1D8A51E4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A39C5C(uint64_t a1)
{
  v2 = sub_1D8A51E4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CVCoordinator.Configuration.Preset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678F8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67900);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67908);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67910);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67918);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A51DF8();
  sub_1D8B16DD0();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1D8A51EA0();
      v18 = v27;
      sub_1D8B16A40();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1D8A51E4C();
      v18 = v30;
      sub_1D8B16A40();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1D8A51EF4();
    v18 = v24;
    sub_1D8B16A40();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1D8A51F48();
  sub_1D8B16A40();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t CVCoordinator.Configuration.Preset.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67948);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67950);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67958);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67960);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67968);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8A51DF8();
  v15 = v46;
  sub_1D8B16DB0();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1D8B16A20();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1D881F7BC();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1D8B16770();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
      *v28 = &type metadata for CVCoordinator.Configuration.Preset;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1D8A51EF4();
        v32 = v35;
        sub_1D8B16950();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1D8A51F48();
        v25 = v35;
        sub_1D8B16950();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1D8A51EA0();
      v31 = v35;
      sub_1D8B16950();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1D8A51E4C();
      v33 = v35;
      sub_1D8B16950();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

unint64_t sub_1D8A3A7A8()
{
  v1 = 0x73206172656D6143;
  if (*v0 != 2)
  {
    v1 = 0x6C6C412070696B53;
  }

  v2 = 0x206C617473797243;
  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t static CVCoordinator.Configuration.cameraSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D893DF5C(&unk_1F5426928);
  v3 = sub_1D8A4C49C(v2);

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 24) = 3;
  return result;
}

uint64_t sub_1D8A3A8A8()
{
  v1 = *(v0 + 72);
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  if (v1)
  {
    v2 = v1;
    sub_1D8B16720();
    v5 = 0;
    v6 = 0xE000000000000000;
    MEMORY[0x1DA71EFA0](0x20656761726F7453, 0xEC00000020726F66);
    sub_1D88C5438(v0, v7);
    sub_1D88C5438(v7, v4);
    sub_1D8B168A0();
    MEMORY[0x1DA71EFA0](8250, 0xE200000000000000);
    v4[0] = v2;
    sub_1D8B168A0();
  }

  else
  {
    sub_1D8B16720();
    v5 = 0;
    v6 = 0xE000000000000000;
    MEMORY[0x1DA71EFA0](0x20656761726F7453, 0xEC00000020726F66);
    sub_1D88C5438(v0, v7);
    sub_1D88C5438(v7, v4);
    sub_1D8B168A0();
    MEMORY[0x1DA71EFA0](0x6162206F6E3C203ALL, 0xEE003E676E696B63);
  }

  return v5;
}

BOOL sub_1D8A3AA48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1D8A4D088(v7, v9);
}

uint64_t sub_1D8A3AAB4()
{
  sub_1D8B16D20();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D8A3AB30()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  MEMORY[0x1DA720210](0);
  sub_1D8A37E30();
  if (v1)
  {
    sub_1D8B16D40();
    type metadata accessor for CVBuffer(0);
    sub_1D8A4F044(&unk_1EE0E37A0, 255, type metadata accessor for CVBuffer);
    sub_1D8B13D70();
    if (v2)
    {
LABEL_3:
      sub_1D8B16D40();
      type metadata accessor for CVBuffer(0);
      sub_1D8A4F044(&unk_1EE0E37A0, 255, type metadata accessor for CVBuffer);
      return sub_1D8B13D70();
    }
  }

  else
  {
    sub_1D8B16D40();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  return sub_1D8B16D40();
}

uint64_t sub_1D8A3ACBC()
{
  sub_1D8B16D20();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

void sub_1D8A3AD80(double a1, double a2)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
  }
}

uint64_t CVDebugArtifact.Payload.description.getter()
{
  sub_1D89791F0(v0, &v7);
  if (v11 <= 1u)
  {
    if (!v11)
    {
      sub_1D897924C(&v7);
      return 0x7562206C65786970;
    }

    v4 = v9;
    v5 = v10;
    sub_1D87A1598(v7, v8);
    sub_1D8B16720();

    v6 = 0xD000000000000012;
    MEMORY[0x1DA71EFA0](v4, v5);

    MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
    return v6;
  }

  if (v11 == 2)
  {
    v2 = v9;
    v3 = v10;
    sub_1D87A1598(v7, v8);
    v6 = 0x207972616E6962;
    MEMORY[0x1DA71EFA0](v2, v3);

    return v6;
  }

  sub_1D897924C(&v7);
  return 1852797802;
}

uint64_t CVDebugArtifact.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CVDebugArtifact.description.getter()
{
  v3 = *v0;

  MEMORY[0x1DA71EFA0](40, 0xE100000000000000);
  v1 = CVDebugArtifact.Payload.description.getter();
  MEMORY[0x1DA71EFA0](v1);

  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  return v3;
}

uint64_t sub_1D8A3B01C()
{
  v3 = *v0;

  MEMORY[0x1DA71EFA0](40, 0xE100000000000000);
  v1 = CVDebugArtifact.Payload.description.getter();
  MEMORY[0x1DA71EFA0](v1);

  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  return v3;
}

uint64_t CVDebugImageAnnotation.text.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CVDebugImageAnnotation.baseArtifactIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void *sub_1D8A3B140()
{
  type metadata accessor for CVDebugArtifactManager();
  v0 = swift_allocObject();
  result = sub_1D8A3CF24();
  qword_1ECA675B0 = v0;
  return result;
}

uint64_t static CVDebugArtifactManager.shared.getter()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D8A3B1F4(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  sub_1D88C4BD0(a1, v25);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + 112);
  *(v4 + 112) = 0x8000000000000000;
  v10 = sub_1D87EF838(a2, a3);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  if (v8[3] >= v13)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + 112) = v8;
      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1D8967208();
      *(v4 + 112) = v8;
      if (v14)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_1D8979B3C(v10, a2, a3, MEMORY[0x1E69E7CC0], v8);

    goto LABEL_9;
  }

  sub_1D896D524(v13, isUniquelyReferenced_nonNull_native);
  v15 = sub_1D87EF838(a2, a3);
  if ((v14 & 1) != (v16 & 1))
  {
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

  v10 = v15;
  *(v4 + 112) = v8;
  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  a2 = v8[7];
  a3 = *(a2 + 8 * v10);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8 * v10) = a3;
  if ((v17 & 1) == 0)
  {
LABEL_14:
    a3 = sub_1D87C7B24(0, *(a3 + 2) + 1, 1, a3);
    *(a2 + 8 * v10) = a3;
  }

  v19 = *(a3 + 2);
  v18 = *(a3 + 3);
  if (v19 >= v18 >> 1)
  {
    a3 = sub_1D87C7B24((v18 > 1), v19 + 1, 1, a3);
    *(a2 + 8 * v10) = a3;
  }

  *(a3 + 2) = v19 + 1;
  v20 = &a3[72 * v19];
  *(v20 + 2) = v25[0];
  v21 = v25[1];
  v22 = v25[2];
  v23 = v25[3];
  v20[96] = v26;
  *(v20 + 4) = v22;
  *(v20 + 5) = v23;
  *(v20 + 3) = v21;
  return swift_endAccess();
}

uint64_t sub_1D8A3B420(__int128 *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v7 = a1[2];
  v8 = a1[4];
  v33 = a1[3];
  v34[0] = v8;
  *(v34 + 9) = *(a1 + 73);
  v9 = a1[1];
  v30 = *a1;
  v31 = v9;
  v32 = v7;
  swift_beginAccess();
  sub_1D88E0F34(&v30, &v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + 120);
  v29 = v11;
  *(v4 + 120) = 0x8000000000000000;
  v13 = sub_1D87EF838(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  if (v11[3] >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + 120) = v11;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1D8969DE0();
      v11 = v29;
      *(v4 + 120) = v29;
      if (v17)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_1D8979B3C(v13, a2, a3, MEMORY[0x1E69E7CC0], v11);

    goto LABEL_9;
  }

  sub_1D8972D0C(v16, isUniquelyReferenced_nonNull_native);
  v11 = v29;
  v18 = sub_1D87EF838(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

  v13 = v18;
  *(v4 + 120) = v11;
  if ((v17 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  a2 = v11[7];
  a3 = *(a2 + 8 * v13);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8 * v13) = a3;
  if ((v20 & 1) == 0)
  {
LABEL_14:
    a3 = sub_1D87C8AEC(0, *(a3 + 2) + 1, 1, a3);
    *(a2 + 8 * v13) = a3;
  }

  v22 = *(a3 + 2);
  v21 = *(a3 + 3);
  if (v22 >= v21 >> 1)
  {
    a3 = sub_1D87C8AEC((v21 > 1), v22 + 1, 1, a3);
    *(a2 + 8 * v13) = a3;
  }

  *(a3 + 2) = v22 + 1;
  v23 = &a3[96 * v22];
  v24 = v31;
  *(v23 + 2) = v30;
  *(v23 + 3) = v24;
  v25 = v32;
  v26 = v33;
  v27 = v34[0];
  *(v23 + 105) = *(v34 + 9);
  *(v23 + 5) = v26;
  *(v23 + 6) = v27;
  *(v23 + 4) = v25;
  return swift_endAccess();
}

uint64_t sub_1D8A3B67C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 128);
  v21 = v8;
  *(v4 + 128) = 0x8000000000000000;
  v9 = sub_1D87EF838(a1, a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    sub_1D8972FC4(v14, isUniquelyReferenced_nonNull_native);
    v9 = sub_1D87EF838(a1, a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    v9 = sub_1D8B16C30();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *(v4 + 128) = v8;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_7:
  v4 = v9;
  sub_1D89787EC(v9, a1, a2, 0, v8);

  v9 = v4;
LABEL_8:
  while (1)
  {
    v16 = v8[7];
    v17 = *(v16 + 8 * v9);
    v13 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (!v13)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v20 = v9;
    sub_1D8969F5C();
    v9 = v20;
    v8 = v21;
    *(v4 + 128) = v21;
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v16 + 8 * v9) = v18;
  return swift_endAccess();
}

uint64_t sub_1D8A3B7D0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 136);
  v21 = v8;
  *(v4 + 136) = 0x8000000000000000;
  v9 = sub_1D87EF838(a1, a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    sub_1D8972FC4(v14, isUniquelyReferenced_nonNull_native);
    v9 = sub_1D87EF838(a1, a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    v9 = sub_1D8B16C30();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *(v4 + 136) = v8;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_7:
  v4 = v9;
  sub_1D89787EC(v9, a1, a2, 0, v8);

  v9 = v4;
LABEL_8:
  while (1)
  {
    v16 = v8[7];
    v17 = *(v16 + 8 * v9);
    v13 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (!v13)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v20 = v9;
    sub_1D8969F5C();
    v9 = v20;
    v8 = v21;
    *(v4 + 136) = v21;
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v16 + 8 * v9) = v18;
  return swift_endAccess();
}

uint64_t sub_1D8A3B924()
{
  v2 = v0;
  v3 = type metadata accessor for BundleClassification.ClassificationType(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  BundleClassification.ClassificationType.asEmpty.getter((&v23 - v7));
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 144);
  v23 = v10;
  *(v2 + 144) = 0x8000000000000000;
  v12 = sub_1D87EF6AC(v8);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_12;
  }

  v1 = v11;
  if (v10[3] >= v15)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_13;
    }

    *(v2 + 144) = v10;
    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1D8973264(v15, isUniquelyReferenced_nonNull_native);
    v10 = v23;
    v16 = sub_1D87EF6AC(v8);
    if ((v1 & 1) != (v17 & 1))
    {
      result = sub_1D8B16C30();
      __break(1u);
      return result;
    }

    v12 = v16;
    *(v2 + 144) = v10;
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  while (1)
  {
    v18 = v10[7];
    v19 = *(v18 + 8 * v12);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      break;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    sub_1D896A0C4();
    v10 = v23;
    *(v2 + 144) = v23;
    if ((v1 & 1) == 0)
    {
LABEL_8:
      sub_1D8A50DC0(v8, v6, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8978834(v12, v6, 0, v10);
    }
  }

  *(v18 + 8 * v12) = v21;
  sub_1D8A50E28(v8, type metadata accessor for BundleClassification.ClassificationType);
  return swift_endAccess();
}

uint64_t sub_1D8A3BB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = type metadata accessor for BundleClassification.ClassificationType(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  BundleClassification.ClassificationType.asEmpty.getter((&v24 - v12));
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + 152);
  v25 = v15;
  *(v5 + 152) = 0x8000000000000000;
  v17 = sub_1D87EF6AC(v13);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v16;
  if (v15[3] >= v20)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v5 + 152) = v15;
      if (v16)
      {
LABEL_9:

        sub_1D87F88E8(&v25, a2, a3);
        sub_1D8A50E28(v13, type metadata accessor for BundleClassification.ClassificationType);
        swift_endAccess();
      }

LABEL_8:
      sub_1D8A50DC0(v13, v11, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D89788E8(v17, v11, MEMORY[0x1E69E7CD0], v15);
      goto LABEL_9;
    }

LABEL_11:
    sub_1D896A2FC();
    v15 = v25;
    *(v5 + 152) = v25;
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_1D89735DC(v20, isUniquelyReferenced_nonNull_native);
  v15 = v25;
  v21 = sub_1D87EF6AC(v13);
  if ((v4 & 1) == (v22 & 1))
  {
    v17 = v21;
    *(v5 + 152) = v15;
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8A3BD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64988);
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A3BE04, a5, 0);
}

uint64_t sub_1D8A3BE04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E40);
  sub_1D8B15F10();
  v2 = sub_1D8A4F044(&qword_1ECA64A00, v1, type metadata accessor for CVDebugArtifactManager);
  v0[35] = v2;
  v3 = v0[31];
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_1D8A3BF18;
  v5 = v0[32];

  return MEMORY[0x1EEE6D9C8](v0 + 14, v3, v2, v5);
}

uint64_t sub_1D8A3BF18()
{
  v1 = *(*v0 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1D8A3C028, v1, 0);
}

uint64_t sub_1D8A3C028()
{
  v1 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v1;
  v2 = *(v0 + 192);
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = v2;
  v3 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v3;
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = *(v0 + 248);
    v6 = *(v5 + 160);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v5 + 168);
    *(v0 + 232) = v8;
    *(v5 + 168) = 0x8000000000000000;
    v9 = sub_1D87F05B0(v6);
    v13 = *(v8 + 16);
    v14 = (v10 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v5) = v10;
      if (*(v8 + 24) < v16)
      {
        sub_1D8975B04(v16, isUniquelyReferenced_nonNull_native);
        v9 = sub_1D87F05B0(v6);
        if ((v5 & 1) != (v10 & 1))
        {

          return sub_1D8B16C30();
        }

LABEL_12:
        v19 = *(v0 + 232);
        if (v5)
        {
LABEL_13:
          *(v19[7] + 8 * v9) = v4;

          goto LABEL_18;
        }

LABEL_16:
        v19[(v9 >> 6) + 8] |= 1 << v9;
        *(v19[6] + 8 * v9) = v6;
        *(v19[7] + 8 * v9) = v4;
        v21 = v19[2];
        v15 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v15)
        {
          __break(1u);
          return MEMORY[0x1EEE6D9C8](v9, v10, v11, v12);
        }

        v19[2] = v22;
LABEL_18:
        *(*(v0 + 248) + 168) = v19;
        swift_endAccess();
        sub_1D87A14E4(v0 + 16, &qword_1ECA67E50);
        v23 = *(v0 + 280);
        v24 = *(v0 + 248);
        v25 = swift_task_alloc();
        *(v0 + 288) = v25;
        *v25 = v0;
        v25[1] = sub_1D8A3BF18;
        v12 = *(v0 + 256);
        v9 = v0 + 112;
        v10 = v24;
        v11 = v23;

        return MEMORY[0x1EEE6D9C8](v9, v10, v11, v12);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    v20 = v9;
    sub_1D896BA08();
    v9 = v20;
    v19 = *(v0 + 232);
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D8A3C2D4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67970);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64070);
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for ActionPin(0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A3C404, v1, 0);
}

uint64_t sub_1D8A3C404()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  sub_1D87A0E38(v0[8], v3, &qword_1ECA64070);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[10];
    sub_1D87A14E4(v0[11], &qword_1ECA64070);
    v6 = *(v4 + 160);
    v7 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
    swift_beginAccess();
    sub_1D895F2BC(v5, v6);
    swift_endAccess();
  }

  else
  {
    v8 = v0[14];
    v9 = v0[10];
    sub_1D8A512F0(v0[11], v8, type metadata accessor for ActionPin);
    v10 = *(v4 + 160);
    sub_1D8A50DC0(v8, v9, type metadata accessor for ActionPin);
    v11 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
    swift_beginAccess();
    sub_1D895F2BC(v9, v10);
    swift_endAccess();
    sub_1D8A50E28(v8, type metadata accessor for ActionPin);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D8A3C65C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67970);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for CVBundle(0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A3C78C, v1, 0);
}

uint64_t sub_1D8A3C78C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  sub_1D87A0E38(v0[8], v3, &qword_1ECA67980);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[10];
    sub_1D87A14E4(v0[11], &qword_1ECA67980);
    v6 = *(v4 + 160);
    v7 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
    swift_beginAccess();
    sub_1D895F2BC(v5, v6);
    swift_endAccess();
  }

  else
  {
    v8 = v0[14];
    v9 = v0[10];
    sub_1D8A512F0(v0[11], v8, type metadata accessor for CVBundle);
    v10 = *(v4 + 160);
    sub_1D8A50DC0(v8, v9, type metadata accessor for CVBundle);
    v11 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
    swift_beginAccess();
    sub_1D895F2BC(v9, v10);
    swift_endAccess();
    sub_1D8A50E28(v8, type metadata accessor for CVBundle);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D8A3C9E4(uint64_t a1, double a2)
{
  *(v3 + 56) = v2;
  *(v3 + 48) = a2;
  *(v3 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67970);
  *(v3 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A3CA88, v2, 0);
}

uint64_t sub_1D8A3CA88()
{
  v1 = *(v0 + 8);
  v2 = v0[6];
  sub_1D8A50DC0(*(v0 + 5), v1, type metadata accessor for BundleClassification.ClassificationType);
  v3 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  swift_beginAccess();
  sub_1D895F2BC(v1, v2);
  swift_endAccess();

  v4 = *(v0 + 1);

  return v4();
}

uint64_t sub_1D8A3CB98(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D8A3CBB8, v1, 0);
}

uint64_t sub_1D8A3CBB8()
{
  v1 = v0[17];
  v2 = v0[18];
  swift_beginAccess();
  v11 = v2[21];
  swift_beginAccess();
  *&v3 = v11;
  *(&v3 + 1) = v2[22];
  v12 = v3;
  swift_beginAccess();
  v4 = v2[24];
  swift_beginAccess();
  v5 = v2[23];
  swift_beginAccess();
  v6 = v2[14];
  v7 = MEMORY[0x1E69E7CC8];
  v2[21] = MEMORY[0x1E69E7CC8];
  v2[22] = v7;
  v2[24] = v7;

  v2[23] = v7;

  v2[14] = v7;

  *&v8 = v4;
  *(&v8 + 1) = v5;
  *(v1 + 16) = v8;
  *v1 = v12;
  *(v1 + 32) = v6;
  v9 = v0[1];

  return v9();
}

uint64_t sub_1D8A3CD18()
{
  swift_beginAccess();
  v1 = MEMORY[0x1E69E7CC8];
  v0[14] = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v0[15] = v1;

  swift_beginAccess();
  v0[16] = v1;

  swift_beginAccess();
  v0[17] = v1;

  swift_beginAccess();
  v0[18] = v1;

  swift_beginAccess();
  v0[19] = v1;

  v0[20] = 0;
  swift_beginAccess();
  v0[21] = v1;

  swift_beginAccess();
  v0[22] = v1;

  swift_beginAccess();
  v0[24] = v1;

  swift_beginAccess();
  v0[23] = v1;
}

uint64_t CVDebugArtifactManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CVDebugArtifactManager.__deallocating_deinit()
{
  CVDebugArtifactManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *sub_1D8A3CF24()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  v0[14] = sub_1D893D12C(MEMORY[0x1E69E7CC0]);
  v0[15] = sub_1D893D140(v1);
  v0[16] = sub_1D893D154(v1);
  v0[17] = sub_1D893D154(v1);
  v0[18] = sub_1D893D250(v1);
  v2 = sub_1D893D434(v1);
  v3 = MEMORY[0x1E69E7CC8];
  v0[19] = v2;
  v0[20] = 0;
  v0[21] = v3;
  v0[22] = v3;
  v0[23] = v3;
  v0[24] = v3;
  return v0;
}

void *M2MHandle.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0;
  result[4] = MEMORY[0x1E69E7CC8];
  return result;
}

void *M2MHandle.init()()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = MEMORY[0x1E69E7CC8];
  return result;
}

id sub_1D8A3D004()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
LABEL_5:
    swift_unknownObjectRetain();
    return v1;
  }

  result = viCore_makeM2MController();
  if (result)
  {
    v1 = result;
    *(v0 + 16) = result;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A3D070()
{
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D8B0AAA4();

  byte_1EE0E3BF8 = v0 & 1;
  return result;
}

BOOL sub_1D8A3D0E8(OSType a1)
{
  swift_beginAccess();
  if (!*(*(v1 + 32) + 16) || (sub_1D87EFF4C(a1), (v3 & 1) == 0))
  {
    v4 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, a1);
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v20[0] = 0;
        sub_1D8B15720();
      }

      swift_beginAccess();
      sub_1D895E358(0, a1);
      swift_endAccess();
    }
  }

  v6 = *(v1 + 32);
  if (*(v6 + 16))
  {
    v7 = sub_1D87EFF4C(a1);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      v10 = sub_1D8B15970();
      v12 = v11;
      if (*(v9 + 16) && (v13 = v10, , v14 = sub_1D87EF838(v13, v12), v16 = v15, , (v16 & 1) != 0))
      {
        sub_1D87D3E4C(*(v9 + 56) + 32 * v14, v20);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DF0);
        if (swift_dynamicCast())
        {
          v17 = *(v19 + 16);

          return v17 > 1;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

void sub_1D8A3D2C8(double a1, double a2, double a3, double a4)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v4 = [sub_1D8A3D004() setCustomFilter:3 alignment:2 sourceWidth:a1 sourceHeight:a2 destinationWidth:a3 destinationHeight:a4 luma:0.0 param:0.0 chroma:? param:?];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1D8A51FBC();
    swift_allocError();
    *v5 = v4;
    *(v5 + 4) = 0;
    swift_willThrow();
  }
}

void sub_1D8A3D48C(__CVBuffer *a1, __CVBuffer *a2, double *a3, id a4, double a5, double a6, double a7, double a8)
{
  v12 = a8;
  v13 = a7;
  v16 = *a3;
  v103.origin.y = *(MEMORY[0x1E695F050] + 8);
  v103.size.width = *(MEMORY[0x1E695F050] + 16);
  v103.size.height = *(MEMORY[0x1E695F050] + 24);
  v98 = *MEMORY[0x1E695F050];
  v103.origin.x = v98;
  width = v103.size.width;
  y = v103.origin.y;
  height = v103.size.height;
  if (CGRectEqualToRect(*&a5, v103))
  {
    *v17.i64 = CVPixelBufferGetWidth(a2);
    v89 = v17;
    *v18.i64 = CVPixelBufferGetHeight(a2);
    v92 = v18;
    v19 = CGRound(*v89.i64);
    v20 = CGRound(*v92.i64);
    v21.i64[0] = 0;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v87 = vnegq_f64(v22);
    v23 = CGRound(*vbslq_s8(v87, v21, v89).i64);
    v24.i64[0] = 0;
    v13 = v19 - v23;
    v12 = v20 - CGRound(*vbslq_s8(v87, v24, v92).i64);
  }

  v88 = v16;
  v25 = v16 == 4.71238898 || v16 == 1.57079633;
  if (v25)
  {
    v26 = v13;
  }

  else
  {
    v26 = v12;
  }

  if (v25)
  {
    v27 = v12;
  }

  else
  {
    v27 = v13;
  }

  if (*(a4 + 32))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    a4 = sub_1D8A3D0E8(PixelFormatType);
    *v29.i64 = CVPixelBufferGetWidth(a1);
    v90 = v29;
    *v30.i64 = CVPixelBufferGetHeight(a1);
    v93 = v30;
    v31 = CGRound(*v90.i64);
    v32 = CGRound(*v93.i64);
    v33.i64[0] = 0;
    v34.f64[0] = NAN;
    v34.f64[1] = NAN;
    v78 = vnegq_f64(v34);
    v35 = CGRound(*vbslq_s8(v78, v33, v90).i64);
    v36.i64[0] = 0;
    v37 = CGRound(*vbslq_s8(v78, v36, v93).i64);
    v38 = v31 - v35;
    v39 = v32 - v37;
    if (a4)
    {
      sub_1D8A3AD80(v38, v39);
      v38 = v40;
      v39 = v41;
    }
  }

  else
  {
    v35 = *a4;
    v37 = *(a4 + 1);
    v38 = *(a4 + 2);
    v39 = *(a4 + 3);
  }

  v99.origin.x = v35;
  v99.origin.y = v37;
  v99.size.width = v38;
  v99.size.height = v39;
  if (CGRectGetWidth(v99) / v27 > 4.0 || (v100.origin.x = v35, v100.origin.y = v37, v100.size.width = v38, v100.size.height = v39, CGRectGetHeight(v100) / v26 > 4.0))
  {
    v101.origin.x = v35;
    v101.origin.y = v37;
    v101.size.width = v38;
    v101.size.height = v39;
    v42 = round(CGRectGetWidth(v101) / 1.5);
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v42 > -9.22337204e18)
    {
      if (v42 < 9.22337204e18)
      {
        v102.origin.x = v35;
        v102.origin.y = v37;
        v102.size.width = v38;
        v102.size.height = v39;
        v43 = round(CGRectGetHeight(v102) / 1.5);
        if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v43 > -9.22337204e18)
          {
            if (v43 < 9.22337204e18)
            {
              v77 = a2;
              if (v25)
              {
                v44 = v42;
              }

              else
              {
                v44 = v43;
              }

              if (v25)
              {
                v45 = v43;
              }

              else
              {
                v45 = v42;
              }

              swift_beginAccess();
              v46 = *(v8 + 24);
              if (!v46)
              {
LABEL_43:
                v55 = CVPixelBufferGetPixelFormatType(a1);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67990);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1D8B1AB90;
                v57 = *MEMORY[0x1E69660D8];
                *(inited + 32) = *MEMORY[0x1E69660D8];
                v58 = v57;
                *(inited + 40) = sub_1D893CDD0(MEMORY[0x1E69E7CC0]);
                sub_1D893D034(inited);
                swift_setDeallocating();
                sub_1D87A14E4(inited + 32, &qword_1ECA67998);
                type metadata accessor for CFString(0);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA679A0);
                sub_1D8A4F044(&qword_1EE0E37C0, 255, type metadata accessor for CFString);
                v59 = sub_1D8B15710();

                swift_beginAccess();
                CVPixelBufferCreate(0, v45, v44, v55, v59, (v8 + 24));
                swift_endAccess();

                v49 = *(v8 + 24);
                if (!v49)
                {
                  return;
                }

                goto LABEL_44;
              }

              v47 = v46;
              if (CVPixelBufferGetWidth(v47) == v45)
              {
                v48 = CVPixelBufferGetHeight(v47);

                if (v48 == v44)
                {
                  v49 = *(v8 + 24);
                  if (!v49)
                  {
                    goto LABEL_43;
                  }

LABEL_44:
                  a4 = v49;
                  *v60.i64 = CVPixelBufferGetWidth(a4);
                  v91 = v60;
                  *v61.i64 = CVPixelBufferGetHeight(a4);
                  v94 = v61;
                  v62 = CGRound(*v91.i64);
                  v63 = CGRound(*v94.i64);
                  v64.i64[0] = 0;
                  v65.f64[0] = NAN;
                  v65.f64[1] = NAN;
                  v79 = vnegq_f64(v65);
                  v66 = CGRound(*vbslq_s8(v79, v64, v91).i64);
                  v67.i64[0] = 0;
                  v68 = CGRound(*vbslq_s8(v79, v67, v94).i64);
                  sub_1D8A3D2C8(v38, v39, v62 - v66, v63 - v68);
                  if (v9)
                  {
LABEL_61:

                    return;
                  }

                  a2 = sub_1D8A3D004();
                  if (v88 == 0.0)
                  {
                    v10 = 1;
                    goto LABEL_57;
                  }

                  v69 = v88 == 3.14159265;
                  if (v88 == -3.14159265)
                  {
                    v69 = 1;
                  }

                  v70 = 8;
                  if (v88 == 1.57079633)
                  {
                    v70 = 6;
                  }

                  if (v69)
                  {
                    v10 = 3;
                  }

                  else
                  {
                    v10 = v70;
                  }

                  if (v88 == 4.71238898 || v88 == 1.57079633 || v69)
                  {
LABEL_57:
                    v71 = qword_1EE0E3BF0;
                    a4 = a4;
                    if (v71 == -1)
                    {
                      goto LABEL_58;
                    }

                    goto LABEL_80;
                  }

LABEL_81:
                  sub_1D8B168C0();
                  __break(1u);
                  return;
                }
              }

              else
              {
              }

              v54 = *(v8 + 24);
              *(v8 + 24) = 0;

              v49 = *(v8 + 24);
              if (!v49)
              {
                goto LABEL_43;
              }

              goto LABEL_44;
            }

LABEL_79:
            __break(1u);
LABEL_80:
            swift_once();
LABEL_58:
            v72 = [(__CVBuffer *)a2 transform:a1 srcRect:a4 dst:v10 dstRect:byte_1EE0E3BF8 rotate:v35 sync_m2m:v37, v38, v39, v98, y, width, height];
            swift_unknownObjectRelease();

            if (v72 == sub_1D8B15430())
            {
              v95[0] = 0;
              memset(v96, 0, sizeof(v96));
              v97 = 1;
              sub_1D8A3D48C(a4, v77, v95, v96, a5, a6, a7, a8);
            }

            else
            {
              sub_1D8A51FBC();
              swift_allocError();
              *v73 = 1;
              *(v73 + 4) = 1;
              swift_willThrow();
            }

            goto LABEL_61;
          }

LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    __break(1u);
    goto LABEL_76;
  }

  v50 = CVPixelBufferGetPixelFormatType(a2);
  if (sub_1D8A3D0E8(v50))
  {
    sub_1D8A3AD80(v13, v12);
    if (v13 != v52 || v12 != v51)
    {
      sub_1D8A51FBC();
      swift_allocError();
      *v74 = 0;
LABEL_73:
      *(v74 + 4) = 1;
      swift_willThrow();
      return;
    }
  }

  sub_1D8A3D2C8(v38, v39, v13, v12);
  if (v9)
  {
    return;
  }

  v53 = sub_1D8A3D004();
  if (v88 != 0.0)
  {
    v75 = v88 == 3.14159265;
    if (v88 == -3.14159265)
    {
      v75 = 1;
    }

    if (v88 != 4.71238898 && v88 != 1.57079633 && !v75)
    {
      goto LABEL_81;
    }
  }

  if (qword_1EE0E3BF0 != -1)
  {
    swift_once();
  }

  v76 = [v53 transform:a1 srcRect:a2 dst:v35 dstRect:v37 rotate:v38 sync:v39 m2m:{a5, a6, a7, a8}];
  swift_unknownObjectRelease();
  if (v76 != sub_1D8B15430())
  {
    sub_1D8A51FBC();
    swift_allocError();
    *v74 = 1;
    goto LABEL_73;
  }
}

uint64_t M2MHandle.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t M2MHandle.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1D8A3DE14()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

unint64_t sub_1D8A3DEB8()
{
  v1 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000010;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D8A3DF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A57608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A3DF4C(uint64_t a1)
{
  v2 = sub_1D8A52010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A3DF88(uint64_t a1)
{
  v2 = sub_1D8A52010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CVCoordinator.Configuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA679A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v13 = *(v1 + 8);
  v12 = v1[2];
  HIDWORD(v11) = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A52010();

  sub_1D8B16DD0();
  v19 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA679B8);
  sub_1D8A520B8(&qword_1ECA679C0, sub_1D8A51970, sub_1D8A51248);
  sub_1D8B16AE0();

  if (!v2)
  {
    v9 = BYTE4(v11);
    v17 = 1;
    sub_1D8B16AA0();
    v16 = 2;
    sub_1D8B16AD0();
    v15 = v9;
    v14 = 3;
    sub_1D8A52064();
    sub_1D8B16AE0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CVCoordinator.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA679D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A52010();
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA679B8);
  v18 = 0;
  sub_1D8A520B8(&qword_1ECA679D8, sub_1D8A51A7C, sub_1D8A51410);
  sub_1D8B16A10();
  v9 = v19;
  v17 = 1;
  v10 = sub_1D8B169D0();
  v16 = 2;
  v13 = sub_1D8B16A00();
  v14 = 3;
  sub_1D8A52148();
  sub_1D8B16A10();
  (*(v6 + 8))(v8, v5);
  v12 = v15;
  *a2 = v9;
  *(a2 + 8) = v10 & 1;
  *(a2 + 16) = v13;
  *(a2 + 24) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D8A3E4F8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D893DF5C(&unk_1F5426928);
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 3;
  return result;
}

uint64_t CVCoordinator.init(configuration:trackManager:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_1D8A5047C(a1, a2);

  return v2;
}

uint64_t sub_1D8A3E5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D8A3E5C8, 0, 0);
}

uint64_t sub_1D8A3E5C8()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  *(v0 + 88) = v2;
  if (!v2)
  {
LABEL_10:
    v21 = *(v0 + 8);

    return v21();
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    *(v0 + 104) = v4;
    *(v0 + 112) = v5;
    *(v0 + 96) = v3;
    v6 = *(v0 + 72);
    v7 = *(v1 + v3 + 32);
    *(v0 + 144) = v7;
    if (!*(v6 + 16))
    {
      goto LABEL_6;
    }

    v8 = sub_1D881F7DC(v7);
    if (v9)
    {
      break;
    }

    LOBYTE(v7) = *(v0 + 144);
    v5 = *(v0 + 112);
LABEL_6:
    v10 = *(v0 + 80);
    v11 = *(v10 + 40);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v7;
    v13 = v11;

    sub_1D878BBCC(v5);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1D8A59BE0;
    *(v14 + 24) = v12;
    *(v0 + 48) = sub_1D8A5A6F0;
    *(v0 + 56) = v14;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1D8A3EDFC;
    *(v0 + 40) = &block_descriptor_422;
    v15 = _Block_copy((v0 + 16));

    dispatch_sync(v13, v15);

    _Block_release(v15);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
      return MEMORY[0x1EEE6DA10](v16, v17, v18, v19, v20);
    }

    v3 = *(v0 + 96) + 1;
    if (v3 == *(v0 + 88))
    {

      goto LABEL_10;
    }

    v1 = *(v0 + 64);
    v5 = sub_1D8A59BE0;
    v4 = v12;
  }

  v23 = *(*(*(v0 + 72) + 56) + 8 * v8);
  *(v0 + 120) = v23;

  v24 = swift_task_alloc();
  *(v0 + 128) = v24;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  *v24 = v0;
  v24[1] = sub_1D8A3E8CC;
  v20 = MEMORY[0x1E69E7288];
  v18 = MEMORY[0x1E69E7CA8] + 8;
  v17 = v23;
  v19 = v16;

  return MEMORY[0x1EEE6DA10](v16, v17, v18, v19, v20);
}

uint64_t sub_1D8A3E8CC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = sub_1D8A3ECC4;
  }

  else
  {
    v2 = sub_1D8A3E9E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A3E9E8()
{

  while (1)
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 112);
    v3 = *(v0 + 80);
    v4 = *(v3 + 40);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v1;
    v6 = v4;

    sub_1D878BBCC(v2);
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1D8A59BE0;
    *(v7 + 24) = v5;
    *(v0 + 48) = sub_1D8A5A6F0;
    *(v0 + 56) = v7;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1D8A3EDFC;
    *(v0 + 40) = &block_descriptor_422;
    v8 = _Block_copy((v0 + 16));

    dispatch_sync(v6, v8);

    _Block_release(v8);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
      return MEMORY[0x1EEE6DA10](v9, v10, v11, v12, v13);
    }

    v14 = *(v0 + 96) + 1;
    if (v14 == *(v0 + 88))
    {
      break;
    }

    *(v0 + 104) = v5;
    *(v0 + 112) = sub_1D8A59BE0;
    *(v0 + 96) = v14;
    v15 = *(v0 + 72);
    v16 = *(*(v0 + 64) + v14 + 32);
    *(v0 + 144) = v16;
    if (*(v15 + 16))
    {
      v17 = sub_1D881F7DC(v16);
      if (v18)
      {
        v19 = *(*(*(v0 + 72) + 56) + 8 * v17);
        *(v0 + 120) = v19;

        v20 = swift_task_alloc();
        *(v0 + 128) = v20;
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
        *v20 = v0;
        v20[1] = sub_1D8A3E8CC;
        v13 = MEMORY[0x1E69E7288];
        v11 = MEMORY[0x1E69E7CA8] + 8;
        v10 = v19;
        v12 = v9;

        return MEMORY[0x1EEE6DA10](v9, v10, v11, v12, v13);
      }
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D8A3ECC4()
{
  sub_1D878BBCC(*(v0 + 112));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A3ED28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = sub_1D881F7DC(a2);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a1 + 104);
    *(a1 + 104) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8969464();
    }

    sub_1D8AF2654(v6, v8);
    *(a1 + 104) = v8;
  }

  return swift_endAccess();
}

size_t sub_1D8A3EE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 32))(&pixelBuffer, a2, a3);
  v3 = pixelBuffer;
  if (v7)
  {
    sub_1D88C3978(pixelBuffer, v7);
    return 0;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  result = CVPixelBufferGetHeight(v3);
  if (((result | Width) & 0x8000000000000000) == 0)
  {
    CVPixelBufferGetPixelFormatType(v3);
    sub_1D8A52644();
    sub_1D88C3978(v3, 0);
    return Width;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A3EF20()
{
  v0[14] = 0;
  v1 = v0[15];
  v2 = *(v1 + 40);
  v3 = swift_allocObject();
  v0[16] = v3;
  *(v3 + 16) = v0 + 14;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D8A528C0;
  *(v4 + 24) = v3;
  v0[6] = sub_1D8A5A6F0;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D8A3EDFC;
  v0[5] = &block_descriptor_40;
  v5 = _Block_copy(v0 + 2);
  v6 = v2;

  dispatch_sync(v6, v5);

  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = v0[14];
  v0[17] = v12;
  if (v12)
  {
    v13 = *(v12 + 16);
    v0[18] = v13;

    if (v13)
    {
      v0[19] = 0;
      if (*(v7 + 16))
      {
        v14 = *(v7 + 32);
        v0[20] = v14;

        v15 = swift_task_alloc();
        v0[21] = v15;
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
        *v15 = v0;
        v15[1] = sub_1D8A3F39C;
        v11 = MEMORY[0x1E69E7288];
        v9 = MEMORY[0x1E69E7CA8] + 8;
        v8 = v14;
        v10 = v7;

        return MEMORY[0x1EEE6DA10](v7, v8, v9, v10, v11);
      }

      goto LABEL_19;
    }

    v17 = v0[15];

    *(v0 + 208) = 0;
    v18 = *(v17 + 40);
    v19 = swift_allocObject();
    v0[23] = v19;
    *(v19 + 16) = v0 + 26;
    *(v19 + 24) = v17;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1D8A528C8;
    *(v20 + 24) = v19;
    v0[12] = sub_1D8A5A6F0;
    v0[13] = v20;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = sub_1D8A3EDFC;
    v0[11] = &block_descriptor_52;
    v21 = _Block_copy(v0 + 8);

    v22 = v18;

    dispatch_sync(v22, v21);

    _Block_release(v21);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
LABEL_20:
      __break(1u);
      return MEMORY[0x1EEE6DA10](v7, v8, v9, v10, v11);
    }

    if (*(v0 + 208) == 1)
    {
      v23 = swift_task_alloc();
      v0[24] = v23;
      *v23 = v0;
      v23[1] = sub_1D8A3F800;

      return sub_1D8A3EF00();
    }

    v16 = sub_1D8A528C8;
  }

  else
  {
    v16 = 0;
  }

  sub_1D878BBCC(v16);
  v25 = v0[1];

  return v25();
}

uint64_t sub_1D8A3F39C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {

    v2 = sub_1D8A3F9A4;
  }

  else
  {
    v2 = sub_1D8A3F4B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A3F4B8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  if (v1 + 1 != v2)
  {
    v16 = *(v0 + 152) + 1;
    *(v0 + 152) = v16;
    v17 = *(v0 + 136);
    if (v16 < *(v17 + 16))
    {
      v18 = *(v17 + 8 * v16 + 32);
      *(v0 + 160) = v18;

      v19 = swift_task_alloc();
      *(v0 + 168) = v19;
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
      *v19 = v0;
      v19[1] = sub_1D8A3F39C;
      v7 = MEMORY[0x1E69E7288];
      v5 = MEMORY[0x1E69E7CA8] + 8;
      v4 = v18;
      v6 = v3;

      return MEMORY[0x1EEE6DA10](v3, v4, v5, v6, v7);
    }

LABEL_15:
    __break(1u);
    return MEMORY[0x1EEE6DA10](v3, v4, v5, v6, v7);
  }

  v8 = *(v0 + 120);

  *(v0 + 208) = 0;
  v9 = *(v8 + 40);
  v10 = swift_allocObject();
  *(v0 + 184) = v10;
  *(v10 + 16) = v0 + 208;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D8A528C8;
  *(v11 + 24) = v10;
  *(v0 + 96) = sub_1D8A5A6F0;
  *(v0 + 104) = v11;
  *(v0 + 64) = MEMORY[0x1E69E9820];
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_1D8A3EDFC;
  *(v0 + 88) = &block_descriptor_52;
  v12 = _Block_copy((v0 + 64));

  v13 = v9;

  dispatch_sync(v13, v12);

  _Block_release(v12);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v0 + 208) == 1)
  {
    v14 = swift_task_alloc();
    *(v0 + 192) = v14;
    *v14 = v0;
    v14[1] = sub_1D8A3F800;

    return sub_1D8A3EF00();
  }

  else
  {

    sub_1D878BBCC(sub_1D8A528C8);
    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1D8A3F800()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1D8A3FA28;
  }

  else
  {
    v2 = sub_1D8A3F914;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A3F914()
{

  sub_1D878BBCC(sub_1D8A528C8);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A3F9A4()
{

  sub_1D878BBCC(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A3FA28()
{

  sub_1D878BBCC(sub_1D8A528C8);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A3FAC0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 104);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_1D87F3C44(*(v4 + 16), 0);
  v7 = sub_1D881854C(&v9, v6 + 4, v5, v4);

  sub_1D87977A0();
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:
    v6 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v6;
}

uint64_t sub_1D8A3FBA0(uint64_t a1)
{
  v1 = *a1;
  v19 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v1[8];
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = MEMORY[0x1E69E7CC0]; v6; result = sub_1D87C15B4(&v20, &i[5 * v17 + 4]))
  {
LABEL_10:
    while (1)
    {
      v12 = __clz(__rbit64(v6)) | (v9 << 6);
      v13 = *(v1[6] + v12);
      v14 = v1[7] + 8 * v12;
      v15 = *v14;
      LOBYTE(v14) = *(v14 + 4);
      v6 &= v6 - 1;
      v23[0] = v13;
      v24 = v15;
      v25 = v14;
      sub_1D8A3FD9C(v23, v1, v19, v2, v3, &v20);
      if (v21)
      {
        break;
      }

      result = sub_1D87A14E4(&v20, &unk_1ECA67D50);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    sub_1D87C15B4(&v20, v22);
    sub_1D87C15B4(v22, &v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1D87C87E4(0, i[2] + 1, 1, i);
    }

    v17 = i[2];
    v16 = i[3];
    if (v17 >= v16 >> 1)
    {
      i = sub_1D87C87E4((v16 > 1), v17 + 1, 1, i);
    }

    i[2] = v17 + 1;
  }

LABEL_6:
  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      *(v18 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_processors) = i;
    }

    v6 = v1[v11 + 8];
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

_BYTE *sub_1D8A3FD9C@<X0>(_BYTE *result@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  switch(*result)
  {
    case 1:
      v7 = type metadata accessor for StreamingVisualIntelligenceProcessor(0);
      swift_allocObject();
      v10 = 0;
      goto LABEL_8;
    case 2:
    case 7:
    case 8:
    case 0xB:
    case 0xC:
    case 0xD:
      *(a6 + 32) = 0;
      *a6 = 0u;
      *(a6 + 16) = 0u;
      return result;
    case 3:
      v14 = type metadata accessor for VisionProcessor(0);
      v15 = swift_allocObject();
      v28 = a2;

      swift_defaultActor_initialize();
      v29 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_logger;
      if (qword_1EE0E4370 != -1)
      {
        swift_once();
      }

      v30 = sub_1D8B151E0();
      v31 = __swift_project_value_buffer(v30, qword_1EE0E4378);
      (*(*(v30 - 8) + 16))(v15 + v29, v31, v30);
      v32 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_sequenceHandler;
      result = [objc_allocWithZone(MEMORY[0x1E6984680]) init];
      *(v15 + v32) = result;
      v33 = v15 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_configuration;
      *v33 = v28;
      *(v33 + 8) = a3 & 1;
      *(v33 + 16) = a4;
      *(v33 + 24) = a5;
      v22 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType;
      v23 = 3;
      goto LABEL_20;
    case 4:
      v7 = type metadata accessor for StreamingVisualIntelligenceProcessor(0);
      swift_allocObject();
      v10 = 1;
LABEL_8:
      result = sub_1D8A83C40(v10);
      v8 = &off_1F5436878;
      goto LABEL_11;
    case 5:
      if (a3)
      {
        v14 = type metadata accessor for VisionProcessor(0);
        v15 = swift_allocObject();
        v16 = a2;

        swift_defaultActor_initialize();
        v17 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_logger;
        if (qword_1EE0E4370 != -1)
        {
          swift_once();
        }

        v18 = sub_1D8B151E0();
        v19 = __swift_project_value_buffer(v18, qword_1EE0E4378);
        (*(*(v18 - 8) + 16))(v15 + v17, v19, v18);
        v20 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_sequenceHandler;
        result = [objc_allocWithZone(MEMORY[0x1E6984680]) init];
        *(v15 + v20) = result;
        v21 = v15 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_configuration;
        *v21 = v16;
        *(v21 + 8) = 1;
        *(v21 + 16) = a4;
        *(v21 + 24) = a5;
        v22 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType;
        v23 = 5;
LABEL_20:
        *(v15 + v22) = v23;
        *(a6 + 24) = v14;
        *(a6 + 32) = &off_1F5436AA8;
        *a6 = v15;
      }

      else
      {
        v7 = type metadata accessor for CoreRecognitionProcessor();
        swift_allocObject();
        result = sub_1D8A29A0C();
        v8 = &off_1F5433830;
LABEL_11:
        *(a6 + 24) = v7;
        *(a6 + 32) = v8;
        *a6 = result;
      }

      return result;
    case 6:
      v34 = a2;
      v35 = a3 & 1;
      v36 = a4;
      v37 = a5;
      v7 = type metadata accessor for BarcodeProcessor(0);
      swift_allocObject();

      result = BarcodeProcessor.init(configuration:)(&v34);
      v8 = &off_1F5433678;
      goto LABEL_11;
    case 9:
      v9 = 9;
      goto LABEL_10;
    case 0xA:
      v9 = 10;
LABEL_10:
      LOBYTE(v34) = v9;
      v7 = type metadata accessor for AFMProcessor(0);
      swift_allocObject();
      result = sub_1D8A17FDC(&v34);
      v8 = &off_1F5433640;
      goto LABEL_11;
    default:
      v34 = a2;
      v35 = a3 & 1;
      v36 = a4;
      v37 = a5;
      v7 = type metadata accessor for GroundingProcessor();
      swift_allocObject();

      result = sub_1D8A097BC(&v34);
      v8 = &off_1F5432FD8;
      goto LABEL_11;
  }
}

uint64_t sub_1D8A401C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8A401EC, 0, 0);
}

uint64_t sub_1D8A401EC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = v2 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage));
  sub_1D8A402B4((v4 + 8), v2, v1, v0 + 2, v3);
  os_unfair_lock_unlock(v4);
  v5 = v0[1];

  return v5();
}

void sub_1D8A402B4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v6 = MEMORY[0x1E69E7CC8];
  v125 = MEMORY[0x1E69E7CC8];
  v7 = *(a2 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_processors);
  v86 = *(v7 + 16);
  if (!v86)
  {
    goto LABEL_90;
  }

  v83 = a5;
  v8 = *(a3 + 16);
  v87 = v7 + 32;
  v94 = a3 + 32;

  v10 = 0;
  v90 = a1;
  v91 = v8;
  v85 = v9;
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      sub_1D8B168C0();
      __break(1u);
      return;
    }

    v89 = v10;
    sub_1D87C1470(v87 + 40 * v10, v122);
    if (v8)
    {
      break;
    }

LABEL_3:
    v10 = v89 + 1;
    __swift_destroy_boxed_opaque_existential_1(v122);
    v9 = v85;
    if (v89 + 1 == v86)
    {

      v6 = v125;
      a5 = v83;
LABEL_90:
      *a5 = *a1;
      a5[1] = v6;
      v81 = *(a2 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorageTaskSemaphore);

      if (v81)
      {
        v82 = v81;
        sub_1D8B163B0();
      }

      return;
    }
  }

  v11 = 0;
LABEL_7:
  v12 = 0;
  v13 = *(v94 + v11++);
  v14 = *a1 + 64;
  v15 = 1 << *(*a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(*a1 + 64);
  v18 = (v15 + 63) >> 6;
LABEL_11:
  if (v17)
  {
    v19 = v12;
    goto LABEL_17;
  }

  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_85;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v19);
    ++v12;
    if (v17)
    {
      v12 = v19;
LABEL_17:
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      if (*(*(*a1 + 48) + (v20 | (v19 << 6))) != v13)
      {
        goto LABEL_11;
      }

LABEL_81:
      if (v11 == v8)
      {
        goto LABEL_3;
      }

      goto LABEL_7;
    }
  }

  v136 = *a1;
  v95 = v11;
  v21 = v123;
  v22 = v124;
  __swift_project_boxed_opaque_existential_1(v122, v123);
  LOBYTE(v103) = v13;
  (*(v22 + 8))(v126, &v103, v21, v22);
  v129 = v127;
  v128[2] = v126[2];
  v128[3] = v126[3];
  v128[0] = v126[0];
  v128[1] = v126[1];
  if (v127 == 2)
  {
LABEL_80:
    v11 = v95;
    goto LABEL_81;
  }

  sub_1D88C5438(v128, v121);
  sub_1D87C1470(v122, &v103);
  v93 = v13;
  sub_1D895F518(&v103, v13);
  v23 = v136;
  v24 = 1 << *(v136 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(v136 + 64);
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  while (v26)
  {
LABEL_30:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = *(v23 + 56) + 88 * (v30 | (v28 << 6));
    v32 = *(v31 + 16);
    v130[0] = *v31;
    v130[1] = v32;
    v34 = *(v31 + 48);
    v33 = *(v31 + 64);
    v35 = *(v31 + 32);
    v131 = *(v31 + 80);
    v130[3] = v34;
    v130[4] = v33;
    v130[2] = v35;
    sub_1D88C5438(v130, v109);
    sub_1D88C5438(v109, &v110);
    v36 = v110;
    v37 = v111;
    v39 = v112;
    v38 = v113;
    v40 = v114;
    v41 = v115;
    v42 = v116;
    v43 = v117;
    v97 = v118;
    v98 = v119;
    v96 = v120;
    sub_1D88C5438(v121, v99);
    if (v37 == 1)
    {
      if (v99[4])
      {
LABEL_35:
        if (v43)
        {
          if (v43 == 1)
          {
            v23 = v136;
            if (v101 == 1 && v39 == *&v99[8])
            {
              v44 = BYTE8(v101);
              v45 = DWORD1(v101);
              v46 = v102;
              v47 = *(&v100 + 1);
              v48 = *&v100;
              v49 = *&v99[24];
              v50 = *&v99[16];
              sub_1D881F59C(v130, &v103);
              v137.origin.x = v38;
              v137.origin.y = v40;
              v137.size.width = v41;
              v137.size.height = v42;
              v138.origin.x = v50;
              v138.origin.y = v49;
              v138.size.width = v48;
              v138.size.height = v47;
              if (!CGRectEqualToRect(v137, v138))
              {
                goto LABEL_69;
              }

              if (!v98)
              {
LABEL_54:
                if ((v44 & 1) != 0 || v97 != v45)
                {
                  goto LABEL_69;
                }

                goto LABEL_61;
              }

LABEL_41:
              if (v97)
              {
                if (v45)
                {
                  v51 = v44;
                }

                else
                {
                  v51 = 0;
                }

                if ((v51 & 1) == 0)
                {
                  goto LABEL_69;
                }
              }

              else
              {
                if (v45)
                {
                  v52 = 0;
                }

                else
                {
                  v52 = v44;
                }

                if ((v52 & 1) == 0)
                {
                  goto LABEL_69;
                }
              }

LABEL_61:
              if (v96)
              {
                if (v96 == 1)
                {
                  if (v46 == 1)
                  {
                    goto LABEL_83;
                  }
                }

                else if (v46 >= 2)
                {
                  type metadata accessor for CGColor(0);
                  sub_1D8A4F044(&unk_1EE0E3800, 255, type metadata accessor for CGColor);
                  if (sub_1D8B13D60())
                  {
LABEL_83:

                    sub_1D881F59C(v130, &v103);
                    a1 = v90;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *&v103 = *v90;
                    sub_1D8B06498(v130, v93, isUniquelyReferenced_nonNull_native);
                    sub_1D87A14E4(v126, &qword_1ECA67DE8);
                    sub_1D881F5F8(v130);
LABEL_72:
                    *a1 = v103;
                    v8 = v91;
                    goto LABEL_80;
                  }
                }
              }

              else if (!v46)
              {
                goto LABEL_83;
              }

LABEL_69:
              sub_1D881F5F8(v130);
            }
          }

          else
          {
            v23 = v136;
            if (v101 == 2 && !(*&v99[16] | *&v99[8] | *&v99[24] | v100 | *(&v100 + 1)))
            {
LABEL_53:
              v44 = BYTE8(v101);
              v45 = DWORD1(v101);
              v46 = v102;
              sub_1D881F59C(v130, &v103);
              if (!v98)
              {
                goto LABEL_54;
              }

              goto LABEL_41;
            }
          }
        }

        else if (v101)
        {
          v23 = v136;
        }

        else
        {
          v23 = v136;
          if (__PAIR128__(*&v38, v39) == *&v99[8])
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
        v23 = v136;
      }
    }

    else
    {
      if ((v99[4] & 1) == 0 && v36 == *v99)
      {
        goto LABEL_35;
      }

      v23 = v136;
    }
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      sub_1D88C5438(v121, &v110);
      if (v117)
      {
        v108 = 0;
        sub_1D88C5438(v121, &v103);
        *(&v107 + 1) = 0;
        v134[2] = v105;
        v134[3] = v106;
        v135 = v108;
        v134[0] = v103;
        v134[1] = v104;
        v134[4] = v107;
        sub_1D87A0E38(v126, &v103, &qword_1ECA67DE8);
        a1 = v90;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        *&v103 = *v90;
        sub_1D8B06498(v134, v93, v53);
        sub_1D87A14E4(v126, &qword_1ECA67DE8);
        goto LABEL_72;
      }

      v8 = v91;
      if (v111)
      {
        goto LABEL_95;
      }

      v54 = v110;
      v55 = v112;
      v56 = *&v113;
      v57 = v120;
      sub_1D87A0E38(v126, &v103, &qword_1ECA67DE8);
      v58 = sub_1D8A4E020(v55, v56, v54);
      if (v92)
      {
        goto LABEL_86;
      }

      v59 = v58;
      v108 = 0;
      sub_1D88C5438(v121, &v103);
      *(&v107 + 1) = v59;
      v100 = v105;
      v101 = v106;
      *v99 = v103;
      *&v99[16] = v104;
      v102 = v107;
      v60 = v108;
      if (v57 >= 2)
      {
        sub_1D87A0E38(v126, &v103, &qword_1ECA67DE8);
        v59;
        v62 = sub_1D8A4E020(v55, v56, v54);
        v63 = [objc_allocWithZone(MEMORY[0x1E695F610]) initWithCGColor_];
        v64 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithColor_];
        if (((v56 | v55) & 0x8000000000000000) != 0)
        {
          goto LABEL_94;
        }

        v65 = v64;
        v66 = [v64 imageByCroppingToRect_];

        v67 = sub_1D8A3DE14();
        [v66 extent];
        v69 = v68;
        v71 = v70;
        v73 = v72;
        v75 = v74;
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        [v67 render:v66 toCVPixelBuffer:v62 bounds:DeviceRGB colorSpace:{v69, v71, v73, v75}];
        sub_1D87A14E4(v126, &qword_1ECA67DE8);

        a1 = v90;
        v8 = v91;
      }

      else
      {
        v61 = v59;
        v62 = v60;
        a1 = v90;
      }

      v132[2] = v100;
      v132[3] = v101;
      v132[4] = v102;
      v132[0] = *v99;
      v132[1] = *&v99[16];
      v133 = v62;
      sub_1D881F59C(v132, &v103);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      *&v103 = *a1;
      sub_1D8B06498(v132, v93, v77);

      sub_1D87A14E4(v126, &qword_1ECA67DE8);
      *a1 = v103;
      v105 = v100;
      v106 = v101;
      v107 = v102;
      v103 = *v99;
      v104 = *&v99[16];
      v108 = v62;
      sub_1D881F5F8(&v103);
      goto LABEL_80;
    }

    v26 = *(v14 + 8 * v29);
    ++v28;
    if (v26)
    {
      v28 = v29;
      goto LABEL_30;
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  sub_1D87A14E4(v126, &qword_1ECA67DE8);

  sub_1D87A14E4(v126, &qword_1ECA67DE8);

  __swift_destroy_boxed_opaque_existential_1(v122);
  v79 = *(a2 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorageTaskSemaphore);
  if (v79)
  {
    v80 = v79;
    sub_1D8B163B0();
  }

  *a4 = v92;
}

uint64_t sub_1D8A40D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 496) = a5;
  v7 = swift_task_alloc();
  *(v5 + 464) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67DE0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  *v7 = v5;
  v7[1] = sub_1D8A40E04;
  v10 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v5 + 448, a4, v8, v9, v10);
}

uint64_t sub_1D8A40E04()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_1D8A4130C;
  }

  else
  {
    v2 = sub_1D8A40F18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A40F18()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);
  if (*(v2 + 16) && (v3 = sub_1D881F7DC(*(v0 + 496)), (v4 & 1) != 0))
  {
    sub_1D87C1470(*(v2 + 56) + 40 * v3, v0 + 408);

    sub_1D87C15B4((v0 + 408), v0 + 368);
    if (*(v1 + 16))
    {
      v5 = sub_1D881F7DC(*(v0 + 496));
      if (v6)
      {
        v7 = *(v1 + 56) + 88 * v5;
        v8 = *v7;
        *(v0 + 120) = *(v7 + 16);
        *(v0 + 104) = v8;
        v9 = *(v7 + 32);
        v10 = *(v7 + 48);
        v11 = *(v7 + 64);
        *(v0 + 184) = *(v7 + 80);
        *(v0 + 168) = v11;
        *(v0 + 152) = v10;
        *(v0 + 136) = v9;
        sub_1D881F59C(v0 + 104, v0 + 192);

        v12 = *(v0 + 392);
        v13 = *(v0 + 400);
        __swift_project_boxed_opaque_existential_1((v0 + 368), v12);
        v14 = *(v0 + 152);
        *(v0 + 48) = *(v0 + 136);
        *(v0 + 64) = v14;
        *(v0 + 80) = *(v0 + 168);
        *(v0 + 96) = *(v0 + 184);
        v15 = *(v0 + 120);
        *(v0 + 16) = *(v0 + 104);
        *(v0 + 32) = v15;
        v16 = *(v13 + 24);
        sub_1D881F59C(v0 + 104, v0 + 280);
        v20 = (v16 + *v16);
        v17 = swift_task_alloc();
        *(v0 + 480) = v17;
        *v17 = v0;
        v17[1] = sub_1D8A41184;

        return v20(v0 + 16, v12, v13);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 368);
  }

  else
  {
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D8A41184()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_1D8A41324;
  }

  else
  {
    sub_1D881F5F8(v2 + 104);
    v3 = sub_1D8A412A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8A412A0()
{
  sub_1D881F5F8(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1(v0 + 368);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A41324()
{
  sub_1D881F5F8(v0 + 104);
  sub_1D881F5F8(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1(v0 + 368);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A413B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  *(result + 16) = 1;
  swift_beginAccess();
  v2 = *(v1 + 88);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  while (v5)
  {
LABEL_12:
    v9 = *(*(v2 + 48) + (__clz(__rbit64(v5)) | (v7 << 6)));
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v1 + 88);
    *(v1 + 88) = 0x8000000000000000;
    v12 = sub_1D881F7DC(v9);
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_25;
    }

    v18 = v13;
    if (v11[3] < v17)
    {
      sub_1D8971854(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_1D881F7DC(v9);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_27;
      }

LABEL_17:
      v20 = v11;
      if (v18)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v23 = v12;
    sub_1D89692F4();
    v12 = v23;
    v20 = v11;
    if (v18)
    {
LABEL_5:
      *(v20[7] + 8 * v12) = 0xFFF0000000000000;
      goto LABEL_6;
    }

LABEL_18:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    *(v20[6] + v12) = v9;
    *(v20[7] + 8 * v12) = 0xFFF0000000000000;
    v21 = v20[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_26;
    }

    v20[2] = v22;
LABEL_6:
    v5 &= v5 - 1;
    *(v1 + 88) = v20;
    swift_endAccess();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      swift_beginAccess();
      *(v1 + 96) = MEMORY[0x1E69E7CD0];
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8A41654(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D8B155B0();
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B155E0();
  v16 = *(v8 - 8);
  v17 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 40);
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a1;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  sub_1D8B155D0();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D8A4F044(&qword_1EE0E3A50, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838);
  sub_1D881CF20(&qword_1EE0E3950, &unk_1ECA66838);
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v18 + 8))(v7, v5);
  (*(v16 + 8))(v10, v17);
}

uint64_t sub_1D8A41934()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_1D8A41984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[46] = a7;
  v8[47] = a8;
  v8[44] = a5;
  v8[45] = a6;
  v8[42] = a3;
  v8[43] = a4;
  v8[40] = a1;
  v8[41] = a2;
  v14 = swift_task_alloc();
  v8[48] = v14;
  *v14 = v8;
  v14[1] = sub_1D8A41A58;

  return sub_1D8A41F80(a2, a5, a4, a7, a8);
}

uint64_t sub_1D8A41A58(uint64_t a1)
{
  *(*v1 + 392) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8A41B58, 0, 0);
}

uint64_t sub_1D8A41B58()
{
  if (*(v0 + 392))
  {
    v1 = *(v0 + 352);
    v2 = *(v0 + 336);
    v3 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v4 = *(v1 + 72);
    if (v4 == 1)
    {
      v5 = 0uLL;
      v6 = 2;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
    }

    else
    {
      v13 = *(v0 + 352);
      v14 = *(v13 + 80);
      *(v0 + 16) = *v13;
      v15 = *(v13 + 16);
      v16 = *(v13 + 32);
      v17 = *(v13 + 48);
      v18 = *(v13 + 64);
      *(v0 + 48) = v16;
      *(v0 + 64) = v17;
      *(v0 + 32) = v15;
      *(v0 + 80) = v18;
      *(v0 + 88) = v4;
      *(v0 + 96) = v14;
      sub_1D88C5438(v0 + 16, v0 + 248);
      sub_1D88C5438(v0 + 248, v0 + 176);
      v5 = *(v0 + 176);
      v7 = *(v0 + 192);
      v8 = *(v0 + 208);
      v9 = *(v0 + 224);
      v6 = *(v0 + 240);
    }

    *(v0 + 104) = v5;
    *(v0 + 120) = v7;
    *(v0 + 136) = v8;
    *(v0 + 152) = v9;
    *(v0 + 168) = v6;
    v20 = *(v3 + 32) + **(v3 + 32);
    v19 = swift_task_alloc();
    *(v0 + 400) = v19;
    *v19 = v0;
    v19[1] = sub_1D8A41DA4;

    __asm { BRAA            X8, X16 }
  }

  sub_1D88C53E4();
  swift_allocError();
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 3;
  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D8A41DA4()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_1D8A41F1C;
  }

  else
  {
    v2 = sub_1D8A41EB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A41EB8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A41F1C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A41F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8A41FA8, 0, 0);
}

uint64_t sub_1D8A41FA8()
{
  v22 = v0;
  (*(*(v0 + 120) + 32))(&v19, *(v0 + 112));
  v1 = v19;
  if (!v20)
  {
    goto LABEL_14;
  }

  v2 = *(v0 + 96);
  sub_1D88C3978(v19, v20);
  v1 = *(v2 + 72);
  if (v1 == 1)
  {
    v1 = 0;
  }

  else
  {
    v3 = v1;
  }

  *(v0 + 128) = v1;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1D8B0AAA4();
  if (v1 && (v4 & 1) != 0)
  {
    v5 = *(v0 + 104);
    v21 = *(v5 + *(type metadata accessor for CVProcessorTaskDescriptor(0) + 20));
    v19 = CVDetection.DetectionType.description.getter();
    v20 = v6;
    v7 = v1;
    MEMORY[0x1DA71EFA0](0x2D7475706E692DLL, 0xE700000000000000);
    *(v0 + 16) = CVPixelBufferGetWidth(v7);
    v8 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v8);

    MEMORY[0x1DA71EFA0](45, 0xE100000000000000);
    *(v0 + 16) = CVPixelBufferGetHeight(v7);
    v9 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v9);

    v10 = v19;
    v11 = v20;
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 112);
    v13 = *(v0 + 120);
    v14 = qword_1ECA675B0;
    *(v0 + 136) = qword_1ECA675B0;
    v15 = CameraSourceFrame.timestamp.getter(v12, v13);
    *(v0 + 40) = v7;
    *(v0 + 80) = 0;
    *(v0 + 16) = v10;
    *(v0 + 24) = v11;
    *(v0 + 32) = v15;
    v16 = v7;

    return MEMORY[0x1EEE6DFA0](sub_1D8A42218, v14, 0);
  }

  else
  {
LABEL_14:
    v17 = *(v0 + 8);

    return v17(v1);
  }
}

uint64_t sub_1D8A42218()
{
  sub_1D8A3B1F4(v0 + 16, 0x7475706E692D7663, 0xEE00616964656D2DLL);
  sub_1D87DC9A0(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D8A422AC, 0, 0);
}

uint64_t sub_1D8A422AC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t CVCoordinator.deinit()
{

  swift_weakDestroy();

  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_logger;
  v2 = sub_1D8B151E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D8A50E28(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_signposter, type metadata accessor for LoggingSignposter);

  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage + 8, &qword_1ECA679F0);
  return v0;
}

uint64_t CVCoordinator.__deallocating_deinit()
{
  CVCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8A4249C()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA675B0;
  *(v0 + 24) = qword_1ECA675B0;

  return MEMORY[0x1EEE6DFA0](sub_1D8A42534, v1, 0);
}

uint64_t sub_1D8A42534()
{
  sub_1D8A3B1F4(*(v0 + 16), 0xD000000000000010, 0x80000001D8B47FC0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A425CC()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA675B0;
  *(v0 + 24) = qword_1ECA675B0;

  return MEMORY[0x1EEE6DFA0](sub_1D8A5A6D4, v1, 0);
}

uint64_t sub_1D8A42664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, double a9, float a10, uint64_t a11)
{
  v198 = a7;
  v227 = a6;
  LODWORD(v229) = a5;
  v17 = a1;
  v18 = *(a8 - 8);
  v19 = MEMORY[0x1EEE9AC00](a1);
  v194 = &v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v192 - v21;
  v218 = sub_1D8B15610();
  v23 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v217 = (&v192 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v207 = type metadata accessor for DetectionRequest.Originator(0);
  v25 = MEMORY[0x1EEE9AC00](v207);
  v212 = &v192 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v211 = (&v192 - v27);
  v223 = type metadata accessor for DetectionRequest(0);
  v219 = *(v223 - 8);
  v28 = MEMORY[0x1EEE9AC00](v223);
  v224 = &v192 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v231 = (&v192 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v228 = &v192 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v226 = &v192 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v232 = &v192 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v222 = &v192 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v197 = &v192 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v196 = &v192 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v205 = &v192 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v220 = &v192 - v46;
  v200 = v18;
  v199 = a4;
  v206 = v17;
  v193 = v22;
  if (v17)
  {
    v47 = MEMORY[0x1E69E7CD0];
    swift_beginAccess();
    if (*(*(a2 + 96) + 16))
    {

      v48 = sub_1D8B151C0();
      v49 = sub_1D8B16210();

      v50 = v48;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v230 = swift_slowAlloc();
        v236 = v230;
        *v51 = 134218242;
        *(v51 + 4) = a9;
        *(v51 + 12) = 2080;
        sub_1D87C4938();

        v52 = sub_1D8B16040();
        v54 = v53;

        v55 = v52;
        v18 = v200;
        v56 = sub_1D89AC714(v55, v54, &v236);

        *(v51 + 14) = v56;
        _os_log_impl(&dword_1D8783000, v50, v49, "Resetting CV state for still image processing (timestamp %f) with tasks still in flight: %s", v51, 0x16u);
        v57 = v230;
        __swift_destroy_boxed_opaque_existential_1(v230);
        MEMORY[0x1DA721330](v57, -1, -1);
        v58 = v51;
        a4 = v199;
        MEMORY[0x1DA721330](v58, -1, -1);
      }

      else
      {
      }

      v47 = MEMORY[0x1E69E7CD0];
    }

    *(a2 + 96) = v47;
  }

  v195 = a8;
  v210 = a3;
  v59 = a11;
  v60 = *(a2 + 56);
  v61 = *(v60 + 64);
  v209 = v60 + 64;
  v62 = 1 << *(v60 + 32);
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  else
  {
    v63 = -1;
  }

  v64 = v63 & v61;
  v208 = v60;

  v221 = a2;
  result = swift_beginAccess();
  v66 = 0;
  v67 = (v62 + 63) >> 6;
  v216 = *MEMORY[0x1E69E8020];
  v215 = (v23 + 104);
  v214 = (v23 + 8);
  __asm { FMOV            V0.2D, #1.0 }

  v204 = _Q0;
  v201 = a11;
  v72 = v219;
  for (i = v67; ; v67 = i)
  {
    if (!v64)
    {
      while (1)
      {
        v74 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_113;
        }

        if (v74 >= v67)
        {

          v135 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_logger;
          v136 = v193;
          v137 = v195;
          v231 = *(v18 + 16);
          v231(v193, v198, v195);
          v138 = v210;
          swift_retain_n();
          v139 = v221;

          v232 = v135;
          v140 = sub_1D8B151C0();
          v141 = sub_1D8B16200();

          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            v229 = swift_slowAlloc();
            v235 = v229;
            *v142 = 136315906;
            v143 = CameraSourceFrame.timeDescription.getter(v137, v201);
            LODWORD(v228) = v141;
            v144 = v143;
            v146 = v145;
            v230 = *(v18 + 8);
            v230(v136, v137);
            v147 = sub_1D89AC714(v144, v146, &v235);

            *(v142 + 4) = v147;
            *(v142 + 12) = 2048;
            swift_beginAccess();
            v148 = *(*(v138 + 16) + 16);

            *(v142 + 14) = v148;

            *(v142 + 22) = 2080;

            v150 = sub_1D88C7EE0(v149);

            v151 = MEMORY[0x1DA71F1E0](v150, &type metadata for CVDetection.DetectionType);
            v153 = v152;

            v154 = sub_1D89AC714(v151, v153, &v235);
            v139 = v221;

            *(v142 + 24) = v154;
            *(v142 + 32) = 2080;
            v138 = v210;
            swift_beginAccess();
            sub_1D87C4938();

            v155 = sub_1D8B16040();
            v157 = v156;

            v158 = sub_1D89AC714(v155, v157, &v235);

            *(v142 + 34) = v158;
            _os_log_impl(&dword_1D8783000, v140, v228, "[%s] CVCoordinator about to filter %ld requests: %s against inflightTypes: %s", v142, 0x2Au);
            v159 = v229;
            swift_arrayDestroy();
            MEMORY[0x1DA721330](v159, -1, -1);
            v160 = v142;
            v59 = v201;
            MEMORY[0x1DA721330](v160, -1, -1);
          }

          else
          {

            v230 = *(v18 + 8);
            v230(v136, v137);
          }

          v161 = v194;
          v162 = swift_beginAccess();
          v163 = *(v138 + 16);
          MEMORY[0x1EEE9AC00](v162);
          *(&v192 - 6) = v137;
          *(&v192 - 5) = v59;
          *(&v192 - 4) = a9;
          v164 = v198;
          *(&v192 - 3) = v139;
          *(&v192 - 2) = v164;
          *(&v192 - 8) = v227 & 1;

          v165 = sub_1D88BFF90(sub_1D8A5A0A0, (&v192 - 8), v163);
          swift_beginAccess();
          *(v138 + 16) = v165;

          v167 = sub_1D88C7EE0(v166);

          v168 = sub_1D87C4904(v167);

          v231(v161, v164, v137);
          swift_retain_n();

          v169 = sub_1D8B151C0();
          v170 = sub_1D8B16200();

          if (os_log_type_enabled(v169, v170))
          {
            v171 = swift_slowAlloc();
            v172 = v161;
            v173 = v138;
            v232 = swift_slowAlloc();
            v234 = v232;
            *v171 = 136315650;
            v174 = CameraSourceFrame.timeDescription.getter(v137, v201);
            v176 = v175;
            v230(v172, v137);
            v177 = sub_1D89AC714(v174, v176, &v234);

            *(v171 + 4) = v177;
            *(v171 + 12) = 2048;
            swift_beginAccess();
            v178 = *(*(v173 + 16) + 16);

            *(v171 + 14) = v178;

            *(v171 + 22) = 2080;
            sub_1D87C4938();
            v179 = sub_1D8B16040();
            v181 = sub_1D89AC714(v179, v180, &v234);

            *(v171 + 24) = v181;
            _os_log_impl(&dword_1D8783000, v169, v170, "[%s] CVCoordinator after filtering: %ld requests remain: %s", v171, 0x20u);
            v182 = v232;
            swift_arrayDestroy();
            MEMORY[0x1DA721330](v182, -1, -1);
            MEMORY[0x1DA721330](v171, -1, -1);
          }

          else
          {

            v230(v161, v137);
          }

          v183 = 1 << *(v168 + 32);
          v184 = -1;
          if (v183 < 64)
          {
            v184 = ~(-1 << v183);
          }

          v185 = v184 & *(v168 + 56);
          v186 = (v183 + 63) >> 6;

          for (j = 0; v185; result = swift_endAccess())
          {
            v188 = j;
LABEL_109:
            v189 = __clz(__rbit64(v185));
            v185 &= v185 - 1;
            v190 = *(*(v168 + 48) + (v189 | (v188 << 6)));
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v233 = *(v139 + 88);
            *(v139 + 88) = 0x8000000000000000;
            sub_1D8B05404(v190, isUniquelyReferenced_nonNull_native, a9);
            *(v139 + 88) = v233;
            swift_endAccess();
            swift_beginAccess();
            sub_1D87FC140(&v233, v190);
          }

          while (1)
          {
            v188 = j + 1;
            if (__OFADD__(j, 1))
            {
              goto LABEL_114;
            }

            if (v188 >= v186)
            {
            }

            v185 = *(v168 + 56 + 8 * v188);
            ++j;
            if (v185)
            {
              j = v188;
              goto LABEL_109;
            }
          }
        }

        v64 = *(v209 + 8 * v74);
        ++v66;
        if (v64)
        {
          v66 = v74;
          break;
        }
      }
    }

    v213 = v64;
    v75 = __clz(__rbit64(v64)) | (v66 << 6);
    v76 = *(*(v208 + 48) + v75);
    v77 = *(v208 + 56) + 8 * v75;
    v78 = *v77;
    LODWORD(v77) = *(v77 + 4);
    v79 = v211;
    *v211 = v78;
    LODWORD(v225) = v77;
    *(v79 + 4) = v77;
    swift_storeEnumTagMultiPayload();
    sub_1D8A50DC0(v79, v212, type metadata accessor for DetectionRequest.Originator);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D8A50E28(v212, type metadata accessor for DetectionRequest.Originator);
      if (v76 > 0xD || ((1 << v76) & 0x3002) == 0)
      {
        result = MEMORY[0x1E69E7CD0];
      }

      else
      {
        result = sub_1D8A50348(&unk_1F5428C08, &qword_1ECA67E58);
      }

      v81 = 0;
      v82 = 1 << *(result + 32);
      if (v82 < 64)
      {
        v83 = ~(-1 << v82);
      }

      else
      {
        v83 = -1;
      }

      v84 = v83 & *(result + 56);
      v85 = (v82 + 63) >> 6;
      while (v84)
      {
LABEL_31:
        v84 &= v84 - 1;
      }

      while (1)
      {
        v86 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          break;
        }

        if (v86 >= v85)
        {

          v79 = v211;
          goto LABEL_38;
        }

        v84 = *(result + 56 + 8 * v86);
        ++v81;
        if (v84)
        {
          v81 = v86;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

LABEL_38:
    v202 = v78;
    v87 = v205;
    *v205 = v76;
    v88 = v223;
    sub_1D8A50DC0(v79, v87 + *(v223 + 20), type metadata accessor for DetectionRequest.Originator);
    v89 = type metadata accessor for DetectionRequest.Annotation(0);
    v90 = sub_1D8A4F044(&qword_1EE0E6B20, 255, type metadata accessor for DetectionRequest.Annotation);
    v91 = MEMORY[0x1DA71F530](0, v89, v90);
    sub_1D8A50E28(v79, type metadata accessor for DetectionRequest.Originator);
    *(v87 + v88[6]) = v91;
    v92 = v87 + v88[7];
    *v92 = 0;
    *(v92 + 8) = 0;
    *(v92 + 16) = v204;
    *(v87 + v88[8]) = a9;
    result = sub_1D8A512F0(v87, v220, type metadata accessor for DetectionRequest);
    if ((v206 & 1) != 0 && v76 <= 6)
    {
      if (((1 << v76) & 0x69) != 0)
      {
        goto LABEL_41;
      }

      if (v76 == 4)
      {
        if (qword_1EE0E54C0 != -1)
        {
          swift_once();
        }

        result = sub_1D8B0AAA4();
        if (result)
        {
LABEL_41:
          v93 = v197;
          sub_1D8A50DC0(v220, v197, type metadata accessor for DetectionRequest);
          swift_beginAccess();
          v94 = v196;
          sub_1D87FB834(v196, v93);
          swift_endAccess();
          sub_1D8A50E28(v94, type metadata accessor for DetectionRequest);
          goto LABEL_14;
        }
      }
    }

    v95 = *(a4 + 16);
    LODWORD(v230) = v76;
    if (v95)
    {
      v96 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v97 = *(v72 + 72);
      v98 = a4 + v96;
      v99 = MEMORY[0x1E69E7CC0];
      v100 = v222;
      do
      {
        sub_1D8A50DC0(v98, v100, type metadata accessor for DetectionRequest);
        if (*v100 == v76)
        {
          sub_1D8A512F0(v100, v232, type metadata accessor for DetectionRequest);
          v101 = swift_isUniquelyReferenced_nonNull_native();
          v235 = v99;
          if ((v101 & 1) == 0)
          {
            sub_1D87F45E4(0, *(v99 + 16) + 1, 1);
            v100 = v222;
            v99 = v235;
          }

          v103 = *(v99 + 16);
          v102 = *(v99 + 24);
          if (v103 >= v102 >> 1)
          {
            sub_1D87F45E4(v102 > 1, v103 + 1, 1);
            v100 = v222;
            v99 = v235;
          }

          *(v99 + 16) = v103 + 1;
          result = sub_1D8A512F0(v232, v99 + v96 + v103 * v97, type metadata accessor for DetectionRequest);
          v76 = v230;
        }

        else
        {
          result = sub_1D8A50E28(v100, type metadata accessor for DetectionRequest);
        }

        v98 += v97;
        --v95;
      }

      while (v95);
    }

    else
    {
      v99 = MEMORY[0x1E69E7CC0];
    }

    if (v225)
    {
      break;
    }

    v18 = v200;
    v59 = v201;
    a4 = v199;
    if (v229)
    {
      v119 = v221;
      v120 = *(v221 + 40);
      v121 = v217;
      *v217 = v120;
      v122 = v218;
      (*v215)(v121, v216, v218);
      v123 = v120;
      LOBYTE(v120) = sub_1D8B15620();
      result = (*v214)(v121, v122);
      if ((v120 & 1) == 0)
      {
        goto LABEL_120;
      }

      v124 = *(v119 + 88);
      if (!*(v124 + 16))
      {
        goto LABEL_121;
      }

      result = sub_1D881F7DC(v76);
      if ((v125 & 1) == 0)
      {
        goto LABEL_122;
      }

      v126 = a9 - *(*(v124 + 56) + 8 * result);
      if ((0.95 / v126) < (v202 * a10))
      {
        goto LABEL_41;
      }
    }

LABEL_14:
    v64 = (v213 - 1) & v213;
    result = sub_1D8A50E28(v220, type metadata accessor for DetectionRequest);
  }

  if (v225 != 1)
  {
    v127 = *(v99 + 16);
    if (v127)
    {
      v128 = 0;
      v73 = MEMORY[0x1E69E7CC0];
      v230 = *(v99 + 16);
      while (v128 < *(v99 + 16))
      {
        v129 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v130 = *(v72 + 72);
        v131 = v226;
        sub_1D8A50DC0(v99 + v129 + v130 * v128, v226, type metadata accessor for DetectionRequest);
        if ((v229 & 1) != 0 || (v227 & 1) != 0 && *(v131 + *(v223 + 32)) == a9)
        {
          sub_1D8A512F0(v131, v228, type metadata accessor for DetectionRequest);
          v132 = swift_isUniquelyReferenced_nonNull_native();
          v235 = v73;
          if ((v132 & 1) == 0)
          {
            sub_1D87F45E4(0, *(v73 + 16) + 1, 1);
            v127 = v230;
            v73 = v235;
          }

          v134 = *(v73 + 16);
          v133 = *(v73 + 24);
          if (v134 >= v133 >> 1)
          {
            sub_1D87F45E4(v133 > 1, v134 + 1, 1);
            v127 = v230;
            v73 = v235;
          }

          *(v73 + 16) = v134 + 1;
          result = sub_1D8A512F0(v228, v73 + v129 + v134 * v130, type metadata accessor for DetectionRequest);
        }

        else
        {
          result = sub_1D8A50E28(v131, type metadata accessor for DetectionRequest);
        }

        if (v127 == ++v128)
        {
          goto LABEL_13;
        }
      }

LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    goto LABEL_12;
  }

  v225 = *(v99 + 16);
  if (!v225)
  {
LABEL_12:
    v73 = MEMORY[0x1E69E7CC0];
LABEL_13:

    swift_beginAccess();
    sub_1D8AB9EEC(v73);
    swift_endAccess();

    v18 = v200;
    v59 = v201;
    a4 = v199;
    goto LABEL_14;
  }

  v104 = 0;
  v105 = v202 * a10;
  v73 = MEMORY[0x1E69E7CC0];
  while (v104 < *(v99 + 16))
  {
    v106 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v107 = *(v72 + 72);
    sub_1D8A50DC0(v99 + v106 + v107 * v104, v231, type metadata accessor for DetectionRequest);
    if (v229)
    {
      v108 = v221;
      v109 = *(v221 + 40);
      v110 = v217;
      *v217 = v109;
      v111 = v218;
      (*v215)(v110, v216, v218);
      v112 = v109;
      LOBYTE(v109) = sub_1D8B15620();
      result = (*v214)(v110, v111);
      if ((v109 & 1) == 0)
      {
        goto LABEL_117;
      }

      v113 = *(v108 + 88);
      if (!*(v113 + 16))
      {
        goto LABEL_118;
      }

      result = sub_1D881F7DC(v230);
      if ((v114 & 1) == 0)
      {
        goto LABEL_119;
      }

      v115 = a9 - *(*(v113 + 56) + 8 * result);
      v72 = v219;
      if ((0.95 / v115) < v105)
      {
        goto LABEL_71;
      }
    }

    if ((v227 & 1) != 0 && *(v231 + *(v223 + 32)) == a9)
    {
LABEL_71:
      sub_1D8A512F0(v231, v224, type metadata accessor for DetectionRequest);
      v116 = swift_isUniquelyReferenced_nonNull_native();
      v235 = v73;
      if ((v116 & 1) == 0)
      {
        sub_1D87F45E4(0, *(v73 + 16) + 1, 1);
        v73 = v235;
      }

      v118 = *(v73 + 16);
      v117 = *(v73 + 24);
      if (v118 >= v117 >> 1)
      {
        sub_1D87F45E4(v117 > 1, v118 + 1, 1);
        v73 = v235;
      }

      *(v73 + 16) = v118 + 1;
      result = sub_1D8A512F0(v224, v73 + v106 + v118 * v107, type metadata accessor for DetectionRequest);
    }

    else
    {
      result = sub_1D8A50E28(v231, type metadata accessor for DetectionRequest);
    }

    if (v225 == ++v104)
    {
      goto LABEL_13;
    }
  }

LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
  return result;
}

uint64_t sub_1D8A43EB4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, double a7)
{
  v57 = a6;
  v7 = a5;
  v59 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v58 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DetectionRequest(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v50 - v19;
  if (*&a1[*(v18 + 32)] + 1.0 < a7)
  {
    v56 = v7;
    sub_1D8A50DC0(a1, &v50 - v19, type metadata accessor for DetectionRequest);
    sub_1D8A50DC0(a1, v17, type metadata accessor for DetectionRequest);
    v21 = sub_1D8B151C0();
    v22 = sub_1D8B16210();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v52 = v22;
      v24 = v23;
      v53 = swift_slowAlloc();
      v62[0] = v53;
      *v24 = 134218498;
      *(v24 + 4) = a7;
      *(v24 + 12) = 2080;
      LOBYTE(v61[0]) = *v20;
      v51 = v21;
      v25 = CVDetection.DetectionType.description.getter();
      v54 = a3;
      v27 = v26;
      v55 = a4;
      sub_1D8A50E28(v20, type metadata accessor for DetectionRequest);
      v28 = sub_1D89AC714(v25, v27, v62);
      a3 = v54;

      *(v24 + 14) = v28;
      *(v24 + 22) = 2048;
      v29 = *&v17[*(v14 + 32)];
      LOBYTE(a4) = v55;
      sub_1D8A50E28(v17, type metadata accessor for DetectionRequest);
      *(v24 + 24) = v29;
      v30 = v51;
      _os_log_impl(&dword_1D8783000, v51, v52, "%f: CV servicing aged request of type %s from %f", v24, 0x20u);
      v31 = v53;
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1DA721330](v31, -1, -1);
      MEMORY[0x1DA721330](v24, -1, -1);
    }

    else
    {

      sub_1D8A50E28(v17, type metadata accessor for DetectionRequest);
      sub_1D8A50E28(v20, type metadata accessor for DetectionRequest);
    }

    v7 = v56;
  }

  v32 = *a1;
  swift_beginAccess();
  if (*(*(a2 + 104) + 16) && (sub_1D881F7DC(v32), (v33 & 1) != 0))
  {
    v34 = v59;
    v35 = a3;
    v36 = v58;
    (*(v59 + 16))(v58, v35, v7);
    v37 = sub_1D8B151C0();
    v38 = sub_1D8B16200();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v61[0] = v56;
      *v39 = 136315650;
      v40 = CameraSourceFrame.timeDescription.getter(v7, v57);
      v41 = v7;
      v43 = v42;
      (*(v34 + 8))(v36, v41);
      v44 = sub_1D89AC714(v40, v43, v61);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      v60 = v32;
      v45 = CVDetection.DetectionType.description.getter();
      v47 = sub_1D89AC714(v45, v46, v61);

      *(v39 + 14) = v47;
      *(v39 + 22) = 1024;
      *(v39 + 24) = a4 & 1;
      _os_log_impl(&dword_1D8783000, v37, v38, "[%s] CVCoordinator filtering out %s - still busy loading (isHighResolutionStill: %{BOOL}d)", v39, 0x1Cu);
      v48 = v56;
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v48, -1, -1);
      MEMORY[0x1DA721330](v39, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v36, v7);
    }
  }

  else
  {
    swift_beginAccess();
    if (sub_1D89AD844(v32, *(a2 + 96)))
    {
      LOBYTE(a4) = 0;
    }

    else
    {
      v63.origin.x = 0.0;
      v63.origin.y = 0.0;
      v63.size.width = 1.0;
      v63.size.height = 1.0;
      LOBYTE(a4) = CGRectIntersectsRect(v63, *&a1[*(v14 + 28)]);
    }
  }

  return a4 & 1;
}

uint64_t sub_1D8A44400(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v104 = a8;
  v96 = a6;
  v111 = a4;
  v112 = a5;
  v97 = a3;
  v95 = a2;
  v9 = *(a7 - 8);
  v105 = a7;
  v106 = v9;
  MEMORY[0x1EEE9AC00](a1);
  v103 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v102 = v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DetectionRequest(0);
  v13 = MEMORY[0x1EEE9AC00](v110);
  v101 = v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v100 = v93 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v93 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v93 - v20;
  v117 = type metadata accessor for ProcessorState(0);
  v22 = *(v117 - 8);
  v23 = MEMORY[0x1EEE9AC00](v117);
  v113 = v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v115 = v93 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = v93 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v114 = v93 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = v93 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v37 = v93 - v36;
  v94 = a1;
  v38 = *a1;
  v39 = *(v38 + 16);
  v116 = v29;
  if (v39)
  {
    v118 = MEMORY[0x1E69E7CC0];

    sub_1D87F4140(0, v39, 0);
    v40 = v118;
    v41 = *(v22 + 80);
    v107 = v38;
    v108 = v22;
    v42 = v38 + ((v41 + 32) & ~v41);
    v43 = *(v22 + 72);
    v109 = (v34 + 8);
    while (1)
    {
      sub_1D8A50DC0(v42, v37, type metadata accessor for ProcessorState);
      sub_1D8A512F0(v37, v34, type metadata accessor for ProcessorState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_7;
      }

      if (EnumCaseMultiPayload != 1)
      {
        break;
      }

      v45 = v102;
      sub_1D8A512F0(v34, v102, type metadata accessor for DetectionResult);
      sub_1D8A50DC0(v45, v19, type metadata accessor for DetectionRequest);
      sub_1D8A50E28(v45, type metadata accessor for DetectionResult);
LABEL_8:
      sub_1D8A512F0(v19, v21, type metadata accessor for DetectionRequest);
      v46 = *&v21[*(v110 + 32)];
      sub_1D8A50E28(v21, type metadata accessor for DetectionRequest);
      v118 = v40;
      v48 = *(v40 + 16);
      v47 = *(v40 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1D87F4140((v47 > 1), v48 + 1, 1);
        v40 = v118;
      }

      *(v40 + 16) = v48 + 1;
      *(v40 + 8 * v48 + 32) = v46;
      v42 += v43;
      --v39;
      v29 = v116;
      if (!v39)
      {

        sub_1D8918E7C(v40);

        v22 = v108;
        goto LABEL_12;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

LABEL_7:
    sub_1D8A512F0(v34, v19, type metadata accessor for DetectionRequest);
    goto LABEL_8;
  }

LABEL_12:
  v49 = *(v97 + 16);
  v50 = v105;
  v51 = v103;
  v52 = v114;
  if (v49)
  {
    v53 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v54 = *(v106 + 16);
    v109 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_logger;
    v110 = v54;
    v55 = v97 + v53;
    v98 = v113 + 8;
    v56 = *(v22 + 72);
    v107 = (v106 + 8);
    v108 = v56;
    v93[2] = 0x80000001D8B439A0;
    v93[1] = 0x80000001D8B439C0;
    *&v35 = 136315650;
    v99 = v35;
    v106 += 16;
    v54(v103, v112, v105);
    while (1)
    {
      sub_1D8A50DC0(v55, v52, type metadata accessor for ProcessorState);
      sub_1D8A50DC0(v55, v29, type metadata accessor for ProcessorState);
      v57 = sub_1D8B151C0();
      v58 = sub_1D8B16230();
      if (!os_log_type_enabled(v57, v58))
      {

        sub_1D8A50E28(v29, type metadata accessor for ProcessorState);
        sub_1D8A50E28(v52, type metadata accessor for ProcessorState);
        (*v107)(v51, v50);
        goto LABEL_15;
      }

      v59 = swift_slowAlloc();
      v60 = v51;
      v61 = swift_slowAlloc();
      v120[0] = v61;
      *v59 = v99;
      v62 = CameraSourceFrame.timeDescription.getter(v50, v104);
      v63 = v50;
      v65 = v64;
      (*v107)(v60, v63);
      v66 = sub_1D89AC714(v62, v65, v120);

      *(v59 + 4) = v66;
      *(v59 + 12) = 2080;
      sub_1D8A50DC0(v52, v115, type metadata accessor for ProcessorState);
      v67 = swift_getEnumCaseMultiPayload();
      v68 = type metadata accessor for ProcessorState;
      if (v67)
      {
        if (v67 == 1)
        {
          v69 = 0xE900000000000064;
          v68 = type metadata accessor for ProcessorState;
          v70 = 0x6574656C706D6F43;
        }

        else
        {
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
          v72 = (v115 + *(v71 + 48));
          v73 = *v72;
          v74 = v72[1];
          v118 = 0x28646574726F6241;
          v119 = 0xE800000000000000;
          MEMORY[0x1DA71EFA0](v73, v74);

          MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
          v70 = v118;
          v69 = v119;
          v68 = type metadata accessor for DetectionRequest;
        }
      }

      else
      {
        v69 = 0xE800000000000000;
        v70 = 0x6465756575716E45;
      }

      v75 = v116;
      sub_1D8A50E28(v115, v68);
      sub_1D8A50E28(v114, type metadata accessor for ProcessorState);
      v76 = sub_1D89AC714(v70, v69, v120);

      *(v59 + 14) = v76;
      *(v59 + 22) = 2080;
      sub_1D8A50DC0(v75, v113, type metadata accessor for ProcessorState);
      v77 = swift_getEnumCaseMultiPayload();
      if (!v77)
      {
        break;
      }

      v78 = v101;
      if (v77 != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

        v80 = v113;
        goto LABEL_28;
      }

      v79 = v102;
      sub_1D8A512F0(v113, v102, type metadata accessor for DetectionResult);
      sub_1D8A50DC0(v79, v78, type metadata accessor for DetectionRequest);
      sub_1D8A50E28(v79, type metadata accessor for DetectionResult);
LABEL_29:
      v81 = v100;
      sub_1D8A512F0(v78, v100, type metadata accessor for DetectionRequest);
      v82 = *v81;
      sub_1D8A50E28(v81, type metadata accessor for DetectionRequest);
      v83 = 0xE900000000000067;
      v84 = 0x6E69646E756F7267;
      switch(v82)
      {
        case 1:
          v84 = 0x6465646E756F7267;
          v85 = 0x6573726150;
          goto LABEL_44;
        case 2:
          v83 = 0xE400000000000000;
          v84 = 1635018093;
          break;
        case 3:
          v83 = 0xE600000000000000;
          v84 = 0x7463656A626FLL;
          break;
        case 4:
          v83 = 0xE500000000000000;
          v84 = 0x6573726170;
          break;
        case 5:
          v83 = 0xE400000000000000;
          v84 = 1954047348;
          break;
        case 6:
          v83 = 0xE600000000000000;
          v84 = 0x65646F437271;
          break;
        case 7:
          v83 = 0xE700000000000000;
          v84 = 0x70696C43707061;
          break;
        case 8:
          v84 = 0x6E696D6165727473;
          v85 = 0x7478655467;
LABEL_44:
          v83 = v85 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v84 = 0x6C61636974726576;
          v83 = 0xEF746E65746E6F43;
          break;
        case 10:
          v83 = 0xEA00000000006C61;
          v84 = 0x646F6D69746C756DLL;
          break;
        case 11:
          v84 = 0x69746568746E7973;
          v83 = 0xE900000000000063;
          break;
        case 12:
          v84 = 0xD000000000000017;
          v86 = &v121;
          goto LABEL_40;
        case 13:
          v84 = 0xD00000000000001CLL;
          v86 = &v122;
LABEL_40:
          v83 = *(v86 - 32);
          break;
        default:
          break;
      }

      v29 = v116;
      sub_1D8A50E28(v116, type metadata accessor for ProcessorState);
      v87 = sub_1D89AC714(v84, v83, v120);

      *(v59 + 24) = v87;
      _os_log_impl(&dword_1D8783000, v57, v58, "[%s] %s for %s", v59, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v61, -1, -1);
      MEMORY[0x1DA721330](v59, -1, -1);

      v50 = v105;
      v51 = v103;
      v52 = v114;
LABEL_15:
      v55 += v108;
      if (!--v49)
      {
        goto LABEL_46;
      }

      (v110)(v51, v112, v50);
    }

    v80 = v113;
    v78 = v101;
LABEL_28:
    sub_1D8A512F0(v80, v78, type metadata accessor for DetectionRequest);
    goto LABEL_29;
  }

LABEL_46:
  v118 = *v94;

  sub_1D88F480C(v88);
  v89 = sub_1D87C4778(v118);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1D8AE8A00(v95, v89, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1D8A450C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a3;
  v30 = a6;
  v32 = a4;
  v28 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  v14 = type metadata accessor for ProcessorState(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a2 + 40);
  sub_1D8A50DC0(a1, v17, type metadata accessor for ProcessorState);
  (*(v10 + 16))(v13, v29, AssociatedTypeWitness);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (v16 + v18 + *(v10 + 80)) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 16) = a5;
  *(v21 + 24) = v22;
  sub_1D8A512F0(v17, v21 + v18, type metadata accessor for ProcessorState);
  (*(v10 + 32))(v21 + v19, v13, AssociatedTypeWitness);
  *(v21 + v20) = v28;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1D8A59F70;
  *(v23 + 24) = v21;
  aBlock[4] = sub_1D8A5A6F0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8A3EDFC;
  aBlock[3] = &block_descriptor_452;
  v24 = _Block_copy(aBlock);
  v25 = v31;

  dispatch_sync(v25, v24);

  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8A4541C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = a4;
  v7 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ProcessorState(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A50DC0(a1, v13, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8A512F0(v13, v9, type metadata accessor for DetectionResult);
      sub_1D8A50DC0(v9, v16, type metadata accessor for DetectionRequest);
      sub_1D8A50E28(v9, type metadata accessor for DetectionResult);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
  }

  sub_1D8A512F0(v13, v16, type metadata accessor for DetectionRequest);
LABEL_6:
  v18 = *v16;
  sub_1D8A50E28(v16, type metadata accessor for DetectionRequest);
  swift_beginAccess();
  sub_1D88BBDAC(v18, &v26);
  result = swift_endAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63350);
    v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D8B1AB90;
    sub_1D8A50DC0(a1, v21 + v20, type metadata accessor for ProcessorState);
    v22 = sub_1D8A57B18(v21);
    swift_setDeallocating();
    sub_1D8A50E28(v21 + v20, type metadata accessor for ProcessorState);
    swift_deallocClassInstance();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1D8AE8A00(a2, v22, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t sub_1D8A457AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v33 = a4;
  v36 = a5;
  v34 = type metadata accessor for CVProcessorTaskDescriptor(0);
  v8 = MEMORY[0x1EEE9AC00](v34);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v13, a2, a3);
  v35 = a1;
  sub_1D8A50DC0(a1, v10, type metadata accessor for CVProcessorTaskDescriptor);
  v14 = sub_1D8B151C0();
  v15 = sub_1D8B16230();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v15;
    v17 = v16;
    v32 = swift_slowAlloc();
    v38 = v32;
    *v17 = 136315394;
    v18 = CameraSourceFrame.timeDescription.getter(a3, v33);
    v20 = v19;
    (*(v11 + 8))(v13, a3);
    v21 = sub_1D89AC714(v18, v20, &v38);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = v34;
    v37 = v10[*(v34 + 20)];
    v23 = CVDetection.DetectionType.description.getter();
    v25 = v24;
    sub_1D8A50E28(v10, type metadata accessor for CVProcessorTaskDescriptor);
    v26 = sub_1D89AC714(v23, v25, &v38);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_1D8783000, v14, v31, "[%s] Enqueued for %s", v17, 0x16u);
    v27 = v32;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v27, -1, -1);
    MEMORY[0x1DA721330](v17, -1, -1);

    v28 = v22;
  }

  else
  {

    sub_1D8A50E28(v10, type metadata accessor for CVProcessorTaskDescriptor);
    (*(v11 + 8))(v13, a3);
    v28 = v34;
  }

  sub_1D8A50DC0(v35 + *(v28 + 20), v36, type metadata accessor for DetectionRequest);
  type metadata accessor for ProcessorState(0);
  return swift_storeEnumTagMultiPayload();
}

char *sub_1D8A45B14(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = v5;
  v21 = MEMORY[0x1E69E7CC8];
  v13 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorageTaskSemaphore;
  v14 = *(v5 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorageTaskSemaphore);
  if (v14)
  {
    v15 = v14;
    sub_1D8B163A0();

    v16 = *(v7 + v13);
    *(v7 + v13) = 0;
  }

  v17 = v7 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage;
  os_unfair_lock_lock((v7 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage));
  sub_1D8A48B5C(v17 + 1, a1, &v21, v7, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4, a5, &v20, &v19);
  os_unfair_lock_unlock(v17);
  if (!v6)
  {
    v17 = v20;
  }

  return v17;
}

uint64_t sub_1D8A45C4C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 64) = v11;
  *(v9 + 72) = v12;
  *(v9 + 48) = a8;
  *(v9 + 56) = a9;
  *(v9 + 32) = a6;
  *(v9 + 40) = a7;
  *(v9 + 24) = a5;
  *(v9 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8A45C84, 0, 0);
}

uint64_t sub_1D8A45C84()
{
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if (sub_1D8B0AAA4())
  {
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v1 = qword_1ECA675B0;
    v0[10] = qword_1ECA675B0;

    return MEMORY[0x1EEE6DFA0](sub_1D8A45E38, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v2 = v0;
    v2[1] = sub_1D8824954;
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[4];
    v8 = v0[5];

    return sub_1D8A45F4C(v7, v8, v5, v6, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_1D8A45E38()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 16);
  if (*(v2 + 160) < v3)
  {
    *(v2 + 160) = v3;
  }

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *v4 = v0;
  v4[1] = sub_1D8824954;
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);

  return sub_1D8A45F4C(v9, v10, v7, v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1D8A45F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D70);
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = sub_1D8B15130();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A4608C, 0, 0);
}

uint64_t sub_1D8A4608C()
{
  v50 = v0;
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = CameraSourceFrame.timestamp.getter(v2, v1);
  (*(v1 + 40))(v48, v2, v1);
  v5 = v49;
  v6 = *(v3 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v42 = v49;
    v8 = *(v0 + 80);
    v44 = *(v0 + 72);
    v9 = *(v0 + 16);
    v48[0] = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v6, 0);
    v10 = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v11 = v48[0];
    v43 = *(v8 + 72);
    v12 = &unk_1ECA67D70;
    do
    {
      v46 = v11;
      v13 = *(v0 + 88);
      sub_1D87A0E38(v10, v13, v12);
      v14 = v13 + *(v44 + 48);
      v15 = 0xE900000000000067;
      v16 = 0x6E69646E756F7267;
      switch(*(v14 + *(type metadata accessor for CVProcessorTaskDescriptor(0) + 20)))
      {
        case 1:
          v16 = 0x6465646E756F7267;
          v17 = 0x6573726150;
          goto LABEL_17;
        case 2:
          v15 = 0xE400000000000000;
          v16 = 1635018093;
          break;
        case 3:
          v15 = 0xE600000000000000;
          v16 = 0x7463656A626FLL;
          break;
        case 4:
          v15 = 0xE500000000000000;
          v16 = 0x6573726170;
          break;
        case 5:
          v15 = 0xE400000000000000;
          v16 = 1954047348;
          break;
        case 6:
          v15 = 0xE600000000000000;
          v16 = 0x65646F437271;
          break;
        case 7:
          v15 = 0xE700000000000000;
          v16 = 0x70696C43707061;
          break;
        case 8:
          v16 = 0x6E696D6165727473;
          v17 = 0x7478655467;
LABEL_17:
          v15 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v16 = 0x6C61636974726576;
          v15 = 0xEF746E65746E6F43;
          break;
        case 0xA:
          v15 = 0xEA00000000006C61;
          v16 = 0x646F6D69746C756DLL;
          break;
        case 0xB:
          v16 = 0x69746568746E7973;
          v15 = 0xE900000000000063;
          break;
        case 0xC:
          v16 = 0xD000000000000017;
          v15 = 0x80000001D8B439C0;
          break;
        case 0xD:
          v16 = 0xD00000000000001CLL;
          v15 = 0x80000001D8B439A0;
          break;
        default:
          break;
      }

      v18 = v12;
      sub_1D87A14E4(*(v0 + 88), v12);
      v11 = v46;
      v48[0] = v46;
      v20 = *(v46 + 16);
      v19 = *(v46 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D87F3F54((v19 > 1), v20 + 1, 1);
        v11 = v48[0];
      }

      *(v11 + 16) = v20 + 1;
      v21 = v11 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v15;
      v10 += v43;
      --v6;
      v12 = v18;
    }

    while (v6);
    v7 = v11;
    v5 = v42;
  }

  type metadata accessor for LoggingSignposter(0);

  sub_1D8B15120();
  v22 = sub_1D8B15150();
  v23 = sub_1D8B16370();

  if (sub_1D8B16460())
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v48[0] = v25;
    *v24 = 136315138;
    v26 = MEMORY[0x1DA71F1E0](v7, MEMORY[0x1E69E6158]);
    v28 = v27;

    v29 = sub_1D89AC714(v26, v28, v48);

    *(v24 + 4) = v29;
    v30 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v22, v23, v30, "CVCoordinator.serviceProcessorTasks", "detectionTypes: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1DA721330](v25, -1, -1);
    MEMORY[0x1DA721330](v24, -1, -1);
  }

  else
  {
  }

  v31 = *(v0 + 120);
  v32 = *(v0 + 96);
  v33 = *(v0 + 104);
  v34 = *(v0 + 64);
  v36 = *(v0 + 16);
  v35 = *(v0 + 24);
  v45 = *(v0 + 48);
  v47 = *(v0 + 32);
  (*(v33 + 16))(*(v0 + 112), v31, v32);
  sub_1D8B151A0();
  swift_allocObject();
  *(v0 + 128) = sub_1D8B15190();
  (*(v33 + 8))(v31, v32);
  v37 = type metadata accessor for ProcessorState(0);
  v38 = swift_task_alloc();
  *(v0 + 136) = v38;
  *(v38 + 16) = v45;
  *(v38 + 32) = v36;
  *(v38 + 40) = v34;
  *(v38 + 48) = v35;
  *(v38 + 56) = v4;
  *(v38 + 64) = v5;
  *(v38 + 72) = v47;
  v39 = swift_task_alloc();
  *(v0 + 144) = v39;
  *v39 = v0;
  v39[1] = sub_1D8A46664;
  v40 = MEMORY[0x1E69E7CA8] + 8;
  v52 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v39, v37, v40, 0, 0, &unk_1D8B369A8, v38, v37);
}

uint64_t sub_1D8A46664()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8A4677C, 0, 0);
}

uint64_t sub_1D8A4677C()
{
  sub_1D8A46818();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A46818()
{
  v0 = sub_1D8B15170();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B15130();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoggingSignposter(0);
  v8 = sub_1D8B15150();
  sub_1D8B15180();
  v9 = sub_1D8B16360();
  if (sub_1D8B16460())
  {

    sub_1D8B151B0();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v10 = "";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v8, v9, v12, "CVCoordinator.serviceProcessorTasks", v10, v11, 2u);
    MEMORY[0x1DA721330](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D8A46A7C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 472) = v17;
  *(v9 + 480) = v18;
  *(v9 + 456) = a8;
  *(v9 + 464) = a9;
  *(v9 + 353) = a7;
  *(v9 + 448) = a1;
  *(v9 + 432) = a5;
  *(v9 + 440) = a6;
  *(v9 + 416) = a3;
  *(v9 + 424) = a4;
  v10 = type metadata accessor for ProcessorState(0);
  *(v9 + 488) = v10;
  *(v9 + 496) = *(v10 - 8);
  *(v9 + 504) = swift_task_alloc();
  v11 = *(v17 - 8);
  *(v9 + 512) = v11;
  *(v9 + 520) = *(v11 + 64);
  *(v9 + 528) = swift_task_alloc();
  v12 = *(type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
  *(v9 + 536) = v12;
  *(v9 + 544) = *(v12 + 64);
  *(v9 + 552) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  *(v9 + 560) = swift_task_alloc();
  *(v9 + 568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64948);
  *(v9 + 576) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67D80);
  *(v9 + 584) = v13;
  *(v9 + 592) = *(v13 - 8);
  *(v9 + 600) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D70);
  *(v9 + 608) = v14;
  *(v9 + 616) = *(v14 - 8);
  *(v9 + 624) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A46D5C, 0, 0);
}

uint64_t sub_1D8A46D5C()
{
  v1 = *(v0 + 424);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 616);
    v4 = *(v0 + 608);
    v50 = *(v0 + 536);
    v51 = *(v0 + 624);
    v48 = *(v0 + 353);
    v47 = v51 + v4[16];
    v46 = (v51 + v4[20]);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v44 = **(v0 + 416);
    v45 = v4[12];
    v43 = *(v0 + 520) + 7;
    v49 = *(v0 + 512);
    v42 = *(v3 + 72);
    do
    {
      v57 = v2;
      v7 = *(v0 + 624);
      v8 = *(v0 + 568);
      v55 = *(v0 + 560);
      v9 = *(v0 + 552);
      v10 = *(v0 + 544);
      v11 = *(v0 + 528);
      v52 = v11;
      v12 = *(v0 + 448);
      v13 = *(v0 + 440);
      v59 = *(v0 + 432);
      v58 = *(v0 + 472);
      v56 = v5;
      sub_1D87A0E38(v5, v7, &unk_1ECA67D70);
      v14 = *(v47 + 16);
      *(v0 + 16) = *v47;
      *(v0 + 32) = v14;
      v16 = *(v47 + 48);
      v15 = *(v47 + 64);
      v17 = *(v47 + 32);
      *(v0 + 96) = *(v47 + 80);
      *(v0 + 64) = v16;
      *(v0 + 80) = v15;
      *(v0 + 48) = v17;
      v18 = *v46;
      v19 = v46[1];
      *(v0 + 352) = *(v46 + 32);
      *(v0 + 320) = v18;
      *(v0 + 336) = v19;
      v53 = sub_1D8B15EA0();
      v54 = *(v53 - 8);
      (*(v54 + 56))(v8, 1, 1, v53);
      sub_1D8A512F0(v51 + v45, v9, type metadata accessor for CVProcessorTaskDescriptor);
      (*(v49 + 16))(v11, v13, v58);
      sub_1D87C15B4(v7, v0 + 280);
      v20 = (*(v50 + 80) + 56) & ~*(v50 + 80);
      v21 = (v10 + *(v49 + 80) + v20) & ~*(v49 + 80);
      v22 = (v43 + v21) & 0xFFFFFFFFFFFFFFF8;
      v23 = (v22 + 47) & 0xFFFFFFFFFFFFFFF8;
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = v58;
      *(v24 + 48) = v59;
      sub_1D8A512F0(v9, v24 + v20, type metadata accessor for CVProcessorTaskDescriptor);
      (*(v49 + 32))(v24 + v21, v52, v58);
      sub_1D87C15B4((v0 + 280), v24 + v22);
      v25 = v24 + v23;
      v26 = *(v0 + 64);
      *(v25 + 32) = *(v0 + 48);
      *(v25 + 48) = v26;
      *(v25 + 64) = *(v0 + 80);
      *(v25 + 80) = *(v0 + 96);
      v27 = *(v0 + 32);
      *v25 = *(v0 + 16);
      *(v25 + 16) = v27;
      v28 = v24 + ((v23 + 95) & 0xFFFFFFFFFFFFFFF8);
      v29 = *(v0 + 336);
      *v28 = *(v0 + 320);
      *(v28 + 16) = v29;
      *(v28 + 32) = *(v0 + 352);
      v30 = v24 + ((v23 + 135) & 0xFFFFFFFFFFFFFFF8);
      *v30 = v12;
      *(v30 + 8) = v48;
      sub_1D87A0E38(v8, v55, &unk_1ECA675E0);
      LODWORD(v9) = (*(v54 + 48))(v55, 1, v53);

      v31 = *(v0 + 560);
      v32 = v0 + 16;
      if (v9 == 1)
      {
        sub_1D881F59C(v32, v0 + 104);

        sub_1D87A14E4(v31, &unk_1ECA675E0);
      }

      else
      {
        sub_1D881F59C(v32, v0 + 192);

        sub_1D8B15E90();
        (*(v54 + 8))(v31, v53);
      }

      if (*(v24 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v33 = sub_1D8B15E00();
        v35 = v34;
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      v36 = swift_allocObject();
      *(v36 + 16) = &unk_1D8B369C8;
      *(v36 + 24) = v24;
      v37 = v35 | v33;
      if (v35 | v33)
      {
        v37 = v0 + 360;
        *(v0 + 360) = 0;
        *(v0 + 368) = 0;
        *(v0 + 376) = v33;
        *(v0 + 384) = v35;
      }

      v6 = *(v0 + 568);
      *(v0 + 392) = 1;
      *(v0 + 400) = v37;
      *(v0 + 408) = v44;
      swift_task_create();

      sub_1D881F5F8(v0 + 16);
      sub_1D87A14E4(v6, &unk_1ECA675E0);
      v5 = v56 + v42;
      v2 = v57 - 1;
    }

    while (v57 != 1);
  }

  sub_1D8B15E30();
  v38 = swift_task_alloc();
  *(v0 + 632) = v38;
  *v38 = v0;
  v38[1] = sub_1D8A47308;
  v39 = *(v0 + 584);
  v40 = *(v0 + 576);

  return MEMORY[0x1EEE6D8A8](v40, 0, 0, v39);
}

uint64_t sub_1D8A47308()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8A47404, 0, 0);
}

uint64_t sub_1D8A47404()
{
  v1 = v0[72];
  if ((*(v0[62] + 48))(v1, 1, v0[61]) == 1)
  {
    (*(v0[74] + 8))(v0[75], v0[73]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[63];
    v5 = v0[57];
    sub_1D8A512F0(v1, v4, type metadata accessor for ProcessorState);
    v5(v4);
    sub_1D8A50E28(v4, type metadata accessor for ProcessorState);
    v6 = swift_task_alloc();
    v0[79] = v6;
    *v6 = v0;
    v6[1] = sub_1D8A47308;
    v7 = v0[73];
    v8 = v0[72];

    return MEMORY[0x1EEE6D8A8](v8, 0, 0, v7);
  }
}

uint64_t sub_1D8A475FC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 368) = v18;
  *(v9 + 376) = v19;
  *(v9 + 488) = v17;
  *(v9 + 360) = a2;
  *(v9 + 344) = a8;
  *(v9 + 352) = v16;
  *(v9 + 328) = a6;
  *(v9 + 336) = a7;
  *(v9 + 312) = a1;
  *(v9 + 320) = a5;
  v10 = *(a9 + 48);
  *(v9 + 48) = *(a9 + 32);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(a9 + 64);
  *(v9 + 96) = *(a9 + 80);
  v11 = *(a9 + 16);
  *(v9 + 16) = *a9;
  *(v9 + 32) = v11;
  type metadata accessor for DetectionResult(0);
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  v12 = type metadata accessor for CVProcessorTaskDescriptor(0);
  *(v9 + 400) = v12;
  v13 = *(v12 - 8);
  *(v9 + 408) = v13;
  *(v9 + 416) = *(v13 + 64);
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A4774C, 0, 0);
}

uint64_t sub_1D8A4774C()
{
  v1 = v0[54];
  v2 = v0[51];
  v4 = v0[40];
  v3 = v0[41];
  v0[36] = 0;
  v5 = *(v4 + 40);
  sub_1D8A50DC0(v3, v1, type metadata accessor for CVProcessorTaskDescriptor);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[55] = v7;
  *(v7 + 16) = v0 + 36;
  *(v7 + 24) = v4;
  sub_1D8A512F0(v1, v7 + v6, type metadata accessor for CVProcessorTaskDescriptor);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D88C5380;
  *(v8 + 24) = v7;
  v0[28] = sub_1D8A5A6F0;
  v0[29] = v8;
  v0[24] = MEMORY[0x1E69E9820];
  v0[25] = 1107296256;
  v0[26] = sub_1D8A3EDFC;
  v0[27] = &block_descriptor_405;
  v9 = _Block_copy(v0 + 24);
  v10 = v5;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return MEMORY[0x1EEE6DA10](v11, v12, v13, v14, v15);
  }

  v16 = v0[36];
  v0[56] = v16;
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[57] = v17;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
    *v17 = v0;
    v17[1] = sub_1D8A47A70;
    v15 = MEMORY[0x1E69E7288];
    v13 = MEMORY[0x1E69E7CA8] + 8;
    v12 = v16;
    v14 = v11;

    return MEMORY[0x1EEE6DA10](v11, v12, v13, v14, v15);
  }

  v18 = *(v0 + 4);
  *(v0 + 17) = *(v0 + 3);
  *(v0 + 19) = v18;
  *(v0 + 21) = *(v0 + 5);
  v0[23] = v0[12];
  v19 = *(v0 + 2);
  *(v0 + 13) = *(v0 + 1);
  *(v0 + 15) = v19;
  v20 = swift_task_alloc();
  v0[59] = v20;
  *v20 = v0;
  v20[1] = sub_1D8A47C58;
  v21 = v0[49];
  v22 = v0[46];
  v23 = v0[47];
  v24 = v0[43];
  v25 = v0[44];
  v27 = v0[41];
  v26 = v0[42];

  return sub_1D8A41984(v21, v26, v24, v27, (v0 + 13), v25, v22, v23);
}

uint64_t sub_1D8A47A70()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1D8A4830C;
  }

  else
  {
    v2 = sub_1D8A47B84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A47B84()
{

  v1 = *(v0 + 64);
  *(v0 + 136) = *(v0 + 48);
  *(v0 + 152) = v1;
  *(v0 + 168) = *(v0 + 80);
  *(v0 + 184) = *(v0 + 96);
  v2 = *(v0 + 32);
  *(v0 + 104) = *(v0 + 16);
  *(v0 + 120) = v2;
  v3 = swift_task_alloc();
  *(v0 + 472) = v3;
  *v3 = v0;
  v3[1] = sub_1D8A47C58;
  v4 = *(v0 + 392);
  v5 = *(v0 + 368);
  v6 = *(v0 + 376);
  v7 = *(v0 + 344);
  v8 = *(v0 + 352);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);

  return sub_1D8A41984(v4, v9, v7, v10, v0 + 104, v8, v5, v6);
}

uint64_t sub_1D8A47C58()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_1D8A48640;
  }

  else
  {
    v2 = sub_1D8A47D6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A47D6C()
{
  v53 = v0;
  v1 = *(*(v0 + 320) + 56);
  if (!*(v1 + 16))
  {
    goto LABEL_11;
  }

  v2 = *(*(v0 + 328) + *(*(v0 + 400) + 20));
  v3 = sub_1D881F7DC(v2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = *(v1 + 56) + 8 * v3;
  if (*(v5 + 4) == 2 && *v5 == 0)
  {
    goto LABEL_11;
  }

  v7 = *(v0 + 480);
  v8 = *(v0 + 360);
  v9 = *(v0 + 320);
  v10 = *(v9 + 40);
  v11 = swift_task_alloc();
  *(v11 + 16) = v9;
  *(v11 + 24) = v2;
  *(v11 + 32) = v8;
  v12 = v10;
  sub_1D8B162D0();
  if (!v7)
  {

LABEL_11:
    sub_1D8A50DC0(*(v0 + 392), *(v0 + 384), type metadata accessor for DetectionResult);
    v29 = sub_1D8B151C0();
    v30 = sub_1D8B16230();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 384);
    if (v31)
    {
      v33 = *(v0 + 488);
      v34 = *(v0 + 360);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51 = v36;
      *v35 = 134218498;
      *(v35 + 4) = v34;
      *(v35 + 12) = 2080;
      v52 = *v32;
      v37 = CVDetection.DetectionType.description.getter();
      v39 = v38;
      sub_1D8A50E28(v32, type metadata accessor for DetectionResult);
      v40 = sub_1D89AC714(v37, v39, &v51);

      *(v35 + 14) = v40;
      *(v35 + 22) = 1024;
      *(v35 + 24) = v33;
      _os_log_impl(&dword_1D8783000, v29, v30, "[%f] Completed for %s (still: %{BOOL}d)", v35, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1DA721330](v36, -1, -1);
      MEMORY[0x1DA721330](v35, -1, -1);
    }

    else
    {

      sub_1D8A50E28(v32, type metadata accessor for DetectionResult);
    }

    sub_1D8A512F0(*(v0 + 392), *(v0 + 312), type metadata accessor for DetectionResult);
    type metadata accessor for ProcessorState(0);
    goto LABEL_15;
  }

  sub_1D8A50E28(*(v0 + 392), type metadata accessor for DetectionResult);

  sub_1D8A50DC0(*(v0 + 328), *(v0 + 424), type metadata accessor for CVProcessorTaskDescriptor);
  v13 = v7;
  v14 = sub_1D8B151C0();
  v15 = sub_1D8B16210();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 424);
  if (v16)
  {
    v18 = *(v0 + 400);
    v50 = *(v0 + 488);
    v19 = *(v0 + 360);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v51 = v21;
    *v20 = 134218754;
    *(v20 + 4) = v19;
    *(v20 + 12) = 2080;
    v52 = *(v17 + *(v18 + 20));
    v22 = CVDetection.DetectionType.description.getter();
    v24 = v23;
    sub_1D8A50E28(v17, type metadata accessor for CVProcessorTaskDescriptor);
    v25 = sub_1D89AC714(v22, v24, &v51);

    *(v20 + 14) = v25;
    *(v20 + 22) = 1024;
    *(v20 + 24) = v50;
    *(v20 + 28) = 2080;
    swift_getErrorValue();
    v26 = sub_1D8B16C90();
    v28 = sub_1D89AC714(v26, v27, &v51);

    *(v20 + 30) = v28;
    _os_log_impl(&dword_1D8783000, v14, v15, "[%f] Processing aborted due to error for %s (still: %{BOOL}d): %s", v20, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v21, -1, -1);
    MEMORY[0x1DA721330](v20, -1, -1);
  }

  else
  {

    sub_1D8A50E28(v17, type metadata accessor for CVProcessorTaskDescriptor);
  }

  v43 = *(v0 + 400);
  v44 = *(v0 + 328);
  v45 = *(v0 + 312);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40) + 48));
  sub_1D8A50DC0(v44 + *(v43 + 20), v45, type metadata accessor for DetectionRequest);
  swift_getErrorValue();
  v47 = sub_1D8B16C90();
  v49 = v48;

  *v46 = v47;
  v46[1] = v49;
  type metadata accessor for ProcessorState(0);
LABEL_15:
  swift_storeEnumTagMultiPayload();

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1D8A4830C()
{
  v30 = v0;

  v1 = *(v0 + 464);
  sub_1D8A50DC0(*(v0 + 328), *(v0 + 424), type metadata accessor for CVProcessorTaskDescriptor);
  v2 = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16210();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 424);
    v6 = *(v0 + 400);
    v27 = *(v0 + 488);
    v7 = *(v0 + 360);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 134218754;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v29 = *(v5 + *(v6 + 20));
    v10 = CVDetection.DetectionType.description.getter();
    v12 = v11;
    sub_1D8A50E28(v5, type metadata accessor for CVProcessorTaskDescriptor);
    v13 = sub_1D89AC714(v10, v12, &v28);

    *(v8 + 14) = v13;
    *(v8 + 22) = 1024;
    *(v8 + 24) = v27;
    *(v8 + 28) = 2080;
    swift_getErrorValue();
    v14 = sub_1D8B16C90();
    v16 = sub_1D89AC714(v14, v15, &v28);

    *(v8 + 30) = v16;
    _os_log_impl(&dword_1D8783000, v3, v4, "[%f] Processing aborted due to error for %s (still: %{BOOL}d): %s", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v9, -1, -1);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  else
  {
    v17 = *(v0 + 424);

    sub_1D8A50E28(v17, type metadata accessor for CVProcessorTaskDescriptor);
  }

  v18 = *(v0 + 400);
  v19 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40) + 48));
  sub_1D8A50DC0(v19 + *(v18 + 20), v20, type metadata accessor for DetectionRequest);
  swift_getErrorValue();
  v22 = sub_1D8B16C90();
  v24 = v23;

  *v21 = v22;
  v21[1] = v24;
  type metadata accessor for ProcessorState(0);
  swift_storeEnumTagMultiPayload();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D8A48640()
{
  v30 = v0;
  v1 = *(v0 + 480);
  sub_1D8A50DC0(*(v0 + 328), *(v0 + 424), type metadata accessor for CVProcessorTaskDescriptor);
  v2 = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16210();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 424);
    v6 = *(v0 + 400);
    v27 = *(v0 + 488);
    v7 = *(v0 + 360);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 134218754;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v29 = *(v5 + *(v6 + 20));
    v10 = CVDetection.DetectionType.description.getter();
    v12 = v11;
    sub_1D8A50E28(v5, type metadata accessor for CVProcessorTaskDescriptor);
    v13 = sub_1D89AC714(v10, v12, &v28);

    *(v8 + 14) = v13;
    *(v8 + 22) = 1024;
    *(v8 + 24) = v27;
    *(v8 + 28) = 2080;
    swift_getErrorValue();
    v14 = sub_1D8B16C90();
    v16 = sub_1D89AC714(v14, v15, &v28);

    *(v8 + 30) = v16;
    _os_log_impl(&dword_1D8783000, v3, v4, "[%f] Processing aborted due to error for %s (still: %{BOOL}d): %s", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v9, -1, -1);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  else
  {
    v17 = *(v0 + 424);

    sub_1D8A50E28(v17, type metadata accessor for CVProcessorTaskDescriptor);
  }

  v18 = *(v0 + 400);
  v19 = *(v0 + 328);
  v20 = *(v0 + 312);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40) + 48));
  sub_1D8A50DC0(v19 + *(v18 + 20), v20, type metadata accessor for DetectionRequest);
  swift_getErrorValue();
  v22 = sub_1D8B16C90();
  v24 = v23;

  *v21 = v22;
  v21[1] = v24;
  type metadata accessor for ProcessorState(0);
  swift_storeEnumTagMultiPayload();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D8A4896C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + *(type metadata accessor for CVProcessorTaskDescriptor(0) + 20));
  swift_beginAccess();
  if (*(*(a2 + 104) + 16) && (sub_1D881F7DC(v5), (v6 & 1) != 0))
  {
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
}

uint64_t sub_1D8A48A04(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_beginAccess();
  v7 = *(a1 + 88);
  if (*(v7 + 16))
  {
    result = sub_1D881F7DC(a2);
    if (v8)
    {
      v9 = *(*(v7 + 56) + 8 * result);
      if (v9 != -INFINITY && v9 != a3)
      {
        sub_1D88C53E4();
        swift_allocError();
        *v10 = a3;
        *(v10 + 8) = v9;
        *(v10 + 16) = 2;
        return swift_willThrow();
      }
    }
  }

  return result;
}

BOOL static CVCoordinator.denormalizeCropRect(cropRect:width:height:)(double a1, double a2, double a3, double a4)
{
  result = CGRectIsEmpty(*&a1);
  if (!result)
  {
    __asm { FMOV            V1.2D, #0.5 }
  }

  return result;
}

uint64_t sub_1D8A48B5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, void *a10)
{
  v116 = a5;
  v117 = a8;
  v115 = a7;
  v110 = a4;
  v111 = a6;
  v136 = a3;
  v108 = a9;
  v114 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v114);
  v124 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CVProcessorTaskDescriptor(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v123 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v108 - v18;
  v20 = *(a2 + 16);
  v109 = a1;
  v21 = 0;
  if (v20)
  {
    v22 = *a1;
    v113 = *(v17 + 80);
    v122 = (v113 + 32) & ~v113;
    v23 = a2 + v122;
    v24 = *(v17 + 72);
    v112 = xmmword_1D8B1AB90;
    v25 = v124;
    v120 = v22;
    v121 = v13;
    v119 = v24;
    do
    {
      sub_1D8A50DC0(v23, v19, type metadata accessor for CVProcessorTaskDescriptor);
      sub_1D8A50DC0(&v19[*(v13 + 20)], v25, type metadata accessor for DetectionRequest);
      if (*(v22 + 16) && (v26 = sub_1D881F7DC(*v25), (v27 & 1) != 0))
      {
        v28 = *(v22 + 56) + 88 * v26;
        v29 = *(v28 + 80);
        v30 = *(v28 + 64);
        v31 = *(v28 + 32);
        v133 = *(v28 + 48);
        v134 = v30;
        v32 = *(v28 + 16);
        v130 = *v28;
        v131 = v32;
        v132 = v31;
        v135 = v29;
        v33 = v134;
        v126 = v134;
        if (v133 == 1)
        {
          v34 = &v25[*(v114 + 28)];
          v35 = *v34;
          v36 = v34[1];
          v37 = v34[2];
          v38 = v34[3];
          sub_1D881F59C(&v130, v127);
          sub_1D88C5510(v33);
          v137.origin.x = 0.0;
          v137.origin.y = 0.0;
          v137.size.width = 1.0;
          v137.size.height = 1.0;
          v139.origin.x = v35;
          v139.origin.y = v36;
          v139.size.width = v37;
          v139.size.height = v38;
          v138 = CGRectIntersection(v137, v139);
          v39 = v125;
          sub_1D8A4E254(&v130, v115, v117, v128, v138.origin.x, v138.origin.y, v138.size.width, v138.size.height);
          v125 = v39;
          if (v39)
          {
            sub_1D88C5520(v33);
            sub_1D881F5F8(&v130);
            sub_1D8A50E28(v25, type metadata accessor for DetectionRequest);
            sub_1D8A50E28(v19, type metadata accessor for CVProcessorTaskDescriptor);
            result = sub_1D878BBCC(v21);
            goto LABEL_36;
          }

          v118 = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DB0);
          v40 = v122;
          v41 = swift_allocObject();
          *(v41 + 16) = v112;
          sub_1D8A50DC0(v19, v41 + v40, type metadata accessor for CVProcessorTaskDescriptor);
          v42 = v136;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v127[0] = *v42;
          v44 = v127[0];
          *v42 = 0x8000000000000000;
          v46 = sub_1D87F03BC(v128);
          v47 = *(v44 + 16);
          v48 = (v45 & 1) == 0;
          v49 = v47 + v48;
          if (__OFADD__(v47, v48))
          {
            goto LABEL_63;
          }

          v50 = v45;
          if (*(v44 + 24) >= v49)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D89695C0();
            }
          }

          else
          {
            sub_1D8972230(v49, isUniquelyReferenced_nonNull_native);
            v51 = sub_1D87F03BC(v128);
            if ((v50 & 1) != (v52 & 1))
            {
              goto LABEL_67;
            }

            v46 = v51;
          }

          v13 = v121;
          v82 = v127[0];
          if (v50)
          {
            *(*(v127[0] + 56) + 8 * v46) = v41;

            sub_1D881F5F8(v128);
          }

          else
          {
            *(v127[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
            v83 = v82[6] + 88 * v46;
            v84 = v128[1];
            *v83 = v128[0];
            *(v83 + 16) = v84;
            v85 = v128[2];
            v86 = v128[3];
            v87 = v128[4];
            *(v83 + 80) = v129;
            *(v83 + 48) = v86;
            *(v83 + 64) = v87;
            *(v83 + 32) = v85;
            *(v82[7] + 8 * v46) = v41;
            v88 = v82[2];
            v73 = __OFADD__(v88, 1);
            v89 = v88 + 1;
            if (v73)
            {
              goto LABEL_66;
            }

            v82[2] = v89;
          }

          *v136 = v82;
          sub_1D88C5520(v126);
          sub_1D881F5F8(&v130);
          v25 = v124;
          sub_1D8A50E28(v124, type metadata accessor for DetectionRequest);
          v16 = sub_1D8A50E28(v19, type metadata accessor for CVProcessorTaskDescriptor);
          v21 = v118;
          v24 = v119;
          v22 = v120;
        }

        else
        {
          sub_1D8A50DC0(v19, v123, type metadata accessor for CVProcessorTaskDescriptor);
          sub_1D881F59C(&v130, v127);
          sub_1D88C5510(v33);
          sub_1D878BBCC(v21);
          v53 = v136;
          v54 = swift_isUniquelyReferenced_nonNull_native();
          v127[0] = *v53;
          v55 = v127[0];
          *v53 = 0x8000000000000000;
          v57 = sub_1D87F03BC(&v130);
          v58 = *(v55 + 16);
          v59 = (v56 & 1) == 0;
          v60 = v58 + v59;
          if (__OFADD__(v58, v59))
          {
            goto LABEL_62;
          }

          v61 = v56;
          if (*(v55 + 24) >= v60)
          {
            if ((v54 & 1) == 0)
            {
              sub_1D89695C0();
              v55 = v127[0];
            }
          }

          else
          {
            sub_1D8972230(v60, v54);
            v55 = v127[0];
            v62 = sub_1D87F03BC(&v130);
            if ((v61 & 1) != (v63 & 1))
            {
              goto LABEL_67;
            }

            v57 = v62;
          }

          v64 = v136;
          *v136 = v55;

          v65 = *v64;
          if ((v61 & 1) == 0)
          {
            sub_1D8797808(v127);
            v66 = v127[0];
            v65[(v57 >> 6) + 8] |= 1 << v57;
            v67 = v65[6] + 88 * v57;
            v68 = v131;
            *v67 = v130;
            *(v67 + 16) = v68;
            v69 = v132;
            v70 = v133;
            v71 = v134;
            *(v67 + 80) = v135;
            *(v67 + 48) = v70;
            *(v67 + 64) = v71;
            *(v67 + 32) = v69;
            *(v65[7] + 8 * v57) = v66;
            v72 = v65[2];
            v73 = __OFADD__(v72, 1);
            v74 = v72 + 1;
            if (v73)
            {
              goto LABEL_65;
            }

            v65[2] = v74;
            sub_1D881F59C(&v130, v127);
          }

          v75 = v65[7];
          v76 = *(v75 + 8 * v57);
          v77 = swift_isUniquelyReferenced_nonNull_native();
          *(v75 + 8 * v57) = v76;
          if ((v77 & 1) == 0)
          {
            v76 = sub_1D87C8AA0(0, v76[2] + 1, 1, v76);
            *(v75 + 8 * v57) = v76;
          }

          v79 = v76[2];
          v78 = v76[3];
          if (v79 >= v78 >> 1)
          {
            *(v75 + 8 * v57) = sub_1D87C8AA0(v78 > 1, v79 + 1, 1, v76);
          }

          sub_1D88C5520(v126);
          sub_1D881F5F8(&v130);
          v25 = v124;
          sub_1D8A50E28(v124, type metadata accessor for DetectionRequest);
          sub_1D8A50E28(v19, type metadata accessor for CVProcessorTaskDescriptor);
          v80 = *(v75 + 8 * v57);
          *(v80 + 16) = v79 + 1;
          v81 = v80 + v122 + v79 * v119;
          v24 = v119;
          v16 = sub_1D8A512F0(v123, v81, type metadata accessor for CVProcessorTaskDescriptor);
          v21 = sub_1D8797808;
          v22 = v120;
          v13 = v121;
        }
      }

      else
      {
        sub_1D8A50E28(v25, type metadata accessor for DetectionRequest);
        v16 = sub_1D8A50E28(v19, type metadata accessor for CVProcessorTaskDescriptor);
      }

      v23 += v24;
      --v20;
    }

    while (v20);
  }

  MEMORY[0x1EEE9AC00](v16);
  v90 = v117;
  *(&v108 - 6) = v115;
  *(&v108 - 5) = v90;
  v91 = v116;
  *(&v108 - 4) = v110;
  *(&v108 - 3) = v91;
  *(&v108 - 2) = v109;
  BYTE4(v91) = BYTE4(v111);
  *(&v108 - 2) = v111;
  *(&v108 - 4) = BYTE4(v91) & 1;

  v93 = v125;
  v94 = sub_1D88C10EC(v92, sub_1D8A57AD8);

  v125 = v93;
  if (v93)
  {
    result = sub_1D878BBCC(v21);
LABEL_36:
    *a10 = v125;
    return result;
  }

  v118 = v21;
  v96 = *(v94 + 16);
  if (!v96)
  {
    v98 = MEMORY[0x1E69E7CC0];
LABEL_56:

    result = sub_1D878BBCC(v118);
    *v108 = v98;
    return result;
  }

  v97 = 0;
  v136 = (v94 + 32);
  v98 = MEMORY[0x1E69E7CC0];
  while (v97 < *(v94 + 16))
  {
    v99 = v136[v97];
    v100 = *(v99 + 16);
    v101 = v98[2];
    v102 = v101 + v100;
    if (__OFADD__(v101, v100))
    {
      goto LABEL_59;
    }

    v103 = swift_isUniquelyReferenced_nonNull_native();
    if (v103 && v102 <= v98[3] >> 1)
    {
      if (*(v99 + 16))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v101 <= v102)
      {
        v104 = v101 + v100;
      }

      else
      {
        v104 = v101;
      }

      v98 = sub_1D87C8A7C(v103, v104, 1, v98);
      if (*(v99 + 16))
      {
LABEL_51:
        v105 = (v98[3] >> 1) - v98[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63368);
        if (v105 < v100)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v100)
        {
          v106 = v98[2];
          v73 = __OFADD__(v106, v100);
          v107 = v106 + v100;
          if (v73)
          {
            goto LABEL_64;
          }

          v98[2] = v107;
        }

        goto LABEL_40;
      }
    }

    if (v100)
    {
      goto LABEL_60;
    }

LABEL_40:
    if (v96 == ++v97)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8A4955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v41 = a5;
  v42 = a6;
  v44 = a3;
  v40 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63368);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v39 - v16;
  sub_1D8A596F4(a1, a7, a8, &v60);
  if (!v8)
  {
    v39[0] = a4;
    v39[1] = a8;
    v76 = v15;
    v43 = 0;
    v59 = v65;
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v54 = v60;
    v55 = v61;
    if (*(&v64 + 1) == 1)
    {
      v18 = *(a1 + 72);
      v19 = *(a1 + 80);
      sub_1D88C5438(a1, v46);
      sub_1D881F59C(a1, &v47);
      v20 = v46;
    }

    else
    {
      v68[2] = v62;
      v68[3] = v63;
      v68[0] = v60;
      v68[1] = v61;
      v68[4] = v64;
      v69 = v65;
      v21 = v41;
      sub_1D87A0E38(&v60, &v47, &qword_1ECA64960);

      v23 = v43;
      v24 = sub_1D88C65F0(v22, v68);
      v43 = v23;
      sub_1D87A14E4(&v60, &qword_1ECA64960);

      *v21 = v24;

      v50 = v57;
      v51 = v58;
      v49 = v56;
      v19 = v59;
      v52 = v59;
      v47 = v54;
      v48 = v55;
      v18 = *(&v58 + 1);
      v20 = &v47;
    }

    sub_1D88C5438(v20, v53);
    sub_1D88C5438(v53, &v47);
    *(&v51 + 1) = v18;
    v52 = v19;
    v75 = v19;
    v72 = v49;
    v73 = v50;
    v70 = v47;
    v71 = v48;
    v74 = v51;
    sub_1D87A0E38(&v60, v46, &qword_1ECA64960);
    v25 = v43;
    sub_1D8A49A08(&v70, v39[0], v42 | ((HIDWORD(v42) & 1) << 32), a7, v66);
    if (v25)
    {
      v9 = v25;
      sub_1D881F5F8(&v47);
      sub_1D87A14E4(&v60, &qword_1ECA64960);
    }

    else
    {
      v43 = 0;
      v27 = v40;
      v28 = *(v40 + 16);
      if (v28)
      {
        v45 = MEMORY[0x1E69E7CC0];
        sub_1D87F45A4(0, v28, 0);
        v9 = v45;
        v29 = *(type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
        v30 = v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v44 = *(v29 + 72);
        do
        {
          sub_1D8A50DC0(v30, v17, type metadata accessor for CVProcessorTaskDescriptor);
          v31 = &v17[*(v14 + 48)];
          v32 = v14;
          v33 = &v17[*(v14 + 64)];
          v34 = v73;
          *(v31 + 2) = v72;
          *(v31 + 3) = v34;
          *(v31 + 4) = v74;
          *(v31 + 10) = v75;
          v35 = v71;
          *v31 = v70;
          *(v31 + 1) = v35;
          v36 = v66[1];
          *v33 = v66[0];
          *(v33 + 1) = v36;
          v33[32] = v67;
          sub_1D881F59C(&v47, v46);
          v45 = v9;
          v38 = *(v9 + 16);
          v37 = *(v9 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1D87F45A4(v37 > 1, v38 + 1, 1);
            v9 = v45;
          }

          *(v9 + 16) = v38 + 1;
          sub_1D881F6FC(v17, v9 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v38, &qword_1ECA63368);
          v30 += v44;
          --v28;
          v14 = v32;
        }

        while (v28);
        sub_1D881F5F8(&v47);
        sub_1D87A14E4(&v60, &qword_1ECA64960);
      }

      else
      {
        sub_1D881F5F8(&v47);
        sub_1D87A14E4(&v60, &qword_1ECA64960);
        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  return v9;
}

float64_t sub_1D8A49A08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D8A49A78(a1, a2, *(v5 + 24), a3 | ((HIDWORD(a3) & 1) << 32), a4, v10);
  if (!v6)
  {
    result = v10[0].f64[0];
    v9 = v10[1];
    *a5 = v10[0];
    *(a5 + 16) = v9;
    *(a5 + 32) = v11;
  }

  return result;
}

void sub_1D8A49A78(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X5>, float64x2_t *a6@<X8>)
{
  v183 = a6;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 32);
  v163.i64[0] = v14;
  v15(&v175, v16, v14);
  if (v176)
  {
    sub_1D88C3978(v175, v176);
    (*(v11 + 16))(v13, a2, a5);
    v17 = sub_1D8B151C0();
    v18 = sub_1D8B16210();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      v20 = CameraSourceFrame.timestamp.getter(a5, v163.i64[0]);
      (*(v11 + 8))(v13, a5);
      *(v19 + 4) = v20;
      _os_log_impl(&dword_1D8783000, v17, v18, "No pixelbuffer in frame %f", v19, 0xCu);
      MEMORY[0x1DA721330](v19, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v13, a5);
    }

    goto LABEL_11;
  }

  *&v161.f64[0] = a3;
  v162 = v175;
  sub_1D88C5438(a1, v169);
  sub_1D88C5438(v169, &v170);
  v180[2] = v172;
  v180[3] = v173;
  v181 = v174;
  v180[0] = v170;
  v180[1] = v171;
  v21 = *(a1 + 72);
  v177 = v21;
  if (!v21)
  {
    sub_1D88C5438(v169, v168);
    sub_1D8A57AA0(v168, v167);
    v23 = sub_1D8B151C0();
    v24 = sub_1D8B16210();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D8783000, v23, v24, "No pixelbuffer in storage!", v25, 2u);
      MEMORY[0x1DA721330](v25, -1, -1);
    }

    sub_1D88C3978(v162, 0);
    sub_1D88C558C(v169);
    goto LABEL_11;
  }

  type metadata accessor for CVBuffer(0);
  sub_1D88C5530(v169, v168);
  sub_1D87A0E38(&v177, v168, &qword_1ECA64970);
  sub_1D8A4F044(&unk_1EE0E37A0, 255, type metadata accessor for CVBuffer);
  v22 = v162;
  if (sub_1D8B13D60())
  {
    sub_1D87A14E4(&v177, &qword_1ECA64970);
    sub_1D88C558C(v169);
    sub_1D88C3978(v22, 0);
LABEL_11:
    v26 = 0uLL;
    v27 = 1;
    v28 = 0uLL;
LABEL_12:
    v29 = v183;
    *v183 = v26;
    v29[1] = v28;
    LOBYTE(v29[2].f64[0]) = v27;
    return;
  }

  v30 = *(a1 + 80);
  v31 = MEMORY[0x1E695F050];
  v32 = v164.i64[0];
  if (v30)
  {
    v168[0] = 0.0;
    memset(v182, 0, 32);
    v182[32] = 1;
    v33 = *MEMORY[0x1E695F050];
    v34 = *(MEMORY[0x1E695F050] + 8);
    v35 = *(MEMORY[0x1E695F050] + 16);
    v36 = *(MEMORY[0x1E695F050] + 24);
    v37 = v30;
    sub_1D8A3D48C(v37, v21, v168, v182, v33, v34, v35, v36);
    if (v32)
    {
      sub_1D88C3978(v162, 0);
      sub_1D88C558C(v169);
      sub_1D87A14E4(&v177, &qword_1ECA64970);

      return;
    }
  }

  sub_1D8A4A7C8(v180, a4 | ((HIDWORD(a4) & 1) << 32), v163.i64[0], v168);
  v38 = v168[0];
  v39 = *&v171;
  v40.i64[0] = 0;
  if (v173)
  {
    v41 = v21;
    v42 = v162;
    if (v173 == 1)
    {
      v43 = 0;
      v45 = *(&v172 + 1);
      v44 = *&v172;
      v40.i64[0] = *(&v171 + 1);
    }

    else
    {
      v39 = 0.0;
      v43 = 1;
      v44 = 0.0;
      v45 = 0.0;
    }

    v46 = v32;
  }

  else if (v174)
  {
    v47 = *(&v170 + 1);
    v41 = v21;
    if (v174 != 1)
    {
      v111 = v162;
      *v112.i64 = CVPixelBufferGetWidth(v162);
      v163 = v112;
      *v113.i64 = CVPixelBufferGetHeight(v111);
      v164 = v113;
      v114 = CGRound(*v163.i64);
      v115 = CGRound(*v164.i64);
      v116.i64[0] = 0;
      v117.f64[0] = NAN;
      v117.f64[1] = NAN;
      v160 = vnegq_f64(v117);
      v118 = CGRound(*vbslq_s8(v160, v116, v163).i64);
      v119.i64[0] = 0;
      v120 = CGRound(*vbslq_s8(v160, v119, v164).i64);
      v69 = v114 - v118;
      v68 = v115 - v120;
      v121 = v47;
      v122 = *&v39;
      v185.origin.x = v118;
      v185.origin.y = v120;
      v185.size.width = v69;
      v185.size.height = v68;
      Width = CGRectGetWidth(v185);
      v186.origin.x = 0.0;
      v186.origin.y = 0.0;
      v186.size.width = v47;
      v186.size.height = *&v39;
      if (CGRectGetWidth(v186) >= Width && (v187.origin.x = v118, v187.origin.y = v120, v187.size.width = v69, v187.size.height = v68, Height = CGRectGetHeight(v187), v188.origin.x = 0.0, v188.origin.y = 0.0, v188.size.width = v47, v188.size.height = *&v39, CGRectGetHeight(v188) >= Height))
      {
        v205.origin.x = 0.0;
        v205.origin.y = 0.0;
        v205.size.width = v47;
        v205.size.height = *&v39;
        MidX = CGRectGetMidX(v205);
        v206.origin.x = 0.0;
        v206.origin.y = 0.0;
        v206.size.width = v47;
        v206.size.height = *&v39;
        v39 = 0.0;
        x = MidX - v69 * 0.5;
        y = CGRectGetMidY(v206) - v68 * 0.5;
        v43 = 1;
        v40.i64[0] = 0;
        v44 = 0.0;
        v45 = 0.0;
        v46 = v32;
        v42 = v162;
      }

      else
      {
        v189.origin.x = v118;
        v189.origin.y = v120;
        v189.size.width = v69;
        v189.size.height = v68;
        v125 = CGRectGetWidth(v189);
        v190.origin.x = v118;
        v190.origin.y = v120;
        v190.size.width = v69;
        v190.size.height = v68;
        v39 = 0.0;
        *v40.i64 = v125 / CGRectGetHeight(v190);
        if (v38 == 4.71238898 || v38 == 1.57079633)
        {
          *v40.i64 = 1.0 / *v40.i64;
        }

        v127 = v121 / v122 < *v40.i64;
        v128 = round(*v40.i64 * v121 / (v121 / v122));
        v129 = round(v121 / v122 * v122 / *v40.i64);
        if (v127)
        {
          v68 = v129;
        }

        else
        {
          v68 = v122;
        }

        if (v127)
        {
          v69 = v47;
        }

        else
        {
          v69 = v128;
        }

        x = round((v121 - v69) * 0.5);
        y = round((v122 - v68) * 0.5);
        v43 = 1;
        v44 = 0.0;
        v45 = 0.0;
        v46 = v32;
        v42 = v162;
        v40.i64[0] = 0;
      }

      goto LABEL_41;
    }

    v48 = v168[0] * 180.0 / 3.14159265;
    v49 = v48 == 90.0;
    if (v48 == 270.0)
    {
      v49 = 1;
    }

    v50 = !v49;
    if (v49)
    {
      v51 = v171;
    }

    else
    {
      v51 = *(&v170 + 1);
    }

    if (v50)
    {
      v52 = v171;
    }

    else
    {
      v52 = *(&v170 + 1);
    }

    v53 = v51 / v52;
    v42 = v162;
    *v54.i64 = CVPixelBufferGetWidth(v162);
    v163 = v54;
    *v55.i64 = CVPixelBufferGetHeight(v42);
    v164 = v55;
    v56 = CGRound(*v163.i64);
    v57 = CGRound(*v164.i64);
    v58.i64[0] = 0;
    v59.f64[0] = NAN;
    v59.f64[1] = NAN;
    v160 = vnegq_f64(v59);
    v60 = CGRound(*vbslq_s8(v160, v58, v163).i64);
    v61.i64[0] = 0;
    *v40.i64 = CGRound(*vbslq_s8(v160, v61, v164).i64);
    v43 = 0;
    v62 = (v56 - v60) / (v57 - *v40.i64);
    v63 = v62 < v53;
    v64 = round(v53 * (v56 - v60) / v62);
    v65 = round((v57 - *v40.i64) * v62 / v53);
    if (v63)
    {
      v45 = v65;
    }

    else
    {
      v45 = v57 - *v40.i64;
    }

    if (v63)
    {
      v44 = v56 - v60;
    }

    else
    {
      v44 = v64;
    }

    *v40.i64 = *v40.i64 + round((v57 - *v40.i64 - v45) * 0.5);
    v39 = v60 + round((v56 - v60 - v44) * 0.5);
    v46 = v32;
  }

  else
  {
    v41 = v21;
    v43 = 1;
    v39 = 0.0;
    v44 = 0.0;
    v45 = 0.0;
    v46 = v32;
    v42 = v162;
  }

  x = v31->origin.x;
  y = v31->origin.y;
  v69 = v31->size.width;
  v68 = v31->size.height;
LABEL_41:
  v164 = v40;
  *v178 = v39;
  v178[1] = v40.i64[0];
  *&v178[2] = v44;
  *&v178[3] = v45;
  v179 = v43;
  v168[0] = v38;
  sub_1D8A3D48C(v42, v41, v168, v178, x, y, v69, v68);
  if (!v46)
  {
    if (v43)
    {
      v184.origin.x = x;
      v184.origin.y = y;
      v184.size.width = v69;
      v184.size.height = v68;
      if (CGRectEqualToRect(v184, *v31))
      {
        sub_1D88C3978(v162, 0);
        sub_1D88C558C(v169);
        sub_1D87A14E4(&v177, &qword_1ECA64970);
        v26 = 0uLL;
        v27 = 1;
        v28 = 0uLL;
      }

      else
      {
        *v130.i64 = CVPixelBufferGetWidth(v41);
        v163 = v130;
        *v131.i64 = CVPixelBufferGetHeight(v41);
        v164 = v131;
        v132 = CGRound(*v163.i64);
        v133 = CGRound(*v164.i64);
        v134.i64[0] = 0;
        v135.f64[0] = NAN;
        v135.f64[1] = NAN;
        v161 = vnegq_f64(v135);
        v136 = CGRound(*vbslq_s8(v161, v134, v163).i64);
        v137.i64[0] = 0;
        v138 = CGRound(*vbslq_s8(v161, v137, v164).i64);
        v161.f64[0] = v38;
        v139 = v138;
        *v164.i64 = v132 - v136;
        *v163.i64 = v133 - v138;
        v160.f64[0] = v136;
        v191.origin.x = x;
        v191.origin.y = y;
        v191.size.width = v69;
        v191.size.height = v68;
        v140 = (v136 - x) / CGRectGetWidth(v191);
        v192.origin.x = x;
        v192.origin.y = y;
        v192.size.width = v69;
        v192.size.height = v68;
        v141 = (v139 - y) / CGRectGetHeight(v192);
        v193.origin.x = v136;
        v193.origin.y = v139;
        *&v193.size.width = v164.i64[0];
        *&v193.size.height = v163.i64[0];
        v142 = CGRectGetWidth(v193);
        v194.origin.x = x;
        v194.origin.y = y;
        v194.size.width = v69;
        v194.size.height = v68;
        v143 = v142 / CGRectGetWidth(v194);
        v195.origin.x = v160.f64[0];
        v195.origin.y = v139;
        *&v195.size.width = v164.i64[0];
        *&v195.size.height = v163.i64[0];
        v144 = CGRectGetHeight(v195);
        v196.origin.x = x;
        v196.origin.y = y;
        v196.size.width = v69;
        v196.size.height = v68;
        v145 = v144 / CGRectGetHeight(v196);
        v197.origin.x = v140;
        v197.origin.y = v141;
        v197.size.width = v143;
        v197.size.height = v145;
        v164.i64[0] = CGRectGetMinX(v197);
        v198.origin.x = v140;
        v198.origin.y = v141;
        v198.size.width = v143;
        v198.size.height = v145;
        v163.i64[0] = CGRectGetMinY(v198);
        v199.origin.x = v140;
        v199.origin.y = v141;
        v199.size.width = v143;
        v199.size.height = v145;
        v160.f64[0] = CGRectGetMaxX(v199);
        v200.origin.x = v140;
        v200.origin.y = v141;
        v200.size.width = v143;
        v200.size.height = v145;
        MinY = CGRectGetMinY(v200);
        v201.origin.x = v140;
        v201.origin.y = v141;
        v201.size.width = v143;
        v201.size.height = v145;
        MinX = CGRectGetMinX(v201);
        v202.origin.x = v140;
        v202.origin.y = v141;
        v202.size.width = v143;
        v202.size.height = v145;
        MaxY = CGRectGetMaxY(v202);
        v203.origin.x = v140;
        v203.origin.y = v141;
        v203.size.width = v143;
        v203.size.height = v145;
        MaxX = CGRectGetMaxX(v203);
        v204.origin.x = v140;
        v204.origin.y = v141;
        v204.size.width = v143;
        v204.size.height = v145;
        v150 = CGRectGetMaxY(v204);
        v168[0] = *v164.i64;
        v168[1] = *v163.i64;
        v168[2] = v160.f64[0];
        v168[3] = MinY;
        v168[4] = MinX;
        v168[5] = MaxY;
        v168[6] = MaxX;
        v168[7] = v150;
        v166 = v161.f64[0];
        v165 = 0.0;
        sub_1D8A5A9D8(&v166, &v165, v167);
        Corners.bounds.getter();
        v160 = v152;
        v161 = v151;
        v163 = v154;
        v164 = v153;
        sub_1D88C3978(v162, 0);
        sub_1D88C558C(v169);
        sub_1D87A14E4(&v177, &qword_1ECA64970);
        v28.f64[0] = v160.f64[0];
        v26.f64[0] = v161.f64[0];
        v27 = 0;
        *&v28.f64[1] = v163.i64[0];
        *&v26.f64[1] = v164.i64[0];
      }
    }

    else
    {
      v70 = v162;
      *v71.i64 = CVPixelBufferGetWidth(v162);
      v161 = v71;
      *v72.i64 = CVPixelBufferGetHeight(v70);
      v163 = v72;
      v73 = CGRound(v161.f64[0]);
      v74 = CGRound(*v163.i64);
      v75.i64[0] = 0;
      v76.f64[0] = NAN;
      v76.f64[1] = NAN;
      v160 = vnegq_f64(v76);
      v77 = CGRound(*vbslq_s8(v160, v75, v161).i64);
      v78.i64[0] = 0;
      v79 = CGRound(*vbslq_s8(v160, v78, v163).i64);
      v80 = v73 - v77;
      v81 = v74 - v79;
      *v82.i64 = v39 - v77;
      v163 = v82;
      *v82.i64 = v77;
      v83 = v79;
      v84 = v80;
      v85 = v81;
      *v86.i64 = CGRectGetWidth(*v82.i8);
      v161 = v86;
      v86.i64[1] = v164.i64[1];
      *v86.i64 = *v164.i64 - v79;
      v160 = v86;
      *v86.i64 = v77;
      v87 = v79;
      v88 = v80;
      v89 = v81;
      *&v90 = CGRectGetHeight(*v86.i8);
      v159 = v90;
      *&v90 = v39;
      v91 = v164.i64[0];
      v92 = v44;
      v93 = v45;
      *&v94 = CGRectGetWidth(*&v90);
      v158 = v94;
      *&v94 = v77;
      v95 = v79;
      v96 = v80;
      v97 = v81;
      *&v98 = CGRectGetWidth(*&v94);
      v157 = v98;
      *&v98 = v39;
      v99 = v164.i64[0];
      v100 = v44;
      v101 = v45;
      *v102.i64 = CGRectGetHeight(*&v98);
      v164 = v102;
      *v102.i64 = v77;
      v103 = v79;
      v104 = v80;
      v105 = v81;
      *&v106 = CGRectGetHeight(*v102.i8);
      v156 = v106;
      sub_1D88C3978(v70, 0);
      sub_1D87A14E4(&v177, &qword_1ECA64970);
      sub_1D88C558C(v169);
      v27 = 0;
      *&v108.f64[0] = v157;
      *&v107.f64[0] = v158;
      *&v109.f64[0] = v163.i64[0];
      *&v107.f64[1] = v164.i64[0];
      v109.f64[1] = v160.f64[0];
      *&v108.f64[1] = v156;
      v110.f64[0] = v161.f64[0];
      *&v110.f64[1] = v159;
      v26 = vdivq_f64(v109, v110);
      v28 = vdivq_f64(v107, v108);
    }

    goto LABEL_12;
  }

  sub_1D88C3978(v42, 0);
  sub_1D88C558C(v169);
  sub_1D87A14E4(&v177, &qword_1ECA64970);
}

void sub_1D8A4A7C8(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, double *a4@<X8>)
{
  v4 = *(a1 + 52);
  if ((*(a1 + 56) & 1) == 0)
  {
    if (v4 == 1)
    {
      CameraSourceFrame.rotationAngle.getter(a3, a4);
      return;
    }

    goto LABEL_8;
  }

  if (!v4 || (v5 = a4, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DA0), a4 = v5, (a2 & 0x100000000) != 0))
  {
LABEL_8:
    *a4 = 0.0;
    return;
  }

  if ((a2 - 1) >= 8)
  {
    sub_1D8B16B90();
    __break(1u);
  }

  else
  {
    *v5 = dbl_1D8B36DF8[(a2 - 1)];
  }
}

double static CVCoordinator.rectByCroppingRectToAspectRatio(rect:cropAspectRatio:)(double a1, double a2, double a3, double a4, double a5)
{
  v5 = round(a3 * a5 / (a3 / a4));
  if (a3 / a4 < a5)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  return round((a3 - v6) * 0.5) + a1;
}

double static CVCoordinator.rectWithAspectRatioInsideDimensions(boundingDimensions:cropAspectRatio:)(double a1, double a2, double a3)
{
  v3 = round(a1 * a3 / (a1 / a2));
  if (a1 / a2 < a3)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3;
  }

  return round((a1 - v4) * 0.5);
}

CGFloat static CVCoordinator.normalizedLocationOfRect(innerRect:outerRect:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v14 = a1 - a5;
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  v18 = v14 / CGRectGetWidth(v19);
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  CGRectGetHeight(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetWidth(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  CGRectGetWidth(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  CGRectGetHeight(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  CGRectGetHeight(v24);
  return v18;
}

uint64_t sub_1D8A4AA14@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, _BYTE *a6@<X8>)
{
  v12 = type metadata accessor for DetectionRequest.Originator(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v62 - v17;
  v19 = *(a2 + 32);
  v70 = v16;
  v69 = a3;
  v68 = a4;
  if (v19)
  {
    v20 = type metadata accessor for DetectionRequest(0);
    v21 = &a1[v20[7]];
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v25 = v21[3];
  }

  else
  {
    v27 = *(a2 + 16);
    v26 = *(a2 + 24);
    v29 = *a2;
    v28 = *(a2 + 8);
    v20 = type metadata accessor for DetectionRequest(0);
    v30 = &a1[v20[7]];
    v31 = *v30;
    MaxX = *(v30 + 1);
    v32 = MaxX;
    v33 = *(v30 + 3);
    MinX = *(v30 + 2);
    MinY = v33;
    v63 = v31;
    v74.origin.x = v29;
    v74.origin.y = v28;
    v74.size.width = v27;
    v74.size.height = v26;
    Width = CGRectGetWidth(v74);
    v62 = v32 - v28;
    v22 = (v31 - v29) / Width;
    v75.origin.x = v29;
    v75.origin.y = v28;
    v75.size.width = v27;
    v75.size.height = v26;
    v64 = v26;
    v23 = (v32 - v28) / CGRectGetHeight(v75);
    v76.origin.x = v31;
    v76.origin.y = v32;
    v35 = MinX;
    v76.size.width = MinX;
    v36 = MinY;
    v76.size.height = MinY;
    v62 = CGRectGetWidth(v76);
    v77.origin.x = v29;
    v77.origin.y = v28;
    v77.size.width = v27;
    v77.size.height = v26;
    v24 = v62 / CGRectGetWidth(v77);
    v78.origin.x = v63;
    v78.origin.y = MaxX;
    v78.size.width = v35;
    v78.size.height = v36;
    Height = CGRectGetHeight(v78);
    v79.origin.x = v29;
    v79.origin.y = v28;
    v79.size.width = v27;
    v79.size.height = v64;
    v25 = Height / CGRectGetHeight(v79);
  }

  v38 = *a1;
  type metadata accessor for DetectionRequest(0);
  sub_1D8A50DC0(&a1[v20[5]], v18, type metadata accessor for DetectionRequest.Originator);
  v39 = *&a1[v20[6]];

  v80.origin.x = v22;
  v80.origin.y = v23;
  v80.size.width = v24;
  v80.size.height = v25;
  MinX = CGRectGetMinX(v80);
  v81.origin.x = v22;
  v81.origin.y = v23;
  v81.size.width = v24;
  v81.size.height = v25;
  MinY = CGRectGetMinY(v81);
  v82.origin.x = v22;
  v82.origin.y = v23;
  v82.size.width = v24;
  v82.size.height = v25;
  MaxX = CGRectGetMaxX(v82);
  v83.origin.x = v22;
  v83.origin.y = v23;
  v83.size.width = v24;
  v83.size.height = v25;
  v40 = CGRectGetMinY(v83);
  v84.origin.x = v22;
  v84.origin.y = v23;
  v84.size.width = v24;
  v84.size.height = v25;
  v41 = CGRectGetMinX(v84);
  v85.origin.x = v22;
  v85.origin.y = v23;
  v85.size.width = v24;
  v85.size.height = v25;
  MaxY = CGRectGetMaxY(v85);
  v86.origin.x = v22;
  v86.origin.y = v23;
  v86.size.width = v24;
  v86.size.height = v25;
  v43 = CGRectGetMaxX(v86);
  v87.origin.x = v22;
  v87.origin.y = v23;
  v87.size.width = v24;
  v87.size.height = v25;
  v44 = CGRectGetMaxY(v87);
  v72[1] = MinX;
  v72[2] = MinY;
  v72[3] = MaxX;
  v72[4] = v40;
  v72[5] = v41;
  v72[6] = MaxY;
  v72[7] = v43;
  v72[8] = v44;
  v73 = 0;
  CameraSourceFrame.rotationAngle.getter(a5, v72);
  sub_1D8A5A9D8(&v73, v72, v71);
  Corners.bounds.getter();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = *&a1[v20[8]];
  sub_1D8A50DC0(v18, v15, type metadata accessor for DetectionRequest.Originator);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_18:
    *a6 = v38;
    result = sub_1D8A512F0(v18, &a6[v20[5]], type metadata accessor for DetectionRequest.Originator);
    *&a6[v20[6]] = v39;
    v61 = &a6[v20[7]];
    *v61 = v46;
    v61[1] = v48;
    v61[2] = v50;
    v61[3] = v52;
    *&a6[v20[8]] = v53;
  }

  else
  {
    sub_1D8A50E28(v15, type metadata accessor for DetectionRequest.Originator);
    result = MEMORY[0x1E69E7CD0];
    if (v38 <= 0xD && ((1 << v38) & 0x3002) != 0)
    {
      result = sub_1D8A50348(&unk_1F5428C30, &qword_1ECA67E58);
    }

    v55 = 0;
    v56 = 1 << *(result + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & *(result + 56);
    v59 = (v56 + 63) >> 6;
    while (v58)
    {
LABEL_11:
      v58 &= v58 - 1;
    }

    while (1)
    {
      v60 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v60 >= v59)
      {

        goto LABEL_18;
      }

      v58 = *(result + 56 + 8 * v60);
      ++v55;
      if (v58)
      {
        v55 = v60;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}