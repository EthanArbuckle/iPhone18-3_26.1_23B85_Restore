size_t sub_1A3FA24EC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3FA3CC8(0, &qword_1EB12F718, MEMORY[0x1E6982B58], MEMORY[0x1E69E6F90]);
  v10 = *(sub_1A5247784() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1A5247784() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1A3FA26E8()
{
  sub_1A3CB4D08();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A5247704();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A40593DC();
  swift_beginAccess();
  v10 = *(v2 + 16);
  v10(v4, v9, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11 = *(v6 + 8);
  v11(v8, v5);
  if (qword_1EB16E6B0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_1EB1EAF88);
  swift_beginAccess();
  v10(v4, v12, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11(v8, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FA29B0(uint64_t a1)
{
  v2 = sub_1A5247784();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA3B9C();
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v30 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v32 = MEMORY[0x1E69E7CC0];
  sub_1A3FA24CC(0, 0, 0);
  v11 = v32;
  v29 = *(a1 + 16);
  if (v29)
  {
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v15 = *(v13 + 56);
    v27 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v28 = v14;
    v16 = a1 + v27;
    v25 = (v13 + 16);
    v26 = v15;
    do
    {
      v17 = v30;
      v18 = *(v31 + 48);
      *v30 = v12;
      v19 = v13;
      v28(v17 + v18, v16, v2);
      sub_1A3FA3C08(v17, v10);
      sub_1A5247774();
      sub_1A3FA3C6C(v10);
      v32 = v11;
      v20 = v2;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1A3FA24CC(v21 > 1, v22 + 1, 1);
        v11 = v32;
      }

      ++v12;
      *(v11 + 16) = v22 + 1;
      v23 = v26;
      (*v25)(v11 + v27 + v22 * v26, v5, v20);
      v16 += v23;
      v2 = v20;
      v13 = v19;
    }

    while (v29 != v12);
  }

  return v11;
}

uint64_t sub_1A3FA2C14()
{
  v0 = sub_1A5247784();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C634();
  v5 = PXLocalizedString(v4);

  v6 = sub_1A524C674();
  v8 = v7;

  v13[0] = v6;
  v13[1] = v8;
  sub_1A3D5F9DC();
  sub_1A5247764();
  sub_1A3FA3CC8(0, &qword_1EB12F718, MEMORY[0x1E6982B58], MEMORY[0x1E69E6F90]);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F8E10;
  (*(v1 + 32))(v10 + v9, v3, v0);
  v11 = sub_1A3FA29B0(v10);
  swift_setDeallocating();
  (*(v1 + 8))(v10 + v9, v0);
  swift_deallocClassInstance();
  return v11;
}

void sub_1A3FA2E24()
{
  sub_1A3CB4D08();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A5247704();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A40593DC();
  swift_beginAccess();
  v10 = *(v2 + 16);
  v10(v4, v9, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11 = *(v6 + 8);
  v11(v8, v5);
  if (qword_1EB170CA8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_1EB1EAFD8);
  swift_beginAccess();
  v10(v4, v12, v1);
  sub_1A5247724();
  sub_1A52474F4();
  v11(v8, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FA30EC()
{
  sub_1A3FA39A0();
  v1 = *(v0 - 8);
  v58 = v0;
  v59 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v55 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CB99D8();
  v54 = v3;
  v57 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CBA0BC();
  v51 = v5;
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1A52476E4();
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CBA198(0, &unk_1EB124A08, MEMORY[0x1E6982B28]);
  v50 = v9;
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v45 - v10;
  v11 = sub_1A5247584();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CBA198(0, &qword_1EB128BA0, MEMORY[0x1E6982A98]);
  v61 = v15;
  v49 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v45 - v16;
  v17 = sub_1A52475E4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E6982AC0];
  sub_1A3CBA198(0, &qword_1EB128B98, MEMORY[0x1E6982AC8]);
  v23 = v22;
  v48 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v45 - v24;
  sub_1A52475D4();
  MEMORY[0x1A59028B0](v20, v17, v21);
  (*(v18 + 8))(v20, v17);
  sub_1A5247594();
  MEMORY[0x1A59028B0](v14, v11, MEMORY[0x1E6982A88]);
  (*(v12 + 8))(v14, v11);
  sub_1A52475D4();
  v26 = v46;
  v27 = MEMORY[0x1E6982B20];
  MEMORY[0x1A59028B0](v8, v46, MEMORY[0x1E6982B20]);
  v28 = v26;
  (*(v47 + 8))(v8, v26);
  v64 = v17;
  v65 = MEMORY[0x1E6982AC0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v23;
  MEMORY[0x1A59028E0](v25, v23, OpaqueTypeConformance2);
  v64 = v23;
  v65 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v64 = v11;
  v65 = MEMORY[0x1E6982A88];
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v52;
  v33 = v51;
  v34 = v61;
  sub_1A5247564();
  v64 = v33;
  v65 = v34;
  v66 = v30;
  v67 = v31;
  v35 = swift_getOpaqueTypeConformance2();
  v64 = v28;
  v65 = v27;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v55;
  v38 = v32;
  v39 = v62;
  v40 = v54;
  v41 = v50;
  sub_1A5247564();
  v64 = v40;
  v65 = v41;
  v66 = v35;
  v67 = v36;
  swift_getOpaqueTypeConformance2();
  v42 = v58;
  v43 = sub_1A5247554();
  (*(v59 + 8))(v37, v42);
  (*(v57 + 8))(v38, v40);
  (*(v56 + 8))(v63, v33);
  (*(v53 + 8))(v39, v41);
  (*(v49 + 8))(v60, v61);
  (*(v48 + 8))(v25, v45);
  return v43;
}

unint64_t sub_1A3FA38D4()
{
  result = qword_1EB125BB8;
  if (!qword_1EB125BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125BB8);
  }

  return result;
}

unint64_t sub_1A3FA392C()
{
  result = qword_1EB125DF8;
  if (!qword_1EB125DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125DF8);
  }

  return result;
}

void sub_1A3FA39A0()
{
  if (!qword_1EB1249F8)
  {
    sub_1A3CB99D8();
    sub_1A3CBA198(255, &unk_1EB124A08, MEMORY[0x1E6982B28]);
    sub_1A3CBA0BC();
    sub_1A3CBA198(255, &qword_1EB128BA0, MEMORY[0x1E6982A98]);
    sub_1A3CBA198(255, &qword_1EB128B98, MEMORY[0x1E6982AC8]);
    sub_1A52475E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A5247584();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A52476E4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1249F8);
    }
  }
}

void sub_1A3FA3B9C()
{
  if (!qword_1EB12F720)
  {
    sub_1A5247784();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12F720);
    }
  }
}

uint64_t sub_1A3FA3C08(uint64_t a1, uint64_t a2)
{
  sub_1A3FA3B9C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3FA3C6C(uint64_t a1)
{
  sub_1A3FA3B9C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3FA3CC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3FA3D60(uint64_t a1, uint64_t a2, char a3)
{
  v3[2] = sub_1A524CC54();
  v3[3] = sub_1A524CC44();
  sub_1A3FA4F30();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_1A3FA3E34;

  return static UIApplication.navigate(to:options:ignoreNavigationFailure:)(a1, a2, a3);
}

uint64_t sub_1A3FA3E34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1A524CBC4();
    v7 = v6;
    v8 = sub_1A3DDDDF0;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1A524CBC4();
    v7 = v9;
    v8 = sub_1A3FA3FB4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1A3FA3FB4()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_1A3FA401C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_1A524CC54();
  v3[3] = sub_1A524CC44();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_1A3DDF8E8;

  return sub_1A42A90DC(a1, a2, a3);
}

uint64_t sub_1A3FA40FC(uint64_t a1)
{
  v1[2] = sub_1A524CC54();
  v1[3] = sub_1A524CC44();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1A3DDF8E8;

  return sub_1A42A9B08(a1);
}

uint64_t sub_1A3FA41C4()
{
  v0[2] = sub_1A524CC54();
  v0[3] = sub_1A524CC44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DDDC30;

  return sub_1A42A7CD0();
}

uint64_t sub_1A3FA427C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1A524CC54();
  v4[3] = sub_1A524CC44();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_1A3DDF8E8;

  return sub_1A42A8B54(a1, a2 & 1, a3, a4);
}

uint64_t sub_1A3FA4364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1A524CC54();
  v4[3] = sub_1A524CC44();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_1A3DDF8E8;

  return sub_1A42A9EC8(a1, a2, a3, a4);
}

uint64_t sub_1A3FA444C(char a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v7 + 176) = a2;
  *(v7 + 184) = v6;
  *(v7 + 160) = a5;
  *(v7 + 168) = a6;
  *(v7 + 144) = a3;
  *(v7 + 152) = a4;
  *(v7 + 225) = a1;
  sub_1A524CC54();
  *(v7 + 192) = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  *(v7 + 200) = v9;
  *(v7 + 208) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A3FA44F0, v9, v8);
}

uint64_t sub_1A3FA44F0()
{
  v1 = qword_1A530D8B8[*(v0 + 225)];
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(*(v0 + 184) + OBJC_IVAR____TtC12PhotosUICore17PhotosPPTTestCase_testRunner);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 224;
  *(v0 + 24) = sub_1A3FA4654;
  v8 = swift_continuation_init();
  sub_1A3FA4F7C();
  *(v0 + 136) = v9;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1A3FA485C;
  *(v0 + 104) = &block_descriptor_61;
  *(v0 + 112) = v8;
  [v5 swipeTowardsEdge:v1 touchArea:v2 inCoordinateSpace:v0 + 80 completionHandler:{v7, v6, v4, v3}];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1A3FA4654()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);
  if (v2)
  {
    v5 = sub_1A3FA47E8;
  }

  else
  {
    v5 = sub_1A3FA4784;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3FA4784()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3FA47E8()
{

  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3FA485C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1A3DBD9A0();
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1A3FA4948(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_1A524E5E4();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();
  sub_1A524CC54();
  *(v1 + 48) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v1 + 56) = v4;
  *(v1 + 64) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3FA4A3C, v4, v3);
}

uint64_t sub_1A3FA4A3C()
{
  v1 = sub_1A524EE14();
  v3 = v2;
  sub_1A524EBB4();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1A3FA4B18;

  return sub_1A3DCFAB0(v1, v3, 0, 0, 1);
}

uint64_t sub_1A3FA4B18()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_1A3FA4D1C;
  }

  else
  {
    v8 = sub_1A3FA4CB0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A3FA4CB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3FA4D1C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1A3FA4DE0(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A3DE0CA0(a1, v3 + OBJC_IVAR____TtC12PhotosUICore17PhotosPPTTestCase_testRunner);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1A3DE0D04(a1);
  return v4;
}

id sub_1A3FA4E54(uint64_t a1)
{
  sub_1A3DE0CA0(a1, v1 + OBJC_IVAR____TtC12PhotosUICore17PhotosPPTTestCase_testRunner);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PhotosPPTTestCase();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1A3DE0D04(a1);
  return v3;
}

id sub_1A3FA4EE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosPPTTestCase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A3FA4F30()
{
  result = qword_1EB12F728;
  if (!qword_1EB12F728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB12F728);
  }

  return result;
}

void sub_1A3FA4F7C()
{
  if (!qword_1EB131250)
  {
    sub_1A3DBD9A0();
    v0 = sub_1A524CDF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB131250);
    }
  }
}

