uint64_t sub_26EE20C28(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26EF3AC9C();
  MEMORY[0x274382CF0](v10);
  a1(v9);
  return (*(v6 + 8))(v9, a4);
}

uint64_t sub_26EE20D20()
{
  v1 = *(v0 + 4);
  v2 = (sub_26EF3AC9C() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(*v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  v8 = *&v0[v4];

  v9 = *&v0[v4 + 8];

  (*(*(v1 - 8) + 8))(&v0[v4 + v2[10]], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EE20E28()
{
  v1 = v0[4];
  v2 = *(sub_26EF3AC9C() - 8);
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0 + ((*(v2 + 80) + 64) & ~*(v2 + 80));

  return sub_26EE20C28(v3, v4, v5, v1);
}

uint64_t sub_26EE20EB0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a5 - 8) + 64);
  result = MEMORY[0x28223BE20](a1, a2);
  if (v9)
  {

    a2(a1);
    sub_26EF3AC9C();
    sub_26EF3AC3C();
    return sub_26EE18828(a2);
  }

  return result;
}

uint64_t sub_26EE20F7C()
{
  v1 = *(v0 + 4);
  v2 = sub_26EF3AC9C();
  v3 = *(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  if (*(v0 + 6))
  {
    v6 = *(v0 + 7);
  }

  v7 = (v3 + 64) & ~v3;
  v8 = *&v0[v7];

  v9 = *&v0[v7 + 8];

  (*(*(v1 - 8) + 8))(&v0[v7 + *(v2 + 32)], v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v4, v3 | 7);
}

uint64_t sub_26EE2108C(uint64_t a1)
{
  v3 = v1[4];
  v4 = *(sub_26EF3AC9C() - 8);
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return sub_26EE20EB0(a1, v5, v6, v7, v3);
}

uint64_t sub_26EE21114(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t Binding.unwrapped<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 + 16) + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  (*(v6 + 32))(v10 + v9, v8, v5);
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  Binding.mapped<A>(_:set:)(sub_26EE214D4, v10, sub_26EE21520, v11, a2, v5, a3);
}

uint64_t sub_26EE212A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_26EF3B5CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  (*(v9 + 16))(&v17 - v12, a1, v8);
  v14 = *(a3 - 8);
  v15 = *(v14 + 48);
  if (v15(v13, 1, a3) != 1)
  {
    return (*(v14 + 32))(a4, v13, a3);
  }

  (*(v14 + 16))(a4, a2, a3);
  result = (v15)(v13, 1, a3);
  if (result != 1)
  {
    return (*(v9 + 8))(v13, v8);
  }

  return result;
}

uint64_t sub_26EE21454()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE21520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t Binding.optionalBinding<A>()(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1, v1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(*(a1 + 16) + 16);
  return sub_26EF3ACBC();
}

uint64_t Binding.wrappedToOptional()(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1, v1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  return sub_26EF3ACAC();
}

uint64_t Binding.to<A>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a3;
  v5 = *a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v26 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v21 - v10;
  v24 = *(v6 + 16);
  v24(&v21 - v10, v3, a2);
  v12 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  v23 = *(a2 + 16);
  *(v14 + 4) = v23;
  v22 = *(v5 + *MEMORY[0x277D84308] + 8);
  *(v14 + 5) = v22;
  v15 = *(v6 + 32);
  v15(&v14[v12], v11, a2);
  v16 = v26;
  v17 = v27;
  *&v14[v13] = v27;
  v24(v16, v25, a2);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v19 = v22;
  *(v18 + 4) = v23;
  *(v18 + 5) = v19;
  v15(&v18[v12], v16, a2);
  *&v18[v13] = v17;
  swift_retain_n();
  return sub_26EF3AC7C();
}

uint64_t sub_26EE219BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = MEMORY[0x277D84308];
  v6 = *(*a2 + *MEMORY[0x277D84308]);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v14[-v9];
  v11 = sub_26EF3AC9C();
  MEMORY[0x274382CF0](v11);
  v12 = swift_readAtKeyPath();
  (*(*(*(v4 + *v5 + 8) - 8) + 16))(a3);
  v12(v14, 0);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_26EE21B40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(sub_26EF3AC9C() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26EE219BC(v1 + v5, v6, a1);
}

uint64_t sub_26EE21BE0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(*(*a3 + *MEMORY[0x277D84308]) - 8) + 64);
  v4 = MEMORY[0x28223BE20](a1, a1);
  v6 = *(*(*(v5 + 8) - 8) + 64);
  MEMORY[0x28223BE20](v4, v7);
  (*(v9 + 16))(&v11 - v8);
  sub_26EF3AC9C();
  MEMORY[0x274382CF0]();
  swift_setAtWritableKeyPath();
  return sub_26EF3AC3C();
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 32);
  v2 = (sub_26EF3AC9C() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(*v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = (v0 + v4);
  v8 = *v7;

  v9 = *(v7 + 1);

  (*(*(v1 - 8) + 8))(&v7[v2[10]], v1);
  v10 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26EE21E50(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(sub_26EF3AC9C() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26EE21BE0(a1, v1 + v5, v6);
}

uint64_t Binding.to<A, B>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a3;
  v5 = *a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v6 + 16);
  v25(v8, v3, a2);
  v9 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v23 = v9;
  v10 = (v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  v12 = (v5 + *MEMORY[0x277D84308]);
  v13 = v12[1];
  *(v11 + 4) = v13;
  v24 = *v12;
  *(v11 + 5) = v24;
  v14 = *(v6 + 32);
  v22 = a2;
  v14(&v11[v9], v8, a2);
  v15 = v26;
  v16 = v27;
  *&v11[v10] = v27;
  v25(v8, v15, a2);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v18 = v23;
  v19 = v24;
  *(v17 + 4) = v13;
  *(v17 + 5) = v19;
  v14(&v17[v18], v8, v22);
  *&v17[v10] = v16;
  sub_26EF3B5CC();
  swift_retain_n();
  return sub_26EF3AC7C();
}

{
  v25 = a1;
  v27 = a3;
  v5 = *a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v6 + 16);
  v23(v8, v3, a2);
  v9 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v21 = v9;
  v10 = (v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  v12 = (v5 + *MEMORY[0x277D84308]);
  v26 = v12[1];
  v22 = *(v26 + 16);
  *(v11 + 4) = v22;
  v13 = *v12;
  *(v11 + 5) = *v12;
  v14 = *(v6 + 32);
  v20 = a2;
  v14(&v11[v9], v8, a2);
  v15 = v24;
  v16 = v25;
  *&v11[v10] = v25;
  v23(v8, v15, a2);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v18 = v21;
  *(v17 + 4) = v22;
  *(v17 + 5) = v13;
  v14(&v17[v18], v8, v20);
  *&v17[v10] = v16;
  swift_retain_n();
  return sub_26EF3AC7C();
}

uint64_t sub_26EE2212C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + *MEMORY[0x277D84308]);
  v5 = sub_26EF3B5CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v20 - v10;
  v12 = *(v4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9, v14);
  v16 = &v20 - v15;
  v17 = sub_26EF3AC9C();
  MEMORY[0x274382CF0](v17);
  if ((*(v12 + 48))(v11, 1, v4) == 1)
  {
    (*(v6 + 8))(v11, v5);
    v18 = 1;
  }

  else
  {
    (*(v12 + 32))(v16, v11, v4);
    swift_getAtKeyPath();
    (*(v12 + 8))(v16, v4);
    v18 = 0;
  }

  return (*(*(*(v3 + *MEMORY[0x277D84308] + 8) - 8) + 56))(a2, v18, 1);
}

uint64_t sub_26EE22398(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = a2;
  v38 = a1;
  v34[1] = a3;
  v3 = (*a3 + *MEMORY[0x277D84308]);
  v4 = *v3;
  v5 = sub_26EF3B5CC();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v34 - v12;
  v14 = v3[1];
  v15 = sub_26EF3B5CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = v34 - v20;
  v22 = *(v14 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v19, v24);
  v27 = v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v30 = v34 - v29;
  (*(v16 + 16))(v21, v38, v15);
  if ((*(v22 + 48))(v21, 1, v14) == 1)
  {
    return (*(v16 + 8))(v21, v15);
  }

  (*(v22 + 32))(v30, v21, v14);
  v32 = v36;
  sub_26EF3AC9C();
  MEMORY[0x274382CF0]();
  if ((*(*(v4 - 8) + 48))(v13, 1, v4))
  {
    v33 = v35;
    (*(v35 + 16))(v10, v13, v32);
    sub_26EF3AC3C();
    (*(v22 + 8))(v30, v14);
    return (*(v33 + 8))(v13, v32);
  }

  else
  {
    (*(v22 + 16))(v27, v30, v14);
    swift_setAtWritableKeyPath();
    sub_26EF3AC3C();
    return (*(v22 + 8))(v30, v14);
  }
}

uint64_t sub_26EE22998@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + *MEMORY[0x277D84308]);
  v5 = sub_26EF3B5CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v19 - v10;
  v12 = *(v4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9, v14);
  v16 = &v19 - v15;
  v17 = sub_26EF3AC9C();
  MEMORY[0x274382CF0](v17);
  if ((*(v12 + 48))(v11, 1, v4) == 1)
  {
    (*(v6 + 8))(v11, v5);
    return (*(*(*(*(v3 + *MEMORY[0x277D84308] + 8) + 16) - 8) + 56))(a2, 1, 1);
  }

  else
  {
    (*(v12 + 32))(v16, v11, v4);
    swift_getAtKeyPath();
    return (*(v12 + 8))(v16, v4);
  }
}

uint64_t sub_26EE22C00(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(v1 + 40);
  sub_26EF3B5CC();
  v3 = *(sub_26EF3AC9C() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v4, v5);
}

uint64_t sub_26EE22CC0(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a1;
  v3 = *(*a3 + *MEMORY[0x277D84308] + 8);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v20 - v5;
  v8 = *v7;
  v9 = sub_26EF3B5CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v20 - v17;
  sub_26EF3AC9C();
  MEMORY[0x274382CF0]();
  if ((*(*(v8 - 8) + 48))(v18, 1, v8))
  {
    (*(v10 + 16))(v15, v18, v9);
    sub_26EF3AC3C();
    return (*(v10 + 8))(v18, v9);
  }

  else
  {
    (*(v20 + 16))(v6, v21, v3);
    swift_setAtWritableKeyPath();
    return sub_26EF3AC3C();
  }
}

uint64_t Binding.to<A>(_:defaultValue:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v9 = sub_26EF3AC9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v16 - v13;
  Binding.to<A>(_:)(a1, a3, &v16 - v13);
  Binding.unwrapped<A>(_:)(a2, v9, a4);
  return (*(v10 + 8))(v14, v9);
}

uint64_t Binding.to<A, B>(_:withInitializer:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a2;
  v23 = a5;
  v8 = *a1;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v13, v12);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = (v8 + *MEMORY[0x277D84308]);
  *(v16 + 16) = *v17;
  *(v16 + 24) = v17[1];
  (*(v9 + 32))(v16 + v14, v11, a4);
  v18 = (v16 + v15);
  *v18 = v22;
  v18[1] = a3;
  *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v19 = sub_26EF3B5CC();
  swift_retain_n();

  Binding.mapped<A>(_:set:)(sub_26EE234D0, a1, sub_26EE23A44, v16, a4, v19, v23);
}

uint64_t sub_26EE23274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(*a2 + *MEMORY[0x277D84308]);
  v7 = sub_26EF3B5CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v21 - v12;
  v14 = *(v6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11, v16);
  v18 = &v21 - v17;
  (*(v8 + 16))(v13, a1, v7);
  if ((*(v14 + 48))(v13, 1, v6) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v19 = 1;
  }

  else
  {
    (*(v14 + 32))(v18, v13, v6);
    swift_getAtKeyPath();
    (*(v14 + 8))(v18, v6);
    v19 = 0;
  }

  return (*(*(*(v5 + *MEMORY[0x277D84308] + 8) - 8) + 56))(a3, v19, 1);
}

uint64_t sub_26EE234D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a4;
  v38 = a3;
  v39 = a5;
  v40 = a2;
  v42 = a6;
  v7 = (*a5 + *MEMORY[0x277D84308]);
  v8 = *v7;
  v41 = sub_26EF3B5CC();
  v36 = *(v41 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v41, v10);
  v12 = &v35 - v11;
  v13 = v7[1];
  v14 = sub_26EF3B5CC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v35 - v19;
  v21 = *(v13 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v18, v23);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v35 - v28;
  (*(v15 + 16))(v20, a1, v14);
  if ((*(v21 + 48))(v20, 1, v13) == 1)
  {
    (*(v15 + 8))(v20, v14);
    return (*(*(v8 - 8) + 56))(v42, 1, 1, v8);
  }

  else
  {
    v31 = v42;
    (*(v21 + 32))(v29, v20, v13);
    v32 = v41;
    v33 = sub_26EF3AC9C();
    MEMORY[0x274382CF0](v33);
    v34 = *(v8 - 8);
    if ((*(v34 + 48))(v12, 1, v8) == 1)
    {
      (*(v36 + 8))(v12, v32);
      v38(v29);
      return (*(v21 + 8))(v29, v13);
    }

    else
    {
      (*(v34 + 32))(v31, v12, v8);
      (*(v21 + 16))(v26, v29, v13);
      swift_setAtWritableKeyPath();
      (*(v21 + 8))(v29, v13);
      return (*(v34 + 56))(v31, 0, 1, v8);
    }
  }
}

uint64_t sub_26EE238E4()
{
  v1 = *(v0 + 16);
  sub_26EF3B5CC();
  v2 = (sub_26EF3AC9C() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);
  v6 = *(v0 + v4);

  v7 = *(v0 + v4 + 8);

  v8 = v2[10];
  v9 = *(v1 - 8);
  if (!(*(v9 + 48))(v0 + v4 + v8, 1, v1))
  {
    (*(v9 + 8))(v0 + v4 + v8, v1);
  }

  v10 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v10 + 8);

  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v3 | 7);
}

uint64_t sub_26EE23A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_26EF3B5CC();
  v6 = *(sub_26EF3AC9C() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = v2 + v8;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v2 + v9);

  return sub_26EE234D8(a1, v2 + v7, v11, v12, v13, a2);
}

uint64_t Binding.to<A, B>(_:defaultValue:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v42 = a1;
  v43 = a3;
  v4 = *a1;
  v38 = v3;
  v39 = v4;
  v5 = *(*(v4 + *MEMORY[0x277D84308] + 8) + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v10 = &v33 - v9;
  v36 = &v33 - v9;
  v44 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v8, v14);
  v40 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v33 - v17;
  v37 = *(v12 + 16);
  v37(&v33 - v17, v3);
  v19 = v5;
  (*(v6 + 16))(v10, v41, v5);
  v20 = *(v12 + 80);
  v21 = (v20 + 48) & ~v20;
  v41 = v21 + v13;
  v34 = v21;
  v35 = v20 | 7;
  v22 = (v21 + v13 + *(v6 + 80)) & ~*(v6 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v19;
  v39 = *(v39 + *MEMORY[0x277D84308]);
  *(v23 + 5) = v39;
  v24 = *(v12 + 32);
  v25 = v18;
  v26 = v44;
  v24(&v23[v21], v25, v44);
  (*(v6 + 32))(&v23[v22], v36, v19);
  v27 = v42;
  *&v23[(v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = v42;
  v28 = v40;
  (v37)(v40, v38, v26);
  v29 = (v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  v31 = v39;
  *(v30 + 4) = v19;
  *(v30 + 5) = v31;
  v24(&v30[v34], v28, v44);
  *&v30[v29] = v27;
  swift_retain_n();
  return sub_26EF3AC7C();
}

uint64_t sub_26EE23E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  v31 = a4;
  v4 = *(*a3 + *MEMORY[0x277D84308] + 8);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v28 - v6;
  v9 = *v8;
  v10 = sub_26EF3B5CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v28 - v15;
  v17 = *(v9 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14, v19);
  v21 = &v28 - v20;
  v22 = sub_26EF3AC9C();
  MEMORY[0x274382CF0](v22);
  if ((*(v17 + 48))(v16, 1, v9) == 1)
  {
    (*(v11 + 8))(v16, v10);
    return (*(*(*(v4 + 16) - 8) + 16))(v31, v30);
  }

  else
  {
    v24 = v31;
    (*(v17 + 32))(v21, v16, v9);
    swift_getAtKeyPath();
    (*(v17 + 8))(v21, v9);
    v25 = *(v4 + 16);
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (v27(v7, 1, v25) == 1)
    {
      (*(v26 + 16))(v24, v30, v25);
      result = v27(v7, 1, v25);
      if (result != 1)
      {
        return (*(v29 + 8))(v7, v4);
      }
    }

    else
    {
      return (*(v26 + 32))(v24, v7, v25);
    }
  }

  return result;
}

uint64_t sub_26EE241C4()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  sub_26EF3B5CC();
  v3 = (sub_26EF3AC9C() - 8);
  v4 = *(*v3 + 80);
  v18 = *(*v3 + 64);
  v19 = v1;
  v5 = (v4 + 48) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 2);
  swift_unknownObjectRelease();
  v10 = *&v0[v5];

  v11 = *&v0[v5 + 8];

  v12 = v3[10];
  v13 = *(v2 - 8);
  if (!(*(v13 + 48))(&v0[v5 + v12], 1, v2))
  {
    (*(v13 + 8))(&v0[v5 + v12], v2);
  }

  v14 = (v5 + v18 + v7) & ~v7;
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v6 + 8))(&v0[v14], v19);
  v16 = *&v0[v15];

  return MEMORY[0x2821FE8E8](v0, v15 + 8, v4 | v7 | 7);
}

uint64_t sub_26EE2439C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_26EF3B5CC();
  v5 = *(sub_26EF3AC9C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v4 - 8);
  v8 = (v6 + *(v5 + 64) + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26EE23E50(v1 + v6, v1 + v8, v9, a1);
}

uint64_t sub_26EE244A0(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = a1;
  v3 = *a3;
  v31 = a3;
  v29 = *(v3 + *MEMORY[0x277D84308] + 8);
  v4 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v28 - v5;
  v8 = *v7;
  v9 = sub_26EF3B5CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v28 - v18;
  v20 = *(v8 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17, v22);
  v24 = &v28 - v23;
  sub_26EF3AC9C();
  MEMORY[0x274382CF0]();
  if ((*(v20 + 48))(v19, 1, v8) == 1)
  {
    return (*(v10 + 8))(v19, v9);
  }

  (*(v20 + 32))(v24, v19, v8);
  v26 = *(v29 + 16);
  v27 = *(v26 - 8);
  (*(v27 + 16))(v6, v30, v26);
  (*(v27 + 56))(v6, 0, 1, v26);
  swift_setAtWritableKeyPath();
  (*(v20 + 16))(v15, v24, v8);
  (*(v20 + 56))(v15, 0, 1, v8);
  sub_26EF3AC3C();
  return (*(v20 + 8))(v24, v8);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 40);
  sub_26EF3B5CC();
  v2 = (sub_26EF3AC9C() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + v4);

  v8 = *(v0 + v4 + 8);

  v9 = v2[10];
  v10 = *(v1 - 8);
  if (!(*(v10 + 48))(v0 + v4 + v9, 1, v1))
  {
    (*(v10 + 8))(v0 + v4 + v9, v1);
  }

  v11 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v3 | 7);
}

uint64_t sub_26EE24938(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(v2 + 40);
  sub_26EF3B5CC();
  v5 = *(sub_26EF3AC9C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v6, v7);
}

uint64_t sub_26EE24A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_26EF3AAEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E40, &qword_26EF44670);
  result = sub_26EF3AAEC();
  if (__OFADD__(a6, 3))
  {
    __break(1u);
  }

  else
  {
    *a9 = a1;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3;
    *(a9 + 24) = a4;
    *(a9 + 32) = a5 & 1;
    *(a9 + 40) = a6 + 3;
    *(a9 + 48) = a7;
    *(a9 + 56) = a8;
    *(a9 + 64) = a10;
    *(a9 + 72) = a11;
    *(a9 + 80) = v21;
    *(a9 + 88) = v22;
    *(a9 + 96) = v21;
    *(a9 + 104) = v22;
    *(a9 + 112) = v23;
  }

  return result;
}

