uint64_t DataSource.init(tableName:biomeIdentifier:useCase:messageName:manifest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a6;
  v47 = a3;
  v48 = a5;
  v46 = a8;
  v59 = *MEMORY[0x277D85DE8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - v20;
  v22 = type metadata accessor for DataSource.Container(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a7;
  sub_21B18C904(a7, v21);
  sub_21B18C904(v21, v19);
  v51 = _s23SchematizedTableFactoryCMa();
  v26 = swift_allocObject();
  *(v26 + 88) = 0;
  *(v26 + 16) = a4;
  *(v26 + 24) = a1;
  *(v26 + 32) = a2;
  *(v26 + 48) = 0;
  *(v26 + 56) = 0;
  *(v26 + 64) = -1;
  sub_21B18C904(v19, v16);
  v27 = sub_21B20CA18();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = a4;
  v31 = v47;
  v32 = v50;
  v33 = sub_21B20CA08();
  if (v32)
  {

    v34 = v31;
  }

  else
  {
    v50 = v25;
    *(v26 + 72) = v33;
    *(v26 + 80) = &protocol witness table for BaseStreamSchemaProvider;
    v38 = BiomeLibrary();
    v53 = 0;
    v39 = [v38 streamWithIdentifier:v31 error:&v53];
    swift_unknownObjectRelease();
    if (v39)
    {
      v40 = v53;
      sub_21B192958(v19);

      *(v26 + 40) = v39;
      v55 = v51;
      v56 = &off_282CA38D0;

      *&v54 = v26;
      sub_21B192958(v52);
      sub_21B192958(v21);
      sub_21B17C284(&v54, v57);
      v41 = v57[1];
      v42 = v50;
      *v50 = v57[0];
      *(v42 + 16) = v41;
      *(v42 + 32) = v58;
      swift_storeEnumTagMultiPayload();
      result = sub_21B1EB7F8(v42, v46);
      goto LABEL_8;
    }

    v44 = v53;

    sub_21B20C508();
    swift_willThrow();
    v34 = v30;
  }

  sub_21B192958(v52);
  sub_21B192958(v19);
  sub_21B192958(v21);

  v35 = *(v26 + 32);

  sub_21B1BDE2C(*(v26 + 48), *(v26 + 56), *(v26 + 64));
  if (!v32)
  {
    v36 = *(v26 + 72);
  }

  result = swift_deallocPartialClassInstance();
LABEL_8:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DataSource.init(tableName:biomeStream:messageName:manifest:publisherFactory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v61 = a5;
  v55 = a4;
  v48 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v46 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - v23;
  v50 = type metadata accessor for DataSource.Container(0);
  v25 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v49 = (&v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *a7;
  v52 = a7[1];
  v53 = v27;
  v51 = *(a7 + 16);
  v28 = a6;
  sub_21B18C904(a6, v24);
  sub_21B18C904(v24, v22);
  v54 = _s23SchematizedTableFactoryCMa();
  v29 = swift_allocObject();
  *(v29 + 88) = 0;
  *(v29 + 16) = 0;
  if (!a2)
  {
    v30 = [a3 schema];
    v31 = [v30 tableName];
    v47 = v8;
    v32 = a3;
    v33 = v28;
    v34 = v31;

    a1 = sub_21B20D2F8();
    a2 = v35;

    v28 = v33;
    a3 = v32;
    v9 = v47;
  }

  *(v29 + 24) = a1;
  *(v29 + 32) = a2;
  v36 = v52;
  *(v29 + 48) = v53;
  *(v29 + 56) = v36;
  *(v29 + 64) = v51;
  sub_21B18C904(v22, v19);
  v37 = sub_21B20CA18();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_21B20CA08();
  if (v9)
  {

    sub_21B192958(v28);
    sub_21B192958(v22);
    sub_21B192958(v24);

    v41 = *(v29 + 32);

    sub_21B1BDE2C(*(v29 + 48), *(v29 + 56), *(v29 + 64));

    return swift_deallocPartialClassInstance();
  }

  else
  {
    v43 = v40;
    sub_21B192958(v22);
    *(v29 + 72) = v43;
    *(v29 + 80) = &protocol witness table for BaseStreamSchemaProvider;
    *(v29 + 40) = a3;
    v57 = v54;
    v58 = &off_282CA38D0;
    *&v56 = v29;
    sub_21B192958(v28);
    sub_21B192958(v24);
    sub_21B17C284(&v56, v59);
    v44 = v59[1];
    v45 = v49;
    *v49 = v59[0];
    *(v45 + 16) = v44;
    *(v45 + 32) = v60;
    swift_storeEnumTagMultiPayload();
    return sub_21B1EB7F8(v45, v48);
  }
}

uint64_t DataSource.init(biomeIdentifier:useCase:tableName:schemaProvider:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = off_282CA2E18;
  v13 = _s23SchematizedTableFactoryCMa();
  v14 = swift_allocObject();
  *(v14 + 80) = v12;
  *(v14 + 88) = 0;
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 72) = a5;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = -1;
  v15 = a2;
  swift_retain_n();
  v16 = v15;
  v17 = a1;

  *&v36[0] = 0;
  v18 = [BiomeLibrary() streamWithIdentifier:v17 error:v36];
  swift_unknownObjectRelease();
  if (v18)
  {
    v19 = *&v36[0];

    *(v14 + 40) = v18;
    v34 = v13;
    v35 = &off_282CA38D0;

    *&v33 = v14;

    sub_21B17C284(&v33, v36);
    v20 = v36[1];
    *a6 = v36[0];
    *(a6 + 16) = v20;
    *(a6 + 32) = v37;
    type metadata accessor for DataSource.Container(0);
    result = swift_storeEnumTagMultiPayload();
    v22 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v23 = *&v36[0];
    sub_21B20C508();

    swift_willThrow();

    v24 = *(v14 + 32);

    sub_21B1BDE2C(*(v14 + 48), *(v14 + 56), *(v14 + 64));
    v25 = *(v14 + 72);

    swift_deallocPartialClassInstance();
    *&v36[0] = 0;
    *(&v36[0] + 1) = 0xE000000000000000;
    sub_21B20D6A8();
    MEMORY[0x21CEEBBB0](0xD00000000000001ELL, 0x800000021B210360);
    *&v33 = v17;
    type metadata accessor for BMStreamIdentifier(0);
    sub_21B20D768();
    MEMORY[0x21CEEBBB0](8250, 0xE200000000000000);
    ErrorValue = swift_getErrorValue();
    v27 = *(*(v32[1] - 8) + 64);
    MEMORY[0x28223BE20](ErrorValue);
    (*(v29 + 16))(v32 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    *&v33 = sub_21B20D358();
    *(&v33 + 1) = v30;
    v31 = sub_21B20D3C8();
    MEMORY[0x21CEEBBB0](v31);

    result = sub_21B20D7C8();
    __break(1u);
  }

  return result;
}

uint64_t DataSource.init(tableName:biomeIdentifier:useCase:schemaProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v13 = *(a6 + 8);
  v14 = _s23SchematizedTableFactoryCMa();
  v15 = swift_allocObject();
  *(v15 + 80) = v13;
  *(v15 + 88) = 0;
  *(v15 + 16) = a4;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 72) = a5;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = -1;
  v16 = a4;
  swift_retain_n();
  v17 = v16;
  v18 = a3;

  *&v37[0] = 0;
  v19 = [BiomeLibrary() streamWithIdentifier:v18 error:v37];
  swift_unknownObjectRelease();
  if (v19)
  {
    v20 = *&v37[0];

    *(v15 + 40) = v19;
    v35 = v14;
    v36 = &off_282CA38D0;

    *&v34 = v15;

    sub_21B17C284(&v34, v37);
    v21 = v37[1];
    *a7 = v37[0];
    *(a7 + 16) = v21;
    *(a7 + 32) = v38;
    type metadata accessor for DataSource.Container(0);
    result = swift_storeEnumTagMultiPayload();
    v23 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v24 = *&v37[0];
    sub_21B20C508();

    swift_willThrow();

    v25 = *(v15 + 32);

    sub_21B1BDE2C(*(v15 + 48), *(v15 + 56), *(v15 + 64));
    v26 = *(v15 + 72);

    swift_deallocPartialClassInstance();
    *&v37[0] = 0;
    *(&v37[0] + 1) = 0xE000000000000000;
    sub_21B20D6A8();
    MEMORY[0x21CEEBBB0](0xD00000000000001ELL, 0x800000021B210360);
    *&v34 = v18;
    type metadata accessor for BMStreamIdentifier(0);
    sub_21B20D768();
    MEMORY[0x21CEEBBB0](8250, 0xE200000000000000);
    ErrorValue = swift_getErrorValue();
    v28 = *(*(v33[1] - 8) + 64);
    MEMORY[0x28223BE20](ErrorValue);
    (*(v30 + 16))(v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    *&v34 = sub_21B20D358();
    *(&v34 + 1) = v31;
    v32 = sub_21B20D3C8();
    MEMORY[0x21CEEBBB0](v32);

    result = sub_21B20D7C8();
    __break(1u);
  }

  return result;
}

uint64_t DataSource.init(tableName:biomeStream:schemaProvider:publisherFactory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v13 = *a6;
  v14 = *(a6 + 8);
  v15 = *(a6 + 16);
  v16 = _s23SchematizedTableFactoryCMa();
  v17 = *a4;
  v23[0] = v13;
  v23[1] = v14;
  v24 = v15;
  v18 = *(a5 + 8);
  v19 = v17;
  v20 = a3;

  v21 = sub_21B1E94E4(v20, a1, a2, a4, v23, v16, v19, v18);
  a7[3] = v16;
  a7[4] = &off_282CA38D0;

  *a7 = v21;

  type metadata accessor for DataSource.Container(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DataSource.init(biomeIdentifier:storeConfig:tableName:schemaProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = _s19PrivateTableFactoryCMa();
  v13 = swift_allocObject();
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 80) = a5;
  *(v13 + 88) = &protocol witness table for BaseStreamSchemaProvider;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 48) = 0;
  *(v13 + 72) = -1;
  a6[3] = v12;
  a6[4] = &off_282CA38A0;
  *a6 = v13;
  type metadata accessor for DataSource.Container(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DataSource.init(tableName:biomeIdentifier:storeConfig:schemaProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = _s19PrivateTableFactoryCMa();
  v15 = *a5;
  v18 = 0uLL;
  v19 = -1;
  sub_21B1E905C(a1, a2, a3, a4, a5, &v18, v14, v15, *(a6 + 8));
  a7[3] = v14;
  a7[4] = &off_282CA38A0;
  *a7 = v16;
  type metadata accessor for DataSource.Container(0);

  return swift_storeEnumTagMultiPayload();
}

void DataSource.init(__biomeIdentifier:useCase:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DataSource.Container(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s12TableFactoryCMa_0();
  swift_allocObject();
  v12 = a2;
  v13 = a1;
  v14 = sub_21B1E9634(v13, a2);
  if (v3)
  {
  }

  else
  {
    v15 = v14;
    v18 = v11;
    v19 = &off_282CA3900;

    *&v17 = v15;
    sub_21B17C284(&v17, v20);
    v16 = v20[1];
    *v10 = v20[0];
    *(v10 + 1) = v16;
    *(v10 + 4) = v21;
    swift_storeEnumTagMultiPayload();
    sub_21B1EB7F8(v10, a3);
  }
}

uint64_t DataSource.init(customStreamTableName:provider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  sub_21B17C284(a3, (a4 + 2));
  type metadata accessor for DataSource.Container(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for AttachedDatabaseConfig()
{
  result = qword_27CD6FE08;
  if (!qword_27CD6FE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B1ED078()
{
  sub_21B20C678();
  if (v0 <= 0x3F)
  {
    sub_21B19AEC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t DatabaseConfig.cacheBudgedInMb.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t DatabaseConfig.manifest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DatabaseConfig() + 20);

  return sub_21B18C904(v3, a1);
}

uint64_t type metadata accessor for DatabaseConfig()
{
  result = qword_27CD6FE30;
  if (!qword_27CD6FE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B1ED1A8()
{
  if (*v0)
  {
    result = 0x74736566696E616DLL;
  }

  else
  {
    result = 0x6475426568636163;
  }

  *v0;
  return result;
}

uint64_t sub_21B1ED1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6475426568636163 && a2 == 0xEF624D6E49646567;
  if (v6 || (sub_21B20DB28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21B20DB28();

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

uint64_t sub_21B1ED2D4(uint64_t a1)
{
  v2 = sub_21B1ED6BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1ED310(uint64_t a1)
{
  v2 = sub_21B1ED6BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DatabaseConfig.init(cacheBudgedInMb:manifest:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2 & 1;
  v5 = a4 + *(type metadata accessor for DatabaseConfig() + 20);

  return sub_21B18C9D0(a3, v5);
}

uint64_t DatabaseConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v27 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FE18, &qword_21B217C78);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for DatabaseConfig();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1ED6BC();
  sub_21B20DCD8();
  if (v2)
  {
    v21 = a1;
  }

  else
  {
    v16 = a1;
    v25 = v11;
    v17 = v26;
    v18 = v27;
    v19 = v28;
    LOBYTE(v29) = 0;
    *v14 = sub_21B20D898();
    v14[8] = v20 & 1;
    v31 = 1;
    sub_21B17DCC8();
    sub_21B20D8B8();
    if (v30 >> 60 == 15)
    {
      (*(v17 + 8))(v10, v7);
      v23 = 1;
    }

    else
    {
      sub_21B20D048();
      (*(v17 + 8))(v10, v7);
      v23 = 0;
    }

    v24 = sub_21B20D0C8();
    (*(*(v24 - 8) + 56))(v18, v23, 1, v24);
    sub_21B18C9D0(v18, &v14[*(v25 + 20)]);
    sub_21B191DB4(v14, v19);
    v21 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

unint64_t sub_21B1ED6BC()
{
  result = qword_27CD6FE20;
  if (!qword_27CD6FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FE20);
  }

  return result;
}

uint64_t DatabaseConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FE28, &qword_21B217C80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1ED6BC();
  sub_21B20DD08();
  v15 = *v3;
  v16 = *(v3 + 8);
  LOBYTE(v24) = 0;
  sub_21B20D9C8();
  if (!v2)
  {
    v17 = type metadata accessor for DatabaseConfig();
    sub_21B18C904(v3 + *(v17 + 20), v8);
    v18 = sub_21B20D0C8();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v8, 1, v18) == 1)
    {
      sub_21B186488(v8, &qword_27CD6EC78, &unk_21B215AD0);
      v20 = 0;
      v21 = 0xF000000000000000;
    }

    else
    {
      v20 = sub_21B20D0B8();
      v21 = v22;
      (*(v19 + 8))(v8, v18);
    }

    v24 = v20;
    v25 = v21;
    v26 = 1;
    sub_21B17DBE4();
    sub_21B20D9D8();
    sub_21B17DAE4(v24, v25);
  }

  return (*(v10 + 8))(v13, v9);
}

BOOL _s12PoirotBlocks14DatabaseConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B20D0C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6ED18, &qword_21B219FB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  v17 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = *(type metadata accessor for DatabaseConfig() + 20);
  v19 = *(v13 + 48);
  sub_21B18C904(a1 + v18, v16);
  sub_21B18C904(a2 + v18, &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    sub_21B18C904(v16, v12);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v19], v4);
      sub_21B1EDF8C();
      v22 = sub_21B20D2A8();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_21B186488(v16, &qword_27CD6EC78, &unk_21B215AD0);
      return (v22 & 1) != 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_12:
    sub_21B186488(v16, &qword_27CD6ED18, &qword_21B219FB0);
    return 0;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_21B186488(v16, &qword_27CD6EC78, &unk_21B215AD0);
  return 1;
}

void sub_21B1EDD48()
{
  sub_21B1EDDCC();
  if (v0 <= 0x3F)
  {
    sub_21B1EDE1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21B1EDDCC()
{
  if (!qword_27CD6FE40)
  {
    v0 = sub_21B20D5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD6FE40);
    }
  }
}

void sub_21B1EDE1C()
{
  if (!qword_2811F9C38[0])
  {
    sub_21B20D0C8();
    v0 = sub_21B20D5D8();
    if (!v1)
    {
      atomic_store(v0, qword_2811F9C38);
    }
  }
}

unint64_t sub_21B1EDE88()
{
  result = qword_27CD6FE48;
  if (!qword_27CD6FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FE48);
  }

  return result;
}

unint64_t sub_21B1EDEE0()
{
  result = qword_27CD6FE50;
  if (!qword_27CD6FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FE50);
  }

  return result;
}

unint64_t sub_21B1EDF38()
{
  result = qword_27CD6FE58;
  if (!qword_27CD6FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FE58);
  }

  return result;
}

unint64_t sub_21B1EDF8C()
{
  result = qword_27CD6ED20;
  if (!qword_27CD6ED20)
  {
    sub_21B20D0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6ED20);
  }

  return result;
}

uint64_t DataSource.init(databaseAlias:url:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for AttachedDatabaseConfig();
  v9 = *(v8 + 20);
  v10 = sub_21B20C678();
  (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  sub_21B18FED8(a4, &a5[*(v8 + 24)]);
  type metadata accessor for DataSource.Container(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DataSource.init(tempTable:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DataSource.Container(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a3 + 16);
  if (v12)
  {
    v22 = a1;
    v23 = a2;
    v24 = a4;
    v25 = MEMORY[0x277D84F90];
    sub_21B19010C(0, v12, 0);
    v13 = 32;
    v14 = v25;
    do
    {
      v15 = *(a3 + v13);

      v17 = sub_21B1EE558(v16);

      v25 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_21B19010C((v18 > 1), v19 + 1, 1);
        v14 = v25;
      }

      *(v14 + 16) = v19 + 1;
      *(v14 + 8 * v19 + 32) = v17;
      v13 += 8;
      --v12;
    }

    while (v12);

    a2 = v23;
    a4 = v24;
    a1 = v22;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  *v11 = a1;
  v11[1] = a2;
  v11[2] = v14;
  swift_storeEnumTagMultiPayload();
  return sub_21B1EB7F8(v11, a4);
}

{
  v34 = a4;
  v7 = type metadata accessor for DataSource.Container(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B20CAA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x277D84F90];
  sub_21B20CAB8();
  v37 = a1;
  v38 = a2;
  v39 = a3;
  v16 = v35;
  v17 = sub_21B1C5AB4(sub_21B1D61D8, v36);
  if (v16)
  {
    (*(v12 + 8))(v15, v11);

    v18 = sub_21B20CAF8();
    return (*(*(v18 - 8) + 8))(a3, v18);
  }

  else
  {
    v31[1] = 0;
    v32 = v10;
    v33 = v7;
    v35 = a1;
    v20 = v17;
    (*(v12 + 8))(v15, v11);
    sub_21B1D1DA0(v20);
    v21 = v41;
    v22 = *(v41 + 16);
    if (v22)
    {
      v31[0] = a2;
      v40 = MEMORY[0x277D84F90];
      sub_21B19010C(0, v22, 0);
      v23 = 48;
      v24 = v40;
      v25 = a3;
      v26 = v32;
      do
      {
        v27 = *(v21 + v23);
        v40 = v24;
        v29 = *(v24 + 16);
        v28 = *(v24 + 24);

        if (v29 >= v28 >> 1)
        {
          sub_21B19010C((v28 > 1), v29 + 1, 1);
          v24 = v40;
        }

        *(v24 + 16) = v29 + 1;
        *(v24 + 8 * v29 + 32) = v27;
        v23 += 24;
        --v22;
      }

      while (v22);

      a2 = v31[0];
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
      v25 = a3;
      v26 = v32;
    }

    v30 = sub_21B20CAF8();
    (*(*(v30 - 8) + 8))(v25, v30);
    *v26 = v35;
    v26[1] = a2;
    v26[2] = v24;
    swift_storeEnumTagMultiPayload();
    return sub_21B1EB7F8(v26, v34);
  }
}

uint64_t sub_21B1EE558(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF48, &qword_21B2124F8);
  result = sub_21B20D7E8();
  v3 = result;
  v4 = 0;
  v31 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v27 = result + 64;
  v28 = result;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = 16 * v15;
      v17 = (*(v31 + 48) + 16 * v15);
      v19 = *v17;
      v18 = v17[1];
      v20 = 40 * v15;
      sub_21B1A37FC(*(v31 + 56) + 40 * v15, v30);
      sub_21B17FB4C(v30, v29);

      sub_21B1A3858(v30);
      v21 = (v15 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v22 = 1 << v15;
      v3 = v28;
      *(v27 + v21) |= v22;
      v23 = (v28[6] + v16);
      *v23 = v19;
      v23[1] = v18;
      result = sub_21B17C284(v29, v28[7] + v20);
      v24 = v28[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v28[2] = v26;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1EE760(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B1EE798()
{
  result = type metadata accessor for DataSource.Container(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21B1EE854()
{
  sub_21B1D4090(319, &qword_27CD6EEE8, 0x277CF1B50);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttachedDatabaseConfig();
    if (v1 <= 0x3F)
    {
      sub_21B1EE8FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_21B1EE8FC()
{
  if (!qword_27CD6FE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6FE88, "|o");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CD6FE80);
    }
  }
}

uint64_t sub_21B1EE974(uint64_t a1)
{
  v2 = type metadata accessor for DataSource(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x277D84FA0];
  v28 = MEMORY[0x277D84FA0];
  v7 = sub_21B1EEBF0(a1, &v28, &v27);

  v8 = v7[2];
  if (!v8)
  {

    return MEMORY[0x277D84F90];
  }

  v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v10 = *(v3 + 72);
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_21B1F0AF8(v9, v6, type metadata accessor for DataSource);
    v13 = sub_21B1EEEBC();
    result = sub_21B1F0BB4(v6, type metadata accessor for DataSource);
    v14 = *(v13 + 16);
    v15 = v11[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= v11[3] >> 1)
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
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v11 = sub_21B1D3178(isUniquelyReferenced_nonNull_native, v18, 1, v11);
      if (*(v13 + 16))
      {
LABEL_14:
        v19 = (v11[3] >> 1) - v11[2];
        result = type metadata accessor for DataSourceModel();
        v20 = *(result - 8);
        if (v19 < v14)
        {
          goto LABEL_23;
        }

        v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v22 = *(v20 + 72);
        swift_arrayInitWithCopy();

        if (v14)
        {
          v23 = v11[2];
          v24 = __OFADD__(v23, v14);
          v25 = v23 + v14;
          if (v24)
          {
            goto LABEL_24;
          }

          v11[2] = v25;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_22;
    }

LABEL_4:
    v9 += v10;
    if (!--v8)
    {

      return v11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_21B1EEBF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FE90, &unk_21B217E60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for DataSource(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v33 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v31 = &v27 - v16;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = *(v15 + 72);
  v28 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = a1 + v28;
  v32 = (v15 + 48);
  v20 = MEMORY[0x277D84F90];
  v29 = v11;
  v30 = a2;
  while (1)
  {
    sub_21B1EFA58(v19, a2, a3, v10);
    if (v3)
    {
      break;
    }

    if ((*v32)(v10, 1, v11) == 1)
    {
      sub_21B1F0C14(v10);
    }

    else
    {
      v21 = v31;
      sub_21B1F0C7C(v10, v31, type metadata accessor for DataSource);
      sub_21B1F0C7C(v21, v33, type metadata accessor for DataSource);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_21B1D3150(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v25 = sub_21B1D3150(v22 > 1, v23 + 1, 1, v20);
        v24 = v18;
        v20 = v25;
      }

      else
      {
        v24 = v18;
      }

      v20[2] = v23 + 1;
      v18 = v24;
      sub_21B1F0C7C(v33, v20 + v28 + v23 * v24, type metadata accessor for DataSource);
      v11 = v29;
      a2 = v30;
    }

    v19 += v18;
    if (!--v17)
    {
      return v20;
    }
  }

  return v20;
}

uint64_t sub_21B1EEEBC()
{
  v1 = sub_21B20C828();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v78 - v7;
  v9 = sub_21B20CA68();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DataSource.Container(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B1F0AF8(v0, v17, type metadata accessor for DataSource.Container);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21B1F0BB4(v17, type metadata accessor for DataSource.Container);
      return MEMORY[0x277D84F90];
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v19 = *(v17 + 1);
      v106 = *v17;
      v107 = v19;
      v108 = *(v17 + 2);
      v109 = *(v17 + 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAD0, &qword_21B216978);
      v20 = (type metadata accessor for DataSourceModel() - 8);
      v21 = *(*v20 + 72);
      v22 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21B2110C0;
      v24 = v23 + v22;
      v25 = v106;
      __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));

      sub_21B20C9C8();
      __swift_project_boxed_opaque_existential_1(v105, v105[3]);
      v26 = sub_21B20C9D8();
      __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
      sub_21B20C9C8();
      v27 = v104[4];
      __swift_project_boxed_opaque_existential_1(v104, v104[3]);
      v28 = *(v27 + 8);
      v29 = v23 + v22 + v20[10];
      sub_21B20C8F8();
      *v24 = v25;
      *(v24 + 16) = 0xD000000000000011;
      *(v24 + 24) = 0x800000021B2103A0;
      *(v24 + 32) = 3;
      *(v24 + 40) = v26;
      __swift_destroy_boxed_opaque_existential_1(v104);
      __swift_destroy_boxed_opaque_existential_1(v105);
      sub_21B1F0B60(&v106);
    }

    else
    {
      v53 = *v17;
      v54 = *(v17 + 1);
      v55 = *(v17 + 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAD0, &qword_21B216978);
      v56 = (type metadata accessor for DataSourceModel() - 8);
      v57 = *(*v56 + 72);
      v58 = (*(*v56 + 80) + 32) & ~*(*v56 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21B2110C0;
      v59 = v23 + v58;
      v60 = sub_21B20D458();

      v61 = v56[10];
      v62 = sub_21B20D0C8();
      (*(*(v62 - 8) + 56))(v59 + v61, 1, 1, v62);
      *v59 = v53;
      *(v59 + 8) = v54;
      *(v59 + 16) = 0x7261726F706D6554;
      *(v59 + 24) = 0xEF656C6261542079;
      *(v59 + 32) = 4;
      *(v59 + 40) = v60;
    }

    return v23;
  }

  v103 = v13;
  if (EnumCaseMultiPayload)
  {
    v63 = *(v17 + 1);
    v106 = *v17;
    v107 = v63;
    *&v108 = *(v17 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAD0, &qword_21B216978);
    v64 = *(type metadata accessor for DataSourceModel() - 8);
    v65 = *(v64 + 72);
    v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_21B2110C0;
    v67 = *(&v107 + 1);
    v68 = v108;
    __swift_project_boxed_opaque_existential_1(&v106, *(&v107 + 1));
    (*(v68 + 40))(v67, v68);
    sub_21B192ABC(&v106);
    return v23;
  }

  v102 = v8;
  v30 = *v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FAD0, &qword_21B216978);
  v85 = type metadata accessor for DataSourceModel();
  v31 = *(*(v85 - 8) + 72);
  v84 = (*(*(v85 - 8) + 80) + 32) & ~*(*(v85 - 8) + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21B2110C0;
  v32 = [v30 schema];
  v33 = [v32 tableName];

  v83 = sub_21B20D2F8();
  v82 = v34;

  v35 = [v30 description];
  v81 = sub_21B20D2F8();
  v80 = v36;

  v86 = v30;
  v37 = [v30 schema];
  v38 = [v37 columns];

  sub_21B1D4090(0, qword_27CD6F6D8, 0x277CF1A80);
  v39 = sub_21B20D448();

  if (v39 >> 62)
  {
    goto LABEL_34;
  }

  v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
LABEL_35:

    v42 = MEMORY[0x277D84F90];
LABEL_36:
    v69 = v86;
    v70 = v83;
    v71 = v82;
    v72 = v81;
    v73 = v80;
    v74 = v23 + v84;
    v75 = *(v85 + 32);
    v76 = sub_21B20D0C8();
    (*(*(v76 - 8) + 56))(v74 + v75, 1, 1, v76);
    *v74 = v70;
    *(v74 + 8) = v71;
    *(v74 + 16) = v72;
    *(v74 + 24) = v73;
    *(v74 + 32) = 3;
    *(v74 + 40) = v42;

    return v23;
  }

  while (1)
  {
    v41 = v39;
    v99 = v6;
    v100 = v1;
    v79 = v23;
    *&v106 = MEMORY[0x277D84F90];
    sub_21B18FFC4(0, v40 & ~(v40 >> 63), 0);
    v98 = v40;
    if (v40 < 0)
    {
      break;
    }

    v39 = 0;
    v42 = v106;
    v43 = v41;
    v101 = v41 & 0xC000000000000001;
    v90 = v41 & 0xFFFFFFFFFFFFFF8;
    v89 = *MEMORY[0x277D3E5B8];
    v94 = (v2 + 104);
    v92 = *MEMORY[0x277D3E5C8];
    v88 = *MEMORY[0x277D3E608];
    v87 = *MEMORY[0x277D3E5E8];
    v6 = (v2 + 32);
    v91 = *MEMORY[0x277D3E5E0];
    v93 = v10 + 32;
    v97 = v9;
    v96 = v10;
    v95 = v41;
    while (1)
    {
      v23 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v101)
      {
        v44 = MEMORY[0x21CEEBED0](v39, v43);
      }

      else
      {
        if (v39 >= *(v90 + 16))
        {
          goto LABEL_33;
        }

        v44 = *(v43 + 8 * v39 + 32);
      }

      v45 = v44;
      v46 = [v44 name];
      sub_21B20D2F8();
      v2 = v47;

      v48 = [v45 dataType];
      if (v48 <= 2)
      {
        v49 = v91;
        if (v48)
        {
          v49 = v87;
          if (v48 != 1)
          {
            v49 = v92;
            if (v48 != 2)
            {
              goto LABEL_39;
            }
          }
        }
      }

      else if (v48 > 4)
      {
        v49 = v92;
        if (v48 != 5)
        {
          v49 = v89;
          if (v48 != 6)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        v49 = v88;
        if (v48 != 3)
        {
          v49 = v89;
        }
      }

      v50 = v99;
      v51 = v100;
      (*v94)(v99, v49, v100);
      v1 = v102;
      (*v6)(v102, v50, v51);
      [v45 requestOnly];
      v9 = v103;
      sub_21B20CA28();

      *&v106 = v42;
      v10 = *(v42 + 16);
      v52 = *(v42 + 24);
      if (v10 >= v52 >> 1)
      {
        sub_21B18FFC4(v52 > 1, v10 + 1, 1);
        v42 = v106;
      }

      *(v42 + 16) = v10 + 1;
      (*(v96 + 32))(v42 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v10, v9, v97);
      ++v39;
      v43 = v95;
      if (v23 == v98)
      {

        v23 = v79;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v40 = sub_21B20D7D8();
    if (!v40)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_39:
  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

void sub_21B1EFA58(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for AttachedDatabaseConfig();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for DataSourceModel();
  v13 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DataSource.Container(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1;
  sub_21B1F0AF8(a1, v19, type metadata accessor for DataSource.Container);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v30 = a4;
    if (EnumCaseMultiPayload)
    {
      v47 = *(v19 + 1);
      v80 = *v19;
      v81 = v47;
      v48 = *(v19 + 4);
      *&v82 = v48;
      v49 = *a2;
      v50 = *(&v47 + 1);
      __swift_project_boxed_opaque_existential_1(&v80, *(&v47 + 1));
      v51 = *(v48 + 40);

      v51(v50, v48);
      v52 = *v15;
      v53 = *(v15 + 1);

      sub_21B1F0BB4(v15, type metadata accessor for DataSourceModel);
      LOBYTE(v52) = sub_21B1F4284(v52, v53, v49);

      if (v52)
      {
        sub_21B192ABC(&v80);
        v54 = type metadata accessor for DataSource(0);
        (*(*(v54 - 8) + 56))(v30, 1, 1, v54);
        return;
      }

      v64 = *(&v81 + 1);
      v65 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
      (*(v65 + 40))(v64, v65);
      v66 = *v15;
      v67 = *(v15 + 1);

      sub_21B1F0BB4(v15, type metadata accessor for DataSourceModel);
      sub_21B1B9C24(&v78, v66, v67);

      sub_21B192ABC(&v80);
    }

    else
    {
      v73 = v4;
      v31 = *v19;
      v32 = *a2;

      v33 = [v31 schema];
      v34 = [v33 tableName];

      v35 = sub_21B20D2F8();
      v37 = v36;

      LOBYTE(v34) = sub_21B1F4284(v35, v37, v32);

      if (v34)
      {
        v38 = type metadata accessor for DataSource(0);
        (*(*(v38 - 8) + 56))(v30, 1, 1, v38);

        return;
      }

      v59 = [v31 schema];
      v60 = [v59 tableName];

      v61 = sub_21B20D2F8();
      v63 = v62;

      sub_21B1B9C24(&v80, v61, v63);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v30 = a4;
    sub_21B1F0C7C(v19, v12, type metadata accessor for AttachedDatabaseConfig);
    v39 = *a3;
    v40 = *v12;
    v41 = v12[1];

    v42 = sub_21B1F4284(v40, v41, v39);

    if (v42)
    {
      sub_21B1F0BB4(v12, type metadata accessor for AttachedDatabaseConfig);
      v43 = type metadata accessor for DataSource(0);
      (*(*(v43 - 8) + 56))(v30, 1, 1, v43);
      return;
    }

    sub_21B1B9C24(&v80, v40, v41);

    sub_21B1F0BB4(v12, type metadata accessor for AttachedDatabaseConfig);
  }

  else
  {
    v72 = a4;
    if (EnumCaseMultiPayload == 3)
    {
      v73 = v4;
      v21 = *(v19 + 2);
      v81 = *(v19 + 1);
      v82 = v21;
      v80 = *v19;
      v83 = *(v19 + 6);
      v71 = a2;
      v22 = *a2;
      v23 = v80;
      __swift_project_boxed_opaque_existential_1(&v81, *(&v21 + 1));

      sub_21B20C9C8();
      __swift_project_boxed_opaque_existential_1(&v78, v79);
      v24 = sub_21B20C9D8();
      __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
      sub_21B20C9C8();
      v25 = v77;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      v26 = v74;
      v27 = *(v25 + 8);
      v28 = &v15[*(v74 + 32)];
      sub_21B20C8F8();
      *v15 = v23;
      *(v15 + 2) = 0xD000000000000011;
      *(v15 + 3) = 0x800000021B2103A0;
      v70 = 0x800000021B2103A0;
      v15[32] = 3;
      *(v15 + 5) = v24;

      __swift_destroy_boxed_opaque_existential_1(v75);
      __swift_destroy_boxed_opaque_existential_1(&v78);
      sub_21B1F0BB4(v15, type metadata accessor for DataSourceModel);
      LOBYTE(v25) = sub_21B1F4284(v23, *(&v23 + 1), v22);

      if (v25)
      {
        sub_21B1F0B60(&v80);
        v29 = type metadata accessor for DataSource(0);
        (*(*(v29 - 8) + 56))(v72, 1, 1, v29);
        return;
      }

      __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));

      sub_21B20C9C8();
      __swift_project_boxed_opaque_existential_1(&v78, v79);
      v55 = sub_21B20C9D8();
      __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
      sub_21B20C9C8();
      v56 = v77;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      v57 = *(v56 + 8);
      v58 = &v15[*(v26 + 32)];
      sub_21B20C8F8();
      *v15 = v23;
      *(v15 + 2) = 0xD000000000000011;
      *(v15 + 3) = v70;
      v15[32] = 3;
      *(v15 + 5) = v55;

      __swift_destroy_boxed_opaque_existential_1(v75);
      __swift_destroy_boxed_opaque_existential_1(&v78);
      sub_21B1F0BB4(v15, type metadata accessor for DataSourceModel);
      sub_21B1B9C24(&v78, v23, *(&v23 + 1));

      sub_21B1F0B60(&v80);
    }

    else
    {
      v45 = *v19;
      v44 = *(v19 + 1);
      v46 = *(v19 + 2);

      sub_21B1B9C24(&v80, v45, v44);
    }

    v30 = v72;
  }

  sub_21B1F0AF8(v84, v30, type metadata accessor for DataSource);
  v68 = type metadata accessor for DataSource(0);
  (*(*(v68 - 8) + 56))(v30, 0, 1, v68);
}

uint64_t sub_21B1F02E4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for AttachedDatabaseConfig();
  v75 = *(v3 - 8);
  v4 = *(v75 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v69 - v8;
  v10 = type metadata accessor for DataSource.Container(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DataSource(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v88 = MEMORY[0x277D84FA0];
  *&v84 = MEMORY[0x277D84FA0];
  v19 = sub_21B1EEBF0(a1, &v88, &v84);

  v20 = MEMORY[0x277D84F90];
  v78 = sub_21B197F34(MEMORY[0x277D84F90]);
  v92 = v20;
  v83 = v19[2];
  if (!v83)
  {

    v64 = MEMORY[0x277D84F90];
    v65 = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D84F90];
    v67 = MEMORY[0x277D84F90];
LABEL_43:
    v68 = v70;
    *v70 = v66;
    v68[1] = v65;
    v68[2] = v64;
    v68[3] = v67;
    v68[4] = v78;
    return result;
  }

  v21 = 0;
  v82 = v19 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v79 = MEMORY[0x277D84F90];
  v80 = MEMORY[0x277D84F90];
  v81 = MEMORY[0x277D84F90];
  v76 = MEMORY[0x277D84F90];
  v77 = v19;
  v74 = v9;
  v73 = v10;
  v72 = v15;
  v71 = v7;
  while (v21 < v19[2])
  {
    sub_21B1F0AF8(&v82[*(v15 + 72) * v21], v18, type metadata accessor for DataSource);
    sub_21B1F0AF8(v18, v13, type metadata accessor for DataSource.Container);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v50 = *(v13 + 1);
        v88 = *v13;
        v89 = v50;
        *&v90 = *(v13 + 4);
        sub_21B192A60(&v88, &v84);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_21B1D37D8(0, *(v79 + 2) + 1, 1, v79);
        }

        v52 = *(v79 + 2);
        v51 = *(v79 + 3);
        if (v52 >= v51 >> 1)
        {
          v79 = sub_21B1D37D8((v51 > 1), v52 + 1, 1, v79);
        }

        sub_21B192ABC(&v88);
        sub_21B1F0BB4(v18, type metadata accessor for DataSource);
        v53 = v79;
        *(v79 + 2) = v52 + 1;
        v54 = &v53[40 * v52];
        v55 = v86;
        v56 = v85;
        *(v54 + 2) = v84;
        *(v54 + 3) = v56;
        *(v54 + 8) = v55;
        goto LABEL_6;
      }

      v33 = *v13;
      MEMORY[0x21CEEBC40]();
      if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v62 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21B20D478();
      }

      sub_21B20D498();

      sub_21B1F0BB4(v18, type metadata accessor for DataSource);
      v76 = v92;
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_21B1F0C7C(v13, v9, type metadata accessor for AttachedDatabaseConfig);
      sub_21B1F0AF8(v9, v7, type metadata accessor for AttachedDatabaseConfig);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_21B1D34AC(0, v80[2] + 1, 1, v80);
      }

      v35 = v80[2];
      v34 = v80[3];
      if (v35 >= v34 >> 1)
      {
        v80 = sub_21B1D34AC(v34 > 1, v35 + 1, 1, v80);
      }

      sub_21B1F0BB4(v9, type metadata accessor for AttachedDatabaseConfig);
      sub_21B1F0BB4(v18, type metadata accessor for DataSource);
      v36 = v80;
      v80[2] = v35 + 1;
      sub_21B1F0C7C(v7, v36 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v35, type metadata accessor for AttachedDatabaseConfig);
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v25 = *(v13 + 1);
      v88 = *v13;
      v89 = v25;
      v90 = *(v13 + 2);
      v91 = *(v13 + 6);
      sub_21B1F0CE4(&v88, &v84);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_21B1D36B0(0, *(v81 + 2) + 1, 1, v81);
      }

      v27 = *(v81 + 2);
      v26 = *(v81 + 3);
      if (v27 >= v26 >> 1)
      {
        v81 = sub_21B1D36B0((v26 > 1), v27 + 1, 1, v81);
      }

      sub_21B1F0B60(&v88);
      sub_21B1F0BB4(v18, type metadata accessor for DataSource);
      v28 = v81;
      *(v81 + 2) = v27 + 1;
      v29 = &v28[56 * v27];
      v30 = v86;
      v31 = v84;
      v32 = v85;
      *(v29 + 10) = v87;
      *(v29 + 3) = v32;
      *(v29 + 4) = v30;
      *(v29 + 2) = v31;
      goto LABEL_6;
    }

    v38 = *v13;
    v37 = *(v13 + 1);
    v39 = *(v13 + 2);
    v40 = v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v88 = v40;
    v43 = sub_21B1B9778(v38, v37);
    v44 = *(v40 + 16);
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_45;
    }

    v47 = v42;
    if (*(v40 + 24) >= v46)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v42 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_21B2037B8();
        if ((v47 & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      sub_21B200DC4(v46, isUniquelyReferenced_nonNull_native);
      v48 = sub_21B1B9778(v38, v37);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_47;
      }

      v43 = v48;
      if ((v47 & 1) == 0)
      {
LABEL_37:
        v57 = v88;
        *(v88 + 8 * (v43 >> 6) + 64) |= 1 << v43;
        v58 = (v57[6] + 16 * v43);
        *v58 = v38;
        v58[1] = v37;
        *(v57[7] + 8 * v43) = v39;
        sub_21B1F0BB4(v18, type metadata accessor for DataSource);
        v59 = v57[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_46;
        }

        v78 = v57;
        v57[2] = v61;
        goto LABEL_4;
      }
    }

    v78 = v88;
    v22 = *(v88 + 56);
    v23 = *(v22 + 8 * v43);
    *(v22 + 8 * v43) = v39;

    sub_21B1F0BB4(v18, type metadata accessor for DataSource);
LABEL_4:
    v7 = v71;
    v9 = v74;
    v15 = v72;
LABEL_5:
    v19 = v77;
LABEL_6:
    if (v83 == ++v21)
    {

      v65 = v80;
      v64 = v81;
      v66 = v79;
      v67 = v76;
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

uint64_t sub_21B1F0AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B1F0BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21B1F0C14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FE90, &unk_21B217E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B1F0C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DefaultHostEnvironment.ensureTimeWindow()()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    sub_21B188B28();
    swift_allocError();
    *v1 = 0xD00000000000003ALL;
    v1[1] = 0x800000021B20EEB0;
    swift_willThrow();
  }
}

uint64_t DefaultHostEnvironment.nextStartTime.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_21B1F0E18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig);
  if (*v3)
  {
    v4 = v3[1];
    v5 = *v3;
    ObjectType = swift_getObjectType();
    result = (*(v4 + 8))(ObjectType, v4);
  }

  else
  {
    result = 0;
    v8 = 1;
  }

  *a2 = result;
  *(a2 + 8) = v8 & 1;
  return result;
}

uint64_t sub_21B1F0E94(uint64_t result, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig);
  if (*v2)
  {
    v3 = v2[1];
    v4 = *(result + 8);
    v5 = *result;
    v6 = *v2;
    ObjectType = swift_getObjectType();
    return (*(v3 + 16))(v5, v4, ObjectType, v3);
  }

  return result;
}

uint64_t DefaultHostEnvironment.nextStartTime.setter(uint64_t result, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
    v6 = *(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig);
    ObjectType = swift_getObjectType();
    return (*(v5 + 16))(v4, a2 & 1, ObjectType, v5);
  }

  return result;
}

uint64_t (*DefaultHostEnvironment.nextStartTime.modify(uint64_t a1))(uint64_t *a1)
{
  v3 = v1 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig;
  v4 = *(v1 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig);
  *(a1 + 16) = v4;
  if (v4)
  {
    v5 = *(v3 + 8);
    *(a1 + 24) = v5;
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 8))(ObjectType, v5);
    v9 = sub_21B1F1034;
  }

  else
  {
    v7 = 0;
    v8 = 1;
    v9 = nullsub_2;
  }

  *a1 = v7;
  *(a1 + 8) = v8 & 1;
  return v9;
}

uint64_t sub_21B1F1034(uint64_t *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = *(a1 + 8);
  v4 = *a1;
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(v4, v3, ObjectType, v1);
}

double DefaultHostEnvironment.cutoffTime.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    return 0.0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 32))(ObjectType, v1);
  return result;
}

uint64_t DefaultHostEnvironment.ignoreMaximumLookbackTime.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1) & 1;
}

unint64_t DefaultHostEnvironment.supportedQueryParameters.getter()
{
  if (*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig + 8);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 8);
    swift_unknownObjectRetain();
    v4 = v3(ObjectType, v1);
    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];

    return sub_21B197668(v6);
  }
}

