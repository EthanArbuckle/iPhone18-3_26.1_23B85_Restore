uint64_t sub_274BB5518(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E3F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274BC0C14();
  sub_274BF5D84();
  v15 = 0;
  sub_274BF5B84();
  if (!v2)
  {
    v14 = 1;
    sub_274BF5B84();
    v13 = 2;
    sub_274BF5B74();
    v12 = 3;
    sub_274BF5B74();
    v11 = *(v3 + 64);
    v10[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
    sub_274BC0AD4(&qword_280989848);
    sub_274BF5BB4();
    v10[14] = 5;
    sub_274BF5B84();
    v10[13] = 6;
    sub_274BF5B84();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_274BB5794@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E3E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274BC0C14();
  sub_274BF5D74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_274BF5B44();
  v11 = v10;
  LOBYTE(v36[0]) = 1;
  v31 = sub_274BF5B44();
  v34 = v12;
  LOBYTE(v36[0]) = 2;
  v28 = sub_274BF5B34();
  v29 = v9;
  v33 = v13;
  LOBYTE(v36[0]) = 3;
  v14 = sub_274BF5B34();
  v30 = v15;
  v27 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
  LOBYTE(__src[0]) = 4;
  sub_274BC0AD4(&unk_28098E3C0);
  sub_274BF5B64();
  v26 = v36[0];
  LOBYTE(v36[0]) = 5;
  v25 = sub_274BF5B44();
  v32 = v16;
  v37 = 6;
  v17 = sub_274BF5B44();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  __src[0] = v29;
  __src[1] = v11;
  __src[2] = v31;
  __src[3] = v34;
  __src[4] = v28;
  v20 = v33;
  __src[5] = v33;
  __src[6] = v27;
  v21 = v30;
  v22 = v26;
  __src[7] = v30;
  __src[8] = v26;
  __src[9] = v25;
  __src[10] = v32;
  __src[11] = v17;
  __src[12] = v19;
  sub_274BBFDF8(__src, v36);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v36[0] = v29;
  v36[1] = v11;
  v36[2] = v31;
  v36[3] = v34;
  v36[4] = v28;
  v36[5] = v20;
  v36[6] = v27;
  v36[7] = v21;
  v36[8] = v22;
  v36[9] = v25;
  v36[10] = v32;
  v36[11] = v17;
  v36[12] = v19;
  sub_274BBFE30(v36);
  return memcpy(a2, __src, 0x68uLL);
}

uint64_t sub_274BB5D10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_274BF5C24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746948706F74 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_274BF5C24();

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

uint64_t sub_274BB5DD4(char a1)
{
  if (a1)
  {
    return 0x73746948706F74;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_274BB5E08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E408);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274BC0C68();
  sub_274BF5D84();
  v13 = 0;
  sub_274BF5B84();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
    sub_274BC0AD4(&qword_280989848);
    sub_274BF5BB4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_274BB5FD0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E3F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274BC0C68();
  sub_274BF5D74();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_274BF5B44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
    v9[15] = 1;
    sub_274BC0AD4(&unk_28098E3C0);
    sub_274BF5B64();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_274BB61F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365;
  if (v4 || (sub_274BF5C24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1936748641 && a2 == 0xE400000000000000;
    if (v6 || (sub_274BF5C24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64657265746C6966 && a2 == 0xEC00000073707041;
      if (v7 || (sub_274BF5C24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x64657265746C6966 && a2 == 0xEF736E6F69746341;
        if (v8 || (sub_274BF5C24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64656E616870726FLL && a2 == 0xEF736E6F69746341;
          if (v9 || (sub_274BF5C24() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x73746948706F74 && a2 == 0xE700000000000000;
            if (v10 || (sub_274BF5C24() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000011 && 0x8000000274C0C730 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_274BF5C24();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_274BB6444(char a1)
{
  result = 0x69726F6765746163;
  switch(a1)
  {
    case 1:
      result = 1936748641;
      break;
    case 2:
      result = 0x64657265746C6966;
      break;
    case 3:
      v3 = 0x7265746C6966;
      goto LABEL_6;
    case 4:
      v3 = 0x6E616870726FLL;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 5:
      result = 0x73746948706F74;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_274BB651C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E250);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274BC0054();
  sub_274BF5D84();
  v11 = *v3;
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E208);
  sub_274BC0330();
  sub_274BF5BB4();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    sub_274BF5BB4();
    v11 = v3[2];
    HIBYTE(v10) = 2;
    sub_274BF5BB4();
    v11 = v3[3];
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E220);
    sub_274BC0408();
    sub_274BF5BB4();
    v11 = v3[4];
    HIBYTE(v10) = 4;
    sub_274BF5BB4();
    v11 = v3[5];
    HIBYTE(v10) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E238);
    sub_274BC04E0();
    sub_274BF5BB4();
    v11 = v3[6];
    HIBYTE(v10) = 6;
    sub_274BF5BB4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_274BB6814@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E1F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274BC0054();
  sub_274BF5D74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E208);
    v24 = 0;
    sub_274BC00A8();
    sub_274BF5B64();
    v23 = v25;
    v24 = 1;
    sub_274BF5B64();
    v22 = v25;
    v24 = 2;
    sub_274BF5B64();
    v21 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E220);
    v24 = 3;
    v9 = sub_274BC0180();
    sub_274BF5B64();
    v20 = a2;
    v10 = v25;
    v24 = 4;
    sub_274BF5B64();
    v19 = v9;
    v11 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E238);
    v24 = 5;
    sub_274BC0258();
    sub_274BF5B64();
    v12 = v25;
    v24 = 6;
    sub_274BF5B64();
    (*(v6 + 8))(v8, v5);
    v13 = v25;
    v14 = v23;

    v15 = v22;

    v16 = v21;

    __swift_destroy_boxed_opaque_existential_0(a1);

    v18 = v20;
    *v20 = v14;
    v18[1] = v15;
    v18[2] = v16;
    v18[3] = v10;
    v18[4] = v11;
    v18[5] = v12;
    v18[6] = v13;
  }

  return result;
}

uint64_t sub_274BB6D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274BB51FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274BB6D6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BB5440();
  *a1 = result;
  return result;
}

uint64_t sub_274BB6D94(uint64_t a1)
{
  v2 = sub_274BC0C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274BB6DD0(uint64_t a1)
{
  v2 = sub_274BC0C14();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_274BB6E0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_274BB5794(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t sub_274BB6EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274BB5D10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274BB6EDC(uint64_t a1)
{
  v2 = sub_274BC0C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274BB6F18(uint64_t a1)
{
  v2 = sub_274BC0C68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_274BB6F80@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_274BB6FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274BB61F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274BB7004(uint64_t a1)
{
  v2 = sub_274BC0054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274BB7040(uint64_t a1)
{
  v2 = sub_274BC0054();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_274BB707C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_274BB6814(a1, v6);
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

uint64_t sub_274BB7110()
{
  v0 = sub_274BF2BB4();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E058);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - v3;
  sub_274BF2B84();
  sub_274BB72D4();
  sub_274BB7328();
  sub_274BB737C();
  sub_274BF2824();
  sub_274BC19D4(&unk_28098E078);
  sub_274BF2834();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_274BB72D4()
{
  result = qword_28098E060;
  if (!qword_28098E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E060);
  }

  return result;
}

unint64_t sub_274BB7328()
{
  result = qword_28098E068;
  if (!qword_28098E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E068);
  }

  return result;
}

unint64_t sub_274BB737C()
{
  result = qword_28098E070;
  if (!qword_28098E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E070);
  }

  return result;
}

unint64_t sub_274BB73D0()
{
  result = qword_28098E0A0;
  if (!qword_28098E0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E080);
    sub_274BB7454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E0A0);
  }

  return result;
}

unint64_t sub_274BB7454()
{
  result = qword_28098E0A8;
  if (!qword_28098E0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E0B0);
    sub_274BB74E0();
    sub_274BB7614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E0A8);
  }

  return result;
}

unint64_t sub_274BB74E0()
{
  result = qword_28098E0B8;
  if (!qword_28098E0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E0C0);
    sub_274BB756C();
    sub_274BB75C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E0B8);
  }

  return result;
}

unint64_t sub_274BB756C()
{
  result = qword_28098E0C8;
  if (!qword_28098E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E0C8);
  }

  return result;
}

unint64_t sub_274BB75C0()
{
  result = qword_28098E0D0;
  if (!qword_28098E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E0D0);
  }

  return result;
}

unint64_t sub_274BB7614()
{
  result = qword_28098E0D8;
  if (!qword_28098E0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E0E0);
    sub_274BC19D4(&unk_28098E0E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E0D8);
  }

  return result;
}

uint64_t sub_274BB7738(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_274BB77C4()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E4B0);
  sub_274BC19D4(&unk_28098E4B8);
  sub_274BC19D4(&unk_28098E4C0);
  return sub_274BF4944();
}

uint64_t sub_274BB78F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);
  sub_274BC14F8(v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E4C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E4D0);
  sub_274BC19D4(&unk_28098E4D8);
  sub_274BC19D4(&unk_28098E4E0);
  return sub_274BF3354();
}

uint64_t sub_274BB7A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E4F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v40 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E4F8);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E500);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E508);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v33 - v18;
  if (*(*(a1 + 48) + 16))
  {
    v37 = v33;
    MEMORY[0x28223BE20](v17);
    v38 = v4;
    v36 = &v33[-4];
    sub_274BB7FD0(a1);
    v34 = v12;
    v35 = v8;
    v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BB18);
    v33[0] = sub_274BC19D4(&unk_28098E510);
    v20 = v15;
    v21 = a1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E518);
    v23 = sub_274BC19D4(&unk_28098E520);
    v42 = v22;
    v43 = v23;
    a1 = v21;
    v15 = v20;
    swift_getOpaqueTypeConformance2();
    v24 = v34;
    v4 = v38;
    sub_274BF3244();
    (*(v10 + 32))(v19, v24, v9);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v19, v25, 1, v9);
  v42 = *(a1 + 40);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E3A8);
  sub_274BC19D4(&unk_28098E528);
  sub_274BC1538();
  v26 = v39;
  sub_274BF4944();
  sub_274AEDAD4(v19, v15);
  v27 = *(v4 + 16);
  v28 = v40;
  v27(v40, v26, v3);
  v29 = v41;
  sub_274AEDAD4(v15, v41);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E538);
  v27((v29 + *(v30 + 48)), v28, v3);
  v31 = *(v4 + 8);
  v31(v26, v3);
  sub_274B17578(v19, &qword_28098E508);
  v31(v28, v3);
  return sub_274B17578(v15, &qword_28098E508);
}

uint64_t sub_274BB7FD0(uint64_t a1)
{
  v2 = sub_274BF3894();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E518);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-v5];
  v16 = *(a1 + 48);
  v7 = v16;
  KeyPath = swift_getKeyPath();
  v14 = 0;
  v15 = v7;
  v11 = &v15;
  v12 = KeyPath;
  v13 = sub_274BC1A5C;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E370);
  sub_274BC07CC(&unk_28098E378);
  sub_274BF4034();

  sub_274B17578(&v16, &qword_280989650);
  sub_274BF3884();
  sub_274BF3874();
  sub_274BF3864();
  sub_274BF3874();
  sub_274BF38B4();
  sub_274BC19D4(&unk_28098E520);
  sub_274BF42B4();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_274BB8270@<X0>(uint64_t a1@<X8>)
{
  sub_274ADDF6C();

  result = sub_274BF4104();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void *sub_274BB82DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274BF3804();
  v8 = 1;
  sub_274BB83B8(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v10, __src, sizeof(v10));
  sub_274AD8D30(__dst, &v5, &qword_28098BAD0);
  sub_274B17578(v10, &qword_28098BAD0);
  memcpy(&v7[7], __dst, 0x50uLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  return memcpy((a1 + 17), v7, 0x57uLL);
}

uint64_t sub_274BB83B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274BF3894();
  MEMORY[0x28223BE20](v2 - 8);
  sub_274BF38A4();
  v3 = sub_274BF40E4();
  v21 = v4;
  v22 = v3;
  v20 = v5;
  v23 = v6;
  sub_274BF3884();
  sub_274BF3874();
  sub_274BF3854();
  sub_274BF3874();
  sub_274BF38B4();
  v7 = sub_274BF40E4();
  v9 = v8;
  v11 = v10;
  sub_274BF4654();
  v12 = sub_274BF4094();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_274AFA1D0(v7, v9, v11 & 1);

  *a1 = v22;
  *(a1 + 8) = v21;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v23;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v12;
  *(a1 + 56) = v14;
  *(a1 + 64) = v16 & 1;
  *(a1 + 72) = v18;
  sub_274AF396C(v22, v21, v20 & 1);

  sub_274AF396C(v12, v14, v16 & 1);

  sub_274AFA1D0(v12, v14, v16 & 1);

  sub_274AFA1D0(v22, v21, v20 & 1);
}

uint64_t sub_274BB8628@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = a1[2];
  a2[1] = v3;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = v2;
}

void *sub_274BB8674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_274BF3804();
  v10 = 1;
  sub_274BB8750(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_274AD8D30(__dst, v7, &qword_28098E4E8);
  sub_274B17578(v12, &qword_28098E4E8);
  memcpy(&v9[7], __dst, 0xA8uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0xAFuLL);
}