double sub_26EE24B20@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v66 = sub_26EF3A08C();
  v3 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66, v4);
  v68 = sub_26EF3971C();
  v69 = *(v68 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v68, v6);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E48, &unk_26EF3D5B0);
  v72 = *(v71 - 8);
  v9 = *(v72 + 64);
  MEMORY[0x28223BE20](v71, v10);
  v12 = &v65 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E50, &qword_26EF43DE0);
  v75 = *(v74 - 8);
  v13 = *(v75 + 64);
  MEMORY[0x28223BE20](v74, v14);
  v16 = &v65 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E58, &qword_26EF3D5C0);
  v73 = *(v70 - 8);
  v17 = *(v73 + 64);
  MEMORY[0x28223BE20](v70, v18);
  v20 = &v65 - v19;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E60, &qword_26EF3D5C8);
  v78 = *(v77 - 8);
  v21 = *(v78 + 64);
  MEMORY[0x28223BE20](v77, v22);
  v67 = &v65 - v23;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E68, &qword_26EF3D5D0);
  v81 = *(v80 - 8);
  v24 = *(v81 + 64);
  MEMORY[0x28223BE20](v80, v25);
  v76 = &v65 - v26;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E70, &qword_26EF3D5D8);
  v83 = *(v82 - 8);
  v27 = *(v83 + 64);
  MEMORY[0x28223BE20](v82, v28);
  v79 = &v65 - v29;
  sub_26EF3A37C();
  v85 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E78, &qword_26EF3D5E0);
  sub_26EE154C8(&qword_2806C6E80, &qword_2806C6E78, &qword_26EF3D5E0);
  sub_26EF3969C();
  sub_26EF3A24C();
  sub_26EF396FC();
  v30 = swift_allocObject();
  v31 = *(v2 + 80);
  *(v30 + 80) = *(v2 + 64);
  *(v30 + 96) = v31;
  *(v30 + 112) = *(v2 + 96);
  *(v30 + 128) = *(v2 + 112);
  v32 = *(v2 + 16);
  *(v30 + 16) = *v2;
  *(v30 + 32) = v32;
  v33 = *(v2 + 48);
  *(v30 + 48) = *(v2 + 32);
  *(v30 + 64) = v33;
  sub_26EE25C0C(v2, v89);
  sub_26EE27D38(&qword_2806C6E88, MEMORY[0x277CDD730]);
  sub_26EE27D38(&qword_2806C6E90, MEMORY[0x277CDD708]);
  v34 = v68;
  sub_26EF3AD1C();

  (*(v69 + 8))(v8, v34);
  v35 = swift_allocObject();
  v36 = *(v2 + 80);
  *(v35 + 80) = *(v2 + 64);
  *(v35 + 96) = v36;
  *(v35 + 112) = *(v2 + 96);
  *(v35 + 128) = *(v2 + 112);
  v37 = *(v2 + 16);
  *(v35 + 16) = *v2;
  *(v35 + 32) = v37;
  v38 = *(v2 + 48);
  *(v35 + 48) = *(v2 + 32);
  *(v35 + 64) = v38;
  sub_26EE25C0C(v2, v89);
  sub_26EE154C8(&qword_2806C6E98, &qword_2806C6E48, &unk_26EF3D5B0);
  v39 = v71;
  sub_26EF3AD0C();

  (*(v72 + 8))(v12, v39);
  sub_26EF3974C();
  v40 = sub_26EE154C8(&qword_2806C6EA0, &qword_2806C6E58, &qword_26EF3D5C0);
  v41 = sub_26EE154C8(&qword_2806C6EA8, &qword_2806C6E50, &qword_26EF43DE0);
  v42 = v67;
  v43 = v70;
  v44 = v74;
  sub_26EF3A8DC();
  (*(v75 + 8))(v16, v44);
  (*(v73 + 8))(v20, v43);
  *v89 = *(v2 + 8);
  *&v89[9] = *(v2 + 17);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E38, &unk_26EF3D5A0);
  MEMORY[0x274382CF0](&v86, v45);
  v46 = swift_allocObject();
  v47 = *(v2 + 80);
  *(v46 + 80) = *(v2 + 64);
  *(v46 + 96) = v47;
  *(v46 + 112) = *(v2 + 96);
  *(v46 + 128) = *(v2 + 112);
  v48 = *(v2 + 16);
  *(v46 + 16) = *v2;
  *(v46 + 32) = v48;
  v49 = *(v2 + 48);
  *(v46 + 48) = *(v2 + 32);
  *(v46 + 64) = v49;
  sub_26EE25C0C(v2, v89);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E40, &qword_26EF44670);
  *v89 = v43;
  *&v89[8] = v44;
  *&v89[16] = v40;
  *&v89[24] = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_26EE25D44();
  v53 = v76;
  v54 = v77;
  sub_26EF3A8FC();

  (*(v78 + 8))(v42, v54);
  v86 = *(v2 + 96);
  v87 = *(v2 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6EB8, &qword_26EF3D5E8);
  sub_26EF3AB1C();
  v86 = *v89;
  v87 = *&v89[16];
  v88 = v89[24];
  sub_26EF3AF2C();
  *v89 = v54;
  *&v89[8] = v50;
  *&v89[16] = OpaqueTypeConformance2;
  *&v89[24] = v52;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = MEMORY[0x277D83B88];
  v57 = MEMORY[0x277D83B98];
  v58 = v79;
  v59 = v80;
  sub_26EF3A71C();

  (*(v81 + 8))(v53, v59);
  *v89 = v59;
  *&v89[8] = v56;
  *&v89[16] = v55;
  *&v89[24] = v57;
  swift_getOpaqueTypeConformance2();
  v60 = v84;
  v61 = v82;
  sub_26EF3A70C();
  (*(v83 + 8))(v58, v61);
  sub_26EF3AE4C();
  sub_26EF3984C();
  v62 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6EC0, qword_26EF3D5F0) + 36));
  v63 = *&v89[16];
  *v62 = *v89;
  v62[1] = v63;
  result = *&v90;
  v62[2] = v90;
  return result;
}

uint64_t sub_26EE25614@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_26EF39E4C();
  *(a1 + 8) = 0x4039000000000000;
  *(a1 + 16) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F90, &unk_26EF3D838);
  if (__OFADD__(*v3, 3))
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *v3 + 6;
  if (__OFADD__(*v3 + 3, 3))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = *(result + 44);
    v15 = 0;
    v16 = v5;
    swift_getKeyPath();
    v7 = swift_allocObject();
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    *(v7 + 48) = *(v3 + 32);
    *(v7 + 64) = v8;
    *(v7 + 16) = v10;
    *(v7 + 32) = v9;
    v12 = *(v3 + 80);
    v11 = *(v3 + 96);
    v13 = *(v3 + 64);
    *(v7 + 128) = *(v3 + 112);
    *(v7 + 96) = v12;
    *(v7 + 112) = v11;
    *(v7 + 80) = v13;
    sub_26EE25C0C(v3, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F98, &qword_26EF3D860);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6FA0, &qword_26EF3D868);
    sub_26EE275F0();
    sub_26EE276D0();
    return sub_26EF3ACEC();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26EE25780@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6FF8, &qword_26EF3D888);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7000, &unk_26EF3D890);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x28223BE20](v12, v14);
  v17 = &v33 - v16;
  v18 = *a2 + 3;
  if (__OFADD__(*a2, 3))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(v18, 3))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*a2 + 6 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = *a1;
  if (*a1 < 3 || v19 >= v18)
  {
    sub_26EF3AE4C();
    sub_26EF3984C();
    v21 = BYTE8(v33);
    v22 = v34;
    v23 = v35;
    *v17 = v33;
    v17[8] = v21;
    *(v17 + 2) = v22;
    v17[24] = v23;
    *(v17 + 2) = v36;
    *(v17 + 6) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6FD8, &qword_26EF3D878);
    sub_26EE2780C();
    v24 = sub_26EE2799C();
    v37 = &type metadata for SymbolView;
    v38 = v24;
    swift_getOpaqueTypeConformance2();
    sub_26EF3A06C();
LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  v33 = *(a2 + 96);
  v34 = *(a2 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6EB8, &qword_26EF3D5E8);
  result = sub_26EF3AAFC();
  if (v38)
  {
    v20 = 1;
LABEL_12:
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6FC8, &qword_26EF3D870);
    return (*(*(v32 - 8) + 56))(a3, v20, 1, v32);
  }

  if (!__OFSUB__(v18, 1))
  {
    v25 = v37;
    v26 = *(a2 + 40);
    v37 = 0x4042800000000000;
    v38 = v19;
    v39 = v25;
    v40 = v26;
    v41 = v18 - 1;
    v27 = swift_allocObject();
    *(v27 + 16) = v19;
    *(v27 + 24) = v25;
    v28 = *(a2 + 80);
    *(v27 + 96) = *(a2 + 64);
    *(v27 + 112) = v28;
    *(v27 + 128) = *(a2 + 96);
    *(v27 + 144) = *(a2 + 112);
    v29 = *(a2 + 16);
    *(v27 + 32) = *a2;
    *(v27 + 48) = v29;
    v30 = *(a2 + 48);
    *(v27 + 64) = *(a2 + 32);
    *(v27 + 80) = v30;
    sub_26EE25C0C(a2, &v33);
    v31 = sub_26EE2799C();
    sub_26EF3A6CC();

    (*(v7 + 16))(v17, v11, v6);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6FD8, &qword_26EF3D878);
    sub_26EE2780C();
    *&v33 = &type metadata for SymbolView;
    *(&v33 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    sub_26EF3A06C();
    (*(v7 + 8))(v11, v6);
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_26EE25BAC()
{
  sub_26EF3970C();
  v2 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F88, &qword_26EF3D830);
  return sub_26EF3AB0C();
}

uint64_t sub_26EE25C44()
{
  v1 = v0 + 16;
  v9 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F88, &qword_26EF3D830);
  v2 = sub_26EF3AAFC();
  v3.n128_f64[0] = v8;
  v4 = 48;
  if (v8 < 0.0)
  {
    v4 = 64;
  }

  v5 = 56;
  if (v8 < 0.0)
  {
    v5 = 72;
  }

  v6 = *(v1 + v5);
  return (*(v1 + v4))(v2, v3);
}

uint64_t sub_26EE25CC4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_26EF3AEAC();
  sub_26EF3992C();
}

unint64_t sub_26EE25D44()
{
  result = qword_2806C6EB0;
  if (!qword_2806C6EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E40, &qword_26EF44670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6EB0);
  }

  return result;
}

double sub_26EE25DDC@<D0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 14);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_26EE24B20(a1);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26EE25E5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26EE25EA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26EE25F14()
{
  result = qword_2806C6EC8;
  if (!qword_2806C6EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6EC0, qword_26EF3D5F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E70, &qword_26EF3D5D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E68, &qword_26EF3D5D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E60, &qword_26EF3D5C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E40, &qword_26EF44670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E58, &qword_26EF3D5C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E50, &qword_26EF43DE0);
    sub_26EE154C8(&qword_2806C6EA0, &qword_2806C6E58, &qword_26EF3D5C0);
    sub_26EE154C8(&qword_2806C6EA8, &qword_2806C6E50, &qword_26EF43DE0);
    swift_getOpaqueTypeConformance2();
    sub_26EE25D44();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6EC8);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26EE26178(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26EE26198(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_26EE26FE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6ED0, &qword_26EF3D720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE27074(uint64_t a1)
{
  v2 = sub_26EF39BDC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26EF39CEC();
}

uint64_t sub_26EE2713C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF39D1C();
  *a1 = result;
  return result;
}

uint64_t sub_26EE27168(uint64_t *a1)
{
  v1 = *a1;

  return sub_26EF39D2C();
}

unint64_t sub_26EE27194()
{
  result = qword_2806C6F18;
  if (!qword_2806C6F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6F10, &unk_26EF3D790);
    sub_26EE154C8(&qword_2806C6F20, &qword_2806C6F28, &qword_26EF42670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6F18);
  }

  return result;
}

unint64_t sub_26EE2724C()
{
  result = qword_2806C6F48;
  if (!qword_2806C6F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6EF0, &qword_26EF3D740);
    sub_26EE272D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6F48);
  }

  return result;
}

unint64_t sub_26EE272D8()
{
  result = qword_2806C6F50;
  if (!qword_2806C6F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6EE8, &qword_26EF3D738);
    sub_26EE27390();
    sub_26EE154C8(&qword_2806C6F68, &qword_2806C6F70, &qword_26EF3FF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6F50);
  }

  return result;
}

unint64_t sub_26EE27390()
{
  result = qword_2806C6F58;
  if (!qword_2806C6F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6EE0, &qword_26EF3D730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6F10, &unk_26EF3D790);
    sub_26EE27194();
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C6F60, &qword_2806C6F30, &qword_26EF3D7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6F58);
  }

  return result;
}

uint64_t sub_26EE27484@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26EF39D8C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26EE27504()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    if (__OFADD__(*(v0 + 16), 3))
    {
      __break(1u);
    }

    else
    {
      v1 = *(v0 + 32);
      v3 = *(v1 + 96);
      v4 = *(v1 + 112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6EB8, &qword_26EF3D5E8);
      return sub_26EF3AB0C();
    }
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

unint64_t sub_26EE275F0()
{
  result = qword_2806C6FA8;
  if (!qword_2806C6FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6F98, &qword_26EF3D860);
    sub_26EE2767C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6FA8);
  }

  return result;
}

unint64_t sub_26EE2767C()
{
  result = qword_2806C6FB0;
  if (!qword_2806C6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6FB0);
  }

  return result;
}

unint64_t sub_26EE276D0()
{
  result = qword_2806C6FB8;
  if (!qword_2806C6FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6FA0, &qword_26EF3D868);
    sub_26EE27754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6FB8);
  }

  return result;
}

unint64_t sub_26EE27754()
{
  result = qword_2806C6FC0;
  if (!qword_2806C6FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6FC8, &qword_26EF3D870);
    sub_26EE2780C();
    sub_26EE2799C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6FC0);
  }

  return result;
}

unint64_t sub_26EE2780C()
{
  result = qword_2806C6FD0;
  if (!qword_2806C6FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6FD8, &qword_26EF3D878);
    sub_26EE278C4(&qword_2806C6FE0, &qword_2806C6FE8, &qword_26EF3D880, sub_26EE27948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6FD0);
  }

  return result;
}

uint64_t sub_26EE278C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE27948()
{
  result = qword_2806C6FF0;
  if (!qword_2806C6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6FF0);
  }

  return result;
}

unint64_t sub_26EE2799C()
{
  result = qword_2806CACC0;
  if (!qword_2806CACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CACC0);
  }

  return result;
}

uint64_t sub_26EE279F0()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[11];

  v4 = v0[13];

  v5 = v0[15];

  v6 = v0[18];

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_26EE27A50()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0 + 4;
  if (v1 < v2)
  {
    v4 = 7;
    v5 = 6;
LABEL_5:
    v6 = v3[v4];
    return (v3[v5])();
  }

  if (v2 < v1)
  {
    goto LABEL_4;
  }

  if (__OFADD__(*v3, 3))
  {
    __break(1u);
    return result;
  }

  if (*v3 + 2 == v1 && v1 == v2 && v0[9] == v1)
  {
LABEL_4:
    v4 = 9;
    v5 = 8;
    goto LABEL_5;
  }

  return result;
}

unint64_t sub_26EE27AE0()
{
  result = qword_2806C7008;
  if (!qword_2806C7008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6F78, &qword_26EF3D820);
    sub_26EE27B98();
    sub_26EE154C8(&qword_2806C7030, &qword_2806C6F80, &qword_26EF3D828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7008);
  }

  return result;
}

unint64_t sub_26EE27B98()
{
  result = qword_2806C7010;
  if (!qword_2806C7010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6F08, &qword_26EF3D758);
    sub_26EE27C50();
    sub_26EE154C8(&qword_2806C7020, &qword_2806C7028, &unk_26EF3F090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7010);
  }

  return result;
}

unint64_t sub_26EE27C50()
{
  result = qword_2806C7018;
  if (!qword_2806C7018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6F00, &qword_26EF3D750);
    sub_26EE278C4(&qword_2806C6F40, &qword_2806C6EF8, &qword_26EF3D748, sub_26EE2724C);
    sub_26EE27D38(&qword_2806C6AD8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7018);
  }

  return result;
}

uint64_t sub_26EE27D38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26EE27E58(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26EF3883C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_26EF3882C();
}

