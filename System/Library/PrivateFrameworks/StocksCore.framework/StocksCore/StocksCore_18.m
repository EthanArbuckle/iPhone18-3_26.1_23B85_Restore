uint64_t sub_1DABE87E4()
{
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = *(v1 + 16);
  v3 = v0[20];
  if (v2)
  {
    v4 = v0[15];
    v5 = v0[11];
    v52 = MEMORY[0x1E69E7CC0];
    sub_1DAB25C68(0, v2, 0);
    sub_1DAA9A574();
    v6 = v52;
    v46 = (v5 + 104);
    v43 = (v4 + 8);
    v44 = (v4 + 16);
    v7 = (v3 + 64);
    v45 = *MEMORY[0x1E6968DF0];
    while (1)
    {
      v50 = v2;
      v51 = v6;
      v9 = v0[17];
      v8 = v0[18];
      v10 = v0[12];
      v11 = v0[13];
      v12 = v0[10];
      v47 = *(v7 - 4);
      v48 = *(v7 - 3);
      v14 = *(v7 - 2);
      v13 = *(v7 - 1);
      v15 = *v7;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1DACB9284();
      sub_1DACB7DF4();
      (*v46)(v10, v45, v12);
      sub_1DACB7914();
      v16 = sub_1DACB6F34();
      if (v13 == sub_1DACB9324() && v15 == v17)
      {
        break;
      }

      v18 = sub_1DACBA174();
      sub_1DACB71E4();

      v19 = v47;
      v20 = v48;
      if (v18)
      {
        goto LABEL_7;
      }

LABEL_10:

      v0[7] = v19;
      v0[8] = v20;
      sub_1DACB6EE4();

      v6 = v51;
      v32 = *(v51 + 16);
      v31 = *(v51 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1DAB25C68((v31 > 1), v32 + 1, 1);
        v6 = v51;
      }

      *(v6 + 16) = v32 + 1;
      v33 = (v6 + 24 * v32);
      v33[4] = v13;
      v33[5] = v15;
      v33[6] = v16;
      v7 += 6;
      v2 = v50 - 1;
      if (v50 == 1)
      {
        v34 = v0[20];

        goto LABEL_15;
      }
    }

    sub_1DACB71E4();

LABEL_7:
    v49 = v16;
    v21 = v13;
    v22 = v0[16];
    v23 = v0[17];
    v24 = v0[14];
    sub_1DACB9284();
    (*v44)(v22, v23, v24);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v26 = v0[16];
    v25 = v0[17];
    v28 = v0[13];
    v27 = v0[14];
    v29 = qword_1EE13E470;
    sub_1DACB7DF4();
    v19 = sub_1DACB9384();
    v20 = v30;
    (*v43)(v25, v27);

    v13 = v21;
    v16 = v49;
    goto LABEL_10;
  }

  v35 = v0[20];

  v6 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v37 = v0[17];
  v36 = v0[18];
  v38 = v0[16];
  v40 = v0[12];
  v39 = v0[13];

  v41 = v0[1];

  return v41(v6);
}

uint64_t sub_1DABE8BFC(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DAAFF1F4;

  return sub_1DABE848C(v3);
}

uint64_t sub_1DABE8CA4()
{
  sub_1DABE9824(0, &qword_1EE11D420, type metadata accessor for ForYouConfigRecord, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DABE8D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  v7 = sub_1DABE9214(a5);
  v38 = v8;
  sub_1DABE9824(0, &qword_1EE11CEB0, sub_1DABE9888, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D30;
  if (qword_1EE121F40[0] != -1)
  {
    swift_once();
  }

  v10 = qword_1EE13E340;
  *(inited + 32) = qword_1EE13E338;
  *(inited + 40) = v10;
  sub_1DAA614EC(0, &qword_1EE123B50, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DACC1D40;
  v12 = unk_1EE13E360;
  *(v11 + 32) = qword_1EE13E358;
  *(v11 + 40) = v12;
  v13 = unk_1EE13E380;
  *(v11 + 48) = qword_1EE13E378;
  *(v11 + 56) = v13;
  *(inited + 48) = v11;
  v14 = *MEMORY[0x1E69B4FA8];
  *(inited + 56) = sub_1DACB9324();
  *(inited + 64) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DACC1D40;
  v17 = *MEMORY[0x1E69B4FB0];
  *(v16 + 32) = sub_1DACB9324();
  *(v16 + 40) = v18;
  v19 = *MEMORY[0x1E69B4FA0];
  *(v16 + 48) = sub_1DACB9324();
  *(v16 + 56) = v20;
  *(inited + 72) = v16;
  v21 = *MEMORY[0x1E69B5000];
  *(inited + 80) = sub_1DACB9324();
  *(inited + 88) = v22;
  v23 = MEMORY[0x1E69E7CC0];
  *(inited + 96) = MEMORY[0x1E69E7CC0];
  v24 = *MEMORY[0x1E69B4FE0];
  *(inited + 104) = sub_1DACB9324();
  *(inited + 112) = v25;
  *(inited + 120) = v23;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAB69444(inited);
  swift_setDeallocating();
  sub_1DABE9888();
  swift_arrayDestroy();
  v37 = [objc_opt_self() ignoreCacheCachePolicy];
  if (qword_1EE11D618 != -1)
  {
    swift_once();
  }

  sub_1DABE9970(qword_1EE11DE28, v26, type metadata accessor for ForYouConfigRecordService);
  sub_1DACB7F84();
  if (aBlock[0])
  {
    v27 = 0;
  }

  else
  {
    v28 = objc_allocWithZone(MEMORY[0x1E69B5268]);
    v29 = sub_1DACB92F4();
    v30 = sub_1DACB92F4();
    v27 = [v28 initWithGroupName:v29 cacheControlKey:v30];
  }

  v31 = a5[2];
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1DACC1D20;
  *(v32 + 32) = v7;
  *(v32 + 40) = v38;
  sub_1DACB71E4();
  v33 = sub_1DACB9634();

  sub_1DAA614EC(0, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
  v34 = sub_1DACB9114();

  v35 = swift_allocObject();
  v35[2] = a1;
  v35[3] = a2;
  v35[4] = a3;
  v35[5] = a4;
  v35[6] = v7;
  v35[7] = v38;
  aBlock[4] = sub_1DABE990C;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DABAE648;
  aBlock[3] = &block_descriptor_23;
  v36 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v31 fetchRecordTreeWithRootIDs:v33 branchKeysByRecordType:v34 cachePolicy:v37 edgeCacheHint:v27 completion:v36];
  _Block_release(v36);
}

uint64_t sub_1DABE9214(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for AppConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE11D630 != -1)
  {
    swift_once();
  }

  sub_1DABE9970(qword_1EE11DE28, v5, type metadata accessor for ForYouConfigRecordService);
  sub_1DACB7F84();
  v8 = v14;
  v9 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v9 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    v10 = a1[6];
    v11 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, v10);
    (*(v11 + 8))(v10, v11);
    v8 = *(v7 + 178);
    v12 = *(v7 + 179);
    sub_1DACB71E4();
    sub_1DABE99B8(v7, type metadata accessor for AppConfiguration);
  }

  return v8;
}

void sub_1DABE93B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38[0] = a3;
  v13 = type metadata accessor for ForYouConfigRecord(0);
  v14 = *(*(v13 - 1) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = v38 - v18;
  if (a2)
  {
    swift_getErrorValue();
    v20 = v38[2];
    v21 = a2;
    sub_1DABDB680(v20);
    if (v22)
    {
      sub_1DAA41DCC();
      v23 = sub_1DACB9AD4();
      sub_1DACB9914();
      v24 = MEMORY[0x1E69E7CC0];
      sub_1DACB8C64();

      v25 = (v17 + v13[5]);
      v26 = v25 + *(type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0) + 20);
      sub_1DACB7CB4();
      *v25 = v24;
      *v17 = 0x676E697373696DLL;
      v17[1] = 0xE700000000000000;
      *(v17 + v13[6]) = v24;
      v27 = (v17 + v13[7]);
      *v27 = 0;
      v27[1] = 0xE000000000000000;
      *(v17 + v13[8]) = v24;
      (v38[0])(v17);

      sub_1DABE99B8(v17, type metadata accessor for ForYouConfigRecord);
    }

    else
    {
      a5(a2);
    }
  }

  else if (*(a1 + 16) && (v28 = sub_1DAA4BF3C(a7, a8), (v29 & 1) != 0))
  {
    v30 = (*(a1 + 56) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];
    v33 = sub_1DACB7554();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    sub_1DAB0B080(v31, v32);
    sub_1DACB7544();
    sub_1DABE9970(&qword_1EE11E810, 255, type metadata accessor for ForYouConfigRecord);
    sub_1DACB7524();

    (v38[0])(v19);
    sub_1DAA563C0(v31, v32);
    sub_1DABE99B8(v19, type metadata accessor for ForYouConfigRecord);
  }

  else
  {
    sub_1DABE991C();
    v36 = swift_allocError();
    *v37 = a7;
    v37[1] = a8;
    sub_1DACB71E4();
    a5(v36);
  }
}

uint64_t sub_1DABE973C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_1DABE97A8()
{
  v1 = *(*v0 + 64);
  sub_1DACB71F4();
  v2 = sub_1DACB8364();

  return v2;
}

void sub_1DABE9824(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DABE9888()
{
  if (!qword_1EE11D190)
  {
    sub_1DAA614EC(255, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11D190);
    }
  }
}

unint64_t sub_1DABE991C()
{
  result = qword_1ECBE8B70;
  if (!qword_1ECBE8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B70);
  }

  return result;
}

uint64_t sub_1DABE9970(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DABE99B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DABE9A44()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABE9B24()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DABE9BF0()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABE9CCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DABEA354();
  *a2 = result;
  return result;
}

void sub_1DABE9CFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656D616E5FLL;
  v4 = 0x65676E6168637865;
  v5 = 0xEA0000000000656DLL;
  v6 = 0x616E5F74726F6873;
  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (v2 != 3)
  {
    v8 = 0x6C6F626D7973;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701869940;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DABE9D98()
{
  v1 = *v0;
  v2 = 0x65676E6168637865;
  v3 = 0x616E5F74726F6873;
  v4 = 1701667182;
  if (v1 != 3)
  {
    v4 = 0x6C6F626D7973;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

uint64_t sub_1DABE9E30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DABEA354();
  *a1 = result;
  return result;
}

uint64_t sub_1DABE9E58(uint64_t a1)
{
  v2 = sub_1DABEB464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABE9E94(uint64_t a1)
{
  v2 = sub_1DABEB464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DABE9ED0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABEA3A0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1DABE9FA4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DABE9FFC(uint64_t a1)
{
  v2 = sub_1DABEAF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABEA038(uint64_t a1)
{
  v2 = sub_1DABEAF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABEA074@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DABEA798(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DABEA114@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DABEA16C(uint64_t a1)
{
  v2 = sub_1DABEB14C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABEA1A8(uint64_t a1)
{
  v2 = sub_1DABEB14C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABEA1E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DABEA940(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DABEA228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65636E616E6966 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DABEA2B0(uint64_t a1)
{
  v2 = sub_1DABEADAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABEA2EC(uint64_t a1)
{
  v2 = sub_1DABEADAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABEA328@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DABEAC04(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DABEA354()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DABEA3A0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = a2;
  sub_1DABEB404(0, &qword_1ECBE8C20, sub_1DABEB464);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABEB464();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  LOBYTE(v41) = 0;
  v12 = v5;
  v13 = sub_1DACB9FA4();
  v15 = v14;
  LOBYTE(v41) = 1;
  v16 = sub_1DACB9F34();
  v34 = v17;
  v32 = v16;
  LOBYTE(v41) = 2;
  v31 = sub_1DACB9F34();
  v33 = v18;
  LOBYTE(v41) = 3;
  *&v30 = sub_1DACB9FA4();
  *(&v30 + 1) = v19;
  v50 = 4;
  v20 = sub_1DACB9FA4();
  v22 = v21;
  (*(v11 + 8))(v9, v12);
  v36 = v30;
  *&v37 = v20;
  *(&v37 + 1) = v22;
  *&v38 = v13;
  *(&v38 + 1) = v15;
  v23 = v32;
  v24 = v34;
  *&v39 = v32;
  *(&v39 + 1) = v34;
  v25 = v33;
  *&v40 = v31;
  *(&v40 + 1) = v33;
  sub_1DABEB4B8(&v36, &v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v41 = v30;
  v42 = v20;
  v43 = v22;
  v44 = v13;
  v45 = v15;
  v46 = v23;
  v47 = v24;
  v48 = v31;
  v49 = v25;
  result = sub_1DABEB4F0(&v41);
  v27 = v39;
  v28 = v35;
  v35[2] = v38;
  v28[3] = v27;
  v28[4] = v40;
  v29 = v37;
  *v28 = v36;
  v28[1] = v29;
  return result;
}

void *sub_1DABEA798(uint64_t *a1)
{
  sub_1DABEB404(0, &qword_1ECBE8BA8, sub_1DABEAF7C);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABEAF7C();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABEAFD0();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_1DABEA940(uint64_t *a1)
{
  sub_1DABEB404(0, &qword_1ECBE8BD8, sub_1DABEB14C);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DABEB14C();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABEB288(0, &qword_1ECBE8BE8, MEMORY[0x1E69E62F8]);
    sub_1DABEB1A0();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v9 = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_1DABEAC04(uint64_t *a1)
{
  sub_1DABEB404(0, &qword_1ECBE8B78, sub_1DABEADAC);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABEADAC();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABEAE00();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

unint64_t sub_1DABEADAC()
{
  result = qword_1ECBE8B80;
  if (!qword_1ECBE8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B80);
  }

  return result;
}

unint64_t sub_1DABEAE00()
{
  result = qword_1ECBE8B88;
  if (!qword_1ECBE8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B88);
  }

  return result;
}

unint64_t sub_1DABEAE78()
{
  result = qword_1ECBE8B90;
  if (!qword_1ECBE8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B90);
  }

  return result;
}

unint64_t sub_1DABEAED0()
{
  result = qword_1ECBE8B98;
  if (!qword_1ECBE8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8B98);
  }

  return result;
}

unint64_t sub_1DABEAF28()
{
  result = qword_1ECBE8BA0;
  if (!qword_1ECBE8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BA0);
  }

  return result;
}

unint64_t sub_1DABEAF7C()
{
  result = qword_1ECBE8BB0;
  if (!qword_1ECBE8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BB0);
  }

  return result;
}

unint64_t sub_1DABEAFD0()
{
  result = qword_1ECBE8BB8;
  if (!qword_1ECBE8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BB8);
  }

  return result;
}

unint64_t sub_1DABEB048()
{
  result = qword_1ECBE8BC0;
  if (!qword_1ECBE8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BC0);
  }

  return result;
}

unint64_t sub_1DABEB0A0()
{
  result = qword_1ECBE8BC8;
  if (!qword_1ECBE8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BC8);
  }

  return result;
}

unint64_t sub_1DABEB0F8()
{
  result = qword_1ECBE8BD0;
  if (!qword_1ECBE8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BD0);
  }

  return result;
}

unint64_t sub_1DABEB14C()
{
  result = qword_1ECBE8BE0;
  if (!qword_1ECBE8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BE0);
  }

  return result;
}

unint64_t sub_1DABEB1A0()
{
  result = qword_1ECBE8BF0;
  if (!qword_1ECBE8BF0)
  {
    sub_1DABEB288(255, &qword_1ECBE8BE8, MEMORY[0x1E69E62F8]);
    sub_1DABEB234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BF0);
  }

  return result;
}

unint64_t sub_1DABEB234()
{
  result = qword_1ECBE8BF8;
  if (!qword_1ECBE8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8BF8);
  }

  return result;
}

void sub_1DABEB288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for YahooSearchResponse.Stock);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DABEB300()
{
  result = qword_1ECBE8C08;
  if (!qword_1ECBE8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C08);
  }

  return result;
}

unint64_t sub_1DABEB358()
{
  result = qword_1ECBE8C10;
  if (!qword_1ECBE8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C10);
  }

  return result;
}

unint64_t sub_1DABEB3B0()
{
  result = qword_1ECBE8C18;
  if (!qword_1ECBE8C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C18);
  }

  return result;
}

void sub_1DABEB404(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1DACBA004();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DABEB464()
{
  result = qword_1ECBE8C28;
  if (!qword_1ECBE8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C28);
  }

  return result;
}

unint64_t sub_1DABEB534()
{
  result = qword_1ECBE8C30;
  if (!qword_1ECBE8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C30);
  }

  return result;
}

unint64_t sub_1DABEB58C()
{
  result = qword_1ECBE8C38;
  if (!qword_1ECBE8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C38);
  }

  return result;
}

unint64_t sub_1DABEB5E4()
{
  result = qword_1ECBE8C40;
  if (!qword_1ECBE8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C40);
  }

  return result;
}

uint64_t sub_1DABEB638@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[7];
  v29[6] = v2[6];
  v29[7] = v5;
  v29[8] = v2[8];
  v6 = v2[3];
  v29[2] = v2[2];
  v29[3] = v6;
  v7 = v2[5];
  v29[4] = v2[4];
  v29[5] = v7;
  v8 = v2[1];
  v29[0] = *v2;
  v29[1] = v8;
  if (sub_1DAA9B6F0(v29) == 1)
  {
    sub_1DAA9B6E0(v29);
    *&v20 = a1;
    sub_1DAAD4DD0(&v20);
    v9 = v27;
    a2[6] = v26;
    a2[7] = v9;
    a2[8] = v28;
    v10 = v23;
    a2[2] = v22;
    a2[3] = v10;
    v11 = v25;
    a2[4] = v24;
    a2[5] = v11;
    v12 = v21;
    *a2 = v20;
    a2[1] = v12;
  }

  else
  {
    v13 = sub_1DAA9B6E0(v29);
    *&v20 = a1;
    memmove(&v20 + 8, (v13 + 8), 0x88uLL);
    sub_1DAAA58BC(&v20);
    v14 = v27;
    a2[6] = v26;
    a2[7] = v14;
    a2[8] = v28;
    v15 = v23;
    a2[2] = v22;
    a2[3] = v15;
    v16 = v25;
    a2[4] = v24;
    a2[5] = v16;
    v17 = v21;
    *a2 = v20;
    a2[1] = v17;
    sub_1DAAA5860(v13 + 8, v19);
  }

  return swift_unknownObjectRetain();
}

