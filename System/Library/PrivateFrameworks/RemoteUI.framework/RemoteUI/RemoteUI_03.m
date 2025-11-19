uint64_t sub_21B9DE76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21B9DE818;

  return RemoteUIDataSource.data(for:)(a1, a2, a3);
}

uint64_t sub_21B9DE818(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t RemoteUIDataSource.data(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v8 = sub_21BA860AC();
  v4[5] = v8;
  v4[6] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[7] = v9;
  v12 = (*(a3 + 8) + **(a3 + 8));
  v10 = swift_task_alloc();
  v4[8] = v10;
  *v10 = v4;
  v10[1] = sub_21B9DEAC0;

  return v12(v9, a1, a2, a3);
}

uint64_t sub_21B9DEAC0()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21B9DEE70, 0, 0);
  }

  else
  {
    v8 = (*(v2[3] + 16) + **(v2[3] + 16));
    v3 = swift_task_alloc();
    v2[10] = v3;
    *v3 = v2;
    v3[1] = sub_21B9DECB8;
    v4 = v2[3];
    v5 = v2[2];
    v6 = v2[7];

    return v8(v6, v5, v4);
  }
}

uint64_t sub_21B9DECB8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v7 = sub_21B9DEED4;
  }

  else
  {
    *(v6 + 96) = a2;
    *(v6 + 104) = a1;
    v7 = sub_21B9DEDEC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21B9DEDEC()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];
  v3 = v0[12];
  v2 = v0[13];

  return v1(v2, v3);
}

uint64_t sub_21B9DEE70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B9DEED4()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t RemoteUIDataSource.request(for:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (*(a5 + 8) + **(a5 + 8));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_21B9AC1F4;

  return v12(a1, a2, a4, a5);
}

uint64_t RemoteUIDataSource.data(for:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 16) + **(a4 + 16));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21B9DFD80;

  return v10(a1, a3, a4);
}

uint64_t RemoteUIDataSource.data(for:context:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[12] = a3;
  v10 = sub_21BA860AC();
  v5[15] = v10;
  v5[16] = *(v10 - 8);
  v11 = swift_task_alloc();
  v12 = *a2;
  v13 = a2[1];
  v5[17] = v11;
  v5[18] = v12;
  v14 = a2[2];
  v15 = a2[3];
  v5[19] = v13;
  v5[20] = v14;
  v16 = a2[4];
  v5[21] = v15;
  v5[22] = v16;
  v5[2] = v12;
  v5[3] = v13;
  v5[4] = v14;
  v5[5] = v15;
  v5[6] = v16;
  v18 = swift_task_alloc();
  v5[23] = v18;
  *v18 = v5;
  v18[1] = sub_21B9DF2F4;

  return RemoteUIDataSource.request(for:context:)(v11, a1, v17, a3, a4);
}

uint64_t sub_21B9DF2F4()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21B9DF63C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 160);
    *(v2 + 56) = *(v2 + 144);
    *(v2 + 72) = v3;
    *(v2 + 80) = *(v2 + 168);
    v4 = swift_task_alloc();
    *(v2 + 200) = v4;
    *v4 = v2;
    v4[1] = sub_21B9DF484;
    v6 = *(v2 + 104);
    v7 = *(v2 + 96);
    v8 = *(v2 + 136);

    return RemoteUIDataSource.data(for:context:)(v8, v5, v7, v6);
  }
}

uint64_t sub_21B9DF484(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 208) = v2;

  if (v2)
  {
    v7 = sub_21B9DF6A0;
  }

  else
  {
    *(v6 + 216) = a2;
    *(v6 + 224) = a1;
    v7 = sub_21B9DF5B8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21B9DF5B8()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];
  v3 = v0[27];
  v2 = v0[28];

  return v1(v2, v3);
}

uint64_t sub_21B9DF63C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B9DF6A0()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21B9DF748()
{
  sub_21B9DF784();
  sub_21BA86EAC();
  return v1;
}

unint64_t sub_21B9DF784()
{
  result = qword_27CDA5020[0];
  if (!qword_27CDA5020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA5020);
  }

  return result;
}

uint64_t type metadata accessor for RemoteLoaderError()
{
  result = qword_27CDA50B0;
  if (!qword_27CDA50B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B9DF888()
{
  v0 = sub_21BA860AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t dispatch thunk of RemoteUIDataSource.request(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21B9AC1F4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RemoteUIDataSource.data(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21B9DFB3C;

  return v9(a1, a2, a3);
}

{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21B9DFD84;

  return v9(a1, a2, a3);
}

uint64_t sub_21B9DFB3C(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

double sub_21B9DFD88@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_21BA878EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!sub_21BA866EC())
  {
    sub_21BA878DC();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE8], v4);
  v8 = sub_21BA8792C();

  (*(v5 + 8))(v7, v4);
  [a1 size];
  [a1 size];
  sub_21BA87B2C();
  sub_21BA86AEC();
  *&v11[8] = v12;
  *&v11[24] = v13;
  *&v11[40] = v14;
  v9 = *&v11[18];
  *(a2 + 18) = *&v11[2];
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v9;
  result = *&v11[34];
  *(a2 + 50) = *&v11[34];
  *(a2 + 64) = *&v11[48];
  return result;
}

unint64_t sub_21B9DFF68()
{
  result = qword_27CD9DA20;
  if (!qword_27CD9DA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DA18);
    sub_21B9DFFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DA20);
  }

  return result;
}

unint64_t sub_21B9DFFF4()
{
  result = qword_27CD9DA28;
  if (!qword_27CD9DA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DA28);
  }

  return result;
}

uint64_t sub_21B9E0094()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  v5 = v1;
  v6 = v4;
  v7 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA18);
  v9 = sub_21B9DFF68();

  return MEMORY[0x2821E78D0](v6, v1, 0, sub_21B9E0254, v3, v8, v9);
}

uint64_t sub_21B9E015C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21B9E01A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21B9E01F0()
{
  result = qword_27CD9DA38;
  if (!qword_27CD9DA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DA38);
  }

  return result;
}

uint64_t sub_21B9E0384()
{
  v0 = sub_21BA8673C();
  __swift_allocate_value_buffer(v0, qword_27CDA5228);
  __swift_project_value_buffer(v0, qword_27CDA5228);
  return sub_21BA8672C();
}

uint64_t sub_21B9E046C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21BA8673C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_21BA8672C();
}

