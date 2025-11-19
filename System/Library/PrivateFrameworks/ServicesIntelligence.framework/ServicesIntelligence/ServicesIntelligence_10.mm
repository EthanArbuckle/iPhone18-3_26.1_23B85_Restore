unint64_t sub_230DC6FAC()
{
  result = qword_27DB5C718;
  if (!qword_27DB5C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C718);
  }

  return result;
}

unint64_t sub_230DC7000()
{
  result = qword_27DB5C720;
  if (!qword_27DB5C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C720);
  }

  return result;
}

unint64_t sub_230DC7054()
{
  result = qword_27DB5C728;
  if (!qword_27DB5C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C728);
  }

  return result;
}

uint64_t UseCaseRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C730, &qword_230E77488);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v29 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC6FAC();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v47) = 0;
    v12 = sub_230E69720();
    v39 = v13;
    LOBYTE(v40) = 1;
    sub_230DC7588();
    sub_230E69760();
    v14 = v48;
    v38 = v47;
    v37 = v49;
    v36 = v50;
    v35 = v51;

    LOBYTE(v40) = 2;
    sub_230DC75DC();
    sub_230E69700();
    v34 = a2;
    v15 = v47;

    LOBYTE(v47) = 3;
    v33 = sub_230E696E0();
    v32 = v12;
    v60 = v16 & 1;
    LOBYTE(v47) = 4;
    v17 = sub_230E696B0();
    v19 = v18;
    v31 = v17;
    v61 = 5;
    v20 = sub_230E69730();
    (*(v6 + 8))(v10, v5);
    v21 = v32;
    *&v40 = v32;
    v22 = v39;
    *(&v40 + 1) = v39;
    *&v41 = v38;
    *(&v41 + 1) = v14;
    *&v42 = v37;
    *(&v42 + 1) = v36;
    LOBYTE(v43) = v35;
    *(&v43 + 1) = v15;
    *&v44 = v33;
    v30 = v60;
    BYTE8(v44) = v60;
    v23 = v31;
    *&v45 = v31;
    *(&v45 + 1) = v19;
    v20 &= 1u;
    v46 = v20;
    v24 = v34;
    *(v34 + 96) = v20;
    v25 = v41;
    *v24 = v40;
    v24[1] = v25;
    v26 = v43;
    v24[2] = v42;
    v24[3] = v26;
    v27 = v45;
    v24[4] = v44;
    v24[5] = v27;
    sub_230DC7630(&v40, &v47);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v47 = v21;
    v48 = v22;
    v49 = v38;
    v50 = v14;
    v51 = v37;
    v52 = v36;
    v53 = v35;
    v54 = v15;
    v55 = v33;
    v56 = v30;
    v57 = v23;
    v58 = v19;
    v59 = v20;
    return sub_230D8151C(&v47);
  }
}

unint64_t sub_230DC7588()
{
  result = qword_27DB5C738;
  if (!qword_27DB5C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C738);
  }

  return result;
}

unint64_t sub_230DC75DC()
{
  result = qword_27DB5C740;
  if (!qword_27DB5C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C740);
  }

  return result;
}

uint64_t EnhancedUseCaseRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_230DC7630(v10, v9);
}

__n128 EnhancedUseCaseRequest.request.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v3;
  v10 = *(v1 + 96);
  v4 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v4;
  v5 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v5;
  sub_230D8151C(v9);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

uint64_t EnhancedUseCaseRequest.requestContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 129);
  v6 = *(v1 + 136);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 32) = v6;
}

uint64_t EnhancedUseCaseRequest.requestContext.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = a1[24];
  v6 = a1[25];
  v7 = *(a1 + 4);
  v8 = *(v1 + 120);
  v9 = *(v1 + 136);

  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  *(v1 + 120) = v4;
  *(v1 + 128) = v5;
  *(v1 + 129) = v6;
  *(v1 + 136) = v7;
  return result;
}

__n128 EnhancedUseCaseRequest.init(request:requestContext:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = a2[24];
  v7 = a2[25];
  v8 = *(a2 + 4);
  v9 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v9;
  *(a3 + 96) = *(a1 + 96);
  v10 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v10;
  result = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = result;
  *(a3 + 104) = v3;
  *(a3 + 112) = v4;
  *(a3 + 120) = v5;
  *(a3 + 128) = v6;
  *(a3 + 129) = v7;
  *(a3 + 136) = v8;
  return result;
}

uint64_t sub_230DC78BC(uint64_t a1)
{
  v2 = sub_230DC7BD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC78F8(uint64_t a1)
{
  v2 = sub_230DC7BD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnhancedUseCaseRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C748, &qword_230E77490);
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - v7;
  v9 = v1[5];
  v45 = v1[4];
  v46 = v9;
  v47 = *(v1 + 96);
  v10 = v1[1];
  v41 = *v1;
  v42 = v10;
  v11 = v1[3];
  v43 = v1[2];
  v44 = v11;
  v21 = *(v1 + 104);
  v12 = *(v1 + 15);
  v20 = *(v1 + 14);
  v13 = *(v1 + 128);
  v18 = *(v1 + 129);
  v19 = v13;
  v14 = *(v1 + 17);
  v22 = v12;
  v23 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC7630(&v41, &v34);
  sub_230DC7BD8();
  sub_230E69A50();
  v38 = v45;
  v39 = v46;
  v40 = v47;
  v34 = v41;
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v33 = 0;
  sub_230DC7C2C();
  sub_230E69850();
  v31[4] = v38;
  v31[5] = v39;
  v32 = v40;
  v31[0] = v34;
  v31[1] = v35;
  v31[2] = v36;
  v31[3] = v37;
  sub_230D8151C(v31);
  if (!v2)
  {
    v25 = v21;
    v26 = v20;
    v27 = v22;
    v28 = v19;
    v29 = v18;
    v30 = v23;
    v24 = 1;
    sub_230D5B948();

    sub_230E69850();
  }

  return (*(v48 + 8))(v8, v4);
}

unint64_t sub_230DC7BD8()
{
  result = qword_27DB5C750;
  if (!qword_27DB5C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C750);
  }

  return result;
}

unint64_t sub_230DC7C2C()
{
  result = qword_27DB5C758;
  if (!qword_27DB5C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C758);
  }

  return result;
}

uint64_t EnhancedUseCaseRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v61 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C760, &unk_230E77498);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC7BD8();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v5;
  v12 = v61;
  v46 = 0;
  sub_230DC7F8C();
  sub_230E69760();
  v58 = v51;
  v59 = v52;
  LOBYTE(v60) = v53;
  v54 = v47;
  v55 = v48;
  v56 = v49;
  v57 = v50;
  v41 = 1;
  sub_230D5B9F0();
  sub_230E69760();
  (*(v11 + 8))(v9, v4);
  v13 = v42;
  v14 = *(&v43 + 1);
  v23 = v43;
  v15 = v44;
  LOBYTE(v11) = HIBYTE(v44);
  v16 = v45;
  v28 = v58;
  v29 = v59;
  *&v30 = v60;
  v24 = v54;
  v25 = v55;
  v26 = v56;
  v27 = v57;
  BYTE8(v30) = v42;
  v31 = v43;
  LOWORD(v32) = v44;
  *(&v32 + 1) = v45;
  v17 = v57;
  v12[2] = v56;
  v12[3] = v17;
  v18 = v29;
  v12[4] = v28;
  v12[5] = v18;
  v19 = v25;
  *v12 = v24;
  v12[1] = v19;
  v20 = v32;
  v12[7] = v31;
  v12[8] = v20;
  v12[6] = v30;
  sub_230DC7FE0(&v24, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[4] = v58;
  v33[5] = v59;
  v34 = v60;
  v33[0] = v54;
  v33[1] = v55;
  v33[2] = v56;
  v33[3] = v57;
  v35 = v13;
  v36 = v23;
  v37 = v14;
  v38 = v15;
  v39 = v11;
  v40 = v16;
  return sub_230DC8018(v33);
}

unint64_t sub_230DC7F8C()
{
  result = qword_27DB5C768;
  if (!qword_27DB5C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C768);
  }

  return result;
}

uint64_t UseCaseInputPayload.features.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

ServicesIntelligence::UseCaseInputPayload __swiftcall UseCaseInputPayload.init(features:)(Swift::OpaquePointer features)
{
  v3 = v1;
  sub_230D0DE98(MEMORY[0x277D84F90]);

  v3->_rawValue = features._rawValue;
  return result;
}

uint64_t UseCaseInputPayload.ValidationError.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  if ((v0[6] & 1) == 0)
  {
    v8 = v0[5];
    sub_230E69540();

    MEMORY[0x23191DA00](v2, v1);
    MEMORY[0x23191DA00](0x746365707845202ELL, 0xEB00000000206465);
    MEMORY[0x23191DA00](v5, v8);
LABEL_8:
    v7 = 1869029420;
    goto LABEL_9;
  }

  v6 = v5[2];
  if (v6 != 1)
  {
    if (v6)
    {
      sub_230E69540();

      MEMORY[0x23191DA00](v2, v1);
      MEMORY[0x23191DA00](0xD000000000000013, 0x8000000230E82170);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
      sub_230D443B8();
      v14 = sub_230E68FF0();
      MEMORY[0x23191DA00](v14);

      v12 = 0x20746F67202C29;
      v13 = 0xE700000000000000;
      goto LABEL_10;
    }

    sub_230E69540();

    MEMORY[0x23191DA00](v2, v1);
    v7 = 1866932270;
LABEL_9:
    v12 = v7 & 0xFFFF0000FFFFFFFFLL | 0x207400000000;
    v13 = 0xE600000000000000;
LABEL_10:
    MEMORY[0x23191DA00](v12, v13);
    MEMORY[0x23191DA00](v4, v3);
    return 0x7463657078656E55;
  }

  sub_230E69540();

  MEMORY[0x23191DA00](v2, v1);
  result = MEMORY[0x23191DA00](0x746365707845202ELL, 0xEB00000000206465);
  if (v5[2])
  {
    v11 = v5[4];
    v10 = v5[5];

    MEMORY[0x23191DA00](v11, v10);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_230DC838C(uint64_t a1)
{
  v2 = sub_230DC87A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC83C8(uint64_t a1)
{
  v2 = sub_230DC87A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UseCaseInputPayload.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C770, &qword_230E774A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC87A8();

  sub_230E69A50();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B6B8, &unk_230E774B0);
  sub_230D57FF8(&qword_27DB5B6C0, sub_230D57AF4);
  sub_230E69850();

  return (*(v4 + 8))(v8, v3);
}

uint64_t UseCaseInputPayload.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C780, &qword_230E774C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  sub_230D0DE98(MEMORY[0x277D84F90]);

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC87A8();
  sub_230E69A30();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B6B8, &unk_230E774B0);
    sub_230D57FF8(&qword_27DB5B708, sub_230D5807C);
    sub_230E69760();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230DC87A8()
{
  result = qword_27DB5C778;
  if (!qword_27DB5C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C778);
  }

  return result;
}

uint64_t sub_230DC87FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_230DC8844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_230DC88DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_230DC8924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230DC89F8()
{
  result = qword_27DB5C788;
  if (!qword_27DB5C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C788);
  }

  return result;
}

unint64_t sub_230DC8A50()
{
  result = qword_27DB5C790;
  if (!qword_27DB5C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C790);
  }

  return result;
}

unint64_t sub_230DC8AA8()
{
  result = qword_27DB5C798;
  if (!qword_27DB5C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C798);
  }

  return result;
}

unint64_t sub_230DC8B00()
{
  result = qword_27DB5C7A0;
  if (!qword_27DB5C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7A0);
  }

  return result;
}

unint64_t sub_230DC8B58()
{
  result = qword_27DB5C7A8;
  if (!qword_27DB5C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7A8);
  }

  return result;
}

unint64_t sub_230DC8BB0()
{
  result = qword_27DB5C7B0;
  if (!qword_27DB5C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7B0);
  }

  return result;
}

unint64_t sub_230DC8C08()
{
  result = qword_27DB5C7B8;
  if (!qword_27DB5C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7B8);
  }

  return result;
}

unint64_t sub_230DC8C60()
{
  result = qword_27DB5C7C0;
  if (!qword_27DB5C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7C0);
  }

  return result;
}

unint64_t sub_230DC8CB8()
{
  result = qword_27DB5C7C8;
  if (!qword_27DB5C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7C8);
  }

  return result;
}

uint64_t sub_230DC8D0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x42676E6968636163 && a2 == 0xEF726F6976616865 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961507475706E69 && a2 == 0xEC00000064616F6CLL || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E821B0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E801F0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6568636143657375 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t UseCaseResponse.workflow.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14[0] = v3;
  *(v14 + 9) = *(v1 + 89);
  v4 = *(v14 + 9);
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  *(a1 + 89) = v4;
  return sub_230D2D898(v10, &v9);
}

__n128 UseCaseResponse.workflow.setter(uint64_t a1)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 89);
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  v5 = v1[3];
  v9[2] = v1[2];
  v9[3] = v5;
  sub_230D2D8F4(v9);
  v6 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v6;
  *(v1 + 89) = *(a1 + 89);
  v7 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v7;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

uint64_t UseCaseResponse.result.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

__n128 UseCaseResponse.init(workflow:result:cacheStatus:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v5;
  *(a4 + 89) = *(a1 + 89);
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  result = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = result;
  *(a4 + 112) = a2;
  *(a4 + 120) = v4;
  return result;
}

uint64_t sub_230DC90C4(uint64_t a1)
{
  v2 = sub_230DC9420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC9100(uint64_t a1)
{
  v2 = sub_230DC9420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UseCaseResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C7D0, &unk_230E77B20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - v8;
  v10 = v1[5];
  v40 = v1[4];
  v41[0] = v10;
  *(v41 + 9) = *(v1 + 89);
  v11 = v1[1];
  v36 = *v1;
  v37 = v11;
  v12 = v1[3];
  v38 = v1[2];
  v39 = v12;
  v42 = *(v1 + 14);
  v20 = *(v1 + 120);
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v13);
  sub_230D2D898(&v36, &v30);
  sub_230DC9420();
  sub_230E69A50();
  v33 = v39;
  v34 = v40;
  v35[0] = v41[0];
  *(v35 + 9) = *(v41 + 9);
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v29 = 0;
  sub_230D57AA0();
  sub_230E69850();
  if (v2)
  {
    v27 = v34;
    *v28 = v35[0];
    *&v28[9] = *(v35 + 9);
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    sub_230D2D8F4(&v23);
  }

  else
  {
    v18 = v20;
    v27 = v34;
    *v28 = v35[0];
    *&v28[9] = *(v35 + 9);
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    sub_230D2D8F4(&v23);
    v22 = v42;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B6B8, &unk_230E774B0);
    sub_230D57FF8(&qword_27DB5B6C0, sub_230D57AF4);
    sub_230E69850();
    LOBYTE(v22) = v18;
    v21 = 2;
    sub_230D57BB0();
    sub_230E69850();
  }

  return (*(v5 + 8))(v9, v17);
}