uint64_t type metadata accessor for PhotosPPTTestCase()
{
  result = qword_1EB19E3E0;
  if (!qword_1EB19E3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A3FA5034()
{
  result = qword_1EB12F730;
  if (!qword_1EB12F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F730);
  }

  return result;
}

uint64_t sub_1A3FA5090()
{
  result = type metadata accessor for PhotosPPTTestRunner();
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

uint64_t sub_1A3FA5130@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E31270(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView();
  sub_1A3FAAD38(v1 + *(v10 + 28), v9, sub_1A3E31270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for PhotosDetailsSavedFromAppsWidgetView()
{
  result = qword_1EB18F1C0;
  if (!qword_1EB18F1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3FA53AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3FA5410@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1A530D8E0;
  *(a1 + 16) = 0x4028000000000000;
  v2 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView();
  v3 = v2[7];
  *(a1 + v3) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v4 = v2[8];
  *(a1 + v4) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  v5 = (a1 + v2[9]);
  type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel();
  sub_1A3FAA5BC(&qword_1EB125E58, type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel);
  result = sub_1A5248494();
  *v5 = result;
  v5[1] = v7;
  return result;
}

uint64_t sub_1A3FA5510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  sub_1A3FA8BC4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FAA714(0, &qword_1EB12F918, sub_1A3FA835C, sub_1A3FA8BC4, MEMORY[0x1E697F948]);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v96 - v8;
  v111 = sub_1A5249764();
  v9 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v107 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1A52486A4();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8554();
  v99 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3FA850C(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v100 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FAA714(0, &qword_1EB12F760, sub_1A3FA850C, sub_1A3EC447C, MEMORY[0x1E697E830]);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v96 - v20;
  sub_1A3FA8468();
  v108 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA835C();
  v109 = v23;
  v106 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView();
  v26 = a1;
  v27 = *(a1 + *(v25 + 36) + 8);
  v28 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v27) + 0x140))() == 5)
  {
    *v15 = sub_1A524BC74();
    v15[1] = v29;
    sub_1A3FAA798(0, &qword_1EB12F928, sub_1A3FA85E8);
    v31 = v15 + *(v30 + 44);
    v96 = v26;
    sub_1A3FA60F8(v26, v31);
    v32 = sub_1A44070D4();
    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0;
    }

    v35 = 0xE000000000000000;
    if (v33)
    {
      v35 = v33;
    }

    *&v118 = v34;
    *(&v118 + 1) = v35;
    sub_1A3D5F9DC();
    v36 = sub_1A524A464();
    v38 = v37;
    v98 = v4;
    v40 = v39;
    v97 = v9;
    sub_1A3FAA5BC(&qword_1EB12F7F0, sub_1A3FA8554);
    v41 = v100;
    sub_1A524AAB4();
    sub_1A3E04DF4(v36, v38, v40 & 1);

    sub_1A3FAA99C(v15, sub_1A3FA8554);
    v42 = v101;
    v43 = &v101[*(v19 + 36)];
    v44 = *(sub_1A5248A14() + 20);
    v45 = *MEMORY[0x1E697F468];
    v46 = sub_1A52494A4();
    (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
    __asm { FMOV            V0.2D, #16.0 }

    *v43 = _Q0;
    sub_1A3EC447C();
    v43[*(v52 + 36)] = 0;
    sub_1A3CD13D8(v41, v42);
    sub_1A3FA5130(v12);
    sub_1A4394B64(v12, v25, &off_1EE6D7980);
    v53 = *(v103 + 8);
    v54 = v104;
    v53(v12, v104);
    sub_1A3FA5130(v12);
    v55 = sub_1A4394B64(v12, v25, &off_1EE6D7980);
    (v53)(v12, v54, v55);
    sub_1A524BC74();
    sub_1A52481F4();
    v56 = v102;
    sub_1A3CD143C(v42, v102);
    v57 = v108;
    v58 = (v56 + *(v108 + 36));
    v59 = v119;
    *v58 = v118;
    v58[1] = v59;
    v58[2] = v120;
    v60 = v107;
    sub_1A5248B84();
    v61 = sub_1A3FAA418(&qword_1EB12F7D8, sub_1A3FA8468, sub_1A3FA89F0);
    v62 = sub_1A3FAA5BC(&qword_1EB122360, MEMORY[0x1E697C658]);
    v63 = v105;
    v64 = v111;
    sub_1A524A974();
    (*(v97 + 8))(v60, v64);
    sub_1A3FAA99C(v56, sub_1A3FA8468);
    v65 = v106;
    v66 = v109;
    (*(v106 + 16))(v112, v63, v109);
    swift_storeEnumTagMultiPayload();
    v114 = v57;
    v115 = v64;
    v116 = v61;
    v117 = v62;
    swift_getOpaqueTypeConformance2();
    sub_1A3FAA418(&qword_1EB12F8F8, sub_1A3FA8BC4, sub_1A3FAA498);
    sub_1A5249744();
    return (*(v65 + 8))(v63, v66);
  }

  else
  {
    *v6 = sub_1A5249574();
    *(v6 + 1) = 0;
    v6[16] = 0;
    sub_1A3FAA798(0, &qword_1EB12F920, sub_1A3FA8CFC);
    sub_1A3FA7394(v26, &v6[*(v68 + 44)]);
    sub_1A3FAA714(0, &qword_1EB12F800, sub_1A3FA8C68, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v70 = &v6[*(v69 + 36)];
    sub_1A4110614(v27);
    v71 = sub_1A524BC74();
    v73 = v72;
    sub_1A3FA9268();
    v75 = &v70[*(v74 + 36)];
    *v75 = v71;
    v75[1] = v73;
    v76 = (*((*v28 & *v27) + 0xC0))();
    [v76 contentGuideInsets];
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;

    v85 = EdgeInsets.init(_:)(v78, v80, v82, v84);
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = sub_1A524A064();
    v93 = &v6[*(v4 + 36)];
    *v93 = v92;
    *(v93 + 1) = v85;
    *(v93 + 2) = v87;
    *(v93 + 3) = v89;
    *(v93 + 4) = v91;
    v93[40] = 0;
    sub_1A3FAA934(v6, v112, sub_1A3FA8BC4);
    swift_storeEnumTagMultiPayload();
    v94 = sub_1A3FAA418(&qword_1EB12F7D8, sub_1A3FA8468, sub_1A3FA89F0);
    v95 = sub_1A3FAA5BC(&qword_1EB122360, MEMORY[0x1E697C658]);
    *&v118 = v108;
    *(&v118 + 1) = v111;
    *&v119 = v94;
    *(&v119 + 1) = v95;
    swift_getOpaqueTypeConformance2();
    sub_1A3FAA418(&qword_1EB12F8F8, sub_1A3FA8BC4, sub_1A3FAA498);
    sub_1A5249744();
    return sub_1A3FAA99C(v6, sub_1A3FA8BC4);
  }
}

uint64_t sub_1A3FA60F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v75 = sub_1A52489A4();
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView();
  v66 = *(v4 - 8);
  v65 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA87E0();
  v7 = *(v6 - 8);
  v72 = v6;
  v73 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA86B4(0);
  v74 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v63 - v12;
  v13 = sub_1A52486A4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC3E2C(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v63 - v21;
  v67 = *(a1 + *(v4 + 36) + 8);
  sub_1A4110614(v67);
  v22 = a1;
  sub_1A3FA5130(v16);
  sub_1A4394B64(v16, v4, &off_1EE6D7980);
  v23 = *(v14 + 8);
  v23(v16, v13);
  sub_1A3FA5130(v16);
  v24 = sub_1A4394B64(v16, v4, &off_1EE6D7980);
  (v23)(v16, v13, v24);
  sub_1A524BC74();
  sub_1A52481F4();
  v25 = v63;
  v26 = &v63[*(v18 + 44)];
  v27 = v81;
  *v26 = v80;
  *(v26 + 1) = v27;
  *(v26 + 2) = v82;
  v28 = v64;
  sub_1A3FAAD38(a1, v64, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  v29 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v30 = swift_allocObject();
  sub_1A3FA9F40(v28, v30 + v29, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  v79 = v22;
  sub_1A3FA8874();
  sub_1A3FAA5BC(&qword_1EB12F7C0, sub_1A3FA8874);
  v31 = v68;
  sub_1A524B704();
  v32 = v71;
  sub_1A5248994();
  sub_1A3FAA5BC(&qword_1EB12F7C8, sub_1A3FA87E0);
  sub_1A3FAA5BC(&qword_1EB122F70, MEMORY[0x1E697C248]);
  v33 = v69;
  v34 = v72;
  v35 = v75;
  sub_1A524A934();
  (*(v77 + 8))(v32, v35);
  v36 = (*(v73 + 8))(v31, v34);
  v37 = (*((*MEMORY[0x1E69E7D40] & *v67) + 0xC0))(v36);
  [v37 contentGuideInsets];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = EdgeInsets.init(_:)(v39, v41, v43, v45);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = sub_1A524A064();
  v54 = v33 + *(v74 + 44);
  *v54 = v53;
  *(v54 + 8) = v46;
  *(v54 + 16) = v48;
  *(v54 + 24) = v50;
  *(v54 + 32) = v52;
  *(v54 + 40) = 0;
  v55 = v25;
  v56 = v25;
  v57 = v70;
  sub_1A3FAA934(v55, v70, sub_1A3EC3E2C);
  v58 = v33;
  v59 = v76;
  sub_1A3FAA934(v33, v76, sub_1A3FA86B4);
  v60 = v78;
  sub_1A3FAA934(v57, v78, sub_1A3EC3E2C);
  sub_1A3FA861C(0);
  sub_1A3FAA934(v59, v60 + *(v61 + 48), sub_1A3FA86B4);
  sub_1A3FAA99C(v58, sub_1A3FA86B4);
  sub_1A3FAA99C(v56, sub_1A3EC3E2C);
  sub_1A3FAA99C(v59, sub_1A3FA86B4);
  return sub_1A3FAA99C(v57, sub_1A3EC3E2C);
}

uint64_t sub_1A3FA6890()
{
  v1 = sub_1A5248334();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v23 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v22 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = objc_opt_self();
  v9 = sub_1A524C634();
  sub_1A3F37DA4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v11;
  v12 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView();
  v28[3] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_1A3FAAD38(v0, boxed_opaque_existential_1, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  String.init(forType:)(v28);
  v14 = sub_1A524C634();

  *(inited + 48) = v14;
  *(inited + 56) = sub_1A524C674();
  *(inited + 64) = v15;
  v16 = *(v12 + 36);
  v24 = v0;
  *(inited + 72) = (*((*MEMORY[0x1E69E7D40] & **(v0 + v16 + 8)) + 0x88))();
  sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A3FAA9FC(0, &qword_1EB126F80, sub_1A3C7B6A4);
  swift_arrayDestroy();
  sub_1A3C7B6A4();
  v17 = sub_1A524C3D4();

  [v27 sendEvent:v9 withPayload:v17];

  sub_1A44069A0(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1A3FAADA0(v5, sub_1A3EE53E0);
  }

  v19 = v22;
  (*(v7 + 32))(v22, v5, v6);
  v20 = v23;
  sub_1A3EE4C48(v23);
  sub_1A5248304();
  (*(v25 + 8))(v20, v26);
  return (*(v7 + 8))(v19, v6);
}

uint64_t sub_1A3FA6C94@<X0>(uint64_t a1@<X8>)
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524A274();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA7018(v42);
  v33 = v42[0];
  type metadata accessor for PhotosDetailsSavedFromAppsWidgetView();
  sub_1A4406DDC(v11);
  v12 = sub_1A524A454();
  v31 = v13;
  v32 = v14;
  v16 = v15;
  KeyPath = swift_getKeyPath();
  (*(v6 + 104))(v8, *MEMORY[0x1E6980F18], v5);
  v18 = sub_1A524A154();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  sub_1A524A1A4();
  v19 = sub_1A524A1C4();
  sub_1A3FAADA0(v4, sub_1A3E75D84);
  (*(v6 + 8))(v8, v5);
  v20 = swift_getKeyPath();
  v16 &= 1u;
  LOBYTE(v42[0]) = v16;
  v21 = sub_1A524B4A4();
  v22 = swift_getKeyPath();
  v23 = *v36;
  *(&v38 + 1) = *v36;
  DWORD1(v38) = *&v36[3];
  v24 = *v35;
  *(&v39 + 9) = *v35;
  HIDWORD(v39) = *&v35[3];
  v25 = v31;
  v26 = v32;
  *&v37 = v12;
  *(&v37 + 1) = v31;
  LOBYTE(v38) = v16;
  *(&v38 + 1) = v32;
  *&v39 = KeyPath;
  BYTE8(v39) = 1;
  *&v40 = v20;
  *(&v40 + 1) = v19;
  *&v41 = v22;
  *(&v41 + 1) = v21;
  *a1 = v33;
  v27 = v38;
  *(a1 + 8) = v37;
  v28 = v39;
  v29 = v40;
  *(a1 + 72) = v41;
  *(a1 + 56) = v29;
  *(a1 + 40) = v28;
  *(a1 + 24) = v27;
  v42[0] = v12;
  v42[1] = v25;
  v43 = v16;
  *&v44[3] = *&v36[3];
  *v44 = v23;
  v45 = v26;
  v46 = KeyPath;
  v47 = 1;
  *&v48[3] = *&v35[3];
  *v48 = v24;
  v49 = v20;
  v50 = v19;
  v51 = v22;
  v52 = v21;

  sub_1A3FAAD38(&v37, &v34, sub_1A3EC42B0);
  sub_1A3FAADA0(v42, sub_1A3EC42B0);
}

void sub_1A3FA7018(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1A3FA92E4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1A524B554();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + *(type metadata accessor for PhotosDetailsSavedFromAppsWidgetView() + 36) + 8);
  v12 = sub_1A44066C0();
  if (v12)
  {
    v13 = v12;
    sub_1A524B524();
    (*(v8 + 104))(v10, *MEMORY[0x1E6981630], v7);
    v14 = sub_1A524B5C4();

    (*(v8 + 8))(v10, v7);
    v15 = sub_1A524B484();
    KeyPath = swift_getKeyPath();
    v17 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x140);
    v17();
    v17();
    sub_1A524BC74();
    sub_1A52481F4();
    v26 = 1;
    v21[1] = v14;
    v21[2] = 0;
    v22 = 257;
    v23 = KeyPath;
    v24 = v15;
    v25 = 256;
    sub_1A3FAA714(0, &qword_1EB12F8C8, sub_1A3F2F0CC, sub_1A3FA95D4, MEMORY[0x1E697E830]);
    sub_1A3FA9DC0();
    v18 = sub_1A524B8E4();
  }

  else
  {
    *v6 = sub_1A524BC74();
    v6[1] = v19;
    sub_1A3FAA798(0, &qword_1EB12F8B8, sub_1A3FA9378);
    sub_1A3FA9630(v2, v6 + *(v20 + 44));
    sub_1A3FAA5BC(&qword_1EB12F8C0, sub_1A3FA92E4);
    v18 = sub_1A524B8E4();
  }

  *a1 = v18;
}

uint64_t sub_1A3FA7394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView();
  v4 = v3 - 8;
  v90 = *(v3 - 8);
  v89 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA53AC(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v86 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v83 - v9;
  sub_1A3FAAA68();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v83 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8DDC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v85 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8DB4(0);
  v95 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8D8C(0);
  v93 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v83 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v83 - v21;
  v87 = sub_1A524B9A4();
  v22 = *(v87 - 1);
  MEMORY[0x1EEE9AC00](v87);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE16E8(0);
  v26 = v25 - 8;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8D64(0);
  v30 = v29 - 8;
  MEMORY[0x1EEE9AC00](v29);
  v91 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v83 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v83 - v36;
  v38 = sub_1A524B994();
  if ((*((*MEMORY[0x1E69E7D40] & **(a1 + *(v4 + 44) + 8)) + 0x108))(v38))
  {
    v39 = 0.8;
  }

  else
  {
    v39 = 0.0;
  }

  (*(v22 + 32))(v28, v24, v87);
  *&v28[*(v26 + 44)] = v39;
  v40 = sub_1A524A094();
  v41 = *(a1 + 8);
  sub_1A5247BC4();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_1A3FA9F40(v28, v34, sub_1A3EE16E8);
  v50 = &v34[*(v30 + 44)];
  *v50 = v40;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  v87 = v37;
  sub_1A3FA9F40(v34, v37, sub_1A3FA8D64);
  v51 = v83;
  sub_1A3FA7D4C(v83);
  sub_1A3FAA714(0, &qword_1EB12F838, sub_1A3FA8E84, sub_1A3FA8F78, MEMORY[0x1E697E830]);
  (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  v53 = v84;
  sub_1A4406DDC(v84);
  v54 = sub_1A52407E4();
  v55 = *(*(v54 - 8) + 56);
  v55(v53, 0, 1, v54);
  v56 = v86;
  v55(v86, 1, 1, v54);
  v57 = sub_1A44070D4();
  v59 = v58;
  v60 = a1;
  v61 = v88;
  sub_1A3FAAD38(a1, v88, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  v62 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v63 = swift_allocObject();
  v64 = v63 + v62;
  v65 = v85;
  sub_1A3FA9F40(v61, v64, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  sub_1A3FA900C();
  sub_1A42F9768(v51, v53, 0, 0, 0, v56, v57, v59, v65, sub_1A3FAAE04, v63, 3);
  sub_1A3FAACE8(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v67 = sub_1A524A094();
  *(inited + 32) = v67;
  v68 = sub_1A524A0B4();
  *(inited + 33) = v68;
  v69 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v67)
  {
    v69 = sub_1A524A0A4();
  }

  sub_1A524A0A4();
  if (sub_1A524A0A4() != v68)
  {
    v69 = sub_1A524A0A4();
  }

  v70 = v94;
  sub_1A3FA9F40(v65, v94, sub_1A3FA8DDC);
  *(v70 + *(v95 + 36)) = v69;
  v71 = *(v60 + 16);
  v72 = sub_1A524A064();
  v73 = v70;
  v74 = v92;
  sub_1A3FA9F40(v73, v92, sub_1A3FA8DB4);
  v75 = v74 + *(v93 + 36);
  *v75 = v72;
  *(v75 + 8) = v71;
  *(v75 + 16) = v41;
  *(v75 + 24) = v71;
  *(v75 + 32) = v41;
  *(v75 + 40) = 0;
  v76 = v96;
  sub_1A3FA9F40(v74, v96, sub_1A3FA8D8C);
  v77 = v87;
  v78 = v91;
  sub_1A3FAAD38(v87, v91, sub_1A3FA8D64);
  v79 = v97;
  sub_1A3FAAD38(v76, v97, sub_1A3FA8D8C);
  v80 = v98;
  sub_1A3FAAD38(v78, v98, sub_1A3FA8D64);
  sub_1A3FA8D30(0);
  sub_1A3FAAD38(v79, v80 + *(v81 + 48), sub_1A3FA8D8C);
  sub_1A3FAADA0(v76, sub_1A3FA8D8C);
  sub_1A3FAADA0(v77, sub_1A3FA8D64);
  sub_1A3FAADA0(v79, sub_1A3FA8D8C);
  return sub_1A3FAADA0(v78, sub_1A3FA8D64);
}

uint64_t sub_1A3FA7D4C@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v54 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v54);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524B554();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8E84(0);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for PhotosDetailsSavedFromAppsWidgetView() + 36);
  v53 = v1;
  v12 = *(v1 + v11 + 8);
  if (sub_1A44066C0())
  {
    v13 = sub_1A524B524();
  }

  else
  {
    v13 = sub_1A524B544();
  }

  v51 = v13;
  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);

  v50 = sub_1A524B5C4();

  (*(v5 + 8))(v7, v4);
  v14 = objc_opt_self();
  v15 = [v14 tertiarySystemFillColor];
  v49 = sub_1A524B284();
  KeyPath = swift_getKeyPath();
  v16 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x140);
  v16();
  v16();
  sub_1A524BC74();
  sub_1A52481F4();
  v59 = 1;
  v17 = *v53;
  v18 = &v10[*(v52 + 36)];
  v19 = v54;
  v20 = *(v54 + 20);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1A52494A4();
  v23 = *(*(v22 - 8) + 104);
  v23(&v18[v20], v21, v22);
  *v18 = v17;
  *(v18 + 1) = v17;
  sub_1A3E42C88();
  *&v18[*(v24 + 36)] = 256;
  v25 = v57;
  *(v10 + 40) = v56;
  *v10 = v50;
  *(v10 + 1) = 0;
  *(v10 + 8) = 257;
  v26 = v49;
  *(v10 + 3) = KeyPath;
  *(v10 + 4) = v26;
  *(v10 + 56) = v25;
  *(v10 + 72) = v58;
  v23(&v3[*(v19 + 20)], v21, v22);
  *v3 = v17;
  *(v3 + 1) = v17;
  v27 = [v14 secondarySystemFillColor];
  v28 = sub_1A524B284();
  sub_1A5247EE4();
  sub_1A3FAA714(0, &qword_1EB12F838, sub_1A3FA8E84, sub_1A3FA8F78, MEMORY[0x1E697E830]);
  v30 = v55;
  v31 = v55 + *(v29 + 36);
  sub_1A3FAAD38(v3, v31, MEMORY[0x1E697EAF0]);
  sub_1A3E44D10();
  v33 = v31 + *(v32 + 36);
  v34 = v61;
  *v33 = v60;
  *(v33 + 16) = v34;
  *(v33 + 32) = v62;
  sub_1A3E44DA4();
  *(v31 + *(v35 + 52)) = v28;
  *(v31 + *(v35 + 56)) = 256;
  v36 = sub_1A524BC74();
  v38 = v37;
  sub_1A3FAADA0(v3, MEMORY[0x1E697EAF0]);
  sub_1A3E44E54();
  v40 = (v31 + *(v39 + 36));
  *v40 = v36;
  v40[1] = v38;
  v41 = sub_1A524BC74();
  v43 = v42;

  sub_1A3FA8F78();
  v45 = (v31 + *(v44 + 36));
  *v45 = v41;
  v45[1] = v43;
  return sub_1A3FA9F40(v10, v30, sub_1A3FA8E84);
}

void sub_1A3FA82C0()
{
  if (!qword_1EB12F740)
  {
    sub_1A3FAA714(255, &qword_1EB12F748, sub_1A3FA835C, sub_1A3FA8BC4, MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F740);
    }
  }
}

void sub_1A3FA835C()
{
  if (!qword_1EB12F750)
  {
    sub_1A3FA8468();
    sub_1A5249764();
    sub_1A3FAA418(&qword_1EB12F7D8, sub_1A3FA8468, sub_1A3FA89F0);
    sub_1A3FAA5BC(&qword_1EB122360, MEMORY[0x1E697C658]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F750);
    }
  }
}

void sub_1A3FA8468()
{
  if (!qword_1EB12F758)
  {
    sub_1A3FAA714(255, &qword_1EB12F760, sub_1A3FA850C, sub_1A3EC447C, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F758);
    }
  }
}

void sub_1A3FA8554()
{
  if (!qword_1EB12F770)
  {
    sub_1A3FA85E8(255);
    sub_1A3FAA5BC(&qword_1EB12F7D0, sub_1A3FA85E8);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F770);
    }
  }
}

void sub_1A3FA8650(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3FA86DC()
{
  if (!qword_1EB12F790)
  {
    sub_1A3FA87E0();
    sub_1A52489A4();
    sub_1A3FAA5BC(&qword_1EB12F7C8, sub_1A3FA87E0);
    sub_1A3FAA5BC(&qword_1EB122F70, MEMORY[0x1E697C248]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F790);
    }
  }
}