uint64_t sub_21B9E0508(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_21BA8673C();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_21B9E0580@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_21BA8673C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_21B9E0628()
{
  v1 = v0;

  return sub_21BA878CC();
}

id sub_21B9E0650(uint64_t a1)
{
  v2 = [v1 imageByApplyingSymbolConfiguration_];

  return v2;
}

void *sub_21B9E068C()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_21BA8820C();
    v7 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B94B4EC(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_21B9E07DC()
{
  sub_21B9E0818();
  sub_21BA86EAC();
  return v1;
}

unint64_t sub_21B9E0818()
{
  result = qword_27CDA5268[0];
  if (!qword_27CDA5268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA5268);
  }

  return result;
}

uint64_t sub_21B9E08A8()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  if (*(v0 + 72) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_21BA8820C();
    v7 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9B01C4(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_21B9E0A08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BA86E9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for LazyContentElement();
  sub_21B9AFF80(v1 + *(v10 + 44), v9, &qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21B9AFD2C(v9, a1);
  }

  sub_21BA8820C();
  v12 = sub_21BA8740C();
  sub_21BA8670C();

  sub_21BA86E8C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t type metadata accessor for LazyContentElement()
{
  result = qword_27CDA5710;
  if (!qword_27CDA5710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B9E0C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000021BAA4710 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_21BA8899C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21B9E0CDC(uint64_t a1)
{
  v2 = sub_21B9E33D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B9E0D18(uint64_t a1)
{
  v2 = sub_21B9E33D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B9E0D54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA48);
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  v6 = type metadata accessor for LazyContentElement();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  *(v9 + 5) = KeyPath;
  v9[48] = 0;
  *(v9 + 7) = swift_getKeyPath();
  *(v9 + 8) = 0;
  v9[72] = 0;
  v11 = swift_getKeyPath();
  *(v9 + 10) = v11;
  v9[88] = 0;
  v12 = *(v7 + 52);
  *&v9[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  v23 = v12;
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = Decoder.decodeRUIID()();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return sub_21B9ABAAC(&v9[v23], &qword_27CD9CEA8);
  }

  else
  {
    v19 = v3;
    v20 = KeyPath;
    v24 = v11;
    *v9 = v13;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21B9E33D4();
    sub_21BA88C0C();
    v15 = sub_21BA887CC();
    v9[24] = (v15 == 2) | v15 & 1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21BA88BEC();
    v17 = v26;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    *(v9 + 4) = SingleValueDecodingContainer.ruiXMLElement.getter(v17);
    v18 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA58);
    sub_21B9E3428();
    sub_21BA889CC();
    (*(v22 + 8))(v5, v19);
    *(v9 + 2) = v28;
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_21B9E34AC(v9, v21);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21B9E3510(v9);
  }
}

uint64_t sub_21B9E11F8@<X0>(uint64_t *a1@<X8>)
{
  result = RUIViewContent.anyView.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21B9E1224()
{
  v0[2] = sub_21BA87FEC();
  v0[3] = sub_21BA87FDC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21B9B1A4C;

  return sub_21B9E12D0();
}

uint64_t sub_21B9E12D0()
{
  v1[3] = v0;
  v2 = sub_21BA8673C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = sub_21BA87D1C();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_21BA860AC();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  v1[16] = swift_task_alloc();
  v5 = sub_21BA864AC();
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_21BA87FEC();
  v1[21] = sub_21BA87FDC();
  v7 = sub_21BA87F9C();
  v1[22] = v7;
  v1[23] = v6;

  return MEMORY[0x2822009F8](sub_21B9E1540, v7, v6);
}

uint64_t sub_21B9E1540()
{
  v29 = v0;
  if ((sub_21B9E299C() & 1) == 0)
  {
    v5 = v0[7];
    v6 = v0[4];
    v7 = v0[5];

    v8 = sub_21B9E0270();
    (*(v7 + 16))(v5, v8, v6);
    v9 = sub_21BA8671C();
    v10 = sub_21BA8821C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[7];
    v13 = v0[4];
    v14 = v0[5];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_21B9B2A60(0xD000000000000018, 0x800000021BAA4730, &v28);
      _os_log_impl(&dword_21B93D000, v9, v10, "%s skipping update of placeholder in cache", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x21CEFF180](v16, -1, -1);
      MEMORY[0x21CEFF180](v15, -1, -1);
    }

    (*(v14 + 8))(v12, v13);
    goto LABEL_15;
  }

  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_21B9E0A08(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[16];

    sub_21B9ABAAC(v4, &qword_27CD9DBA0);
LABEL_15:

    v26 = v0[1];

    return v26();
  }

  (*(v0[18] + 32))(v0[20], v0[16], v0[17]);
  v17 = sub_21B9E08A8();
  v0[24] = v17;
  if (!v17)
  {
    (*(v0[18] + 8))(v0[20], v0[17]);
LABEL_14:

    goto LABEL_15;
  }

  v19 = v18;
  v20 = sub_21B9E068C();
  v0[25] = v20;
  if (!v20)
  {
    (*(v0[18] + 8))(v0[20], v0[17]);
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  ObjectType = swift_getObjectType();
  v27 = (*(v19 + 8) + **(v19 + 8));
  v22 = swift_task_alloc();
  v0[26] = v22;
  *v22 = v0;
  v22[1] = sub_21B9E1928;
  v23 = v0[20];
  v24 = v0[15];

  return v27(v24, v23, ObjectType, v19);
}

uint64_t sub_21B9E1928()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_21B9E26D8;
  }

  else
  {
    v5 = sub_21B9E1A64;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21B9E1A64()
{
  v145 = v0;

  v1 = objc_opt_self();
  v2 = [v1 sharedURLCache];
  v3 = sub_21BA8606C();
  v4 = [v2 cachedResponseForRequest_];

  if (v4)
  {
    v5 = v0[27];
    v6 = [v4 data];
    v7 = sub_21BA864DC();
    v9 = v8;

    v10 = Data.xmlElement()();
    if (v5)
    {
      (*(v0[14] + 8))(v0[15], v0[13]);
      sub_21B9B37F0(v7, v9);

      v12 = v0[5];
      v11 = v0[6];
      v13 = v0[4];
      v14 = sub_21B9E0270();
      (*(v12 + 16))(v11, v14, v13);
      v15 = v5;
      v16 = sub_21BA8671C();
      v17 = sub_21BA881FC();

      v18 = os_log_type_enabled(v16, v17);
      v136 = v0[25];
      v19 = v0[20];
      v20 = v0[17];
      v21 = v0[18];
      v23 = v0[5];
      v22 = v0[6];
      v24 = v0[4];
      if (v18)
      {
        v132 = v0[4];
        v25 = swift_slowAlloc();
        v129 = v19;
        v26 = swift_slowAlloc();
        v144[0] = v26;
        *v25 = 136315138;
        v0[2] = v5;
        v27 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DEB0);
        v28 = sub_21BA87D2C();
        v122 = v22;
        v30 = sub_21B9B2A60(v28, v29, v144);

        *(v25 + 4) = v30;
        _os_log_impl(&dword_21B93D000, v16, v17, "Unable to update parentCache with error: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x21CEFF180](v26, -1, -1);
        MEMORY[0x21CEFF180](v25, -1, -1);

        swift_unknownObjectRelease();
        (*(v23 + 8))(v122, v132);
        (*(v21 + 8))(v129, v20);
      }

      else
      {

        swift_unknownObjectRelease();
        (*(v23 + 8))(v22, v24);
        (*(v21 + 8))(v19, v20);
      }
    }

    else
    {
      v57 = v10;
      v58 = v0[25];
      sub_21B9B37F0(v7, v9);
      v59 = sub_21BA6373C(v58);
      if (v59)
      {
        v60 = v59;
        v61 = sub_21BA6347C(0x6C6F486563616C70, 0xEB00000000726564);
        v62 = v0[3];
        v142 = v60;
        if (v61)
        {
          v63 = v61;
          v64 = [*(v62 + 32) children];
          type metadata accessor for RUIXMLElement(0);
          sub_21BA87F0C();

          sub_21BA65214(v63);
        }

        else
        {
          v83 = objc_allocWithZone(RUIXMLElement);
          v84 = sub_21BA87C8C();
          v85 = [v83 initWithName_];

          v86 = *(v62 + 32);
          v63 = v85;
          v87 = [v86 children];
          if (!v87)
          {
            type metadata accessor for RUIXMLElement(0);
            sub_21BA87F0C();
            v87 = sub_21BA87EFC();
          }

          [v63 appendChildren_];

          [v60 appendChild_];
        }

        v89 = v0[11];
        v88 = v0[12];
        v90 = v0[10];
        v91 = [v57 xmlString];
        sub_21BA87CBC();

        sub_21BA87CFC();
        v92 = sub_21BA87CCC();
        v94 = v93;

        (*(v89 + 8))(v88, v90);
        if (v94 >> 60 == 15)
        {
          v95 = v0[25];
          v139 = v0[20];
          v96 = v0[17];
          v97 = v0[18];
          v98 = v0[14];
          v99 = v0[15];
          v100 = v0[13];

          swift_unknownObjectRelease();
          (*(v98 + 8))(v99, v100);
          (*(v97 + 8))(v139, v96);
        }

        else
        {
          v135 = [v4 response];
          v101 = [v4 userInfo];
          if (v101)
          {
            v102 = v101;
            v103 = sub_21BA87BCC();
          }

          else
          {
            v103 = 0;
          }

          v104 = [v4 storagePolicy];
          sub_21B9B9158(v92, v94);
          v140 = v92;
          v105 = sub_21BA864CC();
          if (v103)
          {
            v106 = sub_21BA87BBC();
          }

          else
          {
            v106 = 0;
          }

          loga = v0[25];
          v128 = v0[17];
          v131 = v0[20];
          v107 = v0[15];
          v119 = v0[14];
          v121 = v0[13];
          v125 = v0[18];
          v108 = [objc_allocWithZone(MEMORY[0x277CCA8F0]) initWithResponse:v135 data:v105 userInfo:v106 storagePolicy:v104];

          sub_21B9B91AC(v140, v94);
          v109 = [v1 sharedURLCache];
          v110 = sub_21BA8606C();
          [v109 storeCachedResponse:v108 forRequest:v110];

          swift_unknownObjectRelease();
          sub_21B9B91AC(v140, v94);

          (*(v119 + 8))(v107, v121);
          (*(v125 + 8))(v131, v128);
        }
      }

      else
      {
        v66 = v0[9];
        v67 = v0[4];
        v68 = v0[5];
        v69 = sub_21B9E0270();
        (*(v68 + 16))(v66, v69, v67);
        v70 = v57;
        v71 = sub_21BA8671C();
        v72 = sub_21BA881FC();

        v73 = os_log_type_enabled(v71, v72);
        v120 = v0[20];
        v124 = v0[25];
        v75 = v0[17];
        v74 = v0[18];
        v76 = v0[14];
        v138 = v0[13];
        v143 = v0[15];
        v134 = v0[9];
        v77 = v0[5];
        v127 = v0[4];
        if (v73)
        {
          v118 = v0[17];
          v78 = swift_slowAlloc();
          log = v70;
          v79 = swift_slowAlloc();
          v144[0] = v79;
          *v78 = 136315394;
          *(v78 + 4) = sub_21B9B2A60(0xD000000000000018, 0x800000021BAA4730, v144);
          *(v78 + 12) = 2080;
          v116 = v74;
          v80 = RUIXMLElement.xmlLogString.getter();
          v82 = sub_21B9B2A60(v80, v81, v144);

          *(v78 + 14) = v82;
          _os_log_impl(&dword_21B93D000, v71, v72, "%s Unable to find lazyUI element in parent cached xml: %s", v78, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CEFF180](v79, -1, -1);
          MEMORY[0x21CEFF180](v78, -1, -1);

          swift_unknownObjectRelease();
          (*(v77 + 8))(v134, v127);
          (*(v76 + 8))(v143, v138);
          (*(v116 + 8))(v120, v118);
        }

        else
        {

          swift_unknownObjectRelease();
          (*(v77 + 8))(v134, v127);
          (*(v76 + 8))(v143, v138);
          (*(v74 + 8))(v120, v75);
        }
      }
    }
  }

  else
  {
    v31 = v0[19];
    v32 = v0[20];
    v33 = v0[17];
    v34 = v0[18];
    v35 = v0[8];
    v36 = v0[4];
    v37 = v0[5];
    v38 = sub_21B9E0270();
    (*(v37 + 16))(v35, v38, v36);
    (*(v34 + 16))(v31, v32, v33);
    v39 = sub_21BA8671C();
    v126 = sub_21BA8821C();
    v40 = os_log_type_enabled(v39, v126);
    v41 = v0[19];
    v42 = v0[20];
    v43 = v0[17];
    v44 = v0[18];
    v45 = v0[14];
    v46 = v0[15];
    v137 = v0[8];
    v141 = v0[13];
    v47 = v0[5];
    v130 = v0[25];
    v133 = v0[4];
    if (v40)
    {
      v48 = swift_slowAlloc();
      v123 = v42;
      v49 = swift_slowAlloc();
      v144[0] = v49;
      *v48 = 136315394;
      *(v48 + 4) = sub_21B9B2A60(0xD000000000000018, 0x800000021BAA4730, v144);
      *(v48 + 12) = 2080;
      v50 = sub_21BA863FC();
      v51 = v43;
      v115 = v43;
      v117 = v46;
      v52 = v50;
      v54 = v53;
      v55 = *(v44 + 8);
      v55(v41, v51);
      v56 = sub_21B9B2A60(v52, v54, v144);

      *(v48 + 14) = v56;
      _os_log_impl(&dword_21B93D000, v39, v126, "%s Parent url %s is not cached, skipping update", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEFF180](v49, -1, -1);
      MEMORY[0x21CEFF180](v48, -1, -1);

      swift_unknownObjectRelease();
      (*(v47 + 8))(v137, v133);
      (*(v45 + 8))(v117, v141);
      v55(v123, v115);
    }

    else
    {

      swift_unknownObjectRelease();
      v65 = *(v44 + 8);
      v65(v41, v43);
      (*(v47 + 8))(v137, v133);
      (*(v45 + 8))(v46, v141);
      v65(v42, v43);
    }
  }

  v111 = v0[1];

  return v111();
}

uint64_t sub_21B9E26D8()
{
  v32 = v0;

  v1 = v0[27];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = sub_21B9E0270();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_21BA8671C();
  v8 = sub_21BA881FC();

  if (os_log_type_enabled(v7, v8))
  {
    v25 = v0[25];
    v9 = v0[18];
    v28 = v0[17];
    v29 = v0[20];
    v10 = v0[5];
    v26 = v0[4];
    v27 = v0[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315138;
    v0[2] = v1;
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DEB0);
    v14 = sub_21BA87D2C();
    v16 = sub_21B9B2A60(v14, v15, &v31);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_21B93D000, v7, v8, "Unable to update parentCache with error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CEFF180](v12, -1, -1);
    MEMORY[0x21CEFF180](v11, -1, -1);

    swift_unknownObjectRelease();
    (*(v10 + 8))(v27, v26);
    (*(v9 + 8))(v29, v28);
  }

  else
  {
    v17 = v0[25];
    v30 = v0[20];
    v18 = v0[17];
    v19 = v0[18];
    v20 = v0[5];
    v21 = v0[6];
    v22 = v0[4];

    swift_unknownObjectRelease();
    (*(v20 + 8))(v21, v22);
    (*(v19 + 8))(v30, v18);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_21B9E299C()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24) == 1)
  {
    v6 = *(v0 + 40);
    if (*(v0 + 48) == 1)
    {
      v7 = v6;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = v3;

      sub_21BA8820C();
      v10 = sub_21BA8740C();
      sub_21BA8670C();

      sub_21BA86E8C();
      swift_getAtKeyPath();
      sub_21B94B4EC(v6, 0);
      (*(v2 + 8))(v5, v9);
      v6 = v20;
      if (!v20)
      {
        goto LABEL_10;
      }
    }

    v11 = sub_21BA6347C(0x6C6F486563616C70, 0xEB00000000726564);
    if (v11)
    {
      v12 = v11;
      v13 = [*(v0 + 32) children];
      type metadata accessor for RUIXMLElement(0);
      v14 = sub_21BA87F0C();

      v15 = [v12 children];
      v16 = sub_21BA87F0C();

      v17 = sub_21B9E2BE0(v14, v16);

      v8 = v17 ^ 1;
      return v8 & 1;
    }

LABEL_10:
    v8 = 1;
    return v8 & 1;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_21B9E2BE0(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v43 = a2;
    v44 = sub_21BA884DC();
    a2 = v43;
    v2 = v44;
    if (!(a2 >> 62))
    {
LABEL_3:
      if (v2 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return 0;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(a2 >> 62))
    {
      goto LABEL_3;
    }
  }

  if (v2 != sub_21BA884DC())
  {
    return 0;
  }

LABEL_4:

  while (1)
  {
    v7 = sub_21B9E3034();
    if (!v7)
    {

      return 1;
    }

    v9 = v7;
    v10 = v8;
    v11 = [v7 name];
    v12 = sub_21BA87CBC();
    v14 = v13;

    v15 = [v10 name];
    v16 = sub_21BA87CBC();
    v18 = v17;

    if (v12 == v16 && v14 == v18)
    {
    }

    else
    {
      v20 = sub_21BA8899C();

      if ((v20 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v21 = [v9 attributtes];
    v22 = sub_21BA87BCC();

    v23 = [v10 attributtes];
    v24 = sub_21BA87BCC();

    LOBYTE(v23) = sub_21B9E3688(v22, v24);

    if ((v23 & 1) == 0)
    {
LABEL_29:

      goto LABEL_33;
    }

    v25 = [v9 stringValue];
    if (v25)
    {
      v26 = v25;
      v27 = sub_21BA87CBC();
      v29 = v28;

      v30 = sub_21BA4588C(v27, v29);
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = [v10 stringValue];
    if (!v33)
    {
      if (v32)
      {
        goto LABEL_31;
      }

      goto LABEL_6;
    }

    v34 = v33;
    v35 = sub_21BA87CBC();
    v37 = v36;

    v38 = sub_21BA4588C(v35, v37);
    v40 = v39;

    if (!v32)
    {
      break;
    }

    if (!v40)
    {
      goto LABEL_31;
    }

    if (v30 == v38 && v32 == v40)
    {
    }

    else
    {
      v41 = sub_21BA8899C();

      if ((v41 & 1) == 0)
      {

        goto LABEL_32;
      }
    }

LABEL_6:
    v3 = [v9 children];
    type metadata accessor for RUIXMLElement(0);
    v4 = sub_21BA87F0C();

    v5 = [v10 children];
    v6 = sub_21BA87F0C();

    LOBYTE(v5) = sub_21B9E2BE0(v4, v6);

    if ((v5 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (!v40)
  {
    goto LABEL_6;
  }

LABEL_31:

LABEL_32:

LABEL_33:

  return 0;
}

id sub_21B9E3034()
{
  if (v0[4])
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    result = sub_21BA884DC();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 == result)
  {
    goto LABEL_14;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    result = *(v2 + 8 * v3 + 32);
    v4 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_10;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = MEMORY[0x21CEFD920](v0[1], v2);
  v4 = (v3 + 1);
  if (__OFADD__(v3, 1))
  {
    goto LABEL_24;
  }

LABEL_10:
  v0[1] = v4;
  v2 = v0[2];
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_12;
  }

LABEL_27:
  v8 = result;
  v5 = sub_21BA884DC();
  result = v8;
LABEL_12:
  v6 = v0[3];
  if (v6 == v5)
  {

LABEL_14:
    result = 0;
    *(v0 + 32) = 1;
    return result;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v7 = result;
    result = MEMORY[0x21CEFD920](v0[3], v2);
LABEL_19:
    if (!__OFADD__(v6, 1))
    {
      result = v7;
      v0[3] = v6 + 1;
      return result;
    }

    goto LABEL_30;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v6 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = result;
    result = *(v2 + 8 * v6 + 32);
    goto LABEL_19;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21B9E31B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v3 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA58);
  sub_21B9E356C();
  sub_21B9E35D0();
  sub_21BA87ADC();
  sub_21B9E34AC(v3, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_21B9E3624(v7, v9 + v8);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA68) + 36));
  sub_21BA86B5C();
  result = sub_21BA87FFC();
  *v10 = &unk_21BA95A58;
  v10[1] = v9;
  return result;
}

uint64_t sub_21B9E3370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21B9E3D10();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

unint64_t sub_21B9E33D4()
{
  result = qword_27CD9DA50;
  if (!qword_27CD9DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DA50);
  }

  return result;
}

unint64_t sub_21B9E3428()
{
  result = qword_27CD9DB70;
  if (!qword_27CD9DB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DA58);
    sub_21B9B339C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DB70);
  }

  return result;
}

uint64_t sub_21B9E34AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LazyContentElement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9E3510(uint64_t a1)
{
  v2 = type metadata accessor for LazyContentElement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B9E356C()
{
  result = qword_27CD9DB80;
  if (!qword_27CD9DB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DB80);
  }

  return result;
}

unint64_t sub_21B9E35D0()
{
  result = qword_27CD9DA60;
  if (!qword_27CD9DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DA60);
  }

  return result;
}

uint64_t sub_21B9E3624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LazyContentElement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9E3688(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_21B940DCC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_21BA8899C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21B9E3830()
{
  result = qword_27CD9DA70;
  if (!qword_27CD9DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DA70);
  }

  return result;
}

unint64_t sub_21B9E3888()
{
  result = qword_27CD9DA78;
  if (!qword_27CD9DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DA78);
  }

  return result;
}

unint64_t sub_21B9E38E0()
{
  result = qword_27CD9DA80;
  if (!qword_27CD9DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DA80);
  }

  return result;
}

uint64_t sub_21B9E3934(void *a1)
{
  a1[1] = sub_21B9E3DC4(&qword_27CD9DA88, type metadata accessor for LazyContentElement);
  a1[2] = sub_21B9E3DC4(&qword_27CD9DA90, type metadata accessor for LazyContentElement);
  result = sub_21B9E3DC4(&qword_27CD9DA98, type metadata accessor for LazyContentElement);
  a1[3] = result;
  return result;
}

void sub_21B9E3A24()
{
  sub_21B9E3B68();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RUIXMLElement(319);
    if (v1 <= 0x3F)
    {
      sub_21B93FC24(319, &qword_27CD9DAA8, &qword_27CD9DAB0);
      if (v2 <= 0x3F)
      {
        sub_21B93FC24(319, &unk_27CD9BC90, &qword_27CD9CF70);
        if (v3 <= 0x3F)
        {
          sub_21B9B3C24();
          if (v4 <= 0x3F)
          {
            sub_21B93FC24(319, &qword_27CD9BC60, &qword_27CD9DBA0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21B9E3B68()
{
  if (!qword_27CD9DAA0)
  {
    v0 = sub_21BA87F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9DAA0);
    }
  }
}

unint64_t sub_21B9E3BC8()
{
  result = qword_27CD9DAB8;
  if (!qword_27CD9DAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DA68);
    sub_21B9E3C84();
    sub_21B9E3DC4(&qword_27CD9CF30, MEMORY[0x277CDD8B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DAB8);
  }

  return result;
}

unint64_t sub_21B9E3C84()
{
  result = qword_27CD9DB90;
  if (!qword_27CD9DB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DB90);
  }

  return result;
}

unint64_t sub_21B9E3D10()
{
  result = qword_27CD9DAC8;
  if (!qword_27CD9DAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DAB0);
    sub_21B9E3DC4(&qword_27CD9DAD0, type metadata accessor for RUIXMLElement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DAC8);
  }

  return result;
}

uint64_t sub_21B9E3DC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for LazyContentElement() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  sub_21B94B4EC(*(v5 + 40), *(v5 + 48));
  sub_21B9B01C4(*(v5 + 56), *(v5 + 64), *(v5 + 72));
  sub_21B94B4EC(*(v5 + 80), *(v5 + 88));
  v6 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21BA864AC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21B9E3FB4()
{
  type metadata accessor for LazyContentElement();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21B9AC1F4;

  return sub_21B9E1224();
}

void NavigationDestination.hash(into:)()
{
  v1 = sub_21BA864AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NavigationDestination();
  MEMORY[0x28223BE20](v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21B9E4800(v0, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v2 + 32))(v4, v7, v1);
      MEMORY[0x21CEFDF10](2);
      sub_21B9E4908(&qword_27CD9D7E0, MEMORY[0x277CC9260]);
      sub_21BA87C0C();
      (*(v2 + 8))(v4, v1);
    }

    else
    {
      v9 = *v7;
      MEMORY[0x21CEFDF10](3);
      sub_21BA8830C();
    }
  }

  else
  {
    MEMORY[0x21CEFDF10](EnumCaseMultiPayload != 0);
    sub_21BA87D8C();
  }
}

uint64_t NavigationDestination.hashValue.getter()
{
  sub_21BA88BAC();
  NavigationDestination.hash(into:)();
  return sub_21BA88BCC();
}

uint64_t sub_21B9E42D0()
{
  sub_21BA88BAC();
  NavigationDestination.hash(into:)();
  return sub_21BA88BCC();
}

uint64_t sub_21B9E4314()
{
  sub_21BA88BAC();
  NavigationDestination.hash(into:)();
  return sub_21BA88BCC();
}

BOOL NavigationDestination.requiresLoading.getter()
{
  v1 = type metadata accessor for NavigationDestination();
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B9E4800(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() == 2;
  sub_21B9E4864(v3);
  return v4;
}

uint64_t _s8RemoteUI21NavigationDestinationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BA864AC();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NavigationDestination();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v37 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = (&v37 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DAE0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v37 - v21;
  v23 = (&v37 + *(v20 + 56) - v21);
  sub_21B9E4800(a1, &v37 - v21);
  sub_21B9E4800(a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21B9E4800(v22, v16);
      v26 = *v16;
      v25 = v16[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_21B9E4800(v22, v18);
      v26 = *v18;
      v25 = v18[1];
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_4:

LABEL_20:
        sub_21B9E49D0(v22);
        goto LABEL_21;
      }
    }

    if (v26 == *v23 && v25 == v23[1])
    {
    }

    else
    {
      v33 = sub_21BA8899C();

      if ((v33 & 1) == 0)
      {
        sub_21B9E4864(v22);
LABEL_21:
        v30 = 0;
        return v30 & 1;
      }
    }

    sub_21B9E4864(v22);
    v30 = 1;
    return v30 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_21B9E4800(v22, v13);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v37 + 8))(v13, v38);
      goto LABEL_20;
    }

    v27 = v37;
    v28 = v23;
    v29 = v38;
    (*(v37 + 32))(v6, v28, v38);
    v30 = sub_21BA8642C();
    v31 = *(v27 + 8);
    v31(v6, v29);
    v31(v13, v29);
  }

  else
  {
    sub_21B9E4800(v22, v10);
    v34 = *v10;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_20;
    }

    v35 = *v23;
    sub_21B9E4A38();
    v30 = sub_21BA882FC();
  }

  sub_21B9E4864(v22);
  return v30 & 1;
}

