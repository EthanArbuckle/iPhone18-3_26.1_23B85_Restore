unint64_t sub_266D324D8()
{
  result = qword_2800CCE10;
  if (!qword_2800CCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE10);
  }

  return result;
}

unint64_t sub_266D3252C()
{
  result = qword_2800CCE18;
  if (!qword_2800CCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE18);
  }

  return result;
}

unint64_t sub_266D32580()
{
  result = qword_2800CCE20;
  if (!qword_2800CCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE20);
  }

  return result;
}

uint64_t LocationPrecision.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  *&v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCE28, &qword_266DB9358);
  OUTLINED_FUNCTION_0_2(v59);
  *&v58 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCE30, &qword_266DB9360);
  OUTLINED_FUNCTION_0_2(v9);
  v60 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCE38, &unk_266DB9368);
  OUTLINED_FUNCTION_0_2(v16);
  v61 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D324D8();
  v22 = v63;
  v23 = a1;
  sub_266DAB34C();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_0(v23);
  }

  v56[2] = v9;
  v57 = v8;
  v63 = v15;
  v24 = v62;
  v25 = sub_266DAB06C();
  result = sub_266C1E2FC(v25, 0);
  if (v28 == v29 >> 1)
  {
LABEL_8:
    v37 = sub_266DAAE4C();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9908, &qword_266DAD8C0) + 48);
    *v39 = &type metadata for LocationPrecision;
    sub_266DAAFBC();
    sub_266DAAE3C();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = *(v61 + 8);
    v42 = OUTLINED_FUNCTION_2_51();
    v43(v42);
    return __swift_destroy_boxed_opaque_existential_0(v23);
  }

  v56[1] = 0;
  if (v28 < (v29 >> 1))
  {
    v30 = *(v27 + v28);
    sub_266C1E2EC(v28 + 1);
    v32 = v31;
    v34 = v33;
    swift_unknownObjectRelease();
    if (v32 == v34 >> 1)
    {
      v23 = a1;
      v64 = v30;
      if (v30)
      {
        v68 = 1;
        sub_266D3252C();
        v35 = v57;
        OUTLINED_FUNCTION_3_43();
        v36 = v61;
        swift_unknownObjectRelease();
        (*(v58 + 8))(v35, v59);
        v45 = *(v36 + 8);
        v46 = OUTLINED_FUNCTION_2_51();
        v47(v46);
        v48 = 0uLL;
      }

      else
      {
        v67 = 0;
        sub_266D32580();
        OUTLINED_FUNCTION_3_43();
        v44 = v61;
        v66 = 0;
        sub_266DAB03C();
        v59 = v49;
        v65 = 1;
        sub_266DAB03C();
        v58 = v50;
        swift_unknownObjectRelease();
        v51 = OUTLINED_FUNCTION_4_42();
        v52(v51);
        v53 = *(v44 + 8);
        v54 = OUTLINED_FUNCTION_2_51();
        v55(v54);
        *&v48 = v59;
        *(&v48 + 1) = v58;
      }

      *v24 = v48;
      *(v24 + 16) = v64;
      return __swift_destroy_boxed_opaque_existential_0(v23);
    }

    v23 = a1;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for LocationPrecision(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LocationPrecision(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_266D32B70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266D32B8C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

_BYTE *sub_266D32BCC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266D32CBC()
{
  result = qword_2800CCE40;
  if (!qword_2800CCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE40);
  }

  return result;
}

unint64_t sub_266D32D14()
{
  result = qword_2800CCE48;
  if (!qword_2800CCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE48);
  }

  return result;
}

unint64_t sub_266D32D6C()
{
  result = qword_2800CCE50;
  if (!qword_2800CCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE50);
  }

  return result;
}

unint64_t sub_266D32DC4()
{
  result = qword_2800CCE58;
  if (!qword_2800CCE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE58);
  }

  return result;
}

unint64_t sub_266D32E1C()
{
  result = qword_2800CCE60;
  if (!qword_2800CCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE60);
  }

  return result;
}

unint64_t sub_266D32E74()
{
  result = qword_2800CCE68;
  if (!qword_2800CCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE68);
  }

  return result;
}

unint64_t sub_266D32ECC()
{
  result = qword_2800CCE70;
  if (!qword_2800CCE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE70);
  }

  return result;
}

unint64_t sub_266D32F24()
{
  result = qword_2800CCE78;
  if (!qword_2800CCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_43()
{
  v2 = *(v0 - 168);

  return sub_266DAAFAC();
}

void sub_266D32FC0()
{
  qword_2800CCE80 = 0xD000000000000027;
  *algn_2800CCE88 = 0x8000000266DC37F0;
  qword_2800CCE90 = 0xD000000000000014;
  unk_2800CCE98 = 0x8000000266DC37D0;
}

uint64_t static DIConfirmationResponse.identifier.getter@<X0>(void *a1@<X8>)
{
  if (qword_2800C9400 != -1)
  {
    swift_once();
  }

  v2 = *algn_2800CCE88;
  v3 = qword_2800CCE90;
  v4 = unk_2800CCE98;
  *a1 = qword_2800CCE80;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_266D33094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657463656A6572 && a2 == 0xE800000000000000;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    else
    {
      v8 = sub_266DAB17C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_266D331B4(char a1)
{
  if (!a1)
  {
    return 0x656D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0x64657463656A6572;
  }

  return 0x656C6C65636E6163;
}

uint64_t sub_266D3320C(uint64_t a1)
{
  v2 = sub_266D3376C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D33248(uint64_t a1)
{
  v2 = sub_266D3376C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266D3328C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D33094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D332B4(uint64_t a1)
{
  v2 = sub_266D33718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D332F0(uint64_t a1)
{
  v2 = sub_266D33718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266D3332C(uint64_t a1)
{
  v2 = sub_266D33814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D33368(uint64_t a1)
{
  v2 = sub_266D33814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266D333A4(uint64_t a1)
{
  v2 = sub_266D337C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D333E0(uint64_t a1)
{
  v2 = sub_266D337C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DIConfirmationResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEA0, &qword_266DB9710);
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v45 = v5;
  v46 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v44 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEA8, &qword_266DB9718);
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v42 = v12;
  v43 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  v41 = &v38 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEB0, &qword_266DB9720);
  v18 = OUTLINED_FUNCTION_0_2(v17);
  v39 = v19;
  v40 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEB8, &qword_266DB9728);
  OUTLINED_FUNCTION_0_2(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v38 - v31;
  v33 = *v1;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D33718();
  sub_266DAB36C();
  if (v33)
  {
    if (v33 == 1)
    {
      v48 = 1;
      sub_266D337C0();
      v24 = v41;
      OUTLINED_FUNCTION_2_52();
      v36 = v42;
      v35 = v43;
    }

    else
    {
      v49 = 2;
      sub_266D3376C();
      v24 = v44;
      OUTLINED_FUNCTION_2_52();
      v36 = v45;
      v35 = v46;
    }
  }

  else
  {
    v47 = 0;
    sub_266D33814();
    OUTLINED_FUNCTION_2_52();
    v36 = v39;
    v35 = v40;
  }

  (*(v36 + 8))(v24, v35);
  return (*(v27 + 8))(v32, v25);
}

unint64_t sub_266D33718()
{
  result = qword_2800CCEC0;
  if (!qword_2800CCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCEC0);
  }

  return result;
}

unint64_t sub_266D3376C()
{
  result = qword_2800CCEC8;
  if (!qword_2800CCEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCEC8);
  }

  return result;
}

unint64_t sub_266D337C0()
{
  result = qword_2800CCED0;
  if (!qword_2800CCED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCED0);
  }

  return result;
}

unint64_t sub_266D33814()
{
  result = qword_2800CCED8;
  if (!qword_2800CCED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCED8);
  }

  return result;
}

uint64_t DIConfirmationResponse.hashValue.getter()
{
  v1 = *v0;
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](v1);
  return sub_266DAB2DC();
}

uint64_t DIConfirmationResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEE0, &qword_266DB9730);
  OUTLINED_FUNCTION_0_2(v71);
  v68 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v70 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEE8, &qword_266DB9738);
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v65 = v10;
  v66 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEF0, &qword_266DB9740);
  OUTLINED_FUNCTION_0_2(v16);
  v64 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEF8, &unk_266DB9748);
  OUTLINED_FUNCTION_0_2(v23);
  v69 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v59 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D33718();
  v31 = v72;
  sub_266DAB34C();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v61 = v16;
  v62 = v22;
  v63 = v15;
  v33 = v70;
  v32 = v71;
  v72 = a1;
  v34 = sub_266DAB06C();
  result = sub_266C1E2FC(v34, 0);
  if (v37 == v38 >> 1)
  {
    goto LABEL_9;
  }

  v60 = 0;
  if (v37 >= (v38 >> 1))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v39) = *(v36 + v37);
    sub_266C1E2EC(v37 + 1);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v44 = v41 == v43 >> 1;
    v45 = v68;
    if (!v44)
    {
LABEL_9:
      v50 = sub_266DAAE4C();
      swift_allocError();
      v52 = v51;
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9908, &qword_266DAD8C0) + 48);
      *v52 = &type metadata for DIConfirmationResponse;
      sub_266DAAFBC();
      sub_266DAAE3C();
      (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v69 + 8))(v29, v23);
      a1 = v72;
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    if (v39)
    {
      if (v39 == 1)
      {
        v74 = 1;
        sub_266D337C0();
        v46 = v63;
        OUTLINED_FUNCTION_4_43();
        v47 = v67;
        v48 = v23;
        v49 = v69;
        swift_unknownObjectRelease();
        (*(v65 + 8))(v46, v66);
        (*(v49 + 8))(v29, v48);
      }

      else
      {
        LODWORD(v66) = v39;
        v75 = 2;
        sub_266D3376C();
        v55 = v60;
        sub_266DAAFAC();
        v47 = v67;
        v39 = v23;
        v56 = v69;
        if (v55)
        {
          (*(v69 + 8))(v29, v39);
          swift_unknownObjectRelease();
          a1 = v72;
          return __swift_destroy_boxed_opaque_existential_0(a1);
        }

        swift_unknownObjectRelease();
        (*(v45 + 8))(v33, v32);
        (*(v56 + 8))(v29, v39);
        LOBYTE(v39) = v66;
      }
    }

    else
    {
      v73 = 0;
      sub_266D33814();
      v54 = v62;
      OUTLINED_FUNCTION_4_43();
      swift_unknownObjectRelease();
      (*(v64 + 8))(v54, v61);
      v57 = OUTLINED_FUNCTION_3_44();
      v58(v57);
      v47 = v67;
    }

    *v47 = v39;
    return __swift_destroy_boxed_opaque_existential_0(v72);
  }

  return result;
}

unint64_t sub_266D33ED4()
{
  result = qword_2800CCF00;
  if (!qword_2800CCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF00);
  }

  return result;
}

unint64_t sub_266D33F28(void *a1)
{
  a1[1] = sub_266D33F60();
  a1[2] = sub_266D33FB4();
  result = sub_266D33ED4();
  a1[3] = result;
  return result;
}

unint64_t sub_266D33F60()
{
  result = qword_2800CCF08;
  if (!qword_2800CCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF08);
  }

  return result;
}

unint64_t sub_266D33FB4()
{
  result = qword_2800CCF10;
  if (!qword_2800CCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF10);
  }

  return result;
}

_BYTE *sub_266D34018(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266D34128()
{
  result = qword_2800CCF18;
  if (!qword_2800CCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF18);
  }

  return result;
}

unint64_t sub_266D34180()
{
  result = qword_2800CCF20;
  if (!qword_2800CCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF20);
  }

  return result;
}

unint64_t sub_266D341D8()
{
  result = qword_2800CCF28;
  if (!qword_2800CCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF28);
  }

  return result;
}

unint64_t sub_266D34230()
{
  result = qword_2800CCF30;
  if (!qword_2800CCF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF30);
  }

  return result;
}

unint64_t sub_266D34288()
{
  result = qword_2800CCF38;
  if (!qword_2800CCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF38);
  }

  return result;
}

unint64_t sub_266D342E0()
{
  result = qword_2800CCF40;
  if (!qword_2800CCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF40);
  }

  return result;
}

unint64_t sub_266D34338()
{
  result = qword_2800CCF48;
  if (!qword_2800CCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF48);
  }

  return result;
}

unint64_t sub_266D34390()
{
  result = qword_2800CCF50;
  if (!qword_2800CCF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF50);
  }

  return result;
}

unint64_t sub_266D343E8()
{
  result = qword_2800CCF58[0];
  if (!qword_2800CCF58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800CCF58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_52()
{

  return sub_266DAB08C();
}

uint64_t OUTLINED_FUNCTION_4_43()
{
  v2 = *(v0 - 184);

  return sub_266DAAFAC();
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy20FriendRecommendationO(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) <= 4)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_266D344B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 9))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266D344F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_266D34538(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_266D34560(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        return 0;
      }

      goto LABEL_11;
    case 2:
      if (a4 != 2)
      {
        return 0;
      }

      goto LABEL_9;
    case 3:
      if (a4 == 3)
      {
        goto LABEL_9;
      }

      return 0;
    case 4:
      if (a4 != 4)
      {
        return 0;
      }

LABEL_11:

      return sub_266D71E20(a1, a3);
    case 5:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a4 != 5 || a3 != 1)
          {
            return 0;
          }
        }

        else if (a4 != 5 || a3 != 2)
        {
          return 0;
        }

        return 1;
      }

      return a4 == 5 && !a3;
    default:
      if (a4)
      {
        return 0;
      }

LABEL_9:
      sub_266D34690();
      return sub_266DAABFC() & 1;
  }
}

unint64_t sub_266D34690()
{
  result = qword_28156EFA8;
  if (!qword_28156EFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156EFA8);
  }

  return result;
}

void sub_266D3473C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, uint64_t, void *, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_6();
  v22 = v21;
  v51 = v24;
  v52 = v23;
  v26 = v25;
  v28 = v27;
  v54 = v29;
  v31 = v30;
  v33 = v32;
  v53 = v34;
  v35 = sub_266DA947C();
  OUTLINED_FUNCTION_1_5();
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_0_6();
  v43 = v42 - v41;
  OUTLINED_FUNCTION_1_5();
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_0_6();
  v49 = v48 - v47;
  (*(v50 + 16))(v48 - v47, v22, v26);
  (*(v37 + 16))(v43, v28, v35);
  a21(v49, v33, v31, v52, v53, v54, v43, v26, v51);
  OUTLINED_FUNCTION_5();
}

void sub_266D34940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(void, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_6();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = a22(0, v22, a21);
  v41 = v39 + v40[12];
  sub_266DA946C();
  v42 = sub_266DA947C();
  (*(*(v42 - 8) + 8))(v25, v42);
  (*(*(v23 - 8) + 32))(v39, v37, v23);
  v43 = v39 + v40[11];
  *v43 = v31;
  *(v43 + 8) = v29;
  *(v43 + 16) = v27;
  *(v39 + v40[9]) = v35;
  *(v39 + v40[10]) = v33;
  OUTLINED_FUNCTION_5();
}

void Publishers.Signpost.receive<A>(subscriber:)()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  sub_266DA947C();
  OUTLINED_FUNCTION_1_5();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5();
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v23 = *(v2 + 16);
  v24 = *(v2 + 24);
  _s8SignpostV5InnerCMa();
  v11 = OUTLINED_FUNCTION_2_53();
  v12(v11);
  v13 = *(v0 + *(v2 + 36));
  v14 = *(v0 + *(v2 + 40));
  v15 = *(v2 + 48);
  v16 = (v0 + *(v2 + 44));
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v4 + 16);
  v20 = OUTLINED_FUNCTION_6_31(v16);
  v21(v20);
  v22 = v14;
  OUTLINED_FUNCTION_5_36();
  sub_266D34C4C();
  swift_getWitnessTable();
  sub_266DA992C();

  OUTLINED_FUNCTION_5();
}

uint64_t *sub_266D34C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v15 = *v7;
  v16 = *(*v7 + 152);
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v7 + v16) = v17;
  v18 = v7 + *(*v7 + 160);
  *(v18 + 32) = 0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  (*(*(*(v15 + 88) - 8) + 32))(v7 + *(*v7 + 112), a1);
  *(v7 + *(*v7 + 120)) = a2;
  *(v7 + *(*v7 + 128)) = a3;
  v19 = v7 + *(*v7 + 136);
  *v19 = a4;
  *(v19 + 8) = a5;
  *(v19 + 16) = a6;
  v20 = *(*v7 + 144);
  v21 = sub_266DA947C();
  (*(*(v21 - 8) + 32))(v7 + v20, a7, v21);
  return v7;
}

