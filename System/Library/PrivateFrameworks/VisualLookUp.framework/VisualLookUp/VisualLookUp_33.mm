uint64_t sub_1D9C1D534(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9C1D594(double a1, double a2)
{
  v5 = type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v49 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v51 = (&v49 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v54 = (&v49 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v55 = (&v49 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v52 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v49 - v24;
  v26 = *(v2 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
  v27 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__imageResizeConfig;
  swift_beginAccess();
  sub_1D99AB100(v26 + v27, v25, &qword_1ECB52770);
  v28 = *(v6 + 48);
  v29 = v5;
  LODWORD(v5) = v28(v25, 1, v5);
  sub_1D99A6AE0(v25, &qword_1ECB52770);
  if (v5 == 1)
  {
    goto LABEL_20;
  }

  sub_1D99AB100(v26 + v27, v22, &qword_1ECB52770);
  v30 = v28;
  v31 = v27;
  if (v28(v22, 1, v29) == 1)
  {
    v32 = v55;
    *v55 = 0;
    sub_1D9C7D3BC();
    if (v30(v22, 1, v29) != 1)
    {
      sub_1D99A6AE0(v22, &qword_1ECB52770);
    }
  }

  else
  {
    v32 = v55;
    sub_1D9C1E364(v22, v55, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
  }

  v33 = *v32;
  sub_1D9C1D534(v32, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
  if (v33 <= 0)
  {
    goto LABEL_20;
  }

  v34 = v53;
  sub_1D99AB100(v26 + v31, v53, &qword_1ECB52770);
  if (v30(v34, 1, v29) == 1)
  {
    v35 = v54;
    *v54 = 0;
    sub_1D9C7D3BC();
    if (v30(v34, 1, v29) != 1)
    {
      sub_1D99A6AE0(v34, &qword_1ECB52770);
    }
  }

  else
  {
    v35 = v54;
    sub_1D9C1E364(v34, v54, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
  }

  v36 = *v35;
  sub_1D9C1D534(v35, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
  if (v36 >= a1)
  {
    goto LABEL_20;
  }

  v37 = v31;
  v38 = v26 + v31;
  v39 = v50;
  sub_1D99AB100(v38, v50, &qword_1ECB52770);
  if (v30(v39, 1, v29) == 1)
  {
    v40 = v51;
    *v51 = 0;
    sub_1D9C7D3BC();
    v41 = v30(v39, 1, v29) == 1;
    v42 = v39;
    v43 = v52;
    if (!v41)
    {
      sub_1D99A6AE0(v42, &qword_1ECB52770);
    }
  }

  else
  {
    v40 = v51;
    sub_1D9C1E364(v39, v51, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
    v43 = v52;
  }

  v44 = *v40;
  sub_1D9C1D534(v40, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
  if (v44 >= a2)
  {
LABEL_20:
    *&result = 0.0;
  }

  else
  {
    sub_1D99AB100(v26 + v37, v43, &qword_1ECB52770);
    if (v30(v43, 1, v29) == 1)
    {
      v45 = v49;
      *v49 = 0;
      sub_1D9C7D3BC();
      if (v30(v43, 1, v29) != 1)
      {
        sub_1D99A6AE0(v43, &qword_1ECB52770);
      }
    }

    else
    {
      v45 = v49;
      sub_1D9C1E364(v43, v49, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
    }

    v47 = *v45;
    sub_1D9C1D534(v45, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
    if (a2 >= a1)
    {
      v48 = a1;
    }

    else
    {
      v48 = a2;
    }

    *&result = v47 / v48 * a1;
  }

  return result;
}

BOOL sub_1D9C1DBFC(char *a1, double *a2, double *a3, double a4, double a5)
{
  v50 = a5;
  v10 = type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = *a1;
  v18 = *a2;
  v19 = a2[1];
  v20 = a2[2];
  v21 = a2[3];
  v22 = *a3;
  v23 = a3[1];
  v24 = a3[3];
  v49 = a3[2];
  v48 = v24;
  v25 = *(v5 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
  swift_beginAccess();
  v26 = *(v25 + 16);
  v27 = sub_1D9A15C94(v17);
  v29 = v28;
  if (*(v26 + 16) && (v30 = v27, , v31 = sub_1D99ED894(v30, v29), v33 = v32, , (v33 & 1) != 0))
  {
    sub_1D9B717A8(*(v26 + 56) + *(v11 + 72) * v31, v16, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

    v34 = (*&v16[*(v10 + 20)] + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__minimumObjectSize);
    swift_beginAccess();
    v35 = *v34;
    sub_1D9C1D534(v16, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    if (v35 > 0.0)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  swift_beginAccess();
  v35 = *(v25 + 28);
LABEL_7:
  v36 = *(v25 + 16);
  v37 = sub_1D9A15C94(v17);
  v39 = v38;
  if (*(v36 + 16) && (v40 = v37, , v41 = sub_1D99ED894(v40, v39), v43 = v42, , (v43 & 1) != 0))
  {
    sub_1D9B717A8(*(v36 + 56) + *(v11 + 72) * v41, v13, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

    v44 = *&v13[*(v10 + 20)];
    v45 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__useRefinedRegionAsObjectRegion;
    swift_beginAccess();
    LODWORD(v44) = *(v44 + v45);
    sub_1D9C1D534(v13, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    if (v44)
    {
      v18 = v22;
      v19 = v23;
      v20 = v49;
      v21 = v48;
    }
  }

  else
  {
  }

  v51.origin.x = v18;
  v51.origin.y = v19;
  v51.size.width = v20;
  v51.size.height = v21;
  v46 = v35;
  if (CGRectGetWidth(v51) * a4 < v46)
  {
    return 0;
  }

  v52.origin.x = v18;
  v52.origin.y = v19;
  v52.size.width = v20;
  v52.size.height = v21;
  return CGRectGetHeight(v52) * v50 >= v46;
}

uint64_t sub_1D9C1DF84(_BYTE *a1, uint64_t a2)
{
  v5 = type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  LOBYTE(a1) = *a1;
  v12 = *(v2 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
  swift_beginAccess();
  v13 = *(v12 + 16);
  v14 = sub_1D9A15C94(a1);
  v16 = v15;
  if (*(v13 + 16) && (v17 = v14, , v18 = sub_1D99ED894(v17, v16), v20 = v19, , (v20 & 1) != 0))
  {
    sub_1D9B717A8(*(v13 + 56) + *(v6 + 72) * v18, v8, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

    v21 = sub_1D9C1E364(v8, v11, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    MEMORY[0x1EEE9AC00](v21);
    v27[-2] = v11;
    v22 = sub_1D9BE8938(sub_1D9C1E3CC, &v27[-4], a2);
    v23 = sub_1D9C1E30C(v22);

    v24 = *&v23;
    if ((v23 & 0x100000000) != 0)
    {
      v24 = 0.0;
    }

    if (v24 <= 0.0)
    {
      v25 = (*&v11[*(v5 + 20)] + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScoreThreshold);
      swift_beginAccess();
      if (*v25 <= 0.0)
      {
        swift_beginAccess();
      }
    }

    return sub_1D9C1D534(v11, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
  }

  else
  {

    return swift_beginAccess();
  }
}

uint64_t sub_1D9C1E240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + *(type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0) + 20));
  v7 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__ontologyBoxScoreThresholds;
  result = swift_beginAccess();
  v9 = *(v6 + v7);
  if (*(v9 + 16))
  {

    v10 = sub_1D99ED894(v4, v5);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 4 * v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = v11 ^ 1;
  }

  else
  {
    v12 = 0;
    v13 = 1;
  }

  *a3 = v12;
  *(a3 + 4) = v13 & 1;
  return result;
}

unint64_t sub_1D9C1E30C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v5 < v2)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_1D9C1E364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D9C1E69C(uint64_t a1)
{
  v2 = sub_1D9C7B80C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1D9C7DC4C();
  v12 = sub_1D9C7DC4C();
  v13 = [v10 URLForResource:v11 withExtension:v12];

  if (v13)
  {
    sub_1D9C7B7CC();

    sub_1D9C1E8DC();
    v14 = v2;
    (*(v3 + 16))(v5, v8, v2);
    v15 = v18[1];
    v16 = sub_1D9C1F49C(v5, a1);
    if (v15)
    {
      (*(v3 + 8))(v8, v2);
    }

    else
    {
      v17 = v16;
      (*(v3 + 8))(v8, v14);
      type metadata accessor for OCRTitleModel();
      *(swift_allocObject() + 16) = v17;
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D9C1E8DC()
{
  result = qword_1ECB53BB8;
  if (!qword_1ECB53BB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB53BB8);
  }

  return result;
}

void sub_1D9C1E92C(void *a1)
{
  v3 = sub_1D9C7B80C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  sub_1D9C1EE58();
  sub_1D9C1E8DC();
  (*(v4 + 16))(v6, v9, v3);
  v10 = sub_1D9C1F49C(v6, a1);
  if (v1)
  {
    (*(v4 + 8))(v9, v3);
  }

  else
  {
    v11 = v10;
    (*(v4 + 8))(v9, v3);

    type metadata accessor for EncryptedSearchLTR();
    *(swift_allocObject() + 16) = v11;
  }
}

id sub_1D9C1EB3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 3235704 && a2 == 0xE300000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v5 = 16;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x745F6E69616D6F64 && a2 == 0xEA00000000006761 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v5 = 24;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 1802723693 && a2 == 0xE400000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v5 = 32;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  return 0;
}

uint64_t sub_1D9C1ECDC()
{

  return swift_deallocClassInstance();
}

void sub_1D9C1EE58()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_1D9C7DC4C();
  v2 = sub_1D9C7DC4C();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_1D9C7B7CC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D9C1EF74(void *a1)
{
  v3 = sub_1D9C7B80C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  sub_1D9C1F380();
  sub_1D9C1E8DC();
  (*(v4 + 16))(v6, v9, v3);
  v10 = sub_1D9C1F49C(v6, a1);
  if (v1)
  {
    (*(v4 + 8))(v9, v3);
  }

  else
  {
    v11 = v10;
    (*(v4 + 8))(v9, v3);

    type metadata accessor for TitleClassificationModel();
    *(swift_allocObject() + 16) = v11;
  }
}

void sub_1D9C1F380()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_1D9C7DC4C();
  v2 = sub_1D9C7DC4C();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_1D9C7B7CC();
  }

  else
  {
    __break(1u);
  }
}

id sub_1D9C1F49C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D9C7B77C();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1D9C7B80C();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1D9C7B70C();

    swift_willThrow();
    v11 = sub_1D9C7B80C();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

void sub_1D9C1F8B0(uint64_t a1)
{
  v2 = sub_1D9C7B80C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1D9C7DC4C();
  v12 = sub_1D9C7DC4C();
  v13 = [v10 URLForResource:v11 withExtension:v12];

  if (v13)
  {
    sub_1D9C7B7CC();

    sub_1D9C1E8DC();
    v14 = v2;
    (*(v3 + 16))(v5, v8, v2);
    v15 = v18[1];
    v16 = sub_1D9C1F49C(v5, a1);
    if (v15)
    {
      (*(v3 + 8))(v8, v2);
    }

    else
    {
      v17 = v16;
      (*(v3 + 8))(v8, v14);
      type metadata accessor for OCRAddressModel();
      *(swift_allocObject() + 16) = v17;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D9C1FAF0(void *a1)
{
  v3 = sub_1D9C7B80C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  sub_1D9C1FEFC();
  sub_1D9C1E8DC();
  (*(v4 + 16))(v6, v9, v3);
  v10 = sub_1D9C1F49C(v6, a1);
  if (v1)
  {
    (*(v4 + 8))(v9, v3);
  }

  else
  {
    v11 = v10;
    (*(v4 + 8))(v9, v3);

    type metadata accessor for CategoryClassificationModel();
    *(swift_allocObject() + 16) = v11;
  }
}

void sub_1D9C1FEFC()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_1D9C7DC4C();
  v2 = sub_1D9C7DC4C();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_1D9C7B7CC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D9C20018(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54588);
    v3 = sub_1D9C7E3CC();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      sub_1D9C7E8DC();
      sub_1D9A72740(v6);
      sub_1D9C7DD6C();

      result = sub_1D9C7E93C();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xE700000000000000;
          v14 = 0x38343938333851;
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v13 = 0xE600000000000000;
              v14 = 0x363736323251;
              break;
            case 2:
              v13 = 0xE900000000000036;
              v14 = 0x3935373131353651;
              break;
            case 3:
              v13 = 0xE600000000000000;
              v14 = 0x343836323151;
              break;
            case 4:
              v13 = 0xE600000000000000;
              v14 = 0x353437343151;
              break;
            case 5:
              v13 = 0xE400000000000000;
              v14 = 909457233;
              break;
            case 6:
              v13 = 0xE400000000000000;
              v14 = 959592273;
              break;
            case 7:
              v13 = 0xE400000000000000;
              v14 = 875835729;
              break;
            case 8:
              v13 = 0xE400000000000000;
              v14 = 909390161;
              break;
            case 9:
              v13 = 0xE500000000000000;
              v14 = 0x3331313551;
              break;
            case 0xA:
              v13 = 0xE600000000000000;
              v14 = 0x363038333451;
              break;
            case 0xB:
              v13 = 0xE600000000000000;
              v14 = 0x313138303151;
              break;
            case 0xC:
              v14 = 0x3937343138373551;
              v13 = 0xE900000000000035;
              break;
            case 0xD:
              v14 = 0x39363130343351;
              break;
            case 0xE:
              v13 = 0xE500000000000000;
              v14 = 0x3439323551;
              break;
            case 0xF:
              v13 = 0xE600000000000000;
              v14 = 0x303634313151;
              break;
            case 0x10:
              v13 = 0xE400000000000000;
              v14 = 825701713;
              break;
            case 0x11:
              v14 = 0x39373931313851;
              break;
            case 0x12:
              v14 = 0x36323436383351;
              break;
            case 0x13:
              v14 = 909457489;
              v13 = 0xE400000000000000;
              break;
            case 0x14:
              v13 = 0xE800000000000000;
              v14 = 0x3331323530333351;
              break;
            case 0x15:
              v15 = 0x393135323151;
              goto LABEL_42;
            case 0x16:
              v13 = 0xE800000000000000;
              v14 = 0x3130303132393251;
              break;
            case 0x17:
              v13 = 0xE600000000000000;
              v14 = 0x343330313151;
              break;
            case 0x18:
              v14 = 0x35383739323451;
              break;
            case 0x19:
              v14 = 0x34393538303251;
              break;
            case 0x1A:
              v15 = 0x363830363851;
LABEL_42:
              v14 = v15 & 0xFFFFFFFFFFFFLL | 0x31000000000000;
              break;
            case 0x1B:
              v14 = 0x39343536343751;
              break;
            case 0x1C:
              v14 = 0x37333835363451;
              break;
            case 0x1D:
              v13 = 0xE800000000000000;
              v14 = 0x3538393839383851;
              break;
            case 0x1E:
              v13 = 0xE900000000000038;
              v14 = 0x3234353231373151;
              break;
            case 0x1F:
              v13 = 0xE800000000000000;
              v14 = 0x3238303539363351;
              break;
            case 0x20:
              v13 = 0xE600000000000000;
              v14 = 0x303530303451;
              break;
            case 0x21:
              v14 = 0xD000000000000011;
              v13 = 0x80000001D9CA3750;
              break;
            case 0x22:
              v14 = 0x33313138353251;
              break;
            case 0x23:
              v13 = 0xE800000000000000;
              v14 = 0x3432333338373151;
              break;
            default:
              break;
          }

          v16 = 0xE700000000000000;
          v17 = 0x38343938333851;
          switch(v6)
          {
            case 1:
              v16 = 0xE600000000000000;
              if (v14 == 0x363736323251)
              {
                goto LABEL_110;
              }

              goto LABEL_111;
            case 2:
              v16 = 0xE900000000000036;
              if (v14 != 0x3935373131353651)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 3:
              v16 = 0xE600000000000000;
              if (v14 != 0x343836323151)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 4:
              v16 = 0xE600000000000000;
              if (v14 != 0x353437343151)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 5:
              v16 = 0xE400000000000000;
              if (v14 != 909457233)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 6:
              v16 = 0xE400000000000000;
              if (v14 != 959592273)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 7:
              v16 = 0xE400000000000000;
              if (v14 != 875835729)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 8:
              v16 = 0xE400000000000000;
              if (v14 != 909390161)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 9:
              v16 = 0xE500000000000000;
              if (v14 != 0x3331313551)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 10:
              v16 = 0xE600000000000000;
              if (v14 != 0x363038333451)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 11:
              v16 = 0xE600000000000000;
              if (v14 != 0x313138303151)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 12:
              v16 = 0xE900000000000035;
              if (v14 != 0x3937343138373551)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 13:
              v18 = 0x363130343351;
              goto LABEL_86;
            case 14:
              v16 = 0xE500000000000000;
              if (v14 != 0x3439323551)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 15:
              v16 = 0xE600000000000000;
              if (v14 != 0x303634313151)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 16:
              v16 = 0xE400000000000000;
              if (v14 != 825701713)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 17:
              v18 = 0x373931313851;
              goto LABEL_86;
            case 18:
              if (v14 != 0x36323436383351)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 19:
              v16 = 0xE400000000000000;
              if (v14 != 909457489)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 20:
              v16 = 0xE800000000000000;
              if (v14 != 0x3331323530333351)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 21:
              v19 = 0x393135323151;
              goto LABEL_115;
            case 22:
              v16 = 0xE800000000000000;
              if (v14 != 0x3130303132393251)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 23:
              v16 = 0xE600000000000000;
              if (v14 != 0x343330313151)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 24:
              if (v14 != 0x35383739323451)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 25:
              if (v14 != 0x34393538303251)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 26:
              v19 = 0x363830363851;
LABEL_115:
              if (v14 != (v19 & 0xFFFFFFFFFFFFLL | 0x31000000000000))
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 27:
              v18 = 0x343536343751;
LABEL_86:
              if (v14 != (v18 & 0xFFFFFFFFFFFFLL | 0x39000000000000))
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 28:
              if (v14 != 0x37333835363451)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 29:
              v16 = 0xE800000000000000;
              v17 = 0x3538393839383851;
              goto LABEL_109;
            case 30:
              v16 = 0xE900000000000038;
              if (v14 != 0x3234353231373151)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 31:
              v16 = 0xE800000000000000;
              if (v14 != 0x3238303539363351)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 32:
              v16 = 0xE600000000000000;
              if (v14 != 0x303530303451)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 33:
              v16 = 0x80000001D9CA3750;
              if (v14 != 0xD000000000000011)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 34:
              if (v14 != 0x33313138353251)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            case 35:
              v16 = 0xE800000000000000;
              if (v14 != 0x3432333338373151)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            default:
LABEL_109:
              if (v14 != v17)
              {
                goto LABEL_111;
              }

LABEL_110:
              if (v13 == v16)
              {

                goto LABEL_4;
              }

LABEL_111:
              v20 = sub_1D9C7E7DC();

              if (v20)
              {
                goto LABEL_4;
              }

              v9 = (v9 + 1) & v8;
              v10 = v9 >> 6;
              v11 = *(v5 + 8 * (v9 >> 6));
              v12 = 1 << v9;
              if ((v11 & (1 << v9)) == 0)
              {
                goto LABEL_117;
              }

              break;
          }
        }
      }

LABEL_117:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      *(v3 + 16) = v23;
LABEL_4:
      if (++v4 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D9C208D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54580);
    v3 = sub_1D9C7E3CC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v11 = (v6 + 16 * v4);
      v12 = *v11;
      v13 = *(v11 + 8);
      sub_1D9C7E8DC();
      sub_1D9A7EA10();
      sub_1D9C7DBDC();
      result = sub_1D9C7E93C();
      v15 = ~(-1 << *(v3 + 32));
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = *(v5 + 8 * v17);
      v19 = 1 << (result & v15);
      v20 = *(v3 + 48);
      if ((v19 & v18) != 0)
      {
        do
        {
          v21 = (v20 + 16 * v16);
          if (*(v21 + 8))
          {
            v22 = *v21 != 0;
          }

          else
          {
            v22 = *v21;
          }

          if (v13)
          {
            if (v12)
            {
              if (v22 == 1)
              {
                goto LABEL_5;
              }
            }

            else if (!v22)
            {
              goto LABEL_5;
            }
          }

          else if (v22 == v12)
          {
            goto LABEL_5;
          }

          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v5 + 8 * (v16 >> 6));
          v19 = 1 << v16;
        }

        while ((v18 & (1 << v16)) != 0);
      }

      *(v5 + 8 * v17) = v18 | v19;
      v7 = v20 + 16 * v16;
      *v7 = v12;
      *(v7 + 8) = v13;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        break;
      }

      *(v3 + 16) = v10;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D9C20A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53410);
    v3 = sub_1D9C7E3CC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1D9C7E8DC();

      sub_1D9C7DD6C();
      result = sub_1D9C7E93C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1D9C7E7DC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

float faiss::fvec_norms_L2(faiss *this, faiss *a2, unint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v8 = 4 * a3;
    do
    {
      result = sqrtf(faiss::fvec_norm_L2sqr(a2, a3));
      *this = result;
      this = (this + 4);
      a2 = (a2 + v8);
      --v4;
    }

    while (v4);
  }

  return result;
}

void faiss::fvec_norms_L2sqr(faiss *this, faiss *a2, unint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v8 = 4 * a3;
    do
    {
      *this = faiss::fvec_norm_L2sqr(a2, a3);
      this = (this + 4);
      a2 = (a2 + v8);
      --v4;
    }

    while (v4);
  }
}

void faiss::fvec_renorm_L2(unint64_t this, uint64_t a2, float *a3, float *a4)
{
  if (a2)
  {
    v7 = 0;
    v8 = 4 * this;
    v9 = a3;
    do
    {
      v10 = faiss::fvec_norm_L2sqr(&a3[v7 * this], this);
      if (v10 > 0.0 && this)
      {
        v11 = 1.0 / sqrtf(v10);
        v12 = v9;
        v13 = this;
        do
        {
          *v12 = v11 * *v12;
          ++v12;
          --v13;
        }

        while (v13);
      }

      ++v7;
      v9 = (v9 + v8);
    }

    while (v7 != a2);
  }
}

void faiss::knn_inner_product(uint64_t a1, const float *a2, unint64_t a3, unint64_t a4, uint64_t a5, int8x16_t *a6)
{
  v8 = a6->u64[1];
  if (v8 >= faiss::distance_compute_min_k_reservoir)
  {
    v68 = a6->i64[0];
    v69 = vextq_s8(a6[1], a6[1], 8uLL);
    *v72 = 0u;
    *v73 = 0u;
    v74 = 0u;
    __p = 0u;
    v76 = 0;
    v70 = v8;
    v71 = (2 * v8 + 15) & 0xFFFFFFFFFFFFFFF0;
    if (faiss::distance_compute_blas_threshold <= a4)
    {
      if (a4 && a5)
      {
        operator new[]();
      }
    }

    else
    {
      faiss::ReservoirResultHandler<faiss::CMin<float,long long>>::SingleResultHandler::SingleResultHandler(&alpha, &v68);
      if (a4)
      {
        v52 = 0;
        do
        {
          v53 = alpha;
          v54 = *(alpha + 24);
          v55 = *(alpha + 32);
          if (v54 >= v55)
          {
            __assert_rtn("ReservoirTopN", "ResultHandler.h", 148, "n < capacity");
          }

          v82[0] = v78;
          v82[1] = v80;
          v82[2] = 0;
          v82[3] = v54;
          v82[4] = v55;
          v83 = -8388609;
          v84 = v52;
          if (a5)
          {
            v56 = 0;
            v57 = a2;
            do
            {
              v58 = faiss::fvec_inner_product((a1 + 4 * v52 * a3), v57, a3);
              faiss::ReservoirTopN<faiss::CMin<float,long long>>::add(v82, v56++, v58);
              v57 += a3;
            }

            while (a5 != v56);
            v53 = alpha;
            v59 = v84;
            v54 = *(alpha + 24);
          }

          else
          {
            v59 = v52;
          }

          faiss::ReservoirTopN<faiss::CMin<float,long long>>::to_result(v82, (*(v53 + 8) + 4 * v59 * v54), (*(v53 + 16) + 8 * v59 * v54));
          ++v52;
        }

        while (v52 != a4);
      }

      if (v80)
      {
        v81 = v80;
        operator delete(v80);
      }

      if (v78)
      {
        v79 = v78;
        operator delete(v78);
      }
    }

    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (v73[1])
    {
      *&v74 = v73[1];
      operator delete(v73[1]);
    }

    if (v72[0])
    {
      v72[1] = v72[0];
      operator delete(v72[0]);
    }
  }

  else
  {
    v10 = a6[1].i64[0];
    v9 = a6[1].i64[1];
    v68 = a6->i64[0];
    v64 = v9;
    v69.i64[0] = v9;
    v69.i64[1] = v10;
    v60 = v10;
    v70 = v8;
    if (faiss::distance_compute_blas_threshold > a4)
    {
      if (!a4)
      {
        return;
      }

      v11 = 0;
      v12 = v9;
      v13 = v10;
      while (1)
      {
        if (v8)
        {
          v14 = v12;
          v15 = v13;
          v16 = v8;
          do
          {
            *v14++ = -8388609;
            *v15 = -1;
            v15 += 2;
            --v16;
          }

          while (v16);
        }

        b = v13;
        v66 = v12;
        v17 = v11;
        v18 = (v64 + 4 * v11 * v8);
        v19 = (v60 + 8 * v11 * v8);
        v20 = a3;
        if (!a5)
        {
          goto LABEL_25;
        }

        v21 = 0;
        v22 = a2;
        v23 = v18 - 1;
        v24 = v19 - 1;
        do
        {
          v25 = faiss::fvec_inner_product((a1 + 4 * v17 * a3), v22, v20);
          if (*v18 >= v25)
          {
            goto LABEL_24;
          }

          if (v8 < 2)
          {
            v26 = 1;
            goto LABEL_23;
          }

          v27 = 3;
          v28 = 2;
          v29 = 1;
          while (1)
          {
            if (v28 == v8)
            {
              v30 = v23[v8];
LABEL_17:
              v31 = v30;
              v32 = v19 - 1;
              v27 = v28;
              if (v30 > v25)
              {
                break;
              }

              goto LABEL_20;
            }

            v30 = v23[v28];
            v31 = v18[v28];
            if (v30 < v31)
            {
              goto LABEL_17;
            }

            v32 = v19;
            if (v31 > v25)
            {
              break;
            }

LABEL_20:
            v23[v29] = v31;
            v24[v29] = v32[v28];
            v26 = v27;
            v28 = 2 * v27;
            v27 = (2 * v27) | 1;
            v29 = v26;
            if (v28 > v8)
            {
              goto LABEL_23;
            }
          }

          v26 = v29;
LABEL_23:
          v23[v26] = v25;
          v24[v26] = v21;
LABEL_24:
          v20 = a3;
          v22 += a3;
          ++v21;
        }

        while (v21 != a5);
LABEL_25:
        if (!v8)
        {
          v34 = 0;
          v37 = v17;
          v38 = a4;
          v39 = v66;
          goto LABEL_45;
        }

        v33 = 0;
        v34 = 0;
        v35 = v18 - 1;
        v36 = v19 - 1;
        v37 = v17;
        v38 = a4;
        v39 = v66;
        while (2)
        {
          v40 = *v18;
          v41 = *v19;
          v42 = v8 - v33;
          v43 = v35[v8 - v33];
          if (v8 - v33 < 2)
          {
            v44 = 1;
            goto LABEL_40;
          }

          v45 = 3;
          v46 = 2;
          v47 = 1;
          while (2)
          {
            if (v46 == v42)
            {
              v48 = v35[v42];
LABEL_33:
              v49 = v48;
              v50 = v19 - 1;
              v45 = v46;
              if (v43 < v48)
              {
                break;
              }

              goto LABEL_36;
            }

            v48 = v35[v46];
            v49 = v18[v46];
            if (v48 < v49)
            {
              goto LABEL_33;
            }

            v50 = v19;
            if (v43 >= v49)
            {
LABEL_36:
              v35[v47] = v49;
              v36[v47] = v50[v46];
              v44 = v45;
              v46 = 2 * v45;
              v45 = (2 * v45) | 1;
              v47 = v44;
              if (v46 > v42)
              {
                goto LABEL_39;
              }

              continue;
            }

            break;
          }

          v44 = v47;
LABEL_39:
          v43 = v35[v42];
LABEL_40:
          v35[v44] = v43;
          v36[v44] = v36[v42];
          v51 = v8 + ~v34;
          v18[v51] = v40;
          v19[v51] = v41;
          if (v41 != -1)
          {
            ++v34;
          }

          if (++v33 != v8)
          {
            continue;
          }

          break;
        }

LABEL_45:
        memmove(v18, &v18[v8 - v34], 4 * v34);
        memmove(v19, &v19[v8 - v34], 8 * v34);
        if (v34 < v8)
        {
          do
          {
            v39[v34] = -8388609;
            *&b[2 * v34++] = -1;
          }

          while (v8 != v34);
        }

        v11 = v37 + 1;
        v13 = &b[2 * v8];
        v12 = &v39[v8];
        if (v11 == v38)
        {
          return;
        }
      }
    }

    if (a4 && a5)
    {
      operator new[]();
    }
  }
}

void faiss::knn_L2sqr(uint64_t a1, const float *a2, unint64_t a3, unint64_t a4, uint64_t a5, int8x16_t *a6)
{
  v6 = a5;
  v9 = a6->u64[1];
  if (v9 >= faiss::distance_compute_min_k_reservoir)
  {
    v66 = a6->i64[0];
    v67 = vextq_s8(a6[1], a6[1], 8uLL);
    *v70 = 0u;
    *v71 = 0u;
    v72 = 0u;
    __p = 0u;
    v74 = 0;
    v68 = v9;
    v69 = (2 * v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    if (faiss::distance_compute_blas_threshold <= a4)
    {
      if (a4 && a5)
      {
        operator new[]();
      }
    }

    else
    {
      faiss::ReservoirResultHandler<faiss::CMin<float,long long>>::SingleResultHandler::SingleResultHandler(&alpha, &v66);
      if (a4)
      {
        v50 = 0;
        do
        {
          v51 = alpha;
          v52 = *(alpha + 24);
          v53 = *(alpha + 32);
          if (v52 >= v53)
          {
            __assert_rtn("ReservoirTopN", "ResultHandler.h", 148, "n < capacity");
          }

          v80[0] = v76;
          v80[1] = v78;
          v80[2] = 0;
          v80[3] = v52;
          v80[4] = v53;
          v81 = 2139095039;
          v82 = v50;
          if (v6)
          {
            v54 = 0;
            v55 = a2;
            do
            {
              v56 = faiss::fvec_L2sqr((a1 + 4 * v50 * a3), v55, a3);
              faiss::ReservoirTopN<faiss::CMax<float,long long>>::add(v80, v54++, v56);
              v55 += a3;
            }

            while (v6 != v54);
            v51 = alpha;
            v57 = v82;
            v52 = *(alpha + 24);
          }

          else
          {
            v57 = v50;
          }

          faiss::ReservoirTopN<faiss::CMax<float,long long>>::to_result(v80, (*(v51 + 8) + 4 * v57 * v52), (*(v51 + 16) + 8 * v57 * v52));
          ++v50;
        }

        while (v50 != a4);
      }

      if (v78)
      {
        v79 = v78;
        operator delete(v78);
      }

      if (v76)
      {
        v77 = v76;
        operator delete(v76);
      }
    }

    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (v71[1])
    {
      *&v72 = v71[1];
      operator delete(v71[1]);
    }

    if (v70[0])
    {
      v70[1] = v70[0];
      operator delete(v70[0]);
    }
  }

  else
  {
    v11 = a6[1].i64[0];
    v10 = a6[1].i64[1];
    v66 = a6->i64[0];
    b = v11;
    v61 = v10;
    v67.i64[0] = v10;
    v67.i64[1] = v11;
    v68 = v9;
    if (faiss::distance_compute_blas_threshold > a4)
    {
      if (!a4)
      {
        return;
      }

      v12 = 0;
      v13 = b;
      v14 = v10;
      while (1)
      {
        if (v9)
        {
          v15 = v14;
          v16 = v13;
          v17 = v9;
          do
          {
            *v15++ = 2139095039;
            *v16 = -1;
            v16 += 2;
            --v17;
          }

          while (v17);
        }

        v65 = v12;
        v18 = (v61 + 4 * v12 * v9);
        v19 = &b[2 * v12 * v9];
        v20 = a3;
        if (!v6)
        {
          goto LABEL_25;
        }

        v21 = 0;
        v22 = (a1 + 4 * v12 * a3);
        v23 = v18 - 1;
        v24 = v19 - 2;
        v25 = a2;
        do
        {
          v26 = faiss::fvec_L2sqr(v22, v25, v20);
          if (*v18 <= v26)
          {
            goto LABEL_24;
          }

          if (v9 < 2)
          {
            v27 = 1;
            goto LABEL_23;
          }

          v28 = 3;
          v29 = 2;
          v30 = 1;
          while (1)
          {
            if (v29 == v9)
            {
              v31 = v23[v9];
LABEL_17:
              v32 = v31;
              v33 = v19 - 2;
              v28 = v29;
              if (v31 < v26)
              {
                break;
              }

              goto LABEL_20;
            }

            v31 = v23[v29];
            v32 = v18[v29];
            if (v31 > v32)
            {
              goto LABEL_17;
            }

            v33 = v19;
            if (v32 < v26)
            {
              break;
            }

LABEL_20:
            v23[v30] = v32;
            *&v24[2 * v30] = *&v33[2 * v29];
            v27 = v28;
            v29 = 2 * v28;
            v28 = (2 * v28) | 1;
            v30 = v27;
            if (v29 > v9)
            {
              goto LABEL_23;
            }
          }

          v27 = v30;
LABEL_23:
          v23[v27] = v26;
          *&v24[2 * v27] = v21;
LABEL_24:
          v20 = a3;
          v25 += a3;
          ++v21;
        }

        while (v21 != a5);
LABEL_25:
        if (!v9)
        {
          v35 = 0;
          v6 = a5;
          goto LABEL_45;
        }

        v34 = 0;
        v35 = 0;
        v36 = v18 - 1;
        v37 = v19 - 2;
        v6 = a5;
        while (2)
        {
          v38 = *v18;
          v39 = *v19;
          v40 = v9 - v34;
          v41 = v36[v9 - v34];
          if (v9 - v34 < 2)
          {
            v42 = 1;
            goto LABEL_40;
          }

          v43 = 3;
          v44 = 2;
          v45 = 1;
          while (2)
          {
            if (v44 == v40)
            {
              v46 = v36[v40];
LABEL_33:
              v47 = v46;
              v48 = v19 - 2;
              v43 = v44;
              if (v41 > v46)
              {
                break;
              }

              goto LABEL_36;
            }

            v46 = v36[v44];
            v47 = v18[v44];
            if (v46 > v47)
            {
              goto LABEL_33;
            }

            v48 = v19;
            if (v41 <= v47)
            {
LABEL_36:
              v36[v45] = v47;
              *&v37[2 * v45] = *&v48[2 * v44];
              v42 = v43;
              v44 = 2 * v43;
              v43 = (2 * v43) | 1;
              v45 = v42;
              if (v44 > v40)
              {
                goto LABEL_39;
              }

              continue;
            }

            break;
          }

          v42 = v45;
LABEL_39:
          v41 = v36[v40];
LABEL_40:
          v36[v42] = v41;
          *&v37[2 * v42] = *&v37[2 * v40];
          v49 = v9 + ~v35;
          v18[v49] = v38;
          *&v19[2 * v49] = v39;
          if (v39 != -1)
          {
            ++v35;
          }

          if (++v34 != v9)
          {
            continue;
          }

          break;
        }

LABEL_45:
        memmove(v18, &v18[v9 - v35], 4 * v35);
        memmove(v19, &v19[2 * v9 + -2 * v35], 8 * v35);
        if (v35 < v9)
        {
          do
          {
            v14[v35] = 2139095039;
            *&v13[2 * v35++] = -1;
          }

          while (v9 != v35);
        }

        v12 = v65 + 1;
        v13 += 2 * v9;
        v14 += v9;
        if (v65 + 1 == a4)
        {
          return;
        }
      }
    }

    if (a4 && a5)
    {
      operator new[]();
    }
  }
}

void sub_1D9C220D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  MEMORY[0x1DA73F3F0](v31, 0x1000C8052888210);
  MEMORY[0x1DA73F3F0](v30, 0x1000C8052888210);
  faiss::ReservoirResultHandler<faiss::CMin<float,long long>>::~ReservoirResultHandler(&a30);
  _Unwind_Resume(a1);
}

uint64_t faiss::range_search_L2sqr(faiss *this, const float *a2, unint64_t a3, unint64_t a4, uint64_t a5, faiss::RangeSearchResult *a6, float a7, faiss::RangeSearchResult *a8)
{
  v18 = a6;
  v19 = a7;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  if (faiss::distance_compute_blas_threshold <= a4)
  {
    if (a4 && a5)
    {
      operator new[]();
    }
  }

  else
  {
    faiss::RangeSearchPartialResult::RangeSearchPartialResult(alpha, a6);
    v25 = v19;
    v26 = 0;
    if (a4)
    {
      v10 = 0;
      do
      {
        v26 = faiss::RangeSearchPartialResult::new_result(alpha, v10);
        if (a5)
        {
          v11 = 0;
          v12 = a2;
          do
          {
            v13 = faiss::fvec_L2sqr((this + 4 * v10 * a3), v12, a3);
            if (v25 > v13)
            {
              faiss::RangeQueryResult::add(v26, v13, v11);
            }

            ++v11;
            v12 += a3;
          }

          while (a5 != v11);
        }

        ++v10;
      }

      while (v10 != a4);
    }

    faiss::RangeSearchResultHandler<faiss::CMax<float,long long>>::SingleResultHandler::~SingleResultHandler(alpha);
  }

  return faiss::RangeSearchResultHandler<faiss::CMax<float,long long>>::~RangeSearchResultHandler(&v18);
}

void sub_1D9C225C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  MEMORY[0x1DA73F3F0](v17, 0x1000C8052888210);
  MEMORY[0x1DA73F3F0](v16, 0x1000C8052888210);
  faiss::RangeSearchResultHandler<faiss::CMax<float,long long>>::~RangeSearchResultHandler(va);
  _Unwind_Resume(a1);
}

uint64_t faiss::range_search_inner_product(faiss *this, const float *a2, unint64_t a3, unint64_t a4, uint64_t a5, faiss::RangeSearchResult *a6, float a7, faiss::RangeSearchResult *a8)
{
  v18 = a6;
  v19 = a7;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  if (faiss::distance_compute_blas_threshold <= a4)
  {
    if (a4 && a5)
    {
      operator new[]();
    }
  }

  else
  {
    faiss::RangeSearchPartialResult::RangeSearchPartialResult(alpha, a6);
    v25 = v19;
    v26 = 0;
    if (a4)
    {
      v10 = 0;
      do
      {
        v26 = faiss::RangeSearchPartialResult::new_result(alpha, v10);
        if (a5)
        {
          v11 = 0;
          v12 = a2;
          do
          {
            v13 = faiss::fvec_inner_product((this + 4 * v10 * a3), v12, a3);
            if (v25 < v13)
            {
              faiss::RangeQueryResult::add(v26, v13, v11);
            }

            ++v11;
            v12 += a3;
          }

          while (a5 != v11);
        }

        ++v10;
      }

      while (v10 != a4);
    }

    faiss::RangeSearchResultHandler<faiss::CMax<float,long long>>::SingleResultHandler::~SingleResultHandler(alpha);
  }

  return faiss::RangeSearchResultHandler<faiss::CMax<float,long long>>::~RangeSearchResultHandler(&v18);
}

void sub_1D9C228F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  faiss::RangeSearchResultHandler<faiss::CMax<float,long long>>::~RangeSearchResultHandler(va);
  _Unwind_Resume(a1);
}

void faiss::fvec_inner_products_by_idx(faiss *this, float *a2, const float *a3, const float *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v12 = 0;
    v19 = 8 * a7;
    v20 = 4 * a7;
    do
    {
      if (a7)
      {
        v13 = a4;
        v14 = a7;
        v15 = this;
        do
        {
          v17 = *v13;
          v13 += 2;
          v16 = v17;
          if ((v17 & 0x8000000000000000) == 0)
          {
            *v15 = faiss::fvec_inner_product(&a2[v12 * a5], &a3[v16 * a5], a5);
          }

          ++v15;
          --v14;
        }

        while (v14);
      }

      ++v12;
      this = (this + v20);
      a4 = (a4 + v19);
    }

    while (v12 != a6);
  }
}

void faiss::fvec_L2sqr_by_idx(faiss *this, float *a2, const float *a3, const float *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v12 = 0;
    v19 = 8 * a7;
    v20 = 4 * a7;
    do
    {
      if (a7)
      {
        v13 = a4;
        v14 = a7;
        v15 = this;
        do
        {
          v17 = *v13;
          v13 += 2;
          v16 = v17;
          if ((v17 & 0x8000000000000000) == 0)
          {
            *v15 = faiss::fvec_L2sqr(&a2[v12 * a5], &a3[v16 * a5], a5);
          }

          ++v15;
          --v14;
        }

        while (v14);
      }

      ++v12;
      this = (this + v20);
      a4 = (a4 + v19);
    }

    while (v12 != a6);
  }
}

void faiss::pairwise_indexed_L2sqr(unint64_t this, uint64_t a2, uint64_t a3, const float *a4, const float *a5, const float *a6, uint64_t *a7, float *a8)
{
  if (a2)
  {
    v13 = a2;
    do
    {
      v16 = *a4;
      a4 += 2;
      v15 = v16;
      if ((v16 & 0x8000000000000000) == 0 && (*a6 & 0x8000000000000000) == 0)
      {
        *a7 = faiss::fvec_L2sqr((a3 + 4 * v15 * this), &a5[*a6 * this], this);
      }

      a7 = (a7 + 4);
      a6 += 2;
      --v13;
    }

    while (v13);
  }
}

void faiss::pairwise_indexed_inner_product(unint64_t this, uint64_t a2, uint64_t a3, const float *a4, const float *a5, const float *a6, uint64_t *a7, float *a8)
{
  if (a2)
  {
    v13 = a2;
    do
    {
      v16 = *a4;
      a4 += 2;
      v15 = v16;
      if ((v16 & 0x8000000000000000) == 0 && (*a6 & 0x8000000000000000) == 0)
      {
        *a7 = faiss::fvec_inner_product((a3 + 4 * v15 * this), &a5[*a6 * this], this);
      }

      a7 = (a7 + 4);
      a6 += 2;
      --v13;
    }

    while (v13);
  }
}

char *faiss::knn_inner_products_by_idx(char *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v54 = result;
  if (!a5)
  {
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a7[1];
  do
  {
    v13 = a7[2];
    v12 = a7[3];
    v14 = a7[1];
    if (v11)
    {
      v15 = (v13 + v14 * v9);
      v16 = v11;
      v17 = (v12 + v14 * v8);
      do
      {
        *v17++ = -8388609;
        *v15++ = -1;
        --v16;
      }

      while (v16);
    }

    v61 = v9;
    v62 = v8;
    v63 = v10;
    v59 = v14;
    v60 = v12;
    v18 = (v12 + 4 * v14 * v10);
    v58 = v13;
    v19 = (v13 + 8 * v14 * v10);
    if (!a6)
    {
      goto LABEL_24;
    }

    v20 = 0;
    v21 = &v54[4 * v10 * a4];
    v22 = a3 + 8 * v10 * a6;
    v23 = v18 - 1;
    v24 = v19 - 1;
    do
    {
      v25 = *(v22 + 8 * v20);
      if (v25 < 0)
      {
        break;
      }

      v26 = faiss::fvec_inner_product(v21, (a2 + 4 * v25 * a4), a4);
      if (v26 <= *v18)
      {
        goto LABEL_23;
      }

      v27 = *(v22 + 8 * v20);
      if (v11 < 2)
      {
        v28 = 1;
        goto LABEL_22;
      }

      v29 = 3;
      v30 = 2;
      v31 = 1;
      while (1)
      {
        if (v30 == v11)
        {
          v32 = v23[v11];
          goto LABEL_16;
        }

        v32 = v23[v30];
        v33 = v18[v30];
        if (v32 >= v33)
        {
          break;
        }

LABEL_16:
        v33 = v32;
        v34 = v19 - 1;
        v29 = v30;
        if (v32 > v26)
        {
          goto LABEL_21;
        }

LABEL_19:
        v23[v31] = v33;
        v24[v31] = v34[v30];
        v28 = v29;
        v30 = 2 * v29;
        v29 = (2 * v29) | 1;
        v31 = v28;
        if (v30 > v11)
        {
          goto LABEL_22;
        }
      }

      v34 = v19;
      if (v33 <= v26)
      {
        goto LABEL_19;
      }

LABEL_21:
      v28 = v31;
LABEL_22:
      v23[v28] = v26;
      v24[v28] = v27;
LABEL_23:
      ++v20;
    }

    while (v20 != a6);
LABEL_24:
    if (!v11)
    {
      v36 = 0;
      goto LABEL_44;
    }

    v35 = 0;
    v36 = 0;
    v37 = v18 - 1;
    v38 = v19 - 1;
    while (2)
    {
      v39 = *v18;
      v40 = *v19;
      v41 = v11 - v35;
      v42 = v37[v11 - v35];
      if (v11 - v35 < 2)
      {
        v43 = 1;
        goto LABEL_39;
      }

      v44 = 3;
      v45 = 2;
      v46 = 1;
      while (2)
      {
        if (v45 == v41)
        {
          v47 = v37[v41];
LABEL_32:
          v48 = v47;
          v49 = v19 - 1;
          v44 = v45;
          if (v42 < v47)
          {
            break;
          }

          goto LABEL_35;
        }

        v47 = v37[v45];
        v48 = v18[v45];
        if (v47 < v48)
        {
          goto LABEL_32;
        }

        v49 = v19;
        if (v42 >= v48)
        {
LABEL_35:
          v37[v46] = v48;
          v38[v46] = v49[v45];
          v43 = v44;
          v45 = 2 * v44;
          v44 = (2 * v44) | 1;
          v46 = v43;
          if (v45 > v41)
          {
            goto LABEL_38;
          }

          continue;
        }

        break;
      }

      v43 = v46;
LABEL_38:
      v42 = v37[v41];
LABEL_39:
      v37[v43] = v42;
      v38[v43] = v38[v41];
      v50 = v11 + ~v36;
      v18[v50] = v39;
      v19[v50] = v40;
      if (v40 != -1)
      {
        ++v36;
      }

      if (++v35 != v11)
      {
        continue;
      }

      break;
    }

LABEL_44:
    memmove(v18, &v18[v11 - v36], 4 * v36);
    result = memmove(v19, &v19[v11 - v36], 8 * v36);
    v51 = v11 - v36;
    if (v11 > v36)
    {
      v52 = (v58 + v59 * v61 + 8 * v36);
      v53 = (v60 + v59 * v62 + 4 * v36);
      do
      {
        *v53++ = -8388609;
        *v52++ = -1;
        --v51;
      }

      while (v51);
    }

    v10 = v63 + 1;
    v9 = v61 + 8;
    v8 = v62 + 4;
  }

  while (v63 + 1 != a5);
  return result;
}

char *faiss::knn_L2sqr_by_idx(char *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v56 = result;
  if (!a5)
  {
    return result;
  }

  v7 = a7;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a7[1];
  do
  {
    v15 = v7[2];
    v14 = v7[3];
    v16 = v7[1];
    if (v16)
    {
      v17 = (v15 + v16 * v11);
      v18 = v7[1];
      v19 = (v14 + v16 * v10);
      do
      {
        *v19++ = 2139095039;
        *v17++ = -1;
        --v18;
      }

      while (v18);
    }

    v62 = v16;
    v63 = v14;
    v20 = (v14 + 4 * v16 * v12);
    v61 = v15;
    v21 = (v15 + 8 * v16 * v12);
    v64 = v12;
    if (a6)
    {
      v59 = v11;
      v60 = v10;
      v22 = 0;
      v23 = &v56[4 * v12 * a4];
      v24 = a3 + 8 * v12 * a6;
      v25 = v20 - 1;
      v26 = v21 - 1;
      while (1)
      {
        v27 = faiss::fvec_L2sqr(v23, (a2 + 4 * *(v24 + 8 * v22) * a4), a4);
        if (v27 >= *v20)
        {
          goto LABEL_22;
        }

        v28 = *(v24 + 8 * v22);
        if (v13 < 2)
        {
          v29 = 1;
          goto LABEL_21;
        }

        v30 = 3;
        v31 = 2;
        v32 = 1;
        while (1)
        {
          if (v31 == v13)
          {
            v33 = v25[v13];
            goto LABEL_15;
          }

          v33 = v25[v31];
          v34 = v20[v31];
          if (v33 <= v34)
          {
            break;
          }

LABEL_15:
          v34 = v33;
          v35 = v21 - 1;
          v30 = v31;
          if (v33 < v27)
          {
            goto LABEL_20;
          }

LABEL_18:
          v25[v32] = v34;
          v26[v32] = v35[v31];
          v29 = v30;
          v31 = 2 * v30;
          v30 = (2 * v30) | 1;
          v32 = v29;
          if (v31 > v13)
          {
            goto LABEL_21;
          }
        }

        v35 = v21;
        if (v34 >= v27)
        {
          goto LABEL_18;
        }

LABEL_20:
        v29 = v32;
LABEL_21:
        v25[v29] = v27;
        v26[v29] = v28;
LABEL_22:
        if (++v22 == a6)
        {
          v7 = a7;
          v16 = a7[1];
          v11 = v59;
          v10 = v60;
          break;
        }
      }
    }

    if (!v16)
    {
      v37 = 0;
      goto LABEL_44;
    }

    v36 = 0;
    v37 = 0;
    v38 = v20 - 1;
    v39 = v21 - 1;
    do
    {
      v40 = *v20;
      v41 = *v21;
      v42 = v16 - v36;
      v43 = v38[v16 - v36];
      if (v16 - v36 < 2)
      {
        v44 = 1;
        goto LABEL_39;
      }

      v45 = 3;
      v46 = 2;
      v47 = 1;
      while (1)
      {
        if (v46 == v42)
        {
          v48 = v38[v42];
          goto LABEL_32;
        }

        v48 = v38[v46];
        v49 = v20[v46];
        if (v48 <= v49)
        {
          break;
        }

LABEL_32:
        v49 = v48;
        v50 = v21 - 1;
        v45 = v46;
        if (v43 > v48)
        {
          goto LABEL_37;
        }

LABEL_35:
        v38[v47] = v49;
        v39[v47] = v50[v46];
        v44 = v45;
        v46 = 2 * v45;
        v45 = (2 * v45) | 1;
        v47 = v44;
        if (v46 > v42)
        {
          goto LABEL_38;
        }
      }

      v50 = v21;
      if (v43 <= v49)
      {
        goto LABEL_35;
      }

LABEL_37:
      v44 = v47;
LABEL_38:
      v43 = v38[v42];
LABEL_39:
      v38[v44] = v43;
      v39[v44] = v39[v42];
      v51 = v16 + ~v37;
      v20[v51] = v40;
      v21[v51] = v41;
      if (v41 != -1)
      {
        ++v37;
      }

      ++v36;
    }

    while (v36 != v16);
LABEL_44:
    memmove(v20, &v20[v16 - v37], 4 * v37);
    result = memmove(v21, &v21[v16 - v37], 8 * v37);
    v52 = v16 - v37;
    if (v16 > v37)
    {
      v53 = (v61 + v62 * v11 + 8 * v37);
      v54 = (v63 + v62 * v10 + 4 * v37);
      do
      {
        *v54++ = 2139095039;
        *v53++ = -1;
        --v52;
      }

      while (v52);
    }

    v12 = v64 + 1;
    v11 += 8;
    v10 += 4;
  }

  while (v64 + 1 != a5);
  return result;
}

uint64_t faiss::pairwise_L2sqr(uint64_t this, uint64_t a2, faiss *a3, uint64_t a4, float *a5, float *a6, float *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 && a4)
  {
    v14 = this;
    v15 = a9;
    if (a7 == -1)
    {
      v16 = this;
    }

    else
    {
      v16 = a7;
    }

    if (a8 == -1)
    {
      v17 = this;
    }

    else
    {
      v17 = a8;
    }

    if (a9 == -1)
    {
      v15 = a4;
    }

    v30 = v15;
    v31 = v17;
    if (a4 >= 1)
    {
      v18 = a5;
      v19 = 4 * v17;
      v20 = a6;
      v21 = a4;
      do
      {
        *v20++ = faiss::fvec_norm_L2sqr(v18, v14);
        v18 = (v18 + v19);
        --v21;
      }

      while (v21);
    }

    if (a2 > 1)
    {
      v22 = 1;
      v23 = v30;
      do
      {
        v24 = faiss::fvec_norm_L2sqr((a3 + 4 * v22 * v16), v14);
        v25 = a6;
        v26 = a4;
        if (a4 >= 1)
        {
          do
          {
            v25[v23] = v24 + *v25;
            ++v25;
            --v26;
          }

          while (v26);
        }

        ++v22;
        v23 += v30;
      }

      while (v22 != a2);
    }

    v27 = faiss::fvec_norm_L2sqr(a3, v14);
    if (a4 >= 1)
    {
      v28 = a6;
      v29 = a4;
      do
      {
        *v28 = v27 + *v28;
        ++v28;
        --v29;
      }

      while (v29);
    }

    m = a4;
    k = v14;
    n = a2;
    lda = v31;
    v37 = v16;
    beta = 1.0;
    v35 = v30;
    alpha = -2.0;
    return sgemm_("Transposed", "Not transposed", &m, &n, &k, &alpha, a5, &lda, a3, &v37, &beta, a6, &v35);
  }

  return this;
}

float *faiss::inner_product_to_L2sqr(float *this, float *a2, float *a3, const float *a4, uint64_t a5)
{
  if (a4)
  {
    for (i = 0; i != a4; i = (i + 1))
    {
      v6 = a3;
      v7 = this;
      for (j = a5; j; --j)
      {
        v9 = *v6++;
        *v7 = (a2[i] + v9) + (*v7 * -2.0);
        ++v7;
      }

      this += a5;
    }
  }

  return this;
}

void *faiss::ReservoirResultHandler<faiss::CMin<float,long long>>::~ReservoirResultHandler(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  return a1;
}

void *faiss::HeapResultHandler<faiss::CMin<float,long long>>::add_results(void *result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = result[4];
  v5 = result[5];
  if (v4 < v5)
  {
    v6 = result[1];
    v7 = result[2];
    v8 = a4 - 4 * a2;
    for (i = result[4]; i != v5; ++i)
    {
      if (a3 <= a2)
      {
        continue;
      }

      v10 = result[3] * i;
      v11 = (v6 + 4 * v10);
      v12 = v7 + 8 * v10;
      v13 = v11 - 1;
      v14 = *v11;
      v15 = v12 - 8;
      v16 = a2;
      do
      {
        v17 = *(v8 + 4 * (i - v4) * (a3 - a2) + 4 * v16);
        if (v14 >= v17)
        {
          goto LABEL_19;
        }

        v18 = result[3];
        if (v18 < 2)
        {
          v19 = 1;
          goto LABEL_18;
        }

        v20 = 3;
        v21 = 2;
        v22 = 1;
        while (1)
        {
          if (v21 == v18)
          {
            v23 = v13[v18];
            goto LABEL_12;
          }

          v23 = v13[v21];
          v24 = v11[v21];
          if (v23 >= v24)
          {
            break;
          }

LABEL_12:
          v24 = v23;
          v25 = v12 - 8;
          v20 = v21;
          if (v23 > v17)
          {
            goto LABEL_17;
          }

LABEL_15:
          v13[v22] = v24;
          *(v15 + 8 * v22) = *(v25 + 8 * v21);
          v19 = v20;
          v21 = 2 * v20;
          v20 = (2 * v20) | 1;
          v22 = v19;
          if (v21 > v18)
          {
            goto LABEL_18;
          }
        }

        v25 = v12;
        if (v24 <= v17)
        {
          goto LABEL_15;
        }

LABEL_17:
        v19 = v22;
LABEL_18:
        v13[v19] = v17;
        *(v15 + 8 * v19) = v16;
        v14 = *v11;
LABEL_19:
        ++v16;
      }

      while (v16 != a3);
    }
  }

  return result;
}

void *faiss::HeapResultHandler<faiss::CMin<float,long long>>::end_multiple(void *result)
{
  v1 = result[4];
  if (v1 >= result[5])
  {
    return result;
  }

  v2 = result;
  v3 = 8 * v1;
  v4 = 4 * v1;
  do
  {
    v6 = v2[2];
    v5 = v2[3];
    v28 = v2[1];
    v7 = (v28 + 4 * v5 * v1);
    v8 = (v6 + 8 * v5 * v1);
    if (!v5)
    {
      v10 = 0;
      goto LABEL_23;
    }

    v9 = 0;
    v10 = 0;
    v11 = v7 - 1;
    v12 = v8 - 1;
    do
    {
      v13 = *v7;
      v14 = *v8;
      v15 = v5 - v9;
      v16 = *&v11[v5 - v9];
      if (v5 - v9 < 2)
      {
        v17 = 1;
        goto LABEL_18;
      }

      v18 = 3;
      v19 = 2;
      v20 = 1;
      while (1)
      {
        if (v19 == v15)
        {
          v21 = *&v11[v15];
          goto LABEL_11;
        }

        v21 = *&v11[v19];
        v22 = *&v7[v19];
        if (v21 >= v22)
        {
          break;
        }

LABEL_11:
        v22 = v21;
        v23 = v8 - 1;
        v18 = v19;
        if (v16 < v21)
        {
          goto LABEL_16;
        }

LABEL_14:
        *&v11[v20] = v22;
        v12[v20] = v23[v19];
        v17 = v18;
        v19 = 2 * v18;
        v18 = (2 * v18) | 1;
        v20 = v17;
        if (v19 > v15)
        {
          goto LABEL_17;
        }
      }

      v23 = (v6 + 8 * v5 * v1);
      if (v16 >= v22)
      {
        goto LABEL_14;
      }

LABEL_16:
      v17 = v20;
LABEL_17:
      v16 = *&v11[v15];
LABEL_18:
      *&v11[v17] = v16;
      v12[v17] = v12[v15];
      v24 = v5 + ~v10;
      v7[v24] = v13;
      v8[v24] = v14;
      if (v14 != -1)
      {
        ++v10;
      }

      ++v9;
    }

    while (v9 != v5);
LABEL_23:
    memmove(v7, &v7[v5 - v10], 4 * v10);
    result = memmove((v6 + 8 * v5 * v1), &v8[v5 - v10], 8 * v10);
    v25 = v5 - v10;
    if (v5 > v10)
    {
      v26 = (v6 + v5 * v3 + 8 * v10);
      v27 = (v28 + v5 * v4 + 4 * v10);
      do
      {
        *v27++ = -8388609;
        *v26++ = -1;
        --v25;
      }

      while (v25);
    }

    ++v1;
    v3 += 8;
    v4 += 4;
  }

  while (v1 < v2[5]);
  return result;
}

void *faiss::ReservoirResultHandler<faiss::CMin<float,long long>>::SingleResultHandler::SingleResultHandler(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = a1 + 4;
  std::vector<float>::vector[abi:ne200100](a1 + 1, *(a2 + 32));
  std::vector<long long>::vector[abi:ne200100](v4, *(a2 + 32));
  return a1;
}

void sub_1D9C23830(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9C238A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void faiss::ReservoirTopN<faiss::CMin<float,long long>>::add(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 40) < a3)
  {
    v6 = *(a1 + 16);
    if (v6 == *(a1 + 32))
    {
      faiss::ReservoirTopN<faiss::CMin<float,long long>>::shrink_fuzzy(a1);
      v6 = *(a1 + 16);
    }

    v7 = *(a1 + 8);
    *(*a1 + 4 * v6) = a3;
    *(v7 + 8 * v6) = a2;
    *(a1 + 16) = v6 + 1;
  }
}

void faiss::ReservoirTopN<faiss::CMin<float,long long>>::shrink_fuzzy(uint64_t a1)
{
  if (*(a1 + 16) != *(a1 + 32))
  {
    faiss::ReservoirTopN<faiss::CMin<float,long long>>::shrink_fuzzy();
  }

  *(a1 + 40) = MEMORY[0x1DA73EFC0](*a1, *(a1 + 8));
}

void *faiss::ReservoirTopN<faiss::CMin<float,long long>>::to_result(uint64_t *a1, float *__dst, void *a3)
{
  v7 = a1[2];
  v6 = a1[3];
  if (v6 >= v7)
  {
    v8 = a1[2];
  }

  else
  {
    v8 = a1[3];
  }

  if (v8)
  {
    v9 = 0;
    v10 = *a1;
    v11 = a1[1];
    v12 = __dst - 1;
    v13 = a3 - 1;
    do
    {
      v14 = v9++;
      v15 = *(v10 + 4 * v14);
      v16 = *(v11 + 8 * v14);
      if (v14)
      {
        v17 = v9;
        while (1)
        {
          v18 = v17 >> 1;
          v19 = v12[v17 >> 1];
          if (v19 <= v15)
          {
            break;
          }

          v12[v17] = v19;
          v13[v17] = v13[v18];
          v20 = v17 > 3;
          v17 >>= 1;
          if (!v20)
          {
            goto LABEL_13;
          }
        }

        v18 = v17;
      }

      else
      {
        v18 = 1;
      }

LABEL_13:
      v12[v18] = v15;
      v13[v18] = v16;
    }

    while (v9 != v8);
  }

  v21 = v7 - v6;
  if (v7 < v6)
  {
    if (!v7)
    {
      v23 = 0;
      goto LABEL_54;
    }

    v22 = 0;
    v23 = 0;
    v24 = __dst - 1;
    v25 = a3 - 1;
    while (1)
    {
      v26 = *__dst;
      v27 = *a3;
      v28 = v7 - v22;
      v29 = v24[v7 - v22];
      if (v7 - v22 < 2)
      {
        v30 = 1;
        goto LABEL_30;
      }

      v31 = 3;
      v32 = 2;
      v33 = 1;
      while (1)
      {
        if (v32 == v28)
        {
          v34 = v24[v28];
          goto LABEL_23;
        }

        v34 = v24[v32];
        v35 = __dst[v32];
        if (v34 >= v35)
        {
          break;
        }

LABEL_23:
        v35 = v34;
        v36 = a3 - 1;
        v31 = v32;
        if (v29 < v34)
        {
          goto LABEL_28;
        }

LABEL_26:
        v24[v33] = v35;
        v25[v33] = v36[v32];
        v30 = v31;
        v32 = 2 * v31;
        v31 = (2 * v31) | 1;
        v33 = v30;
        if (v32 > v28)
        {
          goto LABEL_29;
        }
      }

      v36 = a3;
      if (v29 >= v35)
      {
        goto LABEL_26;
      }

LABEL_28:
      v30 = v33;
LABEL_29:
      v29 = v24[v28];
LABEL_30:
      v24[v30] = v29;
      v25[v30] = v25[v28];
      v37 = v7 + ~v23;
      __dst[v37] = v26;
      a3[v37] = v27;
      if (v27 != -1)
      {
        ++v23;
      }

      if (++v22 == v7)
      {
LABEL_54:
        memmove(__dst, &__dst[v7 - v23], 4 * v23);
        result = memmove(a3, &a3[v7 - v23], 8 * v23);
        v54 = v7 - v23;
        if (v7 > v23)
        {
          v55 = &a3[v23];
          v56 = &__dst[v23];
          do
          {
            *v56++ = -3.4028e38;
            *v55++ = -1;
            --v54;
          }

          while (v54);
        }

        v57 = a1[2];
        v58 = a1[3] - v57;
        if (v58)
        {
          v59 = &__dst[v57];
          v60 = &a3[v57];
          do
          {
            *v59++ = -3.4028e38;
            *v60++ = -1;
            --v58;
          }

          while (v58);
        }

        return result;
      }
    }
  }

  v38 = a1[1];
  v39 = *a1 + 4 * v6;
  if (!v38)
  {
    if (v7 == v6)
    {
      goto LABEL_78;
    }

    v61 = 0;
    v62 = __dst - 1;
    v63 = a3 - 1;
LABEL_63:
    v64 = *(v39 + 4 * v61);
    if (*__dst >= v64)
    {
      goto LABEL_77;
    }

    if (v6 < 2)
    {
      v65 = 1;
      goto LABEL_76;
    }

    v66 = 3;
    v67 = 2;
    v68 = 1;
    while (v67 != v6)
    {
      v69 = v62[v67];
      v70 = __dst[v67];
      if (v69 < v70)
      {
        goto LABEL_70;
      }

      v71 = a3;
      if (v70 > v64)
      {
LABEL_75:
        v65 = v68;
LABEL_76:
        v62[v65] = v64;
        v63[v65] = v61;
LABEL_77:
        if (++v61 == v21)
        {
          goto LABEL_78;
        }

        goto LABEL_63;
      }

LABEL_73:
      v62[v68] = v70;
      v63[v68] = v71[v67];
      v65 = v66;
      v67 = 2 * v66;
      v66 = (2 * v66) | 1;
      v68 = v65;
      if (v67 > v6)
      {
        goto LABEL_76;
      }
    }

    v69 = v62[v6];
LABEL_70:
    v70 = v69;
    v71 = a3 - 1;
    v66 = v67;
    if (v69 > v64)
    {
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  if (v7 == v6)
  {
    goto LABEL_78;
  }

  v40 = 0;
  v41 = __dst - 1;
  v42 = a3 - 1;
  v43 = v38 + 8 * v6;
  do
  {
    v44 = *(v39 + 4 * v40);
    if (*__dst >= v44)
    {
      goto LABEL_51;
    }

    v45 = *(v43 + 8 * v40);
    if (v6 < 2)
    {
      v46 = 1;
      goto LABEL_50;
    }

    v47 = 3;
    v48 = 2;
    v49 = 1;
    while (1)
    {
      if (v48 == v6)
      {
        v50 = v41[v6];
        goto LABEL_44;
      }

      v50 = v41[v48];
      v51 = __dst[v48];
      if (v50 >= v51)
      {
        break;
      }

LABEL_44:
      v51 = v50;
      v52 = a3 - 1;
      v47 = v48;
      if (v50 > v44)
      {
        goto LABEL_49;
      }

LABEL_47:
      v41[v49] = v51;
      v42[v49] = v52[v48];
      v46 = v47;
      v48 = 2 * v47;
      v47 = (2 * v47) | 1;
      v49 = v46;
      if (v48 > v6)
      {
        goto LABEL_50;
      }
    }

    v52 = a3;
    if (v51 <= v44)
    {
      goto LABEL_47;
    }

LABEL_49:
    v46 = v49;
LABEL_50:
    v41[v46] = v44;
    v42[v46] = v45;
LABEL_51:
    ++v40;
  }

  while (v40 != v21);
LABEL_78:
  if (!v6)
  {
    v73 = 0;
    goto LABEL_98;
  }

  v72 = 0;
  v73 = 0;
  v74 = __dst - 1;
  v75 = a3 - 1;
  while (2)
  {
    v76 = *__dst;
    v77 = *a3;
    v78 = v6 - v72;
    v79 = v74[v6 - v72];
    if (v6 - v72 < 2)
    {
      v80 = 1;
      goto LABEL_93;
    }

    v81 = 3;
    v82 = 2;
    v83 = 1;
    while (2)
    {
      if (v82 == v78)
      {
        v84 = v74[v78];
LABEL_86:
        v85 = v84;
        v86 = a3 - 1;
        v81 = v82;
        if (v79 < v84)
        {
          break;
        }

        goto LABEL_89;
      }

      v84 = v74[v82];
      v85 = __dst[v82];
      if (v84 < v85)
      {
        goto LABEL_86;
      }

      v86 = a3;
      if (v79 >= v85)
      {
LABEL_89:
        v74[v83] = v85;
        v75[v83] = v86[v82];
        v80 = v81;
        v82 = 2 * v81;
        v81 = (2 * v81) | 1;
        v83 = v80;
        if (v82 > v78)
        {
          goto LABEL_92;
        }

        continue;
      }

      break;
    }

    v80 = v83;
LABEL_92:
    v79 = v74[v78];
LABEL_93:
    v74[v80] = v79;
    v75[v80] = v75[v78];
    v87 = v6 + ~v73;
    __dst[v87] = v76;
    a3[v87] = v77;
    if (v77 != -1)
    {
      ++v73;
    }

    if (++v72 != v6)
    {
      continue;
    }

    break;
  }

LABEL_98:
  memmove(__dst, &__dst[v6 - v73], 4 * v73);
  result = memmove(a3, &a3[v6 - v73], 8 * v73);
  v88 = v6 - v73;
  if (v6 > v73)
  {
    v89 = &a3[v73];
    v90 = &__dst[v73];
    do
    {
      *v90++ = -3.4028e38;
      *v89++ = -1;
      --v88;
    }

    while (v88);
  }

  return result;
}

void *faiss::ReservoirResultHandler<faiss::CMin<float,long long>>::SingleResultHandler::~SingleResultHandler(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void faiss::ReservoirResultHandler<faiss::CMin<float,long long>>::begin_multiple(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  v6 = a3 - a2;
  std::vector<float>::resize((a1 + 56), *(a1 + 32) * (a3 - a2));
  std::vector<long long>::resize((a1 + 80), *(a1 + 32) * v6);
  v7 = (a1 + 104);
  v8 = *(a1 + 104);
  *(a1 + 112) = v8;
  v9 = a3 >= a2;
  v10 = a3 - a2;
  if (v10 != 0 && v9)
  {
    v11 = 0;
    do
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 56) + 4 * v12 * v11;
      v14 = *(a1 + 80) + 8 * v12 * v11;
      v15 = *(a1 + 120);
      if (v8 >= v15)
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v7) >> 4);
        v18 = v17 + 1;
        if (v17 + 1 > 0x555555555555555)
        {
          std::vector<long long>::__throw_length_error[abi:ne200100]();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *v7) >> 4);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x2AAAAAAAAAAAAAALL)
        {
          v20 = 0x555555555555555;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::ReservoirTopN<faiss::CMin<float,long long>>>>(a1 + 104, v20);
        }

        v21 = *(a1 + 24);
        v22 = 48 * v17;
        *v22 = v13;
        *(v22 + 8) = v14;
        *(v22 + 16) = 0;
        *(v22 + 24) = v21;
        *(v22 + 32) = v12;
        if (v21 >= v12)
        {
          __assert_rtn("ReservoirTopN", "ResultHandler.h", 148, "n < capacity");
        }

        *(48 * v17 + 0x28) = -8388609;
        v8 = v22 + 48;
        v23 = *(a1 + 104);
        v24 = *(a1 + 112) - v23;
        v25 = v22 - v24;
        memcpy((v22 - v24), v23, v24);
        v26 = *(a1 + 104);
        *(a1 + 104) = v25;
        *(a1 + 112) = v8;
        *(a1 + 120) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        v16 = *(a1 + 24);
        *v8 = v13;
        *(v8 + 8) = v14;
        *(v8 + 16) = 0;
        *(v8 + 24) = v16;
        *(v8 + 32) = v12;
        if (v16 >= v12)
        {
          __assert_rtn("ReservoirTopN", "ResultHandler.h", 148, "n < capacity");
        }

        *(v8 + 40) = -8388609;
        v8 += 48;
        *(a1 + 112) = v8;
      }

      *(a1 + 112) = v8;
      ++v11;
    }

    while (v10 != v11);
  }
}

void faiss::ReservoirResultHandler<faiss::CMin<float,long long>>::add_results(void *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a1[5];
  v4 = a1[6];
  if (v5 < v4)
  {
    v10 = 4 * (a3 - a2);
    do
    {
      if (a3 > a2)
      {
        v11 = v5 - a1[5];
        v12 = a1[13] + 48 * v11;
        v13 = (a4 + v10 * v11);
        v14 = a2;
        do
        {
          v15 = *v13++;
          faiss::ReservoirTopN<faiss::CMin<float,long long>>::add(v12, v14++, v15);
        }

        while (a3 != v14);
        v4 = a1[6];
      }

      ++v5;
    }

    while (v5 < v4);
  }
}

void *faiss::ReservoirResultHandler<faiss::CMin<float,long long>>::end_multiple(void *result)
{
  v1 = result[5];
  if (v1 < result[6])
  {
    v2 = result;
    v3 = 48 * v1;
    do
    {
      result = faiss::ReservoirTopN<faiss::CMin<float,long long>>::to_result((v2[13] - 48 * v2[5] + v3), (v2[1] + 4 * v2[3] * v1), (v2[2] + 8 * v2[3] * v1));
      ++v1;
      v3 += 48;
    }

    while (v1 < v2[6]);
  }

  return result;
}

void std::vector<float>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<float>::__append(this, __sz - v2);
  }
}

void std::vector<long long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<long long>::__append(a1, a2 - v2);
  }
}

