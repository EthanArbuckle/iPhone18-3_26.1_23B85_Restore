uint64_t sub_1D89EC3DC(uint64_t a1)
{
  v2 = sub_1D8A01398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualLookupClassifier.Result.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A01398();
  sub_1D8B16DD0();
  LOBYTE(v13) = 0;
  sub_1D8B13240();
  sub_1D8A011DC(&qword_1ECA637D8, MEMORY[0x1E69695A8]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for VisualLookupClassifier.Result(0);
    LOBYTE(v13) = 1;
    type metadata accessor for GenericParseDataResult();
    sub_1D8A011DC(&qword_1ECA66FD0, type metadata accessor for GenericParseDataResult);
    sub_1D8B16AE0();
    v13 = *(v3 + v9[6]);
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FD8);
    sub_1D881CF20(&qword_1ECA66FE0, &qword_1ECA66FD8);
    sub_1D8B16A80();
    v13 = *(v3 + v9[7]);
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FE8);
    sub_1D8A015B8(&qword_1ECA66FF0, &qword_1ECA66FF8);
    sub_1D8B16AE0();
    v13 = *(v3 + v9[8]);
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA637A0);
    sub_1D8A013EC(&qword_1ECA637A8, &qword_1ECA637B0);
    sub_1D8B16A80();
    LOBYTE(v13) = 5;
    type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
    sub_1D8A011DC(&qword_1ECA67000, type metadata accessor for VisualLookupClassifier.Result.SearchState);
    sub_1D8B16AE0();
    LOBYTE(v13) = 6;
    sub_1D8B16A60();
    LOBYTE(v13) = 7;
    sub_1D8B16AA0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t VisualLookupClassifier.Result.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for VisualIntelligenceLookupResult(0);
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B13CF0();
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B13240();
  sub_1D8A011DC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v9 = type metadata accessor for VisualLookupClassifier.Result(0);
  GenericParseDataResult.hash(into:)(a1);
  v33 = v9;
  v10 = *(v1 + *(v9 + 24));
  v31 = v5;
  sub_1D8B16D40();
  if (v10)
  {
    sub_1D8B16410();
  }

  v11 = *(v33 + 28);
  v34 = v1;
  v12 = *(v1 + v11);
  MEMORY[0x1DA720210](*(v12 + 16));
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(v32 + 16);
    v15 = v12 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v16 = *(v32 + 72);
    v17 = (v32 + 8);
    do
    {
      v14(v8, v15, v6);
      sub_1D8A011DC(&qword_1ECA65FD0, MEMORY[0x1E69E0420]);
      sub_1D8B157A0();
      (*v17)(v8, v6);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  v18 = v33;
  v19 = *(v34 + *(v33 + 32));
  if (v19)
  {
    sub_1D8B16D40();
    MEMORY[0x1DA720210](*(v19 + 16));
    v20 = *(v19 + 16);
    v21 = v31;
    if (v20)
    {
      v22 = v19 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v23 = *(v30 + 72);
      do
      {
        sub_1D8A01488(v22, v21, type metadata accessor for VisualIntelligenceLookupResult);
        VisualIntelligenceLookupResult.hash(into:)(a1);
        sub_1D8A014F0(v21, type metadata accessor for VisualIntelligenceLookupResult);
        v22 += v23;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    sub_1D8B16D40();
  }

  v24 = v34;
  VisualLookupClassifier.Result.SearchState.hash(into:)();
  v25 = (v24 + *(v18 + 40));
  if (v25[1])
  {
    sub_1D8B16D40();
  }

  else
  {
    v26 = *v25;
    sub_1D8B16D40();
    if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    MEMORY[0x1DA720250](v27);
  }

  return sub_1D8B16D40();
}

uint64_t sub_1D89ECC60(void (*a1)(_BYTE *))
{
  sub_1D8B16D20();
  a1(v3);
  return sub_1D8B16D80();
}

uint64_t VisualLookupClassifier.Result.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GenericParseDataResult();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B13240();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67008);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v27 - v9;
  v11 = type metadata accessor for VisualLookupClassifier.Result(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8A01398();
  v34 = v10;
  v15 = v36;
  sub_1D8B16DB0();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v16 = v31;
    v17 = v13;
    LOBYTE(v39) = 0;
    sub_1D8A011DC(&unk_1ECA689C0, MEMORY[0x1E69695A8]);
    v18 = v32;
    sub_1D8B16A10();
    v19 = *(v16 + 32);
    v32 = v7;
    v19(v17, v18, v7);
    LOBYTE(v39) = 1;
    sub_1D8A011DC(&qword_1ECA67010, type metadata accessor for GenericParseDataResult);
    sub_1D8B16A10();
    v36 = v17;
    sub_1D8A01550(v6, v17 + v11[5], type metadata accessor for GenericParseDataResult);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FD8);
    v38 = 2;
    sub_1D881CF20(&qword_1ECA67018, &qword_1ECA66FD8);
    v27 = 0;
    sub_1D8B169B0();
    *(v17 + v11[6]) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FE8);
    v38 = 3;
    sub_1D8A015B8(&qword_1ECA67020, &qword_1ECA67028);
    sub_1D8B16A10();
    v20 = v33;
    *(v17 + v11[7]) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA637A0);
    v38 = 4;
    sub_1D8A013EC(&qword_1ECA67030, &qword_1ECA67038);
    sub_1D8B169B0();
    *(v17 + v11[8]) = v39;
    LOBYTE(v39) = 5;
    sub_1D8A011DC(&qword_1ECA67040, type metadata accessor for VisualLookupClassifier.Result.SearchState);
    v21 = v30;
    sub_1D8B16A10();
    sub_1D8A01550(v21, v17 + v11[9], type metadata accessor for VisualLookupClassifier.Result.SearchState);
    LOBYTE(v39) = 6;
    v23 = sub_1D8B16990();
    v24 = v17 + v11[10];
    *v24 = v23;
    *(v24 + 8) = v25 & 1;
    LOBYTE(v39) = 7;
    v26 = sub_1D8B169D0();
    (*(v20 + 8))(v34, v35);
    *(v17 + v11[11]) = v26 & 1;
    sub_1D8A01488(v17, v28, type metadata accessor for VisualLookupClassifier.Result);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return sub_1D8A014F0(v17, type metadata accessor for VisualLookupClassifier.Result);
  }
}

uint64_t sub_1D89ED528(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1D8B16D20();
  a3(v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D89ED58C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D8B16D20();
  a4(v6);
  return sub_1D8B16D80();
}

uint64_t sub_1D89ED604(uint64_t a1)
{
  v2 = sub_1D8B13CF0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v34 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = a1 + v34;
  v11 = *(v3 + 72);
  sub_1D8B13CE0();
  v13 = v12;
  v16 = *(v3 + 16);
  v15 = v3 + 16;
  v14 = v16;
  v30 = (v15 - 8);
  v35 = (v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v32 = v6;
  v33 = v15;
  v31 = v16;
  v16(v8, v10, v2);
  while (1)
  {
    sub_1D8B13CE0();
    if (v13 >= v18 + 10.0)
    {
      (*v30)(v8, v2);
    }

    else
    {
      v19 = v11;
      v20 = *v35;
      (*v35)(v6, v8, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F4904(0, *(v17 + 16) + 1, 1);
        v17 = v36;
      }

      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D87F4904(v22 > 1, v23 + 1, 1);
        v17 = v36;
      }

      *(v17 + 16) = v23 + 1;
      v24 = v17 + v34 + v23 * v19;
      v6 = v32;
      v20(v24, v32, v2);
      v11 = v19;
      v14 = v31;
    }

    v10 += v11;
    if (!--v9)
    {
      break;
    }

    v14(v8, v10, v2);
  }

  v25 = *(v17 + 16);
  if (v25 >= 0xB)
  {
    sub_1D8AB5DEC(v17, v17 + v34, v25 - 10, (2 * v25) | 1);
    v27 = v26;

    return v27;
  }

  return v17;
}

uint64_t sub_1D89ED8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v261 = a2;
  v3 = sub_1D8B13240();
  v256 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v240 = v221 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v241 = v221 - v6;
  v7 = type metadata accessor for CVBundle(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v264 = v221 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v246 = v221 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v244 = v221 - v12;
  v255 = type metadata accessor for AFMResult(0);
  v13 = MEMORY[0x1EEE9AC00](v255);
  v251 = v221 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v250 = v221 - v15;
  v16 = type metadata accessor for GenericParseDataResult();
  v262 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v260 = v221 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67168);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v249 = v221 - v19;
  v257 = type metadata accessor for GroundedParseDetectorResult(0);
  v248 = *(v257 - 1);
  v20 = MEMORY[0x1EEE9AC00](v257);
  v243 = v221 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v259 = v221 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v252 = v221 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v245 = v221 - v26;
  v27 = type metadata accessor for CVTrackSnapshot(0);
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v236 = v221 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v221 - v31;
  v33 = type metadata accessor for CVBundle.BundleType(0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v239 = v221 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v242 = v221 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v235 = v221 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v41 = v221 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20);
  v43 = MEMORY[0x1EEE9AC00](v42 - 8);
  v237 = v221 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v238 = v221 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v233 = v221 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v234 = v221 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = v221 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v55 = v221 - v54;
  v253 = a1;
  sub_1D8A01488(a1, v41, type metadata accessor for CVBundle.BundleType);
  v247 = v33;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v254 = v3;
  if (EnumCaseMultiPayload == 1)
  {
    v57 = *(v28 + 56);
    (v57)(v53, 1, 1, v27);
    (*(v256 + 8))(v41, v3);
  }

  else
  {
    sub_1D8A01550(v41, v53, type metadata accessor for CVTrackSnapshot);
    v57 = *(v28 + 56);
    (v57)(v53, 0, 1, v27);
  }

  v58 = v28;
  sub_1D881F6FC(v53, v55, &qword_1ECA63E20);
  v61 = *(v28 + 48);
  v59 = v28 + 48;
  v60 = v61;
  if (v61(v55, 1, v27) == 1)
  {
    sub_1D87A14E4(v55, &qword_1ECA63E20);
    return v262[7](v261, 1, 1, v16);
  }

  v62 = *&v55[*(v27 + 24)];

  sub_1D8A014F0(v55, type metadata accessor for CVTrackSnapshot);
  v269 = v62;
  CVDetection.detectionType.getter(&v266);

  if (v266)
  {
    return v262[7](v261, 1, 1, v16);
  }

  v221[0] = v60;
  v221[1] = v59;
  v232 = v16;
  v227 = sub_1D891DE68();
  v64 = *(v227 + 16);
  v65 = v264;
  v222 = v27;
  v221[2] = v58;
  v226 = v57;
  if (!v64)
  {

    v69 = MEMORY[0x1E69E7CC0];
    v90 = v262;
    v91 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v91)
    {
      goto LABEL_27;
    }

LABEL_65:

    v142 = v249;
    (*(v248 + 56))(v249, 1, 1, v257);
    goto LABEL_67;
  }

  v66 = *(v27 + 24);
  v67 = v227 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
  v68 = *(v58 + 72);
  v223 = (v256 + 16);
  v69 = MEMORY[0x1E69E7CC0];
  v225 = v66;
  v224 = v68;
  v70 = v260;
  do
  {
    sub_1D8A01488(v67, v32, type metadata accessor for CVTrackSnapshot);
    v71 = *&v32[v66];
    v72 = v71 >> 60;
    if ((v71 >> 60) > 6 || ((v72 - 2) >= 5 ? (v73 = v72 == 0) : (v73 = 1), v73))
    {
      sub_1D8A014F0(v32, type metadata accessor for CVTrackSnapshot);
    }

    else
    {
      v263 = v69;
      v74 = swift_projectBox();
      v75 = v252;
      sub_1D8A01488(v74, v252, type metadata accessor for GroundedParseDetectorResult);

      sub_1D8A014F0(v32, type metadata accessor for CVTrackSnapshot);
      v76 = v259;
      sub_1D8A01550(v75, v259, type metadata accessor for GroundedParseDetectorResult);
      (*v223)(v70, v76, v254);
      v77 = v257;
      v78 = *(v76 + v257[9]);
      v79 = *(v76 + v257[7]);
      v80 = v232;
      sub_1D8A01488(v76 + v257[13], v70 + v232[7], type metadata accessor for VisualUnderstandingContainer);
      v81 = v77[11];
      LODWORD(v258) = *(v76 + v77[10]);
      v82 = v77[16];
      v228 = *(v76 + v77[15]);
      v83 = (v76 + v77[12]);
      v84 = v83[1];
      v229 = *v83;
      v85 = *(v76 + v81 + 8);
      v230 = *(v76 + v81);
      v231 = *(v76 + v82);

      sub_1D8A014F0(v76, type metadata accessor for GroundedParseDetectorResult);
      *(v70 + v80[5]) = v78;
      *(v70 + v80[6]) = v79;
      LOBYTE(v76) = v258;
      *(v70 + v80[8]) = v258;
      *(v70 + v80[9]) = v228;
      v86 = (v70 + v80[10]);
      *v86 = v229;
      v86[1] = v84;
      v87 = (v70 + v80[11]);
      *v87 = v230;
      v87[1] = v85;
      *(v70 + v80[12]) = v231;
      sub_1D8A014F0(v70, type metadata accessor for GenericParseDataResult);
      if (v76)
      {
        v69 = v263;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_1D87C7F54(0, *(v69 + 2) + 1, 1, v69);
        }

        v66 = v225;
        v89 = *(v69 + 2);
        v88 = *(v69 + 3);
        if (v89 >= v88 >> 1)
        {
          v69 = sub_1D87C7F54((v88 > 1), v89 + 1, 1, v69);
        }

        *(v69 + 2) = v89 + 1;
        *&v69[8 * v89 + 32] = v71;
      }

      else
      {

        v69 = v263;
        v66 = v225;
      }

      v68 = v224;
    }

    v67 += v68;
    --v64;
  }

  while (v64);

  v90 = v262;
  v65 = v264;
  v57 = v226;
  v91 = *(v69 + 2);
  if (!v91)
  {
    goto LABEL_65;
  }

LABEL_27:
  v92 = *(v69 + 4);
  v260 = v69 + 32;
  v93 = v92 & 0xFFFFFFFFFFFFFFFLL;

  if (v91 != 1)
  {
    v94 = 1;
    v263 = v69;
    v230 = v91 - 1;
    while (2)
    {
      v231 = v92;
      v258 = v92 & 0xFFFFFFFFFFFFFFFLL;
      v259 = v92 >> 60;
      v57 = v94;
      while (1)
      {
        if (v57 >= *(v69 + 2))
        {
          __break(1u);
          goto LABEL_94;
        }

        v92 = *&v260[8 * v57];
        v90 = (v57 + 1);
        switch(v259)
        {
          case 1uLL:
            v109 = swift_projectBox();
            v267 = v257;
            v268 = sub_1D8A011DC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v110 = type metadata accessor for GroundedParseDetectorResult;
            v111 = v109;
            goto LABEL_44;
          case 2uLL:
            v104 = type metadata accessor for MetaDetectionResult();
            v96 = swift_projectBox();
            v267 = v104;
            v268 = sub_1D8A011DC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for MetaDetectionResult;
            goto LABEL_43;
          case 3uLL:
          case 8uLL:
            v95 = type metadata accessor for ObjectDetectorResult(0);
            v96 = swift_projectBox();
            v267 = v95;
            v268 = sub_1D8A011DC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for ObjectDetectorResult;
            goto LABEL_43;
          case 4uLL:
            v112 = type metadata accessor for ParseDetectorResult(0);
            v96 = swift_projectBox();
            v267 = v112;
            v268 = sub_1D8A011DC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for ParseDetectorResult;
            goto LABEL_43;
          case 5uLL:
            v113 = type metadata accessor for TextDetectorResult(0);
            v96 = swift_projectBox();
            v267 = v113;
            v268 = sub_1D8A011DC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for TextDetectorResult;
            goto LABEL_43;
          case 6uLL:
          case 7uLL:
            v99 = type metadata accessor for StreamingBarcodeDetectorResult(0);
            v96 = swift_projectBox();
            v267 = v99;
            v268 = sub_1D8A011DC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for StreamingBarcodeDetectorResult;
            goto LABEL_43;
          case 9uLL:
          case 0xAuLL:
            v100 = swift_projectBox();
            v101 = v250;
            sub_1D8A01488(v100, v250, type metadata accessor for AFMResult);
            v267 = v255;
            v268 = sub_1D8A011DC(&qword_1EE0E3F80, type metadata accessor for AFMResult);
            v102 = __swift_allocate_boxed_opaque_existential_1(&v266);
            sub_1D8A01550(v101, v102, type metadata accessor for AFMResult);
            break;
          case 0xBuLL:
            v103 = type metadata accessor for SyntheticDetectionResult();
            v96 = swift_projectBox();
            v267 = v103;
            v268 = sub_1D8A011DC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for SyntheticDetectionResult;
            goto LABEL_43;
          case 0xCuLL:
            v105 = type metadata accessor for GroundedParseEmbeddingsResult(0);
            v96 = swift_projectBox();
            v267 = v105;
            v268 = sub_1D8A011DC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for GroundedParseEmbeddingsResult;
            goto LABEL_43;
          case 0xDuLL:
            v114 = type metadata accessor for GroundedParseClassificationsResult(0);
            v96 = swift_projectBox();
            v267 = v114;
            v268 = sub_1D8A011DC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_43:
            v110 = v98;
            v111 = v96;
LABEL_44:
            sub_1D8A01488(v111, boxed_opaque_existential_1, v110);
            break;
          default:
            v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
            v107 = swift_projectBox();
            v267 = v106;
            v268 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
            v108 = __swift_allocate_boxed_opaque_existential_1(&v266);
            sub_1D87A0E38(v107, v108, &qword_1ECA67750);
            break;
        }

        v115 = v267;
        v116 = v268;
        __swift_project_boxed_opaque_existential_1(&v266, v267);
        v117 = *(v116 + 56);
        v93 = v92 & 0xFFFFFFFFFFFFFFFLL;

        v118 = v117(v115, v116);
        __swift_destroy_boxed_opaque_existential_1(&v266);
        v65 = v264;
        switch(v92 >> 60)
        {
          case 1uLL:
            v133 = swift_projectBox();
            v267 = v257;
            v268 = sub_1D8A011DC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v134 = type metadata accessor for GroundedParseDetectorResult;
            v135 = v133;
            goto LABEL_58;
          case 2uLL:
            v128 = type metadata accessor for MetaDetectionResult();
            v120 = swift_projectBox();
            v267 = v128;
            v268 = sub_1D8A011DC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for MetaDetectionResult;
            goto LABEL_57;
          case 3uLL:
          case 8uLL:
            v119 = type metadata accessor for ObjectDetectorResult(0);
            v120 = swift_projectBox();
            v267 = v119;
            v268 = sub_1D8A011DC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for ObjectDetectorResult;
            goto LABEL_57;
          case 4uLL:
            v136 = type metadata accessor for ParseDetectorResult(0);
            v120 = swift_projectBox();
            v267 = v136;
            v268 = sub_1D8A011DC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for ParseDetectorResult;
            goto LABEL_57;
          case 5uLL:
            v137 = type metadata accessor for TextDetectorResult(0);
            v120 = swift_projectBox();
            v267 = v137;
            v268 = sub_1D8A011DC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for TextDetectorResult;
            goto LABEL_57;
          case 6uLL:
          case 7uLL:
            v123 = type metadata accessor for StreamingBarcodeDetectorResult(0);
            v120 = swift_projectBox();
            v267 = v123;
            v268 = sub_1D8A011DC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for StreamingBarcodeDetectorResult;
            goto LABEL_57;
          case 9uLL:
          case 0xAuLL:
            v124 = swift_projectBox();
            v125 = v251;
            sub_1D8A01488(v124, v251, type metadata accessor for AFMResult);
            v267 = v255;
            v268 = sub_1D8A011DC(&qword_1EE0E3F80, type metadata accessor for AFMResult);
            v126 = __swift_allocate_boxed_opaque_existential_1(&v266);
            sub_1D8A01550(v125, v126, type metadata accessor for AFMResult);
            break;
          case 0xBuLL:
            v127 = type metadata accessor for SyntheticDetectionResult();
            v120 = swift_projectBox();
            v267 = v127;
            v268 = sub_1D8A011DC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for SyntheticDetectionResult;
            goto LABEL_57;
          case 0xCuLL:
            v129 = type metadata accessor for GroundedParseEmbeddingsResult(0);
            v120 = swift_projectBox();
            v267 = v129;
            v268 = sub_1D8A011DC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for GroundedParseEmbeddingsResult;
            goto LABEL_57;
          case 0xDuLL:
            v138 = type metadata accessor for GroundedParseClassificationsResult(0);
            v120 = swift_projectBox();
            v267 = v138;
            v268 = sub_1D8A011DC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_57:
            v134 = v122;
            v135 = v120;
LABEL_58:
            sub_1D8A01488(v135, v121, v134);
            break;
          default:
            v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
            v131 = swift_projectBox();
            v267 = v130;
            v268 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
            v132 = __swift_allocate_boxed_opaque_existential_1(&v266);
            sub_1D87A0E38(v131, v132, &qword_1ECA67750);
            break;
        }

        v139 = v267;
        v140 = v268;
        __swift_project_boxed_opaque_existential_1(&v266, v267);
        v141 = (*(v140 + 56))(v139, v140);
        __swift_destroy_boxed_opaque_existential_1(&v266);
        if (v118 < v141)
        {
          break;
        }

        ++v57;
        v69 = v263;
        if (v91 == v90)
        {
          v92 = v231;
          v90 = v262;
          goto LABEL_66;
        }
      }

      v94 = v57 + 1;
      v90 = v262;
      v69 = v263;
      if (v230 != v57)
      {
        continue;
      }

      break;
    }
  }

LABEL_66:

  v266 = v92;
  CVDetection.detection.getter(&v269);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
  v142 = v249;
  v143 = v257;
  v144 = swift_dynamicCast();
  v145 = v248;
  (*(v248 + 56))(v142, v144 ^ 1u, 1, v143);
  v146 = (*(v145 + 48))(v142, 1, v143);
  v57 = v226;
  if (v146 != 1)
  {
    v157 = v245;
    sub_1D8A01550(v142, v245, type metadata accessor for GroundedParseDetectorResult);
    v158 = v254;
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v159 = sub_1D8B151E0();
    __swift_project_value_buffer(v159, qword_1EE0E4520);
    v160 = v244;
    sub_1D8A01488(v253, v244, type metadata accessor for CVBundle);
    v161 = v243;
    sub_1D8A01488(v157, v243, type metadata accessor for GroundedParseDetectorResult);
    v162 = sub_1D8B151C0();
    v163 = sub_1D8B16200();
    v164 = os_log_type_enabled(v162, v163);
    v165 = v256;
    if (v164)
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v266 = v167;
      *v166 = 136315394;
      v168 = v235;
      sub_1D8A01488(v160, v235, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v169 = v233;
        v170 = v222;
        v226(v233, 1, 1, v222);
        (*(v165 + 8))(v168, v158);
      }

      else
      {
        v169 = v233;
        sub_1D8A01550(v168, v233, type metadata accessor for CVTrackSnapshot);
        v170 = v222;
        v226(v169, 0, 1, v222);
      }

      v191 = v234;
      sub_1D881F6FC(v169, v234, &qword_1ECA63E20);
      if ((v221[0])(v191, 1, v170) == 1)
      {
        v192 = 1701736302;
        sub_1D87A14E4(v191, &qword_1ECA63E20);
        v193 = 0xE400000000000000;
      }

      else
      {
        v194 = *(v191 + *(v170 + 24));

        sub_1D8A014F0(v191, type metadata accessor for CVTrackSnapshot);
        v265 = v194;
        CVDetection.detection.getter(&v269);
        v195 = v270;
        v196 = v271;
        __swift_project_boxed_opaque_existential_1(&v269, v270);
        v192 = (*(v196 + 72))(v195, v196);
        v193 = v197;

        __swift_destroy_boxed_opaque_existential_1(&v269);
      }

      sub_1D8A014F0(v244, type metadata accessor for CVBundle);
      v198 = sub_1D89AC714(v192, v193, &v266);

      *(v166 + 4) = v198;
      *(v166 + 12) = 2080;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v199 = v243;
      v200 = sub_1D8B16B50();
      v202 = v201;
      sub_1D8A014F0(v199, type metadata accessor for GroundedParseDetectorResult);
      v203 = sub_1D89AC714(v200, v202, &v266);

      *(v166 + 14) = v203;
      _os_log_impl(&dword_1D8783000, v162, v163, "Returned bestChild %s (%s).", v166, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v167, -1, -1);
      MEMORY[0x1DA721330](v166, -1, -1);

      v157 = v245;
    }

    else
    {

      sub_1D8A014F0(v161, type metadata accessor for GroundedParseDetectorResult);
      sub_1D8A014F0(v160, type metadata accessor for CVBundle);
    }

    v204 = v252;
    sub_1D8A01550(v157, v252, type metadata accessor for GroundedParseDetectorResult);
    v205 = v261;
    (*(v165 + 16))(v261, v204, v158);
    v206 = v257;
    v207 = *(v204 + v257[9]);
    v208 = *(v204 + v257[7]);
    v209 = v232;
    sub_1D8A01488(v204 + v257[13], v205 + v232[7], type metadata accessor for VisualUnderstandingContainer);
    v210 = v206[11];
    LODWORD(v264) = *(v204 + v206[10]);
    v211 = v206[16];
    v212 = *(v204 + v206[15]);
    v213 = (v204 + v206[12]);
    v215 = *v213;
    v214 = v213[1];
    v217 = *(v204 + v210);
    v216 = *(v204 + v210 + 8);
    v218 = *(v204 + v211);

    sub_1D8A014F0(v204, type metadata accessor for GroundedParseDetectorResult);
    *(v205 + v209[5]) = v207;
    *(v205 + v209[6]) = v208;
    *(v205 + v209[8]) = v264;
    *(v205 + v209[9]) = v212;
    v219 = (v205 + v209[10]);
    *v219 = v215;
    v219[1] = v214;
    v220 = (v205 + v209[11]);
    *v220 = v217;
    v220[1] = v216;
    *(v205 + v209[12]) = v218;
    return v262[7](v205, 0, 1, v209);
  }

LABEL_67:
  sub_1D87A14E4(v142, &qword_1ECA67168);
  v93 = v254;
  if (qword_1EE0E4518 != -1)
  {
LABEL_94:
    swift_once();
  }

  v147 = sub_1D8B151E0();
  __swift_project_value_buffer(v147, qword_1EE0E4520);
  v148 = v253;
  v149 = v246;
  sub_1D8A01488(v253, v246, type metadata accessor for CVBundle);
  sub_1D8A01488(v148, v65, type metadata accessor for CVBundle);
  v150 = sub_1D8B151C0();
  v151 = sub_1D8B16200();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v263 = swift_slowAlloc();
    v266 = v263;
    *v152 = 136315394;
    v153 = v242;
    sub_1D8A01488(v149, v242, type metadata accessor for CVBundle.BundleType);
    v154 = v149;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v155 = v237;
      v156 = v222;
      (v57)(v237, 1, 1, v222);
      (*(v256 + 8))(v153, v93);
    }

    else
    {
      v155 = v237;
      sub_1D8A01550(v153, v237, type metadata accessor for CVTrackSnapshot);
      v156 = v222;
      (v57)(v155, 0, 1, v222);
    }

    v171 = v238;
    sub_1D881F6FC(v155, v238, &qword_1ECA63E20);
    if ((v221[0])(v171, 1, v156) == 1)
    {
      v172 = 1701736302;
      sub_1D87A14E4(v171, &qword_1ECA63E20);
      v173 = 0xE400000000000000;
    }

    else
    {
      v174 = *(v171 + *(v156 + 24));

      sub_1D8A014F0(v171, type metadata accessor for CVTrackSnapshot);
      v265 = v174;
      CVDetection.detection.getter(&v269);
      v175 = v270;
      v176 = v271;
      __swift_project_boxed_opaque_existential_1(&v269, v270);
      v172 = (*(v176 + 72))(v175, v176);
      v173 = v177;

      __swift_destroy_boxed_opaque_existential_1(&v269);
    }

    v178 = v241;
    v179 = v239;
    sub_1D8A014F0(v154, type metadata accessor for CVBundle);
    v180 = sub_1D89AC714(v172, v173, &v266);

    *(v152 + 4) = v180;
    *(v152 + 12) = 2080;
    sub_1D8A01488(v264, v179, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v181 = v179;
      v182 = v256;
      v183 = *(v256 + 32);
      v184 = v240;
      v183(v240, v181, v93);
    }

    else
    {
      v185 = v236;
      sub_1D8A01550(v179, v236, type metadata accessor for CVTrackSnapshot);
      v182 = v256;
      v184 = v240;
      (*(v256 + 16))(v240, v185, v93);
      sub_1D8A014F0(v185, type metadata accessor for CVTrackSnapshot);
      v183 = *(v182 + 32);
    }

    v183(v178, v184, v93);
    sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v186 = sub_1D8B16B50();
    v188 = v187;
    (*(v182 + 8))(v178, v93);
    sub_1D8A014F0(v264, type metadata accessor for CVBundle);
    v189 = sub_1D89AC714(v186, v188, &v266);

    *(v152 + 14) = v189;
    _os_log_impl(&dword_1D8783000, v150, v151, "Did not get bestChild from: bundle %s (%s).", v152, 0x16u);
    v190 = v263;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v190, -1, -1);
    MEMORY[0x1DA721330](v152, -1, -1);

    v90 = v262;
  }

  else
  {

    sub_1D8A014F0(v65, type metadata accessor for CVBundle);
    sub_1D8A014F0(v149, type metadata accessor for CVBundle);
  }

  return (*(v90 + 7))(v261, 1, 1, v232);
}