uint64_t type metadata accessor for NavigationDestination()
{
  result = qword_27CDA58A0;
  if (!qword_27CDA58A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B9E4800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9E4864(uint64_t a1)
{
  v2 = type metadata accessor for NavigationDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B9E4908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21B9E4950()
{
  result = sub_21BA864AC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RUIXMLElement(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B9E49D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B9E4A38()
{
  result = qword_27CD9F880;
  if (!qword_27CD9F880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD9F880);
  }

  return result;
}

uint64_t sub_21B9E4A88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BA44C84();
  *a1 = result;
  return result;
}

unint64_t sub_21B9E4AE0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x656C746974;
    v7 = 0x656C746974627573;
    v8 = 0x6567616D69;
    if (a1 != 3)
    {
      v8 = 25705;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x32656C746974;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x746E65746E6F63;
    v2 = 0x6B6E694C706C6568;
    if (a1 != 9)
    {
      v2 = 2036429428;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    v4 = 0x697461676976616ELL;
    if (a1 != 6)
    {
      v4 = 0xD000000000000012;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21B9E4C34(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21B9E4AE0(*a1);
  v5 = v4;
  if (v3 == sub_21B9E4AE0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BA8899C();
  }

  return v8 & 1;
}

uint64_t sub_21B9E4CBC()
{
  v1 = *v0;
  sub_21BA88BAC();
  sub_21B9E4AE0(v1);
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21B9E4D20()
{
  sub_21B9E4AE0(*v0);
  sub_21BA87D8C();
}

uint64_t sub_21B9E4D74()
{
  v1 = *v0;
  sub_21BA88BAC();
  sub_21B9E4AE0(v1);
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21B9E4DD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B9EA690();
  *a1 = result;
  return result;
}

unint64_t sub_21B9E4E04@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21B9E4AE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21B9E4E4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B9EA690();
  *a1 = result;
  return result;
}

uint64_t sub_21B9E4E80(uint64_t a1)
{
  v2 = sub_21B9EAB08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B9E4EBC(uint64_t a1)
{
  v2 = sub_21B9EAB08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B9E4EF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x776569566E6970;
  }

  else
  {
    v3 = 0x646574656C6C7562;
  }

  if (v2)
  {
    v4 = 0xEC0000006D657449;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x776569566E6970;
  }

  else
  {
    v5 = 0x646574656C6C7562;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEC0000006D657449;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BA8899C();
  }

  return v8 & 1;
}

uint64_t sub_21B9E4FA8()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21B9E5034()
{
  sub_21BA87D8C();
}

uint64_t sub_21B9E50AC()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21B9E5134@<X0>(char *a1@<X8>)
{
  v2 = sub_21BA8875C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_21B9E5194(uint64_t *a1@<X8>)
{
  v2 = 0x646574656C6C7562;
  if (*v1)
  {
    v2 = 0x776569566E6970;
  }

  v3 = 0xEC0000006D657449;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21B9E51DC()
{
  if (*v0)
  {
    return 0x776569566E6970;
  }

  else
  {
    return 0x646574656C6C7562;
  }
}

uint64_t sub_21B9E5220@<X0>(char *a1@<X8>)
{
  v2 = sub_21BA8875C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21B9E5284(uint64_t a1)
{
  v2 = sub_21B9EABE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B9E52C0(uint64_t a1)
{
  v2 = sub_21B9EABE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B9E536C()
{
  v1 = *v0;
  sub_21BA88BAC();
  MEMORY[0x21CEFDF10](v1);
  return sub_21BA88BCC();
}

uint64_t sub_21B9E53E0()
{
  v1 = *v0;
  sub_21BA88BAC();
  MEMORY[0x21CEFDF10](v1);
  return sub_21BA88BCC();
}

uint64_t sub_21B9E5424()
{
  v1 = 0x656C746974;
  if (*v0)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x747475426B6E696CLL;
  }
}

uint64_t sub_21B9E54B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B9EA6DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B9E54E8(uint64_t a1)
{
  v2 = sub_21B9EA84C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B9E5524(uint64_t a1)
{
  v2 = sub_21B9EA84C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B9E5560@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v87 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DAF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B9EA84C();
  sub_21BA88C0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = Decoder.decodeRUIID()();
  if (v9)
  {
    (*(v5 + 8))(v7, v4);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  countAndFlagsBits = v8._countAndFlagsBits;
  LOBYTE(v61) = 0;
  v44 = sub_21BA887FC();
  v46 = v11;
  LOBYTE(v61) = 1;
  v12 = sub_21BA887FC();
  v45 = v13;
  v14 = v12;
  sub_21B9B3220(a1, v74);
  v43 = 0;
  RUIImage.init(from:)(v74, &v75);
  v42 = v14;
  v83 = v77;
  v84 = v78;
  v85 = v79;
  v86 = v80;
  v81 = v75;
  v82 = v76;
  LOBYTE(v61) = 2;
  v15 = sub_21BA887BC();
  if (v16)
  {
    *&v41 = sub_21BA4588C(v15, v16);
    *(&v41 + 1) = v17;
  }

  else
  {
    v41 = v15;
  }

  LOBYTE(v61) = 3;
  v18 = sub_21BA887BC();
  if (v19)
  {
    v40 = sub_21BA4588C(v18, v19);
    v43 = v20;
  }

  else
  {
    v43 = 0;
    v40 = v18;
  }

  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Decoder.ruiDecodingContext.getter();
  v21 = v61;

  v48[2] = v77;
  v48[3] = v78;
  v48[4] = v79;
  v48[5] = v80;
  v48[0] = v75;
  v48[1] = v76;
  v63 = v77;
  v64 = v78;
  v65 = v79;
  v66 = v80;
  v61 = v75;
  v62 = v76;
  sub_21B9E52FC(v48, &v50);
  v22 = sub_21B9AB470();
  (*(*v21 + 168))(&v61, v22, v23);

  swift_unknownObjectRelease();
  v49[2] = v63;
  v49[3] = v64;
  v49[4] = v65;
  v49[5] = v66;
  v49[0] = v61;
  v49[1] = v62;
  sub_21B9EA8A0(v49);
  (*(v5 + 8))(v7, v4);
  v24 = v46;
  v25 = countAndFlagsBits;
  *&v50 = countAndFlagsBits;
  *(&v50 + 1) = v8._object;
  v26 = v44;
  v27 = v45;
  *&v51 = v44;
  *(&v51 + 1) = v46;
  v28 = *(&v41 + 1);
  v29 = v42;
  *&v52 = v42;
  *(&v52 + 1) = v45;
  v55 = v83;
  v56 = v84;
  v57 = v85;
  v58 = v86;
  v53 = v81;
  v54 = v82;
  v59 = v41;
  *&v60 = v40;
  *(&v60 + 1) = v43;
  v30 = v51;
  v31 = v87;
  *v87 = v50;
  v31[1] = v30;
  v32 = v52;
  v33 = v53;
  v34 = v55;
  v31[4] = v54;
  v31[5] = v34;
  v31[2] = v32;
  v31[3] = v33;
  v35 = v56;
  v36 = v57;
  v37 = v60;
  v31[9] = v59;
  v31[10] = v37;
  v38 = v58;
  v31[7] = v36;
  v31[8] = v38;
  v31[6] = v35;
  sub_21B9D0DD4(&v50, &v61);
  __swift_destroy_boxed_opaque_existential_1(v39);
  *&v61 = v25;
  *(&v61 + 1) = v8._object;
  *&v62 = v26;
  *(&v62 + 1) = v24;
  *&v63 = v29;
  *(&v63 + 1) = v27;
  v66 = v83;
  v67 = v84;
  v68 = v85;
  v69 = v86;
  v64 = v81;
  v65 = v82;
  v70 = v41;
  v71 = v28;
  v72 = v40;
  v73 = v43;
  return sub_21B9D0E30(&v61);
}

void sub_21B9E5B34(uint64_t a1@<X8>)
{
  v3 = sub_21BA86E9C();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v73, v1, sizeof(v73));
  if (v73[18])
  {
    v5 = v73[17];
  }

  else
  {
    v5 = 0;
  }

  if (v73[18])
  {
    v6 = v73[18];
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v59 = v73[21];
  v60 = v6;
  v7 = v73[12];
  v8 = v73[13];
  v9 = LOBYTE(v73[14]);
  v61 = v73[22];
  v62 = v5;
  if (v73[33])
  {
    v10 = *(v1 + 232);
    v63[0] = *(v1 + 216);
    v63[1] = v10;
    v11 = *(v1 + 288);
    v67 = *(v1 + 272);
    v12 = v73[32];
    v64 = *(v1 + 248);
    v65 = v73[32];
    v66 = v73[33];
    v68 = v11;
    v69 = *(v1 + 304);

    RUIImage.preloadedImage.getter();
    v56 = v13;
    v57 = v12;
    v14 = v12;
  }

  else
  {

    v56 = 0;
    v57 = 0;
  }

  v58 = v7;
  if (v9 == 255)
  {
    v55 = 0;
    v72 = -1;
  }

  else if (v9)
  {
    v15 = *(*&v8[OBJC_IVAR____TtCV8RemoteUI15MultiChoiceTray12LegacyHeader_htmlHeader] + OBJC_IVAR____TtCV8RemoteUI15MultiChoiceTray17HTMLHeaderElement_webContainerView);
    v72 = 1;
    v55 = v15;
    v16 = v15;
  }

  else
  {
    v72 = 0;
    sub_21B9D0D64(v8, 0);
    v55 = v8;
  }

  v17 = v73[39];
  v18 = v73[10];
  v54 = v72;
  v19 = v73[11];
  v20 = swift_allocObject();
  memcpy((v20 + 16), v73, 0x140uLL);
  v21 = v17;
  sub_21B9D0D48(v18, v19);
  v22 = sub_21B9EA8FC(v73, v63);
  v23 = sub_21B9D03F0(v22);
  v25 = v24;
  v26 = sub_21B9D16CC();
  v28 = v27;
  v29 = sub_21B9D16D0();
  v50.n128_u64[1] = v20;
  v50.n128_u64[0] = sub_21B9EA8F4;
  *(&v49 + 1) = v17;
  *&v49 = v57;
  sub_21B9D0464(v23, v25 & 1, v62, v60, v59, v61, v58, v56, v70, 0.0, v49, v18, v19, v55, v54, v50, v26, v28 & 1, v29, v30 & 1);
  v31 = sub_21BA86C9C();
  v32 = sub_21BA8743C();
  v75 = v73[5];
  v33 = v73[4];
  v74 = v73[4];
  if (LOBYTE(v73[5]) == 1)
  {
    v34 = v73[4];
    if (!v33)
    {
      goto LABEL_22;
    }
  }

  else
  {

    sub_21BA8820C();
    v35 = sub_21BA8740C();
    sub_21BA8670C();

    v36 = v51;
    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9ABAAC(&v74, &unk_27CD9DB00);
    (*(v52 + 8))(v36, v53);
    v33 = *&v63[0];
    if (!*&v63[0])
    {
LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D358);
      swift_allocObject();
      *&v63[0] = sub_21BA8691C();
      sub_21B9B35B8(&qword_27CD9DB10, &qword_27CD9D358);
      v39 = sub_21BA869CC();

      goto LABEL_23;
    }
  }

  v37 = [v33 pageElement];

  if (!v37)
  {
    goto LABEL_22;
  }

  v38 = [v37 page];

  if (v38)
  {
    v39 = RUIPage.pageDidChange.getter();

LABEL_23:
    v40 = swift_allocObject();
    memcpy((v40 + 16), v73, 0x140uLL);
    v41 = swift_allocObject();
    *(v41 + 16) = sub_21B9EA934;
    *(v41 + 24) = v40;
    v42 = swift_allocObject();
    memcpy((v42 + 16), v73, 0x140uLL);
    v43 = v70[9];
    *(a1 + 128) = v70[8];
    *(a1 + 144) = v43;
    *(a1 + 160) = v70[10];
    v44 = v71;
    v45 = v70[5];
    *(a1 + 64) = v70[4];
    *(a1 + 80) = v45;
    v46 = v70[7];
    *(a1 + 96) = v70[6];
    *(a1 + 112) = v46;
    v47 = v70[1];
    *a1 = v70[0];
    *(a1 + 16) = v47;
    v48 = v70[3];
    *(a1 + 32) = v70[2];
    *(a1 + 48) = v48;
    *(a1 + 176) = v44;
    *(a1 + 184) = 1;
    *(a1 + 192) = v31;
    *(a1 + 200) = v32;
    *(a1 + 208) = v39;
    *(a1 + 216) = sub_21B9DC22C;
    *(a1 + 224) = v41;
    *(a1 + 232) = sub_21B9EAB00;
    *(a1 + 240) = v42;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    sub_21B9EA8FC(v73, v63);
    sub_21B9EA8FC(v73, v63);
    return;
  }

  __break(1u);
}

uint64_t sub_21B9E60FC(uint64_t a1)
{
  v2 = sub_21BA86E9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(a1 + 40);
  v6 = *(a1 + 32);
  v83 = v6;
  if (v84 == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_21BA8820C();
    v8 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9ABAAC(&v83, &unk_27CD9DB00);
    (*(v3 + 8))(v5, v2);
    v6 = v74;
  }

  if (!v6)
  {
    goto LABEL_75;
  }

  v9 = [v6 pageElement];

  if (!v9)
  {
    goto LABEL_75;
  }

  v10 = [v9 page];

  if (!v10)
  {
    goto LABEL_75;
  }

  if (*(a1 + 88) <= 1u)
  {
    if (*(a1 + 144))
    {
      v11 = *(a1 + 264);
      if (v11)
      {
LABEL_10:
        v12 = *(a1 + 232);
        v74 = *(a1 + 216);
        v75 = v12;
        v76 = *(a1 + 248);
        v13 = *(a1 + 288);
        v78 = *(a1 + 272);
        v79 = v13;
        v80 = *(a1 + 304);
        v77 = v11;

        RUIImage.preloadedImage.getter();
        v15 = v14;
LABEL_31:
        v37 = *(a1 + 176);
        v38 = sub_21BA87C8C();

        if (v37)
        {
          v39 = sub_21BA87C8C();
        }

        else
        {
          v39 = 0;
        }

        v40 = [objc_allocWithZone(MEMORY[0x277D37698]) initWithTitle:v38 detailText:v39 icon:v15];

        goto LABEL_66;
      }
    }

    else
    {
      v11 = *(a1 + 264);
      if (v11)
      {
        goto LABEL_10;
      }
    }

    v15 = 0;
    goto LABEL_31;
  }

  v16 = objc_allocWithZone(RUIScrollableWelcomeController);
  v17 = sub_21BA87C8C();
  v18 = [v16 initWithTitle:v17 detailText:0 icon:0];

  v82 = *(a1 + 24);
  v19 = *(a1 + 16);
  v81 = v19;
  if (v82 != 1)
  {

    sub_21BA8820C();
    v23 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9ABAAC(&v81, &unk_27CD9DD30);
    (*(v3 + 8))(v5, v2);
    v19 = v74;
    if (v74)
    {
      goto LABEL_13;
    }

LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  v20 = v19;
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_13:
  v21 = [v19 style];

  if (!v21)
  {
    __break(1u);
    goto LABEL_69;
  }

  v22 = [v21 useNonOBStyleButton];

LABEL_17:
  [v18 setShouldUseCustomButtonTray_];
  [v18 setShouldAdjustButtonTrayForKeyboard_];
  [v18 setShouldAdjustScrollViewInsetForKeyboard_];
  if ([v10 hasTableView] && (v24 = objc_msgSend(v10, sel_tableViewOM)) != 0)
  {
    v25 = v24;
    v26 = [objc_allocWithZone(RUIElementViewController) initWithElement_];
    [v18 setContentController_];

    if (*(a1 + 176))
    {
      v27 = sub_21BA87C8C();
    }

    else
    {
      v27 = 0;
    }

    [v18 setSubtitleMarkdown_];

    v29 = [v25 tableView];
    [v18 setRuiContentScrollView_];
  }

  else if ([v10 hasWebView] && (v28 = objc_msgSend(v10, sel_webViewOM)) != 0)
  {
    v29 = v28;
    v30 = [v28 webView];
    v31 = [objc_allocWithZone(RUIElementViewController) initWithElement_];
    [v18 setContentController_];

    if (*(a1 + 176))
    {
      v32 = sub_21BA87C8C();
    }

    else
    {
      v32 = 0;
    }

    [v18 setSubtitleMarkdown_];

    if (v30)
    {
      v49 = [v30 scrollView];
      [v18 setRuiContentScrollView_];

      v50 = v30;
      v51 = [v18 view];
      if (!v51)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v52 = v51;
      [v51 directionalLayoutMargins];

      [v50 layoutMargins];
      [v50 setLayoutMargins_];

      v53 = v50;
      v54 = [v18 view];
      if (!v54)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v55 = v54;
      [v54 directionalLayoutMargins];

      [v53 layoutMargins];
      [v53 setLayoutMargins_];
    }

    else
    {
      [v18 setRuiContentScrollView_];
    }
  }

  else
  {
    if (![v10 hasPasscodeView] || (v33 = objc_msgSend(v10, sel_passcodeViewOM)) == 0)
    {
      v41 = *(a1 + 264);
      if (v41)
      {
        v42 = *(a1 + 232);
        v74 = *(a1 + 216);
        v75 = v42;
        v76 = *(a1 + 248);
        v43 = *(a1 + 288);
        v78 = *(a1 + 272);
        v79 = v43;
        v80 = *(a1 + 304);
        v77 = v41;

        RUIImage.preloadedImage.getter();
        v45 = v44;
      }

      else
      {

        v45 = 0;
      }

      v46 = *(a1 + 176);
      v47 = sub_21BA87C8C();

      if (v46)
      {
        v48 = sub_21BA87C8C();
      }

      else
      {
        v48 = 0;
      }

      v40 = [objc_allocWithZone(MEMORY[0x277D37698]) initWithTitle:v47 detailText:v48 icon:v45];

      if (v46)
      {
        v15 = sub_21BA87C8C();
      }

      else
      {
        v15 = 0;
      }

      [v40 setSubtitleMarkdown_];

      v39 = v18;
      goto LABEL_66;
    }

    v29 = v33;
    v34 = [objc_allocWithZone(RUIElementViewController) initWithElement_];
    [v18 setContentController_];

    v35 = [v29 scrollView];
    [v18 setRuiContentScrollView_];

    if (*(a1 + 176))
    {
      v36 = sub_21BA87C8C();
    }

    else
    {
      v36 = 0;
    }

    [v18 setSubtitleMarkdown_];

    [v18 setShouldAdjustButtonTrayForKeyboard_];
  }

  if ((_sSo11RUIPlatformC8RemoteUIE17isSolariumEnabledSbvgZ_0(v56, v57) & 1) == 0)
  {
    goto LABEL_67;
  }

  v58 = [v10 style];
  if (!v58)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v59 = v58;
  v60 = [v58 usesCustomLayoutMargins];

  v61 = [v18 contentController];
  if (!v60)
  {
    goto LABEL_62;
  }

  if (!v61)
  {
LABEL_67:

    return v18;
  }

  v62 = v61;
  v39 = [v61 view];

  if (!v39)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v61 = [v10 style];
  if (v61)
  {
LABEL_65:
    v64 = v61;
    [v61 directionalLayoutMargins];
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;

    [v39 setDirectionalLayoutMargins_];
    v15 = v10;
    v40 = v18;
LABEL_66:

    v10 = v15;
    v18 = v40;
    goto LABEL_67;
  }

  __break(1u);
LABEL_62:
  if (!v61)
  {
    goto LABEL_67;
  }

  v63 = v61;
  v39 = [v61 view];

  if (v39)
  {
    v61 = [v18 view];
    if (v61)
    {
      goto LABEL_65;
    }

    goto LABEL_74;
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  result = sub_21BA886DC();
  __break(1u);
  return result;
}

void sub_21B9E6B7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - v5;
  v7 = sub_21BA86E9C();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(a1 + 112);
  v10 = *(a1 + 96);
  v9 = *(a1 + 104);
  v46 = a1;
  v54 = v9;
  if (v55 != 255)
  {
    if (v55)
    {
      v53 = *(v46 + 40);
      v11 = *(v46 + 32);
      v52 = v11;
      if (v53)
      {
        v48 = v11;
        sub_21B9AFF80(&v54, &v50, &qword_27CD9DD20);
        sub_21B9AFF80(&v54, &v50, &qword_27CD9DD20);
        sub_21B9AFF80(&v52, &v50, &unk_27CD9DB00);
      }

      else
      {
        sub_21B9AFF80(&v54, &v50, &qword_27CD9DD20);
        sub_21B9AFF80(&v54, &v50, &qword_27CD9DD20);
        sub_21B9AFF80(&v52, &v50, &unk_27CD9DB00);
        sub_21BA8820C();
        v12 = sub_21BA8740C();
        sub_21BA8670C();

        v13 = v42;
        sub_21BA86E8C();
        swift_getAtKeyPath();
        sub_21B9ABAAC(&v52, &unk_27CD9DB00);
        (*(v43 + 8))(v13, v44);
      }

      (*((*MEMORY[0x277D85000] & *v9) + 0x68))(v48);
      v14 = *(v46 + 48);
      if (!v14)
      {
LABEL_40:
        type metadata accessor for ElementDirectory();
        sub_21B93FC9C(&qword_27CD9BB20, 255, type metadata accessor for ElementDirectory);
        sub_21BA86CFC();
        __break(1u);
        return;
      }

      v15 = *(*v14 + 112);

      v15(v9);
      sub_21B9ABAAC(&v54, &qword_27CD9DD20);
    }

    else
    {
    }
  }

  v45 = v6;
  if (v10 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BA884DC())
  {
    v17 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x21CEFD920](v17, v10);
      }

      else
      {
        if (v17 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v18 = *(v10 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v18 pageDidChange];
      v21 = *(v46 + 48);
      if (!v21)
      {
        goto LABEL_40;
      }

      v22 = *(*v21 + 112);

      v22(v19);

      ++v17;
      if (v20 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:
  if (v55 != 255)
  {
    if ((v55 & 1) == 0)
    {
      goto LABEL_32;
    }

    v51 = *(v46 + 72);
    v23 = *(v46 + 64);
    v50 = v23;
    v24 = v51;

    if ((v24 & 1) == 0)
    {
      sub_21BA8820C();
      v25 = sub_21BA8740C();
      sub_21BA8670C();

      v26 = v42;
      sub_21BA86E8C();
      swift_getAtKeyPath();
      sub_21B9ABAAC(&v50, &qword_27CD9DD28);
      (*(v43 + 8))(v26, v44);
      v23 = v48;
    }

    v27 = v45;
    if (!v23)
    {
LABEL_32:
      v33 = &qword_27CD9DD20;
      v34 = &v54;
LABEL_38:
      sub_21B9ABAAC(v34, v33);
      return;
    }

    v49 = *(v46 + 24);
    v28 = *(v46 + 16);
    v48 = v28;
    if (v49)
    {
      v29 = v28;
      if (v28)
      {
LABEL_30:
        v30 = [v28 sourceURL];

        if (v30)
        {
          v31 = v41;
          sub_21BA8643C();

          v32 = 0;
        }

        else
        {
          v32 = 1;
          v31 = v41;
        }

        v38 = sub_21BA864AC();
        (*(*(v38 - 8) + 56))(v31, v32, 1, v38);
        v39 = v31;
        v27 = v45;
        sub_21B9AFD2C(v39, v45);
        goto LABEL_37;
      }
    }

    else
    {

      sub_21BA8820C();
      v35 = sub_21BA8740C();
      sub_21BA8670C();

      v36 = v42;
      sub_21BA86E8C();
      swift_getAtKeyPath();
      sub_21B9ABAAC(&v48, &unk_27CD9DD30);
      (*(v43 + 8))(v36, v44);
      v28 = v47;
      if (v47)
      {
        goto LABEL_30;
      }
    }

    v37 = sub_21BA864AC();
    (*(*(v37 - 8) + 56))(v27, 1, 1, v37);
LABEL_37:
    (*(*v23 + 112))(0xD00000000000001FLL, 0x800000021BAA4980, v27, 1);
    sub_21B9ABAAC(&v54, &qword_27CD9DD20);

    v33 = &qword_27CD9DBA0;
    v34 = v27;
    goto LABEL_38;
  }
}

void sub_21B9E7310(void *a1@<X0>, void *a2@<X8>)
{
  v101 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DAC0);
  MEMORY[0x28223BE20](v99);
  v98 = &v69 - v3;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DB30);
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v103 = &v69 - v4;
  v5 = sub_21BA8655C();
  v105 = *(v5 - 8);
  v106 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DB38);
  v104 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - v9;
  KeyPath = swift_getKeyPath();
  v167 = 0;
  v109 = swift_getKeyPath();
  v165 = 0;
  type metadata accessor for ElementDirectory();
  sub_21B93FC9C(&qword_27CD9BB20, 255, type metadata accessor for ElementDirectory);
  v108 = sub_21BA86D0C();
  v12 = v11;
  v107 = swift_getKeyPath();
  v163 = 0;
  v13 = a1[3];
  v168 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_21B9EAB08();
  v14 = v111;
  sub_21BA88C0C();
  if (v14)
  {
    v111 = v14;
    __swift_destroy_boxed_opaque_existential_1(v168);

    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_4;
  }

  v15 = v7;
  v17 = v105;
  v16 = v106;
  v79 = v12;
  v18 = v104;
  LOBYTE(v114) = 4;
  v19 = sub_21BA887BC();
  if (v20)
  {
    *&v78 = v19;
    v28 = v20;
  }

  else
  {
    v29 = v15;
    sub_21BA8654C();
    *&v78 = sub_21BA8652C();
    v28 = v30;
    (*(v17 + 8))(v29, v16);
  }

  LOBYTE(v113[0]) = 10;
  sub_21B9EAB5C();
  sub_21BA8880C();
  v22 = 1;
  *(&v78 + 1) = v28;
  v105 = v114;
  v31 = v8;
  v32 = *(&v114 + 1);
  LODWORD(v106) = v115;
  LOBYTE(v114) = 5;
  v33 = sub_21BA887CC();
  LOBYTE(v114) = 0;
  v34 = sub_21BA887BC();
  v75 = v33;
  v77 = v10;
  if (v35)
  {
    v76 = sub_21BA4588C(v34, v35);
    v97 = v36;
  }

  else
  {
    v76 = v34;
    v97 = 0;
  }

  LOBYTE(v114) = 1;
  v37 = sub_21BA887BC();
  if (v38)
  {
    v74 = sub_21BA4588C(v37, v38);
    v96 = v39;
  }

  else
  {
    v74 = v37;
    v96 = 0;
  }

  LOBYTE(v114) = 2;
  v40 = sub_21BA887BC();
  if (v41)
  {
    v73 = sub_21BA4588C(v40, v41);
    v83 = v42;
  }

  else
  {
    v73 = v40;
    v83 = 0;
  }

  sub_21B9B3220(v168, v113);
  RUIImage.init(from:)(v113, &v114);
  v93 = *(&v114 + 1);
  v94 = v114;
  v91 = *(&v115 + 1);
  v92 = v115;
  v89 = *(&v116 + 1);
  v90 = v116;
  v95 = v117;
  v87 = v118;
  v88 = *(&v117 + 1);
  v85 = v119;
  v86 = *(&v118 + 1);
  v84 = *(&v119 + 1);
  LOBYTE(v114) = 6;
  v43 = sub_21BA887BC();
  if (v44)
  {
    v72 = sub_21BA4588C(v43, v44);
    v82 = v45;
  }

  else
  {
    v72 = v43;
    v82 = 0;
  }

  LOBYTE(v114) = 7;
  v46 = sub_21BA887BC();
  v111 = 0;
  v71 = v32;
  if (v47)
  {
    v70 = sub_21BA4588C(v46, v47);
    v81 = v48;
  }

  else
  {
    v70 = v46;
    v81 = 0;
  }

  LOBYTE(v114) = 8;
  if ((sub_21BA8882C() & 1) == 0)
  {
    v80 = 0;
    LODWORD(v103) = 0;
    LODWORD(v99) = 2;
    goto LABEL_46;
  }

  LOBYTE(v114) = 8;
  sub_21B9EABE0();
  v49 = v111;
  sub_21BA8878C();
  v111 = v49;
  if (v49)
  {
LABEL_44:
    (*(v18 + 8))(v77, v31);
    v21 = 0;
    v23 = 1;
LABEL_48:
    v24 = 1;
    v25 = 1;
LABEL_49:
    v26 = 1;
    v27 = 1;
    v12 = v71;
    __swift_destroy_boxed_opaque_existential_1(v168);

LABEL_4:

    if (v21)
    {
      sub_21B9D0D94(v80, v99);
      if (!v22)
      {
        goto LABEL_6;
      }
    }

    else if (!v22)
    {
LABEL_6:
      if (v23)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    sub_21B9D0DB0(v12, v106);
    if (v23)
    {
LABEL_7:

      if (!v24)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v24)
    {
LABEL_8:
      if (v25)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:

    if (v25)
    {
LABEL_9:

      if (!v26)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v26)
    {
LABEL_10:
      if (v27)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:

    if (v27)
    {
LABEL_11:

      if (!v25)
      {
        return;
      }

LABEL_20:
      *&v114 = v94;
      *(&v114 + 1) = v93;
      *&v115 = v92;
      *(&v115 + 1) = v91;
      *&v116 = v90;
      *(&v116 + 1) = v89;
      *&v117 = v95;
      *(&v117 + 1) = v88;
      *&v118 = v87;
      *(&v118 + 1) = v86;
      *&v119 = v85;
      *(&v119 + 1) = v84;
      sub_21B9ABAAC(&v114, &qword_27CD9DAE8);
      return;
    }

LABEL_19:
    if (!v25)
    {
      return;
    }

    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DB50);
  LOBYTE(v113[0]) = 0;
  sub_21B9EAC88(&qword_27CD9DB58, &qword_27CD9DB50, &unk_21BA95BC0, sub_21B9EAC34);
  v50 = v111;
  sub_21BA8880C();
  v111 = v50;
  if (v50)
  {
    (*(v100 + 8))(v103, v102);
    goto LABEL_44;
  }

  v80 = v114;
  v25 = 1;
  if (!*(v114 + 16))
  {

    LOBYTE(v113[0]) = 8;
    v65 = v111;
    sub_21BA887AC();
    v111 = v65;
    if (v65)
    {
      (*(v100 + 8))(v103, v102);
      (*(v18 + 8))(v77, v31);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
      v66 = v111;
      sub_21BA88BEC();
      v111 = v66;
      if (v66)
      {
        (*(v100 + 8))(v103, v102);
        (*(v18 + 8))(v77, v31);
      }

      else
      {
        v80 = __swift_project_boxed_opaque_existential_1(v113, *(&v113[1] + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA58);
        sub_21B9EAC88(&qword_27CD9DB70, &qword_27CD9DA58, &unk_21BA957B0, sub_21B9B339C);
        v67 = v111;
        sub_21BA889CC();
        v111 = v67;
        if (!v67)
        {
          v68 = v152;
          __swift_destroy_boxed_opaque_existential_1(v113);
          __swift_destroy_boxed_opaque_existential_1(&v114);
          *&v114 = v68;
          sub_21B9B35B8(&qword_27CD9DB80, &qword_27CD9DA58);
          sub_21B9E35D0();
          sub_21BA87ADC();
          sub_21B9E3C84();
          v80 = sub_21BA87A2C();
          LODWORD(v99) = 0;
          goto LABEL_56;
        }

        (*(v100 + 8))(v103, v102);
        (*(v18 + 8))(v77, v31);
        __swift_destroy_boxed_opaque_existential_1(v113);
      }

      __swift_destroy_boxed_opaque_existential_1(&v114);
    }

    v21 = 0;
    v23 = 1;
    v24 = 1;
    goto LABEL_49;
  }

  LODWORD(v99) = 1;
LABEL_56:
  LOBYTE(v114) = 1;
  v62 = v102;
  v63 = v103;
  v64 = sub_21BA8882C();
  (*(v100 + 8))(v63, v62);
  LODWORD(v103) = v64 & 1;
LABEL_46:
  type metadata accessor for HelpLink();
  v156 = 9;
  sub_21B93FC9C(&qword_27CD9DB48, 255, type metadata accessor for HelpLink);
  v51 = v111;
  sub_21BA887EC();
  v111 = v51;
  if (v51)
  {
    (*(v18 + 8))(v77, v31);
    v21 = 1;
    v23 = 1;
    goto LABEL_48;
  }

  LODWORD(v98) = v75 & 1;
  v100 = v157;
  __swift_project_boxed_opaque_existential_1(v168, v168[3]);
  Decoder.ruiDecodingContext.getter();
  v52 = *(&v114 + 1);
  v102 = v114;

  *&v152 = v94;
  *(&v152 + 1) = v93;
  *&v153 = v92;
  *(&v153 + 1) = v91;
  *&v154 = v90;
  *(&v154 + 1) = v89;
  *&v155[0] = v95;
  *(&v155[0] + 1) = v88;
  *&v155[1] = v87;
  *(&v155[1] + 1) = v86;
  *&v155[2] = v85;
  *(&v155[2] + 1) = v84;
  if (v95)
  {
    v113[0] = v152;
    v113[1] = v153;
    *(&v113[3] + 8) = *(v155 + 8);
    *(&v113[4] + 8) = *(&v155[1] + 8);
    v118 = v155[1];
    v119 = v155[2];
    v113[2] = v154;
    *&v113[3] = v95;
    *(&v113[5] + 1) = *(&v155[2] + 1);
    v116 = v154;
    v117 = v155[0];
    v114 = v152;
    v115 = v153;
    sub_21B9E52FC(&v114, &v112);
    v53 = sub_21B9AB470();
    (*(*v102 + 168))(v113, v53, v54);
    swift_unknownObjectRelease();
    (*(v18 + 8))(v77, v31);
    sub_21B9ABAAC(&v152, &qword_27CD9DAE8);
  }

  else
  {
    (*(v18 + 8))(v77, v31);
  }

  v113[0] = v78;
  *&v113[1] = KeyPath;
  LODWORD(v104) = v167;
  BYTE8(v113[1]) = v167;
  *(&v113[1] + 9) = *v166;
  HIDWORD(v113[1]) = *&v166[3];
  v55 = v108;
  *&v113[2] = v109;
  *(&v113[2] + 9) = *v164;
  *(&v113[4] + 9) = *v162;
  *(&v113[5] + 9) = *v161;
  *(&v113[7] + 2) = v159;
  DWORD1(v113[8]) = *&v158[3];
  *(&v113[8] + 1) = *v158;
  v56 = v165;
  BYTE8(v113[2]) = v165;
  HIDWORD(v113[2]) = *&v164[3];
  v58 = v79;
  v57 = v80;
  *&v113[3] = v108;
  *(&v113[3] + 1) = v79;
  v59 = v107;
  *&v113[4] = v107;
  HIDWORD(v113[4]) = *&v162[3];
  HIDWORD(v113[5]) = *&v161[3];
  WORD3(v113[7]) = v160;
  v60 = v163;
  BYTE8(v113[4]) = v163;
  *&v113[5] = v80;
  v61 = v99;
  BYTE8(v113[5]) = v99;
  *&v113[6] = v105;
  *(&v113[6] + 1) = v71;
  LOBYTE(v113[7]) = v106;
  BYTE1(v113[7]) = v98;
  *(&v113[7] + 1) = v102;
  LOBYTE(v113[8]) = v103;
  *(&v113[8] + 1) = v76;
  *&v113[9] = v97;
  *(&v113[9] + 1) = v74;
  *&v113[10] = v96;
  *(&v113[10] + 1) = v73;
  *&v113[11] = v83;
  *(&v113[11] + 1) = v72;
  *&v113[12] = v82;
  *(&v113[12] + 1) = v70;
  *&v113[13] = v81;
  *(&v113[13] + 1) = v94;
  *&v113[14] = v93;
  *(&v113[14] + 1) = v92;
  *&v113[15] = v91;
  *(&v113[15] + 1) = v90;
  *&v113[16] = v89;
  *(&v113[16] + 1) = v95;
  *&v113[17] = v88;
  *(&v113[17] + 1) = v87;
  *&v113[18] = v86;
  *(&v113[18] + 1) = v85;
  *&v113[19] = v84;
  *(&v113[19] + 1) = v100;
  memcpy(v101, v113, 0x140uLL);
  sub_21B9EA8FC(v113, &v114);
  __swift_destroy_boxed_opaque_existential_1(v168);
  v114 = v78;
  *&v115 = KeyPath;
  BYTE8(v115) = v104;
  *&v116 = v109;
  BYTE8(v116) = v56;
  *&v117 = v55;
  *(&v117 + 1) = v58;
  *&v118 = v59;
  BYTE8(v118) = v60;
  *&v119 = v57;
  BYTE8(v119) = v61;
  *(&v115 + 9) = *v166;
  HIDWORD(v115) = *&v166[3];
  *(&v116 + 9) = *v164;
  HIDWORD(v116) = *&v164[3];
  HIDWORD(v118) = *&v162[3];
  *(&v118 + 9) = *v162;
  *(&v119 + 9) = *v161;
  HIDWORD(v119) = *&v161[3];
  v120 = v105;
  v121 = v71;
  v122 = v106;
  v123 = v98;
  v124 = v159;
  v125 = v160;
  v126 = v102;
  v127 = v103;
  *&v128[3] = *&v158[3];
  *v128 = *v158;
  v129 = v76;
  v130 = v97;
  v131 = v74;
  v132 = v96;
  v133 = v73;
  v134 = v83;
  v135 = v72;
  v136 = v82;
  v137 = v70;
  v138 = v81;
  v139 = v94;
  v140 = v93;
  v141 = v92;
  v142 = v91;
  v143 = v90;
  v144 = v89;
  v145 = v95;
  v146 = v88;
  v147 = v87;
  v148 = v86;
  v149 = v85;
  v150 = v84;
  v151 = v100;
  sub_21B9EABB0(&v114);
}

uint64_t sub_21B9E8578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F684369746C756DLL && a2 == 0xEB00000000656369)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21BA8899C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21B9E8604(uint64_t a1)
{
  v2 = sub_21B9EC5E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B9E8640(uint64_t a1)
{
  v2 = sub_21B9EC5E4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21B9E867C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21B9EB088(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_21B9E86C4()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x646165486C6D7468;
  }
}

uint64_t sub_21B9E8708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646165486C6D7468 && a2 == 0xEA00000000007265;
  if (v6 || (sub_21BA8899C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000021BAA47D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21BA8899C();

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

uint64_t sub_21B9E87F4(uint64_t a1)
{
  v2 = sub_21B9EC590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B9E8830(uint64_t a1)
{
  v2 = sub_21B9EC590();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21B9E88B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21B9EAD04(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t (*sub_21B9E88FC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCV8RemoteUI15MultiChoiceTray17HTMLHeaderElement_parentElement;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21B9ECAA0;
}

void sub_21B9E8A54(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v35 - v5;
  v7 = sub_21BA87D1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v1;
  v37 = OBJC_IVAR____TtCV8RemoteUI15MultiChoiceTray17HTMLHeaderElement_parentElement;
  swift_unknownObjectWeakInit();
  v11 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_21BA88BEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x21CEFF260](&v43[v37]);
    type metadata accessor for MultiChoiceTray.HTMLHeaderElement();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = v8;
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    sub_21BA889BC();
    v13 = v12;
    sub_21B9BDFC0(0, &qword_27CD9DBA8);
    sub_21BA87CFC();
    v35[1] = v13;
    v14 = sub_21BA87CCC();
    v16 = v15;
    (*(v36 + 8))(v10, v7);
    v17 = sub_21BA864AC();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    v18 = sub_21B9E8EF8(v14, v16, v6);
    v19 = OBJC_IVAR____TtCV8RemoteUI15MultiChoiceTray17HTMLHeaderElement_webContainerView;
    v20 = v43;
    *&v43[OBJC_IVAR____TtCV8RemoteUI15MultiChoiceTray17HTMLHeaderElement_webContainerView] = v18;
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_21BA8859C();
    MEMORY[0x21CEFD130](0x63207B2079646F62, 0xEE00203A726F6C6FLL);
    v21 = RemoteUIHeaderCSSTextColor();
    v22 = v38;
    if (v21)
    {
      v23 = v21;
      v24 = sub_21BA87CBC();
      v26 = v25;
    }

    else
    {
      v26 = 0xE700000000000000;
      v24 = 0x74697265686E69;
    }

    MEMORY[0x21CEFD130](v24, v26);

    MEMORY[0x21CEFD130](0xD000000000000035, 0x800000021BAA47F0);
    v27 = *&v20[v19];
    v28 = sub_21BA87C8C();
    [v27 setUserStyleSheet_];

    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v29 = Decoder.decodeRUIAttributeDictionary()();
    sub_21B9E9024(v29);
    v30 = sub_21BA87BBC();

    v31 = type metadata accessor for MultiChoiceTray.HTMLHeaderElement();
    v39.receiver = v20;
    v39.super_class = v31;
    v32 = objc_msgSendSuper2(&v39, sel_initWithAttributes_parent_, v30, 0);

    if (v32)
    {

      v33 = *&v32[OBJC_IVAR____TtCV8RemoteUI15MultiChoiceTray17HTMLHeaderElement_webContainerView];
      v34 = v32;
      [v33 setDelegate_];
      __swift_destroy_boxed_opaque_existential_1(v42);
      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_21B9E8EF8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_21BA864CC();
    sub_21B9B91AC(a1, a2);
  }

  v7 = sub_21BA864AC();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(a3, 1, v7) != 1)
  {
    v9 = sub_21BA8641C();
    (*(v8 + 8))(a3, v7);
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContent:v4 baseURL:v9];

  return v10;
}

uint64_t sub_21B9E9024(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCE0);
    v2 = sub_21BA8872C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_21B9AFF70(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_21B9AFF70(v29, v30);
    result = sub_21BA8850C();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_21B9AFF70(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21B9E94F4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_21B9E958C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t (*sub_21B9E95E4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCV8RemoteUI15MultiChoiceTray12LegacyHeader_parentElement;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21B9E967C;
}

void sub_21B9E9680(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_21B9E9794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646165486C6D7468 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21BA8899C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21B9E9824(uint64_t a1)
{
  v2 = sub_21B9EB5E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B9E9860(uint64_t a1)
{
  v2 = sub_21B9EB5E0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21B9E989C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBB8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v18 = OBJC_IVAR____TtCV8RemoteUI15MultiChoiceTray12LegacyHeader_parentElement;
  swift_unknownObjectWeakInit();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B9EB5E0();
  sub_21BA88C0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    MEMORY[0x21CEFF260](&v1[v18]);
    type metadata accessor for MultiChoiceTray.LegacyHeader();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v5;
    type metadata accessor for MultiChoiceTray.HTMLHeaderElement();
    sub_21B93FC9C(&qword_27CD9DBC8, v8, type metadata accessor for MultiChoiceTray.HTMLHeaderElement);
    sub_21BA8880C();
    *&v1[OBJC_IVAR____TtCV8RemoteUI15MultiChoiceTray12LegacyHeader_htmlHeader] = v20;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v9 = Decoder.decodeRUIAttributeDictionary()();
    sub_21B9E9024(v9);
    v10 = sub_21BA87BBC();

    v11 = type metadata accessor for MultiChoiceTray.LegacyHeader();
    v19.receiver = v1;
    v19.super_class = v11;
    v12 = objc_msgSendSuper2(&v19, sel_initWithAttributes_parent_, v10, 0);

    if (v12)
    {

      v13 = *&v12[OBJC_IVAR____TtCV8RemoteUI15MultiChoiceTray12LegacyHeader_htmlHeader];
      v14 = *((*MEMORY[0x277D85000] & *v13) + 0x68);
      v15 = v12;
      v16 = v13;
      v14(v12);

      (*(v17 + 8))(v7, v4);
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_21B9E9CF4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21B9E9D78@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_21B9E9DB4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_21BA87E4C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_21B9EA174(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_21B9EA174((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_21BA87E3C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_21BA87DAC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_21BA87DAC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_21BA87E4C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_21B9EA174(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_21BA87E4C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_21B9EA174(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_21B9EA174((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_21BA87DAC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_21B9EA174(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_21B9EA280@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21B9AF000(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21B9AF408();
      v9 = v11;
    }

    sub_21B9AFD9C(*(v9 + 48) + 40 * v7);
    sub_21B9AFF70((*(v9 + 56) + 32 * v7), a2);
    sub_21B9EA324(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21B9EA324(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BA884AC() + 1) & ~v5;
    do
    {
      sub_21B9AFF0C(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_21BA8850C();
      result = sub_21B9AFD9C(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_21B9EA4C8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21B9AF000(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_21B9AF408();
      goto LABEL_7;
    }

    sub_21B9AF150(v13, a3 & 1);
    v19 = sub_21B9AF000(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21B9AFF0C(a2, v21);
      return sub_21B9EA614(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_21BA88B0C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_21B9AFF70(a1, v17);
}

_OWORD *sub_21B9EA614(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_21B9AFF70(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_21B9EA690()
{
  v0 = sub_21BA8875C();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21B9EA6DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_21BA8899C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_21BA8899C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747475426B6E696CLL && a2 == 0xEF656C7469546E6FLL || (sub_21BA8899C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747475426B6E696CLL && a2 == 0xED00004C52556E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_21BA8899C();

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

unint64_t sub_21B9EA84C()
{
  result = qword_27CD9DAF8;
  if (!qword_27CD9DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DAF8);
  }

  return result;
}

void sub_21B9EA934()
{
  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BA884DC())
  {
    for (j = 4; ; ++j)
    {
      v4 = j - 4;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CEFD920](j - 4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v1 + 8 * j);
      }

      v6 = v5;
      v7 = __OFADD__(v4, 1);
      v8 = j - 3;
      if (v7)
      {
        break;
      }

      [v5 pageDidChange];

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t objectdestroyTm_1()
{

  sub_21B94B4EC(*(v0 + 32), *(v0 + 40));
  sub_21B94B4EC(*(v0 + 48), *(v0 + 56));

  j__swift_release();
  sub_21B9D0D94(*(v0 + 96), *(v0 + 104));

  v1 = *(v0 + 128);
  if (v1 != 255)
  {
    sub_21B9D0DC8(*(v0 + 120), v1 & 1);
  }

  if (*(v0 + 280))
  {
    sub_21B9CA1E8(*(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264));
  }

  return MEMORY[0x2821FE8E8](v0, 336, 7);
}

unint64_t sub_21B9EAB08()
{
  result = qword_27CDA58C8;
  if (!qword_27CDA58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDA58C8);
  }

  return result;
}

unint64_t sub_21B9EAB5C()
{
  result = qword_27CD9DB40;
  if (!qword_27CD9DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DB40);
  }

  return result;
}

unint64_t sub_21B9EABE0()
{
  result = qword_27CDA58D0[0];
  if (!qword_27CDA58D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA58D0);
  }

  return result;
}

unint64_t sub_21B9EAC34()
{
  result = qword_27CD9DB60;
  if (!qword_27CD9DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DB60);
  }

  return result;
}

uint64_t sub_21B9EAC88(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_21B9EAD04(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DCE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v7 = a1[3];
  v39 = a1;
  v8 = __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_21B9EC590();
  sub_21BA88C0C();
  if (v1)
  {
    goto LABEL_2;
  }

  LOBYTE(v38[0]) = 0;
  v10 = sub_21BA8882C();
  if (v10)
  {
    sub_21B9B3220(v39, v38);
    v11 = objc_allocWithZone(type metadata accessor for MultiChoiceTray.LegacyHeader());
    sub_21B9E989C(v38);
    v8 = v12;
    (*(v4 + 8))(v6, v3);
LABEL_2:
    __swift_destroy_boxed_opaque_existential_1(v39);
    return v8;
  }

  v36 = v10;
  LOBYTE(v38[0]) = 1;
  v13 = sub_21BA887FC();
  v38[0] = 44;
  v38[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v13);
  *(&v33 - 2) = v38;
  v16 = sub_21B9E9DB4(0x7FFFFFFFFFFFFFFFLL, 1, sub_21B9EC974, (&v33 - 4), v14, v15, &v33);
  v17 = *(v16 + 16);
  if (!v17)
  {

    (*(v4 + 8))(v6, v3);
    v8 = MEMORY[0x277D84F90];
    goto LABEL_2;
  }

  v33 = v4;
  v34 = v3;
  v35 = 0;
  v38[0] = MEMORY[0x277D84F90];
  v18 = v16;
  sub_21B9BCCB8(0, v17, 0);
  result = v18;
  v19 = 0;
  v8 = v38[0];
  v20 = (v18 + 56);
  v37 = v6;
  while (v19 < result[2])
  {
    v21 = result;
    v22 = *(v20 - 3);
    v23 = *(v20 - 2);
    v24 = *(v20 - 1);
    v25 = *v20;

    v26 = MEMORY[0x21CEFD0C0](v22, v23, v24, v25);
    v28 = v27;

    v38[0] = v8;
    v30 = v8[2];
    v29 = v8[3];
    if (v30 >= v29 >> 1)
    {
      sub_21B9BCCB8((v29 > 1), v30 + 1, 1);
      v8 = v38[0];
    }

    ++v19;
    v8[2] = v30 + 1;
    v31 = &v8[2 * v30];
    v31[4] = v26;
    v31[5] = v28;
    v20 += 4;
    result = v21;
    v32 = v37;
    if (v17 == v19)
    {

      (*(v33 + 8))(v32, v34);
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void *sub_21B9EB088(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-1] - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B9EC5E4();
  sub_21BA88C0C();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD08);
    sub_21B9EC9CC();
    sub_21BA8880C();
    v7 = v10[0];
    sub_21B9B3220(a1, v10);
    sub_21B9EAD04(v10);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

void sub_21B9EB290(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  *&v25 = sub_21BA87CBC();
  *(&v25 + 1) = v7;

  v8 = MEMORY[0x277D837D0];
  sub_21BA8853C();
  sub_21B9AFF80(a1, v6, &qword_27CD9DBA0);
  v9 = sub_21BA864AC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_21B9ABAAC(v6, &qword_27CD9DBA0);
    v25 = 0u;
    v26 = 0u;
  }

  else
  {
    v11 = sub_21BA863FC();
    *(&v26 + 1) = v8;
    *&v25 = v11;
    *(&v25 + 1) = v12;
    (*(v10 + 8))(v6, v9);
  }

  v13 = [v2 attributes];
  if (!v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v13;
  v15 = sub_21BA87BCC();

  v24 = v15;
  if (*(&v26 + 1))
  {
    sub_21B9AFF70(&v25, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v15;
    sub_21B9EA4C8(v23, v27, isUniquelyReferenced_nonNull_native);
    sub_21B9AFD9C(v27);
    if (v22)
    {
LABEL_7:
      v17 = sub_21BA87BBC();

      goto LABEL_10;
    }
  }

  else
  {
    sub_21B9ABAAC(&v25, &qword_27CD9E7C0);
    sub_21B9EA280(v27, v23);
    sub_21B9ABAAC(v23, &qword_27CD9E7C0);
    sub_21B9AFD9C(v27);
    if (v24)
    {
      goto LABEL_7;
    }
  }

  v17 = 0;
LABEL_10:
  [v2 setAttributes_];

  v18 = [v2 pageElement];
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  v20 = [v18 page];

  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = [v20 objectModel];

  if (v21)
  {
    [v21 activateElement:v2 completion:0];

    return;
  }

LABEL_17:
  __break(1u);
}

unint64_t sub_21B9EB5E0()
{
  result = qword_27CD9DBC0;
  if (!qword_27CD9DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DBC0);
  }

  return result;
}

uint64_t sub_21B9EB658()
{
  v0 = [objc_allocWithZone(RUIScriptingStaticFunction) init];
  result = strdup("updateHTMLHeaderContent");
  if (result)
  {
    [v0 setIdentifier_];
    [v0 setFunction_];
    [v0 setJSPropertyAttributes_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D270);
    result = swift_allocObject();
    *(result + 16) = xmmword_21BA95B00;
    *(result + 32) = v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21B9EB720()
{
  result = qword_27CD9DBD0;
  if (!qword_27CD9DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DBD0);
  }

  return result;
}

unint64_t sub_21B9EB778()
{
  result = qword_27CD9DBD8;
  if (!qword_27CD9DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DBD8);
  }

  return result;
}

unint64_t sub_21B9EB7D0()
{
  result = qword_27CD9DBE0;
  if (!qword_27CD9DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DBE0);
  }

  return result;
}

unint64_t sub_21B9EB840()
{
  result = qword_27CD9BB68;
  if (!qword_27CD9BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BB68);
  }

  return result;
}

unint64_t sub_21B9EB894()
{
  result = qword_27CD9BB60;
  if (!qword_27CD9BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BB60);
  }

  return result;
}

unint64_t sub_21B9EB8E8()
{
  result = qword_27CD9BB78;
  if (!qword_27CD9BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9BB78);
  }

  return result;
}

unint64_t sub_21B9EB940()
{
  result = qword_27CD9DBF0;
  if (!qword_27CD9DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DBF0);
  }

  return result;
}

unint64_t sub_21B9EB998()
{
  result = qword_27CD9DBF8;
  if (!qword_27CD9DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DBF8);
  }

  return result;
}

unint64_t sub_21B9EB9F0()
{
  result = qword_27CD9DC00;
  if (!qword_27CD9DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DC00);
  }

  return result;
}

unint64_t sub_21B9EBA48()
{
  result = qword_27CD9DC08;
  if (!qword_27CD9DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DC08);
  }

  return result;
}

unint64_t sub_21B9EBAA0()
{
  result = qword_27CD9DC10;
  if (!qword_27CD9DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DC10);
  }

  return result;
}

unint64_t sub_21B9EBAF8()
{
  result = qword_27CD9DC18;
  if (!qword_27CD9DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DC18);
  }

  return result;
}

unint64_t sub_21B9EBB50()
{
  result = qword_27CD9DC20;
  if (!qword_27CD9DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DC20);
  }

  return result;
}

unint64_t sub_21B9EBBA8()
{
  result = qword_27CD9DC28;
  if (!qword_27CD9DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DC28);
  }

  return result;
}

unint64_t sub_21B9EBC00()
{
  result = qword_27CD9DC30;
  if (!qword_27CD9DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DC30);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8RemoteUI15MultiChoiceTrayV6HeaderOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8RemoteUI8RUIImageVSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21B9EBC94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
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

uint64_t sub_21B9EBCDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B9EBD70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B9EBDB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B9EBDFC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_21B9EBE58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_21B9EBEA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Choice.ButtonType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Choice.ButtonType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21B9EC080(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_21B9EC0C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21B9EC168()
{
  result = qword_27CD9DCA8;
  if (!qword_27CD9DCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DCB0);
    sub_21B9B35B8(&qword_27CD9DCB8, &qword_27CD9DCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DCA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiChoiceView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MultiChoiceView.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B9EC384()
{
  result = qword_27CDA6760[0];
  if (!qword_27CDA6760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA6760);
  }

  return result;
}

unint64_t sub_21B9EC3DC()
{
  result = qword_27CDA69F0[0];
  if (!qword_27CDA69F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA69F0);
  }

  return result;
}

unint64_t sub_21B9EC434()
{
  result = qword_27CDA6B00;
  if (!qword_27CDA6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDA6B00);
  }

  return result;
}

unint64_t sub_21B9EC48C()
{
  result = qword_27CDA6B08[0];
  if (!qword_27CDA6B08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA6B08);
  }

  return result;
}

unint64_t sub_21B9EC4E4()
{
  result = qword_27CDA6B90;
  if (!qword_27CDA6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDA6B90);
  }

  return result;
}

unint64_t sub_21B9EC53C()
{
  result = qword_27CDA6B98[0];
  if (!qword_27CDA6B98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA6B98);
  }

  return result;
}

unint64_t sub_21B9EC590()
{
  result = qword_27CD9DCD0;
  if (!qword_27CD9DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DCD0);
  }

  return result;
}

unint64_t sub_21B9EC5E4()
{
  result = qword_27CD9DCD8;
  if (!qword_27CD9DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DCD8);
  }

  return result;
}

void sub_21B9EC638(const OpaqueJSContext *a1, OpaqueJSValue *a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_21BA87D1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    GlobalContext = JSContextGetGlobalContext(a1);
    if (GlobalContext)
    {
      v13 = [objc_opt_self() contextWithJSGlobalContextRef_];
      if (v13)
      {
        v33 = v13;
        v14 = MEMORY[0x277D84F90];
        if (a3)
        {
          v32 = a2;
          v34 = MEMORY[0x277D84F90];
          sub_21BA8863C();
          v15 = objc_opt_self();
          if (a3 < 1)
          {
            __break(1u);
            goto LABEL_24;
          }

          v16 = v15;
          do
          {
            v17 = *a4++;
            v18 = [v16 valueWithJSValueRef:v17 inContext:v33];
            sub_21BA8861C();
            sub_21BA8864C();
            sub_21BA8865C();
            sub_21BA8862C();
            --a3;
          }

          while (a3);
          v14 = v34;
          a2 = v32;
        }

        if (*(v14 + 16))
        {
          v19 = *(v14 + 32);
          v20 = v19;

          if (v19)
          {
            v21 = [v20 toString];

            if (v21)
            {
              sub_21BA87CBC();

              sub_21BA87CFC();
              v22 = sub_21BA87CCC();
              v24 = v23;

              (*(v9 + 8))(v11, v8);
              if (v24 >> 60 == 15)
              {
LABEL_15:

                return;
              }

              Private = JSObjectGetPrivate(a2);
              if (Private)
              {
                v26 = Private;
                v27 = *(*&Private[OBJC_IVAR____TtCV8RemoteUI15MultiChoiceTray12LegacyHeader_htmlHeader] + OBJC_IVAR____TtCV8RemoteUI15MultiChoiceTray17HTMLHeaderElement_webContainerView);
                v28 = v26;
                v29 = sub_21BA864CC();
                [v27 updateContent_];

                sub_21B9B91AC(v22, v24);
                goto LABEL_15;
              }

LABEL_24:
              __break(1u);
              return;
            }
          }

          v30 = v33;
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_21B9EC974(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21BA8899C() & 1;
  }
}

unint64_t sub_21B9EC9CC()
{
  result = qword_27CD9DD10;
  if (!qword_27CD9DD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DD08);
    sub_21B93FC9C(&qword_27CD9DD18, 255, type metadata accessor for Choice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DD10);
  }

  return result;
}

uint64_t sub_21B9ECAE0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21B9ECAF0@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.ruiStyleName.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_21B9ECB68()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 104);
  if (*(v0 + 112) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_21BA8820C();
    v7 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B94B4EC(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

id sub_21B9ECCD8(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_21B9ECCE4()
{
  if (*(v0 + *(type metadata accessor for PinViewElement(0) + 80)) != 1)
  {
    return v0[15];
  }

  v1 = v0[7];
  v13[2] = v0[6];
  v13[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9DD40);
  v2 = sub_21BA8797C();
  (*(*v13[1] + 208))(v2);
  v4 = v3;

  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v13 - v8;
  (*(v4 + 24))(ObjectType, v4);
  swift_unknownObjectRelease();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v11;
}

uint64_t sub_21B9ECECC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_21BA86BEC();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v28 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PinViewElement(0);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD68);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD70);
  v11 = *(v10 - 8);
  v26 = v10;
  v27 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  sub_21BA86F3C();
  v23 = v1;
  v14 = *(v1 + 16);
  v36 = *v1;
  v37 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD78);
  sub_21BA8799C();
  sub_21BA86A7C();
  v15 = sub_21B9B35B8(&qword_27CD9DD80, &qword_27CD9DD68);
  v16 = sub_21B9F75C4();
  sub_21BA8773C();
  (*(v7 + 8))(v9, v6);
  v17 = v24;
  sub_21B9F7618(v23, v24, type metadata accessor for PinViewElement);
  v18 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v19 = swift_allocObject();
  sub_21B9F8680(v17, v19 + v18, type metadata accessor for PinViewElement);
  v20 = v28;
  sub_21BA86BDC();
  v32 = v6;
  v33 = &type metadata for PinViewElement.CapsuleTextFieldStyle;
  v34 = v15;
  v35 = v16;
  swift_getOpaqueTypeConformance2();
  v21 = v26;
  sub_21BA8785C();

  (*(v30 + 8))(v20, v31);
  return (*(v27 + 8))(v13, v21);
}

uint64_t sub_21B9ED30C(uint64_t *a1)
{
  v2 = type metadata accessor for PinViewElement(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = a1[7];
  v17 = a1[6];
  v18 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9DD40);
  sub_21BA8797C();
  v6 = v15;
  v7 = a1[1];
  v8 = a1[2];
  v17 = *a1;
  v18 = v7;
  v19 = v8;
  v14[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD78);
  sub_21BA8797C();
  v9 = v15;
  v10 = v16;
  sub_21B9F7618(a1, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PinViewElement);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_21B9F8680(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PinViewElement);
  (*(*v6 + 344))(v9, v10, &unk_21BA97708, v12);
}

uint64_t sub_21B9ED54C(uint64_t a1)
{
  v1[12] = a1;
  v3 = sub_21BA8673C();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = sub_21BA87FEC();
  v1[17] = sub_21BA87FDC();
  v4 = type metadata accessor for PinViewElement(0);
  v5 = swift_task_alloc();
  v1[18] = v5;
  v6 = type metadata accessor for URLLoader(0);
  v7 = sub_21B9F86E8(&qword_27CD9E020, type metadata accessor for PinViewElement);
  *v5 = v1;
  v5[1] = sub_21B9ED6D8;

  return URLLoadingCapable.activate<A>(_:)(a1, v6, v4, &protocol witness table for URLLoader, v7);
}

uint64_t sub_21B9ED6D8()
{
  *(*v1 + 152) = v0;

  v3 = sub_21BA87F9C();
  if (v0)
  {
    v4 = sub_21B9ED8F0;
  }

  else
  {
    v4 = sub_21B9ED830;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21B9ED830()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + 16);
  *(v0 + 40) = *v1;
  *(v0 + 56) = v2;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD78);
  sub_21BA8798C();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21B9ED8F0()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);

  v5 = sub_21B9E0270();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_21BA8671C();
  v8 = sub_21BA881FC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 152);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_21B93D000, v7, v8, "Error calling activate: %@", v10, 0xCu);
    sub_21B9ABAAC(v11, &qword_27CD9E278);
    MEMORY[0x21CEFF180](v11, -1, -1);
    MEMORY[0x21CEFF180](v10, -1, -1);
  }

  v15 = *(v0 + 112);
  v14 = *(v0 + 120);
  v17 = *(v0 + 96);
  v16 = *(v0 + 104);

  (*(v15 + 8))(v14, v16);
  v18 = *(v17 + 16);
  *(v0 + 16) = *v17;
  *(v0 + 32) = v18;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD78);
  sub_21BA8798C();
  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21B9EDAE4@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD98);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DDA0);
  MEMORY[0x28223BE20](v31);
  v6 = &v29 - v5;
  sub_21B9EDFEC(v1, v4);
  v33 = &unk_282D63270;
  v7 = v1[6];
  v30 = v1[7];
  v35 = v7;
  v36 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9DD40);
  v8 = sub_21BA8797C();
  v9 = (*(*v38 + 256))(v8);

  v35 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DDA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DDB0);
  sub_21B9F975C(&qword_27CD9DDB8, &qword_27CD9DD98, &unk_21BA96B40, sub_21B9F7698);
  sub_21B9B35B8(&qword_27CD9DDE0, &qword_27CD9DDA8);
  sub_21B9F7818();
  sub_21BA8770C();
  sub_21B9ABAAC(v4, &qword_27CD9DD98);
  LOBYTE(v4) = sub_21BA8748C();
  sub_21BA869EC();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DE00) + 36)];
  *v18 = v4;
  *(v18 + 1) = v11;
  *(v18 + 2) = v13;
  *(v18 + 3) = v15;
  *(v18 + 4) = v17;
  v18[40] = 0;
  v19 = v30;
  v35 = v7;
  v36 = v30;
  v20 = sub_21BA8797C();
  LOBYTE(v4) = (*(*v33 + 352))(v20);

  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v4 & 1;
  v23 = &v6[*(v31 + 36)];
  *v23 = KeyPath;
  v23[1] = sub_21B9C675C;
  v23[2] = v22;
  v38 = sub_21BA457E4();
  v39 = v24;
  v33 = v7;
  v34 = v19;
  sub_21BA8799C();
  v25 = v35;
  v26 = v36;
  v27 = v37;
  swift_getKeyPath();
  v35 = v25;
  v36 = v26;
  v37 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DE08);
  sub_21BA87A5C();

  sub_21B9F78D0();
  sub_21B9BAB9C();
  sub_21BA877FC();

  return sub_21B9ABAAC(v6, &qword_27CD9DDA0);
}

uint64_t sub_21B9EDFEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DDD8);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E280);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E288);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = a1[7];
  v29 = a1[6];
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9DD40);
  v14 = sub_21BA8797C();
  v15 = (*(*v33 + 336))(v14);

  if (v15)
  {
    sub_21B9ECECC(v12);
    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DD70);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DD68);
    v18 = sub_21B9B35B8(&qword_27CD9DD80, &qword_27CD9DD68);
    v19 = sub_21B9F75C4();
    v29 = v17;
    v30 = &type metadata for PinViewElement.CapsuleTextFieldStyle;
    v31 = v18;
    v32 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v29 = v16;
    v30 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_21B9B35B8(&qword_27CD9DDD0, &qword_27CD9DDD8);
    sub_21BA8715C();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    *v5 = sub_21BA86ECC();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DE38);
    sub_21B9EE6E4(a1, &v5[*(v22 + 44)]);
    sub_21B946AC0(v5, v8);
    swift_storeEnumTagMultiPayload();
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DD70);
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DD68);
    v25 = sub_21B9B35B8(&qword_27CD9DD80, &qword_27CD9DD68);
    v26 = sub_21B9F75C4();
    v29 = v24;
    v30 = &type metadata for PinViewElement.CapsuleTextFieldStyle;
    v31 = v25;
    v32 = v26;
    v27 = swift_getOpaqueTypeConformance2();
    v29 = v23;
    v30 = v27;
    swift_getOpaqueTypeConformance2();
    sub_21B9B35B8(&qword_27CD9DDD0, &qword_27CD9DDD8);
    sub_21BA8715C();
    return sub_21B9ABAAC(v5, &qword_27CD9DDD8);
  }
}