uint64_t *sub_266D34E08()
{
  v1 = *v0;
  v2 = *v0;
  MEMORY[0x26D5F2480](*(v0 + *(*v0 + 152)), -1, -1);
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 112), *(v1 + 88));

  v3 = *(*v0 + 144);
  v4 = sub_266DA947C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 160);
  v8 = *(v1 + 80);
  v9 = *(v2 + 96);
  v6 = _s8SignpostV5InnerC18SubscriptionStatusOMa();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_266D34FF0()
{
  v1 = *v0;
  v2 = sub_266DAB2FC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD260, &qword_266DBA148);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  v13 = v0;
  v10 = sub_266DAB2EC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  sub_266D35138(v5);

  return sub_266DAB30C();
}

uint64_t sub_266D35138@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D84C38];
  v3 = sub_266DAB2FC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_266D351AC(void *a1@<X8>)
{
  a1[3] = MEMORY[0x277D837D0];
  *a1 = 0x74736F706E676953;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_266D351D4(void *a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(v5);
  v6 = *(*v1 + 160);
  swift_beginAccess();
  v7 = *(v3 + 80);
  v8 = *(v3 + 104);
  v23 = v7;
  v24 = *(v4 + 88);
  v25 = v8;
  v9 = _s8SignpostV5InnerC18SubscriptionStatusOMa();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v23, v1 + v6, v9);
  v11 = v25;
  (*(v10 + 8))(&v23, v9);
  if (v11)
  {
    os_unfair_lock_unlock(v5);
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = *(v12 + 8);
    return sub_266DA963C();
  }

  else
  {
    sub_266C233D0(a1, &v23);
    swift_beginAccess();
    (*(v10 + 40))(v1 + v6, &v23, v9);
    swift_endAccess();
    os_unfair_lock_unlock(v5);
    sub_266DAABDC();
    v15 = *(v1 + *(*v1 + 120));
    v16 = *(v1 + *(*v1 + 128));
    v17 = v1 + *(*v1 + 136);
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(*v1 + 144);
    v21 = *(v17 + 16);
    sub_266DA945C();
    v22 = *(*v1 + 112);
    v25 = v4;
    WitnessTable = swift_getWitnessTable();
    v23 = v1;

    sub_266DA961C();
    return __swift_destroy_boxed_opaque_existential_0(&v23);
  }
}

uint64_t sub_266D35498()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 104);
  v3 = v0 + *(*v0 + 112);
  return sub_266DA962C();
}

void sub_266D354FC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(v3);
  v4 = *(*v0 + 160);
  swift_beginAccess();
  v5 = *(v1 + 80);
  v6 = *(v1 + 104);
  v18 = v5;
  v19 = *(v2 + 88);
  *&v20 = v6;
  v7 = _s8SignpostV5InnerC18SubscriptionStatusOMa();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v18, v0 + v4, v7);
  v9 = v20;
  (*(v8 + 8))(&v18, v7);
  if (v9 >= 2)
  {
    v18 = 0;
    v19 = 0uLL;
    v20 = xmmword_266DB3600;
    swift_beginAccess();
    (*(v8 + 40))(v0 + v4, &v18, v7);
    swift_endAccess();
    os_unfair_lock_unlock(v3);
    sub_266DAABCC();
    v10 = *(v0 + *(*v0 + 120));
    v11 = *(v0 + *(*v0 + 128));
    v12 = (v0 + *(*v0 + 136));
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*v0 + 144);
    v16 = *(v12 + 16);
    sub_266DA945C();
    v17 = v0 + *(*v0 + 112);
    sub_266DA960C();
  }

  else
  {
    os_unfair_lock_unlock(v3);
  }
}

void sub_266D3576C()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(v2);
  v3 = *(*v0 + 160);
  swift_beginAccess();
  v6 = *(v1 + 80);
  v7 = *(v1 + 96);
  v4 = _s8SignpostV5InnerC18SubscriptionStatusOMa();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v8, v0 + v3, v4);
  if (v9 >= 2)
  {
    sub_266C0B0D8(&v8, v10);
    os_unfair_lock_unlock(v2);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_266DA967C();
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    (*(v5 + 8))(&v8, v4);
    os_unfair_lock_unlock(v2);
  }
}

void sub_266D358E8()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(v2);
  v3 = *(*v0 + 160);
  swift_beginAccess();
  v15 = *(v1 + 80);
  v16 = *(v1 + 96);
  v4 = _s8SignpostV5InnerC18SubscriptionStatusOMa();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v17, v0 + v3, v4);
  if (v19 >= 2)
  {
    sub_266C0B0D8(&v17, v20);
    v17 = 0uLL;
    v18 = 0;
    v19 = xmmword_266DB3600;
    swift_beginAccess();
    (*(v5 + 40))(v0 + v3, &v17, v4);
    swift_endAccess();
    os_unfair_lock_unlock(v2);
    sub_266DAABCC();
    v6 = *(v0 + *(*v0 + 120));
    v7 = *(v0 + *(*v0 + 128));
    v8 = (v0 + *(*v0 + 136));
    v9 = *v8;
    v10 = v8[1];
    v11 = *(*v0 + 144);
    v12 = *(v8 + 16);
    sub_266DA945C();
    v13 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v14 = *(v13 + 8);
    sub_266DA963C();
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    (*(v5 + 8))(&v17, v4);
    os_unfair_lock_unlock(v2);
  }
}

uint64_t Publishers.SignpostFirst.name.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return result;
}

uint64_t sub_266D35C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_266DA947C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void Publishers.SignpostFirst.receive<A>(subscriber:)()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  sub_266DA947C();
  OUTLINED_FUNCTION_1_5();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5();
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v23 = *(v2 + 24);
  v24 = *(v2 + 16);
  _s13SignpostFirstV5InnerCMa();
  v11 = OUTLINED_FUNCTION_2_53();
  v12(v11);
  v13 = *(v0 + *(v2 + 36));
  v14 = *(v0 + *(v2 + 40));
  v15 = *(v2 + 48);
  v16 = (v0 + *(v2 + 44));
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v4 + 16);
  v20 = OUTLINED_FUNCTION_6_31(v16);
  v21(v20);
  v22 = v14;
  OUTLINED_FUNCTION_5_36();
  sub_266D35ED4();
  swift_getWitnessTable();
  sub_266DA97DC();

  OUTLINED_FUNCTION_5();
}

void sub_266D35EEC()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v0 + 48);
  v18 = *(v0 + 52);
  swift_allocObject();
  v2(v16, v14, v12, v10, v8, v6, v4);
  OUTLINED_FUNCTION_5();
}

BOOL sub_266D35F70(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_266C0AD88(*a1, *a2);
}

uint64_t sub_266D35F88(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_266C1AE58(*v1);
}

uint64_t sub_266D35F98(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_266C16154(a1, *v2);
}

uint64_t sub_266D35FA8(uint64_t a1, void *a2)
{
  sub_266DAB2AC();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_266C16154(v9, *v2);
  return sub_266DAB2DC();
}

uint64_t *sub_266D35FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v15 = *v7;
  *(v7 + *(*v7 + 152)) = 0;
  v16 = *(*v7 + 160);
  v17 = swift_slowAlloc();
  *(v7 + v16) = v17;
  *v17 = 0;
  (*(*(*(v15 + 88) - 8) + 32))(v7 + *(*v7 + 112), a1);
  *(v7 + *(*v7 + 120)) = a2;
  *(v7 + *(*v7 + 128)) = a3;
  v18 = v7 + *(*v7 + 136);
  *v18 = a4;
  *(v18 + 8) = a5;
  *(v18 + 16) = a6;
  v19 = *(*v7 + 144);
  v20 = sub_266DA947C();
  (*(*(v20 - 8) + 32))(v7 + v19, a7, v20);
  return v7;
}

uint64_t sub_266D3618C()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 160));
  os_unfair_lock_lock(v2);
  v3 = *(*v0 + 152);
  if (!*(v0 + v3))
  {
    sub_266DAABDC();
    v4 = *(v0 + *(*v0 + 120));
    v5 = *(v0 + *(*v0 + 128));
    v6 = (v0 + *(*v0 + 136));
    v7 = *v6;
    v8 = v6[1];
    v9 = *(*v0 + 144);
    v10 = *(v6 + 16);
    sub_266DA945C();
    *(v0 + v3) = 1;
  }

  os_unfair_lock_unlock(v2);
  v11 = *(v1 + 88);
  v12 = *(v1 + 104);
  v13 = v0 + *(*v0 + 112);
  return sub_266DA961C();
}

uint64_t sub_266D362D0()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 160));
  os_unfair_lock_lock(v2);
  v3 = *(*v0 + 152);
  if (*(v0 + v3) == 1)
  {
    sub_266DAABCC();
    v4 = *(v0 + *(*v0 + 120));
    v5 = *(v0 + *(*v0 + 128));
    v6 = (v0 + *(*v0 + 136));
    v7 = *v6;
    v8 = v6[1];
    v9 = *(*v0 + 144);
    v10 = *(v6 + 16);
    sub_266DA945C();
    *(v0 + v3) = 2;
  }

  os_unfair_lock_unlock(v2);
  v11 = *(v1 + 88);
  v12 = *(v1 + 104);
  v13 = v0 + *(*v0 + 112);
  return sub_266DA962C();
}

uint64_t sub_266D36418()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 104);
  v3 = v0 + *(*v0 + 112);
  return sub_266DA960C();
}

uint64_t sub_266D3647C()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 112));

  v1 = *(*v0 + 144);
  v2 = sub_266DA947C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_266D36574(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

unint64_t sub_266D36664(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_266C18E7C();
    if (v4 <= 0x3F)
    {
      result = sub_266DA947C();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_266D36714(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_266DA947C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  v16 = v14 + 17;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v17 = ((v16 + ((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(*(v8 - 8) + 64);
  v18 = 8 * v17;
  if (v17 > 3)
  {
    goto LABEL_10;
  }

  v21 = ((a2 - v12 + ~(-1 << v18)) >> v18) + 1;
  if (HIWORD(v21))
  {
    v19 = *(a1 + v17);
    if (v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v21 <= 0xFF)
    {
      if (v21 < 2)
      {
        goto LABEL_28;
      }

LABEL_10:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_28;
      }

LABEL_18:
      v22 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v22 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v23 = v17;
        }

        else
        {
          v23 = 4;
        }

        switch(v23)
        {
          case 2:
            v24 = *a1;
            break;
          case 3:
            v24 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v24 = *a1;
            break;
          default:
            v24 = *a1;
            break;
        }
      }

      else
      {
        v24 = 0;
      }

      return v12 + (v24 | v22) + 1;
    }

    v19 = *(a1 + v17);
    if (*(a1 + v17))
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  if (v7 == v12)
  {
    v25 = a1;
    v10 = v7;
    v15 = v5;
LABEL_35:

    return __swift_getEnumTagSinglePayload(v25, v10, v15);
  }

  v26 = ((((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v25 = (v16 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14;
    goto LABEL_35;
  }

  v27 = *v26;
  if (*v26 >= 0xFFFFFFFF)
  {
    LODWORD(v27) = -1;
  }

  return (v27 + 1);
}

void sub_266D36990(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_266DA947C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = ((v16 + 17 + ((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + *(*(v10 - 8) + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_51:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v9 == v14)
        {
          v25 = a1;
          v26 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v27 = (((&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v13 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v28 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v28 = (a2 - 1);
            }

            *v27 = v28;
            return;
          }

          v25 = (v16 + 17 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
          v26 = a2;
        }

        __swift_storeEnumTagSinglePayload(v25, v26, v12, v10);
        break;
    }
  }

  else
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        break;
      case 2:
        *&a1[v17] = v21;
        break;
      case 3:
        goto LABEL_51;
      case 4:
        *&a1[v17] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_266D36CB0(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_266DA947C();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_BYTE *sub_266D36DB8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266D36E9C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_7Combine10PublishersO10SiriFindMyE8SignpostV5Inner33_EC64DE80AC3D8DD78B8FD84640A7AB55LLC18SubscriptionStatusOy_x_qd___G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_6_31@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  result = v1;
  v5 = *(v2 - 120);
  return result;
}

uint64_t sub_266D37014()
{
  OUTLINED_FUNCTION_7_30();
  OUTLINED_FUNCTION_12_21();
  return sub_266DAB2DC();
}

uint64_t sub_266D370D0(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_7_30();
  a2(a1);
  OUTLINED_FUNCTION_9_19();

  return sub_266DAB2DC();
}

uint64_t sub_266D37194()
{
  OUTLINED_FUNCTION_7_30();
  OUTLINED_FUNCTION_3_45();
  return sub_266DAB2DC();
}

uint64_t sub_266D3722C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_7_30();
  a2(v5, a1);
  return sub_266DAB2DC();
}

uint64_t sub_266D37274(uint64_t a1)
{
  OUTLINED_FUNCTION_7_30();
  MEMORY[0x26D5F1C20](a1);
  return sub_266DAB2DC();
}

uint64_t sub_266D372D0(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_11_24();
  }

  sub_266DAA7BC();
}

uint64_t sub_266D37348(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_2_54();
  }

  else
  {
    OUTLINED_FUNCTION_1_49();
  }

  sub_266DAA7BC();
}

uint64_t sub_266D373B8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_1_49();
      break;
    default:
      break;
  }

  sub_266DAA7BC();
}

uint64_t sub_266D374B8()
{
  OUTLINED_FUNCTION_5_37();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      OUTLINED_FUNCTION_5_37();
      break;
    default:
      break;
  }

  sub_266DAA7BC();
}

uint64_t sub_266D37598(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_1_49();
      break;
  }

  sub_266DAA7BC();
}

uint64_t sub_266D37664()
{
  sub_266DAA7BC();
}

uint64_t sub_266D376BC()
{
  sub_266DAA7BC();
}

uint64_t sub_266D37764(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
    case 4:
      OUTLINED_FUNCTION_1_49();
      break;
    default:
      break;
  }

  sub_266DAA7BC();
}

uint64_t sub_266D37824()
{
  sub_266DAA7BC();
}

uint64_t sub_266D3787C()
{
  sub_266DAA7BC();
}

uint64_t sub_266D378DC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 5:
      OUTLINED_FUNCTION_1_49();
      break;
    default:
      break;
  }

  sub_266DAA7BC();
}

uint64_t sub_266D379C4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 7:
      OUTLINED_FUNCTION_1_49();
      break;
    default:
      break;
  }

  sub_266DAA7BC();
}

uint64_t sub_266D37B00()
{
  sub_266DAA7BC();
}

uint64_t sub_266D37B74(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_266DAA7BC();
}

uint64_t sub_266D37BDC()
{
  sub_266DAA7BC();
}

uint64_t sub_266D37C24()
{
  sub_266DAA7BC();
}

uint64_t sub_266D37C8C()
{
  sub_266DAA7BC();
}

uint64_t sub_266D37D84()
{
  sub_266DAB2AC();
  OUTLINED_FUNCTION_3_45();
  return sub_266DAB2DC();
}

uint64_t sub_266D37DC4()
{
  OUTLINED_FUNCTION_4_44();
  sub_266DAA7BC();

  return sub_266DAB2DC();
}

uint64_t sub_266D37E38()
{
  OUTLINED_FUNCTION_4_44();
  sub_266DAA7BC();

  return sub_266DAB2DC();
}

uint64_t sub_266D37EBC()
{
  OUTLINED_FUNCTION_4_44();
  OUTLINED_FUNCTION_6_32();

  return sub_266DAB2DC();
}

uint64_t sub_266D37F4C()
{
  OUTLINED_FUNCTION_4_44();
  OUTLINED_FUNCTION_6_32();

  return sub_266DAB2DC();
}

uint64_t sub_266D37FC4()
{
  OUTLINED_FUNCTION_4_44();
  OUTLINED_FUNCTION_6_32();

  return sub_266DAB2DC();
}

uint64_t sub_266D38028()
{
  OUTLINED_FUNCTION_4_44();
  OUTLINED_FUNCTION_6_32();

  return sub_266DAB2DC();
}

uint64_t sub_266D380B4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_266DAB2AC();
  a3(a2);
  OUTLINED_FUNCTION_9_19();

  return sub_266DAB2DC();
}

uint64_t sub_266D38108()
{
  sub_266DAB2AC();
  OUTLINED_FUNCTION_12_21();
  return sub_266DAB2DC();
}

uint64_t sub_266D38144()
{
  OUTLINED_FUNCTION_4_44();
  OUTLINED_FUNCTION_6_32();

  return sub_266DAB2DC();
}

uint64_t sub_266D381C0()
{
  OUTLINED_FUNCTION_4_44();
  sub_266DAA7BC();

  return sub_266DAB2DC();
}

uint64_t sub_266D3828C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_266DAB2AC();
  a3(v6, a2);
  return sub_266DAB2DC();
}

