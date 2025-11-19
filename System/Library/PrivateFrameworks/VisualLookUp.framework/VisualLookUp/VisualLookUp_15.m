uint64_t sub_1D9ABF260@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 40);
  if (!v5 || (v6 = *(v3 + 96), v40 = *(v3 + 24), v7 = *(v3 + 64), v42 = *(v3 + 48), v43 = v7, v44 = *(v3 + 80), v41 = v5, v45 = v6, v8 = *(v3 + 120), v46 = *(v3 + 104), v47 = v8, (v9 = *(v3 + 176)) == 0))
  {
    sub_1D99A182C();
    swift_allocError();
    *v16 = 0xD00000000000001CLL;
    *(v16 + 8) = 0x80000001D9CA8F80;
    *(v16 + 16) = 5;
    return swift_willThrow();
  }

  v13 = *(v3 + 168);

  v14 = sub_1D9C19E28();
  if (v4)
  {
  }

  v50 = v14;
  if (!*(v3 + 136))
  {

    memset(v34, 0, sizeof(v34));
    sub_1D99A6AE0(v34, &qword_1ECB52FA0);
LABEL_12:
    sub_1D99A182C();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    swift_willThrow();
  }

  sub_1D9C1947C(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38);
  type metadata accessor for E5Model();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_12;
  }

  v33 = v37[0];
  v17 = *(*&a1 + 24);
  v30 = *(*&a1 + 32);
  __swift_project_boxed_opaque_existential_1(*&a1, v17);
  sub_1D9B7DE80(v17, v30, v37);
  sub_1D9B7E0E0(*(*&a1 + 80));
  v31 = type metadata accessor for E5Request();
  v19 = swift_allocObject();
  *(v19 + 16) = v33;
  *(v19 + 24) = v6;
  *(v19 + 32) = *(v33 + OBJC_IVAR____TtC12VisualLookUp7E5Model_preferredMetalDevice);
  *(v19 + 40) = faiss::NormalizationTransform::~NormalizationTransform;
  *(v19 + 48) = 0;
  *(v19 + 88) = 0;
  v20 = qword_1EDD349F0;

  swift_unknownObjectRetain();
  if (v20 != -1)
  {
    swift_once();
  }

  *(v19 + 96) = qword_1EDD41F40;
  *(v19 + 104) = a2;
  *(v19 + 56) = *(*&a1 + 40);
  *(v19 + 72) = *(*&a1 + 56);
  v21 = v39;
  v28 = v38;
  v27 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52410);
  v22 = v19;
  inited = swift_initStackObject();
  *(inited + 32) = v22;
  *(inited + 16) = xmmword_1D9C85660;
  *(inited + 56) = v31;
  *(inited + 64) = &off_1F552E2B0;
  v24 = *(v21 + 8);

  v24(inited, v28, v27);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm(inited + 32);
  v48[0] = 0x65447463656A626FLL;
  v48[1] = 0xEF6E6F6974636574;
  v48[2] = "ObjectDetector Model Postprocess Results";
  v48[3] = 40;
  v49 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  sub_1D9AFD4B8(v48, a2);

  v36[3] = v31;
  v36[4] = &off_1F552E2B0;
  v36[0] = v22;

  sub_1D9AED8B8(a1, v36, &v40, v50, v34);
  v25 = *v34;
  v29 = *&v34[24];
  v32 = *&v34[8];
  v26 = v35;
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  sub_1D9AFCCA4();

  result = __swift_destroy_boxed_opaque_existential_0Tm(v37);
  *a3 = v13;
  *(a3 + 8) = v9;
  *(a3 + 16) = v25;
  *(a3 + 40) = v29;
  *(a3 + 24) = v32;
  *(a3 + 56) = v26;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9ABF7E0(uint64_t *a1, void *a2, uint64_t a3)
{
  v53 = a3;
  v70 = sub_1D9C7D8DC();
  v56 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v55 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7B80C();
  v54 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v51 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = v46 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v52 = v46 - v12;
  v13 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v46 - v17;
  v19 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v20 = sub_1D9A93E64(0);
  if (v20)
  {
    v22 = v20;
    v23 = v21;
    v47 = v19;
    v48 = v7;
    v46[1] = v3;
    ObjectType = swift_getObjectType();
    v25 = *(v23 + 8);
    v25(ObjectType, v23);
    sub_1D9B24AE8(&v57);
    sub_1D9ABFE2C(v18, type metadata accessor for MLModelInfo);
    v65 = v59;
    v66 = v60;
    v67 = v61;
    v68 = v62;
    v69 = v63;
    v64[0] = v57;
    v64[1] = v58;
    if (v58)
    {
      v46[0] = *(&v65 + 1);
      v26 = v65;
      v49 = v22;
      v25(ObjectType, v23);
      v27 = *&v15[*(v13 + 36)];

      sub_1D9ABFE2C(v15, type metadata accessor for MLModelInfo);
      if (*(v27 + 16))
      {
        v28 = sub_1D99EE004(1);
        if (v29)
        {
          v30 = v54;
          v31 = *(v54 + 16);
          v32 = v50;
          v33 = v48;
          v31(v50, *(v27 + 56) + *(v54 + 72) * v28, v48);

          v34 = v52;
          (*(v30 + 32))(v52, v32, v33);
          v35 = v51;
          v31(v51, v34, v33);
          *&v57 = v47;
          type metadata accessor for ObjectOntology();
          swift_allocObject();
          v36 = v46[0];

          v37 = v53;

          v38 = sub_1D9A72C6C(v35, v26, v36, v37, &v57);
          sub_1D99A6AE0(v64, &qword_1ECB52FA8);
          if (v38)
          {
            (*(v30 + 8))(v34, v33);
            swift_unknownObjectRelease();
          }

          else
          {
            v38 = 0x80000001D9CA8FC0;
            sub_1D99A182C();
            swift_allocError();
            *v45 = 0xD000000000000016;
            *(v45 + 8) = 0x80000001D9CA8FC0;
            *(v45 + 16) = 5;
            swift_willThrow();
            swift_unknownObjectRelease();
            (*(v30 + 8))(v34, v33);
          }

          return v38;
        }
      }

      sub_1D99A6AE0(v64, &qword_1ECB52FA8);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v39 = v55;
  static Logger.argos.getter(v55);
  v40 = sub_1D9C7D8BC();
  v41 = sub_1D9C7E0AC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1D9962000, v40, v41, "missing VIModel mapping file", v42, 2u);
    MEMORY[0x1DA7405F0](v42, -1, -1);
  }

  (*(v56 + 8))(v39, v70);
  v38 = 0x80000001D9CA8FA0;
  sub_1D99A182C();
  swift_allocError();
  *v43 = 0xD00000000000001CLL;
  *(v43 + 8) = 0x80000001D9CA8FA0;
  *(v43 + 16) = 5;
  swift_willThrow();
  return v38;
}

uint64_t sub_1D9ABFE2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9ABFE8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v35 = a3;
  v52 = a4;
  v9 = type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 16);
  v13 = (v12 + OBJC_IVAR____TtC12VisualLookUp19DomainModelRegistry_domainModelConfig);

  v14 = sub_1D9AFE290();
  if (v14 == 9 || (v15 = v14, sub_1D9AC02A8(v13, v11), sub_1D9B58154(&v36), sub_1D9AC030C(v11), v16 = v36, v36 == 27))
  {
    *&v36 = 0;
    *(&v36 + 1) = 0xE000000000000000;
    sub_1D9C7E40C();

    *&v36 = 0xD00000000000001FLL;
    *(&v36 + 1) = 0x80000001D9CA9020;
    v18 = *v13;
    v17 = v13[1];

    MEMORY[0x1DA73DF90](v18, v17);

    v19 = v36;
    sub_1D99A182C();
    swift_allocError();
    *v20 = v19;
    *(v20 + 16) = 2;
    return swift_willThrow();
  }

  v22 = *(v12 + 16);
  if (*(v22 + 16))
  {

    v23 = sub_1D99EE2D4(v15);
    if (v24)
    {
      v25 = *(*(v22 + 56) + 8 * v23);

      if (v25)
      {
        sub_1D99A17C8(a1, &v36);
        v26 = a1[6];
        v27 = a1[7];
        v28 = a1[8];
        v29 = a1[9];
        v30 = a1[10];
        v38 = a1[5];
        v39 = v26;
        v40 = v27;
        v41 = v28;
        v42 = v38;
        v43 = v26;
        v44 = v27;
        v45 = v28;
        v46 = v16;
        v47 = 1;
        v48 = v29;
        v49 = vdupq_n_s64(3uLL);
        v50 = v30;
        v31 = swift_allocObject();
        v31[2] = v6;
        v31[3] = a2;
        v31[4] = v35;
        v32 = *(*v25 + 80);

        swift_unknownObjectRetain();
        v32(v51, &v36, sub_1D9AC03D8, v31);
        sub_1D99BAEFC(&v36);
        if (v5)
        {
        }

        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  memset(v51, 0, 40);
LABEL_12:
  sub_1D9AC0368(v51, &v36);
  if (v37)
  {
    sub_1D99BB294(v51);

    return sub_1D99BB604(&v36, v52);
  }

  else
  {
    if (qword_1EDD2B8C8 != -1)
    {
      swift_once();
    }

    v33 = qword_1EDD417A8;
    v34 = v52;
    v52[3] = &type metadata for BatchModelRequest;
    v34[4] = &off_1F55354D0;

    *v34 = v33;
    result = sub_1D99BB294(v51);
    if (v37)
    {
      return sub_1D99BB294(&v36);
    }
  }

  return result;
}

uint64_t sub_1D9AC02A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9AC030C(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9AC0368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9AC03D8(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = *(a1 + 32);
  v7 = v3;
  return sub_1D9AC0418(v6, v2);
}

uint64_t sub_1D9AC0418(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, void))
{
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 48) == 1)
  {
    return (a2)(*a1, 0, 0, 1, v7);
  }

  v11 = *(a1 + 32);
  if (v11[2] == 1)
  {
    v13 = v11[4];
    v12 = v11[5];
    v14 = v11[6];
    v24 = v12;
    v25 = v14;
    swift_bridgeObjectRetain_n();

    MEMORY[0x1DA73DF90](0x707265676E69662DLL, 0xEC000000746E6972);

    a2(v13, v24, v25, 0);
  }

  else
  {
    v22 = *a1;
    v23 = v6;
    v15 = *(a1 + 8);
    v16 = *(a1 + 16);
    v17 = *(a1 + 24);
    v18 = *(a1 + 40);
    static Logger.argos.getter(v9);

    v19 = sub_1D9C7D8BC();
    v20 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v11[2];
      sub_1D99A1B04(v22, v15, v16, v17, v11, v18, 0);
      _os_log_impl(&dword_1D9962000, v19, v20, "Unexpected number of outputs for fingerprint model: %ld", v21, 0xCu);
      MEMORY[0x1DA7405F0](v21, -1, -1);
    }

    else
    {
      sub_1D99A1B04(v22, v15, v16, v17, v11, v18, 0);
    }

    return (*(v5 + 8))(v9, v23);
  }
}

uint64_t sub_1D9AC06C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9AC0708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9AC076C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D9C7D8DC();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  v12 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v36 = type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapperConfig(0);
  MEMORY[0x1EEE9AC00](v36);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultManager];
  v34 = a1;
  v16 = sub_1D9C7DC4C();
  v17 = [v15 contentsAtPath_];

  if (v17)
  {
    v32[0] = v8;
    v32[1] = v6;
    v33 = a3;
    v18 = sub_1D9C7B87C();
    v20 = v19;

    v25 = sub_1D9B88EB8(v18, v20);
    v27 = v26;
    sub_1D99A5748(v18, v20);

    v28 = Data.inflate(algorithm:)(0, v25, v27);
    v30 = v29;
    sub_1D99A5748(v25, v27);
    v39 = v28;
    v40 = v30;
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    sub_1D99AF2FC(v28, v30);
    sub_1D9C7D43C();
    sub_1D9AC2034();
    sub_1D9C7D67C();
    sub_1D99A5748(v28, v30);
    return sub_1D9AC208C(v14, v33);
  }

  else
  {

    static Logger.argos.getter(v11);

    v21 = sub_1D9C7D8BC();
    v22 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v37[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1D9A0E224(v34, a2, v37);
      _os_log_impl(&dword_1D9962000, v21, v22, "Failed to load rich label kg mapper at path %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x1DA7405F0](v24, -1, -1);
      MEMORY[0x1DA7405F0](v23, -1, -1);
    }

    (*(v35 + 8))(v11, v6);
    *a3 = MEMORY[0x1E69E7CC0];
    return sub_1D9C7D3BC();
  }
}

uint64_t sub_1D9AC0CF8(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v59 = sub_1D9C7D8DC();
  v6 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v56 = a1;
  sub_1D9AC1908(a1, a2);
  if (v19 && (ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), v21 = [objc_opt_self() bundleForClass_], v22 = sub_1D9C7DC4C(), v55 = v5, v23 = v22, , v24 = sub_1D9C7DC4C(), v25 = sub_1D9C7DC4C(), v26 = objc_msgSend(v21, sel_pathForResource_ofType_inDirectory_, v23, v24, v25), v21, v23, v24, v25, v26))
  {

    v27 = sub_1D9C7DC7C();
    v29 = v28;

    static Logger.argos.getter(v18);

    v30 = sub_1D9C7D8BC();
    v31 = sub_1D9C7E09C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v61 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1D9A0E224(v27, v29, &v61);
      _os_log_impl(&dword_1D9962000, v30, v31, "RichLabelMapper [init]: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x1DA7405F0](v33, -1, -1);
      MEMORY[0x1DA7405F0](v32, -1, -1);
    }

    v34 = *(v6 + 8);
    v35 = v59;
    v34(v18, v59);
    v36 = swift_allocObject();
    v36[2] = v27;
    v36[3] = v29;
    v36[4] = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FB0);
    swift_allocObject();
    v37 = sub_1D9C1B65C(4, sub_1D9AC1C60, v36);
    v38 = v60;
    *(v60 + 16) = v37;
    v39 = v57;
    static Logger.argos.getter(v57);
    v40 = v58;
    sub_1D9A3E0E0(v58);
    v34(v39, v35);
    v41 = sub_1D9C7D8BC();
    v42 = sub_1D9C7E09C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1D9962000, v41, v42, "RichLabelMapper [init]: loaded file", v43, 2u);
      MEMORY[0x1DA7405F0](v43, -1, -1);
    }

    v34(v40, v35);
  }

  else
  {
    static Logger.argos.getter(v11);
    sub_1D9A3E0E0(v8);
    v44 = *(v6 + 8);
    v45 = v11;
    v46 = v59;
    v44(v45, v59);

    v47 = sub_1D9C7D8BC();
    v48 = sub_1D9C7E09C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v61 = v50;
      *v49 = 136315138;
      v51 = sub_1D9A0E224(v56, a2, &v61);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_1D9962000, v47, v48, "RichLabelMapper does not support locale: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x1DA7405F0](v50, -1, -1);
      MEMORY[0x1DA7405F0](v49, -1, -1);
    }

    else
    {
    }

    v44(v8, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FB0);
    swift_allocObject();
    v52 = sub_1D9C1B65C(4, sub_1D9AC12EC, 0);
    v38 = v60;
    *(v60 + 16) = v52;
  }

  return v38;
}