uint64_t DefaultHostEnvironment.getQueryParametersForBlock(withName:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig))
  {
    v5 = *(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();
    v7(a1, a2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_21B19ABA8();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0;
    return swift_willThrow();
  }
}

uint64_t sub_21B1F1310()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig);
  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig);

  return swift_unknownObjectRelease();
}

uint64_t DefaultHostEnvironment.deinit()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL;
  v2 = sub_21B20C678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21B1972F0(v0 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType);
  v3 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t DefaultHostEnvironment.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL;
  v2 = sub_21B20C678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21B1972F0(v0 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType);
  v3 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig);

  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig);

  swift_unknownObjectRelease();
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_21B1F14D4()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_21B1F1538(uint64_t result, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
    v6 = *(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig);
    ObjectType = swift_getObjectType();
    return (*(v5 + 16))(v4, a2 & 1, ObjectType, v5);
  }

  return result;
}

void (*sub_21B1F15B4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = DefaultHostEnvironment.nextStartTime.modify(v2);
  return sub_21B1F1624;
}

void sub_21B1F1624(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double sub_21B1F166C()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    return 0.0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 32))(ObjectType, v1);
  return result;
}

uint64_t sub_21B1F16C8()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1) & 1;
}

void sub_21B1F1728()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    sub_21B188B28();
    swift_allocError();
    *v1 = 0xD00000000000003ALL;
    v1[1] = 0x800000021B20EEB0;
    swift_willThrow();
  }
}