unint64_t sub_230DC9420()
{
  result = qword_27DB5C7D8;
  if (!qword_27DB5C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7D8);
  }

  return result;
}

uint64_t UseCaseResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C7E0, &qword_230E77B30);
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v47, v7);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DC9420();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v5;
  v34 = 0;
  sub_230D57FA4();
  v12 = v47;
  sub_230E69760();
  v45 = v39;
  *v46 = v40[0];
  *&v46[9] = *(v40 + 9);
  v41 = v35;
  v42 = v36;
  v43 = v37;
  v44 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B6B8, &unk_230E774B0);
  LOBYTE(v23[0]) = 1;
  sub_230D57FF8(&qword_27DB5B708, sub_230D5807C);
  sub_230E69760();
  v22 = *&v29[0];
  v32 = 2;
  sub_230D58228();
  sub_230E69760();
  (*(v11 + 8))(v9, v12);
  v13 = v33;
  v15 = *v46;
  v14 = *&v46[16];
  v27 = *v46;
  v28[0] = *&v46[16];
  v16 = v44;
  v25 = v44;
  v26 = v45;
  v18 = v41;
  v17 = v42;
  v23[0] = v41;
  v23[1] = v42;
  v24 = v43;
  v19 = v22;
  *&v28[1] = v22;
  BYTE8(v28[1]) = v33;
  a2[4] = v45;
  a2[5] = v15;
  a2[6] = v14;
  *a2 = v18;
  a2[1] = v17;
  *(a2 + 105) = *(v28 + 9);
  a2[2] = v24;
  a2[3] = v16;
  sub_230DC9814(v23, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[4] = v45;
  v29[5] = *v46;
  v29[6] = *&v46[16];
  v29[0] = v41;
  v29[1] = v42;
  v29[2] = v43;
  v29[3] = v44;
  v30 = v19;
  v31 = v13;
  return sub_230DC984C(v29);
}

unint64_t sub_230DC98D0()
{
  result = qword_27DB5C7E8;
  if (!qword_27DB5C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7E8);
  }

  return result;
}

unint64_t sub_230DC9928()
{
  result = qword_27DB5C7F0;
  if (!qword_27DB5C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7F0);
  }

  return result;
}

unint64_t sub_230DC9980()
{
  result = qword_27DB5C7F8;
  if (!qword_27DB5C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C7F8);
  }

  return result;
}

uint64_t sub_230DC99E0()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DC9AC8()
{
  *v0;
  *v0;
  *v0;
  sub_230E69100();
}

uint64_t sub_230DC9B9C()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DC9C80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_230DCAC48();
  *a2 = result;
  return result;
}

void sub_230DC9CB0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007372;
  v4 = 0x6574656D61726170;
  v5 = 0xD000000000000010;
  v6 = 0x8000000230E801B0;
  v7 = 0x8000000230E801D0;
  v8 = 0xD000000000000011;
  if (v2 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x8000000230E801F0;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C65646F6DLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_230DC9D54()
{
  v1 = *v0;
  v2 = 0x6574656D61726170;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C65646F6DLL;
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

uint64_t sub_230DC9DF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_230DCAC48();
  *a1 = result;
  return result;
}

uint64_t sub_230DC9E1C(uint64_t a1)
{
  v2 = sub_230DCA3B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DC9E58(uint64_t a1)
{
  v2 = sub_230DCA3B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Workflow.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C800, &unk_230E77D80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v31 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_230DCA3B8();
  sub_230E69A30();
  if (!v2)
  {
    v37 = v6;
    v51 = 1;
    sub_230DCA40C();
    sub_230E69700();
    v43 = v52;
    v44 = *v53;
    v45 = *&v53[16];
    v46 = *&v53[32];
    v47 = *&v53[48];
    v13 = v52;
    v49 = *&v53[24];
    v50 = *&v53[40];
    v48 = *&v53[8];
    if (*(&v52 + 1))
    {
      v35 = *(&v52 + 1);
      v36 = *v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9A0, &qword_230E77D90);
      v38 = 2;
      sub_230DCA648(&qword_27DB5C818, &unk_27DB5D9A0, &qword_230E77D90, sub_230DCA5F4);
      sub_230E69700();
      if (v39)
      {
        v34 = v39;
      }

      else
      {
        v34 = sub_230D0EE04(MEMORY[0x277D84F90]);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C828, &qword_230E77DA0);
      v38 = 3;
      sub_230DCA648(&unk_27DB5D990, &qword_27DB5C828, &qword_230E77DA0, sub_230DCA6CC);
      sub_230E69700();
      v16 = v39;
      v17 = v37;
      if (!v39)
      {
        v16 = sub_230D0EF6C(MEMORY[0x277D84F90]);
      }

      LOBYTE(v39) = 4;
      v18 = sub_230E696B0();
      v21 = v26;
      v32 = v16;
      v27 = v5;
      v28 = v17;
      v29 = MEMORY[0x277D84F90];
      v33 = v18;
      v31 = sub_230D0EE04(MEMORY[0x277D84F90]);
      sub_230D0EF6C(v29);
      (*(v28 + 8))(v10, v27);

      v24 = v32;
      v23 = v33;
      v40 = v48;
      v41 = v49;
      v42 = v50;
      v25 = 1;
      v38 = 1;
      v22 = v34;
      v19 = v35;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
      v38 = 0;
      sub_230DCA460();
      sub_230E69700();
      v13 = v39;
      v14 = v37;
      if (!v39)
      {
        v13 = sub_230D0EAD0(MEMORY[0x277D84F90]);
      }

      LOBYTE(v39) = 4;
      v19 = sub_230E696B0();
      v36 = v20;
      v21 = sub_230D0EAD0(MEMORY[0x277D84F90]);
      (*(v14 + 8))(v10, v5);

      v25 = 0;
    }

    *a2 = v13;
    *(a2 + 8) = v19;
    *(a2 + 16) = v36;
    v30 = v41;
    *(a2 + 24) = v40;
    *(a2 + 40) = v30;
    *(a2 + 56) = v42;
    *(a2 + 72) = v22;
    *(a2 + 80) = v24;
    *(a2 + 88) = v23;
    *(a2 + 96) = v21;
    *(a2 + 104) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

unint64_t sub_230DCA3B8()
{
  result = qword_27DB5C808;
  if (!qword_27DB5C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C808);
  }

  return result;
}

unint64_t sub_230DCA40C()
{
  result = qword_27DB5C810;
  if (!qword_27DB5C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C810);
  }

  return result;
}

unint64_t sub_230DCA460()
{
  result = qword_27DB5D980;
  if (!qword_27DB5D980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BAD0, &qword_230E73560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D980);
  }

  return result;
}

uint64_t Workflow.encode(to:)(void *a1)
{
  v2 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  if ((v1[13] & 1) == 0)
  {
    return RuleWorkflow.encode(to:)(a1);
  }

  v7 = *(v1 + 5);
  v8 = *(v1 + 7);
  v9 = *(v1 + 9);
  v10 = *(v1 + 11);
  v6 = *(v1 + 3);
  return InferenceWorkflow.encode(to:)(a1);
}

uint64_t sub_230DCA578(void *a1)
{
  v2 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  if ((v1[13] & 1) == 0)
  {
    return RuleWorkflow.encode(to:)(a1);
  }

  v7 = *(v1 + 5);
  v8 = *(v1 + 7);
  v9 = *(v1 + 9);
  v10 = *(v1 + 11);
  v6 = *(v1 + 3);
  return InferenceWorkflow.encode(to:)(a1);
}

unint64_t sub_230DCA5F4()
{
  result = qword_27DB5D9B0;
  if (!qword_27DB5D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D9B0);
  }

  return result;
}

uint64_t sub_230DCA648(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_230DCA6CC()
{
  result = qword_27DB5C830;
  if (!qword_27DB5C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C830);
  }

  return result;
}

uint64_t _s20ServicesIntelligence8WorkflowO2eeoiySbAC_ACtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v41 = a1[4];
  *v42 = v3;
  *&v42[9] = *(a1 + 89);
  v4 = a1[1];
  v37 = *a1;
  v38 = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v39 = a1[2];
  v40 = v5;
  v8 = *(a2 + 16);
  v43 = *a2;
  v44 = v8;
  *&v48[9] = *(a2 + 89);
  v9 = *(a2 + 48);
  v10 = *(a2 + 80);
  v47 = *(a2 + 64);
  *v48 = v10;
  v11 = *(a2 + 48);
  v12 = *a2;
  v13 = *(a2 + 16);
  v45 = *(a2 + 32);
  v46 = v11;
  v49[0] = v7;
  v49[1] = v6;
  *(v50 + 9) = *(a1 + 89);
  v14 = a1[5];
  v49[4] = v41;
  v50[0] = v14;
  v49[2] = v39;
  v49[3] = v2;
  v50[2] = v12;
  v50[3] = v13;
  *(v51 + 9) = *(a2 + 89);
  v15 = *(a2 + 80);
  v50[6] = v47;
  v51[0] = v15;
  v50[4] = v45;
  v50[5] = v9;
  v16 = v37;
  v17 = v38;
  if ((v42[24] & 1) == 0)
  {
    if (v48[24])
    {
      goto LABEL_5;
    }

    v23 = *(&v43 + 1);
    v22 = v44;
    v24 = v43;
    sub_230D2D898(&v43, v36);
    sub_230D2D898(&v37, v36);
    sub_230D2D898(&v37, v36);
    sub_230D2D898(&v43, v36);
    if (sub_230D6A784(v16, v24))
    {
      if (!v17)
      {
        sub_230D2D9F8(v49, &qword_27DB5AF98, &qword_230E6E0A8);
        sub_230D2D8F4(&v43);
        sub_230D2D8F4(&v37);
        if (v22)
        {
          goto LABEL_12;
        }

        goto LABEL_17;
      }

      if (v22)
      {
        if (__PAIR128__(v17, *(&v16 + 1)) == __PAIR128__(v22, v23))
        {
          sub_230D2D9F8(v49, &qword_27DB5AF98, &qword_230E6E0A8);
          sub_230D2D8F4(&v43);
          sub_230D2D8F4(&v37);
          v21 = 1;
          return v21 & 1;
        }

        v26 = sub_230E698C0();
        sub_230D2D9F8(v49, &qword_27DB5AF98, &qword_230E6E0A8);
        sub_230D2D8F4(&v43);
        sub_230D2D8F4(&v37);
        if ((v26 & 1) == 0)
        {
LABEL_12:
          v21 = 0;
          return v21 & 1;
        }

LABEL_17:
        v21 = 1;
        return v21 & 1;
      }
    }

    sub_230D2D9F8(v49, &qword_27DB5AF98, &qword_230E6E0A8);
    sub_230D2D8F4(&v43);
    sub_230D2D8F4(&v37);
    goto LABEL_12;
  }

  if ((v48[24] & 1) == 0)
  {
LABEL_5:
    sub_230D2D898(&v37, v36);
    sub_230D2D898(&v43, v36);
    sub_230D2D9F8(v49, &qword_27DB5AF98, &qword_230E6E0A8);
    goto LABEL_12;
  }

  v29 = v37;
  v30 = v38;
  v32 = *(a1 + 40);
  v33 = *(a1 + 56);
  v34 = *(a1 + 72);
  v35 = *(a1 + 88);
  v31 = *(a1 + 24);
  v18 = *(a2 + 80);
  v27[4] = *(a2 + 64);
  v27[5] = v18;
  v28 = *(a2 + 96);
  v19 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v19;
  v20 = *(a2 + 48);
  v27[2] = *(a2 + 32);
  v27[3] = v20;
  sub_230D2D898(&v43, v36);
  sub_230D2D898(&v37, v36);
  sub_230D2D898(&v37, v36);
  sub_230D2D898(&v43, v36);
  v21 = _s20ServicesIntelligence17InferenceWorkflowV2eeoiySbAC_ACtFZ_0(&v29, v27);
  sub_230D2D9F8(v49, &qword_27DB5AF98, &qword_230E6E0A8);
  sub_230D2D8F4(&v43);
  sub_230D2D8F4(&v37);
  return v21 & 1;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_230DCAA6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 105))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 104);
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

uint64_t sub_230DCAAB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

unint64_t sub_230DCAB44()
{
  result = qword_27DB5C838;
  if (!qword_27DB5C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C838);
  }

  return result;
}

unint64_t sub_230DCAB9C()
{
  result = qword_27DB5C840;
  if (!qword_27DB5C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C840);
  }

  return result;
}

unint64_t sub_230DCABF4()
{
  result = qword_27DB5C848;
  if (!qword_27DB5C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C848);
  }

  return result;
}

uint64_t sub_230DCAC48()
{
  v0 = sub_230E69680();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

ServicesIntelligence::CacheStatus_optional __swiftcall CacheStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t CacheStatus.rawValue.getter()
{
  if (*v0)
  {
    result = 1936943469;
  }

  else
  {
    result = 7629160;
  }

  *v0;
  return result;
}

uint64_t sub_230DCAD24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1936943469;
  }

  else
  {
    v4 = 7629160;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1936943469;
  }

  else
  {
    v6 = 7629160;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_230E698C0();
  }

  return v9 & 1;
}

unint64_t sub_230DCADC0()
{
  result = qword_27DB5C850;
  if (!qword_27DB5C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C850);
  }

  return result;
}

uint64_t sub_230DCAE14()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DCAE88()
{
  *v0;
  sub_230E69100();
}

uint64_t sub_230DCAEE8()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DCAF58@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_230E69680();

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

void sub_230DCAFB8(uint64_t *a1@<X8>)
{
  v2 = 7629160;
  if (*v1)
  {
    v2 = 1936943469;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_230DCB0A8()
{
  result = qword_27DB5C858;
  if (!qword_27DB5C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C858);
  }

  return result;
}

uint64_t DataClass.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230E69680();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_230DCB184()
{
  result = qword_27DB5C860;
  if (!qword_27DB5C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C860);
  }

  return result;
}

uint64_t sub_230DCB1D8()
{
  sub_230E699B0();
  sub_230E69100();
  return sub_230E699D0();
}

uint64_t sub_230DCB254()
{
  sub_230E699B0();
  sub_230E69100();
  return sub_230E699D0();
}

uint64_t sub_230DCB2AC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_230E69680();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_230DCB328()
{
  result = qword_27DB5C868;
  if (!qword_27DB5C868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C870, &qword_230E781D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C868);
  }

  return result;
}

unint64_t sub_230DCB45C()
{
  result = qword_2815660A0;
  if (!qword_2815660A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660A0);
  }

  return result;
}