uint64_t sub_1D89EFD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v382 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v382);
  v8 = &v342 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = type metadata accessor for CVBundle.BundleType(0);
  v9 = MEMORY[0x1EEE9AC00](v367);
  v355 = &v342 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v354 = &v342 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v358 = &v342 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v347 = &v342 - v15;
  v377 = sub_1D8B13240();
  v380 = *(v377 - 8);
  v16 = MEMORY[0x1EEE9AC00](v377);
  v374 = &v342 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v357 = &v342 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v362 = &v342 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v356 = &v342 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v360 = &v342 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v359 = &v342 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v348 = &v342 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v346 = &v342 - v30;
  v31 = type metadata accessor for CVBundle(0);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v364 = &v342 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v363 = &v342 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v369 = &v342 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v350 = &v342 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650B8);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v353 = &v342 - v40;
  v41 = sub_1D8B13990();
  v396 = *(v41 - 8);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v395 = &v342 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v393 = &v342 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8);
  v46 = MEMORY[0x1EEE9AC00](v45 - 8);
  v370 = &v342 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v383 = &v342 - v48;
  v379 = type metadata accessor for AFMResult(0);
  v49 = MEMORY[0x1EEE9AC00](v379);
  v368 = &v342 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v376 = &v342 - v51;
  v389 = type metadata accessor for MetaDetectionResult();
  v366 = *(v389 - 8);
  v52 = MEMORY[0x1EEE9AC00](v389);
  v384 = &v342 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v394 = &v342 - v54;
  v365 = type metadata accessor for CVTrackSnapshot(0);
  v397 = *(v365 - 8);
  v55 = MEMORY[0x1EEE9AC00](v365);
  v361 = &v342 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v372 = &v342 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v342 - v59;
  v61 = sub_1D8B138D0();
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v64 = (&v342 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v371);
  v381 = &v342 - v65;
  v378 = type metadata accessor for GenericParseDataResult();
  v352 = *(v378 - 8);
  v66 = MEMORY[0x1EEE9AC00](v378);
  v349 = &v342 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v375 = &v342 - v68;
  v69 = *(a2 + 32);
  v392 = *(a2 + 40);
  v351 = *v3;
  LOBYTE(v398) = v351;
  result = sub_1D89F3578(a1);
  if ((result & 1) == 0)
  {
    goto LABEL_63;
  }

  v373 = a1;
  CVBundle.latestEstimate.getter(&v407);
  v71 = v407;
  v345 = a3;
  if (v407 >> 60 == 4)
  {
    v342 = 0xD000000000000011;
    v344 = v407;
    v141 = swift_projectBox();
    sub_1D8A01488(v141, v8, type metadata accessor for ParseDetectorResult);
    v343 = 0x80000001D8B46F80;
    v142 = v375;
    (*(v380 + 16))(v375, v8, v377);
    v143 = v382;
    v144 = *&v8[v382[9]];
    v145 = *&v8[v382[7]];
    v146 = v378;
    sub_1D8A01488(&v8[v382[13]], v142 + *(v378 + 28), type metadata accessor for VisualUnderstandingContainer);
    v147 = v143[11];
    LODWORD(v397) = v8[v143[10]];
    v148 = v143[15];
    v149 = *&v8[v143[14]];
    v150 = &v8[v143[12]];
    v152 = *v150;
    v151 = *(v150 + 1);
    v154 = *&v8[v147];
    v153 = *&v8[v147 + 8];
    v155 = *&v8[v148];

    sub_1D8A014F0(v8, type metadata accessor for ParseDetectorResult);

    *(v142 + v146[5]) = v144;
    *(v142 + v146[6]) = v145;
    *(v142 + v146[8]) = v397;
    *(v142 + v146[9]) = v149;
    v156 = (v142 + v146[10]);
    *v156 = v152;
    v156[1] = v151;
    v157 = (v142 + v146[11]);
    *v157 = v154;
    v157[1] = v153;
    a3 = v345;
    *(v142 + v146[12]) = v155;
    v82 = v373;
    goto LABEL_52;
  }

  if (v407 >> 60)
  {
LABEL_62:

LABEL_63:
    v174 = xmmword_1D8B26630;
    goto LABEL_64;
  }

  v72 = swift_projectBox();
  v73 = v381;
  sub_1D87A0E38(v72, v381, &qword_1ECA67750);
  v74 = sub_1D89F3840();
  sub_1D89F3968(v74, v64);

  if ((*(v62 + 88))(v64, v61) != *MEMORY[0x1E69E0390])
  {
    sub_1D87A14E4(v73, &qword_1ECA67750);
    (*(v62 + 8))(v64, v61);
    goto LABEL_62;
  }

  v344 = v71;
  (*(v62 + 96))(v64, v61);
  v391 = *v64;
  LOBYTE(v75) = sub_1D889E348();
  v76 = v75;
  v343 = v77;
  v78 = sub_1D891A6E8();
  v79 = v78;
  v390 = *(v78 + 16);
  v342 = v76;
  if (!v390)
  {
LABEL_67:

    LODWORD(v383) = 0;
    goto LABEL_68;
  }

  v386 = *(v365 + 20);
  v388 = v78 + ((*(v397 + 80) + 32) & ~*(v397 + 80));
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0);
  v80 = 0;
  v385 = (v366 + 56);
  v81 = v389;
  v82 = v383;
  while (1)
  {
    if (v80 >= *(v79 + 16))
    {
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
      goto LABEL_197;
    }

    sub_1D8A01488(v388 + *(v397 + 72) * v80, v60, type metadata accessor for CVTrackSnapshot);
    v83 = sub_1D8B16910();
    v84 = sub_1D881F7DC(1);
    if (v85)
    {
      goto LABEL_189;
    }

    v86 = v83 + 8;
    *(v83 + ((v84 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v84;
    *(v83[6] + v84) = 1;
    *(v83[7] + 8 * v84) = 0x3FE999999999999ALL;
    v87 = v83[2];
    v88 = __OFADD__(v87, 1);
    v89 = v87 + 1;
    if (v88)
    {
      goto LABEL_190;
    }

    v83[2] = v89;
    v90 = sub_1D881F7DC(12);
    if (v91)
    {
      goto LABEL_191;
    }

    *(v86 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v90;
    *(v83[6] + v90) = 12;
    *(v83[7] + 8 * v90) = 0x3FE0000000000000;
    v92 = v83[2];
    v88 = __OFADD__(v92, 1);
    v93 = v92 + 1;
    if (v88)
    {
      goto LABEL_192;
    }

    v83[2] = v93;
    v94 = sub_1D881F7DC(13);
    if (v95)
    {
      goto LABEL_193;
    }

    *(v86 + ((v94 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v94;
    *(v83[6] + v94) = 13;
    *(v83[7] + 8 * v94) = 0x3FE0000000000000;
    v96 = v83[2];
    v88 = __OFADD__(v96, 1);
    v97 = v96 + 1;
    if (v88)
    {
      goto LABEL_194;
    }

    v83[2] = v97;
    v98 = sub_1D881F7DC(5);
    if (v99)
    {
      goto LABEL_195;
    }

    *(v86 + ((v98 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v98;
    *(v83[6] + v98) = 5;
    *(v83[7] + 8 * v98) = 0x4020000000000000;
    v100 = v83[2];
    v88 = __OFADD__(v100, 1);
    v101 = v100 + 1;
    if (v88)
    {
      goto LABEL_196;
    }

    v83[2] = v101;
    v102 = 0.1;
    if (v101)
    {
      v103 = sub_1D881F7DC(1);
      v102 = 0.1;
      if (v104)
      {
        v102 = *(v83[7] + 8 * v103);
      }
    }

    ++v80;

    switch(*(v60 + v386) >> 60)
    {
      case 1:
        v117 = type metadata accessor for GroundedParseDetectorResult(0);
        v106 = swift_projectBox();
        *(&v399 + 1) = v117;
        *&v400 = sub_1D8A011DC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v398);
        v108 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_33;
      case 2:
        v106 = swift_projectBox();
        *(&v399 + 1) = v81;
        *&v400 = sub_1D8A011DC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v398);
        v108 = type metadata accessor for MetaDetectionResult;
        goto LABEL_33;
      case 3:
      case 8:
        v105 = type metadata accessor for ObjectDetectorResult(0);
        v106 = swift_projectBox();
        *(&v399 + 1) = v105;
        *&v400 = sub_1D8A011DC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v398);
        v108 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_33;
      case 4:
        v106 = swift_projectBox();
        *(&v399 + 1) = v382;
        *&v400 = sub_1D8A011DC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v398);
        v108 = type metadata accessor for ParseDetectorResult;
        goto LABEL_33;
      case 5:
        v118 = type metadata accessor for TextDetectorResult(0);
        v106 = swift_projectBox();
        *(&v399 + 1) = v118;
        *&v400 = sub_1D8A011DC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v398);
        v108 = type metadata accessor for TextDetectorResult;
        goto LABEL_33;
      case 6:
      case 7:
        v109 = type metadata accessor for StreamingBarcodeDetectorResult(0);
        v106 = swift_projectBox();
        *(&v399 + 1) = v109;
        *&v400 = sub_1D8A011DC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v398);
        v108 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_33;
      case 9:
      case 0xALL:
        v110 = swift_projectBox();
        v111 = v376;
        sub_1D8A01488(v110, v376, type metadata accessor for AFMResult);
        *(&v399 + 1) = v379;
        *&v400 = sub_1D8A011DC(&qword_1EE0E3F80, type metadata accessor for AFMResult);
        v112 = __swift_allocate_boxed_opaque_existential_1(&v398);
        sub_1D8A01550(v111, v112, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        v113 = type metadata accessor for SyntheticDetectionResult();
        v106 = swift_projectBox();
        *(&v399 + 1) = v113;
        *&v400 = sub_1D8A011DC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v398);
        v108 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_33;
      case 0xCLL:
        v114 = type metadata accessor for GroundedParseEmbeddingsResult(0);
        v106 = swift_projectBox();
        *(&v399 + 1) = v114;
        *&v400 = sub_1D8A011DC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v398);
        v108 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_33;
      case 0xDLL:
        v119 = type metadata accessor for GroundedParseClassificationsResult(0);
        v106 = swift_projectBox();
        *(&v399 + 1) = v119;
        *&v400 = sub_1D8A011DC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v398);
        v108 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_33:
        sub_1D8A01488(v106, boxed_opaque_existential_1, v108);
        break;
      default:
        v115 = swift_projectBox();
        *(&v399 + 1) = v371;
        *&v400 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
        v116 = __swift_allocate_boxed_opaque_existential_1(&v398);
        sub_1D87A0E38(v115, v116, &qword_1ECA67750);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
    v120 = swift_dynamicCast();
    v121 = *v385;
    if ((v120 & 1) == 0)
    {
      v121(v82, 1, 1, v81);
      sub_1D87A14E4(v82, &qword_1ECA64BB8);
      goto LABEL_8;
    }

    v121(v82, 0, 1, v81);
    v122 = v394;
    sub_1D8A01550(v82, v394, type metadata accessor for MetaDetectionResult);
    v123 = v122;
    if (*v122 != 1 || (v392 & 1) != 0 && *&v122[v81[8]] != v69)
    {
      sub_1D8A014F0(v122, type metadata accessor for MetaDetectionResult);
      goto LABEL_8;
    }

    v124 = v81[9];
    if (v122[v124] == 2 && v69 - *&v122[v81[8]] > v102 || (CVBundle.latestEstimate.getter(&v406), v405 = v406, CVDetection.detection.getter(&v402), v125 = v403, v126 = v404, __swift_project_boxed_opaque_existential_1(&v402, v403), (*(v126 + 64))(&v398, v125, v126), __swift_destroy_boxed_opaque_existential_1(&v402), Corners.bounds.getter(), v128 = v127, v130 = v129, v132 = v131, v134 = v133, v81 = v389, , v418.origin.x = 0.0, v418.origin.y = 0.0, v418.size.width = 1.0, v418.size.height = 1.0, v410.origin.x = v128, v410.origin.y = v130, v410.size.width = v132, v410.size.height = v134, v411 = CGRectIntersection(v410, v418), x = v411.origin.x, y = v411.origin.y, width = v411.size.width, height = v411.size.height, v139 = &v394[v81[5]], *&v411.origin.y = v139[1], v398 = *v139, v399 = *&v411.origin.y, *&v411.origin.y = v139[3], v400 = v139[2], v401 = *&v411.origin.y, Corners.bounds.getter(), v419.origin.x = x, v419.origin.y = y, v419.size.width = width, v419.size.height = height, v413 = CGRectIntersection(v412, v419), v123 = v394, width * height * 0.9 > v413.size.width * v413.size.height))
    {
      sub_1D8A014F0(v123, type metadata accessor for MetaDetectionResult);
      v82 = v383;
      goto LABEL_8;
    }

    v140 = v394[v124];
    if (v140 == 3)
    {
      break;
    }

    sub_1D8A014F0(v394, type metadata accessor for MetaDetectionResult);
    v82 = v383;
    if (v140 == 2)
    {
      goto LABEL_160;
    }

LABEL_8:
    sub_1D8A014F0(v60, type metadata accessor for CVTrackSnapshot);
    if (v390 == v80)
    {
      goto LABEL_67;
    }
  }

  v82 = v383;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if (sub_1D8B0AAA4())
  {
    goto LABEL_208;
  }

  sub_1D8A014F0(v394, type metadata accessor for MetaDetectionResult);
  if ((v392 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_160:

  sub_1D8A014F0(v60, type metadata accessor for CVTrackSnapshot);
  LODWORD(v383) = 1;
LABEL_68:
  v176 = v391;
  v82 = *(v391 + 16);
  v177 = v393;
  if (!v82)
  {
    v385 = MEMORY[0x1E69E7CC0];
    goto LABEL_95;
  }

  v178 = 0;
  v81 = (v396 + 16);
  v394 = (v396 + 88);
  LODWORD(v390) = *MEMORY[0x1E69E0398];
  v79 = *MEMORY[0x1E69E03A8];
  LODWORD(v388) = *MEMORY[0x1E69E03A0];
  LODWORD(v387) = *MEMORY[0x1E69E03B0];
  LODWORD(v386) = *MEMORY[0x1E69E03B8];
  v179 = (v396 + 8);
  v376 = v82 - 1;
  v385 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v180 = v178;
    while (2)
    {
      if (v180 >= *(v176 + 16))
      {
        __break(1u);
        goto LABEL_188;
      }

      v181 = v396;
      v182 = *(v396 + 16);
      v182(v177, v176 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v396 + 72) * v180, v41);
      v60 = v41;
      v183 = v395;
      v182(v395, v177, v60);
      v184 = v183;
      v41 = v60;
      v185 = (*(v181 + 88))(v184, v60);
      if (v185 == v390 || v185 == v79)
      {
LABEL_71:
        ++v180;
        (*v179)(v177, v60);
        v176 = v391;
        if (v82 == v180)
        {
          goto LABEL_95;
        }

        continue;
      }

      break;
    }

    if (v185 != v388)
    {
      v187 = v185 == v387 || v185 == v386;
      v177 = v393;
      if (!v187)
      {
        while (1)
        {
          sub_1D8B168C0();
          __break(1u);
LABEL_208:
          *&v398 = 0;
          *(&v398 + 1) = 0xE000000000000000;
          sub_1D8B16720();

          *&v398 = 0xD000000000000038;
          *(&v398 + 1) = 0x80000001D8B46FA0;
          v337 = v81[10];
          v338 = &v409;
LABEL_210:
          v339 = (*(v338 - 32) + v337);
          if (v339[1])
          {
            v340 = *v339;
            v341 = v339[1];
          }

          else
          {
            v340 = 0x6F73616572206F6ELL;
            v341 = 0xEF6E65766967206ELL;
          }

          MEMORY[0x1DA71EFA0](v340, v341);
        }
      }

      goto LABEL_71;
    }

    v177 = v393;
    (*v179)(v393, v60);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v385 = sub_1D87C8F58(0, *(v385 + 2) + 1, 1, v385);
    }

    v176 = v391;
    v60 = *(v385 + 2);
    v188 = *(v385 + 3);
    if (v60 >= v188 >> 1)
    {
      v190 = v391;
      v385 = sub_1D87C8F58((v188 > 1), v60 + 1, 1, v385);
      v176 = v190;
    }

    v178 = v180 + 1;
    v189 = v385;
    *(v385 + 2) = v60 + 1;
    v189[v60 + 32] = 5;
    if (v376 != v180)
    {
      continue;
    }

    break;
  }

LABEL_95:

  v202 = sub_1D8846D18(5u, v385);

  v79 = v381;
  v203 = v389;
  if (v202)
  {
    v204 = sub_1D891A6E8();
    v205 = v204;
    v82 = v370;
    v60 = v372;
    v396 = *(v204 + 16);
    if (v396)
    {
      v393 = *(v365 + 20);
      v395 = (v204 + ((*(v397 + 80) + 32) & ~*(v397 + 80)));
      v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0);
      v206 = 0;
      v79 = v366 + 56;
      while (v206 < *(v205 + 16))
      {
        sub_1D8A01488(&v395[*(v397 + 72) * v206], v60, type metadata accessor for CVTrackSnapshot);
        v207 = sub_1D8B16910();
        v208 = sub_1D881F7DC(1);
        if (v209)
        {
          goto LABEL_198;
        }

        v210 = v207 + 8;
        *(v207 + ((v208 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v208;
        *(v207[6] + v208) = 1;
        *(v207[7] + 8 * v208) = 0x3FE999999999999ALL;
        v211 = v207[2];
        v88 = __OFADD__(v211, 1);
        v212 = v211 + 1;
        if (v88)
        {
          goto LABEL_199;
        }

        v207[2] = v212;
        v213 = sub_1D881F7DC(12);
        if (v214)
        {
          goto LABEL_200;
        }

        *(v210 + ((v213 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v213;
        *(v207[6] + v213) = 12;
        *(v207[7] + 8 * v213) = 0x3FE0000000000000;
        v215 = v207[2];
        v88 = __OFADD__(v215, 1);
        v216 = v215 + 1;
        if (v88)
        {
          goto LABEL_201;
        }

        v207[2] = v216;
        v217 = sub_1D881F7DC(13);
        if (v218)
        {
          goto LABEL_202;
        }

        *(v210 + ((v217 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v217;
        *(v207[6] + v217) = 13;
        *(v207[7] + 8 * v217) = 0x3FE0000000000000;
        v219 = v207[2];
        v88 = __OFADD__(v219, 1);
        v220 = v219 + 1;
        if (v88)
        {
          goto LABEL_203;
        }

        v207[2] = v220;
        v221 = sub_1D881F7DC(5);
        if (v222)
        {
          goto LABEL_204;
        }

        *(v210 + ((v221 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v221;
        *(v207[6] + v221) = 5;
        *(v207[7] + 8 * v221) = 0x4020000000000000;
        v223 = v207[2];
        v88 = __OFADD__(v223, 1);
        v224 = v223 + 1;
        if (v88)
        {
          goto LABEL_205;
        }

        v207[2] = v224;
        v225 = 0.1;
        if (v224)
        {
          v226 = sub_1D881F7DC(1);
          v225 = 0.1;
          if (v227)
          {
            v225 = *(v207[7] + 8 * v226);
          }
        }

        ++v206;

        switch(*&v393[v60] >> 60)
        {
          case 1:
            v240 = type metadata accessor for GroundedParseDetectorResult(0);
            v229 = swift_projectBox();
            *(&v399 + 1) = v240;
            *&v400 = sub_1D8A011DC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
            v230 = __swift_allocate_boxed_opaque_existential_1(&v398);
            v231 = type metadata accessor for GroundedParseDetectorResult;
            goto LABEL_124;
          case 2:
            v229 = swift_projectBox();
            *(&v399 + 1) = v203;
            *&v400 = sub_1D8A011DC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
            v230 = __swift_allocate_boxed_opaque_existential_1(&v398);
            v231 = type metadata accessor for MetaDetectionResult;
            goto LABEL_124;
          case 3:
          case 8:
            v228 = type metadata accessor for ObjectDetectorResult(0);
            v229 = swift_projectBox();
            *(&v399 + 1) = v228;
            *&v400 = sub_1D8A011DC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
            v230 = __swift_allocate_boxed_opaque_existential_1(&v398);
            v231 = type metadata accessor for ObjectDetectorResult;
            goto LABEL_124;
          case 4:
            v229 = swift_projectBox();
            *(&v399 + 1) = v382;
            *&v400 = sub_1D8A011DC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
            v230 = __swift_allocate_boxed_opaque_existential_1(&v398);
            v231 = type metadata accessor for ParseDetectorResult;
            goto LABEL_124;
          case 5:
            v241 = type metadata accessor for TextDetectorResult(0);
            v229 = swift_projectBox();
            *(&v399 + 1) = v241;
            *&v400 = sub_1D8A011DC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
            v230 = __swift_allocate_boxed_opaque_existential_1(&v398);
            v231 = type metadata accessor for TextDetectorResult;
            goto LABEL_124;
          case 6:
          case 7:
            v232 = type metadata accessor for StreamingBarcodeDetectorResult(0);
            v229 = swift_projectBox();
            *(&v399 + 1) = v232;
            *&v400 = sub_1D8A011DC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
            v230 = __swift_allocate_boxed_opaque_existential_1(&v398);
            v231 = type metadata accessor for StreamingBarcodeDetectorResult;
            goto LABEL_124;
          case 9:
          case 0xALL:
            v233 = swift_projectBox();
            v234 = v368;
            sub_1D8A01488(v233, v368, type metadata accessor for AFMResult);
            *(&v399 + 1) = v379;
            *&v400 = sub_1D8A011DC(&qword_1EE0E3F80, type metadata accessor for AFMResult);
            v235 = __swift_allocate_boxed_opaque_existential_1(&v398);
            sub_1D8A01550(v234, v235, type metadata accessor for AFMResult);
            break;
          case 0xBLL:
            v236 = type metadata accessor for SyntheticDetectionResult();
            v229 = swift_projectBox();
            *(&v399 + 1) = v236;
            *&v400 = sub_1D8A011DC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
            v230 = __swift_allocate_boxed_opaque_existential_1(&v398);
            v231 = type metadata accessor for SyntheticDetectionResult;
            goto LABEL_124;
          case 0xCLL:
            v237 = type metadata accessor for GroundedParseEmbeddingsResult(0);
            v229 = swift_projectBox();
            *(&v399 + 1) = v237;
            *&v400 = sub_1D8A011DC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
            v230 = __swift_allocate_boxed_opaque_existential_1(&v398);
            v231 = type metadata accessor for GroundedParseEmbeddingsResult;
            goto LABEL_124;
          case 0xDLL:
            v242 = type metadata accessor for GroundedParseClassificationsResult(0);
            v229 = swift_projectBox();
            *(&v399 + 1) = v242;
            *&v400 = sub_1D8A011DC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
            v230 = __swift_allocate_boxed_opaque_existential_1(&v398);
            v231 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_124:
            sub_1D8A01488(v229, v230, v231);
            break;
          default:
            v238 = swift_projectBox();
            *(&v399 + 1) = v371;
            *&v400 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
            v239 = __swift_allocate_boxed_opaque_existential_1(&v398);
            sub_1D87A0E38(v238, v239, &qword_1ECA67750);
            break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
        v243 = swift_dynamicCast();
        v244 = *v79;
        if (v243)
        {
          v244(v82, 0, 1, v203);
          v245 = v384;
          sub_1D8A01550(v82, v384, type metadata accessor for MetaDetectionResult);
          if (*v245 == 5 && ((v392 & 1) == 0 || *&v245[v203[8]] == v69))
          {
            v246 = v245;
            v247 = v203[9];
            if (v245[v247] == 2 && v69 - *&v245[v203[8]] > v225 || (CVBundle.latestEstimate.getter(&v406), v405 = v406, CVDetection.detection.getter(&v402), v81 = v403, v248 = v404, __swift_project_boxed_opaque_existential_1(&v402, v403), v249 = *(v248 + 64), v250 = v248, v203 = v389, v249(&v398, v81, v250), __swift_destroy_boxed_opaque_existential_1(&v402), Corners.bounds.getter(), v252 = v251, v254 = v253, v256 = v255, v258 = v257, v82 = v370, , v420.origin.x = 0.0, v420.origin.y = 0.0, v420.size.width = 1.0, v420.size.height = 1.0, v414.origin.x = v252, v414.origin.y = v254, v414.size.width = v256, v414.size.height = v258, v415 = CGRectIntersection(v414, v420), v259 = v415.origin.x, v260 = v415.origin.y, v261 = v415.size.width, v262 = v415.size.height, v263 = &v245[v203[5]], *&v415.origin.y = v263[1], v398 = *v263, v399 = *&v415.origin.y, *&v415.origin.y = v263[3], v400 = v263[2], v401 = *&v415.origin.y, Corners.bounds.getter(), v421.origin.x = v259, v421.origin.y = v260, v421.size.width = v261, v421.size.height = v262, v417 = CGRectIntersection(v416, v421), v261 * v262 * 0.9 > v417.size.width * v417.size.height))
            {
              sub_1D8A014F0(v245, type metadata accessor for MetaDetectionResult);
              v60 = v372;
            }

            else
            {
              v264 = v245[v247];
              if (v264 == 3)
              {
                if (qword_1EE0E54C0 != -1)
                {
                  swift_once();
                }

                v265 = sub_1D8B0AAA4();
                v60 = v372;
                if (v265)
                {
                  *&v398 = 0;
                  *(&v398 + 1) = 0xE000000000000000;
                  sub_1D8B16720();

                  *&v398 = 0xD00000000000002FLL;
                  *(&v398 + 1) = 0x80000001D8B43DD0;
                  v337 = v203[10];
                  v338 = &v408;
                  goto LABEL_210;
                }

                sub_1D8A014F0(v384, type metadata accessor for MetaDetectionResult);
                if (v392)
                {
LABEL_164:

                  sub_1D8A014F0(v60, type metadata accessor for CVTrackSnapshot);
                  v82 = v373;
                  v79 = v381;
                  a3 = v345;
                  if (v383)
                  {
                    goto LABEL_143;
                  }

                  goto LABEL_165;
                }
              }

              else
              {
                sub_1D8A014F0(v246, type metadata accessor for MetaDetectionResult);
                v60 = v372;
                if (v264 == 2)
                {
                  goto LABEL_164;
                }
              }
            }
          }

          else
          {
            sub_1D8A014F0(v245, type metadata accessor for MetaDetectionResult);
          }
        }

        else
        {
          v244(v82, 1, 1, v203);
          sub_1D87A14E4(v82, &qword_1ECA64BB8);
        }

        sub_1D8A014F0(v60, type metadata accessor for CVTrackSnapshot);
        if (v396 == v206)
        {
          goto LABEL_149;
        }
      }

LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      swift_once();
LABEL_167:
      v308 = sub_1D8B151E0();
      __swift_project_value_buffer(v308, qword_1EE0E4520);
      v309 = v82;
      v310 = v369;
      sub_1D8A01488(v309, v369, type metadata accessor for CVBundle);
      v311 = v343;

      v312 = sub_1D8B151C0();
      v313 = sub_1D8B16200();

      v314 = os_log_type_enabled(v312, v313);
      a3 = v345;
      if (v314)
      {
        v315 = swift_slowAlloc();
        v397 = swift_slowAlloc();
        *&v398 = v397;
        *v315 = 136315906;
        v316 = sub_1D89AC714(v342, v311, &v398);

        *(v315 + 4) = v316;
        *(v315 + 12) = 2080;
        if (v60)
        {
          v317 = 0x7964616572;
        }

        else
        {
          v317 = 0x676E69646E6570;
        }

        if (v60)
        {
          v318 = 0xE500000000000000;
        }

        else
        {
          v318 = 0xE700000000000000;
        }

        v319 = sub_1D89AC714(v317, v318, &v398);

        *(v315 + 14) = v319;
        *(v315 + 22) = 2080;
        if (v383)
        {
          v320 = 0x7964616572;
        }

        else
        {
          v320 = 0x676E69646E6570;
        }

        if (v383)
        {
          v321 = 0xE500000000000000;
        }

        else
        {
          v321 = 0xE700000000000000;
        }

        v322 = sub_1D89AC714(v320, v321, &v398);

        *(v315 + 24) = v322;
        *(v315 + 32) = 2080;
        v323 = v358;
        sub_1D8A01488(v369, v358, type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v324 = v380;
          v325 = *(v380 + 32);
          v326 = v360;
          v327 = v323;
          v328 = v377;
          v325(v360, v327, v377);
        }

        else
        {
          v330 = v361;
          sub_1D8A01550(v323, v361, type metadata accessor for CVTrackSnapshot);
          v324 = v380;
          v326 = v360;
          v328 = v377;
          (*(v380 + 16))(v360, v330, v377);
          sub_1D8A014F0(v330, type metadata accessor for CVTrackSnapshot);
          v325 = *(v324 + 32);
        }

        a3 = v345;
        v331 = v359;
        v325(v359, v326, v328);
        sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
        v332 = sub_1D8B16B50();
        v334 = v333;
        (*(v324 + 8))(v331, v328);
        sub_1D8A014F0(v369, type metadata accessor for CVBundle);
        v335 = sub_1D89AC714(v332, v334, &v398);

        *(v315 + 34) = v335;
        _os_log_impl(&dword_1D8783000, v312, v313, "blockingReason: .upstreamWork required for %s: text: %s, parse: %s (bundle: %s)", v315, 0x2Au);
        v336 = v397;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v336, -1, -1);
        MEMORY[0x1DA721330](v315, -1, -1);

        v329 = v381;
      }

      else
      {

        sub_1D8A014F0(v310, type metadata accessor for CVBundle);
        v329 = v79;
      }

      sub_1D87A14E4(v329, &qword_1ECA67750);

LABEL_186:
      v174 = xmmword_1D8B26640;
LABEL_64:
      *a3 = v174;
LABEL_65:
      v175 = 2;
      goto LABEL_66;
    }

LABEL_149:

    LODWORD(v60) = 0;
    v82 = v373;
    v79 = v381;
LABEL_166:
    if (qword_1EE0E4518 != -1)
    {
      goto LABEL_206;
    }

    goto LABEL_167;
  }

  a3 = v345;
  v82 = v373;
  if (!v383)
  {
LABEL_165:
    LODWORD(v60) = 1;
    goto LABEL_166;
  }

LABEL_143:
  LOBYTE(v398) = v351;
  v266 = v353;
  sub_1D89ED8A0(v82, v353);
  v267 = (*(v352 + 48))(v266, 1, v378);
  v268 = v377;
  if (v267 == 1)
  {
    sub_1D87A14E4(v266, &qword_1ECA650B8);
    v269 = v380;
    v270 = v343;
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v271 = sub_1D8B151E0();
    __swift_project_value_buffer(v271, qword_1EE0E4520);
    v272 = v350;
    sub_1D8A01488(v82, v350, type metadata accessor for CVBundle);

    v273 = sub_1D8B151C0();
    v274 = sub_1D8B161F0();

    if (os_log_type_enabled(v273, v274))
    {
      v275 = swift_slowAlloc();
      v397 = swift_slowAlloc();
      *&v398 = v397;
      *v275 = 136315394;
      v276 = sub_1D89AC714(v342, v270, &v398);

      *(v275 + 4) = v276;
      *(v275 + 12) = 2080;
      v277 = v347;
      sub_1D8A01488(v272, v347, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v278 = v277;
        v279 = *(v269 + 32);
        v280 = v348;
        v279(v348, v278, v268);
      }

      else
      {
        v299 = v277;
        v300 = v361;
        sub_1D8A01550(v299, v361, type metadata accessor for CVTrackSnapshot);
        v280 = v348;
        (*(v269 + 16))(v348, v300, v268);
        sub_1D8A014F0(v300, type metadata accessor for CVTrackSnapshot);
        v279 = *(v269 + 32);
      }

      v301 = v346;
      v279(v346, v280, v268);
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v302 = sub_1D8B16B50();
      v304 = v303;
      (*(v269 + 8))(v301, v268);
      sub_1D8A014F0(v350, type metadata accessor for CVBundle);
      v305 = sub_1D89AC714(v302, v304, &v398);

      *(v275 + 14) = v305;
      _os_log_impl(&dword_1D8783000, v273, v274, "Expected to find a parse child of %s but didn't get one (bundle: %s)", v275, 0x16u);
      v306 = v397;
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v306, -1, -1);
      MEMORY[0x1DA721330](v275, -1, -1);
    }

    else
    {

      sub_1D8A014F0(v272, type metadata accessor for CVBundle);
    }

    sub_1D87A14E4(v79, &qword_1ECA67750);

    v307 = v345;
    *v345 = 0;
    v307[1] = 0;
    *(v307 + 16) = 2;
    return result;
  }

  sub_1D87A14E4(v79, &qword_1ECA67750);
  v298 = v349;
  sub_1D8A01550(v266, v349, type metadata accessor for GenericParseDataResult);
  v142 = v375;
  sub_1D8A01550(v298, v375, type metadata accessor for GenericParseDataResult);

LABEL_52:
  v158 = v374;
  if (v392)
  {

    CVBundle.workState.getter(&v398);
    result = sub_1D8A014F0(v142, type metadata accessor for GenericParseDataResult);
    if (v398 != 2)
    {
      goto LABEL_186;
    }
  }

  else
  {
    v159 = v343;
    if (*(v142 + *(v378 + 32)) != 1)
    {
      v191 = v380;
      if (qword_1EE0E4518 != -1)
      {
        swift_once();
      }

      v192 = sub_1D8B151E0();
      __swift_project_value_buffer(v192, qword_1EE0E4520);
      v193 = v364;
      sub_1D8A01488(v82, v364, type metadata accessor for CVBundle);

      v194 = sub_1D8B151C0();
      v195 = sub_1D8B16200();

      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        v397 = swift_slowAlloc();
        *&v398 = v397;
        *v196 = 136315394;
        v197 = sub_1D89AC714(v342, v159, &v398);

        *(v196 + 4) = v197;
        *(v196 + 12) = 2080;
        v198 = v355;
        sub_1D8A01488(v193, v355, type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v199 = v198;
          v200 = *(v191 + 32);
          v201 = v377;
          v200(v158, v199, v377);
        }

        else
        {
          v289 = v198;
          v290 = v361;
          sub_1D8A01550(v289, v361, type metadata accessor for CVTrackSnapshot);
          v201 = v377;
          (*(v191 + 16))(v158, v290, v377);
          sub_1D8A014F0(v290, type metadata accessor for CVTrackSnapshot);
          v200 = *(v191 + 32);
        }

        v291 = v158;
        a3 = v345;
        v292 = v357;
        v200(v357, v291, v201);
        sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
        v293 = sub_1D8B16B50();
        v295 = v294;
        (*(v191 + 8))(v292, v201);
        sub_1D8A014F0(v364, type metadata accessor for CVBundle);
        v296 = sub_1D89AC714(v293, v295, &v398);

        *(v196 + 14) = v296;
        _os_log_impl(&dword_1D8783000, v194, v195, ".awaitingMoreFrames required for %s (bundle: %s)", v196, 0x16u);
        v297 = v397;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v297, -1, -1);
        MEMORY[0x1DA721330](v196, -1, -1);
      }

      else
      {

        sub_1D8A014F0(v193, type metadata accessor for CVBundle);
      }

      result = sub_1D8A014F0(v142, type metadata accessor for GenericParseDataResult);
      *a3 = 0;
      a3[1] = 0;
      goto LABEL_65;
    }

    v160 = v380;
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v161 = sub_1D8B151E0();
    __swift_project_value_buffer(v161, qword_1EE0E4520);
    v162 = v363;
    sub_1D8A01488(v82, v363, type metadata accessor for CVBundle);

    v163 = sub_1D8B151C0();
    v164 = sub_1D8B16200();

    v165 = os_log_type_enabled(v163, v164);
    v166 = v362;
    if (v165)
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      *&v398 = v168;
      *v167 = 136315394;
      v169 = sub_1D89AC714(v342, v159, &v398);

      *(v167 + 4) = v169;
      *(v167 + 12) = 2080;
      v170 = v354;
      sub_1D8A01488(v162, v354, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v171 = v170;
        v172 = *(v160 + 32);
        v173 = v377;
        v172(v166, v171, v377);
      }

      else
      {
        v281 = v170;
        v282 = v361;
        sub_1D8A01550(v281, v361, type metadata accessor for CVTrackSnapshot);
        v173 = v377;
        (*(v160 + 16))(v166, v282, v377);
        sub_1D8A014F0(v282, type metadata accessor for CVTrackSnapshot);
        v172 = *(v160 + 32);
      }

      v283 = v166;
      v284 = v356;
      v172(v356, v283, v173);
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v285 = sub_1D8B16B50();
      v287 = v286;
      (*(v160 + 8))(v284, v173);
      sub_1D8A014F0(v363, type metadata accessor for CVBundle);
      v288 = sub_1D89AC714(v285, v287, &v398);

      *(v167 + 14) = v288;
      _os_log_impl(&dword_1D8783000, v163, v164, "No BlockingReason found for %s (bundle: %s)", v167, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v168, -1, -1);
      MEMORY[0x1DA721330](v167, -1, -1);

      result = sub_1D8A014F0(v142, type metadata accessor for GenericParseDataResult);
      a3 = v345;
    }

    else
    {

      sub_1D8A014F0(v162, type metadata accessor for CVBundle);
      result = sub_1D8A014F0(v142, type metadata accessor for GenericParseDataResult);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  v175 = -1;
LABEL_66:
  *(a3 + 16) = v175;
  return result;
}

uint64_t sub_1D89F3578(uint64_t a1)
{
  v2 = sub_1D8B138D0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A01488(a1, v11, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 8))(v11, v12);
    return 0;
  }

  sub_1D8A014F0(v11, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestEstimate.getter(&v19);
  v14 = v19 >> 60;
  if (v19 >> 60 == 4 || v14 == 1)
  {

    return 1;
  }

  else
  {
    if (v14)
    {

      return 0;
    }

    v15 = swift_projectBox();
    sub_1D87A0E38(v15, v8, &qword_1ECA67750);
    v16 = sub_1D89F3840();
    sub_1D89F3968(v16, v5);

    sub_1D87A14E4(v8, &qword_1ECA67750);
    v17 = (*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E0390];
    (*(v3 + 8))(v5, v2);

    return v17;
  }
}

uint64_t sub_1D89F3840()
{
  v0 = sub_1D88F8978();
  v1 = *(v0 + 16);
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    result = sub_1D87F3F54(0, v1, 0);
    v3 = 0;
    v4 = 32;
    v5 = v12;
    while (v3 < *(v0 + 16))
    {
      result = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
      v13 = v5;
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = result;
        v11 = v6;
        sub_1D87F3F54((v7 > 1), v8 + 1, 1);
        v6 = v11;
        result = v10;
        v5 = v13;
      }

      ++v3;
      *(v5 + 16) = v8 + 1;
      v9 = v5 + 16 * v8;
      *(v9 + 32) = result;
      *(v9 + 40) = v6;
      v4 += 8;
      if (v1 == v3)
      {

        return v5;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D89F3968@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v34 = a2;
  v43 = sub_1D8B13990();
  v35 = *(v43 - 8);
  v3 = MEMORY[0x1EEE9AC00](v43);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = sub_1D8B138D0();
  v36 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1E69E7CD0];
  v12 = *(a1 + 16);
  if (v12)
  {
    LODWORD(v41) = 0;
    v13 = 0;
    v45 = (v36 + 88);
    v47 = *MEMORY[0x1E69E0390];
    v44 = (v36 + 8);
    v33 = (v36 + 96);
    v14 = v35 + 16;
    v15 = a1 + 40;
    v46 = v8;
    v32 = a1 + 40;
    v42 = (v35 + 8);
    while (2)
    {
      v16 = v15 + 16 * v13;
      while (1)
      {
        if (v13 >= v12)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return result;
        }

        if (__OFADD__(v13, 1))
        {
          goto LABEL_25;
        }

        v48 = v13 + 1;

        v8 = v46;
        sub_1D8B15A20();
        v17 = (*v45)(v11, v8);
        if (v17 == v47)
        {
          break;
        }

        (*v44)(v11, v8);

        ++v13;
        v16 += 16;
        if (v48 == v12)
        {
          if ((v41 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }
      }

      (*v33)(v11, v8);
      v18 = *v11;
      v19 = *(*v11 + 16);
      if (v19)
      {
        v31 = v11;
        v20 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v30 = v18;
        v21 = v18 + v20;
        v22 = *(v35 + 72);
        v40 = *(v35 + 16);
        v41 = v22;
        v23 = v43;
        v38 = v7;
        v39 = v5;
        v37 = v14;
        do
        {
          v24 = v39;
          v40(v39, v21, v23);
          v25 = v38;
          sub_1D87FD3AC(v38, v24);
          v23 = v43;
          (*v42)(v25, v43);
          v21 += v41;
          --v19;
        }

        while (v19);

        v11 = v31;
      }

      else
      {
      }

      LODWORD(v41) = 1;
      v13 = v48;
      v15 = v32;
      if (v48 != v12)
      {
        continue;
      }

      break;
    }

LABEL_17:
    v26 = v50;
    v27 = *(v50 + 16);
    if (v27)
    {
      v8 = sub_1D87F3A68(*(v50 + 16), 0);
      v28 = sub_1D8817A64(&v49, (v8 + ((*(v35 + 80) + 32) & ~*(v35 + 80))), v27, v26);

      sub_1D87977A0();
      if (v28 != v27)
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v29 = v34;
    *v34 = v8;
    (*(v36 + 104))(v29, v47, v46);
  }

  else
  {
LABEL_20:
    (*(v36 + 104))(v34, *MEMORY[0x1E69E0388], v8);
  }
}

uint64_t sub_1D89F3DC4(uint64_t a1, _OWORD *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v197 = &v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v199 = &v189 - v8;
  v198 = type metadata accessor for CVTrackSnapshot(0);
  v196 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v203 = &v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for CVBundle.BundleType(0);
  v10 = MEMORY[0x1EEE9AC00](v209);
  v200 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v195 = &v189 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v204 = &v189 - v14;
  v210 = sub_1D8B13240();
  v212 = *(v210 - 8);
  v15 = MEMORY[0x1EEE9AC00](v210);
  v201 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v202 = &v189 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v205 = &v189 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v206 = &v189 - v21;
  v22 = type metadata accessor for CVBundle(0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v211 = &v189 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v208 = &v189 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v207 = &v189 - v27;
  v28 = sub_1D8B13990();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v189 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v189 - v33;
  v35 = sub_1D8B138D0();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v189 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v216 = &v189 - v40;
  v41 = a2[3];
  v225[2] = a2[2];
  v225[3] = v41;
  v225[4] = a2[4];
  v42 = a2[1];
  v225[0] = *a2;
  v225[1] = v42;
  v43 = *v2;
  LOBYTE(v222) = *v2;
  if ((sub_1D89F3578(a1) & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  CVBundle.latestEstimate.getter(&v222);
  if (v222 >> 60)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v194 = v43;
  v44 = swift_projectBox();
  v45 = v216;
  sub_1D87A0E38(v44, v216, &qword_1ECA67750);

  v46 = sub_1D89F3840();
  sub_1D89F3968(v46, v38);

  if ((*(v36 + 88))(v38, v35) != *MEMORY[0x1E69E0390])
  {
    sub_1D87A14E4(v45, &qword_1ECA67750);
    (*(v36 + 8))(v38, v35);
    return MEMORY[0x1E69E7CD0];
  }

  v193 = a1;
  (*(v36 + 96))(v38, v35);
  v47 = *v38;
  v48 = *(*v38 + 16);
  v49 = v194;
  if (!v48)
  {
    v192 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v50 = 0;
  v219 = (v29 + 88);
  LODWORD(v218) = *MEMORY[0x1E69E0398];
  LODWORD(v217) = *MEMORY[0x1E69E03A8];
  LODWORD(v215) = *MEMORY[0x1E69E03A0];
  v214 = *MEMORY[0x1E69E03B0];
  v213 = *MEMORY[0x1E69E03B8];
  v51 = v29 + 8;
  v191 = v48 - 1;
  v192 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v52 = v50;
    while (1)
    {
      if (v52 >= *(v47 + 16))
      {
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v53 = v48;
      v54 = *(v29 + 16);
      v54(v34, v47 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v52, v28);
      v54(v32, v34, v28);
      v55 = (*(v29 + 88))(v32, v28);
      if (v55 != v218 && v55 != v217)
      {
        break;
      }

LABEL_7:
      ++v52;
      (*v51)(v34, v28);
      v48 = v53;
      if (v53 == v52)
      {
        v49 = v194;
        goto LABEL_30;
      }
    }

    if (v55 != v215)
    {
      if (v55 != v214 && v55 != v213)
      {
        v188 = 0;
        v187 = 679;
        goto LABEL_101;
      }

      goto LABEL_7;
    }

    (*v51)(v34, v28);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v192 = sub_1D87C8F58(0, *(v192 + 2) + 1, 1, v192);
    }

    v48 = v53;
    v59 = *(v192 + 2);
    v58 = *(v192 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v190 = v59 + 1;
      v62 = sub_1D87C8F58((v58 > 1), v59 + 1, 1, v192);
      v60 = v190;
      v48 = v53;
      v192 = v62;
    }

    v50 = v52 + 1;
    v61 = v192;
    *(v192 + 2) = v60;
    v61[v59 + 32] = 5;
    v49 = v194;
    if (v191 != v52)
    {
      continue;
    }

    break;
  }

LABEL_30:

  v64 = sub_1D87C4904(v192);

  v65 = sub_1D8A50334(&unk_1F5427E28);
  v66 = sub_1D8917554(v65, v64);
  MEMORY[0x1EEE9AC00](v66);
  v51 = v193;
  *(&v189 - 4) = v193;
  *(&v189 - 24) = v49;
  v187 = v225;

  v67 = sub_1D88C02DC(sub_1D8A02478, (&v189 - 6), v66);
  v68 = v67;
  v69 = *(v67 + 16);
  if (v69)
  {
    v219 = sub_1D87F3998(*(v67 + 16), 0);
    v70 = sub_1D881F7B0(&v222, v219 + 4, v69, v68);

    sub_1D87977A0();
    if (v70 != v69)
    {
      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {
LABEL_33:
    v219 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EE0E4518 != -1)
  {
LABEL_98:
    swift_once();
  }

  v71 = sub_1D8B151E0();
  v72 = __swift_project_value_buffer(v71, qword_1EE0E4520);
  v73 = v51;
  v74 = v207;
  sub_1D8A01488(v73, v207, type metadata accessor for CVBundle);

  v75 = sub_1D8B151C0();
  v76 = sub_1D8B16200();

  v77 = os_log_type_enabled(v75, v76);
  v218 = v72;
  if (v77)
  {
    LODWORD(v217) = v76;
    v78 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    v222 = v215;
    *v78 = 136315650;
    sub_1D87C4938();
    v79 = sub_1D8B16040();
    v81 = v80;

    v82 = sub_1D89AC714(v79, v81, &v222);

    *(v78 + 4) = v82;
    *(v78 + 12) = 2080;
    v83 = sub_1D8B16040();
    v85 = v84;

    v86 = sub_1D89AC714(v83, v85, &v222);

    *(v78 + 14) = v86;
    *(v78 + 22) = 2080;
    v87 = v204;
    sub_1D8A01488(v74, v204, type metadata accessor for CVBundle.BundleType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v89 = v219;
    if (EnumCaseMultiPayload == 1)
    {
      v90 = v212;
      v91 = *(v212 + 32);
      v92 = v205;
      v93 = v87;
      v94 = v210;
      v91(v205, v93, v210);
    }

    else
    {
      v95 = v203;
      sub_1D8A01550(v87, v203, type metadata accessor for CVTrackSnapshot);
      v90 = v212;
      v92 = v205;
      v94 = v210;
      (*(v212 + 16))(v205, v95, v210);
      sub_1D8A014F0(v95, type metadata accessor for CVTrackSnapshot);
      v91 = *(v90 + 32);
    }

    v96 = v206;
    v91(v206, v92, v94);
    sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v97 = sub_1D8B16B50();
    v99 = v98;
    (*(v90 + 8))(v96, v94);
    sub_1D8A014F0(v74, type metadata accessor for CVBundle);
    v100 = sub_1D89AC714(v97, v99, &v222);

    *(v78 + 24) = v100;
    _os_log_impl(&dword_1D8783000, v75, v217, "detectionRequests: allTypes=%s, neededTypes=%s, bundleId=%s", v78, 0x20u);
    v101 = v215;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v101, -1, -1);
    MEMORY[0x1DA721330](v78, -1, -1);
  }

  else
  {

    sub_1D8A014F0(v74, type metadata accessor for CVBundle);
    v89 = v219;
  }

  v222 = MEMORY[0x1E69E7CC8];
  v102 = v89[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA670F8);
  sub_1D8B15760();
  if (!v102)
  {
    v104 = v222;
LABEL_80:
    v148 = v193;
    v149 = v208;
    sub_1D8A01488(v193, v208, type metadata accessor for CVBundle);
    v150 = v211;
    sub_1D8A01488(v148, v211, type metadata accessor for CVBundle);
    v151 = v219;

    v152 = sub_1D8B151C0();
    v153 = sub_1D8B16200();

    v154 = os_log_type_enabled(v152, v153);
    v155 = v210;
    v156 = v212;
    if (v154)
    {
      LODWORD(v218) = v153;
      v157 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v221 = v217;
      *v157 = 136315650;
      v158 = MEMORY[0x1DA71F1E0](v151, &type metadata for CVDetection.DetectionType);
      v160 = v159;

      v161 = sub_1D89AC714(v158, v160, &v221);

      *(v157 + 4) = v161;
      *(v157 + 12) = 2080;
      v162 = v195;
      sub_1D8A01488(v149, v195, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v163 = v196;
        v164 = v197;
        v165 = v198;
        (*(v196 + 56))(v197, 1, 1, v198);
        (*(v156 + 8))(v162, v155);
      }

      else
      {
        v164 = v197;
        sub_1D8A01550(v162, v197, type metadata accessor for CVTrackSnapshot);
        v163 = v196;
        v165 = v198;
        (*(v196 + 56))(v164, 0, 1, v198);
      }

      v166 = v199;
      sub_1D881F6FC(v164, v199, &qword_1ECA63E20);
      if ((*(v163 + 48))(v166, 1, v165) == 1)
      {
        sub_1D87A14E4(v166, &qword_1ECA63E20);
        v167 = 0xE400000000000000;
        v168 = 1701736302;
      }

      else
      {
        v169 = *(v166 + *(v165 + 24));

        sub_1D8A014F0(v166, type metadata accessor for CVTrackSnapshot);
        v220 = v169;
        CVDetection.detection.getter(&v222);
        v170 = v223;
        v171 = v224;
        __swift_project_boxed_opaque_existential_1(&v222, v223);
        v168 = (*(v171 + 72))(v170, v171);
        v167 = v172;
        v150 = v211;
        v156 = v212;

        __swift_destroy_boxed_opaque_existential_1(&v222);
      }

      sub_1D8A014F0(v208, type metadata accessor for CVBundle);
      v173 = sub_1D89AC714(v168, v167, &v221);

      *(v157 + 14) = v173;
      *(v157 + 22) = 2080;
      v174 = v150;
      v175 = v200;
      sub_1D8A01488(v174, v200, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v176 = *(v156 + 32);
        v177 = v201;
        v176(v201, v175, v155);
      }

      else
      {
        v178 = v203;
        sub_1D8A01550(v175, v203, type metadata accessor for CVTrackSnapshot);
        v177 = v201;
        (*(v156 + 16))(v201, v178, v155);
        sub_1D8A014F0(v178, type metadata accessor for CVTrackSnapshot);
        v176 = *(v156 + 32);
      }

      v179 = v202;
      v176(v202, v177, v155);
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v180 = sub_1D8B16B50();
      v182 = v181;
      (*(v156 + 8))(v179, v155);
      sub_1D8A014F0(v211, type metadata accessor for CVBundle);
      v183 = sub_1D89AC714(v180, v182, &v221);

      *(v157 + 24) = v183;
      _os_log_impl(&dword_1D8783000, v152, v218, "Making VLU DRQs of type: %s for label: %s, and id: (bundle: %s)", v157, 0x20u);
      v184 = v217;
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v184, -1, -1);
      MEMORY[0x1DA721330](v157, -1, -1);

      v148 = v193;
    }

    else
    {

      sub_1D8A014F0(v150, type metadata accessor for CVBundle);
      sub_1D8A014F0(v149, type metadata accessor for CVBundle);
    }

    v185 = v216;
    v186 = sub_1D89E0D80(v148, v225, v104, &unk_1F5426D88);

    sub_1D87A14E4(v185, &qword_1ECA67750);
    return v186;
  }

  v103 = (v89 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0);
  v104 = v222;
  v51 = 1;
  while (2)
  {
    v106 = *v103++;
    v105 = v106;
    v107 = sub_1D8B16910();
    v108 = byte_1F5426CF8;
    v109 = qword_1F5426D00;
    v110 = sub_1D881F7DC(byte_1F5426CF8);
    if (v111)
    {
      goto LABEL_93;
    }

    v112 = v107 + 8;
    *(v107 + ((v110 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v110;
    *(v107[6] + v110) = v108;
    *(v107[7] + 8 * v110) = v109;
    v113 = v107[2];
    v114 = __OFADD__(v113, 1);
    v115 = v113 + 1;
    if (v114)
    {
      goto LABEL_94;
    }

    v107[2] = v115;
    v116 = byte_1F5426D08;
    v117 = qword_1F5426D10;
    v118 = sub_1D881F7DC(byte_1F5426D08);
    if (v119)
    {
      goto LABEL_93;
    }

    *(v112 + ((v118 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v118;
    *(v107[6] + v118) = v116;
    *(v107[7] + 8 * v118) = v117;
    v120 = v107[2];
    v114 = __OFADD__(v120, 1);
    v121 = v120 + 1;
    if (v114)
    {
      goto LABEL_94;
    }

    v107[2] = v121;
    v122 = byte_1F5426D18;
    v123 = qword_1F5426D20;
    v124 = sub_1D881F7DC(byte_1F5426D18);
    if (v125)
    {
      goto LABEL_93;
    }

    *(v112 + ((v124 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v124;
    *(v107[6] + v124) = v122;
    *(v107[7] + 8 * v124) = v123;
    v126 = v107[2];
    v114 = __OFADD__(v126, 1);
    v127 = v126 + 1;
    if (v114)
    {
      goto LABEL_94;
    }

    v107[2] = v127;
    v128 = byte_1F5426D28;
    v129 = qword_1F5426D30;
    v130 = sub_1D881F7DC(byte_1F5426D28);
    if (v131)
    {
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    *(v112 + ((v130 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v130;
    *(v107[6] + v130) = v128;
    *(v107[7] + 8 * v130) = v129;
    v132 = v107[2];
    v114 = __OFADD__(v132, 1);
    v133 = v132 + 1;
    if (v114)
    {
      goto LABEL_94;
    }

    v107[2] = v133;
    if (v133)
    {
      v134 = sub_1D881F7DC(v105);
      if (v135)
      {
        v136 = *(v107[7] + 8 * v134);

        goto LABEL_67;
      }
    }

    if (v105 <= 5)
    {
      if (v105 <= 2)
      {
        goto LABEL_66;
      }

      if (v105 == 3)
      {
        v136 = 4.0;
      }

      else
      {
        if (v105 != 4)
        {
          v136 = 1.0;
          goto LABEL_67;
        }

LABEL_66:
        v136 = 10.0;
      }

LABEL_67:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v221 = v104;
      v138 = sub_1D881F7DC(v105);
      v140 = v104[2];
      v141 = (v139 & 1) == 0;
      v114 = __OFADD__(v140, v141);
      v142 = v140 + v141;
      if (v114)
      {
        goto LABEL_96;
      }

      v143 = v139;
      if (v104[3] < v142)
      {
        sub_1D8971854(v142, isUniquelyReferenced_nonNull_native);
        v138 = sub_1D881F7DC(v105);
        if ((v143 & 1) != (v144 & 1))
        {
          sub_1D8B16C30();
          __break(1u);
LABEL_99:
          v188 = 0;
          v187 = 243;
          goto LABEL_101;
        }

        goto LABEL_72;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_72:
        v104 = v221;
        if ((v143 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v147 = v138;
        sub_1D89692F4();
        v138 = v147;
        v104 = v221;
        if ((v143 & 1) == 0)
        {
LABEL_73:
          v104[(v138 >> 6) + 8] |= 1 << v138;
          *(v104[6] + v138) = v105;
          *(v104[7] + 8 * v138) = v136;
          v145 = v104[2];
          v114 = __OFADD__(v145, 1);
          v146 = v145 + 1;
          if (v114)
          {
            goto LABEL_97;
          }

          v104[2] = v146;
          if (!--v102)
          {
            goto LABEL_80;
          }

          continue;
        }
      }

      *(v104[7] + 8 * v138) = v136;
      if (!--v102)
      {
        goto LABEL_80;
      }

      continue;
    }

    break;
  }

  if (v105 <= 8)
  {
    if ((v105 - 6) >= 2)
    {
      goto LABEL_99;
    }

    v136 = 60.0;
    goto LABEL_67;
  }

  if ((v105 - 9) < 2)
  {
    v136 = 0.0;
    goto LABEL_67;
  }

  if ((v105 - 12) < 2)
  {
    goto LABEL_66;
  }

  v188 = 0;
  v187 = 245;
LABEL_101:
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D89F5638(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v131 = &v120 - v9;
  *&v122 = COERCE_DOUBLE(type metadata accessor for AFMResult(0));
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v124 = COERCE_DOUBLE(type metadata accessor for MetaDetectionResult());
  v11 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v126 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CVTrackSnapshot(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v132 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = *a1;
  v123 = a2;
  v16 = sub_1D891A6E8();
  v17 = v16;
  v130 = *(v16 + 16);
  if (!v130)
  {
LABEL_114:

    return 1;
  }

  v120 = v4;
  v18 = *(a4 + 32);
  v125 = *(a4 + 40);
  v127 = *(v13 + 20);
  v129 = v16 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0);
  v19 = 0;
  v20 = (v11 + 56);
  v21 = v124;
  v22 = v14;
  v23 = v132;
  while (1)
  {
    if (v19 >= *(v17 + 16))
    {
      goto LABEL_118;
    }

    v24 = v17;
    v25 = v22;
    sub_1D8A01488(v129 + *(v22 + 72) * v19, v23, type metadata accessor for CVTrackSnapshot);
    v26 = sub_1D8B16910();
    v27 = byte_1F5426CF8;
    v28 = qword_1F5426D00;
    v29 = sub_1D881F7DC(byte_1F5426CF8);
    if (v30)
    {
      goto LABEL_116;
    }

    v31 = v26 + 8;
    *(v26 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v29;
    *(v26[6] + v29) = v27;
    *(v26[7] + 8 * v29) = v28;
    v32 = v26[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_117;
    }

    v26[2] = v34;
    v35 = byte_1F5426D08;
    v36 = qword_1F5426D10;
    v37 = sub_1D881F7DC(byte_1F5426D08);
    if (v38)
    {
      goto LABEL_116;
    }

    *(v31 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    *(v26[6] + v37) = v35;
    *(v26[7] + 8 * v37) = v36;
    v39 = v26[2];
    v33 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v33)
    {
      goto LABEL_117;
    }

    v26[2] = v40;
    v41 = byte_1F5426D18;
    v42 = qword_1F5426D20;
    v43 = sub_1D881F7DC(byte_1F5426D18);
    if (v44)
    {
      goto LABEL_116;
    }

    *(v31 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
    *(v26[6] + v43) = v41;
    *(v26[7] + 8 * v43) = v42;
    v45 = v26[2];
    v33 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v33)
    {
      goto LABEL_117;
    }

    v26[2] = v46;
    v47 = byte_1F5426D28;
    v48 = qword_1F5426D30;
    v49 = sub_1D881F7DC(byte_1F5426D28);
    if (v50)
    {
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_125;
    }

    *(v31 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    *(v26[6] + v49) = v47;
    *(v26[7] + 8 * v49) = v48;
    v51 = v26[2];
    v33 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v33)
    {
      goto LABEL_117;
    }

    v26[2] = v52;
    v53 = v133;
    if (v52)
    {
      v54 = sub_1D881F7DC(v133);
      if (v55)
      {
        v56 = *(v26[7] + 8 * v54);

        v23 = v132;
        goto LABEL_30;
      }
    }

    v23 = v132;
    if (v53 > 5)
    {
      if (v53 > 8)
      {
        if ((v53 - 9) < 2)
        {
          v56 = 0.0;
          goto LABEL_30;
        }

        if ((v53 - 12) >= 2)
        {
          goto LABEL_125;
        }

        goto LABEL_29;
      }

      if ((v53 - 6) >= 2)
      {
        goto LABEL_125;
      }

      v56 = 60.0;
    }

    else
    {
      if (v53 <= 2)
      {
        goto LABEL_29;
      }

      if (v53 != 3)
      {
        if (v53 != 4)
        {
          v56 = 1.0;
          goto LABEL_30;
        }

LABEL_29:
        v56 = 10.0;
        goto LABEL_30;
      }

      v56 = 4.0;
    }

LABEL_30:
    ++v19;
    v57 = 1.0 / v56;
    switch(*(v23 + v127) >> 60)
    {
      case 1:
        *&v71 = COERCE_DOUBLE(type metadata accessor for GroundedParseDetectorResult(0));
        v59 = swift_projectBox();
        v141 = *&v71;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_42;
      case 2:
        v59 = swift_projectBox();
        v141 = *&v21;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for MetaDetectionResult;
        goto LABEL_42;
      case 3:
      case 8:
        *&v58 = COERCE_DOUBLE(type metadata accessor for ObjectDetectorResult(0));
        v59 = swift_projectBox();
        v141 = *&v58;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_42;
      case 4:
        *&v72 = COERCE_DOUBLE(type metadata accessor for ParseDetectorResult(0));
        v59 = swift_projectBox();
        v141 = *&v72;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for ParseDetectorResult;
        goto LABEL_42;
      case 5:
        *&v73 = COERCE_DOUBLE(type metadata accessor for TextDetectorResult(0));
        v59 = swift_projectBox();
        v141 = *&v73;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for TextDetectorResult;
        goto LABEL_42;
      case 6:
      case 7:
        *&v62 = COERCE_DOUBLE(type metadata accessor for StreamingBarcodeDetectorResult(0));
        v59 = swift_projectBox();
        v141 = *&v62;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_42;
      case 9:
      case 0xALL:
        v63 = swift_projectBox();
        v64 = v121;
        sub_1D8A01488(v63, v121, type metadata accessor for AFMResult);
        v141 = *&v122;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E3F80, type metadata accessor for AFMResult));
        v65 = __swift_allocate_boxed_opaque_existential_1(&v138);
        sub_1D8A01550(v64, v65, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        *&v66 = COERCE_DOUBLE(type metadata accessor for SyntheticDetectionResult());
        v59 = swift_projectBox();
        v141 = *&v66;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_42;
      case 0xCLL:
        *&v67 = COERCE_DOUBLE(type metadata accessor for GroundedParseEmbeddingsResult(0));
        v59 = swift_projectBox();
        v141 = *&v67;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_42;
      case 0xDLL:
        *&v74 = COERCE_DOUBLE(type metadata accessor for GroundedParseClassificationsResult(0));
        v59 = swift_projectBox();
        v141 = *&v74;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_42:
        sub_1D8A01488(v59, boxed_opaque_existential_1, v61);
        break;
      default:
        *&v68 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750));
        v69 = swift_projectBox();
        v141 = *&v68;
        v142 = COERCE_DOUBLE(sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750));
        v70 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v21 = v124;
        sub_1D87A0E38(v69, v70, &qword_1ECA67750);
        break;
    }

    v22 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
    v75 = v131;
    v76 = swift_dynamicCast();
    v77 = *v20;
    if ((v76 & 1) == 0)
    {
      v77(v75, 1, 1, v21);
      sub_1D87A14E4(v75, &qword_1ECA64BB8);
LABEL_4:
      v17 = v24;
      goto LABEL_5;
    }

    v77(v75, 0, 1, v21);
    v78 = v75;
    v79 = v126;
    sub_1D8A01550(v78, v126, type metadata accessor for MetaDetectionResult);
    if (*v79 != v133 || (v125 & 1) != 0 && *&v79[v21[8]] != v18)
    {
      sub_1D8A014F0(v79, type metadata accessor for MetaDetectionResult);
      goto LABEL_4;
    }

    v80 = v21[9];
    if (v79[v80] == 2 && v18 - *&v79[v21[8]] > v57)
    {
      goto LABEL_102;
    }

    CVBundle.latestEstimate.getter(&v146);
    v137 = v146;
    CVDetection.detection.getter(v134);
    v81 = v135;
    v82 = v136;
    __swift_project_boxed_opaque_existential_1(v134, v135);
    v83 = *(v82 + 64);
    v84 = v81;
    v22 = v25;
    v85 = v82;
    v21 = v124;
    v83(&v138, v84, v85);
    __swift_destroy_boxed_opaque_existential_1(v134);
    v79 = v126;

    v86 = v138;
    v87 = v139;
    if (v140 >= v138)
    {
      v88 = v138;
    }

    else
    {
      v88 = v140;
    }

    if (v142 < v88)
    {
      v88 = v142;
    }

    if (v144 < v88)
    {
      v88 = v144;
    }

    if (v141 >= v139)
    {
      v89 = v139;
    }

    else
    {
      v89 = v141;
    }

    if (v143 < v89)
    {
      v89 = v143;
    }

    if (v145 < v89)
    {
      v89 = v145;
    }

    if (v138 <= v140)
    {
      v86 = v140;
    }

    if (v86 <= v142)
    {
      v86 = v142;
    }

    if (v86 <= v144)
    {
      v86 = v144;
    }

    if (v139 <= v141)
    {
      v87 = v141;
    }

    if (v87 <= v143)
    {
      v87 = v143;
    }

    if (v87 <= v145)
    {
      v87 = v145;
    }

    v90 = v86 - v88;
    v91 = v87 - v89;
    v149.origin.x = 0.0;
    v149.origin.y = 0.0;
    v149.size.width = 1.0;
    v149.size.height = 1.0;
    v147 = CGRectIntersection(*&v88, v149);
    x = v147.origin.x;
    y = v147.origin.y;
    width = v147.size.width;
    height = v147.size.height;
    v96 = &v79[v21[5]];
    v97 = *v96;
    v98 = v96[1];
    v99 = v96[2];
    v100 = v96[3];
    v101 = v96[4];
    v102 = v96[5];
    v103 = v96[6];
    v104 = v96[7];
    if (v99 >= *v96)
    {
      v105 = *v96;
    }

    else
    {
      v105 = v96[2];
    }

    if (v101 < v105)
    {
      v105 = v96[4];
    }

    if (v103 < v105)
    {
      v105 = v96[6];
    }

    if (v100 >= v98)
    {
      v106 = v96[1];
    }

    else
    {
      v106 = v96[3];
    }

    if (v102 < v106)
    {
      v106 = v96[5];
    }

    if (v104 < v106)
    {
      v106 = v96[7];
    }

    if (v97 <= v99)
    {
      v97 = v96[2];
    }

    if (v97 <= v101)
    {
      v97 = v96[4];
    }

    if (v97 <= v103)
    {
      v97 = v96[6];
    }

    if (v98 <= v100)
    {
      v98 = v96[3];
    }

    if (v98 <= v102)
    {
      v98 = v96[5];
    }

    if (v98 <= v104)
    {
      v98 = v96[7];
    }

    v107 = v97 - v105;
    v108 = v98 - v106;
    v109 = width;
    v110 = height;
    v148 = CGRectIntersection(*&v105, *&x);
    if (width * height * 0.9 > v148.size.width * v148.size.height)
    {
LABEL_102:
      sub_1D8A014F0(v79, type metadata accessor for MetaDetectionResult);
      v17 = v24;
      v23 = v132;
      goto LABEL_5;
    }

    v111 = v79;
    v112 = v79[v80];
    if (v112 == 3)
    {
      break;
    }

    sub_1D8A014F0(v111, type metadata accessor for MetaDetectionResult);
    v114 = v112 == 2;
    v17 = v24;
    v23 = v132;
    if (v114)
    {
LABEL_115:

      sub_1D8A014F0(v23, type metadata accessor for CVTrackSnapshot);
      return 0;
    }

LABEL_5:
    sub_1D8A014F0(v23, type metadata accessor for CVTrackSnapshot);
    if (v130 == v19)
    {
      goto LABEL_114;
    }
  }

  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v113 = sub_1D8B0AAA4();
  v23 = v132;
  if ((v113 & 1) == 0)
  {
    sub_1D8A014F0(v126, type metadata accessor for MetaDetectionResult);
    v17 = v24;
    if (v125)
    {
      goto LABEL_115;
    }

    goto LABEL_5;
  }

  v138 = 0.0;
  v139 = -2.68156159e154;
  sub_1D8B16720();

  v138 = -2.31584178e77;
  v139 = COERCE_DOUBLE(0x80000001D8B46C70);
  LOBYTE(v134[0]) = v133;
  v116 = CVDetection.DetectionType.description.getter();
  MEMORY[0x1DA71EFA0](v116);

  MEMORY[0x1DA71EFA0](0xD000000000000019, 0x80000001D8B46C90);
  v117 = &v126[v21[10]];
  if (v117[1])
  {
    v118 = *v117;
    v119 = v117[1];
  }

  else
  {
    v119 = 0xEF6E65766967206ELL;
    v118 = 0x6F73616572206F6ELL;
  }

  MEMORY[0x1DA71EFA0](v118, v119);

LABEL_125:
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D89F66C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 344) = a2;
  *(v5 + 352) = a3;
  *(v5 + 336) = a1;
  type metadata accessor for CVTrackSnapshot(0);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = type metadata accessor for CVBundle.BundleType(0);
  *(v5 + 376) = swift_task_alloc();
  v9 = sub_1D8B13240();
  *(v5 + 384) = v9;
  *(v5 + 392) = *(v9 - 8);
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  type metadata accessor for CVBundle(0);
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = type metadata accessor for BundleClassification.ClassificationType(0);
  *(v5 + 432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0);
  *(v5 + 440) = swift_task_alloc();
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  *(v5 + 464) = swift_task_alloc();
  *(v5 + 472) = swift_task_alloc();
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = swift_task_alloc();
  v10 = type metadata accessor for VisualLookupClassifier.Result(0);
  *(v5 + 496) = v10;
  *(v5 + 504) = *(v10 - 8);
  *(v5 + 512) = swift_task_alloc();
  *(v5 + 520) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v5 + 528) = v11;
  v12 = *(a4 + 16);
  *(v5 + 304) = *a4;
  *(v5 + 320) = v12;
  v13 = *(a4 + 32);
  *(v5 + 536) = v13;
  v14 = *(a4 + 56);
  *(v5 + 208) = *(a4 + 40);
  *(v5 + 224) = v14;
  *(v5 + 240) = *(a4 + 72);
  *(v5 + 256) = *(a4 + 88);
  v15 = *v4;
  *(v5 + 570) = *v4;
  *(v5 + 568) = v15;
  v16 = *(a4 + 16);
  *(v5 + 16) = *a4;
  *(v5 + 32) = v16;
  *(v5 + 48) = v13;
  *(v5 + 56) = *(a4 + 40);
  *(v5 + 72) = *(a4 + 56);
  *(v5 + 88) = *(a4 + 72);
  *(v5 + 104) = *(a4 + 88);
  v17 = swift_task_alloc();
  *(v5 + 544) = v17;
  *v17 = v5;
  v17[1] = sub_1D89F6A20;

  return sub_1D89F7944(v11, a2, a3, v5 + 16);
}

uint64_t sub_1D89F6A20()
{

  return MEMORY[0x1EEE6DFA0](sub_1D89F6B1C, 0, 0);
}

uint64_t sub_1D89F6B1C()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 496);
  v3 = *(v2 + 36);
  sub_1D8A01488(v1 + v3, *(v0 + 488), type metadata accessor for VisualLookupClassifier.Result.SearchState);
  if (!swift_getEnumCaseMultiPayload())
  {
    v18 = *(v0 + 536);
    v19 = *(v0 + 528);
    v20 = *(v0 + 496);
    v21 = *(v0 + 504);
    v22 = *(v0 + 488);
    v23 = *(v0 + 336);
    v25 = *v22;
    v24 = v22[1];
    sub_1D8A01488(v19, v23, type metadata accessor for VisualLookupClassifier.Result);
    (*(v21 + 56))(v23, 0, 1, v20);
    swift_storeEnumTagMultiPayload();
    sub_1D8B16720();

    MEMORY[0x1DA71EFA0](v25, v24);

    sub_1D8A014F0(v19, type metadata accessor for VisualLookupClassifier.Result);
    v16 = type metadata accessor for BundleClassification(0);
    v26 = v23 + *(v16 + 20);
    *v26 = 2;
    *(v26 + 8) = 0u;
    *(v26 + 24) = 0u;
    sub_1D88E0FE4(2, 0, 0, 0);
    *v26 = 0;
    *(v26 + 8) = 0xD000000000000010;
    *(v26 + 16) = 0x80000001D8B46CD0;
    *(v26 + 24) = 128;
    *(v26 + 32) = v18;
    v12 = *(v0 + 536);
    goto LABEL_7;
  }

  v4 = *(v0 + 480);
  sub_1D8A014F0(*(v0 + 488), type metadata accessor for VisualLookupClassifier.Result.SearchState);
  sub_1D8A01488(v1 + v3, v4, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1D8A014F0(v4, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  if (EnumCaseMultiPayload != 1)
  {
    __break(1u);
    return result;
  }

  if (*(v0 + 570) - 2 < 2)
  {
    sub_1D8A01550(*(v0 + 528), *(v0 + 520), type metadata accessor for VisualLookupClassifier.Result);
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 2;
LABEL_5:
    v12 = *(v0 + 536);
    v13 = *(v0 + 496);
    v14 = *(v0 + 504);
    v15 = *(v0 + 336);
    sub_1D8A01550(*(v0 + 520), v15, type metadata accessor for VisualLookupClassifier.Result);
    (*(v14 + 56))(v15, 0, 1, v13);
    swift_storeEnumTagMultiPayload();
    v16 = type metadata accessor for BundleClassification(0);
    v17 = v15 + *(v16 + 20);
    *v17 = 2;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    sub_1D88E0FE4(2, 0, 0, 0);
    *v17 = v11;
    *(v17 + 8) = v7;
    *(v17 + 16) = v8;
    *(v17 + 24) = v9;
    *(v17 + 32) = v10;
LABEL_7:
    *(*(v0 + 336) + *(v16 + 24)) = v12;

    v27 = *(v0 + 8);

    return v27();
  }

  if (*(v0 + 570))
  {
    sub_1D8A01488(*(v0 + 352), *(v0 + 432), type metadata accessor for BundleClassification.ClassificationType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D8A014F0(*(v0 + 432), type metadata accessor for BundleClassification.ClassificationType);
      return sub_1D8B168C0();
    }

    v35 = *(v0 + 496);
    v36 = *(v0 + 504);
    v38 = *(v0 + 440);
    v37 = *(v0 + 448);
    sub_1D881F6FC(*(v0 + 432), v37, &qword_1ECA641B0);
    sub_1D87A0E38(v37, v38, &qword_1ECA641B0);
    if ((*(v36 + 48))(v38, 1, v35) == 1)
    {
      v39 = *(v0 + 440);
      sub_1D87A14E4(*(v0 + 448), &qword_1ECA641B0);
      sub_1D87A14E4(v39, &qword_1ECA641B0);
    }

    else
    {
      v40 = *(v0 + 512);
      v41 = *(v0 + 472);
      v42 = *(v0 + 448);
      sub_1D8A01550(*(v0 + 440), v40, type metadata accessor for VisualLookupClassifier.Result);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v40) = _s22VisualIntelligenceCore0A16LookupClassifierV6ResultV11SearchStateO2eeoiySbAG_AGtFZ_0(v41, v40 + *(v2 + 36));
      sub_1D8A014F0(v41, type metadata accessor for VisualLookupClassifier.Result.SearchState);
      sub_1D87A14E4(v42, &qword_1ECA641B0);
      if (v40)
      {
        v43 = *(v0 + 352);
        v44 = (v43 + *(type metadata accessor for BundleClassification(0) + 20));
        v11 = *v44;
        if (*v44 == 2)
        {
          v45 = *(v0 + 520);
          v46 = *(v0 + 512);
          v9 = v44[3];
          v10 = v44[4];
          v7 = v44[1];
          v8 = v44[2];
          sub_1D8A014F0(*(v0 + 528), type metadata accessor for VisualLookupClassifier.Result);
          sub_1D8A01550(v46, v45, type metadata accessor for VisualLookupClassifier.Result);
          goto LABEL_5;
        }
      }

      sub_1D8A014F0(*(v0 + 512), type metadata accessor for VisualLookupClassifier.Result);
    }
  }

  v28 = *(v0 + 536);
  *(v0 + 569) = *(v0 + 570);
  v29 = *(v0 + 320);
  *(v0 + 112) = *(v0 + 304);
  *(v0 + 128) = v29;
  *(v0 + 144) = v28;
  v30 = *(v0 + 224);
  *(v0 + 152) = *(v0 + 208);
  *(v0 + 168) = v30;
  *(v0 + 184) = *(v0 + 240);
  *(v0 + 200) = *(v0 + 256);
  v31 = swift_task_alloc();
  *(v0 + 552) = v31;
  *v31 = v0;
  v31[1] = sub_1D89F726C;
  v32 = *(v0 + 528);
  v33 = *(v0 + 520);
  v34 = *(v0 + 352);

  return sub_1D89FB3B8(v33, v0 + 264, v32, v34, v0 + 112);
}

uint64_t sub_1D89F726C(double a1)
{
  *(*v1 + 560) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D89F736C, 0, 0);
}

uint64_t sub_1D89F736C()
{
  v44 = v0;
  v41 = *(v0 + 280);
  v42 = *(v0 + 264);
  v1 = *(v0 + 296);
  sub_1D8A01488(*(v0 + 520) + *(*(v0 + 496) + 36), *(v0 + 464), type metadata accessor for VisualLookupClassifier.Result.SearchState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v15 = *(v0 + 464);
    sub_1D8A014F0(*(v0 + 528), type metadata accessor for VisualLookupClassifier.Result);
    v16 = type metadata accessor for VisualLookupClassifier.Result.SearchState;
LABEL_9:
    v17 = v16;
    v18 = v15;
    goto LABEL_14;
  }

  sub_1D8A014F0(*(v0 + 464), type metadata accessor for VisualLookupClassifier.Result.SearchState);
  if (v42 == 2)
  {
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 416);
    v3 = *(v0 + 344);
    v4 = sub_1D8B151E0();
    __swift_project_value_buffer(v4, qword_1EE0E4520);
    sub_1D8A01488(v3, v2, type metadata accessor for CVBundle);
    v5 = sub_1D8B151C0();
    v6 = sub_1D8B16210();
    if (os_log_type_enabled(v5, v6))
    {
      v40 = v6;
      v7 = *(v0 + 416);
      v8 = *(v0 + 376);
      v9 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43 = v38;
      buf = v9;
      *v9 = 136315138;
      sub_1D8A01488(v7, v8, type metadata accessor for CVBundle.BundleType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = *(v0 + 392);
      v11 = *(v0 + 400);
      v13 = *(v0 + 384);
      if (EnumCaseMultiPayload == 1)
      {
        v14 = *(v12 + 32);
        v14(*(v0 + 400), *(v0 + 376), *(v0 + 384));
      }

      else
      {
        v20 = *(v0 + 360);
        sub_1D8A01550(*(v0 + 376), v20, type metadata accessor for CVTrackSnapshot);
        (*(v12 + 16))(v11, v20, v13);
        sub_1D8A014F0(v20, type metadata accessor for CVTrackSnapshot);
        v14 = *(v12 + 32);
      }

      v37 = *(v0 + 528);
      v21 = *(v0 + 408);
      v22 = *(v0 + 416);
      v23 = *(v0 + 392);
      v24 = *(v0 + 384);
      v14(v21, *(v0 + 400), v24);
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v25 = sub_1D8B16B50();
      v27 = v26;
      (*(v23 + 8))(v21, v24);
      sub_1D8A014F0(v22, type metadata accessor for CVBundle);
      v28 = sub_1D89AC714(v25, v27, &v43);

      *(buf + 4) = v28;
      _os_log_impl(&dword_1D8783000, v5, v40, ".searchable state is considered an error type in eager mode (bundle id: %s)", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1DA721330](v38, -1, -1);
      MEMORY[0x1DA721330](buf, -1, -1);

      v17 = type metadata accessor for VisualLookupClassifier.Result;
      v18 = v37;
      goto LABEL_14;
    }

    v15 = *(v0 + 528);
    v19 = *(v0 + 416);

    sub_1D8A014F0(v19, type metadata accessor for CVBundle);
    v16 = type metadata accessor for VisualLookupClassifier.Result;
    goto LABEL_9;
  }

  v18 = *(v0 + 528);
  v17 = type metadata accessor for VisualLookupClassifier.Result;
LABEL_14:
  sub_1D8A014F0(v18, v17);
  v29 = *(v0 + 560);
  v30 = *(v0 + 496);
  v31 = *(v0 + 504);
  v32 = *(v0 + 336);
  sub_1D8A01550(*(v0 + 520), v32, type metadata accessor for VisualLookupClassifier.Result);
  (*(v31 + 56))(v32, 0, 1, v30);
  swift_storeEnumTagMultiPayload();
  v33 = type metadata accessor for BundleClassification(0);
  v34 = v32 + *(v33 + 20);
  *v34 = 2;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  sub_1D88E0FE4(2, 0, 0, 0);
  *v34 = v42;
  *(v34 + 16) = v41;
  *(v34 + 32) = v1;
  *(*(v0 + 336) + *(v33 + 24)) = v29;

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1D89F7944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 208) = a3;
  *(v5 + 216) = a4;
  *(v5 + 192) = a1;
  *(v5 + 200) = a2;
  type metadata accessor for CVTrackSnapshot(0);
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = type metadata accessor for CVBundle.BundleType(0);
  *(v5 + 240) = swift_task_alloc();
  v7 = sub_1D8B13240();
  *(v5 + 248) = v7;
  *(v5 + 256) = *(v7 - 8);
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8);
  *(v5 + 280) = swift_task_alloc();
  v8 = sub_1D8B13830();
  *(v5 + 288) = v8;
  *(v5 + 296) = *(v8 - 8);
  *(v5 + 304) = swift_task_alloc();
  v9 = sub_1D8B138B0();
  *(v5 + 312) = v9;
  *(v5 + 320) = *(v9 - 8);
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  *(v5 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67138);
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67140);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67148);
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = type metadata accessor for BundleClassification.ClassificationType(0);
  *(v5 + 408) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0);
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  *(v5 + 432) = swift_task_alloc();
  type metadata accessor for CVBundle(0);
  *(v5 + 440) = swift_task_alloc();
  *(v5 + 448) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650B8);
  *(v5 + 456) = swift_task_alloc();
  *(v5 + 464) = type metadata accessor for ParseDetectorResult(0);
  *(v5 + 472) = swift_task_alloc();
  *(v5 + 480) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67150);
  *(v5 + 488) = swift_task_alloc();
  v10 = type metadata accessor for GenericParseDataResult();
  *(v5 + 496) = v10;
  *(v5 + 504) = *(v10 - 8);
  *(v5 + 512) = swift_task_alloc();
  *(v5 + 520) = swift_task_alloc();
  v11 = *(a4 + 16);
  *(v5 + 16) = *a4;
  *(v5 + 32) = v11;
  *(v5 + 48) = *(a4 + 32);
  v12 = *(a4 + 40);
  *(v5 + 609) = v12;
  *(v5 + 608) = v12;
  *(v5 + 610) = *v4;

  return MEMORY[0x1EEE6DFA0](sub_1D89F7E50, 0, 0);
}

uint64_t sub_1D89F7E50()
{
  v125 = v0;
  v1 = *(v0 + 609);
  v2 = *(v0 + 488);
  v3 = *(v0 + 216);
  v4 = *(v0 + 200);
  CVBundle.latestEstimate.getter(&v121);
  v5 = v121;
  *(v0 + 528) = v121;
  *(v0 + 56) = v1;
  v6 = *(v3 + 41);
  v7 = *(v3 + 57);
  *(v0 + 88) = *(v3 + 72);
  *(v0 + 73) = v7;
  *(v0 + 57) = v6;
  sub_1D89FD44C(v4, (v0 + 16), v2);
  if (!(v5 >> 60))
  {
    v31 = *(v0 + 496);
    v32 = *(v0 + 504);
    v33 = *(v0 + 456);
    v34 = *(v0 + 200);
    v122 = *(v0 + 610);
    sub_1D89ED8A0(v34, v33);
    v35 = (*(v32 + 48))(v33, 1, v31);
    if (v35 == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D8A01550(*(v0 + 456), *(v0 + 520), type metadata accessor for GenericParseDataResult);
      if (!sub_1D89FD9C4())
      {
        v29 = 0;
        goto LABEL_13;
      }

      *(v0 + 536) = sub_1D8B15E80();
      *(v0 + 544) = sub_1D8B15E70();
      v38 = sub_1D8B15E00();
      v40 = v39;
      v35 = sub_1D89F8BAC;
      v36 = v38;
      v37 = v40;
    }

    return MEMORY[0x1EEE6DFA0](v35, v36, v37);
  }

  if (v5 >> 60 != 4)
  {
    return sub_1D8B168C0();
  }

  v8 = *(v0 + 520);
  v9 = *(v0 + 496);
  v10 = *(v0 + 472);
  v11 = *(v0 + 480);
  v12 = *(v0 + 464);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  v15 = swift_projectBox();
  sub_1D8A01488(v15, v11, type metadata accessor for ParseDetectorResult);
  sub_1D8A01488(v11, v10, type metadata accessor for ParseDetectorResult);
  (*(v14 + 16))(v8, v10, v13);
  v16 = *(v10 + v12[9]);
  v17 = *(v10 + v12[7]);
  sub_1D8A01488(v10 + v12[13], v8 + v9[7], type metadata accessor for VisualUnderstandingContainer);
  v18 = v12[11];
  v119 = *(v10 + v12[10]);
  v19 = v12[15];
  v20 = *(v10 + v12[14]);
  v21 = (v10 + v12[12]);
  v23 = *v21;
  v22 = v21[1];
  v25 = *(v10 + v18);
  v24 = *(v10 + v18 + 8);
  v117 = *(v10 + v19);

  sub_1D8A014F0(v10, type metadata accessor for ParseDetectorResult);
  *(v8 + v9[5]) = v16;
  *(v8 + v9[6]) = v17;
  *(v8 + v9[8]) = v119;
  *(v8 + v9[9]) = v20;
  v26 = (v8 + v9[10]);
  *v26 = v23;
  v26[1] = v22;
  v27 = (v8 + v9[11]);
  *v27 = v25;
  v27[1] = v24;
  *(v8 + v9[12]) = v117;
  if (qword_1EE0E91A8 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 480);
  v29 = qword_1EE0ED790;
  sub_1D8A014F0(v28, type metadata accessor for ParseDetectorResult);
  v30 = v29;
LABEL_13:
  sub_1D8A01488(*(v0 + 208), *(v0 + 408), type metadata accessor for BundleClassification.ClassificationType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D8A014F0(*(v0 + 408), type metadata accessor for BundleClassification.ClassificationType);
    return sub_1D8B168C0();
  }

  sub_1D881F6FC(*(v0 + 408), *(v0 + 432), &qword_1ECA641B0);
  v41 = *(v0 + 608);
  if (qword_1ECA62270 != -1)
  {
    v111 = *(v0 + 608);
    swift_once();
    v41 = v111;
  }

  v42 = *(v0 + 352);
  v118 = v41;
  sub_1D89FF2DC(*(v0 + 520), *(v0 + 488), v41, v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EA8);
  v44 = (*(*(v43 - 8) + 48))(v42, 1, v43);
  v45 = *(v0 + 376);
  if (v44 == 1)
  {
    v46 = *(v0 + 360);
    v47 = *(v0 + 312);
    v48 = *(v0 + 320);
    sub_1D87A14E4(*(v0 + 352), &qword_1ECA67138);
    v49 = *(v46 + 48);
    *v45 = 0;
    *(v45 + 8) = 1;
    (*(v48 + 56))(v45 + v49, 1, 1, v47);
  }

  else
  {
    v51 = *(v0 + 368);
    v52 = *(v0 + 352);
    v53 = *(v0 + 312);
    v54 = *(v0 + 320);
    v55 = *(v43 + 48);
    v56 = *(*(v0 + 360) + 48);
    *v51 = *v52;
    *(v51 + 8) = 0;
    (*(v54 + 32))(v51 + v56, &v52[v55], v53);
    (*(v54 + 56))(v51 + v56, 0, 1, v53);
    sub_1D881F6FC(v51, v45, &qword_1ECA67140);
  }

  v57 = *(v0 + 384);
  v58 = *(v0 + 392);
  v59 = *(v0 + 376);
  v60 = *(v0 + 312);
  v61 = *(v0 + 320);
  v116 = *v59;
  v115 = *(v59 + 8);
  sub_1D881F6FC(v59 + *(*(v0 + 360) + 48), v58, &qword_1ECA67148);
  sub_1D87A0E38(v58, v57, &qword_1ECA67148);
  if ((*(v61 + 48))(v57, 1, v60) == 1)
  {
    v62 = *(v0 + 384);
    v63 = &qword_1ECA67148;
LABEL_25:
    sub_1D87A14E4(v62, v63);
    v73 = *(v0 + 344);
    *v73 = 0xD000000000000029;
    v73[1] = 0x80000001D8B46F30;
    goto LABEL_26;
  }

  v64 = *(v0 + 520);
  v65 = *(v0 + 496);
  v66 = *(v0 + 288);
  v67 = *(v0 + 296);
  v68 = *(v0 + 280);
  v69 = *(*(v0 + 320) + 32);
  v69(*(v0 + 328), *(v0 + 384), *(v0 + 312));
  v70 = *(v65 + 28);
  v71 = type metadata accessor for VisualUnderstandingContainer(0);
  sub_1D87A0E38(v64 + *(v71 + 20) + v70, v68, &qword_1ECA635E8);
  if ((*(v67 + 48))(v68, 1, v66) == 1)
  {
    v72 = *(v0 + 280);
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    v63 = &qword_1ECA635E8;
    v62 = v72;
    goto LABEL_25;
  }

  v104 = *(v0 + 610);
  (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 280), *(v0 + 288));
  v124[0] = v104;
  v105 = sub_1D89FDC98(v124);
  v106 = *(v0 + 344);
  v107 = *(v0 + 328);
  if (v105)
  {
    v108 = *(v0 + 312);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    v69(v106, v107, v108);
    swift_storeEnumTagMultiPayload();
    if (!v29)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v109 = *(v0 + 312);
  v110 = *(v0 + 320);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  (*(v110 + 8))(v107, v109);
  *v106 = 0xD000000000000012;
  v106[1] = 0x80000001D8B46F60;
LABEL_26:
  swift_storeEnumTagMultiPayload();
  if (v29)
  {
LABEL_27:
  }

LABEL_28:
  sub_1D8A01488(*(v0 + 200), *(v0 + 240), type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v76 = *(v0 + 256);
  v75 = *(v0 + 264);
  v77 = *(v0 + 248);
  if (EnumCaseMultiPayload == 1)
  {
    v78 = *(v76 + 32);
    v78(*(v0 + 264), *(v0 + 240), *(v0 + 248));
    v79 = v29;
  }

  else
  {
    v80 = *(v0 + 224);
    sub_1D8A01550(*(v0 + 240), v80, type metadata accessor for CVTrackSnapshot);
    (*(v76 + 16))(v75, v80, v77);
    v81 = v29;
    sub_1D8A014F0(v80, type metadata accessor for CVTrackSnapshot);
    v78 = *(v76 + 32);
  }

  v82 = *(v0 + 610);
  v83 = *(v0 + 520);
  v84 = *(v0 + 512);
  v86 = *(v0 + 424);
  v85 = *(v0 + 432);
  v78(*(v0 + 272), *(v0 + 264), *(v0 + 248));
  sub_1D8A01488(v83, v84, type metadata accessor for GenericParseDataResult);
  v123 = v82;
  sub_1D87A0E38(v85, v86, &qword_1ECA641B0);
  v87 = type metadata accessor for VisualLookupClassifier.Result(0);
  v113 = *(*(v87 - 1) + 48);
  v88 = v113(v86, 1, v87);
  v89 = *(v0 + 424);
  v120 = v29;
  v114 = v78;
  if (v88 == 1)
  {
    sub_1D87A14E4(v89, &qword_1ECA641B0);
    v90 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v90 = *(v89 + v87[7]);

    sub_1D8A014F0(v89, type metadata accessor for VisualLookupClassifier.Result);
  }

  v91 = *(v0 + 520);
  v92 = *(v0 + 488);
  v93 = *(v0 + 432);
  v94 = *(v0 + 416);
  v95 = *(v0 + 392);
  v112 = sub_1D89ED604(v90);

  sub_1D87A14E4(v95, &qword_1ECA67148);
  sub_1D87A14E4(v92, &qword_1ECA67150);
  sub_1D8A014F0(v91, type metadata accessor for GenericParseDataResult);
  sub_1D881F6FC(v93, v94, &qword_1ECA641B0);
  v96 = v113(v94, 1, v87);
  v97 = *(v0 + 416);
  if (v96 == 1)
  {
    sub_1D87A14E4(*(v0 + 416), &qword_1ECA641B0);
    v98 = 0;
  }

  else
  {
    v98 = *(v97 + v87[8]);

    sub_1D8A014F0(v97, type metadata accessor for VisualLookupClassifier.Result);
  }

  v99 = *(v0 + 512);
  v100 = *(v0 + 344);
  v101 = *(v0 + 192);
  v114(v101, *(v0 + 272), *(v0 + 248));
  sub_1D8A01550(v99, v101 + v87[5], type metadata accessor for GenericParseDataResult);
  *(v101 + v87[6]) = v120;
  *(v101 + v87[7]) = v112;
  *(v101 + v87[8]) = v98;
  sub_1D8A01550(v100, v101 + v87[9], type metadata accessor for VisualLookupClassifier.Result.SearchState);
  v102 = v101 + v87[10];
  *v102 = v116;
  *(v102 + 8) = v115;
  *(v101 + v87[11]) = v118;

  v103 = *(v0 + 8);

  return v103();
}

uint64_t sub_1D89F8BAC()
{

  if (qword_1EE0E67F8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D89F8C44, 0, 0);
}

uint64_t sub_1D89F8C44()
{
  *(v0 + 552) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D89F8CD0, v2, v1);
}

uint64_t sub_1D89F8CD0()
{

  *(v0 + 560) = qword_1EE0E6800;

  return MEMORY[0x1EEE6DFA0](sub_1D89F8D44, 0, 0);
}

uint64_t sub_1D89F8D44()
{
  *(v0 + 568) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D89F8DD0, v2, v1);
}

uint64_t sub_1D89F8DD0()
{
  v1 = v0[70];

  swift_getKeyPath();
  v0[22] = v1;
  sub_1D8A011DC(&qword_1ECA66830, type metadata accessor for LocationsHandler);
  sub_1D8B13520();

  v2 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationInternal);
  if (v2)
  {
    v3 = v0[70];
    swift_getKeyPath();
    v0[23] = v3;
    v4 = v2;
    sub_1D8B13520();

    v5 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__heading);
    v6 = v5;
    v0[72] = sub_1D89AFE24(v5);

    v7 = sub_1D89F8F54;
  }

  else
  {
    v7 = sub_1D89F996C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D89F8F54()
{
  v82 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 208);
  v3 = *(v0 + 576);
  sub_1D8A01488(v2, v1, type metadata accessor for BundleClassification.ClassificationType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D8A014F0(*(v0 + 408), type metadata accessor for BundleClassification.ClassificationType);
    return sub_1D8B168C0();
  }

  sub_1D881F6FC(*(v0 + 408), *(v0 + 432), &qword_1ECA641B0);
  v4 = *(v0 + 608);
  if (qword_1ECA62270 != -1)
  {
    v73 = *(v0 + 608);
    swift_once();
    v4 = v73;
  }

  v5 = *(v0 + 352);
  v79 = v4;
  sub_1D89FF2DC(*(v0 + 520), *(v0 + 488), v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EA8);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  v8 = *(v0 + 376);
  if (v7 == 1)
  {
    v9 = *(v0 + 360);
    v10 = *(v0 + 312);
    v11 = *(v0 + 320);
    sub_1D87A14E4(*(v0 + 352), &qword_1ECA67138);
    v12 = *(v9 + 48);
    *v8 = 0;
    *(v8 + 8) = 1;
    (*(v11 + 56))(v8 + v12, 1, 1, v10);
  }

  else
  {
    v14 = *(v0 + 368);
    v15 = *(v0 + 352);
    v16 = *(v0 + 312);
    v17 = *(v0 + 320);
    v18 = *(v6 + 48);
    v19 = *(*(v0 + 360) + 48);
    *v14 = *v15;
    *(v14 + 8) = 0;
    (*(v17 + 32))(v14 + v19, &v15[v18], v16);
    (*(v17 + 56))(v14 + v19, 0, 1, v16);
    sub_1D881F6FC(v14, v8, &qword_1ECA67140);
  }

  v20 = *(v0 + 384);
  v21 = *(v0 + 392);
  v22 = *(v0 + 376);
  v23 = *(v0 + 312);
  v24 = *(v0 + 320);
  v78 = *v22;
  v77 = *(v22 + 8);
  sub_1D881F6FC(v22 + *(*(v0 + 360) + 48), v21, &qword_1ECA67148);
  sub_1D87A0E38(v21, v20, &qword_1ECA67148);
  if ((*(v24 + 48))(v20, 1, v23) == 1)
  {
    v25 = *(v0 + 384);
    v26 = &qword_1ECA67148;
LABEL_12:
    sub_1D87A14E4(v25, v26);
    v36 = *(v0 + 344);
    *v36 = 0xD000000000000029;
    v36[1] = 0x80000001D8B46F30;
    goto LABEL_13;
  }

  v27 = *(v0 + 520);
  v28 = *(v0 + 496);
  v29 = *(v0 + 288);
  v30 = *(v0 + 296);
  v31 = *(v0 + 280);
  v32 = *(*(v0 + 320) + 32);
  v32(*(v0 + 328), *(v0 + 384), *(v0 + 312));
  v33 = *(v28 + 28);
  v34 = type metadata accessor for VisualUnderstandingContainer(0);
  sub_1D87A0E38(v27 + *(v34 + 20) + v33, v31, &qword_1ECA635E8);
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    v35 = *(v0 + 280);
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    v26 = &qword_1ECA635E8;
    v25 = v35;
    goto LABEL_12;
  }

  v66 = *(v0 + 610);
  (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 280), *(v0 + 288));
  v81[0] = v66;
  v67 = sub_1D89FDC98(v81);
  v68 = *(v0 + 344);
  v69 = *(v0 + 328);
  if (v67)
  {
    v70 = *(v0 + 312);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    v32(v68, v69, v70);
    swift_storeEnumTagMultiPayload();
    if (!v3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v71 = *(v0 + 312);
  v72 = *(v0 + 320);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  (*(v72 + 8))(v69, v71);
  *v68 = 0xD000000000000012;
  v68[1] = 0x80000001D8B46F60;
LABEL_13:
  swift_storeEnumTagMultiPayload();
  if (v3)
  {
LABEL_14:
  }

LABEL_15:
  sub_1D8A01488(*(v0 + 200), *(v0 + 240), type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v39 = *(v0 + 256);
  v38 = *(v0 + 264);
  v40 = *(v0 + 248);
  if (EnumCaseMultiPayload == 1)
  {
    v41 = *(v39 + 32);
    v41(*(v0 + 264), *(v0 + 240), *(v0 + 248));
    v42 = v3;
  }

  else
  {
    v43 = *(v0 + 224);
    sub_1D8A01550(*(v0 + 240), v43, type metadata accessor for CVTrackSnapshot);
    (*(v39 + 16))(v38, v43, v40);
    v44 = v3;
    sub_1D8A014F0(v43, type metadata accessor for CVTrackSnapshot);
    v41 = *(v39 + 32);
  }

  v45 = *(v0 + 520);
  v46 = *(v0 + 512);
  v48 = *(v0 + 424);
  v47 = *(v0 + 432);
  v41(*(v0 + 272), *(v0 + 264), *(v0 + 248));
  sub_1D8A01488(v45, v46, type metadata accessor for GenericParseDataResult);
  sub_1D87A0E38(v47, v48, &qword_1ECA641B0);
  v49 = type metadata accessor for VisualLookupClassifier.Result(0);
  v75 = *(*(v49 - 1) + 48);
  v50 = v75(v48, 1, v49);
  v51 = *(v0 + 424);
  v80 = v3;
  v76 = v41;
  if (v50 == 1)
  {
    sub_1D87A14E4(v51, &qword_1ECA641B0);
    v52 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v52 = *(v51 + v49[7]);

    sub_1D8A014F0(v51, type metadata accessor for VisualLookupClassifier.Result);
  }

  v53 = *(v0 + 520);
  v54 = *(v0 + 488);
  v55 = *(v0 + 432);
  v56 = *(v0 + 416);
  v57 = *(v0 + 392);
  v74 = sub_1D89ED604(v52);

  sub_1D87A14E4(v57, &qword_1ECA67148);
  sub_1D87A14E4(v54, &qword_1ECA67150);
  sub_1D8A014F0(v53, type metadata accessor for GenericParseDataResult);
  sub_1D881F6FC(v55, v56, &qword_1ECA641B0);
  v58 = v75(v56, 1, v49);
  v59 = *(v0 + 416);
  if (v58 == 1)
  {
    sub_1D87A14E4(*(v0 + 416), &qword_1ECA641B0);
    v60 = 0;
  }

  else
  {
    v60 = *(v59 + v49[8]);

    sub_1D8A014F0(v59, type metadata accessor for VisualLookupClassifier.Result);
  }

  v61 = *(v0 + 512);
  v62 = *(v0 + 344);
  v63 = *(v0 + 192);
  v76(v63, *(v0 + 272), *(v0 + 248));
  sub_1D8A01550(v61, v63 + v49[5], type metadata accessor for GenericParseDataResult);
  *(v63 + v49[6]) = v80;
  *(v63 + v49[7]) = v74;
  *(v63 + v49[8]) = v60;
  sub_1D8A01550(v62, v63 + v49[9], type metadata accessor for VisualLookupClassifier.Result.SearchState);
  v64 = v63 + v49[10];
  *v64 = v78;
  *(v64 + 8) = v77;
  *(v63 + v49[11]) = v79;

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1D89F996C()
{
  v110 = v0;
  if (*(v0 + 608) == 1)
  {
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 448);
    v2 = *(v0 + 200);
    v3 = sub_1D8B151E0();
    __swift_project_value_buffer(v3, qword_1EE0E4520);
    sub_1D8A01488(v2, v1, type metadata accessor for CVBundle);
    v4 = sub_1D8B151C0();
    v5 = sub_1D8B16230();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 448);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v107 = v9;
      *v8 = 136315138;
      CVBundle.latestEstimate.getter(&v108);
      v109 = v108;
      CVDetection.detection.getter((v0 + 136));
      v10 = *(v0 + 160);
      v11 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v10);
      v12 = (*(v11 + 72))(v10, v11);
      v14 = v13;

      sub_1D8A014F0(v7, type metadata accessor for CVBundle);
      __swift_destroy_boxed_opaque_existential_1(v0 + 136);
      v15 = sub_1D89AC714(v12, v14, &v107);

      *(v8 + 4) = v15;
      _os_log_impl(&dword_1D8783000, v4, v5, "%s: wants location but not prompting user for authorization because this is a high resolution still", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1DA721330](v9, -1, -1);
      MEMORY[0x1DA721330](v8, -1, -1);
    }

    else
    {

      sub_1D8A014F0(v7, type metadata accessor for CVBundle);
    }

    sub_1D8A01488(*(v0 + 208), *(v0 + 408), type metadata accessor for BundleClassification.ClassificationType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D8A014F0(*(v0 + 408), type metadata accessor for BundleClassification.ClassificationType);
      return sub_1D8B168C0();
    }

    sub_1D881F6FC(*(v0 + 408), *(v0 + 432), &qword_1ECA641B0);
    v31 = *(v0 + 608);
    if (qword_1ECA62270 != -1)
    {
      v99 = *(v0 + 608);
      swift_once();
      v31 = v99;
    }

    v32 = *(v0 + 352);
    v106 = v31;
    sub_1D89FF2DC(*(v0 + 520), *(v0 + 488), v31, v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EA8);
    v34 = (*(*(v33 - 8) + 48))(v32, 1, v33);
    v35 = *(v0 + 376);
    if (v34 == 1)
    {
      v36 = *(v0 + 360);
      v37 = *(v0 + 312);
      v38 = *(v0 + 320);
      sub_1D87A14E4(*(v0 + 352), &qword_1ECA67138);
      v39 = *(v36 + 48);
      *v35 = 0;
      *(v35 + 8) = 1;
      (*(v38 + 56))(v35 + v39, 1, 1, v37);
    }

    else
    {
      v42 = *(v0 + 368);
      v43 = *(v0 + 352);
      v44 = *(v0 + 312);
      v45 = *(v0 + 320);
      v46 = *(v33 + 48);
      v47 = *(*(v0 + 360) + 48);
      *v42 = *v43;
      *(v42 + 8) = 0;
      (*(v45 + 32))(v42 + v47, &v43[v46], v44);
      (*(v45 + 56))(v42 + v47, 0, 1, v44);
      sub_1D881F6FC(v42, v35, &qword_1ECA67140);
    }

    v48 = *(v0 + 384);
    v49 = *(v0 + 392);
    v50 = *(v0 + 376);
    v51 = *(v0 + 312);
    v52 = *(v0 + 320);
    v105 = *v50;
    v104 = *(v50 + 8);
    sub_1D881F6FC(v50 + *(*(v0 + 360) + 48), v49, &qword_1ECA67148);
    sub_1D87A0E38(v49, v48, &qword_1ECA67148);
    if ((*(v52 + 48))(v48, 1, v51) == 1)
    {
      v53 = *(v0 + 384);
      v54 = &qword_1ECA67148;
    }

    else
    {
      v55 = *(v0 + 520);
      v56 = *(v0 + 496);
      v57 = *(v0 + 288);
      v58 = *(v0 + 296);
      v59 = *(v0 + 280);
      v60 = *(*(v0 + 320) + 32);
      v60(*(v0 + 328), *(v0 + 384), *(v0 + 312));
      v61 = *(v56 + 28);
      v62 = type metadata accessor for VisualUnderstandingContainer(0);
      sub_1D87A0E38(v55 + *(v62 + 20) + v61, v59, &qword_1ECA635E8);
      if ((*(v58 + 48))(v59, 1, v57) != 1)
      {
        v93 = *(v0 + 610);
        (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 280), *(v0 + 288));
        LOBYTE(v109) = v93;
        v94 = sub_1D89FDC98(&v109);
        v95 = *(v0 + 344);
        v96 = *(v0 + 328);
        v97 = *(v0 + 312);
        if (v94)
        {
          (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
          v60(v95, v96, v97);
        }

        else
        {
          v98 = *(v0 + 320);
          (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
          (*(v98 + 8))(v96, v97);
          *v95 = 0xD000000000000012;
          v95[1] = 0x80000001D8B46F60;
        }

LABEL_27:
        swift_storeEnumTagMultiPayload();
        sub_1D8A01488(*(v0 + 200), *(v0 + 240), type metadata accessor for CVBundle.BundleType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v67 = *(v0 + 256);
        v66 = *(v0 + 264);
        v68 = *(v0 + 248);
        if (EnumCaseMultiPayload == 1)
        {
          v69 = *(v67 + 32);
          v69(*(v0 + 264), *(v0 + 240), *(v0 + 248));
        }

        else
        {
          v70 = *(v0 + 224);
          sub_1D8A01550(*(v0 + 240), v70, type metadata accessor for CVTrackSnapshot);
          (*(v67 + 16))(v66, v70, v68);
          sub_1D8A014F0(v70, type metadata accessor for CVTrackSnapshot);
          v69 = *(v67 + 32);
        }

        v71 = *(v0 + 610);
        v72 = *(v0 + 520);
        v73 = *(v0 + 512);
        v75 = *(v0 + 424);
        v74 = *(v0 + 432);
        v69(*(v0 + 272), *(v0 + 264), *(v0 + 248));
        sub_1D8A01488(v72, v73, type metadata accessor for GenericParseDataResult);
        LOBYTE(v109) = v71;
        sub_1D87A0E38(v74, v75, &qword_1ECA641B0);
        v76 = type metadata accessor for VisualLookupClassifier.Result(0);
        v102 = *(*(v76 - 1) + 48);
        v77 = v102(v75, 1, v76);
        v78 = *(v0 + 424);
        v103 = v69;
        if (v77 == 1)
        {
          sub_1D87A14E4(v78, &qword_1ECA641B0);
          v79 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v79 = *(v78 + v76[7]);

          sub_1D8A014F0(v78, type metadata accessor for VisualLookupClassifier.Result);
        }

        v80 = *(v0 + 520);
        v81 = *(v0 + 488);
        v82 = *(v0 + 432);
        v83 = *(v0 + 416);
        v84 = *(v0 + 392);
        v101 = sub_1D89ED604(v79);

        sub_1D87A14E4(v84, &qword_1ECA67148);
        sub_1D87A14E4(v81, &qword_1ECA67150);
        sub_1D8A014F0(v80, type metadata accessor for GenericParseDataResult);
        sub_1D881F6FC(v82, v83, &qword_1ECA641B0);
        v85 = v102(v83, 1, v76);
        v86 = *(v0 + 416);
        if (v85 == 1)
        {
          sub_1D87A14E4(*(v0 + 416), &qword_1ECA641B0);
          v87 = 0;
        }

        else
        {
          v87 = *(v86 + v76[8]);

          sub_1D8A014F0(v86, type metadata accessor for VisualLookupClassifier.Result);
        }

        v88 = *(v0 + 512);
        v89 = *(v0 + 344);
        v90 = *(v0 + 192);
        v103(v90, *(v0 + 272), *(v0 + 248));
        sub_1D8A01550(v88, v90 + v76[5], type metadata accessor for GenericParseDataResult);
        *(v90 + v76[6]) = 0;
        *(v90 + v76[7]) = v101;
        *(v90 + v76[8]) = v87;
        sub_1D8A01550(v89, v90 + v76[9], type metadata accessor for VisualLookupClassifier.Result.SearchState);
        v91 = v90 + v76[10];
        *v91 = v105;
        *(v91 + 8) = v104;
        *(v90 + v76[11]) = v106;

        v92 = *(v0 + 8);

        return v92();
      }

      v63 = *(v0 + 280);
      (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
      v54 = &qword_1ECA635E8;
      v53 = v63;
    }

    sub_1D87A14E4(v53, v54);
    v64 = *(v0 + 344);
    *v64 = 0xD000000000000029;
    v64[1] = 0x80000001D8B46F30;
    goto LABEL_27;
  }

  if (qword_1EE0E4518 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 440);
  v17 = *(v0 + 200);
  v18 = sub_1D8B151E0();
  __swift_project_value_buffer(v18, qword_1EE0E4520);
  sub_1D8A01488(v17, v16, type metadata accessor for CVBundle);
  v19 = sub_1D8B151C0();
  v20 = sub_1D8B16210();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 440);
  if (v21)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v107 = v24;
    *v23 = 136315138;
    CVBundle.latestEstimate.getter(&v108);
    v109 = v108;
    CVDetection.detection.getter((v0 + 96));
    v25 = *(v0 + 120);
    v26 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v25);
    v27 = (*(v26 + 72))(v25, v26);
    v29 = v28;

    sub_1D8A014F0(v22, type metadata accessor for CVBundle);
    __swift_destroy_boxed_opaque_existential_1(v0 + 96);
    v30 = sub_1D89AC714(v27, v29, &v107);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_1D8783000, v19, v20, "%s: wants location but providing nil; prompting user for authorization", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1DA721330](v24, -1, -1);
    MEMORY[0x1DA721330](v23, -1, -1);
  }

  else
  {

    sub_1D8A014F0(v22, type metadata accessor for CVBundle);
  }

  *(v0 + 584) = sub_1D8B15E70();
  v41 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D89FA77C, v41, v40);
}

uint64_t sub_1D89FA77C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D89FA7E4, 0, 0);
}

uint64_t sub_1D89FA7E4()
{
  *(v0 + 592) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D89FA870, v2, v1);
}

uint64_t sub_1D89FA870()
{

  return MEMORY[0x1EEE6DFA0](sub_1D89FA8D8, 0, 0);
}

uint64_t sub_1D89FA8D8()
{
  *(v0 + 600) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D89FA964, v2, v1);
}

uint64_t sub_1D89FA964()
{

  if (sub_1D89B46EC())
  {
    sub_1D89B1580();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D89FA9E0, 0, 0);
}

uint64_t sub_1D89FA9E0()
{
  v75 = v0;
  sub_1D8A01488(*(v0 + 208), *(v0 + 408), type metadata accessor for BundleClassification.ClassificationType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D8A014F0(*(v0 + 408), type metadata accessor for BundleClassification.ClassificationType);
    return sub_1D8B168C0();
  }

  sub_1D881F6FC(*(v0 + 408), *(v0 + 432), &qword_1ECA641B0);
  v1 = *(v0 + 608);
  if (qword_1ECA62270 != -1)
  {
    v67 = *(v0 + 608);
    swift_once();
    v1 = v67;
  }

  v2 = *(v0 + 352);
  v73 = v1;
  sub_1D89FF2DC(*(v0 + 520), *(v0 + 488), v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EA8);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  v5 = *(v0 + 376);
  if (v4 == 1)
  {
    v6 = *(v0 + 360);
    v7 = *(v0 + 312);
    v8 = *(v0 + 320);
    sub_1D87A14E4(*(v0 + 352), &qword_1ECA67138);
    v9 = *(v6 + 48);
    *v5 = 0;
    *(v5 + 8) = 1;
    (*(v8 + 56))(v5 + v9, 1, 1, v7);
  }

  else
  {
    v11 = *(v0 + 368);
    v12 = *(v0 + 352);
    v13 = *(v0 + 312);
    v14 = *(v0 + 320);
    v15 = *(v3 + 48);
    v16 = *(*(v0 + 360) + 48);
    *v11 = *v12;
    *(v11 + 8) = 0;
    (*(v14 + 32))(v11 + v16, &v12[v15], v13);
    (*(v14 + 56))(v11 + v16, 0, 1, v13);
    sub_1D881F6FC(v11, v5, &qword_1ECA67140);
  }

  v17 = *(v0 + 384);
  v18 = *(v0 + 392);
  v19 = *(v0 + 376);
  v20 = *(v0 + 312);
  v21 = *(v0 + 320);
  v72 = *v19;
  v71 = *(v19 + 8);
  sub_1D881F6FC(v19 + *(*(v0 + 360) + 48), v18, &qword_1ECA67148);
  sub_1D87A0E38(v18, v17, &qword_1ECA67148);
  if ((*(v21 + 48))(v17, 1, v20) == 1)
  {
    v22 = *(v0 + 384);
    v23 = &qword_1ECA67148;
LABEL_12:
    sub_1D87A14E4(v22, v23);
    v33 = *(v0 + 344);
    *v33 = 0xD000000000000029;
    v33[1] = 0x80000001D8B46F30;
    goto LABEL_13;
  }

  v24 = *(v0 + 520);
  v25 = *(v0 + 496);
  v26 = *(v0 + 288);
  v27 = *(v0 + 296);
  v28 = *(v0 + 280);
  v29 = *(*(v0 + 320) + 32);
  v29(*(v0 + 328), *(v0 + 384), *(v0 + 312));
  v30 = *(v25 + 28);
  v31 = type metadata accessor for VisualUnderstandingContainer(0);
  sub_1D87A0E38(v24 + *(v31 + 20) + v30, v28, &qword_1ECA635E8);
  if ((*(v27 + 48))(v28, 1, v26) == 1)
  {
    v32 = *(v0 + 280);
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    v23 = &qword_1ECA635E8;
    v22 = v32;
    goto LABEL_12;
  }

  v61 = *(v0 + 610);
  (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 280), *(v0 + 288));
  v74[0] = v61;
  v62 = sub_1D89FDC98(v74);
  v63 = *(v0 + 344);
  v64 = *(v0 + 328);
  v65 = *(v0 + 312);
  if (v62)
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    v29(v63, v64, v65);
  }

  else
  {
    v66 = *(v0 + 320);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    (*(v66 + 8))(v64, v65);
    *v63 = 0xD000000000000012;
    v63[1] = 0x80000001D8B46F60;
  }

LABEL_13:
  swift_storeEnumTagMultiPayload();
  sub_1D8A01488(*(v0 + 200), *(v0 + 240), type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v36 = *(v0 + 256);
  v35 = *(v0 + 264);
  v37 = *(v0 + 248);
  if (EnumCaseMultiPayload == 1)
  {
    v38 = *(v36 + 32);
    v38(*(v0 + 264), *(v0 + 240), *(v0 + 248));
  }

  else
  {
    v39 = *(v0 + 224);
    sub_1D8A01550(*(v0 + 240), v39, type metadata accessor for CVTrackSnapshot);
    (*(v36 + 16))(v35, v39, v37);
    sub_1D8A014F0(v39, type metadata accessor for CVTrackSnapshot);
    v38 = *(v36 + 32);
  }

  v40 = *(v0 + 520);
  v41 = *(v0 + 512);
  v43 = *(v0 + 424);
  v42 = *(v0 + 432);
  v38(*(v0 + 272), *(v0 + 264), *(v0 + 248));
  sub_1D8A01488(v40, v41, type metadata accessor for GenericParseDataResult);
  sub_1D87A0E38(v42, v43, &qword_1ECA641B0);
  v44 = type metadata accessor for VisualLookupClassifier.Result(0);
  v69 = *(*(v44 - 1) + 48);
  v45 = v69(v43, 1, v44);
  v46 = *(v0 + 424);
  v70 = v38;
  if (v45 == 1)
  {
    sub_1D87A14E4(v46, &qword_1ECA641B0);
    v47 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v47 = *(v46 + v44[7]);

    sub_1D8A014F0(v46, type metadata accessor for VisualLookupClassifier.Result);
  }

  v48 = *(v0 + 520);
  v49 = *(v0 + 488);
  v50 = *(v0 + 432);
  v51 = *(v0 + 416);
  v52 = *(v0 + 392);
  v68 = sub_1D89ED604(v47);

  sub_1D87A14E4(v52, &qword_1ECA67148);
  sub_1D87A14E4(v49, &qword_1ECA67150);
  sub_1D8A014F0(v48, type metadata accessor for GenericParseDataResult);
  sub_1D881F6FC(v50, v51, &qword_1ECA641B0);
  v53 = v69(v51, 1, v44);
  v54 = *(v0 + 416);
  if (v53 == 1)
  {
    sub_1D87A14E4(*(v0 + 416), &qword_1ECA641B0);
    v55 = 0;
  }

  else
  {
    v55 = *(v54 + v44[8]);

    sub_1D8A014F0(v54, type metadata accessor for VisualLookupClassifier.Result);
  }

  v56 = *(v0 + 512);
  v57 = *(v0 + 344);
  v58 = *(v0 + 192);
  v70(v58, *(v0 + 272), *(v0 + 248));
  sub_1D8A01550(v56, v58 + v44[5], type metadata accessor for GenericParseDataResult);
  *(v58 + v44[6]) = 0;
  *(v58 + v44[7]) = v68;
  *(v58 + v44[8]) = v55;
  sub_1D8A01550(v57, v58 + v44[9], type metadata accessor for VisualLookupClassifier.Result.SearchState);
  v59 = v58 + v44[10];
  *v59 = v72;
  *(v59 + 8) = v71;
  *(v58 + v44[11]) = v73;

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1D89FB3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 64) = type metadata accessor for BundleClassification.ClassificationType(0);
  *(v6 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  v8 = sub_1D8B13CC0();
  *(v6 + 120) = v8;
  *(v6 + 128) = *(v8 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67100);
  *(v6 + 152) = swift_task_alloc();
  v9 = sub_1D8B13CF0();
  *(v6 + 160) = v9;
  *(v6 + 168) = *(v9 - 8);
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67108);
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  v10 = type metadata accessor for VisualLookupClassifier.Result(0);
  *(v6 + 248) = v10;
  *(v6 + 256) = *(v10 - 8);
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  v11 = sub_1D8B13240();
  *(v6 + 304) = v11;
  *(v6 + 312) = *(v11 - 8);
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = *(a5 + 32);
  *(v6 + 384) = *(a5 + 40);
  *(v6 + 385) = *v5;

  return MEMORY[0x1EEE6DFA0](sub_1D89FB768, 0, 0);
}

uint64_t sub_1D89FB768()
{
  if (qword_1EE0E4518 != -1)
  {
    swift_once();
  }

  v1 = sub_1D8B151E0();
  *(v0 + 344) = __swift_project_value_buffer(v1, qword_1EE0E4520);
  v2 = sub_1D8B151C0();
  v3 = sub_1D8B161F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 384);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D8783000, v2, v3, "in produceEagerSearchResult isHighResolutionStill: %{BOOL}d", v5, 8u);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  v6 = *(v0 + 384);
  v7 = *(v0 + 328);
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);
  v10 = *(v0 + 48);

  v11 = *(v9 + 16);
  *(v0 + 352) = v11;
  *(v0 + 360) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v7, v10, v8);
  if (qword_1ECA62270 != -1)
  {
    swift_once();
  }

  if (v6)
  {
    v12 = 60.0;
  }

  else
  {
    v12 = 0.2;
  }

  v13 = qword_1ECAA36C8;
  v14 = swift_task_alloc();
  *(v0 + 368) = v14;
  *v14 = v0;
  v14[1] = sub_1D89FB974;
  v15 = *(v0 + 288);

  return sub_1D89DE214(v15, v13, v0 + 16, v12);
}

uint64_t sub_1D89FB974()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 376) = *(v2 + 16);
    v3 = sub_1D89FBA8C;
  }

  else
  {
    v3 = sub_1D89FC024;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D89FBA8C()
{
  v49 = v0;
  sub_1D8A01488(*(v0 + 56), *(v0 + 72), type metadata accessor for BundleClassification.ClassificationType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D8A014F0(*(v0 + 72), type metadata accessor for BundleClassification.ClassificationType);
    return sub_1D8B168C0();
  }

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_1D881F6FC(*(v0 + 72), v3, &qword_1ECA641B0);
  sub_1D87A0E38(v3, v4, &qword_1ECA641B0);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_1D87A14E4(*(v0 + 80), &qword_1ECA641B0);
LABEL_9:
    v20 = *(v0 + 376);
    v21 = *(v0 + 385);
    v22 = *(v0 + 336);
    v23 = *(v0 + 328);
    v24 = *(v0 + 312);
    v25 = *(v0 + 296);
    v26 = *(v0 + 248);
    v27 = *(v0 + 104);
    v40 = *(v0 + 88);
    v42 = *(v0 + 304);
    v28 = *(v0 + 48);
    *(v0 + 24) = v20;
    sub_1D8A01488(v28, v25, type metadata accessor for VisualLookupClassifier.Result);
    sub_1D8883C24();
    *v27 = sub_1D8B16C90();
    v27[1] = v29;
    swift_storeEnumTagMultiPayload();
    sub_1D8A024A0(v27, v25 + *(v26 + 36));
    v48 = v21;
    sub_1D89FCF28(v20, v23, v43, v22);
    sub_1D8883C78(v20);
    sub_1D87A14E4(v40, &qword_1ECA641B0);
    (*(v24 + 8))(v23, v42);
    v30 = v43[0];
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v35 = *(v0 + 40);
    sub_1D8A01550(*(v0 + 296), *(v0 + 32), type metadata accessor for VisualLookupClassifier.Result);
    *v35 = v30;
    v35[1] = v31;
    v35[2] = v32;
    v35[3] = v33;
    v35[4] = v34;
    v19 = *(v0 + 336);
    goto LABEL_10;
  }

  v6 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 104);
  sub_1D8A01550(*(v0 + 80), v6, type metadata accessor for VisualLookupClassifier.Result);
  v9 = *(v7 + 36);
  swift_storeEnumTagMultiPayload();
  v10 = _s22VisualIntelligenceCore0A16LookupClassifierV6ResultV11SearchStateO2eeoiySbAG_AGtFZ_0(v6 + v9, v8);
  sub_1D8A014F0(v8, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  if ((v10 & 1) == 0 || *(v0 + 376) > 1uLL)
  {
    sub_1D8A014F0(*(v0 + 272), type metadata accessor for VisualLookupClassifier.Result);
    goto LABEL_9;
  }

  v11 = *(v0 + 328);
  v12 = *(v0 + 304);
  v13 = *(v0 + 312);
  v14 = *(v0 + 264);
  v15 = *(v0 + 48);
  v39 = *(v0 + 272);
  v41 = *(v0 + 56);
  v16 = *(v0 + 40);
  v38 = *(v0 + 32);
  sub_1D87A14E4(*(v0 + 88), &qword_1ECA641B0);
  (*(v13 + 8))(v11, v12);
  sub_1D8A01488(v15, v14, type metadata accessor for VisualLookupClassifier.Result);
  v17 = *(v7 + 36);
  sub_1D8A014F0(v14 + v17, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  sub_1D8A01488(v6 + v9, v14 + v17, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  sub_1D8A014F0(v39, type metadata accessor for VisualLookupClassifier.Result);
  sub_1D8A01488(v14, v38, type metadata accessor for VisualLookupClassifier.Result);
  *v16 = 2;
  v18 = type metadata accessor for BundleClassification(0);
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v19 = *(v41 + *(v18 + 24));
  sub_1D8A014F0(v14, type metadata accessor for VisualLookupClassifier.Result);
LABEL_10:

  v36 = *(v0 + 8);
  v37.n128_u64[0] = v19;

  return v36(v37);
}

uint64_t sub_1D89FC024()
{
  v155 = v0;
  v1 = v0[31];
  v148 = *(v0[36] + *(v1 + 28));
  v2 = *(v148 + 16);
  v3 = v0[20];
  v4 = v0[21];
  if (v2)
  {
    v141 = v0[31];
    v5 = *(v4 + 16);
    v6 = v148 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    result = v5(v0[26], v6, v3);
    if (v2 != 1)
    {
      v53 = *(v152 + 168);
      v54 = 1;
      while (v54 < *(v148 + 16))
      {
        v5(*(v152 + 192), v6 + *(v53 + 72) * v54, *(v152 + 160));
        sub_1D8B13CE0();
        v56 = v55;
        sub_1D8B13CE0();
        v57 = *(v53 + 8);
        if (v56 >= v58)
        {
          result = v57(*(v152 + 192), *(v152 + 160));
        }

        else
        {
          v59 = *(v152 + 208);
          v60 = *(v152 + 192);
          v61 = *(v152 + 160);
          v57(v59, v61);
          result = (*(v53 + 32))(v59, v60, v61);
        }

        if (v2 == ++v54)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      goto LABEL_54;
    }

LABEL_3:
    v0 = v152;
    v8 = *(v152 + 240);
    v9 = *(v152 + 160);
    v10 = *(v152 + 168);
    (*(v10 + 32))(v8, *(v152 + 208), v9);
    v11 = *(v10 + 56);
    v11(v8, 0, 1, v9);
    v1 = v141;
  }

  else
  {
    v11 = *(v4 + 56);
    v11(v0[30], 1, 1, v3);
  }

  v12 = *(v0[6] + *(v1 + 28));
  v13 = *(v12 + 16);
  if (v13)
  {
    v143 = v11;
    v14 = v0[21];
    v17 = *(v14 + 16);
    v15 = v14 + 16;
    v16 = v17;
    v18 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    result = (v17)(v0[25], v18, v0[20]);
    if (v13 == 1)
    {
LABEL_7:
      (*(v0[21] + 32))(v0[29], v0[25], v0[20]);
      v19 = 0;
      v11 = v143;
      goto LABEL_9;
    }

    v62 = v0[21];
    v63 = 1;
    while (v63 < *(v12 + 16))
    {
      v16(v0[23], v18 + *(v62 + 72) * v63, v0[20]);
      sub_1D8B13CE0();
      v65 = v64;
      sub_1D8B13CE0();
      v66 = *(v62 + 8);
      if (v65 >= v67)
      {
        result = v66(v0[23], v0[20]);
      }

      else
      {
        v68 = v0[25];
        v69 = v0[23];
        v70 = v15;
        v71 = v18;
        v72 = v16;
        v73 = v13;
        v74 = v12;
        v75 = *(v152 + 160);
        v66(v68, v75);
        v76 = v75;
        v12 = v74;
        v13 = v73;
        v16 = v72;
        v18 = v71;
        v15 = v70;
        v0 = v152;
        result = (*(v62 + 32))(v68, v69, v76);
      }

      if (v13 == ++v63)
      {
        goto LABEL_7;
      }
    }

LABEL_54:
    __break(1u);
    return result;
  }

  v19 = 1;
LABEL_9:
  v21 = v0 + 19;
  v20 = v0[19];
  v23 = v0[29];
  v22 = v0[30];
  v24 = v0[20];
  v25 = v0[21];
  v26 = v0[18];
  v11(v23, v19, 1, v24);
  v27 = *(v26 + 48);
  sub_1D87A0E38(v22, v20, &qword_1ECA67108);
  sub_1D87A0E38(v23, v20 + v27, &qword_1ECA67108);
  v28 = *(v25 + 48);
  if (v28(v20, 1, v24) == 1)
  {
    if (v28(v20 + v27, 1, v0[20]) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v29 = v0[20];
  sub_1D87A0E38(v0[19], v0[28], &qword_1ECA67108);
  v30 = v28(v20 + v27, 1, v29);
  v31 = v0[28];
  if (v30 == 1)
  {
    (*(v0[21] + 8))(v0[28], v0[20]);
LABEL_14:
    sub_1D87A14E4(*v21, &qword_1ECA67100);
    goto LABEL_15;
  }

  v111 = v0[21];
  v110 = v0[22];
  v113 = v0[19];
  v112 = v0[20];
  (*(v111 + 32))(v110, v20 + v27, v112);
  sub_1D8A011DC(&unk_1ECA64F70, MEMORY[0x1E69E0420]);
  v114 = sub_1D8B158C0();
  v115 = *(v111 + 8);
  v115(v110, v112);
  v115(v31, v112);
  sub_1D87A14E4(v113, &qword_1ECA67108);
  if (v114)
  {
LABEL_17:
    v34 = v152;
    v35 = *(v152 + 384);
    sub_1D8A01488(*(v152 + 288), *(v152 + 296), type metadata accessor for VisualLookupClassifier.Result);
    if (v35 == 1)
    {
      goto LABEL_18;
    }

LABEL_35:
    (*(v34 + 352))(*(v34 + 320), *(v34 + 328), *(v34 + 304));
    v86 = sub_1D8B151C0();
    v87 = sub_1D8B161F0();
    v88 = os_log_type_enabled(v86, v87);
    v90 = *(v34 + 312);
    v89 = *(v34 + 320);
    v91 = *(v34 + 304);
    if (v88)
    {
      v92 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v153 = v146;
      *v92 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v93 = sub_1D8B16B50();
      v95 = v94;
      v149 = *(v90 + 8);
      v149(v89, v91);
      v96 = sub_1D89AC714(v93, v95, &v153);
      v34 = v152;

      *(v92 + 4) = v96;
      _os_log_impl(&dword_1D8783000, v86, v87, "Retry because request result is not recommended for rendering for bundle (%s)", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v146);
      MEMORY[0x1DA721330](v146, -1, -1);
      MEMORY[0x1DA721330](v92, -1, -1);
    }

    else
    {

      v149 = *(v90 + 8);
      v149(v89, v91);
    }

    v116 = *(v34 + 328);
    v139 = *(v34 + 336);
    v117 = *(v34 + 304);
    v118 = *(v34 + 288);
    v119 = *(v34 + 240);
    v137 = 0x80000001D8B46CF0;
    sub_1D87A14E4(*(v34 + 232), &qword_1ECA67108);
    sub_1D87A14E4(v119, &qword_1ECA67108);
    v149(v116, v117);
    sub_1D8A014F0(v118, type metadata accessor for VisualLookupClassifier.Result);
    v140 = 0;
    v136 = 0xD00000000000001DLL;
    goto LABEL_49;
  }

LABEL_15:
  v21 = (v152 + 216);
  v32 = *(v152 + 216);
  v33 = *(v152 + 160);
  sub_1D87A0E38(*(v152 + 240), v32, &qword_1ECA67108);
  if (v28(v32, 1, v33) == 1)
  {
LABEL_16:
    sub_1D87A14E4(*v21, &qword_1ECA67108);
    goto LABEL_17;
  }

  v34 = v152;
  v77 = *(v152 + 384);
  v79 = *(v152 + 288);
  v78 = *(v152 + 296);
  v80 = *(v152 + 216);
  v81 = *(v152 + 160);
  v82 = *(v152 + 168);
  v84 = *(v152 + 128);
  v83 = *(v152 + 136);
  v85 = *(v152 + 120);
  sub_1D8B13CD0();
  (*(v82 + 8))(v80, v81);
  LOBYTE(v80) = sub_1D8B13CB0();
  (*(v84 + 8))(v83, v85);
  sub_1D8A01488(v79, v78, type metadata accessor for VisualLookupClassifier.Result);
  if ((v80 & 1) == 0 && (v77 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  v36 = *(v34 + 288);
  v37 = *(v34 + 248);
  v38 = *(v37 + 36);
  sub_1D8A01488(v36 + v38, *(v34 + 112), type metadata accessor for VisualLookupClassifier.Result.SearchState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v144 = v38;
    v145 = v36;
    v41 = *(v34 + 280);
    v40 = *(v34 + 288);
    sub_1D8A014F0(*(v34 + 112), type metadata accessor for VisualLookupClassifier.Result.SearchState);
    sub_1D8A01488(v40, v41, type metadata accessor for VisualLookupClassifier.Result);
    v42 = sub_1D8B151C0();
    v43 = sub_1D8B16210();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v34 + 280);
    if (v44)
    {
      v46 = *(v34 + 104);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v153 = v48;
      *v47 = 136315138;
      sub_1D8A01488(v45 + *(v37 + 36), v46, type metadata accessor for VisualLookupClassifier.Result.SearchState);
      v49 = sub_1D8B159E0();
      v51 = v50;
      sub_1D8A014F0(v45, type metadata accessor for VisualLookupClassifier.Result);
      v52 = sub_1D89AC714(v49, v51, &v153);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1D8783000, v42, v43, "Search result not successful for unknown reason. searchState: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1DA721330](v48, -1, -1);
      MEMORY[0x1DA721330](v47, -1, -1);
    }

    else
    {

      sub_1D8A014F0(v45, type metadata accessor for VisualLookupClassifier.Result);
    }

    v120 = *(v34 + 328);
    v151 = *(v34 + 336);
    v121 = *(v34 + 304);
    v122 = *(v34 + 312);
    v142 = *(v34 + 288);
    v124 = *(v34 + 232);
    v123 = *(v34 + 240);
    v125 = *(v34 + 104);
    v153 = 0;
    v154 = 0xE000000000000000;
    sub_1D8B16720();
    MEMORY[0x1DA71EFA0](0xD00000000000003ELL, 0x80000001D8B46D10);
    sub_1D8A01488(v145 + v144, v125, type metadata accessor for VisualLookupClassifier.Result.SearchState);
    v126 = sub_1D8B159E0();
    MEMORY[0x1DA71EFA0](v126);

    v136 = v153;
    v137 = v154;
    sub_1D87A14E4(v124, &qword_1ECA67108);
    sub_1D87A14E4(v123, &qword_1ECA67108);
    (*(v122 + 8))(v120, v121);
    v139 = v151;
    v109 = v142;
LABEL_48:
    sub_1D8A014F0(v109, type metadata accessor for VisualLookupClassifier.Result);
    v140 = 0;
LABEL_49:
    v138 = 128;
    goto LABEL_50;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v97 = *(v152 + 112);
    v99 = *v97;
    v98 = v97[1];

    v100 = sub_1D8B151C0();
    v101 = sub_1D8B16210();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v153 = v103;
      *v102 = 136315138;
      *(v102 + 4) = sub_1D89AC714(v99, v98, &v153);
      _os_log_impl(&dword_1D8783000, v100, v101, "Search result failed with the message '%s'.", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v103);
      MEMORY[0x1DA721330](v103, -1, -1);
      MEMORY[0x1DA721330](v102, -1, -1);
    }

    v34 = v152;
    v104 = *(v152 + 328);
    v105 = *(v152 + 304);
    v106 = *(v152 + 312);
    v147 = *(v152 + 288);
    v150 = *(v152 + 336);
    v107 = *(v152 + 232);
    v108 = *(v152 + 240);
    v153 = 0;
    v154 = 0xE000000000000000;
    sub_1D8B16720();

    v153 = 0xD000000000000027;
    v154 = 0x80000001D8B46D50;
    MEMORY[0x1DA71EFA0](v99, v98);

    MEMORY[0x1DA71EFA0](11815, 0xE200000000000000);
    v136 = v153;
    v137 = v154;
    sub_1D87A14E4(v107, &qword_1ECA67108);
    sub_1D87A14E4(v108, &qword_1ECA67108);
    (*(v106 + 8))(v104, v105);
    v109 = v147;
    v139 = v150;
    goto LABEL_48;
  }

  v34 = v152;
  v131 = *(v152 + 328);
  v132 = *(v152 + 304);
  v133 = *(v152 + 312);
  v134 = *(v152 + 288);
  v135 = *(v152 + 240);
  sub_1D87A14E4(*(v152 + 232), &qword_1ECA67108);
  sub_1D87A14E4(v135, &qword_1ECA67108);
  (*(v133 + 8))(v131, v132);
  sub_1D8A014F0(v134, type metadata accessor for VisualLookupClassifier.Result);
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v140 = 2;
LABEL_50:
  v127 = *(v34 + 40);
  sub_1D8A01550(*(v34 + 296), *(v34 + 32), type metadata accessor for VisualLookupClassifier.Result);
  *v127 = v140;
  v127[1] = v136;
  v127[2] = v137;
  v127[3] = v138;
  v127[4] = v139;
  v128 = *(v34 + 336);

  v129 = *(v34 + 8);
  v130.n128_u64[0] = v128;

  return v129(v130);
}

void sub_1D89FCF28(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 2)
  {
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v12 = sub_1D8B151E0();
    __swift_project_value_buffer(v12, qword_1EE0E4520);
    (*(v9 + 16))(v11, a2, v8);
    v13 = sub_1D8B151C0();
    v14 = sub_1D8B161F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v39 = v16;
      *v15 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
      v17 = sub_1D8B16B50();
      v19 = v18;
      (*(v9 + 8))(v11, v8);
      v20 = sub_1D89AC714(v17, v19, &v39);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1D8783000, v13, v14, "VL Search Service failed due to rate limiting: bundle (%s).", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1DA721330](v16, -1, -1);
      MEMORY[0x1DA721330](v15, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v22 = 0;
    v24 = 2;
    v21 = 1;
    v23 = 4;
    goto LABEL_18;
  }

  if (a1 == 2)
  {
    v21 = 0;
    v22 = 0x80000001D8B46D80;
    v23 = 0xD000000000000029;
LABEL_17:
    v24 = 0x80;
LABEL_18:
    *a3 = v21;
    *(a3 + 8) = v23;
    *(a3 + 16) = v22;
    *(a3 + 24) = v24;
    *(a3 + 32) = a4;
    return;
  }

  v39 = a1;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  v26 = swift_dynamicCast();
  if (v26)
  {
    v27 = v41;
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v28 = sub_1D8B151E0();
    __swift_project_value_buffer(v28, qword_1EE0E4520);
    v29 = v27;
    v30 = sub_1D8B151C0();
    v31 = sub_1D8B16210();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39 = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v34 = sub_1D8B16C90();
      v36 = sub_1D89AC714(v34, v35, &v39);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1D8783000, v30, v31, "VLU internal error: %s. Will retry if not high resolution still.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1DA721330](v33, -1, -1);
      MEMORY[0x1DA721330](v32, -1, -1);
    }

    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1D8B16720();

    v39 = 0xD00000000000001DLL;
    v40 = 0x80000001D8B46DE0;
    swift_getErrorValue();
    v37 = sub_1D8B16C90();
    MEMORY[0x1DA71EFA0](v37);

    MEMORY[0x1DA71EFA0](46, 0xE100000000000000);

    v21 = 0;
    v23 = v39;
    v22 = v40;
    goto LABEL_17;
  }

  sub_1D8B168C0();
  __break(1u);
}

uint64_t sub_1D89FD44C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_1D8B13740();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8B138D0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v35 - v17;
  v19 = a2[3];
  v43 = a2[2];
  v44 = v19;
  v45 = a2[4];
  v20 = a2[1];
  v42[0] = *a2;
  v42[1] = v20;
  CVBundle.latestEstimate.getter(v39);
  if (v39[0] >> 60)
  {

LABEL_9:
    v29 = 1;
    v30 = v36;
    return (*(v9 + 56))(v30, v29, 1, v8);
  }

  v21 = swift_projectBox();
  sub_1D87A0E38(v21, v18, &qword_1ECA67750);

  v22 = sub_1D89F3840();
  sub_1D89F3968(v22, v15);

  if ((*(v13 + 88))(v15, v12) != *MEMORY[0x1E69E0390])
  {
    sub_1D87A14E4(v18, &qword_1ECA67750);
    (*(v13 + 8))(v15, v12);
    goto LABEL_9;
  }

  (*(v13 + 96))(v15, v12);
  sub_1D89FE134(a1, *v15, v42, v11);

  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if ((sub_1D8B0AAA4() & 1) != 0 || (BYTE8(v43) & 1) != 0 && (v31 = type metadata accessor for InternalSettings(), v32 = sub_1D8B15940(), LODWORD(v31) = [v31 BOOLForKey:v32 defaultValue:0], v32, v31))
  {
    v23 = v43;
    v40[3] = v8;
    v40[4] = sub_1D8A011DC(&qword_1ECA67170, MEMORY[0x1E69E0320]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
    (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
    v41 = 3;
    v39[0] = 0x6F6E6E612D756C76;
    v39[1] = 0xEF736E6F69746174;
    v39[2] = v23;
    v25 = sub_1D8B15EA0();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    sub_1D88C4BD0(v39, v37);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    v27 = v37[3];
    *(v26 + 64) = v37[2];
    *(v26 + 80) = v27;
    *(v26 + 96) = v38;
    v28 = v37[1];
    *(v26 + 32) = v37[0];
    *(v26 + 48) = v28;
    sub_1D8891CA0(0, 0, v7, &unk_1D8B32150, v26);

    sub_1D87DC9A0(v39);
  }

  sub_1D87A14E4(v18, &qword_1ECA67750);
  v33 = v36;
  (*(v9 + 32))(v36, v11, v8);
  v30 = v33;
  v29 = 0;
  return (*(v9 + 56))(v30, v29, 1, v8);
}

BOOL sub_1D89FD9C4()
{
  v0 = sub_1D8B13990();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B138D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  CVBundle.latestEstimate.getter(&v17);
  if (v17 >> 60)
  {

    return 0;
  }

  v11 = swift_projectBox();
  sub_1D87A0E38(v11, v10, &qword_1ECA67750);

  v12 = sub_1D89F3840();
  sub_1D89F3968(v12, v7);

  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x1E69E0390])
  {
    sub_1D87A14E4(v10, &qword_1ECA67750);
    (*(v5 + 8))(v7, v4);
    return 0;
  }

  (*(v5 + 96))(v7, v4);
  v13 = *v7;
  (*(v1 + 104))(v3, *MEMORY[0x1E69E03B8], v0);
  v14 = sub_1D8846D48(v3, v13);

  (*(v1 + 8))(v3, v0);
  sub_1D87A14E4(v10, &qword_1ECA67750);
  return v14;
}

uint64_t sub_1D89FDC98(_BYTE *a1)
{
  v2 = sub_1D8B136F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B137A0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  if (*a1 == 2)
  {
    v13 = sub_1D8B137B0();
    if (*(v13 + 16))
    {
      (*(v7 + 16))(v10, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      (*(v7 + 32))(v12, v10, v6);
      (*(v3 + 104))(v5, *MEMORY[0x1E69E0318], v2);
      v14 = sub_1D8B13770();
      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v12, v6);
    }

    else
    {

      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t sub_1D89FDEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_1D88DFAD0;

  return sub_1D89F66C4(a1, a2, a3, a4);
}

uint64_t sub_1D89FDFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for BundleClassification.ClassificationType(0);
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89FE03C, 0, 0);
}

uint64_t sub_1D89FE03C()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = qword_1ECA675B0;
  *(v0 + 40) = qword_1ECA675B0;
  v3 = type metadata accessor for VisualLookupClassifier.Result(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D8A02870, v2, 0);
}

uint64_t sub_1D89FE134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v130 = a3;
  v136 = a1;
  v120 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64820);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v106 - v9;
  v117 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8B13240();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v106 - v17;
  v18 = type metadata accessor for CVBundle(0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v123 = &v106 - v22;
  v151 = type metadata accessor for TextDetectorResult(0);
  v23 = *(v151 - 8);
  v24 = MEMORY[0x1EEE9AC00](v151);
  v150 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v126 = &v106 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v106 - v28;
  v125 = type metadata accessor for CVTrackSnapshot(0);
  v124 = *(v125 - 8);
  v30 = MEMORY[0x1EEE9AC00](v125);
  v107 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v152 = &v106 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67178);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v119 = &v106 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67180);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v118 = &v106 - v36;
  v135 = sub_1D8B13990();
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = *(a2 + 16);
  if (v133)
  {
    v112 = v12;
    v40 = 0;
    v138 = 0;
    v42 = *(v37 + 16);
    v41 = v37 + 16;
    v143 = a2 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v144 = v42;
    v142 = (v41 + 72);
    v121 = (v41 - 8);
    v141 = *MEMORY[0x1E69E0398];
    v147 = v23;
    v148 = (v23 + 48);
    v149 = (v23 + 56);
    v106 = (v13 + 16);
    v110 = (v13 + 32);
    v140 = *MEMORY[0x1E69E03A8];
    v109 = (v13 + 8);
    v137 = *MEMORY[0x1E69E03A0];
    v128 = *MEMORY[0x1E69E03B0];
    v127 = *MEMORY[0x1E69E03B8];
    v139 = *(v41 + 56);
    *&v38 = 136315394;
    v108 = v38;
    v146 = v8;
    v132 = v21;
    v43 = v135;
    v44 = v134;
    v45 = v133;
    v111 = v16;
    v129 = v41;
    v122 = v29;
    do
    {
      v145 = v40;
      v144(v44, v143 + v139 * v40, v43);
      v46 = (*v142)(v44, v43);
      if (v46 != v141 && v46 != v140)
      {
        if (v46 == v137)
        {

          v48 = sub_1D891DE68();
          v49 = *(v48 + 16);
          if (v49)
          {
            v50 = *(v125 + 24);
            v51 = (*(v124 + 80) + 32) & ~*(v124 + 80);
            v131 = v48;
            v52 = v48 + v51;
            v53 = *(v124 + 72);
            v54 = MEMORY[0x1E69E7CC0];
            do
            {
              v55 = v152;
              sub_1D8A01488(v52, v152, type metadata accessor for CVTrackSnapshot);
              if (*(v55 + v50) >> 60 == 5)
              {
                v56 = swift_projectBox();
                sub_1D8A01488(v56, v8, type metadata accessor for TextDetectorResult);
                v57 = 0;
              }

              else
              {
                v57 = 1;
              }

              v58 = v151;
              (*v149)(v8, v57, 1, v151);
              sub_1D881F6FC(v8, v10, &qword_1ECA64820);
              sub_1D8A014F0(v152, type metadata accessor for CVTrackSnapshot);
              if ((*v148)(v10, 1, v58) == 1)
              {
                sub_1D87A14E4(v10, &qword_1ECA64820);
              }

              else
              {
                sub_1D8A01550(v10, v150, type metadata accessor for TextDetectorResult);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v54 = sub_1D87C7EE0(0, v54[2] + 1, 1, v54);
                }

                v60 = v54[2];
                v59 = v54[3];
                v61 = v147;
                if (v60 >= v59 >> 1)
                {
                  v62 = sub_1D87C7EE0(v59 > 1, v60 + 1, 1, v54);
                  v61 = v147;
                  v54 = v62;
                }

                v54[2] = v60 + 1;
                sub_1D8A01550(v150, v54 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60, type metadata accessor for TextDetectorResult);
                v8 = v146;
              }

              v52 += v53;
              --v49;
            }

            while (v49);

            v29 = v122;
          }

          else
          {

            v54 = MEMORY[0x1E69E7CC0];
          }

          v64 = v54[2];
          v65 = sub_1D8A011DC(&qword_1EE0E5FF0, type metadata accessor for TextDetectorResult);
          v66 = MEMORY[0x1DA71F530](v64, v151, v65);
          v153 = v66;
          v67 = v54[2];
          if (v67)
          {
            v68 = v54 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
            v69 = *(v147 + 72);
            v70 = v29;
            v71 = v126;
            do
            {
              sub_1D8A01488(v68, v70, type metadata accessor for TextDetectorResult);
              sub_1D87FC43C(v71, v70);
              sub_1D8A014F0(v71, type metadata accessor for TextDetectorResult);
              v68 += v69;
              --v67;
            }

            while (v67);
            v72 = v153;
            v29 = v70;
          }

          else
          {
            v72 = v66;
          }

          v73 = v138;
          v74 = sub_1D89DD5E0(v72, v130);
          v138 = v73;

          v75 = *(v74 + 16);

          v76 = v132;
          if (!v75)
          {
            v77 = v123;
            if (qword_1EE0E4518 != -1)
            {
              swift_once();
            }

            v78 = sub_1D8B151E0();
            __swift_project_value_buffer(v78, qword_1EE0E4520);
            v79 = v136;
            sub_1D8A01488(v136, v77, type metadata accessor for CVBundle);
            sub_1D8A01488(v79, v76, type metadata accessor for CVBundle);
            v80 = sub_1D8B151C0();
            v81 = sub_1D8B16210();
            if (os_log_type_enabled(v80, v81))
            {
              v114 = v81;
              v82 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v158 = v113;
              *v82 = v108;
              CVBundle.latestEstimate.getter(&v157);
              v156 = v157;
              CVDetection.detection.getter(&v153);
              v83 = v154;
              v84 = v155;
              __swift_project_boxed_opaque_existential_1(&v153, v154);
              v85 = (*(v84 + 72))(v83, v84);
              v87 = v86;

              sub_1D8A014F0(v123, type metadata accessor for CVBundle);
              __swift_destroy_boxed_opaque_existential_1(&v153);
              v88 = sub_1D89AC714(v85, v87, &v158);

              *(v82 + 4) = v88;
              v131 = v82;
              *(v82 + 12) = 2080;
              v89 = v116;
              sub_1D8A01488(v76, v116, type metadata accessor for CVBundle.BundleType);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v90 = *v110;
                v91 = v111;
                v92 = v112;
                (*v110)(v111, v89, v112);
              }

              else
              {
                v93 = v80;
                v94 = v107;
                sub_1D8A01550(v89, v107, type metadata accessor for CVTrackSnapshot);
                v91 = v111;
                v92 = v112;
                (*v106)(v111, v94, v112);
                v95 = v94;
                v80 = v93;
                sub_1D8A014F0(v95, type metadata accessor for CVTrackSnapshot);
                v90 = *v110;
              }

              v8 = v146;
              v96 = v115;
              v90(v115, v91, v92);
              sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
              v97 = sub_1D8B16B50();
              v99 = v98;
              (*v109)(v96, v92);
              sub_1D8A014F0(v132, type metadata accessor for CVBundle);
              v100 = sub_1D89AC714(v97, v99, &v158);

              v101 = v131;
              *(v131 + 14) = v100;
              _os_log_impl(&dword_1D8783000, v80, v114, "Required textAnnotation but it was empty for bundle: %s id: %s", v101, 0x16u);
              v102 = v113;
              swift_arrayDestroy();
              MEMORY[0x1DA721330](v102, -1, -1);
              MEMORY[0x1DA721330](v101, -1, -1);
            }

            else
            {

              sub_1D8A014F0(v76, type metadata accessor for CVBundle);
              sub_1D8A014F0(v77, type metadata accessor for CVBundle);
            }
          }

          v43 = v135;
          v44 = v134;
          v45 = v133;
        }

        else if (v46 != v128 && v46 != v127)
        {
          (*v121)(v44, v43);
        }
      }

      v40 = v145 + 1;
    }

    while (v145 + 1 != v45);
  }

  v103 = sub_1D8B13850();
  (*(*(v103 - 8) + 56))(v118, 1, 1, v103);
  v104 = sub_1D8B13870();
  (*(*(v104 - 8) + 56))(v119, 1, 1, v104);
  return sub_1D8B13730();
}

