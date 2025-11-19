uint64_t sub_261A501A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A54940(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A501D4(uint64_t a1)
{
  v2 = sub_261A502B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A50210(uint64_t a1)
{
  v2 = sub_261A502B0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_261A5024C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_261A54BE8(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

unint64_t sub_261A502B0()
{
  result = qword_27FECB4A0;
  if (!qword_27FECB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB4A0);
  }

  return result;
}

unint64_t sub_261A50304()
{
  result = qword_27FECB4B0;
  if (!qword_27FECB4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB4A8, &qword_261A89428);
    sub_261A50388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB4B0);
  }

  return result;
}

unint64_t sub_261A50388()
{
  result = qword_27FECB4B8;
  if (!qword_27FECB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB4B8);
  }

  return result;
}

unint64_t sub_261A503DC()
{
  result = qword_27FECB4C8;
  if (!qword_27FECB4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB4C0, &qword_261A89430);
    sub_261A50460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB4C8);
  }

  return result;
}

unint64_t sub_261A50460()
{
  result = qword_27FECB4D0;
  if (!qword_27FECB4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB4D0);
  }

  return result;
}

unint64_t sub_261A504B4()
{
  result = qword_27FECB4E0;
  if (!qword_27FECB4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB4D8, &qword_261A89438);
    sub_261A50538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB4E0);
  }

  return result;
}

unint64_t sub_261A50538()
{
  result = qword_27FECB4E8;
  if (!qword_27FECB4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB4E8);
  }

  return result;
}

unint64_t sub_261A5058C()
{
  result = qword_27FECB4F8;
  if (!qword_27FECB4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB4F0, &qword_261A89440);
    sub_261A50610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB4F8);
  }

  return result;
}

unint64_t sub_261A50610()
{
  result = qword_27FECB500;
  if (!qword_27FECB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB500);
  }

  return result;
}

unint64_t sub_261A50664()
{
  result = qword_27FECB510;
  if (!qword_27FECB510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB510);
  }

  return result;
}

unint64_t sub_261A506B8()
{
  result = qword_27FECB518;
  if (!qword_27FECB518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECAFD0, &qword_261A89450);
    sub_261A5073C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB518);
  }

  return result;
}

unint64_t sub_261A5073C()
{
  result = qword_27FECB520;
  if (!qword_27FECB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB520);
  }

  return result;
}

unint64_t sub_261A50790()
{
  result = qword_27FECB530;
  if (!qword_27FECB530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB528, &qword_261A89458);
    sub_261A50814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB530);
  }

  return result;
}

unint64_t sub_261A50814()
{
  result = qword_27FECB538;
  if (!qword_27FECB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB538);
  }

  return result;
}

uint64_t sub_261A50868(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A85CC4();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_261A85BC4();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_261A50938(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB5E0, &qword_261A899C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A55B6C();
  sub_261A85CD4();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  sub_261A85B14();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v22[14] = 1;
    sub_261A85B14();
    v15 = v3[4];
    v16 = v3[5];
    v22[13] = 2;
    sub_261A85AE4();
    v17 = v3[6];
    v18 = v3[7];
    v22[12] = 3;
    sub_261A85B14();
    v19 = v3[8];
    v20 = v3[9];
    v22[11] = 4;
    sub_261A85AE4();
    v22[10] = *(v3 + 80);
    v22[9] = 5;
    sub_261A55BC0();
    sub_261A85B54();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_261A50B78(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB830, &qword_261A8A738);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A58D90();
  sub_261A85CD4();
  v17 = 0;
  sub_261A85B14();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_261A55C68();
    sub_261A85B54();
  }

  return (*(v13 + 8))(v7, v4);
}

uint64_t sub_261A50D0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB858, &qword_261A8A750);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A58D90();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v11 = sub_261A85A54();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  sub_261A57EC8();
  sub_261A85A94();
  (*(v6 + 8))(v9, v5);
  v15 = v19;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_261A50F00(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB868, &qword_261A8A760);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A57D48();
  sub_261A85CD4();
  v13 = a2;
  v12[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB620, &qword_261A899E0);
  sub_261A55D10();
  sub_261A85B54();
  if (!v2)
  {
    v12[14] = 1;
    sub_261A85B34();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_261A510B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB860, &qword_261A8A758);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v16 = *(v1 + 16);
  v14 = v1[3];
  v13[3] = *(v1 + 32);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A57E74();
  sub_261A85CD4();
  v20 = 0;
  v11 = v15;
  sub_261A85B14();
  if (!v11)
  {
    v19 = v16;
    v18 = 1;
    sub_261A55C68();
    sub_261A85B54();
    v17 = 2;
    sub_261A85AF4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_261A5128C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB720, &qword_261A89A50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A57E74();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v11 = sub_261A85A54();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  sub_261A57EC8();
  sub_261A85A94();
  v21 = v24;
  v22 = 2;
  v16 = sub_261A85A24();
  v17 = v9;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v21;
  *(a2 + 24) = v16;
  *(a2 + 32) = v19 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_261A514C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261A56014(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_261A5150C()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x736973706F6E7973;
  v4 = 0x746E656D75636F64;
  if (v1 != 4)
  {
    v4 = 0x7461676572676761;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4E79616C70736964;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_261A515E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A562B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A51614(uint64_t a1)
{
  v2 = sub_261A55B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A51650(uint64_t a1)
{
  v2 = sub_261A55B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_261A5168C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_261A564CC(a1, v7);
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

uint64_t sub_261A51700()
{
  if (*v0)
  {
    result = 0x726F6C6F63;
  }

  else
  {
    result = 0x63697274656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_261A51734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x63697274656DLL && a2 == 0xE600000000000000;
  if (v6 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_261A85BA4();

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

uint64_t sub_261A51808(uint64_t a1)
{
  v2 = sub_261A58D90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A51844(uint64_t a1)
{
  v2 = sub_261A58D90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A518B0()
{
  if (*v0)
  {
    result = 0x616E696D6F6E6564;
  }

  else
  {
    result = 0x73746E656D656C65;
  }

  *v0;
  return result;
}

uint64_t sub_261A518F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000;
  if (v6 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616E696D6F6E6564 && a2 == 0xEB00000000726F74)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_261A85BA4();

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

uint64_t sub_261A519D4(uint64_t a1)
{
  v2 = sub_261A57D48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A51A10(uint64_t a1)
{
  v2 = sub_261A57D48();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_261A51A4C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_261A56984(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_261A51A9C()
{
  v1 = 0x726F6C6F63;
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
    return 0x63697274656DLL;
  }
}

uint64_t sub_261A51AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A56B64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A51B1C(uint64_t a1)
{
  v2 = sub_261A57E74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A51B58(uint64_t a1)
{
  v2 = sub_261A57E74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A51BD0()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A51CB4()
{
  *v0;
  *v0;
  *v0;
  sub_261A85554();
}

uint64_t sub_261A51D84()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A51E64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261A56C7C();
  *a2 = result;
  return result;
}

void sub_261A51E94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684957547;
  v5 = 0xEB00000000726F74;
  v6 = 0x616E696D6F6E6564;
  v7 = 0xE600000000000000;
  v8 = 0x63697274656DLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x8000000261A8DCE0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73746E656D656C65;
    v3 = 0xE800000000000000;
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

uint64_t sub_261A51F34()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0x616E696D6F6E6564;
  v4 = 0x63697274656DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73746E656D656C65;
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

uint64_t sub_261A51FD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261A56C7C();
  *a1 = result;
  return result;
}

uint64_t sub_261A52004(uint64_t a1)
{
  v2 = sub_261A57CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A52040(uint64_t a1)
{
  v2 = sub_261A57CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A5207C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB6E8, &qword_261A89A38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A57CF4();
  sub_261A85CB4();
  if (!v2)
  {
    LOBYTE(v34[0]) = 0;
    v12 = sub_261A85A54();
    v13 = v11;
    v14 = v12 == 0x7A696C616D726F6ELL && v11 == 0xEF616572612D6465;
    if (v14 || (sub_261A85BA4() & 1) != 0)
    {

      sub_261A39AE0(a1, v34);
      v15 = sub_261A56984(v34);
      v18 = v17;
      v19 = v15;
      (*(v6 + 8))(v9, v5);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = v19;
LABEL_11:
      *a2 = v18;
      *(a2 + 8) = v23;
      *(a2 + 16) = v20;
      *(a2 + 24) = v21;
      *(a2 + 32) = v22;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v24 = v12 == 7496034 && v13 == 0xE300000000000000;
    if (v24 || (sub_261A85BA4() & 1) != 0)
    {

      sub_261A39AE0(a1, v34);
      sub_261A5128C(v34, v35);
      (*(v6 + 8))(v9, v5);
      v18 = v35[0];
      v23 = *&v35[1];
      v20 = v36;
      v21 = v37;
      v22 = v38 | 0x80;
      goto LABEL_11;
    }

    v33 = sub_261A85904();
    swift_allocError();
    v26 = v25;
    v31 = v25;
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB6F8, &qword_261A89A40) + 48);
    *v26 = &type metadata for DisplaySpec;
    v27 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v27);
    sub_261A85C94();
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_261A858C4();
    MEMORY[0x2667168A0](0xD00000000000003BLL, 0x8000000261A8E530);
    MEMORY[0x2667168A0](v12, v13);

    MEMORY[0x2667168A0](39, 0xE100000000000000);
    v28 = v31;
    sub_261A858F4();
    (*(*(v33 - 8) + 104))(v28, *MEMORY[0x277D84160]);
    swift_willThrow();
    (*(v6 + 8))(v9, v5, v29);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_261A52454(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x616E696D6F6E6564;
  v4 = 0xEB00000000726F74;
  if (v2 != 1)
  {
    v3 = 1684957547;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x73746E656D656C65;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x616E696D6F6E6564;
  v8 = 0xEB00000000726F74;
  if (*a2 != 1)
  {
    v7 = 1684957547;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x73746E656D656C65;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261A85BA4();
  }

  return v11 & 1;
}

uint64_t sub_261A52558()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A525FC()
{
  *v0;
  *v0;
  sub_261A85554();
}

uint64_t sub_261A5268C()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A5272C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261A56CC8();
  *a2 = result;
  return result;
}

void sub_261A5275C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB00000000726F74;
  v5 = 0x616E696D6F6E6564;
  if (v2 != 1)
  {
    v5 = 1684957547;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73746E656D656C65;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_261A527BC()
{
  v1 = 0x616E696D6F6E6564;
  if (*v0 != 1)
  {
    v1 = 1684957547;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73746E656D656C65;
  }
}

uint64_t sub_261A52818@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261A56CC8();
  *a1 = result;
  return result;
}

uint64_t sub_261A52840(uint64_t a1)
{
  v2 = sub_261A55CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A5287C(uint64_t a1)
{
  v2 = sub_261A55CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A528C4()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A5297C()
{
  *v0;
  *v0;
  *v0;
  sub_261A85554();
}

uint64_t sub_261A52A20()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A52AD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261A56D14();
  *a2 = result;
  return result;
}

void sub_261A52B04(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x63697274656DLL;
  v4 = 0x8000000261A8DCE0;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 1684957547;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x726F6C6F63;
    v2 = 0xE500000000000000;
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

unint64_t sub_261A52B78()
{
  v1 = 0x63697274656DLL;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 1684957547;
  }

  if (*v0)
  {
    v1 = 0x726F6C6F63;
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

uint64_t sub_261A52BE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261A56D14();
  *a1 = result;
  return result;
}

uint64_t sub_261A52C10(uint64_t a1)
{
  v2 = sub_261A55C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A52C4C(uint64_t a1)
{
  v2 = sub_261A55C14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A52C88(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB5F8, &qword_261A899D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB600, &qword_261A899D8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = *v1;
  v23 = v1[1];
  v24 = v13;
  if (v1[4] < 0)
  {
    v17 = v1[3];
    v21 = v1[2];
    v22 = v4;
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_261A55C14();
    sub_261A85CD4();
    LOBYTE(v26) = 3;
    v19 = v25;
    sub_261A85B14();
    if (v19)
    {
      return (*(v22 + 8))(v7, v3);
    }

    else
    {
      LOBYTE(v26) = v21;
      v27 = 1;
      sub_261A55C68();
      sub_261A85B54();
      LOBYTE(v26) = 0;
      sub_261A85B14();
      v20 = v22;
      LOBYTE(v26) = 2;
      sub_261A85AF4();
      return (*(v20 + 8))(v7, v3);
    }
  }

  else
  {
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_261A55CBC();
    sub_261A85CD4();
    LOBYTE(v26) = 2;
    v15 = v25;
    sub_261A85B14();
    if (!v15)
    {
      v26 = v24;
      v27 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB620, &qword_261A899E0);
      sub_261A55D10();
      sub_261A85B54();
      LOBYTE(v26) = 1;
      sub_261A85B34();
    }

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_261A53060(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB638, &qword_261A899E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A55DE8();
  sub_261A85CD4();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v21) = 0;
  sub_261A85B14();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v21) = 1;
    sub_261A85B14();
    v21 = v3[4];
    HIBYTE(v20) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB648, &unk_261A899F0);
    sub_261A57F1C(&qword_27FECB650);
    sub_261A85B54();
    v16 = v3[5];
    v17 = v3[6];
    LOBYTE(v21) = 3;
    sub_261A85B14();
    v18 = v3[7];
    v19 = v3[8];
    LOBYTE(v21) = 4;
    sub_261A85AE4();
    v21 = v3[9];
    HIBYTE(v20) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
    sub_261A55E3C(&qword_27FECB658);
    sub_261A85B54();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_261A53330(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB670, &unk_261A89A08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A55EFC();
  sub_261A85CD4();
  v13 = *v3;
  HIBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
  sub_261A55E3C(&qword_27FECB658);
  sub_261A85B54();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB430, &qword_261A88FD0);
    sub_261A57AF4(&qword_27FECB680);
    sub_261A85B54();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB688, &qword_261A89A18);
    sub_261A55F50(&qword_27FECB690);
    sub_261A85B54();
    v13 = v3[3];
    HIBYTE(v12) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB698, &qword_261A89A20);
    sub_261A57B60(&qword_27FECB6A0, sub_261A55FC0);
    sub_261A85B54();
    v13 = v3[4];
    HIBYTE(v12) = 4;
    sub_261A85B54();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_261A5367C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = a5;
  v14[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB840, &qword_261A8A740);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A58DE4();
  sub_261A85CD4();
  v17 = 0;
  sub_261A85AF4();
  if (!v5)
  {
    v16 = 1;
    sub_261A85AF4();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_261A5381C()
{
  v1 = *v0;
  v2 = 0x6973736572707865;
  v3 = 0x736973706F6E7973;
  v4 = 0x746E656D75636F64;
  if (v1 != 4)
  {
    v4 = 0x65646F4D7478656ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4E79616C70736964;
  if (v1 != 1)
  {
    v5 = 0x6C6F687365726874;
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

uint64_t sub_261A538F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A56D60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A5391C(uint64_t a1)
{
  v2 = sub_261A55DE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A53958(uint64_t a1)
{
  v2 = sub_261A55DE8();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_261A53994@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_261A56F7C(a1, v6);
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

uint64_t sub_261A539F8()
{
  v1 = *v0;
  v2 = 0x6D726F6674616C70;
  v3 = 0x73646F69726570;
  v4 = 0x746E6174736E6F63;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6973736572707865;
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

uint64_t sub_261A53AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A57488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A53AC8(uint64_t a1)
{
  v2 = sub_261A55EFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A53B04(uint64_t a1)
{
  v2 = sub_261A55EFC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_261A53B40@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_261A57654(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_261A53BA0()
{
  if (*v0)
  {
    result = 0x6E65696369666665;
  }

  else
  {
    result = 0x616D726F66726570;
  }

  *v0;
  return result;
}

uint64_t sub_261A53BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x616D726F66726570 && a2 == 0xEB0000000065636ELL;
  if (v6 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E65696369666665 && a2 == 0xEA00000000007963)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_261A85BA4();

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

uint64_t sub_261A53CD0(uint64_t a1)
{
  v2 = sub_261A58DE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A53D0C(uint64_t a1)
{
  v2 = sub_261A58DE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A53D48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_261A58E38(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_261A53DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x63697274656DLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_261A85BA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_261A53E58(uint64_t a1)
{
  v2 = sub_261A55EA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A53E94(uint64_t a1)
{
  v2 = sub_261A55EA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A53ED0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB748, &qword_261A89A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A55EA8();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_261A85A54();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_261A5404C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB660, &qword_261A89A00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A55EA8();
  sub_261A85CD4();
  sub_261A85B14();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_261A54188(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D6C616974696E69 && a2 == 0xEF656D614E65646FLL || (sub_261A85BA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365646F6DLL && a2 == 0xE500000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = sub_261A85BA4();

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

uint64_t sub_261A54348@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB540, &qword_261A89460);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A50664();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36[0]) = 0;
  v11 = sub_261A85A54();
  v31 = v12;
  LOBYTE(v36[0]) = 1;
  v13 = sub_261A85A54();
  v30 = v14;
  v28 = v13;
  LOBYTE(v36[0]) = 2;
  v27 = sub_261A85A14();
  v29 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAFD0, &qword_261A89450);
  LOBYTE(v32) = 3;
  sub_261A54728();
  sub_261A85A94();
  v26 = v36[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB528, &qword_261A89458);
  v37 = 4;
  sub_261A54800();
  sub_261A85A94();
  (*(v6 + 8))(v9, v5);
  v25 = v38;
  v17 = v30;
  v16 = v31;
  *&v32 = v11;
  *(&v32 + 1) = v31;
  v19 = v28;
  v18 = v29;
  *&v33 = v28;
  *(&v33 + 1) = v30;
  v20 = v27;
  *&v34 = v27;
  *(&v34 + 1) = v29;
  *&v35 = v26;
  *(&v35 + 1) = v38;
  sub_261A548D8(&v32, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v11;
  v36[1] = v16;
  v36[2] = v19;
  v36[3] = v17;
  v36[4] = v20;
  v36[5] = v18;
  v36[6] = v26;
  v36[7] = v25;
  result = sub_261A54910(v36);
  v22 = v33;
  *a2 = v32;
  a2[1] = v22;
  v23 = v35;
  a2[2] = v34;
  a2[3] = v23;
  return result;
}

unint64_t sub_261A54728()
{
  result = qword_27FECB548;
  if (!qword_27FECB548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECAFD0, &qword_261A89450);
    sub_261A547AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB548);
  }

  return result;
}

unint64_t sub_261A547AC()
{
  result = qword_27FECB550;
  if (!qword_27FECB550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB550);
  }

  return result;
}

unint64_t sub_261A54800()
{
  result = qword_27FECB558;
  if (!qword_27FECB558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB528, &qword_261A89458);
    sub_261A54884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB558);
  }

  return result;
}

unint64_t sub_261A54884()
{
  result = qword_27FECB560;
  if (!qword_27FECB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB560);
  }

  return result;
}

uint64_t sub_261A54940(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736973706F6E7973 && a2 == 0xE800000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xED00006E6F697461 || (sub_261A85BA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7379616C70736964 && a2 == 0xE800000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364 || (sub_261A85BA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7372656767697274 && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_261A85BA4();

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

uint64_t sub_261A54BE8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB568, &qword_261A89468);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A502B0();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v50[0]) = 0;
  v12 = sub_261A85A54();
  v43 = v13;
  LOBYTE(v50[0]) = 1;
  v14 = sub_261A85A54();
  v42 = v15;
  v16 = v14;
  LOBYTE(v50[0]) = 2;
  v39 = sub_261A85A54();
  v40 = v16;
  v41 = v17;
  LOBYTE(v50[0]) = 3;
  v37 = sub_261A85A14();
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB4A8, &qword_261A89428);
  LOBYTE(v44) = 4;
  sub_261A55268();
  sub_261A85A94();
  v36 = v50[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB4C0, &qword_261A89430);
  LOBYTE(v44) = 5;
  sub_261A55340();
  v35 = 0;
  sub_261A85A94();
  v38 = 0;
  v34 = v50[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB4D8, &qword_261A89438);
  LOBYTE(v44) = 6;
  sub_261A55418();
  v20 = v38;
  sub_261A85A94();
  v38 = v20;
  if (v20)
  {
    (*(v6 + 8))(v9, v5);
    v21 = 0;
    v22 = v35;
  }

  else
  {
    v33 = v50[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB4F0, &qword_261A89440);
    v51 = 7;
    sub_261A554F0();
    v23 = v38;
    sub_261A85A94();
    v38 = v23;
    if (!v23)
    {
      (*(v6 + 8))(v9, v5);
      v35 = v52;
      *&v44 = v12;
      v24 = v43;
      *(&v44 + 1) = v43;
      v25 = v40;
      *&v45 = v40;
      v26 = v42;
      *(&v45 + 1) = v42;
      v27 = v39;
      v28 = v41;
      *&v46 = v39;
      *(&v46 + 1) = v41;
      *&v47 = v37;
      *(&v47 + 1) = v19;
      *&v48 = v36;
      *(&v48 + 1) = v34;
      *&v49 = v33;
      *(&v49 + 1) = v52;
      sub_261A3DEAC(&v44, v50);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v50[0] = v12;
      v50[1] = v24;
      v50[2] = v25;
      v50[3] = v26;
      v50[4] = v27;
      v50[5] = v28;
      v50[6] = v37;
      v50[7] = v19;
      v50[8] = v36;
      v50[9] = v34;
      v50[10] = v33;
      v50[11] = v35;
      result = sub_261A3DF08(v50);
      v29 = v47;
      a2[2] = v46;
      a2[3] = v29;
      v30 = v49;
      a2[4] = v48;
      a2[5] = v30;
      v31 = v45;
      *a2 = v44;
      a2[1] = v31;
      return result;
    }

    (*(v6 + 8))(v9, v5);
    v21 = 1;
    v22 = v35;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  if (!v22)
  {
  }

  if (v21)
  {
  }

  return result;
}

unint64_t sub_261A55268()
{
  result = qword_27FECB570;
  if (!qword_27FECB570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB4A8, &qword_261A89428);
    sub_261A552EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB570);
  }

  return result;
}

unint64_t sub_261A552EC()
{
  result = qword_27FECB578;
  if (!qword_27FECB578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB578);
  }

  return result;
}

unint64_t sub_261A55340()
{
  result = qword_27FECB580;
  if (!qword_27FECB580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB4C0, &qword_261A89430);
    sub_261A553C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB580);
  }

  return result;
}

unint64_t sub_261A553C4()
{
  result = qword_27FECB588;
  if (!qword_27FECB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB588);
  }

  return result;
}

unint64_t sub_261A55418()
{
  result = qword_27FECB590;
  if (!qword_27FECB590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB4D8, &qword_261A89438);
    sub_261A5549C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB590);
  }

  return result;
}

unint64_t sub_261A5549C()
{
  result = qword_27FECB598;
  if (!qword_27FECB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB598);
  }

  return result;
}

unint64_t sub_261A554F0()
{
  result = qword_27FECB5A0;
  if (!qword_27FECB5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB4F0, &qword_261A89440);
    sub_261A55574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB5A0);
  }

  return result;
}

unint64_t sub_261A55574()
{
  result = qword_27FECB5A8;
  if (!qword_27FECB5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB5A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModeSpec.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModeSpec.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_261A55728(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_261A55770(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_261A557C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_261A55810(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_261A558AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_261A558F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261A55960()
{
  result = qword_27FECB5B0;
  if (!qword_27FECB5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB5B0);
  }

  return result;
}

unint64_t sub_261A559B8()
{
  result = qword_27FECB5B8;
  if (!qword_27FECB5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB5B8);
  }

  return result;
}

unint64_t sub_261A55A10()
{
  result = qword_27FECB5C0;
  if (!qword_27FECB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB5C0);
  }

  return result;
}

unint64_t sub_261A55A68()
{
  result = qword_27FECB5C8;
  if (!qword_27FECB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB5C8);
  }

  return result;
}

unint64_t sub_261A55AC0()
{
  result = qword_27FECB5D0;
  if (!qword_27FECB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB5D0);
  }

  return result;
}

unint64_t sub_261A55B18()
{
  result = qword_27FECB5D8;
  if (!qword_27FECB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB5D8);
  }

  return result;
}

unint64_t sub_261A55B6C()
{
  result = qword_27FECB5E8;
  if (!qword_27FECB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB5E8);
  }

  return result;
}

unint64_t sub_261A55BC0()
{
  result = qword_27FECB5F0;
  if (!qword_27FECB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB5F0);
  }

  return result;
}

unint64_t sub_261A55C14()
{
  result = qword_27FECB608;
  if (!qword_27FECB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB608);
  }

  return result;
}

unint64_t sub_261A55C68()
{
  result = qword_27FECB610;
  if (!qword_27FECB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB610);
  }

  return result;
}

unint64_t sub_261A55CBC()
{
  result = qword_27FECB618;
  if (!qword_27FECB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB618);
  }

  return result;
}

unint64_t sub_261A55D10()
{
  result = qword_27FECB628;
  if (!qword_27FECB628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB620, &qword_261A899E0);
    sub_261A55D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB628);
  }

  return result;
}

unint64_t sub_261A55D94()
{
  result = qword_27FECB630;
  if (!qword_27FECB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB630);
  }

  return result;
}

unint64_t sub_261A55DE8()
{
  result = qword_27FECB640;
  if (!qword_27FECB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB640);
  }

  return result;
}

uint64_t sub_261A55E3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECAF58, &qword_261A87428);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261A55EA8()
{
  result = qword_27FECB668;
  if (!qword_27FECB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB668);
  }

  return result;
}