uint64_t sub_274BB8750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_274BF3894();
  MEMORY[0x28223BE20](v3 - 8);
  v35 = sub_274BF3904();
  LOBYTE(v49[0]) = 1;
  sub_274BB8B24(v51);
  *&__src[7] = v51[0];
  *&__src[23] = v51[1];
  *&__src[39] = v51[2];
  *&__src[55] = v51[3];
  v4 = *(*(a1 + 48) + 16);
  if (v4)
  {
    sub_274BF3884();
    sub_274BF3874();
    v49[0] = v4;
    sub_274BF3854();
    sub_274BF3874();
    sub_274BF38B4();
    v5 = sub_274BF40E4();
    v7 = v6;
    v9 = v8;
    sub_274BF3FB4();
    v10 = sub_274BF40D4();
    v12 = v11;
    v33 = v13;
    v15 = v14;

    sub_274AFA1D0(v5, v7, v9 & 1);

    v16 = v33 & 1;
    v32 = v12;
    v34 = v10;
    v30 = v16;
    sub_274AF396C(v10, v12, v16);
    v31 = v15;
  }

  else
  {
    v32 = 0;
    v34 = 0;
    v30 = 0;
    v31 = 0;
  }

  sub_274BF3884();
  sub_274BF3874();
  v49[0] = *(a1 + 32);
  sub_274BF3854();
  sub_274BF3874();
  sub_274BF38B4();
  v17 = sub_274BF40E4();
  v19 = v18;
  v21 = v20;
  sub_274BF4654();
  v22 = sub_274BF4094();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_274AFA1D0(v17, v19, v21 & 1);

  v47[0] = v35;
  v47[1] = 0;
  LOBYTE(v47[2]) = 1;
  memcpy(&v47[2] + 1, __src, 0x47uLL);
  v46 = 1;
  v48[0] = v47;
  v48[1] = &v45;
  v41 = v34;
  v42 = v32;
  v43 = v30;
  v44 = v31;
  v45 = 0;
  v37 = v22;
  v38 = v24;
  v39 = v26 & 1;
  v40 = v28;
  v48[2] = &v41;
  v48[3] = &v37;
  sub_274BA1D20(v48, a2);
  sub_274B7AD64(v34, v32, v30, v31);
  sub_274AFA1D0(v37, v38, v39);

  sub_274B7AD64(v41, v42, v43, v44);
  memcpy(v49, v47, 0x58uLL);
  return sub_274B17578(v49, &qword_28098BAA8);
}

uint64_t sub_274BB8B24@<X0>(uint64_t a1@<X8>)
{
  sub_274ADDF6C();

  v2 = sub_274BF4104();
  v25 = v3;
  v26 = v2;
  v24 = v4;
  v27 = v5;

  v6 = sub_274BF4104();
  v8 = v7;
  v10 = v9;
  sub_274BF4654();
  v11 = sub_274BF4094();
  v13 = v12;
  v15 = v14;

  sub_274AFA1D0(v6, v8, v10 & 1);

  sub_274BF3FB4();
  v16 = sub_274BF40D4();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_274AFA1D0(v11, v13, v15 & 1);

  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v27;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v22;
  sub_274AF396C(v26, v25, v24 & 1);

  sub_274AF396C(v16, v18, v20 & 1);

  sub_274AFA1D0(v16, v18, v20 & 1);

  sub_274AFA1D0(v26, v25, v24 & 1);
}

uint64_t sub_274BB8D0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E540);
  MEMORY[0x28223BE20](v0);
  sub_274BC15A8();
  sub_274ADDF6C();
  sub_274BF42C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E550);
  sub_274BC19D4(&unk_28098E558);
  swift_getOpaqueTypeConformance2();
  return sub_274BF3244();
}

void *sub_274BB8EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_274BF3804();
  v10 = 1;
  sub_274BB8F80(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_274AD8D30(__dst, v7, &qword_28098E560);
  sub_274B17578(v12, &qword_28098E560);
  memcpy(&v9[7], __dst, 0x88uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x8FuLL);
}

uint64_t sub_274BB8F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_274BF3894();
  MEMORY[0x28223BE20](v4 - 8);
  v19 = sub_274BF3904();
  LOBYTE(v23[0]) = 1;
  sub_274BB921C(a1, v21);
  *&v20[7] = v21[0];
  *&v20[23] = v21[1];
  *&v20[39] = v21[2];
  *&v20[55] = v21[3];
  v18 = v23[0];
  sub_274BF3884();
  sub_274BF3874();
  v23[0] = *(*a1 + 16);
  sub_274BF3854();
  sub_274BF3874();
  sub_274BF38B4();
  v5 = sub_274BF40E4();
  v7 = v6;
  v9 = v8;
  sub_274BF4654();
  v10 = sub_274BF4094();
  v12 = v11;
  v17 = v13;
  v15 = v14;

  sub_274AFA1D0(v5, v7, v9 & 1);

  v22[0] = v19;
  v22[1] = 0;
  LOBYTE(v22[2]) = v18;
  memcpy(&v22[2] + 1, v20, 0x47uLL);
  memcpy(a2, v22, 0x58uLL);
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = v10;
  *(a2 + 112) = v12;
  *(a2 + 120) = v17 & 1;
  *(a2 + 128) = v15;
  sub_274AD8D30(v22, v23, &qword_28098E568);
  sub_274AF396C(v10, v12, v17 & 1);

  sub_274AFA1D0(v10, v12, v17 & 1);

  v23[0] = v19;
  v23[1] = 0;
  v24 = v18;
  memcpy(v25, v20, sizeof(v25));
  return sub_274B17578(v23, &qword_28098E568);
}

uint64_t sub_274BB921C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_274ADDF6C();

  v5 = sub_274BF4104();
  v7 = v6;
  v9 = v8;
  if (*(a1 + 32))
  {
    v32 = v4;

    v10 = sub_274BF4104();
    v12 = v11;
    v14 = v13;
    sub_274BF4654();
    v33 = v7;
    v15 = sub_274BF4094();
    v17 = v16;
    v34 = v9;
    v19 = v18;

    sub_274AFA1D0(v10, v12, v14 & 1);

    sub_274BF3FB4();
    v20 = sub_274BF40D4();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = v19 & 1;
    v9 = v34;
    v28 = v15;
    v7 = v33;
    sub_274AFA1D0(v28, v17, v27);

    v29 = v24 & 1;
    sub_274AF396C(v20, v22, v24 & 1);

    v4 = v32;
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v29 = 0;
    v26 = 0;
  }

  v30 = v4 & 1;
  sub_274AF396C(v5, v7, v4 & 1);

  sub_274B7ABEC(v20, v22, v29, v26);
  sub_274B7AD64(v20, v22, v29, v26);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v30;
  *(a2 + 24) = v9;
  *(a2 + 32) = v20;
  *(a2 + 40) = v22;
  *(a2 + 48) = v29;
  *(a2 + 56) = v26;
  sub_274B7AD64(v20, v22, v29, v26);
  sub_274AFA1D0(v5, v7, v30);
}

uint64_t sub_274BB9480()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E590);
  sub_274BC16EC();
  sub_274BF4034();
}

uint64_t sub_274BB9540(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, __src, sizeof(v4));
  sub_274BBFDF8(__dst, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E5B0);
  sub_274BC19D4(&unk_28098E5B8);
  sub_274BC17A4();
  return sub_274BF3244();
}

void *sub_274BB9638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_274BF3804();
  v10 = 1;
  sub_274BB9714(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_274AD8D30(__dst, v7, &qword_28098E5C8);
  sub_274B17578(v12, &qword_28098E5C8);
  memcpy(&v9[7], __dst, 0x88uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x8FuLL);
}

uint64_t sub_274BB9714@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_274BF3904();
  LOBYTE(v16) = 1;
  sub_274BB8B24(v21);
  *&__src[7] = v21[0];
  *&__src[23] = v21[1];
  *&__src[39] = v21[2];
  *&__src[55] = v21[3];
  v5 = *(a1 + 40);
  if (v5)
  {
    v16 = *(a1 + 32);
    v17 = v5;
    sub_274ADDF6C();

    v6 = sub_274BF4104();
    v5 = v7;
    v9 = v8;
    v11 = v10 & 1;
    sub_274AF396C(v6, v7, v10 & 1);

    sub_274AFA1D0(v6, v5, v11);

    sub_274AF396C(v6, v5, v11);

    v12 = 1;
  }

  else
  {
    v12 = 0;
    v6 = 0;
    v11 = 0;
    v9 = 0;
  }

  v14[0] = v4;
  v14[1] = 0;
  LOBYTE(v14[2]) = 1;
  memcpy(&v14[2] + 1, __src, 0x47uLL);
  memcpy(__dst, v14, sizeof(__dst));
  sub_274AD8D30(v14, &v16, &qword_28098BAA8);
  sub_274BC17F8(0, v12, v6, v5, v11, v9);
  sub_274BC1844(0, v12, v6, v5, v11, v9);
  memcpy(a2, __dst, 0x58uLL);
  a2[11] = 0;
  a2[12] = v12;
  a2[13] = v6;
  a2[14] = v5;
  a2[15] = v11;
  a2[16] = v9;
  sub_274BC1844(0, v12, v6, v5, v11, v9);
  v16 = v4;
  v17 = 0;
  v18 = 1;
  memcpy(v19, __src, sizeof(v19));
  return sub_274B17578(&v16, &qword_28098BAA8);
}

uint64_t sub_274BB9934()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E5E0);
  sub_274BC19D4(&unk_28098E5E8);
  return sub_274BF4034();
}

uint64_t sub_274BB99D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = 0x3E656E6F6E3CLL;
  v5 = a1[7];
  v6 = a1[8];
  if (v5)
  {
    v7 = a1[6];
    v19 = v5;
  }

  else
  {
    v19 = 0xE600000000000000;
    v7 = 0x3E656E6F6E3CLL;
  }

  v8 = a1[1];
  v9 = a1[3];
  v17 = *a1;
  v18 = a1[2];
  v10 = a1[9];
  v11 = a1[10];
  v13 = a1[11];
  v12 = a1[12];
  v29[0] = a1[8];
  if (v6[2])
  {
    v28[0] = v6;

    sub_274AD8D30(v29, v27, &qword_280989650);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
    sub_274BC19D4(&qword_28098A4E0);
    v4 = sub_274BF4EB4();
    v15 = v14;
    sub_274B17578(v29, &qword_280989650);
  }

  else
  {

    v15 = 0xE600000000000000;
  }

  v27[0] = 1701667150;
  v27[1] = 0xE400000000000000;
  v27[2] = v17;
  v27[3] = v8;
  v26[0] = 17481;
  v26[1] = 0xE200000000000000;
  v26[2] = v18;
  v26[3] = v9;
  v28[0] = v27;
  v28[1] = v26;
  strcpy(v23, "Associated App");
  v23[15] = -18;
  v24 = v7;
  v25 = v19;
  v22[0] = 0x7364726F7779654BLL;
  v22[1] = 0xE800000000000000;
  v22[2] = v4;
  v22[3] = v15;
  v28[2] = v23;
  v28[3] = v22;
  v21[0] = 1701869908;
  v21[1] = 0xE400000000000000;
  v21[2] = v10;
  v21[3] = v11;
  v20[0] = 0x696C696269736956;
  v20[1] = 0xEA00000000007974;
  v20[2] = v13;
  v20[3] = v12;
  v28[4] = v21;
  v28[5] = v20;
  sub_274BA1E28(v28, a2);
}

void *sub_274BB9D00@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274BF3804();
  v8 = 1;
  sub_274BB9DFC(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v10, __src, sizeof(v10));
  sub_274AD8D30(__dst, &v5, &qword_28098BAD0);
  sub_274B17578(v10, &qword_28098BAD0);
  memcpy(&v7[7], __dst, 0x50uLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  return memcpy((a1 + 17), v7, 0x57uLL);
}

uint64_t sub_274BB9DFC@<X0>(uint64_t a1@<X8>)
{
  sub_274ADDF6C();

  v2 = sub_274BF4104();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;

  v6 = sub_274BF4104();
  v8 = v7;
  v10 = v9;
  sub_274BF4654();
  v11 = sub_274BF4094();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_274AFA1D0(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v11;
  *(a1 + 56) = v13;
  *(a1 + 64) = v15 & 1;
  *(a1 + 72) = v17;
  sub_274AF396C(v21, v20, v19 & 1);

  sub_274AF396C(v11, v13, v15 & 1);

  sub_274AFA1D0(v11, v13, v15 & 1);

  sub_274AFA1D0(v21, v20, v19 & 1);
}

uint64_t sub_274BB9FB4()
{
  v0 = sub_274BF2544();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_274BF2474();
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E288);
  sub_274BC19D4(&unk_28098E290);
  sub_274BF4034();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_274BBA118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E298);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v34 = v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E2A0);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E2A8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E2B0);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v33 - v15;
  v17 = *(sub_274BF24C4() + 16);

  if (v17)
  {
    v18 = sub_274BF38A4();
    v33[2] = v19;
    v33[3] = v18;
    v33[1] = v20;
    v33[4] = v33;
    MEMORY[0x28223BE20](v18);
    v33[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E2B8);
    sub_274BC07CC(&unk_28098E2C0);
    sub_274BF4994();
    (*(v9 + 32))(v16, v11, v8);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = 1;
  __swift_storeEnumTagSinglePayload(v16, v21, 1, v8);
  v23 = *(sub_274BF24B4() + 16);

  if (v23)
  {
    v24 = sub_274BF38A4();
    MEMORY[0x28223BE20](v24);
    v33[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E2C8);
    sub_274BC05D0();
    v25 = v34;
    sub_274BF4994();
    v26 = v37;
    v27 = v38;
    (*(v35 + 32))(v38, v25, v37);
    v22 = 0;
  }

  else
  {
    v26 = v37;
    v27 = v38;
  }

  __swift_storeEnumTagSinglePayload(v27, v22, 1, v26);
  v28 = v36;
  sub_274AD8D30(v16, v36, &qword_28098E2B0);
  v29 = v39;
  sub_274AD8D30(v27, v39, &qword_28098E2A0);
  v30 = v40;
  sub_274AD8D30(v28, v40, &qword_28098E2B0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E2D8);
  sub_274AD8D30(v29, v30 + *(v31 + 48), &qword_28098E2A0);
  sub_274B17578(v27, &qword_28098E2A0);
  sub_274B17578(v16, &qword_28098E2B0);
  sub_274B17578(v29, &qword_28098E2A0);
  return sub_274B17578(v28, &qword_28098E2B0);
}

uint64_t sub_274BBA62C()
{
  sub_274BF24C4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E2F0);
  sub_274BC19D4(&unk_28098E2F8);
  return sub_274BF4944();
}

uint64_t sub_274BBA754@<X0>(uint64_t a1@<X8>)
{
  sub_274BF4C34();
  sub_274ADDF6C();
  result = sub_274BF4104();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_274BBA7B0()
{
  sub_274BF24B4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E2E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAA8);
  sub_274BC19D4(&unk_28098E2E8);
  sub_274BC19D4(&qword_28098BAB0);
  return sub_274BF4944();
}

void *sub_274BBA8E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274BF3904();
  sub_274BBA964(v5);
  *&v4[7] = v5[0];
  *&v4[23] = v5[1];
  *&v4[39] = v5[2];
  *&v4[55] = v5[3];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return memcpy((a1 + 17), v4, 0x47uLL);
}