unint64_t sub_21B1F179C()
{
  if (*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig + 8);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 8);
    swift_unknownObjectRetain();
    v4 = v3(ObjectType, v1);
    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];

    return sub_21B197668(v6);
  }
}

uint64_t sub_21B1F184C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig))
  {
    v5 = *(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();
    v7(a1, a2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_21B19ABA8();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0;
    return swift_willThrow();
  }
}

uint64_t type metadata accessor for DefaultHostEnvironment()
{
  result = qword_27CD6FE98;
  if (!qword_27CD6FE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NamedQueryParameters.supportedQueryParameters.getter()
{
  v1 = type metadata accessor for DatasetColumnType();
  v61 = *(v1 - 8);
  v2 = *(v61 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v60 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF40, &qword_21B2124F0);
  result = sub_21B20D7E8();
  v6 = 0;
  v7 = 0;
  v8 = *(v4 + 64);
  v48 = v4 + 64;
  v52 = v4;
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v8;
  v12 = (v9 + 63) >> 6;
  v50 = result + 64;
  v51 = result;
  v49 = v12;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v53 = (v11 - 1) & v11;
LABEL_11:
      v54 = v6;
      v16 = v13 | (v6 << 6);
      v17 = *(v52 + 56);
      v18 = (*(v52 + 48) + 16 * v16);
      v19 = v18[1];
      v58 = *v18;
      v59 = v16;
      v20 = *(v17 + 8 * v16);
      v57 = v19;

      v56 = v20;
      v22 = sub_21B1DFBE8(v21);
      v55 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F0E8, &unk_21B2130B0);
      result = sub_21B20D7E8();
      v23 = result;
      v24 = 0;
      v26 = v22 + 64;
      v25 = *(v22 + 64);
      v63 = result;
      v64 = v22;
      v27 = 1 << *(v22 + 32);
      v28 = v27 < 64 ? ~(-1 << v27) : -1;
      v29 = v28 & v25;
      v30 = (v27 + 63) >> 6;
      v62 = result + 64;
      if ((v28 & v25) != 0)
      {
        break;
      }

LABEL_16:
      v32 = v24;
      while (1)
      {
        v24 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v24 >= v30)
        {
          break;
        }

        v33 = *(v26 + 8 * v24);
        ++v32;
        if (v33)
        {
          v31 = __clz(__rbit64(v33));
          v29 = (v33 - 1) & v33;
          goto LABEL_21;
        }
      }

      v43 = v59;
      *(v50 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
      result = v51;
      v44 = (*(v51 + 48) + 16 * v43);
      v45 = v57;
      *v44 = v58;
      v44[1] = v45;
      *(*(result + 56) + 8 * v43) = v23;
      v46 = *(result + 16);
      v41 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v41)
      {
        goto LABEL_31;
      }

      *(result + 16) = v47;
      v7 = v55;
      v6 = v54;
      v12 = v49;
      v11 = v53;
      if (!v53)
      {
        goto LABEL_6;
      }
    }

    while (1)
    {
      v31 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
LABEL_21:
      v34 = v31 | (v24 << 6);
      v35 = *(v64 + 56);
      v36 = (*(v64 + 48) + 16 * v34);
      v37 = v36[1];
      v65 = *v36;
      sub_21B1A37FC(v35 + 40 * v34, v67);
      sub_21B17FB4C(v67, v66);
      __swift_project_boxed_opaque_existential_1(v66, v66[3]);
      swift_getDynamicType();

      __swift_destroy_boxed_opaque_existential_1(v66);
      v38 = v60;
      sub_21B20CDD8();
      sub_21B1A3858(v67);
      v23 = v63;
      *(v62 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v39 = (v23[6] + 16 * v34);
      *v39 = v65;
      v39[1] = v37;
      result = sub_21B1B6CF0(v38, v23[7] + *(v61 + 72) * v34);
      v40 = v23[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        break;
      }

      v23[2] = v42;
      if (!v29)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_6:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v12)
      {
        return result;
      }

      v15 = *(v48 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v53 = (v15 - 1) & v15;
        goto LABEL_11;
      }
    }

LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t NamedQueryParameters.__allocating_init(dictionaryLiteral:)(uint64_t a1)
{
  v2 = swift_allocObject();
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEA8, &qword_21B217EE0);
    v3 = sub_21B20D808();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;

  sub_21B1F2190(v4, 1, &v6);

  *(v2 + 16) = v6;
  return v2;
}

uint64_t NamedQueryParameters.init(dictionaryLiteral:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEA8, &qword_21B217EE0);
    v2 = sub_21B20D808();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v5 = v2;

  sub_21B1F2190(v3, 1, &v5);
  *(v1 + 16) = v5;

  return v1;
}

uint64_t NamedQueryParameters.getQueryParametersForBlock(withName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + 16);
  if (*(v7 + 16) && (v8 = sub_21B1B9778(a1, a2), (v9 & 1) != 0))
  {
    *a3 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    sub_21B19ABA8();
    swift_allocError();
    *v10 = a1;
    v10[1] = a2;
    swift_willThrow();
  }
}

uint64_t NamedQueryParameters.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t NamedQueryParameters.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21B1F20B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEA8, &qword_21B217EE0);
    v5 = sub_21B20D808();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  sub_21B1F2190(v6, 1, &v8);
  *(v4 + 16) = v8;

  *a2 = v4;
  return result;
}

void sub_21B1F2190(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[4];

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_21B1B9778(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_21B20235C(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_21B1B9778(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_21B20DBF8();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v10;
  sub_21B20435C();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  *(v22[7] + 8 * v10) = v6;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_21B20D6A8();
    MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
    sub_21B20D768();
    MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
    sub_21B20D7C8();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v5 - 2);

      if (!v7)
      {
        goto LABEL_23;
      }

      v27 = *a3;
      v28 = sub_21B1B9778(v8, v7);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_21B20235C(v32, 1);
        v33 = *a3;
        v28 = sub_21B1B9778(v8, v7);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v8;
      v36[1] = v7;
      *(v35[7] + 8 * v28) = v6;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_21B1F257C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = v5 - 1;
    v8 = (a3 + 64);
    do
    {
      v9 = v7;
      v11 = *(v8 - 1);
      v10 = *v8;
      v12 = *(v8 - 16);
      v13 = *(v8 - 3);
      v16[0] = *(v8 - 4);
      v16[1] = v13;
      v17 = v12;
      v18 = v11;
      v19 = v10;

      sub_21B17CE94(v11, v10);
      v6(v16);
      v14 = v18;
      v15 = v19;

      result = sub_21B17DAE4(v14, v15);
      if (v4)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 5;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_21B1F2640(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_21B1F26D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_21B1F2768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  v9 = a4[2];
  v8 = a4[3];
  ObjectType = swift_getObjectType();
  v11 = (*(a2 + 8))(ObjectType, a2);
  if (!v4)
  {
    v12 = v6;
    v13 = v7;
    v14 = v9;
    v15 = v8;
    v16 = v11;

    sub_21B1F28FC();
    sub_21B1F4180(&v12);
  }
}

uint64_t sub_21B1F28FC()
{
  v1 = sub_21B20D348();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v41 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21B20C368();
  v43 = *(v4 - 8);
  v5 = v43;
  v44 = v4;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *v0;
  v8 = v0[1];
  v42 = v0;
  v49 = v7;
  v50 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v10 = swift_allocObject();
  v47 = xmmword_21B2110C0;
  *(v10 + 16) = xmmword_21B2110C0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 32) = 0xD000000000000022;
  *(v10 + 40) = 0x800000021B2105B0;
  sub_21B1F41D4(&v49, v48);
  v12 = sub_21B1F38BC();
  sub_21B20DC58();

  v45 = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = v47;
  *(v13 + 56) = v11;
  *(v13 + 32) = 0xD00000000000001BLL;
  *(v13 + 40) = 0x800000021B2105E0;
  v53 = v12;
  sub_21B20DC58();

  v14 = sub_21B20C3A8();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_21B20C398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBD0, &unk_21B2197F0);
  v17 = *(v5 + 72);
  v18 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21B211420;
  sub_21B20C358();
  sub_21B20C348();
  *&v48[0] = v19;
  sub_21B1F3910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBE0, &qword_21B217FE0);
  sub_21B1865AC();
  sub_21B20D638();
  sub_21B20C378();
  v48[0] = v49;
  v48[1] = v50;
  sub_21B1F4230();
  v20 = v46;
  v21 = sub_21B20C388();
  if (v20)
  {

    v23 = swift_allocObject();
    *(v23 + 16) = v47;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 32) = 0xD000000000000020;
LABEL_10:
    *(v23 + 40) = 0x800000021B210600;
    sub_21B20DC58();
  }

  v24 = v42;
  v25 = v21;
  v26 = v22;

  sub_21B20D338();
  v46 = v25;
  v44 = v26;
  v27 = sub_21B20D318();
  if (v28)
  {
    v29 = v27;
    v30 = v28;
    v31 = *(v24 + 4);
    v32 = swift_allocObject();
    *(v32 + 16) = v47;
    v33 = MEMORY[0x277D837D0];
    *(v32 + 56) = MEMORY[0x277D837D0];
    *(v32 + 32) = v29;
    *(v32 + 40) = v30;
    sub_21B20DC58();

    v34 = swift_allocObject();
    *(v34 + 16) = v47;
    *(v34 + 56) = v33;
    *(v34 + 32) = 0xD000000000000019;
    *(v34 + 40) = 0x800000021B210650;
    sub_21B20DC58();

    v35 = *(v31 + 16);
    if (v35)
    {
      v36 = (v31 + 32);
      v37 = v44;
      do
      {
        v38 = *v36;
        v39 = v36[1];
        v52 = *(v36 + 4);
        v51[0] = v38;
        v51[1] = v39;
        sub_21B1F3F70(v51, v48);
        sub_21B1F3A40(v51);
        sub_21B1F3FCC(v51);
        v36 = (v36 + 40);
        --v35;
      }

      while (v35);
    }

    else
    {
      v37 = v44;
    }

    sub_21B17DAF8(v46, v37);
    v23 = swift_allocObject();
    *(v23 + 16) = v47;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 32) = 0xD000000000000020;
    goto LABEL_10;
  }

  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

void sub_21B1F2F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = a4[1];
  v8 = a4[2];
  v9 = a4[3];
  v10 = a4[4];
  ObjectType = swift_getObjectType();
  v12 = (*(a2 + 8))(ObjectType, a2);
  if (!v4)
  {
    v13[0] = v6;
    v13[1] = v7;
    v13[2] = v8;
    v13[3] = v9;
    v13[4] = v10;
    v13[5] = v12;
    sub_21B1F3760(v6, v7);
    sub_21B1F30A8();
    sub_21B1F37A4(v13);
  }
}

uint64_t sub_21B1F30A8()
{
  v1 = sub_21B20D348();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v42 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21B20C368();
  v43 = *(v44 - 8);
  v4 = v43;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v44);
  v6 = v0[1];
  v49 = *v0;
  v50 = v6;
  v41 = v0;
  v51 = *(v0 + 4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v8 = swift_allocObject();
  v46 = xmmword_21B2110C0;
  *(v8 + 16) = xmmword_21B2110C0;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 32) = 0xD000000000000019;
  *(v8 + 40) = 0x800000021B2104D0;
  sub_21B1F384C(&v49, v47);
  v10 = sub_21B1F38BC();
  sub_21B20DC58();

  v54 = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = v46;
  *(v11 + 56) = v9;
  *(v11 + 32) = 0xD00000000000001CLL;
  *(v11 + 40) = 0x800000021B2104F0;
  sub_21B20DC58();

  v12 = sub_21B20C3A8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_21B20C398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBD0, &unk_21B2197F0);
  v15 = *(v4 + 72);
  v16 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21B211420;
  sub_21B20C358();
  sub_21B20C348();
  *&v47[0] = v17;
  sub_21B1F3910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBE0, &qword_21B217FE0);
  sub_21B1865AC();
  sub_21B20D638();
  sub_21B20C378();
  v47[0] = v49;
  v47[1] = v50;
  v48 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEB8, &unk_21B217FD0);
  sub_21B1F3968();
  v18 = v45;
  v19 = sub_21B20C388();
  if (v18)
  {
    sub_21B198098(*&v47[0], *(&v47[0] + 1));

    v21 = swift_allocObject();
    *(v21 + 16) = v46;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 32) = 0xD000000000000017;
    *(v21 + 40) = 0x800000021B210510;