unint64_t sub_261A55EFC()
{
  result = qword_27FECB678;
  if (!qword_27FECB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB678);
  }

  return result;
}

uint64_t sub_261A55F50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB688, &qword_261A89A18);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261A55FC0()
{
  result = qword_27FECB6A8;
  if (!qword_27FECB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB6A8);
  }

  return result;
}

uint64_t sub_261A56014(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A85CA4();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v5 = sub_261A85BB4();
    v8 = v5;
    v9 = v6;
    v10 = v5 == 7173491 && v6 == 0xE300000000000000;
    if (v10 || (sub_261A85BA4() & 1) != 0)
    {

      v4 = 0;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v4;
    }

    if (v8 == 0xD000000000000015 && 0x8000000261A8E590 == v9 || (sub_261A85BA4() & 1) != 0)
    {

      v4 = 1;
      goto LABEL_12;
    }

    v17 = sub_261A85904();
    swift_allocError();
    v12 = v11;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB6F8, &qword_261A89A40) + 48);
    *v12 = &type metadata for MetricSpec.AggregationSpec;
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_261A85C94();
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_261A858C4();
    MEMORY[0x2667168A0](0xD000000000000041, 0x8000000261A8E5D0);
    MEMORY[0x2667168A0](v8, v9);

    v4 = v15;
    MEMORY[0x2667168A0](39, 0xE100000000000000);
    sub_261A858F4();
    (*(*(v17 - 8) + 104))(v12, *MEMORY[0x277D84160]);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_261A562B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000261A8E570 == a2 || (sub_261A85BA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736973706F6E7973 && a2 == 0xE800000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xED00006E6F697461 || (sub_261A85BA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xEB000000006E6F69)
  {

    return 5;
  }

  else
  {
    v6 = sub_261A85BA4();

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

uint64_t sub_261A564CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB6D8, &qword_261A89A30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A55B6C();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v41[0]) = 0;
  v11 = sub_261A85A54();
  v13 = v12;
  LOBYTE(v41[0]) = 1;
  v32 = sub_261A85A54();
  v34 = v14;
  LOBYTE(v41[0]) = 2;
  v15 = sub_261A85A14();
  v33 = v16;
  v28 = v15;
  LOBYTE(v41[0]) = 3;
  v31 = 0;
  v27 = sub_261A85A54();
  v30 = v17;
  LOBYTE(v41[0]) = 4;
  v26 = sub_261A85A14();
  v29 = v18;
  v43 = 5;
  sub_261A57C38();
  sub_261A85A94();
  (*(v6 + 8))(v9, v5);
  LODWORD(v31) = v44;
  *&v35 = v11;
  *(&v35 + 1) = v13;
  *&v36 = v32;
  v19 = v34;
  *(&v36 + 1) = v34;
  *&v37 = v28;
  v20 = v33;
  *(&v37 + 1) = v33;
  *&v38 = v27;
  v21 = v30;
  *(&v38 + 1) = v30;
  *&v39 = v26;
  v22 = v29;
  *(&v39 + 1) = v29;
  v40 = v44;
  sub_261A57C8C(&v35, v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v41[0] = v11;
  v41[1] = v13;
  v41[2] = v32;
  v41[3] = v19;
  v41[4] = v28;
  v41[5] = v20;
  v41[6] = v27;
  v41[7] = v21;
  v41[8] = v26;
  v41[9] = v22;
  v42 = v31;
  result = sub_261A57CC4(v41);
  v24 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v24;
  *(a2 + 64) = v39;
  *(a2 + 80) = v40;
  v25 = v36;
  *a2 = v35;
  *(a2 + 16) = v25;
  return result;
}

double sub_261A56984(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB700, &qword_261A89A48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A57D48();
  sub_261A85CB4();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB620, &qword_261A899E0);
    v12[15] = 0;
    sub_261A57D9C();
    sub_261A85A94();
    v12[14] = 1;
    sub_261A85A74();
    v2 = v11;
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_261A56B64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63697274656DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000261A8DCE0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_261A85BA4();

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

uint64_t sub_261A56C7C()
{
  v0 = sub_261A859E4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_261A56CC8()
{
  v0 = sub_261A859E4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_261A56D14()
{
  v0 = sub_261A859E4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_261A56D60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364 || (sub_261A85BA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736973706F6E7973 && a2 == 0xE800000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xED00006E6F697461 || (sub_261A85BA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65646F4D7478656ELL && a2 == 0xE900000000000073)
  {

    return 5;
  }

  else
  {
    v6 = sub_261A85BA4();

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

uint64_t sub_261A56F7C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB738, &qword_261A89A58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A55DE8();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  v11 = sub_261A85A54();
  v13 = v12;
  LOBYTE(v35[0]) = 1;
  *&v29 = sub_261A85A54();
  *(&v29 + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB648, &unk_261A899F0);
  LOBYTE(v30) = 2;
  sub_261A57F1C(&qword_27FECB740);
  sub_261A85A94();
  v28 = v35[0];
  LOBYTE(v35[0]) = 3;
  v27 = 0;
  v24 = sub_261A85A54();
  v26 = v15;
  LOBYTE(v35[0]) = 4;
  v23 = sub_261A85A14();
  v25 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
  v43 = 5;
  sub_261A55E3C(&qword_27FECB6B8);
  sub_261A85A94();
  (*(v6 + 8))(v9, v5);
  v27 = v44;
  *&v30 = v11;
  *(&v30 + 1) = v13;
  v17 = v29;
  v31 = v29;
  v18 = v28;
  *&v32 = v28;
  *(&v32 + 1) = v24;
  v19 = v26;
  *&v33 = v26;
  *(&v33 + 1) = v23;
  *&v34 = v25;
  *(&v34 + 1) = v44;
  sub_261A57F88(&v30, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v11;
  v35[1] = v13;
  v36 = v17;
  v37 = v18;
  v38 = v24;
  v39 = v19;
  v40 = v23;
  v41 = v25;
  v42 = v27;
  result = sub_261A57FC0(v35);
  v21 = v33;
  a2[2] = v32;
  a2[3] = v21;
  a2[4] = v34;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  return result;
}

uint64_t sub_261A57488(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726F6674616C70 && a2 == 0xE900000000000073;
  if (v4 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEB00000000736E6FLL || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73646F69726570 && a2 == 0xE700000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E6174736E6F63 && a2 == 0xE900000000000073 || (sub_261A85BA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000261A8E5B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_261A85BA4();

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

uint64_t sub_261A57654@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB6B0, &qword_261A89A28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A55EFC();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
  v21 = 0;
  sub_261A55E3C(&qword_27FECB6B8);
  sub_261A85A94();
  v19 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB430, &qword_261A88FD0);
  v21 = 1;
  sub_261A57AF4(&qword_27FECB438);
  sub_261A85A94();
  v18 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB688, &qword_261A89A18);
  v21 = 2;
  sub_261A55F50(&qword_27FECB6C0);
  sub_261A85A94();
  v17 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB698, &qword_261A89A20);
  v21 = 3;
  sub_261A57B60(&qword_27FECB6C8, sub_261A57BE4);
  sub_261A85A94();
  v16 = v22;
  v21 = 4;
  sub_261A85A94();
  (*(v6 + 8))(v9, v5);
  v11 = v22;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v13 = v20;
  v14 = v17;
  v15 = v18;
  *v20 = v19;
  v13[1] = v15;
  v13[2] = v14;
  v13[3] = v16;
  v13[4] = v11;
  return result;
}

uint64_t sub_261A57AF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB430, &qword_261A88FD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261A57B60(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB698, &qword_261A89A20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261A57BE4()
{
  result = qword_27FECB6D0;
  if (!qword_27FECB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB6D0);
  }

  return result;
}

unint64_t sub_261A57C38()
{
  result = qword_27FECB6E0;
  if (!qword_27FECB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB6E0);
  }

  return result;
}

unint64_t sub_261A57CF4()
{
  result = qword_27FECB6F0;
  if (!qword_27FECB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB6F0);
  }

  return result;
}

unint64_t sub_261A57D48()
{
  result = qword_27FECB708;
  if (!qword_27FECB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB708);
  }

  return result;
}

unint64_t sub_261A57D9C()
{
  result = qword_27FECB710;
  if (!qword_27FECB710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB620, &qword_261A899E0);
    sub_261A57E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB710);
  }

  return result;
}