id sub_1DABEB754()
{
  v1 = v0[7];
  v9[6] = v0[6];
  v9[7] = v1;
  v9[8] = v0[8];
  v2 = v0[3];
  v9[2] = v0[2];
  v9[3] = v2;
  v3 = v0[5];
  v9[4] = v0[4];
  v9[5] = v3;
  v4 = v0[1];
  v9[0] = *v0;
  v9[1] = v4;
  sub_1DAA9B6F0(v9);
  v5 = *sub_1DAA9B6E0(v9);
  if (([v5 respondsToSelector_] & 1) == 0)
  {
    return 0;
  }

  result = [v5 stocksFields];
  if (!result)
  {
    return result;
  }

  v7 = [result stocksClusterID];
  swift_unknownObjectRelease();
  if (!v7)
  {
    return 0;
  }

  v8 = sub_1DACB9324();

  return v8;
}

uint64_t sub_1DABEB89C(SEL *a1)
{
  v3 = v1[7];
  v11[6] = v1[6];
  v11[7] = v3;
  v11[8] = v1[8];
  v4 = v1[3];
  v11[2] = v1[2];
  v11[3] = v4;
  v5 = v1[5];
  v11[4] = v1[4];
  v11[5] = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  sub_1DAA9B6F0(v11);
  v7 = [*sub_1DAA9B6E0(v11) *a1];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = sub_1DACB9324();

  return v9;
}

id sub_1DABEB944()
{
  v1 = v0[7];
  v7[6] = v0[6];
  v7[7] = v1;
  v7[8] = v0[8];
  v2 = v0[3];
  v7[2] = v0[2];
  v7[3] = v2;
  v3 = v0[5];
  v7[4] = v0[4];
  v7[5] = v3;
  v4 = v0[1];
  v7[0] = *v0;
  v7[1] = v4;
  sub_1DAA9B6F0(v7);
  v5 = *sub_1DAA9B6E0(v7);
  if ([v5 respondsToSelector_])
  {
    return [v5 hasAudioTrack];
  }

  else
  {
    return 0;
  }
}

id sub_1DABEB9D4()
{
  v1 = v0[7];
  v6[6] = v0[6];
  v6[7] = v1;
  v6[8] = v0[8];
  v2 = v0[3];
  v6[2] = v0[2];
  v6[3] = v2;
  v3 = v0[5];
  v6[4] = v0[4];
  v6[5] = v3;
  v4 = v0[1];
  v6[0] = *v0;
  v6[1] = v4;
  sub_1DAA9B6F0(v6);
  return [*sub_1DAA9B6E0(v6) hasThumbnail];
}

uint64_t sub_1DABEBA38()
{
  v1 = v0[7];
  v9[6] = v0[6];
  v9[7] = v1;
  v9[8] = v0[8];
  v2 = v0[3];
  v9[2] = v0[2];
  v9[3] = v2;
  v3 = v0[5];
  v9[4] = v0[4];
  v9[5] = v3;
  v4 = v0[1];
  v9[0] = *v0;
  v9[1] = v4;
  sub_1DAA9B6F0(v9);
  if ([*sub_1DAA9B6E0(v9) respondsToSelector_])
  {
    v5 = [swift_unknownObjectRetain() narrativeTrackPreferredUpsellVariantID];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1DACB9324();

      swift_unknownObjectRelease();
      return v7;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id sub_1DABEBB10()
{
  v1 = v0[7];
  v11[6] = v0[6];
  v11[7] = v1;
  v11[8] = v0[8];
  v2 = v0[3];
  v11[2] = v0[2];
  v11[3] = v2;
  v3 = v0[5];
  v11[4] = v0[4];
  v11[5] = v3;
  v4 = v0[1];
  v11[0] = *v0;
  v11[1] = v4;
  v5 = sub_1DAA9B6F0(v11);
  v6 = *sub_1DAA9B6E0(v11);
  v7 = [v6 respondsToSelector_];
  if (v5 != 1)
  {
    if (v7)
    {
      result = [v6 dismissingIdentifier];
      if (!result)
      {
        return result;
      }

      goto LABEL_7;
    }

    return 0;
  }

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = [v6 dismissingIdentifier];
  if (result)
  {
LABEL_7:
    v9 = result;
    v10 = sub_1DACB9324();

    return v10;
  }

  return result;
}

uint64_t sub_1DABEBC04()
{
  v1 = v0[7];
  v7[6] = v0[6];
  v7[7] = v1;
  v7[8] = v0[8];
  v2 = v0[3];
  v7[2] = v0[2];
  v7[3] = v2;
  v3 = v0[5];
  v7[4] = v0[4];
  v7[5] = v3;
  v4 = v0[1];
  v7[0] = *v0;
  v7[1] = v4;
  sub_1DAA9B6F0(v7);
  v5 = [*sub_1DAA9B6E0(v7) identifier];
  sub_1DACB9324();

  sub_1DACB9404();
}

uint64_t sub_1DABEBCB0()
{
  sub_1DACBA284();
  v1 = v0[7];
  v7[6] = v0[6];
  v7[7] = v1;
  v7[8] = v0[8];
  v2 = v0[3];
  v7[2] = v0[2];
  v7[3] = v2;
  v3 = v0[5];
  v7[4] = v0[4];
  v7[5] = v3;
  v4 = v0[1];
  v7[0] = *v0;
  v7[1] = v4;
  sub_1DAA9B6F0(v7);
  v5 = [*sub_1DAA9B6E0(v7) identifier];
  sub_1DACB9324();

  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABEBD70()
{
  sub_1DACBA284();
  v1 = v0[7];
  v7[6] = v0[6];
  v7[7] = v1;
  v7[8] = v0[8];
  v2 = v0[3];
  v7[2] = v0[2];
  v7[3] = v2;
  v3 = v0[5];
  v7[4] = v0[4];
  v7[5] = v3;
  v4 = v0[1];
  v7[0] = *v0;
  v7[1] = v4;
  sub_1DAA9B6F0(v7);
  v5 = [*sub_1DAA9B6E0(v7) identifier];
  sub_1DACB9324();

  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABEBE30()
{
  v1 = v0[7];
  v7[6] = v0[6];
  v7[7] = v1;
  v7[8] = v0[8];
  v2 = v0[3];
  v7[2] = v0[2];
  v7[3] = v2;
  v3 = v0[5];
  v7[4] = v0[4];
  v7[5] = v3;
  v4 = v0[1];
  v7[0] = *v0;
  v7[1] = v4;
  sub_1DAA9B6F0(v7);
  v5 = [*sub_1DAA9B6E0(v7) identifier];
  sub_1DACB9324();

  sub_1DACB9404();
}

uint64_t sub_1DABEBEDC()
{
  sub_1DACBA284();
  v1 = v0[7];
  v7[6] = v0[6];
  v7[7] = v1;
  v7[8] = v0[8];
  v2 = v0[3];
  v7[2] = v0[2];
  v7[3] = v2;
  v3 = v0[5];
  v7[4] = v0[4];
  v7[5] = v3;
  v4 = v0[1];
  v7[0] = *v0;
  v7[1] = v4;
  sub_1DAA9B6F0(v7);
  v5 = [*sub_1DAA9B6E0(v7) identifier];
  sub_1DACB9324();

  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABEBF98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = 0;
  v3 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    v5 = (v3 + 144 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v7 = v5[7];
      v56 = v5[6];
      v57 = v7;
      v58 = v5[8];
      v8 = v5[3];
      v52 = v5[2];
      v53 = v8;
      v9 = v5[5];
      v54 = v5[4];
      v55 = v9;
      v10 = v5[1];
      v50 = *v5;
      v51 = v10;
      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_27;
      }

      v11 = v5[7];
      v59[6] = v5[6];
      v59[7] = v11;
      v59[8] = v5[8];
      v12 = v5[3];
      v59[2] = v5[2];
      v59[3] = v12;
      v13 = v5[5];
      v59[4] = v5[4];
      v59[5] = v13;
      v14 = v5[1];
      v59[0] = *v5;
      v59[1] = v14;
      if (sub_1DAA9B6F0(v59) == 1)
      {
        v15 = *sub_1DAA9B6E0(v59);
        v43 = v52;
        v44 = v53;
        v41 = v50;
        v42 = v51;
        v49 = v58;
        v47 = v56;
        v48 = v57;
        v45 = v54;
        v46 = v55;
        v16 = *sub_1DAA9B6E0(&v41);
      }

      else
      {
        v15 = *sub_1DAA9B6E0(v59);
      }

      swift_unknownObjectRetain();
      sub_1DAAD4CCC(&v50, &v41);
      v17 = [v15 scoreProfile];
      swift_unknownObjectRelease();
      if (v17)
      {
        break;
      }

      sub_1DAAD4D28(&v50);
      v5 += 9;
      if (v2 == v1)
      {
        return v4;
      }
    }

    v40 = v3;
    v47 = v56;
    v48 = v57;
    v49 = v58;
    v43 = v52;
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v41 = v50;
    v42 = v51;
    sub_1DAA9B6F0(&v41);
    v18 = [*sub_1DAA9B6E0(&v41) identifier];
    v19 = sub_1DACB9324();
    v21 = v20;

    v22 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_1DAA4BF3C(v19, v21);
    v26 = v4[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v30 = v25;
    if (v4[3] < v29)
    {
      sub_1DAB6221C(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1DAA4BF3C(v19, v21);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_30;
      }

LABEL_17:
      v3 = v40;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_20:
      v4[(v24 >> 6) + 8] |= 1 << v24;
      v36 = (v4[6] + 16 * v24);
      *v36 = v19;
      v36[1] = v21;
      *(v4[7] + 8 * v24) = v22;
      sub_1DAAD4D28(&v50);

      v37 = v4[2];
      v28 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (!v28)
      {
        v4[2] = v38;
        goto LABEL_22;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      result = sub_1DACBA1F4();
      __break(1u);
      return result;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v35 = v24;
    sub_1DAB66BA0();
    v24 = v35;
    v3 = v40;
    if ((v30 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_18:
    v32 = v24;

    v33 = v4[7];
    v34 = *(v33 + 8 * v32);
    *(v33 + 8 * v32) = v22;

    sub_1DAAD4D28(&v50);
LABEL_22:
    if (v2 != v1)
    {
      continue;
    }

    return v4;
  }
}

unint64_t sub_1DABEC2E0()
{
  result = qword_1ECBE8C50;
  if (!qword_1ECBE8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C50);
  }

  return result;
}

unint64_t sub_1DABEC34C()
{
  result = qword_1ECBE8C58;
  if (!qword_1ECBE8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C58);
  }

  return result;
}

unint64_t sub_1DABEC3A4()
{
  result = qword_1EE123548;
  if (!qword_1EE123548)
  {
    type metadata accessor for SymbolEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123548);
  }

  return result;
}

uint64_t sub_1DABEC3FC(uint64_t a1, uint64_t a2)
{
  v2[56] = a1;
  v2[57] = a2;
  v3 = *(type metadata accessor for SymbolEntity() - 8);
  v2[58] = v3;
  v4 = *(v3 + 64) + 15;
  v2[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DABEC4B8, 0, 0);
}

uint64_t sub_1DABEC4B8()
{
  v1 = *(v0 + 456);
  if (sub_1DACB7304())
  {
    v2 = *(v0 + 448);
    swift_getKeyPath();
    sub_1DAA8E020();
    sub_1DACB7054();

    v3 = *(v0 + 416);
    v12 = *(v0 + 424);
    *(v0 + 480) = v12;
    sub_1DACB6D24();
    v4 = *(v0 + 360);
    v5 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 336), v4);
    *(v0 + 496) = (*(v5 + 144))(v3, v12, v4, v5);
    v6 = *(MEMORY[0x1E69D6B08] + 4);
    v7 = swift_task_alloc();
    *(v0 + 504) = v7;
    *v7 = v0;
    v7[1] = sub_1DABEC654;

    return MEMORY[0x1EEE44EE0](v0 + 288);
  }

  else
  {
    v8 = *(v0 + 472);

    v9 = *(v0 + 8);
    v10 = MEMORY[0x1E69E7CC0];

    return v9(v10);
  }
}

uint64_t sub_1DABEC654()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 496);

    v5 = sub_1DABECC54;
  }

  else
  {
    v6 = *(v2 + 496);

    __swift_destroy_boxed_opaque_existential_1((v2 + 336));
    v5 = sub_1DABEC788;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DABEC788()
{
  v20 = v0;
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = *(v0 + 288);
    v3 = *(v0 + 304);
    v4 = *(v0 + 312);
    v5 = *(v0 + 320);
    v6 = *(v0 + 328);
    v7 = *(v0 + 448);
    sub_1DACB6D24();
    v8 = *(v0 + 400);
    v9 = *(v0 + 408);
    __swift_project_boxed_opaque_existential_1((v0 + 376), v8);
    v18[0] = v2;
    v18[1] = v1;
    v18[2] = v3;
    v18[3] = v4;
    v18[4] = v5;
    v19 = v6;
    *(v0 + 512) = (*(v9 + 112))(v18, v8, v9);
    sub_1DAA75E60(v2, v1);
    v10 = *(MEMORY[0x1E69D6B08] + 4);
    v11 = swift_task_alloc();
    *(v0 + 520) = v11;
    *v11 = v0;
    v11[1] = sub_1DABEC940;

    return MEMORY[0x1EEE44EE0](v0 + 440);
  }

  else
  {
    v12 = *(v0 + 480);
    v13 = *(v0 + 488);

    v14 = *(v0 + 472);

    v15 = *(v0 + 8);
    v16 = MEMORY[0x1E69E7CC0];

    return v15(v16);
  }
}

uint64_t sub_1DABEC940()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 512);

    v5 = sub_1DABECCD8;
  }

  else
  {
    v6 = *(v2 + 512);

    __swift_destroy_boxed_opaque_existential_1((v2 + 376));
    v5 = sub_1DABECA74;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DABECA74()
{
  v32 = v0;
  v1 = *(v0 + 440);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 464);
    v29 = MEMORY[0x1E69E7CC0];
    sub_1DAB25CC8(0, v2, 0);
    v4 = v29;
    v5 = v2 - 1;
    for (i = 32; ; i += 136)
    {
      v7 = *(v0 + 472);
      *(v0 + 16) = *(v1 + i);
      v8 = *(v1 + i + 64);
      v10 = *(v1 + i + 16);
      v9 = *(v1 + i + 32);
      *(v0 + 64) = *(v1 + i + 48);
      *(v0 + 80) = v8;
      *(v0 + 32) = v10;
      *(v0 + 48) = v9;
      v12 = *(v1 + i + 96);
      v11 = *(v1 + i + 112);
      v13 = *(v1 + i + 80);
      *(v0 + 144) = *(v1 + i + 128);
      *(v0 + 112) = v12;
      *(v0 + 128) = v11;
      *(v0 + 96) = v13;
      v14 = *(v1 + i + 112);
      v30[6] = *(v1 + i + 96);
      v30[7] = v14;
      v31 = *(v1 + i + 128);
      v15 = *(v1 + i + 48);
      v30[2] = *(v1 + i + 32);
      v30[3] = v15;
      v16 = *(v1 + i + 80);
      v30[4] = *(v1 + i + 64);
      v30[5] = v16;
      v17 = *(v1 + i + 16);
      v30[0] = *(v1 + i);
      v30[1] = v17;
      sub_1DAA806E4(v0 + 16, v0 + 152);
      SymbolEntity.init(from:)(v30, v7);
      v19 = *(v29 + 16);
      v18 = *(v29 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DAB25CC8(v18 > 1, v19 + 1, 1);
      }

      v20 = *(v0 + 472);
      *(v29 + 16) = v19 + 1;
      sub_1DAAF5AA4(v20, v29 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19);
      if (!v5)
      {
        break;
      }

      --v5;
    }

    v22 = *(v0 + 480);
    v21 = *(v0 + 488);
  }

  else
  {
    v24 = *(v0 + 480);
    v23 = *(v0 + 488);
    v25 = *(v0 + 440);

    v4 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v0 + 472);

  v27 = *(v0 + 8);

  return v27(v4);
}

uint64_t sub_1DABECC54()
{
  v1 = v0[60];
  v2 = v0[61];

  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  v3 = v0[59];

  v4 = v0[1];
  v5 = MEMORY[0x1E69E7CC0];

  return v4(v5);
}

uint64_t sub_1DABECCD8()
{
  v1 = v0[60];
  v2 = v0[61];

  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  v3 = v0[59];

  v4 = v0[1];
  v5 = MEMORY[0x1E69E7CC0];

  return v4(v5);
}

uint64_t sub_1DABECD5C(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_1DAAFF1F4;

  return sub_1DABEC3FC(v3, v4);
}

id sub_1DABECEB4(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1DAA492B4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB92F4();
  v14 = [a1 decodeObjectForKey_];

  if (v14)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (!*(&v23 + 1))
  {

    sub_1DAB0826C(v24, sub_1DAADFABC);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_8;
  }

  v15 = swift_dynamicCast();
  (*(v9 + 56))(v7, v15 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

LABEL_8:
    sub_1DAB0826C(v7, sub_1DAA492B4);
    v16 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v17 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v19 = *(v9 + 32);
  v19(v12, v7, v8);
  v19(&v1[OBJC_IVAR___SCUpdateAppLaunchUpsellLastSeenDateCommand_appLaunchUpsellLastSeenDate], v12, v8);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v21, sel_init);

  return v20;
}

uint64_t sub_1DABED28C(void *a1, uint64_t a2)
{
  v3 = [a1 encryptedValues];
  swift_getObjectType();
  v4 = OBJC_IVAR___SCUpdateAppLaunchUpsellLastSeenDateCommand_appLaunchUpsellLastSeenDate;
  v5 = sub_1DACB7CC4();
  v8[3] = v5;
  v8[4] = MEMORY[0x1E695B590];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a2 + v4, v5);
  sub_1DACB9A44();
  return swift_unknownObjectRelease();
}

uint64_t sub_1DABED4B4(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 96) = a1;
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 104) = v5;
  *v5 = v3;
  v5[1] = sub_1DABED5A8;

  return v7(v3 + 16);
}

uint64_t sub_1DABED5A8()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DABED6A4, 0, 0);
}

uint64_t sub_1DABED6A4()
{
  sub_1DACB9794();
  *(v0 + 112) = sub_1DACB9784();
  v2 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DABED738, v2, v1);
}

uint64_t sub_1DABED738()
{
  v1 = *(v0 + 112);

  sub_1DAA4436C(0, &qword_1EE125CC8);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_1DACB8254();
  if (*(v0 + 80))
  {
    sub_1DAA4D460((v0 + 56), *(v0 + 96));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABED810(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 96) = a1;
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 104) = v5;
  *v5 = v3;
  v5[1] = sub_1DABED904;

  return v7(v3 + 16);
}

uint64_t sub_1DABED904()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DABEDA00, 0, 0);
}

uint64_t sub_1DABEDA00()
{
  sub_1DACB9794();
  *(v0 + 112) = sub_1DACB9784();
  v2 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DABEDA94, v2, v1);
}

uint64_t sub_1DABEDA94()
{
  v1 = *(v0 + 112);

  sub_1DAA4436C(0, &qword_1EE125FE0);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_1DACB8254();
  if (*(v0 + 80))
  {
    sub_1DAA4D460((v0 + 56), *(v0 + 96));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABEDB6C(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 96) = a1;
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 104) = v5;
  *v5 = v3;
  v5[1] = sub_1DABEDC60;

  return v7(v3 + 16);
}

