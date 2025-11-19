uint64_t sub_21DE8CD68()
{
  v1 = *v0;
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE8CDF0()
{
  *v0;
  sub_21DEC6E90();
}

uint64_t sub_21DE8CE64()
{
  v1 = *v0;
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE8CEE8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21DEC7470();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_21DE8CF48(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F73726570;
  if (*v1)
  {
    v2 = 0x617A696E6167726FLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEC0000006E6F6974;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21DE8D04C()
{
  if (*v0)
  {
    return 0x6E6F6870656C6574;
  }

  else
  {
    return 0x6D614E746E696F70;
  }
}

uint64_t sub_21DE8D084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E746E696F70 && a2 == 0xE900000000000065;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6870656C6574 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DE8D168(uint64_t a1)
{
  v2 = sub_21DE99C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE8D1A4(uint64_t a1)
{
  v2 = sub_21DE99C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE8D1E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8D22C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_21DE8D294@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8D2E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

BOOL sub_21DE8D348()
{
  v1 = (*(*v0 + 96))();
  v3 = v2;

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = (*(*v0 + 120))(v4);
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  return v9 != 0;
}

uint64_t sub_21DE8D408()
{
  v1 = (*(*v0 + 96))();
  v3 = v2;
  v5 = (*(*v0 + 120))();

  return sub_21DEBCAD8(v1, v3, v5, v4);
}

uint64_t Contact.ContactPoint.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Contact.ContactPoint.init(from:)(a1);
  return v2;
}

void *Contact.ContactPoint.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945C8, &qword_21DED0EF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99C34();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for Contact.ContactPoint();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = 0;
    v10 = sub_21DEC74A0();
    v12 = v11;
    if (v11)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v1[2] = v13;
    v1[3] = v14;
    v26 = 1;

    v15 = sub_21DEC74A0();
    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    if (v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    v1[4] = v18;
    v1[5] = v19;
    if (v12)
    {

      (*(v5 + 8))(v8, v4);
    }

    else
    {
      v20 = sub_21DEA2250(a1);
      if (v21)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0;
      }

      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0xE000000000000000;
      }

      (*(v5 + 8))(v8, v4);
      swift_beginAccess();
      v24 = v1[3];
      v1[2] = v22;
      v1[3] = v23;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_21DE8D778(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945D8, &qword_21DED0F00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99C34();
  v11 = sub_21DEC7810();
  (*(*v3 + 96))(v11);
  v14[15] = 0;
  sub_21DEC7590();
  if (!v2)
  {

    (*(*v3 + 120))(v12);
    v14[14] = 1;
    sub_21DEC7590();
  }

  (*(v6 + 8))(v9, v5);
}

uint64_t sub_21DE8D95C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 160))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE8DA20()
{
  v1 = *v0;
  v2 = 0x746565727473;
  v3 = 0x6574617473;
  v4 = 0x6F436C6174736F70;
  if (v1 != 3)
  {
    v4 = 0x7972746E756F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2037672291;
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

uint64_t sub_21DE8DAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE99CAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE8DAE4(uint64_t a1)
{
  v2 = sub_21DE99E5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE8DB20(uint64_t a1)
{
  v2 = sub_21DE99E5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE8DB5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8DBA8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t sub_21DE8DC10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8DC5C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 152);

  return v4(v2, v3);
}

uint64_t sub_21DE8DCC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8DD10(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 176);

  return v4(v2, v3);
}

uint64_t sub_21DE8DD78()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_21DE8DDC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_21DE8DE18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8DE64(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 200);

  return v4(v2, v3);
}

uint64_t sub_21DE8DECC()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_21DE8DF18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_21DE8DFBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8E008(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 224);

  return v4(v2, v3);
}

uint64_t sub_21DE8E070()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_21DE8E0BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

BOOL sub_21DE8E160()
{
  v1 = (*(*v0 + 120))();
  v3 = v2;

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    return 1;
  }

  v6 = (*(*v0 + 144))(v4);
  v8 = v7;

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    return 1;
  }

  v11 = (*(*v0 + 168))(v9);
  v13 = v12;

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    return 1;
  }

  v16 = (*(*v0 + 192))(v14);
  v18 = v17;

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    return 1;
  }

  v22 = (*(*v0 + 216))(v19);
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  return v25 != 0;
}

uint64_t sub_21DE8E2F8()
{
  v1 = (*(*v0 + 120))();
  v19 = sub_21DEBCAD8(0x746565727453, 0xE600000000000000, v1, v2);
  v3 = (*(*v0 + 144))();
  v5 = sub_21DEBCAD8(2037672259, 0xE400000000000000, v3, v4);
  MEMORY[0x223D4B2A0](v5);

  v7 = (*(*v0 + 168))(v6);
  v9 = sub_21DEBCAD8(0x6574617453, 0xE500000000000000, v7, v8);
  MEMORY[0x223D4B2A0](v9);

  v11 = (*(*v0 + 192))(v10);
  v13 = sub_21DEBCAD8(0x63206C6174736F50, 0xEB0000000065646FLL, v11, v12);
  MEMORY[0x223D4B2A0](v13);

  v15 = (*(*v0 + 216))(v14);
  v17 = sub_21DEBCAD8(0x7972746E756F43, 0xE700000000000000, v15, v16);
  MEMORY[0x223D4B2A0](v17);

  return v19;
}

uint64_t Contact.Address.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Contact.Address.init(from:)(a1);
  return v2;
}

void *Contact.Address.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945E0, &qword_21DED0F08);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99E5C();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for Contact.Address();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = 0;
    v10 = sub_21DEC74A0();
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    v1[2] = v12;
    v1[3] = v13;
    v35 = 1;
    v14 = sub_21DEC74A0();
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xE000000000000000;
    }

    v1[4] = v16;
    v1[5] = v17;
    v34 = 2;
    v18 = sub_21DEC74A0();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    v1[6] = v20;
    v1[7] = v21;
    v33 = 3;
    v22 = sub_21DEC74A0();
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    v1[8] = v24;
    v1[9] = v25;
    v32 = 4;
    v26 = sub_21DEC74A0();
    if (v27)
    {
      v29 = v26;
    }

    else
    {
      v29 = 0;
    }

    if (v27)
    {
      v30 = v27;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    (*(v5 + 8))(v8, v4);
    v1[10] = v29;
    v1[11] = v30;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

void *Contact.Address.__allocating_init(street:city:state:postalCode:country:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  result[10] = a9;
  result[11] = a10;
  return result;
}

void *Contact.Address.init(street:city:state:postalCode:country:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v10[7] = a6;
  v10[8] = a7;
  v10[9] = a8;
  v10[10] = a9;
  v10[11] = a10;
  return v10;
}

uint64_t sub_21DE8E8F8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945F0, &qword_21DED0F10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99E5C();
  v11 = sub_21DEC7810();
  v12 = (*(*v3 + 120))(v11);
  v27[15] = 0;
  sub_21DE6C7C8(v12, v13);
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v15 = (*(*v3 + 144))(v14);
    v27[14] = 1;
    sub_21DE6C7C8(v15, v16);

    v18 = (*(*v3 + 168))(v17);
    v27[13] = 2;
    sub_21DE6C7C8(v18, v19);

    v21 = (*(*v3 + 192))(v20);
    v27[12] = 3;
    sub_21DE6C7C8(v21, v22);

    v25 = (*(*v3 + 216))(v24);
    v27[11] = 4;
    sub_21DE6C7C8(v25, v26);
    (*(v6 + 8))(v9, v5);
  }
}

void *Contact.Address.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return v0;
}

uint64_t Contact.Address.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_21DE8EC7C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 256))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE8ED48()
{
  if (*v0)
  {
    result = 0x656C646E6168;
  }

  else
  {
    result = 0x6D726F6674616C70;
  }

  *v0;
  return result;
}

uint64_t sub_21DE8ED80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DE8EE58(uint64_t a1)
{
  v2 = sub_21DE99ED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE8EE94(uint64_t a1)
{
  v2 = sub_21DE99ED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE8EED0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8EF1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_21DE8EF84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8EFD0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

BOOL sub_21DE8F038()
{
  v1 = (*(*v0 + 96))();
  v3 = v2;

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = (*(*v0 + 120))(v4);
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  return v9 != 0;
}

uint64_t sub_21DE8F0F8()
{
  v1 = (*(*v0 + 96))();
  v3 = v2;
  v5 = (*(*v0 + 120))();

  return sub_21DEBCAD8(v1, v3, v5, v4);
}

uint64_t Contact.SocialMedia.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Contact.SocialMedia.init(from:)(a1);
  return v2;
}

void *Contact.SocialMedia.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945F8, &qword_21DED0F18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99ED4();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for Contact.SocialMedia();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = 0;
    v10 = sub_21DEC74A0();
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = 0xE000000000000000;
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v1[2] = v12;
    v1[3] = v14;
    v20 = 1;
    v15 = sub_21DEC74A0();
    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    if (v16)
    {
      v13 = v16;
    }

    (*(v5 + 8))(v8, v4);
    v1[4] = v18;
    v1[5] = v13;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_21DE8F3D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94608, &qword_21DED0F20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99ED4();
  v11 = sub_21DEC7810();
  (*(*v3 + 96))(v11);
  v14[15] = 0;
  sub_21DEC7590();
  if (!v2)
  {

    (*(*v3 + 120))(v12);
    v14[14] = 1;
    sub_21DEC7590();
  }

  (*(v6 + 8))(v9, v5);
}

uint64_t sub_21DE8F5B4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 160))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE8F678(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4B746361746E6F63;
    v6 = 0x656C746954626F6ALL;
    if (a1 != 2)
    {
      v6 = 0x726F46736B726F77;
    }

    if (a1)
    {
      v5 = 1701667182;
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
    v1 = 0x736C69616D65;
    v2 = 1936487029;
    if (a1 != 7)
    {
      v2 = 0x654D6C6169636F73;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x50746361746E6F63;
    if (a1 != 4)
    {
      v3 = 0x73736572646461;
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

uint64_t sub_21DE8F7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE99F4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE8F7D4(uint64_t a1)
{
  v2 = sub_21DE9A234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE8F810(uint64_t a1)
{
  v2 = sub_21DE9A234();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21DE8F84C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21DE8F8A8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 160))(&v4);
}

uint64_t sub_21DE8F900@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8F94C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 184);

  return v4(v2, v3);
}

uint64_t sub_21DE8F9B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8FA00(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 208);

  return v4(v2, v3);
}

uint64_t sub_21DE8FA70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8FABC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 232);

  return v4(v2, v3);
}

uint64_t sub_21DE8FB28()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_21DE8FB78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_21DE8FBCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE8FC18(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 256);

  return v3(v4);
}

uint64_t sub_21DE8FC74()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t sub_21DE8FCAC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t sub_21DE8FCF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE8FD48(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 280);

  return v3(v4);
}

uint64_t sub_21DE8FDA4()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
}

uint64_t sub_21DE8FDDC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t sub_21DE8FE24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE8FE78(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 304);

  return v3(v4);
}

uint64_t sub_21DE8FED4()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t sub_21DE8FF0C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t sub_21DE8FFA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE8FFF8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 328);

  return v3(v4);
}

uint64_t sub_21DE90054()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

uint64_t sub_21DE9008C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t sub_21DE90124@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE90178(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 352);

  return v3(v4);
}

uint64_t sub_21DE901D4()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
}

uint64_t sub_21DE9020C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