void sub_1A3FA87E0()
{
  if (!qword_1EB12F798)
  {
    sub_1A3FA8874();
    sub_1A3FAA5BC(&qword_1EB12F7C0, sub_1A3FA8874);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F798);
    }
  }
}

void sub_1A3FA8874()
{
  if (!qword_1EB12F7A0)
  {
    sub_1A3FA8908();
    sub_1A3FAA5BC(&qword_1EB12F7B8, sub_1A3FA8908);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F7A0);
    }
  }
}

void sub_1A3FA8908()
{
  if (!qword_1EB12F7A8)
  {
    sub_1A3FAA9FC(255, &qword_1EB12F7B0, sub_1A3EC42B0);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F7A8);
    }
  }
}

void sub_1A3FA8984(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3FAACE8(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A3FA89F0()
{
  result = qword_1EB12F7E0;
  if (!qword_1EB12F7E0)
  {
    sub_1A3FAA714(255, &qword_1EB12F760, sub_1A3FA850C, sub_1A3EC447C, MEMORY[0x1E697E830]);
    sub_1A3FA8AE4();
    sub_1A3FAA5BC(&qword_1EB122308, sub_1A3EC447C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F7E0);
  }

  return result;
}

unint64_t sub_1A3FA8AE4()
{
  result = qword_1EB12F7E8;
  if (!qword_1EB12F7E8)
  {
    sub_1A3FA850C(255);
    sub_1A3FAA5BC(&qword_1EB12F7F0, sub_1A3FA8554);
    sub_1A3FAA5BC(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F7E8);
  }

  return result;
}

void sub_1A3FA8BC4()
{
  if (!qword_1EB12F7F8)
  {
    sub_1A3FAA714(255, &qword_1EB12F800, sub_1A3FA8C68, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F7F8);
    }
  }
}

void sub_1A3FA8C68()
{
  if (!qword_1EB12F808)
  {
    sub_1A3FA8CFC(255);
    sub_1A3FAA5BC(&qword_1EB12F878, sub_1A3FA8CFC);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F808);
    }
  }
}

void sub_1A3FA8DDC()
{
  if (!qword_1EB12F830)
  {
    sub_1A3FAA714(255, &qword_1EB12F838, sub_1A3FA8E84, sub_1A3FA8F78, MEMORY[0x1E697E830]);
    sub_1A3FA900C();
    v0 = type metadata accessor for PhotosDetailsDiscoverableView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F830);
    }
  }
}

void sub_1A3FA8ECC()
{
  if (!qword_1EB12EA88)
  {
    sub_1A3FA9EEC(255, &qword_1EB128580, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A3FA8984(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EA88);
    }
  }
}

void sub_1A3FA8F78()
{
  if (!qword_1EB12F848)
  {
    sub_1A3E356AC();
    sub_1A3FAA5BC(&qword_1EB1280A8, sub_1A3E356AC);
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F848);
    }
  }
}

unint64_t sub_1A3FA900C()
{
  result = qword_1EB12F850;
  if (!qword_1EB12F850)
  {
    sub_1A3FAA714(255, &qword_1EB12F838, sub_1A3FA8E84, sub_1A3FA8F78, MEMORY[0x1E697E830]);
    sub_1A3FA9100();
    sub_1A3FAA5BC(&qword_1EB12F870, sub_1A3FA8F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F850);
  }

  return result;
}

unint64_t sub_1A3FA9100()
{
  result = qword_1EB12F858;
  if (!qword_1EB12F858)
  {
    sub_1A3FA8E84(255);
    sub_1A3FAA418(&qword_1EB12F860, sub_1A3F2F0CC, sub_1A3FA91E8);
    sub_1A3FAA5BC(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F858);
  }

  return result;
}

unint64_t sub_1A3FA91E8()
{
  result = qword_1EB12F868;
  if (!qword_1EB12F868)
  {
    sub_1A3FA8ECC();
    sub_1A3E44C04();
    sub_1A3F94B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F868);
  }

  return result;
}

void sub_1A3FA9268()
{
  if (!qword_1EB13D7A0)
  {
    sub_1A3EC3E68();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13D7A0);
    }
  }
}

void sub_1A3FA92E4()
{
  if (!qword_1EB12F880)
  {
    sub_1A3FA9378(255);
    sub_1A3FAA5BC(&qword_1EB12F8B0, sub_1A3FA9378);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F880);
    }
  }
}

void sub_1A3FA93E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A3FA945C()
{
  if (!qword_1EB12F898)
  {
    sub_1A3FAA714(255, &qword_1EB12F8A0, sub_1A3FA9500, sub_1A3FA95D4, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F898);
    }
  }
}

void sub_1A3FA9500()
{
  if (!qword_1EB12F8A8)
  {
    sub_1A524BBF4();
    sub_1A3FA9580();
    v0 = sub_1A5247D54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F8A8);
    }
  }
}

unint64_t sub_1A3FA9580()
{
  result = qword_1EB127420;
  if (!qword_1EB127420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127420);
  }

  return result;
}

void sub_1A3FA95D4()
{
  if (!qword_1EB1289E0)
  {
    sub_1A3FA9580();
    v0 = sub_1A5247FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1289E0);
    }
  }
}

uint64_t sub_1A3FA9630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1A524B554();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FAA714(0, &qword_1EB12F8A0, sub_1A3FA9500, sub_1A3FA95D4, MEMORY[0x1E697E830]);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  sub_1A3FA945C();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v40 - v17;
  sub_1A524BBD4();
  sub_1A3FA9500();
  *&v9[*(v18 + 56)] = 256;
  *&v9[*(v7 + 44)] = 256;
  v19 = *((*MEMORY[0x1E69E7D40] & **(a1 + *(type metadata accessor for PhotosDetailsSavedFromAppsWidgetView() + 36) + 8)) + 0x140);
  v19();
  v19();
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A3FAA66C(v9, v15);
  v20 = &v15[*(v11 + 44)];
  v21 = v58;
  *v20 = v57;
  *(v20 + 1) = v21;
  *(v20 + 2) = v59;
  v22 = v40;
  sub_1A3FA9F40(v15, v40, sub_1A3FA945C);
  sub_1A524B574();
  v24 = v41;
  v23 = v42;
  (*(v41 + 104))(v5, *MEMORY[0x1E6981630], v42);
  v25 = sub_1A524B5C4();

  v26 = (*(v24 + 8))(v5, v23);
  (v19)(v26);
  v19();
  sub_1A524BC74();
  sub_1A52481F4();
  v56 = 1;
  *&v55[6] = v60;
  *&v55[22] = v61;
  *&v55[38] = v62;
  v27 = sub_1A524B434();
  KeyPath = swift_getKeyPath();
  v29 = v22;
  v30 = v22;
  v31 = v43;
  sub_1A3FAAD38(v29, v43, sub_1A3FA945C);
  v32 = v44;
  sub_1A3FAAD38(v31, v44, sub_1A3FA945C);
  sub_1A3FA93AC(0);
  v34 = v32 + *(v33 + 48);
  v45[0] = v25;
  v45[1] = 0;
  LOWORD(v46[0]) = 1;
  *(v46 + 2) = *v55;
  *(&v46[1] + 2) = *&v55[16];
  *(&v46[2] + 2) = *&v55[32];
  *&v46[3] = *&v55[46];
  *(&v46[3] + 1) = KeyPath;
  v47 = v27;
  v35 = v46[0];
  *v34 = v25;
  *(v34 + 16) = v35;
  v36 = v46[1];
  v37 = v46[2];
  v38 = v46[3];
  *(v34 + 80) = v27;
  *(v34 + 48) = v37;
  *(v34 + 64) = v38;
  *(v34 + 32) = v36;
  sub_1A3FAAD38(v45, v48, sub_1A3E33E34);
  sub_1A3FAADA0(v30, sub_1A3FA945C);
  v48[0] = v25;
  v48[1] = 0;
  v49 = 1;
  v50 = *v55;
  v51 = *&v55[16];
  *v52 = *&v55[32];
  *&v52[14] = *&v55[46];
  v53 = KeyPath;
  v54 = v27;
  sub_1A3FAADA0(v48, sub_1A3E33E34);
  return sub_1A3FAADA0(v31, sub_1A3FA945C);
}

uint64_t sub_1A3FA9B84@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1A530D8E0;
  *(a2 + 16) = 0x4028000000000000;
  v4 = a1[7];
  *(a2 + v4) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v5 = a1[8];
  *(a2 + v5) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  v6 = (a2 + a1[9]);
  type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel();
  sub_1A3FAA5BC(&qword_1EB125E58, type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel);
  result = sub_1A5248494();
  *v6 = result;
  v6[1] = v8;
  return result;
}

void sub_1A3FA9C8C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A3FA5510(v2, a2);
  sub_1A3FAAD38(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1A3FA9F40(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  sub_1A3FA8298(0);
  v9 = (a2 + *(v8 + 36));
  *v9 = sub_1A3FAAE00;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
}

unint64_t sub_1A3FA9DC0()
{
  result = qword_1EB12F8D0;
  if (!qword_1EB12F8D0)
  {
    sub_1A3FAA714(255, &qword_1EB12F8C8, sub_1A3F2F0CC, sub_1A3FA95D4, MEMORY[0x1E697E830]);
    sub_1A3FAA418(&qword_1EB12F860, sub_1A3F2F0CC, sub_1A3FA91E8);
    sub_1A3FAA5BC(&qword_1EB1245F8, sub_1A3FA95D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F8D0);
  }

  return result;
}

void sub_1A3FA9EEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A3FA9F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3FA9FA8(uint64_t a1)
{
  result = sub_1A3FAA5BC(&qword_1EB12F8D8, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView);
  *(a1 + 8) = result;
  return result;
}

void sub_1A3FAA044()
{
  sub_1A3FA53AC(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A3FA53AC(319, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A3FAA158();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A3FAA158()
{
  if (!qword_1EB1243A0)
  {
    type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel();
    sub_1A3FAA5BC(&qword_1EB125E58, type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel);
    v0 = sub_1A52484C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1243A0);
    }
  }
}

unint64_t sub_1A3FAA1EC()
{
  result = qword_1EB12F8E8;
  if (!qword_1EB12F8E8)
  {
    sub_1A3FA82C0();
    sub_1A3FAA264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F8E8);
  }

  return result;
}

unint64_t sub_1A3FAA264()
{
  result = qword_1EB12F8F0;
  if (!qword_1EB12F8F0)
  {
    sub_1A3FAA714(255, &qword_1EB12F748, sub_1A3FA835C, sub_1A3FA8BC4, MEMORY[0x1E697F960]);
    sub_1A3FA8468();
    sub_1A5249764();
    sub_1A3FAA418(&qword_1EB12F7D8, sub_1A3FA8468, sub_1A3FA89F0);
    sub_1A3FAA5BC(&qword_1EB122360, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    sub_1A3FAA418(&qword_1EB12F8F8, sub_1A3FA8BC4, sub_1A3FAA498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F8F0);
  }

  return result;
}

uint64_t sub_1A3FAA418(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3FAA498()
{
  result = qword_1EB12F900;
  if (!qword_1EB12F900)
  {
    sub_1A3FAA714(255, &qword_1EB12F800, sub_1A3FA8C68, sub_1A3FA9268, MEMORY[0x1E697E830]);
    sub_1A3FAA5BC(&qword_1EB12F908, sub_1A3FA8C68);
    sub_1A3FAA5BC(&qword_1EB12F910, sub_1A3FA9268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F900);
  }

  return result;
}

uint64_t sub_1A3FAA5BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3FAA66C(uint64_t a1, uint64_t a2)
{
  sub_1A3FAA714(0, &qword_1EB12F8A0, sub_1A3FA9500, sub_1A3FA95D4, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A3FAA714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A3FAA798(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1A3FAA808@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5249574();
  v9 = 0;
  sub_1A3FA6C94(v8);
  v12 = *&v8[32];
  v13 = *&v8[48];
  v14 = *&v8[64];
  v15 = *&v8[80];
  v10 = *v8;
  v11 = *&v8[16];
  v17 = *&v8[80];
  v16[2] = *&v8[32];
  v16[3] = *&v8[48];
  v16[4] = *&v8[64];
  v16[0] = *v8;
  v16[1] = *&v8[16];
  sub_1A3FAAD38(&v10, &v7, sub_1A3FA8908);
  sub_1A3FAADA0(v16, sub_1A3FA8908);
  *&v8[39] = v12;
  *&v8[55] = v13;
  *&v8[71] = v14;
  *&v8[87] = v15;
  *&v8[7] = v10;
  *&v8[23] = v11;
  *(a1 + 49) = *&v8[32];
  v3 = *&v8[64];
  *(a1 + 65) = *&v8[48];
  *(a1 + 81) = v3;
  *(a1 + 96) = *&v8[79];
  result = *&v8[16];
  v5 = *v8;
  *(a1 + 33) = *&v8[16];
  v6 = v9;
  *a1 = v2;
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  return result;
}

uint64_t sub_1A3FAA934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3FAA99C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3FAA9FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A3FAAA68()
{
  if (!qword_1EB12F930)
  {
    sub_1A3FAA714(255, &qword_1EB12F838, sub_1A3FA8E84, sub_1A3FA8F78, MEMORY[0x1E697E830]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F930);
    }
  }
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[7];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[8];
  sub_1A3FA5378(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248334();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A3FAACE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3FAAD38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3FAADA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3FAAE08()
{
  sub_1A3FAAF54();
  MEMORY[0x1EEE9AC00](v0);
  v2 = v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[3] = sub_1A524B544();
  v5[1] = sub_1A3C38BD4();
  v5[2] = v3;
  sub_1A3D5F9DC();
  sub_1A524AC94();

  sub_1A5248744();
  return sub_1A3FAB1F4(v2);
}

void sub_1A3FAAF54()
{
  if (!qword_1EB128528)
  {
    sub_1A5249F54();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128528);
    }
  }
}

unint64_t sub_1A3FAAFB4()
{
  result = qword_1EB123CD0;
  if (!qword_1EB123CD0)
  {
    sub_1A3FAAF54();
    sub_1A3FAB148(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123CD0);
  }

  return result;
}

uint64_t sub_1A3FAB080()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1A3FAAF54();
  sub_1A3FAAFB4();

  return sub_1A524B704();
}

uint64_t sub_1A3FAB148(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3FAB190()
{
  if (!qword_1EB12F940)
  {
    sub_1A3FAAF54();
    sub_1A3FAAFB4();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F940);
    }
  }
}

uint64_t sub_1A3FAB1F4(uint64_t a1)
{
  sub_1A3FAAF54();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3FAB33C(unint64_t a1)
{
  swift_getObjectType();
  *(v1 + OBJC_IVAR___PXSocialGroupRejectGroupAction_socialGroups) = a1;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

void sub_1A3FAB598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = a3;
  v19 = v11;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A3C2E0D0;
  v17 = a4;
  v12 = _Block_copy(&v14);

  v18 = a1;
  v19 = a2;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A3D6084C;
  v17 = a5;
  v13 = _Block_copy(&v14);

  [v5 performChanges:v12 completionHandler:v13];
  _Block_release(v13);
  _Block_release(v12);
}

void sub_1A3FAB6F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = *(Strong + OBJC_IVAR___PXSocialGroupRejectGroupAction_socialGroups);
  if (v2 >> 62)
  {
    v3 = sub_1A524E2B4();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_6:

    return;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_4:
  objc_opt_self();
  if (v3 >= 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
}

unint64_t sub_1A3FABA8C()
{
  result = qword_1EB126C28;
  if (!qword_1EB126C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126C28);
  }

  return result;
}

void sub_1A3FABAF4()
{
  swift_getKeyPath();
  (*(*v0 + 176))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FABB68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3FABD08(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC12PhotosUICore42GenerativeStoryInternalSuggestionViewModel__cachePromptSuggestion) = MEMORY[0x1E69E7CC0];
  sub_1A5241604();
  *(v4 + OBJC_IVAR____TtC12PhotosUICore42GenerativeStoryInternalSuggestionViewModel_photoLibrary) = a1;
  v5 = OBJC_IVAR____TtC12PhotosUICore42GenerativeStoryInternalSuggestionViewModel_logger;
  v6 = sub_1A5246F24();
  (*(*(v6 - 8) + 32))(v4 + v5, a2, v6);
  return v4;
}

uint64_t sub_1A3FABDC0()
{
  v1[6] = v0;
  sub_1A3C562DC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v1[7] = swift_task_alloc();
  sub_1A3FACBC4(0);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = sub_1A524CC54();
  v1[14] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v1[15] = v5;
  v1[16] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A3FABF28, v5, v4);
}

uint64_t sub_1A3FABF28()
{
  v1 = *(v0 + 48);
  sub_1A5244D64();
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore42GenerativeStoryInternalSuggestionViewModel_photoLibrary);
  *(v0 + 136) = sub_1A5244D44();
  *(v0 + 144) = 0;
  *(v0 + 184) = *(*(v0 + 64) + 48);
  sub_1A3FAD088(&qword_1EB12F960, MEMORY[0x1E69C1200]);
  v4 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3FAC19C, v4, v3);
}