uint64_t sub_266D382D8()
{
  OUTLINED_FUNCTION_4_44();
  if (v0)
  {
    OUTLINED_FUNCTION_2_54();
  }

  else
  {
    OUTLINED_FUNCTION_1_49();
  }

  OUTLINED_FUNCTION_6_32();

  return sub_266DAB2DC();
}

uint64_t sub_266D3834C()
{
  OUTLINED_FUNCTION_4_44();
  if (!v0)
  {
    OUTLINED_FUNCTION_11_24();
  }

  OUTLINED_FUNCTION_6_32();

  return sub_266DAB2DC();
}

uint64_t sub_266D383C8(uint64_t a1, uint64_t a2)
{
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](a2);
  return sub_266DAB2DC();
}

void sub_266D3840C()
{
  qword_2800CD268 = 0xD000000000000027;
  unk_2800CD270 = 0x8000000266DC37F0;
  qword_2800CD278 = 0xD000000000000018;
  unk_2800CD280 = 0x8000000266DC2510;
}

uint64_t static SetSharedLocationVisibilityInvocation.identifier.getter@<X0>(void *a1@<X8>)
{
  if (qword_2800C9408 != -1)
  {
    swift_once();
  }

  v2 = unk_2800CD270;
  v3 = qword_2800CD278;
  v4 = unk_2800CD280;
  *a1 = qword_2800CD268;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

BOOL sub_266D384DC()
{
  v0 = sub_266DAAF8C();

  return v0 != 0;
}

BOOL sub_266D38588@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266D384DC();
  *a2 = result;
  return result;
}

BOOL sub_266D385F8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_266D384DC();
  *a1 = result;
  return result;
}

uint64_t sub_266D38624(uint64_t a1)
{
  v2 = sub_266D38830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D38660(uint64_t a1)
{
  v2 = sub_266D38830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetSharedLocationVisibilityInvocation.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD288, &qword_266DBA150);
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D38830();
  sub_266DAB34C();
  if (!v2)
  {
    v14 = sub_266DAB04C();
    v15 = SharedLocationVisibility.init(rawValue:)(v14);
    if (v16)
    {
      sub_266D38884();
      swift_allocError();
      swift_willThrow();
      (*(v8 + 8))(v12, v5);
    }

    else
    {
      v18 = v15;
      (*(v8 + 8))(v12, v5);
      *a2 = v18;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_266D38830()
{
  result = qword_2800CD290;
  if (!qword_2800CD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD290);
  }

  return result;
}

unint64_t sub_266D38884()
{
  result = qword_2800CD298;
  if (!qword_2800CD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD298);
  }

  return result;
}

uint64_t SetSharedLocationVisibilityInvocation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD2A0, &qword_266DBA158);
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D38830();
  sub_266DAB36C();
  sub_266DAB0CC();
  return (*(v6 + 8))(v10, v3);
}

uint64_t sub_266D38A08()
{
  OUTLINED_FUNCTION_7_30();
  MEMORY[0x26D5F1C20](0);
  return sub_266DAB2DC();
}

unint64_t sub_266D38A94(void *a1)
{
  a1[1] = sub_266D38ACC();
  a1[2] = sub_266D38B20();
  result = sub_266D38B74();
  a1[3] = result;
  return result;
}

unint64_t sub_266D38ACC()
{
  result = qword_2800CD2A8;
  if (!qword_2800CD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2A8);
  }

  return result;
}

unint64_t sub_266D38B20()
{
  result = qword_2800CD2B0;
  if (!qword_2800CD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2B0);
  }

  return result;
}

unint64_t sub_266D38B74()
{
  result = qword_2800CD2B8;
  if (!qword_2800CD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SetSharedLocationVisibilityInvocation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SetSharedLocationVisibilityInvocation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

_BYTE *sub_266D38C28(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_266D38CD4()
{
  result = qword_2800CD2C0;
  if (!qword_2800CD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2C0);
  }

  return result;
}

unint64_t sub_266D38D2C()
{
  result = qword_2800CD2C8;
  if (!qword_2800CD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2C8);
  }

  return result;
}

unint64_t sub_266D38D84()
{
  result = qword_2800CD2D0;
  if (!qword_2800CD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2D0);
  }

  return result;
}

unint64_t sub_266D38DDC()
{
  result = qword_2800CD2D8;
  if (!qword_2800CD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_45()
{

  return sub_266DAA7BC();
}

uint64_t OUTLINED_FUNCTION_4_44()
{

  return sub_266DAB2AC();
}

uint64_t OUTLINED_FUNCTION_6_32()
{

  return sub_266DAA7BC();
}

uint64_t OUTLINED_FUNCTION_7_30()
{

  return sub_266DAB2AC();
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return sub_266DAA7BC();
}

void OUTLINED_FUNCTION_12_21()
{

  JUMPOUT(0x26D5F1C20);
}

uint64_t sub_266D38F44()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_28156F8A8);
  OUTLINED_FUNCTION_94(v0, qword_28156F8A8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v1 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v2 = *(*(v0 - 8) + 16);

  return v2(qword_28156F8A8, v1, v0);
}

uint64_t CacheEntry.evictionTime.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_266D3904C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697463697665 && a2 == 0xEC000000656D6954;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266D39114(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6E6F697463697665;
  }
}

BOOL sub_266D39150(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_266C0ADF4(*a1, *a2);
}

uint64_t sub_266D39168(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_266C1CA18(*v1);
}

uint64_t sub_266D3917C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_266C0AE04(a1, *v2);
}

uint64_t sub_266D39190(uint64_t a1, void *a2)
{
  sub_266DAB2AC();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_266C0AE04(v8, *v2);
  return sub_266DAB2DC();
}

uint64_t sub_266D391DC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_266D39114(*v1);
}

uint64_t sub_266D391F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_266D3904C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_266D39224(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return sub_266C1AAF0();
}

uint64_t sub_266D39250@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_266C1B114();
  *a2 = result;
  return result;
}

uint64_t sub_266D39284(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_266D392D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CacheEntry.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v21[0] = *(a2 + 32);
  v21[1] = v4;
  type metadata accessor for CacheEntry.CodingKeys();
  OUTLINED_FUNCTION_2_55();
  v6 = sub_266DAB12C();
  OUTLINED_FUNCTION_0_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v21[2];
  sub_266DAB36C();
  v16 = *v15;
  v17 = *(v15 + 8);
  v23 = 0;
  v18 = v21[3];
  sub_266DAB0BC();
  if (!v18)
  {
    v19 = *(a2 + 44);
    v22 = 1;
    sub_266DAB11C();
  }

  return (*(v8 + 8))(v13, v6);
}

uint64_t CacheEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v34 = *(a2 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](a1);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CacheEntry.CodingKeys();
  OUTLINED_FUNCTION_2_55();
  v41 = sub_266DAB07C();
  OUTLINED_FUNCTION_0_2(v41);
  v36 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v38 = a2;
  v39 = a3;
  v15 = type metadata accessor for CacheEntry();
  OUTLINED_FUNCTION_0_2(v15);
  v33 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v14;
  v23 = v42;
  sub_266DAB34C();
  if (!v23)
  {
    v24 = v38;
    v42 = v15;
    v25 = v36;
    v26 = v37;
    v44 = 0;
    v27 = v21;
    *v21 = sub_266DAAFEC();
    v21[8] = v28 & 1;
    v43 = 1;
    v29 = v26;
    v30 = v24;
    sub_266DAB05C();
    (*(v25 + 8))(v40, v41);
    v32 = v42;
    (*(v34 + 32))(&v27[*(v42 + 44)], v29, v30);
    (*(v33 + 32))(v35, v27, v32);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_266D39820@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = type metadata accessor for CacheEntry();
  v7 = sub_266DAAC1C();
  OUTLINED_FUNCTION_0_2(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  if ((*(v1 + qword_28156FB58) & 1) != 0 || (v13 = [objc_opt_self() defaultManager], sub_266DA735C(), v14 = sub_266DAA6FC(), , v15 = objc_msgSend(v13, sel_fileExistsAtPath_, v14), v13, v14, !v15))
  {
    if (qword_28156F8A0 != -1)
    {
      OUTLINED_FUNCTION_0_68();
    }

    v16 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v16, qword_28156F8A8);

    v17 = sub_266DA948C();
    v18 = sub_266DAAB0C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_14_0();
      v20 = OUTLINED_FUNCTION_13_0();
      v44 = v20;
      *v19 = 136315138;
      v21 = sub_266DA735C();
      sub_266C22A3C(v21, v22, &v44);
      OUTLINED_FUNCTION_9_20();
      *(v19 + 4) = v2;
      _os_log_impl(&dword_266C08000, v17, v18, "Cache file %s does not exist", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    OUTLINED_FUNCTION_5_38();

    return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }

  else
  {
    v27 = sub_266DA738C();
    v29 = v28;
    v30 = sub_266DA6FEC();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    sub_266DA6FDC();
    swift_getWitnessTable();
    sub_266DA6FCC();
    sub_266C2BB04(v27, v29);

    OUTLINED_FUNCTION_5_38();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    (*(*(v6 - 8) + 32))(v43, v12, v6);
    OUTLINED_FUNCTION_5_38();
    return __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  }
}

void sub_266D39DAC()
{
  v1 = *v0;
  v2 = sub_266DA701C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_266DA700C();
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  type metadata accessor for CacheEntry();
  swift_getWitnessTable();
  v8 = sub_266DA6FFC();
  v10 = v9;
  sub_266DA73DC();
  *(v0 + qword_28156FB58) = 0;
  if (qword_28156F8A0 != -1)
  {
    OUTLINED_FUNCTION_0_68();
  }

  v11 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v11, qword_28156F8A8);

  v12 = sub_266DA948C();
  v13 = sub_266DAAB0C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_14_0();
    v15 = OUTLINED_FUNCTION_13_0();
    v20 = v15;
    *v14 = 136315138;
    v16 = sub_266DA735C();
    v18 = sub_266C22A3C(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_266C08000, v12, v13, "Wrote cache to %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
    sub_266C2BB04(v8, v10);

    OUTLINED_FUNCTION_22_7();
  }

  else
  {
    sub_266C2BB04(v8, v10);

    OUTLINED_FUNCTION_22_7();
  }
}

void sub_266D3A1A8()
{
  v2 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v4 = [v3 defaultManager];
  sub_266DA735C();
  sub_266DAA6FC();
  OUTLINED_FUNCTION_9_20();
  v5 = [v4 fileExistsAtPath_];

  if (!v5)
  {
LABEL_11:
    v25 = *MEMORY[0x277D85DE8];
    return;
  }

  *(v2 + qword_28156FB58) = 1;
  v6 = [v3 defaultManager];
  v7 = sub_266DA732C();
  v26[0] = 0;
  v8 = [v6 removeItemAtURL:v7 error:v26];

  v9 = v26[0];
  if (!v8)
  {
    v12 = v26[0];
    v13 = sub_266DA72FC();

    swift_willThrow();
    if (qword_28156F8A0 != -1)
    {
      OUTLINED_FUNCTION_0_68();
    }

    v14 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v14, qword_28156F8A8);

    v15 = v13;
    v16 = sub_266DA948C();
    v17 = sub_266DAAAFC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      *v18 = 136315394;
      v19 = sub_266DA735C();
      v21 = sub_266C22A3C(v19, v20, v26);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2082;
      swift_getErrorValue();
      v22 = sub_266DAB23C();
      v24 = sub_266C22A3C(v22, v23, v26);

      *(v18 + 14) = v24;
      _os_log_impl(&dword_266C08000, v16, v17, "Could not delete the cache file at %s due to %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {
    }

    goto LABEL_11;
  }

  v10 = *MEMORY[0x277D85DE8];

  v11 = v9;
}

uint64_t DiskCacher.deinit()
{
  v1 = *(v0 + 24);

  v2 = qword_28156FB50;
  v3 = sub_266DA737C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t DiskCacher.__deallocating_deinit()
{
  DiskCacher.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_266D3A600(uint64_t a1)
{
  sub_266D3AA08();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_266D3A688(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload((a1 + v7 + 9) & ~v7, v6, v4);
  }

  v9 = ((v7 + 9) & ~v7) + *(*(v4 - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 9) & ~v7, v6, v4);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_19;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return v6 + (v9 | v13) + 1;
}

void sub_266D3A7E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 9) & ~v9) + *(v7 + 64);
  v11 = 8 * v10;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          v20 = &a1[v9 + 9] & ~v9;

          __swift_storeEnumTagSinglePayload(v20, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v10)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_266D3AA08()
{
  if (!qword_28156EFE0)
  {
    v0 = sub_266DAAC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_28156EFE0);
    }
  }
}

uint64_t sub_266D3AA94()
{
  result = sub_266DA737C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *sub_266D3ABD4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_68()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_55()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_9_20()
{
}

uint64_t static Snippets.carPlayFriendLocation(friend:userLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  OUTLINED_FUNCTION_2_56();
  sub_266D3BA78(a1, a3);
  sub_266C36200(a2, v11);
  v12 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
  v13 = type metadata accessor for Location();
  __swift_storeEnumTagSinglePayload(a3 + v12, 1, 1, v13);
  sub_266C25700(v11, a3 + v12);
  type metadata accessor for Snippets();
  return swift_storeEnumTagMultiPayload();
}

uint64_t Snippets.CarPlayFriendLocation.init(friend:userLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
  v7 = type metadata accessor for Location();
  __swift_storeEnumTagSinglePayload(a3 + v6, 1, 1, v7);
  OUTLINED_FUNCTION_1_50();
  sub_266D3B2E0(a1, a3);

  return sub_266C25700(a2, a3 + v6);
}

uint64_t type metadata accessor for Snippets.CarPlayFriendLocation()
{
  result = qword_2800CD320;
  if (!qword_2800CD320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D3AF48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Snippets.CarPlayFriendLocation.userLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);

  return sub_266C36200(v3, a1);
}

uint64_t Snippets.CarPlayFriendLocation.userLocation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);

  return sub_266C25700(a1, v3);
}