uint64_t sub_1D89FF090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for BundleClassification.ClassificationType(0);
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89FF124, 0, 0);
}

uint64_t sub_1D89FF124()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = qword_1ECA675B0;
  *(v0 + 40) = qword_1ECA675B0;
  v3 = type metadata accessor for VisualLookupClassifier.Result(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D89FF21C, v2, 0);
}

uint64_t sub_1D89FF21C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B1F4(v2, v3, v4);

  sub_1D8A014F0(v1, type metadata accessor for BundleClassification.ClassificationType);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D89FF2DC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  LODWORD(v167) = a3;
  v150 = a2;
  v180 = sub_1D8B13830();
  v162 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v177 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67148);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v176 = &v140 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67158);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v148 = &v140 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67150);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v159 = &v140 - v12;
  v13 = sub_1D8B138B0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v149 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v172 = &v140 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v140 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v152 = &v140 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633B0);
  v178 = *(v26 - 8);
  v179 = v26;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v169 = (&v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x1EEE9AC00](v27);
  v181 = &v140 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v171 = &v140 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v184 = (&v140 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v183 = &v140 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v145 = &v140 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v151 = (&v140 - v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67138);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v153 = &v140 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EA8);
  v175 = *(v42 - 8);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v173 = &v140 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v147 = &v140 - v45;
  v185 = type metadata accessor for VisualUnderstandingContainer(0);
  v46 = *(v185 - 8);
  v47 = MEMORY[0x1EEE9AC00](v185);
  v49 = &v140 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v51 = (&v140 - v50);
  v52 = type metadata accessor for GenericParseDataResult();
  v53 = *(v52 + 36);
  v166 = a1;
  v54 = *&a1[v53];
  if (v54)
  {
    v165 = v52;
    v146 = v49;
    v142 = v24;
    v144 = v14;
    v158 = v13;
    v55 = *(v54 + 16);
    v174 = v42;
    v155 = a4;
    if (v55)
    {
      v56 = *(v185 + 20);
      v57 = v54 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v170 = v51 + 1;
      v58 = (v162 + 48);
      v59 = MEMORY[0x1E69E7CC0];
      v182 = *(v46 + 72);
      v60 = v180;
      v168 = v56;
      do
      {
        sub_1D8A01488(v57, v51, type metadata accessor for VisualUnderstandingContainer);
        sub_1D87A0E38(v56 + v51, v19, &qword_1ECA635E8);
        if ((*v58)(v19, 1, v60) == 1)
        {
          sub_1D8A014F0(v51, type metadata accessor for VisualUnderstandingContainer);
          sub_1D87A14E4(v19, &qword_1ECA635E8);
        }

        else
        {
          sub_1D87A14E4(v19, &qword_1ECA635E8);
          if (*(v170 + *(v185 + 24)) >> 60 == 15)
          {
            sub_1D8A014F0(v51, type metadata accessor for VisualUnderstandingContainer);
          }

          else
          {
            v61 = *(v179 + 48);
            v62 = v169;
            *v169 = *v51;
            sub_1D8A01550(v51, v62 + v61, type metadata accessor for VisualUnderstandingContainer);
            sub_1D881F6FC(v62, v181, &qword_1ECA633B0);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_1D87C91C4(0, v59[2] + 1, 1, v59);
            }

            v64 = v59[2];
            v63 = v59[3];
            if (v64 >= v63 >> 1)
            {
              v59 = sub_1D87C91C4(v63 > 1, v64 + 1, 1, v59);
            }

            v59[2] = v64 + 1;
            sub_1D881F6FC(v181, v59 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v64, &qword_1ECA633B0);
            v60 = v180;
            v56 = v168;
          }
        }

        v57 += v182;
        --v55;
      }

      while (v55);
    }

    else
    {
      v59 = MEMORY[0x1E69E7CC0];
    }

    result = sub_1D87E2598(*(v166 + *(v165 + 48)), v59);
    v69 = result;
    v170 = v70;
    v71 = v67;
    v72 = v155;
    if (v167)
    {
      v73 = v162;
      if (v67 == v68 >> 1)
      {
        swift_unknownObjectRelease();
        return (*(v175 + 56))(v72, 1, 1, v174);
      }

      if (v67 < (v68 >> 1))
      {
        v143 = result;
        v107 = v151;
        sub_1D87A0E38(v170 + *(v178 + 72) * v67, v151, &qword_1ECA633B0);
        v108 = *v107;
        v109 = v146;
        sub_1D8A01550(v107 + *(v179 + 48), v146, type metadata accessor for VisualUnderstandingContainer);
LABEL_48:
        v121 = *(v185 + 20);
        v122 = v152;
        sub_1D87A0E38(v109 + v121, v152, &qword_1ECA635E8);
        v123 = *(v73 + 48);
        v124 = v180;
        v125 = v123(v122, 1, v180);
        sub_1D87A14E4(v122, &qword_1ECA635E8);
        if (v125 == 1)
        {
LABEL_51:
          v129 = v144;
          v130 = v149;
          v131 = v185;
          sub_1D87A0E38(v150, v159, &qword_1ECA67150);
          v132 = v146;
          sub_1D8883D78(*&v146[*(v131 + 24)], *&v146[*(v131 + 24) + 8]);
          sub_1D8B138C0();
          v133 = sub_1D8B151C0();
          v134 = sub_1D8B161F0();
          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            *v135 = 134217984;
            *(v135 + 4) = v108;
            _os_log_impl(&dword_1D8783000, v133, v134, "Nominating search for detection from %f", v135, 0xCu);
            MEMORY[0x1DA721330](v135, -1, -1);
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          v136 = v158;
          sub_1D8A014F0(v132, type metadata accessor for VisualUnderstandingContainer);
          v137 = v174;
          v138 = *(v174 + 48);
          v139 = v155;
          *v155 = v108;
          (*(v129 + 32))(&v139[v138], v130, v136);
          return (*(v175 + 56))(v139, 0, 1, v137);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67160);
        v126 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v127 = swift_allocObject();
        *(v127 + 16) = xmmword_1D8B1AB90;
        v128 = v142;
        sub_1D87A0E38(v109 + v121, v142, &qword_1ECA635E8);
        result = v123(v128, 1, v124);
        if (result != 1)
        {
          (*(v73 + 32))(v127 + v126, v128, v124);
          goto LABEL_51;
        }

LABEL_61:
        __break(1u);
        return result;
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v169 = (v68 >> 1);
    v74 = (v68 >> 1) - v67;
    v75 = v158;
    v73 = v162;
    if (__OFSUB__(v68 >> 1, v67))
    {
      goto LABEL_57;
    }

    v76 = *(v154 + OBJC_IVAR____TtC22VisualIntelligenceCore39VisualIntelligenceSearchServiceInternal_searchService);
    v141 = v68;
    if (v74)
    {
      v140 = v76;
      v143 = result;
      v186 = MEMORY[0x1E69E7CC0];
      result = sub_1D87F48C4(0, v74 & ~(v74 >> 63), 0);
      if (v74 < 0)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v77 = 0;
      v168 = (v73 + 48);
      v78 = v186;
      v160 = (v73 + 32);
      v157 = v73 + 16;
      v161 = (v73 + 8);
      v167 = (v144 + 56);
      v166 = (v144 + 48);
      v163 = (v144 + 32);
      v156 = xmmword_1D8B1AB90;
      v79 = v177;
      v80 = v179;
      v81 = v172;
      v82 = v173;
      v165 = v71;
      v164 = v74;
      while (!__OFADD__(v77, 1))
      {
        v83 = v71 + v77;
        if ((v71 + v77) >= v169 || v77 >= v74)
        {
          goto LABEL_56;
        }

        v181 = v77 + 1;
        v182 = v78;
        v84 = v82;
        v85 = v183;
        sub_1D87A0E38(v170 + *(v178 + 72) * v83, v183, &qword_1ECA633B0);
        v86 = v184;
        sub_1D87A0E38(v85, v184, &qword_1ECA633B0);
        *v84 = *v86;
        v87 = v171;
        sub_1D87A0E38(v85, v171, &qword_1ECA633B0);
        v88 = v87 + *(v80 + 48);
        v89 = v185;
        sub_1D87A0E38(v88 + *(v185 + 20), v81, &qword_1ECA635E8);
        v90 = v180;
        if ((*v168)(v81, 1, v180) == 1)
        {
          sub_1D87A14E4(v81, &qword_1ECA635E8);
          v91 = 1;
          v82 = v173;
          v71 = v165;
          v78 = v182;
        }

        else
        {
          (*v160)(v79, v81, v90);
          v92 = (v88 + *(v89 + 24));
          v93 = v92[1];
          v78 = v182;
          if (v93 >> 60 == 15)
          {
            (*v161)(v79, v90);
            v91 = 1;
          }

          else
          {
            v94 = *v92;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67160);
            v95 = v162;
            v96 = (*(v162 + 80) + 32) & ~*(v162 + 80);
            v97 = swift_allocObject();
            *(v97 + 16) = v156;
            v98 = v97 + v96;
            v75 = v158;
            (*(v95 + 16))(v98, v79, v90);
            v99 = sub_1D8B13740();
            (*(*(v99 - 8) + 56))(v159, 1, 1, v99);
            sub_1D87A1544(v94, v93);
            sub_1D8B138C0();
            (*(v95 + 8))(v177, v90);
            v91 = 0;
          }

          v82 = v173;
          v71 = v165;
        }

        v100 = v176;
        (*v167)(v176, v91, 1, v75);
        sub_1D8A014F0(v88, type metadata accessor for VisualUnderstandingContainer);
        result = (*v166)(v100, 1, v75);
        v80 = v179;
        if (result == 1)
        {
          goto LABEL_60;
        }

        v101 = *(v174 + 48);
        v102 = *(v179 + 48);
        sub_1D87A14E4(v183, &qword_1ECA633B0);
        (*v163)(v82 + v101, v100, v75);
        sub_1D8A014F0(v184 + v102, type metadata accessor for VisualUnderstandingContainer);
        v186 = v78;
        v104 = *(v78 + 16);
        v103 = *(v78 + 24);
        if (v104 >= v103 >> 1)
        {
          sub_1D87F48C4(v103 > 1, v104 + 1, 1);
          v78 = v186;
        }

        *(v78 + 16) = v104 + 1;
        result = sub_1D881F6FC(v82, v78 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v104, &qword_1ECA63EA8);
        ++v77;
        v74 = v164;
        v79 = v177;
        v81 = v172;
        if (v181 == v164)
        {
          v72 = v155;
          v73 = v162;
          v69 = v143;
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_39:
    v105 = v153;
    sub_1D8B138E0();

    v106 = v174;
    if ((*(v175 + 48))(v105, 1, v174) == 1)
    {
      swift_unknownObjectRelease();
      sub_1D87A14E4(v105, &qword_1ECA67138);
      return (*(v175 + 56))(v72, 1, 1, v106);
    }

    v110 = v147;
    v111 = sub_1D881F6FC(v105, v147, &qword_1ECA63EA8);
    MEMORY[0x1EEE9AC00](v111);
    *(&v140 - 2) = v110;
    v112 = v148;
    sub_1D87EE41C(sub_1D8A0274C, v170, v71, v141, v148);
    v113 = v179;
    if ((*(v178 + 48))(v112, 1, v179) != 1)
    {
      v143 = v69;
      v117 = v112;
      v118 = v145;
      sub_1D881F6FC(v117, v145, &qword_1ECA633B0);
      v119 = v118;
      v120 = v151;
      sub_1D881F6FC(v119, v151, &qword_1ECA633B0);
      v108 = *v120;
      v109 = v146;
      sub_1D8A01550(v120 + *(v113 + 48), v146, type metadata accessor for VisualUnderstandingContainer);
      sub_1D87A14E4(v110, &qword_1ECA63EA8);
      goto LABEL_48;
    }

    sub_1D87A14E4(v112, &qword_1ECA67158);
    v114 = sub_1D8B151C0();
    v115 = sub_1D8B16210();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_1D8783000, v114, v115, "Couldn't find the corresponding VisualUnderstandingContainer.", v116, 2u);
      MEMORY[0x1DA721330](v116, -1, -1);
    }

    swift_unknownObjectRelease();
    (*(v175 + 56))(v72, 1, 1, v174);
    return sub_1D87A14E4(v110, &qword_1ECA63EA8);
  }

  else
  {
    v65 = *(v175 + 56);

    return v65(a4, 1, 1, v42);
  }
}