char *sub_21DE902A4()
{
  v1 = v0;
  v100 = 0;
  v101 = 0xE000000000000000;
  (*(*v0 + 152))(&v98);
  if (v98)
  {
    v2 = 0x617A696E6167726FLL;
  }

  else
  {
    v2 = 0x6E6F73726570;
  }

  if (v98)
  {
    v3 = 0xEC0000006E6F6974;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  v4 = sub_21DEBCAD8(0x4B746361746E6F63, 0xEB00000000646E69, v2, v3);
  MEMORY[0x223D4B2A0](v4);

  v6 = (*(*v0 + 176))(v5);
  v8 = sub_21DEBCAD8(1701667182, 0xE400000000000000, v6, v7);
  MEMORY[0x223D4B2A0](v8);

  v10 = (*(*v0 + 200))(v9);
  v12 = sub_21DEBCAD8(0x656C746954626F6ALL, 0xE800000000000000, v10, v11);
  MEMORY[0x223D4B2A0](v12);

  v14 = (*(*v0 + 224))(v13);
  v16 = sub_21DEBCAD8(0x726F46736B726F77, 0xE800000000000000, v14, v15);
  MEMORY[0x223D4B2A0](v16);

  v18 = (*(*v0 + 248))(v17);
  v19 = v18;
  if (v18 >> 62)
  {
    v20 = sub_21DEC7400();
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v98 = MEMORY[0x277D84F90];
    result = sub_21DE52560(0, v20 & ~(v20 >> 63), 0);
    if (v20 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v97 = v0;
    v23 = 0;
    v24 = v98;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x223D4B690](v23, v19);
      }

      else
      {
        v25 = *(v19 + 8 * v23 + 32);
      }

      v26 = (*(*v25 + 152))();
      v28 = v27;

      v98 = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_21DE52560((v29 > 1), v30 + 1, 1);
        v24 = v98;
      }

      ++v23;
      *(v24 + 16) = v30 + 1;
      v31 = v24 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
    }

    while (v20 != v23);

    v1 = v97;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v98 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
  sub_21DE6884C(&qword_280F7A6D8, &qword_27CE93E90, &qword_21DECCA40);
  v32 = sub_21DEC6D60();
  v34 = v33;

  v98 = 10;
  v99 = 0xE100000000000000;
  MEMORY[0x223D4B2A0](v32, v34);

  v35 = v98;
  v36 = v99;
  v37 = sub_21DEBCBBC();
  v38 = sub_21DEBCBC4(v37, v35, v36);
  v40 = v39;

  v41 = sub_21DEBCAD8(0x50746361746E6F63, 0xED000073746E696FLL, v38, v40);
  MEMORY[0x223D4B2A0](v41);

  v98 = 10;
  v99 = 0xE100000000000000;
  v43 = (*(*v1 + 272))(v42);
  v44 = (*(*v43 + 248))();
  MEMORY[0x223D4B2A0](v44);

  v45 = v98;
  v46 = v99;
  v47 = sub_21DEBCBBC();
  v48 = sub_21DEBCBC4(v47, v45, v46);
  v50 = v49;

  v51 = sub_21DEBCAD8(0x73736572646461, 0xE700000000000000, v48, v50);
  MEMORY[0x223D4B2A0](v51);

  v98 = 10;
  v99 = 0xE100000000000000;
  (*(*v1 + 296))(v52);
  v53 = sub_21DEC6D60();
  v55 = v54;

  MEMORY[0x223D4B2A0](v53, v55);

  v56 = v98;
  v57 = v99;
  v58 = sub_21DEBCBBC();
  v59 = sub_21DEBCBC4(v58, v56, v57);
  v61 = v60;

  v62 = sub_21DEBCAD8(0x736C69616D65, 0xE600000000000000, v59, v61);
  MEMORY[0x223D4B2A0](v62);

  v98 = 10;
  v99 = 0xE100000000000000;
  (*(*v1 + 320))(v63);
  v64 = sub_21DEC6D60();
  v66 = v65;

  MEMORY[0x223D4B2A0](v64, v66);

  v67 = v98;
  v68 = v99;
  v69 = sub_21DEBCBBC();
  v70 = sub_21DEBCBC4(v69, v67, v68);
  v72 = v71;

  v73 = sub_21DEBCAD8(1936487029, 0xE400000000000000, v70, v72);
  MEMORY[0x223D4B2A0](v73);

  v75 = (*(*v1 + 344))(v74);
  v76 = v75;
  if (!(v75 >> 62))
  {
    v77 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v77)
    {
      goto LABEL_22;
    }

LABEL_33:

    v79 = MEMORY[0x277D84F90];
LABEL_34:
    v98 = v79;
    v87 = sub_21DEC6D60();
    v89 = v88;

    v98 = 10;
    v99 = 0xE100000000000000;
    MEMORY[0x223D4B2A0](v87, v89);

    v90 = v98;
    v91 = v99;
    v92 = sub_21DEBCBBC();
    v93 = sub_21DEBCBC4(v92, v90, v91);
    v95 = v94;

    v96 = sub_21DEBCAD8(0x654D6C6169636F73, 0xEB00000000616964, v93, v95);
    MEMORY[0x223D4B2A0](v96);

    return v100;
  }

  v77 = sub_21DEC7400();
  if (!v77)
  {
    goto LABEL_33;
  }

LABEL_22:
  v98 = v21;
  result = sub_21DE52560(0, v77 & ~(v77 >> 63), 0);
  if ((v77 & 0x8000000000000000) == 0)
  {
    v78 = 0;
    v79 = v98;
    do
    {
      if ((v76 & 0xC000000000000001) != 0)
      {
        v80 = MEMORY[0x223D4B690](v78, v76);
      }

      else
      {
        v80 = *(v76 + 8 * v78 + 32);
      }

      v81 = (*(*v80 + 152))();
      v83 = v82;

      v98 = v79;
      v85 = *(v79 + 16);
      v84 = *(v79 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_21DE52560((v84 > 1), v85 + 1, 1);
        v79 = v98;
      }

      ++v78;
      *(v79 + 16) = v85 + 1;
      v86 = v79 + 16 * v85;
      *(v86 + 32) = v81;
      *(v86 + 40) = v83;
    }

    while (v77 != v78);

    goto LABEL_34;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_21DE90BAC()
{
  v1 = v0;
  v2 = (*(*v0 + 176))();
  v4 = v3;

  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = (*(*v1 + 272))(v5);
  v8 = (*(*v7 + 240))(v7);

  if (v8)
  {
    return 1;
  }

  v10 = (*(*v1 + 248))(v9);
  v11 = v10;
  v12 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
LABEL_49:
    v13 = sub_21DEC7400();
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  while (v13 != v14)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x223D4B690](v14, v11);
      if (__OFADD__(v14, 1))
      {
LABEL_16:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v15 = *(v11 + 8 * v14 + 32);

      if (__OFADD__(v14, 1))
      {
        goto LABEL_16;
      }
    }

    v16 = (*(*v15 + 144))();

    ++v14;
    if (v16)
    {
LABEL_45:

      return 1;
    }
  }

  v19 = (*(*v1 + 320))(v18);
  v20 = (v19 + 40);
  v21 = *(v19 + 16) + 1;
  while (--v21)
  {
    v23 = *(v20 - 1);
    v22 = *v20;
    v20 += 2;
    v24 = v23 & 0xFFFFFFFFFFFFLL;
    if ((v22 & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(v22) & 0xF;
    }

    else
    {
      v25 = v24;
    }

    if (v25)
    {
      goto LABEL_45;
    }
  }

  v27 = (*(*v1 + 296))(v26);
  v28 = (v27 + 40);
  v29 = *(v27 + 16) + 1;
  while (--v29)
  {
    v31 = *(v28 - 1);
    v30 = *v28;
    v28 += 2;
    v32 = v31 & 0xFFFFFFFFFFFFLL;
    if ((v30 & 0x2000000000000000) != 0)
    {
      v33 = HIBYTE(v30) & 0xF;
    }

    else
    {
      v33 = v32;
    }

    if (v33)
    {
      goto LABEL_45;
    }
  }

  v35 = (*(*v1 + 344))(v34);
  v1 = v35;
  v36 = v35 & 0xFFFFFFFFFFFFFF8;
  if (v35 >> 62)
  {
    v11 = sub_21DEC7400();
  }

  else
  {
    v11 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = 0;
  v12 = v1 & 0xC000000000000001;
  while (v11 != v37)
  {
    if (v12)
    {
      v38 = MEMORY[0x223D4B690](v37, v1);
      if (__OFADD__(v37, 1))
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v37 >= *(v36 + 16))
      {
        goto LABEL_48;
      }

      v38 = *(v1 + 8 * v37 + 32);

      if (__OFADD__(v37, 1))
      {
LABEL_43:
        __break(1u);
        break;
      }
    }

    v39 = (*(*v38 + 144))();

    ++v37;
    if (v39)
    {
      goto LABEL_45;
    }
  }

  return 0;
}

uint64_t Contact.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Contact.init(from:)(a1);
  return v2;
}

void *Contact.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94610, &qword_21DED0F28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v90 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A234();
  sub_21DEC77E0();
  if (v2)
  {
LABEL_9:
    type metadata accessor for Contact();
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v3;
  }

  LOBYTE(v101) = 1;
  v11 = sub_21DEC74A0();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  *(v1 + 24) = v13;
  *(v1 + 32) = v14;
  LOBYTE(v101) = 0;
  sub_21DEC74A0();
  v15 = 0;
  v16 = sub_21DEC7470();

  *(v1 + 16) = v16 == 1;
  LOBYTE(v101) = 2;
  v17 = sub_21DEC74A0();
  if (v18)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  *(v1 + 40) = v20;
  *(v1 + 48) = v21;
  LOBYTE(v101) = 3;
  v22 = sub_21DEC74A0();
  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  *(v1 + 56) = v24;
  *(v1 + 64) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94620, &qword_21DED0F30);
  v100 = 4;
  sub_21DE9A288();
  v95 = 0;
  sub_21DEC74E0();
  if (v101)
  {
    v34 = v101;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v101 = MEMORY[0x277D84F90];
  if (v34 >> 62)
  {
    goto LABEL_107;
  }

  v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_33:
  v94 = v6;
  v102 = v3;
  if (v35)
  {
    v36 = 0;
    v98 = v34 & 0xFFFFFFFFFFFFFF8;
    v99 = v34 & 0xC000000000000001;
    v97 = v34;
    while (1)
    {
      if (v99)
      {
        v37 = MEMORY[0x223D4B690](v36, v34);
        v6 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
LABEL_44:
          __break(1u);
LABEL_45:
          v38 = v101;
          goto LABEL_47;
        }
      }

      else
      {
        if (v36 >= *(v98 + 16))
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          v80 = v34;
          v81 = sub_21DEC7400();
          v34 = v80;
          v35 = v81;
          goto LABEL_33;
        }

        v37 = *(v34 + 8 * v36 + 32);

        v6 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_44;
        }
      }

      if ((*(*v37 + 144))())
      {
        sub_21DEC7380();
        v96 = v101[2];
        sub_21DEC73A0();
        sub_21DEC73B0();
        sub_21DEC7390();
      }

      else
      {
      }

      ++v36;
      v34 = v97;
      v3 = v102;
      if (v6 == v35)
      {
        goto LABEL_45;
      }
    }
  }

  v38 = MEMORY[0x277D84F90];
LABEL_47:

  v3[9] = v38;
  type metadata accessor for Contact.Address();
  v100 = 5;
  sub_21DE9A87C(&qword_27CE94638, v39, type metadata accessor for Contact.Address);
  sub_21DEC74E0();
  v40 = v15;
  if (v15)
  {
    LOBYTE(v101) = 5;
    v41 = sub_21DEC74A0();
    if (!v42)
    {
      v41 = 0;
      v42 = 0xE000000000000000;
    }

    v43 = sub_21DEA1D88(v41, v42);

    v40 = 0;
  }

  else
  {
    v43 = v101;
    if (!v101)
    {
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0xE000000000000000;
      v43[4] = 0;
      v43[5] = 0xE000000000000000;
      v43[6] = 0;
      v43[7] = 0xE000000000000000;
      v43[8] = 0;
      v43[9] = 0xE000000000000000;
      v43[10] = 0;
      v43[11] = 0xE000000000000000;
    }
  }

  v44 = v94;
  v3[10] = v43;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
  v100 = 6;
  v45 = sub_21DE9AA8C(&qword_27CE94640);
  v46 = v40;
  sub_21DEC74E0();
  v98 = v101;
  v99 = v45;
  if (v101)
  {
    v96 = v15;
    v47 = v101[2];

    v34 = v98;
    v6 = 0;
    v48 = v98 + 40;
    v49 = MEMORY[0x277D84F90];
LABEL_56:
    v50 = (v48 + 16 * v6);
    while (v47 != v6)
    {
      if (v6 >= *(v34 + 16))
      {
        goto LABEL_105;
      }

      ++v6;
      v15 = *(v50 - 1);
      v51 = *v50;
      v50 += 2;
      v52 = HIBYTE(v51) & 0xF;
      if ((v51 & 0x2000000000000000) == 0)
      {
        v52 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v52)
      {
        v93 = v48;
        v97 = v46;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21DE52560(0, v49[2] + 1, 1);
          v49 = v101;
        }

        v55 = v49[2];
        v54 = v49[3];
        v56 = (v55 + 1);
        v46 = v97;
        v34 = v98;
        v48 = v93;
        if (v55 >= v54 >> 1)
        {
          v91 = v49[2];
          v92 = (v55 + 1);
          sub_21DE52560((v54 > 1), v55 + 1, 1);
          v55 = v91;
          v56 = v92;
          v48 = v93;
          v46 = v97;
          v34 = v98;
          v49 = v101;
        }

        v49[2] = v56;
        v57 = &v49[2 * v55];
        v57[4] = v15;
        v57[5] = v51;
        goto LABEL_56;
      }
    }

    v44 = v94;
    v15 = v96;
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
  }

  v3[11] = v49;
  v100 = 7;
  sub_21DEC74E0();
  if (v46)
  {
    (*(v44 + 8))(v9, v5);

    v58 = 0;
LABEL_24:
    v26 = v95;
    v27 = v3[4];

    v28 = v3[6];

    if (!v26)
    {
      v31 = v3[8];
    }

    v29 = v3[9];

    v32 = v3[10];

    v30 = v3[11];

    if (v58)
    {
      v33 = v3[12];
    }

    goto LABEL_9;
  }

  v92 = v3 + 11;
  v59 = MEMORY[0x277D84F90];
  v93 = v101;
  if (v101)
  {
    v6 = v101[2];

    v34 = v93;
    v60 = 0;
    v61 = (v93 + 5);
LABEL_73:
    v62 = (v61 + 16 * v60);
    while (v6 != v60)
    {
      if (v60 >= *(v34 + 16))
      {
        goto LABEL_106;
      }

      ++v60;
      v15 = *(v62 - 1);
      v63 = *v62;
      v62 += 2;
      v64 = HIBYTE(v63) & 0xF;
      if ((v63 & 0x2000000000000000) == 0)
      {
        v64 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v64)
      {
        v99 = v61;
        v97 = v46;

        v65 = swift_isUniquelyReferenced_nonNull_native();
        v101 = v59;
        if ((v65 & 1) == 0)
        {
          sub_21DE52560(0, v59[2] + 1, 1);
          v59 = v101;
        }

        v67 = v59[2];
        v66 = v59[3];
        v68 = v67 + 1;
        v46 = v97;
        v34 = v93;
        v61 = v99;
        if (v67 >= v66 >> 1)
        {
          v96 = v67 + 1;
          v91 = v67;
          sub_21DE52560((v66 > 1), v67 + 1, 1);
          v68 = v96;
          v46 = v97;
          v67 = v91;
          v61 = v99;
          v34 = v93;
          v59 = v101;
        }

        v59[2] = v68;
        v69 = &v59[2 * v67];
        v69[4] = v15;
        v69[5] = v63;
        goto LABEL_73;
      }
    }

    v70 = v46;

    v44 = v94;
  }

  else
  {
    v70 = 0;
  }

  v3[12] = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94648, &qword_21DED0F38);
  v100 = 8;
  sub_21DE9A33C();
  sub_21DEC74E0();
  if (v70)
  {
    (*(v44 + 8))(v9, v5);

    v58 = 1;
    goto LABEL_24;
  }

  v91 = v3 + 12;
  if (v101)
  {
    v71 = v101;
  }

  else
  {
    v71 = MEMORY[0x277D84F90];
  }

  v101 = MEMORY[0x277D84F90];
  v97 = v71;
  if (v71 >> 62)
  {
    goto LABEL_110;
  }

  for (i = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DEC7400())
  {
    v73 = 0;
    v74 = v97;
    v75 = v97 & 0xC000000000000001;
    v95 = v97 & 0xC000000000000001;
    v96 = v97 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v75)
      {
        v77 = MEMORY[0x223D4B690](v73, v74);
        v76 = v77;
      }

      else
      {
        if (v73 >= *(v96 + 16))
        {
          goto LABEL_109;
        }

        v76 = *(v74 + 8 * v73 + 32);
      }

      v99 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if ((*(*v76 + 144))(v77))
      {
        sub_21DEC7380();
        v78 = v101[2];
        sub_21DEC73A0();
        v75 = v95;
        sub_21DEC73B0();
        sub_21DEC7390();
      }

      else
      {
      }

      ++v73;
      v74 = v97;
      if (v99 == i)
      {
        v79 = v101;
        goto LABEL_112;
      }
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    ;
  }

  v79 = MEMORY[0x277D84F90];