void std::vector<float>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<long long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::ReservoirTopN<faiss::CMin<float,long long>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *faiss::HeapResultHandler<faiss::CMax<float,long long>>::add_results(void *result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = result[4];
  v5 = result[5];
  if (v4 < v5)
  {
    v6 = result[1];
    v7 = result[2];
    v8 = a4 - 4 * a2;
    for (i = result[4]; i != v5; ++i)
    {
      if (a3 <= a2)
      {
        continue;
      }

      v10 = result[3] * i;
      v11 = (v6 + 4 * v10);
      v12 = v7 + 8 * v10;
      v13 = v11 - 1;
      v14 = *v11;
      v15 = v12 - 8;
      v16 = a2;
      do
      {
        v17 = *(v8 + 4 * (i - v4) * (a3 - a2) + 4 * v16);
        if (v14 <= v17)
        {
          goto LABEL_19;
        }

        v18 = result[3];
        if (v18 < 2)
        {
          v19 = 1;
          goto LABEL_18;
        }

        v20 = 3;
        v21 = 2;
        v22 = 1;
        while (1)
        {
          if (v21 == v18)
          {
            v23 = v13[v18];
            goto LABEL_12;
          }

          v23 = v13[v21];
          v24 = v11[v21];
          if (v23 <= v24)
          {
            break;
          }

LABEL_12:
          v24 = v23;
          v25 = v12 - 8;
          v20 = v21;
          if (v23 < v17)
          {
            goto LABEL_17;
          }

LABEL_15:
          v13[v22] = v24;
          *(v15 + 8 * v22) = *(v25 + 8 * v21);
          v19 = v20;
          v21 = 2 * v20;
          v20 = (2 * v20) | 1;
          v22 = v19;
          if (v21 > v18)
          {
            goto LABEL_18;
          }
        }

        v25 = v12;
        if (v24 >= v17)
        {
          goto LABEL_15;
        }

LABEL_17:
        v19 = v22;
LABEL_18:
        v13[v19] = v17;
        *(v15 + 8 * v19) = v16;
        v14 = *v11;
LABEL_19:
        ++v16;
      }

      while (v16 != a3);
    }
  }

  return result;
}