uint64_t sub_21B9EE4AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2)
  {
    v5 = 30.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DDF8);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DDB0);
  v8 = a3 + *(result + 36);
  *v8 = v5;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_21B9EE558()
{
  v0 = sub_21BA87A0C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BA879FC();
  v4 = MEMORY[0x21CEFCEB0](v3, 0.5);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21B9EE64C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_21B9EE6E4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for PinViewElement(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = v5;
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E268);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v37 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = &v26 - v10;
  v30 = sub_21B9ECCE4();
  v11 = *a1;
  v32 = a1[1];
  v33 = v11;
  v31 = a1[2];
  v50 = v11;
  v51 = v32;
  v52 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD78);
  sub_21BA8799C();
  v12 = v43;
  v35 = v43;
  v27 = v44;
  v13 = v46;
  v28 = v45;
  v34 = v46;
  sub_21B9F7618(a1, v6, type metadata accessor for PinViewElement);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_21B9F8680(v6, v15 + v14, type metadata accessor for PinViewElement);
  v43 = v30;
  v44 = v12;
  v45 = v27;
  v46 = v28;
  v47 = v13;
  v48 = sub_21B9FA2B8;
  v49 = v15;
  v50 = v33;
  v51 = v32;
  v52 = v31;
  sub_21BA8797C();
  v50 = v41;
  v51 = v42;
  sub_21B9F7618(a1, v6, type metadata accessor for PinViewElement);
  v16 = swift_allocObject();
  sub_21B9F8680(v6, v16 + v14, type metadata accessor for PinViewElement);
  sub_21B9F8C20();
  v17 = v36;
  sub_21BA8784C();

  v19 = v37;
  v18 = v38;
  v20 = *(v38 + 16);
  v21 = v39;
  v20(v37, v17, v39);
  v22 = v40;
  v20(v40, v19, v21);
  v23 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E270) + 48)];
  *v23 = 0;
  v23[8] = 1;
  v24 = *(v18 + 8);
  v24(v17, v21);
  return (v24)(v19, v21);
}

