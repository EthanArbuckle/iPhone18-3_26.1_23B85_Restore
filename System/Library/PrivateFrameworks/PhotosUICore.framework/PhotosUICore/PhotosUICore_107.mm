unint64_t sub_1A4A0E028()
{
  result = qword_1EB1477F0;
  if (!qword_1EB1477F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1477F0);
  }

  return result;
}

uint64_t sub_1A4A0E108(id *a1)
{
  v1 = *a1;

  sub_1A523FF54();
}

void (*PhotosUpdateRecognizedPersonAssistantIntent.target.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

uint64_t sub_1A4A0E27C()
{

  sub_1A523FF54();
}

void (*PhotosUpdateRecognizedPersonAssistantIntent.isFavorite.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

double sub_1A4A0E3BC@<D0>(_OWORD *a1@<X8>)
{
  sub_1A523FF44();
  result = *&v3;
  *a1 = v3;
  return result;
}

void (*PhotosUpdateRecognizedPersonAssistantIntent.name.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

uint64_t sub_1A4A0E53C(uint64_t a1)
{
  v2 = sub_1A4A0E9C8();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A4A0E588(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return PhotosUpdateRecognizedPersonAssistantIntent.perform()(a1);
}

uint64_t sub_1A4A0E624(uint64_t a1)
{
  v2 = sub_1A4A0E028();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A4A0E660()
{
  v0 = sub_1A523FED4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1E5F88);
  __swift_project_value_buffer(v5, qword_1EB1E5F88);
  sub_1A523FEE4();
  sub_1A523FEE4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF24();
}

uint64_t static PhotosUpdateRecognizedPersonAssistantIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E5F80 != -1)
  {
    swift_once();
  }

  v2 = sub_1A523FEF4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1E5F88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1A4A0E860()
{
  result = qword_1EB1477F8;
  if (!qword_1EB1477F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1477F8);
  }

  return result;
}

unint64_t sub_1A4A0E8B8()
{
  result = qword_1EB147800;
  if (!qword_1EB147800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147800);
  }

  return result;
}

unint64_t sub_1A4A0E960()
{
  result = qword_1EB147808;
  if (!qword_1EB147808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147808);
  }

  return result;
}

unint64_t sub_1A4A0E9C8()
{
  result = qword_1EB147810;
  if (!qword_1EB147810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147810);
  }

  return result;
}

void sub_1A4A0EA1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t PhotosUpdateAssetAssistantIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v54 = a1;
  sub_1A4A0F08C(0, &qword_1EB1477E0, MEMORY[0x1E695A810]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v45 = &v39 - v2;
  sub_1A4A0F08C(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v39 - v4;
  sub_1A4A0F08C(0, &qword_1EB12C828, MEMORY[0x1E695A7D8]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v39 - v6;
  v48 = sub_1A5240334();
  v7 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A4A0F08C(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  sub_1A3F57E84();
  v13 = sub_1A5240BB4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v17 = v12;
  v52 = v13;
  v15(v12, 1, 1, v13);
  v53 = v16;
  v18 = v15;
  v55 = 0;
  sub_1A5240174();
  v49 = *MEMORY[0x1E695A500];
  v42 = *(v7 + 104);
  v19 = v46;
  v42(v46);
  v47 = v7 + 104;
  sub_1A4A10E74(&qword_1EB12EEC8, &qword_1EB12EEB8, &type metadata for AssetEntity);
  sub_1A3F58824();
  v20 = v19;
  v21 = sub_1A5240024();
  v22 = v54;
  *v54 = v21;
  sub_1A3DEB5EC();
  v23 = v18;
  v40 = v18;
  v18(v17, 1, 1, v13);
  v24 = sub_1A524C5A4();
  v55 = 0;
  v56 = 0;
  (*(*(v24 - 8) + 56))(v43, 1, 1, v24);
  v51 = sub_1A523FDB4();
  v25 = *(v51 - 8);
  v50 = *(v25 + 56);
  v41 = v25 + 56;
  v26 = v44;
  v50(v44, 1, 1, v51);
  v27 = v49;
  v28 = v42;
  (v42)(v20, v49, v48);
  v29 = v26;
  v22[1] = sub_1A523FFF4();
  sub_1A4A0CFB8();
  v23(v17, 1, 1, v52);
  LOBYTE(v55) = 2;
  v30 = sub_1A524CBA4();
  v31 = *(v30 - 8);
  v39 = *(v31 + 56);
  v43 = (v31 + 56);
  v32 = v45;
  v39(v45, 1, 1, v30);
  v50(v29, 1, 1, v51);
  v33 = v46;
  v34 = v27;
  v35 = v48;
  v28(v46, v34, v48);
  v36 = sub_1A5240014();
  v37 = v54;
  v54[2] = v36;
  v40(v17, 1, 1, v52);
  LOBYTE(v55) = 2;
  v39(v32, 1, 1, v30);
  v50(v29, 1, 1, v51);
  v28(v33, v49, v35);
  result = sub_1A5240014();
  v37[3] = result;
  return result;
}

void sub_1A4A0F08C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t PhotosUpdateAssetAssistantIntent.perform()(uint64_t a1)
{
  *(v2 + 80) = a1;
  v3 = v1[1];
  *(v2 + 88) = *v1;
  *(v2 + 104) = v3;
  sub_1A524CC54();
  *(v2 + 120) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v2 + 128) = v5;
  *(v2 + 136) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4A0F184, v5, v4);
}

void sub_1A4A0F184()
{
  *(v0 + 16) = *(v0 + 88);
  v1 = *(v0 + 112);
  *(v0 + 24) = *(v0 + 96);
  *(v0 + 40) = v1;
  sub_1A523FF44();
  if (*(v0 + 56))
  {

    v2 = sub_1A3D3D914(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_1A3D3D914((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 1701667150;
    *(v5 + 5) = 0xE400000000000000;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1A523FF44();
  if (*(v0 + 176) != 2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A3D3D914(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1A3D3D914((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x657469726F766146;
    *(v8 + 5) = 0xE800000000000000;
  }

  sub_1A523FF44();
  if (*(v0 + 177) != 2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A3D3D914(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1A3D3D914((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x6E6564646948;
    *(v11 + 5) = 0xE600000000000000;
  }

  *(v0 + 64) = v2;
  v12 = MEMORY[0x1E69E6158];
  sub_1A4A10ECC(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1A4A10E74(&qword_1EB126EC0, &qword_1EB126ED0, v12);
  v13 = sub_1A524C514();
  v15 = v14;

  MEMORY[0x1A5907B60](v13, v15);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4A0F56C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1A4954190;
  }

  else
  {
    v5 = sub_1A45D7090;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A4A0F6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_1A5246F24();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  sub_1A524CC54();
  v5[26] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v5[27] = v8;
  v5[28] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A4A0F7F0, v8, v7);
}

uint64_t sub_1A4A0F7F0()
{
  sub_1A523FF44();
  if (*(v0 + 120))
  {
    v1 = *(v0 + 200);
    v2 = *(v0 + 184);
    v3 = *(v0 + 192);

    v4 = sub_1A3CB648C();
    (*(v3 + 16))(v1, v4, v2);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A523FF44();
  v5 = *(v0 + 296);
  if (v5 == 2)
  {
    sub_1A523FF44();
    v6 = *(v0 + 297);
    if (v6 == 2)
    {

      sub_1A523FDD4();

      v7 = *(v0 + 8);

      return v7();
    }

    else
    {
      v20 = *(v0 + 152);
      v22 = *(v0 + 168);
      sub_1A523FF44();
      v14 = *(v0 + 128);
      *(v0 + 264) = v14;
      *(v0 + 16) = v20;
      *(v0 + 32) = v22;
      sub_1A4A102A8();
      v15 = AppIntent.px_intentName.getter();
      v17 = v16;
      *(v0 + 272) = v16;
      v18 = swift_task_alloc();
      *(v0 + 280) = v18;
      *v18 = v0;
      v18[1] = sub_1A4A0FF64;

      return sub_1A49C1B68(v6 & 1, v14, v15, v17);
    }
  }

  else
  {
    v19 = *(v0 + 152);
    v21 = *(v0 + 168);
    sub_1A523FF44();
    v9 = *(v0 + 136);
    *(v0 + 232) = v9;
    *(v0 + 48) = v19;
    *(v0 + 64) = v21;
    sub_1A4A102A8();
    v10 = AppIntent.px_intentName.getter();
    v12 = v11;
    *(v0 + 240) = v11;
    v13 = swift_task_alloc();
    *(v0 + 248) = v13;
    *v13 = v0;
    v13[1] = sub_1A4A0FCB8;

    return sub_1A40AB298(v5 & 1, v9, v10, v12);
  }
}

uint64_t sub_1A4A0FCB8()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1A4A10110;
  }

  else
  {
    v5 = sub_1A4A0FDEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A4A0FDEC()
{
  sub_1A523FF44();
  v1 = *(v0 + 297);
  if (v1 == 2)
  {

    sub_1A523FDD4();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v9 = *(v0 + 152);
    v10 = *(v0 + 168);
    sub_1A523FF44();
    v4 = *(v0 + 128);
    *(v0 + 264) = v4;
    *(v0 + 16) = v9;
    *(v0 + 32) = v10;
    sub_1A4A102A8();
    v5 = AppIntent.px_intentName.getter();
    v7 = v6;
    *(v0 + 272) = v6;
    v8 = swift_task_alloc();
    *(v0 + 280) = v8;
    *v8 = v0;
    v8[1] = sub_1A4A0FF64;

    return sub_1A49C1B68(v1 & 1, v4, v5, v7);
  }
}

uint64_t sub_1A4A0FF64()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1A4A1017C;
  }

  else
  {
    v5 = sub_1A4A10098;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A4A10098()
{

  sub_1A523FDD4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4A10110()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4A1017C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4A101E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3D60150;

  return sub_1A4A0F6F4(a1, v4, v5, v7, v6);
}

unint64_t sub_1A4A102A8()
{
  result = qword_1EB147818;
  if (!qword_1EB147818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147818);
  }

  return result;
}

void (*PhotosUpdateAssetAssistantIntent.target.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

double sub_1A4A104EC@<D0>(_OWORD *a1@<X8>)
{
  sub_1A523FF44();
  result = *&v3;
  *a1 = v3;
  return result;
}

void (*PhotosUpdateAssetAssistantIntent.name.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

uint64_t sub_1A4A1067C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A523FF44();
  *a1 = v3;
  return result;
}

uint64_t sub_1A4A106B8()
{

  sub_1A523FF54();
}

void (*PhotosUpdateAssetAssistantIntent.isFavorite.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A4A10808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A523FF44();
  *a1 = v3;
  return result;
}

uint64_t sub_1A4A10844()
{

  sub_1A523FF54();
}

void (*PhotosUpdateAssetAssistantIntent.isHidden.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

uint64_t sub_1A4A10994(uint64_t a1)
{
  v2 = sub_1A4A10E20();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A4A109E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return PhotosUpdateAssetAssistantIntent.perform()(a1);
}

uint64_t sub_1A4A10A7C(uint64_t a1)
{
  v2 = sub_1A4A102A8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A4A10AB8()
{
  v0 = sub_1A523FED4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1E6228);
  __swift_project_value_buffer(v5, qword_1EB1E6228);
  sub_1A523FEE4();
  sub_1A523FEE4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF24();
}

uint64_t static PhotosUpdateAssetAssistantIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E6220 != -1)
  {
    swift_once();
  }

  v2 = sub_1A523FEF4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1E6228);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1A4A10CB8()
{
  result = qword_1EB147820;
  if (!qword_1EB147820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147820);
  }

  return result;
}

unint64_t sub_1A4A10D10()
{
  result = qword_1EB147828;
  if (!qword_1EB147828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147828);
  }

  return result;
}

unint64_t sub_1A4A10DB8()
{
  result = qword_1EB147830;
  if (!qword_1EB147830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147830);
  }

  return result;
}

unint64_t sub_1A4A10E20()
{
  result = qword_1EB147838;
  if (!qword_1EB147838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147838);
  }

  return result;
}

uint64_t sub_1A4A10E74(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A4A10ECC(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4A10ECC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t PhotosUpdateAlbumAssistantIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  sub_1A45D6CA0(0, &qword_1EB12C828, MEMORY[0x1E695A7D8]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v33 = v26 - v2;
  v34 = sub_1A5240334();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45D6CA0(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  sub_1A45D6CA0(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v26 - v13;
  sub_1A4A11340(0, &qword_1EB12C428, sub_1A3DB2FBC);
  v26[1] = v15;
  v16 = sub_1A5240BB4();
  v17 = *(v16 - 8);
  v30 = *(v17 + 56);
  v31 = v17 + 56;
  v30(v14, 1, 1, v16);
  v18 = sub_1A523FDB4();
  v35 = 0u;
  v36 = 0u;
  v19 = *(*(v18 - 8) + 56);
  v19(v11, 1, 1, v18);
  v19(v8, 1, 1, v18);
  v27 = *MEMORY[0x1E695A500];
  v20 = *(v3 + 104);
  v28 = v3 + 104;
  v29 = v20;
  v20(v5);
  sub_1A3DB3554();
  v21 = v5;
  v22 = sub_1A523FF94();
  v23 = v32;
  *v32 = v22;
  sub_1A4A11340(0, &qword_1EB138CE0, sub_1A3DEB710);
  v30(v14, 1, 1, v16);
  v24 = sub_1A524C5A4();
  v35 = 0uLL;
  (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
  v19(v11, 1, 1, v18);
  v29(v21, v27, v34);
  result = sub_1A523FFF4();
  v23[1] = result;
  return result;
}

void sub_1A4A11340(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1A5240044();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t PhotosUpdateAlbumAssistantIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = *v1;
  sub_1A524CC54();
  *(v2 + 56) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 64) = v4;
  *(v2 + 72) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A4A11440, v4, v3);
}

uint64_t sub_1A4A11440()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  sub_1A4A117AC();
  *v4 = v0;
  v4[1] = sub_1A47D2970;
  v5 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v5, 0, 0, 1701667150, 0xE400000000000000, 0, 1, &unk_1A537CBC8);
}

uint64_t sub_1A4A11550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  sub_1A524CC54();
  v3[17] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4A115EC, v5, v4);
}

uint64_t sub_1A4A115EC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  sub_1A523FF44();
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  *(v0 + 160) = v4;
  sub_1A523FF44();
  v5 = *(v0 + 32);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 64) = v5;
  *(v0 + 96) = v2;
  *(v0 + 104) = v1;
  sub_1A4A117AC();
  v6 = AppIntent.px_intentName.getter();
  v8 = v7;
  *(v0 + 168) = v7;
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  *v9 = v0;
  v9[1] = sub_1A45D7354;

  return sub_1A45D7668(v3, v4, (v0 + 48), v6, v8);
}

uint64_t sub_1A4A11700(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A4A11550(a1, v5, v4);
}

unint64_t sub_1A4A117AC()
{
  result = qword_1EB147840;
  if (!qword_1EB147840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147840);
  }

  return result;
}

void (*PhotosUpdateAlbumAssistantIntent.target.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

void (*PhotosUpdateAlbumAssistantIntent.name.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A4A119F4(uint64_t a1)
{
  v2 = sub_1A4A11E80();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A4A11A40(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return PhotosUpdateAlbumAssistantIntent.perform()(a1);
}

uint64_t sub_1A4A11ADC(uint64_t a1)
{
  v2 = sub_1A4A117AC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A4A11B18()
{
  v0 = sub_1A523FED4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1E64C8);
  __swift_project_value_buffer(v5, qword_1EB1E64C8);
  sub_1A523FEE4();
  sub_1A523FEE4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF24();
}

uint64_t static PhotosUpdateAlbumAssistantIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E64C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A523FEF4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1E64C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1A4A11D18()
{
  result = qword_1EB147848;
  if (!qword_1EB147848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147848);
  }

  return result;
}

unint64_t sub_1A4A11D70()
{
  result = qword_1EB147850;
  if (!qword_1EB147850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147850);
  }

  return result;
}

unint64_t sub_1A4A11E18()
{
  result = qword_1EB147858;
  if (!qword_1EB147858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147858);
  }

  return result;
}

unint64_t sub_1A4A11E80()
{
  result = qword_1EB147860;
  if (!qword_1EB147860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147860);
  }

  return result;
}

uint64_t PhotosDeleteAssetsAssistantIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5240334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A3DB3480();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F57E84();
  v10 = sub_1A5240BB4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v12[1] = 0;
  sub_1A5240174();
  (*(v3 + 104))(v5, *MEMORY[0x1E695A500], v2);
  sub_1A4A0C76C(&qword_1EB12EEC8, sub_1A47D235C);
  sub_1A3F58824();
  result = sub_1A5240024();
  *a1 = result;
  return result;
}

uint64_t PhotosDeleteAssetsAssistantIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[4] = a1;
  v2[5] = v3;
  sub_1A524CC54();
  v2[6] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[7] = v5;
  v2[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4A12198, v5, v4);
}