unint64_t sub_261A57E20()
{
  result = qword_27FECB718;
  if (!qword_27FECB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB718);
  }

  return result;
}

unint64_t sub_261A57E74()
{
  result = qword_27FECB728;
  if (!qword_27FECB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB728);
  }

  return result;
}

unint64_t sub_261A57EC8()
{
  result = qword_27FECB730;
  if (!qword_27FECB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB730);
  }

  return result;
}

uint64_t sub_261A57F1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB648, &unk_261A899F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Silicon.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Silicon.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_261A58198(uint64_t a1, int a2)
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

uint64_t sub_261A581E0(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Function(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Function(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_261A583F4()
{
  result = qword_27FECB750;
  if (!qword_27FECB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB750);
  }

  return result;
}

unint64_t sub_261A5844C()
{
  result = qword_27FECB758;
  if (!qword_27FECB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB758);
  }

  return result;
}

unint64_t sub_261A584A4()
{
  result = qword_27FECB760;
  if (!qword_27FECB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB760);
  }

  return result;
}

unint64_t sub_261A584FC()
{
  result = qword_27FECB768;
  if (!qword_27FECB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB768);
  }

  return result;
}

unint64_t sub_261A58554()
{
  result = qword_27FECB770;
  if (!qword_27FECB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB770);
  }

  return result;
}

unint64_t sub_261A585AC()
{
  result = qword_27FECB778;
  if (!qword_27FECB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB778);
  }

  return result;
}

unint64_t sub_261A58604()
{
  result = qword_27FECB780;
  if (!qword_27FECB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB780);
  }

  return result;
}

unint64_t sub_261A5865C()
{
  result = qword_27FECB788;
  if (!qword_27FECB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB788);
  }

  return result;
}

unint64_t sub_261A586B4()
{
  result = qword_27FECB790;
  if (!qword_27FECB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB790);
  }

  return result;
}

unint64_t sub_261A5870C()
{
  result = qword_27FECB798;
  if (!qword_27FECB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB798);
  }

  return result;
}

unint64_t sub_261A58764()
{
  result = qword_27FECB7A0;
  if (!qword_27FECB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB7A0);
  }

  return result;
}

unint64_t sub_261A587BC()
{
  result = qword_27FECB7A8;
  if (!qword_27FECB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB7A8);
  }

  return result;
}

unint64_t sub_261A58814()
{
  result = qword_27FECB7B0;
  if (!qword_27FECB7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB7B0);
  }

  return result;
}

unint64_t sub_261A5886C()
{
  result = qword_27FECB7B8;
  if (!qword_27FECB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB7B8);
  }

  return result;
}

unint64_t sub_261A588C4()
{
  result = qword_27FECB7C0;
  if (!qword_27FECB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB7C0);
  }

  return result;
}

unint64_t sub_261A5891C()
{
  result = qword_27FECB7C8;
  if (!qword_27FECB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB7C8);
  }

  return result;
}

unint64_t sub_261A58974()
{
  result = qword_27FECB7D0;
  if (!qword_27FECB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB7D0);
  }

  return result;
}

unint64_t sub_261A589CC()
{
  result = qword_27FECB7D8;
  if (!qword_27FECB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB7D8);
  }

  return result;
}

unint64_t sub_261A58A24()
{
  result = qword_27FECB7E0;
  if (!qword_27FECB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB7E0);
  }

  return result;
}

unint64_t sub_261A58A7C()
{
  result = qword_27FECB7E8;
  if (!qword_27FECB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB7E8);
  }

  return result;
}

unint64_t sub_261A58AD4()
{
  result = qword_27FECB7F0;
  if (!qword_27FECB7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB7F0);
  }

  return result;
}

unint64_t sub_261A58B2C()
{
  result = qword_27FECB7F8;
  if (!qword_27FECB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB7F8);
  }

  return result;
}

unint64_t sub_261A58B84()
{
  result = qword_27FECB800;
  if (!qword_27FECB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB800);
  }

  return result;
}

unint64_t sub_261A58BDC()
{
  result = qword_27FECB808;
  if (!qword_27FECB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB808);
  }

  return result;
}

unint64_t sub_261A58C34()
{
  result = qword_27FECB810;
  if (!qword_27FECB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB810);
  }

  return result;
}

unint64_t sub_261A58C8C()
{
  result = qword_27FECB818;
  if (!qword_27FECB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB818);
  }

  return result;
}

unint64_t sub_261A58CE4()
{
  result = qword_27FECB820;
  if (!qword_27FECB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB820);
  }

  return result;
}

unint64_t sub_261A58D3C()
{
  result = qword_27FECB828;
  if (!qword_27FECB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB828);
  }

  return result;
}

unint64_t sub_261A58D90()
{
  result = qword_27FECB838;
  if (!qword_27FECB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB838);
  }

  return result;
}

unint64_t sub_261A58DE4()
{
  result = qword_27FECB848;
  if (!qword_27FECB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB848);
  }

  return result;
}

uint64_t sub_261A58E38(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB850, &qword_261A8A748);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_261A58DE4();
  sub_261A85CB4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14[31] = 0;
    v8 = sub_261A85A24();
    v10 = v9;
    v14[30] = 1;
    sub_261A85A24();
    v13 = v12;
    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v14[24] = v10 & 1;
    v14[8] = v13 & 1;
  }

  return v8;
}

unint64_t sub_261A59024()
{
  result = qword_27FECB870;
  if (!qword_27FECB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB870);
  }

  return result;
}

unint64_t sub_261A5907C()
{
  result = qword_27FECB878;
  if (!qword_27FECB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB878);
  }

  return result;
}

unint64_t sub_261A590D4()
{
  result = qword_27FECB880;
  if (!qword_27FECB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB880);
  }

  return result;
}

unint64_t sub_261A5912C()
{
  result = qword_27FECB888;
  if (!qword_27FECB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB888);
  }

  return result;
}

unint64_t sub_261A59184()
{
  result = qword_27FECB890;
  if (!qword_27FECB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB890);
  }

  return result;
}

unint64_t sub_261A591DC()
{
  result = qword_27FECB898;
  if (!qword_27FECB898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB898);
  }

  return result;
}

