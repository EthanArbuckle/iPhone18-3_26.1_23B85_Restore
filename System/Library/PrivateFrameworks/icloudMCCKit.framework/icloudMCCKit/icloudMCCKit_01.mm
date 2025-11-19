Swift::String __swiftcall BlackPearlVersion.getBlackPearlModelVersion()()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlSenderModelVersion()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlTSModelVersion()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlFinalRuleVersion()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall BlackPearlVersion.getBlackPearlBreakthroughVersion()()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlTreatmentId()()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlExperimentId()()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlRolloutFactorPackId()()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall BlackPearlVersion.getBlackPearlRolloutId()()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

icloudMCCKit::BlackPearlCategorizationVersion_optional __swiftcall BlackPearlVersion.getBlackPearlCategorizationVersion()()
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  *v0 = *(v1 + 160);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return result;
}

unint64_t sub_1D37284E4(unsigned __int8 a1)
{
  v1 = 0xD00000000000001DLL;
  if (a1 > 5u)
  {
    v6 = 0xD000000000000013;
    if (a1 != 10)
    {
      v6 = 0xD00000000000001FLL;
    }

    if (a1 == 9)
    {
      v6 = 0xD00000000000001DLL;
    }

    if (a1 == 7)
    {
      v1 = 0xD000000000000020;
    }

    if (a1 == 6)
    {
      v1 = 0xD00000000000001FLL;
    }

    if (a1 <= 8u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v3 = 0xD00000000000001DLL;
    }

    else
    {
      v3 = 0xD000000000000016;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000018;
    if (a1 == 1)
    {
      v4 = 0xD00000000000001CLL;
    }

    if (!a1)
    {
      v4 = 0xD000000000000016;
    }

    if (a1 <= 2u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D3728634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D372C42C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D3728674(uint64_t a1)
{
  v2 = sub_1D372A7B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D37286B0(uint64_t a1)
{
  v2 = sub_1D372A7B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BlackPearlVersion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76D978, &qword_1D3739AD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v43 = v1[3];
  v44 = v10;
  v11 = v1[4];
  v41 = v1[5];
  v42 = v11;
  v12 = v1[6];
  v39 = v1[7];
  v40 = v12;
  v13 = v1[8];
  v37 = v1[9];
  v38 = v13;
  v14 = v1[11];
  v35 = v1[10];
  v36 = v14;
  v15 = v1[13];
  v33 = v1[12];
  v34 = v15;
  v16 = v1[14];
  v31 = v1[15];
  v32 = v16;
  v17 = v1[17];
  v29 = v1[16];
  v30 = v17;
  v18 = v1[19];
  v27 = v1[18];
  v28 = v18;
  v19 = v1[21];
  v24 = v1[20];
  v25 = v19;
  v26 = v1[22];
  v50 = *(v1 + 184);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D372A7B8();
  sub_1D3737E8C();
  LOBYTE(v46) = 0;
  v21 = v45;
  sub_1D3737DAC();
  if (!v21)
  {
    LOBYTE(v46) = 1;
    sub_1D3737DAC();
    LOBYTE(v46) = 2;
    sub_1D3737DAC();
    v45 = v4;
    LOBYTE(v46) = 3;
    sub_1D3737DAC();
    LOBYTE(v46) = 4;
    sub_1D3737DAC();
    LOBYTE(v46) = 5;
    sub_1D3737D8C();
    LOBYTE(v46) = 6;
    sub_1D3737D8C();
    LOBYTE(v46) = 7;
    sub_1D3737DCC();
    LOBYTE(v46) = 8;
    sub_1D3737DCC();
    LOBYTE(v46) = 9;
    sub_1D3737D8C();
    LOBYTE(v46) = 10;
    sub_1D3737D8C();
    v46 = v24;
    v47 = v25;
    v48 = v26;
    v49 = v50;
    v51 = 11;
    sub_1D372A80C();
    sub_1D3737D9C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t BlackPearlVersion.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76D990, &qword_1D3739AE0);
  v5 = *(v59 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v8 = &v37 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D372A7B8();
  sub_1D3737E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  LOBYTE(v71[0]) = 0;
  v11 = sub_1D3737D5C();
  v13 = v12;
  v58 = v11;
  LOBYTE(v71[0]) = 1;
  v14 = sub_1D3737D5C();
  v57 = v15;
  v51 = v14;
  LOBYTE(v71[0]) = 2;
  v50 = sub_1D3737D5C();
  v56 = v16;
  LOBYTE(v71[0]) = 3;
  v49 = sub_1D3737D5C();
  v55 = v17;
  LOBYTE(v71[0]) = 4;
  v48 = sub_1D3737D5C();
  v54 = v18;
  LOBYTE(v71[0]) = 5;
  v47 = sub_1D3737D3C();
  v53 = v19;
  LOBYTE(v71[0]) = 6;
  v46 = sub_1D3737D3C();
  v52 = v20;
  LOBYTE(v71[0]) = 7;
  v45 = sub_1D3737D7C();
  LOBYTE(v71[0]) = 8;
  v44 = sub_1D3737D7C();
  LOBYTE(v71[0]) = 9;
  v42 = sub_1D3737D3C();
  v22 = v21;
  LOBYTE(v71[0]) = 10;
  v41 = sub_1D3737D3C();
  v43 = v23;
  v77 = 11;
  sub_1D372A860();
  sub_1D3737D4C();
  (*(v10 + 8))(v8, v59);
  v39 = v74;
  v40 = *(&v73 + 1);
  v76 = v75;
  v24 = v57;
  v25 = v58;
  v59 = v73;
  *&v60 = v58;
  *(&v60 + 1) = v13;
  *&v61 = v51;
  *(&v61 + 1) = v57;
  *&v62 = v50;
  v26 = v56;
  *(&v62 + 1) = v56;
  *&v63 = v49;
  *(&v63 + 1) = v55;
  *&v64 = v48;
  *(&v64 + 1) = v54;
  *&v65 = v47;
  *(&v65 + 1) = v53;
  *&v66 = v46;
  *(&v66 + 1) = v52;
  *&v67 = v45;
  *(&v67 + 1) = v44;
  *&v68 = v42;
  *(&v68 + 1) = v22;
  *&v69 = v41;
  *(&v69 + 1) = v43;
  v70[0] = v73;
  *&v70[1] = v74;
  v38 = v75;
  BYTE8(v70[1]) = v75;
  v27 = v64;
  v28 = v65;
  v29 = v67;
  a2[6] = v66;
  a2[7] = v29;
  a2[4] = v27;
  a2[5] = v28;
  v30 = v60;
  v31 = v61;
  v32 = v63;
  a2[2] = v62;
  a2[3] = v32;
  *a2 = v30;
  a2[1] = v31;
  v33 = v68;
  v34 = v69;
  v35 = v70[0];
  *(a2 + 169) = *(v70 + 9);
  a2[9] = v34;
  a2[10] = v35;
  a2[8] = v33;
  sub_1D372643C(&v60, v71);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v71[0] = v25;
  v71[1] = v13;
  v71[2] = v51;
  v71[3] = v24;
  v71[4] = v50;
  v71[5] = v26;
  v71[6] = v49;
  v71[7] = v55;
  v71[8] = v48;
  v71[9] = v54;
  v71[10] = v47;
  v71[11] = v53;
  v71[12] = v46;
  v71[13] = v52;
  v71[14] = v45;
  v71[15] = v44;
  v71[16] = v42;
  v71[17] = v22;
  v71[18] = v41;
  v71[19] = v43;
  v71[20] = v59;
  v71[21] = v40;
  v71[22] = v39;
  v72 = v38;
  return sub_1D372A8B4(v71);
}

void __swiftcall BlackPearlThreshold.init(thresholdCommerce:thresholdEmployeeNews:thresholdEmployee:thresholdPersonal:thresholdP2C:thresholdSender:thresholdTS:thresholdCategoryTS:thresholdCorpEmployee:tsSenderMaxTokens:tsSubjectMaxTokens:)(icloudMCCKit::BlackPearlThreshold *__return_ptr retstr, Swift::Double thresholdCommerce, Swift::Double thresholdEmployeeNews, Swift::Double thresholdEmployee, Swift::Double thresholdPersonal, Swift::Double thresholdP2C, Swift::Double thresholdSender, Swift::Double thresholdTS, Swift::Double thresholdCategoryTS, Swift::Double thresholdCorpEmployee, Swift::Int tsSenderMaxTokens, Swift::Int tsSubjectMaxTokens)
{
  retstr->thresholdCommerce = thresholdCommerce;
  retstr->thresholdEmployeeNews = thresholdEmployeeNews;
  retstr->thresholdEmployee = thresholdEmployee;
  retstr->thresholdPersonal = thresholdPersonal;
  retstr->thresholdP2C = thresholdP2C;
  retstr->thresholdSender = thresholdSender;
  retstr->thresholdTS = thresholdTS;
  retstr->thresholdCategoryTS = thresholdCategoryTS;
  retstr->thresholdCorpEmployee = thresholdCorpEmployee;
  retstr->tsSenderMaxTokens = tsSenderMaxTokens;
  retstr->tsSubjectMaxTokens = tsSubjectMaxTokens;
}

unint64_t sub_1D372933C(unsigned __int8 a1)
{
  v1 = 0x6C6F687365726874;
  if (a1 <= 4u)
  {
    if (a1 == 3)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000011;
    }

    v6 = 0xD000000000000011;
    if (a1)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (a1 == 9)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000013;
    if (a1 == 6)
    {
      v4 = 0x6C6F687365726874;
    }

    if (a1 != 5)
    {
      v1 = v4;
    }

    if (a1 <= 7u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D37294B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D372C7E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D37294E4(uint64_t a1)
{
  v2 = sub_1D372A8E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3729520(uint64_t a1)
{
  v2 = sub_1D372A8E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BlackPearlThreshold.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76D9A0, &qword_1D3739AE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = *v1;
  v25 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v13 = v1[4];
  v12 = v1[5];
  v15 = v1[6];
  v14 = v1[7];
  v16 = v1[8];
  v17 = v1[9];
  v18 = v1[10];
  v19 = a1[3];
  v20 = a1[4];
  v21 = a1;
  v23 = v22;
  __swift_project_boxed_opaque_existential_0(v21, v19);
  sub_1D372A8E4();
  sub_1D3737E8C();
  v36 = 0;
  sub_1D3737DBC();
  if (!v2)
  {
    v35 = 1;
    sub_1D3737DBC();
    v34 = 2;
    sub_1D3737DBC();
    v33 = 3;
    sub_1D3737DBC();
    v32 = 4;
    sub_1D3737DBC();
    v31 = 5;
    sub_1D3737DBC();
    v30 = 6;
    sub_1D3737DBC();
    v29 = 7;
    sub_1D3737DBC();
    v28 = 8;
    sub_1D3737DBC();
    v27 = 9;
    sub_1D3737DCC();
    v26 = 10;
    sub_1D3737DCC();
  }

  return (*(v5 + 8))(v8, v23);
}

uint64_t BlackPearlThreshold.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76D9B0, &qword_1D3739AF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D372A8E4();
  sub_1D3737E7C();
  if (!v2)
  {
    v43 = 0;
    sub_1D3737D6C();
    v12 = v11;
    v42 = 1;
    sub_1D3737D6C();
    v14 = v13;
    v41 = 2;
    sub_1D3737D6C();
    v16 = v15;
    v40 = 3;
    sub_1D3737D6C();
    v18 = v17;
    v39 = 4;
    sub_1D3737D6C();
    v20 = v19;
    v38 = 5;
    sub_1D3737D6C();
    v22 = v21;
    v37 = 6;
    sub_1D3737D6C();
    v24 = v23;
    v36 = 7;
    sub_1D3737D6C();
    v32 = v26;
    v35 = 8;
    sub_1D3737D6C();
    v28 = v27;
    v34 = 9;
    v29 = sub_1D3737D7C();
    v33 = 10;
    v30 = sub_1D3737D7C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v16;
    a2[3] = v18;
    a2[4] = v20;
    a2[5] = v22;
    v31 = v32;
    a2[6] = v24;
    a2[7] = v31;
    a2[8] = v28;
    a2[9] = v29;
    a2[10] = v30;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t BloomFilterData.init(commerceFilePath:guaranteeListFilePath:nerFilePath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D373767C();
  v12 = *(*(v8 - 8) + 32);
  (v12)((v8 - 8), a4, a1, v8);
  v9 = type metadata accessor for BloomFilterData(0);
  v12(a4 + *(v9 + 20), a2, v8);
  v10 = a4 + *(v9 + 24);

  return (v12)(v10, a3, v8);
}

uint64_t BloomFilterData.getCommerceFilePath()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D373767C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BloomFilterData.getGuaranteeListFilePath()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BloomFilterData(0) + 20);
  v4 = sub_1D373767C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlackPearlModel.init(name:version:modelPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = type metadata accessor for BlackPearlModel(0);
  v9 = v8[7];
  v10 = sub_1D373767C();
  v11 = *(*(v10 - 8) + 56);
  v11(&a5[v9], 1, 1, v10);
  v12 = v8[8];
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  *(a5 + 3) = a4;
  v13 = &a5[v8[6]];
  sub_1D37375FC();

  sub_1D3727D4C(&a5[v9]);
  result = (v11)(&a5[v9], 1, 1, v10);
  *&a5[v12] = 0;
  a5[v8[9]] = 0;
  return result;
}

Swift::Void __swiftcall BlackPearlModel.loadModel()()
{
  v1 = v0;
  v2 = type metadata accessor for BlackPearlModel(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = v0[1];
  if (BlackPearlModel.isModelAssetAvailable()())
  {
    type metadata accessor for TrialLoader();
    static TrialLoader.compileModel(packageURL:modelName:modelVersion:)(v0 + v2[6], v7, v6, v0[2], v0[3], v5);
    sub_1D372A990(&v5[v2[7]], v0 + v2[7]);
    v8 = *&v5[v2[8]];
    v9 = v8;
    sub_1D372A75C(v5);
    v10 = v2[8];

    *(v1 + v10) = v8;
    *(v1 + v2[9]) = 1;
  }

  else
  {
    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v11 = sub_1D37378AC();
    __swift_project_value_buffer(v11, qword_1EC76DB60);

    v17 = sub_1D373788C();
    v12 = sub_1D3737BCC();
    if (os_log_type_enabled(v17, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      v15 = sub_1D3723A70(v7, v6, &v18);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_1D3703000, v17, v12, "No model asset found for %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1D38BC7D0](v14, -1, -1);
      MEMORY[0x1D38BC7D0](v13, -1, -1);
    }

    else
    {

      v16 = v17;
    }
  }
}

uint64_t sub_1D372A0CC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1D373767C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

MLModel_optional __swiftcall BlackPearlModel.getModel()()
{
  v1 = type metadata accessor for BlackPearlModel(0);
  if ((*(v0 + *(v1 + 36)) & 1) == 0)
  {
    BlackPearlModel.loadModel()();
  }

  v2 = *(v0 + *(v1 + 32));
  v3 = v2;
  v5 = v2;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

Swift::String __swiftcall BlackPearlCategorizationVersion.getVersionString()()
{
  v1 = v0[1];
  v2 = v0[2];
  v9 = *v0;
  v10 = sub_1D3737DDC();
  v11 = v3;
  MEMORY[0x1D38BBBD0](46, 0xE100000000000000);
  v4 = sub_1D3737DDC();
  MEMORY[0x1D38BBBD0](v4);

  MEMORY[0x1D38BBBD0](46, 0xE100000000000000);
  v5 = sub_1D3737DDC();
  MEMORY[0x1D38BBBD0](v5);

  v6 = v10;
  v7 = v11;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1D372A2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D372CB68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D372A2D4(uint64_t a1)
{
  v2 = sub_1D372AA00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D372A310(uint64_t a1)
{
  v2 = sub_1D372AA00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BlackPearlCategorizationVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76D9B8, &qword_1D3739AF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v13[1] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D372AA00();
  sub_1D3737E8C();
  v16 = 0;
  sub_1D3737DCC();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_1D3737DCC();
  v14 = 2;
  sub_1D3737DCC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t BlackPearlCategorizationVersion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76D9C8, &qword_1D3739B00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D372AA00();
  sub_1D3737E7C();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_1D3737D7C();
    v18 = 1;
    v16 = sub_1D3737D7C();
    v17 = 2;
    v13 = sub_1D3737D7C();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D372A6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlackPearlModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D372A75C(uint64_t a1)
{
  v2 = type metadata accessor for BlackPearlModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D372A7B8()
{
  result = qword_1EC76D980;
  if (!qword_1EC76D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76D980);
  }

  return result;
}

unint64_t sub_1D372A80C()
{
  result = qword_1EC76D988;
  if (!qword_1EC76D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76D988);
  }

  return result;
}

unint64_t sub_1D372A860()
{
  result = qword_1EC76D998;
  if (!qword_1EC76D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76D998);
  }

  return result;
}

unint64_t sub_1D372A8E4()
{
  result = qword_1EC76D9A8;
  if (!qword_1EC76D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76D9A8);
  }

  return result;
}

uint64_t sub_1D372A958(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D372A990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76D890, &qword_1D3739AD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D372AA00()
{
  result = qword_1EC76D9C0;
  if (!qword_1EC76D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76D9C0);
  }

  return result;
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1D372AA90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D372AAD8(uint64_t result, int a2, int a3)
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D372AB7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D372AB9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
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

  *(result + 88) = v3;
  return result;
}

uint64_t sub_1D372AC14()
{
  result = sub_1D373767C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D372ACB0()
{
  sub_1D373767C();
  if (v0 <= 0x3F)
  {
    sub_1D372AD9C(319, &qword_1EC76D9F0, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      sub_1D372AD9C(319, &qword_1EC76D9F8, sub_1D372ADF0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D372AD9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D3737C1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D372ADF0()
{
  result = qword_1EC76D898;
  if (!qword_1EC76D898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC76D898);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BlackPearlCategorizationVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BlackPearlCategorizationVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BlackPearlThreshold.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BlackPearlThreshold.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BlackPearlVersion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BlackPearlVersion.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D372B160()
{
  result = qword_1EC76DA00;
  if (!qword_1EC76DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DA00);
  }

  return result;
}

unint64_t sub_1D372B1B8()
{
  result = qword_1EC76DA08;
  if (!qword_1EC76DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DA08);
  }

  return result;
}

unint64_t sub_1D372B210()
{
  result = qword_1EC76DA10;
  if (!qword_1EC76DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DA10);
  }

  return result;
}

unint64_t sub_1D372B268()
{
  result = qword_1EC76DA18;
  if (!qword_1EC76DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DA18);
  }

  return result;
}

unint64_t sub_1D372B2C0()
{
  result = qword_1EC76DA20;
  if (!qword_1EC76DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DA20);
  }

  return result;
}

unint64_t sub_1D372B318()
{
  result = qword_1EC76DA28;
  if (!qword_1EC76DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DA28);
  }

  return result;
}

unint64_t sub_1D372B370()
{
  result = qword_1EC76DA30;
  if (!qword_1EC76DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DA30);
  }

  return result;
}

unint64_t sub_1D372B3C8()
{
  result = qword_1EC76DA38;
  if (!qword_1EC76DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DA38);
  }

  return result;
}

unint64_t sub_1D372B420()
{
  result = qword_1EC76DA40;
  if (!qword_1EC76DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DA40);
  }

  return result;
}

void *sub_1D372B474(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76D8F8, &qword_1D37397C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1D372B4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1D372CC74();

  result = sub_1D3737AFC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1D372BA80();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D3737CDC();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1D372BA80()
{
  v0 = sub_1D3737B0C();
  v4 = sub_1D372BB00(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1D372BB00(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D37379BC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1D3737C2C();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1D372B474(v9, 0);
  v12 = sub_1D372BC58(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1D37379BC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1D3737CDC();
LABEL_4:

  return sub_1D37379BC();
}

unint64_t sub_1D372BC58(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1D372BE78(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D3737A8C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D3737CDC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1D372BE78(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1D3737A5C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
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
  return result;
}

uint64_t sub_1D372BE78(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D3737AAC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1D38BBC10](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1D372BEF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1D3737CDC();
  }

  result = sub_1D372BFC0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_1D372BFC0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1D372BE78(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1D3737A7C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1D372BE78(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1D372BE78(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1D3737A7C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1D372C42C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001D373B820 == a2;
  if (v3 || (sub_1D3737DEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D373B840 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D373B860 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D373B880 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D373B8A0 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D373B8C0 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D373B8E0 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D373B900 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D373B930 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D373B950 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D373B970 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D373B990 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D3737DEC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1D372C7E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001D373B9B0 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D373B9D0 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D373B9F0 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D373BA10 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEC00000043325064 || (sub_1D3737DEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEF7265646E655364 || (sub_1D3737DEC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEB00000000535464 || (sub_1D3737DEC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D373BA30 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D373BA50 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D373BA70 == a2 || (sub_1D3737DEC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D373BA90 == a2)
  {

    return 10;
  }

  else
  {
    v5 = sub_1D3737DEC();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1D372CB68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1D3737DEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6E696DLL && a2 == 0xE500000000000000 || (sub_1D3737DEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863746170 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D3737DEC();

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

unint64_t sub_1D372CC74()
{
  result = qword_1EC76DA48;
  if (!qword_1EC76DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DA48);
  }

  return result;
}

uint64_t sub_1D372CCE0@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D373767C();
  v177 = *(v6 - 8);
  v178 = v6;
  v7 = v177[8];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v166 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v168 = &v151 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v169 = &v151 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v170 = &v151 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v171 = &v151 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v172 = &v151 - v18;
  v19 = type metadata accessor for BloomFilterData(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v176 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for BlackPearlModel(0);
  v22 = *(*(v167 - 1) + 64);
  v23 = MEMORY[0x1EEE9AC00](v167);
  v175 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v185 = &v151 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v184 = &v151 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v187 = &v151 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v186 = &v151 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v182 = &v151 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v151 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76DA68, "fB");
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v181 = (&v151 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x1EEE9AC00](v39);
  v180 = (&v151 - v42);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v151 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = (&v151 - v46);
  LODWORD(v179) = *a2;
  type metadata accessor for BlackPearlSharedDefaults();
  swift_allocObject();
  v48 = sub_1D372718C();
  v162 = a3;
  *a3 = v48;

  v183 = a1;
  static BlackPearlTrialLevels.buildVersion(trialClient:)(a1, &v191);
  v209 = v197;
  v210 = v198;
  v211 = v199;
  v212 = v200;
  v213 = v191;
  v205 = v193;
  v206 = v194;
  v207 = v195;
  v208 = v196;
  v49 = v201;
  v50 = v202;
  v51 = v203;
  v52 = v204;
  v173 = *(&v192 + 1);
  v174 = v192;
  sub_1D3727458(&v191);

  v158 = v52;
  if (v52)
  {
    goto LABEL_43;
  }

  v160 = v50;
  v161 = v49;
  *&v191 = v49;
  *(&v191 + 1) = v50;
  v159 = v51;
  *&v192 = v51;
  v53 = BlackPearlCategorizationVersion.getVersionString()();
  v54 = *(v37 + 48);
  LOBYTE(v191) = 0;
  v55 = v183;
  object = v53._object;
  sub_1D372EBEC(v47, (v47 + v54), v183, &v191, v53._countAndFlagsBits, v53._object);
  sub_1D37307E8(v47, v45);
  v56 = *(v37 + 48);
  v164 = v36;
  sub_1D37261B4(v45, v36, type metadata accessor for BlackPearlModel);
  sub_1D372A75C(&v45[v56]);
  sub_1D37307E8(v47, v45);
  sub_1D37261B4(&v45[*(v37 + 48)], v182, type metadata accessor for BlackPearlModel);
  sub_1D372A75C(v45);
  v57 = v179;
  if (v179 == 4 || v179 == 1)
  {
    BlackPearlModel.loadModel()();
    BlackPearlModel.loadModel()();
  }

  v58 = *(v37 + 48);
  LOBYTE(v191) = 1;
  v59 = v180;
  v60 = v55;
  sub_1D372EBEC(v180, (v180 + v58), v55, &v191, v53._countAndFlagsBits, object);
  sub_1D37307E8(v59, v45);
  v61 = v57;
  v62 = *(v37 + 48);
  sub_1D37261B4(v45, v186, type metadata accessor for BlackPearlModel);
  sub_1D372A75C(&v45[v62]);
  sub_1D37307E8(v59, v45);
  sub_1D37261B4(&v45[*(v37 + 48)], v187, type metadata accessor for BlackPearlModel);
  sub_1D372A75C(v45);
  if (v61 == 4 || v61 == 2)
  {
    BlackPearlModel.loadModel()();
    BlackPearlModel.loadModel()();
  }

  v63 = *(v37 + 48);
  LOBYTE(v191) = 2;
  v64 = v181;
  sub_1D372EBEC(v181, (v181 + v63), v60, &v191, v53._countAndFlagsBits, object);
  sub_1D37307E8(v64, v45);
  v65 = *(v37 + 48);
  sub_1D37261B4(v45, v184, type metadata accessor for BlackPearlModel);
  sub_1D372A75C(&v45[v65]);
  sub_1D37307E8(v64, v45);
  sub_1D37261B4(&v45[*(v37 + 48)], v185, type metadata accessor for BlackPearlModel);
  sub_1D372A75C(v45);
  if ((v61 - 3) <= 1)
  {
    BlackPearlModel.loadModel()();
    BlackPearlModel.loadModel()();
  }

  v66 = sub_1D373794C();
  v179 = "splayName";
  v67 = sub_1D373794C();
  v68 = [v60 levelForFactor:v66 withNamespaceName:v67];

  if (!v68)
  {
    goto LABEL_43;
  }

  v69 = [v68 directoryValue];

  if (!v69)
  {
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
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v70 = [v69 path];

  if (!v70)
  {
    goto LABEL_43;
  }

  v157 = v47;
  v71 = sub_1D373797C();
  v73 = v72;

  *&v191 = 47;
  *(&v191 + 1) = 0xE100000000000000;
  v189 = v71;
  v190 = v73;
  v156 = v73;

  v189 = sub_1D3737AFC();
  v190 = v74;
  sub_1D3737A0C();
  v165 = 0x80000001D373B1C0;
  *&v191 = 0xD000000000000010;
  *(&v191 + 1) = 0x80000001D373B1C0;
  v189 = sub_1D3737AFC();
  v190 = v75;
  sub_1D3737A0C();
  *&v191 = 0x616B6361706C6D2ELL;
  *(&v191 + 1) = 0xEA00000000006567;
  v189 = sub_1D3737AFC();
  v190 = v76;
  sub_1D3737A0C();
  v77 = v190;
  v78 = v167;
  v79 = v167[7];
  v80 = v178;
  v81 = v177[7];
  v82 = v175;
  v81(&v175[v79], 1, 1, v178);
  v163 = v78[8];
  v83 = v165;
  *v82 = 0xD000000000000010;
  *(v82 + 1) = v83;
  v84 = v173;
  *(v82 + 2) = v174;
  *(v82 + 3) = v84;
  v85 = v78[6];

  v155 = v77;
  sub_1D37375FC();
  sub_1D37109E4(&v82[v79], &qword_1EC76D890, &qword_1D3739AD0);
  v81(&v82[v79], 1, 1, v80);
  *&v82[v163] = 0;
  v82[v78[9]] = 0;
  BlackPearlModel.loadModel()();
  v86 = v183;
  static BlackPearlTrialLevels.buildThresholds(trialClient:)(v183, &v191);
  static BlackPearlTrialLevels.buildBloomFilters(trialClient:)(v86, v176);
  v87 = sub_1D373794C();
  v88 = sub_1D373794C();
  v89 = [v86 levelForFactor:v87 withNamespaceName:v88];

  if (!v89)
  {
    goto LABEL_43;
  }

  v90 = [v89 fileValue];
  if (!v90)
  {
    goto LABEL_36;
  }

  v91 = v90;
  v92 = [v90 path];

  if (!v92)
  {
    goto LABEL_43;
  }

  sub_1D373797C();
  v94 = v93;

  v163 = v94;
  sub_1D37375FC();
  v95 = sub_1D373794C();
  v96 = sub_1D373794C();
  v97 = [v86 levelForFactor:v95 withNamespaceName:v96];

  if (!v97)
  {
    goto LABEL_43;
  }

  v98 = [v97 fileValue];
  if (!v98)
  {
    goto LABEL_37;
  }

  v99 = v98;
  v100 = [v98 path];

  if (!v100)
  {
    goto LABEL_43;
  }

  sub_1D373797C();
  v102 = v101;

  v154 = v102;
  sub_1D37375FC();
  v103 = sub_1D373794C();
  v104 = sub_1D373794C();
  v105 = [v86 levelForFactor:v103 withNamespaceName:v104];

  v167 = v105;
  if (!v105)
  {
    goto LABEL_43;
  }

  v106 = [v167 fileValue];
  if (!v106)
  {
    goto LABEL_38;
  }

  v107 = v106;
  v108 = [v106 path];

  if (!v108)
  {
    goto LABEL_43;
  }

  sub_1D373797C();
  v110 = v109;

  v153 = v110;
  sub_1D37375FC();
  v111 = sub_1D373794C();
  v112 = sub_1D373794C();
  v113 = [v86 levelForFactor:v111 withNamespaceName:v112];

  v165 = v113;
  if (!v113)
  {
    goto LABEL_43;
  }

  v114 = [v165 fileValue];
  if (!v114)
  {
    goto LABEL_39;
  }

  v115 = v114;
  v116 = [v114 path];

  if (!v116)
  {
    goto LABEL_43;
  }

  v152 = v97;
  sub_1D373797C();

  sub_1D37375FC();
  v117 = sub_1D373794C();
  v118 = sub_1D373794C();
  v119 = [v86 levelForFactor:v117 withNamespaceName:v118];

  if (!v119)
  {
    goto LABEL_43;
  }

  v120 = [v119 fileValue];
  if (!v120)
  {
    goto LABEL_40;
  }

  v121 = v120;
  v122 = [v120 path];

  if (!v122)
  {
    goto LABEL_43;
  }

  v151 = v89;
  sub_1D373797C();

  sub_1D37375FC();
  v123 = sub_1D373794C();
  v124 = sub_1D373794C();
  v125 = [v86 levelForFactor:v123 withNamespaceName:v124];

  if (!v125)
  {
    goto LABEL_43;
  }

  v126 = [v125 fileValue];
  if (!v126)
  {
    goto LABEL_41;
  }

  v127 = v126;
  v128 = [v126 path];

  if (!v128)
  {
    goto LABEL_43;
  }

  sub_1D373797C();

  sub_1D37375FC();
  v129 = sub_1D373794C();
  v130 = sub_1D373794C();
  v131 = [v86 levelForFactor:v129 withNamespaceName:v130];

  if (!v131)
  {
    goto LABEL_43;
  }

  v132 = [v131 fileValue];
  if (!v132)
  {
    goto LABEL_42;
  }

  v133 = v132;
  v134 = [v132 path];

  if (v134)
  {

    sub_1D373797C();

    v135 = v162 + *(type metadata accessor for BlackPearlTrialLevels() + 20);
    v136 = type metadata accessor for BlackPearlLevels();
    v137 = v135 + v136[20];
    sub_1D37375FC();

    sub_1D37109E4(v181, &qword_1EC76DA68, "fB");
    sub_1D37109E4(v180, &qword_1EC76DA68, "fB");
    sub_1D37109E4(v157, &qword_1EC76DA68, "fB");
    sub_1D37261B4(v164, v135, type metadata accessor for BlackPearlModel);
    sub_1D37261B4(v186, v135 + v136[5], type metadata accessor for BlackPearlModel);
    sub_1D37261B4(v184, v135 + v136[6], type metadata accessor for BlackPearlModel);
    sub_1D37261B4(v187, v135 + v136[9], type metadata accessor for BlackPearlModel);
    sub_1D37261B4(v185, v135 + v136[10], type metadata accessor for BlackPearlModel);
    sub_1D37261B4(v175, v135 + v136[7], type metadata accessor for BlackPearlModel);
    sub_1D37261B4(v182, v135 + v136[8], type metadata accessor for BlackPearlModel);
    v138 = v135 + v136[11];
    *v138 = v213;
    v139 = v173;
    *(v138 + 16) = v174;
    *(v138 + 24) = v139;
    v140 = v210;
    *(v138 + 96) = v209;
    *(v138 + 112) = v140;
    v141 = v212;
    *(v138 + 128) = v211;
    *(v138 + 144) = v141;
    v142 = v206;
    *(v138 + 32) = v205;
    *(v138 + 48) = v142;
    v143 = v208;
    *(v138 + 64) = v207;
    *(v138 + 80) = v143;
    v144 = v160;
    *(v138 + 160) = v161;
    *(v138 + 168) = v144;
    *(v138 + 176) = v159;
    *(v138 + 184) = v158;
    v145 = v135 + v136[12];
    v146 = v194;
    *(v145 + 32) = v193;
    *(v145 + 48) = v146;
    *(v145 + 64) = v195;
    *(v145 + 80) = v196;
    v147 = v192;
    *v145 = v191;
    *(v145 + 16) = v147;
    sub_1D37261B4(v176, v135 + v136[13], type metadata accessor for BloomFilterData);
    v148 = v178;
    v149 = v177[4];
    v149(v135 + v136[14], v172, v178);
    v149(v135 + v136[15], v171, v148);
    v149(v135 + v136[16], v170, v148);
    v149(v135 + v136[17], v169, v148);
    v149(v135 + v136[18], v168, v148);
    return (v149)(v135 + v136[19], v166, v148);
  }

LABEL_43:
  result = sub_1D3737CFC();
  __break(1u);
  return result;
}

uint64_t BlackPearlTrialLevels.getBlackPearlLevels()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BlackPearlTrialLevels() + 20);

  return sub_1D3723410(v3, a1);
}

uint64_t type metadata accessor for BlackPearlTrialLevels()
{
  result = qword_1EC76DA58;
  if (!qword_1EC76DA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NLPLevel.hashValue.getter()
{
  v1 = *v0;
  sub_1D3737E4C();
  MEMORY[0x1D38BC000](v1);
  return sub_1D3737E6C();
}

void static BlackPearlTrialLevels.buildVersion(trialClient:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D373794C();
  v5 = [a1 experimentIdentifiersWithNamespaceName_];

  v6 = sub_1D373794C();
  v80 = [a1 rolloutIdentifiersWithNamespaceName_];

  v7 = sub_1D373794C();
  v8 = sub_1D373794C();
  v9 = [a1 levelForFactor:v7 withNamespaceName:v8];

  if (!v9 || (v10 = [v9 stringValue], v9, !v10))
  {
    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v56 = sub_1D37378AC();
    __swift_project_value_buffer(v56, qword_1EC76DB60);
    v57 = sub_1D373788C();
    v58 = sub_1D3737BCC();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_44;
    }

    v59 = "Model version not found";
    goto LABEL_43;
  }

  v77 = sub_1D373797C();
  v78 = v11;

  v12 = sub_1D373794C();
  v13 = sub_1D373794C();
  v14 = [a1 levelForFactor:v12 withNamespaceName:v13];

  if (!v14 || (v15 = [v14 stringValue], v14, !v15))
  {

    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v60 = sub_1D37378AC();
    __swift_project_value_buffer(v60, qword_1EC76DB60);
    v57 = sub_1D373788C();
    v58 = sub_1D3737BCC();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_44;
    }

    v59 = "Sender Model Version not found";
    goto LABEL_43;
  }

  v75 = sub_1D373797C();
  v76 = v16;

  v17 = sub_1D373794C();
  v18 = sub_1D373794C();
  v19 = [a1 levelForFactor:v17 withNamespaceName:v18];

  if (!v19 || (v20 = [v19 stringValue], v19, !v20))
  {

    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v61 = sub_1D37378AC();
    __swift_project_value_buffer(v61, qword_1EC76DB60);
    v57 = sub_1D373788C();
    v58 = sub_1D3737BCC();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_44;
    }

    v59 = "TS Model Version not found";
    goto LABEL_43;
  }

  v73 = sub_1D373797C();
  v74 = v21;

  v22 = sub_1D373794C();
  v23 = sub_1D373794C();
  v24 = [a1 levelForFactor:v22 withNamespaceName:v23];

  if (!v24 || (v25 = [v24 stringValue], v24, !v25))
  {

    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v62 = sub_1D37378AC();
    __swift_project_value_buffer(v62, qword_1EC76DB60);
    v57 = sub_1D373788C();
    v58 = sub_1D3737BCC();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_44;
    }

    v59 = "Rule Version not found";
    goto LABEL_43;
  }

  v71 = sub_1D373797C();
  v72 = v26;

  v27 = sub_1D373794C();
  v28 = sub_1D373794C();
  v29 = [a1 levelForFactor:v27 withNamespaceName:v28];

  if (!v29 || (v30 = [v29 stringValue], v29, !v30))
  {

    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v63 = sub_1D37378AC();
    __swift_project_value_buffer(v63, qword_1EC76DB60);
    v57 = sub_1D373788C();
    v58 = sub_1D3737BCC();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_44;
    }

    v59 = "BreakThrough version not found";
    goto LABEL_43;
  }

  v69 = sub_1D373797C();
  v70 = v31;

  v32 = sub_1D373794C();
  v33 = sub_1D373794C();
  v34 = [a1 levelForFactor:v32 withNamespaceName:v33];

  if (v34)
  {
    v35 = [v34 stringValue];

    if (v35)
    {
      sub_1D373797C();

      v36 = v80;
      v79 = v5;
      if (v5)
      {
        v37 = [v5 experimentId];
        v38 = sub_1D373797C();
        v67 = v39;
        v68 = v38;

        v40 = [v5 treatmentId];
        v41 = v5;
        v5 = sub_1D373797C();
        v43 = v42;

        v44 = [v41 deploymentId];
        if (v80)
        {
LABEL_15:
          v45 = [v80 deploymentId];
          v46 = [v80 factorPackId];
          v47 = sub_1D373797C();
          v49 = v48;

          v50 = [v80 rolloutId];
          v51 = sub_1D373797C();
          v53 = v52;

          v36 = v80;
LABEL_18:
          *a2 = v77;
          *(a2 + 8) = v78;
          *(a2 + 16) = v75;
          *(a2 + 24) = v76;
          *(a2 + 32) = v73;
          *(a2 + 40) = v74;
          *(a2 + 48) = v71;
          *(a2 + 56) = v72;
          *(a2 + 64) = v69;
          *(a2 + 72) = v70;
          *(a2 + 96) = v5;
          *(a2 + 104) = v43;
          *(a2 + 80) = v68;
          *(a2 + 88) = v67;
          *(a2 + 112) = v44;
          *(a2 + 120) = v45;
          *(a2 + 128) = v47;
          *(a2 + 136) = v49;
          *(a2 + 144) = v51;
          *(a2 + 152) = v53;
          sub_1D3728084(&v81);

          v54 = v82;
          v55 = v83;
          *(a2 + 160) = v81;
          *(a2 + 176) = v54;
          *(a2 + 184) = v55;
          return;
        }
      }

      else
      {
        v43 = 0;
        v67 = 0;
        v68 = 0;
        v44 = -1;
        if (v80)
        {
          goto LABEL_15;
        }
      }

      v51 = 0;
      v53 = 0;
      v47 = 0;
      v49 = 0;
      v45 = -1;
      goto LABEL_18;
    }
  }

  if (qword_1EC76D838 != -1)
  {
    swift_once();
  }

  v64 = sub_1D37378AC();
  __swift_project_value_buffer(v64, qword_1EC76DB60);
  v57 = sub_1D373788C();
  v58 = sub_1D3737BCC();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = "Categorization version not found";
LABEL_43:
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_1D3703000, v57, v58, v59, v65, 2u);
    MEMORY[0x1D38BC7D0](v65, -1, -1);
  }

LABEL_44:

  sub_1D3723B3C();
  swift_allocError();
  *v66 = 1;
  swift_willThrow();

  sub_1D3737CCC();
  MEMORY[0x1D38BBBD0](0xD000000000000028, 0x80000001D373BAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76D8A0, &qword_1D3739400);
  sub_1D3737CEC();
  sub_1D3737CFC();
  __break(1u);
}

uint64_t sub_1D372EBEC(unint64_t *a1, unint64_t *a2, void *a3, char *a4, unint64_t a5, unint64_t a6)
{
  v11 = *a4;
  type metadata accessor for TrialLoader();
  LOBYTE(v39) = v11;
  static TrialLoader.getModelFactors(forLanguageModel:)(&v39, v41);
  v36 = v41[2];
  v37 = v41[3];

  v12 = sub_1D373794C();

  v13 = sub_1D373794C();
  v14 = [a3 levelForFactor:v12 withNamespaceName:v13];

  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = [v14 directoryValue];

  if (!v15)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = [v15 path];

  if (!v16)
  {
    goto LABEL_10;
  }

  v34 = a5;
  v35 = a2;
  v33 = a6;
  sub_1D373797C();

  v39 = 47;
  v40 = 0xE100000000000000;

  sub_1D3737AFC();
  sub_1D3737A0C();
  v39 = v36;
  v40 = v37;
  sub_1D3737AFC();
  sub_1D3737A0C();
  v39 = 0x616B6361706C6D2ELL;
  v40 = 0xEA00000000006567;
  sub_1D3737AFC();
  sub_1D3737A0C();
  v17 = v41[6];
  v18 = v41[7];

  v19 = sub_1D373794C();

  v20 = sub_1D373794C();
  v21 = [a3 levelForFactor:v19 withNamespaceName:v20];

  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = [v21 directoryValue];

  if (!v22)
  {
    goto LABEL_9;
  }

  v23 = [v22 path];

  if (v23)
  {

    sub_1D373797C();

    v39 = 47;
    v40 = 0xE100000000000000;
    sub_1D3737AFC();
    sub_1D3737A0C();
    v39 = v17;
    v40 = v18;
    sub_1D3737AFC();
    sub_1D3737A0C();
    v39 = 0x616B6361706C6D2ELL;
    v40 = 0xEA00000000006567;
    sub_1D3737AFC();
    sub_1D3737A0C();
    v24 = type metadata accessor for BlackPearlModel(0);
    v25 = v24[7];
    v26 = sub_1D373767C();
    v27 = *(*(v26 - 8) + 56);
    v27(a1 + v25, 1, 1, v26);
    v32 = v24[8];
    *a1 = v36;
    a1[1] = v37;
    a1[2] = a5;
    a1[3] = v33;
    v28 = v24[6];

    sub_1D37375FC();

    sub_1D37109E4(a1 + v25, &qword_1EC76D890, &qword_1D3739AD0);
    v27(a1 + v25, 1, 1, v26);
    *(a1 + v32) = 0;
    *(a1 + v24[9]) = 0;
    v29 = v24[7];
    v27(v35 + v29, 1, 1, v26);
    v38 = v24[8];
    *v35 = v17;
    v35[1] = v18;
    v35[2] = v34;
    v35[3] = v33;
    v30 = v24[6];

    sub_1D37375FC();
    sub_1D37239BC(v41);

    sub_1D37109E4(v35 + v29, &qword_1EC76D890, &qword_1D3739AD0);
    result = (v27)(v35 + v29, 1, 1, v26);
    *(v35 + v38) = 0;
    *(v35 + v24[9]) = 0;
    return result;
  }

LABEL_10:
  result = sub_1D3737CFC();
  __break(1u);
  return result;
}

void static BlackPearlTrialLevels.buildThresholds(trialClient:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D373794C();
  v5 = sub_1D373794C();
  v6 = [a1 levelForFactor:v4 withNamespaceName:v5];

  if (!v6)
  {
    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v62 = sub_1D37378AC();
    __swift_project_value_buffer(v62, qword_1EC76DB60);
    v63 = sub_1D373788C();
    v64 = sub_1D3737BCC();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "Threshold Commerce not found";
    goto LABEL_57;
  }

  [v6 doubleValue];
  v8 = v7;

  v9 = sub_1D373794C();
  v10 = sub_1D373794C();
  v11 = [a1 levelForFactor:v9 withNamespaceName:v10];

  if (!v11)
  {
    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v66 = sub_1D37378AC();
    __swift_project_value_buffer(v66, qword_1EC76DB60);
    v63 = sub_1D373788C();
    v64 = sub_1D3737BCC();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "ThresholdEmployeeNews value not found";
    goto LABEL_57;
  }

  [v11 doubleValue];
  v13 = v12;

  v14 = sub_1D373794C();
  v15 = sub_1D373794C();
  v16 = [a1 levelForFactor:v14 withNamespaceName:v15];

  if (!v16)
  {
    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v67 = sub_1D37378AC();
    __swift_project_value_buffer(v67, qword_1EC76DB60);
    v63 = sub_1D373788C();
    v64 = sub_1D3737BCC();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "ThresholdEmployee value not found";
    goto LABEL_57;
  }

  [v16 doubleValue];
  v18 = v17;

  v19 = sub_1D373794C();
  v20 = sub_1D373794C();
  v21 = [a1 levelForFactor:v19 withNamespaceName:v20];

  if (!v21)
  {
    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v68 = sub_1D37378AC();
    __swift_project_value_buffer(v68, qword_1EC76DB60);
    v63 = sub_1D373788C();
    v64 = sub_1D3737BCC();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "ThresholdPersonal value not found";
    goto LABEL_57;
  }

  [v21 doubleValue];
  v23 = v22;

  v24 = sub_1D373794C();
  v25 = sub_1D373794C();
  v26 = [a1 levelForFactor:v24 withNamespaceName:v25];

  if (!v26)
  {
    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v69 = sub_1D37378AC();
    __swift_project_value_buffer(v69, qword_1EC76DB60);
    v63 = sub_1D373788C();
    v64 = sub_1D3737BCC();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "ThresholdP2C values ";
    goto LABEL_57;
  }

  [v26 doubleValue];
  v28 = v27;

  v29 = sub_1D373794C();
  v30 = sub_1D373794C();
  v31 = [a1 levelForFactor:v29 withNamespaceName:v30];

  if (!v31)
  {
    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v70 = sub_1D37378AC();
    __swift_project_value_buffer(v70, qword_1EC76DB60);
    v63 = sub_1D373788C();
    v64 = sub_1D3737BCC();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "ThresholdCorpEmployee not found";
    goto LABEL_57;
  }

  [v31 doubleValue];
  v33 = v32;

  v34 = sub_1D373794C();
  v35 = sub_1D373794C();
  v36 = [a1 levelForFactor:v34 withNamespaceName:v35];

  if (!v36)
  {
    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v71 = sub_1D37378AC();
    __swift_project_value_buffer(v71, qword_1EC76DB60);
    v63 = sub_1D373788C();
    v64 = sub_1D3737BCC();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "Threshold Sender is not found";
    goto LABEL_57;
  }

  v78 = v33;
  v37 = v28;
  v38 = v23;
  v39 = v18;
  v40 = v13;
  [v36 doubleValue];
  v42 = v41;

  v43 = sub_1D373794C();
  v44 = sub_1D373794C();
  v45 = [a1 levelForFactor:v43 withNamespaceName:v44];

  if (!v45)
  {
    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v72 = sub_1D37378AC();
    __swift_project_value_buffer(v72, qword_1EC76DB60);
    v63 = sub_1D373788C();
    v64 = sub_1D3737BCC();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "Threshold TS is not found";
    goto LABEL_57;
  }

  v46 = v8;
  [v45 doubleValue];
  v48 = v47;

  v49 = sub_1D373794C();
  v50 = sub_1D373794C();
  v51 = [a1 levelForFactor:v49 withNamespaceName:v50];

  if (!v51)
  {
    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v73 = sub_1D37378AC();
    __swift_project_value_buffer(v73, qword_1EC76DB60);
    v63 = sub_1D373788C();
    v64 = sub_1D3737BCC();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "Threshold Category TS is not found";
    goto LABEL_57;
  }

  [v51 doubleValue];
  v53 = v52;

  v54 = sub_1D373794C();
  v55 = sub_1D373794C();
  v56 = [a1 levelForFactor:v54 withNamespaceName:v55];

  if (!v56)
  {
    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v74 = sub_1D37378AC();
    __swift_project_value_buffer(v74, qword_1EC76DB60);
    v63 = sub_1D373788C();
    v64 = sub_1D3737BCC();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "Sender Max Tokens is not found";
    goto LABEL_57;
  }

  v57 = [v56 longValue];

  v58 = sub_1D373794C();
  v59 = sub_1D373794C();
  v60 = [a1 levelForFactor:v58 withNamespaceName:v59];

  if (v60)
  {
    v61 = [v60 longValue];

    *a2 = v46;
    a2[1] = v40;
    a2[2] = v39;
    a2[3] = v38;
    a2[4] = v37;
    a2[5] = v42;
    a2[6] = v48;
    a2[7] = v53;
    a2[8] = v78;
    a2[9] = v57;
    a2[10] = v61;
    return;
  }

  if (qword_1EC76D838 != -1)
  {
    swift_once();
  }

  v75 = sub_1D37378AC();
  __swift_project_value_buffer(v75, qword_1EC76DB60);
  v63 = sub_1D373788C();
  v64 = sub_1D3737BCC();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = "Subject Max Tokens is not found";
LABEL_57:
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_1D3703000, v63, v64, v65, v76, 2u);
    MEMORY[0x1D38BC7D0](v76, -1, -1);
  }

LABEL_58:

  sub_1D3723B3C();
  swift_allocError();
  *v77 = 1;
  swift_willThrow();
  sub_1D3737CCC();
  MEMORY[0x1D38BBBD0](0xD000000000000026, 0x80000001D373BB10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76D8A0, &qword_1D3739400);
  sub_1D3737CEC();
  sub_1D3737CFC();
  __break(1u);
}

uint64_t static BlackPearlTrialLevels.buildBloomFilters(trialClient:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D373767C();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v47 - v8;
  v9 = sub_1D373794C();
  v10 = sub_1D373794C();
  v11 = [a1 levelForFactor:v9 withNamespaceName:v10];

  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = [v11 fileValue];

  if (!v12)
  {
    __break(1u);
    goto LABEL_12;
  }

  v13 = [v12 path];

  if (!v13)
  {
LABEL_14:
    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v29 = sub_1D37378AC();
    __swift_project_value_buffer(v29, qword_1EC76DB60);
    v30 = sub_1D373788C();
    v31 = sub_1D3737BCC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D3703000, v30, v31, "Commerce Bloom filter file is missing", v32, 2u);
      MEMORY[0x1D38BC7D0](v32, -1, -1);
    }

    sub_1D3723B3C();
    v33 = swift_allocError();
    *v34 = 1;
    swift_willThrow();
    goto LABEL_30;
  }

  sub_1D373797C();

  sub_1D37375FC();
  v14 = sub_1D373794C();
  v15 = sub_1D373794C();
  v16 = [a1 levelForFactor:v14 withNamespaceName:v15];

  if (!v16)
  {
LABEL_19:

    if (qword_1EC76D838 != -1)
    {
      swift_once();
    }

    v35 = sub_1D37378AC();
    __swift_project_value_buffer(v35, qword_1EC76DB60);
    v36 = sub_1D373788C();
    v37 = sub_1D3737BCC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D3703000, v36, v37, "Guaranteed list file is missing", v38, 2u);
      MEMORY[0x1D38BC7D0](v38, -1, -1);
    }

    sub_1D3723B3C();
    v33 = swift_allocError();
    *v39 = 1;
    swift_willThrow();
    (*(v47 + 8))(v50, v48);
    goto LABEL_30;
  }

  v17 = [v16 fileValue];

  if (!v17)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = [v17 path];

  if (!v18)
  {
    goto LABEL_19;
  }

  sub_1D373797C();

  sub_1D37375FC();
  v19 = sub_1D373794C();
  v20 = sub_1D373794C();
  v21 = [a1 levelForFactor:v19 withNamespaceName:v20];

  if (v21)
  {
    v22 = [v21 fileValue];

    if (v22)
    {

      v23 = [v22 path];

      if (v23)
      {
        sub_1D373797C();

        v24 = type metadata accessor for BloomFilterData(0);
        v25 = a2 + *(v24 + 24);
        sub_1D37375FC();

        v26 = v48;
        v27 = *(v47 + 32);
        v27(a2, v50, v48);
        return (v27)(a2 + *(v24 + 20), v49, v26);
      }

      goto LABEL_25;
    }

    goto LABEL_13;
  }

LABEL_25:
  if (qword_1EC76D838 != -1)
  {
    swift_once();
  }

  v40 = sub_1D37378AC();
  __swift_project_value_buffer(v40, qword_1EC76DB60);
  v41 = sub_1D373788C();
  v42 = sub_1D3737BCC();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1D3703000, v41, v42, "NER bloom filer file path not found", v43, 2u);
    MEMORY[0x1D38BC7D0](v43, -1, -1);
  }

  sub_1D3723B3C();
  v33 = swift_allocError();
  *v44 = 1;
  swift_willThrow();
  v45 = v48;
  v46 = *(v47 + 8);
  v46(v49, v48);
  v46(v50, v45);
LABEL_30:
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1D3737CCC();
  MEMORY[0x1D38BBBD0](0xD00000000000002DLL, 0x80000001D373BB40);
  v51 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76D8A0, &qword_1D3739400);
  sub_1D3737CEC();
  result = sub_1D3737CFC();
  __break(1u);
  return result;
}

void __swiftcall BlackPearlTrialLevels.getThresholds()(icloudMCCKit::BlackPearlThreshold *__return_ptr retstr)
{
  v3 = v1 + *(type metadata accessor for BlackPearlTrialLevels() + 20);
  v4 = v3 + *(type metadata accessor for BlackPearlLevels() + 48);
  v5 = *(v4 + 48);
  *&retstr->thresholdP2C = *(v4 + 32);
  *&retstr->thresholdTS = v5;
  *&retstr->thresholdCorpEmployee = *(v4 + 64);
  retstr->tsSubjectMaxTokens = *(v4 + 80);
  v6 = *(v4 + 16);
  *&retstr->thresholdCommerce = *v4;
  *&retstr->thresholdEmployee = v6;
}

unint64_t sub_1D3730598()
{
  result = qword_1EC76DA50;
  if (!qword_1EC76DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DA50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLPLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NLPLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D3730764()
{
  result = type metadata accessor for BlackPearlSharedDefaults();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BlackPearlLevels();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D37307E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76DA68, "fB");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

icloudMCCKit::LanguageModel_optional __swiftcall LanguageModel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D3737D2C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t LanguageModel.rawValue.getter()
{
  v1 = 0x6873696C676E65;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x726F707075536E75;
  }

  if (*v0)
  {
    v1 = 0x6E6974616CLL;
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

uint64_t sub_1D3730950()
{
  v1 = *v0;
  sub_1D3737E4C();
  sub_1D37379CC();

  return sub_1D3737E6C();
}

uint64_t sub_1D3730A1C()
{
  *v0;
  *v0;
  *v0;
  sub_1D37379CC();
}

uint64_t sub_1D3730AD4()
{
  v1 = *v0;
  sub_1D3737E4C();
  sub_1D37379CC();

  return sub_1D3737E6C();
}

void sub_1D3730BA8(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6873696C676E65;
  v4 = 0x80000001D373AEE0;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x726F707075536E75;
    v4 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v3 = 0x6E6974616CLL;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id sub_1D3730C40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76DA98, &unk_1D373A2E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D373A120;
  v1 = *MEMORY[0x1E6977758];
  v2 = *MEMORY[0x1E6977860];
  *(v0 + 32) = *MEMORY[0x1E6977758];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E6977820];
  v4 = *MEMORY[0x1E69777A8];
  *(v0 + 48) = *MEMORY[0x1E6977820];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E6977768];
  v6 = *MEMORY[0x1E69778C0];
  *(v0 + 64) = *MEMORY[0x1E6977768];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E69778A0];
  v8 = *MEMORY[0x1E6977740];
  *(v0 + 80) = *MEMORY[0x1E69778A0];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E6977868];
  v10 = *MEMORY[0x1E6977808];
  *(v0 + 96) = *MEMORY[0x1E6977868];
  *(v0 + 104) = v10;
  v22 = *MEMORY[0x1E6977738];
  *(v0 + 112) = *MEMORY[0x1E6977738];
  qword_1EC76DA70 = v0;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;

  return v22;
}

id sub_1D3730DB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76DA98, &unk_1D373A2E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D373A130;
  v1 = *MEMORY[0x1E69777B0];
  v2 = *MEMORY[0x1E6977848];
  *(v0 + 32) = *MEMORY[0x1E69777B0];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E6977890];
  v9 = *MEMORY[0x1E69777D0];
  v4 = *MEMORY[0x1E69777D0];
  *(v0 + 48) = *MEMORY[0x1E6977890];
  *(v0 + 56) = v4;
  qword_1EC76DA78 = v0;
  v5 = v1;
  v6 = v2;
  v7 = v3;

  return v9;
}

uint64_t sub_1D3730E90(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_1D3730EF0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6977A58]) init];
  v1 = sub_1D373794C();
  [v0 processString_];

  result = sub_1D3737C0C();
  v3 = result;
  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v10 = *MEMORY[0x1E6977748];
  while (v8)
  {
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (v4 << 9) | (8 * v12);
    v14 = *(*(v3 + 48) + v13);
    v15 = *(*(v3 + 56) + v13);
    v16 = sub_1D373797C();
    v18 = v17;
    if (v16 == sub_1D373797C() && v18 == v19)
    {
    }

    else
    {
      v21 = sub_1D3737DEC();

      if ((v21 & 1) == 0 && v15 > 0.95)
      {

        return 0;
      }
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return 1;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      v4 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id sub_1D37310B8(char *a1, uint64_t a2, uint64_t a3)
{
  v55 = a1;
  v6 = sub_1D37374DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = [objc_allocWithZone(MEMORY[0x1E6977A58]) init];
  sub_1D373256C();
  v11 = sub_1D3731680(a2, a3);
  v13 = sub_1D3732208(v11, v12);
  v15 = v14;

  v16 = MEMORY[0x1D38BBC40](v13, v15);
  v17 = *(v3 + 120);
  v18 = sub_1D373794C();
  v19 = sub_1D373794C();
  v20 = [v17 stringByReplacingMatchesInString:v18 options:0 range:0 withTemplate:{v16, v19}];

  v21 = sub_1D373797C();
  v23 = v22;

  v57[0] = v21;
  v57[1] = v23;
  sub_1D37374CC();
  sub_1D3724FF8();
  sub_1D3737C3C();

  (*(v7 + 8))(v10, v6);

  if (sub_1D37379DC() >= 4)
  {

    if (qword_1EC76D830 != -1)
    {
LABEL_36:
      swift_once();
    }

    type metadata accessor for NLLanguage(0);
    v26 = sub_1D3737B2C();
    v25 = v56;
    [v56 setLanguageConstraints_];

    v24 = sub_1D373794C();
  }

  else
  {

    v24 = sub_1D373794C();
    v25 = v56;
  }

  [v25 processString_];

  v27 = sub_1D3737C0C();
  [v25 reset];
  v28 = 0;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v27 + 64);
  v32 = (v29 + 63) >> 6;
  do
  {
    if (!v31)
    {
      while (1)
      {
        v33 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v33 >= v32)
        {

          *v55 = 0;
          v44 = *MEMORY[0x1E6977748];

          return v44;
        }

        v31 = *(v27 + 64 + 8 * v33);
        ++v28;
        if (v31)
        {
          v28 = v33;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    v33 = v28;
LABEL_14:
    v34 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v35 = v34 | (v33 << 6);
    v36 = *(*(v27 + 56) + 8 * v35);
  }

  while (v36 <= 0.0);
  v37 = *(*(v27 + 48) + 8 * v35);
  v38 = qword_1EC76D828;
  v39 = v37;
  v40 = v39;
  if (v38 != -1)
  {
    v39 = swift_once();
  }

  v57[0] = v40;
  MEMORY[0x1EEE9AC00](v39);
  *(&v54 - 2) = v57;
  v42 = sub_1D3710C24(sub_1D3710CCC, (&v54 - 4), v41);
  if (v42)
  {

    v43 = 1;
LABEL_25:
    *v55 = v43;
    return v40;
  }

  if (qword_1EC76D830 != -1)
  {
    v42 = swift_once();
  }

  v57[0] = v40;
  MEMORY[0x1EEE9AC00](v42);
  *(&v54 - 2) = v57;
  if (sub_1D3710C24(sub_1D3710CEC, (&v54 - 4), v46))
  {

    v43 = 2;
    goto LABEL_25;
  }

  v47 = *MEMORY[0x1E6977748];
  v48 = sub_1D373797C();
  v50 = v49;
  if (v48 == sub_1D373797C() && v50 == v51)
  {
  }

  else
  {
    v53 = sub_1D3737DEC();

    if (v36 >= 0.95 && (v53 & 1) == 0)
    {

      v43 = 3;
      goto LABEL_25;
    }
  }

  *v55 = 0;
  v44 = v47;

  return v44;
}

uint64_t sub_1D3731680(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = sub_1D373794C();
  v7 = MEMORY[0x1D38BBC40](a1, a2);
  v8 = sub_1D373794C();
  v9 = [v5 stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{v7, v8}];

  sub_1D373797C();
  v10 = sub_1D3724FF8();
  v11 = MEMORY[0x1E69E6158];
  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  sub_1D3737C4C();

  v42 = v10;
  v43 = v10;
  v40 = v11;
  v41 = v10;
  v12 = sub_1D3737C4C();
  v14 = v13;

  v15 = v44[4];
  v16 = sub_1D373794C();
  v17 = MEMORY[0x1D38BBC40](v12, v14);

  v18 = sub_1D373794C();
  v19 = [v15 stringByReplacingMatchesInString:v16 options:0 range:0 withTemplate:{v17, v18, v40, v41, v42, v43}];

  v20 = v19;
  if (!v19)
  {
    sub_1D373797C();
    v20 = sub_1D373794C();
  }

  v21 = sub_1D373797C();
  v22 = v44[5];
  v23 = MEMORY[0x1D38BBC40](v21);

  v24 = sub_1D373794C();
  v25 = [v22 stringByReplacingMatchesInString:v20 options:0 range:0 withTemplate:{v23, v24}];

  v26 = v25;
  if (!v25)
  {
    sub_1D373797C();
    v26 = sub_1D373794C();
  }

  v27 = sub_1D373797C();
  v28 = v44[6];
  v29 = MEMORY[0x1D38BBC40](v27);

  v30 = sub_1D373794C();
  v31 = [v28 stringByReplacingMatchesInString:v26 options:0 range:0 withTemplate:{v29, v30}];

  v32 = v31;
  if (!v31)
  {
    sub_1D373797C();
    v32 = sub_1D373794C();
  }

  v33 = sub_1D373797C();
  v34 = v44[8];
  v35 = MEMORY[0x1D38BBC40](v33);

  v36 = sub_1D373794C();
  v37 = [v34 stringByReplacingMatchesInString:v32 options:0 range:0 withTemplate:{v35, v36}];

  v38 = sub_1D373797C();
  return v38;
}

uint64_t sub_1D3732208(uint64_t a1, uint64_t a2)
{
  v5 = v2[9];
  v6 = sub_1D373794C();
  v7 = MEMORY[0x1D38BBC40](a1, a2);
  v8 = sub_1D373794C();
  v9 = [v5 stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{v7, v8}];

  v10 = v9;
  if (!v9)
  {
    sub_1D373797C();
    v10 = sub_1D373794C();
  }

  v11 = sub_1D373797C();
  v12 = v2[10];
  v13 = MEMORY[0x1D38BBC40](v11);

  v14 = sub_1D373794C();
  v15 = [v12 stringByReplacingMatchesInString:v10 options:0 range:0 withTemplate:{v13, v14}];

  v16 = v15;
  if (!v15)
  {
    sub_1D373797C();
    v16 = sub_1D373794C();
  }

  v17 = sub_1D373797C();
  v18 = v2[11];
  v19 = MEMORY[0x1D38BBC40](v17);

  v20 = sub_1D373794C();
  v21 = [v18 stringByReplacingMatchesInString:v16 options:0 range:0 withTemplate:{v19, v20}];

  v22 = v21;
  if (!v21)
  {
    sub_1D373797C();
    v22 = sub_1D373794C();
  }

  v23 = sub_1D373797C();
  v24 = v2[12];
  v25 = MEMORY[0x1D38BBC40](v23);

  v26 = sub_1D373794C();
  v27 = [v24 stringByReplacingMatchesInString:v22 options:0 range:0 withTemplate:{v25, v26}];

  v28 = v27;
  if (!v27)
  {
    sub_1D373797C();
    v28 = sub_1D373794C();
  }

  v29 = sub_1D373797C();
  v30 = v2[13];
  v31 = MEMORY[0x1D38BBC40](v29);

  v32 = sub_1D373794C();
  v33 = [v30 stringByReplacingMatchesInString:v28 options:0 range:0 withTemplate:{v31, v32}];

  v34 = v33;
  if (!v33)
  {
    sub_1D373797C();
    v34 = sub_1D373794C();
  }

  v35 = sub_1D373797C();
  v36 = v2[14];
  v37 = MEMORY[0x1D38BBC40](v35);

  v38 = sub_1D373794C();
  v39 = [v36 stringByReplacingMatchesInString:v34 options:0 range:0 withTemplate:{v37, v38}];

  v40 = sub_1D373797C();
  return v40;
}

uint64_t sub_1D373256C()
{

  v1 = sub_1D3737A3C();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    do
    {
      if (sub_1D3732998(v3, v4, v0))
      {
        MEMORY[0x1D38BBBC0](v3, v4);
      }

      v3 = sub_1D3737A3C();
      v4 = v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t LanguageDetection.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t LanguageDetection.__deallocating_deinit()
{
  LanguageDetection.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1D3732708()
{
  result = qword_1EC76DA80;
  if (!qword_1EC76DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DA80);
  }

  return result;
}

unint64_t sub_1D3732760()
{
  result = qword_1EC76DA88;
  if (!qword_1EC76DA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC76DA90, &qword_1D373A1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DA88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LanguageModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LanguageModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D3732998(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = a2 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v12 = sub_1D3737CBC();
      goto LABEL_16;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v20[0] = a1;
      v20[1] = v8;
      v11 = v20 + v7;
    }

    else
    {
      v10 = v9;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v10 = sub_1D3737CDC();
      }

      v11 = (v10 + v7);
    }

    v12 = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
LABEL_15:
      v13 = 1;
      goto LABEL_16;
    }

    v18 = (__clz(v12 ^ 0xFF) - 24);
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
        v13 = 3;
      }

      else
      {
        v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
        v13 = 4;
      }
    }

    else
    {
      if (v18 == 1)
      {
        goto LABEL_15;
      }

      v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
      v13 = 2;
    }

LABEL_16:
    v14 = *(a3 + 16);
    v15 = *(v14 + 16);
    if (v15)
    {
      break;
    }

LABEL_6:
    v7 += v13;
    if (v7 >= v3)
    {
      return 0;
    }
  }

  v16 = (v14 + 36);
  while (v12 < *(v16 - 1) || *v16 < v12)
  {
    v16 += 2;
    if (!--v15)
    {
      goto LABEL_6;
    }
  }

  return 1;
}

uint64_t sub_1D3732B40()
{
  v0 = sub_1D37378AC();
  __swift_allocate_value_buffer(v0, qword_1EC76DB60);
  __swift_project_value_buffer(v0, qword_1EC76DB60);

  return sub_1D373789C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id static AssetProtection.readObfuscatedContents(fileURL:fallback:)(uint64_t a1, int a2)
{
  v30 = a2;
  v4 = sub_1D37378FC();
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D373792C();
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D373767C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11);
  v16 = [objc_opt_self() defaultManager];
  sub_1D373764C();
  v17 = sub_1D373794C();

  v18 = [v16 fileExistsAtPath_];

  if (v18)
  {
    v19 = sub_1D373768C();
    if (!v2)
    {
      v21 = v19;
      v22 = v20;
      sub_1D3712810(v19, v20);
      sub_1D3710F44(v21, v22);
      v31 = sub_1D37112A0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76DAB8, &qword_1D373A480);
      sub_1D3733188();
      sub_1D37378EC();
      v16 = sub_1D373790C();
      sub_1D3733080(v21, v22);
      (*(v27 + 8))(v29, v28);
      (*(v25 + 8))(v10, v26);
    }
  }

  else if (v30)
  {
    v23 = sub_1D373768C();
    if (!v2)
    {
      v16 = v23;
    }
  }

  else
  {
    sub_1D373302C();
    swift_allocError();
    swift_willThrow();
  }

  (*(v12 + 8))(v15, v11);
  return v16;
}

unint64_t sub_1D373302C()
{
  result = qword_1EC76DAB0;
  if (!qword_1EC76DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DAB0);
  }

  return result;
}

uint64_t sub_1D3733080(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D37330DC()
{
  sub_1D3737E4C();
  MEMORY[0x1D38BC000](0);
  return sub_1D3737E6C();
}

uint64_t sub_1D3733148()
{
  sub_1D3737E4C();
  MEMORY[0x1D38BC000](0);
  return sub_1D3737E6C();
}

unint64_t sub_1D3733188()
{
  result = qword_1EDEF49E0;
  if (!qword_1EDEF49E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC76DAB8, &qword_1D373A480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF49E0);
  }

  return result;
}

unint64_t sub_1D373321C()
{
  result = qword_1EC76DAC0;
  if (!qword_1EC76DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DAC0);
  }

  return result;
}

unint64_t sub_1D3733270()
{
  result = qword_1EC76DAC8;
  if (!qword_1EC76DAC8)
  {
    sub_1D37378DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DAC8);
  }

  return result;
}