uint64_t sub_1A4A12198()
{
  v0[2] = v0[5];
  sub_1A523FF44();
  v1 = *(v0[3] + 16);

  v2 = swift_task_alloc();
  v0[9] = v2;
  sub_1A4A1251C();
  *v2 = v0;
  v2[1] = sub_1A3DB3750;
  v3 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v3, 0, 0, 0, 0, v1, 0, &unk_1A537CD78);
}

uint64_t sub_1A4A122D8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_1A524CC54();
  v2[11] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A4A12370, v4, v3);
}

uint64_t sub_1A4A12370()
{
  v1 = v0[10];
  sub_1A523FF44();
  v2 = v0[7];
  v0[14] = v2;
  v0[8] = v1;
  v3 = sub_1A4A1251C();
  v4 = AppIntent.px_intentName.getter();
  v6 = v5;
  v0[15] = v5;
  v0[5] = &type metadata for PhotosDeleteAssetsAssistantIntent;
  v0[6] = v3;
  v0[2] = v1;

  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1A3DB3B20;

  return sub_1A436A750(v2, v4, v6, (v0 + 2));
}

uint64_t sub_1A4A12480(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A4A122D8(a1, v1);
}

unint64_t sub_1A4A1251C()
{
  result = qword_1EB147868;
  if (!qword_1EB147868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147868);
  }

  return result;
}

void (*PhotosDeleteAssetsAssistantIntent.entities.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB3FF0;
}

uint64_t sub_1A4A1263C()
{
  v0 = sub_1A523FED4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1E6768);
  __swift_project_value_buffer(v5, qword_1EB1E6768);
  sub_1A523FEE4();
  sub_1A523FEE4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF24();
}

uint64_t static PhotosDeleteAssetsAssistantIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E6760 != -1)
  {
    swift_once();
  }

  v2 = sub_1A523FEF4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1E6768);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1A4A1283C()
{
  result = qword_1EB147870;
  if (!qword_1EB147870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147870);
  }

  return result;
}

unint64_t sub_1A4A12898()
{
  result = qword_1EB147878;
  if (!qword_1EB147878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147878);
  }

  return result;
}

unint64_t sub_1A4A128F0()
{
  result = qword_1EB147880;
  if (!qword_1EB147880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147880);
  }

  return result;
}

unint64_t sub_1A4A12948()
{
  result = qword_1EB147888;
  if (!qword_1EB147888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147888);
  }

  return result;
}

uint64_t sub_1A4A129EC(uint64_t a1)
{
  v2 = sub_1A4A12D44();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A4A12A38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return PhotosDeleteAssetsAssistantIntent.perform()(a1);
}

uint64_t sub_1A4A12AD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5240334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A3DB3480();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F57E84();
  v10 = sub_1A5240BB4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v12[1] = 0;
  sub_1A5240174();
  (*(v3 + 104))(v5, *MEMORY[0x1E695A500], v2);
  sub_1A4A0C76C(&qword_1EB12EEC8, sub_1A47D235C);
  sub_1A3F58824();
  result = sub_1A5240024();
  *a1 = result;
  return result;
}

uint64_t sub_1A4A12CF8(uint64_t a1)
{
  v2 = sub_1A4A1251C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1A4A12D44()
{
  result = qword_1EB147890;
  if (!qword_1EB147890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147890);
  }

  return result;
}

uint64_t PhotosCreateAlbumAssistantIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5240334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4391338(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  sub_1A4391338(0, &qword_1EB12C828, MEMORY[0x1E695A7D8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v19 - v10;
  sub_1A4391338(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v19 - v13;
  sub_1A4A1307C();
  v15 = sub_1A5240BB4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = sub_1A524C5A4();
  v19[0] = 0;
  v19[1] = 0;
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = sub_1A523FDB4();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  (*(v3 + 104))(v5, *MEMORY[0x1E695A500], v2);
  result = sub_1A523FFF4();
  *a1 = result;
  return result;
}

void sub_1A4A1307C()
{
  if (!qword_1EB138CE0)
  {
    sub_1A3DEB710();
    v0 = sub_1A5240044();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138CE0);
    }
  }
}

uint64_t PhotosCreateAlbumAssistantIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[3] = a1;
  v2[4] = v3;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[6] = v5;
  v2[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4A13174, v5, v4);
}

uint64_t sub_1A4A13174()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = v1;
  *(v0 + 96) = 0;
  v2 = AlbumEntity.CollectionType.rawValue.getter();
  v4 = v3;
  *(v0 + 64) = v3;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  sub_1A4A13500();
  *v6 = v0;
  v6[1] = sub_1A4391558;
  v7 = *(v0 + 24);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v7, 0, 0, v2, v4, 0, 1, &unk_1A537CF88);
}

uint64_t sub_1A4A132A4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 193) = a2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a3;
  sub_1A524CC54();
  *(v3 + 136) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v3 + 144) = v5;
  *(v3 + 152) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4A13340, v5, v4);
}

uint64_t sub_1A4A13340()
{
  v1 = *(v0 + 128);
  *(v0 + 192) = *(v0 + 193) & 1;
  sub_1A523FF44();
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  *(v0 + 160) = v3;
  *(v0 + 104) = v1;
  sub_1A4A13500();
  v4 = AppIntent.px_intentName.getter();
  v6 = v5;
  *(v0 + 168) = v5;
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_1A439189C;

  return sub_1A4391BB8(v0 + 16, v0 + 96, (v0 + 192), v2, v3, v4, v6);
}

uint64_t sub_1A4A13450(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A4A132A4(a1, v4, v5);
}

unint64_t sub_1A4A13500()
{
  result = qword_1EB147898;
  if (!qword_1EB147898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147898);
  }

  return result;
}

void (*PhotosCreateAlbumAssistantIntent.name.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB3FF0;
}

uint64_t sub_1A4A13654(uint64_t a1)
{
  v2 = sub_1A4A13AE0();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A4A136A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return PhotosCreateAlbumAssistantIntent.perform()(a1);
}

uint64_t sub_1A4A1373C(uint64_t a1)
{
  v2 = sub_1A4A13500();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A4A13778()
{
  v0 = sub_1A523FED4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1E6B08);
  __swift_project_value_buffer(v5, qword_1EB1E6B08);
  sub_1A523FEE4();
  sub_1A523FEE4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF24();
}

uint64_t static PhotosCreateAlbumAssistantIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E6B00 != -1)
  {
    swift_once();
  }

  v2 = sub_1A523FEF4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1E6B08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1A4A13978()
{
  result = qword_1EB1478A0;
  if (!qword_1EB1478A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1478A0);
  }

  return result;
}

unint64_t sub_1A4A139D0()
{
  result = qword_1EB1478A8;
  if (!qword_1EB1478A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1478A8);
  }

  return result;
}

unint64_t sub_1A4A13A78()
{
  result = qword_1EB1478B0;
  if (!qword_1EB1478B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1478B0);
  }

  return result;
}

unint64_t sub_1A4A13AE0()
{
  result = qword_1EB1478B8;
  if (!qword_1EB1478B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1478B8);
  }

  return result;
}

uint64_t PhotosCreateAssetsAssistantIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5240334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1A4A13E60(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  sub_1A4A13E60(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v6);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v16 - v11;
  sub_1A4548CA4();
  v13 = sub_1A5240BB4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v16[1] = 0;
  sub_1A4A13E60(0, &qword_1EB1202D0, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  sub_1A5246D14();
  *(swift_allocObject() + 16) = xmmword_1A52FC9F0;
  sub_1A5246CC4();
  sub_1A5246CD4();
  v14 = sub_1A523FDB4();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  (*(v3 + 104))(v5, *MEMORY[0x1E695A500], v2);
  result = sub_1A523FFC4();
  *a1 = result;
  return result;
}

void sub_1A4A13E60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t PhotosCreateAssetsAssistantIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[4] = a1;
  v2[5] = v3;
  sub_1A524CC54();
  v2[6] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[7] = v5;
  v2[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4A13F60, v5, v4);
}

uint64_t sub_1A4A13F60()
{
  v0[2] = v0[5];
  sub_1A523FF44();
  v1 = *(v0[3] + 16);

  v2 = swift_task_alloc();
  v0[9] = v2;
  sub_1A4A144F4();
  *v2 = v0;
  v2[1] = sub_1A3DB3750;
  v3 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v3, 0, 0, 0, 0, v1, 0, &unk_1A537D128);
}

uint64_t sub_1A4A140A0(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_1A524CC54();
  v2[11] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A4A14138, v4, v3);
}

uint64_t sub_1A4A14138()
{
  v1 = v0[10];
  sub_1A523FF44();
  v2 = v0[6];
  v0[14] = v2;
  v0[7] = v1;
  sub_1A4A144F4();
  v3 = AppIntent.px_intentName.getter();
  v5 = v4;
  v0[15] = v4;
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1A4A14224;

  return sub_1A4549AC8((v0 + 2), v2, v3, v5);
}

uint64_t sub_1A4A14224(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1A45499C8;
  }

  else
  {
    v4[18] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1A4A14368;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A4A14368()
{
  v1 = v0[18];

  v2 = v0[2];
  v3 = v0[3];
  v0[8] = v1;
  v0[4] = v2;
  v0[5] = v3;
  sub_1A47D235C();
  sub_1A3F57F0C();
  sub_1A454AE30();
  sub_1A523FDC4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A4A14458(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A4A140A0(a1, v1);
}

unint64_t sub_1A4A144F4()
{
  result = qword_1EB1478C0;
  if (!qword_1EB1478C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1478C0);
  }

  return result;
}

void (*PhotosCreateAssetsAssistantIntent.files.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB3FF0;
}

uint64_t sub_1A4A14614(uint64_t a1)
{
  v2 = sub_1A4A14AA0();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A4A14660(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return PhotosCreateAssetsAssistantIntent.perform()(a1);
}

uint64_t sub_1A4A146FC(uint64_t a1)
{
  v2 = sub_1A4A144F4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A4A14738()
{
  v0 = sub_1A523FED4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1E6DA8);
  __swift_project_value_buffer(v5, qword_1EB1E6DA8);
  sub_1A523FEE4();
  sub_1A523FEE4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF24();
}

uint64_t static PhotosCreateAssetsAssistantIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E6DA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A523FEF4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1E6DA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1A4A14938()
{
  result = qword_1EB1478C8;
  if (!qword_1EB1478C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1478C8);
  }

  return result;
}

unint64_t sub_1A4A14990()
{
  result = qword_1EB1478D0;
  if (!qword_1EB1478D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1478D0);
  }

  return result;
}

unint64_t sub_1A4A14A38()
{
  result = qword_1EB1478D8;
  if (!qword_1EB1478D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1478D8);
  }

  return result;
}

unint64_t sub_1A4A14AA0()
{
  result = qword_1EB1478E0;
  if (!qword_1EB1478E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1478E0);
  }

  return result;
}

uint64_t PhotosAddAssetsToAlbumAssistantIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v28 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v26 = v24 - v4;
  v5 = sub_1A5240334();
  v25 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  sub_1A3F57E84();
  v24[0] = v13;
  v14 = sub_1A5240BB4();
  v15 = *(*(v14 - 8) + 56);
  v15(v12, 1, 1, v14);
  *&v29 = 0;
  sub_1A5240174();
  v16 = *MEMORY[0x1E695A500];
  v17 = *(v6 + 104);
  v24[1] = v6 + 104;
  v17(v8, v16, v5);
  sub_1A4A0C76C(&qword_1EB12EEC8, sub_1A47D235C);
  sub_1A3F58824();
  v18 = sub_1A5240024();
  v19 = v27;
  *v27 = v18;
  sub_1A4A0B97C();
  v24[0] = v20;
  v15(v12, 1, 1, v14);
  v21 = sub_1A523FDB4();
  v29 = 0u;
  v30 = 0u;
  v22 = *(*(v21 - 8) + 56);
  v22(v26, 1, 1, v21);
  v22(v28, 1, 1, v21);
  v17(v8, v16, v25);
  sub_1A3DB3554();
  result = sub_1A523FF94();
  v19[1] = result;
  return result;
}

uint64_t PhotosAddAssetsToAlbumAssistantIntent.perform()(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = *v1;
  sub_1A524CC54();
  *(v2 + 128) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 136) = v4;
  *(v2 + 144) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A4A14F50, v4, v3);
}

uint64_t sub_1A4A14F50()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  sub_1A523FF44();
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  *(v0 + 48) = v4;
  *(v0 + 56) = v3;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  AlbumEntity.albumType.getter((v0 + 184));

  *(v0 + 185) = *(v0 + 184);
  v7 = AlbumEntity.CollectionType.rawValue.getter();
  v9 = v8;
  *(v0 + 152) = v8;
  sub_1A523FF44();
  v10 = *(*(v0 + 96) + 16);

  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  sub_1A4A1539C();
  *v12 = v0;
  v12[1] = sub_1A47A37BC;
  v13 = *(v0 + 104);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v13, 0, 0, v7, v9, v10, 0, &unk_1A537D2C8);
}

uint64_t sub_1A4A15144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  sub_1A524CC54();
  v3[16] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[17] = v5;
  v3[18] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4A151E0, v5, v4);
}

uint64_t sub_1A4A151E0()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  sub_1A523FF44();
  v3 = *(v0 + 96);
  *(v0 + 152) = v3;
  sub_1A523FF44();
  v4 = *(v0 + 32);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 64) = v4;
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  sub_1A4A1539C();
  v5 = AppIntent.px_intentName.getter();
  v7 = v6;
  *(v0 + 160) = v6;
  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  *v8 = v0;
  v8[1] = sub_1A47A3BEC;

  return sub_1A47A3ECC(v3, (v0 + 48), v5, v7);
}

uint64_t sub_1A4A152F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A4A15144(a1, v5, v4);
}

unint64_t sub_1A4A1539C()
{
  result = qword_1EB1478E8;
  if (!qword_1EB1478E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1478E8);
  }

  return result;
}

void (*PhotosAddAssetsToAlbumAssistantIntent.assets.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

void (*PhotosAddAssetsToAlbumAssistantIntent.album.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A4A1558C(uint64_t a1)
{
  v2 = sub_1A4A15A18();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A4A155D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return PhotosAddAssetsToAlbumAssistantIntent.perform()(a1);
}

uint64_t sub_1A4A15674(uint64_t a1)
{
  v2 = sub_1A4A1539C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A4A156B0()
{
  v0 = sub_1A523FED4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1E7048);
  __swift_project_value_buffer(v5, qword_1EB1E7048);
  sub_1A523FEE4();
  sub_1A523FEE4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF24();
}

uint64_t static PhotosAddAssetsToAlbumAssistantIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E7040 != -1)
  {
    swift_once();
  }

  v2 = sub_1A523FEF4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1E7048);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1A4A158B0()
{
  result = qword_1EB1478F0;
  if (!qword_1EB1478F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1478F0);
  }

  return result;
}

unint64_t sub_1A4A15908()
{
  result = qword_1EB1478F8;
  if (!qword_1EB1478F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1478F8);
  }

  return result;
}

unint64_t sub_1A4A159B0()
{
  result = qword_1EB147900;
  if (!qword_1EB147900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147900);
  }

  return result;
}

unint64_t sub_1A4A15A18()
{
  result = qword_1EB147908;
  if (!qword_1EB147908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147908);
  }

  return result;
}

id sub_1A4A15A7C(uint64_t a1)
{
  v3 = [objc_allocWithZone(PXPhotosAssetsFetcherConfiguration) init];
  [v3 setCurationKind_];
  v4 = [v3 options];
  v5 = (v4 >> 5) & 1;
  if (a1 != 3)
  {
    LODWORD(v5) = 1;
  }

  v6 = v5 == 0;
  v7 = 160;
  if (!v6)
  {
    v7 = 128;
  }

  [v3 setOptions_];
  objc_opt_self();
  [v3 setIncludeSharedCollectionAssets_];
  result = [v1 photoLibrary];
  if (result)
  {
    v9 = result;
    v10 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];

    LODWORD(v9) = [v10 hasSharedLibraryOrPreview];
    [v3 setLibraryFilter_];
    result = [v1 photoLibrary];
    if (result)
    {
      v11 = result;
      v12 = [objc_opt_self() sharedFetcherForPhotoLibrary_];

      v13 = [v12 fetchAssetsInContainer:v1 configuration:v3];
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1A4A15C50(uint64_t a1)
{
  v1 = sub_1A4A15A7C(a1);
  v2 = [v1 firstObject];

  return v2;
}

uint64_t PhotosDuplicateAssetsAssistantIntent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5240334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A3DB3480();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F57E84();
  v10 = sub_1A5240BB4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v12[1] = 0;
  sub_1A5240174();
  (*(v3 + 104))(v5, *MEMORY[0x1E695A500], v2);
  sub_1A4A16AFC(&qword_1EB12EEC8, sub_1A47D235C);
  sub_1A3F58824();
  result = sub_1A5240024();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t PhotosDuplicateAssetsAssistantIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  *(v2 + 25) = *(v1 + 8);
  sub_1A524CC54();
  *(v2 + 56) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4A15F74, v5, v4);
}