LABEL_10:
    sub_21B20DC58();
  }

  v22 = v41;
  v45 = v10;
  v23 = v19;
  v24 = v20;
  sub_21B198098(*&v47[0], *(&v47[0] + 1));
  sub_21B20D338();
  v44 = v23;
  v43 = v24;
  v25 = sub_21B20D318();
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    v29 = *(v22 + 5);
    v30 = swift_allocObject();
    *(v30 + 16) = v46;
    v31 = MEMORY[0x277D837D0];
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 32) = v27;
    *(v30 + 40) = v28;
    sub_21B20DC58();

    v32 = swift_allocObject();
    *(v32 + 16) = v46;
    *(v32 + 56) = v31;
    *(v32 + 32) = 0xD00000000000001ALL;
    *(v32 + 40) = 0x800000021B210570;
    sub_21B20DC58();

    v33 = *(v29 + 16);
    if (v33)
    {
      v34 = (v29 + 32);
      v35 = v44;
      do
      {
        v36 = *v34;
        v37 = v34[1];
        v53 = *(v34 + 4);
        v52[0] = v36;
        v52[1] = v37;
        sub_21B1F3F70(v52, v47);
        sub_21B1F3A40(v52);
        sub_21B1F3FCC(v52);
        v34 = (v34 + 40);
        --v33;
      }

      while (v33);
    }

    else
    {
      v35 = v44;
    }

    sub_21B17DAF8(v35, v43);
    v38 = swift_allocObject();
    *(v38 + 16) = v46;
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 32) = 0xD000000000000017;
    *(v38 + 40) = 0x800000021B210510;
    goto LABEL_10;
  }

  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

uint64_t sub_21B1F3760(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_21B1F37F8()
{
  result = qword_27CD6FEB0;
  if (!qword_27CD6FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FEB0);
  }

  return result;
}

uint64_t sub_21B1F384C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEB8, &unk_21B217FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B1F38BC()
{
  result = qword_27CD6FEC0;
  if (!qword_27CD6FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FEC0);
  }

  return result;
}

unint64_t sub_21B1F3910()
{
  result = qword_27CD6EBD8;
  if (!qword_27CD6EBD8)
  {
    sub_21B20C368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EBD8);
  }

  return result;
}

unint64_t sub_21B1F3968()
{
  result = qword_27CD6FEC8;
  if (!qword_27CD6FEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6FEB8, &unk_21B217FD0);
    sub_21B1F39EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FEC8);
  }

  return result;
}

unint64_t sub_21B1F39EC()
{
  result = qword_27CD6FED0;
  if (!qword_27CD6FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FED0);
  }

  return result;
}

uint64_t sub_21B1F3A40(uint64_t a1)
{
  v2 = sub_21B20D348();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B2110C0;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD000000000000011, 0x800000021B210590);
  MEMORY[0x21CEEBBB0](*a1, *(a1 + 8));
  MEMORY[0x21CEEBBB0](0x70797420666F2022, 0xEB00000000203A65);
  v5 = *(a1 + 16);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](2763296, 0xE300000000000000);
  v6 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_21B1F38BC();
  sub_21B20DC58();

  v7 = *(a1 + 32);
  if (v7 >> 60 == 15)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21B2110C0;
    *(v8 + 56) = v6;
    *(v8 + 32) = 0x3E4C4C554E3CLL;
    *(v8 + 40) = 0xE600000000000000;
    sub_21B20DC58();
LABEL_3:

    return sub_21B1F4020(a1);
  }

  v9 = *(a1 + 24);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      sub_21B17CEA8(*(a1 + 24), v7);
      v18 = sub_21B20C6A8();
      v19 = v9;
      v20 = v7;
      v22 = v21;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21B2110C0;
      *(v23 + 56) = v6;
      *(v23 + 32) = v18;
      *(v23 + 40) = v22;
      sub_21B20DC58();
      sub_21B17DAE4(v19, v20);
      goto LABEL_3;
    }

    goto LABEL_14;
  }

  if (!v5)
  {
LABEL_14:
    sub_21B17CEA8(*(a1 + 24), v7);
    sub_21B20D338();
    v24 = sub_21B20D318();
    if (v25)
    {
      v26 = v24;
      v27 = v9;
      v28 = v7;
      v29 = v25;
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_21B2110C0;
      *(v30 + 56) = v6;
      *(v30 + 32) = v26;
      *(v30 + 40) = v29;
      sub_21B20DC58();
      sub_21B17DAE4(v27, v28);

      return sub_21B1F4020(a1);
    }

    goto LABEL_18;
  }

  sub_21B17CEA8(v9, v7);
  sub_21B20D338();
  v32 = v9;
  v33 = v7;
  sub_21B20D318();
  if (v10)
  {
    sub_21B17FBB0();
    v11 = sub_21B20D608();

    v12 = *(v11 + 16);
    if (!v12)
    {
LABEL_11:
      sub_21B17DAE4(v32, v33);

      return sub_21B1F4020(a1);
    }

    v13 = 0;
    v14 = (v11 + 40);
    while (v13 < *(v11 + 16))
    {
      ++v13;
      v15 = *(v14 - 1);
      v16 = *v14;
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_21B2110C0;
      *(v17 + 56) = MEMORY[0x277D837D0];
      *(v17 + 32) = v15;
      *(v17 + 40) = v16;
      swift_bridgeObjectRetain_n();
      sub_21B20DC58();

      v14 += 2;
      if (v12 == v13)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

LABEL_18:
  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

uint64_t sub_21B1F4020(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21B2110C0;
  BYTE8(v4) = 0;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0x203A444E45202A2ALL, 0xEF22207972746E45);
  MEMORY[0x21CEEBBB0](*a1, *(a1 + 8));
  MEMORY[0x21CEEBBB0](0x70797420666F2022, 0xEB00000000203A65);
  *&v4 = *(a1 + 16);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](2763296, 0xE300000000000000);
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = *(&v4 + 1);
  *(v2 + 40) = 0xE000000000000000;
  sub_21B1F38BC();
  sub_21B20DC58();
}

unint64_t sub_21B1F4230()
{
  result = qword_27CD6FED8;
  if (!qword_27CD6FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FED8);
  }

  return result;
}

uint64_t sub_21B1F4284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_21B20DC88();
  sub_21B20D388();
  v7 = sub_21B20DCA8();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_21B20DB28() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

double DebugLogHandler.__allocating_init(allowedBlockNames:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 24) = a1;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

uint64_t DebugLogHandler.init(allowedBlockNames:)(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = a1;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  return v1;
}

uint64_t sub_21B1F441C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  v10 = *(a4 + 8);
  v12 = a4[2];
  v11 = a4[3];
  sub_21B1F4658(v4 + 32, &v34);
  v40 = v11;
  if (v36)
  {
    sub_21B17C284(&v34, v37);
    v13 = a2;
    v14 = a3;
    v15 = a1;
    v17 = v38;
    v16 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    *&v34 = v9;
    BYTE8(v34) = v10;
    v35 = v12;
    v36 = v11;
    v18 = v15;
    a3 = v14;
    a2 = v13;
    (*(v16 + 8))(v18, v13, a3, &v34, v17, v16);
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    if (v5)
    {
      return result;
    }

    v32 = v10;
    a1 = v18;
    v11 = v40;
  }

  else
  {
    v32 = v10;
    sub_21B1F46C8(&v34);
  }

  v20 = *(v33 + 24);
  v21 = v12;
  if (!v20 || (result = sub_21B1F4284(v12, v11, v20), (result & 1) != 0))
  {
    swift_beginAccess();
    v22 = *(v33 + 16);

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 16) = v22;
    v24 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_21B1D2F1C(0, *(v22 + 2) + 1, 1, v22);
      *(v33 + 16) = v22;
    }

    v26 = *(v22 + 2);
    v25 = *(v22 + 3);
    v27 = v9;
    v28 = v32;
    if (v26 >= v25 >> 1)
    {
      v31 = sub_21B1D2F1C((v25 > 1), v26 + 1, 1, v22);
      v28 = v32;
      v27 = v9;
      v22 = v31;
    }

    *(v22 + 2) = v26 + 1;
    v29 = &v22[56 * v26];
    *(v29 + 4) = v27;
    v29[40] = v28;
    v30 = v40;
    *(v29 + 6) = v21;
    *(v29 + 7) = v30;
    *(v29 + 8) = v24;
    *(v29 + 9) = a2;
    *(v29 + 10) = a3;
    *(v33 + 16) = v22;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_21B1F4658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEE0, &qword_21B217FE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1F46C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEE0, &qword_21B217FE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B1F4730(void (*a1)(uint64_t *))
{
  v3 = v2;
  swift_beginAccess();
  v4 = *(*(v1 + 16) + 16);

  v15 = v4;
  if (!v4)
  {
  }

  v6 = 0;
  v7 = (result + 72);
  v16 = result;
  while (v6 < *(result + 16))
  {
    v8 = *(v7 - 5);
    v9 = *(v7 - 32);
    v10 = *(v7 - 2);
    v18 = *(v7 - 3);
    v26 = v3;
    v12 = *(v7 - 1);
    v11 = *v7;
    ObjectType = swift_getObjectType();
    v21 = v12;
    v19 = *(v11 + 8);
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain_n();
    v13 = v26;
    v14 = v19(ObjectType, v11);
    swift_unknownObjectRelease();
    if (v13)
    {
      swift_unknownObjectRelease();
      swift_bridgeObjectRelease_n();
    }

    v21 = v8;
    v22 = v9;
    v23 = v18;
    v24 = v10;
    v25 = v14;
    a1(&v21);
    v3 = 0;
    swift_unknownObjectRelease();

    ++v6;

    v7 += 7;
    result = v16;
    if (v15 == v6)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t DebugLogHandler.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_21B1F46C8(v0 + 32);
  return v0;
}

uint64_t DebugLogHandler.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_21B1F46C8(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_21B1F49B4(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = *(a1 + 3);
  return sub_21B1FBE74(v1[4], v1[2], v1[3]);
}

uint64_t dispatch thunk of DebugLogHandler.handleLogCollector(_:metadata:)()
{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 160))();
}

uint64_t sub_21B1F4B28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_21B1F4B70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B1F4BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  v10 = *(a4 + 16);
  v9 = *(a4 + 24);
  ObjectType = swift_getObjectType();
  v13 = a1;
  result = (*(a2 + 8))(ObjectType, a2);
  if (!v4)
  {
    v13 = v7;
    v14 = v8;
    v15 = v10;
    v16 = v9;
    v17 = result;

    sub_21B1F4D80(&v13);
  }

  return result;
}

uint64_t sub_21B1F4C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v10 = a4[3];
  v11 = a4[4];
  ObjectType = swift_getObjectType();
  v14[0] = a1;
  result = (*(a2 + 8))(ObjectType, a2);
  if (!v4)
  {
    v14[0] = v7;
    v14[1] = v8;
    v14[2] = v9;
    v14[3] = v10;
    v14[4] = v11;
    v14[5] = result;
    sub_21B1F3760(v7, v8);
    sub_21B1F55D8(v14);
    sub_21B198098(v7, v8);
  }

  return result;
}