uint64_t sub_274BBA964@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274BF3894();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_274BF2394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF22A4();
  v7 = sub_274BF2374();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  v41 = v7;
  v42 = v9;
  sub_274ADDF6C();
  v10 = sub_274BF4104();
  v37 = v11;
  v38 = v10;
  HIDWORD(v36) = v12;
  v39 = v13;
  sub_274BF3884();
  sub_274BF3874();
  sub_274BF2294();
  v41 = v14;
  sub_274BF3854();
  sub_274BF3874();
  sub_274BF38B4();
  v15 = sub_274BF40E4();
  v17 = v16;
  v19 = v18;
  sub_274BF4654();
  v20 = sub_274BF4094();
  v22 = v21;
  LOBYTE(v6) = v23;

  sub_274AFA1D0(v15, v17, v19 & 1);

  sub_274BF3FB4();
  v24 = sub_274BF40D4();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_274AFA1D0(v20, v22, v6 & 1);

  v31 = BYTE4(v36) & 1;
  v40 = BYTE4(v36) & 1;
  LOBYTE(v41) = BYTE4(v36) & 1;
  v43 = v28 & 1;
  v33 = v37;
  v32 = v38;
  *a1 = v38;
  *(a1 + 8) = v33;
  *(a1 + 16) = v31;
  *(a1 + 24) = v39;
  *(a1 + 32) = v24;
  *(a1 + 40) = v26;
  *(a1 + 48) = v28 & 1;
  *(a1 + 56) = v30;
  v34 = v32;
  sub_274AF396C(v32, v33, v31);

  sub_274AF396C(v24, v26, v28 & 1);

  sub_274AFA1D0(v24, v26, v28 & 1);

  sub_274AFA1D0(v34, v33, v40);
}