uint64_t sub_26EE27EF4(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_26EF3883C();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_26EE27F6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26EF3883C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

Swift::String __swiftcall TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(Swift::String _, Swift::Bool specializeForCurrentDeviceType, Swift::String_optional localeID)
{
  object = localeID.value._object;
  v5 = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  Type = AXDeviceGetType();
  v38 = specializeForCurrentDeviceType;
  if (Type == 3)
  {
    v39 = countAndFlagsBits;
    v40 = v5;

    v8 = 0x444150495FLL;
    v9 = 0xE500000000000000;
  }

  else
  {
    v39 = countAndFlagsBits;
    v40 = v5;
    if (Type == 1)
    {

      v8 = 0x454E4F4850495FLL;
      v9 = 0xE700000000000000;
    }

    else
    {

      v8 = 1128353119;
      v9 = 0xE400000000000000;
    }
  }

  MEMORY[0x274383240](v8, v9);
  if (!object)
  {
    v21 = sub_26EF3B0BC();
    v17 = [objc_opt_self() bundleWithIdentifier_];

    if (v17)
    {
      v18 = sub_26EF37CFC();
      v20 = v22;
      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = sub_26EF3B0BC();
  v11 = sub_26EF3B0BC();
  v12 = sub_26EF3B0BC();
  v13 = [objc_opt_self() bundleWithIdentifier_];

  if (!v13)
  {
    __break(1u);
    goto LABEL_24;
  }

  v16 = sub_26EF3B0BC();
  v17 = AXNSLocalizedStringForLocale();

  if (!v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = sub_26EF3B0FC();
  v20 = v19;
LABEL_12:

  if (!v38 && (v18 == v39 && v20 == v40 || (sub_26EF3B82C() & 1) != 0))
  {
    if (!object)
    {
      v32 = sub_26EF3B0BC();
      v33 = [objc_opt_self() bundleWithIdentifier_];

      if (v33)
      {

        v34 = sub_26EF37CFC();
        v36 = v35;

        v14 = v34;
        v15 = v36;
        goto LABEL_29;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v23 = sub_26EF3B0BC();
    v24 = sub_26EF3B0BC();
    v25 = sub_26EF3B0BC();
    v26 = [objc_opt_self() bundleWithIdentifier_];

    if (v26)
    {
      v27 = sub_26EF3B0BC();
      v28 = AXNSLocalizedStringForLocale();

      if (v28)
      {

        v29 = sub_26EF3B0FC();
        v31 = v30;

        v14 = v29;
        v15 = v31;
        goto LABEL_29;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v14 = v18;
  v15 = v20;
LABEL_29:
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

Swift::String __swiftcall TTSCSUILocString(_:specializeForCurrentDeviceType:)(Swift::String _, Swift::Bool specializeForCurrentDeviceType)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  Type = AXDeviceGetType();
  if (Type == 3)
  {
    v23 = countAndFlagsBits;
    v24 = object;

    v6 = 0x444150495FLL;
    v7 = 0xE500000000000000;
  }

  else
  {
    v23 = countAndFlagsBits;
    v24 = object;
    if (Type == 1)
    {

      v6 = 0x454E4F4850495FLL;
      v7 = 0xE700000000000000;
    }

    else
    {

      v6 = 1128353119;
      v7 = 0xE400000000000000;
    }
  }

  MEMORY[0x274383240](v6, v7);
  v8 = sub_26EF3B0BC();
  v9 = objc_opt_self();
  v10 = [v9 bundleWithIdentifier_];

  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = sub_26EF37CFC();
  v15 = v14;

  if (!specializeForCurrentDeviceType)
  {
    if (v13 == v23 && v15 == v24)
    {
    }

    else
    {
      v16 = sub_26EF3B82C();

      if ((v16 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v17 = sub_26EF3B0BC();
    v18 = [v9 bundleWithIdentifier_];

    if (v18)
    {
      v19 = sub_26EF37CFC();
      v21 = v20;

      v11 = v19;
      v12 = v21;
      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_9:
  v11 = v13;
  v12 = v15;
LABEL_18:
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_26EE286F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_26EF3A4FC();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v19[-v14];
  v20 = v4;
  v21 = v5;
  v22 = v2;
  sub_26EF3A4EC();
  swift_getWitnessTable();
  v16 = v7[2];
  v16(v15, v12, v6);
  v17 = v7[1];
  v17(v12, v6);
  v16(a2, v15, v6);
  return (v17)(v15, v6);
}

uint64_t sub_26EE2888C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

unint64_t sub_26EE28990()
{
  result = qword_2806C7040;
  if (!qword_2806C7040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7038, qword_26EF3D8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7040);
  }

  return result;
}

uint64_t sub_26EE28A78()
{
  v2 = *v0;
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7038, qword_26EF3D8A0);
  sub_26EE28990();
  sub_26EE12538();
  return sub_26EF3A75C();
}

uint64_t sub_26EE28B04(uint64_t a1)
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

uint64_t sub_26EE28B74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_26EE28CB4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_26EE28EE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_26EF3A4FC();

  return swift_getWitnessTable();
}

uint64_t sub_26EE28F2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7038, qword_26EF3D8A0);
  sub_26EE28990();
  sub_26EE12538();
  return swift_getOpaqueTypeConformance2();
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

uint64_t VoicePickerGroup.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VoicePickerGroup.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t VoicePickerGroup.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VoicePickerGroup() + 24);
  v4 = sub_26EF37FEC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for VoicePickerGroup()
{
  result = qword_2806CB210;
  if (!qword_2806CB210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VoicePickerGroup.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VoicePickerGroup() + 24);
  v4 = sub_26EF37FEC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VoicePickerGroup.id.getter()
{
  v1 = v0;
  v2 = v0 + *(type metadata accessor for VoicePickerGroup() + 24);
  v4 = sub_26EF37EFC();
  MEMORY[0x274383240](95, 0xE100000000000000);
  MEMORY[0x274383240](*v1, v1[1]);
  return v4;
}

uint64_t VoicePickerGroup.priority.getter()
{
  v1 = (v0 + *(type metadata accessor for VoicePickerGroup() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t VoicePickerGroup.priority.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for VoicePickerGroup();
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t VoicePickerGroup.topLevelPosition.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VoicePickerGroup();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t VoicePickerGroup.topLevelPosition.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for VoicePickerGroup();
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t VoicePickerGroup.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_26EF3B16C();
  v4 = *(v0 + 16);
  sub_26EF3B89C();
  v5 = type metadata accessor for VoicePickerGroup();
  v6 = v5[6];
  sub_26EF37FEC();
  sub_26EE29928(&qword_2806C7048, MEMORY[0x277CC9788]);
  sub_26EF3B05C();
  v7 = (v1 + v5[7]);
  if (*(v7 + 8) == 1)
  {
    sub_26EF3B89C();
  }

  else
  {
    v8 = *v7;
    sub_26EF3B89C();
    MEMORY[0x274383950](v8);
  }

  v9 = *(v1 + v5[8]);
  if (v9 == 2)
  {
    return sub_26EF3B89C();
  }

  sub_26EF3B89C();
  return MEMORY[0x274383950](v9 & 1);
}

uint64_t VoicePickerGroup.hashValue.getter()
{
  sub_26EF3B87C();
  VoicePickerGroup.hash(into:)();
  return sub_26EF3B8CC();
}

uint64_t sub_26EE295F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a7;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  v13 = type metadata accessor for VoicePickerGroup();
  v14 = v13[6];
  v15 = sub_26EF37FEC();
  result = (*(*(v15 - 8) + 32))(a8 + v14, a4, v15);
  v17 = a8 + v13[7];
  *v17 = a5;
  *(v17 + 8) = a6 & 1;
  *(a8 + v13[8]) = v12;
  return result;
}

uint64_t sub_26EE296AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = v2 + *(a1 + 24);
  v8 = sub_26EF37EFC();
  v9 = v6;
  MEMORY[0x274383240](95, 0xE100000000000000);
  result = MEMORY[0x274383240](*v3, v3[1]);
  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_26EE29714()
{
  sub_26EF3B87C();
  VoicePickerGroup.hash(into:)();
  return sub_26EF3B8CC();
}

uint64_t sub_26EE29758()
{
  sub_26EF3B87C();
  VoicePickerGroup.hash(into:)();
  return sub_26EF3B8CC();
}

uint64_t _s26TextToSpeechVoiceBankingUI0D11PickerGroupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_26EF3B82C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = type metadata accessor for VoicePickerGroup();
  if ((MEMORY[0x274380060](a1 + v5[6], a2 + v5[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = v5[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if ((v8 & 1) == 0)
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }

LABEL_14:
    v11 = v5[8];
    v12 = *(a1 + v11);
    v13 = *(a2 + v11);
    if (v12 == 2)
    {
      if (v13 != 2)
      {
        return 0;
      }
    }

    else if (v13 == 2 || ((v13 ^ v12) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v10)
  {
    goto LABEL_14;
  }

  return 0;
}

unint64_t sub_26EE2988C()
{
  result = qword_2806C7050;
  if (!qword_2806C7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7050);
  }

  return result;
}

uint64_t sub_26EE29928(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26EE29974()
{
  result = qword_2806C7060;
  if (!qword_2806C7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7060);
  }

  return result;
}

uint64_t sub_26EE299DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26EF37FEC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26EE29A9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26EF37FEC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EE29B40()
{
  sub_26EF37FEC();
  if (v0 <= 0x3F)
  {
    sub_26EE29C14(319, &qword_2806C7068);
    if (v1 <= 0x3F)
    {
      sub_26EE29C14(319, &qword_2806C7070);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26EE29C14(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26EF3B5CC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t type metadata accessor for _InternalSection()
{
  result = qword_2806CB2A0;
  if (!qword_2806CB2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE29E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70C8, &qword_26EF3DC80);
  v3 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63, v4);
  v61 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70D0, &qword_26EF3DC88);
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v64 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v62 = &v56 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70D8, &qword_26EF3DC90);
  v13 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60, v14);
  v16 = &v56 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70E0, &qword_26EF3DC98);
  v17 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57, v18);
  v20 = &v56 - v19;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70E8, &qword_26EF3DCA0);
  v21 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58, v22);
  v24 = &v56 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = &v56 - v28;
  v30 = sub_26EF38DBC();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v56 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70F0, &qword_26EF3DCA8);
  v37 = *(*(v36 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v36 - 8, v38);
  v59 = &v56 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v56 - v42;
  v44 = type metadata accessor for _InternalSection();
  sub_26EE13B88(a1 + *(v44 + 28), v29, &qword_2806C7088, &unk_26EF3E330);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_26EE14578(v29, &qword_2806C7088, &unk_26EF3E330);
LABEL_6:
    sub_26EE2A99C(v16);
    sub_26EE13B88(v16, v20, &qword_2806C70D8, &qword_26EF3DC90);
    swift_storeEnumTagMultiPayload();
    sub_26EE2E174();
    sub_26EE2E228();
    sub_26EF3A06C();
    sub_26EE14578(v16, &qword_2806C70D8, &qword_26EF3DC90);
    goto LABEL_7;
  }

  (*(v31 + 32))(v35, v29, v30);
  if ((sub_26EF38CFC() & 1) == 0)
  {
    (*(v31 + 8))(v35, v30);
    goto LABEL_6;
  }

  sub_26EE2A4E4(v24);
  sub_26EE13B88(v24, v20, &qword_2806C70E8, &qword_26EF3DCA0);
  swift_storeEnumTagMultiPayload();
  sub_26EE2E174();
  sub_26EE2E228();
  sub_26EF3A06C();
  sub_26EE14578(v24, &qword_2806C70E8, &qword_26EF3DCA0);
  (*(v31 + 8))(v35, v30);
LABEL_7:
  v56 = v43;
  sub_26EF39EAC();
  sub_26EE2B33C(a1, v61);
  sub_26EE2E318();
  v45 = v62;
  sub_26EF3999C();
  v46 = v43;
  v47 = v59;
  sub_26EE13B88(v46, v59, &qword_2806C70F0, &qword_26EF3DCA8);
  v49 = v64;
  v48 = v65;
  v50 = *(v65 + 16);
  v51 = v66;
  v50(v64, v45, v66);
  v52 = v67;
  sub_26EE13B88(v47, v67, &qword_2806C70F0, &qword_26EF3DCA8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7130, &qword_26EF3DCB8);
  v50((v52 + *(v53 + 48)), v49, v51);
  v54 = *(v48 + 8);
  v54(v45, v51);
  sub_26EE14578(v56, &qword_2806C70F0, &qword_26EF3DCA8);
  v54(v49, v51);
  return sub_26EE14578(v47, &qword_2806C70F0, &qword_26EF3DCA8);
}

uint64_t sub_26EE2A4E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = type metadata accessor for _InternalSection();
  v4 = v3 - 8;
  v55 = *(v3 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v57 = v7;
  v58 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v56 = v52 - v11;
  v12 = sub_26EF3873C();
  v59 = *(v12 - 8);
  v60 = v12;
  v13 = *(v59 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v54 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = v52 - v19;
  v21 = sub_26EF38DBC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v26 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = v52 - v28;
  v30 = *(v4 + 36);
  v31 = v2;
  sub_26EE13B88(v2 + v30, v20, &qword_2806C7088, &unk_26EF3E330);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_26EE14578(v20, &qword_2806C7088, &unk_26EF3E330);
    v32 = 1;
    v34 = v60;
    v33 = v61;
    v35 = v59;
  }

  else
  {
    v53 = *(v22 + 32);
    v53(v29, v20, v21);
    v36 = sub_26EE17094();
    v37._object = 0x800000026EF45420;
    v38 = v36 & 1;
    v37._countAndFlagsBits = 0xD000000000000012;
    v39 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v37, v38, 0);
    v52[1] = v39._object;
    v52[2] = v39._countAndFlagsBits;
    v40 = v56;
    sub_26EF395FC();
    v41 = sub_26EF3961C();
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    v42 = v58;
    sub_26EE2E44C(v31, v58);
    (*(v22 + 16))(v26, v29, v21);
    v43 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v44 = (v57 + *(v22 + 80) + v43) & ~*(v22 + 80);
    v45 = swift_allocObject();
    sub_26EE2E6C4(v42, v45 + v43);
    v53((v45 + v44), v26, v21);
    v46 = v54;
    sub_26EF3874C();
    (*(v22 + 8))(v29, v21);
    v47 = v59;
    v48 = v61;
    v49 = v46;
    v50 = v60;
    (*(v59 + 32))(v61, v49, v60);
    v32 = 0;
    v33 = v48;
    v34 = v50;
    v35 = v47;
  }

  return (*(v35 + 56))(v33, v32, 1, v34);
}

uint64_t sub_26EE2A99C@<X0>(uint64_t a1@<X8>)
{
  v110 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7118, &qword_26EF3DCB0);
  v107 = *(v2 - 8);
  v108 = v2;
  v3 = *(v107 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v102 = v83 - v5;
  v6 = type metadata accessor for _InternalSection();
  v7 = v6 - 8;
  v94 = *(v6 - 8);
  v8 = *(v94 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v95 = v10;
  v96 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v104 = v83 - v14;
  v98 = sub_26EF3873C();
  v101 = *(v98 - 8);
  v15 = *(v101 + 64);
  v17 = MEMORY[0x28223BE20](v98, v16);
  v100 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v99 = v83 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v106 = v83 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v97 = v83 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v105 = v83 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v109 = v83 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8, v35);
  v37 = v83 - v36;
  v38 = sub_26EF38AAC();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v42 = MEMORY[0x28223BE20](v38, v41);
  v43 = v83 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v44);
  v46 = v83 - v45;
  v47 = *(v7 + 32);
  v48 = v1;
  sub_26EE13B88(v1 + v47, v37, &qword_2806C7080, &unk_26EF3DBF0);
  v49 = v39;
  v50 = v38;
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    sub_26EE14578(v37, &qword_2806C7080, &unk_26EF3DBF0);
    v51 = 1;
  }

  else
  {
    v52 = *(v39 + 32);
    v87 = v46;
    v52(v46, v37, v38);
    v90 = v39 + 32;
    v89 = v52;
    countAndFlagsBits = "VB_CANCEL_TRAINING";
    v93 = sub_26EF3961C();
    v53 = *(v93 - 8);
    v92 = *(v53 + 56);
    v85 = v53 + 56;
    v92(v104, 1, 1, v93);
    v88 = v48;
    v54 = v96;
    sub_26EE2E44C(v48, v96);
    v86 = v49;
    v91 = *(v49 + 16);
    v103 = v38;
    v91(v43, v46, v38);
    v55 = *(v94 + 80);
    v56 = *(v49 + 80);
    v57 = (v55 + 16) & ~v55;
    v58 = (v95 + v56 + v57) & ~v56;
    v94 = v57;
    v95 = v55 | v56;
    v59 = swift_allocObject();
    sub_26EE2E6C4(v54, v59 + v57);
    v52((v59 + v58), v43, v50);
    v60 = v104;
    sub_26EF3874C();
    v61 = sub_26EE17094();
    v62._countAndFlagsBits = 0xD00000000000001FLL;
    v62._object = 0x800000026EF45460;
    v63 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v62, v61 & 1, 0);
    countAndFlagsBits = v63._countAndFlagsBits;
    v83[1] = v63._object;
    v92(v60, 1, 1, v93);
    sub_26EE2E44C(v88, v54);
    v64 = v87;
    v65 = v103;
    v91(v43, v87, v103);
    v66 = swift_allocObject();
    sub_26EE2E6C4(v54, v66 + v94);
    v89(v66 + v58, v43, v65);
    sub_26EF3874C();
    v67 = sub_26EE17094();
    v68._countAndFlagsBits = 0xD00000000000001ALL;
    v68._object = 0x800000026EF45480;
    countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v68, v67 & 1, 0)._object;
    v92(v60, 1, 1, v93);
    sub_26EE2E44C(v88, v54);
    v69 = v103;
    v91(v43, v64, v103);
    v70 = swift_allocObject();
    sub_26EE2E6C4(v54, v70 + v94);
    v89(v70 + v58, v43, v69);
    v71 = v97;
    sub_26EF3874C();
    v72 = v101;
    v73 = *(v101 + 16);
    v74 = v106;
    v75 = v98;
    v73(v106, v109, v98);
    v76 = v99;
    v77 = v105;
    v73(v99, v105, v75);
    v78 = v100;
    v73(v100, v71, v75);
    v79 = v102;
    v73(v102, v74, v75);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7150, &qword_26EF3DD08);
    v73((v79 + *(v80 + 48)), v76, v75);
    v73((v79 + *(v80 + 64)), v78, v75);
    v81 = *(v72 + 8);
    v81(v71, v75);
    v81(v77, v75);
    v81(v109, v75);
    (*(v86 + 8))(v87, v103);
    v81(v78, v75);
    v81(v76, v75);
    v81(v106, v75);
    sub_26EE14D98(v79, v110, &qword_2806C7118, &qword_26EF3DCB0);
    v51 = 0;
  }

  return (*(v107 + 56))(v110, v51, 1, v108);
}

uint64_t sub_26EE2B33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_26EF39DDC();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EF37EDC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47, v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7148, &qword_26EF3DD00);
  v16 = *(v48 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v48, v18);
  v46 = &v43 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v43 - v23;
  v25 = sub_26EF38AAC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for _InternalSection();
  sub_26EE13B88(a1 + *(v31 + 24), v24, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_26EE14578(v24, &qword_2806C7080, &unk_26EF3DBF0);
    v32 = 1;
    v34 = v48;
    v33 = v49;
  }

  else
  {
    v35 = (*(v26 + 32))(v30, v24, v25);
    MEMORY[0x274380B50](v35);
    sub_26EE03958(v11, v15);
    v36 = *a1;
    if (*(a1 + 8) == 1)
    {
      v37 = v36;
    }

    else
    {
      v38 = *a1;

      sub_26EF3B46C();
      v39 = sub_26EF3A36C();
      sub_26EF3880C();

      v40 = v43;
      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v36, 0);
      (*(v44 + 8))(v40, v45);
      v37 = v50;
    }

    type metadata accessor for VoiceBankingSession();
    sub_26EE2EE40(&qword_2806C7128, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
    sub_26EE2EE40(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
    v41 = v46;
    sub_26EF3A67C();

    sub_26EE2EE88(v15);
    (*(v26 + 8))(v30, v25);
    v34 = v48;
    v33 = v49;
    (*(v16 + 32))(v49, v41, v48);
    v32 = 0;
  }

  return (*(v16 + 56))(v33, v32, 1, v34);
}

uint64_t sub_26EE2B82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_26EF38A2C();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = sub_26EF3883C();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v12 = sub_26EF37EDC();
  v5[12] = v12;
  v13 = *(v12 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();
  v15 = sub_26EF39DDC();
  v5[15] = v15;
  v16 = *(v15 - 8);
  v5[16] = v16;
  v17 = *(v16 + 64) + 15;
  v5[17] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[18] = sub_26EF3B2CC();
  v19 = sub_26EF3B29C();
  v5[19] = v19;
  v5[20] = v18;

  return MEMORY[0x2822009F8](sub_26EE2BA40, v19, v18);
}

uint64_t sub_26EE2BA40()
{
  v1 = v0[3];
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[15];

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = v0[2];
  }

  v0[21] = v3;
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  v11 = v0[4];
  MEMORY[0x274380E30]();
  v12 = sub_26EF37E8C();
  v14 = v13;
  v0[22] = v13;
  (*(v9 + 8))(v8, v10);
  v15 = swift_task_alloc();
  v0[23] = v15;
  *v15 = v0;
  v15[1] = sub_26EE2BBE0;

  return VoiceBankingSession.cancelTrainingTask(taskID:)(v12, v14);
}

uint64_t sub_26EE2BBE0()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  v2[24] = v0;

  v5 = v2[22];
  v6 = v2[21];
  if (v0)
  {
    v7 = v2[22];

    v8 = v2[19];
    v9 = v2[20];
    v10 = sub_26EE2C114;
  }

  else
  {

    v8 = v2[19];
    v9 = v2[20];
    v10 = sub_26EE2BD44;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_26EE2BD44()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_26EE27DAC();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_26EF3881C();
  v6 = sub_26EF3B43C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26EE01000, v5, v6, "VoiceManagementView: training task cancelled. Will refresh voices and models", v7, 2u);
    MEMORY[0x2743842A0](v7, -1, -1);
  }

  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[3];

  (*(v10 + 8))(v8, v9);
  v12 = *(v11 + 16);
  v0[25] = v12;
  if (v12)
  {

    v13 = swift_task_alloc();
    v0[26] = v13;
    *v13 = v0;
    v13[1] = sub_26EE2BF34;

    return sub_26EEA69C4();
  }

  else
  {
    v15 = *(v0[3] + 24);
    type metadata accessor for VoiceRefreshViewModel(0);
    sub_26EE2EE40(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EE2BF34()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v7 = *v0;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_26EE2C078, v5, v4);
}

uint64_t sub_26EE2C078()
{
  v1 = v0[18];

  v2 = v0[17];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26EE2C114()
{
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[10];

  sub_26EF3934C();
  v4 = v1;
  v5 = sub_26EF3881C();
  v6 = sub_26EF3B45C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  if (v7)
  {
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    (*(v10 + 104))(v9, *MEMORY[0x277D704D8], v11);
    sub_26EF38A4C();
    sub_26EE2EE40(&unk_2806C9CD0, MEMORY[0x277D70518]);
    swift_allocError();
    sub_26EF389BC();
    (*(v10 + 8))(v9, v11);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_26EE01000, v5, v6, "%@", v12, 0xCu);
    sub_26EE14578(v13, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v13, -1, -1);
    MEMORY[0x2743842A0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[9] + 8))(v0[10], v0[8]);
  v15 = v0[17];
  v16 = v0[14];
  v18 = v0[10];
  v17 = v0[11];
  v19 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_26EE2C388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_26EE13B88(a3, v28 - v12, &unk_2806C9C80, &qword_26EF3E400);
  v14 = sub_26EF3B30C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_26EE14578(v13, &unk_2806C9C80, &qword_26EF3E400);
  }

  else
  {
    sub_26EF3B2FC();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_26EF3B29C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_26EF3B12C() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_26EE14578(a3, &unk_2806C9C80, &qword_26EF3E400);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26EE14578(a3, &unk_2806C9C80, &qword_26EF3E400);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_26EE2C688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v7 = sub_26EF39DDC();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[9] = sub_26EF3B2CC();
  v11 = sub_26EF3B29C();
  v5[10] = v11;
  v5[11] = v10;

  return MEMORY[0x2822009F8](sub_26EE2C7B4, v11, v10);
}

uint64_t sub_26EE2C7B4()
{
  v1 = v0[3];
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = v0[2];
  }

  v0[12] = v3;
  v8 = v0[4];
  v9 = v0[5];
  MEMORY[0x274380B50]();
  v10 = sub_26EF37EDC();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_26EE2C964;
  v12 = v0[5];

  return VoiceBankingSession.trainWithMode(mode:voiceID:skipValidation:)(0, v12, 1);
}