BOOL static Snippets.CarPlayFriendLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD2E0, &qword_266DBA698);
  OUTLINED_FUNCTION_0(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - v21;
  static Friend.== infix(_:_:)(a1, a2);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  v24 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
  v25 = *(v17 + 48);
  sub_266C36200(a1 + v24, v22);
  sub_266C36200(a2 + v24, &v22[v25]);
  OUTLINED_FUNCTION_17_8(v22);
  if (v26)
  {
    OUTLINED_FUNCTION_17_8(&v22[v25]);
    if (v26)
    {
      sub_266C1825C(v22, &qword_2800C9B20, &unk_266DB1EC0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_266C36200(v22, v16);
  OUTLINED_FUNCTION_17_8(&v22[v25]);
  if (v26)
  {
    sub_266D3BAD4(v16, type metadata accessor for Location);
LABEL_10:
    sub_266C1825C(v22, &qword_2800CD2E0, &qword_266DBA698);
    return 0;
  }

  sub_266D3B2E0(&v22[v25], v10);
  v28 = static Location.== infix(_:_:)(v16, v10);
  sub_266D3BAD4(v10, type metadata accessor for Location);
  sub_266D3BAD4(v16, type metadata accessor for Location);
  sub_266C1825C(v22, &qword_2800C9B20, &unk_266DB1EC0);
  return (v28 & 1) != 0;
}

uint64_t sub_266D3B2E0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_2();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_266D3B33C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E65697266 && a2 == 0xE600000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61636F4C72657375 && a2 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266D3B404(char a1)
{
  if (a1)
  {
    return 0x61636F4C72657375;
  }

  else
  {
    return 0x646E65697266;
  }
}

uint64_t sub_266D3B448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D3B33C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D3B470(uint64_t a1)
{
  v2 = sub_266D3B6A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D3B4AC(uint64_t a1)
{
  v2 = sub_266D3B6A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippets.CarPlayFriendLocation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD2E8, &qword_266DBA6A0);
  OUTLINED_FUNCTION_0_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D3B6A0();
  sub_266DAB36C();
  v18[15] = 0;
  type metadata accessor for Friend();
  OUTLINED_FUNCTION_3_46();
  sub_266D3BBBC(v12, v13);
  OUTLINED_FUNCTION_7_31();
  sub_266DAB11C();
  if (!v1)
  {
    v14 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
    v18[14] = 1;
    type metadata accessor for Location();
    OUTLINED_FUNCTION_4_45();
    sub_266D3BBBC(v15, v16);
    OUTLINED_FUNCTION_7_31();
    sub_266DAB0DC();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_266D3B6A0()
{
  result = qword_2800CD2F0;
  if (!qword_2800CD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2F0);
  }

  return result;
}

uint64_t Snippets.CarPlayFriendLocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for Friend();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v43 = v14 - v13;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD300, &qword_266DBA6A8);
  OUTLINED_FUNCTION_0_2(v44);
  v42 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  v21 = type metadata accessor for Snippets.CarPlayFriendLocation();
  v22 = OUTLINED_FUNCTION_4_3(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_6();
  v27 = v26 - v25;
  v29 = *(v28 + 28);
  v30 = type metadata accessor for Location();
  v46 = v29;
  __swift_storeEnumTagSinglePayload(v27 + v29, 1, 1, v30);
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D3B6A0();
  v32 = v45;
  sub_266DAB34C();
  if (v32)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_266C1825C(v27 + v46, &qword_2800C9B20, &unk_266DB1EC0);
  }

  else
  {
    v33 = v42;
    v48 = 0;
    OUTLINED_FUNCTION_3_46();
    sub_266D3BBBC(v34, v35);
    sub_266DAB05C();
    OUTLINED_FUNCTION_1_50();
    sub_266D3B2E0(v43, v27);
    v47 = 1;
    OUTLINED_FUNCTION_4_45();
    sub_266D3BBBC(v36, v37);
    v38 = v8;
    v39 = v44;
    sub_266DAB00C();
    (*(v33 + 8))(v20, v39);
    sub_266C25700(v38, v27 + v46);
    sub_266D3BA78(v27, v41);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_266D3BAD4(v27, type metadata accessor for Snippets.CarPlayFriendLocation);
  }
}

uint64_t sub_266D3BA78(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_2();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_266D3BAD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_266D3BBBC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_266D3BC60()
{
  type metadata accessor for Friend();
  if (v0 <= 0x3F)
  {
    sub_266D3BCE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_266D3BCE4()
{
  if (!qword_2800CD330)
  {
    type metadata accessor for Location();
    v0 = sub_266DAAC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2800CD330);
    }
  }
}

_BYTE *_s21CarPlayFriendLocationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266D3BE1C()
{
  result = qword_2800CD338;
  if (!qword_2800CD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD338);
  }

  return result;
}

unint64_t sub_266D3BE74()
{
  result = qword_2800CD340;
  if (!qword_2800CD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD340);
  }

  return result;
}

unint64_t sub_266D3BECC()
{
  result = qword_2800CD348;
  if (!qword_2800CD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD348);
  }

  return result;
}

SiriFindMy::MeDeviceInfo __swiftcall MeDeviceInfo.init(isThisDevice:deviceName:supportsAutoMe:)(Swift::Bool isThisDevice, Swift::String_optional deviceName, Swift::Bool supportsAutoMe)
{
  *v3 = isThisDevice;
  *(v3 + 8) = deviceName;
  *(v3 + 24) = supportsAutoMe;
  result.deviceName = deviceName;
  result.supportsAutoMe = supportsAutoMe;
  result.isThisDevice = isThisDevice;
  return result;
}

uint64_t MeDeviceInfo.deviceName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MeDeviceInfo.deviceName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static MeDeviceInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = a1[24];
  v6 = *(a2 + 2);
  v7 = a2[24];
  if (v4)
  {
    if (v6)
    {
      v8 = *(a1 + 1) == *(a2 + 1) && v4 == v6;
      if (v8 || (sub_266DAB17C() & 1) != 0)
      {
        return v5 ^ v7 ^ 1u;
      }
    }
  }

  else if (!v6)
  {
    return v5 ^ v7 ^ 1u;
  }

  return 0;
}

uint64_t sub_266D3C114(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6544736968547369 && a2 == 0xEC00000065636976;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7374726F70707573 && a2 == 0xEE00654D6F747541)
    {

      return 2;
    }

    else
    {
      v8 = sub_266DAB17C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_266D3C238(char a1)
{
  if (!a1)
  {
    return 0x6544736968547369;
  }

  if (a1 == 1)
  {
    return 0x614E656369766564;
  }

  return 0x7374726F70707573;
}

uint64_t sub_266D3C2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D3C114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D3C2D8(uint64_t a1)
{
  v2 = sub_266D3C4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D3C314(uint64_t a1)
{
  v2 = sub_266D3C4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MeDeviceInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD350, &qword_266DBA8A0);
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v16 - v10;
  v12 = *v1;
  v13 = *(v1 + 1);
  v16[0] = *(v1 + 2);
  v16[1] = v13;
  v17 = v1[24];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D3C4EC();
  sub_266DAB36C();
  v20 = 0;
  sub_266DAB0FC();
  if (!v2)
  {
    v19 = 1;
    sub_266DAB09C();
    v18 = 2;
    sub_266DAB0FC();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_266D3C4EC()
{
  result = qword_2800CD358;
  if (!qword_2800CD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD358);
  }

  return result;
}

uint64_t MeDeviceInfo.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[24];
  sub_266DAB2CC();
  sub_266DAB2CC();
  if (v3)
  {
    sub_266DAA7BC();
  }

  return sub_266DAB2CC();
}

uint64_t MeDeviceInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[24];
  sub_266DAB2AC();
  sub_266DAB2CC();
  sub_266DAB2CC();
  if (v3)
  {
    sub_266DAA7BC();
  }

  sub_266DAB2CC();
  return sub_266DAB2DC();
}

uint64_t MeDeviceInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD360, &qword_266DBA8A8);
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D3C4EC();
  sub_266DAB34C();
  if (!v2)
  {
    v24 = 0;
    OUTLINED_FUNCTION_0_69();
    v14 = sub_266DAB02C();
    v23 = 1;
    OUTLINED_FUNCTION_0_69();
    v15 = sub_266DAAFCC();
    v18 = v17;
    v21 = v15;
    v22 = 2;
    OUTLINED_FUNCTION_0_69();
    v19 = sub_266DAB02C();
    (*(v8 + 8))(v12, v5);
    *a2 = v14 & 1;
    *(a2 + 8) = v21;
    *(a2 + 16) = v18;
    *(a2 + 24) = v19 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_266D3C850()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v0[24];
  sub_266DAB2AC();
  MeDeviceInfo.hash(into:)();
  return sub_266DAB2DC();
}

unint64_t sub_266D3C8AC()
{
  result = qword_2800CD368;
  if (!qword_2800CD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD368);
  }

  return result;
}

uint64_t sub_266D3C904(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266D3C958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MeDeviceInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266D3CAA0()
{
  result = qword_2800CD370;
  if (!qword_2800CD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD370);
  }

  return result;
}

unint64_t sub_266D3CAF8()
{
  result = qword_2800CD378;
  if (!qword_2800CD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD378);
  }

  return result;
}

unint64_t sub_266D3CB50()
{
  result = qword_2800CD380;
  if (!qword_2800CD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD380);
  }

  return result;
}

uint64_t sub_266D3CBB4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CD388);
  v1 = __swift_project_value_buffer(v0, qword_2800CD388);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266D3CC7C@<X0>(unsigned __int8 *__src@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v5 = __src[1];
  memcpy(__dst, __src, 0xF2uLL);
  result = sub_266C9D0E0(__dst);
  if (result == 1)
  {
LABEL_2:
    v7 = 7;
    goto LABEL_13;
  }

  memcpy(__srca, &__dst[120], 0x7AuLL);
  result = sub_266CFBE34(__srca);
  if (result == 1)
  {
    if (v5 != 2 && (v5 & 1) != 0)
    {
      v7 = 4;
      goto LABEL_13;
    }

    goto LABEL_2;
  }

  memcpy(v10, __srca, 0x79uLL);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_266C258B4(v10);
  if (result == 2)
  {
    v8 = 6;
  }

  else
  {
    v8 = 7;
  }

  if (result == 1)
  {
    v7 = 5;
  }

  else
  {
    v7 = v8;
  }

LABEL_13:
  *a3 = v7;
  return result;
}

void sub_266D3CD60(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_266C9C118(v8, v9, *v10, a2);
  *a5 = v11;
}

void sub_266D3CDE0(uint64_t a1)
{
  v1 = 0;
  v18 = *(a1 + 16);
  v17 = a1 + 32;
  v2 = MEMORY[0x277D84F90];
  while (v1 != v18)
  {
    v20 = v2;
    memcpy(__dst, (v17 + 160 * v1), 0x99uLL);
    sub_266C9CF60(__dst, v27);
    v3 = sub_266D3D0C4();
    v4 = v3[2];
    if (v4)
    {
      v19 = v1;
      v26 = MEMORY[0x277D84F90];
      sub_266C38AA8(0, v4, 0);
      v5 = v26;
      v6 = v4 - 1;
      for (i = 4; ; i += 9)
      {
        memcpy(__src, &v3[i], 0x41uLL);
        memcpy(v22, __dst, 0x58uLL);
        memcpy(v24, &__dst[88], 0x41uLL);
        sub_266C9CF60(__dst, v21);
        sub_266D3D648(__src, v21);
        sub_266C3A088(v24, &qword_2800C9FD0, &qword_266DAF9A0);
        memcpy(&v22[88], __src, 0x41uLL);
        memcpy(v25, v22, 0x99uLL);
        memcpy(v27, v22, 0x99uLL);
        sub_266C9CF60(v25, v21);
        sub_266C9D1E0(v27);
        v26 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_266C38AA8(v8 > 1, v9 + 1, 1);
          v5 = v26;
        }

        *(v5 + 16) = v9 + 1;
        memcpy((v5 + 160 * v9 + 32), v25, 0x99uLL);
        if (!v6)
        {
          break;
        }

        --v6;
      }

      sub_266C9D1E0(__dst);
      v1 = v19;
    }

    else
    {

      sub_266C9D1E0(__dst);
      v5 = MEMORY[0x277D84F90];
    }

    v2 = v20;
    v10 = *(v5 + 16);
    v11 = *(v20 + 16);
    if (__OFADD__(v11, v10))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v12 = *(v20 + 24) >> 1, v12 < v11 + v10))
    {
      sub_266CFA2C4();
      v2 = v13;
      v12 = *(v13 + 24) >> 1;
    }

    if (*(v5 + 16))
    {
      if (v12 - *(v2 + 16) < v10)
      {
        goto LABEL_25;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v14 = *(v2 + 16);
        v15 = __OFADD__(v14, v10);
        v16 = v14 + v10;
        if (v15)
        {
          goto LABEL_26;
        }

        *(v2 + 16) = v16;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_24;
      }
    }

    ++v1;
  }
}

void *sub_266D3D0C4()
{
  v1 = [v0 deviceOwner];
  if (!v1)
  {
    return &unk_28785CBE0;
  }

  v2 = v1;
  v3 = sub_266D3D6B8(v1);
  if (!v3)
  {
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FC8, &qword_266DAF998);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_266DAE4A0;
    sub_266D3D2F8(v2, __src);
    memcpy((v15 + 32), __src, 0x41uLL);

    return v15;
  }

  v6 = v3;
  if (!sub_266C3A14C(v3, v4, v5))
  {

    goto LABEL_19;
  }

  v9 = sub_266C3A14C(v6, v7, v8);
  if (!v9)
  {

    return MEMORY[0x277D84F90];
  }

  v10 = v9;
  v22 = MEMORY[0x277D84F90];
  v11 = v9 & ~(v9 >> 63);
  v12 = v0;
  result = sub_266C38BE4(0, v11, 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = v22;
    v16 = v10 - 1;
    if ((v6 & 0xC000000000000001) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    for (i = MEMORY[0x26D5F1780](v14, v6); ; i = *(v6 + 8 * v14 + 32))
    {
      v18 = i;
      sub_266D3D2F8(i, __src);

      v22 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_266C38BE4(v19 > 1, v20 + 1, 1);
        v15 = v22;
      }

      memcpy(__dst, __src, sizeof(__dst));
      *(v15 + 16) = v20 + 1;
      result = memcpy((v15 + 72 * v20 + 32), __dst, 0x41uLL);
      if (v16 == v14)
      {

        return v15;
      }

      ++v14;
      if ((v6 & 0xC000000000000001) != 0)
      {
        goto LABEL_7;
      }

LABEL_8:
      if ((v14 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v14 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_266D3D2F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F80, &unk_266DB1ED0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v44 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v44 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v44 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = [a1 nameComponents];
  if (v23)
  {
    v24 = v23;
    sub_266DA729C();

    v25 = sub_266DA72DC();
    v26 = 0;
  }

  else
  {
    v25 = sub_266DA72DC();
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v20, v26, 1, v25);
  sub_266D3D718(v20, v22);
  sub_266DA72DC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v25);
  v28 = 0;
  v29 = 0;
  if (!EnumTagSinglePayload)
  {
    v28 = sub_266DA721C();
    v29 = v30;
  }

  v45 = v28;
  sub_266C3A088(v22, &qword_2800C9F80, &unk_266DB1ED0);
  v31 = [a1 nameComponents];
  if (v31)
  {
    v32 = v31;
    sub_266DA729C();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v33, 1, v25);
  sub_266D3D718(v14, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v25))
  {
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v34 = sub_266DA72AC();
    v35 = v36;
  }

  sub_266C3A088(v17, &qword_2800C9F80, &unk_266DB1ED0);
  v37 = [a1 nameComponents];
  if (v37)
  {
    v38 = v37;
    sub_266DA729C();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v39, 1, v25);
  sub_266D3D718(v8, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v25))
  {
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v40 = sub_266DA723C();
    v41 = v42;
  }

  sub_266C3A088(v11, &qword_2800C9F80, &unk_266DB1ED0);
  result = [a1 isMe];
  *a2 = v45;
  *(a2 + 8) = v29;
  *(a2 + 16) = v34;
  *(a2 + 24) = v35;
  *(a2 + 32) = v40;
  *(a2 + 40) = v41;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_266D3D648(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FD0, &qword_266DAF9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266D3D6B8(void *a1)
{
  v1 = [a1 alternatives];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_266C9A2C4();
  v3 = sub_266DAA93C();

  return v3;
}

uint64_t sub_266D3D718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F80, &unk_266DB1ED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266D3D788@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v51 = type metadata accessor for Snippets.Contact();
  v4 = OUTLINED_FUNCTION_0(v51);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_19();
  v48 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F48, &unk_266DBDCA0);
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v49 = v10;
  v50 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = (&v46 - v14);
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v46 = a2;
    v57 = MEMORY[0x277D84F90];
    sub_266C38A28(0, v16, 0);
    v18 = 0;
    v19 = (a1 + 48);
    v17 = v57;
    v47 = v16;
    v20 = v48;
    do
    {
      v21 = *(v19 - 2);
      v54 = *(v19 - 1);
      v55 = v21;
      v22 = *v19;
      v56 = v18;
      swift_bridgeObjectRetain_n();
      v23 = v22;
      v24 = sub_266DAB13C();
      v52 = v25;
      v53 = v24;
      v26 = v51;
      v27 = v20 + *(v51 + 24);
      sub_266DA749C();
      v28 = [v23 displayName];
      v29 = sub_266DAA70C();
      v31 = v30;

      *v20 = v29;
      v20[1] = v31;
      v32 = sub_266C39CB4(v23);
      v34 = v33;

      if (v34)
      {
        v35 = v32;
      }

      else
      {
        v35 = 0;
      }

      v36 = 0xE000000000000000;
      if (v34)
      {
        v36 = v34;
      }

      v37 = *(v50 + 44);
      v20[2] = v35;
      v20[3] = v36;
      v38 = (v20 + *(v26 + 28));
      v39 = v52;
      *v38 = v53;
      v38[1] = v39;
      sub_266D3FA8C(v20, v15 + v37, type metadata accessor for Snippets.Contact);

      v40 = v54;

      *v15 = v55;
      v15[1] = v40;
      v57 = v17;
      v42 = *(v17 + 16);
      v41 = *(v17 + 24);
      if (v42 >= v41 >> 1)
      {
        OUTLINED_FUNCTION_7_32(v41);
        v17 = v57;
      }

      ++v18;
      *(v17 + 16) = v42 + 1;
      OUTLINED_FUNCTION_6_33();
      sub_266CC5990(v15, v17 + v43 + *(v44 + 72) * v42, &qword_2800C9F48, &unk_266DBDCA0);
      v19 += 3;
    }

    while (v47 != v18);
    a2 = v46;
  }

  *a2 = v17;
  type metadata accessor for Snippets();
  return swift_storeEnumTagMultiPayload();
}