void sub_274BBACA4()
{
  OUTLINED_FUNCTION_9_13();
  if (v4)
  {
    OUTLINED_FUNCTION_8_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_4(v2, v5, &qword_280989660, &unk_274BF9688);
  OUTLINED_FUNCTION_26_4();
  sub_274BF2644();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_23_5();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_15(v8);
    sub_274B63B60(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_8();
  }
}

void sub_274BBAD94()
{
  OUTLINED_FUNCTION_53();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_13(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_0();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989648);
      v7 = OUTLINED_FUNCTION_96();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_3_27();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_5_19();
        sub_274AEF52C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32();
  if (!v5)
  {
    OUTLINED_FUNCTION_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_274BBAE58()
{
  OUTLINED_FUNCTION_53();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_13(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_0();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E188);
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_97(v7);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v8 / 24);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_5_19();
        sub_274AEF56C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E190);
    OUTLINED_FUNCTION_13_12();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32();
  if (!v5)
  {
    OUTLINED_FUNCTION_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_274BBAF58()
{
  OUTLINED_FUNCTION_53();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_13(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_0();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E1A0);
      v7 = OUTLINED_FUNCTION_96();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_3_27();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_5_19();
        sub_274B68A9C(v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA30);
    OUTLINED_FUNCTION_13_12();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32();
  if (!v5)
  {
    OUTLINED_FUNCTION_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_274BBB01C()
{
  OUTLINED_FUNCTION_9_13();
  if (v4)
  {
    OUTLINED_FUNCTION_8_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_4(v2, v5, &qword_28098E1E8, &unk_274C04F08);
  OUTLINED_FUNCTION_26_4();
  sub_274BF2BB4();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_23_5();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_15(v8);
    sub_274B63B78(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_8();
  }
}

void sub_274BBB0E4()
{
  OUTLINED_FUNCTION_53();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_13(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_0();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E1D8);
      v7 = OUTLINED_FUNCTION_96();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_3_27();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_5_19();
        sub_274B68A9C(v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B570);
    OUTLINED_FUNCTION_13_12();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32();
  if (!v5)
  {
    OUTLINED_FUNCTION_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_274BBB1A8()
{
  OUTLINED_FUNCTION_9_13();
  if (v4)
  {
    OUTLINED_FUNCTION_8_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_4(v2, v5, &qword_28098E1F0, &unk_274C05370);
  OUTLINED_FUNCTION_26_4();
  sub_274BF1F54();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_23_5();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_15(v8);
    sub_274B63B90(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_8();
  }
}

void sub_274BBB270()
{
  OUTLINED_FUNCTION_9_13();
  if (v4)
  {
    OUTLINED_FUNCTION_8_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_4(v2, v5, &qword_28098E1D0, &unk_274C04EE8);
  OUTLINED_FUNCTION_26_4();
  sub_274BF1CB4();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_23_5();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_15(v8);
    sub_274B63BA8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_8();
  }
}

void sub_274BBB360()
{
  OUTLINED_FUNCTION_53();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E1B8);
      v6 = OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_97(v6);
      OUTLINED_FUNCTION_10_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_19();
        sub_274AEF54C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
    OUTLINED_FUNCTION_13_12();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32();
  if (!v4)
  {
    OUTLINED_FUNCTION_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_274BBB470()
{
  OUTLINED_FUNCTION_9_13();
  if (v4)
  {
    OUTLINED_FUNCTION_8_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_4(v2, v5, &qword_28098E1C8, &unk_274C04EE0);
  OUTLINED_FUNCTION_26_4();
  sub_274BF1D34();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_23_5();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_15(v8);
    sub_274B63BC0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_8();
  }
}

void sub_274BBB538()
{
  OUTLINED_FUNCTION_9_13();
  if (v4)
  {
    OUTLINED_FUNCTION_8_17();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_4();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_21();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_30_4(v2, v5, &qword_28098C430, &unk_274BFFFB8);
  OUTLINED_FUNCTION_26_4();
  type metadata accessor for WFMarkdownStringFormatter.Block();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_23_5();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_6_15(v8);
    sub_274B63BD8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_8();
  }
}

void sub_274BBB630()
{
  OUTLINED_FUNCTION_53();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C378);
      v6 = OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_97(v6);
      OUTLINED_FUNCTION_10_9(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_19();
        sub_274B63C14(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C380);
    OUTLINED_FUNCTION_13_12();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32();
  if (!v4)
  {
    OUTLINED_FUNCTION_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_274BBB740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_37_1(a1, a2, a3, a4, a5);
      v15 = OUTLINED_FUNCTION_96();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_3_27();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_32();
  if (!v11)
  {
    OUTLINED_FUNCTION_12();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_274BBB810()
{
  OUTLINED_FUNCTION_53();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_13(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_0();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C400);
      v7 = OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_97(v7);
      OUTLINED_FUNCTION_10_9(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_5_19();
        sub_274B63C34(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 2 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32();
  if (!v5)
  {
    OUTLINED_FUNCTION_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_274BBB8F8()
{
  OUTLINED_FUNCTION_32_2();
  if ((v5 & 1) == 0)
  {
    v8 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13();
  if (v9 == v10)
  {
LABEL_7:
    v11 = *(v0 + 16);
    if (v8 <= v11)
    {
      v12 = *(v0 + 16);
    }

    else
    {
      v12 = v8;
    }

    if (v12)
    {
      OUTLINED_FUNCTION_37_1(v3, v4, v5, v6, v7);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      OUTLINED_FUNCTION_34_2(v14);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v11, v13 + 32);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_36_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_32();
  if (!v9)
  {
    OUTLINED_FUNCTION_12();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_274BBB9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_37_1(a1, a2, a3, a4, a5);
      v15 = OUTLINED_FUNCTION_96();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_20_5();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_32();
  if (!v11)
  {
    OUTLINED_FUNCTION_12();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_274BBBABC(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_274BBC18C(v9, a2, &qword_28098C330, &unk_274BFFF10, MEMORY[0x277D7BE60]);
  v11 = *(sub_274BF2394() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_274B63CA4(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_274BBBBCC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C338);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 104);
      if (v5)
      {
LABEL_13:
        sub_274B63C7C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_274BBBCD4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E158);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_274B63CBC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_274BBBDDC()
{
  OUTLINED_FUNCTION_32_2();
  if ((v5 & 1) == 0)
  {
    v8 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13();
  if (v9 == v10)
  {
LABEL_7:
    v11 = *(v0 + 16);
    if (v8 <= v11)
    {
      v12 = *(v0 + 16);
    }

    else
    {
      v12 = v8;
    }

    if (v12)
    {
      OUTLINED_FUNCTION_37_1(v3, v4, v5, v6, v7);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      OUTLINED_FUNCTION_34_2(v14);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v11, v13 + 32);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_36_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_32();
  if (!v9)
  {
    OUTLINED_FUNCTION_12();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_274BBBEA8(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_274BBC18C(v9, a2, &qword_28098E168, &unk_274C04E48, MEMORY[0x277D7BEB8]);
  v11 = *(sub_274BF2404() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_274B63CE4(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_274BBBFB8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989648);
  v4 = OUTLINED_FUNCTION_96();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_3_27();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_274BBC020(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C470);
  v4 = OUTLINED_FUNCTION_96();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_20_5();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_274BBC088(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989FC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_274BBC108(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C320);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

size_t sub_274BBC18C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_274BBC288(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989FE8);
  result = sub_274BF5AE4();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_32:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        sub_274B92714(0, (v31 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((a2 & 1) == 0)
    {
      v21 = v19;
      v22 = v20;
    }

    result = sub_274BF5614();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v7 + 48) + 8 * v26) = v19;
    *(*(v7 + 56) + 8 * v26) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_274BBC4EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E170);
  v34 = a2;
  result = sub_274BF5AE4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_274B92714(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_274BF5CD4();
    sub_274BF4FF4();
    result = sub_274BF5D44();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void *sub_274BBC790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_274BBBFB8(*(a1 + 16), 0);
  v4 = sub_274BBFAB8(&v6, v3 + 4, v1, a1);

  sub_274AEF594();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_274BBC84C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_274BF5874();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_274BBC088(v2, 0);

    v1 = sub_274BBF8B0(&v5, v3 + 4, v2, v1);
    sub_274AEF594();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void *sub_274BBC8FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_274BBC108(*(a1 + 16), 0);
  v4 = sub_274BBFC14(&v6, v3 + 4, v1, a1);

  sub_274AEF594();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_274BBC9B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_274BF5BD4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C328);
        v6 = sub_274BF5174();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_274BBD1CC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_274BBCCE0(0, v2, 1, a1);
  }

  return result;
}

void sub_274BBCABC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_274BF5BD4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_274BF2394();
        v6 = sub_274BF5174();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_274BF2394() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_274BBD768(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_274BBCDBC(0, v2, 1, a1);
  }
}

uint64_t sub_274BBCBEC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_274BF5BD4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_274BF5174();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_274BBE374(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_274BBD0DC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_274BBCCE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_274BF5C24();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_274BBCDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_274BF2394();
  MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v13;
    v18 = *a4;
    v20 = *(v12 + 16);
    v19 = v12 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = (v18 + v21 * (a3 - 1));
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        (v52)(v16, v24, v8, v14);
        v26(v17, v25, v8);
        v27 = sub_274BF2364();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == sub_274BF2364() && v31 == v32)
        {
          break;
        }

        v34 = sub_274BF5C24();

        v35 = *v51;
        (*v51)(v29, v8);
        v35(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          v36(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      v39(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = &v45[v41];
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_274BBD0DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 104 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = v10[2];
        if (result == *(v10 - 11) && v10[3] == *(v10 - 10))
        {
          break;
        }

        result = sub_274BF5C24();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 13, 0x68uLL);
        result = memcpy(v10 - 13, __dst, 0x68uLL);
        v10 -= 13;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 104;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_274BBD1CC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v99 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *a3;
        v12 = (*a3 + 24 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = (*a3 + 24 * v9);
        if (v13 == *v15 && v14 == v15[1])
        {
          v17 = 0;
        }

        else
        {
          v17 = sub_274BF5C24();
        }

        v10 = v9 + 2;
        v18 = v11 + 24 * v9;
        v19 = 24 * v9;
        v20 = (v18 + 56);
        while (v10 < v6)
        {
          if (*(v20 - 1) == *(v20 - 4) && *v20 == *(v20 - 3))
          {
            if (v17)
            {
              goto LABEL_21;
            }
          }

          else if ((v17 ^ sub_274BF5C24()))
          {
            break;
          }

          ++v10;
          v20 += 3;
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v10)
        {
          v22 = 24 * v10;
          v23 = v10;
          v24 = v9;
          do
          {
            if (v24 != --v23)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v26 = (v25 + v19);
              v27 = v25 + v22;
              v28 = *v26;
              v29 = *(v26 + 1);
              v30 = *(v27 - 24);
              v26[2] = *(v27 - 8);
              *v26 = v30;
              *(v27 - 24) = v28;
              *(v27 - 16) = v29;
            }

            ++v24;
            v22 -= 24;
            v19 += 24;
          }

          while (v24 < v23);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (v10 < v31)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_121;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          v96 = v5;
          if (v9 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v9 + a4;
          }

          if (v32 < v9)
          {
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
            return;
          }

          if (v10 != v32)
          {
            v33 = *a3;
            v34 = v9;
            v35 = *a3 + 24 * v10 - 24;
            v95 = v34;
            v36 = v34 - v10;
            do
            {
              v37 = v10;
              v38 = (v33 + 24 * v10);
              v39 = *v38;
              v40 = v38[1];
              v41 = v36;
              v42 = v35;
              do
              {
                v43 = v39 == *v42 && v40 == *(v42 + 8);
                if (v43 || (sub_274BF5C24() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_125;
                }

                v44 = *(v42 + 32);
                v45 = *(v42 + 16);
                v39 = *(v42 + 24);
                *(v42 + 24) = *v42;
                *(v42 + 40) = v45;
                *v42 = v39;
                *(v42 + 8) = v44;
                v40 = v44;
                v42 -= 24;
              }

              while (!__CFADD__(v41++, 1));
              ++v10;
              v35 += 24;
              --v36;
            }

            while (v37 + 1 != v32);
            v10 = v32;
            v9 = v95;
          }

          v5 = v96;
        }
      }

      if (v10 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBB740(0, v8[2] + 1, 1, v8, &qword_28098E150, &unk_274C04E20, sub_274B68A9C);
        v8 = v91;
      }

      v48 = v8[2];
      v47 = v8[3];
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        sub_274BBB740(v47 > 1, v48 + 1, 1, v8, &qword_28098E150, &unk_274C04E20, sub_274B68A9C);
        v8 = v92;
      }

      v8[2] = v49;
      v50 = v8 + 4;
      v51 = &v8[2 * v48 + 4];
      *v51 = v9;
      v51[1] = v10;
      v97 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v48)
      {
        while (1)
        {
          v52 = v49 - 1;
          v53 = &v50[2 * v49 - 2];
          v54 = &v8[2 * v49];
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v55 = v8[4];
            v56 = v8[5];
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_70:
            if (v58)
            {
              goto LABEL_110;
            }

            v70 = *v54;
            v69 = v54[1];
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_113;
            }

            v74 = v53[1];
            v75 = v74 - *v53;
            if (__OFSUB__(v74, *v53))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v72, v75))
            {
              goto LABEL_118;
            }

            if (v72 + v75 >= v57)
            {
              if (v57 < v75)
              {
                v52 = v49 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v49 < 2)
          {
            goto LABEL_112;
          }

          v77 = *v54;
          v76 = v54[1];
          v65 = __OFSUB__(v76, v77);
          v72 = v76 - v77;
          v73 = v65;
LABEL_85:
          if (v73)
          {
            goto LABEL_115;
          }

          v79 = *v53;
          v78 = v53[1];
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_117;
          }

          if (v80 < v72)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v52 - 1 >= v49)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v84 = &v50[2 * v52 - 2];
          v85 = *v84;
          v86 = &v50[2 * v52];
          v87 = v86[1];
          sub_274BBEBA4((*a3 + 24 * *v84), (*a3 + 24 * *v86), *a3 + 24 * v87, v97);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v87 < v85)
          {
            goto LABEL_105;
          }

          v88 = v8;
          v89 = v8[2];
          if (v52 > v89)
          {
            goto LABEL_106;
          }

          *v84 = v85;
          v84[1] = v87;
          if (v52 >= v89)
          {
            goto LABEL_107;
          }

          v49 = v89 - 1;
          memmove(&v50[2 * v52], v86 + 2, 16 * (v89 - 1 - v52));
          v88[2] = v89 - 1;
          v90 = v89 > 2;
          v8 = v88;
          v5 = 0;
          if (!v90)
          {
            goto LABEL_99;
          }
        }

        v59 = &v50[2 * v49];
        v60 = *(v59 - 8);
        v61 = *(v59 - 7);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_108;
        }

        v64 = *(v59 - 6);
        v63 = *(v59 - 5);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_109;
        }

        v66 = v54[1];
        v67 = v66 - *v54;
        if (__OFSUB__(v66, *v54))
        {
          goto LABEL_111;
        }

        v65 = __OFADD__(v57, v67);
        v68 = v57 + v67;
        if (v65)
        {
          goto LABEL_114;
        }

        if (v68 >= v62)
        {
          v82 = *v53;
          v81 = v53[1];
          v65 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v65)
          {
            goto LABEL_119;
          }

          if (v57 < v83)
          {
            v52 = v49 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      v7 = v10;
      if (v10 >= v6)
      {
        v99 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_274BBE934(&v99, *a1, a3);
LABEL_103:
}

void sub_274BBD768(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v146 = a1;
  v8 = sub_274BF2394();
  MEMORY[0x28223BE20](v8);
  v151 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v164 = &v142 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v142 - v13;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v160 = &v142 - v17;
  MEMORY[0x28223BE20](v18);
  v159 = &v142 - v19;
  MEMORY[0x28223BE20](v20);
  v26 = MEMORY[0x28223BE20](v21);
  v27 = &v142 - v22;
  v157 = v23;
  v158 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_114:
    v169 = *v146;
    if (!v169)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v165 = v24;
  v142 = a4;
  v29 = 0;
  v169 = v23 + 16;
  v167 = (v23 + 32);
  v168 = (v23 + 8);
  v30 = MEMORY[0x277D84F90];
  v161 = v8;
  v153 = v14;
  v143 = v25;
  v145 = &v142 - v22;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v148 = v29;
    if (v29 + 1 < v28)
    {
      v163 = v28;
      v144 = v30;
      v33 = v27;
      v34 = *v158;
      v35 = *(v23 + 72);
      v36 = v25;
      v156 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v23 + 16);
      v39(v33, v38, v8, v26);
      v40 = &v34[v35 * v37];
      v41 = v145;
      v155 = v39;
      (v39)(v36, v40, v8);
      LODWORD(v162) = sub_274BB33D4();
      if (v5)
      {
        v141 = *v168;
        (*v168)(v36, v8);
        (v141)(v41, v8);
LABEL_124:

        return;
      }

      v147 = 0;
      v30 = v168;
      v42 = *v168;
      (*v168)(v36, v8);
      v154 = v42;
      (v42)(v41, v8);
      v43 = v148 + 2;
      v44 = &v34[v35 * (v148 + 2)];
      v32 = v156;
      v45 = v35;
      v166 = v35;
      v46 = v163;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v161;
        v5 = v155;
        (v155)(v159, v44, v161);
        v5(v160, v38, v49);
        v50 = sub_274BF2364();
        v52 = v51;
        if (v50 == sub_274BF2364() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = sub_274BF5C24();
        }

        v56 = v161;
        v30 = v154;
        (v154)(v160, v161);
        (v30)(v159, v56);
        v45 = v166;
        v44 += v166;
        v38 += v166;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v163;
        if ((v162 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v162)
      {
        v31 = v148;
        if (v32 < v148)
        {
          goto LABEL_149;
        }

        v5 = v147;
        if (v148 >= v32)
        {
          v23 = v157;
          v30 = v144;
          v8 = v161;
          v14 = v153;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v57 = v47;
        }

        else
        {
          v57 = v46;
        }

        v58 = v45 * (v57 - 1);
        v59 = v45 * v57;
        v60 = v148;
        v61 = v148 * v45;
        v62 = v32;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v158;
            if (!*v158)
            {
              goto LABEL_154;
            }

            v64 = v161;
            v163 = *v167;
            v163(v151, &v63[v61], v161);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v163(&v63[v58], v151, v64);
            v5 = v147;
            v45 = v166;
          }

          ++v60;
          v58 -= v45;
          v59 -= v45;
          v61 += v45;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v147;
      }

      v23 = v157;
      v30 = v144;
      v8 = v161;
      v14 = v153;
      v31 = v148;
    }

LABEL_39:
    v66 = v158[1];
    if (v32 < v66)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v142)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274BBB740(0, *(v30 + 2) + 1, 1, v30, &qword_28098E150, &unk_274C04E20, sub_274B68A9C);
      v30 = v132;
    }

    v89 = *(v30 + 2);
    v88 = *(v30 + 3);
    v90 = v89 + 1;
    v156 = v32;
    if (v89 >= v88 >> 1)
    {
      sub_274BBB740(v88 > 1, v89 + 1, 1, v30, &qword_28098E150, &unk_274C04E20, sub_274B68A9C);
      v30 = v133;
    }

    *(v30 + 2) = v90;
    v91 = v30 + 32;
    v92 = &v30[16 * v89 + 32];
    v93 = v156;
    *v92 = v148;
    *(v92 + 1) = v93;
    v166 = *v146;
    if (!v166)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v30[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v30 + 4);
          v98 = *(v30 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
        {
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v158)
        {
          goto LABEL_152;
        }

        v126 = v30;
        v127 = &v91[16 * v94 - 16];
        v30 = *v127;
        v128 = &v91[16 * v94];
        v129 = *(v128 + 1);
        sub_274BBED6C(&(*v158)[*(v157 + 72) * *v127], &(*v158)[*(v157 + 72) * *v128], &(*v158)[*(v157 + 72) * v129], v166);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v129 < v30)
        {
          goto LABEL_127;
        }

        v130 = *(v126 + 2);
        if (v94 > v130)
        {
          goto LABEL_128;
        }

        *v127 = v30;
        *(v127 + 1) = v129;
        if (v94 >= v130)
        {
          goto LABEL_129;
        }

        v90 = v130 - 1;
        memmove(&v91[16 * v94], v128 + 16, 16 * (v130 - 1 - v94));
        v30 = v126;
        *(v126 + 2) = v130 - 1;
        v131 = v130 > 2;
        v14 = v153;
        if (!v131)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v157;
    v28 = v158[1];
    v29 = v156;
    v8 = v161;
    v25 = v143;
    v27 = v145;
    if (v156 >= v28)
    {
      goto LABEL_114;
    }
  }

  v67 = (v31 + v142);
  if (__OFADD__(v31, v142))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v158[1];
  }

  if (v67 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_274BBF538(v30);
LABEL_116:
    v134 = v30 + 16;
    v135 = *(v30 + 2);
    while (v135 >= 2)
    {
      if (!*v158)
      {
        goto LABEL_153;
      }

      v136 = v30;
      v30 += 16 * v135;
      v137 = *v30;
      v138 = &v134[2 * v135];
      v139 = v138[1];
      sub_274BBED6C(&(*v158)[*(v157 + 72) * *v30], &(*v158)[*(v157 + 72) * *v138], &(*v158)[*(v157 + 72) * v139], v169);
      if (v5)
      {
        break;
      }

      if (v139 < v137)
      {
        goto LABEL_141;
      }

      if (v135 - 2 >= *v134)
      {
        goto LABEL_142;
      }

      *v30 = v137;
      *(v30 + 1) = v139;
      v140 = *v134 - v135;
      if (*v134 < v135)
      {
        goto LABEL_143;
      }

      v135 = *v134 - 1;
      memmove(v138, v138 + 2, 16 * v140);
      *v134 = v135;
      v30 = v136;
    }

    goto LABEL_124;
  }

  if (v32 == v67)
  {
    goto LABEL_62;
  }

  v144 = v30;
  v147 = v5;
  v68 = *v158;
  v69 = *(v23 + 72);
  v166 = *(v23 + 16);
  v70 = &v68[v69 * (v32 - 1)];
  v162 = -v69;
  v163 = v68;
  v71 = (v31 - v32);
  v149 = v69;
  v150 = v67;
  v72 = &v68[v32 * v69];
  v73 = v165;
LABEL_48:
  v155 = v70;
  v156 = v32;
  v152 = v72;
  v154 = v71;
  while (1)
  {
    v74 = v166;
    (v166)(v73, v72, v8);
    v74(v14, v70, v8);
    v75 = v14;
    v76 = sub_274BF2364();
    v77 = v8;
    v79 = v78;
    if (v76 == sub_274BF2364() && v79 == v80)
    {

      v87 = *v168;
      (*v168)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v14 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = sub_274BF5C24();

    v84 = *v168;
    (*v168)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v14 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v165;
LABEL_60:
      v32 = v156 + 1;
      v70 = &v155[v149];
      v71 = v154 - 1;
      v72 = &v152[v149];
      if (v156 + 1 == v150)
      {
        v32 = v150;
        v5 = v147;
        v30 = v144;
        v31 = v148;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v163)
    {
      break;
    }

    v85 = *v167;
    v86 = v164;
    (*v167)(v164, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v162;
    v72 += v162;
    v65 = __CFADD__(v71++, 1);
    v73 = v165;
    if (v65)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void sub_274BBE374(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      i = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = v8;
        v12 = *a3;
        v13 = *a3 + 104 * i;
        v14 = *(v13 + 16);
        v15 = *(v13 + 24);
        v16 = *a3 + 104 * v9;
        if (v14 == *(v16 + 16) && v15 == *(v16 + 24))
        {
          v18 = 0;
        }

        else
        {
          v18 = sub_274BF5C24();
        }

        v19 = 104 * v9;
        v20 = (v12 + 104 * v9 + 232);
        for (i = v9 + 2; i < v6; ++i)
        {
          if (*(v20 - 1) == *(v20 - 14) && *v20 == *(v20 - 13))
          {
            if (v18)
            {
              goto LABEL_21;
            }
          }

          else if ((v18 ^ sub_274BF5C24()))
          {
            break;
          }

          v20 += 13;
        }

        if ((v18 & 1) == 0)
        {
LABEL_29:
          v8 = v11;
          goto LABEL_30;
        }

LABEL_21:
        if (i < v9)
        {
          goto LABEL_123;
        }

        if (v9 >= i)
        {
          goto LABEL_29;
        }

        v22 = 104 * i - 104;
        v23 = i;
        v24 = v9;
        v8 = v11;
        do
        {
          if (v9 != --v23)
          {
            v25 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            memcpy(__dst, (v25 + v19), sizeof(__dst));
            memmove((v25 + v19), (v25 + v22), 0x68uLL);
            memcpy((v25 + v22), __dst, 0x68uLL);
          }

          ++v9;
          v22 -= 104;
          v19 += 104;
        }

        while (v9 < v23);
        v9 = v24;
      }

LABEL_30:
      v26 = a3[1];
      if (i < v26)
      {
        if (__OFSUB__(i, v9))
        {
          goto LABEL_122;
        }

        if (i - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_124;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (i != v27)
          {
            v28 = v9;
            v29 = *a3;
            v30 = *a3 + 104 * i;
            v84 = v28;
            v85 = v8;
            v31 = v28 - i;
            do
            {
              v32 = v31;
              v33 = v30;
              do
              {
                v34 = v33[2] == *(v33 - 11) && v33[3] == *(v33 - 10);
                if (v34 || (sub_274BF5C24() & 1) == 0)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_126;
                }

                memcpy(__dst, v33, sizeof(__dst));
                memcpy(v33, v33 - 13, 0x68uLL);
                memcpy(v33 - 13, __dst, 0x68uLL);
                v33 -= 13;
              }

              while (!__CFADD__(v32++, 1));
              v30 += 104;
              --v31;
              ++i;
            }

            while (i != v27);
            i = v27;
            v9 = v84;
            v8 = v85;
          }
        }
      }

      if (i < v9)
      {
        goto LABEL_121;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBB740(0, v8[2] + 1, 1, v8, &qword_28098E150, &unk_274C04E20, sub_274B68A9C);
        v8 = v80;
      }

      v37 = v8[2];
      v36 = v8[3];
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        sub_274BBB740(v36 > 1, v37 + 1, 1, v8, &qword_28098E150, &unk_274C04E20, sub_274B68A9C);
        v8 = v81;
      }

      v8[2] = v38;
      v39 = v8 + 4;
      v40 = &v8[2 * v37 + 4];
      *v40 = v9;
      v40[1] = i;
      v86 = *a1;
      if (!*a1)
      {
        goto LABEL_129;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = &v39[2 * v38 - 2];
          v43 = &v8[2 * v38];
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = v8[4];
            v45 = v8[5];
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_71:
            if (v47)
            {
              goto LABEL_111;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_114;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_117;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_119;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_93;
            }

            goto LABEL_86;
          }

          if (v38 < 2)
          {
            goto LABEL_113;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_86:
          if (v62)
          {
            goto LABEL_116;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_118;
          }

          if (v69 < v61)
          {
            goto LABEL_100;
          }

LABEL_93:
          if (v41 - 1 >= v38)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_127;
          }

          v73 = &v39[2 * v41 - 2];
          v74 = *v73;
          v75 = &v39[2 * v41];
          v76 = v75[1];
          sub_274BBF374((*a3 + 104 * *v73), (*a3 + 104 * *v75), (*a3 + 104 * v76), v86);
          if (v5)
          {
            goto LABEL_104;
          }

          if (v76 < v74)
          {
            goto LABEL_106;
          }

          v77 = v8;
          v78 = v8[2];
          if (v41 > v78)
          {
            goto LABEL_107;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_108;
          }

          v38 = v78 - 1;
          memmove(&v39[2 * v41], v75 + 2, 16 * (v78 - 1 - v41));
          v77[2] = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_100;
          }
        }

        v48 = &v39[2 * v38];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_109;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_110;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_112;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_115;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_120;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_93;
        }

        goto LABEL_71;
      }

LABEL_100:
      v6 = a3[1];
      v7 = i;
      if (i >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_130;
  }

  sub_274BBEA6C(&v89, *a1, a3);
LABEL_104:
}

uint64_t sub_274BBE934(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_274BBF538(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_274BBEBA4((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_274BBEA6C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_274BBF538(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_274BBF374((*a3 + 104 * *v4), (*a3 + 104 * *v9), (*a3 + 104 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_274BBEBA4(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_274B68AD4(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_274BF5C24() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_274B68AD4(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_274BF5C24() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

void sub_274BBED6C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_274BF2394();
  MEMORY[0x28223BE20](v8);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v63 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - v13;
  MEMORY[0x28223BE20](v15);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_72;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v23 = (a2 - a1) / v19;
  v76 = a1;
  v75 = a4;
  v71 = (v16 + 8);
  v72 = (v16 + 16);
  v24 = v21 / v19;
  if (v23 < v21 / v19)
  {
    v67 = &v63 - v17;
    v69 = v14;
    sub_274B63CA4(a1, (a2 - a1) / v19, a4);
    v70 = (a4 + v23 * v19);
    v74 = v70;
    v25 = a4;
    v26 = v19;
    v66 = v8;
    v68 = a3;
    while (1)
    {
      if (v25 >= v70 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v28 = a1;
      v29 = *v72;
      v30 = v67;
      v31 = a2;
      (*v72)(v67, a2, v8);
      v73 = v25;
      v32 = v69;
      v29();
      v33 = sub_274BF2364();
      v35 = v34;
      if (v33 == sub_274BF2364() && v35 == v36)
      {

        v43 = *v71;
        (*v71)(v32, v8);
        v43(v30, v8);
      }

      else
      {
        v38 = sub_274BF5C24();

        v39 = *v71;
        (*v71)(v32, v8);
        v39(v30, v8);
        if (v38)
        {
          v40 = v31;
          a2 = v31 + v26;
          v41 = v28;
          if (v28 < v31 || v28 >= a2)
          {
            v8 = v66;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v68;
          }

          else
          {
            a3 = v68;
            v8 = v66;
            if (v28 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v73;
          goto LABEL_40;
        }
      }

      v25 = v73 + v26;
      v41 = v28;
      v44 = v28 < v73 || v28 >= v25;
      a2 = v31;
      if (v44)
      {
        v8 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v68;
      }

      else
      {
        a3 = v68;
        v8 = v66;
        if (v28 != v73)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v75 = v25;
LABEL_40:
      a1 = v41 + v26;
      v76 = a1;
    }
  }

  sub_274B63CA4(a2, v21 / v19, a4);
  v73 = a4;
  v45 = a4 + v24 * v19;
  v46 = -v19;
  v47 = v45;
  v67 = -v19;
LABEL_42:
  v68 = a2;
  v66 = a2 + v46;
  v48 = a3;
  v64 = v47;
  while (1)
  {
    if (v45 <= v73)
    {
      v76 = v68;
      v74 = v47;
      goto LABEL_70;
    }

    if (v68 <= a1)
    {
      break;
    }

    v65 = v47;
    v49 = v45 + v46;
    v50 = *v72;
    (*v72)(v69, v45 + v46, v8);
    (v50)(v70, v66, v8);
    v51 = sub_274BF2364();
    v53 = v52;
    if (v51 == sub_274BF2364() && v53 == v54)
    {
      v56 = 0;
    }

    else
    {
      v56 = sub_274BF5C24();
    }

    v57 = (v48 + v67);
    v58 = *v71;
    (*v71)(v70, v8);
    v58(v69, v8);
    if (v56)
    {
      v60 = v48 < v68 || v57 >= v68;
      a3 = v57;
      if (v60)
      {
        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        v47 = v65;
        v46 = v67;
      }

      else
      {
        v62 = v65;
        v61 = v66;
        v47 = v65;
        v20 = v48 == v68;
        a2 = v66;
        v46 = v67;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v61;
          v47 = v62;
        }
      }

      goto LABEL_42;
    }

    if (v48 < v45 || v57 >= v45)
    {
      swift_arrayInitWithTakeFrontToBack();
      v48 = v57;
      v45 = v49;
      v47 = v49;
      v46 = v67;
    }

    else
    {
      v47 = v49;
      v20 = v45 == v48;
      v48 = v57;
      v45 = v49;
      v46 = v67;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v48 = v57;
        v45 = v49;
        v47 = v49;
      }
    }
  }

  v76 = v68;
  v74 = v64;
LABEL_70:
  sub_274BBF54C(&v76, &v75, &v74);
}

uint64_t sub_274BBF374(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 104;
  v9 = (a3 - a2) / 104;
  if (v8 < v9)
  {
    sub_274B63C7C(a1, (a2 - a1) / 104, a4);
    v10 = &v4[104 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (v12 || (sub_274BF5C24() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 104;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 104;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 104;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v13, 0x68uLL);
    goto LABEL_17;
  }

  sub_274B63C7C(a2, (a3 - a2) / 104, a4);
  v10 = &v4[104 * v9];
LABEL_19:
  for (v5 -= 104; v10 > v4 && v6 > v7; v5 -= 104)
  {
    v15 = *(v10 - 11) == *(v6 - 11) && *(v10 - 10) == *(v6 - 10);
    if (!v15 && (sub_274BF5C24() & 1) != 0)
    {
      v16 = v6 - 104;
      v12 = v5 + 104 == v6;
      v6 -= 104;
      if (!v12)
      {
        memmove(v5, v16, 0x68uLL);
        v6 = v16;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 104)
    {
      memmove(v5, v10 - 104, 0x68uLL);
    }

    v10 -= 104;
  }

LABEL_36:
  v17 = (v10 - v4) / 104;
  if (v6 != v4 || v6 >= &v4[104 * v17])
  {
    memmove(v6, v4, 104 * v17);
  }

  return 1;
}

uint64_t sub_274BBF54C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_274BF2394();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_274BBF62C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_274BBF658(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_274BBF758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_274BBF7C8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_274BBF8B0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_274BF5844();
    sub_274BC08CC();
    sub_274BC0910(&qword_28098D940);
    result = sub_274BF52D4();
    v4 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
LABEL_27:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v10;
    v7[4] = v11;
    return v12;
  }

  v10 = 0;
  v17 = -1 << *(a4 + 32);
  v8 = a4 + 56;
  v9 = ~v17;
  v18 = -v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v11 = v19 & *(a4 + 56);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v21 = v7;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!sub_274BF58B4())
        {
          goto LABEL_25;
        }

        sub_274BC08CC();
        swift_dynamicCast();
        result = v22;
        if (!v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        result = *(*(v4 + 48) + ((v10 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v12;
      if (v14 == a3)
      {
        v12 = a3;
LABEL_25:
        v9 = v20;
        v7 = v21;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_274BBFAB8(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_274BBFC14(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v21 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9)) | (v16 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_14()
{

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274BBFF2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_21_4(-1);
  }

  if (a2 < 0 && *(a1 + 24))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_21_4(v2);
}

uint64_t sub_274BBFF68(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_18_6(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_18_6(result, a2);
    }
  }

  return result;
}

uint64_t sub_274BBFFD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_21_4(-1);
  }

  if (a2 < 0 && *(a1 + 56))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_21_4(v2);
}

unint64_t sub_274BC0054()
{
  result = qword_28098E200;
  if (!qword_28098E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E200);
  }

  return result;
}

unint64_t sub_274BC00A8()
{
  result = qword_28098E210;
  if (!qword_28098E210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E208);
    sub_274BC012C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E210);
  }

  return result;
}

unint64_t sub_274BC012C()
{
  result = qword_28098E218;
  if (!qword_28098E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E218);
  }

  return result;
}

unint64_t sub_274BC0180()
{
  result = qword_28098E228;
  if (!qword_28098E228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E220);
    sub_274BC0204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E228);
  }

  return result;
}

unint64_t sub_274BC0204()
{
  result = qword_28098E230;
  if (!qword_28098E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E230);
  }

  return result;
}

unint64_t sub_274BC0258()
{
  result = qword_28098E240;
  if (!qword_28098E240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E238);
    sub_274BC02DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E240);
  }

  return result;
}

unint64_t sub_274BC02DC()
{
  result = qword_28098E248;
  if (!qword_28098E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E248);
  }

  return result;
}

unint64_t sub_274BC0330()
{
  result = qword_28098E258;
  if (!qword_28098E258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E208);
    sub_274BC03B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E258);
  }

  return result;
}

unint64_t sub_274BC03B4()
{
  result = qword_28098E260;
  if (!qword_28098E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E260);
  }

  return result;
}

unint64_t sub_274BC0408()
{
  result = qword_28098E268;
  if (!qword_28098E268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E220);
    sub_274BC048C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E268);
  }

  return result;
}

unint64_t sub_274BC048C()
{
  result = qword_28098E270;
  if (!qword_28098E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E270);
  }

  return result;
}

unint64_t sub_274BC04E0()
{
  result = qword_28098E278;
  if (!qword_28098E278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E238);
    sub_274BC0564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E278);
  }

  return result;
}

unint64_t sub_274BC0564()
{
  result = qword_28098E280;
  if (!qword_28098E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E280);
  }

  return result;
}

unint64_t sub_274BC05D0()
{
  result = qword_28098E2D0;
  if (!qword_28098E2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E2C8);
    sub_274BC19D4(&qword_28098BAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E2D0);
  }

  return result;
}

unint64_t sub_274BC0690()
{
  result = qword_28098E328;
  if (!qword_28098E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E328);
  }

  return result;
}

unint64_t sub_274BC0704()
{
  result = qword_28098E348;
  if (!qword_28098E348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E340);
    sub_274BC19D4(&unk_28098E350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E348);
  }

  return result;
}

unint64_t sub_274BC07CC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_35_2(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_19_0(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_274BC0830(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_274BC0880(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_274BC08CC()
{
  result = qword_28098D938;
  if (!qword_28098D938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28098D938);
  }

  return result;
}

unint64_t sub_274BC0910(uint64_t a1)
{
  result = OUTLINED_FUNCTION_35_2(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_274BC0954()
{
  result = qword_28098E388;
  if (!qword_28098E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E388);
  }

  return result;
}

unint64_t sub_274BC09A8()
{
  result = qword_28098E3A0;
  if (!qword_28098E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E3A0);
  }

  return result;
}

unint64_t sub_274BC09FC()
{
  result = qword_28098E3B0;
  if (!qword_28098E3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E3A8);
    sub_274BC0A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E3B0);
  }

  return result;
}

unint64_t sub_274BC0A80()
{
  result = qword_28098E3B8;
  if (!qword_28098E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E3B8);
  }

  return result;
}

unint64_t sub_274BC0AD4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_35_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989650);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_274BC0B3C()
{
  result = qword_28098E3D0;
  if (!qword_28098E3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E3A8);
    sub_274BC0BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E3D0);
  }

  return result;
}

unint64_t sub_274BC0BC0()
{
  result = qword_28098E3D8;
  if (!qword_28098E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E3D8);
  }

  return result;
}

unint64_t sub_274BC0C14()
{
  result = qword_28098E3E8;
  if (!qword_28098E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E3E8);
  }

  return result;
}

unint64_t sub_274BC0C68()
{
  result = qword_28098E400;
  if (!qword_28098E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E400);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActionDrawerDebugSnapshot.Group.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_274BC0DB8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_31_3(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_274BC0E90(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          result = OUTLINED_FUNCTION_31_3(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_274BC0FA8()
{
  result = qword_28098E438;
  if (!qword_28098E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E438);
  }

  return result;
}

unint64_t sub_274BC1000()
{
  result = qword_28098E440;
  if (!qword_28098E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E440);
  }

  return result;
}

unint64_t sub_274BC1058()
{
  result = qword_28098E448;
  if (!qword_28098E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E448);
  }

  return result;
}

unint64_t sub_274BC10B0()
{
  result = qword_28098E450;
  if (!qword_28098E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E450);
  }

  return result;
}

unint64_t sub_274BC1108()
{
  result = qword_28098E458;
  if (!qword_28098E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E458);
  }

  return result;
}

