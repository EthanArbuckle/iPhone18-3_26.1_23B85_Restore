uint64_t GroundingResult.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D8B13240();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 GroundingResult.corners.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 40);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

double GroundingResult.rotationAngle.getter@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(v2 + *(a1 + 52));
  *a2 = result;
  return result;
}

uint64_t GroundingResult.modifyWithPrediction(_:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  v21[0] = *(a1 + 16);
  v21[1] = v11;
  v12 = *(a1 + 64);
  v21[2] = *(a1 + 48);
  v21[3] = v12;
  v13 = *(a1 + 80);
  (*(v14 + 16))(v10, v4);
  v15 = *(v4 + a2[9]);
  v16 = *(v4 + a2[11]);
  v17 = *(v4 + a2[12]);
  v20 = *(v4 + a2[13]);
  sub_1D8A0682C(v10, v21, v16, v17, &v20, *(v4 + a2[15]), a3, v15, v13);
}

__n128 sub_1D8A0682C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>, double a9@<D1>)
{
  v17 = *a5;
  v18 = sub_1D8B13240();
  (*(*(v18 - 8) + 32))(a7, a1, v18);
  v19 = type metadata accessor for GroundingResult();
  *(a7 + v19[9]) = a8;
  v20 = a7 + v19[10];
  v21 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v21;
  result = *(a2 + 32);
  v23 = *(a2 + 48);
  *(v20 + 32) = result;
  *(v20 + 48) = v23;
  *(a7 + v19[11]) = a3;
  *(a7 + v19[12]) = a4;
  *(a7 + v19[13]) = v17;
  *(a7 + v19[14]) = a9;
  *(a7 + v19[15]) = a6;
  return result;
}

void GroundingResult.modifyWithRotation(_:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  (*(v12 + 16))(v10, v4);
  v13 = *(a2 + 40);
  v14 = *(v4 + *(a2 + 36));
  v15 = *(v4 + v13 + 16);
  v32[0] = *(v4 + v13);
  v32[1] = v15;
  v16 = *(v4 + v13 + 48);
  v32[2] = *(v4 + v13 + 32);
  v32[3] = v16;
  v30 = *(v4 + *(a2 + 52));
  v31 = v11;
  sub_1D8A5A9D8(&v31, &v30, v29);
  v17 = *(v4 + *(a2 + 44));
  v18 = *(v4 + *(a2 + 48));
  *&v32[0] = v11;
  v19 = *(v4 + *(a2 + 56));
  v31 = *(v4 + *(a2 + 60));
  v20 = *(a2 + 24);
  v26 = *(a2 + 16);
  v27 = v20;
  v28 = v11;
  v21 = sub_1D8B15DB0();

  WitnessTable = swift_getWitnessTable();
  v24 = sub_1D87DFC48(sub_1D8A0E998, v25, v21, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v23);

  sub_1D8A0682C(v10, v29, v17, v18, v32, v24, a3, v14, v19);
}

uint64_t GroundingResult.description.getter(uint64_t a1)
{
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD000000000000010, 0x80000001D8B47190);
  swift_getMetatypeMetadata();
  v3 = sub_1D8B159E0();
  MEMORY[0x1DA71EFA0](v3);

  MEMORY[0x1DA71EFA0](0x203A6469283ELL, 0xE600000000000000);
  sub_1D8B13240();
  sub_1D8A12344(&qword_1EE0E9890);
  v4 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v4);

  MEMORY[0x1DA71EFA0](0x6469666E6F63202CLL, 0xEE00203A65636E65);
  sub_1D8B16030();
  MEMORY[0x1DA71EFA0](0x72656E726F63202CLL, 0xEB00000000203A73);
  v5 = Corners.description.getter();
  MEMORY[0x1DA71EFA0](v5);

  MEMORY[0x1DA71EFA0](0xD000000000000010, 0x80000001D8B471B0);
  v6 = MEMORY[0x1DA71F1E0](*(v1 + *(a1 + 44)), &type metadata for LabelConfidencePair);
  MEMORY[0x1DA71EFA0](v6);

  MEMORY[0x1DA71EFA0](0x646465626D65202CLL, 0xEE003C203A676E69);
  v7 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v7);

  MEMORY[0x1DA71EFA0](0xD00000000000001BLL, 0x80000001D8B471D0);
  sub_1D8B168A0();
  MEMORY[0x1DA71EFA0](0x7473656D6974202CLL, 0xED0000203A706D61);
  sub_1D8B16020();
  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D8A06E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1D8B16470();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v12 - v6;
  v8 = *(a1 + 8);
  v12[1] = *a1;
  swift_getAssociatedConformanceWitness();
  sub_1D8B15C50();
  v9 = *(AssociatedTypeWitness - 8);
  result = (*(v9 + 48))(v7, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = *(swift_getTupleTypeMetadata2() + 48);
    result = (*(v9 + 32))(a2, v7, AssociatedTypeWitness);
    *(a2 + v11) = v8;
  }

  return result;
}

uint64_t static GroundingResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D8B13200() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GroundingResult();
  if (*(a1 + *(v4 + 36)) != *(a2 + *(v4 + 36)))
  {
    return 0;
  }

  v5 = v4;
  v6 = (a1 + *(v4 + 40));
  v7 = v6[3];
  v18[2] = v6[2];
  v18[3] = v7;
  v8 = v6[1];
  v18[0] = *v6;
  v18[1] = v8;
  v9 = (a2 + *(v4 + 40));
  v10 = v9[1];
  v17[0] = *v9;
  v17[1] = v10;
  v11 = v9[3];
  v17[2] = v9[2];
  v17[3] = v11;
  if (!_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v18, v17) || (sub_1D88E3154(*(a1 + v5[11]), *(a2 + v5[11])) & 1) == 0 || (sub_1D8A0716C(*(a1 + v5[12]), *(a2 + v5[12])) & 1) == 0 || *(a1 + v5[13]) != *(a2 + v5[13]) || *(a1 + v5[14]) != *(a2 + v5[14]))
  {
    return 0;
  }

  v12 = v5[15];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69530](v13, v14, v5, WitnessTable);
}

uint64_t sub_1D8A0716C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A071C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372656E726F63 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61537365726F6373 && a2 == 0xEC000000656C706DLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xED0000656C676E41 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001D8B47270 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D8A074B4(unsigned __int8 a1)
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](a1);
  return sub_1D8B16D80();
}

unint64_t sub_1D8A074FC(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x6D617473656D6974;
  if (a1 != 6)
  {
    v2 = 0xD000000000000024;
  }

  v3 = 0x6E69646465626D65;
  if (a1 != 4)
  {
    v3 = 0x6E6F697461746F72;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x7372656E726F63;
  if (a1 != 2)
  {
    v4 = 0x61537365726F6373;
  }

  if (a1)
  {
    v1 = 0x6E656469666E6F63;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8A07640()
{
  sub_1D8B16D20();
  sub_1D8A0748C(v2, *v0);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A07694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A071C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A076C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8A0FE5C();
  *a1 = result;
  return result;
}

uint64_t sub_1D8A076F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D8A07744(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t GroundingResult.encode(to:)(void *a1, int *a2)
{
  v3 = v2;
  v16 = a2;
  type metadata accessor for GroundingResult.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D8B16B10();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8B16DD0();
  LOBYTE(v19) = 0;
  sub_1D8B13240();
  sub_1D8A12344(&qword_1ECA637D8);
  v9 = v17;
  sub_1D8B16AE0();
  if (!v9)
  {
    v10 = v16;
    v24 = 1;
    sub_1D8B16AC0();
    v11 = (v3 + v10[10]);
    v12 = v11[1];
    v19 = *v11;
    v20 = v12;
    v13 = v11[3];
    v21 = v11[2];
    v22 = v13;
    v23 = 2;
    sub_1D881BB78();
    sub_1D8B16AE0();
    *&v19 = *(v3 + v10[11]);
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671E0);
    sub_1D8A0EA80(&qword_1ECA671F0, sub_1D8A0EA2C);
    sub_1D8B16AE0();
    *&v19 = *(v3 + v10[12]);
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67200);
    sub_1D8A0EB4C(&qword_1ECA67208);
    sub_1D8B16AE0();
    *&v19 = *(v3 + v10[13]);
    v23 = 5;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v19) = 6;
    sub_1D8B16AB0();
    *&v19 = *(v3 + v10[15]);
    v23 = 7;
    sub_1D8B15DB0();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t GroundingResult.hash(into:)(uint64_t a1, int *a2)
{
  sub_1D8B13240();
  sub_1D8A12344(&qword_1EE0E98A0);
  sub_1D8B157A0();
  sub_1D8B16D60();
  v5 = (v2 + a2[10]);
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  v10 = v5[6];
  v11 = v5[7];
  sub_1D8818B80(*v5, v5[1]);
  sub_1D8818B80(v6, v7);
  sub_1D8818B80(v8, v9);
  sub_1D8818B80(v10, v11);
  sub_1D87D0390(a1, *(v2 + a2[11]));
  v12 = *(v2 + a2[12]);
  v13 = *(v12 + 16);
  MEMORY[0x1DA720210](v13);
  if (v13)
  {
    v14 = v12 + 32;
    do
    {
      v14 += 2;
      sub_1D8B16D50();
      --v13;
    }

    while (v13);
  }

  v15 = *(v2 + a2[13]);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x1DA720250](*&v15);
  v16 = *(v2 + a2[14]);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x1DA720250](*&v16);
  v17 = *(v2 + a2[15]);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69520](a1, v17, a2, WitnessTable);
}

uint64_t GroundingResult.hashValue.getter(int *a1)
{
  sub_1D8B16D20();
  GroundingResult.hash(into:)(v3, a1);
  return sub_1D8B16D80();
}

uint64_t GroundingResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1D8B13240();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GroundingResult.CodingKeys();
  swift_getWitnessTable();
  v32 = sub_1D8B16A30();
  v29 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v25 - v5;
  v7 = type metadata accessor for GroundingResult();
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = v6;
  v10 = v33;
  sub_1D8B16DB0();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v9;
  v12 = v7;
  v13 = v27;
  LOBYTE(v36) = 0;
  sub_1D8A12344(&unk_1ECA689C0);
  v14 = v28;
  sub_1D8B16A10();
  v15 = *(v13 + 32);
  v16 = v11;
  v15(v11, v30, v14);
  LOBYTE(v36) = 1;
  sub_1D8B169F0();
  v17 = v12;
  *&v16[v12[9]] = v18;
  v41 = 2;
  sub_1D881BC34();
  sub_1D8B16A10();
  v19 = &v16[v12[10]];
  v20 = v37;
  *v19 = v36;
  *(v19 + 1) = v20;
  v21 = v39;
  *(v19 + 2) = v38;
  *(v19 + 3) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671E0);
  v40 = 3;
  sub_1D8A0EA80(&qword_1ECA67210, sub_1D8A0EAF8);
  sub_1D8B16A10();
  *&v16[v12[11]] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67200);
  v40 = 4;
  sub_1D8A0EB4C(&qword_1ECA67220);
  sub_1D8B16A10();
  *&v16[v12[12]] = v35;
  v40 = 5;
  sub_1D88913B8();
  sub_1D8B16A10();
  *&v16[v12[13]] = v35;
  LOBYTE(v35) = 6;
  sub_1D8B169E0();
  *&v16[v12[14]] = v22;
  sub_1D8B15DB0();
  v40 = 7;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D8B16A10();
  (*(v29 + 8))(v31, v32);
  *&v16[v12[15]] = v35;
  v23 = v25;
  (*(v25 + 16))(v26, v16, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v23 + 8))(v16, v17);
}

uint64_t sub_1D8A084A8(uint64_t a1, int *a2)
{
  sub_1D8B16D20();
  GroundingResult.hash(into:)(v4, a2);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A08524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA673D8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v65 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v65 - v10;
  sub_1D87A0E38(a2, v7, &qword_1ECA673D8);
  v12 = *v7;
  sub_1D881F6FC(v7 + *(v5 + 56), v11, &qword_1ECA67750);
  v13 = *(v9 + 52);
  v14 = v12;
  v66 = v11;
  v15 = *&v11[v13];
  v16 = *(v15 + 16);

  v68 = v16;
  if (!v16)
  {
LABEL_34:
    sub_1D87A14E4(v66, &qword_1ECA67750);
  }

  v17 = 0;
  v18 = (v15 + 40);
  v67 = v15;
  while (v17 < *(v15 + 16))
  {
    v20 = *v18;
    visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v18 - 1));
    v21 = v69;
    if (v69 == 181)
    {
      goto LABEL_40;
    }

    v22 = *a1;
    if (!*(*a1 + 16) || (v23 = sub_1D881F7DC(v69), (v24 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = *a1;
      v42 = v69;
      v43 = sub_1D881F7DC(v21);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v37 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v37)
      {
        goto LABEL_36;
      }

      v48 = v44;
      if (v42[3] >= v47)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_22;
        }

        v60 = v15;
        v61 = v14;
        v62 = v43;
        sub_1D896B4B0();
        v43 = v62;
        v14 = v61;
        v15 = v60;
        v50 = v69;
        if (v48)
        {
          goto LABEL_3;
        }

LABEL_23:
        v50[(v43 >> 6) + 8] |= 1 << v43;
        *(v50[6] + v43) = v21;
        v51 = v50[7] + 16 * v43;
        *v51 = v20;
        *(v51 + 4) = v20;
        *(v51 + 8) = v14;
        v52 = v50[2];
        v37 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v37)
        {
          goto LABEL_37;
        }

        v50[2] = v53;
      }

      else
      {
        sub_1D89751D8(v47, isUniquelyReferenced_nonNull_native);
        v43 = sub_1D881F7DC(v21);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_41;
        }

LABEL_22:
        v50 = v69;
        if ((v48 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_3:
        v19 = v50[7] + 16 * v43;
        *v19 = v20;
        *(v19 + 4) = v20;
        *(v19 + 8) = v14;
      }

      *a1 = v50;
      goto LABEL_5;
    }

    v25 = v22[7] + 16 * v23;
    v27 = *v25;
    v26 = *(v25 + 4);
    v28 = *(v25 + 8);
    v29 = v14;
    if (v26 < v20)
    {
      v30 = v20;
    }

    else
    {
      v14 = v28;
      v30 = v26;
    }

    v31 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *a1;
    v32 = v69;
    v33 = sub_1D881F7DC(v21);
    v35 = v32[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_38;
    }

    v39 = v34;
    if (v32[3] >= v38)
    {
      if ((v31 & 1) == 0)
      {
        v63 = v33;
        sub_1D896B4B0();
        v33 = v63;
      }
    }

    else
    {
      sub_1D89751D8(v38, v31);
      v33 = sub_1D881F7DC(v21);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_41;
      }
    }

    v54 = v20 + v27;
    v55 = v69;
    if (v39)
    {
      v56 = v69[7] + 16 * v33;
      *v56 = v54;
      *(v56 + 4) = v30;
      *(v56 + 8) = v14;
    }

    else
    {
      v69[(v33 >> 6) + 8] |= 1 << v33;
      *(v55[6] + v33) = v21;
      v57 = v55[7] + 16 * v33;
      *v57 = v54;
      *(v57 + 4) = v30;
      *(v57 + 8) = v14;
      v58 = v55[2];
      v37 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v37)
      {
        goto LABEL_39;
      }

      v55[2] = v59;
    }

    *a1 = v55;
    v14 = v29;
    v15 = v67;
LABEL_5:
    ++v17;
    v18 += 4;
    if (v68 == v17)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t GroundingProcessor.NonMaximumSuppressionPolicy.description.getter()
{
  v1 = 0x6177417373616C63;
  v2 = 0x676E696E6E7572;
  if (*v0 != 2)
  {
    v2 = 0x746369727473;
  }

  if (*v0)
  {
    v1 = 1701736302;
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

uint64_t sub_1D8A089E8(uint64_t a1)
{
  v2 = sub_1D8A0ED08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A08A24(uint64_t a1)
{
  v2 = sub_1D8A0ED08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A08A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A10318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A08A88(uint64_t a1)
{
  v2 = sub_1D8A0EBB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A08AC4(uint64_t a1)
{
  v2 = sub_1D8A0EBB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A08B00(uint64_t a1)
{
  v2 = sub_1D8A0ECB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A08B3C(uint64_t a1)
{
  v2 = sub_1D8A0ECB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A08B78(uint64_t a1)
{
  v2 = sub_1D8A0EC60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A08BB4(uint64_t a1)
{
  v2 = sub_1D8A0EC60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A08BF0(uint64_t a1)
{
  v2 = sub_1D8A0EC0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A08C2C(uint64_t a1)
{
  v2 = sub_1D8A0EC0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GroundingProcessor.NonMaximumSuppressionPolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67228);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67230);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67238);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67240);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67248);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A0EBB8();
  sub_1D8B16DD0();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1D8A0EC60();
      v18 = v27;
      sub_1D8B16A40();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1D8A0EC0C();
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
    sub_1D8A0ECB4();
    v18 = v24;
    sub_1D8B16A40();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1D8A0ED08();
  sub_1D8B16A40();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t GroundingProcessor.NonMaximumSuppressionPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t GroundingProcessor.NonMaximumSuppressionPolicy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67278);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67280);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67288);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67290);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67298);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8A0EBB8();
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
      *v28 = &type metadata for GroundingProcessor.NonMaximumSuppressionPolicy;
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
        sub_1D8A0ECB4();
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
        sub_1D8A0ED08();
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
      sub_1D8A0EC60();
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
      sub_1D8A0EC0C();
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

uint64_t sub_1D8A097BC(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D8B151E0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21[-v9];
  v23 = *a1;
  v22 = *(a1 + 8);
  v11 = a1[2];
  v12 = *(a1 + 24);
  v13 = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_signposter;
  if (qword_1EE0E4280 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_1EE0E4288);
  v15 = *(v5 + 16);
  v15(v10, v14, v4);
  v15((v2 + v13), v10, v4);
  v15(v8, v10, v4);
  type metadata accessor for LoggingSignposter(0);
  sub_1D8B15140();
  (*(v5 + 8))(v10, v4);
  v16 = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_descriptor;
  type metadata accessor for GroundingMD6_1Descriptor();
  swift_allocObject();
  GroundingMD6_1Descriptor.init()();
  *(v2 + v16) = v17;
  *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_featuresSurface) = 0;
  v18 = v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_groundingStorage;
  *v18 = 0;
  *(v18 + 8) = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_taxonomySize) = 181;
  v19 = v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_configuration;
  *v19 = v23;
  *(v19 + 8) = v22;
  *(v19 + 16) = v11;
  *(v19 + 24) = v12;
  return v2;
}

uint64_t GroundingProcessor.deinit()
{
  v1 = (v0 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_groundingStorage);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_groundingStorage));
  sub_1D8A09AD0(&v1[2]);
  os_unfair_lock_unlock(v1);
  sub_1D8A123F0(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_signposter, type metadata accessor for LoggingSignposter);

  sub_1D87A14E4(&v1[2], &qword_1ECA672B0);
  return v0;
}