LABEL_112:

  v102[13] = v79;
  if (!v98)
  {
    v82 = sub_21DEA2510(a1);
    if (v82)
    {
      v84 = v82;
    }

    else
    {
      v84 = MEMORY[0x277D84F90];
    }

    v85 = v92;
    swift_beginAccess();
    v86 = *v85;
    *v85 = v84;
  }

  if (v93)
  {

    (*(v94 + 8))(v9, v5);
  }

  else
  {
    v83 = sub_21DEA252C(a1);
    if (v83)
    {
      v87 = v83;
    }

    else
    {
      v87 = MEMORY[0x277D84F90];
    }

    (*(v94 + 8))(v9, v5);
    v88 = v91;
    swift_beginAccess();
    v89 = *v88;
    *v88 = v87;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v102;
}

__n128 Contact.__allocating_init(contactKind:name:contactPoint:address:emails:urls:jobTitle:worksFor:socialMedia:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 16) = *a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a8;
  result = a9;
  *(v18 + 48) = a9;
  *(v18 + 64) = a10;
  *(v18 + 72) = a4;
  *(v18 + 80) = a5;
  *(v18 + 88) = a6;
  *(v18 + 96) = a7;
  *(v18 + 104) = a11;
  return result;
}

uint64_t Contact.init(contactKind:name:contactPoint:address:emails:urls:jobTitle:worksFor:socialMedia:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 16) = *a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a8;
  *(v11 + 48) = a9;
  *(v11 + 64) = a10;
  *(v11 + 72) = a4;
  *(v11 + 80) = a5;
  *(v11 + 88) = a6;
  *(v11 + 96) = a7;
  *(v11 + 104) = a11;
  return v11;
}

uint64_t sub_21DE91D00(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94660, &qword_21DED0F40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v82 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A234();
  v11 = sub_21DEC7810();
  (*(*v3 + 176))(v11);
  LOBYTE(v89) = 1;
  v87 = v5;
  sub_21DEC7590();
  v88 = v2;
  if (v2)
  {
    goto LABEL_2;
  }

  (*(*v3 + 152))(&v89, v13);
  v91 = v89;
  v90 = 0;
  sub_21DE9A3F0();
  v14 = v88;
  v15 = sub_21DEC75D0();
  v88 = v14;
  if (v14)
  {
    return (*(v6 + 8))(v9, v87);
  }

  v16 = (*(*v3 + 200))(v15);
  LOBYTE(v89) = 2;
  v17 = v88;
  sub_21DE6C7C8(v16, v18);
  v88 = v17;
  if (v17 || (v19 = , v20 = (*(*v3 + 224))(v19), LOBYTE(v89) = 3, v21 = v88, sub_21DE6C7C8(v20, v22), (v88 = v21) != 0))
  {
LABEL_2:
    (*(v6 + 8))(v9, v87);
  }

  v24 = (*(*v3 + 248))(v23);
  v25 = v24;
  v89 = MEMORY[0x277D84F90];
  if (v24 >> 62)
  {
LABEL_22:
    v26 = sub_21DEC7400();
    v84 = v6;
    if (v26)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v84 = v6;
    if (v26)
    {
LABEL_9:
      v6 = 0;
      v27 = v25 & 0xC000000000000001;
      v85 = v3;
      v86 = v25 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v27)
        {
          v28 = MEMORY[0x223D4B690](v6, v25);
          v29 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v6 = v84;
            break;
          }
        }

        else
        {
          if (v6 >= *(v86 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          v28 = *(v25 + 8 * v6 + 32);

          v29 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v28 + 144))())
        {
          sub_21DEC7380();
          v30 = v25;
          v31 = *(v89 + 16);
          sub_21DEC73A0();
          v25 = v30;
          v3 = v85;
          sub_21DEC73B0();
          sub_21DEC7390();
        }

        else
        {
        }

        ++v6;
        if (v29 == v26)
        {
          goto LABEL_20;
        }
      }
    }
  }

  LOBYTE(v89) = 4;
  type metadata accessor for Contact.ContactPoint();
  sub_21DE9A87C(&qword_27CE94670, v32, type metadata accessor for Contact.ContactPoint);
  v33 = v88;
  sub_21DE6C7F4();
  v88 = v33;
  if (v33)
  {
    goto LABEL_24;
  }

  v35 = (*v3 + 272);
  v36 = *v35;
  v6 = v35;
  v37 = (*v35)(v34);
  v38 = (*(*v37 + 240))(v37);

  if (v38)
  {
    v89 = v36(v39);
    v91 = 5;
    type metadata accessor for Contact.Address();
    sub_21DE9A87C(&qword_27CE94680, v40, type metadata accessor for Contact.Address);
    v41 = v88;
    sub_21DEC75D0();

    v88 = v41;
    if (v41)
    {
      return (*(v84 + 8))(v9, v87);
    }
  }

  v42 = (*(*v3 + 296))(v39);
  v43 = 0;
  v44 = *(v42 + 16);
  v45 = v42 + 40;
  v46 = MEMORY[0x277D84F90];
LABEL_29:
  v47 = (v45 + 16 * v43);
  while (v44 != v43)
  {
    if (v43 >= *(v42 + 16))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      v71 = sub_21DEC7400();
      if (!v71)
      {
        goto LABEL_73;
      }

      goto LABEL_57;
    }

    ++v43;
    v48 = *(v47 - 1);
    v6 = *v47;
    v47 += 2;
    v49 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v49 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      v83 = v45;
      v86 = v44;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21DE52560(0, *(v46 + 16) + 1, 1);
        v46 = v89;
      }

      v52 = *(v46 + 16);
      v51 = *(v46 + 24);
      v44 = v86;
      v45 = v83;
      if (v52 >= v51 >> 1)
      {
        sub_21DE52560((v51 > 1), v52 + 1, 1);
        v45 = v83;
        v44 = v86;
        v46 = v89;
      }

      *(v46 + 16) = v52 + 1;
      v53 = v46 + 16 * v52;
      *(v53 + 32) = v48;
      *(v53 + 40) = v6;
      goto LABEL_29;
    }
  }

  LOBYTE(v89) = 6;
  v54 = v88;
  sub_21DE6C7F4();
  v55 = v84;
  v88 = v54;
  if (v54)
  {

    return (*(v55 + 8))(v9, v87);
  }

  v57 = (*(*v3 + 320))(v56);
  v43 = 0;
  v58 = *(v57 + 16);
  v59 = v57 + 40;
  v60 = MEMORY[0x277D84F90];
LABEL_43:
  v61 = (v59 + 16 * v43);
  while (v58 != v43)
  {
    if (v43 >= *(v57 + 16))
    {
      goto LABEL_70;
    }

    ++v43;
    v62 = *(v61 - 1);
    v6 = *v61;
    v61 += 2;
    v63 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v63 = v62 & 0xFFFFFFFFFFFFLL;
    }

    if (v63)
    {
      v83 = v59;
      v86 = v58;

      v64 = swift_isUniquelyReferenced_nonNull_native();
      v89 = v60;
      if ((v64 & 1) == 0)
      {
        sub_21DE52560(0, *(v60 + 16) + 1, 1);
        v60 = v89;
      }

      v66 = *(v60 + 16);
      v65 = *(v60 + 24);
      v58 = v86;
      v59 = v83;
      if (v66 >= v65 >> 1)
      {
        sub_21DE52560((v65 > 1), v66 + 1, 1);
        v59 = v83;
        v58 = v86;
        v60 = v89;
      }

      *(v60 + 16) = v66 + 1;
      v67 = v60 + 16 * v66;
      *(v67 + 32) = v62;
      *(v67 + 40) = v6;
      goto LABEL_43;
    }
  }

  LOBYTE(v89) = 7;
  v68 = v88;
  sub_21DE6C7F4();
  v6 = v84;
  v88 = v68;
  if (v68)
  {
LABEL_24:
    (*(v6 + 8))(v9, v87);
  }

  v70 = (*(*v3 + 344))(v69);
  v43 = v70;
  v89 = MEMORY[0x277D84F90];
  if (v70 >> 62)
  {
    goto LABEL_72;
  }

  v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v71)
  {
    goto LABEL_73;
  }

LABEL_57:
  v72 = 0;
  v73 = v43 & 0xC000000000000001;
  v74 = v43 & 0xFFFFFFFFFFFFFF8;
  v86 = v43 & 0xC000000000000001;
  while (v73)
  {
    v6 = MEMORY[0x223D4B690](v72, v43);
    v75 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      goto LABEL_67;
    }

LABEL_63:
    if ((*(*v6 + 144))())
    {
      sub_21DEC7380();
      v76 = v71;
      v77 = v74;
      v78 = v43;
      v79 = *(v89 + 16);
      sub_21DEC73A0();
      v43 = v78;
      v74 = v77;
      v71 = v76;
      v73 = v86;
      sub_21DEC73B0();
      sub_21DEC7390();
    }

    else
    {
    }

    ++v72;
    v6 = v84;
    if (v75 == v71)
    {
      goto LABEL_73;
    }
  }

  if (v72 >= *(v74 + 16))
  {
    goto LABEL_71;
  }

  v6 = *(v43 + 8 * v72 + 32);

  v75 = v72 + 1;
  if (!__OFADD__(v72, 1))
  {
    goto LABEL_63;
  }

LABEL_67:
  __break(1u);
LABEL_73:

  LOBYTE(v89) = 8;
  type metadata accessor for Contact.SocialMedia();
  sub_21DE9A87C(&qword_27CE94678, v80, type metadata accessor for Contact.SocialMedia);
  v81 = v87;
  sub_21DE6C7F4();
  (*(v6 + 8))(v9, v81);
}

void *Contact.deinit()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  return v0;
}

uint64_t Contact.__deallocating_deinit()
{
  Contact.deinit();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_21DE92838@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 384))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

SceneIntelligence::Wifi::CodingKeys_optional __swiftcall Wifi.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 1684632435 && stringValue._object == 0xE400000000000000;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (sub_21DEC7610() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x64726F7773736170 && object == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21DEC7610();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t Wifi.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x64726F7773736170;
  }

  else
  {
    result = 1684632435;
  }

  *v0;
  return result;
}

uint64_t sub_21DE92A28()
{
  if (*v0)
  {
    result = 0x64726F7773736170;
  }

  else
  {
    result = 1684632435;
  }

  *v0;
  return result;
}