uint64_t Domain.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6E6F6D6D6F63;
    v7 = 0x65676175676E616CLL;
    if (v1 != 8)
    {
      v7 = 0x7974697275636573;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x7374736163646F70;
    if (v1 != 5)
    {
      v8 = 0x6F65646976;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6C616E7265746E69;
    v3 = 0x736B6F6F62;
    v4 = 0x7373656E746966;
    if (v1 != 3)
    {
      v4 = 0x636973756DLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 1936748641;
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
}

unint64_t sub_230DCB5D4@<X0>(_BYTE *a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (!v3)
  {
    goto LABEL_8;
  }

  sub_230E69060();

  v4 = sub_230E69680();

  if (v4 > 3)
  {
    goto LABEL_8;
  }

  if (qword_27DB5A470 != -1)
  {
    swift_once();
  }

  v5 = off_27DB5C878;
  if (*(off_27DB5C878 + 2) && (result = sub_230DB4C38(v4), (v7 & 1) != 0))
  {
    *a1 = *(v5[7] + result);
  }

  else
  {
LABEL_8:
    sub_230DCBD30();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

ServicesIntelligence::Domain_optional __swiftcall Domain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_230DCB778()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230D55C8C();
  return sub_230E699D0();
}

uint64_t sub_230DCB7C8()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230D55C8C();
  return sub_230E699D0();
}

uint64_t sub_230DCB818@<X0>(uint64_t *a1@<X8>)
{
  result = Domain.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_230DCB900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_230DCBCB4();
  v9 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140EE8](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_230DCB974(uint64_t a1, uint64_t a2)
{
  v4 = sub_230DCBCB4();
  v5 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D38](a1, a2, v4, v5);
}

uint64_t sub_230DCB9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_230DCBC60();
  v5 = sub_230DCBCB4();
  v6 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D40](a1, a2, v4, v5, v6);
}

uint64_t sub_230DCBA28(uint64_t a1, uint64_t a2)
{
  v4 = sub_230DCBC60();

  return MEMORY[0x282140D48](a1, a2, v4);
}

uint64_t Domain.Error.hashValue.getter()
{
  sub_230E699B0();
  MEMORY[0x23191E2B0](0);
  return sub_230E699D0();
}

unint64_t sub_230DCBB10()
{
  result = qword_27DB5C880;
  if (!qword_27DB5C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C880);
  }

  return result;
}

unint64_t sub_230DCBB68()
{
  result = qword_27DB5C888;
  if (!qword_27DB5C888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BAB8, &qword_230E72368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C888);
  }

  return result;
}

unint64_t sub_230DCBBD0()
{
  result = qword_27DB5C890;
  if (!qword_27DB5C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C890);
  }

  return result;
}

unint64_t sub_230DCBC60()
{
  result = qword_27DB5C898;
  if (!qword_27DB5C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C898);
  }

  return result;
}

unint64_t sub_230DCBCB4()
{
  result = qword_27DB5C8A0;
  if (!qword_27DB5C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8A0);
  }

  return result;
}

void *sub_230DCBD08()
{
  result = sub_230D0D424(&unk_2845A4BA8);
  off_27DB5C878 = result;
  return result;
}

unint64_t sub_230DCBD30()
{
  result = qword_27DB5C8A8;
  if (!qword_27DB5C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8A8);
  }

  return result;
}

ServicesIntelligence::Process_optional __swiftcall Process.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Process.bundleID.getter()
{
  v1 = 0xD00000000000001ELL;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000012;
  }

  v2 = 0xD00000000000001FLL;
  if (!*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_230DCBE60()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DCBF18()
{
  *v0;
  *v0;
  *v0;
  sub_230E69100();
}

uint64_t sub_230DCBFBC()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230DCC07C(unint64_t *a1@<X8>)
{
  v2 = "com.apple.servicesintelligenced";
  v3 = 0xD00000000000001ELL;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000012;
    v2 = "com.apple.SIDInferenceProvider";
  }

  v4 = 0xD00000000000001FLL;
  if (*v1)
  {
    v5 = "com.apple.internal.sidtool";
  }

  else
  {
    v4 = 0xD00000000000001ALL;
    v5 = &unk_230E80070;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_230DCC1D0()
{
  result = qword_27DB5C8B0;
  if (!qword_27DB5C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8B0);
  }

  return result;
}

unint64_t sub_230DCC228()
{
  result = qword_27DB5C8B8;
  if (!qword_27DB5C8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C8C0, &qword_230E785C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8B8);
  }

  return result;
}

unint64_t sub_230DCC29C()
{
  result = qword_27DB5C8C8;
  if (!qword_27DB5C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8C8);
  }

  return result;
}

uint64_t static RequestContext.from(_:correlationID:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 32) = a1;
  v6 = sub_230E68940();
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 105) = *a2;

  return MEMORY[0x2822009F8](sub_230DCC3C4, 0, 0);
}

uint64_t sub_230DCC3C4()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = *(v0 + 56);
    sub_230E68930();
    v2 = sub_230E68920();
    v1 = v6;
    (*(v4 + 8))(v3, v5);
  }

  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  v30 = *(v0 + 105);
  v7 = RequestType.rawValue.getter();
  v9 = *(v0 + 48);
  if (v7 == 0xD000000000000010 && 0x8000000230E80630 == v8)
  {
    v10 = *(v0 + 48);

LABEL_12:
    v14 = *(v0 + 32);
    *v14 = *(v0 + 105);
    *(v14 + 8) = v2;
    *(v14 + 16) = v1;
    v15 = *(v0 + 72);
    v16 = *(v0 + 32);
    *(v16 + 24) = 0;
    *(v16 + 32) = MEMORY[0x277D84FA0];

    v17 = *(v0 + 8);

    return v17();
  }

  v11 = sub_230E698C0();

  if (v11)
  {
    goto LABEL_12;
  }

  v31 = *(v0 + 105);
  if (RequestType.rawValue.getter() == 0xD000000000000013 && 0x8000000230E805D0 == v12)
  {
    goto LABEL_10;
  }

  v13 = sub_230E698C0();

  if (v13)
  {
    goto LABEL_12;
  }

  v32 = *(v0 + 105);
  if (RequestType.rawValue.getter() == 0xD000000000000014 && 0x8000000230E805F0 == v19)
  {
    goto LABEL_10;
  }

  v20 = sub_230E698C0();

  if (v20)
  {
    goto LABEL_12;
  }

  v33 = *(v0 + 105);
  if (RequestType.rawValue.getter() == 0xD000000000000017 && 0x8000000230E80610 == v21)
  {
    goto LABEL_10;
  }

  v22 = sub_230E698C0();

  if (v22)
  {
    goto LABEL_12;
  }

  v34 = *(v0 + 105);
  if (RequestType.rawValue.getter() == 0xD000000000000017 && 0x8000000230E808B0 == v23)
  {
    goto LABEL_10;
  }

  v24 = sub_230E698C0();

  if (v24)
  {
    goto LABEL_12;
  }

  v35 = *(v0 + 105);
  if (RequestType.rawValue.getter() == 0xD00000000000001CLL && 0x8000000230E808D0 == v25)
  {
    goto LABEL_10;
  }

  v26 = sub_230E698C0();

  if (v26)
  {
    goto LABEL_12;
  }

  v36 = *(v0 + 105);
  if (RequestType.rawValue.getter() == 0xD000000000000018 && 0x8000000230E80870 == v27)
  {
LABEL_10:

    goto LABEL_12;
  }

  v28 = sub_230E698C0();

  if (v28)
  {
    goto LABEL_12;
  }

  *(v0 + 104) = *(v0 + 105);
  v29 = swift_task_alloc();
  *(v0 + 96) = v29;
  *v29 = v0;
  v29[1] = sub_230DCC7A0;

  return sub_230DCDB54(v0 + 16, (v0 + 104));
}

uint64_t sub_230DCC7A0()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_230DCC89C, 0, 0);
}

uint64_t sub_230DCC89C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  *v5 = *(v0 + 105);
  *(v5 + 8) = v2;
  *(v5 + 16) = v1;
  v7 = *(v0 + 72);
  v8 = *(v0 + 32);
  *(v8 + 24) = v3;
  *(v8 + 25) = v4;
  *(v8 + 32) = v6;

  v9 = *(v0 + 8);

  return v9();
}

unint64_t RequestType.rawValue.getter()
{
  result = 0x6144657461657263;
  switch(*v0)
  {
    case 1:
    case 3:
    case 0x19:
    case 0x1A:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 4:
    case 8:
    case 0x1C:
    case 0x2F:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x5153657461657263;
      break;
    case 6:
      result = 0x6F434C5153646461;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x44564B6E49746573;
      break;
    case 0xA:
    case 0x12:
    case 0x20:
      result = 0xD000000000000010;
      break;
    case 0xB:
    case 0xC:
    case 0x1B:
    case 0x25:
      result = 0xD000000000000018;
      break;
    case 0xD:
      result = 0xD000000000000014;
      break;
    case 0xE:
      result = 0xD000000000000014;
      break;
    case 0xF:
    case 0x1F:
    case 0x22:
      result = 0xD000000000000013;
      break;
    case 0x10:
      result = 0xD000000000000014;
      break;
    case 0x11:
    case 0x23:
    case 0x26:
    case 0x27:
      result = 0xD000000000000017;
      break;
    case 0x13:
      result = 0xD000000000000014;
      break;
    case 0x14:
    case 0x1D:
    case 0x24:
    case 0x29:
      result = 0xD000000000000012;
      break;
    case 0x15:
      result = 0xD000000000000014;
      break;
    case 0x16:
      result = 0xD000000000000014;
      break;
    case 0x17:
    case 0x28:
      result = 0xD00000000000001CLL;
      break;
    case 0x18:
      result = 0xD000000000000024;
      break;
    case 0x1E:
      result = 0x65725465726F7473;
      break;
    case 0x21:
      result = 0x666B726F576E7572;
      break;
    case 0x2A:
    case 0x2D:
    case 0x2E:
      result = 0xD00000000000001ALL;
      break;
    case 0x2B:
    case 0x2C:
      result = 0xD000000000000019;
      break;
    case 0x30:
      result = 0x726F577972657571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t RequestType.metricsEventType.getter()
{
  v3 = *v0;
  v1 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v1);

  return 0x6C616E7265746E69;
}

ServicesIntelligence::RequestType_optional __swiftcall RequestType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69910();

  v5 = 0;
  v6 = 31;
  switch(v3)
  {
    case 0:
      goto LABEL_48;
    case 1:
      v5 = 1;
      goto LABEL_48;
    case 2:
      v5 = 2;
      goto LABEL_48;
    case 3:
      v5 = 3;
      goto LABEL_48;
    case 4:
      v5 = 4;
      goto LABEL_48;
    case 5:
      v5 = 5;
      goto LABEL_48;
    case 6:
      v5 = 6;
      goto LABEL_48;
    case 7:
      v5 = 7;
      goto LABEL_48;
    case 8:
      v5 = 8;
      goto LABEL_48;
    case 9:
      v5 = 9;
      goto LABEL_48;
    case 10:
      v5 = 10;
      goto LABEL_48;
    case 11:
      v5 = 11;
      goto LABEL_48;
    case 12:
      v5 = 12;
      goto LABEL_48;
    case 13:
      v5 = 13;
      goto LABEL_48;
    case 14:
      v5 = 14;
      goto LABEL_48;
    case 15:
      v5 = 15;
      goto LABEL_48;
    case 16:
      v5 = 16;
      goto LABEL_48;
    case 17:
      v5 = 17;
      goto LABEL_48;
    case 18:
      v5 = 18;
      goto LABEL_48;
    case 19:
      v5 = 19;
      goto LABEL_48;
    case 20:
      v5 = 20;
      goto LABEL_48;
    case 21:
      v5 = 21;
      goto LABEL_48;
    case 22:
      v5 = 22;
      goto LABEL_48;
    case 23:
      v5 = 23;
      goto LABEL_48;
    case 24:
      v5 = 24;
      goto LABEL_48;
    case 25:
      v5 = 25;
      goto LABEL_48;
    case 26:
      v5 = 26;
      goto LABEL_48;
    case 27:
      v5 = 27;
      goto LABEL_48;
    case 28:
      v5 = 28;
      goto LABEL_48;
    case 29:
      v5 = 29;
      goto LABEL_48;
    case 30:
      v5 = 30;
LABEL_48:
      v6 = v5;
      break;
    case 31:
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
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    default:
      v6 = 49;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_230DCD0B8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = RequestType.rawValue.getter();
  v4 = v3;
  if (v2 == RequestType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_230E698C0();
  }

  return v7 & 1;
}

uint64_t sub_230DCD154()
{
  v1 = *v0;
  sub_230E699B0();
  RequestType.rawValue.getter();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DCD1BC()
{
  v2 = *v0;
  RequestType.rawValue.getter();
  sub_230E69100();
}

uint64_t sub_230DCD220()
{
  v1 = *v0;
  sub_230E699B0();
  RequestType.rawValue.getter();
  sub_230E69100();

  return sub_230E699D0();
}

unint64_t sub_230DCD290@<X0>(unint64_t *a1@<X8>)
{
  result = RequestType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ServicesIntelligence::LoggingGranularity_optional __swiftcall LoggingGranularity.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t static DeviceType.current.getter@<X0>(_BYTE *a1@<X8>)
{
  result = os_variant_has_internal_diagnostics();
  *a1 = result;
  return result;
}

uint64_t DeviceType.hashValue.getter()
{
  v1 = *v0;
  sub_230E699B0();
  MEMORY[0x23191E2B0](v1);
  return sub_230E699D0();
}

void RequestType.granularityLevel.getter(_BYTE *a1@<X8>)
{
  if (*v1 - 1 > 0x2F)
  {
    *a1 = 2;
  }

  else
  {
    *a1 = byte_230E78DCE[(*v1 - 1)];
  }
}

uint64_t sub_230DCD578()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C62616E457369;
  }
}

uint64_t sub_230DCD5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DD001C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230DCD608(uint64_t a1)
{
  v2 = sub_230DCF1D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DCD644(uint64_t a1)
{
  v2 = sub_230DCF1D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LoggingStrategy.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C8D0, &unk_230E786C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v14 - v8;
  v10 = *v1;
  v15 = v1[1];
  v14[0] = *(v1 + 1);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DCF1D8();
  sub_230E69A50();
  v19 = 0;
  sub_230E69820();
  if (!v2)
  {
    v12 = v14[0];
    v18 = v15;
    v17 = 1;
    sub_230DCF22C();
    sub_230E69850();
    v14[1] = v12;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
    sub_230D0AD9C(&qword_27DB5A6C0);
    sub_230E69850();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t LoggingStrategy.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C8E8, &qword_230E786D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DCF1D8();
  sub_230E69A30();
  if (!v2)
  {
    v20 = 0;
    v12 = sub_230E69730();
    v18 = 1;
    sub_230DCF280();
    sub_230E69760();
    v14 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
    v17 = 2;
    sub_230D0AD9C(qword_27DB5A6C8);
    sub_230E69760();
    (*(v6 + 8))(v10, v5);
    v15 = v16[1];
    *a2 = v12 & 1;
    *(a2 + 1) = v14;
    *(a2 + 8) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RequestContext.correlationID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t RequestContext.loggingStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 25);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 1) = v2;
  *(a1 + 8) = v3;
}

uint64_t sub_230DCDB54(uint64_t a1, _BYTE *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *(v2 + 232) = a1;
  v4 = sub_230E68D80();
  *(v2 + 240) = v4;
  v5 = *(v4 - 8);
  *(v2 + 248) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 782) = *a2;
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DCDC4C, 0, 0);
}