uint64_t sub_1A3FAC19C()
{
  v1 = *(v0 + 144);
  v2 = sub_1A5244D54();
  *(v0 + 152) = v1;
  if (v1)
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v7 = sub_1A3FAC400;
  }

  else
  {
    v8 = *(v0 + 64);
    *(v0 + 160) = v4;
    *(v0 + 168) = v3;
    *(v0 + 176) = v2;
    *(v0 + 188) = *(v8 + 64);
    *(v0 + 192) = *(v8 + 80);
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v7 = sub_1A3FAC24C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A3FAC24C()
{
  v2 = *(v0 + 188);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v17 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);

  *v6 = v4;
  *(v6 + v2) = v3;
  *(v6 + v1) = v5;
  v10 = sub_1A524CCB4();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1A3FACD50(v6, v7);

  v11 = sub_1A524CC44();
  v12 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v11;
  v13[3] = v14;
  v13[4] = v9;
  sub_1A3FACDB4(v7, v13 + v12);
  sub_1A3D4D930(0, 0, v8, &unk_1A530DB78, v13);

  sub_1A3FACEF0(v6);

  v15 = *(v0 + 8);

  return v15();
}

void sub_1A3FAC400()
{

  v1 = *(v0 + 152);
  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D244();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    swift_slowAlloc();
    *v5 = 136315138;
    swift_getErrorValue();
    sub_1A524EBE4();
    sub_1A3C2EF94();
  }

  sub_1A3FABBE0();
}

uint64_t sub_1A3FAC5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1A3FACBC4(0);
  v5[4] = v6;
  v5[5] = swift_task_alloc();
  sub_1A524CC54();
  v5[6] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3FAC67C, v8, v7);
}

void sub_1A3FAC67C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  sub_1A3FACD50(v2, v1);
  sub_1A3FABBE0();
}

uint64_t sub_1A3FAC870()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore42GenerativeStoryInternalSuggestionViewModel_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12PhotosUICore42GenerativeStoryInternalSuggestionViewModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3FAC96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5244A54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1A3FAD088(&qword_1EB124C70, MEMORY[0x1E69C10C8]);
    v22 = sub_1A524C594();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_1A3FACBC4(uint64_t a1)
{
  if (!qword_1EB12F950)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1A3C562DC(255, &qword_1EB12F958, MEMORY[0x1E69C10C8], MEMORY[0x1E69E62F8]);
    sub_1A3C562DC(255, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB12F950);
    }
  }
}

uint64_t sub_1A3FACD50(uint64_t a1, uint64_t a2)
{
  sub_1A3FACBC4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3FACDB4(uint64_t a1, uint64_t a2)
{
  sub_1A3FACBC4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3FACE18()
{
  sub_1A3FACBC4(0);
  v3 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A3FAC5B4(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_1A3FACEF0(uint64_t a1)
{
  sub_1A3FACBC4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for GenerativeStoryInternalSuggestionViewModel()
{
  result = qword_1EB15D420;
  if (!qword_1EB15D420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3FACFA0()
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

uint64_t sub_1A3FAD088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Int.divided(by:rounding:)(uint64_t result, _BYTE *a2, uint64_t a3)
{
  if (!*a2)
  {
    goto LABEL_10;
  }

  if (*a2 != 1)
  {
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v3 = a3 + result;
    if (__OFADD__(a3, result))
    {
      goto LABEL_32;
    }

    a3 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (!result)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v3 != 0x8000000000000001 || result != -1)
    {
      return a3 / result;
    }

    __break(1u);
LABEL_10:
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (result)
      {
        return a3 / result;
      }

      __break(1u);
LABEL_13:
      if ((a3 & 0x8000000000000000) == 0)
      {
        v4 = __OFADD__(a3, result / 2);
        a3 += result / 2;
        if (!v4)
        {
          if (result)
          {
            if (a3 != 0x8000000000000000 || result != -1)
            {
              return a3 / result;
            }

LABEL_40:
            __break(1u);
            return result;
          }

          goto LABEL_35;
        }

        goto LABEL_33;
      }

      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v4 = __OFSUB__(0, a3);
  v5 = -a3;
  if (v4)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = 0;
  v6 = Int.divided(by:rounding:)(result, &v12, v5);
  v4 = __OFSUB__(0, v6);
  result = -v6;
  if (!v4)
  {
    return result;
  }

  __break(1u);
LABEL_24:
  v4 = __OFSUB__(0, a3);
  v7 = -a3;
  if (v4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v11 = 1;
  v8 = Int.divided(by:rounding:)(result, &v11, v7);
  v4 = __OFSUB__(0, v8);
  result = -v8;
  if (v4)
  {
    __break(1u);
LABEL_28:
    v4 = __OFSUB__(0, a3);
    v9 = -a3;
    if (v4)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v13 = 2;
    v10 = Int.divided(by:rounding:)(result, &v13, v9);
    v4 = __OFSUB__(0, v10);
    result = -v10;
    if (!v4)
    {
      return result;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  return result;
}

uint64_t Int.RoundingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t OptionSetIterator.init(element:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OptionSetIterator();
  v7 = a3 + *(v6 + 36);
  *v7 = 0;
  *(v7 + 8) = 1;
  *(a3 + *(v6 + 40)) = 1;
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, a1, a2);
}

uint64_t sub_1A3FAD348(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v7 + *(v6 + 44));
  if (v8[8] != 1)
  {
    return *v8;
  }

  (*(v2 + 16))(v5, v3);
  v9 = *(a1 + 16);
  sub_1A524C9C4();
  (*(*(v9 - 8) + 8))(v5, v9);
  result = v12;
  *v8 = v12;
  v8[8] = 0;
  return result;
}

uint64_t OptionSetIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_1A3FAD348(a1))
  {
    while (1)
    {
      v5 = sub_1A3FAD348(a1);
      v6 = *(v2 + *(a1 + 40));
      if ((v6 & v5) != 0)
      {
        break;
      }

      v7 = *(a1 + 16);
      v8 = type metadata accessor for OptionSetIterator();
      *(v2 + *(v8 + 40)) *= 2;
      if (!sub_1A3FAD348(a1))
      {
        goto LABEL_6;
      }
    }

    v11 = sub_1A3FAD348(a1);
    v12 = v2 + *(a1 + 36);
    *v12 = v11 & ~v6;
    *(v12 + 8) = 0;
    sub_1A524C9D4();
    result = type metadata accessor for OptionSetIterator();
    *(v2 + *(result + 40)) *= 2;
  }

  else
  {
    v7 = *(a1 + 16);
LABEL_6:
    v9 = *(*(v7 - 8) + 56);

    return v9(a2, 1, 1, v7);
  }

  return result;
}

uint64_t OptionSet<>.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, a1, v6);
  v9 = type metadata accessor for OptionSetIterator();
  v10 = a2 + *(v9 + 36);
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a2 + *(v9 + 40)) = 1;
  return (*(v5 + 32))(a2, v8, a1);
}

uint64_t OptionSet<>.toggling(_:)()
{
  sub_1A524C9C4();
  sub_1A524C9C4();
  return sub_1A524EE64();
}

uint64_t OptionSet<>.toggle(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 32))(v7, v2, a2, v5);
  OptionSet<>.toggling(_:)();
  return (*(v4 + 8))(v7, a2);
}

unint64_t sub_1A3FAD86C()
{
  result = qword_1EB12F970;
  if (!qword_1EB12F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F970);
  }

  return result;
}

void sub_1A3FAD8D0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A3FADBE8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A3FAD960(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1A3FADA64(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void sub_1A3FADBE8()
{
  if (!qword_1EB126D60)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126D60);
    }
  }
}

void *sub_1A3FADC38()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB129630, type metadata accessor for LemonadeSuggestedSearchCollection);
  sub_1A52415D4();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_1A3FADCE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB129630, type metadata accessor for LemonadeSuggestedSearchCollection);
  sub_1A52415D4();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1A3FADD98(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3FADDC8(v1);
}

void sub_1A3FADDC8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C45350(&qword_1EB129630, type metadata accessor for LemonadeSuggestedSearchCollection);
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126660);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

uint64_t sub_1A3FADF58()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB129630, type metadata accessor for LemonadeSuggestedSearchCollection);
  sub_1A52415D4();

  return *(v0 + 24);
}

uint64_t sub_1A3FADFF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB129630, type metadata accessor for LemonadeSuggestedSearchCollection);
  sub_1A52415D4();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1A3FAE0C8(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C45350(&qword_1EB129630, type metadata accessor for LemonadeSuggestedSearchCollection);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A3FAE1D8()
{
  if (*(v0 + 56) != 1)
  {
    return 0;
  }

  v1 = *(v0 + 40);
  if (v1 == sub_1A52403B4())
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A3FAE220()
{
  v1 = *(v0 + 32);
  if (*(v0 + 56))
  {
    v2 = v1;
    v3 = sub_1A524C634();
    v4 = PXLocalizedString(v3);

    sub_1A524C674();
    sub_1A3C71138(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1A52F8E10;
    v6 = [v2 string];
    v7 = sub_1A524C674();
    v9 = v8;

    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1A3D710E8();
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    v10 = sub_1A524C6C4();
  }

  else
  {
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = [v1 localizedTitle];
    if (v13)
    {
      v14 = v13;
      v10 = sub_1A524C674();

      sub_1A3FAE3DC(v1, v12, v11, 0);
    }

    else
    {
      sub_1A3FAE3DC(v1, v12, v11, 0);
      return 0;
    }
  }

  return v10;
}

void sub_1A3FAE3DC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

void *sub_1A3FAE428()
{
  if (*(v0 + 56) != 1)
  {
    return 0;
  }

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1A3FAE464()
{
  v1 = *(v0 + 32);
  if (*(v0 + 56))
  {
    v2 = v1;
    strcpy(v15, "user-search-");
    BYTE5(v15[1]) = 0;
    HIWORD(v15[1]) = -5120;
    v3 = [v2 string];
    v4 = sub_1A524C674();
    v6 = v5;

    MEMORY[0x1A5907B60](v4, v6);
  }

  else
  {
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = v1;
    sub_1A524E404();

    v15[0] = 0xD000000000000011;
    v15[1] = 0x80000001A53BFEA0;
    v10 = [v9 uuid];
    v11 = sub_1A524C674();
    v13 = v12;

    MEMORY[0x1A5907B60](v11, v13);

    sub_1A3FAE3DC(v1, v8, v7, 0);
  }

  return v15[0];
}

uint64_t sub_1A3FAE5D8()
{
  sub_1A3FAE3DC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = OBJC_IVAR____TtC12PhotosUICore33LemonadeSuggestedSearchCollection___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3FAE68C(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v7 = 1;
  }

  else
  {
    v2 = sub_1A3FAE464();
    v4 = v3;
    if (v2 == sub_1A3FAE464() && v4 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_1A524EAB4();
    }
  }

  return v7 & 1;
}

uint64_t sub_1A3FAE724()
{
  sub_1A524EC94();
  sub_1A3FAE464();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3FAE784()
{
  sub_1A3FAE464();
  sub_1A524C794();
}

uint64_t sub_1A3FAE7D8()
{
  sub_1A524EC94();
  sub_1A3FAE464();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3FAE834@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3FAE464();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t LemonadeSuggestedSearchQueryFetcher.initialSuggestionGroup.getter@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  if (*(*(v1 + 88) + 16))
  {
    swift_getKeyPath();
    sub_1A52415D4();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  return result;
}

void sub_1A3FAE988()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3FAEA2C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  *a2 = *(v3 + 88);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FAEAD8()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415C4();
}

uint64_t LemonadeSuggestedSearchQueryFetcher.topRecentSuggestionGroup.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *(sub_1A3FAED00() + 16);

  if (v4)
  {
    v6 = sub_1A3FAED00();
    swift_getKeyPath();
    *&v14[0] = v2;
    sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
    sub_1A52415D4();

    v7 = *(v2 + 160);
    v8 = swift_allocObject();
    swift_weakInit();
    result = sub_1A3DA27E4(v6, v7, sub_1A3FB00D8, v8, v14);
    v9 = v14[0];
    v10 = v14[1];
    v11 = v14[2];
    v12 = v14[3];
    v13 = v14[4];
  }

  else
  {
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a1 = v9;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v12;
  a1[4] = v13;
  return result;
}

uint64_t sub_1A3FAED00()
{
  swift_getKeyPath();
  *&v28[0] = v0;
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  i = *(v0 + 96);
  v3 = i >> 62;
  if (!(i >> 62))
  {
    result = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result >= v5)
    {
      goto LABEL_6;
    }

LABEL_51:
    __break(1u);
    return result;
  }

  v26 = sub_1A524E2B4();
  if (sub_1A524E2B4() < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v26 >= 3)
  {
    v27 = 3;
  }

  else
  {
    v27 = v26;
  }

  if (v26 >= 0)
  {
    v5 = v27;
  }

  else
  {
    v5 = 3;
  }

  result = sub_1A524E2B4();
  if (result < v5)
  {
    goto LABEL_51;
  }

LABEL_6:
  if ((i & 0xC000000000000001) != 0 && v5)
  {
    type metadata accessor for LemonadeSuggestedSearchCollection(0);
    swift_bridgeObjectRetain_n();
    sub_1A524E464();
    if (v5 != 1)
    {
      sub_1A524E464();
      if (v5 != 2)
      {
        sub_1A524E464();
      }
    }
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  if (v3)
  {
    v6 = sub_1A524E754();
    v1 = v8;
    v3 = v9;
    v7 = v10;

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = (i & 0xFFFFFFFFFFFFFF8);
    v1 = (i & 0xFFFFFFFFFFFFFF8) + 32;
    v7 = (2 * v5) | 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_1A524EB04();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v7 >> 1, v3))
  {
    goto LABEL_42;
  }

  if (v13 != (v7 >> 1) - v3)
  {
    goto LABEL_43;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (i)
  {
    goto LABEL_24;
  }

  for (i = MEMORY[0x1E69E7CC0]; ; i = v11)
  {
    swift_unknownObjectRelease();
LABEL_24:
    if ((i & 0x8000000000000000) != 0 || (i & 0x4000000000000000) != 0)
    {
LABEL_38:
      v7 = sub_1A524E2B4();
      if (!v7)
      {
LABEL_39:

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v7 = *(i + 16);
      if (!v7)
      {
        goto LABEL_39;
      }
    }

    v30 = MEMORY[0x1E69E7CC0];
    v6 = &v30;
    sub_1A3DADE0C(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_unknownObjectRelease_n();
LABEL_16:
    sub_1A3FB5D30(v6, v1, v3, v7);
  }

  v14 = 0;
  v15 = v30;
  do
  {
    if ((i & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1A59097F0](v14, i);
    }

    else
    {
    }

    sub_1A3DA2330(v16, v28);
    v30 = v15;
    v18 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1A3DADE0C((v17 > 1), v18 + 1, 1);
      v15 = v30;
    }

    ++v14;
    *(v15 + 16) = v18 + 1;
    v19 = (v15 + 144 * v18);
    v19[2] = v28[0];
    v20 = v28[1];
    v21 = v28[2];
    v22 = v28[4];
    v19[5] = v28[3];
    v19[6] = v22;
    v19[3] = v20;
    v19[4] = v21;
    v23 = v28[5];
    v24 = v28[6];
    v25 = v29[0];
    *(v19 + 153) = *(v29 + 9);
    v19[8] = v24;
    v19[9] = v25;
    v19[7] = v23;
  }

  while (v7 != v14);

  return v15;
}

uint64_t sub_1A3FAF0C0()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  return *(v0 + 160);
}

void sub_1A3FAF160()
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (qword_1EB17A820 != -1)
  {
    swift_once();
  }

  v1 = sub_1A5246F24();
  __swift_project_value_buffer(v1, qword_1EB17A828);
  v2 = sub_1A5246F04();
  v3 = sub_1A524D224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, v3, "Clearing all recent searches", v4, 2u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  v5 = objc_opt_self();
  v6 = *(v0 + 80);
  v17[0] = 0;
  if ([v5 deleteAllRecentSearchSuggestionsForPhotoLibrary:v6 error:v17])
  {
    v7 = v17[0];
  }

  else
  {
    v8 = v17[0];
    v9 = sub_1A5240B84();

    swift_willThrow();
    v10 = v9;
    v11 = sub_1A5246F04();
    v12 = sub_1A524D244();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v9;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1A3C1C000, v11, v12, "Failed to clear recent searches: %@", v13, 0xCu);
      sub_1A3CB65E4(v14);
      MEMORY[0x1A590EEC0](v14, -1, -1);
      MEMORY[0x1A590EEC0](v13, -1, -1);
    }

    else
    {
    }
  }

  LemonadeSuggestedSearchQueryFetcher.updateRecentSearches()();
}

void sub_1A3FAF3B0()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FAF454()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  v1 = *(v0 + 96);
  if (v1 >> 62)
  {
    if (sub_1A524E2B4())
    {
LABEL_3:
      swift_getKeyPath();
      sub_1A52415D4();

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  return sub_1A3C9BE6C();
}

void sub_1A3FAF56C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  *a2 = *(v3 + 96);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3FAF798()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  v1 = v0[17];
  if (v1)
  {
    v2 = v0[16];
    v3 = v0[18];
    swift_getKeyPath();

    sub_1A52415D4();

    v4 = v0[13];
    if (v4)
    {
      if (v4 >> 62)
      {
        v5 = sub_1A524E2B4();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!__OFADD__(v5, *(v3 + 16)))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      __break(1u);
      sub_1A524E2B4();
      sub_1A524E494();

      sub_1A3CB32F8(v2, v1, v3);
      sub_1A3CB36CC(v4);

      goto LABEL_12;
    }
  }

  swift_getKeyPath();
  sub_1A52415D4();

  v6 = v0[17];
  if (v6)
  {
    v7 = v0[18];
    v8 = v0[16];

    sub_1A3FB5E30(v8, v6, v7);
  }

  else
  {
    swift_getKeyPath();
    sub_1A52415D4();

    if (v0[13])
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

LABEL_12:
  sub_1A3FAF644();
}

void sub_1A3FAFAA0()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3FAFB44(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  *a2 = *(v3 + 104);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FAFC1C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  v1 = *(v0 + 128);
  sub_1A3CB237C(v1, *(v3 + 136));
  return v1;
}

uint64_t sub_1A3FAFCDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  v4 = v3[16];
  v5 = v3[17];
  v6 = v3[18];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_1A3CB237C(v4, v5);
}

uint64_t sub_1A3FAFD90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_1A3CB237C(*a1, v2);
  return sub_1A3FAFDE0(v1, v2, v3);
}

uint64_t sub_1A3FAFDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[16];
  v8 = v3[17];
  v9 = v3[18];
  if (!v8)
  {
    if (!a2)
    {
      v12 = 0;
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  sub_1A3FB7C70(v8, a2);
  if ((v10 & 1) == 0)
  {
    sub_1A3CB23D0(v7, v8);
    goto LABEL_11;
  }

  v11 = sub_1A3FB7930(v9, a3);
  sub_1A3CB23D0(v7, v8);
  if ((v11 & 1) == 0)
  {
LABEL_11:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
    sub_1A52415C4();
    sub_1A3CB23D0(a1, a2);
  }

  v7 = v3[16];
  v12 = v3[17];
LABEL_8:
  v3[16] = a1;
  v3[17] = a2;
  v3[18] = a3;
  sub_1A3CB237C(a1, a2);
  result = sub_1A3CB23D0(v7, v12);
  if (v3[19])
  {

    sub_1A5245804();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3FB0008@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  *a2 = *(v3 + 160);
  return result;
}

uint64_t sub_1A3FB00D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3FAF160();
  }

  return result;
}

uint64_t sub_1A3FB012C(uint64_t result)
{
  if (*(v1 + 160) == (result & 1))
  {
    *(v1 + 160) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A3FB023C(void *a1)
{
  v2 = v1;
  v54 = a1;
  v44 = *v1;
  v3 = sub_1A5246EA4();
  v43[2] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43[1] = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BEE4();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1A524BF64();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246E54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v52 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v43 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v43 - v15;
  if (qword_1EB17A8F0 != -1)
  {
    swift_once();
  }

  v17 = sub_1A5246E94();
  v18 = __swift_project_value_buffer(v17, qword_1EB17A8F8);
  sub_1A5246E84();
  sub_1A5246E24();
  v51 = v18;
  v19 = sub_1A5246E84();
  v20 = sub_1A524D654();
  if (sub_1A524DEC4())
  {
    v21 = swift_slowAlloc();
    v53 = v8;
    v22 = v21;
    *v21 = 0;
    v23 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v19, v20, v23, "FetchSearchKeyAssets", "", v22, 2u);
    v8 = v53;
    MEMORY[0x1A590EEC0](v22, -1, -1);
  }

  (*(v9 + 16))(v14, v16, v8);
  sub_1A5246ED4();
  swift_allocObject();
  v24 = sub_1A5246EC4();
  v25 = *(v9 + 8);
  v53 = v9 + 8;
  v25(v16, v8);
  swift_getKeyPath();
  aBlock = v2;
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415D4();

  v26 = v2[17];
  if (!v26 || (v27 = v2[18], !*(v27 + 16)))
  {
    aBlock = 0;
    v57 = 0;
    v58 = 0;
    sub_1A5245824();
  }

  v28 = v2[16];
  v29 = objc_opt_self();
  v30 = v2[10];

  v31 = [v29 px:v30 searchAssetFetchOptionsForPhotoLibrary:?];
  [v31 setFetchLimit_];
  v32 = qword_1EB17A860;

  if (v32 != -1)
  {
    swift_once();
  }

  v53 = qword_1EB17A868;
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v52 = v33;
  v35 = v54;
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = v24;
  v34[5] = v28;
  v34[6] = v26;
  v34[7] = v27;
  v36 = v44;
  v34[8] = v31;
  v34[9] = v36;
  v60 = sub_1A3FB8504;
  v61 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1A3C2E0D0;
  v59 = &block_descriptor_103;
  v37 = _Block_copy(&aBlock);

  v54 = v31;
  v51 = v28;
  v38 = v45;
  sub_1A524BF14();
  v55 = MEMORY[0x1E69E7CC0];
  sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v39 = MEMORY[0x1E69E7F60];
  sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
  sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v39);
  v40 = v47;
  v41 = v50;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v38, v40, v37);
  _Block_release(v37);

  (*(v49 + 8))(v40, v41);
  (*(v46 + 8))(v38, v48);
}

