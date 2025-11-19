uint64_t sub_1C0783D34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TerminalOntologyNode.__allocating_init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t TerminalOntologyNode.init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t TerminalOntologyNode.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t TerminalOntologyNode.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t static TerminalOntologyNode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (v5 = sub_1C095DF3C(), v6 = 0, (v5 & 1) != 0))
  {
    v6 = *(a1 + 32) ^ *(a2 + 32) ^ 1;
  }

  return v6 & 1;
}

uint64_t TerminalOntologyNode.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1C095D7BC();
  v3 = *(v0 + 32);
  return sub_1C095E00C();
}

uint64_t TerminalOntologyNode.hashValue.getter()
{
  sub_1C095DFEC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1C095D7BC();
  v3 = *(v0 + 32);
  sub_1C095E00C();
  return sub_1C095E03C();
}

uint64_t sub_1C0783FA0()
{
  sub_1C095DFEC();
  v1 = *v0;
  TerminalOntologyNode.hash(into:)();
  return sub_1C095E03C();
}

uint64_t Entity.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1C0784B44(a1, a2, a3, a4, &qword_1EBE17A00, &qword_1C0972EE0, &qword_1EBE17A08, &qword_1C0972EE8);
}

{
  sub_1C0786EE0(a1, a2, a3, a4);
}

{
  return sub_1C0784B44(a1, a2, a3, a4, &qword_1EBE18258, &qword_1C0978D10, &qword_1EBE17A10, &unk_1C0972EF0);
}

{
  sub_1C0787300(a1, a2, a3, a4);
}

void (*Entity.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x70uLL);
  }

  *a1 = v9;
  v9[12] = a4;
  v9[13] = v4;
  v9[10] = a2;
  v9[11] = a3;
  Entity.subscript.getter(a2, a3, a4);
  return sub_1C0784170;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x70uLL);
  }

  *a1 = v9;
  v9[12] = a4;
  v9[13] = v4;
  v9[10] = a2;
  v9[11] = a3;
  Entity.subscript.getter(a2, a3, a4);
  return sub_1C0784E18;
}

uint64_t Entity.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  sub_1C06FBB24(a1, a2, a3, WitnessTable, &v11);
  if (v12)
  {
    sub_1C0531D80(&v11, v13);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v9 = (*(v8 + 24))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1C05145B4(&v11, &qword_1EBE16C40, &qword_1C09932B0);
    return 0;
  }

  return v9;
}

{
  WitnessTable = swift_getWitnessTable();
  sub_1C06FBB24(a1, a2, a3, WitnessTable, &v11);
  if (v12)
  {
    sub_1C0531D80(&v11, v13);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v9 = (*(v8 + 32))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1C05145B4(&v11, &qword_1EBE16C40, &qword_1C09932B0);
    return 0;
  }

  return v9;
}

{
  return sub_1C0785174(a1, a2, a3, sub_1C0600BA0);
}

{
  return sub_1C0785174(a1, a2, a3, sub_1C0600BE0);
}

uint64_t sub_1C0784284(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a3;
  v6 = a3[1];
  v7 = *a1;
  v8 = a1[1];
  v9 = type metadata accessor for Entity();

  sub_1C0786CD0(v7, v8, v5, v6, v9);
}

uint64_t Entity.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C0786CD0(a1, a2, a3, a4, a5);
}

void (*Entity.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x30uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[4] = a4;
  v9[5] = v4;
  v9[2] = a2;
  v9[3] = a3;
  *v9 = Entity.subscript.getter(a2, a3, a4);
  v10[1] = v11;
  return sub_1C07843E0;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  v9[3] = a4;
  v9[4] = v4;
  v9[1] = a2;
  v9[2] = a3;
  *v9 = Entity.subscript.getter(a2, a3, a4);
  return sub_1C07846E8;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  v9[3] = a4;
  v9[4] = v4;
  v9[1] = a2;
  v9[2] = a3;
  *v9 = Entity.subscript.getter(a2, a3, a4);
  return sub_1C0785088;
}

void sub_1C07843E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[4];
  v5 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {
    v9 = (*a1)[1];

    sub_1C0786CD0(v3, v4, v8, v7, v6);

    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    sub_1C0786CD0(v3, v4, v8, v7, v6);
  }

  free(v2);
}

char *Entity.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1C06FBDDC(a1, a2, a3, WitnessTable);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C0526080(v9, v20);
      v12 = v21;
      v13 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v14 = (*(v13 + 24))(v12, v13);
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_1(v20);
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1C051B0D4(0, *(v10 + 2) + 1, 1, v10);
        }

        v18 = *(v10 + 2);
        v17 = *(v10 + 3);
        if (v18 >= v17 >> 1)
        {
          v10 = sub_1C051B0D4((v17 > 1), v18 + 1, 1, v10);
        }

        *(v10 + 2) = v18 + 1;
        v11 = &v10[16 * v18];
        *(v11 + 4) = v14;
        *(v11 + 5) = v16;
      }

      v9 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v10;
}

uint64_t sub_1C07847EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a3;
  v6 = a3[1];
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = type metadata accessor for Entity();

  sub_1C078711C(v7, v8, v5, v6, v9);
}

uint64_t Entity.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C078711C(a1, a2 & 1, a3, a4, a5);
}

void (*Entity.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x30uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[4] = a4;
  v9[5] = v4;
  v9[2] = a2;
  v9[3] = a3;
  *v9 = Entity.subscript.getter(a2, a3, a4);
  *(v10 + 8) = v11 & 1;
  return sub_1C0784950;
}

void sub_1C0784950(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[4];
  v2 = (*a1)[5];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = **a1;
  v7 = *(*a1 + 8);

  sub_1C078711C(v6, v7, v5, v4, v3);

  free(v1);
}

double sub_1C07849D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  sub_1C06FBB24(a1, a2, a3, WitnessTable, &v10);
  if (v11)
  {
    sub_1C0531D80(&v10, v12);
    sub_1C0531D80(v12, a4);
  }

  else
  {
    sub_1C05145B4(&v10, &qword_1EBE16C40, &qword_1C09932B0);
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1C0784A98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a3 + a4 - 8);
  v9 = *a3;
  v10 = a3[1];
  sub_1C05149F8(a1, v13, a5, a6);
  v11 = type metadata accessor for Entity();

  return a7(v13, v9, v10, v11);
}

uint64_t sub_1C0784B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  sub_1C05149F8(a1, v30, a5, a6);
  if (!v31)
  {
    sub_1C05145B4(v30, a5, a6);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    goto LABEL_5;
  }

  sub_1C0526080(v30, &v32);
  sub_1C05145B4(v30, a7, a8);
  v15 = *(&v33 + 1);
  v16 = v34;
  __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
  (*(v16 + 72))(v27, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(&v32);
  v36 = v27[4];
  v37 = v27[5];
  v38 = v28;
  v32 = v27[0];
  v33 = v27[1];
  v34 = v27[2];
  v35 = v27[3];
  v17 = *(&v27[0] + 1);
  if (!*(&v27[0] + 1))
  {
LABEL_5:
    v19 = 0;
    v23 = 0;
    v22 = 0;
    v29[1] = 0;
    v29[2] = 0;
    goto LABEL_6;
  }

  v18 = v32;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = v36;
  *(v19 + 64) = v35;
  *(v19 + 80) = v20;
  *(v19 + 96) = v37;
  *(v19 + 112) = v38;
  v21 = v34;
  *(v19 + 32) = v33;
  *(v19 + 48) = v21;
  v22 = &off_1F3FA1508;
  v23 = &type metadata for BuilderNode;
LABEL_6:
  v29[0] = v19;
  v29[3] = v23;
  v29[4] = v22;
  sub_1C05149F8(&v32, v27, &qword_1EBE16C48, &qword_1C096E828);
  WitnessTable = swift_getWitnessTable();
  sub_1C06FBBE8(v29, a2, a3, a4, WitnessTable);

  sub_1C05145B4(&v32, &qword_1EBE16C48, &qword_1C096E828);
  sub_1C05145B4(a1, a5, a6);
  return sub_1C05145B4(v29, &qword_1EBE16C40, &qword_1C09932B0);
}

void sub_1C0784E40(uint64_t *a1, char a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  v6 = *a1;
  v8 = *(*a1 + 96);
  v7 = *(*a1 + 104);
  v10 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  if (a2)
  {
    sub_1C05149F8(*a1, (v6 + 40), a4, a5);

    a3(v6 + 40, v10, v9, v8);
    sub_1C05145B4(v6, a4, a5);
  }

  else
  {

    a3(v6, v10, v9, v8);
  }

  free(v6);
}

uint64_t sub_1C0784F2C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a3 + a4 - 8);
  v7 = *a3;
  v8 = a3[1];
  v9 = *a1;
  v10 = type metadata accessor for Entity();

  a5(v11, v7, v8, v10);
}

void sub_1C07850A0(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[2];
  v7 = **a1;

  v9 = v5[3];
  v8 = v5[4];
  v10 = v5[1];
  if (a2)
  {

    a3(v11, v10, v6, v9);

    v12 = *v5;
  }

  else
  {
    a3(v7, v5[1], v6, v5[3]);
  }

  free(v5);
}

uint64_t sub_1C0785174(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(BOOL, unint64_t, uint64_t))
{
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1C06FBDDC(a1, a2, a3, WitnessTable);
  v10 = *(v9 + 16);
  if (v10)
  {
    v21 = MEMORY[0x1E69E7CC0];
    a4(0, v10, 0);
    v11 = v21;
    v12 = v9 + 32;
    do
    {
      sub_1C0526080(v12, v19);
      v21 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        a4(v13 > 1, v14 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v14 + 1;
      v15 = v11 + 40 * v14;
      v16 = v19[0];
      v17 = v19[1];
      *(v15 + 64) = v20;
      *(v15 + 32) = v16;
      *(v15 + 48) = v17;
      v12 += 40;
      --v10;
    }

    while (v10);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

uint64_t Entity<A>.subscript.getter(void *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = *(a3 + 8);

  return sub_1C0554498(a1, a2, WitnessTable, v7);
}

{
  WitnessTable = swift_getWitnessTable();
  return sub_1C0554E54(a1, a2, WitnessTable, *(a3 + 8));
}

{
  WitnessTable = swift_getWitnessTable();
  v7 = *(a3 + 8);

  return sub_1C05555EC(a1, a2, WitnessTable, v7);
}

{
  WitnessTable = swift_getWitnessTable();
  v7 = *(a3 + 8);

  return sub_1C0557570(a1, a2, WitnessTable, v7);
}

uint64_t sub_1C0785320(uint64_t *a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v7 = *a1;
  v8 = a1[1];
  v9 = type metadata accessor for Entity();

  sub_1C07874EC(v7, v8, v6, v9, v5);
}

uint64_t Entity<A>.subscript.setter(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1C07874EC(a1, a2, a3, a4, a5);
}

void (*Entity<A>.subscript.modify(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x30uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[3] = a3;
  v9[4] = v4;
  v9[2] = a2;
  WitnessTable = swift_getWitnessTable();
  v12 = *(a4 + 8);
  v10[5] = v12;
  *v10 = sub_1C0554498(a2, a3, WitnessTable, v12);
  v10[1] = v13;
  return sub_1C07854BC;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  WitnessTable = swift_getWitnessTable();
  v12 = *(a4 + 8);
  v10[4] = v12;
  *v10 = sub_1C05555EC(a2, a3, WitnessTable, v12);
  return sub_1C0785A50;
}

void sub_1C07854BC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  if (a2)
  {
    v9 = (*a1)[1];

    WitnessTable = swift_getWitnessTable();
    sub_1C05547B0(v7, v4, v3, v8, WitnessTable, v6);

    v11 = v2[1];
  }

  else
  {
    v12 = (*a1)[2];

    v13 = swift_getWitnessTable();
    sub_1C05547B0(v7, v4, v3, v8, v13, v6);
  }

  free(v2);
}

uint64_t sub_1C0785628(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = type metadata accessor for Entity();

  sub_1C0787570(v7, v8, v6, v9, v5);
}

uint64_t Entity<A>.subscript.setter(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_1C0787570(a1, a2 & 1, a3, a4, a5);
}

void (*Entity<A>.subscript.modify(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x30uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[3] = a3;
  v9[4] = v4;
  v9[2] = a2;
  WitnessTable = swift_getWitnessTable();
  v12 = *(a4 + 8);
  v10[5] = v12;
  *v10 = sub_1C0554E54(a2, a3, WitnessTable, v12);
  *(v10 + 8) = v13 & 1;
  return sub_1C07857B0;
}

void sub_1C07857B0(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = **a1;
  v7 = *(*a1 + 8);

  WitnessTable = swift_getWitnessTable();
  sub_1C055516C(v5, v6, v7, v4, WitnessTable, v3);

  free(v1);
}

uint64_t sub_1C07858BC(uint64_t *a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v7 = *a1;
  v8 = type metadata accessor for Entity();

  sub_1C07875F4(v9, v6, v8, v5);
}

uint64_t Entity<A>.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1C07875F4(a1, a2, a3, a4);
}

{
  v5 = *a2;
  sub_1C07876F4(a1, a2, a3, a4);

  v6 = *(*(*(v5 + *MEMORY[0x1E69E77B0] + 8) - 8) + 8);

  return v6(a1);
}

{
  v5 = *a2;
  sub_1C07877F4(a1, a2, a3, a4);

  v6 = *(*(*(v5 + *MEMORY[0x1E69E77B0] + 8) + 16) + 16);
  type metadata accessor for Metadata();
  v7 = sub_1C095DB0C();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void sub_1C0785A50(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];

  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[2];
  if (a2)
  {

    WitnessTable = swift_getWitnessTable();
    sub_1C0555990(v5, v4, v8, WitnessTable, v7);

    v10 = *v3;
  }

  else
  {
    v11 = v3[2];
    v12 = swift_getWitnessTable();
    sub_1C0555990(v5, v4, v8, v12, v7);
  }

  free(v3);
}

uint64_t Entity<A>.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  v11 = *(a3 + 8);

  return sub_1C0555D90(a1, a2, WitnessTable, a4, v11, a5);
}

uint64_t sub_1C0785BD0(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *a3;
  v9 = type metadata accessor for Entity();

  sub_1C0787670(a1, v8, v9, v6, v7);
}

uint64_t Entity<A>.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  sub_1C0787670(a1, a2, a3, a4, a5);

  v7 = *(*(v6 + *MEMORY[0x1E69E77B0] + 8) + 16);
  type metadata accessor for Entity();
  v8 = sub_1C095DB0C();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void (*Entity<A>.subscript.modify(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x80uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[12] = a5;
  v11[13] = v5;
  v11[10] = a2;
  v11[11] = a3;
  v11[14] = *a2;
  WitnessTable = swift_getWitnessTable();
  v14 = *(a4 + 8);
  *(v12 + 120) = v14;
  sub_1C0555D90(a2, a3, WitnessTable, a5, v14, v12);
  return sub_1C0785E14;
}

void sub_1C0785E14(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[15];
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[10];
    v7 = v2[11];
    v8 = *(*(v2[14] + *MEMORY[0x1E69E77B0] + 8) + 16);
    type metadata accessor for Entity();
    v9 = sub_1C095DB0C();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v2 + 5, v2, v9);

    WitnessTable = swift_getWitnessTable();
    sub_1C05560BC(v6, (v2 + 5), v7, WitnessTable, v5, v3);

    v12 = *(v10 + 8);
    v12(v2 + 5, v9);
    v12(v2, v9);
  }

  else
  {
    v14 = v2[14];
    v13 = v2[15];
    v16 = v2[12];
    v15 = v2[13];
    v18 = v2[10];
    v17 = v2[11];

    v19 = swift_getWitnessTable();
    sub_1C05560BC(v18, v2, v17, v19, v16, v13);

    v20 = *(*(v14 + *MEMORY[0x1E69E77B0] + 8) + 16);
    type metadata accessor for Entity();
    v21 = sub_1C095DB0C();
    (*(*(v21 - 8) + 8))(v2, v21);
  }

  free(v2);
}

uint64_t Entity<A>.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1C0557904(a1, a2, WitnessTable, a3, a4);
}

{
  WitnessTable = swift_getWitnessTable();
  v9 = *(a3 + 8);

  return sub_1C0556CF4(a1, a2, WitnessTable, v9, a4);
}

uint64_t sub_1C0786088(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a3;
  v8 = type metadata accessor for Entity();

  sub_1C07876F4(a1, v7, v8, v6);
}

void (*Entity<A>.subscript.modify(void *a1, void *a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v10[4] = v12;
  v13 = *(v12 - 8);
  v10[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v10[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[6] = malloc(v14);
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[7] = v15;
  WitnessTable = swift_getWitnessTable();
  sub_1C0557904(a2, a3, WitnessTable, a4, v16);
  return sub_1C078632C;
}

void sub_1C078632C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);

    WitnessTable = swift_getWitnessTable();
    sub_1C0557CCC(v9, v3, v10, WitnessTable, v8);

    v12 = *(v6 + 8);
    v12(v3, v5);
    v12(v4, v5);
  }

  else
  {
    v13 = **a1;

    v14 = swift_getWitnessTable();
    sub_1C0557CCC(v9, v4, v10, v14, v8);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Entity<A>.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();
  v9 = *(a3 + 8);

  return sub_1C055657C(a1, a2, WitnessTable, a4, v9);
}

uint64_t sub_1C078650C(uint64_t *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 32);
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a3;
  v8 = *a1;
  v9 = type metadata accessor for Entity();

  sub_1C0787770(v10, v7, v9, v5, v6);
}

uint64_t Entity<A>.subscript.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C0787770(a1, a2, a3, a4, a5);
}

void (*Entity<A>.subscript.modify(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x30uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[3] = a5;
  v11[4] = v5;
  v11[1] = a2;
  v11[2] = a3;
  WitnessTable = swift_getWitnessTable();
  v14 = *(a4 + 8);
  v12[5] = v14;
  *v12 = sub_1C055657C(a2, a3, WitnessTable, a5, v14);
  return sub_1C07866B8;
}

void sub_1C07866B8(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];

  v6 = v3[4];
  v7 = v3[5];
  v9 = v3[2];
  v8 = v3[3];
  if (a2)
  {

    WitnessTable = swift_getWitnessTable();
    sub_1C0556904(v5, v4, v9, WitnessTable, v8, v7);

    v11 = *v3;
  }

  else
  {
    v12 = v3[2];
    v13 = swift_getWitnessTable();
    sub_1C0556904(v5, v4, v9, v13, v8, v7);
  }

  free(v3);
}

uint64_t sub_1C0786838(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 8);
  v7 = *a3;
  v8 = type metadata accessor for Entity();

  sub_1C07877F4(a1, v7, v8, v6);
}

void (*Entity<A>.subscript.modify(void *a1, void *a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x78uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[11] = a3;
  v9[12] = v4;
  v9[10] = a2;
  v9[13] = *a2;
  WitnessTable = swift_getWitnessTable();
  v12 = *(a4 + 8);
  *(v10 + 112) = v12;
  sub_1C0556CF4(a2, a3, WitnessTable, v12, v10);
  return sub_1C0786A6C;
}

void sub_1C0786A6C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[14];
    v5 = v2[11];
    v4 = v2[12];
    v6 = v2[10];
    v7 = *(*(*(v2[13] + *MEMORY[0x1E69E77B0] + 8) + 16) + 16);
    type metadata accessor for Metadata();
    v8 = sub_1C095DB0C();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v2 + 5, v2, v8);

    WitnessTable = swift_getWitnessTable();
    sub_1C0557014(v6, (v2 + 5), v5, WitnessTable, v3);

    v11 = *(v9 + 8);
    v11(v2 + 5, v8);
    v11(v2, v8);
  }

  else
  {
    v13 = v2[13];
    v12 = v2[14];
    v15 = v2[11];
    v14 = v2[12];
    v16 = v2[10];

    v17 = swift_getWitnessTable();
    sub_1C0557014(v16, v2, v15, v17, v12);

    v18 = *(*(*(v13 + *MEMORY[0x1E69E77B0] + 8) + 16) + 16);
    type metadata accessor for Metadata();
    v19 = sub_1C095DB0C();
    (*(*(v19 - 8) + 8))(v2, v19);
  }

  free(v2);
}