uint64_t sub_26EE2C964()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 40);
  v8 = *v0;

  sub_26EE14578(v4, &qword_2806C9CB0, &qword_26EF3DD20);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26EE2CAD0, v6, v5);
}

uint64_t sub_26EE2CAD0()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v0[14] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_26EE2CBF0;

    return sub_26EEA69C4();
  }

  else
  {
    v5 = *(v1 + 24);
    type metadata accessor for VoiceRefreshViewModel(0);
    sub_26EE2EE40(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EE2CBF0()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26EE2F874, v5, v4);
}

uint64_t sub_26EE2CD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v7 = sub_26EF39DDC();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[9] = sub_26EF3B2CC();
  v11 = sub_26EF3B29C();
  v5[10] = v11;
  v5[11] = v10;

  return MEMORY[0x2822009F8](sub_26EE2CE60, v11, v10);
}

uint64_t sub_26EE2CE60()
{
  v1 = v0[3];
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = v0[2];
  }

  v0[12] = v3;
  v8 = v0[4];
  v9 = v0[5];
  MEMORY[0x274380B50]();
  v10 = sub_26EF37EDC();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_26EE2D010;
  v12 = v0[5];

  return VoiceBankingSession.trainWithMode(mode:voiceID:skipValidation:)(1, v12, 1);
}

uint64_t sub_26EE2D010()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 40);
  v8 = *v0;

  sub_26EE14578(v4, &qword_2806C9CB0, &qword_26EF3DD20);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26EE2D17C, v6, v5);
}

uint64_t sub_26EE2D17C()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v0[14] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_26EE2D29C;

    return sub_26EEA69C4();
  }

  else
  {
    v5 = *(v1 + 24);
    type metadata accessor for VoiceRefreshViewModel(0);
    sub_26EE2EE40(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EE2D29C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26EE2D3E0, v5, v4);
}

uint64_t sub_26EE2D3E0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26EE2D454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for _InternalSection();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8, v16);
  v17 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v30 - v21;
  v23 = sub_26EF3B30C();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  sub_26EE2E44C(a1, v17);
  (*(v8 + 16))(v12, a2, v7);
  sub_26EF3B2DC();
  v24 = sub_26EF3B2CC();
  v25 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v26 = (v15 + *(v8 + 80) + v25) & ~*(v8 + 80);
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v24;
  *(v27 + 24) = v28;
  sub_26EE2E6C4(v17, v27 + v25);
  (*(v8 + 32))(v27 + v26, v12, v7);
  sub_26EE2C388(0, 0, v22, v31, v27);
}

uint64_t sub_26EE2D6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v7 = sub_26EF39DDC();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[9] = sub_26EF3B2CC();
  v11 = sub_26EF3B29C();
  v5[10] = v11;
  v5[11] = v10;

  return MEMORY[0x2822009F8](sub_26EE2D80C, v11, v10);
}

uint64_t sub_26EE2D80C()
{
  v1 = v0[3];
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = v0[2];
  }

  v0[12] = v3;
  v8 = v0[4];
  v9 = v0[5];
  MEMORY[0x274380B50]();
  v10 = sub_26EF37EDC();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_26EE2C964;
  v12 = v0[5];

  return VoiceBankingSession.trainWithMode(mode:voiceID:skipValidation:)(2, v12, 1);
}

uint64_t sub_26EE2D9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for VoiceBankingSession();
  sub_26EE2EE40(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *a3 = sub_26EF3973C();
  *(a3 + 8) = v6 & 1;
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE2EE40(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  *(a3 + 16) = sub_26EF39C1C();
  *(a3 + 24) = v7;
  v8 = type metadata accessor for _InternalSection();
  sub_26EE14D98(a1, a3 + *(v8 + 24), &qword_2806C7080, &unk_26EF3DBF0);
  return sub_26EE14D98(a2, a3 + *(v8 + 28), &qword_2806C7088, &unk_26EF3E330);
}

uint64_t sub_26EE2DB00()
{
  sub_26EF39EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7090, qword_26EF3DC00);
  sub_26EE2E2C4(&qword_2806C7098, &qword_2806C7090, qword_26EF3DC00);
  return sub_26EF3AD2C();
}

uint64_t sub_26EE2DBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_26EE2DD48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26EE2DE84()
{
  sub_26EE2E05C(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26EE2DFC8();
    if (v1 <= 0x3F)
    {
      sub_26EE2E05C(319, &qword_2806C70A8, MEMORY[0x277D70530], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26EE2E05C(319, &qword_2806C70B0, MEMORY[0x277D705D8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26EE2DFC8()
{
  if (!qword_2806C70A0)
  {
    type metadata accessor for VoiceRefreshViewModel(255);
    sub_26EE2EE40(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
    v0 = sub_26EF39C2C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C70A0);
    }
  }
}

void sub_26EE2E05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26EE2E0C4()
{
  result = qword_2806C70B8;
  if (!qword_2806C70B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C70C0, &qword_26EF3DC78);
    sub_26EE2E2C4(&qword_2806C7098, &qword_2806C7090, qword_26EF3DC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C70B8);
  }

  return result;
}

unint64_t sub_26EE2E174()
{
  result = qword_2806C70F8;
  if (!qword_2806C70F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C70E8, &qword_26EF3DCA0);
    sub_26EE2EE40(&qword_2806C7100, MEMORY[0x277CE7690]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C70F8);
  }

  return result;
}

unint64_t sub_26EE2E228()
{
  result = qword_2806C7108;
  if (!qword_2806C7108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C70D8, &qword_26EF3DC90);
    sub_26EE2E2C4(&qword_2806C7110, &qword_2806C7118, &qword_26EF3DCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7108);
  }

  return result;
}

uint64_t sub_26EE2E2C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE2E318()
{
  result = qword_2806C7120;
  if (!qword_2806C7120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C70C8, &qword_26EF3DC80);
    type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(255);
    type metadata accessor for VoiceBankingSession();
    sub_26EE2EE40(&qword_2806C7128, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
    sub_26EE2EE40(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7120);
  }

  return result;
}

uint64_t sub_26EE2E44C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _InternalSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE2E4B0()
{
  v1 = type metadata accessor for _InternalSection();
  v2 = *(*(v1 - 8) + 80);
  v18 = *(*(v1 - 8) + 64);
  v3 = sub_26EF38DBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v17 = *(v4 + 64);
  v6 = v0 + ((v2 + 16) & ~v2);
  sub_26EE05C9C(*v6, *(v6 + 8));
  v7 = *(v6 + 16);

  v8 = *(v1 + 24);
  v9 = sub_26EF38AAC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = *(v1 + 28);
  v12 = (*(v4 + 48))(v6 + v11, 1, v3);
  v13 = *(v4 + 8);
  if (!v12)
  {
    v13(v6 + v11, v3);
  }

  v14 = v2 | v5;
  v15 = (((v2 + 16) & ~v2) + v18 + v5) & ~v5;
  v13(v0 + v15, v3);

  return MEMORY[0x2821FE8E8](v0, v15 + v17, v14 | 7);
}

uint64_t sub_26EE2E6C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _InternalSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE2E760()
{
  v1 = type metadata accessor for _InternalSection();
  v2 = *(*(v1 - 8) + 80);
  v19 = *(*(v1 - 8) + 64);
  v3 = sub_26EF38DBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v18 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = v0 + ((v2 + 32) & ~v2);
  sub_26EE05C9C(*v7, *(v7 + 8));
  v8 = *(v7 + 16);

  v9 = *(v1 + 24);
  v10 = sub_26EF38AAC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = *(v1 + 28);
  v13 = (*(v4 + 48))(v7 + v12, 1, v3);
  v14 = *(v4 + 8);
  if (!v13)
  {
    v14(v7 + v12, v3);
  }

  v15 = v2 | v5;
  v16 = (((v2 + 32) & ~v2) + v19 + v5) & ~v5;
  v14(v0 + v16, v3);

  return MEMORY[0x2821FE8E8](v0, v16 + v18, v15 | 7);
}

uint64_t sub_26EE2E97C()
{
  v2 = *(type metadata accessor for _InternalSection() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38DBC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE15538;

  return sub_26EE2B82C(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_26EE2EAA8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26EE2EBA0;

  return v7(a1);
}

uint64_t sub_26EE2EBA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26EE2EC98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26EE2ECD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26EE15538;

  return sub_26EE2EAA8(a1, v5);
}

uint64_t sub_26EE2ED88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26EE05D7C;

  return sub_26EE2EAA8(a1, v5);
}

uint64_t sub_26EE2EE40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EE2EE88(uint64_t a1)
{
  v2 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE2EF20(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for _InternalSection() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(a1(0) - 8);
  return sub_26EE2D454(v4 + v10, v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), a2, a3, a4);
}

uint64_t objectdestroy_22Tm()
{
  v1 = type metadata accessor for _InternalSection();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*(v1 - 8) + 64);
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v16 = *(v5 + 64);
  v7 = v0 + v3;
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));
  v8 = *(v0 + v3 + 16);

  v9 = *(v1 + 24);
  if (!(*(v5 + 48))(v0 + v3 + v9, 1, v4))
  {
    (*(v5 + 8))(v7 + v9, v4);
  }

  v10 = *(v1 + 28);
  v11 = sub_26EF38DBC();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v13 = v2 | v6;
  v14 = (v3 + v17 + v6) & ~v6;
  (*(v5 + 8))(v0 + v14, v4);

  return MEMORY[0x2821FE8E8](v0, v14 + v16, v13 | 7);
}

uint64_t sub_26EE2F2B4()
{
  v2 = *(type metadata accessor for _InternalSection() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE15538;

  return sub_26EE2D6E0(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_26EE2F3E0()
{
  v2 = *(type metadata accessor for _InternalSection() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE05D7C;

  return sub_26EE2CD34(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t objectdestroy_31Tm()
{
  v1 = type metadata accessor for _InternalSection();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v18 = *(*(v1 - 8) + 64);
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = v0 + v3;
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));
  v9 = *(v0 + v3 + 16);

  v10 = *(v1 + 24);
  if (!(*(v5 + 48))(v0 + v3 + v10, 1, v4))
  {
    (*(v5 + 8))(v8 + v10, v4);
  }

  v11 = *(v1 + 28);
  v12 = sub_26EF38DBC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v8 + v11, 1, v12))
  {
    (*(v13 + 8))(v8 + v11, v12);
  }

  v14 = v2 | v6;
  v15 = (v3 + v18 + v6) & ~v6;
  (*(v5 + 8))(v0 + v15, v4);

  return MEMORY[0x2821FE8E8](v0, v15 + v17, v14 | 7);
}

uint64_t sub_26EE2F744()
{
  v2 = *(type metadata accessor for _InternalSection() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE15538;

  return sub_26EE2C688(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t TTSAudioEffectControl.body.getter@<X0>(uint64_t a1@<X8>)
{
  v182 = a1;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7160, &qword_26EF3DD58);
  v144 = *(v153 - 8);
  v2 = *(v144 + 64);
  MEMORY[0x28223BE20](v153, v3);
  v143 = &v142 - v4;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7168, &qword_26EF3DD60);
  v5 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149, v6);
  v150 = &v142 - v7;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7170, &qword_26EF3DD68);
  v8 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177, v9);
  v151 = &v142 - v10;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7178, &qword_26EF3DD70);
  v146 = *(v152 - 8);
  v11 = *(v146 + 64);
  MEMORY[0x28223BE20](v152, v12);
  v145 = &v142 - v13;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7180, &qword_26EF3DD78);
  v148 = *(v164 - 8);
  v14 = *(v148 + 64);
  MEMORY[0x28223BE20](v164, v15);
  v147 = &v142 - v16;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7188, &qword_26EF3DD80);
  v17 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161, v18);
  v162 = &v142 - v19;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7190, &qword_26EF3DD88);
  v159 = *(v163 - 8);
  v20 = *(v159 + 64);
  MEMORY[0x28223BE20](v163, v21);
  v158 = &v142 - v22;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7198, &qword_26EF3DD90);
  v23 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172, v24);
  v166 = &v142 - v25;
  v160 = type metadata accessor for TTSAudioEffectControl(0);
  v178 = *(v160 - 8);
  v26 = v178[8];
  MEMORY[0x28223BE20](v160, v27);
  v28 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71A0, &qword_26EF3DD98);
  v165 = *(v171 - 8);
  v29 = *(v165 + 64);
  MEMORY[0x28223BE20](v171, v30);
  v183 = (&v142 - v31);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71A8, &qword_26EF3DDA0);
  v32 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180, v33);
  v181 = &v142 - v34;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71B0, &qword_26EF3DDA8);
  v35 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173, v36);
  v175 = &v142 - v37;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71B8, &qword_26EF3DDB0);
  v38 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167, v39);
  v169.n128_u64[0] = &v142 - v40;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71C0, &qword_26EF3DDB8);
  v41 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174, v42);
  v170 = &v142 - v43;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71C8, &qword_26EF3DDC0);
  v44 = *(*(v179 - 8) + 64);
  MEMORY[0x28223BE20](v179, v45);
  v176 = &v142 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71D0, &qword_26EF3DDC8);
  v154 = *(v47 - 8);
  v48 = *(v154 + 64);
  MEMORY[0x28223BE20](v47, v49);
  v51 = &v142 - v50;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71D8, &qword_26EF3DDD0);
  v52 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155, v53);
  v168.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71E0, &qword_26EF3DDD8);
  v157 = *(v168.n128_u64[0] - 8);
  v54 = *(v157 + 64);
  MEMORY[0x28223BE20](v168.n128_u64[0], v55);
  v156 = &v142 - v56;
  v57 = sub_26EF3812C();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57, v60);
  v62 = &v142 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v58 + 16))(v62, v1, v57);
  v63 = (*(v58 + 88))(v62, v57);
  if (v63 != *MEMORY[0x277D70120])
  {
    v183 = v26;
    v75 = v178;
    if (v63 == *MEMORY[0x277D70118])
    {
      v76 = (*(v58 + 96))(v62, v57);
      v178 = &v142;
      v183 = *v62;
      v77 = v183[2];
      v78 = v183[3];
      v79 = v183[4];
      v81 = MEMORY[0x28223BE20](v76, v80);
      MEMORY[0x28223BE20](v81, v82);
      v140 = v83;
      v141 = v1;
      sub_26EE31590();
      sub_26EF3A4EC();
      v184 = v77;
      v185 = v78;
      v84 = sub_26EE154C8(&qword_2806C7268, &qword_2806C71D0, &qword_26EF3DDC8);
      v85 = sub_26EE12538();
      v86 = MEMORY[0x277D837D0];
      sub_26EF3A75C();
      (*(v154 + 8))(v51, v47);
      v184 = v47;
      v185 = v86;
      v186 = v84;
      v187 = v85;
      swift_getOpaqueTypeConformance2();
      v87 = v156;
      sub_26EF3998C();
      v88 = v157;
      v89 = v168.n128_u64[0];
      (*(v157 + 16))(v169.n128_u64[0], v87, v168.n128_u64[0]);
      swift_storeEnumTagMultiPayload();
      sub_26EE154C8(&qword_2806C71F8, &qword_2806C71E0, &qword_26EF3DDD8);
      sub_26EE314C4();
      v90 = v170;
      sub_26EF3A06C();
      sub_26EE13B88(v90, v175, &qword_2806C71C0, &qword_26EF3DDB8);
      swift_storeEnumTagMultiPayload();
      sub_26EE3140C();
      sub_26EE316C8();
      v91 = v176;
      sub_26EF3A06C();
      sub_26EE14578(v90, &qword_2806C71C0, &qword_26EF3DDB8);
      sub_26EE13B88(v91, v181, &qword_2806C71C8, &qword_26EF3DDC0);
      swift_storeEnumTagMultiPayload();
      sub_26EE31380();
      sub_26EF3A06C();
      sub_26EE14578(v91, &qword_2806C71C8, &qword_26EF3DDC0);
      (*(v88 + 8))(v87, v89);
    }

    if (v63 == *MEMORY[0x277D70130])
    {
      (*(v58 + 96))(v62, v57);
      v93 = *v62;
      v95 = *(*v62 + 16);
      v94 = v93[3];
      v171 = v93[4];
      v172 = v93;
      v170 = v93[5];
      v142 = v1;
      sub_26EE35C44(v1, v28, type metadata accessor for TTSAudioEffectControl);
      sub_26EF3B2DC();
      swift_bridgeObjectRetain_n();
      v96 = sub_26EF3B2CC();
      v97 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v98 = (v183 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
      v99 = swift_allocObject();
      v100 = MEMORY[0x277D85700];
      *(v99 + 16) = v96;
      *(v99 + 24) = v100;
      sub_26EE36D50(v28, v99 + v97, type metadata accessor for TTSAudioEffectControl);
      v101 = (v99 + v98);
      *v101 = v95;
      v101[1] = v94;
      sub_26EE35C44(v142, v28, type metadata accessor for TTSAudioEffectControl);
      v102 = sub_26EF3B2CC();
      v103 = swift_allocObject();
      *(v103 + 16) = v102;
      *(v103 + 24) = MEMORY[0x277D85700];
      sub_26EE36D50(v28, v103 + v97, type metadata accessor for TTSAudioEffectControl);
      v104 = (v103 + v98);
      *v104 = v95;
      v104[1] = v94;
      v105 = sub_26EF3AC7C();
      v183 = v184;
      MEMORY[0x28223BE20](v105, v106);
      v140 = v171;
      v141 = v170;

      v107 = v145;
      sub_26EF3ABCC();
      v108 = v146;
      v109 = v152;
      (*(v146 + 16))(v150, v107, v152);
      swift_storeEnumTagMultiPayload();
      sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70);
      sub_26EE31780();
      v110 = v151;
      sub_26EF3A06C();
      sub_26EE13B88(v110, v175, &qword_2806C7170, &qword_26EF3DD68);
      swift_storeEnumTagMultiPayload();
      sub_26EE3140C();
      sub_26EE316C8();
      v111 = v176;
      sub_26EF3A06C();
      sub_26EE14578(v110, &qword_2806C7170, &qword_26EF3DD68);
      sub_26EE13B88(v111, v181, &qword_2806C71C8, &qword_26EF3DDC0);
      swift_storeEnumTagMultiPayload();
      sub_26EE31380();
      sub_26EF3A06C();

      sub_26EE14578(v111, &qword_2806C71C8, &qword_26EF3DDC0);
      (*(v108 + 8))(v107, v109);
    }

    else
    {
      if (v63 != *MEMORY[0x277D70128])
      {
        swift_storeEnumTagMultiPayload();
        sub_26EE31380();
        sub_26EF3A06C();
        return (*(v58 + 8))(v62, v57);
      }

      v114 = (*(v58 + 96))(v62, v57);
      v172 = *v62;
      v116 = *(v172 + 16);
      v115 = *(v172 + 24);
      v117 = *(v172 + 40);
      v167 = *(v172 + 32);
      v166 = v117;
      v114.n128_u32[0] = *(v172 + 48);
      v168 = v114;
      v114.n128_u64[0] = *(v172 + 52);
      v169 = v114;
      v118 = *(v172 + 64);
      v170 = *(v172 + 72);
      v171 = v118;
      sub_26EE35C44(v1, v28, type metadata accessor for TTSAudioEffectControl);
      sub_26EF3B2DC();
      v142 = v1;
      swift_bridgeObjectRetain_n();
      v119 = v28;
      v120 = sub_26EF3B2CC();
      v121 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v122 = (v183 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
      v123 = swift_allocObject();
      v124 = MEMORY[0x277D85700];
      *(v123 + 16) = v120;
      *(v123 + 24) = v124;
      sub_26EE36D50(v119, v123 + v121, type metadata accessor for TTSAudioEffectControl);
      v125 = (v123 + v122);
      *v125 = v116;
      v125[1] = v115;
      sub_26EE35C44(v142, v119, type metadata accessor for TTSAudioEffectControl);
      v126 = sub_26EF3B2CC();
      v127 = swift_allocObject();
      *(v127 + 16) = v126;
      *(v127 + 24) = MEMORY[0x277D85700];
      sub_26EE36D50(v119, v127 + v121, type metadata accessor for TTSAudioEffectControl);
      v128 = (v127 + v122);
      *v128 = v116;
      v128[1] = v115;
      sub_26EF3AC7C();
      v129 = v184;
      v183 = v185;
      v184 = v167;
      v185 = v166;
      v131 = MEMORY[0x28223BE20](v166, v130);
      DWORD1(v132) = v168.n128_u32[0];
      *(&v132 + 1) = v169.n128_u64[0];
      *(&v142 - 8) = v129;
      *(&v142 - 7) = v133;
      *(&v142 - 3) = v132;
      *(&v142 - 4) = v134;
      *(&v142 - 3) = v131;
      v140 = v171;
      v141 = v170;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7248, &unk_26EF3DDE0);
      sub_26EE154C8(&qword_2806C7240, &qword_2806C7248, &unk_26EF3DDE0);
      sub_26EE12538();
      v135 = v143;
      sub_26EF3AD3C();
      v136 = v144;
      v137 = v153;
      (*(v144 + 16))(v150, v135, v153);
      swift_storeEnumTagMultiPayload();
      sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70);
      sub_26EE31780();
      v138 = v151;
      sub_26EF3A06C();
      sub_26EE13B88(v138, v175, &qword_2806C7170, &qword_26EF3DD68);
      swift_storeEnumTagMultiPayload();
      sub_26EE3140C();
      sub_26EE316C8();
      v139 = v176;
      sub_26EF3A06C();
      sub_26EE14578(v138, &qword_2806C7170, &qword_26EF3DD68);
      sub_26EE13B88(v139, v181, &qword_2806C71C8, &qword_26EF3DDC0);
      swift_storeEnumTagMultiPayload();
      sub_26EE31380();
      sub_26EF3A06C();

      sub_26EE14578(v139, &qword_2806C71C8, &qword_26EF3DDC0);
      (*(v136 + 8))(v135, v137);
    }
  }

  (*(v58 + 96))(v62, v57);
  v65 = *(*v62 + 16);
  v64 = *(*v62 + 24);
  v184 = *(*v62 + 32);
  swift_getKeyPath();
  sub_26EE35C44(v1, &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTSAudioEffectControl);
  v66 = (*(v178 + 80) + 16) & ~*(v178 + 80);
  v67 = swift_allocObject();
  sub_26EE36D50(&v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v67 + v66, type metadata accessor for TTSAudioEffectControl);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7250, &qword_26EF3DE08);
  sub_26EE154C8(&qword_2806C7258, &qword_2806C7250, &qword_26EF3DE08);
  sub_26EE32850(&qword_2806C7260, MEMORY[0x277D70138]);
  v140 = sub_26EE32850(&qword_2806C7218, type metadata accessor for TTSAudioEffectControl);
  v68 = sub_26EF3ACEC();
  if (v64)
  {
    v184 = v65;
    v185 = v64;
    MEMORY[0x28223BE20](v68, v69);
    v140 = v183;
    sub_26EE31590();
    sub_26EE12538();
    v70 = v158;
    v71 = v171;
    sub_26EF3AD3C();
    v72 = v159;
    v73 = v163;
    (*(v159 + 16))(v162, v70, v163);
  }

  else
  {
    MEMORY[0x28223BE20](v68, v69);
    v140 = v183;
    sub_26EE31590();
    v70 = v147;
    v71 = v171;
    sub_26EF3AD6C();
    v72 = v148;
    v73 = v164;
    (*(v148 + 16))(v162, v70, v164);
  }

  swift_storeEnumTagMultiPayload();
  sub_26EE31644(&qword_2806C7208, &qword_2806C7190, &qword_26EF3DD88);
  sub_26EE31644(&qword_2806C7220, &qword_2806C7180, &qword_26EF3DD78);
  v74 = v166;
  sub_26EF3A06C();
  (*(v72 + 8))(v70, v73);
  sub_26EE13B88(v74, v169.n128_i64[0], &qword_2806C7198, &qword_26EF3DD90);
  swift_storeEnumTagMultiPayload();
  sub_26EE154C8(&qword_2806C71F8, &qword_2806C71E0, &qword_26EF3DDD8);
  sub_26EE314C4();
  v112 = v170;
  sub_26EF3A06C();
  sub_26EE13B88(v112, v175, &qword_2806C71C0, &qword_26EF3DDB8);
  swift_storeEnumTagMultiPayload();
  sub_26EE3140C();
  sub_26EE316C8();
  v113 = v176;
  sub_26EF3A06C();
  sub_26EE14578(v112, &qword_2806C71C0, &qword_26EF3DDB8);
  sub_26EE13B88(v113, v181, &qword_2806C71C8, &qword_26EF3DDC0);
  swift_storeEnumTagMultiPayload();
  sub_26EE31380();
  sub_26EF3A06C();
  sub_26EE14578(v113, &qword_2806C71C8, &qword_26EF3DDC0);
  sub_26EE14578(v74, &qword_2806C7198, &qword_26EF3DD90);
  (*(v165 + 8))(v183, v71);
}