uint64_t sub_1A4A15F74()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 48);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  sub_1A523FF44();
  v3 = *(*(v0 + 32) + 16);

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  sub_1A4A16634();
  *v5 = v0;
  v5[1] = sub_1A47D2970;
  v6 = *(v0 + 40);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v6, 0, 0, 0, 0, v3, 0, &unk_1A537D478);
}

uint64_t sub_1A4A160DC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 57) = a3;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  sub_1A524CC54();
  *(v3 + 128) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v3 + 136) = v5;
  *(v3 + 144) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4A16178, v5, v4);
}

uint64_t sub_1A4A16178()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 120);
  IsLaunchedToExecuteTests = PFProcessIsLaunchedToExecuteTests();
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  sub_1A523FF44();
  v4 = *(v0 + 96);
  *(v0 + 152) = v4;
  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  sub_1A4A16F44();
  v5 = sub_1A5240344();
  *(v0 + 160) = v5;
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  sub_1A4A16634();
  v6 = AppIntent.px_intentName.getter();
  v8 = v7;
  *(v0 + 168) = v7;
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  v10 = sub_1A4A16F98();
  *v9 = v0;
  v9[1] = sub_1A4A162D8;

  return sub_1A49619B0(v0 + 16, v4, v5, IsLaunchedToExecuteTests & v1, v6, v8, &type metadata for PhotosDuplicateAssetsAssistantIntent, v10);
}

uint64_t sub_1A4A162D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = *(v4 + 160);

    v6 = *(v4 + 136);
    v7 = *(v4 + 144);
    v8 = sub_1A4A16520;
  }

  else
  {

    *(v4 + 192) = a1;
    v6 = *(v4 + 136);
    v7 = *(v4 + 144);
    v8 = sub_1A4A16430;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1A4A16430()
{
  v1 = v0[24];

  v2 = v0[2];
  v3 = v0[3];
  v0[13] = v1;
  v0[4] = v2;
  v0[5] = v3;
  sub_1A47D235C();
  sub_1A3F57F0C();
  sub_1A454AE30();
  sub_1A523FDC4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A4A16520()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4A16584(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A4A160DC(a1, v4, v5);
}

unint64_t sub_1A4A16634()
{
  result = qword_1EB147910;
  if (!qword_1EB147910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147910);
  }

  return result;
}

void (*PhotosDuplicateAssetsAssistantIntent.entities.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB3FF0;
}

uint64_t sub_1A4A16784()
{
  v0 = sub_1A523FED4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1E72E8);
  __swift_project_value_buffer(v5, qword_1EB1E72E8);
  sub_1A523FEE4();
  sub_1A523FEE4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF24();
}

uint64_t static PhotosDuplicateAssetsAssistantIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E72E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A523FEF4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1E72E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1A4A16980(uint64_t a1)
{
  result = sub_1A4A16634();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A4A169B0()
{
  result = qword_1EB147918;
  if (!qword_1EB147918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147918);
  }

  return result;
}

unint64_t sub_1A4A16A08()
{
  result = qword_1EB147920;
  if (!qword_1EB147920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147920);
  }

  return result;
}

unint64_t sub_1A4A16A60()
{
  result = qword_1EB147928;
  if (!qword_1EB147928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147928);
  }

  return result;
}

uint64_t sub_1A4A16AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4A16B94(uint64_t a1)
{
  v2 = sub_1A4A16EF0();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A4A16BE0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return PhotosDuplicateAssetsAssistantIntent.perform()(a1);
}

uint64_t sub_1A4A16C78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5240334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A3DB3480();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F57E84();
  v10 = sub_1A5240BB4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v12[1] = 0;
  sub_1A5240174();
  (*(v3 + 104))(v5, *MEMORY[0x1E695A500], v2);
  sub_1A4A16AFC(&qword_1EB12EEC8, sub_1A47D235C);
  sub_1A3F58824();
  result = sub_1A5240024();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1A4A16EA4(uint64_t a1)
{
  v2 = sub_1A4A16634();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1A4A16EF0()
{
  result = qword_1EB147930;
  if (!qword_1EB147930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147930);
  }

  return result;
}

unint64_t sub_1A4A16F44()
{
  result = qword_1EB147938;
  if (!qword_1EB147938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147938);
  }

  return result;
}

unint64_t sub_1A4A16F98()
{
  result = qword_1EB147940;
  if (!qword_1EB147940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147940);
  }

  return result;
}

uint64_t sub_1A4A16FF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A4A171AC(a1);
}

uint64_t sub_1A4A17098(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4A171AC(a1);
}

void sub_1A4A17148()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1E7688);
  __swift_project_value_buffer(v0, qword_1EB1E7688);
  sub_1A5246EF4();
}

uint64_t sub_1A4A171CC()
{
  if (qword_1EB1E7680 != -1)
  {
    swift_once();
  }

  v1 = sub_1A5246F24();
  __swift_project_value_buffer(v1, qword_1EB1E7688);
  swift_unknownObjectRetain();
  v2 = sub_1A5246F04();
  v3 = sub_1A524D264();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446466;
    v7 = [v4 uuid];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    v10 = [v9 photoLibrary];
    v0[19] = v10;
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      v0[14] = sub_1A4A17840;
      v0[15] = v12;
      v13 = MEMORY[0x1E69E9820];
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1A3C2E0D0;
      v0[13] = &block_descriptor_329;
      v14 = _Block_copy(v0 + 10);
      v0[20] = v14;
      swift_unknownObjectRetain();

      v0[2] = v0;
      v0[3] = sub_1A4A175CC;
      v15 = swift_continuation_init();
      sub_1A43AC0B0();
      v0[17] = v16;
      v0[10] = v13;
      v0[11] = 1107296256;
      v0[12] = sub_1A4077B64;
      v0[13] = &block_descriptor_7_5;
      v0[14] = v15;
      [v11 performChanges:v14 completionHandler:v0 + 10];
      v10 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEC8](v10);
  }

  else
  {
    sub_1A4A177EC();
    swift_allocError();
    swift_willThrow();
    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1A4A175CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1A4A17750;
  }

  else
  {
    v2 = sub_1A4A176DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4A176DC()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_unknownObjectRelease();

  _Block_release(v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A4A17750()
{
  v1 = v0[20];
  v2 = v0[19];
  swift_willThrow();
  swift_unknownObjectRelease();

  _Block_release(v1);
  v3 = v0[1];

  return v3();
}

unint64_t sub_1A4A177EC()
{
  result = qword_1EB1E76A0;
  if (!qword_1EB1E76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1E76A0);
  }

  return result;
}

void sub_1A4A17840()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  sub_1A3C4D548(0, &qword_1EB126180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F9790;
  *(v3 + 32) = v1;
  sub_1A4805AE8();
  v4 = v1;
  v5 = sub_1A524CA14();

  [v2 deleteMemories_];
}

unint64_t sub_1A4A17938()
{
  result = qword_1EB1E76A8[0];
  if (!qword_1EB1E76A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E76A8);
  }

  return result;
}

uint64_t sub_1A4A1798C(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeFeatureAvailabilityProcessingView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4A17A04()
{
  v1 = type metadata accessor for LemonadeFeatureAvailabilityProcessingView();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v2) = *v0;
  v4 = *(v0 + 8);
  v10 = v2;
  v5 = sub_1A3C5A374();
  v6 = sub_1A3C5A374();
  v9[12] = 1;
  sub_1A4092C6C(&v10, 1, 0x100000000, 0, 0, v5 & 1, v6 & 1, 0, v3, 0);
  v7 = sub_1A4234A1C();
  sub_1A3D92A38(v4, v1, v7);
  return sub_1A4A1798C(v3);
}

void sub_1A4A17CDC()
{
  if (qword_1EB15A4D0 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

void sub_1A4A17EA4(uint64_t a1, char a2)
{
  if (a2)
  {

    PXStoryModel.draft.setter();
  }

  PXStoryModel.draft.setter();
}

Swift::Void __swiftcall PXStoryModel.beginEditing()()
{
  sub_1A524CC54();
  v0[2] = sub_1A4A19694;
  v0[3] = &v1;
  sub_1A3C67884(sub_1A4A196AC, v0);
}

uint64_t sub_1A4A183AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  sub_1A524CC54();
  v6[2] = a2;
  v6[3] = &v7;
  return sub_1A3C67884(a3, v6);
}

uint64_t PXStoryModel.requestImmediateNavigationPermission()()
{
  sub_1A524CC54();
  v3 = v0;
  return sub_1A4A188CC(sub_1A4A19700, &v2, "PhotosUICore/PXStoryModel.swift", 31);
}

uint64_t sub_1A4A188CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1A3C75D98(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v12 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v12);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t PXStoryModel.requestNavigationPermission(_:)(uint64_t a1, uint64_t a2)
{
  sub_1A3C565EC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1A524CC54();
  v9 = v2;

  v10 = sub_1A524CC44();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = a1;
  v11[6] = a2;
  sub_1A3D4D930(0, 0, v7, &unk_1A537D800, v11);
}

uint64_t sub_1A4A18C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_1A524CC54();
  v6[6] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A4A18D08, v8, v7);
}

uint64_t sub_1A4A190C4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A4A191EC, v4, v3);
}

uint64_t sub_1A4A191EC()
{
  v1 = *(v0 + 32);

  v1(v2);

  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

void sub_1A4A1942C(void (*a1)(void))
{
  a1();
  if (v1)
  {
    if (qword_1EB15B480 != -1)
    {
      swift_once();
    }

    v2 = sub_1A5246F24();
    __swift_project_value_buffer(v2, qword_1EB15B488);
    v3 = v1;
    v4 = sub_1A5246F04();
    v5 = sub_1A524D244();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_1A3C1C000, v4, v5, "Action failed: %@", v6, 0xCu);
      sub_1A42C95AC(v7, &qword_1EB12B150, sub_1A3C7B6A4);
      MEMORY[0x1A590EEC0](v7, -1, -1);
      MEMORY[0x1A590EEC0](v6, -1, -1);
    }

    else
    {
    }
  }
}

id sub_1A4A19604()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa_13();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4A1972C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4A18C6C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A4A197D4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A4A18C6C(v5, v6, v7, v2, v3, v4);
}

void sub_1A4A198C0()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B488);
  __swift_project_value_buffer(v0, qword_1EB15B488);
  sub_1A5246EF4();
}

uint64_t sub_1A4A19954(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1A4A1999C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    type metadata accessor for AlertPresentationDelegatePresentationEnvironment();
    swift_unknownObjectRetain();
    return AlertPresentationDelegatePresentationEnvironment.__allocating_init(alertPresentationDelegate:wrappedPresentationEnvironment:)(v3, a1);
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return a1;
}

void sub_1A4A19A28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4A19B54(uint64_t a1)
{
  v1 = sub_1A41CE3A4(*(a1 + 200));
  (*(*v1 + 248))(v1);
}

uint64_t sub_1A4A19BB8()
{
  sub_1A4A1ABC8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  sub_1A3D4D930(0, 0, v2, &unk_1A537D888, v6);
}

uint64_t sub_1A4A19D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4A19DF4, v6, v5);
}

uint64_t sub_1A4A19DF4()
{
  v14 = v0;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1A5246F04();
    v4 = sub_1A524D224();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, v4, "Updating LemonadeMediaTypesItemListManager because of order change", v5, 2u);
      MEMORY[0x1A590EEC0](v5, -1, -1);
    }

    v6 = *(v2 + 200);

    v7 = v6;
    v8 = sub_1A41CE3A4(v7);

    v9 = (*(*v8 + 248))();

    sub_1A4A1ABC8(0, &qword_1EB120C20, type metadata accessor for PHAssetCollectionSubtype, MEMORY[0x1E69E62F8]);
    v13[3] = v10;
    v13[4] = sub_1A4A1A720();
    v13[0] = v9;
    sub_1A43FA078(v13);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A4A19FF8()
{
  v1 = qword_1EB161FB0;
  v2 = sub_1A5246F24();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1A4A1A060()
{
  v0 = PhotoKitItemListManager.deinit();
  v1 = qword_1EB161FB0;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A4A1A104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A3C33378(a6);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t type metadata accessor for LemonadeMediaTypesItemListManager()
{
  result = qword_1EB161F98;
  if (!qword_1EB161F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4A1A61C()
{
  result = sub_1A5246F24();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A4A1A6AC()
{
  v1 = *(v0 + 16);
  v2 = sub_1A41CE39C();
  v3 = (*(*v2 + 248))(v2);

  *v1 = v3;
}

unint64_t sub_1A4A1A720()
{
  result = qword_1EB120C18;
  if (!qword_1EB120C18)
  {
    sub_1A4A1ABC8(255, &qword_1EB120C20, type metadata accessor for PHAssetCollectionSubtype, MEMORY[0x1E69E62F8]);
    sub_1A4A1A7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120C18);
  }

  return result;
}

unint64_t sub_1A4A1A7C8()
{
  result = qword_1EB1207A0;
  if (!qword_1EB1207A0)
  {
    type metadata accessor for PHAssetCollectionSubtype();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1207A0);
  }

  return result;
}

id sub_1A4A1A820(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1A4A1ACC0(a1 + 128, v17, &qword_1EB120D70, sub_1A44292E4);
  if (v17[3])
  {
    sub_1A44292E4();
    sub_1A4A1ABC8(0, &qword_1EB120C20, type metadata accessor for PHAssetCollectionSubtype, MEMORY[0x1E69E62F8]);
    if (swift_dynamicCast())
    {
      v3 = v16;
      v4 = *(v16 + 16);
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else
  {
    sub_1A4A1AD40(v17, &qword_1EB120D70, sub_1A44292E4);
  }

  v3 = MEMORY[0x1E69E7CC0];
  v4 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17[0] = MEMORY[0x1E69E7CC0];
  sub_1A524E554();
  v5 = 32;
  do
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
    v5 += 8;
    --v4;
  }

  while (v4);
LABEL_9:

  v6 = objc_opt_self();
  sub_1A3C52C70(0, &qword_1EB126610);
  v7 = sub_1A524CA14();

  v8 = [v6 px:v7 fetchAssetCollectionsWithAlbumSubtypes:v2 photoLibrary:?];

  sub_1A3C52C70(0, &qword_1EB126AC0);
  v9 = sub_1A524CA34();

  sub_1A3EC9890(v9);

  v10 = *MEMORY[0x1E6978DB0];
  v11 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v12 = v10;
  v13 = sub_1A524CA14();

  v14 = [v11 initWithObjects:v13 photoLibrary:v2 fetchType:v12 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v14;
}

uint64_t (*sub_1A4A1AB68())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A4A1ABC0;
}

void sub_1A4A1ABC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A4A1AC2C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A4A19D5C(v3, v4, v5, v2);
}

uint64_t sub_1A4A1ACC0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A4A1ABC8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4A1AD40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A4A1ABC8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4A1ADB8()
{
  swift_getKeyPath();
  (*(*v0 + 304))();

  swift_beginAccess();
  return v0[16];
}

uint64_t sub_1A4A1AE38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4A1AED0(char a1)
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
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 312))(v5);
  }

  return result;
}

void (*sub_1A4A1AFCC(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 304))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore35LemonadeMediaTypesEditableListModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4A1E15C(&qword_1EB125268, type metadata accessor for LemonadeMediaTypesEditableListModel);
  sub_1A52415F4();

  v4[7] = sub_1A3E65F84();
  return sub_1A4A1B11C;
}

uint64_t type metadata accessor for LemonadeMediaTypesEditableListModel()
{
  result = qword_1EB1605A0;
  if (!qword_1EB1605A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1A4A1B174()
{
  swift_getKeyPath();
  (*(*v0 + 304))();

  swift_beginAccess();
  v1 = v0[3];

  return v1;
}

uint64_t sub_1A4A1B204@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

void sub_1A4A1B2A4(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[3];
  sub_1A3C52C70(0, &qword_1EB126BF0);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[3];
    v2[3] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 312))(v9);
  }
}