uint64_t sub_21B1F4D80(uint64_t *a1)
{
  v98 = *MEMORY[0x277D85DE8];
  v92 = sub_21B20C548();
  v3 = *(v92 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v92);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21B20C678();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v89 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v77 = &v72 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v72 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v72 - v17;
  v19 = *a1;
  v20 = a1[3];
  v93 = a1[2];
  v90 = v20;
  v82 = a1[4];
  (*(v8 + 16))(v16, v1 + OBJC_IVAR____TtC12PoirotBlocks14FileLogHandler_directory, v7);
  v95 = v19;
  v21 = v8;
  v96 = sub_21B20DAB8();
  v97 = v22;
  MEMORY[0x21CEEBBB0](46, 0xE100000000000000);
  MEMORY[0x21CEEBBB0](v93, v90);
  v23 = v3[13];
  v87 = *MEMORY[0x277CC91D8];
  v24 = v92;
  v85 = v23;
  v86 = v3 + 13;
  v23(v6);
  v84 = sub_21B17FBB0();
  sub_21B20C658();
  v25 = v3[1];
  v88 = v6;
  v90 = v3 + 1;
  v83 = v25;
  v25(v6, v24);

  v28 = *(v21 + 8);
  v26 = v21 + 8;
  v27 = v28;
  v28(v16, v7);
  v29 = [objc_opt_self() defaultManager];
  v30 = sub_21B20C5A8();
  v96 = 0;
  LODWORD(a1) = [v29 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:&v96];

  if (a1)
  {
    v31 = v96;
    v32 = sub_21B1F5FB0(v82);
    v33 = v32;
    v34 = 0;
    v35 = v32 + 64;
    v36 = 1 << *(v32 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v32 + 64);
    v39 = (v36 + 63) >> 6;
    v91 = v18;
    v40 = v77;
    v74 = v32;
    v73 = v39;
    v41 = v18;
    v80 = v26;
    v81 = v7;
    v79 = v27;
    v72 = v32 + 64;
    if (v38)
    {
      while (1)
      {
LABEL_11:
        while (1)
        {
          v75 = (v38 - 1) & v38;
          v76 = v34;
          v43 = __clz(__rbit64(v38)) | (v34 << 6);
          v44 = (*(v33 + 48) + 16 * v43);
          v45 = *v44;
          v46 = v44[1];
          v47 = *(*(v33 + 56) + 8 * v43);

          sub_21B20C5C8();

          v48 = v47;
          v49 = v47[2];
          if (v49)
          {
            break;
          }

LABEL_6:

          v40 = v77;
          v27(v77, v7);
          v41 = v91;
          v33 = v74;
          v35 = v72;
          v34 = v76;
          v39 = v73;
          v38 = v75;
          if (!v75)
          {
            goto LABEL_7;
          }
        }

        if (v49 != 1)
        {
          break;
        }

        v41 = v47[8];
        if (v41 >> 60 == 15)
        {
          break;
        }

        v46 = v47[7];
        sub_21B17CEA8(v46, v47[8]);

        v65 = v94;
        sub_21B20C6C8();
        v94 = v65;
        if (v65)
        {
          goto LABEL_45;
        }

        v27(v40, v7);
        sub_21B17DAE4(v46, v41);
        v34 = v76;
        v39 = v73;
        v38 = v75;
        v41 = v91;
        if (!v75)
        {
          goto LABEL_7;
        }
      }

      v50 = 0;
      v51 = v47 + 8;
      v82 = v48;
      v78 = v49;
      while (v49 != v50)
      {
        if (v50 >= *(v48 + 16))
        {
          goto LABEL_44;
        }

        v52 = *v51;
        if (*v51 >> 60 != 15)
        {
          v46 = *(v51 - 1);
          v53 = *(v51 - 16);
          v54 = *(v51 - 3);
          v96 = *(v51 - 4);
          v97 = v54;
          v95 = v50;
          v93 = v54;
          swift_bridgeObjectRetain_n();
          sub_21B17CE94(v46, v52);
          sub_21B17CE94(v46, v52);
          v55 = sub_21B20DAB8();
          MEMORY[0x21CEEBBB0](v55);

          v56 = 1920099630;
          if (v53 == 2)
          {
            v56 = 0;
          }

          v57 = 0xE000000000000000;
          if (v53 != 2)
          {
            v57 = 0xE400000000000000;
          }

          v58 = 0x6E6F736A2ELL;
          if (v53)
          {
            v58 = 1987273518;
          }

          v59 = 0xE500000000000000;
          if (v53)
          {
            v59 = 0xE400000000000000;
          }

          if (v53 <= 1)
          {
            v60 = v58;
          }

          else
          {
            v60 = v56;
          }

          if (v53 <= 1)
          {
            v61 = v59;
          }

          else
          {
            v61 = v57;
          }

          MEMORY[0x21CEEBBB0](v60, v61);

          v62 = v88;
          v63 = v92;
          v85(v88, v87, v92);
          v40 = v89;
          v41 = v91;
          sub_21B20C658();
          v83(v62, v63);

          v64 = v94;
          sub_21B20C6C8();
          v94 = v64;
          if (v64)
          {

            sub_21B17DAE4(v46, v52);

            sub_21B17DAE4(v46, v52);
            v68 = v81;
            v69 = v79;
            v79(v40, v81);
            v69(v77, v68);
            result = (v69)(v91, v68);
            goto LABEL_42;
          }

          v7 = v81;
          v27 = v79;
          v79(v40, v81);
          sub_21B17DAE4(v46, v52);

          sub_21B17DAE4(v46, v52);
          v48 = v82;
          v49 = v78;
        }

        ++v50;
        v51 += 5;
        if (v49 == v50)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:

      sub_21B17DAE4(v46, v41);
      v27(v40, v7);
      v67 = v91;
    }

    else
    {
      while (1)
      {
LABEL_7:
        v42 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
        }

        if (v42 >= v39)
        {
          break;
        }

        v38 = *(v35 + 8 * v42);
        ++v34;
        if (v38)
        {
          v34 = v42;
          goto LABEL_11;
        }
      }

      v67 = v41;
    }

    result = (v27)(v67, v7);
  }

  else
  {
    v66 = v96;
    sub_21B20C508();

    swift_willThrow();
    result = (v27)(v18, v7);
  }

LABEL_42:
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21B1F55D8(uint64_t a1)
{
  v2 = v1;
  v99 = *MEMORY[0x277D85DE8];
  v4 = sub_21B20C548();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B20C678();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v88 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v78 = &v73 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v73 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v73 - v19;
  v94 = *(a1 + 40);
  (*(v10 + 16))(v18, v95 + OBJC_IVAR____TtC12PoirotBlocks14FileLogHandler_directory, v9);
  v97 = 0x657069636552;
  v98 = 0xE600000000000000;
  v21 = v5[13];
  v86 = *MEMORY[0x277CC91D8];
  v84 = v21;
  v85 = v5 + 13;
  v21(v8);
  v83 = sub_21B17FBB0();
  sub_21B20C658();
  v22 = v5[1];
  v87 = v8;
  v89 = v5 + 1;
  v90 = v4;
  v82 = v22;
  v22(v8, v4);
  v25 = *(v10 + 8);
  v24 = v10 + 8;
  v23 = v25;
  v93 = v9;
  v25(v18, v9);
  v26 = [objc_opt_self() defaultManager];
  v27 = sub_21B20C5A8();
  v97 = 0;
  LODWORD(v4) = [v26 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:&v97];

  if (!v4)
  {
    v64 = v97;
    sub_21B20C508();

    swift_willThrow();
    v65 = v20;
    v66 = v93;
LABEL_41:
    result = v23(v65, v66);
    goto LABEL_42;
  }

  v28 = v97;
  v29 = sub_21B1F5FB0(v94);
  v30 = v29;
  v31 = 0;
  v32 = v29 + 64;
  v33 = 1 << *(v29 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v29 + 64);
  v36 = (v33 + 63) >> 6;
  v91 = v20;
  v92 = v24;
  v75 = v29;
  v37 = v20;
  v74 = v36;
  v38 = v93;
  v80 = v23;
  v73 = v29 + 64;
  if (!v35)
  {
    while (1)
    {
LABEL_5:
      v39 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
      }

      if (v39 >= v36)
      {
        break;
      }

      v35 = *(v32 + 8 * v39);
      ++v31;
      if (v35)
      {
        v31 = v39;
        goto LABEL_9;
      }
    }

    v65 = v37;
    v66 = v38;
    goto LABEL_41;
  }

  while (1)
  {
LABEL_9:
    v76 = (v35 - 1) & v35;
    v77 = v31;
    v40 = __clz(__rbit64(v35)) | (v31 << 6);
    v41 = (*(v30 + 48) + 16 * v40);
    v42 = *v41;
    v43 = v41[1];
    v44 = *(*(v30 + 56) + 8 * v40);

    v45 = v78;
    v46 = v37;
    sub_21B20C5C8();

    v47 = v44;
    v48 = v44[2];
    if (!v48)
    {
LABEL_34:

      v38 = v93;
      v23(v78, v93);
      v37 = v91;
      v30 = v75;
      v32 = v73;
      v31 = v77;
      goto LABEL_35;
    }

    if (v48 != 1)
    {
      break;
    }

    v37 = v44[8];
    if (v37 >> 60 == 15)
    {
      break;
    }

    v43 = v44[7];
    sub_21B17CEA8(v43, v44[8]);

    sub_21B20C6C8();
    if (v2)
    {
      goto LABEL_45;
    }

    v63 = v45;
    v38 = v93;
    v23(v63, v93);
    sub_21B17DAE4(v43, v37);
    v31 = v77;
    v37 = v46;
LABEL_35:
    v36 = v74;
    v35 = v76;
    if (!v76)
    {
      goto LABEL_5;
    }
  }

  v49 = 0;
  v50 = v44 + 8;
  v81 = v47;
  v79 = v48;
  while (v48 != v49)
  {
    if (v49 >= v47[2])
    {
      goto LABEL_44;
    }

    v46 = *v50;
    if (*v50 >> 60 != 15)
    {
      v95 = v2;
      v43 = *(v50 - 1);
      v51 = *(v50 - 16);
      v52 = *(v50 - 3);
      v97 = *(v50 - 4);
      v98 = v52;
      v96 = v49;
      v94 = v52;
      swift_bridgeObjectRetain_n();
      sub_21B17CE94(v43, v46);
      sub_21B17CE94(v43, v46);
      v53 = sub_21B20DAB8();
      MEMORY[0x21CEEBBB0](v53);

      v54 = 1920099630;
      if (v51 == 2)
      {
        v54 = 0;
      }

      v55 = 0xE000000000000000;
      if (v51 != 2)
      {
        v55 = 0xE400000000000000;
      }

      v56 = 0x6E6F736A2ELL;
      if (v51)
      {
        v56 = 1987273518;
      }

      v57 = 0xE500000000000000;
      if (v51)
      {
        v57 = 0xE400000000000000;
      }

      if (v51 <= 1)
      {
        v58 = v56;
      }

      else
      {
        v58 = v54;
      }

      if (v51 <= 1)
      {
        v59 = v57;
      }

      else
      {
        v59 = v55;
      }

      MEMORY[0x21CEEBBB0](v58, v59);

      v60 = v87;
      v61 = v90;
      v84(v87, v86, v90);
      v45 = v88;
      v37 = v91;
      sub_21B20C658();
      v82(v60, v61);

      v62 = v95;
      sub_21B20C6C8();
      v2 = v62;
      if (v62)
      {

        sub_21B17DAE4(v43, v46);

        sub_21B17DAE4(v43, v46);
        v67 = v45;
        v68 = v93;
        v69 = v80;
        v80(v67, v93);
        v69(v78, v68);
        result = (v69)(v91, v68);
        goto LABEL_42;
      }

      v23 = v80;
      v80(v45, v93);
      sub_21B17DAE4(v43, v46);

      sub_21B17DAE4(v43, v46);
      v47 = v81;
      v48 = v79;
    }

    ++v49;
    v50 += 5;
    if (v48 == v49)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:

  sub_21B17DAE4(v43, v37);
  v72 = v93;
  v23(v45, v93);
  result = v23(v46, v72);
LABEL_42:
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21B1F5DE8()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks14FileLogHandler_directory;
  v2 = sub_21B20C678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for FileLogHandler()
{
  result = qword_27CD6FEF0;
  if (!qword_27CD6FEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B1F5ED8()
{
  result = sub_21B20C678();
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

uint64_t sub_21B1F5FB0(uint64_t a1)
{
  v2 = sub_21B19796C(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = 0;
  v5 = (a1 + 64);
  while (1)
  {
    v6 = *(v5 - 3);
    v7 = *(v5 - 16);
    v8 = *(v5 - 1);
    v9 = *v5;
    v39 = *(v5 - 4);
    v40 = v6;
    v5 += 5;
    v10 = 1920099630;
    if (v7 == 2)
    {
      v10 = 0;
    }

    v11 = 0xE000000000000000;
    if (v7 != 2)
    {
      v11 = 0xE400000000000000;
    }

    v12 = 0x6E6F736A2ELL;
    if (v7)
    {
      v12 = 1987273518;
    }

    v13 = 0xE500000000000000;
    if (v7)
    {
      v13 = 0xE400000000000000;
    }

    v14 = v7 <= 1 ? v12 : v10;
    v15 = v7 <= 1 ? v13 : v11;
    v38 = v6;
    swift_bridgeObjectRetain_n();
    v36 = v9;
    v37 = v8;
    sub_21B17CE94(v8, v9);
    MEMORY[0x21CEEBBB0](v14, v15);

    sub_21B188EC8(v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_21B1B9778(v39, v40);
    v19 = v2[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v2[3] >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v17)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_21B203F64();
        if (v22)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_21B201D08(v21, isUniquelyReferenced_nonNull_native);
      v23 = sub_21B1B9778(v39, v40);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_36;
      }

      v18 = v23;
      if (v22)
      {
LABEL_24:

        goto LABEL_28;
      }
    }

    v2[(v18 >> 6) + 8] |= 1 << v18;
    v25 = (v2[6] + 16 * v18);
    *v25 = v39;
    v25[1] = v40;
    *(v2[7] + 8 * v18) = MEMORY[0x277D84F90];
    v26 = v2[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_35;
    }

    v2[2] = v28;
LABEL_28:
    v29 = v2[7];
    v30 = *(v29 + 8 * v18);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(v29 + 8 * v18) = v30;
    if ((v31 & 1) == 0)
    {
      v30 = sub_21B1D2A60(0, *(v30 + 2) + 1, 1, v30);
      *(v29 + 8 * v18) = v30;
    }

    v33 = *(v30 + 2);
    v32 = *(v30 + 3);
    if (v33 >= v32 >> 1)
    {
      v30 = sub_21B1D2A60((v32 > 1), v33 + 1, 1, v30);
      *(v29 + 8 * v18) = v30;
    }

    *(v30 + 2) = v33 + 1;
    v34 = &v30[40 * v33];
    *(v34 + 4) = v39;
    *(v34 + 5) = v38;
    v34[48] = v7;
    *(v34 + 7) = v37;
    *(v34 + 8) = v36;
    v4 = sub_21B1F5DD8;
    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

uint64_t sub_21B1F62B0(uint64_t a1)
{
  v2 = v1;
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = OBJC_IVAR____TtC12PoirotBlocks16StructLogHandler_directoryURL;
  v5 = sub_21B20C678();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, a1, v5);
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_21B20C5A8();
  v15[0] = 0;
  v9 = [v7 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:v15];

  if (v9)
  {
    v10 = v15[0];
  }

  else
  {
    v11 = v15[0];
    v12 = sub_21B20C508();

    swift_willThrow();
  }

  (*(v6 + 8))(a1, v5);
  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_21B1F6444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = sub_21B20C548();
  v55 = *(v56 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_21B20C678();
  v54 = *(v58 - 8);
  v9 = *(v54 + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v53 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = *a4;
  v18 = *(a4 + 8);
  v20 = *(a4 + 16);
  v19 = *(a4 + 24);
  v21 = sub_21B20C3A8();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v60 = sub_21B20C398();
  v67 = v17;
  v68 = v18;
  v69 = v20;
  v70 = v19;
  ObjectType = swift_getObjectType();
  v71 = a1;
  v25 = *(a2 + 8);

  v26 = v59;
  v27 = v25(ObjectType, a2);
  if (v26)
  {
  }

  else
  {
    v29 = v17;
    v30 = v57;
    v31 = v53;
    v51 = v14;
    v59 = v16;
    v32 = v55;
    v33 = v56;
    v34 = v54;
    v35 = v58;
    sub_21B1F6F7C(&v67, v27, v65);
    sub_21B1F6EC4();
    v50 = sub_21B20C388();
    v37 = v36;
    v63[2] = v65[2];
    v63[3] = v65[3];
    v63[4] = v65[4];
    v64 = v66;
    v63[0] = v65[0];
    v63[1] = v65[1];
    sub_21B1F6F18(v63);

    (*(v34 + 16))(v31, v30 + OBJC_IVAR____TtC12PoirotBlocks16StructLogHandler_directoryURL, v35);
    v61 = v29;
    v60 = v37;
    v61 = sub_21B20DAB8();
    v62 = v38;
    v39 = v32;
    v40 = *(v32 + 104);
    v41 = v52;
    v42 = v33;
    v40(v52, *MEMORY[0x277CC91D8], v33);
    sub_21B17FBB0();
    v43 = v51;
    sub_21B20C668();
    (*(v39 + 8))(v41, v42);
    v44 = v58;
    v45 = *(v34 + 8);
    v45(v31, v58);

    v46 = v59;
    sub_21B20C5D8();
    v47 = v60;
    v45(v43, v44);
    v48 = v50;
    sub_21B20C6C8();
    v45(v46, v44);
    return sub_21B17DAF8(v48, v47);
  }
}

uint64_t sub_21B1F6934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v45 = sub_21B20C548();
  v50 = *(v45 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_21B20C678();
  v48 = *(v49 - 8);
  v9 = *(v48 + 64);
  v10 = MEMORY[0x28223BE20](v49);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v43 - v12;
  v14 = *a4;
  v13 = a4[1];
  v15 = a4[2];
  v16 = a4[3];
  v17 = a4[4];
  v18 = sub_21B20C3A8();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v53 = sub_21B20C398();
  *&v55 = v14;
  *(&v55 + 1) = v13;
  v21 = v13;
  *&v56 = v15;
  *(&v56 + 1) = v16;
  *&v57 = v17;
  ObjectType = swift_getObjectType();
  v61 = a1;
  v23 = *(a2 + 8);
  v52 = v14;
  sub_21B1F3760(v14, v21);
  v24 = v54;
  v25 = v23(ObjectType, a2);
  if (v24)
  {
    sub_21B198098(v52, v21);
  }

  else
  {
    v27 = v47;
    v29 = v50;
    v28 = v51;
    v30 = v48;
    v31 = v49;
    sub_21B1FEE9C(&v55, v25, v59);
    v55 = v59[0];
    v56 = v59[1];
    v57 = v59[2];
    v58 = v60;
    sub_21B1F6E70();
    v54 = sub_21B20C388();
    v33 = v32;
    sub_21B198098(v55, *(&v55 + 1));

    v34 = *(v30 + 16);
    v53 = v33;
    v35 = v27;
    v34(v27, v28 + OBJC_IVAR____TtC12PoirotBlocks16StructLogHandler_directoryURL, v31);
    *&v59[0] = 0x6C5F657069636572;
    *(&v59[0] + 1) = 0xEF6E6F736A2E676FLL;
    v36 = v44;
    v37 = v45;
    (*(v29 + 104))(v44, *MEMORY[0x277CC91D8], v45);
    sub_21B17FBB0();
    v38 = v46;
    sub_21B20C668();
    (*(v29 + 8))(v36, v37);
    v39 = *(v30 + 8);
    v40 = v35;
    v41 = v53;
    v39(v40, v31);
    v42 = v54;
    sub_21B20C6C8();
    v39(v38, v31);
    return sub_21B17DAF8(v42, v41);
  }
}

uint64_t sub_21B1F6D38()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks16StructLogHandler_directoryURL;
  v2 = sub_21B20C678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for StructLogHandler()
{
  result = qword_27CD6FF08;
  if (!qword_27CD6FF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21B1F6E70()
{
  result = qword_27CD6FF18;
  if (!qword_27CD6FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FF18);
  }

  return result;
}

unint64_t sub_21B1F6EC4()
{
  result = qword_27CD6FF20;
  if (!qword_27CD6FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FF20);
  }

  return result;
}

uint64_t sub_21B1F6F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int8x16_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  v8 = sub_21B1FB5EC(a2);

  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v57 = -1;

  v46 = v4;
  v45 = v5;
  v9 = sub_21B1FB858(v8, v4, v5, v6, v7, &v54);

  v44 = v7;
  swift_bridgeObjectRelease_n();
  v48 = v54;
  v49 = v55;
  v10 = v56;
  v11 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70120, &unk_21B219230);
  v12 = sub_21B20D7E8();
  v14 = v9 + 64;
  v13 = *(v9 + 64);
  v50 = v9;
  v15 = 1 << *(v9 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v42 = v10;
  v43 = v11;
  result = sub_21B1F95A0(v48.i64[0], v48.u64[1], v49.i64[0], v49.i64[1], v10, v11);
  v19 = 0;
  v20 = (v15 + 63) >> 6;
  if (v17)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_10:
      v24 = v21 | (v19 << 6);
      v25 = (*(v50 + 48) + 16 * v24);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(*(v50 + 56) + 8 * v24);

      sub_21B1F9658(v29, v51);

      *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v24;
      v30 = (v12[6] + 16 * v24);
      *v30 = v27;
      v30[1] = v26;
      v31 = v12[7] + 48 * v24;
      v32 = v52;
      v33 = v53;
      v34 = v51[1];
      *v31 = v51[0];
      *(v31 + 16) = v34;
      *(v31 + 32) = v32;
      *(v31 + 40) = v33;
      v35 = v12[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        break;
      }

      v12[2] = v37;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_5:
    v22 = v19;
    while (1)
    {
      v19 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v19 >= v20)
      {
        break;
      }

      v23 = *(v14 + 8 * v19);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_10;
      }
    }

    if (v43 == 255)
    {
      v38 = 0;
    }

    else
    {
      v38 = v42;
    }

    result = sub_21B1FA360(v48.i64[0], v48.u64[1], v49.i64[0], v49.i64[1], v42, v43);
    a3->i64[0] = v46;
    a3->i8[8] = v45;
    a3[1].i64[0] = v6;
    a3[1].i64[1] = v44;
    v39 = vdup_n_s32(v43 == 255);
    v40.i64[0] = v39.u32[0];
    v40.i64[1] = v39.u32[1];
    v41 = vcgezq_s64(vshlq_n_s64(v40, 0x3FuLL));
    a3[2] = vandq_s8(v48, v41);
    a3[3] = vandq_s8(v49, v41);
    a3[4].i64[0] = v38;
    a3[4].i8[8] = v43;
    a3[5].i64[0] = v12;
  }

  return result;
}

uint64_t sub_21B1F7284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C69614674696E69 && a2 == 0xEB00000000657275)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21B20DB28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21B1F7310(uint64_t a1)
{
  v2 = sub_21B1F76A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F734C(uint64_t a1)
{
  v2 = sub_21B1F76A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B1F73A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21B20DB28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21B1F7428(uint64_t a1)
{
  v2 = sub_21B1F76F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F7464(uint64_t a1)
{
  v2 = sub_21B1F76F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BlockExecutionLog.Error.encode(to:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF28, &qword_21B218190);
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v17);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF30, &qword_21B218198);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = *v1;
  v16[1] = v1[1];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1F76A0();
  sub_21B20DD08();
  sub_21B1F76F4();
  sub_21B20D988();
  v14 = v17;
  sub_21B20D9E8();
  (*(v3 + 8))(v6, v14);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_21B1F76A0()
{
  result = qword_27CD6FF38;
  if (!qword_27CD6FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FF38);
  }

  return result;
}

unint64_t sub_21B1F76F4()
{
  result = qword_27CD6FF40;
  if (!qword_27CD6FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FF40);
  }

  return result;
}

uint64_t BlockExecutionLog.Error.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF48, &qword_21B2181A0);
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF50, &unk_21B2181A8);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1F76A0();
  sub_21B20DCD8();
  if (v2)
  {
    goto LABEL_6;
  }

  v30 = a1;
  v13 = v37;
  v14 = v32;
  v15 = sub_21B20D968();
  v16 = (2 * *(v15 + 16)) | 1;
  v33 = v15;
  v34 = v15 + 32;
  v35 = 0;
  v36 = v16;
  v17 = v11;
  if (sub_21B1E6538() || v35 != v36 >> 1)
  {
    v18 = sub_21B20D6E8();
    swift_allocError();
    v19 = v8;
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA58, &qword_21B2173D0) + 48);
    *v21 = &type metadata for BlockExecutionLog.Error;
    sub_21B20D848();
    sub_21B20D6D8();
    (*(*(v18 - 8) + 104))(v21, *MEMORY[0x277D84160], v18);
    swift_willThrow();
    (*(v14 + 8))(v17, v19);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_6:
    v27 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  sub_21B1F76F4();
  sub_21B20D838();
  v24 = sub_21B20D8C8();
  v26 = v25;
  (*(v13 + 8))(v7, v4);
  (*(v14 + 8))(v17, v8);
  swift_unknownObjectRelease();
  v27 = v30;
  v28 = v31;
  *v31 = v24;
  v28[1] = v26;
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t BlockExecutionLog.LogContent.asData()()
{
  v1 = sub_21B20D348();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = *(v0 + 40);
  if (v8 <= 2)
  {
    sub_21B17CEA8(*v0, *(v0 + 8));
  }

  else
  {
    if (v8 == 3)
    {
      sub_21B20D338();
      v9 = sub_21B20D308();
      v11 = v10;
    }

    else
    {
      v14[2] = 0;
      v14[3] = 0xE000000000000000;
      v14[0] = v6;
      v14[1] = v7;
      sub_21B20D768();
      sub_21B20D338();
      v9 = sub_21B20D308();
      v11 = v12;
    }

    (*(v2 + 8))(v5, v1);
    if (v11 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  return v6;
}

Swift::String_optional __swiftcall BlockExecutionLog.LogContent.suggestedFileExtension()()
{
  v1 = *(v0 + 40);
  v2 = *&aJson_3[8 * v1];
  v3 = qword_21B219268[v1];
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_21B1F7CE0(uint64_t a1)
{
  v2 = sub_21B1F8A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F7D1C(uint64_t a1)
{
  v2 = sub_21B1F8A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B1F7D58()
{
  v1 = *v0;
  v2 = 1852797802;
  v3 = 0x7972616E6962;
  v4 = 0x6567617373656DLL;
  if (v1 != 3)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7762787;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21B1F7DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1FBB30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B1F7E04(uint64_t a1)
{
  v2 = sub_21B1F88C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F7E40(uint64_t a1)
{
  v2 = sub_21B1F88C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B1F7E7C()
{
  if (*v0)
  {
    result = 0x614C6E6D756C6F63;
  }

  else
  {
    result = 1635017060;
  }

  *v0;
  return result;
}

uint64_t sub_21B1F7EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_21B20DB28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614C6E6D756C6F63 && a2 == 0xEC00000074756F79)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21B20DB28();

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

uint64_t sub_21B1F7F98(uint64_t a1)
{
  v2 = sub_21B1F8A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F7FD4(uint64_t a1)
{
  v2 = sub_21B1F8A64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B1F8010(uint64_t a1)
{
  v2 = sub_21B1F8914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F804C(uint64_t a1)
{
  v2 = sub_21B1F8914();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B1F8088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21B20DB28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21B1F8110(uint64_t a1)
{
  v2 = sub_21B1F8AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F814C(uint64_t a1)
{
  v2 = sub_21B1F8AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B1F8188(uint64_t a1)
{
  v2 = sub_21B1F89BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F81C4(uint64_t a1)
{
  v2 = sub_21B1F89BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BlockExecutionLog.LogContent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF58, &qword_21B2181B8);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v54 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF60, &qword_21B2181C0);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v51 = &v48 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF68, &qword_21B2181C8);
  v49 = *(v50 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF70, &qword_21B2181D0);
  v12 = *(v11 - 8);
  v60 = v11;
  v61 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v59 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF78, &qword_21B2181D8);
  v57 = *(v15 - 8);
  v58 = v15;
  v16 = *(v57 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF80, &qword_21B2181E0);
  v20 = *(v19 - 8);
  v65 = v19;
  v66 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v1[1];
  v62 = *v1;
  v63 = v22;
  v23 = v1[2];
  v24 = v1[3];
  v25 = v1[4];
  v26 = *(v1 + 40);
  v27 = a1[3];
  v28 = a1[4];
  v29 = a1;
  v31 = &v48 - v30;
  __swift_project_boxed_opaque_existential_1(v29, v27);
  sub_21B1F88C0();
  v67 = v31;
  sub_21B20DD08();
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      LOBYTE(v68) = 2;
      sub_21B1F8A10();
      v32 = v48;
      v33 = v65;
      sub_21B20D988();
      v68 = v62;
      v69 = v63;
      sub_21B17DBE4();
      v34 = v50;
      sub_21B20DA48();
      v35 = v49;
    }

    else if (v26 == 3)
    {
      LOBYTE(v68) = 3;
      sub_21B1F89BC();
      v32 = v51;
      v33 = v65;
      sub_21B20D988();
      v34 = v53;
      sub_21B20D9E8();
      v35 = v52;
    }

    else
    {
      LOBYTE(v68) = 4;
      sub_21B1F8914();
      v32 = v54;
      v33 = v65;
      sub_21B20D988();
      v68 = v62;
      v69 = v63;
      sub_21B1F8968();
      v34 = v56;
      sub_21B20DA48();
      v35 = v55;
    }

    (*(v35 + 8))(v32, v34);
    v44 = v67;
    v43 = *(v66 + 8);
    return v43(v44, v33);
  }

  v54 = v25;
  v55 = v24;
  v36 = v58;
  v37 = v59;
  v56 = v23;
  v38 = v57;
  v40 = v60;
  v39 = v61;
  if (!v26)
  {
    LOBYTE(v68) = 0;
    sub_21B1F8AB8();
    v41 = v18;
    v33 = v65;
    v42 = v67;
    sub_21B20D988();
    v68 = v62;
    v69 = v63;
    sub_21B17DBE4();
    sub_21B20DA48();
    (*(v38 + 8))(v41, v36);
    v43 = *(v66 + 8);
    v44 = v42;
    return v43(v44, v33);
  }

  LOBYTE(v68) = 1;
  sub_21B1F8A64();
  v46 = v65;
  sub_21B20D988();
  v68 = v62;
  v69 = v63;
  v71 = 0;
  sub_21B17DBE4();
  v47 = v64;
  sub_21B20DA48();
  if (!v47)
  {
    v68 = v56;
    v69 = v55;
    v70 = v54;
    v71 = 1;
    sub_21B191448();
    sub_21B20DA48();
  }

  (*(v39 + 8))(v37, v40);
  return (*(v66 + 8))(v67, v46);
}

unint64_t sub_21B1F88C0()
{
  result = qword_27CD6FF88;
  if (!qword_27CD6FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FF88);
  }

  return result;
}

unint64_t sub_21B1F8914()
{
  result = qword_27CD6FF90;
  if (!qword_27CD6FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FF90);
  }

  return result;
}

unint64_t sub_21B1F8968()
{
  result = qword_27CD6FF98;
  if (!qword_27CD6FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FF98);
  }

  return result;
}

unint64_t sub_21B1F89BC()
{
  result = qword_27CD6FFA0;
  if (!qword_27CD6FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FFA0);
  }

  return result;
}

unint64_t sub_21B1F8A10()
{
  result = qword_27CD6FFA8;
  if (!qword_27CD6FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FFA8);
  }

  return result;
}

unint64_t sub_21B1F8A64()
{
  result = qword_27CD6FFB0;
  if (!qword_27CD6FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FFB0);
  }

  return result;
}

unint64_t sub_21B1F8AB8()
{
  result = qword_27CD6FFB8;
  if (!qword_27CD6FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FFB8);
  }

  return result;
}

uint64_t BlockExecutionLog.LogContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FFC0, &qword_21B2181E8);
  v69 = *(v65 - 8);
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v65);
  v73 = &v60 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FFC8, &qword_21B2181F0);
  v68 = *(v62 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v62);
  v70 = &v60 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FFD0, &qword_21B2181F8);
  v63 = *(v64 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v72 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FFD8, &qword_21B218200);
  v10 = *(v9 - 8);
  v66 = v9;
  v67 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FFE0, &qword_21B218208);
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FFE8, &qword_21B218210);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v60 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_21B1F88C0();
  v25 = v75;
  sub_21B20DCD8();
  if (!v25)
  {
    v26 = v17;
    v75 = v14;
    v27 = v72;
    v28 = v73;
    v29 = sub_21B20D968();
    v30 = (2 * *(v29 + 16)) | 1;
    v80 = v29;
    v81 = v29 + 32;
    v82 = 0;
    v83 = v30;
    v31 = sub_21B1E6564();
    if (v31 != 5 && v82 == v83 >> 1)
    {
      v84 = v31;
      if (v31 <= 1u)
      {
        if (v31)
        {
          LOBYTE(v76) = 1;
          sub_21B1F8A64();
          v50 = v13;
          sub_21B20D838();
          LOBYTE(v76) = 0;
          sub_21B17DCC8();
          v51 = v66;
          sub_21B20D918();
          v58 = v22;
          v59 = v18;
          v36 = v78;
          v56 = v79;
          v85 = 1;
          sub_21B191538();
          sub_21B20D918();
          (*(v67 + 8))(v50, v51);
          (*(v19 + 8))(v58, v59);
          swift_unknownObjectRelease();
          v57 = v76;
          v53 = v77;
LABEL_18:
          v54 = v74;
          v47 = v71;
          goto LABEL_19;
        }

        LOBYTE(v76) = 0;
        sub_21B1F8AB8();
        v44 = v26;
        sub_21B20D838();
        sub_21B17DCC8();
        v45 = v75;
        sub_21B20D918();
        (*(v61 + 8))(v44, v45);
        (*(v19 + 8))(v22, v18);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v31 == 2)
        {
          LOBYTE(v76) = 2;
          sub_21B1F8A10();
          v46 = v27;
          sub_21B20D838();
          v47 = v71;
          sub_21B17DCC8();
          v48 = v64;
          sub_21B20D918();
          (*(v63 + 8))(v46, v48);
          (*(v19 + 8))(v22, v18);
          swift_unknownObjectRelease();
          v57 = 0;
          v36 = v76;
          v56 = v77;
          v53 = 0uLL;
          v54 = v74;
LABEL_19:
          *v47 = v36;
          *(v47 + 8) = v56;
          *(v47 + 16) = v57;
          *(v47 + 24) = v53;
          *(v47 + 40) = v84;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }

        if (v31 == 3)
        {
          LOBYTE(v76) = 3;
          sub_21B1F89BC();
          v32 = v70;
          sub_21B20D838();
          v33 = v22;
          v34 = v18;
          v35 = v62;
          v36 = sub_21B20D8C8();
          v37 = v32;
          v56 = v55;
          (*(v68 + 8))(v37, v35);
          (*(v19 + 8))(v33, v34);
          swift_unknownObjectRelease();
          v57 = 0;
LABEL_17:
          v53 = 0uLL;
          goto LABEL_18;
        }

        LOBYTE(v76) = 4;
        sub_21B1F8914();
        sub_21B20D838();
        sub_21B1F94DC();
        v49 = v65;
        sub_21B20D918();
        (*(v69 + 8))(v28, v49);
        (*(v19 + 8))(v22, v18);
        swift_unknownObjectRelease();
      }

      v57 = 0;
      v36 = v76;
      v56 = v77;
      goto LABEL_17;
    }

    v38 = v22;
    v39 = sub_21B20D6E8();
    swift_allocError();
    v40 = v18;
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA58, &qword_21B2173D0) + 48);
    *v42 = &type metadata for BlockExecutionLog.LogContent;
    sub_21B20D848();
    sub_21B20D6D8();
    (*(*(v39 - 8) + 104))(v42, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v19 + 8))(v38, v40);
    swift_unknownObjectRelease();
  }

  v54 = v74;
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