uint64_t sub_1D8A0077C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D8B16870();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D8A0087C, 0, 0);
}

uint64_t sub_1D8A0087C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D8B16880();
  v5 = sub_1D8A011DC(&qword_1EE0E3670, MEMORY[0x1E69E8820]);
  sub_1D8B16C40();
  sub_1D8A011DC(&qword_1EE0E3678, MEMORY[0x1E69E87E8]);
  sub_1D8B16890();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D8A00A0C;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D8A00A0C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8A00BC8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D8A00BC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s22VisualIntelligenceCore0A16LookupClassifierV6ResultV11SearchStateO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B138B0();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v32 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67190);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v32 - v18;
  v20 = (&v32 + *(v17 + 56) - v18);
  sub_1D8A01488(a1, &v32 - v18, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  sub_1D8A01488(a2, v20, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_18;
      }

LABEL_21:
      sub_1D8A014F0(v19, type metadata accessor for VisualLookupClassifier.Result.SearchState);
      v29 = 1;
      return v29 & 1;
    }

    sub_1D8A01488(v19, v10, type metadata accessor for VisualLookupClassifier.Result.SearchState);
    v23 = *v10;
    v22 = v10[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (v23 == *v20 && v22 == v20[1])
    {
    }

    else
    {
      v25 = sub_1D8B16BA0();

      if ((v25 & 1) == 0)
      {
        sub_1D8A014F0(v19, type metadata accessor for VisualLookupClassifier.Result.SearchState);
LABEL_19:
        v29 = 0;
        return v29 & 1;
      }
    }

    goto LABEL_21;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D8A01488(v19, v15, type metadata accessor for VisualLookupClassifier.Result.SearchState);
    v23 = *v15;
    v22 = v15[1];
    if (swift_getEnumCaseMultiPayload())
    {
LABEL_4:

LABEL_18:
      sub_1D87A14E4(v19, &qword_1ECA67190);
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  sub_1D8A01488(v19, v13, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v32 + 8))(v13, v33);
    goto LABEL_18;
  }

  v26 = v32;
  v27 = v20;
  v28 = v33;
  (*(v32 + 32))(v6, v27, v33);
  v29 = MEMORY[0x1DA71CD40](v13, v6);
  v30 = *(v26 + 8);
  v30(v6, v28);
  v30(v13, v28);
  sub_1D8A014F0(v19, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  return v29 & 1;
}