uint64_t sub_1D37332C8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D3733380(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D373752C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D37374EC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D373769C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D3733404()
{
  type metadata accessor for DomainHelper();
  swift_allocObject();
  result = sub_1D3733538();
  qword_1EDEF4C00 = result;
  return result;
}

uint64_t static DomainHelper.sharedInstance.getter()
{
  if (qword_1EDEF4BF8 != -1)
  {
    swift_once();
  }
}

uint64_t DomainHelper.__allocating_init(domainMap:personalDomains:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1D3733520(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t DomainHelper.init(domainMap:personalDomains:)(__int128 *a1, uint64_t a2)
{
  sub_1D3733520(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t sub_1D3733520(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D3733538()
{
  v1 = v0;
  v2 = sub_1D373767C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() clientWithIdentifier_];
  v7 = sub_1D373794C();
  v8 = sub_1D373794C();
  v9 = [v6 levelForFactor:v7 withNamespaceName:v8];

  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = [v9 fileValue];
  if (!v10)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 path];

  if (!v12)
  {
    goto LABEL_10;
  }

  sub_1D373797C();

  v13 = sub_1D373794C();
  v14 = sub_1D373794C();
  v15 = [v6 levelForFactor:v13 withNamespaceName:v14];

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = [v15 fileValue];
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = v16;
  v18 = [v16 path];

  if (v18)
  {
    sub_1D373797C();

    sub_1D37375FC();

    v19 = type metadata accessor for DomainMapDataFrame();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = DomainMapDataFrame.init(withFileAtPath:)(v5);
    v1[5] = v19;
    v1[6] = &protocol witness table for DomainMapDataFrame;
    v1[2] = v22;
    sub_1D37375FC();

    v23 = *(v19 + 48);
    v24 = *(v19 + 52);
    swift_allocObject();
    v25 = DomainMapDataFrame.init(withFileAtPath:)(v5);

    v1[7] = v25;
    return v1;
  }

LABEL_10:
  result = sub_1D3737CFC();
  __break(1u);
  return result;
}

uint64_t sub_1D3733894()
{
  v1 = sub_1D3724FF8();
  result = MEMORY[0x1D38BBE10](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v1);
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    while (*(v3 + 16) >= v4)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76DAD0, &qword_1D373A408);
      sub_1D3733A28();
      sub_1D3733A8C();
      v6 = sub_1D3737B1C();
      v8 = v7;

      v10 = v0[5];
      v9 = v0[6];
      __swift_project_boxed_opaque_existential_0(v0 + 2, v10);
      v11 = (*(v9 + 16))(v6, v8, v10, v9);
      if ((v12 & 1) == 0)
      {
        v13 = v11;

        return v13;
      }

      ++v5;

      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

unint64_t sub_1D3733A28()
{
  result = qword_1EDEF49D8;
  if (!qword_1EDEF49D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC76DAD0, &qword_1D373A408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF49D8);
  }

  return result;
}

unint64_t sub_1D3733A8C()
{
  result = qword_1EDEF49F0;
  if (!qword_1EDEF49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF49F0);
  }

  return result;
}

uint64_t sub_1D3733AE0()
{
  v0 = sub_1D3733894();

  return v0;
}

uint64_t sub_1D3733B30(uint64_t a1, unint64_t a2)
{
  sub_1D3734490(a1, a2);
  sub_1D3733894();
  v3 = v2;

  return v3;
}

unint64_t sub_1D3733B7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1D3737AEC() != a1 || v9 != a2)
  {
    v10 = sub_1D3737DEC();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1D37379EC();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1D3733C6C(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return -1;
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return -1;
  }

  sub_1D3734490(a1, a2);
  v3 = sub_1D3733894();

  return v3;
}

uint64_t sub_1D3733CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4 || (sub_1D3737DEC() & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    sub_1D3733894();
    v6 = v5;
    v8 = v7;
    sub_1D3733894();
    if (v6 == v10 && v8 == v9)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1D3737DEC();
    }
  }

  return v4 & 1;
}