unint64_t sub_21B1F94DC()
{
  result = qword_27CD6FFF0;
  if (!qword_27CD6FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FFF0);
  }

  return result;
}

uint64_t BlockExecutionLog.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
}

uint64_t BlockExecutionLog.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 72);
  *(a1 + 40) = v7;
  return sub_21B1F95A0(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_21B1F95A0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_21B1F95B4(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_21B1F95B4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 != 2)
    {
      if (a6 == 3 || a6 == 4)
      {
      }

      return result;
    }

LABEL_13:

    return sub_21B17CEA8(result, a2);
  }

  if (!a6)
  {
    goto LABEL_13;
  }

  if (a6 == 1)
  {
    sub_21B17CEA8(result, a2);
  }

  return result;
}

double sub_21B1F9658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 == 2)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v23 = *(a1 + 32);
    v24 = v8;
    v25 = v9;
    v26 = v6;
    v27 = v7;
    v10 = *(a1 + 80);
    v11 = *(a1 + 88);
    v12 = *(a1 + 96);
    v13 = *(a1 + 104);
    v19[0] = *(a1 + 72);
    v19[1] = v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;

    sub_21B17CE94(v6, v7);

    sub_21B17CE94(v12, v13);
    sub_21B1F9A5C(&v23, v19, &v28);

    sub_21B17DAE4(v12, v13);
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v23 = *(a1 + 32);
    v24 = v4;
    v25 = v5;
    v26 = v6;
    v27 = v7;

    sub_21B17CE94(v6, v7);
    sub_21B1F983C(&v23, &v28);
LABEL_7:

    sub_21B17DAE4(v6, v7);
    goto LABEL_10;
  }

  if (v3)
  {
    sub_21B20D6A8();

    *&v28 = 0xD000000000000023;
    *(&v28 + 1) = 0x800000021B210730;
    v23 = v3;
    v14 = sub_21B20DAB8();
    MEMORY[0x21CEEBBB0](v14);
  }

  else
  {
    *&v28 = 0xD000000000000017;
    *(&v28 + 1) = 0x800000021B210760;
  }

  v30 = 0;
  v29 = 0uLL;
  v31 = 4;
LABEL_10:
  v15 = v30;
  v16 = v31;
  result = *&v28;
  v18 = v29;
  *a2 = v28;
  *(a2 + 16) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

uint64_t sub_21B1F983C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B20D348();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  result = *(a1 + 24);
  v7 = *(a1 + 32);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      if (v7 >> 60 != 15)
      {
        v10 = *(a1 + 24);
        v11 = *(a1 + 32);
        sub_21B17CEA8(result, v7);
        sub_21B20D338();
        sub_21B1FBDF4();
        v12 = sub_21B20D328();
        v14 = v13;
        result = sub_21B17DAE4(v10, v11);
        if (v14)
        {
          *a2 = v12;
          *(a2 + 8) = v14;
        }

        else
        {
          *a2 = 0xD000000000000020;
          *(a2 + 8) = 0x800000021B2107A0;
        }

        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 16) = 0;
        goto LABEL_12;
      }

      v8 = 0x800000021B210780;
      v9 = 0xD00000000000001DLL;
LABEL_11:
      *a2 = v9;
      *(a2 + 8) = v8;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
LABEL_12:
      *(a2 + 40) = 4;
      return result;
    }

    if (v7 >> 60 == 15)
    {
      v8 = 0x800000021B2107D0;
      v9 = 0xD000000000000016;
      goto LABEL_11;
    }

    *a2 = result;
    *(a2 + 8) = v7;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 2;
  }

  else
  {
    if (*(a1 + 16))
    {
      v8 = 0x800000021B2107F0;
      v9 = 0xD000000000000017;
      goto LABEL_11;
    }

    if (v7 >> 60 == 15)
    {
      v8 = 0x800000021B210810;
      v9 = 0xD000000000000014;
      goto LABEL_11;
    }

    *a2 = result;
    *(a2 + 8) = v7;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
  }

  return sub_21B17CEA8(result, v7);
}

uint64_t sub_21B1F9A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v20 = *(a1 + 32);
  v21 = *(a1 + 24);
  v6 = *(a2 + 16);
  v24 = *(a2 + 24);
  v22 = *(a2 + 8);
  v23 = *(a2 + 32);
  if (v5 > 1 || *(a1 + 16))
  {
    v7 = sub_21B20DB28();

    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (v6 <= 1)
  {
    v9 = v20;
    v8 = v21;
    v10 = v23;
    v11 = v24;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  v12 = sub_21B20DB28();

  v9 = v20;
  v8 = v21;
  v10 = v23;
  v11 = v24;
  if ((v12 & 1) == 0)
  {
LABEL_8:
    if (v6)
    {
      v13 = sub_21B20DB28();

      if ((v13 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    if (v5 <= 1)
    {
      v9 = v23;
      v8 = v24;
      v10 = v20;
      v11 = v21;
      if (v5)
      {
LABEL_13:

        goto LABEL_15;
      }
    }

    v15 = sub_21B20DB28();

    v9 = v23;
    v8 = v24;
    v10 = v20;
    v11 = v21;
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_18:
    *a3 = 0xD000000000000017;
    *(a3 + 8) = 0x800000021B2107F0;
LABEL_20:
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 16) = 0;
    v19 = 4;
    goto LABEL_21;
  }

LABEL_15:
  if (v9 >> 60 == 15 || v10 >> 60 == 15)
  {

    sub_21B17CE94(v21, v20);

    sub_21B17CE94(v24, v23);

    sub_21B17DAE4(v11, v10);

    result = sub_21B17DAE4(v8, v9);
    *a3 = 0xD00000000000001CLL;
    *(a3 + 8) = 0x800000021B210830;
    goto LABEL_20;
  }

  v16 = sub_21B20C338();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();

  sub_21B17CE94(v21, v20);

  sub_21B17CE94(v24, v23);
  sub_21B17CE94(v8, v9);
  sub_21B17CE94(v11, v10);
  sub_21B20C328();
  sub_21B191538();
  sub_21B20C308();
  sub_21B17DAE4(v8, v9);

  sub_21B17DAE4(v11, v10);

  sub_21B17DAE4(v8, v9);

  *a3 = v11;
  *(a3 + 8) = v10;
  *(a3 + 16) = v25;
  *(a3 + 24) = v26;
  v19 = 1;
LABEL_21:
  *(a3 + 40) = v19;
  return result;
}

uint64_t sub_21B1F9EF4()
{
  v1 = 0x746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6E6F436172747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_21B1F9F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1FBCD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B1F9F80(uint64_t a1)
{
  v2 = sub_21B1FA2B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F9FBC(uint64_t a1)
{
  v2 = sub_21B1FA2B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BlockExecutionLog.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FFF8, &qword_21B218218);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v25 = *(v1 + 40);
  v26 = v9;
  v10 = *(v1 + 48);
  v23 = *(v1 + 56);
  v24 = v10;
  v11 = *(v1 + 64);
  v35 = *(v1 + 72);
  v21 = *(v1 + 80);
  v22 = v11;
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1;
  v16 = &v21 - v15;
  __swift_project_boxed_opaque_existential_1(v14, v12);
  sub_21B1FA2B8();

  sub_21B20DD08();
  v29 = v5;
  LOBYTE(v30) = v6;
  v31 = v7;
  v32 = v8;
  v36 = 0;
  sub_21B1F4230();
  v17 = v27;
  sub_21B20DA48();

  if (v17)
  {
    return (*(v28 + 8))(v16, v3);
  }

  v19 = v21;
  v20 = v28;
  v29 = v26;
  v30 = v25;
  v31 = v24;
  v32 = v23;
  v33 = v22;
  v34 = v35;
  v36 = 1;
  sub_21B1F95A0(v26, v25, v24, v23, v22, v35);
  sub_21B1FA30C();
  sub_21B20D9D8();
  sub_21B1FA360(v29, v30, v31, v32, v33, v34);
  v29 = v19;
  v36 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70010, &qword_21B218220);
  sub_21B1FA914(&qword_27CD70018, sub_21B1FA30C);
  sub_21B20DA48();
  return (*(v20 + 8))(v16, v3);
}

unint64_t sub_21B1FA2B8()
{
  result = qword_27CD70000;
  if (!qword_27CD70000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70000);
  }

  return result;
}

unint64_t sub_21B1FA30C()
{
  result = qword_27CD70008;
  if (!qword_27CD70008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70008);
  }

  return result;
}

uint64_t sub_21B1FA360(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_21B1FA374(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_21B1FA374(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 != 2)
    {
      if (a6 == 3 || a6 == 4)
      {
      }

      return result;
    }

LABEL_13:

    return sub_21B17DAF8(result, a2);
  }

  if (!a6)
  {
    goto LABEL_13;
  }

  if (a6 == 1)
  {
    sub_21B17DAF8(result, a2);
  }

  return result;
}

uint64_t BlockExecutionLog.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70020, &qword_21B218228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1FA2B8();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v30) = 0;
  sub_21B1FA86C();
  sub_21B20D918();
  v28 = v36;
  v27 = v37;
  v29 = *(&v38 + 1);
  v11 = v38;
  LOBYTE(v30) = 1;
  sub_21B1FA8C0();
  sub_21B20D8B8();
  v22 = v11;
  v12 = v36;
  v25 = v37;
  v26 = v38;
  v23 = v39;
  v24 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70010, &qword_21B218220);
  v45 = 2;
  sub_21B1FA914(&qword_27CD70038, sub_21B1FA8C0);
  sub_21B20D918();
  (*(v6 + 8))(v9, v5);
  v13 = v46;
  v14 = v28;
  *&v30 = v28;
  v15 = v27;
  BYTE8(v30) = v27;
  v16 = v22;
  *&v31 = v22;
  *(&v31 + 1) = v29;
  *&v32 = v12;
  *(&v32 + 1) = v25;
  v33 = v26;
  v17 = v23;
  *&v34 = v23;
  BYTE8(v34) = v24;
  v35 = v46;
  *(a2 + 80) = v46;
  v18 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v18;
  *(a2 + 64) = v34;
  v19 = v31;
  *a2 = v30;
  *(a2 + 16) = v19;
  sub_21B1FA998(&v30, &v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36 = v14;
  LOBYTE(v37) = v15;
  *&v38 = v16;
  *(&v38 + 1) = v29;
  v39 = v12;
  v40 = v25;
  v41 = v26;
  v42 = v17;
  v43 = v24;
  v44 = v13;
  return sub_21B1F6F18(&v36);
}

unint64_t sub_21B1FA86C()
{
  result = qword_27CD70028;
  if (!qword_27CD70028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70028);
  }

  return result;
}

unint64_t sub_21B1FA8C0()
{
  result = qword_27CD70030;
  if (!qword_27CD70030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70030);
  }

  return result;
}

uint64_t sub_21B1FA914(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD70010, &qword_21B218220);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B1FA9D4()
{
  result = qword_27CD70040;
  if (!qword_27CD70040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70040);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_12PoirotBlocks17BlockExecutionLogV0E7ContentOSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B1FAA94(uint64_t a1, int a2)
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

uint64_t sub_21B1FAADC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21B1FAB64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B1FABAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_21B1FACA8()
{
  result = qword_27CD70048;
  if (!qword_27CD70048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70048);
  }

  return result;
}

unint64_t sub_21B1FAD00()
{
  result = qword_27CD70050;
  if (!qword_27CD70050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70050);
  }

  return result;
}

unint64_t sub_21B1FAD58()
{
  result = qword_27CD70058;
  if (!qword_27CD70058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70058);
  }

  return result;
}

unint64_t sub_21B1FADB0()
{
  result = qword_27CD70060;
  if (!qword_27CD70060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70060);
  }

  return result;
}

unint64_t sub_21B1FAE08()
{
  result = qword_27CD70068;
  if (!qword_27CD70068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70068);
  }

  return result;
}

unint64_t sub_21B1FAE60()
{
  result = qword_27CD70070;
  if (!qword_27CD70070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70070);
  }

  return result;
}