uint64_t sub_1D8A09AD0(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 56);
    while (v3 < *(v1 + 16))
    {
      result = *v4;
      if (*v4)
      {
        result = MEMORY[0x1DA721330](result, -1, -1);
      }

      ++v3;
      v4 += 6;
      if (v2 == v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t GroundingProcessor.__deallocating_deinit()
{
  GroundingProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8A09BAC(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v2[39] = type metadata accessor for E5Bundle(0);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v3 = sub_1D8B13000();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  type metadata accessor for LoggingSignposter(0);
  v2[52] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A09D80, 0, 0);
}

uint64_t sub_1D8A09D80()
{
  v1 = v0[52];
  v2 = v0[38];
  sub_1D8A12388(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_signposter, v1, type metadata accessor for LoggingSignposter);
  type metadata accessor for LoggingSignposter.AutoInterval();
  inited = swift_initStackObject();
  v0[53] = inited;
  v4 = 1;
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("CVCoordinator.GroundingProcessor.prepare", 40, 2u, 1, 0, (inited + 16));
  sub_1D8A123F0(v1, type metadata accessor for LoggingSignposter);
  v5 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_descriptor);
  v0[54] = v5;
  v6 = *(v5 + 16);
  v7 = sub_1D8B15940();
  v8 = sub_1D8B15940();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (v9)
  {
    sub_1D8B12FB0();

    v4 = 0;
  }

  v11 = v0[50];
  v10 = v0[51];
  v12 = v0[49];
  v13 = v0[46];
  v14 = v0[47];
  (*(v14 + 56))(v11, v4, 1, v13);
  sub_1D881F6FC(v11, v10, &qword_1ECA630C0);
  sub_1D87A0E38(v10, v12, &qword_1ECA630C0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_15:
    __break(1u);
  }

  v0[55] = sub_1D8B13010();
  v0[56] = v15;
  v16 = v0[49];
  v17 = v0[46];
  v18 = (v0[47] + 8);
  v20 = v0[38];
  sub_1D87A14E4(v0[51], &qword_1ECA630C0);
  (*v18)(v16, v17);
  v21 = *(v20 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_configuration + 16);
  v0[57] = v21;
  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_groundingStorage;
  v0[58] = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_featuresSurface;
  v0[59] = v22;
  v23 = OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_bundleURL;
  v0[60] = OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_bundleURL;
  if (v21)
  {
    v24 = v0[46];
    v25 = v0[47];
    v26 = *(v25 + 16);
    v0[61] = v26;
    v0[62] = 0;
    v27 = v0[48];
    v26(v27, v0[54] + v23, v24);
    type metadata accessor for E5InferenceProvider(0);
    v28 = swift_allocObject();
    v29 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
    v0[63] = v28;
    v0[64] = v29;
    (*(v25 + 32))(v28 + v29, v27, v24);
    swift_storeEnumTagMultiPayload();
    v30 = swift_task_alloc();
    v0[65] = v30;
    *v30 = v0;
    v30[1] = sub_1D8A0A310;

    return sub_1D8A029C0();
  }

  else
  {
    v31 = v0[53];
    sub_1D87A1598(v0[55], v0[56]);
    swift_setDeallocating();
    v33 = v31[5];
    v32 = v31[6];
    __swift_project_boxed_opaque_existential_1(v31 + 2, v33);
    (*(v32 + 8))(v33, v32);
    __swift_destroy_boxed_opaque_existential_1((v31 + 2));

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_1D8A0A310()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_1D8A0B320;
  }

  else
  {
    v2 = sub_1D8A0A450;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A0A450()
{
  v3 = *(*(v0 + 304) + *(v0 + 464));
  v5 = *(v0 + 504);
  v4 = *(v0 + 512);
  if (v3)
  {
    v6 = *(v0 + 360);
    swift_beginAccess();
    sub_1D8A12388(v5 + v4, v6, type metadata accessor for E5Bundle);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = *(v0 + 440);
      v22 = *(v0 + 448);
      v24 = *(v0 + 360);
      v25 = v3;
      sub_1D8A123F0(v24, type metadata accessor for E5Bundle);
      sub_1D8A02EF0();
      swift_allocError();
      *v26 = xmmword_1D8B190D0;
      swift_willThrow();

LABEL_46:
      v11 = v23;
LABEL_47:
      v12 = v22;
      goto LABEL_48;
    }

    v7 = *(v0 + 528);
    v8 = v3;
    sub_1D8A03568();
    if (v7)
    {
      v10 = *(v0 + 440);
      v9 = *(v0 + 448);

      v11 = v10;
      v12 = v9;
LABEL_48:
      sub_1D87A1598(v11, v12);

      v56 = *(v119 + 8);
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  v13 = *(v0 + 352);
  swift_beginAccess();
  sub_1D8A12388(v5 + v4, v13, type metadata accessor for E5Bundle);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v23 = *(v0 + 440);
    v22 = *(v0 + 448);
    v27 = *(v0 + 352);
LABEL_44:
    sub_1D8A123F0(v27, type metadata accessor for E5Bundle);
    sub_1D8A02EF0();
    swift_allocError();
    *v55 = xmmword_1D8B190D0;
    swift_willThrow();
LABEL_45:

    goto LABEL_46;
  }

  v14 = *(v0 + 528);
  v15 = sub_1D8A03064(0x6165665F74786574, 0xEA00000000007374, *(*(v0 + 352) + 8));
  if (v14)
  {
    v54 = *(v0 + 440);
    v53 = *(v0 + 448);

    v11 = v54;
    v12 = v53;
    goto LABEL_48;
  }

  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = (v15 + 32);
    v19 = 1;
    do
    {
      v20 = *v18++;
      v21 = v19 * v20;
      if ((v19 * v20) >> 64 != (v19 * v20) >> 63)
      {
        goto LABEL_64;
      }

      v19 = v21;
      --v17;
    }

    while (v17);
  }

  else
  {
    v21 = 1;
  }

  v28 = *(v0 + 448);
  v29 = v16;

  v30 = v28 >> 62;
  v31 = v29;
  IOSurfaceLock(v31, 0, 0);
  if (v30 <= 1)
  {
    if (!v30)
    {
      v32 = *(v0 + 448);
      *(v0 + 536) = *(v0 + 440);
      *(v0 + 544) = v32;
      *(v0 + 546) = BYTE2(v32);
      *(v0 + 547) = BYTE3(v32);
      *(v0 + 548) = BYTE4(v32);
      *(v0 + 549) = BYTE5(v32);
      if ((v21 & 0x8000000000000000) != 0)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      if (v21 >> 61)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v33 = v0 + 536;
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  if (v30 != 2)
  {
LABEL_34:
    v33 = v0 + 550;
    *(v0 + 556) = 0;
    *(v0 + 550) = 0;
    if ((v21 & 0x8000000000000000) != 0)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if (v21 >> 61)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    goto LABEL_36;
  }

  v34 = *(*(v0 + 440) + 16);
  v35 = sub_1D8B12D00();
  if (!v35)
  {
    sub_1D8B12D10();
LABEL_94:
    __break(1u);
LABEL_95:
    result = sub_1D8B12D10();
    goto LABEL_96;
  }

  v36 = v35;
  v37 = sub_1D8B12D20();
  if (__OFSUB__(v34, v37))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v33 = v34 - v37 + v36;
  sub_1D8B12D10();
  if (!v33)
  {
    goto LABEL_94;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  if (!(v21 >> 61))
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_27:
  if (*(v0 + 440) >> 32 < *(v0 + 440))
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v38 = sub_1D8B12D00();
  if (!v38)
  {
    goto LABEL_95;
  }

  v39 = v38;
  v40 = *(v0 + 440);
  v41 = sub_1D8B12D20();
  if (__OFSUB__(v40, v41))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v33 = v40 - v41 + v39;
  result = sub_1D8B12D10();
  if (!v33)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    return result;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_92;
  }

  if (v21 >> 61)
  {
    __break(1u);
    goto LABEL_34;
  }

LABEL_36:
  *(v0 + 160) = v33;
  *(v0 + 168) = 1;
  *(v0 + 176) = v21;
  *(v0 + 184) = 4 * v21;
  BaseAddress = IOSurfaceGetBaseAddress(v31);

  *(v0 + 192) = BaseAddress;
  *(v0 + 200) = 1;
  *(v0 + 208) = v21;
  *(v0 + 216) = 2 * v21;
  if (vImageConvert_PlanarFtoPlanar16F((v0 + 160), (v0 + 192), 0))
  {
    v45 = *(v0 + 440);
    v44 = *(v0 + 448);
    sub_1D8A1049C();
    swift_allocError();
    *v46 = 1;
    *(v46 + 8) = 1;
    swift_willThrow();
    IOSurfaceUnlock(v31, 0, 0);

LABEL_38:
    v11 = v45;
    v12 = v44;
    goto LABEL_48;
  }

  v47 = *(v0 + 464);
  v48 = *(v0 + 304);
  v49 = *(v48 + v47);
  *(v48 + v47) = v31;
  v8 = v31;

  IOSurfaceUnlock(v8, 0, 0);
LABEL_40:

  v50 = *(v0 + 504);
  v51 = *(v0 + 512);
  v52 = *(v0 + 344);
  swift_beginAccess();
  sub_1D8A12388(v50 + v51, v52, type metadata accessor for E5Bundle);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v23 = *(v0 + 440);
    v22 = *(v0 + 448);
    v27 = *(v0 + 344);
    goto LABEL_44;
  }

  sub_1D8A03224(2020565602, 0xE400000000000000, *(*(v0 + 344) + 8));
  v1 = v57;
  v59 = *(v0 + 504);
  v58 = *(v0 + 512);
  v60 = *(v0 + 336);

  sub_1D8A12388(v59 + v58, v60, type metadata accessor for E5Bundle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    v23 = *(v0 + 440);
    v22 = *(v0 + 448);
    sub_1D8A123F0(*(v0 + 336), type metadata accessor for E5Bundle);
    sub_1D8A02EF0();
    swift_allocError();
    *v62 = xmmword_1D8B190D0;
    swift_willThrow();

    goto LABEL_45;
  }

  v63 = sub_1D8A03224(0x65726F6373, 0xE500000000000000, *(*(v0 + 336) + 8));
  v2 = v64;
  sub_1D8A12388(*(v0 + 504) + *(v0 + 512), *(v0 + 328), type metadata accessor for E5Bundle);
  v65 = swift_getEnumCaseMultiPayload();
  if (v65 != 1)
  {
    v45 = *(v0 + 440);
    v44 = *(v0 + 448);
    v66 = *(v0 + 328);

    sub_1D8A123F0(v66, type metadata accessor for E5Bundle);
    sub_1D8A02EF0();
    swift_allocError();
    *v67 = xmmword_1D8B190D0;
    swift_willThrow();

    goto LABEL_38;
  }

  sub_1D8A03224(0x6E69646465626D65, 0xE900000000000067, *(*(v0 + 328) + 8));
  v116 = v68;

  v69 = *(v63 + 16);
  if (!v69)
  {
    goto LABEL_65;
  }

  v70 = (v63 + 32);
  v71 = 1;
  do
  {
    v72 = *v70++;
    v73 = (v71 * v72) >> 64;
    v71 *= v72;
    if (v73 != v71 >> 63)
    {
      __break(1u);
      goto LABEL_84;
    }

    --v69;
  }

  while (v69);
  if ((v71 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    v71 = 1;
  }

  result = malloc(4 * v71);
  if (!result)
  {
    goto LABEL_97;
  }

  v74 = result;
  v75 = *(v119 + 296);

  v76 = *(v75 + 72);
  if (v76 < 2)
  {
LABEL_72:
    v23 = *(v119 + 440);
    v22 = *(v119 + 448);
    sub_1D8A1049C();
    swift_allocError();
    *v85 = 2;
    *(v85 + 8) = 1;
    swift_willThrow();

    goto LABEL_45;
  }

  v77 = *(v119 + 296);
  v78 = v76;
  sub_1D87A0E38(v77, v119 + 16, &qword_1ECA64960);
  IOSurface = CVPixelBufferGetIOSurface(v78);
  if (!IOSurface)
  {
    v84 = *(v119 + 296);

    sub_1D87A14E4(v84, &qword_1ECA64960);
    goto LABEL_72;
  }

  v115 = v78;
  v80 = *(v119 + 504);
  v81 = *(v119 + 512);
  v82 = *(v119 + 320);
  v83 = IOSurface;
  sub_1D8A12388(v80 + v81, v82, type metadata accessor for E5Bundle);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v86 = *(v119 + 440);
    v22 = *(v119 + 448);
    v87 = *(v119 + 296);
    sub_1D8A123F0(*(v119 + 320), type metadata accessor for E5Bundle);
    sub_1D8A02EF0();
    swift_allocError();
    *v88 = xmmword_1D8B190D0;
    swift_willThrow();

    sub_1D87A14E4(v87, &qword_1ECA64960);

    v11 = v86;
    goto LABEL_47;
  }

  sub_1D8A03568();
  v89 = *(v119 + 472);
  v90 = *(v119 + 304);

  v91 = v90 + v89;
  os_unfair_lock_lock((v90 + v89));
  v92 = *(v90 + v89 + 8);
  v93 = v1;
  v118 = v2;
  v117 = v116;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v91 + 8) = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v113 = *(v119 + 304) + *(v119 + 472);
    v92 = sub_1D87C95FC(0, *(v92 + 2) + 1, 1, v92);
    *(v113 + 8) = v92;
  }

  v96 = *(v92 + 2);
  v95 = *(v92 + 3);
  if (v96 >= v95 >> 1)
  {
    v114 = *(v119 + 304) + *(v119 + 472);
    v92 = sub_1D87C95FC((v95 > 1), v96 + 1, 1, v92);
    *(v114 + 8) = v92;
  }

  v97 = *(v119 + 504);
  v98 = *(v119 + 472);
  v99 = *(v119 + 456);
  v101 = *(v119 + 296);
  v100 = *(v119 + 304);
  v102 = *(v119 + 496) + 1;
  *(v92 + 2) = v96 + 1;
  v103 = &v92[48 * v96];
  *(v103 + 4) = v93;
  *(v103 + 5) = v118;
  *(v103 + 6) = v117;
  *(v103 + 7) = v74;
  *(v103 + 8) = v71;
  *(v103 + 9) = v97;
  os_unfair_lock_unlock((v100 + v98));

  sub_1D87A14E4(v101, &qword_1ECA64960);

  if (v102 == v99)
  {
    v104 = *(v119 + 424);
    sub_1D87A1598(*(v119 + 440), *(v119 + 448));
    swift_setDeallocating();
    v106 = v104[5];
    v105 = v104[6];
    __swift_project_boxed_opaque_existential_1(v104 + 2, v106);
    (*(v105 + 8))(v106, v105);
    __swift_destroy_boxed_opaque_existential_1((v104 + 2));

    v56 = *(v119 + 8);
LABEL_49:

    return v56();
  }

  else
  {
    ++*(v119 + 496);
    v108 = *(v119 + 376);
    v107 = *(v119 + 384);
    v109 = *(v119 + 368);
    (*(v119 + 488))(v107, *(v119 + 432) + *(v119 + 480), v109);
    type metadata accessor for E5InferenceProvider(0);
    v110 = swift_allocObject();
    v111 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
    *(v119 + 504) = v110;
    *(v119 + 512) = v111;
    (*(v108 + 32))(v110 + v111, v107, v109);
    swift_storeEnumTagMultiPayload();
    v112 = swift_task_alloc();
    *(v119 + 520) = v112;
    *v112 = v119;
    v112[1] = sub_1D8A0A310;

    return sub_1D8A029C0();
  }
}

uint64_t sub_1D8A0B320()
{
  v1 = v0[55];
  v2 = v0[56];

  sub_1D87A1598(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D8A0B470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[29] = a8;
  v9[30] = v8;
  v9[27] = a6;
  v9[28] = a7;
  v9[25] = a3;
  v9[26] = a4;
  v9[24] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  v9[31] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v9[32] = v10;
  v9[33] = *(v10 - 8);
  v9[34] = swift_task_alloc();
  v9[35] = swift_task_alloc();
  v9[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A0B598, 0, 0);
}

uint64_t sub_1D8A0B598()
{
  v1 = v0[30];
  v2 = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_groundingStorage;
  v0[37] = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_groundingStorage;
  v3 = v1 + v2;
  os_unfair_lock_lock((v1 + v2));
  v4 = *(v3 + 8);
  if (v4[2])
  {
    v5 = v4[4];
    v0[38] = v5;
    v6 = v4[5];
    v0[39] = v6;
    v7 = v4[6];
    v0[40] = v7;
    v0[41] = v4[7];
    v0[42] = v4[8];
    v0[43] = v4[9];
    v8 = v5;
    v9 = v6;
    v10 = v7;

    sub_1D88645E0(0, 1);
    os_unfair_lock_unlock(v3);
    if (v8)
    {
      v0[44] = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_signposter;
      v11 = v8;
      v12 = v9;
      v13 = v10;

      LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("Grounding.inference", 19, 2u, 0, 0, v0 + 9);
      v14 = swift_task_alloc();
      v0[45] = v14;
      *v14 = v0;
      v14[1] = sub_1D8A0B7BC;

      return sub_1D8A03674();
    }
  }

  else
  {
    os_unfair_lock_unlock(v3);
  }

  sub_1D8A1049C();
  swift_allocError();
  *v16 = 0;
  *(v16 + 8) = 1;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D8A0B7BC()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_1D8A0C370;
  }

  else
  {
    v2 = sub_1D8A0B8D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

VisualIntelligenceCore::visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy sub_1D8A0B8D0()
{
  v132 = v0;
  v1 = v0;
  v2 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[39];
  v6 = v0[12];
  v7 = v0[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  (*(v7 + 8))(v6, v7);
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("Grounding.postprocessing", 24, 2u, 0, 0, v0 + 14);
  v8 = sub_1D8A0CB70(v5, v4, v3);
  if (v2)
  {
    v9 = v0[30] + v0[37];
    __swift_destroy_boxed_opaque_existential_1((v0 + 14));
    __swift_destroy_boxed_opaque_existential_1((v0 + 9));
    os_unfair_lock_lock(v9);
    v14 = *(v9 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 8) = v14;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

  v10 = v8;
  v11 = v0[38];
  LOBYTE(v129[0]) = *(v1[30] + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_configuration + 24);
  v1[22] = sub_1D8A10548();
  v1[23] = &off_1F5433018;
  v1[19] = v11;
  v12 = v11;
  v13 = sub_1D8A1065C(v129, v1 + 19, v10);
  v33 = v1[40];
  v34 = v13;

  __swift_destroy_boxed_opaque_existential_1((v1 + 19));
  v35 = sub_1D8A11088(v34, v33);

  v36 = v35[2];
  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v115 = v1[33];
    v129[0] = MEMORY[0x1E69E7CC0];
    v14 = v129;
    sub_1D87F49CC(0, v36, 0);
    v38 = 0;
    v39 = v129[0];
    v40 = v35 + 11;
    v117 = v36;
    v120 = v35;
    while (v38 < v35[2])
    {
      v126 = v1[41];
      v14 = v39;
      v41 = v1[36];
      v42 = v1[29];
      v43 = v1[30];
      v44 = v1[27];
      v123 = v1[28];
      v45 = v1[25];
      v46 = *(v40 - 4);
      v47 = *(v40 - 1);
      v48 = *v40;
      v49 = *(v40 - 3);
      v50 = *(v40 - 2);
      v1[2] = *(v40 - 7);
      *(v1 + 3) = v49;
      *(v1 + 5) = v50;
      *(v1 + 14) = v46;
      v1[8] = v47;

      v51 = v41;
      v39 = v14;
      sub_1D8A0C540(v1 + 2, v48, v44, v45, v43, v126, v123, v51, v42);

      v129[0] = v14;
      v53 = *(v14 + 2);
      v52 = *(v14 + 3);
      if (v53 >= v52 >> 1)
      {
        v14 = v129;
        sub_1D87F49CC(v52 > 1, v53 + 1, 1);
        v39 = v129[0];
      }

      v54 = v1[36];
      ++v38;
      *(v39 + 16) = v53 + 1;
      sub_1D881F6FC(v54, v39 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v53, &qword_1ECA67750);
      v40 += 8;
      v35 = v120;
      if (v117 == v38)
      {

        v37 = MEMORY[0x1E69E7CC0];
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v55 = sub_1D8A111E8(v39);
  v56 = *(v55 + 16);
  v127 = v39;
  v128 = v1;
  if (v56)
  {
    v57 = v1[33];
    v129[0] = v37;
    sub_1D87F43E0(0, v56, 0);
    v58 = v129[0];
    v59 = v55 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v60 = *(v57 + 72);
    do
    {
      v61 = v1[35];
      sub_1D87A0E38(v59, v61, &qword_1ECA67750);
      v62 = swift_allocBox();
      sub_1D881F6FC(v61, v63, &qword_1ECA67750);
      v129[0] = v58;
      v65 = *(v58 + 16);
      v64 = *(v58 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_1D87F43E0((v64 > 1), v65 + 1, 1);
        v58 = v129[0];
      }

      *(v58 + 16) = v65 + 1;
      *(v58 + 8 * v65 + 32) = v62;
      v59 += v60;
      --v56;
      v1 = v128;
    }

    while (v56);
    v116 = v58;

    v39 = v127;
  }

  else
  {

    v116 = MEMORY[0x1E69E7CC0];
  }

  v67 = v1[28];
  v66 = v1[29];
  v68 = v1[17];
  v69 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v68);
  (*(v69 + 8))(v68, v69);
  (*(v66 + 40))(v129, v67, v66);
  v70 = v130;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if ((sub_1D8B0AAA4() & 1) == 0)
  {
    if ((v70 & 1) == 0 || (v89 = type metadata accessor for InternalSettings(), v90 = sub_1D8B15940(), LOBYTE(v89) = [v89 BOOLForKey:v90 defaultValue:0], v90, (v89 & 1) == 0))
    {
LABEL_42:

      v91 = v1[26];
      v92 = v1[24];
      v93 = v1[30] + v1[37];
      v94 = type metadata accessor for CVProcessorTaskDescriptor(0);
      sub_1D8A12388(v91 + *(v94 + 20), v92, type metadata accessor for DetectionRequest);
      *(v92 + *(type metadata accessor for DetectionResult(0) + 20)) = v116;
      __swift_destroy_boxed_opaque_existential_1((v1 + 14));
      __swift_destroy_boxed_opaque_existential_1((v1 + 9));
      os_unfair_lock_lock(v93);
      v95 = *(v93 + 8);
      v96 = swift_isUniquelyReferenced_nonNull_native();
      *(v93 + 8) = v95;
      if ((v96 & 1) == 0)
      {
        v112 = v1[30] + v1[37];
        v95 = sub_1D87C95FC(0, *(v95 + 2) + 1, 1, v95);
        *(v112 + 8) = v95;
      }

      v98 = *(v95 + 2);
      v97 = *(v95 + 3);
      v99 = v98 + 1;
      if (v98 >= v97 >> 1)
      {
        v113 = v1[30] + v1[37];
        v114 = sub_1D87C95FC((v97 > 1), v98 + 1, 1, v95);
        v99 = v98 + 1;
        v95 = v114;
        *(v113 + 8) = v114;
      }

      v101 = v1[42];
      v100 = v1[43];
      v103 = v1[40];
      v102 = v1[41];
      v104 = v1;
      v105 = v1[39];
      v106 = v104[38];
      v119 = v104[37];
      v107 = v104[30];
      *(v95 + 2) = v99;
      v108 = &v95[48 * v98];
      *(v108 + 4) = v106;
      *(v108 + 5) = v105;
      *(v108 + 6) = v103;
      *(v108 + 7) = v102;
      *(v108 + 8) = v101;
      *(v108 + 9) = v100;
      sub_1D8A121E0(v106, v105, v103);
      os_unfair_lock_unlock((v107 + v119));

      sub_1D8A104F0(v106, v105, v103);

      v31 = v104[1];
      goto LABEL_8;
    }
  }

  v71 = *(v39 + 16);
  v72 = MEMORY[0x1E69E7CC0];
  if (!v71)
  {
LABEL_39:
    v83 = v1[31];
    v84 = sub_1D87C4264(v72);

    v129[0] = MEMORY[0x1E69E7CC8];
    sub_1D8A05E6C(v84, v129);

    LOBYTE(v85) = sub_1D8A0568C(v39, v129);
    v86 = v85;

    v87 = sub_1D8B15EA0();
    (*(*(v87 - 8) + 56))(v83, 1, 1, v87);
    v88 = swift_allocObject();
    v88[2] = 0;
    v88[3] = 0;
    v88[4] = v86;
    sub_1D8891CA0(0, 0, v83, &unk_1D8B32E70, v88);

    goto LABEL_42;
  }

  v73 = v1[33];
  v121 = v1[32];
  v129[0] = MEMORY[0x1E69E7CC0];
  v14 = v129;
  sub_1D87F3F54(0, v71, 0);
  v74 = 0;
  v72 = v129[0];
  v124 = v73;
  v118 = v39 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
  v75 = v71;
  while (v74 < *(v39 + 16))
  {
    v14 = v1[34];
    sub_1D87A0E38(v118 + *(v124 + 72) * v74, v14, &qword_1ECA67750);
    v76 = *&v14[*(v121 + 44)];
    if (*(v76 + 16))
    {
      result = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v76 + 32)).value;
      if (v131 == 181)
      {
        __break(1u);
        return result;
      }

      v14 = &v131;
      v77 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
      v79 = v78;
    }

    else
    {
      v79 = 0xE700000000000000;
      v77 = 0x6E776F6E6B6E75;
    }

    sub_1D87A14E4(v1[34], &qword_1ECA67750);
    v129[0] = v72;
    v81 = *(v72 + 16);
    v80 = *(v72 + 24);
    if (v81 >= v80 >> 1)
    {
      v14 = v129;
      sub_1D87F3F54((v80 > 1), v81 + 1, 1);
      v72 = v129[0];
    }

    ++v74;
    *(v72 + 16) = v81 + 1;
    v82 = v72 + 16 * v81;
    *(v82 + 32) = v77;
    *(v82 + 40) = v79;
    v39 = v127;
    v1 = v128;
    if (v75 == v74)
    {
      goto LABEL_39;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v109 = v1[30] + v1[37];
  v14 = sub_1D87C95FC(0, *(v14 + 2) + 1, 1, v14);
  *(v109 + 8) = v14;
LABEL_5:
  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    v110 = v1[30] + v1[37];
    v111 = sub_1D87C95FC((v16 > 1), v17 + 1, 1, v14);
    v18 = v17 + 1;
    v14 = v111;
    *(v110 + 8) = v111;
  }

  v20 = v1[42];
  v19 = v1[43];
  v22 = v1[40];
  v21 = v1[41];
  v23 = v1;
  v26 = v1 + 38;
  v25 = v1[38];
  v24 = v26[1];
  v122 = v23[37];
  v27 = v23[30];
  *(v14 + 2) = v18;
  v28 = &v14[48 * v17];
  *(v28 + 4) = v25;
  *(v28 + 5) = v24;
  *(v28 + 6) = v22;
  *(v28 + 7) = v21;
  *(v28 + 8) = v20;
  *(v28 + 9) = v19;
  v125 = v25;
  v29 = v24;
  v30 = v22;

  os_unfair_lock_unlock((v27 + v122));

  sub_1D8A104F0(v25, v24, v22);

  v31 = v23[1];
LABEL_8:

  return v31();
}

uint64_t sub_1D8A0C370()
{
  v1 = v0[30] + v0[37];
  __swift_destroy_boxed_opaque_existential_1((v0 + 9));
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 8) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = v0[30] + v0[37];
    v2 = sub_1D87C95FC(0, *(v2 + 2) + 1, 1, v2);
    *(v18 + 8) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v19 = v0[30] + v0[37];
    v2 = sub_1D87C95FC((v4 > 1), v5 + 1, 1, v2);
    *(v19 + 8) = v2;
  }

  v6 = v0[43];
  v8 = v0[40];
  v7 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  v20 = v0[37];
  v21 = v0[42];
  v11 = v0[30];
  *(v2 + 2) = v5 + 1;
  v12 = &v2[48 * v5];
  *(v12 + 4) = v10;
  *(v12 + 5) = v9;
  *(v12 + 6) = v8;
  *(v12 + 7) = v7;
  *(v12 + 8) = v21;
  *(v12 + 9) = v6;
  v13 = v10;
  v14 = v9;
  v15 = v8;

  os_unfair_lock_unlock((v11 + v20));

  sub_1D8A104F0(v10, v9, v8);

  v16 = v0[1];

  return v16();
}

int *sub_1D8A0C540@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v48 = a2;
  v52 = *MEMORY[0x1E69E9840];
  v45 = sub_1D8B13240();
  v16 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B13230();
  type metadata accessor for CVCoordinator(0);
  v19 = a1[1];
  v20 = a1[2];
  v21 = a1[3];
  v22 = a1[4];
  v46 = a4;
  v47 = a7;
  v44 = a9;
  sub_1D8A30194(a3, a9, v51, v19, v20, v21, v22);
  if (!a6)
  {
LABEL_17:
    __break(1u);
  }

  v23 = *(a5 + OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_taxonomySize);
  v24 = *a1 * v23;
  if ((*a1 * v23) >> 64 != v24 >> 63)
  {
    goto LABEL_15;
  }

  __C = 0.0;
  __I = 0;
  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = (a6 + 4 * v24);
  v26 = MEMORY[0x1E69E7CC0];
  do
  {
    vDSP_maxvi(v25, 1, &__C, &__I, v23);
    v27 = __C;
    if (__C < 0.1)
    {
      break;
    }

    v28 = __I;
    if ((__I & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1D87C9A80(0, *(v26 + 2) + 1, 1, v26);
    }

    v30 = *(v26 + 2);
    v29 = *(v26 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v26 = sub_1D87C9A80((v29 > 1), v30 + 1, 1, v26);
    }

    *(v26 + 2) = v31;
    v32 = &v26[16 * v30];
    *(v32 + 4) = v28;
    *(v32 + 10) = v27;
    v25[v28] = 0.0;
  }

  while (v30 <= 3 && v31 < v23);
  v33 = *(a1 + 10);
  v34 = v48;

  v35 = v47;
  v36 = v44;
  CameraSourceFrame.rotationAngle.getter(v44, &__I);
  v37 = __I;
  v38 = CameraSourceFrame.timestamp.getter(v35, v36);
  (*(v16 + 32))(a8, v18, v45);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  *(a8 + result[9]) = v33;
  v40 = (a8 + result[10]);
  v41 = v51[1];
  *v40 = v51[0];
  v40[1] = v41;
  v42 = v51[3];
  v40[2] = v51[2];
  v40[3] = v42;
  *(a8 + result[11]) = v26;
  *(a8 + result[12]) = v34;
  *(a8 + result[13]) = v37;
  *(a8 + result[14]) = v38;
  *(a8 + result[15]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1D8A0C880()
{
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  *(v0 + 216) = v2;
  if (v2)
  {
    *(v0 + 224) = 0;
    v3 = *(v1 + 48);
    *(v0 + 16) = *(v1 + 32);
    *(v0 + 32) = v3;
    v4 = *(v1 + 64);
    v5 = *(v1 + 80);
    v6 = *(v1 + 96);
    *(v0 + 89) = *(v1 + 105);
    *(v0 + 64) = v5;
    *(v0 + 80) = v6;
    *(v0 + 48) = v4;
    sub_1D88E0F34(v0 + 16, v0 + 112);
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v7 = qword_1ECA675B0;
    *(v0 + 232) = qword_1ECA675B0;
    v8 = *(v0 + 64);
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v8;
    *(v0 + 176) = *(v0 + 80);
    *(v0 + 185) = *(v0 + 89);
    v9 = *(v0 + 32);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v9;

    return MEMORY[0x1EEE6DFA0](sub_1D8A0C9A8, v7, 0);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1D8A0C9A8()
{
  sub_1D8A3B420((v0 + 112), 0x6E69646E756F7267, 0xE900000000000067);

  return MEMORY[0x1EEE6DFA0](sub_1D8A0CA2C, 0, 0);
}

uint64_t sub_1D8A0CA2C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224) + 1;
  sub_1D88E0F90(v0 + 16);
  if (v2 == v1)
  {
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 224);
    *(v0 + 224) = v5 + 1;
    v6 = (*(v0 + 208) + 96 * v5);
    v7 = v6[9];
    *(v0 + 16) = v6[8];
    *(v0 + 32) = v7;
    v9 = v6[11];
    v8 = v6[12];
    v10 = v6[10];
    *(v0 + 89) = *(v6 + 201);
    *(v0 + 64) = v9;
    *(v0 + 80) = v8;
    *(v0 + 48) = v10;
    sub_1D88E0F34(v0 + 16, v0 + 112);
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v11 = qword_1ECA675B0;
    *(v0 + 232) = qword_1ECA675B0;
    v12 = *(v0 + 64);
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v12;
    *(v0 + 176) = *(v0 + 80);
    *(v0 + 185) = *(v0 + 89);
    v13 = *(v0 + 32);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v13;

    return MEMORY[0x1EEE6DFA0](sub_1D8A0C9A8, v11, 0);
  }
}

uint64_t sub_1D8A0CB70(__IOSurface *a1, void *a2, vImagePixelCount a3)
{
  v31 = *MEMORY[0x1E69E9840];
  IOSurfaceLock(a1, 1u, 0);
  BaseAddress = IOSurfaceGetBaseAddress(a1);
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  src.data = BaseAddress;
  src.height = 1;
  src.width = a3;
  src.rowBytes = [(__IOSurface *)a1 bytesPerRow];
  v8 = [(__IOSurface *)a1 bytesPerRow];
  if (v8 + 0x4000000000000000 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  dest.data = a2;
  dest.height = 1;
  dest.width = a3;
  dest.rowBytes = 2 * v8;
  v9 = vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
  if (!v9)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v14 = OBJC_IVAR____TtC22VisualIntelligenceCore18GroundingProcessor_taxonomySize;
    while (1)
    {
      v15 = v12;
      while (1)
      {
        v16 = *(v3 + v14);
        if ((v15 * v16) >> 64 != (v15 * v16) >> 63)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        if (!a2)
        {
          goto LABEL_26;
        }

        __C = 0.0;
        __I = 0;
        if (v16 < 0)
        {
          goto LABEL_22;
        }

        vDSP_maxvi(a2 + v15 * v16, 1, &__C, &__I, v16);
        v17 = __C;
        if (__C > 0.1)
        {
          break;
        }

        if (++v15 == 8400)
        {
          goto LABEL_19;
        }
      }

      v18 = __I;
      if ((__I & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1D87C971C(0, *(v13 + 2) + 1, 1, v13);
      }

      v19 = v13;
      v20 = *(v13 + 2);
      v21 = v19;
      v22 = *(v19 + 3);
      v23 = v20 + 1;
      if (v20 >= v22 >> 1)
      {
        v25 = sub_1D87C971C((v22 > 1), v20 + 1, 1, v21);
        v23 = v20 + 1;
        v21 = v25;
      }

      *(v21 + 2) = v23;
      v24 = &v21[24 * v20];
      v13 = v21;
      *(v24 + 4) = v15;
      *(v24 + 10) = v17;
      *(v24 + 6) = v18;
      v12 = v15 + 1;
      if (v15 >= 8399)
      {
LABEL_19:
        v3 = sub_1D87BA178(v13);

        IOSurfaceUnlock(a1, 1u, 0);
        return v3;
      }
    }
  }

  v10 = v9;
  sub_1D8A1049C();
  swift_allocError();
  *v11 = v10;
  *(v11 + 8) = 0;
  swift_willThrow();
  IOSurfaceUnlock(a1, 1u, 0);
  return v3;
}

uint64_t sub_1D8A0CE20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D89394A0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 40);
    v12 = *(v9 + 48);
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = *(v9 + 24);
    *(a2 + 40) = v11;
    *(a2 + 48) = v12;
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D8A0CED4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D89394B4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = *(v9 + 24);
    *(a2 + 40) = *(v9 + 40);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

_BYTE *sub_1D8A0CF88@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (*result)
  {
    v3 = 0uLL;
    v4 = 2;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    strcpy(v8, "ARGB");
    v9 = vdupq_n_s64(0x280uLL);
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v13 = 0;
    v14 = 1;
    v15 = 0;
    GenericRGB = CGColorCreateGenericRGB(0.447058824, 0.447058824, 0.447058824, 1.0);
    result = sub_1D88C5438(v8, v17);
    v3 = v17[0];
    v5 = v17[1];
    v6 = v17[2];
    v7 = v17[3];
    v4 = v18;
  }

  *a2 = v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v4;
  return result;
}

uint64_t sub_1D8A0D050(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D886553C;

  return sub_1D8A09BAC(a1);
}

uint64_t sub_1D8A0D0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D8864FBC;

  return sub_1D8A0B470(a1, v15, a3, a4, v16, a6, a7, a8);
}

unint64_t sub_1D8A0D1C8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 0uLL;
  if ((result & 0x8000000000000000) != 0 || *(*v2 + 16) <= result)
  {
    v4 = 1;
    v6 = 0uLL;
  }

  else
  {
    v4 = 0;
    v5 = *v2 + 32 * result;
    v3 = *(v5 + 32);
    v6 = *(v5 + 48);
  }

  *a2 = v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

int64_t sub_1D8A0D204@<X0>(int64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = 0uLL;
  if (result < 0)
  {
    v30 = 1;
    v29 = 0uLL;
    goto LABEL_16;
  }

  v5 = result;
  result = IOSurfaceGetAllocSize(v2);
  if (v5 >= result / 8)
  {
    v30 = 1;
    v29 = 0uLL;
    v4 = 0uLL;
    goto LABEL_16;
  }

  v6 = (IOSurfaceGetBaseAddress(v2) + 8 * v5);
  v34 = MEMORY[0x1E69E7CC0];
  sub_1D87F4140(0, 4, 0);
  v7 = v34;
  _H8 = *v6;
  v10 = *(v34 + 16);
  v9 = *(v34 + 24);
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    sub_1D87F4140((v9 > 1), v10 + 1, 1);
    v7 = v34;
    v9 = *(v34 + 24);
    v11 = v9 >> 1;
  }

  __asm { FCVT            D0, H8 }

  *(v7 + 16) = v12;
  *(v7 + 8 * v10 + 32) = _D0;
  _H8 = v6[1];
  v19 = v10 + 2;
  if (v11 <= v12)
  {
    sub_1D87F4140((v9 > 1), v19, 1);
    v7 = v34;
  }

  __asm { FCVT            D0, H8 }

  *(v7 + 16) = v19;
  *(v7 + 8 * v12 + 32) = _D0;
  _H8 = v6[2];
  v23 = *(v7 + 16);
  v22 = *(v7 + 24);
  v24 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    sub_1D87F4140((v22 > 1), v23 + 1, 1);
  }

  __asm { FCVT            D0, H8 }

  result = v34;
  *(v34 + 16) = v24;
  *(v34 + 8 * v23 + 32) = _D0;
  _H8 = v6[3];
  v27 = *(v34 + 24);
  if (v24 >= v27 >> 1)
  {
    sub_1D87F4140((v27 > 1), v23 + 2, 1);
    result = v34;
  }

  __asm { FCVT            D0, H8 }

  *(result + 16) = v23 + 2;
  *(result + 8 * v24 + 32) = _D0;
  if (v23)
  {
    if (v23 != 1)
    {
      v32 = *(result + 48);
      v33 = *(result + 32);

      v29 = v32;
      v30 = 0;
      __asm { FMOV            V0.2D, #-0.5 }

      v4 = vaddq_f64(v33, vmulq_f64(v32, _Q0));
LABEL_16:
      *a2 = v4;
      *(a2 + 16) = v29;
      *(a2 + 32) = v30;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1D8A0D40C@<D0>(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8A0D204(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

void (*sub_1D8A0D454(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1D8B13240();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1D8A0E030(v4, v9);
  return sub_1D8A0D56C;
}

void sub_1D8A0D56C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_1D8A0D5E4()
{
  v0 = sub_1D893EC3C(&unk_1F5428850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E60);
  result = swift_arrayDestroy();
  off_1ECA671D8 = v0;
  return result;
}

uint64_t sub_1D8A0D640(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D885D3F8(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1D8B16B30();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 72;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[56 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 8) >= v11)
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 4);
          v16 = *(v13 + 40);
          v17 = *(v13 + 56);
          v18 = *(v13 - 24);
          *(v13 + 1) = *(v13 - 40);
          *(v13 + 2) = v18;
          *(v13 + 3) = *(v13 - 8);
          *(v13 + 8) = *(v13 + 1);
          *(v13 - 5) = v14;
          *(v13 - 8) = v11;
          *(v13 - 3) = v15;
          *(v13 - 1) = v16;
          *v13 = v17;
          v13 -= 56;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 56;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA673F0);
      v7 = sub_1D8B15D60();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1D8A0D7C8(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D8A0D7C8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v101 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v102 = *v101;
    if (!*v101)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D885CC68(v7);
      v7 = result;
    }

    v93 = (v7 + 16);
    v94 = *(v7 + 16);
    if (v94 >= 2)
    {
      while (*a3)
      {
        v95 = (v7 + 16 * v94);
        v96 = *v95;
        v97 = &v93[2 * v94];
        v98 = v97[1];
        sub_1D8A0DDCC((*a3 + 56 * *v95), (*a3 + 56 * *v97), *a3 + 56 * v98, v102);
        if (v4)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_114;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_115;
        }

        *v95 = v96;
        v95[1] = v98;
        v99 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_116;
        }

        v94 = *v93 - 1;
        result = memmove(v97, v97 + 2, 16 * v99);
        *v93 = v94;
        if (v94 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v100 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 56 * v6 + 8);
      v10 = *a3 + 56 * v8;
      v11 = *(v10 + 8);
      v12 = v8 + 2;
      v13 = (v10 + 120);
      v14 = v9;
      while (v5 != v12)
      {
        v15 = *v13;
        v13 += 14;
        v16 = v14 >= v15;
        ++v12;
        v14 = v15;
        if ((((v11 < v9) ^ v16) & 1) == 0)
        {
          v6 = v12 - 1;
          if (v11 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v11 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 56 * v6 - 16;
        v18 = 56 * v8 + 40;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v31 + v18);
            v22 = *(v31 + v18 - 40);
            v23 = v31 + v17;
            v24 = *(v21 - 8);
            v25 = *(v21 - 3);
            v26 = *(v21 - 1);
            v27 = *v21;
            v28 = *(v23 - 24);
            v29 = *(v23 - 8);
            v30 = *(v23 + 8);
            *(v21 - 40) = *(v23 - 40);
            *(v21 + 1) = v30;
            *(v21 - 8) = v29;
            *(v21 - 24) = v28;
            *(v23 - 40) = v22;
            *(v23 - 32) = v24;
            *(v23 - 24) = v25;
            *(v23 - 16) = v26;
            *v23 = v27;
          }

          ++v20;
          v17 -= 56;
          v18 += 56;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D87C7C5C(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v46 = *(v7 + 16);
    v45 = *(v7 + 24);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_1D87C7C5C((v45 > 1), v46 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v47;
    v48 = v7 + 32;
    v49 = (v7 + 32 + 16 * v46);
    *v49 = v8;
    v49[1] = v6;
    v102 = *v101;
    if (!*v101)
    {
      goto LABEL_127;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v7 + 32);
          v52 = *(v7 + 40);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_57:
          if (v54)
          {
            goto LABEL_104;
          }

          v67 = (v7 + 16 * v47);
          v69 = *v67;
          v68 = v67[1];
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_106;
          }

          v73 = (v48 + 16 * v50);
          v75 = *v73;
          v74 = v73[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_111;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v47 < 2)
        {
          goto LABEL_112;
        }

        v77 = (v7 + 16 * v47);
        v79 = *v77;
        v78 = v77[1];
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_72:
        if (v72)
        {
          goto LABEL_108;
        }

        v80 = (v48 + 16 * v50);
        v82 = *v80;
        v81 = v80[1];
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_110;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = (v48 + 16 * (v50 - 1));
        v89 = *v88;
        v90 = (v48 + 16 * v50);
        v91 = v90[1];
        sub_1D8A0DDCC((*a3 + 56 * *v88), (*a3 + 56 * *v90), *a3 + 56 * v91, v102);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_99;
        }

        if (v50 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = *(v7 + 16);
        if (v50 >= v92)
        {
          goto LABEL_101;
        }

        v47 = v92 - 1;
        result = memmove((v48 + 16 * v50), v90 + 2, 16 * (v92 - 1 - v50));
        *(v7 + 16) = v92 - 1;
        if (v92 <= 2)
        {
          goto LABEL_3;
        }
      }

      v55 = v48 + 16 * v47;
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_102;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_103;
      }

      v62 = (v7 + 16 * v47);
      v64 = *v62;
      v63 = v62[1];
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_105;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_107;
      }

      if (v66 >= v58)
      {
        v84 = (v48 + 16 * v50);
        v86 = *v84;
        v85 = v84[1];
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v100;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 56 * v6 - 56;
  v34 = v8 - v6;
LABEL_30:
  v35 = *(v32 + 56 * v6 + 8);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (*(v37 + 8) >= v35)
    {
LABEL_29:
      ++v6;
      v33 += 56;
      --v34;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v38 = *(v37 + 72);
    v39 = *(v37 + 16);
    v41 = *(v37 + 48);
    v40 = *(v37 + 56);
    *(v37 + 56) = *v37;
    v42 = *(v37 + 80);
    v43 = *(v37 + 96);
    *(v37 + 72) = v39;
    *(v37 + 88) = *(v37 + 32);
    *(v37 + 104) = v41;
    *v37 = v40;
    *(v37 + 8) = v35;
    *(v37 + 16) = v38;
    *(v37 + 24) = v42;
    *(v37 + 40) = v43;
    v37 -= 56;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1D8A0DDCC(float *__dst, float *__src, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[14 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[14 * v9];
    if (v8 < 56)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 14;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 14;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 14;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v17 = *(v13 + 2);
    *(v7 + 6) = *(v13 + 6);
    *(v7 + 1) = v16;
    *(v7 + 2) = v17;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[14 * v11] <= a4)
  {
    memmove(a4, __src, 56 * v11);
  }

  v12 = &v4[14 * v11];
  if (v10 >= 56 && v6 > v7)
  {
LABEL_20:
    v5 -= 56;
    do
    {
      v18 = (v5 + 56);
      if (*(v6 - 12) < *(v12 - 12))
      {
        v23 = v6 - 14;
        if (v18 != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 10);
          v26 = *(v6 - 6);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v25;
          *(v5 + 32) = v26;
          *v5 = v24;
        }

        if (v12 <= v4 || (v6 -= 14, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v19 = v12 - 14;
      if (v18 != v12)
      {
        v20 = *v19;
        v21 = *(v12 - 10);
        v22 = *(v12 - 6);
        *(v5 + 48) = *(v12 - 1);
        *(v5 + 16) = v21;
        *(v5 + 32) = v22;
        *v5 = v20;
      }

      v5 -= 56;
      v12 -= 14;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_31:
  v27 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v28 = (v27 >> 4) + (v27 >> 63);
  if (v6 != v4 || v6 >= &v4[14 * v28])
  {
    memmove(v6, v4, 56 * v28);
  }

  return 1;
}

void (*sub_1D8A0E030(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_1D8B13240();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_1D8A0E4B4(v6);
  v6[12] = sub_1D8A0E204(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_1D8A0E16C;
}

void sub_1D8A0E16C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1D8A0E204(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_1D8B13240();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_1D87EF764(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1D896B610();
      v15 = v23;
      goto LABEL_14;
    }

    sub_1D8975470(v20, a3 & 1);
    v15 = sub_1D87EF764(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_1D8A0E3B4;
}

void sub_1D8A0E3B4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(*(v3 + 56) + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_1D8979B38(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_1D8AF2DB0(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

uint64_t (*sub_1D8A0E4B4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1D8A0E4DC;
}

uint64_t sub_1D8A0E4E8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D8B16BA0() & 1;
  }
}

uint64_t sub_1D8A0E540(uint64_t a1, uint64_t *a2)
{
  v37 = a2;
  v3 = sub_1D8B13240();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750) - 8;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v30 - v11;
  v36 = *(a1 + 16);
  if (v36)
  {
    v13 = 0;
    v34 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v35 = a1 + v34;
    v41 = v4 + 16;
    v14 = *(v10 + 72);
    v31 = v4;
    v32 = v14;
    v39 = MEMORY[0x1E69E7CC0];
    v40 = (v4 + 8);
    v33 = v9;
    v43 = &v30 - v11;
    while (1)
    {
      sub_1D87A0E38(v35 + v14 * v13, v12, &qword_1ECA67750);
      v15 = *v37;
      if (*(*v37 + 16))
      {
        v38 = v13;
        sub_1D8A12344(&qword_1EE0E98A0);

        v16 = sub_1D8B15790();
        v17 = -1 << *(v15 + 32);
        v18 = v16 & ~v17;
        if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          v20 = *(v31 + 72);
          v21 = *(v31 + 16);
          while (1)
          {
            v22 = v42;
            v21(v42, *(v15 + 48) + v20 * v18, v3);
            sub_1D8A12344(&qword_1EE0E9898);
            v23 = sub_1D8B158C0();
            (*v40)(v22, v3);
            if (v23)
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          v12 = v43;
          sub_1D87A14E4(v43, &qword_1ECA67750);
          v14 = v32;
          v9 = v33;
          v13 = v38;
          goto LABEL_4;
        }

LABEL_10:

        v14 = v32;
        v9 = v33;
        v12 = v43;
        v13 = v38;
      }

      sub_1D881F6FC(v12, v9, &qword_1ECA67750);
      v24 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v24;
      v44 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F49CC(0, *(v24 + 16) + 1, 1);
        v26 = v44;
      }

      v28 = *(v26 + 16);
      v27 = *(v26 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1D87F49CC(v27 > 1, v28 + 1, 1);
        v26 = v44;
      }

      *(v26 + 16) = v28 + 1;
      v39 = v26;
      sub_1D881F6FC(v9, v26 + v34 + v28 * v14, &qword_1ECA67750);
LABEL_4:
      if (++v13 == v36)
      {
        return v39;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D8A0E998()
{
  v3 = *(v0 + 32);
  v1 = type metadata accessor for GroundingResult();
  return GroundingResult.modifyWithRotation(_:)(&v3, v1);
}

unint64_t sub_1D8A0EA2C()
{
  result = qword_1ECA671F8;
  if (!qword_1ECA671F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA671F8);
  }

  return result;
}

uint64_t sub_1D8A0EA80(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA671E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8A0EAF8()
{
  result = qword_1ECA67218;
  if (!qword_1ECA67218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67218);
  }

  return result;
}

uint64_t sub_1D8A0EB4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA67200);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8A0EBB8()
{
  result = qword_1ECA67250;
  if (!qword_1ECA67250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67250);
  }

  return result;
}

unint64_t sub_1D8A0EC0C()
{
  result = qword_1ECA67258;
  if (!qword_1ECA67258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67258);
  }

  return result;
}

unint64_t sub_1D8A0EC60()
{
  result = qword_1ECA67260;
  if (!qword_1ECA67260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67260);
  }

  return result;
}

unint64_t sub_1D8A0ECB4()
{
  result = qword_1ECA67268;
  if (!qword_1ECA67268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67268);
  }

  return result;
}

unint64_t sub_1D8A0ED08()
{
  result = qword_1ECA67270;
  if (!qword_1ECA67270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67270);
  }

  return result;
}

uint64_t sub_1D8A0ED5C(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

unint64_t sub_1D8A0EE50()
{
  result = qword_1ECA672B8;
  if (!qword_1ECA672B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA672B8);
  }

  return result;
}

void sub_1D8A0EED4()
{
  sub_1D8B13240();
  if (v0 <= 0x3F)
  {
    sub_1D8A0F02C(319, &unk_1EE0E3998, &type metadata for LabelConfidencePair, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D8A0F02C(319, &qword_1EE0E3680, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6BE8]);
      if (v2 <= 0x3F)
      {
        sub_1D8B15DB0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D8A0F02C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for GroundingProcessor()
{
  result = qword_1EE0E61B0;
  if (!qword_1EE0E61B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8A0F0D0()
{
  result = type metadata accessor for LoggingSignposter(319);
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

uint64_t sub_1D8A0F1E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D8A0F230(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LabelConfidencePair(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LabelConfidencePair(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

unint64_t sub_1D8A0F350()
{
  result = qword_1ECA67358;
  if (!qword_1ECA67358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67358);
  }

  return result;
}

unint64_t sub_1D8A0F3C4()
{
  result = qword_1ECA67360;
  if (!qword_1ECA67360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67360);
  }

  return result;
}

unint64_t sub_1D8A0F41C()
{
  result = qword_1ECA67368;
  if (!qword_1ECA67368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67368);
  }

  return result;
}

unint64_t sub_1D8A0F474()
{
  result = qword_1ECA67370;
  if (!qword_1ECA67370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67370);
  }

  return result;
}

unint64_t sub_1D8A0F4CC()
{
  result = qword_1ECA67378;
  if (!qword_1ECA67378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67378);
  }

  return result;
}

unint64_t sub_1D8A0F524()
{
  result = qword_1ECA67380;
  if (!qword_1ECA67380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67380);
  }

  return result;
}

unint64_t sub_1D8A0F57C()
{
  result = qword_1ECA67388;
  if (!qword_1ECA67388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67388);
  }

  return result;
}

unint64_t sub_1D8A0F5D4()
{
  result = qword_1ECA67390;
  if (!qword_1ECA67390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67390);
  }

  return result;
}

unint64_t sub_1D8A0F62C()
{
  result = qword_1ECA67398;
  if (!qword_1ECA67398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67398);
  }

  return result;
}

unint64_t sub_1D8A0F684()
{
  result = qword_1ECA673A0;
  if (!qword_1ECA673A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA673A0);
  }

  return result;
}

unint64_t sub_1D8A0F6DC()
{
  result = qword_1ECA673A8;
  if (!qword_1ECA673A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA673A8);
  }

  return result;
}

unint64_t sub_1D8A0F734()
{
  result = qword_1ECA673B0;
  if (!qword_1ECA673B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA673B0);
  }

  return result;
}

uint64_t sub_1D8A0F7C0(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA68B20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for DetectionRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;

  if (v12 > 0xD)
  {
    goto LABEL_22;
  }

  do
  {
    v38 = v13;
    v39 = v5;
    v40 = v4;
    v37 = &v35;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v16 = &v35 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v16, v14);
    *&v41 = 0;
    v17 = 0;
    v13 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v5 = v19 & *(a1 + 56);
    v20 = (v18 + 63) >> 6;
    while (v5)
    {
      v21 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
LABEL_12:
      v4 = v21 | (v17 << 6);
      sub_1D8A12388(*(a1 + 48) + *(v6 + 72) * v4, v10, type metadata accessor for DetectionRequest);
      v14 = *v10;
      sub_1D8A123F0(v10, type metadata accessor for DetectionRequest);
      if (!v14)
      {
        *&v16[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        v24 = __OFADD__(v41, 1);
        *&v41 = v41 + 1;
        if (v24)
        {
          __break(1u);
LABEL_16:
          v25 = sub_1D88BE398(v16, v38, v41, a1);
          v5 = v39;
          v4 = v40;
          goto LABEL_17;
        }
      }
    }

    v22 = v17;
    while (1)
    {
      v17 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v17 >= v20)
      {
        goto LABEL_16;
      }

      v23 = *(v13 + 8 * v17);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v5 = (v23 - 1) & v23;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v34 = swift_slowAlloc();
  v25 = sub_1D88C08D8(v34, v13, a1, sub_1D8A0B460, 0);
  MEMORY[0x1DA721330](v34, -1, -1);
LABEL_17:
  sub_1D89C5BD8(v25, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D87A14E4(v4, &unk_1ECA68B20);
    return 0;
  }

  else
  {
    v27 = v36;
    sub_1D8A12450(v4, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DB0);
    v28 = (type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
    v29 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
    v30 = swift_allocObject();
    v41 = xmmword_1D8B1AB90;
    *(v30 + 16) = xmmword_1D8B1AB90;
    v31 = (v30 + v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63240);
    v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v41;
    sub_1D8A12388(v27, v33 + v32, type metadata accessor for DetectionRequest);
    sub_1D8A12388(v27, v31 + v28[7], type metadata accessor for DetectionRequest);
    *v31 = v33;
    sub_1D8A123F0(v27, type metadata accessor for DetectionRequest);
    return v30;
  }
}

float sub_1D8A0FCB0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA673C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A0FE64();
  sub_1D8B16DB0();
  v11 = 0;
  sub_1D8B16A00();
  v10 = 1;
  sub_1D8B169F0();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1D8A0FE64()
{
  result = qword_1ECA673C0;
  if (!qword_1ECA673C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA673C0);
  }

  return result;
}

uint64_t sub_1D8A0FEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    goto LABEL_11;
  }

  v8 = sub_1D8B16BA0();
  if (v8)
  {
    goto LABEL_11;
  }

  if (qword_1ECA62260 != -1)
  {
    v8 = swift_once();
  }

  v9 = off_1ECA671D8;
  if (*(off_1ECA671D8 + 2) && (v8 = sub_1D87EF838(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(v9[7] + 8 * v8);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v20 = a3;
  v21 = a4;
  MEMORY[0x1EEE9AC00](v8);
  v19 = &v20;
  v12 = sub_1D8AD0444(sub_1D8A10480, v18, v11);

  if (v12)
  {
LABEL_11:
    v14 = 1;
  }

  else
  {
    if (v9[2] && (v13 = sub_1D87EF838(a3, a4), (v16 & 1) != 0))
    {
      v17 = *(v9[7] + 8 * v13);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    v20 = a1;
    v21 = a2;
    MEMORY[0x1EEE9AC00](v13);
    v19 = &v20;
    v14 = sub_1D8AD0444(sub_1D8A1264C, v18, v17);
  }

  return v14 & 1;
}

uint64_t sub_1D8A100A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  Corners.bounds.getter();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  Corners.bounds.getter();
  v32.origin.x = v8;
  v32.origin.y = v9;
  v11 = v10;
  v13 = v12;
  v30.origin.x = v1;
  v30.origin.y = v3;
  v30.size.width = v5;
  v30.size.height = v7;
  v32.size.width = v11;
  v32.size.height = v13;
  v31 = CGRectIntersection(v30, v32);
  CGRectIsNull(v31);
  LOBYTE(v14) = sub_1D889E348();
  v15 = v14;
  v17 = v16;
  LOBYTE(v18) = sub_1D889E348();
  if (v15 == v18 && v17 == v19)
  {
  }

  else
  {
    v21 = sub_1D8B16BA0();

    if ((v21 & 1) == 0)
    {
      LOBYTE(v22) = sub_1D889E348();
      v23 = v22;
      v25 = v24;
      LOBYTE(v26) = sub_1D889E348();
      LOBYTE(v23) = sub_1D8A0FEB8(v23, v25, v26, v27);

      if ((v23 & 1) == 0)
      {
        v28 = sub_1D8A05CB0();
        v29 = sub_1D8A05CB0();
        sub_1D8AC14BC(v29, v28);
      }
    }
  }

  return result;
}

uint64_t sub_1D8A10318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6177417373616C63 && a2 == 0xEA00000000006572;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746369727473 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

unint64_t sub_1D8A1049C()
{
  result = qword_1ECA673D0;
  if (!qword_1ECA673D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA673D0);
  }

  return result;
}

void *sub_1D8A104F0(void *result, void *a2, void *a3)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D8A10548()
{
  result = qword_1EE0E3698;
  if (!qword_1EE0E3698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0E3698);
  }

  return result;
}

BOOL sub_1D8A10594(uint64_t a1, uint64_t a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v21.origin.y = a5;
  v21.origin.x = a4;
  v11 = *(a2 + 16);
  v19.origin.x = *(a2 + 24);
  v19.origin.y = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v19.size.width = v12;
  v19.size.height = v13;
  v21.size.width = a6;
  v21.size.height = a7;
  v20 = CGRectIntersection(v19, v21);
  width = v20.size.width;
  height = v20.size.height;
  if (CGRectIsNull(v20))
  {
    return 0;
  }

  v16 = width * height / (a6 * a7 + v12 * v13 - width * height);
  if (v16 <= 0.35)
  {
    return 0;
  }

  return a3 || v11 == a1;
}

uint64_t sub_1D8A1065C(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v146 = *a1;
  v138 = MEMORY[0x1E69E7CC0];
  sub_1D87C1470(a2, &v128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA673E8);
  sub_1D8A10548();
  if (swift_dynamicCast())
  {
    IOSurfaceLock(buffer, 1u, 0);
  }

  if ((v146 - 1) <= 1u)
  {
    v106 = *(a3 + 16);
    if (v106)
    {
      v4 = a3 + 32;
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      v105 = v4;
      while (1)
      {
        v7 = (v4 + 24 * v5);
        v8 = *v7;
        v9 = v7[2];
        rawValue = *(v7 + 2);
        v10 = a2[3];
        v11 = a2[4];
        p_buffer = __swift_project_boxed_opaque_existential_1(a2, v10);
        v107 = v8;
        (*(v11 + 16))(v139, v8, v10, v11);
        if (v142)
        {
          break;
        }

        v114 = *&v139[1];
        v116 = *v139;
        v13 = v6;
        v122 = v140;
        r1 = v141;
        if (v146 != 1)
        {
          v14 = v138;
          v15 = *(v138 + 2);
          if (v15)
          {
            v16 = 0;
            v111 = v140 * v141;
            v17 = v138 + 80;
            v104 = v138 + 80;
            p_buffer = v6;
LABEL_10:
            v18 = &v17[56 * v16];
            v19 = v16;
            while (v19 < *(v14 + 2))
            {
              v20 = *(v18 - 6);
              v21 = *(v18 - 5);
              v22 = *(v18 - 4);
              v23 = *(v18 - 3);
              v24 = *(v18 - 2);
              v25 = *(v18 - 2);
              v26 = *v18;
              v147.origin.y = v114;
              v147.origin.x = v116;
              v147.size.width = v122;
              v147.size.height = r1;
              v149.origin.x = v21;
              v149.origin.y = v22;
              v149.size.width = v23;
              v149.size.height = v24;
              v148 = CGRectIntersection(v147, v149);
              width = v148.size.width;
              height = v148.size.height;
              if (!CGRectIsNull(v148))
              {
                v29 = width * height / (v111 + v23 * v24 - width * height);
                if (v29 > 0.35)
                {
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v128 = p_buffer;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1D87F4BCC(0, *(p_buffer + 2) + 1, 1);
                    p_buffer = v128;
                  }

                  v32 = *(p_buffer + 2);
                  v31 = *(p_buffer + 3);
                  v33 = v32 + 1;
                  if (v32 >= v31 >> 1)
                  {
                    sub_1D87F4BCC((v31 > 1), v32 + 1, 1);
                    v33 = v32 + 1;
                    p_buffer = v128;
                  }

                  v16 = v19 + 1;
                  *(p_buffer + 2) = v33;
                  v34 = &p_buffer[64 * v32];
                  *(v34 + 4) = v19;
                  *(v34 + 5) = v20;
                  v34[6] = v21;
                  v34[7] = v22;
                  v34[8] = v23;
                  v34[9] = v24;
                  *(v34 + 20) = v25;
                  v34[11] = v26;
                  v17 = v104;
                  v6 = MEMORY[0x1E69E7CC0];
                  if (v15 - 1 != v19)
                  {
                    goto LABEL_10;
                  }

                  goto LABEL_23;
                }
              }

              ++v19;
              v18 += 7;
              if (v15 == v19)
              {
                v6 = MEMORY[0x1E69E7CC0];
                goto LABEL_23;
              }
            }

            goto LABEL_92;
          }

          p_buffer = v6;
LABEL_23:
          v13 = sub_1D87BA2C8(p_buffer);
        }

        v35 = *(v13 + 16);
        if (v35)
        {
          v112 = v5;
          v36 = 0;
          p_buffer = v35 - 1;
          v37 = v6;
LABEL_26:
          v38 = *(v13 + 16);
          v39 = v13 + 84 + (v36 << 6);
          v40 = v36;
          while (v40 < v38)
          {
            v41 = *(v39 - 52);
            v42 = *(v39 - 20);
            v129 = *(v39 - 36);
            v130 = v42;
            v128 = v41;
            v43 = *(v39 - 4);
            v44 = *v39;
            v126 = *(v39 + 8);
            buffer = v44;
            v36 = v40 + 1;
            if (v43 < v9)
            {
              v127 = v37;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1D87F4B9C(0, *(v37 + 2) + 1, 1);
                v37 = v127;
              }

              v46 = *(v37 + 2);
              v45 = *(v37 + 3);
              if (v46 >= v45 >> 1)
              {
                sub_1D87F4B9C((v45 > 1), v46 + 1, 1);
                v37 = v127;
              }

              *(v37 + 2) = v46 + 1;
              v47 = &v37[64 * v46];
              v48 = v128;
              v49 = v130;
              *(v47 + 3) = v129;
              *(v47 + 4) = v49;
              *(v47 + 2) = v48;
              *(v47 + 20) = v43;
              v50 = buffer;
              *(v47 + 23) = v126;
              *(v47 + 84) = v50;
              if (p_buffer != v40)
              {
                goto LABEL_26;
              }

LABEL_36:

              v5 = v112;
              v6 = MEMORY[0x1E69E7CC0];
              if (*(v37 + 2))
              {
                goto LABEL_39;
              }

              goto LABEL_48;
            }

            v39 += 64;
            ++v40;
            if (v35 == v36)
            {
              goto LABEL_36;
            }
          }

          goto LABEL_91;
        }

        v37 = v6;
LABEL_39:
        visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(rawValue);
        if (v128 == 181)
        {
          goto LABEL_82;
        }

        p_buffer = v138;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          p_buffer = sub_1D87C995C(0, *(p_buffer + 2) + 1, 1, p_buffer);
        }

        v52 = *(p_buffer + 2);
        v51 = *(p_buffer + 3);
        if (v52 >= v51 >> 1)
        {
          p_buffer = sub_1D87C995C((v51 > 1), v52 + 1, 1, p_buffer);
        }

        *(p_buffer + 2) = v52 + 1;
        v53 = &p_buffer[56 * v52];
        *(v53 + 4) = v107;
        v53[5] = v116;
        v53[6] = v114;
        v53[7] = v122;
        v53[8] = r1;
        *(v53 + 18) = v9;
        *(v53 + 10) = rawValue;
        v138 = p_buffer;
        v54 = *(v37 + 2);
        if (v54)
        {
          v55 = (v54 << 6) - 32;
          while (v54 <= *(v37 + 2))
          {
            --v54;
            p_buffer = &v138;
            sub_1D8A0CE20(*&v37[v55], &v128);
            v55 -= 64;
            if (!v54)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_81;
        }

LABEL_48:
        ++v5;

        v4 = v105;
        if (v5 == v106)
        {
          goto LABEL_86;
        }
      }

LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

LABEL_86:
    p_buffer = v138;
    sub_1D87C1470(a2, &v128);

    if (swift_dynamicCast())
    {
      v102 = buffer;
      IOSurfaceUnlock(buffer, 1u, 0);

      return p_buffer;
    }

LABEL_88:

    return p_buffer;
  }

  v56 = *(a3 + 16);
  v57 = MEMORY[0x1E69E7CC0];
  if (v56)
  {
    *&v128 = MEMORY[0x1E69E7CC0];
    sub_1D87F4B7C(0, v56, 0);
    v57 = v128;
    v58 = (a3 + 48);
    while (1)
    {
      v59 = *(v58 - 2);
      v60 = *(v58 - 2);
      v61 = *v58;
      v62 = a2[3];
      v63 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v62);
      (*(v63 + 16))(&v143, v59, v62, v63);
      if (v145)
      {
        break;
      }

      v64 = v143;
      v65 = v144;
      *&v128 = v57;
      v67 = *(v57 + 16);
      v66 = *(v57 + 24);
      if (v67 >= v66 >> 1)
      {
        r1b = v144;
        v123 = v143;
        sub_1D87F4B7C((v66 > 1), v67 + 1, 1);
        v65 = r1b;
        v64 = v123;
        v57 = v128;
      }

      *(v57 + 16) = v67 + 1;
      v68 = v57 + 56 * v67;
      *(v68 + 32) = v59;
      v58 += 3;
      *(v68 + 40) = v60;
      *(v68 + 48) = v61;
      *(v68 + 56) = v64;
      *(v68 + 72) = v65;
      if (!--v56)
      {
        goto LABEL_56;
      }
    }

LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

LABEL_56:
  *&v128 = v57;

  sub_1D8A0D640(&v128);
  if (!v110)
  {

    v69 = 0;
    buffer = v128;
    v70 = MEMORY[0x1E69E7CC0];
    v71 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (!*(buffer + 2))
      {
LABEL_85:

        goto LABEL_86;
      }

      v72 = *(buffer + 4);
      v124 = *(buffer + 10);
      v73 = *(buffer + 6);
      v74 = *(buffer + 8);
      r1a = *(buffer + 7);
      v76 = *(buffer + 9);
      v75 = *(buffer + 10);
      sub_1D88646C4(0, 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_1D87C995C(0, *(v71 + 2) + 1, 1, v71);
      }

      v78 = *(v71 + 2);
      v77 = *(v71 + 3);
      if (v78 >= v77 >> 1)
      {
        v71 = sub_1D87C995C((v77 > 1), v78 + 1, 1, v71);
      }

      v79 = 0;
      *(v71 + 2) = v78 + 1;
      v80 = &v71[56 * v78];
      *(v80 + 4) = v72;
      *(v80 + 5) = r1a;
      *(v80 + 6) = v74;
      *(v80 + 7) = v76;
      *(v80 + 8) = v75;
      *(v80 + 18) = v124;
      *(v80 + 10) = v73;
      v117 = v71;
      v138 = v71;
      v81 = v69 + 1;
      v82 = buffer;
      v83 = *(buffer + 2);
      v84 = buffer + 80;
      v113 = v81;
      v115 = buffer + 80;
LABEL_64:
      p_buffer = &v84[56 * v79];
      while (v83 != v79)
      {
        if (v79 >= *(v82 + 2))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        v85 = *(p_buffer - 6);
        v86 = *(p_buffer - 10);
        v87 = *(p_buffer - 4);
        v88 = *(p_buffer - 3);
        v89 = *(p_buffer - 2);
        v90 = *(p_buffer - 1);
        v91 = *p_buffer;
        ++v79;
        v131 = v72;
        v132 = v124;
        v133 = v73;
        v134 = r1a;
        v135 = v74;
        v136 = v76;
        v137 = v75;
        p_buffer += 56;
        if (sub_1D8A10594(v87, &v131, v146, v88, v89, v90, v91))
        {
          v92 = swift_isUniquelyReferenced_nonNull_native();
          *&v128 = v70;
          if ((v92 & 1) == 0)
          {
            sub_1D87F4B5C(0, *(v70 + 16) + 1, 1);
            v70 = v128;
          }

          v94 = *(v70 + 16);
          v93 = *(v70 + 24);
          v95 = v94 + 1;
          if (v94 >= v93 >> 1)
          {
            v97 = v94 + 1;
            rawValuea = v94;
            sub_1D87F4B5C((v93 > 1), v94 + 1, 1);
            v95 = v97;
            v94 = rawValuea;
            v70 = v128;
          }

          *(v70 + 16) = v95;
          v96 = v70 + (v94 << 6);
          *(v96 + 32) = v79 - 1;
          *(v96 + 40) = v85;
          *(v96 + 48) = v86;
          *(v96 + 56) = v87;
          *(v96 + 64) = v88;
          *(v96 + 72) = v89;
          *(v96 + 80) = v90;
          *(v96 + 88) = v91;
          v84 = v115;
          goto LABEL_64;
        }
      }

      v98 = *(v70 + 16);
      if (v98)
      {
        break;
      }

      v71 = v117;
LABEL_77:

      v69 = v113;
      v70 = MEMORY[0x1E69E7CC0];
      if (v113 == 100)
      {
        goto LABEL_85;
      }
    }

    v99 = (v70 + (v98 << 6) - 32);
    v71 = v117;
    while (v98 <= *(v70 + 16))
    {
      --v98;
      v100 = *v99;
      v99 -= 8;
      p_buffer = &buffer;
      sub_1D8A0CED4(v100, &v128);
      if (!v98)
      {
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:

    sub_1D8A1049C();
    swift_allocError();
    *v101 = 3;
    *(v101 + 8) = 1;
    swift_willThrow();
    sub_1D87C1470(a2, &v128);
    if (swift_dynamicCast())
    {
      p_buffer = buffer;
      IOSurfaceUnlock(buffer, 1u, 0);
    }

    goto LABEL_88;
  }

LABEL_95:

  __break(1u);
  return result;
}

void *sub_1D8A11088(uint64_t a1, IOSurfaceRef buffer)
{
  BaseAddress = IOSurfaceGetBaseAddress(buffer);
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v6 = BaseAddress;
  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1D87F4BFC(0, v4, 0);
  v5 = v18;
  v8 = (a1 + 80);
  while (1)
  {
    v9 = *(v8 - 6);
    if ((v9 - 0x20000000000000) >> 54 != 1023)
    {
      break;
    }

    v16 = *(v8 - 3);
    v17 = *(v8 - 5);
    v10 = *(v8 - 2);
    v11 = *v8;
    v12 = sub_1D8B15D60();
    *(v12 + 16) = 512;
    result = (v12 + 32);
    if ((v12 + 32) != &v6[1024 * v9])
    {
      result = memmove(result, &v6[1024 * v9], 0x400uLL);
    }

    *(v12 + 16) = 512;
    v14 = *(v18 + 16);
    v13 = *(v18 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_1D87F4BFC((v13 > 1), v14 + 1, 1);
    }

    *(v18 + 16) = v14 + 1;
    v15 = v18 + (v14 << 6);
    *(v15 + 32) = v9;
    v8 += 7;
    *(v15 + 40) = v17;
    *(v15 + 56) = v16;
    *(v15 + 72) = v10;
    *(v15 + 80) = v11;
    *(v15 + 88) = v12;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

char sub_1D8A111E8(uint64_t a1)
{
  v187 = 0;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA673D8);
  v158[0] = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v161 = (v158 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA673E0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v167 = v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v166 = v158 - v6;
  v183 = sub_1D8B13240();
  v7 = *(v183 - 8);
  v8 = MEMORY[0x1EEE9AC00](v183);
  v165 = v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v175 = v158 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v174 = v158 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v179 = v158 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v177 = v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v173 = v158 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v158 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v186 = (v158 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v32 = v158 - v28;
  v191 = MEMORY[0x1E69E7CD0];
  v190 = MEMORY[0x1E69E7CC8];
  v33 = *(a1 + 16);
  v176 = v27;
  v162 = v29;
  v164 = v33;
  v158[1] = a1;
  if (v33)
  {
    v172 = v30;
    v34 = 0;
    v181 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v163 = a1 + v181;
    v35 = *(v29 + 72);
    v178 = (v7 + 16);
    v171 = (v7 + 8);
    v160 = v31;
    v159 = v7;
    v180 = v23;
    v182 = v158 - v28;
    v185 = v35;
    do
    {
      v169 = v34;
      sub_1D87A0E38(v163 + v35 * v34, v32, &qword_1ECA67750);
      if (qword_1ECA62260 != -1)
      {
        swift_once();
      }

      v37 = off_1ECA671D8;
      v38 = *&v32[*(v15 + 44)];
      if (*(v38 + 16))
      {
        LOBYTE(v39) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v38 + 32));
        if (LOBYTE(v188[0]) == 181)
        {
          goto LABEL_123;
        }

        v40 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
        v42 = v41;
        if (v37[2])
        {
LABEL_11:
          v43 = sub_1D87EF838(v40, v42);
          v45 = v44;

          if (v45)
          {
            v46 = *(v37[7] + 8 * v43);

            v47 = v163;
            v48 = v164;
            v184 = MEMORY[0x1E69E7CC0];
            v49 = v160;
            do
            {
              v51 = v186;
              sub_1D87A0E38(v47, v186, &qword_1ECA67750);
              v52 = *(v51 + *(v15 + 44));
              if (*(v52 + 16))
              {
                LOBYTE(v39) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v52 + 32));
                if (LOBYTE(v188[0]) == 181)
                {
                  goto LABEL_122;
                }

                v53 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
                v55 = v54;
              }

              else
              {
                v55 = 0xE700000000000000;
                v53 = 0x6E776F6E6B6E75;
              }

              v188[0] = v53;
              v188[1] = v55;
              MEMORY[0x1EEE9AC00](v53);
              v158[-2] = v188;
              v56 = v187;
              v57 = sub_1D8AD0444(sub_1D8A1264C, &v158[-4], v46);
              v187 = v56;

              if (v57)
              {
                sub_1D881F6FC(v186, v49, &qword_1ECA67750);
                v58 = v184;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v60 = v58;
                v189 = v58;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1D87F49CC(0, *(v58 + 16) + 1, 1);
                  v60 = v189;
                }

                v62 = *(v60 + 16);
                v61 = *(v60 + 24);
                if (v62 >= v61 >> 1)
                {
                  sub_1D87F49CC(v61 > 1, v62 + 1, 1);
                  v60 = v189;
                }

                *(v60 + 16) = v62 + 1;
                v184 = v60;
                v50 = v185;
                sub_1D881F6FC(v49, v60 + v181 + v62 * v185, &qword_1ECA67750);
              }

              else
              {
                sub_1D87A14E4(v186, &qword_1ECA67750);
                v50 = v185;
              }

              v47 += v50;
              --v48;
            }

            while (v48);

            v63 = *(v184 + 16);
            if (v63)
            {
              v64 = &v182[*(v15 + 40)];
              v65 = *v64;
              v66 = v64[1];
              v67 = v64[2];
              v68 = v64[3];
              v69 = v64[4];
              v70 = v64[5];
              v71 = v64[6];
              v72 = v64[7];
              v73 = v184 + v181;
              if (v67 >= *v64)
              {
                v74 = *v64;
              }

              else
              {
                v74 = v64[2];
              }

              if (v69 < v74)
              {
                v74 = v64[4];
              }

              if (v71 >= v74)
              {
                v75 = v74;
              }

              else
              {
                v75 = v64[6];
              }

              if (v68 >= v66)
              {
                v76 = v64[1];
              }

              else
              {
                v76 = v64[3];
              }

              if (v70 < v76)
              {
                v76 = v64[5];
              }

              if (v72 >= v76)
              {
                v77 = v76;
              }

              else
              {
                v77 = v64[7];
              }

              if (v65 <= v67)
              {
                v65 = v64[2];
              }

              if (v65 <= v69)
              {
                v65 = v64[4];
              }

              if (v65 <= v71)
              {
                v65 = v64[6];
              }

              if (v66 <= v68)
              {
                v66 = v64[3];
              }

              if (v66 <= v70)
              {
                v66 = v64[5];
              }

              if (v66 <= v72)
              {
                v66 = v64[7];
              }

              v78 = v65 - v75;
              v79 = v66 - v77;
              v80 = (v65 - v75) * (v66 - v77);
              v81 = v180;
              v82 = v185;
              do
              {
                sub_1D87A0E38(v73, v81, &qword_1ECA67750);
                v87 = (v81 + *(v15 + 40));
                v88 = *v87;
                v89 = v87[1];
                v90 = v87[2];
                v91 = v87[3];
                v92 = v87[4];
                v93 = v87[5];
                v94 = v87[6];
                v95 = v87[7];
                if (v90 >= *v87)
                {
                  v96 = *v87;
                }

                else
                {
                  v96 = v87[2];
                }

                if (v92 < v96)
                {
                  v96 = v87[4];
                }

                if (v94 < v96)
                {
                  v96 = v87[6];
                }

                if (v91 >= v89)
                {
                  v97 = v87[1];
                }

                else
                {
                  v97 = v87[3];
                }

                if (v93 < v97)
                {
                  v97 = v87[5];
                }

                if (v95 < v97)
                {
                  v97 = v87[7];
                }

                if (v88 <= v90)
                {
                  v88 = v87[2];
                }

                if (v88 <= v92)
                {
                  v88 = v87[4];
                }

                if (v88 <= v94)
                {
                  v88 = v87[6];
                }

                if (v89 <= v91)
                {
                  v89 = v87[3];
                }

                if (v89 <= v93)
                {
                  v89 = v87[5];
                }

                if (v89 <= v95)
                {
                  v89 = v87[7];
                }

                v98 = v88 - v96;
                v99 = v89 - v97;
                v192.origin.x = v75;
                v192.origin.y = v77;
                v192.size.width = v78;
                v192.size.height = v79;
                v193 = CGRectIntersection(v192, *&v96);
                if (v193.size.width * v193.size.height / v80 > 0.8)
                {
                  if (qword_1EE0E4280 != -1)
                  {
                    swift_once();
                  }

                  v100 = sub_1D8B151E0();
                  __swift_project_value_buffer(v100, qword_1EE0E4288);
                  v101 = v173;
                  sub_1D87A0E38(v182, v173, &qword_1ECA67750);
                  v102 = v172;
                  sub_1D87A0E38(v81, v172, &qword_1ECA67750);
                  v103 = sub_1D8B151C0();
                  v104 = sub_1D8B161F0();
                  if (os_log_type_enabled(v103, v104))
                  {
                    v105 = swift_slowAlloc();
                    v170 = swift_slowAlloc();
                    v188[0] = v170;
                    *v105 = 136315394;
                    LOBYTE(v106) = sub_1D889E348();
                    v107 = v106;
                    v109 = v108;
                    sub_1D87A14E4(v101, &qword_1ECA67750);
                    v110 = sub_1D89AC714(v107, v109, v188);

                    *(v105 + 4) = v110;
                    *(v105 + 12) = 2080;
                    LOBYTE(v111) = sub_1D889E348();
                    v112 = v111;
                    v114 = v113;
                    sub_1D87A14E4(v102, &qword_1ECA67750);
                    v115 = sub_1D89AC714(v112, v114, v188);

                    *(v105 + 14) = v115;
                    _os_log_impl(&dword_1D8783000, v103, v104, "Rejecting a %s because it intersects with %s.", v105, 0x16u);
                    v116 = v170;
                    swift_arrayDestroy();
                    MEMORY[0x1DA721330](v116, -1, -1);
                    v117 = v105;
                    v15 = v176;
                    MEMORY[0x1DA721330](v117, -1, -1);
                  }

                  else
                  {

                    sub_1D87A14E4(v102, &qword_1ECA67750);
                    sub_1D87A14E4(v101, &qword_1ECA67750);
                  }

                  v118 = v190;
                  v119 = v180;
                  if (!*(v190 + 16) || (, sub_1D87EF764(v119), v121 = v120, , (v121 & 1) == 0))
                  {
                    v122 = swift_isUniquelyReferenced_nonNull_native();
                    v188[0] = v118;
                    sub_1D8B06118(MEMORY[0x1E69E7CC0], v119, v122);
                    v190 = v188[0];
                  }

                  v123 = *v178;
                  (*v178)(v179, v119, v183);
                  v125 = sub_1D8A0D454(v188);
                  if (*v124)
                  {
                    v126 = v124;
                    sub_1D87A0E38(v182, v177, &qword_1ECA67750);
                    v127 = *v126;
                    v128 = swift_isUniquelyReferenced_nonNull_native();
                    *v126 = v127;
                    if ((v128 & 1) == 0)
                    {
                      v127 = sub_1D87C8C58(0, v127[2] + 1, 1, v127);
                      *v126 = v127;
                    }

                    v130 = v127[2];
                    v129 = v127[3];
                    if (v130 >= v129 >> 1)
                    {
                      v127 = sub_1D87C8C58(v129 > 1, v130 + 1, 1, v127);
                      *v126 = v127;
                    }

                    v127[2] = v130 + 1;
                    sub_1D881F6FC(v177, v127 + v181 + v130 * v185, &qword_1ECA67750);
                    (v125)(v188, 0);
                    v15 = v176;
                  }

                  else
                  {
                    (v125)(v188, 0);
                  }

                  v83 = *v171;
                  v84 = v183;
                  (*v171)(v179, v183);
                  v85 = v175;
                  v123(v175, v182, v84);
                  v86 = v174;
                  sub_1D87FC15C(v174, v85);
                  v83(v86, v84);
                  v81 = v180;
                  v82 = v185;
                }

                sub_1D87A14E4(v81, &qword_1ECA67750);
                v73 += v82;
                --v63;
              }

              while (v63);
            }

            v7 = v159;
          }

          v32 = v182;
          goto LABEL_5;
        }
      }

      else
      {
        v42 = 0xE700000000000000;
        v40 = 0x6E776F6E6B6E75;
        if (*(off_1ECA671D8 + 2))
        {
          goto LABEL_11;
        }
      }

LABEL_5:
      v36 = v169 + 1;
      sub_1D87A14E4(v32, &qword_1ECA67750);
      v34 = v36;
      v35 = v185;
    }

    while (v36 != v164);
  }

  v132 = sub_1D8A0E540(v131, &v191);

  v133 = *(v132 + 16);
  v134 = (v158[0] + 56);
  v135 = (v158[0] + 48);
  v136 = (v7 + 16);
  v137 = (v7 + 8);

  v138 = 0;
  v186 = v132;
  v187 = v132;
  if (!v133)
  {
    goto LABEL_105;
  }

LABEL_102:
  v139 = v168;
  if ((v138 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v138 < *(v132 + 16))
  {
    v140 = v132 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v138;
    v141 = *(v168 + 48);
    v142 = v161;
    *v161 = v138;
    sub_1D87A0E38(v140, v142 + v141, &qword_1ECA67750);
    v143 = v142;
    v144 = v167;
    sub_1D881F6FC(v143, v167, &qword_1ECA673D8);
    v145 = 0;
    ++v138;
    while (1)
    {
      (*v134)(v144, v145, 1, v139);
      v146 = v166;
      sub_1D881F6FC(v144, v166, &qword_1ECA673E0);
      if ((*v135)(v146, 1, v139) == 1)
      {
        break;
      }

      v147 = *v146;
      v148 = *(v139 + 48);
      v149 = v165;
      (*v136)(v165, &v146[v148], v183);
      sub_1D87A14E4(&v146[v148], &qword_1ECA67750);
      v150 = v190;
      if (*(v190 + 16) && (v151 = sub_1D87EF764(v149), (v152 & 1) != 0))
      {
        v153 = *(*(v150 + 56) + 8 * v151);
        v154 = *v137;
        v185 = v153;

        v154(v149, v183);
        v155 = v186;
        LOBYTE(v39) = swift_isUniquelyReferenced_nonNull_native();
        if (v39)
        {
          if ((v147 & 0x8000000000000000) != 0)
          {
            goto LABEL_117;
          }
        }

        else
        {
          v39 = sub_1D893948C(v155);
          v155 = v39;
          if ((v147 & 0x8000000000000000) != 0)
          {
LABEL_117:
            __break(1u);
            break;
          }
        }

        if (v147 >= v155[2])
        {
          goto LABEL_121;
        }

        v156 = (*(v162 + 80) + 32) & ~*(v162 + 80);
        v186 = v155;
        *(v155 + v156 + *(v162 + 72) * v147 + *(v176 + 60)) = v185;
      }

      else
      {
        LOBYTE(v39) = (*v137)(v149, v183);
      }

      v132 = v187;
      if (v138 != v133)
      {
        goto LABEL_102;
      }

LABEL_105:
      v145 = 1;
      v138 = v133;
      v139 = v168;
      v144 = v167;
    }

    LOBYTE(v39) = v186;
    return v39;
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
  return v39;
}

void *sub_1D8A121E0(void *result, void *a2, void *a3)
{
  if (result)
  {
    v5 = result;
    v6 = a2;
    v7 = a3;
  }

  return result;
}

uint64_t sub_1D8A12238(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D8A0C860(a1, v4, v5, v6);
}

uint64_t sub_1D8A122EC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D8B16BA0() & 1;
  }
}

uint64_t sub_1D8A12344(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D8B13240();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8A12388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A123F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8A12450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectionRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A124B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8A124D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

unint64_t sub_1D8A12540()
{
  result = qword_1ECA673F8;
  if (!qword_1ECA673F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA673F8);
  }

  return result;
}

unint64_t sub_1D8A12598()
{
  result = qword_1ECA67400;
  if (!qword_1ECA67400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67400);
  }

  return result;
}

unint64_t sub_1D8A125F0()
{
  result = qword_1ECA67408;
  if (!qword_1ECA67408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67408);
  }

  return result;
}

uint64_t visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.systemImage.getter()
{
  result = 0x656E616C70726961;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
    case 3:
    case 4:
    case 0x8C:
    case 0x8D:
      v2 = 0x6472617A696CLL;
      goto LABEL_86;
    case 5:
      return 0x6C6C69662E7674;
    case 6:
    case 0x4D:
    case 0x79:
    case 0x7F:
    case 0x85:
    case 0x8B:
    case 0xA1:
      return 0x72612E6F746F6870;
    case 7:
      return 0x676E697265657473;
    case 8:
      return 0x6C6C69662E676162;
    case 9:
    case 0x10:
    case 0x1B:
    case 0x96:
      return 0xD000000000000013;
    case 0xA:
      return 0x65646F63726162;
    case 0xB:
    case 0x18:
    case 0x8E:
      return 0x61772E7265746177;
    case 0xC:
      return 0x2E7061632E746168;
    case 0xD:
      return 0x62756F642E646562;
    case 0xE:
    case 0x15:
    case 0x26:
    case 0x31:
    case 0x40:
    case 0x5B:
    case 0x61:
    case 0x83:
    case 0x95:
    case 0x97:
    case 0x9D:
    case 0xA3:
    case 0xA9:
    case 0xB3:
      v2 = 0x747269687374;
      goto LABEL_86;
    case 0xF:
      return 0x656C6379636962;
    case 0x11:
    case 0x12:
    case 0x13:
      v3 = 1685219682;
      goto LABEL_88;
    case 0x14:
      return 0x72616F6270696C63;
    case 0x16:
    case 0x7C:
      return 0xD000000000000010;
    case 0x17:
      return 0x74616F626C696173;
    case 0x19:
      v3 = 1802465122;
      goto LABEL_88;
    case 0x1A:
      v9 = 1802465122;
      return v9 | 0x6761702E00000000;
    case 0x1C:
      v3 = 1918989427;
      goto LABEL_88;
    case 0x1D:
    case 0x28:
    case 0x2B:
    case 0x4C:
    case 0x54:
    case 0x70:
    case 0x7E:
    case 0x8F:
    case 0x90:
    case 0x91:
    case 0x92:
    case 0x98:
    case 0xA4:
      return 0xD000000000000010;
    case 0x1E:
    case 0x99:
    case 0x9C:
    case 0xA5:
      return 0x676E69646C697562;
    case 0x1F:
      return 0xD000000000000010;
    case 0x20:
      v8 = 0x656E69626163;
      return v8 & 0xFFFFFFFFFFFFLL | 0x2E74000000000000;
    case 0x21:
      return 0x7261646E656C6163;
    case 0x22:
    case 0x23:
    case 0x3C:
    case 0x3D:
    case 0x3E:
    case 0xB2:
      v5 = 28516;
      goto LABEL_12;
    case 0x24:
    case 0xAA:
      return 0x6C6C69662E726163;
    case 0x25:
    case 0x6C:
    case 0x75:
      return 0x64726163756E656DLL;
    case 0x27:
      return 0x61632E656C707061;
    case 0x29:
    case 0x34:
      return 0x61622E7472616863;
    case 0x2A:
      return 0x6163746964657263;
    case 0x2C:
      v3 = 1952542563;
      goto LABEL_88;
    case 0x2D:
      return 0xD000000000000016;
    case 0x2E:
    case 0x78:
      return 0xD000000000000010;
    case 0x2F:
    case 0x35:
    case 0x82:
    case 0x87:
      return 0x696E6B2E6B726F66;
    case 0x30:
    case 0x5C:
    case 0x60:
    case 0x67:
    case 0x68:
    case 0x9A:
      return 0xD000000000000011;
    case 0x32:
      return 0x6261742E706D616CLL;
    case 0x33:
    case 0x84:
      return 0xD000000000000012;
    case 0x36:
    case 0x37:
    case 0x63:
    case 0x64:
    case 0x65:
    case 0x6D:
    case 0x6E:
    case 0x6F:
      v4 = 0x697270776170;
      goto LABEL_9;
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x46:
    case 0x47:
    case 0xB1:
      v6 = 779379043;
      return v6 | 0x6C6C696600000000;
    case 0x3F:
      return 0x6C69636E6570;
    case 0x41:
      v5 = 30061;
LABEL_12:
      v6 = v5 | 0x2E670000;
      return v6 | 0x6C6C696600000000;
    case 0x42:
      return 0x74656C6C6177;
    case 0x43:
      return 0xD000000000000015;
    case 0x44:
      return 0x65706F6C65766E65;
    case 0x45:
      return 0x7373616C67657965;
    case 0x48:
    case 0x49:
    case 0x50:
    case 0x51:
    case 0x52:
    case 0x69:
    case 0x6A:
    case 0x6B:
      v3 = 1752394086;
      goto LABEL_88;
    case 0x4A:
    case 0x73:
    case 0x80:
    case 0x86:
      v3 = 1717658988;
      goto LABEL_88;
    case 0x4B:
    case 0x74:
      return 0x657061707377656ELL;
    case 0x4E:
      return 0xD000000000000010;
    case 0x4F:
      return 0xD000000000000010;
    case 0x53:
    case 0x55:
    case 0x56:
    case 0x57:
    case 0x58:
      v2 = 0x6E6F73726570;
      goto LABEL_86;
    case 0x5D:
      return 0x656C6B72617073;
    case 0x5E:
      v2 = 0x726568736177;
      goto LABEL_86;
    case 0x5F:
      return 0x6C7562746867696CLL;
    case 0x62:
      return 0x656E697A6167616DLL;
    case 0x66:
      v6 = 779116909;
      return v6 | 0x6C6C696600000000;
    case 0x71:
      return 0x637963726F746F6DLL;
    case 0x72:
    case 0xAC:
    case 0xAE:
      return 0x6E6961746E756F6DLL;
    case 0x76:
    case 0x7A:
      return 0xD000000000000017;
    case 0x77:
      v7 = 1918985576;
      goto LABEL_51;
    case 0x7B:
      return 0x686775616CLL;
    case 0x7D:
      return 0x6F746F6870;
    case 0x81:
    case 0x89:
    case 0xAD:
      v2 = 0x746F72726163;
      goto LABEL_86;
    case 0x88:
      return 0x6C6C69662E676174;
    case 0x8A:
      v8 = 0x706965636572;
      return v8 & 0xFFFFFFFFFFFFLL | 0x2E74000000000000;
    case 0x93:
      return 0x69662E7269616863;
    case 0x94:
      v3 = 1701800051;
      goto LABEL_88;
    case 0x9E:
    case 0xA7:
      return 0xD000000000000014;
    case 0x9F:
      return 0x63706F746B736564;
    case 0xA0:
      v9 = 1954047348;
      return v9 | 0x6761702E00000000;
    case 0xA2:
      v2 = 0x74656B636974;
LABEL_86:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x662E000000000000;
      break;
    case 0xA6:
      result = 0x6165627964646574;
      break;
    case 0xA8:
      v3 = 1701147252;
LABEL_88:
      result = v3 | 0x6C69662E00000000;
      break;
    case 0xAB:
      v7 = 1851878512;
LABEL_51:
      result = v7 | 0x69662E7400000000;
      break;
    case 0xB0:
      result = 1768319351;
      break;
    case 0xB4:
      result = 0x6E612E6863746177;
      break;
    default:
      v4 = 0x656D75636F64;
LABEL_9:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
      break;
  }

  return result;
}

char *sub_1D8A12E08(uint64_t a1)
{
  v2 = type metadata accessor for TextDetectorResult(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v21 = *(v11 + 2);
    if (v21)
    {
      v30 = MEMORY[0x1E69E7CC0];
      sub_1D87F3F54(0, v21, 0);
      v22 = v30;
      v23 = (v11 + 48);
      do
      {
        v25 = *(v23 - 1);
        v24 = *v23;
        v30 = v22;
        v26 = *(v22 + 16);
        v27 = *(v22 + 24);

        if (v26 >= v27 >> 1)
        {
          sub_1D87F3F54((v27 > 1), v26 + 1, 1);
          v22 = v30;
        }

        *(v22 + 16) = v26 + 1;
        v28 = v22 + 16 * v26;
        *(v28 + 32) = v25;
        *(v28 + 40) = v24;
        v23 += 5;
        --v21;
      }

      while (v21);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v22;
  }

  v8 = *(v3 + 44);
  v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v10 = *(v4 + 72);
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D8A13924(v9, v6, type metadata accessor for TextDetectorResult);
    v13 = *&v6[v8];

    result = sub_1D8A226E8(v6, type metadata accessor for TextDetectorResult);
    v14 = *(v13 + 16);
    v15 = *(v11 + 2);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v16 <= *(v11 + 3) >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v17 = v15 + v14;
      }

      else
      {
        v17 = v15;
      }

      result = sub_1D87C8390(result, v17, 1, v11);
      v11 = result;
      if (*(v13 + 16))
      {
LABEL_14:
        if ((*(v11 + 3) >> 1) - *(v11 + 2) < v14)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v18 = *(v11 + 2);
          v19 = __OFADD__(v18, v14);
          v20 = v18 + v14;
          if (v19)
          {
            goto LABEL_30;
          }

          *(v11 + 2) = v20;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_28;
    }

LABEL_4:
    v9 += v10;
    if (!--v7)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t AFMError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1D8B145A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AFMError(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A13924(v1, v8, type metadata accessor for AFMError);
  if ((*(v3 + 48))(v8, 2, v2))
  {
    return 0xD000000000000016;
  }

  (*(v3 + 32))(v5, v8, v2);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0x20617461444D4641, 0xE800000000000000);
  sub_1D8B168A0();
  MEMORY[0x1DA71EFA0](0xD000000000000011, 0x80000001D8B47530);
  v10 = v11[0];
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t AFMResult.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D8B13240();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AFMResult.id.setter(uint64_t a1)
{
  v3 = sub_1D8B13240();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AFMResult.confidence.setter(float a1)
{
  result = type metadata accessor for AFMResult(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

__n128 AFMResult.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AFMResult(0) + 24);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 AFMResult.corners.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AFMResult(0) + 24);
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v3 + 32) = result;
  *(v3 + 48) = v6;
  return result;
}

uint64_t AFMResult.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for AFMResult(0) + 28));

  return v1;
}