uint64_t sub_1DABEDC60()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DABEDD5C, 0, 0);
}

uint64_t sub_1DABEDD5C()
{
  sub_1DACB9794();
  *(v0 + 112) = sub_1DACB9784();
  v2 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DABEDDF0, v2, v1);
}

uint64_t sub_1DABEDDF0()
{
  v1 = *(v0 + 112);

  sub_1DAA4436C(0, &qword_1EE123948);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_1DACB8254();
  if (*(v0 + 80))
  {
    sub_1DAA4D460((v0 + 56), *(v0 + 96));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABEDEC8(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 96) = a1;
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 104) = v5;
  *v5 = v3;
  v5[1] = sub_1DABEDFBC;

  return v7(v3 + 16);
}

uint64_t sub_1DABEDFBC()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DABEE0B8, 0, 0);
}

uint64_t sub_1DABEE0B8()
{
  sub_1DACB9794();
  *(v0 + 112) = sub_1DACB9784();
  v2 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DABEE14C, v2, v1);
}

uint64_t sub_1DABEE14C()
{
  v1 = *(v0 + 112);

  sub_1DAA4436C(0, &qword_1EE125E40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_1DACB8254();
  if (*(v0 + 80))
  {
    sub_1DAA4D460((v0 + 56), *(v0 + 96));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABEE224(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 96) = a1;
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 104) = v5;
  *v5 = v3;
  v5[1] = sub_1DABEE318;

  return v7(v3 + 16);
}

uint64_t sub_1DABEE318()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DABEE414, 0, 0);
}

uint64_t sub_1DABEE414()
{
  sub_1DACB9794();
  *(v0 + 112) = sub_1DACB9784();
  v2 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DABEE4A8, v2, v1);
}

uint64_t sub_1DABEE4A8()
{
  v1 = *(v0 + 112);

  sub_1DAA4436C(0, &unk_1EE125A10);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_1DACB8254();
  if (*(v0 + 80))
  {
    sub_1DAA4D460((v0 + 56), *(v0 + 96));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABEE580(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 96) = a1;
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 104) = v5;
  *v5 = v3;
  v5[1] = sub_1DABEE674;

  return v7(v3 + 16);
}

uint64_t sub_1DABEE674()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DABEE770, 0, 0);
}

uint64_t sub_1DABEE770()
{
  sub_1DACB9794();
  *(v0 + 112) = sub_1DACB9784();
  v2 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DABEE804, v2, v1);
}

uint64_t sub_1DABEE804()
{
  v1 = *(v0 + 112);

  sub_1DAA4436C(0, qword_1EE125F28);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_1DACB8254();
  if (*(v0 + 80))
  {
    sub_1DAA4D460((v0 + 56), *(v0 + 96));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABEE8DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAA9A3AC;

  return sub_1DABEE580(a1, v4, v5);
}

uint64_t sub_1DABEE990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAA9A3AC;

  return sub_1DABEE224(a1, v4, v5);
}

uint64_t sub_1DABEEA44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAA9A3AC;

  return sub_1DABEDEC8(a1, v4, v5);
}

uint64_t sub_1DABEEAF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAA9A3AC;

  return sub_1DABEDB6C(a1, v4, v5);
}

uint64_t sub_1DABEEBAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAA9A3AC;

  return sub_1DABED810(a1, v4, v5);
}

uint64_t sub_1DABEEC60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAA94754;

  return sub_1DABED4B4(a1, v4, v5);
}