uint64_t sub_1C0786CD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  if (!a2)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
LABEL_7:
    v15 = 0;
    v19 = 0;
    v18 = 0;
    v25[1] = 0;
    v25[2] = 0;
    goto LABEL_8;
  }

  v10 = qword_1ED5D7CA0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = xmmword_1ED5D7CA8;
  v13 = *(&xmmword_1ED5D7CB8 + 1);
  v12 = xmmword_1ED5D7CB8;
  v14 = qword_1ED5D7CC8;

  v26 = v11;
  v27 = __PAIR128__(v13, v12);
  *&v28 = v14;
  *(&v28 + 1) = a1;
  v29 = a2;
  LOBYTE(v30) = 1;
  *(&v30 + 1) = MEMORY[0x1E69E7CC0];
  *&v31 = MEMORY[0x1E69E7CC0];
  *(&v31 + 1) = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  v7 = a3;
  v6 = a4;
  if (!*(&v11 + 1))
  {
    goto LABEL_7;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = v30;
  *(v15 + 64) = v29;
  *(v15 + 80) = v16;
  *(v15 + 96) = v31;
  *(v15 + 112) = v32;
  v17 = v28;
  *(v15 + 32) = v27;
  *(v15 + 48) = v17;
  v18 = &off_1F3FA1508;
  v19 = &type metadata for BuilderNode;
LABEL_8:
  v25[0] = v15;
  v25[3] = v19;
  v25[4] = v18;
  sub_1C05149F8(&v26, v24, &qword_1EBE16C48, &qword_1C096E828);
  WitnessTable = swift_getWitnessTable();
  sub_1C06FBBE8(v25, v7, v6, a5, WitnessTable);
  sub_1C05145B4(&v26, &qword_1EBE16C48, &qword_1C096E828);
  return sub_1C05145B4(v25, &qword_1EBE16C40, &qword_1C09932B0);
}

uint64_t sub_1C0786EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v8 = *(a1 + 16);
  if (v8)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1C0600B40(0, v8, 0);
    v9 = v8 - 1;
    v10 = v32;
    for (i = (a1 + 40); ; i += 2)
    {
      v30 = v9;
      v12 = *i;
      v29 = *(i - 1);
      v13 = qword_1ED5D7CA0;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = qword_1ED5D7CA8;
      v15 = unk_1ED5D7CB0;
      v16 = unk_1ED5D7CC0;
      v28 = qword_1ED5D7CB8;
      v17 = qword_1ED5D7CC8;

      v19 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1C0600B40((v18 > 1), v19 + 1, 1);
      }

      *(v32 + 16) = v19 + 1;
      v20 = v32 + 104 * v19;
      *(v20 + 32) = v14;
      *(v20 + 40) = v15;
      *(v20 + 48) = v28;
      *(v20 + 56) = v16;
      *(v20 + 64) = v17;
      *(v20 + 72) = v29;
      *(v20 + 80) = v12;
      *(v20 + 88) = 0;
      *(v20 + 96) = 1;
      *(v20 + 97) = *v31;
      *(v20 + 100) = *&v31[3];
      v21 = MEMORY[0x1E69E7CC0];
      *(v20 + 104) = MEMORY[0x1E69E7CC0];
      *(v20 + 112) = v21;
      *(v20 + 120) = v21;
      *(v20 + 128) = v21;
      if (!v30)
      {
        break;
      }

      v9 = v30 - 1;
    }

    v5 = a3;
    v4 = a4;
    v6 = a2;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v22 = sub_1C077CEA8(v10);

  WitnessTable = swift_getWitnessTable();
  sub_1C06FBEA4(v22, v6, v5, v4, WitnessTable);
}

uint64_t sub_1C078711C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
LABEL_7:
    v9 = 0;
    v13 = 0;
    v12 = 0;
    v18[1] = 0;
    v18[2] = 0;
    goto LABEL_8;
  }

  if (qword_1ED5BDED8 != -1)
  {
    v16 = a1;
    swift_once();
    a1 = v16;
  }

  v8 = xmmword_1ED5BDEE0;
  v19 = xmmword_1ED5BDEE0;
  v20 = xmmword_1ED5BDEF0;
  v21 = qword_1ED5BDF00;
  *&v22 = 0;
  *(&v22 + 1) = a1;
  LOBYTE(v23) = 0;
  *(&v23 + 1) = MEMORY[0x1E69E7CC0];
  *&v24 = MEMORY[0x1E69E7CC0];
  *(&v24 + 1) = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];

  if (!*(&v8 + 1))
  {
    goto LABEL_7;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = v23;
  *(v9 + 64) = v22;
  *(v9 + 80) = v10;
  *(v9 + 96) = v24;
  *(v9 + 112) = v25;
  v11 = v21;
  *(v9 + 32) = v20;
  *(v9 + 48) = v11;
  v12 = &off_1F3FA1508;
  v13 = &type metadata for BuilderNode;
LABEL_8:
  v18[0] = v9;
  v18[3] = v13;
  v18[4] = v12;
  sub_1C05149F8(&v19, v17, &qword_1EBE16C48, &qword_1C096E828);
  WitnessTable = swift_getWitnessTable();
  sub_1C06FBBE8(v18, a3, a4, a5, WitnessTable);
  sub_1C05145B4(&v19, &qword_1EBE16C48, &qword_1C096E828);
  return sub_1C05145B4(v18, &qword_1EBE16C40, &qword_1C09932B0);
}

uint64_t sub_1C0787300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = *(a1 + 16);
  if (v8)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C0600B40(0, v8, 0);
    v9 = v33;
    v10 = a1 + 32;
    for (i = v8 - 1; ; --i)
    {
      sub_1C05149F8(v10, v28, &qword_1EBE17A08, &qword_1C0972EE8);
      v13 = v29;
      v12 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      (*(v12 + 72))(v31, v13, v12);
      sub_1C05145B4(v28, &qword_1EBE17A08, &qword_1C0972EE8);
      v33 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1C0600B40((v14 > 1), v15 + 1, 1);
        v9 = v33;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 104 * v15;
      v17 = v31[0];
      v18 = v31[2];
      *(v16 + 48) = v31[1];
      *(v16 + 64) = v18;
      *(v16 + 32) = v17;
      v19 = v31[3];
      v20 = v31[4];
      v21 = v31[5];
      *(v16 + 128) = v32;
      *(v16 + 96) = v20;
      *(v16 + 112) = v21;
      *(v16 + 80) = v19;
      if (!i)
      {
        break;
      }

      v10 += 40;
    }

    a4 = v27;
    v6 = a2;
    v5 = a3;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v22 = sub_1C077CEA8(v9);

  WitnessTable = swift_getWitnessTable();
  sub_1C06FBEA4(v22, v6, v5, a4, WitnessTable);
}

uint64_t sub_1C07874EC(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();
  v11 = *(a5 + 8);

  return sub_1C05547B0(a3, a1, a2, a4, WitnessTable, v11);
}

uint64_t sub_1C0787570(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();
  v11 = *(a5 + 8);

  return sub_1C055516C(a3, a1, a2 & 1, a4, WitnessTable, v11);
}

uint64_t sub_1C07875F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();
  v9 = *(a4 + 8);

  return sub_1C0555990(a2, a1, a3, WitnessTable, v9);
}

uint64_t sub_1C0787670(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();
  v11 = *(a4 + 8);

  return sub_1C05560BC(a2, a1, a3, WitnessTable, a5, v11);
}

uint64_t sub_1C07876F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1C0557CCC(a2, a1, a3, WitnessTable, a4);
}

uint64_t sub_1C0787770(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();
  v11 = *(a4 + 8);

  return sub_1C0556904(a2, a1, a3, WitnessTable, a5, v11);
}

uint64_t sub_1C07877F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();
  v9 = *(a4 + 8);

  return sub_1C0557014(a2, a1, a3, WitnessTable, v9);
}

uint64_t keypath_getTm_0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + a3 - 8);
  v6 = *a2;
  v7 = a2[1];
  v8 = type metadata accessor for Entity();
  return a4(v6, v7, v8);
}

uint64_t keypath_get_6Tm@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(a1 + a2 - 8);
  v7 = *a1;
  v8 = a1[1];
  v9 = type metadata accessor for Entity();
  result = a3(v7, v8, v9);
  *a4 = result;
  return result;
}

uint64_t AddressOntologyNode.Continent.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1C095DD6C();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t AddressOntologyNode.Continent.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6D41206874726F4ELL;
  v3 = 0x61697361727545;
  if (v1 != 6)
  {
    v3 = 0x61696E6165634FLL;
  }

  v4 = 0x65706F727545;
  if (v1 != 4)
  {
    v4 = 1634300737;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6974637261746E41;
  if (v1 != 2)
  {
    v5 = 0x616369726641;
  }

  if (*v0)
  {
    v2 = 0x6D41206874756F53;
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

unint64_t sub_1C0787AB4()
{
  result = qword_1EBE1F828;
  if (!qword_1EBE1F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F828);
  }

  return result;
}

uint64_t sub_1C0787B24@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return AddressOntologyNode.Continent.init(rawValue:)(a1);
}

void sub_1C0787B30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6D41206874726F4ELL;
  v4 = 0xE700000000000000;
  v5 = 0x61697361727545;
  if (v2 != 6)
  {
    v5 = 0x61696E6165634FLL;
    v4 = 0xE700000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x65706F727545;
  if (v2 != 4)
  {
    v7 = 1634300737;
    v6 = 0xE400000000000000;
  }

  if (*v1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEA00000000006163;
  v9 = 0x6974637261746E41;
  if (v2 != 2)
  {
    v9 = 0x616369726641;
    v8 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D41206874756F53;
  }

  if (*v1 <= 1u)
  {
    v8 = 0xED00006163697265;
  }

  else
  {
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}

unint64_t sub_1C0787C2C(uint64_t a1)
{
  result = sub_1C0787C54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0787C54()
{
  result = qword_1EBE1F830;
  if (!qword_1EBE1F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F830);
  }

  return result;
}

unint64_t sub_1C0787CAC()
{
  result = qword_1EBE1F838;
  if (!qword_1EBE1F838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F840, &qword_1C099A0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F838);
  }

  return result;
}

unint64_t sub_1C0787D20(uint64_t a1)
{
  result = sub_1C0787D48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0787D48()
{
  result = qword_1EBE1F848;
  if (!qword_1EBE1F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F848);
  }

  return result;
}

uint64_t UsoIdentifier.init(value:appBundleId:namespace:probability:sourceComponent:groupIndex:interpretationGroup:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char *a10, int a11, char a12, int a13, char a14)
{
  v14 = *a10;
  *(a9 + 80) = 0;
  *(a9 + 88) = 1;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = v14;
  *(a9 + 60) = a11;
  *(a9 + 64) = a12 & 1;
  *(a9 + 68) = a13;
  *(a9 + 72) = a14 & 1;
  return result;
}

uint64_t UsoIdentifier.init(value:appBundleId:namespace:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 80) = 0;
  *(a7 + 88) = 1;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = 0;
  *(a7 + 56) = 1;
  *(a7 + 60) = 0;
  *(a7 + 64) = 1;
  *(a7 + 68) = 0;
  *(a7 + 72) = 1;
  return result;
}