uint64_t sub_230DCDC4C()
{
  v4 = *MEMORY[0x277D85DE8];
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  *(v0 + 264) = qword_27DB5A438;
  *(v0 + 780) = 39;
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_230DCDD5C;
  v2 = *MEMORY[0x277D85DE8];

  return static RequestContext.from(_:correlationID:)(v0 + 144, v0 + 780, 0, 0);
}

uint64_t sub_230DCDD5C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DCDE98, v2, 0);
}

uint64_t sub_230DCDE98()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 264);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 169);
  v7 = *(v0 + 176);
  *(v0 + 280) = v4;
  *(v0 + 288) = v7;
  *(v0 + 64) = v2;
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  *(v0 + 88) = v5;
  *(v0 + 89) = v6;
  *(v0 + 96) = v7;

  v8 = swift_task_alloc();
  *(v0 + 296) = v8;
  *v8 = v0;
  v8[1] = sub_230DCDFB8;
  v9 = *(v0 + 264);
  v10 = *MEMORY[0x277D85DE8];

  return sub_230D6F7D0(39, v0 + 64, v9, v9);
}

uint64_t sub_230DCDFB8(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(*v2 + 296);
  v4 = *v2;
  *(v4 + 304) = a1;
  *(v4 + 312) = v1;

  if (v1)
  {
    v5 = *(v4 + 280);
    v6 = *(v4 + 288);

    v7 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230DCF130, 0, 0);
  }

  else
  {
    v8 = *(v4 + 280);
    v9 = *(v4 + 288);

    *(v4 + 781) = 40;
    v10 = swift_task_alloc();
    *(v4 + 320) = v10;
    *v10 = v4;
    v10[1] = sub_230DCE1AC;
    v11 = *MEMORY[0x277D85DE8];

    return static RequestContext.from(_:correlationID:)(v4 + 184, v4 + 781, 0, 0);
  }
}

uint64_t sub_230DCE1AC()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 320);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DCE2D4, 0, 0);
}

uint64_t sub_230DCE2D4()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  v3 = *(v0 + 184);
  *(v0 + 783) = v3;
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  *(v0 + 328) = v4;
  *(v0 + 336) = v5;
  v6 = *(v0 + 208);
  *(v0 + 784) = v6;
  v7 = *(v0 + 209);
  *(v0 + 785) = v7;
  v8 = *(v0 + 216);
  *(v0 + 344) = v8;
  *(v0 + 104) = v3;
  *(v0 + 112) = v4;
  *(v0 + 120) = v5;
  *(v0 + 128) = v6;
  *(v0 + 129) = v7;
  *(v0 + 136) = v8;

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DCE3CC, v2, 0);
}

uint64_t sub_230DCE3CC()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 256);
  sub_230E68D70();

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 328);
    v6 = *(v0 + 336);
    v8 = *(v0 + 783);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_230D7E620(0xD00000000000001CLL, 0x8000000230E808D0, v31);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(v7, v6, v31);
    *(v9 + 22) = 2080;
    v29 = 0x6C616E7265746E69;
    v30 = 0xE90000000000002ELL;
    v28 = v8;
    v11 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v11);

    v12 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v9 + 24) = v12;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  v13 = *(v0 + 344);
  v14 = *(v0 + 785);
  v15 = *(v0 + 783);
  LOBYTE(v29) = *(v0 + 784);
  BYTE1(v29) = v14;
  v30 = v13;
  v28 = 40;
  LOBYTE(v31[0]) = v15;

  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v28, v31);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 352) = CFAbsoluteTimeGetCurrent();
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0u;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0u;
    *(v0 + 720) = 0u;
    *(v0 + 736) = 0u;
    *(v0 + 752) = 0u;
    *(v0 + 768) = 0;
    *(v0 + 772) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 400), (v0 + 772));
    *(v0 + 776) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 448);
      v20 = *(v0 + 520);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 376) = v18;
    *(v0 + 224) = 0;
    v23 = swift_task_alloc();
    *(v0 + 384) = v23;
    *v23 = v0;
    v24 = sub_230DCE908;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 360) = v23;
    *v23 = v0;
    v24 = sub_230DCE7B0;
  }

  v23[1] = v24;
  v25 = *(v0 + 304);
  v26 = *MEMORY[0x277D85DE8];

  return sub_230E41A9C(v0 + 16, 0, v25, v0 + 104);
}

uint64_t sub_230DCE7B0()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
    v6 = sub_230DCF040;
  }

  else
  {
    v6 = sub_230DCEF6C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DCE908()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
    v6 = sub_230DCEB70;
  }

  else
  {
    v6 = sub_230DCEA60;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DCEA60()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 304);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 240);
  sub_230D340D4(40, *(v0 + 376), *(v0 + 776) != 0, v0 + 104, (v0 + 224), *(v0 + 352));
  (*(v5 + 8))(v4, v6);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DCECD4, 0, 0);
}

uint64_t sub_230DCEB70()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  v3 = *(v0 + 352);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v13 = v6;
  v14 = *(v0 + 304);
  v8 = *(v0 + 240);
  v9 = *(v0 + 776) != 0;
  *(v0 + 224) = v1;
  swift_willThrow();
  v10 = v1;
  sub_230D340D4(40, v2, v9, v0 + 104, (v0 + 224), v3);
  MEMORY[0x23191E910](v1);
  (*(v7 + 8))(v13, v8);

  MEMORY[0x23191E910](v1);

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DCEEC4, 0, 0);
}

uint64_t sub_230DCECD4()
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 56);
    v19 = *(v0 + 24);
    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    v22 = *(v0 + 48);
    v18 = *(v0 + 782);
    v4 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v4);

    v5 = sub_230D6BFA8(0x6C616E7265746E69, 0xE90000000000002ELL);

    if (v5)
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (v3)
      {

        v7 = v3;
      }

      else
      {
        v7 = MEMORY[0x277D84F90];
      }

      v12 = *(v0 + 304);
      sub_230D8FE24(v2, v1);
      v11 = sub_230D0ABEC(v7);

      v10 = 1;
      goto LABEL_10;
    }

    v9 = *(v0 + 304);

    sub_230D8FE24(v2, v1);
  }

  else
  {
    v8 = *(v0 + 304);
  }

  v10 = 0;
  has_internal_diagnostics = 0;
  v11 = MEMORY[0x277D84FA0];
LABEL_10:
  v13 = *(v0 + 256);
  v14 = *(v0 + 232);
  *v14 = v10;
  *(v14 + 1) = has_internal_diagnostics;
  *(v14 + 8) = v11;

  v15 = *(v0 + 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_230DCEEC4()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[38];

  v2 = v0[32];
  v3 = v0[29];
  *v3 = 0;
  *(v3 + 8) = MEMORY[0x277D84FA0];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_230DCEF6C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[38];
  (*(v0[31] + 8))(v0[32], v0[30]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DCECD4, 0, 0);
}

uint64_t sub_230DCF040()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[46];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[38];
  (*(v0[31] + 8))(v0[32], v0[30]);

  MEMORY[0x23191E910](v1);

  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230DCEEC4, 0, 0);
}

uint64_t sub_230DCF130()
{
  v6 = *MEMORY[0x277D85DE8];
  MEMORY[0x23191E910](v0[39]);
  v1 = v0[32];
  v2 = v0[29];
  *v2 = 0;
  *(v2 + 8) = MEMORY[0x277D84FA0];

  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

unint64_t sub_230DCF1D8()
{
  result = qword_27DB5C8D8;
  if (!qword_27DB5C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8D8);
  }

  return result;
}

unint64_t sub_230DCF22C()
{
  result = qword_27DB5C8E0;
  if (!qword_27DB5C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8E0);
  }

  return result;
}

unint64_t sub_230DCF280()
{
  result = qword_27DB5C8F0;
  if (!qword_27DB5C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C8F0);
  }

  return result;
}

uint64_t sub_230DCF2D4()
{
  v1 = 0x74616C6572726F63;
  if (*v0 != 1)
  {
    v1 = 0x53676E6967676F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_230DCF340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DD0148(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230DCF368(uint64_t a1)
{
  v2 = sub_230DCF620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DCF3A4(uint64_t a1)
{
  v2 = sub_230DCF620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestContext.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C8F8, &qword_230E786D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  v19 = *(v1 + 16);
  v20 = v11;
  v24 = *(v1 + 24);
  v18 = *(v1 + 25);
  v17 = *(v1 + 32);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DCF620();
  sub_230E69A50();
  v21 = v10;
  v25 = 0;
  sub_230DCF674();
  sub_230E69850();
  if (!v2)
  {
    v14 = v18;
    v15 = v24;
    v16 = v17;
    v21 = 1;
    sub_230E69810();
    v21 = v15;
    v22 = v14;
    v23 = v16;
    v25 = 2;
    sub_230DCF6C8();

    sub_230E69850();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_230DCF620()
{
  result = qword_27DB5C900;
  if (!qword_27DB5C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C900);
  }

  return result;
}

unint64_t sub_230DCF674()
{
  result = qword_27DB5C908;
  if (!qword_27DB5C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C908);
  }

  return result;
}

unint64_t sub_230DCF6C8()
{
  result = qword_27DB5C910;
  if (!qword_27DB5C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C910);
  }

  return result;
}

uint64_t RequestContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C918, &qword_230E786E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DCF620();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  sub_230DCF984();
  sub_230E69760();
  v12 = v22;
  v22 = 1;
  v13 = sub_230E69720();
  v15 = v14;
  v21 = v13;
  v25 = 2;
  sub_230DCF9D8();
  sub_230E69760();
  (*(v6 + 8))(v10, v5);
  v16 = v22;
  v17 = v23;
  v18 = v24;
  *a2 = v12;
  *(a2 + 8) = v21;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 25) = v17;
  *(a2 + 32) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230DCF984()
{
  result = qword_27DB5C920;
  if (!qword_27DB5C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C920);
  }

  return result;
}

unint64_t sub_230DCF9D8()
{
  result = qword_27DB5C928;
  if (!qword_27DB5C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C928);
  }

  return result;
}

unint64_t sub_230DCFA30()
{
  result = qword_27DB5C930;
  if (!qword_27DB5C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C930);
  }

  return result;
}

unint64_t sub_230DCFA88()
{
  result = qword_27DB5C938;
  if (!qword_27DB5C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C938);
  }

  return result;
}

unint64_t sub_230DCFAE0()
{
  result = qword_27DB5C940;
  if (!qword_27DB5C940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C948, &qword_230E78878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C940);
  }

  return result;
}

unint64_t sub_230DCFB48()
{
  result = qword_27DB5C950;
  if (!qword_27DB5C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C950);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD0)
  {
    goto LABEL_17;
  }

  if (a2 + 48 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 48) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 48;
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

      return (*a1 | (v4 << 8)) - 48;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 48;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x31;
  v8 = v6 - 49;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 48 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 48) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD0)
  {
    v4 = 0;
  }

  if (a2 > 0xCF)
  {
    v5 = ((a2 - 208) >> 8) + 1;
    *result = a2 + 48;
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
    *result = a2 + 48;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_230DCFD4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_230DCFD94(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_230DCFE10()
{
  result = qword_27DB5C958;
  if (!qword_27DB5C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C958);
  }

  return result;
}

unint64_t sub_230DCFE68()
{
  result = qword_27DB5C960;
  if (!qword_27DB5C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C960);
  }

  return result;
}

unint64_t sub_230DCFEC0()
{
  result = qword_27DB5C968;
  if (!qword_27DB5C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C968);
  }

  return result;
}

unint64_t sub_230DCFF18()
{
  result = qword_27DB5C970;
  if (!qword_27DB5C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C970);
  }

  return result;
}

unint64_t sub_230DCFF70()
{
  result = qword_27DB5C978;
  if (!qword_27DB5C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C978);
  }

  return result;
}

unint64_t sub_230DCFFC8()
{
  result = qword_27DB5C980;
  if (!qword_27DB5C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C980);
  }

  return result;
}

uint64_t sub_230DD001C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C62616E457369 && a2 == 0xE900000000000064;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E83570 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000230E80250 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DD0148(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616C6572726F63 && a2 == 0xED000044496E6F69 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53676E6967676F6CLL && a2 == 0xEF79676574617274)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

unint64_t sub_230DD0270()
{
  result = qword_27DB5C988;
  if (!qword_27DB5C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C988);
  }

  return result;
}

unint64_t sub_230DD02C4()
{
  result = qword_27DB5C990;
  if (!qword_27DB5C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C990);
  }

  return result;
}

void __swiftcall InferenceWorkflow.init(model:inputDefinitions:outputDefinitions:treatmentIdentifier:)(ServicesIntelligence::InferenceWorkflow *__return_ptr retstr, ServicesIntelligence::InferenceModel *model, Swift::OpaquePointer inputDefinitions, Swift::OpaquePointer outputDefinitions, Swift::String_optional treatmentIdentifier)
{
  object = treatmentIdentifier.value._object;
  countAndFlagsBits = treatmentIdentifier.value._countAndFlagsBits;
  v11 = MEMORY[0x277D84F90];
  sub_230D0EE04(MEMORY[0x277D84F90]);
  sub_230D0EF6C(v11);

  v12 = *&model->assetBundleIdentifier._object;
  *&retstr->model.assetIdentifier._object = *&model->assetIdentifier._object;
  *&retstr->model.assetBundleIdentifier._object = v12;
  v13 = model->assetDirectory.value._object;
  v14 = *&model->format;
  retstr->model.identifier = model->identifier;
  *&retstr->model.format = v14;
  retstr->model.assetDirectory.value._object = v13;
  retstr->inputDefinitions = inputDefinitions;
  retstr->outputDefinitions = outputDefinitions;
  retstr->treatmentIdentifier.value._countAndFlagsBits = countAndFlagsBits;
  retstr->treatmentIdentifier.value._object = object;
}

