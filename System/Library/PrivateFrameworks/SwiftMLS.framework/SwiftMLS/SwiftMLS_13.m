uint64_t sub_26BEEE7C0(uint64_t a1)
{
  v2 = sub_26BEFB120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEEE7FC(uint64_t a1)
{
  v2 = sub_26BEFB120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEEE8DC()
{
  if (*v0)
  {
    result = 0x6D614E70756F7267;
  }

  else
  {
    result = 0x746E65696C63;
  }

  *v0;
  return result;
}

uint64_t sub_26BEEE918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

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

uint64_t sub_26BEEE9F8(uint64_t a1)
{
  v2 = sub_26BEFB0CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEEEA34(uint64_t a1)
{
  v2 = sub_26BEFB0CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEEEAB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_26BEF8F40(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

uint64_t sub_26BEEEB4C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F778, &qword_26C01BA78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFB010();
  sub_26C00B10C();
  v11 = *v3;
  v12 = v3[1];
  v23[15] = 0;
  sub_26C00AE9C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v23[14] = 1;
  sub_26C00AE9C();
  v15 = v3[4];
  v16 = v3[5];
  v23[13] = 2;
  sub_26C00AE9C();
  v17 = v3[6];
  v18 = v3[7];
  v23[12] = 3;
  sub_26C00AE6C();
  v19 = *(v3 + 64);
  v23[11] = 4;
  sub_26C00AE7C();
  v21 = v3[9];
  v22 = v3[10];
  v23[10] = 5;
  sub_26C00AE6C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26BEEED4C()
{
  v1 = *v0;
  v2 = 0x746E65696C63;
  v3 = 0x4952556C6574;
  v4 = 0xD00000000000001ALL;
  if (v1 != 4)
  {
    v4 = 0x616B63615079656BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x70756F7267;
  if (v1 != 1)
  {
    v5 = 0x65626D654D77656ELL;
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

uint64_t sub_26BEEEE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BEF7284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BEEEE38(uint64_t a1)
{
  v2 = sub_26BEFB010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEEEE74(uint64_t a1)
{
  v2 = sub_26BEFB010();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEEEEB0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26BEF748C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_26BEEEF24(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F760, &qword_26C01BA68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAFBC();
  sub_26C00B10C();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_26C00AE9C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v19[14] = 1;
  sub_26C00AE9C();
  v15 = v3[4];
  v16 = v3[5];
  v19[13] = 2;
  sub_26C00AE9C();
  v18 = *(v3 + 48);
  v19[12] = 3;
  sub_26C00AE7C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26BEEF0E4()
{
  v1 = 0x746E65696C63;
  v2 = 0x4D6465766F6D6572;
  if (*v0 != 2)
  {
    v2 = 0x7265767265537369;
  }

  if (*v0)
  {
    v1 = 0x70756F7267;
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

uint64_t sub_26BEEF170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BEF78B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BEEF198(uint64_t a1)
{
  v2 = sub_26BEFAFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEEF1D4(uint64_t a1)
{
  v2 = sub_26BEFAFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEEF210@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26BEF7A24(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_26BEEF28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26C00AF2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BEEF310(uint64_t a1)
{
  v2 = sub_26BEFAF68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEEF34C(uint64_t a1)
{
  v2 = sub_26BEFAF68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEEF410(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F730, &qword_26C01BA48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAEAC();
  sub_26C00B10C();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_26C00AE9C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_26C00AE9C();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  sub_26C00AE9C();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_26C00AE6C();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26BEEF5D0()
{
  v1 = 0x746E65696C63;
  v2 = 0x746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x70756F7267;
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

uint64_t sub_26BEEF648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BEF7D04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BEEF670(uint64_t a1)
{
  v2 = sub_26BEFAEAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEEF6AC(uint64_t a1)
{
  v2 = sub_26BEFAEAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEEF72C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F718, &qword_26C01BA38);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAE58();
  sub_26C00B10C();
  v16 = 0;
  sub_26C00AE9C();
  if (!v4)
  {
    v15 = 1;
    sub_26C00AE7C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_26BEEF8BC()
{
  if (*v0)
  {
    result = 0x656D614E736168;
  }

  else
  {
    result = 0x70756F7267;
  }

  *v0;
  return result;
}

uint64_t sub_26BEEF8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E736168 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

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

uint64_t sub_26BEEF9CC(uint64_t a1)
{
  v2 = sub_26BEFAE58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEEFA08(uint64_t a1)
{
  v2 = sub_26BEFAE58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEEFA44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26BEF815C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_26BEEFA94(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F6A0, &qword_26C01B9E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFACB4();
  sub_26C00B10C();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_26C00AE9C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_26C00AE9C();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_26C00AE6C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26BEEFC34(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F688, &qword_26C01B9D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAC60();
  sub_26C00B10C();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_26C00AE9C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_26C00AE9C();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_26C00AE9C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26BEEFDD4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F670, &qword_26C01B9C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFABA4();
  sub_26C00B10C();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_26C00AE9C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_26C00AE9C();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  sub_26C00AE9C();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_26C00AE9C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26BEEFF94(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F658, &qword_26C01B9B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAB50();
  sub_26C00B10C();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_26C00AE9C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_26C00AE9C();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_26C00AE9C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26BEF01D4()
{
  v1 = 0x4673726F68636E61;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF023C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BEF8334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BEF0264(uint64_t a1)
{
  v2 = sub_26BEFACB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF02A0(uint64_t a1)
{
  v2 = sub_26BEFACB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF0338()
{
  v1 = 0x4952556C6574;
  if (*v0 != 1)
  {
    v1 = 0x70656C6946727363;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF0394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BEF8458(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BEF03BC(uint64_t a1)
{
  v2 = sub_26BEFAC60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF03F8(uint64_t a1)
{
  v2 = sub_26BEFAC60();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_26BEF0490()
{
  v1 = 0x746E65696C63;
  v2 = 0x656C6946746F6F72;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x70656C6946727363;
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

uint64_t sub_26BEF051C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BEF856C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BEF0544(uint64_t a1)
{
  v2 = sub_26BEFABA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF0580(uint64_t a1)
{
  v2 = sub_26BEFABA4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEF05BC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26BEF86DC(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_26BEF0618()
{
  v1 = 0x4952556C6574;
  if (*v0 != 1)
  {
    v1 = 0x6C69467374726563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF0678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BEF89D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BEF06A0(uint64_t a1)
{
  v2 = sub_26BEFAB50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF06DC(uint64_t a1)
{
  v2 = sub_26BEFAB50();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEF075C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, _OWORD *a5@<X8>)
{
  sub_26BEFA12C(a1, a2, a3, a4, v9);
  if (!v5)
  {
    v8 = v9[1];
    *a5 = v9[0];
    a5[1] = v8;
    result = *&v10;
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_26BEF07C8(uint64_t a1)
{
  v2 = sub_26BEFAE04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF0804(uint64_t a1)
{
  v2 = sub_26BEFAE04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF08DC()
{
  if (*v0)
  {
    result = 0x70756F7267;
  }

  else
  {
    result = 0x746E65696C63;
  }

  *v0;
  return result;
}

uint64_t sub_26BEF0914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

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

uint64_t sub_26BEF09E8(uint64_t a1)
{
  v2 = sub_26BEFADB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF0A24(uint64_t a1)
{
  v2 = sub_26BEFADB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF0AFC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F640, &qword_26C01B9A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAA94();
  sub_26C00B10C();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_26C00AE9C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_26C00AE9C();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  sub_26C00AE9C();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_26C00AE6C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26BEF0D0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void *, uint64_t, uint64_t))
{
  v21[2] = a3;
  v21[0] = a4;
  v21[1] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8(v16, v17, v18);
  sub_26C00B10C();
  v23 = 0;
  v19 = v21[3];
  sub_26C00AE9C();
  if (!v19)
  {
    v22 = 1;
    sub_26C00AE9C();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_26BEF0E9C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F610, &qword_26C01B988);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA984();
  sub_26C00B10C();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  sub_26C00AE9C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v21[14] = 1;
  sub_26C00AE9C();
  v15 = *(v3 + 8);
  v21[13] = 2;
  sub_26C00AEDC();
  v16 = v3[5];
  v21[12] = 3;
  sub_26C00AECC();
  v17 = v3[6];
  v18 = v3[7];
  v21[11] = 4;
  sub_26C00AE9C();
  v20 = *(v3 + 64);
  v21[10] = 5;
  sub_26C00AEAC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26BEF10E0()
{
  v1 = 0x656D614E77656ELL;
  v2 = 0x70756F7267;
  if (*v0 != 2)
  {
    v2 = 0x4E74707572726F63;
  }

  if (*v0)
  {
    v1 = 0x746E65696C63;
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

uint64_t sub_26BEF1160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BEF8AE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BEF1188(uint64_t a1)
{
  v2 = sub_26BEFAA94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF11C4(uint64_t a1)
{
  v2 = sub_26BEFAA94();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEF122C@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_26BEF128C()
{
  if (*v0)
  {
    return 0x4952556C6574;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF12B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4952556C6574 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

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

uint64_t sub_26BEF138C(uint64_t a1)
{
  v2 = sub_26BEFAA40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF13C8(uint64_t a1)
{
  v2 = sub_26BEFAA40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF14A0()
{
  v1 = *v0;
  v2 = 0x746E65696C63;
  v3 = 0x444968636F7065;
  v4 = 0x4952556C6574;
  if (v1 != 4)
  {
    v4 = 0x6465746365707865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x70756F7267;
  if (v1 != 1)
  {
    v5 = 6386277;
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

uint64_t sub_26BEF1548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BEF9130(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BEF157C(uint64_t a1)
{
  v2 = sub_26BEFA984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF15B8(uint64_t a1)
{
  v2 = sub_26BEFA984();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_26BEF15F4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26BEF9320(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_26BEF1660()
{
  v1 = 0x70756F7267;
  if (*v0 != 1)
  {
    v1 = 0x5473746E65696C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF16C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BEF96A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BEF16E8(uint64_t a1)
{
  v2 = sub_26BEFA930();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF1724(uint64_t a1)
{
  v2 = sub_26BEFA930();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF17A4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F6D0, &qword_26C01BA08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAD5C();
  sub_26C00B10C();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_26C00AE9C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_26C00AE9C();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_26C00AE9C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26BEF1988(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_26C00B10C();
  v14 = *v6;
  v15 = v6[1];
  v23 = 0;
  v16 = v20[0];
  sub_26C00AE9C();
  if (!v16)
  {
    v18 = v6[2];
    v19 = v6[3];
    v22 = 1;
    sub_26C00AE9C();
    v20[1] = v6[4];
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BEFA774(&qword_28045F580);
    sub_26C00AEBC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_26BEF1BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73617245657375 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26C00AF2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BEF1C78(uint64_t a1)
{
  v2 = sub_26BEFA8DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF1CB4(uint64_t a1)
{
  v2 = sub_26BEFA8DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF1CF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F5D0, &qword_26C01B960);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA8DC();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_26C00ADFC();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_26BEF1E50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F5E0, &qword_26C01B968);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA8DC();
  sub_26C00B10C();
  sub_26C00AE7C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26BEF1F88()
{
  v1 = 0x70756F7267;
  if (*v0 != 1)
  {
    v1 = 0x657474696D6D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF1FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BEF97C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BEF2008(uint64_t a1)
{
  v2 = sub_26BEFAD5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF2044(uint64_t a1)
{
  v2 = sub_26BEFAD5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF20F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73646E6F636573 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26C00AF2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BEF217C(uint64_t a1)
{
  v2 = sub_26BEFA7E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF21B8(uint64_t a1)
{
  v2 = sub_26BEFA7E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF21F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F588, &qword_26C01B930);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA7E0();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_26C00AE4C();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_26BEF2354(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F598, &qword_26C01B938);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA7E0();
  sub_26C00B10C();
  sub_26C00AECC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26BEF248C()
{
  v1 = 0x70756F7267;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF24E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BEF98D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BEF250C(uint64_t a1)
{
  v2 = sub_26BEFA720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF2548(uint64_t a1)
{
  v2 = sub_26BEFA720();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEF25C8@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  sub_26BEF99F0(a1, a2, a3, a4, v9);
  if (!v5)
  {
    result = *v9;
    v8 = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = v8;
    *(a5 + 32) = v10;
  }

  return result;
}

uint64_t sub_26BEF2620()
{
  sub_26C00B05C();
  MEMORY[0x26D699B20](0);
  return sub_26C00B0CC();
}

uint64_t sub_26BEF2664()
{
  sub_26C00B05C();
  MEMORY[0x26D699B20](0);
  return sub_26C00B0CC();
}

uint64_t sub_26BEF26C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C69466574617473 && a2 == 0xED00006874617065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26C00AF2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BEF2758(uint64_t a1)
{
  v2 = sub_26BEFA888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF2794(uint64_t a1)
{
  v2 = sub_26BEFA888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF2814@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_26C00B0FC();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v20;
  v14 = v21;
  v15 = sub_26C00AE1C();
  v17 = v16;
  (*(v13 + 8))(v11, v8);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v14 = v15;
  v14[1] = v17;
  return result;
}

uint64_t sub_26BEF29E0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = v6[1];
  v16 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_26C00B10C();
  sub_26C00AE9C();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_26BEF2B28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F5B0, &qword_26C01B948);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA834();
  sub_26C00B10C();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_26C00AE9C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_26C00AE9C();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_26C00AE6C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26BEF2CC8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F6B8, &qword_26C01B9F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAD08();
  sub_26C00B10C();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_26C00AE9C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_26C00AE9C();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_26C00AE9C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26BEF2E68()
{
  v1 = 0x4673726F68636E61;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C69466574617473;
  }
}

uint64_t sub_26BEF2EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BEF9C90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BEF2F08(uint64_t a1)
{
  v2 = sub_26BEFA834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF2F44(uint64_t a1)
{
  v2 = sub_26BEFA834();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEF2FC4@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, _OWORD *a5@<X8>)
{
  sub_26BEF9DC0(a1, a2, a3, a4, v9);
  if (!v5)
  {
    v8 = v9[1];
    *a5 = v9[0];
    a5[1] = v8;
    result = *&v10;
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_26BEF3030()
{
  v1 = 0x70756F7267;
  if (*v0 != 1)
  {
    v1 = 0x486567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF3088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BEFA014(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BEF30B0(uint64_t a1)
{
  v2 = sub_26BEFAD08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF30EC(uint64_t a1)
{
  v2 = sub_26BEFAD08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF3184(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F558, &qword_26C01B910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA6CC();
  sub_26C00B10C();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_26C00AE9C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = *(v3 + 24);
  v18[14] = 1;
  sub_26C00AE8C();
  v16 = v3[4];
  v17 = *(v3 + 40);
  v18[13] = 2;
  sub_26C00AE8C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26BEF332C()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_26BEF338C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BEFA380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BEF33B4(uint64_t a1)
{
  v2 = sub_26BEFA6CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF33F0(uint64_t a1)
{
  v2 = sub_26BEFA6CC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26BEF342C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26BEFA4A0(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_26BEF3488()
{
  sub_26C00B05C();
  sub_26C00A58C();
  return sub_26C00B0CC();
}

uint64_t sub_26BEF34EC()
{
  sub_26C00B05C();
  sub_26C00A58C();
  return sub_26C00B0CC();
}

uint64_t sub_26BEF3538@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26C00ADCC();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_26BEF35B8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26C00ADCC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26BEF3610(uint64_t a1)
{
  v2 = sub_26BEF67DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BEF364C(uint64_t a1)
{
  v2 = sub_26BEF67DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BEF3688@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F470, &qword_26C01B900);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEF67DC();
  sub_26C00B0FC();
  if (!v2)
  {
    v11 = sub_26C00AE1C();
    v13 = v12;
    v33 = v6;
    v25 = a2;
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26C00B0EC();
    v15 = v11 == 0x6C43657461657263 && v13 == 0xEC000000746E6569;
    if (v15 || (sub_26C00AF2C() & 1) != 0)
    {

      __swift_project_boxed_opaque_existential_1(v29, v30);
      v27 = &type metadata for CreateClientAction;
      v28 = sub_26BEF71F0();
      *&v26 = swift_allocObject();
      sub_26BEF5318();
    }

    else
    {
      v16 = v11 == 0x7247657461657263 && v13 == 0xEB0000000070756FLL;
      v17 = v33;
      if (v16 || (sub_26C00AF2C() & 1) != 0)
      {

        __swift_project_boxed_opaque_existential_1(v29, v30);
        v27 = &type metadata for CreateGroupAction;
        v28 = sub_26BEF719C();
        *&v26 = swift_allocObject();
        sub_26BEF53EC();
      }

      else
      {
        v18 = v11 == 6579297 && v13 == 0xE300000000000000;
        if (v18 || (sub_26C00AF2C() & 1) != 0)
        {

          __swift_project_boxed_opaque_existential_1(v29, v30);
          v27 = &type metadata for AddAction;
          v28 = sub_26BEF70F0();
          *&v26 = swift_allocObject();
          sub_26BEF54C0();
        }

        else
        {
          v22 = v11 == 0x65766F6D6572 && v13 == 0xE600000000000000;
          if (v22 || (sub_26C00AF2C() & 1) != 0)
          {

            __swift_project_boxed_opaque_existential_1(v29, v30);
            v27 = &type metadata for RemoveAction;
            v28 = sub_26BEF7040();
            *&v26 = swift_allocObject();
            sub_26BEF5594();
          }

          else
          {
            if (v11 == 0xD000000000000010 && 0x800000026C02C630 == v13 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for PrintGroupStatesAction;
              v28 = sub_26BEF6FEC();
              sub_26BEF5668();
              sub_26C00AF3C();
              (*(v17 + 8))(v9, v5);
              goto LABEL_21;
            }

            if (v11 == 0x7373654D646E6573 && v13 == 0xEB00000000656761 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for SendMessageAction;
              v28 = sub_26BEF6F48();
              *&v26 = swift_allocObject();
              sub_26BEF573C();
            }

            else if (v11 == 0x7247796669726576 && v13 == 0xEB0000000070756FLL || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for VerifyGroupAction;
              v28 = sub_26BEF6EF4();
              sub_26BEF5810();
            }

            else if (v11 == 0x636E79736572 && v13 == 0xE600000000000000 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for ResyncAction;
              v28 = sub_26BEF6EA0();
              *&v26 = swift_allocObject();
              sub_26BEF58E4();
            }

            else if (v11 == 0x4D65766965636572 && v13 == 0xEE00656761737365 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for ReceiveMessageAction;
              v28 = sub_26BEF6E4C();
              *&v26 = swift_allocObject();
              sub_26BEF5B60();
            }

            else if (v11 == 0x74696D6D6F63 && v13 == 0xE600000000000000 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for CommitAction;
              v28 = sub_26BEF6DF8();
              *&v26 = swift_allocObject();
              sub_26BEF59B8();
            }

            else if (v11 == 0x4352657461657263 && v13 == 0xEF746E65696C4353 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for CreateRCSClientAction;
              v28 = sub_26BEF6DA4();
              *&v26 = swift_allocObject();
              sub_26BEF5C34();
            }

            else if (v11 == 0x525343746567 && v13 == 0xE600000000000000 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for GetCSRAction;
              v28 = sub_26BEF6D50();
              *&v26 = swift_allocObject();
              sub_26BEF5D08();
            }

            else if (v11 == 0x5253436E676973 && v13 == 0xE700000000000000 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for SignCSRAction;
              v28 = sub_26BEF6CFC();
              *&v26 = swift_allocObject();
              sub_26BEF5DDC();
            }

            else if (v11 == 0xD000000000000011 && 0x800000026C02C650 == v13 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for LoadRCSCredentialAction;
              v28 = sub_26BEF6CA8();
              *&v26 = swift_allocObject();
              sub_26BEF5EB0();
            }

            else if (v11 == 0x7247534352746573 && v13 == 0xEF656D614E70756FLL || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for SetRCSGroupNameAction;
              v28 = sub_26BEF6C50();
              *&v26 = swift_allocObject();
              sub_26BEF5F84();
            }

            else if (v11 == 0xD000000000000014 && 0x800000026C02C670 == v13 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for DeleteParticipantKeyAction;
              v28 = sub_26BEF6BF8();
              *&v26 = swift_allocObject();
              sub_26BEF6058();
            }

            else if (v11 == 0xD00000000000001BLL && 0x800000026C02C690 == v13 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for CheckIfParticipantKeyRolledAction;
              v28 = sub_26BEF6B5C();
              *&v26 = swift_allocObject();
              sub_26BEF612C();
            }

            else if (v11 == 0x654E657461657263 && v13 == 0xEC00000061724577 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for CreateNewEraAction;
              v28 = sub_26BEF6AC0();
              *&v26 = swift_allocObject();
              sub_26BEF6200();
            }

            else if (v11 == 0x72756769666E6F63 && v13 == 0xED00006E6F697461 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for ConfigurationAction;
              v28 = sub_26BEF6A6C();
              sub_26BEF62D4();
            }

            else if (v11 == 0x6F6D6552666C6573 && v13 == 0xEA00000000006576 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for SelfRemoveAction;
              v28 = sub_26BEF6A18();
              *&v26 = swift_allocObject();
              sub_26BEF5A8C();
            }

            else if (v11 == 0x6574616C756D6973 && v13 == 0xEC000000656D6954 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for SimulateTimeAction;
              v28 = sub_26BEF69C4();
              sub_26BEF6550();
            }

            else if (v11 == 0xD000000000000018 && 0x800000026C02C6B0 == v13 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for ReplaceExpiredCredentialAction;
              v28 = sub_26BEF696C();
              *&v26 = swift_allocObject();
              sub_26BEF6624();
            }

            else if (v11 == 1702257011 && v13 == 0xE400000000000000 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for SaveAction;
              v28 = sub_26BEF6918();
              sub_26BEF63A8();
            }

            else if (v11 == 1684107116 && v13 == 0xE400000000000000 || (sub_26C00AF2C() & 1) != 0)
            {

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for LoadAction;
              v28 = sub_26BEF68BC();
              *&v26 = swift_allocObject();
              sub_26BEF647C();
            }

            else
            {
              if (v11 == 0x6369646F69726570 && v13 == 0xEF70756E61656C43)
              {
              }

              else
              {
                v23 = sub_26C00AF2C();

                if ((v23 & 1) == 0)
                {
                  sub_26BE773C4();
                  swift_allocError();
                  *v24 = 0;
                  v24[1] = 0;
                  swift_willThrow();
                  (*(v33 + 8))(v9, v5);
                  __swift_destroy_boxed_opaque_existential_1(v29);
                  return __swift_destroy_boxed_opaque_existential_1(a1);
                }
              }

              __swift_project_boxed_opaque_existential_1(v29, v30);
              v27 = &type metadata for PeriodicCleanupAction;
              v28 = sub_26BEF6830();
              *&v26 = swift_allocObject();
              sub_26BEF6734();
            }
          }
        }
      }
    }

    sub_26C00AF3C();
    (*(v33 + 8))(v9, v5);
LABEL_21:
    sub_26BE03890(&v26, v31);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v19 = v31[1];
    v20 = v25;
    *v25 = v31[0];
    v20[1] = v19;
    *(v20 + 4) = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26BEF47A0()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 16);
  return sub_26C00A3AC();
}

uint64_t parseActions(jsonString:)()
{
  v1 = sub_26C00A4EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00A4CC();
  v6 = sub_26C00A49C();
  v8 = v7;
  result = (*(v2 + 8))(v5, v1);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v10 = sub_26C008DBC();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_26C008DAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2C8, &unk_26C01A8F0);
    sub_26BEF4A8C();
    v14 = v13;
    sub_26C008D9C();
    if (v0)
    {

      sub_26BE136AC(v6, v8);
    }

    else
    {
      v15 = *&v23[0];
      v16 = *(*&v23[0] + 16);
      if (v16)
      {
        v21 = v6;
        v24 = MEMORY[0x277D84F90];
        sub_26BECBAD4(0, v16, 0);
        v14 = v24;
        v20 = v15;
        v17 = v15 + 32;
        do
        {
          sub_26BEF4B64(v17, v22);
          sub_26BE03890(v22, v23);
          v24 = v14;
          v19 = *(v14 + 16);
          v18 = *(v14 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_26BECBAD4((v18 > 1), v19 + 1, 1);
            v14 = v24;
          }

          *(v14 + 16) = v19 + 1;
          sub_26BE03890(v23, v14 + 40 * v19 + 32);
          v17 += 40;
          --v16;
        }

        while (v16);

        sub_26BE136AC(v21, v8);
      }

      else
      {

        sub_26BE136AC(v6, v8);
        return MEMORY[0x277D84F90];
      }
    }

    return v14;
  }

  return result;
}

unint64_t sub_26BEF4A8C()
{
  result = qword_28045F2D0;
  if (!qword_28045F2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045F2C8, &unk_26C01A8F0);
    sub_26BEF4B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F2D0);
  }

  return result;
}

unint64_t sub_26BEF4B10()
{
  result = qword_28045F2D8;
  if (!qword_28045F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F2D8);
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

uint64_t sub_26BEF4BB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_26BEF4BF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurationAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_26BEF4D64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26BEF4DB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26BEF4E2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_26BEF4E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BEF4F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_26BEF4FD0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26BEF5020(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_26BEF5068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BEF50D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_26BEF5120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BEF5180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_26BEF51C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26BEF524C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26BEF5294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26BEF5318()
{
  result = qword_28045F2E0;
  if (!qword_28045F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F2E0);
  }

  return result;
}

unint64_t sub_26BEF536C()
{
  result = qword_28045F2E8;
  if (!qword_28045F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F2E8);
  }

  return result;
}

unint64_t sub_26BEF53EC()
{
  result = qword_28045F2F0;
  if (!qword_28045F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F2F0);
  }

  return result;
}

unint64_t sub_26BEF5440()
{
  result = qword_28045F2F8;
  if (!qword_28045F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F2F8);
  }

  return result;
}

unint64_t sub_26BEF54C0()
{
  result = qword_28045F300;
  if (!qword_28045F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F300);
  }

  return result;
}

unint64_t sub_26BEF5514()
{
  result = qword_28045F308;
  if (!qword_28045F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F308);
  }

  return result;
}

unint64_t sub_26BEF5594()
{
  result = qword_28045F310;
  if (!qword_28045F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F310);
  }

  return result;
}

unint64_t sub_26BEF55E8()
{
  result = qword_28045F318;
  if (!qword_28045F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F318);
  }

  return result;
}

unint64_t sub_26BEF5668()
{
  result = qword_28045F320;
  if (!qword_28045F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F320);
  }

  return result;
}

unint64_t sub_26BEF56BC()
{
  result = qword_28045F328;
  if (!qword_28045F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F328);
  }

  return result;
}

unint64_t sub_26BEF573C()
{
  result = qword_28045F330;
  if (!qword_28045F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F330);
  }

  return result;
}

unint64_t sub_26BEF5790()
{
  result = qword_28045F338;
  if (!qword_28045F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F338);
  }

  return result;
}

unint64_t sub_26BEF5810()
{
  result = qword_28045F340;
  if (!qword_28045F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F340);
  }

  return result;
}

unint64_t sub_26BEF5864()
{
  result = qword_28045F348;
  if (!qword_28045F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F348);
  }

  return result;
}

unint64_t sub_26BEF58E4()
{
  result = qword_28045F350;
  if (!qword_28045F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F350);
  }

  return result;
}

unint64_t sub_26BEF5938()
{
  result = qword_28045F358;
  if (!qword_28045F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F358);
  }

  return result;
}

unint64_t sub_26BEF59B8()
{
  result = qword_28045F360;
  if (!qword_28045F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F360);
  }

  return result;
}

unint64_t sub_26BEF5A0C()
{
  result = qword_28045F368;
  if (!qword_28045F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F368);
  }

  return result;
}

unint64_t sub_26BEF5A8C()
{
  result = qword_28045F370;
  if (!qword_28045F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F370);
  }

  return result;
}

unint64_t sub_26BEF5AE0()
{
  result = qword_28045F378;
  if (!qword_28045F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F378);
  }

  return result;
}

unint64_t sub_26BEF5B60()
{
  result = qword_28045F380;
  if (!qword_28045F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F380);
  }

  return result;
}

unint64_t sub_26BEF5BB4()
{
  result = qword_28045F388;
  if (!qword_28045F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F388);
  }

  return result;
}

unint64_t sub_26BEF5C34()
{
  result = qword_28045F390;
  if (!qword_28045F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F390);
  }

  return result;
}

unint64_t sub_26BEF5C88()
{
  result = qword_28045F398;
  if (!qword_28045F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F398);
  }

  return result;
}

unint64_t sub_26BEF5D08()
{
  result = qword_28045F3A0;
  if (!qword_28045F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F3A0);
  }

  return result;
}

unint64_t sub_26BEF5D5C()
{
  result = qword_28045F3A8;
  if (!qword_28045F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F3A8);
  }

  return result;
}

unint64_t sub_26BEF5DDC()
{
  result = qword_28045F3B0;
  if (!qword_28045F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F3B0);
  }

  return result;
}

unint64_t sub_26BEF5E30()
{
  result = qword_28045F3B8;
  if (!qword_28045F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F3B8);
  }

  return result;
}

unint64_t sub_26BEF5EB0()
{
  result = qword_28045F3C0;
  if (!qword_28045F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F3C0);
  }

  return result;
}

unint64_t sub_26BEF5F04()
{
  result = qword_28045F3C8;
  if (!qword_28045F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F3C8);
  }

  return result;
}

unint64_t sub_26BEF5F84()
{
  result = qword_28045F3D0;
  if (!qword_28045F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F3D0);
  }

  return result;
}

unint64_t sub_26BEF5FD8()
{
  result = qword_28045F3D8;
  if (!qword_28045F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F3D8);
  }

  return result;
}

unint64_t sub_26BEF6058()
{
  result = qword_28045F3E0;
  if (!qword_28045F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F3E0);
  }

  return result;
}

unint64_t sub_26BEF60AC()
{
  result = qword_28045F3E8;
  if (!qword_28045F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F3E8);
  }

  return result;
}

unint64_t sub_26BEF612C()
{
  result = qword_28045F3F0;
  if (!qword_28045F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F3F0);
  }

  return result;
}

unint64_t sub_26BEF6180()
{
  result = qword_28045F3F8;
  if (!qword_28045F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F3F8);
  }

  return result;
}

unint64_t sub_26BEF6200()
{
  result = qword_28045F400;
  if (!qword_28045F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F400);
  }

  return result;
}

unint64_t sub_26BEF6254()
{
  result = qword_28045F408;
  if (!qword_28045F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F408);
  }

  return result;
}

unint64_t sub_26BEF62D4()
{
  result = qword_28045F410;
  if (!qword_28045F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F410);
  }

  return result;
}

unint64_t sub_26BEF6328()
{
  result = qword_28045F418;
  if (!qword_28045F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F418);
  }

  return result;
}

unint64_t sub_26BEF63A8()
{
  result = qword_28045F420;
  if (!qword_28045F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F420);
  }

  return result;
}

unint64_t sub_26BEF63FC()
{
  result = qword_28045F428;
  if (!qword_28045F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F428);
  }

  return result;
}

unint64_t sub_26BEF647C()
{
  result = qword_28045F430;
  if (!qword_28045F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F430);
  }

  return result;
}

unint64_t sub_26BEF64D0()
{
  result = qword_28045F438;
  if (!qword_28045F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F438);
  }

  return result;
}

unint64_t sub_26BEF6550()
{
  result = qword_28045F440;
  if (!qword_28045F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F440);
  }

  return result;
}

unint64_t sub_26BEF65A4()
{
  result = qword_28045F448;
  if (!qword_28045F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F448);
  }

  return result;
}

unint64_t sub_26BEF6624()
{
  result = qword_28045F450;
  if (!qword_28045F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F450);
  }

  return result;
}

unint64_t sub_26BEF6678()
{
  result = qword_28045F458;
  if (!qword_28045F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F458);
  }

  return result;
}

uint64_t sub_26BEF66F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26BEF6734()
{
  result = qword_28045F460;
  if (!qword_28045F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F460);
  }

  return result;
}

unint64_t sub_26BEF6788()
{
  result = qword_28045F468;
  if (!qword_28045F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F468);
  }

  return result;
}

unint64_t sub_26BEF67DC()
{
  result = qword_28045F478;
  if (!qword_28045F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F478);
  }

  return result;
}

unint64_t sub_26BEF6830()
{
  result = qword_28045F480;
  if (!qword_28045F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F480);
  }

  return result;
}

uint64_t sub_26BEF6884()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

unint64_t sub_26BEF68BC()
{
  result = qword_28045F488;
  if (!qword_28045F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F488);
  }

  return result;
}

unint64_t sub_26BEF6918()
{
  result = qword_28045F490;
  if (!qword_28045F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F490);
  }

  return result;
}

unint64_t sub_26BEF696C()
{
  result = qword_28045F498;
  if (!qword_28045F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F498);
  }

  return result;
}

unint64_t sub_26BEF69C4()
{
  result = qword_28045F4A0;
  if (!qword_28045F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F4A0);
  }

  return result;
}

unint64_t sub_26BEF6A18()
{
  result = qword_28045F4A8;
  if (!qword_28045F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F4A8);
  }

  return result;
}

unint64_t sub_26BEF6A6C()
{
  result = qword_28045F4B0;
  if (!qword_28045F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F4B0);
  }

  return result;
}

unint64_t sub_26BEF6AC0()
{
  result = qword_28045F4B8;
  if (!qword_28045F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F4B8);
  }

  return result;
}

uint64_t objectdestroy_153Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_26BEF6B5C()
{
  result = qword_28045F4C0;
  if (!qword_28045F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F4C0);
  }

  return result;
}

uint64_t sub_26BEF6BB0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

unint64_t sub_26BEF6BF8()
{
  result = qword_28045F4C8;
  if (!qword_28045F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F4C8);
  }

  return result;
}

unint64_t sub_26BEF6C50()
{
  result = qword_28045F4D0;
  if (!qword_28045F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F4D0);
  }

  return result;
}

unint64_t sub_26BEF6CA8()
{
  result = qword_28045F4D8;
  if (!qword_28045F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F4D8);
  }

  return result;
}

unint64_t sub_26BEF6CFC()
{
  result = qword_28045F4E0;
  if (!qword_28045F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F4E0);
  }

  return result;
}

unint64_t sub_26BEF6D50()
{
  result = qword_28045F4E8;
  if (!qword_28045F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F4E8);
  }

  return result;
}

unint64_t sub_26BEF6DA4()
{
  result = qword_28045F4F0;
  if (!qword_28045F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F4F0);
  }

  return result;
}

unint64_t sub_26BEF6DF8()
{
  result = qword_28045F4F8;
  if (!qword_28045F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F4F8);
  }

  return result;
}

unint64_t sub_26BEF6E4C()
{
  result = qword_28045F500;
  if (!qword_28045F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F500);
  }

  return result;
}

unint64_t sub_26BEF6EA0()
{
  result = qword_28045F508;
  if (!qword_28045F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F508);
  }

  return result;
}

unint64_t sub_26BEF6EF4()
{
  result = qword_28045F510;
  if (!qword_28045F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F510);
  }

  return result;
}

unint64_t sub_26BEF6F48()
{
  result = qword_28045F518;
  if (!qword_28045F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F518);
  }

  return result;
}

uint64_t objectdestroy_175Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_26BEF6FEC()
{
  result = qword_28045F520;
  if (!qword_28045F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F520);
  }

  return result;
}

unint64_t sub_26BEF7040()
{
  result = qword_28045F528;
  if (!qword_28045F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F528);
  }

  return result;
}

uint64_t objectdestroy_148Tm(uint64_t a1)
{
  v3 = v1[3];

  v4 = v1[5];

  v5 = v1[7];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_26BEF70F0()
{
  result = qword_28045F530;
  if (!qword_28045F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F530);
  }

  return result;
}

uint64_t sub_26BEF7144()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

unint64_t sub_26BEF719C()
{
  result = qword_28045F538;
  if (!qword_28045F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F538);
  }

  return result;
}

unint64_t sub_26BEF71F0()
{
  result = qword_28045F540;
  if (!qword_28045F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F540);
  }

  return result;
}

uint64_t objectdestroy_171Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26BEF7284(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65626D654D77656ELL && a2 == 0xE900000000000072 || (sub_26C00AF2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4952556C6574 && a2 == 0xE600000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000026C02C790 == a2 || (sub_26C00AF2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616B63615079656BLL && a2 == 0xED00007865486567)
  {

    return 5;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BEF748C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F768, &qword_26C01BA70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFB010();
  sub_26C00B0FC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v40[0]) = 0;
    v11 = sub_26C00AE1C();
    v13 = v12;
    LOBYTE(v40[0]) = 1;
    v31 = sub_26C00AE1C();
    v33 = v14;
    LOBYTE(v40[0]) = 2;
    v15 = sub_26C00AE1C();
    v32 = v16;
    v29 = v15;
    LOBYTE(v40[0]) = 3;
    v30 = 0;
    *&v28 = sub_26C00ADEC();
    *(&v28 + 1) = v17;
    LOBYTE(v40[0]) = 4;
    v44 = sub_26C00ADFC();
    v45 = 5;
    v18 = sub_26C00ADEC();
    v19 = *(v6 + 8);
    v20 = v18;
    v30 = v21;
    v19(v9, v5);
    *&v34 = v11;
    *(&v34 + 1) = v13;
    *&v35 = v31;
    v22 = v33;
    *(&v35 + 1) = v33;
    *&v36 = v29;
    *(&v36 + 1) = v32;
    v37 = v28;
    v23 = *(&v28 + 1);
    LOBYTE(v38) = v44;
    v24 = v30;
    *(&v38 + 1) = v20;
    v39 = v30;
    sub_26BEFB064(&v34, v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40[0] = v11;
    v40[1] = v13;
    v40[2] = v31;
    v40[3] = v22;
    v40[4] = v29;
    v40[5] = v32;
    v40[6] = v28;
    v40[7] = v23;
    v41 = v44;
    v42 = v20;
    v43 = v24;
    result = sub_26BEFB09C(v40);
    v26 = v37;
    *(a2 + 32) = v36;
    *(a2 + 48) = v26;
    *(a2 + 64) = v38;
    *(a2 + 80) = v39;
    v27 = v35;
    *a2 = v34;
    *(a2 + 16) = v27;
  }

  return result;
}

uint64_t sub_26BEF78B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D6465766F6D6572 && a2 == 0xED00007265626D65 || (sub_26C00AF2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265767265537369 && a2 == 0xEE0065766F6D6552)
  {

    return 3;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BEF7A24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F750, &qword_26C01BA60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAFBC();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  v11 = sub_26C00AE1C();
  v27 = v12;
  v30 = 1;
  v13 = sub_26C00AE1C();
  v26 = v14;
  v24 = v13;
  v29 = 2;
  v23 = sub_26C00AE1C();
  v25 = v15;
  v28 = 3;
  v16 = sub_26C00ADFC();
  (*(v6 + 8))(v9, v5);
  v17 = v27;

  v18 = v26;

  v19 = v25;

  __swift_destroy_boxed_opaque_existential_1(a1);

  *a2 = v11;
  *(a2 + 8) = v17;
  v21 = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = v18;
  *(a2 + 32) = v21;
  *(a2 + 40) = v19;
  *(a2 + 48) = v16;
  return result;
}

uint64_t sub_26BEF7D04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026C02C770 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BEF7E68@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F720, &qword_26C01BA40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAEAC();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_26C00AE1C();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_26C00AE1C();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_26C00AE1C();
  v27 = v15;
  v35 = 3;
  v16 = sub_26C00ADEC();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_26BEFAF00(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_26BEFAF38(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

uint64_t sub_26BEF815C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F708, &qword_26C01BA30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAE58();
  sub_26C00B0FC();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_26C00AE1C();
    v10[14] = 1;
    sub_26C00ADFC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_26BEF8334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4673726F68636E61 && a2 == 0xEF68746170656C69 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026C02C730 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BEF8458(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4952556C6574 && a2 == 0xE600000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70656C6946727363 && a2 == 0xEB00000000687461)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BEF856C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70656C6946727363 && a2 == 0xEB00000000687461 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C6946746F6F72 && a2 == 0xEC00000068746170 || (sub_26C00AF2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026C02C750 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BEF86DC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F660, &qword_26C01B9C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFABA4();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_26C00AE1C();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_26C00AE1C();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_26C00AE1C();
  v27 = v15;
  v35 = 3;
  v16 = sub_26C00AE1C();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_26BEFABF8(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_26BEFAC30(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

uint64_t sub_26BEF89D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4952556C6574 && a2 == 0xE600000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69467374726563 && a2 == 0xED00006874617065)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BEF8AE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E77656ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E74707572726F63 && a2 == 0xEE00726F46656D61)
  {

    return 3;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BEF8C4C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F630, &qword_26C01B9A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFAA94();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_26C00AE1C();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_26C00AE1C();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_26C00AE1C();
  v27 = v15;
  v35 = 3;
  v16 = sub_26C00ADEC();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_26BEFAAE8(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_26BEFAB20(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

uint64_t sub_26BEF8F40(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v7 - 8);
  v8 = *(v15 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  a4();
  sub_26C00B0FC();
  if (!v4)
  {
    v12 = v15;
    v17 = 0;
    v11 = sub_26C00AE1C();
    v16 = 1;
    sub_26C00AE1C();
    (*(v12 + 8))(v10, v7);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_26BEF9130(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6386277 && a2 == 0xE300000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x444968636F7065 && a2 == 0xE700000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4952556C6574 && a2 == 0xE600000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6465746365707865 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BEF9320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F600, &qword_26C01B980);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA984();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  v11 = sub_26C00AE1C();
  v13 = v12;
  v14 = v11;
  LOBYTE(v35[0]) = 1;
  *&v29 = sub_26C00AE1C();
  *(&v29 + 1) = v15;
  LOBYTE(v35[0]) = 2;
  v42 = sub_26C00AE5C();
  LOBYTE(v35[0]) = 3;
  v27 = sub_26C00AE4C();
  LOBYTE(v35[0]) = 4;
  v26 = sub_26C00AE1C();
  v28 = v16;
  v43 = 5;
  v17 = sub_26C00AE2C();
  (*(v6 + 8))(v9, v5);
  v25 = v17 & 1;
  *&v30 = v14;
  *(&v30 + 1) = v13;
  v18 = v29;
  v31 = v29;
  v19 = v42;
  LODWORD(v32) = v42;
  *(&v32 + 1) = v27;
  *&v33 = v26;
  v20 = v28;
  *(&v33 + 1) = v28;
  v34 = v25;
  sub_26BEFA9D8(&v30, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v14;
  v35[1] = v13;
  v36 = v18;
  v37 = v19;
  v38 = v27;
  v39 = v26;
  v40 = v20;
  v41 = v25;
  result = sub_26BEFAA10(v35);
  v22 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v22;
  *(a2 + 64) = v34;
  v23 = v31;
  *a2 = v30;
  *(a2 + 16) = v23;
  return result;
}

uint64_t sub_26BEF96A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5473746E65696C63 && a2 == 0xEE0064644165526FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BEF97C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657474696D6D6F63 && a2 == 0xE900000000000072)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BEF98D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026C02C710 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BEF99F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v26 = a5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v27);
  v11 = &v23 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_26C00B0FC();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v8;
  v14 = v26;
  v31 = 0;
  v15 = sub_26C00AE1C();
  v17 = v16;
  v25 = v15;
  v30 = 1;
  v18 = sub_26C00AE1C();
  v24 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  v29 = 2;
  sub_26BEFA774(&qword_28045F570);
  sub_26C00AE3C();
  (*(v13 + 8))(v11, v27);
  v20 = v28;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v22 = v24;
  *v14 = v25;
  v14[1] = v17;
  v14[2] = v18;
  v14[3] = v22;
  v14[4] = v20;
  return result;
}

uint64_t sub_26BEF9C90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C69466574617473 && a2 == 0xED00006874617065;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4673726F68636E61 && a2 == 0xEF68746170656C69 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026C02C730 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BEF9DC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v30 = a5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v26 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_26C00B0FC();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v8;
  v14 = v30;
  v15 = v31;
  v34 = 0;
  v16 = sub_26C00AE1C();
  v18 = v17;
  v29 = v16;
  v33 = 1;
  v27 = sub_26C00AE1C();
  v28 = v19;
  v32 = 2;
  v20 = sub_26C00ADEC();
  v21 = v11;
  v23 = v22;
  (*(v13 + 8))(v21, v15);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v14 = v29;
  v14[1] = v18;
  v25 = v28;
  v14[2] = v27;
  v14[3] = v25;
  v14[4] = v20;
  v14[5] = v23;
  return result;
}

uint64_t sub_26BEFA014(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x486567617373656DLL && a2 == 0xEA00000000007865)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BEFA12C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v30 = a5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v26 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_26C00B0FC();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v8;
  v14 = v30;
  v15 = v31;
  v34 = 0;
  v16 = sub_26C00AE1C();
  v18 = v17;
  v29 = v16;
  v33 = 1;
  v27 = sub_26C00AE1C();
  v28 = v19;
  v32 = 2;
  v20 = sub_26C00AE1C();
  v21 = v11;
  v23 = v22;
  (*(v13 + 8))(v21, v15);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v14 = v29;
  v14[1] = v18;
  v25 = v28;
  v14[2] = v27;
  v14[3] = v25;
  v14[4] = v20;
  v14[5] = v23;
  return result;
}

uint64_t sub_26BEFA380(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026C02C6D0 == a2 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026C02C6F0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C00AF2C();

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

uint64_t sub_26BEFA4A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F548, &qword_26C01B908);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BEFA6CC();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_26C00AE1C();
  v13 = v12;
  v14 = v11;
  v26 = 1;
  v15 = sub_26C00AE0C();
  v24 = v16;
  v23 = v15;
  v25 = 2;
  v17 = sub_26C00AE0C();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v23;
  *(a2 + 24) = v24 & 1;
  *(a2 + 32) = v17;
  *(a2 + 40) = v20 & 1;
  return result;
}

unint64_t sub_26BEFA6CC()
{
  result = qword_28045F550;
  if (!qword_28045F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F550);
  }

  return result;
}

unint64_t sub_26BEFA720()
{
  result = qword_28045F568;
  if (!qword_28045F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F568);
  }

  return result;
}

uint64_t sub_26BEFA774(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E4B0, &qword_26C00ECE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BEFA7E0()
{
  result = qword_28045F590;
  if (!qword_28045F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F590);
  }

  return result;
}

unint64_t sub_26BEFA834()
{
  result = qword_28045F5A8;
  if (!qword_28045F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F5A8);
  }

  return result;
}

unint64_t sub_26BEFA888()
{
  result = qword_28045F5C0;
  if (!qword_28045F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F5C0);
  }

  return result;
}

unint64_t sub_26BEFA8DC()
{
  result = qword_28045F5D8;
  if (!qword_28045F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F5D8);
  }

  return result;
}

unint64_t sub_26BEFA930()
{
  result = qword_28045F5F0;
  if (!qword_28045F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F5F0);
  }

  return result;
}

unint64_t sub_26BEFA984()
{
  result = qword_28045F608;
  if (!qword_28045F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F608);
  }

  return result;
}

unint64_t sub_26BEFAA40()
{
  result = qword_28045F620;
  if (!qword_28045F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F620);
  }

  return result;
}

unint64_t sub_26BEFAA94()
{
  result = qword_28045F638;
  if (!qword_28045F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F638);
  }

  return result;
}

unint64_t sub_26BEFAB50()
{
  result = qword_28045F650;
  if (!qword_28045F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F650);
  }

  return result;
}

unint64_t sub_26BEFABA4()
{
  result = qword_28045F668;
  if (!qword_28045F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F668);
  }

  return result;
}

unint64_t sub_26BEFAC60()
{
  result = qword_28045F680;
  if (!qword_28045F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F680);
  }

  return result;
}