uint64_t AFMResult.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AFMResult(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double AFMResult.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for AFMResult(0) + 32));
  *a1 = result;
  return result;
}

uint64_t AFMResult.rotationAngle.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for AFMResult(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t AFMResult.timestamp.setter(double a1)
{
  result = type metadata accessor for AFMResult(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t AFMResult.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AFMResult(0) + 40);
  v4 = sub_1D8B145A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AFMResult.data.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AFMResult(0) + 40);
  v4 = sub_1D8B145A0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1D8A13924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AFMResult.originator.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AFMResult(0) + 44);

  return sub_1D8A139D0(a1, v3);
}

uint64_t sub_1D8A139D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectionRequest.Originator(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A13AC4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1635017060;
  if (v1 != 6)
  {
    v3 = 0x74616E696769726FLL;
  }

  v4 = 0x6E6F697461746F72;
  if (v1 != 4)
  {
    v4 = 0x6D617473656D6974;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7372656E726F63;
  if (v1 != 2)
  {
    v5 = 0x6C6562616CLL;
  }

  if (*v0)
  {
    v2 = 0x6E656469666E6F63;
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

uint64_t sub_1D8A13BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A23B5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A13BEC(uint64_t a1)
{
  v2 = sub_1D8A2264C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A13C28(uint64_t a1)
{
  v2 = sub_1D8A2264C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AFMResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67410);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A2264C();
  sub_1D8B16DD0();
  LOBYTE(v16) = 0;
  sub_1D8B13240();
  sub_1D8A226A0(&qword_1ECA637D8, MEMORY[0x1E69695A8]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for AFMResult(0);
    v20 = 1;
    sub_1D8B16AC0();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v12 = v10[3];
    v18 = v10[2];
    v19 = v12;
    v15 = 2;
    sub_1D881BB78();
    sub_1D8B16AE0();
    LOBYTE(v16) = 3;
    sub_1D8B16A90();
    *&v16 = *(v3 + *(v9 + 32));
    v15 = 4;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v16) = 5;
    sub_1D8B16AB0();
    LOBYTE(v16) = 6;
    sub_1D8B145A0();
    sub_1D8A226A0(&qword_1ECA651E0, MEMORY[0x1E69C9C10]);
    sub_1D8B16AE0();
    LOBYTE(v16) = 7;
    type metadata accessor for DetectionRequest.Originator(0);
    sub_1D8A226A0(&qword_1ECA67420, type metadata accessor for DetectionRequest.Originator);
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AFMResult.hash(into:)(__int128 *a1)
{
  sub_1D8B13240();
  sub_1D8A226A0(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v3 = type metadata accessor for AFMResult(0);
  sub_1D8B16D60();
  v4 = (v1 + v3[6]);
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  v10 = v4[7];
  sub_1D8818B80(*v4, v4[1]);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  sub_1D8818B80(v9, v10);
  sub_1D8B15A60();
  v11 = *(v1 + v3[8]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x1DA720250](*&v11);
  v12 = *(v1 + v3[9]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x1DA720250](*&v12);
  sub_1D8B145A0();
  sub_1D8A226A0(&qword_1EE0E9840, MEMORY[0x1E69C9C10]);
  sub_1D8B157A0();
  return DetectionRequest.Originator.hash(into:)(a1);
}

uint64_t AFMResult.hashValue.getter()
{
  sub_1D8B16D20();
  AFMResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t AFMResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D8B145A0();
  v35 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B13240();
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67428);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v10 = &v33 - v9;
  v11 = type metadata accessor for AFMResult(0);
  v13 = *(MEMORY[0x1EEE9AC00](v11) + 44);
  *(&v33 + v13 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)) = MEMORY[0x1E69E7CD0];
  v43 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v13;
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A2264C();
  v40 = v10;
  v14 = v42;
  sub_1D8B16DB0();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v31 = type metadata accessor for DetectionRequest.Originator;
    v32 = &v43[v44];
  }

  else
  {
    v42 = v6;
    v15 = v36;
    LOBYTE(v46) = 0;
    sub_1D8A226A0(&unk_1ECA689C0, MEMORY[0x1E69695A8]);
    v16 = v37;
    sub_1D8B16A10();
    v18 = v7;
    v19 = *(v15 + 32);
    v20 = v43;
    v37 = v18;
    v19(v43, v16, v18);
    LOBYTE(v46) = 1;
    sub_1D8B169F0();
    *(v20 + v11[5]) = v21;
    v51 = 2;
    sub_1D881BC34();
    sub_1D8B16A10();
    v22 = (v20 + v11[6]);
    v23 = v47;
    *v22 = v46;
    v22[1] = v23;
    v24 = v49;
    v22[2] = v48;
    v22[3] = v24;
    LOBYTE(v45) = 3;
    v25 = sub_1D8B169C0();
    v26 = v35;
    v27 = (v20 + v11[7]);
    *v27 = v25;
    v27[1] = v28;
    v50 = 4;
    sub_1D88913B8();
    sub_1D8B16A10();
    *(v20 + v11[8]) = v45;
    LOBYTE(v45) = 5;
    sub_1D8B169E0();
    *(v20 + v11[9]) = v29;
    LOBYTE(v45) = 6;
    sub_1D8A226A0(&qword_1ECA65298, MEMORY[0x1E69C9C10]);
    sub_1D8B16A10();
    (*(v26 + 32))(v20 + v11[10], v42, v39);
    LOBYTE(v45) = 7;
    sub_1D8A226A0(&unk_1ECA676C0, type metadata accessor for DetectionRequest.Originator);
    v30 = v34;
    sub_1D8B16A10();
    (*(v38 + 8))(v40, v41);
    sub_1D8A139D0(v30, v20 + v44);
    sub_1D8A13924(v20, v33, type metadata accessor for AFMResult);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v31 = type metadata accessor for AFMResult;
    v32 = v20;
  }

  return sub_1D8A226E8(v32, v31);
}

uint64_t sub_1D8A14968(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_1D8A149D8()
{
  sub_1D8B16D20();
  AFMResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A14A1C()
{
  sub_1D8B16D20();
  AFMResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A14A88@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>, double a3@<D0>)
{
  v51 = a3;
  v49 = a2;
  v4 = sub_1D8B145A0();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8B13240();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A13924(a1, v12, type metadata accessor for DetectionRequest.Originator);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v14 + 32))(v16, v12, v13);
    v54 = v14;
    v17 = *(v14 + 16);
    v50 = v13;
    v17(v9, v16, v13);
    v60.origin.x = 0.0;
    v60.origin.y = 0.0;
    v60.size.width = 0.0;
    v60.size.height = 0.0;
    MinX = CGRectGetMinX(v60);
    v61.origin.x = 0.0;
    v61.origin.y = 0.0;
    v61.size.width = 0.0;
    v61.size.height = 0.0;
    MinY = CGRectGetMinY(v61);
    v62.origin.x = 0.0;
    v62.origin.y = 0.0;
    v62.size.width = 0.0;
    v62.size.height = 0.0;
    MaxX = CGRectGetMaxX(v62);
    v63.origin.x = 0.0;
    v63.origin.y = 0.0;
    v63.size.width = 0.0;
    v63.size.height = 0.0;
    v21 = CGRectGetMinY(v63);
    v64.origin.x = 0.0;
    v64.origin.y = 0.0;
    v64.size.width = 0.0;
    v64.size.height = 0.0;
    v22 = CGRectGetMinX(v64);
    v65.origin.x = 0.0;
    v65.origin.y = 0.0;
    v65.size.width = 0.0;
    v65.size.height = 0.0;
    MaxY = CGRectGetMaxY(v65);
    v66.origin.x = 0.0;
    v66.origin.y = 0.0;
    v66.size.width = 0.0;
    v66.size.height = 0.0;
    v24 = CGRectGetMaxX(v66);
    v67.origin.x = 0.0;
    v67.origin.y = 0.0;
    v67.size.width = 0.0;
    v67.size.height = 0.0;
    v25 = CGRectGetMaxY(v67);
    v26 = v52;
    v27 = v53;
    v28 = *(v53 + 16);
    v29 = v56;
    v28(&v9[v7[10]], v56, v52);
    sub_1D8A13924(a1, &v9[v7[11]], type metadata accessor for DetectionRequest.Originator);
    *&v9[v7[5]] = -1082130432;
    v30 = &v9[v7[6]];
    *v30 = MinX;
    v30[1] = MinY;
    v30[2] = MaxX;
    v30[3] = v21;
    v30[4] = v22;
    v30[5] = MaxY;
    v30[6] = v24;
    v30[7] = v25;
    v31 = &v9[v7[7]];
    *v31 = 0x7974706D65;
    *(v31 + 1) = 0xE500000000000000;
    *&v9[v7[8]] = 0;
    *&v9[v7[9]] = v51;
    v32 = v59;
    v33 = v29;
    v34 = v28;
    v28(v59, v33, v26);
    v35 = (*(v27 + 88))(v32, v26);
    v36 = v27;
    if (v35 == *MEMORY[0x1E69C9BF8])
    {
      (*(v54 + 8))(v16, v50);
      (*(v27 + 8))(v59, v26);
      v37 = swift_allocBox();
      result = sub_1D8A24170(v9, v38, type metadata accessor for AFMResult);
      *v49 = v37 | 0xA000000000000000;
    }

    else
    {
      v40 = v50;
      v41 = v59;
      if (v35 == *MEMORY[0x1E69C9C00])
      {
        (*(v54 + 8))(v16, v50);
        v42 = swift_allocBox();
        sub_1D8A24170(v9, v43, type metadata accessor for AFMResult);
        *v49 = v42 | 0x9000000000000000;
        return (*(v36 + 8))(v41, v26);
      }

      else if (v35 == *MEMORY[0x1E69C9C08])
      {
        (*(v36 + 8))(v59, v26);
        type metadata accessor for AFMError(0);
        sub_1D8A226A0(&qword_1ECA67430, type metadata accessor for AFMError);
        swift_allocError();
        v45 = v44;
        v34(v44, v56, v26);
        (*(v36 + 56))(v45, 0, 2, v26);
        swift_willThrow();
        sub_1D8A226E8(v9, type metadata accessor for AFMResult);
        return (*(v54 + 8))(v16, v40);
      }

      else
      {
        type metadata accessor for AFMError(0);
        sub_1D8A226A0(&qword_1ECA67430, type metadata accessor for AFMError);
        v55 = swift_allocError();
        v47 = v46;
        v34(v46, v56, v26);
        (*(v36 + 56))(v47, 0, 2, v26);
        swift_willThrow();
        sub_1D8A226E8(v9, type metadata accessor for AFMResult);
        (*(v54 + 8))(v16, v40);
        return (*(v36 + 8))(v41, v26);
      }
    }
  }

  else
  {
    sub_1D8A226E8(v12, type metadata accessor for DetectionRequest.Originator);
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1D8B16720();

    v57 = 0xD000000000000017;
    v58 = 0x80000001D8B476F0;
    v48 = DetectionRequest.Originator.description.getter();
    MEMORY[0x1DA71EFA0](v48);

    result = sub_1D8B168C0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8A1526C@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = sub_1D8B13240();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v64 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B14110();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v63 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA674D8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v61 - v9;
  v10 = sub_1D8B14130();
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8B140E0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v61 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA674E0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v65 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v61 - v20;
  v21 = type metadata accessor for DetectionRequest.Annotation(0);
  v73 = *(v21 - 8);
  v74 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v61 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v61 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v71 = &v61 - v31;
  v32 = *(v1 + *(type metadata accessor for DetectionRequest(0) + 24));
  v33 = 1 << *(v32 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v32 + 56);
  v36 = (v33 + 63) >> 6;

  v38 = 0;
  if (v35)
  {
    while (1)
    {
      v39 = v38;
LABEL_8:
      sub_1D8A13924(*(v32 + 48) + *(v73 + 72) * (__clz(__rbit64(v35)) | (v39 << 6)), v30, type metadata accessor for DetectionRequest.Annotation);
      sub_1D8A24170(v30, v27, type metadata accessor for DetectionRequest.Annotation);
      sub_1D8A13924(v27, v24, type metadata accessor for DetectionRequest.Annotation);
      if (swift_getEnumCaseMultiPayload() >= 2)
      {
        break;
      }

      v35 &= v35 - 1;
      sub_1D8A226E8(v24, type metadata accessor for DetectionRequest.Annotation);
      result = sub_1D8A226E8(v27, type metadata accessor for DetectionRequest.Annotation);
      v38 = v39;
      if (!v35)
      {
        goto LABEL_5;
      }
    }

    v43 = v71;
    sub_1D8A24170(v27, v71, type metadata accessor for DetectionRequest.Annotation);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v44 = *v43;
      if (v44 == 1)
      {
        sub_1D8B13630();
        v46 = v76;
        v45 = v77;
        v47 = __swift_project_boxed_opaque_existential_1(v75, v76);
        MEMORY[0x1EEE9AC00](v47);
        v49 = &v61 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v50 + 16))(v49);
        MEMORY[0x1DA71D5B0](v49, v46, *(v45 + 16));
        v51 = v68;
        sub_1D8B14120();
        __swift_destroy_boxed_opaque_existential_1(v75);
        v52 = 0;
        v54 = v66;
        v53 = v67;
        v55 = v69;
        v56 = v70;
      }

      else
      {
        v52 = 1;
        v54 = v66;
        v53 = v67;
        v55 = v69;
        v56 = v70;
        v51 = v68;
      }

      v57 = v65;
      v58 = *(v54 + 56);
      v58(v51, v52, 1, v53);
      sub_1D87A0E38(v51, v57, &qword_1ECA674E0);
      if ((*(v54 + 48))(v57, 1, v53) != 1)
      {
        (*(v54 + 32))(v55, v57, v53);
        v59 = sub_1D8B140F0();
        (*(*(v59 - 8) + 56))(v56, 1, 1, v59);
        (*(v54 + 16))(v17, v55, v53);
        v58(v17, 0, 1, v53);
        sub_1D87A0E38(v56, v62, &qword_1ECA674D8);
        sub_1D8B13230();
        v60 = [objc_opt_self() processInfo];
        [v60 processIdentifier];

        sub_1D8B14100();
        v41 = v72;
        sub_1D8B14360();
        sub_1D87A14E4(v70, &qword_1ECA674D8);
        (*(v54 + 8))(v69, v53);
        sub_1D87A14E4(v68, &qword_1ECA674E0);
        v40 = 0;
        goto LABEL_13;
      }

      sub_1D87A14E4(v51, &qword_1ECA674E0);
      sub_1D87A14E4(v57, &qword_1ECA674E0);
    }

    else
    {
      sub_1D8A226E8(v43, type metadata accessor for DetectionRequest.Annotation);
    }

LABEL_12:
    v40 = 1;
    v41 = v72;
LABEL_13:
    v42 = sub_1D8B14370();
    return (*(*(v42 - 8) + 56))(v41, v40, 1, v42);
  }