uint64_t sub_1D3733DB0()
{
  sub_1D3733894();
  v0 = sub_1D3724FF8();
  v1 = MEMORY[0x1D38BBE10](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v0);

  v2 = *(v1 + 16);
  if (v2 >= 2)
  {
    v4 = v1 + 32 * v2;
    v5 = *(v4 - 32);
    v6 = *(v4 - 24);
    v7 = *(v4 - 16);
    v8 = *(v4 - 8);

    v9 = MEMORY[0x1D38BBB50](v5, v6, v7, v8);

    return v9;
  }

  else
  {

    return 0;
  }
}

void *sub_1D3733E8C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1D37374DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D3734490(a1, a2);
  v13 = v12;
  v57 = a1;
  v58 = a2;
  v14 = sub_1D3724FF8();
  result = MEMORY[0x1D38BBE10](64, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v14);
  if (!result[2])
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v47 = v10;
  v48 = v7;
  v49 = v6;
  v16 = result[4];
  v17 = result[5];
  v18 = result[6];
  v19 = result[7];

  v50 = MEMORY[0x1D38BBB50](v16, v17, v18, v19);
  v21 = v20;

  v51 = v11;
  v57 = v11;
  v58 = v13;
  result = MEMORY[0x1D38BBE10](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v14);
  v22 = result;
  v23 = result[2];
  if (v23)
  {
    v44 = v21;
    v45 = v13;
    v46 = v14;
    v24 = 0;
    v52 = result + 4;
    while (v22[2] >= v23)
    {
      v57 = v22;
      v58 = v52;
      v59 = v24;
      v60 = (2 * v23) | 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76DAD0, &qword_1D373A408);
      sub_1D3733A28();
      sub_1D3733A8C();
      v25 = sub_1D3737B1C();
      v27 = v26;

      v29 = v3[5];
      v28 = v3[6];
      __swift_project_boxed_opaque_existential_0(v3 + 2, v29);
      (*(v28 + 16))(v25, v27, v29, v28);
      if ((v30 & 1) == 0)
      {
        goto LABEL_8;
      }

      ++v24;

      if (v23 == v24)
      {
        v25 = 0;
        v27 = 0xE000000000000000;
LABEL_8:
        v13 = v45;
        v21 = v44;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v25 = 0;
  v27 = 0xE000000000000000;
LABEL_10:

  v31 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v31 = v25 & 0xFFFFFFFFFFFFLL;
  }

  v32 = v51;
  if (v31)
  {
    v57 = v50;
    v58 = v21;

    MEMORY[0x1D38BBBD0](32, 0xE100000000000000);

    v34 = v57;
    v33 = v58;
    v57 = v32;
    v58 = v13;
    v55 = v25;
    v56 = v27;
    v53 = 0;
    v54 = 0xE000000000000000;
    v35 = sub_1D3737C4C();
    v37 = v36;

    v57 = v35;
    v58 = v37;
    v55 = 46;
    v56 = 0xE100000000000000;
    v53 = 32;
    v54 = 0xE100000000000000;
    v38 = sub_1D3737C4C();
    v40 = v39;

    v57 = v34;
    v58 = v33;

    MEMORY[0x1D38BBBD0](v38, v40);

    v41 = v47;
    sub_1D37374CC();
    v42 = sub_1D3737C3C();
    (*(v48 + 8))(v41, v49);
  }

  else
  {

    return v50;
  }

  return v42;
}