unint64_t sub_26EE31380()
{
  result = qword_2806C71E8;
  if (!qword_2806C71E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C71C8, &qword_26EF3DDC0);
    sub_26EE3140C();
    sub_26EE316C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C71E8);
  }

  return result;
}

unint64_t sub_26EE3140C()
{
  result = qword_2806C71F0;
  if (!qword_2806C71F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C71C0, &qword_26EF3DDB8);
    sub_26EE154C8(&qword_2806C71F8, &qword_2806C71E0, &qword_26EF3DDD8);
    sub_26EE314C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C71F0);
  }

  return result;
}

unint64_t sub_26EE314C4()
{
  result = qword_2806C7200;
  if (!qword_2806C7200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7198, &qword_26EF3DD90);
    sub_26EE31644(&qword_2806C7208, &qword_2806C7190, &qword_26EF3DD88);
    sub_26EE31644(&qword_2806C7220, &qword_2806C7180, &qword_26EF3DD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7200);
  }

  return result;
}

unint64_t sub_26EE31590()
{
  result = qword_2806C7210;
  if (!qword_2806C7210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C71A0, &qword_26EF3DD98);
    sub_26EE32850(&qword_2806C7218, type metadata accessor for TTSAudioEffectControl);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7210);
  }

  return result;
}

uint64_t sub_26EE31644(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_26EE31590();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE316C8()
{
  result = qword_2806C7228;
  if (!qword_2806C7228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7170, &qword_26EF3DD68);
    sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70);
    sub_26EE31780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7228);
  }

  return result;
}

unint64_t sub_26EE31780()
{
  result = qword_2806C7238;
  if (!qword_2806C7238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7160, &qword_26EF3DD58);
    sub_26EE154C8(&qword_2806C7240, &qword_2806C7248, &unk_26EF3DDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7238);
  }

  return result;
}

uint64_t sub_26EE31844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSAudioEffectControl(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v11[1] = a1;
  swift_getKeyPath();
  sub_26EE35C44(a2, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTSAudioEffectControl);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_26EE36D50(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for TTSAudioEffectControl);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7250, &qword_26EF3DE08);
  sub_26EE154C8(&qword_2806C7258, &qword_2806C7250, &qword_26EF3DE08);
  sub_26EE32850(&qword_2806C7260, MEMORY[0x277D70138]);
  sub_26EE32850(&qword_2806C7218, type metadata accessor for TTSAudioEffectControl);
  return sub_26EF3ACEC();
}

uint64_t sub_26EE31A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a1 & 0x100000000) != 0)
  {
    v11 = *v3;
    v12 = sub_26EE1FCF4(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26EE3A0C0();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_26EE39DB4(v12, v16);
      *v4 = v16;
    }
  }

  else
  {
    v7 = *&a1;
    v8 = *v3;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_26EE39F64(a2, a3, v9, v7);

    *v3 = v18;
  }

  return result;
}

unint64_t sub_26EE31B68@<X0>(_DWORD *a1@<X8>)
{
  v3 = type metadata accessor for TTSAudioEffectControl(0);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = v1 + v4;
  v6 = (v1 + ((*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = v5 + *(v3 + 20);
  v18[1] = *v9;
  v19 = *(v9 + 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7158, &qword_26EF3DD50);
  MEMORY[0x274382CF0](v18, v10);
  v11 = v18[0];
  if (*(v18[0] + 16) && (v12 = sub_26EE1FCF4(v7, v8), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 4 * v12);
  }

  else
  {

    v16 = *(v5 + *(v3 + 24));
    v14 = 0;
    if (*(v16 + 16))
    {
      result = sub_26EE1FCF4(v7, v8);
      if (v17)
      {
        v14 = *(*(v16 + 56) + 4 * result);
      }
    }
  }

  *a1 = v14;
  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for TTSAudioEffectControl(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = sub_26EF3812C();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = (v6 + v1[7]);
  v9 = *v8;

  v10 = v8[1];

  v11 = v8[2];

  v12 = *(v6 + v1[8]);

  v13 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_26EE31DE4(float *a1)
{
  v3 = type metadata accessor for TTSAudioEffectControl(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = *a1;
  v10 = (v1 + *(v3 + 20) + v5);
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7158, &qword_26EF3DD50);
  MEMORY[0x274382CF0](&v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26EE39F64(v7, v8, isUniquelyReferenced_nonNull_native, v9);
  sub_26EF3AC3C();
}

uint64_t sub_26EE31F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, float a6@<S0>, unsigned int a7@<S1>, unsigned int a8@<S2>, float a9@<S3>)
{
  v63 = a4;
  v62 = a3;
  v16 = sub_26EF39E9C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74E0, &qword_26EF3E2B0);
  v20 = *(v19 - 8);
  v21 = v20[8];
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v56 - v27;
  result = sub_26EF39E4C();
  *a5 = result;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  if (*&a7 > *&a8)
  {
    __break(1u);
  }

  else
  {
    v65 = v25;
    v60 = v19;
    MEMORY[0x28223BE20](result, v30);
    v71 = a1;
    v72 = a2;
    *&v73 = a6;
    *&v66 = __PAIR64__(a8, a7);
    *(v31 + 80) = a9;
    sub_26EE3B878();

    v32 = MEMORY[0x277D83A90];
    v64 = v28;
    sub_26EF3ABBC();
    v33 = v63;
    if (v63)
    {
      sub_26EF39E8C();
      sub_26EF39E7C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_26EF3C6B0;
      v71 = a1;
      v72 = a2;
      *&v73 = a6;
      v35 = MEMORY[0x277D83B08];
      *(v34 + 56) = v32;
      *(v34 + 64) = v35;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7508, &qword_26EF3E2D8);
      MEMORY[0x274382CF0](v36);
      sub_26EF3B10C();
      sub_26EF39E6C();

      sub_26EF39E7C();
      sub_26EF39E6C();
      sub_26EF39E7C();
      sub_26EF39EBC();
      v61 = sub_26EF3A5CC();
      v59 = v37;
      v39 = v38;
      v58 = v40;
      sub_26EF3AE4C();
      sub_26EF3984C();
      LOBYTE(v71) = v39 & 1;
      v41 = v81;
      v57 = v82;
      v42 = v83;
      v33 = v84;
      v63 = v85;
      v62 = v86;
      v43 = v39 & 1;
    }

    else
    {
      v61 = 0;
      v59 = 0;
      v58 = 0;
      v41 = 0;
      v57 = 0;
      v42 = 0;
      v63 = 0;
      v62 = 0;
      v43 = 0;
    }

    v56 = v43;
    v44 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74F0, &qword_26EF3E2B8) + 44));
    v45 = v20[2];
    v46 = v65;
    v47 = v60;
    v45(v65, v64, v60);
    v45(v44, v46, v47);
    v48 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74F8, &qword_26EF3E2C0) + 48)];
    v49 = v61;
    *&v66 = v61;
    v50 = v59;
    *(&v66 + 1) = v59;
    *&v67 = v43;
    v51 = v58;
    *(&v67 + 1) = v58;
    *&v68 = v41;
    v52 = v57;
    *(&v68 + 1) = v57;
    *&v69 = v42;
    *(&v69 + 1) = v33;
    *&v70 = v63;
    *(&v70 + 1) = v62;
    v53 = v67;
    *v48 = v66;
    *(v48 + 1) = v53;
    v54 = v69;
    *(v48 + 2) = v68;
    *(v48 + 3) = v54;
    *(v48 + 4) = v70;
    sub_26EE13B88(&v66, &v71, &qword_2806C7500, &unk_26EF3E2C8);
    v55 = v20[1];
    v55(v64, v47);
    v71 = v49;
    v72 = v50;
    v73 = v56;
    v74 = v51;
    v75 = v41;
    v76 = v52;
    v77 = v42;
    v78 = v33;
    v79 = v63;
    v80 = v62;
    sub_26EE14578(&v71, &qword_2806C7500, &unk_26EF3E2C8);
    return (v55)(v65, v47);
  }

  return result;
}

uint64_t sub_26EE3256C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  return sub_26EE31F50(*(v1 + 16), *(v1 + 24), *(v1 + 64), *(v1 + 72), a1, *(v1 + 32), *(v1 + 36), *(v1 + 40), *(v1 + 44));
}

unint64_t sub_26EE32584@<X0>(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for TTSAudioEffectControl(0);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = v1 + v4;
  v6 = (v1 + ((*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = v5 + *(v3 + 20);
  v18[1] = *v9;
  v19 = *(v9 + 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7158, &qword_26EF3DD50);
  MEMORY[0x274382CF0](v18, v10);
  v11 = v18[0];
  if (*(v18[0] + 16) && (v12 = sub_26EE1FCF4(v7, v8), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 4 * v12);
  }

  else
  {

    v16 = *(v5 + *(v3 + 24));
    v14 = 0.0;
    if (*(v16 + 16))
    {
      result = sub_26EE1FCF4(v7, v8);
      if (v17)
      {
        v14 = *(*(v16 + 56) + 4 * result);
      }
    }
  }

  *a1 = v14 != 0.0;
  return result;
}

uint64_t sub_26EE326E0(unsigned __int8 *a1)
{
  v3 = type metadata accessor for TTSAudioEffectControl(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = *a1;
  v10 = (v1 + *(v3 + 20) + v5);
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7158, &qword_26EF3DD50);
  MEMORY[0x274382CF0](&v16);
  v14 = 1065353216;
  if (!v9)
  {
    v14 = 0;
  }

  sub_26EE31A78(v14, v7, v8);
  sub_26EF3AC3C();
}

uint64_t sub_26EE32850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EE3289C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71A0, &qword_26EF3DD98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t TTSAudioEffectConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7278, &qword_26EF3DE18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v29 - v5;
  v7 = sub_26EF3864C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26EF3814C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7280, &qword_26EF3DE20);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v29 - v22;
  sub_26EE32C3C(v1, v29 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  MEMORY[0x274382CF0](v24);
  sub_26EF385EC();
  (*(v8 + 8))(v12, v7);
  result = (*(v14 + 48))(v6, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v18, v6, v13);
    v26 = sub_26EF3811C();
    v28 = v27;
    (*(v14 + 8))(v18, v13);
    v29[2] = v26;
    v29[3] = v28;
    sub_26EE33CAC();
    sub_26EE12538();
    sub_26EF3A75C();

    return sub_26EE14578(v23, &qword_2806C7280, &qword_26EF3DE20);
  }

  return result;
}

uint64_t sub_26EE32C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v159 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74B0, &qword_26EF3E218);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v160 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v158 = &v140 - v9;
  v10 = type metadata accessor for TTSAudioEffectConfigurationView(0);
  v152 = *(v10 - 8);
  v11 = *(v152 + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v153 = v13;
  v154 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71A0, &qword_26EF3DD98);
  v156 = *(v157 - 8);
  v14 = *(v156 + 64);
  v16 = MEMORY[0x28223BE20](v157, v15);
  v155 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v176 = &v140 - v19;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74B8, &qword_26EF3E220);
  v148 = *(v167 - 8);
  v20 = *(v148 + 64);
  MEMORY[0x28223BE20](v167, v21);
  v147 = &v140 - v22;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74C0, &qword_26EF3E228);
  v23 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162, v24);
  v165 = &v140 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26, v28);
  v141 = &v140 - v29;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7178, &qword_26EF3DD70);
  v143 = *(v163 - 8);
  v30 = *(v143 + 64);
  MEMORY[0x28223BE20](v163, v31);
  v142 = &v140 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7278, &qword_26EF3DE18);
  v34 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v33 - 8, v35);
  v146 = &v140 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v164 = &v140 - v40;
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v140 - v42;
  v44 = sub_26EF3864C();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v48 = MEMORY[0x28223BE20](v44, v47);
  v145 = &v140 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v48, v50);
  v144 = &v140 - v52;
  v54 = MEMORY[0x28223BE20](v51, v53);
  v151 = &v140 - v55;
  v57 = MEMORY[0x28223BE20](v54, v56);
  v161 = &v140 - v58;
  MEMORY[0x28223BE20](v57, v59);
  v61 = &v140 - v60;
  v62 = sub_26EF3814C();
  v63 = *(v62 - 8);
  v64 = v63[8];
  v66 = MEMORY[0x28223BE20](v62, v65);
  v150 = &v140 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66, v68);
  v70 = &v140 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74C8, &qword_26EF3E230);
  v72 = *(*(v71 - 8) + 64);
  v74 = MEMORY[0x28223BE20](v71 - 8, v73);
  v175 = &v140 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74, v76);
  v177 = v26;
  v178 = &v140 - v77;
  v78 = v26;
  v79 = a1;
  MEMORY[0x274382CF0](v78);
  sub_26EF385EC();
  v80 = *(v45 + 8);
  v168 = v45 + 8;
  v169 = v44;
  v166 = v80;
  v80(v61, v44);
  v173 = v63[6];
  v174 = v63 + 6;
  result = v173(v43, 1, v62);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v149 = v63[4];
    v149(v70, v43, v62);
    v82 = sub_26EF380DC();
    v84 = v83;
    v85 = v63[1];
    v172 = v62;
    v170 = v85;
    v86 = (v85)(v70, v62);
    v171 = v63 + 1;
    if (v84)
    {
      MEMORY[0x28223BE20](v86, v87);
      v179 = v82;
      v180 = v84;
      sub_26EE12538();
      v179 = sub_26EF3A5DC();
      v180 = v88;
      v181 = v89 & 1;
      v182 = v90;
      sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70);
      v91 = v147;
      sub_26EF3AD7C();
      v92 = v148;
      v93 = v167;
      (*(v148 + 16))(v165, v91, v167);
      swift_storeEnumTagMultiPayload();
      sub_26EE3B2E4();
      sub_26EF3A06C();
      (*(v92 + 8))(v91, v93);
      v94 = v177;
    }

    else
    {
      v95 = sub_26EE17094() & 1;
      v96._countAndFlagsBits = 0x44454C42414E45;
      v96._object = 0xE700000000000000;
      v183 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v96, v95, v82);
      v97 = v141;
      v98 = v177;
      sub_26EF3AC5C();
      swift_getKeyPath();
      sub_26EF3AC4C();

      sub_26EE14578(v97, &qword_2806C7270, &qword_26EF3DE10);
      sub_26EE12538();
      v99 = v142;
      sub_26EF3ABEC();
      v100 = v143;
      v101 = v163;
      (*(v143 + 16))(v165, v99, v163);
      swift_storeEnumTagMultiPayload();
      sub_26EE3B2E4();
      sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70);
      sub_26EF3A06C();
      (*(v100 + 8))(v99, v101);
      v94 = v98;
    }

    v102 = v161;
    MEMORY[0x274382CF0](v94);
    v103 = v164;
    sub_26EF385EC();
    v104 = v169;
    v105 = v166;
    v166(v102, v169);
    v106 = v172;
    result = v173(v103, 1, v172);
    if (result != 1)
    {
      v107 = v150;
      v108 = (v149)(v150, v103, v106);
      v109 = MEMORY[0x274380200](v108);
      v170(v107, v106);
      v179 = v109;
      swift_getKeyPath();
      v110 = v79;
      v111 = v154;
      sub_26EE35C44(v110, v154, type metadata accessor for TTSAudioEffectConfigurationView);
      v112 = (*(v152 + 80) + 16) & ~*(v152 + 80);
      v113 = swift_allocObject();
      sub_26EE36D50(v111, v113 + v112, type metadata accessor for TTSAudioEffectConfigurationView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7250, &qword_26EF3DE08);
      type metadata accessor for TTSAudioEffectControl(0);
      sub_26EE154C8(&qword_2806C7258, &qword_2806C7250, &qword_26EF3DE08);
      sub_26EE32850(&qword_2806C7260, MEMORY[0x277D70138]);
      sub_26EE32850(&qword_2806C7218, type metadata accessor for TTSAudioEffectControl);
      sub_26EF3ACEC();
      v114 = v151;
      v115 = v177;
      MEMORY[0x274382CF0](v177);
      v116 = sub_26EF385CC();
      v105(v114, v104);
      v117 = *(v116 + 16);

      if (v117)
      {
        v118 = v144;
        MEMORY[0x274382CF0](v115);
        v119 = sub_26EF385CC();
        v105(v118, v104);
        v120 = v145;
        MEMORY[0x274382CF0](v115);
        v121 = v146;
        sub_26EF385EC();
        v105(v120, v104);
        v122 = v172;
        if (v173(v121, 1, v172) == 1)
        {
          sub_26EE14578(v121, &qword_2806C7278, &qword_26EF3DE18);

LABEL_11:
          MEMORY[0x28223BE20](v123, v124);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
          sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
          v128 = v158;
          sub_26EF3AD6C();
          v127 = 0;
          goto LABEL_12;
        }

        v125 = sub_26EF380EC();
        v170(v121, v122);
        v126 = sub_26EE396D8(v119, v125);

        if ((v126 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v127 = 1;
      v128 = v158;
LABEL_12:
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6748, &qword_26EF3CBB8);
      (*(*(v129 - 8) + 56))(v128, v127, 1, v129);
      v130 = v175;
      sub_26EE13B88(v178, v175, &qword_2806C74C8, &qword_26EF3E230);
      v131 = v156;
      v132 = *(v156 + 16);
      v133 = v155;
      v134 = v176;
      v135 = v157;
      v132(v155, v176, v157);
      v136 = v160;
      sub_26EE13B88(v128, v160, &qword_2806C74B0, &qword_26EF3E218);
      v137 = v159;
      sub_26EE13B88(v130, v159, &qword_2806C74C8, &qword_26EF3E230);
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74D8, &unk_26EF3E270);
      v132((v137 + *(v138 + 48)), v133, v135);
      sub_26EE13B88(v136, v137 + *(v138 + 64), &qword_2806C74B0, &qword_26EF3E218);
      sub_26EE14578(v128, &qword_2806C74B0, &qword_26EF3E218);
      v139 = *(v131 + 8);
      v139(v134, v135);
      sub_26EE14578(v178, &qword_2806C74C8, &qword_26EF3E230);
      sub_26EE14578(v136, &qword_2806C74B0, &qword_26EF3E218);
      v139(v133, v135);
      return sub_26EE14578(v175, &qword_2806C74C8, &qword_26EF3E230);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26EE33CAC()
{
  result = qword_2806C7288;
  if (!qword_2806C7288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7280, &qword_26EF3DE20);
    sub_26EE154C8(&qword_2806C7290, &qword_2806C7298, &qword_26EF3DE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7288);
  }

  return result;
}

uint64_t sub_26EE33D5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - v3;
  v5 = sub_26EE17094() & 1;
  v6._countAndFlagsBits = 0x44454C42414E45;
  v6._object = 0xE700000000000000;
  v9 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v6, v5, 0);
  sub_26EF3AC5C();
  swift_getKeyPath();
  sub_26EF3AC4C();

  sub_26EE14578(v4, &qword_2806C7270, &qword_26EF3DE10);
  sub_26EE12538();
  return sub_26EF3ABEC();
}