uint64_t sub_21DE92A60(uint64_t a1)
{
  v2 = sub_21DE9A444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE92A9C(uint64_t a1)
{
  v2 = sub_21DE9A444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE92AD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE92B24(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_21DE92B8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE92BD8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t sub_21DE92C40()
{
  v1 = (*(*v0 + 96))();
  v7 = sub_21DEBCAD8(1145656147, 0xE400000000000000, v1, v2);
  v3 = (*(*v0 + 120))();
  v5 = sub_21DEBCAD8(0x64726F7773736170, 0xE800000000000000, v3, v4);
  MEMORY[0x223D4B2A0](v5);

  return v7;
}

BOOL sub_21DE92D00()
{
  v1 = (*(*v0 + 96))();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

uint64_t Wifi.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Wifi.init(from:)(a1);
  return v2;
}

void *Wifi.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94688, &qword_21DED0F48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A444();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for Wifi();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = 0;
    v10 = sub_21DEC74A0();
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = 0xE000000000000000;
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v1[2] = v12;
    v1[3] = v14;
    v20 = 1;
    v15 = sub_21DEC74A0();
    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    if (v16)
    {
      v13 = v16;
    }

    (*(v5 + 8))(v8, v4);
    v1[4] = v18;
    v1[5] = v13;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_21DE92FAC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94698, &qword_21DED0F50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A444();
  v11 = sub_21DEC7810();
  v12 = (*(*v3 + 96))(v11);
  v18[15] = 0;
  sub_21DE6C7C8(v12, v13);
  if (!v2)
  {

    v15 = (*(*v3 + 120))(v14);
    v18[14] = 1;
    sub_21DE6C7C8(v15, v16);
  }

  (*(v6 + 8))(v9, v5);
}

uint64_t sub_21DE93190@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

SceneIntelligence::ParkingLocation::CodingKeys_optional __swiftcall ParkingLocation.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x4449746F7073 && stringValue._object == 0xE600000000000000;
  if (v5 || (sub_21DEC7610() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x4449656E6F7ALL && object == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21DEC7610();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t ParkingLocation.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x4449656E6F7ALL;
  }

  else
  {
    return 0x4449746F7073;
  }
}

uint64_t sub_21DE933B4()
{
  if (*v0)
  {
    return 0x4449656E6F7ALL;
  }

  else
  {
    return 0x4449746F7073;
  }
}

uint64_t sub_21DE933E4(uint64_t a1)
{
  v2 = sub_21DE9A498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE93420(uint64_t a1)
{
  v2 = sub_21DE9A498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE9345C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE934A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_21DE93568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE935B4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t sub_21DE93624()
{
  v1 = (*(*v0 + 96))();
  v7 = sub_21DEBCAD8(0x4449746F7073, 0xE600000000000000, v1, v2);
  v3 = (*(*v0 + 120))();
  v5 = sub_21DEBCAD8(0x4449656E6F5ALL, 0xE600000000000000, v3, v4);
  MEMORY[0x223D4B2A0](v5);

  return v7;
}

BOOL sub_21DE936E4()
{
  v1 = (*(*v0 + 96))();
  v3 = v2;

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    return 1;
  }

  v7 = (*(*v0 + 120))(v4);
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  return v10 != 0;
}

void *ParkingLocation.__allocating_init(spotID:zoneID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *ParkingLocation.init(spotID:zoneID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t ParkingLocation.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ParkingLocation.init(from:)(a1);
  return v2;
}

void *ParkingLocation.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE946A0, &qword_21DED0F58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A498();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for ParkingLocation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = 0;
    v10 = sub_21DEC74A0();
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = 0xE000000000000000;
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v1[2] = v12;
    v1[3] = v14;
    v20 = 1;
    v15 = sub_21DEC74A0();
    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    if (v16)
    {
      v13 = v16;
    }

    (*(v5 + 8))(v8, v4);
    v1[4] = v18;
    v1[5] = v13;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_21DE93A4C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE946B0, &qword_21DED0F60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A498();
  v11 = sub_21DEC7810();
  v12 = (*(*v3 + 96))(v11);
  v18[15] = 0;
  sub_21DE6C7C8(v12, v13);
  if (!v2)
  {

    v15 = (*(*v3 + 120))(v14);
    v18[14] = 1;
    sub_21DE6C7C8(v15, v16);
  }

  (*(v6 + 8))(v9, v5);
}

uint64_t sub_21DE93C3C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

SceneIntelligence::TransactionElement::CodingKeys_optional __swiftcall TransactionElement.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x637365446D657469 && stringValue._object == 0xEF6E6F6974706972;
  if (v5 || (sub_21DEC7610() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x797469746E617571 && object == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x6972506C61746F74 && object == 0xEA00000000006563)
  {

    v7 = 2;
  }

  else
  {
    v8 = sub_21DEC7610();

    if (v8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t TransactionElement.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_21DEC7770();
  MEMORY[0x223D4BB10](v1);
  return sub_21DEC77B0();
}

uint64_t TransactionElement.CodingKeys.stringValue.getter()
{
  v1 = 0x797469746E617571;
  if (*v0 != 1)
  {
    v1 = 0x6972506C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x637365446D657469;
  }
}

uint64_t sub_21DE93F44()
{
  v1 = 0x797469746E617571;
  if (*v0 != 1)
  {
    v1 = 0x6972506C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x637365446D657469;
  }
}

uint64_t sub_21DE93FB4(uint64_t a1)
{
  v2 = sub_21DE9A4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE93FF0(uint64_t a1)
{
  v2 = sub_21DE9A4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE9402C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE94078(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 112);

  return v4(v2, v3);
}

uint64_t sub_21DE940E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE941A8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_21DE942B0(double a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_21DE942F0()
{
  (*(*v0 + 128))();
  v1 = sub_21DEC7600();
  v9 = sub_21DEBCAD8(0x797469746E617571, 0xE800000000000000, v1, v2);
  v3 = (*(*v0 + 104))();
  v5 = sub_21DEBCAD8(0x637365446D657469, 0xEF6E6F6974706972, v3, v4);
  MEMORY[0x223D4B2A0](v5);

  (*(*v0 + 152))(v6);
  sub_21DEC7140();
  v7 = sub_21DEBCAD8(0x6972506C61746F74, 0xEA00000000006563, 0, 0xE000000000000000);
  MEMORY[0x223D4B2A0](v7);

  return v9;
}

BOOL sub_21DE9446C()
{
  if ((*(*v0 + 128))() < 1)
  {
    return 0;
  }

  v1 = (*(*v0 + 104))();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

uint64_t TransactionElement.__allocating_init(quantity:itemDescription:totalPrice:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a1;
  *(result + 40) = a4;
  return result;
}

uint64_t TransactionElement.init(quantity:itemDescription:totalPrice:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a1;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t TransactionElement.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  TransactionElement.init(from:)(a1);
  return v2;
}

double *TransactionElement.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE946B8, &qword_21DED0F68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A4EC();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for TransactionElement();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 1;
    *(v1 + 4) = sub_21DEC7500();
    v16 = 0;
    *(v1 + 2) = sub_21DEC74F0();
    *(v1 + 3) = v11;
    v16 = 2;
    v12 = sub_21DEC74C0();
    if (v13)
    {
      v1[5] = 0.0;
      swift_beginAccess();
      v14 = sub_21DEA3554(a1, *(v1 + 4));
      (*(v5 + 8))(v8, v4);
      swift_beginAccess();
      v1[5] = v14;
    }

    else
    {
      *(v1 + 5) = v12;
      (*(v5 + 8))(v8, v4);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_21DE94848(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE946C8, &qword_21DED0F70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A4EC();
  v11 = sub_21DEC7810();
  (*(*v3 + 128))(v11);
  v15[15] = 1;
  v12 = sub_21DEC75C0();
  if (!v2)
  {
    (*(*v3 + 104))(v12);
    v15[14] = 0;
    sub_21DEC7590();

    (*(*v3 + 152))(v14);
    v15[13] = 2;
    sub_21DEC75B0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TransactionElement.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t TransactionElement.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21DE94ACC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 200))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

SceneIntelligence::FinancialTransaction::Place_optional __swiftcall FinancialTransaction.Place.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC76E0();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t FinancialTransaction.Place.rawValue.getter()
{
  result = 0x6D756573754DLL;
  switch(*v0)
  {
    case 1:
      result = 0x655620636973754DLL;
      break;
    case 2:
      result = 0x72657461656854;
      break;
    case 3:
      result = 0x7972617262694CLL;
      break;
    case 4:
      result = 0x6854206569766F4DLL;
      break;
    case 5:
      result = 0x694C20746867694ELL;
      break;
    case 6:
      result = 0x7963616D72616850;
      break;
    case 7:
      result = 0x7972656B6142;
      break;
    case 8:
      result = 0x79726577657242;
      break;
    case 9:
      result = 1701208387;
      break;
    case 0xA:
      result = 0x656C6C6974736944;
      break;
    case 0xB:
      result = 0x72614D20646F6F46;
      break;
    case 0xC:
      result = 0x6172756174736552;
      break;
    case 0xD:
      result = 0x7972656E6957;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0xD000000000000011;
      break;
    case 0x10:
      result = 0xD000000000000014;
      break;
    case 0x11:
      result = 0x6D756964617453;
      break;
    case 0x12:
      result = 0x74726F70726941;
      break;
    case 0x13:
      result = 0x746E655220726143;
      break;
    case 0x14:
      result = 0xD000000000000011;
      break;
    case 0x15:
      result = 0x7461745320736147;
      break;
    case 0x16:
      result = 0x6C65746F48;
      break;
    case 0x17:
      result = 0x676E696B726150;
      break;
    case 0x18:
      result = 0xD000000000000010;
      break;
    case 0x19:
      result = 0x726568744FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21DE94FA4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = FinancialTransaction.Place.rawValue.getter();
  v4 = v3;
  if (v2 == FinancialTransaction.Place.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21DEC7610();
  }

  return v7 & 1;
}

uint64_t sub_21DE95040()
{
  v1 = *v0;
  sub_21DEC7770();
  FinancialTransaction.Place.rawValue.getter();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE950A8()
{
  v2 = *v0;
  FinancialTransaction.Place.rawValue.getter();
  sub_21DEC6E90();
}

uint64_t sub_21DE9510C()
{
  v1 = *v0;
  sub_21DEC7770();
  FinancialTransaction.Place.rawValue.getter();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

unint64_t sub_21DE9517C@<X0>(unint64_t *a1@<X8>)
{
  result = FinancialTransaction.Place.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SceneIntelligence::FinancialTransaction::Currency_optional __swiftcall FinancialTransaction.Currency.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC76E0();

  v5 = 0;
  v6 = 27;
  switch(v3)
  {
    case 0:
      goto LABEL_46;
    case 1:
      v5 = 1;
      goto LABEL_46;
    case 2:
      v5 = 2;
      goto LABEL_46;
    case 3:
      v5 = 3;
      goto LABEL_46;
    case 4:
      v5 = 4;
      goto LABEL_46;
    case 5:
      v5 = 5;
      goto LABEL_46;
    case 6:
      v5 = 6;
      goto LABEL_46;
    case 7:
      v5 = 7;
      goto LABEL_46;
    case 8:
      v5 = 8;
      goto LABEL_46;
    case 9:
      v5 = 9;
      goto LABEL_46;
    case 10:
      v5 = 10;
      goto LABEL_46;
    case 11:
      v5 = 11;
      goto LABEL_46;
    case 12:
      v5 = 12;
      goto LABEL_46;
    case 13:
      v5 = 13;
      goto LABEL_46;
    case 14:
      v5 = 14;
      goto LABEL_46;
    case 15:
      v5 = 15;
      goto LABEL_46;
    case 16:
      v5 = 16;
      goto LABEL_46;
    case 17:
      v5 = 17;
      goto LABEL_46;
    case 18:
      v5 = 18;
      goto LABEL_46;
    case 19:
      v5 = 19;
      goto LABEL_46;
    case 20:
      v5 = 20;
      goto LABEL_46;
    case 21:
      v5 = 21;
      goto LABEL_46;
    case 22:
      v5 = 22;
      goto LABEL_46;
    case 23:
      v5 = 23;
      goto LABEL_46;
    case 24:
      v5 = 24;
      goto LABEL_46;
    case 25:
      v5 = 25;
      goto LABEL_46;
    case 26:
      v5 = 26;
LABEL_46:
      v6 = v5;
      break;
    case 27:
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    default:
      v6 = 45;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_21DE95474(char *a1, char *a2)
{
  v6 = *a1;
  v5 = *a2;
  v2 = FinancialTransaction.Currency.rawValue.getter();
  if (v2 == FinancialTransaction.Currency.rawValue.getter())
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_21DEC7610();
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

uint64_t sub_21DE954F8()
{
  v1 = *v0;
  sub_21DEC7770();
  FinancialTransaction.Currency.rawValue.getter();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE95558()
{
  v2 = *v0;
  FinancialTransaction.Currency.rawValue.getter();
  sub_21DEC6E90();
}

uint64_t sub_21DE955B4()
{
  v1 = *v0;
  sub_21DEC7770();
  FinancialTransaction.Currency.rawValue.getter();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE9561C@<X0>(uint64_t *a1@<X8>)
{
  result = FinancialTransaction.Currency.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

unint64_t sub_21DE95658()
{
  v1 = 0x79636E6572727563;
  v2 = 0x736D657469;
  if (*v0 != 2)
  {
    v2 = 0x6C61746F74;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_21DE956D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE9A564(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE956F8(uint64_t a1)
{
  v2 = sub_21DE9A6CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE95734(uint64_t a1)
{
  v2 = sub_21DE9A6CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21DE95770@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21DE957CC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 120))(&v4);
}

uint64_t sub_21DE95824@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE95870(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 144);

  return v4(v2, v3);
}

uint64_t sub_21DE958DC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_21DE9592C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_21DE95980@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE959CC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);

  return v3(v4);
}

uint64_t sub_21DE95AF0(double a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

unint64_t sub_21DE95B30()
{
  v1 = v0;
  v30 = 0;
  v31 = 0xE000000000000000;
  result = (*(*v0 + 160))();
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:
    (*(*v1 + 112))(&v28, v12);
    v13 = FinancialTransaction.Place.rawValue.getter();
    v28 = sub_21DEBCAD8(0xD000000000000010, 0x800000021DED9E00, v13, v14);
    v29 = v15;
    v16 = (*(*v1 + 136))();
    v18 = sub_21DEBCAD8(0x79636E6572727563, 0xE800000000000000, v16, v17);
    MEMORY[0x223D4B2A0](v18);

    v19 = v30;
    v20 = v31;
    v21 = sub_21DEBCBBC();
    v22 = sub_21DEBCBC4(v21, v19, v20);
    v24 = v23;

    v25 = sub_21DEBCAD8(0x73746E656D656C65, 0xE800000000000000, v22, v24);
    MEMORY[0x223D4B2A0](v25);

    (*(*v1 + 184))(v26);
    sub_21DEC7140();
    v27 = sub_21DEBCAD8(0x6C61746F74, 0xE500000000000000, 0, 0xE000000000000000);
    MEMORY[0x223D4B2A0](v27);

    return v28;
  }

  result = sub_21DEC7400();
  v4 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D4B690](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      ++v5;
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_21DEC72F0();
      v7 = MEMORY[0x223D4B2A0](2108682, 0xE300000000000000);
      (*(*v6 + 128))(v7);
      v8 = sub_21DEC7600();
      MEMORY[0x223D4B2A0](v8);

      v9 = MEMORY[0x223D4B2A0](32, 0xE100000000000000);
      v10 = (*(*v6 + 104))(v9);
      MEMORY[0x223D4B2A0](v10);

      v11 = MEMORY[0x223D4B2A0](0x725074696E75202CLL, 0xED0000203A656369);
      (*(*v6 + 152))(v11);
      sub_21DEC7140();
      MEMORY[0x223D4B2A0](0, 0xE000000000000000);
    }

    while (v4 != v5);

    v1 = v0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t FinancialTransaction.__allocating_init(transactionPlace:currency:items:subTotal:tax:tip:total:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{

  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a7;
  return result;
}

uint64_t FinancialTransaction.init(transactionPlace:currency:items:subTotal:tax:tip:total:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{

  *(v7 + 16) = *a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a7;
  return v7;
}

uint64_t FinancialTransaction.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  FinancialTransaction.init(from:)(a1);
  return v2;
}

unint64_t FinancialTransaction.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE946D0, &qword_21DED0F78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A6CC();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for FinancialTransaction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = 0;
    sub_21DE9A720();
    sub_21DEC74E0();
    v11 = v38;
    if (v38 == 26)
    {
      v11 = 25;
    }

    *(v1 + 16) = v11;
    LOBYTE(v38) = 1;
    v12 = sub_21DEC74A0();
    if (v13)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v16 = 0xE000000000000000;
    if (v13)
    {
      v16 = v13;
    }

    *(v1 + 24) = v15;
    *(v1 + 32) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE946E8, &qword_21DED0F80);
    v39 = 2;
    sub_21DE9A774();
    sub_21DEC74E0();
    v33 = v6;
    v17 = v38;
    v18 = MEMORY[0x277D84F90];
    v34 = v38;
    if (v38)
    {
      v38 = MEMORY[0x277D84F90];
      v19 = v17 & 0xFFFFFFFFFFFFFF8;
      if (v17 >> 62)
      {
        goto LABEL_36;
      }

      v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:

      if (v20)
      {
        v32 = v3;
        v3 = 0;
        v36 = v19;
        v37 = v17 & 0xC000000000000001;
        v35 = v5;
        while (1)
        {
          if (v37)
          {
            v22 = MEMORY[0x223D4B690](v3, v17);
            v23 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
LABEL_26:
              __break(1u);
LABEL_27:
              v18 = v38;
              v3 = v32;
              goto LABEL_29;
            }
          }

          else
          {
            if (v3 >= *(v19 + 16))
            {
              __break(1u);
LABEL_36:
              v20 = sub_21DEC7400();
              goto LABEL_15;
            }

            v22 = *(v17 + 8 * v3 + 32);

            v23 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              goto LABEL_26;
            }
          }

          if ((*(*v22 + 184))())
          {
            sub_21DEC7380();
            v24 = *(v38 + 16);
            sub_21DEC73A0();
            v17 = v34;
            sub_21DEC73B0();
            sub_21DEC7390();
          }

          else
          {
          }

          ++v3;
          v21 = v23 == v20;
          v5 = v35;
          v19 = v36;
          if (v21)
          {
            goto LABEL_27;
          }
        }
      }

      v18 = MEMORY[0x277D84F90];
LABEL_29:
    }

    *(v3 + 40) = v18;
    v25 = (v3 + 40);
    LOBYTE(v38) = 3;
    v26 = COERCE_DOUBLE(sub_21DEC74C0());
    if (v27)
    {
      v26 = 0.0;
    }

    *(v3 + 48) = v26;
    v28 = v33;
    if (v34)
    {

      (*(v28 + 8))(v9, v5);
    }

    else
    {
      v29 = sub_21DEA37B4(a1);
      (*(v28 + 8))(v9, v5);
      swift_beginAccess();
      v30 = *v25;
      *v25 = v29;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_21DE9652C(void *a1)
{
  v3 = v2;
  v4 = v1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94700, &qword_21DED0F88);
  v27 = *(v29 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v8 = &v25 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A6CC();
  v28 = v8;
  v10 = sub_21DEC7810();
  v11 = *(*v4 + 112);
  v11((&v35 + 1), v10);
  if (FinancialTransaction.Place.rawValue.getter() == 0x726568744FLL && v12 == 0xE500000000000000)
  {
  }

  else
  {
    v14 = sub_21DEC7610();

    if ((v14 & 1) == 0)
    {
LABEL_21:
      v11(&v35, v13);
      v34 = 0;
      sub_21DE9A828();
      v15 = v28;
      v11 = v29;
      v13 = sub_21DEC75D0();
      if (v3)
      {
        return (*(v27 + 8))(v15, v11);
      }

      goto LABEL_6;
    }
  }

  v15 = v28;
  v11 = v29;
LABEL_6:
  (*(*v4 + 136))(v13);
  v33 = 1;
  sub_21DEC7590();
  if (v3)
  {
    (*(v27 + 8))(v15, v11);
  }

  v18 = (*(*v4 + 160))(v17);
  v19 = v18;
  v30 = MEMORY[0x277D84F90];
  if (v18 >> 62)
  {
    goto LABEL_25;
  }

  v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
LABEL_10:
    v25 = v4;
    v26 = 0;
    v21 = 0;
    v3 = v19 & 0xC000000000000001;
    v11 = (v19 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v3)
      {
        v13 = MEMORY[0x223D4B690](v21, v19);
        v22 = v13;
        v4 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_25:
          v20 = sub_21DEC7400();
          if (!v20)
          {
            break;
          }

          goto LABEL_10;
        }

        v22 = *(v19 + 8 * v21 + 32);

        v4 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_20;
        }
      }

      if ((*(*v22 + 184))())
      {
        sub_21DEC7380();
        v15 = *(v30 + 16);
        sub_21DEC73A0();
        sub_21DEC73B0();
        sub_21DEC7390();
      }

      else
      {
      }

      ++v21;
      if (v4 == v20)
      {
        v11 = v29;
        v4 = v25;
        v3 = v26;
        v15 = v28;
        break;
      }
    }
  }

  v32 = 2;
  type metadata accessor for TransactionElement();
  sub_21DE9A87C(&qword_27CE94710, v23, type metadata accessor for TransactionElement);
  sub_21DE6C7F4();
  if (v3)
  {
    (*(v27 + 8))(v15, v11);
  }

  (*(*v4 + 184))(v24);
  v31 = 3;
  sub_21DEC75B0();
  return (*(v27 + 8))(v15, v11);
}

uint64_t FinancialTransaction.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t FinancialTransaction.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_21DE96A48@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 232))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

SceneIntelligence::ItemList::Category_optional __swiftcall ItemList.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC7470();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ItemList.Category.rawValue.getter()
{
  v1 = 0x676E6970706F6853;
  v2 = 0x6F44206F54;
  if (*v0 != 2)
  {
    v2 = 0x726568744FLL;
  }

  if (*v0)
  {
    v1 = 0x6569646572676E49;
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

uint64_t sub_21DE96C08()
{
  v1 = *v0;
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE96CD8()
{
  *v0;
  *v0;
  *v0;
  sub_21DEC6E90();
}

uint64_t sub_21DE96D94()
{
  v1 = *v0;
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

void sub_21DE96E6C(uint64_t *a1@<X8>)
{
  v2 = 0xED00007473694C20;
  v3 = 0x676E6970706F6853;
  v4 = 0x6F44206F54;
  if (*v1 != 2)
  {
    v4 = 0x726568744FLL;
  }

  if (*v1)
  {
    v3 = 0x6569646572676E49;
    v2 = 0xEB0000000073746ELL;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_21DE96FB8()
{
  v1 = 0x79726F6765746163;
  if (*v0 != 1)
  {
    v1 = 0x73746E656D656C65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C7469547473696CLL;
  }
}

uint64_t sub_21DE97018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DE9A8C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DE97040(uint64_t a1)
{
  v2 = sub_21DE9A9E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE9707C(uint64_t a1)
{
  v2 = sub_21DE9A9E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE970B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE97104(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 112);

  return v4(v2, v3);
}

void *sub_21DE9716C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21DE971C8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 136))(&v4);
}

uint64_t sub_21DE97220@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_21DE97264(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_21DE972A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE972F0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);

  return v3(v4);
}

uint64_t sub_21DE97344()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t sub_21DE9737C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

BOOL sub_21DE973C4()
{
  v1 = (*(*v0 + 152))();
  v2 = (v1 + 40);
  v3 = *(v1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v5 = *(v2 - 1);
    v4 = *v2;
    v2 += 2;
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  while (!((v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : v6));
  v8 = v3 != 0;

  return v8;
}

uint64_t sub_21DE97444()
{
  v1 = (*(*v0 + 152))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      MEMORY[0x223D4B2A0](v4, v5);

      MEMORY[0x223D4B2A0](2108682, 0xE300000000000000);

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  v7 = (*(*v0 + 104))(v6);
  v15 = sub_21DEBCAD8(0x656C746974, 0xE500000000000000, v7, v8);
  v9 = sub_21DEBCBBC();
  v10 = sub_21DEBCBC4(v9, 0, 0xE000000000000000);
  v12 = v11;

  v13 = sub_21DEBCAD8(0x73746E656D656C65, 0xE800000000000000, v10, v12);
  MEMORY[0x223D4B2A0](v13);

  return v15;
}

uint64_t ItemList.__allocating_init(title:category:elements:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = *a3;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v9;
  *(result + 40) = a4;
  return result;
}

uint64_t ItemList.init(title:category:elements:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = *a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = v5;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t ItemList.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ItemList.init(from:)(a1);
  return v2;
}

uint64_t ItemList.init(from:)(uint64_t *a1)
{
  v3 = sub_21DEC6770();
  v105 = *(v3 - 8);
  v4 = v105[8];
  MEMORY[0x28223BE20](v3);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94718, &qword_21DED0F90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v95 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_21DE9A9E4();
  sub_21DEC77E0();
  if (v1)
  {
    v108 = v1;
    v18 = v106;
    v17 = v107;
LABEL_4:
    type metadata accessor for ItemList();
    swift_deallocPartialClassInstance();
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(v18);
    return v17;
  }

  v14 = v105;
  v108 = v3;
  v109 = v6;
  LOBYTE(v113) = 0;
  v15 = sub_21DEC74A0();
  v102 = v11;
  v100 = v8;
  v101 = v7;
  if (v16)
  {
    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  v17 = v107;
  v21 = v107;
  if (v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  *(v107 + 16) = v20;
  *(v21 + 24) = v22;
  v23 = (v21 + 16);
  *&v113 = 124;
  *(&v113 + 1) = 0xE100000000000000;
  MEMORY[0x28223BE20](v15);
  v93 = &v113;

  v25 = sub_21DE7E79C(0x7FFFFFFFFFFFFFFFLL, 1, sub_21DE821E8, v92, v20, v22, v24);
  v104 = 0;
  v26 = *(v25 + 16);
  v18 = v106;
  if (v26)
  {
    v103 = v23;
    v110[0] = MEMORY[0x277D84F90];
    sub_21DE52560(0, v26, 0);
    v27 = v110[0];
    v28 = (v14 + 1);
    v105 = v25;
    v29 = (v25 + 56);
    do
    {
      v30 = *(v29 - 1);
      v31 = *v29;
      v113 = *(v29 - 3);
      v114 = v30;
      v115 = v31;

      sub_21DEC6760();
      sub_21DE99AD8();
      v32 = sub_21DEC7230();
      v34 = v33;
      (*v28)(v109, v108);

      v110[0] = v27;
      v36 = *(v27 + 16);
      v35 = *(v27 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_21DE52560((v35 > 1), v36 + 1, 1);
        v27 = v110[0];
      }

      *(v27 + 16) = v36 + 1;
      v37 = v27 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v29 += 4;
      --v26;
    }

    while (v26);

    v18 = v106;
    v17 = v107;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  *&v113 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
  sub_21DE6884C(&qword_280F7A6D8, &qword_27CE93E90, &qword_21DECCA40);
  v38 = sub_21DEC6D60();
  v40 = v39;

  swift_beginAccess();
  v41 = *(v17 + 24);
  *(v17 + 16) = v38;
  *(v17 + 24) = v40;

  LOBYTE(v110[0]) = 1;
  v43 = v101;
  v42 = v102;
  v44 = v104;
  sub_21DEC74A0();
  v108 = v44;
  v45 = v100;
  if (v44)
  {
    goto LABEL_23;
  }

  v46 = sub_21DEC7470();

  v47 = 3;
  if (v46 < 3)
  {
    v47 = v46;
  }

  *(v17 + 32) = v47;
  LOBYTE(v111) = 2;
  sub_21DE9AA8C(&qword_27CE94640);
  v48 = v108;
  sub_21DEC74E0();
  v108 = v48;
  if (v48)
  {
LABEL_23:
    (*(v45 + 8))(v42, v43);
    v49 = *(v17 + 24);

    goto LABEL_4;
  }

  v95 = v17 + 32;
  if (v110[0])
  {
    v50 = v110[0];
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
  }

  v51 = *(v50 + 16);
  v99 = v46;
  if (!v51)
  {

    result = MEMORY[0x277D84F90];
LABEL_48:
    v77 = 0;
    v78 = *(result + 16);
    v79 = result + 40;
    v80 = MEMORY[0x277D84F90];
LABEL_49:
    v81 = (v79 + 16 * v77);
    while (v78 != v77)
    {
      if (v77 >= *(result + 16))
      {
        __break(1u);
        goto LABEL_70;
      }

      ++v77;
      v83 = *(v81 - 1);
      v82 = *v81;
      v81 += 2;
      v84 = HIBYTE(v82) & 0xF;
      if ((v82 & 0x2000000000000000) == 0)
      {
        v84 = v83 & 0xFFFFFFFFFFFFLL;
      }

      if (v84)
      {
        v85 = result;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110[0] = v80;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21DE52560(0, *(v80 + 16) + 1, 1);
          v80 = v110[0];
        }

        v88 = *(v80 + 16);
        v87 = *(v80 + 24);
        result = v85;
        if (v88 >= v87 >> 1)
        {
          sub_21DE52560((v87 > 1), v88 + 1, 1);
          result = v85;
          v80 = v110[0];
        }

        *(v80 + 16) = v88 + 1;
        v89 = v80 + 16 * v88;
        *(v89 + 32) = v83;
        *(v89 + 40) = v82;
        v46 = v99;
        goto LABEL_49;
      }
    }

    v17 = v107;
    *(v107 + 40) = v80;
    v57 = v101;
    v50 = v100;
    v60 = v95;
    if (v46 <= 3)
    {
      (*(v100 + 8))(v102, v101);
      v18 = v106;
    }

    else
    {
      v18 = v106;
      v90 = v108;
      sub_21DEA32E4(v110, v106);
      v108 = v90;
      if (!v90)
      {
        goto LABEL_65;
      }

      (*(v50 + 8))(v102, v57);
    }

    goto LABEL_5;
  }

  v116 = MEMORY[0x277D84F90];
  result = sub_21DE52560(0, v51, 0);
  v52 = 0;
  v53 = v116;
  v98 = v50 + 32;
  v97 = v50;
  v96 = v51;
  while (v52 < *(v50 + 16))
  {
    v105 = v53;
    v54 = (v98 + 16 * v52);
    v18 = v54[1];
    v109 = *v54;
    v55 = qword_27CE9BA10;

    if (v55 != -1)
    {
      swift_once();
    }

    v104 = v52 + 1;
    v56 = qword_27CE9BA18;
    v57 = qword_27CE9BA18 + 64;
    v58 = 1 << *(qword_27CE9BA18 + 32);
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v60 = v59 & *(qword_27CE9BA18 + 64);
    v61 = (v58 + 63) >> 6;

    v17 = 0;
    v103 = v18;
    if (v60)
    {
      while (1)
      {
        v62 = v17;
LABEL_41:
        v63 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
        v64 = (v62 << 10) | (16 * v63);
        v65 = (*(v56 + 48) + v64);
        v66 = *v65;
        v50 = v65[1];
        v67 = (*(v56 + 56) + v64);
        v68 = *v67;
        v69 = v67[1];
        v110[0] = v109;
        v110[1] = v18;
        v111 = v66;
        v112 = v50;
        v110[3] = v68;
        v110[4] = v69;
        v70 = sub_21DE531EC();

        v93 = v70;
        v94 = v70;
        v92[1] = v70;
        v92[0] = MEMORY[0x277D837D0];
        v109 = sub_21DEC7240();
        v72 = v71;

        v18 = v72;
        if (!v60)
        {
          goto LABEL_37;
        }
      }
    }

    while (1)
    {
LABEL_37:
      v62 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_65:
        (*(v50 + 8))(v102, v57);
        if (LOBYTE(v110[0]) == 4)
        {
          v91 = 3;
        }

        else
        {
          v91 = v110[0];
        }

        swift_beginAccess();
        *v60 = v91;
        goto LABEL_5;
      }

      if (v62 >= v61)
      {
        break;
      }

      v60 = *(v57 + 8 * v62);
      ++v17;
      if (v60)
      {
        v17 = v62;
        goto LABEL_41;
      }
    }

    v53 = v105;
    v116 = v105;
    v74 = v105[2];
    v73 = v105[3];
    if (v74 >= v73 >> 1)
    {
      result = sub_21DE52560((v73 > 1), v74 + 1, 1);
      v53 = v116;
    }

    v53[2] = v74 + 1;
    v75 = &v53[2 * v74];
    v75[4] = v109;
    v75[5] = v18;
    v52 = v104;
    v46 = v99;
    v50 = v97;
    if (v104 == v96)
    {
      v76 = v53;

      result = v76;
      goto LABEL_48;
    }
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_21DE9804C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94728, &qword_21DED0F98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A9E4();
  v11 = sub_21DEC7810();
  (*(*v3 + 104))(v11);
  LOBYTE(v33) = 0;
  sub_21DEC7590();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    (*(*v3 + 128))(&v33, v13);
    v34 = 1;
    sub_21DE9AA38();
    v14 = sub_21DEC75D0();
    v32 = v6;
    result = (*(*v3 + 152))(v14);
    v15 = result;
    v16 = 0;
    v17 = *(result + 16);
    v18 = result + 40;
    v19 = MEMORY[0x277D84F90];
LABEL_4:
    v20 = (v18 + 16 * v16);
    while (1)
    {
      if (v17 == v16)
      {

        v33 = v19;
        v34 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
        sub_21DE9AA8C(&qword_27CE94738);
        sub_21DEC75D0();
        (*(v32 + 8))(v9, v5);
      }

      if (v16 >= *(v15 + 16))
      {
        break;
      }

      ++v16;
      v22 = *(v20 - 1);
      v21 = *v20;
      v20 += 2;
      v23 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v23 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        v31 = v18;

        result = swift_isUniquelyReferenced_nonNull_native();
        v33 = v19;
        if ((result & 1) == 0)
        {
          result = sub_21DE52560(0, *(v19 + 16) + 1, 1);
          v19 = v33;
        }

        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        v26 = v25 + 1;
        v18 = v31;
        if (v25 >= v24 >> 1)
        {
          v29 = *(v19 + 16);
          v30 = v25 + 1;
          result = sub_21DE52560((v24 > 1), v25 + 1, 1);
          v25 = v29;
          v26 = v30;
          v18 = v31;
          v19 = v33;
        }

        *(v19 + 16) = v26;
        v27 = v19 + 16 * v25;
        *(v27 + 32) = v22;
        *(v27 + 40) = v21;
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s17SceneIntelligence15ParkingLocationCfd_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_21DE98420(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 40);

  return MEMORY[0x2821FE8D8](v1, a1, 7);
}

uint64_t sub_21DE9846C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 200))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

char *sub_21DE98530(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94978, &unk_21DED3408);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_21DE98624(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94410, &qword_21DED0E40);
  v10 = *(type metadata accessor for EventDateTimeComponents() - 8);
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
  v15 = *(type metadata accessor for EventDateTimeComponents() - 8);
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

void *sub_21DE987FC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F30, &qword_21DECD040);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_21DE98880(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21DEC7400();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_21DEC7400();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_21DE98970(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21DE98D18(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_21DE98970(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_21DEC7400();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_21DEC7310();
  *v1 = result;
  return result;
}

uint64_t (*sub_21DE98A10(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223D4B690](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_21DE98A90;
  }

  __break(1u);
  return result;
}

void *sub_21DE98A98(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_21DE98BF8()
{
  result = qword_27CE94460;
  if (!qword_27CE94460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94460);
  }

  return result;
}

unint64_t sub_21DE98C70()
{
  result = qword_27CE94468;
  if (!qword_27CE94468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94468);
  }

  return result;
}

unint64_t sub_21DE98CC4()
{
  result = qword_27CE94470;
  if (!qword_27CE94470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94470);
  }

  return result;
}

uint64_t sub_21DE98D18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DEC7400();
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
      result = sub_21DEC7400();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21DE6884C(&qword_27CE94968, &qword_27CE945A0, &qword_21DED0EE8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945A0, &qword_21DED0EE8);
            v9 = sub_21DE98A10(v13, i, a3);
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
        type metadata accessor for SubEvent();
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

unint64_t sub_21DE98EB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94958, &qword_21DED33E8);
    v3 = sub_21DEC7430();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21DE7ADAC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_21DE98FCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746361746E6F63 && a2 == 0xE700000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1768319351 && a2 == 0xE400000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C676E696B726170 && a2 == 0xEF6E6F697461636FLL || (sub_21DEC7610() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473694C6D657469 && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEB000000006E6F69)
  {

    return 5;
  }

  else
  {
    v6 = sub_21DEC7610();

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

unint64_t sub_21DE991D0()
{
  result = qword_27CE94480;
  if (!qword_27CE94480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94480);
  }

  return result;
}

uint64_t sub_21DE992FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6854664F73796164 && a2 == 0xED00006B65655765 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021DED9DE0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

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

unint64_t sub_21DE9942C()
{
  result = qword_27CE944F8;
  if (!qword_27CE944F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE944F8);
  }

  return result;
}

unint64_t sub_21DE994A4()
{
  result = qword_27CE94500;
  if (!qword_27CE94500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94500);
  }

  return result;
}

unint64_t sub_21DE994F8()
{
  result = qword_27CE94510;
  if (!qword_27CE94510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94508, &qword_21DED0EA0);
    sub_21DE9957C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94510);
  }

  return result;
}

unint64_t sub_21DE9957C()
{
  result = qword_27CE94518;
  if (!qword_27CE94518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94518);
  }

  return result;
}

unint64_t sub_21DE995D0()
{
  result = qword_27CE94528;
  if (!qword_27CE94528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94528);
  }

  return result;
}

unint64_t sub_21DE99624()
{
  result = qword_27CE94530;
  if (!qword_27CE94530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94530);
  }

  return result;
}

uint64_t sub_21DE99678(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65727275636572 && a2 == 0xEA00000000006563)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

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

uint64_t sub_21DE997A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventDateTimeComponents();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DE99804()
{
  result = qword_27CE94540;
  if (!qword_27CE94540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94540);
  }

  return result;
}

uint64_t type metadata accessor for SubEvent.DateTimeElement()
{
  result = qword_27CEA0840;
  if (!qword_27CEA0840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DE998A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746954746E657665 && a2 == 0xEA0000000000656CLL;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D695465746164 && a2 == 0xEF746E656D656C45 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_21DEC7610();

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

unint64_t sub_21DE99A60()
{
  result = qword_27CE94568;
  if (!qword_27CE94568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94568);
  }

  return result;
}

unint64_t sub_21DE99AD8()
{
  result = qword_27CE94578;
  if (!qword_27CE94578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94578);
  }

  return result;
}

unint64_t sub_21DE99B2C()
{
  result = qword_27CE94598;
  if (!qword_27CE94598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94598);
  }

  return result;
}

unint64_t sub_21DE99B80()
{
  result = qword_27CE945A8;
  if (!qword_27CE945A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE945A0, &qword_21DED0EE8);
    sub_21DE9A87C(&qword_27CE945B0, v1, type metadata accessor for SubEvent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE945A8);
  }

  return result;
}

unint64_t sub_21DE99C34()
{
  result = qword_27CE945D0;
  if (!qword_27CE945D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE945D0);
  }

  return result;
}

uint64_t sub_21DE99CAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746565727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564 || (sub_21DEC7610() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_21DEC7610();

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

unint64_t sub_21DE99E5C()
{
  result = qword_27CE945E8;
  if (!qword_27CE945E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE945E8);
  }

  return result;
}

unint64_t sub_21DE99ED4()
{
  result = qword_27CE94600;
  if (!qword_27CE94600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94600);
  }

  return result;
}

uint64_t sub_21DE99F4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B746361746E6F63 && a2 == 0xEB00000000646E69;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746954626F6ALL && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F46736B726F77 && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x50746361746E6F63 && a2 == 0xEC000000746E696FLL || (sub_21DEC7610() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1936487029 && a2 == 0xE400000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x654D6C6169636F73 && a2 == 0xEB00000000616964)
  {

    return 8;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_21DE9A234()
{
  result = qword_27CE94618;
  if (!qword_27CE94618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94618);
  }

  return result;
}

unint64_t sub_21DE9A288()
{
  result = qword_27CE94628;
  if (!qword_27CE94628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94620, &qword_21DED0F30);
    sub_21DE9A87C(&qword_27CE94630, v1, type metadata accessor for Contact.ContactPoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94628);
  }

  return result;
}

unint64_t sub_21DE9A33C()
{
  result = qword_27CE94650;
  if (!qword_27CE94650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94648, &qword_21DED0F38);
    sub_21DE9A87C(&qword_27CE94658, v1, type metadata accessor for Contact.SocialMedia);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94650);
  }

  return result;
}