unint64_t sub_26BEFACB4()
{
  result = qword_28045F698;
  if (!qword_28045F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F698);
  }

  return result;
}

unint64_t sub_26BEFAD08()
{
  result = qword_28045F6B0;
  if (!qword_28045F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F6B0);
  }

  return result;
}

unint64_t sub_26BEFAD5C()
{
  result = qword_28045F6C8;
  if (!qword_28045F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F6C8);
  }

  return result;
}

unint64_t sub_26BEFADB0()
{
  result = qword_28045F6E0;
  if (!qword_28045F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F6E0);
  }

  return result;
}

unint64_t sub_26BEFAE04()
{
  result = qword_28045F6F8;
  if (!qword_28045F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F6F8);
  }

  return result;
}

unint64_t sub_26BEFAE58()
{
  result = qword_28045F710;
  if (!qword_28045F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F710);
  }

  return result;
}

unint64_t sub_26BEFAEAC()
{
  result = qword_28045F728;
  if (!qword_28045F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F728);
  }

  return result;
}

unint64_t sub_26BEFAF68()
{
  result = qword_28045F740;
  if (!qword_28045F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F740);
  }

  return result;
}

unint64_t sub_26BEFAFBC()
{
  result = qword_28045F758;
  if (!qword_28045F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F758);
  }

  return result;
}