void sub_1A4A1B3E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  v4 = v1;
}

void (*sub_1A4A1B444(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 304))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore35LemonadeMediaTypesEditableListModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4A1E15C(&qword_1EB125268, type metadata accessor for LemonadeMediaTypesEditableListModel);
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4();
  return sub_1A4A1B594;
}

void sub_1A4A1B5A0()
{
  swift_getKeyPath();
  (*(*v0 + 304))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4A1B624@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4A1B69C(uint64_t a1)
{
  swift_beginAccess();
  result = v1[4];
  v4 = *(result + 16);
  if (v4 == *(a1 + 16))
  {
    if (v4)
    {
      v5 = result == a1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
LABEL_10:
      v1[4] = a1;
    }

    else
    {
      v6 = (result + 32);
      v7 = (a1 + 32);
      while (v4)
      {
        if (*v6 != *v7)
        {
          goto LABEL_11;
        }

        ++v6;
        ++v7;
        if (!--v4)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_11:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v1;
    v11 = a1;
    (*(*v1 + 312))(v9, sub_1A4589B1C);
  }

  return result;
}

uint64_t sub_1A4A1B7EC()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D774();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB126890);
  sub_1A524BF24();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A4A1E15C(&unk_1EB126898, MEMORY[0x1E69E8120]);
  v5 = MEMORY[0x1E69E8120];
  sub_1A4A1E0F8(0, &qword_1EB126E00, MEMORY[0x1E69E8120], MEMORY[0x1E69E62F8]);
  sub_1A4A1E1A4(&qword_1EB126DF8, &qword_1EB126E00, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8098], v8);
  result = sub_1A524D784();
  qword_1EB1605D8 = result;
  return result;
}

uint64_t sub_1A4A1BACC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1A524BEE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524BF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v14 = result;
  v79 = v9;
  v15 = [a2 px_localDefaults];
  v16 = sub_1A524C634();
  v17 = [v15 arrayForKey_];

  v18 = MEMORY[0x1E69E7CC0];
  v80 = v5;
  v77 = v10;
  v78 = v8;
  if (!v17 || (v19 = sub_1A524CA34(), v17, v20 = sub_1A4A1C418(v19), , (v82 = v20) == 0))
  {
    v35 = sub_1A5246F04();
    v36 = sub_1A524D224();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1A3C1C000, v35, v36, "Editing: No media types data found. We will use the default ordered list.", v37, 2u);
      MEMORY[0x1A590EEC0](v37, -1, -1);
    }

    v38 = *(v14 + 40);
    swift_beginAccess();
    *(a3 + 16) = v38;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v21 = *(v14 + 40);
  v22 = *(v21 + 16);
  v75 = v6;
  v74 = v12;
  v76 = v14;
  v73 = a3;
  if (v22)
  {
    aBlock = v18;
    sub_1A4A1D980(0, v22, 0);
    v23 = &selRef_dequeueReusableAnnotationViewWithIdentifier_;
    v18 = aBlock;
    v24 = objc_opt_self();
    v25 = (v21 + 32);
    do
    {
      v27 = *v25++;
      v26 = v27;
      v28 = [v24 v23[12]];
      v29 = sub_1A524C674();
      v31 = v30;

      aBlock = v18;
      v33 = *(v18 + 16);
      v32 = *(v18 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1A4A1D980((v32 > 1), v33 + 1, 1);
        v23 = &selRef_dequeueReusableAnnotationViewWithIdentifier_;
        v18 = aBlock;
      }

      *(v18 + 16) = v33 + 1;
      v34 = (v18 + 24 * v33);
      v34[4] = v29;
      v34[5] = v31;
      v34[6] = v26;
      --v22;
    }

    while (v22);
    v14 = v76;
    goto LABEL_14;
  }

  if (*(v18 + 16))
  {
LABEL_14:
    sub_1A4A1E284();
    v39 = sub_1A524E794();
    goto LABEL_15;
  }

  v39 = MEMORY[0x1E69E7CC8];
LABEL_15:
  aBlock = v39;
  sub_1A4A1D220(v18);
  v83 = aBlock;
  v40 = *(v14 + 40);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = objc_opt_self();
    v43 = (v40 + 32);
    v81 = MEMORY[0x1E69E7CC0];
    do
    {
      v46 = *v43++;
      v45 = v46;
      v47 = [v42 descriptionForSubtype_];
      v48 = sub_1A524C674();
      v50 = v49;

      aBlock = v48;
      v86 = v50;
      MEMORY[0x1EEE9AC00](v51);
      *(&v73 - 2) = &aBlock;
      LOBYTE(v47) = sub_1A3D3E5DC(sub_1A3D3E6C0, (&v73 - 4), v82);

      if ((v47 & 1) == 0)
      {
        v52 = [v42 descriptionForSubtype_];
        v53 = sub_1A524C674();
        v55 = v54;

        v56 = v81;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_1A3D3D914(0, *(v56 + 2) + 1, 1, v56);
        }

        v58 = *(v56 + 2);
        v57 = *(v56 + 3);
        if (v58 >= v57 >> 1)
        {
          v56 = sub_1A3D3D914((v57 > 1), v58 + 1, 1, v56);
        }

        *(v56 + 2) = v58 + 1;
        v81 = v56;
        v44 = &v56[16 * v58];
        *(v44 + 4) = v53;
        *(v44 + 5) = v55;
      }

      --v41;
    }

    while (v41);
  }

  else
  {
    v81 = MEMORY[0x1E69E7CC0];
  }

  aBlock = v82;
  sub_1A3D3A048(v81);
  v59 = aBlock[2];
  if (v59)
  {
    v60 = MEMORY[0x1E69E7CC0];
    v61 = aBlock + 5;
    v62 = 0;
    while (v62 < aBlock[2])
    {
      if (*(v83 + 16))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      ++v62;
      v61 += 2;
      if (v59 == v62)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v60 = MEMORY[0x1E69E7CC0];
LABEL_32:

    v63 = v73;
    swift_beginAccess();
    *(v63 + 16) = v60;
    v64 = v80;
    v65 = v75;
    v66 = v74;

    sub_1A3C52C70(0, &qword_1EB12B180);
    v83 = sub_1A524D474();
    v67 = swift_allocObject();
    swift_weakInit();
    v68 = swift_allocObject();
    *(v68 + 16) = v67;
    *(v68 + 24) = v63;
    v89 = sub_1A4A1E208;
    v90 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v86 = 1107296256;
    v87 = sub_1A3C2E0D0;
    v88 = &block_descriptor_39_3;
    v69 = _Block_copy(&aBlock);

    sub_1A524BF14();
    v84 = MEMORY[0x1E69E7CC0];
    sub_1A4A1E15C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v70 = MEMORY[0x1E69E7F60];
    sub_1A4A1E0F8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A4A1E1A4(&qword_1EB12B1B0, &qword_1EB12B1C0, v70);
    v71 = v78;
    sub_1A524E224();
    v72 = v83;
    MEMORY[0x1A5908800](0, v66, v71, v69);
    _Block_release(v69);

    (*(v65 + 8))(v71, v64);
    (*(v77 + 8))(v66, v79);
  }

  return result;
}

uint64_t sub_1A4A1C418(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1A3C57108(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1A3C2F0BC(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A3C57108((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1A4A1C52C(uint64_t a1)
{
  v1 = [objc_opt_self() descriptionForSubtype_];
  v2 = sub_1A524C674();

  return v2;
}

void sub_1A4A1C594(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1A52414C4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 248);
  v34 = *v3 + 248;
  v35 = v12;
  v13 = (v12)(v9);
  v14 = *(v13 + 16);
  if (!v14)
  {
LABEL_5:

    v35 = sub_1A5246F04();
    v16 = sub_1A524D244();
    if (os_log_type_enabled(v35, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A3C1C000, v35, v16, "Source not found in the list.", v17, 2u);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }

    v18 = v35;

    return;
  }

  v15 = 0;
  while (*(v13 + 8 * v15 + 32) != a1)
  {
    if (v14 == ++v15)
    {
      goto LABEL_5;
    }
  }

  v32 = v8;
  if ((a3 & 1) == 0)
  {
    v20 = (v35)(v19);
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = 0;
      while (*(v20 + 8 * v22 + 32) != a2)
      {
        if (v21 == ++v22)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_17;
    }

LABEL_15:
  }

  (v35)(v19);
LABEL_17:

  v33 = v11;
  sub_1A5241494();
  type metadata accessor for LemonadeAnalyticsCustomization();
  v23 = *(sub_1A47E502C() + 24);

  if ((v23 & 0x8000000000000000) == 0)
  {
    if (!v23)
    {
      v31 = MEMORY[0x1E69E7CC0];
LABEL_26:
      swift_getKeyPath();
      (*(*v3 + 304))();

      v36 = v3;
      swift_getKeyPath();
      sub_1A4A1E15C(&qword_1EB125268, type metadata accessor for LemonadeMediaTypesEditableListModel);
      sub_1A52415F4();

      swift_beginAccess();
      sub_1A4A1E0F8(0, &qword_1EB120C20, type metadata accessor for PHAssetCollectionSubtype, MEMORY[0x1E69E62F8]);
      sub_1A4A1E1A4(&qword_1EB147970, &qword_1EB120C20, type metadata accessor for PHAssetCollectionSubtype);
      sub_1A524C554();
      swift_endAccess();
      v36 = v3;
      swift_getKeyPath();
      sub_1A52415E4();

      v29 = (v35)(v28);
      sub_1A4A1CC70(v29);
    }

    v30 = v7;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v24 = objc_opt_self();
    v25 = 0;
    while (1)
    {
      v26 = (v35)();
      if (v25 >= *(v26 + 16))
      {
        break;
      }

      v27 = *(v26 + 8 * v25 + 32);

      if (![v24 descriptionForSubtype_])
      {
        sub_1A524C674();
        sub_1A524C634();
      }

      ++v25;
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      if (v23 == v25)
      {
        v31 = v36;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1A4A1CBCC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() descriptionForSubtype_];
  v4 = sub_1A524C674();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1A4A1CC70(uint64_t a1)
{
  v3 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v3);
  v9 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v9);
  if (qword_1EB1605D0 != -1)
  {
    v4 = swift_once();
  }

  v7 = (*(*v1 + 200))(v4, v5, v6);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v7;
  v8[4] = 0x707954616964654DLL;
  v8[5] = 0xEA00000000007365;
  aBlock[4] = sub_1A4A1DF54;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_330;
  _Block_copy(aBlock);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4A1D12C()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore35LemonadeMediaTypesEditableListModel_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore35LemonadeMediaTypesEditableListModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4A1D220(uint64_t a1)
{
  if (*(a1 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void *sub_1A4A1D590()
{
  v1 = v0;
  sub_1A4A1E284();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(v2 + 56) + 8 * v16);
        v21 = (*(v4 + 48) + 16 * v16);
        *v21 = v19;
        v21[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v20;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A4A1D6EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A4A1E284();
  v34 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1A4A1D980(void *a1, int64_t a2, char a3)
{
  result = sub_1A4A1D9A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A4A1D9A0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A4A1E0F8(0, &qword_1EB147980, sub_1A4A1E2EC, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A4A1E2EC();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A4A1DB00()
{
  v1 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v1);
  v3[2] = v3 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = &unk_1F17349C8;
  sub_1A5246EF4();
}

uint64_t sub_1A4A1DE60()
{
  result = sub_1A5246F24();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1A4A1DF54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1A3C57108(0, v3, 0);
    v4 = v18;
    v5 = objc_opt_self();
    v6 = (v1 + 32);
    do
    {
      v7 = *v6++;
      v8 = [v5 descriptionForSubtype_];
      v9 = sub_1A524C674();
      v11 = v10;

      v13 = *(v18 + 16);
      v12 = *(v18 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1A3C57108((v12 > 1), v13 + 1, 1);
      }

      *(v18 + 16) = v13 + 1;
      v14 = v18 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      --v3;
    }

    while (v3);
  }

  v17 = [v2 px_localDefaults];
  sub_1A3D3B558(v4);

  v15 = sub_1A524CA14();

  v16 = sub_1A524C634();
  [v17 setArray:v15 forKey:v16];
}

void sub_1A4A1E0F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A4A1E15C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4A1E1A4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4A1E0F8(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4A1E208()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A4A1E284()
{
  if (!qword_1EB147978)
  {
    type metadata accessor for PHAssetCollectionSubtype();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147978);
    }
  }
}

void sub_1A4A1E2EC()
{
  if (!qword_1EB147988)
  {
    type metadata accessor for PHAssetCollectionSubtype();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB147988);
    }
  }
}

uint64_t dispatch thunk of StoryAssetCollectionDeleter.delete(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3D60150;

  return v9(a1, a2, a3);
}

void StoryDraft.init()()
{
  v1 = sub_1A52411C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  v7 = 0x61724479726F7453;
  v8 = 0xEB000000002D7466;
  sub_1A52411B4();
  sub_1A4A1F274(&qword_1EB126020, MEMORY[0x1E69695A8]);
  v5 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v5);

  (*(v2 + 8))(v4, v1);
  v6 = v8;
  *(v0 + 176) = v7;
  *(v0 + 184) = v6;
  sub_1A5241604();
  sub_1A5245794();
}

uint64_t sub_1A4A1E978@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1A44D5F14;
  a2[1] = v6;
}

uint64_t sub_1A4A1E9F8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 16) = sub_1A4A245C0;
  *(v6 + 24) = v5;
}

uint64_t StoryDraft.presentationEnvironmentAdjuster.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t StoryDraft.presentationEnvironmentAdjuster.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t StoryDraft.assetCollectionDeleter.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v1 + 32);
  sub_1A3C34460(a1, v1 + 32);
  return swift_endAccess();
}

uint64_t StoryDraft.assetCollectionAnnotator.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return swift_unknownObjectRelease();
}

uint64_t StoryDraft.saveConfirmationSpec.getter@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v1 + 136);
  v10 = *(v1 + 120);
  v11 = v4;
  v12 = *(v1 + 152);
  v5 = v12;
  v9[0] = *(v1 + 88);
  v6 = v9[0];
  v9[1] = v3;
  a1[2] = v10;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v6;
  a1[1] = v3;
  return sub_1A4A218B8(v9, v8);
}

uint64_t StoryDraft.saveConfirmationSpec.setter(__int128 *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v1 + 136);
  v8[2] = *(v1 + 120);
  v8[3] = v4;
  v8[4] = *(v1 + 152);
  v8[0] = *(v1 + 88);
  v8[1] = v3;
  v5 = *a1;
  *(v1 + 104) = a1[1];
  v6 = a1[3];
  *(v1 + 120) = a1[2];
  *(v1 + 136) = v6;
  *(v1 + 152) = a1[4];
  *(v1 + 88) = v5;
  return sub_1A4A21940(v8);
}

uint64_t sub_1A4A1F274(unint64_t *a1, void (*a2)(uint64_t))
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

void StoryDraft.state.getter()
{
  swift_getKeyPath();
  sub_1A4A1F274(&unk_1EB1479A0, type metadata accessor for StoryDraft);
  sub_1A52415D4();

  swift_beginAccess();
  sub_1A5245794();
}

void StoryDraft.setPersistedAssetCollection(_:)()
{
  sub_1A3C565EC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v2 - v1;
  sub_1A5245794();
}

void StoryDraft.performedUserActionKind(_:)()
{
  sub_1A3C565EC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2[2] = v2 - v1;
  sub_1A5245794();
}

void sub_1A4A20264()
{
  sub_1A3C565EC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A5245794();
}

uint64_t sub_1A4A207C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1A524CC54();
  v5[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A4A20860, v7, v6);
}

uint64_t sub_1A4A20860()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  *(v0 + 80) = *(v1 + 72);
  v2 = *(v1 + 80);
  ObjectType = swift_getObjectType();
  *(v0 + 104) = 1;
  v4 = *(v2 + 16);
  swift_unknownObjectRetain();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1A4A209C8;
  v6 = *(v0 + 48);

  return v8(v0 + 104, v6, ObjectType, v2);
}

uint64_t sub_1A4A209C8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1A4A20B00;
  }

  else
  {
    v5 = sub_1A3E8D568;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A4A20B00()
{

  if (qword_1EB1E7938 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB1E7940);
  swift_unknownObjectRetain();
  v3 = v1;
  v4 = sub_1A5246F04();
  v5 = sub_1A524D244();
  swift_unknownObjectRelease();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446466;
    v11 = [v8 uuid];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A4A20D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_1A524CC54();
  v7[6] = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A4A20DFC, v9, v8);
}