uint64_t InferenceWorkflow.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C998, &qword_230E78E00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v17 - v8;
  v10 = v1[3];
  v34 = v1[2];
  v35 = v10;
  v11 = *(v1 + 8);
  v37 = *(v1 + 9);
  v36 = v11;
  v12 = v1[1];
  v32 = *v1;
  v33 = v12;
  v13 = *(v1 + 11);
  v18 = *(v1 + 10);
  v17[2] = v13;
  v17[1] = *(v1 + 12);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2D948(&v32, &v27);
  sub_230DD6758();
  sub_230E69A50();
  v30 = v35;
  v31 = v36;
  v28 = v33;
  v29 = v34;
  v27 = v32;
  v26 = 0;
  sub_230DD67AC();
  sub_230E69850();
  if (v2)
  {
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v22 = v28;
    v21 = v27;
    sub_230D2D9A4(&v21);
  }

  else
  {
    v15 = v18;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v22 = v28;
    v21 = v27;
    sub_230D2D9A4(&v21);
    v20 = v37;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9A0, &qword_230E77D90);
    sub_230DD705C(&qword_281565FC0, sub_230DD6800);
    sub_230E69850();
    v20 = v15;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C828, &qword_230E77DA0);
    sub_230DD6854(&unk_281565FB0, sub_230DD68D8);
    sub_230E69850();
    LOBYTE(v20) = 3;
    sub_230E697B0();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t InferenceWorkflow.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_230D2D948(v8, v7);
}

__n128 InferenceWorkflow.model.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_230D2D9A4(v7);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t InferenceWorkflow.inputDefinitions.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t InferenceWorkflow.outputDefinitions.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t InferenceWorkflow.treatmentIdentifier.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t InferenceWorkflow.treatmentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

unint64_t sub_230DD095C()
{
  v1 = 0x6C65646F6DLL;
  v2 = 0xD000000000000013;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
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

uint64_t sub_230DD09E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DD8F9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230DD0A08(uint64_t a1)
{
  v2 = sub_230DD6758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD0A44(uint64_t a1)
{
  v2 = sub_230DD6758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceWorkflow.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C9A8, &qword_230E78E08);
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v27, v7);
  v9 = &v27 - v8;
  v10 = MEMORY[0x277D84F90];
  v51 = sub_230D0EE04(MEMORY[0x277D84F90]);
  v28 = sub_230D0EF6C(v10);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD6758();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v5;
    v40 = 0;
    sub_230DCA40C();
    v13 = v27;
    sub_230E69760();
    v48 = v43;
    v49 = v44;
    v50 = v45;
    v46 = v41;
    v47 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9A0, &qword_230E77D90);
    LOBYTE(v29[0]) = 1;
    sub_230DD705C(&qword_27DB5C818, sub_230DCA5F4);
    sub_230E69760();

    v51 = *&v33[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C828, &qword_230E77DA0);
    LOBYTE(v29[0]) = 2;
    sub_230DD6854(&unk_27DB5D990, sub_230DCA6CC);
    sub_230E69760();

    v14 = *&v33[0];
    v39 = 3;
    v15 = sub_230E696B0();
    v17 = v16;
    v18 = *(v12 + 8);
    v28 = v15;
    v18(v9, v13);
    v20 = v48;
    v19 = v49;
    v29[2] = v48;
    v29[3] = v49;
    v21 = v46;
    v22 = v47;
    v29[0] = v46;
    v29[1] = v47;
    v23 = v51;
    *&v30 = v50;
    *(&v30 + 1) = v51;
    v24 = v28;
    *&v31 = v14;
    *(&v31 + 1) = v28;
    v32 = v17;
    *(a2 + 96) = v17;
    *(a2 + 32) = v20;
    *(a2 + 48) = v19;
    *a2 = v21;
    *(a2 + 16) = v22;
    v25 = v31;
    *(a2 + 64) = v30;
    *(a2 + 80) = v25;
    sub_230DBB6FC(v29, v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v33[2] = v48;
    v33[3] = v49;
    v33[0] = v46;
    v33[1] = v47;
    v34 = v50;
    v35 = v23;
    v36 = v14;
    v37 = v24;
    v38 = v17;
    return sub_230DD70E0(v33);
  }
}

uint64_t InferenceModel.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InferenceModel.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InferenceModel.assetIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t InferenceModel.assetIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t InferenceModel.assetBundleIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t InferenceModel.assetBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t InferenceModel.assetDirectory.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t InferenceModel.assetDirectory.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_230DD1164()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6564497465737361;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0x7269447465737361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74616D726F66;
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