unint64_t sub_274BC1160()
{
  result = qword_28098E460;
  if (!qword_28098E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E460);
  }

  return result;
}

unint64_t sub_274BC11B8()
{
  result = qword_28098E468;
  if (!qword_28098E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E468);
  }

  return result;
}

unint64_t sub_274BC1210()
{
  result = qword_28098E470;
  if (!qword_28098E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E470);
  }

  return result;
}

unint64_t sub_274BC1268()
{
  result = qword_28098E478;
  if (!qword_28098E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E478);
  }

  return result;
}

unint64_t sub_274BC12C0()
{
  result = qword_28098E480;
  if (!qword_28098E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E480);
  }

  return result;
}

unint64_t sub_274BC1318()
{
  result = qword_28098E488;
  if (!qword_28098E488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E488);
  }

  return result;
}

unint64_t sub_274BC1370()
{
  result = qword_28098E490;
  if (!qword_28098E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E490);
  }

  return result;
}

unint64_t sub_274BC13C8()
{
  result = qword_28098E498;
  if (!qword_28098E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E498);
  }

  return result;
}

unint64_t sub_274BC143C()
{
  result = qword_28098E4A0;
  if (!qword_28098E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E4A0);
  }

  return result;
}

unint64_t sub_274BC1494()
{
  result = qword_28098E4A8;
  if (!qword_28098E4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E4A8);
  }

  return result;
}