uint64_t sub_1A4A20DFC()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1A4A20F28;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_1A4A20F28()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1A4A21108;
  }

  else
  {
    v5 = sub_1A4A21064;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A4A21064()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 24))(v2, v3, v4);
  v5 = v0[1];

  return v5();
}

void sub_1A4A21108()
{

  if (qword_1EB1E7938 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();
  __swift_project_value_buffer(v0, qword_1EB1E7940);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4A215E0()
{
  swift_getKeyPath();
  sub_1A4A1F274(&unk_1EB1479A0, type metadata accessor for StoryDraft);
  sub_1A52415D4();

  swift_beginAccess();
  sub_1A5245794();
}

uint64_t sub_1A4A218B8(uint64_t a1, uint64_t a2)
{
  sub_1A3C397F8(0, &qword_1EB147960, &type metadata for StoryDraftSaveConfirmationSpec, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4A21940(uint64_t a1)
{
  sub_1A3C397F8(0, &qword_1EB147960, &type metadata for StoryDraftSaveConfirmationSpec, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void StoryDraft.presentSaveConfirmation(from:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_1A5246104();
}

uint64_t sub_1A4A21AC8()
{
  if (qword_1EB1E7938 != -1)
  {
    swift_once();
  }

  v1 = sub_1A5246F24();
  v0[16] = __swift_project_value_buffer(v1, qword_1EB1E7940);

  v2 = sub_1A5246F04();
  v3 = sub_1A524D264();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    swift_slowAlloc();
    *v4 = 136446210;
    sub_1A3C2EF94();
  }

  v5 = v0[6];
  v6 = v0[7];
  swift_beginAccess();
  v7 = *(v6 + 16);

  v8 = v7(v5);
  v0[17] = v8;

  v9 = sub_1A524CC44();
  v0[18] = v9;
  v10 = swift_task_alloc();
  v0[19] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_1A4A21D30;
  v12 = v0[8];
  v13 = v0[5];
  v14 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v13, v9, v14, 0xD00000000000001ELL, 0x80000001A53F7CD0, sub_1A4A24004, v10, v12);
}

uint64_t sub_1A4A21D30()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1A4A21E90, v3, v2);
}

uint64_t sub_1A4A21E90()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];

  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1A5246F04();
  LOBYTE(v2) = sub_1A524D264();

  v6 = os_log_type_enabled(v5, v2);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    swift_slowAlloc();
    *v8 = 136446466;
    sub_1A3C2EF94();
  }

  v10 = v0[8];
  v9 = v0[9];
  swift_unknownObjectRelease();

  (*(v9 + 8))(v7, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A4A220E0(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a3;
  v5 = sub_1A4A24600();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(a2 + 104);
  v10 = *(a2 + 136);
  v31 = *(a2 + 120);
  v32 = v10;
  v33 = *(a2 + 152);
  v29 = *(a2 + 88);
  v30 = v9;
  v11 = *(&v31 + 1);
  if (!*(&v31 + 1))
  {
    if (qword_1EB1E78E0 != -1)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v21 = v29;
  v22 = v30;
  v12 = v31;
  v13 = *(&v32 + 1);
  v24 = v32;
  v23 = *(&v33 + 1);
  v25 = v33;
  while (1)
  {
    (*(v6 + 16))(v8, a1, v5);
    v14 = (*(v6 + 80) + 96) & ~*(v6 + 80);
    a1 = swift_allocObject();
    v15 = v22;
    *(a1 + 16) = v21;
    *(a1 + 32) = v15;
    *(a1 + 48) = v12;
    *(a1 + 56) = v11;
    v16 = v25;
    *(a1 + 64) = v24;
    *(a1 + 72) = v13;
    v17 = v23;
    *(a1 + 80) = v16;
    *(a1 + 88) = v17;
    v18 = *(v6 + 32);
    v6 += 32;
    v18(a1 + v14, v8, v5);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1A4A24668;
    *(v5 + 24) = a1;
    v27[4] = sub_1A3D78DD0;
    v27[5] = v5;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 1107296256;
    v27[2] = sub_1A3D35A90;
    v27[3] = &block_descriptor_331;
    v8 = _Block_copy(v27);
    sub_1A4A218B8(&v29, v28);

    v19 = [v26 presentAlertWithConfigurationHandler_];
    swift_unknownObjectRelease();
    _Block_release(v8);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_7:
    swift_once();
LABEL_4:
    v28[3] = xmmword_1EB1E7918;
    v28[4] = xmmword_1EB1E7928;
    v28[1] = xmmword_1EB1E78F8;
    v28[2] = xmmword_1EB1E7908;
    v28[0] = xmmword_1EB1E78E8;
    v23 = *(&xmmword_1EB1E7928 + 1);
    v13 = *(&xmmword_1EB1E7918 + 1);
    v24 = xmmword_1EB1E7918;
    v25 = xmmword_1EB1E7928;
    v11 = *(&xmmword_1EB1E7908 + 1);
    v12 = xmmword_1EB1E7908;
    v21 = xmmword_1EB1E78E8;
    v22 = xmmword_1EB1E78F8;
    sub_1A4A2407C(v28, v27);
  }

  return result;
}

__int128 *sub_1A4A22410()
{
  if (qword_1EB1E78E0 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB1E78E8;
}

void sub_1A4A22460(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4A24600();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 8))
  {
    v10 = sub_1A524C634();
  }

  else
  {
    v10 = 0;
  }

  [a1 setTitle_];

  if (*(a2 + 24))
  {
    v11 = sub_1A524C634();
  }

  else
  {
    v11 = 0;
  }

  [a1 setMessage_];

  v12 = sub_1A524C634();
  v13 = *(v7 + 16);
  v35 = v7 + 16;
  v36 = v13;
  v13(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v38 = a1;
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v39 = v8;
  v16 = v15;
  v34 = *(v7 + 32);
  v17 = v9;
  v18 = v6;
  v34(v15 + v14, v17, v6);
  v44 = sub_1A4A246DC;
  v45 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v33 = a3;
  v37 = &v42;
  v42 = sub_1A3C2E0D0;
  v43 = &block_descriptor_48_5;
  v19 = _Block_copy(&aBlock);

  [a1 addActionWithTitle:v12 style:0 action:v19];
  _Block_release(v19);

  v20 = sub_1A524C634();
  v21 = v32;
  v31 = v18;
  v22 = v36;
  v36(v32, a3, v18);
  v23 = swift_allocObject();
  v24 = v34;
  v34(v23 + v14, v21, v18);
  v44 = sub_1A4A2473C;
  v45 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1A3C2E0D0;
  v43 = &block_descriptor_54_4;
  v25 = _Block_copy(&aBlock);

  [v38 addActionWithTitle:v20 style:2 action:v25];
  _Block_release(v25);

  v26 = sub_1A524C634();
  v27 = v31;
  v22(v21, v33, v31);
  v28 = swift_allocObject();
  v24(v28 + v14, v21, v27);
  v44 = sub_1A4A24834;
  v45 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1A3C2E0D0;
  v43 = &block_descriptor_60_7;
  v29 = _Block_copy(&aBlock);

  [v38 addActionWithTitle:v26 style:1 action:v29];
  _Block_release(v29);
}

uint64_t StoryDraft.save(with:)()
{
  v1[5] = v0;
  sub_1A524CC54();
  v1[6] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A4A22B1C, v3, v2);
}

uint64_t sub_1A4A22B1C()
{
  if (qword_1EB1E7938 != -1)
  {
    swift_once();
  }

  v1 = sub_1A5246F24();
  __swift_project_value_buffer(v1, qword_1EB1E7940);

  v2 = sub_1A5246F04();
  v3 = sub_1A524D264();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    swift_slowAlloc();
    *v4 = 136446210;
    sub_1A3C2EF94();
  }

  v5 = *(v0 + 40);
  v6 = v5[21];
  *(v0 + 72) = v6;
  if (v6)
  {
    swift_beginAccess();
    *(v0 + 80) = v5[9];
    v7 = v5[10];
    ObjectType = swift_getObjectType();
    *(v0 + 104) = 1;
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v13 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v10[1] = sub_1A4A22E3C;

    return v13(v0 + 104, v6, ObjectType, v7);
  }

  else
  {

    type metadata accessor for StoryDraft.Error(0);
    sub_1A4A23E34();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1A4A22E3C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1A4A22FD0;
  }

  else
  {
    v5 = sub_1A4A22F60;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A4A22F60()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4A22FD0()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t StoryDraft.discard()()
{
  *(v1 + 16) = v0;
  sub_1A524CC54();
  *(v1 + 24) = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4A234B4, v3, v2);
}

uint64_t sub_1A4A234B4()
{

  if (qword_1EB1E7938 != -1)
  {
    swift_once();
  }

  v1 = sub_1A5246F24();
  __swift_project_value_buffer(v1, qword_1EB1E7940);

  v2 = sub_1A5246F04();
  v3 = sub_1A524D264();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    swift_slowAlloc();
    *v4 = 136446210;
    sub_1A3C2EF94();
  }

  v5 = *(v0 + 8);

  return v5();
}

void StoryDraft.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 4));
  swift_unknownObjectRelease();
  sub_1A4A2400C(v0[11], v0[12], v0[13], v0[14], v0[15], v0[16]);
  swift_unknownObjectRelease();

  sub_1A5245794();
}

void sub_1A4A2377C()
{
  swift_getKeyPath();
  sub_1A4A1F274(&unk_1EB1479A0, type metadata accessor for StoryDraft);
  sub_1A52415D4();

  swift_beginAccess();
  sub_1A5245794();
}

void sub_1A4A23874(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  StoryDraft.presentSaveConfirmation(from:)(a1, a2);
}

uint64_t sub_1A4A23920()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return StoryDraft.save(with:)();
}

uint64_t sub_1A4A239B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return StoryDraft.discard()();
}

void sub_1A4A23A90(void *a1@<X8>)
{
  v2 = *(*v1 + 184);
  *a1 = *(*v1 + 176);
  a1[1] = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4A23AA0()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  v24 = sub_1A524C674();
  v3 = v2;

  v4 = sub_1A524C634();
  v5 = PXLocalizedString(v4);

  v6 = sub_1A524C674();
  v8 = v7;

  v9 = sub_1A524C634();
  v10 = PXLocalizedString(v9);

  v11 = sub_1A524C674();
  v13 = v12;

  v14 = sub_1A524C634();
  v15 = PXLocalizedString(v14);

  v16 = sub_1A524C674();
  v18 = v17;

  v19 = sub_1A524C634();
  v20 = PXLocalizedString(v19);

  v21 = sub_1A524C674();
  v23 = v22;

  *&xmmword_1EB1E78E8 = v24;
  *(&xmmword_1EB1E78E8 + 1) = v3;
  *&xmmword_1EB1E78F8 = v6;
  *(&xmmword_1EB1E78F8 + 1) = v8;
  *&xmmword_1EB1E7908 = v11;
  *(&xmmword_1EB1E7908 + 1) = v13;
  *&xmmword_1EB1E7918 = v16;
  *(&xmmword_1EB1E7918 + 1) = v18;
  *&xmmword_1EB1E7928 = v21;
  *(&xmmword_1EB1E7928 + 1) = v23;
}

uint64_t static StoryDraftSaveConfirmationSpec.default.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EB1E78E0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = xmmword_1EB1E7918;
  v8[2] = xmmword_1EB1E7908;
  v8[3] = xmmword_1EB1E7918;
  v2 = xmmword_1EB1E7928;
  v8[4] = xmmword_1EB1E7928;
  v4 = xmmword_1EB1E78E8;
  v3 = xmmword_1EB1E78F8;
  v8[0] = xmmword_1EB1E78E8;
  v8[1] = xmmword_1EB1E78F8;
  a1[2] = xmmword_1EB1E7908;
  a1[3] = v1;
  a1[4] = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_1A4A2407C(v8, &v7);
}

void sub_1A4A23D00()
{
  sub_1A4A242C0();

  sub_1A5245BB4();
}

double sub_1A4A23D98@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void sub_1A4A23DAC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1E7940);
  __swift_project_value_buffer(v0, qword_1EB1E7940);
  sub_1A5246EF4();
}

unint64_t sub_1A4A23E34()
{
  result = qword_1EB1E7970;
  if (!qword_1EB1E7970)
  {
    type metadata accessor for StoryDraft.Error(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1E7970);
  }

  return result;
}

uint64_t sub_1A4A23E8C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4A207C8(v4, v5, v6, v2, v3);
}

uint64_t objectdestroyTm_92()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A4A23F6C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A4A207C8(v4, v5, v6, v2, v3);
}

uint64_t sub_1A4A2400C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