void *faiss::HeapResultHandler<faiss::CMax<float,long long>>::end_multiple(void *result)
{
  v1 = result[4];
  if (v1 >= result[5])
  {
    return result;
  }

  v2 = result;
  v3 = 8 * v1;
  v4 = 4 * v1;
  do
  {
    v6 = v2[2];
    v5 = v2[3];
    v28 = v2[1];
    v7 = (v28 + 4 * v5 * v1);
    v8 = (v6 + 8 * v5 * v1);
    if (!v5)
    {
      v10 = 0;
      goto LABEL_23;
    }

    v9 = 0;
    v10 = 0;
    v11 = v7 - 1;
    v12 = v8 - 1;
    do
    {
      v13 = *v7;
      v14 = *v8;
      v15 = v5 - v9;
      v16 = *&v11[v5 - v9];
      if (v5 - v9 < 2)
      {
        v17 = 1;
        goto LABEL_18;
      }

      v18 = 3;
      v19 = 2;
      v20 = 1;
      while (1)
      {
        if (v19 == v15)
        {
          v21 = *&v11[v15];
          goto LABEL_11;
        }

        v21 = *&v11[v19];
        v22 = *&v7[v19];
        if (v21 <= v22)
        {
          break;
        }

LABEL_11:
        v22 = v21;
        v23 = v8 - 1;
        v18 = v19;
        if (v16 > v21)
        {
          goto LABEL_16;
        }

LABEL_14:
        *&v11[v20] = v22;
        v12[v20] = v23[v19];
        v17 = v18;
        v19 = 2 * v18;
        v18 = (2 * v18) | 1;
        v20 = v17;
        if (v19 > v15)
        {
          goto LABEL_17;
        }
      }

      v23 = (v6 + 8 * v5 * v1);
      if (v16 <= v22)
      {
        goto LABEL_14;
      }

LABEL_16:
      v17 = v20;
LABEL_17:
      v16 = *&v11[v15];
LABEL_18:
      *&v11[v17] = v16;
      v12[v17] = v12[v15];
      v24 = v5 + ~v10;
      v7[v24] = v13;
      v8[v24] = v14;
      if (v14 != -1)
      {
        ++v10;
      }

      ++v9;
    }

    while (v9 != v5);
LABEL_23:
    memmove(v7, &v7[v5 - v10], 4 * v10);
    result = memmove((v6 + 8 * v5 * v1), &v8[v5 - v10], 8 * v10);
    v25 = v5 - v10;
    if (v5 > v10)
    {
      v26 = (v6 + v5 * v3 + 8 * v10);
      v27 = (v28 + v5 * v4 + 4 * v10);
      do
      {
        *v27++ = 2139095039;
        *v26++ = -1;
        --v25;
      }

      while (v25);
    }

    ++v1;
    v3 += 8;
    v4 += 4;
  }

  while (v1 < v2[5]);
  return result;
}

