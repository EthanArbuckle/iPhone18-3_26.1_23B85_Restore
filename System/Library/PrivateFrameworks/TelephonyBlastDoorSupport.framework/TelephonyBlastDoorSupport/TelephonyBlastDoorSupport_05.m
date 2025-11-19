uint64_t sub_26D216C60()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D216D54()
{
  *v0;
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D216E34()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D216F24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D220BB4();
  *a2 = result;
  return result;
}

void sub_26D216F54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6D69547472617473;
  v5 = 0xE500000000000000;
  v6 = 0x656C746974;
  v7 = 0xEB000000006E6F69;
  v8 = 0x7470697263736564;
  if (v2 != 3)
  {
    v8 = 0x6B6361626C6C6166;
    v7 = 0xEB000000006C7255;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656D6954646E65;
    v3 = 0xE700000000000000;
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

uint64_t sub_26D217004()
{
  v1 = *v0;
  v2 = 0x6D69547472617473;
  v3 = 0x656C746974;
  v4 = 0x7470697263736564;
  if (v1 != 3)
  {
    v4 = 0x6B6361626C6C6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D6954646E65;
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

uint64_t sub_26D2170B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D220BB4();
  *a1 = result;
  return result;
}

uint64_t sub_26D2170E8(uint64_t a1)
{
  v2 = sub_26D21DE9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D217124(uint64_t a1)
{
  v2 = sub_26D21DE9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.CalendarAction.CreateEvent.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = v27 - v5;
  v37 = sub_26D22CE34();
  v33 = *(v37 - 8);
  v6 = *(v33 + 64);
  v7 = MEMORY[0x28223BE20](v37);
  MEMORY[0x28223BE20](v7);
  v34 = v27 - v8;
  v9 = sub_26D22DC54();
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E17E0, &qword_26D2354E8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_26D21DE9C();
  v36 = v17;
  v20 = v38;
  sub_26D22EA24();
  if (!v20)
  {
    v38 = v12;
    v30 = v9;
    v21 = v14;
    v22 = v35;
    v43 = 0;
    sub_26D21E550(&qword_2804E1140, MEMORY[0x277CC9578]);
    v23 = v36;
    sub_26D22E914();
    v42 = 1;
    sub_26D22E914();
    v41 = 2;
    v29 = sub_26D22E8D4();
    v40 = 3;
    v27[0] = sub_26D22E8A4();
    v27[1] = v25;
    v28 = v13;
    sub_26D210708(4, &qword_2804E17E0, &qword_26D2354E8, &_s21DecodingConfigurationV10CodingKeysON_30, sub_26D21DE9C, v32);
    v26 = v38;
    sub_26D22DC44();
    (*(v21 + 8))(v23, v28);
    (*(v31 + 32))(v22, v26, v30);
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_26D217698()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D21770C()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D2177A8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26D22E854();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26D217810(uint64_t a1)
{
  v2 = sub_26D21DEF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D21784C(uint64_t a1)
{
  v2 = sub_26D21DEF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.CalendarAction.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_26D22DC64();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E17F0, &qword_26D2354F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_26D21DEF0();
  sub_26D22EA24();
  if (!v2)
  {
    v16 = v26;
    v15 = v27;
    v25 = v9;
    v17 = v8;
    if (sub_26D22E924())
    {
      sub_26D22DC54();
      sub_26D21E550(&qword_2804E1800, MEMORY[0x277CF2C18]);
      sub_26D22E884();
      (*(v25 + 8))(v12, v8);
      (*(v16 + 104))(v7, *MEMORY[0x277CF2C20], v4);
      (*(v16 + 32))(v15, v7, v4);
    }

    else
    {
      v18 = sub_26D22E794();
      swift_allocError();
      v20 = v19;
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
      *v20 = v4;
      sub_26D22E894();
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_26D22E744();

      v28 = 0xD000000000000011;
      v29 = 0x800000026D23BFC0;
      v22 = MEMORY[0x26D6B6D70](&unk_287E99A60, &_s21DecodingConfigurationV10CodingKeysON_29);
      MEMORY[0x26D6B6C70](v22);

      sub_26D22E784();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
      swift_willThrow();
      (*(v25 + 8))(v12, v17);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_26D217C54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1954047348;
  }

  else
  {
    v4 = 0x6D754E656E6F6870;
  }

  if (v3)
  {
    v5 = 0xEB00000000726562;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1954047348;
  }

  else
  {
    v6 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xEB00000000726562;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D217CFC()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D217D80()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D217DF0()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D217E7C(uint64_t *a1@<X8>)
{
  v2 = 1954047348;
  if (!*v1)
  {
    v2 = 0x6D754E656E6F6870;
  }

  v3 = 0xEB00000000726562;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D217EBC()
{
  if (*v0)
  {
    result = 1954047348;
  }

  else
  {
    result = 0x6D754E656E6F6870;
  }

  *v0;
  return result;
}

uint64_t sub_26D217F14(uint64_t a1)
{
  v2 = sub_26D21DF44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D217F50(uint64_t a1)
{
  v2 = sub_26D21DF44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.ComposeAction.ComposeTextMessage.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_26D22DBD4();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1808, &qword_26D2354F8);
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v20);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D21DF44();
  sub_26D22EA24();
  if (!v2)
  {
    v13 = v8;
    v17 = v4;
    v14 = v19;
    v15 = v20;
    v22 = 0;
    sub_26D22E8D4();
    v21 = 1;
    sub_26D22E8D4();
    sub_26D22DBC4();
    (*(v13 + 8))(v11, v15);
    (*(v18 + 32))(v14, v7, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D218228(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1701869940;
  }

  else
  {
    v4 = 0x6D754E656E6F6870;
  }

  if (v3)
  {
    v5 = 0xEB00000000726562;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1701869940;
  }

  else
  {
    v6 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xEB00000000726562;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D2182D0()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D218354()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D2183C4()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D218450(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (!*v1)
  {
    v2 = 0x6D754E656E6F6870;
  }

  v3 = 0xEB00000000726562;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D218490()
{
  if (*v0)
  {
    result = 1701869940;
  }

  else
  {
    result = 0x6D754E656E6F6870;
  }

  *v0;
  return result;
}

uint64_t sub_26D2184E8(uint64_t a1)
{
  v2 = sub_26D21DF98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D218524(uint64_t a1)
{
  v2 = sub_26D21DF98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.ComposeAction.ComposeRecordingMessage.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_26D22DBF4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_26D22DC04();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1818, &qword_26D235500);
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v21);
  v12 = &v18 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_26D21DF98();
  v15 = v22;
  sub_26D22EA24();
  if (!v15)
  {
    v22 = v5;
    v16 = v20;
    v25 = 0;
    v18 = sub_26D22E8D4();
    v24 = 1;
    sub_26D21E550(&qword_2804E1828, MEMORY[0x277CF2BD0]);
    sub_26D22E914();
    sub_26D22DBE4();
    (*(v9 + 8))(v12, v21);
    (*(v19 + 32))(v16, v8, v22);
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_26D218894(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = "honeNumber";
  }

  else
  {
    v5 = "composeTextMessage";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (*a2)
  {
    v8 = "composeTextMessage";
  }

  else
  {
    v8 = "honeNumber";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_26D22E964();
  }

  return v10 & 1;
}

uint64_t sub_26D218944()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2189C8()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D218A38()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D218AC4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1)
  {
    v3 = "composeTextMessage";
  }

  else
  {
    v3 = "honeNumber";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_26D218B08()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_26D218B64(uint64_t a1)
{
  v2 = sub_26D21DFEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D218BA0(uint64_t a1)
{
  v2 = sub_26D21DFEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.ComposeAction.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1830, &qword_26D235508);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  v8 = sub_26D22DC14();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_26D21DFEC();
  v20 = v7;
  v21 = v39;
  sub_26D22EA24();
  if (!v21)
  {
    v34 = v12;
    v23 = v15;
    v39 = v17;
    v25 = v36;
    v24 = v37;
    LOBYTE(v40) = 0;
    if (sub_26D22E924())
    {
      sub_26D22DBD4();
      LOBYTE(v40) = 0;
      sub_26D21E550(&qword_2804E1848, MEMORY[0x277CF2BB8]);
      sub_26D22E884();
      (*(v38 + 8))(v20, v24);
      v26 = MEMORY[0x277CF2BE8];
    }

    else
    {
      LOBYTE(v40) = 1;
      if ((sub_26D22E924() & 1) == 0)
      {
        v30 = sub_26D22E794();
        swift_allocError();
        v32 = v31;
        v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
        *v32 = v8;
        sub_26D22E894();
        v40 = 0;
        v41 = 0xE000000000000000;
        sub_26D22E744();

        v40 = 0xD000000000000011;
        v41 = 0x800000026D23BFC0;
        v33 = MEMORY[0x26D6B6D70](&unk_287E99A88, &_s21DecodingConfigurationV10CodingKeysON_26);
        MEMORY[0x26D6B6C70](v33);

        sub_26D22E784();
        (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84170], v30);
        swift_willThrow();
        (*(v38 + 8))(v20, v24);
        return __swift_destroy_boxed_opaque_existential_1(v42);
      }

      sub_26D22DC04();
      LOBYTE(v40) = 1;
      sub_26D21E550(&qword_2804E1840, MEMORY[0x277CF2BE0]);
      v23 = v34;
      sub_26D22E884();
      (*(v38 + 8))(v20, v24);
      v26 = MEMORY[0x277CF2BF8];
    }

    v27 = v35;
    (*(v35 + 104))(v23, *v26, v8);
    v28 = *(v27 + 32);
    v29 = v39;
    v28(v39, v23, v8);
    v28(v25, v29, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_26D2190D8()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D21914C()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D2191E8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26D22E854();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26D219250(uint64_t a1)
{
  v2 = sub_26D21E040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D21928C(uint64_t a1)
{
  v2 = sub_26D21E040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.DeviceAction.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1850, &qword_26D235510);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D21E040();
  sub_26D22EA24();
  if (!v2)
  {
    if (sub_26D22E924())
    {
      (*(v6 + 8))(v9, v5);
      v11 = *MEMORY[0x277CF2B28];
      v12 = sub_26D22DB44();
      (*(*(v12 - 8) + 104))(a2, v11, v12);
    }

    else
    {
      v13 = sub_26D22E794();
      swift_allocError();
      v15 = v14;
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
      *v15 = sub_26D22DB44();
      v18[1] = sub_26D22E894();
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_26D22E744();

      v19 = 0xD000000000000011;
      v20 = 0x800000026D23BFC0;
      v16 = MEMORY[0x26D6B6D70](&unk_287E99AE8, &_s21DecodingConfigurationV10CodingKeysON_25);
      MEMORY[0x26D6B6C70](v16);

      sub_26D22E784();
      (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84170], v13);
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D2195A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001CLL;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = "dTime";
  }

  else
  {
    v5 = "disableAnonymization";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001CLL;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (*a2)
  {
    v8 = "disableAnonymization";
  }

  else
  {
    v8 = "dTime";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_26D22E964();
  }

  return v10 & 1;
}

uint64_t sub_26D219650()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2196D0()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D21973C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D2197C4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*v1)
  {
    v3 = "disableAnonymization";
  }

  else
  {
    v3 = "dTime";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_26D219804()
{
  if (*v0)
  {
    result = 0xD00000000000001CLL;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_26D21985C(uint64_t a1)
{
  v2 = sub_26D21E094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D219898(uint64_t a1)
{
  v2 = sub_26D21E094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.SettingsAction.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1860, &qword_26D235518);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = sub_26D22DC74();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D21E094();
  sub_26D22EA24();
  if (v2)
  {
    goto LABEL_2;
  }

  v32 = a1;
  v14 = v37;
  v15 = v34;
  LOBYTE(v35) = 0;
  v16 = sub_26D22E924();
  v17 = v4;
  if (v16)
  {
    v18 = v7;
    v19 = MEMORY[0x277CF2C38];
    v20 = v8;
    v21 = v32;
LABEL_7:
    (*(v15 + 8))(v18, v17);
    v22 = *v19;
    v23 = v33;
    (*(v33 + 104))(v11, v22, v20);
    (*(v23 + 32))(v14, v11, v20);
    v13 = v21;
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  LOBYTE(v35) = 1;
  v31 = v4;
  v20 = v8;
  if (sub_26D22E924())
  {
    v18 = v7;
    v19 = MEMORY[0x277CF2C50];
    v17 = v31;
    v21 = v32;
    goto LABEL_7;
  }

  v25 = sub_26D22E794();
  swift_allocError();
  v27 = v26;
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
  *v27 = v20;
  v29 = v31;
  v37 = sub_26D22E894();
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_26D22E744();

  v35 = 0xD000000000000011;
  v36 = 0x800000026D23BFC0;
  v30 = MEMORY[0x26D6B6D70](&unk_287E99B10, &_s21DecodingConfigurationV10CodingKeysON_24);
  MEMORY[0x26D6B6C70](v30);

  sub_26D22E784();
  (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84170], v25);
  swift_willThrow();
  (*(v15 + 8))(v7, v29);
  a1 = v32;
LABEL_2:
  v13 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_26D219C90()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D219DCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D220C00();
  *a2 = result;
  return result;
}

void sub_26D219DFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6F697463416C7275;
  v4 = 0x6341656369766564;
  v5 = 0xEC0000006E6F6974;
  v6 = 0xEE006E6F69746341;
  if (v2 != 5)
  {
    v4 = 0x73676E6974746573;
    v5 = 0xEE006E6F69746341;
  }

  v7 = 0x7261646E656C6163;
  if (v2 != 3)
  {
    v7 = 0x4165736F706D6F63;
    v6 = 0xED00006E6F697463;
  }

  if (*v1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x634172656C616964;
  v9 = 0xEC0000006E6F6974;
  if (v2 != 1)
  {
    v8 = 0x6F6974634170616DLL;
    v9 = 0xE90000000000006ELL;
  }

  if (*v1)
  {
    v3 = v8;
    v10 = v9;
  }

  else
  {
    v10 = 0xE90000000000006ELL;
  }

  if (*v1 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (*v1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  *a1 = v11;
  a1[1] = v12;
}

uint64_t sub_26D219F00()
{
  v1 = *v0;
  v2 = 0x6F697463416C7275;
  v3 = 0x6341656369766564;
  if (v1 != 5)
  {
    v3 = 0x73676E6974746573;
  }

  v4 = 0x7261646E656C6163;
  if (v1 != 3)
  {
    v4 = 0x4165736F706D6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x634172656C616964;
  if (v1 != 1)
  {
    v5 = 0x6F6974634170616DLL;
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

uint64_t sub_26D21A000@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D220C00();
  *a1 = result;
  return result;
}

uint64_t sub_26D21A044(uint64_t a1)
{
  v2 = sub_26D21E0E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D21A080(uint64_t a1)
{
  v2 = sub_26D21E0E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.Action.ActionType.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1870, &qword_26D235520);
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v55 - v5;
  v59 = sub_26D22DF44();
  v57 = *(v59 - 8);
  v7 = *(v57 + 64);
  v8 = MEMORY[0x28223BE20](v59);
  v55 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v55 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v60 = &v55 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v55 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v55 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v55 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v55 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_26D21E0E8();
  v67 = v6;
  v30 = v63;
  sub_26D22EA24();
  if (!v30)
  {
    v32 = v22;
    v33 = v25;
    v34 = v60;
    v63 = v27;
    LOBYTE(v65) = 0;
    v35 = v62;
    if (sub_26D22E924())
    {
      sub_26D22E1D4();
      LOBYTE(v65) = 0;
      sub_26D21E550(&qword_2804E18B0, MEMORY[0x277CF3040]);
      v34 = v33;
      v36 = v67;
      sub_26D22E884();
      (*(v61 + 8))(v36, v35);
      v37 = MEMORY[0x277CF2DA0];
    }

    else
    {
      LOBYTE(v65) = 1;
      if ((sub_26D22E924() & 1) == 0)
      {
        LOBYTE(v65) = 2;
        if (sub_26D22E924())
        {
          sub_26D22E164();
          LOBYTE(v65) = 2;
          sub_26D21E550(&qword_2804E18A0, MEMORY[0x277CF2FC8]);
          v41 = v67;
          sub_26D22E884();
          (*(v61 + 8))(v41, v35);
          v40 = v59;
          v37 = MEMORY[0x277CF2D98];
          v34 = v19;
        }

        else
        {
          LOBYTE(v65) = 3;
          v42 = sub_26D22E924();
          v40 = v59;
          if (v42)
          {
            sub_26D22DC64();
            LOBYTE(v65) = 3;
            sub_26D21E550(&qword_2804E1898, MEMORY[0x277CF2C30]);
            v34 = v16;
            v43 = v67;
            sub_26D22E884();
            (*(v61 + 8))(v43, v35);
            v37 = MEMORY[0x277CF2DE8];
          }

          else
          {
            LOBYTE(v65) = 4;
            if (sub_26D22E924())
            {
              sub_26D22DC14();
              LOBYTE(v65) = 4;
              sub_26D21E550(&qword_2804E1890, MEMORY[0x277CF2C08]);
              v44 = v67;
              sub_26D22E884();
              (*(v61 + 8))(v44, v35);
              v37 = MEMORY[0x277CF2DD0];
            }

            else
            {
              LOBYTE(v65) = 5;
              if (sub_26D22E924())
              {
                sub_26D22DB44();
                LOBYTE(v65) = 5;
                sub_26D21E550(&qword_2804E1888, MEMORY[0x277CF2B38]);
                v34 = v56;
                sub_26D22E884();
                (*(v61 + 8))(v67, v35);
                v37 = MEMORY[0x277CF2DB0];
              }

              else
              {
                LOBYTE(v65) = 6;
                if ((sub_26D22E924() & 1) == 0)
                {
                  v45 = sub_26D22E794();
                  swift_allocError();
                  v47 = v46;
                  v48 = v35;
                  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
                  *v47 = v40;
                  v50 = v67;
                  sub_26D22E894();
                  v65 = 0;
                  v66 = 0xE000000000000000;
                  sub_26D22E744();

                  v65 = 0xD000000000000011;
                  v66 = 0x800000026D23BFC0;
                  v51 = MEMORY[0x26D6B6D70](&unk_287E994C8, &_s21DecodingConfigurationV10CodingKeysON_23);
                  MEMORY[0x26D6B6C70](v51);

                  sub_26D22E784();
                  (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84170], v45);
                  swift_willThrow();
                  (*(v61 + 8))(v50, v48);
                  return __swift_destroy_boxed_opaque_existential_1(v64);
                }

                sub_26D22DC74();
                LOBYTE(v65) = 6;
                sub_26D21E550(&qword_2804E1880, MEMORY[0x277CF2C58]);
                v34 = v55;
                sub_26D22E884();
                (*(v61 + 8))(v67, v35);
                v37 = MEMORY[0x277CF2DF8];
              }
            }
          }
        }

        v39 = v58;
LABEL_20:
        v52 = v57;
        (*(v57 + 104))(v34, *v37, v40);
        v53 = *(v52 + 32);
        v54 = v63;
        v53(v63, v34, v40);
        v53(v39, v54, v40);
        return __swift_destroy_boxed_opaque_existential_1(v64);
      }

      sub_26D22DBB4();
      LOBYTE(v65) = 1;
      sub_26D21E550(&qword_2804E18A8, MEMORY[0x277CF2B88]);
      v38 = v67;
      sub_26D22E884();
      (*(v61 + 8))(v38, v35);
      v37 = MEMORY[0x277CF2DC8];
      v34 = v32;
    }

    v39 = v58;
    v40 = v59;
    goto LABEL_20;
  }

  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t Chatbot.Action.init(from:configuration:)(uint64_t *a1)
{
  v3 = sub_26D22DF44();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26D22DD14();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D1FB6E0(a1, v13);
  Chatbot.SuggestionCommon.init(from:configuration:)(v13, v10);
  if (!v1)
  {
    sub_26D1FB6E0(a1, v13);
    Chatbot.Action.ActionType.init(from:configuration:)(v13, v6);
    sub_26D22DF54();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D21ABCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E6F69746361;
  }

  else
  {
    v4 = 0x796C706572;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6E6F69746361;
  }

  else
  {
    v6 = 0x796C706572;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D21AC6C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D21ACE8()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D21AD50()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D21ADD4(uint64_t *a1@<X8>)
{
  v2 = 0x796C706572;
  if (*v1)
  {
    v2 = 0x6E6F69746361;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D21AE0C()
{
  if (*v0)
  {
    result = 0x6E6F69746361;
  }

  else
  {
    result = 0x796C706572;
  }

  *v0;
  return result;
}

uint64_t sub_26D21AE5C(uint64_t a1)
{
  v2 = sub_26D21E13C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D21AE98(uint64_t a1)
{
  v2 = sub_26D21E13C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MenuL2.Entry.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E18B8, &qword_26D235528);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  v8 = sub_26D22DFC4();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_26D21E13C();
  v20 = v7;
  v21 = v39;
  sub_26D22EA24();
  if (!v21)
  {
    v34 = v12;
    v23 = v15;
    v39 = v17;
    v25 = v36;
    v24 = v37;
    LOBYTE(v40) = 0;
    if (sub_26D22E924())
    {
      sub_26D22DF34();
      LOBYTE(v40) = 0;
      sub_26D21E550(&qword_2804E18D0, MEMORY[0x277CF2D88]);
      sub_26D22E884();
      (*(v38 + 8))(v20, v24);
      v26 = MEMORY[0x277CF2E88];
    }

    else
    {
      LOBYTE(v40) = 1;
      if ((sub_26D22E924() & 1) == 0)
      {
        v30 = sub_26D22E794();
        swift_allocError();
        v32 = v31;
        v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
        *v32 = v8;
        sub_26D22E894();
        v40 = 0;
        v41 = 0xE000000000000000;
        sub_26D22E744();

        v40 = 0xD000000000000011;
        v41 = 0x800000026D23BFC0;
        v33 = MEMORY[0x26D6B6D70](&unk_287E99B38, &_s21DecodingConfigurationV10CodingKeysON_22);
        MEMORY[0x26D6B6C70](v33);

        sub_26D22E784();
        (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84170], v30);
        swift_willThrow();
        (*(v38 + 8))(v20, v24);
        return __swift_destroy_boxed_opaque_existential_1(v42);
      }

      sub_26D22DF64();
      LOBYTE(v40) = 1;
      sub_26D21E550(&qword_2804E18C8, MEMORY[0x277CF2E00]);
      v23 = v34;
      sub_26D22E884();
      (*(v38 + 8))(v20, v24);
      v26 = MEMORY[0x277CF2E90];
    }

    v27 = v35;
    (*(v35 + 104))(v23, *v26, v8);
    v28 = *(v27 + 32);
    v29 = v39;
    v28(v39, v23, v8);
    v28(v25, v29, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_26D21B3E8(uint64_t a1)
{
  v2 = sub_26D21E190();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D21B424(uint64_t a1)
{
  v2 = sub_26D21E190();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MenuL2.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_26D22DFD4();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E18D8, &qword_26D235530);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D21E190();
  sub_26D22EA24();
  if (!v2)
  {
    v13 = v8;
    v19 = v4;
    v15 = v21;
    v14 = v22;
    v24 = 0;
    sub_26D22E8D4();
    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E18E8, &qword_26D235538);
    v23 = 1;
    sub_26D21E1E4();
    sub_26D22E884();
    sub_26D22DFB4();
    (*(v13 + 8))(v11, v14);
    (*(v20 + 32))(v15, v7, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D21B728@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D220C98();
  *a2 = result;
  return result;
}

uint64_t sub_26D21B758@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D220C98();
  *a1 = result;
  return result;
}

uint64_t sub_26D21B790(uint64_t a1)
{
  v2 = sub_26D21E298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D21B7CC(uint64_t a1)
{
  v2 = sub_26D21E298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MenuL1.Entry.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1900, &qword_26D235540);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - v5;
  v7 = sub_26D22DF94();
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_26D21E298();
  v55 = v6;
  v22 = v51;
  sub_26D22EA24();
  if (!v22)
  {
    v45 = v11;
    v46 = v14;
    v24 = v17;
    v51 = v19;
    v25 = v48;
    v26 = v49;
    LOBYTE(v53) = 0;
    v27 = v50;
    if (sub_26D22E924())
    {
      sub_26D22DF34();
      LOBYTE(v53) = 0;
      sub_26D21E550(&qword_2804E18D0, MEMORY[0x277CF2D88]);
      v28 = v24;
      v29 = v55;
      sub_26D22E884();
      (*(v26 + 8))(v29, v27);
      v30 = MEMORY[0x277CF2E40];
    }

    else
    {
      LOBYTE(v53) = 1;
      v31 = v26;
      if ((sub_26D22E924() & 1) == 0)
      {
        LOBYTE(v53) = 2;
        v37 = sub_26D22E924();
        v34 = v47;
        if ((v37 & 1) == 0)
        {
          v40 = sub_26D22E794();
          swift_allocError();
          v42 = v41;
          v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
          *v42 = v7;
          v43 = v55;
          sub_26D22E894();
          v53 = 0;
          v54 = 0xE000000000000000;
          sub_26D22E744();

          v53 = 0xD000000000000011;
          v54 = 0x800000026D23BFC0;
          v44 = MEMORY[0x26D6B6D70](&unk_287E99B60, &_s21DecodingConfigurationV10CodingKeysON_20);
          MEMORY[0x26D6B6C70](v44);

          sub_26D22E784();
          (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84170], v40);
          swift_willThrow();
          (*(v31 + 8))(v43, v27);
          return __swift_destroy_boxed_opaque_existential_1(v52);
        }

        sub_26D22DFD4();
        LOBYTE(v53) = 2;
        sub_26D21E550(&qword_2804E1910, MEMORY[0x277CF2EA8]);
        v38 = v45;
        v39 = v55;
        sub_26D22E884();
        (*(v31 + 8))(v39, v27);
        v30 = MEMORY[0x277CF2E68];
        v28 = v38;
        goto LABEL_10;
      }

      sub_26D22DF64();
      LOBYTE(v53) = 1;
      sub_26D21E550(&qword_2804E18C8, MEMORY[0x277CF2E00]);
      v32 = v46;
      v33 = v55;
      sub_26D22E884();
      (*(v26 + 8))(v33, v27);
      v30 = MEMORY[0x277CF2E58];
      v28 = v32;
    }

    v34 = v47;
LABEL_10:
    (*(v25 + 104))(v28, *v30, v7);
    v35 = *(v25 + 32);
    v36 = v51;
    v35(v51, v28, v7);
    v35(v34, v36, v7);
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_26D21BDF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x73656972746E65;
  }

  else
  {
    v4 = 0x5479616C70736964;
  }

  if (v3)
  {
    v5 = 0xEB00000000747865;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x73656972746E65;
  }

  else
  {
    v6 = 0x5479616C70736964;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEB00000000747865;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D21BEA8()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D21BF34()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D21BFB0()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D21C044(uint64_t *a1@<X8>)
{
  v2 = 0x5479616C70736964;
  if (*v1)
  {
    v2 = 0x73656972746E65;
  }

  v3 = 0xEB00000000747865;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D21C08C()
{
  if (*v0)
  {
    result = 0x73656972746E65;
  }

  else
  {
    result = 0x5479616C70736964;
  }

  *v0;
  return result;
}

uint64_t sub_26D21C0DC(uint64_t a1)
{
  v2 = sub_26D21E2EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D21C118(uint64_t a1)
{
  v2 = sub_26D21E2EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MenuL1.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_26D22DFA4();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1918, &qword_26D235548);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D21E2EC();
  sub_26D22EA24();
  if (!v2)
  {
    v13 = v8;
    v19 = v4;
    v15 = v21;
    v14 = v22;
    v24 = 0;
    sub_26D22E8D4();
    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1928, &qword_26D235550);
    v23 = 1;
    sub_26D21E340();
    sub_26D22E884();
    sub_26D22DF84();
    (*(v13 + 8))(v11, v14);
    (*(v20 + 32))(v15, v7, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D21C420(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F69746361;
  if (v2 != 1)
  {
    v4 = 1970169197;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x796C706572;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6E6F69746361;
  if (*a2 != 1)
  {
    v8 = 1970169197;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x796C706572;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D21C50C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D21C5A4()
{
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D21C628()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D21C6B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D220C4C();
  *a2 = result;
  return result;
}

void sub_26D21C6E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F69746361;
  if (v2 != 1)
  {
    v5 = 1970169197;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x796C706572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26D21C738()
{
  v1 = 0x6E6F69746361;
  if (*v0 != 1)
  {
    v1 = 1970169197;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796C706572;
  }
}

uint64_t sub_26D21C784@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D220C4C();
  *a1 = result;
  return result;
}

uint64_t sub_26D21C7BC(uint64_t a1)
{
  v2 = sub_26D21E3F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D21C7F8(uint64_t a1)
{
  v2 = sub_26D21E3F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MenuL0.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1940, &qword_26D235558);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - v5;
  v7 = sub_26D22DF74();
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_26D21E3F4();
  v55 = v6;
  v22 = v51;
  sub_26D22EA24();
  if (!v22)
  {
    v45 = v11;
    v46 = v14;
    v24 = v17;
    v51 = v19;
    v25 = v48;
    v26 = v49;
    LOBYTE(v53) = 0;
    v27 = v50;
    if (sub_26D22E924())
    {
      sub_26D22DF34();
      LOBYTE(v53) = 0;
      sub_26D21E550(&qword_2804E18D0, MEMORY[0x277CF2D88]);
      v28 = v24;
      v29 = v55;
      sub_26D22E884();
      (*(v26 + 8))(v29, v27);
      v30 = MEMORY[0x277CF2E10];
    }

    else
    {
      LOBYTE(v53) = 1;
      v31 = v26;
      if ((sub_26D22E924() & 1) == 0)
      {
        LOBYTE(v53) = 2;
        v37 = sub_26D22E924();
        v34 = v47;
        if ((v37 & 1) == 0)
        {
          v40 = sub_26D22E794();
          swift_allocError();
          v42 = v41;
          v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
          *v42 = v7;
          v43 = v55;
          sub_26D22E894();
          v53 = 0;
          v54 = 0xE000000000000000;
          sub_26D22E744();

          v53 = 0xD000000000000011;
          v54 = 0x800000026D23BFC0;
          v44 = MEMORY[0x26D6B6D70](&unk_287E99B88, &_s21DecodingConfigurationV10CodingKeysON_18);
          MEMORY[0x26D6B6C70](v44);

          sub_26D22E784();
          (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84170], v40);
          swift_willThrow();
          (*(v31 + 8))(v43, v27);
          return __swift_destroy_boxed_opaque_existential_1(v52);
        }

        sub_26D22DFA4();
        LOBYTE(v53) = 2;
        sub_26D21E550(&qword_2804E1950, MEMORY[0x277CF2E78]);
        v38 = v45;
        v39 = v55;
        sub_26D22E884();
        (*(v31 + 8))(v39, v27);
        v30 = MEMORY[0x277CF2E30];
        v28 = v38;
        goto LABEL_10;
      }

      sub_26D22DF64();
      LOBYTE(v53) = 1;
      sub_26D21E550(&qword_2804E18C8, MEMORY[0x277CF2E00]);
      v32 = v46;
      v33 = v55;
      sub_26D22E884();
      (*(v26 + 8))(v33, v27);
      v30 = MEMORY[0x277CF2E18];
      v28 = v32;
    }

    v34 = v47;
LABEL_10:
    (*(v25 + 104))(v28, *v30, v7);
    v35 = *(v25 + 32);
    v36 = v51;
    v35(v51, v28, v7);
    v35(v34, v36, v7);
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_26D21CE1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x73656972746E65;
  }

  else
  {
    v4 = 1970169197;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x73656972746E65;
  }

  else
  {
    v6 = 1970169197;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
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
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D21CEBC()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D21CF38()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D21CFA0()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D21D024(uint64_t *a1@<X8>)
{
  v2 = 1970169197;
  if (*v1)
  {
    v2 = 0x73656972746E65;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D21D05C()
{
  if (*v0)
  {
    result = 0x73656972746E65;
  }

  else
  {
    result = 1970169197;
  }

  *v0;
  return result;
}

uint64_t sub_26D21D09C(uint64_t a1)
{
  v2 = sub_26D21E448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D21D0D8(uint64_t a1)
{
  v2 = sub_26D21E448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.Menu.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1958, &qword_26D235560);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = sub_26D22DEF4();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_26D21E448();
  v21 = v46;
  sub_26D22EA24();
  if (!v21)
  {
    v39 = v9;
    v40 = v13;
    v38 = v16;
    v23 = v42;
    v22 = v43;
    v46 = v18;
    LOBYTE(v49) = 0;
    v24 = v45;
    if (sub_26D22E924())
    {
      LOBYTE(v49) = 0;
      sub_26D22E864();
      v27 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1968, &unk_26D235568);
      v48 = 1;
      sub_26D21E49C();
      sub_26D22E884();
      v28 = v44;
      v29 = v38;
      sub_26D22DEE4();
      v30 = *(v28 + 8);
      v30(v23, v24);
      v30(v27, v24);
      v31 = v46;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1968, &unk_26D235568);
      v48 = 1;
      sub_26D21E49C();
      sub_26D22E884();
      v25 = v8;
      v31 = v46;
      v29 = v40;
      sub_26D22DEE4();
      (*(v44 + 8))(v25, v24);
    }

    v32 = *(v41 + 32);
    v33 = v31;
    v34 = v29;
    v35 = v31;
    v36 = v39;
    v32(v33, v34, v39);
    v32(v22, v35, v36);
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_26D21D568(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26D22E4F4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D6B6CB0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_26D21D5E4@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_26D220DB0(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_26D22CBF4();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_26D22CBA4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_26D22CD24();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_26D21D6AC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_26D1BCB9C(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_26D1BCB9C(v6, v5);
    *v3 = xmmword_26D235450;
    sub_26D1BCB9C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_26D22CBB4() && __OFSUB__(v6, sub_26D22CBE4()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_26D22CBF4();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_26D22CB94();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_26D21DB50(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_26D1BCB9C(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_26D235450;
    sub_26D1BCB9C(0, 0xC000000000000000);
    sub_26D22CCF4();
    result = sub_26D21DB50(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_26D21DA50@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_26D220DB0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26D220F88(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_26D221004(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_26D21DAE4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_26D21DB50(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26D22CBB4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26D22CBE4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26D22CBD4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_26D21DC04@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_26D22E754();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
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

BOOL sub_26D21DC54(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_26D22E734();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t sub_26D21DD4C()
{
  result = qword_2804E1798;
  if (!qword_2804E1798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1798);
  }

  return result;
}

unint64_t sub_26D21DDA0()
{
  result = qword_2804E17A8;
  if (!qword_2804E17A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E17A8);
  }

  return result;
}

unint64_t sub_26D21DDF4()
{
  result = qword_2804E17B8;
  if (!qword_2804E17B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E17B8);
  }

  return result;
}

unint64_t sub_26D21DE48()
{
  result = qword_2804E17D0;
  if (!qword_2804E17D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E17D0);
  }

  return result;
}

unint64_t sub_26D21DE9C()
{
  result = qword_2804E17E8;
  if (!qword_2804E17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E17E8);
  }

  return result;
}

unint64_t sub_26D21DEF0()
{
  result = qword_2804E17F8;
  if (!qword_2804E17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E17F8);
  }

  return result;
}

unint64_t sub_26D21DF44()
{
  result = qword_2804E1810;
  if (!qword_2804E1810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1810);
  }

  return result;
}

unint64_t sub_26D21DF98()
{
  result = qword_2804E1820;
  if (!qword_2804E1820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1820);
  }

  return result;
}

unint64_t sub_26D21DFEC()
{
  result = qword_2804E1838;
  if (!qword_2804E1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1838);
  }

  return result;
}

unint64_t sub_26D21E040()
{
  result = qword_2804E1858;
  if (!qword_2804E1858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1858);
  }

  return result;
}

unint64_t sub_26D21E094()
{
  result = qword_2804E1868;
  if (!qword_2804E1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1868);
  }

  return result;
}

unint64_t sub_26D21E0E8()
{
  result = qword_2804E1878;
  if (!qword_2804E1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1878);
  }

  return result;
}

unint64_t sub_26D21E13C()
{
  result = qword_2804E18C0;
  if (!qword_2804E18C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E18C0);
  }

  return result;
}

unint64_t sub_26D21E190()
{
  result = qword_2804E18E0;
  if (!qword_2804E18E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E18E0);
  }

  return result;
}

unint64_t sub_26D21E1E4()
{
  result = qword_2804E18F0;
  if (!qword_2804E18F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E18E8, &qword_26D235538);
    sub_26D21E550(&qword_2804E18F8, MEMORY[0x277CF2EA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E18F0);
  }

  return result;
}

unint64_t sub_26D21E298()
{
  result = qword_2804E1908;
  if (!qword_2804E1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1908);
  }

  return result;
}

unint64_t sub_26D21E2EC()
{
  result = qword_2804E1920;
  if (!qword_2804E1920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1920);
  }

  return result;
}

unint64_t sub_26D21E340()
{
  result = qword_2804E1930;
  if (!qword_2804E1930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E1928, &qword_26D235550);
    sub_26D21E550(&qword_2804E1938, MEMORY[0x277CF2E70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1930);
  }

  return result;
}

unint64_t sub_26D21E3F4()
{
  result = qword_2804E1948;
  if (!qword_2804E1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1948);
  }

  return result;
}

unint64_t sub_26D21E448()
{
  result = qword_2804E1960;
  if (!qword_2804E1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1960);
  }

  return result;
}

unint64_t sub_26D21E49C()
{
  result = qword_2804E1970;
  if (!qword_2804E1970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E1968, &unk_26D235568);
    sub_26D21E550(&qword_2804E1978, MEMORY[0x277CF2E38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1970);
  }

  return result;
}

uint64_t sub_26D21E550(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26D21E96C()
{
  result = qword_2804E1990;
  if (!qword_2804E1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1990);
  }

  return result;
}

unint64_t sub_26D21E9F4()
{
  result = qword_2804E19A8;
  if (!qword_2804E19A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E19A8);
  }

  return result;
}

unint64_t sub_26D21EA7C()
{
  result = qword_2804E19C0;
  if (!qword_2804E19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E19C0);
  }

  return result;
}

unint64_t sub_26D21EB04()
{
  result = qword_2804E19D8;
  if (!qword_2804E19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E19D8);
  }

  return result;
}

unint64_t sub_26D21EB8C()
{
  result = qword_2804E19F0;
  if (!qword_2804E19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E19F0);
  }

  return result;
}

unint64_t sub_26D21EC14()
{
  result = qword_2804E1A08;
  if (!qword_2804E1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1A08);
  }

  return result;
}

unint64_t sub_26D21EC9C()
{
  result = qword_2804E1A20;
  if (!qword_2804E1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1A20);
  }

  return result;
}

unint64_t sub_26D21ED24()
{
  result = qword_2804E1A38;
  if (!qword_2804E1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1A38);
  }

  return result;
}

unint64_t sub_26D21EDAC()
{
  result = qword_2804E1A50;
  if (!qword_2804E1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1A50);
  }

  return result;
}

unint64_t sub_26D21EE34()
{
  result = qword_2804E1A68;
  if (!qword_2804E1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1A68);
  }

  return result;
}

unint64_t sub_26D21EEBC()
{
  result = qword_2804E1A80;
  if (!qword_2804E1A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1A80);
  }

  return result;
}

unint64_t sub_26D21EF44()
{
  result = qword_2804E1A98;
  if (!qword_2804E1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1A98);
  }

  return result;
}

unint64_t sub_26D21EFCC()
{
  result = qword_2804E1AB0;
  if (!qword_2804E1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1AB0);
  }

  return result;
}

unint64_t sub_26D21F054()
{
  result = qword_2804E1AC8;
  if (!qword_2804E1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1AC8);
  }

  return result;
}

unint64_t sub_26D21F0DC()
{
  result = qword_2804E1AE0;
  if (!qword_2804E1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1AE0);
  }

  return result;
}

unint64_t sub_26D21F164()
{
  result = qword_2804E1AF8;
  if (!qword_2804E1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1AF8);
  }

  return result;
}

unint64_t sub_26D21F1EC()
{
  result = qword_2804E1B10;
  if (!qword_2804E1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1B10);
  }

  return result;
}

unint64_t sub_26D21F274()
{
  result = qword_2804E1B28;
  if (!qword_2804E1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1B28);
  }

  return result;
}

unint64_t sub_26D21F2FC()
{
  result = qword_2804E1B40;
  if (!qword_2804E1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1B40);
  }

  return result;
}

unint64_t sub_26D21F384()
{
  result = qword_2804E1B58;
  if (!qword_2804E1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1B58);
  }

  return result;
}

unint64_t sub_26D21F40C()
{
  result = qword_2804E1B70;
  if (!qword_2804E1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1B70);
  }

  return result;
}

unint64_t sub_26D21F494()
{
  result = qword_2804E1B88;
  if (!qword_2804E1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1B88);
  }

  return result;
}

unint64_t sub_26D21F51C()
{
  result = qword_2804E1BA0;
  if (!qword_2804E1BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1BA0);
  }

  return result;
}

unint64_t sub_26D21F574()
{
  result = qword_2804E1BA8;
  if (!qword_2804E1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1BA8);
  }

  return result;
}

unint64_t sub_26D21F5FC()
{
  result = qword_2804E1BC0;
  if (!qword_2804E1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1BC0);
  }

  return result;
}

unint64_t sub_26D21F654()
{
  result = qword_2804E1BC8;
  if (!qword_2804E1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1BC8);
  }

  return result;
}

uint64_t sub_26D21F6D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_26D21F730()
{
  result = qword_2804E1BE0;
  if (!qword_2804E1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1BE0);
  }

  return result;
}

unint64_t sub_26D21F788()
{
  result = qword_2804E1BE8;
  if (!qword_2804E1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1BE8);
  }

  return result;
}

unint64_t sub_26D21F7E0()
{
  result = qword_2804E1BF0;
  if (!qword_2804E1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1BF0);
  }

  return result;
}

unint64_t sub_26D21F838()
{
  result = qword_2804E1BF8;
  if (!qword_2804E1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1BF8);
  }

  return result;
}

unint64_t sub_26D21F890()
{
  result = qword_2804E1C00;
  if (!qword_2804E1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C00);
  }

  return result;
}

unint64_t sub_26D21F8E8()
{
  result = qword_2804E1C08;
  if (!qword_2804E1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C08);
  }

  return result;
}

unint64_t sub_26D21F940()
{
  result = qword_2804E1C10;
  if (!qword_2804E1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C10);
  }

  return result;
}

unint64_t sub_26D21F998()
{
  result = qword_2804E1C18;
  if (!qword_2804E1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C18);
  }

  return result;
}