uint64_t sub_21B9EEAEC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = sub_21BA8673C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B9E0270();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_21BA8671C();
  v12 = sub_21BA8821C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21B93D000, v11, v12, "Validating local passcode", v13, 2u);
    MEMORY[0x21CEFF180](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = *(a3 + 2);
  v17 = *a3;
  v18 = v14;
  v16[1] = a1;
  v16[2] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD78);
  return sub_21BA8798C();
}

uint64_t sub_21B9EEC9C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for PinViewElement(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21B9EEF08();
  v6 = sub_21BA87D9C();
  result = sub_21B9ECCE4();
  if (v6 == result)
  {
    v8 = a2[7];
    v19 = a2[6];
    v20 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9DD40);
    sub_21BA8797C();
    v9 = v17;
    v10 = a2[1];
    v11 = a2[2];
    v19 = *a2;
    v20 = v10;
    v21 = v11;
    v16[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD78);
    sub_21BA8797C();
    v12 = v17;
    v13 = v18;
    sub_21B9F7618(a2, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PinViewElement);
    v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v15 = swift_allocObject();
    sub_21B9F8680(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PinViewElement);
    (*(*v9 + 344))(v12, v13, &unk_21BA976E0, v15);
  }

  return result;
}

uint64_t sub_21B9EEF08()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  *&v17 = *v0;
  *(&v17 + 1) = v3;
  *&v18 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD78);
  sub_21BA8797C();
  v5 = sub_21BA87D9C();

  if (v5 == v1[15])
  {
    v7 = type metadata accessor for PinViewElement(0);
    v8 = v1[8];
    if (*(v1 + *(v7 + 80)) == 1)
    {
      if (v8)
      {
        v10 = v1[16];
        v9 = v1[17];
        v17 = 0u;
        v18 = 0u;
        v11 = *(*v8 + 136);

        v12 = v11(v16);
        sub_21B9C8A00(&v17, v10, v9);
        v12(v16, 0);
      }
    }

    else if (v8)
    {
      v14 = v1[16];
      v13 = v1[17];
      *&v17 = v2;
      *(&v17 + 1) = v3;
      *&v18 = v4;

      sub_21BA8797C();
      *(&v18 + 1) = MEMORY[0x277D837D0];
      v17 = v16[0];
      v15 = (*(*v8 + 136))(v16);
      sub_21B9C8A00(&v17, v14, v13);
      v15(v16, 0);
    }

    type metadata accessor for XMLUIData();
    sub_21B9F86E8(&qword_27CD9BAC8, type metadata accessor for XMLUIData);
    result = sub_21BA86CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B9EF140(uint64_t a1)
{
  v1[12] = a1;
  v3 = sub_21BA8673C();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = sub_21BA87FEC();
  v1[17] = sub_21BA87FDC();
  v4 = type metadata accessor for PinViewElement(0);
  v5 = swift_task_alloc();
  v1[18] = v5;
  v6 = type metadata accessor for URLLoader(0);
  v7 = sub_21B9F86E8(&qword_27CD9E020, type metadata accessor for PinViewElement);
  *v5 = v1;
  v5[1] = sub_21B9EF2CC;

  return URLLoadingCapable.activate<A>(_:)(a1, v6, v4, &protocol witness table for URLLoader, v7);
}

uint64_t sub_21B9EF2CC()
{
  *(*v1 + 152) = v0;

  v3 = sub_21BA87F9C();
  if (v0)
  {
    v4 = sub_21B9FA540;
  }

  else
  {
    v4 = sub_21B9FA554;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21B9EF424@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E038);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E040);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E048);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v25 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  *v5 = sub_21BA86FEC();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E050);
  sub_21B9EF79C(a1, &v5[*(v16 + 44)]);
  v17 = sub_21B9B35B8(&qword_27CD9E058, &qword_27CD9E038);
  sub_21BA0F5A8(5);
  sub_21B9ABAAC(v5, &qword_27CD9E038);
  sub_21BA86F3C();
  v29 = v3;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v26;
  sub_21BA8774C();

  (*(v27 + 8))(v9, v18);
  v19 = *(v11 + 16);
  v20 = v25;
  v19(v25, v15, v10);
  v21 = v28;
  v19(v28, v20, v10);
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E060) + 48)];
  *v22 = 0;
  v22[8] = 1;
  v23 = *(v11 + 8);
  v23(v15, v10);
  return (v23)(v20, v10);
}