uint64_t Snippets.DisambiguationItem.init(id:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for Snippets.DisambiguationItem();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 44);

  return v9(v10, a3, a4);
}

id sub_266D3DAE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0) - 8) + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v6 = v45 - v5;
  v50 = type metadata accessor for Location();
  v7 = OUTLINED_FUNCTION_0(v50);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_19();
  v49 = v10;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD5A0, &qword_266DBAEF8) - 8) + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  v14 = (v45 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC8D0, &qword_266DB6F30);
  v16 = OUTLINED_FUNCTION_0_2(v15);
  v45[1] = v17;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v47 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v45[0] = v45 - v22;
  result = sub_266C3A14C(a1, v23, v24);
  v26 = 0;
  v53 = a1 & 0xC000000000000001;
  v54 = result;
  v51 = a1 & 0xFFFFFFFFFFFFFF8;
  v52 = a1;
  v48 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v54 == v26)
    {
      *v46 = v48;
      type metadata accessor for Snippets();
      return swift_storeEnumTagMultiPayload();
    }

    if (v53)
    {
      result = MEMORY[0x26D5F1780](v26, v52);
    }

    else
    {
      if (v26 >= *(v51 + 16))
      {
        goto LABEL_22;
      }

      result = *(v52 + 8 * v26 + 32);
    }

    v27 = result;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    v28 = sub_266C1CEB4(result);
    if (v29)
    {
      v30 = v28;
      v31 = v29;
      v55 = v26;
      v32 = v27;
      v33 = sub_266DAB13C();
      sub_266C61918(v32, v33, v34, v6);
      if (__swift_getEnumTagSinglePayload(v6, 1, v50) != 1)
      {
        v36 = v49;
        sub_266D3FA8C(v6, v49, type metadata accessor for Location);
        sub_266D3FA8C(v36, v14 + *(v15 + 44), type metadata accessor for Location);
        v35 = 0;
        *v14 = v30;
        v14[1] = v31;
        goto LABEL_12;
      }

      sub_266C1825C(v6, &qword_2800C9B20, &unk_266DB1EC0);
    }

    v35 = 1;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v14, v35, 1, v15);

    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      result = sub_266C1825C(v14, &qword_2800CD5A0, &qword_266DBAEF8);
      ++v26;
    }

    else
    {
      v37 = v45[0];
      sub_266CC5990(v14, v45[0], &qword_2800CC8D0, &qword_266DB6F30);
      sub_266CC5990(v37, v47, &qword_2800CC8D0, &qword_266DB6F30);
      v38 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = *(v38 + 16);
        sub_266CF9F94();
        v38 = v43;
      }

      v39 = *(v38 + 16);
      if (v39 >= *(v38 + 24) >> 1)
      {
        sub_266CF9F94();
        v38 = v44;
      }

      *(v38 + 16) = v39 + 1;
      OUTLINED_FUNCTION_6_33();
      v48 = v38;
      result = sub_266CC5990(v47, v38 + v40 + *(v41 + 72) * v39, &qword_2800CC8D0, &qword_266DB6F30);
      ++v26;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

size_t sub_266D3DF40@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F48, &unk_266DBDCA0);
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v67 = v6;
  v68 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v11 = (&v59 - v10);
  if (a1 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_266DAAD5C())
  {
    v13 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_34:
      *a2 = v13;
      type metadata accessor for Snippets();
      return swift_storeEnumTagMultiPayload();
    }

    v73 = MEMORY[0x277D84F90];
    result = sub_266C38A28(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v60 = a2;
    v13 = v73;
    v17 = sub_266C3A14C(a1, v15, v16);
    v18 = 0;
    v62 = a1 & 0xFFFFFFFFFFFFFF8;
    v65 = a1 & 0xC000000000000001;
    v66 = v17 & ~(v17 >> 63);
    *&v19 = 136315138;
    v61 = v19;
    v63 = a1;
    v64 = i;
    v71 = v11;
    while (v66 != v18)
    {
      if (v65)
      {
        v20 = MEMORY[0x26D5F1780](v18, a1);
      }

      else
      {
        if (v18 >= *(v62 + 16))
        {
          goto LABEL_37;
        }

        v20 = *(a1 + 8 * v18 + 32);
      }

      v21 = v20;
      sub_266C39CB4(v20);
      v70 = v13;
      if (v22)
      {
      }

      else
      {
        if (qword_28156F1D8 != -1)
        {
          swift_once();
        }

        v23 = sub_266DA94AC();
        __swift_project_value_buffer(v23, &unk_28156F1E0);
        v24 = v21;
        v25 = sub_266DA948C();
        v26 = sub_266DAAAFC();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v72 = v28;
          *v27 = v61;
          v29 = v24;
          v30 = [v29 description];
          v31 = sub_266DAA70C();
          v33 = v32;

          v34 = sub_266C22A3C(v31, v33, &v72);

          *(v27 + 4) = v34;
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x26D5F2480](v28, -1, -1);
          MEMORY[0x26D5F2480](v27, -1, -1);
        }
      }

      v35 = sub_266C39CB4(v21);
      if (v36)
      {
        v37 = v35;
      }

      else
      {
        v37 = 0;
      }

      v69 = v37;
      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0xE000000000000000;
      }

      v72 = v18;
      v39 = v21;
      v40 = sub_266DAB13C();
      v42 = v41;
      v43 = (v71 + *(v68 + 44));
      v44 = type metadata accessor for Snippets.Contact();
      v45 = v43 + *(v44 + 24);
      sub_266DA749C();
      v46 = [v39 displayName];
      v47 = sub_266DAA70C();
      v49 = v48;

      *v43 = v47;
      v43[1] = v49;
      v50 = sub_266C39CB4(v39);
      v52 = v51;

      if (v52)
      {
        v53 = v50;
      }

      else
      {
        v53 = 0;
      }

      v54 = 0xE000000000000000;
      if (v52)
      {
        v54 = v52;
      }

      v43[2] = v53;
      v43[3] = v54;
      v55 = (v43 + *(v44 + 28));
      v11 = v71;
      *v55 = v40;
      v55[1] = v42;
      v13 = v70;
      *v11 = v69;
      v11[1] = v38;
      v73 = v13;
      a1 = *(v13 + 16);
      v56 = *(v13 + 24);
      a2 = (a1 + 1);
      if (a1 >= v56 >> 1)
      {
        OUTLINED_FUNCTION_7_32(v56);
        v13 = v73;
      }

      *(v13 + 16) = a2;
      OUTLINED_FUNCTION_6_33();
      sub_266CC5990(v11, v13 + v57 + *(v58 + 72) * a1, &qword_2800C9F48, &unk_266DBDCA0);
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }

      ++v18;
      a1 = v63;
      if (v64 == v18)
      {
        a2 = v60;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  __break(1u);
  return result;
}

uint64_t Snippets.Disambiguation.items.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_266D3E400(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266DAB17C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266D3E488(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v5 = a3[4];
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_266D3E494(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_266C91144();
}

uint64_t sub_266D3E4A4(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  return sub_266C1617C();
}

uint64_t sub_266D3E4B4(uint64_t a1, void *a2)
{
  sub_266DAB2AC();
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  sub_266C1617C();
  return sub_266DAB2DC();
}

uint64_t sub_266D3E4FC(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_266D3E474();
}

uint64_t sub_266D3E50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_266D3E400(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_266D3E544(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_266C1AAF0();
}

uint64_t sub_266D3E56C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = OUTLINED_FUNCTION_0_1();
  *a2 = result & 1;
  return result;
}

uint64_t sub_266D3E5A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_266D3E5F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void Snippets.Disambiguation.encode(to:)()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v4 = v3[2];
  v14[1] = v3[3];
  v14[2] = v4;
  v14[0] = v3[4];
  _s14DisambiguationV10CodingKeysOMa();
  OUTLINED_FUNCTION_2_57();
  swift_getWitnessTable();
  v5 = sub_266DAB12C();
  OUTLINED_FUNCTION_0_2(v5);
  v15 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  v12 = *v0;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);

  sub_266DAB36C();
  type metadata accessor for Snippets.DisambiguationItem();
  sub_266DAA97C();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_266DAB11C();

  (*(v15 + 8))(v11, v5);
  OUTLINED_FUNCTION_26();
}

void Snippets.Disambiguation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_27();
  v12 = v11;
  v25 = v13;
  v27 = v14;
  _s14DisambiguationV10CodingKeysOMa();
  OUTLINED_FUNCTION_2_57();
  swift_getWitnessTable();
  v28 = sub_266DAB07C();
  OUTLINED_FUNCTION_0_2(v28);
  v26 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - v19;
  v21 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_266DAB34C();
  if (!v10)
  {
    v22 = v26;
    type metadata accessor for Snippets.DisambiguationItem();
    sub_266DAA97C();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    v23 = v28;
    sub_266DAB05C();
    (*(v22 + 8))(v20, v23);
    *v25 = a10;
  }

  __swift_destroy_boxed_opaque_existential_0(v12);
  OUTLINED_FUNCTION_26();
}

uint64_t Snippets.DisambiguationItem.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Snippets.DisambiguationItem.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*Snippets.DisambiguationItem.value.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_266D3EB78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266D3EC34(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_266D3EC5C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_266D3EC34(*v1);
}

uint64_t sub_266D3EC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_266D3EB78(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_266D3ECA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_266D3ECF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void Snippets.DisambiguationItem.encode(to:)()
{
  OUTLINED_FUNCTION_27();
  v23 = v0;
  v24 = v1;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  v7 = *(v3 + 24);
  v22[0] = *(v3 + 32);
  v22[1] = v6;
  _s18DisambiguationItemV10CodingKeysOMa();
  OUTLINED_FUNCTION_3_47();
  v8 = sub_266DAB12C();
  OUTLINED_FUNCTION_0_2(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = v22 - v14;
  v16 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v17 = v23;
  sub_266DAB36C();
  v18 = *v17;
  v19 = v17[1];
  v20 = v24;
  sub_266DAB0EC();
  if (!v20)
  {
    v21 = *(v3 + 44);
    sub_266DAB11C();
  }

  (*(v10 + 8))(v15, v8);
  OUTLINED_FUNCTION_26();
}

void Snippets.DisambiguationItem.init(from:)()
{
  OUTLINED_FUNCTION_27();
  v45 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38 = v7;
  v37 = *(v3 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_19();
  v40 = v9;
  _s18DisambiguationItemV10CodingKeysOMa();
  OUTLINED_FUNCTION_3_47();
  v44 = sub_266DAB07C();
  OUTLINED_FUNCTION_0_2(v44);
  v39 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v41 = v4;
  v42 = v2;
  v16 = type metadata accessor for Snippets.DisambiguationItem();
  OUTLINED_FUNCTION_0_2(v16);
  v36 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  v22 = (&v34 - v21);
  v23 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v43 = v15;
  v24 = v45;
  sub_266DAB34C();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    v45 = v6;
    v35 = v16;
    v26 = v39;
    v25 = v40;
    v27 = v41;
    v28 = v22;
    *v22 = sub_266DAB01C();
    v22[1] = v29;
    v30 = v25;
    v31 = v27;
    sub_266DAB05C();
    (*(v26 + 8))(v43, v44);
    v32 = v35;
    (*(v37 + 32))(v28 + *(v35 + 44), v30, v31);
    v33 = v36;
    (*(v36 + 16))(v38, v28, v32);
    __swift_destroy_boxed_opaque_existential_0(v45);
    (*(v33 + 8))(v28, v32);
  }

  OUTLINED_FUNCTION_26();
}

void sub_266D3F1EC(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  Snippets.DisambiguationItem.init(from:)();
}

uint64_t sub_266D3F228@<X0>(uint64_t *a1@<X8>)
{
  result = Snippets.DisambiguationItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static Snippets.DisambiguationItem<>.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Snippets.DisambiguationItem() + 44);
  return sub_266DAA6EC() & 1;
}

uint64_t sub_266D3F2F0(void *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  return static Snippets.DisambiguationItem<>.== infix(_:_:)(a1, a2);
}

uint64_t static Snippets.Disambiguation<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for Snippets.DisambiguationItem();
  swift_getWitnessTable();
  return sub_266DAA98C() & 1;
}

uint64_t sub_266D3F3C8(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  return static Snippets.Disambiguation<>.== infix(_:_:)(a1, a2);
}

uint64_t sub_266D3F3DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_266D3F430(uint64_t a1)
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

uint64_t sub_266D3F4B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_266D3F630(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_266D3F87C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_266D3F948(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_266D3FA8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_47()
{

  return swift_getWitnessTable();
}

size_t OUTLINED_FUNCTION_7_32@<X0>(unint64_t a1@<X8>)
{

  return sub_266C38A28(a1 > 1, v1, 1);
}

uint64_t sub_266D3FB68()
{
  v0 = sub_266DAAB7C();
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_6();
  v32 = v3 - v2;
  v4 = sub_266DAAB6C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v8 = v7 - v6;
  v9 = sub_266DA9FDC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_0_6();
  v13 = v12 - v11;
  v14 = sub_266DA750C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_0_6();
  sub_266DA81BC();
  __swift_project_boxed_opaque_existential_1(v58, v59);
  sub_266DA7AFC();
  v16 = type metadata accessor for FMFManagerWrapper();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_266CE236C();
  v20 = v19;
  __swift_destroy_boxed_opaque_existential_0(v58);
  sub_266DA7AEC();
  v21 = *MEMORY[0x277D47D70];
  v66[0] = sub_266DAA70C();
  v66[1] = v22;
  v67 = xmmword_266DAE510;
  v65[3] = v16;
  v65[4] = &off_2878628A8;
  v65[0] = v20;
  v59 = &type metadata for AceUserLocationProvider;
  v60 = &off_287867C00;
  v58[0] = swift_allocObject();
  sub_266C26B34(v66, v58[0] + 16);
  v63 = &off_2878628A8;
  v62 = v16;
  v61 = v20;
  sub_266C22FD4();
  swift_retain_n();
  sub_266DA9FBC();
  v54[0] = MEMORY[0x277D84F90];
  sub_266C3601C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  sub_266C5D904();
  sub_266DAAD0C();
  (*(v33 + 104))(v32, *MEMORY[0x277D85260], v34);
  v64 = sub_266D689A4(0xD00000000000001ELL, 0x8000000266DC38A0, v13, v8, v32, 0);
  v57[3] = v16;
  v57[4] = &off_2878628A8;
  v56[4] = &off_2878628A8;
  v57[0] = v20;
  v56[3] = v16;
  v56[0] = v20;
  v54[3] = v16;
  v54[4] = &off_2878628A8;
  v53[4] = &off_2878628A8;
  v54[0] = v20;
  v55 = xmmword_266DBAF00;
  v53[3] = v16;
  v53[0] = v20;
  v51 = &type metadata for FMFCoreFriendProvider;
  v52 = &off_287860000;
  OUTLINED_FUNCTION_1_51();
  *&v50 = swift_allocObject();
  sub_266C72488(v65, v50 + 16);
  v48 = &type metadata for FMFCoreFriendLocationProvider;
  v49 = &off_287862E48;
  *&v47 = swift_allocObject();
  sub_266CEDBEC(v58, v47 + 16);
  v45 = &type metadata for AceUserLocationProvider;
  v46 = &off_287867C00;
  *&v44 = swift_allocObject();
  sub_266C26B34(v66, v44 + 16);
  v42 = &type metadata for FMFCoreSharedLocationVisibilitySetter;
  v43 = &off_287862DB0;
  OUTLINED_FUNCTION_1_51();
  *&v41 = swift_allocObject();
  sub_266D40300(v57, v41 + 16);
  v39 = &type metadata for FMFCoreGeoFenceSetter;
  v40 = &off_28785F020;
  OUTLINED_FUNCTION_1_51();
  *&v38 = swift_allocObject();
  sub_266D4035C(v56, v38 + 16);
  v36 = &type metadata for FMFCoreMeDeviceInfoProvider;
  v37 = &off_287866B50;
  *&v35 = swift_allocObject();
  sub_266D403B8(v54, v35 + 16);
  type metadata accessor for FMFCoreFindFriendSession();
  v23 = swift_allocObject();
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v53, v16);
  v25 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_6();
  v28 = (v27 - v26);
  (*(v29 + 16))(v27 - v26);
  v30 = *v28;
  *(v23 + 40) = v16;
  *(v23 + 48) = &off_2878628A8;
  *(v23 + 16) = v30;
  swift_retain_n();
  sub_266C26CC0(v66);
  *(v23 + 296) = 0;
  sub_266C0B0D8(&v50, v23 + 56);
  sub_266C0B0D8(&v47, v23 + 96);
  sub_266C0B0D8(&v44, v23 + 136);
  sub_266C0B0D8(&v41, v23 + 176);
  sub_266C0B0D8(&v38, v23 + 216);
  sub_266C0B0D8(&v35, v23 + 256);
  __swift_destroy_boxed_opaque_existential_0(v53);
  sub_266D40414(v54);
  sub_266D40468(v56);
  sub_266D404BC(v57);
  sub_266D40510(v58);
  sub_266D40564(v65);
  return v23;
}

uint64_t sub_266D40164()
{
  if (*(v0 + 296))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(*__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_errored) ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_266D401B0()
{
  *(v0 + 296) = 1;
  v1 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  return sub_266CE28F0();
}

uint64_t *sub_266D401E8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  return v0;
}

uint64_t sub_266D40238()
{
  sub_266D401E8();

  return MEMORY[0x2821FE8D8](v0, 297, 7);
}

ValueMetadata *sub_266D405C4()
{
  v1 = v0;
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, &unk_28156FCA8);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266C08000, v3, v4, "Posting personal domain activity notification.", v5, 2u);
    MEMORY[0x26D5F2480](v5, -1, -1);
  }

  v6 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  return sub_266D04D34(0xD000000000000021, 0x8000000266DC38C0, 0, 0x617A696C61636F4CLL, 0xEB00000000656C62);
}