unint64_t sub_26D21F9F0()
{
  result = qword_2804E1C20;
  if (!qword_2804E1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C20);
  }

  return result;
}

unint64_t sub_26D21FA48()
{
  result = qword_2804E1C28;
  if (!qword_2804E1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C28);
  }

  return result;
}

unint64_t sub_26D21FAA0()
{
  result = qword_2804E1C30;
  if (!qword_2804E1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C30);
  }

  return result;
}

unint64_t sub_26D21FAF8()
{
  result = qword_2804E1C38;
  if (!qword_2804E1C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C38);
  }

  return result;
}

unint64_t sub_26D21FB50()
{
  result = qword_2804E1C40;
  if (!qword_2804E1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C40);
  }

  return result;
}

unint64_t sub_26D21FBA8()
{
  result = qword_2804E1C48;
  if (!qword_2804E1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C48);
  }

  return result;
}

unint64_t sub_26D21FC00()
{
  result = qword_2804E1C50;
  if (!qword_2804E1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C50);
  }

  return result;
}

unint64_t sub_26D21FC58()
{
  result = qword_2804E1C58;
  if (!qword_2804E1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C58);
  }

  return result;
}

unint64_t sub_26D21FCB0()
{
  result = qword_2804E1C60;
  if (!qword_2804E1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C60);
  }

  return result;
}