void faiss::ReservoirTopN<faiss::CMax<float,long long>>::add(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 40) > a3)
  {
    v6 = *(a1 + 16);
    if (v6 == *(a1 + 32))
    {
      faiss::ReservoirTopN<faiss::CMax<float,long long>>::shrink_fuzzy(a1);
      v6 = *(a1 + 16);
    }

    v7 = *(a1 + 8);
    *(*a1 + 4 * v6) = a3;
    *(v7 + 8 * v6) = a2;
    *(a1 + 16) = v6 + 1;
  }
}

void faiss::ReservoirTopN<faiss::CMax<float,long long>>::shrink_fuzzy(uint64_t a1)
{
  if (*(a1 + 16) != *(a1 + 32))
  {
    faiss::ReservoirTopN<faiss::CMin<float,long long>>::shrink_fuzzy();
  }

  *(a1 + 40) = MEMORY[0x1DA73EFB0](*a1, *(a1 + 8));
}

void *faiss::ReservoirTopN<faiss::CMax<float,long long>>::to_result(uint64_t *a1, float *__dst, void *a3)
{
  v7 = a1[2];
  v6 = a1[3];
  if (v6 >= v7)
  {
    v8 = a1[2];
  }

  else
  {
    v8 = a1[3];
  }

  if (v8)
  {
    v9 = 0;
    v10 = *a1;
    v11 = a1[1];
    v12 = __dst - 1;
    v13 = a3 - 1;
    do
    {
      v14 = v9++;
      v15 = *(v10 + 4 * v14);
      v16 = *(v11 + 8 * v14);
      if (v14)
      {
        v17 = v9;
        while (1)
        {
          v18 = v17 >> 1;
          v19 = v12[v17 >> 1];
          if (v19 >= v15)
          {
            break;
          }

          v12[v17] = v19;
          v13[v17] = v13[v18];
          v20 = v17 > 3;
          v17 >>= 1;
          if (!v20)
          {
            goto LABEL_13;
          }
        }

        v18 = v17;
      }

      else
      {
        v18 = 1;
      }

LABEL_13:
      v12[v18] = v15;
      v13[v18] = v16;
    }

    while (v9 != v8);
  }

  v21 = v7 - v6;
  if (v7 < v6)
  {
    if (!v7)
    {
      v23 = 0;
      goto LABEL_54;
    }

    v22 = 0;
    v23 = 0;
    v24 = __dst - 1;
    v25 = a3 - 1;
    while (1)
    {
      v26 = *__dst;
      v27 = *a3;
      v28 = v7 - v22;
      v29 = v24[v7 - v22];
      if (v7 - v22 < 2)
      {
        v30 = 1;
        goto LABEL_30;
      }

      v31 = 3;
      v32 = 2;
      v33 = 1;
      while (1)
      {
        if (v32 == v28)
        {
          v34 = v24[v28];
          goto LABEL_23;
        }

        v34 = v24[v32];
        v35 = __dst[v32];
        if (v34 <= v35)
        {
          break;
        }

LABEL_23:
        v35 = v34;
        v36 = a3 - 1;
        v31 = v32;
        if (v29 > v34)
        {
          goto LABEL_28;
        }

LABEL_26:
        v24[v33] = v35;
        v25[v33] = v36[v32];
        v30 = v31;
        v32 = 2 * v31;
        v31 = (2 * v31) | 1;
        v33 = v30;
        if (v32 > v28)
        {
          goto LABEL_29;
        }
      }

      v36 = a3;
      if (v29 <= v35)
      {
        goto LABEL_26;
      }

LABEL_28:
      v30 = v33;
LABEL_29:
      v29 = v24[v28];
LABEL_30:
      v24[v30] = v29;
      v25[v30] = v25[v28];
      v37 = v7 + ~v23;
      __dst[v37] = v26;
      a3[v37] = v27;
      if (v27 != -1)
      {
        ++v23;
      }

      if (++v22 == v7)
      {
LABEL_54:
        memmove(__dst, &__dst[v7 - v23], 4 * v23);
        result = memmove(a3, &a3[v7 - v23], 8 * v23);
        v54 = v7 - v23;
        if (v7 > v23)
        {
          v55 = &a3[v23];
          v56 = &__dst[v23];
          do
          {
            *v56++ = 3.4028e38;
            *v55++ = -1;
            --v54;
          }

          while (v54);
        }

        v57 = a1[2];
        v58 = a1[3] - v57;
        if (v58)
        {
          v59 = &__dst[v57];
          v60 = &a3[v57];
          do
          {
            *v59++ = 3.4028e38;
            *v60++ = -1;
            --v58;
          }

          while (v58);
        }

        return result;
      }
    }
  }

  v38 = a1[1];
  v39 = *a1 + 4 * v6;
  if (!v38)
  {
    if (v7 == v6)
    {
      goto LABEL_78;
    }

    v61 = 0;
    v62 = __dst - 1;
    v63 = a3 - 1;
LABEL_63:
    v64 = *(v39 + 4 * v61);
    if (*__dst <= v64)
    {
      goto LABEL_77;
    }

    if (v6 < 2)
    {
      v65 = 1;
      goto LABEL_76;
    }

    v66 = 3;
    v67 = 2;
    v68 = 1;
    while (v67 != v6)
    {
      v69 = v62[v67];
      v70 = __dst[v67];
      if (v69 > v70)
      {
        goto LABEL_70;
      }

      v71 = a3;
      if (v70 < v64)
      {
LABEL_75:
        v65 = v68;
LABEL_76:
        v62[v65] = v64;
        v63[v65] = v61;
LABEL_77:
        if (++v61 == v21)
        {
          goto LABEL_78;
        }

        goto LABEL_63;
      }

LABEL_73:
      v62[v68] = v70;
      v63[v68] = v71[v67];
      v65 = v66;
      v67 = 2 * v66;
      v66 = (2 * v66) | 1;
      v68 = v65;
      if (v67 > v6)
      {
        goto LABEL_76;
      }
    }

    v69 = v62[v6];
LABEL_70:
    v70 = v69;
    v71 = a3 - 1;
    v66 = v67;
    if (v69 < v64)
    {
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  if (v7 == v6)
  {
    goto LABEL_78;
  }

  v40 = 0;
  v41 = __dst - 1;
  v42 = a3 - 1;
  v43 = v38 + 8 * v6;
  do
  {
    v44 = *(v39 + 4 * v40);
    if (*__dst <= v44)
    {
      goto LABEL_51;
    }

    v45 = *(v43 + 8 * v40);
    if (v6 < 2)
    {
      v46 = 1;
      goto LABEL_50;
    }

    v47 = 3;
    v48 = 2;
    v49 = 1;
    while (1)
    {
      if (v48 == v6)
      {
        v50 = v41[v6];
        goto LABEL_44;
      }

      v50 = v41[v48];
      v51 = __dst[v48];
      if (v50 <= v51)
      {
        break;
      }

LABEL_44:
      v51 = v50;
      v52 = a3 - 1;
      v47 = v48;
      if (v50 < v44)
      {
        goto LABEL_49;
      }

LABEL_47:
      v41[v49] = v51;
      v42[v49] = v52[v48];
      v46 = v47;
      v48 = 2 * v47;
      v47 = (2 * v47) | 1;
      v49 = v46;
      if (v48 > v6)
      {
        goto LABEL_50;
      }
    }

    v52 = a3;
    if (v51 >= v44)
    {
      goto LABEL_47;
    }

LABEL_49:
    v46 = v49;
LABEL_50:
    v41[v46] = v44;
    v42[v46] = v45;
LABEL_51:
    ++v40;
  }

  while (v40 != v21);
LABEL_78:
  if (!v6)
  {
    v73 = 0;
    goto LABEL_98;
  }

  v72 = 0;
  v73 = 0;
  v74 = __dst - 1;
  v75 = a3 - 1;
  while (2)
  {
    v76 = *__dst;
    v77 = *a3;
    v78 = v6 - v72;
    v79 = v74[v6 - v72];
    if (v6 - v72 < 2)
    {
      v80 = 1;
      goto LABEL_93;
    }

    v81 = 3;
    v82 = 2;
    v83 = 1;
    while (2)
    {
      if (v82 == v78)
      {
        v84 = v74[v78];
LABEL_86:
        v85 = v84;
        v86 = a3 - 1;
        v81 = v82;
        if (v79 > v84)
        {
          break;
        }

        goto LABEL_89;
      }

      v84 = v74[v82];
      v85 = __dst[v82];
      if (v84 > v85)
      {
        goto LABEL_86;
      }

      v86 = a3;
      if (v79 <= v85)
      {
LABEL_89:
        v74[v83] = v85;
        v75[v83] = v86[v82];
        v80 = v81;
        v82 = 2 * v81;
        v81 = (2 * v81) | 1;
        v83 = v80;
        if (v82 > v78)
        {
          goto LABEL_92;
        }

        continue;
      }

      break;
    }

    v80 = v83;
LABEL_92:
    v79 = v74[v78];
LABEL_93:
    v74[v80] = v79;
    v75[v80] = v75[v78];
    v87 = v6 + ~v73;
    __dst[v87] = v76;
    a3[v87] = v77;
    if (v77 != -1)
    {
      ++v73;
    }

    if (++v72 != v6)
    {
      continue;
    }

    break;
  }

LABEL_98:
  memmove(__dst, &__dst[v6 - v73], 4 * v73);
  result = memmove(a3, &a3[v6 - v73], 8 * v73);
  v88 = v6 - v73;
  if (v6 > v73)
  {
    v89 = &a3[v73];
    v90 = &__dst[v73];
    do
    {
      *v90++ = 3.4028e38;
      *v89++ = -1;
      --v88;
    }

    while (v88);
  }

  return result;
}

void faiss::ReservoirResultHandler<faiss::CMax<float,long long>>::begin_multiple(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  v6 = a3 - a2;
  std::vector<float>::resize((a1 + 56), *(a1 + 32) * (a3 - a2));
  std::vector<long long>::resize((a1 + 80), *(a1 + 32) * v6);
  v7 = (a1 + 104);
  v8 = *(a1 + 104);
  *(a1 + 112) = v8;
  v9 = a3 >= a2;
  v10 = a3 - a2;
  if (v10 != 0 && v9)
  {
    v11 = 0;
    do
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 56) + 4 * v12 * v11;
      v14 = *(a1 + 80) + 8 * v12 * v11;
      v15 = *(a1 + 120);
      if (v8 >= v15)
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v7) >> 4);
        v18 = v17 + 1;
        if (v17 + 1 > 0x555555555555555)
        {
          std::vector<long long>::__throw_length_error[abi:ne200100]();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *v7) >> 4);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x2AAAAAAAAAAAAAALL)
        {
          v20 = 0x555555555555555;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::ReservoirTopN<faiss::CMin<float,long long>>>>(a1 + 104, v20);
        }

        v21 = *(a1 + 24);
        v22 = 48 * v17;
        *v22 = v13;
        *(v22 + 8) = v14;
        *(v22 + 16) = 0;
        *(v22 + 24) = v21;
        *(v22 + 32) = v12;
        if (v21 >= v12)
        {
          __assert_rtn("ReservoirTopN", "ResultHandler.h", 148, "n < capacity");
        }

        *(48 * v17 + 0x28) = 2139095039;
        v8 = v22 + 48;
        v23 = *(a1 + 104);
        v24 = *(a1 + 112) - v23;
        v25 = v22 - v24;
        memcpy((v22 - v24), v23, v24);
        v26 = *(a1 + 104);
        *(a1 + 104) = v25;
        *(a1 + 112) = v8;
        *(a1 + 120) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        v16 = *(a1 + 24);
        *v8 = v13;
        *(v8 + 8) = v14;
        *(v8 + 16) = 0;
        *(v8 + 24) = v16;
        *(v8 + 32) = v12;
        if (v16 >= v12)
        {
          __assert_rtn("ReservoirTopN", "ResultHandler.h", 148, "n < capacity");
        }

        *(v8 + 40) = 2139095039;
        v8 += 48;
        *(a1 + 112) = v8;
      }

      *(a1 + 112) = v8;
      ++v11;
    }

    while (v10 != v11);
  }
}