unint64_t sub_1D8A01038()
{
  result = qword_1ECA66F58;
  if (!qword_1ECA66F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66F58);
  }

  return result;
}

unint64_t sub_1D8A0108C()
{
  result = qword_1ECA66F60;
  if (!qword_1ECA66F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66F60);
  }

  return result;
}

unint64_t sub_1D8A010E0()
{
  result = qword_1ECA66F68;
  if (!qword_1ECA66F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66F68);
  }

  return result;
}

unint64_t sub_1D8A01134()
{
  result = qword_1ECA66F70;
  if (!qword_1ECA66F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66F70);
  }

  return result;
}

unint64_t sub_1D8A01188()
{
  result = qword_1ECA66F80;
  if (!qword_1ECA66F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66F80);
  }

  return result;
}

uint64_t sub_1D8A011DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s22VisualIntelligenceCore0A16LookupClassifierV6ResultV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D8B13200() & 1) == 0)
  {
    goto LABEL_21;
  }

  v4 = type metadata accessor for VisualLookupClassifier.Result(0);
  if (!_s22VisualIntelligenceCore22GenericParseDataResultV2eeoiySbAC_ACtFZ_0(a1 + v4[5], a2 + v4[5]))
  {
    goto LABEL_21;
  }

  v5 = v4[6];
  v6 = *(a2 + v5);
  if (*(a1 + v5))
  {
    if (!v6)
    {
      goto LABEL_21;
    }

    sub_1D881F764(0, &qword_1EE0E36A0);
    v7 = v6;
    v8 = sub_1D8B16400();

    if ((v8 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v6)
  {
    goto LABEL_21;
  }

  if ((sub_1D88E71FC(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0)
  {
    goto LABEL_21;
  }

  v9 = v4[8];
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_14;
    }

LABEL_21:
    LOBYTE(v17) = 0;
    return v17 & 1;
  }

  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = sub_1D88E59B0(v10, v11);

  if ((v12 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if ((_s22VisualIntelligenceCore0A16LookupClassifierV6ResultV11SearchStateO2eeoiySbAG_AGtFZ_0(a1 + v4[9], a2 + v4[9]) & 1) == 0)
  {
    goto LABEL_21;
  }

  v13 = v4[10];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if ((v15 & 1) == 0)
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      goto LABEL_21;
    }

LABEL_23:
    LOBYTE(v17) = *(a1 + v4[11]) ^ *(a2 + v4[11]) ^ 1;
    return v17 & 1;
  }

  if (v17)
  {
    goto LABEL_23;
  }

  return v17 & 1;
}

unint64_t sub_1D8A01398()
{
  result = qword_1ECA66FC8;
  if (!qword_1ECA66FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66FC8);
  }

  return result;
}