uint64_t sub_1A3FB0B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524BEE4();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A524BF64();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB17A860 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB17A868;
  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a1;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = a2;
  v11 = _Block_copy(aBlock);

  sub_1A524BF14();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v12 = MEMORY[0x1E69E7F60];
  sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
  sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v12);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v11);
  _Block_release(v11);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

Swift::Void __swiftcall LemonadeSuggestedSearchQueryFetcher.resetInitialSuggestions()()
{
  swift_getKeyPath();
  sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
  sub_1A52415C4();

  sub_1A3FB1504(sub_1A3FB8174, v0);
}

uint64_t sub_1A3FB0F5C(void *a1)
{
  v2 = [a1 container];
  if (!v2)
  {
LABEL_7:

    return 0;
  }

  v3 = v2;
  swift_getObjectType();
  sub_1A3C52C70(0, &qword_1EB1265D0);
  v4 = dynamic_cast_existential_1_superclass_conditional(v3);
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    ObjectType = swift_getObjectType();
    v9 = [v6 photoLibrary];
    if (v9)
    {
      v10 = [objc_allocWithZone(MEMORY[0x1E6978A68]) initWithPhotoLibrary_];
      v12[3] = ObjectType;
      v12[4] = v7;
      v12[0] = v6;
      swift_allocObject();
      swift_unknownObjectRetain();
      LemonadeSuggestedSearchQueryFetcher.init(searchQueryManager:container:)(v10, v12);
    }

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  swift_unknownObjectRelease();
  return 0;
}

void sub_1A3FB10AC(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v5);
  sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524D474();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  aBlock[4] = sub_1A3FB8374;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_56;
  _Block_copy(aBlock);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FB13DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A3FB1504(uint64_t a1, uint64_t a2)
{
  v36 = *v2;
  v37 = a1;
  v4 = sub_1A524BEE4();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5246E54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v33 - v14;
  if (qword_1EB17A8F0 != -1)
  {
    swift_once();
  }

  v16 = sub_1A5246E94();
  __swift_project_value_buffer(v16, qword_1EB17A8F8);
  sub_1A5246E84();
  sub_1A5246E24();
  v17 = sub_1A5246E84();
  v18 = sub_1A524D654();
  if (sub_1A524DEC4())
  {
    v19 = v15;
    v20 = v10;
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v17, v18, v22, "FetchSuggestedQueries", "", v21, 2u);
    v23 = v21;
    v10 = v20;
    v15 = v19;
    MEMORY[0x1A590EEC0](v23, -1, -1);
  }

  v34 = v15;

  (*(v10 + 16))(v13, v15, v9);
  sub_1A5246ED4();
  swift_allocObject();
  v24 = sub_1A5246EC4();
  v35 = v9;
  if (qword_1EB17A860 != -1)
  {
    swift_once();
  }

  v33[1] = qword_1EB17A868;
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v24;
  v27 = v36;
  v26[4] = v37;
  v26[5] = a2;
  v26[6] = v27;
  aBlock[4] = sub_1A3FB8328;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_34_2;
  v28 = _Block_copy(aBlock);

  sub_1A524BF14();
  v43 = MEMORY[0x1E69E7CC0];
  sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v29 = MEMORY[0x1E69E7F60];
  sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
  sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v29);
  v30 = v38;
  v31 = v42;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v8, v30, v28);
  _Block_release(v28);

  (*(v41 + 8))(v30, v31);
  (*(v39 + 8))(v8, v40);
  (*(v10 + 8))(v34, v35);
}

uint64_t sub_1A3FB1A80()
{
  v0 = sub_1A524BEE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A524BF64();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v8 = sub_1A3FB1E2C();
    v10 = v9;
    v12 = v11;
    sub_1A3C52C70(0, &qword_1EB12B180);
    v23 = sub_1A524D474();
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = v8;
    v20[2] = v8;
    v21 = v0;
    v14[4] = v10;
    v14[5] = v12;
    v15 = v3;
    v20[0] = v12;
    v20[1] = v10;
    aBlock[4] = sub_1A3FB837C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_64_1;
    v16 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v17 = MEMORY[0x1E69E7F60];
    sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
    sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v17);
    v18 = v21;
    sub_1A524E224();
    v19 = v23;
    MEMORY[0x1A5908800](0, v6, v15, v16);
    _Block_release(v16);

    (*(v1 + 8))(v15, v18);
    return (*(v4 + 8))(v6, v24);
  }

  return result;
}

void *sub_1A3FB1E2C()
{
  v1 = v0;
  v58 = sub_1A5246EA4();
  v2 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5246E54();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v59 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  isEscapingClosureAtFileLocation = &v56 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v56 - v11;
  if (qword_1EB17A8F0 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v13 = sub_1A5246E94();
    v14 = __swift_project_value_buffer(v13, qword_1EB17A8F8);
    sub_1A5246E84();
    sub_1A5246E24();
    v62 = v14;
    v15 = sub_1A5246E84();
    v16 = sub_1A524D654();
    if (sub_1A524DEC4())
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, v16, v18, "FetchRecentSearches", "", v17, 2u);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }

    v19 = *(v63 + 16);
    v61 = v12;
    v19(isEscapingClosureAtFileLocation, v12, v64);
    sub_1A5246ED4();
    swift_allocObject();
    v20 = sub_1A5246EC4();
    v21 = [objc_opt_self() recentSearchesForPhotoLibrary:v1[10] error:0];
    sub_1A3C52C70(0, &qword_1EB1268F8);
    v22 = sub_1A524CA34();

    sub_1A3CA70B8(MEMORY[0x1E69E7CC0]);
    v1 = v23;
    isEscapingClosureAtFileLocation = v24;
    v73 = v23;
    v74 = v24;
    v75 = v25;
    v12 = v22 >> 62 ? sub_1A524E2B4() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v60 = v20;
    v57 = v2;
    v56 = v4;
    if (!v12)
    {
      break;
    }

    v26 = 0;
    v68 = v22 & 0xFFFFFFFFFFFFFF8;
    v69 = v22 & 0xC000000000000001;
    v67 = v71;
    v65 = v12;
    v66 = v22;
    while (1)
    {
      if (v69)
      {
        v30 = MEMORY[0x1A59097F0](v26, v22);
      }

      else
      {
        if (v26 >= *(v68 + 16))
        {
          goto LABEL_31;
        }

        v30 = *(v22 + 8 * v26 + 32);
      }

      v31 = v30;
      v32 = (v26 + 1);
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v33 = [v30 queryText];
      if (v33)
      {
        v2 = v33;
        v34 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
        v35 = [v2 length];
        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        v36 = v35;
        v1 = swift_allocObject();
        v1[2] = v34;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_1A3FB8ABC;
        *(v37 + 24) = v1;
        v71[2] = sub_1A3FB8A50;
        v72 = v37;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v71[0] = sub_1A3FB5BBC;
        v71[1] = &block_descriptor_80;
        v12 = _Block_copy(aBlock);
        v4 = v72;
        v38 = v34;

        [v38 enumerateAttributesInRange:0 options:v36 usingBlock:{0, v12}];

        _Block_release(v12);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_33;
        }

        v1 = [v31 assetCount];
        v39 = [v31 keyAssetUUIDs];
        if (v39)
        {
          v27 = v39;
          isEscapingClosureAtFileLocation = sub_1A524CA34();
        }

        else
        {
          isEscapingClosureAtFileLocation = 0;
        }

        type metadata accessor for LemonadeSuggestedSearchCollection(0);
        v28 = swift_allocObject();
        *(v28 + 16) = 0;
        v4 = 1;
        *(v28 + 24) = 1;
        v2 = OBJC_IVAR____TtC12PhotosUICore33LemonadeSuggestedSearchCollection___observationRegistrar;
        v29 = v38;
        sub_1A5241604();
        *(v28 + 32) = v38;
        *(v28 + 40) = v1;
        *(v28 + 48) = isEscapingClosureAtFileLocation;
        *(v28 + 56) = 1;
        sub_1A3FB3A94(v28, v29);
        v12 = v65;
        v22 = v66;
      }

      ++v26;
      if (v32 == v12)
      {
        v1 = v73;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

LABEL_22:

  v40 = sub_1A5246E84();
  v41 = sub_1A524D664();
  if (sub_1A524DEC4())
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v40, v41, v43, "Prefetched recent searches", "", v42, 2u);
    MEMORY[0x1A590EEC0](v42, -1, -1);
  }

  v44 = sub_1A5246E84();
  v45 = v59;
  sub_1A5246EB4();
  v46 = sub_1A524D644();
  if (sub_1A524DEC4())
  {

    v47 = v56;
    sub_1A5246EE4();

    v48 = v57;
    v49 = v58;
    if (v57[11](v47, v58) == *MEMORY[0x1E69E93E8])
    {
      v50 = "[Error] Interval already ended";
    }

    else
    {
      v48[1](v47, v49);
      v50 = "";
    }

    v45 = v59;
    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v44, v46, v52, "FetchRecentSearches", v50, v51, 2u);
    MEMORY[0x1A590EEC0](v51, -1, -1);
  }

  v53 = v64;
  v54 = *(v63 + 8);
  v54(v45, v64);
  v54(v61, v53);
  return v1;
}

uint64_t sub_1A3FB2648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(a4 + 16);
    if ((*(Strong + 160) ^ (v8 != 0)))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
      sub_1A52415C4();
    }

    else
    {
      *(Strong + 160) = v8 != 0;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1A3FAFDE0(a2, a3, a4);
  }

  return result;
}

Swift::Void __swiftcall LemonadeSuggestedSearchQueryFetcher.boostBackgroundTasks()()
{
  if (*(v0 + 112))
  {

    sub_1A5245804();
  }

  __break(1u);
}

uint64_t LemonadeSuggestedSearchQueryFetcher.deinit()
{
  sub_1A3C2CE9C(v0 + 40);

  sub_1A3CB23D0(*(v0 + 128), *(v0 + 136));

  v1 = OBJC_IVAR____TtC12PhotosUICore35LemonadeSuggestedSearchQueryFetcher___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LemonadeSuggestedSearchQueryFetcher.__deallocating_deinit()
{
  LemonadeSuggestedSearchQueryFetcher.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A3FB29F0()
{
  v0 = sub_1A524BEE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15[1] = result;
    v9 = sub_1A3C9BE6C();
    sub_1A3C52C70(0, &qword_1EB12B180);
    v16 = sub_1A524D474();
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;
    aBlock[4] = sub_1A3FB849C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_96;
    v12 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v13 = MEMORY[0x1E69E7F60];
    sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
    v15[0] = v4;
    sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v13);
    sub_1A524E224();
    v14 = v16;
    MEMORY[0x1A5908800](0, v7, v3, v12);
    _Block_release(v12);

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v15[0]);
  }

  return result;
}

void sub_1A3FB2D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v8 = sub_1A5246EA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5246E54();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = objc_opt_self();
    v19 = *(v17 + 80);
    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = a4;
    v21 = v32;
    v20[4] = a2;
    v20[5] = v21;
    aBlock[4] = sub_1A3FB8338;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3FB39E4;
    aBlock[3] = &block_descriptor_40_0;
    v22 = _Block_copy(aBlock);
    v23 = v19;

    [v18 initialSearchQuerySuggestionsForPhotoLibrary:v23 suggestionLimit:3 minimumResultCountPerSuggestion:0 suggestionsHandler:v22];
    _Block_release(v22);
  }

  else
  {
    v24 = v8;
    if (qword_1EB17A8F0 != -1)
    {
      swift_once();
    }

    v25 = sub_1A5246E94();
    __swift_project_value_buffer(v25, qword_1EB17A8F8);
    v26 = sub_1A5246E84();
    sub_1A5246EB4();
    v27 = sub_1A524D644();
    if (sub_1A524DEC4())
    {

      sub_1A5246EE4();

      if ((*(v9 + 88))(v11, v24) == *MEMORY[0x1E69E93E8])
      {
        v28 = "[Error] Interval already ended";
      }

      else
      {
        (*(v9 + 8))(v11, v24);
        v28 = "Cancelled: fetcher deallocated already";
      }

      v29 = v12;
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v26, v27, v31, "FetchSuggestedQueries", v28, v30, 2u);
      MEMORY[0x1A590EEC0](v30, -1, -1);

      (*(v13 + 8))(v15, v29);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }
  }
}