void faiss::ReservoirResultHandler<faiss::CMax<float,long long>>::add_results(void *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a1[5];
  v4 = a1[6];
  if (v5 < v4)
  {
    v10 = 4 * (a3 - a2);
    do
    {
      if (a3 > a2)
      {
        v11 = v5 - a1[5];
        v12 = a1[13] + 48 * v11;
        v13 = (a4 + v10 * v11);
        v14 = a2;
        do
        {
          v15 = *v13++;
          faiss::ReservoirTopN<faiss::CMax<float,long long>>::add(v12, v14++, v15);
        }

        while (a3 != v14);
        v4 = a1[6];
      }

      ++v5;
    }

    while (v5 < v4);
  }
}

void *faiss::ReservoirResultHandler<faiss::CMax<float,long long>>::end_multiple(void *result)
{
  v1 = result[5];
  if (v1 < result[6])
  {
    v2 = result;
    v3 = 48 * v1;
    do
    {
      result = faiss::ReservoirTopN<faiss::CMax<float,long long>>::to_result((v2[13] - 48 * v2[5] + v3), (v2[1] + 4 * v2[3] * v1), (v2[2] + 8 * v2[3] * v1));
      ++v1;
      v3 += 48;
    }

    while (v1 < v2[6]);
  }

  return result;
}

uint64_t faiss::RangeSearchResultHandler<faiss::CMax<float,long long>>::~RangeSearchResultHandler(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 40) != *(a1 + 32))
  {
    faiss::RangeSearchPartialResult::merge((a1 + 32), 1);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = *v2;
  if (*v2)
  {
    *(a1 + 40) = v4;
    operator delete(v4);
  }

  return a1;
}

void faiss::RangeSearchResultHandler<faiss::CMax<float,long long>>::SingleResultHandler::~SingleResultHandler(faiss::RangeSearchPartialResult *a1)
{
  faiss::RangeSearchPartialResult::finalize(a1);
  v2 = *(a1 + 6);
  if (v2)
  {
    *(a1 + 7) = v2;
    operator delete(v2);
  }

  faiss::BufferList::~BufferList(a1);
}

faiss::BufferList *faiss::RangeSearchResultHandler<faiss::CMax<float,long long>>::add_results(faiss::BufferList *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v20 = a2;
  v7 = *(result + 7);
  v8 = *(result + 20);
  v9 = *(result + 8);
  if (v8 < (v9 - v7) >> 3 && *(v7 + 8 * v8) == a2)
  {
    v19 = *(*(result + 4) + 8 * v8);
    v10 = v8 + 1;
  }

  else
  {
    if (a2 || v9 == v7)
    {
      operator new();
    }

    v19 = **(result + 4);
    v10 = 1;
  }

  *(result + 20) = v10;
  for (i = *(result + 2); i < *(v6 + 3); ++i)
  {
    v12 = *(v6 + 2);
    v13 = v20;
    result = faiss::RangeSearchPartialResult::new_result(v19, i);
    v14 = v20;
    if (v20 < a3)
    {
      v15 = result;
      v16 = (a4 + 4 * (a3 - v13) * (i - v12));
      do
      {
        v17 = *v16++;
        v18 = v17;
        if (*(v6 + 2) > v17)
        {
          result = faiss::RangeQueryResult::add(v15, v18, v14);
        }

        ++v14;
      }

      while (a3 != v14);
    }
  }

  return result;
}

void std::vector<faiss::RangeSearchPartialResult *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::RangeSearchPartialResult *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<faiss::RangeSearchPartialResult *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

faiss::BufferList *faiss::RangeSearchResultHandler<faiss::CMin<float,long long>>::add_results(faiss::BufferList *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v20 = a2;
  v7 = *(result + 7);
  v8 = *(result + 20);
  v9 = *(result + 8);
  if (v8 < (v9 - v7) >> 3 && *(v7 + 8 * v8) == a2)
  {
    v19 = *(*(result + 4) + 8 * v8);
    v10 = v8 + 1;
  }

  else
  {
    if (a2 || v9 == v7)
    {
      operator new();
    }

    v19 = **(result + 4);
    v10 = 1;
  }

  *(result + 20) = v10;
  for (i = *(result + 2); i < *(v6 + 3); ++i)
  {
    v12 = *(v6 + 2);
    v13 = v20;
    result = faiss::RangeSearchPartialResult::new_result(v19, i);
    v14 = v20;
    if (v20 < a3)
    {
      v15 = result;
      v16 = (a4 + 4 * (a3 - v13) * (i - v12));
      do
      {
        v17 = *v16++;
        v18 = v17;
        if (*(v6 + 2) < v17)
        {
          result = faiss::RangeQueryResult::add(v15, v18, v14);
        }

        ++v14;
      }

      while (a3 != v14);
    }
  }

  return result;
}

uint64_t *faiss::HeapArray<faiss::CMin<float,long long>>::heapify(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = 0;
    v4 = result[2];
    v3 = result[3];
    v5 = result[1];
    do
    {
      if (v5)
      {
        v6 = v3;
        result = v4;
        v7 = v5;
        do
        {
          *v6++ = -8388609;
          *result++ = -1;
          --v7;
        }

        while (v7);
      }

      ++v2;
      v4 += v5;
      v3 += v5;
    }

    while (v2 != v1);
  }

  return result;
}

unint64_t *faiss::HeapArray<faiss::CMin<float,long long>>::addn(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a6 == -1)
  {
    v6 = *result;
  }

  else
  {
    v6 = a6;
  }

  v7 = v6 + a5;
  if (v7 > *result)
  {
    faiss::HeapArray<faiss::CMin<float,long long>>::addn();
  }

  if (v7 > a5)
  {
    v9 = result[2];
    v8 = result[3];
    v10 = a5;
    v11 = result[1];
    do
    {
      if (!a2)
      {
        goto LABEL_24;
      }

      v12 = 0;
      v13 = (v8 + 4 * v11 * v10);
      v14 = v9 + 8 * v11 * v10;
      v15 = v13 - 1;
      result = (v14 - 8);
      do
      {
        v16 = *(a3 + 4 * (v10 - a5) * a2 + 4 * v12);
        if (*v13 >= v16)
        {
          goto LABEL_23;
        }

        if (v11 < 2)
        {
          v17 = 1;
          goto LABEL_22;
        }

        v18 = 3;
        v19 = 2;
        v20 = 1;
        while (1)
        {
          if (v19 == v11)
          {
            v21 = v15[v11];
            goto LABEL_16;
          }

          v21 = v15[v19];
          v22 = v13[v19];
          if (v21 >= v22)
          {
            break;
          }

LABEL_16:
          v22 = v21;
          v23 = v14 - 8;
          v18 = v19;
          if (v21 > v16)
          {
            goto LABEL_21;
          }

LABEL_19:
          v15[v20] = v22;
          result[v20] = *(v23 + 8 * v19);
          v17 = v18;
          v19 = 2 * v18;
          v18 = (2 * v18) | 1;
          v20 = v17;
          if (v19 > v11)
          {
            goto LABEL_22;
          }
        }

        v23 = v9 + 8 * v11 * v10;
        if (v22 <= v16)
        {
          goto LABEL_19;
        }

LABEL_21:
        v17 = v20;
LABEL_22:
        v15[v17] = v16;
        result[v17] = v12 + a4;
LABEL_23:
        ++v12;
      }

      while (v12 != a2);
LABEL_24:
      ++v10;
    }

    while (v10 != v7);
  }

  return result;
}

float *faiss::HeapArray<faiss::CMin<float,long long>>::addn_with_ids(float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a4)
  {

    faiss::HeapArray<faiss::CMin<float,long long>>::addn();
  }

  if (a7 == -1)
  {
    v7 = *result;
  }

  else
  {
    v7 = a7;
  }

  v8 = v7 + a6;
  if (v8 > *result)
  {
    faiss::HeapArray<faiss::CMin<float,long long>>::addn_with_ids();
  }

  if (v8 > a6)
  {
    v10 = *(result + 2);
    v9 = *(result + 3);
    v11 = a6;
    v12 = *(result + 1);
    do
    {
      if (!a2)
      {
        goto LABEL_25;
      }

      v13 = 0;
      v14 = (v9 + 4 * v12 * v11);
      v15 = v10 + 8 * v12 * v11;
      result = v14 - 1;
      v16 = v15 - 8;
      do
      {
        v17 = *(a3 + 4 * (v11 - a6) * a2 + 4 * v13);
        if (*v14 >= v17)
        {
          goto LABEL_24;
        }

        v18 = *(a4 + 8 * (v11 - a6) * a5 + 8 * v13);
        if (v12 < 2)
        {
          v19 = 1;
          goto LABEL_23;
        }

        v20 = 3;
        v21 = 2;
        v22 = 1;
        while (1)
        {
          if (v21 == v12)
          {
            v23 = result[v12];
            goto LABEL_17;
          }

          v23 = result[v21];
          v24 = v14[v21];
          if (v23 >= v24)
          {
            break;
          }

LABEL_17:
          v24 = v23;
          v25 = v15 - 8;
          v20 = v21;
          if (v23 > v17)
          {
            goto LABEL_22;
          }

LABEL_20:
          result[v22] = v24;
          *(v16 + 8 * v22) = *(v25 + 8 * v21);
          v19 = v20;
          v21 = 2 * v20;
          v20 = (2 * v20) | 1;
          v22 = v19;
          if (v21 > v12)
          {
            goto LABEL_23;
          }
        }

        v25 = v10 + 8 * v12 * v11;
        if (v24 <= v17)
        {
          goto LABEL_20;
        }

LABEL_22:
        v19 = v22;
LABEL_23:
        result[v19] = v17;
        *(v16 + 8 * v19) = v18;
LABEL_24:
        ++v13;
      }

      while (v13 != a2);
LABEL_25:
      ++v11;
    }

    while (v11 != v8);
  }

  return result;
}

unint64_t *faiss::HeapArray<faiss::CMin<float,long long>>::reorder(unint64_t *result)
{
  if (!*result)
  {
    return result;
  }

  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = v1[2];
    v6 = v1[1];
    v28 = v1[3];
    v7 = (v28 + 4 * v6 * v4);
    v8 = (v5 + 8 * v6 * v4);
    if (!v6)
    {
      v10 = 0;
      goto LABEL_23;
    }

    v9 = 0;
    v10 = 0;
    v11 = v7 - 1;
    v12 = v8 - 1;
    do
    {
      v13 = *v7;
      v14 = *v8;
      v15 = v6 - v9;
      v16 = *&v11[v6 - v9];
      if (v6 - v9 < 2)
      {
        v17 = 1;
        goto LABEL_18;
      }

      v18 = 3;
      v19 = 2;
      v20 = 1;
      while (1)
      {
        if (v19 == v15)
        {
          v21 = *&v11[v15];
          goto LABEL_11;
        }

        v21 = *&v11[v19];
        v22 = *&v7[v19];
        if (v21 >= v22)
        {
          break;
        }

LABEL_11:
        v22 = v21;
        v23 = v8 - 1;
        v18 = v19;
        if (v16 < v21)
        {
          goto LABEL_16;
        }

LABEL_14:
        *&v11[v20] = v22;
        v12[v20] = v23[v19];
        v17 = v18;
        v19 = 2 * v18;
        v18 = (2 * v18) | 1;
        v20 = v17;
        if (v19 > v15)
        {
          goto LABEL_17;
        }
      }

      v23 = (v5 + 8 * v6 * v4);
      if (v16 >= v22)
      {
        goto LABEL_14;
      }

LABEL_16:
      v17 = v20;
LABEL_17:
      v16 = *&v11[v15];
LABEL_18:
      *&v11[v17] = v16;
      v12[v17] = v12[v15];
      v24 = v6 + ~v10;
      v7[v24] = v13;
      v8[v24] = v14;
      if (v14 != -1)
      {
        ++v10;
      }

      ++v9;
    }

    while (v9 != v6);
LABEL_23:
    memmove(v7, &v7[v6 - v10], 4 * v10);
    result = memmove((v5 + 8 * v6 * v4), &v8[v6 - v10], 8 * v10);
    v25 = v6 - v10;
    if (v6 > v10)
    {
      v26 = (v5 + v6 * v3 + 8 * v10);
      v27 = (v28 + v6 * v2 + 4 * v10);
      do
      {
        *v27++ = -8388609;
        *v26++ = -1;
        --v25;
      }

      while (v25);
    }

    ++v4;
    v3 += 8;
    v2 += 4;
  }

  while (v4 < *v1);
  return result;
}

uint64_t *faiss::HeapArray<faiss::CMin<float,long long>>::per_line_extrema(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = 0;
    v5 = result[3];
    v6 = result[1];
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = -1;
        v9 = 3.4028e38;
        do
        {
          if (*(v5 + 4 * v7) < v9)
          {
            v8 = v7;
            v9 = *(v5 + 4 * v7);
          }

          ++v7;
        }

        while (v6 != v7);
        if (!a2)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = -1;
        v9 = 3.4028e38;
        if (!a2)
        {
          goto LABEL_10;
        }
      }

      *(a2 + 4 * v4) = v9;
LABEL_10:
      if (a3)
      {
        v10 = result[2];
        if (v10)
        {
          if (v8 != -1)
          {
            v8 = *(v10 + 8 * v6 * v4 + 8 * v8);
          }
        }

        *(a3 + 8 * v4) = v8;
      }

      ++v4;
      v5 += 4 * v6;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t *faiss::HeapArray<faiss::CMax<float,long long>>::heapify(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = 0;
    v4 = result[2];
    v3 = result[3];
    v5 = result[1];
    do
    {
      if (v5)
      {
        v6 = v3;
        result = v4;
        v7 = v5;
        do
        {
          *v6++ = 2139095039;
          *result++ = -1;
          --v7;
        }

        while (v7);
      }

      ++v2;
      v4 += v5;
      v3 += v5;
    }

    while (v2 != v1);
  }

  return result;
}

unint64_t *faiss::HeapArray<faiss::CMax<float,long long>>::addn(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a6 == -1)
  {
    v6 = *result;
  }

  else
  {
    v6 = a6;
  }

  v7 = v6 + a5;
  if (v7 > *result)
  {
    faiss::HeapArray<faiss::CMin<float,long long>>::addn();
  }

  if (v7 > a5)
  {
    v9 = result[2];
    v8 = result[3];
    v10 = a5;
    v11 = result[1];
    do
    {
      if (!a2)
      {
        goto LABEL_24;
      }

      v12 = 0;
      v13 = (v8 + 4 * v11 * v10);
      v14 = v9 + 8 * v11 * v10;
      v15 = v13 - 1;
      result = (v14 - 8);
      do
      {
        v16 = *(a3 + 4 * (v10 - a5) * a2 + 4 * v12);
        if (*v13 <= v16)
        {
          goto LABEL_23;
        }

        if (v11 < 2)
        {
          v17 = 1;
          goto LABEL_22;
        }

        v18 = 3;
        v19 = 2;
        v20 = 1;
        while (1)
        {
          if (v19 == v11)
          {
            v21 = v15[v11];
            goto LABEL_16;
          }

          v21 = v15[v19];
          v22 = v13[v19];
          if (v21 <= v22)
          {
            break;
          }

LABEL_16:
          v22 = v21;
          v23 = v14 - 8;
          v18 = v19;
          if (v21 < v16)
          {
            goto LABEL_21;
          }

LABEL_19:
          v15[v20] = v22;
          result[v20] = *(v23 + 8 * v19);
          v17 = v18;
          v19 = 2 * v18;
          v18 = (2 * v18) | 1;
          v20 = v17;
          if (v19 > v11)
          {
            goto LABEL_22;
          }
        }

        v23 = v9 + 8 * v11 * v10;
        if (v22 >= v16)
        {
          goto LABEL_19;
        }

LABEL_21:
        v17 = v20;
LABEL_22:
        v15[v17] = v16;
        result[v17] = v12 + a4;
LABEL_23:
        ++v12;
      }

      while (v12 != a2);
LABEL_24:
      ++v10;
    }

    while (v10 != v7);
  }

  return result;
}

float *faiss::HeapArray<faiss::CMax<float,long long>>::addn_with_ids(float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a4)
  {

    faiss::HeapArray<faiss::CMax<float,long long>>::addn();
  }

  if (a7 == -1)
  {
    v7 = *result;
  }

  else
  {
    v7 = a7;
  }

  v8 = v7 + a6;
  if (v8 > *result)
  {
    faiss::HeapArray<faiss::CMin<float,long long>>::addn_with_ids();
  }

  if (v8 > a6)
  {
    v10 = *(result + 2);
    v9 = *(result + 3);
    v11 = a6;
    v12 = *(result + 1);
    do
    {
      if (!a2)
      {
        goto LABEL_25;
      }

      v13 = 0;
      v14 = (v9 + 4 * v12 * v11);
      v15 = v10 + 8 * v12 * v11;
      result = v14 - 1;
      v16 = v15 - 8;
      do
      {
        v17 = *(a3 + 4 * (v11 - a6) * a2 + 4 * v13);
        if (*v14 <= v17)
        {
          goto LABEL_24;
        }

        v18 = *(a4 + 8 * (v11 - a6) * a5 + 8 * v13);
        if (v12 < 2)
        {
          v19 = 1;
          goto LABEL_23;
        }

        v20 = 3;
        v21 = 2;
        v22 = 1;
        while (1)
        {
          if (v21 == v12)
          {
            v23 = result[v12];
            goto LABEL_17;
          }

          v23 = result[v21];
          v24 = v14[v21];
          if (v23 <= v24)
          {
            break;
          }

LABEL_17:
          v24 = v23;
          v25 = v15 - 8;
          v20 = v21;
          if (v23 < v17)
          {
            goto LABEL_22;
          }

LABEL_20:
          result[v22] = v24;
          *(v16 + 8 * v22) = *(v25 + 8 * v21);
          v19 = v20;
          v21 = 2 * v20;
          v20 = (2 * v20) | 1;
          v22 = v19;
          if (v21 > v12)
          {
            goto LABEL_23;
          }
        }

        v25 = v10 + 8 * v12 * v11;
        if (v24 >= v17)
        {
          goto LABEL_20;
        }

LABEL_22:
        v19 = v22;
LABEL_23:
        result[v19] = v17;
        *(v16 + 8 * v19) = v18;
LABEL_24:
        ++v13;
      }

      while (v13 != a2);
LABEL_25:
      ++v11;
    }

    while (v11 != v8);
  }

  return result;
}