unint64_t sub_274BC1538()
{
  result = qword_28098E530;
  if (!qword_28098E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E530);
  }

  return result;
}

unint64_t sub_274BC15A8()
{
  result = qword_28098E548;
  if (!qword_28098E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E548);
  }

  return result;
}

unint64_t sub_274BC160C()
{
  result = qword_28098E570;
  if (!qword_28098E570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E578);
    sub_274BC19D4(&unk_28098E4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E570);
  }

  return result;
}

unint64_t sub_274BC16EC()
{
  result = qword_28098E598;
  if (!qword_28098E598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E590);
    sub_274BC19D4(&qword_28098E5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E598);
  }

  return result;
}

unint64_t sub_274BC17A4()
{
  result = qword_28098E5C0;
  if (!qword_28098E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E5C0);
  }

  return result;
}

uint64_t sub_274BC17F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_274AF396C(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_274BC1844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_274AFA1D0(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_274BC1890(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_21_4(-1);
  }

  if (a2 < 0 && *(a1 + 104))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_21_4(v2);
}

uint64_t sub_274BC18CC(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_18_6(result, a2);
    }

    *(result + 104) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_18_6(result, a2);
    }
  }

  return result;
}

uint64_t sub_274BC1950(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_21_4(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_21_4(v2);
}

uint64_t sub_274BC198C(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_18_6(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_18_6(result, a2);
    }
  }

  return result;
}

unint64_t sub_274BC19D4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_35_2(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_19_0(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_12()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_36_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5);
}

void WFEmbeddableActionUserInterface.presentView<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v8[1] = sub_274BF48B4();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E600));
  v7 = sub_274BF3984();
  [v2 presentContent_];
}

char *sub_274BC1D20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  v13 = *(*v5 + 104);
  v15 = 0;
  v16 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_274BF2D24();
  (*(v10 + 32))(&v5[v13], v12, v9);
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  return v5;
}

uint64_t WFDictionaryContentItem.preview(configuration:)()
{
  sub_274BC1FA4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() typeWithClass_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B18);
  swift_allocObject();
  sub_274BC1D20(v0, v2, &qword_28098E670, &unk_274C05FE0, &qword_28098E678);
  sub_274AFA930(&qword_280989B20, &qword_280989B18);

  sub_274BF3264();
  sub_274BC1FE8();
  return sub_274BF48B4();
}

unint64_t sub_274BC1FA4()
{
  result = qword_28098B848;
  if (!qword_28098B848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28098B848);
  }

  return result;
}

unint64_t sub_274BC1FE8()
{
  result = qword_28098E608;
  if (!qword_28098E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E608);
  }

  return result;
}

void *sub_274BC209C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v24 = sub_274BF3B84();
  v23 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E630);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E638);
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v22 - v8;
  v10 = v1[1];
  v11 = *(v1 + 16);
  v12 = *(v1 + 17);
  v13 = v1[3];
  v28 = *v1;
  v29 = v10;
  v30 = v11;
  v31 = v12;
  v32 = v13;
  sub_274BF3E24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E640);
  sub_274AFA930(&qword_28098E648, &qword_28098E640);
  sub_274BF2EC4();
  v14 = sub_274BF3EA4();
  sub_274BF3B74();
  v15 = sub_274AFA930(&qword_28098E650, &qword_28098E630);
  v16.n128_u64[0] = 0x4042000000000000;
  if (v12)
  {
    v17 = 400.0;
  }

  else
  {
    v16.n128_f64[0] = 14.0;
    v17 = 260.0;
  }

  MEMORY[0x277C63B40](v14, v3, v4, v15, v16, 0.0, 14.0, 0.0);
  (*(v23 + 8))(v3, v24);
  (*(v5 + 8))(v7, v4);
  sub_274BF4A94();
  if (v17 < 150.0)
  {
    sub_274BF54A4();
    v18 = sub_274BF3DF4();
    sub_274BF2BC4();
  }

  sub_274BF34A4();
  v19 = v27;
  (*(v25 + 32))(v27, v9, v26);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E658);
  return memcpy((v19 + *(v20 + 36)), __src, 0x70uLL);
}

__n128 sub_274BC2594@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = a3;
  __src[0] = a1;
  __src[1] = a2;
  LOWORD(__src[2]) = a3;
  __src[3] = a4;
  v9 = sub_274BC272C();
  v11 = v10;
  v12 = v6 & 1;
  v13 = (v6 >> 8) & 1;

  LOBYTE(v6) = sub_274BF3E44();
  sub_274BF2E54();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_274BF4AA4();
  sub_274BF34A4();
  memcpy(&v30[7], __src, 0x70uLL);
  v22 = *(a2 + 16);
  type metadata accessor for ContentItemDataSource();
  swift_allocObject();
  v23 = v22;
  v24 = ContentItemDataSource.init(_:)(v23);
  *a5 = v9;
  *(a5 + 8) = v11;
  *(a5 + 16) = v12;
  *(a5 + 17) = v13;
  *(a5 + 24) = a4;
  *(a5 + 32) = v6;
  *(a5 + 40) = v15;
  *(a5 + 48) = v17;
  *(a5 + 56) = v19;
  *(a5 + 64) = v21;
  *(a5 + 72) = 0;
  memcpy((a5 + 73), v30, 0x77uLL);
  *(a5 + 192) = v23;
  *(a5 + 200) = 0;
  *(a5 + 208) = v24;
  *(a5 + 216) = xmmword_274C05EA0;
  __asm { FMOV            V0.2D, #16.0 }

  *(a5 + 232) = result;
  return result;
}

uint64_t sub_274BC272C()
{
  v46[4] = *MEMORY[0x277D85DE8];
  v0 = sub_274BF2BE4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  v7 = sub_274BF4F94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_274BF4F44();
  sub_274BF4F84();
  v44 = v11;
  v12 = sub_274BF4F54();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  if (v14 >> 60 == 15)
  {
    sub_274BF2A54();
    v15 = sub_274BF2BD4();
    v16 = sub_274BF5494();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_274AD4000, v15, v16, "Failed to convert JSON string to UTF-8 data.", v17, 2u);
      MEMORY[0x277C664A0](v17, -1, -1);
    }

    (*(v1 + 8))(v6, v0);
    return v44;
  }

  v43 = v0;
  v18 = objc_opt_self();
  v19 = sub_274BF1F74();
  v45 = 0;
  v20 = [v18 JSONObjectWithData:v19 options:0 error:&v45];

  v21 = v45;
  if (!v20)
  {
    v31 = v21;
    v32 = sub_274BF1E74();

    swift_willThrow();
LABEL_11:
    sub_274BF2A54();
    v34 = v32;
    v35 = sub_274BF2BD4();
    v36 = sub_274BF5494();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = v32;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_274AD4000, v35, v36, "Failed to convert JSON data to object for pretty-printing: %@", v37, 0xCu);
      sub_274BC2FC0(v38);
      MEMORY[0x277C664A0](v38, -1, -1);
      MEMORY[0x277C664A0](v37, -1, -1);
      sub_274B6839C(v12, v14);
    }

    else
    {
      sub_274B6839C(v12, v14);
    }

    (*(v1 + 8))(v3, v43);
    return v44;
  }

  sub_274BF57C4();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  v22 = sub_274BF5C04();
  v45 = 0;
  v23 = [v18 dataWithJSONObject:v22 options:1 error:&v45];
  swift_unknownObjectRelease();
  v24 = v45;
  if (!v23)
  {
    v33 = v24;
    v32 = sub_274BF1E74();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v46);
    goto LABEL_11;
  }

  v25 = sub_274BF1F84();
  v27 = v26;

  sub_274BF4F84();
  v28 = sub_274BF4F64();
  v30 = v29;
  sub_274B6839C(v12, v14);
  sub_274AF58B0(v25, v27);
  if (v30)
  {
  }

  else
  {
    v28 = v44;
  }

  __swift_destroy_boxed_opaque_existential_0(v46);
  return v28;
}

uint64_t sub_274BC2C4C()
{
  if (*(v0 + 33))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_274BC24E0(*(v0 + 16), *(v0 + 24), v1 | *(v0 + 32), *(v0 + 40));
}

double sub_274BC2C70@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *&result = sub_274BC2594(*(v1 + 16), *(v1 + 24), v2 | *(v1 + 32), *(v1 + 40), a1).n128_u64[0];
  return result;
}

id sub_274BC2C94()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  v1 = sub_274BF4F04();
  [v0 setText_];

  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle_];
  [v3 pointSize];
  v5 = v4;

  v6 = [v2 monospacedSystemFontOfSize:v5 weight:*MEMORY[0x277D74418]];
  [v0 setFont_];

  [v0 setEditable_];
  [v0 setSelectable_];
  v7 = v0;
  [v7 setUserInteractionEnabled_];
  [v7 setScrollEnabled_];
  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];

  return v7;
}

uint64_t sub_274BC2E2C(uint64_t a1, char a2, int a3, int a4, id a5)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return CGSizeMake([a5 sizeThatFits_]);
  }
}

uint64_t sub_274BC2ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274BC318C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_274BC2F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274BC318C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_274BC2F98()
{
  sub_274BC318C();
  sub_274BF3A24();
  __break(1u);
}

uint64_t sub_274BC2FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274BC3038()
{
  result = qword_28098E6B0;
  if (!qword_28098E6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E658);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E630);
    sub_274AFA930(&qword_28098E650, &qword_28098E630);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E6B0);
  }

  return result;
}

unint64_t sub_274BC3138()
{
  result = qword_28098E6B8;
  if (!qword_28098E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E6B8);
  }

  return result;
}

unint64_t sub_274BC318C()
{
  result = qword_28098E6C0;
  if (!qword_28098E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E6C0);
  }

  return result;
}

uint64_t sub_274BC31F0@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = 0;
  }

  return result;
}

void WFDatabase.showLibraryMissingWorkflowsAlertIfNecessary(_:)(void *a1)
{
  if (VCIsInternalBuild())
  {
    v2 = [objc_opt_self() defaultDatabase];
    v3 = [v2 workflowIdentifiersUnexpectedlyMissingFromLibrary];
    v4 = MEMORY[0x277D837D0];
    v5 = sub_274BF5144();

    if (*(v5 + 16))
    {
      v6 = [objc_allocWithZone(MEMORY[0x277CFC218]) init];
      sub_274BF4FE4();
      if (qword_2809893B8 != -1)
      {
        swift_once();
      }

      v63 = a1;
      v7 = sub_274BF4F04();
      v8 = sub_274BF4F04();

      v9 = OUTLINED_FUNCTION_0_30();
      v11 = [v9 v10];

      v12 = sub_274BF4F44();
      v14 = v13;

      sub_274BC3DCC(v12, v14, v6, &selRef_setTitle_);
      v15 = sub_274BF4FE4();
      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v15 & 0xFFFFFFFFFFFFLL;
      }

      v62 = v6;
      if (v17)
      {
        sub_274BF5984();

        v60 = v4;
        v61 = sub_274ADDF6C();
        sub_274BF5794();
        MEMORY[0x277C648E0](0xD000000000000010, 0x8000000274C0C820);
        v18 = sub_274BF4F04();

        v19 = sub_274BF4F04();

        v20 = OUTLINED_FUNCTION_0_30();
        v22 = [v20 v21];

        sub_274BF4F44();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_274BF8D80;
      v24 = *(v5 + 16);
      v25 = MEMORY[0x277D83C10];
      *(v23 + 56) = MEMORY[0x277D83B88];
      *(v23 + 64) = v25;
      *(v23 + 32) = v24;
      v26 = sub_274BF4F14();
      v28 = v27;

      sub_274BF4FE4();
      v29 = sub_274BF4F04();
      v30 = sub_274BF4F04();

      v31 = OUTLINED_FUNCTION_0_30();
      v33 = [v31 v32];

      sub_274BF4F44();
      OUTLINED_FUNCTION_1_27();

      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_274BF8D80;
      *(v34 + 56) = MEMORY[0x277D837D0];
      *(v34 + 64) = sub_274B12CA0();
      *(v34 + 32) = v26;
      *(v34 + 40) = v28;
      OUTLINED_FUNCTION_82();
      v35 = sub_274BF4F14();
      v37 = v36;

      sub_274BC3DCC(v35, v37, v62, &selRef_setMessage_);
      sub_274AD8430(0, &qword_28098E6C8);
      sub_274BF4FE4();
      OUTLINED_FUNCTION_1_27();
      v38 = sub_274BF4F04();
      OUTLINED_FUNCTION_82();
      v39 = sub_274BF4F04();

      v40 = OUTLINED_FUNCTION_0_30();
      v42 = [v40 v41];

      v43 = sub_274BF4F44();
      v45 = v44;

      v46 = swift_allocObject();
      *(v46 + 16) = v2;
      *(v46 + 24) = v5;
      v47 = v2;

      v48 = sub_274BC3AB4(v43, v45, 2, sub_274BC3E38, v46);
      [v62 addButton_];

      sub_274BF4FE4();
      OUTLINED_FUNCTION_1_27();
      v49 = sub_274BF4F04();
      OUTLINED_FUNCTION_82();
      v50 = sub_274BF4F04();

      v51 = OUTLINED_FUNCTION_0_30();
      v53 = [v51 v52];

      sub_274BF4F44();
      OUTLINED_FUNCTION_1_27();

      v54 = swift_allocObject();
      *(v54 + 16) = v47;
      *(v54 + 24) = v5;
      v55 = v47;
      v56 = OUTLINED_FUNCTION_82();
      v59 = sub_274BC3AB4(v56, v57, 0, v58, v54);
      [v62 addButton_];

      [v63 presentAlert_];
    }

    else
    {
    }
  }
}

uint64_t *sub_274BC390C(uint64_t *result, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = result[2];
  v4 = result + 5;
  if (v3)
  {
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_274AD8430(0, &qword_28098BB48);

      v7 = sub_274BC3A38(v6, v5, 0);
      v9[0] = 0;
      LODWORD(v6) = [a2 deleteReference:v7 tombstone:0 error:v9];

      result = v9[0];
      if (!v6)
      {
        break;
      }

      v4 += 2;
      if (!--v3)
      {
        return result;
      }
    }

    v8 = result;
    sub_274BF1E74();

    return swift_willThrow();
  }

  return result;
}