uint64_t YahooHeadline.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DACB7AB4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t YahooHeadline.title.getter()
{
  v1 = (v0 + *(type metadata accessor for YahooHeadline() + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_1DACB71E4();
  return v2;
}

uint64_t type metadata accessor for YahooHeadline()
{
  result = qword_1ECBE8C60;
  if (!qword_1ECBE8C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t YahooHeadline.summary.getter()
{
  v1 = (v0 + *(type metadata accessor for YahooHeadline() + 24));
  v2 = *v1;
  v3 = v1[1];
  sub_1DACB71E4();
  return v2;
}

uint64_t YahooHeadline.source.getter()
{
  v1 = (v0 + *(type metadata accessor for YahooHeadline() + 28));
  v2 = *v1;
  v3 = v1[1];
  sub_1DACB71E4();
  return v2;
}

uint64_t YahooHeadline.publishDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YahooHeadline() + 32);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YahooHeadline.relatedSymbol.getter()
{
  v1 = (v0 + *(type metadata accessor for YahooHeadline() + 36));
  v2 = *v1;
  v3 = v1[1];
  sub_1DACB71E4();
  return v2;
}

void sub_1DABEEF6C()
{
  sub_1DACB7AB4();
  if (v0 <= 0x3F)
  {
    sub_1DAB33850();
    if (v1 <= 0x3F)
    {
      sub_1DACB7CC4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1DABEF01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DABEF040, 0, 0);
}

uint64_t sub_1DABEF040()
{
  v1 = v0[5];
  v0[6] = (*(v0[4] + 24))(v0[3]);
  v2 = *(MEMORY[0x1E69D6B08] + 4);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1DABEF0FC;
  v4 = v0[2];

  return MEMORY[0x1EEE44EE0](v4);
}

uint64_t sub_1DABEF0FC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DABEF238, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DABEF238()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1DABEF2B4()
{
  [objc_allocWithZone(MEMORY[0x1E69B51F0]) init];
  sub_1DAA97008(0, &qword_1EE11FEA0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DABEF334()
{
  sub_1DABEF3C0();
  swift_allocError();
  sub_1DAA984E0(0, &qword_1ECBE8C80, MEMORY[0x1E69D6980], MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8AD4();
}

unint64_t sub_1DABEF3C0()
{
  result = qword_1ECBE8C78;
  if (!qword_1ECBE8C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C78);
  }

  return result;
}

uint64_t sub_1DABEF42C()
{
  [objc_allocWithZone(MEMORY[0x1E69B51F0]) init];
  sub_1DAA97008(0, &qword_1EE11FEA0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DABEF4AC(uint64_t a1)
{
  *(a1 + 8) = sub_1DAA5CD90(&qword_1EE1267A8, type metadata accessor for EmptyNewsUserProfileProvider);
  result = sub_1DAA5CD90(&qword_1EE1267B0, type metadata accessor for EmptyNewsUserProfileProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DABEF554()
{
  sub_1DABEF3C0();
  swift_allocError();
  sub_1DAA984E0(0, &qword_1ECBE8C80, MEMORY[0x1E69D6980], MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8AD4();
}

void sub_1DABEF620(void *a1)
{
  sub_1DAA984E0(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACC2610;
  v3 = [a1 subscribedTagIDs];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_1DACB9804();

  v6 = *(v5 + 16);

  v7 = MEMORY[0x1E69E6530];
  v8 = MEMORY[0x1E69E65A8];
  *(v2 + 56) = MEMORY[0x1E69E6530];
  *(v2 + 64) = v8;
  *(v2 + 32) = v6;
  v9 = [a1 autoFavoriteTagIDs];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = sub_1DACB9804();

  v12 = *(v11 + 16);

  *(v2 + 96) = v7;
  *(v2 + 104) = v8;
  *(v2 + 72) = v12;
  v13 = [a1 mutedTagIDs];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = sub_1DACB9804();

  v16 = *(v15 + 16);

  *(v2 + 136) = v7;
  *(v2 + 144) = v8;
  *(v2 + 112) = v16;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v17 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();
}

uint64_t sub_1DABEF884()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1DABEF8E0()
{
  result = qword_1ECBE8C90;
  if (!qword_1ECBE8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8C90);
  }

  return result;
}

void sub_1DABEF934(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 16);
  v8 = [v7 subscriptionList];
  v9 = [v8 subscribedTagIDs];

  if (!v9)
  {
    __break(1u);
    goto LABEL_25;
  }

  v10 = sub_1DACB9804();

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_1DAA7D2EC(*(v10 + 16), 0);
    v13 = sub_1DAB05C50(v33, v12 + 4, v11, v10);
    sub_1DAA54B38();
    if (v13 == v11)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v14 = [v7 subscriptionList];
  v15 = [v14 mutedTagIDs];

  if (!v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = sub_1DACB9804();

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = sub_1DAA7D2EC(*(v16 + 16), 0);
    v19 = sub_1DAB05C50(v33, v18 + 4, v17, v16);
    sub_1DAA54B38();
    if (v19 == v17)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v20 = [v7 subscriptionList];
  v21 = [v20 autoFavoriteTagIDs];

  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = sub_1DACB9804();

  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = sub_1DAA7D2EC(*(v22 + 16), 0);
    v25 = sub_1DAB05C50(v33, v24 + 4, v23, v22);
    sub_1DAA54B38();
    if (v25 == v23)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v26 = [*(a5 + 24) allPurchasedTagIDs];
  if (!v26)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = sub_1DACB9804();

  v29 = *(v28 + 16);
  if (!v29)
  {
LABEL_20:

    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v30 = sub_1DAA7D2EC(*(v28 + 16), 0);
  v31 = sub_1DAB05C50(v33, v30 + 4, v29, v28);
  sub_1DAA54B38();
  if (v31 != v29)
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  v32 = [*(a5 + 32) cachedSubscription];
  v33[0] = v12;
  v33[1] = v18;
  v33[2] = v24;
  v33[3] = v30;
  v34 = v32;
  a1(v33);
}

uint64_t sub_1DABEFCBC()
{
  sub_1DAA97008(0, &qword_1EE11FEA0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DABEFD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v8 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  v9 = [*(a5 + 16) privatePushNotificationHandler];
  v10 = sub_1DACB9114();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v13[4] = sub_1DABF02F0;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DABF01D8;
  v13[3] = &block_descriptor_42;
  v12 = _Block_copy(v13);
  sub_1DACB71F4();

  [v9 handleRemoteNotification:v10 completionHandler:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

uint64_t sub_1DABEFEBC(void *a1, void (*a2)(char *))
{
  v4 = sub_1DACB88B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && [a1 wasHandled])
  {
    sub_1DAA984E0(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DACC1D20;
    v21 = 0;
    v22 = 0xE000000000000000;
    v10 = [a1 recordZoneIDs];
    if (v10)
    {
      v11 = v10;
      sub_1DAA420F4(0, &qword_1ECBE8CB0, 0x1E695BA90);
      sub_1DABF036C();
      v12 = sub_1DACB9804();
    }

    else
    {
      v12 = 0;
    }

    v20[1] = v12;
    sub_1DAA984E0(0, &qword_1ECBE8CA0, sub_1DABF02F8, MEMORY[0x1E69E6720]);
    v15 = sub_1DACB9394();
    MEMORY[0x1E1276F20](v15);

    v16 = v21;
    v17 = v22;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1DAA443C8();
    *(v9 + 32) = v16;
    *(v9 + 40) = v17;
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v18 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v14 = MEMORY[0x1E69D6978];
  }

  else
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v13 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v14 = MEMORY[0x1E69D6970];
  }

  (*(v5 + 104))(v8, *v14, v4);
  a2(v8);
  return (*(v5 + 8))(v8, v4);
}

void sub_1DABF01D8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1DACB71F4();
  v5 = a2;
  v4(a2);
}

uint64_t sub_1DABF0244()
{
  sub_1DAA984E0(0, &qword_1ECBE8C80, MEMORY[0x1E69D6980], MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DABF02F8()
{
  if (!qword_1ECBE8CA8)
  {
    sub_1DAA420F4(255, &qword_1ECBE8CB0, 0x1E695BA90);
    sub_1DABF036C();
    v0 = sub_1DACB9834();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8CA8);
    }
  }
}

unint64_t sub_1DABF036C()
{
  result = qword_1ECBE8CB8;
  if (!qword_1ECBE8CB8)
  {
    sub_1DAA420F4(255, &qword_1ECBE8CB0, 0x1E695BA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8CB8);
  }

  return result;
}

uint64_t StocksKitClientConfig.clientBundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t StocksKitClientConfig.stocksDataServiceEndpointVersion.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABF045C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000018;
  v3 = *a1;
  v4 = 0x80000001DACE1DB0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000020;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001DACE1DB0;
  }

  else
  {
    v6 = 0x80000001DACE1DD0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7542746E65696C63;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEE004449656C646ELL;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000020;
    v4 = 0x80000001DACE1DD0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x7542746E65696C63;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE004449656C646ELL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DABF0544()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABF05F8()
{
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DABF0698()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABF0748@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DABF1430();
  *a2 = result;
  return result;
}

void sub_1DABF0778(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE004449656C646ELL;
  v4 = 0xD000000000000018;
  v5 = 0x80000001DACE1DB0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000020;
    v5 = 0x80000001DACE1DD0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x7542746E65696C63;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DABF07E8()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7542746E65696C63;
  }
}

uint64_t sub_1DABF0854@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DABF1430();
  *a1 = result;
  return result;
}

uint64_t sub_1DABF087C(uint64_t a1)
{
  v2 = sub_1DABF0EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF08B8(uint64_t a1)
{
  v2 = sub_1DABF0EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StocksKitClientConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABF12A4(0, &qword_1ECBE8CC0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v37 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABF0EC8();
  sub_1DACBA2F4();
  if (!v2)
  {
    v48 = MEMORY[0x1E69E7CC0];
    v47 = 0;
    sub_1DACB9F84();
    v12 = v46;
    v41 = v45;
    if (v46)
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v42 = 0;
      swift_beginAccess();
      v13 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1DAA9A3B0((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[16 * v15];
      strcpy(v16 + 32, "clientBundleID");
      v16[47] = -18;
      v48 = v13;
      swift_endAccess();
      v12 = v42;
    }

    LOBYTE(v45) = 1;
    sub_1DACB9F84();
    v42 = v12;
    LODWORD(v12) = v47;
    if (v47 == 2)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v40 = v18 + 1;
        v35 = sub_1DAA9A3B0((v17 > 1), v18 + 1, 1, v13);
        v19 = v40;
        v13 = v35;
      }

      *(v13 + 2) = v19;
      v20 = &v13[16 * v18];
      *(v20 + 4) = 0xD000000000000018;
      *(v20 + 5) = 0x80000001DACE1DB0;
      v48 = v13;
      swift_endAccess();
    }

    LOBYTE(v45) = 2;
    sub_1DACB9F84();
    if (v44)
    {
      v40 = v44;
      v39 = v43;
      v21 = *(v13 + 2);
      if (v42)
      {
        v22 = v41;
      }

      else
      {
        v22 = 0;
      }

      v23 = 0xE000000000000000;
      if (v42)
      {
        v23 = v42;
      }

      v41 = v22;
      v42 = v23;
      if (!v21)
      {
        sub_1DAA41DCC();
        v31 = sub_1DACB9AD4();
        sub_1DACB9914();
        sub_1DACB8C64();
        goto LABEL_33;
      }

      v38 = v12;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v25 = *(v13 + 2);
      v24 = *(v13 + 3);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v40 = v25 + 1;
        v36 = sub_1DAA9A3B0((v24 > 1), v25 + 1, 1, v13);
        v26 = v40;
        v13 = v36;
      }

      v38 = v12;
      *(v13 + 2) = v26;
      v27 = &v13[16 * v25];
      *(v27 + 4) = 0xD000000000000020;
      *(v27 + 5) = 0x80000001DACE1DD0;
      if (v42)
      {
        v28 = v41;
      }

      else
      {
        v28 = 0;
      }

      v29 = 0xE000000000000000;
      if (v42)
      {
        v29 = v42;
      }

      v41 = v28;
      v42 = v29;
      v39 = 12662;
      v40 = 0xE200000000000000;
    }

    sub_1DAA41D64();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DACC1D20;
    sub_1DAA613E8();
    *(v12 + 56) = v30;
    *(v12 + 64) = sub_1DAAF691C();
    *(v12 + 32) = v13;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v31 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    LOBYTE(v12) = v38;
LABEL_33:

    (*(v7 + 8))(v10, v6);

    v32 = v42;
    *a2 = v41;
    *(a2 + 8) = v32;
    *(a2 + 16) = v12 & 1;
    v33 = v40;
    *(a2 + 24) = v39;
    *(a2 + 32) = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DABF0EC8()
{
  result = qword_1ECBE8CC8;
  if (!qword_1ECBE8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8CC8);
  }

  return result;
}

uint64_t static StocksKitClientConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_1DACBA174();
    result = 0;
    if (v9 & 1) == 0 || ((v2 ^ v5))
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_1DACBA174();
}

uint64_t StocksKitClientConfig.encode(to:)(void *a1)
{
  sub_1DABF12A4(0, &qword_1ECBE8CD0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v16 = *(v1 + 16);
  v11 = v1[3];
  v15[1] = v1[4];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABF0EC8();
  sub_1DACBA304();
  v19 = 0;
  v13 = v15[3];
  sub_1DACBA094();
  if (!v13)
  {
    v18 = 1;
    sub_1DACBA0A4();
    v17 = 2;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DABF11D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_1DACBA174();
    result = 0;
    if (v9 & 1) == 0 || ((v2 ^ v5))
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_1DACBA174();
}

void sub_1DABF12A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABF0EC8();
    v7 = a3(a1, &type metadata for StocksKitClientConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DABF132C()
{
  result = qword_1ECBE8CD8;
  if (!qword_1ECBE8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8CD8);
  }

  return result;
}

unint64_t sub_1DABF1384()
{
  result = qword_1ECBE8CE0;
  if (!qword_1ECBE8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8CE0);
  }

  return result;
}

unint64_t sub_1DABF13DC()
{
  result = qword_1ECBE8CE8;
  if (!qword_1ECBE8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8CE8);
  }

  return result;
}

uint64_t sub_1DABF1430()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DABF160C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1DABF1670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[45] = a3;
  v4[46] = v3;
  v4[44] = a1;
  v5 = sub_1DACB8FB4();
  v4[47] = v5;
  v6 = *(v5 - 8);
  v4[48] = v6;
  v7 = *(v6 + 64) + 15;
  v4[49] = swift_task_alloc();
  v8 = sub_1DACB9004();
  v4[50] = v8;
  v9 = *(v8 - 8);
  v4[51] = v9;
  v10 = *(v9 + 64) + 15;
  v4[52] = swift_task_alloc();
  v11 = sub_1DACB8674();
  v4[53] = v11;
  v12 = *(v11 - 8);
  v4[54] = v12;
  v13 = *(v12 + 64) + 15;
  v4[55] = swift_task_alloc();
  sub_1DABF4804(0, &qword_1EE11DEF0, sub_1DABF2D70, &type metadata for SDSCurrencyResponse, type metadata accessor for SDSBaseOperationResponse);
  v4[56] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[57] = swift_task_alloc();
  v16 = sub_1DACB7CC4();
  v4[58] = v16;
  v17 = *(v16 - 8);
  v4[59] = v17;
  v18 = *(v17 + 64) + 15;
  v4[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DABF18B0, 0, 0);
}

uint64_t sub_1DABF18B0()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v4 = v0[45];
  v5 = __swift_project_boxed_opaque_existential_1((v0[46] + 16), *(v0[46] + 40));
  v6 = sub_1DAA4BDD8(MEMORY[0x1E69E7CC0]);
  v7 = *v5;
  sub_1DACB7CB4();
  v8 = sub_1DABF30F4(0, v6, v1, v4, qword_1EE11EB30, sub_1DABF2D70, &type metadata for SDSCurrencyResponse);
  v0[61] = v8;

  (*(v2 + 8))(v1, v3);
  v9 = (v8 + *((*MEMORY[0x1E69E7D40] & *v8) + qword_1EE13E480 + 16));
  v10 = *v9;
  v11 = v9[1];
  *v9 = sub_1DAB87E70;
  v9[1] = 0;
  sub_1DAA4F910(v10);
  v12 = swift_task_alloc();
  v0[62] = v12;
  *(v12 + 16) = v8;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  v0[63] = v14;
  *v14 = v0;
  v14[1] = sub_1DABF1AAC;
  v16 = v0[56];
  v15 = v0[57];

  return MEMORY[0x1EEE6DE38](v15, 0, 0, 0x286D726F66726570, 0xE900000000000029, sub_1DABF4294, v12, v16);
}

uint64_t sub_1DABF1AAC()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_1DABF2074;
  }

  else
  {
    v3 = sub_1DABF1BC0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DABF1BC0()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 368);
  sub_1DABF470C(0, &qword_1EE11D490, &type metadata for SDSCurrencyResponse, MEMORY[0x1E69D68E0]);
  sub_1DACB8794();
  v3 = *(v2 + 56);
  v4 = *(v3 + 16);
  if (v4)
  {
    v44 = *(v0 + 136);
    v43 = *(v0 + 144);
    v42 = *(v0 + 152);
    v41 = *(v0 + 160);
    v5 = v3 + 32;
    v40 = (*(v0 + 384) + 8);
    v39 = (*(v0 + 408) + 8);
    v6 = *(v0 + 168);
    do
    {
      sub_1DAA4D678(v5, v0 + 304);
      v7 = __swift_project_boxed_opaque_existential_1((v0 + 304), *(v0 + 328));
      v8 = *v7;
      if (!*(*v7 + 24))
      {
        v9 = *(v0 + 392);
        v47 = *(v0 + 400);
        v10 = *(v0 + 376);
        v45 = *(v0 + 416);
        v46 = *(v8 + 128);
        v11 = swift_allocObject();
        v11[2] = v8;
        v11[3] = v44;
        v11[4] = v43;
        v11[5] = v42;
        v11[6] = v41;
        v11[7] = v6;
        *(v0 + 288) = sub_1DABF4330;
        *(v0 + 296) = v11;
        *(v0 + 256) = MEMORY[0x1E69E9820];
        *(v0 + 264) = 1107296256;
        *(v0 + 272) = sub_1DAA5796C;
        *(v0 + 280) = &block_descriptor_26;
        v12 = _Block_copy((v0 + 256));
        sub_1DACB71F4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB8FD4();
        *(v0 + 344) = MEMORY[0x1E69E7CC0];
        sub_1DAA66A50(&qword_1EE124040, MEMORY[0x1E69E7F60]);
        sub_1DAA667F4(0);
        sub_1DAA66A50(&qword_1EE123EB0, sub_1DAA667F4);
        sub_1DACB9BB4();
        MEMORY[0x1E1277440](0, v45, v9, v12);
        _Block_release(v12);
        (*v40)(v9, v10);
        (*v39)(v45, v47);
        v13 = *(v0 + 296);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 304));
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  v14 = *(v0 + 456);
  sub_1DABD9F04(v0 + 96);
  sub_1DACB8794();
  v15 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 64) = v15;
  *(v0 + 80) = *(v0 + 240);
  v16 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v16;
  v17 = sub_1DACB87A4();
  if (v17)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v18 = *(v0 + 432);
      v19 = *(v0 + 440);
      v20 = *(v0 + 424);
      sub_1DACB8664();
      v17 = sub_1DACB8654();
      v22 = v21;
      v24 = v23;
      (*(v18 + 8))(v19, v20);
      goto LABEL_11;
    }

    v17 = 0;
  }

  v22 = 0;
  v24 = 1;
LABEL_11:
  v25 = *(v0 + 512);
  sub_1DABF2124(v0 + 16, v17, v22, v24 & 1, *(v0 + 352));
  v27 = *(v0 + 488);
  v26 = *(v0 + 496);
  if (v25)
  {
    sub_1DABF429C(*(v0 + 456));

    v28 = *(v0 + 480);
    v29 = *(v0 + 456);
    v30 = *(v0 + 440);
    v31 = *(v0 + 416);
    v32 = *(v0 + 392);
  }

  else
  {
    v34 = *(v0 + 480);
    v35 = *(v0 + 440);
    v36 = *(v0 + 416);
    v37 = *(v0 + 392);
    sub_1DABF429C(*(v0 + 456));
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1DABF2074()
{
  v2 = v0[61];
  v1 = v0[62];

  v3 = v0[64];
  v4 = v0[60];
  v5 = v0[57];
  v6 = v0[55];
  v7 = v0[52];
  v8 = v0[49];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DABF2124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  v92 = a4;
  v91[2] = a3;
  v91[1] = a2;
  v93 = a5;
  v123 = sub_1DACB7BD4();
  v129 = *(v123 - 8);
  v6 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v122 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1DACB7BB4();
  v130 = *(v121 - 8);
  v8 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v10 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1DACB7B94();
  v128 = *(v119 - 8);
  v11 = v128;
  v12 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v14 = v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1DACB7BA4();
  v127 = *(v116 - 8);
  v15 = v127;
  v16 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v18 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v18;
  v120 = sub_1DACB7BE4();
  v126 = *(v120 - 8);
  v19 = *(v126 + 64);
  v20 = MEMORY[0x1EEE9AC00](v120);
  v110 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v109 = v91 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v117 = v91 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = v91 - v26;
  v113 = sub_1DACB7CC4();
  v112 = *(v113 - 8);
  v28 = *(v112 + 64);
  v29 = MEMORY[0x1EEE9AC00](v113);
  v94 = v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v114 = v91 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v125 = v91 - v33;
  v124 = a1;
  v34 = *(a1 + 24);
  v35 = *(a1 + 32);
  v131 = v34;
  v132 = v35;
  v36 = *(v15 + 104);
  LODWORD(v107) = *MEMORY[0x1E6969360];
  v108 = (v15 + 104);
  v106 = v36;
  (v36)(v18);
  v37 = *(v11 + 104);
  v104 = *MEMORY[0x1E6969358];
  v105 = v11 + 104;
  v103 = v37;
  v37(v14);
  v38 = v130;
  v39 = *(v130 + 104);
  v101 = *MEMORY[0x1E6969370];
  v40 = v121;
  v102 = v130 + 104;
  v100 = v39;
  v39(v10);
  v41 = v129;
  v42 = *(v129 + 104);
  v43 = v122;
  v98 = *MEMORY[0x1E6969380];
  v44 = v123;
  v99 = v129 + 104;
  v97 = v42;
  v42(v122);
  sub_1DACB71E4();
  v45 = v115;
  sub_1DACB8C54();
  v46 = v41 + 8;
  v47 = *(v41 + 8);
  v129 = v46;
  v47(v43, v44);
  v48 = *(v38 + 8);
  v111 = v10;
  v130 = v38 + 8;
  v48(v10, v40);
  v49 = *(v128 + 8);
  v50 = v14;
  v128 += 8;
  v96 = v49;
  v49(v14, v119);
  v51 = *(v127 + 8);
  v52 = v116;
  v127 += 8;
  v51(v45);
  sub_1DACB7BC4();
  v53 = *(v126 + 8);
  v126 += 8;
  v95 = v53;
  v53(v27, v120);
  v117 = sub_1DAA66A50(&qword_1EE125290, MEMORY[0x1E69693A0]);
  v54 = v118;
  sub_1DACB7CD4();
  if (v54)
  {
    return sub_1DABD9F04(v124);
  }

  v56 = *(v124 + 8);
  v57 = *(v124 + 16);
  v118 = 0;
  v131 = v56;
  v132 = v57;
  v91[0] = v47;
  v58 = v45;
  v59 = v107;
  v107 = v48;
  v60 = v52;
  v106(v45, v59, v52);
  v61 = v119;
  v103(v50, v104, v119);
  v108 = v51;
  v62 = v111;
  v63 = v121;
  v100(v111, v101, v121);
  v64 = v122;
  v65 = v123;
  v97(v122, v98, v123);
  sub_1DACB71E4();
  v66 = v109;
  sub_1DACB8C54();
  (v91[0])(v64, v65);
  v107(v62, v63);
  v96(v50, v61);
  v108(v58, v60);
  sub_1DACB7BC4();
  v95(v66, v120);
  v67 = v118;
  sub_1DACB7CD4();
  v68 = v124;
  v118 = v67;
  if (v67)
  {
    sub_1DABD9F04(v124);
    return (*(v112 + 8))(v125, v113);
  }

  else
  {
    v69 = v113;
    v70 = v112;
    v71 = v125;
    if ((v92 & 1) == 0)
    {
      sub_1DACBA324();
    }

    v72 = v93;
    sub_1DACB7BF4();
    v73 = *v68;
    v74 = *(*v68 + 16);
    v75 = MEMORY[0x1E69E7CC0];
    if (v74)
    {
      v131 = MEMORY[0x1E69E7CC0];
      sub_1DAB25D78(0, v74, 0);
      v75 = v131;
      v76 = (v73 + 64);
      do
      {
        v78 = *(v76 - 4);
        v77 = *(v76 - 3);
        v80 = *(v76 - 2);
        v79 = *(v76 - 1);
        v81 = *v76;
        v131 = v75;
        v83 = *(v75 + 16);
        v82 = *(v75 + 24);
        sub_1DACB71E4();
        sub_1DACB71E4();
        if (v83 >= v82 >> 1)
        {
          sub_1DAB25D78((v82 > 1), v83 + 1, 1);
          v75 = v131;
        }

        *(v75 + 16) = v83 + 1;
        v84 = (v75 + 40 * v83);
        v84[4] = v78;
        v84[5] = v77;
        v84[6] = v80;
        v84[7] = v79;
        v84[8] = v81;
        v76 += 7;
        --v74;
      }

      while (v74);
      v72 = v93;
      v68 = v124;
      v69 = v113;
      v70 = v112;
      v71 = v125;
    }

    v85 = type metadata accessor for CurrencyResponse();
    v86 = *(v70 + 16);
    v86(&v72[v85[5]], v71, v69);
    v87 = v94;
    v86(&v72[v85[6]], v94, v69);
    v88 = *(v68 + 56);
    v134 = *(v68 + 72);
    v133[0] = *(v68 + 40);
    v133[1] = v88;
    v137 = v133[0];
    v135 = *(v68 + 64);
    v136 = v88;
    v89 = v85[7];
    sub_1DAAA1344(&v137, &v131);
    sub_1DABF456C(&v136, &v131, sub_1DAB5395C);
    sub_1DABF433C(&v135, &v131);
    sub_1DAB51960(v133, &v72[v89]);
    sub_1DABD9F04(v68);
    v90 = *(v70 + 8);
    v90(v87, v69);
    v90(v114, v69);
    result = (v90)(v125, v69);
    *v72 = v75;
  }

  return result;
}

uint64_t sub_1DABF2CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DAA94754;

  return sub_1DABF1670(a1, v8, a3);
}

unint64_t sub_1DABF2D70()
{
  result = qword_1EE11E670;
  if (!qword_1EE11E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E670);
  }

  return result;
}

uint64_t sub_1DABF2DC4(uint64_t a1)
{
  sub_1DABF43C4();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_1DACB8304();
  sub_1DACB82E4();
  sub_1DACB8294();
  sub_1DACB82C4();
}

uint64_t sub_1DABF2F20(uint64_t a1)
{
  sub_1DABF4804(0, &qword_1EE11DEF0, sub_1DABF2D70, &type metadata for SDSCurrencyResponse, type metadata accessor for SDSBaseOperationResponse);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  sub_1DABF44DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DABF456C(a1, v12, sub_1DABF44DC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14[1] = *v12;
    sub_1DABF43C4();
    return sub_1DACB9754();
  }

  else
  {
    sub_1DABF45D4(v12, v8);
    sub_1DABF4670(v8, v6);
    sub_1DABF43C4();
    sub_1DACB9764();
    return sub_1DABF429C(v8);
  }
}

id sub_1DABF30F4(int a1, uint64_t a2, void (*a3)(void, void, void), void (*a4)(void, void, void), unint64_t *a5, uint64_t (*a6)(void), objc_class *a7)
{
  v121 = a7;
  v120 = a6;
  v119 = a5;
  v8 = v7;
  v117 = a4;
  v116 = a3;
  LODWORD(v123) = a1;
  v10 = sub_1DACB8204();
  v133 = *(v10 - 8);
  v134 = v10;
  v11 = *(v133 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v115 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v130 = &v108 - v14;
  v132 = sub_1DACB7CC4();
  v15 = *(v132 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v132);
  v114 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v129 = &v108 - v19;
  v126 = sub_1DACB7AB4();
  v124 = *(v126 - 8);
  v20 = *(v124 + 64);
  v21 = MEMORY[0x1EEE9AC00](v126);
  v112 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v127 = &v108 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v128 = &v108 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v113 = &v108 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v131 = &v108 - v29;
  v30 = type metadata accessor for AppConfiguration(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v34 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v108 - v35;
  v37 = v7[16];
  v38 = v7[17];
  __swift_project_boxed_opaque_existential_1(v7 + 13, v37);
  v39 = *(v38 + 8);
  sub_1DACB71E4();
  v39(v37, v38);
  v40 = *(v36 + 530);
  sub_1DACB71E4();
  sub_1DAA640AC(v36);
  v138 = v40;
  sub_1DABF470C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAA587CC();
  v41 = sub_1DACB9214();
  v43 = v42;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v138 = a2;
  sub_1DACA53DC(v41, v43, 0x6E656D7461657274, 0xEC00000073444974, isUniquelyReferenced_nonNull_native);
  v122 = v138;
  v45 = v7[16];
  v46 = v7[17];
  __swift_project_boxed_opaque_existential_1(v8 + 13, v8[16]);
  (*(v46 + 8))(v45, v46);
  v47 = [objc_opt_self() mainBundle];
  v48 = [v47 bundleIdentifier];

  if (v48)
  {
    v49 = sub_1DACB9324();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v52 = 0x73752D6E65;
  sub_1DAA8B654(v49, v51, &v138);

  sub_1DAA640AC(v34);
  v125 = v15;
  if (!v139)
  {
    v60 = v8[2];
    sub_1DACB8BD4();
    v61 = [objc_opt_self() sharedPreferences];
    v62 = v61;
    if (v61)
    {
      v63 = [v61 stocksLanguageCode];
      if (v63)
      {
        v64 = v63;
        v118 = sub_1DACB9324();
        v131 = v65;
      }

      else
      {
        v118 = 0x73752D6E65;
        v131 = 0xE500000000000000;
      }

      v89 = [v62 stocksCountryCode];
      if (v89)
      {
        v90 = v89;
        v91 = sub_1DACB9324();
        v128 = v92;

LABEL_22:
        sub_1DAA4D678((v8 + 3), &v138);
        sub_1DAA4D678((v8 + 8), &v137);
        v129 = *(v15 + 16);
        (v129)(v114, v116, v132);
        v130 = *(v133 + 16);
        (v130)(v115, v117, v134);
        sub_1DABF4804(0, v119, v120, v121, type metadata accessor for SDSBaseOperation);
        v121 = v93;
        v94 = objc_allocWithZone(v93);
        v95 = MEMORY[0x1E69E7D40];
        v96 = (v94 + *((*MEMORY[0x1E69E7D40] & *v94) + qword_1EE13E480 + 16));
        *v96 = 0;
        v96[1] = 0;
        *(v94 + *((*v95 & *v94) + qword_1EE13E480 + 88)) = MEMORY[0x1E69E7CC0];
        *(v94 + *((*v95 & *v94) + qword_1EE13E480 + 24)) = v123;
        v97 = v112;
        sub_1DACB7A24();

        v98 = v124;
        v99 = v126;
        (*(v124 + 32))(v94 + *((*v95 & *v94) + qword_1EE13E480 + 32), v97, v126);
        *(v94 + *((*v95 & *v94) + qword_1EE13E480 + 40)) = v122;
        v100 = (v94 + *((*v95 & *v94) + qword_1EE13E480 + 48));
        v101 = v131;
        *v100 = v118;
        v100[1] = v101;
        v102 = v128;
        v100[2] = v91;
        v100[3] = v102;
        sub_1DAA4D678(&v138, v94 + *((*v95 & *v94) + qword_1EE13E480 + 56));
        sub_1DAA4D678(&v137, v94 + *((*v95 & *v94) + qword_1EE13E480 + 64));
        v103 = v114;
        v104 = v132;
        (v129)(v94 + *((*v95 & *v94) + qword_1EE13E480 + 72), v114, v132);
        v105 = v115;
        v106 = v134;
        (v130)(v94 + *((*v95 & *v94) + qword_1EE13E480 + 80), v115, v134);
        v136.receiver = v94;
        v136.super_class = v121;
        v88 = objc_msgSendSuper2(&v136, sel_init);
        (*(v133 + 8))(v105, v106);
        (*(v125 + 8))(v103, v104);
        __swift_destroy_boxed_opaque_existential_1(&v137);
        __swift_destroy_boxed_opaque_existential_1(&v138);
        (*(v98 + 8))(v127, v99);
        return v88;
      }
    }

    else
    {
      v118 = 0x73752D6E65;
      v131 = 0xE500000000000000;
    }

    v128 = 0xE200000000000000;
    v91 = 21333;
    goto LABEL_22;
  }

  v115 = v139;
  v111 = v138;
  v53 = v141;
  v114 = v140;
  v127 = v142;
  v54 = v8[2];
  sub_1DACB8BD4();
  v55 = [objc_opt_self() sharedPreferences];
  v56 = v55;
  if (!v55)
  {
    v110 = 0xE500000000000000;
LABEL_15:
    v118 = v52;

    v109 = 0xE200000000000000;
    v108 = 21333;
    goto LABEL_16;
  }

  v57 = [v55 stocksLanguageCode];
  if (v57)
  {
    v58 = v57;
    v52 = sub_1DACB9324();
    v110 = v59;
  }

  else
  {
    v110 = 0xE500000000000000;
  }

  v66 = [v56 stocksCountryCode];
  if (!v66)
  {
    goto LABEL_15;
  }

  v118 = v52;
  v67 = v66;
  v108 = sub_1DACB9324();
  v109 = v68;

LABEL_16:
  sub_1DAA4D678((v8 + 3), &v138);
  sub_1DAA4D678((v8 + 8), &v137);
  v69 = v116;
  v116 = *(v15 + 16);
  v116(v129, v69, v132);
  v70 = v117;
  v117 = *(v133 + 16);
  v117(v130, v70, v134);
  sub_1DABF4804(0, v119, v120, v121, type metadata accessor for SDSBaseOperation);
  v121 = v71;
  v72 = objc_allocWithZone(v71);
  v73 = MEMORY[0x1E69E7D40];
  v74 = (v72 + *((*MEMORY[0x1E69E7D40] & *v72) + qword_1EE13E480 + 16));
  *v74 = 0;
  v74[1] = 0;
  *(v72 + *((*v73 & *v72) + qword_1EE13E480 + 88)) = MEMORY[0x1E69E7CC0];
  *(v72 + *((*v73 & *v72) + qword_1EE13E480 + 24)) = v123;
  sub_1DACB7A24();
  v112 = v53;
  v75 = v113;
  v76 = v128;
  sub_1DACB7A24();

  v77 = v124;
  v123 = *(v124 + 8);
  v78 = v76;
  v79 = v126;
  v123(v78, v126);
  (*(v77 + 32))(v72 + *((*v73 & *v72) + qword_1EE13E480 + 32), v75, v79);
  *(v72 + *((*v73 & *v72) + qword_1EE13E480 + 40)) = v122;
  v80 = (v72 + *((*v73 & *v72) + qword_1EE13E480 + 48));
  v81 = v110;
  *v80 = v118;
  v80[1] = v81;
  v82 = v109;
  v80[2] = v108;
  v80[3] = v82;
  sub_1DAA4D678(&v138, v72 + *((*v73 & *v72) + qword_1EE13E480 + 56));
  sub_1DAA4D678(&v137, v72 + *((*v73 & *v72) + qword_1EE13E480 + 64));
  v83 = v129;
  v84 = v132;
  v116(v72 + *((*v73 & *v72) + qword_1EE13E480 + 72), v129, v132);
  v85 = *v73 & *v72;
  v86 = v130;
  v87 = v134;
  v117(v72 + *(v85 + qword_1EE13E480 + 80), v130, v134);
  v135.receiver = v72;
  v135.super_class = v121;
  v88 = objc_msgSendSuper2(&v135, sel_init);
  sub_1DAB326A8(v111, v115);
  (*(v133 + 8))(v86, v87);
  (*(v125 + 8))(v83, v84);
  __swift_destroy_boxed_opaque_existential_1(&v137);
  __swift_destroy_boxed_opaque_existential_1(&v138);
  v123(v131, v79);
  return v88;
}

uint64_t sub_1DABF429C(uint64_t a1)
{
  sub_1DABF4804(0, &qword_1EE11DEF0, sub_1DABF2D70, &type metadata for SDSCurrencyResponse, type metadata accessor for SDSBaseOperationResponse);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DABF433C(uint64_t a1, uint64_t a2)
{
  sub_1DABF470C(0, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DABF43C4()
{
  if (!qword_1EE11D120)
  {
    sub_1DABF4804(255, &qword_1EE11DEF0, sub_1DABF2D70, &type metadata for SDSCurrencyResponse, type metadata accessor for SDSBaseOperationResponse);
    sub_1DABDBA24();
    v0 = sub_1DACB9774();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D120);
    }
  }
}

uint64_t sub_1DABF446C(uint64_t a1)
{
  sub_1DABF43C4();
  v3 = *(*(v2 - 8) + 80);

  return sub_1DABF2F20(a1);
}

void sub_1DABF44DC()
{
  if (!qword_1EE11D460)
  {
    sub_1DABF4804(255, &qword_1EE11DEF0, sub_1DABF2D70, &type metadata for SDSCurrencyResponse, type metadata accessor for SDSBaseOperationResponse);
    v0 = sub_1DACB89E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D460);
    }
  }
}

uint64_t sub_1DABF456C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DABF45D4(uint64_t a1, uint64_t a2)
{
  sub_1DABF4804(0, &qword_1EE11DEF0, sub_1DABF2D70, &type metadata for SDSCurrencyResponse, type metadata accessor for SDSBaseOperationResponse);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DABF4670(uint64_t a1, uint64_t a2)
{
  sub_1DABF4804(0, &qword_1EE11DEF0, sub_1DABF2D70, &type metadata for SDSCurrencyResponse, type metadata accessor for SDSBaseOperationResponse);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DABF470C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1DABF475C()
{
  result = qword_1ECBE8CF8;
  if (!qword_1ECBE8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8CF8);
  }

  return result;
}

unint64_t sub_1DABF47B0()
{
  result = qword_1ECBE8D08;
  if (!qword_1ECBE8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D08);
  }

  return result;
}

void sub_1DABF4804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1DABF487C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125908);
  result = sub_1DACB8254();
  if (v9[3])
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, qword_1EE125958);
    result = sub_1DACB8254();
    if (v8[3])
    {
      v7 = type metadata accessor for AppConfigurationManager();
      swift_allocObject();
      result = sub_1DAC17598(v9, v8);
      a2[3] = v7;
      a2[4] = &off_1F568DBB8;
      *a2 = result;
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

uint64_t sub_1DABF498C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppConfigurationStore();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F568DBF8;
  *a1 = result;
  return result;
}

uint64_t sub_1DABF49D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1DACB8234();
  if (v9[0] == 2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v9[0] & 1) == 0)
  {
    sub_1DAA44440(0, &qword_1EE125FE8);
    result = sub_1DACB8254();
    if (v10)
    {
      type metadata accessor for ChartManager();
      swift_allocObject();
      result = sub_1DAC652CC(v9);
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  sub_1DAA44440(0, &qword_1EE125FE8);
  result = sub_1DACB8254();
  if (!v10)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  result = sub_1DACB8224();
  if (result)
  {
    v8 = result;
    type metadata accessor for ChartManager();
    swift_allocObject();
    result = sub_1DAC64D14(v9, v8);
LABEL_8:
    *a2 = result;
    a2[1] = &off_1F5690D78;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DABF4BD0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125F10);
  result = sub_1DACB8254();
  if (v29)
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, qword_1EE125AF8);
    result = sub_1DACB8254();
    v7 = v27;
    if (v27)
    {
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v9 = *(*(v7 - 8) + 64);
      MEMORY[0x1EEE9AC00](v8);
      v11 = (&v25[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v11;
      v25[3] = &type metadata for CurrencyManagerCache;
      v25[4] = &off_1F5692598;
      v25[0] = v13;
      v14 = type metadata accessor for CurrencyManager();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v25, &type metadata for CurrencyManagerCache);
      v19 = *(qword_1F5692578 + 64);
      MEMORY[0x1EEE9AC00](v18);
      v21 = (&v25[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = sub_1DABF7128(&v28, *v21, sub_1DABF4E6C, 0, v17);
      __swift_destroy_boxed_opaque_existential_1(v25);
      result = __swift_destroy_boxed_opaque_existential_1(v26);
      a2[3] = v14;
      a2[4] = &off_1F5687248;
      *a2 = v23;
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

uint64_t sub_1DABF4E70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1DAA46854(0, &qword_1EE11FD80, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_1DACB7AB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA46854(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], v4);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACB8234();
  result = (*(v10 + 48))(v17, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 16))(v13, v17, v9);
    v20 = sub_1DACB8C94();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    sub_1DABF73EC();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_1DACB8534();
    result = (*(v10 + 8))(v17, v9);
    a2[3] = &type metadata for CurrencyManagerCache;
    a2[4] = &off_1F5692598;
    *a2 = v24;
  }

  return result;
}

uint64_t sub_1DABF514C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125E40);
  result = sub_1DACB8254();
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    v7 = __swift_project_boxed_opaque_existential_1(v9, v10);
    a2[3] = v5;
    a2[4] = *(v6 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABF5228@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  v4 = sub_1DACB8224();
  if (v4)
  {
    v5 = v4;
    v6 = type metadata accessor for HeadlineViewingHistory();
    swift_allocObject();
    result = sub_1DAAA1C64(v5);
    a2[3] = v6;
    a2[4] = &off_1F568D570;
    *a2 = result;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABF5330@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, qword_1EE1261E0);
  result = sub_1DACB8254();
  if (v9[3])
  {
    v5 = type metadata accessor for UserLaunchHistory();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = sub_1DAA5C338(v9);
    result = sub_1DAA4F53C(&qword_1EE11E9A8, type metadata accessor for UserLaunchHistory);
    *a2 = v8;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABF5408@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NetworkMonitor();
  v3 = swift_allocObject();
  sub_1DAA8C1B0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = sub_1DACB8F04();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_1F5693550;
  *a1 = v3;
  return result;
}

uint64_t sub_1DABF547C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  result = sub_1DACB8224();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, &qword_1EE125780);
    result = sub_1DACB8254();
    v8 = v26;
    if (v26)
    {
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      v10 = *(*(v8 - 8) + 64);
      MEMORY[0x1EEE9AC00](v9);
      v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12);
      v14 = *v12;
      v15 = type metadata accessor for AttributionSourceAssetService();
      v24[3] = v15;
      v24[4] = &off_1F5682040;
      v24[0] = v14;
      v16 = type metadata accessor for AttributionSourceAssetManager();
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v24, v15);
      v19 = *(*(v15 - 8) + 64);
      MEMORY[0x1EEE9AC00](v18);
      v21 = (v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = sub_1DAA6FA5C(v6, *v21, v17);
      __swift_destroy_boxed_opaque_existential_1(v24);
      result = __swift_destroy_boxed_opaque_existential_1(v25);
      a2[3] = v16;
      a2[4] = &off_1F56939F8;
      *a2 = v23;
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

uint64_t sub_1DABF5730@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BD0);
  result = sub_1DACB8254();
  if (!v14)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1DAA4D460(&v13, v15);
  v6 = v16;
  v7 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  if ((*(v7 + 8))(v6, v7))
  {
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v9 = type metadata accessor for AppleAttributionProvider();
    result = sub_1DACB8244();
    if (result)
    {
      v10 = &off_1F5693658;
LABEL_10:
      a2[3] = v9;
      a2[4] = v10;
      *a2 = result;
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    goto LABEL_12;
  }

  sub_1DAA4D678(a1, &v13);
  v11 = sub_1DAA6CBB4(&v13);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v11)
  {
    v9 = type metadata accessor for SDSAttributionProvider();
    result = sub_1DACB8224();
    if (result)
    {
      v10 = &off_1F5685C28;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v9 = type metadata accessor for YahooAttributionProvider();
  result = sub_1DACB8244();
  if (result)
  {
    v10 = &off_1F568EB98;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1DABF58E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAA469E8(0, &qword_1EE123B70, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D40;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = type metadata accessor for SDSAttributionProvider();
  result = sub_1DACB8224();
  if (result)
  {
    *(v4 + 56) = v6;
    *(v4 + 64) = &off_1F5685C18;
    *(v4 + 32) = result;
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_1DACB8224();
    if (result)
    {
      *(v4 + 96) = v6;
      *(v4 + 104) = &off_1F5685C18;
      *(v4 + 72) = result;
      *a2 = v4;
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

uint64_t sub_1DABF59FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UnnecessaryWordRemover();
  swift_allocObject();
  result = sub_1DAA67828();
  a1[3] = v2;
  a1[4] = &off_1F568FF90;
  *a1 = result;
  return result;
}

uint64_t sub_1DABF5A54(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BB8);
  result = sub_1DACB8254();
  if (v8)
  {
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA46854(0, &qword_1EE125578, MEMORY[0x1E6968FB0], MEMORY[0x1E69D6B80]);
    result = sub_1DACB8224();
    if (result)
    {
      v5 = result;
      type metadata accessor for SDSAuthTokenRefresher();
      v6 = swift_allocObject();
      sub_1DAA4D460(&v7, v6 + 16);
      *(v6 + 56) = v5;
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABF5C14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v26[1] = a4;
  v27 = sub_1DACB81D4();
  v6 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v28 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB8EC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DAA46854(0, &qword_1EE125550, MEMORY[0x1E69D62A8], MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v26 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1DACB8234();
  v17 = v32;
  if (v32)
  {
    v26[0] = v31;
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DACB8254();
    result = (*(v9 + 48))(v14, 1, v8);
    if (result != 1)
    {
      (*(v9 + 16))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v8);
      v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v26[0];
      *(v20 + 24) = v17;
      (*(v9 + 32))(v20 + v19, v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      v30 = MEMORY[0x1E69E7CC0];
      sub_1DAA4F53C(&qword_1EE1255D0, MEMORY[0x1E69D6420]);
      v21 = MEMORY[0x1E69D6420];
      sub_1DAA46854(0, &qword_1EE125540, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
      sub_1DAA585BC(&qword_1EE125530, &qword_1EE125540, v21);
      sub_1DACB71E4();
      sub_1DACB9BB4();
      sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      v25 = sub_1DACB8914();

      (*(v9 + 8))(v14, v8);
      return v25;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABF5FFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DACB81D4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DAA4F53C(&qword_1EE1255D0, MEMORY[0x1E69D6420]);
  v4 = MEMORY[0x1E69D6420];
  sub_1DAA46854(0, &qword_1EE125540, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1DAA585BC(&qword_1EE125530, &qword_1EE125540, v4);
  sub_1DACB9BB4();
  sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_1DACB8914();
  *a1 = result;
  return result;
}

uint64_t sub_1DABF61B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE124058 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB8EC4();
  v3 = __swift_project_value_buffer(v2, qword_1EE11D2A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DABF625C(void *a1)
{
  v2 = sub_1DACB86E4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE1257A0);
  result = sub_1DACB8254();
  if (v12)
  {
    type metadata accessor for WatchlistDeprecationMonitor();
    v6 = swift_allocObject();
    sub_1DAA4F53C(&qword_1EE1255A8, MEMORY[0x1E69D67A0]);
    v7 = MEMORY[0x1E69D67A0];
    sub_1DAA46854(0, &qword_1EE125510, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
    sub_1DAA585BC(&qword_1EE125508, &qword_1EE125510, v7);
    sub_1DACB9BB4();
    sub_1DAA5CEEC();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    *(v6 + 56) = sub_1DACB8354();
    sub_1DAA4D460(&v11, v6 + 16);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABF6440(void *a1, void *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WatchlistDeprecationMonitor();
  result = sub_1DACB8244();
  if (result)
  {
    sub_1DAA4F53C(qword_1EE11DC68, type metadata accessor for WatchlistDeprecationMonitor);
    sub_1DACB8784();

    __swift_destroy_boxed_opaque_existential_1(v10);
    v6 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1DAA44440(0, &unk_1EE125790);
    result = sub_1DACB8254();
    if (v8)
    {
      v7 = *(v9 + 8);
      sub_1DACB8784();
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABF65A8(void *a1, void *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA44440(0, &unk_1EE125CD0);
  result = sub_1DACB8254();
  if (v7)
  {
    v6 = *(v8 + 8);
    sub_1DACB8894();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABF6670(uint64_t a1, void *a2)
{
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA44440(0, &qword_1EE125910);
  result = sub_1DACB8254();
  if (!ObjectType)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA44440(0, &qword_1EE125E38);
  result = sub_1DACB8254();
  if (!v19)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA63A44();
  result = sub_1DACB8244();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v8 = type metadata accessor for KVSCleanupStartupTask();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_group;
  if (qword_1EE11D4A0 != -1)
  {
    swift_once();
  }

  v13 = sub_1DACB8574();
  v14 = __swift_project_value_buffer(v13, qword_1EE11D4A8);
  (*(*(v13 - 8) + 16))(v11 + v12, v14, v13);
  sub_1DAA4D460(&v20, v11 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_appConfigurationManager);
  sub_1DAA4D460(&v18, v11 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_watchlistService);
  *(v11 + OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_lazyDatabase) = v7;
  ObjectType = v8;
  v22 = sub_1DAA4F53C(&qword_1EE11E540, type metadata accessor for KVSCleanupStartupTask);
  *&v20 = v11;
  sub_1DACB86C4();
  __swift_destroy_boxed_opaque_existential_1(&v20);
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA44440(0, &unk_1EE125790);
  result = sub_1DACB8254();
  v16 = v18;
  if (v18)
  {
    v17 = *(&v18 + 1);
    ObjectType = swift_getObjectType();
    v22 = *(v17 + 16);
    *&v20 = v16;
    sub_1DACB86C4();
    return __swift_destroy_boxed_opaque_existential_1(&v20);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1DABF6940(void *a1, int a2)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for YahooAttributionProvider();
  result = sub_1DACB8244();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = type metadata accessor for SDSMetadataCache();
    result = sub_1DACB8244();
    if (result)
    {
      v17[3] = v8;
      v17[4] = &off_1F568E330;
      v17[0] = result;
      type metadata accessor for SDSAttributionProvider();
      v9 = swift_allocObject();
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v17, v8);
      v11 = *(*(v8 - 8) + 64);
      MEMORY[0x1EEE9AC00](v10);
      v13 = (&v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13);
      v15 = sub_1DAA6EF68(a2, v6, *v13, v9);

      __swift_destroy_boxed_opaque_existential_1(v17);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DABF6AD8(void *a1)
{
  v2 = sub_1DACB81D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  result = sub_1DACB8224();
  if (result)
  {
    type metadata accessor for SDSMetadataCache();
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69D6420];
    sub_1DAA46854(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
    v9 = *(v3 + 72);
    v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    *(swift_allocObject() + 16) = xmmword_1DACC1D20;
    sub_1DACB81C4();
    sub_1DAA4F53C(&qword_1EE1255D0, MEMORY[0x1E69D6420]);
    sub_1DAA46854(0, &qword_1EE125540, v8, MEMORY[0x1E69E62F8]);
    sub_1DAA585BC(&qword_1EE125530, &qword_1EE125540, v8);
    sub_1DACB9BB4();
    sub_1DAA46854(0, &qword_1EE1240D8, sub_1DAA6ED90, MEMORY[0x1E69D6A80]);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    *(v7 + 16) = sub_1DACB8914();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DABF6DA4()
{
  v26 = type metadata accessor for RawAttributionSourceLogo;
  v0 = MEMORY[0x1E69E6720];
  sub_1DAA46854(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v25 - v3;
  v5 = MEMORY[0x1E6968FB0];
  sub_1DAA46854(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], v0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for RawAttributionSource(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppleAttributionProvider();
  v15 = swift_allocObject();
  sub_1DACB7A94();
  v16 = type metadata accessor for RawAttributionSourceLogo(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v4, 1, 1, v16);
  v18 = *(v11 + 28);
  v19 = sub_1DACB7AB4();
  (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
  v20 = *(v11 + 32);
  v17(&v14[v20], 1, 1, v16);
  *v14 = 0x654EAF80E2BFA3EFLL;
  *(v14 + 1) = 0xAA00000000007377;
  sub_1DAA6EB5C(v9, &v14[v18], &qword_1EE1263D0, v5);
  sub_1DAA6EB5C(v4, &v14[v20], &qword_1EE124698, v26);
  sub_1DAA46854(0, &qword_1EE1240F0, type metadata accessor for RawAttributionSource, MEMORY[0x1E69D6550]);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v15 + 16) = sub_1DACB8424();
  return v15;
}

uint64_t sub_1DABF7090(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910);
  result = sub_1DACB8254();
  if (v3[3])
  {
    type metadata accessor for YahooAttributionProvider();
    swift_allocObject();
    return sub_1DAA6D598(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1DABF7128(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = sub_1DACB86E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v20 = &type metadata for CurrencyManagerCache;
  v21 = &off_1F5692598;
  *&v19 = a2;
  sub_1DAA4F53C(&qword_1EE1255A8, MEMORY[0x1E69D67A0]);
  v12 = MEMORY[0x1E69D67A0];
  sub_1DAA46854(0, &qword_1EE125510, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
  sub_1DAA585BC(&qword_1EE125508, &qword_1EE125510, v12);
  sub_1DACB9BB4();
  sub_1DAA6FEDC(0, &qword_1EE11D4C8, sub_1DABF74B8, sub_1DABF7514, sub_1DABF7580);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(a5 + 12) = sub_1DACB8354();
  v16 = OBJC_IVAR____TtC10StocksCore15CurrencyManager_inMemory;
  v17 = type metadata accessor for CurrencyResponse();
  (*(*(v17 - 8) + 56))(&a5[v16], 1, 1, v17);
  sub_1DAA4D460(a1, (a5 + 16));
  sub_1DAA4D460(&v19, (a5 + 56));
  *(a5 + 13) = a3;
  *(a5 + 14) = a4;
  return a5;
}

uint64_t sub_1DABF7370@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1DACB8EC4() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1DAC637D4(v4, v5, v6, a1);
}

void sub_1DABF73EC()
{
  if (!qword_1EE11D4C0)
  {
    type metadata accessor for CurrencyResponse();
    sub_1DAA4F53C(&qword_1EE11EBD8, type metadata accessor for CurrencyResponse);
    sub_1DAA4F53C(&qword_1EE11EBE0, type metadata accessor for CurrencyResponse);
    v0 = sub_1DACB8554();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D4C0);
    }
  }
}

void sub_1DABF74B8()
{
  if (!qword_1EE11D108)
  {
    sub_1DAB69930();
    v0 = sub_1DACB9834();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D108);
    }
  }
}

void sub_1DABF7514()
{
  if (!qword_1EE11D1C8)
  {
    type metadata accessor for CurrencyResponse();
    sub_1DAB69930();
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D1C8);
    }
  }
}

uint64_t sub_1DABF75BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61756E616DLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = -96;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DACEDF30 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACEDF50 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DACEDF70 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 32;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DACEDF90 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 33;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DACEDFB0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 64;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACEDFD0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 65;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DACEDFF0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 96;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DACEE010 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 97;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DACEE030 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0x80;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DACEE050 == a2)
  {

    v8 = -127;
  }

  else
  {
    v9 = sub_1DACBA174();

    if (v9)
    {
      v8 = -127;
    }

    else
    {
      v8 = -2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DABF7960()
{
  v1 = *v0 >> 5;
  v2 = 4;
  v3 = 5;
  if (v1 != 4)
  {
    v3 = 0;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 1;
  v5 = 2;
  if (v1 != 1)
  {
    v5 = 3;
  }

  if (v1)
  {
    v4 = v5;
  }

  if (*v0 >> 5 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DABF79D8()
{
  v1 = sub_1DACB7E44();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1DACB92E4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = *v0 >> 5;
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        sub_1DACB9284();
        if (qword_1EE123DD8 == -1)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_1DACB9284();
        if (qword_1EE123DD8 == -1)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_1DACB9284();
      if (qword_1EE123DD8 == -1)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

  if (v5 == 3)
  {
    sub_1DACB9284();
    if (qword_1EE123DD8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v5 == 4)
  {
    sub_1DACB9284();
    if (qword_1EE123DD8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  sub_1DACB9284();
  if (qword_1EE123DD8 != -1)
  {
LABEL_18:
    swift_once();
  }

LABEL_17:
  v6 = qword_1EE13E470;
  sub_1DACB7DF4();
  return sub_1DACB9374();
}

uint64_t sub_1DABF7E18(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1 >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      if ((v2 & 0xE0) == 0x60)
      {
        return 1;
      }
    }

    else if (v3 == 4)
    {
      if ((v2 & 0xE0) == 0x80)
      {
        return 1;
      }
    }

    else if (v2 == 160)
    {
      return 1;
    }
  }

  else if (v3)
  {
    v4 = v2 & 0xE0;
    if (v3 == 1)
    {
      if (v4 == 32)
      {
        return 1;
      }
    }

    else if (v4 == 64)
    {
      return 1;
    }
  }

  else if (v2 < 0x20)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DABF7EBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v4 = (a2 == 1) & ~a3;
  v5 = v4 | 0x40;
  v6 = v4 | 0x60;
  v7 = v4 | 0x80;
  if (result != 5)
  {
    v7 = -2;
  }

  if (result != 4)
  {
    v6 = v7;
  }

  if (result != 3)
  {
    v5 = v6;
  }

  if (result == 2)
  {
    v8 = v4 | 0x20;
  }

  else
  {
    v8 = -2;
  }

  if (result != 1)
  {
    v4 = v8;
  }

  if (!result)
  {
    v4 = -96;
  }

  if (result > 2)
  {
    v4 = v5;
  }

  *a4 = v4;
  return result;
}

uint64_t sub_1DABF7FCC()
{
  v1 = sub_1DACB7E44();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1DACB92E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-v9];
  v11 = *v0;
  v12 = (v4 + 16);
  if (v11)
  {
    sub_1DACB9284();
    (*v12)(v8, v10, v3);
    if (qword_1EE123DD8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1DACB9284();
  (*v12)(v8, v10, v3);
  if (qword_1EE123DD8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v13 = qword_1EE13E470;
  sub_1DACB7DF4();
  v14 = sub_1DACB9384();
  (*(v4 + 8))(v10, v3);
  return v14;
}

uint64_t sub_1DABF825C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void *sub_1DABF8280@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DABF83B0(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a2;
  *a2 = a1;
}

uint64_t sub_1DABF8454(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a1;
  sub_1DACB71E4();
  swift_beginAccess();
  v7 = *a5;
  *a5 = v6;
}

void sub_1DABF84A8(_BYTE *a1@<X8>)
{
  v2 = *v1;
  v3 = v2 >> 5;
  v4 = v2 & 1;
  if (v3 == 4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v3 == 3)
  {
    v5 = v4;
  }

  if (v3 > 2)
  {
    v4 = v5;
  }

  *a1 = v4;
}

uint64_t sub_1DABF84E4()
{
  v1 = *v0;
  v2 = 0x6C61756E616DLL;
  v3 = 0x614374656B72616DLL;
  v4 = 0x6C6F626D7973;
  if (v1 != 4)
  {
    v4 = 1701667182;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6168436563697270;
  if (v1 != 1)
  {
    v5 = 0x43746E6563726570;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DABF85A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABFAC48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABF85D0(uint64_t a1)
{
  v2 = sub_1DABFA198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF860C(uint64_t a1)
{
  v2 = sub_1DABFA198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABF8654@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1DABF8684(uint64_t a1)
{
  v2 = sub_1DABFA144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF86C0(uint64_t a1)
{
  v2 = sub_1DABFA144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABF86FC(uint64_t a1)
{
  v2 = sub_1DABFA048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF8738(uint64_t a1)
{
  v2 = sub_1DABFA048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABF8774(uint64_t a1)
{
  v2 = sub_1DABF9FA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF87B0(uint64_t a1)
{
  v2 = sub_1DABF9FA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABF87EC(uint64_t a1)
{
  v2 = sub_1DABFA09C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF8828(uint64_t a1)
{
  v2 = sub_1DABFA09C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABF8864(uint64_t a1)
{
  v2 = sub_1DABFA0F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF88A0(uint64_t a1)
{
  v2 = sub_1DABFA0F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABF88DC(uint64_t a1)
{
  v2 = sub_1DABF9FF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABF8918(uint64_t a1)
{
  v2 = sub_1DABF9FF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABF8954(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1DABFA240(0, &qword_1ECBE8D18, sub_1DABF9FA0, &type metadata for WatchlistSortState.NameCodingKeys, MEMORY[0x1E69E6F58]);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v39 - v6;
  sub_1DABFA240(0, &qword_1ECBE8D28, sub_1DABF9FF4, &type metadata for WatchlistSortState.SymbolCodingKeys, v3);
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v39 - v9;
  sub_1DABFA240(0, &qword_1ECBE8D38, sub_1DABFA048, &type metadata for WatchlistSortState.MarketCapCodingKeys, v3);
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v39 - v12;
  sub_1DABFA240(0, &qword_1ECBE8D48, sub_1DABFA09C, &type metadata for WatchlistSortState.PercentChangeCodingKeys, v3);
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v39 - v15;
  sub_1DABFA240(0, &qword_1ECBE8D58, sub_1DABFA0F0, &type metadata for WatchlistSortState.PriceChangeCodingKeys, v3);
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v39 - v18;
  sub_1DABFA240(0, &qword_1ECBE8D68, sub_1DABFA144, &type metadata for WatchlistSortState.ManualCodingKeys, v3);
  v40 = *(v19 - 8);
  v41 = v19;
  v20 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - v21;
  sub_1DABFA240(0, &qword_1ECBE8D78, sub_1DABFA198, &type metadata for WatchlistSortState.CodingKeys, v3);
  v24 = v23;
  v57 = *(v23 - 8);
  v25 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v39 - v26;
  v28 = *v1;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABFA198();
  sub_1DACBA304();
  v30 = v28 >> 5;
  if (v28 >> 5 <= 2)
  {
    if (v30)
    {
      v31 = v24;
      if (v30 == 1)
      {
        v62 = 2;
        sub_1DABFA09C();
        v32 = v45;
        sub_1DACBA014();
        v61 = v28 & 1;
        sub_1DABFA1EC();
        v33 = v47;
        sub_1DACBA0E4();
        v34 = v46;
      }

      else
      {
        v64 = 3;
        sub_1DABFA048();
        v32 = v48;
        sub_1DACBA014();
        v63 = v28 & 1;
        sub_1DABFA1EC();
        v33 = v50;
        sub_1DACBA0E4();
        v34 = v49;
      }

      goto LABEL_12;
    }

    v60 = 1;
    sub_1DABFA0F0();
    v35 = v42;
    sub_1DACBA014();
    v59 = v28 & 1;
    sub_1DABFA1EC();
    v36 = v44;
    sub_1DACBA0E4();
    v37 = v43;
LABEL_10:
    (*(v37 + 8))(v35, v36);
    return (*(v57 + 8))(v27, v24);
  }

  if (v30 == 3)
  {
    v66 = 4;
    sub_1DABF9FF4();
    v35 = v51;
    sub_1DACBA014();
    v65 = v28 & 1;
    sub_1DABFA1EC();
    v36 = v53;
    sub_1DACBA0E4();
    v37 = v52;
    goto LABEL_10;
  }

  v31 = v24;
  if (v30 != 4)
  {
    v58 = 0;
    sub_1DABFA144();
    sub_1DACBA014();
    (*(v40 + 8))(v22, v41);
    return (*(v57 + 8))(v27, v24);
  }

  v68 = 5;
  sub_1DABF9FA0();
  v32 = v54;
  sub_1DACBA014();
  v67 = v28 & 1;
  sub_1DABFA1EC();
  v33 = v56;
  sub_1DACBA0E4();
  v34 = v55;
LABEL_12:
  (*(v34 + 8))(v32, v33);
  return (*(v57 + 8))(v27, v31);
}

uint64_t sub_1DABF915C()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 > 2)
  {
    if (v2 == 3)
    {
      v4 = 4;
    }

    else
    {
      if (v2 != 4)
      {
        v5 = 0;
        return MEMORY[0x1E1277D70](v5);
      }

      v4 = 5;
    }
  }

  else
  {
    v3 = 2;
    if (v2 != 1)
    {
      v3 = 3;
    }

    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 1;
    }
  }

  MEMORY[0x1E1277D70](v4);
  v5 = v1 & 1;
  return MEMORY[0x1E1277D70](v5);
}

uint64_t sub_1DABF91E0()
{
  v1 = *v0;
  sub_1DACBA284();
  v2 = v1 >> 5;
  if (v1 >> 5 <= 2)
  {
    v3 = 2;
    if (v2 != 1)
    {
      v3 = 3;
    }

    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_11;
  }

  if (v2 == 3)
  {
    v4 = 4;
    goto LABEL_11;
  }

  v5 = 0;
  if (v2 == 4)
  {
    v4 = 5;
LABEL_11:
    MEMORY[0x1E1277D70](v4);
    v5 = v1 & 1;
  }

  MEMORY[0x1E1277D70](v5);
  return sub_1DACBA2C4();
}

uint64_t sub_1DABF927C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1DABFA240(0, &qword_1ECBE8D90, sub_1DABF9FA0, &type metadata for WatchlistSortState.NameCodingKeys, MEMORY[0x1E69E6F48]);
  v66 = v4;
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v57 - v6;
  sub_1DABFA240(0, &qword_1ECBE8D98, sub_1DABF9FF4, &type metadata for WatchlistSortState.SymbolCodingKeys, v3);
  v8 = *(v7 - 8);
  v67 = v7;
  v68 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v57 - v10;
  sub_1DABFA240(0, &qword_1ECBE8DA0, sub_1DABFA048, &type metadata for WatchlistSortState.MarketCapCodingKeys, v3);
  v62 = v11;
  v65 = *(v11 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v57 - v13;
  sub_1DABFA240(0, &qword_1ECBE8DA8, sub_1DABFA09C, &type metadata for WatchlistSortState.PercentChangeCodingKeys, v3);
  v63 = *(v14 - 8);
  v64 = v14;
  v15 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v57 - v16;
  sub_1DABFA240(0, &qword_1ECBE8DB0, sub_1DABFA0F0, &type metadata for WatchlistSortState.PriceChangeCodingKeys, v3);
  v61 = v17;
  v60 = *(v17 - 8);
  v18 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v57 - v19;
  sub_1DABFA240(0, &qword_1ECBE8DB8, sub_1DABFA144, &type metadata for WatchlistSortState.ManualCodingKeys, v3);
  v21 = v20;
  v59 = *(v20 - 8);
  v22 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v57 - v23;
  sub_1DABFA240(0, &qword_1ECBE8DC0, sub_1DABFA198, &type metadata for WatchlistSortState.CodingKeys, v3);
  v26 = v25;
  v27 = *(v25 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v57 - v29;
  v31 = a1;
  v32 = a1[3];
  v33 = v31[4];
  v77 = v31;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_1DABFA198();
  v34 = v76;
  sub_1DACBA2F4();
  if (!v34)
  {
    v35 = v24;
    v58 = v21;
    v36 = v72;
    v37 = v73;
    v76 = v27;
    v39 = v74;
    v38 = v75;
    v40 = sub_1DACB9FF4();
    v41 = (2 * *(v40 + 16)) | 1;
    v78 = v40;
    v79 = v40 + 32;
    v80 = 0;
    v81 = v41;
    v42 = sub_1DAB4A848();
    if (v42 == 6 || v80 != v81 >> 1)
    {
      v45 = sub_1DACB9D14();
      swift_allocError();
      v47 = v46;
      sub_1DAB4B3BC();
      v49 = *(v48 + 48);
      *v47 = &type metadata for WatchlistSortState;
      sub_1DACB9F24();
      sub_1DACB9CF4();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
      swift_willThrow();
      (*(v76 + 8))(v30, v26);
      swift_unknownObjectRelease();
    }

    else if (v42 > 2u)
    {
      if (v42 == 3)
      {
        v82 = 3;
        sub_1DABFA048();
        sub_1DACB9F14();
        sub_1DABFA2A8();
        v53 = v62;
        sub_1DACB9FE4();
        (*(v65 + 8))(v37, v53);
        (*(v76 + 8))(v30, v26);
        swift_unknownObjectRelease();
        *v38 = v82 | 0x40;
      }

      else if (v42 == 4)
      {
        v82 = 4;
        sub_1DABF9FF4();
        v51 = v71;
        sub_1DACB9F14();
        sub_1DABFA2A8();
        v52 = v67;
        sub_1DACB9FE4();
        (*(v68 + 8))(v51, v52);
        (*(v76 + 8))(v30, v26);
        swift_unknownObjectRelease();
        *v38 = v82 | 0x60;
      }

      else
      {
        v82 = 5;
        sub_1DABF9FA0();
        sub_1DACB9F14();
        sub_1DABFA2A8();
        v56 = v66;
        sub_1DACB9FE4();
        (*(v69 + 8))(v39, v56);
        (*(v76 + 8))(v30, v26);
        swift_unknownObjectRelease();
        *v38 = v82 | 0x80;
      }
    }

    else if (v42)
    {
      if (v42 == 1)
      {
        v82 = 1;
        sub_1DABFA0F0();
        sub_1DACB9F14();
        v43 = v76;
        sub_1DABFA2A8();
        v44 = v61;
        sub_1DACB9FE4();
        (*(v60 + 8))(v36, v44);
        (*(v43 + 8))(v30, v26);
        swift_unknownObjectRelease();
        *v38 = v82;
      }

      else
      {
        v82 = 2;
        sub_1DABFA09C();
        v54 = v70;
        sub_1DACB9F14();
        sub_1DABFA2A8();
        v55 = v64;
        sub_1DACB9FE4();
        (*(v63 + 8))(v54, v55);
        (*(v76 + 8))(v30, v26);
        swift_unknownObjectRelease();
        *v38 = v82 | 0x20;
      }
    }

    else
    {
      v82 = 0;
      sub_1DABFA144();
      sub_1DACB9F14();
      (*(v59 + 8))(v35, v58);
      (*(v76 + 8))(v30, v26);
      swift_unknownObjectRelease();
      *v38 = -96;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v77);
}

uint64_t sub_1DABF9DB0()
{
  v1 = *v0;
  sub_1DACBA284();
  v2 = v1 >> 5;
  if (v1 >> 5 > 2)
  {
    if (v2 == 3)
    {
      v4 = 4;
    }

    else
    {
      if (v2 != 4)
      {
        v5 = 0;
        goto LABEL_12;
      }

      v4 = 5;
    }
  }

  else
  {
    v3 = 2;
    if (v2 != 1)
    {
      v3 = 3;
    }

    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 1;
    }
  }

  MEMORY[0x1E1277D70](v4);
  v5 = v1 & 1;
LABEL_12:
  MEMORY[0x1E1277D70](v5);
  return sub_1DACBA2C4();
}

uint64_t sub_1DABF9E4C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1 >> 5;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 4)
      {
        if ((v2 & 0xE0) != 0x80)
        {
          return 0;
        }
      }

      else if (v2 != 160)
      {
        return 0;
      }

      return 1;
    }

    if ((v2 & 0xE0) == 0x60)
    {
      return 1;
    }
  }

  else
  {
    if (v3)
    {
      v4 = v2 & 0xE0;
      if (v3 == 1)
      {
        if (v4 != 32)
        {
          return 0;
        }
      }

      else if (v4 != 64)
      {
        return 0;
      }

      return 1;
    }

    if (v2 < 0x20)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DABF9F14@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
  return sub_1DACB71E4();
}

uint64_t sub_1DABF9F70@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DABF7960();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

unint64_t sub_1DABF9FA0()
{
  result = qword_1ECBE8D20;
  if (!qword_1ECBE8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D20);
  }

  return result;
}

unint64_t sub_1DABF9FF4()
{
  result = qword_1ECBE8D30;
  if (!qword_1ECBE8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D30);
  }

  return result;
}

unint64_t sub_1DABFA048()
{
  result = qword_1ECBE8D40;
  if (!qword_1ECBE8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D40);
  }

  return result;
}

unint64_t sub_1DABFA09C()
{
  result = qword_1ECBE8D50;
  if (!qword_1ECBE8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D50);
  }

  return result;
}

unint64_t sub_1DABFA0F0()
{
  result = qword_1ECBE8D60;
  if (!qword_1ECBE8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D60);
  }

  return result;
}

unint64_t sub_1DABFA144()
{
  result = qword_1ECBE8D70;
  if (!qword_1ECBE8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D70);
  }

  return result;
}

unint64_t sub_1DABFA198()
{
  result = qword_1ECBE8D80;
  if (!qword_1ECBE8D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D80);
  }

  return result;
}

unint64_t sub_1DABFA1EC()
{
  result = qword_1ECBE8D88;
  if (!qword_1ECBE8D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8D88);
  }

  return result;
}

void sub_1DABFA240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DABFA2A8()
{
  result = qword_1ECBE8DC8;
  if (!qword_1ECBE8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8DC8);
  }

  return result;
}

unint64_t sub_1DABFA300()
{
  result = qword_1ECBE8DD0;
  if (!qword_1ECBE8DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8DD0);
  }

  return result;
}

unint64_t sub_1DABFA388()
{
  result = qword_1ECBE8DE8;
  if (!qword_1ECBE8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8DE8);
  }

  return result;
}

uint64_t sub_1DABFA40C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA488A4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X3>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
  return sub_1DACB71E4();
}

_BYTE *sub_1DABFA4B8(_BYTE *result, unsigned int a2)
{
  if (a2 < 5)
  {
    *result = *result & 1 | (32 * a2);
  }

  else
  {
    *result = a2 & 1 ^ 0xA1;
  }

  return result;
}

unint64_t sub_1DABFA56C()
{
  result = qword_1ECBE8E00;
  if (!qword_1ECBE8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E00);
  }

  return result;
}

unint64_t sub_1DABFA5C4()
{
  result = qword_1ECBE8E08;
  if (!qword_1ECBE8E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E08);
  }

  return result;
}

unint64_t sub_1DABFA61C()
{
  result = qword_1ECBE8E10;
  if (!qword_1ECBE8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E10);
  }

  return result;
}

unint64_t sub_1DABFA674()
{
  result = qword_1ECBE8E18;
  if (!qword_1ECBE8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E18);
  }

  return result;
}

unint64_t sub_1DABFA6CC()
{
  result = qword_1ECBE8E20;
  if (!qword_1ECBE8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E20);
  }

  return result;
}

unint64_t sub_1DABFA724()
{
  result = qword_1ECBE8E28;
  if (!qword_1ECBE8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E28);
  }

  return result;
}

unint64_t sub_1DABFA77C()
{
  result = qword_1ECBE8E30;
  if (!qword_1ECBE8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E30);
  }

  return result;
}

unint64_t sub_1DABFA7D4()
{
  result = qword_1ECBE8E38;
  if (!qword_1ECBE8E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E38);
  }

  return result;
}

unint64_t sub_1DABFA82C()
{
  result = qword_1ECBE8E40;
  if (!qword_1ECBE8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E40);
  }

  return result;
}

unint64_t sub_1DABFA884()
{
  result = qword_1ECBE8E48;
  if (!qword_1ECBE8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E48);
  }

  return result;
}

unint64_t sub_1DABFA8DC()
{
  result = qword_1ECBE8E50;
  if (!qword_1ECBE8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E50);
  }

  return result;
}

unint64_t sub_1DABFA934()
{
  result = qword_1ECBE8E58;
  if (!qword_1ECBE8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E58);
  }

  return result;
}

unint64_t sub_1DABFA98C()
{
  result = qword_1ECBE8E60;
  if (!qword_1ECBE8E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E60);
  }

  return result;
}

unint64_t sub_1DABFA9E4()
{
  result = qword_1ECBE8E68;
  if (!qword_1ECBE8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E68);
  }

  return result;
}

unint64_t sub_1DABFAA3C()
{
  result = qword_1ECBE8E70;
  if (!qword_1ECBE8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E70);
  }

  return result;
}

unint64_t sub_1DABFAA94()
{
  result = qword_1ECBE8E78;
  if (!qword_1ECBE8E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E78);
  }

  return result;
}

unint64_t sub_1DABFAAEC()
{
  result = qword_1ECBE8E80;
  if (!qword_1ECBE8E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E80);
  }

  return result;
}

unint64_t sub_1DABFAB44()
{
  result = qword_1ECBE8E88;
  if (!qword_1ECBE8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E88);
  }

  return result;
}

unint64_t sub_1DABFAB9C()
{
  result = qword_1ECBE8E90;
  if (!qword_1ECBE8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E90);
  }

  return result;
}

unint64_t sub_1DABFABF4()
{
  result = qword_1ECBE8E98;
  if (!qword_1ECBE8E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8E98);
  }

  return result;
}

uint64_t sub_1DABFAC48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61756E616DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436563697270 && a2 == 0xEB0000000065676ELL || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x43746E6563726570 && a2 == 0xED000065676E6168 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614374656B72616DLL && a2 == 0xE900000000000070 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1DABFAE50()
{
  result = qword_1ECBE8EA0;
  if (!qword_1ECBE8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8EA0);
  }

  return result;
}

uint64_t sub_1DABFAEC0(void *a1, __int128 *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1DABFAF14(v6, a2, v2, v4, v5);
}

uint64_t sub_1DABFAF14(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[3] = a4;
  v15[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v13 = *a2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    v14 = v13;
    (*(v10 + 8))(v15, &v14, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DABFAFF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 720))
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

uint64_t sub_1DABFB038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 712) = 0;
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
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 720) = 1;
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

    *(result + 720) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DABFB154(char a1)
{
  result = 0x6F626D79735F6469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x65676E6168637865;
      break;
    case 3:
      result = 0x6563697270;
      break;
    case 4:
      result = 0x65676E616863;
      break;
    case 5:
      result = 1852141679;
      break;
    case 6:
      result = 0x776F6C5F796164;
      break;
    case 7:
      result = 0x686769685F796164;
      break;
    case 8:
      result = 0x776F6C5F72616579;
      break;
    case 9:
      result = 0x6769685F72616579;
      break;
    case 10:
      result = 0x646E656469766964;
      break;
    case 11:
      result = 0x635F74656B72616DLL;
      break;
    case 12:
      result = 0x656D756C6F76;
      break;
    case 13:
      result = 0x765F6D335F677661;
      break;
    case 14:
      result = 0x6F697461725F6570;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 7565413;
      break;
    case 17:
      result = 0x79636E6572727563;
      break;
    case 18:
      result = 0x5F736C6961746564;
      break;
    case 19:
      result = 0x616E5F74726F6873;
      break;
    case 20:
      result = 0x7079745F61746164;
      break;
    case 21:
      result = 0xD000000000000012;
      break;
    case 22:
      result = 0xD000000000000018;
      break;
    case 23:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DABFB3E8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DABFB154(*a1);
  v5 = v4;
  if (v3 == sub_1DABFB154(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DABFB470()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DABFB154(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABFB4D4()
{
  sub_1DABFB154(*v0);
  sub_1DACB9404();
}

uint64_t sub_1DABFB528()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DABFB154(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABFB588@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DABFC4D8();
  *a2 = result;
  return result;
}

unint64_t sub_1DABFB5B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DABFB154(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DABFB5EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DABFC4D8();
  *a1 = result;
  return result;
}

uint64_t sub_1DABFB620(uint64_t a1)
{
  v2 = sub_1DABFDD70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABFB65C(uint64_t a1)
{
  v2 = sub_1DABFDD70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABFB698()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DABFB6E8(char a1)
{
  if (!a1)
  {
    return 7823730;
  }

  if (a1 == 1)
  {
    return 0x6E69727453776172;
  }

  return 7630182;
}

void *sub_1DABFB734@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DABFC52C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x2D0uLL);
  }

  return result;
}

uint64_t sub_1DABFB780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DABFB7F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DABFB860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DABFB8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DABFB940@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DABFB698();
  *a2 = result;
  return result;
}

uint64_t sub_1DABFB970@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DABFB6E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DABFB9A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DABFB6E4();
  *a1 = result;
  return result;
}

uint64_t sub_1DABFB9CC@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1DABFD54C();
  *a2 = result;
  return result;
}

uint64_t sub_1DABFB9F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DABFBA4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DABFBAA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v7 = sub_1DACB9AF4();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v48 = v41 - v10;
  v47 = *(a2 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v43 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for YahooQuoteDetailResponse.Value.CodingKeys();
  swift_getWitnessTable();
  v13 = sub_1DACBA004();
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v41 - v15;
  v49 = a3;
  v17 = type metadata accessor for YahooQuoteDetailResponse.Value();
  v42 = *(v17 - 8);
  v18 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v41 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = v52;
  sub_1DACBA2F4();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v52 = v20;
  v23 = v48;
  v54 = 0;
  v24 = sub_1DACB9FA4();
  v26 = v52;
  v27 = &v52[*(v17 + 36)];
  v41[1] = v28;
  v41[2] = v24;
  *v27 = v24;
  v27[1] = v28;
  v53 = 2;
  v29 = sub_1DACB9FA4();
  v41[0] = v16;
  v30 = &v26[*(v17 + 40)];
  *v30 = v29;
  v30[1] = v31;
  sub_1DACB71E4();
  sub_1DACBA144();
  v32 = v47;
  v33 = (*(v47 + 48))(v23, 1, a2);
  if (v33 == 1)
  {
    (*(v44 + 8))(v23, v45);
    type metadata accessor for YahooQuoteDetailResponse.Value.ValueError();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    (*(v50 + 8))(v41[0], v51);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v34 = v52;
    v35 = *&v52[*(v17 + 36) + 8];

    v36 = *&v34[*(v17 + 40) + 8];
  }

  else
  {
    v37 = v26;
    (*(v50 + 8))(v41[0], v51);
    v38 = *(v32 + 32);
    v39 = v43;
    v38(v43, v23, a2);
    v38(v37, v39, a2);
    v40 = v42;
    (*(v42 + 16))(v46, v37, v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v40 + 8))(v37, v17);
  }
}

uint64_t sub_1DABFC0A0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DABFC0F8(uint64_t a1)
{
  v2 = sub_1DABFE5FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABFC134(uint64_t a1)
{
  v2 = sub_1DABFE5FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABFC170@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DABFD554(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DABFC19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365746F7571 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DABFC220(uint64_t a1)
{
  v2 = sub_1DABFE918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABFC25C(uint64_t a1)
{
  v2 = sub_1DABFE918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABFC298@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DABFD6FC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DABFC338@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DABFC390(uint64_t a1)
{
  v2 = sub_1DABFEB48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABFC3CC(uint64_t a1)
{
  v2 = sub_1DABFEB48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABFC408@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DABFD8A4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DABFC434(uint64_t a1)
{
  v2 = sub_1DABFDCC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABFC470(uint64_t a1)
{
  v2 = sub_1DABFDCC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DABFC4AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DABFDB20(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DABFC4D8()
{
  v0 = sub_1DACBA1B4();

  if (v0 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v0;
  }
}

void *sub_1DABFC52C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v134 = a2;
  sub_1DABFEAE8(0, &qword_1EE126868, sub_1DABFDD70);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v44 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v226 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1DABFDD70();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v226);
  }

  v12 = v6;
  LOBYTE(v136) = 0;
  v13 = sub_1DACB9FA4();
  v15 = v14;
  v133 = v13;
  LOBYTE(v136) = 1;
  v16 = v9;
  v17 = sub_1DACB9F34();
  v18 = v5;
  v20 = v19;
  v21 = v17;
  LOBYTE(v136) = 2;
  v131 = sub_1DACB9F34();
  v132 = v22;
  LOBYTE(v136) = 17;
  v128 = sub_1DACB9F34();
  v130 = v23;
  LOBYTE(v136) = 18;
  v24 = sub_1DACB9F34();
  v129 = v25;
  v125 = v24;
  LOBYTE(v136) = 19;
  v124 = sub_1DACB9F34();
  v127 = v26;
  LOBYTE(v136) = 20;
  v121 = sub_1DACB9F34();
  v126 = v27;
  LOBYTE(v136) = 21;
  v28 = sub_1DACB9F34();
  v118 = v29;
  v119 = v28;
  v44 = v20;
  sub_1DABFDDDC(0, &qword_1EE126878);
  LOBYTE(v135[0]) = 3;
  v31 = v30;
  v123 = sub_1DABFDE2C(&qword_1EE126880, &qword_1EE126878);
  v122 = v16;
  sub_1DACB9F84();
  v117 = v136;
  v116 = v137;
  v115 = v138;
  v114 = v139;
  v113 = v140;
  LOBYTE(v135[0]) = 4;
  sub_1DACB9F84();
  v112 = v136;
  v111 = v137;
  v110 = v138;
  v109 = v139;
  v108 = v140;
  LOBYTE(v135[0]) = 5;
  sub_1DACB9F84();
  v106 = v137;
  v107 = v136;
  v104 = v139;
  v105 = v138;
  v103 = v140;
  LOBYTE(v135[0]) = 6;
  sub_1DACB9F84();
  v101 = v137;
  v102 = v136;
  v99 = v139;
  v100 = v138;
  v98 = v140;
  LOBYTE(v135[0]) = 7;
  sub_1DACB9F84();
  v96 = v137;
  v97 = v136;
  v94 = v139;
  v95 = v138;
  v93 = v140;
  LOBYTE(v135[0]) = 8;
  sub_1DACB9F84();
  v91 = v137;
  v92 = v136;
  v89 = v139;
  v90 = v138;
  v88 = v140;
  LOBYTE(v135[0]) = 9;
  sub_1DACB9F84();
  v86 = v137;
  v87 = v136;
  v84 = v139;
  v85 = v138;
  v83 = v140;
  LOBYTE(v135[0]) = 10;
  sub_1DACB9F84();
  v81 = v137;
  v82 = v136;
  v79 = v139;
  v80 = v138;
  v78 = v140;
  LOBYTE(v135[0]) = 11;
  v45 = v18;
  v120 = v31;
  sub_1DACB9F84();
  v76 = v137;
  v77 = v136;
  v74 = v139;
  v75 = v138;
  v73 = v140;
  sub_1DABFDDDC(0, &qword_1EE126888);
  LOBYTE(v135[0]) = 12;
  sub_1DABFDE2C(qword_1EE126890, &qword_1EE126888);
  sub_1DACB9F84();
  v71 = v137;
  v72 = v136;
  v69 = v139;
  v70 = v138;
  v68 = v140;
  LOBYTE(v135[0]) = 13;
  v32 = v45;
  v33 = v122;
  sub_1DACB9F84();
  v66 = v137;
  v67 = v136;
  v64 = v139;
  v65 = v138;
  v63 = v140;
  LOBYTE(v135[0]) = 14;
  sub_1DACB9F84();
  v61 = v137;
  v62 = v136;
  v59 = v139;
  v60 = v138;
  v58 = v140;
  LOBYTE(v135[0]) = 15;
  sub_1DACB9F84();
  v56 = v137;
  v57 = v136;
  v54 = v139;
  v55 = v138;
  v53 = v140;
  LOBYTE(v135[0]) = 16;
  sub_1DACB9F84();
  v51 = v137;
  v52 = v136;
  v49 = v139;
  v50 = v138;
  v48 = v140;
  LOBYTE(v136) = 22;
  v34 = sub_1DACB9F34();
  v46 = v35;
  v47 = v34;
  LOBYTE(v136) = 23;
  v123 = sub_1DACB9F34();
  v120 = v36;
  (*(v12 + 8))(v33, v32);
  v135[0] = v133;
  v135[1] = v15;
  v37 = v21;
  v135[2] = v21;
  v38 = v44;
  v135[3] = v44;
  v135[4] = v131;
  v39 = v132;
  v135[5] = v132;
  v135[6] = v117;
  v135[7] = v116;
  v135[8] = v115;
  v135[9] = v114;
  v135[10] = v113;
  v135[11] = v112;
  v135[12] = v111;
  v135[13] = v110;
  v135[14] = v109;
  v135[15] = v108;
  v135[16] = v107;
  v135[17] = v106;
  v135[18] = v105;
  v135[19] = v104;
  v135[20] = v103;
  v135[21] = v102;
  v135[22] = v101;
  v135[23] = v100;
  v135[24] = v99;
  v135[25] = v98;
  v135[26] = v97;
  v135[27] = v96;
  v135[28] = v95;
  v135[29] = v94;
  v135[30] = v93;
  v135[31] = v92;
  v135[32] = v91;
  v135[33] = v90;
  v135[34] = v89;
  v135[35] = v88;
  v135[36] = v87;
  v135[37] = v86;
  v135[38] = v85;
  v135[39] = v84;
  v135[40] = v83;
  v135[41] = v82;
  v135[42] = v81;
  v135[43] = v80;
  v135[44] = v79;
  v135[45] = v78;
  v135[46] = v77;
  v135[47] = v76;
  v135[48] = v75;
  v135[49] = v74;
  v135[50] = v73;
  v135[51] = v72;
  v135[52] = v71;
  v135[53] = v70;
  v135[54] = v69;
  v135[55] = v68;
  v135[56] = v67;
  v135[57] = v66;
  v135[58] = v65;
  v135[59] = v64;
  v135[60] = v63;
  v135[61] = v62;
  v135[62] = v61;
  v135[63] = v60;
  v135[64] = v59;
  v135[65] = v58;
  v135[66] = v57;
  v135[67] = v56;
  v135[68] = v55;
  v135[69] = v54;
  v135[70] = v53;
  v135[71] = v52;
  v135[72] = v51;
  v135[73] = v50;
  v135[74] = v49;
  v135[75] = v48;
  v135[76] = v128;
  v40 = v130;
  v135[77] = v130;
  v135[78] = v125;
  v41 = v129;
  v135[79] = v129;
  v135[80] = v124;
  v135[81] = v127;
  v42 = v121;
  v135[82] = v121;
  v135[83] = v126;
  v135[84] = v119;
  v135[85] = v118;
  v135[86] = v47;
  v135[87] = v46;
  v135[88] = v123;
  v135[89] = v120;
  sub_1DABFDE7C(v135, &v136);
  __swift_destroy_boxed_opaque_existential_1(v226);
  v136 = v133;
  v137 = v15;
  v138 = v37;
  v139 = v38;
  v140 = v131;
  v141 = v39;
  v142 = v117;
  v143 = v116;
  v144 = v115;
  v145 = v114;
  v146 = v113;
  v147 = v112;
  v148 = v111;
  v149 = v110;
  v150 = v109;
  v151 = v108;
  v152 = v107;
  v153 = v106;
  v154 = v105;
  v155 = v104;
  v156 = v103;
  v157 = v102;
  v158 = v101;
  v159 = v100;
  v160 = v99;
  v161 = v98;
  v162 = v97;
  v163 = v96;
  v164 = v95;
  v165 = v94;
  v166 = v93;
  v167 = v92;
  v168 = v91;
  v169 = v90;
  v170 = v89;
  v171 = v88;
  v172 = v87;
  v173 = v86;
  v174 = v85;
  v175 = v84;
  v176 = v83;
  v177 = v82;
  v178 = v81;
  v179 = v80;
  v180 = v79;
  v181 = v78;
  v182 = v77;
  v183 = v76;
  v184 = v75;
  v185 = v74;
  v186 = v73;
  v187 = v72;
  v188 = v71;
  v189 = v70;
  v190 = v69;
  v191 = v68;
  v192 = v67;
  v193 = v66;
  v194 = v65;
  v195 = v64;
  v196 = v63;
  v197 = v62;
  v198 = v61;
  v199 = v60;
  v200 = v59;
  v201 = v58;
  v202 = v57;
  v203 = v56;
  v204 = v55;
  v205 = v54;
  v206 = v53;
  v207 = v52;
  v208 = v51;
  v209 = v50;
  v210 = v49;
  v211 = v48;
  v212 = v128;
  v213 = v40;
  v214 = v125;
  v215 = v41;
  v216 = v124;
  v217 = v127;
  v218 = v42;
  v219 = v126;
  v220 = v119;
  v221 = v118;
  v222 = v47;
  v223 = v46;
  v224 = v123;
  v225 = v120;
  sub_1DABFDEB4(&v136);
  return memcpy(v134, v135, 0x2D0uLL);
}

void *sub_1DABFD554(uint64_t *a1)
{
  sub_1DABFEAE8(0, &qword_1EE126938, sub_1DABFE5FC);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABFE5FC();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABFE650();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

void *sub_1DABFD6FC(uint64_t *a1)
{
  sub_1DABFEAE8(0, &qword_1EE1269E0, sub_1DABFE918);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABFE918();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABFE96C();
    sub_1DACB9F84();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_1DABFD8A4(uint64_t *a1)
{
  sub_1DABFEAE8(0, &qword_1EE126A08, sub_1DABFEB48);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DABFEB48();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABFEC84(0, &qword_1EE126A18, MEMORY[0x1E69E62F8]);
    sub_1DABFEB9C();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_1DABFDB20(uint64_t *a1)
{
  sub_1DABFEAE8(0, &qword_1EE126850, sub_1DABFDCC8);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABFDCC8();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABFDD1C();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

unint64_t sub_1DABFDCC8()
{
  result = qword_1EE126858;
  if (!qword_1EE126858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126858);
  }

  return result;
}

unint64_t sub_1DABFDD1C()
{
  result = qword_1EE126860;
  if (!qword_1EE126860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126860);
  }

  return result;
}

unint64_t sub_1DABFDD70()
{
  result = qword_1EE126870;
  if (!qword_1EE126870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126870);
  }

  return result;
}

void sub_1DABFDDDC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for YahooQuoteDetailResponse.Value();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1DABFDE2C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DABFDDDC(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for YahooQuoteDetailResponse.Quote.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for YahooQuoteDetailResponse.Quote.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DABFE04C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DABFE0CC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1DABFE210(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_1DABFE3F0()
{
  result = qword_1ECBE8EA8;
  if (!qword_1ECBE8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8EA8);
  }

  return result;
}

unint64_t sub_1DABFE448()
{
  result = qword_1ECBE8EB0[0];
  if (!qword_1ECBE8EB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECBE8EB0);
  }

  return result;
}

unint64_t sub_1DABFE4A0()
{
  result = qword_1EE126918;
  if (!qword_1EE126918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126918);
  }

  return result;
}

unint64_t sub_1DABFE4F8()
{
  result = qword_1EE126920;
  if (!qword_1EE126920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126920);
  }

  return result;
}

unint64_t sub_1DABFE550()
{
  result = qword_1EE126928;
  if (!qword_1EE126928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126928);
  }

  return result;
}

unint64_t sub_1DABFE5A8()
{
  result = qword_1EE126930;
  if (!qword_1EE126930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126930);
  }

  return result;
}

unint64_t sub_1DABFE5FC()
{
  result = qword_1EE126940;
  if (!qword_1EE126940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126940);
  }

  return result;
}

unint64_t sub_1DABFE650()
{
  result = qword_1EE126948[0];
  if (!qword_1EE126948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE126948);
  }

  return result;
}

uint64_t sub_1DABFE6E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DABFE740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1DABFE7A4()
{
  result = qword_1ECBE8F38;
  if (!qword_1ECBE8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8F38);
  }

  return result;
}

unint64_t sub_1DABFE86C()
{
  result = qword_1EE1269D0;
  if (!qword_1EE1269D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1269D0);
  }

  return result;
}

unint64_t sub_1DABFE8C4()
{
  result = qword_1EE1269D8;
  if (!qword_1EE1269D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1269D8);
  }

  return result;
}

unint64_t sub_1DABFE918()
{
  result = qword_1EE1269E8;
  if (!qword_1EE1269E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1269E8);
  }

  return result;
}

unint64_t sub_1DABFE96C()
{
  result = qword_1EE1269F0;
  if (!qword_1EE1269F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1269F0);
  }

  return result;
}

unint64_t sub_1DABFE9E4()
{
  result = qword_1ECBE8F40;
  if (!qword_1ECBE8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8F40);
  }

  return result;
}

unint64_t sub_1DABFEA3C()
{
  result = qword_1EE1269F8;
  if (!qword_1EE1269F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1269F8);
  }

  return result;
}

unint64_t sub_1DABFEA94()
{
  result = qword_1EE126A00;
  if (!qword_1EE126A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126A00);
  }

  return result;
}

void sub_1DABFEAE8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1DACBA004();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DABFEB48()
{
  result = qword_1EE126A10;
  if (!qword_1EE126A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126A10);
  }

  return result;
}

unint64_t sub_1DABFEB9C()
{
  result = qword_1EE126A20;
  if (!qword_1EE126A20)
  {
    sub_1DABFEC84(255, &qword_1EE126A18, MEMORY[0x1E69E62F8]);
    sub_1DABFEC30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126A20);
  }

  return result;
}

unint64_t sub_1DABFEC30()
{
  result = qword_1EE126A28;
  if (!qword_1EE126A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126A28);
  }

  return result;
}