unint64_t *faiss::HeapArray<faiss::CMax<float,long long>>::reorder(unint64_t *result)
{
  if (!*result)
  {
    return result;
  }

  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = v1[2];
    v6 = v1[1];
    v28 = v1[3];
    v7 = (v28 + 4 * v6 * v4);
    v8 = (v5 + 8 * v6 * v4);
    if (!v6)
    {
      v10 = 0;
      goto LABEL_23;
    }

    v9 = 0;
    v10 = 0;
    v11 = v7 - 1;
    v12 = v8 - 1;
    do
    {
      v13 = *v7;
      v14 = *v8;
      v15 = v6 - v9;
      v16 = *&v11[v6 - v9];
      if (v6 - v9 < 2)
      {
        v17 = 1;
        goto LABEL_18;
      }

      v18 = 3;
      v19 = 2;
      v20 = 1;
      while (1)
      {
        if (v19 == v15)
        {
          v21 = *&v11[v15];
          goto LABEL_11;
        }

        v21 = *&v11[v19];
        v22 = *&v7[v19];
        if (v21 <= v22)
        {
          break;
        }

LABEL_11:
        v22 = v21;
        v23 = v8 - 1;
        v18 = v19;
        if (v16 > v21)
        {
          goto LABEL_16;
        }

LABEL_14:
        *&v11[v20] = v22;
        v12[v20] = v23[v19];
        v17 = v18;
        v19 = 2 * v18;
        v18 = (2 * v18) | 1;
        v20 = v17;
        if (v19 > v15)
        {
          goto LABEL_17;
        }
      }

      v23 = (v5 + 8 * v6 * v4);
      if (v16 <= v22)
      {
        goto LABEL_14;
      }

LABEL_16:
      v17 = v20;
LABEL_17:
      v16 = *&v11[v15];
LABEL_18:
      *&v11[v17] = v16;
      v12[v17] = v12[v15];
      v24 = v6 + ~v10;
      v7[v24] = v13;
      v8[v24] = v14;
      if (v14 != -1)
      {
        ++v10;
      }

      ++v9;
    }

    while (v9 != v6);
LABEL_23:
    memmove(v7, &v7[v6 - v10], 4 * v10);
    result = memmove((v5 + 8 * v6 * v4), &v8[v6 - v10], 8 * v10);
    v25 = v6 - v10;
    if (v6 > v10)
    {
      v26 = (v5 + v6 * v3 + 8 * v10);
      v27 = (v28 + v6 * v2 + 4 * v10);
      do
      {
        *v27++ = 2139095039;
        *v26++ = -1;
        --v25;
      }

      while (v25);
    }

    ++v4;
    v3 += 8;
    v2 += 4;
  }

  while (v4 < *v1);
  return result;
}

uint64_t *faiss::HeapArray<faiss::CMax<float,long long>>::per_line_extrema(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = 0;
    v5 = result[3];
    v6 = result[1];
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = -1;
        v9 = -3.4028e38;
        do
        {
          if (*(v5 + 4 * v7) > v9)
          {
            v8 = v7;
            v9 = *(v5 + 4 * v7);
          }

          ++v7;
        }

        while (v6 != v7);
        if (!a2)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = -1;
        v9 = -3.4028e38;
        if (!a2)
        {
          goto LABEL_10;
        }
      }

      *(a2 + 4 * v4) = v9;
LABEL_10:
      if (a3)
      {
        v10 = result[2];
        if (v10)
        {
          if (v8 != -1)
          {
            v8 = *(v10 + 8 * v6 * v4 + 8 * v8);
          }
        }

        *(a3 + 8 * v4) = v8;
      }

      ++v4;
      v5 += 4 * v6;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t *faiss::HeapArray<faiss::CMin<int,long long>>::heapify(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = 0;
    v4 = result[2];
    v3 = result[3];
    v5 = result[1];
    do
    {
      if (v5)
      {
        v6 = v3;
        result = v4;
        v7 = v5;
        do
        {
          *v6++ = 0x80000000;
          *result++ = -1;
          --v7;
        }

        while (v7);
      }

      ++v2;
      v4 += v5;
      v3 += v5;
    }

    while (v2 != v1);
  }

  return result;
}

unint64_t *faiss::HeapArray<faiss::CMin<int,long long>>::addn(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a6 == -1)
  {
    v6 = *result;
  }

  else
  {
    v6 = a6;
  }

  v7 = v6 + a5;
  if (v7 > *result)
  {
    faiss::HeapArray<faiss::CMin<float,long long>>::addn();
  }

  if (v7 > a5)
  {
    v9 = result[2];
    v8 = result[3];
    v10 = a5;
    v11 = result[1];
    do
    {
      if (!a2)
      {
        goto LABEL_24;
      }

      v12 = 0;
      v13 = (v8 + 4 * v11 * v10);
      v14 = v9 + 8 * v11 * v10;
      v15 = v13 - 1;
      result = (v14 - 8);
      do
      {
        v16 = *(a3 + 4 * (v10 - a5) * a2 + 4 * v12);
        if (*v13 >= v16)
        {
          goto LABEL_23;
        }

        if (v11 < 2)
        {
          v17 = 1;
          goto LABEL_22;
        }

        v18 = 3;
        v19 = 2;
        v20 = 1;
        while (1)
        {
          if (v19 == v11)
          {
            v21 = v15[v11];
            goto LABEL_16;
          }

          v21 = v15[v19];
          v22 = v13[v19];
          if (v21 >= v22)
          {
            break;
          }

LABEL_16:
          v23 = v14 - 8;
          v18 = v19;
          if (v21 > v16)
          {
            goto LABEL_21;
          }

LABEL_19:
          v15[v20] = v21;
          result[v20] = *(v23 + 8 * v19);
          v17 = v18;
          v19 = 2 * v18;
          v18 = (2 * v18) | 1;
          v20 = v17;
          if (v19 > v11)
          {
            goto LABEL_22;
          }
        }

        v21 = v13[v19];
        v23 = v9 + 8 * v11 * v10;
        if (v22 <= v16)
        {
          goto LABEL_19;
        }

LABEL_21:
        v17 = v20;
LABEL_22:
        v15[v17] = v16;
        result[v17] = v12 + a4;
LABEL_23:
        ++v12;
      }

      while (v12 != a2);
LABEL_24:
      ++v10;
    }

    while (v10 != v7);
  }

  return result;
}

unint64_t *faiss::HeapArray<faiss::CMin<int,long long>>::addn_with_ids(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  if (!a4)
  {

    faiss::HeapArray<faiss::CMin<int,long long>>::addn();
  }

  if (a7 == -1)
  {
    v7 = *result;
  }

  else
  {
    v7 = a7;
  }

  v8 = v7 + a6;
  if (v8 > *result)
  {
    faiss::HeapArray<faiss::CMin<float,long long>>::addn_with_ids();
  }

  if (v8 > a6)
  {
    v10 = result[2];
    v9 = result[3];
    v11 = a6;
    v12 = result[1];
    do
    {
      if (!a2)
      {
        goto LABEL_25;
      }

      v13 = 0;
      v14 = (v9 + 4 * v12 * v11);
      v15 = v10 + 8 * v12 * v11;
      result = (v14 - 1);
      v16 = v15 - 8;
      do
      {
        v17 = *(a3 + 4 * (v11 - a6) * a2 + 4 * v13);
        if (*v14 >= v17)
        {
          goto LABEL_24;
        }

        v18 = *(a4 + 8 * (v11 - a6) * a5 + 8 * v13);
        if (v12 < 2)
        {
          v19 = 1;
          goto LABEL_23;
        }

        v20 = 3;
        v21 = 2;
        v22 = 1;
        while (1)
        {
          if (v21 == v12)
          {
            v23 = *(result + v12);
            goto LABEL_17;
          }

          v23 = result[v21 / 2];
          v24 = v14[v21];
          if (v23 >= v24)
          {
            break;
          }

LABEL_17:
          v25 = v15 - 8;
          v20 = v21;
          if (v23 > v17)
          {
            goto LABEL_22;
          }

LABEL_20:
          *(result + v22) = v23;
          *(v16 + 8 * v22) = *(v25 + 8 * v21);
          v19 = v20;
          v21 = 2 * v20;
          v20 = (2 * v20) | 1;
          v22 = v19;
          if (v21 > v12)
          {
            goto LABEL_23;
          }
        }

        v23 = v14[v21];
        v25 = v10 + 8 * v12 * v11;
        if (v24 <= v17)
        {
          goto LABEL_20;
        }

LABEL_22:
        v19 = v22;
LABEL_23:
        *(result + v19) = v17;
        *(v16 + 8 * v19) = v18;
LABEL_24:
        ++v13;
      }

      while (v13 != a2);
LABEL_25:
      ++v11;
    }

    while (v11 != v8);
  }

  return result;
}

unint64_t *faiss::HeapArray<faiss::CMin<int,long long>>::reorder(unint64_t *result)
{
  if (!*result)
  {
    return result;
  }

  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = v1[2];
    v6 = v1[1];
    v28 = v1[3];
    v7 = (v28 + 4 * v6 * v4);
    v8 = (v5 + 8 * v6 * v4);
    if (!v6)
    {
      v10 = 0;
      goto LABEL_23;
    }

    v9 = 0;
    v10 = 0;
    v11 = v7 - 1;
    v12 = v8 - 1;
    do
    {
      v13 = *v7;
      v14 = *v8;
      v15 = v6 - v9;
      v16 = v11[v6 - v9];
      if (v6 - v9 < 2)
      {
        v17 = 1;
        goto LABEL_18;
      }

      v18 = 3;
      v19 = 2;
      v20 = 1;
      while (1)
      {
        if (v19 == v15)
        {
          v21 = v11[v15];
          goto LABEL_11;
        }

        v21 = v11[v19];
        v22 = v7[v19];
        if (v21 >= v22)
        {
          break;
        }

LABEL_11:
        v23 = v8 - 1;
        v18 = v19;
        if (v16 < v21)
        {
          goto LABEL_16;
        }

LABEL_14:
        v11[v20] = v21;
        v12[v20] = v23[v19];
        v17 = v18;
        v19 = 2 * v18;
        v18 = (2 * v18) | 1;
        v20 = v17;
        if (v19 > v15)
        {
          goto LABEL_17;
        }
      }

      v21 = v7[v19];
      v23 = (v5 + 8 * v6 * v4);
      if (v16 >= v22)
      {
        goto LABEL_14;
      }

LABEL_16:
      v17 = v20;
LABEL_17:
      v16 = v11[v15];
LABEL_18:
      v11[v17] = v16;
      v12[v17] = v12[v15];
      v24 = v6 + ~v10;
      v7[v24] = v13;
      v8[v24] = v14;
      if (v14 != -1)
      {
        ++v10;
      }

      ++v9;
    }

    while (v9 != v6);
LABEL_23:
    memmove(v7, &v7[v6 - v10], 4 * v10);
    result = memmove((v5 + 8 * v6 * v4), &v8[v6 - v10], 8 * v10);
    v25 = v6 - v10;
    if (v6 > v10)
    {
      v26 = (v5 + v6 * v3 + 8 * v10);
      v27 = (v28 + v6 * v2 + 4 * v10);
      do
      {
        *v27++ = 0x80000000;
        *v26++ = -1;
        --v25;
      }

      while (v25);
    }

    ++v4;
    v3 += 8;
    v2 += 4;
  }

  while (v4 < *v1);
  return result;
}

uint64_t *faiss::HeapArray<faiss::CMin<int,long long>>::per_line_extrema(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = 0;
    v5 = result[3];
    v6 = result[1];
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = -1;
        v9 = 0x7FFFFFFF;
        do
        {
          if (*(v5 + 4 * v7) < v9)
          {
            v8 = v7;
            v9 = *(v5 + 4 * v7);
          }

          ++v7;
        }

        while (v6 != v7);
        if (!a2)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v9 = 0x7FFFFFFF;
        v8 = -1;
        if (!a2)
        {
          goto LABEL_10;
        }
      }

      *(a2 + 4 * v4) = v9;
LABEL_10:
      if (a3)
      {
        v10 = result[2];
        if (v10)
        {
          if (v8 != -1)
          {
            v8 = *(v10 + 8 * v6 * v4 + 8 * v8);
          }
        }

        *(a3 + 8 * v4) = v8;
      }

      ++v4;
      v5 += 4 * v6;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t *faiss::HeapArray<faiss::CMax<int,long long>>::heapify(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = 0;
    v4 = result[2];
    v3 = result[3];
    v5 = result[1];
    do
    {
      if (v5)
      {
        v6 = v3;
        result = v4;
        v7 = v5;
        do
        {
          *v6++ = 0x7FFFFFFF;
          *result++ = -1;
          --v7;
        }

        while (v7);
      }

      ++v2;
      v4 += v5;
      v3 += v5;
    }

    while (v2 != v1);
  }

  return result;
}

unint64_t *faiss::HeapArray<faiss::CMax<int,long long>>::addn(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a6 == -1)
  {
    v6 = *result;
  }

  else
  {
    v6 = a6;
  }

  v7 = v6 + a5;
  if (v7 > *result)
  {
    faiss::HeapArray<faiss::CMin<float,long long>>::addn();
  }

  if (v7 > a5)
  {
    v9 = result[2];
    v8 = result[3];
    v10 = a5;
    v11 = result[1];
    do
    {
      if (!a2)
      {
        goto LABEL_24;
      }

      v12 = 0;
      v13 = (v8 + 4 * v11 * v10);
      v14 = v9 + 8 * v11 * v10;
      v15 = v13 - 1;
      result = (v14 - 8);
      do
      {
        v16 = *(a3 + 4 * (v10 - a5) * a2 + 4 * v12);
        if (*v13 <= v16)
        {
          goto LABEL_23;
        }

        if (v11 < 2)
        {
          v17 = 1;
          goto LABEL_22;
        }

        v18 = 3;
        v19 = 2;
        v20 = 1;
        while (1)
        {
          if (v19 == v11)
          {
            v21 = v15[v11];
            goto LABEL_16;
          }

          v21 = v15[v19];
          v22 = v13[v19];
          if (v21 <= v22)
          {
            break;
          }

LABEL_16:
          v23 = v14 - 8;
          v18 = v19;
          if (v21 < v16)
          {
            goto LABEL_21;
          }

LABEL_19:
          v15[v20] = v21;
          result[v20] = *(v23 + 8 * v19);
          v17 = v18;
          v19 = 2 * v18;
          v18 = (2 * v18) | 1;
          v20 = v17;
          if (v19 > v11)
          {
            goto LABEL_22;
          }
        }

        v21 = v13[v19];
        v23 = v9 + 8 * v11 * v10;
        if (v22 >= v16)
        {
          goto LABEL_19;
        }

LABEL_21:
        v17 = v20;
LABEL_22:
        v15[v17] = v16;
        result[v17] = v12 + a4;
LABEL_23:
        ++v12;
      }

      while (v12 != a2);
LABEL_24:
      ++v10;
    }

    while (v10 != v7);
  }

  return result;
}

unint64_t *faiss::HeapArray<faiss::CMax<int,long long>>::addn_with_ids(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  if (!a4)
  {

    faiss::HeapArray<faiss::CMax<int,long long>>::addn();
  }

  if (a7 == -1)
  {
    v7 = *result;
  }

  else
  {
    v7 = a7;
  }

  v8 = v7 + a6;
  if (v8 > *result)
  {
    faiss::HeapArray<faiss::CMin<float,long long>>::addn_with_ids();
  }

  if (v8 > a6)
  {
    v10 = result[2];
    v9 = result[3];
    v11 = a6;
    v12 = result[1];
    do
    {
      if (!a2)
      {
        goto LABEL_25;
      }

      v13 = 0;
      v14 = (v9 + 4 * v12 * v11);
      v15 = v10 + 8 * v12 * v11;
      result = (v14 - 1);
      v16 = v15 - 8;
      do
      {
        v17 = *(a3 + 4 * (v11 - a6) * a2 + 4 * v13);
        if (*v14 <= v17)
        {
          goto LABEL_24;
        }

        v18 = *(a4 + 8 * (v11 - a6) * a5 + 8 * v13);
        if (v12 < 2)
        {
          v19 = 1;
          goto LABEL_23;
        }

        v20 = 3;
        v21 = 2;
        v22 = 1;
        while (1)
        {
          if (v21 == v12)
          {
            v23 = *(result + v12);
            goto LABEL_17;
          }

          v23 = result[v21 / 2];
          v24 = v14[v21];
          if (v23 <= v24)
          {
            break;
          }

LABEL_17:
          v25 = v15 - 8;
          v20 = v21;
          if (v23 < v17)
          {
            goto LABEL_22;
          }

LABEL_20:
          *(result + v22) = v23;
          *(v16 + 8 * v22) = *(v25 + 8 * v21);
          v19 = v20;
          v21 = 2 * v20;
          v20 = (2 * v20) | 1;
          v22 = v19;
          if (v21 > v12)
          {
            goto LABEL_23;
          }
        }

        v23 = v14[v21];
        v25 = v10 + 8 * v12 * v11;
        if (v24 >= v17)
        {
          goto LABEL_20;
        }

LABEL_22:
        v19 = v22;
LABEL_23:
        *(result + v19) = v17;
        *(v16 + 8 * v19) = v18;
LABEL_24:
        ++v13;
      }

      while (v13 != a2);
LABEL_25:
      ++v11;
    }

    while (v11 != v8);
  }

  return result;
}

unint64_t *faiss::HeapArray<faiss::CMax<int,long long>>::reorder(unint64_t *result)
{
  if (!*result)
  {
    return result;
  }

  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = v1[2];
    v6 = v1[1];
    v28 = v1[3];
    v7 = (v28 + 4 * v6 * v4);
    v8 = (v5 + 8 * v6 * v4);
    if (!v6)
    {
      v10 = 0;
      goto LABEL_23;
    }

    v9 = 0;
    v10 = 0;
    v11 = v7 - 1;
    v12 = v8 - 1;
    do
    {
      v13 = *v7;
      v14 = *v8;
      v15 = v6 - v9;
      v16 = v11[v6 - v9];
      if (v6 - v9 < 2)
      {
        v17 = 1;
        goto LABEL_18;
      }

      v18 = 3;
      v19 = 2;
      v20 = 1;
      while (1)
      {
        if (v19 == v15)
        {
          v21 = v11[v15];
          goto LABEL_11;
        }

        v21 = v11[v19];
        v22 = v7[v19];
        if (v21 <= v22)
        {
          break;
        }

LABEL_11:
        v23 = v8 - 1;
        v18 = v19;
        if (v16 > v21)
        {
          goto LABEL_16;
        }

LABEL_14:
        v11[v20] = v21;
        v12[v20] = v23[v19];
        v17 = v18;
        v19 = 2 * v18;
        v18 = (2 * v18) | 1;
        v20 = v17;
        if (v19 > v15)
        {
          goto LABEL_17;
        }
      }

      v21 = v7[v19];
      v23 = (v5 + 8 * v6 * v4);
      if (v16 <= v22)
      {
        goto LABEL_14;
      }

LABEL_16:
      v17 = v20;
LABEL_17:
      v16 = v11[v15];
LABEL_18:
      v11[v17] = v16;
      v12[v17] = v12[v15];
      v24 = v6 + ~v10;
      v7[v24] = v13;
      v8[v24] = v14;
      if (v14 != -1)
      {
        ++v10;
      }

      ++v9;
    }

    while (v9 != v6);
LABEL_23:
    memmove(v7, &v7[v6 - v10], 4 * v10);
    result = memmove((v5 + 8 * v6 * v4), &v8[v6 - v10], 8 * v10);
    v25 = v6 - v10;
    if (v6 > v10)
    {
      v26 = (v5 + v6 * v3 + 8 * v10);
      v27 = (v28 + v6 * v2 + 4 * v10);
      do
      {
        *v27++ = 0x7FFFFFFF;
        *v26++ = -1;
        --v25;
      }

      while (v25);
    }

    ++v4;
    v3 += 8;
    v2 += 4;
  }

  while (v4 < *v1);
  return result;
}

uint64_t *faiss::HeapArray<faiss::CMax<int,long long>>::per_line_extrema(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = 0;
    v5 = result[3];
    v6 = result[1];
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = -1;
        v9 = 0x80000000;
        do
        {
          if (*(v5 + 4 * v7) > v9)
          {
            v8 = v7;
            v9 = *(v5 + 4 * v7);
          }

          ++v7;
        }

        while (v6 != v7);
        if (!a2)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v9 = 0x80000000;
        v8 = -1;
        if (!a2)
        {
          goto LABEL_10;
        }
      }

      *(a2 + 4 * v4) = v9;
LABEL_10:
      if (a3)
      {
        v10 = result[2];
        if (v10)
        {
          if (v8 != -1)
          {
            v8 = *(v10 + 8 * v6 * v4 + 8 * v8);
          }
        }

        *(a3 + 8 * v4) = v8;
      }

      ++v4;
      v5 += 4 * v6;
    }

    while (v4 != v3);
  }

  return result;
}

void faiss::HeapArray<faiss::CMin<float,long long>>::addn()
{
  __assert_rtn("addn", "Heap.cpp", 34, "i0 >= 0 && i0 + ni <= nh");
}

{
    ;
  }
}

uint64_t faiss::RandomGenerator::RandomGenerator(uint64_t this, unsigned int a2)
{
  *this = a2;
  for (i = 1; i != 624; ++i)
  {
    a2 = i + 1812433253 * (a2 ^ (a2 >> 30));
    *(this + 4 * i) = a2;
  }

  *(this + 2496) = 0;
  return this;
}

{
  *this = a2;
  for (i = 1; i != 624; ++i)
  {
    a2 = i + 1812433253 * (a2 ^ (a2 >> 30));
    *(this + 4 * i) = a2;
  }

  *(this + 2496) = 0;
  return this;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t faiss::float_rand(faiss *this, float *a2)
{
  MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  v19 = v5;
  v21.__x_[0] = v2;
  for (i = 1; i != 624; ++i)
  {
    v2 = i + 1812433253 * (v2 ^ (v2 >> 30));
    v21.__x_[i] = v2;
  }

  v21.__i_ = 0;
  v7 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v21) & 0x7FFFFFFF;
  result = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v21);
  v9 = 0;
  v10 = result & 0x7FFFFFFF;
  if (v4 <= 0x3FF)
  {
    v11 = 0;
  }

  else
  {
    v11 = 10;
  }

  do
  {
    v12 = v7 + v10 * v9;
    v20.__x_[0] = v12;
    for (j = 1; j != 624; ++j)
    {
      v12 = j + 1812433253 * (v12 ^ (v12 >> 30));
      v20.__x_[j] = v12;
    }

    v20.__i_ = 0;
    v14 = (v9 * v4) >> v11;
    v15 = ((v9 + 1) * v4) >> v11;
    v16 = v15 - v14;
    if (v15 > v14)
    {
      v17 = (v19 + 4 * v14);
      do
      {
        result = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v20);
        *v17++ = vcvts_n_f32_u32(result, 0x20uLL);
        --v16;
      }

      while (v16);
    }

    if (v4 < 0x400)
    {
      break;
    }
  }

  while (v9++ < 0x3FF);
  return result;
}