uint64_t sub_230DD121C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DD9104(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230DD1244(uint64_t a1)
{
  v2 = sub_230DD7110();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD1280(uint64_t a1)
{
  v2 = sub_230DD7110();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C9B0, &qword_230E78E10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v18 = *(v1 + 16);
  v11 = v1[3];
  v17[4] = v1[4];
  v17[5] = v11;
  v12 = v1[5];
  v17[2] = v1[6];
  v17[3] = v12;
  v13 = v1[8];
  v17[0] = v1[7];
  v17[1] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7110();
  sub_230E69A50();
  v25 = 0;
  v15 = v19;
  sub_230E69810();
  if (!v15)
  {
    v24 = v18;
    v23 = 1;
    sub_230DD7164();
    sub_230E69850();
    v22 = 2;
    sub_230E69810();
    v21 = 3;
    sub_230E69810();
    v20 = 4;
    sub_230E697B0();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t InferenceModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C9C0, &qword_230E78E18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v30 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7110();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v40[0]) = 0;
  v12 = sub_230E69720();
  v14 = v13;
  v34 = v12;
  LOBYTE(v35) = 1;
  sub_230DD71B8();
  sub_230E69760();
  v15 = LOBYTE(v40[0]);
  LOBYTE(v40[0]) = 2;
  v31 = sub_230E69720();
  v48 = v15;
  v33 = v16;
  LOBYTE(v40[0]) = 3;
  v17 = sub_230E69720();
  v32 = v18;
  v49 = 4;
  v19 = sub_230E696B0();
  v20 = v10;
  v22 = v21;
  (*(v6 + 8))(v20, v5);
  v23 = v17;
  v30 = v17;
  v24 = v33;
  v25 = v34;
  *&v35 = v34;
  *(&v35 + 1) = v14;
  v26 = v48;
  LOBYTE(v36) = v48;
  *(&v36 + 1) = v31;
  *&v37 = v33;
  *(&v37 + 1) = v23;
  *&v38 = v32;
  *(&v38 + 1) = v19;
  v39 = v22;
  *(a2 + 64) = v22;
  v27 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v27;
  v28 = v36;
  *a2 = v35;
  *(a2 + 16) = v28;
  sub_230D2D948(&v35, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v40[0] = v25;
  v40[1] = v14;
  v41 = v26;
  v42 = v31;
  v43 = v24;
  v44 = v30;
  v45 = v32;
  v46 = v19;
  v47 = v22;
  return sub_230D2D9A4(v40);
}

uint64_t InferenceModelFormat.rawValue.getter()
{
  if (*v0)
  {
    result = 0x69706D6F63657270;
  }

  else
  {
    result = 0x6F73736572707365;
  }

  *v0;
  return result;
}

uint64_t sub_230DD18EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x69706D6F63657270;
  }

  else
  {
    v4 = 0x6F73736572707365;
  }

  if (v3)
  {
    v5 = 0xEA00000000003256;
  }

  else
  {
    v5 = 0xEB0000000064656CLL;
  }

  if (*a2)
  {
    v6 = 0x69706D6F63657270;
  }

  else
  {
    v6 = 0x6F73736572707365;
  }

  if (*a2)
  {
    v7 = 0xEB0000000064656CLL;
  }

  else
  {
    v7 = 0xEA00000000003256;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_230E698C0();
  }

  return v9 & 1;
}

uint64_t sub_230DD19A0()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DD1A30()
{
  *v0;
  sub_230E69100();
}

uint64_t sub_230DD1AAC()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230DD1B44(uint64_t *a1@<X8>)
{
  v2 = 0x6F73736572707365;
  if (*v1)
  {
    v2 = 0x69706D6F63657270;
  }

  v3 = 0xEA00000000003256;
  if (*v1)
  {
    v3 = 0xEB0000000064656CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t InferenceInputDefinition.featureIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InferenceInputDefinition.featureIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InferenceInputDefinition.mapOperation.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InferenceInputDefinition.mapOperation.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void InferenceInputDefinition.shape.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t InferenceInputDefinition.shape.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t static InferenceDataShape.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_230DD1E28()
{
  v1 = 0x617265704F70616DLL;
  v2 = 0x6570616873;
  if (*v0 != 2)
  {
    v2 = 0x6570795461746164;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_230DD1EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DD92D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230DD1ED4(uint64_t a1)
{
  v2 = sub_230DD7474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD1F10(uint64_t a1)
{
  v2 = sub_230DD7474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceInputDefinition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C9D0, &qword_230E78E20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v22 = v1[3];
  v23 = v11;
  v21 = v1[4];
  LODWORD(v11) = *(v1 + 40);
  v19 = *(v1 + 41);
  v20 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7474();
  sub_230E69A50();
  v31 = 0;
  v13 = v24;
  sub_230E69810();
  if (!v13)
  {
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v30 = 1;
    sub_230E697B0();
    v25 = v17;
    v26 = v16;
    v29 = 2;
    sub_230DD74C8();
    sub_230E69850();
    v28 = v15;
    v27 = 3;
    sub_230DD751C();
    sub_230E69850();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t InferenceInputDefinition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C9E0, &qword_230E78E28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7474();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  v12 = sub_230E69720();
  v14 = v13;
  v24 = v12;
  v30 = 1;
  v15 = sub_230E696B0();
  v17 = v16;
  v23 = v15;
  v29 = 2;
  sub_230DD7570();
  sub_230E69760();
  v22 = v25;
  HIDWORD(v21) = v26;
  v27 = 3;
  sub_230DD75C4();
  sub_230E69760();
  (*(v6 + 8))(v10, v5);
  v19 = v28;
  v20 = v23;
  *a2 = v24;
  *(a2 + 8) = v14;
  *(a2 + 16) = v20;
  *(a2 + 24) = v17;
  *(a2 + 32) = v22;
  *(a2 + 40) = BYTE4(v21);
  *(a2 + 41) = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230DD2530()
{
  if (*v0)
  {
    result = 1802396018;
  }

  else
  {
    result = 0x7365727574616566;
  }

  *v0;
  return result;
}

uint64_t sub_230DD2564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365727574616566 && a2 == 0xE800000000000000;
  if (v6 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

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

uint64_t sub_230DD2640(uint64_t a1)
{
  v2 = sub_230DD7618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD267C(uint64_t a1)
{
  v2 = sub_230DD7618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceDataShape.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C9F8, &qword_230E78E30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = *(v1 + 8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7618();
  sub_230E69A50();
  v17 = 0;
  sub_230E69840();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_230DD766C();
    sub_230E69850();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t InferenceDataShape.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA08, &qword_230E78E38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7618();
  sub_230E69A30();
  if (!v2)
  {
    v18 = 0;
    v12 = sub_230E69750();
    v16 = 1;
    sub_230DD76C0();
    sub_230E69760();
    (*(v6 + 8))(v10, v5);
    v13 = v17;
    *a2 = v12;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230DD2A2C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

ServicesIntelligence::TensorRank_optional __swiftcall TensorRank.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t TensorRank.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_230DD2A8C()
{
  v1 = *v0;
  sub_230E699B0();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x23191E2B0](v2);
  return sub_230E699D0();
}

uint64_t sub_230DD2ADC()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x23191E2B0](v1);
}

uint64_t sub_230DD2B14()
{
  v1 = *v0;
  sub_230E699B0();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x23191E2B0](v2);
  return sub_230E699D0();
}

void *sub_230DD2B60@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_230DD2B80(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t InferenceFeatureDataType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x3233746E69;
  }

  else
  {
    result = 0x323374616F6C66;
  }

  *v0;
  return result;
}

uint64_t sub_230DD2C8C()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DD2D0C()
{
  *v0;
  sub_230E69100();
}

uint64_t sub_230DD2D78()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230DD2E00(uint64_t *a1@<X8>)
{
  v2 = 0x323374616F6C66;
  if (*v1)
  {
    v2 = 0x3233746E69;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_230DD2EEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x3233746E69;
  }

  else
  {
    v4 = 0x323374616F6C66;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x3233746E69;
  }

  else
  {
    v6 = 0x323374616F6C66;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_230E698C0();
  }

  return v9 & 1;
}

uint64_t InferenceData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230E69A20();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v6 = sub_230E698E0();
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
    *(a2 + 4) = 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t InferenceData.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230E69A40();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  if (v3)
  {
    sub_230E69900();
  }

  else
  {
    sub_230E698F0();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t static InferenceData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*(a1 + 4) & 1) == 0)
  {
    return (*(a2 + 4) & 1) == 0 && (v5 = *a1, v2 == v3);
  }

  if (LODWORD(v2) == LODWORD(v3))
  {
    return *(a2 + 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_230DD3220(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230E69A40();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  if (v3)
  {
    sub_230E69900();
  }

  else
  {
    sub_230E698F0();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_230DD32F4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*(a1 + 4) & 1) == 0)
  {
    return (*(a2 + 4) & 1) == 0 && (v5 = *a1, v2 == v3);
  }

  if (LODWORD(v2) == LODWORD(v3))
  {
    return *(a2 + 4);
  }

  else
  {
    return 0;
  }
}

uint64_t InferenceOutputDefinition.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t InferenceOutputDefinition.modifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t InferenceOutputDefinition.ranker.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

uint64_t InferenceOutputDefinition.scorer.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t InferenceOutputDefinition.scorer.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

void InferenceOutputDefinition.shape.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t InferenceOutputDefinition.shape.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t InferenceOutputDefinition.init(mode:parameters:modifiers:ranker:scorer:shape:dataType:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a1;
  v12 = *a4;
  v13 = *a5;
  v14 = a5[1];
  v15 = *a6;
  v16 = *(a6 + 8);
  v17 = *a7;
  sub_230D0EAD0(MEMORY[0x277D84F90]);

  *a8 = v11;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;

  *(a8 + 24) = v12;

  *(a8 + 32) = v13;
  *(a8 + 40) = v14;
  *(a8 + 56) = v15;
  *(a8 + 64) = v16;
  *(a8 + 48) = v17;
  return result;
}

uint64_t sub_230DD35F0()
{
  v1 = *v0;
  v2 = 1701080941;
  v3 = 0x6570795461746164;
  if (v1 != 5)
  {
    v3 = 0x6570616873;
  }

  v4 = 0x72656B6E6172;
  if (v1 != 3)
  {
    v4 = 0x7265726F6373;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574656D61726170;
  if (v1 != 1)
  {
    v5 = 0x7265696669646F6DLL;
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

uint64_t sub_230DD36C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230DD9440(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230DD36E8(uint64_t a1)
{
  v2 = sub_230DD7764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD3724(uint64_t a1)
{
  v2 = sub_230DD7764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceOutputDefinition.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA18, &unk_230E78E40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v25 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v31 = *(v1 + 2);
  v32 = v11;
  v12 = *(v1 + 3);
  v13 = *(v1 + 5);
  v27 = *(v1 + 4);
  v28 = v13;
  v35 = v1[48];
  v29 = *(v1 + 7);
  v30 = v12;
  v14 = v1[64];
  v16 = a1[3];
  v15 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_230DD7764();
  sub_230E69A50();
  LOBYTE(v33) = v10;
  v36 = 0;
  sub_230DD77B8();
  v20 = v9;
  sub_230E69850();
  if (v2)
  {
    return (*(v5 + 8))(v9, v19);
  }

  v22 = v30;
  v23 = v31;
  v26 = v14;
  v24 = v29;
  v33 = v32;
  v36 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
  sub_230D6C1DC(&unk_281565FA0);
  sub_230E69850();
  v33 = v23;
  v36 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA28, &qword_230E78E50);
  sub_230DD795C(&unk_281565F90, sub_230DD780C);
  sub_230E69850();
  v33 = v22;
  v36 = 3;
  sub_230DD7860();

  sub_230E697F0();

  v33 = v27;
  v34 = v28;
  v36 = 4;
  sub_230DD78B4();

  sub_230E697F0();

  LOBYTE(v33) = v35;
  v36 = 5;
  sub_230DD751C();
  sub_230E69850();
  v33 = v24;
  LOBYTE(v34) = v26;
  v36 = 6;
  sub_230DD74C8();
  sub_230E69850();
  return (*(v5 + 8))(v20, v19);
}

uint64_t InferenceOutputDefinition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA30, &qword_230E78E58);
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v25, v7);
  v9 = &v21 - v8;
  sub_230D0EAD0(MEMORY[0x277D84F90]);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7764();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_230DD7908();
    sub_230E69760();
    v11 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    LOBYTE(v26) = 1;
    sub_230D6C1DC(&qword_27DB5D980);
    sub_230E69760();

    v12 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA28, &qword_230E78E50);
    LOBYTE(v26) = 2;
    sub_230DD795C(&qword_27DB5CA40, sub_230DD79D4);
    sub_230E69760();
    v42 = v11;
    v13 = v31;
    LOBYTE(v26) = 3;
    sub_230DD7A28();
    sub_230E69700();
    v24 = v5;
    v14 = v31;

    LOBYTE(v26) = 4;
    sub_230DD7A7C();
    sub_230E69700();
    v23 = v31;
    v15 = v32;

    LOBYTE(v26) = 5;
    sub_230DD75C4();
    sub_230E69760();
    v22 = v31;
    v43 = 6;
    sub_230DD7570();
    sub_230E69760();
    (*(v24 + 8))(v9, v25);
    v25 = v40;
    v16 = v41;
    v17 = v42;
    LOBYTE(v26) = v42;
    *(&v26 + 1) = v12;
    *&v27 = v13;
    *(&v27 + 1) = v14;
    *&v28 = v23;
    *(&v28 + 1) = v15;
    LOBYTE(v29) = v22;
    *(&v29 + 1) = v40;
    v30 = v41;
    *(a2 + 64) = v41;
    v18 = v27;
    *a2 = v26;
    *(a2 + 16) = v18;
    v19 = v29;
    *(a2 + 32) = v28;
    *(a2 + 48) = v19;
    sub_230D6CA20(&v26, &v31);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v31) = v17;
    v32 = v12;
    v33 = v13;
    v34 = v14;
    v35 = v23;
    v36 = v15;
    v37 = v22;
    v38 = v25;
    v39 = v16;
    return sub_230D6CA7C(&v31);
  }
}

uint64_t InferenceOutputMode.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7365756C6176;
  }

  else
  {
    result = 1315991412;
  }

  *v0;
  return result;
}

uint64_t sub_230DD40D0()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DD4148()
{
  *v0;
  sub_230E69100();
}

uint64_t sub_230DD41AC()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230DD422C(uint64_t *a1@<X8>)
{
  v2 = 1315991412;
  if (*v1)
  {
    v2 = 0x7365756C6176;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_230DD4310(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7365756C6176;
  }

  else
  {
    v4 = 1315991412;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x7365756C6176;
  }

  else
  {
    v6 = 1315991412;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_230E698C0();
  }

  return v9 & 1;
}

ServicesIntelligence::InferenceOutputModifierType_optional __swiftcall InferenceOutputModifierType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t InferenceOutputModifierType.rawValue.getter()
{
  v1 = 0xD000000000000014;
  v2 = 0xD00000000000001CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_230DD4478()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DD452C()
{
  *v0;
  *v0;
  *v0;
  sub_230E69100();
}

uint64_t sub_230DD45CC()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230DD4688(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "int32";
  v4 = "impressionBasedDemotion";
  v5 = 0xD00000000000001CLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000015;
    v4 = "lastConsumptionBasedDemotion";
  }

  if (*v1)
  {
    v2 = 0xD000000000000017;
    v3 = "historyBasedDemotion";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t static InferenceOutputModifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((sub_230D0B92C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_230D6A784(v2, v3);
}

uint64_t sub_230DD486C(uint64_t a1)
{
  v2 = sub_230DD7AD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD48A8(uint64_t a1)
{
  v2 = sub_230DD7AD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceOutputModifier.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA60, &qword_230E78E60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v13 - v8;
  v10 = *v1;
  v13[0] = *(v1 + 1);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7AD0();
  sub_230E69A50();
  v16 = v10;
  v15 = 0;
  sub_230DD7B24();
  sub_230E69850();
  if (!v2)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    sub_230D6C1DC(&unk_281565FA0);
    sub_230E69850();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t InferenceOutputModifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA78, &qword_230E78E68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v16 - v8;
  sub_230D0EAD0(MEMORY[0x277D84F90]);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7AD0();
  sub_230E69A30();
  if (!v2)
  {
    v11 = v5;
    v12 = v16[0];
    v18 = 0;
    sub_230DD7B78();
    sub_230E69760();
    v13 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    v17 = 1;
    sub_230D6C1DC(&qword_27DB5D980);
    sub_230E69760();
    (*(v11 + 8))(v9, v4);

    v15 = v16[1];
    *v12 = v13;
    *(v12 + 8) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230DD4D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((sub_230D0B92C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_230D6A784(v2, v3);
}

uint64_t InferenceOutputRankerType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230E69680();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_230DD4E20()
{
  sub_230E699B0();
  sub_230E69100();
  return sub_230E699D0();
}

uint64_t sub_230DD4E94()
{
  sub_230E699B0();
  sub_230E69100();
  return sub_230E699D0();
}

uint64_t sub_230DD4EE8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_230E69680();

  *a2 = v5 != 0;
  return result;
}

uint64_t InferenceOutputRanker.parameters.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_230DD5094(uint64_t a1)
{
  v2 = sub_230DD7BCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD50D0(uint64_t a1)
{
  v2 = sub_230DD7BCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceOutputRanker.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CA88, &qword_230E78E70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v13 - v8;
  v10 = *v1;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7BCC();
  sub_230E69A50();
  v15 = 0;
  sub_230DD7C20();
  sub_230E69850();
  if (!v2)
  {
    v13[1] = v10;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    sub_230D6C1DC(&unk_281565FA0);
    sub_230E69850();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t InferenceOutputRanker.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CAA0, &qword_230E78E78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v14 - v8;
  sub_230D0EAD0(MEMORY[0x277D84F90]);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7BCC();
  sub_230E69A30();
  if (!v2)
  {
    v11 = v5;
    v12 = v14[0];
    v16 = 0;
    sub_230DD7C74();
    sub_230E69760();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    v15 = 1;
    sub_230D6C1DC(&qword_27DB5D980);
    sub_230E69760();
    (*(v11 + 8))(v9, v4);

    *v12 = v14[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230DD5570@<X0>(char *a1@<X8>)
{
  v2 = sub_230E69680();

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

uint64_t InferenceOutputScorerType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x706F54664F78616DLL;
  }

  else
  {
    result = 0x4F65676172657661;
  }

  *v0;
  return result;
}

uint64_t sub_230DD561C()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DD56B0()
{
  *v0;
  sub_230E69100();
}

uint64_t sub_230DD5730()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230DD57CC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_230E69680();

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

void sub_230DD5828(uint64_t *a1@<X8>)
{
  v2 = 0x4F65676172657661;
  if (*v1)
  {
    v2 = 0x706F54664F78616DLL;
  }

  v3 = 0xED00004E706F5466;
  if (*v1)
  {
    v3 = 0xE90000000000004ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_230DD5928(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x706F54664F78616DLL;
  }

  else
  {
    v4 = 0x4F65676172657661;
  }

  if (v3)
  {
    v5 = 0xED00004E706F5466;
  }

  else
  {
    v5 = 0xE90000000000004ELL;
  }

  if (*a2)
  {
    v6 = 0x706F54664F78616DLL;
  }

  else
  {
    v6 = 0x4F65676172657661;
  }

  if (*a2)
  {
    v7 = 0xE90000000000004ELL;
  }

  else
  {
    v7 = 0xED00004E706F5466;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_230E698C0();
  }

  return v9 & 1;
}

uint64_t InferenceOutputScorer.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_230DD5A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

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

uint64_t sub_230DD5B54(uint64_t a1)
{
  v2 = sub_230DD7CC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD5B90(uint64_t a1)
{
  v2 = sub_230DD7CC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceOutputScorer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CAB0, &qword_230E78E80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v13 - v8;
  v10 = *v1;
  v13[0] = *(v1 + 1);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7CC8();
  sub_230E69A50();
  v16 = v10;
  v15 = 0;
  sub_230DD7D1C();
  sub_230E69850();
  if (!v2)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    sub_230D6C1DC(&unk_281565FA0);
    sub_230E69850();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t InferenceOutputScorer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CAC8, &qword_230E78E88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v16 - v8;
  sub_230D0EAD0(MEMORY[0x277D84F90]);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DD7CC8();
  sub_230E69A30();
  if (!v2)
  {
    v11 = v5;
    v12 = v16[0];
    v18 = 0;
    sub_230DD7D70();
    sub_230E69760();
    v13 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    v17 = 1;
    sub_230D6C1DC(&qword_27DB5D980);
    sub_230E69760();
    (*(v11 + 8))(v9, v4);

    v15 = v16[1];
    *v12 = v13;
    *(v12 + 8) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t UseCaseInputPayload.validateFeaturesAndParseAsData(inputDefinitions:)(uint64_t a1)
{
  v6 = *v1;
  result = sub_230D5B4EC(a1, sub_230DD7DC4);
  if (!v2)
  {
    if (*(result + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A978, &qword_230E78E90);
      v4 = sub_230E69640();
    }

    else
    {
      v4 = MEMORY[0x277D84F98];
    }

    v7 = v4;

    sub_230D5ADC4(v5, 1, &v7);

    return v7;
  }

  return result;
}

uint64_t sub_230DD6124(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a3 + 32);
  v7 = *(a3 + 41);
  if (*(a4 + 16) && (result = sub_230DA41A0(result, a2), (v9 & 1) != 0))
  {
    v10 = *(*(a4 + 56) + 8 * result);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 16);
  v64 = v11;
  v65 = v10;
  v61 = v5;
  if (v7)
  {
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v13 = 0;
      v60 = v10 + 32;
      v14 = MEMORY[0x277D84F90];
      while (v13 < *(v10 + 16))
      {
        v33 = *(v60 + 8 * v13);
        if (*(v33 + 16) != v6)
        {
          goto LABEL_73;
        }

        v63 = v13;
        if (v6)
        {

          result = sub_230D48E28(0, v6, 0);
          v36 = 0;
          v37 = (v33 + 36);
          v38.i64[0] = 0x8000000080000000;
          v38.i64[1] = 0x8000000080000000;
          while (v36 < *(v33 + 16))
          {
            v39 = *(v37 - 1);
            if ((*v37 & 1) == 0)
            {
              v34.i32[0] = *(v37 - 1);
              *v35.i32 = v39 - truncf(v39);
              v35 = vbslq_s8(v38, v35, v34);
              if (*v35.i32 != 0.0 || v39 < -2147500000.0 || v39 > 2147500000.0)
              {

                sub_230DD98D8();
                swift_allocError();
                *v51 = xmmword_230E70DE0;
                *(v51 + 16) = xmmword_230E70DF0;
                *(v51 + 32) = &unk_2845A64C0;
                *(v51 + 40) = 0;
                *(v51 + 48) = 1;
                swift_willThrow();
              }

              if ((~LODWORD(v39) & 0x7F800000) == 0)
              {
                goto LABEL_82;
              }

              if (v39 <= -2147500000.0)
              {
                goto LABEL_83;
              }

              if (v39 >= 2147500000.0)
              {
                goto LABEL_84;
              }

              LODWORD(v39) = v39;
            }

            v43 = *(v12 + 2);
            v42 = *(v12 + 3);
            v4 = (v43 + 1);
            if (v43 >= v42 >> 1)
            {
              result = sub_230D48E28((v42 > 1), v43 + 1, 1);
              v38.i64[0] = 0x8000000080000000;
              v38.i64[1] = 0x8000000080000000;
            }

            ++v36;
            *(v12 + 2) = v4;
            v12[v43 + 8] = v39;
            v37 += 2;
            if (v6 == v36)
            {

              goto LABEL_60;
            }
          }

          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

LABEL_60:
        v44 = *(v12 + 2);
        v45 = *(v14 + 16);
        v46 = v45 + v44;
        if (__OFADD__(v45, v44))
        {
          goto LABEL_91;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v46 > *(v14 + 24) >> 1)
        {
          if (v45 <= v46)
          {
            v47 = v45 + v44;
          }

          else
          {
            v47 = v45;
          }

          result = sub_230E4A1E0(result, v47, 1, v14);
          v14 = result;
        }

        if (*(v12 + 2))
        {
          v48 = *(v14 + 16);
          if ((*(v14 + 24) >> 1) - v48 < v44)
          {
            goto LABEL_93;
          }

          memcpy((v14 + 4 * v48 + 32), v12 + 8, 4 * v44);

          v32 = v64;
          v10 = v65;
          v12 = MEMORY[0x277D84F90];
          if (v44)
          {
            v49 = *(v14 + 16);
            v30 = __OFADD__(v49, v44);
            v50 = v49 + v44;
            if (v30)
            {
              goto LABEL_94;
            }

            *(v14 + 16) = v50;
          }
        }

        else
        {

          v32 = v64;
          v10 = v65;
          v12 = MEMORY[0x277D84F90];
          if (v44)
          {
            goto LABEL_92;
          }
        }

        v13 = v63 + 1;
        if (v63 + 1 == v32)
        {
          goto LABEL_76;
        }
      }

LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_76:

    v59 = *(v14 + 16);
    if (!(v59 >> 61))
    {
LABEL_80:
      sub_230DD8EEC((v14 + 32), 4 * v59);

      return v61;
    }

    __break(1u);
LABEL_78:
    v14 = v4;
LABEL_79:

    v59 = *(v14 + 16);
    if (v59 >> 61)
    {
LABEL_95:
      __break(1u);
      return result;
    }

    goto LABEL_80;
  }

  v4 = MEMORY[0x277D84F90];
  if (!v11)
  {
    goto LABEL_78;
  }

  v15 = 0;
  v62 = v10 + 32;
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 >= *(v10 + 16))
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v17 = *(v62 + 8 * v15);
    if (*(v17 + 16) != v6)
    {
      break;
    }

    if (v6)
    {

      sub_230D48E48(0, v6, 0);
      v18 = v4;
      v19 = *(v4 + 2);
      v20 = (v17 + 36);
      v21 = v6;
      do
      {
        if (*v20)
        {
          v22 = *(v20 - 1);
        }

        else
        {
          v22 = *(v20 - 1);
        }

        v23 = *(v18 + 3);
        if (v19 >= v23 >> 1)
        {
          sub_230D48E48((v23 > 1), v19 + 1, 1);
        }

        *(v18 + 2) = v19 + 1;
        v18[v19 + 8] = v22;
        v20 += 2;
        ++v19;
        --v21;
      }

      while (v21);

      v4 = MEMORY[0x277D84F90];
    }

    else
    {
      v18 = v4;
    }

    v24 = *(v18 + 2);
    v25 = *(v14 + 16);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      goto LABEL_86;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v26 <= *(v14 + 24) >> 1)
    {
      if (!*(v18 + 2))
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v25 <= v26)
      {
        v27 = v25 + v24;
      }

      else
      {
        v27 = v25;
      }

      result = sub_230E4A2E4(result, v27, 1, v14);
      v14 = result;
      if (!*(v18 + 2))
      {
LABEL_10:

        v16 = v64;
        v10 = v65;
        if (v24)
        {
          goto LABEL_87;
        }

        goto LABEL_11;
      }
    }

    v28 = *(v14 + 16);
    if ((*(v14 + 24) >> 1) - v28 < v24)
    {
      goto LABEL_88;
    }

    memcpy((v14 + 4 * v28 + 32), v18 + 8, 4 * v24);

    v16 = v64;
    v10 = v65;
    if (v24)
    {
      v29 = *(v14 + 16);
      v30 = __OFADD__(v29, v24);
      v31 = v29 + v24;
      if (v30)
      {
        goto LABEL_89;
      }

      *(v14 + 16) = v31;
    }

LABEL_11:
    if (++v15 == v16)
    {
      goto LABEL_79;
    }
  }

LABEL_73:

  v52 = sub_230E69890();
  v54 = v53;
  v55 = sub_230E69890();
  v57 = v56;
  sub_230DD98D8();
  swift_allocError();
  *v58 = xmmword_230E70DD0;
  *(v58 + 16) = v52;
  *(v58 + 24) = v54;
  *(v58 + 32) = v55;
  *(v58 + 40) = v57;
  *(v58 + 48) = 0;
  swift_willThrow();
}

unint64_t sub_230DD6758()
{
  result = qword_27DB5C9A0;
  if (!qword_27DB5C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C9A0);
  }

  return result;
}

unint64_t sub_230DD67AC()
{
  result = qword_281566768;
  if (!qword_281566768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566768);
  }

  return result;
}

unint64_t sub_230DD6800()
{
  result = qword_281566348;
  if (!qword_281566348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566348);
  }

  return result;
}

uint64_t sub_230DD6854(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5C828, &qword_230E77DA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230DD68D8()
{
  result = qword_2815661F0[0];
  if (!qword_2815661F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815661F0);
  }

  return result;
}

uint64_t _s20ServicesIntelligence14InferenceModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v21 = *(a1 + 64);
  v22 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a2 + 64);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_230E698C0() & 1) == 0)
  {
    return 0;
  }

  v18 = v6;
  if (v2)
  {
    v12 = 0x69706D6F63657270;
  }

  else
  {
    v12 = 0x6F73736572707365;
  }

  if (v2)
  {
    v13 = 0xEB0000000064656CLL;
  }

  else
  {
    v13 = 0xEA00000000003256;
  }

  if (v7)
  {
    v14 = 0x69706D6F63657270;
  }

  else
  {
    v14 = 0x6F73736572707365;
  }

  if (v7)
  {
    v15 = 0xEB0000000064656CLL;
  }

  else
  {
    v15 = 0xEA00000000003256;
  }

  if (v12 == v14 && v13 == v15)
  {
  }

  else
  {
    v16 = sub_230E698C0();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3 == v8 && v4 == v9 || (sub_230E698C0()) && (v5 == v10 && v22 == v11 || (sub_230E698C0()))
  {
    if (v21)
    {
      if (v20 && (v18 == v19 && v21 == v20 || (sub_230E698C0() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v20)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s20ServicesIntelligence25InferenceOutputDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v36 = *(a1 + 48);
  v33 = *(a1 + 56);
  v34 = *(a1 + 64);
  v6 = *a2;
  v8 = *(a2 + 1);
  v7 = *(a2 + 2);
  v9 = *(a2 + 3);
  v37 = *(a2 + 4);
  v38 = *(a1 + 32);
  v10 = *a1 == 0;
  v39 = *(a2 + 5);
  v35 = a2[48];
  if (*a1)
  {
    v11 = 0x7365756C6176;
  }

  else
  {
    v11 = 1315991412;
  }

  v31 = *(a2 + 7);
  v32 = a2[64];
  if (v10)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  if (*a2)
  {
    v13 = 0x7365756C6176;
  }

  else
  {
    v13 = 1315991412;
  }

  if (*a2)
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  if (v11 == v13 && v12 == v14)
  {
  }

  else
  {
    v15 = sub_230E698C0();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_230D6A784(v3, v8) & 1) == 0 || (sub_230D265DC(v2, v7) & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    if (v9)
    {
      goto LABEL_44;
    }

    if (v5)
    {
      goto LABEL_23;
    }

LABEL_43:
    if (!v39)
    {

      goto LABEL_51;
    }

    goto LABEL_44;
  }

  if (!v9)
  {
    goto LABEL_44;
  }

  swift_bridgeObjectRetain_n();

  v16 = sub_230D6A784(v4, v9);
  swift_bridgeObjectRelease_n();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    goto LABEL_43;
  }

LABEL_23:
  if (!v39)
  {
LABEL_44:

LABEL_45:

    return 0;
  }

  if (v38)
  {
    v17 = 0x706F54664F78616DLL;
  }

  else
  {
    v17 = 0x4F65676172657661;
  }

  if (v38)
  {
    v18 = 0xE90000000000004ELL;
  }

  else
  {
    v18 = 0xED00004E706F5466;
  }

  if (v37)
  {
    v19 = 0x706F54664F78616DLL;
  }

  else
  {
    v19 = 0x4F65676172657661;
  }

  if (v37)
  {
    v20 = 0xE90000000000004ELL;
  }

  else
  {
    v20 = 0xED00004E706F5466;
  }

  if (v17 == v19 && v18 == v20)
  {
    v21 = v5;
    swift_bridgeObjectRetain_n();
    v22 = v39;

    goto LABEL_48;
  }

  v21 = v5;
  v24 = sub_230E698C0();
  swift_bridgeObjectRetain_n();
  v22 = v39;

  if ((v24 & 1) == 0)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_45;
  }

LABEL_48:
  v25 = sub_230D6A784(v21, v22);
  swift_bridgeObjectRelease_n();

  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  if (v36)
  {
    v26 = 0x3233746E69;
  }

  else
  {
    v26 = 0x323374616F6C66;
  }

  if (v36)
  {
    v27 = 0xE500000000000000;
  }

  else
  {
    v27 = 0xE700000000000000;
  }

  if (v35)
  {
    v28 = 0x3233746E69;
  }

  else
  {
    v28 = 0x323374616F6C66;
  }

  if (v35)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE700000000000000;
  }

  if (v26 != v28 || v27 != v29)
  {
    v30 = sub_230E698C0();

    if (v30)
    {
      return (v33 == v31) & (v34 ^ v32 ^ 1u);
    }

    return 0;
  }

  return (v33 == v31) & (v34 ^ v32 ^ 1u);
}

uint64_t _s20ServicesIntelligence17InferenceWorkflowV2eeoiySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v34 = *(a1 + 32);
  v35 = v3;
  v4 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v37[2] = a2[2];
  v37[3] = v7;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *a2;
  v37[0] = v5;
  v37[1] = v8;
  v11 = *(a1 + 48);
  v30 = v34;
  v31 = v11;
  v12 = *(a1 + 72);
  v36 = *(a1 + 64);
  v14 = *(a1 + 80);
  v13 = *(a1 + 88);
  v15 = *(a1 + 96);
  v16 = *(a2 + 9);
  v38 = *(a2 + 8);
  v18 = *(a2 + 10);
  v17 = *(a2 + 11);
  v19 = *(a2 + 12);
  v32 = *(a1 + 64);
  v28 = v33[0];
  v29 = v2;
  v20 = a2[3];
  v25 = v9;
  v26 = v20;
  v27 = *(a2 + 8);
  v23 = v10;
  v24 = v6;
  sub_230D2D948(v33, v41);
  sub_230D2D948(v37, v41);
  v21 = _s20ServicesIntelligence14InferenceModelV2eeoiySbAC_ACtFZ_0(&v28, &v23);
  v39[2] = v25;
  v39[3] = v26;
  v40 = v27;
  v39[0] = v23;
  v39[1] = v24;
  sub_230D2D9A4(v39);
  v41[2] = v30;
  v41[3] = v31;
  v42 = v32;
  v41[0] = v28;
  v41[1] = v29;
  sub_230D2D9A4(v41);
  if (v21 & 1) != 0 && (sub_230D6A8C0(v12, v16) & 1) != 0 && (sub_230D6ABB8(v14, v18))
  {
    if (v15)
    {
      if (v19 && (v13 == v17 && v15 == v19 || (sub_230E698C0() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v19)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_230DD705C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB5D9A0, &qword_230E77D90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230DD7110()
{
  result = qword_27DB5C9B8;
  if (!qword_27DB5C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C9B8);
  }

  return result;
}

unint64_t sub_230DD7164()
{
  result = qword_281566508;
  if (!qword_281566508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566508);
  }

  return result;
}

unint64_t sub_230DD71B8()
{
  result = qword_27DB5C9C8;
  if (!qword_27DB5C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C9C8);
  }

  return result;
}

uint64_t _s20ServicesIntelligence21InferenceOutputScorerV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *a1 == 0;
  if (*a1)
  {
    v6 = 0x706F54664F78616DLL;
  }

  else
  {
    v6 = 0x4F65676172657661;
  }

  if (v5)
  {
    v7 = 0xED00004E706F5466;
  }

  else
  {
    v7 = 0xE90000000000004ELL;
  }

  if (*a2)
  {
    v8 = 0x706F54664F78616DLL;
  }

  else
  {
    v8 = 0x4F65676172657661;
  }

  if (*a2)
  {
    v9 = 0xE90000000000004ELL;
  }

  else
  {
    v9 = 0xED00004E706F5466;
  }

  if (v6 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = sub_230E698C0();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_230D6A784(v2, v4);
}

uint64_t _s20ServicesIntelligence24InferenceInputDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 41);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_230E698C0() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3)
  {
    if (v7)
    {
      if (v2 == v8 && v3 == v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        if ((sub_230E698C0() & 1) == 0)
        {
          return v12 & 1;
        }
      }

      goto LABEL_13;
    }

LABEL_9:
    v12 = 0;
    return v12 & 1;
  }

  v12 = 0;
  if (v7)
  {
    return v12 & 1;
  }

LABEL_13:
  if (v4 == v9 && ((v5 ^ v10) & 1) == 0)
  {
    if (v6)
    {
      v13 = 0x3233746E69;
    }

    else
    {
      v13 = 0x323374616F6C66;
    }

    if (v6)
    {
      v14 = 0xE500000000000000;
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    if (v11)
    {
      v15 = 0x3233746E69;
    }

    else
    {
      v15 = 0x323374616F6C66;
    }

    if (v11)
    {
      v16 = 0xE500000000000000;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    if (v13 == v15 && v14 == v16)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_230E698C0();
    }
  }

  return v12 & 1;
}

unint64_t sub_230DD7474()
{
  result = qword_27DB5C9D8;
  if (!qword_27DB5C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C9D8);
  }

  return result;
}

unint64_t sub_230DD74C8()
{
  result = qword_281566528[0];
  if (!qword_281566528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281566528);
  }

  return result;
}

unint64_t sub_230DD751C()
{
  result = qword_281566358[0];
  if (!qword_281566358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281566358);
  }

  return result;
}

unint64_t sub_230DD7570()
{
  result = qword_27DB5C9E8;
  if (!qword_27DB5C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C9E8);
  }

  return result;
}

unint64_t sub_230DD75C4()
{
  result = qword_27DB5C9F0;
  if (!qword_27DB5C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5C9F0);
  }

  return result;
}

unint64_t sub_230DD7618()
{
  result = qword_27DB5CA00;
  if (!qword_27DB5CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA00);
  }

  return result;
}

unint64_t sub_230DD766C()
{
  result = qword_2815667B8[0];
  if (!qword_2815667B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815667B8);
  }

  return result;
}

unint64_t sub_230DD76C0()
{
  result = qword_27DB5CA10;
  if (!qword_27DB5CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA10);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_230DD7764()
{
  result = qword_27DB5CA20;
  if (!qword_27DB5CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA20);
  }

  return result;
}

unint64_t sub_230DD77B8()
{
  result = qword_281566518;
  if (!qword_281566518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566518);
  }

  return result;
}

unint64_t sub_230DD780C()
{
  result = qword_2815664B0;
  if (!qword_2815664B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664B0);
  }

  return result;
}