LABEL_5:
  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v36)
    {

      goto LABEL_12;
    }

    v35 = *(v32 + 56 + 8 * v39);
    ++v38;
    if (v35)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A15BA0()
{
  v1 = type metadata accessor for DetectionRequest.Annotation(0);
  v26 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v25 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v25 = &v25 - v11;
  v12 = *(v0 + *(type metadata accessor for DetectionRequest(0) + 24));
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      sub_1D8A13924(*(v12 + 48) + *(v26 + 72) * (__clz(__rbit64(v15)) | (v19 << 6)), v10, type metadata accessor for DetectionRequest.Annotation);
      sub_1D8A24170(v10, v7, type metadata accessor for DetectionRequest.Annotation);
      sub_1D8A13924(v7, v4, type metadata accessor for DetectionRequest.Annotation);
      if (swift_getEnumCaseMultiPayload() >= 2)
      {
        break;
      }

      v15 &= v15 - 1;
      sub_1D8A226E8(v4, type metadata accessor for DetectionRequest.Annotation);
      result = sub_1D8A226E8(v7, type metadata accessor for DetectionRequest.Annotation);
      v18 = v19;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v20 = v25;
    sub_1D8A24170(v7, v25, type metadata accessor for DetectionRequest.Annotation);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      if (*v20 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67500);
        v21 = sub_1D8B142D0();
        v22 = *(v21 - 8);
        v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1D8B1AB90;
        (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69C9B88], v21);
        return v24;
      }
    }

    else
    {
      sub_1D8A226E8(v20, type metadata accessor for DetectionRequest.Annotation);
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_5:
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v15 = *(v12 + 56 + 8 * v19);
    ++v18;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A15F34()
{
  v1 = type metadata accessor for DetectionRequest.Annotation(0);
  v29 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v28 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v28 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v28 - v11;
  v12 = *(v0 + *(type metadata accessor for DetectionRequest(0) + 24));
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      sub_1D8A13924(*(v12 + 48) + *(v29 + 72) * (__clz(__rbit64(v15)) | (v19 << 6)), v10, type metadata accessor for DetectionRequest.Annotation);
      sub_1D8A24170(v10, v7, type metadata accessor for DetectionRequest.Annotation);
      sub_1D8A13924(v7, v4, type metadata accessor for DetectionRequest.Annotation);
      if (swift_getEnumCaseMultiPayload() >= 2)
      {
        break;
      }

      v15 &= v15 - 1;
      sub_1D8A226E8(v4, type metadata accessor for DetectionRequest.Annotation);
      result = sub_1D8A226E8(v7, type metadata accessor for DetectionRequest.Annotation);
      v18 = v19;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v20 = v28;
    sub_1D8A24170(v7, v28, type metadata accessor for DetectionRequest.Annotation);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      if (*v20 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA674D0);
        v21 = sub_1D8B14270();
        v22 = *(v21 - 8);
        v23 = *(v22 + 72);
        v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1D8B1AB80;
        v26 = v25 + v24;
        v27 = *(v22 + 104);
        v27(v26, *MEMORY[0x1E69C9B70], v21);
        v27(v26 + v23, *MEMORY[0x1E69C9B68], v21);
        return v25;
      }
    }

    else
    {
      sub_1D8A226E8(v20, type metadata accessor for DetectionRequest.Annotation);
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_5:
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v15 = *(v12 + 56 + 8 * v19);
    ++v18;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A162EC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 64) = a4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB0);
  *(v5 + 88) = swift_task_alloc();
  v6 = sub_1D8B142C0();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  v7 = type metadata accessor for DetectionRequest.Annotation(0);
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v8 = sub_1D8B145B0();
  *(v5 + 152) = v8;
  *(v5 + 160) = *(v8 - 8);
  *(v5 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA674B0);
  *(v5 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA674B8);
  *(v5 + 184) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA674C0);
  *(v5 + 192) = v9;
  *(v5 + 200) = *(v9 - 8);
  *(v5 + 208) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA674C8);
  *(v5 + 216) = v10;
  *(v5 + 224) = *(v10 - 8);
  *(v5 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67468);
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  *(v5 + 264) = swift_task_alloc();
  v11 = sub_1D8B131D0();
  *(v5 + 272) = v11;
  *(v5 + 280) = *(v11 - 8);
  *(v5 + 288) = swift_task_alloc();
  v12 = sub_1D8B145A0();
  *(v5 + 296) = v12;
  *(v5 + 304) = *(v12 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A1673C, 0, 0);
}