uint64_t sub_26EE33EA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26EF3862C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26EE33EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7278, &qword_26EF3DE18);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v42 = &v37 - v6;
  v43 = sub_26EF3864C();
  v41 = *(v43 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v43, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_26EF3814C();
  v11 = *(v40 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v40, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v37 - v19;
  v21 = sub_26EF3812C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v22 + 16);
  v38 = v28;
  v27(v26, a1);
  sub_26EF3AC5C();
  swift_getKeyPath();
  sub_26EF3AC4C();
  v29 = v40;

  sub_26EE14578(v20, &qword_2806C7270, &qword_26EF3DE10);
  v30 = v44;
  v37 = v45;
  v31 = v16;
  v32 = v42;
  MEMORY[0x274382CF0](v31);
  sub_26EF385EC();
  (*(v41 + 8))(v10, v43);
  result = (*(v11 + 48))(v32, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v15, v32, v29);
    v34 = sub_26EF380EC();
    (*(v11 + 8))(v15, v29);
    v35 = v39;
    (*(v22 + 32))(v39, v26, v38);
    result = type metadata accessor for TTSAudioEffectControl(0);
    v36 = v35 + *(result + 20);
    *v36 = v30;
    *(v36 + 8) = v37;
    *(v35 + *(result + 24)) = v34;
  }

  return result;
}

uint64_t sub_26EE342C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF385CC();
  *a1 = result;
  return result;
}

uint64_t sub_26EE342EC(uint64_t *a1)
{
  v1 = *a1;

  return sub_26EF385DC();
}

uint64_t sub_26EE34318(uint64_t a1)
{
  v2 = type metadata accessor for TTSAudioEffectConfigurationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v15 - v9;
  sub_26EF395FC();
  v11 = sub_26EF3961C();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_26EE35C44(a1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTSAudioEffectConfigurationView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_26EE36D50(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for TTSAudioEffectConfigurationView);
  return sub_26EF3AB3C();
}

uint64_t sub_26EE34500()
{
  v0 = sub_26EF3864C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  MEMORY[0x274382CF0]();
  v3 = sub_26EF385BC();
  v5 = v4;
  v6 = *v4;

  *v5 = MEMORY[0x277D84F98];
  v3(v8, 0);
  return sub_26EF3AC3C();
}

uint64_t TTSAudioEffectBuilder.init(configurations:mode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = v5;
  return result;
}

uint64_t TTSAudioEffectBuilder.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for OpenEndedEffectsView(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A8, &qword_26EF3DE38);
  v7 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39, v8);
  v10 = &v36 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72B0, &qword_26EF3DE40);
  v11 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40, v12);
  v15 = &v36 - v14;
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  if (v18)
  {
    v37 = v13;
    sub_26EF3B2DC();

    swift_bridgeObjectRetain_n();
    v20 = sub_26EF3B2CC();
    v21 = swift_allocObject();
    *&v38 = v2;
    v22 = MEMORY[0x277D85700];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = v18;
    v21[5] = v16;
    v21[6] = v17;
    v21[7] = v19;
    v21[8] = v18;

    v23 = sub_26EF3B2CC();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = v22;
    v24[4] = v16;
    v24[5] = v17;
    v24[6] = v19;
    v24[7] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72D8, &qword_26EF3DE88);
    sub_26EF3AC7C();
    v25 = v44;
    v26 = v45;
    v27 = v46;
    KeyPath = swift_getKeyPath();

    sub_26EE357B8(v25, v26, v27, KeyPath, sub_26EE3578C, 0);
    v29 = v37;
    v30 = v40;
    (*(v37 + 16))(v10, v15, v40);
    swift_storeEnumTagMultiPayload();
    sub_26EE35CAC();
    sub_26EE32850(&qword_2806C72D0, type metadata accessor for OpenEndedEffectsView);
    sub_26EF3A06C();

    return (*(v29 + 8))(v15, v30);
  }

  else
  {
    v44 = *v1;
    v45 = v17;
    v46 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
    sub_26EF3AC5C();
    v32 = v42;
    v38 = v43;
    *v6 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
    swift_storeEnumTagMultiPayload();
    v33 = v6 + *(v2 + 20);
    *v33 = v32;
    *(v33 + 8) = v38;
    v34 = v6 + *(v2 + 24);
    LOBYTE(v42) = 0;
    sub_26EF3AAEC();
    v35 = v45;
    *v34 = v44;
    *(v34 + 1) = v35;
    sub_26EE35C44(v6, v10, type metadata accessor for OpenEndedEffectsView);
    swift_storeEnumTagMultiPayload();
    sub_26EE35CAC();
    sub_26EE32850(&qword_2806C72D0, type metadata accessor for OpenEndedEffectsView);
    sub_26EF3A06C();
    return sub_26EE35D5C(v6);
  }
}

uint64_t sub_26EE34B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v79 = a4;
  v80 = a2;
  v8 = sub_26EF37EDC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v69 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_26EF3814C();
  v12 = *(v68 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v68, v14);
  v67 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v66 = &v62 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7498, &qword_26EF3E208);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v62 - v22;
  v24 = sub_26EF3818C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_26EF3864C();
  v31 = *(*(v30 - 8) + 64);
  result = MEMORY[0x28223BE20](v30, v32);
  v86 = &v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a1 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v62 = a5;
    v88 = MEMORY[0x277D84F90];
    v38 = v12;
    v39 = result;
    v81 = v34;
    sub_26EE3A228(0, v36, 0);
    v85 = 0;
    v41 = *(v25 + 16);
    v40 = v25 + 16;
    v75 = v41;
    v37 = v88;
    v42 = a1 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v82 = (v81 + 32);
    v83 = (v81 + 48);
    v63 = (v38 + 8);
    v43 = *(v40 + 56);
    v73 = (v40 - 8);
    v74 = v43;
    v76 = v29;
    v77 = v40;
    v65 = a3;
    v78 = v24;
    v64 = v39;
    do
    {
      v84 = v37;
      v75(v29, v42, v24);
      v87[1] = v80;
      v87[2] = a3;
      v87[3] = v79;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
      v45 = MEMORY[0x274382CF0](v87, v44);
      v46 = v87[0];
      MEMORY[0x28223BE20](v45, v47);
      *(&v62 - 2) = v29;
      v48 = v23;
      v49 = v23;
      v50 = v85;
      sub_26EE3554C(sub_26EE3B2B4, v46, v48);
      v85 = v50;
      v23 = v49;

      v51 = *v83;
      if ((*v83)(v49, 1, v39) == 1)
      {
        v72 = sub_26EF3817C();
        v71 = v52;
        v53 = v66;
        sub_26EF3815C();
        v70 = sub_26EF380EC();
        v54 = *v63;
        v55 = v53;
        v56 = v68;
        (*v63)(v55, v68);
        v57 = v67;
        sub_26EF3815C();
        sub_26EF380FC();
        v58 = v56;
        v23 = v49;
        v54(v57, v58);
        sub_26EF37ECC();
        a3 = v65;
        v39 = v64;
        sub_26EF385FC();
        if (v51(v49, 1, v39) != 1)
        {
          sub_26EE14578(v49, &qword_2806C7498, &qword_26EF3E208);
        }
      }

      else
      {
        (*v82)(v86, v49, v39);
      }

      v29 = v76;
      v24 = v78;
      (*v73)(v76, v78);
      v37 = v84;
      v88 = v84;
      v60 = *(v84 + 16);
      v59 = *(v84 + 24);
      v61 = v81;
      if (v60 >= v59 >> 1)
      {
        sub_26EE3A228(v59 > 1, v60 + 1, 1);
        v61 = v81;
        v37 = v88;
      }

      *(v37 + 16) = v60 + 1;
      result = (*(v61 + 32))(v37 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60, v86, v39);
      v42 += v74;
      --v36;
    }

    while (v36);
    a5 = v62;
  }

  *a5 = v37;
  return result;
}

uint64_t sub_26EE35120()
{
  v0 = sub_26EF3814C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74A0, &qword_26EF3E210);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7278, &qword_26EF3DE18);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v31 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v30 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v30 - v21;
  sub_26EF385EC();
  sub_26EF3815C();
  (*(v1 + 56))(v19, 0, 1, v0);
  v23 = *(v6 + 56);
  sub_26EE13B88(v22, v10, &qword_2806C7278, &qword_26EF3DE18);
  sub_26EE13B88(v19, &v10[v23], &qword_2806C7278, &qword_26EF3DE18);
  v24 = *(v1 + 48);
  if (v24(v10, 1, v0) != 1)
  {
    sub_26EE13B88(v10, v31, &qword_2806C7278, &qword_26EF3DE18);
    if (v24(&v10[v23], 1, v0) != 1)
    {
      v26 = v30;
      (*(v1 + 32))(v30, &v10[v23], v0);
      sub_26EE32850(&qword_2806C74A8, MEMORY[0x277D70148]);
      v27 = v31;
      v25 = sub_26EF3B0AC();
      v28 = *(v1 + 8);
      v28(v26, v0);
      sub_26EE14578(v19, &qword_2806C7278, &qword_26EF3DE18);
      sub_26EE14578(v22, &qword_2806C7278, &qword_26EF3DE18);
      v28(v27, v0);
      sub_26EE14578(v10, &qword_2806C7278, &qword_26EF3DE18);
      return v25 & 1;
    }

    sub_26EE14578(v19, &qword_2806C7278, &qword_26EF3DE18);
    sub_26EE14578(v22, &qword_2806C7278, &qword_26EF3DE18);
    (*(v1 + 8))(v31, v0);
    goto LABEL_6;
  }

  sub_26EE14578(v19, &qword_2806C7278, &qword_26EF3DE18);
  sub_26EE14578(v22, &qword_2806C7278, &qword_26EF3DE18);
  if (v24(&v10[v23], 1, v0) != 1)
  {
LABEL_6:
    sub_26EE14578(v10, &qword_2806C74A0, &qword_26EF3E210);
    v25 = 0;
    return v25 & 1;
  }

  sub_26EE14578(v10, &qword_2806C7278, &qword_26EF3DE18);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_26EE3554C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = sub_26EF3864C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v6);
      v18 = v25(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v7 = v22;
        a3 = v23;
        return (*(v7 + 56))(a3, v19, 1, v6);
      }
    }

    v7 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

uint64_t sub_26EE35720@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF3860C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26EE3574C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_26EF3861C();
}

uint64_t sub_26EE357B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  MEMORY[0x274382CF0](v18, v12);
  v13 = *(v18[0] + 16);

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v18[0] = 0;
  v18[1] = v13;
  v18[2] = sub_26EE3B054;
  v18[3] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72C8, &qword_26EF3DE80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72D8, &qword_26EF3DE88);
  sub_26EE154C8(&qword_2806C72C0, &qword_2806C72C8, &qword_26EF3DE80);
  sub_26EE154C8(&qword_2806C7428, &qword_2806C72D8, &qword_26EF3DE88);
  sub_26EE154C8(&qword_2806C7430, &qword_2806C72D8, &qword_26EF3DE88);
  swift_getKeyPath();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a5;
  v15[6] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26EE3B0DC;
  *(v16 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7488, &unk_26EF3E1F8);
  sub_26EE3B140();
  return sub_26EF3ACEC();
}

uint64_t sub_26EE35A44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26EF39DDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v19 - v13);
  sub_26EE13B88(v2, &v19 - v13, &qword_2806C6B30, &qword_26EF3D210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_26EF396DC();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_26EF3B46C();
    v18 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_26EE35C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26EE35CAC()
{
  result = qword_2806C72B8;
  if (!qword_2806C72B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C72B0, &qword_26EF3DE40);
    sub_26EE154C8(&qword_2806C72C0, &qword_2806C72C8, &qword_26EF3DE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C72B8);
  }

  return result;
}

uint64_t sub_26EE35D5C(uint64_t a1)
{
  v2 = type metadata accessor for OpenEndedEffectsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE35DB8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26EE35E24()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26EE35E7C(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  return sub_26EF3AC3C();
}

uint64_t OpenEndedEffectsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[1] = a1;
  v3 = type metadata accessor for OpenEndedEffectsView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E8, &qword_26EF3DEC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v19 - v11;
  v19[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72F0, &qword_26EF3DEC8);
  sub_26EE154C8(&qword_2806C72F8, &qword_2806C72F0, &qword_26EF3DEC8);
  sub_26EF3A50C();
  v13 = v2 + *(v4 + 32);
  v14 = *v13;
  v15 = *(v13 + 8);
  v20 = v14;
  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB1C();
  sub_26EE35C44(v2, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpenEndedEffectsView);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_26EE36D50(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for OpenEndedEffectsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7300, &qword_26EF3DED0);
  sub_26EE36FFC();
  sub_26EE154C8(&qword_2806C7320, &qword_2806C7300, &qword_26EF3DED0);
  sub_26EF3A8BC();

  return sub_26EE14578(v12, &qword_2806C72E8, &qword_26EF3DEC0);
}

uint64_t sub_26EE361C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v50 = &v45 - v9;
  v10 = type metadata accessor for OpenEndedEffectsView(0);
  v11 = v10 - 8;
  v48 = *(v10 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7418, &qword_26EF3E1B0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v49 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v45 - v21;
  v23 = a1 + *(v11 + 28);
  v57 = *v23;
  v58 = *(v23 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  sub_26EF3AC5C();
  v57 = v55;
  v58 = v56;
  sub_26EF37EDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72C8, &qword_26EF3DE80);
  sub_26EE3A9E8();
  sub_26EE154C8(&qword_2806C72C0, &qword_2806C72C8, &qword_26EF3DE80);
  sub_26EE3AAD4();
  sub_26EF3ACFC();
  v24 = v47;
  sub_26EE35C44(v47, &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpenEndedEffectsView);
  v25 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v26 = swift_allocObject();
  sub_26EE36D50(&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for OpenEndedEffectsView);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26EE3AB88;
  *(v27 + 24) = v26;
  v28 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7448, &qword_26EF3E1B8) + 36)];
  *v28 = sub_26EE3AD34;
  *(v28 + 1) = v27;
  sub_26EE35C44(v24, &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpenEndedEffectsView);
  v29 = swift_allocObject();
  sub_26EE36D50(&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v25, type metadata accessor for OpenEndedEffectsView);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26EE3AD60;
  *(v30 + 24) = v29;
  v31 = *(v15 + 44);
  v46 = v22;
  v32 = &v22[v31];
  *v32 = sub_26EE3AEFC;
  v32[1] = v30;
  sub_26EE35C44(v24, &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpenEndedEffectsView);
  v33 = swift_allocObject();
  sub_26EE36D50(&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v25, type metadata accessor for OpenEndedEffectsView);
  v34 = v50;
  sub_26EF3AB4C();
  v35 = v22;
  v36 = v49;
  sub_26EE13B88(v35, v49, &qword_2806C7418, &qword_26EF3E1B0);
  v38 = v51;
  v37 = v52;
  v39 = *(v52 + 16);
  v40 = v53;
  v39(v51, v34, v53);
  v41 = v54;
  sub_26EE13B88(v36, v54, &qword_2806C7418, &qword_26EF3E1B0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7450, &qword_26EF3E1C0);
  v39((v41 + *(v42 + 48)), v38, v40);
  v43 = *(v37 + 8);
  v43(v34, v40);
  sub_26EE14578(v46, &qword_2806C7418, &qword_26EF3E1B0);
  v43(v38, v40);
  return sub_26EE14578(v36, &qword_2806C7418, &qword_26EF3E1B0);
}

uint64_t sub_26EE36774()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7460, &qword_26EF3E1C8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  type metadata accessor for TTSAudioEffectConfigurationView(0);
  sub_26EE32850(&qword_2806C7468, type metadata accessor for TTSAudioEffectConfigurationView);
  sub_26EF3A4EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7470, &qword_26EF3E1D0);
  sub_26EE154C8(&qword_2806C7478, &qword_2806C7470, &qword_26EF3E1D0);
  sub_26EE154C8(&qword_2806C7480, &qword_2806C7460, &qword_26EF3E1C8);
  return sub_26EF3998C();
}

uint64_t sub_26EE3691C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF3864C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7278, &qword_26EF3DE18);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v41 - v21;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  v45 = a1;
  MEMORY[0x274382CF0]();
  sub_26EF385EC();
  v23 = *(v5 + 8);
  v46 = v4;
  v43 = v23;
  v23(v13, v4);
  v24 = sub_26EF3814C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v22, 1, v24) == 1)
  {
    sub_26EE14578(v22, &qword_2806C7278, &qword_26EF3DE18);
    v27 = 0;
  }

  else
  {
    v42 = a2;
    sub_26EF3810C();
    v29 = v28;
    (*(v25 + 8))(v22, v24);
    if (v29)
    {
      v27 = sub_26EF3AA8C();
    }

    else
    {
      v27 = 0;
    }

    a2 = v42;
  }

  MEMORY[0x274382CF0](v44);
  sub_26EF385EC();
  v43(v10, v46);
  if (v26(v19, 1, v24) == 1)
  {
    sub_26EE14578(v19, &qword_2806C7278, &qword_26EF3DE18);
    v30 = 0;
    v31 = 0xE000000000000000;
  }

  else
  {
    v30 = sub_26EF3811C();
    v31 = v32;
    (*(v25 + 8))(v19, v24);
  }

  v47 = v30;
  v48 = v31;
  sub_26EE12538();
  v33 = sub_26EF3A5DC();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v37 &= 1u;
  sub_26EE13B20(v33, v35, v37);

  *a2 = v27;
  *(a2 + 8) = v33;
  *(a2 + 16) = v35;
  *(a2 + 24) = v37;
  *(a2 + 32) = v39;
  sub_26EE12ABC(v33, v35, v37);
}