uint64_t sub_21B9EF79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E068);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v64 = (&v62 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E070);
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v63 = (&v62 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E078);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD60);
  MEMORY[0x28223BE20](v13 - 8);
  v71 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v78 = &v62 - v16;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E080);
  MEMORY[0x28223BE20](v75);
  v18 = &v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E088);
  MEMORY[0x28223BE20](v19);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E090);
  v66 = *(v22 - 8);
  v67 = v22;
  MEMORY[0x28223BE20](v22);
  v77 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E098);
  MEMORY[0x28223BE20](v27 - 8);
  v76 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v74 = &v62 - v30;
  sub_21B9F0064((&v62 - v30));
  sub_21B9F0B60(a1, v18);
  v31 = *(a1 + 32);
  v32 = *(a1 + 40);
  v79 = *(a1 + 24);
  v80 = v31;
  v81 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E030);
  sub_21BA86A0C();
  sub_21B9F975C(&qword_27CD9E0A0, &qword_27CD9E080, &unk_21BA974C0, sub_21B9F97D8);
  sub_21BA8781C();

  sub_21B9ABAAC(v18, &qword_27CD9E080);
  v33 = type metadata accessor for PinViewElement(0);
  v34 = type metadata accessor for URLLoader(0);
  v35 = URLLoadingCapable.isLoading.getter(v34, &protocol witness table for URLLoader);
  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v35 & 1;
  v38 = &v21[*(v19 + 36)];
  *v38 = KeyPath;
  v38[1] = sub_21B9FA550;
  v38[2] = v37;
  v39 = sub_21B9F9AF8();
  v75 = v26;
  sub_21B9AC578(v39, v26);
  sub_21B9ABAAC(v21, &qword_27CD9E088);
  sub_21B9AFF80(a1 + *(v33 + 72), v78, &qword_27CD9DD60);
  v40 = 1;
  if (URLLoadingCapable.isLoading.getter(v34, &protocol witness table for URLLoader))
  {
    v41 = sub_21BA86ECC();
    v42 = v63;
    *v63 = v41;
    *(v42 + 8) = 0;
    *(v42 + 16) = 1;
    v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E108) + 44);
    v44 = sub_21BA86FDC();
    v45 = v64;
    *v64 = v44;
    *(v45 + 8) = 0;
    *(v45 + 16) = 1;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E110);
    sub_21B9F1870((v45 + *(v46 + 44)));
    v47 = v65;
    sub_21B9AFF80(v45, v65, &qword_27CD9E068);
    *v43 = 0;
    *(v43 + 8) = 1;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E118);
    sub_21B9AFF80(v47, v43 + *(v48 + 48), &qword_27CD9E068);
    v49 = v43 + *(v48 + 64);
    *v49 = 0;
    *(v49 + 8) = 1;
    sub_21B9ABAAC(v45, &qword_27CD9E068);
    sub_21B9ABAAC(v47, &qword_27CD9E068);
    sub_21B9AB6D4(v42, v73, &qword_27CD9E070);
    v40 = 0;
  }

  v50 = v73;
  (*(v68 + 56))(v73, v40, 1, v69);
  v51 = v76;
  sub_21B9AFF80(v74, v76, &qword_27CD9E098);
  v53 = v66;
  v52 = v67;
  v54 = *(v66 + 16);
  v55 = v77;
  v54(v77, v75, v67);
  v56 = v71;
  sub_21B9AFF80(v78, v71, &qword_27CD9DD60);
  v57 = v70;
  sub_21B9AFF80(v50, v70, &qword_27CD9E078);
  v58 = v72;
  sub_21B9AFF80(v51, v72, &qword_27CD9E098);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E100);
  v54((v58 + v59[12]), v55, v52);
  sub_21B9AFF80(v56, v58 + v59[16], &qword_27CD9DD60);
  sub_21B9AFF80(v57, v58 + v59[20], &qword_27CD9E078);
  sub_21B9ABAAC(v50, &qword_27CD9E078);
  sub_21B9ABAAC(v78, &qword_27CD9DD60);
  v60 = *(v53 + 8);
  v60(v75, v52);
  sub_21B9ABAAC(v74, &qword_27CD9E098);
  sub_21B9ABAAC(v57, &qword_27CD9E078);
  sub_21B9ABAAC(v56, &qword_27CD9DD60);
  v60(v77, v52);
  return sub_21B9ABAAC(v76, &qword_27CD9E098);
}

uint64_t sub_21B9F0064@<X0>(void *a1@<X8>)
{
  v99 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E1E8);
  MEMORY[0x28223BE20](v96);
  v88 = &v87 - v2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E1F0);
  MEMORY[0x28223BE20](v94);
  v95 = (&v87 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E1F8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v98 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v87 - v7;
  v100 = type metadata accessor for PinViewElement(0);
  v9 = (v1 + *(v100 + 60));
  v10 = v9[7];
  v11 = v9[5];
  v124 = v9[6];
  v125 = v10;
  v12 = v9[7];
  v126[0] = v9[8];
  *(v126 + 9) = *(v9 + 137);
  v13 = v9[3];
  v14 = v9[5];
  v122 = v9[4];
  v123 = v14;
  v15 = v9[2];
  v16 = v9[1];
  v121 = v9[3];
  v120 = v15;
  v17 = v9[1];
  v118 = *v9;
  v119 = v17;
  v133 = v124;
  v134 = v12;
  v135[0] = v9[8];
  *(v135 + 9) = *(v9 + 137);
  v129 = v15;
  v130 = v13;
  v131 = v122;
  v132 = v11;
  v127 = v118;
  v128 = v16;
  v18 = sub_21B9FA0A8(&v127);
  v97 = v8;
  if (v18 == 1)
  {
    sub_21B9FA0C0(v117);
  }

  else
  {
    v114 = v133;
    v115 = v134;
    v116[0] = v135[0];
    *(v116 + 9) = *(v135 + 9);
    v110 = v129;
    v111 = v130;
    v112 = v131;
    v113 = v132;
    v108 = v127;
    v109 = v128;
    v103[6] = v124;
    v103[7] = v125;
    v104[0] = v126[0];
    *(v104 + 9) = *(v126 + 9);
    v103[2] = v120;
    v103[3] = v121;
    v103[4] = v122;
    v103[5] = v123;
    v103[0] = v118;
    v103[1] = v119;
    sub_21B9FA25C(v103, v117);
    v92 = sub_21BA86ECC();
    v102 = 1;
    v139[2] = v110;
    v139[3] = v111;
    v139[4] = v112;
    v139[5] = v113;
    v139[0] = v108;
    v139[1] = v109;
    v106[4] = v112;
    v106[5] = v113;
    v106[2] = v110;
    v106[3] = v111;
    v106[0] = v108;
    v106[1] = v109;
    sub_21BA87B2C();
    sub_21BA86AEC();
    v107[6] = v106[6];
    v107[7] = v106[7];
    v107[8] = v106[8];
    v107[2] = v106[2];
    v107[3] = v106[3];
    v107[5] = v106[5];
    v107[4] = v106[4];
    v107[1] = v106[1];
    v107[0] = v106[0];
    *&v137[87] = v106[5];
    *&v137[103] = v106[6];
    *&v137[119] = v106[7];
    *&v137[135] = v106[8];
    *&v137[23] = v106[1];
    *&v137[39] = v106[2];
    *&v137[55] = v106[3];
    *&v137[71] = v106[4];
    *&v137[7] = v106[0];
    v117[6] = v106[6];
    v117[7] = v106[7];
    v117[8] = v106[8];
    v117[2] = v106[2];
    v117[3] = v106[3];
    v117[5] = v106[5];
    v117[4] = v106[4];
    v138 = 1;
    v136 = 1;
    v117[1] = v106[1];
    v117[0] = v106[0];
    sub_21B9E52FC(v139, v105);
    sub_21B9AFF80(v107, v105, &unk_27CD9E240);
    sub_21B9ABAAC(v117, &unk_27CD9E240);
    *&v105[105] = *&v137[96];
    *&v105[121] = *&v137[112];
    *&v105[137] = *&v137[128];
    *&v105[41] = *&v137[32];
    *&v105[57] = *&v137[48];
    *&v105[73] = *&v137[64];
    *&v105[89] = *&v137[80];
    *&v105[9] = *v137;
    *&v105[25] = *&v137[16];
    *(&v106[6] + 9) = *&v137[96];
    *(&v106[7] + 9) = *&v137[112];
    *(&v106[8] + 9) = *&v137[128];
    *(&v106[2] + 9) = *&v137[32];
    *(&v106[3] + 9) = *&v137[48];
    *(&v106[4] + 9) = *&v137[64];
    *(&v106[5] + 9) = *&v137[80];
    *(v106 + 9) = *v137;
    *v105 = 0;
    v105[8] = 1;
    *&v105[152] = *&v137[143];
    *&v105[160] = 0;
    v105[168] = 1;
    *&v106[0] = 0;
    BYTE8(v106[0]) = 1;
    *(&v106[1] + 9) = *&v137[16];
    *(&v106[9] + 1) = *&v137[143];
    *&v106[10] = 0;
    BYTE8(v106[10]) = 1;
    sub_21B9AFF80(v105, v117, &qword_27CD9E238);
    sub_21B9ABAAC(v106, &qword_27CD9E238);
    *(&v101[7] + 7) = *&v105[112];
    *(&v101[8] + 7) = *&v105[128];
    *(&v101[9] + 7) = *&v105[144];
    v101[10] = *&v105[153];
    *(&v101[3] + 7) = *&v105[48];
    *(&v101[4] + 7) = *&v105[64];
    *(&v101[5] + 7) = *&v105[80];
    *(&v101[6] + 7) = *&v105[96];
    *(v101 + 7) = *v105;
    *(&v101[1] + 7) = *&v105[16];
    *(&v101[2] + 7) = *&v105[32];
    v19 = v102;
    v20 = sub_21BA8744C();
    sub_21BA869EC();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    LOBYTE(v117[0]) = 0;
    v29 = sub_21BA8745C();
    sub_21BA869EC();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    sub_21B9ABAAC(&v118, &unk_27CD9DD50);
    *(&v107[8] + 1) = v101[7];
    *(&v107[9] + 1) = v101[8];
    *(&v107[10] + 1) = v101[9];
    *(&v107[11] + 1) = v101[10];
    *(&v107[4] + 1) = v101[3];
    *(&v107[5] + 1) = v101[4];
    *(&v107[6] + 1) = v101[5];
    *(&v107[7] + 1) = v101[6];
    *(&v107[1] + 1) = v101[0];
    *(&v107[2] + 1) = v101[1];
    v107[0] = v92;
    LOBYTE(v107[1]) = v19;
    *(&v107[3] + 1) = v101[2];
    BYTE8(v107[12]) = v20;
    *&v107[13] = v22;
    *(&v107[13] + 1) = v24;
    *&v107[14] = v26;
    *(&v107[14] + 1) = v28;
    LOBYTE(v107[15]) = 0;
    BYTE8(v107[15]) = v29;
    *&v107[16] = v31;
    *(&v107[16] + 1) = v33;
    *&v107[17] = v35;
    *(&v107[17] + 1) = v37;
    LOBYTE(v107[18]) = 0;
    nullsub_1(v107);
    memcpy(v117, v107, 0x121uLL);
  }

  v93 = v1;

  sub_21BA86F3C();
  v38 = sub_21BA8765C();
  v40 = v39;
  v42 = v41;
  sub_21BA8757C();
  v43 = sub_21BA8760C();
  v45 = v44;
  v47 = v46;

  v48 = v42 & 1;
  v49 = v93;
  sub_21B9C318C(v38, v40, v48);

  sub_21BA874EC();
  v50 = sub_21BA875DC();
  v90 = v51;
  v91 = v50;
  v89 = v52;
  v92 = v53;
  v54 = v45;
  v55 = v100;
  sub_21B9C318C(v43, v54, v47 & 1);

  if (*(v49 + *(v55 + 64) + 8))
  {

    sub_21BA86F3C();
    v56 = sub_21BA8765C();
    v58 = v57;
    v60 = v59;
    sub_21BA8757C();
    v61 = sub_21BA8760C();
    v63 = v62;
    v65 = v64;

    sub_21B9C318C(v56, v58, v60 & 1);

    LODWORD(v107[0]) = sub_21BA871EC();
    v66 = sub_21BA875FC();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    sub_21B9C318C(v61, v63, v65 & 1);

    v73 = v95;
    *v95 = v66;
    v73[1] = v68;
    *(v73 + 16) = v70 & 1;
    v73[3] = v72;
    swift_storeEnumTagMultiPayload();
    sub_21B9FA0F0();
    v74 = v97;
    sub_21BA8715C();
  }

  else
  {
    v75 = *(v55 + 68);
    KeyPath = swift_getKeyPath();
    v77 = v88;
    sub_21B9AFF80(v49 + v75, v88, &qword_27CD9D5B0);
    v78 = v95;
    v79 = (v77 + *(v96 + 36));
    *v79 = KeyPath;
    v79[1] = sub_21B9F1C84;
    v79[2] = 0;
    sub_21B9AFF80(v77, v78, &qword_27CD9E1E8);
    swift_storeEnumTagMultiPayload();
    sub_21B9FA0F0();
    v74 = v97;
    sub_21BA8715C();
    sub_21B9ABAAC(v77, &qword_27CD9E1E8);
  }

  memcpy(v105, v117, sizeof(v105));
  v80 = v98;
  sub_21B9AFF80(v74, v98, &qword_27CD9E1F8);
  memcpy(v106, v105, 0x121uLL);
  v81 = v99;
  memcpy(v99, v105, 0x121uLL);
  v82 = v90;
  v83 = v91;
  v81[37] = v91;
  v81[38] = v82;
  v84 = v89 & 1;
  *(v81 + 312) = v89 & 1;
  v81[40] = v92;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E228);
  sub_21B9AFF80(v80, v81 + *(v85 + 64), &qword_27CD9E1F8);
  sub_21B9AFF80(v106, v107, &qword_27CD9E230);
  sub_21B9C320C(v83, v82, v84);

  sub_21B9ABAAC(v74, &qword_27CD9E1F8);
  sub_21B9ABAAC(v80, &qword_27CD9E1F8);
  sub_21B9C318C(v83, v82, v84);

  memcpy(v107, v105, 0x121uLL);
  return sub_21B9ABAAC(v107, &qword_27CD9E230);
}