uint64_t sub_1D8A1673C()
{
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0E54C8;
  v2 = sub_1D8B0AAA4();
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);
  if (v2)
  {
    v6 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
    swift_beginAccess();
    sub_1D87A0E38(v1 + v6, v5, &qword_1ECA631A8);
    if ((*(v4 + 48))(v5, 1, v3) != 1)
    {
      (*(*(v0 + 280) + 32))(*(v0 + 288), *(v0 + 264), *(v0 + 272));
      goto LABEL_9;
    }
  }

  else
  {
    (*(v4 + 56))(*(v0 + 264), 1, 1, *(v0 + 272));
  }

  v7 = *(v0 + 280);
  v8 = *(v0 + 264);
  v9 = *(v0 + 272);
  _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
  if ((*(v7 + 48))(v8, 1, v9) != 1)
  {
    sub_1D87A14E4(*(v0 + 264), &qword_1ECA631A8);
  }

LABEL_9:
  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  v12 = *(v0 + 256);
  v14 = *(v0 + 200);
  v13 = *(v0 + 208);
  v16 = *(v0 + 184);
  v15 = *(v0 + 192);
  v17 = *(v11 + 56);
  *(v0 + 328) = v17;
  *(v0 + 336) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v17(v12, 1, 1, v10);
  sub_1D8A1526C(v16);
  sub_1D8A15F34();
  sub_1D8B14280();

  sub_1D87A14E4(v16, &qword_1ECA674B8);
  sub_1D8B15F10();
  (*(v14 + 8))(v13, v15);
  *(v0 + 360) = *MEMORY[0x1E69C9C30];
  v18 = MEMORY[0x1E69C9C48];
  *(v0 + 364) = *MEMORY[0x1E69C9C38];
  *(v0 + 368) = *v18;
  *(v0 + 372) = *MEMORY[0x1E69C9C40];
  v19 = MEMORY[0x1E69C9BF8];
  *(v0 + 376) = *MEMORY[0x1E69C9C00];
  *(v0 + 380) = *v19;
  v20 = swift_task_alloc();
  *(v0 + 344) = v20;
  *v20 = v0;
  v20[1] = sub_1D8A16A4C;
  v21 = *(v0 + 216);
  v22 = *(v0 + 176);

  return MEMORY[0x1EEE6DB90](v22, 0, 0, v21, v0 + 40);
}