id sub_274BC3A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_274BF4F04();

  v6 = [v4 initWithIdentifier:v5 objectType:a3];

  return v6;
}

id sub_274BC3AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_274BF4F04();

  if (a4)
  {
    v12[4] = a4;
    v12[5] = a5;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_274B02D5C;
    v12[3] = &block_descriptor_17;
    v9 = _Block_copy(v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() buttonWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

uint64_t sub_274BC3BB0(void *a1, uint64_t a2)
{
  v4 = sub_274BF5134();
  [a1 addWorkflowIdentifiersToLibraryRootCollection_];

  type metadata accessor for TapToRadar();
  v11[0] = 1;
  v11[1] = 0xE000000000000000;
  sub_274BF5984();
  MEMORY[0x277C648E0](0xD000000000000022, 0x8000000274C0C910);
  v5 = sub_274BF5BE4();
  MEMORY[0x277C648E0](v5);

  MEMORY[0x277C648E0](0xD000000000000074, 0x8000000274C0C940);
  v10 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650);
  sub_274B1023C();
  v6 = sub_274BF4EB4();
  MEMORY[0x277C648E0](v6);

  LOBYTE(v10) = 1;
  v9 = 5;
  v8 = 0;
  static TapToRadar.launchTapToRadar(title:description:classification:component:reproducibility:diagnostics:attachments:extensionIdentifiers:)(0xD000000000000027, 0x8000000274C0C8E0, 0, 0xE000000000000000, v11, &v10, &v9, &v8, MEMORY[0x277D84F90], &unk_2883C6AB0);
}

void sub_274BC3D6C(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  WFDatabase.showLibraryMissingWorkflowsAlertIfNecessary(_:)(a3);
  swift_unknownObjectRelease();
}

void sub_274BC3DCC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_274BF4F04();

  [a3 *a4];
}

uint64_t objectdestroyTm_15()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_274BC3EBC@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t View.focusEnvironment()(uint64_t a1, uint64_t a2)
{
  v7[0] = sub_274BF2E84() & 1;
  v8 = v4;
  v9 = v5 & 1;
  MEMORY[0x277C63D20](v7, a1, &type metadata for FocusEnvironmentModifier, a2);
}

uint64_t EnvironmentValues.isEnvironmentFocused.getter()
{
  sub_274BC3FAC();
  sub_274BF37A4();
  return v1;
}

unint64_t sub_274BC3FAC()
{
  result = qword_28098E6D0;
  if (!qword_28098E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E6D0);
  }

  return result;
}

uint64_t sub_274BC4000@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnvironmentFocused.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*EnvironmentValues.isEnvironmentFocused.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_274BC3FAC();
  sub_274BF37A4();
  *(a1 + 16) = *(a1 + 17);
  return sub_274BC40FC;
}

unint64_t sub_274BC4134()
{
  result = qword_28098E6D8;
  if (!qword_28098E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E6D8);
  }

  return result;
}

uint64_t sub_274BC4198(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_274BC41EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_274BC426C@<X0>(char a1@<W1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E6E0);
  sub_274BF2E74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E6E8);
  sub_274AFA930(&qword_28098E6F0, &qword_28098E6E8);
  sub_274BF4414();

  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  v10 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E6F8) + 36));
  *v10 = KeyPath;
  v10[1] = sub_274BC4464;
  v10[2] = v9;
}

char *sub_274BC43E0(char *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E6E0);
    result = sub_274BF2E64();
    v2 = v3;
  }

  *v1 = v2;
  return result;
}

unint64_t sub_274BC4474()
{
  result = qword_28098E700;
  if (!qword_28098E700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E6F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E6E8);
    sub_274AFA930(&qword_28098E6F0, &qword_28098E6E8);
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_28098A5D0, &unk_28098AF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E700);
  }

  return result;
}

uint64_t CircularProgressView.init(state:lineWidth:primaryColor:passthroughColor:drawsBackground:ringColor:ringColorOpacity:stopButtonDimensionDivisor:cancelAction:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>)
{
  v21 = *a1;
  v22 = *(a1 + 8);
  result = sub_274BF4774();
  *(a8 + 88) = v24;
  *(a8 + 96) = v25;
  *a8 = v21;
  *(a8 + 8) = v22;
  *(a8 + 16) = a9;
  *(a8 + 24) = a11;
  *(a8 + 32) = a2;
  *(a8 + 40) = a3;
  *(a8 + 48) = a4;
  *(a8 + 56) = a5;
  *(a8 + 64) = a10;
  *(a8 + 72) = a6;
  *(a8 + 80) = a7;
  return result;
}

uint64_t CircularProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  sub_274BF3454();
  OUTLINED_FUNCTION_1();
  v35 = v4;
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E708);
  OUTLINED_FUNCTION_1();
  v29 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E710);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E718);
  OUTLINED_FUNCTION_1();
  v32 = v14;
  v33 = v13;
  MEMORY[0x28223BE20](v13);
  v28 = &v28 - v15;
  memcpy(__dst, v2, sizeof(__dst));
  v17 = __dst[9];
  v16 = __dst[10];
  if (__dst[9])
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;
    v19 = sub_274B74658;
  }

  else
  {
    v19 = CGSizeMake;
    v18 = 0;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  MEMORY[0x28223BE20](v20);
  *(&v28 - 2) = __dst;
  sub_274ADDED0(v17);
  sub_274ADDED0(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E720);
  sub_274AFA930(&qword_28098E728, &qword_28098E720);
  sub_274BF47C4();
  if (v17 || (__dst[1] & 1) != 0)
  {
    v21 = LOBYTE(__dst[1]) ^ 1;
    sub_274AD81C4(v17);
  }

  else
  {
    v21 = 0;
  }

  (*(v29 + 32))(v12, v9, v30);
  v12[*(v31 + 36)] = v21 & 1;
  v22 = v34;
  sub_274BF3444();
  sub_274BC4B7C();
  sub_274BC6ED4(&qword_28098AE20, MEMORY[0x277CDDB18]);
  v23 = v28;
  v24 = v36;
  sub_274BF41D4();
  (*(v35 + 8))(v22, v24);
  sub_274AFA708(v12, &qword_28098E710);
  v25 = v37;
  (*(v32 + 32))(v37, v23, v33);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E740);
  v27 = v25 + *(result + 36);
  *v27 = 0x3FF0000000000000;
  *(v27 + 8) = 0;
  return result;
}

uint64_t sub_274BC4AF8@<X0>(const void *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = swift_allocObject();
  memcpy((v4 + 16), a1, 0x68uLL);
  *a2 = sub_274BC674C;
  a2[1] = v4;
  return sub_274BC6754(a1, v6);
}

unint64_t sub_274BC4B7C()
{
  result = qword_28098E730;
  if (!qword_28098E730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E710);
    sub_274AFA930(&qword_28098E738, &qword_28098E708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E730);
  }

  return result;
}

uint64_t sub_274BC4C50@<X0>(unsigned __int8 *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = sub_274BF4A94();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E750);
  return sub_274BC4CB0(a1, a2 + *(v5 + 44));
}

uint64_t sub_274BC4CB0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E758);
  MEMORY[0x28223BE20](v128);
  v133 = (&v117 - v3);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E760);
  MEMORY[0x28223BE20](v132);
  v135 = &v117 - v4;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E768);
  MEMORY[0x28223BE20](v134);
  v6 = &v117 - v5;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E770);
  MEMORY[0x28223BE20](v146);
  v8 = &v117 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E778);
  v137 = *(v9 - 8);
  v138 = v9;
  MEMORY[0x28223BE20](v9);
  v136 = &v117 - v10;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E780);
  MEMORY[0x28223BE20](v144);
  v145 = &v117 - v11;
  v130 = sub_274BF37D4();
  v126 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v123 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D1F8);
  v127 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v124 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v125 = &v117 - v15;
  v16 = sub_274BF46E4();
  v122 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v121 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E788);
  MEMORY[0x28223BE20](v143);
  v131 = &v117 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E790);
  MEMORY[0x28223BE20](v19 - 8);
  v148 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v152 = &v117 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E798);
  MEMORY[0x28223BE20](v23);
  v25 = &v117 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E7A0);
  MEMORY[0x28223BE20](v26 - 8);
  v149 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = a1[48];
  v150 = &v117 - v29;
  if (v30)
  {
    sub_274BF30F4();
    v151 = v6;
    sub_274BF30F4();
    sub_274BF4A94();
    sub_274BF30D4();
    v119 = v184;
    v142 = v16;
    v31 = v185;
    v32 = a1;
    v33 = v187;
    v141 = v188;
    v139 = v186;
    v140 = v189;
    v120 = sub_274BF4634();
    KeyPath = swift_getKeyPath();
    LOBYTE(v193) = v31;
    LOBYTE(v190) = v33;
    v34 = *(v23 + 36);
    v35 = v8;
    v36 = *MEMORY[0x277CE13B8];
    v37 = sub_274BF4AF4();
    (*(*(v37 - 8) + 104))(&v25[v34], v36, v37);
    *v25 = v119;
    v25[8] = v31;
    *(v25 + 9) = v154;
    v8 = v35;
    *(v25 + 3) = *(&v154 + 3);
    *(v25 + 2) = v139;
    v25[24] = v33;
    a1 = v32;
    v38 = v150;
    v6 = v151;
    *(v25 + 25) = v153[0];
    *(v25 + 7) = *(v153 + 3);
    v16 = v142;
    v39 = v140;
    *(v25 + 4) = v141;
    *(v25 + 5) = v39;
    v40 = v120;
    *(v25 + 6) = KeyPath;
    *(v25 + 7) = v40;
    sub_274B16ED0(v25, v38, &qword_28098E798);
    v41 = v38;
    v42 = 0;
  }

  else
  {
    v41 = &v117 - v29;
    v42 = 1;
  }

  __swift_storeEnumTagSinglePayload(v41, v42, 1, v23);
  v43 = *a1;
  v44 = a1[8];
  v45 = *(a1 + 2);
  v46 = 0.0;
  sub_274BF2FB4();
  v151 = *(a1 + 4);

  sub_274BF4B84();
  v48 = v47;
  v50 = v49;
  v141 = sub_274BF4AD4();
  v140 = sub_274BF4AD4();
  sub_274BF4AE4();
  v139 = sub_274BF4AB4();

  sub_274BF30F4();
  sub_274BF30F4();
  sub_274BF4A94();
  sub_274BF30D4();
  *&v183[7] = v190;
  *&v183[23] = v191;
  *&v183[39] = v192;
  LODWORD(v142) = v44;
  if (v44 == 1)
  {
    sub_274BF46D4();
    v52 = v121;
    v51 = v122;
    (*(v122 + 104))(v121, *MEMORY[0x277CE0FE0], v16);
    v53 = sub_274BF4734();

    (*(v51 + 8))(v52, v16);
    v154 = v53;
    LOWORD(v155) = 1;
    sub_274BF3F04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989AC0);
    sub_274AFA5CC();
    v54 = v131;
    sub_274BF41A4();

    v55 = swift_getKeyPath();
    v56 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E818) + 36));
    v57 = v151;
    *v56 = v55;
    v56[1] = v57;

    sub_274BF30F4();
    sub_274BF4A94();
    sub_274BF30D4();
    v58 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E808) + 36));
    v59 = v194;
    *v58 = v193;
    v58[1] = v59;
    v58[2] = v195;
    sub_274BF30F4();
    v61 = v60 * -0.01;
    sub_274BF30F4();
    v63 = v62 * 0.02;
    v64 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E7F8) + 36));
    *v64 = v61;
    v64[1] = v63;
    v65 = v123;
    sub_274BF37C4();
    sub_274BF4AE4();
    v66 = sub_274BC6ED4(&qword_28098D230, MEMORY[0x277CE0068]);
    v67 = v125;
    v68 = v130;
    sub_274BF2ED4();

    (*(v126 + 8))(v65, v68);
    v69 = v127;
    v70 = v129;
    (*(v127 + 16))(v124, v67, v129);
    *&v154 = v68;
    *(&v154 + 1) = v66;
    swift_getOpaqueTypeConformance2();
    v71 = sub_274BF30E4();
    (*(v69 + 8))(v67, v70);
    *(v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E7E8) + 36)) = v71;
    v72 = (v54 + *(v143 + 36));
    *v72 = sub_274BC5F58;
    v72[1] = 0;
    v72[2] = 0;
    v72[3] = 0;
    sub_274B01968(v54, v145, &qword_28098E788);
    swift_storeEnumTagMultiPayload();
    sub_274BC6ADC();
    *&v73 = COERCE_DOUBLE(sub_274BC67C4());
    *&v154 = v146;
    *(&v154 + 1) = MEMORY[0x277D839B0];
    v155 = *&v73;
    *&v156 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_274BF3A64();
    sub_274AFA708(v54, &qword_28098E788);
    v74 = 1.0;
    v43 = 0.0;
  }

  else
  {
    sub_274BF30F4();
    v76 = v75 * 0.1;
    v77 = *(sub_274BF3484() + 20);
    v78 = *MEMORY[0x277CE0118];
    v79 = sub_274BF38C4();
    v80 = v133;
    (*(*(v79 - 8) + 104))(v133 + v77, v78, v79);
    *v80 = v76;
    v80[1] = v76;
    sub_274BF30F4();
    sub_274BF30F4();
    sub_274BF4A94();
    sub_274BF30D4();
    v81 = (v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E7A8) + 36));
    v82 = v194;
    *v81 = v193;
    v81[1] = v82;
    v81[2] = v195;
    v83 = swift_getKeyPath();
    v84 = (v80 + *(v128 + 36));
    *v84 = v83;
    v84[1] = v151;
    v196 = *(a1 + 88);
    v154 = *(a1 + 88);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A720);
    sub_274BF4784();
    v46 = 1.0;
    if (LOBYTE(v153[0]))
    {
      v85 = 0.84;
    }

    else
    {
      v85 = 1.0;
    }

    sub_274BF4B84();
    v87 = v86;
    v89 = v88;
    v90 = v80;
    v91 = v135;
    sub_274B16ED0(v90, v135, &qword_28098E758);
    v92 = v91 + *(v132 + 36);
    *v92 = v85;
    *(v92 + 8) = v85;
    *(v92 + 16) = v87;
    *(v92 + 24) = v89;
    v154 = v196;
    sub_274BF4784();
    if (LOBYTE(v153[0]))
    {
      v93 = 0.8;
    }

    else
    {
      v93 = 1.0;
    }

    sub_274B16ED0(v91, v6, &qword_28098E760);
    *&v6[*(v134 + 36)] = v93;
    v94 = swift_allocObject();
    memcpy((v94 + 16), a1, 0x68uLL);
    sub_274B16ED0(v6, v8, &qword_28098E768);
    v95 = v146;
    v96 = &v8[*(v146 + 36)];
    *v96 = sub_274BC678C;
    v96[1] = v94;
    v96[2] = 0;
    v96[3] = 0;
    v153[0] = v196;
    sub_274BC6754(a1, &v154);
    sub_274BF4784();
    LOBYTE(v153[0]) = v154;
    v97 = swift_allocObject();
    memcpy((v97 + 16), a1, 0x68uLL);
    sub_274BC6754(a1, &v154);
    *&v98 = COERCE_DOUBLE(sub_274BC67C4());
    v99 = MEMORY[0x277D839B0];
    v100 = MEMORY[0x277D839C8];
    v101 = v136;
    sub_274BF44A4();

    sub_274AFA708(v8, &qword_28098E770);
    v102 = v137;
    v103 = v138;
    (*(v137 + 16))(v145, v101, v138);
    swift_storeEnumTagMultiPayload();
    sub_274BC6ADC();
    *&v154 = v95;
    *(&v154 + 1) = v99;
    v155 = *&v98;
    *&v156 = v100;
    swift_getOpaqueTypeConformance2();
    sub_274BF3A64();
    (*(v102 + 8))(v101, v103);
    v74 = v43;
  }

  *&v104 = v45 * 0.5;
  v105 = v149;
  sub_274B01968(v150, v149, &qword_28098E7A0);
  sub_274B01968(v152, v148, &qword_28098E790);
  v106 = v105;
  v107 = v147;
  sub_274B01968(v106, v147, &qword_28098E7A0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E830);
  v109 = *(v108 + 48);
  *(&v153[2] + 8) = v181;
  *(&v153[1] + 8) = v180;
  *(&v153[9] + 9) = *v183;
  v153[0] = v104;
  *&v153[1] = v74;
  *(&v153[3] + 1) = v182;
  *&v153[4] = v151;
  WORD4(v153[4]) = 256;
  *(&v153[4] + 10) = v178;
  HIWORD(v153[4]) = v179;
  *&v153[5] = 0xBFF921FB54442D18;
  *(&v153[5] + 1) = v48;
  *&v153[6] = v50;
  v110 = v140;
  v111 = v141;
  *(&v153[6] + 1) = v141;
  *&v153[7] = v43;
  *(&v153[7] + 1) = v140;
  v112 = v142;
  LOBYTE(v153[8]) = v142;
  *(&v153[8] + 1) = *v177;
  DWORD1(v153[8]) = *&v177[3];
  *(&v153[8] + 1) = v46;
  v113 = v139;
  *&v153[9] = v139;
  BYTE8(v153[9]) = v142;
  *(&v153[10] + 9) = *&v183[16];
  *(&v153[11] + 9) = *&v183[32];
  *(&v153[12] + 1) = *&v183[47];
  memcpy((v107 + v109), v153, 0xD0uLL);
  v114 = v107 + *(v108 + 64);
  v115 = v148;
  sub_274B01968(v148, v114, &qword_28098E790);
  sub_274B01968(v153, &v154, &qword_28098E838);
  sub_274AFA708(v152, &qword_28098E790);
  sub_274AFA708(v150, &qword_28098E7A0);
  sub_274AFA708(v115, &qword_28098E790);
  v154 = v104;
  v155 = v74;
  v156 = v180;
  v157 = v181;
  v158 = v182;
  v159 = v151;
  v160 = 256;
  v161 = v178;
  v162 = v179;
  v163 = 0xBFF921FB54442D18;
  v164 = v48;
  v165 = v50;
  v166 = v111;
  v167 = v43;
  v168 = v110;
  v169 = v112;
  *v170 = *v177;
  *&v170[3] = *&v177[3];
  v171 = v46;
  v172 = v113;
  v173 = v112;
  v174 = *v183;
  v175 = *&v183[16];
  *v176 = *&v183[32];
  *&v176[15] = *&v183[47];
  sub_274AFA708(&v154, &qword_28098E838);
  return sub_274AFA708(v149, &qword_28098E7A0);
}