uint64_t sub_21B9F0B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E130);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E138);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E140);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  v14 = type metadata accessor for PinViewElement(0);
  v15 = *(a1 + *(v14 + 84));
  v46 = v3;
  if (v15 == 1)
  {
    sub_21B9EDAE4(v13);
    (*(v11 + 16))(v9, v13, v10);
    swift_storeEnumTagMultiPayload();
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DDA0);
    v17 = sub_21B9F78D0();
    v18 = sub_21B9BAB9C();
    v19 = MEMORY[0x277D837D0];
    v48 = v16;
    v49 = MEMORY[0x277D837D0];
    v50 = MEMORY[0x277CE1420];
    v51 = v17;
    v52 = v18;
    v53 = MEMORY[0x277CE1418];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E0B8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E0C0);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E0C8);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E0D0);
    v24 = sub_21B9F9A40();
    v48 = v23;
    v49 = v19;
    v50 = v24;
    v51 = MEMORY[0x277D837F8];
    v25 = swift_getOpaqueTypeConformance2();
    v26 = sub_21B9F86E8(&qword_27CD9E020, type metadata accessor for PinViewElement);
    v48 = v22;
    v49 = v14;
    v50 = v25;
    v51 = v26;
    v27 = swift_getOpaqueTypeConformance2();
    v28 = sub_21B9B35B8(&qword_27CD9E0F0, &qword_27CD9E0C0);
    v48 = v20;
    v49 = v21;
    v50 = v27;
    v51 = v28;
    swift_getOpaqueTypeConformance2();
    sub_21BA8715C();
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_21B9F1170(v6);
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DDA0);
    v31 = sub_21B9F78D0();
    v32 = sub_21B9BAB9C();
    v33 = MEMORY[0x277D837D0];
    v48 = v30;
    v49 = MEMORY[0x277D837D0];
    v50 = MEMORY[0x277CE1420];
    v51 = v31;
    v52 = v32;
    v53 = MEMORY[0x277CE1418];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E0B8);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E0C0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E0C8);
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E0D0);
    v38 = sub_21B9F9A40();
    v48 = v37;
    v49 = v33;
    v50 = v38;
    v51 = MEMORY[0x277D837F8];
    v39 = swift_getOpaqueTypeConformance2();
    v40 = sub_21B9F86E8(&qword_27CD9E020, type metadata accessor for PinViewElement);
    v48 = v36;
    v49 = v14;
    v50 = v39;
    v51 = v40;
    v41 = swift_getOpaqueTypeConformance2();
    v42 = sub_21B9B35B8(&qword_27CD9E0F0, &qword_27CD9E0C0);
    v48 = v34;
    v49 = v35;
    v50 = v41;
    v51 = v42;
    swift_getOpaqueTypeConformance2();
    v43 = v46;
    sub_21BA8715C();
    return (*(v4 + 8))(v6, v43);
  }
}

uint64_t sub_21B9F1170@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E0C0);
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v48 - v2;
  v60 = type metadata accessor for PinViewElement(0);
  v3 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v53 = v4;
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E0C8);
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  MEMORY[0x28223BE20](v6);
  v57 = &v48 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E0B8);
  v63 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v70 = &v48 - v9;
  v10 = *v1;
  v69 = v1[1];
  v11 = v1[2];
  v67 = v10;
  v68 = v11;
  *&v75 = v10;
  *(&v75 + 1) = v69;
  *&v76 = v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD78);
  sub_21BA8799C();
  v51 = *(&v85 + 1);
  v52 = v85;
  v12 = v86;
  v49 = v1[15];
  v50 = *(&v86 + 1);
  v54 = v1;
  v55 = type metadata accessor for PinViewElement;
  sub_21B9F7618(v1, v5, type metadata accessor for PinViewElement);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_21B9F8680(v5, v14 + v13, type metadata accessor for PinViewElement);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E148);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E150);
  v16 = sub_21B9F9CA8();
  *&v85 = v15;
  *(&v85 + 1) = v16;
  swift_getOpaqueTypeConformance2();
  sub_21B9BAEBC(v52, v51, v12, v50, v49, sub_21B9F9C20, v14, v83);
  LOBYTE(v14) = sub_21BA8748C();
  sub_21BA869EC();
  v82 = 0;
  v75 = v83[0];
  v76 = v83[1];
  v77 = v83[2];
  *&v78 = v84;
  BYTE8(v78) = v14;
  *&v79 = v17;
  *(&v79 + 1) = v18;
  *&v80 = v19;
  *(&v80 + 1) = v20;
  v81 = 0;
  *&v85 = v67;
  *(&v85 + 1) = v69;
  *&v86 = v68;
  sub_21BA8797C();
  v21 = v54;
  sub_21B9F7618(v54, v5, v55);
  v22 = swift_allocObject();
  sub_21B9F8680(v5, v22 + v13, type metadata accessor for PinViewElement);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E0D0);
  v24 = sub_21B9F9A40();
  v25 = MEMORY[0x277D837D0];
  v26 = MEMORY[0x277D837F8];
  v27 = v57;
  sub_21BA8784C();

  v89 = v79;
  v90 = v80;
  v91 = v81;
  v85 = v75;
  v86 = v76;
  v87 = v77;
  v88 = v78;
  sub_21B9ABAAC(&v85, &qword_27CD9E0D0);
  *&v75 = v23;
  *(&v75 + 1) = v25;
  *&v76 = v24;
  *(&v76 + 1) = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = sub_21B9F86E8(&qword_27CD9E020, type metadata accessor for PinViewElement);
  v30 = v21;
  v31 = v21;
  v32 = v58;
  v33 = v60;
  View.registerScriptInterface<A>(for:)(v31, v58, v60, OpaqueTypeConformance2, v29);
  (*(v59 + 8))(v27, v32);
  v34 = v30 + *(v33 + 92);
  v35 = *v34;
  v36 = *(v34 + 8);
  if (*(v34 + 9))
  {
    v37 = 256;
  }

  else
  {
    v37 = 0;
  }

  v38 = v62;
  sub_21B9FBEFC(v35, v37 | v36, v62);
  v71 = v67;
  v72 = v69;
  v73 = v68;
  sub_21BA8799C();
  v71 = v32;
  v72 = v33;
  v73 = OpaqueTypeConformance2;
  v74 = v29;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_21B9B35B8(&qword_27CD9E0F0, &qword_27CD9E0C0);
  v41 = v64;
  v42 = v38;
  v43 = v38;
  v44 = v61;
  v45 = v39;
  v46 = v70;
  sub_21BA459B4(v43, &v75, v61, v64, v45, v40, v65);

  (*(v66 + 8))(v42, v41);
  return (*(v63 + 8))(v46, v44);
}

uint64_t sub_21B9F1870@<X0>(char *a1@<X8>)
{
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E120);
  v30 = *(v32 - 8);
  v1 = v30;
  MEMORY[0x28223BE20](v32);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  sub_21BA86AAC();
  v34 = sub_21BA457E4();
  v35 = v7;
  sub_21B9BAB9C();
  v8 = sub_21BA8767C();
  v10 = v9;
  v12 = v11;
  LODWORD(v34) = sub_21BA871EC();
  v13 = sub_21BA875FC();
  v15 = v14;
  v31 = v16;
  v18 = v17;
  sub_21B9C318C(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v20 = *(v1 + 16);
  v21 = v3;
  v22 = v3;
  v23 = v32;
  v20(v22, v6, v32);
  v24 = v33;
  v20(v33, v21, v23);
  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E128) + 48)];
  *v25 = v13;
  *(v25 + 1) = v15;
  v26 = v31 & 1;
  v25[16] = v31 & 1;
  *(v25 + 3) = v18;
  *(v25 + 4) = KeyPath;
  v25[40] = 1;
  sub_21B9C320C(v13, v15, v26);
  v27 = *(v30 + 8);

  v27(v6, v23);
  sub_21B9C318C(v13, v15, v26);

  return (v27)(v21, v23);
}

void sub_21B9F1B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E028);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12[8] = *(a1 + 24);
  v13 = v5;
  v14 = v6;
  v12[7] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E030);
  sub_21BA869FC();
  v7 = sub_21B9ECB68();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 pageElement];

    if (v9)
    {
      v10 = [v9 page];

      if (v10)
      {
        sub_21B9F7618(a1, v4, type metadata accessor for PinViewElement);
        v11 = type metadata accessor for PinViewElement(0);
        (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
        sub_21BA13AD0(v4);
      }
    }
  }
}

uint64_t sub_21B9F1C84()
{
  sub_21BA8757C();
  sub_21B9B91C0();
  sub_21BA862EC();
  sub_21BA878AC();
  sub_21B9B9304();
  return sub_21BA862EC();
}

unint64_t sub_21B9F1CF4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = sub_21BA87DCC();
  if (v5)
  {
    return 0;
  }

  v6 = 4 * v3;
  v7 = v4 >> 14;

  v8 = 15;
  do
  {
    v9 = v8 >> 14;
    if (v8 >> 14 == v6)
    {

      return 0;
    }

    v8 = sub_21BA87DAC();
  }

  while (v9 != v7);

  result = sub_21BA87DAC();
  if (v7 > result >> 14)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_21BA87E4C();
    v12 = MEMORY[0x21CEFD0C0](v11);

    return v12;
  }

  return result;
}

uint64_t sub_21B9F1E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PinViewElement(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E150);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  result = sub_21BA86ECC();
  *v13 = result;
  *(v13 + 1) = 0x4024000000000000;
  v13[16] = 0;
  v15 = *(a3 + 120);
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9E180);
    v24[1] = a4;
    v24[2] = 0;
    v24[3] = v15;
    swift_getKeyPath();
    sub_21B9F7618(a3, v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PinViewElement);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    sub_21B9F8680(v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PinViewElement);
    v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v18 = a1;
    v18[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D4D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9E190);
    sub_21B9F9EAC();
    sub_21B9F9F38();
    sub_21BA87ACC();
    KeyPath = swift_getKeyPath();
    v20 = &v13[*(v11 + 36)];
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E178) + 28);
    v22 = *MEMORY[0x277CDFA80];
    v23 = sub_21BA86C4C();
    (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
    *v20 = KeyPath;
    sub_21B9F9CA8();
    sub_21BA39B80();
    return sub_21B9ABAAC(v13, &qword_27CD9E150);
  }

  return result;
}

uint64_t sub_21B9F2124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E1E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - v9;
  v11 = *a1;
  v12 = *(sub_21BA86CDC() + 20);
  v13 = *MEMORY[0x277CE0120];
  v14 = sub_21BA86F6C();
  (*(*(v14 - 8) + 104))(&a4[v12], v13, v14);
  __asm { FMOV            V0.2D, #8.0 }

  *a4 = _Q0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E1C8);
  *&a4[*(v20 + 52)] = 2;
  *&a4[*(v20 + 56)] = 256;
  v49 = a4;
  sub_21BA87B2C();
  sub_21BA86AEC();
  v21 = &a4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E1B8) + 36)];
  v22 = v74;
  *v21 = v73;
  *(v21 + 1) = v22;
  *(v21 + 2) = v75;
  v23 = sub_21BA87B2C();
  v50 = v24;
  v51 = v23;
  v25 = sub_21B9F1CF4(v11, a2, a3);
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v28 = 0xE000000000000000;
  if (v26)
  {
    v28 = v26;
  }

  v58 = v27;
  v59 = v28;
  sub_21B9BAB9C();
  v29 = sub_21BA8767C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  KeyPath = swift_getKeyPath();
  v37 = sub_21BA874CC();
  (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
  v38 = sub_21BA8756C();
  sub_21B9ABAAC(v10, &qword_27CD9E1E0);
  v39 = swift_getKeyPath();
  v33 &= 1u;
  v72 = v33;
  *&v53 = v29;
  *(&v53 + 1) = v31;
  LOBYTE(v54) = v33;
  *(&v54 + 1) = *v71;
  DWORD1(v54) = *&v71[3];
  *(&v54 + 1) = v35;
  *&v55 = KeyPath;
  v40 = v35;
  BYTE8(v55) = 1;
  *(&v55 + 9) = *v70;
  HIDWORD(v55) = *&v70[3];
  *&v56 = v39;
  *(&v56 + 1) = v38;
  v42 = v50;
  v41 = v51;
  *&v57 = v51;
  *(&v57 + 1) = v50;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9E190);
  v44 = (v49 + *(v43 + 36));
  v45 = v56;
  v44[2] = v55;
  v44[3] = v45;
  v44[4] = v57;
  v46 = v54;
  *v44 = v53;
  v44[1] = v46;
  v58 = v29;
  v59 = v31;
  v60 = v33;
  *v61 = *v71;
  *&v61[3] = *&v71[3];
  v62 = v40;
  v63 = KeyPath;
  v64 = 1;
  *&v65[3] = *&v70[3];
  *v65 = *v70;
  v66 = v39;
  v67 = v38;
  v68 = v41;
  v69 = v42;
  sub_21B9AFF80(&v53, &v52, &qword_27CD9E1D8);
  return sub_21B9ABAAC(&v58, &qword_27CD9E1D8);
}

uint64_t sub_21B9F24B8(uint64_t a1)
{
  v2 = sub_21BA86C4C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BA86D9C();
}

uint64_t sub_21B9F2580()
{
  v1 = type metadata accessor for PinViewElement(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-v6];
  v8 = *(v0 + 16);
  *&v16[24] = *v0;
  v17 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD78);
  sub_21BA8797C();
  v9 = sub_21BA87D9C();

  if (v9 == *(v0 + 120))
  {
    v11 = sub_21BA8801C();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_21B9F7618(v0, &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PinViewElement);
    sub_21BA87FEC();
    v12 = sub_21BA87FDC();
    v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    *(v14 + 16) = v12;
    *(v14 + 24) = v15;
    sub_21B9F8680(v4, v14 + v13, type metadata accessor for PinViewElement);
    sub_21B9F2BA4(0, 0, v7, &unk_21BA96C10, v14);
  }

  return result;
}

uint64_t sub_21B9F27C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[13] = sub_21BA87FEC();
  v4[14] = sub_21BA87FDC();
  v6 = type metadata accessor for PinViewElement(0);
  v7 = swift_task_alloc();
  v4[15] = v7;
  v8 = type metadata accessor for URLLoader(0);
  v9 = sub_21B9F86E8(&qword_27CD9E020, type metadata accessor for PinViewElement);
  *v7 = v4;
  v7[1] = sub_21B9F28F0;

  return URLLoadingCapable.activate<A>(_:)(a4, v8, v6, &protocol witness table for URLLoader, v9);
}