uint64_t sub_1D37342D0()
{
  v0 = sub_1D3733894();

  return sub_1D3727028(v0);
}

uint64_t sub_1D3734310(uint64_t a1, unint64_t a2)
{
  sub_1D3734490(a1, a2);
  v2 = sub_1D3733894();

  return sub_1D3727028(v2);
}

uint64_t sub_1D373436C(uint64_t a1, unint64_t a2)
{
  sub_1D3734490(a1, a2);
  v3 = sub_1D373798C();
  v5 = v4;

  v6 = *(v2 + 56);
  v7 = sub_1D37348CC(v3, v5);
  LODWORD(v6) = v8;

  return (v7 > 0) & ~v6;
}

uint64_t sub_1D37343D8()
{
  v1 = sub_1D373798C();
  v2 = *(v0 + 56);
  v4 = sub_1D37348CC(v1, v3);
  v6 = v5;

  return (v4 > 0) & ~v6;
}

uint64_t DomainHelper.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t DomainHelper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

unint64_t sub_1D3734490(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (sub_1D3724FF8(), (sub_1D3737C5C() & 1) == 0) || (sub_1D3733B7C(64, 0xE100000000000000, v3, a2), (v5 & 1) != 0))
  {

    return v3;
  }

  result = sub_1D37379FC();
  if (4 * v4 >= result >> 14)
  {
    v7 = sub_1D3737B0C();
    v3 = MEMORY[0x1D38BBB50](v7);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t DomainMapDataFrame.__allocating_init(withFileAtPath:)(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DomainMapDataFrame.init(withFileAtPath:)(a1);
  return v5;
}

unint64_t sub_1D3734874()
{
  result = qword_1EC76D8A8;
  if (!qword_1EC76D8A8)
  {
    sub_1D373767C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76D8A8);
  }

  return result;
}