uint64_t sub_1D8A013EC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA637A0);
    sub_1D8A011DC(a2, type metadata accessor for VisualIntelligenceLookupResult);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8A01488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A014F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8A01550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A015B8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66FE8);
    sub_1D8A011DC(a2, MEMORY[0x1E69E0420]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8A01658()
{
  result = qword_1ECA67048;
  if (!qword_1ECA67048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67048);
  }

  return result;
}

void sub_1D8A017C8()
{
  sub_1D8B13240();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GenericParseDataResult();
    if (v1 <= 0x3F)
    {
      sub_1D89B61C0(319, qword_1EE0E6B30, &qword_1ECA66FD8);
      if (v2 <= 0x3F)
      {
        sub_1D8A018FC();
        if (v3 <= 0x3F)
        {
          sub_1D89B61C0(319, &qword_1EE0E39F8, &qword_1ECA637A0);
          if (v4 <= 0x3F)
          {
            type metadata accessor for VisualLookupClassifier.Result.SearchState(319);
            if (v5 <= 0x3F)
            {
              sub_1D8A01954();
              if (v6 <= 0x3F)
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

void sub_1D8A018FC()
{
  if (!qword_1EE0E3A08)
  {
    sub_1D8B13CF0();
    v0 = sub_1D8B15DB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3A08);
    }
  }
}

void sub_1D8A01954()
{
  if (!qword_1EE0E3858)
  {
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3858);
    }
  }
}

uint64_t sub_1D8A019A4()
{
  result = sub_1D8B138B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D8A01A74()
{
  result = qword_1ECA67070;
  if (!qword_1ECA67070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67070);
  }

  return result;
}

unint64_t sub_1D8A01ACC()
{
  result = qword_1ECA67078;
  if (!qword_1ECA67078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67078);
  }

  return result;
}

unint64_t sub_1D8A01B24()
{
  result = qword_1ECA67080;
  if (!qword_1ECA67080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67080);
  }

  return result;
}