SiriOntology::UsoIdentifier::IdentifierGroupType_optional __swiftcall UsoIdentifier.IdentifierGroupType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_1C0787E5C@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t static UsoIdentifier.getGroupedIdentifiers(_:_:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = sub_1C058C2E8(MEMORY[0x1E69E7CC0]);
  v5 = *(a1 + 16);
  if (v5)
  {
    v61 = 0;
    v62 = 0;
    v6 = (a1 + 32);
    for (i = (v5 - 1); ; i = (i - 1))
    {
      v8 = v6[3];
      v66 = v6[2];
      v67 = v8;
      *v68 = v6[4];
      *&v68[9] = *(v6 + 73);
      v9 = v6[1];
      v64 = *v6;
      v65 = v9;
      if (v3)
      {
        if (v68[8])
        {
          v10 = 0;
        }

        else
        {
          v10 = *&v68[4];
        }

        sub_1C0518B04(&v64, v63);
        sub_1C0772200(v62);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63[0] = v4;
        v13 = sub_1C057EAB4(v10);
        v14 = v4[2];
        v15 = (v12 & 1) == 0;
        v16 = v14 + v15;
        if (__OFADD__(v14, v15))
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          sub_1C095DF6C();
          __break(1u);

          __break(1u);
          return result;
        }

        v17 = v12;
        if (v4[3] < v16)
        {
          sub_1C057B824(v16, isUniquelyReferenced_nonNull_native);
          v18 = sub_1C057EAB4(v10);
          if ((v17 & 1) != (v19 & 1))
          {
            goto LABEL_65;
          }

          v13 = v18;
          v4 = v63[0];
          if (v17)
          {
            goto LABEL_24;
          }

LABEL_22:
          v4[(v13 >> 6) + 8] |= 1 << v13;
          *(v4[6] + 4 * v13) = v10;
          *(v4[7] + 8 * v13) = MEMORY[0x1E69E7CC0];
          v30 = v4[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_63;
          }

          v4[2] = v32;
          goto LABEL_24;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v4 = v63[0];
          if ((v12 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_1C0670214();
          v4 = v63[0];
          if ((v17 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

LABEL_24:
        v33 = v4[7];
        v34 = *(v33 + 8 * v13);
        v35 = swift_isUniquelyReferenced_nonNull_native();
        *(v33 + 8 * v13) = v34;
        if ((v35 & 1) == 0)
        {
          v34 = sub_1C0519CF8(0, *(v34 + 2) + 1, 1, v34);
          *(v33 + 8 * v13) = v34;
        }

        v37 = *(v34 + 2);
        v36 = *(v34 + 3);
        v38 = v37 + 1;
        v62 = sub_1C07721FC;
        if (v37 >= v36 >> 1)
        {
          v34 = sub_1C0519CF8((v36 > 1), v37 + 1, 1, v34);
          *(v33 + 8 * v13) = v34;
          v62 = sub_1C07721FC;
        }

        goto LABEL_36;
      }

      if (v68[0])
      {
        v20 = 0;
      }

      else
      {
        v20 = HIDWORD(v67);
      }

      sub_1C0518B04(&v64, v63);
      sub_1C0772200(v61);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v4;
      v23 = sub_1C057EAB4(v20);
      v24 = v4[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_61;
      }

      v27 = v22;
      if (v4[3] >= v26)
      {
        if (v21)
        {
          v4 = v63[0];
          if ((v22 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_1C0670214();
          v4 = v63[0];
          if ((v27 & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_1C057B824(v26, v21);
        v28 = sub_1C057EAB4(v20);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_65;
        }

        v23 = v28;
        v4 = v63[0];
        if ((v27 & 1) == 0)
        {
LABEL_30:
          v4[(v23 >> 6) + 8] |= 1 << v23;
          *(v4[6] + 4 * v23) = v20;
          *(v4[7] + 8 * v23) = MEMORY[0x1E69E7CC0];
          v39 = v4[2];
          v31 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v31)
          {
            goto LABEL_64;
          }

          v4[2] = v40;
        }
      }

      v41 = v4[7];
      v34 = *(v41 + 8 * v23);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      *(v41 + 8 * v23) = v34;
      if ((v42 & 1) == 0)
      {
        v34 = sub_1C0519CF8(0, *(v34 + 2) + 1, 1, v34);
        *(v41 + 8 * v23) = v34;
      }

      v37 = *(v34 + 2);
      v43 = *(v34 + 3);
      v38 = v37 + 1;
      v61 = sub_1C07721FC;
      if (v37 >= v43 >> 1)
      {
        v34 = sub_1C0519CF8((v43 > 1), v37 + 1, 1, v34);
        *(v41 + 8 * v23) = v34;
        v61 = sub_1C07721FC;
      }

LABEL_36:
      *(v34 + 2) = v38;
      v44 = &v34[96 * v37];
      v45 = v65;
      *(v44 + 2) = v64;
      *(v44 + 3) = v45;
      v46 = v66;
      v47 = v67;
      v48 = *v68;
      *(v44 + 105) = *&v68[9];
      *(v44 + 5) = v47;
      *(v44 + 6) = v48;
      *(v44 + 4) = v46;
      if (!i)
      {
        goto LABEL_43;
      }

      v6 += 6;
    }
  }

  v61 = 0;
  v62 = 0;
LABEL_43:
  v49 = v4[2];
  if (!v49)
  {
    goto LABEL_46;
  }

  v50 = sub_1C0579DFC(v4[2], 0);
  v51 = sub_1C057C5F4(&v64, v50 + 8, v49, v4);
  swift_bridgeObjectRetain_n();
  sub_1C052281C();
  if (v51 != v49)
  {
    __break(1u);
LABEL_46:

    v50 = MEMORY[0x1E69E7CC0];
  }

  *&v64 = v50;
  sub_1C0788C6C(&v64);

  i = v64;
  v52 = *(v64 + 16);
  if (v52)
  {
    v53 = 0;
    v54 = MEMORY[0x1E69E7CC0];
    while (v53 < i[2])
    {
      if (v4[2])
      {
        v55 = sub_1C057EAB4(*(i + v53 + 8));
        if (v56)
        {
          v57 = *(v4[7] + 8 * v55);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1C0578F1C(0, v54[2] + 1, 1, v54);
          }

          v59 = v54[2];
          v58 = v54[3];
          if (v59 >= v58 >> 1)
          {
            v54 = sub_1C0578F1C((v58 > 1), v59 + 1, 1, v54);
          }

          ++v53;
          v54[2] = v59 + 1;
          v54[v59 + 4] = v57;
          if (v52 != v53)
          {
            continue;
          }
        }
      }

      goto LABEL_59;
    }

    goto LABEL_62;
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_59:

  sub_1C0772200(v61);
  sub_1C0772200(v62);
  return v54;
}

uint64_t UsoIdentifier.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UsoIdentifier.appBundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UsoIdentifier.namespace.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t UsoIdentifier.probability.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t UsoIdentifier.init(value:appBundleId:namespace:probability:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *(a9 + 80) = 0;
  *(a9 + 88) = 1;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = 0;
  *(a9 + 60) = 0;
  *(a9 + 64) = 1;
  *(a9 + 68) = 0;
  *(a9 + 72) = 1;
  return result;
}

uint64_t UsoIdentifier.init(value:appBundleId:namespace:probability:sourceComponent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char *a10)
{
  v10 = *a10;
  *(a9 + 80) = 0;
  *(a9 + 88) = 1;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = v10;
  *(a9 + 60) = 0;
  *(a9 + 64) = 1;
  *(a9 + 68) = 0;
  *(a9 + 72) = 1;
  return result;
}

uint64_t UsoIdentifier.init(value:appBundleId:namespace:probability:sourceComponent:groupIndex:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char *a10, int a11, char a12)
{
  v12 = *a10;
  *(a9 + 80) = 0;
  *(a9 + 88) = 1;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = v12;
  *(a9 + 60) = a11;
  *(a9 + 64) = a12 & 1;
  *(a9 + 68) = 0;
  *(a9 + 72) = 1;
  return result;
}

uint64_t UsoIdentifier.init(value:appBundleId:namespace:probability:sourceComponent:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v11 = a2[1];
  v12 = *a3;
  v13 = a3[1];
  v26 = *a6;
  v14 = IdentifierValue.rawValue.getter();
  v23 = v15;
  v24 = v14;
  sub_1C0548834(v8, v9);
  v16 = IdentifierAppBundle.rawValue.getter();
  v18 = v17;
  result = sub_1C0548848(v10, v11);
  if (v13 == 36)
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = IdentifierNamespace.rawValue.getter();
    v21 = v22;
    result = sub_1C07895D0(v12, v13);
  }

  *a7 = v24;
  *(a7 + 8) = v23;
  *(a7 + 16) = v16;
  *(a7 + 24) = v18;
  *(a7 + 32) = v20;
  *(a7 + 40) = v21;
  *(a7 + 48) = a4;
  *(a7 + 56) = a5 & 1;
  *(a7 + 57) = v26;
  *(a7 + 60) = 0;
  *(a7 + 64) = 1;
  *(a7 + 68) = 0;
  *(a7 + 72) = 1;
  *(a7 + 80) = 0;
  *(a7 + 88) = 1;
  return result;
}

uint64_t UsoIdentifier.valueSemantic.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  return sub_1C0547398(v4, v3, a1);
}

uint64_t UsoIdentifier.appBundleSemantic.getter@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  return sub_1C0546934(v4, v3, a1);
}

uint64_t UsoIdentifier.namespaceSemantic.getter@<X0>(__int128 *a1@<X8>)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    v4 = *(v1 + 32);

    result = sub_1C0545A38(v4, v3, &v7);
    v6 = v7;
  }

  else
  {
    v6 = xmmword_1C099A180;
  }

  *a1 = v6;
  return result;
}

uint64_t sub_1C0788988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C07898D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C07889BC(uint64_t a1)
{
  v2 = sub_1C0525E40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C07889F8(uint64_t a1)
{
  v2 = sub_1C0525E40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UsoIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  v9 = *(v0 + 57);
  v10 = *(v0 + 64);
  v14 = *(v0 + 15);
  v15 = *(v0 + 17);
  v11 = *(v0 + 72);
  v16 = v0[10];
  v17 = *(v0 + 88);
  sub_1C095D7BC();
  sub_1C095D7BC();
  if (v6)
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C095E00C();
    if (v8)
    {
LABEL_3:
      sub_1C095E00C();
      if (v9 != 7)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  sub_1C095E00C();
  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x1C68DDEC0](v13);
  if (v9 != 7)
  {
LABEL_4:
    sub_1C095E00C();
    MEMORY[0x1C68DDE90](v9);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  sub_1C095E00C();
  if (!v10)
  {
LABEL_5:
    sub_1C095E00C();
    sub_1C095E01C();
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_15:
    sub_1C095E00C();
    if (!v17)
    {
      goto LABEL_7;
    }

    return sub_1C095E00C();
  }

LABEL_14:
  sub_1C095E00C();
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_6:
  sub_1C095E00C();
  sub_1C095E01C();
  if (!v17)
  {
LABEL_7:
    sub_1C095E00C();
    return MEMORY[0x1C68DDE90](v16);
  }

  return sub_1C095E00C();
}

uint64_t UsoIdentifier.hashValue.getter()
{
  sub_1C095DFEC();
  UsoIdentifier.hash(into:)();
  return sub_1C095E03C();
}

uint64_t sub_1C0788BEC()
{
  sub_1C095DFEC();
  UsoIdentifier.hash(into:)();
  return sub_1C095E03C();
}

uint64_t sub_1C0788C30()
{
  sub_1C095DFEC();
  UsoIdentifier.hash(into:)();
  return sub_1C095E03C();
}

uint64_t sub_1C0788C6C(char **a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C07895BC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v4;
  result = sub_1C095DEFC();
  if (result >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = v2 + 32;
      do
      {
        v12 = *&v2[4 * v10 + 32];
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (v12 >= *v14)
          {
            break;
          }

          *v14 = v12;
          *(v14 + 1) = v15;
          v14 -= 4;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        v11 += 4;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = result;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      v8 = sub_1C095D9CC();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v17[1] = v7;
    v18 = 0;
    v17[0] = v8 + 32;
    sub_1C0788DAC(v17, &v18, v19, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C0788DAC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_1C0789580(v8);
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
        sub_1C07892F8((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
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
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
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

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
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
      result = sub_1C0577D94(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1C0577D94((v29 > 1), v5 + 1, 1, v8);
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
        sub_1C07892F8((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
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
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
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

uint64_t sub_1C07892F8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
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

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
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

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_1C07894EC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_1C0789580(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1C07895D0(uint64_t a1, unint64_t a2)
{
  if (a2 != 36)
  {
    return sub_1C054885C(a1, a2);
  }

  return a1;
}

unint64_t sub_1C07895E4()
{
  result = qword_1EBE1F860;
  if (!qword_1EBE1F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F860);
  }

  return result;
}

unint64_t sub_1C078963C()
{
  result = qword_1EBE1F868;
  if (!qword_1EBE1F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F868);
  }

  return result;
}

unint64_t sub_1C0789694()
{
  result = qword_1EBE1F870;
  if (!qword_1EBE1F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F870);
  }

  return result;
}

uint64_t sub_1C07896E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1C0789730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C07897CC()
{
  result = qword_1EBE1F878;
  if (!qword_1EBE1F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F878);
  }

  return result;
}

unint64_t sub_1C0789824()
{
  result = qword_1ED5D34F0;
  if (!qword_1ED5D34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34F0);
  }

  return result;
}

unint64_t sub_1C078987C()
{
  result = qword_1ED5D34F8;
  if (!qword_1ED5D34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34F8);
  }

  return result;
}

uint64_t sub_1C07898D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C095DF3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965 || (sub_1C095DF3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065 || (sub_1C095DF3C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469 || (sub_1C095DF3C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F43656372756F73 && a2 == 0xEF746E656E6F706DLL || (sub_1C095DF3C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646E4970756F7267 && a2 == 0xEA00000000007865 || (sub_1C095DF3C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C0A03100 == a2 || (sub_1C095DF3C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C0A03120 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1C095DF3C();

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

unint64_t sub_1C0789B8C()
{
  result = qword_1EBE1F880;
  if (!qword_1EBE1F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F880);
  }

  return result;
}

unint64_t sub_1C0789BFC()
{
  result = qword_1EBE1F888;
  if (!qword_1EBE1F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F888);
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_StatusCode.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 300)
  {
    if (result > 100)
    {
      if (result == 101)
      {
        v2 = 1;
        result = 2;
        goto LABEL_20;
      }

      if (result == 300)
      {
        v2 = 1;
        result = 3;
        goto LABEL_20;
      }
    }

    else
    {
      if (!result)
      {
        v2 = 1;
        goto LABEL_20;
      }

      if (result == 100)
      {
        result = 1;
        v2 = 1;
        goto LABEL_20;
      }
    }

LABEL_19:
    v2 = 0;
    goto LABEL_20;
  }

  if (result > 302)
  {
    if (result == 303)
    {
      v2 = 1;
      result = 6;
      goto LABEL_20;
    }

    if (result == 500)
    {
      v2 = 1;
      result = 7;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v2 = 1;
  if (result == 301)
  {
    result = 4;
  }

  else
  {
    result = 5;
  }

LABEL_20:
  *a2 = result;
  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_StatusCode.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1C099A880[result];
  }

  return result;
}

uint64_t sub_1C0789D70()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1C099A880[result];
  }

  return result;
}

void sub_1C0789D98(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_1C099A880[v2];
  }

  *a1 = v2;
}

uint64_t sub_1C0789DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05C8394();

  return MEMORY[0x1EEE3F550](a1, a2, v4);
}

uint64_t static Siri_Nl_Core_Protocol_StatusCode.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBE1F890 = a1;
}

uint64_t sub_1C0789F14@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EBE1F890;
}

uint64_t sub_1C0789F64()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F898);
  __swift_project_value_buffer(v0, qword_1EBE1F898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0973520;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SUCCESS";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 100;
  *v10 = "INPUT";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "EMPTY_NLU_REQUEST";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 300;
  *v14 = "PROCESSING";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 301;
  *v16 = "INTERNAL_ERROR";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 302;
  *v18 = "INITIALISATION_ERROR";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 303;
  *v20 = "FEATURE_EXTRACTION_ERROR";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 500;
  *v22 = "COMMUNICATION";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t static Siri_Nl_Core_Protocol_StatusCode._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE158B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C095D6EC();
  v3 = __swift_project_value_buffer(v2, qword_1EBE1F898);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1C078A364()
{
  result = qword_1EBE1F8B0;
  if (!qword_1EBE1F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F8B0);
  }

  return result;
}

unint64_t sub_1C078A3BC()
{
  result = qword_1EBE1F8B8;
  if (!qword_1EBE1F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F8B8);
  }

  return result;
}

unint64_t sub_1C078A414()
{
  result = qword_1EBE1F8C0;
  if (!qword_1EBE1F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F8C0);
  }

  return result;
}

unint64_t sub_1C078A46C()
{
  result = qword_1EBE1F8C8;
  if (!qword_1EBE1F8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F8D0, &qword_1C099A7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F8C8);
  }

  return result;
}

uint64_t sub_1C078A4D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE158B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C095D6EC();
  v3 = __swift_project_value_buffer(v2, qword_1EBE1F898);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C078A588()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078A674()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078A75C()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078A844()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078A934()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078AA24()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078AB1C()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078AC04()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078AD24()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078AE3C()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078AF58()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078B068()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078B14C()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078B250()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078B36C()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078B480()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078B588()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078B674()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078B758()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078B840()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078B92C()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078BA48()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078BB44()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078BC3C()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078BD50()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078BE6C()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078BFAC()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078C0A8()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078C1CC()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078C2B0()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t UsoPrimitiveIntegerBuilder.__allocating_init(value:)(uint64_t a1, char a2)
{
  result = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(result + 48) = a2 & 1;
  *(result + 16) = v5;
  *(result + 24) = v5;
  *(result + 32) = v5;
  *(result + 40) = a1;
  return result;
}

void *UsoExpressionBuilder.__allocating_init(operatorAsString:operand:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  result[6] = a2;
  result[7] = a3;
  result[2] = v7;
  result[3] = v7;
  result[4] = v7;
  result[5] = a1;
  return result;
}

void *_s12SiriOntology25UsoPrimitiveStringBuilderC5valueACSSSg_tcfC_0(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  result[5] = a1;
  result[6] = a2;
  result[2] = v5;
  result[3] = v5;
  result[4] = v5;
  return result;
}

uint64_t sub_1C078C4C0(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(v1 + 24);

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 24) = v4;
  if ((result & 1) == 0)
  {
    result = sub_1C052233C(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    *(v1 + 24) = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_1C052233C((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  v8 = v4 + 16 * v7;
  *(v8 + 32) = v2;
  *(v8 + 40) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1C078C580()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
}

uint64_t sub_1C078C5B8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 152);
  *(v1 + 152) = a1;
}

uint64_t sub_1C078C650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v9 = *(v4 + 152);
  if (!*(v9 + 16))
  {
    goto LABEL_12;
  }

  v10 = *(v4 + 152);

  v11 = sub_1C0516A8C(a1, a2);
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1C68DDAD0](0, v13);
    goto LABEL_8;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);

LABEL_8:

LABEL_13:
    sub_1C078D16C(v15, a3, a4);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C078C780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 152);

  v8 = sub_1C078D3F0(a1, a2, v7, a3);

  return v8;
}

uint64_t sub_1C078C814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  sub_1C078E144(a1, a2, (v6 + 152), a3, a4, a5, a6);
  return swift_endAccess();
}

uint64_t PrimitiveStringOperators.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x726F74617265706FLL;
  v3 = 0x646E65707061;
  v4 = 0x6563616C706572;
  if (v1 != 4)
  {
    v4 = 0x6C61757145746F6ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

unint64_t PrimitiveIntegerOperators.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0x6563616C706572;
    v7 = 0x6E6168547373656CLL;
    v8 = 0x6C61757145746F6ELL;
    if (v1 == 10)
    {
      v8 = 0xD000000000000010;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD000000000000013;
    if (v1 == 7)
    {
      v9 = 0x5472657461657267;
    }

    if (v1 != 6)
    {
      v6 = v9;
    }

    if (*v0 <= 8u)
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
    v2 = 0xD000000000000012;
    if (v1 == 4)
    {
      v2 = 0xD000000000000019;
    }

    if (v1 == 3)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD000000000000010;
    v4 = 0xD000000000000014;
    if (v1 != 1)
    {
      v4 = 0xD00000000000001CLL;
    }

    if (*v0)
    {
      v3 = v4;
    }

    if (*v0 <= 2u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t ListOperators.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7465536F54646461;
  v3 = 0x724665766F6D6572;
  v4 = 0x736E6961746E6F63;
  if (v1 != 4)
  {
    v4 = 0x61746E6F43746F6ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t UsoPrimitiveStringBuilder.value.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void *UsoPrimitiveStringBuilder.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return v0;
}

uint64_t UsoPrimitiveIntegerBuilder.value.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t UsoPrimitiveIntegerBuilder.init(value:)(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 48) = a2 & 1;
  *(v2 + 16) = v3;
  *(v2 + 24) = v3;
  *(v2 + 32) = v3;
  *(v2 + 40) = a1;
  return v2;
}

double sub_1C078CCA8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v5 = *(v2 + 48);
  if (qword_1ED5BDED8 != -1)
  {
    swift_once();
  }

  v9[0] = xmmword_1ED5BDEE0;
  v9[1] = xmmword_1ED5BDEF0;
  v10 = qword_1ED5BDF00;

  v6 = sub_1C0514CE0(v9, v4, v5, 0, MEMORY[0x1E69E7CC0]);

  swift_unownedRetain();

  *&v9[0] = a1;
  *(&v9[0] + 1) = v6;
  sub_1C05166B8(v9);
  *&v9[0] = a1;
  *(&v9[0] + 1) = v6;
  sub_1C0516880(v9);
  *&v9[0] = a1;
  *(&v9[0] + 1) = v6;
  sub_1C05164EC(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE171F0, &qword_1C09709C8);
  v7 = swift_allocObject();
  *&result = 1;
  *(v7 + 16) = xmmword_1C096E0C0;
  *(v7 + 32) = a1;
  *(v7 + 40) = v6;
  return result;
}

void *_s12SiriOntology10UsoBuilderCfd_0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_1C078CE34()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

void *UsoDefinedValueBuilder.init(valueTypeString:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  v2[5] = a1;
  v2[6] = a2;
  v2[2] = v3;
  v2[3] = v3;
  v2[4] = v3;
  return v2;
}

double sub_1C078CEA4(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7 = *(v1 + 40);
  v8 = v3;
  strcpy(v9, "DefinedValue");
  HIBYTE(v9[6]) = 0;
  v9[7] = -5120;
  v10 = 0;

  v4 = sub_1C0514CE0(&v7, 0, 0, 255, MEMORY[0x1E69E7CC0]);

  swift_unownedRetain();

  v7 = a1;
  v8 = v4;
  sub_1C05166B8(&v7);
  v7 = a1;
  v8 = v4;
  sub_1C0516880(&v7);
  v7 = a1;
  v8 = v4;
  sub_1C05164EC(&v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE171F0, &qword_1C09709C8);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_1C096E0C0;
  *(v5 + 32) = a1;
  *(v5 + 40) = v4;
  return result;
}

void *UsoDefinedValueBuilder.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return v0;
}

uint64_t UsoDefinedValueBuilder.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_1C078D03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v9 = *(v4 + 56);
  if (!*(v9 + 16))
  {
    goto LABEL_12;
  }

  v10 = *(v4 + 56);

  v11 = sub_1C0516A8C(a1, a2);
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1C68DDAD0](0, v13);
    goto LABEL_8;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);

LABEL_8:

LABEL_13:
    sub_1C078D16C(v15, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C078D16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = MEMORY[0x1E69E6158];
    if (a2 == MEMORY[0x1E69E6158])
    {
      type metadata accessor for UsoPrimitiveStringBuilder();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v16 = *(v11 + 40);
        v18 = *(v11 + 48);

        v12 = &qword_1EBE168C0;
        v13 = &qword_1C096DC90;
LABEL_10:
        __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
        v15 = swift_dynamicCast();
        return (*(*(v5 - 8) + 56))(a3, v15 ^ 1u, 1, v5);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7360];
      if (a2 != MEMORY[0x1E69E7360])
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F920, &qword_1C099AEB8);
        v6 = swift_dynamicCast();
        return (*(*(a2 - 8) + 56))(a3, v6 ^ 1u, 1, a2);
      }

      type metadata accessor for UsoPrimitiveIntegerBuilder();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v17 = *(v14 + 40);
        v19 = *(v14 + 48);
        v12 = &qword_1EBE173E8;
        v13 = &unk_1C0970D70;
        goto LABEL_10;
      }
    }

    v8 = *(*(v5 - 8) + 56);
    v9 = a3;
    v10 = v5;
  }

  else
  {
    v8 = *(*(a2 - 8) + 56);
    v9 = a3;
    v10 = a2;
  }

  return v8(v9, 1, 1, v10);
}

unint64_t sub_1C078D374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 56);

  v8 = sub_1C078D3F0(a1, a2, v7, a3);

  return v8;
}

unint64_t sub_1C078D3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C095DB0C();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v29 - v12;
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v37 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  v20 = sub_1C095D9BC();
  v38 = v20;
  if (*(a3 + 16) && (v21 = v20, v22 = sub_1C0516A8C(a1, a2), (v23 & 1) != 0))
  {
    v24 = *(*(a3 + 56) + 8 * v22);
    if (v24 >> 62)
    {
      goto LABEL_21;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

    if (v25)
    {
      v29 = v9;
      v30 = v8;
      v21 = 0;
      v35 = v24 & 0xC000000000000001;
      v36 = v13;
      v33 = v25;
      v34 = v24 & 0xFFFFFFFFFFFFFF8;
      v8 = (v14 + 48);
      v31 = (v14 + 16);
      v32 = (v14 + 32);
      v9 = v14 + 8;
      while (1)
      {
        if (v35)
        {
          v14 = MEMORY[0x1C68DDAD0](v21, v24);
          v13 = v36;
          v26 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v13 = v36;
          if (v21 >= *(v34 + 16))
          {
            __break(1u);
LABEL_21:
            v25 = sub_1C095DCDC();
            goto LABEL_5;
          }

          v14 = *(v24 + 8 * v21 + 32);

          v26 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_15;
          }
        }

        sub_1C078D16C(v27, a4, v13);

        if ((*v8)(v13, 1, a4) == 1)
        {

          (*(v29 + 8))(v13, v30);
          return 0;
        }

        (*v32)(v19, v13, a4);
        (*v31)(v37, v19, a4);
        sub_1C095D9FC();
        sub_1C095D9EC();

        (*v9)(v19, a4);
        ++v21;
        if (v26 == v33)
        {
          v21 = v38;
          break;
        }
      }
    }

    return v21;
  }

  else
  {
LABEL_16:

    return 0;
  }
}

uint64_t sub_1C078D788(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v41 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v41 - v18;
  if (!*(*v20 + 16) || (sub_1C0516A8C(a1, a2), (v21 & 1) == 0))
  {

    v22 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41[0] = *a3;
    *a3 = 0x8000000000000000;
    sub_1C051D194(MEMORY[0x1E69E7CC0], a1, a2, isUniquelyReferenced_nonNull_native);

    *a3 = v41[0];
  }

  if (a5 == MEMORY[0x1E69E6158])
  {
    (*(v10 + 16))(v19, a4, MEMORY[0x1E69E6158]);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v31 = v41[0];
    v30 = v41[1];
    v33 = sub_1C07A8D48(v41, a1, a2);
    if (!*v32)
    {

      return (v33)(v41, 0);
    }

    v34 = v32;
    type metadata accessor for UsoPrimitiveStringBuilder();
    v35 = swift_allocObject();
    v35[6] = v30;
    v36 = MEMORY[0x1E69E7CC0];
    v35[2] = MEMORY[0x1E69E7CC0];
    v35[3] = v36;
    v35[5] = v31;
  }

  else
  {
    v24 = *(v10 + 16);
    if (a5 != MEMORY[0x1E69E7360])
    {
      v24(v14, a4, a5);
      type metadata accessor for UsoBuilder();
      result = swift_dynamicCast();
      if (result)
      {
        v27 = sub_1C07A8D48(v41, a1, a2);
        if (*v26)
        {
          v28 = v26;

          MEMORY[0x1C68DD810](v29);
          if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v40 = *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1C095D9AC();
          }

          sub_1C095D9DC();
          (v27)(v41, 0);
        }

        else
        {
          (v27)(v41, 0);
        }
      }

      return result;
    }

    v24(v17, a4, MEMORY[0x1E69E7360]);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v37 = v41[0];
    v33 = sub_1C07A8D48(v41, a1, a2);
    if (!*v38)
    {
      return (v33)(v41, 0);
    }

    v34 = v38;
    type metadata accessor for UsoPrimitiveIntegerBuilder();
    v35 = swift_allocObject();
    *(v35 + 48) = 0;
    v36 = MEMORY[0x1E69E7CC0];
    v35[2] = MEMORY[0x1E69E7CC0];
    v35[3] = v36;
    v35[5] = v37;
  }

  v35[4] = v36;
  MEMORY[0x1C68DD810]();
  if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C095D9AC();
  }

  sub_1C095D9DC();
  return (v33)(v41, 0);
}