unint64_t sub_230DD7860()
{
  result = qword_2815664C8;
  if (!qword_2815664C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664C8);
  }

  return result;
}

unint64_t sub_230DD78B4()
{
  result = qword_2815664C0;
  if (!qword_2815664C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664C0);
  }

  return result;
}

unint64_t sub_230DD7908()
{
  result = qword_27DB5CA38;
  if (!qword_27DB5CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA38);
  }

  return result;
}

uint64_t sub_230DD795C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CA28, &qword_230E78E50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230DD79D4()
{
  result = qword_27DB5CA48;
  if (!qword_27DB5CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA48);
  }

  return result;
}

unint64_t sub_230DD7A28()
{
  result = qword_27DB5CA50;
  if (!qword_27DB5CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA50);
  }

  return result;
}

unint64_t sub_230DD7A7C()
{
  result = qword_27DB5CA58;
  if (!qword_27DB5CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA58);
  }

  return result;
}

unint64_t sub_230DD7AD0()
{
  result = qword_27DB5CA68;
  if (!qword_27DB5CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA68);
  }

  return result;
}

unint64_t sub_230DD7B24()
{
  result = qword_27DB5CA70;
  if (!qword_27DB5CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA70);
  }

  return result;
}

unint64_t sub_230DD7B78()
{
  result = qword_27DB5CA80;
  if (!qword_27DB5CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA80);
  }

  return result;
}