unint64_t sub_1D8A01B7C()
{
  result = qword_1ECA67088;
  if (!qword_1ECA67088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67088);
  }

  return result;
}

unint64_t sub_1D8A01BD4()
{
  result = qword_1ECA67090;
  if (!qword_1ECA67090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67090);
  }

  return result;
}

unint64_t sub_1D8A01C2C()
{
  result = qword_1ECA67098;
  if (!qword_1ECA67098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67098);
  }

  return result;
}

unint64_t sub_1D8A01C84()
{
  result = qword_1ECA670A0;
  if (!qword_1ECA670A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670A0);
  }

  return result;
}

unint64_t sub_1D8A01CDC()
{
  result = qword_1ECA670A8;
  if (!qword_1ECA670A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670A8);
  }

  return result;
}

unint64_t sub_1D8A01D34()
{
  result = qword_1ECA670B0;
  if (!qword_1ECA670B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670B0);
  }

  return result;
}

unint64_t sub_1D8A01D8C()
{
  result = qword_1ECA670B8;
  if (!qword_1ECA670B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670B8);
  }

  return result;
}

unint64_t sub_1D8A01DE4()
{
  result = qword_1ECA670C0;
  if (!qword_1ECA670C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670C0);
  }

  return result;
}

unint64_t sub_1D8A01E3C()
{
  result = qword_1ECA670C8;
  if (!qword_1ECA670C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670C8);
  }

  return result;
}