void *sub_1D9AC12EC@<X0>(void *a1@<X8>)
{
  result = sub_1D9A46AEC(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

unint64_t sub_1D9AC14C4()
{
  sub_1D9C7DCFC();
  sub_1D99A57F8();
  v0 = sub_1D9C7E2FC();

  if ((v0 & 1) == 0)
  {
    sub_1D9C7DCFC();
    sub_1D9C7E2FC();
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_1D9AC15CC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - v11;
  if (a2)
  {

    static Logger.argos.getter(v12);
    sub_1D9A3E0E0(v9);
    v13 = *(v7 + 8);
    v13(v12, v6);

    v14 = sub_1D9C7D8BC();
    v15 = sub_1D9C7E09C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v32[1] = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v33 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1D9A0E224(a1, a2, &v33);
      _os_log_impl(&dword_1D9962000, v14, v15, "RichLabelMapper [convertKnowledgeIdToLabel]: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x1DA7405F0](v18, -1, -1);
      MEMORY[0x1DA7405F0](v17, -1, -1);
    }

    v13(v9, v6);
    v19 = sub_1D9B14820(1uLL, a1, a2);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    if ((v19 ^ v21) >> 14)
    {
      v26 = sub_1D9B140F8(v19, v21, v23, v25, 10);
      if ((v26 & 0x10000000000) != 0)
      {
        v26 = sub_1D99C6548(v19, v21, v23, v25, 10);
      }

      v27 = v26;

      if ((v27 & 0x100000000) != 0)
      {
        return 0;
      }

      v28 = sub_1D9C19C14();

      if (*(v28 + 16))
      {
        v29 = sub_1D99EE164(v27);
        if (v30)
        {
          a1 = *(*(v28 + 56) + 16 * v29);

          return a1;
        }
      }
    }

    return 0;
  }

  return a1;
}

uint64_t sub_1D9AC1908(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9C8CDA0;
  *(inited + 32) = 28261;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = sub_1D9AC1324;
  *(inited + 56) = 0;
  *(inited + 64) = 29541;
  *(inited + 72) = 0xE200000000000000;
  *(inited + 80) = sub_1D9AC1344;
  *(inited + 88) = 0;
  *(inited + 96) = 29801;
  *(inited + 104) = 0xE200000000000000;
  *(inited + 112) = sub_1D9AC1364;
  *(inited + 120) = 0;
  *(inited + 128) = 29286;
  *(inited + 136) = 0xE200000000000000;
  *(inited + 144) = sub_1D9AC1384;
  *(inited + 152) = 0;
  *(inited + 160) = 25956;
  *(inited + 168) = 0xE200000000000000;
  *(inited + 176) = sub_1D9AC13A4;
  *(inited + 184) = 0;
  *(inited + 192) = 24938;
  *(inited + 200) = 0xE200000000000000;
  *(inited + 208) = sub_1D9AC13C4;
  *(inited + 216) = 0;
  *(inited + 224) = 29281;
  *(inited + 232) = 0xE200000000000000;
  *(inited + 240) = sub_1D9AC13E4;
  *(inited + 248) = 0;
  *(inited + 256) = 28523;
  *(inited + 264) = 0xE200000000000000;
  *(inited + 272) = sub_1D9AC1404;
  *(inited + 280) = 0;
  *(inited + 288) = 27758;
  *(inited + 296) = 0xE200000000000000;
  *(inited + 304) = sub_1D9AC1424;
  *(inited + 312) = 0;
  *(inited + 320) = 29808;
  *(inited + 328) = 0xE200000000000000;
  *(inited + 336) = sub_1D9AC1444;
  *(inited + 344) = 0;
  *(inited + 352) = 26740;
  *(inited + 360) = 0xE200000000000000;
  *(inited + 368) = sub_1D9AC1464;
  *(inited + 376) = 0;
  *(inited + 384) = 29300;
  *(inited + 392) = 0xE200000000000000;
  *(inited + 400) = sub_1D9AC1484;
  *(inited + 408) = 0;
  *(inited + 416) = 30073;
  *(inited + 424) = 0xE200000000000000;
  *(inited + 432) = sub_1D9AC14A4;
  *(inited + 440) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D9AC20F0;
  *(v6 + 24) = v5;
  *(inited + 448) = 26746;
  *(inited + 456) = 0xE200000000000000;
  *(inited + 464) = sub_1D9AC20F8;
  *(inited + 472) = v6;

  v7 = sub_1D9A462D0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FC0);
  swift_arrayDestroy();

  v8 = sub_1D9B0906C(2);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x1DA73DF10](v8, v10, v12, v14);
  v17 = v16;

  if (*(v7 + 16))
  {
    v18 = sub_1D99ED894(v15, v17);
    v20 = v19;

    if (v20)
    {
      v21 = *(*(v7 + 56) + 16 * v18);

      v21(&v24, v22);

      return v24;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1D9AC1C60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9AC1C94(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_1D9AC1C94(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapperConfig(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1D9A46AEC(MEMORY[0x1E69E7CC0]);
  sub_1D9AC076C(a1, a2, v10);
  v33 = v10;
  v12 = *v10;
  v35 = *(*v10 + 16);
  if (!v35)
  {
LABEL_16:
    sub_1D9AC1FD4(v33, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapperConfig);
    return v11;
  }

  v13 = 0;
  v34 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  while (v13 < *(v12 + 16))
  {
    v15 = v5;
    sub_1D9AC1F70(v34 + *(v5 + 72) * v13, v7);
    v16 = *v7;
    v17 = *(v7 + 1);
    v18 = *(v7 + 2);

    sub_1D9AC1FD4(v7, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v11;
    v20 = sub_1D99EE164(v16);
    v22 = v11[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_18;
    }

    v26 = v21;
    if (v11[3] < v25)
    {
      sub_1D9C0C038(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1D99EE164(v16);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      v11 = v36;
      if (v26)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v31 = v20;
    sub_1D9C155CC();
    v20 = v31;
    v11 = v36;
    if (v26)
    {
LABEL_3:
      v14 = (v11[7] + 16 * v20);
      *v14 = v17;
      v14[1] = v18;

      goto LABEL_4;
    }

LABEL_12:
    v11[(v20 >> 6) + 8] |= 1 << v20;
    *(v11[6] + 4 * v20) = v16;
    v28 = (v11[7] + 16 * v20);
    *v28 = v17;
    v28[1] = v18;
    v29 = v11[2];
    v24 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v24)
    {
      goto LABEL_19;
    }

    v11[2] = v30;
LABEL_4:
    ++v13;
    v5 = v15;
    if (v35 == v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

uint64_t sub_1D9AC1F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9AC1FD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D9AC2034()
{
  result = qword_1EDD2AC90[0];
  if (!qword_1EDD2AC90[0])
  {
    type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapperConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD2AC90);
  }

  return result;
}

uint64_t sub_1D9AC208C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapperConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9AC20F8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D9AC2128(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D9B1A774(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D9C7E79C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
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

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D9AC34F8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_1D9AC2260(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  result = v3;
LABEL_2:
  v6 = result;
  while (1)
  {
    if (v2 >= v6)
    {
      return ~v6;
    }

    if (__OFSUB__(v6, v2))
    {
      break;
    }

    result = v2 + (v6 - v2) / 2;
    if (__OFADD__(v2, (v6 - v2) / 2))
    {
      goto LABEL_15;
    }

    if (result >= v3)
    {
      goto LABEL_16;
    }

    v7 = *(v4 + 8 * result);
    if (v7 == a2)
    {
      return result;
    }

    if (v7 >= a2)
    {
      goto LABEL_2;
    }

    v2 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return ~v6;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall S2CellUnion.normalize()()
{
  v1 = sub_1D9AFAA28(0, *(*v0 + 2), 0, MEMORY[0x1E69E7CC0]);
  LOBYTE(v2) = sub_1D9AC2128(v0);
  v3 = *v0;
  v4 = *(*v0 + 2);
  if (!v4)
  {
LABEL_46:

    LOBYTE(v2) = 0;
    return v2;
  }

  for (i = 0; i != v4; ++i)
  {
    if (i >= *(v3 + 2))
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      return v2;
    }

    v7 = *&v3[8 * i + 32];
    v8 = *(v1 + 2);
    if (!v8)
    {
      goto LABEL_3;
    }

    v9 = &v1[8 * v8];
    v10 = *(v9 + 3);
    if (__OFSUB__(0, v10))
    {
      goto LABEL_52;
    }

    v11 = -v10 & v10;
    v12 = __OFSUB__(v11, 1);
    v13 = v11 - 1;
    if (v12)
    {
      goto LABEL_53;
    }

    if (__OFSUB__(v10, v13))
    {
      goto LABEL_54;
    }

    if (v7 < v10 - v13)
    {
      goto LABEL_15;
    }

    v12 = __OFADD__(v10, v13);
    v14 = v10 + v13;
    if (v12)
    {
      goto LABEL_58;
    }

    if (v7 > v14)
    {
LABEL_15:
      if (__OFSUB__(0, v7))
      {
        goto LABEL_55;
      }

      v15 = -v7 & v7;
      v16 = v15 - 1;
      if (__OFSUB__(v15, 1))
      {
        goto LABEL_56;
      }

      v17 = v7 - v16;
      if (__OFSUB__(v7, v16))
      {
        goto LABEL_57;
      }

      v12 = __OFADD__(v7, v16);
      v18 = v7 + v16;
      v19 = v12;
      v20 = v9 + 16;
      while (1)
      {
        v21 = *&v1[8 * v8 + 24];
        if (v21 < v17)
        {
          break;
        }

        if (v19)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if (v21 > v18)
        {
          break;
        }

        --v20;
        *(v1 + 2) = --v8;
        if (!v8)
        {
          goto LABEL_3;
        }
      }

      if (v8 >= 3)
      {
        do
        {
          v22 = *(v20 - 1);
          v23 = v20[1];
          if ((*v20 ^ v22 ^ v23) != v7)
          {
            break;
          }

          v24 = -v7;
          if (__OFSUB__(0, v7))
          {
            goto LABEL_48;
          }

          v25 = v24 & v7;
          v26 = 4 * (v24 & v7);
          v12 = __OFADD__(v26, 2 * v25);
          v27 = v26 + 2 * v25;
          if (v12)
          {
            goto LABEL_49;
          }

          v28 = v7 & ~v27;
          v29 = v23 & ~v27;
          v30 = (v22 & ~v27) == v28 && (*v20 & ~v27) == v28;
          v31 = v30 && v29 == v28;
          if (!v31 || (v7 & 0xFFFFFFFFFFFFFFFLL) == 0)
          {
            break;
          }

          v8 -= 3;
          *(v1 + 2) = v8;
          if (__OFSUB__(0, v26))
          {
            goto LABEL_50;
          }

          v20 -= 3;
          v7 = -v26 & v7 | v26;
        }

        while (v8 > 2);
      }

LABEL_3:
      v6 = *(v1 + 3);
      if (v8 >= v6 >> 1)
      {
        v2 = sub_1D9AFAA28((v6 > 1), v8 + 1, 1, v1);
        v1 = v2;
      }

      *(v1 + 2) = v8 + 1;
      *&v1[8 * v8 + 32] = v7;
      continue;
    }
  }

  if (*(v1 + 2) >= *(v3 + 2))
  {
    goto LABEL_46;
  }

  *v0 = v1;
  LOBYTE(v2) = 1;
  return v2;
}

uint64_t S2CellUnion.denormalize(minLevel:levelMod:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1D9AFAA28(0, *(v5 + 16), 0, MEMORY[0x1E69E7CC0]);
  v7 = *(v5 + 16);
  if (!v7)
  {
    return v6;
  }

  v8 = 0;
  v9 = v5 + 32;
  result = 1;
  while (v8 < *(v5 + 16))
  {
    v13 = *(v9 + 8 * v8);
    if (v13)
    {
      if (a1 < 31)
      {
        if (a2 <= 1)
        {
          goto LABEL_3;
        }

        v18 = 30;
        v19 = 30;
      }

      else
      {
        v19 = a1;
        if (a2 <= 1)
        {
          goto LABEL_41;
        }

        v18 = 30;
        v19 = a1;
      }
    }

    else
    {
      v14 = HIDWORD(v13);
      if (v13)
      {
        LODWORD(v14) = *(v9 + 8 * v8);
      }

      if (__OFSUB__(0, v14))
      {
        goto LABEL_66;
      }

      if (v13)
      {
        v15 = 15;
      }

      else
      {
        v15 = -1;
      }

      v16 = -v14 & v14;
      v17 = v15 + 8;
      if ((v16 & 0x5555) == 0)
      {
        v17 = v15;
      }

      if ((v16 & 0x550055) != 0)
      {
        v17 += 4;
      }

      if ((v16 & 0x5050505) != 0)
      {
        v17 += 2;
      }

      if ((v16 & 0x11111111) != 0)
      {
        v18 = v17 + 1;
      }

      else
      {
        v18 = v17;
      }

      if (v18 <= a1)
      {
        v19 = a1;
      }

      else
      {
        v19 = v18;
      }

      if (a2 < 2)
      {
        if (v19 == v18)
        {
          goto LABEL_3;
        }

        goto LABEL_41;
      }
    }

    v20 = v19 - a1;
    if (__OFSUB__(v19, a1))
    {
      goto LABEL_67;
    }

    v21 = __OFSUB__(30, v20);
    v22 = 30 - v20;
    if (v21)
    {
      goto LABEL_68;
    }

    v23 = v22 % a2;
    v21 = __OFADD__(v19, v23);
    v19 += v23;
    if (v21)
    {
      goto LABEL_70;
    }

    if (v19 >= 30)
    {
      v19 = 30;
    }

    if (v19 == v18)
    {
LABEL_3:
      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v35 = v9;
        v36 = sub_1D9AFAA28((v11 > 1), v12 + 1, 1, v6);
        v9 = v35;
        v6 = v36;
        result = 1;
      }

      *(v6 + 2) = v12 + 1;
      *&v6[8 * v12 + 32] = v13;
      goto LABEL_6;
    }

LABEL_41:
    if (__OFSUB__(0, v13))
    {
      goto LABEL_69;
    }

    v21 = __OFSUB__(30, v19);
    v24 = 30 - v19;
    if (v21)
    {
      goto LABEL_71;
    }

    if (v24 + 0x4000000000000000 < 0)
    {
      goto LABEL_72;
    }

    v25 = 2 * v24;
    if (v25 - 65 <= 0xFFFFFFFFFFFFFF7ELL)
    {
LABEL_45:
      v26 = 0;
      goto LABEL_50;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      if (v25 <= 0xFFFFFFFFFFFFFFC0)
      {
        goto LABEL_45;
      }

      v26 = 1uLL >> (-v25 & 0x3E);
    }

    else if (v25 >= 0x40)
    {
      v26 = 0;
    }

    else
    {
      v26 = 1 << v25;
    }

LABEL_50:
    v27 = -v13 & v13;
    v28 = v13 + v27;
    if (__CFADD__(v13, v27))
    {
      goto LABEL_73;
    }

    v29 = v28 + v26;
    if (__CFADD__(v28, v26))
    {
      goto LABEL_74;
    }

    v30 = v13 - v27;
    if (v13 < v27)
    {
      goto LABEL_75;
    }

    v31 = v30 + (v27 >> 2);
    if (__CFADD__(v30, v27 >> 2))
    {
      goto LABEL_76;
    }

    if (v31 != v29)
    {
      v32 = *(v6 + 2);
      while (1)
      {
        v33 = *(v6 + 3);
        if (v32 >= v33 >> 1)
        {
          v37 = v9;
          v34 = sub_1D9AFAA28((v33 > 1), v32 + 1, 1, v6);
          v9 = v37;
          v6 = v34;
          result = 1;
        }

        *(v6 + 2) = v32 + 1;
        *&v6[8 * v32 + 32] = v13;
        if (__OFSUB__(0, v31))
        {
          break;
        }

        v31 += 2 * (-v31 & v31);
        ++v32;
        if (v31 == v29)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      break;
    }

LABEL_6:
    if (++v8 == v7)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

unint64_t S2CellUnion.contains(id:)(unint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  result = sub_1D9AC2260(v3, *a1);
  if ((result & 0x8000000000000000) != 0)
  {
    v5 = -result;
    if (__OFSUB__(0, result))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    result = v5 - 1;
    if (__OFSUB__(v5, 1))
    {
LABEL_25:
      __break(1u);
      return result;
    }
  }

  v6 = *(v3 + 16);
  if (result >= v6)
  {
    goto LABEL_9;
  }

  v7 = *(v3 + 8 * result + 32);
  if (__OFSUB__(0, v7))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = -v7 & v7;
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = __OFSUB__(v7, v10);
  v11 = v7 - v10;
  if (v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 <= v2)
  {
    return 1;
  }

LABEL_9:
  if (result)
  {
    if (result - 1 < v6)
    {
      v12 = *(v3 + 8 * (result - 1) + 32);
      if (!__OFSUB__(0, v12))
      {
        v13 = -v12 & v12;
        v9 = __OFSUB__(v13, 1);
        v14 = v13 - 1;
        if (!v9)
        {
          v9 = __OFADD__(v12, v14);
          v15 = v12 + v14;
          if (!v9)
          {
            return v15 >= v2;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  return result;
}

unint64_t S2CellUnion.intersects(with:)(unint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  result = sub_1D9AC2260(v3, *a1);
  if ((result & 0x8000000000000000) != 0)
  {
    v5 = -result;
    if (__OFSUB__(0, result))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    result = v5 - 1;
    if (__OFSUB__(v5, 1))
    {
LABEL_37:
      __break(1u);
      return result;
    }
  }

  v6 = *(v3 + 16);
  if (result >= v6)
  {
    goto LABEL_12;
  }

  v7 = *(v3 + 8 * result + 32);
  if (__OFSUB__(0, v7))
  {
    __break(1u);
    goto LABEL_24;
  }

  v8 = -v7 & v7;
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = __OFSUB__(v7, v10);
  v11 = v7 - v10;
  if (v9)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (__OFSUB__(0, v2))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = -v2 & v2;
  v9 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  if (v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v9 = __OFADD__(v2, v13);
  v14 = v2 + v13;
  if (v9)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v11 <= v14)
  {
    return 1;
  }

LABEL_12:
  if (result)
  {
    if (result - 1 < v6)
    {
      v15 = *(v3 + 8 * (result - 1) + 32);
      if (!__OFSUB__(0, v15))
      {
        v16 = -v15 & v15;
        v9 = __OFSUB__(v16, 1);
        v17 = v16 - 1;
        if (!v9)
        {
          v9 = __OFADD__(v15, v17);
          v18 = v15 + v17;
          if (!v9)
          {
            if (!__OFSUB__(0, v2))
            {
              v19 = -v2 & v2;
              v9 = __OFSUB__(v19, 1);
              v20 = v19 - 1;
              if (!v9)
              {
                v9 = __OFSUB__(v2, v20);
                v21 = v2 - v20;
                if (!v9)
                {
                  return v18 >= v21;
                }

                goto LABEL_35;
              }

LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return result;
}

Swift::Bool __swiftcall S2CellUnion.contains(other:)(VisualLookUp::S2CellUnion other)
{
  v2 = *(*other.cellIds._rawValue + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = 0;
  v4 = *(*v1 + 16);
  v5 = *other.cellIds._rawValue + 32;
  v6 = *v1 + 32;
  while (1)
  {
    v7 = 0;
    v8 = *(v5 + 8 * v3++);
    v9 = *(*v1 + 16);
LABEL_5:
    v10 = v9;
    while (v7 < v10)
    {
      if (__OFSUB__(v10, v7))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v9 = v7 + (v10 - v7) / 2;
      if (__OFADD__(v7, (v10 - v7) / 2))
      {
        goto LABEL_33;
      }

      if (v9 >= v4)
      {
        goto LABEL_34;
      }

      other.cellIds._rawValue = *(v6 + 8 * v9);
      if (other.cellIds._rawValue == v8)
      {
        goto LABEL_16;
      }

      if (other.cellIds._rawValue >= v8)
      {
        goto LABEL_5;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_35;
      }
    }

    v9 = ~v10;
LABEL_16:
    if (v9 < 0)
    {
      v11 = __OFSUB__(0, v9);
      v12 = -v9;
      if (v11)
      {
        goto LABEL_43;
      }

      v11 = __OFSUB__(v12, 1);
      v9 = v12 - 1;
      if (v11)
      {
        break;
      }
    }

    if (v9 >= v4)
    {
      goto LABEL_24;
    }

    v13 = *(v6 + 8 * v9);
    if (__OFSUB__(0, v13))
    {
      goto LABEL_40;
    }

    v14 = -v13 & v13;
    v11 = __OFSUB__(v14, 1);
    v15 = v14 - 1;
    if (v11)
    {
      goto LABEL_41;
    }

    v11 = __OFSUB__(v13, v15);
    v16 = v13 - v15;
    if (v11)
    {
      goto LABEL_42;
    }

    if (v16 > v8)
    {
LABEL_24:
      if (!v9)
      {
        goto LABEL_30;
      }

      if (v9 > v4)
      {
        goto LABEL_36;
      }

      v17 = *(*v1 + 24 + 8 * v9);
      if (__OFSUB__(0, v17))
      {
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
LABEL_43:
        __break(1u);
        break;
      }

      v18 = -v17 & v17;
      v11 = __OFSUB__(v18, 1);
      v19 = v18 - 1;
      if (v11)
      {
        goto LABEL_38;
      }

      v11 = __OFADD__(v17, v19);
      v20 = v17 + v19;
      if (v11)
      {
        goto LABEL_39;
      }

      if (v20 < v8)
      {
LABEL_30:
        LOBYTE(other.cellIds._rawValue) = 0;
        return other.cellIds._rawValue;
      }
    }

    if (v3 == v2)
    {
      return 1;
    }
  }

  __break(1u);
  return other.cellIds._rawValue;
}

Swift::Bool __swiftcall S2CellUnion.intersects(union:)(VisualLookUp::S2CellUnion a1)
{
  v2 = *(*a1.cellIds._rawValue + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *a1.cellIds._rawValue + 32;
  v5 = *v1 + 32;
  v6 = *(*v1 + 16);
  while (1)
  {
    v7 = 0;
    v8 = *(v4 + 8 * v3++);
    v9 = *(*v1 + 16);
LABEL_5:
    v10 = v9;
    while (v7 < v10)
    {
      if (__OFSUB__(v10, v7))
      {
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

      v9 = v7 + (v10 - v7) / 2;
      if (__OFADD__(v7, (v10 - v7) / 2))
      {
        goto LABEL_39;
      }

      if (v9 >= v6)
      {
        goto LABEL_40;
      }

      a1.cellIds._rawValue = *(v5 + 8 * v9);
      if (a1.cellIds._rawValue == v8)
      {
        goto LABEL_16;
      }

      if (a1.cellIds._rawValue >= v8)
      {
        goto LABEL_5;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_41;
      }
    }

    v9 = ~v10;
LABEL_16:
    if (v9 < 0)
    {
      v11 = __OFSUB__(0, v9);
      v12 = -v9;
      if (v11)
      {
        goto LABEL_55;
      }

      v11 = __OFSUB__(v12, 1);
      v9 = v12 - 1;
      if (v11)
      {
        break;
      }
    }

    if (v9 < v6)
    {
      v13 = *(v5 + 8 * v9);
      if (__OFSUB__(0, v13))
      {
        goto LABEL_49;
      }

      v14 = -v13 & v13;
      v11 = __OFSUB__(v14, 1);
      v15 = v14 - 1;
      if (v11)
      {
        goto LABEL_50;
      }

      v11 = __OFSUB__(v13, v15);
      v16 = v13 - v15;
      if (v11)
      {
        goto LABEL_51;
      }

      if (__OFSUB__(0, v8))
      {
        goto LABEL_52;
      }

      v17 = -v8 & v8;
      v11 = __OFSUB__(v17, 1);
      v18 = v17 - 1;
      if (v11)
      {
        goto LABEL_53;
      }

      v11 = __OFADD__(v8, v18);
      v19 = v8 + v18;
      if (v11)
      {
        goto LABEL_54;
      }

      if (v16 <= v19)
      {
        goto LABEL_36;
      }
    }

    if (v9)
    {
      if (v9 > v6)
      {
        goto LABEL_42;
      }

      v20 = *(*v1 + 24 + 8 * v9);
      if (__OFSUB__(0, v20))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        break;
      }

      v21 = -v20 & v20;
      v11 = __OFSUB__(v21, 1);
      v22 = v21 - 1;
      if (v11)
      {
        goto LABEL_44;
      }

      v11 = __OFADD__(v20, v22);
      v23 = v20 + v22;
      if (v11)
      {
        goto LABEL_45;
      }

      if (__OFSUB__(0, v8))
      {
        goto LABEL_46;
      }

      v24 = -v8 & v8;
      v11 = __OFSUB__(v24, 1);
      v25 = v24 - 1;
      if (v11)
      {
        goto LABEL_47;
      }

      v11 = __OFSUB__(v8, v25);
      v26 = v8 - v25;
      if (v11)
      {
        goto LABEL_48;
      }

      if (v23 >= v26)
      {
LABEL_36:
        LOBYTE(a1.cellIds._rawValue) = 1;
        return a1.cellIds._rawValue;
      }
    }

    if (v3 == v2)
    {
      return 0;
    }
  }

  __break(1u);
  return a1.cellIds._rawValue;
}

uint64_t S2CellUnion.leafCellsCovered.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v3 = (*v0 + 32);
  while (1)
  {
    v5 = *v3++;
    v4 = v5;
    if (v5)
    {
      v9 = 0;
    }

    else
    {
      v6 = HIDWORD(v4);
      if (v4)
      {
        LODWORD(v6) = v4;
      }

      if (__OFSUB__(0, v6))
      {
        goto LABEL_25;
      }

      v7 = -v6 & v6;
      if (v4)
      {
        v8 = 15;
      }

      else
      {
        v8 = -1;
      }

      if ((v7 & 0x5555) != 0)
      {
        v8 += 8;
      }

      if ((v7 & 0x550055) != 0)
      {
        v8 += 4;
      }

      if ((v7 & 0x5050505) != 0)
      {
        v8 += 2;
      }

      if ((v7 & 0x11111111) != 0)
      {
        ++v8;
      }

      v9 = (60 - 2 * v8) & 0x3E;
    }

    v10 = 1 << v9;
    v11 = __OFADD__(result, v10);
    result += v10;
    if (v11)
    {
      break;
    }

    if (!--v1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

double S2CellUnion.averageBasedArea.getter()
{
  if (qword_1ECB508F0 != -1)
  {
    swift_once();
  }

  v0 = scalb(*&qword_1ECB513E8, qword_1ECB513F0 * -29.0);
  return v0 * S2CellUnion.leafCellsCovered.getter();
}

double sub_1D9AC2F18(double (*a1)(double))
{
  v2 = *(*v1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v4 = (*v1 + 32);
  v5 = 0.0;
  do
  {
    v6 = *v4++;
    v10 = v6;
    v7 = S2Cell.init(cellId:)(&v10, &v14);
    v10 = v14;
    v11 = v15;
    v12 = v16;
    v13 = v17;
    v8 = a1(v7);

    v5 = v5 + v8;
    --v2;
  }

  while (v2);
  return v5;
}

void S2CellUnion.capBound.getter(__int128 *a1@<X8>)
{
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = (*v1 + 32);
    if (qword_1ECB508F0 != -1)
    {
LABEL_39:
      swift_once();
    }

    v5 = *&qword_1ECB513E8;
    v6 = qword_1ECB513F0;
    v7 = 0.0;
    v8 = v4;
    v9 = v3;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      v15 = *v8++;
      v14 = v15;
      v16 = 30.0;
      if ((v15 & 1) == 0)
      {
        v17 = HIDWORD(v14);
        if (v14)
        {
          LODWORD(v17) = v14;
        }

        if (__OFSUB__(0, v17))
        {
          __break(1u);
          goto LABEL_39;
        }

        if (v14)
        {
          v18 = 15;
        }

        else
        {
          v18 = -1;
        }

        v19 = -v17 & v17;
        v20 = v18 + 8;
        if ((v19 & 0x5555) == 0)
        {
          v20 = v18;
        }

        if ((v19 & 0x550055) != 0)
        {
          v20 += 4;
        }

        if ((v19 & 0x5050505) != 0)
        {
          v20 += 2;
        }

        if ((v19 & 0x11111111) != 0)
        {
          v21 = v20 + 1;
        }

        else
        {
          v21 = v20;
        }

        v16 = v21;
      }

      v12 = scalb(v5, (1.0 - v16) * v6);
      v39 = v14;
      S2CellId.rawPoint.getter(&v42);
      v13 = sqrt(*&v42 * *&v42 + *(&v42 + 1) * *(&v42 + 1) + *&v43 * *&v43);
      if (v13 != 0.0)
      {
        v13 = 1.0 / v13;
      }

      v7 = v7 + v12 * (*&v42 * v13);
      v10 = v10 + v12 * (*(&v42 + 1) * v13);
      v11 = v11 + v12 * (*&v43 * v13);
      --v9;
    }

    while (v9);
    if (v7 == 0.0 && v10 == 0.0 && v11 == 0.0)
    {
      v22 = 0.0;
      *&v23 = 1.0;
      v24 = 0.0;
    }

    else
    {
      v26 = sqrt(v11 * v11 + v7 * v7 + v10 * v10);
      if (v26 == 0.0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 1.0 / v26;
      }

      *&v23 = v7 * v27;
      v22 = v10 * v27;
      v24 = v11 * v27;
    }

    v25 = *&v24;
    do
    {
      v28 = *v4++;
      v39 = v23;
      v40 = v22;
      v41 = v25;
      *&v42 = v28;
      S2Cell.init(cellId:)(&v42, &v35);
      v31 = v35;
      v32 = v36;
      v33 = v37;
      v34 = v38;
      S2Cell.capBound.getter(&v29);

      *&v44.axis.x = v29;
      *&v44.axis.y = v30;
      S2Cap.add(cap:)(v44);
      v23 = v42;
      v25 = v43;
      v22 = *(&v42 + 1);
      --v3;
    }

    while (v3);
  }

  else
  {
    if (qword_1ECB50CC8 != -1)
    {
      swift_once();
    }

    v23 = xmmword_1ECB53A60;
    v25 = *&qword_1ECB53A70;
  }

  *a1 = v23;
  a1[1] = v25;
}

void S2CellUnion.rectBound.getter(__int128 *a1@<X8>)
{
  v3 = *v1;
  if (qword_1ECB50B20 != -1)
  {
    swift_once();
  }

  v4 = xmmword_1ECB52C88;
  if (qword_1ECB50AC8 != -1)
  {
    v9 = xmmword_1ECB52C88;
    swift_once();
    v4 = v9;
  }

  v5 = xmmword_1ECB528D0;
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = (v3 + 32);
    do
    {
      v8 = *v7++;
      v20 = v4;
      v21 = v5;
      *&v22[0] = v8;
      S2Cell.init(cellId:)(v22, &v16);
      v12 = v16;
      v13 = v17;
      v14 = v18;
      v15 = v19;
      S2Cell.rectBound.getter(&v10);

      *&v23.lat.lo = v10;
      *&v23.lat.hi = v11;
      S2LatLngRect.union(with:)(v23);
      v4 = v22[0];
      v5 = v22[1];
      --v6;
    }

    while (v6);
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_1D9AC3428(void *a1, uint64_t (*a2)(void *))
{
  v3 = *v2;
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5) & 1;
}

uint64_t sub_1D9AC34A4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = *v4;
  v7[0] = *a1;
  v7[1] = v5;
  return a4(v7) & 1;
}

uint64_t sub_1D9AC34F8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D99E8FDC(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1D9AC3A44((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D99E8FF0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1D99E8FF0((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1D9AC3A44((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_1D9AC3A44(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1D9AC3C38(void *a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1D9B1A710(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    return sub_1D9AC3CC8;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D9AC3CD4(void **a1)
{
  v2 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D99E9140(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D9AC3D7C(v5);
  *a1 = v3;
}

void sub_1D9AC3D7C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D9C7E79C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for VisualUnderstanding.ImageRegion();
        v6 = sub_1D9C7DF5C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D9AC40C4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D9AC3EA8(0, v2, 1, a1);
  }
}

void sub_1D9AC3EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_1D9AC7620(v22, v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9AC7620(v19, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v23 = v16[19];
      v24 = v12[19];
      sub_1D9AC7688(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9AC7688(v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v23 >= v24)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_1D99B1CE4(v22, v9);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D99B1CE4(v9, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D9AC40C4(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v105 = a1;
  v116 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v112 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v107 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v101 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v101 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v101 - v16);
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v105;
    if (!*v105)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v96 = a4;
    }

    else
    {
LABEL_128:
      v96 = sub_1D99E8FDC(a4);
    }

    v117 = v96;
    a4 = *(v96 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v97 = *&v96[16 * a4];
        v98 = v96;
        v99 = *&v96[16 * a4 + 24];
        sub_1D9AC4970(*v114 + *(v112 + 72) * v97, *v114 + *(v112 + 72) * *&v96[16 * a4 + 16], *v114 + *(v112 + 72) * v99, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v99 < v97)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1D99E8FDC(v98);
        }

        if (a4 - 2 >= *(v98 + 2))
        {
          goto LABEL_122;
        }

        v100 = &v98[16 * a4];
        *v100 = v97;
        *(v100 + 1) = v99;
        v117 = v98;
        sub_1D99E8F50(a4 - 1);
        v96 = v117;
        a4 = *(v117 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v104 = a4;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v108 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = v21;
      v24 = *v114;
      v25 = *(v112 + 72);
      v5 = *v114 + v25 * v22;
      sub_1D9AC7620(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9AC7620(v24 + v25 * v23, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      v26 = v17[19];
      v27 = v14[19];
      sub_1D9AC7688(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9AC7688(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      v103 = v23;
      v28 = v23 + 2;
      v113 = v25;
      v29 = v24 + v25 * v28;
      while (v18 != v28)
      {
        sub_1D9AC7620(v29, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9AC7620(v5, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        v30 = v17[19];
        v31 = v14[19];
        sub_1D9AC7688(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9AC7688(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        ++v28;
        v29 += v113;
        v5 += v113;
        if (v26 < v27 == v30 >= v31)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v103;
      a4 = v104;
      if (v26 < v27)
      {
        if (v18 < v103)
        {
          goto LABEL_125;
        }

        if (v103 < v18)
        {
          v102 = v6;
          v32 = v113 * (v18 - 1);
          v33 = v18 * v113;
          v111 = v18;
          v34 = v18;
          v35 = v103;
          v36 = v103 * v113;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v37 + v36;
              sub_1D99B1CE4(v37 + v36, v107);
              if (v36 < v32 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D99B1CE4(v107, v37 + v32);
            }

            ++v35;
            v32 -= v113;
            v33 -= v113;
            v36 += v113;
          }

          while (v35 < v34);
          v6 = v102;
          v21 = v103;
          a4 = v104;
          v18 = v111;
        }
      }
    }

    v38 = v114[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v38)
        {
          v39 = v114[1];
        }

        else
        {
          v39 = v21 + a4;
        }

        if (v39 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v39)
        {
          break;
        }
      }
    }

    v40 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v108;
    }

    else
    {
      v20 = sub_1D99E8FF0(0, *(v108 + 2) + 1, 1, v108);
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v20 = sub_1D99E8FF0((v41 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * a4];
    *(v42 + 4) = v21;
    *(v42 + 5) = v40;
    v43 = *v105;
    if (!*v105)
    {
      goto LABEL_133;
    }

    v109 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_1D9AC4970(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v20[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1D99E8FDC(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v117 = v82;
        sub_1D99E8F50(v44);
        v20 = v117;
        v5 = *(v117 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    v19 = v109;
    a4 = v104;
    if (v109 >= v18)
    {
      goto LABEL_95;
    }
  }

  v102 = v6;
  v85 = *v114;
  v86 = *(v112 + 72);
  v87 = *v114 + v86 * (v18 - 1);
  v88 = v21;
  v89 = -v86;
  v103 = v88;
  v90 = v88 - v18;
  v106 = v86;
  a4 = v85 + v18 * v86;
  v109 = v39;
LABEL_85:
  v110 = v90;
  v111 = v18;
  v5 = a4;
  v113 = v87;
  v91 = v87;
  while (1)
  {
    sub_1D9AC7620(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9AC7620(v91, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    v92 = v17[19];
    v93 = v14[19];
    sub_1D9AC7688(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9AC7688(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v92 >= v93)
    {
LABEL_84:
      v18 = v111 + 1;
      v87 = v113 + v106;
      v90 = v110 - 1;
      a4 += v106;
      v40 = v109;
      if (v111 + 1 != v109)
      {
        goto LABEL_85;
      }

      v6 = v102;
      v21 = v103;
      if (v109 < v103)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v85)
    {
      break;
    }

    v94 = v115;
    sub_1D99B1CE4(v5, v115);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D99B1CE4(v94, v91);
    v91 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_1D9AC4970(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v43 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v43);
  v44 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v39 - v10);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39[1] = v4;
    v23 = a4 + v17;
    if (v17 < 1)
    {
      v26 = a4 + v17;
    }

    else
    {
      v24 = -v13;
      v25 = a4 + v17;
      v26 = v23;
      v41 = v24;
      v42 = a4;
      do
      {
        v39[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v45;
          if (v27 <= a1)
          {
            v48 = v27;
            v46 = v39[0];
            goto LABEL_59;
          }

          v40 = v26;
          v45 += v24;
          v31 = v25 + v24;
          sub_1D9AC7620(v31, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
          v32 = v28;
          v33 = v28;
          v34 = v11;
          v35 = v44;
          sub_1D9AC7620(v33, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
          v36 = *(v34 + 76);
          v37 = *(v35 + 76);
          v38 = v35;
          v11 = v34;
          sub_1D9AC7688(v38, type metadata accessor for VisualUnderstanding.ImageRegion);
          sub_1D9AC7688(v34, type metadata accessor for VisualUnderstanding.ImageRegion);
          if (v36 < v37)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v45 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v42;
          v24 = v41;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v45 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v40;
          v24 = v41;
        }

        else
        {
          v26 = v40;
          v24 = v41;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v42);
    }

LABEL_58:
    v48 = a2;
    v46 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < v45)
    {
      do
      {
        sub_1D9AC7620(a2, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        v20 = v44;
        sub_1D9AC7620(a4, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
        v21 = v11[19];
        v22 = *(v20 + 76);
        sub_1D9AC7688(v20, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9AC7688(v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        if (v21 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v18 && a2 < v45);
    }
  }

LABEL_59:
  sub_1D9B015E8(&v48, &v47, &v46);
}

uint64_t sub_1D9AC4E40(uint64_t a1)
{
  v2 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v136 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v158 = (&v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v150 = (&v131 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v135 = (&v131 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v133 = &v131 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v132 = (&v131 - v16);
  v137 = a1;
  v17 = *(a1 + 16);
  v19 = v18;
  v146 = v17;
  v20 = sub_1D9AE657C(0, v17);
  v21 = 0;
  v164 = v20;
  v144 = (v7 + 48);
  v145 = (v7 + 56);
  v138 = 0x80000001D9CA2910;
  v139 = 0x80000001D9CA2950;
  v147 = v19;
  v140 = v11;
  v141 = v6;
  while (1)
  {
    if (v21 == v146)
    {
      v22 = 1;
      v134 = v146;
      v23 = v133;
    }

    else
    {
      if (v21 >= v146)
      {
        goto LABEL_173;
      }

      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_174;
      }

      v25 = v135;
      v26 = v137 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v21;
      v27 = *(v6 + 48);
      *v135 = v21;
      sub_1D9AC7620(v26, v25 + v27, type metadata accessor for VisualUnderstanding.ImageRegion);
      v28 = v25;
      v19 = v147;
      v23 = v133;
      sub_1D99B1C20(v28, v133, &qword_1ECB510F0);
      v22 = 0;
      v134 = v24;
    }

    v143 = *v145;
    v143(v23, v22, 1, v6);
    v29 = v132;
    sub_1D99B1C20(v23, v132, &qword_1ECB510F8);
    v142 = *v144;
    if (v142(v29, 1, v6) == 1)
    {
      return v164;
    }

    v30 = *v29;
    v31 = v29 + *(v6 + 48);
    v32 = v150;
    sub_1D99B1CE4(v31, v150);
    if ((v32[13] & 1) == 0)
    {
      break;
    }

LABEL_2:
    sub_1D9AC7688(v150, type metadata accessor for VisualUnderstanding.ImageRegion);
    v21 = v134;
  }

  v33 = 0;
  v156 = v30;
  while (1)
  {
    if (v33 == v146)
    {
      v34 = 1;
      v151 = v146;
    }

    else
    {
      if (v33 >= v146)
      {
        goto LABEL_170;
      }

      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_171;
      }

      v36 = v135;
      v37 = v137 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v33;
      v38 = *(v6 + 48);
      *v135 = v33;
      sub_1D9AC7620(v37, v36 + v38, type metadata accessor for VisualUnderstanding.ImageRegion);
      v39 = v36;
      v19 = v147;
      sub_1D99B1C20(v39, v11, &qword_1ECB510F0);
      v34 = 0;
      v151 = v35;
    }

    v143(v11, v34, 1, v6);
    sub_1D99B1C20(v11, v19, &qword_1ECB510F8);
    if (v142(v19, 1, v6) == 1)
    {
      goto LABEL_2;
    }

    v40 = *v19;
    v41 = v19 + *(v6 + 48);
    v42 = v158;
    sub_1D99B1CE4(v41, v158);
    if ((v42[13] & 1) == 0 && v30 != v40)
    {
      v43 = v158[6];
      v44 = *(v43 + 16);
      v148 = (v43 + 32);
      v45 = (v43 + 156);
      v46 = v44 + 1;
      do
      {
        if (!--v46)
        {
          goto LABEL_11;
        }

        v47 = *v45;
        v45 += 160;
      }

      while (v47 != 1);
      v48 = v150[6];
      v49 = *(v48 + 16);
      if (v49)
      {
        break;
      }
    }

LABEL_11:
    sub_1D9AC7688(v158, type metadata accessor for VisualUnderstanding.ImageRegion);
    v11 = v140;
    v6 = v141;
    v19 = v147;
    v33 = v151;
  }

  v50 = 0;
  v51 = v48 + 32;
  v154 = *(v48 + 16);
  v155 = v48;
  v153 = v48 + 32;
LABEL_25:
  v52 = (v51 + 160 * v50);
  v53 = v52[1];
  v162[0] = *v52;
  v162[1] = v53;
  v54 = v52[2];
  v55 = v52[3];
  v56 = v52[5];
  v162[4] = v52[4];
  v162[5] = v56;
  v162[2] = v54;
  v162[3] = v55;
  v57 = v52[6];
  v58 = v52[7];
  v59 = v52[8];
  *(v163 + 13) = *(v52 + 141);
  v162[7] = v58;
  v163[0] = v59;
  v162[6] = v57;
  if (BYTE12(v58) != 1)
  {
    goto LABEL_157;
  }

  v60 = LOBYTE(v162[0]);
  v61 = *(v43 + 16);
  sub_1D99AE054(v162, v160);
  if (!v61)
  {
LABEL_116:
    v81 = *v150;
    v82 = *(v150 + 1);
    v83 = *(v150 + 2);
    v84 = *(v150 + 3);
    v85 = *(v158 + 1);
    v157 = *v158;
    v86 = *(v158 + 2);
    v87 = *(v158 + 3);
    v165.origin.x = v81;
    v165.origin.y = v82;
    v165.size.width = v83;
    v165.size.height = v84;
    Width = CGRectGetWidth(v165);
    v149 = v81;
    v166.origin.x = v81;
    v89 = v82;
    v90 = v157;
    v166.origin.y = v89;
    v166.size.width = v83;
    v166.size.height = v84;
    v91 = Width * CGRectGetHeight(v166);
    v167.origin.x = v90;
    v167.origin.y = v85;
    v167.size.width = v86;
    v167.size.height = v87;
    v152 = CGRectGetWidth(v167);
    v168.origin.x = v90;
    v168.origin.y = v85;
    v168.size.width = v86;
    v168.size.height = v87;
    Height = CGRectGetHeight(v168);
    if (v91 <= 0.0)
    {
      v30 = v156;
      v98 = 0.0;
    }

    else
    {
      v93 = v152 * Height;
      v30 = v156;
      if (v93 <= 0.0)
      {
        v98 = 0.0;
        if ((v156 & 0x8000000000000000) != 0)
        {
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

LABEL_125:
        v102 = v164;
        if (v30 >= v164[2])
        {
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        v103 = v164[v30 + 4];
        if (!v103)
        {
          sub_1D99AE0B0(v162);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FC8);
          v107 = sub_1D9C7E54C();

          v108 = sub_1D99EE138(v60);
          v110 = v109;

          if ((v110 & 1) == 0)
          {
            v107[(v108 >> 6) + 8] |= 1 << v108;
            *(v107[6] + v108) = v60;
            *(v107[7] + 4 * v108) = v98;
            v111 = v107[2];
            v112 = __OFADD__(v111, 1);
            v113 = v111 + 1;
            if (!v112)
            {
              v107[2] = v113;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v102 = sub_1D9B1A710(v102);
              }

              if (v30 < v102[2])
              {
                v102[v30 + 4] = v107;

                v164 = v102;
                goto LABEL_156;
              }

              goto LABEL_169;
            }

LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if (*(v103 + 16))
        {

          v104 = sub_1D99EE138(v60);
          v105 = 0.0;
          if (v106)
          {
            v105 = *(*(v103 + 56) + 4 * v104);
          }
        }

        else
        {
          v105 = 0.0;
        }

        if (v98 > v105)
        {
          v105 = v98;
        }

        v115 = sub_1D9AC3C38(v160, v30);
        if (!*v114)
        {
          sub_1D99AE0B0(v162);
          v115(v160, 0);
          goto LABEL_156;
        }

        v116 = v114;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v159[0] = *v116;
        v118 = v159[0];
        *v116 = 0x8000000000000000;
        v120 = sub_1D99EE138(v60);
        v121 = *(v118 + 16);
        v122 = (v119 & 1) == 0;
        v123 = v121 + v122;
        if (__OFADD__(v121, v122))
        {
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        v124 = v119;
        if (*(v118 + 24) < v123)
        {
          sub_1D9C08090(v123, isUniquelyReferenced_nonNull_native);
          v125 = sub_1D99EE138(v60);
          if ((v124 & 1) != (v126 & 1))
          {
LABEL_175:
            result = sub_1D9C7E84C();
            __break(1u);
            return result;
          }

          v120 = v125;
          sub_1D99AE0B0(v162);
          v127 = v159[0];
          if ((v124 & 1) == 0)
          {
            goto LABEL_147;
          }

LABEL_153:
          *(v127[7] + 4 * v120) = v105;
          goto LABEL_154;
        }

        sub_1D99AE0B0(v162);
        if (isUniquelyReferenced_nonNull_native)
        {
          v127 = v159[0];
          if (v124)
          {
            goto LABEL_153;
          }
        }

        else
        {
          sub_1D9C13640();
          v127 = v159[0];
          if (v124)
          {
            goto LABEL_153;
          }
        }

LABEL_147:
        v127[(v120 >> 6) + 8] |= 1 << v120;
        *(v127[6] + v120) = v60;
        *(v127[7] + 4 * v120) = v105;
        v128 = v127[2];
        v112 = __OFADD__(v128, 1);
        v129 = v128 + 1;
        if (v112)
        {
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        v127[2] = v129;
LABEL_154:
        *v116 = v127;

        v115(v160, 0);
        goto LABEL_155;
      }

      v152 = v93;
      v169.origin.x = v149;
      v169.origin.y = v89;
      v169.size.width = v83;
      v169.size.height = v84;
      v173.origin.x = v90;
      v173.origin.y = v85;
      v173.size.width = v86;
      v173.size.height = v87;
      v170 = CGRectIntersection(v169, v173);
      x = v170.origin.x;
      y = v170.origin.y;
      v96 = v170.size.width;
      v97 = v170.size.height;
      v98 = 0.0;
      if (!CGRectIsNull(v170))
      {
        v171.origin.x = x;
        v171.origin.y = y;
        v171.size.width = v96;
        v171.size.height = v97;
        v99 = CGRectGetWidth(v171);
        v172.origin.x = x;
        v172.origin.y = y;
        v172.size.width = v96;
        v172.size.height = v97;
        v100 = v99 * CGRectGetHeight(v172);
        v101 = v152;
        if (v152 >= v91)
        {
          v101 = v91;
        }

        v98 = v100 / v101;
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_164;
        }

        goto LABEL_125;
      }
    }

    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_164;
    }

    goto LABEL_125;
  }

  v62 = 0;
  v63 = v148;
  while (v62 < *(v43 + 16))
  {
    v65 = v63[1];
    v160[0] = *v63;
    v160[1] = v65;
    v66 = v63[2];
    v67 = v63[3];
    v68 = v63[5];
    v160[4] = v63[4];
    v160[5] = v68;
    v160[2] = v66;
    v160[3] = v67;
    v69 = v63[6];
    v70 = v63[7];
    v71 = v63[8];
    *(v161 + 13) = *(v63 + 141);
    v160[7] = v70;
    v161[0] = v71;
    v160[6] = v69;
    if (BYTE12(v70) == 1)
    {
      v72 = 0xE300000000000000;
      v73 = 7631457;
      switch(LOBYTE(v160[0]))
      {
        case 1:
          v72 = 0xE600000000000000;
          v73 = 0x65727574616ELL;
          break;
        case 2:
          v72 = 0xE800000000000000;
          v73 = 0x6B72616D646E616CLL;
          break;
        case 3:
          v73 = 0x4C6C61727574616ELL;
          v72 = 0xEF6B72616D646E61;
          break;
        case 4:
          v72 = 0xE500000000000000;
          v73 = 0x616964656DLL;
          break;
        case 5:
          v72 = 0xE400000000000000;
          v73 = 1802465122;
          break;
        case 6:
          v72 = 0xE500000000000000;
          v73 = 0x6D75626C61;
          break;
        case 7:
          v72 = 0xE400000000000000;
          v73 = 1937006947;
          break;
        case 8:
          v72 = 0xE400000000000000;
          v73 = 1936158564;
          break;
        case 9:
          v72 = 0xE700000000000000;
          v74 = 1835626081;
          goto LABEL_51;
        case 0xA:
          v72 = 0xE500000000000000;
          v73 = 0x7364726962;
          break;
        case 0xB:
          v72 = 0xE700000000000000;
          v73 = 0x73746365736E69;
          break;
        case 0xC:
          v72 = 0xE800000000000000;
          v73 = 0x73656C6974706572;
          break;
        case 0xD:
          v72 = 0xE700000000000000;
          v74 = 1835884909;
LABEL_51:
          v73 = v74 | 0x736C6100000000;
          break;
        case 0xE:
          v73 = 0xD000000000000010;
          v72 = v138;
          break;
        case 0xF:
          v72 = 0xE700000000000000;
          v73 = 0x6C657261707061;
          break;
        case 0x10:
          v73 = 0x726F737365636361;
          v72 = 0xEB00000000736569;
          break;
        case 0x11:
          v72 = 0xE400000000000000;
          v73 = 1685024614;
          break;
        case 0x12:
          v72 = 0xEA0000000000746ELL;
          v73 = 0x6F726665726F7473;
          break;
        case 0x13:
          v75 = 1852270963;
          goto LABEL_58;
        case 0x14:
          v73 = 0xD000000000000011;
          v72 = v139;
          break;
        case 0x15:
          v75 = 1869903201;
LABEL_58:
          v73 = v75 | 0x626D795300000000;
          v72 = 0xEA00000000006C6FLL;
          break;
        case 0x16:
          v73 = 0x676F4C646E617262;
          v72 = 0xEF6C6F626D79536FLL;
          break;
        case 0x17:
          v72 = 0xE700000000000000;
          v73 = 0x65646F63726162;
          break;
        case 0x18:
          v73 = 0x727574706C756373;
          v72 = 0xE900000000000065;
          break;
        case 0x19:
          v72 = 0xE700000000000000;
          v73 = 0x656E696C796B73;
          break;
        case 0x1A:
          v72 = 0xE800000000000000;
          v73 = 0x44327463656A626FLL;
          break;
        default:
          break;
      }

      v76 = 0xE300000000000000;
      v77 = 7631457;
      switch(v60)
      {
        case 1:
          v76 = 0xE600000000000000;
          if (v73 == 0x65727574616ELL)
          {
            goto LABEL_112;
          }

          goto LABEL_28;
        case 2:
          v76 = 0xE800000000000000;
          if (v73 != 0x6B72616D646E616CLL)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 3:
          v76 = 0xEF6B72616D646E61;
          if (v73 != 0x4C6C61727574616ELL)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 4:
          v76 = 0xE500000000000000;
          if (v73 != 0x616964656DLL)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 5:
          v76 = 0xE400000000000000;
          if (v73 != 1802465122)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 6:
          v76 = 0xE500000000000000;
          if (v73 != 0x6D75626C61)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 7:
          v76 = 0xE400000000000000;
          if (v73 != 1937006947)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 8:
          v76 = 0xE400000000000000;
          if (v73 != 1936158564)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 9:
          v76 = 0xE700000000000000;
          v79 = 1835626081;
          goto LABEL_94;
        case 10:
          v76 = 0xE500000000000000;
          if (v73 != 0x7364726962)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 11:
          v76 = 0xE700000000000000;
          v78 = 0x746365736E69;
          goto LABEL_95;
        case 12:
          v76 = 0xE800000000000000;
          if (v73 != 0x73656C6974706572)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 13:
          v76 = 0xE700000000000000;
          v79 = 1835884909;
LABEL_94:
          v78 = v79 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_95:
          if (v73 != (v78 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 14:
          v76 = v138;
          if (v73 != 0xD000000000000010)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 15:
          v76 = 0xE700000000000000;
          if (v73 != 0x6C657261707061)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 16:
          v76 = 0xEB00000000736569;
          if (v73 != 0x726F737365636361)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 17:
          v76 = 0xE400000000000000;
          if (v73 != 1685024614)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 18:
          v76 = 0xEA0000000000746ELL;
          if (v73 != 0x6F726665726F7473)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 19:
          v80 = 1852270963;
          goto LABEL_108;
        case 20:
          v76 = v139;
          if (v73 != 0xD000000000000011)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 21:
          v80 = 1869903201;
LABEL_108:
          v76 = 0xEA00000000006C6FLL;
          if (v73 != (v80 | 0x626D795300000000))
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 22:
          v76 = 0xEF6C6F626D79536FLL;
          if (v73 != 0x676F4C646E617262)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 23:
          v76 = 0xE700000000000000;
          v77 = 0x65646F63726162;
          goto LABEL_111;
        case 24:
          v76 = 0xE900000000000065;
          if (v73 != 0x727574706C756373)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 25:
          v76 = 0xE700000000000000;
          if (v73 != 0x656E696C796B73)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        case 26:
          v76 = 0xE800000000000000;
          if (v73 != 0x44327463656A626FLL)
          {
            goto LABEL_28;
          }

          goto LABEL_112;
        default:
LABEL_111:
          if (v73 != v77)
          {
            goto LABEL_28;
          }

LABEL_112:
          if (v72 == v76)
          {
            sub_1D99AE054(v160, v159);

            sub_1D99AE0B0(v160);
LABEL_150:
            sub_1D99AE0B0(v162);
LABEL_155:
            v30 = v156;
LABEL_156:
            v49 = v154;
            v48 = v155;
            v51 = v153;
LABEL_157:
            if (++v50 == v49)
            {
              goto LABEL_11;
            }

            if (v50 >= *(v48 + 16))
            {
              __break(1u);
              goto LABEL_164;
            }

            goto LABEL_25;
          }

LABEL_28:
          v64 = sub_1D9C7E7DC();
          sub_1D99AE054(v160, v159);

          sub_1D99AE0B0(v160);
          if (v64)
          {
            goto LABEL_150;
          }

          break;
      }
    }

    ++v62;
    v63 += 10;
    if (v61 == v62)
    {
      goto LABEL_116;
    }
  }

  __break(1u);
  return v164;
}

void *sub_1D9AC5EF4(uint64_t a1, uint64_t a2)
{
  v213 = a2;
  v188 = sub_1D9C7D8DC();
  v3 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v192 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule(0);
  v209 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v182 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v173 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v174 = &v169 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v171 = &v169 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v172 = &v169 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v178 = &v169 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v177 = &v169 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v184 = (&v169 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v169 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v219 = (&v169 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v181 = &v169 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v180 = &v169 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v193 = &v169 - v32;
  *&v255 = a1;
  v175 = a1;

  sub_1D9AC3CD4(&v255);
  v264 = v255;
  v33 = *(v255 + 16);
  if (!v33)
  {
    goto LABEL_133;
  }

  v34 = 0;
  v215 = 0x80000001D9CA2910;
  v216 = 0x80000001D9CA2950;
  v187 = (v3 + 8);
  v35 = MEMORY[0x1E69E7CC0];
  v183 = MEMORY[0x1E69E7CC0];
  v225 = v255;
  v36 = v255;
  v191 = v24;
  v37 = v219;
  v176 = v33;
  do
  {
    v38 = *(v36 + 16);
    if (v34 >= v38)
    {
      goto LABEL_153;
    }

    v39 = v34 + 1;
    v222 = (*(v182 + 80) + 32) & ~*(v182 + 80);
    v40 = *(v182 + 72);
    v220 = v40 * v34;
    v41 = v36 + v222 + v40 * v34;
    v42 = *(v41 + 104);
    v186 = v34 + 1;
    if (v42 == 1)
    {
      goto LABEL_3;
    }

    v223 = v34;
    v194 = v40;
    v185 = v38;
    sub_1D9AC7620(v41, v193, type metadata accessor for VisualUnderstanding.ImageRegion);
    v43 = v185;
    if (v39 != v185)
    {
      v54 = v39;
      while (1)
      {
        if (v54 >= v43)
        {
          goto LABEL_149;
        }

        v55 = *(v36 + 16);
        if (v54 >= v55)
        {
          goto LABEL_150;
        }

        v56 = v36 + v222;
        v221 = v54 * v194;
        v57 = v36 + v222 + v54 * v194;
        if ((*(v57 + 104) & 1) == 0)
        {
          break;
        }

LABEL_21:
        v45 = v36;
LABEL_22:
        v44 = v36;
        ++v54;
        v36 = v45;
        if (v54 == v43)
        {
          goto LABEL_8;
        }
      }

      v58 = *(v193 + 48);
      v59 = (v58 + 156);
      v60 = *(v58 + 16) + 1;
      do
      {
        if (!--v60)
        {
          goto LABEL_21;
        }

        v61 = *v59;
        v59 += 160;
      }

      while ((v61 & 1) == 0);
      if (v223 >= v55)
      {
        goto LABEL_154;
      }

      v227 = v54;
      v226 = v36;
      v62 = v35;
      v36 = type metadata accessor for VisualUnderstanding.ImageRegion;
      v63 = v180;
      sub_1D9AC7620(v56 + v220, v180, type metadata accessor for VisualUnderstanding.ImageRegion);
      v64 = v57;
      v65 = v181;
      sub_1D9AC7620(v64, v181, type metadata accessor for VisualUnderstanding.ImageRegion);
      v66 = sub_1D9B708F0(v63, v65);
      sub_1D9AC7688(v65, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9AC7688(v63, type metadata accessor for VisualUnderstanding.ImageRegion);
      v217 = *(v66 + 16);
      if (!v217)
      {

        v36 = v226;
        v45 = v226;
        v35 = v62;
        v43 = v185;
        v54 = v227;
        goto LABEL_22;
      }

      v67 = 0;
      v68 = *(v213 + 16);
      v211 = v66;
      v212 = v66 + 32;
      v207 = v226;
      v35 = v62;
      v210 = v68;
      while (1)
      {
        if (v67 >= *(v66 + 16))
        {
          goto LABEL_147;
        }

        if (!v68)
        {
          goto LABEL_34;
        }

        v218 = v67;
        v228 = *(v212 + v67);
        v36 = v213 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
        v69 = *(v209 + 72);
        v70 = v68;
        do
        {
          sub_1D9AC7620(v36, v7, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule);
          v71 = 0xE300000000000000;
          v72 = 7631457;
          switch(v228)
          {
            case 1:
              v71 = 0xE600000000000000;
              v72 = 0x65727574616ELL;
              break;
            case 2:
              v71 = 0xE800000000000000;
              v72 = 0x6B72616D646E616CLL;
              break;
            case 3:
              v71 = 0xEF6B72616D646E61;
              v72 = 0x4C6C61727574616ELL;
              break;
            case 4:
              v71 = 0xE500000000000000;
              v72 = 0x616964656DLL;
              break;
            case 5:
              v71 = 0xE400000000000000;
              v72 = 1802465122;
              break;
            case 6:
              v71 = 0xE500000000000000;
              v72 = 0x6D75626C61;
              break;
            case 7:
              v71 = 0xE400000000000000;
              v72 = 1937006947;
              break;
            case 8:
              v71 = 0xE400000000000000;
              v72 = 1936158564;
              break;
            case 9:
              v71 = 0xE700000000000000;
              v73 = 1835626081;
              goto LABEL_60;
            case 10:
              v71 = 0xE500000000000000;
              v72 = 0x7364726962;
              break;
            case 11:
              v71 = 0xE700000000000000;
              v72 = 0x73746365736E69;
              break;
            case 12:
              v71 = 0xE800000000000000;
              v72 = 0x73656C6974706572;
              break;
            case 13:
              v71 = 0xE700000000000000;
              v73 = 1835884909;
LABEL_60:
              v72 = v73 | 0x736C6100000000;
              break;
            case 14:
              v72 = 0xD000000000000010;
              v71 = v215;
              break;
            case 15:
              v71 = 0xE700000000000000;
              v72 = 0x6C657261707061;
              break;
            case 16:
              v71 = 0xEB00000000736569;
              v72 = 0x726F737365636361;
              break;
            case 17:
              v71 = 0xE400000000000000;
              v72 = 1685024614;
              break;
            case 18:
              v71 = 0xEA0000000000746ELL;
              v72 = 0x6F726665726F7473;
              break;
            case 19:
              v74 = 1852270963;
              goto LABEL_67;
            case 20:
              v72 = 0xD000000000000011;
              v71 = v216;
              break;
            case 21:
              v74 = 1869903201;
LABEL_67:
              v72 = v74 | 0x626D795300000000;
              v71 = 0xEA00000000006C6FLL;
              break;
            case 22:
              v71 = 0xEF6C6F626D79536FLL;
              v72 = 0x676F4C646E617262;
              break;
            case 23:
              v71 = 0xE700000000000000;
              v72 = 0x65646F63726162;
              break;
            case 24:
              v71 = 0xE900000000000065;
              v72 = 0x727574706C756373;
              break;
            case 25:
              v71 = 0xE700000000000000;
              v72 = 0x656E696C796B73;
              break;
            case 26:
              v71 = 0xE800000000000000;
              v72 = 0x44327463656A626FLL;
              break;
            default:
              break;
          }

          if (*v7 == v72 && *(v7 + 1) == v71)
          {

            v77 = *(v35 + 16);
            if (v77)
            {
              goto LABEL_76;
            }

LABEL_90:

            v97 = v225;

            v35 = sub_1D9AC4E40(v98);

            v77 = *(v35 + 16);
            v226 = v97;
            goto LABEL_76;
          }

          v76 = sub_1D9C7E7DC();

          if ((v76 & 1) == 0)
          {
            goto LABEL_40;
          }

          v77 = *(v35 + 16);
          if (!v77)
          {
            goto LABEL_90;
          }

LABEL_76:
          if (v227 >= v77)
          {
            __break(1u);
LABEL_133:
            v183 = MEMORY[0x1E69E7CC0];
            goto LABEL_135;
          }

          v78 = *(v35 + 8 * v227 + 32);
          if (v78 && *(v78 + 16))
          {

            v79 = sub_1D99EE138(v228);
            if ((v80 & 1) == 0)
            {

LABEL_39:

              goto LABEL_40;
            }

            v81 = *(*(v78 + 56) + 4 * v79);

            if (v81 <= 0.0)
            {
              goto LABEL_39;
            }

            v82 = v226[2];
            if (v223 >= v82)
            {
              __break(1u);
LABEL_146:
              __break(1u);
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              v183 = sub_1D9AF8A90(0, v183[2] + 1, 1, v183);
              goto LABEL_141;
            }

            v224 = v35;
            v83 = v226 + v222;
            sub_1D9AC7620(v226 + v222 + v220, v37, type metadata accessor for VisualUnderstanding.ImageRegion);
            if (v227 >= v82)
            {
              goto LABEL_146;
            }

            sub_1D9AC7620(&v83[v221], v24, type metadata accessor for VisualUnderstanding.ImageRegion);

            v84 = v37;
            v85 = v24;
            v86 = *(v84 + 6);
            v87 = *(v7 + 4);
            v88 = *(v7 + 5);
            if (sub_1D9A19E7C(v87, v88, v86) & 1) != 0 && (v89 = sub_1D9A19E7C(*(v7 + 2), *(v7 + 3), *(v85 + 48)), v90 = v223, v91 = v227, (v89) || (sub_1D9A19E7C(*(v7 + 2), *(v7 + 3), v86) & 1) != 0 && (v92 = sub_1D9A19E7C(v87, v88, *(v85 + 48)), v90 = v227, v91 = v223, (v92))
            {
              v214 = v90;
              v208 = v91;
              v93 = *(v7 + 12);
              v94 = v219;
              v95 = v219[1];
              v255 = *v219;
              v256 = v95;
              v96 = *(v85 + 16);
              v246 = *v85;
              v247 = v96;
              v24 = v85;
              if (v93 <= sub_1D9A47A7C(&v246))
              {
                v100 = *(v7 + 13);
                sub_1D9AC7688(v94, type metadata accessor for VisualUnderstanding.ImageRegion);
                v37 = v94;
                if (v100 <= v81)
                {
                  sub_1D9AC7688(v24, type metadata accessor for VisualUnderstanding.ImageRegion);
                  if (v208 >= v226[2])
                  {
                    goto LABEL_155;
                  }

                  v36 = v194;
                  v170 = v208 * v194;
                  v101 = v184;
                  sub_1D9AC7620(&v83[v208 * v194], v184, type metadata accessor for VisualUnderstanding.ImageRegion);
                  swift_beginAccess();
                  v102 = *(v101 + 48);
                  v103 = *(v102 + 16);

                  v190 = v103;
                  if (!v103)
                  {
                    v225 = MEMORY[0x1E69E7CC0];
                    v35 = v224;
LABEL_116:

                    v150 = v184;
                    *(v184 + 6) = v225;

                    sub_1D9AC7620(v150, v177, type metadata accessor for VisualUnderstanding.ImageRegion);
                    swift_beginAccess();
                    v151 = v226;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v151 = sub_1D9B1A6FC(v151);
                    }

                    v66 = v211;
                    if (v208 >= *(v151 + 2))
                    {
                      goto LABEL_156;
                    }

                    v152 = v208;
                    sub_1D99B1DB0(v177, &v151[v222 + v170]);
                    v264 = v151;
                    swift_endAccess();
                    sub_1D9AC7688(v7, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule);
                    if (v223 == v152)
                    {
                      v36 = v193;
                      sub_1D9AC7688(v193, type metadata accessor for VisualUnderstanding.ImageRegion);
                      sub_1D9AC7620(v184, v36, type metadata accessor for VisualUnderstanding.ImageRegion);
                    }

                    sub_1D9AC7688(v184, type metadata accessor for VisualUnderstanding.ImageRegion);
                    v225 = v151;
                    v226 = v151;
                    v207 = v151;
                    goto LABEL_33;
                  }

                  v104 = 0;
                  v105 = (v102 + 32);
                  v179 = &v83[v214 * v36];
                  v225 = MEMORY[0x1E69E7CC0];
                  v189 = v102;
                  while (2)
                  {
                    if (v104 >= *(v102 + 16))
                    {
                      goto LABEL_151;
                    }

                    v207 = v104;
                    v106 = v105[1];
                    v255 = *v105;
                    v256 = v106;
                    v107 = v105[2];
                    v108 = v105[3];
                    v109 = v105[5];
                    v259 = v105[4];
                    v260 = v109;
                    v257 = v107;
                    v258 = v108;
                    v110 = v105[6];
                    v111 = v105[7];
                    v112 = v105[8];
                    *(v263 + 13) = *(v105 + 141);
                    v262 = v111;
                    v263[0] = v112;
                    v261 = v110;
                    v113 = v255;
                    v252 = v110;
                    v253 = v111;
                    v254[0] = v112;
                    *(v254 + 13) = *(v263 + 13);
                    v248 = v257;
                    v249 = v258;
                    v250 = v259;
                    v251 = v109;
                    v246 = v255;
                    v247 = v256;
                    v114 = sub_1D9A15C94(v255);
                    v116 = v115;
                    if (v114 == sub_1D9A15C94(v228) && v116 == v117)
                    {
                      sub_1D99AE054(&v255, &v237);
                      sub_1D99AE054(&v255, &v237);

                      goto LABEL_103;
                    }

                    v118 = sub_1D9C7E7DC();
                    sub_1D99AE054(&v255, &v237);
                    sub_1D99AE054(&v255, &v237);

                    if (v118)
                    {
LABEL_103:
                      v119 = v192;
                      static Logger.argos.getter(v192);
                      v120 = sub_1D9C7D8BC();
                      v121 = sub_1D9C7E09C();
                      if (os_log_type_enabled(v120, v121))
                      {
                        v205 = v121;
                        *&v206 = v120;
                        v36 = swift_slowAlloc();
                        v122 = swift_slowAlloc();
                        *&v230[0] = v122;
                        *v36 = 136315650;
                        v123 = v184[1];
                        v237 = *v184;
                        v238 = v123;
                        v124 = NormalizedRect.loggingDescription.getter();
                        v126 = sub_1D9A0E224(v124, v125, v230);

                        *(v36 + 4) = v126;
                        *(v36 + 12) = 2080;
                        v127 = sub_1D9A15C94(v113);
                        v129 = sub_1D9A0E224(v127, v128, v230);

                        *(v36 + 14) = v129;
                        *(v36 + 22) = 2080;
                        if (v214 >= v226[2])
                        {
                          goto LABEL_152;
                        }

                        v130 = *(v179 + 1);
                        v237 = *v179;
                        v238 = v130;
                        v131 = NormalizedRect.loggingDescription.getter();
                        v133 = sub_1D9A0E224(v131, v132, v230);

                        *(v36 + 24) = v133;
                        v134 = v206;
                        _os_log_impl(&dword_1D9962000, v206, v205, "%s unselects %s because this region overlaps with %s and satisfies region_suppression_rule.", v36, 0x20u);
                        swift_arrayDestroy();
                        MEMORY[0x1DA7405F0](v122, -1, -1);
                        MEMORY[0x1DA7405F0](v36, -1, -1);

                        (*v187)(v192, v188);
                      }

                      else
                      {

                        (*v187)(v119, v188);
                      }

                      swift_beginAccess();
                      BYTE12(v253) = 0;
                      v236[0] = v254[0];
                      *(v236 + 13) = *(v254 + 13);
                      v230[2] = v248;
                      v231 = v249;
                      v232 = v250;
                      v233 = v251;
                      v230[0] = v246;
                      v230[1] = v247;
                      v234 = v252;
                      v235 = v253;
                      v243 = v252;
                      v244 = v253;
                      v245[0] = v254[0];
                      *(v245 + 13) = *(v254 + 13);
                      v239 = v248;
                      v240 = v249;
                      v241 = v250;
                      v242 = v251;
                      v237 = v246;
                      v238 = v247;
                      sub_1D99AE054(v230, v229);
                      sub_1D99AE0B0(&v237);
                      sub_1D99AE0B0(&v255);
                      v135 = BYTE12(v236[1]);
                      v136 = DWORD2(v236[1]);
                      v206 = *(v236 + 8);
                      v205 = BYTE1(v236[0]);
                      v204 = LOBYTE(v236[0]);
                      v203 = HIBYTE(v235);
                      v202 = BYTE14(v235);
                      v201 = BYTE13(v235);
                      v137 = BYTE12(v235);
                      v138 = DWORD2(v235);
                      v139 = v235;
                      v199 = v234;
                      v200 = v233;
                      v197 = v231;
                      v198 = v232;
                      v140 = BYTE8(v230[2]);
                      v196 = *(&v230[1] + 8);
                      v141 = *(v230 + 8);
                    }

                    else
                    {
                      v234 = v252;
                      v235 = v253;
                      v236[0] = v254[0];
                      *(v236 + 13) = *(v254 + 13);
                      v230[2] = v248;
                      v231 = v249;
                      v232 = v250;
                      v233 = v251;
                      v230[0] = v246;
                      v230[1] = v247;
                      v243 = v252;
                      v244 = v253;
                      v245[0] = v254[0];
                      *(v245 + 13) = *(v254 + 13);
                      v239 = v248;
                      v240 = v249;
                      v241 = v250;
                      v242 = v251;
                      v237 = v246;
                      v238 = v247;
                      sub_1D99AE054(v230, v229);
                      sub_1D99AE0B0(&v237);
                      sub_1D99AE0B0(&v255);
                      v135 = BYTE12(v236[1]);
                      v136 = DWORD2(v236[1]);
                      v206 = *(v236 + 8);
                      v205 = BYTE1(v236[0]);
                      v204 = LOBYTE(v236[0]);
                      v203 = HIBYTE(v235);
                      v202 = BYTE14(v235);
                      v201 = BYTE13(v235);
                      v137 = BYTE12(v235);
                      v138 = DWORD2(v235);
                      v139 = v235;
                      v199 = v234;
                      v200 = v233;
                      v197 = v231;
                      v198 = v232;
                      v140 = BYTE8(v230[2]);
                      v196 = *(&v230[1] + 8);
                      v141 = *(v230 + 8);
                    }

                    v195 = v141;
                    v142 = v230[0];
                    v143 = v135;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v225 = sub_1D9AF8974(0, *(v225 + 2) + 1, 1, v225);
                    }

                    v36 = *(v225 + 2);
                    v144 = *(v225 + 3);
                    if (v36 >= v144 >> 1)
                    {
                      v225 = sub_1D9AF8974((v144 > 1), v36 + 1, 1, v225);
                    }

                    v145 = v225;
                    *(v225 + 2) = v36 + 1;
                    v146 = &v145[160 * v36];
                    v146[32] = v142;
                    v104 = (v207 + 1);
                    LODWORD(v145) = *(&v246 + 3);
                    *(v146 + 33) = v246;
                    *(v146 + 9) = v145;
                    v147 = v196;
                    *(v146 + 40) = v195;
                    *(v146 + 56) = v147;
                    v146[72] = v140;
                    LODWORD(v145) = *(&v237 + 3);
                    *(v146 + 73) = v237;
                    *(v146 + 19) = v145;
                    v148 = v198;
                    *(v146 + 5) = v197;
                    *(v146 + 6) = v148;
                    v149 = v199;
                    *(v146 + 7) = v200;
                    *(v146 + 8) = v149;
                    *(v146 + 18) = v139;
                    *(v146 + 38) = v138;
                    v146[156] = v137;
                    v146[157] = v201;
                    v146[158] = v202;
                    v146[159] = v203;
                    v146[160] = v204;
                    v146[161] = v205;
                    LODWORD(v145) = v230[0];
                    *(v146 + 83) = WORD2(v230[0]);
                    *(v146 + 162) = v145;
                    *(v146 + 168) = v206;
                    *(v146 + 46) = v136;
                    v146[188] = v143;
                    v105 += 10;
                    v24 = v191;
                    v35 = v224;
                    v102 = v189;
                    if (v190 == v104)
                    {
                      goto LABEL_116;
                    }

                    continue;
                  }
                }
              }

              else
              {
                sub_1D9AC7688(v94, type metadata accessor for VisualUnderstanding.ImageRegion);
                v37 = v94;
              }

              sub_1D9AC7688(v24, type metadata accessor for VisualUnderstanding.ImageRegion);
              v35 = v224;
            }

            else
            {
              v99 = v219;
              sub_1D9AC7688(v219, type metadata accessor for VisualUnderstanding.ImageRegion);
              sub_1D9AC7688(v85, type metadata accessor for VisualUnderstanding.ImageRegion);
              v24 = v85;
              v37 = v99;
              v35 = v224;
            }
          }

LABEL_40:
          sub_1D9AC7688(v7, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule);
          v36 += v69;
          --v70;
        }

        while (v70);
        v66 = v211;
LABEL_33:
        v67 = v218;
        v68 = v210;
LABEL_34:
        if (++v67 == v217)
        {

          v36 = v226;
          v43 = v185;
          v54 = v227;
          v45 = v207;
          goto LABEL_22;
        }
      }
    }

    v44 = v36;
    v45 = v36;
LABEL_8:
    v228 = v44;
    v207 = v45;
    v224 = v35;
    v46 = *(v193 + 48);
    v47 = *(v46 + 16);
    if (v47)
    {
      v48 = 0;
      v49 = (v46 + 156);
      v50 = MEMORY[0x1E69E7CC0];
      while (v48 < *(v46 + 16))
      {
        if (*v49)
        {
          v51 = *(v49 - 3);
        }

        else
        {
          v51 = 0.0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_1D9AF84B8(0, *(v50 + 2) + 1, 1, v50);
        }

        v53 = *(v50 + 2);
        v52 = *(v50 + 3);
        v36 = v53 + 1;
        if (v53 >= v52 >> 1)
        {
          v50 = sub_1D9AF84B8((v52 > 1), v53 + 1, 1, v50);
        }

        ++v48;
        *(v50 + 2) = v36;
        *&v50[4 * v53 + 32] = v51;
        v49 += 40;
        if (v47 == v48)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_148;
    }

    v50 = MEMORY[0x1E69E7CC0];
LABEL_125:
    v153 = sub_1D9BC1BF0(v50);

    v154 = *&v153;
    if ((v153 & 0x100000000) != 0)
    {
      v154 = 0.0;
    }

    v155 = v193;
    *(v193 + 72) = v154;
    sub_1D9AC7620(v155, v178, type metadata accessor for VisualUnderstanding.ImageRegion);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v183 = sub_1D9AF8A90(0, v183[2] + 1, 1, v183);
    }

    v24 = v191;
    v35 = v224;
    v157 = v183[2];
    v156 = v183[3];
    if (v157 >= v156 >> 1)
    {
      v183 = sub_1D9AF8A90(v156 > 1, v157 + 1, 1, v183);
    }

    v158 = v183;
    v183[2] = v157 + 1;
    sub_1D99B1CE4(v178, v158 + v222 + v157 * v194);
    sub_1D9AC7688(v193, type metadata accessor for VisualUnderstanding.ImageRegion);
    v36 = v207;
    v33 = v176;
LABEL_3:
    v34 = v186;
  }

  while (v186 != v33);

LABEL_135:
  v159 = v174;
  v160 = *(v175 + 16);
  if (!v160)
  {
    goto LABEL_144;
  }

  v37 = ((*(v182 + 80) + 32) & ~*(v182 + 80));
  v36 = *(v182 + 72);
  v161 = v37 + v175;
  while (1)
  {
    sub_1D9AC7620(v161, v159, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (*(v159 + 104))
    {
      break;
    }

    sub_1D9AC7688(v159, type metadata accessor for VisualUnderstanding.ImageRegion);
    v161 += v36;
    if (!--v160)
    {
      goto LABEL_144;
    }
  }

  v162 = v171;
  sub_1D99B1CE4(v159, v171);
  v163 = v162;
  v164 = v172;
  sub_1D99B1CE4(v163, v172);
  sub_1D9AC7620(v164, v173, type metadata accessor for VisualUnderstanding.ImageRegion);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_157;
  }

LABEL_141:
  v166 = v183[2];
  v165 = v183[3];
  if (v166 >= v165 >> 1)
  {
    v183 = sub_1D9AF8A90(v165 > 1, v166 + 1, 1, v183);
  }

  sub_1D9AC7688(v172, type metadata accessor for VisualUnderstanding.ImageRegion);
  v167 = v183;
  v183[2] = v166 + 1;
  sub_1D99B1CE4(v173, v37 + v167 + v166 * v36);
LABEL_144:

  return v183;
}

uint64_t sub_1D9AC7620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9AC7688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9AC76E8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v15, v17) == 1)
  {
    sub_1D99A6AE0(a1, &qword_1ECB51220);
    v20 = sub_1D99EE1AC(a2, a3, a4, a5);
    if (v21)
    {
      v22 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v6;
      v28 = *v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D9C13C18();
        v24 = v28;
      }

      sub_1D9ADC304(*(v24 + 56) + *(v16 + 72) * v22, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9C0F4E4(v22, v24);
      *v6 = v24;
      (*(v16 + 56))(v14, 0, 1, v15);
    }

    else
    {
      (*(v16 + 56))(v14, 1, 1, v15);
    }

    return sub_1D99A6AE0(v14, &qword_1ECB51220);
  }

  else
  {
    sub_1D9ADC304(a1, v19, type metadata accessor for VisualUnderstanding.ImageRegion);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    result = sub_1D9C1113C(v19, v25, a2, a3, a4, a5);
    *v6 = v28;
  }

  return result;
}

uint64_t sub_1D9AC7968(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for StorefrontSignals(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1D99A6AE0(a1, &qword_1ECB52FE0);
    v14 = sub_1D99F0BB0(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D9C147F8();
        v18 = v22;
      }

      sub_1D9ADC304(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for StorefrontSignals);
      sub_1D9C0FB00(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D99A6AE0(v8, &qword_1ECB52FE0);
  }

  else
  {
    sub_1D9ADC304(a1, v13, type metadata accessor for StorefrontSignals);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1D9C11494(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1D9AC7BBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B78);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1D99A6AE0(a1, &qword_1ECB51B78);
    v14 = sub_1D99EE138(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D9C14BA4();
        v18 = v22;
      }

      sub_1D9ADC304(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
      sub_1D9C0FCAC(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D99A6AE0(v8, &qword_1ECB51B78);
  }

  else
  {
    sub_1D9ADC304(a1, v13, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1D9C1175C(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1D9AC7E10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1D9C7B80C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1D99A6AE0(a1, &qword_1ECB51FD0);
    v14 = sub_1D99EE004(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D9C15364();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1D9C10124(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D99A6AE0(v8, &qword_1ECB51FD0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1D9C11A78(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1D9AC8060(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1D9C11BE0(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1D9C7B93C();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1D99EE518(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1D9C15734();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1D9C7B93C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1D9C104A0(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1D9C7B93C();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1D9AC8260(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(unint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v13 = sub_1D9C7B93C();
    result = (*(*(v13 - 8) + 8))(a3, v13);
    *v6 = v28;
  }

  else
  {
    v17 = sub_1D99EE518(a3);
    if (v18)
    {
      v19 = v17;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v6;
      v29 = *v7;
      if (!v20)
      {
        a6();
        v21 = v29;
      }

      v22 = *(v21 + 48);
      v23 = sub_1D9C7B93C();
      v24 = *(v23 - 8);
      v25 = *(v24 + 8);
      v25(v22 + *(v24 + 72) * v19, v23);

      a5(v19, v21);
      result = (v25)(a3, v23);
      *v7 = v21;
    }

    else
    {
      v26 = sub_1D9C7B93C();
      v27 = *(*(v26 - 8) + 8);

      return v27(a3, v26);
    }
  }

  return result;
}

uint64_t sub_1D9AC8450()
{
  v0 = sub_1D9C7DA1C();
  __swift_allocate_value_buffer(v0, qword_1EDD34480);
  *__swift_project_value_buffer(v0, qword_1EDD34480) = 10;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_1D9AC84E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v98 = a4;
  v100 = a3;
  v102 = a2;
  v103 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v95 = v92 - v5;
  v6 = sub_1D9C7D8DC();
  v104 = *(v6 - 8);
  v105 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v99 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v97 = v92 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v94 = v92 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v93 = v92 - v13;
  v107 = sub_1D9C7DA1C();
  v101 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v92[0] = v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v96 = v92 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v106 = v92 - v18;
  v19 = sub_1D9C7E0EC();
  MEMORY[0x1EEE9AC00](v19);
  v20 = sub_1D9C7DA4C();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = sub_1D9C7E10C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92[1] = sub_1D9ADC36C();
  (*(v22 + 104))(v24, *MEMORY[0x1E69E8098], v21);
  sub_1D9C7DA3C();
  v25 = MEMORY[0x1E69E7CC0];
  v110[0] = MEMORY[0x1E69E7CC0];
  sub_1D9ADC3B8(&qword_1EDD354A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52460);
  sub_1D99C7C60(&qword_1EDD354B0, &unk_1ECB52460);
  v26 = v108;
  sub_1D9C7E34C();
  v27 = v107;
  v28 = v101;
  *(v26 + 16) = sub_1D9C7E13C();
  v29 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
  *(v26 + v29) = sub_1D9A46C00(v25);
  v30 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_encryptedCompletions;
  *(v26 + v30) = sub_1D9A46C14(v25);
  v31 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_batchEncryptedCompletions;
  v32 = v25;
  v33 = v93;
  *(v26 + v31) = sub_1D9A46E10(v32);
  v34 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_fileCacheUtils;
  type metadata accessor for FileCacheUtils(0);
  swift_allocObject();
  *(v26 + v34) = sub_1D9A56360();
  sub_1D99AB100(v102, v33, &unk_1ECB540C0);
  v35 = *(v28 + 48);
  if (v35(v33, 1, v27) == 1)
  {
    v36 = v106;
    if (qword_1EDD34478 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v27, qword_1EDD34480);
    (*(v28 + 16))(v36, v37, v27);
    v38 = v35(v33, 1, v27);
    v39 = v96;
    if (v38 != 1)
    {
      sub_1D99A6AE0(v33, &unk_1ECB540C0);
    }
  }

  else
  {
    v36 = v106;
    (*(v28 + 32))(v106, v33, v27);
    v39 = v96;
  }

  v40 = v94;
  static Logger.argos.getter(v94);
  v41 = *(v28 + 16);
  v41(v39, v36, v27);
  v42 = sub_1D9C7D8BC();
  v43 = sub_1D9C7E09C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v110[0] = v45;
    *v44 = 136315138;
    v41(v92[0], v39, v107);
    v46 = sub_1D9C7DD0C();
    v47 = v39;
    v48 = v40;
    v49 = v46;
    v50 = v28;
    v52 = v51;
    v96 = *(v50 + 8);
    (v96)(v47, v107);
    v53 = sub_1D9A0E224(v49, v52, v110);

    *(v44 + 4) = v53;
    _os_log_impl(&dword_1D9962000, v42, v43, "requestTimeoutSeconds = %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    v54 = v45;
    v27 = v107;
    MEMORY[0x1DA7405F0](v54, -1, -1);
    MEMORY[0x1DA7405F0](v44, -1, -1);

    v55 = *(v104 + 8);
    v55(v48, v105);
  }

  else
  {

    v96 = *(v28 + 8);
    (v96)(v39, v27);
    v55 = *(v104 + 8);
    v55(v40, v105);
  }

  v56 = v108;
  v41((v108 + OBJC_IVAR____TtC12VisualLookUp14NetworkService_requestTimeout), v106, v27);
  *(v56 + OBJC_IVAR____TtC12VisualLookUp14NetworkService_searchFetches) = sub_1D9A46E24(MEMORY[0x1E69E7CC0]);
  v57 = v95;
  sub_1D99AB100(v103, v95, &qword_1ECB51FD0);
  v58 = sub_1D9C7B80C();
  v59 = *(v58 - 8);
  if ((*(v59 + 48))(v57, 1, v58) == 1)
  {
    sub_1D99A6AE0(v57, &qword_1ECB51FD0);
    v60 = sub_1D9A75D94();
    v61 = v99;
    v62 = v97;
    if (v60)
    {
      if (qword_1ECB50988 != -1)
      {
        swift_once();
      }

      v63 = &off_1ECB51BA8;
    }

    else
    {
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
      }

      v63 = &qword_1EDD355A8;
    }

    v67 = *(*v63 + 32);

    v68 = sub_1D9C7DC4C();
    v69 = [v67 stringForKey_];

    if (!v69)
    {

      goto LABEL_29;
    }

    v64 = sub_1D9C7DC7C();
    v66 = v70;
  }

  else
  {
    v64 = sub_1D9C7B73C();
    v66 = v65;
    (*(v59 + 8))(v57, v58);
    v61 = v99;
    v62 = v97;
  }

  v71 = HIBYTE(v66) & 0xF;
  if ((v66 & 0x2000000000000000) == 0)
  {
    v71 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (!v71)
  {

LABEL_29:
    sub_1D9C7D16C();
    swift_allocObject();
    v75 = sub_1D9C7D15C();
    goto LABEL_30;
  }

  static Logger.argos.getter(v62);
  v72 = sub_1D9C7D8BC();
  v73 = sub_1D9C7E0AC();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_1D9962000, v72, v73, "WARNING WARNING WARNING: using custom Pegasus endpoint.", v74, 2u);
    MEMORY[0x1DA7405F0](v74, -1, -1);
  }

  v55(v62, v105);
  sub_1D9C7D16C();
  swift_allocObject();
  v75 = sub_1D9C7D14C();
LABEL_30:
  v76 = v108;
  *(v108 + OBJC_IVAR____TtC12VisualLookUp14NetworkService_vluPhotosSearchClient) = v75;
  sub_1D9C7D1AC();
  *(v76 + OBJC_IVAR____TtC12VisualLookUp14NetworkService_vluEncryptedSearchClient) = sub_1D9C7D19C();
  sub_1D9C7D18C();
  *(v76 + OBJC_IVAR____TtC12VisualLookUp14NetworkService_vluCameraSearchClient) = sub_1D9C7D17C();
  v77 = v98;
  if (!v98)
  {
    if (sub_1D9A75D94())
    {
      if (qword_1ECB50988 != -1)
      {
        swift_once();
      }

      v78 = &off_1ECB51BA8;
    }

    else
    {
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
      }

      v78 = &qword_1EDD355A8;
    }

    v79 = *(*v78 + 32);

    v80 = sub_1D9C7DC4C();
    v81 = [v79 stringForKey_];

    if (!v81)
    {

      goto LABEL_48;
    }

    v100 = sub_1D9C7DC7C();
    v77 = v82;
  }

  v83 = HIBYTE(v77) & 0xF;
  if ((v77 & 0x2000000000000000) == 0)
  {
    v83 = v100 & 0xFFFFFFFFFFFFLL;
  }

  if (v83)
  {
    static Logger.argos.getter(v61);
    v84 = sub_1D9C7D8BC();
    v85 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_1D9962000, v84, v85, "WARNING WARNING WARNING: using custom Pegasus debug parameters.", v86, 2u);
      MEMORY[0x1DA7405F0](v86, -1, -1);
    }

    v55(v61, v105);
    v87 = sub_1D9C7D0CC();
    v89 = v88;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = *v89;
    *v89 = 0x8000000000000000;
    sub_1D9C10E38(v100, v77, 0x2D656C7070612D78, 0xED00006775626564, isUniquelyReferenced_nonNull_native);
    *v89 = v109;
    v87(v110, 0);
  }

  else
  {
  }

LABEL_48:
  sub_1D99A6AE0(v102, &unk_1ECB540C0);
  sub_1D99A6AE0(v103, &qword_1ECB51FD0);
  (v96)(v106, v107);
  return v108;
}

uint64_t sub_1D9AC927C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = a7;
  v68 = a8;
  v63 = a6;
  v74 = a4;
  v75 = a5;
  v76 = a3;
  v9 = sub_1D9C7CBEC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v59 - v13;
  v65 = sub_1D9C7BA9C();
  v62 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9C7DA7C();
  v72 = *(v15 - 8);
  v73 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v71 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1D9C7B93C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v59 = v10;
    v60 = v9;
    strcpy(v90, "E2E - Search");
    HIBYTE(v90[6]) = 0;
    v90[7] = -5120;
    v91 = "Search On Server";
    v92 = 16;
    v93 = 2;
    type metadata accessor for DurationMeasurement();
    swift_allocObject();

    v70 = sub_1D9AFD4B8(v90, a2);

    v23 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
    v69 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
    v24 = swift_allocObject();
    swift_weakInit();
    (*(v18 + 16))(&v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v76 + v23, v17);
    v25 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v26 = (v19 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    (*(v18 + 32))(v27 + v25, v20, v17);
    *(v27 + v26) = v70;
    v28 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
    v29 = v75;
    *v28 = v74;
    v28[1] = v29;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1D9ADD0A4;
    *(v30 + 24) = v27;
    v31 = v69;
    v32 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(v22 + v32);
    *(v22 + v32) = 0x8000000000000000;
    v34 = v76;
    sub_1D9C11DAC(sub_1D9ADD0A0, v30, v76 + v31, isUniquelyReferenced_nonNull_native);
    *(v22 + v32) = v89;
    v35 = v34;
    swift_endAccess();
    if (sub_1D9ADA01C(v34))
    {
      sub_1D9ACA298(v34 + v31);
    }

    sub_1D9ACBE3C(v34);
    v36 = *(v22 + 16);
    v38 = v71;
    v37 = v72;
    *v71 = v36;
    v39 = v73;
    (*(v37 + 104))(v38, *MEMORY[0x1E69E8020], v73);
    v40 = v36;
    LOBYTE(v36) = sub_1D9C7DA9C();
    result = (*(v37 + 8))(v38, v39);
    if (v36)
    {
      if (sub_1D9ADA01C(v35))
      {
      }

      type metadata accessor for NetworkService(0);
      v41 = v61;
      v42 = v68;
      sub_1D9ACC130(v68);
      type metadata accessor for ServerSearchProcessor();
      v43 = v63;
      v44 = *(v63 + 144);
      v85 = *(v63 + 128);
      v86 = v44;
      v87 = *(v63 + 160);
      v88 = *(v63 + 176);
      v45 = *(v63 + 80);
      v81 = *(v63 + 64);
      v82 = v45;
      v46 = *(v63 + 112);
      v83 = *(v63 + 96);
      v84 = v46;
      v47 = *(v63 + 16);
      v77 = *v63;
      v78 = v47;
      v48 = *(v63 + 48);
      v79 = *(v63 + 32);
      v80 = v48;
      v49 = v64;
      v50 = v67;
      sub_1D99D4180(&v77, v67, v41, v42, v64);
      v51 = *(v43 + 144);
      v85 = *(v43 + 128);
      v86 = v51;
      v87 = *(v43 + 160);
      v88 = *(v43 + 176);
      v52 = *(v43 + 80);
      v81 = *(v43 + 64);
      v82 = v52;
      v53 = *(v43 + 112);
      v83 = *(v43 + 96);
      v84 = v53;
      v54 = *(v43 + 16);
      v77 = *v43;
      v78 = v54;
      v55 = *(v43 + 48);
      v79 = *(v43 + 32);
      v80 = v55;
      v56 = v66;
      sub_1D99D4CDC(&v77, v50, v41, v42, v66);
      sub_1D9AD07E0(v49, v56, v35);

      v57 = v60;
      v58 = *(v59 + 8);
      v58(v56, v60);
      v58(v49, v57);
      return (*(v62 + 8))(v41, v65);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D9AC9904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v42 = a6;
  v43 = a4;
  v44 = a5;
  v18 = sub_1D9C7B93C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v39 = a7;
    v40 = a8;
    strcpy(v47, "E2E - Search");
    HIBYTE(v47[6]) = 0;
    v47[7] = -5120;
    v48 = "Search On Server";
    v49 = 16;
    v50 = 2;
    type metadata accessor for DurationMeasurement();
    swift_allocObject();

    v24 = sub_1D9AFD4B8(v47, a2);
    v45 = a3;
    v41 = v24;

    v25 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
    v26 = swift_allocObject();
    swift_weakInit();
    (*(v19 + 16))(&v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v25, v18);
    v27 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v28 = (v20 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    v30 = v29 + v27;
    v31 = v18;
    v32 = v41;
    v33 = v45;
    (*(v19 + 32))(v30, v21, v31);
    *(v29 + v28) = v32;
    v34 = (v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
    v35 = v44;
    *v34 = v43;
    v34[1] = v35;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1D9ADC400;
    *(v36 + 24) = v29;
    v37 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v23 + v37);
    *(v23 + v37) = 0x8000000000000000;
    sub_1D9C11DAC(sub_1D9ADC418, v36, v33 + v25, isUniquelyReferenced_nonNull_native);
    *(v23 + v37) = v46;
    swift_endAccess();
    if (sub_1D9ADA01C(v33))
    {
      sub_1D9ACA298(v33 + v25);
    }

    else
    {
      sub_1D9ACBE3C(v33);
      sub_1D9ACC9F0(v42, v39, v40, v33, a9, a10, a11, a12, a13, a14);
    }
  }

  return result;
}

uint64_t sub_1D9AC9C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a4;
  v37 = sub_1D9C7B93C();
  v13 = *(v37 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v32 = a5;
    v33 = a7;
    v34 = a8;
    strcpy(v41, "E2E - Search");
    HIBYTE(v41[6]) = 0;
    v41[7] = -5120;
    v42 = "Search On Server";
    v43 = 16;
    v44 = 2;
    type metadata accessor for DurationMeasurement();
    swift_allocObject();
    v35 = sub_1D9AFD4B8(v41, 0);
    v36 = a3;
    v39 = a2;
    v18 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = v37;
    (*(v13 + 16))(&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v18, v37);
    v21 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    (*(v13 + 32))(v23 + v21, v15, v20);
    *(v23 + v22) = v35;
    v24 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
    v25 = v38;
    v26 = v39;
    *v24 = v36;
    v24[1] = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1D9ADA1B0;
    *(v27 + 24) = v23;
    v28 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_batchEncryptedCompletions;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v17 + v28);
    *(v17 + v28) = 0x8000000000000000;
    sub_1D9C11DC0(sub_1D9ADA290, v27, v26 + v18, isUniquelyReferenced_nonNull_native);
    *(v17 + v28) = v40;
    swift_endAccess();
    if (sub_1D9ADA01C(v26))
    {
      sub_1D9ACA298(v26 + v18);
    }

    else
    {
      sub_1D9ACBE3C(v26);
      sub_1D9ACDAF8(v32, v30, v33, v34, v26);
    }
  }

  return result;
}

uint64_t sub_1D9AC9F74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v40 = a4;
  v13 = sub_1D9C7B93C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v34 = a7;
    v35 = a8;
    strcpy(v42, "E2E - Search");
    HIBYTE(v42[6]) = 0;
    v42[7] = -5120;
    v43 = "Search On Server";
    v44 = 16;
    v45 = 2;
    type metadata accessor for DurationMeasurement();
    swift_allocObject();
    v37 = sub_1D9AFD4B8(v42, 0);
    v38 = a3;
    v19 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
    v36 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v14 + 16))(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2 + v19, v13);
    v21 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v39 = a2;
    v22 = v40;
    v23 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = v20;
    v25 = v24 + v21;
    v26 = v36;
    (*(v14 + 32))(v25, v16, v13);
    *(v24 + v23) = v37;
    v27 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v27 = v38;
    v27[1] = v22;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1D9ADA004;
    *(v28 + 24) = v24;
    v29 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_encryptedCompletions;
    swift_beginAccess();

    v30 = v39;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v18 + v29);
    *(v18 + v29) = 0x8000000000000000;
    sub_1D9C11DD4(sub_1D9ADD0A0, v28, v30 + v26, isUniquelyReferenced_nonNull_native);
    *(v18 + v29) = v41;
    swift_endAccess();
    if (sub_1D9ADA01C(v30))
    {
      sub_1D9ACA298(v30 + v26);
    }

    else
    {
      v32 = sub_1D9ACBE3C(v30);
      sub_1D9ACF094(v32, v33, v34, v35, a9, v30);
    }
  }

  return result;
}

uint64_t sub_1D9ACA298(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9C7DA2C();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7DA4C();
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9C7B93C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v18[1] = *(v2 + 16);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v11 + 32))(v15 + v14, v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_1D9ADC258;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = &block_descriptor_121;
  v16 = _Block_copy(aBlock);

  sub_1D9C7DA3C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D9ADC3B8(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0);
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v9, v6, v16);
  _Block_release(v16);
  (*(v21 + 8))(v6, v4);
  (*(v19 + 8))(v9, v20);
}

uint64_t sub_1D9ACA660(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30[-1] - v7;
  v9 = sub_1D9C7D8DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.argos.getter(v12);
  v13 = sub_1D9C7D8BC();
  v14 = sub_1D9C7E09C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D9962000, v13, v14, "cancel()", v15, 2u);
    MEMORY[0x1DA7405F0](v15, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_searchFetches;
    swift_beginAccess();
    if (*(*(v17 + v18) + 16))
    {

      sub_1D99EE518(a2);
      if (v19)
      {

        sub_1D9C7D93C();
      }

      else
      {
      }
    }

    v20 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
    swift_beginAccess();
    v21 = *(v17 + v20);
    if (*(v21 + 16))
    {

      v22 = sub_1D99EE518(a2);
      if (v23)
      {
        v24 = *(*(v21 + 56) + 16 * v22);

        v25 = sub_1D9C7CBEC();
        (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
        v26 = sub_1D9C7CC0C();
        (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
        sub_1D9A0EEC0();
        v27 = swift_allocError();
        *v28 = 0;
        v30[0] = 0;
        v30[1] = 0xE000000000000000;
        v29 = v27;
        v24(v8, v5, v30, &v29);

        sub_1D99A6AE0(v5, &qword_1ECB53000);
        return sub_1D99A6AE0(v8, &qword_1ECB519C8);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D9ACAA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, void *))
{
  v77 = a7;
  v78 = a8;
  v76 = a6;
  v79 = a4;
  v80 = a1;
  v82 = a3;
  v81 = type metadata accessor for NetworkService.NetworkSearchResponse(0);
  MEMORY[0x1EEE9AC00](v81);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9C7CC0C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D9C7B93C();
  v83 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v69 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v73 = sub_1D9C7D8DC();
  v22 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.argos.getter(v24);
  v70 = a2;
  v25 = a5;
  sub_1D99AB100(a2, v21, &qword_1ECB53000);
  v26 = a5;
  v27 = sub_1D9C7D8BC();
  v28 = sub_1D9C7E09C();

  v29 = os_log_type_enabled(v27, v28);
  v72 = v13;
  v71 = v14;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v85[0] = v67;
    *v30 = 136315394;
    v31 = (*(v14 + 48))(v21, 1, v13);
    if (v31 == 1)
    {
      v32 = 28526;
    }

    else
    {
      v32 = 7562617;
    }

    v33 = v12;
    if (v31 == 1)
    {
      v34 = 0xE200000000000000;
    }

    else
    {
      v34 = 0xE300000000000000;
    }

    sub_1D99A6AE0(v21, &qword_1ECB53000);
    v35 = sub_1D9A0E224(v32, v34, v85);
    v12 = v33;

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v84 = v25;
    v36 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FD8);
    v37 = sub_1D9C7DCEC();
    v39 = sub_1D9A0E224(v37, v38, v85);

    *(v30 + 14) = v39;
    _os_log_impl(&dword_1D9962000, v27, v28, "search(): completion, has response = %s, has error = %s", v30, 0x16u);
    v40 = v67;
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v40, -1, -1);
    MEMORY[0x1DA7405F0](v30, -1, -1);

    (*(v22 + 8))(v24, v73);
  }

  else
  {

    (*(v22 + 8))(v24, v73);
    sub_1D99A6AE0(v21, &qword_1ECB53000);
  }

  v41 = v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v43 = v77;
  v45 = v74;
  v44 = v75;
  if (Strong)
  {
    (*(v83 + 16))(v75, v77, v74);
    swift_beginAccess();
    sub_1D9AC8060(0, v44);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v83 + 16))(v44, v43, v45);
    swift_beginAccess();
    sub_1D9AC8260(0, 0, v44, sub_1D9C11DAC, sub_1D9C171BC, sub_1D9C159B4);
    swift_endAccess();
  }

  sub_1D9AFCCA4();
  if (v25)
  {
    sub_1D99AB100(v80, v12, &qword_1ECB519C8);
    v46 = v81;
    *&v12[*(v81 + 20)] = MEMORY[0x1E69E7CC0];
    v47 = &v12[*(v46 + 24)];
    v48 = v79;
    *v47 = v82;
    *(v47 + 1) = v48;
    v49 = v41;

    a9(v12, v41);
    v50 = v41;
  }

  else
  {
    v51 = v69;
    sub_1D99AB100(v70, v69, &qword_1ECB53000);
    v52 = v71;
    v53 = v72;
    if ((*(v71 + 48))(v51, 1, v72) != 1)
    {
      v60 = v68;
      (*(v52 + 32))(v68, v51, v53);
      sub_1D99AB100(v80, v12, &qword_1ECB519C8);
      v61 = sub_1D9C7CBFC();
      v63 = v81;
      v62 = v82;
      *&v12[*(v81 + 20)] = v61;
      v64 = &v12[*(v63 + 24)];
      v65 = v79;
      *v64 = v62;
      *(v64 + 1) = v65;

      a9(v12, 0);
      sub_1D9ADA658(v12, type metadata accessor for NetworkService.NetworkSearchResponse);
      return (*(v52 + 8))(v60, v53);
    }

    sub_1D99A6AE0(v51, &qword_1ECB53000);
    sub_1D99AB100(v80, v12, &qword_1ECB519C8);
    v54 = v81;
    *&v12[*(v81 + 20)] = MEMORY[0x1E69E7CC0];
    v55 = &v12[*(v54 + 24)];
    v56 = v79;
    *v55 = v82;
    *(v55 + 1) = v56;
    sub_1D99DF020();
    v57 = swift_allocError();
    *v58 = 0;
    *(v58 + 8) = 0;
    *(v58 + 16) = 2;

    a9(v12, v57);
    v50 = v57;
  }

  return sub_1D9ADA658(v12, type metadata accessor for NetworkService.NetworkSearchResponse);
}

uint64_t sub_1D9ACB2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, void *))
{
  v69 = a6;
  v70 = a8;
  v67 = a7;
  v75 = a3;
  v76 = a4;
  v71 = a1;
  v73 = type metadata accessor for NetworkService.NetworkEncryptedSearchResponse(0);
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9C7D04C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9C7B93C();
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51518);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v62 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  v68 = sub_1D9C7D8DC();
  v22 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.argos.getter(v24);
  v63 = a2;
  sub_1D99AB100(a2, v21, &qword_1ECB51518);
  v25 = a5;
  v26 = sub_1D9C7D8BC();
  v27 = sub_1D9C7E09C();

  v28 = os_log_type_enabled(v26, v27);
  v74 = v12;
  v72 = v13;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v79[0] = v30;
    *v29 = 136315394;
    v31 = (*(v13 + 48))(v21, 1, v12);
    if (v31 == 1)
    {
      v32 = 28526;
    }

    else
    {
      v32 = 7562617;
    }

    if (v31 == 1)
    {
      v33 = 0xE200000000000000;
    }

    else
    {
      v33 = 0xE300000000000000;
    }

    sub_1D99A6AE0(v21, &qword_1ECB51518);
    v34 = sub_1D9A0E224(v32, v33, v79);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v78 = a5;
    v35 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FD8);
    v36 = sub_1D9C7DCEC();
    v38 = sub_1D9A0E224(v36, v37, v79);

    *(v29 + 14) = v38;
    _os_log_impl(&dword_1D9962000, v26, v27, "encryptedSearch(): completion, has response = %s, has error = %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v30, -1, -1);
    MEMORY[0x1DA7405F0](v29, -1, -1);

    (*(v22 + 8))(v24, v68);
  }

  else
  {

    (*(v22 + 8))(v24, v68);
    sub_1D99A6AE0(v21, &qword_1ECB51518);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v39 = v66;
    (*(v64 + 16))(v66, v67, v65);
    swift_beginAccess();
    sub_1D9AC8260(0, 0, v39, sub_1D9C11DD4, sub_1D9C171BC, sub_1D9C159DC);
    swift_endAccess();
  }

  sub_1D9AFCCA4();
  if (a5)
  {
    v40 = v77;
    sub_1D99AB100(v71, v77, &qword_1ECB52FD0);
    v41 = v73;
    (*(v72 + 56))(v40 + *(v73 + 20), 1, 1, v74);
    v42 = (v40 + *(v41 + 24));
    v43 = v76;
    *v42 = v75;
    v42[1] = v43;
    v44 = a5;

    a9(v40, a5);

    return sub_1D9ADA658(v40, type metadata accessor for NetworkService.NetworkEncryptedSearchResponse);
  }

  else
  {
    v46 = v62;
    sub_1D99AB100(v63, v62, &qword_1ECB51518);
    v47 = v72;
    v48 = v74;
    if ((*(v72 + 48))(v46, 1, v74) == 1)
    {
      sub_1D99A6AE0(v46, &qword_1ECB51518);
      v49 = v77;
      sub_1D99AB100(v71, v77, &qword_1ECB52FD0);
      v50 = v73;
      (*(v47 + 56))(v49 + *(v73 + 20), 1, 1, v48);
      v51 = (v49 + *(v50 + 24));
      v52 = v76;
      *v51 = v75;
      v51[1] = v52;
      sub_1D99DF020();
      v53 = swift_allocError();
      *v54 = 0;
      *(v54 + 8) = 0;
      *(v54 + 16) = 2;

      a9(v49, v53);

      return sub_1D9ADA658(v49, type metadata accessor for NetworkService.NetworkEncryptedSearchResponse);
    }

    else
    {
      v55 = v61;
      (*(v47 + 32))(v61, v46, v48);
      v56 = v77;
      sub_1D99AB100(v71, v77, &qword_1ECB52FD0);
      v57 = v73;
      v58 = *(v73 + 20);
      (*(v47 + 16))(v56 + v58, v55, v48);
      (*(v47 + 56))(v56 + v58, 0, 1, v48);
      v59 = (v56 + *(v57 + 24));
      v60 = v76;
      *v59 = v75;
      v59[1] = v60;

      a9(v56, 0);
      sub_1D9ADA658(v56, type metadata accessor for NetworkService.NetworkEncryptedSearchResponse);
      return (*(v47 + 8))(v55, v48);
    }
  }
}

uint64_t sub_1D9ACBB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v35 = a1;
  v36 = a8;
  v33 = a7;
  v37 = a10;
  v38 = a9;
  v15 = sub_1D9C7B93C();
  v31 = *(v15 - 8);
  v32 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v34 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9C7D8DC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.argos.getter(v20);

  v21 = sub_1D9C7D8BC();
  v22 = sub_1D9C7E09C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v30[1] = a6;
    v24 = a3;
    v25 = a4;
    v26 = v23;
    *v23 = 134218240;
    *(v23 + 4) = *(a2 + 16);

    *(v26 + 12) = 2048;
    *(v26 + 14) = *(a5 + 16);

    _os_log_impl(&dword_1D9962000, v21, v22, "encryptedSearch(): completion, has response = %ld, has error = %ld", v26, 0x16u);
    v27 = v26;
    a4 = v25;
    a3 = v24;
    MEMORY[0x1DA7405F0](v27, -1, -1);
  }

  else
  {
  }

  (*(v18 + 8))(v20, v17);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v28 = v34;
    (*(v31 + 16))(v34, v33, v32);
    swift_beginAccess();
    sub_1D9AC8260(0, 0, v28, sub_1D9C11DC0, sub_1D9C171BC, sub_1D9C159C8);
    swift_endAccess();
  }

  sub_1D9AFCCA4();
  return v38(v35, a2, a3, a4, a5);
}

uint64_t sub_1D9ACBE3C(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = *(a1 + OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock);

  os_unfair_lock_lock(v3 + 4);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D9ADC248;
  *(v4 + 24) = v2;
  v5 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_onCancels;
  swift_beginAccess();
  v6 = *(a1 + v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v5) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1D9AFAC84(0, v6[2] + 1, 1, v6);
    *(a1 + v5) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1D9AFAC84((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_1D9ADC250;
  v10[5] = v4;
  *(a1 + v5) = v6;
  swift_endAccess();
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1D9ACBFB4(uint64_t a1)
{
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.argos.getter(v5);
  v6 = sub_1D9C7D8BC();
  v7 = sub_1D9C7E09C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D9962000, v6, v7, "addOnCancel(): canceling", v8, 2u);
    MEMORY[0x1DA7405F0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D9ACA298(a1);
  }

  return result;
}

void sub_1D9ACC130(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - v6;
  v8 = sub_1D9C7D8DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  sub_1D9C7BA8C();
  v14 = objc_opt_self();
  v15 = sub_1D9C7DC4C();
  LODWORD(v14) = [v14 BOOLForEntitlement_];

  if (v14)
  {
    static Logger.argos.getter(v13);
    v16 = sub_1D9C7D8BC();
    v17 = sub_1D9C7E09C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D9962000, v16, v17, "maybeUpdateQueryContextForEval(): VI Eval locale override is enabled", v18, 2u);
      MEMORY[0x1DA7405F0](v18, -1, -1);
    }

    v19 = *(v9 + 8);
    v19(v13, v8);
    sub_1D99AB100(a1, v7, &unk_1ECB51B10);
    Context = type metadata accessor for VisualQueryContext();
    v21 = *(*(Context - 8) + 48);
    if (v21(v7, 1, Context) == 1)
    {
      v22 = v7;
LABEL_9:
      sub_1D99A6AE0(v22, &unk_1ECB51B10);
      return;
    }

    v23 = &v7[*(Context + 80)];
    v24 = *v23;
    v41 = v19;
    v42 = v24;
    v25 = *(v23 + 1);

    sub_1D9ADA658(v7, type metadata accessor for VisualQueryContext);
    if (!v25)
    {
      return;
    }

    sub_1D99AB100(a1, v4, &unk_1ECB51B10);
    if (v21(v4, 1, Context) == 1)
    {

      v22 = v4;
      goto LABEL_9;
    }

    v26 = &v4[*(Context + 72)];
    v28 = *v26;
    v27 = v26[1];

    sub_1D9ADA658(v4, type metadata accessor for VisualQueryContext);
    if (v27)
    {
      v29 = HIBYTE(v25) & 0xF;
      v30 = v42;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v29 = v42 & 0xFFFFFFFFFFFFLL;
      }

      if (!v29)
      {
        goto LABEL_20;
      }

      v31 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v31 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {

        sub_1D9C7BA2C();

        sub_1D9C7B9EC();
        v32 = v43;
        static Logger.argos.getter(v43);

        v33 = sub_1D9C7D8BC();
        v34 = sub_1D9C7E09C();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v44 = v40;
          *v35 = 136315394;
          v36 = sub_1D9A0E224(v30, v25, &v44);

          *(v35 + 4) = v36;
          *(v35 + 12) = 2080;
          v37 = sub_1D9A0E224(v28, v27, &v44);

          *(v35 + 14) = v37;
          _os_log_impl(&dword_1D9962000, v33, v34, "maybeUpdateQueryContextForEval(): VI Eval locale and country set to: %s, %s", v35, 0x16u);
          v38 = v40;
          swift_arrayDestroy();
          MEMORY[0x1DA7405F0](v38, -1, -1);
          MEMORY[0x1DA7405F0](v35, -1, -1);
        }

        else
        {
        }

        v41(v32, v8);
      }

      else
      {
LABEL_20:
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1D9ACC68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v37 = a1;
  v38 = a2;
  v4 = sub_1D9C7CBEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_1D9C7DA7C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + 16);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_1D9C7DA9C();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    result = sub_1D9ADA01C(v40);
    if ((result & 1) == 0)
    {
      v21 = sub_1D9C7DFBC();
      v22 = *(*(v21 - 8) + 56);
      v36 = v12;
      v22(v12, 1, 1, v21);
      v23 = *(v5 + 16);
      v23(v39, v37, v4);
      v23(v7, v38, v4);
      v24 = *(v5 + 80);
      v25 = (v24 + 40) & ~v24;
      v26 = v6 + 7;
      v27 = (v6 + 7 + v25) & 0xFFFFFFFFFFFFFFF8;
      v28 = (v24 + v27 + 8) & ~v24;
      v29 = (v26 + v28) & 0xFFFFFFFFFFFFFFF8;
      v30 = swift_allocObject();
      *(v30 + 2) = 0;
      *(v30 + 3) = 0;
      *(v30 + 4) = v3;
      v38 = v3;
      v31 = v40;
      v32 = *(v5 + 32);
      v32(&v30[v25], v39, v4);
      *&v30[v27] = v31;
      v32(&v30[v28], v7, v4);
      v33 = &v30[v29];
      *v33 = 0;
      *(v33 + 1) = 0xE000000000000000;

      v34 = v31;
      sub_1D9BC1E20(0, 0, v36, &unk_1D9C93B88, v30);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9ACC9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v119 = a7;
  v120 = a8;
  v121 = a5;
  v122 = a6;
  v129 = a4;
  v130 = a2;
  v127 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v108 = v102 - v13;
  Context = type metadata accessor for VisualQueryContext();
  v107 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v104 = v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1D9C7CA3C();
  MEMORY[0x1EEE9AC00](v105);
  v106 = v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51538);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v118 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v115 = v102 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v102 - v21;
  v23 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  v117 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v126 = (v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v27 = v102 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v102 - v29;
  v31 = sub_1D9C7CBEC();
  v112 = *(v31 - 8);
  v113 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v111 = v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v123 = v102 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v110 = v102 - v36;
  v37 = sub_1D9C7BA9C();
  v124 = *(v37 - 8);
  v125 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v116 = v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v128 = v102 - v40;
  v41 = sub_1D9C7DA7C();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = (v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = *(a1 + 144);
  v152 = *(a1 + 128);
  v153 = v45;
  v154 = *(a1 + 160);
  v155 = *(a1 + 176);
  v46 = *(a1 + 80);
  v148 = *(a1 + 64);
  v149 = v46;
  v47 = *(a1 + 112);
  v150 = *(a1 + 96);
  v151 = v47;
  v48 = *(a1 + 16);
  v144 = *a1;
  v145 = v48;
  v49 = *(a1 + 48);
  v146 = *(a1 + 32);
  v147 = v49;
  v114 = v10;
  v50 = *(v10 + 16);
  *v44 = v50;
  (*(v42 + 104))(v44, *MEMORY[0x1E69E8020], v41);
  v51 = v50;
  LOBYTE(v50) = sub_1D9C7DA9C();
  (*(v42 + 8))(v44, v41);
  if ((v50 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  result = sub_1D9ADA01C(v129);
  if (result)
  {
    return result;
  }

  type metadata accessor for NetworkService(0);
  sub_1D9ACC130(v127);
  v53 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) + 32);
  sub_1D99AB100(v130 + v53, v22, &qword_1ECB51538);
  v54 = *(v117 + 48);
  v55 = v54(v22, 1, v23);
  v56 = MEMORY[0x1E69E7CC0];
  if (v55 == 1)
  {
    *v30 = sub_1D9A446BC(MEMORY[0x1E69E7CC0]);
    *(v30 + 1) = v56;
    *(v30 + 4) = 0;
    sub_1D9C7D3BC();
    if (v54(v22, 1, v23) != 1)
    {
      sub_1D99A6AE0(v22, &qword_1ECB51538);
    }
  }

  else
  {
    sub_1D9ADC304(v22, v30, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  }

  v103 = *(v30 + 4);
  sub_1D9ADA658(v30, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  v57 = v115;
  sub_1D99AB100(v130 + v53, v115, &qword_1ECB51538);
  if (v54(v57, 1, v23) == 1)
  {
    *v27 = sub_1D9A446BC(v56);
    *(v27 + 1) = v56;
    *(v27 + 4) = 0;
    sub_1D9C7D3BC();
    if (v54(v57, 1, v23) != 1)
    {
      sub_1D99A6AE0(v57, &qword_1ECB51538);
    }
  }

  else
  {
    sub_1D9ADC304(v57, v27, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  }

  v117 = a10;
  v115 = a9;
  v140 = v152;
  v141 = v153;
  v142 = v154;
  v143 = v155;
  v136 = v148;
  v137 = v149;
  v138 = v150;
  v139 = v151;
  v132 = v144;
  v133 = v145;
  v134 = v146;
  v135 = v147;
  v58 = sub_1D9B67A68();
  MEMORY[0x1EEE9AC00](v58);
  v102[-2] = v27;
  v59 = sub_1D9BE8274(sub_1D99DEACC, &v102[-4], v58);
  v102[1] = 0;

  v60 = sub_1D9BC1C48(v59);

  sub_1D9ADA658(v27, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  v61 = v60;
  if ((v60 & 0x100000000) != 0)
  {
    v61 = 0;
  }

  v102[0] = v61;
  v62 = v118;
  sub_1D99AB100(v130 + v53, v118, &qword_1ECB51538);
  if (v54(v62, 1, v23) == 1)
  {
    v63 = MEMORY[0x1E69E7CC0];
    v64 = sub_1D9A446BC(MEMORY[0x1E69E7CC0]);
    v65 = v126;
    *v126 = v64;
    v65[1] = v63;
    *(v65 + 4) = 0;
    sub_1D9C7D3BC();
    v66 = v54(v62, 1, v23);
    v68 = v121;
    v67 = v122;
    v69 = v120;
    if (v66 != 1)
    {
      sub_1D99A6AE0(v62, &qword_1ECB51538);
    }
  }

  else
  {
    sub_1D9ADC304(v62, v126, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
    v68 = v121;
    v67 = v122;
    v69 = v120;
  }

  sub_1D9C7CBDC();
  (*(v124 + 16))(v116, v128, v125);
  sub_1D9C7CB7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53068);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1D9C8CDA0;
  *(v70 + 32) = 0x4152656C62616E65;
  *(v70 + 40) = 0xE900000000000047;
  *(v70 + 48) = 1702195828;
  *(v70 + 56) = 0xE400000000000000;
  *(v70 + 64) = 0x6C6175516765706ALL;
  *(v70 + 72) = 0xEB00000000797469;
  *(v70 + 80) = 3681840;
  *(v70 + 88) = 0xE300000000000000;
  *(v70 + 96) = 0x656B636142676172;
  *(v70 + 104) = 0xEF6C65646F4D646ELL;
  *(v70 + 112) = 51;
  *(v70 + 120) = 0xE100000000000000;
  strcpy((v70 + 128), "enableLogging");
  *(v70 + 142) = -4864;
  *(v70 + 144) = 0x65736C6166;
  *(v70 + 152) = 0xE500000000000000;
  *(v70 + 160) = 0x6150626557676172;
  *(v70 + 168) = 0xEA00000000006874;
  *(v70 + 176) = 0x65736C6166;
  *(v70 + 184) = 0xE500000000000000;
  *(v70 + 192) = 0x506F747541676172;
  *(v70 + 200) = 0xEB00000000687461;
  *(v70 + 208) = 1702195828;
  *(v70 + 216) = 0xE400000000000000;
  strcpy((v70 + 224), "enableGPTAgent");
  *(v70 + 239) = -18;
  *(v70 + 240) = 1702195828;
  *(v70 + 248) = 0xE400000000000000;
  *(v70 + 256) = 0x726575516D6C6C6DLL;
  *(v70 + 264) = 0xEF78696666755379;
  *(v70 + 272) = 0;
  *(v70 + 280) = 0xE000000000000000;
  *(v70 + 288) = 0x6150554C56676172;
  *(v70 + 296) = 0xEA00000000006874;
  *(v70 + 304) = 0x65736C6166;
  *(v70 + 312) = 0xE500000000000000;
  *(v70 + 320) = 0xD000000000000013;
  *(v70 + 328) = 0x80000001D9CA9550;
  *(v70 + 336) = 0;
  *(v70 + 344) = 0xE000000000000000;
  *(v70 + 352) = 0x6E656B6F54776164;
  *(v70 + 360) = 0xE800000000000000;
  *(v70 + 368) = v115;
  *(v70 + 376) = v117;
  *(v70 + 384) = 0xD000000000000010;
  *(v70 + 392) = 0x80000001D9CA9570;
  *(v70 + 400) = 49;
  *(v70 + 408) = 0xE100000000000000;
  *(v70 + 416) = 0x6E65674172657375;
  *(v70 + 424) = 0xE900000000000074;
  *(v70 + 432) = 0xD000000000000023;
  *(v70 + 440) = 0x80000001D9CA9590;
  strcpy((v70 + 448), "openAIAPIKey");
  *(v70 + 461) = 0;
  *(v70 + 462) = -5120;
  *(v70 + 464) = 0;
  *(v70 + 472) = 0xE000000000000000;

  v71 = sub_1D9A436D8(v70);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51048);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v156 = v119;
  v157 = v69;
  v158 = v68;
  v159 = v67;
  v121 = v71;
  v160 = v71;
  v161 = xmmword_1D9C8CD70;

  sub_1D99AF2FC(v68, v67);
  result = sub_1D99D3B88();
  if (v72 >> 60 == 15)
  {
    __break(1u);
    return result;
  }

  MEMORY[0x1EEE9AC00](result);
  v102[-10] = v73;
  v102[-9] = v74;
  v75 = v127;
  v76 = v103;
  v102[-8] = v127;
  v102[-7] = v76;
  LOBYTE(v102[-6]) = 0;
  v102[-5] = v102[0];
  LOBYTE(v102[-4]) = BYTE4(v60) & 1;
  v102[-3] = &v144;
  v102[-2] = v126;
  v102[-1] = 0;
  v77 = v73;
  v78 = v74;
  sub_1D9ADC3B8(&unk_1ECB540F0, MEMORY[0x1E69BD540]);
  sub_1D9C7D6BC();
  sub_1D99B3C44(v77, v78);

  sub_1D99B3C44(v68, v122);

  sub_1D99B3C44(0, 0xF000000000000000);
  v79 = v123;
  sub_1D9C7CBAC();
  v80 = v108;
  sub_1D99AB100(v75, v108, &unk_1ECB51B10);
  v81 = Context;
  v23 = v79;
  if ((*(v107 + 48))(v80, 1, Context) == 1)
  {
    sub_1D99A6AE0(v80, &unk_1ECB51B10);
    if ((sub_1D9A75D94() & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v82 = &off_1ECB51BA8;
    goto LABEL_28;
  }

  v83 = v104;
  sub_1D9ADC304(v80, v104, type metadata accessor for VisualQueryContext);
  v84 = sub_1D9C7CB5C();
  sub_1D9C7BA4C();
  v84(&v132, 0);

  sub_1D9C7CBCC();
  if (*(v83 + *(v81 + 60) + 8))
  {

    sub_1D9C7CBBC();
  }

  sub_1D9ADA658(v83, type metadata accessor for VisualQueryContext);
  if (sub_1D9A75D94())
  {
    goto LABEL_25;
  }

LABEL_20:
  if (qword_1EDD355A0 != -1)
  {
LABEL_34:
    swift_once();
  }

  v82 = &qword_1EDD355A8;
LABEL_28:
  v85 = *(*v82 + 32);

  v86 = sub_1D9C7DC4C();
  v87 = [v85 stringForKey_];

  if (v87)
  {
    v88 = sub_1D9C7DC7C();
    v90 = v89;

    *&v132 = 0xD000000000000030;
    *(&v132 + 1) = 0x80000001D9CA4870;
    MEMORY[0x1DA73DF90](v88, v90);

    v91 = v132;
    v92 = sub_1D9C7CB4C();
    v94 = v93;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v131 = *v94;
    *v94 = 0x8000000000000000;
    sub_1D9C10E38(v91, *(&v91 + 1), 0xD000000000000011, 0x80000001D9CA4850, isUniquelyReferenced_nonNull_native);
    *v94 = v131;
    v92(&v132, 0);
  }

  else
  {
  }

  v97 = v112;
  v96 = v113;
  v98 = v110;
  (*(v112 + 32))(v110, v23, v113);
  sub_1D9ADA658(v126, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  type metadata accessor for ServerSearchProcessor();
  v140 = v152;
  v141 = v153;
  v142 = v154;
  v143 = v155;
  v136 = v148;
  v137 = v149;
  v138 = v150;
  v139 = v151;
  v132 = v144;
  v133 = v145;
  v134 = v146;
  v135 = v147;
  v99 = v111;
  v100 = v128;
  sub_1D99D4CDC(&v132, v130, v128, v127, v111);
  sub_1D9AD1D10(v98, v99, v129);
  v101 = *(v97 + 8);
  v101(v99, v96);
  v101(v98, v96);
  return (*(v124 + 8))(v100, v125);
}

void sub_1D9ACDAF8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v121 = a5;
  v114 = a3;
  v115 = a4;
  v7 = sub_1D9C7D8DC();
  v118 = *(v7 - 8);
  v119 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v120 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1D9C7C8DC();
  v9 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v98 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53050);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v101 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v98 - v17;
  v19 = sub_1D9C7CF5C();
  v102 = *(v19 - 8);
  v103 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v100 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v126 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v124 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v117 = &v98 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v127 = &v98 - v26;
  v27 = sub_1D9C7DA7C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (&v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = a1[9];
  v149 = a1[8];
  v150 = v31;
  v151 = a1[10];
  v152 = *(a1 + 22);
  v32 = a1[5];
  v145 = a1[4];
  v146 = v32;
  v33 = a1[7];
  v147 = a1[6];
  v148 = v33;
  v34 = a1[1];
  v141 = *a1;
  v142 = v34;
  v35 = a1[3];
  v143 = a1[2];
  v144 = v35;
  v36 = *(v5 + 16);
  *v30 = v36;
  v37 = *(v28 + 104);
  v106 = *MEMORY[0x1E69E8020];
  v107 = v28 + 104;
  v105 = v37;
  v37(v30);
  v104 = v36;
  LOBYTE(v36) = sub_1D9C7DA9C();
  v38 = *(v28 + 8);
  v109 = v30;
  v110 = v28 + 8;
  v111 = v27;
  v108 = v38;
  v38(v30, v27);
  if ((v36 & 1) == 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (sub_1D9ADA01C(v121))
  {
    return;
  }

  v99 = v13;
  v116 = v5;
  v122 = 0x80000001D9CA60A0;
  v137 = v149;
  v138 = v150;
  v139 = v151;
  v140 = v152;
  v133 = v145;
  v134 = v146;
  v135 = v147;
  v136 = v148;
  v129 = v141;
  v130 = v142;
  v131 = v143;
  v132 = v144;
  v39 = sub_1D9B67A68();
  v125 = *(v39 + 16);
  if (v125)
  {
    v40 = 0;
    v41 = MEMORY[0x1E69E7CC0];
    v123 = v39;
    while (1)
    {
      if (v40 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      v42 = v127;
      v43 = (*(v126 + 80) + 32) & ~*(v126 + 80);
      v44 = *(v126 + 72);
      sub_1D99B1BBC(v39 + v43 + v44 * v40, v127);
      v45 = sub_1D9B6848C(*(v42 + 112));
      if (v45[2])
      {
        v47 = v45[5];
        v46 = v45[6];

        if (v47 == 0xD00000000000002DLL && v122 == v46)
        {

LABEL_17:
          sub_1D9ADC304(v127, v124, type metadata accessor for VisualUnderstanding.ImageRegion);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v128 = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D99FE2B8(0, *(v41 + 16) + 1, 1);
            v41 = v128;
          }

          v52 = *(v41 + 16);
          v51 = *(v41 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_1D99FE2B8(v51 > 1, v52 + 1, 1);
            v41 = v128;
          }

          *(v41 + 16) = v52 + 1;
          sub_1D9ADC304(v124, v41 + v43 + v52 * v44, type metadata accessor for VisualUnderstanding.ImageRegion);
          goto LABEL_7;
        }

        v49 = sub_1D9C7E7DC();

        if (v49)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      sub_1D9ADA658(v127, type metadata accessor for VisualUnderstanding.ImageRegion);
LABEL_7:
      ++v40;
      v39 = v123;
      if (v125 == v40)
      {
        goto LABEL_23;
      }
    }
  }

  v41 = MEMORY[0x1E69E7CC0];
LABEL_23:

  if (*(v41 + 16))
  {
    v53 = v9;
    v54 = v117;
    sub_1D99B1BBC(v41 + ((*(v126 + 80) + 32) & ~*(v126 + 80)), v117);

    v55 = *(v54 + 112);

    sub_1D9ADA658(v54, type metadata accessor for VisualUnderstanding.ImageRegion);
    v56 = sub_1D9B6848C(v55);

    v58 = v120;
    v57 = v121;
    if (*(v56 + 16))
    {
      v127 = v18;

      v59 = v113;
      v60 = swift_allocBox();
      v62 = v61;
      sub_1D9C7C8CC();
      sub_1D9C7C8BC();
      sub_1D9C7C0CC();
      v63 = v114;
      ObjectType = swift_getObjectType();
      v65 = v115;
      if ((*(v115 + 16))(ObjectType, v115))
      {
        v66 = v57;
        v67 = v112;
        (*(v53 + 16))(v112, v62, v59);
        sub_1D9ACE75C(v67, v63, v65, v66);
        (*(v53 + 8))(v67, v59);
LABEL_36:

        return;
      }

      v78 = swift_allocObject();
      v78[2] = v63;
      v78[3] = v65;
      v79 = v116;
      v78[4] = v116;
      v78[5] = v60;
      v78[6] = v57;
      v80 = v109;
      v82 = v104;
      v81 = v105;
      *v109 = v104;
      v83 = v111;
      v81(v80, v106, v111);
      v84 = v82;
      v125 = v57;
      v126 = v60;
      v85 = v79;

      swift_unknownObjectRetain();
      LOBYTE(v82) = sub_1D9C7DA9C();
      v108(v80, v83);
      if (v82)
      {
        v86 = v63;
        v87 = v127;
        sub_1D9A56990(v127);
        v88 = v102;
        v89 = v103;
        v90 = (*(v102 + 48))(v87, 1, v103);
        v91 = v99;
        if (v90 == 1)
        {
          sub_1D99A6AE0(v87, &qword_1ECB53050);
          v92 = sub_1D9C7DFBC();
          (*(*(v92 - 8) + 56))(v91, 1, 1, v92);
          v93 = swift_allocObject();
          v93[2] = 0;
          v93[3] = 0;
          v93[4] = v85;
          v93[5] = sub_1D9ADC0E4;
          v93[6] = v78;

          sub_1D9BC1E20(0, 0, v91, &unk_1D9C93B50, v93);
        }

        else
        {
          v94 = v100;
          (*(v88 + 32))(v100, v87, v89);
          v95 = *(v88 + 16);
          v96 = v88;
          v97 = v101;
          v95(v101, v94, v89);
          (*(v96 + 56))(v97, 0, 1, v89);
          sub_1D9ADAAB0(v97, v86, v65, v85, v126, v125);

          sub_1D99A6AE0(v97, &qword_1ECB53050);
          (*(v96 + 8))(v94, v89);
        }

        goto LABEL_36;
      }

LABEL_40:
      __break(1u);
      return;
    }
  }

  else
  {

    v58 = v120;
    v57 = v121;
  }

  sub_1D99DF020();
  v68 = swift_allocError();
  *v69 = xmmword_1D9C86A60;
  *(v69 + 16) = 2;
  swift_willThrow();
  static Logger.argos.getter(v58);
  v70 = v68;
  v71 = sub_1D9C7D8BC();
  v72 = sub_1D9C7E0AC();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v73 = 138412290;
    v75 = v68;
    v76 = _swift_stdlib_bridgeErrorToNSError();
    *(v73 + 4) = v76;
    *v74 = v76;
    _os_log_impl(&dword_1D9962000, v71, v72, "performEncryptedPegasusRequestForPEC(): %@", v73, 0xCu);
    sub_1D99A6AE0(v74, &qword_1ECB510E8);
    MEMORY[0x1DA7405F0](v74, -1, -1);
    MEMORY[0x1DA7405F0](v73, -1, -1);
  }

  (*(v118 + 8))(v58, v119);
  sub_1D9A57EEC();
  v77 = v68;
  sub_1D9AD6698(MEMORY[0x1E69E7CC0], v68, v57);
}

size_t sub_1D9ACE75C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37 = a1;
  v36 = a4;
  v39 = sub_1D9C7D02C();
  v6 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = &v33 - v10;
  v11 = sub_1D9C7DA7C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = v4;
  v16 = *(v4 + 16);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_1D9C7DA9C();
  result = (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  ObjectType = swift_getObjectType();
  v20 = v38;
  result = (*(a3 + 32))(v37, ObjectType, a3);
  if (!v20)
  {
    v21 = result;
    v22 = *(result + 16);
    if (v22)
    {
      v42 = MEMORY[0x1E69E7CC0];
      result = sub_1D99FE558(0, v22, 0);
      v23 = 0;
      v24 = v42;
      v38 = v6 + 32;
      while (v23 < *(v21 + 16))
      {
        v41 = *(v21 + 16 * v23 + 32);
        sub_1D99AF2FC(v41, *(&v41 + 1));
        sub_1D9ACEB84(&v41, &v40, v8);
        sub_1D99A5748(v41, *(&v41 + 1));
        v42 = v24;
        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1D99FE558(v25 > 1, v26 + 1, 1);
          v24 = v42;
        }

        ++v23;
        *(v24 + 16) = v26 + 1;
        result = (*(v6 + 32))(v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, v8, v39);
        if (v22 == v23)
        {

          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

    v24 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v27 = sub_1D9C7DFBC();
    v28 = v34;
    (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v31 = v35;
    v30 = v36;
    v29[4] = v24;
    v29[5] = v31;
    v29[6] = v30;

    v32 = v30;
    sub_1D9BC1E20(0, 0, v28, &unk_1D9C93B48, v29);
  }

  return result;
}

uint64_t sub_1D9ACEB84@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v5 = sub_1D9C7D36C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D9C7D97C();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7CFDC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1D9C7CADC();
  v34 = *(v12 - 8);
  v35 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  v43 = a3;
  sub_1D9C7D01C();
  sub_1D9C7CACC();
  sub_1D9C7CFCC();
  sub_1D9C7CABC();
  v17 = sub_1D9C7CAAC();
  sub_1D9C7CFBC();
  v17(&v38, 0);
  v18 = sub_1D9C7CAAC();
  v19 = v33;
  sub_1D9C7CFAC();
  v18(&v38, 0);
  v41 = v15;
  v42 = v16;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1D99AF2FC(v15, v16);
  sub_1D9C7D43C();
  v20 = sub_1D9ADC3B8(&qword_1ECB51128, MEMORY[0x1E6994598]);
  v21 = v37;
  sub_1D9C7D67C();
  if (v21)
  {
    (*(v34 + 8))(v14, v35);
    v26 = sub_1D9C7D02C();
    result = (*(*(v26 - 8) + 8))(v43, v26);
    *v32 = v21;
  }

  else
  {
    v22 = v34;
    v23 = v35;
    *(&v39 + 1) = v19;
    v40 = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
    v25 = v31;
    (*(v31 + 16))(boxed_opaque_existential_1, v10, v19);
    sub_1D9C7D45C();
    sub_1D9C7D35C();
    sub_1D9C7CA9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53048);
    v28 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1D9C85660;
    (*(v22 + 16))(v29 + v28, v14, v23);
    sub_1D9C7CC4C();
    (*(v25 + 8))(v10, v19);
    return (*(v22 + 8))(v14, v23);
  }

  return result;
}

uint64_t sub_1D9ACF094(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v96 = a3;
  v97 = a5;
  v99 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51518);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v76 = &v73 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v75 = &v73 - v11;
  v82 = sub_1D9C7D8DC();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v79 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53050);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v78 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v73 - v18;
  v85 = sub_1D9C7CF5C();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v77 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v90 = *(v20 - 8);
  v21 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v93 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v95 = &v73 - v23;
  v24 = sub_1D9C7D02C();
  v98 = *(v24 - 8);
  v25 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v92 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v73 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v100 = &v73 - v29;
  v30 = sub_1D9C7DA7C();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = (&v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v6 + 16);
  *v34 = v35;
  v36 = *(v31 + 104);
  v88 = *MEMORY[0x1E69E8020];
  v87 = v36;
  v36(v34, v32);
  v86 = v35;
  LOBYTE(v35) = sub_1D9C7DA9C();
  v89 = *(v31 + 8);
  result = v89(v34, v30);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1D9ADA01C(a6);
  if (result)
  {
    return result;
  }

  v91 = v24;
  v73 = a6;
  v74 = v6;
  sub_1D9C7D01C();
  v38 = v99;
  ObjectType = swift_getObjectType();
  v40 = v97;
  if ((*(v97 + 16))(ObjectType, v97))
  {
    sub_1D9ACFDB0(v96, v38, v40, v73);
    return (*(v98 + 8))(v100, v91);
  }

  v41 = v95;
  sub_1D99AB100(v96, v95, &unk_1ECB51B10);
  v42 = *(v98 + 16);
  v43 = v94;
  v42();
  sub_1D99AB100(v41, v93, &unk_1ECB51B10);
  (v42)(v92, v43, v91);
  v44 = (*(v90 + 80) + 40) & ~*(v90 + 80);
  v96 = (v21 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = v98;
  v46 = (*(v98 + 80) + v96 + 8) & ~*(v98 + 80);
  v47 = swift_allocObject();
  v48 = v97;
  v47[2] = v99;
  v47[3] = v48;
  v49 = v74;
  v47[4] = v74;
  sub_1D99B1C20(v95, v47 + v44, &unk_1ECB51B10);
  v50 = v73;
  *(v47 + v96) = v73;
  v51 = *(v45 + 32);
  v96 = v47;
  v52 = v47 + v46;
  v53 = v49;
  v54 = v91;
  v51(v52, v94, v91);
  v55 = v86;
  *v34 = v86;
  v87(v34, v88, v30);
  v56 = v55;
  v57 = v50;

  v58 = v99;
  swift_unknownObjectRetain();
  LOBYTE(v55) = sub_1D9C7DA9C();
  result = v89(v34, v30);
  if ((v55 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v59 = v83;
  sub_1D9A56990(v83);
  v60 = v84;
  v61 = v85;
  if ((*(v84 + 48))(v59, 1, v85) == 1)
  {
    v62 = *(v98 + 8);
    v62(v92, v54);
    sub_1D99A6AE0(v93, &unk_1ECB51B10);
    sub_1D99A6AE0(v59, &qword_1ECB53050);
    v63 = sub_1D9C7DFBC();
    v64 = v79;
    (*(*(v63 - 8) + 56))(v79, 1, 1, v63);
    v65 = swift_allocObject();
    v65[2] = 0;
    v65[3] = 0;
    v65[4] = v53;
    v65[5] = sub_1D9ADA8F0;
    v65[6] = v96;

    sub_1D9BC1E20(0, 0, v64, &unk_1D9C93B28, v65);

    return (v62)(v100, v54);
  }

  else
  {
    v66 = v77;
    (*(v60 + 32))(v77, v59, v61);
    v67 = v78;
    (*(v60 + 16))(v78, v66, v61);
    (*(v60 + 56))(v67, 0, 1, v61);
    v68 = v58;
    v69 = v53;
    v71 = v92;
    v70 = v93;
    sub_1D9ADB4D4(v67, v68, v97, v69, v93, v57, v92);

    sub_1D99A6AE0(v67, &qword_1ECB53050);
    (*(v60 + 8))(v66, v61);
    v72 = *(v98 + 8);
    v72(v71, v54);
    sub_1D99A6AE0(v70, &unk_1ECB51B10);
    return (v72)(v100, v54);
  }
}

uint64_t sub_1D9ACFDB0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v91 = a2;
  v92 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v78 = &v73 - v7;
  v79 = sub_1D9C7D02C();
  v81 = *(v79 - 8);
  v8 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v73 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v73 - v12;
  v13 = sub_1D9C7D36C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v85 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1D9C7D97C();
  v82 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9C7CFDC();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v84 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9C7CADC();
  v87 = *(v20 - 8);
  v88 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v73 - v26;
  sub_1D99AB100(a1, &v73 - v26, &unk_1ECB51B10);
  Context = type metadata accessor for VisualQueryContext();
  v29 = *(*(Context - 8) + 48);
  if (v29(v27, 1, Context) == 1)
  {
    goto LABEL_5;
  }

  v74 = a4;
  v30 = *&v27[*(Context + 44)];
  v31 = v30;
  sub_1D9ADA658(v27, type metadata accessor for VisualQueryContext);
  if (!v30)
  {
LABEL_6:
    sub_1D99DF020();
    swift_allocError();
    *v34 = xmmword_1D9C93A10;
    *(v34 + 16) = 2;
    return swift_willThrow();
  }

  [v31 coordinate];
  v33 = v32;

  sub_1D99AB100(a1, v24, &unk_1ECB51B10);
  if (v29(v24, 1, Context) == 1)
  {
    v27 = v24;
LABEL_5:
    sub_1D99A6AE0(v27, &unk_1ECB51B10);
    goto LABEL_6;
  }

  v36 = *&v24[*(Context + 44)];
  v37 = v36;
  sub_1D9ADA658(v24, type metadata accessor for VisualQueryContext);
  if (!v36)
  {
    goto LABEL_6;
  }

  [v37 coordinate];
  v39 = v38;

  v40 = sub_1D9ABDA50(7, v33, v39);
  v42 = v41;
  ObjectType = swift_getObjectType();
  v44 = v98;
  v45 = (*(v92 + 32))(v40, v42, ObjectType);
  if (v44)
  {
  }

  v47 = v46;
  v48 = v45;

  v49 = v86;
  sub_1D9C7CACC();
  sub_1D9C7CFCC();
  sub_1D9C7CABC();
  v50 = sub_1D9C7CAAC();
  sub_1D9C7CFBC();
  v50(&v93, 0);
  v51 = sub_1D9C7CAAC();
  sub_1D9C7CFAC();
  v51(&v93, 0);
  v96 = v48;
  v97 = v47;
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  sub_1D99AF2FC(v48, v47);
  sub_1D9C7D43C();
  v52 = sub_1D9ADC3B8(&qword_1ECB51128, MEMORY[0x1E6994598]);
  v54 = v89;
  v53 = v90;
  sub_1D9C7D67C();
  v98 = v48;
  *(&v94 + 1) = v53;
  v95 = v52;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v93);
  (*(v82 + 16))(boxed_opaque_existential_1, v54, v53);
  sub_1D9C7D45C();
  sub_1D9C7D35C();
  sub_1D9C7CA9C();
  sub_1D9C7D01C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53048);
  v56 = v87;
  v57 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1D9C85660;
  (*(v56 + 16))(v58 + v57, v49, v88);
  sub_1D9C7CC4C();
  v59 = sub_1D9C7DFBC();
  (*(*(v59 - 8) + 56))(v78, 1, 1, v59);
  v60 = *(v81 + 16);
  v61 = v83;
  v62 = v79;
  v60(v76, v83, v79);
  v60(v77, v61, v62);
  v63 = v81;
  v64 = *(v81 + 80);
  v65 = (v64 + 40) & ~v64;
  v66 = (v8 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = v47;
  v67 = (v64 + v66 + 8) & ~v64;
  v68 = swift_allocObject();
  *(v68 + 2) = 0;
  *(v68 + 3) = 0;
  *(v68 + 4) = v75;
  v69 = *(v63 + 32);
  v70 = v79;
  v69(&v68[v65], v76, v79);
  v71 = v74;
  *&v68[v66] = v74;
  v69(&v68[v67], v77, v70);

  v72 = v71;
  sub_1D9BC1E20(0, 0, v78, &unk_1D9C93B10, v68);

  sub_1D99A5748(v98, v92);
  (*(v81 + 8))(v83, v70);
  (*(v82 + 8))(v89, v90);
  return (*(v87 + 8))(v86, v88);
}

uint64_t sub_1D9AD07E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v48 = a3;
  v43 = a1;
  v4 = sub_1D9C7CBEC();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53020);
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = sub_1D9C7DA7C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + 16);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1D9C7DA9C();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    result = sub_1D9ADA01C(v48);
    if ((result & 1) == 0)
    {
      v41 = v8;
      v42 = v3;
      sub_1D9C7D12C();
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = v44;
      v40 = *(v44 + 16);
      v19 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = v45;
      v40(v19, v47, v45);
      v43 = v6;
      v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v22 = (v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = swift_allocObject();
      v24 = v48;
      *(v23 + 16) = v17;
      *(v23 + 24) = v24;
      v25 = *(v18 + 32);
      v25(v23 + v21, v19, v20);
      v26 = (v23 + v22);
      *v26 = 0;
      v26[1] = 0xE000000000000000;
      v27 = swift_allocObject();
      swift_weakInit();
      v40(v19, v47, v20);
      v28 = swift_allocObject();
      v29 = v48;
      *(v28 + 16) = v27;
      *(v28 + 24) = v29;
      v25(v28 + v21, v19, v20);
      v30 = (v28 + v22);
      *v30 = 0;
      v30[1] = 0xE000000000000000;
      sub_1D99C7C60(&qword_1ECB53028, &qword_1ECB53020);
      v31 = v29;
      v32 = v43;
      v33 = v41;
      v34 = sub_1D9C7D94C();

      (*(v46 + 8))(v33, v32);
      v35 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
      v36 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_searchFetches;
      v37 = v42;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = *(v37 + v36);
      *(v37 + v36) = 0x8000000000000000;
      sub_1D9C11BE0(v34, v31 + v35, isUniquelyReferenced_nonNull_native);
      *(v37 + v36) = v49;
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D9AD0CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a5;
  v50 = a6;
  v48 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519C8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_1D9C7D13C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53040);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v47 - v18;
  sub_1D99AB100(a1, &v47 - v18, &qword_1ECB53040);
  if ((*(v14 + 48))(v19, 1, v13) == 1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v21 = Strong;
    v22 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
    swift_beginAccess();
    v23 = *(v21 + v22);
    if (*(v23 + 16))
    {
      v24 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

      v25 = sub_1D99EE518(a3 + v24);
      if (v26)
      {
        v27 = *(*(v23 + 56) + 16 * v25);

        v28 = sub_1D9C7CBEC();
        v29 = *(v28 - 8);
        (*(v29 + 16))(v12, v48, v28);
        (*(v29 + 56))(v12, 0, 1, v28);
        v30 = sub_1D9C7CC0C();
        v31 = v51;
        (*(*(v30 - 8) + 56))(v51, 1, 1, v30);
        sub_1D99DF020();
        v32 = swift_allocError();
        *v33 = xmmword_1D9C93A20;
        *(v33 + 16) = 2;
        v53 = v49;
        v54 = v50;
        v52 = v32;
        v27(v12, v31, &v53, &v52);

        sub_1D99A6AE0(v31, &qword_1ECB53000);
        sub_1D99A6AE0(v12, &qword_1ECB519C8);
LABEL_10:

        return;
      }
    }
  }

  else
  {
    (*(v14 + 32))(v16, v19, v13);
    swift_beginAccess();
    v34 = swift_weakLoadStrong();
    if (v34)
    {
      v35 = v34;
      v36 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
      swift_beginAccess();
      v37 = *(v35 + v36);
      if (*(v37 + 16))
      {
        v38 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

        v39 = sub_1D99EE518(a3 + v38);
        if (v40)
        {
          v41 = *(*(v37 + 56) + 16 * v39);

          v42 = sub_1D9C7CBEC();
          v43 = *(v42 - 8);
          (*(v43 + 16))(v12, v48, v42);
          (*(v43 + 56))(v12, 0, 1, v42);
          v44 = sub_1D9C7CC0C();
          v45 = v51;
          (*(*(v44 - 8) + 56))(v51, 1, 1, v44);
          sub_1D9ADC3B8(&qword_1ECB53038, MEMORY[0x1E69BDB58]);
          v32 = swift_allocError();
          (*(v14 + 16))(v46, v16, v13);
          v53 = v49;
          v54 = v50;
          v52 = v32;
          v41(v12, v45, &v53, &v52);

          sub_1D99A6AE0(v45, &qword_1ECB53000);
          sub_1D99A6AE0(v12, &qword_1ECB519C8);
          (*(v14 + 8))(v16, v13);
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    (*(v14 + 8))(v16, v13);
  }
}

void sub_1D9AD132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = a5;
  v82 = a6;
  v78 = a4;
  v88 = a1;
  v7 = sub_1D9C7D8DC();
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D9C7D13C();
  v90 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v73 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v80 = &v73 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519C8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v79 = &v73 - v17;
  v18 = sub_1D9C7CC0C();
  v86 = *(v18 - 8);
  v87 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53030);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v73 - v22;
  v24 = sub_1D9C7B93C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = *(v25 + 16);
    v77 = a3;
    v31 = a3 + OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
    v32 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
    v30(v27, v31, v24);
    swift_beginAccess();
    sub_1D9AC8060(0, v27);
    swift_endAccess();
    sub_1D99AB100(v88, v23, &qword_1ECB53030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v89;
      v34 = v90;
      v35 = v85;
      (*(v90 + 32))(v89, v23, v85);
      static Logger.argos.getter(v9);
      v36 = *(v34 + 16);
      v88 = v34 + 16;
      v76 = v36;
      v36(v11, v33, v35);
      v37 = sub_1D9C7D8BC();
      v38 = sub_1D9C7E0AC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v75 = v32;
        v40 = v39;
        v41 = swift_slowAlloc();
        v94[0] = v41;
        *v40 = 136315138;
        v42 = sub_1D9B1C914();
        v74 = v9;
        v43 = v35;
        v45 = v44;
        v46 = *(v90 + 8);
        v46(v11, v43);
        v47 = sub_1D9A0E224(v42, v45, v94);
        v35 = v43;

        *(v40 + 4) = v47;
        _os_log_impl(&dword_1D9962000, v37, v38, "performPegasusSearch failed with error: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x1DA7405F0](v41, -1, -1);
        v48 = v40;
        v32 = v75;
        MEMORY[0x1DA7405F0](v48, -1, -1);

        (*(v83 + 8))(v74, v84);
      }

      else
      {

        v46 = *(v34 + 8);
        v46(v11, v35);
        (*(v83 + 8))(v9, v84);
      }

      v60 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
      swift_beginAccess();
      v61 = *(v29 + v60);
      v62 = v77;
      if (*(v61 + 16))
      {

        v63 = sub_1D99EE518(v62 + v32);
        if (v64)
        {
          v65 = *(*(v61 + 56) + 16 * v63);

          v66 = sub_1D9C7CBEC();
          v67 = *(v66 - 8);
          v68 = v79;
          (*(v67 + 16))(v79, v78, v66);
          (*(v67 + 56))(v68, 0, 1, v66);
          v69 = v80;
          (*(v86 + 56))(v80, 1, 1, v87);
          sub_1D9ADC3B8(&qword_1ECB53038, MEMORY[0x1E69BDB58]);
          v70 = swift_allocError();
          v71 = v89;
          v76(v72, v89, v35);
          v92 = v81;
          v93 = v82;
          v91 = v70;
          v65(v68, v69, &v92, &v91);

          sub_1D99A6AE0(v69, &qword_1ECB53000);
          sub_1D99A6AE0(v68, &qword_1ECB519C8);
          v46(v71, v35);

          return;
        }
      }

      else
      {
      }

      v46(v89, v35);
    }

    else
    {
      v50 = v86;
      v49 = v87;
      (*(v86 + 32))(v20, v23, v87);
      v51 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
      swift_beginAccess();
      v52 = *(v29 + v51);
      if (*(v52 + 16))
      {

        v53 = sub_1D99EE518(v77 + v32);
        if (v54)
        {
          v55 = *(*(v52 + 56) + 16 * v53);

          v56 = sub_1D9C7CBEC();
          v57 = *(v56 - 8);
          v58 = v79;
          (*(v57 + 16))(v79, v78, v56);
          (*(v57 + 56))(v58, 0, 1, v56);
          v59 = v80;
          (*(v50 + 16))(v80, v20, v49);
          (*(v50 + 56))(v59, 0, 1, v49);
          v92 = v81;
          v93 = v82;
          v91 = 0;
          v55(v58, v59, &v92, &v91);

          sub_1D99A6AE0(v59, &qword_1ECB53000);
          sub_1D99A6AE0(v58, &qword_1ECB519C8);
        }

        else
        {
        }
      }

      else
      {
      }

      (*(v50 + 8))(v20, v49);
    }
  }
}

uint64_t sub_1D9AD1D10(void *a1, uint64_t a2, uint64_t a3)
{
  v131 = a3;
  v116 = a2;
  v122 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v107 = &v100 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v106 = &v100 - v6;
  v7 = sub_1D9C7B93C();
  v112 = *(v7 - 8);
  v113 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v111 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9C7B4FC();
  v114 = *(v9 - 8);
  v115 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v118 = &v100 - v12;
  v13 = sub_1D9C7B80C();
  v125 = *(v13 - 8);
  v126 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v120 = &v100 - v16;
  v17 = sub_1D9C7D42C();
  v123 = *(v17 - 8);
  v124 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v119 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v100 - v20;
  v130 = sub_1D9C7CBEC();
  v128 = *(v130 - 8);
  v21 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v110 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v127 = &v100 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v129 = &v100 - v25;
  v26 = sub_1D9C7DA7C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_1D9C7D8DC();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v108 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v100 - v34;
  static Logger.argos.getter(&v100 - v34);
  v36 = sub_1D9C7D8BC();
  v37 = sub_1D9C7E0BC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v105 = v31;
    v39 = v30;
    v40 = v38;
    *v38 = 0;
    _os_log_impl(&dword_1D9962000, v36, v37, "**** performPegasusSearchLegacy", v38, 2u);
    v41 = v40;
    v30 = v39;
    v31 = v105;
    MEMORY[0x1DA7405F0](v41, -1, -1);
  }

  v42 = *(v31 + 8);
  v42(v35, v30);
  v43 = *(v132 + 16);
  *v29 = v43;
  (*(v27 + 104))(v29, *MEMORY[0x1E69E8020], v26);
  v44 = v43;
  LOBYTE(v43) = sub_1D9C7DA9C();
  result = (*(v27 + 8))(v29, v26);
  if (v43)
  {
    result = sub_1D9ADA01C(v131);
    if ((result & 1) == 0)
    {
      v101 = v42;
      v102 = v30;
      v105 = v21;
      v46 = v129;
      v47 = v128 + 16;
      v48 = *(v128 + 16);
      v103 = v48;
      v49 = v130;
      v48(v129, v122, v130);
      v50 = sub_1D9C7CB5C();
      sub_1D9C7BA5C();
      v50(v133, 0);
      v51 = sub_1D9C7CB5C();
      sub_1D9C7B9EC();
      v51(v133, 0);
      v52 = sub_1D9C7CB5C();
      sub_1D9C7BA2C();
      v52(v133, 0);
      v104 = v47;
      v48(v127, v46, v49);
      v53 = sub_1D9C7CB8C();
      sub_1D9C7C9CC();
      v53(v133, 0);
      v54 = v117;
      sub_1D9C7D41C();
      sub_1D9ADC3B8(&qword_1ECB53008, MEMORY[0x1E69BD720]);
      sub_1D9C7D62C();
      v117 = *(v123 + 8);
      (v117)(v54, v124);

      v55 = [objc_opt_self() defaultSessionConfiguration];
      [v55 setTimeoutIntervalForRequest_];
      [v55 setTimeoutIntervalForResource_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53AF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D9C85EA0;
      strcpy(v133, "User-Agent");
      BYTE3(v133[1]) = 0;
      HIDWORD(v133[1]) = -369098752;
      v57 = MEMORY[0x1E69E6158];
      sub_1D9C7E39C();
      *(inited + 96) = v57;
      *(inited + 72) = 0xD00000000000001ELL;
      *(inited + 80) = 0x80000001D9CA9380;
      strcpy(v133, "Content-Type");
      BYTE5(v133[1]) = 0;
      HIWORD(v133[1]) = -5120;
      sub_1D9C7E39C();
      *(inited + 168) = v57;
      *(inited + 144) = 0xD000000000000010;
      *(inited + 152) = 0x80000001D9CA93A0;
      sub_1D9A46194(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52048);
      swift_arrayDestroy();
      v58 = sub_1D9C7DB3C();

      [v55 setHTTPAdditionalHeaders_];

      v122 = [objc_opt_self() sessionWithConfiguration_];
      v59 = v118;
      sub_1D9C7B7EC();
      v61 = v125;
      v60 = v126;
      v62 = (*(v125 + 48))(v59, 1, v126);
      v63 = v105;
      if (v62 == 1)
      {
        sub_1D99A6AE0(v59, &qword_1ECB51FD0);
        v64 = v108;
        static Logger.argos.getter(v108);
        v65 = sub_1D9C7D8BC();
        v66 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_1D9962000, v65, v66, "Invalid URL", v67, 2u);
          MEMORY[0x1DA7405F0](v67, -1, -1);
        }

        v101(v64, v102);
        v68 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
        v69 = v132;
        swift_beginAccess();
        v70 = *(v69 + v68);
        if (*(v70 + 16))
        {
          v71 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

          v72 = sub_1D99EE518(v131 + v71);
          if (v73)
          {
            v74 = *(*(v70 + 56) + 16 * v72);

            v75 = v106;
            v76 = v130;
            v103(v106, v116, v130);
            v77 = v128;
            (*(v128 + 56))(v75, 0, 1, v76);
            v78 = sub_1D9C7CC0C();
            v79 = v107;
            (*(*(v78 - 8) + 56))(v107, 1, 1, v78);
            v135[0] = 0;
            v135[1] = 0xE000000000000000;
            v134 = 0;
            v74(v75, v79, v135, &v134);

            sub_1D99A6AE0(v79, &qword_1ECB53000);
            sub_1D99A6AE0(v75, &qword_1ECB519C8);
            v80 = *(v77 + 8);
            v80(v127, v76);
            return (v80)(v129, v76);
          }
        }

        else
        {
        }

        v98 = *(v128 + 8);
        v99 = v130;
        v98(v127, v130);
        return (v98)(v129, v99);
      }

      else
      {
        v81 = v120;
        (*(v61 + 32))(v120, v59, v60);
        (*(v61 + 16))(v109, v81, v60);
        sub_1D9C7B4CC();
        sub_1D9C7B4AC();
        sub_1D9C7D41C();
        sub_1D9C7D40C();
        sub_1D9C7D63C();
        v100 = v55;
        v82 = v121;
        sub_1D9C7B4DC();
        v83 = v111;
        sub_1D9C7B92C();
        sub_1D9C7B91C();
        (*(v112 + 8))(v83, v113);
        sub_1D9C7B4EC();

        sub_1D9C7B4EC();
        v118 = sub_1D9C7B4BC();
        v84 = v110;
        v85 = v130;
        v103(v110, v116, v130);
        v86 = v128;
        v87 = (*(v128 + 80) + 32) & ~*(v128 + 80);
        v88 = (v63 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
        v89 = swift_allocObject();
        v90 = v131;
        *(v89 + 16) = v132;
        *(v89 + 24) = v90;
        (*(v86 + 32))(v89 + v87, v84, v85);
        v91 = (v89 + v88);
        *v91 = 0;
        v91[1] = 0xE000000000000000;
        v133[4] = sub_1D9ADA3C0;
        v133[5] = v89;
        v133[0] = MEMORY[0x1E69E9820];
        v133[1] = 1107296256;
        v133[2] = sub_1D9AD4A28;
        v133[3] = &block_descriptor_58;
        v92 = _Block_copy(v133);

        v93 = v90;

        v94 = v122;
        v95 = v118;
        v96 = [v122 dataTaskWithRequest:v118 completionHandler:v92];
        _Block_release(v92);

        [v96 resume];
        (v117)(v119, v124);
        (*(v114 + 8))(v82, v115);
        (*(v125 + 8))(v120, v126);
        v97 = *(v86 + 8);
        v97(v127, v85);
        return (v97)(v129, v85);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}