void faiss::float_randn(faiss *this, float *a2)
{
  MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  v6 = v5;
  v24.__x_[0] = v2;
  for (i = 1; i != 624; ++i)
  {
    v2 = i + 1812433253 * (v2 ^ (v2 >> 30));
    v24.__x_[i] = v2;
  }

  v24.__i_ = 0;
  v22 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v24) & 0x7FFFFFFF;
  v8 = 0;
  v21 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v24) & 0x7FFFFFFF;
  v9 = 10;
  if (v4 <= 0x3FF)
  {
    v9 = 0;
  }

  v20 = v9;
  do
  {
    v10 = v22 + v21 * v8;
    v23.__x_[0] = v10;
    for (j = 1; j != 624; ++j)
    {
      v10 = j + 1812433253 * (v10 ^ (v10 >> 30));
      v23.__x_[j] = v10;
    }

    v23.__i_ = 0;
    v12 = (v8 * v4) >> v20;
    v13 = ((v8 + 1) * v4) >> v20;
    if (v12 < v13)
    {
      v14 = 0;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      do
      {
        if (!v14)
        {
          do
          {
            v16 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v23) / 4294967300.0 * 2.0 + -1.0;
            v17 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v23) / 4294967300.0 * 2.0 + -1.0;
            v15 = v17 * v17 + v16 * v16;
          }

          while (v15 >= 1.0);
        }

        v18 = v16 * sqrt(log(v15) * -2.0 / v15);
        *(v6 + 4 * v12) = v18;
        v14 = 1 - v14;
        ++v12;
        v16 = v17;
      }

      while (v12 != v13);
    }

    if (v4 < 0x400)
    {
      break;
    }
  }

  while (v8++ < 0x3FF);
}

uint64_t faiss::int64_rand(faiss *this, uint64_t *a2)
{
  MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  v19 = v5;
  v22.__x_[0] = v2;
  for (i = 1; i != 624; ++i)
  {
    v2 = i + 1812433253 * (v2 ^ (v2 >> 30));
    v22.__x_[i] = v2;
  }

  v22.__i_ = 0;
  v20 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v22) & 0x7FFFFFFF;
  result = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v22);
  v8 = 0;
  v9 = result & 0x7FFFFFFF;
  if (v4 <= 0x3FF)
  {
    v10 = 0;
  }

  else
  {
    v10 = 10;
  }

  do
  {
    v11 = v20 + v9 * v8;
    v21.__x_[0] = v11;
    for (j = 1; j != 624; ++j)
    {
      v11 = j + 1812433253 * (v11 ^ (v11 >> 30));
      v21.__x_[j] = v11;
    }

    v21.__i_ = 0;
    v13 = (v8 * v4) >> v10;
    v14 = ((v8 + 1) * v4) >> v10;
    v15 = v14 - v13;
    if (v14 > v13)
    {
      v16 = (v19 + 8 * v13);
      do
      {
        v17 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v21) & 0x7FFFFFFF;
        result = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v21);
        *v16++ = v17 | ((result & 0x7FFFFFFF) << 31);
        --v15;
      }

      while (v15);
    }

    if (v4 < 0x400)
    {
      break;
    }
  }

  while (v8++ < 0x3FF);
  return result;
}

uint64_t faiss::int64_rand_max(faiss *this, uint64_t *a2)
{
  MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  v6 = v5;
  v20 = v7;
  v24.__x_[0] = v2;
  for (i = 1; i != 624; ++i)
  {
    v2 = i + 1812433253 * (v2 ^ (v2 >> 30));
    v24.__x_[i] = v2;
  }

  v24.__i_ = 0;
  v22 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v24) & 0x7FFFFFFF;
  result = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v24);
  v10 = 0;
  v21 = result & 0x7FFFFFFF;
  if (v6 <= 0x3FF)
  {
    v11 = 0;
  }

  else
  {
    v11 = 10;
  }

  do
  {
    v12 = v22 + v21 * v10;
    v23.__x_[0] = v12;
    for (j = 1; j != 624; ++j)
    {
      v12 = j + 1812433253 * (v12 ^ (v12 >> 30));
      v23.__x_[j] = v12;
    }

    v23.__i_ = 0;
    v14 = (v10 * v6) >> v11;
    v15 = ((v10 + 1) * v6) >> v11;
    v16 = v15 - v14;
    if (v15 > v14)
    {
      v17 = (v20 + 8 * v14);
      do
      {
        v18 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v23) & 0x7FFFFFFF;
        result = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v23);
        *v17++ = (v18 | ((result & 0x7FFFFFFF) << 31)) % v4;
        --v16;
      }

      while (v16);
    }

    if (v6 < 0x400)
    {
      break;
    }
  }

  while (v10++ < 0x3FF);
  return result;
}

uint64_t faiss::rand_perm(uint64_t this, int *a2, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type a3)
{
  v3 = a2;
  v4 = this;
  if (a2)
  {
    v5 = 0;
    v6 = vdupq_n_s64(a2 - 1);
    v7 = xmmword_1D9C84A40;
    v8 = xmmword_1D9C84A30;
    v9 = (this + 8);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s16(v11, *v6.i8).u8[0])
      {
        *(v9 - 2) = v5;
      }

      if (vuzp1_s16(v11, *&v6).i8[2])
      {
        *(v9 - 1) = v5 + 1;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
      {
        *v9 = v5 + 2;
        v9[1] = v5 + 3;
      }

      v5 += 4;
      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 4;
    }

    while (((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v5);
  }

  v19.__x_[0] = a3;
  for (i = 1; i != 624; ++i)
  {
    a3 = i + 1812433253 * (a3 ^ (a3 >> 30));
    v19.__x_[i] = a3;
  }

  v19.__i_ = 0;
  if (a2 >= 2)
  {
    v13 = 0;
    v14 = 1;
    v15 = this;
    do
    {
      v16 = v14;
      this = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v19);
      v17 = v4 + 4 * v13;
      v18 = *v15;
      *v15++ = *(v17 + 4 * (this % v3));
      *(v17 + 4 * (this % v3)) = v18;
      v14 = v16 + 1;
      v3 = (v3 - 1);
      v13 = v16;
    }

    while (v3 != 1);
  }

  return this;
}

uint64_t faiss::byte_rand(faiss *this, unsigned __int8 *a2)
{
  MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  v19 = v5;
  v22.__x_[0] = v2;
  for (i = 1; i != 624; ++i)
  {
    v2 = i + 1812433253 * (v2 ^ (v2 >> 30));
    v22.__x_[i] = v2;
  }

  v22.__i_ = 0;
  v20 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v22) & 0x7FFFFFFF;
  result = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v22);
  v8 = 0;
  v9 = result & 0x7FFFFFFF;
  if (v4 <= 0x3FF)
  {
    v10 = 0;
  }

  else
  {
    v10 = 10;
  }

  do
  {
    v11 = v20 + v9 * v8;
    v21.__x_[0] = v11;
    for (j = 1; j != 624; ++j)
    {
      v11 = j + 1812433253 * (v11 ^ (v11 >> 30));
      v21.__x_[j] = v11;
    }

    v21.__i_ = 0;
    v13 = (v8 * v4) >> v10;
    v14 = ((v8 + 1) * v4) >> v10;
    v15 = v14 - v13;
    if (v14 > v13)
    {
      v16 = (v19 + v13);
      do
      {
        v17 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v21);
        result = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v21);
        *v16++ = v17;
        --v15;
      }

      while (v15);
    }

    if (v4 < 0x400)
    {
      break;
    }
  }

  while (v8++ < 0x3FF);
  return result;
}

std::string *faiss::get_compile_options@<X0>(std::string *a1@<X8>)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "OPTIMIZE ");
  return std::string::append(a1, "NEON");
}

void sub_1D9C27920(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t faiss::reflection(uint64_t this, const float *a2, float *a3, unint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = 0;
    v6 = 4 * a4;
    do
    {
      if (a5)
      {
        v7 = 0;
        v8 = this;
        do
        {
          if (a4)
          {
            v9 = 0;
            v10 = 0;
            v11 = 0;
            do
            {
              v11 = vmla_f32(v11, *&a2[v9], *(v8 + v9 * 4));
              v10 += 2;
              v9 += 2;
            }

            while (v10 < a4);
            v12 = 0;
            v13 = vaddv_f32(v11) * -2.0;
            do
            {
              a2[v12] = a2[v12] + (v13 * *(v8 + 4 * v12));
              ++v12;
            }

            while (a4 != v12);
          }

          ++v7;
          v8 += v6;
        }

        while (v7 != a5);
      }

      v5 = (v5 + 1);
      a2 = (a2 + v6);
    }

    while (v5 != a3);
  }

  return this;
}

uint64_t faiss::reflection_ref(uint64_t this, const float *a2, float *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = 0;
    v6 = 4 * a4;
    do
    {
      if (a5)
      {
        v7 = 0;
        v8 = this;
        do
        {
          if (a4)
          {
            v9 = 0;
            v10 = 0.0;
            do
            {
              v10 = v10 + (*(v8 + 4 * v9) * a2[v9]);
              ++v9;
            }

            while (a4 != v9);
            v11 = 0;
            v12 = v10 * -2.0;
            do
            {
              v13 = a2[v11] + v12 * *(v8 + 4 * v11);
              a2[v11++] = v13;
            }

            while (a4 != v11);
          }

          ++v7;
          v8 += v6;
        }

        while (v7 != a5);
      }

      v5 = (v5 + 1);
      a2 = (a2 + v6);
    }

    while (v5 != a3);
  }

  return this;
}

void faiss::matrix_qr(faiss *this, __CLPK_integer a2, __CLPK_real *a3, float *a4)
{
  if (this < a2)
  {
    memset(&v15, 0, sizeof(v15));
    v5 = snprintf(0, 0, "Error: '%s' failed", "m >= n");
    std::string::resize(&v15, v5 + 1, 0);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v15;
    }

    else
    {
      v6 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    snprintf(v6, size, "Error: '%s' failed", "m >= n");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v15, "void faiss::matrix_qr(int, int, float *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/utils.cpp", 234);
  }

  __lda = this;
  __k = a2;
  __n = a2;
  std::vector<float>::vector[abi:ne200100](&v15, a2);
  __lwork = -1;
  *__info = 0;
  sgeqrf_(&__lda, &__n, a3, &__lda, v15.__r_.__value_.__l.__data_, __info, &__lwork, &__info[1]);
  __lwork = *__info;
  std::vector<float>::vector[abi:ne200100](__work, __lwork);
  sgeqrf_(&__lda, &__n, a3, &__lda, v15.__r_.__value_.__l.__data_, __work[0], &__lwork, &__info[1]);
  sorgqr_(&__lda, &__n, &__k, a3, &__lda, v15.__r_.__value_.__l.__data_, __work[0], &__lwork, &__info[1]);
  if (__work[0])
  {
    __work[1] = __work[0];
    operator delete(__work[0]);
  }

  if (v15.__r_.__value_.__r.__words[0])
  {
    v15.__r_.__value_.__l.__size_ = v15.__r_.__value_.__r.__words[0];
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1D9C27CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  __cxa_free_exception(v11);
  if (*(v12 - 17) < 0)
  {
    operator delete(*(v12 - 40));
  }

  _Unwind_Resume(a1);
}

void faiss::FaissException::~FaissException(std::exception *this)
{
  this->__vftable = &unk_1F5537060;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F5537060;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1DA73F410);
}

uint64_t faiss::ranklist_handle_ties(uint64_t this, uint64_t a2, float *a3, const float *a4)
{
  if (this >= 1)
  {
    v5 = 0;
    v6 = this;
    v7 = -1;
    v8 = -1.0e38;
    do
    {
      v10 = a3[v5];
      if (v10 != v8)
      {
        if (v5 > v7 + 1)
        {
          this = std::__sort<std::__less<long long,long long> &,long long *>();
          v10 = a3[v5];
        }

        v8 = v10;
        v7 = v5;
      }

      ++v5;
      a2 += 8;
    }

    while (v6 != v5);
  }

  return this;
}

uint64_t faiss::merge_result_table_with(faiss *this, unint64_t a2, uint64_t a3, uint64_t *a4, float *a5, const uint64_t *a6, const float *a7, uint64_t a8, uint64_t a9)
{
  v40 = a7;
  std::vector<long long>::vector[abi:ne200100](__p, a2);
  std::vector<float>::vector[abi:ne200100](__src, a2);
  v12 = __src[0];
  v13 = 0;
  if (this)
  {
    v14 = 0;
    v35 = __p[0];
    while (1)
    {
      v15 = (a3 + 8 * v14 * a2);
      v16 = a4 + 4 * v14 * a2;
      v17 = &a5[2 * v14 * a2];
      v18 = a6 + 4 * v14 * a2;
      if ((v40 & 1) == 0)
      {
        break;
      }

      if (a2)
      {
        v19 = 0;
        v20 = 0;
        v21 = __src[0];
        v22 = __p[0];
        v23 = a2;
        while (1)
        {
          v24 = v15[v20];
          if (v24 < 0)
          {
            break;
          }

          v25 = *&v16[4 * v20];
          v26 = *&v18[4 * v19];
          if (v25 >= v26)
          {
            goto LABEL_10;
          }

          *v21 = v25;
          *v22 = v24;
          ++v20;
LABEL_13:
          ++v21;
          ++v22;
          if (!--v23)
          {
            goto LABEL_27;
          }
        }

        v26 = *&v18[4 * v19];
LABEL_10:
        if (v26 >= 0.0)
        {
          *v21 = v26;
          *v22 = *&v17[2 * v19++] + a8;
        }

        else
        {
          *v21 = NAN;
          *v22 = -1;
        }

        goto LABEL_13;
      }

LABEL_26:
      v19 = 0;
LABEL_27:
      v13 += v19;
      memcpy(v16, v12, 4 * a2);
      memcpy(v15, v35, 8 * a2);
      if (++v14 == this)
      {
        v12 = __src[0];
        goto LABEL_29;
      }
    }

    if (!a2)
    {
      goto LABEL_26;
    }

    v19 = 0;
    v27 = 0;
    v28 = __src[0];
    v29 = __p[0];
    v30 = a2;
    while (1)
    {
      v31 = v15[v27];
      if (v31 < 0)
      {
        break;
      }

      v32 = *&v16[4 * v27];
      v33 = *&v18[4 * v19];
      if (v32 <= v33)
      {
        goto LABEL_21;
      }

      *v28 = v32;
      *v29 = v31;
      ++v27;
LABEL_24:
      ++v28;
      ++v29;
      if (!--v30)
      {
        goto LABEL_27;
      }
    }

    v33 = *&v18[4 * v19];
LABEL_21:
    if (v33 >= 0.0)
    {
      *v28 = v33;
      *v29 = *&v17[2 * v19++] + a8;
    }

    else
    {
      *v28 = NAN;
      *v29 = -1;
    }

    goto LABEL_24;
  }

LABEL_29:
  if (v12)
  {
    __src[1] = v12;
    operator delete(v12);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v13;
}

void sub_1D9C28024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void faiss::ranklist_intersection_size(faiss *this, uint64_t a2, faiss *a3, uint64_t a4, const uint64_t *a5)
{
  do
  {
    v7 = a4;
    v8 = a3;
    a4 = a2;
    a3 = this;
    this = v8;
    a2 = v7;
  }

  while (v8 > a3);
  operator new[]();
}

double faiss::imbalance_factor(faiss *this, int *a2, const int *a3)
{
  if (this < 1)
  {
    v5 = 0.0;
    v4 = 0.0;
  }

  else
  {
    v3 = this;
    v4 = 0.0;
    v5 = 0.0;
    do
    {
      v6 = *a2++;
      v5 = v5 + v6;
      v4 = v4 + v6 * v6;
      --v3;
    }

    while (v3);
  }

  return v4 * this / (v5 * v5);
}

double faiss::imbalance_factor(faiss *this, int a2, uint64_t *a3, const uint64_t *a4)
{
  v6 = this;
  std::vector<int>::vector[abi:ne200100](__p, a2);
  v9 = __p[0];
  if (v6 >= 1)
  {
    v10 = v6;
    do
    {
      v11 = *a3++;
      ++v9[v11];
      --v10;
    }

    while (v10);
  }

  if (a2 >= 1)
  {
    v12 = a2;
    v13 = 0.0;
    v14 = v9;
    v15 = 0.0;
    do
    {
      v16 = *v14++;
      v15 = v15 + v16;
      v13 = v13 + v16 * v16;
      --v12;
    }

    while (v12);
    v17 = v13 * a2 / (v15 * v15);
    goto LABEL_9;
  }

  *v7.i64 = a2;
  v8.i64[0] = 0;
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v17 = *vbslq_s8(vnegq_f64(v18), v8, v7).i64 / 0.0;
  if (v9)
  {
LABEL_9:
    __p[1] = v9;
    operator delete(v9);
  }

  return v17;
}

uint64_t faiss::ivec_hist(faiss *this, uint64_t a2, const int *a3, void *a4, int *a5)
{
  v6 = a3;
  bzero(a4, 4 * a3);
  for (result = 0; this; this = (this - 1))
  {
    v10 = *(a2 - 4 + 4 * this);
    if ((v10 & 0x80000000) != 0 || v10 >= v6)
    {
      result = (result + 1);
    }

    else
    {
      ++*(a4 + v10);
    }
  }

  return result;
}

void faiss::bincode_hist(faiss *this, unint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, int *a5)
{
  if ((a2 & 7) != 0)
  {
    memset(&v23, 0, sizeof(v23));
    v19 = snprintf(0, 0, "Error: '%s' failed", "nbits % 8 == 0");
    std::string::resize(&v23, v19 + 1, 0);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v23;
    }

    else
    {
      v20 = v23.__r_.__value_.__r.__words[0];
    }

    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v23.__r_.__value_.__l.__size_;
    }

    snprintf(v20, size, "Error: '%s' failed", "nbits % 8 == 0");
    exception = __cxa_allocate_exception(0x20uLL);
    faiss::FaissException::FaissException(exception, &v23, "void faiss::bincode_hist(size_t, size_t, const uint8_t *, int *)", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/utils/utils.cpp", 410);
  }

  v9 = a2 >> 3;
  std::vector<int>::vector[abi:ne200100](&v23, 32 * a2);
  v10 = v23.__r_.__value_.__r.__words[0];
  if (this)
  {
    v11 = 0;
    do
    {
      if (a2)
      {
        v12 = 0;
        v13 = v9;
        do
        {
          v14 = *a3++;
          ++v10[v12 & 0xFFFFFF00 | v14];
          v12 += 256;
          --v13;
        }

        while (v13);
      }

      v11 = (v11 + 1);
    }

    while (v11 != this);
  }

  bzero(a4, 4 * a2);
  if (a2)
  {
    v15 = 0;
    if (v9 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v9;
    }

    do
    {
      for (i = 0; i != 256; ++i)
      {
        for (j = 0; j != 8; ++j)
        {
          if ((i >> j))
          {
            *&a4[4 * j] += v10[256 * v15 + i];
          }
        }
      }

      ++v15;
      a4 += 32;
    }

    while (v15 != v16);
  }

  if (v10)
  {
    v23.__r_.__value_.__l.__size_ = v10;
    operator delete(v10);
  }
}

void sub_1D9C28524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t faiss::ivec_checksum(faiss *this, uint64_t a2, const int *a3)
{
  for (result = 112909; this; this = (this - 1))
  {
    result = 65713 * result + 1686049 * *(a2 - 4 + 4 * this);
  }

  return result;
}

uint64_t faiss::fvec_argsort(unint64_t this, uint64_t a2, const float *a3, unint64_t *a4)
{
  if (this)
  {
    v4 = 0;
    v5 = vdupq_n_s64(this - 1);
    v6 = xmmword_1D9C84A30;
    v7 = (a3 + 2);
    v8 = vdupq_n_s64(2uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v5, v6));
      if (v9.i8[0])
      {
        *(v7 - 1) = v4;
      }

      if (v9.i8[4])
      {
        *v7 = v4 + 1;
      }

      v4 += 2;
      v6 = vaddq_s64(v6, v8);
      v7 += 4;
    }

    while (((this + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  v13 = a2;
  v10 = 126 - 2 * __clz(this);
  if (this)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }
}

uint64_t faiss::fvecs_maybe_subsample(faiss *this, int **a2, unint64_t *a3, uint64_t a4, const float *a5, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type a6)
{
  v7 = *a2;
  if (v7 > a3)
  {
    if (a5)
    {
      printf("  Input training set too big (max size is %zd), sampling %zd / %zd vectors\n", a3, a3, v7);
      v7 = *a2;
    }

    std::vector<int>::vector[abi:ne200100](&v10, v7);
    faiss::rand_perm(v10, *a2, a6);
    operator new[]();
  }

  return a4;
}

void sub_1D9C288A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float faiss::binary_to_real(faiss *this, uint64_t a2, const unsigned __int8 *a3, float *a4)
{
  if (this)
  {
    for (i = 0; i != this; ++i)
    {
      result = (2 * ((*(a2 + (i >> 3)) >> (i & 7)) & 1) - 1);
      *&a3[4 * i] = result;
    }
  }

  return result;
}

unint64_t faiss::real_to_binary(unint64_t this, uint64_t a2, const float *a3, unsigned __int8 *a4)
{
  if (this >= 8)
  {
    v4 = 0;
    do
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = 1 << v5;
        if (*(a2 + 4 * v5) <= 0.0)
        {
          LOBYTE(v7) = 0;
        }

        v6 |= v7;
        ++v5;
      }

      while (v5 != 8);
      *(a3 + v4++) = v6;
      a2 += 32;
    }

    while (v4 != this >> 3);
  }

  return this;
}