void sub_274BC5F58()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  [v0 impactOccurred];
}

uint64_t sub_274BC6014(const void *a1)
{
  v2 = sub_274BF4C94();
  v23 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_274BF4CD4();
  v21 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274BF4CF4();
  v20 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  sub_274B0F2B4();
  v18 = sub_274BF5504();
  sub_274BF4CE4();
  sub_274BF4D44();
  v19 = *(v8 + 8);
  v19(v10, v7);
  v14 = swift_allocObject();
  memcpy((v14 + 16), a1, 0x68uLL);
  aBlock[4] = sub_274BC6E8C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B02D5C;
  aBlock[3] = &block_descriptor_18;
  v15 = _Block_copy(aBlock);
  sub_274BC6754(a1, v24);

  sub_274BF4CB4();
  v24[0] = MEMORY[0x277D84F90];
  sub_274BC6ED4(&qword_280989F88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
  sub_274AFA930(&qword_280989F98, &qword_280989F90);
  sub_274BF57F4();
  v16 = v18;
  MEMORY[0x277C64D80](v13, v6, v4, v15);
  _Block_release(v15);

  (*(v23 + 8))(v4, v2);
  (*(v21 + 8))(v6, v22);
  return (v19)(v13, v20);
}

uint64_t sub_274BC6420()
{
  sub_274BF4AE4();
  sub_274BF31E4();
}

uint64_t sub_274BC648C(uint64_t a1)
{
  v3 = *(a1 + 88);
  v2[1] = *(a1 + 88);
  v4 = *(&v3 + 1);
  sub_274B01968(&v4, v2, &qword_28098E840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A720);
  sub_274BF4784();
  v2[0] = v3;
  sub_274BF4794();
  return sub_274AFA708(&v3, &qword_28098A720);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_274BC657C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_274BC65BC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_274BC6634()
{
  result = qword_28098E748;
  if (!qword_28098E748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E710);
    sub_274BF3454();
    sub_274BC4B7C();
    sub_274BC6ED4(&qword_28098AE20, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E748);
  }

  return result;
}

unint64_t sub_274BC67C4()
{
  result = qword_28098E7B0;
  if (!qword_28098E7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E770);
    sub_274BC6850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E7B0);
  }

  return result;
}

unint64_t sub_274BC6850()
{
  result = qword_28098E7B8;
  if (!qword_28098E7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E768);
    sub_274BC68DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E7B8);
  }

  return result;
}

unint64_t sub_274BC68DC()
{
  result = qword_28098E7C0;
  if (!qword_28098E7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E760);
    sub_274BC6968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E7C0);
  }

  return result;
}

unint64_t sub_274BC6968()
{
  result = qword_28098E7C8;
  if (!qword_28098E7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E758);
    sub_274BC6A20();
    sub_274AFA930(&qword_2815A2F88, &qword_280989AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E7C8);
  }

  return result;
}

unint64_t sub_274BC6A20()
{
  result = qword_28098E7D0;
  if (!qword_28098E7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E7A8);
    sub_274BC6ED4(&qword_2815A3028, MEMORY[0x277CDFC08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E7D0);
  }

  return result;
}

unint64_t sub_274BC6ADC()
{
  result = qword_28098E7D8;
  if (!qword_28098E7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E788);
    sub_274BC6B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E7D8);
  }

  return result;
}

unint64_t sub_274BC6B68()
{
  result = qword_28098E7E0;
  if (!qword_28098E7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E7E8);
    sub_274BC6C20();
    sub_274AFA930(&qword_28098E820, &qword_28098E828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E7E0);
  }

  return result;
}

unint64_t sub_274BC6C20()
{
  result = qword_28098E7F0;
  if (!qword_28098E7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E7F8);
    sub_274BC6CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E7F0);
  }

  return result;
}

unint64_t sub_274BC6CAC()
{
  result = qword_28098E800;
  if (!qword_28098E800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E808);
    sub_274BC6D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E800);
  }

  return result;
}

unint64_t sub_274BC6D38()
{
  result = qword_28098E810;
  if (!qword_28098E810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989AC0);
    sub_274AFA5CC();
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_2815A2F88, &qword_280989AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E810);
  }

  return result;
}

uint64_t objectdestroy_11Tm_0()
{

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_274BC6ED4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_274BC7010@<D0>(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = [*a1 playbackStyle];
  if ((v5 - 1) >= 3)
  {
    if ((v5 - 4) >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E848);
      sub_274BC7378();
      sub_274BF3A64();
      goto LABEL_6;
    }

    v7 = *(a2 + 16);
    sub_274BC7430();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = objc_opt_self();
    v10 = v7;
    v11 = [v9 typeWithClass_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E868);
    swift_allocObject();
    sub_274BC1CFC(v10, v11);
    sub_274AFA930(&qword_28098E870, &qword_28098E868);

    sub_274BF3264();
  }

  else
  {
    v6 = *(a2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989BD8);
    swift_allocObject();
    sub_274BC1C48(v6, 0);
    sub_274AFA930(&qword_280989BE0, &qword_280989BD8);

    sub_274BF3264();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E860);
  sub_274AFC0F0();
  sub_274AFA930(&qword_28098E858, &qword_28098E860);
  sub_274BF3A64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E848);
  sub_274BC7378();
  sub_274BF3A64();

LABEL_6:
  result = *&v13;
  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 18) = v15;
  return result;
}

unint64_t sub_274BC7378()
{
  result = qword_28098E850;
  if (!qword_28098E850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E848);
    sub_274AFC0F0();
    sub_274AFA930(&qword_28098E858, &qword_28098E860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E850);
  }

  return result;
}

unint64_t sub_274BC7430()
{
  result = qword_28098D418;
  if (!qword_28098D418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28098D418);
  }

  return result;
}

uint64_t sub_274BC748C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t WFAlert.PresentationWrapper.content.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_274BC7578()
{
  result = sub_274B06430(v0, &selRef_title);
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_274BC75C0()
{
  result = sub_274B06430(v0, &selRef_message);
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_274BC75FC()
{
  v2 = sub_274BF4554();
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 buttons];
  sub_274BC7E6C();
  v8 = sub_274BF5144();

  v9 = sub_274B22B94(v8);
  if (v9)
  {
    v10 = v9;
    v34 = MEMORY[0x277D84F90];
    sub_274B63EEC(0, v9 & ~(v9 >> 63), 0);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v12 = v34;
      v24 = v8 & 0xFFFFFFFFFFFFFF8;
      v25 = v28 + 32;
      v26 = v8 & 0xC000000000000001;
      while (!__OFADD__(v11, 1))
      {
        v30 = v11 + 1;
        if (v26)
        {
          v13 = MEMORY[0x277C65230](v11, v8);
        }

        else
        {
          if (v11 >= *(v24 + 16))
          {
            goto LABEL_17;
          }

          v13 = *(v8 + 8 * v11 + 32);
        }

        v1 = v13;
        v14 = [v13 style];
        if (v14 >= 3)
        {
          goto LABEL_19;
        }

        v29 = off_2883CF130[v14];
        v15 = [v1 title];
        v16 = sub_274BF4F44();
        v18 = v17;

        v19 = swift_allocObject();
        *(v19 + 16) = v1;
        v20 = v1;
        (v29)(v16, v18, 0, MEMORY[0x277D84F90], sub_274BC809C, v19);

        v34 = v12;
        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        v1 = (v22 + 1);
        if (v22 >= v21 >> 1)
        {
          sub_274B63EEC(v21 > 1, v22 + 1, 1);
          v12 = v34;
        }

        *(v12 + 16) = v1;
        (*(v28 + 32))(v12 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v22, v6, v27);
        ++v11;
        if (v30 == v10)
        {

          return v12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_274BF5984();
    MEMORY[0x277C648E0](0xD000000000000018, 0x8000000274C0CA10);
    v31 = [v1 style];
    type metadata accessor for WFAlertButtonStyle(0);
    sub_274BF5A64();
    result = sub_274BF5AC4();
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_274BC79DC(void *a1)
{
  v1 = [a1 handler];
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);

    _Block_release(v2);
  }
}

uint64_t WFAlert.presentationKind.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 preferredStyle] == 1 || (v3 = objc_msgSend(v1, sel_buttons), sub_274BC7E6C(), v4 = sub_274BF5144(), v3, v5 = sub_274B22B94(v4), , v5 >= 3))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v7 = v1;
    result = sub_274BF5914();
    v9 = 0;
    *(a1 + 40) = sub_274BC7EB8;
    *(a1 + 48) = v6;
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v11 = v1;
    result = sub_274BF5914();
    *(a1 + 40) = sub_274BC7EB0;
    *(a1 + 48) = v10;
    v9 = 1;
  }

  *(a1 + 56) = v9;
  return result;
}

uint64_t sub_274BC7B98()
{
  sub_274BC7578();
  sub_274BC75C0();
  sub_274BC75FC();
  return sub_274BF2EE4();
}

uint64_t sub_274BC7C3C@<X0>(uint64_t a1@<X8>)
{
  v20[5] = a1;
  v1 = sub_274BF4554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5E8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  v11 = sub_274BC75FC();
  v20[2] = sub_274BC7578();
  v20[3] = v12;
  v20[4] = v13;
  sub_274BC75C0();
  v20[1] = v15;
  if (*(v11 + 16) > 1uLL)
  {
    v20[0] = v14;
    v18 = *(v2 + 16);
    v17 = v2 + 16;
    v19 = v11 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v18(v7, v19, v1);
    v18(v4, v19 + *(v17 + 56), v1);

    return sub_274BF4514();
  }

  else
  {
    sub_274BC748C(v11, MEMORY[0x277CDEFB0], v10);

    return sub_274BF4504();
  }
}

unint64_t sub_274BC7E6C()
{
  result = qword_28098E6C8;
  if (!qword_28098E6C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28098E6C8);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_274BC7EF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274BC7F30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_274BC7F80(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_274BC7FBC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274BC7FF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_274BC8038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}