unint64_t sub_1D8A01E94()
{
  result = qword_1ECA670D0;
  if (!qword_1ECA670D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670D0);
  }

  return result;
}

unint64_t sub_1D8A01EEC()
{
  result = qword_1ECA670D8;
  if (!qword_1ECA670D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670D8);
  }

  return result;
}

unint64_t sub_1D8A01F44()
{
  result = qword_1ECA670E0;
  if (!qword_1ECA670E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670E0);
  }

  return result;
}

unint64_t sub_1D8A01F9C()
{
  result = qword_1ECA670E8;
  if (!qword_1ECA670E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670E8);
  }

  return result;
}

unint64_t sub_1D8A01FF4()
{
  result = qword_1ECA670F0;
  if (!qword_1ECA670F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA670F0);
  }

  return result;
}

uint64_t sub_1D8A02048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6372616553746F6ELL && a2 == 0xED0000656C626168;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6261686372616573 && a2 == 0xEA0000000000656CLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
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

uint64_t sub_1D8A021BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446573726170 && a2 == 0xE900000000000061 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6948686372616573 && a2 == 0xED000079726F7473 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6552686372616573 && a2 == 0xED000073746C7573 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7453686372616573 && a2 == 0xEB00000000657461 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001D8B46BB0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D8B43730 == a2)
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

uint64_t sub_1D8A024A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A02504(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D886553C;

  return sub_1D89FDFA8(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 96);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      }

      goto LABEL_10;
    }

LABEL_8:
    sub_1D87A1598(*(v0 + 56), *(v0 + 64));

    goto LABEL_10;
  }

  if (!*(v0 + 96))
  {

    goto LABEL_10;
  }

  if (v1 == 1)
  {
    goto LABEL_8;
  }

LABEL_10:

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1D8A02648(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D886553C;

  return sub_1D89FDFA8(a1, v4, v5, v1 + 32);
}

unint64_t sub_1D8A026F8()
{
  result = qword_1ECA67118;
  if (!qword_1ECA67118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67118);
  }

  return result;
}

uint64_t sub_1D8A0276C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8864FBC;

  return sub_1D89FF090(a1, v4, v5, v1 + 32);
}

unint64_t sub_1D8A0281C()
{
  result = qword_1ECA67188;
  if (!qword_1ECA67188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67188);
  }

  return result;
}

uint64_t E5InferenceProvider.__allocating_init(modelURL:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  v4 = sub_1D8B13000();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  type metadata accessor for E5Bundle(0);
  swift_storeEnumTagMultiPayload();
  return v2;
}

uint64_t E5InferenceProvider.init(modelURL:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  v4 = sub_1D8B13000();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  type metadata accessor for E5Bundle(0);
  swift_storeEnumTagMultiPayload();
  return v1;
}

uint64_t sub_1D8A029C0()
{
  v1[11] = v0;
  v1[12] = type metadata accessor for E5Bundle(0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v2 = sub_1D8B13000();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A02AE8, 0, 0);
}

uint64_t sub_1D8A02AE8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  swift_beginAccess();
  sub_1D8A02E30(v2 + v3, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8A02E94(*(v0 + 112));
    sub_1D8A02EF0();
    swift_allocError();
    *v4 = xmmword_1D8B32180;
    swift_willThrow();
    goto LABEL_7;
  }

  (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 112), *(v0 + 120));
  *(v0 + 80) = 0;
  if (e5rt_execution_stream_create())
  {
    result = e5rt_get_last_error_message();
    if (!result)
    {
      __break(1u);
      return result;
    }

    goto LABEL_5;
  }

  v13 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671A0);
  sub_1D8B12FA0();
  if (*(v0 + 64))
  {
    if (e5rt_get_last_error_message())
    {
LABEL_5:
      v7 = *(v0 + 128);
      v6 = *(v0 + 136);
      v8 = *(v0 + 120);
      v9 = sub_1D8B15AD0();
      v11 = v10;
      sub_1D8A02EF0();
      swift_allocError();
      *v12 = v9;
      v12[1] = v11;
      swift_willThrow();
      (*(v7 + 8))(v6, v8);
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v13)
  {
    v15 = *(v0 + 72);
    if (v15)
    {
      v16 = *(v0 + 104);
      (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
      *v16 = v13;
      v16[1] = v15;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_1D8A02FD4(v16, v2 + v3);
      swift_endAccess();

      v14 = *(v0 + 8);
      goto LABEL_8;
    }
  }

  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  v19 = *(v0 + 120);
  sub_1D8A02EF0();
  swift_allocError();
  *v20 = 0;
  v20[1] = 0;
  swift_willThrow();
  (*(v18 + 8))(v17, v19);
LABEL_7:

  v14 = *(v0 + 8);
LABEL_8:

  return v14();
}

uint64_t sub_1D8A02E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for E5Bundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A02E94(uint64_t a1)
{
  v2 = type metadata accessor for E5Bundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8A02EF0()
{
  result = qword_1ECA67198;
  if (!qword_1ECA67198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67198);
  }

  return result;
}

uint64_t sub_1D8A02F44@<X0>(uint64_t a1@<X8>)
{
  result = e5rt_execution_stream_operation_create_precompiled_compute_operation();
  *(a1 + 8) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1D8A02FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for E5Bundle(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A030F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t *))
{
  v7 = type metadata accessor for E5Bundle(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  swift_beginAccess();
  sub_1D8A02E30(v3 + v10, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1D8A03284(a1, a2, *(v9 + 1), a3);
  }

  sub_1D8A02E94(v9);
  sub_1D8A02EF0();
  swift_allocError();
  *v12 = xmmword_1D8B190D0;
  return swift_willThrow();
}

uint64_t sub_1D8A03284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *))
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v7 = sub_1D8B15A10();
  LODWORD(a4) = a4(a3, v7 + 32, &v15);

  v8 = v15;
  v16 = v15;
  if (!a4)
  {
    if (v15)
    {
      v13 = sub_1D8A04838();
      if (!v4)
      {
        v15 = v13;
        sub_1D8A049DC(v8, v13, 1);
        v8 = sub_1D8A0466C();
        e5rt_buffer_object_release();
        if (!v16)
        {
          return v8;
        }

        goto LABEL_9;
      }
    }

    else
    {
      sub_1D8A02EF0();
      swift_allocError();
      *v14 = xmmword_1D8B254C0;
      swift_willThrow();
    }

    if (!v16)
    {
      return v8;
    }

LABEL_9:
    e5rt_io_port_release();
    return v8;
  }

  result = e5rt_get_last_error_message();
  if (result)
  {
    v10 = sub_1D8B15AD0();
    v8 = v11;
    sub_1D8A02EF0();
    swift_allocError();
    *v12 = v10;
    v12[1] = v8;
    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A03438()
{
  v1 = type metadata accessor for E5Bundle(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  swift_beginAccess();
  sub_1D8A02E30(v0 + v4, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1D8A03568();
  }

  sub_1D8A02E94(v3);
  sub_1D8A02EF0();
  swift_allocError();
  *v6 = xmmword_1D8B190D0;
  return swift_willThrow();
}

uint64_t sub_1D8A03568()
{
  sub_1D8B15A10();
  v0 = e5rt_execution_stream_operation_retain_input_port();

  result = 0;
  if (v0)
  {
    result = e5rt_get_last_error_message();
    if (result)
    {
      v2 = sub_1D8B15AD0();
      v4 = v3;
      sub_1D8A02EF0();
      swift_allocError();
      *v5 = v2;
      v5[1] = v4;
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D8A03674()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for E5Bundle(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A03708, 0, 0);
}

uint64_t sub_1D8A03708()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  swift_beginAccess();
  sub_1D8A02E30(v2 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[7];
  if (EnumCaseMultiPayload != 1)
  {
    sub_1D8A02E94(v5);
    v15 = 0;
    v17 = 1;
    goto LABEL_6;
  }

  v6 = *v5;
  if (!e5rt_execution_stream_encode_operation())
  {
    v21 = swift_task_alloc();
    v0[8] = v21;
    *(v21 + 16) = v6;
    last_error_message = swift_task_alloc();
    v0[9] = last_error_message;
    *last_error_message = v0;
    last_error_message[1] = sub_1D8A038F0;
    v12 = sub_1D8A03F34;
    v10 = 0x292874696D627573;
    v14 = MEMORY[0x1E69E7CA8] + 8;
    v8 = 0;
    v9 = 0;
    v11 = 0xE800000000000000;
    v13 = v21;

    return MEMORY[0x1EEE6DE38](last_error_message, v8, v9, v10, v11, v12, v13, v14);
  }

  last_error_message = e5rt_get_last_error_message();
  if (!last_error_message)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE38](last_error_message, v8, v9, v10, v11, v12, v13, v14);
  }

  v15 = sub_1D8B15AD0();
  v17 = v16;
LABEL_6:
  sub_1D8A02EF0();
  swift_allocError();
  *v18 = v15;
  v18[1] = v17;
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D8A038F0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D8A03A70;
  }

  else
  {

    v2 = sub_1D8A03A0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A03A0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A03A70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t E5InferenceProvider.deinit()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for E5Bundle(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  swift_beginAccess();
  sub_1D8A02E30(v0 + v4, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v3;
    v7[0] = v3[1];
    v7[1] = v5;
    e5rt_execution_stream_operation_release();
    e5rt_execution_stream_release();
  }

  else
  {
    sub_1D8A02E94(v3);
  }

  sub_1D8A02E94(v0 + v4);
  return v0;
}

uint64_t E5InferenceProvider.__deallocating_deinit()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for E5Bundle(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore19E5InferenceProvider_bundle;
  swift_beginAccess();
  sub_1D8A02E30(v0 + v4, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v3;
    v7[0] = v3[1];
    v7[1] = v5;
    e5rt_execution_stream_operation_release();
    e5rt_execution_stream_release();
  }

  else
  {
    sub_1D8A02E94(v3);
  }

  sub_1D8A02E94(v0 + v4);
  return swift_deallocClassInstance();
}

void sub_1D8A03D2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-v6];
  (*(v5 + 16))(&v16[-v6], a1, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1D8A0454C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8A045E4;
  aBlock[3] = &block_descriptor_9;
  v10 = _Block_copy(aBlock);

  LODWORD(a2) = e5rt_execution_stream_submit_async();
  _Block_release(v10);
  if (a2)
  {
    if (e5rt_get_last_error_message())
    {
      v11 = sub_1D8B15AD0();
      v13 = v12;
      sub_1D8A02EF0();
      v14 = swift_allocError();
      *v15 = v11;
      v15[1] = v13;
      swift_willThrow();
      aBlock[0] = v14;
      sub_1D8B15E10();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D8A03F64()
{
  result = type metadata accessor for E5Bundle(319);
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

uint64_t dispatch thunk of E5InferenceProvider.preheat()()
{
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D886553C;

  return v4();
}

uint64_t dispatch thunk of E5InferenceProvider.infer()()
{
  v4 = (*(*v0 + 152) + **(*v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D8864FBC;

  return v4();
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore7E5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D8A04300(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8A04358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void sub_1D8A043B8()
{
  sub_1D8B13000();
  if (v0 <= 0x3F)
  {
    sub_1D8A0442C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D8A0442C()
{
  if (!qword_1EE0E3688)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0E3688);
    }
  }
}

uint64_t sub_1D8A04488()
{
  if (e5rt_execution_stream_reset())
  {
    result = e5rt_get_last_error_message();
    if (result)
    {
      v1 = sub_1D8B15AD0();
      v3 = v2;
      sub_1D8A02EF0();
      swift_allocError();
      *v4 = v1;
      v4[1] = v3;
      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671A8);
      return sub_1D8B15E10();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671A8);
    return sub_1D8B15E20();
  }

  return result;
}

uint64_t sub_1D8A0454C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671A8);

  return sub_1D8A04488();
}

uint64_t sub_1D8A045E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D8A0466C()
{
  if (e5rt_io_port_retain_tensor_desc())
  {
    result = e5rt_get_last_error_message();
    if (result)
    {
      v1 = sub_1D8B15AD0();
      v3 = v2;
      sub_1D8A02EF0();
      swift_allocError();
      *v4 = v1;
      v4[1] = v3;
      swift_willThrow();
      return v1;
    }

    __break(1u);
  }

  else
  {
    if (!e5rt_tensor_desc_get_shape())
    {
      v1 = MEMORY[0x1E69E7CC0];
      e5rt_tensor_desc_release();
      return v1;
    }

    result = e5rt_get_last_error_message();
    if (result)
    {
      v1 = sub_1D8B15AD0();
      v6 = v5;
      sub_1D8A02EF0();
      swift_allocError();
      *v7 = v1;
      v7[1] = v6;
      swift_willThrow();
      e5rt_tensor_desc_release();
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A04838()
{
  if (!e5rt_io_port_retain_tensor_desc())
  {
    if (e5rt_tensor_desc_alloc_buffer_object())
    {
      if (e5rt_get_last_error_message())
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    v1 = 0;
    if (!e5rt_buffer_object_get_iosurface())
    {
      sub_1D8A02EF0();
      swift_allocError();
      *v8 = xmmword_1D8B32190;
      goto LABEL_10;
    }

    result = e5rt_get_last_error_message();
    if (!result)
    {
      goto LABEL_14;
    }

LABEL_9:
    v1 = sub_1D8B15AD0();
    v6 = v5;
    sub_1D8A02EF0();
    swift_allocError();
    *v7 = v1;
    v7[1] = v6;
LABEL_10:
    swift_willThrow();
    e5rt_tensor_desc_release();
    return v1;
  }

  result = e5rt_get_last_error_message();
  if (result)
  {
    v1 = sub_1D8B15AD0();
    v3 = v2;
    sub_1D8A02EF0();
    swift_allocError();
    *v4 = v1;
    v4[1] = v3;
    swift_willThrow();
    return v1;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1D8A049DC(uint64_t a1, uint64_t a2, char a3)
{
  if (e5rt_io_port_is_tensor())
  {
    result = e5rt_get_last_error_message();
    if (result)
    {
LABEL_3:
      v5 = sub_1D8B15AD0();
      v7 = v6;
      sub_1D8A02EF0();
      swift_allocError();
      *v8 = v5;
      v8[1] = v7;
      return swift_willThrow();
    }

    __break(1u);
    goto LABEL_23;
  }

  if ((a3 & 1) == 0)
  {
LABEL_9:
    if (e5rt_io_port_is_tensor())
    {
      if (e5rt_get_last_error_message())
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    if (e5rt_surface_object_create_from_iosurface())
    {
      if (!e5rt_get_last_error_message())
      {
        __break(1u);
        if (e5rt_io_port_bind_buffer_object())
        {
          result = e5rt_get_last_error_message();
          if (!result)
          {
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          v9 = sub_1D8B15AD0();
          v11 = v10;
          sub_1D8A02EF0();
          swift_allocError();
          *v12 = v9;
          v12[1] = v11;
          swift_willThrow();
        }

        return e5rt_buffer_object_release();
      }
    }

    else
    {
      if (!e5rt_io_port_bind_surface_object())
      {
        return e5rt_surface_object_release();
      }

      result = e5rt_get_last_error_message();
      if (!result)
      {
LABEL_24:
        __break(1u);
        return result;
      }
    }

    v13 = sub_1D8B15AD0();
    v15 = v14;
    sub_1D8A02EF0();
    swift_allocError();
    *v16 = v13;
    v16[1] = v15;
    swift_willThrow();
    return e5rt_surface_object_release();
  }

  result = e5rt_io_port_bind_buffer_object();
  if (result)
  {
    if (e5rt_get_last_error_message())
    {
      goto LABEL_3;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t GroundingMD6_1Descriptor.bundleURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_bundleURL;
  v4 = sub_1D8B13000();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroundingMD6_1Descriptor.__allocating_init()()
{
  v0 = swift_allocObject();
  GroundingMD6_1Descriptor.init()();
  return v0;
}

void GroundingMD6_1Descriptor.init()()
{
  v1 = sub_1D8B13000();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_retinaSize) = 640;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_scoreThreshold) = 1036831949;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_iouThreshold) = 1051931443;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_maxBoxes) = 8400;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  *(v0 + 16) = v6;
  v7 = v6;
  v8 = sub_1D8B15940();
  v9 = sub_1D8B15940();
  v10 = [v7 URLForResource:v8 withExtension:v9];

  if (v10)
  {
    sub_1D8B12FB0();

    (*(v2 + 32))(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_bundleURL, v4, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D8A04EE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(v0 + 16);
  v11 = sub_1D8B15940();
  v12 = sub_1D8B15940();
  v13 = [v10 URLForResource:v11 withExtension:v12];

  if (v13)
  {
    sub_1D8B12FB0();

    v14 = sub_1D8B13000();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  }

  else
  {
    v14 = sub_1D8B13000();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  sub_1D88E057C(v7, v9);
  sub_1D888B4E8(v9, v4);
  sub_1D8B13000();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v4, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = sub_1D8B13010();
    sub_1D888F158(v9);
    (*(v15 + 8))(v4, v14);
    return v17;
  }

  return result;
}

uint64_t GroundingMD6_1Descriptor.deinit()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_bundleURL;
  v2 = sub_1D8B13000();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GroundingMD6_1Descriptor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_bundleURL;
  v2 = sub_1D8B13000();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1D8A05270()
{
  result = qword_1ECA671B0;
  if (!qword_1ECA671B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA671B0);
  }

  return result;
}

unint64_t sub_1D8A052C8()
{
  result = qword_1ECA671B8;
  if (!qword_1ECA671B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA671B8);
  }

  return result;
}

unint64_t sub_1D8A05324()
{
  result = qword_1ECA671C0;
  if (!qword_1ECA671C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA671C0);
  }

  return result;
}

uint64_t sub_1D8A05380@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore24GroundingMD6_1Descriptor_bundleURL;
  v5 = sub_1D8B13000();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for GroundingMD6_1Descriptor()
{
  result = qword_1ECA671C8;
  if (!qword_1ECA671C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8A05568()
{
  result = sub_1D8B13000();
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

VisualIntelligenceCore::visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy_optional sub_1D8A0568C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v41 = MEMORY[0x1E69E7CC0];
  sub_1D87F4C1C(0, v2, 0);
  v3 = v41;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v6 = a1 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80));
  v32 = *(*(v5 - 1) + 72);
  while (1)
  {
    v7 = (v6 + v5[10]);
    v35 = v7[1];
    v36 = v7[2];
    v37 = *v7;
    v38 = v7[3];
    v8 = *(v6 + v5[11]);
    if (*(v8 + 16))
    {
      result.value = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v8 + 32)).value;
      if (v39 == 181)
      {
        goto LABEL_19;
      }

      v10 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
      v12 = v11;
    }

    else
    {
      v12 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
    }

    v13 = *a2;
    if (!*(*a2 + 16))
    {
      break;
    }

    v14 = sub_1D87EF838(v10, v12);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      __break(1u);
      break;
    }

    v17 = *(*(v13 + 56) + 8 * v14);
    if (*(v8 + 16))
    {
      result.value = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v8 + 32)).value;
      if (v39 == 181)
      {
        goto LABEL_20;
      }

      v18 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
    }

    else
    {
      v19 = 0xE700000000000000;
      v18 = 0x6E776F6E6B6E75;
    }

    v39 = v18;
    v40 = v19;
    v34 = v17;
    MEMORY[0x1DA71EFA0](8250, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D8B1AB90;
    v21 = v5;
    v22 = *(v6 + v5[9]);
    *(v20 + 56) = MEMORY[0x1E69E6448];
    *(v20 + 64) = MEMORY[0x1E69E64A8];
    *(v20 + 32) = v22;
    v23 = sub_1D8B159A0();
    MEMORY[0x1DA71EFA0](v23);

    v25 = *(v41 + 16);
    v24 = *(v41 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1D87F4C1C((v24 > 1), v25 + 1, 1);
    }

    v26 = vbslq_s8(vcgtq_f64(v37, v35), v35, v37);
    v27 = vbslq_s8(vcgtq_f64(v26, v36), v36, v26);
    v28 = vbslq_s8(vcgtq_f64(v27, v38), v38, v27);
    v29 = vbslq_s8(vcgeq_f64(v35, v37), v35, v37);
    v30 = vbslq_s8(vcgeq_f64(v36, v29), v36, v29);
    *(v41 + 16) = v25 + 1;
    v31 = v41 + 96 * v25;
    *(v31 + 32) = v28;
    *(v31 + 48) = vsubq_f64(vbslq_s8(vcgeq_f64(v38, v30), v38, v30), v28);
    *(v31 + 64) = 0x3F689374BC6A7EFALL;
    *(v31 + 72) = v34;
    *(v31 + 80) = v39;
    *(v31 + 88) = v40;
    *(v31 + 96) = 0;
    *(v31 + 104) = 0;
    *(v31 + 112) = 0;
    *(v31 + 120) = 1;
    v6 += v32;
    --v2;
    v5 = v21;
    if (!v2)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D8A059EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1D8B16470();
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v12 - v8;
  v10 = *(v2 + *(a1 + 44));
  if (*(v10 + 16))
  {
    v12[1] = *(v10 + 32);
    swift_getAssociatedConformanceWitness();
    sub_1D8B15C50();
    v11 = *(AssociatedTypeWitness - 8);
    result = (*(v11 + 48))(v9, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v11 + 32))(a2, v9, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t GroundingResult.label.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  if (!*(*(v1 + *(v5 + 44)) + 16))
  {
    return 0x6E776F6E6B6E75;
  }

  sub_1D8A059EC(v5, &v10 - v6);
  swift_getAssociatedConformanceWitness();
  v8 = sub_1D8B16B50();
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  return v8;
}

uint64_t sub_1D8A05CB0()
{
  v0 = sub_1D88F8978();
  v7 = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 32;
    do
    {
      v3 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.categories.getter();
      sub_1D88F38F4(v3);
      v2 += 8;
      --v1;
    }

    while (v1);

    v4 = v7;
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1D87C3B2C(v4);

  return v5;
}

uint64_t GroundingResult.taxonomyPredictionSample.getter(uint64_t a1)
{
  v9[5] = *(v1 + *(a1 + 44));
  v2 = *(a1 + 24);
  v9[2] = *(a1 + 16);
  v9[3] = v2;

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA671E0);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_1D879FE70(&qword_1ECA671E8, &qword_1ECA671E0);
  v7 = sub_1D87DFC48(sub_1D8A0E978, v9, v3, TupleTypeMetadata2, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);

  return v7;
}

uint64_t sub_1D8A05E6C(uint64_t a1, unint64_t *a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v34 = v7;
  v35 = v3;
  while (v6)
  {
LABEL_11:
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v13 = v12[1];
    v37 = *v12;
    v38 = 0;

    while (1)
    {
      MEMORY[0x1DA721350](&v38, 8);
      if (0x20000000000001 * v38 >= 0x1FFFFFFFFFF801)
      {
        break;
      }

      v38 = 0;
    }

    v14 = (v38 * 0x20000000000001uLL) >> 64;
    do
    {
      v38 = 0;
      MEMORY[0x1DA721350](&v38, 8);
    }

    while (0x20000000000001 * v38 < 0x1FFFFFFFFFF801);
    v15 = (v38 * 0x20000000000001uLL) >> 64;
    do
    {
      v38 = 0;
      MEMORY[0x1DA721350](&v38, 8);
    }

    while (0x20000000000001 * v38 < 0x1FFFFFFFFFF801);
    GenericRGB = CGColorCreateGenericRGB(vcvtd_n_f64_u64(v14, 0x35uLL) + 0.0, vcvtd_n_f64_u64(v15, 0x35uLL) + 0.0, vcvtd_n_f64_u64((v38 * 0x20000000000001uLL) >> 64, 0x35uLL) + 0.0, 1.0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *a2;
    v18 = v38;
    v19 = a2;
    *a2 = 0x8000000000000000;
    v20 = sub_1D87EF838(v37, v13);
    v22 = *(v18 + 16);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_30;
    }

    v26 = v21;
    if (*(v18 + 24) < v25)
    {
      sub_1D8975860(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1D87EF838(v37, v13);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_32;
      }

LABEL_23:
      v28 = v38;
      if (v26)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v32 = v20;
    sub_1D896B89C();
    v20 = v32;
    v28 = v38;
    if (v26)
    {
LABEL_4:
      v9 = v28[7];
      v10 = *(v9 + 8 * v20);
      *(v9 + 8 * v20) = GenericRGB;

      goto LABEL_5;
    }

LABEL_24:
    v28[(v20 >> 6) + 8] |= 1 << v20;
    v29 = (v28[6] + 16 * v20);
    *v29 = v37;
    v29[1] = v13;
    *(v28[7] + 8 * v20) = GenericRGB;
    v30 = v28[2];
    v24 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v24)
    {
      goto LABEL_31;
    }

    v28[2] = v31;

LABEL_5:
    v6 &= v6 - 1;
    a2 = v19;
    *v19 = v28;

    v7 = v34;
    v3 = v35;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8A06150(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA673B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A0FE64();
  sub_1D8B16DD0();
  v10 = 0;
  sub_1D8B16AD0();
  if (!v1)
  {
    v9 = 1;
    sub_1D8B16AC0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D8A062D8()
{
  if (*v0)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x646E496C6562616CLL;
  }
}

uint64_t sub_1D8A0631C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E496C6562616CLL && a2 == 0xEA00000000007865;
  if (v6 || (sub_1D8B16BA0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
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

uint64_t sub_1D8A06408(uint64_t a1)
{
  v2 = sub_1D8A0FE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A06444(uint64_t a1)
{
  v2 = sub_1D8A0FE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D8A06480(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D8A0FCB0(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_1D8A064D0()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  sub_1D8B16D60();
  return sub_1D8B16D80();
}

uint64_t sub_1D8A06588()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  sub_1D8B16D60();
  return sub_1D8B16D80();
}