unint64_t sub_26BEFB010()
{
  result = qword_28045F770;
  if (!qword_28045F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F770);
  }

  return result;
}

unint64_t sub_26BEFB0CC()
{
  result = qword_28045F788;
  if (!qword_28045F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F788);
  }

  return result;
}

unint64_t sub_26BEFB120()
{
  result = qword_28045F7A0;
  if (!qword_28045F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F7A0);
  }

  return result;
}

unint64_t sub_26BEFB328()
{
  result = qword_28045F7B0;
  if (!qword_28045F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F7B0);
  }

  return result;
}

unint64_t sub_26BEFB380()
{
  result = qword_28045F7B8;
  if (!qword_28045F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F7B8);
  }

  return result;
}

unint64_t sub_26BEFB3D8()
{
  result = qword_28045F7C0;
  if (!qword_28045F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F7C0);
  }

  return result;
}

unint64_t sub_26BEFB430()
{
  result = qword_28045F7C8;
  if (!qword_28045F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F7C8);
  }

  return result;
}

unint64_t sub_26BEFB488()
{
  result = qword_28045F7D0;
  if (!qword_28045F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F7D0);
  }

  return result;
}

unint64_t sub_26BEFB4E0()
{
  result = qword_28045F7D8;
  if (!qword_28045F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F7D8);
  }

  return result;
}

unint64_t sub_26BEFB538()
{
  result = qword_28045F7E0;
  if (!qword_28045F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F7E0);
  }

  return result;
}

unint64_t sub_26BEFB590()
{
  result = qword_28045F7E8;
  if (!qword_28045F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F7E8);
  }

  return result;
}

unint64_t sub_26BEFB5E8()
{
  result = qword_28045F7F0;
  if (!qword_28045F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F7F0);
  }

  return result;
}

unint64_t sub_26BEFB640()
{
  result = qword_28045F7F8;
  if (!qword_28045F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F7F8);
  }

  return result;
}

unint64_t sub_26BEFB698()
{
  result = qword_28045F800;
  if (!qword_28045F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F800);
  }

  return result;
}

unint64_t sub_26BEFB6F0()
{
  result = qword_28045F808;
  if (!qword_28045F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F808);
  }

  return result;
}

unint64_t sub_26BEFB748()
{
  result = qword_28045F810;
  if (!qword_28045F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F810);
  }

  return result;
}

unint64_t sub_26BEFB7A0()
{
  result = qword_28045F818;
  if (!qword_28045F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F818);
  }

  return result;
}

unint64_t sub_26BEFB7F8()
{
  result = qword_28045F820;
  if (!qword_28045F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F820);
  }

  return result;
}

unint64_t sub_26BEFB850()
{
  result = qword_28045F828;
  if (!qword_28045F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F828);
  }

  return result;
}

unint64_t sub_26BEFB8A8()
{
  result = qword_28045F830;
  if (!qword_28045F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F830);
  }

  return result;
}

unint64_t sub_26BEFB900()
{
  result = qword_28045F838;
  if (!qword_28045F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F838);
  }

  return result;
}

unint64_t sub_26BEFB958()
{
  result = qword_28045F840;
  if (!qword_28045F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F840);
  }

  return result;
}

unint64_t sub_26BEFB9B0()
{
  result = qword_28045F848;
  if (!qword_28045F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F848);
  }

  return result;
}

unint64_t sub_26BEFBA08()
{
  result = qword_28045F850;
  if (!qword_28045F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F850);
  }

  return result;
}

unint64_t sub_26BEFBA60()
{
  result = qword_28045F858;
  if (!qword_28045F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F858);
  }

  return result;
}

unint64_t sub_26BEFBAB8()
{
  result = qword_28045F860;
  if (!qword_28045F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F860);
  }

  return result;
}

unint64_t sub_26BEFBB10()
{
  result = qword_28045F868;
  if (!qword_28045F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F868);
  }

  return result;
}

unint64_t sub_26BEFBB68()
{
  result = qword_28045F870;
  if (!qword_28045F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F870);
  }

  return result;
}

unint64_t sub_26BEFBBC0()
{
  result = qword_28045F878;
  if (!qword_28045F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F878);
  }

  return result;
}

unint64_t sub_26BEFBC18()
{
  result = qword_28045F880;
  if (!qword_28045F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F880);
  }

  return result;
}

unint64_t sub_26BEFBC70()
{
  result = qword_28045F888;
  if (!qword_28045F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F888);
  }

  return result;
}

unint64_t sub_26BEFBCC8()
{
  result = qword_28045F890;
  if (!qword_28045F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F890);
  }

  return result;
}

unint64_t sub_26BEFBD20()
{
  result = qword_28045F898;
  if (!qword_28045F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F898);
  }

  return result;
}

unint64_t sub_26BEFBD78()
{
  result = qword_28045F8A0;
  if (!qword_28045F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F8A0);
  }

  return result;
}

unint64_t sub_26BEFBDD0()
{
  result = qword_28045F8A8;
  if (!qword_28045F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F8A8);
  }

  return result;
}

unint64_t sub_26BEFBE28()
{
  result = qword_28045F8B0;
  if (!qword_28045F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F8B0);
  }

  return result;
}

unint64_t sub_26BEFBE80()
{
  result = qword_28045F8B8;
  if (!qword_28045F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F8B8);
  }

  return result;
}

unint64_t sub_26BEFBED8()
{
  result = qword_28045F8C0;
  if (!qword_28045F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F8C0);
  }

  return result;
}

unint64_t sub_26BEFBF30()
{
  result = qword_28045F8C8;
  if (!qword_28045F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F8C8);
  }

  return result;
}

unint64_t sub_26BEFBF88()
{
  result = qword_28045F8D0;
  if (!qword_28045F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F8D0);
  }

  return result;
}

unint64_t sub_26BEFBFE0()
{
  result = qword_28045F8D8;
  if (!qword_28045F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F8D8);
  }

  return result;
}

unint64_t sub_26BEFC038()
{
  result = qword_28045F8E0;
  if (!qword_28045F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F8E0);
  }

  return result;
}

unint64_t sub_26BEFC090()
{
  result = qword_28045F8E8;
  if (!qword_28045F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F8E8);
  }

  return result;
}

unint64_t sub_26BEFC0E8()
{
  result = qword_28045F8F0;
  if (!qword_28045F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F8F0);
  }

  return result;
}

unint64_t sub_26BEFC140()
{
  result = qword_28045F8F8;
  if (!qword_28045F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F8F8);
  }

  return result;
}

unint64_t sub_26BEFC198()
{
  result = qword_28045F900;
  if (!qword_28045F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F900);
  }

  return result;
}

unint64_t sub_26BEFC1F0()
{
  result = qword_28045F908;
  if (!qword_28045F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F908);
  }

  return result;
}

unint64_t sub_26BEFC248()
{
  result = qword_28045F910;
  if (!qword_28045F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F910);
  }

  return result;
}

unint64_t sub_26BEFC2A0()
{
  result = qword_28045F918;
  if (!qword_28045F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F918);
  }

  return result;
}

unint64_t sub_26BEFC2F8()
{
  result = qword_28045F920;
  if (!qword_28045F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F920);
  }

  return result;
}

unint64_t sub_26BEFC350()
{
  result = qword_28045F928;
  if (!qword_28045F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F928);
  }

  return result;
}

unint64_t sub_26BEFC3A8()
{
  result = qword_28045F930;
  if (!qword_28045F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F930);
  }

  return result;
}