uint64_t sub_1D8A16A4C()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1D8A17A50;
  }

  else
  {
    v2 = sub_1D8A16B60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A16B60()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v5 = *(v0 + 360);
    v6 = *(v0 + 168);
    (*(v3 + 32))(v6, v1, v2);
    v7 = (*(v3 + 88))(v6, v2);
    if (v7 == v5 || v7 == *(v0 + 364))
    {
      v8 = *(v0 + 380);
      v9 = *(v0 + 328);
      v10 = *(v0 + 296);
      v11 = *(v0 + 304);
      v12 = *(v0 + 256);
      v14 = *(v0 + 160);
      v13 = *(v0 + 168);
      v15 = *(v0 + 152);
      sub_1D87A14E4(v12, &qword_1ECA67468);
      (*(v14 + 96))(v13, v15);
      *v12 = *v13;
LABEL_6:
      (*(v11 + 104))(v12, v8, v10);
      v9(v12, 0, 1, v10);
      v4 = *(v0 + 352);
LABEL_7:
      v16 = *(v0 + 296);
      v17 = *(v0 + 304);
      v18 = *(v0 + 248);
      sub_1D87A0E38(*(v0 + 256), v18, &qword_1ECA67468);
      v19 = (*(v17 + 48))(v18, 1, v16);
      v20 = *(v0 + 248);
      if (v19 != 1)
      {
        (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
        sub_1D87A14E4(v20, &qword_1ECA67468);
        goto LABEL_13;
      }

      sub_1D87A14E4(*(v0 + 248), &qword_1ECA67468);
      goto LABEL_9;
    }

    if (v7 != *(v0 + 368))
    {
      if (v7 != *(v0 + 372))
      {
        v113 = *(v0 + 328);
        v114 = *(v0 + 296);
        v115 = *(v0 + 256);
        v116 = *(v0 + 224);
        v117 = *(v0 + 232);
        v118 = *(v0 + 216);
        v119 = *(v0 + 160);
        v132 = *(v0 + 152);
        v134 = *(v0 + 168);
        type metadata accessor for AFMError(0);
        sub_1D8A226A0(&qword_1ECA67430, type metadata accessor for AFMError);
        v120 = swift_allocError();
        v113(v121, 1, 2, v114);
        v33 = v120;
        swift_willThrow();
        (*(v116 + 8))(v117, v118);
        sub_1D87A14E4(v115, &qword_1ECA67468);
        (*(v119 + 8))(v134, v132);
        goto LABEL_15;
      }

      v8 = *(v0 + 376);
      v9 = *(v0 + 328);
      v10 = *(v0 + 296);
      v11 = *(v0 + 304);
      v12 = *(v0 + 256);
      v91 = *(v0 + 160);
      v90 = *(v0 + 168);
      v92 = *(v0 + 152);
      sub_1D87A14E4(v12, &qword_1ECA67468);
      (*(v91 + 96))(v90, v92);
      v93 = sub_1D8B14530();
      (*(*(v93 - 8) + 32))(v12, v90, v93);
      goto LABEL_6;
    }

    v80 = *(v0 + 168);
    (*(*(v0 + 160) + 96))(v80, *(v0 + 152));
    v81 = *v80;
    v23 = sub_1D8B142E0();
    if (v23 >> 62)
    {
LABEL_77:
      v128 = v23;
      v129 = sub_1D8B16610();
      v23 = v128;
      if (v129)
      {
        goto LABEL_34;
      }
    }

    else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_34:
      v131 = v81;
      if ((v23 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA71FC20](0);
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DB90](v23, v25, v26, v22, v24);
        }
      }

      v82 = *(v0 + 72);

      sub_1D8B14160();

      sub_1D8B14580();
      v83 = MEMORY[0x1E69C9BE0];
      sub_1D8A226A0(&qword_1ECA64400, MEMORY[0x1E69C9BE0]);
      sub_1D8A226A0(&qword_1ECA64408, v83);
      v130 = sub_1D8B15D30();

      v84 = *(v82 + *(type metadata accessor for DetectionRequest(0) + 24));
      v33 = (v84 + 56);
      v85 = -1;
      v86 = -1 << *(v84 + 32);
      if (-v86 < 64)
      {
        v85 = ~(-1 << -v86);
      }

      v87 = v85 & *(v84 + 56);
      v81 = (63 - v86) >> 6;
      v133 = v84;

      v88 = 0;
      v89 = MEMORY[0x1E69E7CC0];
      while (v87)
      {
LABEL_49:
        v96 = *(v0 + 136);
        v95 = *(v0 + 144);
        sub_1D8A13924(*(v133 + 48) + *(*(v0 + 128) + 72) * (__clz(__rbit64(v87)) | (v88 << 6)), v95, type metadata accessor for DetectionRequest.Annotation);
        sub_1D8A13924(v95, v96, type metadata accessor for DetectionRequest.Annotation);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v99 = *(v0 + 136);
        v98 = *(v0 + 144);
        if (EnumCaseMultiPayload)
        {
          sub_1D8A226E8(*(v0 + 136), type metadata accessor for DetectionRequest.Annotation);
          v23 = sub_1D8A226E8(v98, type metadata accessor for DetectionRequest.Annotation);
          v100 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v23 = sub_1D8A226E8(*(v0 + 144), type metadata accessor for DetectionRequest.Annotation);
          v100 = *v99;
        }

        v101 = *(v100 + 16);
        v102 = v89[2];
        v103 = v102 + v101;
        if (__OFADD__(v102, v101))
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v103 > v89[3] >> 1)
        {
          if (v102 <= v103)
          {
            v105 = v102 + v101;
          }

          else
          {
            v105 = v102;
          }

          v89 = sub_1D87C7EE0(isUniquelyReferenced_nonNull_native, v105, 1, v89);
        }

        v87 &= v87 - 1;
        if (*(v100 + 16))
        {
          v106 = (v89[3] >> 1) - v89[2];
          v23 = type metadata accessor for TextDetectorResult(0);
          if (v106 < v101)
          {
            goto LABEL_75;
          }

          swift_arrayInitWithCopy();

          if (v101)
          {
            v107 = v89[2];
            v108 = __OFADD__(v107, v101);
            v109 = v107 + v101;
            if (v108)
            {
              goto LABEL_76;
            }

            v89[2] = v109;
          }
        }

        else
        {

          if (v101)
          {
            goto LABEL_74;
          }
        }
      }

      while (1)
      {
        v94 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          __break(1u);
          goto LABEL_72;
        }

        if (v94 >= v81)
        {
          break;
        }

        v87 = v33[v94];
        ++v88;
        if (v87)
        {
          v88 = v94;
          goto LABEL_49;
        }
      }

      v110 = *(v0 + 352);
      v111 = *(v0 + 288);

      v112 = sub_1D88CB510(v89, v111, 0, v130);
      if (v110)
      {
      }

      else
      {
        v122 = v112;

        if (v122)
        {
          v123 = *(v0 + 380);
          v124 = *(v0 + 328);
          v125 = *(v0 + 296);
          v126 = *(v0 + 304);
          v127 = *(v0 + 256);

          sub_1D87A14E4(v127, &qword_1ECA67468);
          *v127 = v131;
          (*(v126 + 104))(v127, v123, v125);
          v124(v127, 0, 1, v125);
        }

        else
        {
        }
      }

      v4 = 0;
      goto LABEL_7;
    }