unint64_t sub_21DE9A3F0()
{
  result = qword_27CE94668;
  if (!qword_27CE94668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94668);
  }

  return result;
}

unint64_t sub_21DE9A444()
{
  result = qword_27CE94690;
  if (!qword_27CE94690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94690);
  }

  return result;
}

unint64_t sub_21DE9A498()
{
  result = qword_27CE946A8;
  if (!qword_27CE946A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE946A8);
  }

  return result;
}

unint64_t sub_21DE9A4EC()
{
  result = qword_27CE946C0;
  if (!qword_27CE946C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE946C0);
  }

  return result;
}

uint64_t sub_21DE9A564(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000021DED9E00 == a2 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61746F74 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_21DEC7610();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_21DE9A6CC()
{
  result = qword_27CE946D8;
  if (!qword_27CE946D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE946D8);
  }

  return result;
}

unint64_t sub_21DE9A720()
{
  result = qword_27CE946E0;
  if (!qword_27CE946E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE946E0);
  }

  return result;
}

unint64_t sub_21DE9A774()
{
  result = qword_27CE946F0;
  if (!qword_27CE946F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE946E8, &qword_21DED0F80);
    sub_21DE9A87C(&qword_27CE946F8, v1, type metadata accessor for TransactionElement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE946F0);
  }

  return result;
}