uint64_t sub_266D4084C()
{
  OUTLINED_FUNCTION_22_0();
  v1[31] = v2;
  v1[32] = v0;
  v3 = *(*(sub_266DA7C0C() - 8) + 64);
  v1[33] = OUTLINED_FUNCTION_62();
  v4 = sub_266DA80AC();
  v1[34] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v1[35] = v5;
  v7 = *(v6 + 64);
  v1[36] = OUTLINED_FUNCTION_62();
  v8 = sub_266DA750C();
  v1[37] = v8;
  OUTLINED_FUNCTION_11_3(v8);
  v1[38] = v9;
  v11 = *(v10 + 64);
  v1[39] = OUTLINED_FUNCTION_62();
  v12 = sub_266DA7F0C();
  v1[40] = v12;
  OUTLINED_FUNCTION_11_3(v12);
  v1[41] = v13;
  v15 = *(v14 + 64);
  v1[42] = OUTLINED_FUNCTION_62();
  v16 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_266D409AC()
{
  v69 = v0;
  if (qword_2800C9420 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_2800CD5A8);
  sub_266D420BC(v1, (v0 + 2));
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v68[0] = v6;
    *v5 = 136315138;
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v0[28] = sub_266CBF88C();
    v0[29] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
    v8 = sub_266DAA72C();
    v10 = v9;
    sub_266CE82A4((v0 + 2));
    v11 = sub_266C22A3C(v8, v10, v68);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_266C08000, v3, v4, "[DeviceOwnerStrategy] Identifying owner of device type %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    sub_266CE82A4((v0 + 2));
  }

  v12 = v0[32];
  if (sub_266D420F4())
  {
    v14 = v0[41];
    v13 = v0[42];
    v15 = v0[40];
    v16 = v0[32];
    v17 = v16[19];
    __swift_project_boxed_opaque_existential_1(v16 + 15, v16[18]);
    sub_266DA7EFC();
    v18 = sub_266DA7B1C();
    v19 = *(v14 + 8);
    v20 = OUTLINED_FUNCTION_38();
    v21(v20);
    if (v18)
    {
      v22 = v0[32];
      v23 = v22[8];
      v24 = v22[9];
      __swift_project_boxed_opaque_existential_1(v22 + 5, v23);
      v25 = (*(v24 + 8))(v23, v24);
      v0[43] = v25;
      v0[44] = 0;
      v49 = v25;
      v50 = sub_266DA948C();
      v51 = sub_266DAAB0C();

      if (os_log_type_enabled(v50, v51))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v68[0] = v54;
        *v53 = 136315138;
        v55 = v49;
        v56 = [v55 description];
        v57 = sub_266DAA70C();
        v59 = v58;

        v60 = sub_266C22A3C(v57, v59, v68);

        *(v53 + 4) = v60;
        OUTLINED_FUNCTION_11_21();
        _os_log_impl(v61, v62, v63, v64, v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_5_1();
      }

      v66 = *(v0[32] + 160);
      v47 = swift_task_alloc();
      v0[45] = v47;
      *v47 = v0;
      v48 = sub_266D40FFC;
    }

    else
    {
      v38 = sub_266DA948C();
      v39 = sub_266DAAB0C();
      if (os_log_type_enabled(v38, v39))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_11_21();
        _os_log_impl(v40, v41, v42, v43, v44, 2u);
        OUTLINED_FUNCTION_5_1();
      }

      v45 = v0[32];

      v46 = *(v45 + 160);
      v47 = swift_task_alloc();
      v0[50] = v47;
      *v47 = v0;
      v48 = sub_266D4153C;
    }

    v47[1] = v48;
    OUTLINED_FUNCTION_51_1();

    return sub_266CEE54C();
  }

  else
  {
    v26 = sub_266DA948C();
    v27 = sub_266DAAB0C();
    if (os_log_type_enabled(v26, v27))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_21();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_5_1();
    }

    v33 = v0[32];

    v34 = *(v33 + 160);
    v35 = swift_task_alloc();
    v0[54] = v35;
    *v35 = v0;
    v35[1] = sub_266D41958;
    OUTLINED_FUNCTION_51_1();

    return sub_266CEE700();
  }
}

uint64_t sub_266D40FFC()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_21_1();
  *v6 = v5;
  v8 = *(v7 + 360);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  *(v5 + 368) = v0;

  if (v0)
  {
    v11 = sub_266D41F70;
  }

  else
  {
    *(v5 + 376) = v3;
    v11 = sub_266D41110;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_266D41110()
{
  v1 = v0[43];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  v31 = v0[36];
  v5 = v0[32];
  v29 = v0[47];
  v30 = v0[33];
  v32 = v5[13];
  v33 = v5[14];
  __swift_project_boxed_opaque_existential_1(v5 + 10, v32);
  v0[26] = type metadata accessor for Snippets();
  v0[27] = sub_266C4DB4C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 23);
  v7 = v5[19];
  __swift_project_boxed_opaque_existential_1(v5 + 15, v5[18]);
  sub_266DA7AFC();
  v8 = sub_266C36550();
  v10 = v9;
  v11 = *(v3 + 8);
  v12 = OUTLINED_FUNCTION_38();
  v13(v12);
  v14 = [v1 identifier];
  v15 = sub_266DAA70C();
  v17 = v16;

  v18 = type metadata accessor for Snippets.Contact();
  v19 = boxed_opaque_existential_1 + *(v18 + 24);
  sub_266DA749C();
  *boxed_opaque_existential_1 = v8;
  boxed_opaque_existential_1[1] = v10;
  boxed_opaque_existential_1[2] = v15;
  boxed_opaque_existential_1[3] = v17;
  v20 = (boxed_opaque_existential_1 + *(v18 + 28));
  *v20 = 1701736302;
  v20[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v21 = swift_allocObject();
  v0[48] = v21;
  *(v21 + 16) = xmmword_266DAE3B0;
  *(v21 + 32) = v29;
  v22 = v29;
  sub_266DA7BCC();
  OUTLINED_FUNCTION_0_70();
  sub_266DA800C();
  v23 = *(MEMORY[0x277D5BE38] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[49] = v24;
  *v24 = v25;
  v24[1] = sub_266D4134C;
  v26 = v0[36];
  v27 = v0[31];

  return MEMORY[0x2821BB468](v27, v0 + 23, v21, v26, v32, v33);
}

uint64_t sub_266D4134C()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = v4[49];
  v6 = v4[48];
  v7 = v4[36];
  v8 = v4[35];
  v9 = v4[34];
  v10 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v11 = v10;

  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_38();
  v14(v13);
  __swift_destroy_boxed_opaque_existential_0((v2 + 184));
  v15 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_266D414B4()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 376);
  v2 = *(v0 + 344);

  OUTLINED_FUNCTION_7_33();

  OUTLINED_FUNCTION_15_4();

  return v3();
}

uint64_t sub_266D4153C()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_21_1();
  *v6 = v5;
  v8 = *(v7 + 400);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_18_16();

    OUTLINED_FUNCTION_28();

    return v11();
  }

  else
  {
    *(v5 + 408) = v3;
    v13 = OUTLINED_FUNCTION_14_3();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_266D4167C()
{
  v1 = v0[51];
  OUTLINED_FUNCTION_21_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v2 = swift_allocObject();
  v0[52] = v2;
  *(v2 + 16) = xmmword_266DAE3B0;
  *(v2 + 32) = v1;
  v3 = v1;
  sub_266DA7BCC();
  OUTLINED_FUNCTION_0_70();
  sub_266DA800C();
  v4 = *(MEMORY[0x277D5BE58] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[53] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_10_19(v5);

  return MEMORY[0x2821BB488](v7);
}

uint64_t sub_266D41780()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v2 = v1[53];
  v3 = v1[52];
  v4 = v1[36];
  v5 = v1[35];
  v6 = v1[34];
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  (*(v5 + 8))(v4, v6);
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D418DC()
{
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_7_33();

  OUTLINED_FUNCTION_15_4();

  return v1();
}

uint64_t sub_266D41958()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_21_1();
  *v6 = v5;
  v8 = *(v7 + 432);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_18_16();

    OUTLINED_FUNCTION_28();

    return v11();
  }

  else
  {
    *(v5 + 440) = v3;
    v13 = OUTLINED_FUNCTION_14_3();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_266D41A98()
{
  v1 = v0[55];
  OUTLINED_FUNCTION_21_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v2 = swift_allocObject();
  v0[56] = v2;
  *(v2 + 16) = xmmword_266DAE3B0;
  *(v2 + 32) = v1;
  v3 = v1;
  sub_266DA7BCC();
  OUTLINED_FUNCTION_0_70();
  sub_266DA800C();
  v4 = *(MEMORY[0x277D5BE58] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[57] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_10_19(v5);

  return MEMORY[0x2821BB488](v7);
}

uint64_t sub_266D41B9C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v2 = v1[57];
  v3 = v1[56];
  v4 = v1[36];
  v5 = v1[35];
  v6 = v1[34];
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  (*(v5 + 8))(v4, v6);
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D41CF8()
{
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_7_33();

  OUTLINED_FUNCTION_15_4();

  return v1();
}

uint64_t sub_266D41D74()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 464);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 472) = v0;

  if (v0)
  {
    v9 = sub_266D41EF0;
  }

  else
  {
    v9 = sub_266D41E74;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_266D41E74()
{
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_7_33();

  OUTLINED_FUNCTION_15_4();

  return v1();
}

uint64_t sub_266D41EF0()
{
  OUTLINED_FUNCTION_34();

  v1 = *(v0 + 472);
  OUTLINED_FUNCTION_19_16();

  OUTLINED_FUNCTION_28();

  return v2();
}

uint64_t sub_266D41F70()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 344);

  v2 = *(v0 + 368);
  OUTLINED_FUNCTION_19_16();

  OUTLINED_FUNCTION_28();

  return v3();
}

uint64_t sub_266D41FF4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CD5A8);
  v1 = __swift_project_value_buffer(v0, qword_2800CD5A8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_266D420F4()
{
  v1 = __swift_project_boxed_opaque_existential_1(v0, v0[3])[6];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 deviceType];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_266DAA70C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v7 != 0;
}

uint64_t sub_266D42180(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = sub_266DA7E9C();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[12] = v7;
  v8 = *(MEMORY[0x277D5BCD0] + 4);
  v9 = swift_task_alloc();
  v2[13] = v9;
  *v9 = v2;
  v9[1] = sub_266D422B4;

  return MEMORY[0x2821BAED8](v7);
}

uint64_t sub_266D422B4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 112) = v0;

  if (v0)
  {
    v9 = sub_266D42528;
  }

  else
  {
    v9 = sub_266D423B4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_266D423B4()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = v6[19];
  __swift_project_boxed_opaque_existential_1(v6 + 15, v6[18]);
  sub_266DA7B3C();
  v8 = sub_266DA7E5C();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  v9 = sub_266DA820C();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v5[3] = v9;
  v5[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_266DA7D0C();
  sub_266C3A088(v0 + 16, &qword_2800CD5C0, &qword_266DBB010);
  sub_266C3A088(v3, &qword_2800CA048, &unk_266DAFC00);
  v11 = *(v2 + 8);
  v12 = OUTLINED_FUNCTION_38();
  v13(v12);

  OUTLINED_FUNCTION_15_4();

  return v14();
}

uint64_t sub_266D42528()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[12];
  v2 = v0[9];

  OUTLINED_FUNCTION_28();
  v4 = v0[14];

  return v3();
}

uint64_t sub_266D42590(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266D425D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_33()
{
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[36];
  v5 = v0[33];
}

uint64_t OUTLINED_FUNCTION_10_19(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 288);
  return *(v2 + 248);
}

uint64_t OUTLINED_FUNCTION_18_16()
{
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[36];
  v5 = v0[33];
}

uint64_t OUTLINED_FUNCTION_19_16()
{
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[36];
  v5 = v0[33];
}

void *OUTLINED_FUNCTION_21_15()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v2[14];
  return __swift_project_boxed_opaque_existential_1(v2 + 10, v2[13]);
}

uint64_t FMFCoreUISession.__allocating_init(locale:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FMFCoreUISession.init(locale:)(a1);
  return v2;
}

uint64_t FMFCoreUISession.init(locale:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_266DA750C();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = type metadata accessor for FMFManagerWrapper();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_266CE236C();
  v15 = v14;
  (*(v7 + 8))(a1, v4);
  *(v2 + 16) = v15;
  return v2;
}

uint64_t sub_266D42858()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD5C8, &qword_266DBB080);
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = v13 - v7;
  v9 = *(v0 + 16);
  sub_266CE2A64();
  v13[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD5D0, &qword_266DBB088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD5D8, &qword_266DBB090);
  sub_266C230E8(&qword_2800CD5E0, &qword_2800CD5D0, &qword_266DBB088);
  sub_266C230E8(&qword_2800CD5E8, &qword_2800CD5D8, &qword_266DBB090);
  sub_266DA987C();

  sub_266C230E8(&qword_2800CD5F0, &qword_2800CD5C8, &qword_266DBB080);
  v11 = sub_266DA97EC();
  (*(v4 + 8))(v8, v1);
  return v11;
}

uint64_t sub_266D42A60()
{
  v0 = type metadata accessor for Friend();
  v1 = MEMORY[0x277D84A98];
  v2 = MEMORY[0x277D84AC0];

  return MEMORY[0x28210E988](1, v0, v1, v2);
}