unint64_t sub_26BEFC400()
{
  result = qword_28045F938;
  if (!qword_28045F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F938);
  }

  return result;
}

unint64_t sub_26BEFC458()
{
  result = qword_28045F940;
  if (!qword_28045F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F940);
  }

  return result;
}

unint64_t sub_26BEFC4B0()
{
  result = qword_28045F948;
  if (!qword_28045F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F948);
  }

  return result;
}

unint64_t sub_26BEFC508()
{
  result = qword_28045F950;
  if (!qword_28045F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F950);
  }

  return result;
}

unint64_t sub_26BEFC560()
{
  result = qword_28045F958;
  if (!qword_28045F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F958);
  }

  return result;
}

unint64_t sub_26BEFC5B8()
{
  result = qword_28045F960;
  if (!qword_28045F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F960);
  }

  return result;
}

unint64_t sub_26BEFC610()
{
  result = qword_28045F968;
  if (!qword_28045F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F968);
  }

  return result;
}

unint64_t sub_26BEFC668()
{
  result = qword_28045F970;
  if (!qword_28045F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F970);
  }

  return result;
}

unint64_t sub_26BEFC6C0()
{
  result = qword_28045F978;
  if (!qword_28045F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F978);
  }

  return result;
}

unint64_t sub_26BEFC718()
{
  result = qword_28045F980;
  if (!qword_28045F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F980);
  }

  return result;
}

unint64_t sub_26BEFC770()
{
  result = qword_28045F988;
  if (!qword_28045F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F988);
  }

  return result;
}

unint64_t sub_26BEFC7C8()
{
  result = qword_28045F990;
  if (!qword_28045F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F990);
  }

  return result;
}

unint64_t sub_26BEFC820()
{
  result = qword_28045F998;
  if (!qword_28045F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F998);
  }

  return result;
}

unint64_t sub_26BEFC878()
{
  result = qword_28045F9A0;
  if (!qword_28045F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F9A0);
  }

  return result;
}

unint64_t sub_26BEFC8D0()
{
  result = qword_28045F9A8;
  if (!qword_28045F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F9A8);
  }

  return result;
}

unint64_t sub_26BEFC928()
{
  result = qword_28045F9B0;
  if (!qword_28045F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F9B0);
  }

  return result;
}

unint64_t sub_26BEFC980()
{
  result = qword_28045F9B8;
  if (!qword_28045F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F9B8);
  }

  return result;
}

unint64_t sub_26BEFC9D8()
{
  result = qword_28045F9C0;
  if (!qword_28045F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F9C0);
  }

  return result;
}

unint64_t sub_26BEFCA30()
{
  result = qword_28045F9C8;
  if (!qword_28045F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F9C8);
  }

  return result;
}

unint64_t sub_26BEFCA88()
{
  result = qword_28045F9D0;
  if (!qword_28045F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F9D0);
  }

  return result;
}

unint64_t sub_26BEFCAE0()
{
  result = qword_28045F9D8;
  if (!qword_28045F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F9D8);
  }

  return result;
}

unint64_t sub_26BEFCB38()
{
  result = qword_28045F9E0;
  if (!qword_28045F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F9E0);
  }

  return result;
}

unint64_t sub_26BEFCB90()
{
  result = qword_28045F9E8;
  if (!qword_28045F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F9E8);
  }

  return result;
}

unint64_t sub_26BEFCBE8()
{
  result = qword_28045F9F0;
  if (!qword_28045F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F9F0);
  }

  return result;
}

unint64_t sub_26BEFCC40()
{
  result = qword_28045F9F8;
  if (!qword_28045F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F9F8);
  }

  return result;
}

unint64_t sub_26BEFCC98()
{
  result = qword_28045FA00;
  if (!qword_28045FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FA00);
  }

  return result;
}

unint64_t sub_26BEFCCF0()
{
  result = qword_28045FA08;
  if (!qword_28045FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FA08);
  }

  return result;
}

unint64_t sub_26BEFCD48()
{
  result = qword_28045FA10;
  if (!qword_28045FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FA10);
  }

  return result;
}

unint64_t sub_26BEFCDA0()
{
  result = qword_28045FA18;
  if (!qword_28045FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FA18);
  }

  return result;
}

uint64_t sub_26BEFCECC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t Runner.__allocating_init(actions:usePureSwift:validateCredentials:participantKey:)(uint64_t a1, char a2, char a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  v9 = MEMORY[0x277D84F90];
  *(v8 + 40) = sub_26C005C70(MEMORY[0x277D84F90]);
  *(v8 + 48) = sub_26C005C84(v9);
  *(v8 + 56) = sub_26C005C98(v9);
  *(v8 + 64) = 257;
  *(v8 + 66) = 1;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 16) = a1;
  *(v8 + 33) = a2;
  *(v8 + 34) = a3;
  *(v8 + 35) = a4;
  return v8;
}

uint64_t Runner.init(actions:usePureSwift:validateCredentials:participantKey:)(uint64_t a1, char a2, char a3, char a4)
{
  *(v4 + 24) = 0;
  *(v4 + 32) = 33686016;
  v9 = MEMORY[0x277D84F90];
  *(v4 + 40) = sub_26C005C70(MEMORY[0x277D84F90]);
  *(v4 + 48) = sub_26C005C84(v9);
  *(v4 + 56) = sub_26C005C98(v9);
  *(v4 + 64) = 257;
  *(v4 + 66) = 1;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 16) = a1;
  *(v4 + 33) = a2;
  *(v4 + 34) = a3;
  *(v4 + 35) = a4;
  return v4;
}

uint64_t sub_26BEFD100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = a4;
  v5[63] = v4;
  v5[60] = a2;
  v5[61] = a3;
  v5[59] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E458, &unk_26C00DAA0) - 8) + 64) + 15;
  v5[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BEFD1A4, 0, 0);
}

uint64_t sub_26BEFD1A4()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  swift_beginAccess();
  v3 = *(*(v1 + 40) + 16);
  swift_bridgeObjectRetain_n();
  if (v3)
  {
    v5 = *(v0 + 472);
    v4 = *(v0 + 480);

    sub_26BEBB618(v5, v4);
    if (v6)
    {
      v8 = *(v0 + 472);
      v7 = *(v0 + 480);

      swift_bridgeObjectRelease_n();
      sub_26C00AC1C();

      MEMORY[0x26D699090](v8, v7);
      MEMORY[0x26D699090](0x79646165726C6120, 0xEF73747369786520);
      v9 = 0x20746E65696C43;
      v10 = 0xE700000000000000;
LABEL_14:
      sub_26BE773C4();
      swift_allocError();
      *v22 = v9;
      v22[1] = v10;
      swift_willThrow();
      v23 = *(v0 + 512);

      v24 = *(v0 + 8);

      return v24();
    }
  }

  v11 = *(v0 + 488) == 0x6369736162 && *(v0 + 496) == 0xE500000000000000;
  if (!v11 && (sub_26C00AF2C() & 1) == 0)
  {
    v21 = *(v0 + 480);
    swift_bridgeObjectRelease_n();
    v9 = 0;
    v10 = 1;
    goto LABEL_14;
  }

  v13 = *(v0 + 504);
  v12 = *(v0 + 512);
  v15 = *(v0 + 472);
  v14 = *(v0 + 480);

  *(v0 + 520) = sub_26BE099A8(v15, v14);
  *(v0 + 528) = v16;
  type metadata accessor for MLS.Client.Client();
  static MLS.Client.Configuration.testConfiguration.getter(v0 + 16);
  *(v0 + 369) = *(v13 + 35);
  *(v0 + 288) = *(v13 + 64);
  v17 = sub_26C00928C();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = swift_task_alloc();
  *(v0 + 536) = v18;
  *v18 = v0;
  v18[1] = sub_26BEFD470;
  v19 = *(v0 + 512);

  return MLS.Client.Client.__allocating_init(configuration:withClientUUID:)(v0 + 16, v19);
}