unint64_t faiss::hash_bytes(faiss *this, uint64_t a2)
{
  v2 = *this << 7;
  if (a2 >= 1)
  {
    v3 = (a2 + 1);
    do
    {
      v4 = *this;
      this = (this + 1);
      v2 = (1000003 * v2) ^ v4;
      --v3;
    }

    while (v3 > 1);
  }

  return v2 ^ a2;
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1D9C28A88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9C28B00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,faiss::anonymous namespace::ArgsortComparator &,unsigned long *,false>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v79 = *(a2 - 1);
        v80 = *v10;
        if (*(*a3 + 4 * v79) < *(*a3 + 4 * *v10))
        {
          *v10 = v79;
          *(a2 - 1) = v80;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v88 = v10 + 1;
      v89 = v10[1];
      v90 = v10 + 2;
      v91 = v10[2];
      v92 = *a3;
      v93 = *(*a3 + 4 * v89);
      v94 = *v10;
      v95 = *(*a3 + 4 * *v10);
      v96 = *(*a3 + 4 * v91);
      if (v93 >= v95)
      {
        if (v96 >= v93)
        {
          goto LABEL_171;
        }

        *v88 = v91;
        *v90 = v89;
        v97 = v10;
        v98 = (v10 + 1);
        result = v89;
        if (v96 < v95)
        {
          goto LABEL_162;
        }
      }

      else
      {
        v97 = v10;
        v98 = (v10 + 2);
        result = *v10;
        if (v96 >= v93)
        {
          *v10 = v89;
          v10[1] = v94;
          v97 = v10 + 1;
          v98 = (v10 + 2);
          result = v94;
          if (v96 >= v95)
          {
LABEL_171:
            v89 = v91;
            goto LABEL_172;
          }
        }

LABEL_162:
        *v97 = v91;
        *v98 = v94;
        v89 = result;
      }

LABEL_172:
      v147 = *(a2 - 1);
      if (*(v92 + 4 * v147) < *(v92 + 4 * v89))
      {
        *v90 = v147;
        *(a2 - 1) = v89;
        v148 = *v90;
        v149 = *v88;
        v150 = *(v92 + 4 * v148);
        if (v150 < *(v92 + 4 * v149))
        {
          v10[1] = v148;
          v10[2] = v149;
          v151 = *v10;
          if (v150 < *(v92 + 4 * *v10))
          {
            *v10 = v148;
            v10[1] = v151;
          }
        }
      }

      return result;
    }

    if (v11 == 5)
    {
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v99 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v100 = 0;
            v101 = *a3;
            v102 = v10;
            do
            {
              v104 = *v102;
              v103 = v102[1];
              v102 = v99;
              v105 = *(v101 + 4 * v103);
              if (v105 < *(v101 + 4 * v104))
              {
                v106 = v100;
                while (1)
                {
                  *(v10 + v106 + 8) = v104;
                  if (!v106)
                  {
                    break;
                  }

                  v104 = *(v10 + v106 - 8);
                  v106 -= 8;
                  if (v105 >= *(v101 + 4 * v104))
                  {
                    v107 = (v10 + v106 + 8);
                    goto LABEL_125;
                  }
                }

                v107 = v10;
LABEL_125:
                *v107 = v103;
              }

              v99 = v102 + 1;
              v100 += 8;
            }

            while (v102 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v142 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v143 = *a3;
          do
          {
            v145 = *v9;
            v144 = v9[1];
            v9 = v142;
            v146 = *(v143 + 4 * v144);
            if (v146 < *(v143 + 4 * v145))
            {
              do
              {
                *v142 = v145;
                v145 = *(v142 - 2);
                --v142;
              }

              while (v146 < *(v143 + 4 * v145));
              *v142 = v144;
            }

            v142 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v108 = (v11 - 2) >> 1;
        v109 = *a3;
        v110 = v108;
        do
        {
          v111 = v110;
          if (v108 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = &v10[v112];
            if (2 * v111 + 2 < v11 && *(v109 + 4 * *v113) < *(v109 + 4 * v113[1]))
            {
              ++v113;
              v112 = 2 * v111 + 2;
            }

            v114 = &v10[v111];
            v115 = *v113;
            v116 = *v114;
            v117 = *(v109 + 4 * *v114);
            if (*(v109 + 4 * *v113) >= v117)
            {
              do
              {
                v118 = v113;
                *v114 = v115;
                if (v108 < v112)
                {
                  break;
                }

                v119 = 2 * v112;
                v112 = (2 * v112) | 1;
                v113 = &v10[v112];
                v120 = v119 + 2;
                if (v120 < v11)
                {
                  result = v113[1];
                  if (*(v109 + 4 * *v113) < *(v109 + 4 * result))
                  {
                    ++v113;
                    v112 = v120;
                  }
                }

                v115 = *v113;
                v114 = v118;
              }

              while (*(v109 + 4 * *v113) >= v117);
              *v118 = v116;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        do
        {
          v121 = 0;
          v122 = *v10;
          v123 = *a3;
          v124 = v10;
          do
          {
            v125 = v124;
            v126 = &v124[v121];
            v124 = v126 + 1;
            v127 = 2 * v121;
            v121 = (2 * v121) | 1;
            v128 = v127 + 2;
            if (v128 < v11)
            {
              v130 = v126[2];
              v129 = v126 + 2;
              result = *(v129 - 1);
              if (*(v123 + 4 * result) < *(v123 + 4 * v130))
              {
                v124 = v129;
                v121 = v128;
              }
            }

            *v125 = *v124;
          }

          while (v121 <= ((v11 - 2) >> 1));
          if (v124 == --a2)
          {
            *v124 = v122;
          }

          else
          {
            *v124 = *a2;
            *a2 = v122;
            v131 = (v124 - v10 + 8) >> 3;
            v132 = v131 < 2;
            v133 = v131 - 2;
            if (!v132)
            {
              v134 = v133 >> 1;
              v135 = &v10[v134];
              v136 = *v135;
              v137 = *v124;
              v138 = *(v123 + 4 * *v124);
              if (*(v123 + 4 * *v135) < v138)
              {
                do
                {
                  v139 = v135;
                  *v124 = v136;
                  if (!v134)
                  {
                    break;
                  }

                  v134 = (v134 - 1) >> 1;
                  v135 = &v10[v134];
                  v136 = *v135;
                  v124 = v139;
                }

                while (*(v123 + 4 * *v135) < v138);
                *v139 = v137;
              }
            }
          }

          v132 = v11-- <= 2;
        }

        while (!v132);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + 4 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 4 * *v12);
      v20 = *(v14 + 4 * *v10);
      if (v19 >= v20)
      {
        if (v16 < v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v25 = *v10;
          if (*(v14 + 4 * *v12) < *(v14 + 4 * *v10))
          {
            *v10 = *v12;
            *v12 = v25;
          }
        }
      }

      else
      {
        if (v16 < v19)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v18;
        v27 = *(a2 - 1);
        if (*(v14 + 4 * v27) < v20)
        {
          *v12 = v27;
LABEL_27:
          *(a2 - 1) = v18;
        }
      }

      v28 = v12 - 1;
      v29 = *(v12 - 1);
      v30 = v10[1];
      v31 = *(v14 + 4 * v29);
      v32 = *(v14 + 4 * v30);
      v33 = *(a2 - 2);
      v34 = *(v14 + 4 * v33);
      if (v31 >= v32)
      {
        if (v34 < v31)
        {
          *v28 = v33;
          *(a2 - 2) = v29;
          v35 = v10[1];
          if (*(v14 + 4 * *v28) < *(v14 + 4 * v35))
          {
            v10[1] = *v28;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v10[1] = v33;
          goto LABEL_39;
        }

        v10[1] = v29;
        *v28 = v30;
        v37 = *(a2 - 2);
        if (*(v14 + 4 * v37) < v32)
        {
          *v28 = v37;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v40 = v12[1];
      v38 = v12 + 1;
      v39 = v40;
      v41 = v10[2];
      v42 = *(v14 + 4 * v40);
      v43 = *(v14 + 4 * v41);
      v44 = *(a2 - 3);
      v45 = *(v14 + 4 * v44);
      if (v42 >= v43)
      {
        if (v45 < v42)
        {
          *v38 = v44;
          *(a2 - 3) = v39;
          v46 = v10[2];
          if (*(v14 + 4 * *v38) < *(v14 + 4 * v46))
          {
            v10[2] = *v38;
            *v38 = v46;
          }
        }
      }

      else
      {
        if (v45 < v42)
        {
          v10[2] = v44;
          goto LABEL_48;
        }

        v10[2] = v39;
        *v38 = v41;
        v47 = *(a2 - 3);
        if (*(v14 + 4 * v47) < v43)
        {
          *v38 = v47;
LABEL_48:
          *(a2 - 3) = v41;
        }
      }

      v48 = *v13;
      v49 = *v28;
      v50 = *(v14 + 4 * *v13);
      v51 = *(v14 + 4 * *v28);
      v52 = *v38;
      v53 = *(v14 + 4 * *v38);
      if (v50 >= v51)
      {
        if (v53 >= v50)
        {
          goto LABEL_56;
        }

        *v13 = v52;
        *v38 = v48;
        v38 = v13;
        v48 = v49;
        if (v53 >= v51)
        {
          v48 = v52;
          goto LABEL_56;
        }
      }

      else if (v53 >= v50)
      {
        *v28 = v48;
        *v13 = v49;
        v28 = v13;
        v48 = v52;
        if (v53 >= v51)
        {
          v48 = v49;
LABEL_56:
          v54 = *v10;
          *v10 = v48;
          *v13 = v54;
          goto LABEL_57;
        }
      }

      *v28 = v52;
      *v38 = v49;
      goto LABEL_56;
    }

    v21 = *v10;
    v22 = *v13;
    v23 = *(v14 + 4 * *v10);
    v24 = *(v14 + 4 * *v13);
    if (v23 >= v24)
    {
      if (v16 < v23)
      {
        *v10 = v15;
        *(a2 - 1) = v21;
        v26 = *v13;
        if (*(v14 + 4 * *v10) < *(v14 + 4 * *v13))
        {
          *v13 = *v10;
          *v10 = v26;
        }
      }

      goto LABEL_57;
    }

    if (v16 < v23)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v22;
      goto LABEL_57;
    }

    *v13 = v21;
    *v10 = v22;
    v36 = *(a2 - 1);
    if (*(v14 + 4 * v36) < v24)
    {
      *v10 = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v55 = *v10;
    if (a5)
    {
      v56 = *(v14 + 4 * v55);
LABEL_60:
      v57 = 0;
      do
      {
        v58 = v10[++v57];
      }

      while (*(v14 + 4 * v58) < v56);
      v59 = &v10[v57];
      v60 = a2;
      if (v57 == 1)
      {
        v60 = a2;
        do
        {
          if (v59 >= v60)
          {
            break;
          }

          v62 = *--v60;
        }

        while (*(v14 + 4 * v62) >= v56);
      }

      else
      {
        do
        {
          v61 = *--v60;
        }

        while (*(v14 + 4 * v61) >= v56);
      }

      if (v59 >= v60)
      {
        v68 = v59 - 1;
      }

      else
      {
        v63 = *v60;
        v64 = &v10[v57];
        v65 = v60;
        do
        {
          *v64 = v63;
          *v65 = v58;
          do
          {
            v66 = v64[1];
            ++v64;
            v58 = v66;
          }

          while (*(v14 + 4 * v66) < v56);
          do
          {
            v67 = *--v65;
            v63 = v67;
          }

          while (*(v14 + 4 * v67) >= v56);
        }

        while (v64 < v65);
        v68 = v64 - 1;
      }

      if (v68 != v10)
      {
        *v10 = *v68;
      }

      *v68 = v55;
      if (v59 < v60)
      {
        goto LABEL_81;
      }

      v10 = v68 + 1;
      if (result)
      {
        a2 = v68;
        if (!v69)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v69)
      {
LABEL_81:
        a5 = 0;
        v10 = v68 + 1;
      }
    }

    else
    {
      v56 = *(v14 + 4 * v55);
      if (*(v14 + 4 * *(v10 - 1)) < v56)
      {
        goto LABEL_60;
      }

      if (v56 >= *(v14 + 4 * *(a2 - 1)))
      {
        v71 = v10 + 1;
        do
        {
          v10 = v71;
          if (v71 >= a2)
          {
            break;
          }

          ++v71;
        }

        while (v56 >= *(v14 + 4 * *v10));
      }

      else
      {
        do
        {
          v70 = v10[1];
          ++v10;
        }

        while (v56 >= *(v14 + 4 * v70));
      }

      v72 = a2;
      if (v10 < a2)
      {
        v72 = a2;
        do
        {
          v73 = *--v72;
        }

        while (v56 < *(v14 + 4 * v73));
      }

      if (v10 < v72)
      {
        v74 = *v10;
        v75 = *v72;
        do
        {
          *v10 = v75;
          *v72 = v74;
          do
          {
            v76 = v10[1];
            ++v10;
            v74 = v76;
          }

          while (v56 >= *(v14 + 4 * v76));
          do
          {
            v77 = *--v72;
            v75 = v77;
          }

          while (v56 < *(v14 + 4 * v77));
        }

        while (v10 < v72);
      }

      v78 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v78;
      }

      a5 = 0;
      *v78 = v55;
    }
  }

  v81 = *v10;
  v82 = v10[1];
  v83 = *a3;
  v84 = *(*a3 + 4 * v82);
  v85 = *(*a3 + 4 * *v10);
  v86 = *(a2 - 1);
  v87 = *(*a3 + 4 * v86);
  if (v84 >= v85)
  {
    if (v87 < v84)
    {
      v10[1] = v86;
      *(a2 - 1) = v82;
      v141 = *v10;
      v140 = v10[1];
      if (*(v83 + 4 * v140) < *(v83 + 4 * *v10))
      {
        *v10 = v140;
        v10[1] = v141;
      }
    }
  }

  else
  {
    if (v87 >= v84)
    {
      *v10 = v82;
      v10[1] = v81;
      v152 = *(a2 - 1);
      if (*(v83 + 4 * v152) >= v85)
      {
        return result;
      }

      v10[1] = v152;
    }

    else
    {
      *v10 = v86;
    }

    *(a2 - 1) = v81;
  }

  return result;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,faiss::anonymous namespace::ArgsortComparator &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *a6;
  v9 = *(*a6 + 4 * *a2);
  v10 = *(*a6 + 4 * *result);
  v11 = *a3;
  v12 = *(*a6 + 4 * *a3);
  if (v9 >= v10)
  {
    if (v12 >= v9)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v11;
      *a3 = v6;
      v13 = *result;
      if (*(v8 + 4 * *a2) < *(v8 + 4 * *result))
      {
        *result = *a2;
        *a2 = v13;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v12 < v9)
    {
      *result = v11;
LABEL_9:
      *a3 = v7;
      v6 = v7;
      goto LABEL_11;
    }

    *result = v6;
    *a2 = v7;
    v6 = *a3;
    if (*(v8 + 4 * *a3) < v10)
    {
      *a2 = v6;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(v8 + 4 * *a4) < *(v8 + 4 * v6))
  {
    *a3 = *a4;
    *a4 = v6;
    v14 = *a2;
    if (*(v8 + 4 * *a3) < *(v8 + 4 * *a2))
    {
      *a2 = *a3;
      *a3 = v14;
      v15 = *result;
      if (*(v8 + 4 * *a2) < *(v8 + 4 * *result))
      {
        *result = *a2;
        *a2 = v15;
      }
    }
  }

  v16 = *a4;
  if (*(v8 + 4 * *a5) < *(v8 + 4 * *a4))
  {
    *a4 = *a5;
    *a5 = v16;
    v17 = *a3;
    if (*(v8 + 4 * *a4) < *(v8 + 4 * *a3))
    {
      *a3 = *a4;
      *a4 = v17;
      v18 = *a2;
      if (*(v8 + 4 * *a3) < *(v8 + 4 * *a2))
      {
        *a2 = *a3;
        *a3 = v18;
        v19 = *result;
        if (*(v8 + 4 * *a2) < *(v8 + 4 * *result))
        {
          *result = *a2;
          *a2 = v19;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,faiss::anonymous namespace::ArgsortComparator &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *a3;
      v9 = *(*a3 + 4 * v7);
      v10 = *(*a3 + 4 * *a1);
      v11 = *(a2 - 1);
      v12 = *(*a3 + 4 * v11);
      if (v9 >= v10)
      {
        if (v12 < v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v7;
          v36 = *a1;
          v35 = a1[1];
          if (*(v8 + 4 * v35) < *(v8 + 4 * *a1))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v12 >= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v51 = *(a2 - 1);
        if (*(v8 + 4 * v51) >= v10)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a3;
    v28 = *(*a3 + 4 * v24);
    v29 = *a1;
    v30 = *(*a3 + 4 * *a1);
    v31 = *(*a3 + 4 * v26);
    if (v28 >= v30)
    {
      if (v31 >= v28)
      {
LABEL_41:
        v24 = v26;
        goto LABEL_42;
      }

      *v23 = v26;
      *v25 = v24;
      v32 = a1;
      v33 = a1 + 1;
      v34 = v24;
      if (v31 >= v30)
      {
LABEL_42:
        v46 = *(a2 - 1);
        if (*(v27 + 4 * v46) < *(v27 + 4 * v24))
        {
          *v25 = v46;
          *(a2 - 1) = v24;
          v47 = *v25;
          v48 = *v23;
          v49 = *(v27 + 4 * v47);
          if (v49 < *(v27 + 4 * v48))
          {
            a1[1] = v47;
            a1[2] = v48;
            v50 = *a1;
            if (v49 < *(v27 + 4 * *a1))
            {
              *a1 = v47;
              a1[1] = v50;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v32 = a1;
      v33 = a1 + 2;
      v34 = *a1;
      if (v31 >= v28)
      {
        *a1 = v24;
        a1[1] = v29;
        v32 = a1 + 1;
        v33 = a1 + 2;
        v34 = v29;
        if (v31 >= v30)
        {
          goto LABEL_41;
        }
      }
    }

    *v32 = v26;
    *v33 = v29;
    v24 = v34;
    goto LABEL_42;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) < *(*a3 + 4 * *a1))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v13 = a1[2];
  v15 = a1[1];
  v16 = *a3;
  v17 = *(*a3 + 4 * v15);
  v18 = *a1;
  v19 = *(*a3 + 4 * *a1);
  v20 = *(*a3 + 4 * v13);
  if (v17 < v19)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 >= v17)
    {
      *a1 = v15;
      a1[1] = v18;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 >= v19)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v21 = v13;
    *v22 = v18;
    goto LABEL_27;
  }

  if (v20 < v17)
  {
    a1[1] = v13;
    *v14 = v15;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 < v19)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 24; ; i += 8)
  {
    v40 = *v37;
    v41 = *v14;
    v42 = *(v16 + 4 * *v37);
    if (v42 < *(v16 + 4 * v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 8;
        if (v43 == 8)
        {
          break;
        }

        v41 = *(a1 + v43 - 16);
        v43 -= 8;
        if (v42 >= *(v16 + 4 * v41))
        {
          v45 = (a1 + v44);
          goto LABEL_35;
        }
      }

      v45 = a1;
LABEL_35:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v14 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

void *faiss::RangeSearchResult::RangeSearchResult(void *this, uint64_t a2, int a3)
{
  *this = &unk_1F5536F58;
  this[1] = a2;
  if (a3)
  {
    operator new[]();
  }

  this[2] = 0;
  this[3] = 0;
  this[4] = 0;
  this[5] = 0x40000;
  return this;
}

void faiss::RangeSearchResult::do_allocation(faiss::RangeSearchResult *this)
{
  if (!*(this + 3) && !*(this + 4))
  {
    v1 = *(this + 2);
    if (*(this + 1))
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = v1[v2];
        v1[v2] = v3;
        v3 += v4;
        ++v2;
        v5 = *(this + 1);
      }

      while (v5 > v2);
      v1[v5] = v3;
    }

    else
    {
      *v1 = 0;
    }

    operator new[]();
  }

  memset(&v10, 0, sizeof(v10));
  v6 = snprintf(0, 0, "Error: '%s' failed", "labels == nullptr && distances == nullptr");
  std::string::resize(&v10, v6 + 1, 0);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  snprintf(v7, size, "Error: '%s' failed", "labels == nullptr && distances == nullptr");
  exception = __cxa_allocate_exception(0x20uLL);
  faiss::FaissException::FaissException(exception, &v10, "virtual void faiss::RangeSearchResult::do_allocation()", "/Library/Caches/com.apple.xbs/Sources/VisualLookUp/VisualIntelligence/VisualIntelligence/Vendor/faiss_search/faiss/faiss/impl/AuxIndexStructures.cpp", 40);
}

void sub_1D9C29BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void faiss::RangeSearchResult::~RangeSearchResult(faiss::RangeSearchResult *this)
{
  *this = &unk_1F5536F58;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x1DA73F3F0](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x1DA73F3F0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 2);
  if (v4)
  {
    MEMORY[0x1DA73F3F0](v4, 0x1000C8000313F17);
  }
}

{
  faiss::RangeSearchResult::~RangeSearchResult(this);

  JUMPOUT(0x1DA73F410);
}

void *faiss::BufferList::BufferList(void *this, uint64_t a2)
{
  *this = a2;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  this[4] = a2;
  return this;
}

{
  *this = a2;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  this[4] = a2;
  return this;
}

void faiss::BufferList::~BufferList(faiss::BufferList *this)
{
  v3 = (this + 8);
  v2 = *(this + 1);
  if (v3[1] != v2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (*&v2[v4])
      {
        MEMORY[0x1DA73F3F0](*&v2[v4], 0x1000C8000313F17);
        v2 = *(this + 1);
      }

      if (*&v2[v4 + 8])
      {
        MEMORY[0x1DA73F3F0](*&v2[v4 + 8], 0x1000C8052888210);
        v2 = *(this + 1);
      }

      ++v5;
      v4 += 16;
    }

    while (v5 < (*(this + 2) - v2) >> 4);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}