LABEL_9:
    v21 = swift_task_alloc();
    *(v0 + 344) = v21;
    *v21 = v0;
    v21[1] = sub_1D8A16A4C;
    v22 = *(v0 + 216);
    v23 = *(v0 + 176);
    v24 = v0 + 40;
    v25 = 0;
    v26 = 0;

    return MEMORY[0x1EEE6DB90](v23, v25, v26, v22, v24);
  }

  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  v4 = *(v0 + 352);
LABEL_13:
  v27 = *(v0 + 296);
  v28 = *(v0 + 304);
  v29 = *(v0 + 240);
  sub_1D87A0E38(*(v0 + 256), v29, &qword_1ECA67468);
  if ((*(v28 + 48))(v29, 1, v27) != 1)
  {
    v56 = *(v0 + 312);
    v57 = *(v0 + 320);
    v58 = *(v0 + 296);
    v59 = *(v0 + 304);
    v60 = *(v0 + 240);
    sub_1D87A14E4(*(v0 + 256), &qword_1ECA67468);
    v61 = *(v59 + 32);
    v61(v56, v60, v58);
    v61(v57, v56, v58);
    goto LABEL_24;
  }

  v30 = *(v0 + 328);
  v31 = *(v0 + 296);
  v32 = *(v0 + 256);
  sub_1D87A14E4(*(v0 + 240), &qword_1ECA67468);
  type metadata accessor for AFMError(0);
  sub_1D8A226A0(&qword_1ECA67430, type metadata accessor for AFMError);
  v33 = swift_allocError();
  v30(v34, 2, 2, v31);
  swift_willThrow();
  sub_1D87A14E4(v32, &qword_1ECA67468);
LABEL_15:
  if (qword_1EE0E4420 != -1)
  {
LABEL_72:
    swift_once();
  }

  v35 = sub_1D8B151E0();
  __swift_project_value_buffer(v35, qword_1EE0E4428);
  v36 = v33;
  v37 = sub_1D8B151C0();
  v38 = sub_1D8B16210();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    v41 = v33;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v42;
    *v40 = v42;
    _os_log_impl(&dword_1D8783000, v37, v38, "Failed to generate an AFM result: %@", v39, 0xCu);
    sub_1D87A14E4(v40, &qword_1ECA63128);
    MEMORY[0x1DA721330](v40, -1, -1);
    MEMORY[0x1DA721330](v39, -1, -1);
  }

  v43 = (v0 + 112);
  v44 = *(v0 + 112);
  v45 = (v0 + 104);
  v46 = *(v0 + 104);
  v48 = (v0 + 96);
  v47 = *(v0 + 96);
  v49 = *(v0 + 80);

  (*(v46 + 16))(v44, v49, v47);
  v50 = (*(v46 + 88))(v44, v47);
  if (v50 == *MEMORY[0x1E69C9B78])
  {
    v51 = *(v0 + 380);
    v52 = *(v0 + 320);
    v54 = *(v0 + 296);
    v53 = *(v0 + 304);
    sub_1D8B14310();
    swift_allocObject();
    v55 = sub_1D8B142F0();

    *v52 = v55;
    (*(v53 + 104))(v52, v51, v54);
  }

  else
  {
    if (v50 != *MEMORY[0x1E69C9B80])
    {
      swift_willThrow();
      goto LABEL_26;
    }

    v62 = *(v0 + 376);
    v63 = *(v0 + 320);
    v65 = *(v0 + 296);
    v64 = *(v0 + 304);
    v66 = *(v0 + 88);
    v67 = sub_1D8B14510();
    (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
    sub_1D8B14500();

    (*(v64 + 104))(v63, v62, v65);
  }

  v4 = 0;
LABEL_24:
  v68 = *(v0 + 72);
  v69 = *(v0 + 64);
  v70 = *(v0 + 48);
  v71 = type metadata accessor for DetectionRequest(0);
  sub_1D8A14A88(v68 + *(v71 + 20), v70, v69);
  if (!v4)
  {
    v76 = *(v0 + 320);
    v78 = *(v0 + 296);
    v77 = *(v0 + 304);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    (*(v77 + 8))(v76, v78);

    v75 = *(v0 + 8);
    goto LABEL_28;
  }

  v43 = (v0 + 320);
  v45 = (v0 + 304);
  v48 = (v0 + 296);
LABEL_26:
  v72 = *v43;
  v73 = *v48;
  v74 = *v45;
  (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
  (*(v74 + 8))(v72, v73);

  v75 = *(v0 + 8);
LABEL_28:

  return v75();
}

uint64_t sub_1D8A17A50()
{
  v1 = *(v0 + 256);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  sub_1D87A14E4(v1, &qword_1ECA67468);
  v2 = *(v0 + 40);
  if (qword_1EE0E4420 != -1)
  {
    swift_once();
  }

  v3 = sub_1D8B151E0();
  __swift_project_value_buffer(v3, qword_1EE0E4428);
  v4 = v2;
  v5 = sub_1D8B151C0();
  v6 = sub_1D8B16210();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D8783000, v5, v6, "Failed to generate an AFM result: %@", v7, 0xCu);
    sub_1D87A14E4(v8, &qword_1ECA63128);
    MEMORY[0x1DA721330](v8, -1, -1);
    MEMORY[0x1DA721330](v7, -1, -1);
  }

  v11 = *(v0 + 112);
  v12 = *(v0 + 104);
  v13 = *(v0 + 96);
  v14 = *(v0 + 80);

  (*(v12 + 16))(v11, v14, v13);
  v15 = (*(v12 + 88))(v11, v13);
  if (v15 == *MEMORY[0x1E69C9B78])
  {
    v16 = *(v0 + 380);
    v17 = *(v0 + 320);
    v19 = *(v0 + 296);
    v18 = *(v0 + 304);
    sub_1D8B14310();
    swift_allocObject();
    v20 = sub_1D8B142F0();

    *v17 = v20;
    (*(v18 + 104))(v17, v16, v19);
LABEL_9:
    v27 = *(v0 + 72);
    v28 = *(v0 + 64);
    v29 = *(v0 + 48);
    v30 = type metadata accessor for DetectionRequest(0);
    sub_1D8A14A88(v27 + *(v30 + 20), v29, v28);
    v31 = *(v0 + 320);
    v33 = *(v0 + 296);
    v32 = *(v0 + 304);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    (*(v32 + 8))(v31, v33);

    v34 = *(v0 + 8);
    goto LABEL_11;
  }

  if (v15 == *MEMORY[0x1E69C9B80])
  {
    v21 = *(v0 + 376);
    v22 = *(v0 + 320);
    v24 = *(v0 + 296);
    v23 = *(v0 + 304);
    v25 = *(v0 + 88);
    v26 = sub_1D8B14510();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
    sub_1D8B14500();

    (*(v23 + 104))(v22, v21, v24);
    goto LABEL_9;
  }

  swift_willThrow();
  v35 = *(v0 + 112);
  v36 = *(v0 + 96);
  v37 = *(v0 + 104);
  (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
  (*(v37 + 8))(v35, v36);

  v34 = *(v0 + 8);
LABEL_11:

  return v34();
}

uint64_t sub_1D8A17FDC(unsigned __int8 *a1)
{
  v3 = sub_1D8B151E0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = *a1;
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_signposter;
  if (qword_1EE0E4420 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_1EE0E4428);
  v13 = *(v4 + 16);
  v13(v9, v12, v3);
  v13((v1 + v11), v9, v3);
  v13(v7, v9, v3);
  type metadata accessor for LoggingSignposter(0);
  sub_1D8B15140();
  (*(v4 + 8))(v9, v3);
  v14 = v1 + OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_preparationSignpostName;
  *v14 = "Tamale.AFMProcessor.batchProcess.preprocessing";
  *(v14 + 8) = 46;
  *(v14 + 16) = 2;
  v15 = v1 + OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_inferenceSignpostName;
  *v15 = "Tamale.AFMProcessor.batchProcess.inference";
  *(v15 + 8) = 42;
  *(v15 + 16) = 2;
  *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_enabledDetectionType) = v10;
  v18 = v10;
  *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_tokenGenerator) = sub_1D8A23250(&v18);
  return v1;
}

uint64_t sub_1D8A18200@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = sub_1D8B14260();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D8B14250();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643C8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67460);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  v21 = sub_1D8B142C0();
  v22 = *(v21 - 8);
  result = MEMORY[0x1EEE9AC00](v21);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v27 = 0uLL;
  if (v26 != *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_enabledDetectionType))
  {
    v29 = 2;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
LABEL_21:
    *a2 = v27;
    *(a2 + 16) = v30;
    *(a2 + 32) = v31;
    *(a2 + 48) = v32;
    *(a2 + 64) = v29;
    return result;
  }

  if (v26 == 10)
  {
    v28 = MEMORY[0x1E69C9B78];
    goto LABEL_7;
  }

  if (v26 == 9)
  {
    v28 = MEMORY[0x1E69C9B80];
LABEL_7:
    (*(v22 + 104))(v18, *v28, v21);
    (*(v22 + 56))(v18, 0, 1, v21);
    goto LABEL_9;
  }

  (*(v22 + 56))(v18, 1, 1, v21);
LABEL_9:
  sub_1D881F6FC(v18, v20, &qword_1ECA67460);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v33 = &qword_1ECA67460;
    v34 = v20;
LABEL_13:
    result = sub_1D87A14E4(v34, v33);
    v29 = 2;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v27 = 0uLL;
    goto LABEL_21;
  }

  (*(v22 + 32))(v25, v20, v21);
  (*(v52 + 104))(v7, *MEMORY[0x1E69C9B60], v53);
  sub_1D8B14290();
  v35 = v50;
  v36 = v49;
  (*(v52 + 8))(v7, v53);
  v37 = v51;
  (*(v35 + 56))(v13, 0, 1, v51);
  sub_1D881F6FC(v13, v36, &qword_1ECA643C8);
  v38 = v48;
  sub_1D87A0E38(v36, v48, &qword_1ECA643C8);
  if ((*(v35 + 48))(v38, 1, v37) == 1)
  {
    sub_1D87A14E4(v36, &qword_1ECA643C8);
    (*(v22 + 8))(v25, v21);
    v34 = v38;
    v33 = &qword_1ECA643C8;
    goto LABEL_13;
  }

  v39 = v47;
  (*(v35 + 32))(v47, v38, v37);
  sub_1D8B141F0();
  v41 = v40;
  result = sub_1D8B141F0();
  if (v42 >= v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = v42;
  }

  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v43 <= -1.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v43 < 1.84467441e19)
  {
    v44 = v43;
    (*(v35 + 8))(v39, v37);
    sub_1D87A14E4(v36, &qword_1ECA643C8);
    (*(v22 + 8))(v25, v21);
    v60 = 0;
    v55 = 0;
    strcpy(v61, "ARGB");
    *&v61[5] = v58;
    v61[7] = v59;
    v62 = v44;
    v45 = *MEMORY[0x1E695F050];
    v64 = *(MEMORY[0x1E695F050] + 16);
    v63 = v45;
    v65 = 1;
    v66 = v56;
    v67 = v57;
    v68 = 1;
    v69 = 0;
    *v70 = *v54;
    *&v70[3] = *&v54[3];
    v71 = 0;
    result = sub_1D88C5438(v61, v72);
    v27 = v72[0];
    v30 = v72[1];
    v31 = v72[2];
    v32 = v72[3];
    v29 = v73;
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D8A18914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA674B8);
  v4[15] = swift_task_alloc();
  v5 = sub_1D8B141A0();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for TextDetectorResult(0);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = type metadata accessor for DetectionRequest.Annotation(0);
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A18AE0, v3, 0);
}