void sub_1DABFEC84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for YahooQuoteDetailResponse.Quote);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DABFECEC()
{
  result = qword_1ECBE8F48;
  if (!qword_1ECBE8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8F48);
  }

  return result;
}

unint64_t sub_1DABFED44()
{
  result = qword_1EE126A38;
  if (!qword_1EE126A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126A38);
  }

  return result;
}

unint64_t sub_1DABFED9C()
{
  result = qword_1EE126A40;
  if (!qword_1EE126A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126A40);
  }

  return result;
}

uint64_t sub_1DABFEE24()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  return v0;
}

uint64_t sub_1DABFEE64()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t sub_1DABFEEBC()
{
  v1 = *v0;
  if ((sub_1DAA64FC0() & 1) == 0)
  {
    return 0;
  }

  if ([v0[7] isPrivateDataSyncingAllowed])
  {
    return 1;
  }

  if (qword_1EE11D680 != -1)
  {
    swift_once();
  }

  sub_1DAA655A8();
  sub_1DACB7F84();
  return v3;
}

uint64_t sub_1DABFEF94()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1ECBE5A98 != -1)
  {
    swift_once();
  }

  v5 = v0[11];
  v6 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v5);
  (*(v6 + 8))(v5, v6);
  v7 = *(v4 + 518);
  v8 = v4[4152];
  sub_1DAA640AC(v4);
  if (v8)
  {
    v7 = 0;
  }

  [objc_opt_self() enabledForCurrentLevel_];
  v9 = sub_1DACB8004();

  return v9 & 1;
}