uint64_t _s12PhotosUICore30StoryDraftSaveConfirmationSpecV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v14 = a2[5];
  v15 = a2[6];
  v16 = a2[7];
  v17 = a2[9];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    v37 = a2[8];
    v38 = a1[9];
    v39 = a1[8];
    if (*a1 != *a2 || v3 != v10)
    {
      v35 = a1[4];
      v36 = a1[5];
      v34 = a2[7];
      v18 = a2[6];
      v19 = a1[7];
      v20 = a1[6];
      v21 = a2[9];
      v22 = a2[4];
      v23 = a2[5];
      v24 = sub_1A524EAB4();
      v14 = v23;
      v12 = v22;
      v17 = v21;
      v8 = v20;
      v9 = v19;
      v15 = v18;
      v16 = v34;
      v5 = v35;
      v7 = v36;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v37 = a2[8];
    v38 = a1[9];
    v39 = a1[8];
    if (v10)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (v13)
    {
      if (v4 == v11 && v6 == v13)
      {
        goto LABEL_15;
      }

      v25 = v17;
      v26 = v12;
      v27 = v14;
      v28 = sub_1A524EAB4();
      v14 = v27;
      v12 = v26;
      v17 = v25;
      if (v28)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

  if (v13)
  {
    return 0;
  }

LABEL_15:
  if (v5 != v12 || v7 != v14)
  {
    v29 = v17;
    v30 = sub_1A524EAB4();
    v17 = v29;
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  if (v8 != v15 || v9 != v16)
  {
    v31 = v17;
    v32 = sub_1A524EAB4();
    v17 = v31;
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  if (v39 == v37 && v38 == v17)
  {
    return 1;
  }

  return sub_1A524EAB4();
}

unint64_t sub_1A4A242C0()
{
  result = qword_1EB1E7978[0];
  if (!qword_1EB1E7978[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E7978);
  }

  return result;
}

uint64_t sub_1A4A24490(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1A4A244D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A4A245C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_1A4A24600()
{
  result = qword_1EB1479C8;
  if (!qword_1EB1479C8)
  {
    sub_1A5246104();
  }

  return result;
}

void sub_1A4A24668(void *a1)
{
  v3 = *(sub_1A4A24600() - 8);
  v4 = v1 + ((*(v3 + 80) + 96) & ~*(v3 + 80));

  sub_1A4A22460(a1, v1 + 16, v4);
}

void sub_1A4A246DC()
{
  sub_1A4A24600();

  sub_1A4A22898();
}

uint64_t objectdestroy_44Tm()
{
  v1 = sub_1A4A24600();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_1A4A24840()
{
  result = qword_1EB1E7CA0[0];
  if (!qword_1EB1E7CA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E7CA0);
  }

  return result;
}

uint64_t sub_1A4A24894()
{
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[11];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4A20D60(v5, v6, v7, (v0 + 4), v2, v3, v4);
}

uint64_t ParallaxAssetColorAnalysis.bestColor.getter()
{
  v0 = ParallaxAssetColorAnalysis.rankedColors.getter();
  if (*(v0 + 2))
  {
    v1 = sub_1A3C2F228(0);
    if ((v2 & 1) != 0 && *(*(*(v0 + 7) + 8 * v1) + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (*(v0 + 2))
    {
      sub_1A3C2F228(2u);
      if (v3)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }
  }

  return 0;
}

char *ParallaxAssetColorAnalysis.rankedColors.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v99 = *(v0 + 16);
  v100 = v1;
  LODWORD(v3) = *(v0 + 24);
  if (v2 >> 62)
  {
    goto LABEL_110;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    v5 = MEMORY[0x1E69E7CC0];
    v98 = v99 >> 62;
    v104 = v3;
    if (i)
    {
      v105 = MEMORY[0x1E69E7CC0];
      sub_1A4A2778C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
      }

      else
      {
        v5 = v105;
        if (!v98)
        {
          v6 = v99;
          v102 = v99 & 0xFFFFFFFFFFFFFF8;
          v7 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
          v8 = 0;
          v103 = v6 & 0xC000000000000001;
          while (1)
          {
            v3 = v5;
            if ((v2 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x1A59097F0](v8, v2);
            }

            else
            {
              v9 = *(v2 + 8 * v8 + 32);
            }

            v10 = v9;
            v11 = 0;
            if (!v7)
            {
              v5 = v3;
              v12 = 0;
              goto LABEL_18;
            }

            if (v103)
            {
              v12 = MEMORY[0x1A59097F0](0, v6);
              if (!v12)
              {
                goto LABEL_16;
              }
            }

            else
            {
              if (!*(v102 + 16))
              {
                goto LABEL_107;
              }

              v12 = *(v6 + 32);
              if (!v12)
              {
                goto LABEL_16;
              }
            }

            [v10 deltaE94DistanceToColor_];
            v11 = v13;
LABEL_16:
            v5 = v3;
LABEL_18:
            v105 = v5;
            v15 = *(v5 + 16);
            v14 = *(v5 + 24);
            if (v15 >= v14 >> 1)
            {
              sub_1A4A2778C((v14 > 1), v15 + 1, 1);
              v6 = v99;
              v5 = v105;
            }

            ++v8;
            *(v5 + 16) = v15 + 1;
            v16 = v5 + 32 * v15;
            *(v16 + 32) = v10;
            *(v16 + 40) = v12;
            LOBYTE(v3) = v104;
            *(v16 + 48) = v104;
            *(v16 + 56) = v11;
            if (i == v8)
            {
              goto LABEL_24;
            }
          }
        }
      }

      v6 = v99;
      v90 = v5;
      v102 = v99 & 0xFFFFFFFFFFFFFF8;
      v7 = sub_1A524E2B4();
      v5 = v90;
      goto LABEL_7;
    }

LABEL_24:
    v102 = v5;
    v17 = v100;
    if (v100 >> 62)
    {
      v2 = sub_1A524E2B4();
    }

    else
    {
      v2 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = MEMORY[0x1E69E7CC0];
    if (v2)
    {
      v105 = MEMORY[0x1E69E7CC0];
      sub_1A4A2778C(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        __break(1u);
      }

      else
      {
        v19 = v105;
        if (!v98)
        {
          v20 = v99;
          v101 = v99 & 0xFFFFFFFFFFFFFF8;
          v21 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_30:
          v22 = 0;
          v103 = v20 & 0xC000000000000001;
          while (1)
          {
            v3 = v19;
            if ((v17 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x1A59097F0](v22, v17);
            }

            else
            {
              v23 = *(v17 + 8 * v22 + 32);
            }

            v24 = v23;
            v25 = 0;
            if (!v21)
            {
              v19 = v3;
              v26 = 0;
              goto LABEL_41;
            }

            if (v103)
            {
              v26 = MEMORY[0x1A59097F0](0, v20);
              if (!v26)
              {
                goto LABEL_39;
              }
            }

            else
            {
              if (!*(v101 + 16))
              {
                goto LABEL_108;
              }

              v26 = *(v20 + 32);
              if (!v26)
              {
                goto LABEL_39;
              }
            }

            [v24 deltaE94DistanceToColor_];
            v25 = v27;
LABEL_39:
            v19 = v3;
LABEL_41:
            v105 = v19;
            v29 = *(v19 + 16);
            v28 = *(v19 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_1A4A2778C((v28 > 1), v29 + 1, 1);
              v20 = v99;
              v19 = v105;
            }

            ++v22;
            *(v19 + 16) = v29 + 1;
            v30 = v19 + 32 * v29;
            *(v30 + 32) = v24;
            *(v30 + 40) = v26;
            LOBYTE(v3) = v104;
            *(v30 + 48) = v104;
            *(v30 + 56) = v25;
            if (v2 == v22)
            {
              v18 = v19;
              goto LABEL_47;
            }
          }
        }
      }

      v20 = v99;
      v91 = v19;
      v101 = v99 & 0xFFFFFFFFFFFFFF8;
      v21 = sub_1A524E2B4();
      v19 = v91;
      goto LABEL_30;
    }

LABEL_47:
    LOBYTE(v105) = v3;
    v109[0] = 3;
    if (!static ParallaxAssetPosterClassification.== infix(_:_:)(&v105, v109))
    {
      LOBYTE(v105) = v3;
      v109[0] = 4;
      v31 = static ParallaxAssetPosterClassification.== infix(_:_:)(&v105, v109);
      if (v31)
      {
        v32 = v102;
      }

      else
      {
        v32 = v18;
      }

      if (!v31)
      {
        v18 = v102;
      }

      v102 = v32;
    }

    v103 = v18;
    sub_1A4A28FEC(v18, 1);
    v101 = v33;
    v34 = v103;
    v35 = *(v103 + 16);
    if (v35)
    {
      v36 = 0;
      LODWORD(v3) = 0;
      v37 = v103 + 56;
      v100 = *(v103 + 16);
      v95 = v35 - 1;
      v96 = v103 + 56;
      v97 = MEMORY[0x1E69E7CC0];
      do
      {
        v38 = (v37 + 32 * v36);
        v2 = v36;
        while (1)
        {
          if (v2 >= *(v34 + 16))
          {
            __break(1u);
            goto LABEL_106;
          }

          v39 = *(v38 - 2);
          v41 = *(v38 - 8);
          v42 = *v38;
          v36 = v2 + 1;
          v105 = *(v38 - 3);
          v40 = v105;
          v106 = v39;
          v107 = v41;
          v108 = v42;
          MEMORY[0x1EEE9AC00](v34);
          v93 = &v105;
          v43 = v39;
          v44 = v40;
          if ((sub_1A4A28F14(sub_1A4A29B20, v92, v101) & 1) == 0)
          {
            break;
          }

          v38 += 4;
          ++v2;
          v34 = v103;
          if (v100 == v36)
          {
            goto LABEL_68;
          }
        }

        v45 = v97;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v109 = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A4A2778C(0, *(v45 + 16) + 1, 1);
          v45 = *v109;
        }

        v34 = v103;
        v48 = *(v45 + 16);
        v47 = *(v45 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1A4A2778C((v47 > 1), v48 + 1, 1);
          v34 = v103;
          v45 = *v109;
        }

        *(v45 + 16) = v48 + 1;
        v97 = v45;
        v49 = v45 + 32 * v48;
        *(v49 + 32) = v44;
        *(v49 + 40) = v39;
        *(v49 + 48) = v41;
        *(v49 + 56) = v42;
        v37 = v96;
      }

      while (v95 != v2);
    }

    else
    {
      LODWORD(v3) = 0;
      v97 = MEMORY[0x1E69E7CC0];
    }

LABEL_68:

    v50 = v102;
    sub_1A4A28FEC(v102, 0);
    v103 = v51;
    v52 = v50;
    v53 = *(v50 + 16);
    if (!v53)
    {
      break;
    }

    v2 = 0;
    v54 = v50 + 56;
    v100 = *(v50 + 16);
    v94 = v53 - 1;
    v55 = MEMORY[0x1E69E7CC0];
    v95 = v50 + 56;
LABEL_70:
    v96 = v55;
    v56 = (v54 + 32 * v2);
    v57 = v2;
    while (v57 < *(v52 + 16))
    {
      v58 = *(v56 - 2);
      v60 = *(v56 - 8);
      v61 = *v56;
      v2 = v57 + 1;
      v105 = *(v56 - 3);
      v59 = v105;
      v106 = v58;
      v107 = v60;
      v108 = v61;
      MEMORY[0x1EEE9AC00](v52);
      v93 = &v105;
      v62 = v58;
      v63 = v59;
      if ((sub_1A4A28F14(sub_1A4A2AABC, v92, v103) & 1) == 0)
      {
        v55 = v96;
        v64 = swift_isUniquelyReferenced_nonNull_native();
        *v109 = v55;
        if ((v64 & 1) == 0)
        {
          sub_1A4A2778C(0, *(v55 + 16) + 1, 1);
          v55 = *v109;
        }

        v52 = v102;
        v66 = *(v55 + 16);
        v65 = *(v55 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_1A4A2778C((v65 > 1), v66 + 1, 1);
          v52 = v102;
          v55 = *v109;
        }

        *(v55 + 16) = v66 + 1;
        v67 = v55 + 32 * v66;
        *(v67 + 32) = v63;
        *(v67 + 40) = v58;
        *(v67 + 48) = v60;
        *(v67 + 56) = v61;
        v54 = v95;
        if (v94 != v57)
        {
          goto LABEL_70;
        }

        goto LABEL_82;
      }

      v56 += 4;
      ++v57;
      v52 = v102;
      if (v100 == v2)
      {
        v55 = v96;
        goto LABEL_82;
      }
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    ;
  }

  v55 = MEMORY[0x1E69E7CC0];
LABEL_82:

  v68 = sub_1A4A29BA4(MEMORY[0x1E69E7CC0]);
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v105 = v68;
  sub_1A4A274F0(v101, 0, v69);
  v70 = v105;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v105 = v70;
  sub_1A4A274F0(v97, 1u, v71);
  v72 = v105;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v105 = v72;
  sub_1A4A274F0(v103, 2u, v73);
  v74 = v105;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v105 = v74;
  sub_1A4A274F0(v55, 3u, v75);
  v76 = v105;
  if (v98)
  {
    v77 = sub_1A524E2B4();
  }

  else
  {
    v77 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = MEMORY[0x1E69E7CC0];
  if (v77)
  {
    v105 = MEMORY[0x1E69E7CC0];
    result = sub_1A4A2778C(0, v77 & ~(v77 >> 63), 0);
    if ((v77 & 0x8000000000000000) == 0)
    {
      v2 = v105;
      v102 = v76;
      v79 = v99;
      v103 = v99 & 0xFFFFFFFFFFFFFF8;
      if (v98)
      {
        v80 = sub_1A524E2B4();
      }

      else
      {
        v80 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v81 = 0;
      v82 = v79 & 0xC000000000000001;
      while (1)
      {
        if (v82)
        {
          v83 = MEMORY[0x1A59097F0](v81, v79);
          if (!v80)
          {
            goto LABEL_98;
          }

          v84 = MEMORY[0x1A59097F0](0, v79);
          if (!v84)
          {
            goto LABEL_99;
          }
        }

        else
        {
          v83 = *(v79 + 8 * v81 + 32);
          if (!v80)
          {
LABEL_98:
            v84 = 0;
LABEL_99:
            v85 = 0;
            goto LABEL_100;
          }

          if (!*(v103 + 16))
          {
            goto LABEL_109;
          }

          v84 = *(v79 + 32);
          if (!v84)
          {
            goto LABEL_99;
          }
        }

        [v83 deltaE94DistanceToColor_];
LABEL_100:
        v105 = v2;
        v3 = *(v2 + 16);
        v86 = *(v2 + 24);
        if (v3 >= v86 >> 1)
        {
          v88 = v85;
          sub_1A4A2778C((v86 > 1), v3 + 1, 1);
          v79 = v99;
          v85 = v88;
          v2 = v105;
        }

        ++v81;
        *(v2 + 16) = v3 + 1;
        v87 = v2 + 32 * v3;
        *(v87 + 32) = v83;
        *(v87 + 40) = v84;
        *(v87 + 48) = v104;
        *(v87 + 56) = v85;
        if (v77 == v81)
        {
          v76 = v102;
          goto LABEL_104;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_104:
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v76;
    sub_1A4A274F0(v2, 4u, v89);
    return v105;
  }

  return result;
}

BOOL ParallaxPosterColor.isSkinTone.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v12 = v2;
  v11 = 3;
  if (static ParallaxAssetPosterClassification.== infix(_:_:)(&v12, &v11))
  {
    return 0;
  }

  v10 = v2;
  v9 = 4;
  if (static ParallaxAssetPosterClassification.== infix(_:_:)(&v10, &v9))
  {
    return 0;
  }

  [v1 chroma];
  v5 = v4;
  [v1 hue];
  if (v5 < 0.3)
  {
    if (v6 >= 30.0)
    {
      [v1 hue];
      return v7 <= 100.0;
    }

    return 0;
  }

  if (v6 <= 43.0)
  {
    return 0;
  }

  [v1 hue];
  return v8 < 87.0;
}

BOOL ParallaxPosterColor.isClockAreaColor.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  if (v1 && (v3 = *v0, sub_1A3C52C70(0, &qword_1EB139B10), v4 = v3, v5 = v1, v6 = sub_1A524DBF4(), v5, v4, (v6 & 1) != 0))
  {
    return 1;
  }

  else
  {
    return v2 < 1.0;
  }
}

uint64_t ParallaxAssetColorAnalysis.Category.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4A25704(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1A3C52C70(0, &qword_1EB139B10);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1A59097F0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1A59097F0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1A524DBF4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1A524DBF4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1A524E2B4();
  }

  result = sub_1A524E2B4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void *ParallaxPosterColor.posterClockAreaColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t ParallaxPosterColor.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  sub_1A3C71380(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F8E10;
  [v1 hue];
  v5 = v4;
  v6 = MEMORY[0x1E69E7DE0];
  *(v3 + 56) = MEMORY[0x1E69E7DE0];
  v7 = sub_1A47DCB08();
  *(v3 + 64) = v7;
  *(v3 + 32) = v5;
  v8 = sub_1A524C6C4();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A52F8E10;
  [v1 chroma];
  *(v11 + 56) = v6;
  *(v11 + 64) = v7;
  *(v11 + 32) = v12;
  v13 = sub_1A524C6C4();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A52F8E10;
  [v1 luma];
  *(v16 + 56) = v6;
  *(v16 + 64) = v7;
  *(v16 + 32) = v17;
  v35 = sub_1A524C6C4();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1A52F8E10;
  *(v20 + 56) = v6;
  *(v20 + 64) = v7;
  *(v20 + 32) = v2;
  v21 = sub_1A524C6C4();
  v23 = v22;
  sub_1A524E404();

  MEMORY[0x1A5907B60](v8, v10);

  MEMORY[0x1A5907B60](32, 0xE100000000000000);
  v24 = ParallaxPosterColor.isSkinTone.getter();
  v25 = !v24;
  if (v24)
  {
    v26 = 0x6E6F546E696B5328;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v27 = 0xE000000000000000;
  }

  else
  {
    v27 = 0xEA00000000002965;
  }

  MEMORY[0x1A5907B60](v26, v27);

  MEMORY[0x1A5907B60](0x203A63202CLL, 0xE500000000000000);
  MEMORY[0x1A5907B60](v13, v15);

  MEMORY[0x1A5907B60](32, 0xE100000000000000);
  [v1 chroma];
  if (v28 >= 0.3)
  {
    v29 = 0;
  }

  else
  {
    v29 = 0x72757461736E5528;
  }

  if (v28 >= 0.3)
  {
    v30 = 0xE000000000000000;
  }

  else
  {
    v30 = 0xED00002964657461;
  }

  MEMORY[0x1A5907B60](v29, v30);

  MEMORY[0x1A5907B60](540699680, 0xE400000000000000);
  MEMORY[0x1A5907B60](v35, v19);

  MEMORY[0x1A5907B60](32, 0xE100000000000000);
  [v1 luma];
  if (v31 >= 0.25)
  {
    v32 = 0;
  }

  else
  {
    v32 = 0x296B72614428;
  }

  if (v31 >= 0.25)
  {
    v33 = 0xE000000000000000;
  }

  else
  {
    v33 = 0xE600000000000000;
  }

  MEMORY[0x1A5907B60](v32, v33);

  MEMORY[0x1A5907B60](0x446B636F6C63202CLL, 0xED0000203A666669);
  MEMORY[0x1A5907B60](v21, v23);

  return 2112104;
}

uint64_t ParallaxPosterColor.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1A524DC04();
  sub_1A524ECB4();
  if (v1)
  {
    v3 = v1;
    sub_1A524DC04();
  }

  sub_1A4A29D44();
  sub_1A524C4B4();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  return MEMORY[0x1A590A040](*&v4);
}

uint64_t ParallaxPosterColor.hashValue.getter()
{
  sub_1A524EC94();
  ParallaxPosterColor.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A4A25EF0()
{
  sub_1A524EC94();
  ParallaxPosterColor.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A4A25F50()
{
  sub_1A524EC94();
  ParallaxPosterColor.hash(into:)();
  return sub_1A524ECE4();
}

PhotosUICore::ParallaxAssetColorAnalysisView __swiftcall ParallaxAssetColorAnalysisView.init(colorAnalysis:)(PhotosUICore::ParallaxAssetColorAnalysisView colorAnalysis)
{
  v2 = *(colorAnalysis.colorAnalysis.foregroundColors._rawValue + 2);
  v3 = *(colorAnalysis.colorAnalysis.foregroundColors._rawValue + 24);
  *v1 = *colorAnalysis.colorAnalysis.foregroundColors._rawValue;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return colorAnalysis;
}

void ParallaxAssetColorAnalysisView.body.getter(uint64_t *a1@<X8>)
{
  sub_1A3C71380(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  *a1 = sub_1A524BC74();
  a1[1] = v8;
  sub_1A4A29D98();
  v10 = a1 + *(v9 + 44);
  *v10 = sub_1A5249584();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1A4A2A4B8();
  sub_1A4A26358(v4, v5, v6, v7, &v10[*(v11 + 44)]);
}

void sub_1A4A26198(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_1A3C71380(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  *a5 = sub_1A5249584();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  sub_1A4A2A4B8();
  sub_1A4A26358(a1, a2, a3, a4, a5 + *(v11 + 44));
}

void sub_1A4A26358(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v40 = a5;
  sub_1A3C71380(0, &qword_1EB147A08, sub_1A4A2A048, MEMORY[0x1E6981F40]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v36 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v44 = &v36 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v42 = &v36 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v49 = &v36 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v48 = &v36 - v24;
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v36 - v27;
  v29 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v29 - 8);
  sub_1A5249414();
  sub_1A5249404();
  sub_1A52493F4();

  sub_1A5249404();
  sub_1A5249444();
  v30 = sub_1A524A444();
  v38 = v31;
  v39 = v30;
  v37 = v32;
  v43 = v33;
  v50 = a1;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  if (*(ParallaxAssetColorAnalysis.rankedColors.getter() + 2))
  {
    sub_1A3C2F228(0);
    if (v34)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v35 = MEMORY[0x1E69E7CC0];

  sub_1A4A26BA0(v35, v28);
}

void sub_1A4A26BA0(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1A4A2A0B0();
  v18 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v17 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v20 = v15 - v6;
  v7 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A5249414();
  sub_1A5249404();
  sub_1A52493F4();
  sub_1A5249404();
  sub_1A5249444();
  v8 = sub_1A524A444();
  v10 = v9;
  v12 = v11;
  sub_1A524A3B4();
  v15[3] = v13;
  v16 = v14;
  sub_1A3E04DF4(v8, v10, v12 & 1);

  v21 = a1;
  swift_getKeyPath();
  sub_1A3C2DEB8(0, &qword_1EB147A20, &type metadata for ParallaxPosterColor, MEMORY[0x1E69E62F8]);
  sub_1A4A2A170();
  sub_1A4A2A2F4();
  sub_1A4A2A370();
  sub_1A4A2A7F0(&qword_1EB147AA0, sub_1A4A2A170);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4A26F4C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1A5249314();
  v17 = 1;
  v5 = [v1 CGColor];
  v6 = sub_1A524B4D4();
  sub_1A524BC74();
  sub_1A52481F4();
  *&v12[6] = v23;
  *&v12[22] = v24;
  *&v12[38] = v25;
  v19[0] = v1;
  v19[1] = v2;
  v20 = v3;
  v21 = v4;
  ParallaxPosterColor.description.getter();
  sub_1A3D5F9DC();
  v7 = sub_1A524A464();
  v9 = v8;
  *v18 = v6;
  *&v18[8] = 256;
  *&v18[10] = *v12;
  *&v18[26] = *&v12[16];
  *&v18[42] = *&v12[32];
  *&v18[56] = *(&v25 + 1);
  v11 = v10 & 1;
  v22 = v10 & 1;
  v15 = *&v18[32];
  v16 = *&v18[48];
  v13 = *v18;
  v14 = *&v18[16];
  sub_1A4A2A914(v18, v19);
  sub_1A3E75E68(v7, v9, v11);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4A27204(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  *a1 = sub_1A524BC74();
  a1[1] = v7;
  sub_1A4A29D98();
  sub_1A4A26198(v3, v4, v5, v6, a1 + *(v8 + 44));
}

uint64_t sub_1A4A2726C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A4A2A9D4();
  v30 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      MEMORY[0x1A590A010](v20);
      result = sub_1A524ECE4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1A4A274F0(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A3C2F228(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A4A2726C(v14, a3 & 1);
      result = sub_1A3C2F228(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A4A2763C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void *sub_1A4A2763C()
{
  v1 = v0;
  sub_1A4A2A9D4();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = *(*(v2 + 56) + 8 * v16);
        *(*(v4 + 48) + v16) = *(*(v2 + 48) + v16);
        *(*(v4 + 56) + 8 * v16) = v17;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

char *sub_1A4A2778C(char *a1, int64_t a2, char a3)
{
  result = sub_1A4A277AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A4A277AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C2DEB8(0, &qword_1EB147AB8, &type metadata for ParallaxPosterColor, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A4A278D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A4A28FD8(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = sub_1A524EA34();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 5);
          if (*(v12 + 1) >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          v16 = v12[32];
          v17 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v17;
          *(v12 - 2) = v14;
          *(v12 - 1) = v15;
          *v12 = v16;
          *(v12 + 1) = v13;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
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
      v7 = sub_1A524CAC4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    sub_1A4A2841C(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1A4A27A24(char **a1, SEL *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1A4A28FD8(v4);
  }

  v5 = *(v4 + 2);
  v6[0] = (v4 + 32);
  v6[1] = v5;
  sub_1A4A27A98(v6, a2);
  *a1 = v4;
}

void sub_1A4A27A98(uint64_t *a1, SEL *a2)
{
  v4 = a1[1];
  v5 = sub_1A524EA34();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v7 = sub_1A524CAC4();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = (v7 + 32);
      v9[1] = (v4 / 2);
      v8 = v7;
      sub_1A4A27CD8(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1A4A27B9C(0, v4, 1, a1, a2);
  }
}

void sub_1A4A27B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, SEL *a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = a1 - a3;
LABEL_5:
    v29 = a3;
    v9 = v6 + 32 * a3;
    v10 = *v9;
    v11 = *(v9 + 8);
    v27 = v8;
    v28 = v7;
    while (1)
    {
      v12 = *v7;
      v13 = *(v7 + 8);
      v14 = *a5;
      v15 = v10;
      v16 = v11;
      v17 = v12;
      [v15 v14];
      v19 = v18;
      [v17 *a5];
      v21 = v20;

      if (v21 >= v19)
      {
LABEL_4:
        a3 = v29 + 1;
        v7 = v28 + 32;
        v8 = v27 - 1;
        if (v29 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *(v7 + 32);
      v11 = *(v7 + 40);
      v22 = *(v7 + 48);
      v23 = *(v7 + 56);
      v24 = *(v7 + 16);
      *(v7 + 32) = *v7;
      *(v7 + 48) = v24;
      *v7 = v10;
      *(v7 + 8) = v11;
      *(v7 + 16) = v22;
      *(v7 + 24) = v23;
      v7 -= 32;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1A4A27CD8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5)
{
  v7 = v5;
  v8 = a3;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v6 = v11;
    v11 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v6 = sub_1A3D86884(v6);
    }

    v121 = *(v6 + 2);
    if (v121 >= 2)
    {
      do
      {
        v122 = *v8;
        if (!*v8)
        {
          goto LABEL_125;
        }

        v8 = (v121 - 1);
        v123 = *&v6[16 * v121];
        v124 = *&v6[16 * v121 + 24];
        sub_1A4A289C8((v122 + 32 * v123), (v122 + 32 * *&v6[16 * v121 + 16]), (v122 + 32 * v124), v11, a5);
        if (v7)
        {
          break;
        }

        if (v124 < v123)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1A3D86884(v6);
        }

        if (v121 - 2 >= *(v6 + 2))
        {
          goto LABEL_115;
        }

        v125 = &v6[16 * v121];
        *v125 = v123;
        *(v125 + 1) = v124;
        sub_1A3D867F8(v121 - 1);
        v121 = *(v6 + 2);
        v8 = a3;
      }

      while (v121 > 1);
    }

LABEL_99:

    return;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v13 >= v9)
    {
      v29 = v13;
    }

    else
    {
      v140 = v9;
      v127 = v11;
      v129 = v7;
      v14 = *v8 + 32 * v13;
      v15 = *v14;
      v16 = *(v14 + 8);
      v132 = v12;
      v136 = 32 * v12;
      v17 = *v8 + 32 * v12;
      v18 = *v17;
      v138 = *(v17 + 8);
      v6 = a5;
      v19 = *a5;
      v20 = v15;
      v21 = v16;
      v22 = v18;
      [v20 v19];
      v24 = v23;
      [v22 *a5];
      v26 = v25;

      v27 = v132 + 2;
      v28 = (v17 + 72);
      while (1)
      {
        v29 = v140;
        if (v140 == v27)
        {
          break;
        }

        v30 = *(v28 - 1);
        v31 = *v28;
        v32 = *(v28 - 5);
        v33 = *(v28 - 4);
        v34 = *a5;
        v6 = v30;
        v35 = v31;
        v36 = v32;
        [v6 v34];
        v38 = v37;
        [v36 *a5];
        v40 = v39;

        ++v27;
        v28 += 4;
        if (v26 < v24 == v40 >= v38)
        {
          v29 = v27 - 1;
          break;
        }
      }

      v11 = v127;
      v7 = v129;
      v12 = v132;
      v8 = a3;
      if (v26 < v24)
      {
        if (v29 < v132)
        {
          goto LABEL_118;
        }

        if (v132 < v29)
        {
          v41 = 32 * v29 - 16;
          v42 = v136 + 24;
          v43 = v29;
          v44 = v132;
          do
          {
            if (v44 != --v43)
            {
              v52 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v45 = (v52 + v42);
              v46 = (v52 + v41);
              v47 = *(v45 - 3);
              v48 = *(v45 - 2);
              v49 = *(v45 - 8);
              v50 = *v45;
              v51 = *v46;
              *(v45 - 3) = *(v46 - 1);
              *(v45 - 1) = v51;
              *(v46 - 2) = v47;
              *(v46 - 1) = v48;
              *v46 = v49;
              *(v46 + 1) = v50;
            }

            ++v44;
            v41 -= 32;
            v42 += 32;
          }

          while (v44 < v43);
        }
      }
    }

    v53 = v8[1];
    if (v29 < v53)
    {
      if (__OFSUB__(v29, v12))
      {
        goto LABEL_117;
      }

      if (v29 - v12 < a4)
      {
        if (__OFADD__(v12, a4))
        {
          goto LABEL_119;
        }

        if (v12 + a4 >= v53)
        {
          v54 = v8[1];
        }

        else
        {
          v54 = v12 + a4;
        }

        if (v54 < v12)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v29 != v54)
        {
          break;
        }
      }
    }

    v55 = v29;
    if (v29 < v12)
    {
      goto LABEL_116;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1A3D8598C(0, *(v11 + 2) + 1, 1, v11);
    }

    v57 = *(v11 + 2);
    v56 = *(v11 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      v11 = sub_1A3D8598C((v56 > 1), v57 + 1, 1, v11);
    }

    *(v11 + 2) = v58;
    v59 = &v11[16 * v57];
    *(v59 + 4) = v12;
    *(v59 + 5) = v55;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v134 = v55;
    if (v57)
    {
      while (1)
      {
        v60 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v61 = *(v11 + 4);
          v62 = *(v11 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_48:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v11[16 * v58];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v11[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v58 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v87 = &v11[16 * v58];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_62:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v11[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_69:
        v98 = v60 - 1;
        if (v60 - 1 >= v58)
        {
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
          goto LABEL_120;
        }

        if (!*v8)
        {
          goto LABEL_123;
        }

        v99 = *&v11[16 * v98 + 32];
        v100 = *&v11[16 * v60 + 40];
        sub_1A4A289C8((*v8 + 32 * v99), (*v8 + 32 * *&v11[16 * v60 + 32]), (*v8 + 32 * v100), v6, a5);
        if (v7)
        {
          goto LABEL_99;
        }

        if (v100 < v99)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1A3D86884(v11);
        }

        if (v98 >= *(v11 + 2))
        {
          goto LABEL_102;
        }

        v101 = &v11[16 * v98];
        *(v101 + 4) = v99;
        *(v101 + 5) = v100;
        sub_1A3D867F8(v60);
        v58 = *(v11 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v11[16 * v58 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v11[16 * v58];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v11[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v58 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v9 = v8[1];
    v10 = v134;
    if (v134 >= v9)
    {
      goto LABEL_89;
    }
  }

  v128 = v11;
  v130 = v7;
  v102 = *v8;
  v103 = *v8 + 32 * v29 - 32;
  v104 = v12 - v29;
  v135 = v54;
LABEL_80:
  v139 = v103;
  v141 = v29;
  v105 = v102 + 32 * v29;
  v6 = *v105;
  v106 = *(v105 + 8);
  v137 = v104;
  v107 = v104;
  while (1)
  {
    v108 = *v103;
    v109 = *(v103 + 8);
    v110 = *a5;
    v6 = v6;
    v111 = v106;
    v112 = v108;
    [v6 v110];
    v114 = v113;
    [v112 *a5];
    v116 = v115;

    if (v116 >= v114)
    {
LABEL_79:
      v29 = v141 + 1;
      v103 = v139 + 32;
      v55 = v135;
      v104 = v137 - 1;
      if (v141 + 1 != v135)
      {
        goto LABEL_80;
      }

      v11 = v128;
      v7 = v130;
      v8 = a3;
      if (v135 < v12)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v102)
    {
      break;
    }

    v6 = *(v103 + 32);
    v106 = *(v103 + 40);
    v117 = *(v103 + 48);
    v118 = *(v103 + 56);
    v119 = *(v103 + 16);
    *(v103 + 32) = *v103;
    *(v103 + 48) = v119;
    *v103 = v6;
    *(v103 + 8) = v106;
    *(v103 + 16) = v117;
    *(v103 + 24) = v118;
    v103 -= 32;
    if (__CFADD__(v107++, 1))
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1A4A2841C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1A3D86884(v8);
      v8 = result;
    }

    v87 = (v8 + 16);
    v88 = *(v8 + 16);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = (v8 + 16 * v88);
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_1A4A28D10((*a3 + 32 * *v89), (*a3 + 32 * *v91), (*a3 + 32 * v92), v5);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_114;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_115;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_116;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v94 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 24);
      v11 = *a3 + 32 * v9;
      v12 = *(v11 + 24);
      v13 = v9 + 2;
      v14 = (v11 + 88);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 4;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v10) ^ v17) & 1) == 0)
        {
          v7 = v13 - 1;
          if (v12 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v12 >= v10)
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
        v18 = 32 * v7 - 16;
        v19 = 32 * v9 + 24;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v29 + v19);
            v23 = (v29 + v18);
            v24 = *(v22 - 3);
            v25 = *(v22 - 2);
            v26 = *(v22 - 8);
            v27 = *v22;
            v28 = *v23;
            *(v22 - 3) = *(v23 - 1);
            *(v22 - 1) = v28;
            *(v23 - 2) = v24;
            *(v23 - 1) = v25;
            *v23 = v26;
            *(v23 + 1) = v27;
          }

          ++v21;
          v18 -= 32;
          v19 += 32;
        }

        while (v21 < v20);
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
      result = sub_1A3D8598C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v41 = *(v8 + 24);
    v42 = v5 + 1;
    if (v5 >= v41 >> 1)
    {
      result = sub_1A3D8598C((v41 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v42;
    v43 = v8 + 32;
    v44 = (v8 + 32 + 16 * v5);
    *v44 = v9;
    v44[1] = v7;
    v96 = *v95;
    if (!*v95)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v45 = *(v8 + 32);
          v46 = *(v8 + 40);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_57:
          if (v48)
          {
            goto LABEL_104;
          }

          v61 = (v8 + 16 * v42);
          v63 = *v61;
          v62 = v61[1];
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_106;
          }

          v67 = (v43 + 16 * v5);
          v69 = *v67;
          v68 = v67[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_111;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v5 = v42 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v42 < 2)
        {
          goto LABEL_112;
        }

        v71 = (v8 + 16 * v42);
        v73 = *v71;
        v72 = v71[1];
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_72:
        if (v66)
        {
          goto LABEL_108;
        }

        v74 = (v43 + 16 * v5);
        v76 = *v74;
        v75 = v74[1];
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_110;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v42)
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

        v82 = (v43 + 16 * (v5 - 1));
        v83 = *v82;
        v84 = (v43 + 16 * v5);
        v85 = v84[1];
        sub_1A4A28D10((*a3 + 32 * *v82), (*a3 + 32 * *v84), (*a3 + 32 * v85), v96);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *(v8 + 16);
        if (v5 >= v86)
        {
          goto LABEL_101;
        }

        v42 = v86 - 1;
        result = memmove((v43 + 16 * v5), v84 + 2, 16 * (v86 - 1 - v5));
        *(v8 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_3;
        }
      }

      v49 = v43 + 16 * v42;
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_102;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_103;
      }

      v56 = (v8 + 16 * v42);
      v58 = *v56;
      v57 = v56[1];
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_105;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_107;
      }

      if (v60 >= v52)
      {
        v78 = (v43 + 16 * v5);
        v80 = *v78;
        v79 = v78[1];
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_113;
        }

        if (v47 < v81)
        {
          v5 = v42 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v94;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 32 * v7 - 8;
  v32 = v9 - v7;
LABEL_30:
  v33 = *(v30 + 32 * v7 + 24);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (*v35 >= v33)
    {
LABEL_29:
      ++v7;
      v31 += 32;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *(v35 + 8);
    v37 = *(v35 + 16);
    v38 = *(v35 + 24);
    v39 = *(v35 - 8);
    *(v35 + 8) = *(v35 - 24);
    *(v35 + 24) = v39;
    *(v35 - 24) = v36;
    *(v35 - 16) = v37;
    *(v35 - 8) = v38;
    *v35 = v33;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
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

uint64_t sub_1A4A289C8(char *a1, char *__src, char *a3, char *a4, SEL *a5)
{
  __srca = a1;
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __src - a1;
  v9 = __src - a1 + 31;
  if (__src - a1 >= 0)
  {
    v9 = __src - a1;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (a4 != __src || &__src[32 * v13] <= a4)
    {
      memmove(a4, __src, 32 * v13);
    }

    v53 = &v5[4 * v13];
    if (v11 >= 32 && v7 > __srca)
    {
LABEL_26:
      v49 = v7;
      v47 = v7 - 32;
      v28 = v6 - 32;
      v29 = v53;
      do
      {
        v30 = v5;
        v31 = v28;
        v32 = v28 + 32;
        v33 = *(v29 - 4);
        v34 = *(v29 - 3);
        v29 -= 32;
        v35 = *(v49 - 4);
        v51 = *(v49 - 3);
        v36 = *a5;
        v37 = v33;
        v38 = v34;
        v39 = v35;
        [v37 v36];
        v41 = v40;
        [v39 *a5];
        v43 = v42;

        if (v43 < v41)
        {
          v5 = v30;
          v6 = v31;
          if (v32 != v49)
          {
            v45 = *(v47 + 1);
            *v31 = *v47;
            *(v31 + 1) = v45;
          }

          if (v53 <= v30 || (v7 = v47, v47 <= __srca))
          {
            v7 = v47;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v5 = v30;
        if (v32 != v53)
        {
          v44 = *(v29 + 1);
          *v31 = *v29;
          *(v31 + 1) = v44;
        }

        v28 = v31 - 32;
        v53 = v29;
      }

      while (v29 > v30);
      v53 = v29;
      v7 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[32 * v10] <= a4)
    {
      memmove(a4, a1, 32 * v10);
    }

    v53 = &v5[4 * v10];
    if (v8 >= 32 && v7 < v6)
    {
      v48 = v6;
      while (1)
      {
        v14 = *v7;
        v15 = *(v7 + 1);
        v16 = *v5;
        v50 = v5[1];
        v17 = *a5;
        v18 = v14;
        v19 = v15;
        v20 = v16;
        [v18 v17];
        v22 = v21;
        [v20 *a5];
        v24 = v23;

        if (v24 >= v22)
        {
          break;
        }

        v25 = v7;
        v26 = __srca == v7;
        v7 += 32;
        if (!v26)
        {
          goto LABEL_17;
        }

LABEL_18:
        __srca += 32;
        if (v5 >= v53 || v7 >= v48)
        {
          goto LABEL_20;
        }
      }

      v25 = v5;
      v26 = __srca == v5;
      v5 += 4;
      if (v26)
      {
        goto LABEL_18;
      }

LABEL_17:
      v27 = v25[1];
      *__srca = *v25;
      *(__srca + 1) = v27;
      goto LABEL_18;
    }

LABEL_20:
    v7 = __srca;
  }

LABEL_37:
  if (v7 != v5 || v7 >= v5 + ((v53 - v5 + (v53 - v5 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0))
  {
    memmove(v7, v5, 32 * ((v53 - v5) / 32));
  }

  return 1;
}

uint64_t sub_1A4A28D10(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
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

      if (v4[3] < v6[3])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_1A4A28F14(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = v6;
      v9 = *v7;
      v10 = *(v7 - 8);
      v11 = *(v7 - 2);
      v17 = *(v7 - 3);
      v12 = v17;
      v18 = v11;
      v19 = v10;
      v20 = v9;
      v13 = v11;
      v14 = v12;
      LOBYTE(v12) = a1(&v17);
      v15 = v18;

      LOBYTE(v4) = (v3 != 0) | v12;
      if ((v3 != 0) | v12 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 4;
    }

    while (v8);
  }

  return v4 & 1;
}

void sub_1A4A28FEC(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v109 = v2;
  if (!v2)
  {
    v104 = MEMORY[0x1E69E7CC0];
    if ((a2 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_31:
    v29 = a1;
    if (*(v104 + 16))
    {
      goto LABEL_60;
    }

    if (!v2)
    {
      v102 = MEMORY[0x1E69E7CC0];
      goto LABEL_59;
    }

    v30 = 0;
    v31 = a1 + 56;
    v102 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v32 = (v31 + 32 * v30);
      v33 = v30;
      v34 = v109;
      while (1)
      {
        if (v33 >= v34)
        {
          goto LABEL_126;
        }

        v30 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_127;
        }

        v36 = *(v32 - 3);
        v35 = *(v32 - 2);
        v37 = *(v32 - 8);
        v38 = *v32;
        v111 = v37;
        v110 = 3;
        v39 = v35;
        v40 = v36;
        if (!static ParallaxAssetPosterClassification.== infix(_:_:)(&v111, &v110))
        {
          v111 = v37;
          v110 = 4;
          if (!static ParallaxAssetPosterClassification.== infix(_:_:)(&v111, &v110))
          {
            [v40 chroma];
            v44 = v43;
            [v40 hue];
            if (v44 >= 0.3)
            {
              if (v45 > 43.0)
              {
                [v40 hue];
                if (v47 < 87.0)
                {
                  goto LABEL_35;
                }
              }
            }

            else if (v45 >= 30.0)
            {
              [v40 hue];
              if (v46 <= 100.0)
              {
                goto LABEL_35;
              }
            }
          }
        }

        [v40 chroma];
        if (v41 >= 0.3)
        {
          [v40 luma];
          if (v42 >= 0.25)
          {
            break;
          }
        }

LABEL_35:

        ++v33;
        v32 += 4;
        v34 = v109;
        v29 = a1;
        if (v30 == v109)
        {
          goto LABEL_59;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112 = v102;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A4A2778C(0, *(v102 + 16) + 1, 1);
        v102 = v112;
      }

      v50 = *(v102 + 16);
      v49 = *(v102 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1A4A2778C((v49 > 1), v50 + 1, 1);
        v102 = v112;
      }

      *(v102 + 16) = v50 + 1;
      v51 = v102 + 32 * v50;
      *(v51 + 32) = v40;
      *(v51 + 40) = v35;
      *(v51 + 48) = v37;
      *(v51 + 56) = v38;
      v29 = a1;
      v31 = a1 + 56;
      if (v30 == v109)
      {
LABEL_59:

        v104 = v102;
        v3 = MEMORY[0x1E69E7CC0];
        v2 = v109;
LABEL_60:
        if (*(v104 + 16))
        {
          v112 = v104;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        if (!v2)
        {

          if (!*(v3 + 16))
          {
            v78 = MEMORY[0x1E69E7CC0];
            goto LABEL_121;
          }

          goto LABEL_118;
        }

        v52 = 0;
        v53 = v29 + 56;
        v100 = v29 + 56;
        v103 = MEMORY[0x1E69E7CC0];
        while (2)
        {
          v54 = (v53 + 32 * v52);
          v55 = v52;
LABEL_67:
          if (v55 >= v2)
          {
            goto LABEL_124;
          }

          v52 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            goto LABEL_125;
          }

          v57 = *(v54 - 3);
          v58 = *(v54 - 2);
          v59 = *(v54 - 8);
          v60 = *v54;
          v111 = v59;
          v110 = 3;
          v61 = v58;
          v62 = v57;
          if (static ParallaxAssetPosterClassification.== infix(_:_:)(&v111, &v110) || (v111 = v59, v110 = 4, static ParallaxAssetPosterClassification.== infix(_:_:)(&v111, &v110)))
          {
LABEL_71:
            [v62 luma];
            if (v63 >= 0.25)
            {
              if ((a2 & 1) != 0 || (!v58 || (sub_1A3C52C70(0, &qword_1EB139B10), v64 = v62, v56 = v61, v65 = sub_1A524DBF4(), v56, v64, v2 = v109, (v65 & 1) == 0)) && (v56 = v61, v60 >= 1.0))
              {
                v71 = v103;
                v72 = swift_isUniquelyReferenced_nonNull_native();
                v112 = v103;
                if ((v72 & 1) == 0)
                {
                  sub_1A4A2778C(0, *(v103 + 16) + 1, 1);
                  v71 = v112;
                }

                v74 = *(v71 + 16);
                v73 = *(v71 + 24);
                if (v74 >= v73 >> 1)
                {
                  sub_1A4A2778C((v73 > 1), v74 + 1, 1);
                  v71 = v112;
                }

                *(v71 + 16) = v74 + 1;
                v103 = v71;
                v75 = v71 + 32 * v74;
                *(v75 + 32) = v62;
                *(v75 + 40) = v58;
                *(v75 + 48) = v59;
                *(v75 + 56) = v60;
                v53 = v100;
                if (v52 == v2)
                {
LABEL_89:

                  v3 = v103;
                  if (!*(v103 + 16))
                  {
                    v76 = 0;
                    v77 = a1 + 56;
                    v78 = MEMORY[0x1E69E7CC0];
                    v105 = a1 + 56;
                    while (1)
                    {
                      v107 = v78;
                      v79 = (v77 + 32 * v76);
                      v80 = v76;
                      while (1)
                      {
                        if (v80 >= v2)
                        {
                          goto LABEL_128;
                        }

                        v76 = v80 + 1;
                        if (__OFADD__(v80, 1))
                        {
                          goto LABEL_129;
                        }

                        v82 = *(v79 - 3);
                        v83 = *(v79 - 2);
                        v84 = *(v79 - 8);
                        v85 = *v79;
                        v111 = v84;
                        v110 = 3;
                        v86 = v83;
                        v87 = v82;
                        if (!static ParallaxAssetPosterClassification.== infix(_:_:)(&v111, &v110))
                        {
                          v111 = v84;
                          v110 = 4;
                          if (!static ParallaxAssetPosterClassification.== infix(_:_:)(&v111, &v110))
                          {
                            [v87 chroma];
                            v92 = v91;
                            [v87 hue];
                            if (v92 >= 0.3)
                            {
                              if (v93 > 43.0)
                              {
                                [v87 hue];
                                if (v95 < 87.0)
                                {
                                  goto LABEL_92;
                                }
                              }
                            }

                            else if (v93 >= 30.0)
                            {
                              [v87 hue];
                              if (v94 <= 100.0)
                              {
                                goto LABEL_92;
                              }
                            }
                          }
                        }

                        [v87 luma];
                        if (v88 >= 0.2)
                        {
                          break;
                        }

LABEL_92:
                        v81 = v86;
LABEL_93:

                        ++v80;
                        v79 += 4;
                        v2 = v109;
                        if (v76 == v109)
                        {
                          v78 = v107;
                          goto LABEL_121;
                        }
                      }

                      if ((a2 & 1) == 0)
                      {
                        if (v83)
                        {
                          sub_1A3C52C70(0, &qword_1EB139B10);
                          v89 = v87;
                          v81 = v86;
                          v90 = sub_1A524DBF4();

                          if (v90)
                          {
                            goto LABEL_93;
                          }
                        }

                        v81 = v86;
                        if (v85 < 1.0)
                        {
                          goto LABEL_93;
                        }
                      }

                      v78 = v107;
                      v96 = swift_isUniquelyReferenced_nonNull_native();
                      v112 = v107;
                      if ((v96 & 1) == 0)
                      {
                        sub_1A4A2778C(0, *(v107 + 16) + 1, 1);
                        v78 = v112;
                      }

                      v98 = *(v78 + 16);
                      v97 = *(v78 + 24);
                      if (v98 >= v97 >> 1)
                      {
                        sub_1A4A2778C((v97 > 1), v98 + 1, 1);
                        v78 = v112;
                      }

                      *(v78 + 16) = v98 + 1;
                      v99 = v78 + 32 * v98;
                      *(v99 + 32) = v87;
                      *(v99 + 40) = v83;
                      *(v99 + 48) = v84;
                      *(v99 + 56) = v85;
                      v2 = v109;
                      v77 = v105;
                      if (v76 == v109)
                      {
LABEL_121:

                        v112 = v78;
                        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
                      }
                    }
                  }

LABEL_118:
                  v112 = v3;
                  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
                }

                continue;
              }

              goto LABEL_66;
            }
          }

          else
          {
            [v62 chroma];
            v67 = v66;
            [v62 hue];
            if (v67 >= 0.3)
            {
              if (v68 <= 43.0)
              {
                goto LABEL_71;
              }

              [v62 hue];
              if (v70 >= 87.0)
              {
                goto LABEL_71;
              }
            }

            else
            {
              if (v68 < 30.0)
              {
                goto LABEL_71;
              }

              [v62 hue];
              if (v69 > 100.0)
              {
                goto LABEL_71;
              }
            }
          }

          break;
        }

        v56 = v61;
LABEL_66:

        ++v55;
        v54 += 4;
        if (v52 == v2)
        {
          goto LABEL_89;
        }

        goto LABEL_67;
      }
    }
  }

  v4 = 0;
  v5 = a1 + 56;
  v101 = a1 + 56;
  v104 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v6 = (v5 + 32 * v4);
  v7 = v4;
  while (v7 < v2)
  {
    v4 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_123;
    }

    v9 = *(v6 - 3);
    v10 = *(v6 - 2);
    v11 = *(v6 - 8);
    v12 = *v6;
    v111 = v11;
    v110 = 3;
    v13 = v10;
    v14 = v9;
    if (!static ParallaxAssetPosterClassification.== infix(_:_:)(&v111, &v110))
    {
      v111 = v11;
      v110 = 4;
      if (!static ParallaxAssetPosterClassification.== infix(_:_:)(&v111, &v110))
      {
        [v14 chroma];
        v20 = v19;
        [v14 hue];
        if (v20 >= 0.3)
        {
          if (v21 > 43.0)
          {
            [v14 hue];
            if (v23 < 87.0)
            {
LABEL_4:
              v8 = v13;
              goto LABEL_5;
            }
          }
        }

        else if (v21 >= 30.0)
        {
          [v14 hue];
          if (v22 <= 100.0)
          {
            goto LABEL_4;
          }
        }
      }
    }

    [v14 chroma];
    if (v15 < 0.3)
    {
      goto LABEL_4;
    }

    [v14 luma];
    if (v16 < 0.25)
    {
      goto LABEL_4;
    }

    if (!v10 || (sub_1A3C52C70(0, &qword_1EB139B10), v17 = v14, v8 = v13, v18 = sub_1A524DBF4(), v8, v17, v2 = v109, (v18 & 1) == 0))
    {
      v8 = v13;
      if (v12 >= 1.0)
      {
        v24 = v104;
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v112 = v104;
        if ((v25 & 1) == 0)
        {
          sub_1A4A2778C(0, *(v104 + 16) + 1, 1);
          v24 = v112;
        }

        v3 = MEMORY[0x1E69E7CC0];
        v5 = v101;
        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1A4A2778C((v26 > 1), v27 + 1, 1);
          v24 = v112;
        }

        *(v24 + 16) = v27 + 1;
        v104 = v24;
        v28 = v24 + 32 * v27;
        *(v28 + 32) = v14;
        *(v28 + 40) = v10;
        *(v28 + 48) = v11;
        *(v28 + 56) = v12;
        v2 = v109;
        if (v4 == v109)
        {
LABEL_30:
          if (a2)
          {
            goto LABEL_31;
          }

LABEL_57:
          v29 = a1;
          goto LABEL_60;
        }

        goto LABEL_3;
      }
    }

LABEL_5:

    ++v7;
    v6 += 4;
    if (v4 == v2)
    {
      v3 = MEMORY[0x1E69E7CC0];
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_123:
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
LABEL_129:
  __break(1u);
}

uint64_t sub_1A4A29BA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A4A2A9D4();
  v3 = sub_1A524E794();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1A3C2F228(v4);
  if (v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v6;
  result = v5;
  *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
  *(v3[6] + v8) = v4;
  *(v3[7] + 8 * v8) = v5;
  v10 = v3[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (!v11)
  {
    v3[2] = v12;
    if (v1 != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_7:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}