unint64_t sub_21DE9A828()
{
  result = qword_27CE94708;
  if (!qword_27CE94708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94708);
  }

  return result;
}

uint64_t sub_21DE9A87C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21DE9A8C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C7469547473696CLL && a2 == 0xE900000000000065;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

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

unint64_t sub_21DE9A9E4()
{
  result = qword_27CE94720;
  if (!qword_27CE94720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94720);
  }

  return result;
}

unint64_t sub_21DE9AA38()
{
  result = qword_27CE94730;
  if (!qword_27CE94730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94730);
  }

  return result;
}

uint64_t sub_21DE9AA8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE93E90, &qword_21DECCA40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21DE9AAFC()
{
  result = qword_27CE94740;
  if (!qword_27CE94740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94740);
  }

  return result;
}

unint64_t sub_21DE9AB58()
{
  result = qword_27CE94748;
  if (!qword_27CE94748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94748);
  }

  return result;
}

unint64_t sub_21DE9ABB0()
{
  result = qword_27CE94750;
  if (!qword_27CE94750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94750);
  }

  return result;
}

unint64_t sub_21DE9AC08()
{
  result = qword_27CE94758;
  if (!qword_27CE94758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94758);
  }

  return result;
}

unint64_t sub_21DE9AC60()
{
  result = qword_27CE94760;
  if (!qword_27CE94760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94760);
  }

  return result;
}