unint64_t sub_230DD7BCC()
{
  result = qword_27DB5CA90;
  if (!qword_27DB5CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA90);
  }

  return result;
}

unint64_t sub_230DD7C20()
{
  result = qword_27DB5CA98;
  if (!qword_27DB5CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CA98);
  }

  return result;
}

unint64_t sub_230DD7C74()
{
  result = qword_27DB5CAA8;
  if (!qword_27DB5CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAA8);
  }

  return result;
}

unint64_t sub_230DD7CC8()
{
  result = qword_27DB5CAB8;
  if (!qword_27DB5CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAB8);
  }

  return result;
}

unint64_t sub_230DD7D1C()
{
  result = qword_27DB5CAC0;
  if (!qword_27DB5CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAC0);
  }

  return result;
}

unint64_t sub_230DD7D70()
{
  result = qword_27DB5CAD0;
  if (!qword_27DB5CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAD0);
  }

  return result;
}

unint64_t sub_230DD7DE4()
{
  result = qword_27DB5CAD8;
  if (!qword_27DB5CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAD8);
  }

  return result;
}

unint64_t sub_230DD7E3C()
{
  result = qword_27DB5CAE0;
  if (!qword_27DB5CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAE0);
  }

  return result;
}

unint64_t sub_230DD7E94()
{
  result = qword_27DB5CAE8;
  if (!qword_27DB5CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAE8);
  }

  return result;
}

unint64_t sub_230DD7EEC()
{
  result = qword_27DB5CAF0;
  if (!qword_27DB5CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAF0);
  }

  return result;
}

unint64_t sub_230DD7F44()
{
  result = qword_27DB5CAF8;
  if (!qword_27DB5CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CAF8);
  }

  return result;
}

unint64_t sub_230DD7F9C()
{
  result = qword_27DB5CB00;
  if (!qword_27DB5CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB00);
  }

  return result;
}

unint64_t sub_230DD7FF4()
{
  result = qword_27DB5CB08;
  if (!qword_27DB5CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB08);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_230DD8074(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_230DD80BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_230DD8148(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_230DD8190(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_230DD8214(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_230DD825C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InferenceDataShape(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for InferenceDataShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for InferenceData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for InferenceData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
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

uint64_t sub_230DD8458(uint64_t a1, int a2)
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

uint64_t sub_230DD84A0(uint64_t result, int a2, int a3)
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

unint64_t sub_230DD85F8()
{
  result = qword_27DB5CB10;
  if (!qword_27DB5CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB10);
  }

  return result;
}

unint64_t sub_230DD8650()
{
  result = qword_27DB5CB18;
  if (!qword_27DB5CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB18);
  }

  return result;
}

unint64_t sub_230DD86A8()
{
  result = qword_27DB5CB20;
  if (!qword_27DB5CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB20);
  }

  return result;
}

unint64_t sub_230DD8700()
{
  result = qword_27DB5CB28;
  if (!qword_27DB5CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB28);
  }

  return result;
}

unint64_t sub_230DD8758()
{
  result = qword_27DB5CB30;
  if (!qword_27DB5CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB30);
  }

  return result;
}

unint64_t sub_230DD87B0()
{
  result = qword_27DB5CB38;
  if (!qword_27DB5CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB38);
  }

  return result;
}

unint64_t sub_230DD8808()
{
  result = qword_27DB5CB40;
  if (!qword_27DB5CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB40);
  }

  return result;
}

unint64_t sub_230DD8860()
{
  result = qword_27DB5CB48;
  if (!qword_27DB5CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB48);
  }

  return result;
}

unint64_t sub_230DD88B8()
{
  result = qword_27DB5CB50;
  if (!qword_27DB5CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB50);
  }

  return result;
}

unint64_t sub_230DD8910()
{
  result = qword_27DB5CB58;
  if (!qword_27DB5CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB58);
  }

  return result;
}

unint64_t sub_230DD8968()
{
  result = qword_27DB5CB60;
  if (!qword_27DB5CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB60);
  }

  return result;
}

unint64_t sub_230DD89C0()
{
  result = qword_27DB5CB68;
  if (!qword_27DB5CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB68);
  }

  return result;
}

unint64_t sub_230DD8A18()
{
  result = qword_27DB5CB70;
  if (!qword_27DB5CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB70);
  }

  return result;
}

unint64_t sub_230DD8A70()
{
  result = qword_27DB5CB78;
  if (!qword_27DB5CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB78);
  }

  return result;
}

unint64_t sub_230DD8AC8()
{
  result = qword_27DB5CB80;
  if (!qword_27DB5CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB80);
  }

  return result;
}

unint64_t sub_230DD8B20()
{
  result = qword_27DB5CB88;
  if (!qword_27DB5CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB88);
  }

  return result;
}

unint64_t sub_230DD8B78()
{
  result = qword_27DB5CB90;
  if (!qword_27DB5CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB90);
  }

  return result;
}

unint64_t sub_230DD8BD0()
{
  result = qword_27DB5CB98;
  if (!qword_27DB5CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CB98);
  }

  return result;
}

unint64_t sub_230DD8C28()
{
  result = qword_27DB5CBA0;
  if (!qword_27DB5CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBA0);
  }

  return result;
}

unint64_t sub_230DD8C80()
{
  result = qword_27DB5CBA8;
  if (!qword_27DB5CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBA8);
  }

  return result;
}

unint64_t sub_230DD8CD8()
{
  result = qword_27DB5CBB0;
  if (!qword_27DB5CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBB0);
  }

  return result;
}

unint64_t sub_230DD8D30()
{
  result = qword_27DB5CBB8;
  if (!qword_27DB5CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBB8);
  }

  return result;
}

unint64_t sub_230DD8D88()
{
  result = qword_27DB5CBC0;
  if (!qword_27DB5CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBC0);
  }

  return result;
}

unint64_t sub_230DD8DE0()
{
  result = qword_27DB5CBC8;
  if (!qword_27DB5CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBC8);
  }

  return result;
}

uint64_t sub_230DD8E34(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230DD8EEC(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_230DD8E34(a1, &a1[a2]);
  }

  v3 = sub_230E68760();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_230E68720();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_230E68870();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_230DD8F9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E801B0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E801D0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E801F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DD9104(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564497465737361 && a2 == 0xEF7265696669746ELL || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000230E80190 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7269447465737361 && a2 == 0xEE0079726F746365)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DD92D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000230E835D0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617265704F70616DLL && a2 == 0xEC0000006E6F6974 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570616873 && a2 == 0xE500000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_230E698C0();

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

uint64_t sub_230DD9440(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265696669646F6DLL && a2 == 0xE900000000000073 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656B6E6172 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265726F6373 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6570616873 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_230E698C0();

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

unint64_t sub_230DD968C()
{
  result = qword_27DB5CBD0;
  if (!qword_27DB5CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBD0);
  }

  return result;
}

unint64_t sub_230DD96E0()
{
  result = qword_27DB5CBD8;
  if (!qword_27DB5CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBD8);
  }

  return result;
}

unint64_t sub_230DD9734()
{
  result = qword_27DB5CBE0;
  if (!qword_27DB5CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBE0);
  }

  return result;
}

unint64_t sub_230DD9788()
{
  result = qword_281566510;
  if (!qword_281566510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566510);
  }

  return result;
}

unint64_t sub_230DD97DC()
{
  result = qword_281566350;
  if (!qword_281566350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566350);
  }

  return result;
}

unint64_t sub_230DD9830()
{
  result = qword_2815667B0;
  if (!qword_2815667B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815667B0);
  }

  return result;
}

unint64_t sub_230DD9884()
{
  result = qword_281566500;
  if (!qword_281566500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566500);
  }

  return result;
}

unint64_t sub_230DD98D8()
{
  result = qword_27DB5CBE8;
  if (!qword_27DB5CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBE8);
  }

  return result;
}

ServicesIntelligence::RuleWorkflow __swiftcall RuleWorkflow.init(parameters:treatmentIdentifier:)(Swift::OpaquePointer parameters, Swift::String_optional treatmentIdentifier)
{
  object = treatmentIdentifier.value._object;
  countAndFlagsBits = treatmentIdentifier.value._countAndFlagsBits;
  v6 = v2;
  sub_230D0EAD0(MEMORY[0x277D84F90]);

  v6->_rawValue = parameters._rawValue;
  v6[1]._rawValue = countAndFlagsBits;
  v6[2]._rawValue = object;
  result.treatmentIdentifier.value._object = v9;
  result.treatmentIdentifier.value._countAndFlagsBits = v8;
  result.parameters._rawValue = v7;
  return result;
}

uint64_t RuleWorkflow.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CBF0, &unk_230E7A5A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v14 - v8;
  v11 = *v1;
  v10 = v1[1];
  v14[1] = v1[2];
  v14[2] = v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DDA178();

  sub_230E69A50();
  v17 = v11;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
  sub_230D6C1DC(&unk_281565FA0);
  sub_230E69850();

  if (!v2)
  {
    v15 = 1;
    sub_230E697B0();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t static RuleWorkflow.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_230D6A784(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_230E698C0() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t RuleWorkflow.parameters.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t RuleWorkflow.treatmentIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t RuleWorkflow.treatmentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

unint64_t sub_230DD9CC8()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x6574656D61726170;
  }

  *v0;
  return result;
}

uint64_t sub_230DD9D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
  if (v6 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E801F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

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

uint64_t sub_230DD9DF8(uint64_t a1)
{
  v2 = sub_230DDA178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DD9E34(uint64_t a1)
{
  v2 = sub_230DDA178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RuleWorkflow.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC00, &qword_230E7A5B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - v8;
  sub_230D0EAD0(MEMORY[0x277D84F90]);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DDA178();
  sub_230E69A30();
  if (!v2)
  {
    v11 = v5;
    v12 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    v20 = 0;
    sub_230D6C1DC(&qword_27DB5D980);
    sub_230E69760();

    v13 = v21;
    v19 = 1;
    v15 = sub_230E696B0();
    v17 = v16;
    (*(v11 + 8))(v9, v4);
    *v12 = v13;
    v12[1] = v15;
    v12[2] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230DDA0F0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_230D6A784(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_230E698C0() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_230DDA178()
{
  result = qword_27DB5CBF8;
  if (!qword_27DB5CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CBF8);
  }

  return result;
}

uint64_t sub_230DDA1CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_230DDA214(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_230DDA278()
{
  result = qword_27DB5CC08;
  if (!qword_27DB5CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC08);
  }

  return result;
}

unint64_t sub_230DDA2D0()
{
  result = qword_27DB5CC10;
  if (!qword_27DB5CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC10);
  }

  return result;
}

unint64_t sub_230DDA328()
{
  result = qword_27DB5CC18;
  if (!qword_27DB5CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CC18);
  }

  return result;
}

uint64_t sub_230DDA384(uint64_t a1)
{
  v2 = sub_230DDB3A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DDA3C0(uint64_t a1)
{
  v2 = sub_230DDB3A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DDA3FC(uint64_t a1)
{
  v2 = sub_230DDB4A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DDA438(uint64_t a1)
{
  v2 = sub_230DDB4A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DDA474(uint64_t a1)
{
  v2 = sub_230DDB3FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DDA4B0(uint64_t a1)
{
  v2 = sub_230DDB3FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkflowCachingBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC20, &qword_230E7A790);
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC28, &qword_230E7A798);
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC30, &qword_230E7A7A0);
  v13 = *(v33 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v33, v15);
  v17 = &v26 - v16;
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[2];
  v29 = v1[3];
  v30 = v18;
  v28 = *(v1 + 32);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DDB3A8();
  sub_230E69A50();
  if (v19)
  {
    LOBYTE(v34) = 1;
    sub_230DDB3FC();
    v22 = v33;
    sub_230E697A0();
    v34 = v30;
    v35 = v19;
    v36 = v20;
    v37 = v29;
    v38 = v28 & 1;
    sub_230DDB450();
    v23 = v32;
    sub_230E69850();
    (*(v31 + 8))(v7, v23);
    return (*(v13 + 8))(v17, v22);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_230DDB4A4();
    v25 = v33;
    sub_230E697A0();
    (*(v26 + 8))(v12, v27);
    return (*(v13 + 8))(v17, v25);
  }
}

uint64_t WorkflowCachingBehavior.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC58, &qword_230E7A7A8);
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC60, &qword_230E7A7B0);
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CC68, &unk_230E7A7B8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v43 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_230DDB3A8();
  v22 = v47;
  sub_230E69A30();
  if (!v22)
  {
    v47 = v15;
    v24 = v45;
    v23 = v46;
    v25 = sub_230E69780();
    v26 = (2 * *(v25 + 16)) | 1;
    v52 = v25;
    v53 = v25 + 32;
    v54 = 0;
    v55 = v26;
    v27 = sub_230D089CC();
    if (v27 == 2 || v54 != v55 >> 1)
    {
      v31 = sub_230E69580();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950) + 48);
      *v33 = &type metadata for WorkflowCachingBehavior;
      sub_230E696A0();
      sub_230E69570();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v47 + 8))(v19, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v27)
      {
        LOBYTE(v48) = 1;
        sub_230DDB3FC();
        v28 = v19;
        v29 = v8;
        sub_230E69690();
        v30 = v47;
        sub_230DDB4F8();
        v37 = v29;
        v38 = v43;
        sub_230E69760();
        (*(v44 + 8))(v37, v38);
        (*(v30 + 8))(v28, v14);
        swift_unknownObjectRelease();
        v39 = v48;
        v40 = v49;
        v41 = v50;
        v42 = v51;
      }

      else
      {
        LOBYTE(v48) = 0;
        sub_230DDB4A4();
        sub_230E69690();
        v36 = v47;
        (*(v24 + 8))(v13, v9);
        (*(v36 + 8))(v19, v14);
        swift_unknownObjectRelease();
        v39 = 0;
        v40 = 0;
        v42 = 0;
        v41 = 0uLL;
      }

      *v23 = v39;
      *(v23 + 8) = v40;
      *(v23 + 16) = v41;
      *(v23 + 32) = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t WorkflowCachingOption.signature.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WorkflowCachingOption.signature.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WorkflowCachingOption.expiration.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t WorkflowCachingOption.expiration.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t WorkflowCachingOption.init(signature:age:expiration:dataClass:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4 & 1;
  return result;
}

uint64_t sub_230DDAE78(uint64_t a1)
{
  v2 = sub_230DDB54C();

  return MEMORY[0x2821FE718](a1, v2);
}