uint64_t sub_1A3FB3124(uint64_t a1, void *a2, void (*a3)(unint64_t *), uint64_t a4, uint64_t a5)
{
  v63 = a5;
  v60 = a4;
  v61 = a3;
  v65 = sub_1A5246EA4();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1A5246E54();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isEscapingClosureAtFileLocation = (a1 >> 62);
  if (a2)
  {
    v12 = a2;
    if (qword_1EB17A820 != -1)
    {
      swift_once();
    }

    v13 = sub_1A5246F24();
    __swift_project_value_buffer(v13, qword_1EB17A828);
    v14 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  while (1)
  {
    v77 = MEMORY[0x1E69E7CC0];
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    if (isEscapingClosureAtFileLocation)
    {
LABEL_39:
      v18 = sub_1A524E2B4();
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    isEscapingClosureAtFileLocation = MEMORY[0x1E69E7CC0];
    if (!v18)
    {
      break;
    }

    v6 = 0;
    v59 = &v70;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = &selRef_photosEnvironmentReference;
    while (1)
    {
      v5 = v6;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1A59097F0](v5, a1);
          v6 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v21 = *(a1 + 8 * v5 + 32);
          v6 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        v22 = v21;
        v23 = [v22 v20[175]];
        if (v23)
        {
          break;
        }

        ++v5;
        if (v6 == v18)
        {
          goto LABEL_26;
        }
      }

      v24 = v23;
      v5 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      isEscapingClosureAtFileLocation = v24;
      v25 = [v5 initWithAttributedString_];
      v26 = [isEscapingClosureAtFileLocation length];
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v58 = v26;
      v27 = swift_allocObject();
      *(v27 + 16) = v25;
      v57 = v27;
      v28 = swift_allocObject();
      LOBYTE(v5) = v28;
      *(v28 + 16) = sub_1A3FB8344;
      *(v28 + 24) = v27;
      *&v71 = sub_1A3FB834C;
      *(&v71 + 1) = v28;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v70 = sub_1A3FB5BBC;
      *(&v70 + 1) = &block_descriptor_49_0;
      v29 = _Block_copy(&aBlock);
      v56 = isEscapingClosureAtFileLocation;
      v30 = v25;

      [v30 enumerateAttributesInRange:0 options:v58 usingBlock:{0, v29}];

      _Block_release(v29);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      v19 = v56;

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      MEMORY[0x1A5907D70](v31);
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v5 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v19 = v77;
      isEscapingClosureAtFileLocation = MEMORY[0x1E69E7CC0];
      v20 = &selRef_photosEnvironmentReference;
      if (v6 == v18)
      {
        goto LABEL_26;
      }
    }

LABEL_52:
    __break(1u);
    *(v17 + 4) = sub_1A524E2B4();

    *(v17 + 12) = 2112;
    v15 = v19;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v16;
    *v6 = v16;
    _os_log_impl(&dword_1A3C1C000, v22, v5, "Failed to prefetch %ld suggested queries with error: %@", v17, 0x16u);
    sub_1A3CB65E4(v6);
    MEMORY[0x1A590EEC0](v6, -1, -1);
    MEMORY[0x1A590EEC0](v17, -1, -1);
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_26:
  if (v19 >> 62)
  {
    a1 = sub_1A524E2B4();
    if (!a1)
    {
LABEL_41:

      v33 = MEMORY[0x1E69E7CC0];
      goto LABEL_42;
    }
  }

  else
  {
    a1 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a1)
    {
      goto LABEL_41;
    }
  }

  v77 = isEscapingClosureAtFileLocation;
  v22 = &v77;
  sub_1A3DADE0C(0, a1 & ~(a1 >> 63), 0);
  if (a1 < 0)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v32 = 0;
  v33 = v77;
  do
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1A59097F0](v32, v19);
    }

    else
    {
      v34 = *(v19 + 8 * v32 + 32);
    }

    sub_1A3DA2540(v34, &aBlock);
    v77 = v33;
    v36 = v33[2];
    v35 = v33[3];
    if (v36 >= v35 >> 1)
    {
      sub_1A3DADE0C((v35 > 1), v36 + 1, 1);
      v33 = v77;
    }

    ++v32;
    v33[2] = v36 + 1;
    v37 = &v33[18 * v36];
    *(v37 + 2) = aBlock;
    v38 = v70;
    v39 = v71;
    v40 = v73;
    *(v37 + 5) = v72;
    *(v37 + 6) = v40;
    *(v37 + 3) = v38;
    *(v37 + 4) = v39;
    v41 = v74;
    v42 = v75;
    v43 = v76[0];
    *(v37 + 153) = *(v76 + 9);
    *(v37 + 8) = v42;
    *(v37 + 9) = v43;
    *(v37 + 7) = v41;
  }

  while (a1 != v32);

LABEL_42:
  v61(v33);

  v44 = v66;
  v45 = v65;
  v46 = v64;
  v47 = v62;
  if (qword_1EB17A8F0 != -1)
  {
    swift_once();
  }

  v48 = sub_1A5246E94();
  __swift_project_value_buffer(v48, qword_1EB17A8F8);
  v49 = sub_1A5246E84();
  sub_1A5246EB4();
  v50 = sub_1A524D644();
  if (sub_1A524DEC4())
  {

    sub_1A5246EE4();

    if ((*(v46 + 88))(v47, v45) == *MEMORY[0x1E69E93E8])
    {
      v51 = "[Error] Interval already ended";
    }

    else
    {
      (*(v46 + 8))(v47, v45);
      v51 = "";
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v49, v50, v53, "FetchSuggestedQueries", v51, v52, 2u);
    MEMORY[0x1A590EEC0](v52, -1, -1);
  }

  return (*(v67 + 8))(v44, v68);
}

void sub_1A3FB39E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_1A3C52C70(0, &qword_1EB1268F8);
  v5 = sub_1A524CA34();

  v6 = a3;
  v4(v5, a3);
}

void sub_1A3FB3A94(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 + 32;
  v8 = *(v5 + 16);
  v21 = a2;
  if (!*v2)
  {
    if (!v8)
    {
      if (!a1)
      {
LABEL_10:

        return;
      }

      goto LABEL_16;
    }

    sub_1A3C52C70(0, &qword_1EB126A40);
    v9 = 0;
    while (1)
    {
      v14 = *(v7 + 8 * v9);
      v15 = sub_1A524DBF4();

      if (v15)
      {
        break;
      }

      if (v8 == ++v9)
      {
        a2 = v21;
        if (a1)
        {
          goto LABEL_16;
        }

        goto LABEL_10;
      }
    }

    if (a1)
    {
      goto LABEL_18;
    }

    v13 = 0;
LABEL_24:
    sub_1A3FB63E8(v9, v13);

    sub_1A3FB6570(v9, sub_1A3FB8A6C);
    goto LABEL_25;
  }

  v9 = sub_1A3FB62B0(v21, v7, v8, (v6 + 16));
  v11 = v10;
  v13 = v12;

  if (v11)
  {
    a2 = v21;
    if (!a1)
    {
      goto LABEL_10;
    }

LABEL_16:
    sub_1A3FB5EFC(a2);

    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
LABEL_25:

    return;
  }

  if (!a1)
  {
    goto LABEL_24;
  }

LABEL_18:
  v18 = v3[2];
  v16 = v3 + 2;
  v17 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1A3D35B98(v17);
    *v16 = v17;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(v17 + 16))
  {
    *(v17 + 8 * v9 + 32) = a1;

    sub_1A524E524();
    return;
  }

  __break(1u);
}

void sub_1A3FB3CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v21 = a3;
  v18 = sub_1A5246EA4();
  v20 = *(v18 - 8);
  v5 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A5246E54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  v19 = v17 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v25 = a2;
    swift_getKeyPath();
    v12 = OBJC_IVAR____TtC12PhotosUICore35LemonadeSuggestedSearchQueryFetcher___observationRegistrar;
    v28 = v11;
    v13 = sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
    v17[2] = v12;
    v17[1] = v13;
    sub_1A52415D4();

    if (*(v11 + 104))
    {
      v14 = *(v11 + 104);
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v24 = v14;
    if (v14 >> 62)
    {
      v15 = sub_1A524E2B4();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17[3] = v7;
    v17[4] = v6;
    if (v15)
    {
      v27 = v26 & 0xC000000000000001;
      v16 = v26 & 0xFFFFFFFFFFFFFF8;
      if (v26 < 0)
      {
        v16 = v26;
      }

      v22 = v16;
      v23 = v24 & 0xFFFFFFFFFFFFFF8;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v28 = 0;
  sub_1A5245824();
}

uint64_t sub_1A3FB4A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v39 = a6;
  v40 = a8;
  v36 = a7;
  v37 = a4;
  v38 = a5;
  v43 = a3;
  v44 = a2;
  v8 = sub_1A5246EA4();
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1A5246E54();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1A524BEE4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524BF64();
  v41 = *(v14 - 8);
  v42 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    aBlock = 0;
    v46 = 0;
    v47 = 0;
    sub_1A5245824();
  }

  v18 = Strong;
  v19 = v36;
  v36 = v11;
  v20 = v19;
  v21 = sub_1A3FB8518(v37, v38, v39);
  v23 = v22;
  v25 = v24;

  sub_1A3C52C70(0, &qword_1EB12B180);
  v39 = sub_1A524D474();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v29 = v43;
  v28 = v44;
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v29;
  v27[5] = v21;
  v37 = v21;
  v38 = v18;
  v27[6] = v23;
  v27[7] = v25;
  v35 = v23;
  v27[8] = v40;
  v49 = sub_1A3FB8820;
  v50 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1A3C2E0D0;
  v48 = &block_descriptor_110_0;
  v30 = _Block_copy(&aBlock);

  sub_1A524BF14();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v31 = MEMORY[0x1E69E7F60];
  sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
  sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v31);
  sub_1A524E224();
  v32 = v39;
  MEMORY[0x1A5908800](0, v16, v13, v30);
  _Block_release(v30);

  (*(v36 + 1))(v13, v10);
  return (*(v41 + 8))(v16, v42);
}

uint64_t sub_1A3FB50AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A5246EA4();
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v57 = v56 - v11;
  v12 = sub_1A5246E54();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v14);
  v60 = v56 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v71 = 0;
    v72 = 0;
    v73 = 0;
    sub_1A5245824();
  }

  v17 = Strong;
  v56[5] = a2;
  v18 = *(a5 + 16);
  v19 = a5;
  v20 = v12;
  if (!v18)
  {
LABEL_29:
    swift_getKeyPath();
    v71 = v17;
    sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
    sub_1A52415D4();

    v42 = v17[17];
    v43 = v17[18];
    v71 = v17[16];
    v72 = v42;
    v73 = v43;
    sub_1A3CB237C(v71, v42);
    sub_1A5245824();
  }

  v21 = v18;
  v56[2] = a3;
  v56[3] = v13;
  v56[4] = v20;
  v67 = v19 + 32;
  v68 = a4 + 32;
  v66 = OBJC_IVAR____TtC12PhotosUICore35LemonadeSuggestedSearchQueryFetcher___observationRegistrar;
  v69 = *(a4 + 16);
  v56[1] = v19;

  v22 = 0;
  v62 = v17;
  v63 = 0;
  v61 = v21;
  while (v22 != v69)
  {
    v23 = *(v68 + 8 * v22);
    v20 = *(v67 + 8 * v22);
    swift_getKeyPath();
    v71 = v17;
    sub_1A3C45350(&qword_1EB1295B8, type metadata accessor for LemonadeSuggestedSearchQueryFetcher);
    v24 = v20;
    sub_1A52415D4();

    v13 = v17[17];
    if (v13)
    {
      v65 = v20;
      v70 = v24;
      v25 = v17[16];
      v26 = v17[18];
      v20 = v13 + 4;
      v27 = v13[2];
      if (v25)
      {

        sub_1A3CB237C(v28, v13);
        v29 = sub_1A3FB62B0(v23, (v13 + 4), v27, (v25 + 16));
        v31 = v30;

        if (v31)
        {
          sub_1A3CB23D0(v25, v13);

          goto LABEL_5;
        }

        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {

        v64 = v26;

        if (!v27)
        {
LABEL_15:
          sub_1A3CB23D0(0, v13);

          v21 = v61;
          v17 = v62;
          goto LABEL_5;
        }

        sub_1A3C52C70(0, &qword_1EB126A40);
        v29 = 0;
        while (1)
        {
          v32 = *(v20 + v29);
          v33 = sub_1A524DBF4();

          if (v33)
          {
            break;
          }

          if (v27 == ++v29)
          {
            goto LABEL_15;
          }
        }

        v21 = v61;
        v17 = v62;
        v26 = v64;
      }

      if (v29 >= *(v26 + 16))
      {
        goto LABEL_40;
      }

      v34 = *(v26 + 8 * v29 + 32);

      sub_1A3CB23D0(v25, v13);
      v35 = *(v34 + 16);
      v13 = v70;
      if (v35)
      {
        v20 = v65;
        if (v65)
        {
          sub_1A3C52C70(0, &qword_1EB126660);
          v36 = v13;
          v37 = v35;
          v38 = sub_1A524DBF4();

          if (v38)
          {
            v39 = *(v34 + 16);
LABEL_27:
            *(v34 + 16) = v20;

            goto LABEL_5;
          }
        }
      }

      else
      {
        v20 = v65;
        if (!v65)
        {
          v39 = 0;
          goto LABEL_27;
        }
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v56[-2] = v34;
      v56[-1] = v20;
      v71 = v34;
      sub_1A3C45350(&qword_1EB129630, type metadata accessor for LemonadeSuggestedSearchCollection);
      v41 = v63;
      sub_1A52415C4();
      v63 = v41;
    }

    else
    {
    }

LABEL_5:
    if (++v22 == v21)
    {

      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  swift_once();
  v44 = sub_1A5246E94();
  __swift_project_value_buffer(v44, qword_1EB17A8F8);
  v45 = sub_1A5246E84();
  v46 = v60;
  sub_1A5246EB4();
  v47 = sub_1A524D644();
  if (sub_1A524DEC4())
  {

    v48 = v57;
    sub_1A5246EE4();

    v50 = v58;
    v49 = v59;
    if ((*(v58 + 88))(v48, v59) == *MEMORY[0x1E69E93E8])
    {
      v51 = "[Error] Interval already ended";
    }

    else
    {
      (*(v50 + 8))(v48, v49);
      v51 = "";
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = v60;
    v55 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v45, v47, v55, "FetchSearchKeyAssets", v51, v53, 2u);
    MEMORY[0x1A590EEC0](v53, -1, -1);

    return (v13[1])(v54, v20);
  }

  else
  {

    return (v13[1])(v46, v20);
  }
}

void sub_1A3FB59CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1A52429C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v12 = *MEMORY[0x1E6978F98];
    v13 = sub_1A3C8BF74(v12);
    if (v14)
    {
      sub_1A3C2F0BC(*(a1 + 56) + 32 * v13, v16);

      sub_1A3C35B00(v16);
      (*(v9 + 104))(v11, *MEMORY[0x1E69C2068], v8);
      sub_1A52429B4();
      (*(v9 + 8))(v11, v8);
      type metadata accessor for Key(0);
      sub_1A3C45350(&unk_1EB1208B0, type metadata accessor for Key);
      v15 = sub_1A524C3D4();

      [a4 addAttributes:v15 range:{a2, a3}];

      return;
    }
  }

  memset(v16, 0, sizeof(v16));
  sub_1A3C35B00(v16);
}

uint64_t sub_1A3FB5BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_1A3C45350(&unk_1EB1208B0, type metadata accessor for Key);
  v9 = sub_1A524C3E4();
  v8(v9, a3, a4, a5);
}