uint64_t sub_26BEFD470(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 536);
  v8 = *v2;
  v3[68] = a1;
  v3[69] = v1;

  if (v1)
  {
    v5 = v3[60];
    swift_bridgeObjectRelease_n();
    v6 = sub_26BEFD9F8;
  }

  else
  {
    v6 = sub_26BEFD594;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BEFD594()
{
  v1 = v0[68];
  v2 = v0[66];
  v3 = v0[65];
  v4 = *(v0[63] + 33);
  v5 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  *(v1 + v5) = v4;
  v6 = swift_task_alloc();
  v0[70] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v2;
  v7 = swift_task_alloc();
  v0[71] = v7;
  *v7 = v0;
  v7[1] = sub_26BEFD6B0;
  v8 = v0[68];

  return sub_26BE19B8C(sub_26BE19B8C, &unk_26C01D8A8, v6);
}

uint64_t sub_26BEFD6B0()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *v1;
  v2[72] = v0;

  v5 = v2[70];
  if (v0)
  {
    v6 = v2[60];
    swift_bridgeObjectRelease_n();

    v7 = sub_26BEFD978;
  }

  else
  {

    v7 = sub_26BEFD7FC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BEFD7FC()
{
  v1 = v0[68];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[63];
  v14 = v0[64];
  v6 = v0[59];
  v5 = v0[60];
  swift_beginAccess();

  v7 = *(v4 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 40);
  *(v4 + 40) = 0x8000000000000000;
  sub_26BE57A68(v1, v6, v5, isUniquelyReferenced_nonNull_native);

  *(v4 + 40) = v15;
  swift_endAccess();
  v9 = sub_26C005CAC(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v10 = *(v4 + 48);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + 48);
  *(v4 + 48) = 0x8000000000000000;
  sub_26BE57A28(v9, v6, v5, v11);

  *(v4 + 48) = v16;
  swift_endAccess();
  sub_26BE00258(v3, v2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_26BEFD978()
{
  v1 = v0[68];
  v2 = v0[66];
  v3 = v0[65];

  sub_26BE00258(v3, v2);
  v4 = v0[72];
  v5 = v0[64];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BEFD9F8()
{
  sub_26BE00258(v0[65], v0[66]);
  v1 = v0[69];
  v2 = v0[64];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BEFDA68(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  *(v9 + 1184) = v8;
  *(v9 + 1176) = a8;
  *(v9 + 1168) = a6;
  *(v9 + 1160) = a5;
  *(v9 + 1152) = a4;
  *(v9 + 1144) = a3;
  *(v9 + 1136) = a2;
  v10 = *a7;
  *(v9 + 1192) = *a1;
  *(v9 + 1208) = v10;
  return MEMORY[0x2822009F8](sub_26BEFDAB0, 0, 0);
}

uint64_t sub_26BEFDAB0()
{
  v1 = *(v0 + 1184);
  v2 = MEMORY[0x277D84F90];
  if (*(v0 + 1176))
  {
    v3 = *(v0 + 1176);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  *(v0 + 1224) = sub_26BEC8F28(v3);

  result = swift_beginAccess();
  v5 = *(v1 + 56);
  if (!*(v5 + 16))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v6 = *(v0 + 1144);
  v7 = *(v0 + 1136);

  result = sub_26BEBB618(v7, v6);
  if ((v8 & 1) == 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v9 = *(v0 + 1184);
  v10 = *(*(v5 + 56) + 8 * result);
  *(v0 + 1232) = v10;

  *(v0 + 1240) = *(v10 + 16);
  swift_beginAccess();
  result = swift_beginAccess();
  *(v0 + 1248) = v2;
  if (!*(v0 + 1240))
  {
LABEL_37:
    v44 = *(v0 + 1232);
    v45 = *(v0 + 1224);

    v46 = *(v0 + 8);
    v47 = *(v0 + 1248);

    return v46(v47);
  }

  v11 = 0;
  while (1)
  {
    *(v0 + 1256) = v11;
    v12 = *(v0 + 1232);
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v13 = *(v0 + 1184);
    v14 = v12 + 16 * v11;
    v15 = *(v14 + 32);
    *(v0 + 1264) = v15;
    v16 = *(v14 + 40);
    *(v0 + 1272) = v16;
    v17 = *(v13 + 48);
    if (!*(v17 + 16))
    {
      goto LABEL_54;
    }

    result = sub_26BEBB618(v15, v16);
    if ((v18 & 1) == 0)
    {
      goto LABEL_55;
    }

    v19 = *(*(v17 + 56) + 8 * result);
    if (!*(v19 + 16))
    {
      goto LABEL_56;
    }

    v20 = *(v0 + 1144);
    v21 = *(v0 + 1136);
    v22 = *(*(v17 + 56) + 8 * result);

    v23 = sub_26BEBB618(v21, v20);
    LOBYTE(v21) = v24;

    if ((v21 & 1) == 0)
    {
      goto LABEL_57;
    }

    v25 = *(v0 + 1168);
    v26 = *(*(v19 + 56) + 8 * v23);
    *(v0 + 1280) = v26;

    if (v25 && (v15 == *(v0 + 1160) && *(v0 + 1168) == v16 || (sub_26C00AF2C() & 1) != 0))
    {

      goto LABEL_9;
    }

    v27 = *(v0 + 1224);
    if (*(v27 + 16))
    {
      v28 = *(v27 + 40);
      sub_26C00B05C();
      sub_26C00A58C();
      v29 = sub_26C00B0CC();
      v30 = -1 << *(v27 + 32);
      v31 = v29 & ~v30;
      if ((*(v27 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v31))
      {
        break;
      }
    }

LABEL_28:
    sub_26BE2E1F0(*(v0 + 1152), v0 + 152, &qword_28045FA40, &qword_26C01D898);
    if (!*(v0 + 160))
    {
      v57 = &qword_28045FA40;
      v58 = &qword_26C01D898;
      v59 = v0 + 152;
      goto LABEL_49;
    }

    v36 = *(v0 + 200);
    *(v0 + 48) = *(v0 + 184);
    *(v0 + 64) = v36;
    *(v0 + 144) = *(v0 + 280);
    v37 = *(v0 + 264);
    *(v0 + 112) = *(v0 + 248);
    *(v0 + 128) = v37;
    v38 = *(v0 + 232);
    *(v0 + 80) = *(v0 + 216);
    *(v0 + 96) = v38;
    v39 = *(v0 + 168);
    *(v0 + 16) = *(v0 + 152);
    *(v0 + 32) = v39;
    if ((v15 != *(v0 + 16) || v16 != *(v0 + 24)) && (sub_26C00AF2C() & 1) == 0)
    {
      v57 = &qword_28045FA48;
      v58 = &qword_26C01D8A0;
      v59 = v0 + 16;
LABEL_49:
      sub_26BE2E258(v59, v57, v58);
      v69 = *(v0 + 1280);
      v70 = *(v0 + 1200);
      *(v0 + 1064) = *(v0 + 1192);
      *(v0 + 1072) = v70;
      v75 = (*v69 + 448);
      v76 = (*v75 + **v75);
      v71 = (*v75)[1];
      v72 = swift_task_alloc();
      *(v0 + 1336) = v72;
      *v72 = v0;
      v72[1] = sub_26BEFF0D8;
      v73 = *(v0 + 1280);
      v68 = v0 + 1064;
LABEL_50:

      return v76(v68);
    }

    v40 = v26[6];
    v41 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
    swift_beginAccess();
    v42 = *(v40 + v41);
    if (v42 == 2)
    {
      *(v0 + 928) = &type metadata for SwiftMLSFeatureFlags;
      *(v0 + 936) = sub_26BE295D8();
      *(v0 + 904) = 0;
      v43 = sub_26C00929C();
      __swift_destroy_boxed_opaque_existential_1((v0 + 904));
      if (v43)
      {
        goto LABEL_47;
      }
    }

    else if (v42)
    {
LABEL_47:
      v60 = *(v0 + 1200);
      v61 = *(v0 + 1192);
      sub_26BE2E1F0(v0 + 16, v0 + 288, &qword_28045FA48, &qword_26C01D8A0);
      v62 = *(v0 + 296);

      v63 = *(v0 + 320);
      *(v0 + 544) = *(v0 + 304);
      *(v0 + 560) = v63;
      v64 = *(v0 + 352);
      *(v0 + 576) = *(v0 + 336);
      *(v0 + 592) = v64;
      *(v0 + 656) = *(v0 + 416);
      v65 = *(v0 + 400);
      *(v0 + 624) = *(v0 + 384);
      *(v0 + 640) = v65;
      *(v0 + 608) = *(v0 + 368);
      *(v0 + 1080) = v61;
      *(v0 + 1088) = v60;
      v74 = (*v26 + 448);
      v76 = (*v74 + **v74);
      v66 = (*v74)[1];
      v67 = swift_task_alloc();
      *(v0 + 1320) = v67;
      *v67 = v0;
      v67[1] = sub_26BEFEE48;
      v68 = v0 + 1080;
      goto LABEL_50;
    }

    result = sub_26BE2E258(v0 + 16, &qword_28045FA48, &qword_26C01D8A0);
LABEL_9:
    if (++v11 == *(v0 + 1240))
    {
      goto LABEL_37;
    }
  }

  v32 = ~v30;
  v33 = *(v0 + 1224);
  while (1)
  {
    v34 = (*(v33 + 48) + 16 * v31);
    result = *v34;
    if (*v34 == v15 && v34[1] == v16)
    {
      break;
    }

    result = sub_26C00AF2C();
    if (result)
    {
      break;
    }

    v33 = *(v0 + 1224);
    v31 = (v31 + 1) & v32;
    if (((*(v33 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v31) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v48 = *(*(v0 + 1184) + 40);
  if (!*(v48 + 16))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v49 = *(*(v0 + 1184) + 40);

  result = sub_26BEBB618(v15, v16);
  if ((v50 & 1) == 0)
  {
    goto LABEL_61;
  }

  v51 = *(v0 + 1216);
  v52 = *(*(v48 + 56) + 8 * result);
  *(v0 + 1288) = v52;
  if (v51 >> 60 == 15)
  {
LABEL_62:
    __break(1u);
    return result;
  }

  v53 = *(v0 + 1208);

  sub_26BE2BAE8(v53, v51);

  sub_26BE2BAE8(v53, v51);
  v54 = swift_task_alloc();
  *(v0 + 1296) = v54;
  *v54 = v0;
  v54[1] = sub_26BEFE2B4;
  v55 = *(v0 + 1216);
  v56 = *(v0 + 1208);

  return sub_26BEAD328(v52, v52, v56, v55, 0, 0xF000000000000000);
}

uint64_t sub_26BEFE2B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1296);
  v10 = *v2;
  v3[163] = a1;
  v3[164] = v1;

  if (v1)
  {
    v5 = v3[159];
    v6 = v3[154];
    v7 = v3[153];
    sub_26BE132D4(v3[151], v3[152]);

    v8 = sub_26BEFEDB0;
  }

  else
  {
    sub_26BE132D4(v3[151], v3[152]);
    v8 = sub_26BEFE410;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26BEFE410()
{
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1264);
  v4 = *(v0 + 1184);
  sub_26BE132D4(*(v0 + 1208), *(v0 + 1216));

  swift_beginAccess();
  v5 = *(v4 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + 48);
  *(v0 + 1112) = v7;
  *(v4 + 48) = 0x8000000000000000;
  v9 = sub_26BEBB618(v3, v2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  result = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  LOBYTE(v3) = v8;
  if (*(v7 + 24) < result)
  {
    v13 = *(v0 + 1272);
    v14 = *(v0 + 1264);
    sub_26BE6C1E0(result, isUniquelyReferenced_nonNull_native);
    v15 = *(v0 + 1112);
    result = sub_26BEBB618(v14, v13);
    if ((v3 & 1) != (v16 & 1))
    {
LABEL_11:

      return sub_26C00AF8C();
    }

    v9 = result;
    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_77;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_76;
  }

  if ((v8 & 1) == 0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_8:
  while (1)
  {
    v17 = *(v0 + 1144);
    v18 = *(v0 + 1136);
    v19 = *(v0 + 1112);
    v20 = *(*(v19 + 56) + 8 * v9);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 1120) = v20;
    v3 = sub_26BEBB618(v18, v17);
    v23 = *(v20 + 16);
    v24 = (v22 & 1) == 0;
    v25 = v23 + v24;
    if (!__OFADD__(v23, v24))
    {
      break;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    result = sub_26BE6F250();
    if ((v3 & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  v26 = v22;
  if (*(v20 + 24) >= v25)
  {
    if ((v21 & 1) == 0)
    {
      sub_26BE6F278();
    }
  }

  else
  {
    v27 = *(v0 + 1144);
    v28 = *(v0 + 1136);
    sub_26BE6C208(v25, v21);
    v29 = *(v0 + 1120);
    v30 = sub_26BEBB618(v28, v27);
    if ((v26 & 1) != (v31 & 1))
    {
      goto LABEL_11;
    }

    v3 = v30;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_75;
  }

  v32 = *(v0 + 1304);
  v33 = *(v0 + 1120);
  v34 = *(*(v33 + 56) + 8 * v3);

  if (v32)
  {
    *(*(v33 + 56) + 8 * v3) = *(v0 + 1304);
  }

  else
  {
    sub_26BF25CA8(*(v33 + 48) + 16 * v3);
    sub_26C0018C8(v3, v33);
    v35 = *(v0 + 1304);
  }

  v36 = *(v0 + 1280);
  v37 = *(v0 + 1272);
  v38 = *(v0 + 1184);

  *(*(v19 + 56) + 8 * v9) = v33;

  *(v38 + 48) = v19;
  swift_endAccess();

  v3 = *(v0 + 1256) + 1;
  if (v3 == *(v0 + 1240))
  {
LABEL_22:
    v39 = *(v0 + 1232);
    v40 = *(v0 + 1224);

    v41 = *(v0 + 8);
    v42 = *(v0 + 1248);

    return v41(v42);
  }

  v9 = v0 + 152;
  while (2)
  {
    *(v0 + 1256) = v3;
    v43 = *(v0 + 1232);
    if (v3 >= *(v43 + 16))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v44 = *(v0 + 1184);
    v45 = v43 + 16 * v3;
    v46 = *(v45 + 32);
    *(v0 + 1264) = v46;
    v47 = *(v45 + 40);
    *(v0 + 1272) = v47;
    v48 = *(v44 + 48);
    if (!*(v48 + 16))
    {
      goto LABEL_69;
    }

    v49 = sub_26BEBB618(v46, v47);
    if ((v50 & 1) == 0)
    {
      goto LABEL_70;
    }

    v51 = *(*(v48 + 56) + 8 * v49);
    if (!*(v51 + 16))
    {
      goto LABEL_71;
    }

    v52 = *(v0 + 1144);
    v53 = *(v0 + 1136);
    v54 = *(*(v48 + 56) + 8 * v49);

    v55 = sub_26BEBB618(v53, v52);
    LOBYTE(v53) = v56;

    if ((v53 & 1) == 0)
    {
      goto LABEL_72;
    }

    v57 = *(v0 + 1168);
    v58 = *(*(v51 + 56) + 8 * v55);
    *(v0 + 1280) = v58;

    if (v57 && (v46 == *(v0 + 1160) && *(v0 + 1168) == v47 || (sub_26C00AF2C() & 1) != 0))
    {

LABEL_27:
      if (++v3 == *(v0 + 1240))
      {
        goto LABEL_22;
      }

      continue;
    }

    break;
  }

  v59 = *(v0 + 1224);
  if (!*(v59 + 16) || (v60 = *(v59 + 40), sub_26C00B05C(), sub_26C00A58C(), v61 = sub_26C00B0CC(), v62 = -1 << *(v59 + 32), v63 = v61 & ~v62, ((*(v59 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v63) & 1) == 0))
  {
LABEL_46:
    sub_26BE2E1F0(*(v0 + 1152), v0 + 152, &qword_28045FA40, &qword_26C01D898);
    if (!*(v0 + 160))
    {
      v85 = &qword_28045FA40;
      v86 = &qword_26C01D898;
      v87 = v0 + 152;
      goto LABEL_64;
    }

    v68 = *(v0 + 200);
    *(v0 + 48) = *(v0 + 184);
    *(v0 + 64) = v68;
    *(v0 + 144) = *(v0 + 280);
    v69 = *(v0 + 264);
    *(v0 + 112) = *(v0 + 248);
    *(v0 + 128) = v69;
    v70 = *(v0 + 232);
    *(v0 + 80) = *(v0 + 216);
    *(v0 + 96) = v70;
    v71 = *(v0 + 168);
    *(v0 + 16) = *v9;
    *(v0 + 32) = v71;
    if ((v46 != *(v0 + 16) || v47 != *(v0 + 24)) && (sub_26C00AF2C() & 1) == 0)
    {
      v85 = &qword_28045FA48;
      v86 = &qword_26C01D8A0;
      v87 = v0 + 16;
LABEL_64:
      sub_26BE2E258(v87, v85, v86);
      v97 = *(v0 + 1280);
      v98 = *(v0 + 1200);
      *(v0 + 1064) = *(v0 + 1192);
      *(v0 + 1072) = v98;
      v103 = (*v97 + 448);
      v104 = (*v103 + **v103);
      v99 = (*v103)[1];
      v100 = swift_task_alloc();
      *(v0 + 1336) = v100;
      *v100 = v0;
      v100[1] = sub_26BEFF0D8;
      v101 = *(v0 + 1280);
      v96 = v0 + 1064;
LABEL_65:

      return v104(v96);
    }

    v72 = v58[6];
    v73 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
    swift_beginAccess();
    v74 = *(v72 + v73);
    if (v74 == 2)
    {
      *(v0 + 928) = &type metadata for SwiftMLSFeatureFlags;
      *(v0 + 936) = sub_26BE295D8();
      *(v0 + 904) = 0;
      v75 = sub_26C00929C();
      __swift_destroy_boxed_opaque_existential_1((v0 + 904));
      if (v75)
      {
        goto LABEL_62;
      }
    }

    else if (v74)
    {
LABEL_62:
      v88 = *(v0 + 1200);
      v89 = *(v0 + 1192);
      sub_26BE2E1F0(v0 + 16, v0 + 288, &qword_28045FA48, &qword_26C01D8A0);
      v90 = *(v0 + 296);

      v91 = *(v0 + 320);
      *(v0 + 544) = *(v0 + 304);
      *(v0 + 560) = v91;
      v92 = *(v0 + 352);
      *(v0 + 576) = *(v0 + 336);
      *(v0 + 592) = v92;
      *(v0 + 656) = *(v0 + 416);
      v93 = *(v0 + 400);
      *(v0 + 624) = *(v0 + 384);
      *(v0 + 640) = v93;
      *(v0 + 608) = *(v0 + 368);
      *(v0 + 1080) = v89;
      *(v0 + 1088) = v88;
      v102 = (*v58 + 448);
      v104 = (*v102 + **v102);
      v94 = (*v102)[1];
      v95 = swift_task_alloc();
      *(v0 + 1320) = v95;
      *v95 = v0;
      v95[1] = sub_26BEFEE48;
      v96 = v0 + 1080;
      goto LABEL_65;
    }

    sub_26BE2E258(v0 + 16, &qword_28045FA48, &qword_26C01D8A0);
    goto LABEL_27;
  }

  v64 = ~v62;
  v65 = *(v0 + 1224);
  while (1)
  {
    v66 = (*(v65 + 48) + 16 * v63);
    result = *v66;
    if (*v66 == v46 && v66[1] == v47)
    {
      break;
    }

    result = sub_26C00AF2C();
    if (result)
    {
      break;
    }

    v65 = *(v0 + 1224);
    v63 = (v63 + 1) & v64;
    if (((*(v65 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v63) & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v76 = *(*(v0 + 1184) + 40);
  if (!*(v76 + 16))
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    return result;
  }

  v77 = *(*(v0 + 1184) + 40);

  result = sub_26BEBB618(v46, v47);
  if ((v78 & 1) == 0)
  {
    goto LABEL_79;
  }

  v79 = *(v0 + 1216);
  v80 = *(*(v76 + 56) + 8 * result);
  *(v0 + 1288) = v80;
  if (v79 >> 60 == 15)
  {
    goto LABEL_80;
  }

  v81 = *(v0 + 1208);

  sub_26BE2BAE8(v81, v79);

  sub_26BE2BAE8(v81, v79);
  v82 = swift_task_alloc();
  *(v0 + 1296) = v82;
  *v82 = v0;
  v82[1] = sub_26BEFE2B4;
  v83 = *(v0 + 1216);
  v84 = *(v0 + 1208);

  return sub_26BEAD328(v80, v80, v84, v83, 0, 0xF000000000000000);
}

uint64_t sub_26BEFEDB0()
{
  v1 = v0[161];
  v2 = v0[160];
  v3 = v0[156];
  v4 = v0[152];
  v5 = v0[151];

  sub_26BE132D4(v5, v4);

  v6 = v0[164];
  v7 = v0[1];

  return v7();
}

uint64_t sub_26BEFEE48()
{
  v2 = *v1;
  v3 = *(*v1 + 1320);
  v7 = *v1;
  *(*v1 + 1328) = v0;

  if (v0)
  {
    v4 = *(v2 + 1272);

    v5 = sub_26BEFFA50;
  }

  else
  {

    v5 = sub_26BEFEF78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BEFEF78()
{
  sub_26BE2DC9C((v0 + 68));
  sub_26BE2E258((v0 + 2), &qword_28045FA48, &qword_26C01D8A0);
  v1 = v0[160];
  v2 = v0[150];
  v0[133] = v0[149];
  v0[134] = v2;
  v7 = (*v1 + 448);
  v8 = (*v7 + **v7);
  v3 = (*v7)[1];
  v4 = swift_task_alloc();
  v0[167] = v4;
  *v4 = v0;
  v4[1] = sub_26BEFF0D8;
  v5 = v0[160];

  return v8(v0 + 133);
}

uint64_t sub_26BEFF0D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1336);
  v11 = *v2;
  v3[168] = a1;
  v3[169] = v1;

  if (v1)
  {
    v5 = v3[159];
    v6 = v3[156];
    v7 = v3[154];
    v8 = v3[153];

    v9 = sub_26BF0042C;
  }

  else
  {
    v9 = sub_26BEFF224;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BEFF224()
{
  v2 = *(v1 + 1344);
  if (!*(v2 + 16))
  {
LABEL_62:

    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v3 = *(v1 + 1272);

  if (!*(v2 + 16))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v2 = v1 + 424;
  v4 = *(v1 + 1248);
  sub_26BF26CF0(*(v1 + 1344) + 32, v1 + 424);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0 = *(v1 + 1248);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_59:
    v0 = sub_26BEED9D4(0, *(v0 + 2) + 1, 1, v0);
  }

  v7 = *(v0 + 2);
  v6 = *(v0 + 3);
  if (v7 >= v6 >> 1)
  {
    v0 = sub_26BEED9D4((v6 > 1), v7 + 1, 1, v0);
  }

  v8 = *(v1 + 1280);

  *(v0 + 2) = v7 + 1;
  v9 = &v0[120 * v7];
  v10 = *v2;
  v11 = *(v2 + 16);
  v12 = *(v2 + 48);
  *(v9 + 4) = *(v2 + 32);
  *(v9 + 5) = v12;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v13 = *(v2 + 64);
  v14 = *(v2 + 80);
  v15 = *(v2 + 96);
  *(v9 + 72) = *(v2 + 112);
  *(v9 + 7) = v14;
  *(v9 + 8) = v15;
  *(v9 + 6) = v13;
  v16 = *(v1 + 1256) + 1;
  *(v1 + 1248) = v0;
  if (v16 == *(v1 + 1240))
  {
LABEL_7:
    v17 = *(v1 + 1232);
    v18 = *(v1 + 1224);

    v19 = *(v1 + 8);
    v20 = *(v1 + 1248);

    return v19(v20);
  }

  v0 = (v1 + 152);
  while (1)
  {
    *(v1 + 1256) = v16;
    v22 = *(v1 + 1232);
    if (v16 >= *(v22 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v23 = *(v1 + 1184);
    v24 = v22 + 16 * v16;
    v25 = *(v24 + 32);
    *(v1 + 1264) = v25;
    v26 = *(v24 + 40);
    *(v1 + 1272) = v26;
    v27 = *(v23 + 48);
    if (!*(v27 + 16))
    {
      goto LABEL_54;
    }

    v2 = v27;
    v28 = sub_26BEBB618(v25, v26);
    if ((v29 & 1) == 0)
    {
      goto LABEL_55;
    }

    v2 = *(*(v27 + 56) + 8 * v28);
    if (!*(v2 + 16))
    {
      goto LABEL_56;
    }

    v30 = *(v1 + 1144);
    v31 = *(v1 + 1136);
    v32 = *(*(v27 + 56) + 8 * v28);

    v33 = sub_26BEBB618(v31, v30);
    LOBYTE(v31) = v34;

    if ((v31 & 1) == 0)
    {
      goto LABEL_57;
    }

    v35 = *(v1 + 1168);
    v36 = *(*(v2 + 56) + 8 * v33);
    *(v1 + 1280) = v36;

    if (v35 && (v25 == *(v1 + 1160) && *(v1 + 1168) == v26 || (sub_26C00AF2C() & 1) != 0))
    {

      goto LABEL_12;
    }

    v37 = *(v1 + 1224);
    if (*(v37 + 16))
    {
      v38 = *(v37 + 40);
      sub_26C00B05C();
      sub_26C00A58C();
      v39 = sub_26C00B0CC();
      v40 = -1 << *(v37 + 32);
      v41 = v39 & ~v40;
      if ((*(v37 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v41))
      {
        v42 = ~v40;
        v43 = *(v1 + 1224);
        while (1)
        {
          v44 = (*(v43 + 48) + 16 * v41);
          v45 = *v44 == v25 && v44[1] == v26;
          if (v45 || (sub_26C00AF2C() & 1) != 0)
          {
            break;
          }

          v43 = *(v1 + 1224);
          v41 = (v41 + 1) & v42;
          if (((*(v43 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v41) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v52 = *(*(v1 + 1184) + 40);
        if (*(v52 + 16))
        {
          v53 = *(*(v1 + 1184) + 40);

          result = sub_26BEBB618(v25, v26);
          if (v54)
          {
            v55 = *(v1 + 1216);
            v56 = *(*(v52 + 56) + 8 * result);
            *(v1 + 1288) = v56;
            if (v55 >> 60 == 15)
            {
              goto LABEL_63;
            }

            v57 = *(v1 + 1208);

            sub_26BE2BAE8(v57, v55);

            sub_26BE2BAE8(v57, v55);
            v58 = swift_task_alloc();
            *(v1 + 1296) = v58;
            *v58 = v1;
            v58[1] = sub_26BEFE2B4;
            v59 = *(v1 + 1216);
            v60 = *(v1 + 1208);

            return sub_26BEAD328(v56, v56, v60, v59, 0, 0xF000000000000000);
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_62;
      }
    }

LABEL_31:
    sub_26BE2E1F0(*(v1 + 1152), v1 + 152, &qword_28045FA40, &qword_26C01D898);
    if (!*(v1 + 160))
    {
      v61 = &qword_28045FA40;
      v62 = &qword_26C01D898;
      v63 = v1 + 152;
      goto LABEL_49;
    }

    v46 = *(v1 + 200);
    *(v1 + 48) = *(v1 + 184);
    *(v1 + 64) = v46;
    *(v1 + 144) = *(v1 + 280);
    v47 = *(v1 + 264);
    *(v1 + 112) = *(v1 + 248);
    *(v1 + 128) = v47;
    v48 = *(v1 + 232);
    *(v1 + 80) = *(v1 + 216);
    *(v1 + 96) = v48;
    v49 = *(v1 + 168);
    *(v1 + 16) = *v0;
    *(v1 + 32) = v49;
    if ((v25 != *(v1 + 16) || v26 != *(v1 + 24)) && (sub_26C00AF2C() & 1) == 0)
    {
      break;
    }

    v2 = v36[6];
    v50 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
    swift_beginAccess();
    v51 = *(v2 + v50);
    if (v51 == 2)
    {
      *(v1 + 928) = &type metadata for SwiftMLSFeatureFlags;
      *(v1 + 936) = sub_26BE295D8();
      *(v1 + 904) = 0;
      v2 = sub_26C00929C();
      __swift_destroy_boxed_opaque_existential_1((v1 + 904));
      if (v2)
      {
        goto LABEL_47;
      }
    }

    else if (v51)
    {
LABEL_47:
      v64 = *(v1 + 1200);
      v65 = *(v1 + 1192);
      sub_26BE2E1F0(v1 + 16, v1 + 288, &qword_28045FA48, &qword_26C01D8A0);
      v66 = *(v1 + 296);

      v67 = *(v1 + 320);
      *(v1 + 544) = *(v1 + 304);
      *(v1 + 560) = v67;
      v68 = *(v1 + 352);
      *(v1 + 576) = *(v1 + 336);
      *(v1 + 592) = v68;
      *(v1 + 656) = *(v1 + 416);
      v69 = *(v1 + 400);
      *(v1 + 624) = *(v1 + 384);
      *(v1 + 640) = v69;
      *(v1 + 608) = *(v1 + 368);
      *(v1 + 1080) = v65;
      *(v1 + 1088) = v64;
      v78 = (*v36 + 448);
      v80 = (*v78 + **v78);
      v70 = (*v78)[1];
      v71 = swift_task_alloc();
      *(v1 + 1320) = v71;
      *v71 = v1;
      v71[1] = sub_26BEFEE48;
      v72 = v1 + 1080;
      goto LABEL_50;
    }

    sub_26BE2E258(v1 + 16, &qword_28045FA48, &qword_26C01D8A0);
LABEL_12:
    if (++v16 == *(v1 + 1240))
    {
      goto LABEL_7;
    }
  }

  v61 = &qword_28045FA48;
  v62 = &qword_26C01D8A0;
  v63 = v1 + 16;
LABEL_49:
  sub_26BE2E258(v63, v61, v62);
  v73 = *(v1 + 1280);
  v74 = *(v1 + 1200);
  *(v1 + 1064) = *(v1 + 1192);
  *(v1 + 1072) = v74;
  v79 = (*v73 + 448);
  v80 = (*v79 + **v79);
  v75 = (*v79)[1];
  v76 = swift_task_alloc();
  *(v1 + 1336) = v76;
  *v76 = v1;
  v76[1] = sub_26BEFF0D8;
  v77 = *(v1 + 1280);
  v72 = v1 + 1064;
LABEL_50:

  return v80(v72);
}

uint64_t sub_26BEFFA50()
{
  v1 = *(v0 + 1328);
  *(v0 + 1128) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED00, &qword_26C016510);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = *(v0 + 1280);
    v16 = *(v0 + 1248);
    v17 = *(v0 + 1232);
    v18 = *(v0 + 1224);
    sub_26BE2DC9C(v0 + 544);

    sub_26BE2E258(v0 + 16, &qword_28045FA48, &qword_26C01D8A0);
    v19 = *(v0 + 1328);
LABEL_9:
    v26 = *(v0 + 8);

    return v26();
  }

  v3 = *(v0 + 744);
  *(v0 + 848) = *(v0 + 728);
  *(v0 + 864) = v3;
  *(v0 + 880) = *(v0 + 760);
  *(v0 + 896) = *(v0 + 776);
  v4 = *(v0 + 680);
  *(v0 + 784) = *(v0 + 664);
  *(v0 + 800) = v4;
  v5 = *(v0 + 712);
  *(v0 + 816) = *(v0 + 696);
  *(v0 + 832) = v5;
  v6 = _s8SwiftMLS0B0O8MLSErrorO2eeoiySbAE_AEtFZ_0(v0 + 784, v0 + 544);
  v7 = *(v0 + 1280);
  if ((v6 & 1) == 0)
  {
    v20 = *(v0 + 1248);
    v21 = *(v0 + 1232);
    v22 = *(v0 + 1224);

    sub_26C00AC1C();
    *(v0 + 1096) = 0;
    *(v0 + 1104) = 0xE000000000000000;
    MEMORY[0x26D699090](0x6465746365707845, 0xEF20726F72726520);
    sub_26C00AD4C();
    MEMORY[0x26D699090](0x746F672074756220, 0xE900000000000020);
    sub_26C00AD4C();
    v23 = *(v0 + 1096);
    v24 = *(v0 + 1104);
    sub_26BE773C4();
    swift_allocError();
    *v25 = v23;
    v25[1] = v24;
    swift_willThrow();

    sub_26BE2DC9C(v0 + 784);
    sub_26BE2DC9C(v0 + 544);

    sub_26BE2E258(v0 + 16, &qword_28045FA48, &qword_26C01D8A0);
    goto LABEL_9;
  }

  v8 = *(v0 + 1280);

  sub_26BE2DC9C(v0 + 784);
  sub_26BE2DC9C(v0 + 544);

  result = sub_26BE2E258(v0 + 16, &qword_28045FA48, &qword_26C01D8A0);
  v10 = *(v0 + 1256) + 1;
  if (v10 == *(v0 + 1240))
  {
LABEL_4:
    v11 = *(v0 + 1232);
    v12 = *(v0 + 1224);

    v13 = *(v0 + 8);
    v14 = *(v0 + 1248);

    return v13(v14);
  }

  while (1)
  {
    *(v0 + 1256) = v10;
    v27 = *(v0 + 1232);
    if (v10 >= *(v27 + 16))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v28 = *(v0 + 1184);
    v29 = v27 + 16 * v10;
    v30 = *(v29 + 32);
    *(v0 + 1264) = v30;
    v31 = *(v29 + 40);
    *(v0 + 1272) = v31;
    v32 = *(v28 + 48);
    if (!*(v32 + 16))
    {
      goto LABEL_56;
    }

    result = sub_26BEBB618(v30, v31);
    if ((v33 & 1) == 0)
    {
      goto LABEL_57;
    }

    v34 = *(*(v32 + 56) + 8 * result);
    if (!*(v34 + 16))
    {
      goto LABEL_58;
    }

    v35 = *(v0 + 1144);
    v36 = *(v0 + 1136);
    v37 = *(*(v32 + 56) + 8 * result);

    v38 = sub_26BEBB618(v36, v35);
    LOBYTE(v36) = v39;

    if ((v36 & 1) == 0)
    {
      goto LABEL_59;
    }

    v40 = *(v0 + 1168);
    v41 = *(*(v34 + 56) + 8 * v38);
    *(v0 + 1280) = v41;

    if (v40 && (v30 == *(v0 + 1160) && *(v0 + 1168) == v31 || (sub_26C00AF2C() & 1) != 0))
    {

      goto LABEL_14;
    }

    v42 = *(v0 + 1224);
    if (*(v42 + 16))
    {
      v43 = *(v42 + 40);
      sub_26C00B05C();
      sub_26C00A58C();
      v44 = sub_26C00B0CC();
      v45 = -1 << *(v42 + 32);
      v46 = v44 & ~v45;
      if ((*(v42 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v46))
      {
        v47 = ~v45;
        v48 = *(v0 + 1224);
        while (1)
        {
          v49 = (*(v48 + 48) + 16 * v46);
          result = *v49;
          if (*v49 == v30 && v49[1] == v31)
          {
            break;
          }

          result = sub_26C00AF2C();
          if (result)
          {
            break;
          }

          v48 = *(v0 + 1224);
          v46 = (v46 + 1) & v47;
          if (((*(v48 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v46) & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        v59 = *(*(v0 + 1184) + 40);
        if (*(v59 + 16))
        {
          v60 = *(*(v0 + 1184) + 40);

          result = sub_26BEBB618(v30, v31);
          if (v61)
          {
            v62 = *(v0 + 1216);
            v63 = *(*(v59 + 56) + 8 * result);
            *(v0 + 1288) = v63;
            if (v62 >> 60 != 15)
            {
              v64 = *(v0 + 1208);

              sub_26BE2BAE8(v64, v62);

              sub_26BE2BAE8(v64, v62);
              v65 = swift_task_alloc();
              *(v0 + 1296) = v65;
              *v65 = v0;
              v65[1] = sub_26BEFE2B4;
              v66 = *(v0 + 1216);
              v67 = *(v0 + 1208);

              return sub_26BEAD328(v63, v63, v67, v66, 0, 0xF000000000000000);
            }

LABEL_62:
            __break(1u);
            return result;
          }

LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

LABEL_33:
    sub_26BE2E1F0(*(v0 + 1152), v0 + 152, &qword_28045FA40, &qword_26C01D898);
    if (!*(v0 + 160))
    {
      v68 = &qword_28045FA40;
      v69 = &qword_26C01D898;
      v70 = v0 + 152;
      goto LABEL_51;
    }

    v51 = *(v0 + 200);
    *(v0 + 48) = *(v0 + 184);
    *(v0 + 64) = v51;
    *(v0 + 144) = *(v0 + 280);
    v52 = *(v0 + 264);
    *(v0 + 112) = *(v0 + 248);
    *(v0 + 128) = v52;
    v53 = *(v0 + 232);
    *(v0 + 80) = *(v0 + 216);
    *(v0 + 96) = v53;
    v54 = *(v0 + 168);
    *(v0 + 16) = *(v0 + 152);
    *(v0 + 32) = v54;
    if ((v30 != *(v0 + 16) || v31 != *(v0 + 24)) && (sub_26C00AF2C() & 1) == 0)
    {
      break;
    }

    v55 = v41[6];
    v56 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
    swift_beginAccess();
    v57 = *(v55 + v56);
    if (v57 == 2)
    {
      *(v0 + 928) = &type metadata for SwiftMLSFeatureFlags;
      *(v0 + 936) = sub_26BE295D8();
      *(v0 + 904) = 0;
      v58 = sub_26C00929C();
      __swift_destroy_boxed_opaque_existential_1((v0 + 904));
      if (v58)
      {
        goto LABEL_49;
      }
    }

    else if (v57)
    {
LABEL_49:
      v71 = *(v0 + 1200);
      v72 = *(v0 + 1192);
      sub_26BE2E1F0(v0 + 16, v0 + 288, &qword_28045FA48, &qword_26C01D8A0);
      v73 = *(v0 + 296);

      v74 = *(v0 + 320);
      *(v0 + 544) = *(v0 + 304);
      *(v0 + 560) = v74;
      v75 = *(v0 + 352);
      *(v0 + 576) = *(v0 + 336);
      *(v0 + 592) = v75;
      *(v0 + 656) = *(v0 + 416);
      v76 = *(v0 + 400);
      *(v0 + 624) = *(v0 + 384);
      *(v0 + 640) = v76;
      *(v0 + 608) = *(v0 + 368);
      *(v0 + 1080) = v72;
      *(v0 + 1088) = v71;
      v85 = (*v41 + 448);
      v87 = (*v85 + **v85);
      v77 = (*v85)[1];
      v78 = swift_task_alloc();
      *(v0 + 1320) = v78;
      *v78 = v0;
      v78[1] = sub_26BEFEE48;
      v79 = v0 + 1080;
      goto LABEL_52;
    }

    result = sub_26BE2E258(v0 + 16, &qword_28045FA48, &qword_26C01D8A0);
LABEL_14:
    if (++v10 == *(v0 + 1240))
    {
      goto LABEL_4;
    }
  }

  v68 = &qword_28045FA48;
  v69 = &qword_26C01D8A0;
  v70 = v0 + 16;
LABEL_51:
  sub_26BE2E258(v70, v68, v69);
  v80 = *(v0 + 1280);
  v81 = *(v0 + 1200);
  *(v0 + 1064) = *(v0 + 1192);
  *(v0 + 1072) = v81;
  v86 = (*v80 + 448);
  v87 = (*v86 + **v86);
  v82 = (*v86)[1];
  v83 = swift_task_alloc();
  *(v0 + 1336) = v83;
  *v83 = v0;
  v83[1] = sub_26BEFF0D8;
  v84 = *(v0 + 1280);
  v79 = v0 + 1064;
LABEL_52:

  return v87(v79);
}

uint64_t sub_26BF0042C()
{
  v1 = v0[160];

  v2 = v0[169];
  v3 = v0[1];

  return v3();
}

void (*sub_26BF00490(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_26BF24E08(v6, a2, a3);
  return sub_26BF00518;
}

void sub_26BF00518(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26BF00564(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *MEMORY[0x277D85DE8];
  *(v8 + 424) = a7;
  *(v8 + 432) = v7;
  *(v8 + 408) = a5;
  *(v8 + 416) = a6;
  *(v8 + 392) = a3;
  *(v8 + 400) = a4;
  *(v8 + 384) = a2;
  *(v8 + 440) = *a1;
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26BF0060C, 0, 0);
}

uint64_t sub_26BF0060C()
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 432);
  swift_beginAccess();
  v3 = *(v2 + 56);
  if (!v3[2])
  {
    goto LABEL_67;
  }

  v4 = *(v1 + 384);
  v0 = *(v1 + 392);

  v5 = sub_26BEBB618(v4, v0);
  if ((v6 & 1) == 0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v0 = *(v3[7] + 8 * v5);
  *(v1 + 456) = v0;

  v7 = v0[2];
  *(v1 + 464) = v7;
  if (!v7)
  {
LABEL_13:
    v17 = *(v1 + 456);

    v18 = *(v1 + 8);
    v19 = *MEMORY[0x277D85DE8];
    v20 = MEMORY[0x277D84F90];

    return v18(v20);
  }

  v8 = *(v1 + 432);
  swift_beginAccess();
  v9 = 0;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v1 + 472) = v9;
    *(v1 + 480) = v3;
    v10 = *(v1 + 456);
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v11 = v10 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    if (v13 == *(v1 + 400) && v12 == *(v1 + 408))
    {
      goto LABEL_5;
    }

    v15 = *(v11 + 32);
    v16 = *(v11 + 40);
    if ((sub_26C00AF2C() & 1) == 0)
    {
      break;
    }

    v9 = *(v1 + 472);
LABEL_5:
    if (++v9 == *(v1 + 464))
    {
      goto LABEL_13;
    }
  }

  v0 = *(*(v1 + 432) + 48);
  if (!v0[2])
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v3 = v0;
  v22 = sub_26BEBB618(v13, v12);
  if ((v23 & 1) == 0)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v3 = *(v0[7] + 8 * v22);
  if (!v3[2])
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v25 = *(v1 + 384);
  v24 = *(v1 + 392);
  v26 = *(v0[7] + 8 * v22);

  v27 = sub_26BEBB618(v25, v24);
  LOBYTE(v25) = v28;

  if ((v25 & 1) == 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29 = *(v1 + 424);
  v0 = *(v3[7] + 8 * v27);
  *(v1 + 488) = v0;

  if (!v29)
  {
    sub_26BE00608(*(v1 + 440), *(v1 + 448));

LABEL_30:
    v37 = *(v1 + 440);
    v38 = *(v1 + 448);
    goto LABEL_63;
  }

  v31 = *(v1 + 440);
  v30 = *(v1 + 448);
  if (v13 == *(v1 + 416) && *(v1 + 424) == v12)
  {
    sub_26BE00608(*(v1 + 440), *(v1 + 448));

    goto LABEL_26;
  }

  v32 = sub_26C00AF2C();
  sub_26BE00608(v31, v30);

  if ((v32 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  v33 = *(v1 + 448);
  v34 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v34 != 2)
    {
      goto LABEL_42;
    }

    v39 = *(v1 + 440);
    v40 = *(v39 + 16);
    v41 = *(v39 + 24);
    v42 = sub_26C008E9C();
    if (v42)
    {
      v43 = *(v1 + 448) & 0x3FFFFFFFFFFFFFFFLL;
      v44 = sub_26C008ECC();
      if (__OFSUB__(v40, v44))
      {
        goto LABEL_77;
      }

      v42 += v40 - v44;
    }

    v45 = __OFSUB__(v41, v40);
    v46 = v41 - v40;
    if (v45)
    {
      goto LABEL_76;
    }

    v47 = *(v1 + 448) & 0x3FFFFFFFFFFFFFFFLL;
    v48 = sub_26C008EBC();
    if (v48 < v46)
    {
      v46 = v48;
    }

    v3 = MEMORY[0x277D84F90];
    if (!v42 || !v46)
    {
      goto LABEL_53;
    }

    if (v46 < 1)
    {
      __break(1u);
      goto LABEL_42;
    }

    goto LABEL_52;
  }

  if (v34)
  {
    if (*(v1 + 440) >> 32 < *(v1 + 440))
    {
      goto LABEL_75;
    }

    v42 = sub_26C008E9C();
    if (v42)
    {
      v49 = *(v1 + 440);
      v50 = *(v1 + 448) & 0x3FFFFFFFFFFFFFFFLL;
      v51 = sub_26C008ECC();
      if (__OFSUB__(v49, v51))
      {
        goto LABEL_78;
      }

      v42 += v49 - v51;
    }

    v46 = (*(v1 + 440) >> 32) - *(v1 + 440);
    v52 = *(v1 + 448) & 0x3FFFFFFFFFFFFFFFLL;
    result = sub_26C008EBC();
    if (result < v46)
    {
      v46 = result;
    }

    v3 = MEMORY[0x277D84F90];
    if (!v42 || !v46)
    {
      goto LABEL_53;
    }

    if (v46 < 1)
    {
      __break(1u);
      return result;
    }

LABEL_52:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
    v3 = swift_allocObject();
    v53 = _swift_stdlib_malloc_size(v3);
    v3[2] = v46;
    v3[3] = 2 * v53 - 64;
    memmove(v3 + 4, v42, v46);
    goto LABEL_53;
  }

  v35 = BYTE6(v33);
  *(v1 + 145) = *(v1 + 440);
  *(v1 + 153) = v33;
  *(v1 + 155) = BYTE2(v33);
  *(v1 + 156) = BYTE3(v33);
  *(v1 + 157) = BYTE4(v33);
  *(v1 + 158) = BYTE5(v33);
  if (BYTE6(v33))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
    v3 = swift_allocObject();
    v36 = _swift_stdlib_malloc_size(v3);
    v3[2] = v35;
    v3[3] = 2 * v36 - 64;
    memcpy(v3 + 4, (v1 + 145), v35);
    goto LABEL_53;
  }

LABEL_42:
  v3 = MEMORY[0x277D84F90];
LABEL_53:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v3[2])
    {
      goto LABEL_55;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

LABEL_73:
  v3 = sub_26BE588C0(v3);
  if (!v3[2])
  {
    goto LABEL_74;
  }

LABEL_55:
  ++*(v3 + 32);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  *(v1 + 304) = v54;
  *(v1 + 312) = sub_26BE13630(&qword_28045E440, &qword_28045E228, &qword_26C00CDD0);
  *(v1 + 280) = v3;
  v55 = __swift_project_boxed_opaque_existential_1((v1 + 280), v54);
  v56 = *v55;
  v57 = *(*v55 + 16);
  if (v57)
  {
    if (v57 <= 0xE)
    {
      *(v1 + 136) = 0;
      *(v1 + 130) = 0;
      *(v1 + 144) = v57;
      memcpy((v1 + 130), (v56 + 32), v57);
      v37 = *(v1 + 130);
      v38 = *(v1 + 138) | ((*(v1 + 142) | (*(v1 + 144) << 16)) << 32);
    }

    else
    {
      v58 = sub_26C008EEC();
      v59 = *(v58 + 48);
      v60 = *(v58 + 52);
      swift_allocObject();
      v61 = sub_26C008E8C();
      v62 = v61;
      if (v57 >= 0x7FFFFFFF)
      {
        sub_26C00904C();
        v37 = swift_allocObject();
        *(v37 + 16) = 0;
        *(v37 + 24) = v57;
        v38 = v62 | 0x8000000000000000;
      }

      else
      {
        v37 = v57 << 32;
        v38 = v61 | 0x4000000000000000;
      }
    }
  }

  else
  {
    v37 = 0;
    v38 = 0xC000000000000000;
  }

  v64 = *(v1 + 440);
  v63 = *(v1 + 448);
  __swift_destroy_boxed_opaque_existential_1((v1 + 280));
  sub_26BE00258(v64, v63);
LABEL_63:
  *(v1 + 504) = v37;
  *(v1 + 512) = v38;
  *(v1 + 496) = v38;
  *(v1 + 368) = v37;
  *(v1 + 376) = v38;
  v65 = *(*v0 + 432);
  sub_26BE00608(v37, v38);
  v69 = (v65 + *v65);
  v66 = v65[1];
  v67 = swift_task_alloc();
  *(v1 + 520) = v67;
  *v67 = v1;
  v67[1] = sub_26BF00D94;
  v68 = *MEMORY[0x277D85DE8];

  return v69(v1 + 16, v1 + 368);
}

uint64_t sub_26BF00D94()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 520);
  v10 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = v2[60];
    v5 = v2[57];
    sub_26BE00258(v2[46], v2[47]);

    v6 = sub_26BF016D4;
  }

  else
  {
    sub_26BE00258(v2[46], v2[47]);
    v6 = sub_26BF00F04;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF00F04()
{
  v79 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 480);
  sub_26BF26CF0(v0 + 16, v0 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 480);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_68:
    v3 = sub_26BEED9D4(0, *(v3 + 16) + 1, 1, v3);
  }

  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_26BEED9D4((v4 > 1), v5 + 1, 1, v3);
  }

  v7 = *(v0 + 504);
  v6 = *(v0 + 512);
  v8 = *(v0 + 488);

  sub_26BF26D4C(v0 + 16);
  *(v3 + 16) = v5 + 1;
  v9 = v3 + 120 * v5;
  v10 = *(v0 + 208);
  v12 = *(v0 + 160);
  v11 = *(v0 + 176);
  *(v9 + 64) = *(v0 + 192);
  *(v9 + 80) = v10;
  *(v9 + 32) = v12;
  *(v9 + 48) = v11;
  v14 = *(v0 + 240);
  v13 = *(v0 + 256);
  v15 = *(v0 + 224);
  *(v9 + 144) = *(v0 + 272);
  *(v9 + 112) = v14;
  *(v9 + 128) = v13;
  *(v9 + 96) = v15;
  sub_26BE00258(v7, v6);
  v16 = *(v0 + 464);
  v17 = *(v0 + 472) + 1;
  if (v17 == v16)
  {
LABEL_5:
    v18 = *(v0 + 456);

    v19 = *(v0 + 8);
    v20 = *MEMORY[0x277D85DE8];

    return v19(v3);
  }

  v22 = *(v0 + 496);
  while (1)
  {
    *(v0 + 472) = v17;
    *(v0 + 480) = v3;
    v23 = *(v0 + 456);
    if (v17 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_68;
    }

    v24 = v23 + 16 * v17;
    v26 = *(v24 + 32);
    v25 = *(v24 + 40);
    if (v26 != *(v0 + 400) || v25 != *(v0 + 408))
    {
      break;
    }

LABEL_9:
    if (++v17 == v16)
    {
      goto LABEL_5;
    }
  }

  v28 = *(v24 + 32);
  v29 = *(v24 + 40);
  if (sub_26C00AF2C())
  {
    v16 = *(v0 + 464);
    v17 = *(v0 + 472);
    goto LABEL_9;
  }

  v30 = *(*(v0 + 432) + 48);
  if (!v30[2])
  {
    __break(1u);
    goto LABEL_70;
  }

  v3 = v30;
  v31 = sub_26BEBB618(v26, v25);
  if ((v32 & 1) == 0)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v3 = *(v30[7] + 8 * v31);
  if (!*(v3 + 16))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v34 = *(v0 + 384);
  v33 = *(v0 + 392);
  v35 = *(v30[7] + 8 * v31);

  v36 = sub_26BEBB618(v34, v33);
  LOBYTE(v34) = v37;

  if ((v34 & 1) == 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v38 = *(v0 + 424);
  v30 = *(*(v3 + 56) + 8 * v36);
  *(v0 + 488) = v30;

  if (!v38)
  {
    sub_26BE00608(*(v0 + 440), *(v0 + 448));

LABEL_31:
    v46 = *(v0 + 440);
    v47 = *(v0 + 448);
    goto LABEL_64;
  }

  v40 = *(v0 + 440);
  v39 = *(v0 + 448);
  if (v26 == *(v0 + 416) && *(v0 + 424) == v25)
  {
    sub_26BE00608(*(v0 + 440), *(v0 + 448));

    goto LABEL_27;
  }

  v41 = sub_26C00AF2C();
  sub_26BE00608(v40, v39);

  if ((v41 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_27:
  v42 = *(v0 + 448);
  v43 = v42 >> 62;
  if ((v42 >> 62) > 1)
  {
    if (v43 != 2)
    {
      goto LABEL_43;
    }

    v48 = *(v0 + 440);
    v49 = *(v48 + 16);
    v50 = *(v48 + 24);
    v51 = sub_26C008E9C();
    if (v51)
    {
      v52 = *(v0 + 448) & 0x3FFFFFFFFFFFFFFFLL;
      v53 = sub_26C008ECC();
      if (__OFSUB__(v49, v53))
      {
        goto LABEL_77;
      }

      v51 += v49 - v53;
    }

    v54 = __OFSUB__(v50, v49);
    v55 = v50 - v49;
    if (v54)
    {
      goto LABEL_76;
    }

    v56 = *(v0 + 448) & 0x3FFFFFFFFFFFFFFFLL;
    v57 = sub_26C008EBC();
    if (v57 < v55)
    {
      v55 = v57;
    }

    v3 = MEMORY[0x277D84F90];
    if (!v51 || !v55)
    {
      goto LABEL_54;
    }

    if (v55 < 1)
    {
      __break(1u);
      goto LABEL_43;
    }

    goto LABEL_53;
  }

  if (v43)
  {
    if (*(v0 + 440) >> 32 < *(v0 + 440))
    {
      goto LABEL_75;
    }

    v51 = sub_26C008E9C();
    if (v51)
    {
      v58 = *(v0 + 440);
      v59 = *(v0 + 448) & 0x3FFFFFFFFFFFFFFFLL;
      v60 = sub_26C008ECC();
      if (__OFSUB__(v58, v60))
      {
        goto LABEL_78;
      }

      v51 += v58 - v60;
    }

    v55 = (*(v0 + 440) >> 32) - *(v0 + 440);
    v61 = *(v0 + 448) & 0x3FFFFFFFFFFFFFFFLL;
    result = sub_26C008EBC();
    if (result < v55)
    {
      v55 = result;
    }

    v3 = MEMORY[0x277D84F90];
    if (!v51 || !v55)
    {
      goto LABEL_54;
    }

    if (v55 < 1)
    {
      __break(1u);
      return result;
    }

LABEL_53:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
    v3 = swift_allocObject();
    v62 = _swift_stdlib_malloc_size(v3);
    *(v3 + 16) = v55;
    *(v3 + 24) = 2 * v62 - 64;
    memmove((v3 + 32), v51, v55);
    goto LABEL_54;
  }

  v44 = BYTE6(v42);
  *(v0 + 145) = *(v0 + 440);
  *(v0 + 153) = v42;
  *(v0 + 155) = BYTE2(v42);
  *(v0 + 156) = BYTE3(v42);
  *(v0 + 157) = BYTE4(v42);
  *(v0 + 158) = BYTE5(v42);
  if (BYTE6(v42))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
    v3 = swift_allocObject();
    v45 = _swift_stdlib_malloc_size(v3);
    *(v3 + 16) = v44;
    *(v3 + 24) = 2 * v45 - 64;
    memcpy((v3 + 32), (v0 + 145), v44);
    goto LABEL_54;
  }

LABEL_43:
  v3 = MEMORY[0x277D84F90];
LABEL_54:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (*(v3 + 16))
    {
      goto LABEL_56;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

LABEL_73:
  v3 = sub_26BE588C0(v3);
  if (!*(v3 + 16))
  {
    goto LABEL_74;
  }

LABEL_56:
  ++*(v3 + 32);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  *(v0 + 304) = v63;
  *(v0 + 312) = sub_26BE13630(&qword_28045E440, &qword_28045E228, &qword_26C00CDD0);
  *(v0 + 280) = v3;
  v64 = __swift_project_boxed_opaque_existential_1((v0 + 280), v63);
  v65 = *v64;
  v66 = *(*v64 + 16);
  if (v66)
  {
    if (v66 <= 0xE)
    {
      *(v0 + 136) = 0;
      *(v0 + 130) = 0;
      *(v0 + 144) = v66;
      memcpy((v0 + 130), (v65 + 32), v66);
      v46 = *(v0 + 130);
      v22 = v22 & 0xF00000000000000 | *(v0 + 138) | ((*(v0 + 142) | (*(v0 + 144) << 16)) << 32);
      v47 = v22;
    }

    else
    {
      v67 = sub_26C008EEC();
      v68 = *(v67 + 48);
      v69 = *(v67 + 52);
      swift_allocObject();
      v70 = sub_26C008E8C();
      v71 = v70;
      if (v66 >= 0x7FFFFFFF)
      {
        sub_26C00904C();
        v46 = swift_allocObject();
        *(v46 + 16) = 0;
        *(v46 + 24) = v66;
        v47 = v71 | 0x8000000000000000;
      }

      else
      {
        v46 = v66 << 32;
        v47 = v70 | 0x4000000000000000;
      }
    }
  }

  else
  {
    v46 = 0;
    v47 = 0xC000000000000000;
  }

  v73 = *(v0 + 440);
  v72 = *(v0 + 448);
  __swift_destroy_boxed_opaque_existential_1((v0 + 280));
  sub_26BE00258(v73, v72);
LABEL_64:
  *(v0 + 504) = v46;
  *(v0 + 512) = v47;
  *(v0 + 496) = v22;
  *(v0 + 368) = v46;
  *(v0 + 376) = v47;
  v74 = *(*v30 + 432);
  sub_26BE00608(v46, v47);
  v78 = (v74 + *v74);
  v75 = v74[1];
  v76 = swift_task_alloc();
  *(v0 + 520) = v76;
  *v76 = v0;
  v76[1] = sub_26BF00D94;
  v77 = *MEMORY[0x277D85DE8];

  return v78(v0 + 16, v0 + 368);
}

uint64_t sub_26BF016D4()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[61];

  sub_26BE00258(v1, v2);
  v4 = v0[1];
  v5 = v0[66];
  v6 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_26BF0177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  return MEMORY[0x2822009F8](sub_26BF017A4, 0, 0);
}

uint64_t sub_26BF017A4()
{
  v1 = v0[15];
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (*(v2 + 16))
  {
    v3 = v0[14];
    v5 = v0[11];
    v4 = v0[12];

    v6 = sub_26BEBB618(v5, v4);
    if (v7)
    {
      v8 = *(*(v2 + 56) + 8 * v6);
      v0[16] = v8;

      v9 = swift_task_alloc();
      v0[17] = v9;
      *v9 = v0;
      v9[1] = sub_26BF01968;

      return sub_26BEACBE4(v8, v8, 0, 0xF000000000000000);
    }

    v11 = v0[14];
    v12 = v0[12];
  }

  sub_26BE773C4();
  swift_allocError();
  *v13 = xmmword_26C01D5C0;
  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_26BF01968(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v9 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = v3[14];
    v6 = v3[12];

    v7 = sub_26BF01D3C;
  }

  else
  {
    v7 = sub_26BF01A90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF01A90()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  swift_beginAccess();

  v5 = *(v2 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v2 + 48);
  *(v2 + 48) = 0x8000000000000000;
  v8 = sub_26BEBB618(v4, v3);
  v9 = v32[2];
  v10 = (v7 & 1) == 0;
  result = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_18;
  }

  v12 = v7;
  if (v32[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      result = sub_26BE6F250();
    }
  }

  else
  {
    v14 = v0[11];
    v13 = v0[12];
    sub_26BE6C1E0(result, isUniquelyReferenced_nonNull_native);
    result = sub_26BEBB618(v14, v13);
    if ((v12 & 1) != (v15 & 1))
    {

      return sub_26C00AF8C();
    }

    v8 = result;
  }

  if ((v12 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v16 = v0[18];
  v18 = v0[13];
  v17 = v0[14];
  v19 = *(v32[7] + 8 * v8);

  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_26BE57AE8(v16, v18, v17, v20);

  if (v19)
  {
    *(v32[7] + 8 * v8) = v19;
  }

  else
  {
    sub_26BF25CA8(v32[6] + 16 * v8);
    sub_26C006458(v8, v32);
  }

  v21 = v0[18];
  v23 = v0[15];
  v22 = v0[16];
  v25 = v0[13];
  v24 = v0[14];
  v27 = v0[11];
  v26 = v0[12];
  *(v2 + 48) = v32;
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E548, &qword_26C00E4C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_26C011280;
  *(v28 + 32) = v27;
  *(v28 + 40) = v26;
  swift_beginAccess();
  v29 = *(v23 + 56);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v23 + 56);
  *(v23 + 56) = 0x8000000000000000;
  sub_26BE57AA8(v28, v25, v24, v30);

  *(v23 + 56) = v33;
  swift_endAccess();

  v31 = v0[1];

  return v31();
}

uint64_t sub_26BF01D3C()
{
  v1 = v0[16];

  v2 = v0[19];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF01DA0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[249] = v1;
  v2[248] = a1;
  v3 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v2[250] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[251] = swift_task_alloc();
  v5 = *(*(type metadata accessor for MLS.MLSMessage(0) - 8) + 64) + 15;
  v2[252] = swift_task_alloc();
  v2[253] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26BF01E9C, 0, 0);
}

uint64_t sub_26BF01E9C()
{
  v138 = v0;
  v137 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1992);
  v2 = *(v0 + 1984);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *(v0 + 2032) = v5;
  v6 = v2[3];
  *(v0 + 2040) = v6;
  swift_beginAccess();
  v7 = *(v1 + 48);
  if (!*(v7 + 16))
  {
    __break(1u);
    goto LABEL_70;
  }

  v8 = sub_26BEBB618(v3, v4);
  if ((v9 & 1) == 0)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  if (!*(v10 + 16))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v11 = *(*(v7 + 56) + 8 * v8);

  v12 = sub_26BEBB618(v5, v6);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v15 = *(v0 + 1984);
  *(v0 + 2048) = *(*(v10 + 56) + 8 * v12);

  v16 = *(v15 + 80);
  *(v0 + 2056) = v16;
  if (v16)
  {
    v17 = *(*(v0 + 1984) + 72);

    result = sub_26BF26234(v17, v16);
    if (v19 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    v21 = v19;
    v22 = *(*(v0 + 1984) + 64);
    if (v22 == 2 || (v22 & 1) == 0)
    {
      goto LABEL_61;
    }

    v135 = result;
    v136 = v19;
    sub_26BE00608(result, v19);
    MLS.Client.KeyPackage.asKeyPackage()(&v121);
    sub_26BE00258(v135, v136);
    v39 = *(&v131 + 1);
    v40 = v132;
    v41 = MEMORY[0x277CC9318];
    *(v0 + 1720) = MEMORY[0x277CC9318];
    *(v0 + 1728) = MEMORY[0x277CC9300];
    *(v0 + 1696) = v39;
    *(v0 + 1704) = v40;
    v42 = __swift_project_boxed_opaque_existential_1((v0 + 1696), v41);
    v43 = *v42;
    v44 = v42[1];
    v45 = v44 >> 62;
    if ((v44 >> 62) > 1)
    {
      if (v45 != 2)
      {
        *(v0 + 391) = 0;
        *(v0 + 385) = 0;
        sub_26BE00608(v39, v40);
        v46 = (v0 + 385);
        v47 = (v0 + 385);
        goto LABEL_38;
      }

      v48 = *(v43 + 16);
      v117 = *(v43 + 24);
      sub_26BE00608(v39, v40);
      v49 = sub_26C008E9C();
      v120 = v40;
      if (v49)
      {
        v50 = sub_26C008ECC();
        if (__OFSUB__(v48, v50))
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        v51 = v39;
        v49 += v48 - v50;
      }

      else
      {
        v51 = v39;
      }

      if (__OFSUB__(v117, v48))
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v62 = sub_26C008EBC();
      if (v62 >= v117 - v48)
      {
        v63 = v117 - v48;
      }

      else
      {
        v63 = v62;
      }

      v64 = &v49[v63];
      if (v49)
      {
        v65 = v64;
      }

      else
      {
        v65 = 0;
      }

      sub_26BE77028(v49, v65, &v135);
      v39 = v51;
    }

    else
    {
      if (!v45)
      {
        *(v0 + 371) = v43;
        *(v0 + 379) = v44;
        *(v0 + 381) = BYTE2(v44);
        *(v0 + 382) = BYTE3(v44);
        *(v0 + 383) = BYTE4(v44);
        *(v0 + 384) = BYTE5(v44);
        sub_26BE00608(v39, v40);
        v46 = (v0 + 371);
        v47 = (v0 + 371 + BYTE6(v44));
LABEL_38:
        sub_26BE77028(v46, v47, &v135);
        goto LABEL_49;
      }

      v120 = v40;
      v52 = v39;
      v53 = v43;
      v54 = v43 >> 32;
      v55 = v54 - v53;
      if (v54 < v53)
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      sub_26BE00608(v52, v120);
      v56 = sub_26C008E9C();
      if (v56)
      {
        v57 = sub_26C008ECC();
        if (__OFSUB__(v53, v57))
        {
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
        }

        v56 += v53 - v57;
      }

      v39 = v52;
      v58 = sub_26C008EBC();
      if (v58 >= v55)
      {
        v59 = v55;
      }

      else
      {
        v59 = v58;
      }

      v60 = &v56[v59];
      if (v56)
      {
        v61 = v60;
      }

      else
      {
        v61 = 0;
      }

      sub_26BE77028(v56, v61, &v135);
    }

    v40 = v120;
LABEL_49:
    v66 = v135;
    v67 = v136;
    __swift_destroy_boxed_opaque_existential_1((v0 + 1696));
    v133 = v66;
    v134 = v67;
    v68 = v40 >> 62;
    if ((v40 >> 62) <= 1)
    {
      if (!v68)
      {
        v69 = BYTE6(v40);
        goto LABEL_59;
      }

LABEL_56:
      LODWORD(v69) = HIDWORD(v39) - v39;
      if (__OFSUB__(HIDWORD(v39), v39))
      {
        goto LABEL_78;
      }

      v69 = v69;
      goto LABEL_59;
    }

    if (v68 == 2)
    {
      v71 = *(v39 + 16);
      v70 = *(v39 + 24);
      v72 = __OFSUB__(v70, v71);
      v69 = v70 - v71;
      if (v72)
      {
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {
      v69 = 0;
    }

LABEL_59:
    if (!__OFSUB__(v69, 1))
    {
      v73 = *(v0 + 2016);
      v118 = *(v0 + 2000);
      sub_26C0090AC();
      sub_26C0090BC();
      v74 = v133;
      v75 = v134;
      sub_26BE00608(v133, v134);
      sub_26BE00258(v39, v40);
      *(&v131 + 1) = v74;
      v76 = v128;
      v78 = v127;
      v77 = v128;
      *(v0 + 1232) = v127;
      *(v0 + 1248) = v76;
      v79 = v126;
      v81 = v125;
      v80 = v126;
      *(v0 + 1200) = v125;
      *(v0 + 1216) = v79;
      v82 = v130;
      *(v0 + 1264) = v129;
      *(v0 + 1280) = v82;
      v84 = v129;
      v83 = v130;
      *(v0 + 1296) = v131;
      v85 = v122;
      v87 = v121;
      v86 = v122;
      *(v0 + 1136) = v121;
      *(v0 + 1152) = v85;
      v88 = v124;
      v90 = v123;
      v89 = v124;
      *(v0 + 1168) = v123;
      *(v0 + 1184) = v88;
      *(v0 + 1312) = v75;
      *(v73 + 32) = v90;
      *(v73 + 48) = v89;
      *v73 = v87;
      *(v73 + 16) = v86;
      *(v73 + 96) = v78;
      *(v73 + 112) = v77;
      *(v73 + 64) = v81;
      *(v73 + 80) = v80;
      v91 = v131;
      *(v73 + 144) = v83;
      *(v73 + 160) = v91;
      v132 = v75;
      *(v73 + 176) = v75;
      *(v73 + 128) = v84;
      swift_storeEnumTagMultiPayload();
      sub_26BE2DFC0(v0 + 1136, v0 + 952);
      v92 = MLS.MLSMessage.rawValue.getter();
      v93 = *(v0 + 2016);
      v94 = v92;
      v96 = v95;
      sub_26BE00258(v20, v21);
      sub_26BF26E54(v93, type metadata accessor for MLS.MLSMessage);
      sub_26BE00258(v74, v75);
      v97 = v130;
      *(v0 + 528) = v129;
      *(v0 + 544) = v97;
      *(v0 + 560) = v131;
      *(v0 + 576) = v132;
      v98 = v126;
      *(v0 + 464) = v125;
      *(v0 + 480) = v98;
      v99 = v128;
      *(v0 + 496) = v127;
      *(v0 + 512) = v99;
      v100 = v122;
      *(v0 + 400) = v121;
      *(v0 + 416) = v100;
      v101 = v124;
      *(v0 + 432) = v123;
      *(v0 + 448) = v101;
      sub_26BE2E01C(v0 + 400);
      v20 = v94;
      v21 = v96;
LABEL_61:
      *(v0 + 2112) = v21;
      *(v0 + 2104) = v20;
      v102 = *(v0 + 2048);
      type metadata accessor for MLS.RCSGroup();
      v103 = swift_dynamicCastClass();
      *(v0 + 2120) = v103;
      if (v103 && (*(v0 + 1904) = *(*(v0 + 1984) + 48), (v104 = *(v0 + 1912)) != 0))
      {
        v105 = v103;
        v106 = *(v0 + 1904);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA50, &qword_26C01D8B0);
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_26C011280;
        *(v107 + 32) = v106;
        *(v107 + 40) = v104;
        *(v107 + 48) = v20;
        *(v107 + 56) = v21;

        sub_26BE2E1F0(v0 + 1904, v0 + 1920, &qword_28045EE08, &qword_26C016570);
        sub_26BE00608(v20, v21);
        v108 = sub_26C005DBC(v107);
        *(v0 + 2128) = v108;
        swift_setDeallocating();
        sub_26BE2E258(v107 + 32, &qword_28045FA58, &qword_26C01D8B8);
        swift_deallocClassInstance();

        v109 = swift_task_alloc();
        *(v0 + 2136) = v109;
        *v109 = v0;
        v109[1] = sub_26BF038B0;
        v110 = *MEMORY[0x277D85DE8];

        return sub_26BE958B4(v109, v105, v105, v108);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E590, &qword_26C024670);
        v111 = swift_allocObject();
        *(v0 + 2176) = v111;
        *(v111 + 16) = xmmword_26C011280;
        *(v111 + 32) = v20;
        *(v111 + 40) = v21;
        v112 = *(*v102 + 472);
        sub_26BE00608(v20, v21);
        v119 = (v112 + *v112);
        v113 = v112[1];
        v114 = swift_task_alloc();
        *(v0 + 2184) = v114;
        *v114 = v0;
        v114[1] = sub_26BF04600;
        v115 = *(v0 + 2048);
        v116 = *MEMORY[0x277D85DE8];

        return v119(v0 + 1456, v111);
      }
    }

    goto LABEL_73;
  }

  v23 = *(v0 + 1992);
  swift_beginAccess();
  v24 = *(v23 + 40);
  if (*(v24 + 16))
  {
    v25 = *(v0 + 1984);
    v26 = *(v25 + 32);
    *(v0 + 2064) = v26;
    v27 = *(v25 + 40);
    *(v0 + 2072) = v27;

    v28 = sub_26BEBB618(v26, v27);
    if (v29)
    {
      v30 = *(*(v24 + 56) + 8 * v28);
      *(v0 + 2080) = v30;

      v31 = swift_task_alloc();
      *(v0 + 2088) = v31;
      *v31 = v0;
      v31[1] = sub_26BF02A24;
      v32 = *MEMORY[0x277D85DE8];

      return sub_26BE8E304(v0 + 1968, v30, v30);
    }
  }

  sub_26BE773C4();
  swift_allocError();
  *v33 = xmmword_26C01D5C0;
  swift_willThrow();

  v34 = *(v0 + 2024);
  v35 = *(v0 + 2016);
  v36 = *(v0 + 2008);

  v37 = *(v0 + 8);
  v38 = *MEMORY[0x277D85DE8];

  return v37();
}

uint64_t sub_26BF02A24()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 2088);
  v7 = *v1;
  *(*v1 + 2096) = v0;

  if (v0)
  {
    v3 = sub_26BF02B64;
  }

  else
  {
    v3 = sub_26BF02C28;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF02B64()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[260];
  v2 = v0[256];

  v3 = v0[262];
  v4 = v0[253];
  v5 = v0[252];
  v6 = v0[251];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_26BF02C28()
{
  v145 = v0;
  v144 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2096);
  v2 = *(v0 + 2080);
  v3 = *(v0 + 2024);

  v4 = *(v0 + 1968);
  v5 = *(v0 + 1976);
  sub_26BE00608(v4, v5);
  MLS.MLSMessage.init(rawValue:quiet:)(v4, v5, 0, v3);
  if (v1)
  {
    v6 = *(v0 + 2048);
    sub_26BE00258(v4, v5);

LABEL_27:
    v51 = *(v0 + 2024);
    v52 = *(v0 + 2016);
    v53 = *(v0 + 2008);

    v54 = *(v0 + 8);
    v55 = *MEMORY[0x277D85DE8];

    return v54();
  }

  v7 = *(v0 + 2000);
  sub_26BEE3514(*(v0 + 2024), *(v0 + 2008));
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v30 = *(v0 + 2048);
    v31 = *(v0 + 2024);
    sub_26BF26E54(*(v0 + 2008), type metadata accessor for MLS.MLSMessage.Inner);
    sub_26BE01654();
    swift_allocError();
    *v32 = 2;
    v32[112] = 4;
    swift_willThrow();

    sub_26BE00258(v4, v5);
    v33 = v31;
    goto LABEL_26;
  }

  v8 = v0 + 584;
  v9 = *(v0 + 2008);
  v10 = *(v0 + 1992);
  v11 = v9[3];
  v13 = *v9;
  v12 = v9[1];
  *(v0 + 616) = v9[2];
  *(v0 + 632) = v11;
  *(v0 + 584) = v13;
  *(v0 + 600) = v12;
  v14 = v9[7];
  v16 = v9[4];
  v15 = v9[5];
  *(v0 + 680) = v9[6];
  *(v0 + 696) = v14;
  *(v0 + 648) = v16;
  *(v0 + 664) = v15;
  v18 = v9[9];
  v17 = v9[10];
  v19 = v9[8];
  *(v0 + 760) = *(v9 + 22);
  *(v0 + 728) = v18;
  *(v0 + 744) = v17;
  *(v0 + 712) = v19;
  v20 = *(v10 + 40);
  if (!*(v20 + 16))
  {
    __break(1u);
    goto LABEL_74;
  }

  v21 = *(v0 + 2072);
  v22 = *(v0 + 2064);
  v23 = *(v10 + 40);

  v24 = sub_26BEBB618(v22, v21);
  if ((v25 & 1) == 0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v26 = *(*(v20 + 56) + 8 * v24);

  swift_beginAccess();
  sub_26BE295A0(v26 + 40, v0 + 16);

  v28 = *(v0 + 256);
  v27 = *(v0 + 264);

  sub_26BE29710(v0 + 16);
  if (v28 == 0xD00000000000001ALL && 0x800000026C02AD20 == v27)
  {
  }

  else
  {
    v34 = sub_26C00AF2C();

    if ((v34 & 1) == 0)
    {
LABEL_22:
      sub_26BF26E54(*(v0 + 2024), type metadata accessor for MLS.MLSMessage);
      sub_26BE2E01C(v0 + 584);
      v47 = *(*(v0 + 1984) + 64);
      if (v47 == 2 || (v47 & 1) == 0)
      {
        goto LABEL_65;
      }

      v142 = v4;
      v143 = v5;
      sub_26BE00608(v4, v5);
      MLS.Client.KeyPackage.asKeyPackage()(&v128);
      v127 = v5;
      sub_26BE00258(v142, v143);
      v8 = *(&v138 + 1);
      v37 = v139;
      v56 = MEMORY[0x277CC9318];
      *(v0 + 1720) = MEMORY[0x277CC9318];
      *(v0 + 1728) = MEMORY[0x277CC9300];
      *(v0 + 1696) = v8;
      *(v0 + 1704) = v37;
      v57 = __swift_project_boxed_opaque_existential_1((v0 + 1696), v56);
      v58 = *v57;
      v59 = v57[1];
      v60 = v59 >> 62;
      if ((v59 >> 62) > 1)
      {
        if (v60 != 2)
        {
          *(v0 + 391) = 0;
          *(v0 + 385) = 0;
          sub_26BE00608(v8, v37);
          v61 = (v0 + 385);
          v62 = (v0 + 385);
          goto LABEL_52;
        }

        v63 = *(v58 + 16);
        v64 = *(v58 + 24);
        sub_26BE00608(v8, v37);
        v65 = sub_26C008E9C();
        if (v65)
        {
          result = sub_26C008ECC();
          v58 = v63 - result;
          if (__OFSUB__(v63, result))
          {
            __break(1u);
            goto LABEL_78;
          }

          v65 += v58;
        }

        v66 = __OFSUB__(v64, v63);
        v67 = v64 - v63;
        if (!v66)
        {
          goto LABEL_44;
        }

        __break(1u);
      }

      else if (!v60)
      {
        *(v0 + 371) = v58;
        *(v0 + 379) = v59;
        *(v0 + 381) = BYTE2(v59);
        *(v0 + 382) = BYTE3(v59);
        *(v0 + 383) = BYTE4(v59);
        *(v0 + 384) = BYTE5(v59);
        sub_26BE00608(v8, v37);
        v61 = (v0 + 371);
        v62 = (v0 + 371 + BYTE6(v59));
        goto LABEL_52;
      }

      v68 = v58;
      v69 = v58 >> 32;
      v67 = v69 - v68;
      if (v69 < v68)
      {
        goto LABEL_76;
      }

      sub_26BE00608(v8, v37);
      v65 = sub_26C008E9C();
      if (!v65)
      {
        goto LABEL_44;
      }

      result = sub_26C008ECC();
      if (!__OFSUB__(v68, result))
      {
        v65 += v68 - result;
LABEL_44:
        v70 = sub_26C008EBC();
        if (v70 >= v67)
        {
          v71 = v67;
        }

        else
        {
          v71 = v70;
        }

        v72 = (v71 + v65);
        if (v65)
        {
          v62 = v72;
        }

        else
        {
          v62 = 0;
        }

        v61 = v65;
LABEL_52:
        sub_26BE77028(v61, v62, &v142);
        v73 = v142;
        v74 = v143;
        result = __swift_destroy_boxed_opaque_existential_1((v0 + 1696));
        v140 = v73;
        v141 = v74;
        v39 = (v37 >> 62);
        if ((v37 >> 62) > 1)
        {
          goto LABEL_56;
        }

        if (!v39)
        {
          v75 = BYTE6(v37);
          goto LABEL_63;
        }

LABEL_60:
        LODWORD(v75) = HIDWORD(v8) - v8;
        if (!__OFSUB__(HIDWORD(v8), v8))
        {
          v75 = v75;
          goto LABEL_63;
        }

        goto LABEL_79;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      return result;
    }
  }

  v124 = v4;
  v4 = 0;
  v35 = *(v0 + 744);
  v36 = *(v35 + 16);
  v37 = v35 + 32;
  v38 = MEMORY[0x277D84F90];
LABEL_12:
  v39 = (v37 + 24 * v4);
  while (1)
  {
    if (v36 == v4)
    {
      v46 = *(v38 + 16);

      v4 = v124;
      if (v46 == 1)
      {
        goto LABEL_22;
      }

      v48 = *(v0 + 2048);
      v49 = *(v0 + 2024);
      sub_26BE01654();
      swift_allocError();
      *v50 = 2;
      v50[112] = 4;
      swift_willThrow();
      sub_26BE2E01C(v0 + 584);

      sub_26BE00258(v124, v5);
      v33 = v49;
LABEL_26:
      sub_26BF26E54(v33, type metadata accessor for MLS.MLSMessage);
      goto LABEL_27;
    }

    if (v4 >= *(v35 + 16))
    {
      break;
    }

    v40 = v39 + 12;
    ++v4;
    v41 = *v39;
    v39 += 12;
    if (v41 == 10)
    {
      v42 = *(v40 - 1);
      v122 = *(v40 - 2);
      sub_26BE00608(v122, v42);
      result = swift_isUniquelyReferenced_nonNull_native();
      *&v128 = v38;
      v127 = v5;
      v123 = v37;
      if ((result & 1) == 0)
      {
        result = sub_26BECBAB4(0, *(v38 + 16) + 1, 1);
        v38 = v128;
      }

      v44 = *(v38 + 16);
      v43 = *(v38 + 24);
      if (v44 >= v43 >> 1)
      {
        result = sub_26BECBAB4((v43 > 1), v44 + 1, 1);
        v38 = v128;
      }

      *(v38 + 16) = v44 + 1;
      v45 = v38 + 24 * v44;
      *(v45 + 32) = 10;
      v37 = v123;
      *(v45 + 40) = v122;
      *(v45 + 48) = v42;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_56:
  if (v39 != 2)
  {
    v75 = 0;
    goto LABEL_63;
  }

  v77 = *(v8 + 16);
  v76 = *(v8 + 24);
  v66 = __OFSUB__(v76, v77);
  v75 = v76 - v77;
  if (v66)
  {
    __break(1u);
    goto LABEL_60;
  }

LABEL_63:
  if (__OFSUB__(v75, 1))
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
  }

  v78 = v4;
  v79 = *(v0 + 2016);
  v125 = *(v0 + 2000);
  sub_26C0090AC();
  sub_26C0090BC();
  v80 = v140;
  v81 = v141;
  sub_26BE00608(v140, v141);
  sub_26BE00258(v8, v37);
  *(&v138 + 1) = v80;
  v82 = v135;
  v84 = v134;
  v83 = v135;
  *(v0 + 1232) = v134;
  *(v0 + 1248) = v82;
  v85 = v133;
  v87 = v132;
  v86 = v133;
  *(v0 + 1200) = v132;
  *(v0 + 1216) = v85;
  v88 = v137;
  *(v0 + 1264) = v136;
  *(v0 + 1280) = v88;
  v90 = v136;
  v89 = v137;
  *(v0 + 1296) = v138;
  v91 = v129;
  v93 = v128;
  v92 = v129;
  *(v0 + 1136) = v128;
  *(v0 + 1152) = v91;
  v94 = v131;
  v96 = v130;
  v95 = v131;
  *(v0 + 1168) = v130;
  *(v0 + 1184) = v94;
  *(v0 + 1312) = v81;
  *(v79 + 32) = v96;
  *(v79 + 48) = v95;
  *v79 = v93;
  *(v79 + 16) = v92;
  *(v79 + 96) = v84;
  *(v79 + 112) = v83;
  *(v79 + 64) = v87;
  *(v79 + 80) = v86;
  v97 = v138;
  *(v79 + 144) = v89;
  *(v79 + 160) = v97;
  v139 = v81;
  *(v79 + 176) = v81;
  *(v79 + 128) = v90;
  swift_storeEnumTagMultiPayload();
  sub_26BE2DFC0(v0 + 1136, v0 + 952);
  v98 = MLS.MLSMessage.rawValue.getter();
  v99 = *(v0 + 2016);
  v4 = v98;
  v101 = v100;
  sub_26BE00258(v78, v127);
  sub_26BF26E54(v99, type metadata accessor for MLS.MLSMessage);
  sub_26BE00258(v80, v81);
  v102 = v137;
  *(v0 + 528) = v136;
  *(v0 + 544) = v102;
  *(v0 + 560) = v138;
  *(v0 + 576) = v139;
  v103 = v133;
  *(v0 + 464) = v132;
  *(v0 + 480) = v103;
  v104 = v135;
  *(v0 + 496) = v134;
  *(v0 + 512) = v104;
  v105 = v129;
  *(v0 + 400) = v128;
  *(v0 + 416) = v105;
  v106 = v131;
  *(v0 + 432) = v130;
  *(v0 + 448) = v106;
  sub_26BE2E01C(v0 + 400);
  v5 = v101;
LABEL_65:
  *(v0 + 2112) = v5;
  *(v0 + 2104) = v4;
  v107 = *(v0 + 2048);
  type metadata accessor for MLS.RCSGroup();
  v108 = swift_dynamicCastClass();
  *(v0 + 2120) = v108;
  if (v108 && (*(v0 + 1904) = *(*(v0 + 1984) + 48), (v109 = *(v0 + 1912)) != 0))
  {
    v110 = v108;
    v111 = *(v0 + 1904);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA50, &qword_26C01D8B0);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_26C011280;
    *(v112 + 32) = v111;
    *(v112 + 40) = v109;
    *(v112 + 48) = v4;
    *(v112 + 56) = v5;

    sub_26BE2E1F0(v0 + 1904, v0 + 1920, &qword_28045EE08, &qword_26C016570);
    sub_26BE00608(v4, v5);
    v113 = sub_26C005DBC(v112);
    *(v0 + 2128) = v113;
    swift_setDeallocating();
    sub_26BE2E258(v112 + 32, &qword_28045FA58, &qword_26C01D8B8);
    swift_deallocClassInstance();

    v114 = swift_task_alloc();
    *(v0 + 2136) = v114;
    *v114 = v0;
    v114[1] = sub_26BF038B0;
    v115 = *MEMORY[0x277D85DE8];

    return sub_26BE958B4(v114, v110, v110, v113);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E590, &qword_26C024670);
    v116 = swift_allocObject();
    *(v0 + 2176) = v116;
    *(v116 + 16) = xmmword_26C011280;
    *(v116 + 32) = v4;
    *(v116 + 40) = v5;
    v117 = *(*v107 + 472);
    sub_26BE00608(v4, v5);
    v126 = (v117 + *v117);
    v118 = v117[1];
    v119 = swift_task_alloc();
    *(v0 + 2184) = v119;
    *v119 = v0;
    v119[1] = sub_26BF04600;
    v120 = *(v0 + 2048);
    v121 = *MEMORY[0x277D85DE8];

    return v126(v0 + 1456, v116);
  }
}