uint64_t sub_1DABFF0EC()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1ECBE5AA0 != -1)
  {
    swift_once();
  }

  v5 = v0[11];
  v6 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v5);
  (*(v6 + 8))(v5, v6);
  v7 = *(v4 + 520);
  v8 = v4[4168];
  sub_1DAA640AC(v4);
  if (v8)
  {
    v7 = 0;
  }

  [objc_opt_self() enabledForCurrentLevel_];
  v9 = sub_1DACB8004();

  return v9 & 1;
}

uint64_t sub_1DABFF244()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1ECBE5AA8 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v0[11];
  v7 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *(v4 + 531);
  sub_1DAA640AC(v4);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DABFF394()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D5A0 != -1)
  {
    swift_once();
  }

  v5 = v0[11];
  v6 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v5);
  (*(v6 + 8))(v5, v6);
  v7 = *(v4 + 524);
  v8 = v4[4200];
  sub_1DAA640AC(v4);
  if (v8)
  {
    v7 = 0;
  }

  [objc_opt_self() enabledForCurrentLevel_];
  v9 = sub_1DACB8004();

  return v9 & 1;
}

uint64_t sub_1DABFF4EC()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D5B0 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v0[11];
  v7 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *(v4 + 534);
  sub_1DAA640AC(v4);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DABFF63C()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE120058 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v0[11];
  v7 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *(v4 + 529);
  sub_1DAA640AC(v4);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DABFF78C()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D590 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v0[11];
  v7 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *(v4 + 171);
  sub_1DAA640AC(v4);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DABFF8DC()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D558 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v0[11];
  v7 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *(v4 + 172);
  sub_1DAA640AC(v4);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DABFFA2C()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D580 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v0[11];
  v7 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *&v4[*(v1 + 540)];
  sub_1DAA640AC(v4);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DABFFB90()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D540 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v0[11];
  v7 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *(v4 + 176);
  sub_1DAA640AC(v4);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DABFFCE0()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D518 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v0[11];
  v7 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *(v4 + 177);
  sub_1DAA640AC(v4);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DABFFE80()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1ECBE5AA8 != -1)
  {
    swift_once();
  }

  v6 = objc_opt_self();
  v7 = v5[11];
  v8 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v7);
  (*(v8 + 8))(v7, v8);
  v9 = *(v4 + 531);
  sub_1DAA640AC(v4);
  [v6 enabledForCurrentLevel_];
  LOBYTE(v9) = sub_1DACB8004();

  return v9 & 1;
}