uint64_t sub_261A59268@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = a2;
  v7 = *a1;
  v61 = a1[1];
  v8 = a1[2];
  v9 = *(a2 + 16);
  if (v9)
  {
    v63 = *a1;
    v65 = a1[2];
    v78 = MEMORY[0x277D84F90];
    sub_261A3F2D0(0, v9, 0);
    v10 = 0;
    v11 = v78;
    v12 = (v6 + 40);
    v71 = v9;
    v74 = v6;
    while (v10 < *(v6 + 16))
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = *(a4 + 16);
      v16 = *(v15 + 16);

      if (!v16 || (v17 = sub_261A5BD84(v13, v14), (v18 & 1) == 0))
      {

        sub_261A5E73C();
        swift_allocError();
        *v30 = v13;
        v30[1] = v14;
        swift_willThrow();
      }

      v19 = *(v15 + 56) + 40 * v17;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      if (*(a3 + 16))
      {
        v23 = *(v19 + 16);
        v24 = *(v19 + 32);
        sub_261A5BD84(v13, v14);
        v22 = v24;
        v20 = v23;
        if (v25)
        {
          v21 = 224;
        }
      }

      v78 = v11;
      v27 = *(v11 + 16);
      v26 = *(v11 + 24);
      if (v27 >= v26 >> 1)
      {
        v67 = v20;
        v29 = v22;
        sub_261A3F2D0((v26 > 1), v27 + 1, 1);
        v22 = v29;
        v20 = v67;
        v11 = v78;
      }

      ++v10;
      *(v11 + 16) = v27 + 1;
      v28 = v11 + 40 * v27;
      *(v28 + 32) = v13;
      *(v28 + 40) = v14;
      *(v28 + 48) = v20;
      *(v28 + 56) = v21;
      *(v28 + 64) = v22;
      v12 += 2;
      v6 = v74;
      if (v71 == v10)
      {
        v5 = v69;
        v7 = v63;
        v8 = v65;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_14:

  v33 = sub_261A5A2D0(v32, v8, v7, 0);
  v12 = v5;
  if (v5)
  {
  }

  v34 = v7;
  v35 = v33;
  v64 = v34;
  if (!*(v33 + 16))
  {
    goto LABEL_51;
  }

  if (!*(v35 + 16))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:

    __break(1u);

    MEMORY[0x2667175A0](v12);

    __break(1u);
    return result;
  }

  v66 = v8;
  v36 = *(v35 + 32);

  v37 = *(v36 + 16);
  if (v37)
  {
    v78 = MEMORY[0x277D84F90];
    sub_261A3F230(0, v37, 0);
    v38 = 0;
    v39 = v78;
    v70 = v36;
    v72 = *(v36 + 16);
    v40 = (v36 + 64);
    v68 = v37;
    while (v72 != v38)
    {
      if (v38 >= *(v36 + 16))
      {
        goto LABEL_48;
      }

      v41 = *(v40 - 3);
      if (v41)
      {
        v75 = *(v40 - 2);
        v42 = *(v40 - 4);
        v12 = (*v40 & 1);
        v43 = v38;
      }

      else
      {
        v42 = 0;
        v43 = 0;
        v75 = 0;
        v12 = 0;
      }

      v78 = v39;
      v45 = *(v39 + 16);
      v44 = *(v39 + 24);
      v46 = v39;

      if (v45 >= v44 >> 1)
      {
        sub_261A3F230((v44 > 1), v45 + 1, 1);
        v46 = v78;
      }

      ++v38;
      *(v46 + 16) = v45 + 1;
      v47 = v46 + 40 * v45;
      *(v47 + 32) = v42;
      *(v47 + 40) = v41;
      *(v47 + 48) = v43;
      *(v47 + 56) = v75;
      *(v47 + 64) = v12;
      v40 += 40;
      v36 = v70;
      v39 = v46;
      if (v68 == v38)
      {

        v12 = 0;
        goto LABEL_30;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v39 = MEMORY[0x277D84F90];
LABEL_30:
  v48 = *(v39 + 16);

  v49 = 0;
  v50 = MEMORY[0x277D84F90];
LABEL_31:
  v51 = (v39 + 40 + 40 * v49);
  while (v48 != v49)
  {
    if (v49 >= *(v39 + 16))
    {
      goto LABEL_46;
    }

    ++v49;
    v52 = v51 + 5;
    v53 = *v51;
    v51 += 5;
    if (v53)
    {
      v54 = *(v52 - 4);
      v55 = v54 + v66;
      if (__OFADD__(v54, v66))
      {
        goto LABEL_50;
      }

      v56 = *(v52 - 6);

      v73 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_261A660EC(0, v50[2] + 1, 1, v50);
      }

      v58 = v50[2];
      v57 = v50[3];
      if (v58 >= v57 >> 1)
      {
        v50 = sub_261A660EC((v57 > 1), v58 + 1, 1, v50);
      }

      v50[2] = v58 + 1;
      v59 = &v50[3 * v58];
      v59[4] = v73;
      v59[5] = v53;
      v59[6] = v55;
      goto LABEL_31;
    }
  }

  if (v50[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB960, &qword_261A8AC18);
    v60 = sub_261A859C4();
  }

  else
  {
    v60 = MEMORY[0x277D84F98];
  }

  v78 = v60;
  sub_261A5DF74(v50, 1, &v78);

  *a5 = v78;
  a5[1] = v64;
  a5[2] = v61;
  a5[3] = v66;
  a5[4] = v39;
  a5[5] = a3;
  return result;
}

void CountingMode.Settings.kpc.getter(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[3];
  v5 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_28;
  }

  v7 = v1[4];
  v6 = v1[5];
  if (v5)
  {
    v8 = sub_261A856E4();
    *(v8 + 16) = v5;
    v28 = v8;
    bzero((v8 + 32), 8 * v5);
    v9 = sub_261A856E4();
    *(v9 + 16) = v5;
    bzero((v9 + 32), 8 * v5);
    v10 = *(v7 + 16);
    if (v10)
    {
LABEL_5:
      v26 = 0;
      v11 = 0;
      v24 = v9 + 32;
      v25 = a1;
      v12 = v7 + 56;
      v27 = v9;
LABEL_6:
      v13 = (v12 + 40 * v11);
      v14 = v11;
      while (v14 < *(v7 + 16))
      {
        v15 = *(v13 - 2);
        if (v15)
        {
          v16 = *(v13 - 3);
          v17 = *(v13 - 1);
          v18 = *v13;
          v19 = *(v13 - 2);

          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          if (v17 >= *(v28 + 16))
          {
            goto LABEL_26;
          }

          *(v28 + 32 + 8 * v17) = v18;
          if (*(v6 + 16))
          {
            v20 = sub_261A5BD84(v16, v15);
            v22 = v21;

            if (v22)
            {
              v23 = v27;
              if (v17 >= *(v27 + 16))
              {
                goto LABEL_29;
              }

              v11 = v14 + 1;
              *(v24 + 8 * v17) = *(*(v6 + 56) + 8 * v20);
              v26 = 1;
              v12 = v7 + 56;
              if (v10 - 1 == v14)
              {
                goto LABEL_20;
              }

              goto LABEL_6;
            }
          }

          else
          {
          }
        }

        ++v14;
        v13 += 5;
        if (v10 == v14)
        {
          v23 = v27;
          if ((v26 & 1) == 0)
          {

            v23 = 0;
          }

LABEL_20:
          a1 = v25;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    v28 = MEMORY[0x277D84F90];
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  v23 = 0;
LABEL_23:
  *a1 = 3;
  *(a1 + 8) = v28;
  *(a1 + 16) = v23;
}

uint64_t sub_261A599DC(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v124 = *MEMORY[0x277D85DE8];
  v5 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
    goto LABEL_105;
  }

  if (v5 < 0)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
  }

  v6 = v4;
  v7 = a2;
  v111 = a3 - a2;
  if (v5)
  {
    v9 = sub_261A856E4();
    *(v9 + 16) = v5;
    bzero((v9 + 32), 8 * v5);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v113 = v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = -v7;
    v12 = v9 + 32;

    for (i = 0; i != v10; ++i)
    {
      if (v7 - 65 > 0xFFFFFFFFFFFFFF7ELL)
      {
        v14 = *(a1 + 56 + 56 * i);
        if ((v7 & 0x8000000000000000) != 0)
        {
          if (v7 > 0xFFFFFFFFFFFFFFC0)
          {
            v15 = v14 << v11;
            if (v14 << v11)
            {
LABEL_13:
              v16 = __clz(__rbit64(v15));
              v17 = *(v9 + 16);
              if (v16 >= v17)
              {
LABEL_95:
                __break(1u);
              }

              else
              {
                while (1)
                {
                  v18 = *(v12 + 8 * v16);
                  v19 = __OFADD__(v18, 1);
                  v20 = v18 + 1;
                  if (v19)
                  {
                    break;
                  }

                  *(v12 + 8 * v16) = v20;
                  v15 &= (-1 << v16) - 1;
                  if (!v15)
                  {
                    goto LABEL_8;
                  }

                  v16 = __clz(__rbit64(v15));
                  if (v16 >= v17)
                  {
                    goto LABEL_95;
                  }
                }
              }

              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
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
              goto LABEL_106;
            }
          }
        }

        else if (v7 < 0x40)
        {
          v15 = v14 >> v7;
          if (v14 >> v7)
          {
            goto LABEL_13;
          }
        }
      }

LABEL_8:
      ;
    }

    v113 = v9;
  }

  v21 = v6;
  v22 = sub_261A5DBC0(a1, v7, &v113);

  *&v114 = v22;

  sub_261A5C4D8(&v114);
  if (v21)
  {
    MEMORY[0x2667175A0](v21);

    __break(1u);
    return result;
  }

  v23 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB980, &qword_261A8AC30);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_261A87870;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0;
  v25 = v111;
  *(v24 + 32) = sub_261A6F994(&v120, v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB130, &qword_261A87998);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_261A87870;
  v27 = 1 << v111;
  if (v111 > 63)
  {
    v27 = 0;
  }

  v28 = v27 != 0;
  v29 = v27 - 1;
  if (!v28)
  {
    goto LABEL_107;
  }

  v30 = inited;
  *(inited + 32) = v29;
  v99 = *(v23 + 16);
  if (!v99)
  {
LABEL_67:

    goto LABEL_68;
  }

  v109 = v29;
  v31 = 0;
  v97 = v7 - 65;
  v98 = v23 + 32;
  v95 = v7;
  v96 = -v7;
  v94 = v23;
  while (1)
  {
    v32 = (v98 + (v31 << 6));
    v33 = *(v32 + 44);
    v35 = v32[1];
    v34 = v32[2];
    v114 = *v32;
    v115 = v35;
    *v116 = v34;
    *&v116[12] = v33;
    v36 = v34;
    v37 = v34 >> v7;
    if (v7 >= 0x40)
    {
      v37 = 0;
    }

    v38 = v34 << v96;
    if (v7 <= 0xFFFFFFFFFFFFFFC0)
    {
      v38 = 0;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      v37 = v38;
    }

    if (v97 <= 0xFFFFFFFFFFFFFF7ELL)
    {
      v39 = 0;
    }

    else
    {
      v39 = v37;
    }

    if (!*(v30 + 16))
    {
      goto LABEL_98;
    }

    v40 = *(v30 + 32) & v39;
    v107 = *(&v114 + 1);
    v108 = v115;
    v103 = *&v116[16];
    v104 = v116[8];
    v102 = *&v116[24];
    v101 = *(&v115 + 1);
    if ((a4 & 1) == 0)
    {
      break;
    }

    if (!v40)
    {
      sub_261A5E7E4(&v114, &v117);
      v41 = 0;
      v42 = v109;
      do
      {
        ++v41;
        v43 = *(v24 + 16);
        if (v41 >= v43)
        {
          if (v25)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB988, &unk_261A8C920);
            v45 = sub_261A856E4();
            v46 = v45;
            *(v45 + 16) = v25;
            v47 = 32;
            do
            {
              v48 = v45 + v47;
              v49 = v121;
              *v48 = v120;
              *(v48 + 16) = v49;
              *(v48 + 32) = v122;
              *(v48 + 48) = v123;
              v47 += 56;
              --v25;
            }

            while (v25);
            v43 = *(v24 + 16);
            v42 = v109;
          }

          else
          {
            v46 = MEMORY[0x277D84F90];
          }

          v50 = *(v24 + 24);
          if (v43 >= v50 >> 1)
          {
            v53 = sub_261A65FC4((v50 > 1), v43 + 1, 1, v24);
            v42 = v109;
            v24 = v53;
          }

          *(v24 + 16) = v43 + 1;
          *(v24 + 8 * v43 + 32) = v46;
          v52 = *(v30 + 16);
          v51 = *(v30 + 24);
          v44 = v52 + 1;
          if (v52 >= v51 >> 1)
          {
            v54 = sub_261A65C2C((v51 > 1), v52 + 1, 1, v30);
            v42 = v109;
            v30 = v54;
          }

          *(v30 + 16) = v44;
          *(v30 + 8 * v52 + 32) = v42;
          v25 = v111;
        }

        else
        {
          v44 = *(v30 + 16);
        }

        if (v41 >= v44)
        {
          goto LABEL_97;
        }
      }

      while ((*(v30 + 8 * v41 + 32) & v39) == 0);
      v61 = __clz(__rbit64(*(v30 + 8 * v41 + 32) & v39));
      goto LABEL_59;
    }

LABEL_58:
    v61 = __clz(__rbit64(v40));
    sub_261A5E7E4(&v114, &v117);
    v41 = 0;
LABEL_59:
    v7 = v95;
    if (v41 >= *(v30 + 16))
    {
      goto LABEL_99;
    }

    *(v30 + 8 * v41 + 32) &= (-1 << v61) - 1;
    sub_261A5E7E4(&v114, &v117);
    if (v41 >= *(v24 + 16))
    {
      goto LABEL_100;
    }

    v55 = v24 + 32;
    v56 = *(v24 + 32 + 8 * v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 32 + 8 * v41) = v56;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      *(v55 + 8 * v41) = sub_261A67AB8(v56);
    }

    sub_261A5E854(&v114, &qword_27FECB180, &qword_261A879E8);
    v58 = *(v55 + 8 * v41);
    if (v61 >= *(v58 + 16))
    {
      goto LABEL_101;
    }

    v59 = v58 + 56 * v61;
    v60 = *(v59 + 40);
    ++v31;
    *(v59 + 32) = v107;
    *(v59 + 40) = v108;
    *(v59 + 48) = v101;
    *(v59 + 56) = v36;
    *(v59 + 64) = v104;
    *(v59 + 72) = v103;
    *(v59 + 80) = v102;

    if (v31 == v99)
    {
      goto LABEL_67;
    }

    v25 = v111;
    if (v31 >= *(v94 + 16))
    {
      goto LABEL_102;
    }
  }

  if (v40)
  {
    goto LABEL_58;
  }

  sub_261A5E7E4(&v114, &v117);

  if (!*(v24 + 16))
  {
    goto LABEL_108;
  }

  v64 = *(v24 + 32);
  v65 = *(v64 + 16);

  if (v65)
  {
    v66 = 0;
    v67 = v64 + 80;
    v68 = MEMORY[0x277D84F90];
    do
    {
      v69 = (v67 + 56 * v66);
      v70 = v66;
      while (1)
      {
        if (v70 >= *(v64 + 16))
        {
          goto LABEL_104;
        }

        v71 = *v69;
        v72 = *(v69 - 1);
        v73 = *(v69 - 6);
        v74 = *(v69 - 10);
        v75 = *(v69 - 6);
        *&v117 = v70;
        *(&v117 + 1) = v73;
        v118 = v74;
        *v119 = v75;
        *&v119[16] = v72;
        *&v119[24] = v71;
        if (v70 <= 0x3F && ((v39 >> v70) & 1) != 0)
        {
          break;
        }

        ++v70;

        sub_261A5E854(&v117, &qword_27FECB170, &qword_261A879D8);
        v69 += 14;
        if (v65 == v70)
        {
          goto LABEL_84;
        }
      }

      v112 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261A3F0E0(0, *(v68 + 16) + 1, 1);
      }

      v77 = *(v68 + 16);
      v76 = *(v68 + 24);
      v78 = v77 + 1;
      if (v77 >= v76 >> 1)
      {
        v83 = v77 + 1;
        v105 = v77;
        sub_261A3F0E0((v76 > 1), v77 + 1, 1);
        v78 = v83;
        v77 = v105;
        v68 = v112;
      }

      v66 = v70 + 1;
      *(v68 + 16) = v78;
      v79 = (v68 + (v77 << 6));
      v80 = v117;
      v81 = v118;
      v82 = *v119;
      *(v79 + 76) = *&v119[12];
      v79[3] = v81;
      v79[4] = v82;
      v79[2] = v80;
      v67 = v64 + 80;
    }

    while (v65 - 1 != v70);
  }

  else
  {
    v68 = MEMORY[0x277D84F90];
  }

LABEL_84:

  v84 = 0;
  v85 = *(v68 + 16);
  v86 = MEMORY[0x277D84F90];
LABEL_85:
  v87 = v68 - 32 + (v84 << 6);
  while (v85 != v84)
  {
    if (v84 >= *(v68 + 16))
    {
      goto LABEL_103;
    }

    v88 = (v87 + 64);
    ++v84;
    v89 = *(v87 + 80);
    v87 += 64;
    if (v89)
    {
      v110 = *v88;
      v106 = v88[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_261A65D30(0, v86[2] + 1, 1, v86);
      }

      v91 = v86[2];
      v90 = v86[3];
      if (v91 >= v90 >> 1)
      {
        v86 = sub_261A65D30((v90 > 1), v91 + 1, 1, v86);
      }

      v86[2] = v91 + 1;
      v92 = &v86[3 * v91];
      v92[4] = v110;
      v92[5] = v106;
      v92[6] = v89;
      goto LABEL_85;
    }
  }

  sub_261A5E790();
  swift_allocError();
  *v93 = v107;
  v93[1] = v108;
  v93[2] = v86;
  swift_willThrow();