void *sub_1A3FB5C8C(uint64_t a1, uint64_t a2)
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

  sub_1A3C8B438(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1A3FB5D30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for LemonadeSuggestedSearchCollection(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A3C8B438(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1A3FB5E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1A3FB5C8C(*(a3 + 16), 0);
  v8 = sub_1A3CB35E8(&v10, (v7 + 4), v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t sub_1A3FB5EFC(void *a1)
{
  v2 = a1;
  sub_1A524E514();
  sub_1A524E564();
  sub_1A524E574();
  result = sub_1A524E524();
  v4 = *v1;
  v5 = *(v1[1] + 16);
  if (*v1)
  {
    swift_beginAccess();
    if (MEMORY[0x1A5901C00](*(v4 + 16) & 0x3FLL) >= v5)
    {
      result = swift_isUniquelyReferenced_native();
      v6 = *v1;
      if ((result & 1) == 0)
      {
        if (!v6)
        {
LABEL_12:
          __break(1u);
          return result;
        }

        v7 = sub_1A52468B4();

        *v1 = v7;
        v6 = v7;
      }

      if (v6)
      {
        return sub_1A5246854();
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else if (v5 < 0x10)
  {
    return result;
  }

  return sub_1A3FB6034();
}

uint64_t sub_1A3FB6034()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1A5901C30](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1A3FB60D4(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1A3FB60D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1A5901C30](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1A5901C40](v8, a4);
    sub_1A3FB6154(a1, (v10 + 16));
    return v10;
  }

  return result;
}

uint64_t sub_1A3FB61A4(uint64_t result, uint64_t a2, void *a3)
{
  v8 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(v8 + 8 * v5);
        result = sub_1A524DBE4();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v7 = sub_1A5246834();

        if (v7)
        {
          while (1)
          {
            sub_1A5246884();
          }
        }

        result = sub_1A5246874();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A3FB62B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_1A524DBE4();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A5246834();
    v7 = sub_1A5246864();
    if ((v8 & 1) == 0)
    {
      sub_1A3C52C70(0, &qword_1EB126A40);
      do
      {
        v9 = *(a2 + 8 * v7);
        v10 = sub_1A524DBF4();

        if (v10)
        {
          break;
        }

        sub_1A5246884();
        v7 = sub_1A5246864();
      }

      while ((v11 & 1) == 0);
    }

    return v7;
  }

  return result;
}

void sub_1A3FB63E8(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_1A3FB6570(a1, sub_1A3FB8A6C);
    return;
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x1A5901C10]())
  {
LABEL_16:
    sub_1A3FB6570(a1, sub_1A3FB8A6C);
    sub_1A3FB6034();
    return;
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = sub_1A52468B4();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    sub_1A3FB6604(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_1A3FB67E4(a1, a1 + 1, v4, (v9 + 16));

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1A3FB6570(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
    *v2 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    sub_1A524E524();
    return v10;
  }

  return result;
}

void sub_1A3FB6604(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v18 = sub_1A5246834();
  sub_1A5246884();
  if (v18)
  {
    v7 = sub_1A5246844();
    while (1)
    {
      v8 = sub_1A5246864();
      if (v9)
      {
LABEL_25:
        __break(1u);
        return;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = *(a4 + 8);
      if (v8 >= *(v10 + 16))
      {
        goto LABEL_23;
      }

      v11 = *(v10 + 8 * v8 + 32);
      v12 = sub_1A524DBE4();

      v13 = 1 << *a2;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_24;
      }

      v14 = (v13 - 1) & v12;
      if (v6 >= v7)
      {
        if (v14 >= v7 && v6 >= v14)
        {
LABEL_18:
          sub_1A5246864();
          v6 = a1;
          sub_1A5246854();
        }
      }

      else if (v14 >= v7 || v6 >= v14)
      {
        goto LABEL_18;
      }

      sub_1A5246884();
    }
  }

  sub_1A5246854();
}

uint64_t sub_1A3FB67E4(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x1A5901C00](*a4 & 0x3FLL);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < v8)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v10 = a3;

        if (v8)
        {
          v11 = 0;
          while (1)
          {
            v12 = *(v10 + 32 + 8 * v11);
            result = sub_1A524DBE4();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1A5246834())
            {
              while (1)
              {
                v13 = sub_1A5246864();
                if ((v14 & 1) == 0 && v13 == v11)
                {
                  break;
                }

                sub_1A5246884();
              }
            }

            result = v11 + v5;
            if (__OFADD__(v11, v5))
            {
              goto LABEL_55;
            }

            ++v11;
            sub_1A5246874();

            if (v11 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_1A5246834();
      v21 = sub_1A5246864();
      if ((v22 & 1) != 0 || v21 >= v8)
      {
LABEL_33:
        result = sub_1A5246884();
LABEL_18:
        v15 = a4[1];
        if (__OFSUB__(v15 >> 6, v5))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v16 = 1 << *a4;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v19 = (v18 & (((v15 >> 6) - v5) >> 63)) + (v15 >> 6) - v5;
        if (v19 < v18)
        {
          v18 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v19 - v18) << 6);
        return result;
      }

      if (!__OFADD__(v21, v5))
      {
        sub_1A5246874();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_1A5246834();
      v23 = sub_1A5246864();
      if ((v24 & 1) == 0 && v23 >= v4)
      {
        v17 = __OFSUB__(v23, v5);
        result = v23 - v5;
        if (v17)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_1A5246874();
      }

      return sub_1A5246884();
    }

    v4 = a2;
    v20 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x1A5901C00](*a4 & 0x3FLL);
    if (v20 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v4 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v9 != v4)
    {
      do
      {
        v25 = *(a3 + 32 + 8 * v4);
        result = sub_1A524DBE4();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_1A5246834())
        {
          while (1)
          {
            v26 = sub_1A5246864();
            if ((v27 & 1) == 0 && v26 == v4)
            {
              break;
            }

            sub_1A5246884();
          }
        }

        sub_1A5246874();
      }

      while (++v4 != v9);
    }
  }

  return result;
}

uint64_t sub_1A3FB6C28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A3FB8960();
    v2 = sub_1A524E784();
    v19 = v2;
    sub_1A524E694();
    v3 = sub_1A524E6C4();
    if (v3)
    {
      v4 = v3;
      sub_1A3C52C70(0, &qword_1EB126AC0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1A3C52C70(0, &qword_1EB126660);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1A3FB6E64(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1A524DBE4();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1A524E6C4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1A3FB6E64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3FB8960();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1A524DBE4();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A3FB70C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3FB88E8();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_1A524EC84();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_1A3FB731C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A524E244() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1A524DBE4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

id sub_1A3FB74A8()
{
  v1 = v0;
  sub_1A3FB8960();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1A3FB75FC()
{
  v1 = v0;
  sub_1A3FB88E8();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A3FB7788(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A3CB67E8(0, &qword_1EB12F980, &qword_1EB126A40, 0x1E696AAB0, MEMORY[0x1E69E62F8]);
          sub_1A3FB8410();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A3D5C268(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A3C52C70(0, &qword_1EB126A40);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3FB7930(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      if (*v3 != *v4)
      {
        v8 = *(v6 + 32);
        if (*(v6 + 56))
        {
          v9 = v8;
          strcpy(v39, "user-search-");
          BYTE5(v39[1]) = 0;
          HIWORD(v39[1]) = -5120;
          v10 = [v9 string];
          v11 = sub_1A524C674();
          v13 = v12;

          MEMORY[0x1A5907B60](v11, v13);
        }

        else
        {
          v15 = *(v6 + 40);
          v14 = *(v6 + 48);
          v16 = v8;
          sub_1A524E404();

          v39[0] = 0xD000000000000011;
          v39[1] = 0x80000001A53BFEA0;
          v17 = [v16 uuid];
          v18 = sub_1A524C674();
          v20 = v19;

          MEMORY[0x1A5907B60](v18, v20);

          sub_1A3FAE3DC(v8, v15, v14, 0);
        }

        v21 = v39[0];
        v22 = v39[1];
        v23 = *(v7 + 32);
        if (*(v7 + 56))
        {
          v24 = v23;
          strcpy(v39, "user-search-");
          BYTE5(v39[1]) = 0;
          HIWORD(v39[1]) = -5120;
          v25 = [v24 string];
          v26 = sub_1A524C674();
          v28 = v27;

          MEMORY[0x1A5907B60](v26, v28);
        }

        else
        {
          v29 = *(v7 + 40);
          v38 = *(v7 + 48);
          v30 = v39[1];
          v31 = v23;
          sub_1A524E404();

          v39[0] = 0xD000000000000011;
          v39[1] = 0x80000001A53BFEA0;
          v32 = [v31 uuid];
          v33 = sub_1A524C674();
          v35 = v34;

          v36 = v33;
          v22 = v30;
          MEMORY[0x1A5907B60](v36, v35);

          sub_1A3FAE3DC(v23, v29, v38, 0);
        }

        if (v21 == v39[0] && v22 == v39[1])
        {
        }

        else
        {
          v5 = sub_1A524EAB4();

          if ((v5 & 1) == 0)
          {
            return 0;
          }
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_1A3FB7C70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = a2 + 32;
    sub_1A3C52C70(0, &qword_1EB126A40);
    do
    {
      v5 = *v3++;
      v4 += 8;
      v6 = v5;
      v7 = sub_1A524DBF4();

      if ((v7 & 1) == 0)
      {
        break;
      }

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1A3FB7D2C()
{
  v0 = sub_1A524BEE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524BF64();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB17A860 != -1)
  {
    swift_once();
  }

  v10[1] = qword_1EB17A868;
  sub_1A524BF24();
  aBlock[4] = PXDisplayCollectionDetailedCountsMake;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_27;
  v7 = _Block_copy(aBlock);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1A3C45350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v8 = MEMORY[0x1E69E7F60];
  sub_1A3FB8118(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60]);
  sub_1A3C9AC88(&qword_1EB12B1B0, &qword_1EB12B1C0, v8);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v7);
  _Block_release(v7);
  (*(v1 + 8))(v3, v0);
  return (*(v4 + 8))(v6, v11);
}

uint64_t sub_1A3FB8014(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if ((a8 & 1) == 0)
    {
      return 0;
    }

    sub_1A3C52C70(0, &qword_1EB12B160);
    v12 = sub_1A524DBF4();
    result = 0;
    if ((v12 & 1) != 0 && a2 == a6)
    {
      if (a3)
      {
        if (a7 && (sub_1A3D3D27C(a3, a7) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!a7)
      {
        return 1;
      }

      return 0;
    }
  }

  else
  {
    if (a8)
    {
      return 0;
    }

    sub_1A3C52C70(0, &qword_1EB12B160);
    return sub_1A524DBF4() & 1;
  }

  return result;
}

void sub_1A3FB8118(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524CB74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t dynamic_cast_existential_1_superclass_conditional(uint64_t a1)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3FB827C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A3FB82C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A3FB8388()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v2[16];
  v6 = v2[17];
  v2[16] = v1;
  v2[17] = v3;
  v2[18] = v4;
  sub_1A3CB237C(v1, v3);
  result = sub_1A3CB23D0(v5, v6);
  if (v2[19])
  {

    sub_1A5245804();
  }

  __break(1u);
  return result;
}

unint64_t sub_1A3FB8410()
{
  result = qword_1EB12F988;
  if (!qword_1EB12F988)
  {
    sub_1A3CB67E8(255, &qword_1EB12F980, &qword_1EB126A40, 0x1E696AAB0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F988);
  }

  return result;
}

uint64_t sub_1A3FB849C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A3FB8518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {

    sub_1A524E554();
    v7 = 0;
    while (1)
    {
      v8 = *(*(a3 + 32 + 8 * v7) + 56);

      if (v8 == 1)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      if (v4)
      {
        break;
      }

      ++v7;
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      if (v7 == v5)
      {
        return a1;
      }
    }
  }

  else
  {

    return a1;
  }
}

id sub_1A3FB8830(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return a1;
}

uint64_t objectdestroy_60Tm_0(void (*a1)(void))
{

  a1(*(v1 + 40));

  return swift_deallocObject();
}

void sub_1A3FB88E8()
{
  if (!qword_1EB126410)
  {
    sub_1A3C52C70(255, &qword_1EB126660);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126410);
    }
  }
}

void sub_1A3FB8960()
{
  if (!qword_1EB1263E0)
  {
    sub_1A3C52C70(255, &qword_1EB126AC0);
    sub_1A3C52C70(255, &qword_1EB126660);
    sub_1A3C52CB8(&qword_1EB126AA8, &qword_1EB126AC0);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1263E0);
    }
  }
}

double sub_1A3FB8ADC()
{
  type metadata accessor for UserPromptCoordinator();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  *(v0 + 24) = v1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 57) = 0u;
  qword_1EB186EE8 = v0;
  return result;
}

double UserPromptCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  *(v0 + 24) = v1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 57) = 0u;
  return result;
}

uint64_t static UserPromptCoordinator.shared.getter()
{
  if (qword_1EB186EE0 != -1)
  {
    swift_once();
  }
}

uint64_t UserPromptCoordinator.Priority.description.getter()
{
  if (*v0)
  {
    return 0x6C61636974697263;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t UserPromptCoordinator.Priority.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A3FB91E4()
{
  if (*v0)
  {
    return 0x6C61636974697263;
  }

  else
  {
    return 0x746C7561666564;
  }
}

double UserPromptCoordinator.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  *(v0 + 24) = v1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 57) = 0u;
  return result;
}

uint64_t sub_1A3FB9248()
{
  v1 = [objc_opt_self() mainRunLoop];
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A3C52C70(0, &qword_1EB126558);
  sub_1A3FBB27C();

  sub_1A5247AB4();
}

void sub_1A3FB9358()
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 40))
  {
    swift_beginAccess();
    v4 = *(v0 + 24);
    if (*(v4 + 16))
    {
      swift_beginAccess();
      v5 = *(v4 + 32);
      v6 = *(v4 + 48);
      v30 = *(v4 + 64);
      v28 = v5;
      v29 = v6;
      v7 = *(v4 + 32);
      v8 = *(v4 + 40);
      v26 = *(v4 + 48);
      v25 = *(v4 + 56);
      sub_1A3FBAFC4(&v28, v27);
      v9 = v0;
      sub_1A3FBAF04(0, 1);
      swift_endAccess();
      if (qword_1EB176A30 != -1)
      {
        swift_once();
      }

      v10 = sub_1A5246F24();
      __swift_project_value_buffer(v10, qword_1EB176A38);
      sub_1A3FBAFC4(&v28, v27);
      v11 = sub_1A5246F04();
      v12 = sub_1A524D264();
      sub_1A3FBAFFC(&v28);
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v27[0] = swift_slowAlloc();
        *v13 = 136315138;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v14 = *(v9 + 32);
      v15 = *(v9 + 40);
      *(v9 + 32) = v7;
      *(v9 + 40) = v8;
      *(v9 + 48) = v26;
      *(v9 + 56) = v25;
      sub_1A3FBAFC4(&v28, v27);
      sub_1A3FBACB0(v14, v15);
      v16 = sub_1A524CCB4();
      (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
      sub_1A524CC54();
      sub_1A3FBAFC4(&v28, v27);

      v17 = sub_1A524CC44();
      v18 = swift_allocObject();
      v19 = MEMORY[0x1E69E85E0];
      *(v18 + 16) = v17;
      *(v18 + 24) = v19;
      v20 = v29;
      *(v18 + 32) = v28;
      *(v18 + 48) = v20;
      *(v18 + 64) = v30;
      *(v18 + 72) = v9;
      sub_1A3D4D930(0, 0, v3, &unk_1A530E2C0, v18);
      sub_1A3FBAFFC(&v28);
    }

    else
    {
      if (qword_1EB176A30 != -1)
      {
        swift_once();
      }

      v21 = sub_1A5246F24();
      __swift_project_value_buffer(v21, qword_1EB176A38);
      v22 = sub_1A5246F04();
      v23 = sub_1A524D234();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1A3C1C000, v22, v23, "no scheduled prompt", v24, 2u);
        MEMORY[0x1A590EEC0](v24, -1, -1);
      }
    }
  }
}

uint64_t sub_1A3FB9764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[20] = sub_1A524CC54();
  v5[21] = sub_1A524CC44();
  v9 = (*(a4 + 24) + **(a4 + 24));
  v7 = swift_task_alloc();
  v5[22] = v7;
  *v7 = v5;
  v7[1] = sub_1A3FB9870;

  return v9();
}

uint64_t sub_1A3FB9870()
{
  *(*v1 + 184) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A3FB9C54;
  }

  else
  {
    v4 = sub_1A3FB99CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1A3FB99CC()
{

  if (qword_1EB176A30 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB176A38);
  sub_1A3FBAFC4(v1, (v0 + 13));
  v3 = sub_1A5246F04();
  v4 = sub_1A524D264();
  sub_1A3FBAFFC(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    swift_slowAlloc();
    *v5 = 136315138;
    sub_1A3C2EF94();
  }

  v6 = v0[19];
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0;
  sub_1A3FBACB0(v7, v8);
  if ((*(v6 + 72) & 1) == 0)
  {
    v9 = [objc_opt_self() sharedScheduler];
    v10 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_1A3FBB3DC;
    v0[7] = v10;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1A3C2E0D0;
    v0[5] = &block_descriptor_45;
    v11 = _Block_copy(v0 + 2);

    [v9 scheduleTaskWithQoS:1 block:v11];
    _Block_release(v11);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A3FB9C54()
{

  if (qword_1EB176A30 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[18];
  v3 = sub_1A5246F24();
  __swift_project_value_buffer(v3, qword_1EB176A38);
  sub_1A3FBAFC4(v2, (v0 + 8));
  v4 = v1;
  v5 = sub_1A5246F04();
  v6 = sub_1A524D244();
  sub_1A3FBAFFC(v2);

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[23];
  if (v7)
  {
    v9 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v9 = 136315394;
    sub_1A3C2EF94();
  }

  if (qword_1EB176A30 != -1)
  {
    swift_once();
  }

  v10 = v0[18];
  __swift_project_value_buffer(v3, qword_1EB176A38);
  sub_1A3FBAFC4(v10, (v0 + 13));
  v11 = sub_1A5246F04();
  v12 = sub_1A524D264();
  sub_1A3FBAFFC(v10);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    *v13 = 136315138;
    sub_1A3C2EF94();
  }

  v14 = v0[19];
  v15 = *(v14 + 32);
  v16 = *(v14 + 40);
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0;
  sub_1A3FBACB0(v15, v16);
  if ((*(v14 + 72) & 1) == 0)
  {
    v17 = [objc_opt_self() sharedScheduler];
    v18 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_1A3FBB3DC;
    v0[7] = v18;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1A3C2E0D0;
    v0[5] = &block_descriptor_45;
    v19 = _Block_copy(v0 + 2);

    [v17 scheduleTaskWithQoS:1 block:v19];
    _Block_release(v19);
  }

  v20 = v0[1];

  return v20();
}

uint64_t UserPromptCoordinator.deinit()
{

  sub_1A3FBACB0(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t UserPromptCoordinator.__deallocating_deinit()
{

  sub_1A3FBACB0(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t static PXUserPromptCoordinator.schedulePrompt(withIdentifier:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC54();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  return sub_1A3C67884(sub_1A3FBACF4, v9);
}

uint64_t sub_1A3FBA198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB186EE0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB186EE8;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v12 = 0;
  v10 = *(*v8 + 112);

  v10(a1, a2, &v12, &unk_1A530E2D8, v9);
}

uint64_t sub_1A3FBA2A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3FBA33C, v4, v3);
}

uint64_t sub_1A3FBA33C()
{
  v7 = *(v0 + 16);
  v1 = sub_1A524CC44();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = v7;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1A3FBA44C;
  v4 = MEMORY[0x1E69E85E0];
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v3, v1, v4, 0xD000000000000026, 0x80000001A53C0370, sub_1A3FBB1BC, v2, v5);
}

uint64_t sub_1A3FBA44C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A3DEB9FC, v3, v2);
}

uint64_t sub_1A3FBA5AC(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  sub_1A3F6D768();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v8);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  a2(sub_1A3FBB1C4, v10);
}