uint64_t sub_1D37348CC(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76DAD8, &unk_1D373A470);
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v24 - v6;
  v7 = sub_1D37377FC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76DAE8, &qword_1D373A490);
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = OBJC_IVAR____TtC12icloudMCCKit18DomainMapDataFrame_dataframe;
  swift_beginAccess();
  v17 = v8[2];
  v24 = v2;
  v17(v11, v2 + v16, v7);
  sub_1D373780C();
  v18 = v8[1];
  v18(v11, v7);
  v19 = sub_1D3735214(v15, a1, v28);
  if (v20)
  {
    (*(v29 + 8))(v15, v30);
  }

  else
  {
    v17(v11, v24 + v16, v7);
    v21 = v25;
    sub_1D373780C();
    v18(v11, v7);
    v22 = v27;
    sub_1D373786C();
    (*(v26 + 8))(v21, v22);
    (*(v29 + 8))(v15, v30);
    return v31;
  }

  return v19;
}

uint64_t DomainMapDataFrame.deinit()
{
  v1 = OBJC_IVAR____TtC12icloudMCCKit18DomainMapDataFrame_dataframe;
  v2 = sub_1D37377FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DomainMapDataFrame.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12icloudMCCKit18DomainMapDataFrame_dataframe;
  v2 = sub_1D37377FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1D3734D18@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for DomainMapDataFrame();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  result = DomainMapDataFrame.init(withFileAtPath:)(a1);
  *a2 = v7;
  return result;
}