unint64_t sub_21B1FAEB8()
{
  result = qword_27CD70078;
  if (!qword_27CD70078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70078);
  }

  return result;
}

unint64_t sub_21B1FAF10()
{
  result = qword_27CD70080;
  if (!qword_27CD70080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70080);
  }

  return result;
}

unint64_t sub_21B1FAF68()
{
  result = qword_27CD70088;
  if (!qword_27CD70088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70088);
  }

  return result;
}

unint64_t sub_21B1FAFC0()
{
  result = qword_27CD70090;
  if (!qword_27CD70090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70090);
  }

  return result;
}

unint64_t sub_21B1FB018()
{
  result = qword_27CD70098;
  if (!qword_27CD70098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70098);
  }

  return result;
}

unint64_t sub_21B1FB070()
{
  result = qword_27CD700A0;
  if (!qword_27CD700A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700A0);
  }

  return result;
}

unint64_t sub_21B1FB0C8()
{
  result = qword_27CD700A8;
  if (!qword_27CD700A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700A8);
  }

  return result;
}

unint64_t sub_21B1FB120()
{
  result = qword_27CD700B0;
  if (!qword_27CD700B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700B0);
  }

  return result;
}

unint64_t sub_21B1FB178()
{
  result = qword_27CD700B8;
  if (!qword_27CD700B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700B8);
  }

  return result;
}

unint64_t sub_21B1FB1D0()
{
  result = qword_27CD700C0;
  if (!qword_27CD700C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700C0);
  }

  return result;
}

unint64_t sub_21B1FB228()
{
  result = qword_27CD700C8;
  if (!qword_27CD700C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700C8);
  }

  return result;
}

unint64_t sub_21B1FB280()
{
  result = qword_27CD700D0;
  if (!qword_27CD700D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700D0);
  }

  return result;
}

unint64_t sub_21B1FB2D8()
{
  result = qword_27CD700D8;
  if (!qword_27CD700D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700D8);
  }

  return result;
}

unint64_t sub_21B1FB330()
{
  result = qword_27CD700E0;
  if (!qword_27CD700E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700E0);
  }

  return result;
}

unint64_t sub_21B1FB388()
{
  result = qword_27CD700E8;
  if (!qword_27CD700E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700E8);
  }

  return result;
}

unint64_t sub_21B1FB3E0()
{
  result = qword_27CD700F0;
  if (!qword_27CD700F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700F0);
  }

  return result;
}

unint64_t sub_21B1FB438()
{
  result = qword_27CD700F8;
  if (!qword_27CD700F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700F8);
  }

  return result;
}

unint64_t sub_21B1FB490()
{
  result = qword_27CD70100;
  if (!qword_27CD70100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70100);
  }

  return result;
}

unint64_t sub_21B1FB4E8()
{
  result = qword_27CD70108;
  if (!qword_27CD70108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70108);
  }

  return result;
}

unint64_t sub_21B1FB540()
{
  result = qword_27CD70110;
  if (!qword_27CD70110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70110);
  }

  return result;
}

unint64_t sub_21B1FB598()
{
  result = qword_27CD70118;
  if (!qword_27CD70118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70118);
  }

  return result;
}

uint64_t sub_21B1FB5EC(uint64_t a1)
{
  v2 = sub_21B19796C(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = (a1 + 64);
  while (1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 3);
    v32 = *(v4 - 16);
    v7 = *(v4 - 1);
    v8 = *v4;

    sub_21B17CE94(v7, v8);

    sub_21B17CE94(v7, v8);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_21B1B9778(v5, v6);
    v12 = v2[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v2[3] >= v14)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v3;
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_21B203F64();
        v31 = v3;
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_21B201D08(v14, isUniquelyReferenced_nonNull_native);
      v16 = sub_21B1B9778(v5, v6);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_22;
      }

      v11 = v16;
      v31 = v3;
      if (v15)
      {
LABEL_10:

        goto LABEL_14;
      }
    }

    v2[(v11 >> 6) + 8] |= 1 << v11;
    v18 = (v2[6] + 16 * v11);
    *v18 = v5;
    v18[1] = v6;
    *(v2[7] + 8 * v11) = MEMORY[0x277D84F90];
    v19 = v2[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v2[2] = v21;
LABEL_14:
    v22 = v2[7];
    v23 = *(v22 + 8 * v11);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *(v22 + 8 * v11) = v23;
    v30 = v5;
    if ((v24 & 1) == 0)
    {
      v23 = sub_21B1D2A60(0, *(v23 + 2) + 1, 1, v23);
      *(v22 + 8 * v11) = v23;
    }

    v26 = *(v23 + 2);
    v25 = *(v23 + 3);
    if (v26 >= v25 >> 1)
    {
      *(v22 + 8 * v11) = sub_21B1D2A60((v25 > 1), v26 + 1, 1, v23);
    }

    v4 += 5;

    sub_21B17DAE4(v7, v8);
    v27 = *(v22 + 8 * v11);
    *(v27 + 16) = v26 + 1;
    v28 = v27 + 40 * v26;
    *(v28 + 32) = v30;
    *(v28 + 40) = v6;
    *(v28 + 48) = v32;
    *(v28 + 56) = v7;
    *(v28 + 64) = v8;
    v3 = v31 - 1;
    if (v31 == 1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

uint64_t sub_21B1FB858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = MEMORY[0x277D84F98];
  v52 = MEMORY[0x277D84F98];
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v24 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v24 >= v11)
    {

      return v45;
    }

    v10 = *(v7 + 8 * v24);
    ++v13;
  }

  while (!v10);
  v13 = v24;
  while (1)
  {
LABEL_11:
    while (1)
    {
      v25 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v26 = v25 | (v13 << 6);
      v27 = (*(a1 + 48) + 16 * v26);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(*(a1 + 56) + 8 * v26);
      if (!v30[2])
      {
        break;
      }

      v31 = v30[4] == a4 && v30[5] == a5;
      if (!v31 && (sub_21B20DB28() & 1) == 0)
      {
        break;
      }

      sub_21B1F9658(v14, v49);
      v15 = v50;
      v16 = v51;
      v17 = *a6;
      v18 = *(a6 + 8);
      v19 = *(a6 + 16);
      v20 = *(a6 + 24);
      v21 = *(a6 + 32);
      v22 = v49[1];
      *a6 = v49[0];
      *(a6 + 16) = v22;
      *(a6 + 32) = v15;
      v23 = *(a6 + 40);
      *(a6 + 40) = v16;
      sub_21B1FA360(v17, v18, v19, v20, v21, v23);

      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v32 = *(v45 + 16);
    if (*(v45 + 24) <= v32)
    {

      sub_21B201D08(v32 + 1, 1);
      v33 = v52;
    }

    else
    {

      v33 = v45;
    }

    v45 = v33;
    v34 = *(v33 + 40);
    sub_21B20DC88();
    sub_21B20D388();
    result = sub_21B20DCA8();
    v35 = v45 + 64;
    v36 = -1 << *(v45 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v45 + 64 + 8 * (v37 >> 6))) == 0)
    {
      break;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v45 + 64 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    v44 = (*(v45 + 48) + 16 * v39);
    *v44 = v28;
    v44[1] = v29;
    *(*(v45 + 56) + 8 * v39) = v30;
    ++*(v45 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v40 = 0;
  v41 = (63 - v36) >> 6;
  while (++v38 != v41 || (v40 & 1) == 0)
  {
    v42 = v38 == v41;
    if (v38 == v41)
    {
      v38 = 0;
    }

    v40 |= v42;
    v43 = *(v35 + 8 * v38);
    if (v43 != -1)
    {
      v39 = __clz(__rbit64(~v43)) + (v38 << 6);
      goto LABEL_30;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_21B1FBB30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852797802 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7762787 && a2 == 0xE300000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972616E6962 && a2 == 0xE600000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_21B20DB28();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_21B1FBCD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F436172747865 && a2 == 0xEC000000746E6574)
  {

    return 2;
  }

  else
  {
    v6 = sub_21B20DB28();

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

unint64_t sub_21B1FBDF4()
{
  result = qword_27CD70128;
  if (!qword_27CD70128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70128);
  }

  return result;
}

uint64_t sub_21B1FBE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21B20D348();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v42[1] = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B20C368();
  v45 = *(v10 - 8);
  v11 = v45;
  v46 = v10;
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v44 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *v3;
  v48 = *(v3 + 8);
  v14 = *(v3 + 24);
  v47 = *(v3 + 16);
  v43 = *(v3 + 32);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v16 = swift_allocObject();
  v53 = xmmword_21B2110C0;
  *(v16 + 16) = xmmword_21B2110C0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 32) = 0xD000000000000022;
  *(v16 + 40) = 0x800000021B2105B0;

  sub_21B20DC58();

  v42[0] = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v53;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 32) = 0xD00000000000001BLL;
  *(v17 + 40) = 0x800000021B2105E0;
  v51 = a1;
  v52 = a2;
  v58 = a3;
  sub_21B20DC58();

  v18 = sub_21B20C3A8();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_21B20C398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBD0, &unk_21B2197F0);
  v21 = *(v11 + 72);
  v22 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21B211420;
  sub_21B20C358();
  sub_21B20C348();
  v54 = v23;
  sub_21B1F3910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBE0, &qword_21B217FE0);
  sub_21B1865AC();
  sub_21B20D638();
  sub_21B20C378();
  v54 = v49;
  v55 = v48;
  v56 = v47;
  v57 = v14;
  sub_21B1F4230();
  v24 = v50;
  v25 = sub_21B20C388();
  if (v24)
  {

    return sub_21B1FC3D0();
  }

  v27 = v25;
  v28 = v51;
  v29 = v52;
  v30 = v26;

  sub_21B20D338();
  v50 = v30;
  v31 = sub_21B20D318();
  if (v32)
  {
    v33 = v31;
    v34 = v32;
    v35 = swift_allocObject();
    *(v35 + 16) = v53;
    *(v35 + 56) = MEMORY[0x277D837D0];
    *(v35 + 32) = v33;
    *(v35 + 40) = v34;
    v36 = v28;
    v37 = v58;
    sub_21B20DC58();

    v38 = swift_allocObject();
    *(v38 + 16) = v53;
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 32) = 0xD000000000000019;
    *(v38 + 40) = 0x800000021B210650;
    sub_21B20DC58();

    MEMORY[0x28223BE20](v39);
    v42[-4] = v29;
    v42[-3] = v37;
    v41 = v36;
    sub_21B1F257C(sub_21B1FC8F4, &v42[-6], v43);
    sub_21B17DAF8(v27, v50);

    return sub_21B1FC3D0();
  }

  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

uint64_t sub_21B1FC3D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21B2110C0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000020;
  *(v0 + 40) = 0x800000021B210600;
  sub_21B20DC58();
}

uint64_t sub_21B1FC48C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_21B20D348();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = a1[1];
  v36 = *a1;
  v37 = v11;
  v38 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v12 = swift_allocObject();
  v31 = xmmword_21B2110C0;
  *(v12 + 16) = xmmword_21B2110C0;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD000000000000011, 0x800000021B210590);
  MEMORY[0x21CEEBBB0](v36, *(&v36 + 1));
  MEMORY[0x21CEEBBB0](0x70797420666F2022, 0xEB00000000203A65);
  v13 = v37;
  LOBYTE(v32) = v37;
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](2763296, 0xE300000000000000);
  v14 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 32) = 0;
  *(v12 + 40) = 0xE000000000000000;
  sub_21B20DC58();

  v15 = v38;
  if (v38 >> 60 == 15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v31;
    *(v16 + 56) = v14;
    *(v16 + 32) = 0x3E4C4C554E3CLL;
    *(v16 + 40) = 0xE600000000000000;
    sub_21B20DC58();

    return sub_21B1FC914(&v36);
  }

  v39 = v4;
  v17 = *(&v37 + 1);
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      sub_21B17CEA8(*(&v37 + 1), v38);
      v22 = sub_21B20C6A8();
      v24 = v14;
      goto LABEL_10;
    }

LABEL_9:
    v24 = v14;
    sub_21B17CEA8(*(&v37 + 1), v38);
    sub_21B20D338();
    v22 = sub_21B20D318();
    if (!v23)
    {
      v30 = 0;
      goto LABEL_14;
    }

LABEL_10:
    v25 = v22;
    v26 = v23;
    v27 = swift_allocObject();
    *(v27 + 16) = v31;
    *(v27 + 56) = v24;
    *(v27 + 32) = v25;
    *(v27 + 40) = v26;
    sub_21B20DC58();
    sub_21B17DAE4(v17, v15);

    return sub_21B1FC914(&v36);
  }

  if (!v13)
  {
    goto LABEL_9;
  }

  sub_21B17CEA8(*(&v37 + 1), v38);
  sub_21B20D338();
  v18 = sub_21B20D318();
  if (v19)
  {
    v34 = v18;
    v35 = v19;
    v32 = 10;
    v33 = 0xE100000000000000;
    sub_21B17FBB0();
    v20 = sub_21B20D608();

    MEMORY[0x28223BE20](v21);
    *(&v31 - 4) = a3;
    *(&v31 - 3) = a4;
    v29 = a2;
    sub_21B1F2640(sub_21B1FCB3C, (&v31 - 3), v20);
    sub_21B17DAE4(v17, v15);

    return sub_21B1FC914(&v36);
  }

  v30 = 0;
LABEL_14:
  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

uint64_t sub_21B1FC914(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21B2110C0;
  BYTE8(v4) = 0;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0x203A444E45202A2ALL, 0xEF22207972746E45);
  MEMORY[0x21CEEBBB0](*a1, *(a1 + 8));
  MEMORY[0x21CEEBBB0](0x70797420666F2022, 0xEB00000000203A65);
  *&v4 = *(a1 + 16);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](2763296, 0xE300000000000000);
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = *(&v4 + 1);
  *(v2 + 40) = 0xE000000000000000;
  sub_21B20DC58();
}

uint64_t sub_21B1FCA7C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21B2110C0;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  sub_21B20DC58();
}

uint64_t sub_21B1FCB3C(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_21B1FCA7C(a1);
}

uint64_t BlockLogMetadata.blockName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_21B1FCBB0()
{
  v1 = 0x7079546B636F6C62;
  if (*v0 != 1)
  {
    v1 = 0x6D614E6B636F6C62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E6575716573;
  }
}

uint64_t sub_21B1FCC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1FD2A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B1FCC40(uint64_t a1)
{
  v2 = sub_21B1FCE7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1FCC7C(uint64_t a1)
{
  v2 = sub_21B1FCE7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BlockLogMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70130, "v^");
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v14 = *(v1 + 8);
  v10 = v1[2];
  v13[0] = v1[3];
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1FCE7C();
  sub_21B20DD08();
  v18 = 0;
  sub_21B20DA28();
  if (!v2)
  {
    v17 = v14;
    v16 = 1;
    sub_21B1AEA74();
    sub_21B20DA48();
    v15 = 2;
    sub_21B20D9E8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_21B1FCE7C()
{
  result = qword_27CD70138;
  if (!qword_27CD70138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70138);
  }

  return result;
}

uint64_t BlockLogMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70140, &qword_21B2192D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1FCE7C();
  sub_21B20DCD8();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_21B20D908();
    v19 = 1;
    sub_21B1ADA94();
    sub_21B20D918();
    v17 = v20;
    v18 = 2;
    v13 = sub_21B20D8C8();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v17;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21B1FD0F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21B1FD13C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21B1FD1A0()
{
  result = qword_27CD70148;
  if (!qword_27CD70148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70148);
  }

  return result;
}

unint64_t sub_21B1FD1F8()
{
  result = qword_27CD70150;
  if (!qword_27CD70150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70150);
  }

  return result;
}

unint64_t sub_21B1FD250()
{
  result = qword_27CD70158;
  if (!qword_27CD70158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70158);
  }

  return result;
}

uint64_t sub_21B1FD2A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEA00000000006449;
  if (v4 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079546B636F6C62 && a2 == 0xE900000000000065 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6B636F6C62 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_21B20DB28();

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

uint64_t LogEntry.init(name:type:data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

PoirotBlocks::LogEntry::EntryType_optional __swiftcall LogEntry.EntryType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21B20D828();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LogEntry.EntryType.rawValue.getter()
{
  v1 = 1852797802;
  v2 = 0x7972616E6962;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
  }

  if (*v0)
  {
    v1 = 7762787;
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

uint64_t sub_21B1FD4B4()
{
  v1 = *v0;
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B1FD560()
{
  *v0;
  *v0;
  *v0;
  sub_21B20D388();
}

uint64_t sub_21B1FD5F8()
{
  v1 = *v0;
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

void sub_21B1FD6AC(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1852797802;
  v4 = 0xE600000000000000;
  v5 = 0x7972616E6962;
  if (*v1 != 2)
  {
    v5 = 0x726F727265;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 7762787;
    v2 = 0xE300000000000000;
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

uint64_t LogEntry.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LogEntry.data.getter()
{
  v1 = *(v0 + 24);
  sub_21B17CE94(v1, *(v0 + 32));
  return v1;
}

uint64_t LogEntry.init(useCase:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21B20D348();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[4] = 0;
  v19[5] = 0xE000000000000000;
  swift_getErrorValue();
  sub_21B20DB08();
  sub_21B20D338();
  v13 = sub_21B20D308();
  v15 = v14;

  result = (*(v9 + 8))(v12, v8);
  if (v15 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

  v18 = 0xC000000000000000;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 3;
  if (v15 >> 60 != 15)
  {
    v18 = v15;
  }

  *(a4 + 24) = v17;
  *(a4 + 32) = v18;
  return result;
}

uint64_t sub_21B1FD950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1FDE58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B1FD978(uint64_t a1)
{
  v2 = sub_21B1FDBE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1FD9B4(uint64_t a1)
{
  v2 = sub_21B1FDBE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LogEntry.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70160, &qword_21B219488);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v22 = *(v1 + 16);
  v10 = v1[3];
  v17 = v1[4];
  v18 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1FDBE0();
  sub_21B20DD08();
  LOBYTE(v20) = 0;
  v12 = v19;
  sub_21B20D9E8();
  if (!v12)
  {
    v14 = v17;
    v13 = v18;
    LOBYTE(v20) = v22;
    v23 = 1;
    sub_21B1FDC34();
    sub_21B20DA48();
    v20 = v13;
    v21 = v14;
    v23 = 2;
    sub_21B17CE94(v13, v14);
    sub_21B17DBE4();
    sub_21B20D9D8();
    sub_21B17DAE4(v20, v21);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21B1FDBE0()
{
  result = qword_27CD70168;
  if (!qword_27CD70168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70168);
  }

  return result;
}

unint64_t sub_21B1FDC34()
{
  result = qword_27CD70170;
  if (!qword_27CD70170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70170);
  }

  return result;
}

unint64_t sub_21B1FDC8C()
{
  result = qword_27CD70178;
  if (!qword_27CD70178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70178);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_21B1FDD54()
{
  result = qword_27CD70180;
  if (!qword_27CD70180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70180);
  }

  return result;
}

unint64_t sub_21B1FDDAC()
{
  result = qword_27CD70188;
  if (!qword_27CD70188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70188);
  }

  return result;
}

unint64_t sub_21B1FDE04()
{
  result = qword_27CD70190;
  if (!qword_27CD70190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70190);
  }

  return result;
}

uint64_t sub_21B1FDE58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21B20DB28();

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

unint64_t sub_21B1FDF70()
{
  result = qword_27CD70198;
  if (!qword_27CD70198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70198);
  }

  return result;
}

uint64_t sub_21B1FDFC4(uint64_t *a1)
{
  v3 = v1;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  swift_beginAccess();

  v7 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 24);
  *(v3 + 24) = 0x8000000000000000;
  v11 = sub_21B1B9778(v5, v4);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v10;
  if (v9[3] >= v14)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v3 + 24) = v9;
      if (v10)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_21B204F60(v11, v5, v4, MEMORY[0x277D84F90], v9);
      goto LABEL_12;
    }

LABEL_10:
    sub_21B2037B8();
    *(v3 + 24) = v9;
    if (v2)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  sub_21B200DC4(v14, isUniquelyReferenced_nonNull_native);
  v15 = sub_21B1B9778(v5, v4);
  if ((v2 & 1) != (v16 & 1))
  {
    result = sub_21B20DBF8();
    __break(1u);
    return result;
  }

  v11 = v15;
  *(v3 + 24) = v9;
  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:

LABEL_12:
  v17 = v9[7];
  v18 = *(v17 + 8 * v11);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(v17 + 8 * v11) = v18;
  if ((v19 & 1) == 0)
  {
    v18 = sub_21B1D26D8(0, v18[2] + 1, 1, v18);
    *(v17 + 8 * v11) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_21B1D26D8((v20 > 1), v21 + 1, 1, v18);
    *(v17 + 8 * v11) = v18;
  }

  v18[2] = v21 + 1;
  v18[v21 + 4] = v6;
  return swift_endAccess();
}

uint64_t sub_21B1FE19C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB60, &qword_21B2111D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21B2110C0;

  v7 = a3;
  LogEntry.init(useCase:error:)(a1, a2, a3, v6 + 32);
  return v6;
}

uint64_t sub_21B1FE234@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_21B1FE268()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FE88, "|o");
  v2 = sub_21B20D268();

  v35 = v2;
  v33 = *(v2 + 16);
  if (!v33)
  {
LABEL_9:

    swift_beginAccess();
    v16 = *(v0 + 16);
    v17 = *(v16 + 16);

    if (!v17)
    {
      v20 = MEMORY[0x277D84F90];
LABEL_29:

      return v20;
    }

    v18 = 0;
    v19 = (v16 + 40);
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        goto LABEL_33;
      }

      v22 = *(v19 - 1);
      v21 = *v19;

      v22(&v36, v23);
      if (v34)
      {

        return v20;
      }

      v24 = v36;
      v25 = *(v36 + 16);
      v26 = *(v20 + 2);
      v27 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        goto LABEL_34;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v27 <= *(v20 + 3) >> 1)
      {
        if (!*(v24 + 16))
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v26 <= v27)
        {
          v28 = v26 + v25;
        }

        else
        {
          v28 = v26;
        }

        result = sub_21B1D2A60(result, v28, 1, v20);
        v20 = result;
        if (!*(v24 + 16))
        {
LABEL_11:

          if (v25)
          {
            goto LABEL_35;
          }

          goto LABEL_12;
        }
      }

      if ((*(v20 + 3) >> 1) - *(v20 + 2) < v25)
      {
        goto LABEL_36;
      }

      swift_arrayInitWithCopy();

      if (v25)
      {
        v29 = *(v20 + 2);
        v30 = __OFADD__(v29, v25);
        v31 = v29 + v25;
        if (v30)
        {
          goto LABEL_37;
        }

        *(v20 + 2) = v31;
      }