uint64_t sub_1A3FBA7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A3C2E0D0;
  v7[3] = &block_descriptor_26_0;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

PXUserPromptCoordinator __swiftcall PXUserPromptCoordinator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1A3FBA92C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB176A38);
  __swift_project_value_buffer(v0, qword_1EB176A38);
  sub_1A5246EF4();
}

char *sub_1A3FBA990(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3FBB36C(0, &qword_1EB126270, &type metadata for UserPromptCoordinator.Prompt, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A3FBAAC8(unint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = a2;
  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 40 * a3;
  a2 = (v9 + 32 + 40 * v8);
  if (result != a2 || result >= &a2[40 * v14])
  {
    result = memmove(result, a2, 40 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (a3 <= 0)
  {
    return result;
  }

  v18 = *a4;
  v19 = *(a4 + 16);
  *(v10 + 32) = *(a4 + 32);
  *v10 = v18;
  *(v10 + 16) = v19;
  a2 = v20;
  result = a4;
  if (a3 != 1)
  {
LABEL_21:
    result = sub_1A3FBB2E4(result, a2);
    __break(1u);
    return result;
  }

  return sub_1A3FBB2E4(a4, v20);
}

unint64_t sub_1A3FBABD4(unint64_t result, _BYTE *a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1A3FBA990(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1A3FBAAC8(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_1A3FBACB0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1A3FBAD28()
{
  result = qword_1EB12F990;
  if (!qword_1EB12F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F990);
  }

  return result;
}

unint64_t sub_1A3FBAE2C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1A3FBAF04(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A3FBA990(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A3FBAE2C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1A3FBB02C()
{
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A3FB9764(v3, v4, v5, v0 + 32, v2);
}

uint64_t sub_1A3FBB0C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3FBB124()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A3FBA2A0(v2, v3);
}

uint64_t sub_1A3FBB224()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 72) = 0;
    sub_1A3FB9358();
  }

  return result;
}

unint64_t sub_1A3FBB27C()
{
  result = qword_1EB126560;
  if (!qword_1EB126560)
  {
    sub_1A3C52C70(255, &qword_1EB126558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126560);
  }

  return result;
}

uint64_t sub_1A3FBB2E4(uint64_t a1, uint64_t a2)
{
  sub_1A3FBB36C(0, &qword_1EB1204D0, &type metadata for UserPromptCoordinator.Prompt, MEMORY[0x1E69E6BC0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A3FBB36C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3FBB3EC()
{
  sub_1A524CC54();
  *(v0 + 16) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3FBB480, v2, v1);
}

uint64_t sub_1A3FBB480()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_1A3FBB4E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3FBB594;

  return (sub_1A3FBB8AC)(a1);
}

uint64_t sub_1A3FBB594(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1A3FBB740()
{
  sub_1A524CC54();
  *(v0 + 16) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3FBBB08, v2, v1);
}

uint64_t sub_1A3FBB7D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3FBBB04;

  return (sub_1A3FBB8AC)(a1);
}

uint64_t sub_1A3FBB8AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1A524CC54();
  v2[4] = sub_1A524CC44();
  v4 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3FBB944, v4, v3);
}

uint64_t sub_1A3FBB944()
{

  if (LemonadeSearchViewModel.searchIsActive.getter(v1))
  {
    LemonadeActiveSearchUpdater.updateIsEditing(_:)(1);
  }

  else
  {
    LemonadeSearchViewModel.searchIsActive.setter(1);
  }

  if ([*(v0 + 16) additionalAttributes])
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 searchTerms];
      v5 = sub_1A524CA34();

      if (*(v5 + 16))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v6 = [v3 searchText];
      sub_1A524C674();

      v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v8 = sub_1A524C634();

      v9 = [v7 initWithString_];

      LemonadeActiveSearchUpdater.updateSearchText(_:removingCurrentContainer:)(v9, 1);
    }

    swift_unknownObjectRelease();
  }

  v10 = *(v0 + 8);

  return v10(1);
}

uint64_t sub_1A3FBBB0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A3FBBB80@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a1 = v3;
  return result;
}

uint64_t sub_1A3FBBC00(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1A52479F4();
}

void sub_1A3FBBC78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3FBE120(255, &qword_1EB121CC0, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

char *sub_1A3FBBD48(void *a1, void *a2, void *a3)
{
  sub_1A3FBBC78(0, &qword_1EB1249D0, MEMORY[0x1E695C070]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v25 - v10;
  v12 = OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel_attribution;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel_attribution) = 2;
  v13 = OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel__imagePlaygroundsAppIcon;
  v25[1] = 0;
  sub_1A3FBE120(0, &qword_1EB121CC0, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
  sub_1A52479A4();
  (*(v9 + 32))(v3 + v13, v11, v8);
  v14 = [a1 photosInfoPanelExtendedProperties];
  v15 = [v14 generativeAIType];

  if (!v15)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
  }

  *(v3 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel_rawGenAIType) = v15;
  v16 = [a1 photosInfoPanelExtendedProperties];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 credit];

    if (v18)
    {
      v19 = sub_1A524C674();
      v21 = v20;

      v22 = (v3 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel_genAICredit);
      *v22 = v19;
      v22[1] = v21;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v23 = (v3 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel_genAICredit);
  *v23 = 0;
  v23[1] = 0;
  *(v3 + v12) = sub_1A3FBDCC8();
  return sub_1A4467460(a1, a2, a3);
}

double sub_1A3FBBFA8()
{
  if (sub_1A446803C() != 5)
  {
    return 32.0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel_attribution);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    return 80.0;
  }

  else
  {
    return 60.0;
  }
}

BOOL sub_1A3FBBFF8()
{
  sub_1A3C4D120(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel_attribution);
  if (v4 == 2)
  {
    return 0;
  }

  v6 = "Apple Image Playground";
  if ((v4 & 1) == 0)
  {
    v6 = "ithIdentifier:action:)";
  }

  if (v6 | 0x8000000000000000) != 0x80000001A53C03A0 || (v4)
  {
    v7 = sub_1A524EAB4();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  sub_1A3FBC17C(v3);
  v8 = sub_1A5240E64();
  v9 = (*(*(v8 - 8) + 48))(v3, 1, v8) != 1;
  sub_1A3D75F5C(v3);
  return v9;
}

uint64_t sub_1A3FBC17C@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C4D120(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_1A52404F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel_attribution);
  if (v10 == 2)
  {
LABEL_2:
    v11 = sub_1A5240E64();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }

  v14 = "Apple Image Playground";
  if ((v10 & 1) == 0)
  {
    v14 = "ithIdentifier:action:)";
  }

  if (v14 | 0x8000000000000000) != 0x80000001A53C03A0 || (v10)
  {
    v15 = sub_1A524EAB4();

    if ((v15 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v16 = sub_1A524C634();
  v17 = sub_1A524C634();
  v18 = PXLocalizedStringFromTable(v16, v17);

  if (!v18)
  {
    sub_1A524C674();
    v18 = sub_1A524C634();
  }

  v19 = *MEMORY[0x1E69BFEC0];
  v20 = PLSyndicatedDisplayNameForAppBundle();

  v21 = sub_1A524C674();
  v23 = v22;

  v33 = v21;
  v34 = v23;
  sub_1A52404A4();
  sub_1A3D5F9DC();
  v24 = sub_1A524DFE4();
  v26 = v25;
  (*(v7 + 8))(v9, v6);

  if (v26)
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000026, 0x80000001A53C0430);
    MEMORY[0x1A5907B60](v24, v26);

    MEMORY[0x1A5907B60](0xD000000000000010, 0x80000001A53C0460);
    v35 = 2200;
    v27 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v27);

    sub_1A5240E34();

    v28 = sub_1A5240E64();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v5, 1, v28) == 1)
    {
      sub_1A3D75F5C(v5);
      sub_1A524D244();
      v30 = sub_1A475874C();
      swift_beginAccess();
      v31 = *v30;
      sub_1A5246DF4();

      return (*(v29 + 56))(a1, 1, 1, v28);
    }

    else
    {
      (*(v29 + 32))(a1, v5, v28);
      return (*(v29 + 56))(a1, 0, 1, v28);
    }
  }

  else
  {
    v32 = sub_1A5240E64();
    return (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
  }
}

uint64_t sub_1A3FBC6B4()
{
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel_attribution) == 2)
  {
    return 0;
  }

  v2 = sub_1A524C634();

  v3 = sub_1A524C634();
  v4 = PXLocalizedStringFromTable(v2, v3);

  v5 = sub_1A524C674();
  return v5;
}

void sub_1A3FBC7A0()
{
  v1 = sub_1A446803C();
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel_attribution) != 2)
  {
    v2 = sub_1A524C634();

    v3 = sub_1A524C634();
    v4 = PXLocalizedStringFromTable(v2, v3);

    sub_1A524C674();
  }

  v5 = objc_opt_self();
  v6 = MEMORY[0x1E69DDD80];
  if (v1 == 5)
  {
    v6 = MEMORY[0x1E69DDD00];
    v7 = *MEMORY[0x1E69DB970];
  }

  else
  {
    v7 = *MEMORY[0x1E69DB978];
  }

  if (v1 == 5)
  {
    v8 = *MEMORY[0x1E69DB980];
  }

  else
  {
    v8 = *MEMORY[0x1E69DB978];
  }

  v54 = [v5 preferredFontForTextStyle_];
  v9 = [v54 fontDescriptor];
  sub_1A3C8B280(0, &qword_1EB1261B0, &qword_1EB1267F0, type metadata accessor for AttributeName);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  v11 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  sub_1A3C4D120(0, &qword_1EB12F998, sub_1A3FBDDDC, MEMORY[0x1E69E6F90]);
  v12 = swift_initStackObject();
  v13 = MEMORY[0x1E69DB990];
  *(v12 + 16) = xmmword_1A52F8E10;
  v14 = *v13;
  *(v12 + 32) = *v13;
  *(v12 + 40) = v7;
  v15 = v11;
  v16 = v14;
  v50 = v15;
  v51 = v16;
  v17 = sub_1A3FBDE9C(v12);
  swift_setDeallocating();
  sub_1A3FBDF9C(v12 + 32);
  sub_1A3FBE890(0, &qword_1EB12F9A8, MEMORY[0x1E69E5E28]);
  v49 = v18;
  *(inited + 64) = v18;
  *(inited + 40) = v17;
  sub_1A3FBE170(inited, sub_1A3FBE784, &qword_1EB1267F0, type metadata accessor for AttributeName);
  swift_setDeallocating();
  sub_1A3FBDFF8(inited + 32);
  type metadata accessor for AttributeName(0);
  sub_1A3FBE070(&qword_1EB1267F8, type metadata accessor for AttributeName);
  v19 = sub_1A524C3D4();

  v53 = [v9 fontDescriptorByAddingAttributes_];

  v48 = objc_opt_self();
  v20 = [v48 fontWithDescriptor:v53 size:0.0];
  sub_1A3C8B280(0, &qword_1EB120260, &qword_1EB120880, type metadata accessor for Key);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1A52FC9F0;
  v22 = *MEMORY[0x1E69DB648];
  *(v21 + 32) = *MEMORY[0x1E69DB648];
  v47 = sub_1A3C52C70(0, &qword_1EB120610);
  *(v21 + 40) = v20;
  v23 = *MEMORY[0x1E69DB650];
  *(v21 + 64) = v47;
  *(v21 + 72) = v23;
  v44 = objc_opt_self();
  v24 = v22;
  v25 = v23;
  v46 = v24;
  v45 = v25;
  v52 = v20;
  v26 = [v44 secondaryLabelColor];
  v27 = sub_1A3C52C70(0, &qword_1EB1205C0);
  *(v21 + 104) = v27;
  *(v21 + 80) = v26;
  sub_1A3FBE170(v21, sub_1A3C8BDD0, &qword_1EB120880, type metadata accessor for Key);
  swift_setDeallocating();
  sub_1A3FBE0B8(0, &qword_1EB120880, type metadata accessor for Key);
  swift_arrayDestroy();
  v28 = [v54 fontDescriptor];
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1A52F8E10;
  *(v29 + 32) = v50;
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1A52F8E10;
  *(v30 + 32) = v51;
  v31 = v30 + 32;
  *(v30 + 40) = v8;
  v32 = sub_1A3FBDE9C(v30);
  swift_setDeallocating();
  sub_1A3FBDF9C(v31);
  *(v29 + 64) = v49;
  *(v29 + 40) = v32;
  sub_1A3FBE170(v29, sub_1A3FBE784, &qword_1EB1267F0, type metadata accessor for AttributeName);
  swift_setDeallocating();
  sub_1A3FBDFF8(v29 + 32);
  v33 = sub_1A524C3D4();

  v34 = [v28 fontDescriptorByAddingAttributes_];

  v35 = [v48 fontWithDescriptor:v34 size:0.0];
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1A52FC9F0;
  *(v36 + 32) = v46;
  *(v36 + 40) = v35;
  *(v36 + 64) = v47;
  *(v36 + 72) = v45;
  v37 = v35;
  v38 = [v44 labelColor];
  *(v36 + 104) = v27;
  *(v36 + 80) = v38;
  sub_1A3FBE170(v36, sub_1A3C8BDD0, &qword_1EB120880, type metadata accessor for Key);
  swift_setDeallocating();
  swift_arrayDestroy();
  v39 = objc_opt_self();
  v40 = sub_1A524C634();

  type metadata accessor for Key(0);
  sub_1A3FBE070(&unk_1EB1208B0, type metadata accessor for Key);
  v41 = sub_1A524C3D4();

  v42 = sub_1A524C3D4();

  v43 = [v39 px:v40 attributedStringWithHTMLString:v41 defaultAttributes:v42 emphasizedAttributes:0 italicizedAttributes:?];

  sub_1A5240834();
}

uint64_t sub_1A3FBCFB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel_attribution);
  if (v1 == 2)
  {
    return 0;
  }

  v3 = "Apple Image Playground";
  if ((v1 & 1) == 0)
  {
    v3 = "ithIdentifier:action:)";
  }

  if ((v3 | 0x8000000000000000) == 0x80000001A53C03A0 && (v1 & 1) == 0)
  {

    goto LABEL_9;
  }

  v4 = sub_1A524EAB4();

  if (v4)
  {
LABEL_9:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A52479E4();

    result = v5;
    if (v5)
    {
      return result;
    }
  }

  if (v1)
  {
    return sub_1A524B544();
  }

  else
  {
    return sub_1A524B574();
  }
}

uint64_t sub_1A3FBD10C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel_attribution);
  if (v1 == 2)
  {
LABEL_2:

    return sub_1A524B324();
  }

  v3 = "Apple Image Playground";
  if ((v1 & 1) == 0)
  {
    v3 = "ithIdentifier:action:)";
  }

  if (v3 | 0x8000000000000000) != 0x80000001A53C03A0 || (v1)
  {
    v4 = sub_1A524EAB4();

    if ((v4 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  return sub_1A524B484();
}

id sub_1A3FBD1E0(void *a1)
{
  result = [a1 firstAsset];
  if (result)
  {
    v2 = result;
    v3 = [result photosInfoPanelExtendedProperties];
    if (v3 && (v4 = v3, v5 = [v3 generativeAIType], v4, v5))
    {
      v6 = [v2 photosInfoPanelExtendedProperties];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 credit];

        if (v8)
        {
          sub_1A524C674();

          if (sub_1A3FBDCC8() != 2)
          {
            v9 = [v5 intValue];

            return (v9 != 0);
          }
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1A3FBD308(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  if (v2)
  {
    v4 = "ithIdentifier:action:)";
  }

  else
  {
    v4 = "Apple Image Playground";
  }

  if (*a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (*a2)
  {
    v6 = "Apple Image Playground";
  }

  else
  {
    v6 = "ithIdentifier:action:)";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();
  }

  return v8 & 1;
}

uint64_t sub_1A3FBD3B0()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3FBD42C()
{
  sub_1A524C794();
}

uint64_t sub_1A3FBD494()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3FBD50C@<X0>(char *a1@<X8>)
{
  v2 = sub_1A524E824();

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

void sub_1A3FBD56C(unint64_t *a1@<X8>)
{
  v2 = "Apple Image Playground";
  v3 = 0xD000000000000015;
  if (!*v1)
  {
    v3 = 0xD000000000000016;
    v2 = "ithIdentifier:action:)";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1A3FBD5A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (!v12)
  {
    if (sub_1A446803C() == 5)
    {
      v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel_attribution);
      if (v2 == 2 || (v2 & 1) == 0)
      {
        v3 = 0x4054000000000000;
      }

      else
      {
        v3 = 0x404E000000000000;
      }
    }

    else
    {
      v3 = 0x4040000000000000;
    }

    v4 = *&v3;
    if (sub_1A446803C() == 5)
    {
      v5 = *(v0 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel_attribution);
      if (v5 == 2 || (v5 & 1) == 0)
      {
        v6 = 0x4054000000000000;
      }

      else
      {
        v6 = 0x404E000000000000;
      }
    }

    else
    {
      v6 = 0x4040000000000000;
    }

    v7 = *&v6;
    sub_1A3D72BFC();
    v8 = sub_1A524C674();
    v10 = v9;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A3D72C4C(v8, v10, sub_1A3FBE288, v11, v4, v7);
  }
}

uint64_t sub_1A3FBD74C()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsAssetProvenanceViewModel__imagePlaygroundsAppIcon;
  sub_1A3FBBC78(0, &qword_1EB1249D0, MEMORY[0x1E695C070]);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1A3FBD8A8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1A58FCA00](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1A3FBD8FC(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1A58FCA10](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}