unint64_t sub_1D3734D90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D3737E4C();
  sub_1D37379CC();
  v6 = sub_1D3737E6C();

  return sub_1D3734E08(a1, a2, v6);
}

unint64_t sub_1D3734E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D3737DEC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1D3734EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76D920, &qword_1D3739800);
    v3 = sub_1D3737C9C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1D3737E4C();

      sub_1D37379CC();
      result = sub_1D3737E6C();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        while (1)
        {
          v18 = (*(v3 + 48) + 16 * v13);
          if (*v18 == v9 && v18[1] == v8)
          {
            break;
          }

          result = sub_1D3737DEC();
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        *(v5 + 8 * v14) = v16 | v15;
        v20 = (*(v3 + 48) + 16 * v13);
        *v20 = v9;
        v20[1] = v8;
        v21 = *(v3 + 16);
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v23;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1D3735038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76DAF0, &qword_1D373A4E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76DAF8, &unk_1D373A4F0);
    v8 = sub_1D3737D0C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D3735594(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1D3734D90(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1D373787C();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D3735214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76DAE8, &qword_1D373A490);
  v5 = sub_1D373785C();
  v6 = 0;
LABEL_2:
  v7 = v5;
  while (v6 < v7)
  {
    if (__OFSUB__(v7, v6))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v5 = v6 + (v7 - v6) / 2;
    if (__OFADD__(v6, (v7 - v6) / 2))
    {
      goto LABEL_22;
    }

    sub_1D373786C();
    if (!v15)
    {
      if (qword_1EC76D838 == -1)
      {
LABEL_16:
        v9 = sub_1D37378AC();
        __swift_project_value_buffer(v9, qword_1EC76DB60);
        v10 = sub_1D373788C();
        v11 = sub_1D3737BCC();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_1D3703000, v10, v11, "Index out of bound, returning nil", v12, 2u);
          MEMORY[0x1D38BC7D0](v12, -1, -1);
        }

        return 0;
      }

LABEL_23:
      swift_once();
      goto LABEL_16;
    }

    if (v14 == a2 && v15 == a3 || (sub_1D3737DEC() & 1) != 0)
    {
      goto LABEL_14;
    }

    v8 = sub_1D3737DEC();

    if ((v8 & 1) == 0)
    {
      goto LABEL_2;
    }

    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:

      return v5;
    }
  }

  return 0;
}