LABEL_12:
      ++v18;
      v19 += 2;
      if (v17 == v18)
      {
        goto LABEL_29;
      }
    }
  }

  v4 = 0;
  v5 = (v2 + 48);
  v32 = v0;
  while (v4 < *(v35 + 16))
  {
    v6 = *(v5 - 1);
    v7 = *v5;
    v8 = *(v5 - 2);
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = v6;
    v9[4] = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_21B1FEE30;
    *(v10 + 24) = v9;
    swift_beginAccess();
    v11 = *(v0 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_21B1D292C(0, v11[2] + 1, 1, v11);
      *(v0 + 16) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_21B1D292C((v13 > 1), v14 + 1, 1, v11);
    }

    ++v4;
    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_21B1FEE84;
    v15[5] = v10;
    v0 = v32;
    *(v32 + 16) = v11;
    swift_endAccess();

    v5 += 3;
    if (v33 == v4)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

char *sub_21B1FE624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = sub_21B20CB18();
  v48 = *(v44 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v44);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B20CAF8();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B20C368();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v43 = a1;
  v49 = a2;
  sub_21B1FFC78(a1, a2, a3, &v52);
  v17 = v52;
  v18 = v53;
  v19 = v54;
  v56 = v55;
  v20 = sub_21B20C3A8();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_21B20C398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBD0, &unk_21B2197F0);
  v23 = *(v12 + 72);
  v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v25 = swift_allocObject();
  v42 = xmmword_21B211420;
  *(v25 + 16) = xmmword_21B211420;
  sub_21B20C358();
  sub_21B20C348();
  v52 = v25;
  sub_21B1F3910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBE0, &qword_21B217FE0);
  sub_21B1865AC();
  sub_21B20D638();
  sub_21B20C378();
  v52 = v17;
  v53 = v18;
  v54 = v19;
  sub_21B191448();

  v26 = v51;
  v27 = sub_21B20C388();
  if (v26)
  {
  }

  else
  {
    v41 = v27;
    v51 = v28;
    v29 = v46;
    v30 = v47;
    v31 = v48;

    v52 = v17;
    v53 = v18;
    v54 = v19;
    v55 = v56;
    v32 = v49;

    sub_21B200678(v50);
    v40 = v18;
    sub_21B20CB08();
    v34 = sub_21B20CA78();
    v35 = *(v31 + 8);
    v48 = v36;
    v35(v30, v44);
    (*(v45 + 8))(v50, v29);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB60, &qword_21B2111D0);
    v16 = swift_allocObject();
    *(v16 + 1) = v42;
    v37 = v43;
    *(v16 + 4) = v43;
    *(v16 + 5) = v32;
    v16[48] = 0;
    v38 = v51;
    *(v16 + 7) = v41;
    *(v16 + 8) = v38;
    *(v16 + 9) = v37;
    *(v16 + 10) = v32;
    v16[88] = 1;
    v39 = v48;
    *(v16 + 12) = v34;
    *(v16 + 13) = v39;
  }

  return v16;
}

uint64_t sub_21B1FEB9C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21B1FEC00(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_21B1D292C(0, v6[2] + 1, 1, v6);
    *(v2 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_21B1D292C((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_21B1FEE18;
  v10[5] = v5;
  *(v2 + 16) = v6;
  return swift_endAccess();
}

uint64_t sub_21B1FED08(uint64_t *a1)
{
  v1 = *a1;

  sub_21B1FED88(v1);
}

uint64_t sub_21B1FED88(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 48);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      v5[0] = *(v2 - 2);
      v5[1] = v4;
      v5[2] = v3;

      sub_21B1FDFC4(v5);

      v2 += 3;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_21B1FEE50@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21B1FEE9C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21B20D348();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6 - 8);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v43 = a1[1];
  v44 = v10;
  v11 = *(a1 + 4);
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = a2 + 64;
    v39 = v12 - 1;
    v15 = MEMORY[0x277D84F90];
    v40 = v11;
    v41 = a3;
    do
    {
      v42 = v15;
      v16 = (v14 + 40 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= *(a2 + 16))
        {
          __break(1u);
          return result;
        }

        v18 = *v16;
        if (*(v16 - 16) == 3 && *v16 >> 60 != 15)
        {
          v20 = a2;
          v21 = v14;
          v23 = *(v16 - 3);
          v46 = *(v16 - 1);
          v22 = v46;
          v47 = v18;

          sub_21B17CE94(v22, v18);
          sub_21B17CE94(v22, v18);
          sub_21B20D338();
          sub_21B1FBDF4();
          v24 = sub_21B20D328();
          v26 = v25;
          sub_21B17DAE4(v22, v18);

          v27 = v22;
          v14 = v21;
          a2 = v20;
          result = sub_21B17DAE4(v27, v18);
          if (v26)
          {
            break;
          }
        }

        ++v17;
        v16 += 5;
        if (v12 == v17)
        {
          v11 = v40;
          a3 = v41;
          v15 = v42;
          goto LABEL_20;
        }
      }

      v28 = v42;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B1D3044(0, *(v28 + 16) + 1, 1, v28);
        v28 = result;
      }

      v30 = *(v28 + 16);
      v29 = *(v28 + 24);
      v31 = v28;
      if (v30 >= v29 >> 1)
      {
        result = sub_21B1D3044((v29 > 1), v30 + 1, 1, v28);
        v31 = result;
      }

      v13 = v17 + 1;
      *(v31 + 16) = v30 + 1;
      v15 = v31;
      v32 = v31 + 16 * v30;
      *(v32 + 32) = v24;
      *(v32 + 40) = v26;
      v33 = v39 == v17;
      v11 = v40;
      a3 = v41;
    }

    while (!v33);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

LABEL_20:

  v46 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F1C0, &unk_21B214CD0);
  sub_21B1FF9F8();
  v34 = sub_21B20D298();
  v36 = v35;

  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {

    v34 = 0;
    v36 = 0;
  }

  v38 = v43;
  *a3 = v44;
  *(a3 + 16) = v38;
  *(a3 + 32) = v11;
  *(a3 + 40) = v34;
  *(a3 + 48) = v36;
  return result;
}

uint64_t RecipeExecutionLog.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_21B1F3760(v2, v3);
}

uint64_t RecipeExecutionLog.errorString.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_21B1FF1B0()
{
  if (*v0)
  {
    result = 0x727453726F727265;
  }

  else
  {
    result = 0x617461646174656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_21B1FF1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_21B20DB28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727453726F727265 && a2 == 0xEB00000000676E69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21B20DB28();

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

uint64_t sub_21B1FF2D4(uint64_t a1)
{
  v2 = sub_21B1FF514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1FF310(uint64_t a1)
{
  v2 = sub_21B1FF514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeExecutionLog.encode(to:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD701A0, &qword_21B219800);
  v19 = *(v17 - 8);
  v3 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v5 = v16 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v11 = v1[4];
  v10 = v1[5];
  v16[1] = v1[6];
  v16[2] = v10;
  v12 = a1[3];
  v16[3] = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_21B1F3760(v6, v7);
  sub_21B1FF514();
  v13 = v17;
  sub_21B20DD08();
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v24 = v11;
  v25 = 0;
  sub_21B1F39EC();
  v14 = v18;
  sub_21B20D9D8();
  sub_21B198098(v20, v21);
  if (!v14)
  {
    LOBYTE(v20) = 1;
    sub_21B20D998();
  }

  return (*(v19 + 8))(v5, v13);
}

unint64_t sub_21B1FF514()
{
  result = qword_27CD701A8;
  if (!qword_27CD701A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD701A8);
  }

  return result;
}

uint64_t RecipeExecutionLog.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD701B0, &qword_21B219808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1FF514();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  sub_21B198044();
  sub_21B20D8B8();
  v11 = v26;
  v22 = v27;
  v23 = v28;
  v24 = v29;
  v25 = v30;
  LOBYTE(v26) = 1;
  v12 = sub_21B20D868();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  v15 = v11;
  v16 = v22;
  v17 = v23;
  a2[1] = v22;
  a2[2] = v17;
  v18 = v25;
  a2[3] = v24;
  a2[4] = v18;
  a2[5] = v12;
  a2[6] = v14;
  v19 = v15;
  sub_21B1F3760(v15, v16);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_21B198098(v19, v16);
}

uint64_t get_enum_tag_for_layout_string_12PoirotBlocks14RecipeMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21B1FF814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21B1FF870(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21B1FF8F4()
{
  result = qword_27CD701B8;
  if (!qword_27CD701B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD701B8);
  }

  return result;
}

unint64_t sub_21B1FF94C()
{
  result = qword_27CD701C0;
  if (!qword_27CD701C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD701C0);
  }

  return result;
}

unint64_t sub_21B1FF9A4()
{
  result = qword_27CD701C8;
  if (!qword_27CD701C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD701C8);
  }

  return result;
}

unint64_t sub_21B1FF9F8()
{
  result = qword_27CD701D0;
  if (!qword_27CD701D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6F1C0, &unk_21B214CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD701D0);
  }

  return result;
}

uint64_t sub_21B1FFA5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B1FFAA4(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_21B1FFC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a5();
  v6 = sub_21B20D378();
  fputs((v6 + 32), v5);
}

uint64_t sub_21B1FFC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  sub_21B1FFF54(a1, a2, a3, &v48);

  v5 = v48;
  v37 = v49;
  v6 = *(v4 + 16);
  if (v6)
  {
    v36 = v48;
    v51 = MEMORY[0x277D84F90];
    sub_21B19014C(0, v6, 0);
    v7 = v51;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF50, &qword_21B212508);
    v9 = 0;
    v41 = v4 + 32;
    v39 = v6;
    v40 = v4;
    while (v9 < *(v4 + 16))
    {
      v42 = v9 + 1;
      v43 = v7;
      v10 = *(v41 + 8 * v9);
      v11 = sub_21B20D7E8();
      v12 = v11;
      v13 = v10 + 64;
      v14 = 1 << *(v10 + 32);
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v16 = v15 & *(v10 + 64);
      v17 = (v14 + 63) >> 6;
      v44 = v11 + 64;
      v46 = v10;

      v18 = 0;
      v45 = v12;
      if (v16)
      {
        while (1)
        {
          v19 = __clz(__rbit64(v16));
          v16 &= v16 - 1;
LABEL_14:
          v22 = v19 | (v18 << 6);
          v23 = (*(v46 + 48) + 16 * v22);
          v24 = v23[1];
          v47 = *v23;
          sub_21B17FB4C(*(v46 + 56) + 40 * v22, &v48);
          v25 = v50;
          __swift_project_boxed_opaque_existential_1(&v48, v50);

          v26 = sub_21B1D0C74(v25);
          v28 = v27;
          result = __swift_destroy_boxed_opaque_existential_1(&v48);
          v12 = v45;
          *(v44 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
          v29 = (v45[6] + 16 * v22);
          *v29 = v47;
          v29[1] = v24;
          v30 = (v45[7] + 16 * v22);
          *v30 = v26;
          v30[1] = v28;
          v31 = v45[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            break;
          }

          v45[2] = v33;
          if (!v16)
          {
            goto LABEL_9;
          }
        }

LABEL_24:
        __break(1u);
        break;
      }

LABEL_9:
      v20 = v18;
      while (1)
      {
        v18 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_24;
        }

        if (v18 >= v17)
        {
          break;
        }

        v21 = *(v13 + 8 * v18);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      v7 = v43;
      v51 = v43;
      v35 = *(v43 + 16);
      v34 = *(v43 + 24);
      if (v35 >= v34 >> 1)
      {
        result = sub_21B19014C((v34 > 1), v35 + 1, 1);
        v7 = v51;
      }

      *(v7 + 16) = v35 + 1;
      *(v7 + 8 * v35 + 32) = v12;
      v9 = v42;
      v4 = v40;
      if (v42 == v39)
      {

        v5 = v36;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_22:
    *a4 = v5;
    *(a4 + 8) = v37;
    *(a4 + 24) = v7;
  }

  return result;
}

uint64_t sub_21B1FFF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v74 = a1;
  v75 = a4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF28, &qword_21B2124D8);
  v70 = *(v73 - 8);
  v6 = *(v70 + 64);
  v7 = MEMORY[0x28223BE20](v73);
  v72 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v69 - v9;
  v86 = type metadata accessor for DatasetColumnDescription();
  v89 = *(v86 - 8);
  v10 = *(v89 + 64);
  v11 = MEMORY[0x28223BE20](v86);
  v71 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v69 - v14;
  MEMORY[0x28223BE20](v13);
  v85 = &v69 - v16;
  v17 = sub_21B20CCE8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v91 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(a3 + 16);
  v76 = a2;
  if (!v78)
  {
LABEL_26:
    v54 = sub_21B20D268();

    v55 = *(v54 + 16);
    if (v55)
    {
      v93[0] = MEMORY[0x277D84F90];
      sub_21B18FDB0(0, v55, 0);
      v56 = v93[0];
      v57 = v54 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
      v58 = *(v70 + 72);
      v59 = v73;
      v60 = v72;
      v61 = v71;
      do
      {
        v62 = v79;
        sub_21B2053F4(v57, v79);
        sub_21B205464(v62, v60);
        v63 = *(v60 + 8);

        sub_21B1867B4(v60 + *(v59 + 48), v61);
        v93[0] = v56;
        v65 = *(v56 + 16);
        v64 = *(v56 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_21B18FDB0(v64 > 1, v65 + 1, 1);
          v56 = v93[0];
        }

        *(v56 + 16) = v65 + 1;
        sub_21B1867B4(v61, v56 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v65);
        v57 += v58;
        --v55;
      }

      while (v55);
    }

    else
    {

      v56 = MEMORY[0x277D84F90];
    }

    v66 = v75;
    v67 = v76;
    *v75 = v74;
    v66[1] = v67;
    v66[2] = v56;
  }

  v21 = 0;
  v77 = a3 + 32;
  v84 = (v19 + 16);
  v81 = (v19 + 8);
  v22 = MEMORY[0x277D84F98];
  v82 = v17;
  v83 = v15;
LABEL_4:
  v23 = *(v77 + 8 * v21);
  v80 = v21 + 1;
  v24 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(v23 + 64);
  v28 = (v25 + 63) >> 6;
  v90 = v23;
  swift_bridgeObjectRetain_n();
  v29 = 0;
  v87 = v28;
  for (i = v24; ; v24 = i)
  {
    if (!v27)
    {
      while (1)
      {
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_35;
        }

        if (v30 >= v28)
        {
          break;
        }

        v27 = *(v24 + 8 * v30);
        ++v29;
        if (v27)
        {
          v29 = v30;
          goto LABEL_15;
        }
      }

      v21 = v80;
      if (v80 == v78)
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

LABEL_15:
    v31 = __clz(__rbit64(v27)) | (v29 << 6);
    v32 = (*(v90 + 48) + 16 * v31);
    v34 = *v32;
    v33 = v32[1];
    sub_21B17FB4C(*(v90 + 56) + 40 * v31, v94);
    v93[0] = v34;
    v93[1] = v33;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    swift_getDynamicType();

    v35 = v91;
    sub_21B20CDD8();
    __swift_project_boxed_opaque_existential_1(v94, v95);
    swift_getDynamicType();

    v36 = sub_21B20CDE8();
    v38 = v85;
    v37 = v86;
    (*v84)(&v85[*(v86 + 24)], v35, v17);
    *v38 = v34;
    *(v38 + 1) = v33;
    v38[16] = v36 & 1;
    v38[*(v37 + 28)] = 0;
    v39 = v38;
    v40 = v83;
    sub_21B1867B4(v39, v83);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v22;
    v43 = sub_21B1B9778(v34, v33);
    v44 = v22[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      break;
    }

    v47 = v42;
    if (v22[3] >= v46)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v22 = v92;
        if (v42)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_21B20398C();
        v22 = v92;
        if (v47)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_21B2010D8(v46, isUniquelyReferenced_nonNull_native);
      v48 = sub_21B1B9778(v34, v33);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_37;
      }

      v43 = v48;
      v22 = v92;
      if (v47)
      {
LABEL_8:
        sub_21B186750(v40, v22[7] + *(v89 + 72) * v43);

        goto LABEL_9;
      }
    }

    v22[(v43 >> 6) + 8] |= 1 << v43;
    v50 = (v22[6] + 16 * v43);
    *v50 = v34;
    v50[1] = v33;
    sub_21B1867B4(v40, v22[7] + *(v89 + 72) * v43);
    v51 = v22[2];
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (v52)
    {
      goto LABEL_36;
    }

    v22[2] = v53;
LABEL_9:
    v27 &= v27 - 1;
    v17 = v82;
    (*v81)(v91, v82);
    sub_21B1BC13C(v93);
    v28 = v87;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_21B20DBF8();
  __break(1u);
  return result;
}