uint64_t FMFCoreUISession.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t FMFCoreUISession.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t type metadata accessor for FindDeviceAndPlaySoundCATsSimple()
{
  result = qword_2800CD5F8;
  if (!qword_2800CD5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D42C44(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D42C5C()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v2 = OUTLINED_FUNCTION_36_5();
  *(v2 + 32) = 0x7449646E69467369;
  *(v2 + 40) = 0xEA00000000006D65;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = MEMORY[0x277D55C70];
  *(v2 + 48) = v1;
  v4 = v3[1];
  v8 = (v3 + *v3);
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_266DAE4A0;
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_266CB5CA0;
  v6 = *(v0 + 16);

  return v8(0xD000000000000026, 0x8000000266DC3EF0, v2);
}

uint64_t sub_266D42D7C(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D42D94()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_41_1();
  *(OUTLINED_FUNCTION_35_3(v4) + 16) = xmmword_266DB05C0;
  OUTLINED_FUNCTION_1_52();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  *(v1 + 48) = v3;
  OUTLINED_FUNCTION_49_8();
  *(v1 + 72) = v8;
  *(v1 + 80) = v9;
  *(v1 + 88) = 0xEC000000654D746FLL;
  *(v1 + 120) = MEMORY[0x277D839B0];
  *(v1 + 96) = v2;
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_28_3(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_10_10(v11);
  OUTLINED_FUNCTION_14_14(53);
  OUTLINED_FUNCTION_102();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_266D42EB8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D42ECC()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v2 = OUTLINED_FUNCTION_36_5();
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_266DAE4A0;
  OUTLINED_FUNCTION_1_52();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  *(v2 + 48) = v1;
  v10 = OUTLINED_FUNCTION_11_25(MEMORY[0x277D55C70]);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_28_3(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_23_16(v7);

  return (v10)(0xD000000000000033, 0x8000000266DC3E70, v2);
}

uint64_t sub_266D42FE4()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_62();
  v8 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266D43070()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  v4 = OUTLINED_FUNCTION_14_27(v3, xmmword_266DB05D0);
  OUTLINED_FUNCTION_54_5(v4, v5, &qword_2800CA038, &unk_266DAFBF0);
  v6 = sub_266DA919C();
  if (OUTLINED_FUNCTION_18_17(v6) == 1)
  {
    sub_266C3A088(v1, &qword_2800CA038, &unk_266DAFBF0);
    OUTLINED_FUNCTION_46_5();
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_6_10();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_25_4();
    v9();
  }

  v10 = *(v0 + 72);
  v11 = *(v0 + 24);
  OUTLINED_FUNCTION_1_52();
  v3[5].n128_u64[0] = v12;
  v3[5].n128_u64[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  v3[6].n128_u64[0] = v11;
  OUTLINED_FUNCTION_49_8();
  v3[7].n128_u64[1] = v14;
  v3[8].n128_u64[0] = v15;
  v3[8].n128_u64[1] = 0xEC000000654D746FLL;
  v3[10].n128_u64[1] = MEMORY[0x277D839B0];
  v3[9].n128_u8[0] = v10;
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v16 = swift_task_alloc();
  *(v0 + 56) = v16;
  *v16 = v0;
  OUTLINED_FUNCTION_28_9(v16);
  OUTLINED_FUNCTION_14_14(52);
  OUTLINED_FUNCTION_102();

  return v20(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_266D4321C()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 76) = v3;
  OUTLINED_FUNCTION_38_10(v4, v2, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v9);
  v11 = *(v10 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_62();
  v12 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266D432A8()
{
  OUTLINED_FUNCTION_51_3();
  v30 = v1;
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  v5 = OUTLINED_FUNCTION_14_27(v4, xmmword_266DB05B0);
  OUTLINED_FUNCTION_54_5(v5, v6, &qword_2800CA038, &unk_266DAFBF0);
  v7 = sub_266DA919C();
  if (OUTLINED_FUNCTION_18_17(v7) == 1)
  {
    sub_266C3A088(v2, &qword_2800CA038, &unk_266DAFBF0);
    OUTLINED_FUNCTION_46_5();
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_6_10();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_25_4();
    v10();
  }

  v11 = *(v0 + 76);
  v12 = *(v0 + 75);
  v13 = *(v0 + 74);
  v14 = *(v0 + 73);
  v15 = *(v0 + 72);
  v16 = *(v0 + 24);
  OUTLINED_FUNCTION_1_52();
  v4[5].n128_u64[0] = v17;
  v4[5].n128_u64[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  OUTLINED_FUNCTION_27_11(v19);
  v4[9].n128_u8[0] = v15;
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_35_6(v20);
  v4[12].n128_u8[0] = v14;
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_34_6(v21);
  v4[15].n128_u8[0] = v13;
  v4[16].n128_u64[1] = v22;
  strcpy(&v4[17], "ownerIsNotMe");
  v4[17].n128_u8[13] = 0;
  v4[17].n128_u16[7] = -5120;
  v4[18].n128_u8[0] = v12;
  OUTLINED_FUNCTION_12_22();
  v4[19].n128_u64[1] = v23;
  v4[20].n128_u64[0] = v24;
  OUTLINED_FUNCTION_16_17();
  v4[20].n128_u64[1] = v25;
  v4[22].n128_u64[1] = v26;
  v29 = OUTLINED_FUNCTION_11_25(MEMORY[0x277D55C70]);
  v4[21].n128_u8[0] = v11;

  v27 = swift_task_alloc();
  *(v0 + 56) = v27;
  *v27 = v0;
  OUTLINED_FUNCTION_28_9(v27);

  return (v29)(0xD000000000000034);
}

uint64_t sub_266D434B8(uint64_t a1, char a2, char a3, char a4, char a5)
{
  *(v6 + 59) = a5;
  *(v6 + 58) = a4;
  *(v6 + 57) = a3;
  *(v6 + 56) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = v5;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D434DC()
{
  OUTLINED_FUNCTION_51_3();
  v24 = v2;
  v3 = *(v0 + 59);
  v4 = *(v0 + 58);
  v5 = *(v0 + 57);
  v6 = *(v0 + 56);
  v7 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v8 = swift_allocObject();
  *(OUTLINED_FUNCTION_35_3(v8) + 16) = xmmword_266DB4180;
  OUTLINED_FUNCTION_1_52();
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  *(v1 + 48) = v7;
  OUTLINED_FUNCTION_47_7();
  *(v1 + 72) = v12;
  *(v1 + 80) = 0xD000000000000012;
  *(v1 + 88) = v13;
  v14 = MEMORY[0x277D839B0];
  *(v1 + 96) = v6;
  *(v1 + 120) = v14;
  *(v1 + 128) = 0xD000000000000016;
  *(v1 + 136) = 0x8000000266DC3DD0;
  *(v1 + 144) = v5;
  OUTLINED_FUNCTION_12_22();
  *(v1 + 168) = v15;
  *(v1 + 176) = v16;
  OUTLINED_FUNCTION_16_17();
  *(v1 + 184) = v17;
  *(v1 + 192) = v4;
  *(v1 + 216) = v18;
  *(v1 + 224) = 0x7449646E69467369;
  *(v1 + 232) = 0xEA00000000006D65;
  *(v1 + 264) = v18;
  v23 = OUTLINED_FUNCTION_11_25(MEMORY[0x277D55C70]);
  *(v1 + 240) = v3;

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_28_3(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_23_16(v20);

  return (v23)(0xD00000000000002ALL, 0x8000000266DC3D80, v1);
}

uint64_t sub_266D43690(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D436AC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  *(v3 + 16) = xmmword_266DB05D0;
  *(v3 + 32) = 0x7372656E776FLL;
  *(v3 + 40) = 0xE600000000000000;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5D0, &qword_266DB4298);
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x656369766564;
  *(v3 + 88) = 0xE600000000000000;
  if (v1)
  {
    type metadata accessor for FindmyDevice(0);
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  v5 = *(v0 + 64);
  *(v3 + 96) = v1;
  OUTLINED_FUNCTION_12_22();
  *(v3 + 120) = v6;
  *(v3 + 128) = v7;
  OUTLINED_FUNCTION_16_17();
  *(v3 + 136) = v8;
  *(v3 + 168) = MEMORY[0x277D839B0];
  *(v3 + 144) = v9;
  v10 = *(MEMORY[0x277D55C70] + 4);
  v14 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *v11 = v0;
  v11[1] = sub_266CB2CF4;
  v12 = *(v0 + 32);

  return v14(0xD000000000000029, 0x8000000266DC3D50, v3);
}

BOOL sub_266D43848()
{
  v0 = sub_266DAAF8C();

  return v0 != 0;
}

BOOL sub_266D4389C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266D43848();
  *a2 = result;
  return result;
}

uint64_t sub_266D438F4()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_62();
  v7 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266D4397C()
{
  v2 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = OUTLINED_FUNCTION_41_1();
  v1[6] = v3;
  v4 = OUTLINED_FUNCTION_3_48(v3, xmmword_266DB05C0);
  v6 = OUTLINED_FUNCTION_32_9(v4, v5 & 0xFFFFFFFFFFFFLL | 0x6544000000000000);
  if (v2)
  {
    v6 = type metadata accessor for FindmyDevice(v6);
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  v7 = v1[5];
  v8 = v1[3];
  *(v3 + 48) = v2;
  *(v3 + 72) = v6;
  *(v3 + 80) = 0xD000000000000012;
  *(v3 + 88) = 0x8000000266DC3CF0;
  sub_266C744CC(v8, v7, &qword_2800CA038, &unk_266DAFBF0);
  v9 = sub_266DA919C();
  v10 = OUTLINED_FUNCTION_18_17(v9);
  v11 = v1[2];
  if (v10 == 1)
  {
    v12 = v1[2];

    sub_266C3A088(v7, &qword_2800CA038, &unk_266DAFBF0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_6_10();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_25_4();
    v15();
  }

  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C68]);
  v16 = swift_task_alloc();
  v1[7] = v16;
  v17 = sub_266D456D8();
  *v16 = v1;
  v16[1] = sub_266CB30E4;
  v18 = v1[4];

  return v20(0xD000000000000030, 0x8000000266DC3D10, v3, &type metadata for FindDeviceAndPlaySoundCATsSimple.DisambiguationButtonTitleDialogIds, v17);
}

uint64_t sub_266D43B6C()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  OUTLINED_FUNCTION_38_10(v3, v2, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v8);
  v10 = *(v9 + 64);
  v1[5] = OUTLINED_FUNCTION_62();
  v11 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266D43BF4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  v4 = OUTLINED_FUNCTION_14_27(v3, xmmword_266DB5800);
  OUTLINED_FUNCTION_54_5(v4, v5, &qword_2800CA038, &unk_266DAFBF0);
  v6 = sub_266DA919C();
  if (OUTLINED_FUNCTION_18_17(v6) == 1)
  {
    sub_266C3A088(v1, &qword_2800CA038, &unk_266DAFBF0);
    OUTLINED_FUNCTION_46_5();
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_6_10();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_25_4();
    v9();
  }

  v10 = *(v0 + 75);
  v11 = *(v0 + 74);
  v12 = *(v0 + 73);
  v13 = *(v0 + 72);
  v14 = *(v0 + 24);
  OUTLINED_FUNCTION_1_52();
  v3[5].n128_u64[0] = v15;
  v3[5].n128_u64[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  OUTLINED_FUNCTION_27_11(v17);
  v3[9].n128_u8[0] = v13;
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_35_6(v18);
  v3[12].n128_u8[0] = v12;
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_34_6(v19);
  v3[15].n128_u8[0] = v11;
  OUTLINED_FUNCTION_12_22();
  v3[16].n128_u64[1] = v20;
  v3[17].n128_u64[0] = v21;
  OUTLINED_FUNCTION_16_17();
  v3[17].n128_u64[1] = v22;
  v3[19].n128_u64[1] = v23;
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);
  v3[18].n128_u8[0] = v10;

  v24 = swift_task_alloc();
  *(v0 + 56) = v24;
  *v24 = v0;
  OUTLINED_FUNCTION_28_9(v24);
  v25 = OUTLINED_FUNCTION_14_14(49);

  return v26(v25);
}

uint64_t sub_266D43DD4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D43DE8()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = OUTLINED_FUNCTION_36_5();
  v4 = OUTLINED_FUNCTION_35_3(v3);
  v5 = OUTLINED_FUNCTION_25_12(v4, xmmword_266DAE4A0);
  if (v2)
  {
    v5 = type metadata accessor for FindmyDevice(v5);
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v1[6] = v2;
  v1[9] = v5;
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_28_3(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_10_10(v7);
  OUTLINED_FUNCTION_14_14(41);
  OUTLINED_FUNCTION_102();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_266D43ED8(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D43EF0()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_41_1();
  *(OUTLINED_FUNCTION_35_3(v4) + 16) = xmmword_266DB05C0;
  OUTLINED_FUNCTION_1_52();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  OUTLINED_FUNCTION_22_14(v8);
  *(v1 + 120) = MEMORY[0x277D839B0];
  *(v1 + 96) = v2;
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_28_3(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_10_10(v10);
  OUTLINED_FUNCTION_14_14(44);
  OUTLINED_FUNCTION_102();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_266D43FFC(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D44014()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = OUTLINED_FUNCTION_41_1();
  v4 = OUTLINED_FUNCTION_35_3(v3);
  v5 = OUTLINED_FUNCTION_3_48(v4, xmmword_266DB05C0);
  v7 = OUTLINED_FUNCTION_32_9(v5, v6 & 0xFFFFFFFFFFFFLL | 0x6544000000000000);
  if (v2)
  {
    type metadata accessor for FindmyDevice(v7);
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v8 = *(v0 + 56);
  v1[6] = v2;
  OUTLINED_FUNCTION_12_22();
  v1[9] = v9;
  v1[10] = v10;
  OUTLINED_FUNCTION_16_17();
  v1[11] = v11;
  OUTLINED_FUNCTION_45_6(v12);
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_28_3(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_10_10(v14);
  OUTLINED_FUNCTION_14_14(40);
  OUTLINED_FUNCTION_102();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_266D44134(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D44148()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v2 = OUTLINED_FUNCTION_36_5();
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_266DAE4A0;
  OUTLINED_FUNCTION_1_52();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  *(v2 + 48) = v1;
  v10 = OUTLINED_FUNCTION_11_25(MEMORY[0x277D55C70]);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_28_3(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_23_16(v7);

  return (v10)(0xD000000000000029, 0x8000000266DC3BF0, v2);
}

uint64_t sub_266D44260()
{
  OUTLINED_FUNCTION_22_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v8);
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_62();
  v11 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266D442F0()
{
  OUTLINED_FUNCTION_51_3();
  v31 = v1;
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = swift_allocObject();
  v0[10] = v3;
  v4 = OUTLINED_FUNCTION_25_12(v3, xmmword_266DB5800);
  if (v2)
  {
    v4 = type metadata accessor for FindmyDevice(v4);
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  v5 = v0[3];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  strcpy((v3 + 80), "deviceLocation");
  *(v3 + 95) = -18;
  v6 = 0;
  if (v5)
  {
    v6 = sub_266DA8F2C();
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  v7 = v0[9];
  v8 = v0[4];
  *(v3 + 96) = v5;
  *(v3 + 120) = v6;
  strcpy((v3 + 128), "locationType");
  *(v3 + 141) = 0;
  *(v3 + 142) = -5120;
  sub_266C744CC(v8, v7, &qword_2800CA038, &unk_266DAFBF0);
  v9 = sub_266DA919C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);
  v11 = v0[9];
  v12 = v0[2];
  v13 = v0[3];
  if (EnumTagSinglePayload == 1)
  {
    v14 = v0[3];

    sub_266C3A088(v11, &qword_2800CA038, &unk_266DAFBF0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    (*(*(v9 - 8) + 32))(boxed_opaque_existential_1, v11, v9);
  }

  v16 = v0[5];
  OUTLINED_FUNCTION_47_7();
  *(v3 + 176) = 0xD000000000000011;
  *(v3 + 184) = v17;
  if (v16)
  {
    sub_266DA907C();
    v18 = v16;
  }

  else
  {
    v18 = 0;
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
  }

  v19 = v0[6];
  *(v3 + 192) = v18;
  OUTLINED_FUNCTION_47_7();
  *(v3 + 216) = v20;
  *(v3 + 224) = 0xD000000000000014;
  *(v3 + 232) = v21;
  if (v19)
  {
    v22 = sub_266DA90CC();
    v23 = v19;
  }

  else
  {
    v23 = 0;
    v22 = 0;
    *(v3 + 248) = 0;
    *(v3 + 256) = 0;
  }

  v24 = v0[7];
  *(v3 + 240) = v23;
  *(v3 + 264) = v22;
  *(v3 + 272) = 0xD000000000000010;
  *(v3 + 280) = 0x8000000266DC3B90;
  v25 = 0;
  if (v24)
  {
    v25 = sub_266DA8F9C();
  }

  else
  {
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
  }

  *(v3 + 288) = v24;
  *(v3 + 312) = v25;
  v26 = *(MEMORY[0x277D55C70] + 4);
  v30 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v27 = swift_task_alloc();
  v0[11] = v27;
  *v27 = v0;
  v27[1] = sub_266D4461C;
  v28 = v0[8];

  return v30(0xD000000000000035, 0x8000000266DC3BB0, v3);
}

uint64_t sub_266D4461C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[9];
    v12 = v3[10];

    v14 = OUTLINED_FUNCTION_11_10();

    return v15(v14);
  }
}

uint64_t sub_266D4474C()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[9];
  v1 = v0[10];

  OUTLINED_FUNCTION_28();
  v4 = v0[12];

  return v3();
}

uint64_t sub_266D447B0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D447C8()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v2 = OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_47_7();
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = v4;
  *(v3 + 72) = MEMORY[0x277D839B0];
  v5 = MEMORY[0x277D55C70];
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_1_30(v5);
  *(v0 + 24) = v2;
  *(v2 + 16) = v6;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_266D448DC;
  v8 = *(v0 + 16);

  return v10(0xD00000000000002DLL, 0x8000000266DC3B40, v2);
}

uint64_t sub_266D448DC()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_7();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    v13 = OUTLINED_FUNCTION_2_28();

    return v14(v13);
  }
}

uint64_t sub_266D44A04(uint64_t a1, char a2, char a3)
{
  *(v4 + 57) = a3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D44A20()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 57);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v5 = swift_allocObject();
  *(OUTLINED_FUNCTION_35_3(v5) + 16) = xmmword_266DB05D0;
  OUTLINED_FUNCTION_1_52();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  OUTLINED_FUNCTION_22_14(v9);
  v10 = MEMORY[0x277D839B0];
  *(v1 + 96) = v3;
  *(v1 + 120) = v10;
  *(v1 + 128) = 0x4D72656E774F7369;
  *(v1 + 136) = 0xE900000000000065;
  *(v1 + 168) = v10;
  *(v1 + 144) = v2;
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_28_3(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_10_10(v12);
  OUTLINED_FUNCTION_14_14(48);
  OUTLINED_FUNCTION_102();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_266D44B5C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB4814;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(40);

  return v4(v3);
}

uint64_t sub_266D44C04()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB62BC;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(51);

  return v4(v3);
}

uint64_t sub_266D44CAC()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB62BC;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(58);

  return v4(v3);
}

uint64_t sub_266D44D54(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D44D6C()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = OUTLINED_FUNCTION_41_1();
  v4 = OUTLINED_FUNCTION_35_3(v3);
  v5 = OUTLINED_FUNCTION_3_48(v4, xmmword_266DB05C0);
  v7 = OUTLINED_FUNCTION_32_9(v5, v6 & 0xFFFFFFFFFFFFLL | 0x7551000000000000);
  if (v2)
  {
    v7 = type metadata accessor for FindmyDevice(v7);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_24_10(v7);
  OUTLINED_FUNCTION_45_6(v8);
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_28_3(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_10_10(v10);
  OUTLINED_FUNCTION_14_14(61);
  OUTLINED_FUNCTION_102();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_266D44E78(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D44E90()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = OUTLINED_FUNCTION_41_1();
  v4 = OUTLINED_FUNCTION_35_3(v3);
  v5 = OUTLINED_FUNCTION_3_48(v4, xmmword_266DB05C0);
  v7 = OUTLINED_FUNCTION_32_9(v5, v6 & 0xFFFFFFFFFFFFLL | 0x7551000000000000);
  if (v2)
  {
    v7 = type metadata accessor for FindmyDevice(v7);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_24_10(v7);
  OUTLINED_FUNCTION_45_6(v8);
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_28_3(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_10_10(v10);
  OUTLINED_FUNCTION_14_14(49);
  OUTLINED_FUNCTION_102();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_266D44F9C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB62BC;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(53);

  return v4(v3);
}

uint64_t sub_266D45044()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  *(v1 + 32) = OUTLINED_FUNCTION_62();
  v7 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266D450CC()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = OUTLINED_FUNCTION_41_1();
  *(v0 + 40) = v3;
  *(v3 + 16) = xmmword_266DB05C0;
  *(v3 + 32) = 0x6E6F73616572;
  *(v3 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_54_5(v3, v4, &qword_2800CA038, &unk_266DAFBF0);
  v5 = sub_266DA919C();
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_266C3A088(*(v0 + 32), &qword_2800CA038, &unk_266DAFBF0);
    OUTLINED_FUNCTION_46_5();
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_6_10();
    v7 = *(v6 + 32);
    OUTLINED_FUNCTION_25_4();
    v8();
  }

  v9 = *(v0 + 64);
  OUTLINED_FUNCTION_12_22();
  *(v3 + 80) = v10;
  *(v3 + 88) = 0xED000073646F5072;
  OUTLINED_FUNCTION_45_6(v11);
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_23_16(v12);
  OUTLINED_FUNCTION_22_6();

  return v14(0xD000000000000027);
}

uint64_t sub_266D45274()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_11_10();

    return v15(v14);
  }
}

uint64_t sub_266D453A4()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[4];
  v1 = v0[5];

  OUTLINED_FUNCTION_28();
  v4 = v0[7];

  return v3();
}

uint64_t sub_266D45408()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_25_4();
  return sub_266D45458(v3, v4);
}

uint64_t sub_266D45458(uint64_t a1, uint64_t a2)
{
  v5 = sub_266DA926C();
  v6 = OUTLINED_FUNCTION_37_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  v14 = OUTLINED_FUNCTION_4_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_266C744CC(a1, &v20 - v17, &qword_2800C9C48, &unk_266DAEBA0);
  (*(v8 + 16))(v12, a2, v2);
  v18 = sub_266DA91AC();
  (*(v8 + 8))(a2, v2);
  sub_266C3A088(a1, &qword_2800C9C48, &unk_266DAEBA0);
  return v18;
}

uint64_t sub_266D455D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_266DA926C();
  v6 = OUTLINED_FUNCTION_37_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_266DA91BC();
  (*(v8 + 8))(a2, v3);
  return v15;
}

unint64_t sub_266D456D8()
{
  result = qword_2800CD610;
  if (!qword_2800CD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD610);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FindDeviceAndPlaySoundCATsSimple.DisambiguationButtonTitleDialogIds(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_266D457DC()
{
  result = qword_2800CD618;
  if (!qword_2800CD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD618);
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_14_27(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x76654464656B7361;
  result[2].n128_u64[1] = 0xEF65707954656369;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_17(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_14(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  strcpy((v2 + 80), "isFindAirPods");
  *(v2 + 94) = -4864;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_16(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_10(uint64_t result)
{
  v4 = *(v2 + 56);
  *(v3 + 48) = v1;
  *(v3 + 72) = result;
  strcpy((v3 + 80), "ownerIsNotMe");
  *(v3 + 93) = 0;
  *(v3 + 94) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_12(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  strcpy(&a1[2], "targetDevice");
  a1[2].n128_u8[13] = 0;
  a1[2].n128_u16[7] = -5120;
  return 0;
}

uint64_t OUTLINED_FUNCTION_27_11(uint64_t result)
{
  v2[12] = v1;
  v2[15] = result;
  v2[16] = 0x4E656D6153736168;
  v2[17] = 0xEB00000000656D61;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_9(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = v2;
  return 0;
}

void OUTLINED_FUNCTION_34_6(uint64_t a1@<X8>)
{
  v2[27] = a1;
  v2[28] = v1 & 0xFFFFFFFFFFFFLL | 0x4F65000000000000;
  v2[29] = 0xEC00000072656E77;
}

void OUTLINED_FUNCTION_35_6(uint64_t a1@<X8>)
{
  v2[21] = a1;
  v2[22] = v1 & 0xFFFFFFFFFFFFLL | 0x4D65000000000000;
  v2[23] = 0xEC0000006C65646FLL;
}

uint64_t OUTLINED_FUNCTION_38_10(uint64_t result, uint64_t a2, char a3, char a4, char a5, char a6)
{
  *(v6 + 75) = a6;
  *(v6 + 74) = a5;
  *(v6 + 73) = a4;
  *(v6 + 72) = a3;
  *(v6 + 16) = result;
  return result;
}

double OUTLINED_FUNCTION_46_5()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_266C744CC(v4, v5, a3, a4);
}

uint64_t *OUTLINED_FUNCTION_55_3()
{
  *(v1 + 72) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 48));
}

uint64_t sub_266D45AC8()
{
  sub_266DA929C();
  result = sub_266DA927C();
  qword_2800E64E8 = result;
  return result;
}

uint64_t sub_266D45B24()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800E64F0);
  v1 = __swift_project_value_buffer(v0, qword_2800E64F0);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy0B6FriendO6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_266D45C1C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266D45C5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_266D45CA4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_266D45CE0(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v71 = sub_266DA7C9C();
  v5 = OUTLINED_FUNCTION_0_2(v71);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v73 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - v12;
  v14 = sub_266DA812C();
  v15 = OUTLINED_FUNCTION_0_2(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v2 + 56);
  v23 = *(v2 + 64);

  *&v66 = v21;
  sub_266DA810C();
  v65 = v3;
  sub_266D46D08(v3, v75);
  v26 = sub_266C3A14C(a1, v24, v25);
  v70 = a1;
  if (v26)
  {
    v27 = v26;
    v74 = MEMORY[0x277D84F90];
    sub_266C38978();
    if (v27 < 0)
    {
      goto LABEL_43;
    }

    v62 = v17;
    v63 = v14;
    v28 = 0;
    v29 = v74;
    v72 = a1 & 0xC000000000000001;
    v68 = v7 + 32;
    v69 = a1 & 0xFFFFFFFFFFFFFF8;
    v67 = *(&v76 + 1);
    do
    {
      if (v72)
      {
        v30 = MEMORY[0x26D5F1780](v28, a1);
      }

      else
      {
        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v28 >= *(v69 + 16))
        {
          goto LABEL_42;
        }

        v30 = *(a1 + 8 * v28 + 32);
      }

      v31 = v30;
      sub_266C1CEB4(v30);

      sub_266DA7C8C();

      v74 = v29;
      v32 = *(v29 + 16);
      if (v32 >= *(v29 + 24) >> 1)
      {
        sub_266C38978();
        v29 = v74;
      }

      ++v28;
      *(v29 + 16) = v32 + 1;
      (*(v7 + 32))(v29 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v32, v13, v71);
      a1 = v70;
    }

    while (v27 != v28);
    v14 = v63;
    v17 = v62;
  }

  else
  {
    v72 = a1 & 0xC000000000000001;
    v69 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  sub_266D46D40(v75);
  v33 = v66;
  v63 = sub_266DA811C();

  (*(v17 + 8))(v33, v14);
  sub_266D46D08(v65, v75);
  v36 = sub_266C3A14C(a1, v34, v35);
  v37 = 0;
  v67 = (v7 + 8);
  v68 = v36;
  v38 = MEMORY[0x277D84F90];
  v66 = xmmword_266DAE4A0;
  while (1)
  {
    if (v68 == v37)
    {
      sub_266D46D40(v75);
      *&v75[0] = v38;
      sub_266C3815C(v63);
      v60 = v65;
      sub_266D463D8(a1);
      sub_266CC4918();
      sub_266CC4FB8();

      v61 = __swift_project_boxed_opaque_existential_1(v60, v60[3]);
      v75[0] = *v61;
      v75[1] = v61[1];
      v76 = v61[2];
      v77 = v61[3];
      sub_266CC0DAC();

      return;
    }

    if (v72)
    {
      v39 = MEMORY[0x26D5F1780](v37, a1);
    }

    else
    {
      if (v37 >= *(v69 + 16))
      {
        goto LABEL_36;
      }

      v39 = *(a1 + 8 * v37 + 32);
    }

    v40 = v39;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    sub_266C1CEB4(v39);

    sub_266DA7C8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FA8, &qword_266DAF990);
    v41 = *(v7 + 72);
    v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v66;
    v44 = [v40 name];
    v45 = v44;
    if (v44)
    {
      v46 = [v44 spokenPhrase];

      sub_266DAA70C();
    }

    v47 = sub_266DA7C8C();
    MEMORY[0x28223BE20](v47);
    v48 = v73;
    *(&v62 - 2) = v73;
    v49 = sub_266D69690(sub_266D46D70, (&v62 - 4), v43);
    swift_setDeallocating();
    sub_266C6F4C8();
    (*v67)(v48, v71);

    v50 = *(v49 + 16);
    v51 = *(v38 + 16);
    if (__OFADD__(v51, v50))
    {
      goto LABEL_37;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v51 + v50 > *(v38 + 24) >> 1)
    {
      sub_266CF9C84();
      v38 = v52;
    }

    a1 = v70;
    if (*(v49 + 16))
    {
      v53 = (*(v38 + 24) >> 1) - *(v38 + 16);
      v54 = *(sub_266DA7C2C() - 8);
      if (v53 < v50)
      {
        goto LABEL_39;
      }

      v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v56 = *(v54 + 72);
      swift_arrayInitWithCopy();

      if (v50)
      {
        v57 = *(v38 + 16);
        v58 = __OFADD__(v57, v50);
        v59 = v57 + v50;
        if (v58)
        {
          goto LABEL_40;
        }

        *(v38 + 16) = v59;
      }
    }

    else
    {

      if (v50)
      {
        goto LABEL_38;
      }
    }

    ++v37;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_266D463D8(unint64_t a1)
{
  v20 = sub_266DA835C();
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_266DA838C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  sub_266DA837C();
  v24 = MEMORY[0x277D84F90];
  v22 = v1;
  v23 = &v24;
  sub_266CB9F3C(sub_266D46D90, v21, a1);
  sub_266DA836C();
  sub_266DA834C();
  (*(v8 + 16))(v12, v14, v7);
  sub_266DA832C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B8, &unk_266DB79E0);
  v15 = *(v3 + 72);
  v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_266DAE4A0;
  (*(v3 + 32))(v17 + v16, v6, v20);
  (*(v8 + 8))(v14, v7);
  return v17;
}

uint64_t sub_266D46638(uint64_t a1, uint64_t a2)
{
  v4 = sub_266DA7C9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FB8, &qword_266DBB450);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v15 - v11;
  v13 = *(v5 + 16);
  v13(v15 - v11, a2, v4);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v4);
  v13(v8, a1, v4);
  return sub_266DA7C1C();
}

uint64_t sub_266D467A8(void **a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_266DA824C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_266DA82EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v20[-v13];
  v15 = *a1;
  sub_266DA82DC();
  sub_266D469B8(v15);
  v16 = sub_266DA82AC();
  sub_266DA82FC();
  v16(v20, 0);
  (*(v8 + 16))(v12, v14, v7);
  sub_266C386B0();
  v17 = *(*a3 + 16);
  sub_266C3873C(v17);
  (*(v8 + 8))(v14, v7);
  v18 = *a3;
  *(v18 + 16) = v17 + 1;
  return (*(v8 + 32))(v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, v12, v7);
}

uint64_t sub_266D469B8(void *a1)
{
  v2 = sub_266DA8BAC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_266DA8B9C();
  v6 = sub_266DA8A5C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_266DA8A4C();
  v9 = sub_266DA895C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_266DA894C();
  v12 = sub_266DA8ACC();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_266DA8ABC();
  sub_266C62498(a1);
  sub_266DA8AAC();

  sub_266DA892C();

  sub_266DA8A2C();

  sub_266DA8B6C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_266DAE3B0;
  *(v15 + 32) = v5;

  sub_266D46B84(v15);
}

uint64_t sub_266D46B84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7E8, &unk_266DB79F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  v6 = sub_266DA86BC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  MEMORY[0x26D5EEFB0](a1, v5);
  sub_266D04C1C(v5);
  sub_266DA83DC();
}

uint64_t sub_266D46DAC()
{
  type metadata accessor for EachFlow();
  sub_266D478EC();
  return sub_266DA79AC();
}

uint64_t sub_266D46E08(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_266D46E28, 0, 0);
}

uint64_t sub_266D46E28()
{
  v1 = v0[9];
  swift_beginAccess();
  if (sub_266C3A14C(*(v1 + 16), v2, v3))
  {
    v4 = v0[8];
    v5 = swift_beginAccess();
    sub_266D46EF0(v5, v6, v7);
    swift_endAccess();
    sub_266DA7D4C();
  }

  else
  {
    v8 = v0[8];
    sub_266DA7D7C();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_266D46EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  if (!sub_266C3A14C(*v3, a2, a3))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!sub_266C3A14C(v4, v5, v6))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_266CB9F54(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) == 0)
  {
    v7 = *(v4 + 32);

    goto LABEL_5;
  }

LABEL_9:
  v7 = MEMORY[0x26D5F1780](0, v4);
LABEL_5:
  result = sub_266C3A14C(v4, v8, v9);
  if (result)
  {
    sub_266D4774C(0, 1);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}