uint64_t sub_21B9F28F0()
{
  *(*v1 + 128) = v0;

  v3 = sub_21BA87F9C();
  if (v0)
  {
    v4 = sub_21B9F2AF8;
  }

  else
  {
    v4 = sub_21B9F2A4C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21B9F2A4C()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + 16);
  *(v0 + 40) = *v1;
  *(v0 + 56) = v2;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD78);
  sub_21BA8798C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21B9F2AF8()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD78);
  sub_21BA8798C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21B9F2BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21B9AFF80(a3, v22 - v9, &qword_27CD9D6B8);
  v11 = sub_21BA8801C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21B9ABAAC(v10, &qword_27CD9D6B8);
  }

  else
  {
    sub_21BA8800C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21BA87F9C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21BA87D5C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_21B9ABAAC(a3, &qword_27CD9D6B8);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21B9ABAAC(a3, &qword_27CD9D6B8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

unint64_t sub_21B9F2E50(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x664F7265626D756ELL;
    v6 = 0x726564616568;
    if (a1 != 2)
    {
      v6 = 0x7265746F6F66;
    }

    if (a1)
    {
      v5 = 0x646165486C6D7468;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    v2 = 0xD000000000000014;
    if (a1 != 7)
    {
      v2 = 0x657275636573;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D496D6574737973;
    if (a1 != 4)
    {
      v3 = 0x697461676976616ELL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21B9F2F94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0073646C656946;
  v3 = 0x664F7265626D756ELL;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x726564616568;
    if (a1 != 2)
    {
      v13 = 0x7265746F6F66;
    }

    v14 = 0x646165486C6D7468;
    v15 = 0xEA00000000007265;
    if (!a1)
    {
      v14 = 0x664F7265626D756ELL;
      v15 = 0xEE0073646C656946;
    }

    if (a1 <= 1u)
    {
      v11 = v14;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v15;
    }

    else
    {
      v12 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xD000000000000012;
    v6 = 0x800000021BAA47A0;
    v7 = 0x800000021BAA4A20;
    v8 = 0xD000000000000014;
    if (a1 != 7)
    {
      v8 = 0x657275636573;
      v7 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0x6D496D6574737973;
    v10 = 0xEB00000000656761;
    if (a1 != 4)
    {
      v9 = 0x697461676976616ELL;
      v10 = 0xEF656C7469546E6FLL;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v2 = 0xE600000000000000;
      if (a2 == 2)
      {
        v16 = 1684104552;
      }

      else
      {
        v16 = 1953460070;
      }

      if (v11 != (v16 & 0xFFFF0000FFFFFFFFLL | 0x726500000000))
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xEA00000000007265;
      if (v11 != 0x646165486C6D7468)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xEB00000000656761;
        if (v11 != 0x6D496D6574737973)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xEF656C7469546E6FLL;
        if (v11 != 0x697461676976616ELL)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0x800000021BAA47A0;
      if (v11 != 0xD000000000000012)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0x800000021BAA4A20;
      if (v11 != 0xD000000000000014)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v2 = 0xE600000000000000;
    v3 = 0x657275636573;
  }

  if (v11 != v3)
  {
LABEL_49:
    v17 = sub_21BA8899C();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_21B9F3264()
{
  sub_21BA88BAC();
  sub_21B9F32B4();
  return sub_21BA88BCC();
}

uint64_t sub_21B9F32B4()
{
  sub_21BA87D8C();
}

uint64_t sub_21B9F3420()
{
  sub_21BA88BAC();
  sub_21B9F32B4();
  return sub_21BA88BCC();
}

uint64_t sub_21B9F3464@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B9F85E0();
  *a1 = result;
  return result;
}

unint64_t sub_21B9F3494@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21B9F2E50(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21B9F34DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B9F85E0();
  *a1 = result;
  return result;
}

uint64_t sub_21B9F3504(uint64_t a1)
{
  v2 = sub_21B9F862C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B9F3540(uint64_t a1)
{
  v2 = sub_21B9F862C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B9F357C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D5B0);
  MEMORY[0x28223BE20](v3 - 8);
  v68 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD60);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v66 - v6;
  v7 = type metadata accessor for URLLoader(0);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DE60);
  v71 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v66 - v10;
  v12 = type metadata accessor for PinViewElement(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[24] = sub_21BA86A1C() & 1;
  v75 = v15;
  *(v14 + 4) = v15;
  v14[40] = v16 & 1;
  type metadata accessor for XMLUIData();
  sub_21B9F86E8(&qword_27CD9BAC8, type metadata accessor for XMLUIData);
  v73 = sub_21BA86D0C();
  *(v14 + 8) = v73;
  *(v14 + 9) = v17;
  *(v14 + 10) = swift_getKeyPath();
  *(v14 + 11) = 0;
  v14[96] = 0;
  KeyPath = swift_getKeyPath();
  *(v14 + 13) = KeyPath;
  v14[112] = 0;
  v99 = v12;
  v74 = *(v12 + 48);
  sub_21BA860BC();
  v18 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_21B9F862C();
  v19 = v76;
  sub_21BA88C0C();
  if (v19)
  {
    v20 = v77;
    goto LABEL_4;
  }

  LOBYTE(v90) = 0;
  v23 = sub_21BA887DC();
  v25 = v24;
  v66 = v11;
  v26 = v77;
  __swift_project_boxed_opaque_existential_1(v77, v77[3]);
  v27 = Decoder.decodeRUIID()();
  if (v28)
  {
    (*(v71 + 8))(v66, v9);
    v20 = v26;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v20);
    LODWORD(v76) = 0;

    sub_21B9ECAE0(*(v14 + 10), *(v14 + 11), v14[96]);

    v21 = sub_21BA860EC();
    result = (*(*(v21 - 8) + 8))(&v14[v74], v21);
    if (v76)
    {
    }

    return result;
  }

  v29 = 4;
  if ((v25 & 1) == 0)
  {
    v29 = v23;
  }

  *(v14 + 8) = v27;
  *(v14 + 15) = v29;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v30 = Decoder.decodeRUIAttributeDictionary()();
  v31 = v26;
  v32 = v99;
  *&v14[v99[13]] = v30;
  sub_21B9B3220(v31, &v90);
  v33 = v70;
  URLLoader.init(from:)(&v90, v70);
  sub_21B9F8680(v33, &v14[v32[14]], type metadata accessor for URLLoader);
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  *(v14 + 2) = 0;
  v34 = type metadata accessor for FooterElement(0);
  LOBYTE(v90) = 3;
  sub_21B9F86E8(&qword_27CD9DE70, type metadata accessor for FooterElement);
  v35 = v69;
  v70 = v9;
  sub_21BA8880C();
  (*(*(v34 - 8) + 56))(v35, 0, 1, v34);
  sub_21B9AB6D4(v35, &v14[v32[18]], &qword_27CD9DD60);
  sub_21B9B3220(v31, v87);
  RUIImageView.init(from:)(v87, v88);
  v84 = v88[6];
  v85 = v88[7];
  v86[0] = v89[0];
  *(v86 + 9) = *(v89 + 9);
  v80 = v88[2];
  v81 = v88[3];
  v82 = v88[4];
  v83 = v88[5];
  v78 = v88[0];
  v79 = v88[1];
  nullsub_1(&v78);
  v96 = v84;
  v97 = v85;
  v98[0] = v86[0];
  *(v98 + 9) = *(v86 + 9);
  v92 = v80;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v90 = v78;
  v91 = v79;
  v36 = &v14[v32[15]];
  v37 = v85;
  *(v36 + 6) = v84;
  *(v36 + 7) = v37;
  *(v36 + 8) = v98[0];
  *(v36 + 137) = *(v98 + 9);
  v38 = v93;
  *(v36 + 2) = v92;
  *(v36 + 3) = v38;
  v39 = v95;
  *(v36 + 4) = v94;
  *(v36 + 5) = v39;
  v40 = v91;
  *v36 = v90;
  *(v36 + 1) = v40;
  LOBYTE(v88[0]) = 5;
  v41 = sub_21BA887BC();
  LODWORD(v76) = 1;
  if (v42)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0;
  }

  v44 = 0xE000000000000000;
  if (v42)
  {
    v44 = v42;
  }

  v45 = &v14[v32[19]];
  *v45 = v43;
  *(v45 + 1) = v44;
  LOBYTE(v88[0]) = 6;
  v46 = sub_21BA887BC();
  if (v47)
  {
    v48 = &v14[v32[16]];
    *v48 = v46;
    v48[1] = v47;
    v49 = v32[17];
    v50 = type metadata accessor for HTMLContentElement(0);
    (*(*(v50 - 8) + 56))(&v14[v49], 1, 1, v50);
  }

  else
  {
    LOBYTE(v88[0]) = 2;
    v52 = sub_21BA887BC();
    v54 = &v14[v32[16]];
    *v54 = v52;
    v54[1] = v53;
    if (v53)
    {
      v55 = v32[17];
      v56 = type metadata accessor for HTMLContentElement(0);
      (*(*(v56 - 8) + 56))(&v14[v55], 1, 1, v56);
    }

    else
    {
      type metadata accessor for HTMLContentElement(0);
      LOBYTE(v88[0]) = 1;
      sub_21B9F86E8(&qword_27CD9D5D8, type metadata accessor for HTMLContentElement);
      sub_21BA887EC();
      v32 = v99;
      sub_21B9AB6D4(v68, &v14[v99[17]], &qword_27CD9D5B0);
      v31 = v77;
    }
  }

  LOBYTE(v88[0]) = 7;
  v51 = sub_21BA887CC();
  LODWORD(v69) = v51;
  if (v51)
  {
    LOBYTE(v88[0]) = 7;
    v14[v32[20]] = sub_21BA887CC() & 1;
    v14[v32[21]] = 1;
  }

  else
  {
    v14[v32[20]] = 0;
    LOBYTE(v88[0]) = 8;
    v57 = sub_21BA887CC();
    v14[v32[21]] = (v57 == 2) | v57 & 1;
  }

  sub_21B9B3220(v31, v88);
  v58 = sub_21B9AC534(v88);
  v59 = &v14[v99[22]];
  *v59 = v58;
  *(v59 + 1) = v60;
  sub_21B9B3220(v31, v88);
  v61 = sub_21B9C3AF0(v88);
  v62 = &v14[v99[23]];
  *v62 = v61;
  v62[8] = v63 & 1;
  v62[9] = v64 & 1;
  type metadata accessor for PinViewElement.PasscodeValidationModel(0);
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  *(v65 + 24) = [objc_allocWithZone(RUILocalPasscodeValidator) init];
  *(v65 + 32) = &off_28172C2D8;
  *(v65 + 40) = 0;
  *(v65 + 48) = 0;
  *(v65 + 56) = 2;
  sub_21BA8661C();
  (*(v71 + 8))(v66, v70);
  *(v65 + 64) = v69 & 1;
  *(v14 + 6) = v65;
  *(v14 + 7) = 0;
  sub_21B9F7618(v14, v67, type metadata accessor for PinViewElement);
  __swift_destroy_boxed_opaque_existential_1(v77);
  return sub_21B9F8730(v14, type metadata accessor for PinViewElement);
}

uint64_t sub_21B9F42D4(char a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = [objc_allocWithZone(RUILocalPasscodeValidator) init];
  *(v2 + 32) = &off_28172C2D8;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 2;
  sub_21BA8661C();
  *(v2 + 64) = a1;
  return v2;
}

uint64_t sub_21B9F4354(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 88));

  return v2;
}

uint64_t sub_21B9F438C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v3;
  sub_21BA8741C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DE40);
  sub_21B9B35B8(&qword_27CD9DE48, &qword_27CD9DE40);
  sub_21BA86A3C();
  sub_21B9F7618(v3, v7, type metadata accessor for PinViewElement);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_21B9F8680(v7, v9 + v8, type metadata accessor for PinViewElement);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9DE50);
  v11 = (a2 + *(result + 36));
  *v11 = sub_21B9FA54C;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

uint64_t sub_21B9F4574@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  a1[1] = v2;
}

id sub_21B9F4580()
{
  v1 = type metadata accessor for PinViewElement(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B9F7618(v0, v3, type metadata accessor for PinViewElement);
  v4 = *(v0 + 16);
  v17 = *v0;
  v18 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD78);
  sub_21BA8799C();
  v12 = v14;
  v5 = v15;
  v6 = v16;
  v7 = type metadata accessor for PinViewElement.ScriptInterface(0);
  v8 = objc_allocWithZone(v7);
  sub_21B9F7618(v3, &v8[OBJC_IVAR____TtCV8RemoteUI14PinViewElement15ScriptInterface_pinView], type metadata accessor for PinViewElement);
  v9 = &v8[OBJC_IVAR____TtCV8RemoteUI14PinViewElement15ScriptInterface_valueBinding];
  *v9 = v12;
  *(v9 + 2) = v5;
  *(v9 + 3) = v6;
  v13.receiver = v8;
  v13.super_class = v7;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  sub_21B9F8730(v3, type metadata accessor for PinViewElement);
  return v10;
}

id sub_21B9F46C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  sub_21B9F7618(a1, &v11[OBJC_IVAR____TtCV8RemoteUI14PinViewElement15ScriptInterface_pinView], type metadata accessor for PinViewElement);
  v12 = &v11[OBJC_IVAR____TtCV8RemoteUI14PinViewElement15ScriptInterface_valueBinding];
  *v12 = a2;
  *(v12 + 1) = a3;
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_21B9F8730(a1, type metadata accessor for PinViewElement);
  return v13;
}

uint64_t sub_21B9F47E8()
{
  v1 = *(v0 + OBJC_IVAR____TtCV8RemoteUI14PinViewElement15ScriptInterface_pinView + 128);

  return v1;
}

uint64_t sub_21B9F48B0()
{
  v2 = *(v0 + OBJC_IVAR____TtCV8RemoteUI14PinViewElement15ScriptInterface_valueBinding + 16);
  v1 = *(v0 + OBJC_IVAR____TtCV8RemoteUI14PinViewElement15ScriptInterface_valueBinding + 24);
  v6 = *(v0 + OBJC_IVAR____TtCV8RemoteUI14PinViewElement15ScriptInterface_valueBinding);
  v7 = v2;
  v8 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D190);
  MEMORY[0x21CEFCD90](&v5, v3);
  return v5;
}

uint64_t sub_21B9F4914(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtCV8RemoteUI14PinViewElement15ScriptInterface_pinView;
  v6 = *(v5 + *(type metadata accessor for PinViewElement(0) + 52));
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_21B940DCC(a1, a2);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(v6 + 56) + 16 * v7);

  return v9;
}

id sub_21B9F4D24(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_21B9F4E58(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D620HeadlessPasscodeView_headlessPasscodeField;
  type metadata accessor for PinViewElement.HeadlessPasscodeField();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a1)
  {
    v6 = sub_21BA87BBC();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for PinViewElement.HeadlessPasscodeView();
  v7 = objc_msgSendSuper2(&v9, sel_initWithAttributes_parent_, v6, a2);

  if (v7)
  {
  }

  return v7;
}

void sub_21B9F5030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLLoadingParameters(0);
  sub_21B9E9024(*(a1 + *(v4 + 44)));
  v5 = objc_allocWithZone(type metadata accessor for PinViewElement.HeadlessPasscodeView());
  v6 = sub_21BA87BBC();

  v7 = [v5 initWithAttributes:v6 parent:a2];

  if (v7)
  {
    v8 = [v7 passcodeField];
    if (v8)
    {
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD78);
      sub_21BA8797C();
      v10 = sub_21BA87C8C();

      [v9 setStringValue_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_21B9F5178(void *a1)
{
  v2 = v1;
  if (*v1 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = *v1;
  }

  [a1 setNumberOfEntryFields_];
  [a1 setSecurePasscodeEntry_];
  v5 = [objc_opt_self() secondaryLabelColor];
  [a1 setForegroundColor_];

  v6 = *(v2 + 3);
  v13 = *(v2 + 1);
  v14 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D190);
  MEMORY[0x21CEFCD90](&v17, v7);
  v8 = sub_21BA87C8C();

  [a1 setStringValue_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DE78);
  sub_21BA872CC();
  v9 = v17;
  v10 = v2[5];
  v11 = v2[6];
  v15 = v10;
  v16 = v11;
  *&v13 = MEMORY[0x277D85DD0];
  *(&v13 + 1) = 1107296256;
  *&v14 = sub_21B9F532C;
  *(&v14 + 1) = &block_descriptor_3;
  v12 = _Block_copy(&v13);

  [v9 setHandler_];
  _Block_release(v12);
}

uint64_t sub_21B9F532C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_21BA87CBC();
  v4 = v3;

  v1(v2, v4);
}

id sub_21B9F5398()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DE78);
  sub_21BA872CC();
  v0 = [v2 view];

  sub_21B9F5178(v0);
  return v0;
}

id sub_21B9F5424@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PreferencesPasscodeFieldWrapper) init];
  *a1 = result;
  return result;
}

uint64_t sub_21B9F5460(int a1, int a2, int a3, int a4, id a5)
{
  [a5 sizeToFit];
  [a5 bounds];
  return v6;
}

uint64_t sub_21B9F54AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B9F9708();

  return MEMORY[0x28212E3C0](a1, a2, a3, v6);
}

uint64_t sub_21B9F5510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B9F9708();

  return MEMORY[0x28212E350](a1, a2, a3, v6);
}

void sub_21B9F5574()
{
  sub_21B9F9708();
  sub_21BA8711C();
  __break(1u);
}

void sub_21B9F559C(void *a1)
{
  [a1 setContentMode_];
  RUIImage.preloadedImage.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() symbolConfiguration];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [v3 imageByApplyingSymbolConfiguration_];
  }

  else
  {
    v6 = 0;
  }

  [a1 setImage_];
}

id sub_21B9F5688()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  sub_21B9F559C(v0);
  return v0;
}

uint64_t sub_21B9F56CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B9F96B4();

  return MEMORY[0x28212E3C0](a1, a2, a3, v6);
}

uint64_t sub_21B9F5730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B9F96B4();

  return MEMORY[0x28212E350](a1, a2, a3, v6);
}

void sub_21B9F5794()
{
  sub_21B9F96B4();
  sub_21BA8711C();
  __break(1u);
}

uint64_t sub_21B9F57BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BA8743C();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DE80);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DE88) + 36);
  *v6 = v4;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  v7 = sub_21BA87B2C();
  v9 = v8;
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DE90) + 36);
  v11 = *MEMORY[0x277CE0120];
  v12 = sub_21BA86F6C();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DE98);
  *(v10 + *(v13 + 52)) = 2;
  *(v10 + *(v13 + 56)) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DEA0);
  v15 = (v10 + *(result + 36));
  *v15 = v7;
  v15[1] = v9;
  return result;
}

uint64_t sub_21B9F5928()
{
  swift_getKeyPath();
  (*(*v0 + 360))();

  swift_beginAccess();
  return v0[16];
}

uint64_t sub_21B9F59A8(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 368))(v5, sub_21B9F87EC);
  }

  return result;
}

void (*sub_21B9F5AA4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 360))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV8RemoteUI14PinViewElement23PasscodeValidationModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_21B9F86E8(&qword_27CD9DEA8, type metadata accessor for PinViewElement.PasscodeValidationModel);
  sub_21BA8660C();

  v4[7] = sub_21B9CDA9C();
  return sub_21B9F5BF4;
}

uint64_t sub_21B9F5C50()
{
  swift_getKeyPath();
  (*(*v0 + 360))();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_21B9F5CD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21B9F5D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 216);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_21B9F5D88(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v6 = v2;
  v7 = a1;
  v8 = a2;
  (*(*v2 + 368))();

  return swift_unknownObjectRelease();
}

void (*sub_21B9F5E40(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 360))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV8RemoteUI14PinViewElement23PasscodeValidationModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_21B9F86E8(&qword_27CD9DEA8, type metadata accessor for PinViewElement.PasscodeValidationModel);
  sub_21BA8660C();

  v4[7] = sub_21B9F5C00();
  return sub_21B9F5F90;
}

uint64_t sub_21B9F5FEC()
{
  swift_getKeyPath();
  (*(*v0 + 360))();

  swift_beginAccess();
  return v0[5];
}

uint64_t sub_21B9F606C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  return result;
}

uint64_t sub_21B9F6110(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[5] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 368))(v5, sub_21B9F88A8);
  }

  return result;
}

void (*sub_21B9F6208(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 360))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV8RemoteUI14PinViewElement23PasscodeValidationModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_21B9F86E8(&qword_27CD9DEA8, type metadata accessor for PinViewElement.PasscodeValidationModel);
  sub_21BA8660C();

  v4[7] = sub_21B9F5F9C();
  return sub_21B9F6358;
}

uint64_t sub_21B9F63B4()
{
  swift_getKeyPath();
  (*(*v0 + 360))();

  swift_beginAccess();
}

uint64_t sub_21B9F6438@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  return result;
}

uint64_t sub_21B9F648C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 312);

  return v2(v3);
}

uint64_t sub_21B9F64E8(uint64_t a1)
{
  swift_beginAccess();
  if (v1[6])
  {
    if (a1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DEB0);
      v3 = sub_21BA8806C();

      if (v3)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    (*(*v1 + 368))(v5, sub_21B9F88F8);
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v1[6] = a1;
}