unint64_t sub_26D21FD08()
{
  result = qword_2804E1C68;
  if (!qword_2804E1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C68);
  }

  return result;
}

unint64_t sub_26D21FD60()
{
  result = qword_2804E1C70;
  if (!qword_2804E1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C70);
  }

  return result;
}

unint64_t sub_26D21FDB8()
{
  result = qword_2804E1C78;
  if (!qword_2804E1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C78);
  }

  return result;
}

unint64_t sub_26D21FE10()
{
  result = qword_2804E1C80;
  if (!qword_2804E1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C80);
  }

  return result;
}

unint64_t sub_26D21FE68()
{
  result = qword_2804E1C88;
  if (!qword_2804E1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C88);
  }

  return result;
}

unint64_t sub_26D21FEC0()
{
  result = qword_2804E1C90;
  if (!qword_2804E1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C90);
  }

  return result;
}

unint64_t sub_26D21FF18()
{
  result = qword_2804E1C98;
  if (!qword_2804E1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1C98);
  }

  return result;
}

unint64_t sub_26D21FF70()
{
  result = qword_2804E1CA0;
  if (!qword_2804E1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1CA0);
  }

  return result;
}

unint64_t sub_26D21FFC8()
{
  result = qword_2804E1CA8;
  if (!qword_2804E1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1CA8);
  }

  return result;
}