LABEL_68:
  v62 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t sub_261A5A2D0(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v115 = *MEMORY[0x277D85DE8];
  v5 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
    goto LABEL_107;
  }

  if (v5 < 0)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v6 = v4;
  if (v5)
  {
    v9 = sub_261A856E4();
    *(v9 + 16) = v5;
    bzero((v9 + 32), 8 * v5);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v111 = v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = -a2;
    v12 = v9 + 32;

    for (i = 0; i != v10; ++i)
    {
      if (a2 - 65 > 0xFFFFFFFFFFFFFF7ELL)
      {
        v14 = *(a1 + 56 + 40 * i);
        if ((a2 & 0x8000000000000000) != 0)
        {
          if (a2 > 0xFFFFFFFFFFFFFFC0)
          {
            v15 = v14 << v11;
            if (v14 << v11)
            {
LABEL_13:
              v16 = __clz(__rbit64(v15));
              v17 = *(v9 + 16);
              if (v16 >= v17)
              {
LABEL_97:
                __break(1u);
              }

              else
              {
                while (1)
                {
                  v18 = *(v12 + 8 * v16);
                  v19 = __OFADD__(v18, 1);
                  v20 = v18 + 1;
                  if (v19)
                  {
                    break;
                  }

                  *(v12 + 8 * v16) = v20;
                  v15 &= (-1 << v16) - 1;
                  if (!v15)
                  {
                    goto LABEL_8;
                  }

                  v16 = __clz(__rbit64(v15));
                  if (v16 >= v17)
                  {
                    goto LABEL_97;
                  }
                }
              }

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
              goto LABEL_108;
            }
          }
        }

        else if (a2 < 0x40)
        {
          v15 = v14 >> a2;
          if (v14 >> a2)
          {
            goto LABEL_13;
          }
        }
      }

LABEL_8:
      ;
    }

    v111 = v9;
  }

  v21 = sub_261A5DDB0(a1, a2, &v111);

  v110 = v21;

  sub_261A5C57C(&v110);
  if (v6)
  {
    MEMORY[0x2667175A0](v6);

    __break(1u);
    return result;
  }

  v22 = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB968, &qword_261A8AC20);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_261A87870;
  v112 = 0u;
  v113 = 0u;
  v114 = 0;
  *(v23 + 32) = sub_261A6FA98(&v112, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB130, &qword_261A87998);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_261A87870;
  v25 = 1 << v5;
  if (v5 > 63)
  {
    v25 = 0;
  }

  v26 = v25 - 1;
  if (!v25)
  {
    goto LABEL_109;
  }

  v27 = inited;
  *(inited + 32) = v26;
  v96 = v22[2];
  if (!v96)
  {
LABEL_66:

    goto LABEL_67;
  }

  v28 = a2;
  v29 = 0;
  v94 = v28 - 65;
  v95 = v22 + 4;
  v92 = v28;
  v93 = v22;
  v91 = -v28;
  v108 = v26;
  while (1)
  {
    if (v29 >= v22[2])
    {
      goto LABEL_100;
    }

    v30 = &v95[6 * v29];
    v31 = v30[4];
    if (v94 > 0xFFFFFFFFFFFFFF7ELL)
    {
      v33 = v31 >> v92;
      if (v92 >= 0x40)
      {
        v33 = 0;
      }

      v34 = v31 << v91;
      if (v92 <= 0xFFFFFFFFFFFFFFC0)
      {
        v34 = 0;
      }

      if (v92 < 0)
      {
        v32 = v34;
      }

      else
      {
        v32 = v33;
      }
    }

    else
    {
      v32 = 0;
    }

    v35 = *(v27 + 16);
    if (!v35)
    {
      goto LABEL_101;
    }

    v37 = v30[1];
    v36 = v30[2];
    v38 = v30[3];
    v39 = *(v30 + 40);
    v40 = *(v27 + 32);
    v41 = v40 & v32;
    v105 = v31;
    v107 = v37;
    v102 = v39;
    v99 = v38;
    if ((a4 & 1) == 0)
    {
      break;
    }

    if (v41)
    {
      goto LABEL_57;
    }

    v42 = v36;

    v43 = 0;
    v44 = v108;
    do
    {
      ++v43;
      v45 = *(v23 + 16);
      if (v43 >= v45)
      {
        if (v5)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB978, &qword_261A8AC28);
          v46 = sub_261A856E4();
          *(v46 + 16) = v5;
          v47 = v5;
          v48 = 32;
          do
          {
            v49 = v46 + v48;
            v50 = v113;
            *v49 = v112;
            *(v49 + 16) = v50;
            *(v49 + 32) = v114;
            v48 += 40;
            --v47;
          }

          while (v47);
          v45 = *(v23 + 16);
          v44 = v108;
        }

        else
        {
          v46 = MEMORY[0x277D84F90];
        }

        v51 = *(v23 + 24);
        if (v45 >= v51 >> 1)
        {
          v90 = v46;
          v54 = sub_261A66378((v51 > 1), v45 + 1, 1, v23);
          v44 = v108;
          v23 = v54;
          v46 = v90;
        }

        *(v23 + 16) = v45 + 1;
        *(v23 + 8 * v45 + 32) = v46;
        v53 = *(v27 + 16);
        v52 = *(v27 + 24);
        v35 = v53 + 1;
        if (v53 >= v52 >> 1)
        {
          v55 = sub_261A65C2C((v52 > 1), v53 + 1, 1, v27);
          v44 = v108;
          v27 = v55;
        }

        *(v27 + 16) = v35;
        *(v27 + 8 * v53 + 32) = v44;
      }

      if (v43 >= v35)
      {
        goto LABEL_99;
      }

      v40 = *(v27 + 8 * v43 + 32);
    }

    while ((v40 & v32) == 0);
    v56 = __clz(__rbit64(v40 & v32));
    if (v43 >= v35)
    {
      goto LABEL_102;
    }

LABEL_58:
    *(v27 + 8 * v43 + 32) = v40 & ((-1 << v56) - 1);
    v57 = *(v23 + 16);

    if (v43 >= v57)
    {
      goto LABEL_103;
    }

    v58 = v23 + 32;
    v59 = *(v23 + 32 + 8 * v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + 32 + 8 * v43) = v59;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      *(v58 + 8 * v43) = sub_261A67B48(v59);
    }

    v61 = *(v58 + 8 * v43);
    if (v56 >= *(v61 + 16))
    {
      goto LABEL_104;
    }

    v62 = v61 + 40 * v56;
    v63 = *(v62 + 40);
    ++v29;
    *(v62 + 32) = v107;
    *(v62 + 40) = v42;
    *(v62 + 48) = v99;
    *(v62 + 56) = v105;
    *(v62 + 64) = v102;

    v22 = v93;
    if (v29 == v96)
    {
      goto LABEL_66;
    }
  }

  if (v41)
  {
LABEL_57:
    v56 = __clz(__rbit64(v41));
    v42 = v36;

    v43 = 0;
    goto LABEL_58;
  }

  v109 = v36;

  if (!*(v23 + 16))
  {
LABEL_110:
    __break(1u);
  }

  v66 = *(v23 + 32);
  v67 = *(v66 + 16);

  if (v67)
  {
    v68 = 0;
    v69 = v67 - 1;
    v70 = MEMORY[0x277D84F90];
    do
    {
      if (v68 <= *(v66 + 16))
      {
        v71 = *(v66 + 16);
      }

      else
      {
        v71 = v68;
      }

      v72 = (v66 + 64 + 40 * v68);
      v73 = v68;
      while (1)
      {
        if (v71 == v73)
        {
          goto LABEL_106;
        }

        if (v73 <= 0x3F && ((v32 >> v73) & 1) != 0)
        {
          break;
        }

        ++v73;
        v72 += 40;
        if (v67 == v73)
        {
          goto LABEL_86;
        }
      }

      v100 = *(v72 - 1);
      v103 = *(v72 - 2);
      v98 = *v72;

      v74 = swift_isUniquelyReferenced_nonNull_native();
      v110 = v70;
      v106 = v69;
      if ((v74 & 1) == 0)
      {
        sub_261A3F250(0, v70[2] + 1, 1);
        v70 = v110;
      }

      v76 = v70[2];
      v75 = v70[3];
      v77 = v76 + 1;
      if (v76 >= v75 >> 1)
      {
        sub_261A3F250((v75 > 1), v76 + 1, 1);
        v77 = v76 + 1;
        v70 = v110;
      }

      v70[2] = v77;
      v78 = &v70[6 * v76];
      v78[4] = v73;
      v68 = v73 + 1;
      *(v78 + 7) = v100;
      *(v78 + 5) = v103;
      *(v78 + 72) = v98;
      v69 = v106;
    }

    while (v106 != v73);
  }

  else
  {
    v70 = MEMORY[0x277D84F90];
  }

LABEL_86:

  v79 = 0;
  v80 = v70[2];
  v81 = MEMORY[0x277D84F90];
LABEL_87:
  v82 = &v70[6 * v79 - 2];
  while (v80 != v79)
  {
    if (v79 >= v70[2])
    {
      goto LABEL_105;
    }

    ++v79;
    v83 = (v82 + 48);
    v84 = *(v82 + 64);
    v82 += 48;
    if (v84)
    {
      v85 = *v83;
      v101 = v83[1];

      v104 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_261A65D30(0, v81[2] + 1, 1, v81);
      }

      v87 = v81[2];
      v86 = v81[3];
      if (v87 >= v86 >> 1)
      {
        v81 = sub_261A65D30((v86 > 1), v87 + 1, 1, v81);
      }

      v81[2] = v87 + 1;
      v88 = &v81[3 * v87];
      v88[4] = v104;
      v88[5] = v101;
      v88[6] = v84;
      goto LABEL_87;
    }
  }

  sub_261A5E790();
  swift_allocError();
  *v89 = v107;
  v89[1] = v109;
  v89[2] = v81;
  swift_willThrow();

LABEL_67:
  v64 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t sub_261A5AB34(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB940, &qword_261A8AC08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A5E6E8();
  sub_261A85CD4();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_261A85B14();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v17[14] = 1;
  sub_261A85B44();
  v14 = v3[3];
  v17[13] = 2;
  sub_261A85B74();
  v16 = *(v3 + 32);
  v17[12] = 3;
  sub_261A85B24();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_261A5ACF4()
{
  v1 = 1701667182;
  v2 = 0x726F7463656C6573;
  if (*v0 != 2)
  {
    v2 = 0x6E7265746E497369;
  }

  if (*v0)
  {
    v1 = 0x7265746E756F63;
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

uint64_t sub_261A5AD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A5E1CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A5AD94(uint64_t a1)
{
  v2 = sub_261A5E6E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A5ADD0(uint64_t a1)
{
  v2 = sub_261A5E6E8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_261A5AE0C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_261A5E338(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_261A5AE6C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_261A858C4();

  MEMORY[0x2667168A0](v1, v2);
  MEMORY[0x2667168A0](0xD000000000000014, 0x8000000261A8E680);
  return 0xD00000000000001ALL;
}

uint64_t sub_261A5AF0C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_261A85BA4();
  }
}

uint64_t sub_261A5AF3C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB018, &unk_261A87D10);
  v51 = *(v2 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = &v42 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB020, &qword_261A87880);
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v47);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB028, &unk_261A87D20);
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v46 = &v42 - v11;
  v12 = *v0;
  v54 = v0[1];
  v55 = v12;
  v13 = v0[2];
  v52 = v0[3];
  v53 = v13;
  v14 = v0[4];
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = -v15;
    v18 = MEMORY[0x277D84F90];
    do
    {
      v19 = *(v14 + 16);
      if (v16 > v19)
      {
        v19 = v16;
      }

      v20 = -v19;
      v21 = v14 + 32 + 40 * v16++;
      while (1)
      {
        if (v20 + v16 == 1)
        {
          __break(1u);
          MEMORY[0x2667175A0](v1);

          __break(1u);
          return result;
        }

        v1 = *(v21 + 8);
        if (v1)
        {
          if (*(v21 + 32))
          {
            break;
          }
        }

        ++v16;
        v21 += 40;
        if (v17 + v16 == 1)
        {
          goto LABEL_17;
        }
      }

      v45 = *v21;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_261A66A68(0, *(v18 + 2) + 1, 1, v18);
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        v18 = sub_261A66A68((v23 > 1), v24 + 1, 1, v18);
      }

      *(v18 + 2) = v24 + 1;
      v25 = &v18[16 * v24];
      *(v25 + 4) = v45;
      *(v25 + 5) = v1;
      v2 = v43;
    }

    while (v17 + v16);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

LABEL_17:
  v57 = v18;

  sub_261A7B22C(&v57);

  v26 = v57;
  if (*(v57 + 16))
  {
    v45 = *(v57 + 16);
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_261A858C4();

    v57 = 8236;
    v58 = 0xE200000000000000;
    v56 = v26;
    v27 = v5;
    v28 = v8;
    v29 = v8;
    v30 = v47;
    (*(v5 + 104))(v29, *MEMORY[0x277CC8AF0], v47);
    v31 = v51;
    v32 = v48;
    (*(v51 + 104))(v48, *MEMORY[0x277CC8B10], v2);
    v44 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
    sub_261A3BF78(&qword_27FECB038, &qword_27FECAF58, &qword_261A87428);
    v33 = v46;
    sub_261A85154();
    (*(v31 + 8))(v32, v2);
    (*(v27 + 8))(v28, v30);
    sub_261A3BF78(&qword_27FECB040, &qword_27FECB028, &unk_261A87D20);
    v34 = v50;
    sub_261A85674();
    (*(v49 + 8))(v33, v34);

    MEMORY[0x2667168A0](v60, v61);

    MEMORY[0x2667168A0](32, 0xE100000000000000);
    if (v45 == 1)
    {
      v35 = 29545;
    }

    else
    {
      v35 = 6648417;
    }

    if (v45 == 1)
    {
      v36 = 0xE200000000000000;
    }

    else
    {
      v36 = 0xE300000000000000;
    }

    MEMORY[0x2667168A0](v35, v36);

    MEMORY[0x2667168A0](0x616E7265746E6920, 0xE90000000000006CLL);
    v38 = v57;
    v37 = v58;
  }

  else
  {

    v38 = 0;
    v37 = 0xE000000000000000;
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  sub_261A858C4();
  v60 = v57;
  v61 = v58;
  MEMORY[0x2667168A0](0xD00000000000001ALL, 0x8000000261A8E620);
  v57 = v54;
  v58 = v53;
  v59 = v52;
  v39 = sub_261A61834();
  MEMORY[0x2667168A0](v39);

  MEMORY[0x2667168A0](0xD000000000000018, 0x8000000261A8E640);
  v40 = sub_261A85464();
  MEMORY[0x2667168A0](v40);

  MEMORY[0x2667168A0](v38, v37);

  return v60;
}

uint64_t sub_261A5B574()
{
  v1 = 0x436F5473656D616ELL;
  v2 = 0x746553746E657665;
  if (*v0 != 2)
  {
    v2 = 0x73646F69726570;
  }

  if (*v0)
  {
    v1 = 0x6F666E49756D70;
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

uint64_t sub_261A5B604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A5E574(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A5B62C(uint64_t a1)
{
  v2 = sub_261A5BDFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A5B668(uint64_t a1)
{
  v2 = sub_261A5BDFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CountingMode.Settings.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB8A0, &qword_261A8A978);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v20 = v1[2];
  v21 = v9;
  v12 = v1[5];
  v18 = v1[4];
  v19 = v11;
  v17 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A5BDFC();

  sub_261A85CD4();
  v22 = v10;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB8B0, &qword_261A8A980);
  sub_261A5BFA4(&qword_27FECB8B8);
  sub_261A85B54();

  if (!v2)
  {
    v14 = v17;
    v15 = v18;
    v22 = v21;
    v23 = v20;
    v24 = v19;
    v25 = 1;
    sub_261A5BE50();
    sub_261A85B54();
    v22 = v15;
    v25 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB8C8, &qword_261A8A988);
    sub_261A5C068(&qword_27FECB8D0, sub_261A5BEA4);
    sub_261A85B54();
    v22 = v14;
    v25 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB688, &qword_261A89A18);
    sub_261A55F50(&qword_27FECB690);
    sub_261A85B54();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CountingMode.Settings.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB8E8, &qword_261A8A990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A5BDFC();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB8B0, &qword_261A8A980);
  v24 = 0;
  sub_261A5BFA4(&qword_27FECB8F0);
  sub_261A85A94();
  v11 = v21;
  v24 = 1;
  sub_261A5C014();
  sub_261A85A94();
  v19 = v22;
  v20 = v21;
  v12 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB8C8, &qword_261A8A988);
  v24 = 2;
  sub_261A5C068(&qword_27FECB900, sub_261A5C0E0);
  sub_261A85A94();
  v18 = v12;
  v14 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB688, &qword_261A89A18);
  v24 = 3;
  sub_261A55F50(&qword_27FECB6C0);
  sub_261A85A94();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  v16 = v21;
  *a2 = v11;
  a2[1] = v15;
  v17 = v18;
  a2[2] = v19;
  a2[3] = v17;
  a2[4] = v14;
  a2[5] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_261A5BD84(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_261A85C44();
  sub_261A85554();
  v6 = sub_261A85C84();

  return sub_261A5C420(a1, a2, v6);
}

unint64_t sub_261A5BDFC()
{
  result = qword_27FECB8A8;
  if (!qword_27FECB8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB8A8);
  }

  return result;
}

unint64_t sub_261A5BE50()
{
  result = qword_27FECB8C0;
  if (!qword_27FECB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB8C0);
  }

  return result;
}

uint64_t sub_261A5BED8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB0C8, &qword_261A87940);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261A5BF50()
{
  result = qword_27FECB8E0;
  if (!qword_27FECB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB8E0);
  }

  return result;
}