uint64_t sub_1D8A18AE0()
{
  v134 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 96);
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v119 = *(v0 + 160);
  v120 = *(v0 + 168);
  v6 = -1;
  v7 = -1 << *(*(v0 + 96) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v129 = *(v0 + 96);

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  for (i = v9; ; v9 = i)
  {
    v16 = v14;
    if (!v8)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v14 = v16;
LABEL_9:
      v18 = *(v0 + 200);
      v17 = *(v0 + 208);
      v19 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      sub_1D8A13924(*(v129 + 48) + *(v1 + 72) * (v19 | (v14 << 6)), v17, type metadata accessor for DetectionRequest.Annotation);
      sub_1D8A13924(v17, v18, type metadata accessor for DetectionRequest.Annotation);
      if (!swift_getEnumCaseMultiPayload())
      {
        break;
      }

      v20 = *(v0 + 200);
      sub_1D8A226E8(*(v0 + 208), type metadata accessor for DetectionRequest.Annotation);
      isUniquelyReferenced_nonNull_native = sub_1D8A226E8(v20, type metadata accessor for DetectionRequest.Annotation);
      v16 = v14;
      v9 = i;
      if (!v8)
      {
        while (1)
        {
LABEL_6:
          v14 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
            goto LABEL_99;
          }

          if (v14 >= v9)
          {
            break;
          }

          v8 = *(v4 + 8 * v14);
          ++v16;
          if (v8)
          {
            goto LABEL_9;
          }
        }

        v50 = v15[2];
        if (v50)
        {
          v51 = 0;
          v52 = v15 + 4;
          v53 = MEMORY[0x1E69E7CC0];
          while (v51 < v15[2])
          {
            v54 = v15;
            v55 = v52[v51];
            v56 = *(v55 + 16);
            v57 = *(v53 + 16);
            v58 = v57 + v56;
            if (__OFADD__(v57, v56))
            {
              goto LABEL_97;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v58 > *(v53 + 24) >> 1)
            {
              if (v57 <= v58)
              {
                v59 = v57 + v56;
              }

              else
              {
                v59 = v57;
              }

              isUniquelyReferenced_nonNull_native = sub_1D87C8284(isUniquelyReferenced_nonNull_native, v59, 1, v53);
              v53 = isUniquelyReferenced_nonNull_native;
            }

            v15 = v54;
            if (*(v55 + 16))
            {
              if ((*(v53 + 24) >> 1) - *(v53 + 16) < v56)
              {
                goto LABEL_100;
              }

              swift_arrayInitWithCopy();

              if (v56)
              {
                v60 = *(v53 + 16);
                v33 = __OFADD__(v60, v56);
                v61 = v60 + v56;
                if (v33)
                {
                  goto LABEL_101;
                }

                *(v53 + 16) = v61;
              }
            }

            else
            {

              if (v56)
              {
                goto LABEL_98;
              }
            }

            if (v50 == ++v51)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_96;
        }

        v53 = MEMORY[0x1E69E7CC0];
LABEL_60:
        *(v0 + 216) = v53;

        isUniquelyReferenced_nonNull_native = sub_1D8B14390();
        *(v0 + 224) = isUniquelyReferenced_nonNull_native;
        v62 = *(isUniquelyReferenced_nonNull_native + 16);
        *(v0 + 232) = v62;
        if (!v62)
        {
          v64 = MEMORY[0x1E69E7CC0];
LABEL_89:

          *(v0 + 72) = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
          sub_1D88F0E40();
          v105 = sub_1D8B15810();
          v107 = v106;

          v108 = *(v0 + 8);

          return v108(v105, v107);
        }

        v63 = 0;
        *(v0 + 288) = *(*(v0 + 136) + 80);
        *(v0 + 292) = *MEMORY[0x1E69C9B50];
        *(v0 + 296) = *MEMORY[0x1E69C9B40];
        *(v0 + 300) = *MEMORY[0x1E69C9B38];
        *(v0 + 304) = *MEMORY[0x1E69C9B48];
        v64 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          *(v0 + 240) = v63;
          *(v0 + 248) = v64;
          v68 = *(v0 + 224);
          if (v63 >= *(v68 + 16))
          {
            break;
          }

          v69 = *(v0 + 292);
          v71 = *(v0 + 144);
          v70 = *(v0 + 152);
          v73 = *(v0 + 128);
          v72 = *(v0 + 136);
          v74 = *(v72 + 16);
          v74(v70, v68 + ((*(v0 + 288) + 32) & ~*(v0 + 288)) + *(v72 + 72) * v63, v73);
          v74(v71, v70, v73);
          v75 = (*(v72 + 88))(v71, v73);
          if (v75 == v69)
          {
            v76 = *(v0 + 144);
            (*(*(v0 + 136) + 96))(v76, *(v0 + 128));
            v77 = *v76;
            v78 = v76[1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = sub_1D87C8284(0, *(v64 + 2) + 1, 1, v64);
            }

            v80 = *(v64 + 2);
            v79 = *(v64 + 3);
            if (v80 >= v79 >> 1)
            {
              v64 = sub_1D87C8284((v79 > 1), v80 + 1, 1, v64);
            }

            isUniquelyReferenced_nonNull_native = (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
            *(v64 + 2) = v80 + 1;
            v81 = &v64[16 * v80];
            *(v81 + 4) = v77;
            *(v81 + 5) = v78;
          }

          else if (v75 == *(v0 + 296))
          {
            v82 = *(v0 + 104);
            (*(*(v0 + 136) + 96))(*(v0 + 144), *(v0 + 128));
            if (*(v82 + 16))
            {
              v83 = sub_1D8B14380();
              v85 = v84;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v64 = sub_1D87C8284(0, *(v64 + 2) + 1, 1, v64);
              }

              v87 = *(v64 + 2);
              v86 = *(v64 + 3);
              if (v87 >= v86 >> 1)
              {
                v64 = sub_1D87C8284((v86 > 1), v87 + 1, 1, v64);
              }

              v88 = *(v0 + 152);
              v90 = *(v0 + 128);
              v89 = *(v0 + 136);

              isUniquelyReferenced_nonNull_native = (*(v89 + 8))(v88, v90);
              *(v64 + 2) = v87 + 1;
              v91 = &v64[16 * v87];
              *(v91 + 4) = v83;
              *(v91 + 5) = v85;
            }

            else
            {
              (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
            }
          }

          else
          {
            if (v75 == *(v0 + 300))
            {
              v110 = *(v0 + 216);
              v111 = *(v0 + 144);
              v112 = *(v0 + 120);
              (*(*(v0 + 136) + 96))(v111, *(v0 + 128));
              sub_1D8788F40(v111, v0 + 16);
              v113 = *(v0 + 40);
              v114 = *(v0 + 48);
              __swift_project_boxed_opaque_existential_1((v0 + 16), v113);
              *(v0 + 80) = v110;
              v115 = sub_1D8B14370();
              (*(*(v115 - 8) + 56))(v112, 1, 1, v115);
              v116 = swift_task_alloc();
              *(v0 + 256) = v116;
              *v116 = v0;
              v116[1] = sub_1D8A19754;
              v11 = *(v0 + 120);
              isUniquelyReferenced_nonNull_native = v0 + 80;
              v12 = v113;
              v13 = v114;

              return MEMORY[0x1EEE33860](isUniquelyReferenced_nonNull_native, v11, v12, v13);
            }

            if (v75 == *(v0 + 304))
            {
              v65 = *(v0 + 144);
              v66 = *(v0 + 128);
              v67 = *(*(v0 + 136) + 8);
              v67(*(v0 + 152), v66);
              isUniquelyReferenced_nonNull_native = v67(v65, v66);
            }

            else
            {
              *(v0 + 56) = 0;
              *(v0 + 64) = 0xE000000000000000;
              sub_1D8B168A0();
              v92 = *(v0 + 56);
              v93 = *(v0 + 64);
              if (qword_1EE0E4420 != -1)
              {
                swift_once();
              }

              v94 = sub_1D8B151E0();
              __swift_project_value_buffer(v94, qword_1EE0E4428);

              v95 = sub_1D8B151C0();
              v96 = sub_1D8B16210();

              v97 = os_log_type_enabled(v95, v96);
              v98 = *(v0 + 152);
              v99 = *(v0 + 128);
              v100 = *(v0 + 136);
              if (v97)
              {
                v132 = *(v0 + 152);
                v101 = swift_slowAlloc();
                v102 = swift_slowAlloc();
                v133 = v102;
                *v101 = 136315138;
                v103 = sub_1D89AC714(v92, v93, &v133);

                *(v101 + 4) = v103;
                _os_log_impl(&dword_1D8783000, v95, v96, "Unknown prompt type: %s", v101, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v102);
                MEMORY[0x1DA721330](v102, -1, -1);
                MEMORY[0x1DA721330](v101, -1, -1);

                v104 = *(v100 + 8);
                v104(v132, v99);
              }

              else
              {

                v104 = *(v100 + 8);
                v104(v98, v99);
              }

              isUniquelyReferenced_nonNull_native = (v104)(*(v0 + 144), *(v0 + 128));
            }
          }

          v63 = *(v0 + 240) + 1;
          if (v63 == *(v0 + 232))
          {
            goto LABEL_89;
          }
        }

LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }
    }

    v21 = *(v0 + 200);
    v22 = *(*v21 + 16);
    v117 = v15;
    v118 = v1;
    if (v22)
    {
      break;
    }

    v35 = MEMORY[0x1E69E7CC0];
    v36 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v36)
    {
LABEL_29:
      v123 = v4;
      v131 = v35;
      v133 = MEMORY[0x1E69E7CC0];
      sub_1D87F3F54(0, v36, 0);
      v37 = v131;
      v38 = v133;
      v39 = 0;
      v40 = *(v133 + 16);
      v41 = 16 * v40;
      do
      {
        v125 = *(v37 + v39 + 40);
        v127 = *(v37 + v39 + 48);
        v133 = v38;
        v42 = *(v38 + 24);

        if (v40 >= v42 >> 1)
        {
          sub_1D87F3F54((v42 > 1), v40 + 1, 1);
          v38 = v133;
        }

        *(v38 + 16) = v40 + 1;
        v43 = v38 + v41;
        *(v43 + 32) = v125;
        *(v43 + 40) = v127;
        v41 += 16;
        v39 += 40;
        ++v40;
        --v36;
        v37 = v131;
      }

      while (v36);
      v44 = v38;
      sub_1D8A226E8(*(v0 + 208), type metadata accessor for DetectionRequest.Annotation);

      v1 = v118;
      v4 = v123;
    }

    else
    {
LABEL_35:
      v45 = *(v0 + 208);

      sub_1D8A226E8(v45, type metadata accessor for DetectionRequest.Annotation);
      v44 = MEMORY[0x1E69E7CC0];
    }

    v15 = v117;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1D87C9B8C(0, v117[2] + 1, 1, v117);
      v15 = isUniquelyReferenced_nonNull_native;
    }

    v48 = v15[2];
    v47 = v15[3];
    if (v48 >= v47 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1D87C9B8C((v47 > 1), v48 + 1, 1, v15);
      v49 = v44;
      v15 = isUniquelyReferenced_nonNull_native;
    }

    else
    {
      v49 = v44;
    }

    v15[2] = v48 + 1;
    v15[v48 + 4] = v49;
    v4 = v46;
  }

  v122 = *(v119 + 44);
  v124 = *(v0 + 176);
  v23 = *v21 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
  v121 = *(v120 + 72);
  v130 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v126 = v22;
    v25 = v4;
    v26 = *(v0 + 176);
    sub_1D8A13924(v23, v26, type metadata accessor for TextDetectorResult);
    v27 = *(v124 + v122);

    sub_1D8A226E8(v26, type metadata accessor for TextDetectorResult);
    v28 = *(v27 + 16);
    isUniquelyReferenced_nonNull_native = v130;
    v29 = *(v130 + 16);
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v130;
    if (!isUniquelyReferenced_nonNull_native || v30 > *(v130 + 24) >> 1)
    {
      if (v29 <= v30)
      {
        v31 = v29 + v28;
      }

      else
      {
        v31 = v29;
      }

      isUniquelyReferenced_nonNull_native = sub_1D87C8390(isUniquelyReferenced_nonNull_native, v31, 1, v130);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v4 = v25;
    v130 = v13;
    if (*(v27 + 16))
    {
      if ((*(v13 + 24) >> 1) - *(v13 + 16) < v28)
      {
        goto LABEL_104;
      }

      swift_arrayInitWithCopy();

      v24 = v126;
      if (v28)
      {
        v32 = *(v130 + 16);
        v33 = __OFADD__(v32, v28);
        v34 = v32 + v28;
        if (v33)
        {
          goto LABEL_105;
        }

        *(v130 + 16) = v34;
      }
    }

    else
    {

      v24 = v126;
      if (v28)
      {
        goto LABEL_103;
      }
    }

    v23 += v121;
    v22 = v24 - 1;
    if (!v22)
    {

      v1 = v118;
      v35 = v130;
      v36 = *(v130 + 16);
      if (!v36)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return MEMORY[0x1EEE33860](isUniquelyReferenced_nonNull_native, v11, v12, v13);
}

uint64_t sub_1D8A19754(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[33] = a1;
  v4[34] = a2;
  v4[35] = v2;

  if (v2)
  {
    v6 = v4 + 14;
    v5 = v4[14];
    sub_1D87A14E4(v6[1], &qword_1ECA674B8);

    v7 = sub_1D8A1A024;
    v8 = v5;
  }

  else
  {
    v9 = v4[14];
    sub_1D87A14E4(v4[15], &qword_1ECA674B8);
    v7 = sub_1D8A198C4;
    v8 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1D8A198C4()
{
  v64 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 264) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 248);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_45:
      v4 = sub_1D87C8284(0, *(v4 + 2) + 1, 1, v4);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1D87C8284((v5 > 1), v6 + 1, 1, v4);
    }

    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
    *(v4 + 2) = v6 + 1;
    v9 = &v4[16 * v6];
    *(v9 + 4) = v8;
    *(v9 + 5) = v7;
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));

    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v4 = *(v0 + 248);
  }

  v10 = *(v0 + 240) + 1;
  if (v10 == *(v0 + 232))
  {
LABEL_10:

    *(v0 + 72) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
    sub_1D88F0E40();
    v11 = sub_1D8B15810();
    v13 = v12;

    v14 = *(v0 + 8);

    return v14(v11, v13);
  }

  v62 = v4;
  while (1)
  {
    while (1)
    {
      *(v0 + 240) = v10;
      *(v0 + 248) = v4;
      v19 = *(v0 + 224);
      if (v10 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      v20 = *(v0 + 292);
      v22 = *(v0 + 144);
      v21 = *(v0 + 152);
      v24 = *(v0 + 128);
      v23 = *(v0 + 136);
      v25 = *(v23 + 16);
      v25(v21, v19 + ((*(v0 + 288) + 32) & ~*(v0 + 288)) + *(v23 + 72) * v10, v24);
      v25(v22, v21, v24);
      v26 = (*(v23 + 88))(v22, v24);
      if (v26 != v20)
      {
        break;
      }

      v41 = *(v0 + 144);
      (*(*(v0 + 136) + 96))(v41, *(v0 + 128));
      v42 = *v41;
      v43 = v41[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1D87C8284(0, *(v4 + 2) + 1, 1, v4);
      }

      v45 = *(v4 + 2);
      v44 = *(v4 + 3);
      v46 = v4;
      v47 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        v46 = sub_1D87C8284((v44 > 1), v45 + 1, 1, v46);
      }

      (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
LABEL_39:
      *(v46 + 2) = v47;
      v4 = v46;
      v53 = &v46[16 * v45];
      *(v53 + 4) = v42;
      *(v53 + 5) = v43;
      v10 = *(v0 + 240) + 1;
      if (v10 == *(v0 + 232))
      {
        goto LABEL_10;
      }

      v62 = v46;
    }

    if (v26 != *(v0 + 296))
    {
      break;
    }

    v27 = *(v0 + 104);
    (*(*(v0 + 136) + 96))(*(v0 + 144), *(v0 + 128));
    if (*(v27 + 16))
    {
      v42 = sub_1D8B14380();
      v43 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1D87C8284(0, *(v4 + 2) + 1, 1, v4);
      }

      v45 = *(v4 + 2);
      v49 = *(v4 + 3);
      v46 = v4;
      v47 = v45 + 1;
      if (v45 >= v49 >> 1)
      {
        v46 = sub_1D87C8284((v49 > 1), v45 + 1, 1, v46);
      }

      v50 = *(v0 + 152);
      v52 = *(v0 + 128);
      v51 = *(v0 + 136);

      (*(v51 + 8))(v50, v52);
      goto LABEL_39;
    }

    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));

LABEL_15:
    v10 = *(v0 + 240) + 1;
    if (v10 == *(v0 + 232))
    {
      goto LABEL_10;
    }
  }

  if (v26 != *(v0 + 300))
  {
    if (v26 == *(v0 + 304))
    {
      v16 = *(v0 + 144);
      v17 = *(v0 + 128);
      v18 = *(*(v0 + 136) + 8);
      v18(*(v0 + 152), v17);
      v18(v16, v17);
    }

    else
    {
      *(v0 + 56) = 0;
      *(v0 + 64) = 0xE000000000000000;
      sub_1D8B168A0();
      v28 = *(v0 + 56);
      v29 = *(v0 + 64);
      if (qword_1EE0E4420 != -1)
      {
        swift_once();
      }

      v30 = sub_1D8B151E0();
      __swift_project_value_buffer(v30, qword_1EE0E4428);

      v31 = sub_1D8B151C0();
      v32 = sub_1D8B16210();

      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 152);
      v36 = *(v0 + 128);
      v35 = *(v0 + 136);
      if (v33)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v63 = v38;
        *v37 = 136315138;
        v39 = sub_1D89AC714(v28, v29, &v63);

        *(v37 + 4) = v39;
        _os_log_impl(&dword_1D8783000, v31, v32, "Unknown prompt type: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x1DA721330](v38, -1, -1);
        MEMORY[0x1DA721330](v37, -1, -1);
      }

      else
      {
      }

      v40 = *(v35 + 8);
      v40(v34, v36);
      v40(*(v0 + 144), *(v0 + 128));
      v4 = v62;
    }

    goto LABEL_15;
  }

  v54 = *(v0 + 216);
  v55 = *(v0 + 144);
  v56 = *(v0 + 120);
  (*(*(v0 + 136) + 96))(v55, *(v0 + 128));
  sub_1D8788F40(v55, v0 + 16);
  v57 = *(v0 + 40);
  v58 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v57);
  *(v0 + 80) = v54;
  v59 = sub_1D8B14370();
  (*(*(v59 - 8) + 56))(v56, 1, 1, v59);
  v60 = swift_task_alloc();
  *(v0 + 256) = v60;
  *v60 = v0;
  v60[1] = sub_1D8A19754;
  v61 = *(v0 + 120);

  return MEMORY[0x1EEE33860](v0 + 80, v61, v57, v58);
}

uint64_t sub_1D8A1A024()
{
  (*(v0[17] + 8))(v0[19], v0[16]);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D8A1A104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[6] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67478);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1D8B156A0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87A0E38(a1, v6, &qword_1ECA67478);
  v11 = sub_1D8B14D40();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) != 1)
  {
    *(&v19 + 1) = v11;
    v20 = sub_1D8A226A0(&qword_1ECA674F8, MEMORY[0x1E69A14E8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(v12 + 32))(boxed_opaque_existential_1, v6, v11);
    sub_1D8788F40(&v18, v21);
LABEL_6:
    v15 = MEMORY[0x1E69C6388];
    sub_1D8B15660();
    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA674F0);
    v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D8B1AB90;
    (*(v8 + 16))(v17 + v16, v10, v7);
    MEMORY[0x1DA71EB30](v17, v7, v15);

    return (*(v8 + 8))(v10, v7);
  }

  sub_1D87A14E4(v6, &qword_1ECA67478);
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  sub_1D8B14240();
  v21[3] = v7;
  v21[4] = MEMORY[0x1E69C6398];
  __swift_allocate_boxed_opaque_existential_1(v21);
  sub_1D8B15690();
  if (!v2)
  {
    if (*(&v19 + 1))
    {
      sub_1D87A14E4(&v18, &qword_1ECA674E8);
    }

    goto LABEL_6;
  }

  result = __swift_deallocate_boxed_opaque_existential_1(v21);
  if (*(&v19 + 1))
  {
    return sub_1D87A14E4(&v18, &qword_1ECA674E8);
  }

  return result;
}

uint64_t sub_1D8A1A468()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA68B20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for DetectionRequest(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = sub_1D8A22F18(v8, v0);

  v10 = v9[2];
  if (!v10)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_5:
    sub_1D8A305B4(v11, v3);

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_1D87A14E4(v3, &unk_1ECA68B20);
      return 0;
    }

    sub_1D8A24170(v3, v7, type metadata accessor for DetectionRequest);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DB0);
    v15 = type metadata accessor for CVProcessorTaskDescriptor(0);
    v16 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D8B1AB90;
    v17 = v9[2];
    if (v17)
    {
      v18 = sub_1D87F3A18(v9[2], 0);
      v19 = sub_1D881788C(&v24, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v17, v9);
      sub_1D888A84C();
      if (v19 == v17)
      {
LABEL_11:
        sub_1D8A13924(v7, v14 + v16 + *(v15 + 20), type metadata accessor for DetectionRequest);
        *(v14 + v16) = v18;
        sub_1D8A226E8(v7, type metadata accessor for DetectionRequest);
        return v14;
      }

      __break(1u);
    }

    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v21 = v4;
  v23 = v7;
  v11 = sub_1D87F3A18(v10, 0);
  v22 = v5;
  v12 = sub_1D881788C(&v24, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v10, v9);

  result = sub_1D888A84C();
  if (v12 == v10)
  {
    v5 = v22;
    v7 = v23;
    v4 = v21;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A1A7FC(uint64_t *a1, uint64_t a2, double a3)
{
  *(v4 + 168) = v3;
  *(v4 + 160) = a3;
  *(v4 + 152) = a2;
  *(v4 + 176) = type metadata accessor for AFMResult(0);
  *(v4 + 184) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a1;
  *(v4 + 192) = v6;
  *(v4 + 200) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D8A1A8B4, v3, 0);
}

uint64_t sub_1D8A1A8B4()
{
  v1 = *(v0 + 200) >> 60;
  if (v1 == 10)
  {
    v3 = (v0 + 184);
    v7 = *(v0 + 184);
    v8 = swift_projectBox();
    sub_1D8A13924(v8, v7, type metadata accessor for AFMResult);
    sub_1D8B12C00();
    swift_allocObject();
    sub_1D8B12BF0();
    sub_1D8A226A0(qword_1EE0E3FA8, type metadata accessor for AFMResult);
    v5 = sub_1D8B12BE0();
    goto LABEL_5;
  }

  if (v1 == 9)
  {
    v3 = (v0 + 192);
    v2 = *(v0 + 192);
    v4 = swift_projectBox();
    sub_1D8A13924(v4, v2, type metadata accessor for AFMResult);
    sub_1D8B12C00();
    swift_allocObject();
    sub_1D8B12BF0();
    sub_1D8A226A0(qword_1EE0E3FA8, type metadata accessor for AFMResult);
    v5 = sub_1D8B12BE0();
LABEL_5:
    v9 = v6;
    v10 = v5;
    v11 = *(v0 + 160);
    sub_1D8A226E8(*v3, type metadata accessor for AFMResult);

    *(v0 + 208) = v9;
    *(v0 + 216) = v10;
    sub_1D87A1544(v10, v9);
    sub_1D8B16720();
    v12 = CVDetection.DetectionType.description.getter();
    v14 = v13;

    MEMORY[0x1DA71EFA0](45, 0xE100000000000000);
    sub_1D8B13240();
    sub_1D8A226A0(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v15 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v15);

    MEMORY[0x1DA71EFA0](0xD00000000000001ALL, 0x80000001D8B47710);
    *(v0 + 40) = v10;
    *(v0 + 48) = v9;
    *(v0 + 56) = 7633012;
    *(v0 + 64) = 0xE300000000000000;
    *(v0 + 80) = 2;
    *(v0 + 16) = v12;
    *(v0 + 24) = v14;
    *(v0 + 32) = v11;
    sub_1D87A1544(v10, v9);
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v16 = qword_1ECA675B0;
    *(v0 + 224) = qword_1ECA675B0;

    return MEMORY[0x1EEE6DFA0](sub_1D8A1AF64, v16, 0);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D8A1AF64()
{
  v1 = *(v0 + 168);
  sub_1D8A3B1F4(v0 + 16, 7169633, 0xE300000000000000);

  return MEMORY[0x1EEE6DFA0](sub_1D8A1AFE0, v1, 0);
}

uint64_t sub_1D8A1AFE0()
{
  v1 = v0[26];
  v2 = v0[27];
  sub_1D87C12A4(v2, v1);
  sub_1D87C12A4(v2, v1);
  sub_1D87DC9A0((v0 + 2));

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D8A1B06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[50] = a8;
  v9[51] = v8;
  v9[48] = a4;
  v9[49] = a7;
  v9[46] = a2;
  v9[47] = a3;
  v9[45] = a1;
  v10 = sub_1D8B14530();
  v9[52] = v10;
  v9[53] = *(v10 - 8);
  v9[54] = swift_task_alloc();
  v9[55] = swift_task_alloc();
  v9[56] = swift_task_alloc();
  v11 = sub_1D8B145A0();
  v9[57] = v11;
  v9[58] = *(v11 - 8);
  v9[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67468);
  v9[60] = swift_task_alloc();
  v9[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643C0);
  v9[62] = swift_task_alloc();
  v9[63] = swift_task_alloc();
  v12 = sub_1D8B15170();
  v9[64] = v12;
  v9[65] = *(v12 - 8);
  v9[66] = swift_task_alloc();
  v13 = sub_1D8B13F50();
  v9[67] = v13;
  v9[68] = *(v13 - 8);
  v9[69] = swift_task_alloc();
  v14 = sub_1D8B15630();
  v9[70] = v14;
  v9[71] = *(v14 - 8);
  v9[72] = swift_task_alloc();
  v9[73] = swift_task_alloc();
  v9[74] = swift_task_alloc();
  v9[75] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67470);
  v9[76] = v15;
  v9[77] = *(v15 - 8);
  v9[78] = swift_task_alloc();
  v16 = sub_1D8B14150();
  v9[79] = v16;
  v9[80] = *(v16 - 8);
  v9[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67478);
  v9[82] = swift_task_alloc();
  v17 = sub_1D8B15680();
  v9[83] = v17;
  v9[84] = *(v17 - 8);
  v9[85] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67480);
  v9[86] = swift_task_alloc();
  v18 = sub_1D8B159C0();
  v9[87] = v18;
  v9[88] = *(v18 - 8);
  v9[89] = swift_task_alloc();
  v9[90] = type metadata accessor for DetectionRequest.Originator(0);
  v9[91] = swift_task_alloc();
  v9[92] = swift_task_alloc();
  v19 = sub_1D8B13240();
  v9[93] = v19;
  v9[94] = *(v19 - 8);
  v9[95] = swift_task_alloc();
  v9[96] = swift_task_alloc();
  v20 = sub_1D8B143A0();
  v9[97] = v20;
  v9[98] = *(v20 - 8);
  v9[99] = swift_task_alloc();
  v21 = sub_1D8B15130();
  v9[100] = v21;
  v9[101] = *(v21 - 8);
  v9[102] = swift_task_alloc();
  v9[103] = swift_task_alloc();
  v9[104] = swift_task_alloc();
  v9[105] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67488);
  v9[106] = v22;
  v9[107] = *(v22 - 8);
  v9[108] = swift_task_alloc();
  v9[109] = swift_task_alloc();
  v23 = sub_1D8B14250();
  v9[110] = v23;
  v9[111] = *(v23 - 8);
  v9[112] = swift_task_alloc();
  v24 = sub_1D8B14260();
  v9[113] = v24;
  v9[114] = *(v24 - 8);
  v9[115] = swift_task_alloc();
  v9[116] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67460);
  v9[117] = swift_task_alloc();
  v9[118] = swift_task_alloc();
  v25 = sub_1D8B142C0();
  v9[119] = v25;
  v9[120] = *(v25 - 8);
  v9[121] = swift_task_alloc();
  v9[122] = swift_task_alloc();
  v26 = type metadata accessor for DetectionRequest(0);
  v9[123] = v26;
  v9[124] = *(v26 - 8);
  v9[125] = swift_task_alloc();
  v9[126] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A1B924, v8, 0);
}