uint64_t sub_26EE36CCC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26EE17094() & 1;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v7, v6, 0);
  sub_26EE12538();
  result = sub_26EF3A5DC();
  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10 & 1;
  *(a3 + 24) = v11;
  return result;
}

uint64_t sub_26EE36D50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EE36DB8()
{
  v1 = *(type metadata accessor for OpenEndedEffectsView(0) - 8);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7378, &qword_26EF3E128);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7380, &unk_26EF3E130);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7388, &unk_26EF3FAE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7390, &qword_26EF3E140);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7398, &qword_26EF3E148);
  sub_26EE154C8(&qword_2806C73A0, &qword_2806C7398, &qword_26EF3E148);
  sub_26EE12538();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
  sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_26EF39ADC();
}

unint64_t sub_26EE36FFC()
{
  result = qword_2806C7308;
  if (!qword_2806C7308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C72E8, &qword_26EF3DEC0);
    sub_26EE154C8(&qword_2806C7310, &qword_2806C7318, &qword_26EF3DED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7308);
  }

  return result;
}

uint64_t sub_26EE3711C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v44 = a2;
  v3 = sub_26EF39E2C();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7398, &qword_26EF3E148);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7390, &qword_26EF3E140);
  v39 = *(v14 - 8);
  v15 = *(v39 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7380, &unk_26EF3E130);
  v20 = *(v19 - 8);
  v42 = v19;
  v43 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v37 = &v37 - v23;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73B8, &qword_26EF3E158);
  sub_26EE3917C();
  sub_26EF3A50C();
  v24 = sub_26EE17094() & 1;
  v25._countAndFlagsBits = 0x454646455F444441;
  v25._object = 0xEA00000000005443;
  v47 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v25, v24, 0);
  v26 = sub_26EE154C8(&qword_2806C73A0, &qword_2806C7398, &qword_26EF3E148);
  v27 = sub_26EE12538();
  v28 = MEMORY[0x277D837D0];
  sub_26EF3A75C();

  (*(v9 + 8))(v13, v8);
  v30 = v40;
  v29 = v41;
  (*(v40 + 104))(v7, *MEMORY[0x277CDDDC0], v41);
  v47._countAndFlagsBits = v8;
  v47._object = v28;
  v48 = v26;
  v49 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v37;
  sub_26EF3A87C();
  (*(v30 + 8))(v7, v29);
  (*(v39 + 8))(v18, v14);
  v45 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7388, &unk_26EF3FAE0);
  v47._countAndFlagsBits = v14;
  v47._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
  v34 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150);
  v47._countAndFlagsBits = v33;
  v47._object = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v42;
  sub_26EF3A8EC();
  return (*(v43 + 8))(v32, v35);
}

uint64_t sub_26EE37614(uint64_t a1)
{
  v2 = type metadata accessor for OpenEndedEffectsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v9[1] = sub_26EF3816C();
  swift_getKeyPath();
  sub_26EE35C44(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpenEndedEffectsView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_26EE36D50(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for OpenEndedEffectsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73D8, &qword_26EF3E188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73D0, &unk_26EF3E160);
  sub_26EE154C8(&qword_2806C73E0, &qword_2806C73D8, &qword_26EF3E188);
  sub_26EE32850(&qword_2806C73E8, MEMORY[0x277D70160]);
  sub_26EE154C8(&qword_2806C73C8, &qword_2806C73D0, &unk_26EF3E160);
  return sub_26EF3ACEC();
}

uint64_t sub_26EE3784C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = sub_26EF3818C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OpenEndedEffectsView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  v14 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EE35C44(a2, v14, type metadata accessor for OpenEndedEffectsView);
  (*(v6 + 16))(v9, a1, v5);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + *(v6 + 80) + v15) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_26EE36D50(v14, v17 + v15, type metadata accessor for OpenEndedEffectsView);
  (*(v6 + 32))(v17 + v16, v9, v5);
  v19[4] = a1;
  v19[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73F0, &qword_26EF3E190);
  sub_26EE154C8(&qword_2806C73F8, &qword_2806C73F0, &qword_26EF3E190);
  return sub_26EF3AB4C();
}

uint64_t sub_26EE37AB8(uint64_t a1)
{
  v2 = sub_26EF37EDC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v24 = sub_26EF3864C();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF3817C();
  v10 = MEMORY[0x277D84F90];
  sub_26EE3A7E8(MEMORY[0x277D84F90]);
  sub_26EE3A8EC(v10);
  sub_26EF37ECC();
  sub_26EF385FC();
  v11 = type metadata accessor for OpenEndedEffectsView(0);
  v12 = *(v11 + 20);
  v25 = a1;
  v13 = (a1 + v12);
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  v30 = *v13;
  v31 = v15;
  v32 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  MEMORY[0x274382CF0](&v33);
  v17 = v33;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_26EE3A420(0, v17[2] + 1, 1, v17);
  }

  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_26EE3A420(v18 > 1, v19 + 1, 1, v17);
  }

  v17[2] = v19 + 1;
  (*(v5 + 32))(v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v9, v24);
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v26 = v17;
  sub_26EF3AC3C();

  v20 = (v25 + *(v11 + 24));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v30) = v21;
  v31 = v22;
  LOBYTE(v27) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  return sub_26EF3AB0C();
}

uint64_t sub_26EE37D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v56 = a3;
  v57 = a2;
  v4 = sub_26EF396DC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v52 - v12;
  v14 = sub_26EF3814C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v52 - v22;
  v54 = a1;
  sub_26EF3815C();
  sub_26EF3810C();
  v25 = v24;
  v52 = *(v15 + 8);
  v52(v23, v14);
  if (v25)
  {
    v58 = sub_26EF3AA8C();
    sub_26EE35A44(v13);
    v26 = v5[13];
    v53 = *MEMORY[0x277CDF3C0];
    v26(v10);
    v27 = sub_26EF396CC();
    v28 = v5[1];
    v28(v10, v4);
    v28(v13, v4);
    if (v27)
    {
      v29 = sub_26EF3A9EC();
    }

    else
    {
      v29 = sub_26EF3A9BC();
    }

    v30 = v29;

    v55 = v30;
  }

  else
  {
    v58 = 0;
    v55 = 0;
    v53 = *MEMORY[0x277CDF3C0];
  }

  sub_26EF3815C();
  v31 = sub_26EF3811C();
  v33 = v32;
  v52(v20, v14);
  v59 = v31;
  v60 = v33;
  sub_26EE12538();
  v34 = sub_26EF3A5DC();
  v36 = v35;
  v38 = v37;
  sub_26EE35A44(v13);
  (v5[13])(v10, v53, v4);
  LOBYTE(v33) = sub_26EF396CC();
  v39 = v5[1];
  v39(v10, v4);
  v39(v13, v4);
  if (v33)
  {
    v40 = sub_26EF3A9EC();
  }

  else
  {
    v40 = sub_26EF3A9BC();
  }

  v59 = v40;
  v41 = sub_26EF3A58C();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_26EE12ABC(v34, v36, v38 & 1);

  v48 = v58;
  v49 = v55;
  sub_26EE187A8(v58);
  sub_26EE13B20(v41, v43, v45 & 1);

  sub_26EE187E8(v48);
  v50 = v56;
  *v56 = v48;
  v50[1] = v49;
  v50[2] = v41;
  v50[3] = v43;
  *(v50 + 32) = v45 & 1;
  v50[5] = v47;
  sub_26EE12ABC(v41, v43, v45 & 1);

  return sub_26EE187E8(v48);
}

uint64_t sub_26EE381B8(uint64_t a1)
{
  v2 = sub_26EF3A13C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73A8, &qword_26EF3E150);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13[-v9];
  sub_26EF3A0FC();
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
  sub_26EF397CC();
  v11 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150);
  MEMORY[0x274382230](v10, v5, v11);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_26EE383A4(uint64_t a1)
{
  v2 = type metadata accessor for OpenEndedEffectsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = sub_26EE17094() & 1;
  v7._countAndFlagsBits = 0x4C45434E4143;
  v7._object = 0xE600000000000000;
  v11 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v7, v6, 0);
  sub_26EE35C44(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpenEndedEffectsView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_26EE36D50(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for OpenEndedEffectsView);
  sub_26EE12538();
  return sub_26EF3AB7C();
}

uint64_t sub_26EE38520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26EF3812C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26EE385F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26EF3812C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_26EE386B0()
{
  sub_26EF3812C();
  if (v0 <= 0x3F)
  {
    sub_26EE38E3C(319, &qword_2806C7328, &qword_2806C7330, &qword_26EF3E048);
    if (v1 <= 0x3F)
    {
      sub_26EE38764();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26EE38764()
{
  if (!qword_2806C7338)
  {
    v0 = sub_26EF3B03C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C7338);
    }
  }
}

uint64_t sub_26EE387D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26EE38864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_26EE38900()
{
  sub_26EE38DD8(319, &qword_2806C7340, MEMORY[0x277CE6790], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26EE389A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26EE389F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26EE38A4C(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26EE38A9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_26EE38AF0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26EE38B08(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_26EE38B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6BD0, qword_26EF3D350);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26EE38C2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6BD0, qword_26EF3D350);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_26EE38CF4()
{
  sub_26EE38DD8(319, &qword_2806C6BD8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26EE38E3C(319, &qword_2806C7348, &qword_2806C72D8, &qword_26EF3DE88);
    if (v1 <= 0x3F)
    {
      sub_26EE38E90();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26EE38DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26EE38E3C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26EF3AC9C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26EE38E90()
{
  if (!qword_2806C7350)
  {
    v0 = sub_26EF3AB2C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C7350);
    }
  }
}

unint64_t sub_26EE38EE4()
{
  result = qword_2806C7358;
  if (!qword_2806C7358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7360, &qword_26EF3E118);
    sub_26EE31380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7358);
  }

  return result;
}

uint64_t sub_26EE38F70()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7280, &qword_26EF3DE20);
  sub_26EE33CAC();
  sub_26EE12538();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26EE38FEC()
{
  result = qword_2806C7368;
  if (!qword_2806C7368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7370, &qword_26EF3E120);
    sub_26EE35CAC();
    sub_26EE32850(&qword_2806C72D0, type metadata accessor for OpenEndedEffectsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7368);
  }

  return result;
}

uint64_t sub_26EE390A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C72E8, &qword_26EF3DEC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7300, &qword_26EF3DED0);
  sub_26EE36FFC();
  sub_26EE154C8(&qword_2806C7320, &qword_2806C7300, &qword_26EF3DED0);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26EE3917C()
{
  result = qword_2806C73C0;
  if (!qword_2806C73C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73B8, &qword_26EF3E158);
    sub_26EE154C8(&qword_2806C73C8, &qword_2806C73D0, &unk_26EF3E160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C73C0);
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{
  v1 = type metadata accessor for OpenEndedEffectsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26EF396DC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v5 + *(v1 + 20));
  v9 = *v8;

  v10 = v8[1];

  v11 = v8[2];

  v12 = *(v5 + *(v1 + 24) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE393BC()
{
  v1 = type metadata accessor for OpenEndedEffectsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_26EF3818C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26EF396DC();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  else
  {
    v11 = *v9;
  }

  v12 = (v3 + v4 + v7) & ~v7;
  v13 = (v9 + *(v1 + 20));
  v14 = *v13;

  v15 = v13[1];

  v16 = v13[2];

  v17 = *(v9 + *(v1 + 24) + 8);

  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v8, v2 | v7 | 7);
}

uint64_t sub_26EE3958C()
{
  v1 = *(type metadata accessor for OpenEndedEffectsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26EF3818C() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26EE37AB8(v0 + v2);
}

__n128 sub_26EE39658@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_26EF39E4C();
  v14 = 1;
  sub_26EE37D84(v4, v3, v11);
  v6 = v12;
  v7 = v13;
  result = v11[0];
  v9 = v11[1];
  v10 = v14;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 24) = result;
  *(a1 + 40) = v9;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  return result;
}

uint64_t sub_26EE396D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_26EE1FCF4(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_26EE39814(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26EF3864C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  result = MEMORY[0x274382CF0](v16, v14);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v16[0] + 16) > a1)
  {
    (*(v9 + 16))(v13, v16[0] + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a1, v8);

    swift_getAtKeyPath();
    (*(v9 + 8))(v13, v8);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26EE3998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v20 - v15;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = a1;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a1;
  sub_26EF3864C();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_26EF3AC7C();
  a7(v16);
  return sub_26EE14578(v16, &qword_2806C7270, &qword_26EF3DE10);
}

uint64_t sub_26EE39B10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7410, &qword_26EF3EDC0);
  v37 = a2;
  result = sub_26EF3B7BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_26EF3B87C();
      sub_26EF3B16C();
      result = sub_26EF3B8CC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26EE39DB4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26EF3B6AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26EF3B87C();

      sub_26EF3B16C();
      v13 = sub_26EF3B8CC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 4 * v3);
        v20 = (v18 + 4 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26EE39F64(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_26EE1FCF4(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_26EE39B10(v16, a3 & 1);
      v20 = *v5;
      result = sub_26EE1FCF4(a1, a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_26EF3B86C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_26EE3A0C0();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  *(v22[7] + 4 * result) = a4;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

void *sub_26EE3A0C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7410, &qword_26EF3EDC0);
  v2 = *v0;
  v3 = sub_26EF3B7AC();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

size_t sub_26EE3A228(size_t a1, int64_t a2, char a3)
{
  result = sub_26EE3A248(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26EE3A248(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7400, &qword_26EF3E198);
  v10 = *(sub_26EF3864C() - 8);
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
  v15 = *(sub_26EF3864C() - 8);
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

size_t sub_26EE3A420(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7400, &qword_26EF3E198);
  v10 = *(sub_26EF3864C() - 8);
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
  v15 = *(sub_26EF3864C() - 8);
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

void *sub_26EE3A5F8@<X0>(uint64_t a1@<X2>, unint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v9[1] = *a1;
  v10 = *(a1 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  result = MEMORY[0x274382CF0](v9, v5);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v9[0];
    if (v4 < *(v9[0] + 16))
    {
      v8 = sub_26EF3864C();
      (*(*(v8 - 8) + 16))(a3, v7 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v4, v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26EE3A6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = *a5;
  v10[1] = *a4;
  v11 = *(a4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  MEMORY[0x274382CF0](v10);
  v7 = v10[0];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26EE3A7D4(v7);
  v7 = result;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v6 < v7[2])
  {
    v9 = sub_26EF3864C();
    (*(*(v9 - 8) + 24))(v7 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v6, a1, v9);
    v10[0] = v7;
    return sub_26EF3AC3C();
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_26EE3A7E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7410, &qword_26EF3EDC0);
    v3 = sub_26EF3B7CC();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26EE1FCF4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26EE3A8EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7408, &unk_26EF3E1A0);
    v3 = sub_26EF3B7CC();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26EE1FCF4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26EE3A9E8()
{
  result = qword_2806C7420;
  if (!qword_2806C7420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C72A0, &qword_26EF3DE30);
    sub_26EE154C8(&qword_2806C7428, &qword_2806C72D8, &qword_26EF3DE88);
    sub_26EE154C8(&qword_2806C7430, &qword_2806C72D8, &qword_26EF3DE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7420);
  }

  return result;
}

unint64_t sub_26EE3AAD4()
{
  result = qword_2806C7438;
  if (!qword_2806C7438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7270, &qword_26EF3DE10);
    sub_26EE32850(&qword_2806C7440, MEMORY[0x277CE6790]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7438);
  }

  return result;
}

uint64_t sub_26EE3AB88()
{
  v1 = type metadata accessor for OpenEndedEffectsView(0);
  v2 = (v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  MEMORY[0x274382CF0](&v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72D8, &qword_26EF3DE88);
  sub_26EE154C8(&qword_2806C7428, &qword_2806C72D8, &qword_26EF3DE88);
  sub_26EF3B09C();
  sub_26EF3AC3C();
}

uint64_t sub_26EE3ACFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26EE3AD34(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, *a2);
}

uint64_t sub_26EE3AD60()
{
  v1 = type metadata accessor for OpenEndedEffectsView(0);
  v2 = (v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  MEMORY[0x274382CF0](&v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72D8, &qword_26EF3DE88);
  sub_26EE154C8(&qword_2806C7428, &qword_2806C72D8, &qword_26EF3DE88);
  sub_26EE154C8(&qword_2806C7458, &qword_2806C72D8, &qword_26EF3DE88);
  sub_26EF3B3BC();
  sub_26EF3AC3C();
}

uint64_t sub_26EE3AEFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26EE3AF2C()
{
  v1 = type metadata accessor for OpenEndedEffectsView(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *v2;
  v5 = *(v2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  return sub_26EF3AB0C();
}

uint64_t sub_26EE3B004()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_26EE3B054@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = v2[5];
  result = sub_26EE39814(*a1, v2[2], v2[3], v2[4]);
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t sub_26EE3B08C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26EE3B0F8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];
  v7[1] = a1[2];
  v8 = v4;
  v7[0] = v5;
  return v2(&v8, v7);
}

unint64_t sub_26EE3B140()
{
  result = qword_2806C7490;
  if (!qword_2806C7490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7488, &unk_26EF3E1F8);
    sub_26EE275F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7490);
  }

  return result;
}

void *sub_26EE3B1C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_26EE3A5F8((v1 + 4), v1 + 7, a1);
}

uint64_t objectdestroy_101Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

__n128 sub_26EE3B238@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_26EF39E4C();
  sub_26EE3691C(v3, &v9);
  v5 = v10;
  v6 = v11;
  v7 = v12;
  result = v9;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  return result;
}

unint64_t sub_26EE3B2E4()
{
  result = qword_2806C74D0;
  if (!qword_2806C74D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C74B8, &qword_26EF3E220);
    sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C74D0);
  }

  return result;
}

uint64_t sub_26EE3B3D8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t objectdestroy_109Tm()
{
  v1 = *(type metadata accessor for TTSAudioEffectConfigurationView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10) + 32);
  v8 = sub_26EF3864C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE3B580()
{
  v0 = *(*(type metadata accessor for TTSAudioEffectConfigurationView(0) - 8) + 80);

  return sub_26EE34500();
}

uint64_t objectdestroy_11Tm()
{
  v1 = (type metadata accessor for TTSAudioEffectControl(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26EF3812C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = (v0 + v3 + v1[7]);
  v7 = *v6;

  v8 = v6[1];

  v9 = v6[2];

  v10 = *(v0 + v3 + v1[8]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE3B6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (type metadata accessor for TTSAudioEffectControl(0) - 8);
  v6 = v2 + ((*(*v5 + 80) + 16) & ~*(*v5 + 80));
  v7 = sub_26EF3812C();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = (v6 + v5[7]);
  v14 = *v8;
  v15 = *(v8 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7158, &qword_26EF3DD50);
  sub_26EF3AC5C();
  v9 = *(v6 + v5[8]);
  v10 = a2 + v5[7];
  *v10 = v12;
  *(v10 + 8) = v13;
  *(a2 + v5[8]) = v9;
}

uint64_t sub_26EE3B80C@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  sub_26EE12538();

  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

unint64_t sub_26EE3B878()
{
  result = qword_2806C74E8;
  if (!qword_2806C74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C74E8);
  }

  return result;
}

uint64_t type metadata accessor for DeleteVoiceButton()
{
  result = qword_2806CB5B0;
  if (!qword_2806CB5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE3BF90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteVoiceButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE3BFF4()
{
  v1 = type metadata accessor for DeleteVoiceButton();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_26EE05C9C(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26EF3988C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = *(v5 + v1[6] + 8);

  v10 = v1[7];
  v11 = sub_26EF38AAC();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v1[8];
  v14 = sub_26EF38DBC();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  v16 = *(v5 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_26EE3C248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteVoiceButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE3C2AC()
{
  v1 = type metadata accessor for DeleteVoiceButton();
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *v2;
  v5 = *(v2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  return sub_26EF3AB0C();
}

uint64_t sub_26EE3C350()
{
  v1 = *(v0 + 16);
  v2 = sub_26EE17094();
  v3._object = 0x800000026EF454E0;
  v4 = v2 & 1;
  v3._countAndFlagsBits = 0xD000000000000011;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v3, v4, 0);
  v5 = (v1 + *(type metadata accessor for DeleteVoiceButton() + 24));
  v7 = *v5;
  v8 = *(v5 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB1C();
  sub_26EF3873C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7528, &unk_26EF3E350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7530, &qword_26EF43ED0);
  sub_26EE40CBC(&qword_2806C7100, MEMORY[0x277CE7690]);
  sub_26EE12538();
  sub_26EE3C520();
  sub_26EE3C584();
  sub_26EF3A89C();
}

unint64_t sub_26EE3C520()
{
  result = qword_2806C7538;
  if (!qword_2806C7538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7528, &unk_26EF3E350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7538);
  }

  return result;
}

unint64_t sub_26EE3C584()
{
  result = qword_2806C7540;
  if (!qword_2806C7540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7530, &qword_26EF43ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7540);
  }

  return result;
}

uint64_t sub_26EE3C600@<X0>(char *a1@<X8>)
{
  v128 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v131 = &v108 - v4;
  v5 = sub_26EF38AAC();
  v6 = *(v5 - 8);
  v129 = v5;
  v130 = v6;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v116 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v117 = &v108 - v12;
  v13 = type metadata accessor for DeleteVoiceButton();
  v122 = *(v13 - 8);
  v14 = *(v122 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v123 = v16;
  v124 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v108 - v20;
  v119 = sub_26EF38DBC();
  v22 = *(v119 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v119, v24);
  v114 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v26;
  MEMORY[0x28223BE20](v25, v27);
  v120 = &v108 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7558, &unk_26EF3E368);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v29 - 8, v31);
  v127 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v126 = &v108 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v133 = &v108 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v136 = &v108 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8, v44);
  v46 = &v108 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  v51 = MEMORY[0x28223BE20](v47, v50);
  v134 = &v108 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v53);
  v55 = &v108 - v54;
  v56 = sub_26EE17094() & 1;
  v57._countAndFlagsBits = 0x45434E41435F4256;
  v57._object = 0xE90000000000004CLL;
  v137 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v57, v56, 0);
  sub_26EF3960C();
  v58 = sub_26EF3961C();
  v59 = *(v58 - 8);
  v60 = *(v59 + 56);
  v61 = v59 + 56;
  v60(v46, 0, 1, v58);
  v62 = sub_26EE12538();
  v132 = v55;
  v118 = v62;
  sub_26EF3AB5C();
  v121 = v13;
  sub_26EE13B88(v135 + *(v13 + 32), v21, &qword_2806C7088, &unk_26EF3E330);
  v63 = v119;
  v64 = (*(v22 + 48))(v21, 1);
  v125 = v48;
  v113 = v58;
  v111 = v60;
  v110 = v61;
  if (v64 == 1)
  {
    sub_26EE14578(v21, &qword_2806C7088, &unk_26EF3E330);
    v65 = 1;
  }

  else
  {
    v109 = *(v22 + 32);
    v66 = v120;
    v109();
    v67 = sub_26EE17094();
    v68._object = 0xEF4543494F565F45;
    v69 = v67 & 1;
    v68._countAndFlagsBits = 0x54454C45445F4256;
    v137 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v68, v69, 0);
    sub_26EF395FC();
    v60(v46, 0, 1, v58);
    v70 = v124;
    sub_26EE3BF90(v135, v124);
    v71 = v114;
    v72 = v66;
    v73 = v63;
    (*(v22 + 16))(v114, v72, v63);
    v74 = (*(v122 + 80) + 16) & ~*(v122 + 80);
    v75 = v70;
    v76 = (v123 + *(v22 + 80) + v74) & ~*(v22 + 80);
    v77 = swift_allocObject();
    sub_26EE3C248(v75, v77 + v74);
    v78 = v136;
    (v109)(v77 + v76, v71, v73);
    v48 = v125;
    v79 = v134;
    sub_26EF3AB5C();
    (*(v22 + 8))(v120, v73);
    (*(v48 + 32))(v78, v79, v47);
    v65 = 0;
  }

  v80 = v46;
  v81 = *(v48 + 56);
  v81(v136, v65, 1, v47);
  v82 = v131;
  sub_26EE13B88(v135 + *(v121 + 7), v131, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v130 + 48))(v82, 1, v129) == 1)
  {
    sub_26EE14578(v131, &qword_2806C7080, &unk_26EF3DBF0);
    v83 = 1;
    v85 = v133;
    v84 = v134;
  }

  else
  {
    v86 = v130;
    v121 = v81;
    v120 = *(v130 + 32);
    v87 = v117;
    v88 = v129;
    (v120)(v117, v131, v129);
    v131 = v47;
    v89 = sub_26EE17094();
    v90._object = 0x800000026EF454C0;
    v91 = v89 & 1;
    v90._countAndFlagsBits = 0xD00000000000001ELL;
    v137 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v90, v91, 0);
    sub_26EF395FC();
    v111(v80, 0, 1, v113);
    v92 = v124;
    sub_26EE3BF90(v135, v124);
    v93 = v116;
    (*(v86 + 16))(v116, v87, v88);
    v94 = *(v122 + 80);
    v135 = v80;
    v95 = (v94 + 16) & ~v94;
    v96 = (v123 + *(v86 + 80) + v95) & ~*(v86 + 80);
    v97 = swift_allocObject();
    sub_26EE3C248(v92, v97 + v95);
    (v120)(v97 + v96, v93, v88);
    v81 = v121;
    v84 = v134;
    v47 = v131;
    sub_26EF3AB5C();
    v98 = v87;
    v48 = v125;
    (*(v86 + 8))(v98, v88);
    v85 = v133;
    (*(v48 + 32))(v133, v84, v47);
    v83 = 0;
  }

  v81(v85, v83, 1, v47);
  v99 = *(v48 + 16);
  v99(v84, v132, v47);
  v100 = v126;
  sub_26EE13B88(v136, v126, &qword_2806C7558, &unk_26EF3E368);
  v101 = v85;
  v102 = v127;
  sub_26EE13B88(v101, v127, &qword_2806C7558, &unk_26EF3E368);
  v103 = v48;
  v104 = v128;
  v99(v128, v84, v47);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7560, &qword_26EF3E378);
  sub_26EE13B88(v100, &v104[*(v105 + 48)], &qword_2806C7558, &unk_26EF3E368);
  sub_26EE13B88(v102, &v104[*(v105 + 64)], &qword_2806C7558, &unk_26EF3E368);
  sub_26EE14578(v133, &qword_2806C7558, &unk_26EF3E368);
  sub_26EE14578(v136, &qword_2806C7558, &unk_26EF3E368);
  v106 = *(v103 + 8);
  v106(v132, v47);
  sub_26EE14578(v102, &qword_2806C7558, &unk_26EF3E368);
  sub_26EE14578(v100, &qword_2806C7558, &unk_26EF3E368);
  return (v106)(v134, v47);
}