uint64_t sub_1C078DBDC(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a4;
  v49 = a5;
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  if (!*(*v22 + 16) || (sub_1C0516A8C(a1, a2), (v23 & 1) == 0))
  {

    v24 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = *a3;
    *a3 = 0x8000000000000000;
    sub_1C051D194(MEMORY[0x1E69E7CC0], a1, a2, isUniquelyReferenced_nonNull_native);

    *a3 = v50[0];
  }

  if (a7 == MEMORY[0x1E69E6158])
  {
    (*(v12 + 16))(v21, a6, MEMORY[0x1E69E6158]);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v32 = v50[0];
    v33 = v50[1];
    type metadata accessor for UsoPrimitiveStringBuilder();
    v34 = swift_allocObject();
    v34[6] = v33;
    v35 = MEMORY[0x1E69E7CC0];
    v34[2] = MEMORY[0x1E69E7CC0];
    v34[3] = v35;
    v34[4] = v35;
    v34[5] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
    v36 = swift_allocObject();
    v37 = v48;
    v36[6] = v49;
    v36[7] = v34;
    v36[2] = v35;
    v36[3] = v35;
    v36[4] = v35;
    v36[5] = v37;
  }

  else
  {
    v26 = *(v12 + 16);
    if (a7 == MEMORY[0x1E69E7360])
    {
      v26(v19, a6, MEMORY[0x1E69E7360]);
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        return result;
      }

      v38 = v50[0];
      type metadata accessor for UsoPrimitiveIntegerBuilder();
      v39 = swift_allocObject();
      *(v39 + 48) = 0;
      v40 = MEMORY[0x1E69E7CC0];
      *(v39 + 16) = MEMORY[0x1E69E7CC0];
      *(v39 + 24) = v40;
      *(v39 + 32) = v40;
      *(v39 + 40) = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
      v41 = swift_allocObject();
      v42 = v48;
      v41[6] = v49;
      v41[7] = v39;
      v41[2] = v40;
      v41[3] = v40;
      v41[4] = v40;
      v41[5] = v42;
    }

    else
    {
      v26(v16, a6, a7);
      type metadata accessor for UsoBuilder();
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        return result;
      }

      v28 = v50[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
      v29 = swift_allocObject();
      v30 = v48;
      v29[6] = v49;
      v29[7] = v28;
      v31 = MEMORY[0x1E69E7CC0];
      v29[2] = MEMORY[0x1E69E7CC0];
      v29[3] = v31;
      v29[4] = v31;
      v29[5] = v30;
    }
  }

  v44 = sub_1C07A8D48(v50, a1, a2);
  if (*v43)
  {
    v45 = v43;

    MEMORY[0x1C68DD810](v46);
    if (*((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v47 = *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C095D9AC();
    }

    sub_1C095D9DC();
    (v44)(v50, 0);
  }

  else
  {
    (v44)(v50, 0);
  }
}

uint64_t sub_1C078E014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  a5(a1, a2, v5 + 56, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1C078E0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  a7(a1, a2, v7 + 56, a3, a4, a5, a6);
  return swift_endAccess();
}

uint64_t sub_1C078E144(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(*(a7 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v39 - v17;
  MEMORY[0x1EEE9AC00](v16);
  if (v20 == MEMORY[0x1E69E6158])
  {
    (*(v21 + 16))(v39 - v22, v19, MEMORY[0x1E69E6158]);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v28 = v39[0];
    v29 = v39[1];
    type metadata accessor for UsoPrimitiveStringBuilder();
    v30 = swift_allocObject();
    v30[6] = v29;
    v31 = MEMORY[0x1E69E7CC0];
    v30[2] = MEMORY[0x1E69E7CC0];
    v30[3] = v31;
    v30[4] = v31;
    v30[5] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
    v32 = swift_allocObject();
    v32[6] = a5;
    v32[7] = v30;
    v32[2] = v31;
    v32[3] = v31;
    v32[4] = v31;
    v32[5] = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1C0970C90;
    *(v33 + 32) = v32;
  }

  else
  {
    v23 = *(v21 + 16);
    if (v20 == MEMORY[0x1E69E7360])
    {
      v23(v18, v19, MEMORY[0x1E69E7360]);
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        return result;
      }

      v34 = v39[0];
      type metadata accessor for UsoPrimitiveIntegerBuilder();
      v35 = swift_allocObject();
      *(v35 + 48) = 0;
      v36 = MEMORY[0x1E69E7CC0];
      *(v35 + 16) = MEMORY[0x1E69E7CC0];
      *(v35 + 24) = v36;
      *(v35 + 32) = v36;
      *(v35 + 40) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
      v26 = swift_allocObject();
      v26[6] = a5;
      v26[7] = v35;
      v26[2] = v36;
      v26[3] = v36;
      v26[4] = v36;
      v26[5] = a4;
    }

    else
    {
      v23(v15, v19, v20);
      type metadata accessor for UsoBuilder();
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        return result;
      }

      v25 = v39[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
      v26 = swift_allocObject();
      v26[6] = a5;
      v26[7] = v25;
      v27 = MEMORY[0x1E69E7CC0];
      v26[2] = MEMORY[0x1E69E7CC0];
      v26[3] = v27;
      v26[4] = v27;
      v26[5] = a4;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1C0970C90;
    *(v33 + 32) = v26;
  }

  v37 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39[0] = *a3;
  *a3 = 0x8000000000000000;
  sub_1C051D194(v33, a1, a2, isUniquelyReferenced_nonNull_native);

  *a3 = v39[0];
  return result;
}

uint64_t sub_1C078E508()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v3 & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = *(*(v1 + 56) + 8 * v2);

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_12:

    return 0;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  type metadata accessor for UsoDefinedValueBuilder();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1C078E62C()
{
  sub_1C095D91C();
  type metadata accessor for UsoDefinedValueBuilder();
  v1 = swift_allocObject();
  v1[6] = v9;
  v2 = MEMORY[0x1E69E7CC0];
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = v2;
  v1[4] = v2;
  v1[5] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C0970C90;
  *(v3 + 32) = v1;
  swift_beginAccess();

  v4 = *(v0 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 56);
  *(v0 + 56) = 0x8000000000000000;
  sub_1C051D194(v3, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v0 + 56) = v7;
  swift_endAccess();
}

uint64_t sub_1C078E778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  v7 = *(v3 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 56);
  *(v3 + 56) = 0x8000000000000000;
  sub_1C051D194(a3, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + 56) = v10;
  return swift_endAccess();
}

void *_s12SiriOntology16UsoEntityBuilderC15valueTypeStringACSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[5] = a1;
  v4[6] = a2;
  v5 = MEMORY[0x1E69E7CC0];
  v4[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v4[2] = v5;
  v4[3] = v5;
  v4[4] = v5;
  return v4;
}

uint64_t UsoOpenEntityBuilder.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  return swift_deallocClassInstance();
}

void *UsoExpressionBuilder.init(operatorAsString:operand:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v3[6] = a2;
  v3[7] = a3;
  v3[2] = v4;
  v3[3] = v4;
  v3[4] = v4;
  v3[5] = a1;
  return v3;
}

void *sub_1C078E900(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(v2 + 48);
  *&v34 = *(v2 + 40);
  *(&v34 + 1) = v6;
  *&v35 = 0x726F74617265704FLL;
  *(&v35 + 1) = 0xE800000000000000;
  *&v36 = 0;

  v7 = sub_1C0514CE0(&v34, 0, 0, 255, MEMORY[0x1E69E7CC0]);

  swift_unownedRetain();
  v31 = v7;

  v8 = *(v3 + 56);
  LOBYTE(v34) = v5;
  result = (*(*v8 + 176))(a1, &v34);
  v32 = result;
  v30 = result[2];
  if (v30)
  {
    v10 = 0;
    v11 = result + 5;
    while (v10 < v32[2])
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      result = swift_unownedRetain();
      if (qword_1EBE15608 != -1)
      {
        result = swift_once();
      }

      if (v10 == 0x100000000)
      {
        goto LABEL_14;
      }

      v15 = qword_1EBE17FD0;
      v14 = qword_1EBE17FD8;
      v17 = qword_1EBE17FC0;
      v16 = qword_1EBE17FC8;
      v18 = qword_1EBE17FB8;
      v19 = a1;
      v20 = *(swift_unownedRetainStrong() + 56);

      swift_unownedRetainStrong();
      v21 = *(v13 + 56);

      *&v34 = v20;
      *(&v34 + 1) = v21;
      a1 = v19;
      LODWORD(v35) = v10;
      *(&v35 + 1) = v18;
      *&v36 = v17;
      *(&v36 + 1) = v16;
      *&v37 = v15;
      *(&v37 + 1) = v14;
      swift_beginAccess();
      v22 = *(v19 + 16);

      sub_1C0514AC4(&v34, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + 16) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_1C0514F9C(0, *(v22 + 2) + 1, 1, v22);
        *(v19 + 16) = v22;
      }

      v25 = *(v22 + 2);
      v24 = *(v22 + 3);
      if (v25 >= v24 >> 1)
      {
        v22 = sub_1C0514F9C((v24 > 1), v25 + 1, 1, v22);
      }

      ++v10;
      *(v22 + 2) = v25 + 1;
      v26 = &v22[64 * v25];
      v27 = v34;
      v28 = v35;
      v29 = v37;
      *(v26 + 4) = v36;
      *(v26 + 5) = v29;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      *(v19 + 16) = v22;
      swift_endAccess();

      swift_unownedRelease();
      result = sub_1C0514A70(&v34);
      v11 += 2;
      if (v30 == v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE171F0, &qword_1C09709C8);
    result = swift_allocObject();
    *(result + 1) = xmmword_1C096E0C0;
    result[4] = a1;
    result[5] = v31;
  }

  return result;
}

uint64_t sub_1C078EC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *(v5 + 48);
  *&v49 = *(v5 + 40);
  *(&v49 + 1) = v11;
  strcpy(v50, "Operator");
  v50[9] = 0;
  *&v50[10] = 0;
  *&v50[12] = -402653184;
  *&v50[16] = 0;

  v12 = sub_1C0514CE0(&v49, 0, 0, 255, MEMORY[0x1E69E7CC0]);

  swift_unownedRetain();

  swift_unownedRetainStrong();
  v13 = *(a3 + 56);

  swift_unownedRetainStrong();
  v14 = *(v12 + 56);

  v15 = *(a4 + 16);
  *&v47[4] = *a4;
  *&v47[20] = v15;
  *&v50[4] = *v47;
  *&v47[36] = *(a4 + 32);
  *&v49 = v13;
  *(&v49 + 1) = v14;
  *v50 = 0;
  *&v50[20] = *&v47[16];
  *&v50[32] = *&v47[28];
  swift_beginAccess();
  v16 = *(a2 + 16);
  sub_1C0790634(a4, v47);
  sub_1C0514AC4(&v49, v47);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1C0514F9C((v18 > 1), v19 + 1, 1, v16);
    }

    *(v16 + 2) = v19 + 1;
    v20 = &v16[64 * v19];
    v21 = v49;
    v22 = *v50;
    v23 = *&v50[32];
    *(v20 + 4) = *&v50[16];
    *(v20 + 5) = v23;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    *(a2 + 16) = v16;
    swift_endAccess();
    sub_1C0514A70(&v49);
    v24 = *(v6 + 56);
    v47[0] = a5;
    v44 = (*(*v24 + 176))(a1, v47);
    v43 = *(v44 + 16);
    if (!v43)
    {
      break;
    }

    v25 = 0;
    v16 = (v44 + 40);
    while (v25 < *(v44 + 16))
    {
      v26 = *(v16 - 1);
      a2 = *v16;

      swift_unownedRetain();
      if (qword_1EBE15608 != -1)
      {
        swift_once();
      }

      if (v25 == 0x100000000)
      {
        goto LABEL_17;
      }

      v28 = qword_1EBE17FD0;
      v27 = qword_1EBE17FD8;
      v6 = qword_1EBE17FC0;
      v29 = qword_1EBE17FC8;
      v30 = a1;
      v31 = qword_1EBE17FB8;
      v32 = *(swift_unownedRetainStrong() + 56);

      v33 = swift_unownedRetainStrong();
      a2 = *(a2 + 56);
      a5 = v33;

      *v47 = v32;
      *&v47[8] = a2;
      *&v47[16] = v25;
      *&v47[24] = v31;
      *&v47[32] = v6;
      a1 = v30;
      *&v47[40] = v29;
      *&v48 = v28;
      *(&v48 + 1) = v27;
      swift_beginAccess();
      v34 = *(v30 + 16);

      sub_1C0514AC4(v47, v46);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 16) = v34;
      if ((v35 & 1) == 0)
      {
        v34 = sub_1C0514F9C(0, *(v34 + 2) + 1, 1, v34);
        *(v30 + 16) = v34;
      }

      v37 = *(v34 + 2);
      v36 = *(v34 + 3);
      if (v37 >= v36 >> 1)
      {
        v34 = sub_1C0514F9C((v36 > 1), v37 + 1, 1, v34);
      }

      ++v25;
      *(v34 + 2) = v37 + 1;
      v38 = &v34[64 * v37];
      v39 = *v47;
      v40 = *&v47[16];
      v41 = v48;
      *(v38 + 4) = *&v47[32];
      *(v38 + 5) = v41;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      *(v30 + 16) = v34;
      swift_endAccess();

      swift_unownedRelease();
      sub_1C0514A70(v47);
      v16 += 16;
      if (v43 == v25)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v16 = sub_1C0514F9C(0, *(v16 + 2) + 1, 1, v16);
    *(a2 + 16) = v16;
  }

LABEL_15:

  return swift_unownedRelease();
}

uint64_t sub_1C078F04C(uint64_t (*a1)(uint64_t))
{
  v2 = *(v1 + 48);

  v3 = *(v1 + 56);

  return a1(v3);
}

void *sub_1C078F0A8(void (*a1)(void))
{
  v3 = v1[2];

  v4 = v1[3];

  v5 = v1[4];

  v6 = v1[6];

  a1(v1[7]);
  return v1;
}

uint64_t UsoExpressionBuilder.__deallocating_deinit()
{
  UsoExpressionBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C078F12C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;
}

uint64_t sub_1C078F190()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[13];
  sub_1C0517838(v0[9], v0[10]);
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[18];
  sub_1C0517838(v0[14], v0[15]);
  v9 = v0[19];
}

uint64_t sub_1C078F1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  v7 = *(v3 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 152);
  *(v3 + 152) = 0x8000000000000000;
  sub_1C051D194(a3, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + 152) = v10;
  return swift_endAccess();
}

uint64_t _s12SiriOntology14UsoTaskBuilderC16baseEntityString04verbH0ACSS_SSSgtcfc_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v4 + 16) = v5;
  *(v4 + 24) = v5;
  *(v4 + 32) = v5;
  return v4;
}

uint64_t _s12SiriOntology14UsoTaskBuilderC16baseEntityString04verbH00I4Name06entityJ0ACSS_SSSgAA0J0VAJtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  v12 = swift_allocObject();
  v13 = *a5;
  v14 = a5[1];
  v15 = *(a5 + 4);
  v16 = *a6;
  v17 = a6[1];
  v18 = *(a6 + 4);
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;
  *(v12 + 64) = a4;
  *(v12 + 72) = v13;
  *(v12 + 88) = v14;
  *(v12 + 104) = v15;
  *(v12 + 112) = v16;
  *(v12 + 128) = v17;
  *(v12 + 144) = v18;
  v19 = MEMORY[0x1E69E7CC0];
  *(v12 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v12 + 16) = v19;
  *(v12 + 24) = v19;
  *(v12 + 32) = v19;
  return v12;
}

SiriOntology::ListOperators_optional __swiftcall ListOperators.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C095DD6C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C078F414()
{
  *v0;
  *v0;
  sub_1C095D7BC();
}