unint64_t sub_26D220020()
{
  result = qword_2804E1CB0;
  if (!qword_2804E1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1CB0);
  }

  return result;
}

unint64_t sub_26D220078()
{
  result = qword_2804E1CB8;
  if (!qword_2804E1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1CB8);
  }

  return result;
}

unint64_t sub_26D2200D0()
{
  result = qword_2804E1CC0;
  if (!qword_2804E1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1CC0);
  }

  return result;
}

unint64_t sub_26D220128()
{
  result = qword_2804E1CC8;
  if (!qword_2804E1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1CC8);
  }

  return result;
}

unint64_t sub_26D220180()
{
  result = qword_2804E1CD0;
  if (!qword_2804E1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1CD0);
  }

  return result;
}

unint64_t sub_26D2201D8()
{
  result = qword_2804E1CD8;
  if (!qword_2804E1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1CD8);
  }

  return result;
}

unint64_t sub_26D220230()
{
  result = qword_2804E1CE0;
  if (!qword_2804E1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1CE0);
  }

  return result;
}

unint64_t sub_26D220288()
{
  result = qword_2804E1CE8;
  if (!qword_2804E1CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1CE8);
  }

  return result;
}

unint64_t sub_26D2202E0()
{
  result = qword_2804E1CF0;
  if (!qword_2804E1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1CF0);
  }

  return result;
}

unint64_t sub_26D220338()
{
  result = qword_2804E1CF8;
  if (!qword_2804E1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1CF8);
  }

  return result;
}

unint64_t sub_26D220390()
{
  result = qword_2804E1D00;
  if (!qword_2804E1D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D00);
  }

  return result;
}

unint64_t sub_26D2203E8()
{
  result = qword_2804E1D08;
  if (!qword_2804E1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D08);
  }

  return result;
}

unint64_t sub_26D220440()
{
  result = qword_2804E1D10;
  if (!qword_2804E1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D10);
  }

  return result;
}

unint64_t sub_26D220498()
{
  result = qword_2804E1D18;
  if (!qword_2804E1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D18);
  }

  return result;
}

unint64_t sub_26D2204F0()
{
  result = qword_2804E1D20;
  if (!qword_2804E1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D20);
  }

  return result;
}

unint64_t sub_26D220548()
{
  result = qword_2804E1D28;
  if (!qword_2804E1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D28);
  }

  return result;
}

unint64_t sub_26D2205A0()
{
  result = qword_2804E1D30;
  if (!qword_2804E1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D30);
  }

  return result;
}

unint64_t sub_26D2205F8()
{
  result = qword_2804E1D38;
  if (!qword_2804E1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D38);
  }

  return result;
}

unint64_t sub_26D220650()
{
  result = qword_2804E1D40;
  if (!qword_2804E1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D40);
  }

  return result;
}

unint64_t sub_26D2206A8()
{
  result = qword_2804E1D48;
  if (!qword_2804E1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D48);
  }

  return result;
}

unint64_t sub_26D220700()
{
  result = qword_2804E1D50;
  if (!qword_2804E1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D50);
  }

  return result;
}

unint64_t sub_26D220758()
{
  result = qword_2804E1D58;
  if (!qword_2804E1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D58);
  }

  return result;
}

unint64_t sub_26D2207B0()
{
  result = qword_2804E1D60;
  if (!qword_2804E1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D60);
  }

  return result;
}

unint64_t sub_26D220808()
{
  result = qword_2804E1D68;
  if (!qword_2804E1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D68);
  }

  return result;
}

unint64_t sub_26D220860()
{
  result = qword_2804E1D70;
  if (!qword_2804E1D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D70);
  }

  return result;
}

unint64_t sub_26D2208B8()
{
  result = qword_2804E1D78;
  if (!qword_2804E1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D78);
  }

  return result;
}

unint64_t sub_26D220910()
{
  result = qword_2804E1D80;
  if (!qword_2804E1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D80);
  }

  return result;
}

unint64_t sub_26D220968()
{
  result = qword_2804E1D88;
  if (!qword_2804E1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D88);
  }

  return result;
}

unint64_t sub_26D2209C0()
{
  result = qword_2804E1D90;
  if (!qword_2804E1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D90);
  }

  return result;
}

unint64_t sub_26D220A18()
{
  result = qword_2804E1D98;
  if (!qword_2804E1D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1D98);
  }

  return result;
}

unint64_t sub_26D220A70()
{
  result = qword_2804E1DA0;
  if (!qword_2804E1DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1DA0);
  }

  return result;
}

unint64_t sub_26D220AC8()
{
  result = qword_2804E1DA8;
  if (!qword_2804E1DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1DA8);
  }

  return result;
}