uint64_t sub_261A5BFA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB8B0, &qword_261A8A980);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261A5C014()
{
  result = qword_27FECB8F8;
  if (!qword_27FECB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB8F8);
  }

  return result;
}

uint64_t sub_261A5C068(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB8C8, &qword_261A8A988);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261A5C114()
{
  result = qword_27FECB910;
  if (!qword_27FECB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB910);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_261A5C17C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_261A5C1C4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_261A5C244()
{
  result = qword_27FECB918;
  if (!qword_27FECB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB918);
  }

  return result;
}

unint64_t sub_261A5C298(uint64_t a1)
{
  *(a1 + 8) = sub_261A5C2C8();
  result = sub_261A5C31C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_261A5C2C8()
{
  result = qword_27FECB920;
  if (!qword_27FECB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB920);
  }

  return result;
}

unint64_t sub_261A5C31C()
{
  result = qword_27FECB928;
  if (!qword_27FECB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB928);
  }

  return result;
}

unint64_t sub_261A5C374()
{
  result = qword_27FECB930;
  if (!qword_27FECB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB930);
  }

  return result;
}

unint64_t sub_261A5C3CC()
{
  result = qword_27FECB938;
  if (!qword_27FECB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB938);
  }

  return result;
}

unint64_t sub_261A5C420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_261A85BA4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_261A5C4D8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_261A76A14(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_261A5C620(v5, &qword_27FECB180, &qword_261A879E8, sub_261A5C8FC, sub_261A5C740);
  *a1 = v2;
  return result;
}

uint64_t sub_261A5C57C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_261A76A28(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_261A5C620(v5, &qword_27FECB0E8, &qword_261A87960, sub_261A5CFC4, sub_261A5C828);
  *a1 = v2;
  return result;
}