uint64_t sub_26EE3D124()
{
  v1 = *(v0 + 16);
  v2 = sub_26EE17094();
  v3._object = 0x800000026EF454E0;
  v4 = v2 & 1;
  v3._countAndFlagsBits = 0xD000000000000011;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v3, v4, 0);
  v5 = (v1 + *(type metadata accessor for DeleteVoiceButton() + 24));
  v7 = *v5;
  v8 = *(v5 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7518, &qword_26EF3E340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7528, &unk_26EF3E350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7530, &qword_26EF43ED0);
  sub_26EE3D2D8();
  sub_26EE12538();
  sub_26EE3C520();
  sub_26EE3C584();
  sub_26EF3A79C();
}

unint64_t sub_26EE3D2D8()
{
  result = qword_2806C7550;
  if (!qword_2806C7550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7518, &qword_26EF3E340);
    sub_26EF3873C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7528, &unk_26EF3E350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7530, &qword_26EF43ED0);
    sub_26EE40CBC(&qword_2806C7100, MEMORY[0x277CE7690]);
    sub_26EE12538();
    sub_26EE3C520();
    sub_26EE3C584();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7550);
  }

  return result;
}

uint64_t sub_26EE3D430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7518, &qword_26EF3E340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26EE3D498(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = sub_26EF386AC();
  v4 = *(v49 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v49, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v46 - v12;
  v14 = sub_26EF38AAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DeleteVoiceButton();
  sub_26EE13B88(a1 + *(v20 + 28), v13, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_26EE14578(v13, &qword_2806C7080, &unk_26EF3DBF0);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
LABEL_17:
    *a2 = v21;
    a2[1] = v22;
    a2[2] = v23;
    a2[3] = v24;
    return;
  }

  v47 = v14;
  v48 = a2;
  v46 = v15;
  v25 = *(v15 + 32);
  v51 = v19;
  v25(v19, v13, v14);
  sub_26EF3B40C();
  v26 = MEMORY[0x2743834C0]();
  v27 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v28 = *&v26[v27];

  v29 = sub_26EF3B3DC();
  v52 = v29;
  v30 = *(v29 + 16);
  v31 = v49;
  if (!v30)
  {
LABEL_13:

    (*(v46 + 8))(v51, v47);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
LABEL_16:
    a2 = v48;
    goto LABEL_17;
  }

  v32 = 0;
  v50 = v52 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v33 = (v4 + 8);
  while (v32 < *(v52 + 16))
  {
    (*(v4 + 16))(v8, v50 + *(v4 + 72) * v32, v31);
    v34 = sub_26EF3869C();
    v36 = v35;
    v37 = sub_26EF38A6C();
    if (v36)
    {
      if (v34 == v37 && v36 == v38)
      {

        (*v33)(v8, v49);
LABEL_15:

        v40 = sub_26EE17094();
        v41._object = 0x800000026EF45500;
        v42 = v40 & 1;
        v41._countAndFlagsBits = 0xD000000000000011;
        v53 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v41, v42, 0);
        sub_26EE12538();
        v21 = sub_26EF3A5DC();
        v22 = v43;
        v24 = v44;
        v23 = v45 & 1;
        (*(v46 + 8))(v51, v47);
        goto LABEL_16;
      }

      v39 = sub_26EF3B82C();

      v31 = v49;
      (*v33)(v8, v49);
      if (v39)
      {
        goto LABEL_15;
      }
    }

    else
    {
      (*v33)(v8, v31);
    }

    if (v30 == ++v32)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_26EE3D918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_26EF38A2C();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = sub_26EF3883C();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v12 = sub_26EF37EDC();
  v5[11] = v12;
  v13 = *(v12 - 8);
  v5[12] = v13;
  v14 = *(v13 + 64) + 15;
  v5[13] = swift_task_alloc();
  v15 = sub_26EF39DDC();
  v5[14] = v15;
  v16 = *(v15 - 8);
  v5[15] = v16;
  v17 = *(v16 + 64) + 15;
  v5[16] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[17] = sub_26EF3B2CC();
  v19 = sub_26EF3B29C();
  v5[18] = v19;
  v5[19] = v18;

  return MEMORY[0x2822009F8](sub_26EE3DB20, v19, v18);
}

uint64_t sub_26EE3DB20()
{
  v1 = v0[3];
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = v0[2];
  }

  v0[20] = v3;
  v8 = v0[13];
  v9 = v0[4];
  MEMORY[0x274380E60]();
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_26EE3DC8C;
  v11 = v0[13];

  return VoiceBankingSession.deleteModel(modelID:)(v11);
}

uint64_t sub_26EE3DC8C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 176) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 152);
  v10 = *(v2 + 144);
  if (v0)
  {
    v11 = sub_26EE3DEFC;
  }

  else
  {
    v11 = sub_26EE3DE44;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_26EE3DE44()
{
  v1 = v0[17];
  v2 = v0[3];

  sub_26EE3E168();
  v3 = v2 + *(type metadata accessor for DeleteVoiceButton() + 36);
  v4 = *(v3 + 8);
  (*v3)();
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26EE3DEFC()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[10];

  sub_26EF3934C();
  v4 = v1;
  v5 = sub_26EF3881C();
  v6 = sub_26EF3B45C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[22];
  if (v7)
  {
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    (*(v10 + 104))(v9, *MEMORY[0x277D704D8], v11);
    sub_26EF38A4C();
    sub_26EE40CBC(&unk_2806C9CD0, MEMORY[0x277D70518]);
    swift_allocError();
    sub_26EF389BC();
    (*(v10 + 8))(v9, v11);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_26EE01000, v5, v6, "%@", v12, 0xCu);
    sub_26EE14578(v13, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v13, -1, -1);
    MEMORY[0x2743842A0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[9] + 8))(v0[10], v0[8]);
  v15 = v0[16];
  v16 = v0[13];
  v17 = v0[10];
  v18 = v0[7];

  v19 = v0[1];

  return v19();
}

uint64_t sub_26EE3E168()
{
  v1 = sub_26EF386AC();
  v72 = *(v1 - 8);
  v73 = v1;
  v2 = *(v72 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v71 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_26EF37EDC();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = sub_26EF3883C();
  v70 = *(v74 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v74, v11);
  v13 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v61[-v17];
  v19 = sub_26EF38AAC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v61[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v61[-v27];
  v29 = type metadata accessor for DeleteVoiceButton();
  sub_26EE13B88(v0 + *(v29 + 28), v18, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_26EE14578(v18, &qword_2806C7080, &unk_26EF3DBF0);
  }

  (*(v20 + 32))(v28, v18, v19);
  v31 = sub_26EF3B40C();
  v32 = MEMORY[0x2743834C0]();
  v33 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v34 = *&v32[v33];

  v35 = sub_26EF3B3DC();
  MEMORY[0x28223BE20](v36, v37);
  *&v61[-16] = v28;
  v67 = sub_26EE3F6A4(sub_26EE40C18, &v61[-32], v35);
  LOBYTE(v34) = v38;

  if (v34)
  {
    return (*(v20 + 8))(v28, v19);
  }

  v66 = v31;
  v39 = sub_26EE27DAC();
  v40 = v70;
  v41 = v74;
  (*(v70 + 16))(v13, v39, v74);
  (*(v20 + 16))(v25, v28, v19);
  v42 = sub_26EF3881C();
  v43 = sub_26EF3B47C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v63 = v44;
    v65 = swift_slowAlloc();
    v75[0] = v65;
    *v44 = 136315138;
    v64 = v42;
    MEMORY[0x274380B50]();
    sub_26EE40CBC(&qword_2806C7590, MEMORY[0x277CC95F0]);
    v62 = v43;
    v45 = v69;
    v46 = sub_26EF3B7FC();
    v48 = v47;
    (*(v68 + 8))(v9, v45);
    v49 = *(v20 + 8);
    v49(v25, v19);
    v50 = sub_26EE40670(v46, v48, v75);

    v51 = v63;
    *(v63 + 1) = v50;
    v52 = v64;
    v53 = v51;
    _os_log_impl(&dword_26EE01000, v64, v62, "Found live speech preferred voice with ID %s. Removing preference.", v51, 0xCu);
    v54 = v65;
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x2743842A0](v54, -1, -1);
    MEMORY[0x2743842A0](v53, -1, -1);

    v55 = (*(v40 + 8))(v13, v74);
  }

  else
  {

    v49 = *(v20 + 8);
    v49(v25, v19);
    v55 = (*(v40 + 8))(v13, v41);
  }

  v56 = MEMORY[0x2743834C0](v55);
  v57 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v58 = *&v56[v57];

  v59 = sub_26EF3B3CC();
  v60 = v71;
  sub_26EE3F790(v67, v71);
  (*(v72 + 8))(v60, v73);
  v59(v75, 0);

  return (v49)(v28, v19);
}

uint64_t sub_26EE3E810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for DeleteVoiceButton();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8, v16);
  v17 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v30 - v21;
  v23 = sub_26EF3B30C();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  sub_26EE3BF90(a1, v17);
  (*(v8 + 16))(v12, a2, v7);
  sub_26EF3B2DC();
  v24 = sub_26EF3B2CC();
  v25 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v26 = (v15 + *(v8 + 80) + v25) & ~*(v8 + 80);
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v24;
  *(v27 + 24) = v28;
  sub_26EE3C248(v17, v27 + v25);
  (*(v8 + 32))(v27 + v26, v12, v7);
  sub_26EE2C388(0, 0, v22, v31, v27);
}

uint64_t sub_26EE3EA9C()
{
  v1 = type metadata accessor for DeleteVoiceButton();
  v2 = *(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v3 = sub_26EF38AAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v20 = *(v4 + 64);
  v6 = v0 + ((v2 + 16) & ~v2);
  sub_26EE05C9C(*v6, *(v6 + 8));
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26EF3988C();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
    v9 = *(v6 + v7);
  }

  v10 = *(v6 + v1[6] + 8);

  v11 = v1[7];
  if (!(*(v4 + 48))(v6 + v11, 1, v3))
  {
    (*(v4 + 8))(v6 + v11, v3);
  }

  v12 = v1[8];
  v13 = sub_26EF38DBC();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  v15 = v2 | v5;
  v16 = (((v2 + 16) & ~v2) + v19 + v5) & ~v5;
  v17 = *(v6 + v1[9] + 8);

  (*(v4 + 8))(v0 + v16, v3);

  return MEMORY[0x2821FE8E8](v0, v16 + v20, v15 | 7);
}

uint64_t sub_26EE3EDA0()
{
  v1 = type metadata accessor for DeleteVoiceButton();
  v2 = *(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v3 = sub_26EF38DBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v20 = *(v4 + 64);
  v6 = v0 + ((v2 + 16) & ~v2);
  sub_26EE05C9C(*v6, *(v6 + 8));
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26EF3988C();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
    v9 = *(v6 + v7);
  }

  v10 = *(v6 + v1[6] + 8);

  v11 = v1[7];
  v12 = sub_26EF38AAC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v14 = v1[8];
  if (!(*(v4 + 48))(v6 + v14, 1, v3))
  {
    (*(v4 + 8))(v6 + v14, v3);
  }

  v15 = v2 | v5;
  v16 = (((v2 + 16) & ~v2) + v19 + v5) & ~v5;
  v17 = *(v6 + v1[9] + 8);

  (*(v4 + 8))(v0 + v16, v3);

  return MEMORY[0x2821FE8E8](v0, v16 + v20, v15 | 7);
}

uint64_t sub_26EE3F088(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for DeleteVoiceButton() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(a1(0) - 8);
  return sub_26EE3E810(v4 + v10, v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), a2, a3, a4);
}

uint64_t sub_26EE3F178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_26EF38A2C();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = sub_26EF3883C();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v12 = sub_26EF37EDC();
  v5[11] = v12;
  v13 = *(v12 - 8);
  v5[12] = v13;
  v14 = *(v13 + 64) + 15;
  v5[13] = swift_task_alloc();
  v15 = sub_26EF39DDC();
  v5[14] = v15;
  v16 = *(v15 - 8);
  v5[15] = v16;
  v17 = *(v16 + 64) + 15;
  v5[16] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[17] = sub_26EF3B2CC();
  v19 = sub_26EF3B29C();
  v5[18] = v19;
  v5[19] = v18;

  return MEMORY[0x2822009F8](sub_26EE3F380, v19, v18);
}

uint64_t sub_26EE3F380()
{
  v1 = v0[3];
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = v0[2];
  }

  v0[20] = v3;
  v8 = v0[13];
  v9 = v0[4];
  MEMORY[0x274380B50]();
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_26EE3F4EC;
  v11 = v0[13];

  return VoiceBankingSession.deleteVoice(voiceID:)(v11);
}

uint64_t sub_26EE3F4EC()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 176) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 152);
  v10 = *(v2 + 144);
  if (v0)
  {
    v11 = sub_26EE411B4;
  }

  else
  {
    v11 = sub_26EE411A8;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_26EE3F6A4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_26EF386AC() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_26EE3F790@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26EE40D60(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_26EF386AC();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26EE3F898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for VoiceBankingSession();
  sub_26EE40CBC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *a5 = sub_26EF3973C();
  *(a5 + 8) = v10 & 1;
  v11 = type metadata accessor for DeleteVoiceButton();
  v12 = v11[5];
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  swift_storeEnumTagMultiPayload();
  v13 = a5 + v11[6];
  sub_26EF3AAEC();
  *v13 = v16;
  *(v13 + 8) = v17;
  sub_26EE14D98(a1, a5 + v11[7], &qword_2806C7080, &unk_26EF3DBF0);
  result = sub_26EE14D98(a2, a5 + v11[8], &qword_2806C7088, &unk_26EF3E330);
  v15 = (a5 + v11[9]);
  *v15 = a3;
  v15[1] = a4;
  return result;
}

uint64_t sub_26EE3FA38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[9]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_26EE3FBC0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[7];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[8];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_26EE3FD30()
{
  sub_26EE3FED4(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26EE3FED4(319, &qword_2806C7570, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26EE38E90();
      if (v2 <= 0x3F)
      {
        sub_26EE3FED4(319, &qword_2806C70A8, MEMORY[0x277D70530], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_26EE3FED4(319, &qword_2806C70B0, MEMORY[0x277D705D8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_26EE3FF38();
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