uint64_t sub_26D220B1C()
{
  v0 = sub_26D22E854();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D220B68()
{
  v0 = sub_26D22E854();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D220BB4()
{
  v0 = sub_26D22E854();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D220C00()
{
  v0 = sub_26D22E854();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D220C4C()
{
  v0 = sub_26D22E854();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D220C98()
{
  v0 = sub_26D22E854();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D220CE4()
{
  v0 = sub_26D22E854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

_BYTE *sub_26D220D30@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_26D220DB0(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_26D220E68(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_26D22CBF4();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_26D22CBC4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_26D22CD24();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_26D220F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_26D21DAE4(sub_26D221088, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_26D220F70(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26D220F88(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26D22CBF4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26D22CBA4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26D22CD24();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_26D221004(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26D22CBF4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26D22CBA4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26D221100(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000004449;
  v3 = 0x2D6567617373654DLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1836020294;
    }

    else
    {
      v5 = 28500;
    }

    if (v4 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x746C75736572;
    }

    else
    {
      v5 = 0x2D6567617373654DLL;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEA00000000004449;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1836020294;
  if (a2 != 2)
  {
    v8 = 28500;
    v7 = 0xE200000000000000;
  }

  if (a2)
  {
    v3 = 0x746C75736572;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D221214(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7107189;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65646F4D77656976;
    }

    else
    {
      v4 = 0x6574656D61726170;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEA00000000007372;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746163696C707061;
    }

    else
    {
      v4 = 7107189;
    }

    if (v3)
    {
      v5 = 0xEB000000006E6F69;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x65646F4D77656976;
  if (a2 != 2)
  {
    v8 = 0x6574656D61726170;
    v7 = 0xEA00000000007372;
  }

  if (a2)
  {
    v2 = 0x746163696C707061;
    v6 = 0xEB000000006E6F69;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D221368(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE600000000000000;
    v10 = 0x746867696568;
    if (a1 != 6)
    {
      v10 = 0xD000000000000012;
      v9 = 0x800000026D23AB10;
    }

    v11 = 0x800000026D23AAD0;
    v12 = 0xD000000000000011;
    if (a1 == 4)
    {
      v12 = 0xD000000000000014;
    }

    else
    {
      v11 = 0x800000026D23AAF0;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6C6946616964656DLL;
    v5 = 0xED0000657A695365;
    if (a1 != 2)
    {
      v4 = 0x69616E626D756874;
      v5 = 0xEC0000006C72556CLL;
    }

    v6 = 0xD000000000000010;
    if (a1)
    {
      v3 = 0x800000026D23AAA0;
    }

    else
    {
      v6 = 0x6C7255616964656DLL;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE600000000000000;
        if (v7 != 0x746867696568)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v13 = 0x800000026D23AB10;
        if (v7 != 0xD000000000000012)
        {
LABEL_48:
          v14 = sub_26D22E964();
          goto LABEL_49;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x800000026D23AAD0;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0x800000026D23AAF0;
      if (v7 != 0xD000000000000011)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xED0000657A695365;
      if (v7 != 0x6C6946616964656DLL)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0xEC0000006C72556CLL;
      if (v7 != 0x69616E626D756874)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2)
  {
    v13 = 0x800000026D23AAA0;
    if (v7 != 0xD000000000000010)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x6C7255616964656DLL)
    {
      goto LABEL_48;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_48;
  }

  v14 = 1;
LABEL_49:

  return v14 & 1;
}

uint64_t sub_26D221628(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE300000000000000;
    v12 = 0xE800000000000000;
    v13 = 0x72656469766F7270;
    if (a1 != 2)
    {
      v13 = 0x6C69616D65;
      v12 = 0xE500000000000000;
    }

    v14 = 0x6E6F6973726576;
    if (a1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v14 = 6513520;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x65746973626577;
    v5 = 0xE600000000000000;
    v6 = 0x656761504354;
    if (a1 != 7)
    {
      v6 = 0x73736572646461;
      v5 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x72756F6C6F63;
    if (a1 != 4)
    {
      v8 = 0x756F72676B636162;
      v7 = 0xEF6567616D49646ELL;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x72656469766F7270)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE500000000000000;
        if (v9 != 0x6C69616D65)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x6E6F6973726576)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE300000000000000;
      if (v9 != 6513520)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x72756F6C6F63)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEF6567616D49646ELL;
      if (v9 != 0x756F72676B636162)
      {
LABEL_52:
        v16 = sub_26D22E964();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE700000000000000;
    if (v9 != 0x65746973626577)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x656761504354)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE700000000000000;
    if (v9 != 0x73736572646461)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_26D2218E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F697463416C7275;
  v4 = a1;
  v5 = 0x6341656369766564;
  v6 = 0xEC0000006E6F6974;
  v7 = 0xEE006E6F69746341;
  if (a1 != 5)
  {
    v5 = 0x73676E6974746573;
    v6 = 0xEE006E6F69746341;
  }

  v8 = 0x7261646E656C6163;
  if (a1 != 3)
  {
    v8 = 0x4165736F706D6F63;
    v7 = 0xED00006E6F697463;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x634172656C616964;
  v10 = 0xEC0000006E6F6974;
  if (a1 != 1)
  {
    v9 = 0x6F6974634170616DLL;
    v10 = 0xE90000000000006ELL;
  }

  if (!a1)
  {
    v9 = 0x6F697463416C7275;
    v10 = 0xE90000000000006ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      goto LABEL_31;
    }

    if (a2 != 1)
    {
      v3 = 0x6F6974634170616DLL;
      goto LABEL_31;
    }

    v13 = 0x72656C616964;
LABEL_26:
    v3 = v13 & 0xFFFFFFFFFFFFLL | 0x6341000000000000;
    v2 = 0xEC0000006E6F6974;
    goto LABEL_31;
  }

  if (a2 > 4u)
  {
    if (a2 != 5)
    {
      v3 = 0x73676E6974746573;
      goto LABEL_30;
    }

    v13 = 0x656369766564;
    goto LABEL_26;
  }

  if (a2 == 3)
  {
    v3 = 0x7261646E656C6163;
LABEL_30:
    v2 = 0xEE006E6F69746341;
    goto LABEL_31;
  }

  v3 = 0x4165736F706D6F63;
  v2 = 0xED00006E6F697463;
LABEL_31:
  if (v11 == v3 && v12 == v2)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_26D22E964();
  }

  return v14 & 1;
}

uint64_t sub_26D221B0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 2)
    {
      v4 = 0x800000026D23A940;
    }

    else
    {
      v4 = 0x800000026D23A960;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6574736973726570;
    }

    else
    {
      v3 = 0x6F666E69746F62;
    }

    if (v2)
    {
      v4 = 0xEF756E656D2D746ELL;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000014;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v6 = 0x800000026D23A940;
    }

    else
    {
      v6 = 0x800000026D23A960;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6574736973726570;
    }

    else
    {
      v5 = 0x6F666E69746F62;
    }

    if (a2)
    {
      v6 = 0xEF756E656D2D746ELL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_26D22E964();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_26D221C78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000068;
  v3 = 0x7464695764726163;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0x656C797473;
    }

    if (v4 == 2)
    {
      v6 = 0x800000026D23A8D0;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E6F46656C746974;
    }

    else
    {
      v5 = 0x7464695764726163;
    }

    if (v4)
    {
      v6 = 0xEE00656C79745374;
    }

    else
    {
      v6 = 0xE900000000000068;
    }
  }

  v7 = 0xD000000000000014;
  v8 = 0x800000026D23A8D0;
  if (a2 != 2)
  {
    v7 = 0x656C797473;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x6E6F46656C746974;
    v2 = 0xEE00656C79745374;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D221DCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x616964656DLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7470697263736564;
    }

    else
    {
      v4 = 0x6974736567677573;
    }

    if (v3 == 2)
    {
      v5 = 0xEB000000006E6F69;
    }

    else
    {
      v5 = 0xEB00000000736E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C746974;
    }

    else
    {
      v4 = 0x616964656DLL;
    }

    v5 = 0xE500000000000000;
  }

  v6 = 0x7470697263736564;
  v7 = 0xEB000000006E6F69;
  if (a2 != 2)
  {
    v6 = 0x6974736567677573;
    v7 = 0xEB00000000736E6FLL;
  }

  if (a2)
  {
    v2 = 0x656C746974;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_26D22E964();
  }

  return v10 & 1;
}

uint64_t sub_26D221F24(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00746E656D6E67;
  v3 = 0x696C416567616D69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0x656C797473;
    }

    if (v4 == 2)
    {
      v6 = 0x800000026D23A8D0;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E6F46656C746974;
    }

    else
    {
      v5 = 0x696C416567616D69;
    }

    if (v4)
    {
      v6 = 0xEE00656C79745374;
    }

    else
    {
      v6 = 0xEE00746E656D6E67;
    }
  }

  v7 = 0xD000000000000014;
  v8 = 0x800000026D23A8D0;
  if (a2 != 2)
  {
    v7 = 0x656C797473;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x6E6F46656C746974;
    v2 = 0xEE00656C79745374;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D222080(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x6464612D6D6D6F63;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x696C2D616964656DLL;
    }

    else
    {
      v5 = 0x6464612D6D6D6F63;
    }

    if (v4)
    {
      v6 = 0xEA00000000007473;
    }

    else
    {
      v6 = 0xE900000000000072;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE800000000000000;
    v5 = 0x656D616E2D67726FLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x637365642D67726FLL;
    }

    else
    {
      v5 = 0x79726F6765746163;
    }

    if (v4 == 3)
    {
      v6 = 0xEF6E6F6974706972;
    }

    else
    {
      v6 = 0xED00007473696C2DLL;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x656D616E2D67726FLL;
  v9 = 0x637365642D67726FLL;
  v10 = 0xEF6E6F6974706972;
  if (a2 != 3)
  {
    v9 = 0x79726F6765746163;
    v10 = 0xED00007473696C2DLL;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x696C2D616964656DLL;
    v2 = 0xEA00000000007473;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_26D22E964();
  }

  return v13 & 1;
}

uint64_t sub_26D22223C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D69547472617473;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656D6954646E65;
    }

    else
    {
      v5 = 0x6D69547472617473;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE500000000000000;
    v5 = 0x656C746974;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x7470697263736564;
    }

    else
    {
      v5 = 0x6B6361626C6C6166;
    }

    if (v4 == 3)
    {
      v6 = 0xEB000000006E6F69;
    }

    else
    {
      v6 = 0xEB000000006C7255;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x656C746974;
  v9 = 0x7470697263736564;
  v10 = 0xEB000000006E6F69;
  if (a2 != 3)
  {
    v9 = 0x6B6361626C6C6166;
    v10 = 0xEB000000006C7255;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x656D6954646E65;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_26D22E964();
  }

  return v13 & 1;
}

uint64_t sub_26D2223D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006469;
  v3 = 0x2D6567617373656DLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E65697069636572;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (v4 == 2)
    {
      v6 = 0xED00006972752D74;
    }

    else
    {
      v6 = 0x800000026D23A5F0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x656D697465746164;
    }

    else
    {
      v5 = 0x2D6567617373656DLL;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEA00000000006469;
    }
  }

  v7 = 0x6E65697069636572;
  v8 = 0x800000026D23A5F0;
  if (a2 == 2)
  {
    v8 = 0xED00006972752D74;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (a2)
  {
    v3 = 0x656D697465746164;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D222534(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6574617473;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74746E65746E6F63;
    }

    else
    {
      v4 = 0x68736572666572;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000657079;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x697463617473616CLL;
    }

    else
    {
      v4 = 0x6574617473;
    }

    if (v3)
    {
      v5 = 0xEA00000000006576;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x74746E65746E6F63;
  v8 = 0xEB00000000657079;
  if (a2 != 2)
  {
    v7 = 0x68736572666572;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x697463617473616CLL;
    v6 = 0xEA00000000006576;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D22268C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6465727265666572;
    }

    else
    {
      v3 = 0x797469746E65;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x737574617473;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000014;
    v4 = 0x800000026D23A210;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x6574617473;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6465727265666572;
    }

    else
    {
      v6 = 0x797469746E65;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE600000000000000;
    if (v3 != 0x737574617473)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x800000026D23A210;
    if (v3 != 0xD000000000000014)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x6574617473)
    {
LABEL_31:
      v7 = sub_26D22E964();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_26D22281C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1635017060;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xD000000000000010;
    v13 = 0x800000026D23A100;
    if (a1 != 2)
    {
      v12 = 0x7A69732D656C6966;
      v13 = 0xE900000000000065;
    }

    v14 = 1701869940;
    if (!a1)
    {
      v14 = 1635017060;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }

    if (v3 <= 1)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v4 = 0xE300000000000000;
    v5 = 7107189;
    v6 = 0xE500000000000000;
    v7 = 0x6C69746E75;
    if (a1 != 7)
    {
      v7 = 0xD000000000000011;
      v6 = 0x800000026D23A140;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x6D616E2D656C6966;
    v9 = 0xE900000000000065;
    if (a1 != 4)
    {
      v8 = 0x2D746E65746E6F63;
      v9 = 0xEC00000065707974;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0xE300000000000000;
        if (v10 != 7107189)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      if (a2 == 7)
      {
        v15 = 0xE500000000000000;
        if (v10 != 0x6C69746E75)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v15 = 0x800000026D23A140;
      v2 = 0xD000000000000011;
      goto LABEL_45;
    }

    if (a2 != 4)
    {
      v15 = 0xEC00000065707974;
      if (v10 != 0x2D746E65746E6F63)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v16 = 0x6D616E2D656C6966;
LABEL_42:
    v15 = 0xE900000000000065;
    if (v10 != v16)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v15 = 0x800000026D23A100;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v16 = 0x7A69732D656C6966;
    goto LABEL_42;
  }

  v15 = 0xE400000000000000;
  if (a2)
  {
    if (v10 != 1701869940)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

LABEL_45:
  if (v10 != v2)
  {
LABEL_49:
    v17 = sub_26D22E964();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v15)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_26D222AC0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_26D22E964();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_26D222CC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x800000026D239F60;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x800000026D239F80;
    }

    v5 = 0x800000026D239F20;
    if (a1 != 3)
    {
      v5 = 0x800000026D239F40;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_26D22E964();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x800000026D239F60;
    }

    else
    {
      v10 = 0x800000026D239F80;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x800000026D239F20;
    }

    else
    {
      v10 = 0x800000026D239F40;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_26D222E9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = sub_26D22E964();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_26D223094()
{
  sub_26D22E454();
}

uint64_t sub_26D2231E0()
{
  sub_26D22E454();
}

uint64_t sub_26D223328()
{
  sub_26D22E454();
}

uint64_t sub_26D223478()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D223580()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D223690()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2237A0()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2238E8()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D223A48@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - v15;
  LOBYTE(v29) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26D22E8A4();
  if (!v6)
  {
    if (v18)
    {
      v28 = 0;
      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = result & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        sub_26D22CCD4();

        v20 = sub_26D22CCE4();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v16, 1, v20) == 1)
        {
          sub_26D1B950C(v16, &qword_2804E0890, &qword_26D230770);
          v22 = sub_26D22E794();
          swift_allocError();
          v24 = v23;
          v25 = sub_26D22E894();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26D22F360;
          *(inited + 56) = a4;
          *(inited + 64) = a5();
          *(inited + 32) = a1;
          v29 = v25;
          sub_26D223EA4(inited);
          sub_26D22E784();
          (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84168], v22);
          return swift_willThrow();
        }

        else
        {
          (*(v21 + 32))(a6, v16, v20);
          return (*(v21 + 56))(a6, 0, 1, v20);
        }
      }
    }

    v27 = sub_26D22CCE4();
    return (*(*(v27 - 8) + 56))(a6, 1, 1, v27);
  }

  return result;
}

uint64_t sub_26D223D54(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_26D22BFF8(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_2804E14E0, &qword_26D234D18, MEMORY[0x277CC8918]);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_26D22CB14();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26D223EA4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26D22BCF0(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E2138, &qword_26D239BF0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26D223FAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000014;
  v4 = 0x800000026D23A8D0;
  v5 = 0xE500000000000000;
  if (v2 == 1)
  {
    v5 = 0x800000026D23A8D0;
  }

  else
  {
    v3 = 0x656C797473;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E6F46656C746974;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEE00656C79745374;
  }

  v8 = 0xD000000000000014;
  if (*a2 != 1)
  {
    v8 = 0x656C797473;
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F46656C746974;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE00656C79745374;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D2240A8()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D224158()
{
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D2241F4()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2242A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D22C220();
  *a2 = result;
  return result;
}

void sub_26D2242D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00656C79745374;
  v4 = 0x800000026D23A8D0;
  v5 = 0xD000000000000014;
  if (v2 != 1)
  {
    v5 = 0x656C797473;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F46656C746974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26D22433C()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x656C797473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F46656C746974;
  }
}

uint64_t sub_26D2243A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D22C220();
  *a1 = result;
  return result;
}

uint64_t sub_26D2243DC(uint64_t a1)
{
  v2 = sub_26D2247E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D224418(uint64_t a1)
{
  v2 = sub_26D2247E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_26D22DE04();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1DC0, &qword_26D238528);
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_26D2247E0();
  sub_26D22EA24();
  if (!v2)
  {
    v22 = v8;
    v23 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1DD0, &qword_26D238530);
    LOBYTE(v29) = 0;
    sub_26D224834();
    sub_26D22E8C4();
    v18 = v12;
    v28 = 1;
    sub_26D22E8C4();
    v19 = v26;
    sub_26D223A48(2, &qword_2804E1DC0, &qword_26D238528, &_s21DecodingConfigurationV10CodingKeysON_56, sub_26D2247E0, v7);
    v21 = v23;
    sub_26D22DDF4();
    (*(v19 + 8))(v15, v18);
    (*(v24 + 32))(v25, v21, v22);
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

unint64_t sub_26D2247E0()
{
  result = qword_2804E1DC8;
  if (!qword_2804E1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1DC8);
  }

  return result;
}

unint64_t sub_26D224834()
{
  result = qword_2804E1DD8;
  if (!qword_2804E1DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E1DD0, &qword_26D238530);
    sub_26D22A640(&qword_2804E1DE0, MEMORY[0x277CF2BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1DD8);
  }

  return result;
}

uint64_t sub_26D22490C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2249E8()
{
  *v0;
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D224AB0()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D224B88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D22C1D4();
  *a2 = result;
  return result;
}

void sub_26D224BB8(unint64_t *a1@<X8>)
{
  v2 = 0xEE00746E656D6E67;
  v3 = 0x696C416567616D69;
  v4 = 0x800000026D23A8D0;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x656C797473;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E6F46656C746974;
    v2 = 0xEE00656C79745374;
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

unint64_t sub_26D224C50()
{
  v1 = 0x696C416567616D69;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x656C797473;
  }

  if (*v0)
  {
    v1 = 0x6E6F46656C746974;
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

uint64_t sub_26D224CE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D22C1D4();
  *a1 = result;
  return result;
}

uint64_t sub_26D224D1C(uint64_t a1)
{
  v2 = sub_26D2251E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D224D58(uint64_t a1)
{
  v2 = sub_26D2251E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v24 - v5;
  v6 = sub_26D22DDC4();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D22DDE4();
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1DE8, &qword_26D238538);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_26D2251E8();
  v31 = v17;
  v20 = v32;
  sub_26D22EA24();
  if (!v20)
  {
    v32 = v12;
    v25 = v9;
    LOBYTE(v36) = 0;
    sub_26D22A640(&qword_2804E1DF8, MEMORY[0x277CF2CF0]);
    v21 = v31;
    sub_26D22E914();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1DD0, &qword_26D238530);
    LOBYTE(v35) = 1;
    sub_26D224834();
    sub_26D22E8C4();
    v34 = 2;
    sub_26D22E8C4();
    sub_26D223A48(3, &qword_2804E1DE8, &qword_26D238538, &_s21DecodingConfigurationV10CodingKeysON_55, sub_26D2251E8, v28);
    v23 = v32;
    sub_26D22DDD4();
    (*(v14 + 8))(v21, v13);
    (*(v26 + 32))(v27, v23, v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

unint64_t sub_26D2251E8()
{
  result = qword_2804E1DF0;
  if (!qword_2804E1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1DF0);
  }

  return result;
}

uint64_t sub_26D225254()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D2252D8()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D225334@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26D22E854();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_26D2253D4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26D22E854();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26D22543C(uint64_t a1)
{
  v2 = sub_26D225B2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D225478(uint64_t a1)
{
  v2 = sub_26D225B2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26D2254B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x544E4F5A49524F48;
  }

  else
  {
    v4 = 0x4C41434954524556;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEA00000000004C41;
  }

  if (*a2)
  {
    v6 = 0x544E4F5A49524F48;
  }

  else
  {
    v6 = 0x4C41434954524556;
  }

  if (*a2)
  {
    v7 = 0xEA00000000004C41;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D225560()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2255E8()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D22565C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D2256EC(uint64_t *a1@<X8>)
{
  v2 = 0x4C41434954524556;
  if (*v1)
  {
    v2 = 0x544E4F5A49524F48;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000004C41;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Chatbot.GeneralPurposeCardMessage.Layout.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1E00, &qword_26D238540);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = sub_26D22DE14();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_26D225B2C();
  sub_26D22EA24();
  if (v2)
  {
    v24 = v40;
  }

  else
  {
    v32 = v12;
    v33 = v17;
    v34 = v15;
    v20 = v36;
    v21 = v37;
    sub_26D225B80();
    v22 = v38;
    sub_26D22E8C4();
    v23 = v7;
    if (LOBYTE(v39[0]) == 2 || (v39[0] & 1) == 0)
    {
      v26 = v40;
      sub_26D1FB6E0(v40, v39);
      v27 = v34;
      Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout.init(from:configuration:)(v39, v34);
      (*(v21 + 8))(v23, v22);
      v28 = v20;
      v29 = MEMORY[0x277CF2D10];
    }

    else
    {
      v26 = v40;
      sub_26D1FB6E0(v40, v39);
      v27 = v32;
      Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout.init(from:configuration:)(v39, v32);
      (*(v21 + 8))(v23, v22);
      v28 = v20;
      v29 = MEMORY[0x277CF2D00];
    }

    (*(v28 + 104))(v27, *v29, v8);
    v30 = *(v28 + 32);
    v31 = v33;
    v30(v33, v27, v8);
    v30(v35, v31, v8);
    v24 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

unint64_t sub_26D225B2C()
{
  result = qword_2804E1E08;
  if (!qword_2804E1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1E08);
  }

  return result;
}

unint64_t sub_26D225B80()
{
  result = qword_2804E1E10;
  if (!qword_2804E1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1E10);
  }

  return result;
}

uint64_t sub_26D225C1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D22C2C0();
  *a2 = result;
  return result;
}

void sub_26D225C4C(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x616964656DLL;
  v4 = 0xEB000000006E6F69;
  v5 = 0x7470697263736564;
  if (*v1 != 2)
  {
    v5 = 0x6974736567677573;
    v4 = 0xEB00000000736E6FLL;
  }

  if (*v1)
  {
    v3 = 0x656C746974;
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

uint64_t sub_26D225CD4()
{
  v1 = 0x616964656DLL;
  v2 = 0x7470697263736564;
  if (*v0 != 2)
  {
    v2 = 0x6974736567677573;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_26D225D58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D22C2C0();
  *a1 = result;
  return result;
}

uint64_t sub_26D225D90(uint64_t a1)
{
  v2 = sub_26D22632C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D225DCC(uint64_t a1)
{
  v2 = sub_26D22632C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.GeneralPurposeCardMessage.Content.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1E18, &qword_26D238548);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1E20, &qword_26D238550);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1E28, &qword_26D238558);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_26D22DE34();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1E30, &qword_26D238560);
  v14 = *(v29 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v29);
  v17 = &v24 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_26D22632C();
  v30 = v17;
  v20 = v31;
  sub_26D22EA24();
  if (!v20)
  {
    v31 = v13;
    v25 = v10;
    sub_26D22E0B4();
    v36 = 0;
    sub_26D22A640(&qword_2804E1E40, MEMORY[0x277CF2F60]);
    v21 = v29;
    sub_26D22E874();
    sub_26D22E0C4();
    v35 = 1;
    sub_26D22A640(&qword_2804E1E48, MEMORY[0x277CF2F70]);
    sub_26D22E874();
    sub_26D22DCA4();
    v34 = 2;
    sub_26D22A640(&qword_2804E1E50, MEMORY[0x277CF2C70]);
    sub_26D22E874();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1E58, &qword_26D238568);
    v33 = 3;
    sub_26D226380();
    sub_26D22E874();
    v23 = v31;
    sub_26D22DE24();
    (*(v14 + 8))(v30, v21);
    (*(v26 + 32))(v27, v23, v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

unint64_t sub_26D22632C()
{
  result = qword_2804E1E38;
  if (!qword_2804E1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1E38);
  }

  return result;
}

unint64_t sub_26D226380()
{
  result = qword_2804E1E60;
  if (!qword_2804E1E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E1E58, &qword_26D238568);
    sub_26D22A640(&qword_2804E1E68, MEMORY[0x277CF2AA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1E60);
  }

  return result;
}

uint64_t sub_26D226454()
{
  *v0;
  sub_26D22E454();
}

void sub_26D2264D0(uint64_t *a1@<X8>)
{
  v2 = 0x74756F79616CLL;
  if (*v1)
  {
    v2 = 0x746E65746E6F63;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D22650C()
{
  if (*v0)
  {
    result = 0x746E65746E6F63;
  }

  else
  {
    result = 0x74756F79616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_26D226560(uint64_t a1)
{
  v2 = sub_26D2269A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D22659C(uint64_t a1)
{
  v2 = sub_26D2269A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.GeneralPurposeCardMessage.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_26D22DE34();
  v4 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26D22DE14();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v28 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D22DE44();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1E70, &qword_26D238570);
  v13 = *(v29 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v29);
  v16 = &v21 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_26D2269A0();
  sub_26D22EA24();
  if (!v2)
  {
    v21 = v9;
    v22 = v12;
    v32 = 0;
    sub_26D22A640(&qword_2804E1E80, MEMORY[0x277CF2D20]);
    sub_26D22E884();
    v31 = 1;
    sub_26D22A640(&qword_2804E1E88, MEMORY[0x277CF2D28]);
    sub_26D22E884();
    v20 = v22;
    sub_26D22DDB4();
    (*(v13 + 8))(v16, v29);
    (*(v24 + 32))(v23, v20, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_26D2269A0()
{
  result = qword_2804E1E78;
  if (!qword_2804E1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1E78);
  }

  return result;
}

uint64_t sub_26D226A18()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D226AEC()
{
  *v0;
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D226BAC()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D226C7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D22C30C();
  *a2 = result;
  return result;
}

void sub_26D226CAC(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000068;
  v3 = 0x7464695764726163;
  v4 = 0x800000026D23A8D0;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x656C797473;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E6F46656C746974;
    v2 = 0xEE00656C79745374;
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

unint64_t sub_26D226D3C()
{
  v1 = 0x7464695764726163;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x656C797473;
  }

  if (*v0)
  {
    v1 = 0x6E6F46656C746974;
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

uint64_t sub_26D226DC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D22C30C();
  *a1 = result;
  return result;
}

uint64_t sub_26D226E00(uint64_t a1)
{
  v2 = sub_26D2272CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D226E3C(uint64_t a1)
{
  v2 = sub_26D2272CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.GeneralPurposeCardCarouselMessage.Layout.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v24 - v5;
  v6 = sub_26D22DE74();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D22DE84();
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1E90, &qword_26D238578);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_26D2272CC();
  v31 = v17;
  v20 = v32;
  sub_26D22EA24();
  if (!v20)
  {
    v32 = v12;
    v25 = v9;
    LOBYTE(v36) = 0;
    sub_26D22A640(&qword_2804E1EA0, MEMORY[0x277CF2D48]);
    v21 = v31;
    sub_26D22E914();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1DD0, &qword_26D238530);
    LOBYTE(v35) = 1;
    sub_26D224834();
    sub_26D22E8C4();
    v34 = 2;
    sub_26D22E8C4();
    sub_26D223A48(3, &qword_2804E1E90, &qword_26D238578, &_s21DecodingConfigurationV10CodingKeysON_51, sub_26D2272CC, v28);
    v23 = v32;
    sub_26D22DE64();
    (*(v14 + 8))(v21, v13);
    (*(v26 + 32))(v27, v23, v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

unint64_t sub_26D2272CC()
{
  result = qword_2804E1E98;
  if (!qword_2804E1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1E98);
  }

  return result;
}

uint64_t sub_26D227360@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D22C3A4();
  *a2 = result;
  return result;
}

void sub_26D227390(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xE600000000000000;
    v9 = 0x746867696568;
    if (v2 != 6)
    {
      v9 = 0xD000000000000012;
      v8 = 0x800000026D23AB10;
    }

    v10 = 0x800000026D23AAD0;
    v11 = 0xD000000000000011;
    if (v2 == 4)
    {
      v11 = 0xD000000000000014;
    }

    else
    {
      v10 = 0x800000026D23AAF0;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6C7255616964656DLL;
    v5 = 0xED0000657A695365;
    v6 = 0x6C6946616964656DLL;
    if (v2 != 2)
    {
      v6 = 0x69616E626D756874;
      v5 = 0xEC0000006C72556CLL;
    }

    if (*v1)
    {
      v4 = 0xD000000000000010;
      v3 = 0x800000026D23AAA0;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_26D2274B0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x746867696568;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000011;
    if (v1 == 4)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6C7255616964656DLL;
    v3 = 0x6C6946616964656DLL;
    if (v1 != 2)
    {
      v3 = 0x69616E626D756874;
    }

    if (*v0)
    {
      v2 = 0xD000000000000010;
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

uint64_t sub_26D2275C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D22C3A4();
  *a1 = result;
  return result;
}

uint64_t sub_26D22760C(uint64_t a1)
{
  v2 = sub_26D227D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D227648(uint64_t a1)
{
  v2 = sub_26D227D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.CardMedia.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_26D22E0A4();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v43 = sub_26D22CCE4();
  v41 = *(v43 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26D22E0B4();
  v36 = *(v12 - 8);
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1EA8, &qword_26D238580);
  v16 = *(v44 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v44);
  v19 = &v29 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_26D227D4C();
  v22 = v45;
  sub_26D22EA24();
  if (!v22)
  {
    v34 = v12;
    v35 = v15;
    v45 = v9;
    v54 = 0;
    sub_26D22A640(&qword_2804E0FC0, MEMORY[0x277CC9260]);
    sub_26D22E914();
    v53 = 1;
    v23 = sub_26D22E8D4();
    v26 = v25;
    v33 = v23;
    v52 = 2;
    sub_26D22E8B4();
    v32 = v26;
    v51 = 3;
    sub_26D22E8C4();
    v50 = 4;
    v31 = sub_26D22E8A4();
    v49 = 5;
    v29 = sub_26D22E8B4();
    v30 = v27;
    v48 = 6;
    sub_26D22A640(&qword_2804E1EB8, MEMORY[0x277CF2F50]);
    sub_26D22E914();
    v47 = 7;
    sub_26D22E8A4();
    v28 = v35;
    sub_26D22E094();
    (*(v16 + 8))(v19, v44);
    (*(v36 + 32))(v37, v28, v34);
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

unint64_t sub_26D227D4C()
{
  result = qword_2804E1EB0;
  if (!qword_2804E1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1EB0);
  }

  return result;
}

uint64_t sub_26D227E50@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v18 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-1] - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D22EA14();
  if (!v4)
  {
    v16 = v8;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v14 = sub_26D22E974();
    v13(v14);
    (*(v16 + 32))(a4, v11, v7);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D227FE4()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2280B0()
{
  *v0;
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D228168()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D228230@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D22C358();
  *a2 = result;
  return result;
}

uint64_t sub_26D228260@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D22C358();
  *a1 = result;
  return result;
}

uint64_t sub_26D228298(uint64_t a1)
{
  v2 = sub_26D228834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D2282D4(uint64_t a1)
{
  v2 = sub_26D228834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.GeneralPurposeCardCarouselMessage.Content.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1E18, &qword_26D238548);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1E20, &qword_26D238550);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1E28, &qword_26D238558);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_26D22DEA4();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1EC0, &qword_26D238588);
  v14 = *(v29 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v29);
  v17 = &v24 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_26D228834();
  v30 = v17;
  v20 = v31;
  sub_26D22EA24();
  if (!v20)
  {
    v31 = v13;
    v25 = v10;
    sub_26D22E0B4();
    v36 = 0;
    sub_26D22A640(&qword_2804E1E40, MEMORY[0x277CF2F60]);
    v21 = v29;
    sub_26D22E874();
    sub_26D22E0C4();
    v35 = 1;
    sub_26D22A640(&qword_2804E1E48, MEMORY[0x277CF2F70]);
    sub_26D22E874();
    sub_26D22DCA4();
    v34 = 2;
    sub_26D22A640(&qword_2804E1E50, MEMORY[0x277CF2C70]);
    sub_26D22E874();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1E58, &qword_26D238568);
    v33 = 3;
    sub_26D226380();
    sub_26D22E874();
    v23 = v31;
    sub_26D22DE94();
    (*(v14 + 8))(v30, v21);
    (*(v26 + 32))(v27, v23, v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

unint64_t sub_26D228834()
{
  result = qword_2804E1EC8;
  if (!qword_2804E1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1EC8);
  }

  return result;
}

uint64_t sub_26D2288A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E65746E6F63;
  }

  else
  {
    v4 = 0x74756F79616CLL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x746E65746E6F63;
  }

  else
  {
    v6 = 0x74756F79616CLL;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D228944()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2289C4()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D228A68(uint64_t a1)
{
  v2 = sub_26D228E38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D228AA4(uint64_t a1)
{
  v2 = sub_26D228E38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.GeneralPurposeCardCarouselMessage.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_26D22DE84();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v22 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26D22DEB4();
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1ED0, &qword_26D238590);
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v23);
  v14 = &v18 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_26D228E38();
  sub_26D22EA24();
  if (!v2)
  {
    v18 = v7;
    v26 = 0;
    sub_26D22A640(&qword_2804E1EE0, MEMORY[0x277CF2D58]);
    sub_26D22E884();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1EE8, &qword_26D238598);
    v25 = 1;
    sub_26D228E8C();
    sub_26D22E884();
    sub_26D22DE54();
    (*(v11 + 8))(v14, v23);
    (*(v20 + 32))(v19, v10, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

unint64_t sub_26D228E38()
{
  result = qword_2804E1ED8;
  if (!qword_2804E1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1ED8);
  }

  return result;
}

unint64_t sub_26D228E8C()
{
  result = qword_2804E1EF0;
  if (!qword_2804E1EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E1EE8, &qword_26D238598);
    sub_26D22A640(&qword_2804E1EF8, MEMORY[0x277CF2D60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1EF0);
  }

  return result;
}

uint64_t sub_26D228F58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = "Image";
  }

  else
  {
    v5 = "generalPurposeCard";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001ALL;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (*a2)
  {
    v8 = "generalPurposeCard";
  }

  else
  {
    v8 = "Image";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_26D22E964();
  }

  return v10 & 1;
}

uint64_t sub_26D229004()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D229084()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D2290F0()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D229178(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1)
  {
    v3 = "generalPurposeCard";
  }

  else
  {
    v3 = "Image";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_26D2291B8()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_26D229210(uint64_t a1)
{
  v2 = sub_26D22976C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D22924C(uint64_t a1)
{
  v2 = sub_26D22976C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.Message.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1F00, &unk_26D2385A0);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  v8 = sub_26D22E024();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_26D22976C();
  v20 = v7;
  v21 = v39;
  sub_26D22EA24();
  if (!v21)
  {
    v34 = v12;
    v23 = v15;
    v39 = v17;
    v25 = v36;
    v24 = v37;
    LOBYTE(v40) = 0;
    if (sub_26D22E924())
    {
      sub_26D22DE44();
      LOBYTE(v40) = 0;
      sub_26D22A640(&qword_2804E1F18, MEMORY[0x277CF2D30]);
      sub_26D22E884();
      (*(v38 + 8))(v20, v24);
      v26 = MEMORY[0x277CF2EC8];
    }

    else
    {
      LOBYTE(v40) = 1;
      if ((sub_26D22E924() & 1) == 0)
      {
        v30 = sub_26D22E794();
        swift_allocError();
        v32 = v31;
        v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
        *v32 = v8;
        sub_26D22E894();
        v40 = 0;
        v41 = 0xE000000000000000;
        sub_26D22E744();

        v40 = 0xD000000000000011;
        v41 = 0x800000026D23BFC0;
        v33 = MEMORY[0x26D6B6D70](&unk_287E99BE8, &_s21DecodingConfigurationV10CodingKeysON_47);
        MEMORY[0x26D6B6C70](v33);

        sub_26D22E784();
        (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84170], v30);
        swift_willThrow();
        (*(v38 + 8))(v20, v24);
        return __swift_destroy_boxed_opaque_existential_1(v42);
      }

      sub_26D22DEB4();
      LOBYTE(v40) = 1;
      sub_26D22A640(&qword_2804E1F10, MEMORY[0x277CF2D68]);
      v23 = v34;
      sub_26D22E884();
      (*(v38 + 8))(v20, v24);
      v26 = MEMORY[0x277CF2ED8];
    }

    v27 = v35;
    (*(v35 + 104))(v23, *v26, v8);
    v28 = *(v27 + 32);
    v29 = v39;
    v28(v39, v23, v8);
    v28(v25, v29, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

unint64_t sub_26D22976C()
{
  result = qword_2804E1F08;
  if (!qword_2804E1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1F08);
  }

  return result;
}

uint64_t sub_26D229800(uint64_t a1)
{
  v2 = sub_26D229D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D22983C(uint64_t a1)
{
  v2 = sub_26D229D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.Suggestion.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1F20, &qword_26D2385B0);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  v8 = sub_26D22DA74();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_26D229D5C();
  v20 = v7;
  v21 = v39;
  sub_26D22EA24();
  if (!v21)
  {
    v34 = v12;
    v23 = v15;
    v39 = v17;
    v25 = v36;
    v24 = v37;
    LOBYTE(v40) = 0;
    if (sub_26D22E924())
    {
      sub_26D22DF34();
      LOBYTE(v40) = 0;
      sub_26D22A640(&qword_2804E18D0, MEMORY[0x277CF2D88]);
      sub_26D22E884();
      (*(v38 + 8))(v20, v24);
      v26 = MEMORY[0x277CF2A80];
    }

    else
    {
      LOBYTE(v40) = 1;
      if ((sub_26D22E924() & 1) == 0)
      {
        v30 = sub_26D22E794();
        swift_allocError();
        v32 = v31;
        v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
        *v32 = v8;
        sub_26D22E894();
        v40 = 0;
        v41 = 0xE000000000000000;
        sub_26D22E744();

        v40 = 0xD000000000000011;
        v41 = 0x800000026D23BFC0;
        v33 = MEMORY[0x26D6B6D70](&unk_287E99C10, &_s21DecodingConfigurationV10CodingKeysON_46);
        MEMORY[0x26D6B6C70](v33);

        sub_26D22E784();
        (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84170], v30);
        swift_willThrow();
        (*(v38 + 8))(v20, v24);
        return __swift_destroy_boxed_opaque_existential_1(v42);
      }

      sub_26D22DF64();
      LOBYTE(v40) = 1;
      sub_26D22A640(&qword_2804E18C8, MEMORY[0x277CF2E00]);
      v23 = v34;
      sub_26D22E884();
      (*(v38 + 8))(v20, v24);
      v26 = MEMORY[0x277CF2A98];
    }

    v27 = v35;
    (*(v35 + 104))(v23, *v26, v8);
    v28 = *(v27 + 32);
    v29 = v39;
    v28(v39, v23, v8);
    v28(v25, v29, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

unint64_t sub_26D229D5C()
{
  result = qword_2804E1F28;
  if (!qword_2804E1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1F28);
  }

  return result;
}

uint64_t sub_26D229DC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6974736567677573;
  }

  else
  {
    v4 = 0x6567617373656DLL;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEB00000000736E6FLL;
  }

  if (*a2)
  {
    v6 = 0x6974736567677573;
  }

  else
  {
    v6 = 0x6567617373656DLL;
  }

  if (*a2)
  {
    v7 = 0xEB00000000736E6FLL;
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
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D229E78()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D229F04()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D229F7C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D22A010(uint64_t *a1@<X8>)
{
  v2 = 0x6567617373656DLL;
  if (*v1)
  {
    v2 = 0x6974736567677573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000736E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D22A058()
{
  if (*v0)
  {
    result = 0x6974736567677573;
  }

  else
  {
    result = 0x6567617373656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_26D22A0B8(uint64_t a1)
{
  v2 = sub_26D22A5EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D22A0F4(uint64_t a1)
{
  v2 = sub_26D22A5EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.RootMessage.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1F30, &unk_26D2385B8);
  v36 = *(v38 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v5 = &v33 - v4;
  v6 = sub_26D22DAD4();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_26D22A5EC();
  v18 = v39;
  sub_26D22EA24();
  if (!v18)
  {
    v33 = v10;
    v34 = v15;
    v21 = v35;
    v20 = v36;
    v39 = v6;
    v22 = v37;
    v23 = v38;
    LOBYTE(v41) = 0;
    if (sub_26D22E924())
    {
      sub_26D22E024();
      LOBYTE(v41) = 0;
      sub_26D22A640(&qword_2804E1F40, MEMORY[0x277CF2EE0]);
      sub_26D22E884();
      (*(v20 + 8))(v5, v23);
      v24 = MEMORY[0x277CF2AF0];
    }

    else
    {
      LOBYTE(v41) = 1;
      if ((sub_26D22E924() & 1) == 0)
      {
        v28 = sub_26D22E794();
        swift_allocError();
        v30 = v29;
        v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
        *v30 = v39;
        v39 = sub_26D22E894();
        v41 = 0;
        v42 = 0xE000000000000000;
        sub_26D22E744();

        v41 = 0xD000000000000011;
        v42 = 0x800000026D23BFC0;
        v32 = MEMORY[0x26D6B6D70](&unk_287E99C38, &_s21DecodingConfigurationV10CodingKeysON_45);
        MEMORY[0x26D6B6C70](v32);

        sub_26D22E784();
        (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84170], v28);
        swift_willThrow();
        (*(v20 + 8))(v5, v23);
        return __swift_destroy_boxed_opaque_existential_1(v40);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1E58, &qword_26D238568);
      v43 = 1;
      sub_26D226380();
      sub_26D22E884();
      (*(v20 + 8))(v5, v23);
      v13 = v33;
      *v33 = v41;
      v24 = MEMORY[0x277CF2AB0];
    }

    v25 = v39;
    (*(v21 + 104))(v13, *v24, v39);
    v26 = *(v21 + 32);
    v27 = v34;
    v26(v34, v13, v25);
    v26(v22, v27, v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

unint64_t sub_26D22A5EC()
{
  result = qword_2804E1F38;
  if (!qword_2804E1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1F38);
  }

  return result;
}

uint64_t sub_26D22A640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s21DecodingConfigurationV10CodingKeysOwet_3(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s21DecodingConfigurationV10CodingKeysOwst_3(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26D22A9CC()
{
  result = qword_2804E1F58;
  if (!qword_2804E1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1F58);
  }

  return result;
}

unint64_t sub_26D22AA54()
{
  result = qword_2804E1F70;
  if (!qword_2804E1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1F70);
  }

  return result;
}

unint64_t sub_26D22AADC()
{
  result = qword_2804E1F88;
  if (!qword_2804E1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1F88);
  }

  return result;
}

unint64_t sub_26D22AB34()
{
  result = qword_2804E1F90;
  if (!qword_2804E1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1F90);
  }

  return result;
}

unint64_t sub_26D22ABBC()
{
  result = qword_2804E1FA8;
  if (!qword_2804E1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1FA8);
  }

  return result;
}

unint64_t sub_26D22AC44()
{
  result = qword_2804E1FC0;
  if (!qword_2804E1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1FC0);
  }

  return result;
}

unint64_t sub_26D22ACCC()
{
  result = qword_2804E1FD8;
  if (!qword_2804E1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1FD8);
  }

  return result;
}

unint64_t sub_26D22AD54()
{
  result = qword_2804E1FF0;
  if (!qword_2804E1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1FF0);
  }

  return result;
}

unint64_t sub_26D22ADDC()
{
  result = qword_2804E2008;
  if (!qword_2804E2008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2008);
  }

  return result;
}

unint64_t sub_26D22AE64()
{
  result = qword_2804E2020;
  if (!qword_2804E2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2020);
  }

  return result;
}

unint64_t sub_26D22AEEC()
{
  result = qword_2804E2038;
  if (!qword_2804E2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2038);
  }

  return result;
}

unint64_t sub_26D22AF74()
{
  result = qword_2804E2050;
  if (!qword_2804E2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2050);
  }

  return result;
}

unint64_t sub_26D22AFFC()
{
  result = qword_2804E2068;
  if (!qword_2804E2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2068);
  }

  return result;
}

unint64_t sub_26D22B054()
{
  result = qword_2804E2070;
  if (!qword_2804E2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2070);
  }

  return result;
}

unint64_t sub_26D22B0AC()
{
  result = qword_2804E2078;
  if (!qword_2804E2078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2078);
  }

  return result;
}

unint64_t sub_26D22B104()
{
  result = qword_2804E2080;
  if (!qword_2804E2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2080);
  }

  return result;
}

unint64_t sub_26D22B15C()
{
  result = qword_2804E2088;
  if (!qword_2804E2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2088);
  }

  return result;
}

unint64_t sub_26D22B1B4()
{
  result = qword_2804E2090;
  if (!qword_2804E2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2090);
  }

  return result;
}

unint64_t sub_26D22B20C()
{
  result = qword_2804E2098;
  if (!qword_2804E2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2098);
  }

  return result;
}

unint64_t sub_26D22B264()
{
  result = qword_2804E20A0;
  if (!qword_2804E20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E20A0);
  }

  return result;
}

unint64_t sub_26D22B2BC()
{
  result = qword_2804E20A8;
  if (!qword_2804E20A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E20A8);
  }

  return result;
}

unint64_t sub_26D22B314()
{
  result = qword_2804E20B0;
  if (!qword_2804E20B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E20B0);
  }

  return result;
}

unint64_t sub_26D22B36C()
{
  result = qword_2804E20B8;
  if (!qword_2804E20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E20B8);
  }

  return result;
}

unint64_t sub_26D22B3C4()
{
  result = qword_2804E20C0;
  if (!qword_2804E20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E20C0);
  }

  return result;
}

unint64_t sub_26D22B41C()
{
  result = qword_2804E20C8;
  if (!qword_2804E20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E20C8);
  }

  return result;
}

unint64_t sub_26D22B474()
{
  result = qword_2804E20D0;
  if (!qword_2804E20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E20D0);
  }

  return result;
}

unint64_t sub_26D22B4CC()
{
  result = qword_2804E20D8;
  if (!qword_2804E20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E20D8);
  }

  return result;
}

unint64_t sub_26D22B524()
{
  result = qword_2804E20E0;
  if (!qword_2804E20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E20E0);
  }

  return result;
}

unint64_t sub_26D22B57C()
{
  result = qword_2804E20E8;
  if (!qword_2804E20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E20E8);
  }

  return result;
}

unint64_t sub_26D22B5D4()
{
  result = qword_2804E20F0;
  if (!qword_2804E20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E20F0);
  }

  return result;
}

unint64_t sub_26D22B62C()
{
  result = qword_2804E20F8;
  if (!qword_2804E20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E20F8);
  }

  return result;
}

unint64_t sub_26D22B684()
{
  result = qword_2804E2100;
  if (!qword_2804E2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2100);
  }

  return result;
}

unint64_t sub_26D22B6DC()
{
  result = qword_2804E2108;
  if (!qword_2804E2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2108);
  }

  return result;
}

unint64_t sub_26D22B734()
{
  result = qword_2804E2110;
  if (!qword_2804E2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2110);
  }

  return result;
}

unint64_t sub_26D22B78C()
{
  result = qword_2804E2118;
  if (!qword_2804E2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2118);
  }

  return result;
}

unint64_t sub_26D22B7E4()
{
  result = qword_2804E2120;
  if (!qword_2804E2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2120);
  }

  return result;
}

unint64_t sub_26D22B83C()
{
  result = qword_2804E2128;
  if (!qword_2804E2128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2128);
  }

  return result;
}

char *sub_26D22B890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B88, &unk_26D239C20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D22BA74(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_26D22BBBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E2148, &qword_26D239C00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26D22BCF0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E2138, &qword_26D239BF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26D22BE60(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E2168, &qword_26D239C38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E2170, &qword_26D239C40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26D22BFF8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_26D22C1D4()
{
  v0 = sub_26D22E854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D22C220()
{
  v0 = sub_26D22E854();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26D22C26C()
{
  result = qword_2804E2130;
  if (!qword_2804E2130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2130);
  }

  return result;
}

uint64_t sub_26D22C2C0()
{
  v0 = sub_26D22E854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D22C30C()
{
  v0 = sub_26D22E854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D22C358()
{
  v0 = sub_26D22E854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D22C3A4()
{
  v0 = sub_26D22E854();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26D22C44C()
{
  result = qword_2804E2190[0];
  if (!qword_2804E2190[0])
  {
    sub_26D22D534();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804E2190);
  }

  return result;
}

uint64_t sub_26D22C4CC(uint64_t a1, uint64_t a2)
{
  sub_26D1B1F48();
  v4 = (sub_26D22E6A4() + 16);
  if (*v4)
  {
    v5 = &v4[2 * *v4];
    v7 = *v5;
    v6 = v5[1];

    if (v7 == a1 && v6 == a2)
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_26D22E964();
    }
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_26D22C5B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_26D22C614(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B60, &qword_26D230D40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = v28 - v8;
  v10 = sub_26D22D2B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26D1E19A4();
  if (!v2)
  {
    v31 = v14;
    v16 = *(v15 + 16);
    if (v16)
    {
      v28[0] = 0;
      v28[1] = a2;
      v29 = a1;
      v35 = MEMORY[0x277D84F90];
      v17 = v15;
      sub_26D1E4828(0, v16, 0);
      v18 = v35;
      v19 = *(v6 + 80);
      v30 = v17;
      v20 = v17 + ((v19 + 32) & ~v19);
      v32 = *(v6 + 72);
      v33 = v9;
      v34 = v11;
      v21 = (v11 + 32);
      v22 = v10;
      v23 = v31;
      do
      {
        sub_26D22C904(v20, v9);
        v24 = *v21;
        (*v21)(v23, v9, v22);
        v35 = v18;
        v26 = *(v18 + 16);
        v25 = *(v18 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_26D1E4828(v25 > 1, v26 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v26 + 1;
        v24((v18 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v26), v23, v22);
        v9 = v33;
        v20 += v32;
        --v16;
      }

      while (v16);

      a1 = v29;
      if (*(v18 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_8:
        sub_26D22D924();
        goto LABEL_11;
      }
    }

    sub_26D1B7FCC();
    swift_allocError();
    *v27 = xmmword_26D2301D0;
    *(v27 + 16) = 3;
    swift_willThrow();
  }

LABEL_11:
}

uint64_t sub_26D22C904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0B60, &qword_26D230D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26D22C994()
{
  result = qword_2804E2218;
  if (!qword_2804E2218)
  {
    sub_26D22D6A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E2218);
  }

  return result;
}