unint64_t sub_21DE9ACFC()
{
  result = qword_27CE94778;
  if (!qword_27CE94778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94778);
  }

  return result;
}

unint64_t sub_21DE9AD98()
{
  result = qword_27CE94788;
  if (!qword_27CE94788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94788);
  }

  return result;
}

unint64_t sub_21DE9ADF0()
{
  result = qword_27CE94790;
  if (!qword_27CE94790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94790);
  }

  return result;
}

unint64_t sub_21DE9AE48()
{
  result = qword_27CE94798;
  if (!qword_27CE94798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94798);
  }

  return result;
}

unint64_t sub_21DE9AEA0()
{
  result = qword_27CE947A0;
  if (!qword_27CE947A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947A0);
  }

  return result;
}

unint64_t sub_21DE9AEF8()
{
  result = qword_27CE947A8;
  if (!qword_27CE947A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947A8);
  }

  return result;
}

unint64_t sub_21DE9AF50()
{
  result = qword_27CE947B0;
  if (!qword_27CE947B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947B0);
  }

  return result;
}

unint64_t sub_21DE9AFA8()
{
  result = qword_27CE947B8;
  if (!qword_27CE947B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947B8);
  }

  return result;
}

unint64_t sub_21DE9B000()
{
  result = qword_27CE947C0;
  if (!qword_27CE947C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947C0);
  }

  return result;
}

unint64_t sub_21DE9B058()
{
  result = qword_27CE947C8;
  if (!qword_27CE947C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947C8);
  }

  return result;
}

unint64_t sub_21DE9B0B0()
{
  result = qword_27CE947D0;
  if (!qword_27CE947D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947D0);
  }

  return result;
}

unint64_t sub_21DE9B108()
{
  result = qword_27CE947D8;
  if (!qword_27CE947D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947D8);
  }

  return result;
}

unint64_t sub_21DE9B160()
{
  result = qword_27CE947E0;
  if (!qword_27CE947E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947E0);
  }

  return result;
}

unint64_t sub_21DE9B1B8()
{
  result = qword_27CE947E8;
  if (!qword_27CE947E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947E8);
  }

  return result;
}

unint64_t sub_21DE9B254()
{
  result = qword_27CE94800;
  if (!qword_27CE94800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94800);
  }

  return result;
}

unint64_t sub_21DE9B2AC()
{
  result = qword_27CE94808;
  if (!qword_27CE94808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94808);
  }

  return result;
}

unint64_t sub_21DE9B304()
{
  result = qword_27CE94810;
  if (!qword_27CE94810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94810);
  }

  return result;
}

unint64_t sub_21DE9B35C()
{
  result = qword_27CE94818;
  if (!qword_27CE94818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94818);
  }

  return result;
}

unint64_t sub_21DE9B3B4()
{
  result = qword_27CE94820;
  if (!qword_27CE94820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94820);
  }

  return result;
}

unint64_t sub_21DE9B40C()
{
  result = qword_27CE94828;
  if (!qword_27CE94828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94828);
  }

  return result;
}

unint64_t sub_21DE9B464()
{
  result = qword_27CE94830;
  if (!qword_27CE94830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94830);
  }

  return result;
}

unint64_t sub_21DE9B4BC()
{
  result = qword_27CE94838;
  if (!qword_27CE94838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94838);
  }

  return result;
}

unint64_t sub_21DE9B514()
{
  result = qword_27CE94840;
  if (!qword_27CE94840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94840);
  }

  return result;
}

unint64_t sub_21DE9B56C()
{
  result = qword_27CE94848;
  if (!qword_27CE94848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94848);
  }

  return result;
}

unint64_t sub_21DE9B5C4()
{
  result = qword_27CE94850;
  if (!qword_27CE94850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94850);
  }

  return result;
}

unint64_t sub_21DE9B61C()
{
  result = qword_27CE94858;
  if (!qword_27CE94858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94858);
  }

  return result;
}

unint64_t sub_21DE9B674()
{
  result = qword_27CE94860;
  if (!qword_27CE94860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94860);
  }

  return result;
}

unint64_t sub_21DE9B6CC()
{
  result = qword_27CE94868;
  if (!qword_27CE94868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94868);
  }

  return result;
}

unint64_t sub_21DE9B724()
{
  result = qword_27CE94870;
  if (!qword_27CE94870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94870);
  }

  return result;
}

unint64_t sub_21DE9B77C()
{
  result = qword_27CE94878;
  if (!qword_27CE94878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94878);
  }

  return result;
}

unint64_t sub_21DE9B7D4()
{
  result = qword_27CE94880;
  if (!qword_27CE94880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94880);
  }

  return result;
}

unint64_t sub_21DE9B82C()
{
  result = qword_27CE94888;
  if (!qword_27CE94888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94888);
  }

  return result;
}

unint64_t sub_21DE9B884()
{
  result = qword_27CE94890;
  if (!qword_27CE94890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94890);
  }

  return result;
}

unint64_t sub_21DE9B8DC()
{
  result = qword_27CE94898;
  if (!qword_27CE94898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94898);
  }

  return result;
}

unint64_t sub_21DE9B934()
{
  result = qword_27CE948A0;
  if (!qword_27CE948A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE948A0);
  }

  return result;
}

unint64_t sub_21DE9B98C()
{
  result = qword_27CE948A8;
  if (!qword_27CE948A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE948A8);
  }

  return result;
}

unint64_t sub_21DE9BA28()
{
  result = qword_27CE948C0;
  if (!qword_27CE948C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE948C0);
  }

  return result;
}

unint64_t sub_21DE9BAC4()
{
  result = qword_27CE948D8;
  if (!qword_27CE948D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE948D8);
  }

  return result;
}

unint64_t sub_21DE9BB1C()
{
  result = qword_27CE948E0;
  if (!qword_27CE948E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE948E0);
  }

  return result;
}

unint64_t sub_21DE9BB74()
{
  result = qword_27CE948E8;
  if (!qword_27CE948E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE948E8);
  }

  return result;
}

unint64_t sub_21DE9BBCC()
{
  result = qword_27CE948F0;
  if (!qword_27CE948F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE948F0);
  }

  return result;
}

unint64_t sub_21DE9BC68()
{
  result = qword_27CE94908;
  if (!qword_27CE94908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94908);
  }

  return result;
}

unint64_t sub_21DE9BCC0()
{
  result = qword_27CE94910;
  if (!qword_27CE94910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94910);
  }

  return result;
}

unint64_t sub_21DE9BD18()
{
  result = qword_27CE94918;
  if (!qword_27CE94918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94918);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1F)
  {
    goto LABEL_17;
  }

  if (a2 + 225 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 225) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 225;
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

      return (*a1 | (v4 << 8)) - 225;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 225;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v6 >= 0x1E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for TextCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 225 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 225) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1F)
  {
    v4 = 0;
  }

  if (a2 > 0x1E)
  {
    v5 = ((a2 - 31) >> 8) + 1;
    *result = a2 - 31;
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
    *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21DE9BF2C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_21DE9BF74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17SceneIntelligence15TextContentItemC0E4TypeO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
  }
}

uint64_t sub_21DE9C120(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 8))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21DE9C17C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_21DE9C1DC(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 6)) | 0xC000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONSchema.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONSchema.Metadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21DE9C670()
{
  result = type metadata accessor for EventDateTimeComponents();
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

uint64_t getEnumTagSinglePayload for SubEvent.DateTimeElement.Recurrence.Weekday(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SubEvent.DateTimeElement.Recurrence.Weekday(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21DE9D9F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21DE9DA88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Contact.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Contact.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FinancialTransaction.Place(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FinancialTransaction.Place(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FinancialTransaction.Currency(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD4)
  {
    goto LABEL_17;
  }

  if (a2 + 44 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 44) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 44;
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

      return (*a1 | (v4 << 8)) - 44;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v8 = v6 - 45;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FinancialTransaction.Currency(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD4)
  {
    v4 = 0;
  }

  if (a2 > 0xD3)
  {
    v5 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
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
    *result = a2 + 44;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21DE9EB60()
{
  result = qword_27CE94920;
  if (!qword_27CE94920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94920);
  }

  return result;
}

unint64_t sub_21DE9EBB4()
{
  result = qword_27CE94928;
  if (!qword_27CE94928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94928);
  }

  return result;
}

unint64_t sub_21DE9EC08()
{
  result = qword_27CE94930;
  if (!qword_27CE94930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94930);
  }

  return result;
}

unint64_t sub_21DE9EC5C()
{
  result = qword_27CE94938;
  if (!qword_27CE94938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94938);
  }

  return result;
}

unint64_t sub_21DE9ECB0()
{
  result = qword_27CE94940;
  if (!qword_27CE94940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94940);
  }

  return result;
}

unint64_t sub_21DE9ED04()
{
  result = qword_27CE94948;
  if (!qword_27CE94948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94948);
  }

  return result;
}

uint64_t sub_21DE9ED58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE943D8, &qword_21DED3400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21DE9EE68()
{
  type metadata accessor for VICCTGProcessorBuilder();
  v0 = swift_allocObject();
  sub_21DE9EF84();
  qword_280F7B930 = v0;
}

uint64_t sub_21DE9EEA4()
{
  v0 = swift_allocObject();
  sub_21DE9EF84();
  return v0;
}

uint64_t *sub_21DE9EEDC()
{
  if (qword_280F7B858 != -1)
  {
    swift_once();
  }

  return &qword_280F7B930;
}

uint64_t sub_21DE9EF2C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[12];

  v5 = v0[14];

  return MEMORY[0x2821FE8D8](v0, 169, 7);
}