uint64_t sub_1DABFFFF8()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D5B0 != -1)
  {
    swift_once();
  }

  v6 = objc_opt_self();
  v7 = v5[11];
  v8 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v7);
  (*(v8 + 8))(v7, v8);
  v9 = *(v4 + 534);
  sub_1DAA640AC(v4);
  [v6 enabledForCurrentLevel_];
  LOBYTE(v9) = sub_1DACB8004();

  return v9 & 1;
}

uint64_t sub_1DAC00148()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE120058 != -1)
  {
    swift_once();
  }

  v6 = objc_opt_self();
  v7 = v5[11];
  v8 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v7);
  (*(v8 + 8))(v7, v8);
  v9 = *(v4 + 529);
  sub_1DAA640AC(v4);
  [v6 enabledForCurrentLevel_];
  LOBYTE(v9) = sub_1DACB8004();

  return v9 & 1;
}

uint64_t sub_1DAC00298()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D590 != -1)
  {
    swift_once();
  }

  v6 = objc_opt_self();
  v7 = v5[11];
  v8 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v7);
  (*(v8 + 8))(v7, v8);
  v9 = *(v4 + 171);
  sub_1DAA640AC(v4);
  [v6 enabledForCurrentLevel_];
  LOBYTE(v9) = sub_1DACB8004();

  return v9 & 1;
}