void sub_1C078F530(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x7465536F54646461;
  v5 = 0xED00007465536D6FLL;
  v6 = 0x724665766F6D6572;
  v7 = 0xE800000000000000;
  v8 = 0x736E6961746E6F63;
  if (v2 != 4)
  {
    v8 = 0x61746E6F43746F6ELL;
    v7 = 0xEB00000000736E69;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 == 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = 0x80000001C09B2710;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001C09B26F0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

SiriOntology::PrimitiveStringOperators_optional __swiftcall PrimitiveStringOperators.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C095DD6C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C078F688()
{
  *v0;
  *v0;
  *v0;
  sub_1C095D7BC();
}

void sub_1C078F79C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF646E657070615FLL;
  v4 = 0x726F74617265706FLL;
  v5 = 0xE600000000000000;
  v6 = 0x646E65707061;
  v7 = 0xE700000000000000;
  v8 = 0x6563616C706572;
  if (v2 != 4)
  {
    v8 = 0x6C61757145746F6ELL;
    v7 = 0xE900000000000073;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xD000000000000010;
  v10 = 0x80000001C09B2D20;
  if (v2 != 1)
  {
    v9 = 0xD000000000000012;
    v10 = 0x80000001C09B28B0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

SiriOntology::PrimitiveIntegerOperators_optional __swiftcall PrimitiveIntegerOperators.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C095DD6C();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C078F8D8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = PrimitiveIntegerOperators.rawValue.getter();
  v4 = v3;
  if (v2 == PrimitiveIntegerOperators.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C095DF3C();
  }

  return v7 & 1;
}

uint64_t sub_1C078F974()
{
  v1 = *v0;
  sub_1C095DFEC();
  PrimitiveIntegerOperators.rawValue.getter();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C078F9DC()
{
  v2 = *v0;
  PrimitiveIntegerOperators.rawValue.getter();
  sub_1C095D7BC();
}

uint64_t sub_1C078FA40()
{
  v1 = *v0;
  sub_1C095DFEC();
  PrimitiveIntegerOperators.rawValue.getter();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

unint64_t sub_1C078FAB0@<X0>(unint64_t *a1@<X8>)
{
  result = PrimitiveIntegerOperators.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s12SiriOntology15UsoGraphBuilderO017buildRootedEntityD006entityE07optionsAA0D0CAA0cE0C_AA0cE7OptionsVSgtFZ_0(uint64_t a1, char *a2)
{
  v3 = *a2;
  type metadata accessor for Graph();
  swift_allocObject();
  v4 = Graph.init()();
  swift_beginAccess();
  v5 = v4[4];
  result = swift_unownedRetainStrong();
  if (!v5)
  {
    __break(1u);
    return result;
  }

  swift_unownedRetain();

  LOBYTE(v26) = v3;
  v7 = a1;
  v8 = (*(*a1 + 176))(v4, &v26);
  if (!v8[2])
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v8[5];
  v24 = v8[4];

  swift_unownedRetain();

  if (qword_1EBE15600 != -1)
  {
LABEL_10:
    swift_once();
  }

  v9 = qword_1EBE17F90;
  v10 = *algn_1EBE17F98;
  v12 = qword_1EBE17FA0;
  v11 = unk_1EBE17FA8;
  v13 = qword_1EBE17FB0;
  swift_unownedRetainStrong();
  v14 = *(v5 + 56);

  swift_unownedRetainStrong();
  v15 = *(v7 + 56);

  *&v26 = v14;
  *(&v26 + 1) = v15;
  LODWORD(v27) = 0;
  *(&v27 + 1) = v9;
  *&v28 = v10;
  *(&v28 + 1) = v12;
  *&v29 = v11;
  *(&v29 + 1) = v13;
  swift_beginAccess();
  v16 = v4[2];

  sub_1C0514AC4(&v26, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[2] = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1C0514F9C(0, *(v16 + 2) + 1, 1, v16);
    v4[2] = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1C0514F9C((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[64 * v19];
  v21 = v26;
  v22 = v27;
  v23 = v29;
  *(v20 + 4) = v28;
  *(v20 + 5) = v23;
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  v4[2] = v16;
  swift_endAccess();

  swift_unownedRelease();
  sub_1C0514A70(&v26);

  swift_unownedRelease();
  return v4;
}

unint64_t sub_1C078FDC4()
{
  result = qword_1EBE1F8D8;
  if (!qword_1EBE1F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F8D8);
  }

  return result;
}

unint64_t sub_1C078FE4C()
{
  result = qword_1EBE1F8F0;
  if (!qword_1EBE1F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F8F0);
  }

  return result;
}

unint64_t sub_1C078FED4()
{
  result = qword_1EBE1F908;
  if (!qword_1EBE1F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoBuilderOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t NLIntentWrapper.traversableIntentNode.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 24))(v4);
  NLIntent.domainNode.getter(a2);
  return sub_1C0790714(v4);
}

uint64_t NLIntentWrapper.description.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v4);
  v2 = NLIntent.intentSignature.getter();
  sub_1C0790714(v4);
  return v2;
}

uint64_t NonTerminalIntentNode.init(name:childNodes:resultIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a4;
  a5[3] = a3;
  return result;
}

uint64_t NonTerminalIntentNode.ontologyNodeName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NonTerminalIntentNode.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  result = sub_1C095D7BC();
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v5 + 32;
    v15 = v5 + 32;
    v16 = *(v5 + 16);
    while (v8 < *(v5 + 16))
    {
      sub_1C0526080(v9 + 40 * v8, v22);
      sub_1C0526080(v22, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
      if (swift_dynamicCast())
      {
        v10 = v5;
        sub_1C095D7BC();
        MEMORY[0x1C68DDE90](*(v19 + 16));
        v11 = *(v19 + 16);
        if (v11)
        {
          v12 = (v19 + 40);
          do
          {
            v13 = *(v12 - 1);
            v14 = *v12;

            sub_1C095D7BC();

            v12 += 2;
            --v11;
          }

          while (v11);
        }

        sub_1C056D194(a1);

        result = __swift_destroy_boxed_opaque_existential_1(v22);
        v5 = v10;
        v9 = v15;
        v7 = v16;
      }

      else
      {
        sub_1C0526080(v22, v21);
        if (swift_dynamicCast())
        {
          v21[0] = v17;
          v21[1] = v18;
          v21[2] = v19;
          v21[3] = v20;
          NonTerminalIntentNode.hash(into:)(a1);
          __swift_destroy_boxed_opaque_existential_1(v22);
        }

        else
        {
          result = __swift_destroy_boxed_opaque_existential_1(v22);
        }
      }

      if (++v8 == v7)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t NonTerminalIntentNode.hashValue.getter()
{
  v1 = v0[3];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = v1;
  sub_1C095DFEC();
  NonTerminalIntentNode.hash(into:)(v3);
  return sub_1C095E03C();
}

uint64_t sub_1C0790A98()
{
  v1 = v0[3];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = v1;
  sub_1C095DFEC();
  NonTerminalIntentNode.hash(into:)(v3);
  return sub_1C095E03C();
}

uint64_t sub_1C0790AF8()
{
  v1 = v0[3];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = v1;
  sub_1C095DFEC();
  NonTerminalIntentNode.hash(into:)(v3);
  return sub_1C095E03C();
}

uint64_t NonTerminalIntentNode.description.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[3];
  return sub_1C0790B98();
}

uint64_t sub_1C0790B98()
{
  v1 = v0[1];
  v2 = v0[3];
  v16 = *v0;
  v17 = v1;

  MEMORY[0x1C68DD690](91, 0xE100000000000000);
  v20 = v16;
  v21 = v17;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v2 + 32;
    while (v4 < *(v2 + 16))
    {
      sub_1C0526080(v6, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E78, &qword_1C0970640);
      if (!swift_dynamicCast())
      {
        goto LABEL_12;
      }

      sub_1C0531D80(v13, &v16);
      v10 = v18;
      v11 = v19;
      __swift_project_boxed_opaque_existential_1(&v16, v18);
      if ((*(v11 + 8))(v10, v11))
      {
        if (v5)
        {
          MEMORY[0x1C68DD690](43, 0xE100000000000000);
        }

        v7 = v18;
        v8 = v19;
        __swift_project_boxed_opaque_existential_1(&v16, v18);
        v9 = (*(v8 + 16))(v7, v8);
        MEMORY[0x1C68DD690](v9);

        v5 = 1;
      }

      ++v4;
      __swift_destroy_boxed_opaque_existential_1(&v16);
      v6 += 40;
      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_1C0791908(v13);
    result = sub_1C095DD0C();
    __break(1u);
  }

  else
  {
LABEL_10:
    MEMORY[0x1C68DD690](93, 0xE100000000000000);
    return v20;
  }

  return result;
}

uint64_t sub_1C0790DB4()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[3];
  return sub_1C0790B98();
}

unint64_t NonTerminalIntentNode.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];

  sub_1C095DC1C();

  MEMORY[0x1C68DD690](v1, v2);
  MEMORY[0x1C68DD690](0x4E646C696863202CLL, 0xED00003D7365646FLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F928, &qword_1C099AED8);
  v4 = sub_1C095D78C();
  MEMORY[0x1C68DD690](v4);

  MEMORY[0x1C68DD690](62, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

uint64_t sub_1C0790EF4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C0526080(v3, &v19);
      sub_1C0531D80(&v19, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E78, &qword_1C0970640);
      if (swift_dynamicCast())
      {
        if (*(&v16 + 1))
        {
          sub_1C0531D80(&v15, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1C0577D70(0, v4[2] + 1, 1, v4);
          }

          v6 = v4[2];
          v5 = v4[3];
          if (v6 >= v5 >> 1)
          {
            v4 = sub_1C0577D70((v5 > 1), v6 + 1, 1, v4);
          }

          v4[2] = v6 + 1;
          sub_1C0531D80(v18, &v4[5 * v6 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        v17 = 0;
        v15 = 0u;
        v16 = 0u;
      }

      sub_1C0791908(&v15);
LABEL_5:
      v3 += 40;
      if (!--v2)
      {
        goto LABEL_14;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_14:
  result = (v4 + 4);
  v8 = -v4[2];
  v9 = -1;
  while (1)
  {
    v10 = v8 + v9;
    if (v8 + v9 == -1)
    {
LABEL_18:

      return v10 != -1;
    }

    if (++v9 >= v4[2])
    {
      break;
    }

    v11 = result + 40;
    sub_1C0526080(result, &v19);
    v12 = v20;
    v13 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    v14 = (*(v13 + 8))(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    result = v11;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t static NonTerminalIntentNode.rootNode(forDomainNode:inEventTree:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E90, &qword_1C099AEE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C096E0C0;
  *(v9 + 56) = &type metadata for NonTerminalIntentNode;
  *(v9 + 64) = &protocol witness table for NonTerminalIntentNode;
  v10 = swift_allocObject();
  *(v9 + 32) = v10;
  v10[2] = v6;
  v10[3] = v5;
  v10[4] = v8;
  v10[5] = v7;
  v11 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C096E0C0;
    *(v12 + 56) = &type metadata for NonTerminalIntentNode;
    *(v12 + 64) = &protocol witness table for NonTerminalIntentNode;
    v13 = swift_allocObject();
    *(v12 + 32) = v13;
    v13[4] = v11;
    v13[5] = v9;
    v9 = v12;
    v13[2] = 0x746E657665;
    v13[3] = 0xE500000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E90, &qword_1C099AEE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C096E0C0;
  *(v14 + 56) = &type metadata for NonTerminalIntentNode;
  *(v14 + 64) = &protocol witness table for NonTerminalIntentNode;
  v15 = swift_allocObject();
  *(v14 + 32) = v15;
  v15[2] = 0x7463656A627573;
  v15[3] = 0xE700000000000000;
  v15[4] = v11;
  v15[5] = v9;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C096E0C0;
  *(v16 + 56) = &type metadata for NonTerminalIntentNode;
  *(v16 + 64) = &protocol witness table for NonTerminalIntentNode;
  v17 = swift_allocObject();
  *(v16 + 32) = v17;
  v17[2] = 0x646E616D6D6F63;
  v17[3] = 0xE700000000000000;
  v17[4] = v11;
  v17[5] = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C096E0C0;
  *(v18 + 56) = &type metadata for NonTerminalIntentNode;
  *(v18 + 64) = &protocol witness table for NonTerminalIntentNode;
  v19 = swift_allocObject();
  *(v18 + 32) = v19;
  v19[2] = 0x6E6F69746361;
  v19[3] = 0xE600000000000000;
  v19[4] = v11;
  v19[5] = v16;
  strcpy(a3, "SiriAssistant");
  *(a3 + 14) = -4864;
  *(a3 + 16) = v11;
  *(a3 + 24) = v18;
}

uint64_t sub_1C0791388(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v5 = *v1;
  v4 = v1[1];
  v3 = v1[2];
  v2 = v1[3];

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_29:
    result = sub_1C0791704(v27);
    v27 = result;
  }

  v7 = v27[2];
  if (!v7)
  {
    __break(1u);
    return result;
  }

  v8 = v7 - 1;
  v27[2] = v8;
  sub_1C0531D80(&v27[5 * v8 + 4], v37);
  v9 = v38;
  v10 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  if (v5 == (*(v10 + 8))(v9, v10) && v4 == v11)
  {
  }

  else
  {
    v13 = sub_1C095DF3C();

    if ((v13 & 1) == 0)
    {

      goto LABEL_26;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E90, &qword_1C099AEE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C096E0C0;
  *(v14 + 56) = &type metadata for NonTerminalIntentNode;
  *(v14 + 64) = &protocol witness table for NonTerminalIntentNode;
  v15 = swift_allocObject();
  v16 = v14;
  *(v14 + 32) = v15;
  v15[2] = v5;
  v15[3] = v4;
  v15[4] = v3;
  v15[5] = v2;
  v17 = v27;
  v18 = v27[2];
  if (!v18)
  {

LABEL_24:

    goto LABEL_27;
  }

  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17[2] = v18 - 1;
    sub_1C0531D80(&v27[5 * v18 - 1], v34);
    v33 = v19;
    v20 = *(v16 + 16);
    if (v20)
    {
      break;
    }

    v16 = v19;
    if (!*(v19 + 16))
    {
      goto LABEL_25;
    }

LABEL_21:
    __swift_destroy_boxed_opaque_existential_1(v34);
    v18 = v17[2];
    if (!v18)
    {
      goto LABEL_24;
    }
  }

  v21 = v16 + 32;
  do
  {
    sub_1C0526080(v21, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
    if (swift_dynamicCast())
    {
      v22 = v35;
      v23 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v24 = (*(v23 + 8))(v22, v23);
      v26 = sub_1C08035DC(v24, v25, v28, v29, v30, v31);

      sub_1C05CA530(v26);
    }

    v21 += 40;
    --v20;
  }

  while (v20);

  v16 = v33;
  v17 = v27;
  v19 = MEMORY[0x1E69E7CC0];
  if (*(v33 + 16))
  {
    goto LABEL_21;
  }

LABEL_25:

  __swift_destroy_boxed_opaque_existential_1(v34);
LABEL_26:
  v16 = MEMORY[0x1E69E7CC0];
LABEL_27:
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v16;
}

uint64_t _s12SiriOntology21NonTerminalIntentNodeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  result = *a1;
  v4 = a1[3];
  v5 = a2[3];
  if (result != *a2 || a1[1] != a2[1])
  {
    result = sub_1C095DF3C();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(v4 + 16);
  if (v7 != *(v5 + 16))
  {
    return 0;
  }

  v8 = 0;
  v9 = v4 + 32;
  for (i = v5 + 32; ; i += 40)
  {
    if (v7 == v8)
    {
      return 1;
    }

    if (v8 >= *(v4 + 16))
    {
      break;
    }

    result = sub_1C0526080(v9, v14);
    v11 = *(v5 + 16);
    if (v8 == v11)
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
      return 1;
    }

    if (v8++ >= v11)
    {
      goto LABEL_18;
    }

    v9 += 40;
    sub_1C0531D80(v14, v15);
    sub_1C0526080(i, v18);
    v12 = v16;
    v13 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    LOBYTE(v12) = (*(v13 + 24))(v18, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1C07918A4()
{
  result = qword_1EBE1F930;
  if (!qword_1EBE1F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F930);
  }

  return result;
}

uint64_t sub_1C0791908(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F938, &qword_1C099B020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AddressOntologyNode.StreetType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1C095DF4C();

  v4 = v2 - 128;
  if (v2 >= 0x80)
  {
    v5 = -94;
    LOBYTE(v2) = 0x80;
    switch(v4)
    {
      case 0uLL:
        goto LABEL_2;
      case 1uLL:
        LOBYTE(v2) = -127;
        goto LABEL_2;
      case 2uLL:
        LOBYTE(v2) = -126;
        goto LABEL_2;
      case 3uLL:
        LOBYTE(v2) = -125;
        goto LABEL_2;
      case 4uLL:
        LOBYTE(v2) = -124;
        goto LABEL_2;
      case 5uLL:
        LOBYTE(v2) = -123;
        goto LABEL_2;
      case 6uLL:
        LOBYTE(v2) = -122;
        goto LABEL_2;
      case 7uLL:
        LOBYTE(v2) = -121;
        goto LABEL_2;
      case 8uLL:
        LOBYTE(v2) = -120;
        goto LABEL_2;
      case 9uLL:
        LOBYTE(v2) = -119;
        goto LABEL_2;
      case 0xAuLL:
        LOBYTE(v2) = -118;
        goto LABEL_2;
      case 0xBuLL:
        LOBYTE(v2) = -117;
        goto LABEL_2;
      case 0xCuLL:
        LOBYTE(v2) = -116;
        goto LABEL_2;
      case 0xDuLL:
        LOBYTE(v2) = -115;
        goto LABEL_2;
      case 0xEuLL:
        LOBYTE(v2) = -114;
        goto LABEL_2;
      case 0xFuLL:
        LOBYTE(v2) = -113;
        goto LABEL_2;
      case 0x10uLL:
        LOBYTE(v2) = -112;
        goto LABEL_2;
      case 0x11uLL:
        LOBYTE(v2) = -111;
        goto LABEL_2;
      case 0x12uLL:
        LOBYTE(v2) = -110;
        goto LABEL_2;
      case 0x13uLL:
        LOBYTE(v2) = -109;
        goto LABEL_2;
      case 0x14uLL:
        LOBYTE(v2) = -108;
        goto LABEL_2;
      case 0x15uLL:
        LOBYTE(v2) = -107;
        goto LABEL_2;
      case 0x16uLL:
        LOBYTE(v2) = -106;
        goto LABEL_2;
      case 0x17uLL:
        LOBYTE(v2) = -105;
        goto LABEL_2;
      case 0x18uLL:
        LOBYTE(v2) = -104;
        goto LABEL_2;
      case 0x19uLL:
        LOBYTE(v2) = -103;
        goto LABEL_2;
      case 0x1AuLL:
        LOBYTE(v2) = -102;
        goto LABEL_2;
      case 0x1BuLL:
        LOBYTE(v2) = -101;
        goto LABEL_2;
      case 0x1CuLL:
        LOBYTE(v2) = -100;
        goto LABEL_2;
      case 0x1DuLL:
        LOBYTE(v2) = -99;
        goto LABEL_2;
      case 0x1EuLL:
        LOBYTE(v2) = -98;
        goto LABEL_2;
      case 0x1FuLL:
        LOBYTE(v2) = -97;
        goto LABEL_2;
      case 0x20uLL:
        LOBYTE(v2) = -96;
        goto LABEL_2;
      case 0x21uLL:
        LOBYTE(v2) = -95;
        goto LABEL_2;
      case 0x22uLL:
        break;
      case 0x23uLL:
        v5 = -93;
        break;
      case 0x24uLL:
        v5 = -92;
        break;
      case 0x25uLL:
        v5 = -91;
        break;
      case 0x26uLL:
        v5 = -90;
        break;
      case 0x27uLL:
        v5 = -89;
        break;
      case 0x28uLL:
        v5 = -88;
        break;
      case 0x29uLL:
        v5 = -87;
        break;
      case 0x2AuLL:
        v5 = -86;
        break;
      case 0x2BuLL:
        v5 = -85;
        break;
      case 0x2CuLL:
        v5 = -84;
        break;
      case 0x2DuLL:
        v5 = -83;
        break;
      case 0x2EuLL:
        v5 = -82;
        break;
      case 0x2FuLL:
        v5 = -81;
        break;
      case 0x30uLL:
        v5 = -80;
        break;
      case 0x31uLL:
        v5 = -79;
        break;
      case 0x32uLL:
        v5 = -78;
        break;
      case 0x33uLL:
        v5 = -77;
        break;
      default:
        v5 = -76;
        break;
    }
  }

  else
  {
LABEL_2:
    v5 = v2;
  }

  *a1 = v5;
  return result;
}

uint64_t AddressOntologyNode.StreetType.rawValue.getter()
{
  result = 0x79656C6C61;
  switch(*v0)
  {
    case 1:
      return 0x78656E6E61;
    case 2:
      return 0x6164696E657661;
    case 3:
      return 0x65756E657661;
    case 4:
      return 0x6F6F796162;
    case 5:
      return 0x6863616562;
    case 6:
      return 1684956514;
    case 7:
      return 0x6666756C62;
    case 8:
      return 0x736666756C62;
    case 9:
      return 0x6D6F74746F62;
    case 0xA:
      return 0x726176656C756F62;
    case 0xB:
      return 0x68636E617262;
    case 0xC:
      return 0x656764697262;
    case 0xD:
      return 0x6B6F6F7262;
    case 0xE:
      return 0x736B6F6F7262;
    case 0xF:
      return 1735554402;
    case 0x10:
      return 0x7367727562;
    case 0x11:
      return 0x737361707962;
    case 0x12:
      return 0x656C6C6163;
    case 0x13:
      return 0x6F6E696D6163;
    case 0x14:
      return 1886216547;
    case 0x15:
      return 0x6E6F796E6163;
    case 0x16:
      return 1701863779;
    case 0x17:
      return 0x7961776573756163;
    case 0x18:
      return 0x7265746E6563;
    case 0x19:
      return 0x737265746E6563;
    case 0x1A:
      return 0x656C63726963;
    case 0x1B:
      return 0x73656C63726963;
    case 0x1C:
      return 0x6666696C63;
    case 0x1D:
      return 0x736666696C63;
    case 0x1E:
      return 1651862627;
    case 0x1F:
      return 0x6E6F6D6D6F63;
    case 0x20:
      return 0x736E6F6D6D6F63;
    case 0x21:
      return 0x72656E726F63;
    case 0x22:
      return 0x657372756F63;
    case 0x23:
      return 0x7472756F63;
    case 0x24:
      return 0x737472756F63;
    case 0x25:
      return 1702260579;
    case 0x26:
      return 0x7365766F63;
    case 0x27:
      return 0x6B65657263;
    case 0x28:
      return 0x746E656373657263;
    case 0x29:
      return 0x7473657263;
    case 0x2A:
      return 0x676E6973736F7263;
    case 0x2B:
      return 0x616F7273736F7263;
    case 0x2C:
      return 0x6576727563;
    case 0x2D:
      return 1701601636;
    case 0x2E:
      return 7168356;
    case 0x2F:
      return 0x656469766964;
    case 0x30:
      return 0x6576697264;
    case 0x31:
      return 0x736576697264;
    case 0x32:
      return 0x657461747365;
    case 0x33:
      return 0x73657461747365;
    case 0x34:
      return 0x7773736572707865;
    case 0x35:
      return 0x6F69736E65747865;
    case 0x36:
      return 0x6F69736E65747865;
    case 0x37:
      return 0x646C656966;
    case 0x38:
      return 0x73646C656966;
    case 0x39:
      return 1952541798;
    case 0x3A:
      return 0x7374616C66;
    case 0x3B:
      return 1685221222;
    case 0x3C:
      return 0x7364726F66;
    case 0x3D:
      return 0x747365726F66;
    case 0x3E:
      return 0x6567726F66;
    case 0x3F:
      return 0x736567726F66;
    case 0x40:
      return 1802661734;
    case 0x41:
      return 0x736B726F66;
    case 0x42:
      return 1953656678;
    case 0x43:
      v2 = 1701147238;
      return v2 | 0x79617700000000;
    case 0x44:
      return 0x6E6564726167;
    case 0x45:
      return 0x736E6564726167;
    case 0x46:
      v2 = 1702125927;
      return v2 | 0x79617700000000;
    case 0x47:
      return 1852140647;
    case 0x48:
      return 0x736E656C67;
    case 0x49:
      return 0x6E65657267;
    case 0x4A:
      return 0x736E65657267;
    case 0x4B:
      return 0x65766F7267;
    case 0x4C:
      return 0x7365766F7267;
    case 0x4D:
      return 0x726F62726168;
    case 0x4E:
      return 0x73726F62726168;
    case 0x4F:
      return 0x6E65766168;
    case 0x50:
      return 0x73746867696568;
    case 0x51:
      v2 = 1751607656;
      return v2 | 0x79617700000000;
    case 0x52:
      return 1819044200;
    case 0x53:
      return 0x736C6C6968;
    case 0x54:
      return 0x776F6C6C6F68;
    case 0x55:
      return 0x74656C6E69;
    case 0x56:
      return 0x6E6F6974636E756ALL;
    case 0x57:
      return 0x6E6F6974636E756ALL;
    case 0x58:
      return 7955819;
    case 0x59:
      return 1937335659;
    case 0x5A:
      return 0x6C6C6F6E6BLL;
    case 0x5B:
      return 0x736C6C6F6E6BLL;
    case 0x5C:
      return 1701536108;
    case 0x5D:
      return 0x73656B616CLL;
    case 0x5E:
      return 0x676E69646E616CLL;
    case 0x5F:
      return 1701732716;
    case 0x60:
      return 0x746867696CLL;
    case 0x61:
      return 0x73746867696CLL;
    case 0x62:
      return 1717661548;
    case 0x63:
      return 1801678700;
    case 0x64:
      return 0x736B636F6CLL;
    case 0x65:
      return 0x6567646F6CLL;
    case 0x66:
      return 1886351212;
    case 0x67:
      return 0x726F6E616DLL;
    case 0x68:
      return 0x73726F6E616DLL;
    case 0x69:
      return 0x776F6461656DLL;
    case 0x6A:
      return 0x73776F6461656DLL;
    case 0x6B:
      return 1819044205;
    case 0x6C:
      return 0x736C6C696DLL;
    case 0x6D:
      return 0x796177726F746F6DLL;
    case 0x6E:
      return 0x6E6961746E756F6DLL;
    case 0x6F:
      return 0x6E6961746E756F6DLL;
    case 0x70:
      return 0x746E756F6DLL;
    case 0x71:
      return 1801676142;
    case 0x72:
      return 0x6472616863726FLL;
    case 0x73:
      return 0x737361707265766FLL;
    case 0x74:
      v2 = 1802658160;
      return v2 | 0x79617700000000;
    case 0x75:
      return 0x737961776B726170;
    case 0x76:
      return 0x6F65736170;
    case 0x77:
      v3 = 1936941424;
      goto LABEL_110;
    case 0x78:
      return 1701734768;
    case 0x79:
      return 0x73656E6970;
    case 0x7A:
      return 0x6563616C70;
    case 0x7B:
      return 0x6E69616C70;
    case 0x7C:
      return 0x736E69616C70;
    case 0x7D:
      return 0x617A616C70;
    case 0x7E:
      return 0x746E696F70;
    case 0x7F:
      return 0x73746E696F70;
    case 0x80:
      return 1953656688;
    case 0x81:
      return 0x7374726F70;
    case 0x82:
      return 0x65697269617270;
    case 0x83:
      return 0x6C6169646172;
    case 0x84:
      return 0x68636E6172;
    case 0x85:
      return 0x6469706172;
    case 0x86:
      return 0x736469706172;
    case 0x87:
      return 1953719666;
    case 0x88:
      return 0x6567646972;
    case 0x89:
      return 0x736567646972;
    case 0x8A:
      return 0x7265766972;
    case 0x8B:
      return 1684107122;
    case 0x8C:
      return 0x7364616F72;
    case 0x8D:
      return 0x6574756F72;
    case 0x8E:
      return 6649202;
    case 0x8F:
      return 0x6C616F6873;
    case 0x90:
      return 0x736C616F6873;
    case 0x91:
      return 0x65726F6873;
    case 0x92:
      return 0x7365726F6873;
    case 0x93:
      return 0x796177796B73;
    case 0x94:
      return 0x676E69727073;
    case 0x95:
      return 0x73676E69727073;
    case 0x96:
      return 0x657261757173;
    case 0x97:
      return 0x73657261757173;
    case 0x98:
      return 0x6E6F6974617473;
    case 0x99:
      return 0x756E657661727473;
    case 0x9A:
      return 0x6D6165727473;
    case 0x9B:
      return 0x73746565727473;
    case 0x9C:
      return 0x746565727473;
    case 0x9D:
      return 0x74696D6D7573;
    case 0x9E:
      return 0x65636172726574;
    case 0x9F:
      return 0x776867756F726874;
    case 0xA0:
      return 0x6563617274;
    case 0xA1:
      return 0x6B63617274;
    case 0xA2:
      return 0x7763696666617274;
    case 0xA3:
      return 0x6C69617274;
    case 0xA4:
      return 0x6C656E6E7574;
    case 0xA5:
      return 0x656B69706E727574;
    case 0xA6:
      return 0x7361707265646E75;
    case 0xA7:
      return 0x736E6F696E75;
    case 0xA8:
      return 0x6E6F696E75;
    case 0xA9:
      return 0x7379656C6C6176;
    case 0xAA:
      return 0x79656C6C6176;
    case 0xAB:
      return 0x7377656976;
    case 0xAC:
      return 2003134838;
    case 0xAD:
      return 0x736567616C6C6976;
    case 0xAE:
      v3 = 1819044214;
LABEL_110:
      result = v3 | 0x65676100000000;
      break;
    case 0xAF:
      result = 0x656C6C6976;
      break;
    case 0xB0:
      result = 0x6174736976;
      break;
    case 0xB1:
      result = 7954807;
      break;
    case 0xB2:
      result = 0x736C6C6577;
      break;
    case 0xB3:
      result = 1819043191;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C079295C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AddressOntologyNode.StreetType.rawValue.getter();
  v4 = v3;
  if (v2 == AddressOntologyNode.StreetType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C095DF3C();
  }

  return v7 & 1;
}

unint64_t sub_1C07929FC()
{
  result = qword_1EBE1F940;
  if (!qword_1EBE1F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F940);
  }

  return result;
}

uint64_t sub_1C0792A50()
{
  v1 = *v0;
  sub_1C095DFEC();
  AddressOntologyNode.StreetType.rawValue.getter();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0792AB8()
{
  v2 = *v0;
  AddressOntologyNode.StreetType.rawValue.getter();
  sub_1C095D7BC();
}

uint64_t sub_1C0792B1C()
{
  v1 = *v0;
  sub_1C095DFEC();
  AddressOntologyNode.StreetType.rawValue.getter();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0792B80@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return AddressOntologyNode.StreetType.init(rawValue:)(a1);
}

uint64_t sub_1C0792B8C@<X0>(uint64_t *a1@<X8>)
{
  result = AddressOntologyNode.StreetType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C0792BB4(uint64_t a1)
{
  result = sub_1C0792BDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0792BDC()
{
  result = qword_1EBE1F948;
  if (!qword_1EBE1F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F948);
  }

  return result;
}

unint64_t sub_1C0792C34()
{
  result = qword_1EBE1F950;
  if (!qword_1EBE1F950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F958, &qword_1C099B0E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F950);
  }

  return result;
}

unint64_t sub_1C0792CA8(uint64_t a1)
{
  result = sub_1C0792CD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0792CD0()
{
  result = qword_1EBE1F960;
  if (!qword_1EBE1F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F960);
  }

  return result;
}

uint64_t _s10StreetTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x4D)
  {
    goto LABEL_17;
  }

  if (a2 + 179 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 179) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 179;
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

      return (*a1 | (v4 << 8)) - 179;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 179;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB4;
  v8 = v6 - 180;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10StreetTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 179 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 179) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x4D)
  {
    v4 = 0;
  }

  if (a2 > 0x4C)
  {
    v5 = ((a2 - 77) >> 8) + 1;
    *result = a2 - 77;
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
    *result = a2 - 77;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AddressOntologyNode.Proximity.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1C095DD6C();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t AddressOntologyNode.Proximity.rawValue.getter()
{
  v1 = 28265;
  v2 = 1918985582;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 28271;
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

unint64_t sub_1C0792F70()
{
  result = qword_1EBE1F968;
  if (!qword_1EBE1F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F968);
  }

  return result;
}

uint64_t sub_1C0792FC4()
{
  v1 = *v0;
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0793090()
{
  *v0;
  *v0;
  *v0;
  sub_1C095D7BC();
}

uint64_t sub_1C0793148()
{
  v1 = *v0;
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0793210@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return AddressOntologyNode.Proximity.init(rawValue:)(a1);
}

void sub_1C079321C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 28265;
  v5 = 0xE400000000000000;
  v6 = 1918985582;
  v7 = 0x80000001C09B26B0;
  if (v2 != 3)
  {
    v7 = 0x80000001C09B26D0;
  }

  if (v2 != 2)
  {
    v6 = 0xD000000000000010;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 28271;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1C07932A4(uint64_t a1)
{
  result = sub_1C07932CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C07932CC()
{
  result = qword_1EBE1F970;
  if (!qword_1EBE1F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F970);
  }

  return result;
}

unint64_t sub_1C0793324()
{
  result = qword_1EBE1F978;
  if (!qword_1EBE1F978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F980, &qword_1C099B4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F978);
  }

  return result;
}

unint64_t sub_1C0793398(uint64_t a1)
{
  result = sub_1C07933C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C07933C0()
{
  result = qword_1EBE1F988;
  if (!qword_1EBE1F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F988);
  }

  return result;
}

uint64_t static AddressOntologyNode.LandmarkNode.venueLandmarkNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.LandmarkNode.airportLandmarkNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.LandmarkNode.theaterLandmarkNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.LandmarkNode.businessLandmarkNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.LandmarkNode.poiLandmarkNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t AddressOntologyNode.LandmarkNode.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t AddressOntologyNode.LandmarkNode.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t _s12SiriOntology07AddressB4NodeC08LandmarkD0C4name13multicardinalAESS_Sbtcfc_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C099B570;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  *(inited + 32) = swift_initStaticObject();
  *(inited + 40) = swift_initStaticObject();
  *(inited + 48) = swift_initStaticObject();
  *(inited + 56) = swift_initStaticObject();
  *(inited + 64) = swift_initStaticObject();
  v6 = sub_1C077D12C(inited);
  swift_setDeallocating();
  v7 = *(inited + 16);
  swift_arrayDestroy();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = v6;
  return v2;
}

uint64_t sub_1C07937CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0519234(MEMORY[0x1E69E7CC0]);
  v104 = a1;
  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  v108 = v5 + 64;
  v109 = v5;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v110 = v8 & v6;
  v107 = (v7 + 63) >> 6;
  v115 = a2 + 64;

  v9 = 0;
  v10 = 0;
LABEL_5:
  v11 = 0x5664656E69666544;
  v13 = v108;
  v12 = v109;
  v14 = v107;
  v15 = v110;
  do
  {
    if (!v15)
    {
      while (1)
      {
        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v16 >= v14)
        {

          if (*(v4 + 16))
          {
            v95 = *(v104 + 16);
            v94 = *(v104 + 24);
            type metadata accessor for UsoEntityBuilder();
            v96 = swift_allocObject();
            v96[5] = v95;
            v96[6] = v94;

            v97 = MEMORY[0x1E69E7CC0];
            v96[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
            v96[2] = v97;
            v96[3] = v97;
            v96[4] = v97;
            v98 = sub_1C07946A8(v4, v96);

            sub_1C05149C4(v9);
          }

          else
          {

            sub_1C05149C4(v9);
            return 0;
          }

          return v98;
        }

        v15 = *(v13 + 8 * v16);
        ++v10;
        if (v15)
        {
          v10 = v16;
          goto LABEL_11;
        }
      }

LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_11:
    v17 = __clz(__rbit64(v15)) | (v10 << 6);
    v18 = (*(v12 + 48) + 16 * v17);
    v119 = *v18;
    v120 = v18[1];
    v19 = *(*(v12 + 56) + 8 * v17);
    if (v19 >> 62)
    {
      v21 = v15;
      v22 = v10;
      v23 = v11;
      v24 = *(*(v12 + 56) + 8 * v17);
      v25 = sub_1C095DCDC();
      v19 = v24;
      v11 = v23;
      v10 = v22;
      v15 = v21;
      v14 = v107;
      v13 = v108;
      v20 = v25;
      v12 = v109;
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 &= v15 - 1;
  }

  while (!v20);
  v110 = v15;
  v106 = v19 & 0xC000000000000001;
  v102 = v19 & 0xFFFFFFFFFFFFFF8;
  v100 = v10;
  v101 = v19 + 32;
  v26 = v19;
  v105 = v20;

  v103 = v26;

  v27 = 0;
  v113 = a2;
  while (2)
  {
    if (v106)
    {
      v28 = MEMORY[0x1C68DDAD0](v27, v103);
      v29 = __OFADD__(v27, 1);
      v30 = v27 + 1;
      if (v29)
      {
        break;
      }

      goto LABEL_24;
    }

    if (v27 >= *(v102 + 16))
    {
      goto LABEL_114;
    }

    v28 = *(v101 + 8 * v27);

    v29 = __OFADD__(v27, 1);
    v30 = v27 + 1;
    if (!v29)
    {
LABEL_24:
      v114 = v30;
      v111 = v9;
      v112 = v4;
      v31 = 1 << *(a2 + 32);
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v33 = v32 & *(a2 + 64);
      v117 = (v31 + 63) >> 6;

      v118 = 0;
      v34 = 0;
      v125 = v28;
LABEL_28:
      if (v33)
      {
        goto LABEL_33;
      }

      while (1)
      {
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        if (v35 >= v117)
        {
          break;
        }

        v33 = *(v115 + 8 * v35);
        ++v34;
        if (v33)
        {
          v34 = v35;
LABEL_33:
          v36 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          v37 = v36 | (v34 << 6);
          v38 = (*(a2 + 48) + 16 * v37);
          v39 = *(*(a2 + 56) + 8 * v37);
          v40 = v119 == *v38 && v120 == v38[1];
          if (!v40 && (sub_1C095DF3C() & 1) == 0)
          {
            goto LABEL_28;
          }

          if (v39 >> 62)
          {
            v41 = sub_1C095DCDC();
            if (!v41)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v41)
            {
              goto LABEL_28;
            }
          }

          v124 = v39 & 0xC000000000000001;
          v121 = v39 & 0xFFFFFFFFFFFFFF8;

          v42 = 0;
          v122 = v41;
          v123 = v39;
          while (1)
          {
LABEL_43:
            if (v124)
            {
              v43 = MEMORY[0x1C68DDAD0](v42, v39);
              v44 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
                goto LABEL_109;
              }
            }

            else
            {
              if (v42 >= *(v121 + 16))
              {
                goto LABEL_111;
              }

              v43 = *(v39 + 8 * v42 + 32);

              v44 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
                goto LABEL_109;
              }
            }

            v45 = *(v28 + 24);
            swift_unownedRetainStrong();
            v47 = *(v45 + 80);
            v46 = *(v45 + 88);

            v48 = *(v43 + 24);
            swift_unownedRetainStrong();
            v50 = *(v48 + 80);
            v49 = *(v48 + 88);

            if (v47 == v50 && v46 == v49)
            {

              v28 = v125;
            }

            else
            {
              v52 = sub_1C095DF3C();

              v28 = v125;
              if ((v52 & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            v53 = sub_1C0518BC4();
            if (!v53)
            {
              goto LABEL_66;
            }

            v54 = v53;
            v55 = sub_1C0518BC4();
            if (!v55)
            {
              break;
            }

            v56 = v55;
            if ((v54[2] != *(v55 + 16) || v54[3] != *(v55 + 24)) && (sub_1C095DF3C() & 1) == 0)
            {
              v57 = *(v54[6] + 24);
              swift_unownedRetainStrong();
              v59 = *(v57 + 80);
              v58 = *(v57 + 88);

              if (v59 == 0x5664656E69666544 && v58 == 0xEC00000065756C61)
              {

LABEL_85:
                v118 = 1;
                a2 = v113;
                v28 = v125;
                goto LABEL_28;
              }

              v60 = sub_1C095DF3C();

              v28 = v125;
              if (v60)
              {
                goto LABEL_80;
              }

              goto LABEL_42;
            }

            v72 = v54[4];

            v73 = sub_1C07937CC(v56, v72);

            if (!v73)
            {

              goto LABEL_83;
            }

            type metadata accessor for Graph();
            swift_allocObject();
            v74 = Graph.init()();
            v126[0] = 2;
            v75 = sub_1C0515D94(v74, v126);
            if (v75[2] != 1)
            {

LABEL_82:

LABEL_83:

              goto LABEL_85;
            }

            v76 = v75[4];
            v77 = v75[5];

            swift_unownedRetain();

            type metadata accessor for UsoValue();
            v78 = swift_allocObject();
            *(v78 + 16) = v76;
            *(v78 + 24) = v77;
            v79 = sub_1C0518BC4();

            if (!v79)
            {
              goto LABEL_83;
            }

            v116 = *(v79 + 48);

            v118 = 0;
            v42 = v44;
            v39 = v123;
            v28 = v125;
            if (v44 == v122)
            {

              v118 = 0;
              a2 = v113;
              goto LABEL_28;
            }
          }

          v28 = v125;
LABEL_66:
          v61 = *(v28 + 24);
          swift_unownedRetainStrong();
          v63 = *(v61 + 80);
          v62 = *(v61 + 88);

          if (v63 == 0x726F74617265704FLL && v62 == 0xE800000000000000)
          {

LABEL_70:
            v65 = *(v43 + 24);
            swift_unownedRetainStrong();
            v67 = *(v65 + 64);
            v66 = *(v65 + 72);

            v68 = *(v28 + 24);
            swift_unownedRetainStrong();
            v70 = *(v68 + 64);
            v69 = *(v68 + 72);

            if (v67 == v70 && v66 == v69)
            {

              goto LABEL_82;
            }

            v71 = sub_1C095DF3C();

            v28 = v125;
            if (v71)
            {
LABEL_80:

              v118 = 1;
              a2 = v113;
              goto LABEL_28;
            }
          }

          else
          {
            v64 = sub_1C095DF3C();

            if (v64)
            {
              goto LABEL_70;
            }

LABEL_41:
          }

LABEL_42:
          ++v42;
          v39 = v123;
          if (v44 == v122)
          {

            a2 = v113;
            goto LABEL_28;
          }

          goto LABEL_43;
        }
      }

      if (v118)
      {
        v9 = v111;
        v4 = v112;
        v27 = v114;
      }

      else
      {
        v80 = a2;
        sub_1C05149C4(v111);
        v4 = v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = sub_1C0516A8C(v119, v120);
        v84 = *(v112 + 16);
        v85 = (v83 & 1) == 0;
        v29 = __OFADD__(v84, v85);
        v86 = v84 + v85;
        v27 = v114;
        if (v29)
        {
          goto LABEL_113;
        }

        v87 = v83;
        if (*(v112 + 24) >= v86)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v93 = v82;
            sub_1C066FC80();
            v82 = v93;
            v27 = v114;
            v4 = v112;
          }
        }

        else
        {
          sub_1C051A220(v86, isUniquelyReferenced_nonNull_native);
          v4 = v112;
          v82 = sub_1C0516A8C(v119, v120);
          if ((v87 & 1) != (v88 & 1))
          {
            goto LABEL_115;
          }
        }

        a2 = v80;
        if ((v87 & 1) == 0)
        {
          v89 = v82;
          sub_1C051D2DC(v82, v119, v120, MEMORY[0x1E69E7CC0], v4);
          v27 = v114;

          v82 = v89;
        }

        v90 = (*(v4 + 56) + 8 * v82);

        MEMORY[0x1C68DD810](v91);
        if (*((*v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v92 = *((*v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C095D9AC();
          v27 = v114;
        }

        sub_1C095D9DC();
        v9 = sub_1C052F70C;
      }

      if (v27 != v105)
      {
        continue;
      }

      v10 = v100;
      goto LABEL_5;
    }

    break;
  }

LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  result = sub_1C095DF6C();
  __break(1u);
  return result;
}

unint64_t static UsoEntityMergeUtils.mergeEntity(_:into:)(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (v4 != v6 || v5 != v7)
  {
    v9 = *(a1 + 16);
    if ((sub_1C095DF3C() & 1) == 0)
    {
      v10 = v6 == 0x6E456F4E5F6F7375 && v7 == 0xEC00000079746974;
      if (!v10 && (sub_1C095DF3C() & 1) == 0 && (v4 != 0x6E456F4E5F6F7375 || v5 != 0xEC00000079746974) && (sub_1C095DF3C() & 1) == 0)
      {
        sub_1C095DC1C();

        v22 = 0xD00000000000001FLL;
        v23 = 0x80000001C0A034A0;
        MEMORY[0x1C68DD690](v6, v7);
        MEMORY[0x1C68DD690](0x20646E6120, 0xE500000000000000);
        MEMORY[0x1C68DD690](v4, v5);
        v3 = 0xD00000000000001FLL;
        sub_1C0794600();
        swift_allocError();
        *v16 = 0xD00000000000001FLL;
        *(v16 + 8) = 0x80000001C0A034A0;
        goto LABEL_26;
      }
    }
  }

  v24 = &type metadata for SiriEntityMergeFeatureFlag;
  v25 = sub_1C0794654();
  v11 = sub_1C095D20C();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  if (v11 & 1) == 0 && (v6 == 0x415F6E6F6D6D6F63 && v7 == 0xEC0000006D72616CLL || (sub_1C095DF3C() & 1) != 0 || v4 == 0x415F6E6F6D6D6F63 && v5 == 0xEC0000006D72616CLL || (sub_1C095DF3C()))
  {
    v3 = 0x80000001C0A034F0;
    sub_1C0794600();
    swift_allocError();
    *v16 = 0xD00000000000002DLL;
    *(v16 + 8) = 0x80000001C0A034F0;
LABEL_26:
    *(v16 + 16) = 0;
    swift_willThrow();
    return v3;
  }

  v12 = *(v3 + 32);
  v13 = sub_1C07937CC(a2, v12);
  if (v13)
  {
    v14 = sub_1C07946A8(v12, v13);
    v15 = _s12SiriOntology25UsoBuilderConversionUtilsO013convertEntityd2ToH006entityD0AA0cH0CSgAA0chD0C_tFZ_0();
    if (v15)
    {
      v3 = v15;
    }

    else
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1C095DC1C();

      v22 = 0xD00000000000002FLL;
      v23 = 0x80000001C0A034C0;
      v18 = *(v14 + 40);
      v17 = *(v14 + 48);

      MEMORY[0x1C68DD690](v18, v17);

      v3 = v22;
      v19 = v23;
      sub_1C0794600();
      swift_allocError();
      *v20 = v3;
      *(v20 + 8) = v19;
      *(v20 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
  }

  return v3;
}

unint64_t sub_1C0794600()
{
  result = qword_1EBE1F990;
  if (!qword_1EBE1F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F990);
  }

  return result;
}

unint64_t sub_1C0794654()
{
  result = qword_1EBE1F998;
  if (!qword_1EBE1F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F998);
  }

  return result;
}

uint64_t sub_1C07946A8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v45 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v44 = (v4 + 63) >> 6;
  v7 = 0;

  do
  {
LABEL_5:
    if (!v6)
    {
      do
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_48;
        }

        if (v8 >= v44)
        {
        }

        v6 = *(v45 + 8 * v8);
        ++v7;
      }

      while (!v6);
      v7 = v8;
    }

    v9 = __clz(__rbit64(v6)) | (v7 << 6);
    v10 = (*(v3 + 48) + 16 * v9);
    v11 = v10[1];
    v53 = *v10;
    v12 = *(*(v3 + 56) + 8 * v9);
    if (v12 >> 62)
    {
      v13 = sub_1C095DCDC();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 &= v6 - 1;
    v50 = v13;
  }

  while (!v13);
  v52 = v12 & 0xC000000000000001;
  v47 = v6;
  v48 = v12 & 0xFFFFFFFFFFFFFF8;

  v14 = 0;
  v49 = v12;
  v51 = v11;
  v15 = v50;
  while (v52)
  {
    v16 = MEMORY[0x1C68DDAD0](v14, v12);
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_46;
    }

LABEL_24:
    if (sub_1C0517C50(v16, 1, 1, 1))
    {
      swift_beginAccess();
      if (*(*(a2 + 56) + 16))
      {
        sub_1C0516A8C(v53, v11);
        if (v18)
        {
          goto LABEL_39;
        }

        v19 = *(a2 + 56);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54[0] = *(a2 + 56);
      v21 = v54[0];
      *(a2 + 56) = 0x8000000000000000;
      v23 = sub_1C0516A8C(v53, v51);
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_47;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C066FDF8();
        }

        v11 = v51;
        v30 = v54[0];
        if ((v27 & 1) == 0)
        {
LABEL_32:
          v30[(v23 >> 6) + 8] |= 1 << v23;
          v31 = (v30[6] + 16 * v23);
          *v31 = v53;
          v31[1] = v11;
          *(v30[7] + 8 * v23) = MEMORY[0x1E69E7CC0];
          v32 = v30[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_50;
          }

          v30[2] = v34;

          goto LABEL_38;
        }
      }

      else
      {
        sub_1C0516A78(v26, isUniquelyReferenced_nonNull_native);
        v11 = v51;
        v28 = sub_1C0516A8C(v53, v51);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_51;
        }

        v23 = v28;
        v30 = v54[0];
        if ((v27 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v35 = v30[7];
      v36 = *(v35 + 8 * v23);
      *(v35 + 8 * v23) = MEMORY[0x1E69E7CC0];

LABEL_38:
      *(a2 + 56) = v30;
      v12 = v49;
LABEL_39:
      v37 = type metadata accessor for UsoBuilder();
      if (v37 != MEMORY[0x1E69E6158] && v37 != MEMORY[0x1E69E7360])
      {
        v39 = sub_1C07A8D48(v54, v53, v11);
        if (*v38)
        {
          v40 = v38;

          MEMORY[0x1C68DD810](v41);
          if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v42 = *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1C095D9AC();
            v11 = v51;
          }

          sub_1C095D9DC();
        }

        (v39)(v54, 0);
      }

      swift_endAccess();

      v15 = v50;
    }

    ++v14;
    if (v17 == v15)
    {

      v3 = v46;
      v6 = v47;
      goto LABEL_5;
    }
  }

  if (v14 >= *(v48 + 16))
  {
    goto LABEL_49;
  }

  v16 = *(v12 + 8 * v14 + 32);

  v17 = v14 + 1;
  if (!__OFADD__(v14, 1))
  {
    goto LABEL_24;
  }

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
  result = sub_1C095DF6C();
  __break(1u);
  return result;
}

uint64_t Graph.protobufGraphSiriNl(vocabManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v317 = a2;
  v348 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v320 = *(v348 - 8);
  v3 = *(v320 + 64);
  v4 = MEMORY[0x1EEE9AC00](v348);
  v329 = &v316 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v328 = (&v316 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v325 = &v316 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v334 = &v316 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v343 = &v316 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v342 = &v316 - v15;
  v360 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v319 = *(v360 - 8);
  v16 = *(v319 + 64);
  v17 = MEMORY[0x1EEE9AC00](v360);
  v19 = &v316 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v333 = &v316 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v316 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v331 = &v316 - v25;
  v335 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  v330 = *(v335 - 8);
  v26 = *(v330 + 64);
  v27 = MEMORY[0x1EEE9AC00](v335);
  v345 = &v316 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v362 = (&v316 - v29);
  v408 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan(0);
  v407 = *(v408 - 8);
  v30 = *(v407 + 8);
  v31 = MEMORY[0x1EEE9AC00](v408);
  v33 = &v316 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = (&v316 - v34);
  v379 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v378 = *(v379 - 8);
  v36 = *(v378 + 64);
  v37 = MEMORY[0x1EEE9AC00](v379);
  v395 = &v316 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v392 = &v316 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v382 = &v316 - v42;
  v404 = sub_1C095D2EC();
  v43 = *(v404 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v404);
  v46 = &v316 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v381 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v380 = *(v381 - 8);
  v47 = *(v380 + 64);
  v48 = MEMORY[0x1EEE9AC00](v381);
  v403 = (&v316 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v48);
  v346 = &v316 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v51 - 8);
  v341 = &v316 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v340 = &v316 - v55;
  v361 = sub_1C095D26C();
  v409 = *(v361 - 8);
  v56 = *(v409 + 8);
  v57 = MEMORY[0x1EEE9AC00](v361);
  v339 = &v316 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v338 = &v316 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60 - 8);
  v321 = &v316 - v62;
  v63 = sub_1C095D2AC();
  v406 = *(v63 - 8);
  v64 = v406[8];
  MEMORY[0x1EEE9AC00](v63);
  v322 = &v316 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x1EEE9AC00](v66 - 8);
  v374 = &v316 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v347 = &v316 - v70;
  v384 = sub_1C095D32C();
  v405 = *(v384 - 8);
  v71 = v405[8];
  v72 = MEMORY[0x1EEE9AC00](v384);
  v373 = &v316 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v351 = &v316 - v74;
  v356 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  v355 = *(v356 - 8);
  v75 = *(v355 + 64);
  v76 = MEMORY[0x1EEE9AC00](v356);
  v366 = &v316 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v369 = &v316 - v78;
  v79 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v327 = (&v316 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  v358 = v63;
  v324 = v19;
  v372 = v46;
  *&v410 = v43;
  if (!a1)
  {
    if (qword_1EBE154C8 != -1)
    {
      goto LABEL_188;
    }

    goto LABEL_4;
  }

  v82 = v24;
  v323 = a1;
LABEL_5:
  v24 = MEMORY[0x1E69E7CC0];
  v86 = v327;
  *v327 = MEMORY[0x1E69E7CC0];
  *(v86 + 1) = v24;
  *(v86 + 2) = v24;
  *(v86 + 3) = v24;
  v87 = *(v79 + 32);

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v88 = *(v79 + 36);
  v89 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  (*(*(v89 - 8) + 56))(&v86[v88], 1, 1, v89);
  v367 = sub_1C058C208(v24);
  v90 = sub_1C051DBB0();
  v91 = *(v90 + 2);
  v332 = v82;
  v354 = v91;
  if (v91)
  {
    v353 = v90 + 32;
    v394 = v405 + 7;
    v357 = v406 + 7;
    v359 = (v409 + 56);
    v375 = (v405 + 6);
    v377 = v405 + 4;
    v92 = 0;
    v337 = (v406 + 6);
    v318 = v406 + 4;
    v349 = (v409 + 48);
    v344 = (v409 + 32);
    v336 = (v409 + 8);
    v390 = (v410 + 56);
    v371 = (v410 + 48);
    v376 = (v410 + 32);
    v79 = v24;
    v406 = v24;
    v405 = v24;
    v409 = v33;
    v93 = v392;
    v94 = v369;
    v352 = v90;
    while (1)
    {
      if (v92 >= *(v90 + 2))
      {
        goto LABEL_182;
      }

      v368 = v79;
      v364 = v92;
      v410 = *&v353[16 * v92];
      v95 = v410;
      *v94 = 0;
      *(v94 + 8) = 0;
      *(v94 + 16) = 0xE000000000000000;
      *(v94 + 24) = 0;
      *(v94 + 32) = 0xE000000000000000;
      *(v94 + 40) = v24;
      v96 = v356;
      v97 = *(v356 + 32);
      v365 = v95;

      v98 = *(&v410 + 1);
      swift_unownedRetain();
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v99 = *v394;
      v401 = v96[9];
      v393 = v99;
      v99(v94 + v401, 1, 1, v384);
      v100 = v96[10];
      v101 = *v357;
      (*v357)(v94 + v100, 1, 1, v63);
      v102 = *v359;
      v402 = v96[11];
      v398 = v102;
      v102(v94 + v402, 1, 1, v361);
      v413 = v410;
      v103 = Node.stringValue.getter();
      v370 = v98;
      if (v104)
      {
        *&v410 = v103;
        v105 = v401;
        v106 = v347;
        sub_1C05149F8(v94 + v401, v347, &qword_1EBE16D68, &unk_1C09933C0);
        v107 = *v375;
        v108 = v384;
        if ((*v375)(v106, 1, v384) == 1)
        {
          sub_1C095D31C();
          v109 = v107(v106, 1, v108);
          v110 = v351;
          if (v109 != 1)
          {
            sub_1C05145B4(v106, &qword_1EBE16D68, &unk_1C09933C0);
          }
        }

        else
        {
          v110 = v351;
          (*v377)(v351, v106, v108);
        }

        sub_1C095D30C();
        v117 = v369;
        sub_1C05145B4(v369 + v105, &qword_1EBE16D68, &unk_1C09933C0);
        (*v377)(v117 + v105, v110, v108);
        v393(v117 + v105, 0, 1, v108);
        v118 = v370;
        swift_unownedRetainStrong();
        v120 = v118[8];
        v119 = v118[9];

        if (qword_1ED5D7CA0 != -1)
        {
          swift_once();
        }

        v121 = MEMORY[0x1E69E7CC0];
        if (__PAIR128__(v119, v120) == xmmword_1ED5D7CA8)
        {

          goto LABEL_26;
        }

        v122 = sub_1C095DF3C();

        v123 = v121;
        if (v122)
        {
LABEL_26:
          swift_unownedRetainStrong();
          v123 = v118[6];
        }

        *(v369 + 40) = v123;
        goto LABEL_28;
      }

      *&v410 = v100;
      swift_unownedRetainStrong();
      v112 = v98[8];
      v111 = v98[9];

      if (qword_1ED5BDED8 != -1)
      {
        swift_once();
      }

      v113 = v112 == xmmword_1ED5BDEE0 && v111 == *(&xmmword_1ED5BDEE0 + 1);
      v114 = v337;
      v115 = v101;
      if (v113)
      {
      }

      else
      {
        v116 = sub_1C095DF3C();

        if ((v116 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v159 = v370;
      swift_unownedRetainStrong();
      v160 = v159[3];
      v161 = v159[4];
      v162 = *(v159 + 40);
      sub_1C0514B20(v160, v161, *(v159 + 40));

      if (v162 != 255)
      {
        if (v162)
        {
          sub_1C05144FC(v160, v161, v162);
        }

        else if ((v161 & 1) == 0)
        {
          v235 = v321;
          sub_1C05149F8(v369 + v410, v321, &qword_1EBE16DC0, &unk_1C0997A50);
          v236 = *v114;
          v237 = v358;
          if ((*v114)(v235, 1, v358) == 1)
          {
            sub_1C095D29C();
            v238 = v236(v235, 1, v237);
            v239 = v322;
            if (v238 != 1)
            {
              sub_1C05145B4(v235, &qword_1EBE16DC0, &unk_1C0997A50);
            }
          }

          else
          {
            v239 = v322;
            (*v318)(v322, v235, v237);
          }

          sub_1C095D28C();
          v240 = v369;
          v241 = v410;
          sub_1C05145B4(v369 + v410, &qword_1EBE16DC0, &unk_1C0997A50);
          (*v318)(v240 + v241, v239, v237);
          v115(v240 + v241, 0, 1, v237);
        }
      }

LABEL_28:
      v79 = v370;
      swift_unownedRetainStrong();
      v125 = *(v79 + 80);
      v124 = *(v79 + 88);

      if (v125 == 1802723668 && v124 == 0xE400000000000000)
      {

LABEL_32:
        swift_unownedRetainStrong();
        v127 = *(v79 + 64);
        v128 = *(v79 + 72);
        v129 = *(v79 + 88);
        *&v410 = *(v79 + 80);
        v24 = *(v79 + 96);

        if (qword_1EBE14950 != -1)
        {
          swift_once();
        }

        *&v413 = v127;
        *(&v413 + 1) = v128;
        v414 = v410;
        v415 = v129;
        v416 = v24;
        *&v410 = qword_1EBE50A38;
        v130 = sub_1C0516F90(&v413);

        if ((v130 & 0x100000000) != 0)
        {
          type metadata accessor for Graph();
          swift_unownedRetainStrong();
          v131 = *(v79 + 64);
          v132 = *(v79 + 72);
          v133 = v79;
          v134 = *(v79 + 80);
          v135 = *(v133 + 88);
          v136 = *(v133 + 96);

          v411[0] = v131;
          v411[1] = v132;
          v411[2] = v134;
          v411[3] = v135;
          v411[4] = v136;
          v137 = v350;
          static Graph.getNamesForTaskNodeName(name:)(&v413, v412, v411);
          v350 = v137;
          if (v137)
          {

            swift_unownedRelease();

            sub_1C079B5B8(v369, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
LABEL_179:

            v314 = v327;
            return sub_1C079B5B8(v314, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
          }

          v138 = v413;
          v139 = v414;
          v140 = v415;
          v24 = v416;
          v141 = v412[1];
          v397 = v412[0];
          v79 = v412[3];
          v396 = v412[2];
          v142 = v412[4];

          v401 = v142;

          v413 = v138;
          v414 = v139;
          v415 = v140;
          v416 = v24;
          v143 = sub_1C0516F90(&v413);
          if ((v143 & 0x100000000) != 0)
          {
            v144 = 0;
          }

          else
          {
            v144 = v143;
          }

          if (v144 < 0)
          {
            goto LABEL_186;
          }

          v388 = v24;
          v389 = v140;
          v386 = v138;
          v399 = v79;
          v145 = v340;
          sub_1C05149F8(v369 + v402, v340, &qword_1EBE16B58, &unk_1C099B6A0);
          v146 = *v349;
          v147 = v361;
          v148 = (*v349)(v145, 1, v361);
          v400 = v141;
          v391 = *(&v138 + 1);
          v387 = v146;
          if (v148 == 1)
          {
            v149 = v338;
            sub_1C095D25C();
            v150 = v146(v145, 1, v147);
            v24 = v147;
            if (v150 != 1)
            {
              sub_1C05145B4(v145, &qword_1EBE16B58, &unk_1C099B6A0);
            }
          }

          else
          {
            v149 = v338;
            (*v344)(v338, v145, v147);
            v24 = v147;
          }

          sub_1C095D24C();
          v163 = v369;
          v164 = v402;
          sub_1C05145B4(v369 + v402, &qword_1EBE16B58, &unk_1C099B6A0);
          v165 = v149;
          v166 = *v344;
          (*v344)(&v163[v164], v165, v24);
          v398(&v163[v164], 0, 1, v24);
          *&v413 = v397;
          *(&v413 + 1) = v400;
          v414 = v396;
          v415 = v399;
          v416 = v401;
          v167 = sub_1C0516F90(&v413);
          if ((v167 & 0x100000000) != 0)
          {
            v168 = 0;
          }

          else
          {
            v168 = v167;
          }

          LODWORD(v410) = v168;
          *v163 = v168;
          v169 = v341;
          sub_1C05149F8(&v163[v164], v341, &qword_1EBE16B58, &unk_1C099B6A0);
          v170 = v387;
          if (v387(v169, 1, v24) == 1)
          {
            v171 = v339;
            sub_1C095D25C();
            v172 = v170(v169, 1, v24);
            v93 = v392;
            v79 = v370;
            if (v172 != 1)
            {
              sub_1C05145B4(v169, &qword_1EBE16B58, &unk_1C099B6A0);
            }
          }

          else
          {
            v173 = v339;
            v166(v339, v169, v24);
            v171 = v173;
            v93 = v392;
            v79 = v370;
          }

          LODWORD(v402) = sub_1C095D23C();

          v174 = v391;

          (*v336)(v171, v24);

          if (v402)
          {

            v175 = v369;
          }

          else
          {
            v175 = v369;
            *(v369 + 24) = v386;
            v175[4] = v174;
          }

          if (v410)
          {
          }

          else
          {
            v176 = v400;
            v175[1] = v397;
            v175[2] = v176;
          }
        }

        else
        {
          *v369 = v130;
        }

        goto LABEL_70;
      }

      v126 = sub_1C095DF3C();

      if (v126)
      {
        goto LABEL_32;
      }

      swift_unownedRetainStrong();
      v151 = *(v79 + 64);
      v152 = *(v79 + 72);
      v153 = v79;
      v154 = *(v79 + 80);
      v155 = *(v153 + 88);
      v24 = *(v153 + 96);

      if (qword_1EBE14950 != -1)
      {
        swift_once();
      }

      *&v413 = v151;
      *(&v413 + 1) = v152;
      v414 = v154;
      v415 = v155;
      v416 = v24;
      v156 = sub_1C0516F90(&v413);

      if ((v156 & 0x100000000) != 0)
      {
        v157 = 0;
      }

      else
      {
        v157 = v156;
      }

      *v369 = v157;
      if (v157)
      {
        v158 = v368;
        v79 = v370;
        goto LABEL_71;
      }

      v79 = v370;
      swift_unownedRetainStrong();
      v177 = *(v79 + 64);
      v178 = *(v79 + 72);

      *(v369 + 8) = v177;
      *(v369 + 16) = v178;
LABEL_70:
      v158 = v368;
LABEL_71:
      swift_unownedRetainStrong();
      swift_beginAccess();
      v179 = *(v79 + 104);

      v180 = *(v179 + 16);
      v363 = v179;
      if (v180)
      {
        v383 = *(v158 + 16);
        if (HIDWORD(v383))
        {
          goto LABEL_184;
        }

        v79 = v179 + 104;
        v181 = v346;
        while (2)
        {
          *&v410 = v180;
          v182 = *(v79 - 64);
          v397 = *(v79 - 72);
          v183 = *(v79 - 48);
          v396 = *(v79 - 56);
          v184 = *(v79 - 32);
          v391 = *(v79 - 40);
          v185 = *(v79 - 24);
          LODWORD(v398) = *(v79 - 16);
          v402 = *(v79 - 15);
          LODWORD(v388) = *(v79 - 12);
          LODWORD(v400) = *(v79 - 8);
          LODWORD(v389) = *(v79 - 4);
          LODWORD(v401) = *v79;
          *v181 = 0;
          *(v181 + 8) = 0;
          *(v181 + 16) = 0xE000000000000000;
          *(v181 + 24) = 0;
          *(v181 + 32) = 0xE000000000000000;
          *(v181 + 40) = 0;
          *(v181 + 48) = 1;
          v186 = v381;
          v187 = *(v381 + 32);

          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v188 = v186[9];
          v189 = v384;
          v393(v181 + v188, 1, 1, v384);
          v190 = *v390;
          v399 = v186[10];
          v385 = v190;
          v190(v181 + v399, 1, 1, v404);
          v191 = v181 + v186[11];
          *v191 = 0;
          v386 = v191;
          *(v191 + 4) = 1;
          v192 = v181 + v186[12];
          *v192 = 0;
          v387 = v192;
          *(v192 + 4) = 1;
          *v181 = v383;
          *(v181 + 24) = v397;
          *(v181 + 32) = v182;
          *(v181 + 8) = v396;
          *(v181 + 16) = v183;
          v397 = v184;
          if (v184)
          {
            v193 = v189;
            v194 = v374;
            sub_1C05149F8(v181 + v188, v374, &qword_1EBE16D68, &unk_1C09933C0);
            v195 = *v375;
            if ((*v375)(v194, 1, v193) == 1)
            {
              v196 = v373;
              sub_1C095D31C();
              if (v195(v194, 1, v193) != 1)
              {
                sub_1C05145B4(v194, &qword_1EBE16D68, &unk_1C09933C0);
              }
            }

            else
            {
              v196 = v373;
              (*v377)(v373, v194, v193);
            }

            sub_1C095D30C();
            sub_1C05145B4(v181 + v188, &qword_1EBE16D68, &unk_1C09933C0);
            (*v377)(v181 + v188, v196, v193);
            v393(v181 + v188, 0, 1, v193);
          }

          v33 = v409;
          v197 = v382;
          v198 = v404;
          if ((v398 & 1) == 0)
          {
            sub_1C05149F8(v181 + v399, v382, &qword_1EBE1E830, &qword_1C09933E0);
            v199 = *v371;
            if ((*v371)(v197, 1, v198) == 1)
            {
              v200 = v372;
              sub_1C095D2DC();
              if (v199(v197, 1, v198) != 1)
              {
                sub_1C05145B4(v197, &qword_1EBE1E830, &qword_1C09933E0);
              }
            }

            else
            {
              v200 = v372;
              (*v376)(v372, v197, v198);
            }

            sub_1C095D2CC();
            v201 = v399;
            sub_1C05145B4(v181 + v399, &qword_1EBE1E830, &qword_1C09933E0);
            (*v376)(v181 + v201, v200, v198);
            v385(v181 + v201, 0, 1, v198);
          }

          v202 = v402;
          if ((v400 & 1) == 0)
          {
            v203 = v386;
            *v386 = v388;
            *(v203 + 4) = 0;
          }

          v93 = v392;
          if ((v401 & 1) == 0)
          {
            v204 = v387;
            *v387 = v389;
            v204[4] = 0;
          }

          v205 = 0;
          v206 = 1;
          if (v202 <= 1)
          {
            if (v202)
            {
              if (v202 != 1)
              {
                goto LABEL_100;
              }

              v205 = 1;
            }
          }

          else if (v202 == 2)
          {
            v205 = 2;
          }

          else if (v202 == 3)
          {
            v205 = 3;
          }

          else if (v202 != 7)
          {
LABEL_100:
            v206 = 0;
            v205 = v202;
          }

          *(v181 + 40) = v205;
          *(v181 + 48) = v206;
          sub_1C079B618(v181, v403, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v406 = sub_1C05784DC(0, v406[2] + 1, 1, v406);
          }

          v208 = v406[2];
          v207 = v406[3];
          if (v208 >= v207 >> 1)
          {
            v406 = sub_1C05784DC(v207 > 1, v208 + 1, 1, v406);
          }

          v209 = v406;
          v406[2] = v208 + 1;
          sub_1C079B550(v403, v209 + ((*(v380 + 80) + 32) & ~*(v380 + 80)) + *(v380 + 72) * v208, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
          sub_1C079B5B8(v181, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
          v79 += 96;
          v180 = v410 - 1;
          if (v410 == 1)
          {
            break;
          }

          continue;
        }
      }

      v210 = v370;
      swift_unownedRetainStrong();
      v211 = v210[14];

      v402 = *(v211 + 16);
      if (v402)
      {
        v401 = *(v368 + 16);
        v24 = MEMORY[0x1E69E7CC0];
        if (!HIDWORD(v401))
        {
          v79 = 0;
          v400 = v211 + 32;
          while (v79 < *(v211 + 16))
          {
            v212 = v400 + 16 * v79;
            v213 = *(v212 + 8);
            v214 = *v212;
            *v93 = 0;
            *(v93 + 8) = v24;
            *(v93 + 16) = 0;
            v215 = *(v379 + 28);

            _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
            *(v93 + 16) = v401;
            *v93 = v214;
            *(v93 + 8) = v24;
            v216 = *(v213 + 16);
            if (v216)
            {
              v217 = (v213 + 48);
              do
              {
                v410 = *(v217 - 1);
                v218 = *v217;
                *v35 = 0;
                v35[1] = 0;
                v35[2] = 0;
                v219 = v35 + *(v408 + 40);
                _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
                *v35 = v410;
                v35[2] = v218;
                sub_1C079B618(v35, v33, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v24 = sub_1C05784B4(0, *(v24 + 2) + 1, 1, v24);
                }

                v221 = *(v24 + 2);
                v220 = *(v24 + 3);
                if (v221 >= v220 >> 1)
                {
                  v24 = sub_1C05784B4(v220 > 1, v221 + 1, 1, v24);
                }

                sub_1C079B5B8(v35, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
                *(v24 + 2) = v221 + 1;
                v222 = &v24[((v407[80] + 32) & ~v407[80]) + *(v407 + 9) * v221];
                v33 = v409;
                sub_1C079B550(v409, v222, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
                v217 += 3;
                --v216;
              }

              while (v216);

              v93 = v392;
              *(v392 + 1) = v24;
              v24 = MEMORY[0x1E69E7CC0];
            }

            else
            {
            }

            sub_1C079B618(v93, v395, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v405 = sub_1C057848C(0, v405[2] + 1, 1, v405);
            }

            v224 = v405[2];
            v223 = v405[3];
            if (v224 >= v223 >> 1)
            {
              v405 = sub_1C057848C(v223 > 1, v224 + 1, 1, v405);
            }

            ++v79;
            v225 = v405;
            v405[2] = v224 + 1;
            sub_1C079B550(v395, v225 + ((*(v378 + 80) + 32) & ~*(v378 + 80)) + *(v378 + 72) * v224, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
            sub_1C079B5B8(v93, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
            if (v79 == v402)
            {

              v79 = v368;
              goto LABEL_126;
            }
          }

          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
        }

        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        swift_once();
LABEL_4:
        v82 = v24;
        type metadata accessor for UsoGraphVocabManager();
        v83 = swift_allocObject();
        v84 = MEMORY[0x1E69E7CC0];
        *(v83 + 16) = sub_1C051DE48(MEMORY[0x1E69E7CC0]);
        v85 = sub_1C051DA50(v84);
        v323 = v83;
        *(v83 + 24) = v85;
        v63 = v358;
        goto LABEL_5;
      }

      v79 = v368;
      v24 = MEMORY[0x1E69E7CC0];
LABEL_126:
      v226 = *(swift_unownedRetainStrong() + 56);

      v227 = *(v79 + 16);
      v228 = v367;
      if (HIDWORD(v227))
      {
        goto LABEL_183;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v413 = v228;
      sub_1C05CAD28(v227, v226, isUniquelyReferenced_nonNull_native);
      v230 = v413;
      sub_1C079B618(v369, v366, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
      v231 = swift_isUniquelyReferenced_nonNull_native();
      v367 = v230;
      if ((v231 & 1) == 0)
      {
        v79 = sub_1C057852C(0, *(v79 + 16) + 1, 1, v79);
      }

      v63 = v358;
      v232 = v364;
      v234 = *(v79 + 16);
      v233 = *(v79 + 24);
      if (v234 >= v233 >> 1)
      {
        v79 = sub_1C057852C(v233 > 1, v234 + 1, 1, v79);
      }

      v92 = v232 + 1;

      swift_unownedRelease();
      *(v79 + 16) = v234 + 1;
      sub_1C079B550(v366, v79 + ((*(v355 + 80) + 32) & ~*(v355 + 80)) + *(v355 + 72) * v234, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
      v94 = v369;
      sub_1C079B5B8(v369, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
      v90 = v352;
      if (v92 == v354)
      {
        v368 = v79;

        goto LABEL_140;
      }
    }
  }

  v406 = MEMORY[0x1E69E7CC0];
  v368 = MEMORY[0x1E69E7CC0];
  v405 = MEMORY[0x1E69E7CC0];
LABEL_140:
  v242 = v326;
  swift_beginAccess();
  v243 = *(v242 + 16);
  v244 = *(v243 + 16);

  v79 = v362;
  v396 = v244;
  if (v244)
  {
    v245 = 0;
    *&v410 = v319 + 56;
    v24 = (v319 + 48);
    v400 = v320 + 56;
    v35 = MEMORY[0x1E69E7CC0];
    v246 = v243 + 48;
    v397 = v243;
    v403 = (v319 + 48);
    while (v245 < *(v243 + 16))
    {
      v402 = v35;
      v399 = v245;
      v247 = *(v246 - 16);
      v248 = *(v246 - 8);
      LODWORD(v398) = *v246;
      v249 = *(v246 + 16);
      v401 = *(v246 + 8);
      v250 = *(v246 + 24);
      v251 = *(v246 + 32);
      v252 = *(v246 + 40);
      *v79 = 0;
      v253 = v335;
      v254 = *(v335 + 24);
      v409 = v252;

      v407 = v249;

      v404 = v251;

      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v255 = *(v253 + 28);
      v408 = *v410;
      (v408)(v79 + v255, 1, 1, v360);
      v256 = v367;
      if (!*(v367 + 16) || (v257 = sub_1C0514E38(v247), (v258 & 1) == 0) || (v259 = *(v256 + 56), v260 = *(v259 + 4 * v257), v261 = sub_1C0514E38(v248), (v262 & 1) == 0))
      {

        sub_1C079B4FC();
        v310 = swift_allocError();
        *v311 = 0;
        *(v311 + 8) = 0;
        *(v311 + 16) = 3;
        v350 = v310;
        swift_willThrow();

        sub_1C079B5B8(v362, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
        goto LABEL_179;
      }

      v263 = *(v259 + 4 * v261);
      v264 = v362;
      *v362 = v260;
      v264[1] = v263;
      v265 = qword_1EBE14950;
      v266 = v407;

      v267 = v404;

      v268 = v409;

      if (v265 != -1)
      {
        swift_once();
      }

      *&v413 = v401;
      *(&v413 + 1) = v266;
      v414 = v250;
      v415 = v267;
      v416 = v268;
      v269 = sub_1C0516F90(&v413);

      if ((v269 & 0x100000000) != 0)
      {
        v270 = 0;
      }

      else
      {
        v270 = v269;
      }

      v271 = v342;
      sub_1C05149F8(v264 + v255, v342, &qword_1EBE16DA0, &qword_1C0997A60);
      v272 = *v403;
      v273 = v360;
      if ((*v403)(v271, 1, v360) == 1)
      {
        v274 = v331;
        *v331 = 0;
        v275 = &v274[*(v273 + 24)];
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        (*v400)(&v274[*(v273 + 28)], 1, 1, v348);
        v276 = v273;
        v277 = v274;
        if (v272(v271, 1, v276) != 1)
        {
          sub_1C05145B4(v342, &qword_1EBE16DA0, &qword_1C0997A60);
        }
      }

      else
      {
        v277 = v331;
        sub_1C079B550(v271, v331, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      }

      *v277 = v270;
      v278 = v362;
      sub_1C05145B4(v362 + v255, &qword_1EBE16DA0, &qword_1C0997A60);
      sub_1C079B550(v277, v278 + v255, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      v279 = v360;
      (v408)(v278 + v255, 0, 1, v360);
      v280 = v278 + v255;
      v281 = v343;
      sub_1C05149F8(v280, v343, &qword_1EBE16DA0, &qword_1C0997A60);
      v24 = v403;
      if (v272(v281, 1, v279) == 1)
      {
        v282 = v332;
        *v332 = 0;
        v283 = &v282[*(v279 + 24)];
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        (*v400)(&v282[*(v279 + 28)], 1, 1, v348);
        v284 = v281;
        v285 = v282;
        v24 = v403;
        v286 = v272(v284, 1, v279);
        v287 = v333;
        v288 = v398;
        if (v286 != 1)
        {
          sub_1C05145B4(v343, &qword_1EBE16DA0, &qword_1C0997A60);
        }
      }

      else
      {
        v289 = v281;
        v285 = v332;
        sub_1C079B550(v289, v332, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        v287 = v333;
        v288 = v398;
      }

      *(v285 + 1) = v288;
      v290 = v362;
      sub_1C05145B4(v362 + v255, &qword_1EBE16DA0, &qword_1C0997A60);
      sub_1C079B550(v285, v290 + v255, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      v291 = v360;
      (v408)(v290 + v255, 0, 1, v360);
      v292 = v290 + v255;
      v293 = v334;
      sub_1C05149F8(v292, v334, &qword_1EBE16DA0, &qword_1C0997A60);
      if (v272(v293, 1, v291) == 1)
      {
        *v287 = 0;
        v294 = &v287[*(v291 + 24)];
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        (*v400)(&v287[*(v291 + 28)], 1, 1, v348);
        v295 = v272(v293, 1, v291);
        v33 = v407;
        v35 = v402;
        if (v295 != 1)
        {
          sub_1C05145B4(v293, &qword_1EBE16DA0, &qword_1C0997A60);
        }
      }

      else
      {
        sub_1C079B550(v293, v287, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        v33 = v407;
        v35 = v402;
      }

      v296 = *v287;
      sub_1C079B5B8(v287, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      if (!v296)
      {
        v297 = v328;
        *v328 = 0;
        v297[1] = 0xE000000000000000;
        v298 = v348;
        v299 = v297 + *(v348 + 20);
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        *v297 = v401;
        v297[1] = v33;
        sub_1C079B618(v297, v329, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
        v300 = v325;
        sub_1C05149F8(v362 + v255, v325, &qword_1EBE16DA0, &qword_1C0997A60);
        v301 = v360;
        if (v272(v300, 1, v360) == 1)
        {
          v24 = v324;
          *v324 = 0;
          v302 = *(v301 + 24);

          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          (*v400)(&v24[*(v301 + 28)], 1, 1, v298);
          v303 = v272(v300, 1, v301);
          v304 = v301;
          if (v303 != 1)
          {
            sub_1C05145B4(v300, &qword_1EBE16DA0, &qword_1C0997A60);
          }
        }

        else
        {
          v24 = v324;
          sub_1C079B550(v300, v324, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);

          v304 = v301;
        }

        v305 = *(v304 + 28);
        sub_1C05145B4(&v24[v305], &qword_1EBE16D90, &qword_1C0970458);
        sub_1C079B550(v329, &v24[v305], type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
        (*v400)(&v24[v305], 0, 1, v348);
        v306 = v362;
        sub_1C05145B4(v362 + v255, &qword_1EBE16DA0, &qword_1C0997A60);
        sub_1C079B550(v24, v306 + v255, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        (v408)(v306 + v255, 0, 1, v304);
        sub_1C079B5B8(v328, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
        v35 = v402;
      }

      sub_1C079B618(v362, v345, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1C0578504(0, v35[2] + 1, 1, v35);
      }

      v243 = v397;
      v307 = v399;
      v309 = v35[2];
      v308 = v35[3];
      if (v309 >= v308 >> 1)
      {
        v35 = sub_1C0578504(v308 > 1, v309 + 1, 1, v35);
      }

      v245 = v307 + 1;

      v35[2] = v309 + 1;
      sub_1C079B550(v345, v35 + ((*(v330 + 80) + 32) & ~*(v330 + 80)) + *(v330 + 72) * v309, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      v79 = v362;
      sub_1C079B5B8(v362, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
      v246 += 64;
      if (v396 == v245)
      {
        goto LABEL_177;
      }
    }

    goto LABEL_187;
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_177:

  v312 = v327;
  *v327 = v368;
  v312[1] = v35;
  v313 = v405;
  v312[2] = v406;
  v312[3] = v313;
  sub_1C079B618(v312, v317, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);

  v314 = v312;
  return sub_1C079B5B8(v314, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
}