double sub_21DE9EF84()
{
  *(v0 + 16) = 0xD000000000000039;
  *(v0 + 24) = 0x800000021DEDA2A0;
  *(v0 + 32) = 0xD000000000000024;
  *(v0 + 40) = 0x800000021DEDA2E0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = "{{ specialToken.chat.role.system.default }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.user }}{{ images }}{{ task }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.assistant }}";
  *(v0 + 72) = 218;
  *(v0 + 80) = 2;
  *(v0 + 88) = 0xD000000000000017;
  *(v0 + 96) = 0x800000021DEDA310;
  *(v0 + 104) = 0xD000000000000036;
  *(v0 + 112) = 0x800000021DED9470;
  *(v0 + 120) = 1;
  *(v0 + 128) = 1;
  *(v0 + 136) = vdupq_n_s64(0x4085000000000000uLL);
  result = 0.2;
  *(v0 + 152) = xmmword_21DECD070;
  *(v0 + 168) = 0;
  return result;
}

uint64_t sub_21DE9F038()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 112);

  return v1;
}

void sub_21DE9F06C(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 128);
  *a1 = *(*v1 + 120);
  *(a1 + 8) = v2;
}

__n128 sub_21DE9F094@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(*v1 + 168);
  result = *(*v1 + 152);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_21DE9F0D0()
{
  v52 = sub_21DEC6D20();
  v50 = *(v52 - 8);
  v1 = *(v50 + 64);
  v2 = MEMORY[0x28223BE20](v52);
  v47[5] = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v47[6] = v47 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v47 - v7;
  MEMORY[0x28223BE20](v6);
  v49 = v47 - v9;
  v51 = sub_21DEC6E00();
  v53 = *(v51 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v0;
  v13 = v0[1];
  v48 = v0;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v15 = v14 & 0xFFFFFFFFFFFFLL;
  }

  v47[7] = v8;
  if (v15)
  {
    v16 = 15;
    while (1)
    {
      v18 = sub_21DEC6FF0();
      v19 = v17;
      if (v18 == 91 && v17 == 0xE100000000000000)
      {
        break;
      }

      if ((sub_21DEC7610() & 1) != 0 || v18 == 123 && v19 == 0xE100000000000000)
      {
        break;
      }

      v20 = sub_21DEC7610();

      if (v20)
      {
        goto LABEL_14;
      }

      v16 = sub_21DEC6EB0();
      if (4 * v15 == v16 >> 14)
      {
        v16 = 0;
LABEL_14:
        v21 = v20 ^ 1;
        goto LABEL_17;
      }
    }

    v21 = 0;
  }

  else
  {
    v16 = 0;
    v21 = 1;
  }

LABEL_17:
  v22 = 7;
  if (((v13 >> 60) & ((v14 & 0x800000000000000) == 0)) != 0)
  {
    v22 = 11;
  }

  v23 = v22 | (v15 << 16);
  while (1)
  {
    if (!(v23 >> 14))
    {
      goto LABEL_29;
    }

    v23 = sub_21DEC6EC0();
    v27 = sub_21DEC6FF0();
    v28 = v26;
    if (v27 == 93 && v26 == 0xE100000000000000)
    {
      break;
    }

    if ((sub_21DEC7610() & 1) != 0 || v27 == 125 && v28 == 0xE100000000000000)
    {
      break;
    }

    v24 = sub_21DEC7610();

    if (v24)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  if (v21)
  {
LABEL_29:
    v60 = v14;
    v61 = v13;

    v29 = v13;
    v30 = v50;
    goto LABEL_32;
  }

  v30 = v50;
  if (v23 >> 14 >= v16 >> 14)
  {
    sub_21DEC6EB0();
    v31 = sub_21DEC7010();
    v14 = MEMORY[0x223D4B1D0](v31);
    v29 = v32;

    v60 = v14;
    v61 = v29;
LABEL_32:

    sub_21DEC6DF0();
    v33 = sub_21DEC6DC0();
    v35 = v34;

    v36 = v53 + 8;
    (*(v53 + 8))(v12, v51);
    v37 = v52;
    if (v35 >> 60 == 15)
    {
      v38 = sub_21DEBD248();
      (*(v30 + 16))(v49, v38, v37);
      v39 = sub_21DEC6D00();
      v40 = sub_21DEC71B0();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_21DE0D000, v39, v40, "Cannot get data from string", v41, 2u);
        MEMORY[0x223D4D340](v41, -1, -1);
      }

      (*(v30 + 8))(v49, v37);
      goto LABEL_41;
    }

    v53 = v36;
    sub_21DEBC9D4();

    sub_21DEA091C(v33, v35);
    v42 = sub_21DEA0770(v33, v35);
    if (v43)
    {
      v14 = v42;
      v29 = v43;
      sub_21DE56358(v33, v35);
      sub_21DE56358(v33, v35);
LABEL_41:

      v45 = v48;
LABEL_45:
      *v45 = v14;
      v45[1] = v29;
      return result;
    }

    v56 = v33;
    v57 = v35;
    sub_21DEA091C(v33, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94980, &qword_21DED35F8);
    if (swift_dynamicCast())
    {
      sub_21DE5CC84(v54, v58);
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v44 = sub_21DEC7450();
      sub_21DE56358(v33, v35);
      if (v44)
      {
        __swift_project_boxed_opaque_existential_1(v58, v59);
        sub_21DEC7440();
        sub_21DE56358(v33, v35);
        v29 = *(&v54[0] + 1);
        v14 = *&v54[0];
        __swift_destroy_boxed_opaque_existential_0(v58);
        goto LABEL_41;
      }

      __swift_destroy_boxed_opaque_existential_0(v58);
    }

    else
    {
      sub_21DE56358(v33, v35);
      v55 = 0;
      memset(v54, 0, sizeof(v54));
      sub_21DEA0970(v54);
    }

    v45 = v48;
    v14 = sub_21DEA054C(v33, v35);
    v29 = v46;
    sub_21DE56358(v33, v35);

    goto LABEL_45;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DE9FCF8()
{
  v1 = v0;
  v64 = *v0;
  v65 = v0[1];

  result = sub_21DEC6F40();
  if (v3)
  {
    v4 = result;
    v5 = v3;
    v6 = 0;
    v62 = 0;
    v7 = MEMORY[0x277D84F90];
    v8 = 32;
    v9 = MEMORY[0x277D84F90];
    v10 = 0xE100000000000000;
    while (1)
    {
      if (__OFADD__(v6, 1))
      {
        goto LABEL_111;
      }

      if (v4 == 123 && v5 == 0xE100000000000000)
      {
        break;
      }

      v18 = sub_21DEC7610();
      v19 = v4 == 91 && v5 == 0xE100000000000000;
      v20 = v19;
      if (v18 & 1) != 0 || v20 || (sub_21DEC7610())
      {
        break;
      }

      if (v4 == 34 && v5 == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0)
      {
        if (v8 == 92 && v10 == 0xE100000000000000)
        {

          v10 = 0xE100000000000000;
          v4 = 92;
          goto LABEL_4;
        }

        if ((sub_21DEC7610() & 1) == 0)
        {

          v21 = *(v7 + 2);
          if (!v21 || ((v22 = &v7[16 * v21 + 16], *v22 != 34) || *(v22 + 1) != 0xE100000000000000) && (sub_21DEC7610() & 1) == 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_21DE56438(0, v21 + 1, 1, v7);
            }

            v36 = *(v7 + 2);
            v35 = *(v7 + 3);
            if (v36 >= v35 >> 1)
            {
              v7 = sub_21DE56438((v35 > 1), v36 + 1, 1, v7);
            }

            *(v7 + 2) = v36 + 1;
            v37 = &v7[16 * v36];
            *(v37 + 4) = 34;
            *(v37 + 5) = 0xE100000000000000;
            v10 = v5;
            goto LABEL_4;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v23 = *(v7 + 2);
            if (!v23)
            {
              goto LABEL_112;
            }
          }

          else
          {
            result = sub_21DE56B38(v7);
            v7 = result;
            v23 = *(result + 16);
            if (!v23)
            {
              goto LABEL_112;
            }
          }

          goto LABEL_74;
        }

        goto LABEL_3;
      }

      if (v4 != 125 || v5 != 0xE100000000000000)
      {
        v32 = sub_21DEC7610();
        v33 = v4 == 93 && v5 == 0xE100000000000000;
        v34 = v33;
        if ((v32 & 1) == 0 && !v34 && (sub_21DEC7610() & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v63 = v1;
      v25 = v7 + 16;
      v24 = *(v7 + 2);
      if (v24 && ((v26 = &v25[2 * v24], *v26 == 34) && v26[1] == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0) || (v27 = sub_21DE546C0(v4, v5), !v28))
      {

        v4 = v8;
        v1 = v63;
      }

      else
      {
        v29 = v28;
        v30 = v27;

        if (*v25)
        {
          v31 = &v25[2 * *v25];
          if (*v31 == v30 && v29 == v31[1])
          {

LABEL_71:
            if (!*v25)
            {
              goto LABEL_114;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            v1 = v63;
            if (result)
            {
              v23 = *(v7 + 2);
              if (!v23)
              {
                goto LABEL_115;
              }
            }

            else
            {
              result = sub_21DE56B38(v7);
              v7 = result;
              v23 = *(result + 16);
              if (!v23)
              {
                goto LABEL_115;
              }
            }

LABEL_74:
            v39 = v23 - 1;
            v40 = *&v7[16 * v39 + 40];
            *(v7 + 2) = v39;

            v10 = v5;
            goto LABEL_4;
          }

          v38 = sub_21DEC7610();

          if (v38)
          {
            goto LABEL_71;
          }
        }

        else
        {
        }

        if (*v25)
        {
          if (__OFADD__(v6, v62))
          {
            goto LABEL_116;
          }

          if (v6 + v62 >= 1)
          {
            v41 = &v25[2 * *v25];
            v42 = *v41;
            v43 = v41[1];

            sub_21DE546C0(v42, v43);
            v45 = v44;

            if (v45)
            {
              sub_21DEC6EE0();
              sub_21DEC6F20();
            }
          }

          if (__OFADD__(v62++, 1))
          {
            goto LABEL_117;
          }

          if (!*v25)
          {
            goto LABEL_118;
          }

          v1 = v63;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v47 = *(v7 + 2);
            if (!v47)
            {
              goto LABEL_97;
            }
          }

          else
          {
            v7 = sub_21DE56B38(v7);
            v47 = *(v7 + 2);
            if (!v47)
            {
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }
          }

          v48 = v47 - 1;
          v49 = *&v7[16 * v48 + 40];
          *(v7 + 2) = v48;
        }

        else
        {
          v1 = v63;
        }

        if (__OFADD__(v6, v62))
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_21DEA0448(0, *(v9 + 2) + 1, 1, v9);
        }

        v51 = *(v9 + 2);
        v50 = *(v9 + 3);
        if (v51 >= v50 >> 1)
        {
          v9 = sub_21DEA0448((v50 > 1), v51 + 1, 1, v9);
        }

        *(v9 + 2) = v51 + 1;
        *&v9[8 * v51 + 32] = v6 + v62;
        v10 = v5;
      }

LABEL_4:
      v8 = v4;
      result = sub_21DEC6F40();
      v4 = result;
      v5 = v11;
      ++v6;
      if (!v11)
      {
        goto LABEL_99;
      }
    }

    v12 = *(v7 + 2);
    if (!v12 || ((v13 = &v7[16 * v12 + 16], *v13 == 34) ? (v14 = *(v13 + 1) == 0xE100000000000000) : (v14 = 0), !v14 && (sub_21DEC7610() & 1) == 0))
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21DE56438(0, *(v7 + 2) + 1, 1, v7);
      }

      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        v7 = sub_21DE56438((v15 > 1), v16 + 1, 1, v7);
      }

      *(v7 + 2) = v16 + 1;
      v17 = &v7[16 * v16];
      *(v17 + 4) = v4;
      *(v17 + 5) = v5;
      v10 = v5;
      goto LABEL_4;
    }

LABEL_3:

    v4 = v8;
    goto LABEL_4;
  }

LABEL_98:
  v9 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
LABEL_99:

  v52 = *(v9 + 2);
  if (v52)
  {
    while (v52 <= *(v9 + 2))
    {
      v53 = v52 - 1;
      v54 = *&v9[8 * v52 + 24];
      sub_21DEC6EE0();
      sub_21DEC6F30();

      v52 = v53;
      if (!v53)
      {
        goto LABEL_102;
      }
    }

    __break(1u);
    goto LABEL_109;
  }

LABEL_102:

  v55 = *(v7 + 2);
  if (!v55)
  {
LABEL_109:

    *v1 = v64;
    v1[1] = v65;
    return result;
  }

  v56 = &v7[16 * v55 + 24];
  while (v55 <= *(v7 + 2))
  {
    v57 = *(v56 - 1);
    v58 = *v56;

    v59 = sub_21DE546C0(v57, v58);
    v61 = v60;

    if (v61)
    {
      MEMORY[0x223D4B290](v59, v61);
    }

    v56 -= 2;
    if (!--v55)
    {
      goto LABEL_109;
    }
  }

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
  return result;
}

Swift::String __swiftcall String.repairedJSON()()
{
  v5 = v0;
  v6 = v1;

  sub_21DE9FCF8();
  v2 = v5;
  v3 = v6;
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

char *sub_21DEA0448(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94990, &qword_21DED61D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}