uint64_t type metadata accessor for DomainMapDataFrame()
{
  result = qword_1EDEF4AC8;
  if (!qword_1EDEF4AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D3735450()
{
  result = sub_1D37377FC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D3735594(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76DAF0, &qword_1D373A4E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3735604()
{
  if (qword_1EDEF4BF8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D3733894();

  return sub_1D3727028(v0);
}

id DomainHelperInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DomainHelperInterface.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DomainHelperInterface();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DomainHelperInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DomainHelperInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t CertType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D37358B0()
{
  result = qword_1EC76DB00;
  if (!qword_1EC76DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DB00);
  }

  return result;
}

uint64_t sub_1D3735904()
{
  v1 = *v0;
  sub_1D3737E4C();
  MEMORY[0x1D38BC000](v1);
  return sub_1D3737E6C();
}

uint64_t sub_1D3735978()
{
  v1 = *v0;
  sub_1D3737E4C();
  MEMORY[0x1D38BC000](v1);
  return sub_1D3737E6C();
}

uint64_t *sub_1D37359BC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_1D3735A08()
{
  result = qword_1EC76DB08;
  if (!qword_1EC76DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DB08);
  }

  return result;
}

unint64_t sub_1D3735A7C()
{
  result = qword_1EC76DB10;
  if (!qword_1EC76DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76DB10);
  }

  return result;
}

id sub_1D3735D1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudAccountManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D3735DC8(uint64_t a1, id a2)
{
  v3 = [objc_opt_self() defaultStore];
  v4 = v3;
  if (v3 && (v5 = v3, v6 = sub_1D373794C(), a2 = [v5 aa:v6 appleAccountWithUsername:?], v6, v5, a2))
  {
  }

  else
  {
    sub_1D3735A08();
    swift_allocError();
    swift_willThrow();
  }

  return a2;
}

uint64_t static LocaleHelper.isCategorizationSupported(forLocale:)()
{
  v0 = sub_1D373777C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D37376EC();
  v5 = sub_1D37051AC(v4);
  v6 = qword_1EDEF4C60;
  v7 = v5;
  v8 = v7;
  if (v6 != -1)
  {
    v7 = swift_once();
  }

  v13 = v8;
  MEMORY[0x1EEE9AC00](v7);
  *(&v12 - 2) = &v13;
  v10 = sub_1D3710C24(sub_1D3710CCC, (&v12 - 4), v9);
  (*(v1 + 8))(v4, v0);

  return v10 & 1;
}

uint64_t sub_1D3736084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76DB40, qword_1D373A788);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static LanguageDetectionHelper.isCategorizationSupported(for:)()
{
  v0 = sub_1D373777C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D37376EC();
  v5 = sub_1D37051AC(v4);
  v6 = qword_1EDEF4C60;
  v7 = v5;
  v8 = v7;
  if (v6 != -1)
  {
    v7 = swift_once();
  }

  v13 = v8;
  MEMORY[0x1EEE9AC00](v7);
  *(&v12 - 2) = &v13;
  v10 = sub_1D3710C24(sub_1D3710CCC, (&v12 - 4), v9);
  (*(v1 + 8))(v4, v0);

  return v10 & 1;
}

id LanguageDetectionHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LanguageDetectionHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageDetectionHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LanguageDetectionHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageDetectionHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}