uint64_t sub_261A5C620(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_261A85B84();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      if (v10 <= 1)
      {
        v13 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v13 = sub_261A856E4();
        *(v13 + 16) = v10 / 2;
      }

      v15[0] = v13 + 32;
      v15[1] = v10 / 2;
      v14 = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_261A5C740(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + (a3 << 6));
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    v9 = v5;
    while (1)
    {
      v11 = *(v9 - 8);
      v9 -= 4;
      v10 = v11;
      v12 = vcnt_s8(v8[2]);
      v12.i16[0] = vaddlv_u8(v12);
      v13 = v12.u32[0];
      v14 = vcnt_s8(*(v8 - 2));
      v14.i16[0] = vaddlv_u8(v14);
      v15 = v13 >= v14.u32[0];
      if (v13 != v14.u32[0])
      {
        goto LABEL_9;
      }

      if (*v8 == v10)
      {
        break;
      }

      if (*v8 >= v10)
      {
        goto LABEL_4;
      }

LABEL_13:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v16 = v8[1];
      *v20 = v8[2];
      *&v20[12] = *(v8 + 44);
      v17 = *v8;
      v18 = v9[1];
      *v8 = *v9;
      v8[1] = v18;
      v19 = v9[3];
      v8[2] = v9[2];
      v8[3] = v19;
      *(v9 + 44) = *&v20[12];
      v9[1] = v16;
      v9[2] = *v20;
      v8 = v9;
      *v9 = v17;
      v15 = __CFADD__(v7++, 1);
      if (v15)
      {
LABEL_4:
        ++a3;
        v5 += 4;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    v15 = *(v8 + 3) >= *(v8 - 5);
LABEL_9:
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_261A5C828(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3 - 48;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = (v8 + 48);
      v10 = *(v8 + 48);
      v11 = *(v8 + 72);
      v12 = *(v8 + 80);
      v13 = vcnt_s8(v12);
      v13.i16[0] = vaddlv_u8(v13);
      v14 = v13.u32[0];
      v15 = vcnt_s8(*(v8 + 32));
      v15.i16[0] = vaddlv_u8(v15);
      result = v15.u32[0];
      v16 = v14 >= v15.u32[0];
      if (v14 != v15.u32[0])
      {
        goto LABEL_9;
      }

      if (v10 == *v8)
      {
        break;
      }

      if (v10 >= *v8)
      {
        goto LABEL_4;
      }

LABEL_13:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v17 = *(v8 + 56);
      result = *(v8 + 64);
      v18 = *(v8 + 88);
      v19 = *(v8 + 16);
      *v9 = *v8;
      *(v8 + 64) = v19;
      v20 = *(v8 + 32);
      *v8 = v10;
      *(v8 + 8) = v17;
      *(v8 + 16) = result;
      *(v8 + 24) = v11;
      *(v8 + 32) = v12;
      *(v8 + 40) = v18;
      v8 -= 48;
      v9[2] = v20;
      v16 = __CFADD__(v7++, 1);
      if (v16)
      {
LABEL_4:
        ++a3;
        v5 += 48;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    v16 = v11 >= *(v8 + 24);
LABEL_9:
    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_261A5C8FC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v107 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_108:
    v5 = *v107;
    if (!*v107)
    {
      goto LABEL_146;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_140:
      result = sub_261A76620(v11);
      v11 = result;
    }

    v102 = *(v11 + 2);
    if (v102 >= 2)
    {
      while (*a3)
      {
        v103 = *&v11[16 * v102];
        v104 = *&v11[16 * v102 + 24];
        sub_261A5D678((*a3 + (v103 << 6)), (*a3 + (*&v11[16 * v102 + 16] << 6)), (*a3 + (v104 << 6)), v5);
        if (v6)
        {
        }

        if (v104 < v103)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_261A76620(v11);
        }

        if (v102 - 2 >= *(v11 + 2))
        {
          goto LABEL_134;
        }

        v105 = &v11[16 * v102];
        *v105 = v103;
        *(v105 + 1) = v104;
        result = sub_261A76594(v102 - 1);
        v102 = *(v11 + 2);
        if (v102 <= 1)
        {
        }
      }

      goto LABEL_144;
    }
  }

  v9 = a4;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10++;
    if (v10 < v8)
    {
      v13 = (*a3 + (v10 << 6));
      v14 = *v13;
      v15 = v13[3];
      v16 = (*a3 + (v12 << 6));
      v17 = vcnt_s8(v13[4]);
      v17.i16[0] = vaddlv_u8(v17);
      v18 = v17.u32[0];
      v19 = vcnt_s8(v16[4]);
      v19.i16[0] = vaddlv_u8(v19);
      v20 = *&v15 < *&v16[3];
      v21 = *&v14 == *v16;
      v22 = *&v14 < *v16;
      if (v21)
      {
        v22 = v20;
      }

      if (v18 != v19.u32[0])
      {
        v22 = v18 < v19.u32[0];
      }

      if (v8 <= v12 + 2)
      {
        v23 = v12 + 2;
      }

      else
      {
        v23 = v8;
      }

      v24 = v12 << 6;
      v25 = (*a3 + (v12 << 6) + 160);
      while (2 - v23 + v10 != 1)
      {
        v26 = v25[-4];
        v27 = v25[-12];
        v28 = vcnt_s8(*v25);
        v28.i16[0] = vaddlv_u8(v28);
        v29 = v28.u32[0];
        v30 = vcnt_s8(v25[-8]);
        v30.i16[0] = vaddlv_u8(v30);
        result = v30.u32[0];
        v21 = *&v26 == *&v27;
        v31 = *&v26 < *&v27;
        if (v21)
        {
          v31 = *&v25[-1] < *&v25[-9];
        }

        if (v29 != v30.u32[0])
        {
          v31 = v29 < v30.u32[0];
        }

        v25 += 8;
        ++v10;
        if (v22 != v31)
        {
          if (!v22)
          {
            goto LABEL_34;
          }

          goto LABEL_22;
        }
      }

      v10 = v23;
      if (!v22)
      {
        goto LABEL_34;
      }

LABEL_22:
      if (v10 < v12)
      {
        goto LABEL_137;
      }

      if (v12 < v10)
      {
        v32 = (v10 << 6) - 64;
        v33 = v10;
        v34 = v12;
        do
        {
          if (v34 != --v33)
          {
            v38 = *a3;
            if (!*a3)
            {
              goto LABEL_143;
            }

            v39 = (v38 + v24);
            v40 = (v38 + v32);
            v108 = *v39;
            v109 = v39[1];
            *v110 = v39[2];
            *&v110[12] = *(v39 + 44);
            if (v24 != v32 || v39 >= v40 + 4)
            {
              v35 = *v40;
              v36 = v40[1];
              v37 = v40[3];
              v39[2] = v40[2];
              v39[3] = v37;
              *v39 = v35;
              v39[1] = v36;
            }

            *v40 = v108;
            v40[1] = v109;
            v40[2] = *v110;
            *(v40 + 44) = *&v110[12];
          }

          ++v34;
          v32 -= 64;
          v24 += 64;
        }

        while (v34 < v33);
        v8 = a3[1];
      }
    }

LABEL_34:
    if (v10 < v8)
    {
      if (__OFSUB__(v10, v12))
      {
        goto LABEL_136;
      }

      if (v10 - v12 < v9)
      {
        if (__OFADD__(v12, v9))
        {
          goto LABEL_138;
        }

        if (v12 + v9 < v8)
        {
          v8 = v12 + v9;
        }

        if (v8 < v12)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (v10 != v8)
        {
          break;
        }
      }
    }

LABEL_57:
    if (v10 < v12)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_261A65FE8(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v5 = *(v11 + 2);
    v57 = *(v11 + 3);
    v58 = v5 + 1;
    if (v5 >= v57 >> 1)
    {
      result = sub_261A65FE8((v57 > 1), v5 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v58;
    v59 = &v11[16 * v5];
    *(v59 + 4) = v12;
    *(v59 + 5) = v10;
    v60 = *v107;
    if (!*v107)
    {
      goto LABEL_145;
    }

    if (v5)
    {
      while (1)
      {
        v61 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v62 = *(v11 + 4);
          v63 = *(v11 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_77:
          if (v65)
          {
            goto LABEL_124;
          }

          v78 = &v11[16 * v58];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_127;
          }

          v84 = &v11[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_131;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v58 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v88 = &v11[16 * v58];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_91:
        if (v83)
        {
          goto LABEL_126;
        }

        v91 = &v11[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_129;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_98:
        v99 = v61 - 1;
        if (v61 - 1 >= v58)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v100 = *&v11[16 * v99 + 32];
        v5 = *&v11[16 * v61 + 40];
        sub_261A5D678((*a3 + (v100 << 6)), (*a3 + (*&v11[16 * v61 + 32] << 6)), (*a3 + (v5 << 6)), v60);
        if (v6)
        {
        }

        if (v5 < v100)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_261A76620(v11);
        }

        if (v99 >= *(v11 + 2))
        {
          goto LABEL_121;
        }

        v101 = &v11[16 * v99];
        *(v101 + 4) = v100;
        *(v101 + 5) = v5;
        result = sub_261A76594(v61);
        v58 = *(v11 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v11[16 * v58 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_122;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_123;
      }

      v73 = &v11[16 * v58];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_125;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_128;
      }

      if (v77 >= v69)
      {
        v95 = &v11[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_132;
        }

        if (v64 < v98)
        {
          v61 = v58 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

LABEL_3:
    v8 = a3[1];
    v9 = a4;
    if (v10 >= v8)
    {
      goto LABEL_108;
    }
  }

  v41 = *a3;
  v42 = (*a3 + (v10 << 6));
  v43 = v12 - v10;
LABEL_44:
  v44 = v43;
  v45 = v42;
  v46 = v42;
  while (1)
  {
    v48 = *(v46 - 8);
    v46 -= 4;
    v47 = v48;
    v49 = vcnt_s8(v45[2]);
    v49.i16[0] = vaddlv_u8(v49);
    v50 = v49.u32[0];
    v51 = vcnt_s8(*(v45 - 2));
    v51.i16[0] = vaddlv_u8(v51);
    v52 = v50 >= v51.u32[0];
    if (v50 != v51.u32[0])
    {
      goto LABEL_48;
    }

    if (*v45 == v47)
    {
      v52 = *(v45 + 3) >= *(v45 - 5);
LABEL_48:
      if (v52)
      {
        goto LABEL_43;
      }

      goto LABEL_52;
    }

    if (*v45 >= v47)
    {
      goto LABEL_43;
    }

LABEL_52:
    if (!v41)
    {
      break;
    }

    v53 = v45[1];
    *v111 = v45[2];
    *&v111[12] = *(v45 + 44);
    v54 = *v45;
    v55 = v46[1];
    *v45 = *v46;
    v45[1] = v55;
    v56 = v46[3];
    v45[2] = v46[2];
    v45[3] = v56;
    *(v46 + 44) = *&v111[12];
    v46[1] = v53;
    v46[2] = *v111;
    v45 = v46;
    *v46 = v54;
    v52 = __CFADD__(v44++, 1);
    if (v52)
    {
LABEL_43:
      ++v10;
      v42 += 4;
      --v43;
      if (v10 != v8)
      {
        goto LABEL_44;
      }

      v10 = v8;
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_261A5CFC4(uint64_t result, uint64_t a2, uint64_t *a3, int8x8_t *a4)
{
  v5 = v4;
  v112 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_105:
    v7 = *v112;
    if (!*v112)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_261A76620(v9);
      v9 = result;
    }

    v107 = *(v9 + 2);
    if (v107 >= 2)
    {
      while (*a3)
      {
        v108 = *&v9[16 * v107];
        v109 = *&v9[16 * v107 + 24];
        sub_261A5D910((*a3 + 48 * v108), (*a3 + 48 * *&v9[16 * v107 + 16]), (*a3 + 48 * v109), v7);
        if (v5)
        {
        }

        if (v109 < v108)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_261A76620(v9);
        }

        if (v107 - 2 >= *(v9 + 2))
        {
          goto LABEL_131;
        }

        v110 = &v9[16 * v107];
        *v110 = v108;
        *(v110 + 1) = v109;
        result = sub_261A76594(v107 - 1);
        v107 = *(v9 + 2);
        if (v107 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = (*a3 + 48 * v8);
      v12 = *v11;
      v13 = v11[3];
      v14 = (*a3 + 48 * v10);
      v15 = vcnt_s8(v11[4]);
      v15.i16[0] = vaddlv_u8(v15);
      v16 = v15.u32[0];
      v17 = vcnt_s8(v14[4]);
      v17.i16[0] = vaddlv_u8(v17);
      v18 = *&v13 < *&v14[3];
      v19 = *&v12 == *v14;
      v20 = *&v12 < *v14;
      if (v19)
      {
        v20 = v18;
      }

      if (v16 != v17.u32[0])
      {
        v20 = v16 < v17.u32[0];
      }

      if (v6 <= v10 + 2)
      {
        v21 = v10 + 2;
      }

      else
      {
        v21 = v6;
      }

      v22 = v21 - v10 - 2;
      v23 = 48 * v10;
      v24 = (*a3 + 48 * v10 + 72);
      while (v22)
      {
        v25 = v24[3];
        v26 = v24[-3];
        v27 = vcnt_s8(v24[7]);
        v27.i16[0] = vaddlv_u8(v27);
        v28 = v27.u32[0];
        v29 = vcnt_s8(v24[1]);
        v29.i16[0] = vaddlv_u8(v29);
        result = v29.u32[0];
        v19 = *&v25 == *&v26;
        v30 = *&v25 < *&v26;
        if (v19)
        {
          v30 = *&v24[6] < *v24;
        }

        if (v28 != v29.u32[0])
        {
          v30 = v28 < v29.u32[0];
        }

        --v22;
        v24 += 6;
        ++v8;
        if (v20 != v30)
        {
          if (!v20)
          {
            goto LABEL_31;
          }

          goto LABEL_22;
        }
      }

      v8 = v21;
      if (!v20)
      {
        goto LABEL_31;
      }

LABEL_22:
      if (v8 < v10)
      {
        goto LABEL_134;
      }

      if (v10 < v8)
      {
        v31 = 48 * v8 - 48;
        v32 = v8;
        v33 = v10;
        do
        {
          if (v33 != --v32)
          {
            v42 = *a3;
            if (!*a3)
            {
              goto LABEL_140;
            }

            v34 = (v42 + v23);
            v35 = *(v42 + v23 + 16);
            v36 = (v42 + v31);
            v37 = *(v34 + 40);
            v38 = *v34;
            v39 = *(v34 + 24);
            v41 = v36[1];
            v40 = v36[2];
            *v34 = *v36;
            v34[1] = v41;
            v34[2] = v40;
            *v36 = v38;
            *(v36 + 2) = v35;
            *(v36 + 24) = v39;
            *(v36 + 40) = v37;
          }

          ++v33;
          v31 -= 48;
          v23 += 48;
        }

        while (v33 < v32);
        v6 = a3[1];
      }
    }

LABEL_31:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_133;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_135;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v8 < v10)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_261A65FE8(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v62 = *(v9 + 2);
    v61 = *(v9 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      result = sub_261A65FE8((v61 > 1), v62 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v63;
    v64 = &v9[16 * v62];
    *(v64 + 4) = v10;
    *(v64 + 5) = v8;
    v65 = *v112;
    if (!*v112)
    {
      goto LABEL_142;
    }

    if (v62)
    {
      while (1)
      {
        v66 = v63 - 1;
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v67 = *(v9 + 4);
          v68 = *(v9 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_74:
          if (v70)
          {
            goto LABEL_121;
          }

          v83 = &v9[16 * v63];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_124;
          }

          v89 = &v9[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_128;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v63 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v93 = &v9[16 * v63];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_88:
        if (v88)
        {
          goto LABEL_123;
        }

        v96 = &v9[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_126;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_95:
        v7 = v66 - 1;
        if (v66 - 1 >= v63)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v104 = *&v9[16 * v7 + 32];
        v105 = *&v9[16 * v66 + 40];
        sub_261A5D910((*a3 + 48 * v104), (*a3 + 48 * *&v9[16 * v66 + 32]), (*a3 + 48 * v105), v65);
        if (v5)
        {
        }

        if (v105 < v104)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_261A76620(v9);
        }

        if (v7 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v106 = &v9[16 * v7];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        result = sub_261A76594(v66);
        v63 = *(v9 + 2);
        if (v63 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v9[16 * v63 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_119;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_120;
      }

      v78 = &v9[16 * v63];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_122;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_125;
      }

      if (v82 >= v74)
      {
        v100 = &v9[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_129;
        }

        if (v69 < v103)
        {
          v66 = v63 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_105;
    }
  }

  v43 = *a3;
  v44 = *a3 + 48 * v8 - 48;
  v45 = v10 - v8;
LABEL_41:
  v46 = v45;
  v47 = v44;
  while (1)
  {
    v48 = (v47 + 48);
    v49 = *(v47 + 48);
    v50 = *(v47 + 72);
    v51 = *(v47 + 80);
    v52 = vcnt_s8(v51);
    v52.i16[0] = vaddlv_u8(v52);
    v53 = v52.u32[0];
    v54 = vcnt_s8(*(v47 + 32));
    v54.i16[0] = vaddlv_u8(v54);
    result = v54.u32[0];
    v55 = v53 >= v54.u32[0];
    if (v53 != v54.u32[0])
    {
      goto LABEL_45;
    }

    if (v49 == *v47)
    {
      v55 = v50 >= *(v47 + 24);
LABEL_45:
      if (v55)
      {
        goto LABEL_40;
      }

      goto LABEL_49;
    }

    if (v49 >= *v47)
    {
      goto LABEL_40;
    }

LABEL_49:
    if (!v43)
    {
      break;
    }

    v57 = *(v47 + 56);
    v56 = *(v47 + 64);
    v58 = *(v47 + 88);
    v59 = *(v47 + 16);
    *v48 = *v47;
    *(v47 + 64) = v59;
    v60 = *(v47 + 32);
    *v47 = v49;
    *(v47 + 8) = v57;
    *(v47 + 16) = v56;
    *(v47 + 24) = v50;
    *(v47 + 32) = v51;
    *(v47 + 40) = v58;
    v47 -= 48;
    v48[2] = v60;
    v55 = __CFADD__(v46++, 1);
    if (v55)
    {
LABEL_40:
      ++v8;
      v44 += 48;
      --v45;
      if (v8 != v6)
      {
        goto LABEL_41;
      }

      v8 = v6;
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_261A5D678(int8x8_t *__dst, int8x8_t *__src, int8x8_t *a3, int8x8_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v13)
  {
    v14 = v10 << 6;
    if (a4 != __dst || &__dst->i8[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = (v4 + v14);
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_45;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v21 = vcnt_s8(v6[4]);
      v21.i16[0] = vaddlv_u8(v21);
      v22 = v21.u32[0];
      v23 = vcnt_s8(v4[4]);
      v23.i16[0] = vaddlv_u8(v23);
      v24 = v22 >= v23.u32[0];
      if (v22 != v23.u32[0])
      {
        goto LABEL_18;
      }

      if (*v6 == *v4)
      {
        break;
      }

      if (*v6 < *v4)
      {
LABEL_21:
        v16 = v6;
        v17 = v7 == v6;
        v6 += 8;
        if (v17)
        {
          goto LABEL_13;
        }

LABEL_12:
        v18 = *v16->i8;
        v19 = *v16[2].i8;
        v20 = *v16[6].i8;
        *v7[4].i8 = *v16[4].i8;
        *v7[6].i8 = v20;
        *v7->i8 = v18;
        *v7[2].i8 = v19;
        goto LABEL_13;
      }

LABEL_11:
      v16 = v4;
      v17 = v7 == v4;
      v4 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v24 = *&v6[3] >= *&v4[3];
LABEL_18:
    if (!v24)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  v25 = v13 << 6;
  if (a4 != __src || &__src->i8[v25] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v15 = (v4 + v25);
  if (v11 >= 64 && v6 > v7)
  {
LABEL_29:
    v26 = v6 - 8;
    v5 -= 8;
    v27 = v15;
    while (1)
    {
      v29 = *(v27 - 64);
      v27 -= 64;
      v28 = v29;
      v30 = vcnt_s8(*(v27 + 32));
      v30.i16[0] = vaddlv_u8(v30);
      v31 = v30.u32[0];
      v32 = vcnt_s8(v6[-4]);
      v32.i16[0] = vaddlv_u8(v32);
      v33 = v31 >= v32.u32[0];
      if (v31 == v32.u32[0])
      {
        v34 = v6[-8];
        if (v28 != *&v34)
        {
          if (v28 < *&v34)
          {
LABEL_39:
            if (&v5[8] != v6)
            {
              v38 = *v26->i8;
              v39 = *v6[-6].i8;
              v40 = *v6[-2].i8;
              *v5[4].i8 = *v6[-4].i8;
              *v5[6].i8 = v40;
              *v5->i8 = v38;
              *v5[2].i8 = v39;
            }

            if (v15 <= v4 || (v6 -= 8, v26 <= v7))
            {
              v6 = v26;
              break;
            }

            goto LABEL_29;
          }

          goto LABEL_37;
        }

        v33 = *(v27 + 24) >= *&v6[-5];
      }

      if (!v33)
      {
        goto LABEL_39;
      }

LABEL_37:
      if (&v5[8] != v15)
      {
        v35 = *v27;
        v36 = *(v27 + 16);
        v37 = *(v27 + 48);
        *v5[4].i8 = *(v27 + 32);
        *v5[6].i8 = v37;
        *v5->i8 = v35;
        *v5[2].i8 = v36;
      }

      v5 -= 8;
      v15 = v27;
      if (v27 <= v4)
      {
        v15 = v27;
        break;
      }
    }
  }

LABEL_45:
  v41 = (v15 - v4 + (v15 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0;
  if (v6 != v4 || v6 >= &v4->i8[v41])
  {
    memmove(v6, v4, v41);
  }

  return 1;
}

uint64_t sub_261A5D910(int8x8_t *__dst, int8x8_t *__src, int8x8_t *a3, int8x8_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    v12 = 6 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v18 = vcnt_s8(v6[4]);
      v18.i16[0] = vaddlv_u8(v18);
      v19 = v18.u32[0];
      v20 = vcnt_s8(v4[4]);
      v20.i16[0] = vaddlv_u8(v20);
      v21 = v19 >= v20.u32[0];
      if (v19 != v20.u32[0])
      {
        goto LABEL_14;
      }

      if (*v6 == *v4)
      {
        break;
      }

      if (*v6 < *v4)
      {
LABEL_17:
        v14 = v6;
        v15 = v7 == v6;
        v6 += 6;
        if (v15)
        {
          goto LABEL_9;
        }

LABEL_8:
        v16 = *v14->i8;
        v17 = *v14[4].i8;
        *v7[2].i8 = *v14[2].i8;
        *v7[4].i8 = v17;
        *v7->i8 = v16;
        goto LABEL_9;
      }

LABEL_7:
      v14 = v4;
      v15 = v7 == v4;
      v4 += 6;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 6;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v21 = *&v6[3] >= *&v4[3];
LABEL_14:
    if (!v21)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  v22 = 6 * v11;
  if (a4 != __src || &__src[v22] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v13 = &v4[v22];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_25:
    v23 = v6 - 6;
    v5 -= 6;
    v24 = v13;
    while (1)
    {
      v26 = *(v24 - 48);
      v24 -= 48;
      v25 = v26;
      v27 = vcnt_s8(*(v24 + 32));
      v27.i16[0] = vaddlv_u8(v27);
      v28 = v27.u32[0];
      v29 = vcnt_s8(v6[-2]);
      v29.i16[0] = vaddlv_u8(v29);
      v30 = v28 >= v29.u32[0];
      if (v28 == v29.u32[0])
      {
        v31 = v6[-6];
        if (v25 != *&v31)
        {
          if (v25 < *&v31)
          {
LABEL_35:
            if (&v5[6] != v6)
            {
              v34 = *v23->i8;
              v35 = *v6[-2].i8;
              *v5[2].i8 = *v6[-4].i8;
              *v5[4].i8 = v35;
              *v5->i8 = v34;
            }

            if (v13 <= v4 || (v6 -= 6, v23 <= v7))
            {
              v6 = v23;
              break;
            }

            goto LABEL_25;
          }

          goto LABEL_33;
        }

        v30 = *(v24 + 24) >= *&v6[-3];
      }

      if (!v30)
      {
        goto LABEL_35;
      }

LABEL_33:
      if (&v5[6] != v13)
      {
        v32 = *v24;
        v33 = *(v24 + 32);
        *v5[2].i8 = *(v24 + 16);
        *v5[4].i8 = v33;
        *v5->i8 = v32;
      }

      v5 -= 6;
      v13 = v24;
      if (v24 <= v4)
      {
        v13 = v24;
        break;
      }
    }
  }

LABEL_41:
  v36 = 6 * ((v13 - v4) / 48);
  if (v6 != v4 || v6 >= &v4[v36])
  {
    memmove(v6, v4, v36 * 8);
  }

  return 1;
}

uint64_t sub_261A5DBC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v34 = MEMORY[0x277D84F90];
  sub_261A3F120(0, v3, 0);
  v7 = 0;
  v4 = v34;
  v28 = a2 - 65;
  v29 = a1 + 32;
  v26 = a2;
  v27 = v3;
  v24 = -a2;
  while (1)
  {
    v8 = (v29 + 56 * v7);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    v12 = v8[3];
    result = *(v8 + 32);
    v14 = v8[5];
    v15 = *(v8 + 12);
    if (v28 <= 0xFFFFFFFFFFFFFF7ELL)
    {
      goto LABEL_14;
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v26 < 0x40)
    {
      v16 = v12 >> v26;
      if (v12 >> v26)
      {
        goto LABEL_7;
      }
    }

LABEL_14:
    v17 = 0;
LABEL_15:
    v30 = result;
    v32 = v15;
    v31 = v14;
    v22 = *(v34 + 16);
    v21 = *(v34 + 24);

    if (v22 >= v21 >> 1)
    {
      sub_261A3F120((v21 > 1), v22 + 1, 1);
    }

    ++v7;
    *(v34 + 16) = v22 + 1;
    v23 = v34 + (v22 << 6);
    *(v23 + 32) = v17;
    *(v23 + 40) = v9;
    *(v23 + 48) = v10;
    *(v23 + 56) = v11;
    *(v23 + 64) = v12;
    *(v23 + 72) = v30;
    *(v23 + 73) = *v33;
    *(v23 + 76) = *&v33[3];
    *(v23 + 80) = v31;
    *(v23 + 88) = v32;
    if (v7 == v27)
    {
      return v4;
    }
  }

  if (v26 <= 0xFFFFFFFFFFFFFFC0)
  {
    goto LABEL_14;
  }

  v16 = v12 << v24;
  if (!(v12 << v24))
  {
    goto LABEL_14;
  }

LABEL_7:
  v17 = 0;
  while (1)
  {
    v18 = __clz(__rbit64(v16));
    if (v18 >= *(*a3 + 16))
    {
      break;
    }

    v19 = *(*a3 + 32 + 8 * v18);
    v20 = __OFADD__(v17, v19);
    v17 += v19;
    if (v20)
    {
      goto LABEL_20;
    }

    v16 &= (-1 << v18) - 1;
    if (!v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_261A5DDB0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v30 = MEMORY[0x277D84F90];
  result = sub_261A3F290(0, v3, 0);
  v8 = 0;
  v4 = v30;
  v27 = a2 - 65;
  v28 = a1 + 32;
  v25 = a2;
  v26 = v3;
  v23 = -a2;
  while (1)
  {
    v9 = (v28 + 40 * v8);
    v11 = *v9;
    v10 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    v14 = *(v9 + 32);
    if (v27 <= 0xFFFFFFFFFFFFFF7ELL)
    {
      goto LABEL_14;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v25 < 0x40)
    {
      v15 = v13 >> v25;
      if (v13 >> v25)
      {
        goto LABEL_7;
      }
    }

LABEL_14:
    v16 = 0;
LABEL_15:
    v29 = v14;
    v21 = *(v30 + 16);
    v20 = *(v30 + 24);

    if (v21 >= v20 >> 1)
    {
      result = sub_261A3F290((v20 > 1), v21 + 1, 1);
    }

    ++v8;
    *(v30 + 16) = v21 + 1;
    v22 = v30 + 48 * v21;
    *(v22 + 32) = v16;
    *(v22 + 40) = v11;
    *(v22 + 48) = v10;
    *(v22 + 56) = v12;
    *(v22 + 64) = v13;
    *(v22 + 72) = v29;
    if (v8 == v26)
    {
      return v4;
    }
  }

  if (v25 <= 0xFFFFFFFFFFFFFFC0)
  {
    goto LABEL_14;
  }

  v15 = v13 << v23;
  if (!(v13 << v23))
  {
    goto LABEL_14;
  }

LABEL_7:
  v16 = 0;
  while (1)
  {
    v17 = __clz(__rbit64(v15));
    if (v17 >= *(*a3 + 16))
    {
      break;
    }

    v18 = *(*a3 + 32 + 8 * v17);
    v19 = __OFADD__(v16, v18);
    v16 += v18;
    if (v19)
    {
      goto LABEL_20;
    }

    v15 &= (-1 << v17) - 1;
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_261A5DF74(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_261A5BD84(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_261A75500(v15, v5 & 1);
    v17 = *a3;
    result = sub_261A5BD84(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_261A85BE4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    v22 = (v19[6] + 16 * result);
    *v22 = v8;
    v22[1] = v7;
    *(v19[7] + 8 * result) = v9;
    v23 = v19[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v24;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_261A74DC0();
  result = v21;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = result;

  *(v19[7] + 8 * v20) = v9;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v26 = *a3;

      result = sub_261A5BD84(v7, v6);
      v28 = v26[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v27;
      if (v26[3] < v30)
      {
        sub_261A75500(v30, 1);
        v31 = *a3;
        result = sub_261A5BD84(v7, v6);
        if ((v8 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v8)
      {
        v25 = result;

        *(v33[7] + 8 * v25) = v9;
      }

      else
      {
        v33[(result >> 6) + 8] |= 1 << result;
        v34 = (v33[6] + 16 * result);
        *v34 = v7;
        v34[1] = v6;
        *(v33[7] + 8 * result) = v9;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v33[2] = v36;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_261A5E1CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E756F63 && a2 == 0xE700000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEA00000000006C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_261A85BA4();

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

uint64_t sub_261A5E338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB950, &qword_261A8AC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A5E6E8();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v11 = sub_261A85A54();
  v13 = v12;
  v14 = v11;
  v22 = 1;
  v19 = sub_261A85A84();
  v21 = 2;
  v18 = sub_261A85AB4();
  v20 = 3;
  v15 = sub_261A85A64();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  v17 = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = v17;
  *(a2 + 32) = v15 & 1;
  return result;
}

uint64_t sub_261A5E574(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x436F5473656D616ELL && a2 == 0xEF737265746E756FLL;
  if (v4 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F666E49756D70 && a2 == 0xE700000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746553746E657665 && a2 == 0xED000073676E6974 || (sub_261A85BA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73646F69726570 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_261A85BA4();

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

unint64_t sub_261A5E6E8()
{
  result = qword_27FECB948;
  if (!qword_27FECB948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB948);
  }

  return result;
}

unint64_t sub_261A5E73C()
{
  result = qword_27FECB958;
  if (!qword_27FECB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB958);
  }

  return result;
}

unint64_t sub_261A5E790()
{
  result = qword_27FECB970;
  if (!qword_27FECB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB970);
  }

  return result;
}

uint64_t sub_261A5E7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB180, &qword_261A879E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261A5E854(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_261A5E8D8()
{
  result = qword_27FECB990;
  if (!qword_27FECB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB990);
  }

  return result;
}

unint64_t sub_261A5E934()
{
  result = qword_27FECB998;
  if (!qword_27FECB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB998);
  }

  return result;
}

unint64_t sub_261A5E98C()
{
  result = qword_27FECB9A0;
  if (!qword_27FECB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB9A0);
  }

  return result;
}

uint64_t sub_261A5E9E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_261A5EA28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A5EA78(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB018, &unk_261A87D10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB020, &qword_261A87880);
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v43 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB028, &unk_261A87D20);
  v47 = *(v14 - 8);
  v15 = *(v47 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v44 = &v39 - v17;
  v18 = *(a3 + 16);
  v19 = MEMORY[0x277D84F90];
  v49 = a1;
  v50 = a2;
  v48 = v16;
  if (v18)
  {
    v40 = v10;
    v41 = v7;
    v42 = v6;
    v54 = MEMORY[0x277D84F90];
    sub_261A3EFB0(0, v18, 0);
    v19 = v54;
    v20 = (a3 + 48);
    do
    {
      v21 = *(v20 - 2);
      v22 = *v20;
      v52 = *(v20 - 1);
      v53 = v22;
      swift_bridgeObjectRetain_n();
      MEMORY[0x2667168A0](544108320, 0xE400000000000000);
      v51 = v21;
      v23 = sub_261A85B94();
      MEMORY[0x2667168A0](v23);

      v24 = v52;
      v25 = v53;
      v54 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_261A3EFB0((v26 > 1), v27 + 1, 1);
        v19 = v54;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
      v20 += 3;
      --v18;
    }

    while (v18);
    v7 = v41;
    v6 = v42;
    v10 = v40;
  }

  v54 = v19;
  v29 = v45;
  v30 = v46;
  v31 = v43;
  (*(v45 + 104))(v43, *MEMORY[0x277CC8AF0], v46);
  (*(v7 + 104))(v10, *MEMORY[0x277CC8B00], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
  sub_261A3BF78(&qword_27FECB038, &qword_27FECAF58, &qword_261A87428);
  v32 = v6;
  v33 = v44;
  sub_261A85154();
  (*(v7 + 8))(v10, v32);
  (*(v29 + 8))(v31, v30);
  sub_261A3BF78(&qword_27FECB040, &qword_27FECB028, &unk_261A87D20);
  v34 = v48;
  sub_261A85674();
  (*(v47 + 8))(v33, v34);

  v35 = v52;
  v36 = v53;
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_261A858C4();
  v37 = v50;

  v52 = v49;
  v53 = v37;
  MEMORY[0x2667168A0](0xD000000000000010, 0x8000000261A8E6A0);
  MEMORY[0x2667168A0](v35, v36);

  return v52;
}

uint64_t sub_261A5EF3C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v11 = *a1;
  v12 = *(a1 + 1);
  sub_261A5E790();
  v4 = sub_261A85BF4();
  v6 = v5;
  v10 = *(a2 + 1);
  if (v4 == sub_261A85BF4() && v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_261A85BA4();
  }

  return v8 & 1;
}

unint64_t sub_261A5F020()
{
  v1 = *v0;
  v2 = 0x6E6F63696C6973;
  v3 = 0x746E6174736E6F63;
  if (v1 != 5)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0x6973736572707865;
  if (v1 != 3)
  {
    v4 = 0x73646F69726570;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x73746E657665;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_261A5F110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A602DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A5F138(uint64_t a1)
{
  v2 = sub_261A5FE04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A5F174(uint64_t a1)
{
  v2 = sub_261A5FE04();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_261A5F1B0()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[11];

  v4 = v0[12];

  v5 = v0[13];

  v6 = v0[14];

  v7 = v0[15];

  v8 = v0[16];

  v9 = v0[17];

  return v0;
}

uint64_t sub_261A5F228()
{
  sub_261A5F1B0();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_261A5F280(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB9A8, &qword_261A8AFD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A5FE04();
  sub_261A85CD4();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v31 = *(v2 + 32);
  v32 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v33 = *(v2 + 64);
  v34 = v13;
  v14 = *(v2 + 16);
  v27 = v12;
  v28 = v33;
  v29 = *(v2 + 80);
  v30 = v14;
  v25 = v11;
  v26 = v31;
  v24 = 0;
  sub_261A39B98(&v30, &v19);
  sub_261A5FE58();
  v15 = v35;
  sub_261A85B54();
  if (v15)
  {
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v19 = v25;
    v20 = v26;
    sub_261A39BF4(&v19);
  }

  else
  {
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v19 = v25;
    v20 = v26;
    sub_261A39BF4(&v19);
    v18 = *(v2 + 96);
    HIBYTE(v17) = 1;
    type metadata accessor for EventDictionary();
    sub_261A60004(&qword_27FECB9C0);
    sub_261A85B54();
    v18 = *(v2 + 104);
    HIBYTE(v17) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB9C8, &qword_261A8AFE0);
    sub_261A60048(&qword_27FECB9D0, sub_261A5FEAC);
    sub_261A85B54();
    v18 = *(v2 + 112);
    HIBYTE(v17) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB430, &qword_261A88FD0);
    sub_261A57AF4(&qword_27FECB680);
    sub_261A85B54();
    v18 = *(v2 + 120);
    HIBYTE(v17) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB688, &qword_261A89A18);
    sub_261A55F50(&qword_27FECB690);
    sub_261A85B54();
    v18 = *(v2 + 128);
    HIBYTE(v17) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB9E0, &unk_261A8BFF0);
    sub_261A5FF00();
    sub_261A85B54();
    v18 = *(v2 + 136);
    HIBYTE(v17) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
    sub_261A55E3C(&qword_27FECB658);
    sub_261A85B54();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t *sub_261A5F708(uint64_t *a1)
{
  v4 = *v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB9F0, &qword_261A8AFE8);
  v5 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v7 = v13 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A5FE04();
  v15 = v7;
  sub_261A85CB4();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13[1] = v4;
    v23 = 0;
    sub_261A5FFB0();
    v9 = v14;
    sub_261A85A94();
    v10 = v20;
    *(v1 + 3) = v19;
    *(v1 + 4) = v10;
    *(v1 + 5) = v21;
    v11 = v18;
    *(v1 + 1) = v17;
    *(v1 + 2) = v11;
    type metadata accessor for EventDictionary();
    v22 = 1;
    sub_261A60004(&qword_27FECBA00);
    sub_261A85A94();
    v1[12] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB9C8, &qword_261A8AFE0);
    v22 = 2;
    sub_261A60048(&qword_27FECBA08, sub_261A600C0);
    sub_261A85A94();
    v1[13] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB430, &qword_261A88FD0);
    v22 = 3;
    sub_261A57AF4(&qword_27FECB438);
    sub_261A85A94();
    v1[14] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB688, &qword_261A89A18);
    v22 = 4;
    sub_261A55F50(&qword_27FECB6C0);
    sub_261A85A94();
    v1[15] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB9E0, &unk_261A8BFF0);
    v22 = 5;
    sub_261A60114();
    sub_261A85A94();
    v1[16] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
    v22 = 6;
    sub_261A55E3C(&qword_27FECB6B8);
    sub_261A85A94();
    MEMORY[8](v15, v9);
    v1[17] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t *sub_261A5FD88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_261A5F708(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_261A5FE04()
{
  result = qword_27FECB9B0;
  if (!qword_27FECB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB9B0);
  }

  return result;
}

unint64_t sub_261A5FE58()
{
  result = qword_27FECB9B8;
  if (!qword_27FECB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB9B8);
  }

  return result;
}

unint64_t sub_261A5FEAC()
{
  result = qword_27FECB9D8;
  if (!qword_27FECB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB9D8);
  }

  return result;
}

unint64_t sub_261A5FF00()
{
  result = qword_27FECB9E8;
  if (!qword_27FECB9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB9E0, &unk_261A8BFF0);
    sub_261A57F1C(&qword_27FECB650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB9E8);
  }

  return result;
}

unint64_t sub_261A5FFB0()
{
  result = qword_27FECB9F8;
  if (!qword_27FECB9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB9F8);
  }

  return result;
}

uint64_t sub_261A60004(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EventDictionary();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261A60048(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB9C8, &qword_261A8AFE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261A600C0()
{
  result = qword_27FECBA10;
  if (!qword_27FECBA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBA10);
  }

  return result;
}

unint64_t sub_261A60114()
{
  result = qword_27FECBA18;
  if (!qword_27FECBA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB9E0, &unk_261A8BFF0);
    sub_261A57F1C(&qword_27FECB740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBA18);
  }

  return result;
}

unint64_t sub_261A601D8()
{
  result = qword_27FECBA20;
  if (!qword_27FECBA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBA20);
  }

  return result;
}

unint64_t sub_261A60230()
{
  result = qword_27FECBA28;
  if (!qword_27FECBA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBA28);
  }

  return result;
}

unint64_t sub_261A60288()
{
  result = qword_27FECBA30;
  if (!qword_27FECBA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBA30);
  }

  return result;
}

uint64_t sub_261A602DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F63696C6973 && a2 == 0xE700000000000000;
  if (v4 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000261A8E6E0 == a2 || (sub_261A85BA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEB00000000736E6FLL || (sub_261A85BA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73646F69726570 && a2 == 0xE700000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E6174736E6F63 && a2 == 0xE900000000000073 || (sub_261A85BA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000261A8E700 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_261A85BA4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_261A6054C()
{
  v1 = 0x6E65696369666665;
  if (*v0 != 1)
  {
    v1 = 0x616D726F66726570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_261A605B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A6170C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A605DC(uint64_t a1)
{
  v2 = sub_261A60B64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A60618(uint64_t a1)
{
  v2 = sub_261A60B64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A60660@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_261A60690(uint64_t a1)
{
  v2 = sub_261A60C0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A606CC(uint64_t a1)
{
  v2 = sub_261A60C0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A60708(uint64_t a1)
{
  v2 = sub_261A60BB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A60744(uint64_t a1)
{
  v2 = sub_261A60BB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A60780(uint64_t a1)
{
  v2 = sub_261A60C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A607BC(uint64_t a1)
{
  v2 = sub_261A60C60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPUKind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBA38, &qword_261A8B110);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBA40, &qword_261A8B118);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBA48, &qword_261A8B120);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBA50, &qword_261A8B128);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A60B64();
  sub_261A85CD4();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_261A60C0C();
      v12 = v26;
      sub_261A85AD4();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_261A60BB8();
      v12 = v29;
      sub_261A85AD4();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_261A60C60();
    sub_261A85AD4();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_261A60B64()
{
  result = qword_27FECBA58;
  if (!qword_27FECBA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBA58);
  }

  return result;
}

unint64_t sub_261A60BB8()
{
  result = qword_27FECBA60;
  if (!qword_27FECBA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBA60);
  }

  return result;
}

unint64_t sub_261A60C0C()
{
  result = qword_27FECBA68;
  if (!qword_27FECBA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBA68);
  }

  return result;
}

unint64_t sub_261A60C60()
{
  result = qword_27FECBA70;
  if (!qword_27FECBA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBA70);
  }

  return result;
}

uint64_t CPUKind.hashValue.getter()
{
  v1 = *v0;
  sub_261A85C44();
  MEMORY[0x266716F60](v1);
  return sub_261A85C84();
}

uint64_t CPUKind.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBA78, &qword_261A8B130);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBA80, &qword_261A8B138);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBA88, &qword_261A8B140);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBA90, &unk_261A8B148);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A60B64();
  v18 = v49;
  sub_261A85CB4();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_261A85AC4();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_261A60C0C();
          v33 = v40;
          sub_261A859F4();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_261A60BB8();
          v37 = v40;
          sub_261A859F4();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_261A60C60();
        v35 = v40;
        sub_261A859F4();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  v26 = sub_261A85904();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB6F8, &qword_261A89A40) + 48);
  *v28 = &type metadata for CPUKind;
  sub_261A85A04();
  sub_261A858F4();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}