uint64_t sub_1DAC003E8()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D558 != -1)
  {
    swift_once();
  }

  v6 = objc_opt_self();
  v7 = v5[11];
  v8 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v7);
  (*(v8 + 8))(v7, v8);
  v9 = *(v4 + 172);
  sub_1DAA640AC(v4);
  [v6 enabledForCurrentLevel_];
  LOBYTE(v9) = sub_1DACB8004();

  return v9 & 1;
}

uint64_t sub_1DAC00538()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D580 != -1)
  {
    swift_once();
  }

  v6 = objc_opt_self();
  v7 = v5[11];
  v8 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v7);
  (*(v8 + 8))(v7, v8);
  v9 = *&v4[*(v1 + 540)];
  sub_1DAA640AC(v4);
  [v6 enabledForCurrentLevel_];
  LOBYTE(v9) = sub_1DACB8004();

  return v9 & 1;
}

unint64_t sub_1DAC00810()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1DAB68788(MEMORY[0x1E69E7CC0]);
  result = sub_1DAB681FC(v0);
  qword_1EE11EDA8 = v1;
  *algn_1EE11EDB0 = result;
  return result;
}

uint64_t static StockPriceData.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE11EDA0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *algn_1EE11EDB0;
  *a1 = qword_1EE11EDA8;
  a1[1] = v1;
  sub_1DACB71E4();

  return sub_1DACB71E4();
}

unint64_t StockPriceData.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1DACB9C94();

  type metadata accessor for Quote();
  v3 = sub_1DACB9134();
  MEMORY[0x1E1276F20](v3);

  MEMORY[0x1E1276F20](0xD000000000000016, 0x80000001DACEE4D0);
  sub_1DAC00A1C();
  sub_1DAC00A84();
  sub_1DAA642D8();
  sub_1DACB71E4();
  v4 = sub_1DACB9554();
  v6 = v5;

  MEMORY[0x1E1276F20](v4, v6);

  MEMORY[0x1E1276F20](10589, 0xE200000000000000);
  return 0xD000000000000017;
}

void sub_1DAC00A1C()
{
  if (!qword_1ECBE8F50)
  {
    type metadata accessor for Chart(255);
    v0 = sub_1DACB9174();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8F50);
    }
  }
}

unint64_t sub_1DAC00A84()
{
  result = qword_1ECBE8F58;
  if (!qword_1ECBE8F58)
  {
    sub_1DAC00A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8F58);
  }

  return result;
}

StocksCore::StockPriceData __swiftcall StockPriceData.merge(other:)(StocksCore::StockPriceData other)
{
  v3 = v1;
  v4 = *other.quotes._rawValue;
  v5 = *(other.quotes._rawValue + 1);
  v6 = *v2;
  v7 = v2[1];
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v6;
  sub_1DAC014FC(v4, sub_1DAC00C04, 0, isUniquelyReferenced_nonNull_native, &v14);

  v9 = v14;
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v14 = v7;
  sub_1DAC019C8(v5, sub_1DAC00BDC, 0, v10, &v14);

  v12 = v14;
  *v3 = v9;
  v3[1] = v12;
  result.sparklines._rawValue = v11;
  result.quotes._rawValue = v12;
  return result;
}

uint64_t sub_1DAC00C2C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, unint64_t *a4@<X3>, void *a5@<X8>)
{
  sub_1DAC02090(0, a2, a3);
  v10 = *(v9 + 48);
  sub_1DAC01F5C(0, a4, a3);
  v13 = *a1;
  v12 = a1[1];
  sub_1DAA85FD8(a1 + v10, a5 + *(v11 + 48), a3);
  *a5 = v13;
  a5[1] = v12;

  return sub_1DACB71E4();
}

uint64_t sub_1DAC00CB4@<X0>(uint64_t a1@<X8>)
{
  sub_1DAC02090(0, &qword_1EE11FC10, type metadata accessor for Chart);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v44 - v5;
  v6 = type metadata accessor for Chart(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC01E94(0, &qword_1EE11FC08, &qword_1EE11FC10, type metadata accessor for Chart, sub_1DAC02090);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v44 - v16);
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v49 = a1;
  v47 = v21;
  if (v22)
  {
    v23 = v20;
LABEL_10:
    v27 = (v22 - 1) & v22;
    v28 = __clz(__rbit64(v22)) | (v23 << 6);
    v29 = (*(v18 + 48) + 16 * v28);
    v30 = *v29;
    v31 = v29[1];
    sub_1DAA85FD8(*(v18 + 56) + *(v7 + 72) * v28, v10, type metadata accessor for Chart);
    v32 = v46;
    v33 = *(v46 + 48);
    *v17 = v30;
    v17[1] = v31;
    v34 = v32;
    sub_1DAC01FC0(v10, v17 + v33, type metadata accessor for Chart);
    v35 = v45;
    (*(v45 + 56))(v17, 0, 1, v34);
    sub_1DACB71E4();
    v26 = v23;
LABEL_11:
    *v1 = v18;
    v1[1] = v19;
    v36 = v48;
    v1[2] = v47;
    v1[3] = v26;
    v1[4] = v27;
    v37 = v1[5];
    v38 = v1[6];
    sub_1DAC020F8(v17, v36, &qword_1EE11FC08, &qword_1EE11FC10, type metadata accessor for Chart);
    v39 = 1;
    v40 = (*(v35 + 48))(v36, 1, v34);
    v41 = v49;
    if (v40 != 1)
    {
      v42 = v44;
      sub_1DAC01EF0(v36, v44, &qword_1EE11FC10, type metadata accessor for Chart);
      v37(v42);
      sub_1DAC0217C(v42, &qword_1EE11FC10, type metadata accessor for Chart);
      v39 = 0;
    }

    sub_1DAC01F5C(0, &qword_1EE11FBD8, type metadata accessor for Chart);
    return (*(*(v43 - 8) + 56))(v41, v39, 1, v43);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v35 = v45;
        v34 = v46;
        (*(v45 + 56))(&v44 - v16, 1, 1, v46);
        v27 = 0;
        goto LABEL_11;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}